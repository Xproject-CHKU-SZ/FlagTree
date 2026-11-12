import json, torch,triton.experimental
triton.experimental.__path__.insert(0,'/opt/f06/code/python/triton/experimental')
from triton.experimental.graph_fusion import _resource_autotune as auto
from cases import MAT,KINDS,Mat,Bin
import sys
torch.set_grad_enabled(False); torch.manual_seed(61)
for kind in KINDS:
    for dt in ('float32','float16'):
        dtype=getattr(torch,dt)
        shape=((64,64),(64,1024),(1024,)) if kind in MAT else ((64,1024),(1024,))
        xs=tuple(torch.randn(s).to(dtype).cuda() for s in shape)
        g=torch.fx.symbolic_trace((Mat if kind in MAT else Bin)(kind,1024).to(device='cuda',dtype=dtype))
        plans={p.name:p for p in auto.candidate_plans(g,xs,single_kernel=True)}
        name='native_mm' if kind in MAT else 'cluster'
        row=dict(kind=kind,dtype=dt,route=name)
        try:
            if name not in plans: row['status']='declined'
            else:
                fn,proof=auto.compile_candidate(g,xs,plans[name])
                fn(*xs);torch.cuda.synchronize()
                alt=list(xs); z=xs[-1].cpu().clone(); z.reshape(-1)[:8]=torch.tensor([float('inf'),float('-inf'),float('nan'),-0.,0.,-100.,100.,-8.],dtype=dtype);alt[-1]=z.cuda()
                expected=g(*alt).cpu(); actual=fn(*alt)
                if isinstance(actual,(tuple,list)):actual=actual[0]
                actual=actual.cpu()
                tol=.003 if dt=='float16' else .0003
                mask=torch.isclose(actual.float(),expected.float(),equal_nan=True,rtol=tol,atol=tol)
                nf=(torch.isnan(actual)!=torch.isnan(expected))|(torch.isposinf(actual)!=torch.isposinf(expected))|(torch.isneginf(actual)!=torch.isneginf(expected))
                row.update(status='passed' if actual.dtype==expected.dtype and mask.all() else 'rejected',bad=int((~mask).sum()),nonfinite_mismatch=int(nf.sum()),dtype_ok=actual.dtype==expected.dtype)
        except Exception as e: row.update(status='error',error=str(e)[:150])
        print('SPECIAL '+json.dumps(row),flush=True)
