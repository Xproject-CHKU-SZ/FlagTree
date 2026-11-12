import ast,collections,json,subprocess,sys
from pathlib import Path
from cases import KINDS
prof='/root/miniconda/envs/python310_torch29_cuda/lib/python3.10/site-packages/torch_xmlir/xre/profiler/xprofiler'
for kind in KINDS:
    for dt in ('float32','float16'):
        target=Path('/tmp')/(kind+dt+'.json')
        run=subprocess.run([prof,'-r500','--xpu=0','-e',str(target),sys.executable,'/audit/eager_trace.py',kind,dt],cwd='/tmp',text=True,capture_output=True,timeout=40)
        graph=next((ast.literal_eval(l[8:]) for l in run.stdout.splitlines() if l.startswith('FXGRAPH ')),None)
        row=dict(kind=kind,dtype=dt,shape='512x1024',fx=graph,exit=run.returncode)
        if target.exists():
            events=json.loads(target.read_text())['traceEvents']
            row['kernels']=[{'name':e['name'],'ts':e['ts'],'dur':e.get('dur')} for e in sorted(events,key=lambda e:e.get('ts',0)) if e.get('cat')=='TaskSystemKernel']
        else:row['error']=(run.stdout+run.stderr)[-300:]
        print('TRACE '+json.dumps(row),flush=True)
