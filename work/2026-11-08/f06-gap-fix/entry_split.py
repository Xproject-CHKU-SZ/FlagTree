"""Compare a real public torch.compile module with its exact calibrated callables."""
import hashlib
import inspect
from pathlib import Path
import sys
import torch
from triton._C import libtriton
from triton.experimental import graph_fusion
from triton.experimental.graph_fusion import _resource_autotune as auto
sys.path[:0]=['/repair','/repair/v4']
from cases import MAT, Mat, Bin
from timing import measure,record
torch.manual_seed(61)
torch.set_grad_enabled(False)
kind,dt,m,n=sys.argv[1:]
m,n=int(m),int(n)
dtype=getattr(torch,dt)
tol=.003 if dt=='float16' else .0003
model=(Mat if kind in MAT else Bin)(kind,n).to(dtype=dtype,device='cuda').eval()
shapes=((m,64),(64,n),(n,)) if kind in MAT else ((m,n),(n,))
xs=tuple(torch.randn(shape).to(device='cuda',dtype=dtype) for shape in shapes)
ref=model(*xs).cpu()
data={}
plans={}
cal=auto.calibrate_resources
cc=auto.compile_candidate
def observe(gm,inputs,**kwargs):
    chosen,decision=cal(gm,inputs,**kwargs)
    data.update(real_inputs=inputs,selected=decision['selected'],chosen=chosen)
    return chosen,decision
def compile_candidate(gm,inputs,plan):
    fn,proof=cc(gm,inputs,plan)
    plans[plan.name]=fn
    return fn,proof
auto.calibrate_resources=observe
auto.compile_candidate=compile_candidate
audit=[]
lib=hashlib.md5(Path(libtriton.__file__).read_bytes()).hexdigest()
backend=graph_fusion.autotune_resource_backend(tolerance={'atol':tol,'rtol':tol},environment_key='P800-152-'+lib,audit=audit)
pub=torch.compile(model,backend=backend,fullgraph=True,dynamic=False)
try:
    y=pub(*xs)
finally:
    auto.calibrate_resources=cal
    auto.compile_candidate=cc
real=data['real_inputs']
fns={'eager_module':lambda:model(*xs),'public':lambda:pub(*xs),
     'selected':lambda:data['chosen'](*real)}
for c in audit[0]['candidates']:
    name=c['name']
    if name!='eager' and c['status']=='passed':
        fns[name]=lambda name=name:plans[name](*real)
for fn in fns.values():
    out=fn();out=out[0] if isinstance(out,(tuple,list)) else out
    torch.testing.assert_close(out.cpu(),ref,rtol=tol,atol=tol,equal_nan=True)
hot=getattr(pub.forward,'_flagtree_hot_entry',None) is backend
record('ENTRY',kind=kind,dtype=dt,shape=[m,n],selected=data['selected'],guarded=hot,
       warmed=hot and inspect.getclosurevars(pub.forward).nonlocals.get('cached') is not None)
measure(fns,calls=35,rounds=9)
