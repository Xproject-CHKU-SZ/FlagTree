import copy
from pathlib import Path
import sys
import tempfile
import unittest

sys.path[:0] = [str(Path(__file__).parents[1] / "scripts"), str(Path(__file__).parents[1] / "src")]
from build_shape_release_enrollment import pending_manifest
from verify_shape_release_case import (PROBES, REFERENCES, compare_reference_arrays, expected_route,
                                       sha, validate_enrollment, validate_policy_binding, validate_probe_set)
from audit_shape_release_case import audit_release_outputs
import test_shape_release_enrollment as fixtures


class ReleaseCaseTest(unittest.TestCase):
    def fixture(self):
        accepted = fixtures.EnrollmentTest().accepted()
        manifest = pending_manifest(accepted, "a" * 64, "b" * 64)
        manifest["measured_source_baseline_sha256"] = "b" * 64
        entry = manifest["models"][0]
        entry.update(mode="candidate_requires_release_validation", discovery_status="passed", pt2_sha256="c" * 64,
                     calibration_sha256="d" * 64, comparison_sha256="e" * 64)
        descriptors = [[[1, 8], [8, 1], 0, "torch.int64", "cuda:0"]]
        document = {"identity": {key: entry[key] for key in ("model_id", "revision", "task", "pt2_sha256")},
                    "entries": [descriptors], "evidence": {key: entry[key] for key in ("calibration_sha256", "comparison_sha256")}}
        return accepted, manifest, entry, descriptors, document

    def test_qualified_candidate_is_runtime_eligible_not_final301(self):
        accepted, manifest, entry, descriptors, policy = self.fixture()
        self.assertEqual(validate_enrollment(accepted, manifest, "a/b", "a" * 64, "b" * 64), entry)
        validate_policy_binding(entry, policy)
        self.assertEqual(expected_route(entry, policy, descriptors), "graph_replay")
        self.assertEqual(manifest["final_C1_passed"], 0)

    def test_unresolved_discovery_is_not_native_success(self):
        accepted, manifest, entry, _, _ = self.fixture()
        for model in ("fixture/1", "not/in301"):
            with self.assertRaises(ValueError): validate_enrollment(accepted, manifest, model, "a" * 64, "b" * 64)

    def test_explicit_negative_retention_is_compiled_without_policy(self):
        accepted, manifest, entry, descriptors, policy = self.fixture()
        entry.update(mode="retain_requires_runtime_validation", discovery_status="not_met")
        validate_enrollment(accepted, manifest, "a/b", "a" * 64, "b" * 64)
        validate_policy_binding(entry, None)
        self.assertEqual(expected_route(entry, None, descriptors), "original_compiled")
        with self.assertRaises(ValueError): validate_policy_binding(entry, policy)

    def test_full_scope_duplicate_missing_revision_and_task_drift_rejected(self):
        accepted, manifest, _, _, _ = self.fixture()
        changes = [lambda x: x["models"].pop(), lambda x: x["models"].__setitem__(-1, copy.deepcopy(x["models"][0])),
                   lambda x: x["models"][-1].update(revision="drift"), lambda x: x["models"][-1].update(task="drift")]
        for change in changes:
            other = copy.deepcopy(manifest); change(other)
            with self.assertRaises(ValueError): validate_enrollment(accepted, other, "a/b", "a" * 64, "b" * 64)

    def test_scope_source_or_discovery_hash_drift_rejected(self):
        accepted, manifest, _, _, _ = self.fixture()
        for field in ("accepted_sha256", "measured_source_baseline_sha256"):
            other = copy.deepcopy(manifest); other[field] = "drift"
            with self.assertRaises(ValueError): validate_enrollment(accepted, other, "a/b", "a" * 64, "b" * 64)
        for field in ("pt2_sha256", "calibration_sha256", "comparison_sha256"):
            other = copy.deepcopy(manifest); other["models"][0][field] = "missing"
            with self.assertRaises(ValueError): validate_enrollment(accepted, other, "a/b", "a" * 64, "b" * 64)

    def test_forged_final_release_status_rejected(self):
        accepted, manifest, _, _, _ = self.fixture()
        other = copy.deepcopy(manifest); other["final_C1_passed"] = 301
        with self.assertRaises(ValueError): validate_enrollment(accepted, other, "a/b", "a" * 64, "b" * 64)
        other = copy.deepcopy(manifest); other["models"][-1]["final_C1_status"] = "passed"
        with self.assertRaises(ValueError): validate_enrollment(accepted, other, "a/b", "a" * 64, "b" * 64)

    def test_policy_requires_exact_model_pt2_and_selected_pair_hashes(self):
        _, _, entry, _, policy = self.fixture()
        with self.assertRaises(ValueError): validate_policy_binding(entry, None)
        for field in ("model_id", "revision", "task", "pt2_sha256"):
            other = copy.deepcopy(policy); other["identity"][field] = "drift"
            with self.assertRaises(ValueError): validate_policy_binding(entry, other)
        for field in ("calibration_sha256", "comparison_sha256"):
            other = copy.deepcopy(policy); other["evidence"][field] = "drift"
            with self.assertRaises(ValueError): validate_policy_binding(entry, other)

    def test_shape_stride_dtype_or_input_structure_miss_retains_compiled(self):
        _, _, entry, descriptors, policy = self.fixture()
        variants = []
        for index, value in ((0, [2, 8]), (1, [16, 2]), (3, "torch.int32")):
            other = copy.deepcopy(descriptors); other[0][index] = value; variants.append(other)
        variants.append(descriptors * 2)
        for other in variants: self.assertEqual(expected_route(entry, policy, other), "original_compiled")

    def test_five_probe_identity_rejects_duplicate_missing_extra(self):
        probes = [{"batch": b, "sequence": s} for b, s in sorted(PROBES)]
        validate_probe_set(probes)
        for other in (probes[:-1], probes + [probes[0]], probes[:-1] + [probes[0]]):
            with self.assertRaises(ValueError): validate_probe_set(other)

    def test_all_four_task_references_and_metadata_are_required(self):
        import numpy as np
        actual = np.array([1.], dtype=np.float32); refs = {key: actual.copy() for key in REFERENCES}
        self.assertEqual(len(compare_reference_arrays(actual, refs)), 4)
        with self.assertRaises(ValueError): compare_reference_arrays(actual, {"original_output": actual})
        for other in (actual.astype(np.float64), actual.reshape(1, 1)):
            with self.assertRaises(ValueError): compare_reference_arrays(other, refs)

    def test_joint_tolerance_is_not_relative_only(self):
        import numpy as np
        reference = np.array([0., 1.], dtype=np.float32); refs = {key: reference for key in REFERENCES}
        compare_reference_arrays(np.array([0.00029, 1.0005], dtype=np.float32), refs)
        with self.assertRaises(ValueError): compare_reference_arrays(np.array([0.00031, 1.], dtype=np.float32), refs)

    def test_nonfinite_actual_or_reference_never_passes(self):
        import numpy as np
        actual = np.array([1.], dtype=np.float32); refs = {key: actual.copy() for key in REFERENCES}
        for value in (float("nan"), float("inf")):
            with self.assertRaises(ValueError): compare_reference_arrays(np.array([value], dtype=np.float32), refs)
            other = copy.deepcopy(refs); other["restored_output"][0] = value
            with self.assertRaises(ValueError): compare_reference_arrays(actual, other)

    def archive_fixture(self, folder):
        import numpy as np
        expected = np.array([[1., 2.]], dtype=np.float32)
        reference, output = Path(folder) / "reference.npz", Path(folder) / "output.npz"
        np.savez_compressed(reference, **{key: expected for key in REFERENCES})
        np.savez_compressed(output, **{key: expected for key in ("fresh_eager", "original_compiled", "released", "disabled")})
        return reference, output

    def test_independent_release_archive_recheck_counts_all_four_routes(self):
        with tempfile.TemporaryDirectory() as d:
            reference, output = self.archive_fixture(d)
            self.assertEqual(audit_release_outputs(reference, output, sha(reference), sha(output))["array_comparisons"], 16)

    def test_release_archive_hash_drift_rejected(self):
        with tempfile.TemporaryDirectory() as d:
            reference, output = self.archive_fixture(d)
            with self.assertRaises(ValueError): audit_release_outputs(reference, output, sha(reference), "0" * 64)

    def test_release_archive_requires_disabled_result_and_finite_arrays(self):
        import numpy as np
        with tempfile.TemporaryDirectory() as d:
            reference, output = self.archive_fixture(d)
            np.savez_compressed(output, fresh_eager=np.array([[1., 2.]], dtype=np.float32))
            with self.assertRaises(ValueError): audit_release_outputs(reference, output, sha(reference), sha(output))
            _, output = self.archive_fixture(d)
            with np.load(output) as data: values = {key: data[key].copy() for key in data.files}
            values["disabled"][0, 0] = float("nan"); np.savez_compressed(output, **values)
            with self.assertRaises(ValueError): audit_release_outputs(reference, output, sha(reference), sha(output))


if __name__ == "__main__": unittest.main()
