"""Real-PPU contract tests on a toy frozen GEMM; not historical-model counts."""
import unittest
import torch
from model_import_adapters.graph_replay import ExactReplayCache


@unittest.skipUnless(torch.cuda.is_available(), "PPU runtime required")
class ReplayPPUTest(unittest.TestCase):
    def setUp(self):
        self.assertEqual(torch.cuda.get_device_name(0),"PPU-ZW810E")
        torch.set_float32_matmul_precision("highest")
        self.weight=torch.randn((8,8),device="cuda")
        self.forward=torch.compile(lambda x:torch.mm(x,self.weight),fullgraph=True,dynamic=True)
        identity={"model_id":"test/toy-gemm","revision":"a"*40,"task":"test_only","pt2_sha256":"a"*64,
            "source_sha256":"b"*64,"compiler_sha256":"c"*64,"precision":"FP32/highest","target":"PPU-ZW810E","runtime":torch.__version__}
        self.cache=ExactReplayCache(self.forward,identity=identity,frozen_tensors=lambda:(self.weight,),
            allowed_shapes=[[(2,8)],[(3,8)],[(4,8)]],enabled=True)

    def test_new_values_old_output_and_capacity(self):
        with torch.inference_mode():
            x=torch.randn((2,8),device="cuda");self.assertTrue(self.cache.prepare(x)["prepared"])
            self.assertTrue(self.cache.prepare(torch.ones((3,8),device="cuda"))["prepared"])
            self.assertEqual(self.cache.prepare(torch.ones((4,8),device="cuda"))["reason"],"entry_budget_exhausted")
            previous=self.cache(x);expected=previous.clone()
            changed=self.cache(x+1)
            self.assertTrue(torch.allclose(changed,torch.mm(x+1,self.weight),atol=3e-4,rtol=3e-4))
            self.assertTrue(torch.equal(previous,expected))
            self.cache(torch.ones((4,8),device="cuda"))
            self.assertEqual(self.cache.last_route["route"],"original_compiled")

    def test_weight_version_change_invalidates(self):
        with torch.inference_mode():
            x=torch.ones((2,8),device="cuda");self.cache.prepare(x);self.weight.add_(1)
            result=self.cache(x)
            self.assertEqual(self.cache.last_route["reason"],"model_state_changed")
            self.assertTrue(torch.allclose(result,torch.mm(x,self.weight)))

    def test_precision_policy_change_invalidates(self):
        with torch.inference_mode():
            x=torch.ones((2,8),device="cuda");self.cache.prepare(x)
            try:
                torch.set_float32_matmul_precision("high")
                self.cache(x)
                self.assertEqual(self.cache.last_route["reason"],"execution_policy_changed")
            finally:
                torch.set_float32_matmul_precision("highest")

    def test_other_stream_retains_compiled(self):
        with torch.inference_mode():
            x=torch.ones((2,8),device="cuda");self.cache.prepare(x)
            stream=torch.cuda.Stream();stream.wait_stream(torch.cuda.current_stream())
            with torch.cuda.stream(stream):
                result=self.cache(x);self.assertEqual(self.cache.last_route["reason"],"different_owner_stream")
            torch.cuda.current_stream().wait_stream(stream)
            self.assertTrue(torch.allclose(result,torch.mm(x,self.weight)))

    def test_disable_and_unversioned_model_state(self):
        with torch.inference_mode():
            x=torch.ones((2,8),device="cuda");self.cache.prepare(x);self.cache.disable();self.cache(x)
            self.assertEqual(self.cache.last_route["reason"],"policy_disabled")
            identity=self.cache.identity
            unversioned=torch.ones((8,8),device="cuda")
            other=ExactReplayCache(self.forward,identity=identity,frozen_tensors=lambda:(unversioned,),allowed_shapes=[[(2,8)]],enabled=True)
            self.assertEqual(other.prepare(x)["reason"],"unversioned_model_state")


if __name__=="__main__":unittest.main()
