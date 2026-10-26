"""PPU-only qualification of experimental geometry-specific GEMM candidates."""
import unittest
import torch


@unittest.skipUnless(torch.cuda.is_available(), "PPU runtime required")
class ObservedGemmTest(unittest.TestCase):
    def setUp(self):
        self.assertEqual(torch.cuda.get_device_name(0), "PPU-ZW810E")
        torch.set_float32_matmul_precision("highest")
        from triton_kernels.ppu_observed_gemm import observed_gemm
        self.forward = observed_gemm

    def tensors(self, m=17, k=768, n=2304):
        return (torch.randn((m,k),device="cuda",dtype=torch.float32)*.05,
                (torch.randn((n,k),device="cuda",dtype=torch.float32)*.05).t())

    def test_two_geometries_boundary_tail_precision(self):
        torch.manual_seed(301)
        with torch.inference_mode():
            for k,n in ((768,2304),(1024,3072)):
                for m in (1,15,16,17,31,32,33,63,64):
                    a,w = self.tensors(m,k,n)
                    reference = torch.mm(a,w)
                    for bm in (16,32):
                        value = self.forward(a,w,bm)
                        torch.cuda.synchronize()
                        self.assertTrue(bool(torch.isfinite(value).all()))
                        self.assertTrue(bool(((value-reference).abs() <= 3e-4+3e-4*reference.abs()).all()),(m,k,n,bm))

    def test_unqualified_config_shape_dtype_and_layout_rejected(self):
        a,w = self.tensors()
        bad = [(a,w,8),(a,w,64),(a.half(),w.half(),16),
               (*self.tensors(65),16),(*self.tensors(17,384,1536),16)]
        padded=torch.empty((17,1536),device="cuda",dtype=torch.float32)
        padded[:,::2]=a
        bad.extend([(padded[:,::2],w,16),(a,w.contiguous(),16),(a.reshape(1,17,768),w,16)])
        for args in bad:
            with self.assertRaises(ValueError):
                self.forward(*args)


if __name__ == "__main__":
    unittest.main()
