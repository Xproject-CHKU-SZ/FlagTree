#!/usr/bin/env python3
"""把 ONNX（含 TensorFlow 转 ONNX）静态专化为可在 XPU 使用的 Core ATen。"""

from __future__ import annotations

import importlib.util
import os
import sys


def _restart_without_xpytorch_import_hook() -> None:
    """XPU 镜像的全局 import hook 与 torch.export 不兼容，导出进程需隔离。"""

    if os.environ.get("DISABLE_XPYTORCH") == "1":
        return
    if importlib.util.find_spec("xpytorch_import_hook") is None:
        return
    environment = os.environ.copy()
    environment["DISABLE_XPYTORCH"] = "1"
    environment["MODEL_IMPORT_EXPORT_REEXECUTED"] = "1"
    os.execve(sys.executable, [sys.executable, *sys.argv], environment)


_restart_without_xpytorch_import_hook()

import argparse
import json
from pathlib import Path
from typing import Any

import numpy as np
import torch

from model_import_adapters.export_compat import (
    rewrite_onnx2torch_for_export,
    specialize_onnx_shape_subgraphs,
)
from model_import_adapters.onnx_adapter import OnnxAdapter
from model_import_adapters.unified_ir import compare_outputs, export_core_aten


def _write_json(path: Path, value: Any) -> None:
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2), encoding="utf-8")


def _flatten_numpy(value: object) -> list[np.ndarray[Any, Any]]:
    if isinstance(value, torch.Tensor):
        return [value.detach().cpu().numpy()]
    if isinstance(value, np.ndarray):
        return [value]
    if isinstance(value, dict):
        result: list[np.ndarray[Any, Any]] = []
        for key in value:
            result.extend(_flatten_numpy(value[key]))
        return result
    if isinstance(value, (tuple, list)):
        result = []
        for item in value:
            result.extend(_flatten_numpy(item))
        return result
    raise TypeError(f"不支持的输出类型：{type(value).__name__}")


def _compare_numpy(expected: object, actual: object) -> list[dict[str, Any]]:
    expected_values = _flatten_numpy(expected)
    actual_values = _flatten_numpy(actual)
    if len(expected_values) != len(actual_values):
        raise RuntimeError("专化前后输出数量不一致")
    report: list[dict[str, Any]] = []
    for index, (left, right) in enumerate(zip(expected_values, actual_values)):
        if left.shape != right.shape:
            raise RuntimeError(f"专化前后输出 {index} Shape 不一致：{left.shape} != {right.shape}")
        difference = np.abs(left - right)
        report.append(
            {
                "index": index,
                "shape": list(left.shape),
                "dtype": str(left.dtype),
                "max_abs_error": float(difference.max(initial=0.0)),
            }
        )
    return report


def _load_inputs(path: Path | None) -> dict[str, np.ndarray[Any, Any]] | None:
    if path is None:
        return None
    with np.load(path, allow_pickle=False) as archive:
        return {name: archive[name].copy() for name in archive.files}


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--model", type=Path, required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument(
        "--source-kind",
        choices=("onnx", "tensorflow_via_onnx"),
        default="onnx",
    )
    parser.add_argument(
        "--input-npz",
        type=Path,
        help="可选；NPZ 中的键须与 ONNX 输入名一致。不提供时使用适配器确定性样例。",
    )
    args = parser.parse_args()
    output_dir = args.output_dir.resolve()
    output_dir.mkdir(parents=True, exist_ok=True)
    report_path = output_dir / "specialized_core_aten_report.json"

    report: dict[str, Any] = {
        "status": "failed",
        "source_kind": args.source_kind,
        "source_model": str(args.model.resolve()),
        "input_shape_mode": "specialized_static",
        "xpytorch_import_hook_disabled": os.environ.get("DISABLE_XPYTORCH") == "1",
    }
    try:
        reference_inputs = _load_inputs(args.input_npz)
        original_adapter = OnnxAdapter(args.model)
        original_adapter.check()
        _, original_outputs, numpy_inputs = original_adapter.run_reference(reference_inputs)

        specialized_path = output_dir / "source_onnx" / "model.shape_specialized.onnx"
        specialization = specialize_onnx_shape_subgraphs(
            args.model,
            numpy_inputs,
            specialized_path,
        )
        specialized_adapter = OnnxAdapter(specialized_path)
        specialized_adapter.check()
        _, specialized_outputs, _ = specialized_adapter.run_reference(numpy_inputs)
        specialization["output_comparison"] = _compare_numpy(
            original_outputs,
            specialized_outputs,
        )

        runtime_inputs = specialized_adapter._runtime_inputs()
        ordered_names = [item.name for item in runtime_inputs]
        torch_inputs = tuple(torch.from_numpy(numpy_inputs[name]) for name in ordered_names)
        module = specialized_adapter.to_torch().eval()
        with torch.no_grad():
            before_rewrite = module(*torch_inputs)
        rewrite = rewrite_onnx2torch_for_export(module)
        with torch.no_grad():
            after_rewrite = module(*torch_inputs)
        rewrite["output_comparison"] = compare_outputs(
            before_rewrite,
            after_rewrite,
            atol=0.0,
            rtol=0.0,
        )

        source = {
            "kind": args.source_kind,
            "entry": "shape-specialized ONNX via onnx2torch",
            "source_model": str(args.model.resolve()),
            "specialized_model": str(specialized_path),
            "input_shape_mode": "specialized_static",
            "onnx_input_order": ordered_names,
            "shape_specialization": specialization,
            "onnx2torch_export_rewrite": rewrite,
        }
        core_aten, artifacts, details = export_core_aten(
            module,
            torch_inputs,
            output_dir / "unified_core_aten",
            source=source,
            strict=False,
            atol=3e-4,
            rtol=3e-4,
        )
        report.update(
            {
                "status": "passed",
                "input_names": ordered_names,
                "shape_specialization": specialization,
                "onnx2torch_export_rewrite": rewrite,
                "artifacts": artifacts.as_dict(),
                "core_aten_graph_node_count": sum(
                    1 for _ in core_aten.graph_module.graph.nodes
                ),
                "validation": details["validation"],
            }
        )
    except Exception as exc:
        import traceback

        report["error"] = f"{type(exc).__name__}: {exc}"
        report["traceback"] = traceback.format_exc()
    _write_json(report_path, report)
    print(json.dumps(report, ensure_ascii=False, indent=2))
    print(f"REPORT={report_path}")
    return 0 if report["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
