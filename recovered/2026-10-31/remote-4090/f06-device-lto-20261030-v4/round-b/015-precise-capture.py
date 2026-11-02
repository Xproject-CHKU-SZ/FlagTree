import triton
import triton.language as tl
from torch._inductor.runtime import triton_helpers, triton_heuristics
from torch._inductor.runtime.triton_helpers import libdevice, math as tl_math
from torch._inductor.runtime.hints import AutotuneHint, ReductionHint, TileHint, DeviceProperties

@triton.jit
def capture_tanh_argument(in_ptr0, in_ptr1, out_ptr0, xnumel, XBLOCK: tl.constexpr, capture_t):
    xnumel = 65536
    xoffset = tl.program_id(0) * XBLOCK
    xindex = xoffset + tl.arange(0, XBLOCK)[:]
    xmask = tl.full([XBLOCK], True, tl.int1)[:]
    x2 = xindex
    x0 = xindex % 1024
    tmp0 = tl.load(in_ptr0 + x2, None).to(tl.float32)
    tmp3 = tl.load(in_ptr1 + x0, None, eviction_policy='evict_last').to(tl.float32)
    tmp1 = tmp0.to(tl.float16)
    tmp2 = tmp1.to(tl.float32)
    tmp4 = tmp3.to(tl.float16)
    tmp5 = tmp4.to(tl.float32)
    tmp6 = tmp2 + tmp5
    tmp7 = tmp6.to(tl.float16)
    tmp8 = tmp7.to(tl.float32)
    tmp9 = tmp8.to(tl.float32)
    tmp10 = tl.full([1], 0.5, tl.float32)
    tmp11 = tmp9 * tmp10
    tmp12 = tmp9 * tmp9
    tmp13 = tmp12 * tmp9
    tmp14 = tl.full([1], 0.044715, tl.float32)
    tmp15 = tmp13 * tmp14
    tmp16 = tmp9 + tmp15
    tmp17 = tl.full([1], 0.7978845608028654, tl.float32)
    tmp18 = tmp16 * tmp17
    tmp19 = tl.inline_asm_elementwise('{ .reg .f32 a, z, p, small, e, d, r, large; .reg .b32 sign, bits; .reg .pred use_small, saturated; abs.ftz.f32 a, $1; setp.ltu.f32 use_small, a, 0f3F19999A; mul.f32 z, $1, $1; fma.rn.ftz.f32 p, 0f3C80F082, z, 0fBD563CAE; fma.rn.ftz.f32 p, p, z, 0f3E085941; fma.rn.ftz.f32 p, p, z, 0fBEAAA9ED; fma.rn.ftz.f32 p, p, z, 0f00000000; fma.rn.ftz.f32 small, p, $1, $1; mul.f32 e, a, 0f4038AA3B; ex2.approx.ftz.f32 e, e; add.f32 d, e, 0f3F800000; rcp.approx.ftz.f32 r, d; fma.rn.ftz.f32 large, r, 0fC0000000, 0f3F800000; setp.ge.f32 saturated, a, 0f41102CB4; selp.f32 large, 0f3F800000, large, saturated; mov.b32 sign, $1; and.b32 sign, sign, 0x80000000; mov.b32 bits, large; or.b32 bits, bits, sign; mov.b32 large, bits; selp.f32 $0, small, large, use_small; }', constraints='=f,f', args=[tmp18.to(tl.float32)], dtype=tl.float32, is_pure=True, pack=1)
    tmp20 = tl.full([1], 1.0, tl.float32)
    tmp21 = tmp19 + tmp20
    tmp22 = tmp11 * tmp21
    tmp23 = tmp22.to(tl.float32)
    tmp24 = tmp23.to(tl.float16)
    tmp25 = tmp24.to(tl.float32)
    tl.store(out_ptr0 + x2, tmp25, None)
    tl.store(capture_t + x2, tmp18.to(tl.float32), None)
