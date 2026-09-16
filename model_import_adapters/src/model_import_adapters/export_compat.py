"""ONNX/onnx2torch 到 ``torch.export`` 的静态样例兼容层。

中大型 ONNX 图通常包含 Shape 派生子图。onnx2torch 的若干转换器会在
``forward`` 中把这些张量转成 Python/NumPy 值，因此无法被 Dynamo 完整捕获。
本模块只在调用方明确选择“静态样例专化”时使用：先以给定输入计算并固化
Shape 派生子图，再把仍带常量参数的转换器模块替换为等价、可导出的 PyTorch
实现。动态 Shape 语义不会被伪装成已保留。
"""

from __future__ import annotations

import copy
from collections import Counter
from pathlib import Path
from typing import Any, Mapping

import numpy as np
import torch
from torch import nn


class ExportCompatibilityError(RuntimeError):
    """静态专化或导出兼容改写无法安全完成。"""


class _StaticReshape(nn.Module):
    def __init__(self, shape: torch.Tensor) -> None:
        super().__init__()
        self.shape = tuple(int(value) for value in torch.as_tensor(shape).reshape(-1).tolist())

    def forward(self, input_tensor: torch.Tensor, _shape_tensor: torch.Tensor) -> torch.Tensor:
        shape = tuple(
            input_tensor.shape[index] if value == 0 else value
            for index, value in enumerate(self.shape)
        )
        return torch.reshape(input_tensor, shape)


class _StaticExpand(nn.Module):
    def __init__(self, shape: torch.Tensor) -> None:
        super().__init__()
        self.shape = tuple(int(value) for value in torch.as_tensor(shape).reshape(-1).tolist())

    def forward(self, input_tensor: torch.Tensor, _shape_tensor: torch.Tensor) -> torch.Tensor:
        return input_tensor.expand(self.shape)


class _StaticGather(nn.Module):
    def __init__(self, axis: int, indices: torch.Tensor) -> None:
        super().__init__()
        values = torch.as_tensor(indices, dtype=torch.long)
        self.axis = int(axis)
        self.scalar = values.ndim == 0
        self.index_shape = tuple(values.shape)
        if self.scalar:
            self.index = int(values.item())
        else:
            self.register_buffer("indices", values.reshape(-1))

    def forward(self, input_tensor: torch.Tensor, _indices_tensor: torch.Tensor) -> torch.Tensor:
        axis = self.axis if self.axis >= 0 else input_tensor.dim() + self.axis
        if self.scalar:
            return torch.select(input_tensor, axis, self.index)
        selected = torch.index_select(input_tensor, axis, self.indices)
        result_shape = (
            tuple(input_tensor.shape[:axis])
            + self.index_shape
            + tuple(input_tensor.shape[axis + 1 :])
        )
        return selected.reshape(result_shape)


class _StaticSlice(nn.Module):
    def __init__(
        self,
        starts: torch.Tensor,
        ends: torch.Tensor,
        axes: torch.Tensor | None = None,
        steps: torch.Tensor | None = None,
    ) -> None:
        super().__init__()
        self.starts = tuple(int(value) for value in torch.as_tensor(starts).reshape(-1).tolist())
        self.ends = tuple(int(value) for value in torch.as_tensor(ends).reshape(-1).tolist())
        self.axes = (
            tuple(range(len(self.starts)))
            if axes is None
            else tuple(int(value) for value in torch.as_tensor(axes).reshape(-1).tolist())
        )
        self.steps = (
            (1,) * len(self.starts)
            if steps is None
            else tuple(int(value) for value in torch.as_tensor(steps).reshape(-1).tolist())
        )
        if not (len(self.starts) == len(self.ends) == len(self.axes) == len(self.steps)):
            raise ExportCompatibilityError("Slice 的 starts/ends/axes/steps 长度不一致")
        if any(step <= 0 for step in self.steps):
            raise ExportCompatibilityError("暂不安全改写 step<=0 的 ONNX Slice")

    def forward(
        self,
        input_tensor: torch.Tensor,
        _starts: torch.Tensor,
        _ends: torch.Tensor,
        _axes: torch.Tensor | None = None,
        _steps: torch.Tensor | None = None,
    ) -> torch.Tensor:
        slices = [slice(None)] * input_tensor.dim()
        for start, end, axis, step in zip(self.starts, self.ends, self.axes, self.steps):
            normalized_axis = axis if axis >= 0 else input_tensor.dim() + axis
            slices[normalized_axis] = slice(start, end, step)
        return input_tensor[tuple(slices)]


class _StaticSqueeze(nn.Module):
    def __init__(self, axes: torch.Tensor) -> None:
        super().__init__()
        self.axes = tuple(int(value) for value in torch.as_tensor(axes).reshape(-1).tolist())

    def forward(self, input_tensor: torch.Tensor, _axes: torch.Tensor) -> torch.Tensor:
        return torch.squeeze(input_tensor, dim=self.axes)


class _StaticUnsqueeze(nn.Module):
    def __init__(self, axes: torch.Tensor) -> None:
        super().__init__()
        self.axes = tuple(int(value) for value in torch.as_tensor(axes).reshape(-1).tolist())

    def forward(self, input_tensor: torch.Tensor, _axes: torch.Tensor) -> torch.Tensor:
        output_rank = input_tensor.dim() + len(self.axes)
        normalized_axes = sorted(axis if axis >= 0 else output_rank + axis for axis in self.axes)
        result = input_tensor
        for axis in normalized_axes:
            result = torch.unsqueeze(result, dim=axis)
        return result


def _replace_submodule(root: nn.Module, target: str, replacement: nn.Module) -> None:
    parent_name, _, child_name = target.rpartition(".")
    parent = root.get_submodule(parent_name) if parent_name else root
    setattr(parent, child_name, replacement)


def _constant_arg(module: nn.Module, node: torch.fx.Node, index: int) -> torch.Tensor | None:
    if len(node.args) <= index:
        return None
    value_node = node.args[index]
    if value_node is None:
        return None
    if isinstance(value_node, torch.Tensor):
        return value_node
    if not isinstance(value_node, torch.fx.Node):
        return None
    if value_node.op == "call_module":
        value_module = module.get_submodule(str(value_node.target))
        try:
            value = value_module()
        except TypeError:
            return None
        return torch.as_tensor(value)
    if value_node.op == "get_attr":
        value: object = module
        for atom in str(value_node.target).split("."):
            value = getattr(value, atom)
        return torch.as_tensor(value)
    return None


def rewrite_onnx2torch_for_export(module: nn.Module) -> dict[str, Any]:
    """把常量参数的 onnx2torch 模块替换为 ``torch.export`` 兼容实现。"""

    graph = getattr(module, "graph", None)
    if graph is None or not hasattr(module, "get_submodule"):
        raise ExportCompatibilityError("onnx2torch 输出不是可检查的 FX GraphModule")

    replacements: dict[str, tuple[nn.Module, str]] = {}
    skipped: list[dict[str, str]] = []
    for node in list(graph.nodes):
        if node.op != "call_module":
            continue
        target = str(node.target)
        child = module.get_submodule(target)
        kind = type(child).__name__
        replacement: nn.Module | None = None
        try:
            if kind == "OnnxReshape":
                shape = _constant_arg(module, node, 1)
                if shape is not None:
                    replacement = _StaticReshape(shape)
            elif kind == "OnnxExpand":
                shape = _constant_arg(module, node, 1)
                if shape is not None:
                    replacement = _StaticExpand(shape)
            elif kind == "OnnxGather":
                indices = _constant_arg(module, node, 1)
                if indices is not None:
                    replacement = _StaticGather(child._axis, indices)
            elif kind == "OnnxSlice":
                starts = _constant_arg(module, node, 1)
                ends = _constant_arg(module, node, 2)
                if starts is not None and ends is not None:
                    replacement = _StaticSlice(
                        starts,
                        ends,
                        _constant_arg(module, node, 3),
                        _constant_arg(module, node, 4),
                    )
            elif kind.startswith("OnnxSqueeze"):
                axes = _constant_arg(module, node, 1)
                if axes is not None:
                    replacement = _StaticSqueeze(axes)
            elif kind.startswith("OnnxUnsqueeze"):
                axes = _constant_arg(module, node, 1)
                if axes is not None:
                    replacement = _StaticUnsqueeze(axes)
        except ExportCompatibilityError as exc:
            skipped.append({"target": target, "kind": kind, "reason": str(exc)})
        if replacement is not None:
            replacements[target] = (replacement, kind)

    records: list[dict[str, str]] = []
    for target, (replacement, kind) in replacements.items():
        _replace_submodule(module, target, replacement)
        records.append(
            {
                "target": target,
                "kind": kind,
                "replacement": type(replacement).__name__,
            }
        )
    return {
        "count": len(records),
        "operator_counts": dict(sorted(Counter(item["replacement"] for item in records).items())),
        "replacements": records,
        "skipped": skipped,
    }
def _shape_subgraph_node_indices(model: Any) -> list[int]:
    constants = {initializer.name for initializer in model.graph.initializer}
    constants.update(
        output
        for node in model.graph.node
        if node.op_type == "Constant"
        for output in node.output
        if output
    )
    shape_values: set[str] = set()
    selected: list[int] = []
    for index, node in enumerate(model.graph.node):
        inputs = [name for name in node.input if name]
        is_shape_root = node.op_type == "Shape"
        derives_from_shape = bool(inputs) and any(name in shape_values for name in inputs)
        only_shape_or_constant = all(name in shape_values or name in constants for name in inputs)
        if is_shape_root or (derives_from_shape and only_shape_or_constant):
            selected.append(index)
            shape_values.update(name for name in node.output if name)
    return selected


def specialize_onnx_shape_subgraphs(
    model_path: str | Path,
    inputs: Mapping[str, np.ndarray[Any, Any]],
    output_path: str | Path,
) -> dict[str, Any]:
    """以一组明确输入固化 ONNX Shape 派生子图，并保存专化模型。"""

    try:
        import onnx
        import onnxruntime as ort
        from onnx import helper, numpy_helper
    except ImportError as exc:
        raise ExportCompatibilityError("需要安装 onnx 与 onnxruntime") from exc

    model_path = Path(model_path).resolve()
    output_path = Path(output_path).resolve()
    output_path.parent.mkdir(parents=True, exist_ok=True)
    model = onnx.load(model_path)
    model = onnx.shape_inference.infer_shapes(model, strict_mode=False)
    selected_indices = _shape_subgraph_node_indices(model)
    selected_nodes = [model.graph.node[index] for index in selected_indices]
    capture_names = [name for node in selected_nodes for name in node.output if name]
    if not selected_nodes:
        onnx.save(model, output_path)
        return {
            "specialized": False,
            "node_count": 0,
            "captured_output_count": 0,
            "operator_counts": {},
            "model": str(output_path),
        }

    value_info = {
        item.name: item
        for item in [*model.graph.input, *model.graph.output, *model.graph.value_info]
    }
    missing = [name for name in capture_names if name not in value_info]
    if missing:
        raise ExportCompatibilityError(
            f"Shape 派生输出缺少类型信息，无法安全捕获：{missing[:10]}"
        )

    capture_model = copy.deepcopy(model)
    existing_outputs = {item.name for item in capture_model.graph.output}
    for name in capture_names:
        if name not in existing_outputs:
            capture_model.graph.output.append(copy.deepcopy(value_info[name]))
    try:
        session = ort.InferenceSession(
            capture_model.SerializeToString(),
            providers=["CPUExecutionProvider"],
        )
        captured_values = session.run(capture_names, dict(inputs))
    except Exception as exc:
        raise ExportCompatibilityError(f"Shape 派生子图运行时捕获失败：{exc}") from exc
    captured = dict(zip(capture_names, captured_values))

    selected_set = set(selected_indices)
    rewritten_nodes = []
    for index, node in enumerate(model.graph.node):
        if index not in selected_set:
            rewritten_nodes.append(node)
            continue
        for output_index, name in enumerate(node.output):
            if not name:
                continue
            tensor = numpy_helper.from_array(
                np.asarray(captured[name]),
                name=f"{name}__specialized_value",
            )
            rewritten_nodes.append(
                helper.make_node(
                    "Constant",
                    [],
                    [name],
                    name=f"{node.name or node.op_type}_{index}_{output_index}__shape_specialized",
                    value=tensor,
                )
            )
    del model.graph.node[:]
    model.graph.node.extend(rewritten_nodes)
    onnx.checker.check_model(model)
    onnx.save(model, output_path)
    return {
        "specialized": True,
        "node_count": len(selected_nodes),
        "captured_output_count": len(capture_names),
        "operator_counts": dict(sorted(Counter(node.op_type for node in selected_nodes).items())),
        "model": str(output_path),
    }
