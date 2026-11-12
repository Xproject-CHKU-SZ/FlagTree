"""Bounded per-device scheduling, with only one worker on each physical P800."""
from pathlib import Path
import argparse
import concurrent.futures as cf
import json
import os
import shutil
import signal
import shlex
import re
import subprocess
import time

ROOT=Path(__file__).resolve().parent
assert ROOT==Path('/data2/zhaoweiming/p800-capability-20261102')


def hardware(gpu):
    result=subprocess.run(['xpu-smi','-m','-i',str(gpu)],capture_output=True,text=True,check=True,
                          env={k:v for k,v in os.environ.items() if k not in ('LD_LIBRARY_PATH','LD_PRELOAD')},timeout=15)
    rows=[shlex.split(row) for row in result.stdout.splitlines() if 'P800 OAM' in row]
    assert len(rows)==1, result.stdout
    row=rows[0]
    assert int(row[2])==gpu and row[21]=='P800 OAM'
    health=subprocess.check_output(['xpu-smi','-q','-d','ECC,PIDS','-i',str(gpu)],text=True,
        env={k:v for k,v in os.environ.items() if k not in ('LD_LIBRARY_PATH','LD_PRELOAD')},timeout=15)
    errors=re.findall(r'DRAM (?:Uncorrectable|Correctable)\s*:\s*(\d+)',health)
    assert len(errors)==4 and all(int(x)==0 for x in errors),health
    assert int(row[17])==0 and int(row[19])==0 and re.search(r'Processes\s*:\s*None',health),'Device is occupied: '+health
    return dict(machine=result.stdout,health=health)


def main():
    p=argparse.ArgumentParser()
    p.add_argument('--phase',required=True)
    p.add_argument('--cases',required=True)
    p.add_argument('--gpus',default='0,1,2,3,4,5,6,7')
    p.add_argument('--smoke',action='store_true')
    p.add_argument('--diagnostic-configs',action='store_true')
    p.add_argument('--resources',nargs='+',choices=['sdnn','cluster'],default=['sdnn','cluster'])
    p.add_argument('--selection-file',default='selected-candidates.json')
    args=p.parse_args()
    case_ids=[int(x) for x in args.cases.split(',')]
    gpus=[int(x) for x in args.gpus.split(',')]
    assert all(0<=x<8 for x in gpus) and len(gpus)==len(set(gpus))
    tasks={gpu:case_ids[i::len(gpus)] for i,gpu in enumerate(gpus)}
    runs=[]
    before={str(gpu):hardware(gpu) for gpu in gpus}
    (ROOT/f'{args.phase}-hardware-before.json').write_text(json.dumps(before,indent=2))

    def run_device(gpu):
        device_runs=[]
        for case in tasks[gpu]:
            hardware(gpu)
            name=f'{args.phase}-case{case:03d}'
            command=['bash',str(ROOT/'run_env.sh'),str(ROOT/'bench_worker_v8.py'),
                     '--case',str(case),'--gpu',str(gpu),'--out',name]
            if args.smoke:command.append('--smoke')
            if args.diagnostic_configs:command.append('--diagnostic-configs')
            command.extend(['--resources',*args.resources])
            command.extend(['--selection-file',args.selection_file])
            with (ROOT/'logs'/f'{name}.log').open('w') as log:
                proc=subprocess.Popen(command,cwd=ROOT,stdin=subprocess.DEVNULL,
                                      stdout=log,stderr=subprocess.STDOUT,start_new_session=True)
                try:
                    code=proc.wait(timeout=1200)
                    timed_out=False
                except subprocess.TimeoutExpired:
                    os.killpg(proc.pid,signal.SIGTERM)
                    try:proc.wait(timeout=15)
                    except subprocess.TimeoutExpired:
                        os.killpg(proc.pid,signal.SIGKILL);proc.wait(timeout=15)
                    code=proc.returncode;timed_out=True
            record=dict(case=case,gpu=gpu,exit_code=code,timed_out=timed_out,output=name,finished_at=time.time())
            result=ROOT/'results'/name/'result.json'
            if result.exists():
                data=json.loads(result.read_text())
                record.update(status=data.get('status'),stage=data.get('stage'),
                              candidates=len(data.get('candidates',[])),measurements=len(data.get('measurements',[])))
            device_runs.append(record)
            print(json.dumps(record),flush=True)
            # Retain each winning binary and all candidate hashes/accuracy;
            # only discard the per-worker disposable compiler cache.
            cache=ROOT/'cache/workers'/name
            if cache.is_dir() and cache.resolve().is_relative_to(ROOT/'cache/workers'):
                shutil.rmtree(cache)
            if timed_out:
                hardware(gpu)
        return device_runs

    with cf.ThreadPoolExecutor(max_workers=len(gpus)) as pool:
        futures=[pool.submit(run_device,gpu) for gpu in gpus]
        for future in cf.as_completed(futures):runs.extend(future.result())
    (ROOT/f'{args.phase}-runs.json').write_text(json.dumps(sorted(runs,key=lambda x:x['case']),indent=2))
    (ROOT/f'{args.phase}-hardware-after.json').write_text(json.dumps({str(gpu):hardware(gpu) for gpu in gpus},indent=2))


if __name__=='__main__':main()
