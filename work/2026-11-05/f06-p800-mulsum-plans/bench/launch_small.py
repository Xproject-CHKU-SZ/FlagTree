"""Run only on uncontended healthy cards. Discard observations contaminated by another PID."""
from pathlib import Path
import json,os,subprocess,time,signal,hashlib,fcntl
from cards import HEALTHY,status
from coverage_cases import cases
R=Path(__file__).resolve().parent;assert str(R)=='/data2/zhaoweiming/f06-mulsum-plans-20261105';os.chdir(R)
def write(path,obj):
    tmp=path.with_suffix('.tmp');tmp.write_text(json.dumps(obj,indent=1));tmp.replace(path)
controller_lock=(R/'serial-controller.lock').open('a+')
fcntl.flock(controller_lock,fcntl.LOCK_EX|fcntl.LOCK_NB)
while not (R/'offline-install-status.json').exists():time.sleep(10)
for n,h in json.loads((R/'bench-manifest.json').read_text()).items():assert hashlib.sha256((R/n).read_bytes()).hexdigest()==h,(n,h)
ids=[s['ordinal'] for s in cases() if s['kind'] in ('mul_sum','mul_sum_keepdim') and s['N']<=256];assert len(ids)==12
previous=json.loads((R/'complete.json').read_text())
ids.extend(int(k) for k,v in previous.items() if v['status']!='complete' and int(k) not in ids)
order=ids[:]
results=R/'results';results.mkdir(exist_ok=True);completed={};running={};counts={i:0 for i in ids};skip={i:set() for i in ids};pinned=7;ticks=0
while len(completed)<len(ids):
    ticks+=1
    for i,(proc,n,out,before,contaminated,log,start) in list(running.items()):
        h=status(i);rc=proc.poll()
        if rc is None:
            if any(pid!=proc.pid for pid in h['pids']) or not h['healthy']:
                contaminated=True
                # Only signal our own isolated worker, never a foreign PID.
                os.killpg(proc.pid,signal.SIGTERM)
            elif time.time()-start>1800:os.killpg(proc.pid,signal.SIGTERM)
            running[i]=(proc,n,out,before,contaminated,log,start);continue
        log.close();del running[i];contaminated|=bool(h['pids']) or not h['healthy'];r=json.loads((out/'result.json').read_text()) if (out/'result.json').is_file() else {};write(out/'hardware.json',dict(before=before,after=h,contaminated=contaminated,worker=proc.pid,exit_code=rc));
        if contaminated:
            order.append(n);continue
        last=str(r.get('last_stage') or r.get('stage') or '').rsplit(':',1)[-1]
        if rc and last.startswith('sdnn') and last not in skip[n]:skip[n].add(last);order.append(n);continue
        if rc and counts[n]<3:order.append(n);continue
        completed[n]=dict(path=str(out.relative_to(R)),status=r.get('status'),faulted_routes=sorted(skip[n]),returncode=rc,device=i);write(R/'small-fixed-progress.json',completed)
    assert len(running)<=1
    if order and not running:
        cards=HEALTHY if pinned is None else (pinned,);states=[status(i) for i in cards];idle=[s for s in states if s['idle']]
        write(R/'availability.json',dict(at=time.time(),cards=states,running=list(running),left=len(order)))
        for h in idle[:1]:
            if not order:break
            i=h['card'];pinned=i;n=order.pop(0);counts[n]+=1;out=results/(f'case-{n:03d}-serial-v5-a{counts[n]}');log=(R/'logs'/(out.name+'.log')).open('w');cmd=['bash',str(R/'run_env.sh'),str(R/'worker.py'),str(n),str(out)]+['--skip',','.join(sorted(skip[n]))]
            proc=subprocess.Popen(cmd,env=dict(os.environ,F06_PHYSICAL_DEVICE=str(i),F06_FIXED_SMALL='1'),stdout=log,stderr=subprocess.STDOUT,stdin=subprocess.DEVNULL,start_new_session=True);running[i]=(proc,n,out,h,False,log,time.time())
    time.sleep(4 if running else 14)
write(R/'small-fixed-complete.json',completed)
original=json.loads((R/'complete.json').read_text())
write(R/'before-small-fixed-complete.json',original)
original.update({str(k):v for k,v in completed.items()})
assert len(original)==36
write(R/'complete.json',original)
