"""Custom model execution binds every cached Python file to reviewed hashes."""
import hashlib
import importlib.util
import json
from pathlib import Path
import unittest
from tempfile import TemporaryDirectory


class LocalModelCodeReviewTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        path=Path(__file__).parents[1]/"scripts/run_dynamic_text_pilot.py"
        spec=importlib.util.spec_from_file_location("review_pilot",path)
        cls.pilot=importlib.util.module_from_spec(spec)
        spec.loader.exec_module(cls.pilot)

    def setUp(self):
        self.temp=TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root=Path(self.temp.name)
        self.snapshot=self.root/"snapshot"
        self.snapshot.mkdir()
        (self.snapshot/"modeling.py").write_text("# reviewed fixture\n")
        self.review={"schema_version":1,"status":"reviewed","model_id":"test/model","revision":"fixed",
            "snapshot":str(self.snapshot),"python_files":[{"path":"modeling.py",
            "sha256":hashlib.sha256((self.snapshot/"modeling.py").read_bytes()).hexdigest()}]}
        self.path=self.root/"review.json"

    def call(self):
        self.path.write_text(json.dumps(self.review))
        return self.pilot.validate_local_code_review(self.snapshot,"test/model","fixed",self.path)

    def test_none_preserves_existing_default(self):
        self.assertIsNone(self.pilot.validate_local_code_review(self.snapshot,"test/model","fixed",None))

    def test_exact_inventory_and_digest(self):
        result=self.call()
        self.assertEqual(result["sha256"],hashlib.sha256(self.path.read_bytes()).hexdigest())
        self.assertEqual(result["python_files"],self.review["python_files"])

    def test_identity_drift_fails(self):
        for key in ("model_id","revision","snapshot","status","schema_version"):
            with self.subTest(key=key):
                original=self.review[key]
                self.review[key]="drift"
                with self.assertRaises(RuntimeError):self.call()
                self.review[key]=original

    def test_changed_file_fails(self):
        (self.snapshot/"modeling.py").write_text("# changed\n")
        with self.assertRaisesRegex(RuntimeError,"hash"):self.call()

    def test_extra_python_file_fails(self):
        (self.snapshot/"extra.py").write_text("# extra\n")
        with self.assertRaisesRegex(RuntimeError,"source set"):self.call()

    def test_missing_file_fails(self):
        self.review["python_files"].append({"path":"missing.py","sha256":"a"*64})
        with self.assertRaisesRegex(RuntimeError,"source set"):self.call()

    def test_duplicate_and_empty_inventory_fail(self):
        self.review["python_files"]*=2
        with self.assertRaisesRegex(RuntimeError,"unique"):self.call()
        self.review["python_files"]=[]
        with self.assertRaisesRegex(RuntimeError,"nonempty"):self.call()


if __name__=="__main__":unittest.main()
