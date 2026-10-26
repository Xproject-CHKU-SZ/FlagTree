import sys
from pathlib import Path
import unittest

sys.path.insert(0, str(Path(__file__).parents[1] / "scripts"))
from frozen_probe_dispatch import FrozenProbeDispatcher


class Tensor:
    def __init__(self):
        self._version = 0
        self.shape = (2, 8)
        self.dtype, self.device = "torch.int64", "cuda:0"
    def stride(self):
        return (8, 1)
    def storage_offset(self):
        return 0


class ProbeDispatchTest(unittest.TestCase):
    def router(self):
        return FrozenProbeDispatcher(lambda *x: "native", namespace={"model": "a", "source": "v1"})

    def test_bound_request_and_distinct_same_metadata(self):
        router, x = self.router(), Tensor()
        router.register((x,), lambda *x: "candidate", route="shape_bm32", input_sha256="a"*64)
        router.seal()
        self.assertEqual(router(x), "candidate")
        self.assertEqual(router(Tensor()), "native")
        self.assertEqual(router.snapshot()["counters"]["qualified_request"], 1)

    def test_mutation_and_shape_change_never_reuse_observation(self):
        for change in (lambda x: setattr(x, "_version", 1), lambda x: setattr(x, "shape", (4, 64))):
            router, x = self.router(), Tensor()
            router.register((x,), lambda *x: "candidate", route="shape_bm32", input_sha256="a"*64)
            change(x)
            self.assertEqual(router(x), "native")

    def test_seal_budget_duplicate_and_no_eager(self):
        router, x = self.router(), Tensor()
        router.register((x,), lambda *x: None, route="scene_v3_compiled", input_sha256="a"*64)
        with self.assertRaises(ValueError):
            router.register((x,), lambda *x: None, route="scene_v3_compiled", input_sha256="a"*64)
        with self.assertRaises(ValueError):
            router.register((Tensor(),), lambda *x: None, route="eager", input_sha256="a"*64)
        router.seal()
        with self.assertRaises(ValueError):
            router.register((Tensor(),), lambda *x: None, route="shape_bm32", input_sha256="a"*64)

    def test_runtime_error_is_not_silently_retried(self):
        router, x = self.router(), Tensor()
        def broken(*x):
            raise RuntimeError("fixture_failure")
        router.register((x,), broken, route="shape_bm32", input_sha256="a"*64)
        with self.assertRaisesRegex(RuntimeError, "fixture_failure"):
            router(x)
        self.assertNotIn("original_compiled", router.counts)

    def test_namespace_isolates_models_compilers_and_policy(self):
        base = {"model": "a", "compiler": "v1", "blocks": [16,32]}
        current = FrozenProbeDispatcher(lambda: None, namespace=base)
        for key, value in (("model", "b"), ("compiler", "v2"), ("blocks", [16,16])):
            other = FrozenProbeDispatcher(lambda: None, namespace={**base,key:value})
            self.assertNotEqual(current.namespace, other.namespace)

    def test_static_shape_path_is_explicit_not_eager(self):
        router,x=self.router(),Tensor()
        router.register((x,),lambda *x:"static",route="static_shape_compiled",input_sha256="f"*64)
        self.assertEqual(router(x),"static")
        self.assertEqual(router.last_route,"static_shape_compiled")

    def test_replay_route_is_explicit_and_unqualified_requests_keep_compiled(self):
        router,x=self.router(),Tensor()
        router.register((x,),lambda *x:"replay",route="exact_shape_replay",input_sha256="f"*64)
        self.assertEqual(router(x),"replay")
        self.assertEqual(router(Tensor()),"native")


if __name__ == "__main__":
    unittest.main()
