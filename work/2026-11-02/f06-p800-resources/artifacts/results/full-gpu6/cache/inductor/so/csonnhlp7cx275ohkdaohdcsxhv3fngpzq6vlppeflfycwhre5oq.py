
from triton.experimental.graph_fusion._resource_codegen import ResourceHeuristics
_flagtree_resource_heuristics = ResourceHeuristics('sdnn')
# P800 compiler policy: 0cae4db22355a3ee

import triton
import triton.language as tl

from torch._inductor.runtime import triton_helpers, triton_heuristics
from torch._inductor.runtime.triton_helpers import libdevice, math as tl_math
from torch._inductor.runtime.hints import AutotuneHint, ReductionHint, TileHint, DeviceProperties
triton_helpers.set_driver_to_gpu()

@_flagtree_resource_heuristics.reduction(
    size_hints={'x': 2048, 'r0_': 2048},
    reduction_hint=ReductionHint.INNER,
    filename=__file__,
    triton_meta={'signature': {'in_ptr0': '*fp16', 'in_ptr1': '*fp16', 'out_ptr2': '*fp16', 'xnumel': 'i32', 'r0_numel': 'i32', 'XBLOCK': 'constexpr', 'R0_BLOCK': 'constexpr'}, 'device': DeviceProperties(type='cuda', index=0, multi_processor_count=8, cc=86, major=8, regs_per_multiprocessor=65536, max_threads_per_multi_processor=2048, warp_size=32), 'constants': {}, 'configs': [{(0,): [['tt.divisibility', 16]], (1,): [['tt.divisibility', 16]], (2,): [['tt.divisibility', 16]], (3,): [['tt.divisibility', 16]], (4,): [['tt.divisibility', 16]]}]},
    inductor_meta={'grid_type': 'Grid1D', 'autotune_hints': set(), 'kernel_name': 'triton_unk_fused_0', 'mutated_arg_names': [], 'optimize_mem': True, 'no_x_dim': False, 'num_load': 6, 'num_reduction': 2, 'backend_hash': 'BBC4B36C454CB29EFBE8ADB7A4FF48C122ADBC51440DF141A64CF5638D6E5425', 'are_deterministic_algorithms_enabled': False, 'assert_indirect_indexing': True, 'autotune_local_cache': True, 'autotune_pointwise': True, 'autotune_remote_cache': None, 'force_disable_caches': False, 'dynamic_scale_rblock': True, 'max_autotune': False, 'max_autotune_pointwise': False, 'min_split_scan_rblock': 256, 'spill_threshold': 16, 'store_cubin': False, 'tiling_scores': {'x': 0, 'r0_': 25169920}}
)
@triton.jit
def triton_unk_fused_0(in_ptr0, in_ptr1, out_ptr2, xnumel, r0_numel, XBLOCK : tl.constexpr, R0_BLOCK : tl.constexpr):
    xnumel = 2048
    r0_numel = 2048
    rnumel = r0_numel
    RBLOCK: tl.constexpr = R0_BLOCK
    xoffset = tl.program_id(0) * XBLOCK
    xindex = xoffset + tl.arange(0, XBLOCK)[:, None]
    xmask = xindex < xnumel
    r0_base = tl.arange(0, R0_BLOCK)[None, :]
    rbase = r0_base
    x0 = xindex
    _tmp11 = tl.full([XBLOCK, R0_BLOCK], float("-inf"), tl.float32)
    for r0_offset in range(0, r0_numel, R0_BLOCK):
        r0_index = r0_offset + r0_base
        r0_mask = r0_index < r0_numel
        roffset = r0_offset
        rindex = r0_index
        r0_1 = r0_index
        tmp0 = tl.load(in_ptr0 + (r0_1 + 2048*x0), r0_mask & xmask, eviction_policy='evict_last', other=0.0).to(tl.float32)
        tmp3 = tl.load(in_ptr1 + (r0_1), r0_mask, eviction_policy='evict_last', other=0.0).to(tl.float32)
        tmp1 = tmp0.to(tl.float16)
        tmp2 = tmp1.to(tl.float32)
        tmp4 = tmp3.to(tl.float16)
        tmp5 = tmp4.to(tl.float32)
        tmp6 = tmp2 + tmp5
        tmp7 = tmp6.to(tl.float16)
        tmp8 = tmp7.to(tl.float32)
        tmp9 = tmp8.to(tl.float32)
        tmp10 = tl.broadcast_to(tmp9, [XBLOCK, R0_BLOCK])
        tmp12 = triton_helpers.maximum(_tmp11, tmp10)
        _tmp11 = tl.where(r0_mask & xmask, tmp12, _tmp11)
    tmp11 = triton_helpers.max2(_tmp11, 1)[:, None]
    _tmp26 = tl.full([XBLOCK, R0_BLOCK], 0, tl.float32)
    for r0_offset in range(0, r0_numel, R0_BLOCK):
        r0_index = r0_offset + r0_base
        r0_mask = r0_index < r0_numel
        roffset = r0_offset
        rindex = r0_index
        r0_1 = r0_index
        tmp13 = tl.load(in_ptr0 + (r0_1 + 2048*x0), r0_mask & xmask, eviction_policy='evict_last', other=0.0).to(tl.float32)
        tmp16 = tl.load(in_ptr1 + (r0_1), r0_mask, eviction_policy='evict_last', other=0.0).to(tl.float32)
        tmp14 = tmp13.to(tl.float16)
        tmp15 = tmp14.to(tl.float32)
        tmp17 = tmp16.to(tl.float16)
        tmp18 = tmp17.to(tl.float32)
        tmp19 = tmp15 + tmp18
        tmp20 = tmp19.to(tl.float16)
        tmp21 = tmp20.to(tl.float32)
        tmp22 = tmp21.to(tl.float32)
        tmp23 = tmp22 - tmp11
        tmp24 = libdevice.exp(tmp23)
        tmp25 = tl.broadcast_to(tmp24, [XBLOCK, R0_BLOCK])
        tmp27 = _tmp26 + tmp25
        _tmp26 = tl.where(r0_mask & xmask, tmp27, _tmp26)
    tmp26 = tl.sum(_tmp26, 1)[:, None]
    for r0_offset in range(0, r0_numel, R0_BLOCK):
        r0_index = r0_offset + r0_base
        r0_mask = r0_index < r0_numel
        roffset = r0_offset
        rindex = r0_index
        r0_1 = r0_index
        tmp28 = tl.load(in_ptr0 + (r0_1 + 2048*x0), r0_mask & xmask, eviction_policy='evict_first', other=0.0).to(tl.float32)
        tmp31 = tl.load(in_ptr1 + (r0_1), r0_mask, eviction_policy='evict_last', other=0.0).to(tl.float32)
        tmp29 = tmp28.to(tl.float16)
        tmp30 = tmp29.to(tl.float32)
        tmp32 = tmp31.to(tl.float16)
        tmp33 = tmp32.to(tl.float32)
        tmp34 = tmp30 + tmp33
        tmp35 = tmp34.to(tl.float16)
        tmp36 = tmp35.to(tl.float32)
        tmp37 = tmp36.to(tl.float32)
        tmp38 = tmp37 - tmp11
        tmp39 = libdevice.exp(tmp38)
        tmp40 = (tmp39 / tmp26)
        tmp41 = tmp40.to(tl.float32)
        tl.store(out_ptr2 + (r0_1 + 2048*x0), tmp41, r0_mask & xmask)
