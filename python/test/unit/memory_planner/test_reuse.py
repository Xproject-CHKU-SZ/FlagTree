from __future__ import annotations

import copy
import importlib.util
import json
from pathlib import Path
import random
import subprocess
import sys
import tempfile
import types
import unittest


REPO_ROOT = Path(__file__).resolve().parents[4]
PACKAGE_DIR = REPO_ROOT / "python" / "flagtree" / "memory_planner"
package_name = "flagtree_buffer_reuse_test"
package = types.ModuleType(package_name)
package.__path__ = [str(PACKAGE_DIR)]
sys.modules[package_name] = package
for filename in ("schema", "liveness", "reuse"):
    spec = importlib.util.spec_from_file_location(f"{package_name}.{filename}", PACKAGE_DIR / f"{filename}.py")
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    spec.loader.exec_module(module)
reuse = sys.modules[f"{package_name}.reuse"]


def chain(sizes=(1024, 1024, 1024, 1024, 1024), alignment=16):
    names = ["x"] + [f"h{i}" for i in range(1, len(sizes))] + ["y"]
    tasks = []
    for i in range(1, len(names)):
        tasks.append({"task_id": f"task.k{i}", "kernel_id": "kernel.mul", "predecessors": [f"task.k{i-1}"] if i > 1 else [],
                      "inputs": [f"tensor.{names[i-1]}"], "outputs": [f"tensor.{names[i]}"],
                      "source_node": f"model.node{i}", "region_id": None, "device": "ppu:0", "stream": "stream:0"})
    tensors, storages = [], []
    for i, name in enumerate(names):
        tensors.append({"tensor_id": f"tensor.{name}", "storage_id": f"storage.{name}",
                        "producer": f"task.k{i}" if i else None,
                        "consumers": [f"task.k{i+1}"] if i < len(names)-1 else [], "dtype": "float32",
                        "shape": [256], "storage_offset_bytes": 0, "source_value": f"model.{name}",
                        "is_graph_output": i == len(names)-1, "is_persistent": False, "is_mutated": False})
        storages.append({"storage_id": f"storage.{name}", "size_bytes": sizes[max(0, i-1)], "alignment": alignment,
                         "device": "ppu:0", "allocation_kind": "input" if i == 0 else "temporary",
                         "source": f"test allocation {name}"})
    return {"plan_id": "test.chain", "schema_version": "f08-g01-model-plan/0.1", "model_id": "test.chain",
            "tasks": tasks, "tensors": tensors, "storages": storages, "regions": [], "shape_bindings": {}}


def by_id(report):
    return {p["storage_id"]: p for p in report["placements"]}


class BufferReuseTest(unittest.TestCase):
    def assert_error(self, plan, code, **kwargs):
        with self.assertRaises(reuse.BufferReusePlanningError) as context:
            reuse.propose_buffer_reuse_plan(plan, **kwargs)
        self.assertEqual(context.exception.code, code)

    def test_chain_reuses_dead_storage_and_preserves_boundary(self):
        report = reuse.propose_buffer_reuse_plan(chain())
        p = by_id(report)
        self.assertEqual(report["pools"][0]["arena_bytes"], 2048)
        self.assertEqual(report["pools"][0]["no_reuse_arena_bytes"], 4096)
        self.assertNotEqual(p["storage.h1"]["offset_bytes"], p["storage.h2"]["offset_bytes"])
        self.assertEqual(p["storage.h1"]["offset_bytes"], p["storage.h3"]["offset_bytes"])
        self.assertEqual(p["storage.h3"]["reuses_address_from"], ["storage.h1"])

    def test_outputs_and_inputs_never_enter_arena(self):
        report = reuse.propose_buffer_reuse_plan(chain())
        self.assertNotIn("storage.x", by_id(report))
        self.assertNotIn("storage.y", by_id(report))
        reasons = {s["storage_id"]: s["reasons"] for s in report["excluded_storages"]}
        self.assertIn("graph_output_escapes", reasons["storage.y"])

    def test_persistent_and_cache_remain_external(self):
        plan = chain()
        plan["tensors"][1]["is_persistent"] = True
        plan["storages"][2]["allocation_kind"] = "cache"
        report = reuse.propose_buffer_reuse_plan(plan)
        self.assertNotIn("storage.h1", by_id(report))
        self.assertNotIn("storage.h2", by_id(report))

    def test_alias_union_extends_lifetime_without_duplicate_allocation(self):
        plan = chain()
        alias = copy.deepcopy(plan["tensors"][1])
        alias.update(tensor_id="tensor.h1_view", consumers=["task.k3"], storage_offset_bytes=4)
        plan["tensors"].append(alias)
        plan["tasks"][0]["outputs"].append(alias["tensor_id"])
        plan["tasks"][2]["inputs"].append(alias["tensor_id"])
        report = reuse.propose_buffer_reuse_plan(plan)
        p = by_id(report)
        self.assertEqual(p["storage.h1"]["lifetime_end"], 3)
        self.assertEqual(p["storage.h1"]["alias_members"], ["tensor.h1", "tensor.h1_view"])
        self.assertEqual(len(report["placements"]), 4)
        self.assertNotEqual(p["storage.h1"]["offset_bytes"], p["storage.h3"]["offset_bytes"])

    def test_mutation_is_excluded(self):
        plan = chain()
        plan["tensors"][1]["is_mutated"] = True
        self.assertNotIn("storage.h1", by_id(reuse.propose_buffer_reuse_plan(plan)))

    def test_unknown_view_offset_keeps_whole_storage_candidate_but_blocks_binding(self):
        plan = chain()
        plan["tensors"][1]["storage_offset_bytes"] = None
        report = reuse.propose_buffer_reuse_plan(plan)
        self.assertIn("storage.h1", by_id(report))
        self.assertIn("tensor_storage_offsets_unresolved", report["runtime_binding_blockers"])
        self.assertEqual(report["unresolved_tensor_storage_offsets"], ["tensor.h1"])

    def test_runtime_is_never_applied(self):
        report = reuse.propose_buffer_reuse_plan(chain())
        self.assertFalse(report["runtime_applied"])
        self.assertEqual(report["default_runtime_policy"], "disabled")
        self.assertIn("no_model_level_runtime_allocator_binding", report["runtime_binding_blockers"])

    def test_incomparable_tasks_require_explicit_serial_order(self):
        plan = chain()
        plan["tasks"][1]["predecessors"] = []
        self.assert_error(plan, "explicit_serial_schedule_required")
        report = reuse.propose_buffer_reuse_plan(plan, task_order=[t["task_id"] for t in plan["tasks"]])
        self.assertEqual(report["schedule"]["origin"], "caller_proposed_serial_schedule_not_runtime_observation")

    def test_schedule_must_be_complete_and_dependency_consistent(self):
        plan = chain()
        for order in (["task.k1"], ["task.k1"] * 5):
            self.assert_error(plan, "invalid_serial_schedule", task_order=order)
        self.assert_error(plan, "schedule_violates_dependency", task_order=[t["task_id"] for t in reversed(plan["tasks"])])

    def test_schedule_must_respect_dataflow_even_if_dependency_is_missing(self):
        plan = chain()
        plan["tasks"][1]["predecessors"] = []
        self.assert_error(plan, "schedule_violates_dataflow",
                          task_order=["task.k2", "task.k1", "task.k3", "task.k4", "task.k5"])

    def test_control_flow_uses_fallback(self):
        for kind in ("branch", "loop", "async"):
            with self.subTest(kind=kind):
                plan = chain()
                region = {"region_id": "region.test", "kind": kind, "parent_region": None, "members": ["task.k2"]}
                if kind == "loop":
                    region["loop_carried_tensors"] = ["tensor.h1"]
                plan["regions"] = [region]
                plan["tasks"][1]["region_id"] = "region.test"
                self.assert_error(plan, "unsupported_control_flow")

    def test_multistream_and_unknown_stream_rejected(self):
        for stream in (None, "stream:1"):
            plan = chain()
            plan["tasks"][1]["stream"] = stream
            self.assert_error(plan, "unsupported_stream_contract")

    def test_cross_device_tensor_use_rejected(self):
        plan = chain()
        plan["tasks"][1]["device"] = "ppu:1"
        self.assert_error(plan, "cross_device_tensor_use")

    def test_dynamic_bounds_are_not_concrete_allocations(self):
        plan = chain()
        plan["storages"][1].pop("size_bytes")
        plan["storages"][1].update(size_expression="N*4", size_upper_bound=1024)
        self.assert_error(plan, "dynamic_storage_requires_guard")

    def test_non_power_of_two_alignment_uses_lcm_for_base(self):
        plan = chain(alignment=3)
        plan["storages"][2]["alignment"] = 4
        report = reuse.propose_buffer_reuse_plan(plan)
        self.assertEqual(report["pools"][0]["base_alignment"], 12)
        for p in report["placements"]:
            self.assertEqual(p["offset_bytes"] % p["alignment"], 0)

    def test_zero_byte_storage_occupies_no_address_range(self):
        report = reuse.propose_buffer_reuse_plan(chain(sizes=(0, 0, 0)))
        self.assertEqual(report["pools"][0]["arena_bytes"], 0)
        self.assertTrue(report["static_validation"]["passed"])

    def test_report_deterministic_and_input_unchanged(self):
        plan = chain()
        original = copy.deepcopy(plan)
        report = reuse.propose_buffer_reuse_plan(plan)
        self.assertEqual(plan, original)
        for field in ("tasks", "tensors", "storages"):
            plan[field].reverse()
        self.assertEqual(report, reuse.propose_buffer_reuse_plan(plan))

    def test_verifier_detects_live_overlap(self):
        plan = chain()
        report = reuse.propose_buffer_reuse_plan(plan)
        p = by_id(report)
        p["storage.h2"]["offset_bytes"] = p["storage.h1"]["offset_bytes"]
        self.assertTrue(any("live_address_overlap" in issue for issue in reuse.verify_buffer_reuse_plan(plan, report)))

    def test_verifier_detects_alignment_bounds_and_provenance(self):
        plan = chain()
        report = reuse.propose_buffer_reuse_plan(plan)
        p = by_id(report)["storage.h1"]
        p["offset_bytes"] = 1
        p["lifetime_end"] = 0
        p["source"] = "wrong"
        report["pools"][0]["arena_bytes"] = 1
        issues = reuse.verify_buffer_reuse_plan(plan, report)
        for code in ("misaligned_offset", "arena_bounds_violation", "lifetime_end_mismatch", "source_mismatch"):
            self.assertTrue(any(code in issue for issue in issues))

    def test_verifier_detects_missing_duplicate_or_changed_input(self):
        plan = chain()
        report = reuse.propose_buffer_reuse_plan(plan)
        report["placements"].append(report["placements"][0])
        self.assertIn("storage_coverage_mismatch", reuse.verify_buffer_reuse_plan(plan, report))
        report = reuse.propose_buffer_reuse_plan(plan)
        report["placements"].pop()
        self.assertIn("storage_coverage_mismatch", reuse.verify_buffer_reuse_plan(plan, report))
        plan["model_id"] = "changed"
        self.assertIn("input_fingerprint_mismatch", reuse.verify_buffer_reuse_plan(plan, report))

    def test_verifier_rejects_runtime_enabled_claim(self):
        plan = chain()
        report = reuse.propose_buffer_reuse_plan(plan)
        report["runtime_applied"] = True
        self.assertIn("runtime_policy_must_remain_disabled", reuse.verify_buffer_reuse_plan(plan, report))

    def test_verifier_detects_false_metrics_and_reuse_trace(self):
        plan = chain()
        report = reuse.propose_buffer_reuse_plan(plan)
        report["pools"][0]["static_arena_capacity_reduction_bytes"] += 100
        by_id(report)["storage.h3"]["reuses_address_from"] = []
        report["runtime_binding_blockers"] = []
        issues = reuse.verify_buffer_reuse_plan(plan, report)
        self.assertTrue(any("static_arena_capacity_reduction_bytes_mismatch" in issue for issue in issues))
        self.assertTrue(any("reuse_provenance_mismatch" in issue for issue in issues))
        self.assertIn("runtime_binding_blockers_mismatch", issues)

    def test_device_pools_are_separate(self):
        plan, second = chain(), chain()
        for task in second["tasks"]:
            task["task_id"] += ".b"
            task["predecessors"] = [name + ".b" for name in task["predecessors"]]
            task["inputs"] = [name + ".b" for name in task["inputs"]]
            task["outputs"] = [name + ".b" for name in task["outputs"]]
            task["device"] = "ppu:1"
        second["tasks"][0]["predecessors"] = [plan["tasks"][-1]["task_id"]]
        for tensor in second["tensors"]:
            tensor["tensor_id"] += ".b"
            tensor["storage_id"] += ".b"
            if tensor["producer"]:
                tensor["producer"] += ".b"
            tensor["consumers"] = [name + ".b" for name in tensor["consumers"]]
        for storage in second["storages"]:
            storage["storage_id"] += ".b"
            storage["device"] = "ppu:1"
        for field in ("tasks", "tensors", "storages"):
            plan[field].extend(second[field])
        report = reuse.propose_buffer_reuse_plan(plan)
        self.assertEqual([p["device"] for p in report["pools"]], ["ppu:0", "ppu:1"])
        self.assertEqual([p["arena_bytes"] for p in report["pools"]], [2048, 2048])

    def test_randomized_first_fit_safety(self):
        rng = random.Random(20260928)
        for _ in range(50):
            sizes = tuple(rng.randrange(0, 1000) for _ in range(rng.randrange(3, 25)))
            plan = chain(sizes=sizes)
            for storage in plan["storages"]:
                storage["alignment"] = rng.choice([1, 2, 3, 4, 8, 16, 256])
            report = reuse.propose_buffer_reuse_plan(plan)
            pool = report["pools"][0]
            self.assertLessEqual(pool["arena_bytes"], pool["no_reuse_arena_bytes"])
            self.assertGreaterEqual(pool["arena_bytes"], pool["eligible_live_storage_peak_bytes"])
            self.assertEqual(reuse.verify_buffer_reuse_plan(plan, report), ())

    def test_cli_create_and_independent_verify(self):
        script = REPO_ROOT / "python" / "scripts" / "plan_buffer_reuse.py"
        with tempfile.TemporaryDirectory() as tmp:
            path, output = Path(tmp) / "plan.json", Path(tmp) / "reuse.json"
            path.write_text(json.dumps(chain()), encoding="utf-8")
            result = subprocess.run([sys.executable, str(script), str(path), "--output", str(output)], capture_output=True, text=True)
            self.assertEqual(result.returncode, 0, result.stderr)
            result = subprocess.run([sys.executable, str(script), str(path), "--verify", str(output)], capture_output=True, text=True)
            self.assertEqual(result.returncode, 0, result.stderr)
            self.assertIn("STATIC CANDIDATE ONLY", result.stdout)


if __name__ == "__main__":
    unittest.main()
