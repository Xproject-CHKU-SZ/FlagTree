import triton
import triton.language as tl


@triton.jit
def copy_kernel(X, Y, BLOCK:tl.constexpr):
    p=tl.program_id(0)*BLOCK+tl.arange(0,BLOCK)
    tl.store(Y+p,tl.load(X+p))


@triton.jit
def fill_kernel(Y, VALUE, BLOCK:tl.constexpr):
    p=tl.program_id(0)*BLOCK+tl.arange(0,BLOCK)
    tl.store(Y+p,tl.full((BLOCK,),VALUE,tl.float32))
