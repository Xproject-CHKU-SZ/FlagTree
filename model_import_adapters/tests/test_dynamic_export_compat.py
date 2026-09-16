from __future__ import annotations

from dataclasses import dataclass

import numpy as np
import onnx
import torch
from onnx import TensorProto, helper

from model_import_adapters.dynamic_export_compat import (
    make_onnx_probe_inputs,
    rewrite_onnx2torch_symbolic_shapes,
    widen_unit_symbolic_dimensions,
)
from model_import_adapters.export_compat import rewrite_onnx2torch_for_export
from model_import_adapters.onnx_adapter import OnnxAdapter
from model_import_adapters.unified_ir import onnx_dynamic_shapes


def _save_dynamic_shape_model(path) -> None:
    initializers = [
        helper.make_tensor("index_batch", TensorProto.INT64, [], [0]),
        helper.make_tensor("index_sequence", TensorProto.INT64, [], [1]),
        helper.make_tensor("axes_zero", TensorProto.INT64, [1], [0]),
        helper.make_tensor("shape_slice_starts", TensorProto.INT64, [1], [1]),
        helper.make_tensor("shape_slice_ends", TensorProto.INT64, [1], [2]),
        helper.make_tensor("shape_slice_axes", TensorProto.INT64, [1], [0]),
        helper.make_tensor("shape_slice_steps", TensorProto.INT64, [1], [1]),
        helper.make_tensor("range_start", TensorProto.INT64, [], [0]),
        helper.make_tensor("range_delta", TensorProto.INT64, [], [1]),
        helper.make_tensor("data_slice_starts", TensorProto.INT64, [1], [0]),
        helper.make_tensor("data_slice_axes", TensorProto.INT64, [1], [1]),
        helper.make_tensor("data_slice_steps", TensorProto.INT64, [1], [1]),
        helper.make_tensor("flatten_shape", TensorProto.INT64, [1], [-1]),
        helper.make_tensor("minus_one", TensorProto.INT64, [], [-1]),
    ]
    nodes = [
        helper.make_node("Shape", ["x"], ["shape"]),
        helper.make_node("Gather", ["shape", "index_batch"], ["batch"]),
        helper.make_node("Gather", ["shape", "index_sequence"], ["sequence"]),
        helper.make_node("Unsqueeze", ["batch", "axes_zero"], ["batch_vector"]),
        helper.make_node("Unsqueeze", ["sequence", "axes_zero"], ["sequence_vector"]),
        helper.make_node("Concat", ["batch_vector", "sequence_vector"], ["target"], axis=0),
        helper.make_node("Reshape", ["target", "flatten_shape"], ["flat_target"]),
        helper.make_node("Shape", ["flat_target"], ["target_vector_shape"]),
        helper.make_node(
            "ConstantOfShape",
            ["target_vector_shape"],
            ["target_ones"],
            value=helper.make_tensor("target_fill", TensorProto.INT64, [1], [1]),
        ),
        helper.make_node("Mul", ["target_ones", "minus_one"], ["target_minus_ones"]),
        helper.make_node("Equal", ["flat_target", "target_minus_ones"], ["target_is_minus_one"]),
        helper.make_node(
            "Where",
            ["target_is_minus_one", "target_ones", "flat_target"],
            ["normalized_target"],
        ),
        helper.make_node(
            "Slice",
            ["shape", "shape_slice_starts", "shape_slice_ends", "shape_slice_axes", "shape_slice_steps"],
            ["sequence_slice"],
        ),
        helper.make_node("Squeeze", ["sequence_slice", "axes_zero"], ["sequence_scalar"]),
        helper.make_node("Cast", ["sequence_scalar"], ["sequence_i64"], to=TensorProto.INT64),
        helper.make_node("Cast", ["sequence_slice"], ["sequence_f32"], to=TensorProto.FLOAT),
        helper.make_node("Sqrt", ["sequence_f32"], ["sequence_sqrt"]),
        helper.make_node("Range", ["range_start", "sequence_i64", "range_delta"], ["positions"]),
        helper.make_node("Unsqueeze", ["positions", "axes_zero"], ["position_row"]),
        helper.make_node("Expand", ["position_row", "normalized_target"], ["expanded"]),
        helper.make_node(
            "Slice",
            ["x", "data_slice_starts", "sequence_vector", "data_slice_axes", "data_slice_steps"],
            ["sliced"],
        ),
        helper.make_node("Reshape", ["sliced", "target"], ["reshaped"]),
    ]
    graph = helper.make_graph(
        nodes,
        "dynamic_shape_compatibility",
        [helper.make_tensor_value_info("x", TensorProto.FLOAT, ["batch", "sequence"])],
        [
            helper.make_tensor_value_info("reshaped", TensorProto.FLOAT, ["batch", "sequence"]),
            helper.make_tensor_value_info("expanded", TensorProto.INT64, ["batch", "sequence"]),
            helper.make_tensor_value_info("sequence_sqrt", TensorProto.FLOAT, [1]),
        ],
        initializer=initializers,
    )
    model = helper.make_model(graph, opset_imports=[helper.make_opsetid("", 13)])
    model.ir_version = 8
    onnx.checker.check_model(model)
    onnx.save(model, path)


def test_symbolic_shape_rewrite_exports_one_artifact_for_multiple_shapes(tmp_path) -> None:
    model_path = tmp_path / "dynamic.onnx"
    _save_dynamic_shape_model(model_path)
    adapter = OnnxAdapter(model_path)
    adapter.check()
    runtime_inputs = adapter._runtime_inputs()
    module = adapter.to_torch().eval()

    records = rewrite_onnx2torch_symbolic_shapes(module)
    rewrite_onnx2torch_for_export(module)
    base = torch.arange(8, dtype=torch.float32).reshape(2, 4)
    exported = torch.export.export(
        module,
        (base,),
        dynamic_shapes=onnx_dynamic_shapes(
            runtime_inputs, max_batch=8, max_other_dimension=32
        ),
        strict=False,
    ).run_decompositions()
    artifact = tmp_path / "dynamic.pt2"
    torch.export.save(exported, artifact)
    loaded = torch.export.load(artifact).module()

    assert len(records) >= 10
    assert exported.range_constraints
    for batch, sequence in ((1, 2), (2, 4), (3, 7)):
        value = torch.arange(batch * sequence, dtype=torch.float32).reshape(batch, sequence)
        reshaped, expanded, sequence_sqrt = loaded(value)
        torch.testing.assert_close(reshaped, value)
        expected_positions = torch.arange(sequence, dtype=torch.int64).expand(batch, sequence)
        torch.testing.assert_close(expanded, expected_positions)
        torch.testing.assert_close(sequence_sqrt, torch.tensor([sequence**0.5]))


def test_make_onnx_probe_inputs_preserves_dtype_and_dynamic_rank(tmp_path) -> None:
    model_path = tmp_path / "dynamic.onnx"
    _save_dynamic_shape_model(model_path)
    runtime_inputs = OnnxAdapter(model_path)._runtime_inputs()
    inputs = make_onnx_probe_inputs(runtime_inputs, 3, 7)

    assert inputs["x"].shape == (3, 7)
    assert inputs["x"].dtype == np.float32


def test_widen_unit_symbolic_dimensions_preserves_static_axes(tmp_path) -> None:
    model_path = tmp_path / "dynamic.onnx"
    _save_dynamic_shape_model(model_path)
    runtime_inputs = OnnxAdapter(model_path)._runtime_inputs()
    source = {"x": np.ones((1, 5), dtype=np.float32)}

    widened, changes = widen_unit_symbolic_dimensions(runtime_inputs, source)

    assert source["x"].shape == (1, 5)
    assert widened["x"].shape == (2, 5)
    assert changes == [
        {
            "input": "x",
            "axis": 0,
            "symbol": "batch",
            "from": 1,
            "to": 2,
        }
    ]


def test_probe_inputs_use_safe_transformer_token_values() -> None:
    @dataclass
    class RuntimeInput:
        name: str
        type: str
        shape: list[str]

    runtime_inputs = [
        RuntimeInput("input_ids", "tensor(int64)", ["batch", "sequence"]),
        RuntimeInput("attention_mask", "tensor(int64)", ["batch", "sequence"]),
        RuntimeInput("token_type_ids", "tensor(int64)", ["batch", "sequence"]),
    ]

    inputs = make_onnx_probe_inputs(runtime_inputs, 2, 4)

    assert inputs["input_ids"].shape == (2, 4)
    assert inputs["input_ids"].max() < 97
    assert np.all(inputs["attention_mask"] == 1)
    assert np.all(inputs["token_type_ids"] == 0)
