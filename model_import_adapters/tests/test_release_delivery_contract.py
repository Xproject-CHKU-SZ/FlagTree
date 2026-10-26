"""Synthetic unit data tests fail-closed release gates; no model/runtime success counts."""
import copy
from pathlib import Path
import sys
import unittest
sys.path.insert(0, str(Path(__file__).parents[1] / "scripts"))
from release_delivery_contract import IR_FILES, validate_final_scope


def fixture():
    accepted = [{"model_id": "fixture/model-%03d" % i, "revision": "a" * 40, "task": "fixture_only"} for i in range(301)]
    chain = {"status": "completed_release_scope_pending_final_delivery", "validated_models": 301,
        "cpu_model_forward": "not_run", "final_C1_accepted": False, "endpoints": [200,250,275,301],
        "records": [{"cumulative_scope": n, "pid": n, "start_ticks": n, "exit_code": 0,
            "terminal_observation": "actual waitid WNOWAIT; not yet reaped"} for n in [200,250,275,301]]}
    rows = [{**x, "directory": "fixture/case-%03d" % i, "status": "validated_candidate" if i < 200 else "validated_retention",
        "actual_policy_outcome": "passed" if i < 200 else "not_met", "actual_policy_mixed_speedup": 1.2 if i < 200 else None,
        "functional_report_sha256": "b" * 64, "final_C1_accepted": False} for i,x in enumerate(accepted)]
    wave = {"status": "completed_wave_not_final301", "target_models": 301, "records": rows,
        "cpu_model_forward": "not_run", "final_C1_accepted": False}
    audit = {"status": "passed", "wave_closure_complete": True, "historical_scope": 301, "wave_scope": 301,
        "audited_records": 301, "validated_models": 301, "errors": [], "pending_retention_models": [], "pending_wave_models": [],
        "models": copy.deepcopy(rows), "cpu_model_forward": "not_run", "final_C1_accepted": False}
    ir = {"status": "passed", "passed": 301, "failed": 0, "cpu_model_forward": "not_run", "accepted_sha256": "c" * 64,
        "models": [{**x, "status": "passed", "errors": [], "input_probes": 5,
            "hashes": {k:"d"*64 for k in IR_FILES}, "ir_metadata": {"status":"passed", "saved_and_loaded":True,
                "shape_constraints_equal":True, "rule_checks":{"failed":0, "not_implemented":7}, "all_rules_executed":False}} for x in accepted]}
    return [accepted,chain,wave,audit,ir,"c"*64]


class DeliveryGateTest(unittest.TestCase):
    def test_exact_synthetic_scope_is_not_final_acceptance(self):
        result=validate_final_scope(*fixture())
        self.assertEqual(result["unique_models"],301);self.assertEqual(result["original_main_shapes"],1505)
        self.assertEqual(result["qualified_strategies"],200);self.assertEqual(result["retained_original_compiled"],101)
        self.assertFalse(result["final_C1_accepted"])

    def test_partial_chain_is_rejected(self):
        f=fixture();f[1].update(status="running",validated_models=184)
        with self.assertRaisesRegex(ValueError,"not terminal301"):validate_final_scope(*f)

    def test_missing_terminal_child_is_not_success(self):
        f=fixture();f[1]["records"][-1]["terminal_observation"]="process_missing"
        with self.assertRaises(ValueError):validate_final_scope(*f)

    def test_nonzero_or_string_exit_is_rejected(self):
        for value in [1,"0",False]:
            with self.subTest(value=value):
                f=fixture();f[1]["records"][-1]["exit_code"]=value
                with self.assertRaises(ValueError):validate_final_scope(*f)

    def test_missing_endpoint_is_rejected(self):
        f=fixture();f[1]["records"].pop()
        with self.assertRaises(ValueError):validate_final_scope(*f)

    def test_partial_duplicate_or_replaced_model_is_rejected(self):
        for mode in ["partial","duplicate","replacement"]:
            f=fixture();rows=f[2]["records"]
            if mode=="partial":rows.pop()
            elif mode=="duplicate":rows[-1]=copy.deepcopy(rows[0])
            else:rows[-1]["model_id"]="fixture/replacement"
            with self.subTest(mode=mode),self.assertRaises(ValueError):validate_final_scope(*f)

    def test_revision_and_task_drift_rejected(self):
        for key in ["revision","task"]:
            f=fixture();f[2]["records"][0][key]="changed"
            with self.subTest(key=key),self.assertRaises(ValueError):validate_final_scope(*f)

    def test_prefix_audit_does_not_become_complete(self):
        f=fixture();f[3].update(wave_closure_complete=False,audited_records=169,validated_models=169)
        with self.assertRaises(ValueError):validate_final_scope(*f)

    def test_empty_saved_green_without_models_rejected(self):
        f=fixture();f[3]["models"]=[]
        with self.assertRaises(ValueError):validate_final_scope(*f)

    def test_audit_order_or_report_hash_drift_rejected(self):
        for mode in ["order","hash"]:
            f=fixture()
            if mode=="order":f[3]["models"].reverse()
            else:f[3]["models"][0]["functional_report_sha256"]="e"*64
            with self.subTest(mode=mode),self.assertRaises(ValueError):validate_final_scope(*f)

    def test_pending_retention_and_errors_rejected(self):
        for key in ["errors","pending_retention_models","pending_wave_models"]:
            f=fixture();f[3][key]=["fixture/pending"]
            with self.subTest(key=key),self.assertRaises(ValueError):validate_final_scope(*f)

    def test_cpu_forward_or_early_final_flag_rejected(self):
        for i in [1,2,3]:
            for key,value in [("cpu_model_forward","run"),("final_C1_accepted",True)]:
                f=fixture();f[i][key]=value
                with self.subTest(i=i,key=key),self.assertRaises(ValueError):validate_final_scope(*f)

    def test_negative_candidate_cannot_publish(self):
        for value in ["not_met","measurement_unstable",None]:
            f=fixture();f[2]["records"][0]["actual_policy_outcome"]=value
            with self.subTest(value=value),self.assertRaises(ValueError):validate_final_scope(*f)

    def test_nonfinite_speedup_rejected(self):
        for value in [float("nan"),float("inf"),0,True]:
            f=fixture();f[2]["records"][0]["actual_policy_mixed_speedup"]=value
            with self.subTest(value=value),self.assertRaises(ValueError):validate_final_scope(*f)

    def test_retention_is_not_strategy_approval(self):
        f=fixture();f[2]["records"][-1]["actual_policy_outcome"]="passed"
        with self.assertRaises(ValueError):validate_final_scope(*f)

    def test_ir_missing_binding_or_probe_rejected(self):
        for mode in ["hash","probe","constraints","readback","failed_rule"]:
            f=fixture();m=f[4]["models"][0]
            if mode=="hash":m["hashes"].pop("semantics.json")
            elif mode=="probe":m["input_probes"]=4
            elif mode=="constraints":m["ir_metadata"]["shape_constraints_equal"]=False
            elif mode=="readback":m["ir_metadata"]["saved_and_loaded"]=False
            else:m["ir_metadata"]["rule_checks"]["failed"]=1
            with self.subTest(mode=mode),self.assertRaises(ValueError):validate_final_scope(*f)


if __name__=="__main__":unittest.main()
