"""Deterministic model-level tensor and storage lifetime analysis for F08-G01.

This module intentionally stops before buffer placement or reuse.  It turns a
validated model plan into a traceable event order, tensor lifetimes, and the
union lifetime of every aliased storage object.
"""

from __future__ import annotations

from dataclasses import asdict, dataclass
import heapq
from typing import Any, Mapping

from .schema import ValidationIssue, validate_model_plan


REPORT_VERSION = "f08-g01-liveness-report/0.1"


class ModelPlanAnalysisError(ValueError):
    """Raised when a model plan cannot be analysed safely."""

    def __init__(self, code: str, message: str) -> None:
        super().__init__(f"[{code}] {message}")
        self.code = code
        self.message = message


class InvalidModelPlanError(ModelPlanAnalysisError):
    """Raised when the model plan fails the input contract."""

    def __init__(self, issues: list[ValidationIssue]) -> None:
        self.issues = tuple(issues)
        details = "; ".join(issue.format() for issue in issues)
        super().__init__("invalid_model_plan", details)


@dataclass(frozen=True)
class EventRecord:
    event_index: int
    event_id: str
    kind: str
    task_id: str | None


@dataclass(frozen=True)
class TensorLifetime:
    tensor_id: str
    storage_id: str
    source_value: str
    producer_task: str | None
    consumer_tasks: tuple[str, ...]
    definition_event: str
    last_use_events: tuple[str, ...]
    lifetime_start: int
    lifetime_end: int
    is_graph_output: bool
    is_persistent: bool
    is_mutated: bool
    diagnostics: tuple[str, ...]


@dataclass(frozen=True)
class StorageLifetime:
    storage_id: str
    alias_members: tuple[str, ...]
    allocation_kind: str
    source: str
    size_bytes: int | None
    size_expression: str | None
    size_upper_bound: int | None
    alignment: int
    device: str
    lifetime_start: int
    lifetime_end: int
    is_persistent: bool
    conservative_reasons: tuple[str, ...]


@dataclass(frozen=True)
class MemoryContribution:
    storage_id: str
    accounted_bytes: int | None
    size_kind: str
    allocation_kind: str
    alias_members: tuple[str, ...]
    source: str


@dataclass(frozen=True)
class EventMemoryRecord:
    event_index: int
    event_id: str
    task_id: str | None
    live_storage_ids: tuple[str, ...]
    accounted_bytes: int
    unknown_size_storage_ids: tuple[str, ...]
    contributions: tuple[MemoryContribution, ...]


@dataclass(frozen=True)
class PeakSummary:
    peak_kind: str
    accounted_peak_bytes: int
    peak_event_ids: tuple[str, ...]
    unknown_size_storage_ids: tuple[str, ...]


@dataclass(frozen=True)
class LifetimeReport:
    report_version: str
    plan_id: str
    schema_version: str
    model_id: str
    event_semantics: str
    events: tuple[EventRecord, ...]
    task_order: tuple[str, ...]
    tensors: tuple[TensorLifetime, ...]
    storages: tuple[StorageLifetime, ...]
    memory_events: tuple[EventMemoryRecord, ...]
    peak_summary: PeakSummary
    diagnostics: tuple[str, ...]

    def to_dict(self) -> dict[str, Any]:
        """Return a JSON-serialisable report while preserving stable order."""

        return asdict(self)


def _stable_task_order(document: Mapping[str, Any]) -> tuple[tuple[str, ...], bool]:
    tasks = {task["task_id"]: task for task in document["tasks"]}
    successors: dict[str, set[str]] = {task_id: set() for task_id in tasks}
    indegree: dict[str, int] = {task_id: 0 for task_id in tasks}

    def add_edge(before: str, after: str) -> None:
        if after not in successors[before]:
            successors[before].add(after)
            indegree[after] += 1

    for task_id, task in tasks.items():
        for predecessor in task["predecessors"]:
            add_edge(predecessor, task_id)

    for region in document.get("regions", []):
        for before, after in region.get("happens_before", []):
            add_edge(before, after)

    ready = [task_id for task_id, degree in indegree.items() if degree == 0]
    heapq.heapify(ready)
    order: list[str] = []
    has_incomparable_tasks = False
    while ready:
        has_incomparable_tasks = has_incomparable_tasks or len(ready) > 1
        task_id = heapq.heappop(ready)
        order.append(task_id)
        for successor in sorted(successors[task_id]):
            indegree[successor] -= 1
            if indegree[successor] == 0:
                heapq.heappush(ready, successor)

    if len(order) != len(tasks):
        remaining = sorted(task_id for task_id, degree in indegree.items() if degree > 0)
        raise ModelPlanAnalysisError(
            "unsupported_dependency_cycle",
            "v0 lifetime ordering cannot linearise the dependency cycle involving "
            + ", ".join(remaining),
        )
    return tuple(order), has_incomparable_tasks


def _event_id_for_task(task_id: str) -> str:
    return f"event:task:{task_id}:complete"


def _loop_carried_coverage(
    document: Mapping[str, Any], task_event_index: Mapping[str, int]
) -> tuple[dict[str, int], bool]:
    """Return loop-carried tensor coverage and whether any loop region exists.

    Loop fixed-point analysis is not implemented yet.  A declared loop-carried
    tensor must stay alive across the complete loop region, so its lifetime end
    is conservatively extended to the last completion event of every loop region
    that declares it.
    """

    coverage: dict[str, int] = {}
    has_loop_region = False
    for region in document.get("regions") or []:
        if not isinstance(region, Mapping) or region.get("kind") != "loop":
            continue
        has_loop_region = True
        members = region.get("members")
        if not isinstance(members, list):
            continue
        member_events = [task_event_index[member] for member in members if member in task_event_index]
        if not member_events:
            continue
        region_end = max(member_events)
        carried = region.get("loop_carried_tensors")
        if isinstance(carried, list):
            for tensor_id in carried:
                if isinstance(tensor_id, str):
                    coverage[tensor_id] = max(coverage.get(tensor_id, 0), region_end)
    return coverage, has_loop_region


def _control_flow_diagnostics(document: Mapping[str, Any]) -> set[str]:
    """Return report-level diagnostics for declared branch regions.

    An exclusive branch group is a recorded proof that its members cannot run
    concurrently.  The current implementation keeps the numeric peak
    conservative even when such a proof is present, so the proof is reported
    instead of silently ignored.
    """

    diagnostics: set[str] = set()
    for region in document.get("regions") or []:
        if not isinstance(region, Mapping) or region.get("kind") != "branch":
            continue
        members = region.get("members")
        if not isinstance(members, list) or not members:
            continue
        groups = region.get("exclusive_groups")
        covered: set[str] = set()
        if isinstance(groups, list):
            for group in groups:
                if isinstance(group, list):
                    covered.update(member for member in group if isinstance(member, str))
        if isinstance(groups, list) and groups and all(member in covered for member in members):
            diagnostics.add("exclusive_branch_groups_not_used_in_peak")
        else:
            diagnostics.add("branch_exclusivity_not_proven")
    return diagnostics


def _storage_size(storage: StorageLifetime) -> tuple[int | None, str]:
    if storage.size_bytes is not None:
        return storage.size_bytes, "static"
    if storage.size_upper_bound is not None:
        return storage.size_upper_bound, "upper_bound"
    return None, "unknown"


def _scan_memory_events(
    events: list[EventRecord],
    storages: list[StorageLifetime],
    has_incomparable_tasks: bool,
) -> tuple[tuple[EventMemoryRecord, ...], PeakSummary]:
    memory_events: list[EventMemoryRecord] = []
    all_unknown: set[str] = set()
    uses_upper_bound = False

    for event in events:
        live = [
            storage
            for storage in storages
            if storage.lifetime_start <= event.event_index <= storage.lifetime_end
        ]
        contributions: list[MemoryContribution] = []
        accounted_bytes = 0
        unknown: list[str] = []
        for storage in live:
            size, size_kind = _storage_size(storage)
            if size is None:
                unknown.append(storage.storage_id)
                all_unknown.add(storage.storage_id)
            else:
                accounted_bytes += size
            uses_upper_bound = uses_upper_bound or size_kind == "upper_bound"
            contributions.append(
                MemoryContribution(
                    storage_id=storage.storage_id,
                    accounted_bytes=size,
                    size_kind=size_kind,
                    allocation_kind=storage.allocation_kind,
                    alias_members=storage.alias_members,
                    source=storage.source,
                )
            )

        memory_events.append(
            EventMemoryRecord(
                event_index=event.event_index,
                event_id=event.event_id,
                task_id=event.task_id,
                live_storage_ids=tuple(storage.storage_id for storage in live),
                accounted_bytes=accounted_bytes,
                unknown_size_storage_ids=tuple(unknown),
                contributions=tuple(contributions),
            )
        )

    accounted_peak = max(record.accounted_bytes for record in memory_events)
    peak_event_ids = tuple(
        record.event_id for record in memory_events if record.accounted_bytes == accounted_peak
    )
    if all_unknown:
        peak_kind = "known_objects_lower_bound"
    elif uses_upper_bound:
        peak_kind = "conservative_upper_bound"
    elif has_incomparable_tasks:
        peak_kind = "linearized_schedule_estimate"
    else:
        peak_kind = "exact_for_linearized_schedule"

    return tuple(memory_events), PeakSummary(
        peak_kind=peak_kind,
        accounted_peak_bytes=accounted_peak,
        peak_event_ids=peak_event_ids,
        unknown_size_storage_ids=tuple(sorted(all_unknown)),
    )


def analyze_model_lifetimes(document: Mapping[str, Any]) -> LifetimeReport:
    """Analyse tensor and aliased-storage lifetimes in a validated model plan.

    Lifetimes are closed intervals over stable completion events.  Index 0 is
    plan start, task completions are 1..N, and N+1 is plan end.  Keeping both
    task inputs and newly produced outputs live at a completion boundary is a
    deliberate conservative choice for later peak accounting.
    """

    issues = validate_model_plan(document)
    if issues:
        raise InvalidModelPlanError(issues)

    task_order, has_incomparable_tasks = _stable_task_order(document)
    task_event_index = {task_id: index + 1 for index, task_id in enumerate(task_order)}
    plan_end = len(task_order) + 1
    loop_coverage, has_loop_region = _loop_carried_coverage(document, task_event_index)

    events: list[EventRecord] = [EventRecord(0, "event:plan-start", "plan_start", None)]
    events.extend(
        EventRecord(index, _event_id_for_task(task_id), "task_complete", task_id)
        for index, task_id in enumerate(task_order, start=1)
    )
    events.append(EventRecord(plan_end, "event:plan-end", "plan_end", None))

    tensor_lifetimes: list[TensorLifetime] = []
    for tensor in sorted(document["tensors"], key=lambda item: item["tensor_id"]):
        producer = tensor["producer"]
        start = 0 if producer is None else task_event_index[producer]
        consumer_tasks = tuple(sorted(tensor["consumers"], key=task_event_index.__getitem__))
        last_use_events = tuple(_event_id_for_task(task_id) for task_id in consumer_tasks)

        diagnostics: list[str] = []
        if tensor["is_persistent"] or tensor["is_graph_output"]:
            end = plan_end
        elif consumer_tasks:
            end = max(task_event_index[task_id] for task_id in consumer_tasks)
        else:
            end = start
            diagnostics.append("unused_tensor")

        loop_end = loop_coverage.get(tensor["tensor_id"])
        if loop_end is not None and end < loop_end:
            end = loop_end
            diagnostics.append("loop_carried_lifetime_extended_to_region")

        if tensor["storage_offset_bytes"] is None:
            diagnostics.append("unknown_storage_offset")

        tensor_lifetimes.append(
            TensorLifetime(
                tensor_id=tensor["tensor_id"],
                storage_id=tensor["storage_id"],
                source_value=tensor["source_value"],
                producer_task=producer,
                consumer_tasks=consumer_tasks,
                definition_event=("event:plan-start" if producer is None else _event_id_for_task(producer)),
                last_use_events=last_use_events,
                lifetime_start=start,
                lifetime_end=end,
                is_graph_output=tensor["is_graph_output"],
                is_persistent=tensor["is_persistent"],
                is_mutated=tensor["is_mutated"],
                diagnostics=tuple(sorted(diagnostics)),
            )
        )

    tensors_by_storage: dict[str, list[TensorLifetime]] = {
        storage["storage_id"]: [] for storage in document["storages"]
    }
    tensor_source = {tensor["tensor_id"]: tensor for tensor in document["tensors"]}
    for lifetime in tensor_lifetimes:
        tensors_by_storage[lifetime.storage_id].append(lifetime)

    storage_lifetimes: list[StorageLifetime] = []
    report_diagnostics: set[str] = set()
    if has_incomparable_tasks:
        report_diagnostics.add("incomplete_happens_before")
    if has_loop_region:
        report_diagnostics.add("loop_region_fixed_point_not_analyzed")
    report_diagnostics.update(_control_flow_diagnostics(document))
    for storage in sorted(document["storages"], key=lambda item: item["storage_id"]):
        members = sorted(tensors_by_storage[storage["storage_id"]], key=lambda item: item.tensor_id)
        if not members:
            raise ModelPlanAnalysisError(
                "unreferenced_storage",
                f"storage '{storage['storage_id']}' has no tensor members",
            )
        reasons: set[str] = set()
        if storage.get("size_bytes") is None and storage.get("size_upper_bound") is None:
            reasons.add("dynamic_size_without_numeric_upper_bound")
            report_diagnostics.add("numeric_peak_will_be_incomplete")
        if any(member.is_mutated for member in members):
            reasons.add("mutated_alias_group")
        if any(member.tensor_id in loop_coverage for member in members):
            reasons.add("loop_carried_region_coverage")
        if any(tensor_source[member.tensor_id]["storage_offset_bytes"] is None for member in members):
            reasons.add("unknown_storage_offset")

        storage_lifetimes.append(
            StorageLifetime(
                storage_id=storage["storage_id"],
                alias_members=tuple(member.tensor_id for member in members),
                allocation_kind=storage["allocation_kind"],
                source=storage["source"],
                size_bytes=storage.get("size_bytes"),
                size_expression=storage.get("size_expression"),
                size_upper_bound=storage.get("size_upper_bound"),
                alignment=storage["alignment"],
                device=storage["device"],
                lifetime_start=min(member.lifetime_start for member in members),
                lifetime_end=max(member.lifetime_end for member in members),
                is_persistent=any(member.is_persistent for member in members),
                conservative_reasons=tuple(sorted(reasons)),
            )
        )

    memory_events, peak_summary = _scan_memory_events(
        events, storage_lifetimes, has_incomparable_tasks
    )
    return LifetimeReport(
        report_version=REPORT_VERSION,
        plan_id=document["plan_id"],
        schema_version=document["schema_version"],
        model_id=document["model_id"],
        event_semantics="closed intervals: plan start=0, task completions=1..N, plan end=N+1",
        events=tuple(events),
        task_order=task_order,
        tensors=tuple(tensor_lifetimes),
        storages=tuple(storage_lifetimes),
        memory_events=memory_events,
        peak_summary=peak_summary,
        diagnostics=tuple(sorted(report_diagnostics)),
    )


__all__ = [
    "InvalidModelPlanError",
    "LifetimeReport",
    "MemoryContribution",
    "ModelPlanAnalysisError",
    "PeakSummary",
    "REPORT_VERSION",
    "StorageLifetime",
    "TensorLifetime",
    "analyze_model_lifetimes",
]
