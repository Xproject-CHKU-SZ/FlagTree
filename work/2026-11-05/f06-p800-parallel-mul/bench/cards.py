"""Check machine identity, both ECC counters, memory, utilization and process ownership."""
import os,re,shlex,subprocess,time
HEALTHY=(7,)  # 1 and 2 were excluded by the prior hardware campaign.
def status(i):
    env={k:v for k,v in os.environ.items() if k not in ('LD_LIBRARY_PATH','LD_PRELOAD','XPU_VISIBLE_DEVICES','CUDA_VISIBLE_DEVICES')}
    def run(*args): return subprocess.check_output(['xpu-smi',*args,'-i',str(i)],text=True,env=env,timeout=10)
    details=run('-q','-d','ECC,PIDS'); machine=run('-m'); vals=shlex.split(machine)
    ecc=[int(x) for x in re.findall(r'DRAM (?:Uncorrectable|Correctable)\s*:\s*(\d+)',details)]
    pids=list(map(int,re.findall(r'Process ID\s*:\s*(\d+)',details)))
    healthy=len(ecc)==4 and not any(ecc) and len(vals)>=22 and vals[21]=='P800 OAM' and int(vals[2])==i
    return dict(card=i,healthy=healthy,idle=bool(healthy and not pids and re.search(r'Processes\s*:\s*None',details) and int(vals[17])==0 and int(vals[19])==0),pids=pids,machine=machine,ecc=ecc,at=time.time())
def wait_idle():
    while True:
        for i in HEALTHY:
            if status(i)['idle']:return i
        time.sleep(12)
