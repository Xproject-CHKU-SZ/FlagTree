"""Normal B2 compilation on the installed backend; capture the real linked images."""
import base64
import hashlib
import json
import math
import os
from pathlib import Path
import random
import re
import zlib
import subprocess
import statistics
import sys
import time

os.environ['TRITON_CACHE_DIR']='/tmp/b2-row-triton'
os.environ['TORCHINDUCTOR_CACHE_DIR']='/tmp/b2-row-inductor'
os.environ['TRITON_STORE_BINARY_ONLY']='0'
import torch
from torch._inductor.utils import run_and_get_code
from triton.backends import llvm19_toolchain as tc
original_emit=tc.llir_to_asm
captures={}
def observe(ir,*args,**kwargs):
    asm=original_emit(ir,*args,**kwargs)
    if 'softmax' in ir:
        captures['tle' if 'void @_tle_row_softmax(' in ir else 'native']=(ir,asm)
    return asm
tc.llir_to_asm=observe
from triton._C import libtriton
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
raw,proof=red.compile(dict(kind='add_softmax',m=m,n=n,dtype='float32',eps=0.),(x,b))
def tle(a, bias):return raw([a,bias])[0]
tle(x,b)
assert proof['tiles']=={'route':'tle','xb':16,'yb':2048}
record('BUILD',lib_sha=hashlib.sha256(Path(libtriton.__file__).read_bytes()).hexdigest(),
       native_hash=hashlib.sha256(sources[0].encode()).hexdigest(),tle=proof['tiles'])
cache=Path(os.environ['TRITON_CACHE_DIR'])
for route, pat in [('tle','_tle_row_softmax.xpubin'),('native','triton_*softmax*add*.xpubin')]:
    path,=list(cache.rglob(pat))
    code=path.read_bytes();ir=path.with_suffix('.llir').read_text()
    assert route in captures
    ir,asm=captures[route]
    header=re.search(r'^([.\w]+):[^\n]*\n  %\w+ = phi i32',ir,re.M)
    assert header,(route,'no grid loop')
    before=ir[:header.start()]
    dma='call void @llvm.xpu.gm2lm_v3('
    decoder="import sys,json;from pathlib import Path;sys.path.insert(0,'/repair/grouped-qa');from disassemble import decode;lib=next(Path('/opt/hsp/triton/backends').rglob('libLLVM.so.19.1'));print(json.dumps([op for _,_,op in decode(sys.stdin.buffer.read(),lib)]))"
    ops=json.loads(subprocess.check_output([sys.executable,'-S','-c',decoder],input=code))
    counts={op:sum(i.split()[0]==op for i in ops) for op in ('vsrl.p','vmax.f.mz','vadd.f.mz.rn','vextracti.f','exp.f.rn','l_gm2lm','vor.u.mh')}
    meta=dict(route=route,sha=hashlib.sha256(code).hexdigest(),instructions=counts,dma_before_grid=before.count(dma),dma_in_grid=ir[header.start():].count(dma))
    record('BINARY',**meta)
    def pack(data):return base64.b64encode(zlib.compress(data,9)).decode()
    record('ARTIFACT',route=route,ir=pack(ir.encode()),listing=pack(('\n'.join(f'{4*i:06x}  {op}' for i,op in enumerate(ops))+'\n').encode()))
    if '--inspect' not in sys.argv:
        assert (meta['dma_before_grid'],meta['dma_in_grid'])==(1,1),meta
        assert counts['vsrl.p']==8 and counts['vextracti.f']==2 and counts['vor.u.mh']==0,meta
if '--geometry' in sys.argv:
    sys.exit(0)
special=x.clone();special[0,0]=float('nan');special[1,0]=float('inf');special[2]=float('-inf')
special[3,::2]=float('-inf');special[4]=0.;special[4,::2]=-0.
negative=torch.full_like(x,-100000.)
negative[torch.arange(m,device=x.device), (torch.arange(m,device=x.device)*103)%n]=-99975.
for name,a,bias in [('lanes',negative,torch.zeros_like(b)),('aliased_input',x,x[0]),('seed61',x,b),('new',torch.randn_like(x),torch.randn_like(b)),('wide',x*35,b*16),
                    ('shift',x+1000,b),('special',special,torch.zeros_like(b))]:
    want=module(a,bias).cpu()
    finite=want.isfinite()
    for route,fn in [('native',native),('tle',tle)]:
        out=fn(a,bias).cpu()
        torch.testing.assert_close(out,want,rtol=.0003,atol=.0003,equal_nan=True)
        record('CHECK',route=route,case=name,max_abs=(want[finite]-out[finite]).abs().max().item(),
               nan_rows=out.isnan().all(1).sum().item())
u=x+b
fns={'native':lambda:native_plan[0](x,b)[0],'tle':lambda:tle(x,b),'eager':lambda:module(x,b),
     'eager_softmax':lambda:torch.softmax(u,-1),'eager_add':lambda:x+b}
graphs={};samples={}
for k,f in fns.items():
    g,out=_capture(f,(),8)
    want=f()
    torch.testing.assert_close(out.cpu(),want.cpu(),rtol=.0003,atol=.0003,equal_nan=True)
    graphs[k]=g;samples[k]=[]
rng=random.Random(619)
for rep in range(15):
    order=list(graphs);rng.shuffle(order)
    for k in order:
        for _ in range(6):
            torch.cuda.synchronize()
            s,e=torch.cuda.Event(True),torch.cuda.Event(True);t=time.perf_counter_ns()
            s.record();graphs[k].replay();e.record();e.synchronize()
            us=s.elapsed_time(e)*1000/8
            if 0<us<=(time.perf_counter_ns()-t)/8000*1.1+2:break
        else:raise RuntimeError('invalid event timer')
        if rep>=2:samples[k].append(us)
record('RESULT',median={k:statistics.median(v) for k,v in samples.items()},samples=samples)
