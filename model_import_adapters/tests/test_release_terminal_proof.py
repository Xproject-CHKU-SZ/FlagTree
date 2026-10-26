"""Pure file/process-contract tests; no CPU or device model execution."""
import copy
import hashlib
import json
from pathlib import Path
import sys
import tempfile
import unittest
from unittest import mock

sys.path.insert(0, str(Path(__file__).parents[1] / "scripts"))
import release_terminal_proof as proof
import shape_release_chain as chain


class TerminalProofTest(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        self.owner_out = self.root / "owner"
        self.wave = self.owner_out / "wave-150"
        self.obs = self.root / "observer"
        self.wave.mkdir(parents=True)
        self.obs.mkdir()
        self.job = {"pid": 42, "start_ticks": 123, "command": ["python", "wave.py", "--output", str(self.wave)]}
        self.owner = {"pid": 41, "start_ticks": 122, "command": ["python", "chain.py", "--output", str(self.owner_out)]}
        self.script = self.root / "observe.py"
        self.script.write_text("# actual observation fixture")
        script_sha = proof._sha(self.script)
        self.observer = {"pid": 43, "start_ticks": 124, "command": ["python", str(self.script)], "script_sha256": script_sha}
        self.paths = {"capture": self.obs / "capture.json", "owner_job": self.root / "owner-job.json",
                      "owner_report": self.owner_out / "report.json", "owner_command": self.owner_out / "command.json",
                      "observer_job": self.root / "observer-job.json", "observer_report": self.obs / "report.json",
                      "observer_command": self.obs / "command.json", "observer_script": self.script}
        self.put(self.wave / "command.json", self.job["command"])
        self.put(self.wave / "report.json", {"status": "completed_wave_not_final301", "target_models": 150, "records": [{}] * 150})
        self.put(self.paths["owner_job"], self.owner)
        self.put(self.paths["owner_command"], self.owner["command"])
        self.put(self.paths["owner_report"], {"status": "needs_attention", "records": [dict(self.job, exit_code=0, cumulative_scope=150,
                 terminal_observation="actual waitid WNOWAIT; not yet reaped")]})
        self.put(self.paths["observer_job"], self.observer)
        self.put(self.paths["observer_command"], self.observer["command"])
        fields = ["0"] * 50
        fields[0], fields[1], fields[19] = "Z", "41", "123"
        capture = {"job": self.job, "raw_stat": "42 (python) " + " ".join(fields), "terminal_state": "Z", "exit_code": 0,
                   "report_sha256": proof._sha(self.wave / "report.json"), "parent_job_sha256": proof._sha(self.paths["owner_job"]),
                   "observer_script": str(self.script), "observer_script_sha256": script_sha, "observed_at": 2}
        for key in ("stdout", "stderr"):
            log = self.owner_out / ("wave-150." + key + ".log")
            log.write_text("original " + key)
            capture[key] = {"path": str(log), "sha256": proof._sha(log)}
        self.put(self.paths["capture"], capture)
        self.put(self.paths["observer_report"], {"status": "captured_real_terminal0", "parent_job": self.owner,
                 "child_job": self.job, "script_sha256": script_sha, "started_at": 1, "finished_at": 3,
                 "terminal_receipt_sha256": proof._sha(self.paths["capture"])})
        self.selected = self.root / "proof.json"
        self.publish()

    def put(self, path, value):
        path.write_text(json.dumps(value, indent=2), encoding="utf8")

    def mutate(self, role, update):
        data = proof._read(self.paths[role]); update(data); self.put(self.paths[role], data)
        self.publish()

    def publish(self):
        self.put(self.selected, {"schema": "shape301-reaped-terminal-proof-v1", "files": {
            key: {"path": str(path), "sha256": proof._sha(path)} for key, path in self.paths.items()}})

    def validate(self):
        return proof.validate_terminal_proof(self.selected, self.job, self.wave)

    def test_matching_captured_zombie_and_owner_waitid_are_reopened(self):
        result = self.validate()
        self.assertEqual((result["state"], result["exit_code"], result["start_ticks"]), ("terminal", 0, 123))
        self.assertIn(str(self.wave / "report.json"), result["terminal_proof_files"])

    def test_missing_without_explicit_proof_stays_missing(self):
        with mock.patch.object(proof, "inspect_handle", return_value={"state": "missing"}):
            self.assertEqual(proof.observe_release_predecessor(self.job, self.wave), {"state": "missing"})

    def test_missing_with_explicit_proof_uses_original_identity(self):
        with mock.patch.object(proof, "inspect_handle", return_value={"state": "missing"}) as inspect:
            self.assertEqual(proof.observe_release_predecessor(self.job, self.wave, self.selected)["exit_code"], 0)
            self.assertEqual(inspect.call_count, 2)
            self.assertEqual(inspect.call_args.args, ("/proc", 42, self.job["command"], 123))

    def test_live_and_terminal_nonzero_are_never_overridden_by_receipt(self):
        for handle in ({"state": "live"}, {"state": "terminal", "exit_code": 1}):
            with self.subTest(handle=handle), mock.patch.object(proof, "inspect_handle", return_value=handle), \
                    mock.patch.object(proof, "validate_terminal_proof", side_effect=AssertionError("must not use receipt")):
                self.assertEqual(proof.observe_release_predecessor(self.job, self.wave, self.selected), handle)

    def test_pid_reuse_or_command_change_is_not_hidden(self):
        for error in ("Previous PID reused", "Previous command changed"):
            with mock.patch.object(proof, "inspect_handle", side_effect=ValueError(error)):
                with self.assertRaisesRegex(ValueError, error):
                    proof.observe_release_predecessor(self.job, self.wave, self.selected)

    def test_pid_appearing_during_proof_validation_is_rejected(self):
        with mock.patch.object(proof, "inspect_handle", side_effect=[{"state": "missing"}, {"state": "live"}]):
            with self.assertRaisesRegex(ValueError, "PID appeared"):
                proof.observe_release_predecessor(self.job, self.wave, self.selected)

    def test_different_selected_job_or_wave_command_is_rejected(self):
        for job in ({**self.job, "pid": 44}, {**self.job, "start_ticks": 321}, {**self.job, "command": ["python", "other"]}):
            with self.subTest(job=job), self.assertRaises(ValueError):
                proof.validate_terminal_proof(self.selected, job, self.wave)

    def test_invalid_process_identity_rejected(self):
        for change in ({"pid": True}, {"start_ticks": 0}, {"command": []}, {"command": ["python", ""]}):
            with self.subTest(change=change), self.assertRaises(ValueError):
                proof._identity({**self.job, **change})

    def test_missing_or_extra_proof_roles_rejected(self):
        original = proof._read(self.selected)
        for role in ("missing", "extra"):
            value = copy.deepcopy(original)
            if role == "missing": value["files"].pop("owner_report")
            else: value["files"]["other"] = value["files"]["capture"]
            self.put(self.selected, value)
            with self.assertRaises(ValueError): self.validate()

    def test_bound_file_byte_tamper_is_rejected(self):
        self.paths["owner_report"].write_text("{}")
        with self.assertRaisesRegex(ValueError, "hash drift"): self.validate()

    def test_report_or_log_tamper_is_rejected(self):
        for path in (self.wave / "report.json", self.owner_out / "wave-150.stdout.log"):
            original = path.read_bytes(); path.write_bytes(original + b" ")
            with self.assertRaises(ValueError): self.validate()
            path.write_bytes(original)

    def test_nonzero_nonzombie_wrong_birth_and_wrong_owner_raw_stat_rejected(self):
        original = proof._read(self.paths["capture"])
        for index, value in ((0, "S"), (1, "999"), (19, "321"), (49, "256")):
            capture = copy.deepcopy(original)
            fields = capture["raw_stat"].split(") ")[1].split(); fields[index] = value
            capture["raw_stat"] = "42 (python) " + " ".join(fields)
            self.put(self.paths["capture"], capture); self.publish()
            with self.subTest(index=index), self.assertRaises(ValueError): self.validate()

    def test_owner_must_have_exact_unique_waitid0_record(self):
        original = proof._read(self.paths["owner_report"])
        for update in (lambda x: x["records"][0].update(exit_code=1),
                       lambda x: x["records"][0].pop("terminal_observation"),
                       lambda x: x["records"][0].update(start_ticks=321),
                       lambda x: x["records"].append(copy.deepcopy(x["records"][0])),
                       lambda x: x.update(status="running")):
            self.put(self.paths["owner_report"], original)
            self.mutate("owner_report", update)
            with self.assertRaises(ValueError): self.validate()

    def test_observer_identity_status_and_capture_hash_are_required(self):
        original = proof._read(self.paths["observer_report"])
        for update in (lambda x: x.update(status="running"), lambda x: x.update(terminal_receipt_sha256="0" * 64),
                       lambda x: x.update(script_sha256="0" * 64), lambda x: x["child_job"].update(pid=999),
                       lambda x: x.update(finished_at=0)):
            self.put(self.paths["observer_report"], original)
            self.mutate("observer_report", update)
            with self.assertRaises(ValueError): self.validate()

    def test_observer_script_and_owner_command_drift_rejected_even_if_repinned(self):
        self.script.write_text("changed observer")
        self.publish()
        with self.assertRaises(ValueError): self.validate()

    def test_inherited_audit_revalidates_selection_and_raw_proof(self):
        provenance = {"previous_terminal_receipt_path": str(self.selected), "previous_terminal_receipt_sha256": proof._sha(self.selected)}
        command = ["python", "next.py", "--previous-terminal-receipt", str(self.selected)]
        self.assertEqual(proof.validate_inherited_terminal(provenance, self.job, self.wave, command)["exit_code"], 0)
        for bad in (command[:2], command + command[2:], command[:3] + ["other"]):
            with self.assertRaises(ValueError): proof.validate_inherited_terminal(provenance, self.job, self.wave, bad)
        self.paths["owner_report"].write_text("{}")
        with self.assertRaises(ValueError): proof.validate_inherited_terminal(provenance, self.job, self.wave, command)

    def test_receipt_is_initial_prefix_only_and_never_invented(self):
        plan = {"previous_terminal_receipt": "explicit.json"}
        self.assertEqual(chain.initial_terminal_receipt(plan, 150, 150), Path("explicit.json"))
        self.assertIsNone(chain.initial_terminal_receipt(plan, 200, 150))
        self.assertIsNone(chain.initial_terminal_receipt({}, 150, 150))


if __name__ == "__main__":
    unittest.main()
