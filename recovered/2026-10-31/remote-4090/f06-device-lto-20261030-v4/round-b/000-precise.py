from ctypes import c_void_p, c_long, c_int
import torch
import math
import random
import os
import tempfile
from math import inf, nan
from cmath import nanj
from torch._inductor.hooks import run_intermediate_hooks
from torch._inductor.utils import maybe_profile
from torch._inductor.codegen.memory_planning import _align as align
from torch import device, empty_strided
from torch._inductor.async_compile import AsyncCompile
from torch._inductor.select_algorithm import extern_kernels
from torch._C import _cuda_getCurrentRawStream as get_raw_stream
import triton
import triton.language as tl
from torch._inductor.runtime.triton_heuristics import start_graph, end_graph
from torch._C import _cuda_getCurrentRawStream as get_raw_stream

aten = torch.ops.aten
inductor_ops = torch.ops.inductor
_quantized = torch.ops._quantized
assert_size_stride = torch._C._dynamo.guards.assert_size_stride
assert_alignment = torch._C._dynamo.guards.assert_alignment
empty_strided_cpu = torch._C._dynamo.guards._empty_strided_cpu
empty_strided_cpu_pinned = torch._C._dynamo.guards._empty_strided_cpu_pinned
empty_strided_cuda = torch._C._dynamo.guards._empty_strided_cuda
empty_strided_xpu = torch._C._dynamo.guards._empty_strided_xpu
empty_strided_mtia = torch._C._dynamo.guards._empty_strided_mtia
reinterpret_tensor = torch._C._dynamo.guards._reinterpret_tensor
alloc_from_pool = torch.ops.inductor._alloc_from_pool
async_compile = AsyncCompile()
empty_strided_p2p = torch._C._distributed_c10d._SymmetricMemory.empty_strided_p2p


# kernel path: /tmp/f06-device-lto-20261030-v4/cache/inductor/2h/c2hm7zksrlwe3fnxo4oehhsxzznq77i6g4hljzxplc6yn34db2yp.py
# Topologically Sorted Source Nodes: [], Original ATen: []
# Source node to ATen node mapping:
# Graph fragment:
#   %arg0_1 : Tensor "f32[16, 64][64, 1]cuda:0" = PlaceHolder[target=arg0_1]
#   %arg1_1 : Tensor "f32[64, 128][128, 1]cuda:0" = PlaceHolder[target=arg1_1]
#   %mm : Tensor "f32[16, 128][128, 1]cuda:0" = PlaceHolder[target=mm]
#   %arg2_1 : Tensor "f32[128][1]cuda:0" = PlaceHolder[target=arg2_1]
#   %mm : Tensor "f32[16, 128][128, 1]cuda:0"[num_users=1] = call_function[target=torch.ops.aten.mm.default](args = (%arg0_1, %arg1_1), kwargs = {})
#   %add : Tensor "f32[16, 128][128, 1]cuda:0"[num_users=4] = call_function[target=torch.ops.aten.add.Tensor](args = (%mm, %arg2_1), kwargs = {})
#   %mul_4 : Tensor "f32[16, 128][128, 1]cuda:0"[num_users=1] = call_function[target=torch.ops.aten.mul.Tensor](args = (%add, 0.5), kwargs = {})
#   %mul : Tensor "f32[16, 128][128, 1]cuda:0"[num_users=1] = call_function[target=torch.ops.aten.mul.Tensor](args = (%add, %add), kwargs = {})
#   %mul_1 : Tensor "f32[16, 128][128, 1]cuda:0"[num_users=1] = call_function[target=torch.ops.aten.mul.Tensor](args = (%mul, %add), kwargs = {})
#   %mul_2 : Tensor "f32[16, 128][128, 1]cuda:0"[num_users=1] = call_function[target=torch.ops.aten.mul.Tensor](args = (%mul_1, 0.044715), kwargs = {})
#   %add_1 : Tensor "f32[16, 128][128, 1]cuda:0"[num_users=1] = call_function[target=torch.ops.aten.add.Tensor](args = (%add, %mul_2), kwargs = {})
#   %mul_3 : Tensor "f32[16, 128][128, 1]cuda:0"[num_users=1] = call_function[target=torch.ops.aten.mul.Tensor](args = (%add_1, 0.7978845608028654), kwargs = {})
#   %tanh : Tensor "f32[16, 128][128, 1]cuda:0"[num_users=1] = call_function[target=torch.ops.aten.tanh.default](args = (%mul_3,), kwargs = {})
#   %add_2 : Tensor "f32[16, 128][128, 1]cuda:0"[num_users=1] = call_function[target=torch.ops.aten.add.Tensor](args = (%tanh, 1), kwargs = {})
#   %mul_5 : Tensor "f32[16, 128][128, 1]cuda:0"[num_users=1] = call_function[target=torch.ops.aten.mul.Tensor](args = (%mul_4, %add_2), kwargs = {})
#   return %mm,%mul_5
triton_tem_fused_0 = async_compile.triton('triton_tem_fused_0', '''
import triton
import triton.language as tl

from torch._inductor.runtime import triton_helpers, triton_heuristics
from torch._inductor.runtime.triton_helpers import libdevice, math as tl_math
from torch._inductor.runtime.hints import AutotuneHint, ReductionHint, TileHint, DeviceProperties

@triton_heuristics.template(

num_stages=2,
num_warps=2,
triton_meta={'signature': {'arg_A': '*fp32', 'arg_B': '*fp32', 'in_ptr2': '*fp32', 'out_ptr1': '*fp32'}, 'device': DeviceProperties(type='cuda', index=0, multi_processor_count=128, cc=89, major=8, regs_per_multiprocessor=65536, max_threads_per_multi_processor=1536, max_threads_per_block=1024, warp_size=32), 'constants': {}, 'configs': [{(0,): [['tt.divisibility', 16]], (1,): [['tt.divisibility', 16]], (2,): [['tt.divisibility', 16]], (3,): [['tt.divisibility', 16]]}]},
inductor_meta={'kernel_name': 'triton_tem_fused_0', 'backend_hash': 'C198525FBBC2EF1226C6B1BF2C4E1516014B9E465CB53F78CB2FA9689692B1C6', 'assert_indirect_indexing': True, 'autotune_local_cache': True, 'autotune_pointwise': True, 'autotune_remote_cache': None, 'force_disable_caches': False, 'dynamic_scale_rblock': True, 'max_autotune': True, 'max_autotune_pointwise': False, 'min_split_scan_rblock': 256, 'spill_threshold': 16, 'store_cubin': False, 'deterministic': False, 'force_filter_reduction_configs': False, 'mix_order_reduction_allow_multi_stages': False, 'are_deterministic_algorithms_enabled': False, 'grid_type': 'FixedGrid', 'fixed_grid': ['_grid_0', '_grid_1', '_grid_2'], 'extra_launcher_args': ['_grid_0', '_grid_1', '_grid_2'], 'config_args': {'EVEN_K': True, 'USE_FAST_ACCUM': False, 'ACC_TYPE': 'tl.float32', 'BLOCK_M': 16, 'BLOCK_N': 32, 'BLOCK_K': 64, 'GROUP_M': 8, 'ALLOW_TF32': False}},

)
@triton.jit
def triton_tem_fused_0(arg_A, arg_B, in_ptr2, out_ptr1):
    EVEN_K : tl.constexpr = True
    USE_FAST_ACCUM : tl.constexpr = False
    ACC_TYPE : tl.constexpr = tl.float32
    BLOCK_M : tl.constexpr = 16
    BLOCK_N : tl.constexpr = 32
    BLOCK_K : tl.constexpr = 64
    GROUP_M : tl.constexpr = 8
    ALLOW_TF32 : tl.constexpr = False
    INDEX_DTYPE : tl.constexpr = tl.int32
    A = arg_A
    B = arg_B

    M = 16
    N = 128
    K = 64
    if M * N == 0:
        # early exit due to zero-size input(s)
        return
    stride_am = 64
    stride_ak = 1
    stride_bk = 128
    stride_bn = 1

    # based on triton.ops.matmul
    pid = tl.program_id(0).to(INDEX_DTYPE)
    grid_m = (M + BLOCK_M - 1) // BLOCK_M
    grid_n = (N + BLOCK_N - 1) // BLOCK_N

    # re-order program ID for better L2 performance
    width = GROUP_M * grid_n
    group_id = pid // width
    group_size = min(grid_m - group_id * GROUP_M, GROUP_M)
    pid_m = group_id * GROUP_M + (pid % group_size)
    pid_n = (pid % width) // (group_size)
    tl.assume(pid_m >= 0)
    tl.assume(pid_n >= 0)

    rm = pid_m * BLOCK_M + tl.arange(0, BLOCK_M)
    rn = pid_n * BLOCK_N + tl.arange(0, BLOCK_N)
    if ((stride_am == 1 and stride_ak == M) or (stride_am == K and stride_ak == 1)) and (M >= BLOCK_M and K > 1):
        offs_a_m = tl.max_contiguous(tl.multiple_of(rm % M, BLOCK_M), BLOCK_M)
    else:
        offs_a_m = rm % M
    if ((stride_bk == 1 and stride_bn == K) or (stride_bk == N and stride_bn == 1)) and (N >= BLOCK_N and K > 1):
        offs_b_n = tl.max_contiguous(tl.multiple_of(rn % N, BLOCK_N), BLOCK_N)
    else:
        offs_b_n = rn % N
    offs_k = tl.arange(0, BLOCK_K)
    acc = tl.zeros((BLOCK_M, BLOCK_N), dtype=ACC_TYPE)

    for k_idx in range(0, tl.cdiv(K, BLOCK_K)):

        a_k_idx_vals = offs_k[None, :] + (k_idx * BLOCK_K)
        b_k_idx_vals = offs_k[:, None] + (k_idx * BLOCK_K)

        idx_m = offs_a_m[:, None]
        idx_n = a_k_idx_vals
        xindex = idx_n + 64*idx_m
        a = tl.load(A + (xindex))

        idx_m = b_k_idx_vals
        idx_n = offs_b_n[None, :]
        xindex = idx_n + 128*idx_m
        b = tl.load(B + (xindex))


        acc += tl.dot(a, b, allow_tf32=ALLOW_TF32, out_dtype=ACC_TYPE)


    # rematerialize rm and rn to save registers
    rm = pid_m * BLOCK_M + tl.arange(0, BLOCK_M)
    rn = pid_n * BLOCK_N + tl.arange(0, BLOCK_N)
    idx_m = rm[:, None]
    idx_n = rn[None, :]
    mask = (idx_m < M) & (idx_n < N)

    # inductor generates a suffix
    xindex = idx_n + 128*idx_m
    tmp0 = tl.load(in_ptr2 + (tl.broadcast_to(idx_n, [BLOCK_M, BLOCK_N])), mask, eviction_policy='evict_last')
    tmp1 = acc + tmp0
    tmp2 = tl.full([1], 0.5, tl.float32)
    tmp3 = tmp1 * tmp2
    tmp4 = tmp1 * tmp1
    tmp5 = tmp4 * tmp1
    tmp6 = tl.full([1], 0.044715, tl.float32)
    tmp7 = tmp5 * tmp6
    tmp8 = tmp1 + tmp7
    tmp9 = tl.full([1], 0.7978845608028654, tl.float32)
    tmp10 = tmp8 * tmp9
    tmp11 = tl.inline_asm_elementwise('{ .reg .f32 a, z, p, small, e, d, r, large; .reg .b32 sign, bits; .reg .pred use_small, saturated; abs.ftz.f32 a, $1; setp.ltu.f32 use_small, a, 0f3F19999A; mul.f32 z, $1, $1; fma.rn.ftz.f32 p, 0f3C80F082, z, 0fBD563CAE; fma.rn.ftz.f32 p, p, z, 0f3E085941; fma.rn.ftz.f32 p, p, z, 0fBEAAA9ED; fma.rn.ftz.f32 p, p, z, 0f00000000; fma.rn.ftz.f32 small, p, $1, $1; mul.f32 e, a, 0f4038AA3B; ex2.approx.ftz.f32 e, e; add.f32 d, e, 0f3F800000; rcp.approx.ftz.f32 r, d; fma.rn.ftz.f32 large, r, 0fC0000000, 0f3F800000; setp.ge.f32 saturated, a, 0f41102CB4; selp.f32 large, 0f3F800000, large, saturated; mov.b32 sign, $1; and.b32 sign, sign, 0x80000000; mov.b32 bits, large; or.b32 bits, bits, sign; mov.b32 large, bits; selp.f32 $0, small, large, use_small; }', constraints='=f,f', args=[(tmp10).to(tl.float32)], dtype=tl.float32, is_pure=True, pack=1)
    tmp12 = tl.full([1], 1.0, tl.float32)
    tmp13 = tmp11 + tmp12
    tmp14 = tmp3 * tmp13
    tl.store(out_ptr1 + (tl.broadcast_to(idx_n + 128*idx_m, [BLOCK_M, BLOCK_N])), tmp14, mask)
''', device_str='cuda')


async_compile.wait(globals())
del async_compile

class Runner:
    def __init__(self, partitions):
        self.partitions = partitions

    def recursively_apply_fns(self, fns):
        new_callables = []
        for fn, c in zip(fns, self.partitions):
            new_callables.append(fn(c))
        self.partitions = new_callables

    def call(self, args):
        arg0_1, arg1_1, arg2_1 = args
        args.clear()
        with torch.cuda._DeviceGuard(0):
            torch.cuda.set_device(0)
            buf1 = empty_strided_cuda((16, 128), (128, 1), torch.float32)
            # Topologically Sorted Source Nodes: [], Original ATen: []
            stream0 = get_raw_stream(0)
            triton_tem_fused_0.run(arg0_1, arg1_1, arg2_1, buf1, 4, 1, 1, stream=stream0)
            del arg0_1
            del arg1_1
            del arg2_1
        return (buf1, )

runner = Runner(partitions=[])
call = runner.call
recursively_apply_fns = runner.recursively_apply_fns


def get_args():
    from torch._dynamo.testing import rand_strided
    arg0_1 = rand_strided((16, 64), (64, 1), device='cuda:0', dtype=torch.float32)
    arg1_1 = rand_strided((64, 128), (128, 1), device='cuda:0', dtype=torch.float32)
    arg2_1 = rand_strided((128, ), (1, ), device='cuda:0', dtype=torch.float32)
    return [arg0_1, arg1_1, arg2_1]


def benchmark_compiled_module(args, times=10, repeat=10):
    from torch._inductor.utils import print_performance
    fn = lambda: call(list(args))
    return print_performance(fn, times=times, repeat=repeat)


if __name__ == "__main__":
    from torch._inductor.wrapper_benchmark import compiled_module_main
    args = get_args()
    compiled_module_main('None', lambda times, repeat: benchmark_compiled_module(args, times=times, repeat=repeat))
