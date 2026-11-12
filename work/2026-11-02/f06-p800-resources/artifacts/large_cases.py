import report117_cases as old

def cases():
    result=[]
    for kind in ('matmul_bias','matmul_bias_relu','matmul_bias_gelu_exact','matmul_bias_gelu_tanh','matmul_bias_silu'):
        for dtype in ('float32','float16','bfloat16'):
            for m,n,k in ((128,1024,128),(512,1024,1024),(2048,2048,2048)):
                result.append(dict(ordinal=len(result),case_id=f'large:{kind}:{dtype}:{m}x{n}x{k}',kind=kind,dtype=dtype,M=m,N=n,K=k,tolerance=dict(atol=3e-3,rtol=3e-3) if dtype!='float32' else dict(atol=3e-4,rtol=3e-4)))
    return result

def build_cpu_case(spec):
    import torch
    ns,_=old.original_namespace()
    m,n,k=spec['M'],spec['N'],spec['K'];dtype=getattr(torch,spec['dtype'])
    inputs=tuple(ns['rand'](shape,dtype) for shape in ((m,k),(k,n),(n,)))
    graph=torch.fx.symbolic_trace(ns['Module'](spec['kind'],n).to(dtype=dtype))
    return graph,inputs,{},dict(inputs=[dict(shape=list(t.shape),sha256=old.digest_tensor(t)) for t in inputs],seed=61)
