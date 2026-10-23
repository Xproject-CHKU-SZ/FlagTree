"""Workbook-driven selection and matched comparisons; no accelerator imports."""
from __future__ import annotations
import hashlib
import json
import os
from pathlib import Path
import statistics
import sys

HERE = Path(__file__).resolve().parent
SHARED = HERE.parent / 'f08_flagtree_g2_runtime_20261022'
sys.path.insert(0, str(SHARED))
from common import (choose_card, fingerprint, load_bridge, read_cards, require,
                    require_idle, require_mapping, save, sha)

ARMS = ('torch', 'flagtree-out', 'flagtree-inplace')
PROTOCOL = {'version': 'f08-practical-inplace/1', 'sentences': 64, 'warmup': 5,
            'measured': 30, 'per_selected_node_global_barrier': False,
            'stream': 'single_current_stream', 'dtype': 'float32',
            'atol': 0, 'rtol': 0, 'arena': False}


def resolve_resource(model, hub, venvs):
    """Read only the named model. Never download or pick an arbitrary revision."""
    slug = model['model_id'].replace('/', '--')
    root = Path(hub) / ('models--' + slug)
    revision = model.get('revision')
    if not revision:
        ref = root / 'refs/main'
        require(ref.is_file(), 'missing pinned revision and refs/main: ' + model['model_id'])
        revision = ref.read_text().strip()
    require(len(revision) == 40 and all(c in '0123456789abcdef' for c in revision), 'invalid revision')
    snapshot = root / 'snapshots' / revision
    python = Path(venvs) / ('.venv_py3_12_' + model['model_id'].replace('/', '__')) / 'bin/python'
    require(snapshot.is_dir() and (snapshot / 'modules.json').is_file(), 'missing SentenceTransformer snapshot')
    require(os.access(python, os.X_OK), 'missing executable model venv')
    require(any(snapshot.glob('*.safetensors')) or any(snapshot.glob('pytorch_model*.bin')),
            'no existing root weights; no automatic download')
    config = json.loads((snapshot / 'config.json').read_text())
    require(not config.get('auto_map'), 'custom auto_map requires a reviewed adapter')
    return {**model, 'revision': revision, 'snapshot': str(snapshot), 'python': str(python)}


def percentile(samples, fraction):
    xs = sorted(samples)
    at = (len(xs) - 1) * fraction
    lo = int(at)
    return xs[lo] + (xs[min(lo + 1, len(xs) - 1)] - xs[lo]) * (at - lo)


def summarize(records, repetitions=3):
    """Only complete, identical-identity triplets produce an optimization delta."""
    import math
    require(len(records) == len(ARMS) * repetitions, 'incomplete matched experiment')
    require(all(r.get('status') == 'passed' and not r.get('longrun_rounds', 0) for r in records),
            'failed/longrun record cannot enter short-performance comparison')
    require(len({(r['arm'], r['rep']) for r in records}) == len(records), 'duplicate measurement')
    for key in ('gate_sha256', 'identity_sha256', 'case_sha256', 'physical_card',
                'compiler_set_sha256', 'output_sha256', 'protocol_sha256'):
        require(len({r[key] for r in records}) == 1, 'unmatched identity: ' + key)
    require(all(r['protocol_sha256'] == fingerprint(PROTOCOL) for r in records), 'wrong measurement protocol')
    result = {}
    for arm in ARMS:
        group = [r for r in records if r['arm'] == arm]
        require({r['rep'] for r in group} == set(range(1, repetitions + 1)), 'missing arm/repetition')
        require(all(len(r['samples_s']) == 30 and all(type(x) in (float, int) and
                math.isfinite(x) and x > 0 for x in r['samples_s']) for r in group), 'invalid raw samples')
        for r in group:
            require(all(type(r['memory'][k]) is int and r['memory'][k] >= 0 for k in
                        ('peak_allocated_bytes', 'peak_reserved_bytes')), 'invalid memory sample')
        result[arm] = {'p50_ms': statistics.median(percentile(r['samples_s'], .5)*1000 for r in group),
                       'p95_ms': statistics.median(percentile(r['samples_s'], .95)*1000 for r in group),
                       'sentences_per_s': statistics.median(64*30/sum(r['samples_s']) for r in group),
                       **{k: statistics.median(r['memory'][k] for r in group)
                          for k in ('peak_allocated_bytes', 'peak_reserved_bytes')}}
    before, after = result['flagtree-out'], result['flagtree-inplace']
    result['optimization'] = {
        'baseline': 'flagtree-out (same compiled kernel, independent output)',
        'optimized': 'flagtree-inplace (same compiled kernel, legal input/output alias)',
        'allocated_reduction_bytes': before['peak_allocated_bytes']-after['peak_allocated_bytes'],
        'allocated_reduction_fraction': (before['peak_allocated_bytes']-after['peak_allocated_bytes']) /
                                        max(1, before['peak_allocated_bytes']),
        'reserved_reduction_bytes': before['peak_reserved_bytes']-after['peak_reserved_bytes'],
        'p50_ratio': after['p50_ms']/before['p50_ms'],
        'p50_vs_torch_ratio': after['p50_ms']/result['torch']['p50_ms'],
        'acceptance': 'short controlled run only; no automatic stability or F08 acceptance'}
    return result


def manifest(root):
    paths = sorted(p for p in root.rglob('*') if p.is_file() and p.name != 'MANIFEST.sha256')
    with (root / 'MANIFEST.sha256').open('x') as stream:
        stream.write(''.join(f'{sha(p)}  {p.relative_to(root)}\n' for p in paths))


def verify_baselines(root):
    entries = json.loads((root / 'baseline-index.json').read_text())
    require(all(sha(root / r['path']) == r['sha256'] for r in entries), 'baseline changed after capture')
    return entries
