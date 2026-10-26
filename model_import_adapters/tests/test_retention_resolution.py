import copy
from pathlib import Path
import sys
import unittest

sys.path.insert(0,str(Path(__file__).parents[1]/"scripts"))
from retention_resolution import apply_selection


class RetentionResolutionTest(unittest.TestCase):
    def fixture(self):
        old=[{'model_id':str(i),'status':'validated_candidate'} for i in range(3)]
        old[-1].update(status='actual_policy_timing_not_met',actual_policy_outcome='not_met',directory='/original/negative')
        previous={'status':'completed_wave_not_final301','target_models':3,'records':old,'consecutive_performance_nonacceptance':1}
        audit={'status':'passed','errors':[],'audited_records':3,'validated_models':2,'models':[dict(x) for x in old],
               'pending_wave_models':[],'pending_retention_models':['2'],'wave_closure_complete':False}
        selection=[{'model_id':'2','functional_case':'/new/b0','enrollment':'/new/explicit-negative-enrollment.json'}]
        checked={'2':{'model_id':'2','status':'validated_retention','actual_policy_outcome':'not_met','functional_array_checks':80,
                      'counterexample_array_checks':24,'functional_report_sha256':'f'*64,'directory':'/original/negative'}}
        return previous,audit,selection,checked

    def test_original_negative_immutable_new_b0_evidence_separate(self):
        old,audit,selected,checked=self.fixture();baseline=copy.deepcopy(old)
        new,result=apply_selection(old,audit,selected,checked)
        self.assertEqual(old,baseline);self.assertEqual(new['records'][:2],old['records'][:2])
        self.assertEqual(new['records'][-1]['negative_origin'],old['records'][-1])
        self.assertEqual(new['records'][-1]['actual_policy_outcome'],'not_met')
        self.assertEqual(new['records'][-1]['status'],'validated_retention')
        self.assertEqual(new['consecutive_performance_nonacceptance'],1)
        self.assertTrue(result['wave_closure_complete']);self.assertEqual(result['validated_models'],3)

    def test_no_implicit_retention_for_missing_or_duplicated_selection(self):
        previous,audit,selection,checked=self.fixture()
        for bad in ([],selection*2,[{'model_id':'outside'}]):
            with self.assertRaises(ValueError):apply_selection(previous,audit,bad,checked)

    def test_passing_model_cannot_be_replaced_by_resolution(self):
        previous,audit,selection,checked=self.fixture()
        selection[0]['model_id']='0'
        with self.assertRaises(ValueError):apply_selection(previous,audit,selection,checked)

    def test_raw_negative_not_relabelled_strategy_pass(self):
        previous,audit,selection,checked=self.fixture()
        for key,value in [('status','validated_candidate'),('actual_policy_outcome','passed'),('functional_array_checks',0)]:
            bad=copy.deepcopy(checked);bad['2'][key]=value
            with self.assertRaises(ValueError):apply_selection(previous,audit,selection,bad)

    def test_incomplete_other_models_and_failed_original_audit_cannot_close(self):
        previous,audit,selection,checked=self.fixture()
        for bad in ({**audit,'status':'failed'},{**audit,'errors':['error']},{**audit,'audited_records':2},{**audit,'pending_wave_models':['other']}):
            with self.assertRaises(ValueError):apply_selection(previous,bad,selection,checked)
        with self.assertRaises(ValueError):apply_selection({**previous,'status':'running'},audit,selection,checked)


if __name__=='__main__':unittest.main()
