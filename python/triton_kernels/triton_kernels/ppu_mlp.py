"""Opt-in PPU FP32 small-MLP epilogue template; not a default matmul replacement.

Qualified development domain: K=384, N=1536, 1<=M<=64 on PPU-ZW810E.
Inputs/outputs remain FP32; multiplication explicitly uses tf32x3 decomposition.
Callers must select the PPU target and retain their original path outside this
domain. This module does not install a global ATen override or native fallback.
"""
import torch
import triton
import triton.language as tl
from triton.language.extra.cuda import libdevice

from .matmul_ogs_details._common import dot_with_precision


@triton.jit
def _small_mlp_gelu(A, W, B, Y, M, N: tl.constexpr, K: tl.constexpr,
                    AM: tl.constexpr, AK: tl.constexpr, WK: tl.constexpr, WN: tl.constexpr,
                    BM: tl.constexpr, BN: tl.constexpr, BK: tl.constexpr):
    rows = tl.program_id(0) * BM + tl.arange(0, BM)
    cols = tl.program_id(1) * BN + tl.arange(0, BN)
    keys = tl.arange(0, BK)
    acc = tl.zeros((BM, BN), tl.float32)
    for block in range(tl.cdiv(K, BK)):
        kk = block * BK + keys
        x = tl.load(A + rows[:, None] * AM + kk[None, :] * AK,
                    mask=(rows[:, None] < M) & (kk[None, :] < K), other=0)
        w = tl.load(W + kk[:, None] * WK + cols[None, :] * WN,
                    mask=(kk[:, None] < K) & (cols[None, :] < N), other=0)
        acc = dot_with_precision(x, w, acc, None, False, "tf32x3")
    value = acc + tl.load(B + cols, mask=cols < N, other=0)[None, :]
    value = 0.5 * value * (1.0 + libdevice.erf(value * 0.7071067811865476))
    tl.store(Y + rows[:, None] * N + cols[None, :], value,
             mask=(rows[:, None] < M) & (cols[None, :] < N))


@torch.library.triton_op("flagtree_scene::small_mlp_gelu", mutates_args={})
def small_mlp_gelu(a: torch.Tensor, weight: torch.Tensor, bias: torch.Tensor) -> torch.Tensor:
    if a.dtype != torch.float32 or weight.dtype != torch.float32 or bias.dtype != torch.float32:
        raise ValueError("small_mlp_gelu requires FP32 inputs")
    if a.device.type != "cuda" or weight.device != a.device or bias.device != a.device:
        raise ValueError("small_mlp_gelu requires same-device PPU tensors")
    if a.ndim != 2 or weight.ndim != 2 or bias.ndim != 1:
        raise ValueError("small_mlp_gelu requires matrix inputs and vector bias")
    m, k = a.shape
    n = weight.shape[1]
    if k != 384 or weight.shape[0] != k or n != 1536 or bias.shape[0] != n or m < 1 or m > 64:
        raise ValueError("small_mlp_gelu shape is outside the qualified domain")
    if a.stride(1) != 1 or weight.stride(0) != 1 or bias.stride(0) != 1:
        raise ValueError("small_mlp_gelu requires row-major activations and transposed linear weights")
    output = torch.empty((m, n), device=a.device, dtype=a.dtype)
    grid = (triton.cdiv(m, 16), triton.cdiv(n, 64))
    torch.library.wrap_triton(_small_mlp_gelu)[grid](
        a, weight, bias, output, m, n, k, *a.stride(), *weight.stride(), 16, 64, 32,
        num_warps=4, num_stages=2)
    return output
