"""Inspect the actual native graph and validate nonfinite Softmax, signs, and full rows."""
import os
from collections import Counter
import hashlib
import sys
os.environ['TORCHINDUCTOR_CACHE_DIR']='/tmp/native_semantics_inductor'
os.environ['TRITON_CACHE_DIR']='/tmp/native_semantics_triton'
import torch
from torch._inductor.utils import run_and_get_code
from triton.experimental.graph_fusion import _resource_autotune as auto
from triton.backends import llvm19_toolchain as tc
sys.path[:0]=['/repair','/repair/v4']
from cases import Bin
from timing import record
import re
import torch.nn.functional as F
torch.set_grad_enabled(False)
torch.manual_seed(61)
assembly={}
original=tc.llir_to_asm
def capture(ir,*a,**kwargs):
    asm=original(ir,*a,**kwargs)
    if 'softmax_add' in ir:
        ops=Counter(re.findall(r'^\s*([a-z][\w.]+)\s',asm,re.M))
        assembly[hashlib.sha256(asm.encode()).hexdigest()]={k:ops[k] for k in ['exp.f.rn','max.f','vmax.f.mz','div.f.rn']}
    return asm
tc.llir_to_asm=capture
def backend(g,xs):
    return auto.compile_candidate(g,xs,auto.Candidate('inductor'))[0]
mod=Bin('add_softmax',2048).eval()
fn=torch.compile(mod,backend=backend,fullgraph=True,dynamic=False)
x=torch.randn(2048,2048).cuda()
b=torch.randn(2048).cuda()
y,sources=run_and_get_code(fn,x,b)
assert len(sources)==1
s=sources[0]
record('CODEGEN',helper='_kl3_softmax_shift' in s,fixed="config={'XBLOCK': 8," in s,asm=assembly)
assert '_kl3_softmax_shift' in s and "config={'XBLOCK': 8," in s and 'triton_helpers.max2(' not in s
assert any(a['max.f'] and a['vmax.f.mz'] and a['div.f.rn']==1 for a in assembly.values()),assembly
z=torch.zeros_like(b)
special=x.clone()
special[0,0]=float('nan');special[1,52]=float('inf');special[2]=float('-inf')
special[3,::2]=float('-inf');special[4]=0.;special[5,::2]=-0.
for name,a,bias in [('random',x,b),('wide',x*32,b*16),('shift',x+1000,b),('special',special,z)]:
    want=mod(a,bias).cpu()
    out=fn(a,bias).cpu()
    torch.testing.assert_close(out,want,rtol=.0003,atol=.0003,equal_nan=True)
    finite=torch.isfinite(want)
    record('CHECK',name=name,max_abs=(out[finite]-want[finite]).abs().max().item(),nan_rows=out.isnan().all(-1).sum().item())
