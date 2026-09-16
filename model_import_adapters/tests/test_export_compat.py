from __future__ import annotations

import numpy as np
import onnx
import onnxruntime as ort
import torch
from onnx import TensorProto, helper, numpy_helper

from model_import_adapters.export_compat import (
    rewrite_onnx2torch_for_export,
    specialize_onnx_shape_subgraphs,
)
from model_import_adapters.onnx_adapter import OnnxAdapter


def _make_shape_reshape_model(path) -> None:
    value = helper.make_tensor_value_info("value", TensorProto.FLOAT, ["batch", 3])
    output = helper.make_tensor_value_info("output", TensorProto.FLOAT, ["batch", 3])
    initializers = [
        numpy_helper.from_array(np.asarray(0, dtype=np.int64), name="batch_index"),
        numpy_helper.from_array(np.asarray([0], dtype=np.int64), name="axes"),
        numpy_helper.from_array(np.asarray([3], dtype=np.int64), name="width"),
    ]
    graph = helper.make_graph(
        [
            helper.make_node("Shape", ["value"], ["value_shape"], name="shape"),
            helper.make_node("Gather", ["value_shape", "batch_index"], ["batch"], name="batch"),
            helper.make_node("Unsqueeze", ["batch", "axes"], ["batch_vector"], name="unsqueeze"),
            helper.make_node("Concat", ["batch_vector", "width"], ["target_shape"], name="concat", axis=0),
            helper.make_node("Reshape", ["value", "target_shape"], ["output"], name="reshape"),
        ],
        "shape_reshape",
        [value],
        [output],
        initializer=initializers,
    )
    model = helper.make_model(graph, opset_imports=[helper.make_opsetid("", 17)])
    model.ir_version = min(model.ir_version, 9)
    onnx.save(model, path)


def test_shape_specialization_and_export_rewrite(tmp_path) -> None:
    source = tmp_path / "source.onnx"
    specialized = tmp_path / "specialized.onnx"
    _make_shape_reshape_model(source)
    value = np.arange(6, dtype=np.float32).reshape(2, 3)

    summary = specialize_onnx_shape_subgraphs(source, {"value": value}, specialized)
    assert summary["node_count"] == 4
    original_output = ort.InferenceSession(str(source), providers=["CPUExecutionProvider"]).run(None, {"value": value})[0]
    specialized_output = ort.InferenceSession(str(specialized), providers=["CPUExecutionProvider"]).run(None, {"value": value})[0]
    np.testing.assert_array_equal(specialized_output, original_output)

    module = OnnxAdapter(specialized).to_torch().eval()
    tensor = torch.from_numpy(value)
    with torch.no_grad():
        before = module(tensor)
    rewrite = rewrite_onnx2torch_for_export(module)
    assert rewrite["operator_counts"] == {"_StaticReshape": 1}
    with torch.no_grad():
        after = module(tensor)
    torch.testing.assert_close(after, before, atol=0.0, rtol=0.0)

    exported = torch.export.export(module, (tensor,), strict=False).run_decompositions()
    with torch.no_grad():
        loaded_output = exported.module()(tensor)
    torch.testing.assert_close(loaded_output, before, atol=0.0, rtol=0.0)
