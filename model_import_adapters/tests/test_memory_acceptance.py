from pathlib import Path
import sys
import unittest

sys.path.insert(0, str(Path(__file__).parents[1] / "scripts"))
from memory_acceptance import memory_gate_passed, memory_observation


class MemoryPolicyTest(unittest.TestCase):
    def test_over_budget_is_recorded_not_vetoed(self):
        record = memory_observation({"A": 100, "B": 10000000},
                                    {"max_transient_memory_extra_bytes": 1048576})
        self.assertFalse(record["resource_passed"])
        self.assertFalse(record["memory_within_reference_budget"])
        self.assertEqual(record["extra_transient_memory_bytes"], 9999900)
        self.assertTrue(memory_gate_passed(record))

    def test_legacy_default_is_unchanged(self):
        self.assertFalse(memory_gate_passed({"resource_passed": False}))
        self.assertTrue(memory_gate_passed({"resource_passed": True}))

    def test_unknown_policy_is_rejected(self):
        with self.assertRaises(ValueError):
            memory_gate_passed({"memory_policy": "unknown"})


if __name__ == "__main__":
    unittest.main()
