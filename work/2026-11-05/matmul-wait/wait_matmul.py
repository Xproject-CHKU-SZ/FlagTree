"""Wait for an idle healthy card on 81, then run the matmul sweep once."""
import os, re, shlex, subprocess, sys, time

BASE = '/data2/zhaoweiming/f06-mulsum-plans-20261105'
CANDIDATES = (3, 4, 5, 6, 7)
KINDS = ('matmul_bias,matmul_bias_relu,matmul_bias_gelu_exact,'
         'matmul_bias_gelu_tanh,matmul_bias_silu')
SHAPES = '16x128,32x256,64x1024,128x1024,512x1024,2048x2048'
DTYPES = 'float32,float16'
LOG = os.path.join(BASE, 'sdnn-fix/matmul_waiter.log')
OUT = os.path.join(BASE, 'sdnn-fix/matmul_sweep.out')
MAX_WAIT_MIN = 12 * 60
NEED_STREAK = 3


def log(msg):
    line = f'{time.strftime("%Y-%m-%d %H:%M:%S")} {msg}'
    print(line, flush=True)
    with open(LOG, 'a') as fh:
        fh.write(line + '\n')


def status(i):
    env = {k: v for k, v in os.environ.items()
           if k not in ('LD_LIBRARY_PATH', 'LD_PRELOAD', 'XPU_VISIBLE_DEVICES',
                        'CUDA_VISIBLE_DEVICES')}

    def run(*args):
        return subprocess.check_output(['xpu-smi', *args, '-i', str(i)],
                                       text=True, env=env, timeout=20)
    details = run('-q', '-d', 'ECC,PIDS')
    machine = run('-m')
    vals = shlex.split(machine)
    ecc = [int(x) for x in re.findall(
        r'DRAM (?:Uncorrectable|Correctable)\s*:\s*(\d+)', details)]
    pids = list(map(int, re.findall(r'Process ID\s*:\s*(\d+)', details)))
    healthy = (len(ecc) == 4 and not any(ecc) and len(vals) >= 22
               and vals[21] == 'P800 OAM' and int(vals[2]) == i)
    idle = bool(healthy and not pids
                and re.search(r'Processes\s*:\s*None', details)
                and int(vals[17]) == 0 and int(vals[19]) == 0)
    return healthy, idle, pids, vals


def main():
    os.chdir(BASE)
    log('waiter started; candidates=%s max_wait=%dmin' % (CANDIDATES, MAX_WAIT_MIN))
    streak = {i: 0 for i in CANDIDATES}
    deadline = time.time() + MAX_WAIT_MIN * 60
    while time.time() < deadline:
        for i in CANDIDATES:
            try:
                healthy, idle, pids, vals = status(i)
            except Exception as exc:
                log(f'card {i}: status error {type(exc).__name__}')
                streak[i] = 0
                continue
            streak[i] = streak[i] + 1 if idle else 0
            log(f'card {i}: healthy={healthy} idle={idle} pids={pids} streak={streak[i]}')
            if streak[i] >= NEED_STREAK:
                log(f'card {i} idle for {NEED_STREAK} consecutive checks -> start sweep')
                env = dict(os.environ, F06_PHYSICAL_DEVICE=str(i))
                cmd = ['bash', 'run_env.sh', 'sdnn-fix/eager_table.py',
                       KINDS, SHAPES, DTYPES]
                t0 = time.time()
                with open(OUT, 'w') as fh:
                    proc = subprocess.run(cmd, cwd=BASE, env=env,
                                          stdout=fh, stderr=subprocess.STDOUT)
                log(f'sweep finished card {i} rc={proc.returncode} '
                    f'elapsed={(time.time()-t0)/60:.1f}min -> {OUT}')
                with open(os.path.join(BASE, 'sdnn-fix/matmul_done'), 'w') as fh:
                    fh.write(f'card={i} rc={proc.returncode}\n')
                return 0
        time.sleep(60)
    log('gave up: no idle card within the wait window')
    return 1


if __name__ == '__main__':
    sys.exit(main())
