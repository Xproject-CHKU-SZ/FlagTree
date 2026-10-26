"""Bounded Qwen rotary contracts; standard library only, safe before device guard."""
from __future__ import annotations
from collections import Counter
import copy
import hashlib
import json
import math
from pathlib import Path
import statistics

ARMS = ('mlp-inplace', 'mlp-inplace+rotary')
PROTOCOL = {'version': 'f08-qwen-indexed-rotary/1', 'sentences': 64,
            'batch_size': 32, 'seq_len': 24, 'dtype': 'float32', 'use_cache': False,
            'warmup': 5, 'measured': 30, 'atol': 0, 'rtol': 0,
            'per_node_synchronize': False, 'arena': False,
            'existing_mlp_inplace_in_both_arms': True}


def require(value, message):
    if not value:
        raise ValueError(message)


def fingerprint(value):
    return hashlib.sha256(json.dumps(value, sort_keys=True, ensure_ascii=False).encode()).hexdigest()


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def save(path, value):
    with Path(path).open('x', encoding='utf-8') as f:
        json.dump(value, f, ensure_ascii=False, indent=2, allow_nan=False)
        f.write('\n')


def validate_layout(fact):
    require(fact.get('dtype') == 'float32', 'requires fp32')
    require(isinstance(fact.get('device'),str) and bool(fact['device']), 'missing device identity')
    shape, stride = fact.get('shape'), fact.get('stride')
    require(isinstance(shape, list) and len(shape) == 4 and all(type(d) is int and d > 0 for d in shape),
            'requires positive concrete rank-four shape')
    require(isinstance(stride, list) and len(stride) == 4 and all(type(s) is int and s >= 0 for s in stride),
            'requires explicit nonnegative strides')
    offset, capacity = fact.get('byte_offset'), fact.get('storage_nbytes')
    require(type(offset) is int and offset >= 0 and offset % 4 == 0 and type(capacity) is int,
            'invalid offset/capacity')
    require(offset + 4 * (1 + sum((d-1)*s for d, s in zip(shape, stride))) <= capacity,
            'strided view exceeds storage')
    return shape, stride


def constants(source, scale, block=256):
    """Offsets are already included in Tensor.data_ptr(); do not add them twice."""
    shape, strides = validate_layout(source)
    scale_shape, scale_strides = validate_layout(scale)
    require(shape[-1] % 2 == 0, 'last dimension must have two exact halves')
    require(source['device'] == scale['device'], 'source/scale device mismatch')
    require(all(a in (1, b) for a, b in zip(scale_shape, shape)), 'invalid scale broadcast')
    require(block == 256, 'no unvalidated tuning configuration')
    effective = [0 if dim == 1 else step for dim, step in zip(scale_shape, scale_strides)]
    # Must match EVERY constexpr in the JIT signature AND CompiledKernel launch.
    return [math.prod(shape), *shape[1:], *strides, *effective, block]


def offsets(index, source, scale):
    """CPU index oracle only, not a numerical kernel or accelerator fallback."""
    cs = constants(source, scale)
    n, heads, tokens, width = cs[:4]
    require(type(index) is int and 0 <= index < n, 'index outside logical output')
    d = index % width
    token = index // width % tokens
    head = index // (width*tokens) % heads
    batch = index // (width*tokens*heads)
    other = d + width//2 if d < width//2 else d - width//2
    x = sum(a*b for a,b in zip((batch, head, token, other), cs[4:8]))
    s = sum(a*b for a,b in zip((batch, head, token, d), cs[8:12]))
    return x, s, d < width//2


def validate_destination(source, scale, dest):
    shape, _ = validate_layout(source)
    constants(source, scale)
    dst_shape, dst_stride = validate_layout(dest)
    dense = [shape[1]*shape[2]*shape[3], shape[2]*shape[3], shape[3], 1]
    require(dst_shape == shape and dst_stride == dense and dest['byte_offset'] == 0
            and dest['storage_nbytes'] == math.prod(shape)*4, 'requires independent dense output')
    require(dest['device'] == source['device'], 'destination device mismatch')
    require(all(type(f.get('storage_pointer')) is int and f['storage_pointer'] > 0
                for f in (source,scale,dest)), 'missing source/scale/destination storage identity')
    require(dest['storage_pointer'] not in (source.get('storage_pointer'), scale.get('storage_pointer')),
            'rotary output may not share either input storage')


def schedule(graph, rotary=None):
    """No reordering: replace inputs at selected Mul, omit only four proven nodes."""
    rotary = rotary or {}
    names = {n['name'] for n in graph}
    require(len(names) == len(graph), 'duplicate graph node')
    removed = {name for info in rotary.values() for name in info['removed_analysis_nodes']}
    require(sum(len(c['removed_analysis_nodes']) for c in rotary.values()) == len(removed),
            'overlapping removal')
    require(not (set(rotary) & removed) and removed <= names and set(rotary) <= names,
            'unknown/removed target')
    rows = []
    for node in graph:
        if node['name'] in removed:
            continue
        require(node['op'] in ('placeholder', 'call_function', 'output'), 'unsupported node kind')
        inputs = node['inputs']
        if node['name'] in rotary:
            c = rotary[node['name']]
            require(node['target'] == 'aten.mul.Tensor' and c['cat'] in inputs, 'wrong rotary target')
            inputs = [c['source'], c['scale']]
        require(not (set(inputs) & removed), 'removed intermediate has another surviving consumer')
        rows.append({'name': node['name'], 'op': node['op'], 'inputs': list(dict.fromkeys(inputs)),
                     'rotary': node['name'] in rotary})
    defined = set()
    for row in rows:
        require(set(row['inputs']) <= defined, 'schedule violates input definition order')
        defined.add(row['name'])
    require(len([r for r in rows if r['op'] == 'output']) == 1 and rows[-1]['op'] == 'output',
            'requires one terminal output')
    return rows


def make_execution_plan(plan, candidates):
    """Pre-MLP-inplace G1 plan: G03 must be re-evaluated on this derived plan."""
    out = copy.deepcopy(plan)
    tensors = {t['source_value']: t for t in out['tensors']}
    removed = {n for c in candidates for n in c['removed_analysis_nodes']}
    for c in candidates:
        task = next(t for t in out['tasks'] if t['source_node'] == c['target_mul'])
        require(task['kernel_id'] == 'aten.mul.Tensor' and
                tensors[c['cat']]['tensor_id'] in task['inputs'], 'plan target mismatch')
        task['inputs'] = [tensors[c['source']]['tensor_id'] if i == tensors[c['cat']]['tensor_id'] else i
                          for i in task['inputs']]
        task['kernel_id'] = 'flagtree.rotary_indexed_mul.fp32'
    out['tasks'] = [t for t in out['tasks'] if t['source_node'] not in removed]
    out['tensors'] = [t for t in out['tensors'] if t['source_value'] not in removed]
    by_id = {t['tensor_id']: t for t in out['tensors']}
    for t in out['tensors']:
        t['consumers'] = []
    for i,t in enumerate(out['tasks']):
        t['predecessors'] = [] if not i else [out['tasks'][i-1]['task_id']]
        for name in t['inputs']:
            require(name in by_id, 'derived plan has dangling input')
            if t['task_id'] not in by_id[name]['consumers']:
                by_id[name]['consumers'].append(t['task_id'])
    used = {t['storage_id'] for t in out['tensors']}
    out['storages'] = [s for s in out['storages'] if s['storage_id'] in used]
    out['plan_id'] += '.rotary_indexed_mul'
    return out


def percentile(values, p):
    xs = sorted(values); at = (len(xs)-1)*p; lo = int(at)
    return xs[lo] + (xs[min(lo+1, len(xs)-1)]-xs[lo])*(at-lo)


def summarize(records):
    require(len(records) == 6 and {(r['arm'], r['rep']) for r in records} ==
            {(a, r) for a in ARMS for r in (1,2,3)}, 'need complete 3+3 experiment')
    for key in ('gate_sha256', 'identity_sha256', 'case_sha256', 'physical_card',
                'compiler_set_sha256', 'output_sha256', 'protocol_sha256', 'execution_contract_sha256'):
        require(len({r[key] for r in records}) == 1, 'unmatched identity: '+key)
    for r in records:
        require(r['status'] == 'passed' and r['protocol'] == PROTOCOL
                and r['protocol_sha256'] == fingerprint(PROTOCOL), 'failed/wrong protocol')
        require(len(r['samples_s']) == 30 and all(type(v) in (int,float) and math.isfinite(v) and v > 0
                for v in r['samples_s']), 'invalid latency samples')
        require(all(type(r['memory'][k]) is int and r['memory'][k] >= 0
                    for k in ('peak_allocated_bytes', 'peak_reserved_bytes')), 'invalid memory counters')
    table = {}
    for arm in ARMS:
        rows = [r for r in records if r['arm'] == arm]
        table[arm] = {'p50_ms': statistics.median(percentile(r['samples_s'], .5)*1000 for r in rows),
                      'p95_ms': statistics.median(percentile(r['samples_s'], .95)*1000 for r in rows),
                      'sentences_per_s': statistics.median(64*30/sum(r['samples_s']) for r in rows),
                      **{k: statistics.median(r['memory'][k] for r in rows)
                         for k in ('peak_allocated_bytes', 'peak_reserved_bytes')}}
    a,b = [table[x] for x in ARMS]
    return {'arms': table, 'rotary_effect': {
        'allocated_reduction_bytes': a['peak_allocated_bytes']-b['peak_allocated_bytes'],
        'reserved_reduction_bytes': a['peak_reserved_bytes']-b['peak_reserved_bytes'],
        'p50_ratio_candidate_over_baseline': b['p50_ms']/a['p50_ms'],
        'scope': 'new rotary only; existing MLP inplace in BOTH arms; no automatic acceptance'}}
