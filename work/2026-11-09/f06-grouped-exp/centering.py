"""Hold the tile, output and true max constant while testing value reuse across the reduction."""
import importlib.util
import json
import os
from pathlib import Path
import random
import statistics
import sys
import time
os.environ['TRITON_CACHE_DIR']='/tmp/kl3-centering'
os.environ['TRITON_STORE_BINARY_ONLY']='0'
import torch
import triton.language as tl
from triton.tools.tensor_descriptor import TensorDescriptor
from triton.backends import llvm19_toolchain as tc
emit=tc.llir_to_asm
assembly={}
def observe_asm(ir,*args,**kwargs):
    result=emit(ir,*args,**kwargs)
    assembly['last']=result
    return result
tc.llir_to_asm=observe_asm
from triton.experimental.graph_fusion import _p800_reduce as red
from triton.experimental.graph_fusion._resource_benchmark import _capture

torch.set_grad_enabled(False);torch.manual_seed(61)
x=torch.randn(2048,2048).cuda()
u=(x-torch.amax(x,dim=1,keepdim=True))+1.
assert bool((u.amax(1)==1).all())
bias=torch.zeros(2048).cuda()
want_center=(u-1).cpu();want_prob=torch.softmax(u,-1).cpu()
base=Path(red.__file__).read_text()
start=base.index('def _tle_row_softmax')
end=base.index('return _tle_row_softmax',start)
graphs={};counts={}
for suffix in ('center','full'):
    for variant in ('original','known_max','reload'):
        key=variant+'_'+suffix
        body=base[start:end]
        body=body.replace('tle.gpu.copy(b_desc, bb, [YB], [0])','').replace('bv = tl.load(bp).to(tl.float32)','')
        body=body.replace('v = (tl.load(p) + bv[None, :].to(DT)).to(tl.float32)','v = tl.load(p).to(tl.float32)')
        if variant=='known_max':
            body=body.replace('m = tl.reduce(v, 1, row_maximum)','m = tl.full((XB,), 1., tl.float32)')
        second='tl.load(p, volatile=True).to(tl.float32)' if variant=='reload' else 'v'
        if suffix=='center':
            body=body.replace('tl.store(p, (e * inv[:, None]).to(DT))','tl.store(p, ('+second+' - m[:, None]).to(DT))')
        else:
            body=body.replace('e = tl.exp(v - m[:, None])','e = tl.exp('+second+' - m[:, None])')
        src=(base[:start]+body+base[end:]).replace('_tle_row_softmax','_tle_row_softmax_'+key)
        path=Path('/tmp')/(key+'.py');path.write_text(src)
        name=red.__package__+'.diag_'+key;spec=importlib.util.spec_from_file_location(name,path)
        mod=importlib.util.module_from_spec(spec);sys.modules[name]=mod;spec.loader.exec_module(mod)
        out=torch.empty_like(u)
        ds=[TensorDescriptor.from_tensor(t,block) for t,block in ((u,[16,2048]),(bias,[2048]),(out,[16,2048]))]
        cb=mod._tle_kernel()[(128,)](*ds,2048,XB=16,YB=2048,DT=tl.float32,kl3_softmax_shift=True,num_warps=8,num_stages=1)
        ref=want_center if suffix=='center' else want_prob
        torch.testing.assert_close(out.cpu(),ref,rtol=.0003,atol=1e-8)
        def fn(r=cb[(128,1,1)],args=(*ds,2048,16,2048,tl.float32),out=out):
            r(*args);return out
        graphs[key],out=_capture(fn,(),8)
        torch.testing.assert_close(out.cpu(),ref,rtol=.0003,atol=1e-8)
        asm=assembly.pop('last')
        counts[key]={k:asm.count(k) for k in ['Folded Spill','Folded Reload','vextracti.f','mfence','vload_mask16.mz','vstore_mask16.mz']}
        print('CHECK',key,counts[key],flush=True)
samples={k:[] for k in graphs}
rng=random.Random(61)
for rep in range(15):
    order=list(graphs);rng.shuffle(order)
    for k in order:
        for _ in range(6):
            torch.cuda.synchronize();a,b=torch.cuda.Event(True),torch.cuda.Event(True);w=time.perf_counter_ns()
            a.record();graphs[k].replay();b.record();b.synchronize()
            us=a.elapsed_time(b)*1000/8
            if 0<us<=(time.perf_counter_ns()-w)/8000*1.1+2:break
        else:raise RuntimeError('invalid event')
        if rep>=2:samples[k].append(us)
print('RESULT',json.dumps(dict(median={k:statistics.median(v) for k,v in samples.items()},samples=samples,ops=counts)))
