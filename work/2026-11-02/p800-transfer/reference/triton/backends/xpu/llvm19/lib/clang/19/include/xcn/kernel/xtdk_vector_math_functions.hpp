#if !defined(__XTDK_VECTOR_MATH_FUNCTIONS_HPP__)
#define __XTDK_VECTOR_MATH_FUNCTIONS_HPP__

// Packed float2 multiply, round-to-nearest-even (per component).
// Jupiter (XPU_ARCH <= 5) lacks a packed FP32 SIMD multiply instruction,
// so we fall back to two scalar multiplies as a software emulation.
// Fusion (XPU_ARCH >= 6) provides a corresponding hardware instruction
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ <= 5)
static __inline__ __device__  float2 __fmul2_rn(float2 a, float2 b) {
  float2 result;
  result.x = a.x * b.x;
  result.y = a.y * b.y;
  return result;
}
#endif

#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)

// --- fp32 x2 packed pseudo wrappers ---
static __inline__ __device__ float2 __fadd2(float2 __x, float2 __y) {
  typedef float __fv2 __attribute__((ext_vector_type(2)));
  __fv2 a, b, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  __builtin_memcpy(&b, &__y, sizeof(__y));
  r = __builtin_xcn_add2f(a, b);
  float2 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float2 __fadd2(float __x, float2 __y) {
  typedef float __fv2 __attribute__((ext_vector_type(2)));
  __fv2 b, r;
  __builtin_memcpy(&b, &__y, sizeof(__y));
  r = __builtin_xcn_vs_add2f(__x, b);
  float2 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float2 __fmul2(float2 __x, float2 __y) {
  typedef float __fv2 __attribute__((ext_vector_type(2)));
  __fv2 a, b, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  __builtin_memcpy(&b, &__y, sizeof(__y));
  r = __builtin_xcn_mul2f(a, b);
  float2 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float2 __fmul2(float __x, float2 __y) {
  typedef float __fv2 __attribute__((ext_vector_type(2)));
  __fv2 b, r;
  __builtin_memcpy(&b, &__y, sizeof(__y));
  r = __builtin_xcn_vs_mul2f(__x, b);
  float2 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float2 __f2exp(float2 __x) {
  typedef float __fv2 __attribute__((ext_vector_type(2)));
  __fv2 a, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  r = __builtin_xcn_exp2f(a);
  float2 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float2 __ffma2(float2 __x, float2 __y,
                                            float2 __z) {
  typedef float __fv2 __attribute__((ext_vector_type(2)));
  __fv2 a, b, c, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  __builtin_memcpy(&b, &__y, sizeof(__y));
  __builtin_memcpy(&c, &__z, sizeof(__z));
  r = __builtin_xcn_fma2f(a, b, c);
  float2 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}

// --- fp32 x4 packed pseudo wrappers ---
static __inline__ __device__ float4 __fadd4(float4 __x, float4 __y) {
  typedef float __fv4 __attribute__((ext_vector_type(4)));
  __fv4 a, b, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  __builtin_memcpy(&b, &__y, sizeof(__y));
  r = __builtin_xcn_add4f(a, b);
  float4 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float4 __fadd4(float __x, float4 __y) {
  typedef float __fv4 __attribute__((ext_vector_type(4)));
  __fv4 b, r;
  __builtin_memcpy(&b, &__y, sizeof(__y));
  r = __builtin_xcn_vs_add4f(__x, b);
  float4 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float4 __fmul4(float4 __x, float4 __y) {
  typedef float __fv4 __attribute__((ext_vector_type(4)));
  __fv4 a, b, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  __builtin_memcpy(&b, &__y, sizeof(__y));
  r = __builtin_xcn_mul4f(a, b);
  float4 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float4 __fmul4(float __x, float4 __y) {
  typedef float __fv4 __attribute__((ext_vector_type(4)));
  __fv4 b, r;
  __builtin_memcpy(&b, &__y, sizeof(__y));
  r = __builtin_xcn_vs_mul4f(__x, b);
  float4 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float4 __f4exp(float4 __x) {
  typedef float __fv4 __attribute__((ext_vector_type(4)));
  __fv4 a, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  r = __builtin_xcn_exp4f(a);
  float4 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float4 __ffma4(float4 __x, float4 __y,
                                            float4 __z) {
  typedef float __fv4 __attribute__((ext_vector_type(4)));
  __fv4 a, b, c, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  __builtin_memcpy(&b, &__y, sizeof(__y));
  __builtin_memcpy(&c, &__z, sizeof(__z));
  r = __builtin_xcn_fma4f(a, b, c);
  float4 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}

// --- fp32 x8 packed pseudo wrappers ---
static __inline__ __device__ float8 __fadd8(float8 __x, float8 __y) {
  typedef float __fv8 __attribute__((ext_vector_type(8)));
  __fv8 a, b, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  __builtin_memcpy(&b, &__y, sizeof(__y));
  r = __builtin_xcn_add8f(a, b);
  float8 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float8 __fadd8(float __x, float8 __y) {
  typedef float __fv8 __attribute__((ext_vector_type(8)));
  __fv8 b, r;
  __builtin_memcpy(&b, &__y, sizeof(__y));
  r = __builtin_xcn_vs_add8f(__x, b);
  float8 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float8 __fmul8(float8 __x, float8 __y) {
  typedef float __fv8 __attribute__((ext_vector_type(8)));
  __fv8 a, b, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  __builtin_memcpy(&b, &__y, sizeof(__y));
  r = __builtin_xcn_mul8f(a, b);
  float8 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float8 __fmul8(float __x, float8 __y) {
  typedef float __fv8 __attribute__((ext_vector_type(8)));
  __fv8 b, r;
  __builtin_memcpy(&b, &__y, sizeof(__y));
  r = __builtin_xcn_vs_mul8f(__x, b);
  float8 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float8 __f8exp(float8 __x) {
  typedef float __fv8 __attribute__((ext_vector_type(8)));
  __fv8 a, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  r = __builtin_xcn_exp8f(a);
  float8 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float8 __ffma8(float8 __x, float8 __y,
                                            float8 __z) {
  typedef float __fv8 __attribute__((ext_vector_type(8)));
  __fv8 a, b, c, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  __builtin_memcpy(&b, &__y, sizeof(__y));
  __builtin_memcpy(&c, &__z, sizeof(__z));
  r = __builtin_xcn_fma8f(a, b, c);
  float8 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}

// --- v_ex2_f32 (base-2 exp2) x2/x4/x8 packed pseudo wrappers ---
static __inline__ __device__ float2 __f2exp2(float2 __x) {
  typedef float __fv2 __attribute__((ext_vector_type(2)));
  __fv2 a, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  r = __builtin_xcn_ex2x2f(a);
  float2 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float4 __f4exp2(float4 __x) {
  typedef float __fv4 __attribute__((ext_vector_type(4)));
  __fv4 a, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  r = __builtin_xcn_ex2x4f(a);
  float4 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float8 __f8exp2(float8 __x) {
  typedef float __fv8 __attribute__((ext_vector_type(8)));
  __fv8 a, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  r = __builtin_xcn_ex2x8f(a);
  float8 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}

// --- v_max_f32 x2/x4/x8 packed pseudo wrappers ---
static __inline__ __device__ float2 __fmax2(float2 __x, float2 __y) {
  typedef float __fv2 __attribute__((ext_vector_type(2)));
  __fv2 a, b, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  __builtin_memcpy(&b, &__y, sizeof(__y));
  r = __builtin_xcn_fmax2f(a, b);
  float2 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float4 __fmax4(float4 __x, float4 __y) {
  typedef float __fv4 __attribute__((ext_vector_type(4)));
  __fv4 a, b, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  __builtin_memcpy(&b, &__y, sizeof(__y));
  r = __builtin_xcn_fmax4f(a, b);
  float4 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float8 __fmax8(float8 __x, float8 __y) {
  typedef float __fv8 __attribute__((ext_vector_type(8)));
  __fv8 a, b, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  __builtin_memcpy(&b, &__y, sizeof(__y));
  r = __builtin_xcn_fmax8f(a, b);
  float8 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}

// --- v_min_f32 x2/x4/x8 packed pseudo wrappers ---
static __inline__ __device__ float2 __fmin2(float2 __x, float2 __y) {
  typedef float __fv2 __attribute__((ext_vector_type(2)));
  __fv2 a, b, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  __builtin_memcpy(&b, &__y, sizeof(__y));
  r = __builtin_xcn_fmin2f(a, b);
  float2 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float4 __fmin4(float4 __x, float4 __y) {
  typedef float __fv4 __attribute__((ext_vector_type(4)));
  __fv4 a, b, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  __builtin_memcpy(&b, &__y, sizeof(__y));
  r = __builtin_xcn_fmin4f(a, b);
  float4 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float8 __fmin8(float8 __x, float8 __y) {
  typedef float __fv8 __attribute__((ext_vector_type(8)));
  __fv8 a, b, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  __builtin_memcpy(&b, &__y, sizeof(__y));
  r = __builtin_xcn_fmin8f(a, b);
  float8 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}

// --- v_neg_f32 x2/x4/x8 packed pseudo wrappers ---
static __inline__ __device__ float2 __fneg2(float2 __x) {
  typedef float __fv2 __attribute__((ext_vector_type(2)));
  __fv2 a, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  r = __builtin_xcn_fneg2f(a);
  float2 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float4 __fneg4(float4 __x) {
  typedef float __fv4 __attribute__((ext_vector_type(4)));
  __fv4 a, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  r = __builtin_xcn_fneg4f(a);
  float4 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}
static __inline__ __device__ float8 __fneg8(float8 __x) {
  typedef float __fv8 __attribute__((ext_vector_type(8)));
  __fv8 a, r;
  __builtin_memcpy(&a, &__x, sizeof(__x));
  r = __builtin_xcn_fneg8f(a);
  float8 ret;
  __builtin_memcpy(&ret, &r, sizeof(ret));
  return ret;
}


#endif // #if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)

#endif /* !__XTDK_VECTOR_MATH_FUNCTIONS_HPP__ */