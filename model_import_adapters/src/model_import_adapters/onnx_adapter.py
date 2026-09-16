"""ONNX模型的校验、信息提取、参考执行和可选PyTorch转换。"""

from __future__ import annotations

import hashlib
import json
from pathlib import Path
from typing import Any, Iterable, Mapping, Sequence

import numpy as np


class OnnxAdapterError(RuntimeError):
    """模型接入、执行或转换失败。"""


def _require_onnx():
    try:
        import onnx
    except ImportError as exc:
        raise OnnxAdapterError("缺少onnx，请先安装requirements-server.txt中的依赖") from exc
    return onnx


def _sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def _tensor_type_summary(value_info: Any) -> dict[str, Any]:
    onnx = _require_onnx()
    result: dict[str, Any] = {"name": value_info.name, "kind": "unknown"}
    type_proto = value_info.type
    if not type_proto.HasField("tensor_type"):
        return result

    tensor_type = type_proto.tensor_type
    result["kind"] = "tensor"
    try:
        result["element_type"] = onnx.TensorProto.DataType.Name(tensor_type.elem_type)
    except ValueError:
        result["element_type"] = f"UNKNOWN({tensor_type.elem_type})"

    if not tensor_type.HasField("shape"):
        result["shape"] = None
        return result

    dimensions: list[dict[str, Any]] = []
    for dim in tensor_type.shape.dim:
        if dim.HasField("dim_value"):
            dimensions.append({"kind": "static", "value": int(dim.dim_value)})
        elif dim.HasField("dim_param") and dim.dim_param:
            dimensions.append({"kind": "symbolic", "value": dim.dim_param})
        else:
            dimensions.append({"kind": "unknown", "value": None})
    result["shape"] = dimensions
    return result


def _attribute_summary(attribute: Any) -> dict[str, Any]:
    onnx = _require_onnx()
    kind = onnx.AttributeProto.AttributeType.Name(attribute.type)
    result: dict[str, Any] = {"name": attribute.name, "type": kind}
    if attribute.ref_attr_name:
        result["reference"] = attribute.ref_attr_name
    if attribute.type == onnx.AttributeProto.INT:
        result["value"] = int(attribute.i)
    elif attribute.type == onnx.AttributeProto.FLOAT:
        result["value"] = float(attribute.f)
    elif attribute.type == onnx.AttributeProto.STRING:
        result["value"] = attribute.s.decode("utf-8", errors="replace")
    elif attribute.type == onnx.AttributeProto.INTS:
        result["value"] = [int(value) for value in attribute.ints]
    elif attribute.type == onnx.AttributeProto.FLOATS:
        result["value"] = [float(value) for value in attribute.floats]
    elif attribute.type == onnx.AttributeProto.STRINGS:
        result["value"] = [value.decode("utf-8", errors="replace") for value in attribute.strings]
    elif attribute.type == onnx.AttributeProto.TENSOR:
        result["tensor"] = {
            "name": attribute.t.name,
            "data_type": onnx.TensorProto.DataType.Name(attribute.t.data_type),
            "dims": [int(dim) for dim in attribute.t.dims],
        }
    return result


def _graph_summary(graph: Any, scope: str) -> dict[str, Any]:
    onnx = _require_onnx()
    initializer_names = {initializer.name for initializer in graph.initializer}
    nodes: list[dict[str, Any]] = []
    control_flow: list[dict[str, Any]] = []

    for index, node in enumerate(graph.node):
        node_scope = f"{scope}/{node.name or node.op_type}_{index}"
        subgraphs: list[dict[str, Any]] = []
        attributes = [_attribute_summary(attribute) for attribute in node.attribute]
        for attribute in node.attribute:
            if attribute.type == onnx.AttributeProto.GRAPH:
                subgraphs.append(_graph_summary(attribute.g, f"{node_scope}:{attribute.name}"))
            elif attribute.type == onnx.AttributeProto.GRAPHS:
                for graph_index, child in enumerate(attribute.graphs):
                    subgraphs.append(
                        _graph_summary(child, f"{node_scope}:{attribute.name}[{graph_index}]")
                    )

        node_record = {
            "name": node.name,
            "op_type": node.op_type,
            "domain": node.domain or "ai.onnx",
            "inputs": list(node.input),
            "outputs": list(node.output),
            "attributes": attributes,
            "subgraphs": subgraphs,
        }
        nodes.append(node_record)
        if node.op_type in {"If", "Loop", "Scan"} or subgraphs:
            control_flow.append(
                {
                    "scope": node_scope,
                    "op_type": node.op_type,
                    "subgraph_count": len(subgraphs),
                }
            )

    return {
        "scope": scope,
        "name": graph.name,
        "inputs": [
            _tensor_type_summary(item)
            for item in graph.input
            if item.name not in initializer_names
        ],
        "outputs": [_tensor_type_summary(item) for item in graph.output],
        "value_info": [_tensor_type_summary(item) for item in graph.value_info],
        "initializers": [
            {
                "name": initializer.name,
                "data_type": onnx.TensorProto.DataType.Name(initializer.data_type),
                "dims": [int(dim) for dim in initializer.dims],
            }
            for initializer in graph.initializer
        ],
        "nodes": nodes,
        "control_flow": control_flow,
    }


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


def _resolve_dimension(value: Any, axis: int) -> int:
    if isinstance(value, int) and value > 0:
        return value
    name = str(value or "").lower()
    if "batch" in name:
        return 1
    if "sequence" in name or "seq" in name:
        return 8
    return 1 if axis == 0 else 8


def _numpy_dtype(ort_type: str) -> np.dtype[Any]:
    mapping = {
        "tensor(bool)": np.dtype(np.bool_),
        "tensor(int8)": np.dtype(np.int8),
        "tensor(int16)": np.dtype(np.int16),
        "tensor(int32)": np.dtype(np.int32),
        "tensor(int64)": np.dtype(np.int64),
        "tensor(uint8)": np.dtype(np.uint8),
        "tensor(uint16)": np.dtype(np.uint16),
        "tensor(uint32)": np.dtype(np.uint32),
        "tensor(uint64)": np.dtype(np.uint64),
        "tensor(float16)": np.dtype(np.float16),
        "tensor(float)": np.dtype(np.float32),
        "tensor(double)": np.dtype(np.float64),
    }
    try:
        return mapping[ort_type]
    except KeyError as exc:
        raise OnnxAdapterError(f"测试输入生成尚未覆盖ONNX Runtime类型：{ort_type}") from exc


class OnnxAdapter:
    """以模型信息保留和显式验证为中心的ONNX薄适配器。"""

    def __init__(self, model_path: str | Path):
        self.model_path = Path(model_path).resolve()
        if not self.model_path.is_file():
            raise OnnxAdapterError(f"ONNX模型不存在：{self.model_path}")
        self.onnx = _require_onnx()
        self.model = self.onnx.load(str(self.model_path), load_external_data=True)
        self.check_warnings: list[str] = []
        self.onnx2torch_compatibility: dict[str, Any] = {}

    def check(self) -> None:
        """执行ONNX结构与算子签名校验。"""

        try:
            self.onnx.checker.check_model(str(self.model_path), full_check=True)
        except Exception as exc:
            if "No Op registered for" not in str(exc):
                raise OnnxAdapterError(f"ONNX模型校验失败：{exc}") from exc
            try:
                import onnxruntime as ort

                ort.InferenceSession(str(self.model_path), providers=["CPUExecutionProvider"])
            except Exception as runtime_exc:
                raise OnnxAdapterError(
                    f"ONNX静态校验失败且ONNX Runtime也无法加载：{exc}; {runtime_exc}"
                ) from runtime_exc
            self.check_warnings.append(
                "ONNX checker不认识运行时扩展算子，但ONNX Runtime CPU会话创建通过："
                f"{exc}"
            )

    def infer_shapes(self) -> Any:
        """运行ONNX内置Shape推断并更新当前模型。"""

        try:
            self.model = self.onnx.shape_inference.infer_shapes(
                self.model,
                check_type=True,
                strict_mode=False,
                data_prop=True,
            )
        except TypeError:
            self.model = self.onnx.shape_inference.infer_shapes(self.model, check_type=True)
        except Exception as exc:
            raise OnnxAdapterError(f"ONNX Shape推断失败：{exc}") from exc
        return self.model

    def summary(self) -> dict[str, Any]:
        """返回模型、图、类型、Shape和控制流的可序列化摘要。"""

        from .control_flow import build_control_flow_contract

        return {
            "source_path": str(self.model_path),
            "source_sha256": _sha256(self.model_path),
            "ir_version": int(self.model.ir_version),
            "producer": {
                "name": self.model.producer_name,
                "version": self.model.producer_version,
            },
            "model_version": int(self.model.model_version),
            "domain": self.model.domain,
            "opsets": [
                {"domain": item.domain or "ai.onnx", "version": int(item.version)}
                for item in self.model.opset_import
            ],
            "metadata": {item.key: item.value for item in self.model.metadata_props},
            "graph": _graph_summary(self.model.graph, "main"),
            "control_flow_contract": build_control_flow_contract(self.model),
        }

    def save_artifacts(self, output_dir: str | Path) -> tuple[Path, Path]:
        """保存Shape推断后的模型与结构摘要。"""

        output_dir = Path(output_dir)
        output_dir.mkdir(parents=True, exist_ok=True)
        model_path = output_dir / "model.inferred.onnx"
        summary_path = output_dir / "model.summary.json"
        self.onnx.save(self.model, str(model_path))
        summary_path.write_text(
            json.dumps(self.summary(), ensure_ascii=False, indent=2),
            encoding="utf-8",
        )
        return model_path, summary_path

    def create_reference_inputs(self, seed: int = 0) -> dict[str, np.ndarray[Any, Any]]:
        """根据ONNX Runtime输入签名生成确定性小输入。"""

        try:
            import onnxruntime as ort
        except ImportError as exc:
            raise OnnxAdapterError("缺少onnxruntime，无法执行参考推理") from exc

        session = ort.InferenceSession(str(self.model_path), providers=["CPUExecutionProvider"])
        rng = np.random.default_rng(seed)
        inputs: dict[str, np.ndarray[Any, Any]] = {}
        for item in session.get_inputs():
            shape = tuple(_resolve_dimension(dim, axis) for axis, dim in enumerate(item.shape))
            dtype = _numpy_dtype(item.type)
            name = item.name.lower()
            if np.issubdtype(dtype, np.bool_):
                value = np.ones(shape, dtype=dtype)
            elif np.issubdtype(dtype, np.integer):
                if "mask" in name:
                    value = np.ones(shape, dtype=dtype)
                elif "token_type" in name or "segment" in name:
                    value = np.zeros(shape, dtype=dtype)
                elif "input_id" in name:
                    value = np.arange(np.prod(shape), dtype=np.int64).reshape(shape) % 97
                    value = value.astype(dtype, copy=False)
                else:
                    value = rng.integers(0, 4, size=shape, dtype=dtype)
            else:
                value = rng.standard_normal(size=shape).astype(dtype)
            inputs[item.name] = value
        return inputs

    def run_reference(
        self,
        inputs: Mapping[str, np.ndarray[Any, Any]] | None = None,
    ) -> tuple[list[str], list[np.ndarray[Any, Any]], dict[str, np.ndarray[Any, Any]]]:
        """使用ONNX Runtime CPU执行模型。"""

        try:
            import onnxruntime as ort
        except ImportError as exc:
            raise OnnxAdapterError("缺少onnxruntime，无法执行参考推理") from exc

        session = ort.InferenceSession(str(self.model_path), providers=["CPUExecutionProvider"])
        actual_inputs = dict(inputs or self.create_reference_inputs())
        output_names = [item.name for item in session.get_outputs()]
        outputs = session.run(output_names, actual_inputs)
        return output_names, outputs, actual_inputs

    def to_torch(self) -> Any:
        """转换为PyTorch；If/Loop映射为结构化高阶算子。"""

        try:
            from onnx2torch import convert
            from model_import_adapters.control_flow import (
                ControlFlowLoweringError,
                build_control_flow_contract,
                convert_onnx_with_control_flow,
            )
            from model_import_adapters.ort_fusion_compat import prepare_onnx2torch_compat
        except ImportError as exc:
            raise OnnxAdapterError("缺少onnx2torch，无法尝试ONNX到PyTorch转换") from exc
        try:
            self.onnx2torch_compatibility = prepare_onnx2torch_compat(self.model)
            contract = build_control_flow_contract(self.model)
            if contract["operator_count"]:
                module = convert_onnx_with_control_flow(self.model)
            else:
                module = convert(self.model)
            module.eval()
            return module
        except ControlFlowLoweringError as exc:
            raise OnnxAdapterError(f"ONNX控制流lowering失败：{exc}") from exc
        except Exception as exc:
            raise OnnxAdapterError(f"ONNX到PyTorch转换失败：{exc}") from exc

    def compare_with_torch(
        self,
        inputs: Mapping[str, np.ndarray[Any, Any]] | None = None,
        *,
        device: str = "cpu",
        compile_model: bool = False,
        atol: float = 1e-4,
        rtol: float = 1e-4,
    ) -> dict[str, Any]:
        """比较ONNX Runtime与转换后PyTorch模块的输出。"""

        try:
            import torch
        except ImportError as exc:
            raise OnnxAdapterError("缺少PyTorch，无法执行转换结果") from exc

        output_names, ort_outputs, actual_inputs = self.run_reference(inputs)
        module = self.to_torch()
        try:
            module = module.to(device)
        except Exception as exc:
            raise OnnxAdapterError(f"PyTorch模型无法迁移到设备{device}：{exc}") from exc
        if compile_model:
            try:
                module = torch.compile(module)
            except Exception as exc:
                raise OnnxAdapterError(f"PyTorch模型无法进入torch.compile：{exc}") from exc
        ordered_input_names = [item.name for item in self._runtime_inputs()]
        torch_inputs = [
            torch.from_numpy(actual_inputs[name]).to(device) for name in ordered_input_names
        ]
        with torch.no_grad():
            torch_value = module(*torch_inputs)
        if device.startswith("cuda"):
            torch.cuda.synchronize(torch.device(device))
        torch_outputs = [item.detach().cpu().numpy() for item in _flatten_outputs(torch_value)]
        if len(torch_outputs) != len(ort_outputs):
            raise OnnxAdapterError(
                f"输出数量不一致：ONNX={len(ort_outputs)}，PyTorch={len(torch_outputs)}"
            )

        comparisons: list[dict[str, Any]] = []
        for name, expected, actual in zip(output_names, ort_outputs, torch_outputs):
            if expected.shape != actual.shape:
                raise OnnxAdapterError(
                    f"输出{name}形状不一致：ONNX={expected.shape}，PyTorch={actual.shape}"
                )
            difference = np.abs(expected.astype(np.float64) - actual.astype(np.float64))
            np.testing.assert_allclose(actual, expected, atol=atol, rtol=rtol)
            comparisons.append(
                {
                    "name": name,
                    "shape": list(expected.shape),
                    "max_abs_error": float(difference.max(initial=0.0)),
                }
            )
        device_report: dict[str, Any] = {
            "requested": device,
            "output_device": str(_flatten_outputs(torch_value)[0].device),
            "execution_mode": "torch.compile" if compile_model else "eager",
        }
        if device.startswith("cuda"):
            device_index = torch.device(device).index or 0
            device_report.update(
                {
                    "torch_cuda_available": bool(torch.cuda.is_available()),
                    "visible_device_count": int(torch.cuda.device_count()),
                    "visible_device_name": torch.cuda.get_device_name(device_index),
                }
            )
        return {"status": "passed", "device": device_report, "outputs": comparisons}

    def _runtime_inputs(self) -> Sequence[Any]:
        try:
            import onnxruntime as ort
        except ImportError as exc:
            raise OnnxAdapterError("缺少onnxruntime") from exc
        session = ort.InferenceSession(str(self.model_path), providers=["CPUExecutionProvider"])
        return session.get_inputs()


def outputs_report(names: Iterable[str], outputs: Iterable[np.ndarray[Any, Any]]) -> list[dict[str, Any]]:
    """将推理输出压缩为便于记录的摘要。"""

    report: list[dict[str, Any]] = []
    for name, value in zip(names, outputs):
        array = np.asarray(value)
        report.append(
            {
                "name": name,
                "shape": list(array.shape),
                "dtype": str(array.dtype),
                "finite": bool(np.isfinite(array).all()) if np.issubdtype(array.dtype, np.number) else True,
            }
        )
    return report
