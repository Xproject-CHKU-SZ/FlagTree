import hashlib
import json
import os
import statistics
import sys
import time
from pathlib import Path
import torch
import triton.experimental
from triton._C import libtriton
triton.experimental.__path__.insert(0, '/opt/f06/code/python/triton/experimental')
from triton.experimental.graph_fusion import _resource_autotune as auto
from cases import MAT, Mat, Bin

def emit(event, **data):
    print('RECORD '+json.dumps(dict(event=event,kind=kind,dtype=dt,shape=shape,**data)), flush=True)

def arguments(seed):
    g=torch.Generator().manual_seed(seed)
    return tuple(torch.randn(d,generator=g).to(dtype).cuda() for d in dims)

def unwrap(x):
    if isinstance(x,(tuple,list)) and len(x)==1:
        return x[0]
    return x

def check(x, want):
    x=unwrap(x)
    if not isinstance(x,torch.Tensor):
        return 'structure'
    if x.shape!=want.shape or x.dtype!=want.dtype or x.device!=want.device:
        return f'metadata: {tuple(x.shape)} {x.dtype} {x.device}; expected {tuple(want.shape)} {want.dtype} {want.device}'
    try:
        torch.testing.assert_close(x.cpu(),want.cpu(),rtol=tol,atol=tol,equal_nan=True)
    except AssertionError as e:
        return str(e)[:350]
    return None

def timing(fn,inputs):
    a,b=torch.cuda.Event(True),torch.cuda.Event(True)
    a.record()
    for _ in range(40):
        y=fn(*inputs)
    b.record(); torch.cuda.synchronize()
    return a.elapsed_time(b)*1000/40

kind,dt,shape,mode=sys.argv[1:5]
m,n=map(int,shape.split('x')); dtype=getattr(torch,dt); tol=.003 if dt=='float16' else .0003
dims=((m,64),(64,n),(n,)) if kind in MAT else ((m,n),(n,))
torch.set_grad_enabled(False); torch.manual_seed(61)
g=torch.fx.symbolic_trace((Mat if kind in MAT else Bin)(kind,n).to(device='cuda',dtype=dtype).eval())
xs,ys=arguments(61),arguments(93)
ref=g(*xs); changed=g(*ys)
if mode=='trace':
    for _ in range(3): g(*xs)
    torch.cuda.synchronize()
    print('FX '+json.dumps(g.code),flush=True)
    sys.exit()
assert hasattr(libtriton.xpu.passes.ttxpuir,'add_tritonxpu_reconcile_layouts_pass')
routes={p.name:p for p in auto.candidate_plans(g,xs,single_kernel=True,split_reductions=True)}
for p in auto.candidate_plans(g,xs,single_kernel=False,split_reductions=True): routes.setdefault(p.name,p)
for _ in range(6): g(*xs)
emit('start',plans=list(routes),eager_us=statistics.median(timing(g,xs) for _ in range(3)))
for name in mode.split(','):
    if name not in routes:
        emit('decline',route=name); continue
    start=time.monotonic()
    emit('try',route=name)
    try:
        fn,proof=auto.compile_candidate(g,xs,routes[name])
        x=unwrap(fn(*xs)); err=check(x,ref)
        y=unwrap(fn(*ys)); err=err or check(y,changed) or check(x,ref)
        if not err and x.data_ptr()==y.data_ptr(): err='reused output storage'
        inner=[(r.get('route'),r.get('resource'),r.get('emitted')) for r in proof.get('regions',[])]
        if err:
            emit('reject',route=name,reason=err,inner=inner); continue
        for _ in range(6): fn(*xs)
        torch.cuda.synchronize()
        baseline=[]; samples=[]
        for i in range(5):
            if i%2==0: baseline.append(timing(g,xs))
            samples.append(timing(fn,xs))
            if i%2: baseline.append(timing(g,xs))
        emit('pass',route=name,inner=inner,kernel_count=proof.get('kernel_count'),us=statistics.median(samples),eager_us=statistics.median(baseline),samples=samples,base_samples=baseline,elapsed=time.monotonic()-start)
    except Exception as e: emit('error',route=name,reason=type(e).__name__+': '+str(e)[:360])
