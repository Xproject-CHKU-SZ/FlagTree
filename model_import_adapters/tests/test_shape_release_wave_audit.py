import contextlib
import copy
import io
import json
from pathlib import Path
import sys
import tempfile
import unittest
from unittest import mock

sys.path[:0] = [str(Path(__file__).parents[1] / "scripts"), str(Path(__file__).parents[1] / "src")]
import audit_shape_release_wave as audit
import run_shape_release_wave as runner


class ReleaseWaveAuditTest(unittest.TestCase):
    def fixture(self):
        models = [{"model_id": f"fixture/{i}", "revision": "a" * 40, "task": "sequence_classification_logits"} for i in range(3)]
        records = [{**model, "status": "validated_candidate", "final_C1_accepted": False} for model in models[:2]]
        progress = {"records": records, "target_models": 3, "final_C1_accepted": False,
                    "cpu_model_forward": "not_run", "status": "running", "consecutive_performance_nonacceptance": 0}
        return models, progress

    def test_partial_independent_audit_never_proves_complete_wave(self):
        models, progress = self.fixture()
        self.assertEqual(len(audit.validate_records(progress, models)), 2)
        progress["status"] = "completed_wave_not_final301"
        with self.assertRaises(ValueError): audit.validate_records(progress, models)

    def test_unknown_duplicate_reordered_and_omitted_prefix_rejected(self):
        models, progress = self.fixture()
        for rows in (progress["records"][::-1], progress["records"] * 2, progress["records"][1:]):
            bad = {**progress, "records": rows}
            with self.assertRaises(ValueError): audit.validate_records(bad, models)

    def test_revision_task_final_status_and_cpu_claim_drift_rejected(self):
        models, progress = self.fixture()
        for key in ("model_id", "revision", "task", "final_C1_accepted"):
            bad = copy.deepcopy(progress); bad["records"][0][key] = "drift"
            with self.assertRaises(ValueError): audit.validate_records(bad, models)
        for key, value in (("target_models", 301), ("final_C1_accepted", True), ("cpu_model_forward", "run")):
            with self.assertRaises(ValueError): audit.validate_records({**progress, key: value}, models)

    def test_negative_timing_is_not_silently_counted_as_functionally_closed(self):
        models, progress = self.fixture()
        progress["records"][-1]["status"] = "actual_policy_timing_not_met"
        progress["consecutive_performance_nonacceptance"] = 1
        self.assertEqual(audit.validate_records(progress, models)[-1]["status"], "actual_policy_timing_not_met")
        progress["consecutive_performance_nonacceptance"] = 0
        with self.assertRaises(ValueError): audit.validate_records(progress, models)

    def test_real_command_exit_and_both_raw_logs_required(self):
        with tempfile.TemporaryDirectory() as tmp:
            out, err = Path(tmp) / "stdout.log", Path(tmp) / "stderr.log"
            out.write_text('PASSED\n'); err.write_text('')
            row = {"command": ["python", "actual.py"], "exit_code": 0, "started_at": 1, "finished_at": 2,
                   "stdout": str(out), "stderr": str(err)}
            self.assertEqual(set(audit.validate_command_receipt([row], row["command"], 0)), {"stdout", "stderr"})
            for bad in ([], [row, row], [{**row, "exit_code": 1}], [{**row, "finished_at": 0}]):
                with self.assertRaises(ValueError): audit.validate_command_receipt(bad, row["command"], 0)

    def test_wave_command_cannot_relocate_scope_or_output(self):
        command = ["python", "runner.py"]
        for key in ("accepted", "models", "discovery-source", "source", "discovery-checkpoint", "discovery-job", "runtime", "output"):
            command += ["--" + key, key]
        args = audit.parse_wave_command(command, Path("accepted"), Path("models"), Path("output"))
        self.assertEqual(args["source"], Path("source"))
        with self.assertRaises(ValueError): audit.parse_wave_command(command, Path("other"), Path("models"), Path("output"))
        with self.assertRaises(ValueError): audit.parse_wave_command(command + ["--source", "other"], Path("accepted"), Path("models"), Path("output"))

    def test_read_only_entry_does_not_create_or_overwrite_wave(self):
        command = ["runner.py", "--audit-only"]
        for key in ("accepted", "models", "discovery-source", "source", "discovery-checkpoint", "discovery-job", "runtime", "output"):
            command += ["--" + key, key]
        for status, expected in (("passed", 0), ("failed", 1)):
            with mock.patch.object(sys, "argv", command), mock.patch.object(audit, "audit_wave", return_value={"status": status}) as check, \
                 mock.patch.object(Path, "mkdir", side_effect=AssertionError("Read-only audit must not create a wave")), contextlib.redirect_stdout(io.StringIO()):
                self.assertEqual(runner.main(), expected)
                check.assert_called_once_with(Path("output"), Path("accepted"), Path("models"))


if __name__ == "__main__":
    unittest.main()
