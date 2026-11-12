"""Diagnostic isolated timings of the SAME bound region callables as the full plan.

These measurements cannot be added to predict end-to-end performance. Full-plan
measurement already includes intermediate materialization and dependencies.
"""
def measure(functions,gm,inputs,tolerance,bench):
    from triton.experimental.graph_fusion._resource_fx import build_region
    stages=[{},{}]
    for name,fn in functions.items():
        if not name.endswith('_at_1'):continue
        owner=getattr(fn,'__self__',None)
        assert owner is not None and hasattr(owner,'graph')
        calls=[n.target for n in owner.graph.nodes if n.op=='call_function' and getattr(n.target,'__name__','').startswith('flagtree_region_')]
        assert len(calls)==2
        for i,call in enumerate(calls):stages[i][name]=call
    if not stages[0]:return {}
    refs=[build_region(gm,a,b).gm for a,b in ((0,1),(1,2))]
    # All sum candidates receive the identical eager-materialized product,
    # preventing producer numerical differences from contaminating the comparison.
    product=refs[0](*inputs)
    return {'mul':bench.measure_candidates(stages[0],refs[0],inputs,tolerance),
            'sum':bench.measure_candidates(stages[1],refs[1],product,tolerance),
            'scope':'Isolated bound Inductor regions, same common CUDA Graph and ordinary-call protocol. Not additive; full-plan timing decides.',
            'sum_input':'Identical original-dtype eager product for every route'}
