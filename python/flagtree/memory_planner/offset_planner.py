"""G2 offset planner: fail-closed planning, staged verification, offline metadata.

Staged integration notes (2026-09-28, offset planner v0.2)
----------------------------------------------------------

- Primary implementation for the runtime-enforceable subset: single device,
  explicit stream, power-of-two alignment <= 4096 bytes, deterministic
  first-fit.
- Planner and verifier share one schedule contract.  A candidate order is
  always imposed on a *copy* of the plan before lifetime analysis; the
  original plan is never modified.  Imposing a serial order adds execution
  assumptions, so candidate plans stay ``offline_candidate_only`` and keep the
  runtime binding blockers.
- ``verify_safe``  : independent reconstruction + any safe layout (coverage,
  types, sizes, alignment, bounds, conflicts, contract, provenance, metrics).
- ``verify_matches``: ``verify_safe`` plus exact agreement with the
  deterministic planner (``verify_arena_plan`` stays as an alias).

Offline-only capabilities of the earlier ``reuse.py`` prototype (multi-device
pools, LCM/odd alignments, schema ``f08-g02-buffer-reuse-plan/0.1``) are not
supported here; they are explicitly rejected or documented as incompatible in
``docs/project-plan/f08-g02-integration-compatibility.md``.
"""

from __future__ import annotations

import copy
import hashlib
import json
from dataclasses import asdict, dataclass
from typing import Any, Mapping, Sequence

from .liveness import LifetimeReport, StorageLifetime, analyze_model_lifetimes

ARENA_PLAN_VERSION = "f08-g02-arena-plan/0.2"
OFFLINE_STATUS = "offline_candidate_only"
RUNTIME_POLICY_DISABLED = "disabled"
NO_REUSE_REFERENCE = (
    "hypothetical unique addresses for every eligible allocation; "
    "not the PyTorch baseline"
)
EXECUTION_CONTRACT_TOTAL = (
    "serial task completion in the proven dependency order on explicit streams; "
    "runtime enforcement not yet validated"
)
EXECUTION_CONTRACT_CANDIDATE = (
    "caller-proposed serial completion order; not an observed PPU execution order; "
    "executor must enforce this exact order and verify bindings.chain is a subsequence"
)
RUNTIME_BLOCKERS_BASE = (
    "no_model_level_runtime_allocator_binding",
    "backend_alias_view_semantics_require_validation",
    "serial_completion_contract_not_verified_on_device",
)
CANDIDATE_ORDER_BLOCKER = "serial_candidate_order_not_observed"

EXTERNAL_ALLOCATION_KINDS = {"input", "parameter", "output", "cache"}
SUPPORTED_MAX_ALIGNMENT = 4096
MIN_BASE_ALIGNMENT = 64

ORIGIN_DEPENDENCY = "dependency_total_order"
ORIGIN_G1_CANDIDATE = "g1_linearization_candidate_not_observed"
ORIGIN_CALLER_CANDIDATE = "caller_proposed_serial_schedule_not_runtime_observation"


class PlannerError(ValueError):
    """Raised when the plan cannot be placed safely."""

    def __init__(self, code: str, message: str) -> None:
        super().__init__(f"[{code}] {message}")
        self.code = code
        self.message = message


@dataclass(frozen=True)
class ArenaAssignment:
    storage_id: str
    offset_bytes: int
    size_bytes: int
    alignment: int
    aligned_size_bytes: int
    device: str = ""
    alias_members: tuple[str, ...] = ()
    source: str = ""
    reuses_address_from: tuple[str, ...] = ()


@dataclass(frozen=True)
class ArenaPlan:
    report_version: str
    plan_id: str
    model_id: str
    input_sha256: str
    device: str
    arena_size_bytes: int
    base_alignment: int
    assignments: tuple[ArenaAssignment, ...]
    selected_storage_ids: tuple[str, ...]
    external_storage_ids: tuple[str, ...]
    excluded_storage_ids: tuple[tuple[str, str], ...]
    order_status: str
    order_origin: str
    task_order: tuple[str, ...]
    executor_contract: str
    reuse_chains: tuple[tuple[int, tuple[str, ...]], ...]
    unresolved_tensor_storage_offsets: tuple[str, ...]
    runtime_binding_blockers: tuple[str, ...]
    status: str
    runtime_applied: bool
    default_runtime_policy: str
    no_reuse_arena_bytes: int
    eligible_live_storage_peak_bytes: int
    static_arena_capacity_reduction_bytes: int
    no_reuse_reference: str

    def to_dict(self) -> dict[str, Any]:
        data = asdict(self)
        data["assignments"] = [
            {
                **assignment,
                "alias_members": list(assignment["alias_members"]),
                "reuses_address_from": list(assignment["reuses_address_from"]),
            }
            for assignment in data["assignments"]
        ]
        data["reuse_chains"] = [
            {"offset_bytes": offset, "storage_ids": list(storage_ids)}
            for offset, storage_ids in self.reuse_chains
        ]
        data["excluded_storage_ids"] = [
            {"storage_id": storage_id, "reason": reason}
            for storage_id, reason in self.excluded_storage_ids
        ]
        data["unresolved_tensor_storage_offsets"] = list(self.unresolved_tensor_storage_offsets)
        data["runtime_binding_blockers"] = list(self.runtime_binding_blockers)
        data["selected_storage_ids"] = list(self.selected_storage_ids)
        return data


@dataclass(frozen=True)
class SafetyAnalysis:
    pool_candidates: tuple[StorageLifetime, ...]
    external_storage_ids: tuple[str, ...]
    excluded_storage_ids: tuple[tuple[str, str], ...]
    unresolved_tensor_storage_offsets: tuple[str, ...]
    runtime_binding_blockers: tuple[str, ...]
    order_status: str
    order_origin: str
    task_order: tuple[str, ...]
    executor_contract: str
    base_alignment: int
    device: str


# ---------------------------------------------------------------------------
# helpers


def _align_up(value: int, alignment: int) -> int:
    return ((value + alignment - 1) // alignment) * alignment


def _members_by_storage(plan: Mapping[str, Any]) -> dict[str, list[Mapping[str, Any]]]:
    members: dict[str, list[Mapping[str, Any]]] = {}
    for tensor in plan["tensors"]:
        members.setdefault(tensor["storage_id"], []).append(tensor)
    return members


def _validate_alignment(alignment: Any, storage_id: str) -> int:
    if isinstance(alignment, bool) or not isinstance(alignment, int) or alignment < 1:
        raise PlannerError("unsupported_alignment", f"{storage_id}: invalid alignment {alignment!r}")
    if alignment & (alignment - 1) != 0:
        raise PlannerError(
            "unsupported_alignment",
            f"{storage_id}: alignment {alignment} is not a power of two",
        )
    if alignment > SUPPORTED_MAX_ALIGNMENT:
        raise PlannerError(
            "unsupported_alignment",
            f"{storage_id}: alignment {alignment} exceeds supported maximum {SUPPORTED_MAX_ALIGNMENT}",
        )
    return alignment


def _fingerprint(document: Mapping[str, Any]) -> str:
    canonical = copy.deepcopy(dict(document))
    for field, key in (
        ("tasks", "task_id"),
        ("tensors", "tensor_id"),
        ("storages", "storage_id"),
        ("regions", "region_id"),
    ):
        value = canonical.get(field)
        if isinstance(value, list):
            canonical[field] = sorted(value, key=lambda record: record.get(key, ""))
    return hashlib.sha256(
        json.dumps(canonical, sort_keys=True, ensure_ascii=False, separators=(",", ":")).encode(
            "utf-8"
        )
    ).hexdigest()


def _select_schedule(
    base_report: LifetimeReport,
    allow_linearized_candidate: bool,
    task_order: Sequence[str] | None,
) -> tuple[str, str, list[str]]:
    if task_order is not None:
        return "linearized_candidate", ORIGIN_CALLER_CANDIDATE, list(task_order)
    if "incomplete_happens_before" in base_report.diagnostics:
        if not allow_linearized_candidate:
            raise PlannerError(
                "incomplete_execution_order",
                "G1 reported incomplete_happens_before; pass allow_linearized_candidate=True "
                "or an explicit task_order to plan against a candidate serial schedule",
            )
        return "linearized_candidate", ORIGIN_G1_CANDIDATE, list(base_report.task_order)
    return "total", ORIGIN_DEPENDENCY, list(base_report.task_order)


def _validate_serial_schedule(plan: Mapping[str, Any], order: Sequence[str]) -> None:
    tasks = {task["task_id"]: task for task in plan["tasks"]}
    if (
        isinstance(order, (str, bytes))
        or not isinstance(order, Sequence)
        or any(not isinstance(task, str) for task in order)
        or len(order) != len(tasks)
        or set(order) != set(tasks)
    ):
        raise PlannerError(
            "invalid_serial_schedule",
            "task_order must contain every task exactly once",
        )
    positions = {task: index for index, task in enumerate(order)}
    for task in tasks.values():
        for before in task["predecessors"]:
            if before in positions and positions[before] >= positions[task["task_id"]]:
                raise PlannerError(
                    "schedule_violates_dependency",
                    f"{before} must precede {task['task_id']}",
                )
    for tensor in plan["tensors"]:
        producer = tensor["producer"]
        for consumer in tensor["consumers"]:
            if (
                producer is not None
                and positions.get(producer, -1) >= positions.get(consumer, -1)
            ):
                raise PlannerError(
                    "schedule_violates_dataflow",
                    f"{tensor['tensor_id']} is read before production",
                )


def _impose_serial_order(plan: Mapping[str, Any], order: Sequence[str]) -> dict[str, Any]:
    serial = copy.deepcopy(dict(plan))
    tasks = {task["task_id"]: task for task in serial["tasks"]}
    for before, after in zip(order, order[1:]):
        predecessors = tasks[after]["predecessors"]
        if before not in predecessors:
            predecessors.append(before)
    return serial


def _classify(
    plan: Mapping[str, Any],
    report: LifetimeReport,
    pool_storage_ids: set[str] | None = None,
) -> tuple[
    list[StorageLifetime],
    list[str],
    list[tuple[str, str]],
    list[int],
    str,
    int,
]:
    for region in plan.get("regions") or []:
        if region.get("kind") in {"branch", "loop", "async"}:
            raise PlannerError(
                "unsupported_control_flow",
                f"region {region.get('region_id')!r} of kind {region.get('kind')!r} "
                "cannot be planned for runtime reuse",
            )

    missing_stream = sorted(
        task["task_id"] for task in plan["tasks"] if not task.get("stream")
    )
    if missing_stream:
        raise PlannerError(
            "unknown_stream",
            "tasks without an explicit stream: " + ", ".join(missing_stream),
        )
    streams = sorted({task["stream"] for task in plan["tasks"]})
    if len(streams) > 1:
        raise PlannerError(
            "multi_stream",
            f"tasks span multiple streams {streams}; cross-stream order is not proven",
        )

    devices = sorted({storage["device"] for storage in plan["storages"]})
    if len(devices) > 1:
        raise PlannerError("multi_device", f"storages span multiple devices {devices}")
    device = devices[0] if devices else "unknown"

    alignments = [
        _validate_alignment(storage["alignment"], storage["storage_id"])
        for storage in plan["storages"]
    ]

    members = _members_by_storage(plan)
    storage_meta = {storage["storage_id"]: storage for storage in plan["storages"]}
    pool: list[StorageLifetime] = []
    external: list[str] = []
    excluded: list[tuple[str, str]] = []
    unknown_size: list[str] = []

    for storage in report.storages:
        meta = storage_meta[storage.storage_id]
        member_tensors = members.get(storage.storage_id, [])
        is_external = meta["allocation_kind"] in EXTERNAL_ALLOCATION_KINDS or any(
            tensor["is_graph_output"] or tensor["is_persistent"] for tensor in member_tensors
        )
        if is_external:
            external.append(storage.storage_id)
            continue
        if "mutated_alias_group" in storage.conservative_reasons:
            excluded.append((storage.storage_id, "mutated_alias_group_unproven"))
            continue
        if pool_storage_ids is not None and storage.storage_id not in pool_storage_ids:
            excluded.append((storage.storage_id, "not_selected_for_pool"))
            continue
        if storage.size_bytes is None:
            unknown_size.append(storage.storage_id)
            continue
        pool.append(storage)

    if unknown_size:
        raise PlannerError(
            "unknown_size_storage",
            "pool candidates with no numeric size: " + ", ".join(sorted(unknown_size)),
        )
    base_alignment = max([MIN_BASE_ALIGNMENT, *alignments])
    return pool, external, excluded, alignments, device, base_alignment


def _unresolved_offsets(plan: Mapping[str, Any], candidates: Sequence[StorageLifetime]) -> list[str]:
    candidate_ids = {storage.storage_id for storage in candidates}
    unresolved = [
        tensor["tensor_id"]
        for tensor in plan["tensors"]
        if tensor["storage_id"] in candidate_ids and tensor.get("storage_offset_bytes") is None
    ]
    return sorted(unresolved)


def _reuse_provenance(
    assignments: Sequence[ArenaAssignment], offsets: Mapping[str, int]
) -> dict[str, tuple[str, ...]]:
    ordered = [
        assignment
        for assignment in assignments
        if assignment.storage_id in offsets
        and isinstance(offsets[assignment.storage_id], int)
        and not isinstance(offsets[assignment.storage_id], bool)
    ]
    provenance: dict[str, tuple[str, ...]] = {}
    prior: list[tuple[str, int, int]] = []
    for assignment in ordered:
        offset = offsets[assignment.storage_id]
        size = assignment.size_bytes if isinstance(assignment.size_bytes, int) else 0
        overlaps = sorted(
            storage_id
            for storage_id, other_offset, other_size in prior
            if size > 0
            and other_size > 0
            and offset < other_offset + other_size
            and other_offset < offset + size
        )
        provenance[assignment.storage_id] = tuple(overlaps)
        prior.append((assignment.storage_id, offset, size))
    return provenance


def _build_arena_plan(
    plan: Mapping[str, Any],
    task_order: Sequence[str],
    order_status: str,
    order_origin: str,
    pool_storage_ids: set[str] | None = None,
) -> tuple[ArenaPlan, LifetimeReport]:
    _validate_serial_schedule(plan, task_order)
    ordered_plan = _impose_serial_order(plan, task_order)
    report = analyze_model_lifetimes(ordered_plan)
    pool, external, excluded, _alignments, device, base_alignment = _classify(
        ordered_plan, report, pool_storage_ids
    )
    storage_meta = {storage["storage_id"]: storage for storage in ordered_plan["storages"]}

    ordered_candidates = sorted(
        pool, key=lambda storage: (storage.lifetime_start, -storage.size_bytes, storage.storage_id)
    )
    blocks: list[dict[str, Any]] = []
    raw_assignments: list[ArenaAssignment] = []
    arena_size = 0
    for storage in ordered_candidates:
        alignment = _validate_alignment(
            storage_meta[storage.storage_id]["alignment"], storage.storage_id
        )
        size = storage.size_bytes or 0
        aligned_size = _align_up(size, alignment)
        offset = 0
        while True:
            conflicts = [
                block
                for block in blocks
                if not (
                    block["lifetime_end"] < storage.lifetime_start
                    or block["lifetime_start"] > storage.lifetime_end
                )
                and not (
                    block["offset"] + block["aligned_size"] <= offset
                    or offset + aligned_size <= block["offset"]
                )
            ]
            if not conflicts:
                break
            offset = _align_up(
                max(block["offset"] + block["aligned_size"] for block in conflicts),
                alignment,
            )
        blocks.append(
            {
                "storage_id": storage.storage_id,
                "offset": offset,
                "aligned_size": aligned_size,
                "lifetime_start": storage.lifetime_start,
                "lifetime_end": storage.lifetime_end,
            }
        )
        arena_size = max(arena_size, offset + aligned_size)
        raw_assignments.append(
            ArenaAssignment(
                storage_id=storage.storage_id,
                offset_bytes=offset,
                size_bytes=size,
                alignment=alignment,
                aligned_size_bytes=aligned_size,
                device=storage.device,
                alias_members=tuple(storage.alias_members),
                source=storage.source,
            )
        )
    arena_size = _align_up(arena_size, base_alignment)

    offsets = {assignment.storage_id: assignment.offset_bytes for assignment in raw_assignments}
    provenance = _reuse_provenance(raw_assignments, offsets)
    assignments = tuple(
        ArenaAssignment(
            storage_id=assignment.storage_id,
            offset_bytes=assignment.offset_bytes,
            size_bytes=assignment.size_bytes,
            alignment=assignment.alignment,
            aligned_size_bytes=assignment.aligned_size_bytes,
            device=assignment.device,
            alias_members=assignment.alias_members,
            source=assignment.source,
            reuses_address_from=provenance.get(assignment.storage_id, ()),
        )
        for assignment in raw_assignments
    )

    chains: dict[int, list[str]] = {}
    for assignment in assignments:
        chains.setdefault(assignment.offset_bytes, []).append(assignment.storage_id)

    unresolved = _unresolved_offsets(ordered_plan, ordered_candidates)
    blockers = list(RUNTIME_BLOCKERS_BASE)
    if order_status == "linearized_candidate":
        blockers.append(CANDIDATE_ORDER_BLOCKER)
    if unresolved:
        blockers.append("tensor_storage_offsets_unresolved")

    no_reuse = 0
    for storage in ordered_candidates:
        no_reuse = _align_up(no_reuse, storage.alignment) + (storage.size_bytes or 0)
    live_peak = max(
        (
            sum(
                storage.size_bytes or 0
                for storage in ordered_candidates
                if storage.lifetime_start <= event.event_index <= storage.lifetime_end
            )
            for event in report.events
        ),
        default=0,
    )

    arena = ArenaPlan(
        report_version=ARENA_PLAN_VERSION,
        plan_id=plan.get("plan_id", ""),
        model_id=plan.get("model_id", ""),
        input_sha256=_fingerprint(plan),
        device=device,
        arena_size_bytes=arena_size,
        base_alignment=base_alignment,
        assignments=assignments,
        selected_storage_ids=tuple(sorted(assignment.storage_id for assignment in assignments)),
        external_storage_ids=tuple(sorted(external)),
        excluded_storage_ids=tuple(sorted(excluded)),
        order_status=order_status,
        order_origin=order_origin,
        task_order=tuple(task_order),
        executor_contract=(
            EXECUTION_CONTRACT_CANDIDATE
            if order_status == "linearized_candidate"
            else EXECUTION_CONTRACT_TOTAL
        ),
        reuse_chains=tuple(
            (offset, tuple(sorted(ids))) for offset, ids in sorted(chains.items())
        ),
        unresolved_tensor_storage_offsets=tuple(unresolved),
        runtime_binding_blockers=tuple(sorted(blockers)),
        status=OFFLINE_STATUS,
        runtime_applied=False,
        default_runtime_policy=RUNTIME_POLICY_DISABLED,
        no_reuse_arena_bytes=no_reuse,
        eligible_live_storage_peak_bytes=live_peak,
        static_arena_capacity_reduction_bytes=no_reuse - arena_size,
        no_reuse_reference=NO_REUSE_REFERENCE,
    )
    return arena, report


# ---------------------------------------------------------------------------
# public API


def analyze_safety(
    plan: Mapping[str, Any],
    report: LifetimeReport | None = None,
    allow_linearized_candidate: bool = False,
    task_order: Sequence[str] | None = None,
    pool_storage_ids: set[str] | None = None,
) -> SafetyAnalysis:
    base_report = report or analyze_model_lifetimes(plan)
    order_status, order_origin, order = _select_schedule(
        base_report, allow_linearized_candidate, task_order
    )
    arena, ordered_report = _build_arena_plan(
        plan, order, order_status, order_origin, pool_storage_ids
    )
    pool = [
        storage
        for storage in ordered_report.storages
        if storage.storage_id in {assignment.storage_id for assignment in arena.assignments}
    ]
    return SafetyAnalysis(
        pool_candidates=tuple(pool),
        external_storage_ids=arena.external_storage_ids,
        excluded_storage_ids=arena.excluded_storage_ids,
        unresolved_tensor_storage_offsets=arena.unresolved_tensor_storage_offsets,
        runtime_binding_blockers=arena.runtime_binding_blockers,
        order_status=arena.order_status,
        order_origin=arena.order_origin,
        task_order=arena.task_order,
        executor_contract=arena.executor_contract,
        base_alignment=arena.base_alignment,
        device=arena.device,
    )


def plan_arena(
    plan: Mapping[str, Any],
    report: LifetimeReport | None = None,
    *,
    allow_linearized_candidate: bool = False,
    task_order: Sequence[str] | None = None,
    pool_storage_ids: set[str] | None = None,
) -> ArenaPlan:
    """Deterministic first-fit placement with fail-closed schedule rules.

    ``pool_storage_ids`` restricts the arena to an explicit subset of proven-safe
    internal storages (partial integration); everything else is excluded with
    reason ``not_selected_for_pool``.
    """

    arena, _ = plan_arena_with_report(
        plan,
        report,
        allow_linearized_candidate=allow_linearized_candidate,
        task_order=task_order,
        pool_storage_ids=pool_storage_ids,
    )
    return arena


def plan_arena_with_report(
    plan: Mapping[str, Any],
    report: LifetimeReport | None = None,
    *,
    allow_linearized_candidate: bool = False,
    task_order: Sequence[str] | None = None,
    pool_storage_ids: set[str] | None = None,
) -> tuple[ArenaPlan, LifetimeReport]:
    """Like :func:`plan_arena`, but also returns the imposed-order lifetime report."""

    base_report = report or analyze_model_lifetimes(plan)
    order_status, order_origin, order = _select_schedule(
        base_report, allow_linearized_candidate, task_order
    )
    return _build_arena_plan(plan, order, order_status, order_origin, pool_storage_ids)


def _reconstruct(arena: ArenaPlan, plan: Mapping[str, Any]):
    return _build_arena_plan(
        plan,
        list(arena.task_order),
        arena.order_status,
        arena.order_origin,
        set(arena.selected_storage_ids),
    )


def _safe_int(value: Any) -> bool:
    return isinstance(value, int) and not isinstance(value, bool)


def verify_safe(arena: ArenaPlan, plan: Mapping[str, Any]) -> list[str]:
    """Check any safe layout under the recorded schedule contract.

    Recomputed lifetimes, coverage, types, sizes, alignment, bounds, conflicts,
    contract, provenance and layout-independent metrics are required.  The
    first-fit capacity is *not* treated as a minimum for all safe layouts.
    """

    problems: list[str] = []
    if not isinstance(arena, ArenaPlan):
        return ["invalid_arena_plan_object"]
    if arena.report_version != ARENA_PLAN_VERSION:
        problems.append("report_version_mismatch")
    if arena.status != OFFLINE_STATUS:
        problems.append("status_must_remain_offline_candidate_only")
    if arena.default_runtime_policy != RUNTIME_POLICY_DISABLED:
        problems.append("runtime_policy_must_remain_disabled")
    if arena.runtime_applied is not False:
        problems.append("runtime_applied_must_be_false")
    if arena.plan_id != plan.get("plan_id") or arena.model_id != plan.get("model_id"):
        problems.append("report_identity_mismatch")
    if arena.input_sha256 != _fingerprint(plan):
        problems.append("input_fingerprint_mismatch")
    if not isinstance(arena.assignments, (tuple, list)):
        problems.append("invalid_assignments_structure")
        return sorted(set(problems))

    # Schedule-origin checks come before reconstruction so that a tampered
    # order is named explicitly even when it cannot be replayed.
    if arena.order_origin == ORIGIN_DEPENDENCY:
        base = analyze_model_lifetimes(plan)
        if "incomplete_happens_before" in base.diagnostics:
            problems.append("schedule_origin_mismatch")
        if list(base.task_order) != list(arena.task_order):
            problems.append("task_order differs from the re-analyzed order")
    elif arena.order_origin == ORIGIN_G1_CANDIDATE:
        base = analyze_model_lifetimes(plan)
        if list(base.task_order) != list(arena.task_order):
            problems.append("schedule_origin_mismatch")
    elif arena.order_origin != ORIGIN_CALLER_CANDIDATE:
        problems.append("schedule_origin_mismatch")

    try:
        expected, report = _reconstruct(arena, plan)
    except PlannerError as error:
        problems.append(f"reconstruction_rejected: {error}")
        return sorted(set(problems))
    except Exception as error:  # pragma: no cover - illegal field guard
        problems.append(f"reconstruction_failed: {type(error).__name__}: {error}")
        return sorted(set(problems))

    if list(arena.task_order) != list(expected.task_order):
        problems.append("task_order differs from the re-analyzed order")
    if arena.order_status != expected.order_status:
        problems.append("order_status differs from the re-analyzed status")
    if arena.executor_contract != expected.executor_contract:
        problems.append("execution_contract_mismatch")
    if arena.device != expected.device:
        problems.append("device_mismatch")
    if arena.base_alignment != expected.base_alignment:
        problems.append("base_alignment_mismatch")
    if arena.external_storage_ids != expected.external_storage_ids:
        problems.append("external_storage_mismatch")
    if tuple(arena.selected_storage_ids or ()) != expected.selected_storage_ids:
        problems.append("selected_storage_mismatch")
    if arena.excluded_storage_ids != expected.excluded_storage_ids:
        problems.append("excluded_storage_provenance_mismatch")
    if arena.unresolved_tensor_storage_offsets != expected.unresolved_tensor_storage_offsets:
        problems.append("unresolved_offsets_mismatch")
    if arena.runtime_binding_blockers != expected.runtime_binding_blockers:
        problems.append("runtime_binding_blockers_mismatch")
    if arena.no_reuse_reference != expected.no_reuse_reference:
        problems.append("no_reuse_reference_mismatch")

    expected_by_id = {assignment.storage_id: assignment for assignment in expected.assignments}
    expected_ids = set(expected_by_id)
    actual_ids = [
        assignment.storage_id
        for assignment in arena.assignments
        if isinstance(assignment, ArenaAssignment)
    ]
    if len(actual_ids) != len(arena.assignments):
        problems.append("invalid_assignment_record")
    if len(actual_ids) != len(set(actual_ids)):
        problems.append("duplicate assignments")
    missing = sorted(expected_ids - set(actual_ids))
    extra = sorted(set(actual_ids) - expected_ids)
    if missing:
        problems.append(f"missing assignments: {missing}")
    if extra:
        problems.append(f"unexpected assignments: {extra}")

    lifetimes = {storage.storage_id: storage for storage in report.storages}
    actual_offsets: dict[str, int] = {}
    for assignment in arena.assignments:
        if not isinstance(assignment, ArenaAssignment):
            continue
        storage_id = assignment.storage_id
        if not isinstance(storage_id, str) or storage_id not in expected_by_id:
            continue
        if not _safe_int(assignment.offset_bytes):
            problems.append(f"{storage_id}: invalid_offset")
            continue
        if not _safe_int(assignment.size_bytes):
            problems.append(f"{storage_id}: invalid_size")
            continue
        if not _safe_int(assignment.alignment) or assignment.alignment <= 0:
            problems.append(f"{storage_id}: invalid_alignment")
            continue
        if assignment.offset_bytes < 0:
            problems.append(f"{storage_id}: negative offset")
        if assignment.offset_bytes % assignment.alignment != 0:
            problems.append(f"{storage_id}: offset not aligned")
        actual_offsets[storage_id] = assignment.offset_bytes

        expected_assignment = expected_by_id[storage_id]
        if assignment.size_bytes != expected_assignment.size_bytes:
            problems.append(
                f"{storage_id}: size {assignment.size_bytes} != re-analyzed "
                f"{expected_assignment.size_bytes}"
            )
        if assignment.alignment != expected_assignment.alignment:
            problems.append(
                f"{storage_id}: alignment {assignment.alignment} != plan "
                f"{expected_assignment.alignment}"
            )
        if assignment.aligned_size_bytes != expected_assignment.aligned_size_bytes:
            problems.append(f"{storage_id}: aligned_size_mismatch")
        if list(assignment.alias_members or ()) != list(expected_assignment.alias_members):
            problems.append(f"{storage_id}: alias_members_mismatch")
        if assignment.source != expected_assignment.source:
            problems.append(f"{storage_id}: source_mismatch")
        if assignment.device != expected_assignment.device:
            problems.append(f"{storage_id}: device_mismatch")

    if not _safe_int(arena.arena_size_bytes):
        problems.append("invalid_arena_size")
    else:
        high_water = max(
            (
                assignment.offset_bytes + assignment.size_bytes
                for assignment in arena.assignments
                if isinstance(assignment, ArenaAssignment)
                and _safe_int(assignment.offset_bytes)
                and _safe_int(assignment.size_bytes)
            ),
            default=0,
        )
        if arena.arena_size_bytes < high_water:
            problems.append("arena_bounds_violation")
        if arena.arena_size_bytes < expected.eligible_live_storage_peak_bytes:
            problems.append("arena_smaller_than_live_peak")

    if not _safe_int(arena.no_reuse_arena_bytes) or (
        arena.no_reuse_arena_bytes != expected.no_reuse_arena_bytes
    ):
        problems.append("no_reuse_arena_mismatch")
    if not _safe_int(arena.eligible_live_storage_peak_bytes) or (
        arena.eligible_live_storage_peak_bytes != expected.eligible_live_storage_peak_bytes
    ):
        problems.append("eligible_live_storage_peak_mismatch")
    reduction_ok = (
        _safe_int(arena.static_arena_capacity_reduction_bytes)
        and _safe_int(arena.no_reuse_arena_bytes)
        and _safe_int(arena.arena_size_bytes)
        and arena.static_arena_capacity_reduction_bytes
        == arena.no_reuse_arena_bytes - arena.arena_size_bytes
    )
    if not reduction_ok:
        problems.append("static_arena_capacity_reduction_mismatch")

    provenance = _reuse_provenance(expected.assignments, actual_offsets)
    for assignment in arena.assignments:
        if not isinstance(assignment, ArenaAssignment):
            continue
        recorded = tuple(assignment.reuses_address_from or ())
        if recorded != provenance.get(assignment.storage_id, ()):
            problems.append(f"{assignment.storage_id}: reuse_provenance_mismatch")

    valid = [
        assignment
        for assignment in arena.assignments
        if isinstance(assignment, ArenaAssignment)
        and assignment.storage_id in lifetimes
        and _safe_int(assignment.offset_bytes)
        and _safe_int(assignment.size_bytes)
    ]
    for index, left in enumerate(valid):
        for right in valid[index + 1 :]:
            left_storage = lifetimes[left.storage_id]
            right_storage = lifetimes[right.storage_id]
            lifetimes_overlap = not (
                left_storage.lifetime_end < right_storage.lifetime_start
                or right_storage.lifetime_end < left_storage.lifetime_start
            )
            bytes_overlap = not (
                left.offset_bytes + left.size_bytes <= right.offset_bytes
                or right.offset_bytes + right.size_bytes <= left.offset_bytes
            )
            if lifetimes_overlap and bytes_overlap:
                problems.append(
                    f"live_address_overlap: {left.storage_id} and {right.storage_id} "
                    "overlap in bytes while their re-analyzed lifetimes overlap"
                )

    expected_chains = {}
    for assignment in arena.assignments:
        if isinstance(assignment, ArenaAssignment) and assignment.storage_id in actual_offsets:
            expected_chains.setdefault(actual_offsets[assignment.storage_id], []).append(
                assignment.storage_id
            )
    recomputed_chains = tuple(
        (offset, tuple(sorted(ids))) for offset, ids in sorted(expected_chains.items())
    )
    chains_structure_ok = isinstance(arena.reuse_chains, (tuple, list)) and all(
        isinstance(chain, (tuple, list)) and len(chain) == 2 for chain in arena.reuse_chains
    )
    if not chains_structure_ok:
        problems.append("invalid_reuse_chains")
    elif tuple(sorted(tuple(chain) for chain in arena.reuse_chains)) != tuple(
        sorted(recomputed_chains)
    ):
        problems.append("reuse_chains_mismatch")

    return sorted(set(problems))


def verify_matches(arena: ArenaPlan, plan: Mapping[str, Any]) -> list[str]:
    """``verify_safe`` plus exact agreement with the deterministic planner."""

    problems = verify_safe(arena, plan)
    if not isinstance(arena, ArenaPlan):
        return problems
    try:
        expected, _ = _reconstruct(arena, plan)
    except Exception as error:  # pragma: no cover - already reported by verify_safe
        problems.append(f"reconstruction_failed: {type(error).__name__}: {error}")
        return sorted(set(problems))
    if _safe_int(arena.arena_size_bytes) and arena.arena_size_bytes < expected.arena_size_bytes:
        problems.append(
            f"arena size {arena.arena_size_bytes} smaller than re-planned "
            f"{expected.arena_size_bytes}"
        )
    if arena.to_dict() != expected.to_dict():
        problems.append("does_not_match_deterministic_planner")
    return sorted(set(problems))


def verify_arena_plan(arena: ArenaPlan, plan: Mapping[str, Any]) -> list[str]:
    """Backward-compatible alias for :func:`verify_matches`."""

    return verify_matches(arena, plan)


def chain_matches_order(
    arena: ArenaPlan, chain_task_ids: Sequence[str]
) -> list[str]:
    """Check that the executor chain respects the planned task order."""

    problems: list[str] = []
    index = {task_id: position for position, task_id in enumerate(arena.task_order)}
    previous = -1
    for task_id in chain_task_ids:
        if task_id not in index:
            problems.append(f"{task_id}: not part of the planned task order")
            continue
        if index[task_id] <= previous:
            problems.append(f"{task_id}: chain order violates the planned task order")
        previous = index[task_id]
    return problems


__all__ = [
    "ARENA_PLAN_VERSION",
    "ArenaAssignment",
    "ArenaPlan",
    "PlannerError",
    "SafetyAnalysis",
    "analyze_safety",
    "chain_matches_order",
    "plan_arena",
    "plan_arena_with_report",
    "verify_arena_plan",
    "verify_matches",
    "verify_safe",
]
