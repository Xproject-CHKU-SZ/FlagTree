"""Supply exact FP32 intermediate tensors to isolate remaining TLE work."""
import importlib.util,json,os,sys
from pathlib import Path
os.environ['TRITON_CACHE_DIR']='/tmp/f06-gap-prefix'
os.environ['TRITON_STORE_BINARY_ONLY']='0'
import torch
from triton.backends import llvm19_toolchain as tools
from triton.experimental.graph_fusion import _p800_reduce as red
from triton.experimental.graph_fusion._resource_benchmark import _capture
from timing import measure,record
sys.path.insert(0,'/repair/v4')
import llvm_poly
llvm_poly.install(tools)
torch.manual_seed(61);torch.set_grad_enabled(False)
m=n=2048
a=torch.randn(m,n).cuda();b=torch.randn(n).cuda()
u=a+b;v=u-torch.amax(u,dim=-1,keepdim=True);e=torch.exp(v);ref=torch.softmax(u,-1);z=e.sum(-1,keepdim=True)
source=Path(red.__file__).read_text()
fns={'eager':lambda:torch.softmax(a+b,-1)}
inputs={'full':a,'added':u,'shifted':v,'exps':e,'copy':ref}
target=sys.argv[1] if len(sys.argv)>1 else None
for i,stage in enumerate(inputs):
    if target and target!=stage:continue
    src=source.replace('_tle_row_softmax','_tle_row_softmax_maxhw_'+stage)
    src=src.replace('tl.store(p, (e / z[:, None]).to(DT))','inv = tl.div_rn(1.0, z)\n        tl.store(p, (e * inv[:, None]).to(DT))')
    if i>=1:
        src=src.replace('tle.gpu.copy(b_desc, bb, [YB], [0])\n        bv = tl.load(bp).to(tl.float32)','')
        src=src.replace('v = (tl.load(p) + bv[None, :].to(DT)).to(tl.float32)','v = tl.load(p).to(tl.float32)')
    if i>=2:src=src.replace('m = tl.max(v, 1)\n        e = tl.exp(v - m[:, None])','e = tl.exp(v)')
    if i>=3:src=src.replace('e = tl.exp(v)','e = v')
    if i>=4:src=src.replace('z = tl.sum(e, 1)\n        inv = tl.div_rn(1.0, z)\n        tl.store(p, (e * inv[:, None]).to(DT))','tl.store(p, v.to(DT))')
    path=Path('/tmp')/('prefix_'+stage+'.py');path.write_text(src)
    spec=importlib.util.spec_from_file_location(red.__package__+'.prefix_'+stage,path)
    mod=importlib.util.module_from_spec(spec);sys.modules[spec.name]=mod;spec.loader.exec_module(mod)
    f,proof=mod.compile(dict(kind='add_softmax',m=m,n=n,dtype='float32',eps=0.),(a,b))
    args=[inputs[stage],b]
    fn=lambda f=f,args=args:f(args)[0]
    out=fn()
    torch.testing.assert_close(out.cpu(),ref.cpu(),atol=.0003,rtol=.0003,equal_nan=True)
    assert proof['tiles']=={'xb':8,'yb':2048,'route':'tle'}
    record('PREFIX',stage=stage,max_abs=(out.cpu()-ref.cpu()).abs().max().item(),tiles=proof['tiles'])
    fns[stage]=fn
if target:
    import statistics,time
    fn=fns[target]
    graph,out=_capture(fn,(),8)
    torch.testing.assert_close(out.cpu(),ref.cpu(),rtol=.0003,atol=.0003,equal_nan=True)
    samples=[]
    for i in range(12):
        torch.cuda.synchronize()
        s,e=torch.cuda.Event(True),torch.cuda.Event(True)
        start=time.perf_counter_ns();s.record();graph.replay();e.record();e.synchronize()
        us=s.elapsed_time(e)*1000/8;wall=(time.perf_counter_ns()-start)/1000/8
        if 0<us<1.1*wall+2:samples.append(us)
        if len(samples)==7:break
    assert len(samples)>=5,samples
    record('REPLAY',name=target,median=statistics.median(samples),samples=samples)
else:measure(fns,rounds=11,calls=35)
