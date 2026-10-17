"""Metadata-only regression: disabled flags and nontrivial task pipelines."""
import importlib.util
import json
import os
from pathlib import Path
import tempfile
import unittest

FILE = Path(os.environ.get("CAMPAIGN_MODULE_FILE", Path(__file__).parents[1] / "scripts/run_unified_ir_text_campaign.py"))
SPEC = importlib.util.spec_from_file_location("campaign_under_test", FILE)
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class PoolingInventoryTests(unittest.TestCase):
    def check_pooling(self, config, extra_module=None):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            pooling = root / "1_Pooling"
            pooling.mkdir()
            (pooling / "config.json").write_text(json.dumps(config))
            modules = [{"type": "sentence_transformers.models.Transformer", "path": ""},
                       {"type": "sentence_transformers.models.Pooling", "path": "1_Pooling"}]
            if extra_module:
                modules.append({"type": "sentence_transformers.models." + extra_module, "path": "2_" + extra_module})
            (root / "modules.json").write_text(json.dumps(modules))
            return MODULE.detect_pooling(root)

    def test_disabled_extended_modes_are_not_rejected(self):
        result = self.check_pooling({"pooling_mode_mean_tokens": True, "pooling_mode_weightedmean_tokens": False, "pooling_mode_lasttoken": False})
        self.assertTrue(result["supported"])

    def test_active_extended_mode_requires_full_pipeline(self):
        result = self.check_pooling({"pooling_mode_mean_tokens": True, "pooling_mode_lasttoken": True})
        self.assertFalse(result["supported"])

    def test_dense_task_output_is_not_silently_discarded(self):
        result = self.check_pooling({"pooling_mode_mean_tokens": True}, "Dense")
        self.assertFalse(result["supported"])

    def test_normalize_is_supported_by_legacy_simple_adapter(self):
        result = self.check_pooling({"pooling_mode_mean_tokens": True}, "Normalize")
        self.assertTrue(result["supported"])
        self.assertTrue(result["normalize"])


if __name__ == "__main__":
    unittest.main(verbosity=2)
