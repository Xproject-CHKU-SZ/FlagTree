import unittest
from pathlib import Path
import sys
sys.path.insert(0,str(Path(__file__).parents[1]/"scripts"))
from benchmark_observed_gemm_pair import check


class PairContractTest(unittest.TestCase):
    def test_shape_and_nonfinite_gate(self):
        import numpy as np
        ref=np.array([0.,10.],dtype="float32")
        self.assertTrue(check(np.array([.0002,10.001],dtype="float32"),ref)["passed"])
        self.assertFalse(check(np.array([np.nan,10.],dtype="float32"),ref)["passed"])
    def test_dtype_and_shape_mismatch(self):
        import numpy as np
        with self.assertRaises(ValueError):
            check(np.zeros(2,dtype="float32"),np.zeros(1,dtype="float32"))
        with self.assertRaises(ValueError):
            check(np.zeros(1,dtype="float64"),np.zeros(1,dtype="float32"))


if __name__=="__main__": unittest.main()
