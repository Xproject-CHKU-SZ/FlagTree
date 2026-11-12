"""Check the synchronized public measurements and the code actually dispatched."""
import hashlib
import json
import math
import statistics
import sys
from collections import defaultdict
from pathlib import Path

def check_group(directory, kind, shape, dtypes):
    expected = {f'{kind}-{dtype}-{shape}' for dtype in dtypes}
    paths = sorted(directory.glob('*.json'))
    assert {p.stem for p in paths} == expected, (expected, [p.stem for p in paths])
    calls = defaultdict(list)
    for line in (directory/'bench.log').read_text().splitlines():
        if not line.startswith('MACHINE\t'):
            continue
        _, phase, unit, _, size, entry, grid, cores, ok, symbol, lib, digest = line.split('\t')
        case, leg = phase.rsplit('.',1)
        assert case in expected and ok == '1' and unit in ('0', '1')
        code = (directory/(case+'-machine')/('sha.'+digest+'.code')).read_bytes()
        assert len(code) == int(size) and hashlib.sha256(code).hexdigest() == digest
        calls[case, leg].append(dict(resource=('cluster','sdnn')[int(unit)],symbol=symbol,sha256=digest,
                                      bytes=int(size),entry=int(entry),grid=int(grid),cores=int(cores),library=lib))
    checked = {}
    for p in paths:
        r = json.loads(p.read_text())
        assert r['accuracy_reference'] == 'unrounded_fp32_eager' and r['timing_baseline'] == 'same_dtype_eager'
        assert r['calibration']['compute_tolerance'] is not None
        assert any(candidate['name'] == 'eager' for candidate in r['candidates'])
        dt = r['dtype']
        assert (r['kind'],r['shape'],r['mode'],r['output_dtype']) == (kind, shape, 'formal', 'torch.'+dt)
        assert r['route'] and r['compute_route'] and r['body']
        assert set(r['samples']) == {'eager','wide','public'}
        for arm, samples in r['samples'].items():
            assert len(samples) == 96
            assert all(len(v) == 3 and all(math.isfinite(x) and x >= 0 for x in v) for v in samples)
            assert statistics.median(v[2] for v in samples) == r['wall'][arm]['total'] > 0
        assert set(r['device']) == {'public','eager'} and all(v>0 and math.isfinite(v) for v in r['device'].values())
        legs = ('eager','public') if dt == 'float32' else ('eager','public','ingress','egress')
        trace = {leg:calls[p.stem,leg] for leg in legs}
        assert all(trace.values())
        if r['conversions'] == 'kernel_load_store':
            assert len(trace['public']) == r['launches']
        if r['conversions'] == 'kernel_load_sdk_store':
            assert len(trace['public'])==2 and r['external_calls']==1
            assert trace['public'][1]['sha256']==trace['egress'][-1]['sha256']
        gates = {}
        for candidate, outcome in r['admission_checks'].items():
            calls_in_gate = calls[p.stem, 'gate_' + candidate]
            assert calls_in_gate and outcome.get('probe_count') == 8
            assert outcome.get('status') in ('passed', 'rejected')
            gates[candidate] = dict(outcome, executed_sha256=sorted({call['sha256'] for call in calls_in_gate}))
        checked[p.stem]=dict(traces=trace, admission_checks=gates, speedup=r['wall']['eager']['total']/r['wall']['public']['total'])
    return checked

if __name__=='__main__':
    folder,kind,shape,dtypes=sys.argv[1:]
    print('verified',len(check_group(Path(folder),kind,shape,dtypes.split(','))))
