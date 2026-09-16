from __future__ import annotations

import json
from pathlib import Path

import torch

from model_import_adapters.onnx_adapter import OnnxAdapter
from model_import_adapters.unified_ir import (
    compare_outputs,
    export_core_aten,
    onnx_dynamic_shapes,
)


class _DynamicModel(torch.nn.Module):
    def forward(self, value):
        return torch.sin(value) + torch.cos(value)


class _ControlFlowModel(torch.nn.Module):
    def forward(self, value, predicate):
        return torch.cond(
            predicate,
            lambda operand: operand + 1,
            lambda operand: operand - 1,
            (value,),
        )


def test_dynamic_shape_roundtrip(tmp_path: Path) -> None:
    batch = torch.export.Dim("batch", min=1, max=8)
    sequence = torch.export.Dim("sequence_length", min=1, max=32)
    model = _DynamicModel().eval()
    _, artifacts, details = export_core_aten(
        model,
        (torch.randn(2, 4),),
        tmp_path,
        dynamic_shapes=({0: batch, 1: sequence},),
        source={"kind": "unit_test"},
    )
    assert artifacts.exported_program.is_file()
    assert len(details["manifest"]["range_constraints"]) == 2
    loaded = torch.export.load(artifacts.exported_program).module()
    value = torch.randn(3, 7)
    compare_outputs(model(value), loaded(value))


def test_structured_control_flow_is_saved(tmp_path: Path) -> None:
    model = _ControlFlowModel().eval()
    value = torch.randn(2, 3)
    _, artifacts, details = export_core_aten(
        model,
        (value, torch.tensor(True)),
        tmp_path,
        source={"kind": "unit_test"},
    )
    assert details["manifest"]["control_flow"]
    graph_names = {item["name"] for item in details["manifest"]["graphs"]}
    assert any("true" in name for name in graph_names)
    assert any("false" in name for name in graph_names)
    saved_manifest = json.loads(artifacts.manifest.read_text(encoding="utf-8"))
    assert saved_manifest["control_flow"]


def test_onnx_dynamic_graph_reaches_same_core_aten_format(tmp_path: Path) -> None:
    onnx = __import__("onnx")
    from onnx import TensorProto, helper

    value_info = helper.make_tensor_value_info(
        "value", TensorProto.FLOAT, ["batch", 4]
    )
    bias_info = helper.make_tensor_value_info("bias", TensorProto.FLOAT, [4])
    output_info = helper.make_tensor_value_info(
        "output", TensorProto.FLOAT, ["batch", 4]
    )
    graph = helper.make_graph(
        [
            helper.make_node("Add", ["value", "bias"], ["shifted"]),
            helper.make_node("Relu", ["shifted"], ["output"]),
        ],
        "dynamic_add_relu",
        [value_info, bias_info],
        [output_info],
    )
    model = helper.make_model(graph, opset_imports=[helper.make_opsetid("", 17)])
    model.ir_version = min(model.ir_version, 9)
    model_path = tmp_path / "model.onnx"
    onnx.save(model, model_path)

    adapter = OnnxAdapter(model_path)
    adapter.check()
    adapter.infer_shapes()
    runtime_inputs = adapter._runtime_inputs()
    module = adapter.to_torch()
    value = torch.randn(2, 4)
    bias = torch.randn(4)
    _, artifacts, details = export_core_aten(
        module,
        (value, bias),
        tmp_path / "core_aten",
        dynamic_shapes=onnx_dynamic_shapes(runtime_inputs),
        source={"kind": "onnx_unit_test"},
    )
    assert details["manifest"]["format"] == "PyTorch ExportedProgram"
    assert details["manifest"]["range_constraints"]
    assert "aten.add.Tensor" in details["manifest"]["operators"]["all_call_targets"]
    assert "aten.relu.default" in details["manifest"]["operators"]["all_call_targets"]

    probe = torch.randn(3, 4)
    loaded = torch.export.load(artifacts.exported_program).module()
    compare_outputs(torch.relu(probe + bias), loaded(probe, bias))
