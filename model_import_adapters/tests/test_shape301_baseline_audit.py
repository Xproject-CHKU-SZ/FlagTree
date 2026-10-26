import importlib.util
import json
from pathlib import Path
import sys
import tempfile
import unittest

sys.path.insert(0, str(Path(__file__).parents[1] / "scripts"))
spec = importlib.util.spec_from_file_location("baseline_audit_tested", Path(__file__).parents[1] / "scripts/audit_shape301_baseline.py")
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)


class BaselineAuditTest(unittest.TestCase):
    def fixture(self, root):
        import numpy as np
        case = root / "case"; case.mkdir()
        (case / "artifacts").mkdir()
        snapshot = root / "snapshot"; snapshot.mkdir()
        (snapshot / "weight.bin").write_bytes(b"fixed-weight")
        def write(path, value):
            path.write_text(json.dumps(value), encoding="utf-8")
        for name in ("model.core_aten.pt2", "graph.readable.txt", "graph_module.py", "example_inputs.npz"):
            (case / "artifacts" / name).write_bytes(b"fixture; not executable")
        write(case / "artifacts/manifest.json", {"source": {"model_id": "a/b", "revision": "a"*40}, "artifact": {"sha256": module.sha256(case / "artifacts/model.core_aten.pt2")}})
        semantic_validation = {"status":"passed", "errors":[], "error_count":0,
                               "warnings":[{"code":"executable_rule_checks_incomplete"}]}
        write(case / "artifacts/semantics.json", {"schema_version":1,"registry_version":"fixture-v1","registry_sha256":"r"*64,"validation":semantic_validation,
              "coverage":{"rule_checks":{"total":10,"executed":8,"passed":8,"failed":0,"not_implemented":1,"insufficient_metadata":1}}})
        manifest=module.read(case / "artifacts/manifest.json");semantic=module.read(case / "artifacts/semantics.json")
        manifest.update(shape_constraints={"inputs":[],"relations":[]},input_archive={"sha256":module.sha256(case / "artifacts/example_inputs.npz")},
                        semantics_artifact={**{key:semantic[key] for key in ("schema_version","registry_version","registry_sha256","coverage")},
                                            "sha256":module.sha256(case / "artifacts/semantics.json"),"validation_status":"passed"})
        write(case / "artifacts/manifest.json",manifest)
        import hashlib
        write(case / "artifacts/validation.json", {"status":"passed","saved_and_loaded":True,
              "shape_constraints":{"saved_and_loaded_equal":True,"sha256":hashlib.sha256(json.dumps(manifest["shape_constraints"],sort_keys=True,ensure_ascii=False).encode("utf8")).hexdigest()},"semantic_contract":semantic_validation,
              "exported_program_sha256":module.sha256(case / "artifacts/model.core_aten.pt2"),
              "manifest_sha256":module.sha256(case / "artifacts/manifest.json"),
              "semantic_contract_sha256":module.sha256(case / "artifacts/semantics.json")})
        write(case / "task-protocol.json", {"task": "embedding", "probes": module.PROBES})
        write(case / "model-files.json", {"model_id": "a/b", "revision": "a"*40, "snapshot": str(snapshot), "files": [{"relative_path": "weight.bin", "size_bytes": len(b"fixed-weight"), "sha256": module.sha256(snapshot / "weight.bin")}]})
        probes = []
        for b,s in module.PROBES:
            path = case / f"probe-{b}x{s}.npz"
            value = np.zeros((b,2), dtype="float32")
            np.savez(path, input_ids=np.zeros((b,s), dtype="int64"), original_output=value, eager_output=value, restored_output=value, compiled_output=value)
            probes.append(dict(batch=b,sequence=s,input_keys=["input_ids"],archive=str(path),sha256=module.sha256(path)))
        write(case / "report.json", dict(model_id="a/b",revision="a"*40,status="passed",probes=probes))
        for name in ("environment.json", "command.json"):
            write(case / name, {})
        row = dict(model_id="a/b",revision="a"*40,task="embedding",case=str(case),
                   task_protocol_sha256=module.sha256(case / "task-protocol.json"),model_files_sha256=module.sha256(case / "model-files.json"))
        return row,case,snapshot

    def test_file_audit_has_no_model_execution(self):
        with tempfile.TemporaryDirectory() as tmp:
            row,case,_ = self.fixture(Path(tmp))
            result = module.audit_model(row,case,{})
            self.assertEqual(result["status"], "passed", result["errors"])
            self.assertEqual(result["input_probes"], 5)
            self.assertEqual(result["model_files"], 1)

    def test_changed_weight_rejected(self):
        with tempfile.TemporaryDirectory() as tmp:
            row,case,snapshot = self.fixture(Path(tmp))
            (snapshot / "weight.bin").write_bytes(b"wrong-weight")
            result = module.audit_model(row,case,{})
            self.assertEqual(result["status"], "failed")
            self.assertIn("model file drift", result["errors"][0])

    def test_changed_artifact_rejected(self):
        with tempfile.TemporaryDirectory() as tmp:
            row,case,_ = self.fixture(Path(tmp))
            (case / "artifacts/model.core_aten.pt2").write_bytes(b"changed")
            result = module.audit_model(row,case,{})
            self.assertEqual(result["status"], "failed")
            self.assertIn("PT2 hash drift", result["errors"][0])

    def metadata(self, case):
        root=case/"artifacts"
        return (module.read(root/"manifest.json"),module.read(root/"semantics.json"),module.read(root/"validation.json"),
                {name:module.sha256(root/name) for name in ("model.core_aten.pt2","manifest.json","semantics.json","example_inputs.npz")})

    def test_validation_binds_all_three_exact_artifact_hashes(self):
        with tempfile.TemporaryDirectory() as tmp:
            _,case,_=self.fixture(Path(tmp));m,s,v,h=self.metadata(case)
            for key in ("exported_program_sha256","manifest_sha256","semantic_contract_sha256"):
                with self.assertRaisesRegex(ValueError,"metadata binding drift"):
                    module.validate_ir_metadata(m,s,{**v,key:"0"*64},h)

    def test_saved_reload_and_shape_constraints_are_required(self):
        with tempfile.TemporaryDirectory() as tmp:
            _,case,_=self.fixture(Path(tmp));m,s,v,h=self.metadata(case)
            for key,value in (("status","failed"),("saved_and_loaded",False),("shape_constraints",{"saved_and_loaded_equal":False})):
                with self.assertRaises(ValueError):module.validate_ir_metadata(m,s,{**v,key:value},h)

    def test_semantic_failed_or_missing_result_is_rejected(self):
        with tempfile.TemporaryDirectory() as tmp:
            _,case,_=self.fixture(Path(tmp));m,s,v,h=self.metadata(case)
            for bad in ({},{"status":"failed","errors":["error"],"error_count":1}):
                with self.assertRaises(ValueError):module.validate_ir_metadata(m,{**s,"validation":bad},v,h)
                with self.assertRaises(ValueError):module.validate_ir_metadata(m,s,{**v,"semantic_contract":bad},h)

    def test_rule_warning_is_not_claimed_as_full_coverage(self):
        with tempfile.TemporaryDirectory() as tmp:
            _,case,_=self.fixture(Path(tmp));m,s,v,h=self.metadata(case)
            result=module.validate_ir_metadata(m,s,v,h)
            self.assertFalse(result["all_rules_executed"])
            self.assertEqual(result["rule_checks"]["executed"],8)
            self.assertTrue(result["semantic_warnings"])

    def test_rule_counts_cannot_hide_failed_or_unexecuted_rules(self):
        import copy
        with tempfile.TemporaryDirectory() as tmp:
            _,case,_=self.fixture(Path(tmp));m,s,v,h=self.metadata(case)
            for key,value in (("failed",1),("total",9),("executed",9),("passed",7),("not_implemented",-1)):
                bad=copy.deepcopy(s);bad["coverage"]["rule_checks"][key]=value
                with self.assertRaises(ValueError):module.validate_ir_metadata(m,bad,v,h)

    def test_physical_rehash_alone_does_not_pass_stale_validation(self):
        with tempfile.TemporaryDirectory() as tmp:
            row,case,_=self.fixture(Path(tmp));path=case/"artifacts/semantics.json"
            path.write_text(path.read_text()+"\n")
            result=module.audit_model(row,case,{})
            self.assertEqual(result["status"],"failed")
            self.assertIn("semantic_contract_sha256",result["errors"][0])

    def test_manifest_semantic_registry_and_coverage_are_bound(self):
        import copy
        with tempfile.TemporaryDirectory() as tmp:
            _,case,_=self.fixture(Path(tmp));m,s,v,h=self.metadata(case)
            for key in ("schema_version","registry_version","registry_sha256","coverage"):
                bad=copy.deepcopy(m);bad["semantics_artifact"][key]="drift"
                with self.assertRaises(ValueError):module.validate_ir_metadata(bad,s,v,h)

    def test_shape_constraint_and_example_archive_cross_references(self):
        import copy
        with tempfile.TemporaryDirectory() as tmp:
            _,case,_=self.fixture(Path(tmp));m,s,v,h=self.metadata(case)
            bad=copy.deepcopy(m);bad["shape_constraints"]["inputs"]=["changed"]
            with self.assertRaisesRegex(ValueError,"Shape constraint content"):module.validate_ir_metadata(bad,s,v,h)
            bad=copy.deepcopy(m);bad["input_archive"]["sha256"]="0"*64
            with self.assertRaisesRegex(ValueError,"Example input archive"):module.validate_ir_metadata(bad,s,v,h)


if __name__ == "__main__":
    unittest.main()
