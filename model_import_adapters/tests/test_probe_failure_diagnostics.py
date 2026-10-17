"""Array fixtures test failure evidence only; no CPU model forward is run."""
import importlib.util
import json
from pathlib import Path
import tempfile
import unittest

import numpy as np


class ArrayTensor:
    def __init__(self, data):
        self.data = np.asarray(data)

    def detach(self):
        return self

    def cpu(self):
        return self

    def numpy(self):
        return self.data


class ProbeFailureDiagnosticsTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        path = Path(__file__).resolve().parents[1] / "scripts/run_dynamic_text_pilot.py"
        spec = importlib.util.spec_from_file_location("diagnostic_pilot", path)
        cls.module = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(cls.module)

    def test_pass_does_not_create_failure_files(self):
        with tempfile.TemporaryDirectory() as d:
            result = self.module.compare_probe_outputs(
                None, None, comparator=lambda *a, **k: ["passed"], kind="source",
                output_dir=Path(d), batch=2, sequence=24, inputs={})
            self.assertEqual(result, ["passed"])
            self.assertEqual(list(Path(d).iterdir()), [])

    def test_failure_preserves_original_exception_and_tensors(self):
        def failed(*args, **kwargs):
            self.assertEqual(kwargs, {"atol": 3e-4, "rtol": 3e-4})
            raise RuntimeError("actual comparison failed")
        with tempfile.TemporaryDirectory() as d:
            p = Path(d)
            with self.assertRaisesRegex(RuntimeError, "actual comparison failed"):
                self.module.compare_probe_outputs(
                    ArrayTensor(np.ones((2, 3), dtype=np.float32)),
                    ArrayTensor(np.zeros((2, 3), dtype=np.float32)),
                    comparator=failed, kind="compiled", output_dir=p, batch=2,
                    sequence=24, inputs={"input_ids": ArrayTensor(np.ones((2, 24), dtype=np.int64))})
            report = json.loads((p / "comparison-failure-compiled-2x24.json").read_text())
            self.assertEqual(report["failed_elements"], 6)
            self.assertEqual(report["max_abs_error"], 1.)
            self.assertTrue(report["same_contract"])
            self.assertEqual(report["sha256"], self.module.sha256(Path(report["archive"])))
            with np.load(report["archive"], allow_pickle=False) as archive:
                self.assertEqual(archive["input_ids"].shape, (2, 24))
                self.assertTrue(np.all(archive["expected_output"] == 1))

    def test_shape_mismatch_is_recorded_without_broadcasting(self):
        with tempfile.TemporaryDirectory() as d:
            def failed(*args, **kwargs):
                raise ValueError("shape mismatch")
            with self.assertRaisesRegex(ValueError, "shape mismatch"):
                self.module.compare_probe_outputs(
                    ArrayTensor(np.ones((2, 3))), ArrayTensor(np.zeros((3, 2))),
                    comparator=failed, kind="roundtrip", output_dir=Path(d),
                    batch=2, sequence=24, inputs={})
            report = json.loads((Path(d) / "comparison-failure-roundtrip-2x24.json").read_text())
            self.assertFalse(report["same_contract"])
            self.assertNotIn("failed_elements", report)


if __name__ == "__main__":
    unittest.main()
