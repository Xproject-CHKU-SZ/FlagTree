extern "C" __device__  float f06_tanh(float x) {
  float y;
  asm volatile (R"ptx({
.reg .f32 a, e, d, r, large;
.reg .b32 sign, bits;
.reg .pred saturated;
abs.ftz.f32 a, %1;
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
mov.f32 %0, large;
})ptx" : "=f"(y) : "f"(x));
  return y;
}
