import importlib.util
from pathlib import Path
import unittest

spec = importlib.util.spec_from_file_location("scene_pair", Path(__file__).parents[1] / "scripts/benchmark_scene_pair.py")
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)


def rounds(a=100, b=100):
    return [{"A": [a]*100, "B": [b]*100} for _ in range(5)]


class PairStatistics(unittest.TestCase):
    def test_equal_baselines_do_not_claim_speedup(self):
        aa = module.summarize_rounds(rounds())
        gate = module.freeze_gate(aa)
        self.assertEqual(aa["geomean_speedup"], 1)
        self.assertFalse(module.performance_passed(aa, gate))

    def test_positive_constant_pair_passes(self):
        gate = module.freeze_gate(module.summarize_rounds(rounds()))
        self.assertTrue(module.performance_passed(module.summarize_rounds(rounds(100, 80)), gate))

    def test_noisy_calibration_stays_unready(self):
        gate = module.freeze_gate(module.summarize_rounds(rounds(110, 100)))
        self.assertFalse(gate["ready"])
        self.assertFalse(module.performance_passed(module.summarize_rounds(rounds(100, 50)), gate))

    def test_regression_does_not_pass(self):
        gate = module.freeze_gate(module.summarize_rounds(rounds()))
        self.assertFalse(module.performance_passed(module.summarize_rounds(rounds(100, 110)), gate))

    def test_wrong_number_of_rounds_rejected(self):
        with self.assertRaises(ValueError):
            module.summarize_rounds(rounds()[:1])

    def test_invalid_samples_rejected(self):
        for value in [0, -1, float("nan"), float("inf")]:
            with self.subTest(value=value), self.assertRaises(ValueError):
                module.summarize_rounds(rounds(100, value))

    def test_sample_count_checked(self):
        rows = rounds(); rows[0]["B"].pop()
        with self.assertRaises(ValueError):
            module.summarize_rounds(rows)


if __name__ == "__main__":
    unittest.main()
