"""Run a paired 2048² FP32 Add+Softmax A/B in the pinned personal P800 image."""
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

route = sys.argv[1]
variants = sys.argv[2:]
assert variants and len(set(variants)) == len(variants)
variant = '-'.join(variants)
os.environ['TRITON_CACHE_DIR'] = f'/tmp/exp-issue-{route}-{variant}'
os.environ['TORCHINDUCTOR_CACHE_DIR'] = f'/tmp/exp-inductor-{route}-{variant}'
os.environ['TRITON_STORE_BINARY_ONLY'] = '0'
import torch
from torch._inductor import config
from torch._inductor.codecache import PyCodeCache
from triton.backends import llvm19_toolchain
from triton.experimental.graph_fusion import _p800_reduce as shipped
from triton.experimental.graph_fusion._p800_compiler import target_scope
from triton.experimental.graph_fusion._p800_inductor_softmax import _ROW_SHIFT
from triton.experimental.graph_fusion._resource_benchmark import _capture
from exp_schedule import lower

def record(key, **kw):
    print(key+' '+json.dumps(kw, allow_nan=False), flush=True)

torch.manual_seed(61)
torch.set_grad_enabled(False)
x=torch.randn(2048,2048).cuda()
b=torch.randn(2048).cuda()
active='baseline'
emitted={}
sources={}
for tool in ('llir_to_object','llir_to_asm'):
    original=getattr(llvm19_toolchain, tool)
    def wrapper(ir,*args,tool=tool,original=original,**kwargs):
        tag='_expissue_'+active
        if tag not in ir:
            return original(ir,*args,**kwargs)
        changed,n=lower(ir,active)
        result=original(changed,*args,**kwargs)
        sources[active,tool]=hashlib.sha256(changed.encode()).hexdigest()
        if tool=='llir_to_object':
            assert isinstance(result,bytes) and result.startswith(b'\x7fELF')
            emitted[active]=result
            record('EMITTED',mode=active,vector_sites=n,sha256=hashlib.sha256(result).hexdigest(),
                   data=base64.b64encode(result).decode())
        return result
    setattr(llvm19_toolchain,tool,wrapper)

def build(mode):
    global active
    active=mode
    if route=='tle':
        src=Path(shipped.__file__).read_text().replace('_tle_row_softmax','_tle_row_softmax_expissue_'+mode)
        path=Path('/tmp')/('tle_expissue_'+mode+'.py')
        path.write_text(src)
        name=shipped.__package__+'.expissue_'+mode
        spec=importlib.util.spec_from_file_location(name,path)
        mod=importlib.util.module_from_spec(spec)
        sys.modules[name]=mod
        spec.loader.exec_module(mod)
        raw,proof=mod.compile(dict(kind='add_softmax',m=2048,n=2048,dtype='float32',eps=0.),(x,b))
        def fn(a,bias):
            return raw([a,bias])[0]
        fn(x,b)
        assert proof['tiles']==dict(xb=16,yb=2048,route='tle')
    else:
        source_path=Path(__file__).with_name('native_final.py')
        if not source_path.is_file():
            source_path=Path(__file__).resolve().parents[2]/'2026-11-08/f06-gap-fix/native_final.py'
        src=source_path.read_text()
        src=src.replace('triton_unk_fused__softmax_add_0','triton_unk_fused__softmax_add_0_expissue_'+mode)
        token=_ROW_SHIFT.set(True)
        try:
            with config.patch({'compile_threads':1}), target_scope():
                runner=PyCodeCache.load(src)
                def fn(a,bias):
                    return runner.call([a,bias])[0]
                fn(x,b)
        finally:
            _ROW_SHIFT.reset(token)
    torch.cuda.synchronize()
    assert mode in emitted and sources[mode,'llir_to_asm']==sources[mode,'llir_to_object']
    if os.environ.get('F06_LINKED_DUMP'):
        artifacts=list(Path(os.environ['TRITON_CACHE_DIR']).rglob('*_expissue_'+mode+'.xpubin'))
        assert len(artifacts)==1, artifacts
        linked_code=artifacts[0].read_bytes()
        record('LOADED',mode=mode,name=artifacts[0].name,sha256=hashlib.sha256(linked_code).hexdigest(),
               data=base64.b64encode(linked_code).decode())
    return fn

funcs={'baseline':build('baseline')}
for mode in variants:
    funcs[mode if len(variants)>1 else 'candidate']=build(mode)
funcs['eager']=lambda a,bias:torch.softmax(a+bias,-1)
odd=x.clone()
odd[0,0]=float('nan');odd[1,4]=float('inf');odd[2]=float('-inf');odd[3,::2]=float('-inf')
odd[4]=0.;odd[4,::2]=-0.
for label, a,bias in [('random',x,b),('wide',x*36,b*13),('shift',x+1000,b),('special',odd,torch.zeros_like(b)),
                      ('new',torch.randn_like(x),torch.randn_like(b))]:
    eager=funcs['eager'](a,bias).cpu()
    original=funcs['baseline'](a,bias).cpu()
    mask=~torch.isnan(original)
    for mode in variants:
        changed=funcs[mode if len(variants)>1 else 'candidate'](a,bias).cpu()
        torch.testing.assert_close(changed,eager,rtol=.0003,atol=.0003,equal_nan=True)
        assert torch.equal(torch.isnan(changed),torch.isnan(original))
        assert torch.equal(changed.view(torch.int32)[mask],original.view(torch.int32)[mask])
        record('CHECK',mode=mode,input=label,same_non_nan_bits=True,error=(changed[mask]-eager[mask]).abs().max().item(),
               nan_count=changed.isnan().sum().item())

graphs={}
want=funcs['eager'](x,b).cpu()
for key,fn in funcs.items():
    graph,out=_capture(fn,(x,b),8)
    torch.testing.assert_close(out.cpu(),want,rtol=.0003,atol=.0003)
    graphs[key]=graph
samples={k:[] for k in graphs}
rng=random.Random(718)
for rep in range(13):
    keys=list(graphs)
    rng.shuffle(keys)
    for key in keys:
        for attempt in range(6):
            torch.cuda.synchronize()
            start,end=torch.cuda.Event(True),torch.cuda.Event(True)
            wall=time.perf_counter_ns()
            start.record()
            graphs[key].replay()
            end.record();end.synchronize()
            us=start.elapsed_time(end)*1000/8
            if 0<us<=(time.perf_counter_ns()-wall)/8000*1.1+2:break
        else: raise RuntimeError('invalid device clock')
        if rep>=2:samples[key].append(us)
record('RESULT',route=route,variant=variant,samples=samples,medians={k:statistics.median(v) for k,v in samples.items()})
