from third_party.ppu.backend.compile_diagnostics import (
    classify_compile_failure,
    is_known_compile_stage,
)


def test_sdpa_layout_is_operator_candidate_only_at_compiler_boundary():
    result = classify_compile_failure(
        "make_ttgir",
        "scaled_dot_product_efficient_attention expected stride layout",
    )
    assert result.category == "sdpa_stride_or_layout"
    assert result.operator_candidate is True

    result = classify_compile_failure(
        "forward",
        "scaled_dot_product_efficient_attention expected stride layout",
    )
    assert result.operator_candidate is False


def test_model_and_baseline_errors_are_not_operator_failures():
    assert classify_compile_failure("baseline", "cpu tensor pointer argument").operator_candidate is False
    assert classify_compile_failure("forward", "Attempt to trace forbidden mark_static_address").operator_candidate is False
    assert classify_compile_failure("baseline", "DynamicCache has no get_usable_length").operator_candidate is False


def test_ppu_llc_failure_preserves_toolchain_boundary():
    result = classify_compile_failure("", "ppu-llc error: failed with return code 1")
    assert result.stage == "ppu-llc"
    assert result.category == "ppu_toolchain_failure"
    assert result.operator_candidate is True


def test_compile_stage_validation():
    assert is_known_compile_stage("make_ttir")
    assert is_known_compile_stage("PPU-LLC")
    assert not is_known_compile_stage("baseline")
