"""Warm replay must use Dynamo's original guards and respect module hooks."""
import inspect
from unittest.mock import patch
import torch
from triton.experimental import graph_fusion as gf
from triton.experimental.graph_fusion import _resource_autotune as auto
torch.set_grad_enabled(False)
class M(torch.nn.Module):
    def __init__(self):
        super().__init__()
        self.subtract=False
    def forward(self,x,y):
        if self.subtract:return torch.nn.functional.silu(x-y)
        return torch.nn.functional.silu(x+y)
m=M().eval(); counter=[]
backend=gf.autotune_resource_backend(tolerance={'rtol':.003,'atol':.003},environment_key='guard-qa')
def calibrate(g, inputs, **kw):
    counter.append(tuple(t.shape for t in inputs));return g.forward,{'selected':'eager'}
def check(label, want,actual):
    torch.testing.assert_close(actual.cpu(),want.cpu(),rtol=0,atol=0,equal_nan=True)
    print('PASS',label,flush=True)
with patch.object(auto,'calibrate_resources',calibrate):
    f=torch.compile(m,backend=backend,fullgraph=True,dynamic=False)
    print('ATTACHED',getattr(f.forward,'_flagtree_hot_entry',None) is backend,flush=True)
    assert getattr(f.forward,'_flagtree_hot_entry',None) is backend
    x=torch.randn(32,128).cuda();y=torch.randn(128).cuda()
    check('cold',m(x,y),f(x,y))
    state=inspect.getclosurevars(f.forward).nonlocals
    print('SNAPSHOT',state.keys(),state.get('cached') is not None,flush=True)
    assert state.get('cached') is not None
    held=f(x,y);old=held.clone()
    check('new inputs',m(x+2,y-1),f(x+2,y-1));check('old output',old,held)
    check('kwargs',m(x,y),f(x=x,y=y))
    original=len(counter)
    x2=torch.randn(64,128).cuda()
    check('size guard',m(x2,y),f(x2,y));assert len(counter)>original
    original=len(counter);m.subtract=True
    check('module state guard',m(x2,y),f(x2,y));assert len(counter)>original
    xs=torch.randn(64,256).cuda()[:,::2]
    check('noncontiguous',m(xs,y),f(xs,y))
    xs=torch.randn(64,128,dtype=torch.float16).cuda();yh=y.half()
    check('dtype guard',m(xs,yh),f(xs,yh))
    handle=m.register_forward_hook(lambda mod,inputs,out:out+2)
    check('forward hook',m(x,y),f(x,y));handle.remove()
    check('hook removed',m(x,y),f(x,y))
    m.subtract=False
    check('restore model',m(x,y),f(x,y))
    old_manager=inspect.getclosurevars(f.forward).nonlocals['cached'][0]
    torch._dynamo.reset()
    print('RESET invalidated',old_manager.cache_entry is None,flush=True)
    original=len(counter)
    check('reset',m(x,y),f(x,y));assert len(counter)>original
    with torch.compiler.set_stance('force_eager'):
        check('force eager',m(x,y),f(x,y))
    check('after stance',m(x,y),f(x,y))
print('PASS all',len(counter))
