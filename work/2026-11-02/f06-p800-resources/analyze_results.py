"""Paired, same-device F06 analysis; failed accuracy never enters speedups."""
import argparse
from collections import Counter, defaultdict
import json
import math
from pathlib import Path
import statistics


def geometric_mean(values):
    return math.exp(statistics.mean(math.log(x) for x in values)) if values else None


def summarize(dataset):
    rows = [x['result'] for x in dataset['results'] if x['run'].startswith('full-gpu')]
    by_case = defaultdict(lambda: defaultdict(dict))
    native_hashes = set()
    for result in rows:
        if result['status'] == 'running':
            continue
        ordinal, route, repeat = result['ordinal'], result['route'], result['repeat']
        assert repeat not in by_case[ordinal][route], (ordinal, route, repeat)
        by_case[ordinal][route][repeat] = result
        if result['status'] != 'passed':
            continue
        assert result['physical_device'] == ordinal % 8
        native_hashes.add(result['native_sha256'])
        assert result['timing'] == 'graph'
        assert len(result['gpu_us']['samples_us']) == 7 and len(result['e2e_us']['samples_us']) == 31
        assert all(x > 0 for x in result['gpu_us']['samples_us'])
        if route != 'eager':
            proof = result['resource_proof']
            assert proof['resource_verified'] and proof['external_calls'] == 0
            assert all(x['effective'] == route and x['native_metadata']['arch'] == 3
                       for x in proof['kernel_evidence'])
        assert result['counters_before'] == result['counters_after']
    assert len(native_hashes) <= 1, native_hashes
    cases = []
    for ordinal, routes in sorted(by_case.items()):
        any_result = next(iter(next(iter(routes.values())).values()))
        spec = any_result.get('case')
        if spec is None:
            continue
        result = dict(ordinal=ordinal, case=spec, size='large' if spec['case_id'].startswith('large:') else 'small',
                      physical_device=ordinal % 8, routes={})
        bindings = [json.dumps(v['input_binding'], sort_keys=True) for rr in routes.values()
                    for v in rr.values() if v.get('input_binding')]
        assert len(set(bindings)) <= 1, ('input mismatch', ordinal)
        for route in ('eager', 'sdnn', 'cluster'):
            repeats = routes.get(route, {})
            statuses = [repeats[r]['status'] if r in repeats else 'not_measured' for r in (0, 1)]
            entry = dict(statuses=statuses, valid_pair=statuses == ['passed', 'passed'])
            if entry['valid_pair']:
                for metric in ('gpu_us', 'e2e_us'):
                    medians = [repeats[r][metric]['median_us'] for r in (0, 1)]
                    entry[metric] = statistics.median(medians)
                    entry[metric+'_round_medians'] = medians
                    entry[metric+'_round_spread_ratio'] = max(medians)/min(medians)
            else:
                entry['errors'] = [dict(repeat=r, stage=v.get('stage'), error=v.get('error', ''))
                                   for r,v in repeats.items() if v['status'] != 'passed']
            result['routes'][route] = entry
        eager = result['routes']['eager']
        if eager['valid_pair']:
            for route in ('sdnn', 'cluster'):
                entry = result['routes'][route]
                if entry['valid_pair']:
                    entry['gpu_speedup_vs_eager'] = eager['gpu_us']/entry['gpu_us']
                    entry['e2e_speedup_vs_eager'] = eager['e2e_us']/entry['e2e_us']
        valid = [(v['gpu_us'], k) for k,v in result['routes'].items() if v['valid_pair']]
        result['fastest_valid_gpu_path'] = min(valid)[1] if valid else None
        if all(result['routes'][k]['valid_pair'] for k in ('sdnn','cluster')):
            result['cluster_over_sdnn_gpu_time_ratio'] = result['routes']['cluster']['gpu_us']/result['routes']['sdnn']['gpu_us']
        cases.append(result)
    groups = []
    for size in ('small','large'):
        for kind in sorted({x['case']['kind'] for x in cases}):
            selected = [x for x in cases if x['size']==size and x['case']['kind']==kind]
            group = dict(size=size, kind=kind, available_cases=len(selected), routes={})
            for route in ('sdnn','cluster'):
                valid = [x['routes'][route] for x in selected if 'gpu_speedup_vs_eager' in x['routes'][route]]
                speeds = [x['gpu_speedup_vs_eager'] for x in valid]
                group['routes'][route] = dict(valid_cases=len(valid), expected_cases=9,
                    gpu_geomean_speedup=geometric_mean(speeds), gpu_min_speedup=min(speeds) if speeds else None,
                    gpu_max_speedup=max(speeds) if speeds else None, faster_than_eager=sum(s>1 for s in speeds))
                group['routes'][route]['e2e_geomean_speedup'] = geometric_mean([x['e2e_speedup_vs_eager'] for x in valid])
            groups.append(group)
    return dict(completed_records=sum(r['status']!='running' for r in rows), expected_records=1296,
                statuses=dict(Counter(r['status'] for r in rows)), native_sha256=list(native_hashes),
                comparison='median of two per-round medians; eager divided by resource; both rounds must pass',
                groups=groups, cases=cases)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('input', type=Path)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    report = summarize(json.loads(args.input.read_text()))
    args.output.write_text(json.dumps(report, indent=2, ensure_ascii=False)+'\n')
    print(json.dumps({k:v for k,v in report.items() if k not in ('groups','cases')}, ensure_ascii=False))


if __name__ == '__main__':
    main()
