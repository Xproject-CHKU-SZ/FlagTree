from __future__ import annotations

import builtins
import operator
from typing import Any, Mapping, Sequence

import numpy as np
import torch
from torch import nn


class DynamicShapeCompatibilityError(RuntimeError):
    """Raised when an ONNX shape subgraph cannot be represented symbolically."""


class SymbolicReshape(nn.Module):
    def forward(self, input_tensor: torch.Tensor, shape: tuple[Any, ...]) -> torch.Tensor:
        return torch.reshape(input_tensor, shape)


class SymbolicExpand(nn.Module):
    def forward(self, input_tensor: torch.Tensor, shape: tuple[Any, ...]) -> torch.Tensor:
        return input_tensor.expand(shape)


class SymbolicSlice(nn.Module):
    def __init__(
        self,
        starts: tuple[int, ...] | None,
        ends: tuple[int, ...] | None,
        axes: tuple[int, ...],
        steps: tuple[int, ...],
    ):
        super().__init__()
        self.starts = starts
        self.ends = ends
        self.axes = axes
        self.steps = steps

    def forward(
        self,
        input_tensor: torch.Tensor,
        starts: tuple[Any, ...],
        ends: tuple[Any, ...],
        _axes: torch.Tensor | None = None,
        _steps: torch.Tensor | None = None,
    ) -> torch.Tensor:
        start_values = self.starts
        if start_values is None:
            start_values = starts if isinstance(starts, (tuple, list, torch.Size)) else (starts,)
        end_values = self.ends
        if end_values is None:
            end_values = ends if isinstance(ends, (tuple, list, torch.Size)) else (ends,)
        slices = [slice(None)] * input_tensor.dim()
        for start, end, axis, step in zip(start_values, end_values, self.axes, self.steps):
            normalized_axis = axis if axis >= 0 else input_tensor.dim() + axis
            slices[normalized_axis] = slice(start, end, step)
        return input_tensor[tuple(slices)]


class StaticAxisCumSum(nn.Module):
    """CumSum with an export-time constant axis instead of Tensor.item()."""

    def __init__(self, axis: int, exclusive: bool, reverse: bool):
        super().__init__()
        self.axis = axis
        self.exclusive = exclusive
        self.reverse = reverse

    def forward(self, input_tensor: torch.Tensor, _axis: torch.Tensor) -> torch.Tensor:
        working = torch.flip(input_tensor, dims=(self.axis,)) if self.reverse else input_tensor
        result = torch.cumsum(working, dim=self.axis)
        if self.exclusive:
            result = result - working
        return torch.flip(result, dims=(self.axis,)) if self.reverse else result


def range_from_shape(
    start: Any,
    limit: Any,
    delta: Any,
    reference: torch.Tensor,
    dtype: torch.dtype,
) -> torch.Tensor:
    """Build a device-polymorphic Range whose length may contain a SymInt."""
    if delta <= 0:
        raise DynamicShapeCompatibilityError("Only positive symbolic Range steps are supported")
    count = (limit - start + delta - 1) // delta
    ones = reference.new_ones((count,), dtype=dtype)
    return (torch.cumsum(ones, dim=0, dtype=dtype) - 1) * delta + start


def tensor_from_shape_value(
    value: Any,
    reference: torch.Tensor,
    dtype: torch.dtype,
) -> torch.Tensor:
    """Materialize shape-derived scalars without reading a Tensor value.

    A Cast followed by an ordinary tensor operator (for example Sqrt in scaled
    dot-product attention) must remain a Tensor. Multiplying a device-local
    scalar by each SymInt keeps the dimension symbolic and avoids Tensor.item().
    """
    if isinstance(value, (tuple, list, torch.Size)):
        scalars = [reference.new_ones((), dtype=dtype) * item for item in value]
        return torch.stack(scalars) if scalars else reference.new_empty((0,), dtype=dtype)
    return reference.new_ones((), dtype=dtype) * value


def _get_attr(root: nn.Module, target: Any) -> Any:
    value: Any = root
    for atom in str(target).split("."):
        value = getattr(value, atom)
    return value


def _constant_value(module: torch.fx.GraphModule, value: Any) -> torch.Tensor | None:
    if isinstance(value, torch.fx.Node):
        if value.op == "get_attr":
            return torch.as_tensor(_get_attr(module, value.target))
        if value.op == "call_module":
            child = module.get_submodule(str(value.target))
            try:
                return torch.as_tensor(child())
            except TypeError:
                return None
        return None
    if isinstance(value, torch.Tensor):
        return value
    try:
        return torch.as_tensor(value)
    except (TypeError, ValueError):
        return None


def _numbers(module: torch.fx.GraphModule, value: Any) -> tuple[int, ...] | None:
    tensor = _constant_value(module, value)
    if tensor is None:
        return None
    return tuple(int(item) for item in tensor.reshape(-1).tolist())


def _replace_submodule(root: nn.Module, target: Any, replacement: nn.Module) -> None:
    parent_name, _, child_name = str(target).rpartition(".")
    parent = root.get_submodule(parent_name) if parent_name else root
    setattr(parent, child_name, replacement)


def _call_module_kind(
    module: torch.fx.GraphModule,
    value: Any,
    expected_kind: str,
) -> nn.Module | None:
    if not isinstance(value, torch.fx.Node) or value.op != "call_module":
        return None
    child = module.get_submodule(str(value.target))
    return child if type(child).__name__ == expected_kind else None


def _negative_one_shape_fill_node(
    module: torch.fx.GraphModule,
    value: Any,
    symbolic_arg: torch.fx.Node,
    symbolic_tuple_shape_nodes: Mapping[torch.fx.Node, torch.fx.Node],
) -> torch.fx.Node | None:
    """Recognize ``ConstantOfShape(Shape(symbolic_shape)) * -1``.

    PyTorch's ONNX exporter uses this expression as the comparison operand in
    an Expand shape-normalization guard. It is deliberately matched by graph
    semantics instead of generated FX target names.
    """
    multiply = _call_module_kind(module, value, "OnnxBinaryMathOperation")
    if multiply is None or multiply.math_op_function is not torch.mul:
        return None
    for fill_value, constant_value in (
        (value.args[0], value.args[1]),
        (value.args[1], value.args[0]),
    ):
        if _numbers(module, constant_value) != (-1,):
            continue
        fill = _call_module_kind(module, fill_value, "OnnxConstantOfShape")
        if fill is None or not isinstance(fill_value, torch.fx.Node):
            continue
        if not fill_value.args:
            continue
        shape_node = fill_value.args[0]
        if symbolic_tuple_shape_nodes.get(shape_node) is symbolic_arg:
            return fill_value
    return None


def _accepts_symbolic_shape_value(module: torch.fx.GraphModule, node: torch.fx.Node) -> bool:
    if node.op != "call_module":
        return False
    kind = type(module.get_submodule(str(node.target))).__name__
    return kind in {
        "OnnxGather",
        "OnnxSlice",
        "OnnxConcat",
        "OnnxCast",
        "OnnxBinaryMathOperation",
        "OnnxRange",
        "OnnxCompare",
        "OnnxReshape",
        "OnnxExpand",
    } or kind.startswith(("OnnxUnsqueeze", "OnnxSqueeze"))


def rewrite_onnx2torch_symbolic_shapes(module: torch.fx.GraphModule) -> list[dict[str, str]]:
    """Preserve ONNX shape arithmetic as Python/SymInt operations for torch.export.

    onnx2torch materializes Shape/Gather/Slice/Concat values as tensors. PyTorch 2.5
    FakeTensor export cannot read those tensor values, so dynamic dimensions become
    unavailable during export. This pass replaces the supported BERT-style shape
    subgraph with tuple and SymInt operations before the existing static compatibility
    pass runs.
    """
    graph = module.graph
    symbolic_nodes: set[torch.fx.Node] = set()
    reference_nodes: dict[torch.fx.Node, torch.fx.Node] = {}
    symbolic_tuple_shape_nodes: dict[torch.fx.Node, torch.fx.Node] = {}
    symbolic_negative_one_equal: dict[
        torch.fx.Node, tuple[torch.fx.Node, torch.fx.Node | None]
    ] = {}
    records: list[dict[str, str]] = []

    for node in list(graph.nodes):
        if node.op != "call_module":
            continue
        child = module.get_submodule(str(node.target))
        kind = type(child).__name__
        new_node: torch.fx.Node | None = None
        reference: torch.fx.Node | None = None
        result_is_symbolic = True

        if kind == "OnnxShape":
            input_node = node.args[0]
            if input_node in symbolic_nodes:
                # A Shape applied to the symbolic shape vector itself occurs in
                # the standard ONNX Expand guard. Keep it temporarily so the
                # full guard can be identified, then dead-code eliminate it.
                symbolic_tuple_shape_nodes[node] = input_node
                records.append(
                    {
                        "target": str(node.target),
                        "kind": kind,
                        "deferred": "shape of symbolic shape vector",
                    }
                )
                continue
            with graph.inserting_before(node):
                shape = graph.call_function(builtins.getattr, args=(input_node, "shape"))
                if child._start != 0 or child._end is not None:
                    shape = graph.call_function(
                        operator.getitem, args=(shape, slice(child._start, child._end))
                    )
            new_node = shape
            reference = input_node
        elif kind == "OnnxGather" and node.args[0] in symbolic_nodes:
            indices = _numbers(module, node.args[1])
            index_tensor = _constant_value(module, node.args[1])
            if child._axis != 0 or indices is None or index_tensor is None:
                raise DynamicShapeCompatibilityError(f"Unsupported symbolic Gather: {node.target}")
            with graph.inserting_before(node):
                if len(indices) == 1 and index_tensor.ndim == 0:
                    new_node = graph.call_function(operator.getitem, args=(node.args[0], indices[0]))
                else:
                    gathered = tuple(
                        graph.call_function(operator.getitem, args=(node.args[0], index))
                        for index in indices
                    )
                    new_node = graph.call_function(tuple, args=(gathered,))
            reference = reference_nodes[node.args[0]]
        elif kind.startswith("OnnxUnsqueeze") and node.args[0] in symbolic_nodes:
            axes = tuple(int(item) for item in getattr(child, "_axes", [0]))
            if axes != (0,):
                raise DynamicShapeCompatibilityError(
                    f"Unsupported symbolic Unsqueeze axes {axes}: {node.target}"
                )
            with graph.inserting_before(node):
                new_node = graph.call_function(tuple, args=((node.args[0],),))
            reference = reference_nodes[node.args[0]]
        elif kind == "OnnxSlice" and node.args[0] in symbolic_nodes:
            starts = _numbers(module, node.args[1])
            ends = _numbers(module, node.args[2])
            axes = _numbers(module, node.args[3]) if len(node.args) > 3 else (0,)
            steps = _numbers(module, node.args[4]) if len(node.args) > 4 else None
            steps = steps or ((1,) * len(starts or ()))
            if starts is None or ends is None or axes != (0,) or len(starts) != 1:
                raise DynamicShapeCompatibilityError(f"Unsupported symbolic tuple Slice: {node.target}")
            with graph.inserting_before(node):
                new_node = graph.call_function(
                    operator.getitem, args=(node.args[0], slice(starts[0], ends[0], steps[0]))
                )
            reference = reference_nodes[node.args[0]]
        elif kind.startswith("OnnxSqueeze") and node.args[0] in symbolic_nodes:
            axes = _numbers(module, node.args[1]) if len(node.args) > 1 else (0,)
            if axes != (0,):
                raise DynamicShapeCompatibilityError(
                    f"Unsupported symbolic Squeeze axes {axes}: {node.target}"
                )
            with graph.inserting_before(node):
                new_node = graph.call_function(operator.getitem, args=(node.args[0], 0))
            reference = reference_nodes[node.args[0]]
        elif kind == "OnnxConcat" and any(arg in symbolic_nodes for arg in node.args):
            if child.axis != 0:
                raise DynamicShapeCompatibilityError(f"Unsupported symbolic Concat axis: {node.target}")
            values: list[Any] = []
            references: list[torch.fx.Node] = []
            for arg in node.args:
                if arg in symbolic_nodes:
                    values.append(arg)
                    references.append(reference_nodes[arg])
                else:
                    constant = _numbers(module, arg)
                    if constant is None:
                        raise DynamicShapeCompatibilityError(
                            f"Non-constant symbolic Concat input: {node.target}"
                        )
                    values.append(constant)
            with graph.inserting_before(node):
                combined = values[0]
                if not isinstance(combined, torch.fx.Node):
                    combined = graph.call_function(tuple, args=(combined,))
                for value in values[1:]:
                    combined = graph.call_function(operator.add, args=(combined, value))
            new_node = combined
            reference = references[0]
        elif kind == "OnnxCast" and node.args[0] in symbolic_nodes:
            reference = reference_nodes[node.args[0]]
            if any(not _accepts_symbolic_shape_value(module, user) for user in node.users):
                with graph.inserting_before(node):
                    new_node = graph.call_function(
                        tensor_from_shape_value,
                        args=(node.args[0], reference, child.torch_dtype),
                    )
                result_is_symbolic = False
            else:
                new_node = node.args[0]
        elif kind == "OnnxReshape" and node.args[0] in symbolic_nodes:
            target_shape = _numbers(module, node.args[1]) if len(node.args) > 1 else None
            if target_shape != (-1,):
                raise DynamicShapeCompatibilityError(
                    f"Only flattening a symbolic shape vector is supported: {node.target}"
                )
            # A symbolic shape vector is already represented as a flat Python
            # tuple, so ONNX Reshape([-1]) is an identity operation.
            new_node = node.args[0]
            reference = reference_nodes[node.args[0]]
        elif kind == "OnnxBinaryMathOperation" and any(arg in symbolic_nodes for arg in node.args):
            values: list[Any] = []
            for arg in node.args:
                if arg in symbolic_nodes:
                    values.append(arg)
                    reference = reference or reference_nodes[arg]
                else:
                    tensor = _constant_value(module, arg)
                    if tensor is None or tensor.numel() != 1:
                        raise DynamicShapeCompatibilityError(
                            f"Symbolic arithmetic requires scalar constants: {node.target}"
                        )
                    values.append(int(tensor.item()))
            functions = {
                torch.add: operator.add,
                torch.sub: operator.sub,
                torch.mul: operator.mul,
            }
            function = functions.get(child.math_op_function)
            if function is None:
                raise DynamicShapeCompatibilityError(
                    f"Unsupported symbolic arithmetic function: {node.target}"
                )
            with graph.inserting_before(node):
                new_node = graph.call_function(function, args=tuple(values))
        elif kind == "OnnxRange" and any(arg in symbolic_nodes for arg in node.args):
            values: list[Any] = []
            dtype: torch.dtype | None = None
            for arg in node.args:
                if arg in symbolic_nodes:
                    values.append(arg)
                    if reference is None:
                        reference = reference_nodes[arg]
                else:
                    tensor = _constant_value(module, arg)
                    if tensor is None or tensor.numel() != 1:
                        raise DynamicShapeCompatibilityError(
                            f"Unsupported symbolic Range input: {node.target}"
                        )
                    values.append(int(tensor.item()))
                    dtype = dtype or tensor.dtype
            if reference is None or dtype is None:
                raise DynamicShapeCompatibilityError(
                    f"Missing symbolic Range reference/dtype: {node.target}"
                )
            with graph.inserting_before(node):
                new_node = graph.call_function(
                    range_from_shape, args=(values[0], values[1], values[2], reference, dtype)
                )
            result_is_symbolic = False
        elif kind == "OnnxCompare" and any(arg in symbolic_nodes for arg in node.args):
            symbolic_args = [arg for arg in node.args if arg in symbolic_nodes]
            if len(symbolic_args) != 1 or child.compare_function is not torch.eq:
                raise DynamicShapeCompatibilityError(
                    f"Unsupported symbolic comparison: {node.target}"
                )
            symbolic_arg = symbolic_args[0]
            other_arg = node.args[1] if node.args[0] is symbolic_arg else node.args[0]
            other_values = _numbers(module, other_arg)
            fill_node: torch.fx.Node | None = None
            if other_values is None:
                fill_node = _negative_one_shape_fill_node(
                    module,
                    other_arg,
                    symbolic_arg,
                    symbolic_tuple_shape_nodes,
                )
            if fill_node is None and (
                other_values is None
                or not other_values
                or any(value != -1 for value in other_values)
            ):
                raise DynamicShapeCompatibilityError(
                    f"Only symbolic shape == all-negative-one is supported: {node.target}"
                )
            symbolic_negative_one_equal[node] = (symbolic_arg, fill_node)
            records.append(
                {"target": str(node.target), "kind": kind, "deferred": "negative-one shape guard"}
            )
        elif kind == "OnnxWhere" and node.args[0] in symbolic_negative_one_equal:
            condition = node.args[0]
            symbolic_arg, fill_node = symbolic_negative_one_equal[condition]
            if node.args[2] is not symbolic_arg or (
                fill_node is not None and node.args[1] is not fill_node
            ):
                raise DynamicShapeCompatibilityError(
                    f"Unsupported symbolic shape guard branches: {node.target}"
                )
            # Shape-derived dimensions cannot be -1. The ONNX exporter emits this
            # Equal/Where pair only to normalize -1 before Expand, so the false
            # branch (the symbolic shape tuple itself) is always selected.
            node.replace_all_uses_with(symbolic_arg)
            graph.erase_node(node)
            if not condition.users:
                graph.erase_node(condition)
            records.append(
                {"target": str(node.target), "kind": kind, "replacement": "symbolic shape tuple"}
            )
            continue

        if new_node is not None:
            node.replace_all_uses_with(new_node)
            graph.erase_node(node)
            if result_is_symbolic:
                symbolic_nodes.add(new_node)
                assert reference is not None
                reference_nodes[new_node] = reference
            records.append({"target": str(node.target), "kind": kind})
            continue

        if kind == "OnnxCumSum":
            axis = _numbers(module, node.args[1]) if len(node.args) > 1 else None
            if axis is None or len(axis) != 1:
                raise DynamicShapeCompatibilityError(
                    f"CumSum axis must be a single constant: {node.target}"
                )
            _replace_submodule(
                module,
                node.target,
                StaticAxisCumSum(axis[0], bool(child.exclusive), bool(child.reverse)),
            )
            records.append(
                {"target": str(node.target), "kind": kind, "replacement": "StaticAxisCumSum"}
            )
        elif kind == "OnnxReshape" and len(node.args) > 1 and node.args[1] in symbolic_nodes:
            _replace_submodule(module, node.target, SymbolicReshape())
            records.append(
                {"target": str(node.target), "kind": kind, "replacement": "SymbolicReshape"}
            )
        elif kind == "OnnxExpand" and len(node.args) > 1 and node.args[1] in symbolic_nodes:
            _replace_submodule(module, node.target, SymbolicExpand())
            records.append(
                {"target": str(node.target), "kind": kind, "replacement": "SymbolicExpand"}
            )
        elif kind == "OnnxSlice" and any(arg in symbolic_nodes for arg in node.args[1:]):
            starts = _numbers(module, node.args[1])
            ends = _numbers(module, node.args[2])
            axes = _numbers(module, node.args[3]) if len(node.args) > 3 else (0,)
            steps = _numbers(module, node.args[4]) if len(node.args) > 4 else None
            starts_symbolic = node.args[1] in symbolic_nodes
            ends_symbolic = node.args[2] in symbolic_nodes
            if (
                (starts is None and not starts_symbolic)
                or (ends is None and not ends_symbolic)
                or axes is None
            ):
                raise DynamicShapeCompatibilityError(
                    f"Unsupported symbolic Slice constants: {node.target}"
                )
            _replace_submodule(
                module,
                node.target,
                SymbolicSlice(
                    starts,
                    ends,
                    axes,
                    steps or ((1,) * len(starts or ends or ())),
                ),
            )
            records.append(
                {"target": str(node.target), "kind": kind, "replacement": "SymbolicSlice"}
            )

    graph.eliminate_dead_code()
    remaining_nodes = set(graph.nodes)
    unsupported_shape_nodes = [
        node for node in symbolic_tuple_shape_nodes if node in remaining_nodes
    ]
    if unsupported_shape_nodes:
        targets = ", ".join(str(node.target) for node in unsupported_shape_nodes)
        raise DynamicShapeCompatibilityError(
            f"Unsupported live Shape of symbolic shape vector: {targets}"
        )
    graph.lint()
    module.recompile()
    return records


def widen_unit_symbolic_dimensions(
    runtime_inputs: Sequence[Any],
    numpy_inputs: Mapping[str, np.ndarray],
) -> tuple[dict[str, np.ndarray], list[dict[str, Any]]]:
    """Repeat symbolic dimensions whose example value is one.

    PyTorch 2.5 specializes dimensions represented by a size-one example even
    when a ``torch.export.Dim`` is supplied. Static ONNX dimensions are never
    changed, and the caller must still validate the widened sample against the
    source runtime before export.
    """

    widened = {name: np.asarray(value).copy() for name, value in numpy_inputs.items()}
    changes: list[dict[str, Any]] = []
    for item in runtime_inputs:
        value = widened[item.name]
        for axis, dimension in enumerate(item.shape):
            is_symbolic = not (isinstance(dimension, int) and dimension > 0)
            if not is_symbolic or value.shape[axis] != 1:
                continue
            value = np.repeat(value, 2, axis=axis)
            changes.append(
                {
                    "input": item.name,
                    "axis": axis,
                    "symbol": str(dimension or f"axis_{axis}"),
                    "from": 1,
                    "to": 2,
                }
            )
        widened[item.name] = value
    return widened, changes


def make_onnx_probe_inputs(runtime_inputs: list[Any], batch: int, sequence: int) -> dict[str, np.ndarray]:
    """Create deterministic inputs while preserving each ONNX input's dtype and rank."""
    result: dict[str, np.ndarray] = {}
    for item in runtime_inputs:
        type_name = str(item.type).lower()
        if "int32" in type_name:
            dtype = np.int32
        elif "int64" in type_name:
            dtype = np.int64
        elif "float16" in type_name:
            dtype = np.float16
        elif "float" in type_name:
            dtype = np.float32
        elif "bool" in type_name:
            dtype = np.bool_
        else:
            raise DynamicShapeCompatibilityError(
                f"Unsupported probe input type {item.type}: {item.name}"
            )
        source_shape = list(item.shape)
        shape = []
        for index, dimension in enumerate(source_shape):
            if index == 0:
                shape.append(batch)
            elif index == 1:
                shape.append(sequence)
            elif isinstance(dimension, int) and dimension > 0:
                shape.append(dimension)
            else:
                shape.append(1)
        lowered_name = item.name.lower()
        if "mask" in lowered_name:
            array = np.ones(shape, dtype=dtype)
        elif "token_type" in lowered_name or "segment" in lowered_name:
            array = np.zeros(shape, dtype=dtype)
        elif np.issubdtype(dtype, np.integer):
            modulus = 97 if "input_id" in lowered_name else 4
            array = (np.arange(np.prod(shape)).reshape(shape) % modulus).astype(dtype)
        elif np.issubdtype(dtype, np.bool_):
            array = np.ones(shape, dtype=dtype)
        else:
            array = np.linspace(-0.5, 0.5, num=int(np.prod(shape)), dtype=dtype).reshape(shape)
        result[item.name] = array
    return result
