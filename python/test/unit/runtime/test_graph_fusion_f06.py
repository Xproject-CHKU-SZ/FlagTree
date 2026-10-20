"""F06 expansion contracts: activation, LayerNorm, Mul+Sum and finite tuning."""

import math
import os
from types import SimpleNamespace

import pytest
import torch
import torch.nn.functional as F
from torch import fx

from triton.experimental import graph_fusion
from triton.experimental.graph_fusion import _backend, _tuning


@pytest.fixture(params=["cuda"])
def device(request):
    if not torch.cuda.is_available():
        pytest.skip("requires an accelerator")
    names = ("allow_tf32", "allow_fp16_reduced_precision_reduction", "allow_bf16_reduced_precision_reduction")
    policy = torch.backends.cuda.matmul
    previous = {name: getattr(policy, name) for name in names}
    for name in names:
        setattr(policy, name, False)
    yield request.param
    for name, value in previous.items():
        setattr(policy, name, value)


class MatmulBiasGelu(torch.nn.Module):
    def __init__(self, approximate="none"):
        super().__init__()
        self.approximate = approximate

    def forward(self, x, w, b):
        return F.gelu(x @ w + b, approximate=self.approximate)


class MatmulBiasSilu(torch.nn.Module):
    def forward(self, x, w, b):
        return F.silu(x @ w + b)


class AddGelu(torch.nn.Module):
    def __init__(self, approximate="none"):
        super().__init__()
        self.approximate = approximate

    def forward(self, x, r):
        return F.gelu(x + r, approximate=self.approximate)


class AddSilu(torch.nn.Module):
    def forward(self, x, r):
        return F.silu(x + r)


class AddLayerNorm(torch.nn.Module):
    def __init__(self, columns, *, weight=True, bias=True, eps=1e-5):
        super().__init__()
        self.normalized_shape = (columns,)
        self.eps = eps
        self.weight = torch.nn.Parameter(torch.randn(columns)) if weight else None
        self.bias = torch.nn.Parameter(torch.randn(columns)) if bias else None

    def forward(self, x, r):
        return F.layer_norm(x + r, self.normalized_shape, self.weight,
                            self.bias, self.eps)


class MulSum(torch.nn.Module):
    def __init__(self, keepdim=False):
        super().__init__()
        self.keepdim = keepdim

    def forward(self, x, r):
        return torch.sum(x * r, dim=-1, keepdim=self.keepdim)


def _rand(shape, device, dtype):
    return torch.randn(shape, generator=torch.Generator().manual_seed(61)).to(
        device=device, dtype=dtype)


def inputs_for(kind, device="cpu", dtype=torch.float32, *, rows=16, columns=128,
               k=64):
    if kind.startswith("matmul"):
        return (_rand((rows, k), device, dtype), _rand((k, columns), device, dtype),
                _rand((columns,), device, dtype))
    if kind.startswith("add_layernorm"):
        # Affine parameters are module attributes captured as FX get_attr nodes,
        # not forward arguments. Only the add operands are example inputs.
        return (_rand((rows, columns), device, dtype),
                _rand((columns,), device, dtype))
    if kind.startswith("mul_sum"):
        return (_rand((rows, columns), device, dtype),
                _rand((columns,), device, dtype))
    return (_rand((rows, columns), device, dtype),
            _rand((columns,), device, dtype))


MODULES = (
    (lambda: MatmulBiasGelu("none"), "matmul_bias_gelu_exact"),
    (lambda: MatmulBiasGelu("tanh"), "matmul_bias_gelu_tanh"),
    (MatmulBiasSilu, "matmul_bias_silu"),
    (lambda: AddGelu("none"), "add_gelu_exact"),
    (lambda: AddGelu("tanh"), "add_gelu_tanh"),
    (AddSilu, "add_silu"),
    (lambda: AddLayerNorm(128), "add_layernorm_affine"),
    (lambda: AddLayerNorm(128, weight=False, bias=False), "add_layernorm"),
    (lambda: MulSum(False), "mul_sum"),
    (lambda: MulSum(True), "mul_sum_keepdim"),
)


@pytest.mark.parametrize("factory,kind", MODULES)
def test_cpu_planning_fallback_and_composition(factory, kind):
    graph = fx.symbolic_trace(factory())
    inputs = inputs_for(kind)
    code = graph.code
    plan = graph_fusion.compile(graph, inputs)
    assert plan.groups[0][1].kind == kind
    assert plan.last_report["mode"] == "not_run"
    assert graph.code == code
    with torch.no_grad():
        torch.testing.assert_close(plan(*inputs), graph(*inputs), rtol=0, atol=0)
    assert plan.last_report["regions"][0]["reason"] == "unsupported_device"

    candidates = graph_fusion.composition_candidates(graph)
    assert candidates["scope"] == "single_fx_graph_operator_calls_only"
    selected = [item for item in candidates["selected"] if item["kind"] == kind]
    assert selected and selected[0]["cross_call"] is True
    assert selected[0]["calls"] == tuple(plan.explain()["templates"][0]["nodes"])


def test_gelu_exact_and_tanh_are_distinct_and_unsupported_is_rejected():
    exact = fx.symbolic_trace(MatmulBiasGelu("none"))
    tanh = fx.symbolic_trace(MatmulBiasGelu("tanh"))
    bad = fx.symbolic_trace(MatmulBiasGelu("linear"))
    inputs = inputs_for("matmul_bias_gelu_exact")
    assert graph_fusion.compile(exact, inputs).groups[0][1].kind == "matmul_bias_gelu_exact"
    assert graph_fusion.compile(tanh, inputs).groups[0][1].kind == "matmul_bias_gelu_tanh"
    bad_plan = graph_fusion.compile(bad, inputs)
    assert all(template.template_id != "matmul_bias_gelu"
               for template, _ in bad_plan.groups)


def test_inplace_silu_and_unknown_unary_are_not_rewritten():
    class InplaceSilu(torch.nn.Module):
        def forward(self, x, r):
            return F.silu(x + r, inplace=True)

    class TanhAdd(torch.nn.Module):
        def forward(self, x, r):
            return torch.tanh(x + r)

    for module in (InplaceSilu(), TanhAdd()):
        graph = fx.symbolic_trace(module)
        assert not graph_fusion.compile(graph, inputs_for("add_silu")).groups


def test_layernorm_negative_contracts():
    class MultiDimNorm(torch.nn.Module):
        def forward(self, x):
            return F.layer_norm(x, (4, 8))

    class BadEps(torch.nn.Module):
        def forward(self, x, r):
            return F.layer_norm(x + r, (128,), eps=float("nan"))

    class BadWeight(torch.nn.Module):
        def __init__(self):
            super().__init__()
            self.weight = torch.nn.Parameter(torch.randn(64))

        def forward(self, x, r):
            return F.layer_norm(x + r, (128,), self.weight)

    class WrongNormalizedShape(torch.nn.Module):
        def forward(self, x, r):
            return F.layer_norm(x + r, (64,))

    x = _rand((4, 32), "cpu", torch.float32)
    assert not graph_fusion.compile(
        fx.symbolic_trace(MultiDimNorm()), (x,)).groups
    assert not graph_fusion.compile(
        fx.symbolic_trace(BadEps()), inputs_for("add_layernorm")).groups
    graph = fx.symbolic_trace(BadWeight())
    plan = graph_fusion.compile(graph, inputs_for("add_layernorm"))
    assert plan.groups
    reason = _backend._check_layernorm("add_layernorm_weight",
                                     (inputs_for("add_layernorm")[0],
                                      inputs_for("add_layernorm")[1],
                                      torch.randn(64)))
    assert reason == "unsupported_layernorm_weight_shape"
    wrong_shape = fx.symbolic_trace(WrongNormalizedShape())
    wrong_inputs = inputs_for("add_layernorm")
    wrong_plan = graph_fusion.compile(wrong_shape, wrong_inputs)
    assert wrong_plan.groups
    wrong_reason = _backend._check_layernorm(
        "add_layernorm", wrong_inputs,
        options={"normalized_shape": (64,)})
    assert wrong_reason == "unsupported_layernorm_normalized_shape"


def test_mulsum_negative_contracts():
    class WrongAxis(torch.nn.Module):
        def forward(self, x, r):
            return torch.sum(x * r, dim=0)

    class DtypeOverride(torch.nn.Module):
        def forward(self, x, r):
            return torch.sum(x * r, dim=-1, dtype=torch.float64)

    class WrongBroadcast(torch.nn.Module):
        def forward(self, x, r):
            return torch.sum(x * r, dim=-1)

    inputs = inputs_for("mul_sum")
    assert not graph_fusion.compile(
        fx.symbolic_trace(WrongAxis()), inputs).groups
    assert not graph_fusion.compile(
        fx.symbolic_trace(DtypeOverride()), inputs).groups
    graph = fx.symbolic_trace(WrongBroadcast())
    plan = graph_fusion.compile(graph, (inputs[0], torch.randn(3, 7)))
    assert plan.groups
    reason = _backend._check_mul_sum((inputs[0], torch.randn(3, 7)))
    assert reason == "unsupported_mulsum_broadcast"


def test_training_dtype_and_intermediate_escape_fall_back():
    inputs = tuple(t.requires_grad_() for t in inputs_for("add_silu"))
    graph = fx.symbolic_trace(AddSilu())
    plan = graph_fusion.compile(graph, inputs)
    torch.testing.assert_close(plan(*inputs), graph(*inputs))
    assert plan.last_report["regions"][0]["reason"] == "training_requires_original_graph"

    double_inputs = inputs_for("add_silu", dtype=torch.float64)
    double_plan = graph_fusion.compile(fx.symbolic_trace(AddSilu()), double_inputs)
    torch.testing.assert_close(double_plan(*double_inputs),
                               fx.symbolic_trace(AddSilu())(*double_inputs))
    assert double_plan.last_report["regions"][0]["reason"] == "unsupported_dtype"

    class Escapes(torch.nn.Module):
        def forward(self, x, w, b):
            product = x @ w
            return F.gelu(product + b), product

    escape_graph = fx.symbolic_trace(Escapes())
    escape_plan = graph_fusion.compile(escape_graph,
                                       inputs_for("matmul_bias_gelu_exact"))
    assert all(not match.kind.startswith("matmul") for _, match in escape_plan.groups)
    torch.testing.assert_close(escape_plan(*inputs_for("matmul")),
                               escape_graph(*inputs_for("matmul")))
    assert any(item["reason"] == "intermediate_has_external_users"
               for item in escape_plan.rejected)


def test_finite_config_domains_are_bounded_and_valid():
    matrix = graph_fusion.finite_configs(
        "matmul_bias_gelu_exact", inputs_for("matmul_bias_gelu_exact"))
    assert matrix and all(set(config) == {
        "bm", "bn", "bk", "num_warps", "num_stages", "epi_block"}
        for config in matrix)
    assert all(config["bm"] & (config["bm"] - 1) == 0 for config in matrix)
    for kind in ("add_silu", "add_layernorm_affine", "mul_sum_keepdim"):
        domain = graph_fusion.finite_configs(kind, inputs_for(kind))
        assert domain and all(config for config in domain)
    # The retained three templates do not silently acquire a new tuning policy.
    assert not graph_fusion.finite_configs(
        "matmul_bias_relu", inputs_for("matmul_bias_relu"))


def test_tuning_plan_is_used_only_when_explicitly_attached(monkeypatch):
    kind = "add_silu"
    inputs = inputs_for(kind)
    plan_config = {"block": 256, "num_warps": 4}
    key = _tuning._key(kind, inputs)
    tuning = graph_fusion.TuningPlan(configs={key: plan_config},
                                     evidence={"test": {"selected": plan_config}})
    assert tuning.config_for(kind, inputs) == plan_config
    seen = []

    monkeypatch.setattr(_backend, "check", lambda *args: ("nvidia", None))

    def prepare(kind_name, values, backend, config=None):
        seen.append(config)
        def launch(current):
            return F.silu(current[0] + current[1]), SimpleNamespace(name="fake")
        def execute():
            return launch(values)
        execute.launch = launch
        return execute

    monkeypatch.setattr(_backend, "prepare", prepare)
    graph = fx.symbolic_trace(AddSilu())
    plan = graph_fusion.compile(graph, inputs, tuning=tuning)
    actual = plan(*inputs)
    torch.testing.assert_close(actual, graph(*inputs))
    assert seen == [plan_config]
    assert plan.explain()["tuning"]["configs"][str(key)] == plan_config


def test_tuning_cpu_selection_records_rejection_without_execution(monkeypatch):
    graph = fx.symbolic_trace(AddSilu())
    inputs = inputs_for("add_silu")
    tuning = graph_fusion.select_configs(graph, inputs)
    assert tuning.configs == {}
    record = next(iter(tuning.evidence.values()))
    assert record["reason"] == "unsupported_device"
    assert record["selected"] is None


def test_proposer_domain_filter_rejects_unvalidated_configs():
    inputs = inputs_for("add_silu")
    domain = graph_fusion.finite_configs("add_silu", inputs)
    valid, complete, rejected = _tuning._normalize_domain(
        "add_silu", inputs, [{"block": 512, "num_warps": 4},
                             {"block": 3, "num_warps": 4}, "junk"])
    assert valid == [{"block": 512, "num_warps": 4}]
    assert complete == domain
    assert {item["reason"] for item in rejected} == {
        "outside_validated_finite_domain", "not_a_dict"}


def _tolerances(dtype):
    if dtype == torch.bfloat16:
        return 3e-3, 3e-2
    if dtype == torch.float16:
        return 3e-3, 3e-3
    return 3e-4, 3e-4


def _require_accelerator(device):
    if device == "cpu" or not torch.cuda.is_available():
        pytest.skip("requires an accelerator")


def _skip_unsupported(kind, inputs):
    with torch.no_grad():
        backend, reason = _backend.check(kind, inputs)
    if reason:
        pytest.skip(f"backend not admitted: {reason}")
    return backend


@pytest.mark.parametrize("kind,dtype", [
    ("matmul_bias_gelu_exact", torch.float32),
    ("matmul_bias_gelu_tanh", torch.float16),
    ("matmul_bias_silu", torch.bfloat16),
])
def test_device_matrix_activation(kind, dtype, device):
    _require_accelerator(device)
    inputs = inputs_for("matmul", device, dtype, rows=17, columns=128)
    backend = _skip_unsupported(kind, inputs)
    graph = fx.symbolic_trace(MatmulBiasGelu("tanh" if kind.endswith("tanh") else "none")
                              if "gelu" in kind else MatmulBiasSilu())
    with torch.no_grad():
        plan = graph_fusion.compile(graph, inputs)
        actual = plan(*inputs)
        expected = graph(*inputs)
    assert plan.last_report["mode"] == "fused", plan.explain()
    rtol, atol = _tolerances(dtype)
    torch.testing.assert_close(actual, expected, rtol=rtol, atol=atol,
                               equal_nan=True)


@pytest.mark.parametrize("kind,dtype", [
    ("add_gelu_exact", torch.float32),
    ("add_gelu_tanh", torch.float16),
    ("add_silu", torch.bfloat16),
])
def test_device_add_activation(kind, dtype, device):
    _require_accelerator(device)
    inputs = inputs_for("add", device, dtype, rows=17, columns=256)
    backend = _skip_unsupported(kind, inputs)
    graph = fx.symbolic_trace(AddGelu("tanh") if kind.endswith("tanh") else
                              AddGelu("none") if "gelu" in kind else AddSilu())
    with torch.no_grad():
        plan = graph_fusion.compile(graph, inputs)
        actual = plan(*inputs)
        expected = graph(*inputs)
    assert plan.last_report["mode"] == "fused", plan.explain()
    rtol, atol = _tolerances(dtype)
    torch.testing.assert_close(actual, expected, rtol=rtol, atol=atol,
                               equal_nan=True)


@pytest.mark.parametrize("kind,dtype", [
    ("add_layernorm_affine", torch.float32),
    ("add_layernorm_affine", torch.float16),
    ("add_layernorm", torch.bfloat16),
])
def test_device_add_layernorm_last_axis(kind, dtype, device):
    _require_accelerator(device)
    columns = 256
    weight = kind == "add_layernorm_affine"
    inputs = inputs_for(kind, device, dtype, rows=8, columns=columns)
    module = AddLayerNorm(columns, weight=weight, bias=weight, eps=1e-3).to(
        device=device, dtype=dtype)
    check_inputs = ((inputs[0], inputs[1], module.weight, module.bias)
                    if weight else inputs)
    backend = _skip_unsupported(kind, check_inputs)
    graph = fx.symbolic_trace(module)
    with torch.no_grad():
        plan = graph_fusion.compile(graph, inputs)
        actual = plan(*inputs)
        expected = graph(*inputs)
    assert plan.last_report["mode"] == "fused", plan.explain()
    rtol, atol = _tolerances(dtype)
    torch.testing.assert_close(actual, expected, rtol=rtol, atol=atol,
                               equal_nan=True)


@pytest.mark.parametrize("kind,dtype,other_shape,keepdim", [
    ("mul_sum", torch.float32, (256,), False),
    ("mul_sum_keepdim", torch.float16, (1, 256), True),
    ("mul_sum", torch.bfloat16, (8, 1), False),
])
def test_device_mul_sum_broadcast_and_keepdim(kind, dtype, other_shape,
                                              keepdim, device):
    _require_accelerator(device)
    x = _rand((8, 256), device, dtype)
    other = _rand(other_shape, device, dtype)
    inputs = (x, other)
    backend = _skip_unsupported(kind, inputs)
    graph = fx.symbolic_trace(MulSum(keepdim))
    with torch.no_grad():
        plan = graph_fusion.compile(graph, inputs)
        actual = plan(*inputs)
        expected = graph(*inputs)
    assert plan.last_report["mode"] == "fused", plan.explain()
    if dtype == torch.bfloat16:
        rtol, atol = 3e-3, 3e-2
    elif dtype == torch.float16:
        rtol, atol = 3e-3, 3e-3
    else:
        rtol, atol = _tolerances(dtype)
    assert actual.shape == expected.shape
    assert actual.dtype == expected.dtype
    torch.testing.assert_close(actual, expected, rtol=rtol, atol=atol,
                               equal_nan=True)


@pytest.mark.parametrize("kind,dtype", [
    ("matmul_bias_gelu_exact", torch.float16),
    ("matmul_bias_gelu_tanh", torch.bfloat16),
    ("matmul_bias_silu", torch.float16),
])
def test_device_lowp_matrix_activation(kind, dtype, device):
    _require_accelerator(device)
    inputs = inputs_for("matmul", device, dtype, rows=17, columns=128)
    backend = _skip_unsupported(kind, inputs)
    graph = fx.symbolic_trace(MatmulBiasGelu("tanh" if kind.endswith("tanh") else "none")
                              if "gelu" in kind else MatmulBiasSilu())
    originals = tuple(t.clone() for t in inputs)
    with torch.no_grad():
        plan = graph_fusion.compile(graph, inputs)
        actual = plan(*inputs)
        expected = graph(*inputs)
    assert plan.last_report["mode"] == "fused", plan.explain()
    rtol, atol = _tolerances(dtype)
    torch.testing.assert_close(actual, expected, rtol=rtol, atol=atol,
                               equal_nan=True)
    for tensor, original in zip(inputs, originals):
        torch.testing.assert_close(tensor, original, rtol=0, atol=0)


def test_device_nonfinite_new_activations(device):
    _require_accelerator(device)
    x = _rand((8, 256), device, torch.float32)
    r = _rand((256,), device, torch.float32)
    x[0, 0], x[1, 0], x[2, 0] = float("nan"), float("inf"), -float("inf")
    for module, kind in ((AddGelu("none"), "add_gelu_exact"),
                         (AddGelu("tanh"), "add_gelu_tanh"),
                         (AddSilu(), "add_silu")):
        backend = _skip_unsupported(kind, (x, r))
        graph = fx.symbolic_trace(module)
        with torch.no_grad():
            plan = graph_fusion.compile(graph, (x, r))
            actual = plan(x, r)
            expected = graph(x, r)
        assert plan.last_report["mode"] == "fused", plan.explain()
        torch.testing.assert_close(actual, expected, rtol=3e-4, atol=3e-4,
                                   equal_nan=True)


@pytest.mark.skipif(os.environ.get("F06_GPU_TUNING") != "1",
                    reason="explicit GPU candidate benchmarking is opt-in")
def test_device_tuning_selects_and_caches_outside_capture(device):
    _require_accelerator(device)
    graph = fx.symbolic_trace(AddSilu())
    inputs = inputs_for("add_silu", device, torch.float32, rows=8, columns=256)
    _skip_unsupported("add_silu", inputs)
    proposer_calls = []

    def proposer(benchmark_fn, shape, initial_configs, meta):
        proposer_calls.append((benchmark_fn, shape, meta))
        return initial_configs[:2]

    tuning = graph_fusion.select_configs(graph, inputs, proposer=proposer,
                                         benchmarker=None)
    record = next(iter(tuning.evidence.values()))
    assert proposer_calls and proposer_calls[0][0] is None
    assert record["source"] == "flagtune_model_ranked"
    assert record["correctness"] == "passed"
    assert record["selected"] in graph_fusion.finite_configs("add_silu", inputs)
    assert record["protocol"] is not None
    assert math.isfinite(record["latency_ms"]) and record["latency_ms"] >= 0
    plan = graph_fusion.compile(graph, inputs, tuning=tuning)
    with torch.no_grad():
        actual = plan(*inputs)
        expected = graph(*inputs)
    assert plan.last_report["mode"] == "fused", plan.explain()
    torch.testing.assert_close(actual, expected, rtol=3e-4, atol=3e-4)


def test_select_configs_rejects_capture_before_any_work(monkeypatch):
    calls = []

    def proposer(*args, **kwargs):
        calls.append("proposer")
        return []

    def benchmarker(*args, **kwargs):
        calls.append("benchmark")
        return [1.0]

    monkeypatch.setattr(_tuning, "_stream_capturing", lambda inputs: True)
    graph = fx.symbolic_trace(AddSilu())
    inputs = inputs_for("add_silu")
    with pytest.raises(RuntimeError, match="outside CUDA graph capture"):
        graph_fusion.select_configs(graph, inputs, proposer=proposer,
                                    benchmarker=benchmarker)
    assert calls == []


class _AddStage(torch.nn.Module):
    def forward(self, x, r):
        return x + r


class _MulStage(torch.nn.Module):
    def forward(self, x, r):
        return x * r


class _GeluStage(torch.nn.Module):
    def forward(self, y):
        return F.gelu(y)


class _SumStage(torch.nn.Module):
    def forward(self, y):
        return torch.sum(y, dim=-1)


def test_cross_call_candidate_add_gelu_and_mul_sum():
    x = _rand((8, 128), "cpu", torch.float32)
    r = _rand((128,), "cpu", torch.float32)
    add_gelu = graph_fusion.cross_call_candidate(
        (fx.symbolic_trace(_AddStage()), fx.symbolic_trace(_GeluStage())), (x, r))
    assert add_gelu.accepted, add_gelu.reason
    assert add_gelu.template == "add_gelu"
    assert len(add_gelu.calls) == 2
    with torch.no_grad():
        plan = add_gelu.compile((x, r))
        torch.testing.assert_close(plan(x, r), F.gelu(x + r), rtol=0, atol=0)
    assert plan.last_report["reason"] == "completed"

    mul_sum = graph_fusion.cross_call_candidate(
        (fx.symbolic_trace(_MulStage()), fx.symbolic_trace(_SumStage())), (x, r))
    assert mul_sum.accepted, mul_sum.reason
    assert mul_sum.template == "mul_sum"
    with torch.no_grad():
        plan = mul_sum.compile((x, r))
        torch.testing.assert_close(plan(x, r), torch.sum(x * r, dim=-1),
                                   rtol=0, atol=0)


def test_cross_call_rejections_and_no_execution():
    x = _rand((8, 128), "cpu", torch.float32)
    r = _rand((128,), "cpu", torch.float32)

    class Mutates(torch.nn.Module):
        def forward(self, value):
            value.add_(1)
            return value

    class CallModule(torch.nn.Module):
        def __init__(self):
            super().__init__()
            self.act = torch.nn.ReLU()

        def forward(self, value):
            return self.act(value)

    class MultiOutput(torch.nn.Module):
        def forward(self, value):
            return value, value

    class Unknown(torch.nn.Module):
        def forward(self, value):
            return torch.sigmoid(value)

    assert graph_fusion.cross_call_candidate(
        (fx.symbolic_trace(Mutates()), fx.symbolic_trace(_GeluStage())),
        (x,)).reason == "mutable_call_method"
    assert graph_fusion.cross_call_candidate(
        (fx.symbolic_trace(MultiOutput()), fx.symbolic_trace(_GeluStage())),
        (x,)).reason == "stage_must_return_one_tensor"
    assert graph_fusion.cross_call_candidate(
        (fx.symbolic_trace(CallModule()), fx.symbolic_trace(_GeluStage())),
        (x,)).reason.startswith("unsupported_stage_op")
    assert graph_fusion.cross_call_candidate(
        (fx.symbolic_trace(Unknown()), fx.symbolic_trace(_GeluStage())),
        (x,)).reason == "no_supported_template_covers_chain"
    assert graph_fusion.cross_call_candidate(
        (fx.symbolic_trace(_AddStage()),), (x, r)).reason == "requires_at_least_two_stages"


def test_cross_call_live_parameters_are_not_snapshotted():
    class MatmulBias(torch.nn.Module):
        def __init__(self, columns=128, k=64):
            super().__init__()
            self.w = torch.nn.Parameter(torch.randn(k, columns))
            self.b = torch.nn.Parameter(torch.randn(columns))

        def forward(self, x):
            return x @ self.w + self.b

    stage = fx.symbolic_trace(MatmulBias())
    x = _rand((8, 64), "cpu", torch.float32)
    candidate = graph_fusion.cross_call_candidate(
        (stage, fx.symbolic_trace(_GeluStage())), (x,))
    assert candidate.accepted, candidate.reason
    assert candidate.template == "matmul_bias_gelu"
    original_w = stage.w.detach().clone()
    original_b = stage.b.detach().clone()
    with torch.no_grad():
        plan = candidate.compile((x,))
        first = plan(x)
        expected_first = F.gelu(x @ original_w + original_b)
        stage.w = torch.nn.Parameter(torch.ones_like(stage.w))
        stage.b = torch.nn.Parameter(torch.zeros_like(stage.b))
        second = plan(x)
        expected_second = F.gelu(x @ torch.ones(64, 128))
    torch.testing.assert_close(first, expected_first, rtol=3e-4, atol=3e-4)
    torch.testing.assert_close(second, expected_second, rtol=3e-4, atol=3e-4)


def test_warm_is_explicit_ordinary_preparation():
    graph = fx.symbolic_trace(AddSilu())
    inputs = inputs_for("add_silu")
    plan = graph_fusion.compile(graph, inputs)
    with torch.no_grad():
        actual = plan.warm(*inputs)
        expected = graph(*inputs)
    torch.testing.assert_close(actual, expected)
    assert plan.last_report["reason"] == "completed"


def test_flagtune_scalar_event_result_and_invalid_timing():
    values, protocol = _tuning._benchmark_call(lambda fn: (1.25, {"resolved_mode": "event"}), lambda: None)
    assert values == [1.25] and protocol["resolved_mode"] == "event"
    for invalid in (-1.0, float("nan"), float("inf")):
        with pytest.raises(ValueError):
            _tuning._benchmark_call(lambda fn: invalid, lambda: None)


@pytest.mark.parametrize('kind', ['matmul_bias_gelu_exact', 'matmul_bias_gelu_tanh', 'matmul_bias_silu'])
@pytest.mark.parametrize('dtype', [torch.float16, torch.bfloat16])
@pytest.mark.parametrize('shape', [(17, 127, 65), (5, 129, 63), (32, 255, 129)])
def test_device_expanded_lowp_tails(kind, dtype, shape, device):
    m, n, k = shape
    inputs = tuple(_rand(s, device, dtype) for s in ((m, k), (k, n), (n,)))
    _skip_unsupported(kind, inputs)
    module = (MatmulBiasSilu() if kind.endswith('silu') else
              MatmulBiasGelu('tanh' if kind.endswith('tanh') else 'none'))
    graph = fx.symbolic_trace(module)
    originals = tuple(x.clone() for x in inputs)
    with torch.no_grad():
        plan = graph_fusion.compile(graph, inputs)
        actual = plan(*inputs)
        assert plan.last_report['mode'] == 'fused', plan.explain()
        torch.testing.assert_close(actual, graph(*inputs), rtol=3e-3,
                                   atol=3e-2 if dtype == torch.bfloat16 else 3e-3)
    for x, old in zip(inputs, originals):
        torch.testing.assert_close(x, old, rtol=0, atol=0)
