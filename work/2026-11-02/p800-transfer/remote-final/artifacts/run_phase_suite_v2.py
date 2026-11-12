"""Run task-owned workers only on independently verified idle P800 devices."""
from pathlib import Path
import argparse
import json
import os
import re
import shlex
import shutil
import signal
import subprocess
import time

ROOT=Path(__file__).resolve().parent
assert ROOT==Path('/data2/zhaoweiming/p800-transfer-20261102')
p=argparse.ArgumentParser();p.add_argument('--cases',nargs='+',type=int,default=list(range(11)))
args=p.parse_args()
queue=list(args.cases);running={};done=[]
env={k:v for k,v in os.environ.items() if k not in ('LD_LIBRARY_PATH','LD_PRELOAD')}


def idle_devices():
    lines=subprocess.check_output(['xpu-smi','-m'],text=True,env=env,timeout=15).splitlines()
    result=[]
    for line in lines:
        r=shlex.split(line)
        if len(r)>21 and r[21]=='P800 OAM' and r[17]=='0' and r[19]=='0':
            gpu=int(r[2])
            if gpu==7:continue
            q=subprocess.check_output(['xpu-smi','-q','-d','ECC,PIDS','-i',str(gpu)],text=True,env=env,timeout=15)
            values=re.findall(r'DRAM (?:Correctable|Uncorrectable)\s*:\s*(\d+)',q)
            assert len(values)==4 and all(int(x)==0 for x in values),q
            if re.search(r'Processes\s*:\s*None',q):result.append(gpu)
    return result


while queue or running:
    for gpu,job in list(running.items()):
        proc=job['proc'];code=proc.poll()
        if code is None and time.monotonic()-job['start']>1200:
            # Popen created this new session; terminate only that recorded group.
            os.killpg(proc.pid,signal.SIGTERM)
            try:code=proc.wait(timeout=10)
            except subprocess.TimeoutExpired:
                os.killpg(proc.pid,signal.SIGKILL);code=proc.wait(timeout=10)
        if code is not None:
            done.append(dict(gpu=gpu,case=job['case'],exit_code=code))
            job['log'].close();del running[gpu]
            cache=ROOT/'cache'/f"phase-v2-{job['case']:03}"
            if cache.is_dir() and not cache.is_symlink():shutil.rmtree(cache)
            print(json.dumps(done[-1]),flush=True)
    if queue:
        for gpu in idle_devices():
            if gpu in running or not queue:continue
            case=queue.pop(0);log=(ROOT/'logs'/f'phase-v2-{case:03}.log').open('w')
            proc=subprocess.Popen(['bash',str(ROOT/'run_env.sh'),str(ROOT/'phase_worker_v2.py'),
                '--gpu',str(gpu),'--case',str(case)],cwd=ROOT,stdin=subprocess.DEVNULL,
                stdout=log,stderr=subprocess.STDOUT,start_new_session=True)
            running[gpu]=dict(case=case,proc=proc,start=time.monotonic(),log=log)
    state=dict(queued=queue,running={g:dict(case=j['case'],pid=j['proc'].pid) for g,j in running.items()},done=done)
    (ROOT/'phase-v2-suite-progress.json').write_text(json.dumps(state,indent=2))
    if running or queue:time.sleep(4)
(ROOT/'phase-v2-suite-complete.json').write_text(json.dumps(done,indent=2))
