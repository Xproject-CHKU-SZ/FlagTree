"""Diagnostic split: native SDNN MatMul followed by native cluster epilogue."""


def compile_split(gm, inputs, codegen):
    import torch
    import operator
    placeholders = [n for n in gm.graph.nodes if n.op == 'placeholder']
    dots = [n for n in gm.graph.nodes if n.op == 'call_function' and n.target in (torch.mm, torch.matmul, operator.matmul)]
    assert len(inputs) == len(placeholders) == 3 and len(dots) == 1
    dot = dots[0]
    assert tuple(dot.args) == tuple(placeholders[:2]) and not dot.kwargs
    before = torch.fx.Graph()
    mapping = {n:before.placeholder(n.name) for n in placeholders[:2]}
    value = before.node_copy(dot, lambda n:mapping[n])
    before.output((value,))
    matrix = torch.fx.GraphModule(gm, before)
    after = torch.fx.Graph()
    mapping = {dot:after.placeholder('matrix_result'), placeholders[2]:after.placeholder(placeholders[2].name)}
    for node in gm.graph.nodes:
        if node is dot or node.op == 'placeholder':
            continue
        mapping[node] = after.node_copy(node, lambda n:mapping[n])
    post = torch.fx.GraphModule(gm, after)
    first, first_proof = codegen.compile_region(matrix, inputs[:2], 'sdnn', matmul_path='template')
    intermediate = first(list(inputs[:2]))[0]
    second, second_proof = codegen.compile_region(post, (intermediate, inputs[2]), 'cluster', matmul_path='external')
    for proof in (first_proof, second_proof):
        assert proof['resource_verified'] and not proof['external_calls']

    def compiled(boxed_inputs):
        assert len(boxed_inputs) == 3
        matrix_result = first(list(boxed_inputs[:2]))[0]
        return second([matrix_result, boxed_inputs[2]])

    compiled.components = [('matmul_sdnn', first, matrix, tuple(inputs[:2])),
                           ('bias_activation_cluster', second, post, (intermediate, inputs[2]))]
    return compiled, dict(resource='split_sdnn_cluster', resource_verified=True, external_calls=0,
        kernel_evidence=first_proof['kernel_evidence']+second_proof['kernel_evidence'],
        components=[dict(stage='matmul', proof=first_proof), dict(stage='bias_activation', proof=second_proof)],
        source_code='# SDNN MatMul module\n'+first_proof['source_code']+'\n# Cluster epilogue module\n'+second_proof['source_code'])


def measure_components(compiled, spec):
    """Same graph protocol for validated components; component failures stay explicit."""
    import statistics
    import time
    import torch
    results = []
    for name, native, reference, inputs in compiled.components:
        report = dict(name=name, status='running')
        def fn():
            return native(list(inputs))[0]
        def close(actual, expected):
            torch.testing.assert_close(actual.detach().cpu(), expected.detach().cpu(), **spec['tolerance'])
        expected = reference(*inputs)[0]
        originals = tuple(x.clone() for x in inputs)
        try:
            close(fn(), expected)
            changed = tuple(x+0.015 for x in inputs)
            close(native(list(changed))[0], reference(*changed)[0])
            special = tuple(x.clone() for x in inputs)
            special[0].view(-1)[:5] = torch.tensor([float('nan'),float('inf'),-float('inf'),0.,-0.],
                                               device=inputs[0].device,dtype=inputs[0].dtype)
            got, want = native(list(special))[0].cpu(), reference(*special)[0].cpu()
            torch.testing.assert_close(got, want, equal_nan=True, **spec['tolerance'])
            assert torch.equal(torch.isnan(got),torch.isnan(want)) and torch.equal(torch.isinf(got),torch.isinf(want))
            for _ in range(256):
                fn()
            torch.cuda.synchronize()
            e2e=[]
            for _ in range(31):
                torch.cuda.synchronize(); begin=time.perf_counter_ns(); fn(); torch.cuda.synchronize()
                e2e.append((time.perf_counter_ns()-begin)/1000)
            stream=torch.cuda.Stream()
            torch.cuda.synchronize()
            with torch.cuda.stream(stream):
                for _ in range(16):
                    fn()
            torch.cuda.synchronize()
            repetitions=8 if name=='matmul_sdnn' and spec['M']==2048 else 64
            graph=torch.cuda.CUDAGraph()
            with torch.cuda.graph(graph, stream=stream):
                for _ in range(repetitions-1):
                    fn()
                output=fn()
            for _ in range(3):
                graph.replay()
            close(output, expected)
            for x in inputs:
                x.add_(0.015)
            graph.replay(); close(output, reference(*inputs)[0])
            for x, original in zip(inputs, originals):
                x.copy_(original)
            graph.replay(); close(output, expected)
            samples=[]
            for _ in range(7):
                a,b=torch.cuda.Event(enable_timing=True),torch.cuda.Event(enable_timing=True)
                torch.cuda.synchronize(); a.record()
                for _ in range(20):
                    graph.replay()
                b.record(); b.synchronize()
                samples.append(a.elapsed_time(b)*1000/(20*repetitions))
            close(output, expected)
            report.update(status='passed',gpu_us=dict(median_us=statistics.median(samples),samples_us=samples,
                          invocations_per_graph=repetitions,replays_per_sample=20),
                          e2e_us=dict(median_us=statistics.median(e2e),samples_us=e2e))
        except AssertionError as exc:
            report.update(status='numerical_failure',error=str(exc))
        finally:
            for x, original in zip(inputs, originals):
                x.copy_(original)
            torch.cuda.synchronize()
        results.append(report)
    return results
