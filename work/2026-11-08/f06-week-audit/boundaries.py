import json,os,sys
import torch
import triton
import triton.language as tl
import triton.experimental
triton.experimental.__path__.insert(0,'/opt/f06/code/python/triton/experimental')
from triton.experimental.graph_fusion import _resource_autotune as auto, _p800_flat as flat, _p800_reduce as red, _p800_native_mm as mm, _p800_dsa as dsa
from cases import Mat,Bin,KINDS,MAT

def record(event,**fields):print('CHECK '+json.dumps(dict(event=event,**fields)),flush=True)
def single(x): return x[0] if isinstance(x,(tuple,list)) else x
def accuracy(x,y):
    d=(x-y).abs().cpu()
    return dict(max_abs=float(d.max()),close=torch.allclose(x.cpu(),y.cpu(),rtol=.0003,atol=.0003,equal_nan=True))
torch.set_grad_enabled(False); torch.manual_seed(61)
if sys.argv[1]=='admission':
    a,b=torch.randn(64,1024),torch.randn(1024)
    for kind in KINDS:
        torch._dynamo.reset()
        inputs=(torch.randn(64,64),torch.randn(64,1024),b) if kind in MAT else (a,b)
        mod=(Mat if kind in MAT else Bin)(kind,1024)
        g=torch.fx.symbolic_trace(mod)
        def capture(gm,xs):
            try: names=[p.name for p in auto.candidate_plans(gm,xs,single_kernel=True)]
            except Exception as e: names=[str(e)[:230]]
            record('dynamo_graph',kind=kind,fx=gm.code,candidate_names=names,symbolic_native=mm.match(g,inputs) is not None,dynamo_native=mm.match(gm,xs) is not None)
            return gm.forward
        torch.compile(mod,backend=capture,dynamic=False,fullgraph=True)(*inputs)
    a=torch.empty(65,1024)
    spec=flat.match(torch.fx.symbolic_trace(Bin('add_gelu_tanh',1024)),(a,b))
    record('unmasked_tail',spec=spec,invalid_tiles=[t for t in flat._XBLOCKS if t<=8192 and a.numel()%t])
    g=torch.fx.symbolic_trace(Bin('mul_sum',1024))
    for label,bad in [('matrix_B',torch.randn(64,1024)),('mixed_dtype_B',b.half()),('strided_B',torch.randn(2048)[::2])]:
        record('mulsum_admission',case=label,spec=dsa.match(g,(torch.randn(64,1024),bad)))
    sys.exit()

@triton.jit
def exp2_kernel(x,y,N:tl.constexpr):
    i=tl.arange(0,N)
    tl.store(y+i,tl.exp2(tl.load(x+i)))

if sys.argv[1]=='edge':
    x=torch.linspace(-5,5,1024).cuda(); y=torch.empty_like(x)
    exp2_kernel[(1,)](x,y,N=1024)
    record('exp2',**accuracy(y,torch.exp2(x)))
    a=torch.randn(64,48).cuda(); b=torch.randn(48,1024).cuda(); bias=torch.randn(1024).cuda()
    def scaled(a,b,bias):return torch.add(a@b,bias,alpha=2)
    for label,model in [('k48',Mat('matmul_bias',1024)),('scaled_bias',scaled)]:
        g=torch.fx.symbolic_trace(model); xs=(a,b,bias)
        plan=next((p for p in auto.candidate_plans(g,xs,single_kernel=True) if p.name=='native_mm'),None)
        if plan:
            fn,_=auto.compile_candidate(g,xs,plan)
            record(label,admitted=True,**accuracy(single(fn(*xs)),g(*xs)))
        else: record(label,admitted=False)
    a=(1000+torch.randn(64,1024)*.1).cuda(); b=torch.zeros(1024).cuda()
    for kind in ('add_layernorm','add_layernorm_affine'):
        g=torch.fx.symbolic_trace(Bin(kind,1024).cuda()); xs=(a,b)
        plan=next(p for p in auto.candidate_plans(g,xs,single_kernel=True) if p.name=='cluster')
        try:
            fn,proof=auto.compile_candidate(g,xs,plan)
            typical=(torch.randn_like(a),b); fn(*typical)
            record('low_variance',kind=kind,inner=proof['regions'][0].get('route'),**accuracy(single(fn(*xs)),g(*xs)))
        except Exception as e: record('low_variance',kind=kind,error=str(e)[:200])
    for kind,switch in [('add_softmax','FLAGTREE_SOFTMAX_TLE'),('add_layernorm','FLAGTREE_TLE_LN')]:
        os.environ[switch]='1'
        desc=dict(kind=kind,m=64,n=1024,dtype='float32',eps=.001)
        fn,proof=red.compile(desc,(a,b))
        first=single(fn([torch.randn_like(a),b])); saved=first.clone()
        for _ in range(4): last=single(fn([torch.randn_like(a),b]))
        torch.cuda.synchronize()
        record('ring',kind=kind,tile=proof['tiles'],same_address=last.data_ptr()==first.data_ptr(),held_changed=not torch.equal(first,saved))
    sys.exit()
if sys.argv[1]=='backend':
    from triton.experimental.graph_fusion import _resource_benchmark as rb
    original_measure=rb.measure_candidates
    def observing_measure(*args,**kwargs):
        records=original_measure(*args,**kwargs)
        for name,r in records.items():
            record('actual_validation',kind=sys.argv[2],route=name,status=r.get('status'),error=str(r.get('error',''))[-650:])
        return records
    rb.measure_candidates=observing_measure
    kind=sys.argv[2]; audit=[]; g=(Mat if kind in MAT else Bin)(kind,1024).cuda()
    xs=[torch.randn(s).cuda() for s in (((64,64),(64,1024),(1024,)) if kind in MAT else ((64,1024),(1024,)))]
    try:
        backend=auto.autotune_resource_backend(tolerance=dict(atol=.0003,rtol=.0003),environment_key='week-audit',single_kernel=True,audit=audit)
        out=torch.compile(g,backend=backend,dynamic=False,fullgraph=True)(*xs)
        record('public_backend',kind=kind,decision=audit[-1]['decision'] if audit else {},**accuracy(out,g(*xs)))
        for r in audit[-1]['candidates']:
            record('calibration',kind=kind,name=r['name'],status=r.get('status'),error=str(r.get('error',''))[:380])
    except Exception as e:
        record('public_backend',kind=kind,error=type(e).__name__+': '+str(e)[:400])
