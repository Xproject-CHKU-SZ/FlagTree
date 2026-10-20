"""Explicit FP32 input precision must not change legacy configuration defaults."""
import pytest

from triton_kernels.matmul_ogs import PrecisionConfig


def test_default_preserves_legacy_tf32_policy():
    config = PrecisionConfig()
    assert config.allow_tf32 is True
    assert config.input_precision is None


def test_explicit_precision_overrides_legacy_switch():
    config = PrecisionConfig(allow_tf32=False, input_precision="tf32x3")
    assert config.input_precision == "tf32x3"
    assert config.allow_tf32 is False


def test_legacy_positional_constructor_unchanged():
    config = PrecisionConfig(None, False)
    assert config.allow_tf32 is False
    assert config.input_precision is None


@pytest.mark.parametrize("value", ["ieee", "tf32", "tf32x3", "bf16x3", "bf16x6"])
def test_explicit_modes_are_forwarded_without_silent_substitution(value):
    assert PrecisionConfig(input_precision=value).input_precision == value


@pytest.mark.parametrize("value", ["bf16", "TF32", "", 42, True])
def test_invalid_explicit_precision_rejected(value):
    with pytest.raises(ValueError, match="input_precision"):
        PrecisionConfig(input_precision=value)
