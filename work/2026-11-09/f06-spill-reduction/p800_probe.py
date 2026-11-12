"""Run original and two LM row-buffer schedules on the same B2 launch."""
import copy
import ctypes
import hashlib
import json
import os
from pathlib import Path
import random
import re
import statistics
import subprocess
import sys
import time
from types import SimpleNamespace

os.environ['TRITON_CACHE_DIR']='/tmp/b2-spill-livedata'
os.environ['TRITON_STORE_BINARY_ONLY']='0'
import torch
import triton.language as tl
from triton.backends import llvm19_toolchain as tc
from triton.backends.xpu.compiler import XPUBackend
from triton.runtime import driver
from triton.tools.tensor_descriptor import TensorDescriptor
from triton.experimental.graph_fusion import _p800_reduce as red
from row_buffer import rewrite

baseline='96cf1882500e9cee4933b6ceef5e14732541d5e9ae00e2221a664ecd4108d106'
torch.manual_seed(917)
torch.set_grad_enabled(False)
a=torch.randn(2048,2048,device='cuda')
bias=torch.randn(2048,device='cuda')
guard=torch.full((a.numel()+128,),-0.875,device='cuda')
out=guard[64:-64].view_as(a)
descs=tuple(TensorDescriptor.from_tensor(x,shape) for x,shape in ((a,[16,2048]),(bias,[2048]),(out,[16,2048])))
emitter=tc.llir_to_asm
capture={}
def capture_ir(ir,*args,**kwargs):
    asm=emitter(ir,*args,**kwargs)
    if '@_tle_row_softmax(' in ir:capture.update(ir=ir,args=args,kwargs=kwargs,asm=asm)
    return asm
tc.llir_to_asm=capture_ir
compiled=red._tle_kernel()[(128,)](*descs,2048,XB=16,YB=2048,DT=tl.float32,kl3_softmax_shift=True,num_warps=8,num_stages=1)
tc.llir_to_asm=emitter
modes=(['original','early_max','readd'] if '--recompute' in sys.argv else
       ['original','add','add_exp','sweep8','sweep16','sweep32'])
funcs={}
keep=[]
hashes=set()
for mode in modes:
    variant=copy.copy(compiled)
    if mode=='original':
        code=compiled.asm['xpubin']
        assert hashlib.sha256(code).hexdigest()==baseline
        asm=capture['asm']
    else:
        ir=rewrite(capture['ir'],mode)
        asm=emitter(ir,*capture['args'],**capture['kwargs'])
        elf=tc.llir_to_object(ir,*capture['args'],**capture['kwargs'])
        code=XPUBackend.make_xpubin(elf,{},SimpleNamespace(arch=3))
    checksum=sum(c if c<128 else c-256 for c in code)&0xffffffff
    assert checksum not in hashes
    hashes.add(checksum)
    if mode!='original':
        name='rowbuffer_'+hashlib.sha256(code).hexdigest()[:20];keep.extend([code,name])
        variant.function=driver.active.utils.load_binary(name,code,False,0)[1]
    funcs[mode]=variant[(128,1,1)]
    decoder="import sys,json;from pathlib import Path;sys.path.insert(0,'/repair/grouped-qa');from disassemble import decode;lib=next(Path('/opt/hsp/triton/backends').rglob('libLLVM.so.19.1'));print(json.dumps([op.split()[0] for _,_,op in decode(sys.stdin.buffer.read(),lib)]))"
    ops=json.loads(subprocess.check_output([sys.executable,'-S','-c',decoder],input=code))
    counts={}
    for op in ['exp.f.rn','vload_mask16.mz','vstore_mask16.mz','vmax.f.mz','l_gm2lm','s_lm2gm']:
        counts[op]=len(re.findall(r'^\s*'+re.escape(op)+r' ',asm,re.M))
        assert counts[op]==ops.count(op),(op,mode)
    counts['local_only_fences']=asm.count('mfence { lm }')
    counts['scalar_vector_spills']={str(size):[len(re.findall(rf'\b{size}-byte Folded {tag}\b',asm)) for tag in ('Spill','Reload')] for size in [4,8,64]}
    print('BUILD',mode,hashlib.sha256(code).hexdigest(),json.dumps(counts),flush=True)
params=(*descs,2048,16,2048,tl.float32)
for trial in range(5):
    a.copy_(torch.randn_like(a)*(30 if trial==2 else 1));bias.copy_(torch.randn_like(bias)*2)
    if trial==3:
        a[0]=torch.nan;a[1]=-torch.inf;a[2,3]=torch.inf;a[3,::2]=-torch.inf;a[4]=.0
    before_a=a.cpu().view(torch.int32);before_b=bias.cpu().view(torch.int32)
    expected=torch.softmax(a+bias,-1).cpu()
    for mode in modes:
        out.fill_(-6.)
        funcs[mode](*params);torch.cuda.synchronize()
        y=out.cpu()
        assert bool((guard[:64]==-.875).all()) and bool((guard[-64:]==-.875).all())
        torch.testing.assert_close(y,expected,rtol=.0003,atol=1e-8,equal_nan=True)
        if mode=='original': bits=y.view(torch.int32)
        else: assert torch.equal(y.view(torch.int32),bits),(trial,mode)
    assert torch.equal(a.cpu().view(torch.int32),before_a) and torch.equal(bias.cpu().view(torch.int32),before_b)
print('CHECK 5 inputs; nonzero bias; special values; product bitwise; input and guards intact',flush=True)
path=next(l.split()[-1] for l in Path('/proc/self/maps').read_text().splitlines() if '/libxpurt.so' in l)
rt=ctypes.CDLL(path);rt.xpu_wait.argtypes=[ctypes.c_void_p]
samples={mode:[] for mode in modes};rng=random.Random(917)
for trial in range(27):
    order=modes.copy();rng.shuffle(order)
    for mode in order:
        torch.cuda.synchronize();assert rt.xpu_wait(None)==0
        t=time.perf_counter_ns()
        for repeat in range(48):funcs[mode](*params)
        assert rt.xpu_wait(None)==0;torch.cuda.synchronize()
        us=(time.perf_counter_ns()-t)/48000
        if trial>=2:samples[mode].append(us)
gains={}
for mode in modes[1:]:
    v=sorted(a-b for a,b in zip(samples['original'],samples[mode]))
    gains[mode]=[statistics.median(v),v[6],v[18]]
print('TIME',json.dumps(dict(medians={k:statistics.median(v) for k,v in samples.items()},paired_median_q1_q3=gains,samples=samples)),flush=True)
