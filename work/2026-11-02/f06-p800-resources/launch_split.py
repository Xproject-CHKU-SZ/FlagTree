"""Launch independent, same-card F06 comparisons; no machine settings change."""
import hashlib
import json
from pathlib import Path
import subprocess
import time

ROOT = Path(__file__).resolve().parent


def main():
    assert ROOT == Path('/home/zhaoweiming/f06-resources-20261102')
    while True:
        path = ROOT/'coverage-launch.json'
        if path.exists():
            main_status = json.loads(path.read_text())
            if 'ended' in main_status:
                assert main_status['all_runners_completed'], 'main coverage did not finish cleanly'
                break
        time.sleep(2)
    from resource_runner import query
    plan = json.loads((ROOT/'split-plan.json').read_text())
    hashes = json.loads((ROOT/'split-source-manifest.json').read_text())
    for name, expected in hashes.items():
        path = (ROOT/name).resolve()
        assert path.is_relative_to(ROOT)
        assert hashlib.sha256(path.read_bytes()).hexdigest() == expected, name
    for group in plan['groups']:
        assert query(group['device'])['idle'], group
        assert not (ROOT/'results'/f"split-gpu{group['device']}").exists()
    status = dict(started=time.time(), plan=plan, source_sha256=hashes, children=[])

    def save():
        temporary = ROOT/'split-launch.tmp'
        temporary.write_text(json.dumps(status, indent=2))
        temporary.replace(ROOT/'split-launch.json')

    processes = []
    for group in plan['groups']:
        device = group['device']
        command = ['bash', str(ROOT/'run_env.sh'), str(ROOT/'split_runner.py'),
                   '--name', f'split-gpu{device}', '--device', str(device),
                   '--cpus', ','.join(map(str, group['cpus'])),
                   '--ordinals', ','.join(map(str, group['ordinals'])),
                   '--routes', 'eager', 'sdnn', 'split', '--rounds', str(group['rounds']),
                   '--timeout', '600', '--timing', 'graph']
        with (ROOT/f'split-gpu{device}.log').open('x') as log:
            process = subprocess.Popen(command, stdin=subprocess.DEVNULL, stdout=log,
                                       stderr=subprocess.STDOUT, start_new_session=True, cwd=ROOT)
        processes.append(process)
        status['children'].append(dict(device=device, pid=process.pid, command=command))
        save()
    while True:
        active = False
        for process, child in zip(processes, status['children']):
            code = process.poll()
            if code is None:
                active = True
            elif 'returncode' not in child:
                child.update(returncode=code, ended=time.time())
                save()
        if not active:
            break
        time.sleep(2)
    status.update(ended=time.time(), all_runners_completed=all(c['returncode'] == 0 for c in status['children']))
    save()


if __name__ == '__main__':
    main()
