import triton
import triton.language as tl
from torch._inductor.runtime import triton_helpers, triton_heuristics
from torch._inductor.runtime.triton_helpers import libdevice, math as tl_math
from torch._inductor.runtime.hints import AutotuneHint, ReductionHint, TileHint, DeviceProperties

@triton.jit
def f06_screen_tanh(in_ptr0, in_ptr1, out_ptr0, xnumel, XBLOCK: tl.constexpr):
    xnumel = 65536
    xoffset = tl.program_id(0) * XBLOCK
    xindex = xoffset + tl.arange(0, XBLOCK)[:]
    xmask = tl.full([XBLOCK], True, tl.int1)[:]
    x2 = xindex
    x0 = xindex % 1024
    tmp0 = tl.load(in_ptr0 + x2, None)
    tmp1 = tl.load(in_ptr1 + x0, None, eviction_policy='evict_last')
    tmp2 = tmp0 + tmp1
    tmp3 = tl.full([1], 0.5, tl.float32)
    tmp4 = tmp2 * tmp3
    tmp5 = tmp2 * tmp2
    tmp6 = tmp5 * tmp2
    tmp7 = tl.full([1], 0.044715, tl.float32)
    tmp8 = tmp6 * tmp7
    tmp9 = tmp2 + tmp8
    tmp10 = tl.full([1], 0.7978845608028654, tl.float32)
    tmp11 = tmp9 * tmp10
    _screen_a = tl.abs(tmp11)
    _screen_s = tl.where(True, (_screen_a < 0.6).to(tl.int32), 1)
    _screen_l = tl.where(True, ((_screen_a >= 0.6) & (_screen_a < float('inf'))).to(tl.int32), 1)
    _screen_s = tl.min(_screen_s, 0)
    _screen_l = tl.min(_screen_l, 0)
    tl.store(out_ptr0 + tl.program_id(0), _screen_s + 2 * _screen_l)
