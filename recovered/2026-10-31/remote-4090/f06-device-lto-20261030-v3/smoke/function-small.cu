extern "C" __device__ __noinline__ float f06_tanh(float x) {
  float y;
  asm volatile (R"ptx({
.reg .f32 z, p, small;
mul.f32 z, %1, %1;
fma.rn.ftz.f32 p, 0f3C80F082, z, 0fBD563CAE;
fma.rn.ftz.f32 p, p, z, 0f3E085941;
fma.rn.ftz.f32 p, p, z, 0fBEAAA9ED;
fma.rn.ftz.f32 p, p, z, 0f00000000;
fma.rn.ftz.f32 small, p, %1, %1;
mov.f32 %0, small;
})ptx" : "=f"(y) : "f"(x));
  return y;
}
