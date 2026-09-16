from __future__ import annotations

from pathlib import Path

import numpy as np
import pytest
import torch

from model_import_adapters.onnx_adapter import OnnxAdapter
from model_import_adapters.tensorflow_adapter import (
    compare_function_with_onnx,
    convert_function,
)
from model_import_adapters.unified_ir import export_core_aten, load_core_aten

tf = pytest.importorskip("tensorflow")


def _conditional_function():
    signature = [
        tf.TensorSpec([None, 4], tf.float32, name="value"),
        tf.TensorSpec([], tf.bool, name="predicate"),
    ]

    @tf.function(input_signature=signature)
    def conditional(value, predicate):
        return tf.cond(predicate, lambda: value + 1.0, lambda: value - 1.0)

    return conditional, signature


def _loop_function():
    signature = [
        tf.TensorSpec([None, 4], tf.float32, name="value"),
        tf.TensorSpec([], tf.int32, name="count"),
    ]

    @tf.function(input_signature=signature)
    def repeat(value, count):
        iteration = tf.constant(0, dtype=tf.int32)

        def cond(index, carried):
            del carried
            return index < count

        def body(index, carried):
            return index + 1, carried + 1.0

        _, result = tf.while_loop(cond, body, (iteration, value))
        return result

    return repeat, signature


@pytest.mark.parametrize("predicate", [True, False])
def test_tf_cond_to_onnx_and_core_aten(tmp_path: Path, predicate: bool) -> None:
    function, signature = _conditional_function()
    onnx_path = convert_function(function, signature, tmp_path / "conditional.onnx")
    value = np.arange(8, dtype=np.float32).reshape(2, 4)
    tf_onnx_report = compare_function_with_onnx(
        function,
        onnx_path,
        [value, np.asarray(predicate, dtype=np.bool_)],
        ["value", "predicate"],
    )
    assert tf_onnx_report["status"] == "passed"

    adapter = OnnxAdapter(onnx_path)
    adapter.check()
    adapter.infer_shapes()
    contract = adapter.summary()["control_flow_contract"]
    assert contract["structure_valid"]
    assert contract["executable"]
    assert "If" in contract["operator_kinds"]
    module = adapter.to_torch()
    _, artifacts, details = export_core_aten(
        module,
        (torch.from_numpy(value), torch.tensor(predicate)),
        tmp_path / f"core_aten_{predicate}",
        dynamic_shapes=({0: torch.export.Dim("batch", min=1, max=8)}, None),
        source={"kind": "tensorflow_via_onnx", "control_flow": contract},
    )
    assert any("cond" in op for op in details["manifest"]["operators"]["higher_order"])
    loaded = load_core_aten(artifacts.exported_program).module()
    probe = torch.randn(3, 4)
    expected = probe + 1 if predicate else probe - 1
    torch.testing.assert_close(loaded(probe, torch.tensor(predicate)), expected)


def test_tf_while_to_onnx_and_core_aten(tmp_path: Path) -> None:
    function, signature = _loop_function()
    onnx_path = convert_function(function, signature, tmp_path / "loop.onnx")
    value = np.arange(8, dtype=np.float32).reshape(2, 4)
    tf_onnx_report = compare_function_with_onnx(
        function,
        onnx_path,
        [value, np.asarray(3, dtype=np.int32)],
        ["value", "count"],
    )
    assert tf_onnx_report["status"] == "passed"

    adapter = OnnxAdapter(onnx_path)
    adapter.check()
    adapter.infer_shapes()
    contract = adapter.summary()["control_flow_contract"]
    assert contract["structure_valid"]
    assert "Loop" in contract["operator_kinds"]
    module = adapter.to_torch()
    runtime_inputs = adapter._runtime_inputs()
    input_names = [item.name for item in runtime_inputs]
    torch_inputs = []
    for name in input_names:
        if name.split(":", 1)[0] == "value":
            torch_inputs.append(torch.from_numpy(value))
        elif name.split(":", 1)[0] == "count":
            torch_inputs.append(torch.tensor(3, dtype=torch.int32))
        else:
            raise AssertionError(f"unexpected input {name}")
    torch.testing.assert_close(module(*torch_inputs), torch.from_numpy(value) + 3)

    batch = torch.export.Dim("batch", min=1, max=8)
    dynamic_shapes = tuple(
        {0: batch} if name.split(":", 1)[0] == "value" else None
        for name in input_names
    )
    _, artifacts, details = export_core_aten(
        module,
        tuple(torch_inputs),
        tmp_path / "loop_core_aten",
        dynamic_shapes=dynamic_shapes,
        source={"kind": "tensorflow_via_onnx", "control_flow": contract},
    )
    assert any(
        "while_loop" in op
        for op in details["manifest"]["operators"]["higher_order"]
    )
    loaded = load_core_aten(artifacts.exported_program).module()
    probe = torch.zeros(3, 4)
    replay_inputs = []
    for name in input_names:
        if name.split(":", 1)[0] == "value":
            replay_inputs.append(probe)
        else:
            replay_inputs.append(torch.tensor(5, dtype=torch.int32))
    torch.testing.assert_close(loaded(*replay_inputs), torch.full_like(probe, 5))
