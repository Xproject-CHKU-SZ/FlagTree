"""Unit tests for the T5 Apex fused-norm export fallback."""
from __future__ import annotations

import importlib.util
from pathlib import Path
import unittest

import torch

FILE = Path(__file__).parents[1] / "scripts/run_dynamic_text_pilot.py"
SPEC = importlib.util.spec_from_file_location("dynamic_pilot", FILE)
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class FusedRMSNorm(torch.nn.Module):
    __module__ = "apex.normalization.fused_layer_norm"
    def __init__(self, width=4):
        super().__init__()
        self.weight = torch.nn.Parameter(torch.ones(width))
        self.normalized_shape = (width,)
        self.eps = 1e-6

    def forward(self, value):
        return value


class ApexFallbackTests(unittest.TestCase):
    def test_only_named_apex_fused_norm_is_replaced(self):
        module = torch.nn.Sequential(FusedRMSNorm(), torch.nn.Identity())
        replaced = MODULE.replace_apex_fused_norms(module)
        self.assertEqual(replaced, ["0"])
        self.assertEqual(type(module[0]).__name__, "ManualRmsNorm")

    def test_fallback_preserves_rms_shape_and_finite_values(self):
        module = torch.nn.Sequential(FusedRMSNorm())
        MODULE.replace_apex_fused_norms(module)
        value = torch.randn(2, 8, 4)
        output = module(value)
        self.assertEqual(output.shape, value.shape)
        self.assertTrue(torch.isfinite(output).all().item())

    def test_non_apex_child_is_untouched(self):
        module = torch.nn.Sequential(torch.nn.LayerNorm(4))
        self.assertEqual(MODULE.replace_apex_fused_norms(module), [])
        self.assertIsInstance(module[0], torch.nn.LayerNorm)

    def test_layernorm_is_not_changed_to_rmsnorm(self):
        class FusedLayerNorm(FusedRMSNorm):
            __module__ = "apex.normalization.fused_layer_norm"
        module = torch.nn.Sequential(FusedLayerNorm())
        self.assertEqual(MODULE.replace_apex_fused_norms(module), [])

    def test_multi_axis_rmsnorm_rejected(self):
        norm = FusedRMSNorm()
        norm.weight = torch.nn.Parameter(torch.ones(2, 2))
        norm.normalized_shape = (2, 2)
        with self.assertRaisesRegex(RuntimeError, "single last-feature axis"):
            MODULE.replace_apex_fused_norms(torch.nn.Sequential(norm))


if __name__ == "__main__":
    unittest.main(verbosity=2)
