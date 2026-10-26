import json
import sys
import tempfile
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parents[1] / "src"))
from model_import_adapters.shape_policy import policy_identity
from model_import_adapters.shape_policy_runtime import (
    MlpPolicyRouter, load_policy, policy_document)


class Device:
    def __init__(self, name="cuda"):
        self.type = name
    def __str__(self):
        return self.type + ":0"
    def __eq__(self, other):
        return isinstance(other, Device) and self.type == other.type


class Tensor:
    def __init__(self, shape, strides, dtype="torch.float32"):
        self.shape, self._strides, self.dtype, self.device = tuple(shape), tuple(strides), dtype, Device()
    def stride(self, index=None):
        return self._strides if index is None else self._strides[index]


def identity():
    return policy_identity(model_id="fixture/model", revision="f" * 40, task="embedding",
        dtype="float32", strides=[[384, 1], [1, 1536], [1]], precision="tf32x3",
        target="PPU-ZW810E", compiler_sha256="c" * 64, source_sha256="d" * 64, blocks=(16, 32))


class ShapePolicyRuntimeTest(unittest.TestCase):
    def router(self, directory, enabled=True, capacity=2, blocks=(16, 32)):
        fields = identity()["fields"].copy(); fields.pop("policy_version")
        ident = policy_identity(**{**fields, "blocks": blocks})
        path = Path(directory) / "policy.json"
        path.write_text(json.dumps(policy_document(ident)), encoding="utf-8")
        return MlpPolicyRouter(identity=ident, policy_path=path, enabled=enabled,
                native_compiled=lambda *args: "native", scene_compiled=lambda *args: "scene",
                candidates={32: lambda *args: "bm32"}, cache_capacity=capacity)

    def args(self, m=32, stride=1, dtype="torch.float32"):
        return (Tensor((m, 384), (384 * stride, stride), dtype),
                Tensor((384, 1536), (1, 384), dtype), Tensor((1536,), (1,), dtype))

    def test_two_domains_and_disabled_b0(self):
        with tempfile.TemporaryDirectory() as directory:
            active = self.router(directory)
            for m in (1, 8, 15, 16):
                self.assertEqual(active(*self.args(m)), "scene")
                self.assertEqual(active.last_decision["block_m"], 16)
            for m in (17, 31, 48, 63, 64):
                self.assertEqual(active(*self.args(m)), "bm32")
            disabled = self.router(directory, enabled=False)
            self.assertEqual(disabled(*self.args()), "scene")
            self.assertEqual(disabled.last_decision["reason"], "policy_disabled")
            with self.assertRaises(AttributeError):
                disabled.enabled = True

    def test_cache_keys_cover_stride_dtype_and_range(self):
        with tempfile.TemporaryDirectory() as directory:
            router = self.router(directory, capacity=4)
            keys = []
            for args, route in [(self.args(), "bm32"), (self.args(stride=2), "native"),
                                (self.args(dtype="torch.float16"), "native"), (self.args(65), "native")]:
                self.assertEqual(router(*args), route)
                keys.append(router.last_decision["cache_key"])
            self.assertEqual(len(set(keys)), 4)
            router(*self.args(8))
            self.assertEqual(router.snapshot()["cache_entries"], 4)
            self.assertEqual(router.snapshot()["counters"]["cache_eviction"], 1)

    def test_metadata_cache_not_output_cache(self):
        with tempfile.TemporaryDirectory() as directory:
            router = self.router(directory)
            for _ in range(3):
                router(*self.args())
            snapshot = router.snapshot()
            self.assertEqual(snapshot["counters"]["shape_bm32"], 3)
            self.assertEqual(snapshot["counters"]["cache_hit"], 2)
            snapshot["last_decision"]["block_m"] = 8
            router.last_decision["block_m"] = 8
            router(*self.args())
            self.assertEqual(router.last_decision["block_m"], 32)

    def test_config_and_model_version_namespaces_are_isolated(self):
        with tempfile.TemporaryDirectory() as directory:
            a = self.router(directory)
            b = self.router(directory, blocks=(16, 16))
            self.assertNotEqual(a.namespace, b.namespace)
            self.assertEqual(b(*self.args()), "scene")
            changed = a.identity
            changed["fields"]["revision"] = "a" * 40
            self.assertEqual(a.identity["fields"]["revision"], "f" * 40)
            fields = a.identity["fields"].copy(); fields.pop("policy_version")
            for key, value in [("revision", "a"*40), ("task", "classification"),
                               ("compiler_sha256", "e"*64), ("source_sha256", "b"*64)]:
                expected = policy_identity(**{**fields, key: value})
                loaded, status = load_policy(Path(directory)/"policy.json", expected)
                self.assertIsNone(loaded)
                self.assertTrue(status.startswith("policy_rejected:"))

    def test_malformed_identity_raises_before_execution(self):
        broken = identity(); broken["sha256"] = "0"*64
        with self.assertRaises(ValueError):
            policy_document(broken)

    def test_compiler_error_propagates_without_retry(self):
        with tempfile.TemporaryDirectory() as directory:
            router = self.router(directory)
            calls = []
            def broken(*args):
                calls.append("attempt")
                raise RuntimeError("compile_failed_fixture")
            router._candidates[32] = broken
            with self.assertRaisesRegex(RuntimeError, "compile_failed_fixture"):
                router(*self.args())
            self.assertEqual(calls, ["attempt"])
            self.assertEqual(router.snapshot()["counters"].get("native_b0", 0), 0)

    def test_document_roundtrip_and_stale_rejection(self):
        ident = identity()
        document = policy_document(ident)
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "policy.json"
            path.write_text(json.dumps(document), encoding="utf-8")
            loaded, status = load_policy(path, ident)
            self.assertEqual(status, "loaded")
            self.assertEqual(loaded, document)
            changed = dict(document); changed["identity"] = dict(ident)
            changed["identity"]["fields"] = dict(ident["fields"])
            changed["identity"]["fields"]["revision"] = "a" * 40
            path.write_text(json.dumps(changed), encoding="utf-8")
            loaded, status = load_policy(path, ident)
            self.assertIsNone(loaded)
            self.assertTrue(status.startswith("policy_rejected:"))

    def test_router_is_compiled_only_and_cache_is_shape_sensitive(self):
        ident = identity()
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "policy.json"
            path.write_text(json.dumps(policy_document(ident)), encoding="utf-8")
            calls = []
            def native(*args): calls.append("native"); return "native"
            def scene(*args): calls.append("scene"); return "scene"
            def bm32(*args): calls.append("bm32"); return "bm32"
            router = MlpPolicyRouter(identity=ident, policy_path=path, enabled=True,
                                     native_compiled=native, scene_compiled=scene,
                                     candidates={32: bm32}, cache_capacity=2)
            args = (Tensor((32, 384), (384, 1)), Tensor((384, 1536), (1, 384)), Tensor((1536,), (1,)))
            self.assertEqual(router(*args), "bm32")
            self.assertEqual(router(*args), "bm32")
            self.assertEqual(router.snapshot()["counters"]["cache_hit"], 1)
            self.assertEqual(calls, ["bm32", "bm32"])
            nonqualified = (Tensor((32, 768), (768, 1)), Tensor((768, 1536), (1, 768)), Tensor((1536,), (1,)))
            self.assertEqual(router(*nonqualified), "native")
            self.assertEqual(router.snapshot()["counters"]["native_b0"], 1)

    def test_invalid_policy_never_switches_to_eager(self):
        ident = identity()
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "missing.json"
            calls = []
            router = MlpPolicyRouter(identity=ident, policy_path=path, enabled=True,
                native_compiled=lambda *args: calls.append("native") or "native",
                scene_compiled=lambda *args: calls.append("scene") or "scene",
                candidates={32: lambda *args: calls.append("bm32") or "bm32"})
            args = (Tensor((32, 384), (384, 1)), Tensor((384, 1536), (1, 384)), Tensor((1536,), (1,)))
            self.assertEqual(router(*args), "scene")
            self.assertNotIn("eager", calls)
            self.assertTrue(router.snapshot()["policy_status"].startswith("policy_rejected:"))


if __name__ == "__main__":
    unittest.main()
