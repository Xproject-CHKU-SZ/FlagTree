import copy
import json
from pathlib import Path
import sys
import subprocess
import tempfile
import unittest

sys.path.insert(0,str(Path(__file__).parents[1]/"src"))
from model_import_adapters.prepared_policy import (bind_discovery_preprocessing, bind_preprocessing, file_hash,
                                                   preprocessing_binding, PREPROCESSING_SCHEMA)
from model_import_adapters.replay_policy import load_policy, policy_document
import test_replay_policy as fixtures


class PreparedPolicyTest(unittest.TestCase):
    def records(self):
        return [{"source_attribute":"inner.literal","conversion_node":"_to_copy_1","buffer":"_capture_constant__to_copy_1",
                 "shape":[],"dtype":"torch.int64","target":"cuda:0","source_value_sha256":"a"*64}]

    def reports(self):
        binding=preprocessing_binding(self.records());h=binding['helper_sha256']
        report={'identity':{'prepare_capture_constants':True,'capture_constants_sha256':h,
            'source_files':{'model_import_adapters/src/model_import_adapters/capture_constants.py':h}},
            'capture_constants':self.records()}
        return copy.deepcopy(report),report

    def test_prepared_identity_roundtrip_and_base_identity_unchanged(self):
        base=copy.deepcopy(fixtures.IDENTITY);prepared=bind_preprocessing(base,self.records())
        self.assertNotIn('preprocessing',base)
        self.assertEqual(prepared['preprocessing']['schema'],PREPROCESSING_SCHEMA)
        with tempfile.TemporaryDirectory() as d:
            path=Path(d)/'policy.json';path.write_text(json.dumps(policy_document(prepared,[fixtures.ENTRY],fixtures.EVIDENCE)))
            self.assertEqual(load_policy(path,prepared)[1],'loaded')
            self.assertIsNone(load_policy(path,base)[0])

    def test_old_policy_never_loads_as_prepared_even_for_zero_edges(self):
        with tempfile.TemporaryDirectory() as d:
            path=Path(d)/'policy.json';path.write_text(json.dumps(policy_document(fixtures.IDENTITY,[fixtures.ENTRY],fixtures.EVIDENCE)))
            self.assertIsNone(load_policy(path,bind_preprocessing(fixtures.IDENTITY,[]))[0])
        self.assertEqual(preprocessing_binding([])['converted_edges'],0)

    def test_changed_literal_edge_or_buffer_invalidates_policy(self):
        identity=bind_preprocessing(fixtures.IDENTITY,self.records())
        with tempfile.TemporaryDirectory() as d:
            path=Path(d)/'policy.json';path.write_text(json.dumps(policy_document(identity,[fixtures.ENTRY],fixtures.EVIDENCE)))
            for field,value in [('source_value_sha256','b'*64),('source_attribute','other'),('buffer','other'),('conversion_node','other')]:
                records=self.records();records[0][field]=value
                self.assertIsNone(load_policy(path,bind_preprocessing(fixtures.IDENTITY,records))[0])

    def test_aa_ab_actual_records_and_flags_must_agree(self):
        for change in ({'capture_constants':[]},{'capture_constants':None}):
            a,b=self.reports();b.update(change)
            with self.assertRaises(ValueError):bind_discovery_preprocessing(fixtures.IDENTITY,a,b)
        a,b=self.reports();b['identity']['prepare_capture_constants']=False
        with self.assertRaises(ValueError):bind_discovery_preprocessing(fixtures.IDENTITY,a,b)
        a,b=self.reports();b['identity']['prepare_capture_constants']='true'
        with self.assertRaises(ValueError):bind_discovery_preprocessing(fixtures.IDENTITY,a,b)

    def test_source_hash_drift_or_missing_binding_rejected(self):
        a,b=self.reports()
        self.assertIn('preprocessing',bind_discovery_preprocessing(fixtures.IDENTITY,a,b))
        for report in [a,b]:report['identity']['capture_constants_sha256']='0'*64
        with self.assertRaises(ValueError):bind_discovery_preprocessing(fixtures.IDENTITY,a,b)
        with self.assertRaises(ValueError):bind_preprocessing(fixtures.IDENTITY,self.records(),'0'*64)
        a,b=self.reports()
        for report in [a,b]:report['identity']['source_files']={}
        with self.assertRaises(ValueError):bind_discovery_preprocessing(fixtures.IDENTITY,a,b)

    def test_invalid_duplicate_and_non_scalar_records_rejected(self):
        for field,value in [('shape',[1]),('target','cpu'),('dtype','torch.float16'),('source_value_sha256','drift'),('source_attribute','')]:
            records=self.records();records[0][field]=value
            with self.assertRaises(ValueError):preprocessing_binding(records)
        with self.assertRaises(ValueError):preprocessing_binding(self.records()*2)
        with self.assertRaises(ValueError):preprocessing_binding(None)

    def test_already_bound_identity_is_not_reused_as_actual_runtime(self):
        bound=bind_preprocessing(fixtures.IDENTITY,self.records())
        with self.assertRaises(ValueError):bind_preprocessing(bound,self.records())

    def test_unprepared_discovery_keeps_legacy_identity(self):
        report={'identity':{}}
        self.assertIs(bind_discovery_preprocessing(fixtures.IDENTITY,report,copy.deepcopy(report)),fixtures.IDENTITY)

    def test_binding_source_is_hashed_and_not_copied_from_policy(self):
        binding=preprocessing_binding(self.records())
        self.assertEqual(binding['binding_source_sha256'],file_hash(Path(__file__).parents[1]/'src/model_import_adapters/prepared_policy.py'))
        self.assertNotEqual(binding['records_sha256'],preprocessing_binding([])['records_sha256'])

    def test_functional_verifier_declares_explicit_preparation_flag(self):
        script=Path(__file__).parents[1]/'scripts/verify_exact_shape_replay.py'
        result=subprocess.run([sys.executable,'-X','utf8',str(script),'--help'],capture_output=True,text=True)
        self.assertEqual(result.returncode,0)
        self.assertIn('--prepare-capture-constants',result.stdout)


if __name__=='__main__':unittest.main()
