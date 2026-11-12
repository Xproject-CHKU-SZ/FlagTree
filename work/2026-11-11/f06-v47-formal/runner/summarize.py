"""Collect a completed v47 pass, checking actual launches and the historical gate witnesses."""
import json
import sys
from pathlib import Path

from check_group import check_group


def collect(folder, suite):
    runner = Path(__file__).resolve().parent
    manifest = (runner / (suite + '.list')).read_text().splitlines()
    if (folder / 'cases.list').read_text().splitlines() != manifest:
        raise ValueError('the recorded scope differs from the requested pass')
    target = {'fp32_39': 39, 'all117': 117}[suite]
    if int((folder / 'verified.count').read_text()) != target or not (folder / 'finished').is_file():
        raise ValueError('pass not complete')
    expected_image = 'sha256:c74d1073f2da053d870cb109ca8daa6bb8c71f4d0abea8726997146263f5e4d1'
    if (folder / 'image.id').read_text().strip() != expected_image:
        raise ValueError('wrong v47 image')
    prior = json.loads((runner / 'historical-gates.json').read_text())
    cases, history = {}, {}
    for line in manifest:
        kind, shape, dtypes = line.split()
        group = folder / (kind + '-' + shape)
        attempt = group / (group / 'accepted').read_text().strip()
        verdicts = check_group(attempt, kind, shape, dtypes.split(','))
        for name, checked in verdicts.items():
            row = json.loads((attempt / (name + '.json')).read_text())
            cases[name] = dict(template=kind, shape=shape, dtype=row['dtype'], route=row['route'],
                               compute_route=row['compute_route'], eager_us=row['wall']['eager']['total'],
                               public_us=row['wall']['public']['total'], speedup=checked['speedup'],
                               device_us=row['device'], launches=len(checked['traces']['public']),
                               traces=checked['traces'], accuracy_reference=row['accuracy_reference'])
            records = {c['name']: c for c in row['candidates']}
            for route, earlier in prior.get(name, {}).items():
                gate = checked['admission_checks'].get(route)
                candidate = records.get(route)
                sha = earlier.get('v43b_rejected_xpubin_sha256')
                same = None if not sha or not gate else sha in gate['executed_sha256']
                history.setdefault(name, {})[route] = dict(
                    previous_sha256=sha, same_machine_code_observed=same, numeric_gate=gate,
                    candidate_status=candidate['status'] if candidate else 'not_enumerated',
                    candidate_error=candidate.get('error') if candidate else None, selected=row['route']==route,
                    public_selection=row['calibration'])
    if len(cases) != target:
        raise ValueError('duplicate or missing measured cases')
    return dict(suite=suite, image=expected_image, card=int((folder/'card').read_text()),
                results=cases, historical_candidate_checks=history)


if __name__ == '__main__':
    result = collect(Path(sys.argv[1]), sys.argv[2])
    Path(sys.argv[3]).write_text(json.dumps(result, ensure_ascii=False, indent=2)+'\n')
