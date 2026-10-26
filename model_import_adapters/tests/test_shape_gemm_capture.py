from pathlib import Path
import sys
import unittest

sys.path.insert(0, str(Path(__file__).parents[1] / "scripts"))
from capture_shape_gemm_fixtures import geometry_matches


class GeometryTest(unittest.TestCase):
    def test_capture_accepts_only_selected_geometry(self):
        for m in (8, 16, 48, 64, 256):
            self.assertTrue(geometry_matches((m,768),(768,2304),768,2304))
        for a,b in [((8,384),(384,1536)),((8,768),(769,2304)),((8,768),(768,768)),
                    ((0,768),(768,2304)),((1,8,768),(768,2304)),((8,768),(768,))]:
            self.assertFalse(geometry_matches(a,b,768,2304))


if __name__ == "__main__":
    unittest.main()
