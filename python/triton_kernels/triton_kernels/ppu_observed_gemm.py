"""Experimental FP32 GEMM for two trace-confirmed geometries; opt-in only.

No global override, bias/activation fusion, padding or production policy.
Both BM candidates use the SAME tf32x3 arithmetic. Their performance relative
to native GEMM must be reported separately from configuration-only gains.
"""
import torch
import triton
import triton.language as tl
from .matmul_ogs_details._common import dot_with_precision


@triton.jit
def _observed_gemm(A, W, Y, M, K: tl.constexpr, N: tl.constexpr,
                   AM: tl.constexpr, WN: tl.constexpr, BM: tl.constexpr):
    rows = tl.program_id(0)*BM + tl.arange(0,BM)
    cols = tl.program_id(1)*64 + tl.arange(0,64)
    kk = tl.arange(0,32)
    acc = tl.zeros((BM,64),tl.float32)
    for block in range(tl.cdiv(K,32)):
        keys = block*32 + kk
        a = tl.load(A+rows[:,None]*AM+keys[None,:],mask=(rows[:,None]<M)&(keys[None,:]<K),other=0)
        w = tl.load(W+keys[:,None]+cols[None,:]*WN,mask=(keys[:,None]<K)&(cols[None,:]<N),other=0)
        acc = dot_with_precision(a,w,acc,None,False,"tf32x3")
    tl.store(Y+rows[:,None]*N+cols[None,:],acc,mask=(rows[:,None]<M)&(cols[None,:]<N))


@torch.library.triton_op("flagtree_shape_probe::observed_gemm", mutates_args={})
def observed_gemm(a: torch.Tensor, weight: torch.Tensor, block_m: int) -> torch.Tensor:
    if block_m not in (16,32):
        raise ValueError("Only explicit BM16/BM32 experimental candidates")
    if a.device.type != "cuda" or weight.device != a.device:
        raise ValueError("Same-device PPU tensors required")
    if a.dtype != torch.float32 or weight.dtype != torch.float32:
        raise ValueError("FP32 required")
    if a.ndim != 2 or weight.ndim != 2:
        raise ValueError("Matrix inputs required")
    m,k = a.shape
    if weight.shape[0] != k or (k,weight.shape[1]) not in ((768,2304),(1024,3072)) or not 1 <= m <= 64:
        raise ValueError("Outside observed geometry/M domain")
    if a.stride(1) != 1 or weight.stride(0) != 1:
        raise ValueError("Outside observed layout domain")
    n = weight.shape[1]
    output = torch.empty((m,n),device=a.device,dtype=a.dtype)
    torch.library.wrap_triton(_observed_gemm)[(triton.cdiv(m,block_m),triton.cdiv(n,64))](
        a,weight,output,m,k,n,a.stride(0),weight.stride(1),block_m,num_warps=4,num_stages=2)
    return output
