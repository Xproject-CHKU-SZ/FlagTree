import copy,json
from pathlib import Path
import sys,tempfile,unittest
sys.path[:0]=[str(Path(__file__).parents[1]/'scripts'),str(Path(__file__).parents[1]/'src')]
from build_shape_release_enrollment import apply_enrollments,pending_manifest
from unstable_retention import MODE
from run_shape_release_wave import inherited_enrollments
import test_unstable_retention as fixtures

class UnstableEnrollmentInheritanceTest(unittest.TestCase):
    def fixture(self):
        accepted,selected,entry,_,_=fixtures.UnstableRetentionTest().selected();manifest=pending_manifest(accepted,selected['accepted_sha256'],'discovery-source')
        return manifest,selected,entry
    def test_explicit_selected_doc_merges_without_promoting_discovery_or_actual(self):
        manifest,selected,entry=self.fixture();original=copy.deepcopy(manifest)
        merged=apply_enrollments(manifest,[entry],unstable_evidence={entry['model_id']:selected})
        self.assertEqual(manifest,original);self.assertEqual(merged['counts'][MODE],1);self.assertEqual(sum(merged['counts'].values()),301)
        self.assertEqual(merged['models'][0]['actual_policy_outcome'],'measurement_unstable');self.assertIsNone(merged['models'][0]['comparison_sha256']);self.assertEqual(merged['models'][0]['discovery_status'],'passed');self.assertEqual(merged['final_C1_passed'],0)
    def test_no_implicit_new_mode_without_explicit_document(self):
        manifest,selected,entry=self.fixture()
        with self.assertRaises(ValueError):apply_enrollments(manifest,[entry])
        with self.assertRaises(ValueError):apply_enrollments(manifest,[],unstable_evidence={entry['model_id']:selected})
        with self.assertRaises(ValueError):apply_enrollments(manifest,[entry],unstable_evidence={'different/id':selected})
    def test_scope_duplicate_revision_task_and_final_status_rejected(self):
        manifest,selected,entry=self.fixture()
        changes=[lambda x:x['models'].pop(),lambda x:x['models'].__setitem__(-1,copy.deepcopy(x['models'][0])),lambda x:x['models'][-1].update(revision='drift'),lambda x:x['models'][-1].update(task='drift'),lambda x:x.update(final_C1_passed=301),lambda x:x.update(accepted_sha256='drift')]
        for change in changes:
            bad=copy.deepcopy(selected);change(bad)
            with self.assertRaises(ValueError):apply_enrollments(manifest,[entry],unstable_evidence={entry['model_id']:bad})
    def test_wrong_selected_row_or_forged_original_evidence_rejected(self):
        manifest,selected,entry=self.fixture()
        for key,value in [('calibration_sha256','0'*64),('original_discovery_comparison_sha256','0'*64),('comparison_sha256','0'*64)]:
            bad=copy.deepcopy(selected);bad['models'][0][key]=value
            with self.assertRaises(ValueError):apply_enrollments(manifest,[entry],unstable_evidence={entry['model_id']:bad})
        bad=copy.deepcopy(selected);bad['evidence_selection']['not_a_performance_pass']=False
        with self.assertRaises(ValueError):apply_enrollments(manifest,[entry],unstable_evidence={entry['model_id']:bad})
    def test_existing_other_selection_cannot_be_overwritten(self):
        manifest,selected,entry=self.fixture();manifest['models'][0].update(mode='candidate_requires_release_validation')
        with self.assertRaises(ValueError):apply_enrollments(manifest,[entry],unstable_evidence={entry['model_id']:selected})
    def test_inherited_record_reads_the_resolution_doc_not_old_candidate(self):
        manifest,selected,entry=self.fixture()
        with tempfile.TemporaryDirectory() as temp:
            root=Path(temp);p=root/'explicit.json';p.write_text(json.dumps(selected));record={'model_id':entry['model_id'],'status':'validated_retention','directory':str(root/'original-case'),'retention_resolution':{'enrollment':str(p)}}
            result=inherited_enrollments(manifest,[record]);self.assertEqual(result['models'][0],entry);self.assertEqual(result['counts'][MODE],1)
    def test_unresolved_or_implicit_inherited_mode_is_rejected(self):
        manifest,selected,entry=self.fixture()
        with tempfile.TemporaryDirectory() as temp:
            root=Path(temp);(root/'enrollment.json').write_text(json.dumps(selected));p=root/'explicit.json';p.write_text(json.dumps(selected))
            for record in [{'model_id':entry['model_id'],'status':'validated_retention','directory':str(root)},{'model_id':entry['model_id'],'status':'actual_policy_measurement_unstable','directory':str(root),'retention_resolution':{'enrollment':str(p)}}]:
                with self.assertRaises(ValueError):inherited_enrollments(manifest,[record])
    def test_original_pending_scope_retained_for_other300(self):
        manifest,selected,entry=self.fixture();result=apply_enrollments(manifest,[entry],unstable_evidence={entry['model_id']:selected})
        self.assertEqual(result['models'][1:],manifest['models'][1:]);self.assertEqual(result['counts']['pending_discovery'],300)

if __name__=='__main__':unittest.main()
