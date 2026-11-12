"""Capture the native Inductor graph, generated wrapper and ordinary-call timing."""
import sys,json,os,re,hashlib,statistics,time,math
from pathlib import Path
os.environ.setdefault('TRITON_CACHE_DIR','/tmp/f06-pub-probe-triton')
os.environ.setdefault('TORCHINDUCTOR_CACHE_DIR','/tmp/f06-pub-probe-inductor')
os.environ['TRITON_STORE_BINARY_ONLY']='0'
import torch
from torch._inductor import config
from triton.experimental.graph_fusion import _resource_autotune as auto
from triton.experimental.graph_fusion import _p800_compiler
from torch._inductor.utils import run_and_get_code
sys.path.insert(0,'/repair');from cases import Bin
sys.path.insert(0,'/repair/v4');from timing import record,measure
torch.manual_seed(61);torch.set_grad_enabled(False)
def observe(graph):
    record('GRAPH',text=str(graph))
m,n=map(int,sys.argv[1:3])
dt=getattr(torch,sys.argv[3]) if len(sys.argv)>3 else torch.float32
mod=Bin('add_softmax',n).eval()
x=torch.randn(m,n).to(dt).cuda();b=torch.randn(n).to(dt).cuda()
backend_run=[]
def backend(g,ex):
    def run(*xs):
        if not backend_run:
            f,p=auto.compile_candidate(g,xs,auto.Candidate('inductor'))
            backend_run.append(f)
        return backend_run[0](*xs)
    return run
settings={'post_grad_custom_pre_pass':observe}
variant=os.getenv('PROBE_NATIVE','stock')
if variant in ('offline','multi'): settings['online_softmax']=False
if variant in ('multi','multi_online'): settings['triton.multi_kernel']=1
from contextlib import nullcontext
choice=nullcontext()
if variant.startswith('persist'):
    from torch._inductor.virtualized import V
    from torch._inductor.runtime import triton_heuristics as h
    import copy
    original=V.choices
    class Choices:
        def __getattr__(self,k):return getattr(original,k)
        def should_use_persistent_reduction(self,feat,coop):
            return True if not coop and str(feat.reduction_numel)==str(n) else original.should_use_persistent_reduction(feat,coop)
    choice=V.set_choices_handler(Choices())
    if variant!='persist1':
        factory=h._persistent_reduction_configs
        def wide(size_hints,reduction_hint=False,inductor_meta=None):
            configs=factory(size_hints,reduction_hint,inductor_meta)
            record('INDUCTOR_CONFIG',hints=size_hints,original=[c.kwargs for c in configs])
            if configs and 'XBLOCK' in configs[0].kwargs:
                for xb in (2,4,8,16):
                    if xb*n>32768:continue
                    c=copy.deepcopy(configs[0]);c.kwargs['XBLOCK']=xb;c.num_warps=4 if xb<8 else 8;configs.append(c)
            return configs
        h._persistent_reduction_configs=wide
    if variant.endswith('offline'):settings['online_softmax']=False
if variant.startswith('fixed'):
    from torch._inductor.virtualized import V
    from torch._inductor.codegen.triton import FixedTritonConfig
    original=V.choices
    _,xb,rb,offline=variant.split('_')
    xb,rb=int(xb),int(rb)
    settings.update({'online_softmax':offline!='1','coordinate_descent_tuning':False})
    class Fixed:
        def __getattr__(self,k):return getattr(original,k)
        def triton_kernel_kwargs(self,cls,features,groups,kwargs):
            kwargs=original.triton_kernel_kwargs(cls,features,groups,kwargs).copy()
            if str(features.reduction_numel)==str(n):
                params={'XBLOCK':xb,'num_warps':4,'num_stages':1}
                if rb<n:params['R0_BLOCK']=rb
                kwargs.update(fixed_config=FixedTritonConfig(params),
                              override_persistent_reduction=rb==n,override_cooperative_reduction=False)
            return kwargs
    choice=V.set_choices_handler(Fixed())
with choice, config.patch(settings):
    comp=torch.compile(mod,backend=backend,fullgraph=True,dynamic=False)
    y,sources=run_and_get_code(comp,x,b)
ref=mod(x,b)
torch.testing.assert_close(y.cpu(),ref.cpu(),rtol=.003 if dt==torch.float16 else .0003,atol=.003 if dt==torch.float16 else .0003)
for source in sources:
    record('CODE',source=source[:45000],sha=hashlib.sha256(source.encode()).hexdigest())
measure({'eager':lambda:mod(x,b),'native_public':lambda:comp(x,b),'native_prepared':lambda:backend_run[0](x,b)},calls=30,rounds=7)
