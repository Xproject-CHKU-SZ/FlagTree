"""Opt-in native-Dynamo backend for already validated resource partitions.

Profiling and plan acceptance happen offline. No tuning, graph analysis or
resource decisions occur in the returned hot-path wrapper.
"""
import hashlib
import json


def plan_identity(plan, matmul_path):
    payload = {
        'context': plan.context_key, 'matmul_path': matmul_path, 'regions':
        [(r.start, r.end, r.resource, r.evidence_id) for r in plan.regions]
    }
    return hashlib.sha256(json.dumps(payload, sort_keys=True).encode()).hexdigest()


def prepare_plan(gm, example_inputs, plan, *, matmul_path='template'):
    """Compile a proposed plan for offline full-graph acceptance, not deployment."""
    import torch.fx
    from torch.fx.node import map_arg
    from ._resource_fx import build_region, collect_example_values
    from ._resource_codegen import compile_region
    import operator
    # Fake values propagate through the original operators, without running
    # kernels or choosing configs in a device capture.
    from torch._subclasses.fake_tensor import FakeTensorMode
    from torch._guards import detect_fake_mode
    fake_mode = detect_fake_mode(example_inputs) or FakeTensorMode(allow_non_fake_inputs=True)
    with fake_mode:
        fake_inputs = tuple(fake_mode.from_tensor(x) if isinstance(x, torch.Tensor) else x for x in example_inputs)
        values = collect_example_values(gm, fake_inputs)
    graph = torch.fx.Graph()
    env = {}
    for node in gm.graph.nodes:
        if node.op == 'placeholder':
            env[node.name] = graph.node_copy(node, lambda n: env[n.name])
        elif node.op == 'get_attr':

            def live_attr(target):

                def read():
                    value = gm
                    for atom in target.split('.'):
                        value = getattr(value, atom)
                    return value

                read.__name__ = 'flagtree_attr_' + target.replace('.', '_')
                read.__qualname__ = read.__name__
                return read

            env[node.name] = graph.call_function(live_attr(node.target), ())
    evidence = []
    cursor = 0
    compute = [n for n in gm.graph.nodes if n.op in ('call_function', 'call_method')]
    for item in plan.regions:
        if item.start != cursor or item.end <= cursor or item.end > len(compute):
            raise ValueError('partition coverage is not contiguous/complete')
        region = build_region(gm, item.start, item.end)
        if tuple(region.node_ids) != tuple(item.node_ids):
            raise ValueError('partition compute nodes changed')
        # Match offline profiling: only matrix-containing regions enable native
        # template candidates; pointwise/reduction regions keep the native path.
        matrix_targets = {
            torch.matmul, torch.mm, torch.bmm, operator.matmul, torch.ops.aten.mm.default, torch.ops.aten.bmm.default,
            torch.ops.aten.matmul.default
        }
        region_path = matmul_path if any(n.op == 'call_function' and n.target in matrix_targets
                                         for n in region.gm.graph.nodes) else 'external'
        compiled, proof = compile_region(region.gm, tuple(values[n] for n in region.input_names), item.resource,
                                         matmul_path=region_path)
        if not proof['resource_verified']:
            raise RuntimeError('region lacks verified resource evidence; external calls remain barriers')

        def bind(binary, key):

            def run(*xs):
                return tuple(binary(list(xs)))

            run.__name__ = 'flagtree_region_' + key
            run.__qualname__ = run.__name__
            return run

        call = graph.call_function(bind(compiled, str(item.start)), tuple(env[n] for n in region.input_names))
        for index, name in enumerate(region.output_names):
            env[name] = graph.call_function(operator.getitem, (call, index))
        evidence.append(proof)
        cursor = item.end
    if cursor != len(compute): raise ValueError('partition does not cover graph')
    output = next(n for n in gm.graph.nodes if n.op == 'output')
    graph.output(map_arg(output.args[0], lambda n: env[n.name]))
    prepared = torch.fx.GraphModule(gm, graph)
    return prepared.forward, {
        'plan_id': plan_identity(plan, matmul_path), 'regions': evidence, 'wrapper': prepared.code
    }


def resource_backend(observations, *, environment_key, accepted_plan_ids=(), matmul_path='template', audit=None):
    """Return a torch.compile backend retaining native Dynamo guards.

    `accepted_plan_ids` must come from full-plan ordinary/repeated/special-value
    and end-to-end performance acceptance in this exact environment. Missing or
    rejected profiles/acceptance retain native whole-graph Inductor behavior.
    The explicit external MatMul experiment is an unverified barrier route and
    must not be represented by fabricated SDNN observations.
    """
    from ._resource_planner import choose_partition, PartitionPlan
    from ._resource_fx import context_fingerprint, build_all_regions, UnsupportedGraph
    from ._resource_codegen import baidu_target
    if matmul_path not in ('external', 'template'): raise ValueError('unknown MatMul path')
    if not isinstance(environment_key, str) or not environment_key.strip(): raise ValueError('environment key required')
    profiles = tuple(observations)
    accepted = frozenset(accepted_plan_ids)

    def backend(gm, inputs):
        from torch._inductor.compile_fx import compile_fx

        def fallback(reason):
            if audit is not None: audit.append({'status': 'native_fallback', 'reason': reason})
            return compile_fx(gm, inputs)

        if baidu_target() is None: return fallback('non_baidu_backend')
        try:
            context = context_fingerprint(gm, inputs, environment_key)
            regions = build_all_regions(gm)
            nodes = next(r.node_ids for r in regions if r.start == 0 and r.end == max(x.end for x in regions))
        except (UnsupportedGraph, ValueError, StopIteration) as exc:
            return fallback('unsupported_graph: ' + str(exc))
        plan = choose_partition(nodes, context, profiles, is_baidu_backend=True)
        if not isinstance(plan, PartitionPlan): return fallback('no_valid_profiled_plan')
        if plan_identity(plan, matmul_path) not in accepted: return fallback('plan_not_accepted_end_to_end')
        fn, proof = prepare_plan(gm, inputs, plan, matmul_path=matmul_path)
        if audit is not None: audit.append({'status': 'resource_partition', 'proof': proof})
        return fn

    return backend
