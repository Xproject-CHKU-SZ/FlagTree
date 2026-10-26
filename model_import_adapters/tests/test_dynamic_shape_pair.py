import importlib.util
from pathlib import Path
import sys
import unittest

sys.path.insert(0, str(Path(__file__).parents[1] / "scripts"))
spec = importlib.util.spec_from_file_location("dynamic_shape_pair", Path(__file__).parents[1] / "scripts/benchmark_dynamic_shape_pair.py")
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)


class DynamicShapePairTest(unittest.TestCase):
    def test_policy_qualification_uses_all_exact_metadata(self):
        key=((1,8),(8,1),0,'torch.int64','cuda:0')
        keys={(key,key)}
        self.assertTrue(module.policy_probe_qualified((key,key),keys,lambda x:x))
        self.assertFalse(module.policy_probe_qualified((key,),keys,lambda x:x))
        changed=((1,8),(16,2),0,'torch.int64','cuda:0')
        self.assertFalse(module.policy_probe_qualified((changed,key),keys,lambda x:x))

    def test_declared_miss_skips_cache_and_calibration_keeps_baseline(self):
        calls=[]
        def baseline(*inputs):calls.append("compiled");return inputs
        def replay(*inputs):raise AssertionError("Cache must not run on a declared miss")
        self.assertIs(module.select_replay_forward(replay,baseline,False),baseline)
        self.assertEqual(module.select_replay_forward(replay,baseline,False)(1),(1,))
        self.assertEqual(calls,["compiled"])
        self.assertIs(module.select_replay_forward(None,baseline,True),baseline)
        self.assertIs(module.select_replay_forward(replay,baseline,True),replay)

    def test_joint_tolerance_near_zero(self):
        import numpy as np
        ref = np.array([0., 10.], dtype="float32")
        self.assertTrue(module.compare_arrays(np.array([0.0002, 10.001], dtype="float32"), ref)["passed"])
        self.assertFalse(module.compare_arrays(np.array([0.0004, 10.001], dtype="float32"), ref)["passed"])

    def test_nonfinite_never_passes(self):
        import numpy as np
        for x in (float("inf"), float("nan")):
            self.assertFalse(module.compare_arrays(np.array([x]), np.array([0.]))["passed"])

    def test_metadata_drift_rejected(self):
        import numpy as np
        for other in (np.zeros(2, dtype="float32"), np.zeros(1, dtype="float64")):
            with self.assertRaises(ValueError):
                module.compare_arrays(other, np.zeros(1, dtype="float32"))


if __name__ == "__main__":
    unittest.main()
