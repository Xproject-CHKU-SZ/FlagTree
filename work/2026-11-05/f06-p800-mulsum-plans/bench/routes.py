from contextlib import contextmanager
import copy,sys
MODE="optimized"

@contextmanager
def policy(legacy=False):
    from triton.experimental.graph_fusion import _p800_special_values as current
    if not legacy:
        with current.experimental_scope(MODE):yield
        return
    # Frozen previous implementation, imported only for a timing control. No
    # historical code is reachable from the project or new candidate's JIT.
    import historical_control as archived
    from unittest.mock import patch
    with patch.dict(sys.modules,{current.__name__:archived}),archived.experimental_scope():yield

@contextmanager
def partial_config():
    # Match the certified native 1x256 SDNN tile. The full K>=1024 default
    # kernels faulted on three dtypes in historical runs. Never launch those.
    from unittest.mock import patch
    from triton.experimental.graph_fusion._resource_codegen import ResourceHeuristics as H
    base=H.__getattr__
    def lookup(obj,name):
        f=base(obj,name)
        if obj.resource!='sdnn':return f
        if name!='persistent_reduction':raise RuntimeError('unverified partial kernel layout: '+name)
        def factory(*a,**k):
            assert k['size_hints']['r0_'] in (128,256),k['size_hints'];deco=f(*a,**k)
            def decorate(fn):
                tuner=deco(fn);cfg=copy.deepcopy(tuner.configs[0]);assert 'XBLOCK' in cfg.kwargs
                cfg.kwargs['XBLOCK']=1;cfg.num_warps=2;cfg.num_stages=1;tuner.configs=[cfg]
                tuner.inductor_meta=dict(tuner.inductor_meta,coordinate_descent_tuning=False,autotune_local_cache=False)
                return tuner
            return decorate
        return factory
    from torch._inductor.codegen.triton import TritonKernel
    def bounded_persistent(kernel):
        # This context compiles only the verified 256-column partial region.
        return kernel.inside_reduction
    with patch.object(H,'__getattr__',lookup), patch.object(
            TritonKernel, 'should_use_persistent_reduction', bounded_persistent), patch.object(
            TritonKernel, 'want_no_x_dim', lambda self: False):
        yield


def tiled(xs, spec, *, legacy=False):
    """Native 256-column partial reductions followed by a native FP32 sum."""
    import torch
    from torch._inductor import config
    from triton.experimental.graph_fusion import _resource_autotune as auto, _resource_codegen as gen
    from triton.experimental.graph_fusion._resource_runtime import inference_entry
    from triton.experimental.graph_fusion._p800_compiler import target_scope
    m, n = spec['M'], spec['N']
    dtype = xs[0].dtype
    keep = spec['kind'].endswith('keepdim')
    chunks = n // 256
    assert n >= 1024 and n % 256 == 0

    def partial(a, b):
        return ((a * b).sum(-1, dtype=torch.float32),)

    def compile(fun, ins, resource):
        binary, evidence = gen.compile_region(torch.fx.symbolic_trace(fun), ins, resource)
        assert evidence['resource_verified'] and auto.launch_count(evidence['source_code']) == 1
        entry, _ = inference_entry(binary)
        return entry, evidence

    graph = torch.fx.Graph()
    parts = [graph.placeholder('p' + str(i)) for i in range(chunks)]
    value = parts[0]
    for part in parts[1:]:
        value = graph.call_function(torch.add, (value, part))
    value = graph.call_method('to', (value, dtype))
    if keep:
        value = graph.call_method('unsqueeze', (value, -1))
    graph.output((value,))
    final_graph = torch.fx.GraphModule({}, graph)
    with target_scope(), config.patch(auto.compiler_options()), config.patch({'pattern_matcher': False}):
        with policy(legacy), partial_config():
            part, p1 = compile(partial, (xs[0][:, :256], xs[1][:256]), 'sdnn')
            tmp = part([xs[0][:, :256], xs[1][:256]])[0]
            torch.cuda.synchronize()
        final_inputs = tuple(tmp.clone() for _ in range(chunks))
        binary, p2 = gen.compile_region(final_graph, final_inputs, 'cluster')
        assert p2['resource_verified'] and auto.launch_count(p2['source_code']) == 1
        final, _ = inference_entry(binary)
        final(list(final_inputs))
        torch.cuda.synchronize()

    def call(a, b):
        partials = [part([a[:, j:j+256], b[j:j+256]])[0] for j in range(0, n, 256)]
        return final(partials)[0]

    return call, dict(
        regions=[p1, p2], kernel_count=chunks+1, partial_width=256,
        accumulator='float32', output=str(dtype),
        split=f'{chunks} native SDNN partial kernels followed by one cluster sum',
        partial_launches=chunks,
    )

def streamed(gm,xs,plan,*,legacy=False):
    """One native Inductor reduction, using a bounded inner tile for long rows."""
    from unittest.mock import patch
    from torch._inductor import config
    from torch._inductor.codegen.triton import TritonKernel
    from triton.experimental.graph_fusion import _resource_autotune as auto
    from triton.experimental.graph_fusion._resource_codegen import ResourceHeuristics as H
    base=H.__getattr__
    def lookup(obj,name):
        f=base(obj,name)
        if obj.resource!='sdnn':return f
        if name!='reduction':raise RuntimeError('streamed SDNN requires an Inductor loop reduction: '+name)
        def factory(*a,**k):
            deco=f(*a,**k)
            def decorate(fn):
                tuner=deco(fn);cfg=copy.deepcopy(tuner.configs[0]);keys=set(cfg.kwargs);r=keys&{'RBLOCK','R0_BLOCK'}
                assert len(r)==1 and 'XBLOCK' in keys,keys
                cfg.kwargs[r.pop()]=256;cfg.kwargs['XBLOCK']=1;cfg.num_warps=2;cfg.num_stages=1
                tuner.configs=[cfg];tuner.inductor_meta=dict(tuner.inductor_meta,coordinate_descent_tuning=False,autotune_local_cache=False);return tuner
            return decorate
        return factory
    with policy(legacy),patch.object(H,'__getattr__',lookup),config.patch({'triton.persistent_reductions':False}),patch.object(TritonKernel,'want_no_x_dim',lambda self:False):
        fn,pf=auto.compile_candidate(gm,xs,plan);fn(*xs)
    pf.update(inner_width=256,whole_row_in_one_kernel=True);return fn,pf
