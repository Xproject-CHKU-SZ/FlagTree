"""Pure software contracts; synthetic fixtures are NOT compiler/PPU evidence."""
import copy
import importlib.util
import json
from pathlib import Path
import sys
import tempfile
import types
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parent))
from contracts import (ARMS, arm_order, check_selection, compiler_identity, fingerprint,
                       latency, parse_smi, require_idle, save_json, summarize)
from graph import make_plan
from run_suite import validate_config

RAW = """| 14 PPU-ZW810E N/A | bus | 0 |
| N/A 37C N/A 82W / 400W | 2MiB / 98304MiB | 0% Default |
| | | Disabled |
| Processes: |
| PPU GI CI PID Type Process name PPU Memory |
| 0 N/A N/A 111 C other 100MiB |
"""


class Contracts(unittest.TestCase):
    def test_correct_selection(self):
        check_selection(14, {"CUDA_VISIBLE_DEVICES": "14", "FLAGTREE_BACKEND": "ppu"})

    def test_wrong_card(self):
        with self.assertRaises(ValueError):
            check_selection(13, {"CUDA_VISIBLE_DEVICES": "13", "FLAGTREE_BACKEND": "ppu"})

    def test_wrong_visible(self):
        with self.assertRaises(ValueError):
            check_selection(14, {"CUDA_VISIBLE_DEVICES": "0", "FLAGTREE_BACKEND": "ppu"})

    def test_wrong_backend(self):
        with self.assertRaises(ValueError):
            check_selection(14, {"CUDA_VISIBLE_DEVICES": "14", "FLAGTREE_BACKEND": "xpu"})

    def test_idle(self):
        require_idle(parse_smi(RAW))

    def test_busy_process(self):
        with self.assertRaises(ValueError):
            require_idle(parse_smi(RAW + "| 14 N/A N/A 222 C ours 4MiB |\n"))

    def test_busy_memory(self):
        with self.assertRaises(ValueError):
            require_idle(parse_smi(RAW.replace("2MiB", "80MiB")))

    def test_busy_utilization(self):
        with self.assertRaises(ValueError):
            require_idle(parse_smi(RAW.replace("0% Default", "1% Default")))

    def test_idle_baseline_10mib_passes(self):
        # 2026-10-13 host baseline: empty cards report 10 MiB with no process.
        require_idle(parse_smi(RAW.replace("2MiB", "10MiB")))

    def test_busy_memory_above_baseline_rejected(self):
        with self.assertRaises(ValueError):
            require_idle(parse_smi(RAW.replace("2MiB", "11MiB")))

    def test_busy_process_at_baseline_memory_rejected(self):
        # The baseline must never let a live card-14 process through.
        with self.assertRaises(ValueError):
            require_idle(parse_smi(RAW.replace("2MiB", "10MiB") + "| 14 N/A N/A 333 C ours 4MiB |\n"))

    def test_incomplete_memory_info_rejected(self):
        with self.assertRaises(ValueError):
            parse_smi(RAW.replace("2MiB / 98304MiB", "N/A"))

    def test_incomplete_utilization_info_rejected(self):
        with self.assertRaises(ValueError):
            parse_smi(RAW.replace("0% Default", "N/A Default"))

    def test_unknown_smi(self):
        with self.assertRaises(ValueError):
            parse_smi("device 14 looks idle")

    def test_process_table_required(self):
        with self.assertRaises(ValueError):
            parse_smi(RAW.split("Processes:")[0])

    def test_unknown_process_format(self):
        with self.assertRaises(ValueError):
            parse_smi(RAW + "| 14 unknown format |\n")

    def test_rotation_balanced(self):
        for arm in ARMS:
            self.assertEqual(sorted(arm_order(i).index(arm) for i in range(3)), [0, 1, 2])

    def rows(self):
        rows = []
        for arm in ARMS:
            for _ in range(3):
                rows.append({"arm": arm, "case_sha256": "case", "graph_sha256": "graph", "plan_sha256": "plan",
                             "input_sha256": "input", "environment_sha256": "env", "compiler_set_sha256": "kernel",
                             "output_sha256": "aten" if arm == "torch" else "compiled", "samples_s": [0.001] * 30,
                             "memory": {"peak_allocated_bytes": 10 if arm != "flagtree-inplace" else 5,
                                        "peak_reserved_bytes": 20}})
        return rows

    def test_summary_isolates_buffer_effect(self):
        result = summarize(self.rows())
        self.assertEqual(result["buffer_effect"]["allocated_reduction_bytes"], 5)
        self.assertEqual(result["buffer_effect"]["latency_ratio_after_over_before"], 1)

    def test_summary_incomplete(self):
        with self.assertRaises(ValueError):
            summarize(self.rows()[:-1])

    def test_summary_changed_graph(self):
        rows = self.rows()
        rows[0]["graph_sha256"] = "changed"
        with self.assertRaises(ValueError):
            summarize(rows)

    def test_summary_changed_binary(self):
        rows = self.rows()
        rows[0]["compiler_set_sha256"] = "changed"
        with self.assertRaises(ValueError):
            summarize(rows)

    def test_summary_changed_output(self):
        rows = self.rows()
        rows[-1]["output_sha256"] = "different"
        with self.assertRaises(ValueError):
            summarize(rows)

    def test_invalid_samples(self):
        for samples in ([], [0], [-1], [float("nan")]):
            with self.assertRaises(ValueError):
                latency(samples)

    def test_compiler_identity_not_paths(self):
        first = {"gelu": {"kernel_hash": "hash", "compiler_source_sha256": "source", "stages": {
            "hgbin": {"file": "/a/path", "sha256": "binary"}}}}
        second = copy.deepcopy(first)
        second["gelu"]["stages"]["hgbin"]["file"] = "/b/path"
        self.assertEqual(compiler_identity(first), compiler_identity(second))

    def test_no_overwrite(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "result.json"
            save_json(path, {"first": True})
            with self.assertRaises(FileExistsError):
                save_json(path, {"second": True})

    def test_config(self):
        validate_config(json.loads((Path(__file__).parent / "models.json").read_text()))

    def test_config_rejects_revision(self):
        config = json.loads((Path(__file__).parent / "models.json").read_text())
        config["models"][0]["revision"] = "wrong"
        with self.assertRaises(ValueError):
            validate_config(config)

    def test_minilm_first(self):
        config = json.loads((Path(__file__).parent / "models.json").read_text())
        config["models"].reverse()
        with self.assertRaises(ValueError):
            validate_config(config)

    def test_exact_64(self):
        config = json.loads((Path(__file__).parent / "models.json").read_text())
        config["performance_texts"].pop()
        with self.assertRaises(ValueError):
            validate_config(config)

    def test_fingerprint_binds_shape(self):
        self.assertNotEqual(fingerprint({"shape": [32, 24]}), fingerprint({"shape": [1, 24]}))


class GraphAdapter(unittest.TestCase):
    def graph(self):
        class Target:
            _schema = types.SimpleNamespace(arguments=[])
            def __str__(self):
                return "aten.gelu.default"
        x = types.SimpleNamespace(name="x", op="placeholder", target="x", args=(), kwargs={}, all_input_nodes=[])
        a = types.SimpleNamespace(name="a", op="call_function", target=Target(), args=(x,), kwargs={}, all_input_nodes=[x])
        out = types.SimpleNamespace(name="output", op="output", target="output", args=((a,),), kwargs={}, all_input_nodes=[a])
        records = {"x": {"device": "cuda:0", "pointer": 100, "nbytes": 16, "numel": 4, "dtype": "float32", "shape": [4]},
                   "a": {"device": "cuda:0", "pointer": 200, "nbytes": 16, "numel": 4, "dtype": "float32", "shape": [4]}}
        return types.SimpleNamespace(nodes=[x, a, out]), records

    def test_capacity_not_view_size(self):
        graph, records = self.graph()
        records["a"].update(pointer=100, shape=[1000])
        plan = make_plan(graph, records, {"x": "USER_INPUT"}, "fixture", "stream:0")
        self.assertEqual(len(plan["storages"]), 1)
        self.assertEqual(plan["storages"][0]["size_bytes"], 16)
        self.assertTrue(plan["tensors"][1]["is_graph_output"])

    def test_existing_g1_schema(self):
        path = Path(__file__).resolve().parents[2] / "flagtree/memory_planner/schema.py"
        spec = importlib.util.spec_from_file_location("f08_eval_schema_test", path)
        module = importlib.util.module_from_spec(spec)
        sys.modules[spec.name] = module
        spec.loader.exec_module(module)
        graph, records = self.graph()
        plan = make_plan(graph, records, {"x": "USER_INPUT"}, "fixture", "stream:0")
        self.assertEqual(module.validate_model_plan(plan), [])

    def test_unknown_side_effect(self):
        graph, records = self.graph()
        graph.nodes[1].target = lambda x: x
        with self.assertRaises(ValueError):
            make_plan(graph, records, {}, "fixture", "stream:0")

    def test_capacity_mismatch(self):
        graph, records = self.graph()
        records["a"].update(pointer=100, nbytes=32)
        with self.assertRaises(ValueError):
            make_plan(graph, records, {}, "fixture", "stream:0")


if __name__ == "__main__":
    unittest.main()
