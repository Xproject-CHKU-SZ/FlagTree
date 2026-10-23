"""Read-only aggregation of the existing real-FlagTree 1000-round workers.

No runtime, kernel, allocator or device configuration changes. Longrun memory
checkpoints include separate checksum work and are not performance evidence.
"""
from __future__ import annotations
import argparse
import hashlib
import json
import math
from pathlib import Path

MODELS = ('sentence-transformers/all-MiniLM-L6-v2', 'BAAI/bge-m3',
          'intfloat/multilingual-e5-large', 'mixedbread-ai/mxbai-embed-large-v1',
          'BAAI/bge-large-en-v1.5')
ARMS = ('flagtree-out', 'flagtree-inplace')
ROUNDS = [1, *range(100, 1001, 100)]


def require(ok, message):
    if not ok:
        raise ValueError(message)


def fingerprint(value):
    return hashlib.sha256(json.dumps(value, sort_keys=True, ensure_ascii=False).encode()).hexdigest()


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def integer(value, label):
    require(type(value) is int and value >= 0, 'invalid nonnegative integer: '+label)
    return value


def contained(root, relative):
    path = (root / relative).resolve()
    require(path.is_relative_to(root) and path != root, 'source path escapes run: '+str(relative))
    return path


def analyze_arm(result, baseline, gate, gate_sha, case_sha, card, arm):
    require(result['status'] == 'passed' and result['arm'] == arm, 'failed/wrong longrun arm')
    require(result['longrun_rounds'] == 1000, 'not a 1000-round run')
    require(result['physical_card'] == card, 'longrun switched physical card')
    require(result['gate_sha256'] == gate_sha and result['case_sha256'] == case_sha, 'gate/case mismatch')
    for key in ('identity_sha256', 'compiler_set_sha256'):
        require(result[key] == gate[key], 'longrun/gate identity mismatch: '+key)
    for key in ('identity_sha256', 'compiler_set_sha256', 'case_sha256', 'gate_sha256',
                'physical_card', 'protocol_sha256', 'output_sha256'):
        require(result[key] == baseline[key], 'longrun/short baseline mismatch: '+key)
    protocol = result['protocol']
    require(result['protocol_sha256'] == fingerprint(protocol) and protocol == gate['protocol'],
            'protocol identity mismatch')
    require(protocol['atol'] == protocol['rtol'] == 0 and protocol['dtype'] == 'float32'
            and protocol['sentences'] == 64 and protocol['stream'] == 'single_current_stream',
            'unexpected precision/input/stream protocol')
    require(len(result['samples_s']) == 1000 and all(type(x) in (int,float) and math.isfinite(x)
            and x > 0 for x in result['samples_s']), 'missing/invalid longrun samples')
    points = result['growth_checkpoints']
    require([p['round'] for p in points] == ROUNDS, 'missing, duplicated or unordered checkpoint')
    require(all(p['output_sha256'] == result['output_sha256'] for p in points), 'checkpoint output changed')
    warm = integer(result['post_warmup']['allocated_bytes'], 'post_warmup.allocated')
    allocated = [integer(p['allocated_bytes'], 'checkpoint.allocated') for p in points]
    reserved = [integer(p['reserved_bytes'], 'checkpoint.reserved') for p in points]
    end_delta = result['allocated_end_minus_warm_bytes']
    require(type(end_delta) is int, 'invalid end-minus-warm value')
    observed = end_delta > 0 or max(allocated) > warm or max(allocated) > min(allocated)
    return {'arm': arm, 'rounds': 1000, 'output_consistent': True,
        'warm_allocated_bytes': warm, 'first_checkpoint_allocated_bytes': allocated[0],
        'last_checkpoint_allocated_bytes': allocated[-1],
        'allocated_end_minus_warm_bytes': end_delta,
        'last_checkpoint_minus_warm_bytes': allocated[-1]-warm,
        'allocated_checkpoint_span_bytes': max(allocated)-min(allocated),
        'max_checkpoint_minus_warm_bytes': max(allocated)-warm,
        'reserved_checkpoint_span_bytes': max(reserved)-min(reserved),
        'observation': 'allocated_change_observed_needs_review' if observed else
                       'no_positive_allocated_growth_observed',
        'boundary': 'finite fixed-input observations, not proof of absence of leaks; '
                    'checkpoint checksum work must not be used for forward performance comparisons'}


def analyze_run(root, expected_models=MODELS):
    root = root.resolve()
    require(not (root/'failure.json').exists(), 'suite has a failure record; not a complete longrun')
    refs = {}
    def read(relative):
        path = contained(root, relative)
        raw = path.read_bytes()
        refs[str(path.relative_to(root))] = hashlib.sha256(raw).hexdigest()
        return json.loads(raw)
    suite = read('suite-summary.json')
    require(not suite['dry_run'], 'dry-run is not device evidence')
    rows = suite['models']
    require(len(rows) == len(expected_models) and {r['model_id'] for r in rows} == set(expected_models),
            'incomplete/duplicate/unexpected model set')
    card = integer(suite['physical_card'], 'physical_card')
    require(all(r['status'] == 'completed' for r in rows), 'not every model completed')
    exit_state = read('exit-occupancy.json')
    require(exit_state['selected'] == card and exit_state['idle'] is True, 'exit idle not proven')
    entries = read('baseline-index.json')
    require(bool(entries) and len({r['path'] for r in entries}) == len(entries), 'empty/duplicate baseline index')
    for entry in entries:
        path = contained(root, entry['path'])
        actual = sha(path)
        require(actual == entry['sha256'], 'baseline changed: '+entry['path'])
        refs[entry['path']] = actual
    baseline_paths = {r['path'] for r in entries}
    directories = {}
    for d in root.glob('model-*'):
        if d.is_dir():
            case = read(str(d.relative_to(root)/'case.json'))
            require(case['model_id'] not in directories, 'duplicate model case')
            directories[case['model_id']] = (d, case)
    require(set(directories) == set(expected_models), 'case directories differ from model set')
    output = []
    for name in expected_models:
        directory, case = directories[name]
        relative = directory.relative_to(root)
        gate_rel = str(relative/'gate/result.json')
        gate = read(gate_rel)
        require(gate['status'] == 'passed' and bool(gate['selected']), 'FlagTree gate not passed')
        case_sha = fingerprint(case)
        require(gate['case_sha256'] == case_sha, 'case changed after gate')
        baseline_rel = str(relative/'rep-1-flagtree-out/result.json')
        require(baseline_rel in baseline_paths, 'comparison baseline absent from baseline index')
        baseline = read(baseline_rel)
        require(baseline['status'] == 'passed' and baseline['arm'] == 'flagtree-out'
                and baseline['longrun_rounds'] == 0, 'invalid short baseline')
        arms = {}
        for arm in ARMS:
            result = read(str(relative/('longrun-'+arm)/'result.json'))
            arms[arm] = analyze_arm(result, baseline, gate, refs[gate_rel], case_sha, card, arm)
        output.append({'model_id': name, 'revision': case['revision'],
                       'selected_nodes': len(gate['selected']), 'arms': arms})
    require(all(sha(contained(root,p)) == h for p,h in refs.items()), 'source files changed during summary')
    return {'status': 'complete_1000_round_observations', 'physical_card': card,
        'models': output, 'baseline_files_verified': len(entries), 'source_files_sha256': refs,
        'allocated_change_needs_review': any(a['observation'] == 'allocated_change_observed_needs_review'
                                           for m in output for a in m['arms'].values()),
        'boundary': 'G05 bounded stability evidence for existing G03 FlagTree GELU lowering; '
                    'not E4/full-F08 acceptance, task accuracy, or a new optimization gain'}


def markdown(result):
    lines = ['# FlagTree 五模型1000轮连续运行结果', '',
             f"物理PPU：{result['physical_card']}；基线校验文件数：{result['baseline_files_verified']}。", '',
             '| 模型 | 路径 | 轮数 | 输出一致 | 末尾allocated−预热 B | 检查点allocated波动 B | reserved波动 B | 观察 |',
             '|---|---|---:|---|---:|---:|---:|---|']
    for m in result['models']:
        for arm in ARMS:
            a = m['arms'][arm]
            note = '观察到变化，待定位' if a['observation'].endswith('needs_review') else '未观察到allocated正增长'
            lines.append(f"| {m['model_id']} | {arm} | 1000 | 是 | {a['allocated_end_minus_warm_bytes']} | "
                         f"{a['allocated_checkpoint_span_bytes']} | {a['reserved_checkpoint_span_bytes']} | {note} |")
    lines += ['', '只报告固定输入、有限轮次内的观察；不等于完全无泄漏、无越界或整个F08验收通过。',
              'reserved变化可能包含缓存行为，不自动归因为泄漏；allocated变化也需定位后才能解释。',
              '长稳检查点含独立checksum工作，不用长稳峰值/延迟替换短程优化前后性能表。',
              '下一步：有增长/异常先定位；无增长则结合模型算子画像选择下一类FlagTree优化候选。']
    return '\n'.join(lines)+'\n'


def main():
    p = argparse.ArgumentParser(description=__doc__, allow_abbrev=False)
    p.add_argument('--run-dir', type=Path, required=True)
    p.add_argument('--output-dir', type=Path, required=True)
    a = p.parse_args()
    root, out = a.run_dir.resolve(), a.output_dir.resolve()
    require(not out.is_relative_to(root) and not root.is_relative_to(out),
            'report directory must be separate from raw run')
    result = analyze_run(root)  # Failed/partial inputs create no success report.
    out.mkdir(parents=True, exist_ok=False)
    for name, text in [('longrun-summary.json', json.dumps(result, ensure_ascii=False, indent=2)+'\n'),
                       ('LONGRUN.md', markdown(result))]:
        with (out/name).open('x', encoding='utf8') as f:f.write(text)
    with (out/'MANIFEST.sha256').open('x') as f:
        f.write(''.join(f'{sha(path)}  {path.name}\n' for path in sorted(out.iterdir())
                        if path.is_file() and path.name != 'MANIFEST.sha256'))
    print('Report:',out/'LONGRUN.md')
    print('Allocated change needs review:',result['allocated_change_needs_review'])
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
