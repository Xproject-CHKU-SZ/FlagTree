"""Compare per-core LM and cluster-shared bias; compile before checking stack size."""
import ctypes
import importlib.util
import inspect
import json
import os
import random
import re
import statistics
import sys
import time
from pathlib import Path
os.environ['TRITON_CACHE_DIR']='/tmp/b2-bias-space'
import torch
import triton.language as tl
from triton.backends import llvm19_toolchain as tc
from triton.tools.tensor_descriptor import TensorDescriptor
from triton.experimental.graph_fusion import _p800_reduce as red

src=inspect.getsource(red._tle_kernel)
old='bb = tle.gpu.alloc([YB], dtype=DT, scope=tle.gpu.lmem)'
assert src.count(old)==1
path=Path('/tmp/shared_row_bias.py')
path.write_text(src.replace(old,old.replace('.lmem','.smem')).replace('_tle_row_softmax','_tle_row_softmax_shared'))
spec=importlib.util.spec_from_file_location('shared_row_bias',path);mod=importlib.util.module_from_spec(spec)
sys.modules[spec.name]=mod;spec.loader.exec_module(mod)
seen={}
orig=tc.llir_to_asm
def observe(ir,*args,**kwargs):
    asm=orig(ir,*args,**kwargs);seen.update(asm=asm,ir=ir);return asm
tc.llir_to_asm=observe
torch.manual_seed(947);torch.set_grad_enabled(False);x=torch.randn(2048,2048,device='cuda');b=torch.randn(2048,device='cuda')
buf=torch.full((x.numel()+128,),-999.,device='cuda');out=buf[64:-64].view_as(x)
funcs={}
for mode,xb in [('lm',16),('sm',8),('sm',16),('sm',32)]:
    kernel=(red if mode=='lm' else mod)._tle_kernel();label=mode+str(xb)
    ds=tuple(TensorDescriptor.from_tensor(t,sh) for t,sh in ((x,[xb,2048]),(b,[2048]),(out,[xb,2048])))
    try:
        cb=kernel.warmup(*ds,2048,grid=(2048//xb,),XB=xb,YB=2048,DT=tl.float32,kl3_softmax_shift=True,kl3_row_softmax=True,num_warps=8,num_stages=1)
    except Exception as err:
        print('SKIP',label,str(err)[-900:],flush=True);continue
    sizes=[int(n) for n in re.findall(r'^\s*addli sp, sp, -(\d+)',seen['asm'],re.M)]
    assert len(sizes)==1,sizes
    ir=seen['ir']
    header=re.search(r'^([.\w]+):[^\n]*\n  %\w+ = phi i32',ir,re.M)
    assert header
    transfers={}
    for mem in ('gm2sm','gm2lm'):
        needle='call void @llvm.xpu.'+mem
        transfers[mem]=[ir[:header.start()].count(needle),ir[header.start():].count(needle)]
    print('DMA_BEFORE_AND_IN_GRID',label,json.dumps(transfers),flush=True)
    print('BUILD',label,sizes, {k:seen['asm'].count(k+' ') for k in ('l_gm2sm','l_gm2lm','vloads_mask16.mz','vsrl.p')},flush=True)
    if sizes[0]>8000:
        print('SKIP',label,'compiler frame exceeds KL3 budget',flush=True);continue
    if mode=='sm' and 'l_gm2sm ' not in seen['asm']:
        print('SKIP',label,'missing shared DMA',flush=True);continue
    fn=cb[(2048//xb,1,1)];args=(*ds,2048,xb,2048,tl.float32)
    funcs[label]=lambda fn=fn,args=args:fn(*args)
for trial in range(11):
    x.copy_(torch.randn_like(x)*(1 if trial%2 else 30));b.copy_(torch.randn_like(b))
    if trial==2:x[0]=torch.nan;x[1]=-torch.inf;x[2,1]=torch.inf
    reference=torch.softmax(x+b,-1).cpu()
    for k in list(funcs):
        out.fill_(float('nan'));funcs[k]();torch.cuda.synchronize()
        try:torch.testing.assert_close(out.cpu(),reference,rtol=.0003,atol=1e-8,equal_nan=True)
        except AssertionError as err:
            print('EXCLUDE',k,str(err)[:520],flush=True);del funcs[k]
        assert bool((buf[:64]==-999.).all()) and bool((buf[-64:]==-999.).all())
assert 'lm16' in funcs
print('CHECK',list(funcs),flush=True)
rts=next(l.split()[-1] for l in Path('/proc/self/maps').read_text().splitlines() if '/libxpurt.so' in l)
rt=ctypes.CDLL(rts);rt.xpu_wait.argtypes=[ctypes.c_void_p]
rng=random.Random(791);samples={k:[] for k in funcs}
for it in range(33):
    keys=list(funcs);rng.shuffle(keys)
    for k in keys:
        torch.cuda.synchronize();assert rt.xpu_wait(None)==0;t=time.perf_counter_ns()
        for j in range(48):funcs[k]()
        assert rt.xpu_wait(None)==0;torch.cuda.synchronize()
        if it>=2:samples[k].append((time.perf_counter_ns()-t)/48000)
print('TIME',json.dumps(dict(medians={k:statistics.median(s) for k,s in samples.items()},
   gains={k:statistics.median(a-b for a,b in zip(samples['lm16'],v)) for k,v in samples.items()})))
