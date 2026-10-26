import copy
from pathlib import Path
import sys
import unittest

sys.path.insert(0,str(Path(__file__).parents[1]/"scripts"))
from audit_dynamic_shape_pair import audit_reports
from benchmark_scene_pair import freeze_gate,summarize_rounds
from memory_acceptance import MEMORY_POLICY,memory_observation


class DynamicPairAuditTest(unittest.TestCase):
    def fixture(self):
        rounds=[{"A":[10.]*100,"B":[10.]*100} for _ in range(5)]
        improved=[{"A":[10.]*100,"B":[8.]*100} for _ in range(5)]
        summary=summarize_rounds(rounds);gate=freeze_gate(summary)
        a={"identity":{"model_id":"a/b","strategy":"graph_replay"},"status":"calibrated","probes":[]}
        b={"identity":a["identity"],"status":"measured","memory_policy":MEMORY_POLICY,"probes":[]}
        shapes=[(1,8),(2,24),(4,64),(2,8),(1,64)]
        for shape in shapes:
            base={"batch":shape[0],"sequence":shape[1],"input_sha256":"x","repeats_per_block":10,
                  "rounds":rounds,"summary":summary,"gate":gate,"comparisons":{"output":{"passed":True}}}
            a["probes"].append(copy.deepcopy(base));hit=shape in shapes[:2]
            changed=copy.deepcopy(base);samples=improved if hit else rounds
            changed.update(rounds=copy.deepcopy(samples),summary=summarize_rounds(samples),hit=hit,
                candidate_route="exact_shape_replay" if hit else "original_compiled",regions=[],
                performance_passed=hit,status="performance_passed" if hit else "retain_baseline",
                first_call_s={"A":10.,"B":.1},first_call_cost_passed=True,
                torch_allocator_transient_bytes={"A":100,"B":10000000})
            changed.update(memory_observation(changed["torch_allocator_transient_bytes"],gate))
            b["probes"].append(changed)
        order=[0,1,2,3,4,4,3,2,1,0,0,1,2,3,4]
        a["mixed_measurement"]={"rounds":rounds,"summary":summary,"gate":gate,"order":order}
        b["mixed_measurement"]={"rounds":improved,"summary":summarize_rounds(improved),"gate":gate,
                                "performance_passed":True,"order":order}
        b["warm_mixed_trace"]=[{"comparison":{"passed":True},"counters_before":{},"counters_after":{}} for _ in order]
        return a,b

    def test_memory_growth_does_not_veto_real_gains(self):
        a,b=self.fixture();result=audit_reports(a,b)
        self.assertEqual(result["candidate_outcome"],"passed")
        self.assertEqual(len(result["rows"]),5)

    def test_identity_duplicates_raw_samples_and_forged_decisions_rejected(self):
        for mutate in (lambda a,b:b.update(identity={"model_id":"other"}),
                       lambda a,b:b["probes"].pop(),
                       lambda a,b:b["probes"][0]["summary"].update(geomean_speedup=10.),
                       lambda a,b:b["probes"][0].update(first_call_cost_passed=False),
                       lambda a,b:b["probes"][0].update(memory_within_reference_budget=True),
                       lambda a,b:b["warm_mixed_trace"][0].update(counters_after={"unique_graphs":1})):
            a,b=self.fixture();mutate(a,b)
            with self.assertRaises(ValueError):audit_reports(a,b)

    def test_capture_startup_uses_incremental_budget_not_cold_baseline_credit(self):
        a,b=self.fixture();b["probes"][0]["first_call_s"]={"A":100.,"B":11.}
        with self.assertRaisesRegex(ValueError,"First-call"):audit_reports(a,b)


if __name__=="__main__":unittest.main()
