"""All registered semantic variants, retaining the exact original 117 cases."""
import copy
import report117_cases as old

def cases():
    result = old.cases()
    affine = [s for s in result if s['kind'] == 'add_layernorm_affine']
    for kind in ('add_layernorm_weight', 'add_layernorm_bias'):
        for original in affine:
            spec = copy.deepcopy(original)
            spec.update(ordinal=len(result), kind=kind,
                case_id=original['case_id'].replace('report117:add_layernorm_affine', 'supplement:'+kind),
                source_affine_ordinal=original['ordinal'])
            omitted = 'bias' if kind.endswith('weight') else 'weight'
            spec['parameters'].pop(omitted)
            result.append(spec)
    assert len(result) == 135
    return result

def build_cpu_case(spec):
    if spec['ordinal'] < 117:
        return old.build_cpu_case(spec)
    import torch
    original = old.cases()[spec['source_affine_ordinal']]
    _, inputs, metadata, binding = old.build_cpu_case(original)
    ns, _ = old.original_namespace()
    module = ns['Binary']('add_layernorm_affine', spec['N']).to(dtype=getattr(torch, spec['dtype']))
    omitted = 'bias' if spec['kind'].endswith('weight') else 'weight'
    setattr(module, omitted, None)
    module.kind = spec['kind']
    graph = torch.fx.symbolic_trace(module)
    parameters = {n: old.digest_tensor(t) for n,t in graph.named_parameters()}
    assert parameters == spec['parameters']
    binding.update(parameters=parameters, graph=str(graph.graph),
        supplement='Original affine LayerNorm with one parameter omitted; same seed/input/epsilon')
    return graph, inputs, metadata, binding
