"""Parse the deferred matmul sweep output into a speedup table."""
import json, pathlib, sys, collections

path = sys.argv[1] if len(sys.argv) > 1 else 'work/2026-11-05/matmul-wait/matmul_sweep.out'
shapes = ['16x128', '32x256', '64x1024', '128x1024', '512x1024', '2048x2048']
kinds = ['matmul_bias', 'matmul_bias_relu', 'matmul_bias_gelu_exact',
         'matmul_bias_gelu_tanh', 'matmul_bias_silu']
by = collections.defaultdict(dict)
for line in pathlib.Path(path).read_text().splitlines():
    if line.startswith('CASE '):
        d = json.loads(line[5:])
        by[(d['kind'], d['dtype'])][d['shape']] = d


def cell(d, base):
    if d is None:
        return '--'
    if 'error' in d:
        return 'ERR'
    b = d.get('best') or {}
    c = d.get('cluster') or {}
    e = d.get('eager') or {}
    i = d.get('inductor') or {}
    if base == 'eager':
        v = b.get('vs_eager')
        return 'n/a' if v is None else f'{v:.2f}' + ('' if c.get('valid') else '*')
    v = (e['us'] / i['us']) if (e.get('us') and i.get('us')) else None
    return 'n/a' if v is None else f'{v:.2f}' + ('' if i.get('valid') else '*')


for base in ('eager', 'inductor'):
    print(f'\n## vs {base}\n')
    print('| 模板 | ' + ' | '.join(shapes) + ' |')
    print('|---|' + '---|' * len(shapes))
    for dtype in ('float32', 'float16'):
        for k in kinds:
            print(f'| {k} ({dtype[-4:] if dtype.startswith("float") else dtype}) | '
                  + ' | '.join(cell(by[(k, dtype)].get(s), base) for s in shapes) + ' |')
