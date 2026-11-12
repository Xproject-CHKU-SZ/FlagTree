import collections
import hashlib
import inspect
from pathlib import Path
import sys
import torch
from triton._C import libtriton
from triton.experimental import graph_fusion
from triton.experimental.graph_fusion import _resource_autotune as auto, _p800_flat as flat
from triton.runtime import driver
from timing import record, measure
sys.path.insert(0,'/repair')
from cases import Bin

torch.manual_seed(61)
torch.set_grad_enabled(False)
module=Bin('add_gelu_tanh',1024).eval()
a=torch.randn(64,1024).half().cuda();b=torch.randn(1024).half().cuda()
ref=module(a,b)
def tensors(o):
    return o if isinstance(o,torch.Tensor) else o[0]
def checked(f):
    o=tensors(f())
    torch.testing.assert_close(o.cpu(),ref.cpu(),rtol=.003,atol=.003,equal_nan=True)
refs={};audit=[]
lib=hashlib.md5(Path(libtriton.__file__).read_bytes()).hexdigest()
backend=graph_fusion.autotune_resource_backend(tolerance={'atol':.003,'rtol':.003},environment_key='P800-152-'+lib,audit=audit)
cf=auto.compile_candidate
ff=flat.compile
def capture(g,x,p):
    out=cf(g,x,p)
    refs[p.name]=out
    return out
def capflat(spec,x):
    out=ff(spec,x);refs['flat_impl']=out
    return out
auto.compile_candidate=capture;flat.compile=capflat
def observe(gm,x):
    fn=backend(gm,x);refs['backend_fn']=fn;refs['gm']=gm;return fn
fn=torch.compile(module,backend=observe,fullgraph=True,dynamic=False)
checked(lambda:fn(a,b))
auto.compile_candidate=cf;flat.compile=ff
selected=audit[-1]['decision']['selected']
record('ROUTE',selected=selected,graph=refs['gm'].code,candidates=[(r['name'],r['status'],r.get('gpu_us')) for r in audit[-1]['candidates']])
gm=refs['gm']
# Use the captured FX order, verified against the actual outputs.
xs=next(xs for xs in ((a,b),(b,a)) if torch.allclose(tensors(gm(*xs)),ref,rtol=.003,atol=.003))
flatfn,proof=refs['flat_impl']
flat_order=next(lst for lst in [[a,b],[b,a]] if lst[0].ndim==2)
state=inspect.getclosurevars(flatfn).nonlocals['state']
launch=state['launcher']
dest=torch.empty_like(a)
binary=launch(a,b,dest)
bound=inspect.getclosurevars(launch).nonlocals
grid=bound['grid']
record('FLAT',kernel=binary.metadata.name,hash=binary.hash,tile=proof['tiles'],grid=grid)
fns={'eager':lambda:module(a,b),'compiled':lambda:fn(a,b),
     'backend_direct':lambda:refs['backend_fn'](*xs),'selected_graph':lambda:refs[selected][0](*xs),
     'cluster_graph':lambda:refs['cluster'][0](*xs),'flat_direct':lambda:flatfn(flat_order)}
def jit_fresh():
    v=torch.empty_like(a);launch(a,b,v);return v
fns['jit_fresh']=jit_fresh
def jit_fixed():
    launch(a,b,dest);return dest
fns['jit_fixed']=jit_fixed
# Bypass only the Python JIT cache and argument specialization; preserve binary and stream.
run=binary[(grid[0],1,1)]
dev=driver.active.get_current_device()
stream=driver.active.get_current_stream(dev)
record('BINARY_ABI',sig=str(inspect.signature(run)),source=inspect.getsource(type(binary).__getitem__)[:1100])
consts=(bound['kind'],1024,64*1024,bound['xb'])
def plain(fresh,fast):
    v=torch.empty_like(a) if fresh else dest
    if fast:run(a,b,v,*consts,stream=stream)
    else:run(a,b,v,*consts)
    return v
for name,f in [('cached_bin_fresh',lambda:plain(True,False)),('cached_bin_fresh_stream',lambda:plain(True,True)),('cached_bin_fixed_stream',lambda:plain(False,True))]:
    try:
        checked(f);fns[name]=f
    except Exception as exc:record('UNAVAILABLE',stage=name,reason=str(exc)[:400])
for k,f in fns.items():
    checked(f)
record('VERIFIED',cases=list(fns))
if sys.argv[1:]==['profile']:
    import cProfile
    import pstats
    import dis
    fns={'eager':fns['eager'],'public_module':fns['compiled'],'optimized_forward':lambda:fn.forward(a,b),
         'direct_backend':fns['backend_direct'],'flat_direct':fns['flat_direct'],'jit_fresh':jit_fresh}
    measure(fns,calls=80,rounds=13)
    for k in ('public_module','direct_backend'):
        p=cProfile.Profile()
        torch.cuda.synchronize()
        p.enable()
        for _ in range(500): out=fns[k]()
        p.disable()
        torch.cuda.synchronize()
        rows=[]
        for (file,line,sym),(cc,n,total,cum,callers) in pstats.Stats(p).stats.items():
            rows.append(dict(symbol=sym,file=file,line=line,calls=n,self_us=total*2000,cumulative_us=cum*2000))
        record('PROFILE',stage=k,top_self=sorted(rows,key=lambda q:-q['self_us'])[:35],top_cumulative=sorted(rows,key=lambda q:-q['cumulative_us'])[:35])
else:
    measure(fns,calls=80,rounds=13)
