from pathlib import Path
import sys
import unittest
sys.path.insert(0,str(Path(__file__).parents[1]/"src"))
from model_import_adapters.graph_replay import ExactReplayCache,identity_hash,state_signature


def identity():
    return {"model_id":"test/model","revision":"a"*40,"task":"embedding","pt2_sha256":"a"*64,
            "source_sha256":"b"*64,"compiler_sha256":"c"*64,"precision":"FP32/highest",
            "target":"PPU-ZW810E","runtime":"torch-2.10"}


class ContractTest(unittest.TestCase):
    def test_default_off_and_finite_budget(self):
        cache=ExactReplayCache(lambda *x:x,identity=identity(),frozen_tensors=lambda:(),allowed_shapes=[[(2,24)]])
        self.assertFalse(cache.snapshot()["enabled"])
        self.assertEqual(cache.snapshot()["entries"],0)
        for cap in (0,3,True):
            with self.assertRaises(ValueError):
                ExactReplayCache(lambda:None,identity=identity(),frozen_tensors=lambda:(),allowed_shapes=[[(2,24)]],max_entries=cap)

    def test_identity_isolated_and_copied(self):
        base=identity()
        cache=ExactReplayCache(lambda:None,identity=base,frozen_tensors=lambda:(),allowed_shapes=[[(2,24)]])
        base["revision"]="new"
        self.assertEqual(cache.identity["revision"],"a"*40)
        for k in identity():
            other=identity();other[k]="new" if k!="target" else "PPU-ZW810E"
            if k!="target":self.assertNotEqual(identity_hash(identity()),identity_hash(other))
        with self.assertRaises(ValueError):identity_hash({**identity(),"target":"A100"})

    def test_policy_shape_set_and_capacity_are_in_namespace(self):
        common=dict(identity=identity(),frozen_tensors=lambda:())
        a=ExactReplayCache(lambda:None,allowed_shapes=[[(2,24)]],**common)
        b=ExactReplayCache(lambda:None,allowed_shapes=[[(1,64)]],**common)
        c=ExactReplayCache(lambda:None,allowed_shapes=[[(2,24)]],max_entries=1,**common)
        self.assertEqual(len({a.namespace,b.namespace,c.namespace}),3)

    def test_missing_identity_and_unsupported_arguments_rejected(self):
        for key in identity():
            item=identity();item.pop(key)
            with self.assertRaises(ValueError):identity_hash(item)
        with self.assertRaises(ValueError):
            ExactReplayCache(None,identity=identity(),frozen_tensors=lambda:(),allowed_shapes=[])

    def test_disable_has_explicit_retained_memory_semantics(self):
        cache=ExactReplayCache(lambda:None,identity=identity(),frozen_tensors=lambda:(),allowed_shapes=[[(2,24)]],enabled=True)
        cache.disable()
        self.assertFalse(cache.snapshot()["enabled"])
        self.assertIn("retained",cache.snapshot()["memory_scope"])


if __name__=="__main__":unittest.main()
