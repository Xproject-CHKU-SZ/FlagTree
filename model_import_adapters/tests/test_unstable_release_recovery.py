import copy
from pathlib import Path
import sys
import unittest
sys.path.insert(0,str(Path(__file__).parents[1]/'scripts'))
from benchmark_scene_pair import summarize_rounds,freeze_gate
from unstable_release_recovery import audit_unstable_statistics,validate_recovery_prefix,STATUS
from run_shape_release_wave import performance_streak

class UnstableRecoveryTest(unittest.TestCase):
    def probe(self,ratio=1):
        rounds=[{'A':[100.0]*100,'B':[100.0]*100} for _ in range(5)]
        rounds[3]['A']=[100.0*ratio]*100
        summary=summarize_rounds(rounds)
        return {'rounds':rounds,'summary':summary,'gate':freeze_gate(summary),'status':'calibrated','comparisons':{'fresh':{'passed':True}}}
    def fixture(self,ratio=.945):
        probes=[dict(self.probe(ratio if i==1 else 1),batch=b,sequence=s) for i,(b,s) in enumerate([(1,8),(2,24),(4,64),(2,8),(1,64)])]
        return {'status':'unstable_baseline','phase':'calibrate','probes':probes,'mixed_measurement':self.probe()}
    def test_unstable_noise_recomputed_from_raw_samples(self):
        self.assertAlmostEqual(audit_unstable_statistics(self.fixture()),.055)
    def test_stable_cannot_be_reclassified_to_skip_candidate(self):
        with self.assertRaises(ValueError):audit_unstable_statistics(self.fixture(.99))
    def test_fake_gate_or_saved_summary_rejected(self):
        for field in ['gate','summary']:
            report=self.fixture();report['probes'][1][field]={}
            with self.assertRaises(ValueError):audit_unstable_statistics(report)
    def test_missing_shapes_or_nonfinite_samples_rejected(self):
        report=self.fixture();report['probes'].pop()
        with self.assertRaises(ValueError):audit_unstable_statistics(report)
        report=self.fixture();report['mixed_measurement']['rounds'][0]['A'][0]=float('inf')
        with self.assertRaises(ValueError):audit_unstable_statistics(report)
    def test_wrong_outputs_remain_execution_failure(self):
        report=self.fixture();report['probes'][0]['comparisons']['fresh']['passed']=False
        with self.assertRaises(ValueError):audit_unstable_statistics(report)
    def test_wrong_phase_or_status_is_not_unstable(self):
        for key,val in [('phase','compare'),('status','failed')]:
            report=self.fixture();report[key]=val
            with self.assertRaises(ValueError):audit_unstable_statistics(report)
    def prefix(self):
        models=[{'model_id':f'fixture/{i}','revision':'a'*40,'task':'embedding'} for i in range(100)]
        records=[dict(m,status='validated_candidate',directory=f'/case/{i}',functional_report_sha256='b'*64,final_C1_accepted=False) for i,m in enumerate(models[:51])]
        previous={'status':'stopped','records':records,'target_models':100,'cpu_model_forward':'not_run','final_C1_accepted':False,
                  'current_model':models[51]['model_id'],'stage':'actual_policy_pair','consecutive_performance_nonacceptance':0}
        audit={'status':'passed','models':copy.deepcopy(records),'audited_records':51,'validated_models':51,'wave_closure_complete':False,
               'pending_retention_models':[],'pending_wave_models':[m['model_id'] for m in models[51:]],'errors':[],'inherited_records':50}
        return previous,models,audit
    def test_recovery_preserves_51_completed_not_100_completed(self):
        previous,models,audit=self.prefix();self.assertEqual(validate_recovery_prefix(previous,models,audit),51)
        self.assertEqual(len(previous['records']),51)
    def test_recovery_rejects_live_status_wrong_scope_or_failure_stage(self):
        previous,models,audit=self.prefix()
        for k,v in [('status','running'),('target_models',301),('stage','functional_verification'),('cpu_model_forward','run'),('current_model','other')]:
            with self.assertRaises(ValueError):validate_recovery_prefix({**previous,k:v},models,audit)
    def test_recovery_requires_independent_same_prefix(self):
        previous,models,audit=self.prefix()
        for k,v in [('status','failed'),('validated_models',50),('wave_closure_complete',True),('errors',['x']),('pending_retention_models',['x']),('pending_wave_models',[])]:
            with self.assertRaises(ValueError):validate_recovery_prefix(previous,models,{**audit,k:v})
        audit['models'][0]['functional_report_sha256']='c'*64
        with self.assertRaises(ValueError):validate_recovery_prefix(previous,models,audit)
    def test_ten_distinct_unstable_models_stop_without_retry_counting(self):
        rows=[{'model_id':str(i),'status':STATUS} for i in range(10)]
        self.assertEqual(performance_streak(rows),10)
        self.assertEqual(performance_streak(rows+[{'model_id':'pass','status':'validated_candidate'}]),0)
        with self.assertRaises(ValueError):performance_streak(rows+[rows[0]])

if __name__=='__main__':unittest.main()
