import importlib.util
from pathlib import Path
from types import SimpleNamespace
import unittest

FILE = Path(__file__).parents[1] / "scripts/run_dynamic_text_pilot.py"
SPEC = importlib.util.spec_from_file_location("pilot", FILE)
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class CacheInterfaceTests(unittest.TestCase):
    def test_config_alone_does_not_enable_cache_keyword(self):
        class Classifier:
            config = SimpleNamespace(use_cache=True)
            def forward(self, input_ids, attention_mask=None):
                pass
        self.assertFalse(MODULE.supports_unused_cache_toggle(Classifier()))

    def test_explicit_keyword_and_forwarding_interface(self):
        class Explicit:
            config = SimpleNamespace(use_cache=True)
            def forward(self, input_ids, use_cache=None):
                pass
        class Forwarding:
            config = SimpleNamespace(use_cache=True)
            def forward(self, input_ids, **kwargs):
                pass
        self.assertTrue(MODULE.supports_unused_cache_toggle(Explicit()))
        self.assertTrue(MODULE.supports_unused_cache_toggle(Forwarding()))

    def test_config_without_cache_is_unchanged(self):
        class NoCache:
            config = SimpleNamespace()
            def forward(self, input_ids, **kwargs):
                pass
        self.assertFalse(MODULE.supports_unused_cache_toggle(NoCache()))


if __name__ == "__main__":
    unittest.main(verbosity=2)
