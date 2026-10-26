"""Pure tests for separating schema failures from checksum failures."""
from pathlib import Path
import copy
import sys
import unittest

sys.path.insert(0, str(Path(__file__).parents[1] / "scripts"))
from verify_replay_policy_schema_rejection import digest, unknown_schema_document


class SchemaFixtureTest(unittest.TestCase):
    def document(self):
        body = {"schema": "ppu-exact-replay-policy-v1", "identity": {"model_id": "fixture"},
                "entries": [[1, 8]], "evidence": {"label": "pure fixture, not model qualification"}}
        return {**body, "sha256": digest(body)}

    def test_schema_changes_with_a_valid_digest_and_original_is_unchanged(self):
        original = self.document()
        saved = copy.deepcopy(original)
        negative = unknown_schema_document(original)
        self.assertEqual(original, saved)
        self.assertEqual({key for key in original if original[key] != negative[key]}, {"schema", "sha256"})
        self.assertEqual(negative["sha256"], digest({key: value for key, value in negative.items() if key != "sha256"}))
        negative["identity"]["model_id"] = "changed"
        self.assertEqual(original, saved)

    def test_corrupt_original_is_not_used_as_a_schema_only_fixture(self):
        original = self.document()
        original["sha256"] = "0" * 64
        with self.assertRaises(ValueError):
            unknown_schema_document(original)

    def test_unknown_original_schema_is_rejected(self):
        for value in (None, [], {"schema": "unknown"}):
            with self.subTest(value=value), self.assertRaises(ValueError):
                unknown_schema_document(value)


if __name__ == "__main__":
    unittest.main()
