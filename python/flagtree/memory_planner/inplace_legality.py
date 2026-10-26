"""F08-G03 phase 1 (v2): alias-aware in-place overwrite legality analysis (CPU only).

Analysis only: this module never mutates a plan, never touches device code and
is not imported by ``offset_planner`` or the runtime executor.

v2 guardrail fixes (2026-09-29)
-------------------------------
1. Full plan validation reuses the G1 validator ``schema.validate_model_plan``
   (references, producer/consumer symmetry, missing outputs/fields, unknown
   dtype strings, storage size presence).  Additional legality-local checks add
   known-dtype and known-size requirements and missing-output rejection.
2. Execution order validation reuses G2 ``offset_planner._validate_serial_schedule``
   (uniqueness/completeness, dependencies, dataflow) from the same directory.
3. Whole-storage device/stream checks: every producer/consumer of every alias
   member must have an explicit stream and one common device; missing streams,
   multiple streams or device mismatches are rejected.
4. Unresolved storage offsets can no longer be "derived" from
   ``numel * itemsize == storage size``.  Explicit ``0`` passes; a caller-provided
   binding evidence record with ``byte_offset == 0`` passes and is labelled;
   anything else is rejected as ``unresolved_storage_offset_pending_proof``.

The candidate tensor's own last use is still explicitly NOT sufficient: every
alias member, every consumer, write positions, side effects and the inference
boundary are checked for the whole storage.
"""

from __future__ import annotations

import hashlib
import importlib.util
import json
from pathlib import Path
import sys
import types

VERSION = "f08-g03-inplace-legality/0.3"

REASONS = (
    "unknown_task",
    "missing_output",
    "unsupported_multi_output",
    "input_not_consumed_by_task",
    "not_temporary_storage",
    "graph_input_protection",
    "graph_output_protection",
    "persistent_protection",
    "mutated_member",
    "storage_written_elsewhere",
    "unresolved_storage_offset_pending_proof",
    "nonzero_storage_offset",
    "unknown_dtype",
    "unknown_shape_dimension",
    "unknown_storage_size",
    "storage_too_small",
    "storage_too_small_for_member",
    "alias_shape_mismatch",
    "alias_dtype_mismatch",
    "missing_tensor",
    "missing_storage",
    "producer_consumer_mismatch",
    "unknown_producer",
    "unknown_consumer",
    "inplace_consumer",
    "consumer_after_write",
    "task_consumes_another_alias_member",
    "unknown_device",
    "device_mismatch",
    "unknown_stream",
    "multi_stream",
    "stream_mismatch",
    "region_unsupported",
    "output_shape_dtype_mismatch",
    "backward_task_present",
    "training_not_supported",
    "invalid_model_plan",
    "order_duplicate",
    "order_incomplete",
    "invalid_serial_schedule",
    "schedule_violates_dependency",
    "schedule_violates_dataflow",
    "g2_validator_unavailable",
    "binding_evidence_identity_missing",
    "binding_evidence_plan_mismatch",
    "binding_evidence_graph_mismatch",
    "binding_evidence_tensor_mismatch",
    "binding_evidence_storage_mismatch",
    "binding_evidence_layout_mismatch",
    "binding_evidence_device_missing",
    "binding_evidence_scope_missing",
    "binding_evidence_scope_mixed",
    "binding_evidence_scope_device_mismatch",
    "binding_evidence_physical_card_missing",
    "binding_evidence_physical_card_mismatch",
    "plan_identity_mismatch",
)

_EVIDENCE_SCOPES = {"cpu_conditional", "ppu_runtime"}
RUNTIME_RELEASE_DEFAULT = "not_authorized_by_analysis"

_KNOWN_DTYPES = {
    "float32": 4,
    "float16": 2,
    "bfloat16": 2,
    "float64": 8,
    "int64": 8,
    "int32": 4,
    "int16": 2,
    "int8": 1,
    "uint8": 1,
    "bool": 1,
}

_G2_MODULES = None


def plan_fingerprint(plan) -> str:
    """Canonical plan fingerprint (same convention as the derived-plan SHA-256)."""

    return hashlib.sha256(
        json.dumps(plan, ensure_ascii=False, sort_keys=True).encode("utf-8")
    ).hexdigest()


def _load_g2_modules():
    """Lazily load schema/liveness/offset_planner from this module's directory."""

    global _G2_MODULES
    if _G2_MODULES is not None:
        return _G2_MODULES
    try:
        root = Path(__file__).resolve().parent
        package_name = "g03_inplace_g2_bundle"
        package = types.ModuleType(package_name)
        package.__path__ = [str(root)]
        sys.modules[package_name] = package
        for child in ("schema", "liveness", "offset_planner"):
            spec = importlib.util.spec_from_file_location(
                f"{package_name}.{child}", root / f"{child}.py"
            )
            module = importlib.util.module_from_spec(spec)
            sys.modules[spec.name] = module
            spec.loader.exec_module(module)
        _G2_MODULES = (
            sys.modules[f"{package_name}.schema"],
            sys.modules[f"{package_name}.offset_planner"],
        )
    except Exception as error:  # noqa: BLE001 - fail closed, record the reason
        _G2_MODULES = ("error", f"{type(error).__name__}: {error}")
    return _G2_MODULES


def validate_plan_and_order(plan, task_order) -> dict:
    """Reuse the G1 plan validator and the G2 serial-schedule validator."""

    result = {
        "plan_issue_codes": [],
        "order_problems": [],
        "order_check_source": None,
        "validator_files": {},
    }
    modules = _load_g2_modules()
    if modules[0] == "error":
        result["order_problems"].append("g2_validator_unavailable")
        result["order_check_source"] = modules[1]
        return result
    schema, planner = modules
    result["validator_files"] = {
        "schema": str(Path(schema.__file__).resolve()),
        "schema_sha256": hashlib.sha256(Path(schema.__file__).read_bytes()).hexdigest(),
        "offset_planner": str(Path(planner.__file__).resolve()),
        "offset_planner_sha256": hashlib.sha256(
            Path(planner.__file__).read_bytes()
        ).hexdigest(),
    }
    result["plan_issue_codes"] = sorted(
        {issue.code for issue in schema.validate_model_plan(plan)}
    )

    order = list(task_order) if isinstance(task_order, (list, tuple)) else task_order
    if not isinstance(order, list) or any(not isinstance(item, str) for item in order):
        result["order_problems"].append("invalid_serial_schedule")
        return result
    if len(order) != len(set(order)):
        result["order_problems"].append("order_duplicate")
    tasks = {task.get("task_id") for task in plan.get("tasks", [])}
    if len(order) != len(tasks) or set(order) != tasks:
        result["order_problems"].append("order_incomplete")
    try:
        planner._validate_serial_schedule(plan, order)
        result["order_check_source"] = "offset_planner._validate_serial_schedule"
    except planner.PlannerError as error:
        result["order_check_source"] = "offset_planner._validate_serial_schedule"
        if error.code in {"invalid_serial_schedule", "schedule_violates_dependency",
                          "schedule_violates_dataflow"}:
            result["order_problems"].append(error.code)
        else:
            result["order_problems"].append(error.code)
    except Exception as error:  # noqa: BLE001 - fail closed
        result["order_problems"].append("invalid_serial_schedule")
        result["order_check_source"] = f"error:{type(error).__name__}"
    result["order_problems"] = sorted(set(result["order_problems"]))
    return result


def _is_inplace_kernel(kernel_id) -> bool:
    parts = str(kernel_id or "").split(".")
    return len(parts) >= 2 and parts[1].endswith("_")


def _element_size(dtype) -> int | None:
    return _KNOWN_DTYPES.get(str(dtype))


def _numel(tensor) -> int | None:
    shape = tensor.get("shape")
    if not isinstance(shape, list) or any(
        isinstance(dimension, bool) or not isinstance(dimension, int) for dimension in shape
    ):
        return None
    total = 1
    for dimension in shape:
        total *= int(dimension)
    return total


def _record(task_id, input_tensor_id, output_tensor_id, storage_id, problems, facts,
            runtime_evidence=None) -> dict:
    # allowed 仅是当前合同下的分析结果；static_reused_storage_bytes 不是实测峰值下降。
    # 即使提供 PPU 绑定证据，报告也不替执行器授权/执行，runtime_release 保持分析边界。
    allowed = not problems
    storage_size = facts.get("storage_size_bytes")
    reused = int(storage_size) if allowed and isinstance(storage_size, int) else 0
    runtime = runtime_evidence or {
        "binding_evidence_scope": None,
        "ppu_runtime_evidence": "missing",
        "runtime_release": RUNTIME_RELEASE_DEFAULT,
    }
    return {
        "version": VERSION,
        "task_id": task_id,
        "input_tensor_id": input_tensor_id,
        "output_tensor_id": output_tensor_id,
        "storage_id": storage_id,
        "decision": "allowed" if allowed else "rejected",
        "reason_codes": sorted(set(problems)),
        "facts": facts,
        "binding_evidence_scope": runtime["binding_evidence_scope"],
        "ppu_runtime_evidence": runtime["ppu_runtime_evidence"],
        "runtime_release": runtime["runtime_release"],
        "static_reused_storage_bytes": reused,
        "boundary": "static plan analysis only; no runtime change, no device execution and no "
        "memory-benefit claim; cpu_conditional evidence never authorizes runtime use",
    }


def evaluate_candidate(plan, task_order, *, task_id: str, input_tensor_id: str,
                       inference: bool = True, binding_evidence=None,
                       expected_graph_fingerprint=None,
                       expected_physical_card=None) -> dict:
    tasks = {task.get("task_id"): task for task in plan.get("tasks", [])}
    tensors = {tensor.get("tensor_id"): tensor for tensor in plan.get("tensors", [])}
    storages = {storage.get("storage_id"): storage for storage in plan.get("storages", [])}
    validation = validate_plan_and_order(plan, task_order)
    positions = {task: index for index, task in enumerate(task_order)}
    problems: list[str] = list(validation["order_problems"])
    if validation["plan_issue_codes"]:
        problems.append("invalid_model_plan")

    task = tasks.get(task_id)
    if task is None:
        return _record(task_id, input_tensor_id, None, None, problems + ["unknown_task"], {})
    if not inference:
        problems.append("training_not_supported")
    outputs = task.get("outputs") or []
    if not outputs:
        problems.append("missing_output")
    elif len(outputs) != 1:
        problems.append("unsupported_multi_output")
    if input_tensor_id not in (task.get("inputs") or []):
        problems.append("input_not_consumed_by_task")
    input_tensor = tensors.get(input_tensor_id)
    if input_tensor is None:
        return _record(task_id, input_tensor_id, None, None, problems + ["missing_tensor"], {})
    storage_id = input_tensor.get("storage_id")
    storage = storages.get(storage_id)
    if storage is None:
        return _record(task_id, input_tensor_id, outputs[0] if outputs else None,
                       storage_id, problems + ["missing_storage"], {})

    # 【G03 核心】检查整块 storage 的所有别名，而不是仅检查想覆盖的那个 Tensor。
    # view/切片的另一个消费者若还需要旧数据，即便候选 Tensor 最后使用也必须拒绝。
    members = sorted(
        (tensor for tensor in tensors.values() if tensor.get("storage_id") == storage_id),
        key=lambda tensor: tensor.get("tensor_id"),
    )
    write_position = positions.get(task_id)
    facts: dict[str, object] = {
        "storage_id": storage_id,
        "storage_allocation_kind": storage.get("allocation_kind"),
        "storage_size_bytes": storage.get("size_bytes"),
        "alias_members": [tensor.get("tensor_id") for tensor in members],
        "write_position": write_position,
        "task_stream": task.get("stream"),
        "task_device": task.get("device"),
        "storage_device": storage.get("device"),
        "candidate_kernel_id": task.get("kernel_id"),
        "member_details": [],
        "last_read_positions": {},
        "plan_validation": validation,
        "binding_evidence_used": {},
        "binding_evidence_device": None,
        "binding_evidence_boundary": "evidence identity is validated against the current plan "
        "(plan_id/plan_sha256/optional graph_fingerprint), tensor/storage ids and layout; "
        "cpu_conditional evidence never authorizes runtime use and PPU runtime evidence is "
        "tracked separately",
    }
    scopes: set[str] = set()

    output_tensor = tensors.get(outputs[0]) if outputs else None
    if outputs and output_tensor is None:
        problems.append("missing_tensor")
    if storage.get("allocation_kind") != "temporary":
        problems.append("not_temporary_storage")
    if task.get("region_id") is not None:
        problems.append("region_unsupported")
    size_bytes = storage.get("size_bytes")
    if isinstance(size_bytes, bool) or not isinstance(size_bytes, int) or size_bytes < 0:
        problems.append("unknown_storage_size")
        size_bytes = None
    task_device = task.get("device")
    task_stream = task.get("stream")
    if not task_device:
        problems.append("unknown_device")
    if not task_stream:
        problems.append("unknown_stream")
    if storage.get("device") and task_device and storage.get("device") != task_device:
        problems.append("device_mismatch")
    if output_tensor is not None:
        if _element_size(output_tensor.get("dtype")) is None:
            problems.append("unknown_dtype")
        if (
            list(output_tensor.get("shape", [])) != list(input_tensor.get("shape", []))
            or output_tensor.get("dtype") != input_tensor.get("dtype")
        ):
            problems.append("output_shape_dtype_mismatch")

    involved_tasks = [task]
    # 先把全别名组相关的 producer/consumer 纳入 device、stream 与引用一致性检查。
    for member in members:
        producer = member.get("producer")
        if producer is not None:
            producer_task = tasks.get(producer)
            if producer_task is not None:
                involved_tasks.append(producer_task)
            elif producer:
                problems.append("unknown_producer")
        for consumer in member.get("consumers") or []:
            consumer_task = tasks.get(consumer)
            if consumer_task is None:
                problems.append("unknown_consumer")
            else:
                involved_tasks.append(consumer_task)
        # Bidirectional producer/consumer symmetry for members.
        if producer is not None and producer in tasks:
            if member.get("tensor_id") not in (tasks[producer].get("outputs") or []):
                problems.append("producer_consumer_mismatch")
        for consumer in member.get("consumers") or []:
            if consumer in tasks and member.get("tensor_id") not in (tasks[consumer].get("inputs") or []):
                problems.append("producer_consumer_mismatch")

    if task_id not in (input_tensor.get("consumers") or []):
        problems.append("producer_consumer_mismatch")

    streams = set()
    devices = set()
    for involved in involved_tasks:
        stream = involved.get("stream")
        device = involved.get("device")
        if not stream:
            problems.append("unknown_stream")
        else:
            streams.add(str(stream))
        if not device:
            problems.append("unknown_device")
        else:
            devices.add(str(device))
    if len(streams) > 1:
        problems.append("multi_stream")
    if len(devices) > 1:
        problems.append("device_mismatch")
    if task_stream and streams - {str(task_stream)}:
        problems.append("stream_mismatch")

    input_size = _element_size(input_tensor.get("dtype"))
    if input_size is None:
        problems.append("unknown_dtype")
    input_numel = _numel(input_tensor)
    if input_numel is None:
        problems.append("unknown_shape_dimension")
    if output_tensor is not None:
        output_size = _element_size(output_tensor.get("dtype"))
        output_numel = _numel(output_tensor)
        if output_size is None or output_numel is None:
            problems.append("unknown_dtype" if output_size is None else "unknown_shape_dimension")
        elif size_bytes is not None and output_numel * output_size > size_bytes:
            problems.append("storage_too_small")

    # 再逐成员保护图输入、参数/持久量、图输出、已有突变，并核对形状/容量/偏移证据。
    # 这些限制是当前可执行子集，不能把“未支持”解释成一般原地计算都不合法。
    for member in members:
        detail = {
            "tensor_id": member.get("tensor_id"),
            "producer": member.get("producer"),
            "producer_position": positions.get(member.get("producer")),
            "consumers": list(member.get("consumers") or []),
            "graph_output": member.get("is_graph_output"),
            "persistent": member.get("is_persistent"),
            "mutated": member.get("is_mutated"),
            "storage_offset_bytes": member.get("storage_offset_bytes"),
            "dtype": member.get("dtype"),
        }
        if member.get("producer") is None:
            problems.append("graph_input_protection")
        if member.get("is_graph_output"):
            problems.append("graph_output_protection")
        if member.get("is_persistent"):
            problems.append("persistent_protection")
        if member.get("is_mutated"):
            problems.append("mutated_member")
        if list(member.get("shape", [])) != list(input_tensor.get("shape", [])):
            problems.append("alias_shape_mismatch")
        if member.get("dtype") != input_tensor.get("dtype"):
            problems.append("alias_dtype_mismatch")
        member_size = _element_size(member.get("dtype"))
        member_numel = _numel(member)
        if member_size is None or member_numel is None:
            problems.append(
                "unknown_dtype" if member_size is None else "unknown_shape_dimension"
            )
        elif size_bytes is not None and member_numel * member_size > size_bytes:
            problems.append("storage_too_small_for_member")

        # Offset: explicit 0, or identity-validated binding evidence with
        # byte_offset == 0.  The old numel*itemsize == storage-size derivation is
        # explicitly not accepted, and evidence must bind plan/graph/tensor/
        # storage/layout/device/scope before it can be used.
        offset = member.get("storage_offset_bytes")
        offset_source = "plan_explicit" if offset is not None else None
        evidence = None
        if isinstance(binding_evidence, dict):
            candidate_evidence = binding_evidence.get(member.get("tensor_id"))
            if isinstance(candidate_evidence, dict):
                evidence = candidate_evidence
        if evidence is not None:
            required = ("tensor_id", "storage_id", "plan_id", "plan_sha256", "byte_offset",
                        "dtype", "shape", "device", "scope")
            missing = [key for key in required if key not in evidence or evidence[key] is None]
            if missing:
                problems.append("binding_evidence_identity_missing")
                detail["evidence_missing_fields"] = missing
            else:
                if evidence.get("plan_id") != plan.get("plan_id"):
                    problems.append("binding_evidence_plan_mismatch")
                # The canonical plan fingerprint is recomputed here; callers cannot
                # override it and stale evidence for a modified plan is rejected.
                if evidence.get("plan_sha256") != plan_fingerprint(plan):
                    problems.append("binding_evidence_plan_mismatch")
                if expected_graph_fingerprint is not None:
                    if "graph_fingerprint" not in evidence:
                        problems.append("binding_evidence_identity_missing")
                    elif evidence.get("graph_fingerprint") != expected_graph_fingerprint:
                        problems.append("binding_evidence_graph_mismatch")
                if evidence.get("tensor_id") != member.get("tensor_id"):
                    problems.append("binding_evidence_tensor_mismatch")
                if evidence.get("storage_id") != storage_id:
                    problems.append("binding_evidence_storage_mismatch")
                if (
                    evidence.get("dtype") != member.get("dtype")
                    or list(evidence.get("shape", [])) != list(member.get("shape", []))
                ):
                    problems.append("binding_evidence_layout_mismatch")
                if not evidence.get("device"):
                    problems.append("binding_evidence_device_missing")
                scope = evidence.get("scope")
                if scope not in _EVIDENCE_SCOPES:
                    problems.append("binding_evidence_scope_missing")
                else:
                    scopes.add(scope)
                    evidence_device = str(evidence.get("device"))
                    if scope == "cpu_conditional":
                        if evidence_device != "cpu":
                            problems.append("binding_evidence_scope_device_mismatch")
                    else:  # ppu_runtime must match the confirmed logical device and physical card
                        if evidence_device != "cuda:0":
                            problems.append("binding_evidence_scope_device_mismatch")
                        physical_card = evidence.get("physical_card")
                        if physical_card is None:
                            problems.append("binding_evidence_physical_card_missing")
                        elif expected_physical_card is None or physical_card != expected_physical_card:
                            problems.append("binding_evidence_physical_card_mismatch")
                evidence_offset = evidence.get("byte_offset")
                if isinstance(evidence_offset, int) and not isinstance(evidence_offset, bool):
                    offset = evidence_offset
                    offset_source = f"binding_evidence:{evidence.get('source', 'unknown')}"
                    facts["binding_evidence_used"][member.get("tensor_id")] = {
                        "byte_offset": evidence_offset,
                        "device": evidence.get("device"),
                        "scope": scope,
                        "source": evidence.get("source"),
                        "plan_sha256": evidence.get("plan_sha256"),
                        "graph_fingerprint": evidence.get("graph_fingerprint"),
                    }
                    facts["binding_evidence_device"] = evidence.get("device")
                else:
                    problems.append("binding_evidence_identity_missing")
        detail["storage_offset_source"] = offset_source
        if offset is None:
            problems.append("unresolved_storage_offset_pending_proof")
        elif offset != 0:
            problems.append("nonzero_storage_offset")

        # 写点之后任何别名还有消费者，就可能读到被覆盖的新值，必须 fail-closed。
        # 只把本候选算子的读后写作为允许边界；算子本身还需独立验证完全同址安全。
        last_read = None
        for consumer in member.get("consumers") or []:
            consumer_task = tasks.get(consumer)
            if consumer_task is None:
                continue  # already reported as unknown_consumer
            consumer_position = positions.get(consumer)
            if consumer_position is None:
                problems.append("order_incomplete")
                continue
            if _is_inplace_kernel(consumer_task.get("kernel_id")):
                problems.append("inplace_consumer")
            if consumer == task_id:
                if member.get("tensor_id") != input_tensor_id:
                    problems.append("task_consumes_another_alias_member")
                last_read = max(last_read or 0, consumer_position)
                continue
            last_read = max(last_read or 0, consumer_position)
            if write_position is not None and consumer_position > write_position:
                problems.append("consumer_after_write")
            if consumer_task.get("stream") != task_stream:
                problems.append("stream_mismatch")
            if consumer_task.get("device") != task_device:
                problems.append("device_mismatch")
            if "backward" in str(consumer_task.get("kernel_id", "")):
                problems.append("backward_task_present")
        facts["last_read_positions"][member.get("tensor_id")] = last_read
        facts["member_details"].append(detail)

    for other in tasks.values():
        if other.get("task_id") == task_id:
            continue
        other_position = positions.get(other.get("task_id"))
        for output_id in other.get("outputs") or []:
            other_tensor = tensors.get(output_id)
            if other_tensor is not None and other_tensor.get("storage_id") == storage_id:
                if other_position is None or write_position is None or other_position > write_position:
                    problems.append("storage_written_elsewhere")

    if len(scopes) > 1:
        problems.append("binding_evidence_scope_mixed")
    scope_summary = sorted(scopes)
    runtime_evidence = {
        "binding_evidence_scope": scope_summary[0] if len(scope_summary) == 1 else scope_summary,
        "ppu_runtime_evidence": "provided" if scope_summary == ["ppu_runtime"] else "missing",
        "runtime_release": RUNTIME_RELEASE_DEFAULT,
    }
    facts["runtime_evidence"] = runtime_evidence

    return _record(
        task_id,
        input_tensor_id,
        outputs[0] if outputs else None,
        storage_id,
        problems,
        facts,
        runtime_evidence,
    )


def analyze_op_candidates(plan, task_order, *, kernel_ids=("aten.gelu.default",),
                          inference: bool = True, binding_evidence=None,
                          expected_graph_fingerprint=None,
                          expected_physical_card=None,
                          plan_identity=None) -> dict:
    # 外部调用入口：先验证计划身份与显式顺序，再逐候选输入执行上面的安全判据。
    # 不凭算子名自动启用 inplace，不改变模型图，也不发起编译或设备执行。
    validation = validate_plan_and_order(plan, task_order)
    plan_canonical = plan_fingerprint(plan)
    identity_problem = None
    if isinstance(plan_identity, dict):
        recorded = plan_identity.get("derived_plan_canonical_sha256")
        if recorded is not None and recorded != plan_canonical:
            identity_problem = "plan_identity_mismatch"
    kernel_set = set(kernel_ids)
    candidates = []
    for task in plan.get("tasks", []):
        if task.get("kernel_id") not in kernel_set:
            continue
        for input_tensor_id in task.get("inputs") or []:
            candidates.append(
                evaluate_candidate(
                    plan,
                    task_order,
                    task_id=task["task_id"],
                    input_tensor_id=input_tensor_id,
                    inference=inference,
                    binding_evidence=binding_evidence,
                    expected_graph_fingerprint=expected_graph_fingerprint,
                    expected_physical_card=expected_physical_card,
                )
            )
    if identity_problem:
        for candidate in candidates:
            candidate["reason_codes"] = sorted(
                set(candidate["reason_codes"]) | {identity_problem}
            )
            candidate["decision"] = "rejected"
            candidate["static_reused_storage_bytes"] = 0
    return {
        "version": VERSION,
        "kernel_ids": sorted(kernel_set),
        "inference_only_asserted": bool(inference),
        "plan_validation": validation,
        "plan_identity": {
            "canonical_sha256_recomputed": plan_canonical,
            "provided": plan_identity,
            "identity_problem": identity_problem,
            "rule": "the canonical fingerprint is recomputed from the current plan; callers "
            "cannot override it and stale evidence for a modified plan is rejected",
        },
        "binding_evidence_supplied": bool(binding_evidence),
        "expected_physical_card": expected_physical_card,
        "binding_evidence_scopes": sorted(
            {
                item["binding_evidence_scope"]
                if isinstance(item["binding_evidence_scope"], str)
                else scope
                for item in candidates
                for scope in (
                    [item["binding_evidence_scope"]]
                    if isinstance(item["binding_evidence_scope"], str)
                    else item["binding_evidence_scope"]
                )
            }
        ),
        "ppu_runtime_evidence": (
            "provided"
            if candidates and all(item["ppu_runtime_evidence"] == "provided" for item in candidates)
            else "missing"
        ),
        "runtime_release": RUNTIME_RELEASE_DEFAULT,
        "candidate_count": len(candidates),
        "allowed_count": sum(1 for item in candidates if item["decision"] == "allowed"),
        "rejected_count": sum(1 for item in candidates if item["decision"] == "rejected"),
        "candidates": candidates,
        "boundary": "analysis only; allow decisions still require an explicit executor change, "
        "re-audit and device validation before any runtime use; unresolved offsets are reported "
        "as pending proof, never derived from size equality; cpu_conditional evidence never "
        "authorizes runtime use",
    }
