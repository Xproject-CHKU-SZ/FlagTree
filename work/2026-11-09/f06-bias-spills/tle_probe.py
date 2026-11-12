"""KL3 B2 spill audit: unmodified product and controlled prefix variants."""
import base64
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import random
import statistics
import sys
import time
import zlib
os.environ['TRITON_CACHE_DIR']='/tmp/f06-bias-spills-cache'
os.environ['TRITON_STORE_BINARY_ONLY']='0'
import torch
import triton.language as tl
from triton.backends import llvm19_toolchain as tc
from triton.tools.tensor_descriptor import TensorDescriptor
from triton.experimental.graph_fusion import _p800_reduce as red
from triton.experimental.graph_fusion._resource_benchmark import _capture

def record(k,**v):print(k+' '+json.dumps(v,allow_nan=False),flush=True)
def packed(s):return base64.b64encode(zlib.compress(s,9)).decode()
emit=tc.llir_to_asm
output={}
def observe(ir,*args,**kw):
    asm=emit(ir,*args,**kw)
    if '_tle_row_softmax' in ir:output.update(ir=ir,asm=asm,args=str(args),options=str(kw))
    return asm
tc.llir_to_asm=observe
torch.manual_seed(61);torch.set_grad_enabled(False)
m=n=2048
x=torch.randn(m,n).cuda();b=torch.randn(n).cuda();u=x+b
want={'copy':u.cpu(),'center':(u-u.amax(-1,keepdim=True)).cpu(),'full':torch.softmax(u,-1).cpu()}
source=Path(red.__file__).read_text()
first=source.index('def _tle_row_softmax');last=source.index('return _tle_row_softmax',first)
graphs={};counts={}
for suffix in ('full','center','copy'):
 for variant in ('fused','preadded'):
    tag=variant+'_'+suffix
    body=source[first:last]
    if variant!='fused':
        body=body.replace('tle.gpu.copy(b_desc, bb, [YB], [0])','')
        body=body.replace('bv = tl.load(bp).to(tl.float32)','')
        body=body.replace('v = (tl.load(p) + bv[None, :].to(DT)).to(tl.float32)','v = tl.load(p).to(tl.float32)')
    if suffix!='full':
        expr='v' if suffix=='copy' else 'v - m[:, None]'
        body=body.replace('tl.store(p, (e * inv[:, None]).to(DT))','tl.store(p, ('+expr+').to(DT))')
    if tag=='fused_full':mod=red
    else:
        src=(source[:first]+body+source[last:]).replace('_tle_row_softmax','_tle_row_softmax_'+tag)
        path=Path('/tmp')/(tag+'.py');path.write_text(src)
        name=red.__package__+'.diag_'+tag;spec=importlib.util.spec_from_file_location(name,path)
        mod=importlib.util.module_from_spec(spec);sys.modules[name]=mod;spec.loader.exec_module(mod)
    a=x if variant=='fused' else u
    out=torch.empty_like(a)
    ds=[TensorDescriptor.from_tensor(t,block) for t,block in ((a,[16,2048]),(b,[2048]),(out,[16,2048]))]
    cb=mod._tle_kernel()[(128,)](*ds,2048,XB=16,YB=2048,DT=tl.float32,kl3_softmax_shift=True,num_warps=8,num_stages=1)
    torch.testing.assert_close(out.cpu(),want[suffix],rtol=.0003,atol=1e-8)
    def fn(r=cb[(128,1,1)],args=(*ds,2048,16,2048,tl.float32),out=out):
        r(*args);return out
    graphs[tag],out=_capture(fn,(),8)
    torch.testing.assert_close(out.cpu(),want[suffix],rtol=.0003,atol=1e-8)
    blob=cb.asm['xpubin']
    record('CODE',case=tag,sha=hashlib.sha256(blob).hexdigest(),linked=packed(blob),
           ir=packed(output['ir'].encode()),asm=packed(output['asm'].encode()),
           options=output['options'],args=output['args'])
graphs['eager_add'],out=_capture(lambda:x+b,(),8)
torch.testing.assert_close(out.cpu(),u.cpu())
graphs['eager_pair'],out=_capture(lambda:torch.softmax(x+b,-1),(),8)
torch.testing.assert_close(out.cpu(),want['full'])
samples={k:[] for k in graphs};rng=random.Random(618)
for rep in range(15):
    order=list(graphs);rng.shuffle(order)
    for k in order:
        for _ in range(5):
            torch.cuda.synchronize();s,e=torch.cuda.Event(True),torch.cuda.Event(True);t=time.perf_counter_ns()
            s.record();graphs[k].replay();e.record();e.synchronize()
            us=s.elapsed_time(e)*1000/8
            if 0<us<=(time.perf_counter_ns()-t)/8000*1.1+2:break
        else:raise RuntimeError('invalid device clock')
        if rep>=2:samples[k].append(us)
record('TIME',median={k:statistics.median(v) for k,v in samples.items()},samples=samples)
