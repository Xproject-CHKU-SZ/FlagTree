"""Offline, fail-closed storage placement for the first F08-G02 prototype.

This is a byte-arena *candidate*, never a PyTorch allocator replacement.  A
runtime must enforce the recorded serial schedule and prove backend alias/view
semantics before applying it.  Whole storages are placed, not individual views.
"""

from __future__ import annotations

import copy
import hashlib
import json
from math import lcm
from typing import Any, Mapping, Sequence

from .liveness import ModelPlanAnalysisError, analyze_model_lifetimes


REPORT_VERSION = "f08-g02-buffer-reuse-plan/0.1"
EXECUTION_CONTRACT = "serial task completion in this exact order on explicit streams"
NO_REUSE_REFERENCE = "hypothetical unique addresses for every eligible allocation; not the PyTorch baseline"


class BufferReusePlanningError(ModelPlanAnalysisError):
    """A candidate cannot be produced under the supported safety contract."""


def _align_up(value: int, alignment: int) -> int:
    return ((value + alignment - 1) // alignment) * alignment


def _overlap(a_start: int, a_end: int, b_start: int, b_end: int) -> bool:
    # Closed lifetimes: input and output at the same completion event interfere.
    return a_start <= b_end and b_start <= a_end


def _address_overlap(a: Mapping[str, Any], b: Mapping[str, Any]) -> bool:
    # Half-open byte ranges; zero-byte objects occupy no arena space.
    return (a["size_bytes"] > 0 and b["size_bytes"] > 0
            and a["offset_bytes"] < b["offset_bytes"] + b["size_bytes"]
            and b["offset_bytes"] < a["offset_bytes"] + a["size_bytes"])


def _fingerprint(document: Mapping[str, Any]) -> str:
    canonical = copy.deepcopy(dict(document))
    for field, key in (("tasks", "task_id"), ("tensors", "tensor_id"), ("storages", "storage_id")):
        canonical[field].sort(key=lambda record: record[key])
    return hashlib.sha256(json.dumps(canonical, sort_keys=True, ensure_ascii=False,
                                     separators=(",", ":")).encode("utf-8")).hexdigest()


def _prepare(document: Mapping[str, Any], task_order: Sequence[str] | None):
    original = analyze_model_lifetimes(document)  # Validate before touching fields.
    if document.get("regions"):
        raise BufferReusePlanningError("unsupported_control_flow",
                                      "v0 only accepts concrete straight-line DAGs; branch/loop/async require fallback")
    tasks = {task["task_id"]: task for task in document["tasks"]}
    domains: dict[str, set[str | None]] = {}
    for task in tasks.values():
        domains.setdefault(task["device"], set()).add(task.get("stream"))
    if any(None in streams or len(streams) != 1 for streams in domains.values()):
        raise BufferReusePlanningError("unsupported_stream_contract",
                                      "each device needs exactly one explicit stream; multi-stream reuse is not implemented")
    if task_order is None:
        if "incomplete_happens_before" in original.diagnostics:
            raise BufferReusePlanningError("explicit_serial_schedule_required",
                                          "topological sorting does not prove runtime order; supply a proposed serial schedule")
        order = list(original.task_order)
        origin = "dependency_total_order"
    else:
        order = list(task_order)
        if (any(not isinstance(task, str) for task in order)
                or len(order) != len(tasks) or set(order) != set(tasks)):
            raise BufferReusePlanningError("invalid_serial_schedule",
                                          "task_order must contain every task exactly once")
        origin = "caller_proposed_serial_schedule_not_runtime_observation"
    positions = {task: index for index, task in enumerate(order)}
    for task in tasks.values():
        for before in task["predecessors"]:
            if positions[before] >= positions[task["task_id"]]:
                raise BufferReusePlanningError("schedule_violates_dependency", f"{before} must precede {task['task_id']}")
    storages = {storage["storage_id"]: storage for storage in document["storages"]}
    for tensor in document["tensors"]:
        producer = tensor["producer"]
        for consumer in tensor["consumers"]:
            if producer is not None and positions[producer] >= positions[consumer]:
                raise BufferReusePlanningError("schedule_violates_dataflow", f"{tensor['tensor_id']} is read before production")
        for task_id in ([producer] if producer is not None else []) + tensor["consumers"]:
            if tasks[task_id]["device"] != storages[tensor["storage_id"]]["device"]:
                raise BufferReusePlanningError("cross_device_tensor_use", f"{tensor['tensor_id']} crosses a device domain")
    # Analyse a copy with the proposed serial contract imposed. Do not silently
    # interpret G1's lexicographic topological order as observed device execution.
    serial = copy.deepcopy(dict(document))
    serial_tasks = {task["task_id"]: task for task in serial["tasks"]}
    for before, after in zip(order, order[1:]):
        if before not in serial_tasks[after]["predecessors"]:
            serial_tasks[after]["predecessors"].append(before)
    return analyze_model_lifetimes(serial), order, origin


def _classify(document: Mapping[str, Any], lifetimes):
    tensors = {tensor["tensor_id"]: tensor for tensor in document["tensors"]}
    candidates, excluded = [], []
    for storage in lifetimes.storages:
        members = [tensors[name] for name in storage.alias_members]
        reasons = []
        if storage.allocation_kind != "temporary":
            reasons.append("not_temporary")
        if storage.is_persistent:
            reasons.append("persistent_storage")
        if any(member["is_graph_output"] for member in members):
            reasons.append("graph_output_escapes")
        if any(member["producer"] is None for member in members):
            reasons.append("externally_owned_storage")
        if any(member["is_mutated"] for member in members):
            reasons.append("mutation_semantics_not_supported")
        if reasons:
            excluded.append({"storage_id": storage.storage_id, "device": storage.device,
                             "source": storage.source, "reasons": sorted(reasons)})
            continue
        if storage.size_bytes is None:
            raise BufferReusePlanningError("dynamic_storage_requires_guard",
                                          f"{storage.storage_id}: bounds alone do not define a concrete runtime allocation")
        candidates.append(storage)
    return candidates, excluded


def _binding_metadata(document: Mapping[str, Any], candidates):
    eligible_ids = {storage.storage_id for storage in candidates}
    unknown_offsets = sorted(tensor["tensor_id"] for tensor in document["tensors"]
                             if tensor["storage_id"] in eligible_ids and tensor["storage_offset_bytes"] is None)
    blockers = ["no_model_level_runtime_allocator_binding", "backend_alias_view_semantics_require_validation",
                "serial_completion_contract_not_verified_on_device"]
    if unknown_offsets:
        blockers.append("tensor_storage_offsets_unresolved")
    return unknown_offsets, sorted(blockers)


def propose_buffer_reuse_plan(document: Mapping[str, Any], *,
                              task_order: Sequence[str] | None = None) -> dict[str, Any]:
    """Return a deterministic first-fit byte placement and independently check it.

    Only concrete, non-mutated, internally owned temporaries enter arenas. Inputs,
    parameters, outputs and caches stay with their original allocator. This plan
    has no runtime side effects and cannot be enabled by merely creating it.
    """
    lifetimes, order, origin = _prepare(document, task_order)
    candidates, excluded = _classify(document, lifetimes)
    placements: list[dict[str, Any]] = []
    pools: list[dict[str, Any]] = []
    for device in sorted({storage.device for storage in candidates}):
        group = sorted((s for s in candidates if s.device == device),
                       key=lambda s: (s.lifetime_start, -s.size_bytes, s.storage_id))
        device_placements: list[dict[str, Any]] = []
        no_reuse_bytes, capacity, base_alignment = 0, 0, 1
        for storage in group:
            base_alignment = lcm(base_alignment, storage.alignment)
            no_reuse_bytes = _align_up(no_reuse_bytes, storage.alignment) + storage.size_bytes
            active = sorted((p for p in device_placements
                             if p["size_bytes"] and _overlap(storage.lifetime_start, storage.lifetime_end,
                                                            p["lifetime_start"], p["lifetime_end"])),
                            key=lambda p: (p["offset_bytes"], p["storage_id"]))
            offset = 0
            if storage.size_bytes:
                for live in active:
                    offset = _align_up(offset, storage.alignment)
                    if offset + storage.size_bytes <= live["offset_bytes"]:
                        break
                    offset = max(offset, live["offset_bytes"] + live["size_bytes"])
                offset = _align_up(offset, storage.alignment)
            placement = {"storage_id": storage.storage_id, "device": device,
                         "offset_bytes": offset, "size_bytes": storage.size_bytes,
                         "alignment": storage.alignment, "lifetime_start": storage.lifetime_start,
                         "lifetime_end": storage.lifetime_end, "alias_members": list(storage.alias_members),
                         "source": storage.source, "reuses_address_from": []}
            placement["reuses_address_from"] = sorted(p["storage_id"] for p in device_placements
                                                       if _address_overlap(p, placement))
            device_placements.append(placement)
            capacity = max(capacity, offset + storage.size_bytes)
        live_peak = max((sum(p["size_bytes"] for p in device_placements
                             if p["lifetime_start"] <= event.event_index <= p["lifetime_end"])
                         for event in lifetimes.events), default=0)
        pools.append({"device": device, "base_alignment": base_alignment, "arena_bytes": capacity,
                      "no_reuse_arena_bytes": no_reuse_bytes, "no_reuse_reference": NO_REUSE_REFERENCE,
                      "eligible_live_storage_peak_bytes": live_peak,
                      "static_arena_capacity_reduction_bytes": no_reuse_bytes - capacity,
                      "storage_count": len(group)})
        placements.extend(device_placements)
    unknown_offsets, blockers = _binding_metadata(document, candidates)
    report = {"report_version": REPORT_VERSION, "plan_id": document["plan_id"],
              "model_id": document["model_id"], "input_sha256": _fingerprint(document),
              "status": "offline_candidate_only", "runtime_applied": False, "default_runtime_policy": "disabled",
              "schedule": {"task_order": order, "origin": origin,
                           "required_execution_contract": EXECUTION_CONTRACT},
              "event_semantics": lifetimes.event_semantics, "pools": pools,
              "placements": sorted(placements, key=lambda p: p["storage_id"]),
              "excluded_storages": excluded, "unresolved_tensor_storage_offsets": unknown_offsets,
              "runtime_binding_blockers": sorted(blockers),
              "interpretation": "arena capacities are static allocation candidates, not measured PyTorch/PPU peaks or performance gains"}
    issues = verify_buffer_reuse_plan(document, report)
    if issues:
        raise BufferReusePlanningError("placement_verification_failed", "; ".join(issues))
    report["static_validation"] = {"passed": True, "checks": ["exact_storage_coverage", "size_and_lifetime_provenance",
                                                             "alignment_and_arena_bounds", "no_live_address_overlap"]}
    return report


def verify_buffer_reuse_plan(document: Mapping[str, Any], report: Mapping[str, Any]) -> tuple[str, ...]:
    """Recompute lifetimes and check byte-range safety, without rerunning first-fit.

    A pass here verifies only the static candidate under its schedule contract.
    It deliberately does not approve runtime application or accuracy.
    """
    issues: list[str] = []
    if report.get("report_version") != REPORT_VERSION:
        issues.append("report_version_mismatch")
    if report.get("input_sha256") != _fingerprint(document):
        issues.append("input_fingerprint_mismatch")
    if (report.get("plan_id") != document["plan_id"] or report.get("model_id") != document["model_id"]
            or report.get("status") != "offline_candidate_only"):
        issues.append("report_identity_or_status_mismatch")
    if report.get("runtime_applied") is not False or report.get("default_runtime_policy") != "disabled":
        issues.append("runtime_policy_must_remain_disabled")
    schedule = report.get("schedule")
    if not isinstance(schedule, Mapping) or not isinstance(schedule.get("task_order"), list):
        return tuple(sorted(issues + ["missing_serial_schedule"]))
    if schedule.get("required_execution_contract") != EXECUTION_CONTRACT:
        issues.append("execution_contract_mismatch")
    origin = schedule.get("origin")
    if origin == "dependency_total_order":
        original = analyze_model_lifetimes(document)
        if "incomplete_happens_before" in original.diagnostics or list(original.task_order) != schedule["task_order"]:
            issues.append("schedule_origin_mismatch")
    elif origin != "caller_proposed_serial_schedule_not_runtime_observation":
        issues.append("schedule_origin_mismatch")
    lifetimes, _, _ = _prepare(document, schedule["task_order"])
    candidates, excluded = _classify(document, lifetimes)
    unknown_offsets, blockers = _binding_metadata(document, candidates)
    if report.get("unresolved_tensor_storage_offsets") != unknown_offsets or report.get("runtime_binding_blockers") != blockers:
        issues.append("runtime_binding_blockers_mismatch")
    expected = {storage.storage_id: storage for storage in candidates}
    pool_records, placement_records = report.get("pools"), report.get("placements")
    if not isinstance(pool_records, list) or not isinstance(placement_records, list):
        return tuple(sorted(issues + ["invalid_placement_structure"]))
    if not all(isinstance(p, Mapping) for p in pool_records + placement_records):
        return tuple(sorted(issues + ["invalid_placement_record"]))
    if (any(not isinstance(p.get("device"), str) for p in pool_records)
            or any(not isinstance(p.get("storage_id"), str) for p in placement_records)):
        return tuple(sorted(issues + ["invalid_placement_identity"]))
    pools = {pool.get("device"): pool for pool in pool_records}
    placements = {p.get("storage_id"): p for p in placement_records}
    if len(pools) != len(pool_records) or set(pools) != {s.device for s in candidates}:
        issues.append("pool_coverage_mismatch")
    if len(placements) != len(placement_records) or set(placements) != set(expected):
        issues.append("storage_coverage_mismatch")
    if report.get("excluded_storages") != excluded:
        issues.append("excluded_storage_provenance_mismatch")
    valid_placements = []
    for storage_id, storage in expected.items():
        p = placements.get(storage_id)
        if p is None:
            continue
        for field in ("device", "size_bytes", "alignment", "lifetime_start", "lifetime_end", "source"):
            if p.get(field) != getattr(storage, field):
                issues.append(f"{storage_id}: {field}_mismatch")
        if p.get("alias_members") != list(storage.alias_members):
            issues.append(f"{storage_id}: alias_members_mismatch")
        offset = p.get("offset_bytes")
        pool = pools.get(storage.device)
        if isinstance(offset, bool) or not isinstance(offset, int) or offset < 0:
            issues.append(f"{storage_id}: invalid_offset")
            continue
        if offset % storage.alignment:
            issues.append(f"{storage_id}: misaligned_offset")
        capacity = pool.get("arena_bytes") if pool is not None else None
        if isinstance(capacity, bool) or not isinstance(capacity, int) or capacity < offset + storage.size_bytes:
            issues.append(f"{storage_id}: arena_bounds_violation")
        # Use freshly analysed size/lifetime, not potentially tampered report fields.
        valid_placements.append({"storage_id": storage_id, "device": storage.device, "offset_bytes": offset,
                                 "size_bytes": storage.size_bytes, "lifetime_start": storage.lifetime_start,
                                 "lifetime_end": storage.lifetime_end})
    for device, pool in pools.items():
        group = sorted((s for s in candidates if s.device == device),
                       key=lambda s: (s.lifetime_start, -s.size_bytes, s.storage_id))
        expected_alignment = lcm(*(s.alignment for s in group))
        if pool.get("base_alignment") != expected_alignment:
            issues.append(f"{device}: base_alignment_mismatch")
        if pool.get("no_reuse_reference") != NO_REUSE_REFERENCE:
            issues.append(f"{device}: no_reuse_reference_mismatch")
        no_reuse_bytes = 0
        for storage in group:
            no_reuse_bytes = _align_up(no_reuse_bytes, storage.alignment) + storage.size_bytes
        valid_group = [p for p in valid_placements if p["device"] == device]
        high_water = max((p["offset_bytes"] + p["size_bytes"] for p in valid_group), default=0)
        live_peak = max((sum(s.size_bytes for s in group if s.lifetime_start <= event.event_index <= s.lifetime_end)
                         for event in lifetimes.events), default=0)
        for field, value in (("arena_bytes", high_water), ("no_reuse_arena_bytes", no_reuse_bytes),
                             ("eligible_live_storage_peak_bytes", live_peak), ("storage_count", len(group)),
                             ("static_arena_capacity_reduction_bytes", no_reuse_bytes - high_water)):
            if pool.get(field) != value:
                issues.append(f"{device}: {field}_mismatch")
        prior = []
        valid_by_id = {p["storage_id"]: p for p in valid_group}
        for storage in group:
            p = valid_by_id.get(storage.storage_id)
            if p is None:
                continue
            address_sources = sorted(old["storage_id"] for old in prior if _address_overlap(old, p))
            if placements[storage.storage_id].get("reuses_address_from") != address_sources:
                issues.append(f"{storage.storage_id}: reuse_provenance_mismatch")
            prior.append(p)
    for index, left in enumerate(valid_placements):
        for right in valid_placements[index + 1:]:
            if (left["device"] == right["device"] and _address_overlap(left, right)
                    and _overlap(left["lifetime_start"], left["lifetime_end"],
                                 right["lifetime_start"], right["lifetime_end"])):
                issues.append(f"live_address_overlap: {left['storage_id']} / {right['storage_id']}")
    return tuple(sorted(set(issues)))
