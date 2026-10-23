"""Validation for the F08-G01 model-plan input contract.

The JSON Schema documents the serialised shape of an input plan.  This module
checks the graph-wide constraints that JSON Schema cannot express, such as ID
references, producer/consumer symmetry, storage ownership, and dependency
cycles outside explicit loop regions.
"""

from __future__ import annotations

from dataclasses import dataclass
import re
from typing import Any, Iterable, Mapping, Sequence


SCHEMA_VERSION = "f08-g01-model-plan/0.1"
_ID_RE = re.compile(r"^[A-Za-z0-9_.:/-]+$")
_ROOT_KEYS = {
    "plan_id",
    "schema_version",
    "model_id",
    "tasks",
    "tensors",
    "storages",
    "regions",
    "shape_bindings",
}
_TASK_KEYS = {
    "task_id",
    "kernel_id",
    "predecessors",
    "inputs",
    "outputs",
    "source_node",
    "region_id",
    "device",
    "stream",
}
_TENSOR_KEYS = {
    "tensor_id",
    "storage_id",
    "producer",
    "consumers",
    "dtype",
    "shape",
    "storage_offset_bytes",
    "source_value",
    "is_graph_output",
    "is_persistent",
    "is_mutated",
}
_STORAGE_KEYS = {
    "storage_id",
    "size_bytes",
    "size_expression",
    "size_upper_bound",
    "alignment",
    "device",
    "allocation_kind",
    "source",
}
_REGION_KEYS = {
    "region_id",
    "kind",
    "parent_region",
    "members",
    "exclusive_groups",
    "loop_carried_tensors",
    "happens_before",
}
_ALLOCATION_KINDS = {"input", "parameter", "temporary", "output", "cache"}
_REGION_KINDS = {"branch", "loop", "async"}


@dataclass(frozen=True, order=True)
class ValidationIssue:
    """One deterministic validation failure."""

    path: str
    code: str
    message: str

    def format(self) -> str:
        return f"{self.path}: [{self.code}] {self.message}"


def _add(issues: list[ValidationIssue], path: str, code: str, message: str) -> None:
    issues.append(ValidationIssue(path=path, code=code, message=message))


def _check_unknown_keys(
    value: Mapping[str, Any], allowed: set[str], path: str, issues: list[ValidationIssue]
) -> None:
    for key in sorted(set(value) - allowed):
        _add(issues, f"{path}.{key}", "unknown_field", "field is not allowed")


def _check_required_keys(
    value: Mapping[str, Any], required: Iterable[str], path: str, issues: list[ValidationIssue]
) -> None:
    for key in sorted(set(required) - set(value)):
        _add(issues, f"{path}.{key}", "missing_field", "required field is missing")


def _is_id(value: Any) -> bool:
    return isinstance(value, str) and bool(value) and bool(_ID_RE.fullmatch(value))


def _check_id(value: Any, path: str, issues: list[ValidationIssue]) -> bool:
    if not _is_id(value):
        _add(
            issues,
            path,
            "invalid_id",
            "expected a non-empty ID containing only letters, digits, '_', '.', ':', '/', or '-'",
        )
        return False
    return True


def _check_optional_id(value: Any, path: str, issues: list[ValidationIssue]) -> bool:
    return value is None or _check_id(value, path, issues)


def _check_string(value: Any, path: str, issues: list[ValidationIssue]) -> bool:
    if not isinstance(value, str) or not value:
        _add(issues, path, "invalid_string", "expected a non-empty string")
        return False
    return True


def _check_boolean(value: Any, path: str, issues: list[ValidationIssue]) -> bool:
    if not isinstance(value, bool):
        _add(issues, path, "invalid_boolean", "expected a boolean")
        return False
    return True


def _check_nonnegative_int(value: Any, path: str, issues: list[ValidationIssue]) -> bool:
    if isinstance(value, bool) or not isinstance(value, int) or value < 0:
        _add(issues, path, "invalid_nonnegative_integer", "expected an integer greater than or equal to zero")
        return False
    return True


def _check_positive_int(value: Any, path: str, issues: list[ValidationIssue]) -> bool:
    if isinstance(value, bool) or not isinstance(value, int) or value < 1:
        _add(issues, path, "invalid_positive_integer", "expected an integer greater than zero")
        return False
    return True


def _check_id_list(value: Any, path: str, issues: list[ValidationIssue]) -> bool:
    if not isinstance(value, list):
        _add(issues, path, "invalid_id_list", "expected an array of IDs")
        return False
    ok = True
    seen: set[str] = set()
    for index, item in enumerate(value):
        item_path = f"{path}[{index}]"
        if not _check_id(item, item_path, issues):
            ok = False
            continue
        if item in seen:
            _add(issues, item_path, "duplicate_reference", f"duplicate ID '{item}'")
            ok = False
        seen.add(item)
    return ok


def _check_shape(value: Any, path: str, issues: list[ValidationIssue]) -> None:
    if not isinstance(value, list):
        _add(issues, path, "invalid_shape", "expected an array of dimensions")
        return
    for index, dimension in enumerate(value):
        dim_path = f"{path}[{index}]"
        if isinstance(dimension, int) and not isinstance(dimension, bool):
            _check_nonnegative_int(dimension, dim_path, issues)
            continue
        if not isinstance(dimension, dict):
            _add(issues, dim_path, "invalid_shape_dimension", "expected a nonnegative integer or symbolic dimension")
            continue
        _check_unknown_keys(dimension, {"symbol", "min", "max"}, dim_path, issues)
        _check_required_keys(dimension, {"symbol"}, dim_path, issues)
        if "symbol" in dimension:
            _check_id(dimension["symbol"], f"{dim_path}.symbol", issues)
        if "min" in dimension:
            _check_nonnegative_int(dimension["min"], f"{dim_path}.min", issues)
        if "max" in dimension:
            _check_nonnegative_int(dimension["max"], f"{dim_path}.max", issues)
        if (
            isinstance(dimension.get("min"), int)
            and not isinstance(dimension.get("min"), bool)
            and isinstance(dimension.get("max"), int)
            and not isinstance(dimension.get("max"), bool)
            and dimension["min"] > dimension["max"]
        ):
            _add(issues, dim_path, "invalid_shape_range", "min must be less than or equal to max")


def _check_shape_bindings(value: Any, path: str, issues: list[ValidationIssue]) -> None:
    if not isinstance(value, dict):
        _add(issues, path, "invalid_shape_bindings", "expected an object")
        return
    for symbol, binding in sorted(value.items()):
        symbol_path = f"{path}.{symbol}"
        _check_id(symbol, symbol_path, issues)
        if isinstance(binding, int) and not isinstance(binding, bool):
            _check_nonnegative_int(binding, symbol_path, issues)
            continue
        if not isinstance(binding, dict):
            _add(issues, symbol_path, "invalid_shape_binding", "expected a nonnegative integer or min/max object")
            continue
        _check_unknown_keys(binding, {"min", "max"}, symbol_path, issues)
        _check_required_keys(binding, {"min", "max"}, symbol_path, issues)
        if "min" in binding:
            _check_nonnegative_int(binding["min"], f"{symbol_path}.min", issues)
        if "max" in binding:
            _check_nonnegative_int(binding["max"], f"{symbol_path}.max", issues)
        if (
            isinstance(binding.get("min"), int)
            and not isinstance(binding.get("min"), bool)
            and isinstance(binding.get("max"), int)
            and not isinstance(binding.get("max"), bool)
            and binding["min"] > binding["max"]
        ):
            _add(issues, symbol_path, "invalid_shape_range", "min must be less than or equal to max")


def _check_tasks(value: Any, issues: list[ValidationIssue]) -> list[dict[str, Any]]:
    if not isinstance(value, list) or not value:
        _add(issues, "$.tasks", "invalid_tasks", "expected a non-empty array")
        return []
    result: list[dict[str, Any]] = []
    required = {"task_id", "kernel_id", "predecessors", "inputs", "outputs", "source_node", "device"}
    for index, item in enumerate(value):
        path = f"$.tasks[{index}]"
        if not isinstance(item, dict):
            _add(issues, path, "invalid_task", "expected an object")
            continue
        result.append(item)
        _check_unknown_keys(item, _TASK_KEYS, path, issues)
        _check_required_keys(item, required, path, issues)
        for key in ("task_id", "kernel_id", "device"):
            if key in item:
                _check_id(item[key], f"{path}.{key}", issues)
        for key in ("predecessors", "inputs", "outputs"):
            if key in item:
                _check_id_list(item[key], f"{path}.{key}", issues)
        if "source_node" in item:
            _check_string(item["source_node"], f"{path}.source_node", issues)
        for key in ("region_id", "stream"):
            if key in item:
                _check_optional_id(item[key], f"{path}.{key}", issues)
    return result


def _check_tensors(value: Any, issues: list[ValidationIssue]) -> list[dict[str, Any]]:
    if not isinstance(value, list) or not value:
        _add(issues, "$.tensors", "invalid_tensors", "expected a non-empty array")
        return []
    result: list[dict[str, Any]] = []
    required = {
        "tensor_id",
        "storage_id",
        "producer",
        "consumers",
        "dtype",
        "shape",
        "storage_offset_bytes",
        "source_value",
        "is_graph_output",
        "is_persistent",
        "is_mutated",
    }
    for index, item in enumerate(value):
        path = f"$.tensors[{index}]"
        if not isinstance(item, dict):
            _add(issues, path, "invalid_tensor", "expected an object")
            continue
        result.append(item)
        _check_unknown_keys(item, _TENSOR_KEYS, path, issues)
        _check_required_keys(item, required, path, issues)
        for key in ("tensor_id", "storage_id"):
            if key in item:
                _check_id(item[key], f"{path}.{key}", issues)
        if "producer" in item:
            _check_optional_id(item["producer"], f"{path}.producer", issues)
        if "consumers" in item:
            _check_id_list(item["consumers"], f"{path}.consumers", issues)
        for key in ("dtype", "source_value"):
            if key in item:
                _check_string(item[key], f"{path}.{key}", issues)
        if "shape" in item:
            _check_shape(item["shape"], f"{path}.shape", issues)
        if "storage_offset_bytes" in item and item["storage_offset_bytes"] is not None:
            _check_nonnegative_int(item["storage_offset_bytes"], f"{path}.storage_offset_bytes", issues)
        for key in ("is_graph_output", "is_persistent", "is_mutated"):
            if key in item:
                _check_boolean(item[key], f"{path}.{key}", issues)
    return result


def _check_storages(value: Any, issues: list[ValidationIssue]) -> list[dict[str, Any]]:
    if not isinstance(value, list) or not value:
        _add(issues, "$.storages", "invalid_storages", "expected a non-empty array")
        return []
    result: list[dict[str, Any]] = []
    required = {"storage_id", "alignment", "device", "allocation_kind", "source"}
    for index, item in enumerate(value):
        path = f"$.storages[{index}]"
        if not isinstance(item, dict):
            _add(issues, path, "invalid_storage", "expected an object")
            continue
        result.append(item)
        _check_unknown_keys(item, _STORAGE_KEYS, path, issues)
        _check_required_keys(item, required, path, issues)
        for key in ("storage_id", "device"):
            if key in item:
                _check_id(item[key], f"{path}.{key}", issues)
        if "source" in item:
            _check_string(item["source"], f"{path}.source", issues)
        if "alignment" in item:
            _check_positive_int(item["alignment"], f"{path}.alignment", issues)
        for key in ("size_bytes", "size_upper_bound"):
            if key in item:
                _check_nonnegative_int(item[key], f"{path}.{key}", issues)
        if "size_expression" in item:
            _check_string(item["size_expression"], f"{path}.size_expression", issues)
        if "size_bytes" not in item and "size_expression" not in item:
            _add(
                issues,
                path,
                "missing_storage_size",
                "at least one of size_bytes or size_expression is required",
            )
        if "allocation_kind" in item and item["allocation_kind"] not in _ALLOCATION_KINDS:
            _add(
                issues,
                f"{path}.allocation_kind",
                "invalid_allocation_kind",
                f"expected one of {sorted(_ALLOCATION_KINDS)}",
            )
    return result


def _check_regions(value: Any, issues: list[ValidationIssue]) -> list[dict[str, Any]]:
    if value is None:
        return []
    if not isinstance(value, list):
        _add(issues, "$.regions", "invalid_regions", "expected an array")
        return []
    result: list[dict[str, Any]] = []
    required = {"region_id", "kind", "members"}
    for index, item in enumerate(value):
        path = f"$.regions[{index}]"
        if not isinstance(item, dict):
            _add(issues, path, "invalid_region", "expected an object")
            continue
        result.append(item)
        _check_unknown_keys(item, _REGION_KEYS, path, issues)
        _check_required_keys(item, required, path, issues)
        if "region_id" in item:
            _check_id(item["region_id"], f"{path}.region_id", issues)
        if "kind" in item and item["kind"] not in _REGION_KINDS:
            _add(issues, f"{path}.kind", "invalid_region_kind", f"expected one of {sorted(_REGION_KINDS)}")
        if "parent_region" in item:
            _check_optional_id(item["parent_region"], f"{path}.parent_region", issues)
        for key in ("members", "loop_carried_tensors"):
            if key in item:
                _check_id_list(item[key], f"{path}.{key}", issues)
        if item.get("kind") == "loop" and "loop_carried_tensors" not in item:
            _add(
                issues,
                f"{path}.loop_carried_tensors",
                "missing_loop_carried_tensors",
                "loop regions must declare loop-carried tensors",
            )
        if "exclusive_groups" in item:
            groups = item["exclusive_groups"]
            if not isinstance(groups, list):
                _add(issues, f"{path}.exclusive_groups", "invalid_exclusive_groups", "expected an array")
            else:
                for group_index, group in enumerate(groups):
                    group_path = f"{path}.exclusive_groups[{group_index}]"
                    if not isinstance(group, list) or len(group) < 2:
                        _add(issues, group_path, "invalid_exclusive_group", "expected at least two task IDs")
                    else:
                        _check_id_list(group, group_path, issues)
        if "happens_before" in item:
            pairs = item["happens_before"]
            if not isinstance(pairs, list):
                _add(issues, f"{path}.happens_before", "invalid_happens_before", "expected an array")
            else:
                for pair_index, pair in enumerate(pairs):
                    pair_path = f"{path}.happens_before[{pair_index}]"
                    if not isinstance(pair, list) or len(pair) != 2:
                        _add(issues, pair_path, "invalid_task_pair", "expected exactly two task IDs")
                    else:
                        _check_id_list(pair, pair_path, issues)
    return result


def _index_by_id(
    values: Sequence[dict[str, Any]], key: str, root_path: str, issues: list[ValidationIssue]
) -> dict[str, dict[str, Any]]:
    result: dict[str, dict[str, Any]] = {}
    for index, value in enumerate(values):
        identifier = value.get(key)
        if not _is_id(identifier):
            continue
        if identifier in result:
            _add(
                issues,
                f"{root_path}[{index}].{key}",
                "duplicate_id",
                f"ID '{identifier}' is already defined",
            )
            continue
        result[identifier] = value
    return result


def _find_cycle(edges: Mapping[str, Sequence[str]]) -> list[str] | None:
    state: dict[str, int] = {node: 0 for node in edges}
    stack: list[str] = []
    positions: dict[str, int] = {}

    def visit(node: str) -> list[str] | None:
        state[node] = 1
        positions[node] = len(stack)
        stack.append(node)
        for predecessor in sorted(edges.get(node, [])):
            if predecessor not in state:
                continue
            if state[predecessor] == 0:
                cycle = visit(predecessor)
                if cycle:
                    return cycle
            elif state[predecessor] == 1:
                start = positions[predecessor]
                return stack[start:] + [predecessor]
        stack.pop()
        positions.pop(node, None)
        state[node] = 2
        return None

    for node in sorted(edges):
        if state[node] == 0:
            cycle = visit(node)
            if cycle:
                return cycle
    return None


def _check_references(
    tasks: list[dict[str, Any]],
    tensors: list[dict[str, Any]],
    storages: list[dict[str, Any]],
    regions: list[dict[str, Any]],
    issues: list[ValidationIssue],
) -> None:
    task_by_id = _index_by_id(tasks, "task_id", "$.tasks", issues)
    tensor_by_id = _index_by_id(tensors, "tensor_id", "$.tensors", issues)
    storage_by_id = _index_by_id(storages, "storage_id", "$.storages", issues)
    region_by_id = _index_by_id(regions, "region_id", "$.regions", issues)

    for index, task in enumerate(tasks):
        path = f"$.tasks[{index}]"
        task_id = task.get("task_id")
        for list_key in ("predecessors",):
            for ref_index, reference in enumerate(task.get(list_key, [])) if isinstance(task.get(list_key), list) else []:
                if _is_id(reference) and reference not in task_by_id:
                    _add(
                        issues,
                        f"{path}.{list_key}[{ref_index}]",
                        "unknown_task_reference",
                        f"task '{reference}' does not exist",
                    )
        for list_key in ("inputs", "outputs"):
            for ref_index, reference in enumerate(task.get(list_key, [])) if isinstance(task.get(list_key), list) else []:
                if _is_id(reference) and reference not in tensor_by_id:
                    _add(
                        issues,
                        f"{path}.{list_key}[{ref_index}]",
                        "unknown_tensor_reference",
                        f"tensor '{reference}' does not exist",
                    )
        region_id = task.get("region_id")
        if _is_id(region_id) and region_id not in region_by_id:
            _add(issues, f"{path}.region_id", "unknown_region_reference", f"region '{region_id}' does not exist")

        if not _is_id(task_id):
            continue
        for tensor_id in task.get("inputs", []) if isinstance(task.get("inputs"), list) else []:
            tensor = tensor_by_id.get(tensor_id)
            if tensor is not None and task_id not in tensor.get("consumers", []):
                _add(
                    issues,
                    f"{path}.inputs",
                    "consumer_mismatch",
                    f"tensor '{tensor_id}' does not list task '{task_id}' as a consumer",
                )
        for tensor_id in task.get("outputs", []) if isinstance(task.get("outputs"), list) else []:
            tensor = tensor_by_id.get(tensor_id)
            if tensor is not None and tensor.get("producer") != task_id:
                _add(
                    issues,
                    f"{path}.outputs",
                    "producer_mismatch",
                    f"tensor '{tensor_id}' does not name task '{task_id}' as its producer",
                )

    for index, tensor in enumerate(tensors):
        path = f"$.tensors[{index}]"
        tensor_id = tensor.get("tensor_id")
        storage_id = tensor.get("storage_id")
        storage = storage_by_id.get(storage_id) if _is_id(storage_id) else None
        if _is_id(storage_id) and storage is None:
            _add(issues, f"{path}.storage_id", "unknown_storage_reference", f"storage '{storage_id}' does not exist")
        producer = tensor.get("producer")
        if _is_id(producer):
            producer_task = task_by_id.get(producer)
            if producer_task is None:
                _add(issues, f"{path}.producer", "unknown_task_reference", f"task '{producer}' does not exist")
            elif _is_id(tensor_id) and tensor_id not in producer_task.get("outputs", []):
                _add(
                    issues,
                    f"{path}.producer",
                    "producer_mismatch",
                    f"task '{producer}' does not list tensor '{tensor_id}' as an output",
                )
        elif producer is None and storage is not None and storage.get("allocation_kind") not in {"input", "parameter", "cache"}:
            _add(
                issues,
                f"{path}.producer",
                "missing_producer",
                "only input, parameter, or cache storage may omit a producer",
            )
        for consumer_index, consumer in enumerate(tensor.get("consumers", [])) if isinstance(tensor.get("consumers"), list) else []:
            consumer_task = task_by_id.get(consumer)
            if consumer_task is None:
                _add(
                    issues,
                    f"{path}.consumers[{consumer_index}]",
                    "unknown_task_reference",
                    f"task '{consumer}' does not exist",
                )
            elif _is_id(tensor_id) and tensor_id not in consumer_task.get("inputs", []):
                _add(
                    issues,
                    f"{path}.consumers[{consumer_index}]",
                    "consumer_mismatch",
                    f"task '{consumer}' does not list tensor '{tensor_id}' as an input",
                )

    for index, region in enumerate(regions):
        path = f"$.regions[{index}]"
        region_id = region.get("region_id")
        parent = region.get("parent_region")
        if _is_id(parent) and parent not in region_by_id:
            _add(issues, f"{path}.parent_region", "unknown_region_reference", f"region '{parent}' does not exist")
        for member_index, member in enumerate(region.get("members", [])) if isinstance(region.get("members"), list) else []:
            task = task_by_id.get(member)
            if task is None:
                _add(
                    issues,
                    f"{path}.members[{member_index}]",
                    "unknown_task_reference",
                    f"task '{member}' does not exist",
                )
            elif _is_id(region_id) and task.get("region_id") != region_id:
                _add(
                    issues,
                    f"{path}.members[{member_index}]",
                    "region_membership_mismatch",
                    f"task '{member}' does not name region '{region_id}'",
                )
        for tensor_index, tensor_id in enumerate(region.get("loop_carried_tensors", [])) if isinstance(region.get("loop_carried_tensors"), list) else []:
            if tensor_id not in tensor_by_id:
                _add(
                    issues,
                    f"{path}.loop_carried_tensors[{tensor_index}]",
                    "unknown_tensor_reference",
                    f"tensor '{tensor_id}' does not exist",
                )
        for group_index, group in enumerate(region.get("exclusive_groups", [])) if isinstance(region.get("exclusive_groups"), list) else []:
            if not isinstance(group, list):
                continue
            for member_index, member in enumerate(group):
                if member not in task_by_id:
                    _add(
                        issues,
                        f"{path}.exclusive_groups[{group_index}][{member_index}]",
                        "unknown_task_reference",
                        f"task '{member}' does not exist",
                    )
        for pair_index, pair in enumerate(region.get("happens_before", [])) if isinstance(region.get("happens_before"), list) else []:
            if not isinstance(pair, list) or len(pair) != 2:
                continue
            for member_index, member in enumerate(pair):
                if member not in task_by_id:
                    _add(
                        issues,
                        f"{path}.happens_before[{pair_index}][{member_index}]",
                        "unknown_task_reference",
                        f"task '{member}' does not exist",
                    )

    edges = {
        task_id: [pred for pred in task.get("predecessors", []) if pred in task_by_id]
        for task_id, task in task_by_id.items()
        if isinstance(task.get("predecessors"), list)
    }
    cycle = _find_cycle(edges)
    if cycle:
        cycle_regions = {task_by_id[task_id].get("region_id") for task_id in cycle[:-1]}
        allowed_loop = (
            len(cycle_regions) == 1
            and None not in cycle_regions
            and region_by_id.get(next(iter(cycle_regions)), {}).get("kind") == "loop"
        )
        if not allowed_loop:
            _add(issues, "$.tasks", "dependency_cycle", " -> ".join(cycle))


def validate_model_plan(document: Any) -> list[ValidationIssue]:
    """Return all structural and graph-wide validation issues.

    The returned list is deterministically sorted by path, code, and message.
    An empty list means that the input satisfies the v0.1 contract.
    """

    issues: list[ValidationIssue] = []
    if not isinstance(document, dict):
        return [ValidationIssue("$", "invalid_root", "expected a JSON object")]

    _check_unknown_keys(document, _ROOT_KEYS, "$", issues)
    _check_required_keys(
        document,
        {"plan_id", "schema_version", "model_id", "tasks", "tensors", "storages"},
        "$",
        issues,
    )
    for key in ("plan_id", "model_id"):
        if key in document:
            _check_id(document[key], f"$.{key}", issues)
    if document.get("schema_version") != SCHEMA_VERSION:
        _add(
            issues,
            "$.schema_version",
            "unsupported_schema_version",
            f"expected '{SCHEMA_VERSION}'",
        )

    tasks = _check_tasks(document.get("tasks"), issues)
    tensors = _check_tensors(document.get("tensors"), issues)
    storages = _check_storages(document.get("storages"), issues)
    regions = _check_regions(document.get("regions", []), issues)
    _check_shape_bindings(document.get("shape_bindings", {}), "$.shape_bindings", issues)
    _check_references(tasks, tensors, storages, regions, issues)

    return sorted(set(issues))
