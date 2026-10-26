import copy
from pathlib import Path
import sys
import tempfile
import unittest

sys.path.insert(0, str(Path(__file__).parents[1] / "scripts"))
from continue_shape301_wave import (continuation_command, inspect_handle, seed_checkpoint, validate_transition, validate_wave_plan)
from run_shape301_calibration import record_performance_outcome


class WaveContinuationTest(unittest.TestCase):
    def fixture(self):
        rows = [{"model_id": f"fixture/{i}", "revision": "a" * 40,
                 "task": "sentence_embedding_full_pipeline", "status": "passed",
                 "parameter_dtype": "FP32", "device": "PPU-ZW810E", "shape_count": 5} for i in range(301)]
        ids = [x["model_id"] for x in rows[:50]]
        state = {"status": "completed", "identity": {"model_ids": ids, "accepted_sha256": "accepted",
                 "source_baseline_sha256": "source", "strategy": "graph_replay", "evaluate_candidate": True,
                 "performance_failure_limit": 10}, "consecutive_performance_nonacceptance": 0,
                 "model_outcomes": [{"model_id": x, "outcome": "passed"} for x in ids],
                 "records": [{"model_id": x, "status": "calibrated", "exit_code": 0,
                              "profile_exit_code": 0, "candidate_exit_code": 0, "case": f"/old/{x}"} for x in ids]}
        return rows, state

    def test_fifty_to_one_hundred_keeps_exact_prefix(self):
        rows, state = self.fixture()
        self.assertEqual(len(validate_transition(rows, state, rows[:100], "accepted", "source")), 100)
        self.assertEqual(len(state["identity"]["model_ids"]), 50)

    def test_unknown_duplicate_revision_task_and_removed_id_rejected(self):
        rows, state = self.fixture()
        variants = [rows[:49] + rows[50:100], rows[:99] + [rows[0]],
                    [{**rows[0], "revision": "wrong"}] + rows[1:100],
                    [{**rows[0], "task": "wrong"}] + rows[1:100],
                    rows[:99] + [{**rows[99], "model_id": "outside/scope"}]]
        for next_rows in variants:
            with self.subTest(next_rows=next_rows[-1]):
                with self.assertRaises(ValueError): validate_transition(rows, state, next_rows, "accepted", "source")

    def test_blocked_running_unstable_and_unproven_execution_rejected(self):
        rows, state = self.fixture()
        for status in ("running", "method_implementation_blocked", "resource_blocked"):
            with self.assertRaises(ValueError): validate_transition(rows, {**state, "status": status}, rows[:100], "accepted", "source")
        for field in ("candidate_exit_code", "profile_exit_code", "exit_code"):
            other = copy.deepcopy(state); other["records"][-1][field] = 1
            with self.assertRaises(ValueError): validate_transition(rows, other, rows[:100], "accepted", "source")
        other = copy.deepcopy(state); other["model_outcomes"][-1]["outcome"] = "measurement_unstable"
        with self.assertRaises(ValueError): validate_transition(rows, other, rows[:100], "accepted", "source")

    def test_scope_source_and_unbounded_batch_rejected(self):
        rows, state = self.fixture()
        for accepted, source in (("drift", "source"), ("accepted", "drift")):
            with self.assertRaises(ValueError): validate_transition(rows, state, rows[:100], accepted, source)
        for end in (50, 101, 301):
            with self.assertRaises(ValueError): validate_transition(rows, state, rows[:end], "accepted", "source")

    def test_original_wave_order_is_frozen_not_arbitrary_accepted_subset(self):
        rows, _ = self.fixture()
        ids = [x["model_id"] for x in rows]
        plan = {"scope_sha256": "accepted", "waves": [{"new_model_ids": ids[:50]}, {"new_model_ids": ids[50:]}]}
        validate_wave_plan(plan, ids[:100], "accepted")
        for selected in (ids[:99] + [ids[100]], ids[1:101]):
            with self.assertRaises(ValueError): validate_wave_plan(plan, selected, "accepted")
        with self.assertRaises(ValueError): validate_wave_plan(plan, ids[:100], "drift")

    def test_nine_previous_failures_plus_one_new_stops_at_ten(self):
        rows, state = self.fixture()
        for row in state["model_outcomes"][-9:]: row["outcome"] = "not_met"
        state["consecutive_performance_nonacceptance"] = 9
        ids = validate_transition(rows, state, rows[:100], "accepted", "source")
        seeded = seed_checkpoint(state, ids, {"previous_checkpoint_sha256": "hash"})
        self.assertTrue(record_performance_outcome(seeded, rows[50]["model_id"], "not_met", "fixture", 10))
        self.assertEqual(seeded["consecutive_performance_nonacceptance"], 10)
        self.assertEqual(seeded["status"], "method_implementation_blocked")
        self.assertEqual(state["consecutive_performance_nonacceptance"], 9)
        self.assertEqual(len(seeded["records"]), 50)
        self.assertEqual(seeded["records"][0]["case"], state["records"][0]["case"])

    def test_a_new_pass_breaks_inherited_streak_not_inherited_evidence(self):
        rows, state = self.fixture()
        for row in state["model_outcomes"][-3:]: row["outcome"] = "not_met"
        state["consecutive_performance_nonacceptance"] = 3
        seeded = seed_checkpoint(state, [x["model_id"] for x in rows[:100]], {})
        self.assertFalse(record_performance_outcome(seeded, rows[50]["model_id"], "passed", "fixture", 10))
        self.assertEqual(seeded["consecutive_performance_nonacceptance"], 0)
        self.assertEqual(seeded["records"], state["records"])

    def test_drifted_streak_or_ten_failures_rejected(self):
        rows, state = self.fixture()
        state["consecutive_performance_nonacceptance"] = 1
        with self.assertRaises(ValueError): validate_transition(rows, state, rows[:100], "accepted", "source")
        for row in state["model_outcomes"][-10:]: row["outcome"] = "not_met"
        state["consecutive_performance_nonacceptance"] = 10
        with self.assertRaises(ValueError): validate_transition(rows, state, rows[:100], "accepted", "source")

    def proc(self, folder, state="S", birth=123, code=0, command=("python", "runner.py")):
        path = Path(folder) / "42"; path.mkdir(exist_ok=True)
        fields = ["0"] * 50; fields[0] = state; fields[19] = str(birth); fields[49] = str(code << 8)
        (path / "stat").write_text("42 (test name) " + " ".join(fields))
        (path / "cmdline").write_bytes(b"\0".join(x.encode() for x in command) + b"\0")

    def test_live_terminal_missing_and_pid_reuse_are_distinct(self):
        with tempfile.TemporaryDirectory() as d:
            self.assertEqual(inspect_handle(d, 42, ["python", "runner.py"])["state"], "missing")
            self.proc(d)
            self.assertEqual(inspect_handle(d, 42, ["python", "runner.py"])["state"], "live")
            with self.assertRaises(ValueError): inspect_handle(d, 42, ["python", "other.py"])
            with self.assertRaises(ValueError): inspect_handle(d, 42, ["python", "runner.py"], 456)
            self.proc(d, state="Z", code=2)
            value = inspect_handle(d, 42, ["python", "runner.py"], 123)
            self.assertEqual((value["state"], value["exit_code"]), ("terminal", 2))

    def test_command_only_changes_scope_and_new_output(self):
        source = Path("frozen")
        command = [sys.executable, str(source / "model_import_adapters/scripts/run_shape301_calibration.py"),
                   "--source", str(source), "--pilots", "old-models", "--output", "old-output", "--cpu-affinity", "167"]
        actual = continuation_command(command, source, Path("new-models"), Path("new-output"))
        self.assertEqual(actual[actual.index("--pilots") + 1], "new-models")
        self.assertEqual(actual[-2:], command[-2:])
        self.assertEqual(command[command.index("--output") + 1], "old-output")
        with self.assertRaises(ValueError): continuation_command(command, Path("changed"), Path("m"), Path("o"))


if __name__ == "__main__": unittest.main()
