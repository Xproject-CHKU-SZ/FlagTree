import importlib.util
from pathlib import Path
import unittest

spec = importlib.util.spec_from_file_location("scene_replay", Path(__file__).parents[1] / "scripts/replay_scene_model_case.py")
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)


class RuntimeGuard(unittest.TestCase):
    def test_qualified_region(self):
        self.assertTrue(module.region_shape_supported(64,384,1536,1,1,1,True,True))

    def test_large_or_empty_regions(self):
        for m in (0,65,256):
            self.assertFalse(module.region_shape_supported(m,384,1536,1,1,1,True,True))

    def test_layout_dtype_device_and_geometry(self):
        base = [16,384,1536,1,1,1,True,True]
        for index,value in [(1,768),(2,3072),(3,2),(4,384),(5,2),(6,False),(7,False)]:
            args=base.copy(); args[index]=value
            with self.subTest(index=index):
                self.assertFalse(module.region_shape_supported(*args))


if __name__ == "__main__":
    unittest.main()
