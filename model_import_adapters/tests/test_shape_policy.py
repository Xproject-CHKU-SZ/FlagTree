import importlib.util
from pathlib import Path
import sys
import unittest

spec = importlib.util.spec_from_file_location("shape_policy_tested", Path(__file__).parents[1] / "src/model_import_adapters/shape_policy.py")
module = importlib.util.module_from_spec(spec)
sys.modules[spec.name] = module
spec.loader.exec_module(module)


class ShapePolicyTest(unittest.TestCase):
    def decide(self, m, **kwargs):
        return module.select_mlp_config(m, 384, 1536, 1, 1, 1, True, True, **kwargs)

    def test_default_is_disabled(self):
        self.assertEqual(self.decide(8).reason, "policy_disabled")

    def test_buckets_boundaries_and_real_m(self):
        for m in (1, 8, 15, 16):
            self.assertEqual(self.decide(m, enabled=True, blocks=(16, 32)).block_m, 16)
        for m in (17, 31, 48, 63, 64):
            self.assertEqual(self.decide(m, enabled=True, blocks=(16, 32)).block_m, 32)

    def test_outside_domain_stays_compiled(self):
        for m in (-1, 0, 65, 256, True, 1.0, None):
            self.assertEqual(self.decide(m, enabled=True).route, "original_compiled")

    def test_geometry_layout_dtype_device(self):
        base = [8, 384, 1536, 1, 1, 1, True, True]
        for i, value in [(1, 768), (2, 3072), (3, 2), (4, 384), (5, 2), (6, False), (7, False)]:
            args = base.copy(); args[i] = value
            self.assertEqual(module.select_mlp_config(*args, enabled=True).route, "original_compiled")

    def test_bad_configuration_rejected_even_disabled(self):
        for blocks in ((), (16,), (8, 16), (16, 64), (True, 16), (16, 16, 16)):
            with self.assertRaises(ValueError):
                self.decide(8, blocks=blocks)

    def test_cache_identity_is_complete_and_deterministic(self):
        args = dict(model_id="a/b", revision="f"*40, task="embedding", dtype="float32",
                    strides=[[384, 1], [1, 384]], precision="tf32x3", target="ppu",
                    compiler_sha256="c"*64, source_sha256="d"*64, blocks=(16, 32))
        identity = module.policy_identity(**args)
        self.assertEqual(identity, module.policy_identity(**args))
        for field, value in [("revision", "a"*40), ("blocks", (16, 16)), ("precision", "ieee"),
                             ("strides", [[768, 2]]), ("compiler_sha256", "b"*64), ("task", "rerank")]:
            self.assertNotEqual(identity["sha256"], module.policy_identity(**{**args, field: value})["sha256"])
        with self.assertRaises(ValueError):
            module.policy_identity(**{**args, "target": ""})


if __name__ == "__main__":
    unittest.main()
