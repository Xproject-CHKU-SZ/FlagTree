"""Bounded serial runner; own process group only, GPU occupancy monitoring."""
import fcntl
import json
import os
from pathlib import Path
import signal
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parent
PYTHON = '/home/f/flagtree/.venv/bin/python'
UUID = 'GPU-da47d8df-895f-3898-85ec-271176ad3d82'


def inventory():
    cmd = ['nvidia-smi', '--query-compute-apps=gpu_uuid,pid,process_name,used_gpu_memory', '--format=csv,noheader,nounits']
    raw = subprocess.check_output(cmd, text=True, timeout=10)
    rows = []
    for line in raw.splitlines():
        values = [s.strip() for s in line.split(',')]
        if values and values[0] == UUID:
            rows.append(dict(uuid=values[0], pid=int(values[1]), process=values[2], memory=values[3]))
    return rows


def main():
    lock = open('/tmp/flagtree-f06-report117-4090.lock', 'a+')
    fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
    state = dict(status='preflight', runs=[], monitoring=[])

    def save():
        (ROOT / 'orchestration.json').write_text(json.dumps(state, indent=2) + '\n')

    for _ in range(2):
        rows = inventory()
        state['monitoring'].append(dict(at=time.time(), phase='preflight', processes=rows))
        save()
        if rows:
            raise RuntimeError('GPU has another compute process')
        time.sleep(3)
    env = dict(os.environ, PYTHONPATH='/home/f/flagtree/python',
               CPATH='/usr/local/cuda/include', TRITON_PTXAS_PATH='/usr/local/cuda/bin/ptxas',
               TRITON_BACKENDS_IN_TREE='1', CUDA_VISIBLE_DEVICES=UUID,
               OMP_NUM_THREADS='1', MKL_NUM_THREADS='1', TORCHINDUCTOR_COMPILE_THREADS='1',
               TRITON_CACHE_DIR=str(ROOT / 'cache/triton'),
               TORCHINDUCTOR_CACHE_DIR=str(ROOT / 'cache/inductor'),
               CUDA_CACHE_PATH=str(ROOT / 'cache/cuda'))
    sequence = [('smoke', 0, True)] if '--smoke' in sys.argv else [('round-a', 0, False), ('round-b', 1, False)]
    for label, repeat, smoke in sequence:
        assert not (ROOT / label).exists(), 'refusing to overwrite an existing run'
        cmd = ['taskset', '-c', '0', PYTHON, str(ROOT / 'bench_current.py'),
               '--output', str(ROOT / label), '--repeat-index', str(repeat)]
        if smoke:
            cmd.append('--smoke')
        start = time.time()
        with (ROOT / f'{label}.log').open('x') as log:
            proc = subprocess.Popen(cmd, env=env, stdout=log, stderr=subprocess.STDOUT, start_new_session=True)
            run = dict(label=label, pid=proc.pid, command=cmd, started_at=start)
            state.update(status='running')
            state['runs'].append(run)
            save()
            try:
                while proc.poll() is None:
                    time.sleep(5)
                    rows = inventory()
                    state['monitoring'].append(dict(at=time.time(), phase=label, processes=rows))
                    foreign = []
                    for row in rows:
                        try:
                            group = os.getpgid(row['pid'])
                        except ProcessLookupError:
                            continue
                        if group != proc.pid:
                            foreign.append(row)
                    if foreign or time.time() - start > 1800:
                        raise RuntimeError(f'foreign GPU process or timeout: {foreign}')
                    save()
            except BaseException as exc:
                if proc.poll() is None:
                    os.killpg(proc.pid, signal.SIGTERM)
                    try:
                        proc.wait(timeout=10)
                    except subprocess.TimeoutExpired:
                        os.killpg(proc.pid, signal.SIGKILL)
                        proc.wait()
                run.update(error=str(exc), returncode=proc.returncode)
                state.update(status='stopped')
                save()
                raise
        run.update(returncode=proc.returncode, ended_at=time.time())
        save()
        if proc.returncode != 0:
            state.update(status='failed')
            save()
            raise RuntimeError(f'{label} failed: {proc.returncode}')
    state.update(status='completed', ended_at=time.time())
    save()


if __name__ == '__main__':
    main()
