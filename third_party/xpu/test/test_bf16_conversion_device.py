"""Real-P800 SDNN regression: BF16 rounding, overflow, subnormals and NaNs."""
import pytest
import torch
import triton
import triton.language as tl


# This SDK's StripAllOps removes functions whose names contain "conv".
# This is a cast test, not a test of that separately documented SDK filter.
@triton.jit
def bf16_cast_kernel(src, dst, N: tl.constexpr, MODE: tl.constexpr,
                     BLOCK: tl.constexpr):
    lane = tl.program_id(0) * BLOCK + tl.arange(0, BLOCK)
    value = tl.load(src + lane, lane < N, other=0)
    if MODE == 0:
        result = value.to(tl.bfloat16)
    elif MODE == 1:
        result = value.to(tl.bfloat16, fp_downcast_rounding="rtne")
    else:
        result = value.to(tl.bfloat16, fp_downcast_rounding="rtz")
    tl.store(dst + lane, result, lane < N)


@pytest.mark.parametrize("mode", [0, 1, 2], ids=["default", "rtne", "rtz"])
@pytest.mark.parametrize("boundary_tail", [False, True])
def test_bf16_conversion_bit_patterns(mode, boundary_tail):
    assert torch.cuda.is_available(), "Requires a real healthy P800"
    upper = torch.arange(65536, dtype=torch.int64)[:, None]
    low = torch.tensor([0, 0x7fff, 0x8000, 0x8001, 0xffff], dtype=torch.int64)[None, :]
    bits = ((upper << 16) | low).flatten()
    if boundary_tail:
        # Exercise a partial final block, not only a fully divisible launch.
        bits = bits[:-3]
    exponent_all_ones = (bits & 0x7f800000) == 0x7f800000
    nan = exponent_all_ones & ((bits & 0x7fffff) != 0)
    special = (bits >> 16) | torch.where(nan, 0x40, 0)
    if mode == 2:
        expected = torch.where(nan, special, bits >> 16)
    else:
        rounded = ((bits + 0x7fff + ((bits >> 16) & 1)) >> 16) & 0xffff
        expected = torch.where(exponent_all_ones, special, rounded)
    src = bits.to(torch.int32).view(torch.float32).to("cuda")
    dst = torch.full((bits.numel(),), 42., device="cuda", dtype=torch.bfloat16)
    torch.cuda.synchronize()
    compiled = bf16_cast_kernel[(triton.cdiv(bits.numel(), 256),)](
        src, dst, N=bits.numel(), MODE=mode, BLOCK=256, is_sdnn=True)
    torch.cuda.synchronize()
    assert compiled.metadata.backend_name == "xpu"
    assert compiled.metadata.xpu_arch == 3 and compiled.metadata.is_sdnn
    actual = dst.cpu().view(torch.int16).to(torch.int64) & 0xffff
    actual_nan = ((actual & 0x7f80) == 0x7f80) & ((actual & 0x7f) != 0)
    correct = torch.where(nan, actual_nan, actual == expected)
    if not bool(correct.all()):
        indices = (~correct).nonzero()[:20].flatten().tolist()
        details = [(i, hex(bits[i].item()), hex(actual[i].item()),
                    hex(expected[i].item())) for i in indices]
        raise AssertionError(f"symbol={compiled.metadata.name}, first mismatches={details}")
