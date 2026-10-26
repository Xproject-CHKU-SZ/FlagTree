from pathlib import Path
import sys
import tempfile
import unittest
import numpy as np

sys.path.insert(0,str(Path(__file__).parents[1]/"scripts"))
from audit_replay_campaign import audit_output_archive
from benchmark_scene_pair import sha256


class ArchiveAuditTest(unittest.TestCase):
    def files(self,folder,actual):
        reference=Path(folder)/"reference.npz";output=Path(folder)/"output.npz"
        zeros=np.zeros((2,3),dtype=np.float32)
        np.savez_compressed(reference,**{name:zeros for name in ("original_output","eager_output","restored_output","compiled_output")})
        np.savez_compressed(output,**{name:actual for name in ("fresh_eager","baseline","candidate")})
        return reference,output

    def test_all_twelve_comparisons_reopened(self):
        with tempfile.TemporaryDirectory() as folder:
            a,b=self.files(folder,np.full((2,3),.0002,dtype=np.float32))
            result=audit_output_archive(a,b,sha256(a),sha256(b))
            self.assertEqual(result["array_comparisons"],12)
            self.assertGreater(result["maximum_abs_error"],0.)

    def test_hash_drift_is_failure(self):
        with tempfile.TemporaryDirectory() as folder:
            a,b=self.files(folder,np.zeros((2,3),dtype=np.float32))
            with self.assertRaisesRegex(ValueError,"hash drift"):audit_output_archive(a,b,"wrong",sha256(b))

    def test_metadata_nonfinite_and_tolerance_failures_not_hidden(self):
        for actual in (np.zeros((2,3),dtype=np.float64),np.zeros((1,3),dtype=np.float32),
                np.full((2,3),np.nan,dtype=np.float32),np.full((2,3),.0004,dtype=np.float32)):
            with tempfile.TemporaryDirectory() as folder:
                a,b=self.files(folder,actual)
                with self.assertRaises(ValueError):audit_output_archive(a,b,sha256(a),sha256(b))


if __name__=="__main__":unittest.main()
