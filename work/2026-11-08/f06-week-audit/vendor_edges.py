import json,torch,triton
import triton.language as tl
import triton.experimental
triton.experimental.__path__.insert(0,'/opt/f06/code/python/triton/experimental')
from triton.experimental.graph_fusion import _resource_autotune as auto
from cases import Bin
torch.set_grad_enabled(False);torch.manual_seed(772)
@triton.jit
def wrap(x,b,y,BLOCK:tl.constexpr):
    i=tl.program_id(0)*BLOCK+tl.arange(0,BLOCK)
    tl.store(y+i,tl.load(x+i)+tl.load(b+i%1024))
n=1<<20
a=torch.zeros(n).cuda(); y=torch.full((n,),-123.).cuda()
back=torch.full((n,),-42.).cuda(); b=back[:1024];b.copy_(torch.arange(1024).float().cuda())
wrap[(n//8192,)](a,b,y,BLOCK=8192,num_warps=8,is_sdnn=True)
got=y.cpu(); ref=torch.arange(1024).float().repeat(n//1024)
print('MODULO',json.dumps(dict(bad=int((got!=ref).sum()),sentinel=int((got==-42.).sum()),n=n,first4=got[:4].tolist(),row2=got[1024:1028].tolist())),flush=True)
a=(1000+torch.randn(64,1024)*.1).cuda(); b=torch.zeros(1024).cuda()
for kind in ('add_layernorm','add_layernorm_affine'):
    g=torch.fx.symbolic_trace(Bin(kind,1024).cuda())
    plan=next(p for p in auto.candidate_plans(g,(a,b),single_kernel=True) if p.name=='cluster')
    fn,_=auto.compile_candidate(g,(a,b),plan);fn(torch.randn_like(a),b)
    x=fn(a,b); x=x[0] if isinstance(x,(list,tuple)) else x
    r=g(a,b)
    print('NORM',json.dumps(dict(kind=kind,nonfinite_eager=int((~torch.isfinite(r)).sum()),nonfinite_candidate=int((~torch.isfinite(x)).sum()),bad=int((~torch.isclose(x,r,atol=.0003,rtol=.0003,equal_nan=True)).sum()))),flush=True)
