import triton
import triton.language as tl
from torch._inductor.runtime import triton_helpers, triton_heuristics
from torch._inductor.runtime.triton_helpers import libdevice, math as tl_math
from torch._inductor.runtime.hints import AutotuneHint, ReductionHint, TileHint, DeviceProperties

@triton.jit
def f06_screen_tanh(in_ptr0, in_ptr1, out_ptr0, xnumel, XBLOCK: tl.constexpr):
    xnumel = 1048576
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
    _screen_a = tl.abs(tmp18)
    _screen_s = tl.where(True, (_screen_a < 0.6).to(tl.int32), 1)
    _screen_l = tl.where(True, ((_screen_a >= 0.6) & (_screen_a < float('inf'))).to(tl.int32), 1)
    _screen_s = tl.min(_screen_s, 0)
    _screen_l = tl.min(_screen_l, 0)
    tl.store(out_ptr0 + tl.program_id(0), _screen_s + 2 * _screen_l)
