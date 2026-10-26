import copy
import hashlib
import json
from pathlib import Path
import sys
import tempfile
import unittest

sys.path[:0] = [str(Path(__file__).parents[1] / "scripts"), str(Path(__file__).parents[1] / "src")]
from run_shape_release_wave import completed_record, functional_command, performance_streak, validate_wave
import test_shape_release_enrollment as fixtures


class ReleaseWaveTest(unittest.TestCase):
    def fixture(self):
        accepted = fixtures.EnrollmentTest().accepted()
        models = accepted[:2]
        checkpoint = {"identity": {"accepted_sha256": "a" * 64, "source_baseline_sha256": "b" * 64,
                                   "strategy": "graph_replay", "model_ids": [x["model_id"] for x in accepted]}, "records": []}
        return accepted, copy.deepcopy(models), checkpoint

    def test_exact_original_scope_and_prefix(self):
        accepted, models, checkpoint = self.fixture()
        self.assertEqual(len(validate_wave(accepted, models, checkpoint, "a" * 64, "b" * 64)), 301)
        for bad in ([], models[::-1], models * 2, [{**models[0], "model_id": "outside/id"}]):
            with self.assertRaises(ValueError): validate_wave(accepted, bad, checkpoint, "a" * 64, "b" * 64)

    def test_revision_task_and_source_cannot_drift(self):
        accepted, models, checkpoint = self.fixture()
        for key in ("revision", "task"):
            bad = copy.deepcopy(models); bad[0][key] = "drift"
            with self.assertRaises(ValueError): validate_wave(accepted, bad, checkpoint, "a" * 64, "b" * 64)
        with self.assertRaises(ValueError): validate_wave(accepted, models, checkpoint, "a" * 64, "c" * 64)

    def test_pending_is_not_implicit_retention(self):
        _, _, checkpoint = self.fixture()
        self.assertIsNone(completed_record(checkpoint, "a/b"))
        checkpoint["records"] = [{"model_id": "a/b", "candidate_exit_code": None}]
        self.assertIsNone(completed_record(checkpoint, "a/b"))

    def test_completed_record_requires_all_phases_and_immutable_bytes(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp); (root / "candidate-graph_replay").mkdir()
            a = root / "report.json"; b = root / "candidate-graph_replay/report.json"
            a.write_text('{}'); b.write_text('{"status":"measured"}')
            sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
            row = {"model_id": "a/b", "candidate_exit_code": 0, "status": "calibrated", "exit_code": 0,
                   "profile_exit_code": 0, "case": str(root), "report_sha256": sha(a), "candidate_report_sha256": sha(b)}
            checkpoint = {"records": [row]}
            self.assertEqual(completed_record(checkpoint, "a/b"), row)
            for key in ("profile_exit_code", "exit_code"):
                bad = copy.deepcopy(checkpoint); bad["records"][0][key] = 1
                with self.assertRaises(ValueError): completed_record(bad, "a/b")
            b.write_text('{"status":"changed"}')
            with self.assertRaises(ValueError): completed_record(checkpoint, "a/b")

    def test_duplicate_completed_attempt_rejected(self):
        checkpoint = {"records": [{"model_id": "a/b", "candidate_exit_code": 0}] * 2}
        with self.assertRaises(ValueError): completed_record(checkpoint, "a/b")

    def test_candidate_gets_full_actual_qualification_and_preparation(self):
        command = functional_command("python", Path("runtime"), Path("discovery"), Path("accepted"), Path("enrollment"),
                                     Path("baseline"), "a/b", Path("output"), Path("policy"), [Path("aa"), Path("ab"), Path("audit")])
        self.assertEqual(command[command.index("--source") + 1], "runtime")
        self.assertIn("--prepare-capture-constants", command)
        self.assertEqual(command[command.index("--qualification-audit") + 1], "audit")
        self.assertEqual(command[command.index("--discovery-source") + 1], "discovery")

    def test_retention_uses_original_unprepared_b0_not_unqualified_candidate(self):
        args = ("python", Path("runtime"), Path("discovery"), Path("accepted"), Path("enrollment"), Path("baseline"), "a/b", Path("output"))
        command = functional_command(*args)
        self.assertEqual(command[command.index("--source") + 1], "discovery")
        self.assertNotIn("--policy", command)
        self.assertNotIn("--prepare-capture-constants", command)
        with self.assertRaises(ValueError): functional_command(*args, Path("policy"), None)
        with self.assertRaises(ValueError): functional_command(*args, Path("policy"), [Path("aa")])

    def test_ten_distinct_performance_failures_stop_and_success_resets(self):
        rows = [{"model_id": str(i), "status": "actual_policy_timing_not_met"} for i in range(10)]
        self.assertEqual(performance_streak(rows), 10)
        self.assertEqual(performance_streak(rows + [{"model_id": "success", "status": "validated_candidate"}]), 0)
        self.assertEqual(performance_streak(rows[:9] + [{"model_id": "retained", "status": "validated_retention"}]), 10)
        with self.assertRaises(ValueError): performance_streak(rows + [rows[0]])
        with self.assertRaises(ValueError): performance_streak([{"model_id": "oom", "status": "execution_failed"}])


if __name__ == "__main__":
    unittest.main()
