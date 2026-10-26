import copy
from pathlib import Path
import sys
import unittest

sys.path.insert(0,str(Path(__file__).parents[1]/"scripts"))
from release_wave_continuation import seed_release_progress, validate_extension


class ReleaseExtensionTest(unittest.TestCase):
    def fixture(self):
        models=[{'model_id':f'fixture/{i}','revision':'a'*40,'task':'sequence_classification_logits'} for i in range(100)]
        records=[dict(row,status='validated_candidate',directory=f'/old/case-{i}',final_C1_accepted=False,
                      functional_report_sha256='b'*64) for i,row in enumerate(models[:50])]
        previous={'status':'completed_wave_not_final301','target_models':50,'records':records,'commands':[{'command':['actual','command'],'exit_code':0}],
                  'cpu_model_forward':'not_run','final_C1_accepted':False,'consecutive_performance_nonacceptance':0,'pinned_inputs':{'accepted':'a','runtime':'r'}}
        audit={'status':'passed','wave_closure_complete':True,'historical_scope':301,'wave_scope':50,'audited_records':50,'validated_models':50,
               'errors':[],'pending_retention_models':[],'pending_wave_models':[],'models':copy.deepcopy(records)}
        return models,previous,audit

    def test_fifty_to_one_hundred_inherits_exact_cases_not_new_runs(self):
        models,previous,audit=self.fixture()
        self.assertEqual(validate_extension(previous,models[:50],models,audit,{'accepted':'a','runtime':'r'}),50)
        seed=seed_release_progress({'target_models':100,'status':'running'},previous,{'inherited_cases_are_not_new_runs':True})
        self.assertEqual(seed['target_models'],100);self.assertEqual(seed['records'],previous['records'])
        self.assertEqual(seed['commands'],previous['commands'])
        seed['records'][0]['directory']='new';self.assertEqual(previous['records'][0]['directory'],'/old/case-0')

    def test_prefix_revision_task_duplicates_and_batch_size_not_replaced(self):
        models,previous,audit=self.fixture()
        for bad in (models[1:],models[:49]+models[50:],models[:99]+[models[0]],models[:50]):
            with self.assertRaises(ValueError):validate_extension(previous,models[:50],bad,audit,{})
        for key in ('revision','task'):
            bad=copy.deepcopy(models);bad[0][key]='drift'
            with self.assertRaises(ValueError):validate_extension(previous,models[:50],bad,audit,{})

    def test_partial_stopped_or_negative_previous_wave_cannot_extend(self):
        models,previous,audit=self.fixture()
        for status in ('running','stopped'):
            with self.assertRaises(ValueError):validate_extension({**previous,'status':status},models[:50],models,audit,{})
        bad=copy.deepcopy(previous);bad['records'][-1]['status']='actual_policy_timing_not_met'
        with self.assertRaises(ValueError):validate_extension(bad,models[:50],models,audit,{})

    def test_independent_closure_counts_and_runtime_hashes_are_mandatory(self):
        models,previous,audit=self.fixture()
        for key,value in [('status','failed'),('wave_closure_complete',False),('validated_models',49),('audited_records',49),('historical_scope',300),
                          ('errors',['error']),('pending_retention_models',['fixture/0']),('pending_wave_models',['fixture/1'])]:
            with self.assertRaises(ValueError):validate_extension(previous,models[:50],models,{**audit,key:value},{})
        with self.assertRaises(ValueError):validate_extension(previous,models[:50],models,audit,{'runtime':'changed'})

    def test_inherited_real_paths_status_and_functional_hash_cannot_drift(self):
        models,previous,audit=self.fixture()
        for key in ('directory','status','functional_report_sha256'):
            bad=copy.deepcopy(audit);bad['models'][0][key]='drift'
            with self.assertRaises(ValueError):validate_extension(previous,models[:50],models,bad,{})

    def test_continuation_preserves_nine_failures_and_rejects_ten(self):
        models,previous,audit=self.fixture()
        for row in previous['records'][-9:]:row['status']='validated_retention'
        audit['models']=copy.deepcopy(previous['records']);previous['consecutive_performance_nonacceptance']=9
        self.assertEqual(validate_extension(previous,models[:50],models,audit,{}),50)
        seed=seed_release_progress({'target_models':100},previous,{})
        self.assertEqual(seed['consecutive_performance_nonacceptance'],9)
        previous['records'][-10]['status']='validated_retention';audit['models']=copy.deepcopy(previous['records']);previous['consecutive_performance_nonacceptance']=10
        with self.assertRaises(ValueError):validate_extension(previous,models[:50],models,audit,{})


if __name__=='__main__':unittest.main()
