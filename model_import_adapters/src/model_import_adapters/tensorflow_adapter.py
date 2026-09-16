"""TensorFlow模型到ONNX交换层的薄适配器。"""

from __future__ import annotations

import json
import subprocess
import sys
from pathlib import Path
from typing import Any, Mapping, Sequence

import numpy as np

from .onnx_adapter import OnnxAdapter, OnnxAdapterError


class TensorFlowAdapterError(RuntimeError):
    """TensorFlow模型加载、转换或比较失败。"""


def _require_tensorflow():
    try:
        import tensorflow as tf
    except ImportError as exc:
        raise TensorFlowAdapterError("缺少tensorflow，请安装requirements-server.txt") from exc
    return tf


def _flatten_outputs(value: Any) -> list[Any]:
    if isinstance(value, Mapping):
        result: list[Any] = []
        for key in value:
            result.extend(_flatten_outputs(value[key]))
        return result
    if isinstance(value, (tuple, list)):
        result = []
        for item in value:
            result.extend(_flatten_outputs(item))
        return result
    return [value]


def convert_function(
    function: Any,
    input_signature: Sequence[Any],
    output_path: str | Path,
    *,
    opset: int = 17,
) -> Path:
    """将tf.function转换为ONNX并执行ONNX校验与Shape推断。"""

    _require_tensorflow()
    try:
        import tf2onnx
    except ImportError as exc:
        raise TensorFlowAdapterError("缺少tf2onnx，请安装requirements-server.txt") from exc

    output_path = Path(output_path).resolve()
    output_path.parent.mkdir(parents=True, exist_ok=True)
    try:
        tf2onnx.convert.from_function(
            function,
            input_signature=list(input_signature),
            opset=opset,
            output_path=str(output_path),
        )
    except Exception as exc:
        raise TensorFlowAdapterError(f"TensorFlow函数转换为ONNX失败：{exc}") from exc

    adapter = OnnxAdapter(output_path)
    adapter.check()
    adapter.infer_shapes()
    adapter.save_artifacts(output_path.parent)
    return output_path


def convert_saved_model(
    saved_model_dir: str | Path,
    output_path: str | Path,
    *,
    signature_def: str = "serving_default",
    opset: int = 17,
) -> Path:
    """通过tf2onnx命令行接口转换标准SavedModel。"""

    saved_model_dir = Path(saved_model_dir).resolve()
    output_path = Path(output_path).resolve()
    output_path.parent.mkdir(parents=True, exist_ok=True)
    command = [
        sys.executable,
        "-m",
        "tf2onnx.convert",
        "--saved-model",
        str(saved_model_dir),
        "--signature_def",
        signature_def,
        "--opset",
        str(opset),
        "--output",
        str(output_path),
    ]
    try:
        subprocess.run(command, check=True)
    except subprocess.CalledProcessError as exc:
        raise TensorFlowAdapterError(f"SavedModel转换失败，退出码={exc.returncode}") from exc

    adapter = OnnxAdapter(output_path)
    adapter.check()
    adapter.infer_shapes()
    adapter.save_artifacts(output_path.parent)
    return output_path


def compare_function_with_onnx(
    function: Any,
    onnx_path: str | Path,
    inputs: Sequence[np.ndarray[Any, Any]],
    input_names: Sequence[str],
    *,
    atol: float = 2e-4,
    rtol: float = 2e-4,
) -> dict[str, Any]:
    """比较TensorFlow函数与转换后ONNX模型的结果。"""

    tf = _require_tensorflow()
    try:
        tf_outputs = _flatten_outputs(function(*[tf.convert_to_tensor(value) for value in inputs]))
        tf_arrays = [np.asarray(value.numpy()) for value in tf_outputs]
    except Exception as exc:
        raise TensorFlowAdapterError(f"TensorFlow参考执行失败：{exc}") from exc

    adapter = OnnxAdapter(onnx_path)
    try:
        import onnxruntime as ort
    except ImportError as exc:
        raise TensorFlowAdapterError("缺少onnxruntime") from exc
    session = ort.InferenceSession(str(onnx_path), providers=["CPUExecutionProvider"])
    runtime_names = [item.name for item in session.get_inputs()]
    by_name = {name.split(":", 1)[0]: value for name, value in zip(input_names, inputs)}
    ort_inputs: dict[str, np.ndarray[Any, Any]] = {}
    for runtime_name in runtime_names:
        base_name = runtime_name.split(":", 1)[0]
        if base_name not in by_name:
            raise TensorFlowAdapterError(
                f"无法将ONNX输入{runtime_name}对应到TensorFlow签名{list(input_names)}"
            )
        ort_inputs[runtime_name] = by_name[base_name]
    ort_outputs = session.run(None, ort_inputs)

    if len(tf_arrays) != len(ort_outputs):
        raise TensorFlowAdapterError(
            f"输出数量不一致：TensorFlow={len(tf_arrays)}，ONNX={len(ort_outputs)}"
        )
    comparisons: list[dict[str, Any]] = []
    for index, (expected, actual) in enumerate(zip(tf_arrays, ort_outputs)):
        if expected.shape != actual.shape:
            raise TensorFlowAdapterError(
                f"输出{index}形状不一致：TensorFlow={expected.shape}，ONNX={actual.shape}"
            )
        difference = np.abs(expected.astype(np.float64) - actual.astype(np.float64))
        np.testing.assert_allclose(actual, expected, atol=atol, rtol=rtol)
        comparisons.append(
            {
                "index": index,
                "shape": list(expected.shape),
                "max_abs_error": float(difference.max(initial=0.0)),
            }
        )
    return {"status": "passed", "outputs": comparisons}


def write_report(path: str | Path, report: Mapping[str, Any]) -> Path:
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    return path
