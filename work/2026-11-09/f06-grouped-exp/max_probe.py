"""Isolate the two max reductions on the ordinary grouped-exp B2 backend."""
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import random
import re
import statistics
import sys
import time
os.environ['TRITON_CACHE_DIR']='/tmp/max-probe'
os.environ['TRITON_STORE_BINARY_ONLY']='0'
import torch
from triton.experimental.graph_fusion import _p800_reduce as red
from triton.experimental.graph_fusion._resource_benchmark import _capture
from triton.backends import llvm19_toolchain as tc
VEC='<16 x float>'
vector=re.compile(r'^  (%\w+) = (?:tail )?call <16 x float> asm "vmax\.f\.mz[^"]*", "=v,v,v"\(<16 x float> (%\w+), <16 x float> (%\w+)\)')
scalar=re.compile(r'^  (%\w+) = (?:tail )?call float asm "max\.f[^"]*", "=r,r,r"\(float (%\w+), float (%\w+)\)')
ext=re.compile(r'^  (%\w+) = extractelement <16 x float> (%\w+), i(?:32|64) (\d+)')
def change(ir,mode):
    lines=ir.splitlines()
    vect,scal,elems={},{},{}
    for i,line in enumerate(lines):
        for pattern,bag in [(vector,vect),(scalar,scal),(ext,elems)]:
            m=pattern.match(line)
            if m:bag[m[1]]=(i,m[2],m[3])
    def leaves(name,defs):
        if name not in defs:return [name]
        _,a,b=defs[name];return leaves(a,defs)+leaves(b,defs)
    roots=[]
    for s,(pos,a,b) in scal.items():
        ls=leaves(s,scal)
        if len(ls)==16 and all(v in elems for v in ls):
            vectors={elems[v][1] for v in ls}
            if len(vectors)==1 and {int(elems[v][2]) for v in ls}==set(range(16)):
                roots.append((s,vectors.pop(),pos))
    assert len(roots)==1,(len(roots),len(scal),len(elems),len(vect),[l[:100] for l in lines if 'max.f' in l][:2])
    root,v,pos=roots[0]
    if mode in ('balanced','both'):
        inputs=leaves(v,vect)
        assert len(inputs)==32,len(inputs)
        body=[]
        while len(inputs)>1:
            output=[]
            for a,b in zip(inputs[::2],inputs[1::2]):
                name=v if len(inputs)==2 else f'%partialMax{len(body)}'
                body.append(f'  {name} = call {VEC} asm "vmax.f.mz $0{{mr1}}, $1, $2", "=v,v,v"({VEC} {a}, {VEC} {b})')
                output.append(name)
            inputs=output
        lines[vect[v][0]]='\n'.join(body)
    if mode in ('horizontal','both'):
        body=[]
        for step in (256,128,64,32):
            shifted=f'%shift{step}';fold=f'%fold{step}'
            body.append(f'  {shifted} = call {VEC} asm "vsrl.p $0, $1, $2", "=v,r,v"(i32 {step}, {VEC} {v})')
            body.append(f'  {fold} = call {VEC} asm "vmax.f.mz $0{{mr1}}, $1, $2", "=v,v,v"({VEC} {v}, {VEC} {shifted})')
            v=fold
        body.append(f'  {root} = extractelement {VEC} {v}, i64 0')
        lines[pos]='\n'.join(body)
    return '\n'.join(lines)+'\n'
active='original'
for name in ('llir_to_object','llir_to_asm'):
    original=getattr(tc,name)
    def hook(ir,*args,original=original,**kw):
        if active!='original' and '_maxprobe_'+active in ir:ir=change(ir,active)
        return original(ir,*args,**kw)
    setattr(tc,name,hook)
torch.set_grad_enabled(False);torch.manual_seed(61)
x=torch.randn(2048,2048).cuda();b=torch.randn(2048).cuda()
special=x.clone(); special[0,0]=float('nan');special[1,1]=float('inf');special[2]=float('-inf')
special[3,::2]=float('-inf');special[4,::2]=-0.;special[4,1::2]=0.
ref=lambda a,bias:torch.softmax(a+bias,-1)
graphs={}
for active in ('original','horizontal','balanced','both'):
    src=Path(red.__file__).read_text().replace('_tle_row_softmax','_tle_row_softmax_maxprobe_'+active)
    path=Path('/tmp')/(active+'_probe.py');path.write_text(src)
    qual=red.__package__+'.maxprobe_'+active
    spec=importlib.util.spec_from_file_location(qual,path);module=importlib.util.module_from_spec(spec)
    sys.modules[qual]=module;spec.loader.exec_module(module)
    fn,proof=module.compile(dict(kind='add_softmax',m=2048,n=2048,dtype='float32',eps=0.),(x,b))
    for a,bias in [(x,b),(x*35,b*16),(special,torch.zeros_like(b))]:
        y=fn([a,bias])[0];torch.testing.assert_close(y.cpu(),ref(a,bias).cpu(),atol=.0003,rtol=.0003,equal_nan=True)
    assert proof['tiles']=={'xb':16,'yb':2048,'route':'tle'},proof
    graphs[active],out=_capture(lambda:fn([x,b])[0],(),8)
    torch.testing.assert_close(out.cpu(),ref(x,b).cpu(),atol=.0003,rtol=.0003)
    print('PASS',active,flush=True)
graphs['eager'],_=_capture(ref,(x,b),8)
samples={k:[] for k in graphs}
rng=random.Random(671)
for rep in range(15):
    order=list(graphs);rng.shuffle(order)
    for k in order:
        for _ in range(6):
            torch.cuda.synchronize();a,e=torch.cuda.Event(True),torch.cuda.Event(True)
            w=time.perf_counter_ns();a.record();graphs[k].replay();e.record();e.synchronize()
            v=a.elapsed_time(e)*1000/8
            if 0<v<=(time.perf_counter_ns()-w)/8000*1.1+2:break
        else:raise RuntimeError('invalid event')
        if rep>=2:samples[k].append(v)
print('RESULT',json.dumps(dict(median={k:statistics.median(v) for k,v in samples.items()},samples=samples)))
