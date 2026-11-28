from unittest.mock import patch

import torch
import pytest
from torch.fx.experimental.proxy_tensor import make_fx

from triton.experimental.graph_fusion._graph_cleanup import prune_graph
from triton.experimental.graph_fusion._execution_plan import ExecutionPlans
from triton.experimental.graph_fusion._model_pipeline import compile_pipeline
from triton.experimental.graph_fusion._whole_model_selection import ModelRoute, select_whole_model


def test_dead_nodes_and_common_subexpressions():
    def f(x):
        unused = (x + x).relu()
        return (x + 1).sigmoid() + (x + 1).tanh(), x

    x = torch.randn(8)
    gm = make_fx(f)(x)
    assert prune_graph(gm) == {'dead_nodes': 2, 'common_subexpressions': 1}
    got = gm(x)
    torch.testing.assert_close(got[0], f(x)[0])
    assert got[1] is x


def test_alias_observers_mutation_and_random_effects():
    def f(x):
        public = x + 1
        other = x + 1
        internal = (x + 1).sigmoid()
        view = other.view(-1)
        x.add_(2)
        new = (x + 1).tanh()
        torch.rand_like(x)
        return public, view, internal, new

    x = torch.randn(4)
    gm = make_fx(f)(x.clone())
    prune_graph(gm)
    torch.manual_seed(61)
    ref_x = x.clone()
    expected = f(ref_x)
    next_random = torch.rand(1)
    torch.manual_seed(61)
    actual_x = x.clone()
    got = gm(actual_x)
    torch.testing.assert_close(next_random, torch.rand(1))
    torch.testing.assert_close(expected, got)
    torch.testing.assert_close(actual_x, ref_x)
    assert got[0].untyped_storage()._cdata != got[1].untyped_storage()._cdata


def test_write_to_alias_between_reads_and_opaque_calls():
    def f(x):
        a = (x + 1).sigmoid()
        x.view(-1).add_(9)
        b = (x + 1).tanh()
        return a,b
    x = torch.randn(4)
    gm = make_fx(f)(x.clone())
    assert prune_graph(gm)['common_subexpressions'] == 0
    torch.testing.assert_close(gm(x.clone()), f(x.clone()))


def test_plan_identity_and_failed_build():
    x = torch.randn(4, 4)
    gm = make_fx(lambda a,b:a-b)(x,x.clone())
    cache = ExecutionPlans()
    def compile_one(graph, args, schedule=(), build=lambda: (lambda: None)):
        record = dict(pointwise_resource_candidates=[], fp16_buffer_kernels=[], matrix_candidates=[])
        return cache.compile(graph, args, schedule, build, record)
    y = x.clone()
    a = compile_one(gm,[x,y])
    other = make_fx(lambda a,b:a-b)(x,y)
    assert compile_one(other,[x,y]) is a
    assert compile_one(gm,[x,x]) is not a
    assert compile_one(gm,[x.t(),y]) is not a
    assert compile_one(gm,[x,y],('sdnn',512)) is not a
    assert compile_one(make_fx(lambda a,b:b-a)(x,y),[x,y]) is not a
    def fail():
        raise RuntimeError('compile failed')
    with pytest.raises(RuntimeError, match='compile failed'):
        compile_one(gm,[x,y],('retry',),fail)
    assert compile_one(gm,[x,y],('retry',)) is not a


def test_incomplete_graph_metadata_skips_reuse():
    x = torch.randn(4)
    gm = make_fx(torch.relu)(x)
    node = next(node for node in gm.graph.nodes if node.op == 'call_function')
    node.meta.clear()
    cache = ExecutionPlans()
    first = cache.compile(gm, [x], (), object, {})
    assert cache.compile(gm, [x], (), object, {}) is not first


def test_end_to_end_compilation_and_timing_dedup():
    class M(torch.nn.Module):
        def forward(self, x):
            unused = (x + 2).neg()
            return x.relu()

    model = M().eval()
    x = torch.randn(4)
    prepare = lambda v: ((v,), {})
    plans = ExecutionPlans()
    measured = []
    seen = []
    def validate(name, out, args, kwargs):
        seen.append(name)
        torch.testing.assert_close(out, model(*args))
    def measure(fn):
        measured.append(fn)
        return [.001]

    from torch._inductor.compile_fx import compile_fx
    with torch.no_grad(), patch('torch._inductor.compile_fx.compile_fx', wraps=compile_fx) as compiler:
        routes = {}
        for policy in ('generated','native_mul'):
            candidate = compile_pipeline(model, prepare=prepare, tolerance=dict(atol=.0003,rtol=.0003),
                vendor_capture=False, precision_policy='preserve_operator', _execution_plans=plans,
                precision_options=dict(pointwise_policy=policy,require_compiled=True))
            routes[policy] = ModelRoute(candidate)
        audit = {}
        selected = select_whole_model(routes, validation_inputs=[((x,),{})], measure_on_validation_inputs=True,
            validate=validate, measure=measure, record=audit, rounds=4)
        assert sum('config_patches' in call.kwargs for call in compiler.call_args_list) == 1
        assert routes['generated'].call._f06_audit[0]['graph_cleanup']['dead_nodes'] >= 1
        assert seen == ['generated','native_mul']
        assert audit['timing_aliases'] == {'native_mul':'generated'}
        assert len(measured) == 4
        measured.clear()
        select_whole_model(routes, validation_inputs=[((x,), {})],
                           validate=validate, measure=measure, record=audit, rounds=4)
        assert audit['timing_aliases'] == {}
        assert len(measured) == 8
        torch.testing.assert_close(selected(x+2), model(x+2))
        fresh = torch.randn(7)
        torch.testing.assert_close(selected(fresh), model(fresh))


def test_dead_matrix_branch_and_public_layout():
    def f(a, b):
        unused = torch.mm(a, b).transpose(0, 1).relu()
        return {'logits': a+b, 'aux': a.transpose(0, 1)}

    a, b = torch.randn(4, 4), torch.randn(4, 4)
    gm = make_fx(f)(a, b)
    assert prune_graph(gm)['dead_nodes'] == 3
    out = gm(a, b)
    torch.testing.assert_close(out, f(a, b))
    assert out['aux'].stride() == a.transpose(0, 1).stride()
    assert out['aux'].untyped_storage()._cdata == a.untyped_storage()._cdata


def test_plan_key_preserves_floating_bits_and_named_outputs():
    x = torch.randn(4)
    cache = ExecutionPlans()
    def run(f):
        gm = make_fx(f)(x)
        return cache.compile(gm, (x,), (), lambda: gm.forward, {})
    positive = run(lambda a: a * 0.0)
    negative = run(lambda a: a * -0.0)
    assert positive is not negative
    first = run(lambda a: (a.relu(), a.neg()))
    second = run(lambda a: (a.neg(), a.relu()))
    assert first is not second
