"""Normal B2 compilation on the installed backend; capture the real linked images."""
import base64
import hashlib
import json
import math
import os
from pathlib import Path
import random
import statistics
import sys
import time

os.environ['TRITON_CACHE_DIR']='/tmp/b2-product-triton'
os.environ['TORCHINDUCTOR_CACHE_DIR']='/tmp/b2-product-inductor'
os.environ['TRITON_STORE_BINARY_ONLY']='0'
import torch
from torch._inductor.utils import run_and_get_code
from triton._C import libtriton
import zlib
from triton.backends import llvm19_toolchain as tc
old_emit=tc.llir_to_asm
seen={}
def trace_emit(ir,*args,**kwargs):
    asm=old_emit(ir,*args,**kwargs)
    if 'triton_' in ir and 'softmax' in ir:
        seen.update(ir=ir,asm=asm)
    return asm
tc.llir_to_asm=trace_emit
from triton.experimental.graph_fusion import _p800_reduce as red
from triton.experimental.graph_fusion import _resource_autotune as auto
from triton.experimental.graph_fusion._resource_benchmark import _capture
sys.path.insert(0,'/repair')
from cases import Bin

def record(k,**v):
    print(k+' '+json.dumps(v,allow_nan=False),flush=True)

m=n=2048
torch.manual_seed(61);torch.set_grad_enabled(False)
x=torch.randn(m,n).cuda();b=torch.randn(n).cuda()
module=Bin('add_softmax',n).eval()
native_plan=[]
def backend(graph, inputs):
    fn, _ = auto.compile_candidate(graph,inputs,auto.Candidate('inductor'))
    native_plan.append(fn)
    return fn
native=torch.compile(module,backend=backend,fullgraph=True,dynamic=False)
y,sources=run_and_get_code(native,x,b)
assert len(sources)==len(native_plan)==1 and 'libdevice.exp' in sources[0] and '_kl3_softmax_shift' in sources[0]

want=torch.softmax(x+b,-1).cpu()
torch.testing.assert_close(y.cpu(),want,rtol=.0003,atol=1e-8)
path,=list(Path(os.environ['TRITON_CACHE_DIR']).rglob('triton_*softmax*add*.xpubin'))
sha=hashlib.sha256(path.read_bytes()).hexdigest()
print('NATIVE',sha,flush=True)
for name,val in [('native.ll',seen['ir']),('native-annotated.asm',seen['asm']),('native-wrapper.py',sources[0])]:
    print('PACK',name,base64.b64encode(zlib.compress(val.encode())).decode(),flush=True)
