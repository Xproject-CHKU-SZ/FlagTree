"""Same-device handoff through shared device memory; no claimed direct fabric."""
import argparse
import json
import statistics
import time
import traceback
from transfer_common import *

p=argparse.ArgumentParser();p.add_argument('--gpu',type=int,required=True);p.add_argument('--case',type=int,required=True)
a=p.parse_args();out,report=initialize(a.gpu,f'relay-{a.case:03}')
try:
    import torch
    from transfer_kernels import copy_kernel
    locked=json.loads((ROOT/'results'/f'copy-{a.case:03}'/'result.json').read_text())
    assert locked['status']=='complete'
    n=locked['n'];dtype=getattr(torch,locked['dtype']);length=n*n
    torch.manual_seed(99101+a.case)
    cpu=(torch.rand(length)-.5).to(dtype)
    x=cpu.cuda();middle=torch.empty_like(x);y=torch.empty_like(x)
    report.update(n=n,dtype=locked['dtype'],operation='HBM-buffer relay',payload_bytes=x.numel()*x.element_size(),
                  physical_proof=physical_proof(a.gpu),rounds=[],resources={},locked_configs=locked['best'])
    report['copy_result_sha256']=hashlib.sha256((ROOT/'results'/f'copy-{a.case:03}'/'result.json').read_bytes()).hexdigest()
    funcs={}
    for first,second in [('sdnn','sdnn'),('cluster','cluster'),('sdnn','cluster'),('cluster','sdnn')]:
        label=first+'->'+second
        def call(first=first,second=second):
            for resource,src,dst in [(first,x,middle),(second,middle,y)]:
                c=locked['best'][resource];b=c['BLOCK']
                k=copy_kernel[(length//b,)](src,dst,BLOCK=b,is_sdnn=resource=='sdnn',**c.get('options',{}))
                assert bool(k.metadata.is_sdnn)==(resource=='sdnn')
        estimate=locked['resources'][first]['gpu_us']+locked['resources'][second]['gpu_us']
        count=batch_size(estimate)
        middle.fill_(float('nan'));y.fill_(float('nan'));torch.cuda.synchronize()
        call();exact(middle,cpu);exact(y,cpu)
        g=capture(call,count)
        funcs[label]=(call,g,count)
    labels=list(funcs)
    for order in [labels,labels[::-1]]:
        for label in order:
            fn,g,count=funcs[label]
            report['rounds'].append(dict(route=label,timing=measure(g,count),e2e=end_to_end(fn)))
            save(out,report)
    cpu.mul_(-1).add_(.125);x.copy_(cpu);torch.cuda.synchronize()
    for label,(fn,g,count) in funcs.items():
        middle.fill_(float('nan'));y.fill_(float('nan'));torch.cuda.synchronize();g.replay()
        exact(middle,cpu);exact(y,cpu)
        times=[v for r in report['rounds'] if r['route']==label for v in r['timing']['samples_us']]
        e2e=[v for r in report['rounds'] if r['route']==label for v in r['e2e']['samples_us']]
        us=statistics.median(times)
        report['resources'][label]=dict(gpu_us=us,e2e_us=statistics.median(e2e),samples_us=times,
            payload_GBps=report['payload_bytes']/us/1000,read_plus_write_GBps=4*report['payload_bytes']/us/1000,
            bitwise_equal=True,fresh_data_checked=True)
    report.update(status='complete',finished_at=time.time())
except Exception as exc:
    report.update(status='failed',error=str(exc),traceback=traceback.format_exc());raise
finally:save(out,report)
