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
import re
mode=sys.argv[1]
assert mode in ("scalar","vector")

os.environ['TRITON_CACHE_DIR']='/tmp/native-ab-triton-'+mode
os.environ['TORCHINDUCTOR_CACHE_DIR']='/tmp/native-ab-inductor-'+mode
os.environ['TRITON_STORE_BINARY_ONLY']='0'
import torch
import copy
import ctypes
from triton.compiler.compiler import CompiledKernel
from triton.runtime import driver
compiled_objects=[]
original_init=CompiledKernel.__init__
def capture(self,*args,**kwargs):
    original_init(self,*args,**kwargs)
    if 'softmax' in self.name:compiled_objects.append(self)
CompiledKernel.__init__=capture
from torch._inductor.utils import run_and_get_code
from triton._C import libtriton
import zlib
from triton.backends import llvm19_toolchain as tc
old_emit=tc.llir_to_asm
seen={}

def grouped_loads(ir):
    scalars=dict(re.findall(r"  (%\d+) = load float, ptr (%\d+), align 4, !dbg !9",ir))
    assert len(scalars)==128
    chunks=[]
    def replace(m):
        dest,chain,scalar,meta=m.groups()
        first=int(scalar[1:])-15
        ptr=scalars["%"+str(first)]
        # The actual producer chain packs adjacent f32 from one contiguous bias tile.
        for lane in range(16):
            assert re.search(r"float %"+str(first+lane)+r", i64 "+str(lane)+r", !dbg !"+meta+r"\b", ir)
            expect=(first-219+lane)*4
            operand=scalars["%"+str(first+lane)]
            assert (expect==0 and operand=="%67") or re.search(re.escape(operand)+r" = getelementptr inbounds i8, ptr %67, i32 "+str(expect)+r"\b",ir)
        chunks.append(first)
        return f"  {dest} = load <16 x float>, ptr {ptr}, align 4, !dbg !{meta}"
    ir=re.sub(r"  (%\d+) = insertelement <16 x float> (%\d+), float (%\d+), i64 15, !dbg !(13)\b",replace,ir)
    assert chunks==list(range(219,347,16))
    return ir
def trace_emit(ir,*args,**kwargs):
    if mode=='vector' and 'triton_' in ir and 'softmax' in ir:ir=grouped_loads(ir)
    asm=old_emit(ir,*args,**kwargs)
    if 'triton_' in ir and 'softmax' in ir:
        seen.update(ir=ir,asm=asm)
    return asm
tc.llir_to_asm=trace_emit
old_object=tc.llir_to_object
def trace_object(ir,*args,**kwargs):
    if mode=='vector' and 'triton_' in ir and 'softmax' in ir:ir=grouped_loads(ir)
    return old_object(ir,*args,**kwargs)
tc.llir_to_object=trace_object
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
shape=(2048,2048)
for trial in range(3):
    a=torch.randn(shape,device='cuda')*(1 if trial==0 else 23)
    bias=torch.randn(2048,device='cuda')*2
    if trial==2:a[1,1]=float('nan');a[2].fill_(-float('inf'))
    torch.testing.assert_close(native(a,bias).cpu(),torch.softmax(a+bias,-1).cpu(),rtol=.0003,atol=1e-8,equal_nan=True)
sha=hashlib.sha256(path.read_bytes()).hexdigest()
assert (mode=='scalar')==(sha=='07e229b2965e8418dd3e78bb1fce387f9988742ca77c4db2b3b97d9f67368672')
asm=seen['asm']
import subprocess
decoder="import sys,json;from pathlib import Path;sys.path.insert(0,'/repair/grouped-qa');from disassemble import decode;llvm=next(Path('/opt/hsp/triton/backends').rglob('libLLVM.so.19.1'));print(json.dumps([op for _,_,op in decode(sys.stdin.buffer.read(),llvm)]))"
ops=json.loads(subprocess.check_output([sys.executable,'-S','-c',decoder],input=path.read_bytes()))
assert sum(s.startswith('vor.u.mh ') for s in ops)==(128 if mode=='scalar' else 0)
print('BUILD',mode,sha,{k:asm.count(k) for k in ('vor.u.mh','4-byte Folded Spill','vload_mask16.mz','exp.f.rn')},flush=True)

if '--paired' in sys.argv:
    cb=next(k for k in compiled_objects if hashlib.sha256(k.asm["xpubin"]).hexdigest()==sha)
    assert hashlib.sha256(cb.asm['xpubin']).hexdigest()==sha
    baseline=(Path(__file__).with_name('native_baseline.kl3')).read_bytes()
    assert hashlib.sha256(baseline).hexdigest()=='07e229b2965e8418dd3e78bb1fce387f9988742ca77c4db2b3b97d9f67368672'
    raw=copy.copy(cb)
    name='f06_native_scalar_control'
    raw.function=driver.active.utils.load_binary(name,baseline,False,0)[1]
    runners={'vector':cb[(256,1,1)],'scalar':raw[(256,1,1)]}
    buf=torch.empty_like(x)
    for rep in range(2):
        a=torch.randn_like(x);bias=torch.randn_like(b)
        ref=torch.softmax(a+bias,-1).cpu()
        outputs={}
        for label,fn in runners.items():
            buf.fill_(float('nan'));fn(a,bias,buf,2048,2048,8);torch.cuda.synchronize()
            outputs[label]=buf.cpu()
            torch.testing.assert_close(outputs[label],ref,rtol=.0003,atol=1e-8)
        assert torch.equal(outputs['vector'].view(torch.int32),outputs['scalar'].view(torch.int32))
    rtpath=next(l.split()[-1] for l in Path('/proc/self/maps').read_text().splitlines() if '/libxpurt.so' in l)
    rt=ctypes.CDLL(rtpath);rt.xpu_wait.argtypes=[ctypes.c_void_p]
    samples={k:[] for k in runners};rng=random.Random(664)
    for t in range(27):
        order=list(runners);rng.shuffle(order)
        for k in order:
            torch.cuda.synchronize();assert rt.xpu_wait(None)==0
            start=time.perf_counter_ns()
            for _ in range(48):runners[k](x,b,buf,2048,2048,8)
            assert rt.xpu_wait(None)==0;torch.cuda.synchronize()
            if t>=2:samples[k].append((time.perf_counter_ns()-start)/48000)
    diff=sorted(a-b for a,b in zip(samples['scalar'],samples['vector']))
    print('PAIRED',json.dumps(dict(medians={k:statistics.median(v) for k,v in samples.items()},
        diff_median_q1_q3=[statistics.median(diff),diff[6],diff[18]],samples=samples)),flush=True)
else:
    graphs={}
    for label,fn in [('native',lambda:native_plan[0](x,b)[0]),('eager',lambda:module(x,b))]:
        graphs[label],y=_capture(fn,(),8)
        torch.testing.assert_close(y.cpu(),want,rtol=.0003,atol=1e-8)
    samples={key:[] for key in graphs};rng=random.Random(677)
    for t in range(17):
        order=list(graphs);rng.shuffle(order)
        for k in order:
            for trial in range(5):
                torch.cuda.synchronize();s,e=torch.cuda.Event(True),torch.cuda.Event(True)
                wall=time.perf_counter_ns();s.record();graphs[k].replay();e.record();e.synchronize()
                us=s.elapsed_time(e)*125
                if 0<us<=(time.perf_counter_ns()-wall)/8000*1.1+2:break
            else:raise RuntimeError('invalid device timing')
            if t>=2:samples[k].append(us)
    print('TIME',mode,json.dumps({k:statistics.median(v) for k,v in samples.items()}),flush=True)
