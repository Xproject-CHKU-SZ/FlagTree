import copy
from pathlib import Path
import sys
import unittest
sys.path.insert(0,str(Path(__file__).parents[1]/"scripts"))
from audit_observed_gemm_pair import audit_reports,same_statistics
from benchmark_scene_pair import freeze_gate,summarize_rounds,performance_passed
from memory_acceptance import MEMORY_POLICY, memory_observation


class AuditTest(unittest.TestCase):
    def test_libm_roundoff_does_not_relax_decisions(self):
        import math
        self.assertTrue(same_statistics(1.,math.nextafter(1.,2.)))
        self.assertFalse(same_statistics(1.,1.000001))
        self.assertFalse(same_statistics(True,False))
        self.assertFalse(same_statistics({"ready":True},{"ready":False}))

    def fixture(self):
        a={"status":"calibrated","identity":{"models":["a/b"]},"cases":[]}
        b={"status":"passed","identity":a["identity"],"cases":[]}
        for m in (8,16,48,64):
            rounds=[{"A":[10.]*100,"B":[10.]*100} for _ in range(5)]
            summary=summarize_rounds(rounds);gate=freeze_gate(summary)
            base={"model_id":"a/b","shape_mkn":[m,768,2304],"input_sha256":"x","weight_sha256":"w",
                  "repeats_per_block":10,"rounds":rounds,"summary":summary,"gate":gate,"status":"calibrated"}
            a["cases"].append(base)
            changed=copy.deepcopy(base);changed["rounds"]=[{"A":[11.]*100,"B":[10.]*100} for _ in range(5)]
            changed.update(summary=summarize_rounds(changed["rounds"]),status="performance_passed",checks={"A_B":{"passed":True}},
                performance_passed=True,transient_torch_memory_bytes={"A":100,"B":100},first_call_s={"A":1.,"B":1.},
                resource_passed=True,first_call_cost_passed=True)
            b["cases"].append(changed)
        return a,b

    def test_recompute_positive_samples(self):
        a,b=self.fixture();r=audit_reports(a,b)
        self.assertEqual(r["performance_passed"],4)

    def test_missing_duplicate_drift_and_forged_gate_rejected(self):
        for mutate in (lambda a,b:b["cases"].pop(),lambda a,b:b["cases"].append(copy.deepcopy(b["cases"][0])),
                       lambda a,b:b["cases"][0].update(input_sha256="other"),
                       lambda a,b:b["cases"][0]["summary"].update(geomean_speedup=10.),
                       lambda a,b:b["cases"][0]["gate"].update(min_geomean_speedup=1.),
                       lambda a,b:b["cases"][0].update(resource_passed=False)):
            a,b=self.fixture();mutate(a,b)
            with self.assertRaises(ValueError):audit_reports(a,b)

    def test_negative_gain_is_valid_audited_result(self):
        a,b=self.fixture()
        for record in b["cases"]:
            record.update(rounds=copy.deepcopy(a["cases"][0]["rounds"]),summary=copy.deepcopy(a["cases"][0]["summary"]),
                          status="retain_baseline",performance_passed=False)
        b["status"]="retain_baseline"
        self.assertEqual(audit_reports(a,b)["performance_passed"],0)

    def test_record_only_keeps_excess_memory_truthful_and_passes_gain(self):
        a,b=self.fixture();b["memory_policy"]=MEMORY_POLICY
        for record in b["cases"]:
            record["transient_torch_memory_bytes"]["B"]=100*1024*1024
            record.update(memory_observation(record["transient_torch_memory_bytes"],record["gate"]))
            self.assertFalse(record["resource_passed"])
        self.assertEqual(audit_reports(a,b)["performance_passed"],4)
        b["cases"][0]["memory_within_reference_budget"]=True
        with self.assertRaises(ValueError):audit_reports(a,b)

    def test_legacy_report_still_blocks_excess_memory(self):
        a,b=self.fixture();b["status"]="retain_baseline"
        for record in b["cases"]:
            record["transient_torch_memory_bytes"]["B"]=100*1024*1024
            record.update(resource_passed=False,status="retain_baseline")
        self.assertEqual(audit_reports(a,b)["performance_passed"],0)

    def test_record_only_still_rejects_bad_first_call_and_forged_policy(self):
        a,b=self.fixture();b["memory_policy"]=MEMORY_POLICY;b["status"]="retain_baseline"
        for record in b["cases"]:
            record.update(memory_observation(record["transient_torch_memory_bytes"],record["gate"]))
            record.update(first_call_s={"A":1.,"B":20.},first_call_cost_passed=False,status="retain_baseline")
        self.assertEqual(audit_reports(a,b)["performance_passed"],0)
        b["cases"][0]["memory_policy"]="unknown"
        with self.assertRaises(ValueError):audit_reports(a,b)


if __name__=="__main__":unittest.main()
