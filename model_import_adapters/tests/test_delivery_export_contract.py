"""Persist source-index fixtures and test per-model projections, no model execution."""
import argparse
import copy
import hashlib
import json
from pathlib import Path
import sys
import unittest
sys.path.insert(0,str(Path(__file__).parents[1]/"scripts"))
from release_delivery_rows import CSV_FIELDS, PROBES, build_status_fields, pending_status_fields
from prepare_shape_release_delivery import validate_delivery_source_index

ROOT=None


def model_fixture(retained=False):
    accepted={"model_id":"fixture/example","revision":"a"*40,"task":"fixture_only","status":"passed","a100_review":"passed"}
    record={**accepted,"status":"validated_retention" if retained else "validated_candidate","final_C1_accepted":False,
        "actual_policy_outcome":"not_met" if retained else "passed","actual_policy_mixed_speedup":None if retained else 1.2}
    probes=[]
    for i,(b,s) in enumerate(sorted(PROBES)):
        hit=not retained and i<2
        probes.append({"batch":b,"sequence":s,"route":{"route":"graph_replay" if hit else "original_compiled",
            "reason":"prepared_exact_metadata" if hit else "policy_disabled" if retained else "metadata_not_in_policy"}})
    functional={**accepted,"status":"passed","identity":{k:accepted[k] for k in ["model_id","revision","task"]},
        "cpu_model_forward":"not_run","final_C1_accepted":False,"failure_stage":None,"probes":probes,
        "policy_path":None if retained else "fixture.policy.json","runtime_qualification":None if retained else {"status":"passed"},
        "router_active":{"enabled":not retained}}
    return accepted,record,functional


def source_fixture(name):
    root=ROOT/name;root.mkdir()
    paths=['scripts/prepare_shape_release_delivery.py','scripts/release_delivery_contract.py','scripts/release_delivery_rows.py','scripts/release_runtime_components.py',
        'tests/test_release_delivery_contract.py','tests/test_prepare_shape_release_delivery.py','tests/test_delivery_export_contract.py','tests/test_release_runtime_components.py']
    entries=[]
    for rel in paths:
        p=root/rel;p.parent.mkdir(exist_ok=True);body=('# fixture '+rel+'\n').encode();p.write_bytes(body)
        entries.append({'path':rel,'sha256':hashlib.sha256(body).hexdigest(),'bytes':len(body)})
    (root/'source-index.json').write_text(json.dumps({'entries':entries}),encoding='utf8')
    return root,entries


def validate(root):
    return validate_delivery_source_index(root,root/'scripts/prepare_shape_release_delivery.py',root/'scripts/release_delivery_contract.py',root/'scripts/release_delivery_rows.py',root/'scripts/release_runtime_components.py')


class ModelRowsTest(unittest.TestCase):
    def test_pending_does_not_inherit_historical_pass(self):
        result=pending_status_fields(model_fixture()[0])
        self.assertEqual(result['historical_status'],'passed');self.assertEqual(result['status'],'pending')
        self.assertIsNone(result['strategy_hit']);self.assertEqual(result['main_shapes'],0)
        self.assertEqual(result['a100_review'],'pending');self.assertEqual(result['historical_a100_review'],'passed')

    def test_candidate_has_all_planned_columns(self):
        result=build_status_fields(*model_fixture())
        self.assertTrue(set(CSV_FIELDS)<=result.keys());self.assertEqual(result['performance_status'],'passed')
        self.assertTrue(result['strategy_hit']);self.assertEqual(len(result['strategy_hit_shapes']),2)
        self.assertEqual(result['fallback_reason'],'metadata_not_in_policy');self.assertIsNone(result['failure_stage'])
        self.assertEqual(result['existing_scene_status'],'not_linked');self.assertEqual(result['a100_review'],'pending')

    def test_retention_is_not_IR_failure_or_performance_pass(self):
        result=build_status_fields(*model_fixture(True))
        self.assertEqual(result['performance_status'],'not_met_retained');self.assertFalse(result['strategy_hit'])
        self.assertEqual(result['main_shapes'],5);self.assertIsNone(result['failure_stage'])

    def test_unstable_retention_is_separate(self):
        a,r,f=model_fixture(True);r['actual_policy_outcome']='measurement_unstable'
        self.assertEqual(build_status_fields(a,r,f)['performance_status'],'measurement_unstable_retained')

    def test_drift_or_unverified_status_is_rejected(self):
        for kind in ['revision','pending','functional_failure','cpu','eager']:
            a,r,f=model_fixture()
            if kind=='revision':r['revision']='b'*40
            elif kind=='pending':r['status']='pending'
            elif kind=='functional_failure':f['status']='failed'
            elif kind=='cpu':f['cpu_model_forward']='run'
            else:f['probes'][0]['route']['route']='eager'
            with self.subTest(kind=kind),self.assertRaises(ValueError):build_status_fields(a,r,f)

    def test_incomplete_or_duplicate_shape_set_is_rejected(self):
        for kind in ['missing','duplicate']:
            a,r,f=model_fixture()
            if kind=='missing':f['probes'].pop()
            else:f['probes'][-1]=copy.deepcopy(f['probes'][0])
            with self.subTest(kind=kind),self.assertRaises(ValueError):build_status_fields(a,r,f)

    def test_false_qualification_and_retention_hits_are_rejected(self):
        for kind in ['missing_qualification','negative','nonfinite','retention_hit']:
            a,r,f=model_fixture(kind=='retention_hit')
            if kind=='missing_qualification':f['runtime_qualification']=None
            elif kind=='negative':r['actual_policy_outcome']='not_met'
            elif kind=='nonfinite':r['actual_policy_mixed_speedup']=float('nan')
            else:f['probes'][0]['route']={'route':'graph_replay','reason':'bad'}
            with self.subTest(kind=kind),self.assertRaises(ValueError):build_status_fields(a,r,f)


class SourceIndexTest(unittest.TestCase):
    def test_index_raw_bytes_are_bound(self):
        root,_=source_fixture('valid');result=validate(root)
        self.assertEqual(result['raw_utf8'].encode(),(root/'source-index.json').read_bytes())
        self.assertEqual(result['sha256'],hashlib.sha256(result['raw_utf8'].encode()).hexdigest())

    def test_omitting_actual_code_is_rejected(self):
        root,entries=source_fixture('missing-code');entries.pop(0)
        (root/'source-index.json').write_text(json.dumps({'entries':entries}))
        with self.assertRaises(ValueError):validate(root)

    def test_omitting_test_is_rejected(self):
        root,entries=source_fixture('missing-test');entries.pop()
        (root/'source-index.json').write_text(json.dumps({'entries':entries}))
        with self.assertRaises(ValueError):validate(root)

    def test_duplicate_or_unsafe_path_is_rejected(self):
        for i,value in enumerate(['../outside.py','/absolute.py','scripts\\bad.py','scripts//bad.py','source-index.json','duplicate']):
            root,entries=source_fixture('unsafe-%d'%i);item=copy.deepcopy(entries[0])
            if value!='duplicate':item['path']=value
            entries.append(item);(root/'source-index.json').write_text(json.dumps({'entries':entries}))
            with self.subTest(value=value),self.assertRaises(ValueError):validate(root)

    def test_changed_bytes_or_sizes_are_rejected(self):
        for kind in ['hash','size','bool']:
            root,entries=source_fixture('changed-'+kind)
            if kind=='hash':(root/entries[0]['path']).write_text('changed')
            elif kind=='size':entries[0]['bytes']+=1
            else:entries[0]['bytes']=True
            (root/'source-index.json').write_text(json.dumps({'entries':entries}))
            with self.subTest(kind=kind),self.assertRaises(ValueError):validate(root)

    def test_another_actual_entrypoint_is_rejected(self):
        root,_=source_fixture('wrong-loaded');other=root/'other.py';other.write_text('# not indexed')
        with self.assertRaises(ValueError):validate_delivery_source_index(root,other,root/'scripts/release_delivery_contract.py',root/'scripts/release_delivery_rows.py',root/'scripts/release_runtime_components.py')

    def test_empty_index_is_rejected(self):
        root,_=source_fixture('empty');(root/'source-index.json').write_text('{"entries":[]}')
        with self.assertRaises(ValueError):validate(root)


if __name__=='__main__':
    parser=argparse.ArgumentParser(add_help=False);parser.add_argument('--output-root',type=Path,required=True)
    args,remaining=parser.parse_known_args();ROOT=args.output_root;ROOT.mkdir(parents=True,exist_ok=False)
    unittest.main(argv=[sys.argv[0],*remaining])
