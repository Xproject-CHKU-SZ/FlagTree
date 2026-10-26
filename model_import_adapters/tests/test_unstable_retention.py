import copy
from pathlib import Path
import sys
import unittest
sys.path[:0]=[str(Path(__file__).parents[1]/'scripts'),str(Path(__file__).parents[1]/'src')]
from unstable_retention import MODE,STAGE,build_entry,validate_entry,validate_terminal
from verify_shape_release_case import validate_enrollment,validate_policy_binding,expected_route
from retention_resolution import apply_selection
import test_shape_release_case as cases
import test_retention_resolution as resolutions

class UnstableRetentionTest(unittest.TestCase):
    def fixture(self):
        accepted,manifest,entry,descriptors,policy=cases.ReleaseCaseTest().fixture()
        calibration={'status':'unstable_baseline','identity':{k:entry[k] for k in ['model_id','revision','task','pt2_sha256']}}
        audit={'status':'passed','actual_policy_outcome':'measurement_unstable','performance_passed':False,
               'array_comparisons':60,'max_aa_noise':.054124413375223224,'pt2_sha256':entry['pt2_sha256'],
               'calibration_sha256':'f'*64,'terminal_report_sha256':'1'*64}
        return accepted,manifest,entry,descriptors,policy,calibration,audit
    def selected(self):
        accepted,manifest,entry,descriptors,policy,a,audit=self.fixture()
        selected=build_entry(entry,a,audit);manifest['models'][0]=selected
        manifest['evidence_selection']={'stage':STAGE,'model_id':selected['model_id'],'original_discovery_passed_preserved':True,'not_a_performance_pass':True}
        return accepted,manifest,selected,descriptors,policy
    def test_original_discovery_pair_preserved_missing_actual_ab_none(self):
        _,_,entry,_,_,a,audit=self.fixture();old=copy.deepcopy(entry);selected=build_entry(entry,a,audit)
        self.assertEqual(entry,old);self.assertEqual(selected['discovery_status'],'passed')
        self.assertEqual(selected['original_discovery_calibration_sha256'],old['calibration_sha256'])
        self.assertEqual(selected['original_discovery_comparison_sha256'],old['comparison_sha256'])
        self.assertIsNone(selected['comparison_sha256']);self.assertEqual(selected['mode'],MODE)
    def test_explicit_unstable_mode_retains_original_compiled_without_policy(self):
        accepted,manifest,selected,descriptors,policy=self.selected()
        self.assertEqual(validate_enrollment(accepted,manifest,'a/b','a'*64,'b'*64),selected)
        validate_policy_binding(selected,None);self.assertEqual(expected_route(selected,None,descriptors),'original_compiled')
        with self.assertRaises(ValueError):validate_policy_binding(selected,policy)
    def test_forged_ab_or_performance_outcome_not_accepted(self):
        accepted,manifest,entry,_,_=self.selected()
        for key,value in [('comparison_sha256','c'*64),('actual_policy_outcome','passed'),('discovery_status','not_met')]:
            other=copy.deepcopy(manifest);other['models'][0][key]=value
            with self.assertRaises(ValueError):validate_enrollment(accepted,other,'a/b','a'*64,'b'*64)
    def test_explicit_evidence_selection_and_original_hashes_required(self):
        accepted,manifest,entry,_,_=self.selected()
        for key,value in [('stage','discovery'),('not_a_performance_pass',False),('original_discovery_passed_preserved',False),('model_id','other/id')]:
            bad=copy.deepcopy(manifest);bad['evidence_selection'][key]=value
            with self.assertRaises(ValueError):validate_enrollment(accepted,bad,'a/b','a'*64,'b'*64)
        for key in ['original_discovery_comparison_sha256','original_discovery_calibration_sha256','calibration_terminal_sha256']:
            bad=copy.deepcopy(manifest);bad['models'][0][key]='missing'
            with self.assertRaises(ValueError):validate_enrollment(accepted,bad,'a/b','a'*64,'b'*64)
    def test_unstable_builder_rejects_missing_numeric_or_unstable_proof(self):
        _,_,entry,_,_,a,audit=self.fixture()
        for key,value in [('array_comparisons',0),('performance_passed',True),('max_aa_noise',.01),('status','failed'),('pt2_sha256','other')]:
            with self.assertRaises(ValueError):build_entry(entry,a,{**audit,key:value})
        for key in ['model_id','revision','task','pt2_sha256']:
            bad=copy.deepcopy(a);bad['identity'][key]='drift'
            with self.assertRaises(ValueError):build_entry(entry,bad,audit)
    def test_unresolved_discovery_cannot_select_unstable_retention(self):
        _,_,entry,_,_,a,audit=self.fixture()
        for key,value in [('mode','pending_discovery'),('discovery_status','pending')]:
            with self.assertRaises(ValueError):build_entry({**entry,key:value},a,audit)
    def test_new_mode_does_not_relax_original301_scope_or_final_status(self):
        accepted,manifest,_,_,_=self.selected()
        for key,value in [('accepted_sha256','drift'),('measured_source_baseline_sha256','drift'),('final_C1_passed',301)]:
            with self.assertRaises(ValueError):validate_enrollment(accepted,{**manifest,key:value},'a/b','a'*64,'b'*64)
        manifest['models'].pop()
        with self.assertRaises(ValueError):validate_enrollment(accepted,manifest,'a/b','a'*64,'b'*64)
    def test_resolution_retains_unstable_negative_and_continuous_ledger(self):
        previous,audit,selection,checked=resolutions.RetentionResolutionTest().fixture()
        previous['records'][-1].update(status='actual_policy_measurement_unstable',actual_policy_outcome='measurement_unstable')
        checked['2']['actual_policy_outcome']='measurement_unstable'
        new,result=apply_selection(previous,audit,selection,checked)
        self.assertEqual(new['records'][-1]['negative_origin']['status'],'actual_policy_measurement_unstable')
        self.assertEqual(new['records'][-1]['actual_policy_outcome'],'measurement_unstable')
        self.assertEqual(new['consecutive_performance_nonacceptance'],1);self.assertTrue(result['wave_closure_complete'])
        checked['2']['actual_policy_outcome']='passed'
        with self.assertRaises(ValueError):apply_selection(previous,audit,selection,checked)
    def terminal(self):
        fields=['0']*50;fields[0]='Z';fields[19]='456'
        command=['python','verifier','--output','new-b0'];receipt={'terminal_state':'Z','exit_code':0,'job':{'pid':123,'start_ticks':456,'command':command},'report_sha256':'a'*64,'raw_stat':'123 (python) '+' '.join(fields)}
        return receipt,command
    def test_real_terminal_zero_with_pid_birth_and_exact_command(self):
        receipt,command=self.terminal();validate_terminal(receipt,command,'a'*64)
    def test_terminal_missing_wrong_identity_or_nonzero_is_not_success(self):
        receipt,command=self.terminal()
        for key,value in [('terminal_state','S'),('exit_code',1),('report_sha256','drift'),('raw_stat','')]:
            with self.assertRaises(ValueError):validate_terminal({**receipt,key:value},command,'a'*64)
        for field,value in [(0,'S'),(19,'457'),(49,'256')]:
            bad=copy.deepcopy(receipt);prefix,_,raw=bad['raw_stat'].partition(') ');fields=raw.split();fields[field]=value;bad['raw_stat']=prefix+') '+' '.join(fields)
            with self.assertRaises(ValueError):validate_terminal(bad,command,'a'*64)
        with self.assertRaises(ValueError):validate_terminal(receipt,['different','command'],'a'*64)

if __name__=='__main__':unittest.main()
