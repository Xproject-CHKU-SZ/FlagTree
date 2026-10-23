"""Synthetic CPU-only reporting tests; no device/stability claims."""
import copy
import json
from pathlib import Path
import tempfile
import unittest
from summarize_longrun import (ARMS, ROUNDS, analyze_arm, analyze_run, fingerprint,
                               markdown, sha)


def fixture():
    protocol = {'atol':0,'rtol':0,'dtype':'float32','sentences':64,'stream':'single_current_stream'}
    gate = {'status':'passed','selected':{'gelu':{}},'identity_sha256':'identity',
            'compiler_set_sha256':'compiler','case_sha256':'case','protocol':protocol}
    baseline = {'status':'passed','arm':'flagtree-out','longrun_rounds':0,'gate_sha256':'gate',
        'case_sha256':'case','identity_sha256':'identity','physical_card':6,
        'compiler_set_sha256':'compiler','output_sha256':'output','protocol_sha256':fingerprint(protocol)}
    result = {**baseline,'longrun_rounds':1000,'samples_s':[.01]*1000,'protocol':protocol,
        'post_warmup':{'allocated_bytes':100},'allocated_end_minus_warm_bytes':0,
        'growth_checkpoints':[{'round':n,'allocated_bytes':100,'reserved_bytes':200,
                               'output_sha256':'output'} for n in ROUNDS]}
    return gate, baseline, result


class ArmTests(unittest.TestCase):
    def setUp(self): self.gate,self.baseline,self.result=fixture()
    def check(self):return analyze_arm(self.result,self.baseline,self.gate,'gate','case',6,'flagtree-out')
    def test_no_growth(self):self.assertEqual(self.check()['observation'],'no_positive_allocated_growth_observed')
    def test_growth_not_hidden(self):
        self.result['growth_checkpoints'][-1]['allocated_bytes']=164
        self.result['allocated_end_minus_warm_bytes']=64
        self.assertEqual(self.check()['observation'],'allocated_change_observed_needs_review')
    def test_transient_change_not_hidden(self):
        self.result['growth_checkpoints'][3]['allocated_bytes']=164
        self.assertEqual(self.check()['allocated_checkpoint_span_bytes'],64)
    def test_reserved_growth_separate(self):
        self.result['growth_checkpoints'][-1]['reserved_bytes']=300
        report=self.check()
        self.assertEqual(report['reserved_checkpoint_span_bytes'],100)
        self.assertEqual(report['observation'],'no_positive_allocated_growth_observed')
    def test_missing_checkpoint(self):
        self.result['growth_checkpoints'].pop()
        with self.assertRaises(ValueError):self.check()
    def test_duplicate_checkpoint(self):
        self.result['growth_checkpoints'][2]['round']=100
        with self.assertRaises(ValueError):self.check()
    def test_wrong_output(self):
        self.result['growth_checkpoints'][5]['output_sha256']='other'
        with self.assertRaises(ValueError):self.check()
    def test_wrong_round_count(self):
        self.result['longrun_rounds']=999
        with self.assertRaises(ValueError):self.check()
    def test_identity_rejection_matrix(self):
        for key in ('gate_sha256','case_sha256','physical_card','identity_sha256',
                    'compiler_set_sha256','protocol_sha256','output_sha256'):
            with self.subTest(key=key):
                original=copy.deepcopy(self.result);self.result[key]='wrong'
                with self.assertRaises(ValueError):self.check()
                self.result=original
    def test_nonfinite_samples(self):
        self.result['samples_s'][0]=float('nan')
        with self.assertRaises(ValueError):self.check()
    def test_failed_arm(self):
        self.result['status']='failed'
        with self.assertRaises(ValueError):self.check()
    def test_negative_memory(self):
        self.result['growth_checkpoints'][0]['allocated_bytes']=-1
        with self.assertRaises(ValueError):self.check()
    def test_changed_protocol(self):
        self.result['protocol']['atol']=1e-5
        with self.assertRaises(ValueError):self.check()


class RunTests(unittest.TestCase):
    def setUp(self):
        self.temp=tempfile.TemporaryDirectory();self.addCleanup(self.temp.cleanup)
        self.root=Path(self.temp.name)/'raw';self.root.mkdir()
        self.name='example/model';case={'model_id':self.name,'revision':'a'*40}
        self.write('suite-summary.json',{'dry_run':False,'physical_card':6,
                   'models':[{'model_id':self.name,'status':'completed'}]})
        self.write('exit-occupancy.json',{'selected':6,'idle':True})
        self.write('model-01/case.json',case)
        gate,base,result=fixture();gate['case_sha256']=fingerprint(case)
        self.write('model-01/gate/result.json',gate)
        base['gate_sha256']=sha(self.root/'model-01/gate/result.json')
        base['case_sha256']=fingerprint(case)
        self.write('model-01/rep-1-flagtree-out/result.json',base)
        self.write('baseline-index.json',[{'path':'model-01/rep-1-flagtree-out/result.json',
                   'sha256':sha(self.root/'model-01/rep-1-flagtree-out/result.json')}])
        result.update({k:base[k] for k in ('gate_sha256','case_sha256')})
        for arm in ARMS:
            result['arm']=arm
            self.write('model-01/longrun-'+arm+'/result.json',result)
    def write(self,p,x):
        path=self.root/p;path.parent.mkdir(parents=True,exist_ok=True)
        path.write_text(json.dumps(x))
    def run_report(self):return analyze_run(self.root,(self.name,))
    def test_complete_readonly(self):
        before={str(p):sha(p) for p in self.root.rglob('*') if p.is_file()}
        result=self.run_report()
        self.assertEqual(len(result['models']),1)
        self.assertFalse(result['allocated_change_needs_review'])
        self.assertEqual(before,{str(p):sha(p) for p in self.root.rglob('*') if p.is_file()})
        self.assertIn('不等于完全无泄漏',markdown(result))
    def test_short_only_rejected(self):
        (self.root/'model-01/longrun-flagtree-out/result.json').unlink()
        with self.assertRaises(FileNotFoundError):self.run_report()
    def test_source_baseline_tampered(self):
        self.write('model-01/rep-1-flagtree-out/result.json',{})
        with self.assertRaises(ValueError):self.run_report()
    def test_partial_suite(self):
        self.write('failure.json',{'error':'interrupted'})
        with self.assertRaises(ValueError):self.run_report()
    def test_exit_not_idle(self):
        self.write('exit-occupancy.json',{'selected':6,'idle':False})
        with self.assertRaises(ValueError):self.run_report()
    def test_dry_run_rejected(self):
        self.write('suite-summary.json',{'dry_run':True})
        with self.assertRaises(ValueError):self.run_report()
    def test_missing_models(self):
        with self.assertRaises(ValueError):analyze_run(self.root)
    def test_path_traversal(self):
        self.write('baseline-index.json',[{'path':'../private.json','sha256':'forged'}])
        with self.assertRaises(ValueError):self.run_report()
    def test_mutated_case(self):
        self.write('model-01/case.json',{'model_id':self.name,'revision':'b'*40})
        with self.assertRaises(ValueError):self.run_report()


if __name__=='__main__':unittest.main()
