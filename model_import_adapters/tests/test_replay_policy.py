import json
from pathlib import Path
import sys
import tempfile
import unittest

sys.path.insert(0,str(Path(__file__).parents[1]/"src"))
from model_import_adapters.replay_policy import (PolicyReplayRouter,SCHEMA,
    load_policy,metadata_key,policy_document)


IDENTITY={"model_id":"a/b","revision":"r","task":"embedding","pt2_sha256":"a"*64,
 "source_sha256":"b"*64,"compiler_sha256":"c"*64,"libtriton_sha256":"d"*64,
 "protocol_sha256":"1"*64,"compile_options_sha256":"2"*64,"router_sha256":"3"*64,
 "precision":"FP32/highest","target":"PPU-ZW810E","runtime":"torch=2;triton=3"}
EVIDENCE={"calibration_sha256":"e"*64,"comparison_sha256":"f"*64,"artifact_audit_sha256":"0"*64}
ENTRY=[[[1,8],[8,1],0,"torch.int64","cuda:0"],[[1,8],[8,1],0,"torch.int64","cuda:0"]]


class ReplayPolicyTest(unittest.TestCase):
    def policy(self,folder,entries=(ENTRY,)):
        path=Path(folder)/"policy.json";path.write_text(json.dumps(policy_document(IDENTITY,list(entries),EVIDENCE)))
        return path

    def test_document_roundtrip_and_exact_metadata(self):
        with tempfile.TemporaryDirectory() as d:
            path=self.policy(d);value,status=load_policy(path,IDENTITY)
            self.assertEqual((value["schema"],status),(SCHEMA,"loaded"))
            self.assertEqual(metadata_key(ENTRY),metadata_key(ENTRY))

    def test_policy_hash_identity_entries_and_descriptor_rejected(self):
        with tempfile.TemporaryDirectory() as d:
            path=self.policy(d);value=json.loads(path.read_text())
            for mutate in (lambda v:v.update(sha256="x"),lambda v:v["identity"].update(pt2_sha256="z"),
                           lambda v:v["entries"][0][0].__setitem__(0,2),lambda v:v["entries"].append(ENTRY)):
                other=Path(d)/"other.json";x=json.loads(json.dumps(value));mutate(x);other.write_text(json.dumps(x))
                self.assertIsNone(load_policy(other,IDENTITY)[0])

    def test_disabled_or_rejected_policy_is_compiled_only(self):
        with tempfile.TemporaryDirectory() as d:
            path=self.policy(d);calls=[]
            router=PolicyReplayRouter(lambda *x:calls.append(x) or "compiled",identity=IDENTITY,policy_path=path,
                frozen_tensors=lambda:(),enabled=False)
            self.assertEqual(router(1),"compiled");self.assertEqual(router.last_route["route"],"original_compiled")
            bad=Path(d)/"bad.json";bad.write_text("{}")
            rejected=PolicyReplayRouter(lambda *x:"compiled",identity=IDENTITY,policy_path=bad,
                frozen_tensors=lambda:(),enabled=True)
            self.assertEqual(rejected(1),"compiled");self.assertIn("policy_rejected",rejected.last_route["reason"])

    def test_unqualified_metadata_never_replays(self):
        with tempfile.TemporaryDirectory() as d:
            path=self.policy(d);router=PolicyReplayRouter(lambda *x:"compiled",identity=IDENTITY,
                policy_path=path,frozen_tensors=lambda:(),enabled=True)
            self.assertEqual(router.prepare(1)["reason"],"metadata_not_in_policy")
            self.assertEqual(router(1),"compiled")


if __name__=="__main__":unittest.main()
