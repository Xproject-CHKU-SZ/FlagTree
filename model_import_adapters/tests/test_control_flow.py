from __future__ import annotations

from pathlib import Path

import numpy as np
import onnx
import pytest
import torch
from onnx import TensorProto, helper

from model_import_adapters.onnx_adapter import OnnxAdapter, OnnxAdapterError
from model_import_adapters.unified_ir import export_core_aten, load_core_aten


def _save_model(graph, path: Path) -> None:
    model = helper.make_model(graph, opset_imports=[helper.make_opsetid("", 17)])
    model.ir_version = min(model.ir_version, 9)
    onnx.save(model, path)


def _make_if_model(path: Path) -> None:
    x = helper.make_tensor_value_info("x", TensorProto.FLOAT, ["batch", 4])
    condition = helper.make_tensor_value_info("condition", TensorProto.BOOL, [])
    output = helper.make_tensor_value_info("output", TensorProto.FLOAT, ["batch", 4])
    branch_output = helper.make_tensor_value_info(
        "branch_output", TensorProto.FLOAT, ["batch", 4]
    )

    one = helper.make_tensor("one", TensorProto.FLOAT, [1], [1.0])
    then_graph = helper.make_graph(
        [helper.make_node("Add", ["x", "one"], ["branch_output"])],
        "then_graph",
        [],
        [branch_output],
        [one],
    )
    else_graph = helper.make_graph(
        [helper.make_node("Sub", ["x", "one"], ["branch_output"])],
        "else_graph",
        [],
        [branch_output],
        [one],
    )
    graph = helper.make_graph(
        [
            helper.make_node(
                "If",
                ["condition"],
                ["output"],
                then_branch=then_graph,
                else_branch=else_graph,
                name="choose",
            )
        ],
        "if_capture",
        [x, condition],
        [output],
    )
    _save_model(graph, path)


def _make_loop_model(path: Path) -> None:
    trip_count = helper.make_tensor_value_info("trip_count", TensorProto.INT64, [])
    condition = helper.make_tensor_value_info("condition", TensorProto.BOOL, [])
    value = helper.make_tensor_value_info("value", TensorProto.FLOAT, ["batch", 4])
    output = helper.make_tensor_value_info("output", TensorProto.FLOAT, ["batch", 4])

    iteration = helper.make_tensor_value_info("iteration", TensorProto.INT64, [])
    cond_in = helper.make_tensor_value_info("cond_in", TensorProto.BOOL, [])
    carried_in = helper.make_tensor_value_info(
        "carried_in", TensorProto.FLOAT, ["batch", 4]
    )
    cond_out = helper.make_tensor_value_info("cond_out", TensorProto.BOOL, [])
    carried_out = helper.make_tensor_value_info(
        "carried_out", TensorProto.FLOAT, ["batch", 4]
    )
    one = helper.make_tensor("one", TensorProto.FLOAT, [1], [1.0])
    body = helper.make_graph(
        [
            helper.make_node("Identity", ["cond_in"], ["cond_out"]),
            helper.make_node("Add", ["carried_in", "one"], ["carried_out"]),
        ],
        "loop_body",
        [iteration, cond_in, carried_in],
        [cond_out, carried_out],
        [one],
    )
    graph = helper.make_graph(
        [
            helper.make_node(
                "Loop",
                ["trip_count", "condition", "value"],
                ["output"],
                body=body,
                name="repeat_add",
            )
        ],
        "loop_graph",
        [trip_count, condition, value],
        [output],
    )
    _save_model(graph, path)


@pytest.mark.parametrize("predicate", [True, False])
def test_onnx_if_executes_and_matches_runtime(tmp_path: Path, predicate: bool) -> None:
    path = tmp_path / "if.onnx"
    _make_if_model(path)
    adapter = OnnxAdapter(path)
    adapter.check()
    adapter.infer_shapes()
    summary = adapter.summary()
    contract = summary["control_flow_contract"]
    assert contract["structure_valid"]
    assert contract["executable"]
    assert contract["operator_kinds"] == ["If"]

    x = np.arange(8, dtype=np.float32).reshape(2, 4)
    report = adapter.compare_with_torch(
        {"x": x, "condition": np.asarray(predicate, dtype=np.bool_)},
        atol=0,
        rtol=0,
    )
    assert report["status"] == "passed"


def test_onnx_if_reaches_core_aten_and_keeps_cond(tmp_path: Path) -> None:
    path = tmp_path / "if.onnx"
    _make_if_model(path)
    adapter = OnnxAdapter(path)
    adapter.check()
    adapter.infer_shapes()
    module = adapter.to_torch()
    _, artifacts, details = export_core_aten(
        module,
        (torch.randn(2, 4), torch.tensor(True)),
        tmp_path / "core_aten",
        dynamic_shapes=({0: torch.export.Dim("batch", min=1, max=8)}, None),
        source={"kind": "onnx", "control_flow": adapter.summary()["control_flow_contract"]},
    )
    assert details["manifest"]["control_flow"]
    assert any("cond" in op for op in details["manifest"]["operators"]["higher_order"])
    loaded = load_core_aten(artifacts.exported_program).module()
    probe = torch.randn(3, 4)
    torch.testing.assert_close(loaded(probe, torch.tensor(False)), probe - 1)


def test_onnx_loop_executes_and_reaches_core_aten(tmp_path: Path) -> None:
    path = tmp_path / "loop.onnx"
    _make_loop_model(path)
    adapter = OnnxAdapter(path)
    adapter.check()
    adapter.infer_shapes()
    contract = adapter.summary()["control_flow_contract"]
    assert contract["structure_valid"]
    assert contract["executable"]
    assert contract["operator_kinds"] == ["Loop"]

    value = np.arange(8, dtype=np.float32).reshape(2, 4)
    inputs = {
        "trip_count": np.asarray(3, dtype=np.int64),
        "condition": np.asarray(True, dtype=np.bool_),
        "value": value,
    }
    assert adapter.compare_with_torch(inputs, atol=0, rtol=0)["status"] == "passed"

    module = adapter.to_torch()
    _, artifacts, details = export_core_aten(
        module,
        (torch.tensor(3), torch.tensor(True), torch.from_numpy(value)),
        tmp_path / "loop_core_aten",
        dynamic_shapes=(None, None, {0: torch.export.Dim("batch", min=1, max=8)}),
        source={"kind": "onnx", "control_flow": contract},
    )
    assert any("while_loop" in op for op in details["manifest"]["operators"]["higher_order"])
    loaded = load_core_aten(artifacts.exported_program).module()
    probe = torch.zeros(3, 4)
    torch.testing.assert_close(
        loaded(torch.tensor(5), torch.tensor(True), probe),
        torch.full_like(probe, 5),
    )


def test_loop_scan_output_keeps_actual_iteration_length(tmp_path: Path) -> None:
    trip_count = helper.make_tensor_value_info("trip_count", TensorProto.INT64, [])
    condition = helper.make_tensor_value_info("condition", TensorProto.BOOL, [])
    value = helper.make_tensor_value_info("value", TensorProto.FLOAT, [4])
    final = helper.make_tensor_value_info("final", TensorProto.FLOAT, [4])
    scanned = helper.make_tensor_value_info("scanned", TensorProto.FLOAT, ["steps", 4])

    iteration = helper.make_tensor_value_info("iteration", TensorProto.INT64, [])
    cond_in = helper.make_tensor_value_info("cond_in", TensorProto.BOOL, [])
    carried_in = helper.make_tensor_value_info("carried_in", TensorProto.FLOAT, [4])
    cond_out = helper.make_tensor_value_info("cond_out", TensorProto.BOOL, [])
    carried_out = helper.make_tensor_value_info("carried_out", TensorProto.FLOAT, [4])
    scan_out = helper.make_tensor_value_info("scan_out", TensorProto.FLOAT, [4])
    one = helper.make_tensor("one", TensorProto.FLOAT, [1], [1.0])
    two = helper.make_tensor("two", TensorProto.INT64, [], [2])
    body = helper.make_graph(
        [
            helper.make_node("Less", ["iteration", "two"], ["cond_out"]),
            helper.make_node("Add", ["carried_in", "one"], ["carried_out"]),
            helper.make_node("Identity", ["carried_out"], ["scan_out"]),
        ],
        "loop_scan_body",
        [iteration, cond_in, carried_in],
        [cond_out, carried_out, scan_out],
        [one, two],
    )
    graph = helper.make_graph(
        [
            helper.make_node(
                "Loop",
                ["trip_count", "condition", "value"],
                ["final", "scanned"],
                body=body,
                name="loop_with_scan",
            )
        ],
        "loop_scan_graph",
        [trip_count, condition, value],
        [final, scanned],
    )
    path = tmp_path / "loop_scan.onnx"
    _save_model(graph, path)
    adapter = OnnxAdapter(path)
    adapter.check()
    adapter.infer_shapes()
    contract = adapter.summary()["control_flow_contract"]
    assert contract["structure_valid"]
    assert contract["executable"]
    assert contract["operators"][0]["scan_output_count"] == 1

    inputs = {
        "trip_count": np.asarray(7, dtype=np.int64),
        "condition": np.asarray(True, dtype=np.bool_),
        "value": np.zeros(4, dtype=np.float32),
    }
    assert adapter.compare_with_torch(inputs, atol=0, rtol=0)["status"] == "passed"
    module = adapter.to_torch()
    _, artifacts, details = export_core_aten(
        module,
        (torch.tensor(7), torch.tensor(True), torch.zeros(4)),
        tmp_path / "loop_scan_core_aten",
        source={"kind": "onnx", "control_flow": contract},
    )
    assert any(
        "while_loop" in op
        for op in details["manifest"]["operators"]["higher_order"]
    )
    loaded = load_core_aten(artifacts.exported_program).module()
    final_value, scan_values = loaded(
        torch.tensor(5), torch.tensor(True), torch.zeros(4)
    )
    # body returns true at iterations 0 and 1, then false at iteration 2:
    # the loop executes three times even though the trip-count is five.
    torch.testing.assert_close(final_value, torch.full((4,), 3.0))
    torch.testing.assert_close(
        scan_values,
        torch.tensor([[1.0] * 4, [2.0] * 4, [3.0] * 4]),
    )


def test_scan_executes_and_reaches_core_aten(tmp_path: Path) -> None:
    initial = helper.make_tensor_value_info("initial", TensorProto.FLOAT, [4])
    sequence = helper.make_tensor_value_info("sequence", TensorProto.FLOAT, ["steps", 4])
    final = helper.make_tensor_value_info("final", TensorProto.FLOAT, [4])
    output = helper.make_tensor_value_info("output", TensorProto.FLOAT, ["steps", 4])
    body_state = helper.make_tensor_value_info("body_state", TensorProto.FLOAT, [4])
    body_input = helper.make_tensor_value_info("body_input", TensorProto.FLOAT, [4])
    body_final = helper.make_tensor_value_info("body_final", TensorProto.FLOAT, [4])
    body_output = helper.make_tensor_value_info("body_output", TensorProto.FLOAT, [4])
    body = helper.make_graph(
        [
            helper.make_node("Add", ["body_state", "body_input"], ["body_final"]),
            helper.make_node("Identity", ["body_final"], ["body_output"]),
        ],
        "scan_body",
        [body_state, body_input],
        [body_final, body_output],
    )
    graph = helper.make_graph(
        [
            helper.make_node(
                "Scan",
                ["initial", "sequence"],
                ["final", "output"],
                body=body,
                num_scan_inputs=1,
                name="scan",
            )
        ],
        "scan_graph",
        [initial, sequence],
        [final, output],
    )
    path = tmp_path / "scan.onnx"
    _save_model(graph, path)
    adapter = OnnxAdapter(path)
    adapter.check()
    contract = adapter.summary()["control_flow_contract"]
    assert contract["structure_valid"]
    assert contract["executable"]
    assert contract["operator_kinds"] == ["Scan"]
    initial_value = np.zeros(4, dtype=np.float32)
    sequence_value = np.arange(12, dtype=np.float32).reshape(3, 4)
    inputs = {"initial": initial_value, "sequence": sequence_value}
    assert adapter.compare_with_torch(inputs, atol=0, rtol=0)["status"] == "passed"

    module = adapter.to_torch()
    _, artifacts, details = export_core_aten(
        module,
        (torch.from_numpy(initial_value), torch.from_numpy(sequence_value)),
        tmp_path / "scan_core_aten",
        dynamic_shapes=(None, {0: torch.export.Dim("steps", min=0, max=8)}),
        source={"kind": "onnx", "control_flow": contract},
    )
    assert any(
        "while_loop" in op
        for op in details["manifest"]["operators"]["higher_order"]
    )
    loaded = load_core_aten(artifacts.exported_program).module()
    probe = torch.arange(20, dtype=torch.float32).reshape(5, 4)
    final_value, scanned = loaded(torch.zeros(4), probe)
    torch.testing.assert_close(final_value, probe.sum(dim=0))
    torch.testing.assert_close(scanned, probe.cumsum(dim=0))

    empty = torch.empty(0, 4)
    empty_final, empty_scanned = module(torch.ones(4), empty)
    torch.testing.assert_close(empty_final, torch.ones(4))
    assert tuple(empty_scanned.shape) == (0, 4)
    loaded_empty_final, loaded_empty_scanned = loaded(torch.ones(4), empty)
    torch.testing.assert_close(loaded_empty_final, torch.ones(4))
    assert tuple(loaded_empty_scanned.shape) == (0, 4)


def test_scan_multi_input_output_axes_and_directions(tmp_path: Path) -> None:
    state = helper.make_tensor_value_info("state", TensorProto.FLOAT, [2, 3])
    scan_a = helper.make_tensor_value_info(
        "scan_a", TensorProto.FLOAT, [2, "steps", 3]
    )
    scan_b = helper.make_tensor_value_info(
        "scan_b", TensorProto.FLOAT, [2, "steps", 3]
    )
    final = helper.make_tensor_value_info("final", TensorProto.FLOAT, [2, 3])
    output_a = helper.make_tensor_value_info(
        "output_a", TensorProto.FLOAT, [2, "steps", 3]
    )
    output_b = helper.make_tensor_value_info(
        "output_b", TensorProto.FLOAT, ["steps", 2, 3]
    )

    body_state = helper.make_tensor_value_info(
        "body_state", TensorProto.FLOAT, [2, 3]
    )
    body_a = helper.make_tensor_value_info("body_a", TensorProto.FLOAT, [2, 3])
    body_b = helper.make_tensor_value_info("body_b", TensorProto.FLOAT, [2, 3])
    body_final = helper.make_tensor_value_info(
        "body_final", TensorProto.FLOAT, [2, 3]
    )
    body_output_a = helper.make_tensor_value_info(
        "body_output_a", TensorProto.FLOAT, [2, 3]
    )
    body_output_b = helper.make_tensor_value_info(
        "body_output_b", TensorProto.FLOAT, [2, 3]
    )
    body = helper.make_graph(
        [
            helper.make_node("Add", ["body_state", "body_a"], ["partial"]),
            helper.make_node("Add", ["partial", "body_b"], ["body_final"]),
            helper.make_node("Identity", ["body_final"], ["body_output_a"]),
            helper.make_node("Sub", ["body_a", "body_b"], ["body_output_b"]),
        ],
        "scan_multi_body",
        [body_state, body_a, body_b],
        [body_final, body_output_a, body_output_b],
    )
    graph = helper.make_graph(
        [
            helper.make_node(
                "Scan",
                ["state", "scan_a", "scan_b"],
                ["final", "output_a", "output_b"],
                body=body,
                num_scan_inputs=2,
                scan_input_axes=[1, 1],
                scan_input_directions=[1, 0],
                scan_output_axes=[1, 0],
                scan_output_directions=[0, 1],
                name="scan_multi",
            )
        ],
        "scan_multi_graph",
        [state, scan_a, scan_b],
        [final, output_a, output_b],
    )
    path = tmp_path / "scan_multi.onnx"
    _save_model(graph, path)
    adapter = OnnxAdapter(path)
    adapter.check()
    contract = adapter.summary()["control_flow_contract"]
    assert contract["structure_valid"]
    assert contract["executable"]
    operator = contract["operators"][0]
    assert operator["scan_input_axes"] == [1, 1]
    assert operator["scan_input_directions"] == [1, 0]
    assert operator["scan_output_axes"] == [1, 0]
    assert operator["scan_output_directions"] == [0, 1]

    state_value = np.zeros((2, 3), dtype=np.float32)
    scan_a_value = np.arange(24, dtype=np.float32).reshape(2, 4, 3)
    scan_b_value = np.arange(24, 48, dtype=np.float32).reshape(2, 4, 3)
    assert adapter.compare_with_torch(
        {"state": state_value, "scan_a": scan_a_value, "scan_b": scan_b_value},
        atol=0,
        rtol=0,
    )["status"] == "passed"

    module = adapter.to_torch()
    steps = torch.export.Dim("steps", min=0, max=8)
    _, artifacts, details = export_core_aten(
        module,
        (
            torch.from_numpy(state_value),
            torch.from_numpy(scan_a_value),
            torch.from_numpy(scan_b_value),
        ),
        tmp_path / "scan_multi_core_aten",
        dynamic_shapes=(None, {1: steps}, {1: steps}),
        source={"kind": "onnx", "control_flow": contract},
    )
    assert any(
        "while_loop" in op
        for op in details["manifest"]["operators"]["higher_order"]
    )
    loaded = load_core_aten(artifacts.exported_program).module()
    probe_a = torch.arange(30, dtype=torch.float32).reshape(2, 5, 3)
    probe_b = torch.arange(30, 60, dtype=torch.float32).reshape(2, 5, 3)
    expected = module(torch.zeros(2, 3), probe_a, probe_b)
    actual = loaded(torch.zeros(2, 3), probe_a, probe_b)
    for expected_value, actual_value in zip(expected, actual):
        torch.testing.assert_close(actual_value, expected_value)


def test_nested_if_with_loop_reaches_core_aten(tmp_path: Path) -> None:
    x = helper.make_tensor_value_info("x", TensorProto.FLOAT, ["batch", 4])
    condition = helper.make_tensor_value_info("condition", TensorProto.BOOL, [])
    output = helper.make_tensor_value_info("output", TensorProto.FLOAT, ["batch", 4])
    branch_output = helper.make_tensor_value_info(
        "branch_output", TensorProto.FLOAT, ["batch", 4]
    )

    iteration = helper.make_tensor_value_info("iteration", TensorProto.INT64, [])
    cond_in = helper.make_tensor_value_info("cond_in", TensorProto.BOOL, [])
    carried_in = helper.make_tensor_value_info(
        "carried_in", TensorProto.FLOAT, ["batch", 4]
    )
    cond_out = helper.make_tensor_value_info("cond_out", TensorProto.BOOL, [])
    carried_out = helper.make_tensor_value_info(
        "carried_out", TensorProto.FLOAT, ["batch", 4]
    )
    one = helper.make_tensor("one", TensorProto.FLOAT, [1], [1.0])
    loop_body = helper.make_graph(
        [
            helper.make_node("Identity", ["cond_in"], ["cond_out"]),
            helper.make_node("Add", ["carried_in", "one"], ["carried_out"]),
        ],
        "nested_loop_body",
        [iteration, cond_in, carried_in],
        [cond_out, carried_out],
        [one],
    )
    trip = helper.make_tensor("trip", TensorProto.INT64, [], [2])
    initial_cond = helper.make_tensor("initial_cond", TensorProto.BOOL, [], [True])
    then_graph = helper.make_graph(
        [
            helper.make_node(
                "Loop",
                ["trip", "initial_cond", "x"],
                ["branch_output"],
                body=loop_body,
                name="nested_loop",
            )
        ],
        "then_with_loop",
        [],
        [branch_output],
        [trip, initial_cond],
    )
    else_graph = helper.make_graph(
        [helper.make_node("Identity", ["x"], ["branch_output"])],
        "else_identity",
        [],
        [branch_output],
    )
    graph = helper.make_graph(
        [
            helper.make_node(
                "If",
                ["condition"],
                ["output"],
                then_branch=then_graph,
                else_branch=else_graph,
                name="if_with_loop",
            )
        ],
        "nested_control_flow_graph",
        [x, condition],
        [output],
    )
    path = tmp_path / "nested_if_loop.onnx"
    _save_model(graph, path)
    adapter = OnnxAdapter(path)
    adapter.check()
    contract = adapter.summary()["control_flow_contract"]
    assert contract["structure_valid"]
    assert contract["executable"]
    assert contract["operator_count"] == 2
    assert set(contract["operator_kinds"]) == {"If", "Loop"}

    x_value = np.arange(8, dtype=np.float32).reshape(2, 4)
    assert adapter.compare_with_torch(
        {"x": x_value, "condition": np.asarray(True, dtype=np.bool_)},
        atol=0,
        rtol=0,
    )["status"] == "passed"
    assert adapter.compare_with_torch(
        {"x": x_value, "condition": np.asarray(False, dtype=np.bool_)},
        atol=0,
        rtol=0,
    )["status"] == "passed"

    module = adapter.to_torch()
    _, artifacts, details = export_core_aten(
        module,
        (torch.from_numpy(x_value), torch.tensor(True)),
        tmp_path / "nested_core_aten",
        dynamic_shapes=({0: torch.export.Dim("batch", min=1, max=8)}, None),
        source={"kind": "onnx", "control_flow": contract},
    )
    higher_order = details["manifest"]["operators"]["higher_order"]
    assert any("cond" in op for op in higher_order)
    assert any("while_loop" in op for op in higher_order)
    loaded = load_core_aten(artifacts.exported_program).module()
    probe = torch.zeros(3, 4)
    torch.testing.assert_close(loaded(probe, torch.tensor(True)), probe + 2)
    torch.testing.assert_close(loaded(probe, torch.tensor(False)), probe)


@pytest.mark.parametrize("termination", ["trip_only", "condition_only"])
def test_loop_optional_termination_inputs(tmp_path: Path, termination: str) -> None:
    iteration = helper.make_tensor_value_info("iteration", TensorProto.INT64, [])
    cond_in = helper.make_tensor_value_info("cond_in", TensorProto.BOOL, [])
    carried_in = helper.make_tensor_value_info("carried_in", TensorProto.INT64, [])
    cond_out = helper.make_tensor_value_info("cond_out", TensorProto.BOOL, [])
    carried_out = helper.make_tensor_value_info("carried_out", TensorProto.INT64, [])
    one = helper.make_tensor("one", TensorProto.INT64, [], [1])

    if termination == "trip_only":
        body_nodes = [
            helper.make_node("Identity", ["cond_in"], ["cond_out"]),
            helper.make_node("Add", ["carried_in", "one"], ["carried_out"]),
        ]
        graph_inputs = [
            helper.make_tensor_value_info("trip_count", TensorProto.INT64, []),
            helper.make_tensor_value_info("value", TensorProto.INT64, []),
        ]
        loop_inputs = ["trip_count", "", "value"]
        runtime_inputs = {
            "trip_count": np.asarray(4, dtype=np.int64),
            "value": np.asarray(0, dtype=np.int64),
        }
        torch_inputs = (torch.tensor(4), torch.tensor(0))
        expected = torch.tensor(4)
    else:
        three = helper.make_tensor("three", TensorProto.INT64, [], [3])
        body_nodes = [
            helper.make_node("Add", ["carried_in", "one"], ["carried_out"]),
            helper.make_node("Less", ["carried_out", "three"], ["cond_out"]),
        ]
        graph_inputs = [
            helper.make_tensor_value_info("condition", TensorProto.BOOL, []),
            helper.make_tensor_value_info("value", TensorProto.INT64, []),
        ]
        loop_inputs = ["", "condition", "value"]
        runtime_inputs = {
            "condition": np.asarray(True, dtype=np.bool_),
            "value": np.asarray(0, dtype=np.int64),
        }
        torch_inputs = (torch.tensor(True), torch.tensor(0))
        expected = torch.tensor(3)

    body = helper.make_graph(
        body_nodes,
        f"{termination}_body",
        [iteration, cond_in, carried_in],
        [cond_out, carried_out],
        [one] + ([three] if termination == "condition_only" else []),
    )
    output = helper.make_tensor_value_info("output", TensorProto.INT64, [])
    graph = helper.make_graph(
        [
            helper.make_node(
                "Loop",
                loop_inputs,
                ["output"],
                body=body,
                name=termination,
            )
        ],
        f"{termination}_graph",
        graph_inputs,
        [output],
    )
    path = tmp_path / f"{termination}.onnx"
    _save_model(graph, path)
    adapter = OnnxAdapter(path)
    adapter.check()
    contract = adapter.summary()["control_flow_contract"]
    assert contract["structure_valid"]
    assert contract["executable"]
    assert adapter.compare_with_torch(runtime_inputs, atol=0, rtol=0)["status"] == "passed"

    module = adapter.to_torch()
    _, artifacts, details = export_core_aten(
        module,
        torch_inputs,
        tmp_path / f"{termination}_core_aten",
        source={"kind": "onnx", "control_flow": contract},
    )
    assert any(
        "while_loop" in op
        for op in details["manifest"]["operators"]["higher_order"]
    )
    loaded = load_core_aten(artifacts.exported_program).module()
    torch.testing.assert_close(loaded(*torch_inputs), expected)
