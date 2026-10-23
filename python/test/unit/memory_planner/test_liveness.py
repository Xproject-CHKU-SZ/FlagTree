from __future__ import annotations

import copy
import importlib.util
import json
from pathlib import Path
import sys
import types
import unittest


REPO_ROOT = Path(__file__).resolve().parents[4]
PACKAGE_DIR = REPO_ROOT / "python" / "flagtree" / "memory_planner"
EXAMPLE = REPO_ROOT / "docs" / "project-plan" / "examples" / "f08-g01" / "minimal-linear-alias.json"


def _load_module(module_name: str, filename: str):
    spec = importlib.util.spec_from_file_location(module_name, PACKAGE_DIR / filename)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load {filename}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[module_name] = module
    spec.loader.exec_module(module)
    return module


def _load_analyser():
    package_name = "flagtree_model_plan_liveness_test"
    package = types.ModuleType(package_name)
    package.__path__ = [str(PACKAGE_DIR)]
    sys.modules[package_name] = package
    _load_module(f"{package_name}.schema", "schema.py")
    return _load_module(f"{package_name}.liveness", "liveness.py")


liveness = _load_analyser()


def _plan():
    with EXAMPLE.open("r", encoding="utf-8") as handle:
        return json.load(handle)


def _by_id(records):
    key = "tensor_id" if hasattr(records[0], "tensor_id") else "storage_id"
    return {getattr(record, key): record for record in records}


class ModelLivenessTest(unittest.TestCase):
    def test_linear_chain_event_order_and_boundaries(self):
        report = liveness.analyze_model_lifetimes(_plan())
        self.assertEqual(report.task_order, ("task.embed", "task.norm", "task.head"))
        self.assertEqual([event.event_index for event in report.events], [0, 1, 2, 3, 4])

        tensors = _by_id(report.tensors)
        self.assertEqual((tensors["tensor.input_ids"].lifetime_start, tensors["tensor.input_ids"].lifetime_end), (0, 1))
        self.assertEqual((tensors["tensor.hidden"].lifetime_start, tensors["tensor.hidden"].lifetime_end), (1, 2))
        self.assertEqual((tensors["tensor.logits"].lifetime_start, tensors["tensor.logits"].lifetime_end), (3, 4))

    def test_persistent_parameter_lives_to_plan_end(self):
        report = liveness.analyze_model_lifetimes(_plan())
        tensor = _by_id(report.tensors)["tensor.embedding_weight"]
        storage = _by_id(report.storages)["storage.embedding_weight"]
        self.assertEqual((tensor.lifetime_start, tensor.lifetime_end), (0, 4))
        self.assertTrue(storage.is_persistent)

    def test_alias_members_are_merged_without_double_counting(self):
        report = liveness.analyze_model_lifetimes(_plan())
        storage = _by_id(report.storages)["storage.normalized"]
        self.assertEqual(storage.alias_members, ("tensor.normalized", "tensor.normalized_view"))
        self.assertEqual((storage.lifetime_start, storage.lifetime_end), (2, 3))
        self.assertEqual(_by_id(report.tensors)["tensor.normalized"].diagnostics, ("unused_tensor",))

    def test_peak_is_hand_checkable_and_storage_based(self):
        report = liveness.analyze_model_lifetimes(_plan())
        self.assertEqual(report.peak_summary.peak_kind, "exact_for_linearized_schedule")
        self.assertEqual(report.peak_summary.accounted_peak_bytes, 4608)
        self.assertEqual(report.peak_summary.peak_event_ids, ("event:task:task.norm:complete",))

        peak = next(record for record in report.memory_events if record.event_index == 2)
        self.assertEqual(
            peak.live_storage_ids,
            ("storage.embedding_weight", "storage.hidden", "storage.normalized"),
        )
        normalized = next(item for item in peak.contributions if item.storage_id == "storage.normalized")
        self.assertEqual(normalized.accounted_bytes, 256)
        self.assertEqual(normalized.alias_members, ("tensor.normalized", "tensor.normalized_view"))

    def test_unknown_dynamic_size_marks_peak_as_incomplete(self):
        plan = _plan()
        storage = next(item for item in plan["storages"] if item["storage_id"] == "storage.normalized")
        del storage["size_bytes"]
        storage["size_expression"] = "B * S * H * 2"

        report = liveness.analyze_model_lifetimes(plan)
        self.assertEqual(report.peak_summary.peak_kind, "known_objects_lower_bound")
        self.assertEqual(report.peak_summary.unknown_size_storage_ids, ("storage.normalized",))
        self.assertIn("numeric_peak_will_be_incomplete", report.diagnostics)

    def test_last_of_multiple_consumers_sets_lifetime_end(self):
        plan = _plan()
        plan["tensors"][2]["consumers"].append("task.z_audit")
        plan["tasks"].append(
            {
                "task_id": "task.z_audit",
                "kernel_id": "kernel.audit",
                "predecessors": ["task.embed"],
                "inputs": ["tensor.hidden"],
                "outputs": ["tensor.audit"],
                "source_node": "model.audit",
                "region_id": None,
                "device": "xpu:0",
                "stream": "stream:0",
            }
        )
        plan["tensors"].append(
            {
                "tensor_id": "tensor.audit",
                "storage_id": "storage.audit",
                "producer": "task.z_audit",
                "consumers": [],
                "dtype": "int32",
                "shape": [1],
                "storage_offset_bytes": 0,
                "source_value": "model.audit.output",
                "is_graph_output": False,
                "is_persistent": False,
                "is_mutated": False,
            }
        )
        plan["storages"].append(
            {
                "storage_id": "storage.audit",
                "size_bytes": 4,
                "alignment": 4,
                "device": "xpu:0",
                "allocation_kind": "temporary",
                "source": "audit scalar",
            }
        )

        report = liveness.analyze_model_lifetimes(plan)
        self.assertEqual(report.task_order, ("task.embed", "task.norm", "task.head", "task.z_audit"))
        self.assertEqual(_by_id(report.tensors)["tensor.hidden"].lifetime_end, 4)
        self.assertEqual(report.peak_summary.peak_kind, "linearized_schedule_estimate")
        self.assertIn("incomplete_happens_before", report.diagnostics)

    def test_input_array_order_does_not_change_report(self):
        original = _plan()
        shuffled = copy.deepcopy(original)
        shuffled["tasks"].reverse()
        shuffled["tensors"].reverse()
        shuffled["storages"].reverse()
        self.assertEqual(
            liveness.analyze_model_lifetimes(original).to_dict(),
            liveness.analyze_model_lifetimes(shuffled).to_dict(),
        )

    def test_invalid_input_is_rejected_before_analysis(self):
        plan = _plan()
        plan["tasks"][0]["inputs"].append("tensor.missing")
        with self.assertRaises(liveness.InvalidModelPlanError) as context:
            liveness.analyze_model_lifetimes(plan)
        self.assertIn("unknown_tensor_reference", str(context.exception))

    def test_unreferenced_storage_is_rejected_explicitly(self):
        plan = _plan()
        plan["storages"].append(
            {
                "storage_id": "storage.orphan",
                "size_bytes": 8,
                "alignment": 8,
                "device": "xpu:0",
                "allocation_kind": "temporary",
                "source": "invalid orphan fixture",
            }
        )
        with self.assertRaises(liveness.ModelPlanAnalysisError) as context:
            liveness.analyze_model_lifetimes(plan)
        self.assertEqual(context.exception.code, "unreferenced_storage")


if __name__ == "__main__":
    unittest.main()
