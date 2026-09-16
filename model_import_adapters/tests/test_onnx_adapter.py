from __future__ import annotations

from pathlib import Path

import numpy as np
import onnx
import torch
from onnx import TensorProto, helper

from model_import_adapters.onnx_adapter import OnnxAdapter


def _make_add_model(path: Path) -> None:
    lhs = helper.make_tensor_value_info("lhs", TensorProto.FLOAT, ["batch", 4])
    rhs = helper.make_tensor_value_info("rhs", TensorProto.FLOAT, ["batch", 4])
    output = helper.make_tensor_value_info("output", TensorProto.FLOAT, ["batch", 4])
    graph = helper.make_graph(
        [helper.make_node("Add", ["lhs", "rhs"], ["output"], name="add")],
        "symbolic_add",
        [lhs, rhs],
        [output],
    )
    model = helper.make_model(
        graph,
        opset_imports=[helper.make_opsetid("", 17)],
        producer_name="flagtree-model-import-adapters-test",
    )
    model.ir_version = min(model.ir_version, 9)
    onnx.save(model, path)


def _make_clip_with_omitted_max_model(path: Path) -> None:
    value = helper.make_tensor_value_info("value", TensorProto.FLOAT, [3])
    output = helper.make_tensor_value_info("output", TensorProto.FLOAT, [3])
    minimum = helper.make_tensor("minimum", TensorProto.FLOAT, [], [0.0])
    graph = helper.make_graph(
        [helper.make_node("Clip", ["value", "minimum", ""], ["output"], name="clip")],
        "clip_with_omitted_maximum",
        [value],
        [output],
        initializer=[minimum],
    )
    model = helper.make_model(graph, opset_imports=[helper.make_opsetid("", 11)])
    model.ir_version = min(model.ir_version, 9)
    onnx.checker.check_model(model)
    onnx.save(model, path)


def test_check_summary_and_reference_execution(tmp_path: Path) -> None:
    model_path = tmp_path / "add.onnx"
    _make_add_model(model_path)
    adapter = OnnxAdapter(model_path)
    adapter.check()
    adapter.infer_shapes()
    summary = adapter.summary()
    assert summary["graph"]["nodes"][0]["op_type"] == "Add"
    assert summary["graph"]["inputs"][0]["shape"][0] == {
        "kind": "symbolic",
        "value": "batch",
    }

    inputs = {
        "lhs": np.ones((1, 4), dtype=np.float32),
        "rhs": np.full((1, 4), 2.0, dtype=np.float32),
    }
    names, outputs, _ = adapter.run_reference(inputs)
    assert names == ["output"]
    np.testing.assert_allclose(outputs[0], np.full((1, 4), 3.0, dtype=np.float32))


def test_to_torch_normalizes_trailing_omitted_optional_input(tmp_path: Path) -> None:
    model_path = tmp_path / "clip.onnx"
    _make_clip_with_omitted_max_model(model_path)
    adapter = OnnxAdapter(model_path)

    module = adapter.to_torch()
    actual = module(torch.tensor([-2.0, 0.5, 3.0]))

    torch.testing.assert_close(actual, torch.tensor([0.0, 0.5, 3.0]))
    assert adapter.onnx2torch_compatibility["normalized_trailing_optional_inputs"] == {
        "ai.onnx::Clip": 1
    }
