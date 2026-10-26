import copy
import json
from pathlib import Path
import sys
import tempfile
import unittest
from unittest import mock

sys.path.insert(0, str(Path(__file__).parents[1] / "scripts"))
from build_shape_release_enrollment import read_snapshot_index, resolve_evidence_case


class SnapshotCaseTest(unittest.TestCase):
    def fixture(self, root, wave="wave-old"):
        case = root / wave / "cases" / "fixture-attempt1"
        case.mkdir(parents=True)
        current = root / "wave-new"; current.mkdir(exist_ok=True)
        receipt = {"model_id": "fixture/model", "case": f"/workspace/run/{wave}/cases/fixture-attempt1",
                   "calibration_sha256": "a" * 64, "comparison_sha256": "b" * 64}
        record = {"model_id": receipt["model_id"], "case": receipt["case"], "candidate_exit_code": 0,
                  "status": "calibrated", "exit_code": 0, "profile_exit_code": 0,
                  "report_sha256": receipt["calibration_sha256"],
                  "candidate_report_sha256": receipt["comparison_sha256"]}
        return current, case, {"records": [record]}, receipt

    def test_same_wave_default_mapping_remains_supported(self):
        with tempfile.TemporaryDirectory() as d:
            current, case, state, receipt = self.fixture(Path(d))
            self.assertEqual(resolve_evidence_case(state, receipt, case.parent.parent), case.resolve())

    def test_inherited_case_requires_explicit_mapping(self):
        with tempfile.TemporaryDirectory() as d:
            current, case, state, receipt = self.fixture(Path(d))
            with self.assertRaisesRegex(ValueError, "Inherited cases require explicit"):
                resolve_evidence_case(state, receipt, current)
            self.assertEqual(resolve_evidence_case(state, receipt, current, Path(d), "/workspace/run"), case.resolve())

    def test_identical_basename_in_new_wave_does_not_replace_original_evidence(self):
        with tempfile.TemporaryDirectory() as d:
            current, case, state, receipt = self.fixture(Path(d))
            impostor = current / "cases" / case.name; impostor.mkdir(parents=True)
            self.assertEqual(resolve_evidence_case(state, receipt, current, Path(d), "/workspace/run"), case.resolve())
            with self.assertRaises(ValueError): resolve_evidence_case(state, receipt, current)

    def test_missing_duplicate_incomplete_or_hash_drifted_record_rejected(self):
        with tempfile.TemporaryDirectory() as d:
            current, case, state, receipt = self.fixture(Path(d))
            variants = [{"records": []}, {"records": state["records"] * 2}]
            for field, value in (("candidate_exit_code", 1), ("profile_exit_code", 1), ("exit_code", 1),
                                 ("status", "running"), ("report_sha256", "changed"),
                                 ("candidate_report_sha256", "changed"), ("case", "/other/cases/model")):
                other = copy.deepcopy(state); other["records"][0][field] = value; variants.append(other)
            for other in variants:
                with self.assertRaises(ValueError): resolve_evidence_case(other, receipt, current, Path(d), "/workspace/run")

    def test_wrong_root_traversal_and_missing_pair_rejected(self):
        with tempfile.TemporaryDirectory() as d:
            current, case, state, receipt = self.fixture(Path(d))
            for origin in ("/another/run", "/", "relative/run", "/workspace/../run", "C:\\workspace\\run"):
                with self.assertRaises(ValueError): resolve_evidence_case(state, receipt, current, Path(d), origin)
            with self.assertRaises(ValueError): resolve_evidence_case(state, receipt, current, Path(d))
            with self.assertRaises((ValueError, FileNotFoundError)):
                resolve_evidence_case(state, receipt, current, current, "/workspace/run")
            other = copy.deepcopy(receipt); other["case"] = "/workspace/run/wave-old/../cases/fixture-attempt1"
            state["records"][0]["case"] = other["case"]
            with self.assertRaises(ValueError): resolve_evidence_case(state, other, current, Path(d), "/workspace/run")

    def test_noncanonical_remote_case_and_wrong_model_are_not_aliased(self):
        with tempfile.TemporaryDirectory() as d:
            current, case, state, receipt = self.fixture(Path(d))
            other = {**receipt, "model_id": "other/model"}
            with self.assertRaises(ValueError): resolve_evidence_case(state, other, current, Path(d), "/workspace/run")
            for name in ("/workspace/run/wave-old/./cases/fixture-attempt1", "relative/cases/fixture-attempt1"):
                other = {**receipt, "case": name}; changed = copy.deepcopy(state); changed["records"][0]["case"] = name
                with self.assertRaises(ValueError): resolve_evidence_case(changed, other, current, Path(d), "/workspace/run")

    def test_resolved_directory_outside_snapshot_is_rejected(self):
        with tempfile.TemporaryDirectory() as d, tempfile.TemporaryDirectory() as external:
            current, case, state, receipt = self.fixture(Path(d))
            original = Path.resolve
            canonical_case, canonical_external = case.resolve(), Path(external).resolve()
            def resolve(path, *args, **kwargs):
                return canonical_external if path == canonical_case else original(path, *args, **kwargs)
            # Simulate the filesystem result of a directory symlink without
            # requiring elevated symlink privileges on Windows.
            with mock.patch.object(Path, "resolve", resolve):
                with self.assertRaises(ValueError): resolve_evidence_case(state, receipt, current, Path(d), "/workspace/run")

    def test_snapshot_index_rejects_duplicate_absolute_and_traversal_paths(self):
        with tempfile.TemporaryDirectory() as d:
            root = Path(d); path = root / "snapshot-manifest.json"
            row = {"path": "wave-old/cases/model/report.json", "sha256": "a" * 64}
            path.write_text(json.dumps({"entries": [row]}))
            self.assertEqual(read_snapshot_index(root), {row["path"]: row["sha256"]})
            variants = [[row, row]] + [[{**row, "path": name}] for name in
                        ("/absolute", "../escape", "x/../escape", "x\\escape", "x//report", "./report")]
            for rows in variants:
                path.write_text(json.dumps({"entries": rows}))
                with self.assertRaises(ValueError): read_snapshot_index(root)


if __name__ == "__main__": unittest.main()
