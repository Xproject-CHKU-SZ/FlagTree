from __future__ import annotations

import importlib.util
import json
from pathlib import Path
import sys
import unittest


REPO_ROOT = Path(__file__).resolve().parents[4]
EXAMPLE_DIR = REPO_ROOT / "docs" / "project-plan" / "examples" / "f08-g01"


def _load_validator():
    schema_path = REPO_ROOT / "python" / "flagtree" / "memory_planner" / "schema.py"
    spec = importlib.util.spec_from_file_location("flagtree_model_plan_schema_test", schema_path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load validator from {schema_path}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    spec.loader.exec_module(module)
    return module.validate_model_plan


validate_model_plan = _load_validator()


def _load(name: str):
    with (EXAMPLE_DIR / name).open("r", encoding="utf-8") as handle:
        return json.load(handle)


def _codes(name: str) -> set[str]:
    return {issue.code for issue in validate_model_plan(_load(name))}


class ModelPlanSchemaTest(unittest.TestCase):
    def test_minimal_linear_alias_plan_is_valid(self):
        self.assertEqual(validate_model_plan(_load("minimal-linear-alias.json")), [])

    def test_storage_size_is_required(self):
        self.assertIn("missing_storage_size", _codes("invalid-missing-storage-size.json"))

    def test_unknown_task_reference_is_rejected(self):
        self.assertIn("unknown_task_reference", _codes("invalid-unknown-task-reference.json"))

    def test_producer_consumer_mismatch_is_rejected(self):
        codes = _codes("invalid-producer-consumer.json")
        self.assertIn("producer_mismatch", codes)
        self.assertIn("consumer_mismatch", codes)
        self.assertIn("missing_producer", codes)

    def test_validation_order_is_deterministic(self):
        document = _load("invalid-producer-consumer.json")
        first = validate_model_plan(document)
        second = validate_model_plan(document)
        self.assertEqual(first, second)
        self.assertEqual(first, sorted(first))


if __name__ == "__main__":
    unittest.main()
