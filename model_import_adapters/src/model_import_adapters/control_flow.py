"""ONNX structured-control-flow inspection and lowering to PyTorch higher-order ops.

The stock onnx2torch converter does not implement ONNX If/Loop/Scan.  This
module keeps the normal onnx2torch operator registry, but owns graph assembly
when structured control flow is present.  If, Loop and Scan are lowered to
``torch.cond`` and ``torch.while_loop`` while their original subgraph contracts
remain available for inspection.
"""

from __future__ import annotations

import inspect
from collections import OrderedDict
from dataclasses import dataclass
from operator import getitem
from typing import Any, Iterable, Mapping, Sequence


CONTROL_FLOW_OPS = frozenset({"If", "Loop", "Scan"})


class ControlFlowLoweringError(RuntimeError):
    """The ONNX control-flow contract is invalid or not executable yet."""


def _attribute_graphs(node: Any) -> dict[str, list[Any]]:
    import onnx

    result: dict[str, list[Any]] = {}
    for attribute in node.attribute:
        if attribute.type == onnx.AttributeProto.GRAPH:
            result[attribute.name] = [attribute.g]
        elif attribute.type == onnx.AttributeProto.GRAPHS:
            result[attribute.name] = list(attribute.graphs)
    return result


def _int_attribute(node: Any, name: str, default: int) -> int:
    for attribute in node.attribute:
        if attribute.name == name:
            return int(attribute.i)
    return default


def _ints_attribute(node: Any, name: str, defaults: Sequence[int]) -> tuple[int, ...]:
    for attribute in node.attribute:
        if attribute.name == name:
            return tuple(int(value) for value in attribute.ints)
    return tuple(defaults)


def _graph_signature(graph: Any) -> dict[str, Any]:
    return {
        "name": graph.name,
        "inputs": [item.name for item in graph.input],
        "outputs": [item.name for item in graph.output],
        "node_count": len(graph.node),
    }


def _walk_control_flow(graph: Any, scope: str) -> Iterable[dict[str, Any]]:
    for index, node in enumerate(graph.node):
        node_scope = f"{scope}/{node.name or node.op_type}_{index}"
        graph_attributes = _attribute_graphs(node)
        if node.op_type in CONTROL_FLOW_OPS:
            issues: list[str] = []
            details: dict[str, Any] = {}
            executable = True

            if node.op_type == "If":
                then_graphs = graph_attributes.get("then_branch", [])
                else_graphs = graph_attributes.get("else_branch", [])
                if len(node.input) != 1:
                    issues.append("If必须且只能有一个条件输入")
                if len(then_graphs) != 1 or len(else_graphs) != 1:
                    issues.append("If必须同时包含then_branch和else_branch")
                for branch_name, branches in (
                    ("then_branch", then_graphs),
                    ("else_branch", else_graphs),
                ):
                    if branches and len(branches[0].output) != len(node.output):
                        issues.append(f"{branch_name}输出数量与If节点不一致")

            elif node.op_type == "Loop":
                body_graphs = graph_attributes.get("body", [])
                carried_count = max(len(node.input) - 2, 0)
                scan_output_count = max(len(node.output) - carried_count, 0)
                details.update(
                    {
                        "loop_carried_count": carried_count,
                        "scan_output_count": scan_output_count,
                    }
                )
                has_trip_count = len(node.input) >= 1 and bool(node.input[0])
                has_condition = len(node.input) >= 2 and bool(node.input[1])
                details.update(
                    {
                        "has_trip_count": has_trip_count,
                        "has_condition": has_condition,
                    }
                )
                if not has_trip_count and not has_condition:
                    issues.append("Loop至少需要trip-count或condition之一作为终止条件")
                    executable = False
                if len(body_graphs) != 1:
                    issues.append("Loop必须包含一个body子图")
                elif len(body_graphs[0].input) != carried_count + 2:
                    issues.append("Loop body输入数量不符合ONNX循环携带变量规则")
                elif len(body_graphs[0].output) != 1 + len(node.output):
                    issues.append("Loop body输出数量不符合ONNX规则")
                if scan_output_count and not has_trip_count:
                    issues.append("带scan输出的Loop需要显式trip-count以确定缓冲区上界")
                    executable = False

            else:  # Scan
                body_graphs = graph_attributes.get("body", [])
                scan_input_count = _int_attribute(node, "num_scan_inputs", 1)
                state_count = len(node.input) - scan_input_count
                scan_output_count = len(node.output) - state_count
                details.update(
                    {
                        "state_count": state_count,
                        "scan_input_count": scan_input_count,
                        "scan_output_count": scan_output_count,
                        "scan_input_axes": list(
                            _ints_attribute(node, "scan_input_axes", [0] * scan_input_count)
                        ),
                        "scan_input_directions": list(
                            _ints_attribute(
                                node, "scan_input_directions", [0] * scan_input_count
                            )
                        ),
                        "scan_output_axes": list(
                            _ints_attribute(node, "scan_output_axes", [0] * scan_output_count)
                        ),
                        "scan_output_directions": list(
                            _ints_attribute(
                                node, "scan_output_directions", [0] * scan_output_count
                            )
                        ),
                    }
                )
                if scan_input_count < 1 or state_count < 0:
                    issues.append("Scan的num_scan_inputs与节点输入数量不一致")
                if len(body_graphs) != 1:
                    issues.append("Scan必须包含一个body子图")
                elif len(body_graphs[0].input) != len(node.input):
                    issues.append("Scan body输入数量与节点输入数量不一致")
                elif len(body_graphs[0].output) != len(node.output):
                    issues.append("Scan body输出数量与节点输出数量不一致")
                if any(
                    direction not in (0, 1)
                    for direction in details["scan_input_directions"]
                    + details["scan_output_directions"]
                ):
                    issues.append("Scan方向属性只能为0或1")
                    executable = False

            yield {
                "scope": node_scope,
                "op_type": node.op_type,
                "inputs": list(node.input),
                "outputs": list(node.output),
                "subgraphs": {
                    name: [_graph_signature(child) for child in children]
                    for name, children in graph_attributes.items()
                },
                "valid": not [issue for issue in issues if "尚未" not in issue and "当前可执行" not in issue],
                "executable": executable and not issues,
                "issues": issues,
                **details,
            }

        for attribute_name, children in graph_attributes.items():
            for child_index, child in enumerate(children):
                yield from _walk_control_flow(
                    child,
                    f"{node_scope}:{attribute_name}[{child_index}]",
                )


def build_control_flow_contract(model: Any) -> dict[str, Any]:
    """Return a flattened, validated, machine-readable control-flow contract."""

    operators = list(_walk_control_flow(model.graph, "main"))
    invalid = [item["scope"] for item in operators if not item["valid"]]
    unsupported = [item["scope"] for item in operators if not item["executable"]]
    return {
        "schema_version": 1,
        "operator_count": len(operators),
        "operator_kinds": sorted({item["op_type"] for item in operators}),
        "operators": operators,
        "structure_valid": not invalid,
        "invalid_scopes": invalid,
        "executable": not unsupported,
        "unsupported_scopes": unsupported,
        "lowering": {
            "If": "torch.cond",
            "Loop_without_scan_outputs": "torch.while_loop",
            "Loop_with_scan_outputs": "torch.while_loop_with_dynamic_result_slice",
            "Scan": "torch.while_loop_with_functional_output_buffers",
        },
    }


def _free_values(graph: Any) -> tuple[str, ...]:
    """Find lexically captured values in deterministic first-use order."""

    defined = {item.name for item in graph.input}
    defined.update(item.name for item in graph.initializer)
    defined.update(output for node in graph.node for output in node.output if output)
    used: list[str] = []

    def remember(name: str) -> None:
        if name and name not in defined and name not in used:
            used.append(name)

    for node in graph.node:
        for name in node.input:
            remember(name)
        for children in _attribute_graphs(node).values():
            for child in children:
                for name in _free_values(child):
                    remember(name)
    return tuple(used)


def _ordered_union(values: Iterable[Sequence[str]]) -> tuple[str, ...]:
    result: list[str] = []
    for group in values:
        for value in group:
            if value not in result:
                result.append(value)
    return tuple(result)


class _InitializersContainer:
    @staticmethod
    def create() -> Any:
        from torch import nn

        class Container(nn.Module):
            def forward(self, *args: Any, **kwargs: Any) -> Any:
                raise RuntimeError("constant container cannot be executed")

        return Container()


class _IfModuleFactory:
    @staticmethod
    def create(then_branch: Any, else_branch: Any) -> Any:
        import torch
        from torch import nn

        class IfModule(nn.Module):
            def __init__(self) -> None:
                super().__init__()
                self.then_branch = then_branch
                self.else_branch = else_branch

            def forward(self, condition: Any, *captures: Any) -> Any:
                return torch.cond(
                    condition,
                    self.then_branch,
                    self.else_branch,
                    tuple(captures),
                )

        return IfModule()


class _LoopModuleFactory:
    @staticmethod
    def create(
        body: Any,
        carried_count: int,
        scan_output_count: int,
        capture_count: int,
        max_scan_iterations: int = 4096,
    ) -> Any:
        import torch
        from torch import nn

        class LoopModule(nn.Module):
            def __init__(self) -> None:
                super().__init__()
                self.body = body

            def forward(
                self,
                trip_count: Any,
                condition: Any,
                *carried_and_captures: Any,
            ) -> Any:
                carried = tuple(carried_and_captures[:carried_count])
                captures = tuple(carried_and_captures[carried_count:])
                if len(captures) != capture_count:
                    raise RuntimeError("Loop lexical-capture arity mismatch")
                if trip_count is None and condition is None:
                    raise RuntimeError("Loop requires trip-count or condition")
                if trip_count is None:
                    trip_count = torch.full(
                        (),
                        torch.iinfo(torch.int64).max,
                        dtype=torch.int64,
                        device=condition.device,
                    )
                if condition is None:
                    condition = torch.ones(
                        (),
                        dtype=torch.bool,
                        device=trip_count.device,
                    )
                iteration = torch.zeros((), dtype=torch.int64, device=trip_count.device)
                scan_buffers = ()
                if scan_output_count:
                    if trip_count is None:
                        raise RuntimeError(
                            "Loop scan outputs require an explicit trip-count"
                        )
                    allocation_length = trip_count.item()
                    torch._constrain_as_size(
                        allocation_length,
                        min=0,
                        max=max_scan_iterations,
                    )
                    template_output = self.body(
                        iteration,
                        condition,
                        *carried,
                        *captures,
                    )
                    if 1 + carried_count + scan_output_count == 1:
                        template_values = (template_output,)
                    else:
                        template_values = tuple(template_output)
                    scan_templates = template_values[1 + carried_count :]
                    scan_buffers = tuple(
                        torch.empty(
                            (allocation_length, *value.shape),
                            dtype=value.dtype,
                            device=value.device,
                        )
                        for value in scan_templates
                    )
                initial_state = (
                    iteration,
                    condition,
                    trip_count,
                    *carried,
                    *scan_buffers,
                    *captures,
                )

                def cond_fn(iter_value: Any, cond_value: Any, limit: Any, *rest: Any) -> Any:
                    del rest
                    return torch.logical_and(iter_value < limit, cond_value)

                def body_fn(iter_value: Any, cond_value: Any, limit: Any, *rest: Any) -> Any:
                    loop_carried = tuple(rest[:carried_count])
                    buffers = tuple(
                        rest[carried_count : carried_count + scan_output_count]
                    )
                    lexical = tuple(rest[carried_count + scan_output_count :])
                    body_output = self.body(
                        iter_value,
                        cond_value,
                        *loop_carried,
                        *lexical,
                    )
                    if carried_count == 0:
                        body_values = (body_output,)
                    elif isinstance(body_output, tuple):
                        body_values = body_output
                    else:
                        body_values = (body_output,)
                    next_condition = body_values[0]
                    next_carried = tuple(body_values[1 : 1 + carried_count])
                    scan_values = tuple(body_values[1 + carried_count :])
                    next_buffers = tuple(
                        buffer.index_copy(
                            0,
                            iter_value.reshape(1),
                            value.unsqueeze(0),
                        )
                        for buffer, value in zip(buffers, scan_values)
                    )
                    return (
                        iter_value + torch.ones_like(iter_value),
                        next_condition.clone(),
                        limit.clone(),
                        *(value.clone() for value in next_carried),
                        *next_buffers,
                        *(value.clone() for value in lexical),
                    )

                final_state = torch.while_loop(cond_fn, body_fn, initial_state)
                final_carried = tuple(final_state[3 : 3 + carried_count])
                buffer_start = 3 + carried_count
                final_buffers = tuple(
                    final_state[buffer_start : buffer_start + scan_output_count]
                )
                if final_buffers:
                    actual_length = final_state[0].item()
                    torch._constrain_as_size(
                        actual_length,
                        min=0,
                        max=max_scan_iterations,
                    )
                    torch._check(actual_length <= allocation_length)
                    final_scans = tuple(
                        value[:actual_length] for value in final_buffers
                    )
                else:
                    final_scans = ()
                outputs = (*final_carried, *final_scans)
                if len(outputs) == 1:
                    return outputs[0]
                return outputs

        return LoopModule()


class _ScanModuleFactory:
    @staticmethod
    def create(
        body: Any,
        *,
        state_count: int,
        scan_input_count: int,
        scan_output_count: int,
        input_axes: Sequence[int],
        input_directions: Sequence[int],
        output_axes: Sequence[int],
        output_directions: Sequence[int],
        capture_count: int,
    ) -> Any:
        import torch
        from torch import nn

        class ScanModule(nn.Module):
            def __init__(self) -> None:
                super().__init__()
                self.body = body

            def forward(self, *direct_and_captures: Any) -> Any:
                direct_count = state_count + scan_input_count
                direct = tuple(direct_and_captures[:direct_count])
                captures = tuple(direct_and_captures[direct_count:])
                if len(captures) != capture_count:
                    raise RuntimeError("Scan lexical-capture arity mismatch")
                states = tuple(direct[:state_count])
                scan_inputs = tuple(direct[state_count:])
                if not scan_inputs:
                    raise RuntimeError("Scan requires at least one scan input")

                normalized_input_axes = tuple(
                    axis if axis >= 0 else scan_inputs[index].dim() + axis
                    for index, axis in enumerate(input_axes)
                )
                scan_length = scan_inputs[0].shape[normalized_input_axes[0]]

                def slice_input(index: int, position: Any) -> Any:
                    value = scan_inputs[index]
                    axis = normalized_input_axes[index]
                    if isinstance(position, int):
                        return value.select(axis, position)
                    return torch.index_select(value, axis, position.reshape(1)).squeeze(axis)

                # Build shape-only body probes without indexing the scan input.
                # This also makes a zero-length Scan well-defined: the probes are
                # used solely to obtain output metadata and are never emitted.
                first_slices = []
                for index, value in enumerate(scan_inputs):
                    shape = tuple(
                        dimension
                        for axis_index, dimension in enumerate(value.shape)
                        if axis_index != normalized_input_axes[index]
                    )
                    first_slices.append(
                        torch.zeros(shape, dtype=value.dtype, device=value.device)
                    )
                template = self.body(*states, *first_slices, *captures)
                if state_count + scan_output_count == 1:
                    template_values = (template,)
                else:
                    template_values = tuple(template)
                scan_templates = template_values[state_count:]
                buffers = []
                normalized_output_axes = []
                for index, value in enumerate(scan_templates):
                    axis = output_axes[index]
                    if axis < 0:
                        axis += value.dim() + 1
                    normalized_output_axes.append(axis)
                    shape = list(value.shape)
                    shape.insert(axis, scan_length)
                    buffers.append(
                        torch.empty(shape, dtype=value.dtype, device=value.device)
                    )

                iteration = torch.zeros(
                    (), dtype=torch.int64, device=scan_inputs[0].device
                )
                length_tensor = torch.scalar_tensor(
                    scan_length,
                    dtype=torch.int64,
                    device=scan_inputs[0].device,
                )
                initial_state = (iteration, length_tensor, *states, *buffers)

                def cond_fn(iter_value: Any, length_value: Any, *rest: Any) -> Any:
                    del rest
                    return iter_value < length_value

                def body_fn(iter_value: Any, length_value: Any, *rest: Any) -> Any:
                    current_states = tuple(rest[:state_count])
                    current_buffers = tuple(rest[state_count:])
                    slices = tuple(
                        slice_input(
                            index,
                            length_value - 1 - iter_value
                            if input_directions[index]
                            else iter_value,
                        )
                        for index in range(scan_input_count)
                    )
                    body_output = self.body(
                        *current_states,
                        *slices,
                        *captures,
                    )
                    if state_count + scan_output_count == 1:
                        body_values = (body_output,)
                    else:
                        body_values = tuple(body_output)
                    next_states = tuple(body_values[:state_count])
                    scan_values = tuple(body_values[state_count:])
                    next_buffers = []
                    for index, (buffer, value) in enumerate(
                        zip(current_buffers, scan_values)
                    ):
                        position = (
                            length_value - 1 - iter_value
                            if output_directions[index]
                            else iter_value
                        )
                        axis = normalized_output_axes[index]
                        next_buffers.append(
                            buffer.index_copy(
                                axis,
                                position.reshape(1),
                                value.unsqueeze(axis),
                            )
                        )
                    return (
                        iter_value + torch.ones_like(iter_value),
                        length_value.clone(),
                        *(value.clone() for value in next_states),
                        *next_buffers,
                    )

                final_state = torch.while_loop(cond_fn, body_fn, initial_state)
                outputs = tuple(final_state[2:])
                if len(outputs) == 1:
                    return outputs[0]
                return outputs

        return ScanModule()


@dataclass
class _GraphBuildState:
    graph: Any
    root: Any
    values: dict[str, Any]
    initializers: Any


def _add_initializer(state: _GraphBuildState, name: str, value: Any) -> Any:
    buffer_name = f"onnx_initializer_{len(tuple(state.initializers.buffers()))}"
    state.initializers.register_buffer(buffer_name, value)
    node = state.graph.get_attr(f"initializers.{buffer_name}")
    state.values[name] = node
    return node


def _resolve_value(name: str, state: _GraphBuildState, onnx_graph: Any) -> Any:
    if name == "":
        return None
    if name in state.values:
        return state.values[name]
    if name in onnx_graph.initializers:
        return _add_initializer(state, name, onnx_graph.initializers[name].to_torch())
    raise ControlFlowLoweringError(f"无法解析ONNX值{name!r}；可能是无效的词法捕获")


def _call_arguments(module: Any, args: list[Any]) -> tuple[tuple[Any, ...], dict[str, Any]]:
    kwargs: dict[str, Any] = {}
    if None not in args:
        return tuple(args), kwargs
    first_skipped = args.index(None)
    names = tuple(inspect.signature(module.forward).parameters.keys())
    kwargs.update(
        {
            name: value
            for name, value in zip(names[first_skipped : len(args)], args[first_skipped:])
            if value is not None
        }
    )
    return tuple(args[:first_skipped]), kwargs


def _record_outputs(
    output_names: Sequence[str],
    result: Any,
    state: _GraphBuildState,
    prefix: str,
) -> None:
    if len(output_names) == 1:
        state.values[output_names[0]] = result
        return
    for index, output_name in enumerate(output_names):
        split = state.graph.call_function(getitem, args=(result, index))
        split.name = f"{prefix}_output_{index}"
        state.values[output_name] = split


def _convert_graph(graph_proto: Any, opsets: Mapping[str, int], external_inputs: Sequence[str]) -> Any:
    from torch import fx, nn
    from onnx2torch.node_converters import get_converter
    from onnx2torch.onnx_graph import OnnxGraph

    onnx_graph = OnnxGraph(graph_proto)
    torch_graph = fx.Graph()
    root = nn.Module()
    initializers = _InitializersContainer.create()
    root.add_module("initializers", initializers)
    state = _GraphBuildState(torch_graph, root, {}, initializers)

    placeholder_names = _ordered_union((onnx_graph.input_values, tuple(external_inputs)))
    for index, value_name in enumerate(placeholder_names, 1):
        safe_name = value_name if value_name.isidentifier() else f"input_{index}"
        state.values[value_name] = torch_graph.placeholder(name=safe_name)

    for node_name, onnx_node in onnx_graph.nodes.items():
        op_type = onnx_node.operation_type
        if op_type in CONTROL_FLOW_OPS:
            graph_attributes = _attribute_graphs(onnx_node.proto)
            if op_type == "If":
                then_graph = graph_attributes["then_branch"][0]
                else_graph = graph_attributes["else_branch"][0]
                captures = _ordered_union((_free_values(then_graph), _free_values(else_graph)))
                then_module = _convert_graph(then_graph, opsets, captures)
                else_module = _convert_graph(else_graph, opsets, captures)
                module = _IfModuleFactory.create(then_module, else_module)
                args = [_resolve_value(onnx_node.input_values[0], state, onnx_graph)]
                args.extend(_resolve_value(name, state, onnx_graph) for name in captures)
            elif op_type == "Loop":
                body_graph = graph_attributes["body"][0]
                carried_count = max(len(onnx_node.input_values) - 2, 0)
                scan_count = max(len(onnx_node.output_values) - carried_count, 0)
                if scan_count and not onnx_node.input_values[0]:
                    raise ControlFlowLoweringError(
                        f"{node_name}: 带scan输出的Loop需要显式trip-count"
                    )
                if not onnx_node.input_values[0] and not onnx_node.input_values[1]:
                    raise ControlFlowLoweringError(
                        f"{node_name}: Loop至少需要trip-count或condition之一作为终止条件"
                    )
                captures = _free_values(body_graph)
                body_module = _convert_graph(body_graph, opsets, captures)
                module = _LoopModuleFactory.create(
                    body_module,
                    carried_count,
                    scan_count,
                    len(captures),
                )
                args = [
                    _resolve_value(name, state, onnx_graph)
                    for name in onnx_node.input_values
                ]
                args.extend(_resolve_value(name, state, onnx_graph) for name in captures)

            else:
                body_graph = graph_attributes["body"][0]
                scan_input_count = _int_attribute(
                    onnx_node.proto, "num_scan_inputs", 1
                )
                state_count = len(onnx_node.input_values) - scan_input_count
                scan_output_count = len(onnx_node.output_values) - state_count
                input_axes = _ints_attribute(
                    onnx_node.proto, "scan_input_axes", [0] * scan_input_count
                )
                input_directions = _ints_attribute(
                    onnx_node.proto,
                    "scan_input_directions",
                    [0] * scan_input_count,
                )
                output_axes = _ints_attribute(
                    onnx_node.proto, "scan_output_axes", [0] * scan_output_count
                )
                output_directions = _ints_attribute(
                    onnx_node.proto,
                    "scan_output_directions",
                    [0] * scan_output_count,
                )
                captures = _free_values(body_graph)
                body_module = _convert_graph(body_graph, opsets, captures)
                module = _ScanModuleFactory.create(
                    body_module,
                    state_count=state_count,
                    scan_input_count=scan_input_count,
                    scan_output_count=scan_output_count,
                    input_axes=input_axes,
                    input_directions=input_directions,
                    output_axes=output_axes,
                    output_directions=output_directions,
                    capture_count=len(captures),
                )
                args = [
                    _resolve_value(name, state, onnx_graph)
                    for name in onnx_node.input_values
                ]
                args.extend(
                    _resolve_value(name, state, onnx_graph) for name in captures
                )

            root.add_module(node_name, module)
            result = torch_graph.call_module(node_name, args=tuple(args))
            _record_outputs(onnx_node.output_values, result, state, node_name)
            continue

        domain = onnx_node.domain
        if domain not in opsets and domain == "ai.onnx":
            domain = ""
        version = opsets.get(domain)
        if version is None:
            raise ControlFlowLoweringError(f"缺少ONNX domain {domain!r}的opset")
        converter = get_converter(
            domain=onnx_node.domain,
            operation_type=op_type,
            version=version,
        )
        module, mapping = converter(onnx_node, onnx_graph)
        root.add_module(node_name, module)
        raw_args = [_resolve_value(name, state, onnx_graph) for name in mapping.inputs]
        args, kwargs = _call_arguments(module, raw_args)
        result = torch_graph.call_module(node_name, args=args, kwargs=kwargs)
        _record_outputs(mapping.outputs, result, state, node_name)

    outputs = [_resolve_value(name, state, onnx_graph) for name in onnx_graph.output_values]
    if len(outputs) == 1:
        torch_graph.output(outputs[0])
    else:
        torch_graph.output(tuple(outputs))
    torch_graph.lint()
    return fx.GraphModule(root=root, graph=torch_graph)


def convert_onnx_with_control_flow(model: Any) -> Any:
    """Lower a checked ONNX model, retaining If/Loop as PyTorch HOPs."""

    contract = build_control_flow_contract(model)
    if not contract["structure_valid"]:
        raise ControlFlowLoweringError(
            "ONNX控制流契约无效：" + ", ".join(contract["invalid_scopes"])
        )
    opsets = {item.domain: int(item.version) for item in model.opset_import}
    module = _convert_graph(model.graph, opsets, ())
    module.eval()
    return module
