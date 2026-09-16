"""基于PyTorch ExportedProgram/Core ATen的模型级统一图产物。

FlagTree现有编译器从Triton AST或TTIR等Kernel级表示开始工作。本模块不
新增模型IR，而是使用PyTorch提供的ExportedProgram承接三类模型进入
TorchInductor之前的模型级结构，并把图、类型、Shape、结构化控制流和来源
信息保存为可检查产物。
"""

from __future__ import annotations

import hashlib
import json
import re
from dataclasses import dataclass
from pathlib import Path
from typing import Any, Mapping, Sequence

import numpy as np


class UnifiedIrError(RuntimeError):
    """统一图导出、保存或回读验证失败。"""


@dataclass(frozen=True)
class UnifiedIrArtifacts:
    """一次统一图导出的落盘产物。"""

    exported_program: Path
    manifest: Path
    readable_graph: Path
    graph_code: Path
    example_inputs: Path
    semantics: Path
    validation: Path

    def as_dict(self) -> dict[str, str]:
        return {
            "exported_program": str(self.exported_program),
            "manifest": str(self.manifest),
            "readable_graph": str(self.readable_graph),
            "graph_code": str(self.graph_code),
            "example_inputs": str(self.example_inputs),
            "semantics": str(self.semantics),
            "validation": str(self.validation),
        }


def sha256_file(path: str | Path) -> str:
    digest = hashlib.sha256()
    with Path(path).open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def _repair_serialized_higher_order_arguments(exported_program: Any) -> int:
    """Repair tuple arguments that PyTorch 2.5 PT2 deserializes as lists.

    ``higher_order.while_loop`` requires its carried and additional inputs to be
    tuples.  PyTorch 2.5's PT2 serializer can restore those two arguments as
    lists.  The graph is otherwise intact, so normalizing the container type is
    sufficient and keeps artifacts portable to later PyTorch versions.
    """

    try:
        from torch.fx import GraphModule
    except ImportError as exc:
        raise UnifiedIrError("缺少torch.fx") from exc

    repairs = 0
    for module in exported_program.graph_module.modules():
        if not isinstance(module, GraphModule):
            continue
        changed = False
        for node in module.graph.nodes:
            if node.op != "call_function" or "while_loop" not in str(node.target):
                continue
            args = list(node.args)
            for index in (2, 3):
                if index < len(args) and isinstance(args[index], list):
                    args[index] = tuple(args[index])
                    repairs += 1
                    changed = True
            if changed:
                node.args = tuple(args)
        if changed:
            module.graph.lint()
            module.recompile()
    return repairs


def load_core_aten(path: str | Path) -> Any:
    """Load a PT2 artifact and apply narrow higher-order-op compatibility fixes."""

    try:
        import torch
    except ImportError as exc:
        raise UnifiedIrError("缺少PyTorch") from exc
    exported_program = torch.export.load(Path(path))
    _repair_serialized_higher_order_arguments(exported_program)
    return exported_program


def _target_name(target: Any) -> str:
    text = str(target)
    return text.replace("<built-in function ", "builtins.").replace(">", "")


def _shape_dimension(value: Any) -> dict[str, Any]:
    if isinstance(value, int):
        return {"kind": "static", "value": value}
    return {"kind": "symbolic", "value": str(value)}


def _value_metadata(value: Any) -> Any:
    """把FakeTensor、Tensor和符号标量转换成可序列化元数据。"""

    try:
        import torch
    except ImportError as exc:
        raise UnifiedIrError("缺少PyTorch，无法生成统一图") from exc

    if isinstance(value, torch.Tensor):
        try:
            from flagtree_model_ir import classify_tensor_layout
        except ImportError as exc:
            raise UnifiedIrError(
                "缺少FlagTree统一IR语义模块flagtree_model_ir"
            ) from exc
        return {
            "kind": "tensor",
            "dtype": str(value.dtype).removeprefix("torch."),
            "shape": [_shape_dimension(dim) for dim in value.shape],
            "stride": [str(item) for item in value.stride()],
            "layout": classify_tensor_layout(value),
            "device": str(value.device),
            "requires_grad": bool(value.requires_grad),
        }
    if isinstance(value, (torch.SymInt, torch.SymFloat, torch.SymBool)):
        return {"kind": type(value).__name__, "value": str(value)}
    if isinstance(value, Mapping):
        return {str(key): _value_metadata(item) for key, item in value.items()}
    if isinstance(value, (tuple, list)):
        return [_value_metadata(item) for item in value]
    if value is None or isinstance(value, (str, int, float, bool)):
        return value
    return {"kind": type(value).__name__, "value": repr(value)}


def _argument_summary(value: Any) -> Any:
    try:
        from torch.fx import Node
    except ImportError as exc:
        raise UnifiedIrError("缺少torch.fx") from exc

    if isinstance(value, Node):
        return {"node": value.name}
    if isinstance(value, Mapping):
        return {str(key): _argument_summary(item) for key, item in value.items()}
    if isinstance(value, (tuple, list)):
        return [_argument_summary(item) for item in value]
    if value is None or isinstance(value, (str, int, float, bool)):
        return value
    return repr(value)


def _selected_node_metadata(node: Any) -> dict[str, Any]:
    result: dict[str, Any] = {}
    if "val" in node.meta:
        result["value"] = _value_metadata(node.meta["val"])
    for name in ("nn_module_stack", "source_fn_stack", "stack_trace", "from_node"):
        if name in node.meta:
            result[name] = _argument_summary(node.meta[name])
    return result


def _graph_module_summary(name: str, graph_module: Any) -> dict[str, Any]:
    nodes: list[dict[str, Any]] = []
    control_flow: list[dict[str, Any]] = []
    for node in graph_module.graph.nodes:
        target = _target_name(node.target)
        record = {
            "name": node.name,
            "op": node.op,
            "target": target,
            "args": _argument_summary(node.args),
            "kwargs": _argument_summary(node.kwargs),
            "users": sorted(user.name for user in node.users),
            "metadata": _selected_node_metadata(node),
        }
        nodes.append(record)
        lowered = target.lower()
        if node.op == "call_function" and any(
            marker in lowered for marker in ("cond", "while_loop", "map_impl")
        ):
            control_flow.append(
                {
                    "node": node.name,
                    "target": target,
                    "operands": _argument_summary(node.args),
                }
            )
    return {
        "name": name or "root",
        "class_name": type(graph_module).__name__,
        "node_count": len(nodes),
        "nodes": nodes,
        "control_flow": control_flow,
    }


def _graph_signature_summary(signature: Any) -> dict[str, Any]:
    def spec_summary(spec: Any) -> dict[str, Any]:
        result = {
            "kind": str(getattr(spec, "kind", "unknown")),
            "argument": repr(getattr(spec, "arg", None)),
        }
        for name in ("target", "persistent"):
            if hasattr(spec, name):
                result[name] = _argument_summary(getattr(spec, name))
        return result

    return {
        "inputs": [spec_summary(item) for item in signature.input_specs],
        "outputs": [spec_summary(item) for item in signature.output_specs],
        "parameters": list(signature.parameters),
        "buffers": list(signature.buffers),
        "user_inputs": [str(item) for item in signature.user_inputs],
        "user_outputs": [str(item) for item in signature.user_outputs],
    }


def _range_constraints(exported_program: Any) -> list[dict[str, str]]:
    result: list[dict[str, str]] = []
    for symbol, constraint in exported_program.range_constraints.items():
        result.append(
            {
                "symbol": str(symbol),
                "constraint": str(constraint),
                "lower": str(getattr(constraint, "lower", "")),
                "upper": str(getattr(constraint, "upper", "")),
            }
        )
    return result


def summarize_exported_program(
    exported_program: Any,
    *,
    source: Mapping[str, Any],
    export_mode: Mapping[str, Any],
) -> dict[str, Any]:
    """生成模型结构、类型、Shape、控制流和来源信息摘要。"""

    try:
        import torch
        from torch.fx import GraphModule
    except ImportError as exc:
        raise UnifiedIrError("缺少PyTorch") from exc

    graphs = [
        _graph_module_summary(name, module)
        for name, module in exported_program.graph_module.named_modules()
        if isinstance(module, GraphModule)
    ]
    call_targets = sorted(
        {
            node["target"]
            for graph in graphs
            for node in graph["nodes"]
            if node["op"] == "call_function"
        }
    )
    control_flow = [
        {"graph": graph["name"], **item}
        for graph in graphs
        for item in graph["control_flow"]
    ]
    return {
        "schema_version": 1,
        "format": "PyTorch ExportedProgram",
        "dialect": "Core ATen with structured higher-order operators when present",
        "torch_version": torch.__version__,
        "source": dict(source),
        "export_mode": dict(export_mode),
        "graph_signature": _graph_signature_summary(exported_program.graph_signature),
        "range_constraints": _range_constraints(exported_program),
        "state": {
            "state_dict_keys": list(exported_program.state_dict.keys()),
            "constants_keys": list(exported_program.constants.keys()),
        },
        "operators": {
            "all_call_targets": call_targets,
            "aten": [item for item in call_targets if item.startswith("aten.")],
            "higher_order": [
                item
                for item in call_targets
                if any(marker in item.lower() for marker in ("cond", "while_loop", "map_impl"))
            ],
            "other": [
                item
                for item in call_targets
                if not item.startswith("aten.")
                and not any(
                    marker in item.lower() for marker in ("cond", "while_loop", "map_impl")
                )
            ],
        },
        "graphs": graphs,
        "control_flow": control_flow,
    }


def _flatten_values(value: Any) -> list[Any]:
    try:
        from torch.utils._pytree import tree_flatten
    except ImportError as exc:
        raise UnifiedIrError("缺少PyTorch pytree支持") from exc
    flattened, _ = tree_flatten(value)
    return flattened


def compare_outputs(
    expected: Any,
    actual: Any,
    *,
    atol: float = 1e-4,
    rtol: float = 1e-4,
) -> list[dict[str, Any]]:
    """比较原模块与统一图回读模块的输出。"""

    try:
        import torch
    except ImportError as exc:
        raise UnifiedIrError("缺少PyTorch") from exc

    expected_values = _flatten_values(expected)
    actual_values = _flatten_values(actual)
    if len(expected_values) != len(actual_values):
        raise UnifiedIrError(
            f"输出数量不一致：source={len(expected_values)} exported={len(actual_values)}"
        )
    report: list[dict[str, Any]] = []
    for index, (reference, candidate) in enumerate(zip(expected_values, actual_values)):
        if isinstance(reference, torch.Tensor) and isinstance(candidate, torch.Tensor):
            reference_array = reference.detach().cpu().numpy()
            candidate_array = candidate.detach().cpu().numpy()
            if reference_array.shape != candidate_array.shape:
                raise UnifiedIrError(
                    f"输出{index}形状不一致：{reference_array.shape} != {candidate_array.shape}"
                )
            np.testing.assert_allclose(
                candidate_array,
                reference_array,
                atol=atol,
                rtol=rtol,
            )
            difference = np.abs(
                candidate_array.astype(np.float64) - reference_array.astype(np.float64)
            )
            report.append(
                {
                    "index": index,
                    "kind": "tensor",
                    "shape": list(reference_array.shape),
                    "dtype": str(reference_array.dtype),
                    "max_abs_error": float(difference.max(initial=0.0)),
                }
            )
        else:
            if candidate != reference:
                raise UnifiedIrError(f"输出{index}不一致：{candidate!r} != {reference!r}")
            report.append({"index": index, "kind": "value", "value": repr(reference)})
    return report


def _save_example_inputs(
    path: Path,
    args: Sequence[Any],
    kwargs: Mapping[str, Any],
) -> dict[str, Any]:
    try:
        import torch
    except ImportError as exc:
        raise UnifiedIrError("缺少PyTorch") from exc

    arrays: dict[str, np.ndarray[Any, Any]] = {}
    schema: dict[str, Any] = {"positional": [], "keyword": []}
    for index, value in enumerate(args):
        if not isinstance(value, torch.Tensor):
            raise UnifiedIrError("当前复现输入保存仅支持Tensor位置参数")
        key = f"arg_{index}"
        arrays[key] = value.detach().cpu().numpy()
        schema["positional"].append(key)
    for name, value in kwargs.items():
        if not isinstance(value, torch.Tensor):
            raise UnifiedIrError("当前复现输入保存仅支持Tensor关键字参数")
        key = f"kwarg_{name}"
        arrays[key] = value.detach().cpu().numpy()
        schema["keyword"].append({"name": name, "key": key})
    np.savez_compressed(path, **arrays)
    return schema


def load_example_inputs(
    path: str | Path,
    schema: Mapping[str, Any],
    *,
    device: str = "cpu",
) -> tuple[tuple[Any, ...], dict[str, Any]]:
    try:
        import torch
    except ImportError as exc:
        raise UnifiedIrError("缺少PyTorch") from exc

    with np.load(Path(path), allow_pickle=False) as data:
        args = tuple(torch.from_numpy(data[key].copy()).to(device) for key in schema["positional"])
        kwargs = {
            item["name"]: torch.from_numpy(data[item["key"]].copy()).to(device)
            for item in schema["keyword"]
        }
    return args, kwargs


def export_core_aten(
    module: Any,
    args: Sequence[Any],
    output_dir: str | Path,
    *,
    kwargs: Mapping[str, Any] | None = None,
    dynamic_shapes: Any = None,
    source: Mapping[str, Any] | None = None,
    strict: bool = True,
    atol: float = 1e-4,
    rtol: float = 1e-4,
) -> tuple[Any, UnifiedIrArtifacts, dict[str, Any]]:
    """导出、Core ATen分解、保存并回读验证统一图。"""

    try:
        import torch
    except ImportError as exc:
        raise UnifiedIrError("缺少PyTorch") from exc

    output_dir = Path(output_dir).resolve()
    output_dir.mkdir(parents=True, exist_ok=True)
    kwargs = dict(kwargs or {})
    args = tuple(args)
    module = module.eval()
    try:
        with torch.no_grad():
            source_output = module(*args, **kwargs)
        exported = torch.export.export(
            module,
            args,
            kwargs,
            dynamic_shapes=dynamic_shapes,
            strict=strict,
        )
        core_aten = exported.run_decompositions()
    except Exception as exc:
        raise UnifiedIrError(f"ExportedProgram/Core ATen导出失败：{exc}") from exc

    exported_path = output_dir / "model.core_aten.pt2"
    readable_path = output_dir / "graph.readable.txt"
    code_path = output_dir / "graph_module.py"
    inputs_path = output_dir / "example_inputs.npz"
    manifest_path = output_dir / "manifest.json"
    semantics_path = output_dir / "semantics.json"
    validation_path = output_dir / "validation.json"

    input_schema = _save_example_inputs(inputs_path, args, kwargs)
    torch.export.save(core_aten, exported_path)
    try:
        loaded = torch.export.load(exported_path)
        higher_order_tuple_repairs = _repair_serialized_higher_order_arguments(loaded)
        loaded_module = loaded.module()
        with torch.no_grad():
            loaded_output = loaded_module(*args, **kwargs)
    except Exception as exc:
        raise UnifiedIrError(f"统一图保存后回读失败：{exc}") from exc

    output_comparison = compare_outputs(
        source_output,
        loaded_output,
        atol=atol,
        rtol=rtol,
    )
    manifest = summarize_exported_program(
        core_aten,
        source=source or {"kind": "unspecified"},
        export_mode={
            "strict": strict,
            "dynamic_shapes_requested": dynamic_shapes is not None,
            "decomposition": "ExportedProgram.run_decompositions(default Core ATen table)",
        },
    )
    manifest["input_archive"] = {
        "path": str(inputs_path),
        "schema": input_schema,
        "sha256": sha256_file(inputs_path),
    }
    manifest["artifact"] = {
        "path": str(exported_path),
        "size_bytes": exported_path.stat().st_size,
        "sha256": sha256_file(exported_path),
    }
    try:
        from flagtree_model_ir import (
            ModelIrSemanticError,
            build_semantic_contract,
            require_valid_semantic_contract,
        )
    except ImportError as exc:
        raise UnifiedIrError(
            "缺少FlagTree统一IR语义模块flagtree_model_ir"
        ) from exc
    semantics = build_semantic_contract(manifest)
    semantics_path.write_text(
        json.dumps(semantics, ensure_ascii=False, indent=2),
        encoding="utf-8",
    )
    try:
        require_valid_semantic_contract(semantics)
    except ModelIrSemanticError as exc:
        raise UnifiedIrError(f"统一IR语义校验失败：{exc}") from exc
    manifest["semantics_artifact"] = {
        "path": str(semantics_path),
        "sha256": sha256_file(semantics_path),
        "schema_version": semantics["schema_version"],
        "registry_version": semantics["registry_version"],
        "registry_sha256": semantics["registry_sha256"],
        "validation_status": semantics["validation"]["status"],
        "coverage": semantics["coverage"],
    }
    readable_path.write_text(
        core_aten.graph_module.print_readable(print_output=False),
        encoding="utf-8",
    )
    code_path.write_text(core_aten.graph_module.code, encoding="utf-8")
    manifest_path.write_text(
        json.dumps(manifest, ensure_ascii=False, indent=2),
        encoding="utf-8",
    )
    validation = {
        "status": "passed",
        "saved_and_loaded": True,
        "outputs": output_comparison,
        "semantic_contract": semantics["validation"],
        "semantic_contract_sha256": manifest["semantics_artifact"]["sha256"],
        "higher_order_tuple_repairs": higher_order_tuple_repairs,
        "exported_program_sha256": manifest["artifact"]["sha256"],
        "manifest_sha256": sha256_file(manifest_path),
    }
    validation_path.write_text(
        json.dumps(validation, ensure_ascii=False, indent=2),
        encoding="utf-8",
    )

    artifacts = UnifiedIrArtifacts(
        exported_program=exported_path,
        manifest=manifest_path,
        readable_graph=readable_path,
        graph_code=code_path,
        example_inputs=inputs_path,
        semantics=semantics_path,
        validation=validation_path,
    )
    return core_aten, artifacts, {
        "manifest": manifest,
        "semantics": semantics,
        "validation": validation,
    }


def onnx_dynamic_shapes(
    runtime_inputs: Sequence[Any],
    *,
    max_batch: int = 8,
    max_other_dimension: int = 512,
) -> tuple[Any, ...] | None:
    """把ONNX Runtime输入中的符号维度转换为torch.export.Dim。"""

    try:
        import torch
    except ImportError as exc:
        raise UnifiedIrError("缺少PyTorch") from exc

    symbols: dict[str, Any] = {}
    specs: list[Any] = []
    found = False
    for item in runtime_inputs:
        axes: dict[int, Any] = {}
        for axis, dimension in enumerate(item.shape):
            if isinstance(dimension, int) and dimension > 0:
                continue
            raw_name = str(dimension or f"axis_{axis}")
            normalized = re.sub(r"[^0-9A-Za-z_]+", "_", raw_name).strip("_")
            if not normalized:
                normalized = f"axis_{axis}"
            lowered = normalized.lower()
            if "batch" in lowered or axis == 0:
                key = "batch"
                upper = max_batch
            elif any(marker in lowered for marker in ("sequence", "seq")) or axis == 1:
                key = "sequence_length"
                upper = max_other_dimension
            else:
                key = normalized
                upper = max_other_dimension
            if key not in symbols:
                symbols[key] = torch.export.Dim(key, min=1, max=upper)
            axes[axis] = symbols[key]
            found = True
        specs.append(axes or None)
    return tuple(specs) if found else None
