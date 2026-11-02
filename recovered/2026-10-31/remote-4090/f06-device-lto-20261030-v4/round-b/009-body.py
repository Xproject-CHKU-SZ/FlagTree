from device_external import external_tanh
import triton
import triton.language as tl
from torch._inductor.runtime import triton_helpers, triton_heuristics
from torch._inductor.runtime.triton_helpers import libdevice, math as tl_math
from torch._inductor.runtime.hints import AutotuneHint, ReductionHint, TileHint, DeviceProperties

@triton.jit
def f06_gelu_body(in_ptr0, in_ptr1, out_ptr0, xnumel, XBLOCK: tl.constexpr):
    xnumel = 2048
    xoffset = tl.program_id(0) * XBLOCK
    xindex = xoffset + tl.arange(0, XBLOCK)[:]
    xmask = xindex < xnumel
    x2 = xindex
    x0 = xindex % 128
    tmp0 = tl.load(in_ptr0 + x2, xmask)
    tmp1 = tl.load(in_ptr1 + x0, xmask, eviction_policy='evict_last')
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
    tmp12 = external_tanh(tmp11)
    tmp13 = tl.full([1], 1.0, tl.float32)
    tmp14 = tmp12 + tmp13
    tmp15 = tmp4 * tmp14
    tl.store(out_ptr0 + x2, tmp15, xmask)
