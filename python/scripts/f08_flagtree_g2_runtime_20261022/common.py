"""New, non-frozen runtime contracts. No accelerator imports at module load."""
from __future__ import annotations
import hashlib
import importlib
import importlib.util
import json
from pathlib import Path
import re
import subprocess
import sys
import types


def require(condition, message):
    if not condition:
        raise ValueError(message)


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def fingerprint(value):
    return hashlib.sha256(json.dumps(value, sort_keys=True, ensure_ascii=False).encode()).hexdigest()


def save(path, value):
    with Path(path).open('x', encoding='utf-8') as stream:
        json.dump(value, stream, ensure_ascii=False, indent=2, allow_nan=False)
        stream.write('\n')


def load_bridge(directory):
    # Reuse the working exporter and SAME FlagTree JIT kernel, not an ATen out=.
    directory = directory.resolve()
    for name in ('contracts', 'graph'):
        if name in sys.modules:
            require(Path(sys.modules[name].__file__).parent.resolve() == directory,
                    'another bridge module is already imported')
    sys.path.insert(0, str(directory))
    spec = importlib.util.spec_from_file_location('f08_g2_existing_bridge_worker', directory / 'worker.py')
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def load_planner(directory):
    directory = directory.resolve()
    hashes = {name: sha(directory / (name + '.py')) for name in ('schema', 'liveness', 'offset_planner')}
    name = 'f08_runtime_planner_' + fingerprint(hashes)[:16]
    package = types.ModuleType(name)
    package.__path__ = [str(directory)]
    sys.modules[name] = package
    return importlib.import_module(name + '.offset_planner'), hashes


def parse_cards(raw):
    require(raw.count('Processes:') == 1, 'missing/ambiguous PPU process table')
    card_text, process_text = raw.split('Processes:', 1)
    lines = card_text.splitlines()
    cards = {}
    for index, line in enumerate(lines):
        match = re.match(r'^\|\s*(\d+)\s+PPU-[^|]+\|', line)
        if not match:
            continue
        card = int(match[1])
        require(card not in cards, 'duplicate PPU header')
        detail = ' '.join(lines[index + 1:index + 3])
        memory = re.search(r'(\d+)\s*MiB\s*/\s*(\d+)\s*MiB', detail)
        utilization = re.search(r'\|\s*(\d+)%', detail)
        require(memory is not None and utilization is not None, 'missing PPU memory/utilization')
        cards[card] = {'card': card, 'used_mib': int(memory[1]),
                       'utilization_percent': int(utilization[1]), 'pids': []}
    require(bool(cards), 'no recognized PPU cards')
    for line in process_text.splitlines():
        if re.match(r'^\|\s*\d+\s', line):
            match = re.match(r'^\|\s*(\d+)\s+\S+\s+\S+\s+(\d+)\s+', line)
            require(match is not None and int(match[1]) in cards, 'unknown PPU process row')
            cards[int(match[1])]['pids'].append(int(match[2]))
    return cards


def read_cards():
    raw = subprocess.run(['ppu-smi'], capture_output=True, text=True, check=True, timeout=15).stdout
    return raw, parse_cards(raw)


def idle(state, limit):
    return not state['pids'] and state['utilization_percent'] == 0 and state['used_mib'] <= limit


def choose_card(cards, requested='auto', excluded=(), limit=18):
    require(type(limit) is int and 0 <= limit <= 18, 'idle threshold cannot exceed approved 18 MiB')
    candidates = sorted(card for card, state in cards.items() if card not in excluded and idle(state, limit))
    if requested != 'auto':
        require(str(requested).isdigit() and int(requested) in candidates, 'requested PPU not idle/allowed')
        return int(requested)
    require(bool(candidates), 'no idle PPU available; do not kill other tasks')
    return candidates[0]


def require_idle(cards, card, limit):
    require(card in cards and idle(cards[card], limit), 'selected PPU no longer idle; stop this run group')


def require_mapping(cards, card, pid):
    require(card in cards and set(cards[card]['pids']) == {pid},
            'PID/physical mapping missing or another process occupies selected card')


ARMS = ('torch', 'flagtree-out', 'flagtree-arena', 'flagtree-inplace')


def summarize(records, repetitions):
    import statistics
    require(len(records) == repetitions * len(ARMS), 'incomplete experiment; no summary')
    require(len({(r['arm'], r['rep']) for r in records}) == len(records), 'duplicate measurement')
    for key in ('gate_sha256', 'physical_card', 'output_sha256', 'identity_sha256', 'compiler_set_sha256'):
        require(len({r[key] for r in records}) == 1, 'measurement identity differs: ' + key)
    result = {}
    for arm in ARMS:
        group = [r for r in records if r['arm'] == arm]
        require({r['rep'] for r in group} == set(range(1, repetitions + 1)), 'missing repetitions')
        require(all(len(r['samples_s']) == 30 and all(x > 0 for x in r['samples_s']) for r in group),
                'invalid samples')
        def percentile(xs, p):
            xs = sorted(xs); at = (len(xs) - 1) * p
            lo = int(at); hi = min(lo + 1, len(xs) - 1)
            return xs[lo] + (xs[hi] - xs[lo]) * (at - lo)
        result[arm] = {'p50_ms': statistics.median(percentile(r['samples_s'], .5) * 1000 for r in group),
                       'p95_ms': statistics.median(percentile(r['samples_s'], .95) * 1000 for r in group),
                       'sentences_per_s': statistics.median(64 * 30 / sum(r['samples_s']) for r in group),
                       **{key: statistics.median(r['memory'][key] for r in group)
                          for key in ('peak_allocated_bytes', 'peak_reserved_bytes')}}
    before, after = result['flagtree-out'], result['flagtree-arena']
    result['g2_effect'] = {'allocated_reduction_bytes': before['peak_allocated_bytes'] - after['peak_allocated_bytes'],
                           'p50_ratio': after['p50_ms'] / before['p50_ms'],
                           'arena_minus_g03_inplace_peak_bytes': after['peak_allocated_bytes']
                               - result['flagtree-inplace']['peak_allocated_bytes'],
                           'acceptance': 'not automatically accepted; explicit-barrier executor only'}
    return result
