import copy
import importlib.util
from pathlib import Path
import sys
import unittest

sys.path.insert(0, str(Path(__file__).parents[1] / "scripts"))
spec = importlib.util.spec_from_file_location("shape_calibration_runner", Path(__file__).parents[1] / "scripts/run_shape301_calibration.py")
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)


class CalibrationContractTest(unittest.TestCase):
    def fixture(self):
        row = dict(model_id="a/b", revision="a"*40, task="embedding")
        baseline = {"records": [{**row,"status":"passed","case":"/frozen/case"}]}
        audit = dict(status="passed",passed=1,accepted_sha256="accepted",checkpoint_sha256="checkpoint",
                     models=[{**row,"status":"passed","baseline_case":"/frozen/case"}])
        return {"a/b":row},baseline,audit

    def test_matching_scope(self):
        rows,baseline,audit = self.fixture()
        self.assertEqual(module.validate_baseline_scope(rows,baseline,audit,"accepted","checkpoint")["a/b"]["case"],"/frozen/case")

    def test_hash_drift_and_replaced_case_rejected(self):
        for mutate in (lambda b,a:a.update(checkpoint_sha256="other"),
                       lambda b,a:b["records"][0].update(case="/other/case"),
                       lambda b,a:a["models"][0].update(task="reranker"),
                       lambda b,a:b["records"].append(copy.deepcopy(b["records"][0]))):
            rows,baseline,audit = self.fixture();mutate(baseline,audit)
            with self.assertRaises(ValueError):
                module.validate_baseline_scope(rows,baseline,audit,"accepted","checkpoint")

    def test_child_identity_correctness_and_noise(self):
        row=self.fixture()[0]["a/b"]
        result={"identity":row,"probes":[dict(batch=b,sequence=s,comparisons={"output":{"passed":True}},gate={"ready":True}) for b,s in [(1,8),(2,24),(4,64),(2,8),(1,64)]]}
        module.validate_calibrated_child(row,result)
        for mutate in (lambda r:r["identity"].update(model_id="wrong/model"),
                       lambda r:r["probes"].pop(),
                       lambda r:r["probes"][0]["gate"].update(ready=False),
                       lambda r:r["probes"][0]["comparisons"]["output"].update(passed=False)):
            other=copy.deepcopy(result);mutate(other)
            with self.assertRaises(ValueError):module.validate_calibrated_child(row,other)

    def test_ten_distinct_models_block_not_ten_attempts(self):
        state={}
        self.assertFalse(module.record_performance_outcome(state,"model0","measurement_unstable","noise",10))
        with self.assertRaises(ValueError):
            module.record_performance_outcome(state,"model0","measurement_unstable","retry",10)
        for i in range(1,9):
            self.assertFalse(module.record_performance_outcome(state,f"model{i}","not_met","gain",10))
        self.assertTrue(module.record_performance_outcome(state,"model9","not_met","gain",10))
        self.assertEqual(state["status"],"method_implementation_blocked")
        self.assertEqual(len(state["blocking_models"]),10)

    def test_a_pass_breaks_the_consecutive_failure_streak(self):
        state={}
        module.record_performance_outcome(state,"a","measurement_unstable","noise",10)
        module.record_performance_outcome(state,"b","passed","model-gain",10)
        module.record_performance_outcome(state,"c","not_met","no_pattern",10)
        self.assertEqual(state["consecutive_performance_nonacceptance"],1)
        self.assertNotIn("status",state)

    def test_candidate_no_hit_is_not_an_ir_failure(self):
        outcome,reason=module.candidate_outcome({"probes":[{"hit":False,"regions":[]}]})
        self.assertEqual(outcome,"not_met")
        self.assertIn("not an IR failure",reason)

    def test_candidate_requires_mixed_request_gate_not_only_static_shapes(self):
        result = {"probes": [{"hit": True, "regions": [{"decision": {"block_m": 32}}],
            "status": "performance_passed", "gate": {"max_worst_round_regression": .05},
            "summary": {"round_speedups": [1.1]*5}, "first_call_cost_passed": True,
            "resource_passed": True}]}
        self.assertEqual(module.candidate_outcome(result)[0], "not_met")
        result["mixed_measurement"] = {"performance_passed": False}
        self.assertEqual(module.candidate_outcome(result)[0], "not_met")
        result["mixed_measurement"]["performance_passed"] = True
        self.assertEqual(module.candidate_outcome(result)[0], "passed")

    def test_static_compiled_strategy_still_requires_real_model_gates(self):
        result={"probes":[{"hit":True,"candidate_route":"static_shape_compiled","regions":[],
            "status":"performance_passed","gate":{"max_worst_round_regression":.05},
            "summary":{"round_speedups":[1.1]*5},"first_call_cost_passed":True,"resource_passed":True}],
            "mixed_measurement":{"performance_passed":True}}
        self.assertEqual(module.candidate_outcome(result)[0],"passed")
        result["probes"][0]["resource_passed"]=False
        self.assertEqual(module.candidate_outcome(result)[0],"not_met")

    def test_memory_record_only_does_not_relax_other_model_gates(self):
        result={"probes":[{"hit":True,"candidate_route":"static_shape_compiled","regions":[],
            "status":"performance_passed","gate":{"max_worst_round_regression":.05},
            "summary":{"round_speedups":[1.1]*5},"first_call_cost_passed":True,
            "resource_passed":False,"memory_policy":"record_only_v1"}],
            "mixed_measurement":{"performance_passed":True}}
        self.assertEqual(module.candidate_outcome(result)[0],"passed")
        for change in ({"first_call_cost_passed":False}, {"summary":{"round_speedups":[.90]*5}},
                       {"status":"retain_baseline"}):
            other=copy.deepcopy(result);other["probes"][0].update(change)
            self.assertEqual(module.candidate_outcome(other)[0],"not_met")
        result["mixed_measurement"]["performance_passed"]=False
        self.assertEqual(module.candidate_outcome(result)[0],"not_met")

    def test_replay_hit_requires_mixed_gain_and_retained_domain_no_regression(self):
        probe={"hit":True,"candidate_route":"exact_shape_replay","regions":[],
            "status":"performance_passed","gate":{"max_worst_round_regression":.02},
            "summary":{"round_speedups":[1.1]*5},"first_call_cost_passed":True,
            "resource_passed":False,"memory_policy":"record_only_v1"}
        miss={**copy.deepcopy(probe),"hit":False,"candidate_route":"original_compiled",
            "status":"retain_baseline","summary":{"round_speedups":[1.0]*5}}
        result={"probes":[probe,miss],"mixed_measurement":{"performance_passed":True}}
        self.assertEqual(module.candidate_outcome(result)[0],"passed")
        miss["summary"]["round_speedups"]=[.97]*5
        self.assertEqual(module.candidate_outcome(result)[0],"not_met")

    def test_campaign_both_phases_use_same_explicit_replay_strategy(self):
        for phase in ("calibrate","compare"):
            cmd=module.phase_command(Path("source"),Path("baseline"),Path("output"),phase=phase,
                strategy="graph_replay",calibration=Path("aa.json") if phase=="compare" else None)
            self.assertEqual(cmd[cmd.index("--strategy")+1],"graph_replay")
            self.assertNotIn("--blocks",cmd)
            self.assertEqual("--calibration" in cmd,phase=="compare")

    def test_original_mlp_campaign_keeps_16_32_comparison(self):
        cmd=module.phase_command(Path("source"),Path("baseline"),Path("output"),
            phase="compare",strategy="mlp_config",calibration=Path("aa.json"))
        self.assertEqual(cmd[-3:],["--blocks","16","32"])

    def test_campaign_rejects_unknown_strategy_or_wrong_calibration_phase(self):
        for phase,strategy,calibration in [("calibrate","graph_replay",Path("aa")),
                ("compare","graph_replay",None),("calibrate","eager",None)]:
            with self.assertRaises(ValueError):
                module.phase_command(Path("source"),Path("baseline"),Path("output"),
                    phase=phase,strategy=strategy,calibration=calibration)


if __name__ == "__main__":
    unittest.main()
