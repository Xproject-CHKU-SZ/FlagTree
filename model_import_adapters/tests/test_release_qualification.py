import copy
from pathlib import Path
import sys
import unittest

sys.path[:0]=[str(Path(__file__).parents[1]/'scripts'),str(Path(__file__).parents[1]/'src')]
from release_qualification import validate_qualification_paths, validate_runtime_qualification
import test_dynamic_shape_audit as paired


class ReleaseQualificationTest(unittest.TestCase):
    def fixture(self):
        a,b=paired.DynamicPairAuditTest().fixture()
        entry={'mode':'candidate_requires_release_validation','model_id':'a/b','revision':'r','task':'embedding','pt2_sha256':'p'}
        actual={'model_id':'a/b','runtime':'fixture'}
        a['identity'].update({k:entry[k] for k in ['model_id','revision','task','pt2_sha256']},
            replay_policy_sha256='policy',strategy='graph_replay',source_files={'runtime.py':'one'},
            script_sha256='script',memory_policy_sha256='memory',prepare_capture_constants=False)
        b.update(calibration_sha256='aa',policy_identity=copy.deepcopy(actual));a['policy_identity']=copy.deepcopy(actual)
        audit={'status':'passed','array_comparisons':120,'model_id':'a/b','calibration_sha256':'aa','comparison_sha256':'ab'}
        files={'runtime.py':'one','model_import_adapters/scripts/benchmark_dynamic_shape_pair.py':'script',
               'model_import_adapters/scripts/memory_acceptance.py':'memory'}
        return entry,a,b,audit,actual,'aa','ab','policy',files

    def test_full_actual_router_qualification_not_only_saved_status(self):
        result=validate_runtime_qualification(*self.fixture())
        self.assertEqual(result['status'],'passed')
        self.assertEqual(result['model_id'],'a/b')

    def test_discovery_runtime_crossing_requires_all_three_evidence_paths(self):
        self.assertFalse(validate_qualification_paths([None]*3,required=False))
        self.assertTrue(validate_qualification_paths(['aa','ab','audit'],required=True))
        for values in ([None]*3,['aa',None,None],['aa','ab',None]):
            with self.assertRaises(ValueError):validate_qualification_paths(values,required=True)

    def test_unrelated_policy_model_or_runtime_cannot_supply_qualification(self):
        for change in ['model_id','revision','task','pt2_sha256','replay_policy_sha256']:
            values=list(self.fixture());values[2]['identity'][change]='drift'
            with self.assertRaises(ValueError):validate_runtime_qualification(*values)
        values=list(self.fixture());values[4]['runtime']='drift'
        with self.assertRaises(ValueError):validate_runtime_qualification(*values)

    def test_missing_array_audit_or_report_hash_drift_is_rejected(self):
        for field,value in [('array_comparisons',119),('status','failed'),('calibration_sha256','drift'),('comparison_sha256','drift')]:
            values=list(self.fixture());values[3][field]=value
            with self.assertRaises(ValueError):validate_runtime_qualification(*values)

    def test_measured_script_memory_or_helper_bytes_are_not_implicitly_compatible(self):
        for key in ['runtime.py','model_import_adapters/scripts/benchmark_dynamic_shape_pair.py','model_import_adapters/scripts/memory_acceptance.py']:
            values=list(self.fixture());values[-1][key]='drift'
            with self.assertRaises(ValueError):validate_runtime_qualification(*values)

    def test_preparation_mode_cannot_be_omitted_or_invented(self):
        values=list(self.fixture());values[2]['identity']['prepare_capture_constants']=True
        with self.assertRaises(ValueError):validate_runtime_qualification(*values)

    def test_retained_entry_does_not_reuse_enabled_candidate_timing(self):
        values=list(self.fixture());values[0]['mode']='retain_requires_runtime_validation'
        with self.assertRaises(ValueError):validate_runtime_qualification(*values)


if __name__=='__main__':unittest.main()
