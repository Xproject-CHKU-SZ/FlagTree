from transfer_common import *
from native_support import *
import argparse
import traceback

p=argparse.ArgumentParser();p.add_argument('--resource',choices=['sdnn','cluster'],required=True);p.add_argument('--tile',type=int,default=1024)
a=p.parse_args();out,report=initialize(7,f'native-probe-v2-{a.resource}-{a.tile}')
try:
    import torch
    nbytes=1024*1024;length=nbytes//4
    cpu=torch.arange(length,dtype=torch.float32)
    x=cpu.cuda();y=torch.empty_like(x);metrics=torch.full((768,8),-1,dtype=torch.int64,device='cuda')
    report['physical_proof']=physical_proof(7)
    blob,base=build_native(a.tile,a.resource,out)
    report['binary_sha256']=hashlib.sha256(blob).hexdigest();report['modes']={};save(out,report)
    for mode in [0,1,2]:
        report['stage']='mode_'+str(mode);save(out,report)
        y.fill_(float('nan'));metrics.fill_(-1);torch.cuda.synchronize()
        fn=native_function(blob,a.resource,x,y,metrics,nbytes,1,mode)
        fn();torch.cuda.synchronize()
        rec=inspect_metrics(metrics,nbytes,1,a.resource)
        if mode==0:exact(y,cpu)
        elif mode==2:exact(y,cpu[:a.tile//4].repeat(length//(a.tile//4)))
        else:
            got=y.cpu()
            for row in rec['rows']:
                if row[2]>0:
                    offset=row[6]//4
                    exact(got[offset:offset+a.tile//4],cpu[offset:offset+a.tile//4])
        g=capture(fn,16);rec['timing']=measure(g,16,3)
        report['modes'][str(mode)]=rec;save(out,report)
    report['status']='complete'
except Exception as exc:
    report.update(status='failed',error=str(exc),traceback=traceback.format_exc());raise
finally:save(out,report)
