#!/usr/bin/env python3
"""为PyTorch、ONNX和TensorFlow转换结果生成统一Core ATen图产物。"""

from __future__ import annotations

import argparse
import copy
import json
from pathlib import Path
from typing import Any, Callable

import numpy as np
import torch

from model_import_adapters.onnx_adapter import OnnxAdapter
from model_import_adapters.dynamic_export_compat import (
    rewrite_onnx2torch_symbolic_shapes,
    widen_unit_symbolic_dimensions,
)
from model_import_adapters.export_compat import rewrite_onnx2torch_for_export
from model_import_adapters.tensorflow_adapter import convert_function
from model_import_adapters.unified_ir import (
    UnifiedIrError,
    compare_outputs,
    export_core_aten,
    load_core_aten,
    onnx_dynamic_shapes,
)


class NativePyTorchModel(torch.nn.Module):
    """用于验证原生PyTorch入口和符号Shape的最小模型。"""

    def __init__(self) -> None:
        super().__init__()
        self.projection = torch.nn.Linear(16, 16)
        self.normalization = torch.nn.LayerNorm(16)

    def forward(self, value):
        projected = torch.nn.functional.gelu(self.projection(value))
        return self.normalization(projected + value)


class StructuredControlFlowModel(torch.nn.Module):
    """使用torch.cond构造可导出的结构化条件分支。"""

    def forward(self, value, predicate):
        return torch.cond(
            predicate,
            lambda operand: torch.sin(operand) + 1.0,
            lambda operand: torch.cos(operand) - 1.0,
            (value,),
        )


def _write_json(path: Path, value: Any) -> None:
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2), encoding="utf-8")


def _rewrite_onnx_module_transactionally(
    module: torch.nn.Module,
    torch_inputs: tuple[torch.Tensor, ...],
    *,
    name: str,
    rewrite: Callable[[torch.nn.Module], Any],
) -> tuple[torch.nn.Module, dict[str, Any]]:
    """在模块副本上执行兼容改写，并仅在数值等价时提交。"""

    candidate = copy.deepcopy(module)
    try:
        with torch.no_grad():
            expected = module(*torch_inputs)
        rewrite_details = rewrite(candidate)
        with torch.no_grad():
            actual = candidate(*torch_inputs)
        comparison = compare_outputs(expected, actual, atol=0.0, rtol=0.0)
    except Exception as exc:
        return module, {
            "name": name,
            "status": "failed",
            "committed": False,
            "error": f"{type(exc).__name__}: {exc}",
        }
    return candidate, {
        "name": name,
        "status": "passed",
        "committed": True,
        "details": rewrite_details,
        "output_comparison": comparison,
    }


def _export_native(output_dir: Path) -> dict[str, Any]:
    torch.manual_seed(7)
    model = NativePyTorchModel().eval()
    example = torch.randn(2, 4, 16)
    batch = torch.export.Dim("batch", min=1, max=8)
    sequence = torch.export.Dim("sequence_length", min=1, max=64)
    _, artifacts, details = export_core_aten(
        model,
        (example,),
        output_dir,
        dynamic_shapes=({0: batch, 1: sequence},),
        source={
            "kind": "pytorch",
            "model_class": type(model).__name__,
            "entry": "native torch.nn.Module",
        },
    )

    # ExportedProgram.module() 返回的 GraphModule 已固化为导出语义，
    # PyTorch 2.5 不允许再对它调用 eval()/train()。
    loaded = load_core_aten(artifacts.exported_program).module()
    probes: list[dict[str, Any]] = []
    for shape in ((1, 3, 16), (3, 7, 16)):
        torch.manual_seed(sum(shape))
        value = torch.randn(*shape)
        with torch.no_grad():
            expected = model(value)
            actual = loaded(value)
        probes.append(
            {
                "shape": list(shape),
                "outputs": compare_outputs(expected, actual),
            }
        )
    dynamic_report = {
        "status": "passed",
        "range_constraints": details["manifest"]["range_constraints"],
        "probes": probes,
    }
    _write_json(output_dir / "dynamic_shape_probe.json", dynamic_report)
    return {
        "status": "passed",
        "artifacts": artifacts.as_dict(),
        "dynamic_shape_probe": dynamic_report,
    }


def _export_control_flow(output_dir: Path) -> dict[str, Any]:
    model = StructuredControlFlowModel().eval()
    value = torch.linspace(-1.0, 1.0, steps=6).reshape(2, 3)
    predicate = torch.tensor(True)
    _, artifacts, details = export_core_aten(
        model,
        (value, predicate),
        output_dir,
        source={
            "kind": "pytorch",
            "model_class": type(model).__name__,
            "entry": "torch.cond structured control flow",
        },
    )
    control_flow = details["manifest"]["control_flow"]
    if not control_flow:
        raise UnifiedIrError("统一图中未找到torch.cond结构化控制流节点")
    graph_names = {item["name"] for item in details["manifest"]["graphs"]}
    if not any("true" in name for name in graph_names) or not any(
        "false" in name for name in graph_names
    ):
        raise UnifiedIrError("统一图摘要中未保存条件分支子图")

    loaded = load_core_aten(artifacts.exported_program).module()
    probes: list[dict[str, Any]] = []
    for selected in (True, False):
        pred = torch.tensor(selected)
        with torch.no_grad():
            expected = model(value, pred)
            actual = loaded(value, pred)
        probes.append(
            {
                "predicate": selected,
                "outputs": compare_outputs(expected, actual),
            }
        )
    report = {
        "status": "passed",
        "control_flow": control_flow,
        "graph_names": sorted(graph_names),
        "probes": probes,
    }
    _write_json(output_dir / "control_flow_probe.json", report)
    return {
        "status": "passed",
        "artifacts": artifacts.as_dict(),
        "control_flow_probe": report,
    }


def _export_onnx(
    model_path: Path,
    output_dir: Path,
    *,
    source: dict[str, Any],
    reference_inputs: dict[str, np.ndarray[Any, Any]] | None = None,
) -> dict[str, Any]:
    adapter = OnnxAdapter(model_path)
    adapter.check()
    adapter.infer_shapes()
    frontend_graph_summary = adapter.summary()
    normalized_model, source_summary = adapter.save_artifacts(output_dir / "source_onnx")
    _, _, numpy_inputs = adapter.run_reference(reference_inputs)
    source_comparison = adapter.compare_with_torch(numpy_inputs)
    module = adapter.to_torch().eval()
    runtime_inputs = list(adapter._runtime_inputs())
    ordered_names = [item.name for item in runtime_inputs]
    # 与动态中型模型验收入口保持同一安全边界。部分BERT类导出图会对
    # 最大位置长度生成不等式保护；直接把未知序列维放宽到512（含端点）
    # 会因端点不满足保护条件而被torch.export拒绝。
    dynamic_shapes = onnx_dynamic_shapes(
        runtime_inputs,
        max_batch=8,
        max_other_dimension=32,
    )
    export_numpy_inputs, widened_dimensions = widen_unit_symbolic_dimensions(
        runtime_inputs, numpy_inputs
    )
    if widened_dimensions:
        export_input_comparison = adapter.compare_with_torch(export_numpy_inputs)
    else:
        export_input_comparison = source_comparison
    torch_inputs = tuple(
        torch.from_numpy(export_numpy_inputs[name]) for name in ordered_names
    )
    rewrite_report: list[dict[str, Any]] = []
    module, symbolic_rewrite = _rewrite_onnx_module_transactionally(
        module,
        torch_inputs,
        name="onnx_shape_subgraph_to_python_symint",
        rewrite=rewrite_onnx2torch_symbolic_shapes,
    )
    rewrite_report.append(symbolic_rewrite)
    module, static_rewrite = _rewrite_onnx_module_transactionally(
        module,
        torch_inputs,
        name="constant_onnx2torch_export_compatibility",
        rewrite=rewrite_onnx2torch_for_export,
    )
    rewrite_report.append(static_rewrite)
    source = {
        **source,
        "onnx_model": str(model_path.resolve()),
        "normalized_onnx": str(normalized_model),
        "onnx_summary": str(source_summary),
        "frontend_graph_summary": frontend_graph_summary,
        "onnx_input_order": ordered_names,
        "onnx_to_torch_reference": source_comparison,
        "export_input_selection": {
            "dynamic_bounds": {"max_batch": 8, "max_other_dimension": 32},
            "widened_unit_symbolic_dimensions": widened_dimensions,
            "onnx_to_torch_comparison": export_input_comparison,
        },
        "onnx2torch_export_rewrites": rewrite_report,
    }
    attempts: list[dict[str, Any]] = []
    selected_mode: str | None = None
    artifacts = None
    details = None
    # onnx2torch 转换出的部分模块会在 Python 中读取 Shape 值或使用
    # 数据依赖切片。先尝试保留源模型符号维；若转换实现不可导出，
    # 再显式收敛到样例 Shape。所选模式和失败原因全部写入报告，
    # 不把静态降级记为动态 Shape 已保留。
    candidates = [
        ("symbolic_strict", dynamic_shapes, True),
        ("symbolic_non_strict", dynamic_shapes, False),
        ("specialized_strict", None, True),
        ("specialized_non_strict", None, False),
    ]
    for mode, shape_spec, strict in candidates:
        if shape_spec is None and mode.startswith("symbolic"):
            continue
        try:
            _, artifacts, details = export_core_aten(
                module,
                torch_inputs,
                output_dir / "unified_core_aten",
                dynamic_shapes=shape_spec,
                source={**source, "selected_export_mode": mode},
                strict=strict,
                atol=3e-4,
                rtol=3e-4,
            )
            attempts.append({"mode": mode, "status": "passed"})
            selected_mode = mode
            break
        except UnifiedIrError as exc:
            attempts.append(
                {
                    "mode": mode,
                    "status": "failed",
                    "error": str(exc),
                }
            )
    if artifacts is None or details is None or selected_mode is None:
        raise UnifiedIrError(
            "ONNX转换模块未能生成Core ATen统一图："
            + json.dumps(attempts, ensure_ascii=False)
        )
    return {
        "status": "passed",
        "artifacts": artifacts.as_dict(),
        "source_reference": source_comparison,
        "export_input_selection": {
            "dynamic_bounds": {"max_batch": 8, "max_other_dimension": 32},
            "widened_unit_symbolic_dimensions": widened_dimensions,
            "onnx_to_torch_comparison": export_input_comparison,
        },
        "onnx2torch_export_rewrites": rewrite_report,
        "export_attempts": attempts,
        "selected_export_mode": selected_mode,
        "source_symbolic_shape_detected": dynamic_shapes is not None,
        "symbolic_shape_preserved_in_unified_graph": selected_mode.startswith("symbolic"),
        "range_constraints": details["manifest"]["range_constraints"],
        "operator_count": len(details["manifest"]["operators"]["all_call_targets"]),
    }


def _create_minimal_onnx_model(path: Path) -> dict[str, np.ndarray[Any, Any]]:
    """创建只含基本张量运算的ONNX动态Shape最小图。"""

    import onnx
    from onnx import TensorProto, helper

    path.parent.mkdir(parents=True, exist_ok=True)
    value = helper.make_tensor_value_info(
        "value", TensorProto.FLOAT, ["batch", 4]
    )
    bias = helper.make_tensor_value_info("bias", TensorProto.FLOAT, [4])
    output = helper.make_tensor_value_info(
        "output", TensorProto.FLOAT, ["batch", 4]
    )
    graph = helper.make_graph(
        [
            helper.make_node("Add", ["value", "bias"], ["shifted"], name="add"),
            helper.make_node("Relu", ["shifted"], ["output"], name="relu"),
        ],
        "onnx_dynamic_add_relu",
        [value, bias],
        [output],
    )
    model = helper.make_model(
        graph,
        opset_imports=[helper.make_opsetid("", 17)],
        producer_name="model-import-adapters",
    )
    model.ir_version = min(model.ir_version, 9)
    onnx.save(model, path)
    return {
        "value": np.linspace(-1.0, 1.0, 8, dtype=np.float32).reshape(2, 4),
        "bias": np.asarray([0.25, -0.5, 0.75, 1.0], dtype=np.float32),
    }


def _export_minimal_onnx(output_dir: Path) -> dict[str, Any]:
    model_path = output_dir / "source" / "dynamic_add_relu.onnx"
    inputs = _create_minimal_onnx_model(model_path)
    result = _export_onnx(
        model_path,
        output_dir,
        source={
            "kind": "onnx",
            "entry": "ONNX dynamic Add+Relu minimal graph",
        },
        reference_inputs=inputs,
    )
    if not result["symbolic_shape_preserved_in_unified_graph"]:
        raise UnifiedIrError("ONNX最小图未将符号Shape保存到统一图")
    value = torch.linspace(-1.5, 1.5, steps=12).reshape(3, 4)
    bias = torch.tensor([0.25, -0.5, 0.75, 1.0])
    loaded = load_core_aten(result["artifacts"]["exported_program"]).module()
    with torch.no_grad():
        actual = loaded(value, bias)
        expected = torch.relu(value + bias)
    result["dynamic_shape_probe"] = {
        "status": "passed",
        "shape": [3, 4],
        "outputs": compare_outputs(expected, actual),
    }
    _write_json(output_dir / "dynamic_shape_probe.json", result["dynamic_shape_probe"])
    return result


def _export_minimal_tensorflow(output_dir: Path) -> dict[str, Any]:
    import tensorflow as tf

    signature = [tf.TensorSpec([None, 4], tf.float32, name="value")]

    @tf.function(input_signature=signature)
    def tensorflow_function(value):
        return tf.nn.relu(value * 1.25 + 0.5, name="output")

    model_path = convert_function(
        tensorflow_function,
        signature,
        output_dir / "source" / "tensorflow_dynamic_relu.onnx",
        opset=17,
    )
    inputs = {
        "value": np.linspace(-1.0, 1.0, 8, dtype=np.float32).reshape(2, 4)
    }
    result = _export_onnx(
        model_path,
        output_dir,
        source={
            "kind": "tensorflow_via_onnx",
            "entry": "tf.function dynamic elementwise minimal graph",
            "tensorflow_signature": "TensorSpec([None, 4], tf.float32)",
            "converted_onnx": str(model_path.resolve()),
        },
        reference_inputs=inputs,
    )
    if not result["symbolic_shape_preserved_in_unified_graph"]:
        raise UnifiedIrError("TensorFlow最小图未将符号Shape保存到统一图")
    value = torch.linspace(-1.5, 1.5, steps=12).reshape(3, 4)
    loaded = load_core_aten(result["artifacts"]["exported_program"]).module()
    with torch.no_grad():
        actual = loaded(value)
        expected = torch.relu(value * 1.25 + 0.5)
    result["dynamic_shape_probe"] = {
        "status": "passed",
        "shape": [3, 4],
        "outputs": compare_outputs(expected, actual),
    }
    _write_json(output_dir / "dynamic_shape_probe.json", result["dynamic_shape_probe"])
    return result


def _run_entry(name: str, action: Callable[[], dict[str, Any]]) -> dict[str, Any]:
    try:
        return action()
    except Exception as exc:
        return {
            "status": "failed",
            "error": f"{type(exc).__name__}: {exc}",
            "entry": name,
        }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--onnx-model", type=Path, required=True)
    parser.add_argument("--tensorflow-onnx", type=Path, required=True)
    parser.add_argument("--tensorflow-source", type=Path)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    args.output_dir.mkdir(parents=True, exist_ok=True)

    # 闭环必选项：三种入口必须生成同格式Core ATen产物，
    # 同时由原生PyTorch最小图验证动态Shape与结构化控制流。
    results = {
        "pytorch": _run_entry(
            "pytorch",
            lambda: _export_native(args.output_dir / "pytorch"),
        ),
        "structured_control_flow": _run_entry(
            "structured_control_flow",
            lambda: _export_control_flow(args.output_dir / "structured_control_flow"),
        ),
        "onnx": _run_entry(
            "onnx",
            lambda: _export_minimal_onnx(args.output_dir / "onnx"),
        ),
        "tensorflow": _run_entry(
            "tensorflow",
            lambda: _export_minimal_tensorflow(args.output_dir / "tensorflow"),
        ),
    }
    # 已下载的中型模型用于观察转换覆盖范围，不将某个
    # 第三方转换器对个别算子的局限掩饰成整模型已通用支持。
    medium_model_observations = {
        "onnx": _run_entry(
            "onnx_medium",
            lambda: _export_onnx(
                args.onnx_model,
                args.output_dir / "medium_model_observations" / "onnx",
                source={"kind": "onnx", "entry": "supplied medium model"},
            ),
        ),
        "tensorflow": _run_entry(
            "tensorflow_medium",
            lambda: _export_onnx(
                args.tensorflow_onnx,
                args.output_dir / "medium_model_observations" / "tensorflow",
                source={
                    "kind": "tensorflow_via_onnx",
                    "entry": "supplied medium model",
                    "tensorflow_source": (
                        str(args.tensorflow_source.resolve())
                        if args.tensorflow_source
                        else None
                    ),
                    "converted_onnx": str(args.tensorflow_onnx.resolve()),
                },
            ),
        ),
    }
    report = {
        "status": (
            "passed" if all(item["status"] == "passed" for item in results.values()) else "failed"
        ),
        "unified_representation": "PyTorch ExportedProgram decomposed to Core ATen",
        "entries": results,
        "medium_model_observations": medium_model_observations,
        "scope_note": (
            "闭环状态只由三种入口的显式统一图产物、动态Shape和结构化"
            "控制流最小验证决定；中型模型结果单独记录转换器覆盖边界。"
        ),
    }
    report_path = args.output_dir / "unified_ir_closure_report.json"
    _write_json(report_path, report)
    print(json.dumps(report, ensure_ascii=False, indent=2))
    print(f"REPORT={report_path.resolve()}")
    return 0 if report["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
