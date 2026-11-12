"""Serial P800 benchmarks with per-case processes, health checks and timeouts."""
import argparse
import json
import os
from pathlib import Path
import re
import shlex
import shutil
import signal
import subprocess
import time

ROOT = Path(__file__).resolve().parent


def query(device):
    def run(*flags):
        monitor_env = {k:v for k,v in os.environ.items() if k not in ('LD_LIBRARY_PATH', 'LD_PRELOAD')}
        return subprocess.run(['xpu-smi', *flags, '-i', str(device)], check=True,
                              capture_output=True, text=True, timeout=10, env=monitor_env).stdout
    machine = run('-m')
    rows = [shlex.split(line) for line in machine.splitlines() if line.strip()]
    assert len(rows) == 1 and len(rows[0]) >= 22, machine
    r = rows[0]
    assert int(r[2]) == device and r[21] == 'P800 OAM', r
    health = run('-q', '-d', 'ECC,PIDS')
    errors = re.findall(r'DRAM (?:Uncorrectable|Correctable)\s*:\s*(\d+)', health)
    assert len(errors) == 4 and all(int(x) == 0 for x in errors), health
    return dict(machine=machine, health=health, memory_mb=int(r[17]), utilization=int(r[19]),
                temperature=int(r[4]), clocks=r[9:15], pci=r[0],
                idle=bool(re.search(r'Processes\s*:\s*None', health)) and int(r[17]) == 0 and int(r[19]) == 0)


def main():
    p = argparse.ArgumentParser()
    p.add_argument('--name', required=True)
    p.add_argument('--device', type=int, default=0)
    p.add_argument('--cpus', default='')
    p.add_argument('--ordinals', default='all')
    p.add_argument('--routes', nargs='+', choices=['eager', 'sdnn', 'cluster'], default=['eager', 'sdnn', 'cluster'])
    p.add_argument('--rounds', type=int, default=2)
    p.add_argument('--timeout', type=int, default=600)
    p.add_argument('--timing', choices=['graph', 'e2e_only'], default='graph')
    args = p.parse_args()
    if args.cpus:
        selected = {int(x) for x in args.cpus.split(',')}
        assert selected and selected <= os.sched_getaffinity(0)
        os.sched_setaffinity(0, selected)
    assert ROOT.is_relative_to(Path('/home/zhaoweiming'))
    assert re.fullmatch(r'[a-zA-Z0-9_-]+', args.name)
    assert 0 <= args.device < 8 and 1 <= args.rounds <= 2 and 30 <= args.timeout <= 1800
    run = ROOT / 'results' / args.name
    run.mkdir(parents=True, exist_ok=False)
    from coverage_cases import cases
    specs = cases()
    ordinals = list(range(len(specs))) if args.ordinals == 'all' else [int(x) for x in args.ordinals.split(',')]
    assert all(0 <= x < len(specs) for x in ordinals)
    env = os.environ.copy()
    env.update(PYTHONDONTWRITEBYTECODE='1', PYTHONNOUSERSITE='1', OMP_NUM_THREADS='1', MKL_NUM_THREADS='1',
               OPENBLAS_NUM_THREADS='1', XPU_VISIBLE_DEVICES=str(args.device), CUDA_VISIBLE_DEVICES=str(args.device),
               F06_PHYSICAL_DEVICE=str(args.device),
               XPU_EVENT_KL3_ENABLE='1', XMLIR_ENABLE_MOCK_TORCH_COMPILE='false', TRITON_STORE_BINARY_ONLY='0')
    for name in ('XPU_DUMMY_EVENT', 'CUDA_LAUNCH_BLOCKING', 'TRITON_INTERPRET', 'TRITON_ALWAYS_COMPILE'):
        env.pop(name, None)
    for name, relative in dict(TMPDIR='tmp', TRITON_CACHE_DIR='cache/triton',
                               TORCHINDUCTOR_CACHE_DIR='cache/inductor', CUDA_CACHE_PATH='cache/cuda',
                               XDG_CACHE_HOME='cache/xdg').items():
        folder = run / relative
        folder.mkdir(parents=True, exist_ok=True)
        env[name] = str(folder)
    manifest = dict(arguments=vars(args), cases=[specs[i] for i in ordinals], started=time.time(),
                    timing='graph replay GPU and synchronized ordinary-call E2E are separate', records=[])
    (run / 'run.json').write_text(json.dumps(manifest, indent=2))
    for repeat in range(args.rounds):
        order = ordinals if repeat == 0 else list(reversed(ordinals))
        routes = args.routes if repeat == 0 else list(reversed(args.routes))
        for ordinal in order:
            for route in routes:
                if shutil.disk_usage(ROOT).free < 2**30:
                    raise RuntimeError('stop before test caches consume the reserved 1 GiB disk space')
                before = query(args.device)
                for _ in range(5):
                    if before['idle']:
                        break
                    time.sleep(2)
                    before = query(args.device)
                if not before['idle']:
                    (run / 'stopped.json').write_text(json.dumps(dict(reason='device_not_idle', device=before), indent=2))
                    raise RuntimeError('selected device is not idle; no resets or other-process actions permitted')
                label = f'r{repeat}-{ordinal:03d}-{route}'
                output = run / label
                command = [str(ROOT / 'env/bin/python'), '-B', '-u', str(ROOT / 'resource_worker.py'),
                           '--ordinal', str(ordinal), '--route', route, '--repeat', str(repeat),
                           '--timing', args.timing, '--write-root', '/home/zhaoweiming', '--output', str(output)]
                started = time.monotonic()
                timed_out = False
                with (run / (label + '.log')).open('w') as log:
                    process = subprocess.Popen(command, env=env, stdout=log, stderr=subprocess.STDOUT,
                                               cwd=ROOT, start_new_session=True)
                    try:
                        code = process.wait(timeout=args.timeout)
                    except subprocess.TimeoutExpired:
                        timed_out = True
                        os.killpg(process.pid, signal.SIGTERM)
                        try:
                            code = process.wait(timeout=5)
                        except subprocess.TimeoutExpired:
                            os.killpg(process.pid, signal.SIGKILL)
                            code = process.wait(timeout=10)
                record = dict(label=label, ordinal=ordinal, route=route, repeat=repeat, before=before,
                              returncode=code, timed_out=timed_out, elapsed_seconds=time.monotonic()-started)
                result_file = output / 'result.json'
                if result_file.exists():
                    result = json.loads(result_file.read_text())
                    record['status'] = result['status']
                    record['stage'] = result.get('stage')
                if timed_out:
                    record['status'] = 'timeout'
                manifest['records'].append(record)
                (run / 'run.json').write_text(json.dumps(manifest, indent=2))
                print(json.dumps({k:v for k,v in record.items() if k != 'before'}), flush=True)
                if timed_out:
                    raise RuntimeError('case timed out; stop to verify device health before continuing')
    manifest['completed'] = time.time()
    (run / 'run.json').write_text(json.dumps(manifest, indent=2))


if __name__ == '__main__':
    main()
