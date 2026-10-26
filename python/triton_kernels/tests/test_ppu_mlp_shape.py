"""Device correctness/qualification tests; run only in the pinned PPU environment."""
import unittest


class PPUMlpShapeTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        import torch
        cls.torch = torch
        if not torch.cuda.is_available() or torch.cuda.get_device_name(0) != "PPU-ZW810E":
            raise unittest.SkipTest("PPU-ZW810E required")
        from triton_kernels.ppu_mlp_shape import small_mlp_gelu_shape
        cls.forward = staticmethod(small_mlp_gelu_shape)

    def tensors(self, m):
        t = self.torch
        t.manual_seed(301)
        return (t.randn(m, 384, device="cuda") * 0.1,
                t.randn(1536, 384, device="cuda").t() * 0.1,
                t.randn(1536, device="cuda") * 0.1)

    def test_two_domains_and_odd_tails(self):
        t = self.torch
        for m in (1, 8, 15, 16, 17, 31, 48, 63, 64):
            x, w, b = self.tensors(m)
            ref = t.nn.functional.gelu(t.addmm(b, x, w), approximate="none")
            for bm in (16, 32):
                with self.subTest(m=m, bm=bm):
                    value = self.forward(x, w, b, bm)
                    t.cuda.synchronize()
                    self.assertTrue(bool(t.isfinite(value).all()))
                    self.assertTrue(bool(((value-ref).abs() <= 3e-4+3e-4*ref.abs()).all()))

    def test_invalid_shape_dtype_layout_and_config(self):
        t = self.torch
        x, w, b = self.tensors(8)
        for args in ((x, w, b, 8), (x, w, b, 64), (x.double(), w.double(), b.double(), 16),
                     (x, w.contiguous(), b, 16), (*self.tensors(65), 16)):
            with self.assertRaises(ValueError):
                self.forward(*args)

    def test_fullgraph_dynamic_switching_reuses_graphs(self):
        t = self.torch
        t.set_float32_matmul_precision("highest")
        from torch._dynamo.utils import counters
        compiled = {bm: t.compile(lambda x,w,b,block=bm: self.forward(x,w,b,block),
                                 fullgraph=True,dynamic=True) for bm in (16,32)}
        fixtures = [(bm,self.tensors(m)) for bm in (16,32) for m in (8,48,16,64,17)]
        with t.inference_mode():
            for bm,(x,w,b) in fixtures:
                ref = t.nn.functional.gelu(t.addmm(b,x,w),approximate="none")
                value = compiled[bm](x,w,b)
                t.cuda.synchronize()
                self.assertTrue(bool(t.isfinite(value).all()))
                self.assertTrue(bool(((value-ref).abs() <= 3e-4+3e-4*ref.abs()).all()))
            graphs = counters["stats"]["unique_graphs"]
            for bm,inputs in reversed(fixtures):
                compiled[bm](*inputs)
            t.cuda.synchronize()
            self.assertEqual(counters["stats"]["unique_graphs"],graphs)


if __name__ == "__main__":
    unittest.main()
