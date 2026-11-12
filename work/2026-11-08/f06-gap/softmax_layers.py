"""Paired P800 probes of FP32 Add+Softmax. All ordinary timing uses fresh outputs."""
import base64
from collections import Counter
import importlib.util
import math
import os
import re
import statistics
import sys
from pathlib import Path

os.environ['TRITON_STORE_BINARY_ONLY']='0'
os.environ['TRITON_CACHE_DIR']='/tmp/f06-gap-softmax'
import torch
from triton.experimental.graph_fusion import _p800_reduce as red
from triton.backends import llvm19_toolchain as tc
from timing import record,measure

torch.set_grad_enabled(False); torch.manual_seed(61)
m=n=2048
x=torch.randn(m,n).cuda();b=torch.randn(n).cuda();summed=x+b
w=x*32
torch.manual_seed(93);x2=torch.randn_like(x);b2=torch.randn_like(b)
special=x.clone();special[0,0]=float('nan');special[1,12]=float('inf');special[2]=float('-inf')
special[3,::2]=float('-inf');special[4]=0.;special[5,1]=150.;special[5,2]=-190.
cases=[('seed61',x,b),('seed93',x2,b2),('wide',w,b*16),('shift',x+1000,b),('special',special,torch.zeros_like(b))]
expected={label:torch.softmax(a+y,-1).cpu() for label,a,y in cases}
art={};current=''
def mutate(ir):
    if 'tree' in current:
        from tree_reduce import change
        ir=change(ir,current,art)
    if 'maxhw' in current:
        ir=ir.replace('call float @llvm.maxnum.f32(', 'call float asm "max.f $0, $1, $2", "=r,r,r"(')
    return ir
for tool in ('llir_to_asm','llir_to_object'):
    orig=getattr(tc,tool)
    def call(ir,*args,_fn=orig,_tool=tool,**kw):
        if 'diag_' not in ir:return _fn(ir,*args,**kw)
        if _tool=='llir_to_asm':art['original_ir']=ir
        result=_fn(mutate(ir),*args,**kw)
        if _tool=='llir_to_asm':art['asm']=result
        return result
    setattr(tc,tool,call)

source=Path(red.__file__).read_text()
mode=sys.argv[1] if len(sys.argv)>1 else 'factor'
if mode=='tiles':
    variants=[('base',8),('xb4',4),('xb16',16),('xb32',32),('rcp_xb16',16),('rcp_xb32',32)]
elif mode=='tree':
    variants=[('base',8),('rcp',8),('tree_max',8),('tree_sum',8),('tree_both',8),('rcp_tree_both',8),('rcp_maxhw_tree_both',8),('rcp_tree_both_xb16',16),('rcp_maxhw_tree_both_xb16',16)]
elif mode=='dump':
    variants=[('base',8)]
else:
    variants=[('base',8),('rcp',8),('maxhw',8),('rcp_maxhw',8),('preadded',8),('preadded_rcp_maxhw',8)]
funcs={'eager_add_softmax':lambda:torch.softmax(x+b,-1),'eager_softmax_preadded':lambda:torch.softmax(summed,-1),'eager_add':lambda:x+b}
replay=os.environ.get('REPLAY_LABEL')
if replay:
    if replay in funcs: variants=[]
    else: variants=[(replay,16 if replay.endswith('xb16') else 8)]
implementations={}
def build(name,xb):
    tag='diag_'+name
    src=source.replace('_tle_row_softmax','_tle_row_softmax_'+tag)
    # The alternatives all enter the identical fresh-output descriptor launcher.
    src=src.replace("tle_xb = 8 if spec['m'] < 256 or spec['n'] == 2048 else 16",f"tle_xb = {xb}")
    if 'rcp' in name:
        src=src.replace('tl.store(p, (e / z[:, None]).to(DT))','inv = tl.div_rn(1.0, z)\n        tl.store(p, (e * inv[:, None]).to(DT))')
    if 'preadded' in name:
        src=src.replace('tle.gpu.copy(b_desc, bb, [YB], [0])\n        bv = tl.load(bp).to(tl.float32)','')
        src=src.replace('v = (tl.load(p) + bv[None, :].to(DT)).to(tl.float32)','v = tl.load(p).to(tl.float32)')
    p=Path('/tmp')/(tag+'.py');p.write_text(src)
    s=importlib.util.spec_from_file_location(red.__package__+'.'+tag,p);mod=importlib.util.module_from_spec(s);sys.modules[s.name]=mod;s.loader.exec_module(mod)
    fn,proof=mod.compile(dict(kind='add_softmax',m=m,n=n,dtype='float32',eps=0.),(x,b))
    return fn,proof
for current,xb in variants:
    try:
        art.clear()
        f,proof=build(current,xb)
        checks={}
        for label,a,y in cases:
            actual=f([(a+y) if 'preadded' in current else a,y])[0].cpu()
            wanted=expected[label]
            valid=torch.isfinite(wanted)&torch.isfinite(actual)
            checks[label]={'max_abs':float((wanted[valid]-actual[valid]).abs().max()),'passed':bool(torch.allclose(actual,wanted,atol=.0003,rtol=.0003,equal_nan=True))}
        assert proof['tiles']=={'xb':xb,'yb':n,'route':'tle'},proof['tiles']
        ops=Counter(re.findall(r'^\s*([a-z][\w.]+)\s',art['asm'],re.M))
        record('CHECK',name=current,tiles=proof['tiles'],checks=checks,code={k:ops[k] for k in ['exp.f.rn','div.f.rn','jal','max.f','vmax.f.mz','vadd.f.mz.rn','vmul.f.mz.rn','vextracti.f','vsrl.p','vload_mask16.mz','vstore_mask16.mz','mfence']},tree=art.get('trees'))
        if mode=='dump':
            record('LLIR',data=base64.b64encode(art['original_ir'].encode()).decode())
            break
        if not all(c['passed'] for c in checks.values()):continue
        args=[summed if 'preadded' in current else x,b]
        implementations[current]=f
        funcs[current]=lambda f=f,args=args:f(args)[0]
    except Exception as e:record('REJECT',name=current,error=str(e)[:1000])
if replay:
    from triton.experimental.graph_fusion._resource_benchmark import _capture
    import time
    fn=funcs[replay]
    g,out=_capture(fn,(),8)
    torch.testing.assert_close(out.cpu(),expected['seed61'],rtol=.0003,atol=.0003,equal_nan=True)
    sample=[]
    for trial in range(12):
        torch.cuda.synchronize()
        s,e=torch.cuda.Event(True),torch.cuda.Event(True);start=time.perf_counter_ns()
        s.record();g.replay();e.record();e.synchronize()
        wall=(time.perf_counter_ns()-start)/1000/8
        us=s.elapsed_time(e)*1000/8
        if 0<us<wall*1.1+2:sample.append(us)
        if len(sample)==7:break
    assert len(sample)>=5,sample
    record('REPLAY',name=replay,median=statistics.median(sample),samples=sample)
elif mode not in ('dump',):
    measure(funcs,calls=35,rounds=11)
