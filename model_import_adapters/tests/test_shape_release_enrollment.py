import copy
import hashlib
from pathlib import Path
import sys
import unittest

sys.path.insert(0, str(Path(__file__).parents[1] / "scripts"))
from build_shape_release_enrollment import (GRAPH, MEMORY, SCRIPT, apply_enrollments,
    enroll_model, pending_manifest, require_discovery_scope_ready, validate_evidence_snapshot)
import test_dynamic_shape_audit as paired_fixtures


class EnrollmentTest(unittest.TestCase):
    def accepted(self):
        return [{"model_id": "a/b" if i == 0 else f"fixture/{i}", "revision": "a" * 40,
                 "task": "sentence_embedding_full_pipeline", "status": "passed",
                 "parameter_dtype": "FP32", "device": "PPU-ZW810E", "shape_count": 5}
                for i in range(301)]

    def fixture(self):
        a, b = paired_fixtures.DynamicPairAuditTest().fixture()
        row = self.accepted()[0]
        frozen = {"files": {SCRIPT: "c" * 64, MEMORY: "d" * 64, GRAPH: "e" * 64}}
        a["identity"].update(model_id=row["model_id"], revision=row["revision"], task=row["task"],
            script_sha256=frozen["files"][SCRIPT], memory_policy_sha256=frozen["files"][MEMORY],
            source_files={GRAPH: frozen["files"][GRAPH]}, pt2_sha256="f" * 64)
        receipt = {**row, "audit_status": "passed", "array_comparisons": 120,
                   "source_files_rehashed": 3, "pt2_sha256": "f" * 64, "candidate_outcome": "passed",
                   "calibration_sha256": "1" * 64, "comparison_sha256": "2" * 64}
        return row, receipt, a, b, frozen

    def test_all_unknown_models_remain_pending_not_native_success(self):
        manifest = pending_manifest(self.accepted(), "accepted", "source")
        self.assertEqual(len(manifest["models"]), 301)
        self.assertEqual(manifest["final_C1_passed"], 0)
        self.assertTrue(all(x["mode"] == "pending_discovery" for x in manifest["models"]))
        with self.assertRaises(ValueError): require_discovery_scope_ready(manifest, ["a/b"])

    def test_passed_discovery_is_candidate_not_final_acceptance(self):
        row, receipt, a, b, frozen = self.fixture()
        entry = enroll_model(row, receipt, a, b, frozen)
        manifest = pending_manifest(self.accepted(), "accepted", "source")
        result = apply_enrollments(manifest, [entry])
        self.assertEqual(result["counts"]["pending_discovery"], 300)
        self.assertEqual(entry["mode"], "candidate_requires_release_validation")
        self.assertEqual(entry["final_C1_status"], "pending")
        self.assertEqual(result["final_C1_passed"], 0)
        self.assertEqual(manifest["models"][0]["mode"], "pending_discovery")
        self.assertEqual(require_discovery_scope_ready(result, ["a/b"]), [entry])

    def test_old_measurement_version_rejected_even_when_statistics_pass(self):
        row, receipt, a, b, frozen = self.fixture()
        frozen["files"][SCRIPT] = "0" * 64
        with self.assertRaisesRegex(ValueError, "Different measured source"):
            enroll_model(row, receipt, a, b, frozen)

    def test_incomplete_audit_identity_and_pt2_drift_rejected(self):
        for change in ({"array_comparisons": 119}, {"revision": "b" * 40},
                       {"pt2_sha256": "0" * 64}, {"source_files_rehashed": 2}):
            row, receipt, a, b, frozen = self.fixture(); receipt.update(change)
            with self.assertRaises(ValueError): enroll_model(row, receipt, a, b, frozen)

    def test_conflicting_same_id_rejected_identical_receipt_is_idempotent(self):
        entry = enroll_model(*self.fixture())
        manifest = pending_manifest(self.accepted(), "accepted", "source")
        result = apply_enrollments(manifest, [entry, copy.deepcopy(entry)])
        self.assertEqual(result["counts"]["candidate_requires_release_validation"], 1)
        with self.assertRaises(ValueError):
            apply_enrollments(manifest, [entry, {**entry, "comparison_sha256": "3" * 64}])

    def test_wrong_denominator_and_duplicate_id_rejected(self):
        accepted = self.accepted()
        with self.assertRaises(ValueError): pending_manifest(accepted[:300], "a", "s")
        accepted[-1] = copy.deepcopy(accepted[0])
        with self.assertRaises(ValueError): pending_manifest(accepted, "a", "s")

    def test_measured_negative_requests_retention_but_not_runtime_success(self):
        row, receipt, a, b, frozen = self.fixture()
        for old, changed in zip(a["probes"], b["probes"]):
            changed.update(rounds=copy.deepcopy(old["rounds"]), summary=copy.deepcopy(old["summary"]),
                           performance_passed=False, status="retain_baseline")
        b["mixed_measurement"] = {**copy.deepcopy(a["mixed_measurement"]), "performance_passed": False}
        receipt["candidate_outcome"] = "not_met"
        entry = enroll_model(row, receipt, a, b, frozen)
        self.assertEqual(entry["mode"], "retain_requires_runtime_validation")
        self.assertEqual(entry["final_C1_status"], "pending")

    def test_forged_final_acceptance_rejected(self):
        entry = enroll_model(*self.fixture())
        manifest = pending_manifest(self.accepted(), "accepted", "source")
        with self.assertRaises(ValueError):
            apply_enrollments(manifest, [{**entry, "final_C1_status": "passed"}])
        manifest["final_C1_passed"] = 301
        with self.assertRaises(ValueError): apply_enrollments(manifest, [entry])

    def test_incremental_enrollment_does_not_overwrite_existing_evidence(self):
        entry = enroll_model(*self.fixture())
        first = apply_enrollments(pending_manifest(self.accepted(), "a", "s"), [entry])
        self.assertEqual(apply_enrollments(first, [copy.deepcopy(entry)])["counts"], first["counts"])
        with self.assertRaises(ValueError):
            apply_enrollments(first, [{**entry, "comparison_sha256": "4" * 64}])

    def test_json_index_crlf_transport_preserves_measured_lf_identity(self):
        raw = b'{"head":"fixture"}\r\n'
        checkpoint = {"identity": {"accepted_sha256": "a", "model_ids": ["a/b"],
            "source_baseline_sha256": hashlib.sha256(raw.replace(b"\r\n", b"\n")).hexdigest()}}
        self.assertEqual(validate_evidence_snapshot(checkpoint, "a", raw, {"a/b"}), {"a/b"})
        with self.assertRaises(ValueError):
            validate_evidence_snapshot(checkpoint, "a", raw.replace(b"fixture", b"changed"), {"a/b"})

    def test_checkpoint_scope_source_and_duplicate_ids_rejected(self):
        raw = b'{}'
        valid = {"identity": {"accepted_sha256": "a", "source_baseline_sha256": hashlib.sha256(raw).hexdigest(), "model_ids": ["a/b"]}}
        for change in ({"accepted_sha256": "wrong"}, {"source_baseline_sha256": "wrong"},
                       {"model_ids": ["other"]}, {"model_ids": ["a/b", "a/b"]}):
            bad = copy.deepcopy(valid); bad["identity"].update(change)
            with self.assertRaises(ValueError): validate_evidence_snapshot(bad, "a", raw, {"a/b"})


if __name__ == "__main__":
    unittest.main()
