"""CPU-model-free tests for stage2 evidence pairing."""
import copy
import importlib.util
from pathlib import Path
import tempfile
import unittest


SCRIPT = Path(__file__).parents[1] / "scripts" / "build_a100_ppu_comparison.py"
SPEC = importlib.util.spec_from_file_location("build_a100_ppu_comparison", SCRIPT)
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


def pair():
    metadata = {
        "revision": "a" * 40, "weights_sha256": "b" * 64,
        "input_sha256": "c" * 64, "preprocessing_sha256": "d" * 64,
        "input_shapes": [[2, 24], [2, 24]], "output_shapes": [[2, 384]],
        "dtype": "float32", "precision_policy": {"tf32": False},
        "execution_path": "compiled", "timing_scope": "forward",
        "synchronization": "before_after_each_sample", "warmup_runs": 3,
        "measured_runs": 10,
    }
    a = {"model_id": "SAMPLE/model", "status": "passed", "device": "NVIDIA A100", "metadata": metadata, "latency_mean_s": 0.01, "raw_latencies_s": [0.01] * 10}
    b = copy.deepcopy(a)
    b.update(device="PPU-ZW810E", latency_mean_s=0.0125, raw_latencies_s=[0.0125] * 10)
    return a, b


class PairingTests(unittest.TestCase):
    def test_latency_threshold_uses_inverse_latency(self):
        a, b = pair()
        r = MODULE.compare_pair(a, b)
        self.assertEqual(r["acceptance"]["status"], "passed")
        self.assertEqual(r["acceptance"]["ppu_performance_over_a100"], 0.8)
        self.assertEqual(r["acceptance"]["max_accepted_ppu_latency_s"], 0.0125)

    def test_qualified_slow_ppu_fails(self):
        a, b = pair()
        b.update(latency_mean_s=0.02, raw_latencies_s=[0.02] * 10)
        self.assertEqual(MODULE.compare_pair(a, b)["acceptance"]["status"], "failed")

    def test_eager_compiled_is_diagnostic_only(self):
        a, b = pair()
        a["metadata"]["execution_path"] = "eager"
        r = MODULE.compare_pair(a, b)
        self.assertEqual(r["acceptance"]["status"], "not_comparable")
        self.assertIsNone(r["acceptance"]["ppu_performance_over_a100"])
        self.assertIsNotNone(r["diagnostic_latency_ratio_a100_over_ppu"])

    def test_missing_revision_and_shape_are_not_equal_evidence(self):
        a, b = pair()
        a["metadata"]["revision"] = b["metadata"]["revision"] = None
        a["metadata"]["input_shapes"] = None
        r = MODULE.compare_pair(a, b)
        self.assertIn("missing_revision", r["not_comparable_reasons"])
        self.assertIn("missing_input_shapes", r["not_comparable_reasons"])
        self.assertEqual(r["acceptance"]["status"], "not_comparable")

    def test_nonfinite_and_incomplete_samples_do_not_pass(self):
        a, b = pair()
        b["latency_mean_s"] = float("nan")
        b["raw_latencies_s"] = [0.01]
        r = MODULE.compare_pair(a, b)
        self.assertEqual(r["acceptance"]["status"], "not_comparable")
        self.assertIsNone(r["diagnostic_latency_ratio_a100_over_ppu"])

    def test_model_device_and_dtype_mismatch(self):
        a, b = pair()
        a["model_id"] = "SAMPLE/other"
        a["device"] = "not known"
        a["metadata"]["dtype"] = "float16"
        r = MODULE.compare_pair(a, b)
        self.assertIn("model_id_mismatch", r["not_comparable_reasons"])
        self.assertIn("a100_device_not_proven", r["not_comparable_reasons"])
        self.assertIn("mismatch_dtype", r["not_comparable_reasons"])

    def test_failed_ppu_does_not_get_ratio(self):
        a, b = pair()
        b["status"] = "failed"
        r = MODULE.compare_pair(a, b)
        self.assertIsNone(r["diagnostic_latency_ratio_a100_over_ppu"])
        self.assertEqual(r["acceptance"]["status"], "not_comparable")

    def test_percentile_derived_from_actual_raw_samples(self):
        self.assertEqual(MODULE.percentile([4, 1, 3, 2], 95), 3.85)
        self.assertIsNone(MODULE.percentile([0.01, float("inf")], 95))

    def test_legacy_fp16_does_not_invent_tensor_metadata(self):
        with tempfile.TemporaryDirectory() as directory:
            p = Path(directory) / "source.json"
            p.write_text("{}")
            d = {"model_info": {"model_name": "SAMPLE/model"}, "test_result": {"model_name": "SAMPLE/model", "status": "Success", "fp16": "OK", "latency_mean": 0.01, "raw_latencies": [0.011, 0.009]}, "config": {"use_fp16": True}}
            r = MODULE.normalize_a100(d, p)
            self.assertIsNone(r["metadata"]["dtype"])
            self.assertIsNone(r["metadata"]["input_shapes"])
            self.assertIsNone(r["metadata"]["revision"])
            self.assertTrue(r["fp16_request"])

    def test_stage1_is_required_before_building_report(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            with self.assertRaisesRegex(ValueError, "stage1"):
                MODULE.build_report(root, root, root)


if __name__ == "__main__":
    unittest.main(verbosity=2)
