import inspect
import json
import os
import sys
import statistics
from pathlib import Path
import importlib.util

import torch
import triton.experimental
triton.experimental.__path__.insert(0, '/opt/f06/code/python/triton/experimental')
from triton.experimental.graph_fusion import _resource_autotune as auto
from triton.experimental.graph_fusion import _p800_reduce as reduce

def emit(**fields):
    print('AUDIT', json.dumps(fields), flush=True)

class MulSum(torch.nn.Module):
    def __init__(self,keep):
        super().__init__()
        self.keep = keep
    def forward(self,a,b):
        return (a*b).sum(-1, keepdim=self.keep)

class AddSoftmax(torch.nn.Module):
    def forward(self,a,b):
        return torch.softmax(a+b,dim=-1)

def events(fn,a,b):
    start,end=torch.cuda.Event(True),torch.cuda.Event(True)
    start.record()
    for _ in range(60):
        v=fn(a,b)
    end.record()
    torch.cuda.synchronize()
    return start.elapsed_time(end)*1000/60

import hashlib
import triton._C.libtriton as lib
emit(kind='compiler',file=lib.__file__,md5=hashlib.md5(Path(lib.__file__).read_bytes()).hexdigest(),
     has_reconcile=hasattr(lib.xpu.passes.ttxpuir,'add_tritonxpu_reconcile_layouts_pass'))
torch.manual_seed(61)
with torch.no_grad():
    for keep in (False,True):
        g=torch.fx.symbolic_trace(MulSum(keep))
        a,b=[torch.randn(s,generator=torch.Generator().manual_seed(61)).half().cuda() for s in ((64,1024),(1024,))]
        eager=g(a,b)
        plan=next(p for p in auto.candidate_plans(g,(a,b),single_kernel=True) if p.name=='cluster')
        fn,proof=auto.compile_candidate(g,(a,b),plan)
        out=fn(a,b)
        if isinstance(out,(tuple,list)): out=out[0]
        emit(kind='mul_sum', keepdim=keep,eager_fx=g.code,eager_dtype=str(eager.dtype),result_dtype=str(out.dtype),shape=list(out.shape),inner_route=proof['regions'][0].get('route'),value_valid=torch.allclose(out.float(),eager.float(),rtol=.003,atol=.003))

    source=Path(reduce.__file__).read_text()
    old='''        z = tl.sum(tl.exp(v - m[:, None]), 1)
        tle.gpu.copy(a_desc, buf, [XB, YB], [row_off, 0])
        v = tl.load(p).to(tl.float32) + bv[None, :]
        tl.store(p, (tl.exp(v - m[:, None]) / z[:, None]).to(DT))'''
    new='''        e = tl.exp(v - m[:, None])
        z = tl.sum(e, 1)
        tl.store(p, (e / z[:, None]).to(DT))'''
    assert source.count(old)==1
    path=Path('/tmp/f06_reduce_one_copy.py')
    path.write_text(source.replace(old,new))
    specmod=importlib.util.spec_from_file_location('f06_reduce_one_copy',path)
    alt=importlib.util.module_from_spec(specmod); sys.modules[specmod.name]=alt
    specmod.loader.exec_module(alt)
    os.environ['FLAGTREE_SOFTMAX_TLE']='1'
    os.environ['FLAGTREE_REDUCE_DEBUG']='1'
    g=torch.fx.symbolic_trace(AddSoftmax())
    emit(kind='add_softmax',eager_fx=g.code)
    for m in (64,512,2048):
        n=1024
        a,b=[torch.randn(s,device='cuda',dtype=torch.float32) for s in ((m,n),(n,))]
        desc=dict(kind='add_softmax',m=m,n=n,dtype='float32',eps=0.)
        funcs={'eager':g}
        proofs={}
        for tag,mod in [('original',reduce),('one_copy',alt)]:
            run,proof=mod.compile(desc,(a,b))
            funcs[tag]=lambda a,b,run=run:run([a,b])[0]
            proofs[tag]=proof
        ref=g(a,b)
        for tag,fn in funcs.items():
            for _ in range(10): out=fn(a,b)
            torch.cuda.synchronize()
            if tag!='eager':
                emit(kind='softmax_check',m=m,tag=tag,tiles=proofs[tag]['tiles'],max_abs=(out-ref).abs().max().item(),valid=torch.allclose(out,ref,atol=3e-4,rtol=3e-4))
                assert proofs[tag]['tiles'].get('route')=='tle' and torch.allclose(out,ref,atol=3e-4,rtol=3e-4)
        samples={tag:[] for tag in funcs}
        for i in range(7):
            order=list(funcs)
            order=order[i%3:]+order[:i%3]
            for tag in order: samples[tag].append(events(funcs[tag],a,b))
        emit(kind='softmax_time',m=m,n=n,samples_us=samples,median_us={k:statistics.median(v) for k,v in samples.items()})
