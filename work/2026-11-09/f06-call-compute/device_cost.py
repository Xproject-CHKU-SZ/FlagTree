"""Compile each candidate to real KL3 bytes and launch through the original v8 ABI."""
import copy
import ctypes
import hashlib
import json
import os
import random
import re
import statistics
import subprocess
import sys
import time
from pathlib import Path
from types import SimpleNamespace

os.environ['TRITON_CACHE_DIR']='/tmp/b2-device-cost'
os.environ['TORCHINDUCTOR_CACHE_DIR']='/tmp/b2-device-ind'
os.environ['TRITON_STORE_BINARY_ONLY']='0'
import torch
import triton.language as tl
from triton.backends import llvm19_toolchain as tc
from triton.backends.xpu.compiler import XPUBackend
from triton.compiler.compiler import CompiledKernel
from triton.experimental.graph_fusion import _p800_reduce as red, _resource_autotune as auto
from triton.runtime import driver
from triton.tools.tensor_descriptor import TensorDescriptor
from compute_variants import rewrite
sys.path.insert(0,'/repair')
from cases import Bin

def record(k,r):print(k,json.dumps(r),flush=True)
def quartiles(a):
    a=sorted(a);return [statistics.median(a),a[len(a)//4],a[3*len(a)//4]]
route=sys.argv[1]
sha={'tle':'347ee89b6861665a5d75f315a17328865f50a522a7f7f7136884db8b2e44d5f1',
     'native':'0376165026a8b3277f783733342e80223c824f7295a0ac91d7f24faad2c87b59'}[route]
torch.set_grad_enabled(False);torch.manual_seed(915)
a=torch.randn(2048,2048,device='cuda');b=torch.randn(2048,device='cuda')
guard=torch.full((a.numel()+128,),-0.875,device='cuda');out=guard[64:-64].view_as(a)
captures={};objects=[]
emit=tc.llir_to_asm;old=CompiledKernel.__init__
def observe(ir,*args,**kwargs):
    asm=emit(ir,*args,**kwargs)
    if 'softmax' in ir:captures.update(ir=ir,args=args,kwargs=kwargs,asm=asm)
    return asm
def observe_object(self,*args,**kw):
    old(self,*args,**kw)
    if 'softmax' in self.name:objects.append(self)
tc.llir_to_asm=observe;CompiledKernel.__init__=observe_object
try:
    if route=='tle':
        ds=tuple(TensorDescriptor.from_tensor(x,shape) for x,shape in ((a,[16,2048]),(b,[2048]),(out,[16,2048])))
        cb=red._tle_kernel()[(128,)](*ds,2048,XB=16,YB=2048,DT=tl.float32,kl3_softmax_shift=True,kl3_row_softmax=True,num_warps=8,num_stages=1)
        params=(*ds,2048,16,2048,tl.float32);grid=128
    else:
        def backend(gm,inp):return auto.compile_candidate(gm,inp,auto.Candidate('inductor'))[0]
        native=torch.compile(Bin('add_softmax',2048).eval(),backend=backend,fullgraph=True,dynamic=False)
        y=native(a,b);torch.cuda.synchronize()
        cb=next(x for x in objects if hashlib.sha256(x.asm['xpubin']).hexdigest()==sha)
        params=(a,b,out,2048,2048,8);grid=256
finally:tc.llir_to_asm=emit;CompiledKernel.__init__=old
assert hashlib.sha256(cb.asm['xpubin']).hexdigest()==sha
decoder="import sys,json;from pathlib import Path;sys.path.insert(0,'/repair/grouped-qa');from disassemble import decode;lib=next(Path('/opt/hsp/triton/backends').rglob('libLLVM.so.19.1'));print(json.dumps([s.split()[0] for _,_,s in decode(sys.stdin.buffer.read(),lib)]))"
modes=sys.argv[2:];assert modes[0]=='original'
funcs={};keep=[];checksums=set()
for mode in modes:
    if mode=='original':code=cb.asm['xpubin'];asm=captures['asm'];variant=cb
    else:
        ir=rewrite(captures['ir'],mode)
        asm=emit(ir,*captures['args'],**captures['kwargs'])
        obj=tc.llir_to_object(ir,*captures['args'],**captures['kwargs'])
        code=bytes(XPUBackend.make_xpubin(obj,{},SimpleNamespace(arch=3)));variant=copy.copy(cb)
        name='rowcost_'+hashlib.sha256(code).hexdigest()[:20]
        keep.extend((name,code,variant));variant.function=driver.active.utils.load_binary(name,code,False,0)[1]
    checksum=sum(c if c<128 else c-256 for c in code)&0xffffffff
    assert checksum not in checksums;checksums.add(checksum)
    ops=json.loads(subprocess.check_output([sys.executable,'-S','-c',decoder],input=code))
    count={k:ops.count(k) for k in ('sync_group','mfence','l_gm2lm','s_lm2gm','exp.f.rn','vsrl.p','loads.w','stores.w','vloads_mask16.mz','load.d','store.d','loadli.w','storeli.w')}
    count['spill64']=len(re.findall(r'\b64-byte Folded Spill\b',asm))
    funcs[mode]=variant[(grid,1,1)]
    record('BUILD',dict(mode=mode,sha=hashlib.sha256(code).hexdigest(),count=count))
worst={k:0. for k in modes};exact={k:True for k in modes}
for trial in range(13):
    a.copy_(torch.randn_like(a)*(30 if trial%3==2 else 1));b.copy_(torch.randn_like(b))
    if trial==1:
        a.fill_(-100000.); idx=torch.arange(2048,device='cuda'); a[idx,(idx*79)%2048]=-99975.
    if trial==3:
        a[0]=torch.nan;a[1]=-torch.inf;a[2,3]=torch.inf;a[3,::2]=-torch.inf
    expected=torch.softmax(a+b,-1).cpu();finite=expected.isfinite()
    abits=a.cpu().view(torch.int32);bbits=b.cpu().view(torch.int32)
    for mode in modes:
        out.fill_(float('nan'));funcs[mode](*params);torch.cuda.synchronize();got=out.cpu()
        assert bool((guard[:64]==-.875).all()) and bool((guard[-64:]==-.875).all())
        torch.testing.assert_close(got,expected,rtol=.0003,atol=1e-8,equal_nan=True)
        if mode=='original':bits=got.view(torch.int32)
        exact[mode]=exact[mode] and torch.equal(bits,got.view(torch.int32))
        worst[mode]=max(worst[mode],(got[finite]-expected[finite]).abs().max().item())
    assert torch.equal(a.cpu().view(torch.int32),abits) and torch.equal(b.cpu().view(torch.int32),bbits)
record('CHECK',dict(inputs=13,max_abs=worst,bitwise_equal_to_v8=exact))
rtpath=next(l.split()[-1] for l in Path('/proc/self/maps').read_text().splitlines() if '/libxpurt.so' in l)
rt=ctypes.CDLL(rtpath);rt.xpu_wait.argtypes=[ctypes.c_void_p]
samples={m:[] for m in modes};rng=random.Random(679)
for trial in range(35):
    order=modes.copy();rng.shuffle(order)
    for mode in order:
        torch.cuda.synchronize();assert rt.xpu_wait(None)==0
        t=time.perf_counter_ns()
        for repeat in range(48):funcs[mode](*params)
        assert rt.xpu_wait(None)==0;torch.cuda.synchronize()
        if trial>=4:samples[mode].append((time.perf_counter_ns()-t)/48000)
record('TIME',dict(medians={m:statistics.median(v) for m,v in samples.items()},
              gains={m:quartiles([a-b for a,b in zip(samples['original'],samples[m])]) for m in modes[1:]},samples=samples))
