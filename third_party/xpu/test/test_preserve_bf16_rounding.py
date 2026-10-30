"""Compiler-only regression for the P800 SDNN BF16 RTNE compensation pass.

Run using the matching freshly built XPU extension, without XPU hardware.
The compiler pipeline enables this pass only on the arch=3 SDNN path.
"""
import pytest

from triton._C.libtriton import ir, xpu

pytestmark = pytest.mark.no_xpu_required


def transform(tmp_path, input_type, output_type, rounding="", repeats=1, custom=False):
    ctx = ir.context()
    ir.load_dialects(ctx)
    xpu.load_dialects(ctx)
    path = tmp_path / "input.mlir"
    conversion = (f"tt.fp_to_fp %arg, rounding = {rounding} : {input_type} -> {output_type}" if custom
                  else f"arith.truncf %arg {rounding} : {input_type} to {output_type}")
    path.write_text(f"""module {{
  tt.func public @convert(%arg: {input_type}) -> {output_type} {{
    %0 = {conversion}
    tt.return %0 : {output_type}
  }}
}}
""")
    mod = ir.parse_mlir_module(str(path), ctx)
    mod.context = ctx
    for _ in range(repeats):
        pm = ir.pass_manager(ctx)
        xpu.passes.ttsdnnir.add_preserve_bf16_rounding_pass(pm)
        pm.run(mod, "preserve-bf16-rounding")
    # XPU release builds hide str(module); snapshots are the supported fallback.
    out = tmp_path / "output.mlir"
    mod.create_location_snapshot(str(out))
    return out.read_text()


@pytest.mark.parametrize("src,dst", [
    ("f32", "bf16"),
    ("tensor<64xf32>", "tensor<64xbf16>"),
    ("tensor<16x32xf32>", "tensor<16x32xbf16>"),
])
@pytest.mark.parametrize("rounding", ["", "to_nearest_even"])
def test_rtne_prepared(tmp_path, src, dst, rounding):
    out = transform(tmp_path, src, dst, rounding)
    assert out.count("flagtree.bf16_rtne_prepared") == 1
    assert "arith.shrui" in out
    assert "arith.select" in out
    assert "arith.truncf" in out


@pytest.mark.parametrize("src,dst,rounding", [
    ("f32", "bf16", "downward"),
    ("f32", "f16", ""),
    ("f64", "bf16", ""),
    ("tensor<?xf32>", "tensor<?xbf16>", ""),
    ("vector<4xf32>", "vector<4xbf16>", ""),
])
def test_other_contracts_unchanged(tmp_path, src, dst, rounding):
    out = transform(tmp_path, src, dst, rounding)
    assert "flagtree.bf16_rtne_prepared" not in out
    assert "arith.shrui" not in out


def test_rtz_nan_preservation_without_rtne_bias(tmp_path):
    out = transform(tmp_path, "tensor<64xf32>", "tensor<64xbf16>", "toward_zero")
    assert out.count("flagtree.bf16_rtz_prepared") == 1
    assert "arith.shrui" not in out
    assert "arith.ori" in out
    assert "arith.select" in out


@pytest.mark.parametrize("mode,marker", [
    ("rtne", "flagtree.bf16_rtne_prepared"),
    ("rtz", "flagtree.bf16_rtz_prepared"),
])
def test_frontend_custom_conversion(tmp_path, mode, marker):
    out = transform(tmp_path, "tensor<64xf32>", "tensor<64xbf16>", mode, custom=True)
    assert "tt.fp_to_fp" not in out
    assert out.count(marker) == 1


def test_custom_other_dtype_unchanged(tmp_path):
    out = transform(tmp_path, "tensor<64xf32>", "tensor<64xf16>", "rtz", custom=True)
    assert "tt.fp_to_fp" in out
    assert "flagtree.bf16_" not in out


@pytest.mark.parametrize("rounding,marker,shifts", [
    ("", "flagtree.bf16_rtne_prepared", 1),
    ("toward_zero", "flagtree.bf16_rtz_prepared", 0),
])
def test_idempotent(tmp_path, rounding, marker, shifts):
    out = transform(tmp_path, "tensor<64xf32>", "tensor<64xbf16>", rounding, repeats=2)
    assert out.count(marker) == 1
    assert out.count("arith.shrui") == shifts
