"""Synthetic publication-component contracts; not model or hardware results."""
import copy
from pathlib import Path
import sys
import unittest
sys.path.insert(0,str(Path(__file__).parents[1]/"scripts"))
from release_runtime_components import (ADDON, REQUIRED, SRC, VERIFIER, digest, runtime_component_contract,
    validate_runtime_component, release_identity)
from release_delivery_contract import IR_FILES


def inputs():
    base={p:digest(p) for p in REQUIRED};base[SRC+'__init__.py']=digest('init')
    manifests={'runtime':{'files':{**base,ADDON:digest('prepared'),VERIFIER:digest('verifier-runtime')}},
        'discovery':{'files':{**base,VERIFIER:digest('verifier-discovery')}},
        'control':{'files':{VERIFIER:digest('verifier-control')}}}
    hashes={k:digest(v) for k,v in manifests.items()}
    paths={k:'/fixture/'+k for k in manifests}
    env={'device':'PPU-ZW810E','torch':'fixture','triton':'fixture','flagtree':'fixture','runtime_files':[
        {'path':'/fixture/triton/backends/ppu/compiler.py','sha256':digest('compiler')},
        {'path':'/fixture/triton/_C/libtriton.so','sha256':digest('libtriton')}]}
    return manifests,hashes,paths,env


def report_fixture(role='runtime',prepared=True):
    contract=runtime_component_contract(*inputs());identity={**contract['expected_backend_identity'],
        'model_id':'fixture/model','revision':'a'*40,'task':'fixture_only'}
    record={k:identity[k] for k in ['model_id','revision','task']}
    record.update(status='validated_candidate' if prepared else 'validated_retention',actual_policy_outcome='passed' if prepared else 'not_met')
    if prepared:
        identity['preprocessing']={'schema':'capture-constant-preprocessing-v1','enabled':True,
            'helper_sha256':contract['capture_helper_sha256'],'binding_source_sha256':contract['prepared_policy_sha256'],
            'records_sha256':digest([]),'converted_edges':0}
    report={**{k:identity[k] for k in ['model_id','revision','task']},'status':'passed','cpu_model_forward':'not_run',
        'original_pt2_unchanged':True,'failure_stage':None,'final_C1_accepted':False,'identity':identity,
        'source':contract['source_paths'][role],'source_manifest_sha256':contract['source_manifest_sha256'][role],
        'verifier_sha256':contract['approved_verifier_sha256'][role],
        'mode':'candidate_requires_release_validation' if prepared else 'retain_requires_runtime_validation',
        'capture_constants':[] if prepared else None,'runtime_qualification':{'status':'passed'} if prepared else None,
        'policy_path':'fixture.json' if prepared else None,'policy_file_sha256':digest('policy') if prepared else None,
        'router_active':{'enabled':prepared},'probes':[{'route':{'route':'original_compiled'}} for _ in range(5)]}
    return record,report,contract


def release_fixture():
    r,f,c=report_fixture();component=validate_runtime_component(r,f,c);components={component['component_id']:component['descriptor']}
    rows=[{'model_id':'fixture/model-%03d'%i,'revision':'a'*40,'task':'fixture_only','status':'validated_candidate','main_shapes':5,
        'runtime_component_id':component['component_id'],'IR_artifact_hashes':{k:digest(k) for k in IR_FILES},
        'enabled_policy':{'path':'irrelevant/location.json','sha256':digest('policy')}} for i in range(301)]
    return rows,components,digest('accepted'),digest('delivery-index')


class ComponentTest(unittest.TestCase):
    def test_discovery_retention_keeps_actual_identity(self):
        r,f,c=report_fixture('discovery',False);v=validate_runtime_component(r,f,c)
        self.assertEqual(v['descriptor']['source_role'],'discovery')
        self.assertEqual(v['descriptor']['source_manifest_sha256'],c['source_manifest_sha256']['discovery'])
        self.assertFalse(v['descriptor']['prepared'])

    def test_runtime_prepared_and_original_are_separate_components(self):
        a=validate_runtime_component(*report_fixture());b=validate_runtime_component(*report_fixture('runtime',False))
        self.assertNotEqual(a['component_id'],b['component_id'])
        self.assertEqual(a['descriptor']['base_engine_sha256'],b['descriptor']['base_engine_sha256'])

    def test_only_declared_addon_can_differ(self):
        for kind in ['changed','extra','missing','discovery-addon']:
            m,h,p,e=inputs()
            if kind=='changed':m['discovery']['files'][SRC+'compiled_execution.py']=digest('different')
            elif kind=='extra':m['runtime']['files'][SRC+'extra.py']=digest('extra')
            elif kind=='missing':
                m['runtime']['files'].pop(SRC+'unified_ir.py');m['discovery']['files'].pop(SRC+'unified_ir.py')
            else:m['discovery']['files'][ADDON]=digest('prepared')
            with self.subTest(kind=kind),self.assertRaises(ValueError):runtime_component_contract(m,h,p,e)

    def test_unknown_source_or_wrong_path_is_rejected(self):
        for kind in ['path','hash']:
            r,f,c=report_fixture('discovery',False)
            f['source' if kind=='path' else 'source_manifest_sha256']='unknown'
            with self.subTest(kind=kind),self.assertRaises(ValueError):validate_runtime_component(r,f,c)

    def test_backend_core_or_precision_drift_is_rejected(self):
        for key in ['target','precision','runtime','compiler_sha256','libtriton_sha256','source_sha256','router_sha256']:
            r,f,c=report_fixture();f['identity'][key]='changed'
            with self.subTest(key=key),self.assertRaises(ValueError):validate_runtime_component(r,f,c)

    def test_prepared_candidate_cannot_use_discovery_component(self):
        r,f,c=report_fixture('discovery',True)
        with self.assertRaises(ValueError):validate_runtime_component(r,f,c)

    def test_preprocessing_all_binding_fields_are_required(self):
        for key in ['schema','enabled','helper_sha256','binding_source_sha256','records_sha256','converted_edges']:
            r,f,c=report_fixture();f['identity']['preprocessing'][key]='changed'
            with self.subTest(key=key),self.assertRaises(ValueError):validate_runtime_component(r,f,c)

    def test_retained_path_cannot_enable_policy_preprocessing_or_replay(self):
        for kind in ['policy','capture','qualification','enabled','preprocessing','route']:
            r,f,c=report_fixture('discovery',False)
            if kind=='policy':f['policy_path']='unexpected.json'
            elif kind=='capture':f['capture_constants']=[]
            elif kind=='qualification':f['runtime_qualification']={'status':'passed'}
            elif kind=='enabled':f['router_active']['enabled']=True
            elif kind=='preprocessing':f['identity']['preprocessing']={}
            else:f['probes'][0]['route']['route']='graph_replay'
            with self.subTest(kind=kind),self.assertRaises(ValueError):validate_runtime_component(r,f,c)

    def test_candidates_require_original_qualification(self):
        for kind in ['qualification','outcome','policy','pt2','cpu']:
            r,f,c=report_fixture()
            if kind=='qualification':f['runtime_qualification']=None
            elif kind=='outcome':r['actual_policy_outcome']='not_met'
            elif kind=='policy':f['policy_path']=None
            elif kind=='pt2':f['original_pt2_unchanged']=False
            else:f['cpu_model_forward']='run'
            with self.subTest(kind=kind),self.assertRaises(ValueError):validate_runtime_component(r,f,c)

    def test_only_pinned_verifier_bytes_are_approved(self):
        r,f,c=report_fixture('runtime',False);f['verifier_sha256']=c['approved_verifier_sha256']['control']
        self.assertTrue(validate_runtime_component(r,f,c))
        f['verifier_sha256']=digest('unapproved')
        with self.assertRaises(ValueError):validate_runtime_component(r,f,c)

    def test_model_task_drift_is_rejected(self):
        r,f,c=report_fixture();f['identity']['task']='another'
        with self.assertRaises(ValueError):validate_runtime_component(r,f,c)

    def test_environment_requires_unique_binary_fingerprints(self):
        for kind in ['device','duplicate','missing']:
            m,h,p,e=inputs()
            if kind=='device':e['device']='not-PPU'
            elif kind=='duplicate':e['runtime_files'].append(copy.deepcopy(e['runtime_files'][0]))
            else:e['runtime_files'].pop()
            with self.subTest(kind=kind),self.assertRaises(ValueError):runtime_component_contract(m,h,p,e)

    def test_source_roles_paths_and_hashes_are_pinned(self):
        for kind in ['role','path','hash']:
            m,h,p,e=inputs()
            if kind=='role':m.pop('control')
            elif kind=='path':p['control']=p['runtime']
            else:h['control']='invalid'
            with self.subTest(kind=kind),self.assertRaises(ValueError):runtime_component_contract(m,h,p,e)


class ReleaseIdentityTest(unittest.TestCase):
    def test_identity_is_independent_of_output_location_and_row_order(self):
        f=release_fixture();first=release_identity(*f)
        f[0].reverse();f[0][0]['enabled_policy']['path']='another/output.json'
        self.assertEqual(first,release_identity(*f))

    def test_identity_binds_policy_and_original_artifact_content(self):
        f=release_fixture();original=release_identity(*f);f[0][0]['enabled_policy']['sha256']=digest('new-policy')
        self.assertNotEqual(original,release_identity(*f))
        f=release_fixture();f[0][0]['IR_artifact_hashes']['model.core_aten.pt2']=digest('new-PT2')
        self.assertNotEqual(original,release_identity(*f))

    def test_partial_duplicate_pending_or_incomplete_rows_are_rejected(self):
        for kind in ['partial','duplicate','pending','component','hash','policy']:
            f=release_fixture()
            if kind=='partial':f[0].pop()
            elif kind=='duplicate':f[0][-1]=copy.deepcopy(f[0][0])
            elif kind=='pending':f[0][0]['status']='pending'
            elif kind=='component':f[0][0]['runtime_component_id']='missing'
            elif kind=='hash':f[0][0]['IR_artifact_hashes'].pop('manifest.json')
            else:f[0][0]['enabled_policy']=None
            with self.subTest(kind=kind),self.assertRaises(ValueError):release_identity(*f)

    def test_component_descriptor_cannot_change_under_old_digest(self):
        f=release_fixture();next(iter(f[1].values()))['prepared']=False
        with self.assertRaises(ValueError):release_identity(*f)


if __name__=='__main__':unittest.main()
