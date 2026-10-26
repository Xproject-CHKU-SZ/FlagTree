"""Pure CPU/stdlib contracts, including real pinned G1 lifetime recomputation."""
import copy
import json
import os
from pathlib import Path
import sys
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parent))
from audit_rotary import analysis_plan, candidates, literal_args, load_g1, observed_layout, run_g1


def fixture():
    graph = [
        {"name": "src", "target": "aten.clone.default", "args": "(input,)", "kwargs": "{}", "op": "call_function"},
        {"name": "low", "target": "aten.slice.Tensor", "args": "(src, 3, 0, 4)", "kwargs": "{}", "op": "call_function"},
        {"name": "high", "target": "aten.slice.Tensor", "args": "(src, 3, 4, 9223372036854775807)", "kwargs": "{}", "op": "call_function"},
        {"name": "neg", "target": "aten.neg.default", "args": "(high,)", "kwargs": "{}", "op": "call_function"},
        {"name": "cat", "target": "aten.cat.default", "args": "([neg, low], -1)", "kwargs": "{}", "op": "call_function"},
        {"name": "target", "target": "aten.mul.Tensor", "args": "(cat, scale)", "kwargs": "{}", "op": "call_function"},
    ]
    tensors = []
    storage_sizes = {"input": 32, "scale": 32, "src": 32, "neg": 16, "cat": 32, "target": 32}
    users = {"input": ["src"], "scale": ["target"], "src": ["low", "high"],
             "low": ["cat"], "high": ["neg"], "neg": ["cat"], "cat": ["target"], "target": []}
    for name in users:
        tensors.append({"tensor_id": "tensor." + name, "source_value": name,
            "storage_id": "storage." + ("src" if name in ("low", "high") else name),
            "producer": None if name in ("input", "scale") else "task." + name,
            "consumers": ["task." + u for u in users[name]], "dtype": "float32",
            "shape": [1, 1, 1, 4 if name in ("low", "high", "neg") else 8],
            "storage_offset_bytes": 16 if name == "high" else 0,
            "is_graph_output": name == "target", "is_persistent": False, "is_mutated": False})
    inputs = {"src": ["input"], "low": ["src"], "high": ["src"], "neg": ["high"],
              "cat": ["neg", "low"], "target": ["cat", "scale"]}
    tasks = []
    for i, node in enumerate(graph):
        tasks.append({"task_id": "task." + node["name"], "source_node": node["name"],
            "kernel_id": node["target"], "predecessors": [] if i == 0 else [tasks[-1]["task_id"]],
            "inputs": ["tensor." + n for n in inputs[node["name"]]],
            "outputs": ["tensor." + node["name"]], "region_id": None,
            "device": "cuda:0", "stream": "stream:0"})
    plan = {"schema_version": "f08-g01-model-plan/0.1", "plan_id": "fixture", "model_id": "fixture",
            "tasks": tasks, "tensors": tensors, "regions": [], "shape_bindings": {},
            "storages": [{"storage_id": "storage." + name, "size_bytes": size, "alignment": 1,
                "device": "cuda:0", "allocation_kind": "input" if name in ("input", "scale") else
                "output" if name == "target" else "temporary", "source": "fixture"}
                for name, size in storage_sizes.items()]}
    catalog = {}
    for t in tensors:
        name = t["source_value"]
        size = storage_sizes[t["storage_id"].removeprefix("storage.")]
        catalog[name] = {"device": "cuda:0", "storage_nbytes": size, "storage_pointer": 1024,
            "members": [{"source_value": name, "dtype": t["dtype"], "shape": t["shape"],
                         "stride": [8, 8, 8, 1], "byte_offset": t["storage_offset_bytes"]}]}
    batch = {"storage_catalog": catalog, "nodes": []}
    return graph, plan, batch


class PatternContracts(unittest.TestCase):
    def setUp(self):
        self.graph, self.plan, self.batch = fixture()

    def accepted(self):
        found, rejected = candidates(self.graph, self.plan, self.batch)
        self.assertEqual(len(found), 1, rejected)
        self.assertEqual(rejected, [])
        return found

    def rejected(self):
        found, rejected = candidates(self.graph, self.plan, self.batch)
        self.assertEqual(found, [])
        self.assertEqual(len(rejected), 1)

    def test_exact_rotate_half_pattern(self):
        found = self.accepted()[0]
        self.assertEqual((found["cat_bytes"], found["neg_bytes"]), (32, 16))
        self.assertEqual(found["source_lifetime_must_extend_to"], "task.target")

    def test_parser_never_executes_call(self):
        with self.assertRaises(ValueError):
            literal_args({"args": "(__import__('os').system('exit'),)", "kwargs": "{}"})

    def test_parser_rejects_kwargs(self):
        with self.assertRaises(ValueError):
            literal_args({"args": "(src,)", "kwargs": "{'axis': 3}"})

    def test_cat_extra_user_rejected(self):
        self.plan["tensors"][-2]["consumers"].append("task.other")
        self.rejected()

    def test_slice_extra_user_rejected(self):
        next(t for t in self.plan["tensors"] if t["source_value"] == "low")["consumers"].append("task.other")
        self.rejected()

    def test_slice_storage_mismatch_rejected(self):
        next(t for t in self.plan["tensors"] if t["source_value"] == "low")["storage_id"] = "storage.input"
        self.rejected()

    def test_intervening_task_not_silently_reordered(self):
        task = copy.deepcopy(self.plan["tasks"][0])
        task["source_node"], task["task_id"] = "other_effect", "task.other_effect"
        self.plan["tasks"].insert(-1, task)
        self.rejected()

    def test_cat_alias_rejected(self):
        item = copy.deepcopy(self.plan["tensors"][-2])
        item["source_value"], item["tensor_id"] = "other_view", "tensor.other_view"
        self.plan["tensors"].append(item)
        self.rejected()

    def test_graph_output_intermediate_rejected(self):
        self.plan["tensors"][-2]["is_graph_output"] = True
        self.rejected()

    def test_mutated_source_alias_rejected(self):
        next(t for t in self.plan["tensors"] if t["source_value"] == "high")["is_mutated"] = True
        self.rejected()

    def test_bad_slice_step_rejected(self):
        self.graph[2]["args"] = "(src, 3, 4, 8, 2)"
        self.rejected()

    def test_nonexhaustive_slice_rejected(self):
        self.graph[2]["args"] = "(src, 3, 4, 7)"
        self.rejected()

    def test_reversed_cat_order_rejected(self):
        self.graph[4]["args"] = "([low, neg], -1)"
        self.rejected()

    def test_broadcast_mismatch_rejected(self):
        self.batch["storage_catalog"]["scale"]["members"][0]["shape"] = [1, 2, 1, 8]
        self.rejected()

    def test_cross_stream_rejected(self):
        self.plan["tasks"][-1]["stream"] = "stream:1"
        self.rejected()

    def test_wrong_device_rejected(self):
        self.batch["storage_catalog"]["src"]["device"] = "cpu"
        self.rejected()

    def test_unknown_or_negative_stride_rejected(self):
        self.batch["storage_catalog"]["src"]["members"][0]["stride"] = [8, 8, 8, -1]
        self.rejected()

    def test_noncontiguous_source_is_recorded_not_copied(self):
        self.batch["storage_catalog"]["src"]["members"][0]["stride"] = [8, 1, 8, 1]
        self.assertEqual(self.accepted()[0]["layouts"]["src"]["stride"], [8, 1, 8, 1])

    def test_layout_conflict_rejected(self):
        group = copy.deepcopy(self.batch["storage_catalog"]["src"])
        group["members"][0]["byte_offset"] = 4
        self.batch["storage_catalog"]["src_alternate"] = group
        with self.assertRaisesRegex(ValueError, "ambiguous"):
            observed_layout(self.batch, "src")

    def test_pointer_reuse_does_not_establish_aliases(self):
        # Fixture intentionally uses the same pointer for unrelated catalog records.
        self.assertEqual(self.accepted()[0]["cat_bytes"], 32)

    def test_no_input_mutation(self):
        before = json.dumps((self.graph, self.plan, self.batch), sort_keys=True)
        found = self.accepted()
        derived, _ = analysis_plan(self.plan, self.batch, found)
        self.assertEqual(before, json.dumps((self.graph, self.plan, self.batch), sort_keys=True))
        self.assertNotEqual(derived, self.plan)

    def test_rewire_to_original_source_not_cat(self):
        derived, _ = analysis_plan(self.plan, self.batch, self.accepted())
        target = derived["tasks"][-1]
        self.assertEqual(target["inputs"], ["tensor.src", "tensor.scale"])
        self.assertEqual(target["kernel_id"], "proposal.rotary_indexed_mul.not_implemented")
        self.assertNotIn("storage.cat", {s["storage_id"] for s in derived["storages"]})

    def test_duplicate_removal_rejected(self):
        found = self.accepted()
        with self.assertRaisesRegex(ValueError, "overlapping"):
            analysis_plan(self.plan, self.batch, found + found)

    def test_false_inplace_observation_rejected(self):
        self.batch["nodes"] = [{"selected_binding": {"observed_same_address": False}}]
        with self.assertRaisesRegex(ValueError, "observed inplace"):
            analysis_plan(self.plan, self.batch, [])


class RealG1Integration(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        default = Path(__file__).resolve().parents[2] / "flagtree/memory_planner"
        cls.g1 = staticmethod(load_g1(Path(os.environ.get("F08_ROTARY_G1_DIR", default))))

    def test_real_g1_recomputes_source_storage_extension(self):
        graph, plan, batch = fixture()
        found, _ = candidates(graph, plan, batch)
        before, _ = analysis_plan(plan, batch, [])
        after, _ = analysis_plan(plan, batch, found)
        old, new = self.g1(before), self.g1(after)
        self.assertEqual(old.peak_summary.accounted_peak_bytes, 144)
        self.assertEqual(new.peak_summary.accounted_peak_bytes, 128)
        a = next(s for s in old.storages if s.storage_id == "storage.src")
        b = next(s for s in new.storages if s.storage_id == "storage.src")
        self.assertEqual(old.events[a.lifetime_end].task_id, "task.cat")
        self.assertEqual(new.events[b.lifetime_end].task_id, "task.target")
        # Removing a 32B cat plus 16B neg saves 16B at peak, NOT 48B.
        self.assertEqual(old.peak_summary.accounted_peak_bytes - new.peak_summary.accounted_peak_bytes, 16)

    def test_real_g1_rejects_dangling_plan(self):
        _, plan, _ = fixture()
        plan["tasks"][-1]["inputs"].append("tensor.nonexistent")
        with self.assertRaises(ValueError):
            self.g1(plan)

    def test_recursion_budget_restored_on_success_and_failure(self):
        _, plan, _ = fixture()
        previous = sys.getrecursionlimit()
        run_g1(self.g1, plan)
        self.assertEqual(sys.getrecursionlimit(), previous)
        plan["tasks"][-1]["inputs"].append("tensor.nonexistent")
        with self.assertRaises(ValueError):
            run_g1(self.g1, plan)
        self.assertEqual(sys.getrecursionlimit(), previous)


if __name__ == "__main__":
    unittest.main()
