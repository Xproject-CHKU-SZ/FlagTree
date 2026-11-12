"""Change only B2's column tile, with unchanged dtype, math, warp count and 2048² inputs."""
import base64
import importlib.util
import json
import math
import os
import random
import statistics
import sys
from pathlib import Path

os.environ['TRITON_STORE_BINARY_ONLY']='0'
os.environ['TRITON_CACHE_DIR']='/tmp/exp-tiling-cache'
import torch
from triton.experimental.graph_fusion import _p800_reduce as red

def emit(k,**items):
    print(k+' '+json.dumps(items),flush=True)

torch.manual_seed(61)
torch.set_grad_enabled(False)
m=n=2048
a=torch.randn(m,n).cuda(); b=torch.randn(n).cuda()
out=torch.empty_like(a)
source=Path('/repair/dbg_softmax_online2.py').read_text()
p=Path('/tmp/b2_original_kernel.py');p.write_text('import triton\nimport triton.language as tl\n'+source[source.index('@triton.jit'):source.index('\nm, n = ')])
spec=importlib.util.spec_from_file_location('b2_original_kernel',p);mod=importlib.util.module_from_spec(spec);sys.modules[spec.name]=mod;spec.loader.exec_module(mod)
original=mod.softmax_online2d
row=red._kernel()
eager=lambda:torch.softmax(a+b,-1)
ref=eager().cpu()
funcs={'eager':eager}
for name,c in [('B2_128',128),('B2_256',256),('B2_512',512),('B2_1024',1024),('B2_2048',2048),('full_row',2048)]:
    if sys.argv[1:] == ['dump'] and name not in ('B2_128','full_row'):continue
    if sys.argv[1:2]==['graph'] and name != sys.argv[2]:continue
    def launch(dest,k=c,which=name):
        if which=='full_row':
            return row[(m//8,)](a,b,dest,b,b,KIND=2,N=n,R=8,C=n,ROUND=0,EPS=0.,AFFINE=0,num_warps=8,num_stages=1,is_sdnn=False)
        return original[(m//8,)](a,b,dest,N=n,R=8,C=k,num_warps=8,num_stages=1,is_sdnn=False)
    try:
        binary=launch(out);torch.cuda.synchronize()
        torch.testing.assert_close(out.cpu(),ref,atol=3e-4,rtol=3e-4)
        if name in ('B2_128','full_row'):
            emit('F06_ELF',name=name,hash=binary.hash,data=base64.b64encode(binary.asm['elf']).decode())
            if sys.argv[1:] == ['dump']:
                emit('F06_BIN',name=name,hash=binary.hash,data=base64.b64encode(binary.asm['xpubin']).decode())
                for ln in binary.asm.get('llir','').splitlines():
                    if 'call' in ln and 'max' in ln and '@' in ln:print('MAXIR',ln[:280],flush=True)
        def fn(l=launch):
            dest=torch.empty_like(a);l(dest);return dest
        funcs[name]=fn
        emit('OK',name=name,abs_max=(out.cpu()-ref).abs().max().item())
    except Exception as e:
        emit('REJECT',name=name,error=str(e)[:300])
if sys.argv[1:] == ['dump']:raise SystemExit
tle,proof=red.compile(dict(kind='add_softmax',m=m,n=n,dtype='float32',eps=0.),(a,b))
fn=lambda:tle([a,b])[0]
torch.testing.assert_close(fn().cpu(),ref,rtol=3e-4,atol=3e-4)
assert proof['tiles']['route']=='tle'
funcs['TLE']=fn
if sys.argv[1:2]==['graph']:
    from triton.experimental.graph_fusion._resource_benchmark import _capture
    name=sys.argv[2]
    graph, output=_capture(funcs[name],(),8)
    torch.testing.assert_close(output.cpu(),ref,rtol=3e-4,atol=3e-4)
    samples=[]
    for trial in range(7):
        s,e=torch.cuda.Event(True),torch.cuda.Event(True)
        torch.cuda.synchronize();s.record();graph.replay();e.record();e.synchronize()
        us=s.elapsed_time(e)*1000/8
        if math.isfinite(us) and us>0:samples.append(us)
    if len(samples)<4:raise RuntimeError('insufficient valid GPU replay samples')
    emit('REPLAY',name=name,median=statistics.median(samples),samples=samples)
    raise SystemExit
times={mode:{name:[] for name in funcs} for mode in ('ordinary','replay')}
graphs={}
for name,fn in funcs.items():
    for _ in range(5): out=fn()
    torch.cuda.synchronize()
    g=torch.cuda.CUDAGraph()
    with torch.cuda.graph(g):
        for _ in range(12): value=fn()
    g.replay();torch.cuda.synchronize()
    torch.testing.assert_close(value.cpu(),ref,rtol=3e-4,atol=3e-4)
    graphs[name]=(g,value)
for mode in times:
    for trial in range(9):
        order=list(funcs);random.Random(61+trial).shuffle(order)
        for name in order:
            one=graphs[name][0].replay if mode=='replay' else funcs[name]
            for i in range(5):
                s,e=torch.cuda.Event(True),torch.cuda.Event(True);s.record()
                for _ in range(5 if mode=='replay' else 30): v=one()
                e.record();torch.cuda.synchronize()
                us=s.elapsed_time(e)*1000/(60 if mode=='replay' else 30)
                if math.isfinite(us) and us>0:break
            else:raise ValueError('invalid device event')
            times[mode][name].append(us)
    emit('TIME',mode=mode,median={k:statistics.median(v) for k,v in times[mode].items()},samples=times[mode])
