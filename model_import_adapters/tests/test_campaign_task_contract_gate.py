"""Metadata-only task gate tests do not count any synthetic model success."""
import importlib.util
from pathlib import Path
import unittest

PATH = Path(__file__).parents[1] / "scripts/collect_dynamic_campaign_acceptance_v3.py"
SPEC = importlib.util.spec_from_file_location("task_gate", PATH)
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class TaskContractGateTests(unittest.TestCase):
    def setUp(self):
        self.record = {"model_id": "fixture/custom-task", "revision": "a" * 40,
                       "accepted": True, "errors": []}
        self.review = {"decisions": [{"model_id": self.record["model_id"],
                        "revision": self.record["revision"], "count_eligible": False}]}

    def test_artifact_success_is_not_original_task_success(self):
        row = MODULE.apply_task_review([self.record], self.review)[0]
        self.assertFalse(row["accepted"])
        self.assertTrue(row["artifact_gate_accepted"])
        self.assertIn("original_task_contract_not_verified", row["errors"])
        self.assertTrue(self.record["accepted"])
        self.assertEqual(self.record["errors"], [])

    def test_review_applies_only_to_its_fixed_revision(self):
        self.record["revision"] = "b" * 40
        self.assertTrue(MODULE.apply_task_review([self.record], self.review)[0]["accepted"])

    def test_duplicate_success_counts_once(self):
        result = MODULE.summarize([self.record, self.record], 300)
        self.assertEqual(result["accepted_unique_models"], 1)
        self.assertEqual(result["missing_to_target"], 299)

    def test_task_exclusion_preserves_failed_attempt_record(self):
        result = MODULE.summarize(MODULE.apply_task_review([self.record], self.review), 300)
        self.assertEqual(result["case_attempts"], 1)
        self.assertEqual(result["accepted_unique_models"], 0)
        self.assertEqual(result["failure_stage_counts"], {"requires_original_task_adapter": 1})

    def test_duplicate_review_rejected(self):
        self.review["decisions"] *= 2
        with self.assertRaisesRegex(ValueError, "Duplicate"):
            MODULE.apply_task_review([self.record], self.review)


if __name__ == "__main__":
    unittest.main()
