"""Opt-in configuration-only variant of the qualified FP32 PPU MLP.

The arithmetic, K/N, layout and original kernel stay unchanged. block_m is a
validated explicit launch parameter and remains in the real Triton JIT key.
"""
import torch
import triton

from .ppu_mlp import _small_mlp_gelu


@torch.library.triton_op("flagtree_scene::small_mlp_gelu_shape", mutates_args={})
def small_mlp_gelu_shape(a: torch.Tensor, weight: torch.Tensor, bias: torch.Tensor,
                         block_m: int) -> torch.Tensor:
    # BM=8 is excluded by real-PPU precision qualification, not auto-padded.
    if block_m not in (16, 32):
        raise ValueError("Unqualified block_m")
    if a.dtype != torch.float32 or weight.dtype != torch.float32 or bias.dtype != torch.float32:
        raise ValueError("small_mlp_gelu_shape requires FP32 inputs")
    if a.device.type != "cuda" or weight.device != a.device or bias.device != a.device:
        raise ValueError("small_mlp_gelu_shape requires same-device PPU tensors")
    if a.ndim != 2 or weight.ndim != 2 or bias.ndim != 1:
        raise ValueError("small_mlp_gelu_shape requires matrix inputs and vector bias")
    m, k = a.shape
    n = weight.shape[1]
    if k != 384 or weight.shape[0] != k or n != 1536 or bias.shape[0] != n or m < 1 or m > 64:
        raise ValueError("small_mlp_gelu_shape shape is outside the qualified domain")
    if a.stride(1) != 1 or weight.stride(0) != 1 or bias.stride(0) != 1:
        raise ValueError("small_mlp_gelu_shape requires qualified layout")
    output = torch.empty((m, n), device=a.device, dtype=a.dtype)
    grid = (triton.cdiv(m, block_m), triton.cdiv(n, 64))
    torch.library.wrap_triton(_small_mlp_gelu)[grid](
        a, weight, bias, output, m, n, k, *a.stride(), *weight.stride(), block_m, 64, 32,
        num_warps=4, num_stages=2)
    return output
