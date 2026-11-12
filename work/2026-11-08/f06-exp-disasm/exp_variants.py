"""P800-only experiments, limited to exp(x) on the Softmax domain x <= 0."""
import triton
import triton.language as tl

@triton.jit
def poly_exp(x):
    # Reduce to [-ln(2)/2, ln(2)/2], using the split ln(2) constants.
    z = tl.maximum(x, -104.)
    n = tl.floor(z * 1.4426950408889634 + 0.5)
    r = (z - n * 0.693359375) - n * -0.00021219444005469058
    p = 1. + r * (1. + r * (.5 + r * (0.16666666667 + r * (
        0.04166666667 + r * (0.00833333333 + r * 0.00138888889)))))
    # 2**(n+126) stays normal, including for n in the subnormal result range.
    scale = ((n.to(tl.int32) + 253) << 23).to(tl.float32, bitcast=True)
    y = (p * scale) * 1.1754943508222875e-38
    return tl.where(x != x, x, y)

@triton.jit
def cheap_control(x):
    # Diagnostic only. Keep the dependency on x but change the function.
    return tl.maximum(x + 1., 0.)

@triton.jit
def pointwise(x, y, BLOCK:tl.constexpr):
    i=tl.program_id(0)*BLOCK+tl.arange(0,BLOCK)
    tl.store(y+i,poly_exp(tl.load(x+i)))
