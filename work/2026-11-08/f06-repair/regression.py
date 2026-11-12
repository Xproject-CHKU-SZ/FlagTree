"""Direct device regressions for the F06 kernels and compiler."""
import json
import os
import sys
import torch
import triton
import triton.language as tl
from triton.experimental.graph_fusion import _p800_flat as flat, _p800_reduce as red, _p800_native_mm as mm, _p800_dsa as dsa
from triton.experimental.graph_fusion import _resource_autotune as auto
from cases import Mat,Bin

torch.set_grad_enabled(False)
torch.manual_seed(77)
def check(label, ok, **details):
    print('CHECK '+json.dumps(dict(test=label,passed=bool(ok),**details)),flush=True)
    if not ok: raise AssertionError(label)
def one(out):return out[0] if isinstance(out,(tuple,list)) else out

@triton.jit
def wrap(x,b,y,BLOCK:tl.constexpr):
    i=tl.program_id(0)*BLOCK+tl.arange(0,BLOCK)
    tl.store(y+i,tl.load(x+i)+tl.load(b+i%1024))
@triton.jit
def roundtrip(x,y,N:tl.constexpr):
    i=tl.arange(0,N)
    tl.store(y+i,tl.load(x+i).to(tl.bfloat16).to(tl.float32))
mode=sys.argv[1]
if mode=='backend':
    x=torch.tensor([1.0001,1.5,1.0009765625,3.14159265]*256).cuda()
    y=torch.empty_like(x);roundtrip[(1,)](x,y,N=1024)
    check('BF16 roundtrip',torch.equal(y.cpu(),x.cpu().bfloat16().float()),values=y[:4].cpu().tolist())
if mode=='wrap':
    n=1<<20; a=torch.zeros(n).cuda();b=torch.full((n,),-42.).cuda();b[:1024].copy_(torch.arange(1024).float())
    y=torch.full_like(a,-123.)
    try:
        wrap[(n//8192,)](a,b[:1024],y,BLOCK=8192,num_warps=8,is_sdnn=True)
    except Exception as exc:
        why=str(exc);check('SDNN wrap fail-closed', 'rank-1 wrap' in why or 'wrapped load' in why,reason=why[:400])
    else:
        bad=int((y.cpu()!=torch.arange(1024).float().repeat(n//1024)).sum())
        check('SDNN modulo',bad==0,bad=bad)
if mode=='bounds':
    n=65*1024; backing=torch.full((73728,),-42.).cuda()
    a=torch.zeros_like(backing);b=torch.zeros(1024).cuda()
    flat._kernel()[(9,)](a[:n],b,backing[:n],KIND=2,P=1024,XBLOCK=8192,TOTAL=n,num_warps=4,num_stages=1)
    check('flat tail canary',bool((backing[n:]==-42).all()) and bool((backing[:n]==0).all()))
    a=a[:64*1024].view(64,1024)
    for label,other in [('matrix',a),('mixed',b.half()),('strided',torch.randn(2048).cuda()[::2])]:
        check('DSA rejects '+label,dsa.match(torch.fx.symbolic_trace(Bin('mul_sum',1024)),(a,other)) is None)
    for kd in (False,True):
        xs=(torch.randn_like(a).half(),torch.randn_like(b).half());g=torch.fx.symbolic_trace(Bin('mul_sum_keepdim' if kd else 'mul_sum',1024))
        plan=next(p for p in auto.candidate_plans(g,xs) if p.name=='cluster');fn,proof=auto.compile_candidate(g,xs,plan)
        y=one(fn(*xs));r=g(*xs)
        check('fp16 mulsum '+str(kd),y.dtype==r.dtype and y.shape==r.shape and torch.allclose(y,r,atol=.003,rtol=.003),dtype=str(y.dtype),route=proof['regions'][0]['route'])
if mode=='norm':
    for kind,flag in [('add_softmax','FLAGTREE_SOFTMAX_TLE'),('add_layernorm','FLAGTREE_TLE_LN'),('add_layernorm_affine','FLAGTREE_TLE_LN')]:
        for enable in ([True] if kind=='add_softmax' else [False,True]):
            os.environ[flag]=str(int(enable))
            a=(1000+torch.randn(64,1024)*.1).cuda(); b=torch.randn(1024).cuda()*.05
            w=torch.randn_like(b); bias=torch.randn_like(b)
            fn,proof=red.compile(dict(kind=kind,m=64,n=1024,dtype='float32',eps=.001),())
            def run(x):
                args=[x,b]+([w,bias] if kind.endswith('affine') else [])
                return one(fn(args))
            run(torch.randn_like(a))
            x=run(a); saved=x.clone()
            # Round the input addition as eager does before the CPU reference.
            z=(a.cpu()+b.cpu()).double()
            ref=torch.softmax(z,-1) if kind=='add_softmax' else torch.nn.functional.layer_norm(z,(1024,),w.cpu().double() if kind.endswith('affine') else None,bias.cpu().double() if kind.endswith('affine') else None,.001)
            for i in range(5):run(torch.randn_like(a))
            check(kind+' fresh '+str(enable),torch.equal(x,saved),tiles=proof['tiles'])
            check(kind+' stable '+str(enable),torch.allclose(x.cpu(),ref.float(),atol=.0003,rtol=.0003),error=(x.cpu()-ref.float()).abs().max().item())
if mode=='matrix':
    for dt in (torch.float32,torch.float16):
        for m in ((65,513) if dt==torch.float32 else (64,)):
            xs=[torch.randn(s).to(dt).cuda() for s in ((m,48),(48,1024),(1024,))]
            g=torch.fx.symbolic_trace(Mat('matmul_bias_silu',1024));spec=mm.match(g,xs)
            fn,proof=mm.compile(spec,xs);r=g(*xs);v=one(fn(*xs))
            tol=.0003 if dt==torch.float32 else .003
            check('silu '+str(m)+str(dt),torch.allclose(v,r,atol=tol,rtol=tol),count=proof['kernel_count'])
            xs[-1][:4]=torch.tensor([torch.inf,-torch.inf,torch.nan,-0.]).to(dt).cuda()
            v=one(fn(*xs));r=g(*xs)
            check('silu specials '+str(m)+str(dt),torch.allclose(v,r,atol=tol,rtol=tol,equal_nan=True),got=v[0,:4].tolist(),ref=r[0,:4].tolist())
            xs[0][2, 0] = torch.nan
            xs[1][0, 7] = torch.inf
            v=one(fn(*xs));r=g(*xs)
            check('silu nonfinite dot '+str(m)+str(dt),torch.allclose(v,r,atol=tol,rtol=tol,equal_nan=True))
            scaled=torch.fx.symbolic_trace(lambda a,b,c:torch.add(a@b,c,alpha=2))
            check('alpha reject',mm.match(scaled,xs) is None)
