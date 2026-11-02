extern "C" __device__ __noinline__ float f06_tanh(float x) {
  float y;
  asm volatile (R"ptx({
.reg .f32 a, z, p, small, e, d, r, large;
.reg .b32 sign, bits;
.reg .pred use_small, saturated;
abs.ftz.f32 a, %1;
setp.ltu.f32 use_small, a, 0f3F19999A;
mul.f32 z, %1, %1;
fma.rn.ftz.f32 p, 0f3C80F082, z, 0fBD563CAE;
fma.rn.ftz.f32 p, p, z, 0f3E085941;
fma.rn.ftz.f32 p, p, z, 0fBEAAA9ED;
fma.rn.ftz.f32 p, p, z, 0f00000000;
fma.rn.ftz.f32 small, p, %1, %1;
mul.f32 e, a, 0f4038AA3B;
ex2.approx.ftz.f32 e, e;
add.f32 d, e, 0f3F800000;
rcp.approx.ftz.f32 r, d;
fma.rn.ftz.f32 large, r, 0fC0000000, 0f3F800000;
setp.ge.f32 saturated, a, 0f41102CB4;
selp.f32 large, 0f3F800000, large, saturated;
mov.b32 sign, %1;
and.b32 sign, sign, 0x80000000;
mov.b32 bits, large;
or.b32 bits, bits, sign;
mov.b32 large, bits;
selp.f32 %0, small, large, use_small;
})ptx" : "=f"(y) : "f"(x));
  return y;
}
