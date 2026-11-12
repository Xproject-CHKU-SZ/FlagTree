"""Trace the previous largest public-entry difference for an eager-fallback graph."""
from pathlib import Path
import sys,hashlib
import torch
from triton._C import libtriton
from triton.experimental import graph_fusion
from triton.experimental.graph_fusion import _resource_autotune as auto
from timing import record,measure
sys.path.insert(0,'/repair')
from cases import Mat
torch.manual_seed(61);torch.set_grad_enabled(False)
model=Mat('matmul_bias_silu',1024).eval()
xs=tuple(torch.randn(sh).half().cuda() for sh in [(64,64),(64,1024),(1024,)])
want=model(*xs).cpu()
audit=[];refs={}
lib=hashlib.md5(Path(libtriton.__file__).read_bytes()).hexdigest()
backend=graph_fusion.autotune_resource_backend(tolerance={'atol':.003,'rtol':.003},environment_key='P800-152-'+lib,audit=audit)
original=auto.compile_candidate
def capture(g,inputs,p):
    out=original(g,inputs,p);refs[p.name]=out[0];return out
auto.compile_candidate=capture
def observe(g,ex):
    fn=backend(g,ex);refs['_backend']=fn;refs['_gm']=g;return fn
public=torch.compile(model,backend=observe,fullgraph=True,dynamic=False)
out=public(*xs);torch.cuda.synchronize();auto.compile_candidate=original
route=audit[-1]['decision']['selected']
record('ROUTE',selected=route,fx=refs['_gm'].code)
# Confirm FX placeholder order from actual tensor metadata.
import itertools
for ordered in itertools.permutations(xs):
    try:
        direct=refs['eager'](*ordered)[0]
        if torch.allclose(want,direct.cpu(),atol=.003,rtol=.003,equal_nan=True):break
    except RuntimeError:pass
else:raise RuntimeError('unmatched FX input order')
fns={'eager_module':lambda:model(*xs),'public':lambda:public(*xs),'public_forward':lambda:public.forward(*xs),
     'backend':lambda:refs['_backend'](*ordered),'selected_plan':lambda:refs[route](*ordered),'eager_plan':lambda:refs['eager'](*ordered)}
for f in fns.values():
    v=f();torch.testing.assert_close((v[0] if isinstance(v,(tuple,list)) else v).cpu(),want,rtol=.003,atol=.003,equal_nan=True)
measure(fns,calls=60,rounds=11)
