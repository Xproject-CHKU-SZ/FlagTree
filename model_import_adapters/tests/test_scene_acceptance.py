"""Aggregation contracts only; mocked auditors do not certify PPU inference."""
import contextlib
import importlib.util
import io
import json
from pathlib import Path
import sys
import tempfile
import unittest
from unittest import mock


SCRIPTS = Path(__file__).parents[1] / "scripts"
with mock.patch.object(sys, "path", [str(SCRIPTS), *sys.path]):
    spec = importlib.util.spec_from_file_location("scene_acceptance", SCRIPTS / "collect_scene_acceptance.py")
    collector = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(collector)


class AcceptanceContracts(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name)
        self.history = self.root / "history"
        self.base = self.root / "baseline"
        self.opt = self.root / "optimized"
        self.case = self.root / "case"
        for directory in (self.history, self.base, self.opt, self.case):
            directory.mkdir()
        self.save(self.history / "model-files.json", {"snapshot": "frozen"})
        self.save(self.base / "model-files.json", {"snapshot": "frozen"})
        self.rows = [dict(model_id=f"fixture/model-{index}", revision="a" * 40,
                          status="passed", parameter_dtype="FP32", device="PPU-ZW810E",
                          shape_count=5, task="sentence_embedding_full_pipeline", case=str(self.history),
                          model_files_sha256=collector.sha256(self.history / "model-files.json"))
                     for index in range(301)]
        self.accepted = self.root / "accepted.json"
        self.save(self.accepted, self.rows)
        scene = self.root / "source/model_import_adapters/src/model_import_adapters/scene_fusion.py"
        kernel = self.root / "kernels/triton_kernels/ppu_mlp.py"
        helper = self.root / "kernels/triton_kernels/matmul_ogs_details/_common.py"
        for path in (scene, kernel, helper):
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text("# aggregation fixture, not executable GPU code\n")
        self.sources = {str(path): collector.sha256(path) for path in (scene, kernel, helper)}
        scope_hash = collector.sha256(self.accepted)
        self.base_state = dict(status="completed", identity={"accepted_sha256": scope_hash},
                               records=[dict(model_id=row["model_id"], status="passed", case=str(self.base))
                                        for row in self.rows])
        self.opt_state = dict(status="completed", identity=dict(accepted_sha256=scope_hash,
                              source_hashes=self.sources, case_script_sha256="c" * 64),
                              records=[dict(model_id=row["model_id"], status="passed", case=str(self.case))
                                       for row in self.rows])
        self.case_report = dict(hit_probes=4, retained_probes=1, source=str(self.root / "source"),
                                kernel_root=str(self.root / "kernels"),
                                scene_source_sha256=collector.sha256(scene),
                                kernel_source_sha256=collector.sha256(kernel),
                                dot_helper_sha256=collector.sha256(helper), case_script_sha256="c" * 64,
                                probes=[dict(batch=b, sequence=s, needs_paired_regression_check=False)
                                        for b, s in ((1, 8), (2, 24), (4, 64), (2, 8), (1, 64))])
        self.aa = dict(status="calibrated", identity={"script_sha256": collector.sha256(SCRIPTS / "benchmark_scene_pair.py")}, cases=[])
        self.pair = dict(status="passed", identity=self.aa["identity"], qualified_geomean_speedup=1.25, cases=[])
        for m in (8, 48, 256, 16, 64):
            calibration = dict(shape_mkn=[m, 384, 1536], rounds=self.rounds(100, 100))
            calibration["gate"] = collector.freeze_gate(collector.summarize_rounds(calibration["rounds"]))
            self.aa["cases"].append(calibration)
            self.pair["cases"].append(dict(shape_mkn=calibration["shape_mkn"], eligible=m != 256,
                 rounds=self.rounds(100, 80), gate=calibration["gate"], precision_passed=True,
                 max_abs_error=1e-4, torch_allocator_transient_bytes={"A": 100, "B": 100},
                 baseline_first_call_s=1, candidate_first_call_s=1))
        binary = self.root / "fixture.hgbin"
        binary.write_bytes(b"aggregation fixture only")
        self.resources = dict(status="passed", device="PPU-ZW810E", device_properties={"max_shared_mem": 262144},
                              kernels=[dict(provenance={"binary_path": str(binary)}, binary_sha256=collector.sha256(binary),
                                            threads=128, max_threads=128, shared_bytes=10240,
                                            n_regs_per_thread=98, local_bytes_per_thread=0)])

    @staticmethod
    def rounds(a, b):
        return [{"A": [a] * 100, "B": [b] * 100} for _ in range(5)]

    @staticmethod
    def save(path, value):
        path.write_text(json.dumps(value), encoding="utf-8")

    def run_collector(self, verify=True, baseline_audit=None, optimized_audit=None):
        self.save(self.base / "checkpoint.json", self.base_state)
        self.save(self.opt / "checkpoint.json", self.opt_state)
        self.save(self.case / "report.json", self.case_report)
        self.save(self.root / "aa.json", self.aa)
        self.pair["frozen_calibration_sha256"] = collector.sha256(self.root / "aa.json")
        self.save(self.root / "pair.json", self.pair)
        self.save(self.root / "resources.json", self.resources)
        output = self.root / "output"
        argv = ["collect_scene_acceptance.py", "--accepted", str(self.accepted),
                "--baseline", str(self.base), "--optimized", str(self.opt),
                "--baseline-source", str(self.root / "source"), "--paired-report", str(self.root / "pair.json"),
                "--calibration", str(self.root / "aa.json"), "--resource-report", str(self.root / "resources.json"),
                "--output", str(output)] + (["--verify"] if verify else [])
        with mock.patch.object(sys, "argv", argv), mock.patch.object(sys, "path", sys.path.copy()), \
             mock.patch.object(collector, "audit_replay", side_effect=baseline_audit,
                               return_value={"accepted": True, "errors": []}) as left, \
             mock.patch.object(collector, "audit_replay_case", side_effect=optimized_audit,
                               return_value={"accepted": True}) as right, contextlib.redirect_stdout(io.StringIO()):
            code = collector.main()
        return code, json.loads((output / "acceptance.json").read_text()), left.call_count, right.call_count

    def test_complete_requires_all_case_audits(self):
        code, report, left, right = self.run_collector()
        self.assertEqual((code, report["status"], left, right), (0, "passed", 301, 301))
        self.assertEqual(report["verified_optimized_shapes"], 1505)

    def test_green_checkpoints_without_verify_are_incomplete(self):
        code, report, left, right = self.run_collector(verify=False)
        self.assertEqual((code, report["status"], left, right), (2, "incomplete", 0, 0))
        self.assertEqual(report["verified_optimized_shapes"], 0)

    def test_one_pending_model_preserves_denominator(self):
        self.opt_state["records"].pop()
        code, report, _, right = self.run_collector()
        self.assertEqual((code, report["optimized_passed"], right), (2, 300, 300))
        self.assertEqual(len(report["models"]), 301)

    def test_live_baseline_is_not_final(self):
        self.base_state["status"] = "running"
        self.assertEqual(self.run_collector()[0], 2)

    def test_baseline_audit_failure_blocks_acceptance(self):
        def audit(row, *args):
            return {"accepted": row["model_id"] != "fixture/model-0", "errors": ["fixture-audit-failure"] if row["model_id"].endswith("-0") else []}
        code, report, _, _ = self.run_collector(baseline_audit=audit)
        self.assertEqual((code, report["baseline_passed"], report["failed_models"]), (2, 300, 1))

    def test_optimized_audit_exception_blocks_acceptance(self):
        def audit(case, row, *args):
            if row["model_id"] == "fixture/model-0":
                raise ValueError("fixture tensor corruption")
            return {"accepted": True}
        code, report, _, _ = self.run_collector(optimized_audit=audit)
        self.assertEqual((code, report["optimized_passed"], report["verified_optimized_shapes"]), (2, 300, 1500))

    def test_model_manifest_drift_blocks_acceptance(self):
        self.save(self.base / "model-files.json", {"snapshot": "changed"})
        self.assertEqual(self.run_collector()[1]["baseline_passed"], 0)

    def test_source_fingerprint_drift_blocks_acceptance(self):
        Path(next(iter(self.sources))).write_text("changed\n")
        code, report, _, _ = self.run_collector()
        self.assertEqual(code, 2)
        self.assertTrue(any(error.startswith("optimized_source_changed:") for error in report["errors"]))

    def test_unresolved_paired_review_blocks_acceptance(self):
        self.case_report["probes"][0]["needs_paired_regression_check"] = True
        code, report, _, _ = self.run_collector()
        self.assertEqual(code, 2)
        self.assertEqual(len(report["pending_paired_model_reviews"]), 301)

    def test_raw_timing_regression_overrules_green_status(self):
        self.pair["cases"][0]["rounds"] = self.rounds(100, 110)
        self.assertFalse(self.run_collector()[1]["local_scene_passed"])

    def test_resource_binary_drift_blocks_acceptance(self):
        (self.root / "fixture.hgbin").write_bytes(b"changed")
        self.assertFalse(self.run_collector()[1]["local_scene_passed"])

    def test_scope_hash_mismatch_blocks_acceptance(self):
        self.opt_state["identity"]["accepted_sha256"] = "0" * 64
        self.assertIn("scope_hash_mismatch", self.run_collector()[1]["errors"])

    def test_duplicate_local_scene_cannot_replace_missing_shape(self):
        self.pair["cases"][1] = dict(self.pair["cases"][0])
        self.assertFalse(self.run_collector()[1]["local_scene_passed"])

    def test_declared_speedup_must_match_raw_measurements(self):
        self.pair["qualified_geomean_speedup"] = 9.0
        self.assertFalse(self.run_collector()[1]["local_scene_passed"])

    def test_live_checkpoint_fingerprint_refers_to_read_snapshot(self):
        self.base_state["status"] = "running"
        def advance(row, *args):
            self.save(self.base / "checkpoint.json", dict(self.base_state, status="completed"))
            return {"accepted": True, "errors": []}
        code, report, _, _ = self.run_collector(baseline_audit=advance)
        frozen = self.root / "output/baseline-checkpoint.json"
        self.assertEqual(code, 2)
        self.assertEqual(json.loads(frozen.read_text())["status"], "running")
        self.assertEqual(report["baseline_checkpoint_sha256"], collector.sha256(frozen))
        self.assertNotEqual(report["baseline_checkpoint_sha256"], collector.sha256(self.base / "checkpoint.json"))


if __name__ == "__main__":
    unittest.main()
