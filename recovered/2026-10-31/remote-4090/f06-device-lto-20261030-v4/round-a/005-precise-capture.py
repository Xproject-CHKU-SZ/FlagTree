import triton
import triton.language as tl
from torch._inductor.runtime import triton_helpers, triton_heuristics
from torch._inductor.runtime.triton_helpers import libdevice, math as tl_math
from torch._inductor.runtime.hints import AutotuneHint, ReductionHint, TileHint, DeviceProperties

@triton.jit
def capture_tanh_argument(arg_A, arg_B, in_ptr2, out_ptr1, capture_t):
    EVEN_K: tl.constexpr = True
    USE_FAST_ACCUM: tl.constexpr = False
    ACC_TYPE: tl.constexpr = tl.float32
    BLOCK_M: tl.constexpr = 32
    BLOCK_N: tl.constexpr = 32
    BLOCK_K: tl.constexpr = 64
    GROUP_M: tl.constexpr = 8
    ALLOW_TF32: tl.constexpr = False
    INDEX_DTYPE: tl.constexpr = tl.int32
    A = arg_A
    B = arg_B
    M = 64
    N = 1024
    K = 64
    if M * N == 0:
        return
    stride_am = 64
    stride_ak = 1
    stride_bk = 1024
    stride_bn = 1
    pid = tl.program_id(0).to(INDEX_DTYPE)
    grid_m = (M + BLOCK_M - 1) // BLOCK_M
    grid_n = (N + BLOCK_N - 1) // BLOCK_N
    width = GROUP_M * grid_n
    group_id = pid // width
    group_size = min(grid_m - group_id * GROUP_M, GROUP_M)
    pid_m = group_id * GROUP_M + pid % group_size
    pid_n = pid % width // group_size
    tl.assume(pid_m >= 0)
    tl.assume(pid_n >= 0)
    rm = pid_m * BLOCK_M + tl.arange(0, BLOCK_M)
    rn = pid_n * BLOCK_N + tl.arange(0, BLOCK_N)
    if (stride_am == 1 and stride_ak == M or (stride_am == K and stride_ak == 1)) and (M >= BLOCK_M and K > 1):
        offs_a_m = tl.max_contiguous(tl.multiple_of(rm % M, BLOCK_M), BLOCK_M)
    else:
        offs_a_m = rm % M
    if (stride_bk == 1 and stride_bn == K or (stride_bk == N and stride_bn == 1)) and (N >= BLOCK_N and K > 1):
        offs_b_n = tl.max_contiguous(tl.multiple_of(rn % N, BLOCK_N), BLOCK_N)
    else:
        offs_b_n = rn % N
    offs_k = tl.arange(0, BLOCK_K)
    acc = tl.zeros((BLOCK_M, BLOCK_N), dtype=ACC_TYPE)
    for k_idx in range(0, tl.cdiv(K, BLOCK_K)):
        a_k_idx_vals = offs_k[None, :] + k_idx * BLOCK_K
        b_k_idx_vals = offs_k[:, None] + k_idx * BLOCK_K
        idx_m = offs_a_m[:, None]
        idx_n = a_k_idx_vals
        xindex = idx_n + 64 * idx_m
        a = tl.load(A + xindex)
        idx_m = b_k_idx_vals
        idx_n = offs_b_n[None, :]
        xindex = idx_n + 1024 * idx_m
        b = tl.load(B + xindex)
        acc += tl.dot(a, b, allow_tf32=ALLOW_TF32, out_dtype=ACC_TYPE)
    rm = pid_m * BLOCK_M + tl.arange(0, BLOCK_M)
    rn = pid_n * BLOCK_N + tl.arange(0, BLOCK_N)
    idx_m = rm[:, None]
    idx_n = rn[None, :]
    mask = (idx_m < M) & (idx_n < N)
    xindex = idx_n + 1024 * idx_m
    tmp2 = tl.load(in_ptr2 + tl.broadcast_to(idx_n, [BLOCK_M, BLOCK_N]), mask, eviction_policy='evict_last').to(tl.float32)
    tmp0 = acc.to(tl.float16)
    tmp1 = tmp0.to(tl.float32)
    tmp3 = tmp2.to(tl.float16)
    tmp4 = tmp3.to(tl.float32)
    tmp5 = tmp1 + tmp4
    tmp6 = tmp5.to(tl.float16)
    tmp7 = tmp6.to(tl.float32)
    tmp8 = tmp7.to(tl.float32)
    tmp9 = tl.full([1], 0.5, tl.float32)
    tmp10 = tmp8 * tmp9
    tmp11 = tmp8 * tmp8
    tmp12 = tmp11 * tmp8
    tmp13 = tl.full([1], 0.044715, tl.float32)
    tmp14 = tmp12 * tmp13
    tmp15 = tmp8 + tmp14
    tmp16 = tl.full([1], 0.7978845608028654, tl.float32)
    tmp17 = tmp15 * tmp16
    tmp18 = tl.inline_asm_elementwise('{ .reg .f32 a, z, p, small, e, d, r, large; .reg .b32 sign, bits; .reg .pred use_small, saturated; abs.ftz.f32 a, $1; setp.ltu.f32 use_small, a, 0f3F19999A; mul.f32 z, $1, $1; fma.rn.ftz.f32 p, 0f3C80F082, z, 0fBD563CAE; fma.rn.ftz.f32 p, p, z, 0f3E085941; fma.rn.ftz.f32 p, p, z, 0fBEAAA9ED; fma.rn.ftz.f32 p, p, z, 0f00000000; fma.rn.ftz.f32 small, p, $1, $1; mul.f32 e, a, 0f4038AA3B; ex2.approx.ftz.f32 e, e; add.f32 d, e, 0f3F800000; rcp.approx.ftz.f32 r, d; fma.rn.ftz.f32 large, r, 0fC0000000, 0f3F800000; setp.ge.f32 saturated, a, 0f41102CB4; selp.f32 large, 0f3F800000, large, saturated; mov.b32 sign, $1; and.b32 sign, sign, 0x80000000; mov.b32 bits, large; or.b32 bits, bits, sign; mov.b32 large, bits; selp.f32 $0, small, large, use_small; }', constraints='=f,f', args=[tmp17.to(tl.float32)], dtype=tl.float32, is_pure=True, pack=1)
    tmp19 = tl.full([1], 1.0, tl.float32)
    tmp20 = tmp18 + tmp19
    tmp21 = tmp10 * tmp20
    tmp22 = tmp21.to(tl.float32)
    tmp23 = tmp22.to(tl.float16)
    tmp24 = tmp23.to(tl.float32)
    tl.store(out_ptr1 + tl.broadcast_to(idx_n + 1024 * idx_m, [BLOCK_M, BLOCK_N]), tmp24, mask)
    tl.store(capture_t + tl.broadcast_to(idx_n + 1024 * idx_m, [BLOCK_M, BLOCK_N]), tmp17.to(tl.float32), mask)
