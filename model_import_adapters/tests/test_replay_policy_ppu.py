"""Real PPU policy integration tests, not historical-model performance claims."""
import json
from pathlib import Path
import sys
import tempfile
import unittest

sys.path.insert(0,str(Path(__file__).parents[1]/"src"))
import torch
from model_import_adapters.graph_replay import tensor_metadata
from model_import_adapters.replay_policy import PolicyReplayRouter,policy_document


IDENTITY={"model_id":"fixture/matmul","revision":"fixture","task":"matmul","pt2_sha256":"a"*64,
 "source_sha256":"b"*64,"compiler_sha256":"c"*64,"libtriton_sha256":"d"*64,
 "protocol_sha256":"1"*64,"compile_options_sha256":"2"*64,"router_sha256":"3"*64,
 "precision":"FP32/highest","target":"PPU-ZW810E","runtime":"fixture_not_production_identity"}
EVIDENCE={"calibration_sha256":"e"*64,"comparison_sha256":"f"*64,"artifact_audit_sha256":"0"*64}


class PolicyPPUTest(unittest.TestCase):
    def setUp(self):
        self.assertEqual(torch.cuda.get_device_name(0),"PPU-ZW810E")
        torch.set_float32_matmul_precision("highest")

    def test_policy_hit_new_values_miss_and_disable(self):
        x=torch.randn(2,16,device="cuda");w=torch.randn(16,8,device="cuda")
        compiled=torch.compile(lambda x,w:x@w,fullgraph=True,dynamic=True)
        entry=json.loads(json.dumps([tensor_metadata(x),tensor_metadata(w)]))
        with tempfile.TemporaryDirectory() as directory,torch.inference_mode():
            path=Path(directory)/"policy.json";path.write_text(json.dumps(policy_document(IDENTITY,[entry],EVIDENCE)))
            router=PolicyReplayRouter(compiled,identity=IDENTITY,policy_path=path,frozen_tensors=lambda:(w,),enabled=True)
            compiled(x,w);self.assertTrue(router.prepare(x,w)["prepared"])
            old=router(x,w);saved=old.clone();changed=x*3
            result=router(changed,w);torch.testing.assert_close(result,compiled(changed,w),atol=3e-4,rtol=3e-4)
            self.assertEqual(router.last_route["route"],"graph_replay");torch.testing.assert_close(old,saved)
            wide=torch.randn(2,32,device="cuda")[:,::2]
            torch.testing.assert_close(router(wide,w),compiled(wide,w),atol=3e-4,rtol=3e-4)
            self.assertEqual(router.last_route["reason"],"metadata_not_in_policy")
            router.disable();torch.testing.assert_close(router(x,w),compiled(x,w),atol=3e-4,rtol=3e-4)
            self.assertEqual(router.last_route["reason"],"policy_disabled")
            self.assertEqual(router.snapshot()["cache"]["entries"],1)

    def test_changed_identity_rejects_policy_and_preserves_compiled(self):
        x=torch.randn(2,16,device="cuda");w=torch.randn(16,8,device="cuda")
        compiled=torch.compile(lambda x,w:x@w,fullgraph=True,dynamic=True)
        entry=json.loads(json.dumps([tensor_metadata(x),tensor_metadata(w)]))
        with tempfile.TemporaryDirectory() as directory,torch.inference_mode():
            path=Path(directory)/"policy.json";path.write_text(json.dumps(policy_document(IDENTITY,[entry],EVIDENCE)))
            router=PolicyReplayRouter(compiled,identity={**IDENTITY,"pt2_sha256":"1"*64},policy_path=path,frozen_tensors=lambda:(w,),enabled=True)
            self.assertIsNone(router.cache);self.assertFalse(router.prepare(x,w)["prepared"])
            torch.testing.assert_close(router(x,w),compiled(x,w),atol=3e-4,rtol=3e-4)
            self.assertIn("policy_rejected",router.last_route["reason"])


if __name__=="__main__":unittest.main()
