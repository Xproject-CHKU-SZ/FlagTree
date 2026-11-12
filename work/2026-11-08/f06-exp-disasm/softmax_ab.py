"""Isolate an exponential substitution in B2 and the delivered single-chunk TLE kernel."""
import importlib.util
import json
import math
import os
import re
import statistics
import sys
from collections import Counter
from pathlib import Path

os.environ['TRITON_STORE_BINARY_ONLY']='0'
os.environ['TRITON_CACHE_DIR']='/tmp/f06-exp-ab-cache'
import torch
from exp_variants import pointwise
from triton.experimental.graph_fusion import _p800_reduce as shipped
from triton.backends import llvm19_toolchain

def report(key, **values):
    print(key+' '+json.dumps(values,allow_nan=False),flush=True)

def module(name, source):
    path=Path('/tmp')/(name+'.py')
    path.write_text(source)
    qualified=shipped.__package__+'.'+name
    spec=importlib.util.spec_from_file_location(qualified,path)
    mod=importlib.util.module_from_spec(spec)
    sys.modules[qualified]=mod
    spec.loader.exec_module(mod)
    return mod

def ordinary_check(actual, reference):
    a=actual.detach().cpu(); b=reference.detach().cpu()
    finite=torch.isfinite(a)&torch.isfinite(b)
    err=(a[finite]-b[finite]).abs()
    return dict(max_abs=float(err.max()) if err.numel() else 0.,
                nonfinite_mismatch=int(((torch.isnan(a)!=torch.isnan(b)) |
                                        (torch.isposinf(a)!=torch.isposinf(b)) |
                                        (torch.isneginf(a)!=torch.isneginf(b))).sum()),
                close=bool(torch.allclose(a,b,rtol=3e-4,atol=3e-4,equal_nan=True)))

torch.manual_seed(61)
torch.set_grad_enabled(False)
m=n=2048
a=torch.randn(m,n).cuda(); b=torch.randn(n).cuda()
tests=[('seed61',a,b)]
torch.manual_seed(93)
tests.append(('seed93',torch.randn_like(a),torch.randn_like(b)))
tests.append(('wide',a*32,b*16))
tests.append(('shifted',a+1000,b))
special=a.clone()
special[0,0]=float('nan');special[1,17]=float('inf');special[2,:]=float('-inf')
special[3,::2]=float('-inf');special[4,:]=0.;special[5,1]=200.;special[5,2]=-200.
tests.append(('special',special,torch.zeros_like(b)))
expected={name:torch.softmax(x+y,-1).cpu() for name,x,y in tests}
calls={'eager':lambda x,y:torch.softmax(x+y,-1)}
assembly={}
native_poly=sys.argv[1:] in (['llvm'],['max'])
if native_poly:
    from llvm_poly import install
    install(llvm19_toolchain)
compile_asm=llvm19_toolchain.llir_to_asm
def keep(*args,**kwargs):
    asm=compile_asm(*args,**kwargs)
    assembly['last']=asm
    return asm
llvm19_toolchain.llir_to_asm=keep
lo=torch.linspace(-104.,0.,8192)
lo[:8]=torch.tensor([float('-inf'),float('nan'),-104.,-103.9,-90.,-87.,-1.,0.])
lo=lo.cuda(); po=torch.empty_like(lo)
pointwise[(32,)](lo,po,BLOCK=256,num_warps=4,num_stages=1)
y=po.cpu(); ref=lo.cpu().double().exp().float()
valid=ref>=1.1754943508222875e-38
sub=(ref>0)&~valid
report('EXP_DOMAIN',**ordinary_check(y,ref),max_rel_normal=float(((ref[valid]-y[valid]).abs()/ref[valid]).max()),
       subnormals=int(sub.sum()),subnormals_flushed=int(((y==0)&sub).sum()))
src=Path('/repair/dbg_softmax_online2.py').read_text()
b2='import triton\nimport triton.language as tl\n'+src[src.index('@triton.jit'):src.index('\nm, n = ')]
native_variant='maxhw' if sys.argv[1:] == ['max'] else 'vpoly'
variants = [('baseline','tl.exp'),(native_variant,'tl.exp')] if native_poly else [('baseline','tl.exp'),('poly6','poly_exp'),('control','cheap_control')]
for name,op in variants:
    for layout in ('B2','TLE'):
        label=layout+'_'+name
        src=b2 if layout=='B2' else Path(shipped.__file__).read_text()
        if name in ('vpoly','maxhw'):
            for old in ('softmax_online2d','_tle_row_softmax'):
                src=src.replace(old,old+'_'+name)
        if op!='tl.exp':
            src='from exp_variants import '+op+'\n'+src.replace('tl.exp(',op+'(')
        mod=module('diagnostic_'+label,src)
        if layout=='B2':
            kernel=getattr(mod,'softmax_online2d_'+name if name in ('vpoly','maxhw') else 'softmax_online2d')
            def fn(x,y,k=kernel):
                out=torch.empty_like(x)
                k[(m//8,)](x,y,out,N=n,R=8,C=128,num_warps=8,num_stages=1,is_sdnn=False)
                return out
        else:
            impl,proof=mod.compile(dict(kind='add_softmax',m=m,n=n,dtype='float32',eps=0.),(a,b))
            def fn(x,y,k=impl):
                return k([x,y])[0]
        try:
            out=fn(a,b);torch.cuda.synchronize()
            if layout=='TLE':
                assert proof['tiles']['route']=='tle',proof['tiles']
            ops=Counter(re.findall(r'^\s*([a-z][\w.]+)\s',assembly.get('last',''),re.M))
            report('CODE',label=label,exp=ops['exp.f.rn'],vextract=ops['vextracti.f'],jal=ops['jal'],scalar_max=ops['max.f'],
                   vec_add=ops['vadd.f.mz.rn'],vec_mul=ops['vmul.f.mz.rn'],ops_total=sum(ops.values()),
                   vector_math={k:v for k,v in ops.items() if k.startswith(('vadd.f','vsub.f','vmul.f','vfm','vmac','vsh','vsll'))})
            checks={case:ordinary_check(fn(x,y),expected[case]) for case,x,y in tests}
            report('CHECK',label=label,checks=checks)
            calls[label]=fn
        except Exception as exc:
            report('REJECT',label=label,error=str(exc)[:1200])
for fn in calls.values():
    for _ in range(5):out=fn(a,b)
times={k:[] for k in calls}
for round_id in range(9):
    keys=list(calls);keys=keys[round_id%len(keys):]+keys[:round_id%len(keys)]
    if round_id%2: keys.reverse()
    for k in keys:
        for attempt in range(4):
            s,e=torch.cuda.Event(True),torch.cuda.Event(True);s.record()
            for _ in range(30):out=calls[k](a,b)
            e.record();torch.cuda.synchronize()
            us=s.elapsed_time(e)*1000/30
            if math.isfinite(us) and us>0:break
        else:raise RuntimeError('bad device event')
        times[k].append(us)
report('TIME',unit='us',median={k:statistics.median(v) for k,v in times.items()},samples=times)
