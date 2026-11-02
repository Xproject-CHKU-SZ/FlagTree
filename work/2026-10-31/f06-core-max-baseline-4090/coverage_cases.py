"""F06-G03 core combinations: small and large shapes for every family."""
import copy
import small_cases, large_cases
import report117_cases as old
CORE = {'matmul_bias','matmul_bias_relu','matmul_bias_gelu_exact','matmul_bias_gelu_tanh','matmul_bias_silu','add_softmax','add_layernorm','add_layernorm_weight','add_layernorm_bias','add_layernorm_affine','mul_sum','mul_sum_keepdim'}
def cases():
    result=[]
    small=small_cases.cases()
    for spec in small:
        if spec['kind'] not in CORE: continue
        spec=copy.deepcopy(spec)
        spec['original_ordinal']=spec['ordinal']; spec['input_builder']='historical_small'
        result.append(spec)
    for spec in large_cases.cases():
        spec['input_builder']='historical_large_matmul';result.append(spec)
    for kind in ('add_softmax','add_layernorm','add_layernorm_weight','add_layernorm_bias','add_layernorm_affine','mul_sum','mul_sum_keepdim'):
        for dtype in ('float32','float16','bfloat16'):
            template=next(s for s in small if s['kind']==kind and s['dtype']==dtype)
            for m,n in ((128,1024),(512,1024),(2048,2048)):
                result.append(dict(case_id=f'large:{kind}:{dtype}:{m}x{n}',kind=kind,dtype=dtype,M=m,N=n,K=None,tolerance=copy.deepcopy(template['tolerance']),input_builder='large_nonmatmul'))
    for i,spec in enumerate(result):spec['ordinal']=i
    assert len(result)==216
    return result

def build_cpu_case(spec):
    if spec['input_builder']=='historical_small':
        restored=copy.deepcopy(spec);restored['ordinal']=restored['original_ordinal']
        return small_cases.build_cpu_case(restored)
    if spec['input_builder']=='historical_large_matmul':return large_cases.build_cpu_case(spec)
    import torch
    ns,_=old.original_namespace();m,n=spec['M'],spec['N'];dtype=getattr(torch,spec['dtype']);kind=spec['kind']
    inputs=tuple(ns['rand'](shape,dtype) for shape in ((m,n),(n,)))
    source_kind='add_layernorm_affine' if kind in ('add_layernorm_weight','add_layernorm_bias') else kind
    module=ns['Binary'](source_kind,n).to(dtype=dtype)
    if kind=='add_layernorm_weight':module.bias=None
    if kind=='add_layernorm_bias':module.weight=None
    module.kind=kind
    graph=torch.fx.symbolic_trace(module)
    return graph,inputs,{},dict(seed=61,inputs=[dict(shape=list(t.shape),sha256=old.digest_tensor(t)) for t in inputs],parameters={name:old.digest_tensor(t) for name,t in graph.named_parameters()},graph=str(graph.graph),note='same historical operator definitions and dtype tolerances; larger inputs')
