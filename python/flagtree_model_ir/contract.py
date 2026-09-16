"""Build and validate the FlagTree model-level Core ATen semantic contract."""

from __future__ import annotations

from collections.abc import Iterable, Mapping
from typing import Any

from .registry import (
    get_semantics_registry,
    lookup_operator_family,
    semantics_registry_digest,
)


class ModelIrSemanticError(RuntimeError):
    """The model IR contract violates a normative semantic rule."""


def classify_tensor_layout(value: Any) -> str:
    """Classify a Tensor/FakeTensor without changing its logical layout."""

    try:
        import torch
    except ImportError:
        return "unknown"
    if not isinstance(value, torch.Tensor):
        return "unknown"
    if value.dim() == 0:
        return "scalar"
    try:
        # Prefer the ordinary contiguous interpretation for degenerate shapes
        # that satisfy more than one PyTorch memory-format predicate.
        if value.is_contiguous():
            return "contiguous"
        if value.dim() == 4 and value.is_contiguous(memory_format=torch.channels_last):
            return "channels_last_2d"
        if value.dim() == 5 and value.is_contiguous(
            memory_format=torch.channels_last_3d
        ):
            return "channels_last_3d"
        if any(not isinstance(item, int) for item in value.shape):
            return "symbolic_strided"
        return "strided"
    except Exception:
        return "symbolic_strided" if value.dim() else "scalar"


def _walk_tensor_metadata(value: Any, path: str = "") -> Iterable[tuple[str, dict[str, Any]]]:
    if isinstance(value, Mapping):
        if value.get("kind") == "tensor":
            yield path or "value", dict(value)
            return
        for key, item in value.items():
            next_path = f"{path}.{key}" if path else str(key)
            yield from _walk_tensor_metadata(item, next_path)
    elif isinstance(value, (tuple, list)):
        for index, item in enumerate(value):
            next_path = f"{path}[{index}]" if path else f"[{index}]"
            yield from _walk_tensor_metadata(item, next_path)


def _match_core_target(target: str, registry: Mapping[str, Any]) -> str | None:
    del registry
    family = lookup_operator_family(target, "core_aten")
    return str(family["id"]) if family is not None else None


def _match_frontend_op(op_type: str, registry: Mapping[str, Any], framework: str) -> str | None:
    del registry
    family = lookup_operator_family(op_type, framework)
    return str(family["id"]) if family is not None else None


def _family_rules(family_id: str | None, registry: Mapping[str, Any]) -> dict[str, str | None]:
    if family_id is not None:
        for family in registry["operator_families"]:
            if family["id"] == family_id:
                return {
                    "dtype_rule": str(family["dtype_rule"]),
                    "shape_rule": str(family["shape_rule"]),
                    "layout_rule": str(family["layout_rule"]),
                }
    return {"dtype_rule": None, "shape_rule": None, "layout_rule": None}


def _walk_frontend_nodes(graph: Mapping[str, Any]) -> Iterable[dict[str, Any]]:
    for node in graph.get("nodes", []):
        if not isinstance(node, Mapping):
            continue
        yield dict(node)
        for child in node.get("subgraphs", []):
            if isinstance(child, Mapping):
                yield from _walk_frontend_nodes(child)


def _frontend_summary(source: Mapping[str, Any]) -> Mapping[str, Any] | None:
    for key in ("frontend_graph_summary", "onnx_graph_summary", "model_summary"):
        value = source.get(key)
        if isinstance(value, Mapping) and isinstance(value.get("graph"), Mapping):
            return value
    return None


def validate_semantic_contract(contract: Mapping[str, Any]) -> dict[str, Any]:
    """Validate normative fields; incomplete registry coverage is a warning."""

    registry = get_semantics_registry()
    allowed_dtypes = set(registry["dtype_policy"]["canonical_dtypes"])
    allowed_layouts = set(registry["layout_policy"]["allowed_layouts"])
    errors: list[dict[str, str]] = []
    warnings: list[dict[str, str]] = []

    if contract.get("schema_version") != registry["schema_version"]:
        errors.append(
            {
                "code": "schema_version_mismatch",
                "message": "semantic contract schema_version does not match registry",
            }
        )
    if contract.get("canonical_ir") != registry["canonical_ir"]:
        errors.append(
            {
                "code": "canonical_ir_mismatch",
                "message": "semantic contract canonical_ir is not Core ATen",
            }
        )

    for tensor in contract.get("tensors", []):
        dtype = str(tensor.get("dtype", ""))
        if dtype not in allowed_dtypes:
            errors.append(
                {
                    "code": "unsupported_dtype",
                    "message": f"{tensor.get('id', '<tensor>')} uses {dtype!r}",
                }
            )
        layout = str(tensor.get("layout", "unknown"))
        if layout not in allowed_layouts:
            errors.append(
                {
                    "code": "invalid_layout",
                    "message": f"{tensor.get('id', '<tensor>')} uses {layout!r}",
                }
            )
        shape = tensor.get("shape")
        if not isinstance(shape, list):
            errors.append(
                {
                    "code": "missing_shape",
                    "message": f"{tensor.get('id', '<tensor>')} has no shape list",
                }
            )
            continue
        stride = tensor.get("stride")
        if not isinstance(stride, list) or len(stride) != len(shape):
            errors.append(
                {
                    "code": "invalid_stride",
                    "message": f"{tensor.get('id', '<tensor>')} stride rank does not match shape rank",
                }
            )
        for dimension in shape:
            if not isinstance(dimension, Mapping) or dimension.get("kind") not in {
                "static",
                "symbolic",
            }:
                errors.append(
                    {
                        "code": "invalid_dimension",
                        "message": f"{tensor.get('id', '<tensor>')} has invalid dimension metadata",
                    }
                )
            elif dimension.get("kind") == "static" and (
                not isinstance(dimension.get("value"), int)
                or int(dimension["value"]) < 0
            ):
                errors.append(
                    {
                        "code": "negative_static_dimension",
                        "message": f"{tensor.get('id', '<tensor>')} has a negative static dimension",
                    }
                )
            elif dimension.get("kind") == "symbolic" and not str(
                dimension.get("value", "")
            ).strip():
                errors.append(
                    {
                        "code": "empty_symbolic_dimension",
                        "message": f"{tensor.get('id', '<tensor>')} has an unnamed symbolic dimension",
                    }
                )

    for collection_name in ("operators", "frontend_operators"):
        for operator in contract.get(collection_name, []):
            if operator.get("registry_status") != "registered":
                continue
            missing = [
                key
                for key in ("dtype_rule", "shape_rule", "layout_rule")
                if not operator.get(key)
            ]
            if missing:
                errors.append(
                    {
                        "code": "incomplete_operator_semantics",
                        "message": f"{operator!r} lacks {', '.join(missing)}",
                    }
                )

    expected_namespace = registry["extension_policy"]["namespace"]
    namespace = contract.get("extensions", {}).get("namespace")
    if namespace != expected_namespace:
        errors.append(
            {
                "code": "extension_namespace_mismatch",
                "message": f"expected {expected_namespace!r}, got {namespace!r}",
            }
        )
    unregistered = [
        item["target"]
        for item in contract.get("operators", [])
        if item.get("registry_status") == "unregistered"
    ]
    if unregistered:
        warnings.append(
            {
                "code": "unregistered_core_aten_targets",
                "message": ", ".join(sorted(unregistered)),
            }
        )
    unregistered_frontend = [
        f"{item.get('domain', '')}:{item.get('op_type', '')}"
        for item in contract.get("frontend_operators", [])
        if item.get("registry_status") == "unregistered"
    ]
    if unregistered_frontend:
        warnings.append(
            {
                "code": "unregistered_frontend_ops",
                "message": ", ".join(sorted(set(unregistered_frontend))),
            }
        )
    dynamic = contract.get("dynamic_dimensions", {})
    if (
        dynamic.get("dynamic_shapes_requested")
        and not dynamic.get("symbols_observed_in_tensor_metadata")
        and not dynamic.get("range_constraints")
    ):
        warnings.append(
            {
                "code": "dynamic_shape_requested_but_not_observed",
                "message": "dynamic Shape was requested but no symbolic dimension or range survived",
            }
        )

    return {
        "status": "passed" if not errors else "failed",
        "errors": errors,
        "warnings": warnings,
        "error_count": len(errors),
        "warning_count": len(warnings),
    }


def build_semantic_contract(manifest: Mapping[str, Any]) -> dict[str, Any]:
    """Build a self-contained semantic view from a Core ATen manifest."""

    registry = get_semantics_registry()
    tensors: list[dict[str, Any]] = []
    symbolic_dimensions: set[str] = set()
    for graph in manifest.get("graphs", []):
        graph_name = str(graph.get("name", "root"))
        for node in graph.get("nodes", []):
            metadata = node.get("metadata", {})
            for path, value in _walk_tensor_metadata(metadata.get("value")):
                shape = list(value.get("shape", []))
                for dimension in shape:
                    if isinstance(dimension, Mapping) and dimension.get("kind") == "symbolic":
                        symbolic_dimensions.add(str(dimension.get("value", "")))
                tensors.append(
                    {
                        "id": f"{graph_name}/{node.get('name', '<node>')}:{path}",
                        "graph": graph_name,
                        "node": str(node.get("name", "")),
                        "dtype": str(value.get("dtype", "")),
                        "shape": shape,
                        "stride": list(value.get("stride", [])),
                        "layout": str(value.get("layout", "unknown")),
                        "device": str(value.get("device", "")),
                        "requires_grad": bool(value.get("requires_grad", False)),
                    }
                )

    operators: list[dict[str, Any]] = []
    for target in manifest.get("operators", {}).get("all_call_targets", []):
        target = str(target)
        family = _match_core_target(target, registry)
        operators.append(
            {
                "target": target,
                "family": family,
                "registry_status": "registered" if family else "unregistered",
                **_family_rules(family, registry),
            }
        )

    source = manifest.get("source", {})
    source = source if isinstance(source, Mapping) else {}
    source_kind = str(source.get("kind", "unspecified"))
    summary = _frontend_summary(source)
    frontend_operators: list[dict[str, Any]] = []
    if summary is not None:
        # A TensorFlow model converted through tf2onnx has an ONNX graph at
        # this boundary.  Interpret that graph using ONNX operator names while
        # retaining TensorFlow in source_kind as provenance.
        summary_framework = str(summary.get("framework", "")).lower()
        framework = "tensorflow" if summary_framework == "tensorflow" else "onnx"
        for node in _walk_frontend_nodes(summary["graph"]):
            op_type = str(node.get("op_type", ""))
            family = _match_frontend_op(op_type, registry, framework)
            frontend_operators.append(
                {
                    "scope": str(node.get("name", "")),
                    "domain": str(node.get("domain", framework)),
                    "op_type": op_type,
                    "family": family,
                    "registry_status": "registered" if family else "unregistered",
                    **_family_rules(family, registry),
                }
            )

    dynamic_dimensions = {
        "symbols_observed_in_tensor_metadata": sorted(symbolic_dimensions),
        "range_constraints": list(manifest.get("range_constraints", [])),
        "dynamic_shapes_requested": bool(
            manifest.get("export_mode", {}).get("dynamic_shapes_requested", False)
        ),
    }
    registered = sum(item["registry_status"] == "registered" for item in operators)
    registered_frontend = sum(
        item["registry_status"] == "registered" for item in frontend_operators
    )
    contract: dict[str, Any] = {
        "schema_version": registry["schema_version"],
        "registry_version": registry["registry_version"],
        "registry_sha256": semantics_registry_digest(),
        "canonical_ir": registry["canonical_ir"],
        "source_kind": source_kind,
        "policies": {
            "dtype": registry["dtype_policy"],
            "layout": registry["layout_policy"],
            "dynamic_dimension": registry["dynamic_dimension_policy"],
            "extension": registry["extension_policy"],
        },
        "operators": operators,
        "frontend_operators": frontend_operators,
        "frontend_semantics_framework": (
            framework if summary is not None else None
        ),
        "tensors": tensors,
        "dynamic_dimensions": dynamic_dimensions,
        "extensions": {
            "namespace": registry["extension_policy"]["namespace"],
            "source_metadata_keys": sorted(str(key) for key in source),
            "structured_control_flow_count": len(manifest.get("control_flow", [])),
            "frontend_control_flow_present": bool(source.get("control_flow")),
        },
        "coverage": {
            "core_aten_registered": registered,
            "core_aten_total": len(operators),
            "core_aten_ratio": registered / len(operators) if operators else 1.0,
            "frontend_registered": registered_frontend,
            "frontend_total": len(frontend_operators),
            "frontend_ratio": (
                registered_frontend / len(frontend_operators)
                if frontend_operators
                else None
            ),
        },
    }
    contract["validation"] = validate_semantic_contract(contract)
    return contract


def require_valid_semantic_contract(contract: Mapping[str, Any]) -> None:
    validation = validate_semantic_contract(contract)
    if validation["status"] != "passed":
        raise ModelIrSemanticError(str(validation["errors"]))
