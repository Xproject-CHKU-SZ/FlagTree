# AOT ID: ['0_inference']
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


# kernel path: /tmp/b2-product-inductor/a4/ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py
# Topologically Sorted Source Nodes: [z, softmax], Original ATen: [aten.add, aten._softmax]
# Source node to ATen node mapping:
#   softmax => amax, div, exp, reciprocal_default, sub, sum_1
#   z => add
# Graph fragment:
#   %arg0_1 : Tensor "f32[2048, 2048][2048, 1]cuda:0" = PlaceHolder[target=arg0_1]
#   %arg1_1 : Tensor "f32[2048][1]cuda:0" = PlaceHolder[target=arg1_1]
#   %amax : Tensor "f32[2048, 1][1, 2048]cuda:0" = PlaceHolder[target=amax]
#   %sum_1 : Tensor "f32[2048, 1][1, 2048]cuda:0" = PlaceHolder[target=sum_1]
#   %add : Tensor "f32[2048, 2048][2048, 1]cuda:0"[num_users=2] = call_function[target=torch.ops.aten.add.Tensor](args = (%arg0_1, %arg1_1), kwargs = {})
#   %amax : Tensor "f32[2048, 1][1, 1]cuda:0"[num_users=1] = call_function[target=torch.ops.aten.amax.default](args = (%add, [-1], True), kwargs = {})
#   %sub : Tensor "f32[2048, 2048][2048, 1]cuda:0"[num_users=1] = call_function[target=torch.ops.aten.sub.Tensor](args = (%add, %amax), kwargs = {})
#   %exp : Tensor "f32[2048, 2048][2048, 1]cuda:0"[num_users=2] = call_function[target=torch.ops.aten.exp.default](args = (%sub,), kwargs = {})
#   %sum_1 : Tensor "f32[2048, 1][1, 1]cuda:0"[num_users=1] = call_function[target=torch.ops.aten.sum.dim_IntList](args = (%exp, [-1], True), kwargs = {})
#   %reciprocal_default : Tensor "f32[2048, 1][1, 1]cuda:0"[num_users=1] = call_function[target=torch.ops.aten.reciprocal.default](args = (%sum_1,), kwargs = {})
#   %div : Tensor "f32[2048, 2048][2048, 1]cuda:0"[num_users=1] = call_function[target=torch.ops.aten.mul.Tensor](args = (%exp, %reciprocal_default), kwargs = {})
#   return %amax,%sum_1,%div
triton_unk_fused__softmax_add_0 = async_compile.triton('triton_unk_fused__softmax_add_0', '''
import triton
import triton.language as tl

from torch._inductor.runtime import triton_helpers, triton_heuristics
from torch._inductor.runtime.triton_helpers import libdevice, math as tl_math
from torch._inductor.runtime.hints import AutotuneHint, ReductionHint, TileHint, DeviceProperties
triton_helpers.set_driver_to_gpu()

@triton.jit
def _kl3_softmax_shift0(a, b):
    return tl.where(a > b, a, b)

@triton_heuristics.fixed_config(
    config={'XBLOCK': 8, 'num_warps': 4, 'num_stages': 1},
    filename=__file__,
    triton_meta={'signature': {'in_ptr0': '*fp32', 'in_ptr1': '*fp32', 'out_ptr2': '*fp32', 'xnumel': 'i32', 'r0_numel': 'i32', 'XBLOCK': 'constexpr'}, 'device': DeviceProperties(type='cuda', index=0, multi_processor_count=8, cc=86, major=8, regs_per_multiprocessor=65536, max_threads_per_multi_processor=2048, warp_size=32), 'constants': {}, 'configs': [{(0,): [['tt.divisibility', 16]], (1,): [['tt.divisibility', 16]], (2,): [['tt.divisibility', 16]], (3,): [['tt.divisibility', 16]], (4,): [['tt.divisibility', 16]]}]},
    inductor_meta={'grid_type': 'Grid1D', 'autotune_hints': set(), 'kernel_name': 'triton_unk_fused__softmax_add_0', 'mutated_arg_names': [], 'optimize_mem': True, 'no_x_dim': False, 'num_load': 2, 'num_reduction': 2, 'backend_hash': '93F8B32943DFC6451E53143D7B8A62C7805D1695A55A8A70D20578F92261C7B1', 'are_deterministic_algorithms_enabled': False, 'assert_indirect_indexing': True, 'autotune_local_cache': True, 'autotune_pointwise': True, 'autotune_remote_cache': None, 'force_disable_caches': False, 'dynamic_scale_rblock': True, 'max_autotune': True, 'max_autotune_pointwise': False, 'min_split_scan_rblock': 256, 'spill_threshold': 16, 'store_cubin': False, 'tiling_scores': {'x': 0, 'r0_': 50339840}}
)
@triton.jit
def triton_unk_fused__softmax_add_0(in_ptr0, in_ptr1, out_ptr2, xnumel, r0_numel, XBLOCK : tl.constexpr):
    xnumel = 2048
    r0_numel = 2048
    R0_BLOCK: tl.constexpr = 2048
    rnumel = r0_numel
    RBLOCK: tl.constexpr = R0_BLOCK
    xoffset = tl.program_id(0) * XBLOCK
    xindex = xoffset + tl.arange(0, XBLOCK)[:, None]
    xmask = tl.full([XBLOCK, R0_BLOCK], True, tl.int1)
    r0_index = tl.arange(0, R0_BLOCK)[None, :]
    r0_offset = 0
    r0_mask = tl.full([XBLOCK, R0_BLOCK], True, tl.int1)
    roffset = r0_offset
    rindex = r0_index
    r0_1 = r0_index
    x0 = xindex
    tmp0 = tl.load(in_ptr0 + (r0_1 + 2048*x0), None)
    tmp1 = tl.load(in_ptr1 + (r0_1), None, eviction_policy='evict_last')
    tmp2 = tmp0 + tmp1
    tmp3 = tl.broadcast_to(tmp2, [XBLOCK, R0_BLOCK])
    tmp5 = tl.reduce(tmp3, 1, _kl3_softmax_shift0)[:, None].to(tl.float32)
    tmp6 = tmp2 - tmp5
    tmp7 = libdevice.exp(tmp6)
    tmp8 = tl.broadcast_to(tmp7, [XBLOCK, R0_BLOCK])
    tmp10 = tl.sum(tmp8, 1)[:, None].to(tl.float32)
    tmp11 = tl.full([1, 1], 1, tl.int32)
    tmp12 = (tmp11 / tmp10)
    tmp13 = tmp7 * tmp12
    tl.store(out_ptr2 + (r0_1 + 2048*x0), tmp13, None)
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
        arg0_1, arg1_1 = args
        args.clear()
        assert_size_stride(arg0_1, (2048, 2048), (2048, 1))
        assert_size_stride(arg1_1, (2048, ), (1, ))
        with torch.cuda._DeviceGuard(0):
            torch.cuda.set_device(0)
            buf2 = empty_strided_cuda((2048, 2048), (2048, 1), torch.float32)
            # Topologically Sorted Source Nodes: [z, softmax], Original ATen: [aten.add, aten._softmax]
            stream0 = get_raw_stream(0)
            triton_unk_fused__softmax_add_0.run(arg0_1, arg1_1, buf2, 2048, 2048, stream=stream0)
            del arg0_1
            del arg1_1
        return (buf2, )

runner = Runner(partitions=[])
call = runner.call
recursively_apply_fns = runner.recursively_apply_fns


def benchmark_compiled_module(times=10, repeat=10):
    from torch._dynamo.testing import rand_strided
    from torch._inductor.utils import print_performance
    arg0_1 = rand_strided((2048, 2048), (2048, 1), device='cuda:0', dtype=torch.float32)
    arg1_1 = rand_strided((2048, ), (1, ), device='cuda:0', dtype=torch.float32)
    fn = lambda: call([arg0_1, arg1_1])
    return print_performance(fn, times=times, repeat=repeat)


if __name__ == "__main__":
    from torch._inductor.wrapper_benchmark import compiled_module_main
    compiled_module_main('None', benchmark_compiled_module)
