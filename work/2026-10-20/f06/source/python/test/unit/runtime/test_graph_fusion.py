"""CPU contract tests and real-device tests for the F06 FX MVP."""

import operator
import os

import pytest
import torch
from torch import fx
import triton

from triton.experimental import graph_fusion
from triton.experimental.graph_fusion import _backend


class MatmulBias(torch.nn.Module):
    def forward(self, x, w, b):
        return x @ w + b


class MatmulBiasRelu(torch.nn.Module):
    def forward(self, x, w, b):
        return torch.relu(x @ w + b)


class AddSoftmax(torch.nn.Module):
    def forward(self, x, r):
        return torch.softmax(x + r, dim=-1)


def inputs_for(kind, device="cpu", dtype=torch.float32, *, rows=16, columns=128):
    def rand(shape):
        # Identical CPU-generated inputs can be compared across device stacks.
        return torch.randn(shape, generator=torch.Generator().manual_seed(61)).to(device=device, dtype=dtype)
    if kind == "add_softmax":
        return rand((rows, columns)), rand((columns,))
    return rand((rows, 64)), rand((64, columns)), rand((columns,))


MODELS = [(MatmulBias, "matmul_bias"), (MatmulBiasRelu, "matmul_bias_relu"), (AddSoftmax, "add_softmax")]


@pytest.mark.parametrize("model,kind", MODELS)
def test_plan_does_not_execute_and_cpu_fallback_matches(model, kind):
    graph = fx.symbolic_trace(model())
    inputs = inputs_for(kind)
    code = graph.code
    plan = graph_fusion.compile(graph, inputs)
    assert [x["id"] for x in plan.explain()["templates"]] == [kind]
    assert plan.last_report["mode"] == "not_run"
    torch.testing.assert_close(plan(*inputs), graph(*inputs), rtol=0, atol=0)
    assert plan.last_report["regions"][0]["reason"] == "unsupported_device"
    assert graph.code == code


def test_longest_template_and_intermediate_escape():
    class Escapes(torch.nn.Module):
        def forward(self, x, w, b):
            product = x @ w
            return torch.relu(product + b), product
    graph = fx.symbolic_trace(Escapes())
    plan = graph_fusion.compile(graph, inputs_for("matmul_bias"))
    assert not plan.groups
    assert any(r["reason"] == "intermediate_has_external_users" for r in plan.rejected)
    torch.testing.assert_close(plan(*inputs_for("matmul_bias")), graph(*inputs_for("matmul_bias")))


def test_unknown_side_effect_blocks_fusion_and_runs_once():
    graph = fx.Graph()
    x, w, b = [graph.placeholder(n) for n in ("x", "w", "b")]
    product = graph.call_function(operator.matmul, (x, w))
    graph.call_method("add_", (b, 1.0))
    out = graph.call_function(operator.add, (product, b))
    graph.output(out)
    gm = fx.GraphModule({}, graph)
    inputs = inputs_for("matmul_bias")
    original_bias = inputs[-1].clone()
    plan = graph_fusion.compile(gm, inputs)
    assert not plan.groups
    assert plan.rejected[0]["reason"] == "intervening_computation_or_side_effect"
    assert torch.equal(inputs[-1], original_bias)  # planning did not run mutation
    output = plan(*inputs)
    torch.testing.assert_close(inputs[-1], original_bias + 1)
    torch.testing.assert_close(output, inputs[0] @ inputs[1] + original_bias + 1)


def test_disable_and_static_shape_guard(monkeypatch):
    inputs = inputs_for("add_softmax")
    gm = fx.symbolic_trace(AddSoftmax())
    plan = graph_fusion.compile(gm, inputs, enabled=False)
    torch.testing.assert_close(plan(*inputs), gm(*inputs))
    assert plan.last_report["reason"] == "disabled"
    plan.enabled = True
    changed = inputs_for("add_softmax", rows=3)
    monkeypatch.setattr(_backend, "prepare", lambda *args: pytest.fail("guard must precede kernel preparation"))
    torch.testing.assert_close(plan(*changed), gm(*changed))
    assert plan.last_report["reason"] == "static_input_guard_failed"


def test_inference_guard_keeps_autograd():
    inputs = tuple(t.requires_grad_() for t in inputs_for("matmul_bias"))
    plan = graph_fusion.compile(fx.symbolic_trace(MatmulBiasRelu()), inputs)
    result = plan(*inputs)
    result.sum().backward()
    assert all(t.grad is not None for t in inputs)
    assert plan.last_report["regions"][0]["reason"] == "training_requires_original_graph"


def test_live_parameter_values_are_read_on_each_call():
    class Weighted(torch.nn.Module):
        def __init__(self):
            super().__init__()
            self.register_buffer("w", torch.randn(64, 128))
            self.register_buffer("b", torch.randn(128))

        def forward(self, x):
            return x @ self.w + self.b
    gm = fx.symbolic_trace(Weighted())
    x = torch.randn(16, 64)
    plan = graph_fusion.compile(gm, (x,))
    gm.b = torch.ones_like(gm.b)
    torch.testing.assert_close(plan(x), gm(x))


@pytest.mark.parametrize("case", ["alpha", "axis", "out", "dtype", "inplace"])
def test_semantically_different_patterns_are_not_rewritten(case):
    graph = fx.Graph()
    x, r = [graph.placeholder(n) for n in ("x", "r")]
    if case == "inplace":
        w = graph.placeholder("w")
        mm = graph.call_function(torch.mm, (x, w))
        add = graph.call_function(torch.add, (mm, r))
        out = graph.call_function(torch.nn.functional.relu, (add,), {"inplace": True})
        example = (torch.randn(16, 64), torch.randn(128), torch.randn(64, 128))
    else:
        add = graph.call_function(torch.add, (x, r), {"alpha": 2} if case == "alpha" else
                                  {"out": x} if case == "out" else {})
        out = graph.call_function(torch.softmax, (add,),
                                  {"dim": 0 if case == "axis" else -1,
                                   **({"dtype": torch.float64} if case == "dtype" else {})})
        example = inputs_for("add_softmax")
    graph.output(out)
    plan = graph_fusion.compile(fx.GraphModule({}, graph), example)
    assert all(t.template_id != "matmul_bias_relu" for t, _ in plan.groups) if case == "inplace" else not plan.groups


def test_method_forms_and_keywords():
    class Methods(torch.nn.Module):
        def forward(self, x, w, b):
            return x.mm(w).add(b).relu()
    plan = graph_fusion.compile(fx.symbolic_trace(Methods()), inputs_for("matmul_bias"))
    assert plan.groups[0][0].template_id == "matmul_bias_relu"
    x, w, b = inputs_for("matmul_bias")
    torch.testing.assert_close(plan(x=x, w=w, b=b), torch.relu(x @ w + b))


def test_registry_can_disable_individual_templates():
    registry = graph_fusion.Registry(t for t in graph_fusion.default_registry().templates if t.template_id == "add_softmax")
    plan = graph_fusion.compile(fx.symbolic_trace(MatmulBias()), inputs_for("matmul_bias"), registry=registry)
    assert not plan.groups


def test_execution_failure_does_not_replay_original(monkeypatch):
    gm = fx.symbolic_trace(AddSoftmax())
    inputs = inputs_for("add_softmax")
    plan = graph_fusion.compile(gm, inputs)
    monkeypatch.setattr(_backend, "check", lambda *args: ("nvidia", None))

    def prepare(*args):
        def fail():
            raise RuntimeError("device failure")
        return fail

    monkeypatch.setattr(_backend, "prepare", prepare)
    with pytest.raises(RuntimeError, match="device failure"):
        plan(*inputs)
    assert plan.last_report["mode"] == "error"
    assert plan.last_report["regions"][0]["reason"] == "execution_error"


def test_resource_rejection_replays_original_region(monkeypatch):
    from triton.runtime.errors import OutOfResources
    inputs = inputs_for("add_softmax")
    gm = fx.symbolic_trace(AddSoftmax())
    plan = graph_fusion.compile(gm, inputs)
    monkeypatch.setattr(_backend, "check", lambda *args: ("nvidia", None))

    def reject(*args):
        raise OutOfResources(100, 10, "shared memory")

    monkeypatch.setattr(_backend, "prepare", reject)
    torch.testing.assert_close(plan(*inputs), gm(*inputs), rtol=0, atol=0)
    assert plan.last_report["regions"][0]["reason"] == "compilation_rejected"


@pytest.mark.parametrize("change", ["disabled", "shape", "context", "graph"])
def test_warm_direct_plan_rechecks_changes_and_recovers(monkeypatch, change):
    from types import SimpleNamespace
    gm = fx.symbolic_trace(AddSoftmax())
    inputs = inputs_for("add_softmax")
    plan = graph_fusion.compile(gm, inputs)
    calls = []
    context = [None]
    monkeypatch.setattr(_backend, "check", lambda *args: ("nvidia", context[0]))
    monkeypatch.setattr(_backend, "context_reason", lambda *args: context[0])
    def prepare(kind, initial, backend):
        def launch(current):
            calls.append(current)
            return torch.softmax(current[0] + current[1], dim=-1), SimpleNamespace(name="test")
        def execute():
            return launch(initial)
        execute.launch = launch
        return execute
    monkeypatch.setattr(_backend, "prepare", prepare)
    first = plan(*inputs)
    replacement = tuple(t + 1 for t in inputs)
    second = plan(*replacement)
    torch.testing.assert_close(second, gm(*replacement))
    assert first.data_ptr() != second.data_ptr()
    assert len(calls) == 2
    changed = inputs
    if change == "disabled":
        plan.enabled = False
    elif change == "shape":
        changed = inputs_for("add_softmax", rows=3)
    elif change == "context":
        context[0] = "autocast_requires_original_graph"
    else:
        node = next(n for n in gm.graph.nodes if n.target is torch.softmax)
        node.kwargs = {"dim": 0}
        gm.recompile()
    torch.testing.assert_close(plan(*changed), gm(*changed))
    assert plan.last_report["mode"] == "fallback"
    assert len(calls) == 2
    if change == "graph":
        assert plan.last_report["reason"] == "graph_changed"
    else:
        plan.enabled = True
        context[0] = None
        torch.testing.assert_close(plan(*replacement), gm(*replacement))
        assert len(calls) == 3
        assert plan.last_report["mode"] == "fused"


def test_warm_direct_plan_execution_error_is_not_replayed(monkeypatch):
    from types import SimpleNamespace
    gm = fx.symbolic_trace(AddSoftmax())
    inputs = inputs_for("add_softmax")
    plan = graph_fusion.compile(gm, inputs)
    calls = []
    monkeypatch.setattr(_backend, "check", lambda *args: ("nvidia", None))
    def prepare(kind, initial, backend):
        def launch(current):
            calls.append(1)
            if len(calls) > 1:
                raise RuntimeError("hot launch failure")
            return torch.softmax(current[0] + current[1], dim=-1), SimpleNamespace(name="test")
        def execute():
            return launch(initial)
        execute.launch = launch
        return execute
    monkeypatch.setattr(_backend, "prepare", prepare)
    plan(*inputs)
    with pytest.raises(RuntimeError, match="hot launch failure"):
        plan(*inputs)
    assert len(calls) == 2
    assert plan.last_report["mode"] == "error"
    assert plan.last_report["regions"][0]["reason"] == "execution_error"


def test_flat_xpu_launcher_keeps_runtime_arguments_hooks_and_debug(monkeypatch):
    xpu = pytest.importorskip("triton.backends.xpu.driver")
    launcher = xpu.XPULauncher.__new__(xpu.XPULauncher)
    launcher._signature = {0: "*fp32", 1: "constexpr", 2: "i32", 3: "*fp32"}
    launcher._fn_name, launcher._constants, launcher._is_sdnn = "test", {}, False
    received = []
    launcher.launch = lambda *args: received.append(args)
    monkeypatch.setattr(xpu, "_PRINT_TRITON_FUNC", False)
    flat = launcher.get_flat_runner()
    control = tuple(object() for _ in range(9))
    x, y = torch.ones(2), torch.zeros(2)
    arguments = control + (x, 128, 17, y)
    launcher(*arguments)
    flat(*arguments)
    assert len(received) == 2
    assert all(a is b for a, b in zip(received[0], received[1]))
    assert received[1][:9] == control
    replacement = x.clone()
    flat(*(control + (replacement, 128, 19, y)))
    assert received[-1][9] is replacement and received[-1][10] == 19
    printed = []
    monkeypatch.setattr(xpu, "_PRINT_TRITON_FUNC", True)
    monkeypatch.setattr(xpu, "_print_triton_launcher_info", lambda *args: printed.append(args))
    flat(*arguments)
    assert len(printed) == 1


def test_flat_xpu_launcher_rejects_descriptor_signature():
    xpu = pytest.importorskip("triton.backends.xpu.driver")
    launcher = xpu.XPULauncher.__new__(xpu.XPULauncher)
    launcher._signature = {0: object(), 1: "i32"}
    assert launcher.get_flat_runner() is None


def test_empty_launch_chains_skip_metadata_and_observe_late_hooks(monkeypatch):
    from types import SimpleNamespace
    from triton.experimental.graph_fusion import _xpu_matmul
    enter, leave = triton.knobs.HookChain(), triton.knobs.HookChain()
    monkeypatch.setattr(triton.knobs.runtime, "launch_enter_hook", enter)
    monkeypatch.setattr(triton.knobs.runtime, "launch_exit_hook", leave)
    records, metadata_calls = [], []
    def metadata(*args):
        metadata_calls.append(args)
        return "metadata"
    bound = SimpleNamespace(compiled=SimpleNamespace(launch_metadata=metadata),
                            grid=(1, 1, 1), function=1, metadata=2,
                            run=lambda *args: records.append(args))
    _xpu_matmul._run(bound, 7, (8, 9))
    assert not metadata_calls
    assert records[-1][6:9] == (None, None, None)
    def hook(*args):
        pass
    enter.add(hook)
    leave.add(hook)
    _xpu_matmul._run(bound, 7, (10, 11))
    assert len(metadata_calls) == 1
    assert records[-1][6:9] == ("metadata", enter, leave)
    enter.remove(hook)
    leave.remove(hook)
    _xpu_matmul._run(bound, 7, (12, 13))
    assert len(metadata_calls) == 1
    assert records[-1][6:9] == (None, None, None)


def test_generated_plan_keeps_multiple_regions_and_live_mutation():
    class Mixed(torch.nn.Module):
        def forward(self, x, r):
            first = torch.softmax(x + r, dim=-1)
            r.add_(1)
            second = torch.softmax(x + r, dim=-1)
            return {"first": first, "second": second, "alias": r}
    gm = fx.symbolic_trace(Mixed())
    inputs = inputs_for("add_softmax")
    originals = tuple(t.clone() for t in inputs)
    plan = graph_fusion.compile(gm, inputs)
    assert len(plan.groups) == 2
    actual, expected = plan(*inputs), gm(*originals)
    torch.testing.assert_close(actual, expected)
    assert actual["alias"] is inputs[1]


def test_graph_mutation_invalidates_generated_code():
    gm = fx.symbolic_trace(AddSoftmax())
    inputs = inputs_for("add_softmax")
    plan = graph_fusion.compile(gm, inputs)
    node = next(n for n in gm.graph.nodes if n.target is torch.softmax)
    node.kwargs = {"dim": 0}
    gm.recompile()
    torch.testing.assert_close(plan(*inputs), gm(*inputs))
    assert plan.last_report["reason"] == "graph_changed"


def test_graph_guard_detects_replaced_first_node():
    from triton.experimental.graph_fusion._runtime import _make_graph_guard
    graph = fx.Graph()
    first = graph.call_function(torch.rand, ((2, 3),))
    graph.output(1)
    guard = _make_graph_guard(graph)
    with graph.inserting_before(first):
        graph.call_function(torch.ones, ((2, 3),))
    graph.erase_node(first)
    assert not guard(graph)


@pytest.mark.parametrize("mutation", ["target", "args", "kwargs", "order", "replace_graph"])
def test_graph_guard_semantic_edits(mutation):
    from triton.experimental.graph_fusion import _runtime
    gm = fx.symbolic_trace(MatmulBiasRelu())
    graph = gm.graph
    guard = _runtime._make_graph_guard(graph)
    assert guard(graph)
    nodes = list(graph.nodes)
    if mutation == "target":
        nodes[-2].target = torch.sigmoid
    elif mutation == "args":
        nodes[-2].args = (nodes[0],)
    elif mutation == "kwargs":
        nodes[-2].kwargs = {"inplace": True}
    elif mutation == "order":
        nodes[0].prepend(nodes[1])
    else:
        graph = fx.symbolic_trace(MatmulBiasRelu()).graph
    assert not guard(graph)


@pytest.mark.parametrize("change", ["dtype", "stride", "shape", "negative_view", "tensor_type"])
def test_native_metadata_guard_matches_portable_guard(change):
    from triton.experimental.graph_fusion._runtime import _TensorGuard
    x = torch.randn(16, 128)
    guard = _TensorGuard((x,))
    changed = {"dtype": lambda: x.double(), "stride": lambda: x.t().contiguous().t(),
               "shape": lambda: x.view(8, 256), "negative_view": lambda: torch._neg_view(x),
               "tensor_type": lambda: torch.nn.Parameter(x)}[change]()
    assert guard.check(changed) == guard._python_check(changed) == False
    assert guard.check(x.clone())


def test_portable_metadata_guard_when_native_api_unavailable(monkeypatch):
    from triton.experimental.graph_fusion._runtime import _TensorGuard
    def unavailable(*args, **kwargs):
        raise TypeError("unsupported native interface")
    monkeypatch.setattr(torch._C._dynamo.guards, "TensorGuards", unavailable)
    guard = _TensorGuard((torch.randn(2, 3),))
    assert guard.check(torch.randn(2, 3))
    assert not guard.check(torch.randn(3, 2))


def test_kernel_handle_initialization_uses_input_device(monkeypatch):
    from contextlib import contextmanager
    from types import SimpleNamespace
    import triton.runtime
    from triton.experimental.graph_fusion import _kernels
    inputs = inputs_for("add_softmax")
    active = []

    @contextmanager
    def device_context(device):
        active.append(device)
        try:
            yield
        finally:
            active.pop()

    class FakeKernel:
        function = None
        packed_metadata = None
        run = staticmethod(lambda *args: None)

        def __getitem__(self, grid):
            assert active == [inputs[0].device]
            return self.run

    def warmup(*args, **kwargs):
        assert active == [inputs[0].device]
        return FakeKernel()

    monkeypatch.setattr(torch.cuda, "device", device_context)
    monkeypatch.setattr(_kernels, "_softmax", SimpleNamespace(warmup=warmup))
    monkeypatch.setattr(triton.runtime, "driver", SimpleNamespace(
        active=SimpleNamespace(get_current_stream=lambda device: 0)))
    _kernels.prepare_kernel("add_softmax", inputs, "nvidia")
    assert not active


def test_native_operator_diagnostics_with_fake_prepared(monkeypatch):
    from types import SimpleNamespace
    from triton.experimental.graph_fusion._runtime import _prepared_diagnostics
    hybrid = SimpleNamespace(kernel_launches=1, kernel_names=("epi",),
                             fusion_scope="aten_mm_bias_epilogue",
                             native_operator_calls=1, native_operators=("aten.mm",))
    assert _prepared_diagnostics(hybrid) == (
        1, ("epi",), "aten_mm_bias_epilogue", 1, ("aten.mm",), "v3")
    assert _prepared_diagnostics(SimpleNamespace()) == (1, (), None, 0, (), "v2")

    inputs = inputs_for("matmul_bias")
    gm = fx.symbolic_trace(MatmulBias())
    plan = graph_fusion.compile(gm, inputs)
    monkeypatch.setattr(_backend, "check", lambda *args: ("xpu", None))

    class FakeKernel:
        name = "epi"

    def prepare(*args):
        def execute():
            return gm(*inputs), FakeKernel()

        def launch(values):
            return gm(*values), FakeKernel()

        execute.launch = launch
        execute.kernel_launches = 1
        execute.kernel_names = ("epi",)
        execute.fusion_scope = "aten_mm_bias_epilogue"
        execute.native_operator_calls = 1
        execute.native_operators = ("aten.mm",)
        return execute

    monkeypatch.setattr(_backend, "prepare", prepare)
    monkeypatch.setenv("DISABLE_LLVM_OPT", "1")
    plan(*inputs)
    region = plan.last_report["regions"][0]
    assert region["kernel_launches"] == 1
    assert region["native_operator_calls"] == 1
    assert region["native_operators"] == ("aten.mm",)
    plan(*inputs)  # hot reentry retains cached diagnostics
    assert region["native_operator_calls"] == 1
    assert region["native_operators"] == ("aten.mm",)

    monkeypatch.setattr(_backend, "check",
                        lambda *args: ("xpu", "xpu_requires_disable_llvm_opt"))
    monkeypatch.delenv("DISABLE_LLVM_OPT", raising=False)
    plan(*inputs)
    assert region["mode"] == "fallback"
    assert region["native_operator_calls"] == 0
    assert region["native_operators"] == ()


def test_device_cached_launcher_new_storage_stream_and_output(device, monkeypatch):
    if device == "cpu" or not torch.cuda.is_available():
        pytest.skip("requires an accelerator")
    inputs = inputs_for("add_softmax", device)
    gm = fx.symbolic_trace(AddSoftmax())
    plan = graph_fusion.compile(gm, inputs)
    with torch.no_grad():
        first = plan(*inputs)
        saved = first.clone()
        assert plan.last_report["mode"] == "fused"
        monkeypatch.setattr(_backend, "prepare", lambda *args: pytest.fail("warm execution must reuse compiled kernel"))
        from triton.runtime import driver
        xpu = ".xpu." in type(driver.active).__module__
        stream = torch.cuda.Stream()
        if xpu:
            # This P800 runtime does not implement cudaStreamWaitEvent.
            torch.cuda.synchronize()
        else:
            stream.wait_stream(torch.cuda.current_stream())
        with torch.cuda.stream(stream):
            changed = (inputs[0].clone() * 2, inputs[1].clone() + 0.5)
            assert driver.active.get_current_stream(torch.cuda.current_device()) == stream.cuda_stream
            second = plan(*changed)
            expected = gm(*changed)
        if xpu:
            torch.cuda.synchronize()
        else:
            torch.cuda.current_stream().wait_stream(stream)
        torch.testing.assert_close(second, expected, rtol=3e-4, atol=3e-4)
        torch.testing.assert_close(first, saved, rtol=0, atol=0)
        assert first.data_ptr() != second.data_ptr()


def test_device_cached_launcher_grad_transition(device):
    if device == "cpu" or not torch.cuda.is_available():
        pytest.skip("requires an accelerator")
    inputs = tuple(t.requires_grad_() for t in inputs_for("add_softmax", device))
    gm = fx.symbolic_trace(AddSoftmax())
    with torch.no_grad():
        plan = graph_fusion.compile(gm, inputs)
        plan(*inputs)
        assert plan.last_report["mode"] == "fused"
    plan(*inputs).square().sum().backward()
    assert all(t.grad is not None for t in inputs)
    assert plan.last_report["mode"] == "fallback"


def test_device_live_attribute_replacement_invalidates_region_cache(device):
    if device == "cpu" or not torch.cuda.is_available():
        pytest.skip("requires an accelerator")
    class Weighted(torch.nn.Module):
        def __init__(self):
            super().__init__()
            self.register_buffer("w", torch.randn(64, 128, device=device))
            self.register_buffer("b", torch.randn(128, device=device))

        def forward(self, x):
            return torch.relu(x @ self.w + self.b)
    gm = fx.symbolic_trace(Weighted())
    x = torch.randn(16, 64, device=device)
    with torch.no_grad():
        plan = graph_fusion.compile(gm, (x,))
        plan(x)
        assert plan.last_report["mode"] == "fused"
        for columns in (128, 256):
            gm.w = torch.randn(64, columns, device=device)
            gm.b = torch.randn(columns, device=device)
            actual = plan(x)
            torch.testing.assert_close(actual, gm(x), rtol=3e-4, atol=3e-4)
            assert actual.shape == (16, columns)
            assert plan.last_report["mode"] == "fused"


def test_device_cached_xpu_environment_guard(device, monkeypatch):
    if device == "cpu" or not torch.cuda.is_available():
        pytest.skip("requires an accelerator")
    from triton.runtime import driver
    if ".xpu." not in type(driver.active).__module__:
        pytest.skip("XPU compatibility guard")
    inputs = inputs_for("add_softmax", device)
    gm = fx.symbolic_trace(AddSoftmax())
    with torch.no_grad():
        plan = graph_fusion.compile(gm, inputs)
        plan(*inputs)
        assert plan.last_report["mode"] == "fused"
        monkeypatch.delenv("DISABLE_LLVM_OPT", raising=False)
        torch.testing.assert_close(plan(*inputs), gm(*inputs), rtol=0, atol=0)
        assert plan.last_report["regions"][0]["reason"] == "xpu_requires_disable_llvm_opt"


@pytest.mark.parametrize("kind", ["matmul_bias", "matmul_bias_relu"])
@pytest.mark.parametrize("shape,bias_form", [((17, 64, 128), "scalar"),
                                             ((17, 63, 129), "scalar"),
                                             ((5, 256, 128), "column"),
                                             ((3, 1024, 128), "matrix")])
def test_device_matmul_tails_and_broadcast(kind, shape, bias_form, device):
    if device == "cpu" or not torch.cuda.is_available():
        pytest.skip("requires an accelerator")
    m, k, n = shape
    generator = torch.Generator().manual_seed(109)
    x = torch.randn((m, k), generator=generator).to(device)
    w = torch.randn((k, n), generator=generator).to(device)
    bias_shape = () if bias_form == "scalar" else (m, 1) if bias_form == "column" else (m, n)
    b = torch.randn(bias_shape, generator=generator).to(device)
    gm = fx.symbolic_trace(MatmulBiasRelu() if kind.endswith("relu") else MatmulBias())
    with torch.no_grad():
        plan = graph_fusion.compile(gm, (x, w, b))
        actual = plan(x, w, b)
        expected = gm(x, w, b)
    reference = (x.cpu().double() @ w.cpu().double()).float() + b.cpu()
    if kind.endswith("relu"):
        reference = reference.relu()
    torch.testing.assert_close(actual.cpu(), reference, rtol=3e-4, atol=5e-4)
    torch.testing.assert_close(actual, expected, rtol=3e-4, atol=5e-4)
    _, reason = _backend.check(kind, (x, w, b))
    assert plan.last_report["mode"] == ("fallback" if reason else "fused"), plan.explain()
    if reason:
        assert plan.last_report["regions"][0]["reason"] == reason


@pytest.mark.parametrize("dtype,large", [(torch.float16, 2048.), (torch.bfloat16, 256.)])
def test_device_rounding_boundaries(dtype, large, device):
    if device == "cpu" or not torch.cuda.is_available():
        pytest.skip("requires an accelerator")
    x = torch.full((16, 128), large, device=device, dtype=dtype)
    r = torch.zeros_like(x)
    r[:, :64] = 1
    gm = fx.symbolic_trace(AddSoftmax())
    plan = graph_fusion.compile(gm, (x, r))
    torch.testing.assert_close(plan(x, r), gm(x, r), rtol=0, atol=0)
    assert plan.last_report["mode"] == "fused", plan.explain()
    # A missing mm materialization rounding leaves 1 instead of 0 after bias.
    x = torch.zeros((16, 64), device=device, dtype=dtype)
    w = torch.zeros((64, 128), device=device, dtype=dtype)
    x[:, 0] = large
    x[:, 1] = 1
    w[:2] = 1
    b = torch.full((128,), -large, device=device, dtype=dtype)
    gm = fx.symbolic_trace(MatmulBias())
    plan = graph_fusion.compile(gm, (x, w, b))
    torch.testing.assert_close(plan(x, w, b), gm(x, w, b), rtol=0, atol=0)


def test_device_nonfinite_softmax(device):
    if device == "cpu" or not torch.cuda.is_available():
        pytest.skip("requires an accelerator")
    x, r = inputs_for("add_softmax", device)
    x[0, 0] = float("nan")
    x[1, 0] = float("inf")
    x[2, :] = -float("inf")
    gm = fx.symbolic_trace(AddSoftmax())
    plan = graph_fusion.compile(gm, (x, r))
    torch.testing.assert_close(plan(x, r), gm(x, r), rtol=3e-4, atol=3e-4, equal_nan=True)


def test_device_nonfinite_matmul_relu(device):
    if device == "cpu" or not torch.cuda.is_available():
        pytest.skip("requires an accelerator")
    x, w, b = inputs_for("matmul_bias_relu", device)
    b[0], b[1], b[2] = float("nan"), float("inf"), -float("inf")
    gm = fx.symbolic_trace(MatmulBiasRelu())
    plan = graph_fusion.compile(gm, (x, w, b))
    torch.testing.assert_close(plan(x, w, b), gm(x, w, b), rtol=3e-4, atol=3e-4, equal_nan=True)
    assert plan.last_report["mode"] == "fused", plan.explain()


def test_device_xpu_compiler_guard(device, monkeypatch):
    if device == "cpu" or not torch.cuda.is_available():
        pytest.skip("requires an accelerator")
    from triton.runtime import driver
    if ".xpu." not in type(driver.active).__module__:
        pytest.skip("XPU compiler compatibility guard")
    x, r = inputs_for("add_softmax", device)
    gm = fx.symbolic_trace(AddSoftmax())
    plan = graph_fusion.compile(gm, (x, r))
    monkeypatch.delenv("DISABLE_LLVM_OPT", raising=False)
    monkeypatch.setattr(_backend, "prepare", lambda *args: pytest.fail("unsafe compiler must not prepare a kernel"))
    torch.testing.assert_close(plan(x, r), gm(x, r), rtol=0, atol=0)
    assert plan.last_report["regions"][0]["reason"] == "xpu_requires_disable_llvm_opt"


def test_device_launch_hooks_match_kernel_partition(device, monkeypatch):
    if device == "cpu" or not torch.cuda.is_available():
        pytest.skip("requires an accelerator")
    inputs = inputs_for("matmul_bias_relu", device, rows=19, columns=384)
    backend, reason = _backend.check("matmul_bias_relu", inputs)
    if reason:
        pytest.skip(f"unsupported backend: {reason}")
    expected = 2 if backend == "xpu" and inputs[0].shape[1] == 64 else 1
    gm = fx.symbolic_trace(MatmulBiasRelu())
    with torch.no_grad():
        plan = graph_fusion.compile(gm, inputs)
        first = plan(*inputs)
        assert plan.last_report["mode"] == "fused", plan.explain()
        events = [0, 0]

        def enter(*args):
            events[0] += 1

        def exit_(*args):
            events[1] += 1

        monkeypatch.setattr(triton.knobs.runtime, "launch_enter_hook", enter, raising=False)
        monkeypatch.setattr(triton.knobs.runtime, "launch_exit_hook", exit_, raising=False)
        changed = (inputs[0].clone() * 2, inputs[1].clone() + 0.5, inputs[2].clone() - 0.25)
        second = plan(*changed)
        eager = gm(*changed)
    assert events == [expected, expected]
    region = plan.last_report["regions"][0]
    assert region["kernel_launches"] == expected == events[0]
    if expected == 2:
        assert region["fusion_scope"] == "bias_relu_epilogue"
        assert len(region["kernel_names"]) == 2
        assert region["implementation"].endswith(".v3")
    torch.testing.assert_close(second, eager, rtol=3e-4, atol=5e-4)
    assert first.data_ptr() != second.data_ptr()


@pytest.mark.parametrize("rows,columns,full_residual",
                         [(19, 384, True), (17, 1024, False)])
def test_device_xpu_bf16_softmax_packed_tail(rows, columns, full_residual, device):
    if device == "cpu" or not torch.cuda.is_available():
        pytest.skip("requires an accelerator")
    from triton.runtime import driver
    if ".xpu." not in type(driver.active).__module__:
        pytest.skip("XPU packed BF16 regression")
    generator = torch.Generator().manual_seed(137)
    x = torch.randn((rows, columns), generator=generator).to(device=device, dtype=torch.bfloat16)
    residual_shape = (rows, columns) if full_residual else (columns,)
    r = torch.randn(residual_shape, generator=generator).to(device=device, dtype=torch.bfloat16)
    _, reason = _backend.check("add_softmax", (x, r))
    if reason:
        pytest.skip(f"XPU softmax unsupported: {reason}")
    gm = fx.symbolic_trace(AddSoftmax())
    with torch.no_grad():
        plan = graph_fusion.compile(gm, (x, r))
        actual = plan(x, r)
    assert plan.last_report["mode"] == "fused", plan.explain()
    assert actual.dtype == torch.bfloat16
    assert torch.isfinite(actual).all()
    added = (x.cpu().double() + r.cpu().double()).to(torch.bfloat16)
    reference = torch.softmax(added.double(), dim=-1).to(torch.bfloat16)
    actual_bits = actual.cpu().to(torch.float32).view(torch.int32).to(torch.int64) >> 16
    reference_bits = reference.to(torch.float32).view(torch.int32).to(torch.int64) >> 16
    assert (reference_bits > 0).all()
    assert (actual_bits > 0).all()
    assert int((actual_bits - reference_bits).abs().max()) <= 1


@pytest.mark.parametrize("model,kind", MODELS)
@pytest.mark.parametrize("dtype", [torch.float32, torch.float16, torch.bfloat16])
def test_device_pipeline(model, kind, dtype, device):
    if not torch.cuda.is_available():
        pytest.skip("requires NVIDIA or CUDA-compatible XPU device")
    if device == "cpu":
        pytest.skip("explicit CPU-only test run")
    inputs = inputs_for(kind, device, dtype)
    originals = tuple(t.cpu().clone() for t in inputs)
    gm = fx.symbolic_trace(model())
    plan = graph_fusion.compile(gm, inputs)
    with torch.no_grad():
        actual = plan(*inputs)
        expected = gm(*inputs)
    torch.cuda.synchronize()
    torch.testing.assert_close(actual, expected, rtol=3e-3 if dtype != torch.float32 else 2e-4,
                               atol=3e-2 if dtype == torch.bfloat16 else 3e-3 if dtype == torch.float16 else 2e-4)
    backend, reason = _backend.check(kind, inputs)
    if reason:
        assert plan.last_report["regions"][0]["reason"] == reason
    else:
        assert plan.last_report["mode"] == "fused", plan.explain()
        region = plan.last_report["regions"][0]
        xpu_matmul = backend == "xpu" and kind.startswith("matmul")
        xpu_lowp_bf16 = xpu_matmul and inputs[0].dtype == torch.bfloat16
        xpu_lowp_fp16 = xpu_matmul and inputs[0].dtype == torch.float16
        xpu_fp32_k64 = xpu_matmul and inputs[0].dtype == torch.float32 and inputs[0].shape[1] == 64
        if xpu_lowp_bf16:
            expected_launches, expected_native = 1, 1
        elif xpu_lowp_fp16:
            expected_launches, expected_native = 2, 0
        elif xpu_fp32_k64 and kind == "matmul_bias_relu":
            expected_launches, expected_native = 2, 0
        else:
            expected_launches, expected_native = 1, 0
        assert region["kernel_launches"] == expected_launches
        assert region["native_operator_calls"] == expected_native
        if xpu_lowp_bf16:
            assert region["fusion_scope"] == ("aten_mm_bias_relu_epilogue"
                                              if kind == "matmul_bias_relu"
                                              else "aten_mm_bias_epilogue")
            assert len(region["kernel_names"]) == 1
            assert region["native_operators"] == ("aten.mm",)
        elif xpu_lowp_fp16:
            assert region["fusion_scope"] == "split_lowp_fp32"
            assert len(region["kernel_names"]) == 2
            assert region["native_operators"] == ()
        elif expected_launches == 2:
            assert region["fusion_scope"] == "bias_relu_epilogue"
            assert len(region["kernel_names"]) == 2
        elif xpu_fp32_k64 and kind == "matmul_bias":
            assert region["fusion_scope"] == "matmul_bias"
    for tensor, original in zip(inputs, originals):
        torch.testing.assert_close(tensor.cpu(), original, rtol=0, atol=0)


def _lowp_skip(kind, inputs, device):
    if device == "cpu" or not torch.cuda.is_available():
        pytest.skip("requires an accelerator")
    from triton.runtime import driver
    if ".xpu." not in type(driver.active).__module__:
        pytest.skip("XPU-only low-precision matrix route")
    backend, reason = _backend.check(kind, inputs)
    if reason:
        if os.environ.get("DISABLE_LLVM_OPT") == "1":
            pytest.fail(f"qualified low-precision matrix route rejected: {reason}")
        pytest.skip(f"low-precision matrix route not admitted: {reason}")
    assert backend == "xpu"


def _lowp_inputs(kind, device, dtype, k, broadcast, rows=17, columns=384):
    generator = torch.Generator().manual_seed(211)
    rand = lambda shape: torch.randn(shape, generator=generator).to(device=device, dtype=dtype)
    bias_shape = {"scalar": (), "vector": (columns,), "column": (rows, 1), "full": (rows, columns)}[broadcast]
    return rand((rows, k)), rand((k, columns)), rand(bias_shape)


def _cpu_xpu_bf16_mm_round(value):
    """XPU BF16 matrix materialization: nearest, ties away from zero.

    Controlled P800 probes found RNU here with zero mismatches for normal
    values; a generic CPU BF16 cast is RNE.  Quantize the FP32 bit pattern by
    adding half a BF16 ulp and truncating.  Infinities stay infinite and NaNs
    are quieted, never converted to infinities.  Subnormal FTZ is not modeled.
    """
    value = value.float()
    bits = value.view(torch.int32).to(torch.int64) & 0xffffffff
    rounded = torch.where(torch.isfinite(value), (bits + 0x8000) & 0xffff0000, bits)
    rounded = torch.where(torch.isnan(value), (bits | 0x00400000) & 0xffff0000, rounded)
    signed = torch.where(rounded >= 0x80000000, rounded - 0x100000000, rounded)
    return signed.to(torch.int32).view(torch.float32).to(torch.bfloat16)


def _lowp_reference(kind, inputs):
    x, w, b = inputs
    dtype = x.dtype
    product = x.cpu().double() @ w.cpu().double()
    reference = (_cpu_xpu_bf16_mm_round(product) if dtype == torch.bfloat16
                 else product.to(dtype))
    reference = (reference.double() + b.cpu().double()).to(dtype)
    return torch.relu(reference) if kind.endswith("relu") else reference


def _lowp_assert(actual, kind, inputs, *, exact=False):
    dtype = inputs[0].dtype
    reference = _lowp_reference(kind, inputs)
    rtol, atol = (0.0, 0.0) if exact else (3e-3, 3e-3 if dtype == torch.float16 else 3e-2)
    torch.testing.assert_close(actual.detach().cpu(), reference, rtol=rtol, atol=atol)
    gm = fx.symbolic_trace(MatmulBiasRelu() if kind.endswith("relu") else MatmulBias())
    torch.testing.assert_close(actual, gm(*inputs), rtol=rtol, atol=atol)
    return reference


@pytest.mark.parametrize("dtype,kind,k,broadcast", [
    (torch.float16, "matmul_bias", 64, "vector"),
    (torch.bfloat16, "matmul_bias_relu", 64, "column"),
    (torch.float16, "matmul_bias_relu", 64, "full"),
    (torch.bfloat16, "matmul_bias", 64, "scalar"),
    (torch.float16, "matmul_bias", 256, "vector"),
    (torch.bfloat16, "matmul_bias_relu", 256, "column"),
    (torch.float16, "matmul_bias_relu", 1024, "full"),
    (torch.bfloat16, "matmul_bias", 1024, "scalar"),
])
def test_device_lowp_pairwise_matrix(dtype, kind, k, broadcast, device):
    inputs = _lowp_inputs(kind, device, dtype, k, broadcast)
    _lowp_skip(kind, inputs, device)
    originals = tuple(t.clone() for t in inputs)
    gm = fx.symbolic_trace(MatmulBiasRelu() if kind.endswith("relu") else MatmulBias())
    with torch.no_grad():
        plan = graph_fusion.compile(gm, inputs)
        actual = plan(*inputs)
    assert plan.last_report["mode"] == "fused", plan.explain()
    assert actual.dtype == dtype
    _lowp_assert(actual, kind, inputs)
    region = plan.last_report["regions"][0]
    expected_launches, expected_native = (1, 1) if dtype == torch.bfloat16 else (2, 0)
    assert region["kernel_launches"] == expected_launches
    assert len(region["kernel_names"]) == region["kernel_launches"]
    assert region["native_operator_calls"] == expected_native
    assert region["native_operators"] == (("aten.mm",) if expected_native else ())
    for tensor, original in zip(inputs, originals):
        torch.testing.assert_close(tensor.cpu(), original.cpu(), rtol=0, atol=0)


@pytest.mark.parametrize("dtype,large", [(torch.float16, 2048.0), (torch.bfloat16, 256.0)])
def test_device_lowp_exact_mm_add_rounding(dtype, large, device):
    x = torch.zeros((17, 64), device=device, dtype=dtype)
    w = torch.zeros((64, 128), device=device, dtype=dtype)
    x[:, 0] = large
    x[0, 1], x[1, 1] = 1, 3
    w[:2] = 1
    b = torch.full((128,), -large, device=device, dtype=dtype)
    inputs = (x, w, b)
    _lowp_skip("matmul_bias", inputs, device)
    gm = fx.symbolic_trace(MatmulBias())
    with torch.no_grad():
        plan = graph_fusion.compile(gm, inputs)
        actual = plan(*inputs)
        eager = gm(*inputs)
    assert plan.last_report["mode"] == "fused", plan.explain()
    expected = torch.zeros_like(actual)
    expected[1] = 4
    if dtype == torch.bfloat16:
        # XPU BF16 matrix materialization rounds the 257/259 ties away: 258 -> 2.
        expected[0] = 2
    torch.testing.assert_close(actual, eager, rtol=0, atol=0)
    torch.testing.assert_close(actual.cpu(), _lowp_reference("matmul_bias", inputs), rtol=0, atol=0)
    torch.testing.assert_close(actual, expected, rtol=0, atol=0)

    # Add-only RNE: mm is exactly `large`; BF16 +1 stays 256 (RNU is mm-only),
    # while +1 ties down and +3 ties up for both dtypes.
    add_x, add_w, add_b = torch.zeros_like(x), torch.zeros_like(w), torch.zeros_like(b)
    add_x[:, 0] = large
    add_w[0] = 1
    add_b[0], add_b[1] = 1, 3
    add_inputs = (add_x, add_w, add_b)
    with torch.no_grad():
        add_actual = plan(*add_inputs)
        add_eager = gm(*add_inputs)
    add_expected = torch.full_like(add_actual, large)
    add_expected[:, 1] = large + 4
    assert plan.last_report["mode"] == "fused", plan.explain()
    torch.testing.assert_close(add_actual, add_eager, rtol=0, atol=0)
    torch.testing.assert_close(add_actual.cpu(), _lowp_reference("matmul_bias", add_inputs), rtol=0, atol=0)
    torch.testing.assert_close(add_actual, add_expected, rtol=0, atol=0)

    special = torch.zeros(128, device=device, dtype=dtype)
    special[0], special[1], special[2], special[3] = float("nan"), float("inf"), -float("inf"), -0.0
    special_inputs = (torch.zeros((16, 64), device=device, dtype=dtype),
                      torch.zeros((64, 128), device=device, dtype=dtype), special)
    _lowp_skip("matmul_bias_relu", special_inputs, device)
    relu_gm = fx.symbolic_trace(MatmulBiasRelu())
    with torch.no_grad():
        relu_plan = graph_fusion.compile(relu_gm, special_inputs)
        relu_actual = relu_plan(*special_inputs)
        relu_eager = relu_gm(*special_inputs)
    assert relu_plan.last_report["mode"] == "fused", relu_plan.explain()
    torch.testing.assert_close(relu_actual, relu_eager, rtol=0, atol=0, equal_nan=True)
    torch.testing.assert_close(relu_actual.cpu(), _lowp_reference("matmul_bias_relu", special_inputs),
                               rtol=0, atol=0, equal_nan=True)
    assert torch.equal(torch.signbit(relu_actual[..., 3]), torch.signbit(relu_eager[..., 3]))


@pytest.mark.parametrize("dtype", [torch.float16, torch.bfloat16])
def test_device_lowp_cached_odd_offset_current_stream(dtype, device):
    kind = "matmul_bias_relu"
    inputs = inputs_for(kind, device, dtype, rows=17, columns=128)
    _lowp_skip(kind, inputs, device)
    gm = fx.symbolic_trace(MatmulBiasRelu())
    with torch.no_grad():
        plan = graph_fusion.compile(gm, inputs)
        first = plan(*inputs)
        assert plan.last_report["mode"] == "fused", plan.explain()
        saved = first.clone()
        generator = torch.Generator().manual_seed(311)
        def odd(shape):
            shape = torch.Size(shape)
            flat = torch.randn(shape.numel() + 1, generator=generator).to(device=device, dtype=dtype)
            return flat[1:].view(shape)
        hot = (odd((17, 64)), odd((64, 128)), odd((128,)))
        originals = tuple(t.clone() for t in hot)
        assert all(t.storage_offset() == 1 for t in hot)
        torch.cuda.synchronize()
        stream = torch.cuda.Stream()
        with torch.cuda.stream(stream):
            from triton.runtime import driver
            assert driver.active.get_current_stream(torch.cuda.current_device()) == stream.cuda_stream
            second = plan(*hot)
            torch.cuda.synchronize()
        torch.cuda.synchronize()
    assert plan.last_report["mode"] == "fused", plan.explain()
    _lowp_assert(second, kind, hot)
    assert first.data_ptr() != second.data_ptr()
    torch.testing.assert_close(first, saved, rtol=0, atol=0)
    for tensor, original in zip(hot, originals):
        torch.testing.assert_close(tensor.cpu(), original.cpu(), rtol=0, atol=0)


@pytest.mark.parametrize("dtype", [torch.float16, torch.bfloat16])
@pytest.mark.parametrize("kind", ["matmul_bias", "matmul_bias_relu"])
def test_device_lowp_tiny_and_nonfinite(dtype, kind, device):
    if device == "cpu":
        pytest.skip("requires an accelerator")
    # Use the actual target Torch for subnormal policy: CPU arithmetic does
    # not model this P800 runtime's BF16 flush-to-zero behavior.
    tiny = 2.0 ** (-24 if dtype == torch.float16 else -133)
    normal = torch.finfo(dtype).tiny
    maximum = torch.finfo(dtype).max
    x = torch.zeros((17, 64), device=device, dtype=dtype)
    w = torch.zeros((64, 128), device=device, dtype=dtype)
    b = torch.zeros((128,), device=device, dtype=dtype)
    _lowp_skip(kind, (x, w, b), device)
    gm = fx.symbolic_trace(MatmulBiasRelu() if kind.endswith("relu") else MatmulBias())
    with torch.no_grad():
        plan = graph_fusion.compile(gm, (x, w, b))
        # Finite input values and overflow; NaN/Inf are supplied as bias so
        # zero-times-infinity does not obscure the product under test.
        w[0] = 1
        values = [0.0, -0.0, tiny, -tiny, normal, -normal, maximum, -maximum]
        for row, value in enumerate(values):
            x[row, 0] = value
        x[8:10, :2] = maximum
        w[1, :64] = 1
        b[:8] = torch.tensor([0.0, -0.0, tiny, -tiny, normal,
                              float("nan"), float("inf"), -float("inf")],
                             device=device, dtype=dtype)
        actual, expected = plan(x, w, b), gm(x, w, b)
    assert plan.last_report["mode"] == "fused", plan.explain()
    a, e = actual.cpu(), expected.cpu()
    diagnostic = {"actual_first8": a.float()[:, :8].tolist(),
                  "expected_first8": e.float()[:, :8].tolist(),
                  "actual_col23": a.float()[:, 23].tolist(),
                  "expected_col23": e.float()[:, 23].tolist()}
    torch.testing.assert_close(actual, expected, rtol=0, atol=0, equal_nan=True,
                               msg=lambda message: message + repr(diagnostic))
    zero = (a == 0) & (e == 0)
    assert torch.equal(torch.signbit(a[zero]), torch.signbit(e[zero]))


@pytest.mark.parametrize("kind", ["matmul_bias", "matmul_bias_relu"])
@pytest.mark.parametrize("m,n,k,bias_form", [
    (64, 1024, 64, "vector"),
    (128, 512, 64, "full_odd"),
    (256, 1024, 256, "vector"),
])
def test_device_lowp_bf16_raw_load_large(kind, m, n, k, bias_form, device):
    """Large BF16 shapes regress the native BF16 load miscompile.

    A direct BF16 -> FP32 vector load in the BLOCK=2048 epilogue converted the
    wrong half of elements on this XPU. Raw uint16 product/bias loads shifted
    into FP32 bits are exact and must match the original Torch mm + add.
    """
    if device == "cpu" or not torch.cuda.is_available():
        pytest.skip("requires an accelerator")
    generator = torch.Generator().manual_seed(419)
    x = torch.randn((m, k), generator=generator).to(device=device,
                                                    dtype=torch.bfloat16)
    w = torch.randn((k, n), generator=generator).to(device=device,
                                                    dtype=torch.bfloat16)
    if bias_form == "full_odd":
        base = torch.randn(m * n + 1, generator=generator).to(
            device=device, dtype=torch.bfloat16)
        b = base[1:].view(m, n)
        assert b.storage_offset() == 1
        assert b.is_contiguous()
    else:
        b = torch.randn(n, generator=generator).to(device=device,
                                                   dtype=torch.bfloat16)
    inputs = (x, w, b)
    _lowp_skip(kind, inputs, device)
    originals = tuple(t.clone() for t in inputs)
    gm = fx.symbolic_trace(MatmulBiasRelu() if kind.endswith("relu") else MatmulBias())
    with torch.no_grad():
        plan = graph_fusion.compile(gm, inputs)
        actual = plan(*inputs)
        expected = gm(*inputs)
    assert plan.last_report["mode"] == "fused", plan.explain()
    region = plan.last_report["regions"][0]
    assert region["kernel_launches"] == 1
    assert len(region["kernel_names"]) == 1
    assert region["native_operator_calls"] == 1
    assert region["native_operators"] == ("aten.mm",)
    assert region["fusion_scope"] == ("aten_mm_bias_relu_epilogue"
                                      if kind.endswith("relu")
                                      else "aten_mm_bias_epilogue")
    # The candidate and eager use the same Torch mm, so the flat add is exact;
    # an exact CPU reference would not model Torch's FP32 accumulation.
    torch.testing.assert_close(actual, expected, rtol=0, atol=0)
    for tensor, original in zip(inputs, originals):
        torch.testing.assert_close(tensor, original, rtol=0, atol=0)


@pytest.mark.parametrize("dtype", [torch.float16, torch.bfloat16])
def test_device_lowp_warm_hooks_and_output_ownership(dtype, device, monkeypatch):
    from triton.runtime import driver
    if device == "cpu" or not torch.cuda.is_available():
        pytest.skip("requires an accelerator")
    if ".xpu." not in type(driver.active).__module__:
        pytest.skip("XPU lowp route")
    inputs = inputs_for("matmul_bias", device, dtype)
    saved = tuple(x.clone() for x in inputs)
    gm = fx.symbolic_trace(MatmulBias())
    events = [0, 0]
    def enter(*args):
        events[0] += 1
    def leave(*args):
        events[1] += 1
    with torch.no_grad():
        plan = graph_fusion.compile(gm, inputs)
        first = plan(*inputs)
        held = first.clone()
        enter_chain, leave_chain = triton.knobs.HookChain(), triton.knobs.HookChain()
        monkeypatch.setattr(triton.knobs.runtime, "launch_enter_hook", enter_chain)
        monkeypatch.setattr(triton.knobs.runtime, "launch_exit_hook", leave_chain)
        enter_chain.add(enter)
        leave_chain.add(leave)
        second = plan(*inputs)
        enter_chain.remove(enter)
        leave_chain.remove(leave)
        third = plan(*inputs)
        assert third.data_ptr() != second.data_ptr()
    torch.cuda.synchronize()
    expected = 2 if dtype == torch.float16 else 1
    assert events == [expected, expected]
    assert plan.last_report["regions"][0]["kernel_launches"] == expected
    assert first.data_ptr() != second.data_ptr()
    assert all(second.data_ptr() != x.data_ptr() for x in inputs)
    torch.testing.assert_close(first, held, rtol=0, atol=0)
    for actual, original in zip(inputs, saved):
        torch.testing.assert_close(actual, original, rtol=0, atol=0)
    torch.testing.assert_close(second, gm(*inputs), rtol=3e-3, atol=3e-2 if dtype == torch.bfloat16 else 3e-3)


@pytest.mark.parametrize("kind", ["matmul_bias", "matmul_bias_relu"])
@pytest.mark.parametrize("m,n,k,broadcast", [(17, 384, 64, "column"),
                                             (64, 1024, 64, "vector"),
                                             (256, 1024, 256, "full"),
                                             (1, 128, 64, "vector"),
                                             (33, 256, 64, "column"),
                                             (65, 128, 256, "full")])
def test_device_bf16_repeated_owned_product_updates(kind, m, n, k, broadcast, device):
    generator = torch.Generator().manual_seed(61)
    x = torch.randn(m, k, generator=generator).to(device=device, dtype=torch.bfloat16)
    w = torch.randn(k, n, generator=generator).to(device=device, dtype=torch.bfloat16)
    bias_shape = (m, 1) if broadcast == "column" else (n,) if broadcast == "vector" else (m, n)
    b = torch.randn(bias_shape, generator=generator).to(device=device, dtype=torch.bfloat16)
    inputs = (x, w, b)
    _lowp_skip(kind, inputs, device)
    gm = fx.symbolic_trace(MatmulBiasRelu() if kind.endswith("relu") else MatmulBias())
    originals = tuple(t.clone() for t in inputs)
    held = []
    with torch.no_grad():
        plan = graph_fusion.compile(gm, inputs)
        for index in range(5):
            current = (x, w, b + index * 0.03125)
            actual, expected = plan(*current), gm(*current)
            torch.testing.assert_close(actual, expected, rtol=0, atol=0, equal_nan=True)
            assert all(actual.data_ptr() != prior.data_ptr() for prior, _ in held)
            held.append((actual, actual.clone()))
    for actual, saved in held:
        torch.testing.assert_close(actual, saved, rtol=0, atol=0, equal_nan=True)
    for actual, original in zip(inputs, originals):
        torch.testing.assert_close(actual, original, rtol=0, atol=0)


def test_device_bf16_without_vendor_opt_keeps_separate_output_route(device, monkeypatch):
    inputs = inputs_for("matmul_bias", device, torch.bfloat16, rows=17, columns=128)
    _lowp_skip("matmul_bias", inputs, device)
    monkeypatch.delenv("FLAGTREE_XPU_LLVM19_OPT", raising=False)
    with torch.no_grad():
        gm = fx.symbolic_trace(MatmulBias())
        plan = graph_fusion.compile(gm, inputs)
        actual = plan(*inputs)
        torch.testing.assert_close(actual, gm(*inputs), rtol=0, atol=0, equal_nan=True)
    assert plan.last_report["mode"] == "fused"
    names = plan.last_report["regions"][0]["kernel_names"]
    assert names == ("_epilogue_lowp",)


@pytest.mark.parametrize("dtype", [torch.float16, torch.bfloat16])
def test_lowp_tail_direct_prepare_requires_compiler_option(dtype, monkeypatch):
    from triton.experimental.graph_fusion import _xpu_lowp
    inputs = (torch.zeros(17, 63, dtype=dtype), torch.zeros(63, 129, dtype=dtype),
              torch.zeros(129, dtype=dtype))
    monkeypatch.setenv("FLAGTREE_XPU_LLVM19_OPT", "/not-executed/vendor-opt")
    # An environment string alone must not compile an in-place kernel with
    # the unqualified default LLVM pipeline, including direct prepare calls.
    with pytest.raises(ValueError, match="tail requires"):
        _xpu_lowp.prepare("matmul_bias", inputs)


@pytest.mark.parametrize("dtype", [torch.float16, torch.bfloat16])
@pytest.mark.parametrize("kind", ["matmul_bias", "matmul_bias_relu"])
@pytest.mark.parametrize("m,n,k", [(17, 129, 63), (65, 257, 127), (1, 1, 1)])
def test_device_lowp_tail_owned_output_and_noopt_guard(dtype, kind, m, n, k, device, monkeypatch):
    gen = torch.Generator().manual_seed(61)
    inputs = tuple(torch.randn(shape, generator=gen).to(device=device, dtype=dtype)
                   for shape in ((m, k), (k, n), (m, 1)))
    _lowp_skip(kind, inputs, device)
    if not os.environ.get("FLAGTREE_XPU_LLVM19_OPT"):
        pytest.skip("tail route requires the qualified vendor compiler option")
    gm = fx.symbolic_trace(MatmulBiasRelu() if kind.endswith("relu") else MatmulBias())
    with torch.no_grad():
        plan = graph_fusion.compile(gm, inputs)
        original = tuple(t.clone() for t in inputs)
        held = []
        for index in range(3):
            current = (*inputs[:2], inputs[2] + index * 0.03125)
            output = plan(*current)
            torch.testing.assert_close(output, gm(*current), rtol=0, atol=0, equal_nan=True)
            assert all(output.data_ptr() != earlier.data_ptr() for earlier, _ in held)
            assert all(output.data_ptr() != t.data_ptr() for t in current)
            held.append((output, output.clone()))
        region = plan.last_report["regions"][0]
        assert plan.last_report["mode"] == "fused"
        assert region["kernel_launches"] == 1 and region["native_operator_calls"] == 1
        for output, saved in held:
            torch.testing.assert_close(output, saved, rtol=0, atol=0, equal_nan=True)
        for actual, saved in zip(inputs, original):
            torch.testing.assert_close(actual, saved, rtol=0, atol=0)
        monkeypatch.delenv("FLAGTREE_XPU_LLVM19_OPT")
        cold = graph_fusion.compile(gm, inputs)
        torch.testing.assert_close(cold(*inputs), gm(*inputs), rtol=0, atol=0, equal_nan=True)
        assert cold.last_report["mode"] == "fallback"


@pytest.mark.parametrize("dtype,large", [(torch.float16, 2048.), (torch.bfloat16, 256.)])
@pytest.mark.parametrize("kind", ["matmul_bias", "matmul_bias_relu"])
def test_device_lowp_tail_rounding_and_nonfinite(dtype, large, kind, device):
    x = torch.zeros(17, 63, device=device, dtype=dtype)
    w = torch.zeros(63, 129, device=device, dtype=dtype)
    b = torch.full((129,), -large, device=device, dtype=dtype)
    x[:, 0], x[:, 1], w[:2] = large, 1, 1
    inputs = (x, w, b)
    _lowp_skip(kind, inputs, device)
    if not os.environ.get("FLAGTREE_XPU_LLVM19_OPT"):
        pytest.skip("tail route requires the qualified vendor compiler option")
    gm = fx.symbolic_trace(MatmulBiasRelu() if kind.endswith("relu") else MatmulBias())
    with torch.no_grad():
        plan = graph_fusion.compile(gm, inputs)
        torch.testing.assert_close(plan(*inputs), gm(*inputs), rtol=0, atol=0, equal_nan=True)
        w[0, :5] = torch.tensor([float('inf'), -float('inf'), float('inf'),
                                  -float('inf'), float('inf')], device=device, dtype=dtype)
        b[:5] = torch.tensor([float('nan'), float('inf'), -float('inf'), -0., 0.],
                            device=device, dtype=dtype)
        torch.testing.assert_close(plan(*inputs), gm(*inputs), rtol=0, atol=0, equal_nan=True)
        assert plan.last_report["mode"] == "fused"
