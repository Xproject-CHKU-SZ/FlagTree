from __future__ import annotations

import torch
from torch.fx import Graph, GraphModule

from model_import_adapters.compiled_execution import _retarget_factory_devices


def test_cpu_scalar_metadata_assertion_is_not_a_factory() -> None:
    graph = Graph()
    scalar = graph.placeholder("scalar")
    assertion = graph.call_function(
        torch.ops.aten._assert_tensor_metadata.default,
        (scalar, None, None, torch.float32),
        {"device": torch.device("cpu"), "layout": torch.strided},
    )
    graph.output(scalar)
    module = GraphModule({}, graph)

    assert _retarget_factory_devices(module, "cuda:0") == 0
    assert assertion.kwargs["device"] == torch.device("cpu")
    # This is a synthetic CPU scalar test, not a CPU model baseline.
    assert module(torch.tensor(4.0)).item() == 4.0


def test_explicit_cpu_factory_is_retargeted_without_removing_assertions() -> None:
    graph = Graph()
    value = graph.call_function(
        torch.ops.aten.empty.memory_format,
        ([2, 3],),
        {"device": torch.device("cpu"), "dtype": torch.float32},
    )
    graph.output(value)
    module = GraphModule({}, graph)
    assert _retarget_factory_devices(module, "cuda:0") == 1
    assert value.kwargs["device"] == torch.device("cuda:0")
    assert _retarget_factory_devices(module, "cuda:0") == 0


def test_derived_factory_check_moves_but_unrelated_cpu_scalar_does_not() -> None:
    graph = Graph()
    scalar = graph.placeholder("scalar")
    scalar_check = graph.call_function(
        torch.ops.aten._assert_tensor_metadata.default,
        (scalar, None, None, torch.float32),
        {"device": torch.device("cpu"), "layout": torch.strided},
    )
    indices = graph.call_function(torch.ops.aten.arange.default, (24,), {"device": torch.device("cpu")})
    mask = graph.call_function(torch.ops.aten.lt.Scalar, (indices, 3))
    check = graph.call_function(
        torch.ops.aten._assert_tensor_metadata.default,
        (mask, None, None, torch.bool),
        {"device": torch.device("cpu"), "layout": torch.strided},
    )
    graph.output(mask)
    module = GraphModule({}, graph)
    assert _retarget_factory_devices(module, "cuda:0") == 2
    assert check.kwargs["device"] == torch.device("cuda:0")
    assert check.args[3] == torch.bool and check.kwargs["layout"] == torch.strided
    assert scalar_check.kwargs["device"] == torch.device("cpu")
