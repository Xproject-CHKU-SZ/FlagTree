from __future__ import annotations

import copy
import dataclasses
import importlib.util
import json
from pathlib import Path
import sys
import types
import unittest


REPO_ROOT = Path(__file__).resolve().parents[4]
PACKAGE_DIR = REPO_ROOT / "python" / "flagtree" / "memory_planner"
EXAMPLE_DIR = REPO_ROOT / "docs" / "project-plan" / "examples" / "f08-g02"


def _load_module(module_name: str, filename: str):
    spec = importlib.util.spec_from_file_location(module_name, PACKAGE_DIR / filename)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load {filename}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[module_name] = module
    spec.loader.exec_module(module)
    return module


def _load_package():
    package_name = "flagtree_memory_planner_offset_test"
    package = types.ModuleType(package_name)
    package.__path__ = [str(PACKAGE_DIR)]
    sys.modules[package_name] = package
    for name in ("schema", "liveness", "offset_planner"):
        _load_module(f"{package_name}.{name}", f"{name}.py")
    return sys.modules[f"{package_name}.liveness"], sys.modules[f"{package_name}.offset_planner"]


liveness, offset_planner = _load_package()


def _example(name: str):
    with (EXAMPLE_DIR / name).open("r", encoding="utf-8") as handle:
        return json.load(handle)


def _tensor(tensor_id, storage_id, producer, consumers, shape=(1024,), **overrides):
    record = {
        "tensor_id": tensor_id,
        "storage_id": storage_id,
        "producer": producer,
        "consumers": consumers,
        "dtype": "float32",
        "shape": list(shape),
        "storage_offset_bytes": 0,
        "source_value": tensor_id,
        "is_graph_output": False,
        "is_persistent": False,
        "is_mutated": False,
    }
    record.update(overrides)
    return record


def _chain_plan(sizes=None, alignments=None):
    """t1 -> y1 -> t2 -> y2, with x external; y2 unused."""

    sizes = sizes or {"storage.y1": 4096, "storage.y2": 4096}
    alignments = alignments or {}
    storages = [
        {
            "storage_id": "storage.x",
            "size_bytes": 4096,
            "alignment": 64,
            "device": "ppu:0",
            "allocation_kind": "input",
            "source": "caller input",
        },
    ]
    for storage_id, size in sizes.items():
        record = {
            "storage_id": storage_id,
            "alignment": alignments.get(storage_id, 64),
            "device": "ppu:0",
            "allocation_kind": "temporary",
            "source": "pooled temporary",
        }
        if size is None:
            record["size_expression"] = "B*4"
        else:
            record["size_bytes"] = size
        storages.append(record)
    tensors = [
        _tensor("tensor.x", "storage.x", None, ["task.t1"]),
        _tensor("tensor.y1", "storage.y1", "task.t1", ["task.t2"]),
        _tensor("tensor.y2", "storage.y2", "task.t2", []),
    ]
    tasks = [
        {
            "task_id": "task.t1",
            "kernel_id": "aten.mul.Scalar_out",
            "predecessors": [],
            "inputs": ["tensor.x"],
            "outputs": ["tensor.y1"],
            "source_node": "synthetic.t1",
            "region_id": None,
            "device": "ppu:0",
            "stream": "stream:0",
        },
        {
            "task_id": "task.t2",
            "kernel_id": "aten.mul.Scalar_out",
            "predecessors": ["task.t1"],
            "inputs": ["tensor.y1"],
            "outputs": ["tensor.y2"],
            "source_node": "synthetic.t2",
            "region_id": None,
            "device": "ppu:0",
            "stream": "stream:0",
        },
    ]
    return {
        "plan_id": "test.chain",
        "schema_version": "f08-g01-model-plan/0.1",
        "model_id": "test.chain",
        "tasks": tasks,
        "tensors": tensors,
        "storages": storages,
        "regions": [],
        "shape_bindings": {},
    }


def _incomplete_plan():
    """s1/s2 are incomparable producers; j consumes both."""

    plan = _chain_plan(
        sizes={"storage.a": 4096, "storage.b": 4096, "storage.c": 4096}
    )
    plan["plan_id"] = "test.incomplete"
    plan["tensors"] = [
        _tensor("tensor.x", "storage.x", None, ["task.s1", "task.s2"]),
        _tensor("tensor.a", "storage.a", "task.s1", ["task.j"]),
        _tensor("tensor.b", "storage.b", "task.s2", ["task.j"]),
        _tensor("tensor.c", "storage.c", "task.j", []),
    ]
    plan["storages"] = [
        {
            "storage_id": "storage.x",
            "size_bytes": 4096,
            "alignment": 64,
            "device": "ppu:0",
            "allocation_kind": "input",
            "source": "caller input",
        },
        *[
            {
                "storage_id": storage_id,
                "size_bytes": 4096,
                "alignment": 64,
                "device": "ppu:0",
                "allocation_kind": "temporary",
                "source": "pooled temporary",
            }
            for storage_id in ("storage.a", "storage.b", "storage.c")
        ],
    ]
    plan["tasks"] = [
        {
            "task_id": "task.s1",
            "kernel_id": "aten.mul.Scalar_out",
            "predecessors": [],
            "inputs": ["tensor.x"],
            "outputs": ["tensor.a"],
            "source_node": "synthetic.s1",
            "region_id": None,
            "device": "ppu:0",
            "stream": "stream:0",
        },
        {
            "task_id": "task.s2",
            "kernel_id": "aten.mul.Scalar_out",
            "predecessors": [],
            "inputs": ["tensor.x"],
            "outputs": ["tensor.b"],
            "source_node": "synthetic.s2",
            "region_id": None,
            "device": "ppu:0",
            "stream": "stream:0",
        },
        {
            "task_id": "task.j",
            "kernel_id": "aten.add.Tensor",
            "predecessors": ["task.s1", "task.s2"],
            "inputs": ["tensor.a", "tensor.b"],
            "outputs": ["tensor.c"],
            "source_node": "synthetic.j",
            "region_id": None,
            "device": "ppu:0",
            "stream": "stream:0",
        },
    ]
    return plan


class OffsetPlannerTest(unittest.TestCase):
    # ---- original small-chain expectations ---------------------------------

    def test_small_chain_arena_reuses_two_slots(self):
        plan = _example("small-chain-plan.json")
        report = liveness.analyze_model_lifetimes(plan)
        arena = offset_planner.plan_arena(plan, report)
        self.assertEqual(arena.arena_size_bytes, 8192)
        offsets = {item.storage_id: item.offset_bytes for item in arena.assignments}
        self.assertEqual(
            offsets,
            {
                "storage.y1": 0,
                "storage.y2": 4096,
                "storage.y3": 0,
                "storage.y4": 4096,
            },
        )
        chains = dict(arena.reuse_chains)
        self.assertEqual(chains[0], ("storage.y1", "storage.y3"))
        self.assertEqual(chains[4096], ("storage.y2", "storage.y4"))
        self.assertIn("storage.x", arena.external_storage_ids)
        self.assertIn("storage.out", arena.external_storage_ids)
        self.assertEqual(arena.order_status, "total")
        self.assertEqual(offset_planner.verify_arena_plan(arena, plan), [])

    def test_external_output_lives_from_plan_start(self):
        plan = _example("small-chain-plan.json")
        report = liveness.analyze_model_lifetimes(plan)
        storage = next(s for s in report.storages if s.storage_id == "storage.out")
        self.assertEqual((storage.lifetime_start, storage.lifetime_end), (0, 6))
        self.assertEqual(tuple(storage.alias_members), ("tensor.out_buf", "tensor.y5"))

    def test_boundary_touching_lifetimes_do_not_reuse(self):
        plan = _chain_plan()
        plan["tensors"].append(_tensor("tensor.y3", "storage.y3", "task.t3", []))
        plan["storages"].append(
            {
                "storage_id": "storage.y3",
                "size_bytes": 4096,
                "alignment": 64,
                "device": "ppu:0",
                "allocation_kind": "temporary",
                "source": "pooled temporary",
            }
        )
        next(t for t in plan["tensors"] if t["tensor_id"] == "tensor.y2")["consumers"] = [
            "task.t3"
        ]
        plan["tasks"].append(
            {
                "task_id": "task.t3",
                "kernel_id": "aten.mul.Scalar_out",
                "predecessors": ["task.t2"],
                "inputs": ["tensor.y2"],
                "outputs": ["tensor.y3"],
                "source_node": "synthetic.t3",
                "region_id": None,
                "device": "ppu:0",
                "stream": "stream:0",
            }
        )
        report = liveness.analyze_model_lifetimes(plan)
        y1 = next(s for s in report.storages if s.storage_id == "storage.y1")
        y2 = next(s for s in report.storages if s.storage_id == "storage.y2")
        self.assertEqual((y1.lifetime_start, y1.lifetime_end), (1, 2))
        self.assertEqual((y2.lifetime_start, y2.lifetime_end), (2, 3))
        arena = offset_planner.plan_arena(plan, report)
        offsets = {item.storage_id: item.offset_bytes for item in arena.assignments}
        self.assertEqual(offsets["storage.y1"], 0)
        self.assertEqual(offsets["storage.y2"], 4096)
        self.assertEqual(arena.arena_size_bytes, 8192)

    def test_simultaneously_live_storages_get_distinct_slots(self):
        plan = _chain_plan(
            {"storage.y1": 4096, "storage.y2": 4096, "storage.y3": 4096}
        )
        plan["tensors"].append(_tensor("tensor.y3", "storage.y3", "task.t3", ["task.t4"]))
        plan["tensors"].append(_tensor("tensor.y4", "storage.y4", "task.t4", []))
        plan["storages"].append(
            {
                "storage_id": "storage.y4",
                "size_bytes": 4096,
                "alignment": 64,
                "device": "ppu:0",
                "allocation_kind": "temporary",
                "source": "join temporary",
            }
        )
        by_id = {tensor["tensor_id"]: tensor for tensor in plan["tensors"]}
        by_id["tensor.x"]["consumers"] = ["task.t1", "task.t3"]
        by_id["tensor.y1"]["consumers"] = ["task.t2", "task.t4"]
        by_id["tensor.y2"]["consumers"] = ["task.t4"]
        plan["tasks"].append(
            {
                "task_id": "task.t3",
                "kernel_id": "aten.mul.Scalar_out",
                "predecessors": ["task.t1"],
                "inputs": ["tensor.x"],
                "outputs": ["tensor.y3"],
                "source_node": "synthetic.t3",
                "region_id": None,
                "device": "ppu:0",
                "stream": "stream:0",
            }
        )
        plan["tasks"].append(
            {
                "task_id": "task.t4",
                "kernel_id": "aten.add.Tensor",
                "predecessors": ["task.t2", "task.t3"],
                "inputs": ["tensor.y1", "tensor.y2", "tensor.y3"],
                "outputs": ["tensor.y4"],
                "source_node": "synthetic.t4",
                "region_id": None,
                "device": "ppu:0",
                "stream": "stream:0",
            }
        )
        report = liveness.analyze_model_lifetimes(plan)
        self.assertIn("incomplete_happens_before", report.diagnostics)
        arena = offset_planner.plan_arena(plan, report, allow_linearized_candidate=True)
        offsets = sorted(
            item.offset_bytes
            for item in arena.assignments
            if item.storage_id in {"storage.y1", "storage.y2", "storage.y3"}
        )
        self.assertEqual(offsets, [0, 4096, 8192])
        self.assertEqual(offset_planner.verify_arena_plan(arena, plan), [])

    def test_external_storages_are_not_pooled(self):
        plan = _example("small-chain-plan.json")
        report = liveness.analyze_model_lifetimes(plan)
        arena = offset_planner.plan_arena(plan, report)
        pooled = {item.storage_id for item in arena.assignments}
        self.assertEqual(pooled, {"storage.y1", "storage.y2", "storage.y3", "storage.y4"})

    def test_planner_is_deterministic(self):
        plan = _example("small-chain-plan.json")
        shuffled = copy.deepcopy(plan)
        shuffled["tensors"].reverse()
        shuffled["storages"].reverse()
        shuffled["tasks"].reverse()
        first = offset_planner.plan_arena(plan, liveness.analyze_model_lifetimes(plan)).to_dict()
        second = offset_planner.plan_arena(
            shuffled, liveness.analyze_model_lifetimes(shuffled)
        ).to_dict()
        self.assertEqual(first, second)

    # ---- fail-closed rules --------------------------------------------------

    def test_unknown_size_storage_fails_closed(self):
        plan = _chain_plan({"storage.y1": None, "storage.y2": 4096})
        report = liveness.analyze_model_lifetimes(plan)
        with self.assertRaises(offset_planner.PlannerError) as context:
            offset_planner.plan_arena(plan, report)
        self.assertEqual(context.exception.code, "unknown_size_storage")

    def test_control_flow_regions_fail_closed(self):
        for kind, extra in (
            ("branch", {}),
            ("loop", {"loop_carried_tensors": ["tensor.y1"]}),
            ("async", {"happens_before": [["task.t1", "task.t2"]]}),
        ):
            with self.subTest(kind=kind):
                plan = _chain_plan()
                plan["regions"] = [{"region_id": f"r.{kind}", "kind": kind, "members": ["task.t1"], **extra}]
                plan["tasks"][0]["region_id"] = f"r.{kind}"
                report = liveness.analyze_model_lifetimes(plan)
                with self.assertRaises(offset_planner.PlannerError) as context:
                    offset_planner.plan_arena(plan, report)
                self.assertEqual(context.exception.code, "unsupported_control_flow")

    def test_multi_stream_fails_closed(self):
        plan = _chain_plan()
        plan["tasks"][1]["stream"] = "stream:1"
        report = liveness.analyze_model_lifetimes(plan)
        with self.assertRaises(offset_planner.PlannerError) as context:
            offset_planner.plan_arena(plan, report)
        self.assertEqual(context.exception.code, "multi_stream")

    def test_multi_device_fails_closed(self):
        plan = _chain_plan()
        plan["storages"][2]["device"] = "ppu:1"
        report = liveness.analyze_model_lifetimes(plan)
        with self.assertRaises(offset_planner.PlannerError) as context:
            offset_planner.plan_arena(plan, report)
        self.assertEqual(context.exception.code, "multi_device")

    def test_incomplete_order_fails_closed_by_default(self):
        plan = _incomplete_plan()
        report = liveness.analyze_model_lifetimes(plan)
        self.assertIn("incomplete_happens_before", report.diagnostics)
        with self.assertRaises(offset_planner.PlannerError) as context:
            offset_planner.plan_arena(plan, report)
        self.assertEqual(context.exception.code, "incomplete_execution_order")

    def test_incomplete_order_candidate_mode_records_contract(self):
        plan = _incomplete_plan()
        report = liveness.analyze_model_lifetimes(plan)
        arena = offset_planner.plan_arena(plan, report, allow_linearized_candidate=True)
        self.assertEqual(arena.order_status, "linearized_candidate")
        self.assertEqual(arena.task_order, ("task.s1", "task.s2", "task.j"))
        self.assertIsNotNone(arena.executor_contract)
        self.assertIn("not an observed PPU execution order", arena.executor_contract)
        self.assertEqual(offset_planner.verify_arena_plan(arena, plan), [])
        self.assertEqual(
            offset_planner.chain_matches_order(arena, ["task.s1", "task.s2", "task.j"]), []
        )
        self.assertTrue(
            offset_planner.chain_matches_order(arena, ["task.s2", "task.s1", "task.j"])
        )

    # ---- alignment ----------------------------------------------------------

    def test_storage_alignment_is_respected(self):
        plan = _chain_plan(
            {"storage.y1": 100, "storage.y2": 100},
            alignments={"storage.y1": 256, "storage.y2": 256},
        )
        report = liveness.analyze_model_lifetimes(plan)
        arena = offset_planner.plan_arena(plan, report)
        offsets = {item.storage_id: item.offset_bytes for item in arena.assignments}
        self.assertEqual(offsets["storage.y1"], 0)
        self.assertEqual(offsets["storage.y2"], 256)
        self.assertEqual(arena.arena_size_bytes, 512)
        self.assertEqual(arena.base_alignment, 256)
        self.assertEqual(offset_planner.verify_arena_plan(arena, plan), [])

    def test_invalid_alignment_is_rejected(self):
        plan = _chain_plan(alignments={"storage.y2": 96})
        report = liveness.analyze_model_lifetimes(plan)
        with self.assertRaises(offset_planner.PlannerError) as context:
            offset_planner.plan_arena(plan, report)
        self.assertEqual(context.exception.code, "unsupported_alignment")

    def test_alignment_above_supported_max_is_rejected(self):
        plan = _chain_plan(alignments={"storage.y2": 8192})
        report = liveness.analyze_model_lifetimes(plan)
        with self.assertRaises(offset_planner.PlannerError) as context:
            offset_planner.plan_arena(plan, report)
        self.assertEqual(context.exception.code, "unsupported_alignment")

    # ---- independent verifier ----------------------------------------------

    def _small_chain_arena(self):
        plan = _example("small-chain-plan.json")
        report = liveness.analyze_model_lifetimes(plan)
        return plan, offset_planner.plan_arena(plan, report)

    def test_verifier_detects_missing_assignment(self):
        plan, arena = self._small_chain_arena()
        tampered = dataclasses.replace(
            arena,
            assignments=tuple(
                item for item in arena.assignments if item.storage_id != "storage.y3"
            ),
        )
        problems = offset_planner.verify_arena_plan(tampered, plan)
        self.assertTrue(any("missing assignments" in problem for problem in problems), problems)

    def test_verifier_detects_byte_overlap_using_reanalyzed_lifetimes(self):
        plan, arena = self._small_chain_arena()
        tampered_assignments = tuple(
            dataclasses.replace(item, offset_bytes=0)
            if item.storage_id == "storage.y2"
            else item
            for item in arena.assignments
        )
        tampered = dataclasses.replace(arena, assignments=tampered_assignments)
        problems = offset_planner.verify_arena_plan(tampered, plan)
        self.assertTrue(
            any("overlap in bytes" in problem for problem in problems), problems
        )

    def test_verifier_detects_arena_too_small(self):
        plan, arena = self._small_chain_arena()
        tampered = dataclasses.replace(arena, arena_size_bytes=4096)
        problems = offset_planner.verify_arena_plan(tampered, plan)
        self.assertTrue(
            any("smaller than re-planned" in problem for problem in problems), problems
        )

    def test_verifier_detects_extra_assignment(self):
        plan, arena = self._small_chain_arena()
        extra = offset_planner.ArenaAssignment(
            storage_id="storage.x",
            offset_bytes=0,
            size_bytes=4096,
            alignment=64,
            aligned_size_bytes=4096,
        )
        tampered = dataclasses.replace(arena, assignments=arena.assignments + (extra,))
        problems = offset_planner.verify_arena_plan(tampered, plan)
        self.assertTrue(
            any("unexpected assignments" in problem for problem in problems), problems
        )

    def test_verifier_detects_order_tamper(self):
        plan, arena = self._small_chain_arena()
        tampered = dataclasses.replace(arena, task_order=tuple(reversed(arena.task_order)))
        problems = offset_planner.verify_arena_plan(tampered, plan)
        self.assertTrue(any("task_order differs" in problem for problem in problems), problems)

    def test_mutated_storage_is_excluded_not_pooled(self):
        plan = _chain_plan()
        next(t for t in plan["tensors"] if t["tensor_id"] == "tensor.y2")["is_mutated"] = True
        report = liveness.analyze_model_lifetimes(plan)
        arena = offset_planner.plan_arena(plan, report)
        self.assertEqual(
            [item.storage_id for item in arena.assignments], ["storage.y1"]
        )
        self.assertIn(("storage.y2", "mutated_alias_group_unproven"), arena.excluded_storage_ids)
        self.assertEqual(offset_planner.verify_arena_plan(arena, plan), [])

    # ---- staged integration: verify_safe vs verify_matches ------------------

    def test_verify_safe_rejects_base_alignment_tamper(self):
        plan, arena = self._small_chain_arena()
        tampered = dataclasses.replace(arena, base_alignment=1)
        self.assertIn("base_alignment_mismatch", offset_planner.verify_safe(tampered, plan))
        self.assertIn("base_alignment_mismatch", offset_planner.verify_matches(tampered, plan))

    def test_verify_safe_rejects_emptied_external_storages(self):
        plan, arena = self._small_chain_arena()
        tampered = dataclasses.replace(arena, external_storage_ids=())
        self.assertIn("external_storage_mismatch", offset_planner.verify_safe(tampered, plan))

    def test_verify_safe_rejects_executor_contract_tamper(self):
        plan, arena = self._small_chain_arena()
        tampered = dataclasses.replace(arena, executor_contract="do whatever")
        self.assertIn("execution_contract_mismatch", offset_planner.verify_safe(tampered, plan))

    def test_verify_safe_accepts_safe_alternative_layout_but_matches_rejects(self):
        plan, arena = self._small_chain_arena()
        shifted = tuple(
            dataclasses.replace(item, offset_bytes=item.offset_bytes + 64)
            for item in arena.assignments
        )
        alternative = dataclasses.replace(
            arena,
            assignments=shifted,
            arena_size_bytes=arena.arena_size_bytes + 64,
            reuse_chains=((64, ("storage.y1", "storage.y3")), (4160, ("storage.y2", "storage.y4"))),
            static_arena_capacity_reduction_bytes=arena.no_reuse_arena_bytes
            - (arena.arena_size_bytes + 64),
        )
        self.assertEqual(offset_planner.verify_safe(alternative, plan), [])
        problems = offset_planner.verify_matches(alternative, plan)
        self.assertIn("does_not_match_deterministic_planner", problems)

    def test_unknown_stream_and_multi_stream_have_distinct_codes(self):
        plan = _chain_plan()
        plan["tasks"][1]["stream"] = None
        report = liveness.analyze_model_lifetimes(plan)
        with self.assertRaises(offset_planner.PlannerError) as context:
            offset_planner.plan_arena(plan, report)
        self.assertEqual(context.exception.code, "unknown_stream")
        self.assertIn("task.t2", context.exception.message)

        plan = _chain_plan()
        plan["tasks"][1]["stream"] = "stream:1"
        report = liveness.analyze_model_lifetimes(plan)
        with self.assertRaises(offset_planner.PlannerError) as context:
            offset_planner.plan_arena(plan, report)
        self.assertEqual(context.exception.code, "multi_stream")

    def test_candidate_schedule_validation_codes(self):
        plan = _example("small-chain-plan.json")
        report = liveness.analyze_model_lifetimes(plan)
        with self.assertRaises(offset_planner.PlannerError) as context:
            offset_planner.plan_arena(plan, report, task_order=["task.mul1"])
        self.assertEqual(context.exception.code, "invalid_serial_schedule")

        with self.assertRaises(offset_planner.PlannerError) as context:
            offset_planner.plan_arena(
                plan,
                report,
                task_order=["task.mul5", "task.mul4", "task.mul3", "task.mul2", "task.mul1"],
            )
        self.assertEqual(context.exception.code, "schedule_violates_dependency")

        plan = _chain_plan()
        plan["tasks"][1]["predecessors"] = []
        report = liveness.analyze_model_lifetimes(plan)
        with self.assertRaises(offset_planner.PlannerError) as context:
            offset_planner.plan_arena(plan, report, task_order=["task.t2", "task.t1"])
        self.assertEqual(context.exception.code, "schedule_violates_dataflow")

    def test_candidate_order_reanalysis_changes_placement(self):
        plan = _chain_plan(
            sizes={"storage.a": 4096, "storage.b": 8192, "storage.c": 4096}
        )
        plan["tensors"] = [
            _tensor("tensor.x", "storage.x", None, ["task.s1", "task.s2"]),
            _tensor("tensor.a", "storage.a", "task.s1", ["task.t"]),
            _tensor("tensor.b", "storage.b", "task.s2", []),
            _tensor("tensor.c", "storage.c", "task.t", []),
        ]
        plan["storages"] = [
            {
                "storage_id": "storage.x",
                "size_bytes": 4096,
                "alignment": 64,
                "device": "ppu:0",
                "allocation_kind": "input",
                "source": "caller input",
            },
            {
                "storage_id": "storage.a",
                "size_bytes": 4096,
                "alignment": 64,
                "device": "ppu:0",
                "allocation_kind": "temporary",
                "source": "pooled temporary",
            },
            {
                "storage_id": "storage.b",
                "size_bytes": 8192,
                "alignment": 64,
                "device": "ppu:0",
                "allocation_kind": "temporary",
                "source": "pooled temporary",
            },
            {
                "storage_id": "storage.c",
                "size_bytes": 4096,
                "alignment": 64,
                "device": "ppu:0",
                "allocation_kind": "temporary",
                "source": "pooled temporary",
            },
        ]
        plan["tasks"] = [
            {
                "task_id": "task.s1",
                "kernel_id": "aten.mul.Scalar_out",
                "predecessors": [],
                "inputs": ["tensor.x"],
                "outputs": ["tensor.a"],
                "source_node": "synthetic.s1",
                "region_id": None,
                "device": "ppu:0",
                "stream": "stream:0",
            },
            {
                "task_id": "task.s2",
                "kernel_id": "aten.mul.Scalar_out",
                "predecessors": [],
                "inputs": ["tensor.x"],
                "outputs": ["tensor.b"],
                "source_node": "synthetic.s2",
                "region_id": None,
                "device": "ppu:0",
                "stream": "stream:0",
            },
            {
                "task_id": "task.t",
                "kernel_id": "aten.mul.Scalar_out",
                "predecessors": ["task.s1"],
                "inputs": ["tensor.a"],
                "outputs": ["tensor.c"],
                "source_node": "synthetic.t",
                "region_id": None,
                "device": "ppu:0",
                "stream": "stream:0",
            },
        ]
        report = liveness.analyze_model_lifetimes(plan)
        self.assertIn("incomplete_happens_before", report.diagnostics)
        g1_candidate = offset_planner.plan_arena(
            plan, report, allow_linearized_candidate=True
        )
        explicit = offset_planner.plan_arena(
            plan, report, task_order=["task.s2", "task.s1", "task.t"]
        )
        self.assertEqual(g1_candidate.task_order, ("task.s1", "task.s2", "task.t"))
        self.assertEqual(explicit.task_order, ("task.s2", "task.s1", "task.t"))
        self.assertEqual(explicit.order_origin, "caller_proposed_serial_schedule_not_runtime_observation")
        self.assertEqual(g1_candidate.arena_size_bytes, 12288)
        self.assertEqual(explicit.arena_size_bytes, 8192)
        self.assertNotEqual(g1_candidate.arena_size_bytes, explicit.arena_size_bytes)
        self.assertIn("serial_candidate_order_not_observed", explicit.runtime_binding_blockers)
        self.assertFalse(explicit.runtime_applied)
        self.assertEqual(explicit.status, "offline_candidate_only")
        self.assertEqual(offset_planner.verify_safe(explicit, plan), [])
        self.assertEqual(offset_planner.verify_matches(explicit, plan), [])

    def test_unresolved_offsets_are_runtime_blockers(self):
        plan = _example("small-chain-plan.json")
        next(t for t in plan["tensors"] if t["tensor_id"] == "tensor.y1")[
            "storage_offset_bytes"
        ] = None
        arena = offset_planner.plan_arena(plan)
        self.assertEqual(arena.unresolved_tensor_storage_offsets, ("tensor.y1",))
        self.assertIn("tensor_storage_offsets_unresolved", arena.runtime_binding_blockers)
        self.assertEqual(offset_planner.verify_safe(arena, plan), [])
        self.assertEqual(offset_planner.verify_matches(arena, plan), [])

    def test_metadata_tamper_is_detected(self):
        plan, arena = self._small_chain_arena()
        self.assertIn(
            "runtime_applied_must_be_false",
            offset_planner.verify_safe(dataclasses.replace(arena, runtime_applied=True), plan),
        )
        self.assertIn(
            "status_must_remain_offline_candidate_only",
            offset_planner.verify_safe(dataclasses.replace(arena, status="applied"), plan),
        )
        self.assertIn(
            "runtime_policy_must_remain_disabled",
            offset_planner.verify_safe(
                dataclasses.replace(arena, default_runtime_policy="enabled"), plan
            ),
        )
        self.assertIn(
            "input_fingerprint_mismatch",
            offset_planner.verify_safe(dataclasses.replace(arena, input_sha256="0" * 64), plan),
        )
        changed_plan = copy.deepcopy(plan)
        changed_plan["model_id"] = "changed.model"
        problems = offset_planner.verify_safe(arena, changed_plan)
        self.assertIn("report_identity_mismatch", problems)
        self.assertIn("input_fingerprint_mismatch", problems)

    def test_illegal_fields_return_diagnostics_without_crash(self):
        plan, arena = self._small_chain_arena()
        first = arena.assignments[0]
        variants = {
            "offset_none": dataclasses.replace(
                arena,
                assignments=(dataclasses.replace(first, offset_bytes=None),) + arena.assignments[1:],
            ),
            "offset_str": dataclasses.replace(
                arena,
                assignments=(dataclasses.replace(first, offset_bytes="zero"),) + arena.assignments[1:],
            ),
            "size_str": dataclasses.replace(
                arena,
                assignments=(dataclasses.replace(first, size_bytes="big"),) + arena.assignments[1:],
            ),
            "zero_alignment": dataclasses.replace(
                arena,
                assignments=(dataclasses.replace(first, alignment=0),) + arena.assignments[1:],
            ),
            "arena_size_none": dataclasses.replace(arena, arena_size_bytes=None),
            "chains_structure": dataclasses.replace(arena, reuse_chains=(1, 2, 3)),
            "assignment_object": dataclasses.replace(
                arena, assignments=("not-an-assignment",)
            ),
        }
        for label, tampered in variants.items():
            with self.subTest(label=label):
                try:
                    problems = offset_planner.verify_safe(tampered, plan)
                except Exception as error:  # pragma: no cover - would be a bug
                    self.fail(f"{label}: verify_safe raised {type(error).__name__}: {error}")
                self.assertIsInstance(problems, list)
                self.assertTrue(problems, f"{label}: expected diagnostics")

    def test_reuse_provenance_and_metrics_tamper(self):
        plan, arena = self._small_chain_arena()
        by_id = {item.storage_id: item for item in arena.assignments}
        cleared = tuple(
            dataclasses.replace(item, reuses_address_from=())
            if item.storage_id == "storage.y3"
            else item
            for item in arena.assignments
        )
        problems = offset_planner.verify_safe(
            dataclasses.replace(arena, assignments=cleared), plan
        )
        self.assertIn("storage.y3: reuse_provenance_mismatch", problems)

        problems = offset_planner.verify_safe(
            dataclasses.replace(
                arena,
                static_arena_capacity_reduction_bytes=arena.static_arena_capacity_reduction_bytes
                + 100,
            ),
            plan,
        )
        self.assertIn("static_arena_capacity_reduction_mismatch", problems)
        self.assertTrue(by_id)  # keep the mapping used for clarity


    def test_pool_filter_limits_arena_to_selected_storages(self):
        plan = _example("small-chain-plan.json")
        arena = offset_planner.plan_arena(
            plan, pool_storage_ids={"storage.y1", "storage.y2"}
        )
        self.assertEqual(
            [item.storage_id for item in arena.assignments], ["storage.y1", "storage.y2"]
        )
        self.assertEqual(arena.arena_size_bytes, 8192)
        self.assertIn(("storage.y3", "not_selected_for_pool"), arena.excluded_storage_ids)
        self.assertIn(("storage.y4", "not_selected_for_pool"), arena.excluded_storage_ids)
        self.assertEqual(arena.selected_storage_ids, ("storage.y1", "storage.y2"))
        self.assertEqual(offset_planner.verify_safe(arena, plan), [])
        self.assertEqual(offset_planner.verify_matches(arena, plan), [])

    def test_original_plan_not_modified_by_candidate_order(self):
        plan = _incomplete_plan()
        before = copy.deepcopy(plan)
        offset_planner.plan_arena(
            plan,
            liveness.analyze_model_lifetimes(plan),
            task_order=["task.s2", "task.s1", "task.j"],
        )
        self.assertEqual(plan, before)


if __name__ == "__main__":
    unittest.main()
