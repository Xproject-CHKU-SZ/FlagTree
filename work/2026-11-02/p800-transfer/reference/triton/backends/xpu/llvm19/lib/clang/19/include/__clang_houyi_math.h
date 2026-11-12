/*===---- __clang_houyi_math.h - Device-side HOUYI math support ----------------===
 *
 * Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
 * See https://llvm.org/LICENSE.txt for license information.
 * SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
 *
 *===-----------------------------------------------------------------------===
 */
#ifndef __CLANG_HOUYI_MATH_H__
#define __CLANG_HOUYI_MATH_H__

#if !defined(__HOUYI__)
#error "This file is for HOUYI device compilation only."
#endif

#if !defined(__HOUYICC_RTC__)
#if defined(__cplusplus)
#include <algorithm>
#include <limits>
#endif
#include <limits.h>
#include <stdint.h>
#ifdef __OPENMP_AMDGCN__
#include <omp.h>
#endif
#endif // !defined(__HOUYICC_RTC__)

#include "__clang_houyi_softfloat.h"

#pragma push_macro("__DEVICE__")

#ifdef __OPENMP_AMDGCN__
#define __DEVICE__ static inline __attribute__((always_inline, nothrow))
#else
#define __DEVICE__ static __device__ inline __attribute__((always_inline))
#endif

// A few functions return bool type starting only in C++11.
#pragma push_macro("__RETURN_TYPE")
#ifdef __OPENMP_AMDGCN__
#define __RETURN_TYPE int
#else
#if defined(__cplusplus)
#define __RETURN_TYPE bool
#else
#define __RETURN_TYPE int
#endif
#endif // __OPENMP_AMDGCN__

#if defined(__cplusplus) && __cplusplus < 201103L
// emulate static_assert on type sizes
template <bool> struct __compare_result {};
template <> struct __compare_result<true> {
  static const __device__ bool valid;
};

__DEVICE__
void __suppress_unused_warning(bool b){};
template <unsigned int S, unsigned int T>
__DEVICE__ void __static_assert_equal_size() {
  __suppress_unused_warning(__compare_result<S == T>::valid);
}

#define __static_assert_type_size_equal(A, B) __static_assert_equal_size<A, B>()

#else
#define __static_assert_type_size_equal(A, B) static_assert((A) == (B), "")

#endif

__DEVICE__
uint64_t __make_mantissa_base8(const char *__tagp) {
  uint64_t __r = 0;
  while (__tagp) {
    char __tmp = *__tagp;

    if (__tmp >= '0' && __tmp <= '7')
      __r = (__r * 8u) + __tmp - '0';
    else
      return 0;

    ++__tagp;
  }

  return __r;
}

__DEVICE__
uint64_t __make_mantissa_base10(const char *__tagp) {
  uint64_t __r = 0;
  while (__tagp) {
    char __tmp = *__tagp;

    if (__tmp >= '0' && __tmp <= '9')
      __r = (__r * 10u) + __tmp - '0';
    else
      return 0;

    ++__tagp;
  }

  return __r;
}

__DEVICE__
uint64_t __make_mantissa_base16(const char *__tagp) {
  uint64_t __r = 0;
  while (__tagp) {
    char __tmp = *__tagp;

    if (__tmp >= '0' && __tmp <= '9')
      __r = (__r * 16u) + __tmp - '0';
    else if (__tmp >= 'a' && __tmp <= 'f')
      __r = (__r * 16u) + __tmp - 'a' + 10;
    else if (__tmp >= 'A' && __tmp <= 'F')
      __r = (__r * 16u) + __tmp - 'A' + 10;
    else
      return 0;

    ++__tagp;
  }

  return __r;
}

__DEVICE__
uint64_t __make_mantissa(const char *__tagp) {
  if (!__tagp)
    return 0u;

  if (*__tagp == '0') {
    ++__tagp;

    if (*__tagp == 'x' || *__tagp == 'X')
      return __make_mantissa_base16(__tagp);
    else
      return __make_mantissa_base8(__tagp);
  }

  return __make_mantissa_base10(__tagp);
}

// BEGIN FLOAT
#if defined(__cplusplus)
static constexpr __attribute__((always_inline)) __attribute__((device))
int abs(int __x) {
  int __sgn = __x >> (sizeof(int) * CHAR_BIT - 1);
  return (__x ^ __sgn) - __sgn;
}
__DEVICE__
long labs(long __x) {
  long __sgn = __x >> (sizeof(long) * CHAR_BIT - 1);
  return (__x ^ __sgn) - __sgn;
}
__DEVICE__
long long llabs(long long __x) {
  long long __sgn = __x >> (sizeof(long long) * CHAR_BIT - 1);
  return (__x ^ __sgn) - __sgn;
}
#endif

static const float pio2_hi = 1.5707962513e+00, pio2_lo = 7.5497894159e-08,
                   pS0 = 1.6666586697e-01, pS1 = -4.2743422091e-02,
                   pS2 = -8.6563630030e-03, qS1 = -7.0662963390e-01;
__DEVICE__ static inline float R(float z) {
  float p, q;
  p = z * (pS0 + z * (pS1 + z * pS2));
  q = 1.0f + z * qS1;
  return p / q;
}
__DEVICE__ float sqrtf(float __x);
typedef union {
  float f;
  uint32_t i;
} __Float32IntUnion;
__DEVICE__
float acosf(float __x) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  return __ocml_acos_f32(__x);
#else
  float z, w, s, c, df;
  uint32_t hx, ix;

  __Float32IntUnion u_x = {.f = (__x)};
  (hx) = u_x.i;
  ix = hx & 0x7fffffff;

  if (ix >= 0x3f800000) {
    if (ix == 0x3f800000) {
      if (hx >> 31)
        return 2 * pio2_hi + 0x1p-120f;
      return 0;
    }
    return 0 / (__x - __x);
  }

  if (ix < 0x3f000000) {
    if (ix <= 0x32800000)
      return pio2_hi + 0x1p-120f;
    return pio2_hi - (__x - (pio2_lo - __x * R(__x * __x)));
  }

  if (hx >> 31) {
    z = (1 + __x) * 0.5f;
    s = sqrtf(z);
    w = R(z) * s - pio2_lo;
    return 2 * (pio2_hi - (s + w));
  }

  z = (1 - __x) * 0.5f;
  s = sqrtf(z);
  __Float32IntUnion u_s = {.f = (s)};
  (hx) = u_s.i;
  uint32_t masked_hx = hx & 0xfffff000;
  __Float32IntUnion u_df = {.i = (masked_hx)};
  (df) = u_df.f;
  c = (z - df * df) / (s + df);
  w = R(z) * s + c;
  return 2 * (df + w);
#endif
}

__DEVICE__ int __dp4a(int a, int b, int c) {
    int8_t a0 = a, a1 = a>>8, a2 = a>>16, a3 = a>>24;
    int8_t b0 = b, b1 = b>>8, b2 = b>>16, b3 = b>>24;
    return c + a0 * b0 + a1 * b1 + a2 * b2 + a3 * b3;
}

// Per-byte equality comparison of two 32-bit words (CUDA SIMD-in-a-word).
// Treats each of a and b as 4 unsigned bytes; returns a 32-bit mask whose
// i-th byte is 0xFF if a[i] == b[i], otherwise 0x00.
//
// Algorithm mirrors NVCC sm_90 __vcmpeq4 PTX (SWAR, no per-byte branches):
//   d = a ^ b                              // 0 in byte i iff a[i] == b[i]
//   u = 0x01010100 - (d | 0x80808080)      // encode equality in bit 7
//   v = u & ~d                             // isolate the "equal" bits
//   result = broadcast bit 7 of each byte to the full byte
// The constant 0x01010100 (note the byte-0 = 0x00, not 0x01) guarantees the
// byte-0 borrow so that any non-zero d byte 0 clears bit 7, avoiding a false
// "equal" that the classic 0x01010101 variant would produce when d byte 0 == 1.
__DEVICE__ unsigned int __vcmpeq4(unsigned int a, unsigned int b) {
    unsigned int d = a ^ b;
    unsigned int u = 0x01010100u - (d | 0x80808080u);
    unsigned int v = u & ~d;
    // v has 0x80 in "equal" bytes only. Shifting right by 7 turns each such
    // byte into 0x01 without cross-byte contamination; multiplying by 0xFF
    // spreads 0x01 -> 0xFF per byte (0x01 * 0xFF = 0xFF < 0x100 so no carry).
    return ((v >> 7) & 0x01010101u) * 0xFFu;
}

// Per-byte modular add of two 32-bit words (each byte wraps mod 256).
__DEVICE__ unsigned int __vadd4(unsigned int a, unsigned int b) {
    return ((a & 0x7F7F7F7Fu) + (b & 0x7F7F7F7Fu)) ^ ((a ^ b) & 0x80808080u);
}

// Per-byte modular subtract of two 32-bit words (each byte wraps mod 256).
//
// Algorithm mirrors NVCC sm_90 __vsub4 PTX (SWAR, no per-byte branches):
//   u = (a | 0x80808080) - (b & 0x7F7F7F7F)
//   result = u ^ (~(a ^ b) & 0x80808080)
// OR-ing a's high bits to 1 and clearing b's high bits ensures each byte of
// (a|0x80) - (b&0x7F) stays in [0x01, 0xFF], so the 32-bit subtract acts
// byte-wise with no cross-byte borrow. Low 7 bits of each byte are already
// correct; the XOR fix-up restores the true sign/borrow bit per byte.
__DEVICE__ unsigned int __vsub4(unsigned int a, unsigned int b) {
    unsigned int d = a ^ b;
    unsigned int u = (a | 0x80808080u) - (b & 0x7F7F7F7Fu);
    return u ^ (~d & 0x80808080u);
}

// Per-byte signed saturating subtract of two 32-bit words.
// Each byte is treated as int8_t; the difference is clamped to [-128, 127]
// and then reinterpreted as an unsigned byte in the result.
//
// Algorithm mirrors NVCC sm_90 __vsubss4 PTX (SWAR, no per-byte branches):
//   d       = a ^ b
//   raw     = ((a | 0x80808080) - (b & 0x7F7F7F7F)) ^ (~d & 0x80808080)   // = vsub4
//   ovf_raw = (raw ^ a) & d                     // bit 7 of each byte = signed overflow
//   ovf     = broadcast bit 7 per byte to whole byte (0xFF if overflow, 0x00 otherwise)
//   sat     = broadcast bit 7 of a per byte, then XOR 0x7F7F7F7F  // 0x80 if a<0, 0x7F if a>=0
//   result  = (raw & ~ovf) | (sat & ovf)        // byte-wise MUX
//
// Signed overflow rule: overflow iff sign(a) != sign(b) AND sign(raw) != sign(a),
// i.e., ((a^b) & (raw^a)) has bit 7 set for that byte.
// On overflow, the saturation clamp depends on sign(a): a<0 clamps to INT8_MIN (0x80),
// a>=0 clamps to INT8_MAX (0x7F).
__DEVICE__ unsigned int __vsubss4(unsigned int a, unsigned int b) {
    unsigned int d       = a ^ b;
    unsigned int raw     = ((a | 0x80808080u) - (b & 0x7F7F7F7Fu))
                         ^ (~d & 0x80808080u);
    unsigned int ovf_raw = (raw ^ a) & d;
    unsigned int ovf     = ((ovf_raw >> 7) & 0x01010101u) * 0xFFu;
    unsigned int neg_a   = ((a       >> 7) & 0x01010101u) * 0xFFu;
    unsigned int sat     = neg_a ^ 0x7F7F7F7Fu;
    return (raw & ~ovf) | (sat & ovf);
}

__DEVICE__
float acoshf(float __x) { return __ocml_acosh_f32(__x); }

__DEVICE__ int bitcast_float2int(float __x);
__DEVICE__ float bitcast_int2float(int __x);
__DEVICE__ float rsqrtf(float __x);
__DEVICE__ float fabsf(float __x);
__DEVICE__ float fmaf(float __x, float __y, float __z);
__DEVICE__
float asinf(float __x) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  float t0, t1, t2, t3, t4, t5, t6, t7, t8, t9;
  const float f1 = bitcast_int2float(0x3C99CA97);
  const float f2 = bitcast_int2float(0x3D4DD2F7);
  const float f3 = bitcast_int2float(0x3D3F90E8);
  const float f4 = bitcast_int2float(0x3D993CCF);
  const float f5 = bitcast_int2float(0x3E2AAC04);
  const float f6 = bitcast_int2float(0x3FD774EB);
  const float f7 = bitcast_int2float(0x3F6EE581);

  t0 = fabsf(__x);
  t1 = fmaf(0.5f, -t0, 0.5f);
  t2 = rsqrtf(t1); 
  t3 = t1 * t2;
  t4 = t2 * 0.5f;
  t5 = fmaf(-t3, t4, 0.5f);
  t5 = fmaf(t3, t5, t3);
  t5 = (t0 == 1.0f) ? 0.0f : t5;
  t5 = (t0 > bitcast_int2float(0x3F0F5C29)) ? t5 : t0;
  t6 = t5 * t5;
  t7 = fmaf(f2, t6, f1);
  t7 = fmaf(t7, t6, f3);
  t7 = fmaf(t7, t6, f4);
  t7 = fmaf(t7, t6, f5);
  t7 = t6 * t7;
  t7 = fmaf(t7, t5, t5);
  t8 = t7 * bitcast_int2float(0xC0000000);
  t8 = fmaf(f7, f6, t8);
  t8 = (t0 > bitcast_int2float(0x3F0F5C29)) ? t8 : t7;
  uint32_t r1 = bitcast_float2int(t8);
  uint32_t r2 = bitcast_float2int(__x);
  uint32_t r3 = r2 & 0x80000000;
  uint32_t r4 = r3 | r1;
  t9 = bitcast_int2float(r4);
  t9 = (t8 <= bitcast_int2float(0x7F800000)) ? t9 : t8;
  return t9;
#else
  float t0, t1, t2;
  t0 = fabsf(__x);
  t2 = 1.0f - t0;
  t2 = 0.5f * t2;
  t2 = sqrtf(t2);
  t1 = t0 > 0.57f ? t2 : t0;
  {
    float a2, t;
    a2 = t1 * t1;
    t = 5.175137819e-002f;
    t = fmaf(t, a2, 1.816697683e-002f);
    t = fmaf(t, a2, 4.675685871e-002f);
    t = fmaf(t, a2, 7.484657646e-002f);
    t = fmaf(t, a2, 1.666701424e-001f);
    t = t * a2;
    t1 = fmaf(t, t1, t1);
  }
  t2 = fmaf(-2.0f, t1, 1.57079632679489661923f);
  if (t0 > 0.57f) {
    t1 = t2;
  }
  if (t1 <= __builtin_inff()) {
    __Float32IntUnion ia, ib;
    ia.f = t1;
    ib.f = __x;
    __Float32IntUnion res;
    res.i = (ia.i | (ib.i & 0x80000000));
    t1 = res.f;
  }
  return t1;
#endif
}

__DEVICE__
float asinhf(float __x) { return __ocml_asinh_f32(__x); }

__DEVICE__ int bitcast_float2int(float __x);
__DEVICE__ float bitcast_int2float(int __x);
__DEVICE__ float fabsf(float __x);
__DEVICE__ float copysignf(float __x, float __y);
__DEVICE__ float fmaxf(float __x, float __y);
__DEVICE__ float fminf(float __x, float __y);
__DEVICE__
float atan2f(float __x, float __y){
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  float t0, t1, t2, t3, t4;
  const float INF_F = bitcast_int2float(0x7f800000);
  const float PI_F = 3.14159265358979323846f;
  const float PIO2_F = 1.57079632679489661923f;
  const float T3PIO4_F = 2.356194490192344928846f;
  const float PIO4_F = 0.785398163397448309616f;
  const float ZERO_F = 0.0f;

  t1 = fabsf(__y);
  t2 = fabsf(__x);
  if (t1 == 0.0f && t2 == 0.0f) {
      t0 = (bitcast_float2int(__y) < 0) ? PI_F : ZERO_F;
      t0 = copysignf(t0, __x);
  } else if ((t1 == INF_F) && (t2 == INF_F)) {
      t0 = (bitcast_float2int(__y) < 0) ? T3PIO4_F : PIO4_F;
      t0 = copysignf(t0, __x);
  } else {
      t3 = fmaxf(t2, t1);
      t4 = fminf(t2, t1);
      t0 = t4 / t3;

      const float c0 = -5.674867153f;
      const float c1 = -0.823362947f;
      const float c2 = -6.565555096f;
      const float c3 = 11.33538818f;
      const float c4 = 28.84246826f;
      const float c5 = 19.69667053f;
      float s4 = t0*t0;
      float s0 = c0;
      s0 = s4 * c1 + c0;
      s0 = s0 * s4 + c2;
      s0 = s0 * s4;
      s0 = s0 * t0;
      float s1;
      asm volatile("v_add_f32 %0, %1, %2\n"
          : "=v"(s1)
          : "v"(s4),  "v"(c3)
      );
      s1 = s1 * s4 + c4;
      s1 = s1 * s4 + c5;
      s1 = 1.0f / s1;
      t0 = s0 * s1 + t0;

      if (t2 > t1) t0 = PIO2_F - t0;
      if (bitcast_float2int(__y) < 0) t0 = PI_F - t0;
      t0 = copysignf(t0, __x);
      t1 = t1 + t2;
      if (!(t1 <= INF_F)) t0 = t1;
  }
  const float output = t0;
  return output;
#else
  return __ocml_atan2_f32(__x, __y); 
#endif
}

__DEVICE__ float bitcast_int2float(int __x);
__DEVICE__
float atanf(float __x) {
  float x = __x;
  float a = fabsf(x);

  float t = (a > 1.0f) ? (1.0f / a) : a;
  float s = t * t;

  const float c0 = bitcast_int2float(0xBC6BE14F);
  const float c1 = bitcast_int2float(0x3B2090AA);
  const float c2 = bitcast_int2float(0x3D23397E);
  const float c3 = bitcast_int2float(0xBD948A7A);
  const float c4 = bitcast_int2float(0x3DD76B21);
  const float c5 = bitcast_int2float(0xBE111E88);
  const float c6 = bitcast_int2float(0x3E4CAF60);
  const float c7 = bitcast_int2float(0xBEAAAA27);

  float p = (((((((c1 * s + c0) * s + c2) * s + c3) * s + c4) * s + c5) * s + c6) * s + c7);
  float y = fmaf(s * p, t, t);


  if (a > 1.0f) {
    const float k0 = bitcast_int2float(0x3FD774EB);
    const float k1 = bitcast_int2float(0x3F6EE581);
    y = fmaf(k1, k0, -y);
  }

  __Float32IntUnion converter,ia, ib;
  ia.f = x;
  ib.f = y;
  converter.i = (ia.i & 0x80000000) | ib.i;
  if (converter.f <= bitcast_int2float(0x7F800000)) {
    y = converter.f;
  }

  return y;
}

__DEVICE__
float atanhf(float __x) { return __ocml_atanh_f32(__x); }

__DEVICE__
float cbrtf(float __x) { return __ocml_cbrt_f32(__x); }

__DEVICE__
float ceilf(float __x) { return __ocml_ceil_f32(__x); }

__DEVICE__
float copysignf(float __x, float __y) { return __ocml_copysign_f32(__x, __y); }

typedef union {
    double f;
    uint64_t i;
} __Float64IntUnion;

__DEVICE__
float cosf(float __x) {
  // Constants for the computation
  const unsigned int LUT[6] = {0x3c439041, 0xdb629599, 0xf534ddc0, 0xfc2757d1, 0x4e441529, 0xa2f9836e};
  unsigned int inter_var[7];
  const float boundary_point = 105615.0f;

  // Variable declarations
  int bin_x;
  float quo_by_pi_2;
  int quo_int;
  int quo_int_plus1;
  float quo_fp;
  float quo_fix_1, quo_fix_2, quo_fix_final;
  float abs_x;
  int exp, exp_tmp1, exp_tmp2, exp_tmp3, exp_tmp4, exp_tmp5;
  unsigned int exp_unbias, sig_full;
  uint64_t iter_add, mad_res;
  unsigned int gen_part1, gen_part2, sign, sign_gold, gen_part_concat, gen_part_concat_sign;
  int gen_part1_partial_sum, sign_inter;
  unsigned int xor_part_hi, xor_part_lo;
  uint64_t xor_u64;
  double xor_f64;
  bool quo_int_lsb_even;
  float final_coef1, quo_fix_final_sq, final_iter_1, final_iter_2, final_iter_3, final_res;

  // Floating-point constants initialized using union type
  __Float32IntUnion fconst0, fconst1, fconst3, fconst4, fconst5, fconst6, fconst7, fconst8, fconst9, NEG_PI_OVER_TWO, TWO_OVER_PI;
  __Float64IntUnion fconst2;
  
  fconst0.i = 0xB3A22168;
  fconst1.i = 0xA7C234C5;
  fconst2.i = 0x3BF921FB54442D19;
  fconst3.i = 0xB94D4153;
  fconst4.i = 0xBAB607ED;
  fconst5.i = 0x37CBAC00;
  fconst6.i = 0x3C0885E4;
  fconst7.i = 0x3D2AAABB;
  fconst8.i = 0xBE2AAAA8;
  fconst9.i = 0xBEFFFFFF;
  NEG_PI_OVER_TWO.i = 0xBFC90FDA;
  TWO_OVER_PI.i = 0x3F22F983;
  
  // Convert float input to integer representation
  bin_x = *reinterpret_cast<int*>(&__x);
  
  // Compute the quotient of input by π/2
  quo_by_pi_2 = __x * TWO_OVER_PI.f;
  asm volatile("v_rndne_f32 %0, %1" : "=v"(quo_fp) : "v"(quo_by_pi_2));
  quo_int = static_cast<int>(quo_fp);
  
  // Compute the fixed-point remainder
  quo_fix_1 = __x + NEG_PI_OVER_TWO.f * quo_fp;
  quo_fix_2 = quo_fix_1 + fconst0.f * quo_fp;
  quo_fix_final = quo_fix_2 + fconst1.f * quo_fp;
  
  // Compute absolute value of input
  abs_x = __ocml_fabs_f32(__x);
  
  // Handle special cases for input
  if (__ocml_isinf_f32(__x)) {
    quo_fix_final =  __builtin_nanf("");
    quo_int = 0;
  } else if ((abs_x >= boundary_point) && (!__ocml_isnan_f32(__x))) {
    // Handle large input values
    exp = (bin_x >> 23) & 0xFF;
    exp_unbias = exp - 128;
    sig_full = (bin_x << 8) | (1 << 31);
    exp_tmp1 = exp_unbias >> 5;
    iter_add = 0;

    // Iterate over LUT for large input handling
    for (int i = 0; i < 6; i++) {
      mad_res = static_cast<uint64_t>(LUT[i]) * static_cast<uint64_t>(sig_full) + iter_add;
      iter_add = mad_res >> 32;
      inter_var[i] = static_cast<unsigned int>(mad_res);
    }
    inter_var[6] = iter_add;

    exp_tmp2 = 4 - exp_tmp1;
    exp_tmp3 = 6 - exp_tmp1;
    gen_part1 = inter_var[exp_tmp3];
    gen_part2 = inter_var[exp_tmp3-1];
    exp_tmp4 = exp_unbias & 0x1F;
    if (exp_tmp4) {
      exp_tmp5 = 32 - exp_tmp4;
      gen_part1 = (gen_part2 >> exp_tmp5) + (gen_part1 << exp_tmp4);
      gen_part2 = (inter_var[exp_tmp2] >> exp_tmp5) + (gen_part2 << exp_tmp4);
    }

    sign = bin_x & (1 << 31);
    gen_part_concat = (gen_part2 >> 30) | (gen_part1 << 2);
    gen_part_concat_sign = gen_part_concat >> 31;
    gen_part1_partial_sum = gen_part_concat_sign + (gen_part1 >> 30);
    quo_int = sign ? -gen_part1_partial_sum : gen_part1_partial_sum;

    sign_gold = gen_part_concat_sign ? (sign ^ 0x80000000) : sign;
    sign_inter = gen_part_concat_sign ? -1 : 0;
    xor_part_hi = gen_part_concat ^ sign_inter;
    xor_part_lo = (gen_part2 << 2) ^ sign_inter;
    xor_u64 = (static_cast<uint64_t>(xor_part_hi) << 32) | xor_part_lo;
    xor_f64 = xor_u64 * fconst2.f;
    quo_fix_final = sign_gold ? -xor_f64 : xor_f64;
  }

  // Fast path computation
  quo_int_plus1 = quo_int + 1;
  quo_int_lsb_even = (quo_int_plus1 & 1) == 0;
  final_coef1 = quo_int_lsb_even ? quo_fix_final : 1.0f;
  quo_fix_final_sq = quo_fix_final * quo_fix_final;
  if (!quo_int_lsb_even) {
    fconst3.f = fconst5.f * quo_fix_final_sq + fconst4.f;
  }

  // Polynomial approximation for cosine calculation
  final_iter_1 = fconst3.f * quo_fix_final_sq + (quo_int_lsb_even ? fconst6.f : fconst7.f);
  final_iter_2 = final_iter_1 * quo_fix_final_sq + (quo_int_lsb_even ? fconst8.f : fconst9.f);
  final_iter_3 = (final_coef1 * quo_fix_final_sq) * final_iter_2 + final_coef1;
  final_res = (quo_int_plus1 & 2) ? -final_iter_3 : final_iter_3;
  
  return final_res;
}

__DEVICE__
float coshf(float __x) { return __ocml_cosh_f32(__x); }

__DEVICE__
float cospif(float __x) { return __ocml_cospi_f32(__x); }

__DEVICE__
float cyl_bessel_i0f(float __x) { return __ocml_i0_f32(__x); }

__DEVICE__
float cyl_bessel_i1f(float __x) { return __ocml_i1_f32(__x); }

__DEVICE__ int bitcast_float2int(float __x);
__DEVICE__ float exp2f(float __x);
__DEVICE__ float truncf(float __x);
__DEVICE__
float erfcf(float __x) {
  float x, t1, t2, t3;
  x = fabsf(__x);
  {
    float t4, t5, t6, t7;
    t4 = x - 4.0f;
    t5 = x + 4.0f;
    t5 = 1.0f / t5;
    t6 = t4 * t5;
    t4 = fmaf(-4.0f, t6 + 1.0f, x);
    t4 = fmaf(-t6, x, t4);
    t5 = fmaf(t5, t4, t6);
    t4 = 8.9121708796596137E-004f;
    t4 = fmaf(t4, t5, 7.0457882096080539E-003f);
    t4 = fmaf(t4, t5, -1.5866896179569826E-002f);
    t4 = fmaf(t4, t5, 3.6429623548273796E-002f);
    t4 = fmaf(t4, t5, -6.6643431826764105E-002f);
    t4 = fmaf(t4, t5, 9.3814531408377352E-002f);
    t4 = fmaf(t4, t5, -1.0099056031741439E-001f);
    t4 = fmaf(t4, t5, 6.8094000865639340E-002f);
    t4 = fmaf(t4, t5, 1.5377387724225955E-002f);
    t4 = fmaf(t4, t5, -1.3962107929750070E-001f);
    t4 = fmaf(t4, t5, 1.2329951349050698E+000f);
    t5 = fmaf(2.0f, x, 1.0f);
    t5 = 1.0f / t5;
    t6 = t4 * t5;
    t7 = fmaf(x, -2.0f * t6, t4);
    t7 = t7 - t6;
    t4 = fmaf(t7, t5, t6);
    t1 = t4;
  }
  t2 = -x * x;
  {
    float z, j, k;
    const float log2e = bitcast_int2float(0x3fb8aa3b);
    const float log2_hi = bitcast_int2float(0x3f317218);
    const float log2_lo = bitcast_int2float(0xb102e308);
    const float right_shifter = bitcast_int2float(0x4b400000);
    const float bias = 127.0f;
    const float exp_range = 126.0f;

    j = truncf(t2 * log2e);

    if (fabsf(j) > exp_range)
    {
      j = copysignf(exp_range, j);
    }

    z = fmaf(j, -log2_hi, t2);
    z = fmaf(j, -log2_lo, z);
    z = z * log2e;

    k = j + (right_shifter + bias);
    j = bitcast_int2float(bitcast_float2int(k) << 23);

    z = exp2f(z);

    t3 = z * j;
  }
  t2 = fmaf(-x, x, -t2);
  t2 = fmaf(t3, t2, t3);
  t1 = t1 * t2;
  if (x > 10.055f)
    t1 = 0.0f;
  return (__x < 0.0f) ? (2.0f - t1) : t1;
}

__DEVICE__
float erfcxf(float __x) { return __ocml_erfcx_f32(__x); }

__DEVICE__
float erff(float __x) {
  const float __s1 = 0.62829983f;
  const float __s2 = 0.91631305f;
  const float __s3 = 0.1532937f;
  const float __s4 = -3.4303077e-2f;
  const float __s5 = 5.2647642e-3f;
  const float __s6 = -4.6802105e-4f;
  const float __s7 = 1.6425845e-5f;

  const float branch_point = 1.00296f;
  const float __t1  =  1.28379151e-01f;
  const float __t3  = -3.76126647e-01f;
  const float __t5  =  1.12840049e-01f;
  const float __t7  = -2.68687736e-02f;
  const float __t9  =  5.21348882e-03f;
  const float __t11 = -8.21309164e-04f;
  const float __t13 =  8.48349446e-05f;

  float t, r;
  int if_exp_branch = fabsf(__x) >= branch_point;

  t = if_exp_branch ? fabsf(__x) : __x * __x;
  r = if_exp_branch ? __s7: __t13;
  r = fmaf(r, t, if_exp_branch ?  __s6 : __t11);
  r = fmaf(r, t, if_exp_branch ?  __s5 : __t9);
  r = fmaf(r, t, if_exp_branch ?  __s4 : __t7);
  r = fmaf(r, t, if_exp_branch ?  __s3 : __t5);
  r = fmaf(r, t, if_exp_branch ?  __s2 : __t3);
  r = fmaf(r, t, if_exp_branch ?  __s1 : __t1);
  r = fmaf(r, if_exp_branch ? -t : __x, if_exp_branch ? -t : __x);

  if (if_exp_branch)
  {
    r = 1.0f - exp2f(r);
    r = copysignf(r, __x);
  }

  return r;
}

__DEVICE__
float logf(float __x);
__DEVICE__
float log2f(float __x);
__DEVICE__
float erfinvf(float __x) {
  float s, t, r;
  s = fmaf(__x, - __x, 1.0f);
  #if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    // from https://blog.csdn.net/weixin_60819724/article/details/140712873
    t = logf(s);
    
    if (fabsf(t) > 6.125f)
    {
      r = 3.03697567e-10f;
      r = fmaf(r, t, 2.93243101e-8f);
      r = fmaf(r, t, 1.22150334e-6f);
      r = fmaf(r, t, 2.84108955e-5f);
      r = fmaf(r, t, 3.93552968e-4f);
      r = fmaf(r, t, 3.02698812e-3f);
      r = fmaf(r, t, 4.83185798e-3f);
      r = fmaf(r, t, -2.64646143e-1f);
      r = fmaf(r, t, 8.40016484e-1f);
    }
    else
    {
      r = 5.43877832e-9f;
      r = fmaf(r, t, 1.43285448e-7f);
      r = fmaf(r, t, 1.22774793e-6f);
      r = fmaf(r, t, 1.12963626e-7f);
      r = fmaf(r, t, -5.61530760e-5f);
      r = fmaf(r, t, -1.47697632e-4f);
      r = fmaf(r, t, 2.31468678e-3f);
      r = fmaf(r, t, 1.15392581e-2f);
      r = fmaf(r, t, -2.32015476e-1f);
      r = fmaf(r, t, 8.86226892e-1f);
    }
    t = (*(uint32_t*)&__x == 0x80000000) ? 0x00000000 : __x * r;
  #else
    // from cuda
    t = -log2f(s);

    if (t > 8.2f) {
      t = 1.0f / sqrtf(t);
      r = -5.8991436871681446E-001f;
      r = -5.8991436871681446E-001f;
      r = fmaf (r, t, -6.6300422537735360E-001f);
      r = fmaf (r, t,  1.5970110948817704E+000f);
      r = fmaf (r, t, -6.7521557026467416E-001f);
      r = fmaf (r, t, -9.5224791160399669E-002f);
      r = fmaf (r, t,  8.3535343797791939E-001f);
      t = 1.0f / t;
      t = r * t;

      __Float32IntUnion ux, uy, result;
      ux.f = t;
      uy.f = __x;
      result.i = (ux.i & 0x7FFFFFFF) | (uy.i & 0x80000000);
      t = result.f;
    } else {
      r = -2.5172707606685652E-010f;
      r = fmaf (r, t,  9.4274289432374619E-009f);
      r = fmaf (r, t, -1.2054753059594516E-007f);
      r = fmaf (r, t,  2.1697004698667657E-007f);
      r = fmaf (r, t,  8.0621488510822390E-006f);
      r = fmaf (r, t, -3.1675491789646913E-005f);
      r = fmaf (r, t, -7.7436312951712784E-004f);
      r = fmaf (r, t,  5.5465877941375773E-003f);
      r = fmaf (r, t,  1.6082022430967846E-001f);
      r = fmaf (r, t,  8.8622690039402130E-001f);
      t = __x * r; 
    }
  #endif
  return t;
}

__DEVICE__
float exp10f(float __x) { return __ocml_exp10_f32(__x); }

__DEVICE__
float exp2f(float __x) { return __ocml_exp2_f32(__x); }

__DEVICE__
float expf(float __x) { return __ocml_exp_f32(__x); }

__DEVICE__ float rintf(float __x);
__DEVICE__
float expm1f(float __x){
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  float t, z, j, u;
  const float c0 = bitcast_int2float(0x3FB8AA3B); 
  t = rintf(__x * c0);   
  if(fabsf(__x) < 0.41f){
      t = 0.0f;
  }
  z = fmaf(-t, 0.6931457519f, __x);
  z = fmaf(-t, 1.4286067653e-6f, z);
  j = t;
  if (t == 128.0f) j = j - 1.0f;
  u = 1.38795078474044430E-003f;
  u = fmaf(u, z, 8.38241261853264930E-003f);
  u = fmaf(u, z, 4.16678317762833940E-002f);
  u = fmaf(u, z, 1.66663978874356580E-001f);
  u = fmaf(u, z, 4.99999940395997040E-001f);
  u = u * z;
  u = fmaf(u, z, z);
  z = exp2f(j);
  u = fmaf(u, z, z - 1.0f);
  if (t == 128.0f) u = u + u; 
  if (j > 128.0f) u = bitcast_int2float(0x7F800000);
  if (j < -25.0f) u = -1.0f;
  if (__x == 0.0f) {
  u = __x + __x;
  }
  return u;
#else
  return __ocml_expm1_f32(__x);
#endif
}

__DEVICE__
float fabsf(float __x) { return __ocml_fabs_f32(__x); }

__DEVICE__
float fdimf(float __x, float __y) { return __ocml_fdim_f32(__x, __y); }

__DEVICE__
float fdividef(float __x, float __y) { return __x / __y; }

__DEVICE__
float floorf(float __x) { return __ocml_floor_f32(__x); }

__DEVICE__
float fmaf(float __x, float __y, float __z) {
  return __ocml_fma_f32(__x, __y, __z);
}

__DEVICE__
float fmaxf(float __x, float __y) { return __ocml_fmax_f32(__x, __y); }

__DEVICE__
float fminf(float __x, float __y) { return __ocml_fmin_f32(__x, __y); }

__DEVICE__
float fmodf(float __x, float __y) { return __ocml_fmod_f32(__x, __y); }

__DEVICE__
float frexpf(float __x, int *__nptr) {
  int __tmp;
#ifdef __OPENMP_AMDGCN__
#pragma omp allocate(__tmp) allocator(omp_thread_mem_alloc)
#endif
  float __r =
      __ocml_frexp_f32(__x, (__attribute__((address_space(5))) int *)&__tmp);
  *__nptr = __tmp;

  return __r;
}

__DEVICE__
float hypotf(float __x, float __y) { return __ocml_hypot_f32(__x, __y); }

__DEVICE__
int ilogbf(float __x) { return __ocml_ilogb_f32(__x); }

__DEVICE__
__RETURN_TYPE __finitef(float __x) { return __ocml_isfinite_f32(__x); }

__DEVICE__
__RETURN_TYPE __isinff(float __x) { return __ocml_isinf_f32(__x); }

__DEVICE__
__RETURN_TYPE __isnanf(float __x) { return __ocml_isnan_f32(__x); }

__DEVICE__
float j0f(float __x) { return __ocml_j0_f32(__x); }

__DEVICE__
float j1f(float __x) { return __ocml_j1_f32(__x); }

__DEVICE__
float jnf(int __n, float __x) { // TODO: we could use Ahmes multiplication
                                // and the Miller & Brown algorithm
  //       for linear recurrences to get O(log n) steps, but it's unclear if
  //       it'd be beneficial in this case.
  if (__n == 0)
    return j0f(__x);
  if (__n == 1)
    return j1f(__x);

  float __x0 = j0f(__x);
  float __x1 = j1f(__x);
  for (int __i = 1; __i < __n; ++__i) {
    float __x2 = (2 * __i) / __x * __x1 - __x0;
    __x0 = __x1;
    __x1 = __x2;
  }

  return __x1;
}

__DEVICE__
float ldexpf(float __x, int __e) { return __ocml_ldexp_f32(__x, __e); }

__DEVICE__ float roundf(float __x);
__DEVICE__
float lgammaf(float __x) {
  float a = __x;
  float t1;
  float i1;
  int quot;
  int t9 = 0x7f800000;
  float t10 = *(float *)&t9;

  float t3 = fabsf(a);
  {
    float sum;
    float s, t2;
    int t4 = 0x7f800000;
    float t5 = *(float *)&t4;

    if (t3 >= 3.0f)
    {
      if (t3 >= 7.8f)
      {
        s = 1.0f / t3;
        t2 = s * s;
        sum = 0.77783067e-3f;
        sum = fmaf(sum, t2, -0.2777655457e-2f);
        sum = fmaf(sum, t2, 0.83333273853e-1f);
        sum = fmaf(sum, s, 0.918938533204672f);
        {
          float t6 = t3;
          float m, r, i2;
          int e;

          i2 = 0.0f;
          if (t6 < 1.175494351e-38f)
          {
            t6 = t6 * 8388608.0f;
            i2 = -23.0f;
          }
          int t7 = *(int *)&t6;
          e = (t7 - 0x3f2aaaab) & 0xff800000;
          int t8 = t7 - e;
          m = *(float *)&t8;
          i2 = fmaf((float)e, 1.19209290e-7f, i2);
          m = m - 1.0f;
          r = -1.30188569e-1f;
          r = fmaf(r, m, 1.40846103e-1f);
          r = fmaf(r, m, -1.21486276e-1f);
          r = fmaf(r, m, 1.39806107e-1f);
          r = fmaf(r, m, -1.66842356e-1f);
          r = fmaf(r, m, 2.00122997e-1f);
          r = fmaf(r, m, -2.49996692e-1f);
          r = fmaf(r, m, 3.33331823e-1f);
          r = fmaf(r, m, -5.00000000e-1f);
          r = r * m;
          r = fmaf(r, m, m);
          r = fmaf(i2, 6.93147182e-01f, r);
          if (((unsigned)t7) >= 0x7f800000U)
          {
            r = fmaf(t6, t10, t10);
          }
          if (t6 == 0.0f)
          {
            r = -t10;
          }
          s = 0.5f * r;
        }
        t2 = t3 - 0.5f;
        s = s * t2;
        t2 = s - t3;
        s = s + sum;
        t2 = t2 + s;
        if (t3 == t5)
        {
          t2 = t3;
        }
      }
      else
      {
        t3 = t3 - 3.0f;
        s = -7.488903254816711E+002f;
        s = fmaf(s, t3, -1.234974215949363E+004f);
        s = fmaf(s, t3, -4.106137688064877E+004f);
        s = fmaf(s, t3, -4.831066242492429E+004f);
        s = fmaf(s, t3, -1.430333998207429E+005f);
        t2 = t3 - 2.592509840117874E+002f;
        t2 = fmaf(t2, t3, -1.077717972228532E+004f);
        t2 = fmaf(t2, t3, -9.268505031444956E+004f);
        t2 = fmaf(t2, t3, -2.063535768623558E+005f);
        t2 = fmaf(s, 1.0f / t2, t3);
      }
    }
    else if (t3 >= 1.5f)
    {
      t3 = t3 - 2.0f;
      t2 = 4.959849168282574E-005f;
      t2 = fmaf(t2, t3, -2.208948403848352E-004f);
      t2 = fmaf(t2, t3, 5.413142447864599E-004f);
      t2 = fmaf(t2, t3, -1.204516976842832E-003f);
      t2 = fmaf(t2, t3, 2.884251838546602E-003f);
      t2 = fmaf(t2, t3, -7.382757963931180E-003f);
      t2 = fmaf(t2, t3, 2.058131963026755E-002f);
      t2 = fmaf(t2, t3, -6.735248600734503E-002f);
      t2 = fmaf(t2, t3, 3.224670187176319E-001f);
      t2 = fmaf(t2, t3, 4.227843368636472E-001f);
      t2 = t2 * t3;
    }
    else if (t3 >= 0.7f)
    {
      t3 = 1.0f - t3;
      t2 = 4.588266515364258E-002f;
      t2 = fmaf(t2, t3, 1.037396712740616E-001f);
      t2 = fmaf(t2, t3, 1.228036339653591E-001f);
      t2 = fmaf(t2, t3, 1.275242157462838E-001f);
      t2 = fmaf(t2, t3, 1.432166835245778E-001f);
      t2 = fmaf(t2, t3, 1.693435824224152E-001f);
      t2 = fmaf(t2, t3, 2.074079329483975E-001f);
      t2 = fmaf(t2, t3, 2.705875136435339E-001f);
      t2 = fmaf(t2, t3, 4.006854436743395E-001f);
      t2 = fmaf(t2, t3, 8.224669796332661E-001f);
      t2 = fmaf(t2, t3, 5.772156651487230E-001f);
      t2 = t2 * t3;
    }
    else
    {
      t2 = 3.587515669447039E-003f;
      t2 = fmaf(t2, t3, -5.471285428060787E-003f);
      t2 = fmaf(t2, t3, -4.462712795343244E-002f);
      t2 = fmaf(t2, t3, 1.673177015593242E-001f);
      t2 = fmaf(t2, t3, -4.213597883575600E-002f);
      t2 = fmaf(t2, t3, -6.558672843439567E-001f);
      t2 = fmaf(t2, t3, 5.772153712885004E-001f); 
      t2 = t2 * t3;
      t2 = fmaf(t2, t3, t3);
      {
        float t6 = t2;
        float m, r, i2;
        int e;

        i2 = 0.0f;
        if (t6 < 1.175494351e-38f)
        {
          t6 = t6 * 8388608.0f;
          i2 = -23.0f;
        }
        int t7 = *(int *)&t6;
        e = (t7 - 0x3f2aaaab) & 0xff800000;
        int t8 = t7 - e;
        m = *(float *)&t8;
        i2 = fmaf((float)e, 1.19209290e-7f, i2);
        m = m - 1.0f;
        r = -1.30188569e-1f;
        r = fmaf(r, m, 1.40846103e-1f);
        r = fmaf(r, m, -1.21486276e-1f);
        r = fmaf(r, m, 1.39806107e-1f);
        r = fmaf(r, m, -1.66842356e-1f);
        r = fmaf(r, m, 2.00122997e-1f);
        r = fmaf(r, m, -2.49996692e-1f);
        r = fmaf(r, m, 3.33331823e-1f);
        r = fmaf(r, m, -5.00000000e-1f);
        r = r * m;
        r = fmaf(r, m, m);
        r = fmaf(i2, 6.93147182e-01f, r);
        if (((unsigned)t7) >= 0x7f800000U)
        {
          r = fmaf(t6, t10, t10);
        }
        if (t6 == 0.0f)
        {
          r = -t10;
        }
        t2 = -r;
      }
    }
    t1 = t2;
  }
  if (a >= 0.0f)
  {
    return t1;
  }
  a = fabsf(a);
  i1 = floorf(a);
  if (a == i1)
  {
    return t10;
  }
  if (a < 1e-19f)
  {
    float t6 = a;
    float m, r, i2;
    int e;

    i2 = 0.0f;
    if (t6 < 1.175494351e-38f)
    {
      t6 = t6 * 8388608.0f;
      i2 = -23.0f;
    }
    int t7 = *(int *)&t6;
    e = (t7 - 0x3f2aaaab) & 0xff800000;
    int t8 = t7 - e;
    m = *(float *)&t8;
    i2 = fmaf((float)e, 1.19209290e-7f, i2);
    m = m - 1.0f;
    r = -1.30188569e-1f;
    r = fmaf(r, m, 1.40846103e-1f); 
    r = fmaf(r, m, -1.21486276e-1f);
    r = fmaf(r, m, 1.39806107e-1f); 
    r = fmaf(r, m, -1.66842356e-1f);
    r = fmaf(r, m, 2.00122997e-1f); 
    r = fmaf(r, m, -2.49996692e-1f);
    r = fmaf(r, m, 3.33331823e-1f); 
    r = fmaf(r, m, -5.00000000e-1f);
    r = r * m;
    r = fmaf(r, m, m);               
    r = fmaf(i2, 6.93147182e-01f, r);
    if (((unsigned)t7) >= 0x7f800000U)
    {
      r = fmaf(t6, t10, t10);
    }
    if (t6 == 0.0f)
    {
      r = -t10;
    }
    return -r;
  }
  i1 = roundf(2.0f * a);
  quot = (int)i1;
  i1 = fmaf(-i1, 0.5f, a);
  i1 = i1 * 3.141592654f;

  {
    float x = i1;
    int i3 = quot;
    float x2, z, m, t;

    x2 = x * x;
    m = i3 & 1 ? 1.0f : x;
    t = fmaf(x2, m, 0.0f);                                                      
    z = i3 & 1 ? fmaf(2.42795795e-05f, x2, -1.38878601e-03f) : -1.95746587e-04f;
    z = fmaf(z, x2, i3 & 1 ? 4.16667275e-02f : 8.33270326e-03f);                
    z = fmaf(z, x2, i3 & 1 ? -4.99999970e-01f : -1.66666627e-01f);              
    z = fmaf(z, t, m);                                                          
    if (i3 & 2)
    {
      z = fmaf(z, -1.0f, 0.0f);
    }
    i1 = z;
  }
  i1 = fabsf(i1);
  {
    float t6 = i1 * a;
    float m, r, i2;
    int e;

    i2 = 0.0f;
    if (t6 < 1.175494351e-38f)
    {
      t6 = t6 * 8388608.0f;
      i2 = -23.0f;
    }
    int t7 = *(int *)&t6;
    e = (t7 - 0x3f2aaaab) & 0xff800000;
    int t8 = t7 - e;
    m = *(float *)&t8;
    i2 = fmaf((float)e, 1.19209290e-7f, i2);
    m = m - 1.0f;
    r = -1.30188569e-1f;
    r = fmaf(r, m, 1.40846103e-1f); 
    r = fmaf(r, m, -1.21486276e-1f);
    r = fmaf(r, m, 1.39806107e-1f); 
    r = fmaf(r, m, -1.66842356e-1f);
    r = fmaf(r, m, 2.00122997e-1f); 
    r = fmaf(r, m, -2.49996692e-1f);
    r = fmaf(r, m, 3.33331823e-1f); 
    r = fmaf(r, m, -5.00000000e-1f);
    r = r * m;
    r = fmaf(r, m, m);               
    r = fmaf(i2, 6.93147182e-01f, r);
    if (((unsigned)t7) >= 0x7f800000U)
    {
      r = fmaf(t6, t10, t10);
    }
    if (t6 == 0.0f)
    {
        r = -t10;
    }
    return 1.144729886f - r - t1;
  }
}

__DEVICE__
long long int llrintf(float __x) { return __ocml_rint_f32(__x); }

__DEVICE__
long long int llroundf(float __x) { return __ocml_round_f32(__x); }

__DEVICE__
float log10f(float __x) { 
  float a = __x;
  float m, r, i;
  int e;

  i = 0.0f;
  if (a < 1.175494351e-38f)
  {
    a = a * 8388608.0f;
    i = -23.0f;
  }
  e = (bitcast_float2int(a) - 0x3f2aaaab) & 0xff800000;
  m = bitcast_int2float(bitcast_float2int(a) - e);
  i = fmaf((float)e, 1.19209290e-7f, i);
  m = m - 1.0f;
  r = -1.30188569e-1f;
  r = fmaf(r, m, 1.40846103e-1f);
  r = fmaf(r, m, -1.21486276e-1f);
  r = fmaf(r, m, 1.39806107e-1f);
  r = fmaf(r, m, -1.66842356e-1f);
  r = fmaf(r, m, 2.00122997e-1f);
  r = fmaf(r, m, -2.49996692e-1f);
  r = fmaf(r, m, 3.33331823e-1f);
  r = fmaf(r, m, -5.00000000e-1f);
  r = r * m;
  r = fmaf(r, m, m);
  r = fmaf(i, 6.93147182e-01f, r);
  if (((unsigned)bitcast_float2int(a)) >= 0x7f800000U)
  {
    r = fmaf(a, bitcast_int2float(0x7f800000), bitcast_int2float(0x7f800000));
  }
  if (a == 0.0f)
  {
    r = -bitcast_int2float(0x7f800000);
  }

  return 0.434294482f * r;
}

__DEVICE__
float log1pf(float __x) {
  float m, r, s, i;
  int e;

  m = __x + 1.0f;
  __Float32IntUnion tmp_m, tmp_a, tmp_sub, tmp_e, tmp4;
  tmp_m.f = m;
  e = (tmp_m.i - 0x3f400000) & 0xff800000;
  tmp_a.f = __x;
  tmp_sub.i = tmp_a.i - e;
  m = tmp_sub.f;
  tmp4.f = 4.0f;
  tmp_e.i = tmp4.i - e;
  s = tmp_e.f;
  m = m + fmaf(0.25f, s, -1.0f);
  i = (float)e * 1.19209290e-7f;

  r = -4.53486145e-2f;
  r = fmaf(r, m, 1.05468884e-1f);
  r = fmaf(r, m, -1.32297039e-1f);
  r = fmaf(r, m, 1.44914463e-1f);
  r = fmaf(r, m, -1.66415647e-1f);
  r = fmaf(r, m, 1.99888676e-1f);
  r = fmaf(r, m, -2.50001967e-1f);
  r = fmaf(r, m, 3.33335102e-1f);
  r = fmaf(r, m, -5.00000000e-1f);
  r = r * m;
  r = fmaf(r, m, m);
  r = fmaf(i, 6.93147182e-01f, r);

  __Float32IntUnion tmp_a2;
  tmp_a2.f = __x;
  if (((unsigned)tmp_a2.i) >= 0x7f800000U) {
    if (((int)tmp_a2.i) > (int)0xbf800000) {
      r = fmaf(__x, __builtin_inff(), __builtin_inff());
    }
    if (__x == 0.0f) {
      r = -0.0f;
    }
  }
  return r;
}

__DEVICE__ float bitcast_int2float(int __x) {
  void *p = &__x;
  return *(float *)p;
}

__DEVICE__ int bitcast_float2int(float __x) {
  void *p = &__x;
  return *(int *)p;
}

// Accuracy compensation of log2_f32 using polynomial fitting.
// It can be referred to:
// https://ku.baidu-int.com/knowledge/HFVrC7hq1Q/FTlz9IbpJx/_w9hCUBV-i/WG_M6iBt_Bg9mF
__DEVICE__ float xcn_log2f(float __x) {
  float m, r, i; 
  int e; 

  const uint32_t INF_F = 0x7f800000;

  i = 0.0f; 
  if (__x < 1.175494351e-38f){ // 0x1.0p-126 
      __x = __x * 8388608.0f; // 0x1.0p+23 
      i = -23.0f; 
  } 
  e = (bitcast_float2int (__x) - 0x3f3504f3) & 0xff800000; 
  m = bitcast_int2float (bitcast_float2int (__x) - e); 
  i = fmaf ((float)e, 1.19209290e-7f, i); // 0x1.0p-23 
  m = m - 1.0f; 
  /* Compute log2(1+m) for m in [sqrt(0.5)-1, sqrt(2.0)-1] */ 
  r =              9.70201418e-2f;  //  0x1.8d64fep-4 
  r = fmaf (r, m, -1.68453932e-1f); // -0x1.58fe60p-3 
  r = fmaf (r, m,  1.71688706e-1f); //  0x1.5f9e54p-3 
  r = fmaf (r, m, -1.79009482e-1f);
  r = fmaf (r, m,  2.05123723e-1f); //  0x1.a417e8p-3 
  r = fmaf (r, m, -2.40465328e-1f); // -0x1.ec7916p-3 
  r = fmaf (r, m,  2.88571149e-1f); //  0x1.277f32p-2 
  r = fmaf (r, m, -3.60674173e-1f); // -0x1.715492p-2 
  r = fmaf (r, m,  4.80898201e-1f); //  0x1.ec7094p-2 
  r = fmaf (r, m, -7.21347511e-1f); // -0x1.715476p-1 
  r = r * m; 
  r = r * m; 
  r = fmaf (m, 1.44269502e+00f, r); //  0x1.715476p+0  // log2(e) 
  r = r + i; 

  if ( bitcast_float2int(__x) >= 0x7f800000U ) {
      r = fmaf(__x, bitcast_int2float(INF_F), bitcast_int2float(INF_F));
  }
  if (__x == 0.0f) {
      r = -bitcast_int2float(INF_F);
  }
  return r;
}

__DEVICE__
float log2f(float __x) {
  // The range comes from test result in
  // https://ku.baidu-int.com/knowledge/HFVrC7hq1Q/BeQck0ZK7s/sKC-p47Gj-/7X3c_7eosN5-91
  // uint32_t tmp = bitcast_float2int(__x);
  // if ((tmp >> 24) == 0x3F)
  //   return xcn_log2f(__x);
  // else
  //   return __ocml_log2_f32(__x);
  return xcn_log2f(__x);
}

__DEVICE__
float logbf(float __x) { return __ocml_logb_f32(__x); }

__DEVICE__
float logf(float __x) {
    float input = __x;
    float rs = 0.0f;
    // When the input is denormal, it is converted to normal.
    if(input < bitcast_int2float(0x00800000)) {
        input *= bitcast_int2float(0x4B000000); // data * 2^23
        rs = bitcast_int2float(0xC1B80000); // -23
    }

    // polynomial fitting
    uint32_t r1 = bitcast_float2int(input);
    int32_t r2 = (r1 - 1059760811) & 0xFF800000;
    int32_t r3 = r1 - r2;

    float f = bitcast_int2float(r3);
    float k = fmaf(static_cast<float>(r2), bitcast_int2float(0x34000000), rs);
    f = f - 1.0f;

    float t = fmaf(bitcast_int2float(0xBE055027), f, bitcast_int2float(0x3E1039F6));
    t = fmaf(t, f, bitcast_int2float(0xBDF8CDCC));
    t = fmaf(t, f, bitcast_int2float(0x3E0F2955));
    t = fmaf(t, f, bitcast_int2float(0xBE2AD8B9));
    t = fmaf(t, f, bitcast_int2float(0x3E4CED0B));
    t = fmaf(t, f, bitcast_int2float(0xBE7FFF22));
    t = fmaf(t, f, bitcast_int2float(0x3EAAAA78));
    t = fmaf(t, f, bitcast_int2float(0xBF000000));
    t = f * t;
    t = fmaf(t, f, f);

    float result = fmaf(k, bitcast_int2float(0x3F317218), t);
    if (!(r1 < 2139095040)) {
        float inf = bitcast_int2float(0x7F800000);
        // +inf -> +inf; nan -> nan, -inf -> nan, -0 -> nan
        result = fmaf(input, inf, inf);
    }

    result = (input == 0.0f) ? bitcast_int2float(0xFF800000) : result;
    return result;
}

__DEVICE__
long int lrintf(float __x) { return __ocml_rint_f32(__x); }

__DEVICE__
long int lroundf(float __x) { return __ocml_round_f32(__x); }

__DEVICE__
float modff(float __x, float *__iptr) {
  float __tmp;
#ifdef __OPENMP_AMDGCN__
#pragma omp allocate(__tmp) allocator(omp_thread_mem_alloc)
#endif
  float __r =
      __ocml_modf_f32(__x, (__attribute__((address_space(5))) float *)&__tmp);
  *__iptr = __tmp;
  return __r;
}

__DEVICE__
float nanf(const char *__tagp) {
  union {
    float val;
    struct ieee_float {
      unsigned int mantissa : 22;
      unsigned int quiet : 1;
      unsigned int exponent : 8;
      unsigned int sign : 1;
    } bits;
  } __tmp;
  __static_assert_type_size_equal(sizeof(__tmp.val), sizeof(__tmp.bits));

  __tmp.bits.sign = 0u;
  __tmp.bits.exponent = ~0u;
  __tmp.bits.quiet = 1u;
  __tmp.bits.mantissa = __make_mantissa(__tagp);

  return __tmp.val;
}

__DEVICE__
float nearbyintf(float __x) { return __ocml_nearbyint_f32(__x); }

__DEVICE__
float nextafterf(float __x, float __y) {
  return __ocml_nextafter_f32(__x, __y);
}

__DEVICE__
float norm3df(float __x, float __y, float __z) {
  return __ocml_len3_f32(__x, __y, __z);
}

__DEVICE__
float norm4df(float __x, float __y, float __z, float __w) {
  return __ocml_len4_f32(__x, __y, __z, __w);
}

__DEVICE__
float normcdff(float __x) { return __ocml_ncdf_f32(__x); }

__DEVICE__
float normcdfinvf(float __x) { return __ocml_ncdfinv_f32(__x); }

__DEVICE__
float normf(int __dim, const float *__a) {
  float res0 = 0.0f, res, largest = fabsf(__a[0]);
  int i = 0, j = 0;

  for (i = 1; i < __dim; i++)
    largest = fmaxf(fabsf(__a[i]), largest);

  __Float32IntUnion tmp_expx, tmp_divisor;
  tmp_expx.f = largest;
  int expx = (tmp_expx.i & 0xfe000000) - (127 << 23) + (1 << 23);
  tmp_divisor.i = (127 << 23) - expx;
  float divisor = tmp_divisor.f;
  float largest_div = largest * divisor;

  for (i = 0; i < __dim; i++) {
    float tmp = fabsf(__a[i]) * divisor;
    if (tmp != largest_div || i != j) {
      res0 = fmaf(tmp, tmp, res0);
      ++j;
    }
  }

  res = fmaf(largest_div, largest_div, res0);
  __Float32IntUnion tmp_res;
  tmp_res.i = expx + (127 << 23);
  res = sqrtf(res) * tmp_res.f;

  if (res0 == 0.0f || largest == __builtin_inff())
    res = largest;

  return res;
}

__DEVICE__
float powf(float __x, float __y) { return __ocml_pow_f32(__x, __y); }

__DEVICE__
float powif(float __x, int __y) { return __ocml_pown_f32(__x, __y); }

__DEVICE__
float rcbrtf(float __x) { return __ocml_rcbrt_f32(__x); }

__DEVICE__
float remainderf(float __x, float __y) {
  return __ocml_remainder_f32(__x, __y);
}

__DEVICE__
float remquof(float __x, float __y, int *__quo) {
  int __tmp;
#ifdef __OPENMP_AMDGCN__
#pragma omp allocate(__tmp) allocator(omp_thread_mem_alloc)
#endif
  float __r = __ocml_remquo_f32(
      __x, __y, (__attribute__((address_space(5))) int *)&__tmp);
  *__quo = __tmp;

  return __r;
}

__DEVICE__
float rhypotf(float __x, float __y) { return __ocml_rhypot_f32(__x, __y); }

__DEVICE__
float rintf(float __x) { return __ocml_rint_f32(__x); }

__DEVICE__
float rnorm3df(float __x, float __y, float __z) {
  return __ocml_rlen3_f32(__x, __y, __z);
}

__DEVICE__
float rnorm4df(float __x, float __y, float __z, float __w) {
  return __ocml_rlen4_f32(__x, __y, __z, __w);
}

__DEVICE__
float rnormf(int __dim,
             const float *__a) { // TODO: placeholder until OCML adds support.
  float __r = 0;
  while (__dim--) {
    __r += __a[0] * __a[0];
    ++__a;
  }

  return __ocml_rsqrt_f32(__r);
}

__DEVICE__
float roundf(float __x) { return __ocml_round_f32(__x); }

__DEVICE__
float rsqrtf(float __x) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ < 5)
  float input = __x;
  float value, a;

  if (input < bitcast_int2float(0x0D800000))
  {
    value = input * bitcast_int2float(0x71800000);
    a = bitcast_int2float(0x58800000);
  }
  else {
    value = input;
    a = 1.0f;
  }

  value = 1.0f / value;

  value = __builtin_sqrtf(value);

  value = value * a;

  if (input == 0.0f)
    value = bitcast_int2float(0x7f800000 | __builtin_bit_cast(int, input));
  else if (input < 0.0f)
    value = bitcast_int2float(0x7fc00000);

  return value; 
#else
  return __ocml_rsqrt_f32(__x);
#endif
}

__DEVICE__
float scalblnf(float __x, long int __n) {
  return (__n < INT_MAX) ? __ocml_scalbn_f32(__x, __n)
                         : __ocml_scalb_f32(__x, __n);
}

__DEVICE__
float scalbnf(float __x, int __n) { return __ocml_scalbn_f32(__x, __n); }

__DEVICE__
__RETURN_TYPE __signbitf(float __x) { return __ocml_signbit_f32(__x); }

__DEVICE__
void sincosf(float __x, float *__sinptr, float *__cosptr) {
  float __tmp;
#ifdef __OPENMP_AMDGCN__
#pragma omp allocate(__tmp) allocator(omp_thread_mem_alloc)
#endif
  *__sinptr =
      __ocml_sincos_f32(__x, (__attribute__((address_space(5))) float *)&__tmp);
  *__cosptr = __tmp;
}

__DEVICE__
void sincospif(float __x, float *__sinptr, float *__cosptr) {
  float __tmp;
#ifdef __OPENMP_AMDGCN__
#pragma omp allocate(__tmp) allocator(omp_thread_mem_alloc)
#endif
  *__sinptr = __ocml_sincospi_f32(
      __x, (__attribute__((address_space(5))) float *)&__tmp);
  *__cosptr = __tmp;
}

__DEVICE__
float sinf(float __x) {
  // Return input if it is the negative zero value
  if (*(uint32_t*)&__x == 0x80000000) {
    return __x;
  }

  // Constants for the computation
  const unsigned int LUT[6] = {0x3c439041, 0xdb629599, 0xf534ddc0, 0xfc2757d1, 0x4e441529, 0xa2f9836e};
  unsigned int inter_var[7];
  const float boundary_point = 105615.0f;

  // Variable declarations
  int bin_x;
  float quo_by_pi_2;
  int quo_int;
  float quo_fp;
  float quo_fix_1, quo_fix_2, quo_fix_final;
  float abs_x;
  int exp, exp_tmp1, exp_tmp2, exp_tmp3, exp_tmp4, exp_tmp5;
  unsigned int exp_unbias, sig_full;
  uint64_t iter_add, mad_res;
  unsigned int gen_part1, gen_part2, sign, sign_gold, gen_part_concat, gen_part_concat_sign;
  int gen_part1_partial_sum, sign_inter;
  unsigned int xor_part_hi, xor_part_lo;
  uint64_t xor_u64;
  double xor_f64;
  bool quo_int_lsb_even;
  float final_coef1, quo_fix_final_sq, final_iter_1, final_iter_2, final_iter_3, final_res;

  // Floating-point constants initialized using union type
  __Float32IntUnion fconst0, fconst1, fconst3, fconst4, fconst5, fconst6, fconst7, fconst8, fconst9, NEG_PI_OVER_TWO, TWO_OVER_PI;
  __Float64IntUnion fconst2;
  
  fconst0.i = 0xB3A22168;
  fconst1.i = 0xA7C234C5;
  fconst2.i = 0x3BF921FB54442D19;
  fconst3.i = 0xB94D4153;
  fconst4.i = 0xBAB607ED;
  fconst5.i = 0x37CBAC00;
  fconst6.i = 0x3C0885E4;
  fconst7.i = 0x3D2AAABB;
  fconst8.i = 0xBE2AAAA8;
  fconst9.i = 0xBEFFFFFF;
  NEG_PI_OVER_TWO.i = 0xBFC90FDA;
  TWO_OVER_PI.i = 0x3F22F983;

  // Convert float input to integer representation
  bin_x = *reinterpret_cast<int*>(&__x);

  // Compute the quotient of input by π/2
  quo_by_pi_2 = __x * TWO_OVER_PI.f;
  asm volatile("v_rndne_f32 %0, %1" : "=v"(quo_fp) : "v"(quo_by_pi_2));
  quo_int = static_cast<int>(quo_fp);

  // Compute the fixed-point remainder
  quo_fix_1 = __x + NEG_PI_OVER_TWO.f * quo_fp;
  quo_fix_2 = quo_fix_1 + fconst0.f * quo_fp;
  quo_fix_final = quo_fix_2 + fconst1.f * quo_fp;

  // Compute absolute value of input
  abs_x = __ocml_fabs_f32(__x);

  // Handle special cases for input
  if (__ocml_isinf_f32(__x)) {
    quo_fix_final = __builtin_nanf("");
    quo_int = 0;
  } else if ((abs_x >= boundary_point) && (!__ocml_isnan_f32(__x))) {
    // Handle large input values
    exp = (bin_x >> 23) & 0xFF;
    exp_unbias = exp - 128;
    sig_full = (bin_x << 8) | (1 << 31);
    exp_tmp1 = exp_unbias >> 5;
    iter_add = 0;

    // Iterate over LUT for large input handling
    for (int i = 0; i < 6; i++) {
      mad_res = static_cast<uint64_t>(LUT[i]) * static_cast<uint64_t>(sig_full) + iter_add;
      iter_add = mad_res >> 32;
      inter_var[i] = static_cast<unsigned int>(mad_res);
    }
    inter_var[6] = iter_add;

    exp_tmp2 = 4 - exp_tmp1;
    exp_tmp3 = 6 - exp_tmp1;
    gen_part1 = inter_var[exp_tmp3];
    gen_part2 = inter_var[exp_tmp3-1];
    exp_tmp4 = exp_unbias & 0x1F;
    if (exp_tmp4) {
      exp_tmp5 = 32 - exp_tmp4;
      gen_part1 = (gen_part2 >> exp_tmp5) + (gen_part1 << exp_tmp4);
      gen_part2 = (inter_var[exp_tmp2] >> exp_tmp5) + (gen_part2 << exp_tmp4);
    }

    sign = bin_x & (1 << 31);
    gen_part_concat = (gen_part2 >> 30) | (gen_part1 << 2);
    gen_part_concat_sign = gen_part_concat >> 31;
    gen_part1_partial_sum = gen_part_concat_sign + (gen_part1 >> 30);
    quo_int = sign ? -gen_part1_partial_sum : gen_part1_partial_sum;

    sign_gold = gen_part_concat_sign ? (sign ^ 0x80000000) : sign;
    sign_inter = gen_part_concat_sign ? -1 : 0;
    xor_part_hi = gen_part_concat ^ sign_inter;
    xor_part_lo = (gen_part2 << 2) ^ sign_inter;
    xor_u64 = (static_cast<uint64_t>(xor_part_hi) << 32) | xor_part_lo;
    xor_f64 = xor_u64 * fconst2.f;
    quo_fix_final = sign_gold ? -xor_f64 : xor_f64;
  }

  // Fast path computation
  quo_int_lsb_even = (quo_int & 1) == 0;
  final_coef1 = quo_int_lsb_even ? quo_fix_final : 1.0f;
  quo_fix_final_sq = quo_fix_final * quo_fix_final;
  if (!quo_int_lsb_even) {
    fconst3.f = fconst5.f * quo_fix_final_sq + fconst4.f;
  }

  // Polynomial approximation for sine calculation
  final_iter_1 = fconst3.f * quo_fix_final_sq + (quo_int_lsb_even ? fconst6.f : fconst7.f);
  final_iter_2 = final_iter_1 * quo_fix_final_sq + (quo_int_lsb_even ? fconst8.f : fconst9.f);
  final_iter_3 = (final_coef1 * quo_fix_final_sq) * final_iter_2 + final_coef1;
  final_res = (quo_int & 2) ? -final_iter_3 : final_iter_3;
  
  return final_res;
}

__DEVICE__
float sinhf(float __x) { return __ocml_sinh_f32(__x); }

__DEVICE__
float sinpif(float __x) { return __ocml_sinpi_f32(__x); }

__DEVICE__
float sqrtf(float __x) { return __ocml_sqrt_f32(__x); }

__DEVICE__ float __fmul_rn(float __x, float __y);
typedef struct {
  unsigned int x;
  unsigned int y;
} tmp_uint2;
static __constant__ unsigned int __cudart_i2opi_f[] = {
    0x3c439041, 0xdb629599, 0xf534ddc0, 0xfc2757d1, 0x4e441529, 0xa2f9836e,
};
__device__ float internal_trig_reduction_slowpath(float a, int *quadrant) {
  tmp_uint2 p;
  __Float32IntUnion converter;
  converter.f = a;
  unsigned int ia = converter.i;
  unsigned int s = ia & 0x80000000;
  unsigned int result[7];
  unsigned int hi, lo;
  unsigned int e;
  int idx;
  int q;
  e = ((ia >> 23) & 0xff) - 128;
  ia = (ia << 8) | 0x80000000;
  idx = 4 - (e >> 5);
  hi = 0;
#pragma unroll 1
  for (q = 0; q < 6; q++) {
    {
      unsigned int a = __cudart_i2opi_f[q];
      unsigned int b = ia;
      unsigned int c = hi;
      tmp_uint2 res;
      unsigned long long prod = (unsigned long long)a * b + c;
      res.x = (unsigned int)(prod & 0xFFFFFFFFu);
      res.y = (unsigned int)((prod >> 32) & 0xFFFFFFFFu);
      p = res;
    }
    lo = p.x;
    hi = p.y;
    result[q] = lo;
  }
  result[q] = hi;
  e = e & 31;
  hi = result[idx + 2];
  lo = result[idx + 1];
  if (e) {
    q = 32 - e;
    hi = (hi << e) + (lo >> q);
    lo = (lo << e) + (result[idx] >> q);
  }
  q = hi >> 30;
  hi = (hi << 2) + (lo >> 30);
  lo = (lo << 2);
  e = hi >> 31;
  q += e;
  if (s)
    q = -q;
  *quadrant = q;
  if (e) {
    unsigned int t;
    hi = ~hi;
    lo = -(int)lo;
    t = (lo == 0);
    hi += t;
    s = s ^ 0x80000000;
  }

  double d = (long long)((unsigned long long)hi << 32 | lo);
  d *= 8.5153039502163873e-20;
  float r = (float)d;
  if (s)
    r = -r;
  return r;
}
__DEVICE__
float tanf(float __x) {
#if !defined(__XPU5__)
  if (__x == -0.0f || __x == 0.0f) {
    return __x;
  }
#endif

  float z;
  int i;
  {
    int *quadrant = &i;
    float j, t;
    *quadrant = roundf(__x * 0.63661977236758134308f);
    j = (float)*quadrant;
    t = fmaf(j, -1.5707962512969971e+000f, __x);
    t = fmaf(j, -7.5497894158615964e-008f, t);
    t = fmaf(j, -5.3903029534742384e-015f, t);
    if (fabsf(__x) > 105615.0f) {
      t = fabsf(__x) == __builtin_inff()
              ? (__x * 0.0f)
              : internal_trig_reduction_slowpath(__x, quadrant);
    }
    z = t;
  }

  {
    float a2, s, t;
    a2 = z * z;
    t = 9.33837890e-03f;
    t = fmaf(t, a2, 3.26538086e-03f);
    t = fmaf(t, a2, 2.42919922e-02f);
    t = fmaf(t, a2, 5.34667969e-02f);
    t = fmaf(t, a2, 1.33377910e-01f);
    t = fmaf(t, a2, 3.33332300e-01f);
    t = fmaf(t, __fmul_rn(a2, z), z);

    if (fabsf(z) == 4.90966952e-04f) {
      t = z;
    }
    z = t;
  }

  if (i & 1) {
    float r = 1.0f / z;
    z = -r;
  }
  return z;
}

__DEVICE__
float tanhf(float __x) { return __ocml_tanh_f32(__x); }

// CUDA's low-precision tanh intrinsic, lowered to a single hardware
// instruction on supported NVIDIA architectures.
// Jupiter has no corresponding instruction, so for now we reuse the same
// algorithm as tanhf (via __ocml_tanh_f32) as a functional fallback.
__DEVICE__
float __tanhf(float __x) { return __ocml_tanh_f32(__x); }

__DEVICE__
float tgammaf(float __x) { return __ocml_tgamma_f32(__x); }

__DEVICE__
float truncf(float __x) { return __ocml_trunc_f32(__x); }

__DEVICE__
float y0f(float __x) { return __ocml_y0_f32(__x); }

__DEVICE__
float y1f(float __x) { return __ocml_y1_f32(__x); }

__DEVICE__
float ynf(int __n, float __x) { // TODO: we could use Ahmes multiplication
                                // and the Miller & Brown algorithm
  //       for linear recurrences to get O(log n) steps, but it's unclear if
  //       it'd be beneficial in this case. Placeholder until OCML adds
  //       support.
  if (__n == 0)
    return y0f(__x);
  if (__n == 1)
    return y1f(__x);

  float __x0 = y0f(__x);
  float __x1 = y1f(__x);
  for (int __i = 1; __i < __n; ++__i) {
    float __x2 = (2 * __i) / __x * __x1 - __x0;
    __x0 = __x1;
    __x1 = __x2;
  }

  return __x1;
}

// BEGIN INTRINSICS

__DEVICE__
float __cosf(float __x) {
  #if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    return cosf(__x);
  #else
    return __ocml_native_cos_f32(__x);
  #endif
}

__DEVICE__
float __exp10f(float __x) { return __ocml_native_exp10_f32(__x); }

__DEVICE__
float __expf(float __x) { return __ocml_native_exp_f32(__x); }

enum RoundMode {
    RN = 0, // nearest even, default
    RU = 1, // toward infinity
    RD = 2, // toward -infinity
    RZ = 3  // toward zero
};

#define SET_ROUND_MODE(mode) do { \
    uint32_t reg; \
    asm volatile("s_getreg_b32 %0, hwreg(HW_REG_MODE)":"=r"(reg)); \
    reg = (reg & 0xfffffffc) | (mode); \
    asm volatile("s_setreg_b32 hwreg(HW_REG_MODE), %0"::"r"(reg)); \
} while (0)

__device__ float __ocml_add_rtn_f32(float __x, float __y) {
  SET_ROUND_MODE(RD);
  float res = __x + __y;
  SET_ROUND_MODE(RN);
  return res;
}
__device__ float __ocml_add_rtp_f32(float __x, float __y) {
  SET_ROUND_MODE(RU);
  float res = __x + __y;
  SET_ROUND_MODE(RN);
  return res;
}
__device__ float __ocml_add_rtz_f32(float __x, float __y) {
  SET_ROUND_MODE(RZ);
  float res = __x + __y;
  SET_ROUND_MODE(RN);
  return res;
}
__DEVICE__
float __fadd_rd(float __x, float __y) { return __ocml_add_rtn_f32(__x, __y); }
__DEVICE__
float __fadd_rn(float __x, float __y) { return __x + __y; }
__DEVICE__
float __fadd_ru(float __x, float __y) { return __ocml_add_rtp_f32(__x, __y); }
__DEVICE__
float __fadd_rz(float __x, float __y) { return __ocml_add_rtz_f32(__x, __y); }


#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
__device__ float __ocml_div_rtn_f32(float __x, float __y) {
  SET_ROUND_MODE(RD);
  float res = __x / __y;
  SET_ROUND_MODE(RN);
  return res;
}
__device__ float __ocml_div_rtp_f32(float __x, float __y) {
  SET_ROUND_MODE(RU);
  float res = __x / __y;
  SET_ROUND_MODE(RN);
  return res;
}
__device__ float __ocml_div_rtz_f32(float __x, float __y) {
  SET_ROUND_MODE(RZ);
  float res = __x / __y;
  SET_ROUND_MODE(RN);
  return res;
}
#endif

#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
__DEVICE__
float __fdiv_rd(float __x, float __y) { return __ocml_div_rtn_f32(__x, __y); }
__DEVICE__
float __fdiv_ru(float __x, float __y) { return __ocml_div_rtp_f32(__x, __y); }
__DEVICE__
float __fdiv_rz(float __x, float __y) { return __ocml_div_rtz_f32(__x, __y); }
#else
__DEVICE__
float __fdiv_rd(float __x, float __y) { return __x / __y; }
__DEVICE__
float __fdiv_ru(float __x, float __y) { return __x / __y; }
__DEVICE__
float __fdiv_rz(float __x, float __y) { return __x / __y; }
#endif
__DEVICE__
float __fdiv_rn(float __x, float __y) { return __x / __y; }

__DEVICE__
float __fdividef(float __x, float __y) { return __x / __y; }

#if defined OCML_BASIC_ROUNDED_OPERATIONS
__device__ float __ocml_fma_rtn_f32(float __x, float __y, float __z) {
  SET_ROUND_MODE(RD);
  float res = __ocml_fma_f32(__x, __y, __z);
  SET_ROUND_MODE(RN);
  return res;
}
__device__ float __ocml_fma_rtp_f32(float __x, float __y, float __z) {
  SET_ROUND_MODE(RU);
  float res = __ocml_fma_f32(__x, __y, __z);
  SET_ROUND_MODE(RN);
  return res;
}
__device__ float __ocml_fma_rtz_f32(float __x, float __y, float __z) {
  SET_ROUND_MODE(RZ);
  float res = __ocml_fma_f32(__x, __y, __z);
  SET_ROUND_MODE(RN);
  return res;
}
__DEVICE__
float __fmaf_rd(float __x, float __y, float __z) {
  return __ocml_fma_rtn_f32(__x, __y, __z);
}
__DEVICE__
float __fmaf_rn(float __x, float __y, float __z) {
  return __ocml_fma_f32(__x, __y, __z);;
}
__DEVICE__
float __fmaf_ru(float __x, float __y, float __z) {
  return __ocml_fma_rtp_f32(__x, __y, __z);
}
__DEVICE__
float __fmaf_rz(float __x, float __y, float __z) {
  return __ocml_fma_rtz_f32(__x, __y, __z);
}
__DEVICE__
float __fmaf_ieee_rd(float __x, float __y, float __z) {
  return __ocml_fma_rtn_f32(__x, __y, __z);
}
__DEVICE__
float __fmaf_ieee_rn(float __x, float __y, float __z) {
  return __ocml_fma_f32(__x, __y, __z);
}
__DEVICE__
float __fmaf_ieee_ru(float __x, float __y, float __z) {
  return __ocml_fma_rtp_f32(__x, __y, __z);
}
__DEVICE__
float __fmaf_ieee_rz(float __x, float __y, float __z) {
  return __ocml_fma_rtz_f32(__x, __y, __z);
}
#else
__DEVICE__
float __fmaf_rn(float __x, float __y, float __z) {
  return __ocml_fma_f32(__x, __y, __z);
}
__DEVICE__
float __fmaf_ieee_rn(float __x, float __y, float __z) {
  return __ocml_fma_f32(__x, __y, __z);
}
#endif

__device__ float __ocml_mul_rtn_f32(float __x, float __y) {
  SET_ROUND_MODE(RD);
  float res = __x * __y;
  SET_ROUND_MODE(RN);
  return res;
}
__device__ float __ocml_mul_rtp_f32(float __x, float __y) {
  SET_ROUND_MODE(RU);
  float res = __x * __y;
  SET_ROUND_MODE(RN);
  return res;
}
__device__ float __ocml_mul_rtz_f32(float __x, float __y) {
  SET_ROUND_MODE(RZ);
  float res = __x * __y;
  SET_ROUND_MODE(RN);
  return res;
}
__DEVICE__
float __fmul_rd(float __x, float __y) { return __ocml_mul_rtn_f32(__x, __y); }
__DEVICE__
float __fmul_rn(float __x, float __y) { return __x * __y; }
__DEVICE__
float __fmul_ru(float __x, float __y) { return __ocml_mul_rtp_f32(__x, __y); }
__DEVICE__
float __fmul_rz(float __x, float __y) { return __ocml_mul_rtz_f32(__x, __y); }

// XPU6 helper implementation for public __frcp_* wrappers.
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
// These helpers temporarily switch HW_REG_MODE, execute v_fma_f32, then
// restore the original mode. They intentionally do not use SET_ROUND_MODE:
// that macro restores RN, while reciprocal helpers must preserve the caller's
// mode and sometimes group consecutive rounded FMAs under one save/restore.
#define __XPU6_FRCP_FMA_ROUND(__mode, __x, __y, __z, __out) do { \
  uint32_t __xpu6_frcp_old; \
  asm volatile("s_getreg_b32 %0, hwreg(HW_REG_MODE)\n\t" \
               : "=&s"(__xpu6_frcp_old)); \
  asm volatile("s_setreg_b32 hwreg(HW_REG_MODE,0,2), %0\n\t" \
               : : "s"(__mode)); \
  asm volatile("v_fma_f32 %0, %1, %2, %3\n\t" \
               : "=v"(__out) : "v"(__x), "v"(__y), "v"(__z)); \
  asm volatile("s_setreg_b32 hwreg(HW_REG_MODE), %0\n\t" \
               : : "s"(__xpu6_frcp_old)); \
} while (0)

#define __XPU6_FRCP_NEWTON_ROUND(__mode, __x, __r0, __out) do { \
  uint32_t __xpu6_frcp_old; \
  float __xpu6_frcp_e_raw; \
  float __xpu6_frcp_e; \
  float __xpu6_frcp_neg_one = -1.0f; \
  asm volatile("s_getreg_b32 %0, hwreg(HW_REG_MODE)\n\t" \
               : "=&s"(__xpu6_frcp_old)); \
  asm volatile("s_setreg_b32 hwreg(HW_REG_MODE,0,2), %0\n\t" \
               : : "s"(__mode)); \
  asm volatile("v_fma_f32 %0, %1, %2, %3\n\t" \
               : "=v"(__xpu6_frcp_e_raw) \
               : "v"(__x), "v"(__r0), "v"(__xpu6_frcp_neg_one)); \
  __xpu6_frcp_e = -__xpu6_frcp_e_raw; \
  asm volatile("v_fma_f32 %0, %1, %2, %3\n\t" \
               : "=v"(__out) \
               : "v"(__r0), "v"(__xpu6_frcp_e), "v"(__r0)); \
  asm volatile("s_setreg_b32 hwreg(HW_REG_MODE), %0\n\t" \
               : : "s"(__xpu6_frcp_old)); \
} while (0)

#define __XPU6_FRCP_FMA_RD_RU(__x, __y, __z, __rd_out, __ru_out) do { \
  uint32_t __xpu6_frcp_old; \
  asm volatile("s_getreg_b32 %0, hwreg(HW_REG_MODE)\n\t" \
               : "=&s"(__xpu6_frcp_old)); \
  asm volatile("s_setreg_b32 hwreg(HW_REG_MODE,0,2), %0\n\t" \
               : : "s"(RD)); \
  asm volatile("v_fma_f32 %0, %1, %2, %3\n\t" \
               : "=v"(__rd_out) : "v"(__x), "v"(__y), "v"(__z)); \
  asm volatile("s_setreg_b32 hwreg(HW_REG_MODE,0,2), %0\n\t" \
               : : "s"(RU)); \
  asm volatile("v_fma_f32 %0, %1, %2, %3\n\t" \
               : "=v"(__ru_out) : "v"(__x), "v"(__y), "v"(__z)); \
  asm volatile("s_setreg_b32 hwreg(HW_REG_MODE), %0\n\t" \
               : : "s"(__xpu6_frcp_old)); \
} while (0)

__DEVICE__
bool __xpu6_frcp_is_fast_normal(float __x) {
  const unsigned int __exp_mask = 0x7F800000u;
  unsigned int __x_bits = bitcast_float2int(__x);
  // Add 3 to the exponent field before masking. Values whose adjusted
  // exponent is above 0x01ffffff are safe for the fast Newton path; zeros,
  // subnormals, NaNs/Infs, and exponent-boundary cases go to the slow path.
  unsigned int __x_adj = __x_bits + 0x01800000u;
  unsigned int __x_exp_chk = __x_adj & __exp_mask;
  return __x_exp_chk > 0x01FFFFFFu;
}

__DEVICE__
float __xpu6_frcp_rn_slow(float __x) {
  const unsigned int __sign_mask = 0x80000000u;
  const unsigned int __mant_mask = 0x007FFFFFu;
  unsigned int __x_bits = bitcast_float2int(__x);
  unsigned int __x_exp = (__x_bits >> 23) & 0xFFu;

  if (__x_exp == 0) {
    unsigned int __x_mant = __x_bits & __mant_mask;
    if (__x_mant != 0) {
      float __x_norm = __builtin_xcn_ldexpf(__x, 64);
      float __r0 = __builtin_xcn_rcpf(__x_norm);
      float __e_raw = __builtin_fmaf(__x_norm, __r0, -1.0f);
      float __e = -__e_raw;
      float __r1 = __builtin_fmaf(__r0, __e, __r0);
      return __builtin_xcn_ldexpf(__r1, 64);
    }
    return __builtin_xcn_rcpf(__x);
  }

  // Exponents 253 and 254 need explicit mantissa reconstruction because
  // their reciprocals enter the denormal/result-boundary range.
  unsigned int __exp_offset = __x_exp - 253u;
  if (__exp_offset <= 1u) {
    unsigned int __mant = __x_bits & __mant_mask;
    unsigned int __norm_bits = __mant | 0x3F800000u;
    float __x_norm = bitcast_int2float(__norm_bits);
    unsigned int __exp_shift_flag = 3u << (__exp_offset & 0x1Fu);
    float __r0 = __builtin_xcn_rcpf(__x_norm);
    float __e_raw = __builtin_fmaf(__x_norm, __r0, -1.0f);
    float __e = -__e_raw;
    float __r1_lo;
    float __r1_hi;
    __XPU6_FRCP_FMA_RD_RU(__r0, __e, __r0, __r1_lo, __r1_hi);
    unsigned int __r1_lo_bits = bitcast_float2int(__r1_lo);
    bool __rounding_needed = (__r1_lo != __r1_hi);
    unsigned int __mant_with_implicit = (__r1_lo_bits & __mant_mask) | 0x800000u;
    unsigned int __guard = __rounding_needed ? 0xFFFFFFFFu : 0u;
    // Convert the RD/RU disagreement into an all-ones sticky mask used by
    // the following bit tests.
    unsigned int __rounding_sticky_mask = (unsigned int)(-(int)__guard);
    unsigned int __exp_mant = __exp_shift_flag & __mant_with_implicit;
    unsigned int __exp_mant_shifted = __exp_mant >> (__exp_offset & 0x1Fu);
    bool __sticky_bit = (bool)(__rounding_sticky_mask |
                               (__exp_offset & __mant_with_implicit));
    bool __round_bit = (bool)(__exp_mant_shifted & 1u);
    bool __tie_bit = (bool)(__exp_mant_shifted & 2u);
    bool __round_up = __round_bit & (__sticky_bit | __tie_bit);
    bool __x_mant_nonzero = (bool)(__x_bits & __mant_mask);
    unsigned int __result_exp_shift = __x_exp - 252u;
    unsigned int __result_mant_shifted =
        __mant_with_implicit >> (__result_exp_shift & 0x1Fu);
    if (__round_up)
      __result_mant_shifted += 1u;
    if (!__x_mant_nonzero)
      __result_mant_shifted <<= 1u;
    unsigned int __result_bits = __result_mant_shifted | (__sign_mask & __x_bits);
    return bitcast_int2float(__result_bits);
  }

  return __builtin_xcn_rcpf(__x);
}

__DEVICE__
float __xpu6_frcp_rn(float __x) {
  if (__xpu6_frcp_is_fast_normal(__x)) {
    float __r0 = __builtin_xcn_rcpf(__x);
    float __e_raw = __builtin_fmaf(__x, __r0, -1.0f);
    float __e = -__e_raw;
    return __builtin_fmaf(__r0, __e, __r0);
  }

  return __xpu6_frcp_rn_slow(__x);
}

__DEVICE__
float __xpu6_frcp_rd_slow(float __x) {
  const unsigned int __sign_mask = 0x80000000u;
  const unsigned int __inf_bits = 0x7F800000u;
  const unsigned int __mant_mask = 0x007FFFFFu;
  unsigned int __x_bits = bitcast_float2int(__x);
  unsigned int __x_exp = (__x_bits >> 23) & 0xFFu;

  if (__x_exp == 0) {
    // Shift away the sign bit; values above 0x400000 are large enough to
    // normalize by scaling with 2^64 before the Newton step.
    unsigned int __shifted = __x_bits << 1;
    if (__shifted > 0x400000u) {
      float __x_norm = __builtin_xcn_ldexpf(__x, 64);
      float __r0 = __builtin_xcn_rcpf(__x_norm);
      float __e_raw = __builtin_fmaf(__x_norm, __r0, -1.0f);
      float __e = -__e_raw;
      float __r1;
      __XPU6_FRCP_FMA_ROUND(RD, __r0, __e, __r0, __r1);
      return __builtin_xcn_ldexpf(__r1, 64);
    }

    unsigned int __sign_bit = __x_bits & __sign_mask;
    bool __is_nonzero = (__shifted != 0);
    bool __is_positive = (__sign_bit == 0);
    // Too-small positive subnormals overflow; RD returns max finite instead
    // of +inf, while zero and negative inputs keep the hardware inf result.
    if (__is_nonzero && __is_positive)
      return bitcast_int2float(0x7F7FFFFFu);
    return bitcast_int2float(__sign_bit | __inf_bits);
  }

  // Exponents 253 and 254 need explicit mantissa reconstruction because
  // their reciprocals enter the denormal/result-boundary range.
  unsigned int __exp_offset = __x_exp - 253u;
  if (__exp_offset <= 1u) {
    unsigned int __mant = __x_bits & __mant_mask;
    unsigned int __norm_bits = __mant | 0x3F800000u;
    float __x_norm = bitcast_int2float(__norm_bits);
    bool __x_mant_nonzero = (bool)(__x_bits & __mant_mask);
    unsigned int __exp_shift_flag = 1u << (__exp_offset & 0x1Fu);
    float __r0 = __builtin_xcn_rcpf(__x_norm);
    float __e_raw = __builtin_fmaf(__x_norm, __r0, -1.0f);
    float __e = -__e_raw;
    float __r1_lo;
    float __r1_hi;
    __XPU6_FRCP_FMA_RD_RU(__r0, __e, __r0, __r1_lo, __r1_hi);
    unsigned int __r1_lo_bits = bitcast_float2int(__r1_lo);
    bool __rounding_needed = (__r1_lo != __r1_hi);
    unsigned int __mant_with_implicit = (__r1_lo_bits & __mant_mask) | 0x800000u;
    unsigned int __guard = __rounding_needed ? 0xFFFFFFFFu : 0u;
    // Convert RD/RU disagreement into an all-ones sticky mask.
    unsigned int __rounding_sticky_mask = (unsigned int)(-(int)__guard);
    unsigned int __exp_mant = __mant_with_implicit & __exp_shift_flag;
    unsigned int __sign_bit = __x_bits & __sign_mask;
    unsigned int __sticky_info =
        __rounding_sticky_mask | (__exp_offset & __mant_with_implicit);
    unsigned int __exp_mant_shifted = __exp_mant >> (__exp_offset & 0x1Fu);
    bool __sticky_nonzero = (bool)(__sticky_info | __exp_mant_shifted);
    // RD and RU slow paths are intentionally symmetric: RD increments only
    // negative inexact results; RU increments only positive inexact results.
    bool __needs_increment = (__sign_bit != 0) && __sticky_nonzero;
    unsigned int __result_exp_shift = __x_exp - 252u;
    unsigned int __result_mant_shifted =
        __mant_with_implicit >> (__result_exp_shift & 0x1Fu);
    if (__needs_increment)
      __result_mant_shifted += 1u;
    if (!__x_mant_nonzero)
      __result_mant_shifted <<= 1u;
    unsigned int __result_bits = __result_mant_shifted | (__sign_mask & __x_bits);
    return bitcast_int2float(__result_bits);
  }

  return __builtin_xcn_rcpf(__x);
}

__DEVICE__
float __xpu6_frcp_rd(float __x) {
  if (__xpu6_frcp_is_fast_normal(__x)) {
    float __r0 = __builtin_xcn_rcpf(__x);
    float __r1;
    __XPU6_FRCP_NEWTON_ROUND(RD, __x, __r0, __r1);
    return __r1;
  }

  return __xpu6_frcp_rd_slow(__x);
}

__DEVICE__
float __xpu6_frcp_ru_slow(float __x) {
  const unsigned int __sign_mask = 0x80000000u;
  const unsigned int __inf_bits = 0x7F800000u;
  const unsigned int __mant_mask = 0x007FFFFFu;
  unsigned int __x_bits = bitcast_float2int(__x);
  unsigned int __x_exp = (__x_bits >> 23) & 0xFFu;

  if (__x_exp == 0) {
    // Shift away the sign bit; values above 0x400000 are large enough to
    // normalize by scaling with 2^64 before the Newton step.
    unsigned int __shifted = __x_bits << 1;
    if (__shifted > 0x400000u) {
      float __x_norm = __builtin_xcn_ldexpf(__x, 64);
      float __r0 = __builtin_xcn_rcpf(__x_norm);
      float __e_raw = __builtin_fmaf(__x_norm, __r0, -1.0f);
      float __e = -__e_raw;
      float __r1;
      __XPU6_FRCP_FMA_ROUND(RU, __r0, __e, __r0, __r1);
      return __builtin_xcn_ldexpf(__r1, 64);
    }

    unsigned int __sign_bit = __x_bits & __sign_mask;
    bool __is_nonzero = (__shifted != 0);
    bool __is_negative = (__sign_bit != 0);
    // RU is the mirror of RD for tiny subnormals: negative non-zero inputs
    // round toward zero to -max finite, while positive/zero inputs use inf.
    if (__is_nonzero && __is_negative)
      return bitcast_int2float(__sign_bit | 0x7F7FFFFFu);
    return bitcast_int2float(__sign_bit | __inf_bits);
  }

  // Exponents 253 and 254 need explicit mantissa reconstruction because
  // their reciprocals enter the denormal/result-boundary range.
  unsigned int __exp_offset = __x_exp - 253u;
  if (__exp_offset <= 1u) {
    unsigned int __mant = __x_bits & __mant_mask;
    unsigned int __norm_bits = __mant | 0x3F800000u;
    float __x_norm = bitcast_int2float(__norm_bits);
    bool __x_mant_nonzero = (bool)(__x_bits & __mant_mask);
    unsigned int __exp_shift_flag = 1u << (__exp_offset & 0x1Fu);
    float __r0 = __builtin_xcn_rcpf(__x_norm);
    float __e_raw = __builtin_fmaf(__x_norm, __r0, -1.0f);
    float __e = -__e_raw;
    float __r1_lo;
    float __r1_hi;
    __XPU6_FRCP_FMA_RD_RU(__r0, __e, __r0, __r1_lo, __r1_hi);
    unsigned int __r1_lo_bits = bitcast_float2int(__r1_lo);
    bool __rounding_needed = (__r1_lo != __r1_hi);
    unsigned int __mant_with_implicit = (__r1_lo_bits & __mant_mask) | 0x800000u;
    unsigned int __guard = __rounding_needed ? 0xFFFFFFFFu : 0u;
    // Convert RD/RU disagreement into an all-ones sticky mask.
    unsigned int __rounding_sticky_mask = (unsigned int)(-(int)__guard);
    unsigned int __exp_mant = __mant_with_implicit & __exp_shift_flag;
    unsigned int __sign_bit = __x_bits & __sign_mask;
    unsigned int __sticky_info =
        __rounding_sticky_mask | (__exp_offset & __mant_with_implicit);
    unsigned int __exp_mant_shifted = __exp_mant >> (__exp_offset & 0x1Fu);
    bool __sticky_nonzero = (bool)(__sticky_info | __exp_mant_shifted);
    // Mirror of RD: positive inexact results increment for round-up.
    bool __needs_increment = (__sign_bit == 0) && __sticky_nonzero;
    unsigned int __result_exp_shift = __x_exp - 252u;
    unsigned int __result_mant_shifted =
        __mant_with_implicit >> (__result_exp_shift & 0x1Fu);
    if (__needs_increment)
      __result_mant_shifted += 1u;
    if (!__x_mant_nonzero)
      __result_mant_shifted <<= 1u;
    unsigned int __result_bits = __result_mant_shifted | (__sign_mask & __x_bits);
    return bitcast_int2float(__result_bits);
  }

  return __builtin_xcn_rcpf(__x);
}

__DEVICE__
float __xpu6_frcp_ru(float __x) {
  if (__xpu6_frcp_is_fast_normal(__x)) {
    float __r0 = __builtin_xcn_rcpf(__x);
    float __r1;
    __XPU6_FRCP_NEWTON_ROUND(RU, __x, __r0, __r1);
    return __r1;
  }

  return __xpu6_frcp_ru_slow(__x);
}

__DEVICE__
float __xpu6_frcp_rz_slow(float __x) {
  const unsigned int __sign_mask = 0x80000000u;
  const unsigned int __mant_mask = 0x007FFFFFu;
  unsigned int __x_bits = bitcast_float2int(__x);
  unsigned int __x_exp = (__x_bits >> 23) & 0xFFu;

  if (__x_exp == 0) {
    unsigned int __shifted = __x_bits << 1;
    if (__shifted == 0)
      return __builtin_xcn_rcpf(__x);

    if (__shifted > 0x400000u) {
      float __x_norm = __builtin_xcn_ldexpf(__x, 64);
      float __r0 = __builtin_xcn_rcpf(__x_norm);
      float __e_raw = __builtin_fmaf(__x_norm, __r0, -1.0f);
      float __e = -__e_raw;
      float __r1;
      __XPU6_FRCP_FMA_ROUND(RZ, __r0, __e, __r0, __r1);
      return __builtin_xcn_ldexpf(__r1, 64);
    }

    unsigned int __sign_bit = __x_bits & __sign_mask;
    // RZ rounds both positive and negative tiny subnormals toward zero, so
    // the saturated result is signed max finite rather than infinity.
    return bitcast_int2float(__sign_bit | 0x7F7FFFFFu);
  }

  // Exponents 253 and 254 need explicit mantissa reconstruction because
  // their reciprocals enter the denormal/result-boundary range.
  unsigned int __exp_offset = __x_exp - 253u;
  if (__exp_offset <= 1u) {
    unsigned int __mant = __x_bits & __mant_mask;
    unsigned int __norm_bits = __mant | 0x3F800000u;
    float __x_norm = bitcast_int2float(__norm_bits);
    unsigned int __result_exp_shift = __x_exp - 252u;
    bool __x_mant_nonzero = (bool)(__x_bits & __mant_mask);
    float __r0 = __builtin_xcn_rcpf(__x_norm);
    float __r1;
    __XPU6_FRCP_NEWTON_ROUND(RZ, __x_norm, __r0, __r1);
    unsigned int __r1_bits = bitcast_float2int(__r1);
    unsigned int __mant_with_implicit = (__r1_bits & __mant_mask) | 0x800000u;
    unsigned int __result_mant_shifted =
        __mant_with_implicit >> (__result_exp_shift & 0x1Fu);
    if (!__x_mant_nonzero)
      __result_mant_shifted <<= 1u;
    unsigned int __result_bits = __result_mant_shifted | (__sign_mask & __x_bits);
    return bitcast_int2float(__result_bits);
  }

  return __builtin_xcn_rcpf(__x);
}

__DEVICE__
float __xpu6_frcp_rz(float __x) {
  if (__xpu6_frcp_is_fast_normal(__x)) {
    float __r0 = __builtin_xcn_rcpf(__x);
    float __r1;
    __XPU6_FRCP_NEWTON_ROUND(RZ, __x, __r0, __r1);
    return __r1;
  }

  return __xpu6_frcp_rz_slow(__x);
}
#undef __XPU6_FRCP_FMA_ROUND
#undef __XPU6_FRCP_NEWTON_ROUND
#undef __XPU6_FRCP_FMA_RD_RU
#endif

// Public __frcp_* wrappers: XPU6+ uses the high-precision helpers above;
// XPU5 keeps the historical OCML implementation below.
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
__DEVICE__
float __frcp_rd(float __x) { return __xpu6_frcp_rd(__x); }
__DEVICE__
float __frcp_ru(float __x) { return __xpu6_frcp_ru(__x); }
__DEVICE__
float __frcp_rz(float __x) { return __xpu6_frcp_rz(__x); }
__DEVICE__
float __frcp_rn(float __x) { return __xpu6_frcp_rn(__x); }
#elif (defined __XPU_ARCH__) && (__XPU_ARCH__ == 5)
__DEVICE__
float __frcp_rd(float __x) { return __ocml_div_rtn_f32(1.0f, __x); }
__DEVICE__
float __frcp_ru(float __x) { return __ocml_div_rtp_f32(1.0f, __x); }
__DEVICE__
float __frcp_rz(float __x) { return __ocml_div_rtz_f32(1.0f, __x); }
__DEVICE__
float __frcp_rn(float __x) { return 1.0f / __x; }
#else
__DEVICE__
float __frcp_rd(float __x) { return 1.0f / __x; }
__DEVICE__
float __frcp_ru(float __x) { return 1.0f / __x; }
__DEVICE__
float __frcp_rz(float __x) { return 1.0f / __x; }
__DEVICE__
float __frcp_rn(float __x) { return 1.0f / __x; }
#endif

__DEVICE__
float __frsqrt_rn(float __x){
    float f1 = fabsf(__x);
    bool p1 = (f1 < bitcast_int2float(0x00800000U));
    float f2 = __x * bitcast_int2float(0x4B800000U);
    float f3 = p1 ? f2 : __x;
    unsigned int r1 = bitcast_float2int(f3);
    int r2 = r1 + (-8388608);
    bool p2 = (static_cast<unsigned int>(r2) < 2130706432U);
    float f4;
    if (p2) {
        unsigned int r3 = r1 & 16777215U;
        unsigned int r4 = r3 | 1056964608U;
        float f5 = bitcast_int2float(r4);
        int r5 = static_cast<int>(r4) - static_cast<int>(r1);
        int r6 = r5 + 201326592;
        int r7 = p1 ? r6 : r5;
        float f6 = 1.0f / __builtin_xcn_sqrtf(f5);
        float f7 = f6 * f6;
        float f8 = -f7;
        float f9 = __fmaf_rn(f6, f6, f8);
        float f10 = -f5;
        float f11 = bitcast_int2float(0x3F800000U);
        float f12 = __fmaf_rn(f7, f10, f11);
        float f13 = __fmaf_rn(f9, f10, f12);
        float f14 = bitcast_int2float(0x3F000000U);
        float f15 = bitcast_int2float(0x3EC00000U);
        float f16 = __fmaf_rn(f15, f13, f14);
        float f17 = f6 * f13;
        float f18 = __fmaf_rn(f16, f17, f6);
        int r8 = r7 >> 1;
        unsigned int r9 = bitcast_float2int(f18);
        int r10 = r8 + static_cast<int>(r9);
        f4 = bitcast_int2float(static_cast<unsigned int>(r10));

    } else {
        f4 = 1.0f / __builtin_xcn_sqrtf(f3);
    }
    return f4;
}

__device__
float64_t f64_div(float64_t a, float64_t b, enum XCN_RoundMode round_mode) {
  union ui64_f64 uA;
  uint_fast64_t uiA;
  bool signA;
  int_fast16_t expA;
  uint_fast64_t sigA;
  union ui64_f64 uB;
  uint_fast64_t uiB;
  bool signB;
  int_fast16_t expB;
  uint_fast64_t sigB;
  bool signZ;
  struct exp16_sig64 normExpSig;
  int_fast16_t expZ;
  uint32_t recip32, sig32Z, doubleTerm;
  uint_fast64_t rem;
  uint32_t q;
  uint_fast64_t sigZ;
  uint_fast64_t uiZ;
  union ui64_f64 uZ;

  /*------------------------------------------------------------------------
   *------------------------------------------------------------------------*/
  uA.f = a;
  uiA = uA.ui;
  signA = signF64UI(uiA);
  expA = expF64UI(uiA);
  sigA = fracF64UI(uiA);
  uB.f = b;
  uiB = uB.ui;
  signB = signF64UI(uiB);
  expB = expF64UI(uiB);
  sigB = fracF64UI(uiB);
  signZ = signA ^ signB;
  /*------------------------------------------------------------------------
   *------------------------------------------------------------------------*/
  if (expA == 0x7FF) {
    if (sigA) {
      uiZ = softfloat_propagateNaNF64UI(uiA, uiB);
      uZ.ui = uiZ;
      return uZ.f;
    }
    if (expB == 0x7FF) {
      if (sigB) {
        uiZ = softfloat_propagateNaNF64UI(uiA, uiB);
        uZ.ui = uiZ;
        return uZ.f;
      }
      uiZ = defaultNaNF64UI;
      uZ.ui = uiZ;
      return uZ.f;
    }
    uiZ = packToF64UI(signZ, 0x7FF, 0);
    uZ.ui = uiZ;
    return uZ.f;
  }
  if (expB == 0x7FF) {
    if (sigB) {
      uiZ = softfloat_propagateNaNF64UI(uiA, uiB);
      uZ.ui = uiZ;
      return uZ.f;
    }
    uiZ = packToF64UI(signZ, 0, 0);
    uZ.ui = uiZ;
    return uZ.f;
  }
  /*------------------------------------------------------------------------
   *------------------------------------------------------------------------*/
  if (!expB) {
    if (!sigB) {
      if (!(expA | sigA)) {
        uiZ = defaultNaNF64UI;
        uZ.ui = uiZ;
        return uZ.f;
      }
      uiZ = packToF64UI(signZ, 0x7FF, 0);
      uZ.ui = uiZ;
      return uZ.f;
    }
    normExpSig = softfloat_normSubnormalF64Sig(sigB);
    expB = normExpSig.exp;
    sigB = normExpSig.sig;
  }
  if (!expA) {
    if (!sigA) {
      // goto zero;
      uiZ = packToF64UI(signZ, 0, 0);
      uZ.ui = uiZ;
      return uZ.f;
    }
    normExpSig = softfloat_normSubnormalF64Sig(sigA);
    expA = normExpSig.exp;
    sigA = normExpSig.sig;
  }
  /*------------------------------------------------------------------------
   *------------------------------------------------------------------------*/
  expZ = expA - expB + 0x3FE;
  sigA |= UINT64_C(0x0010000000000000);
  sigB |= UINT64_C(0x0010000000000000);
  if (sigA < sigB) {
    --expZ;
    sigA <<= 11;
  } else {
    sigA <<= 10;
  }
  sigB <<= 11;
  recip32 = softfloat_approxRecip32_1(sigB >> 32) - 2;
  sig32Z = ((uint32_t)(sigA >> 32) * (uint_fast64_t)recip32) >> 32;
  doubleTerm = sig32Z << 1;
  rem = ((sigA - (uint_fast64_t)doubleTerm * (uint32_t)(sigB >> 32)) << 28) -
        (uint_fast64_t)doubleTerm * ((uint32_t)sigB >> 4);
  q = (((uint32_t)(rem >> 32) * (uint_fast64_t)recip32) >> 32) + 4;
  sigZ = ((uint_fast64_t)sig32Z << 32) + ((uint_fast64_t)q << 4);
  /*------------------------------------------------------------------------
   *------------------------------------------------------------------------*/
  if ((sigZ & 0x1FF) < 4 << 4) {
    q &= ~7;
    sigZ &= ~(uint_fast64_t)0x7F;
    doubleTerm = q << 1;
    rem = ((rem - (uint_fast64_t)doubleTerm * (uint32_t)(sigB >> 32)) << 28) -
          (uint_fast64_t)doubleTerm * ((uint32_t)sigB >> 4);
    if (rem & UINT64_C(0x8000000000000000)) {
      sigZ -= 1 << 7;
    } else {
      if (rem)
        sigZ |= 1;
    }
  }
  return softfloat_roundPackToF64(signZ, expZ, sigZ, round_mode);
}

__device__
double __xcn_ddiv(double x, double y, enum XCN_RoundMode round_mode) {
  float64_t a, b, c;
  double res;
  __builtin_memcpy(&a.v, &x, sizeof(double));
  __builtin_memcpy(&b.v, &y, sizeof(double));
  c = f64_div(a, b, round_mode);
  __builtin_memcpy(&res, &c.v, sizeof(double));
  return res;
}

__device__
double __xcn_ddiv_rd(double __a, double __b) {
  return __xcn_ddiv(__a, __b, XCN_RD);
}
__device__
double __xcn_ddiv_rn(double __a, double __b) {
  return __xcn_ddiv(__a, __b, XCN_RN);
}
__device__
double __xcn_ddiv_ru(double __a, double __b) {
  return __xcn_ddiv(__a, __b, XCN_RU);
}
__device__
double __xcn_ddiv_rz(double __a, double __b) {
  return __xcn_ddiv(__a, __b, XCN_RZ);
}

__device__
float32_t1 f32_sqrt( float32_t1 a, enum XCN_RoundMode round_mode )
{
    union ui32_f32 uA;
    uint_fast32_t uiA;
    bool signA;
    int_fast16_t expA;
    uint_fast32_t sigA, uiZ;
    struct exp16_sig32 normExpSig;
    int_fast16_t expZ;
    uint_fast32_t sigZ, shiftedSigZ;
    uint32_t negRem;
    union ui32_f32 uZ;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    uA.f = a;
    uiA = uA.ui;
    signA = signF32UI( uiA );
    expA  = expF32UI( uiA );
    sigA  = fracF32UI( uiA );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( expA == 0xFF ) {
        if ( sigA ) {
            uiZ = softfloat_propagateNaNF32UI( uiA, 0 );
            uZ.ui = uiZ;
            return uZ.f;
        }
        if ( ! signA ) return a;
        uiZ = defaultNaNF32UI;
        uZ.ui = uiZ;
        return uZ.f;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( signA ) {
        if ( ! (expA | sigA) ) return a;
        uiZ = defaultNaNF32UI;
        uZ.ui = uiZ;
        return uZ.f;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( ! expA ) {
        if ( ! sigA ) return a;
        normExpSig = softfloat_normSubnormalF32Sig( sigA );
        expA = normExpSig.exp;
        sigA = normExpSig.sig;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expZ = ((expA - 0x7F)>>1) + 0x7E;
    expA &= 1;
    sigA = (sigA | 0x00800000)<<8;
    sigZ =
        ((uint_fast64_t) sigA * softfloat_approxRecipSqrt32_1( expA, sigA ))
            >>32;
    if ( expA ) sigZ >>= 1;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    sigZ += 2;
    if ( (sigZ & 0x3F) < 2 ) {
        shiftedSigZ = sigZ>>2;
        negRem = shiftedSigZ * shiftedSigZ;
        sigZ &= ~3;
        if ( negRem & 0x80000000 ) {
            sigZ |= 1;
        } else {
            if ( negRem ) --sigZ;
        }
    }
    return softfloat_roundPackToF32( 0, expZ, sigZ, round_mode);
}

__device__
float __xcn_fsqrt( float x, enum XCN_RoundMode round_mode) {
    float32_t1 a,c;
    float res;
    __builtin_memcpy(&a.v, &x, sizeof(float));
    c = f32_sqrt(a, round_mode);
    __builtin_memcpy(&res, &c.v, sizeof(float));
    return res;
}

__device__
float __xcn_fsqrt_rd(float __a) {
  return __xcn_fsqrt(__a, XCN_RD);
}
__device__
float __xcn_fsqrt_rn(float __a) {
  return __xcn_fsqrt(__a, XCN_RN);
}
__device__
float __xcn_fsqrt_ru(float __a) {
  return __xcn_fsqrt(__a, XCN_RU);
}
__device__
float __xcn_fsqrt_rz(float __a) {
  return __xcn_fsqrt(__a, XCN_RZ);
}

__device__
float __fsqrt_rd(float __x) { return __xcn_fsqrt_rd(__x); }
__device__
float __fsqrt_rn(float __x) { return sqrtf(__x); }
__device__
float __fsqrt_ru(float __x) { return __xcn_fsqrt_ru(__x); }
__device__
float __fsqrt_rz(float __x) { return __xcn_fsqrt_rz(__x); }

#if defined OCML_BASIC_ROUNDED_OPERATIONS
__device__ float __ocml_sub_rtn_f32(float __x, float __y) {
  float res;
  SET_ROUND_MODE(RD);
  asm volatile("v_sub_f32 %0, %1, %2" : "=v"(res) : "v"(__x), "v"(__y));
  SET_ROUND_MODE(RN);
  return res;
}
__device__ float __ocml_sub_rtp_f32(float __x, float __y) {
  float res;
  SET_ROUND_MODE(RU);
  asm volatile("v_sub_f32 %0, %1, %2" : "=v"(res) : "v"(__x), "v"(__y));
  SET_ROUND_MODE(RN);
  return res;
}
__device__ float __ocml_sub_rtz_f32(float __x, float __y) {
  float res;
  SET_ROUND_MODE(RZ);
  asm volatile("v_sub_f32 %0, %1, %2" : "=v"(res) : "v"(__x), "v"(__y));
  SET_ROUND_MODE(RN);
  return res;
}

__DEVICE__
float __fsub_rd(float __x, float __y) { return __ocml_sub_rtn_f32(__x, __y); }
__DEVICE__
float __fsub_rn(float __x, float __y) { return __x - __y; }
__DEVICE__
float __fsub_ru(float __x, float __y) { return __ocml_sub_rtp_f32(__x, __y); }
__DEVICE__
float __fsub_rz(float __x, float __y) { return __ocml_sub_rtz_f32(__x, __y); }
#else
__DEVICE__
float __fsub_rn(float __x, float __y) { return __x - __y; }
#endif

__DEVICE__
float __log10f(float __x) { return __ocml_native_log10_f32(__x); }

__DEVICE__
float __log2f(float __x) { return __ocml_native_log2_f32(__x); }

__DEVICE__
float __logf(float __x) { return __ocml_native_log_f32(__x); }

__DEVICE__
float __powf(float __x, float __y) { return __ocml_pow_f32(__x, __y); }

__DEVICE__
float __saturatef(float __x) { return (__x < 0) ? 0 : ((__x > 1) ? 1 : __x); }

__DEVICE__
float __sinf(float __x) {
  #if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    return sinf(__x);
  #else
    return __ocml_native_sin_f32(__x);
  #endif
}

__DEVICE__
void __sincosf(float __x, float *__sinptr, float *__cosptr) {
  *__sinptr = __sinf(__x);
  *__cosptr = __cosf(__x);
}

__DEVICE__
float __tanf(float __x) { return tanf(__x); }
// END INTRINSICS
// END FLOAT

// BEGIN DOUBLE
__DEVICE__
double acos(double __x) { return __ocml_acos_f64(__x); }

__DEVICE__
double acosh(double __x) { return __ocml_acosh_f64(__x); }

__DEVICE__
double asin(double __x) { return __ocml_asin_f64(__x); }

__DEVICE__
double asinh(double __x) { return __ocml_asinh_f64(__x); }

__DEVICE__
double atan(double __x) { return __ocml_atan_f64(__x); }

__DEVICE__
double atan2(double __x, double __y) { return __ocml_atan2_f64(__x, __y); }

__DEVICE__
double atanh(double __x) { return __ocml_atanh_f64(__x); }

__DEVICE__
double cbrt(double __x) { return __ocml_cbrt_f64(__x); }

__DEVICE__
double ceil(double __x) { return __ocml_ceil_f64(__x); }

__DEVICE__
double copysign(double __x, double __y) {
  return __ocml_copysign_f64(__x, __y);
}

__DEVICE__
double cos(double __x) { return cos_musl(__x); }

__DEVICE__
double cosh(double __x) { return __ocml_cosh_f64(__x); }

__DEVICE__
double cospi(double __x) { return __ocml_cospi_f64(__x); }

__DEVICE__
double cyl_bessel_i0(double __x) { return __ocml_i0_f64(__x); }

__DEVICE__
double cyl_bessel_i1(double __x) { return __ocml_i1_f64(__x); }

__DEVICE__
double erf(double __x) { return __ocml_erf_f64(__x); }

__DEVICE__
double erfc(double __x) { return __ocml_erfc_f64(__x); }

static __host__ __device__ inline
float erfinv(float a) {
  return __ocml_erfinv_f32(a);
}

__DEVICE__
double fabs(double __x);
__DEVICE__
double fma(double __x, double __y, double __z);
__DEVICE__
double sqrt(double __x);
__DEVICE__ static inline double erfinv_internal_erfinv_polyd(double a) {
  double r, t;
  t = a - 3.125;
  r = -3.6444120640178197e-21;
  r = fma(r, t, -1.6850591381820166e-19);
  r = fma(r, t, 1.2858480715256400e-18);
  r = fma(r, t, 1.1157877678025181e-17);
  r = fma(r, t, -1.3331716628546209e-16);
  r = fma(r, t, 2.0972767875968562e-17);
  r = fma(r, t, 6.6376381343583238e-15);
  r = fma(r, t, -4.0545662729752069e-14);
  r = fma(r, t, -8.1519341976054722e-14);
  r = fma(r, t, 2.6335093153082323e-12);
  r = fma(r, t, -1.2975133253453532e-11);
  r = fma(r, t, -5.4154120542946279e-11);
  r = fma(r, t, 1.0512122733215323e-09);
  r = fma(r, t, -4.1126339803469837e-09);
  r = fma(r, t, -2.9070369957882005e-08);
  r = fma(r, t, 4.2347877827932404e-07);
  r = fma(r, t, -1.3654692000834679e-06);
  r = fma(r, t, -1.3882523362786469e-05);
  r = fma(r, t, 1.8673420803405714e-04);
  r = fma(r, t, -7.4070253416626698e-04);
  r = fma(r, t, -6.0336708714301491e-03);
  r = fma(r, t, 2.4015818242558962e-01);
  r = fma(r, t, 1.6536545626831027e+00);
  return r;
}
__DEVICE__ static inline int erfinv_double2hiint(double x) {
  union {
    double d;
    uint64_t bits;
  } converter;

  converter.d = x;
  return (int)(converter.bits >> 32);
}
__DEVICE__ static inline int erfinv_internal_fast_icmp_abs_lt(int a, int b) {
  union {
    int i;
    float f;
  } converter_a, converter_b;

  converter_a.i = a;
  converter_b.i = b;

  return fabsf(converter_a.f) < converter_b.f;
}
__DEVICE__ static inline double erfinv_internal_fast_log(double a) {
  int hi, lo;
  double m, u2, t, f, g, u, e;

  union {
    double d;
    struct {
      int lo, hi;
    } i;
  } converter;
  converter.d = a;
  hi = converter.i.hi;
  lo = converter.i.lo;

  e = (double)(((unsigned int)hi >> 20) & 0x7fe) - 1022.0;

  converter.i.hi = (hi & 0x801fffff) + 0x3fe00000;
  converter.i.lo = lo;
  m = converter.d;

  f = m - 1.0;
  g = m + 1.0;

  g = 1.0 / g;

  u = f * g;
  t = fma(-2.0, u, f);
  t = fma(-u, f, t);
  u = fma(t, g, u);

  u2 = u * u;
  t = 8.5048800515742276E-002;
  t = fma(t, u2, 4.1724849126860759E-002);
  t = fma(t, u2, 6.0524726220470643E-002);
  t = fma(t, u2, 6.6505606704187079E-002);
  t = fma(t, u2, 7.6932741976622004E-002);
  t = fma(t, u2, 9.0908722394788727E-002);
  t = fma(t, u2, 1.1111111976824838E-001);
  t = fma(t, u2, 1.4285714274058975E-001);
  t = fma(t, u2, 2.0000000000077559E-001);
  t = fma(t, u2, 3.3333333333333154E-001);
  t = t * u2;
  t = fma(t, u, u);
  t = t + t;

  t = fma(e, 6.93147180559945290e-001, t);
  return t;
}
static __host__ __device__ inline
double erfinv(double a) {
#if !defined(__XPU_ARCH__)
  double p, q, t, fa;
  unsigned long long int l;

  fa = fabs(a);
  if (fa >= 1.0) {
    l = 0xfff8000000000000ULL;
    __builtin_memcpy(&t, &l, sizeof(double)); /* INDEFINITE */
    if (fa == 1.0) {
      t = a * exp(1000.0); /* Infinity */
    }
  } else if (fa >= 0.9375) {
    /* Based on: J.M. Blair, C.A. Edwards, J.H. Johnson: Rational Chebyshev
       Approximations for the Inverse of the Error Function. Mathematics of
       Computation, Vol. 30, No. 136 (Oct. 1976), pp. 827-830. Table 59
     */
    t = log1p(-fa);
    t = 1.0 / sqrt(-t);
    p = 2.7834010353747001060e-3;
    p = p * t + 8.6030097526280260580e-1;
    p = p * t + 2.1371214997265515515e+0;
    p = p * t + 3.1598519601132090206e+0;
    p = p * t + 3.5780402569085996758e+0;
    p = p * t + 1.5335297523989890804e+0;
    p = p * t + 3.4839207139657522572e-1;
    p = p * t + 5.3644861147153648366e-2;
    p = p * t + 4.3836709877126095665e-3;
    p = p * t + 1.3858518113496718808e-4;
    p = p * t + 1.1738352509991666680e-6;
    q = t + 2.2859981272422905412e+0;
    q = q * t + 4.3859045256449554654e+0;
    q = q * t + 4.6632960348736635331e+0;
    q = q * t + 3.9846608184671757296e+0;
    q = q * t + 1.6068377709719017609e+0;
    q = q * t + 3.5609087305900265560e-1;
    q = q * t + 5.3963550303200816744e-2;
    q = q * t + 4.3873424022706935023e-3;
    q = q * t + 1.3858762165532246059e-4;
    q = q * t + 1.1738313872397777529e-6;
    t = p / (q * t);
    if (a < 0.0)
      t = -t;
  } else if (fa >= 0.75) {
    /* Based on: J.M. Blair, C.A. Edwards, J.H. Johnson: Rational Chebyshev
       Approximations for the Inverse of the Error Function. Mathematics of
       Computation, Vol. 30, No. 136 (Oct. 1976), pp. 827-830. Table 39
    */
    t = a * a - .87890625;
    p = .21489185007307062000e+0;
    p = p * t - .64200071507209448655e+1;
    p = p * t + .29631331505876308123e+2;
    p = p * t - .47644367129787181803e+2;
    p = p * t + .34810057749357500873e+2;
    p = p * t - .12954198980646771502e+2;
    p = p * t + .25349389220714893917e+1;
    p = p * t - .24758242362823355486e+0;
    p = p * t + .94897362808681080020e-2;
    q = t - .12831383833953226499e+2;
    q = q * t + .41409991778428888716e+2;
    q = q * t - .53715373448862143349e+2;
    q = q * t + .33880176779595142685e+2;
    q = q * t - .11315360624238054876e+2;
    q = q * t + .20369295047216351160e+1;
    q = q * t - .18611650627372178511e+0;
    q = q * t + .67544512778850945940e-2;
    p = p / q;
    t = a * p;
  } else {
    /* Based on: J.M. Blair, C.A. Edwards, J.H. Johnson: Rational Chebyshev
       Approximations for the Inverse of the Error Function. Mathematics of
       Computation, Vol. 30, No. 136 (Oct. 1976), pp. 827-830. Table 18
    */
    t = a * a - .5625;
    p = -.23886240104308755900e+2;
    p = p * t + .45560204272689128170e+3;
    p = p * t - .22977467176607144887e+4;
    p = p * t + .46631433533434331287e+4;
    p = p * t - .43799652308386926161e+4;
    p = p * t + .19007153590528134753e+4;
    p = p * t - .30786872642313695280e+3;
    q = t - .83288327901936570000e+2;
    q = q * t + .92741319160935318800e+3;
    q = q * t - .35088976383877264098e+4;
    q = q * t + .59039348134843665626e+4;
    q = q * t - .48481635430048872102e+4;
    q = q * t + .18997769186453057810e+4;
    q = q * t - .28386514725366621129e+3;
    p = p / q;
    t = a * p;
  }
  return t;
#else
  double t, r;
  int tm_a = erfinv_double2hiint(a);

  if (erfinv_internal_fast_icmp_abs_lt(erfinv_double2hiint(a), 0x3ff00000)) {
    t = fma(a, -a, 1.0);
    t = erfinv_internal_fast_log(t);

    if ((unsigned int)erfinv_double2hiint(t) < 0xC0190000U) {
      r = erfinv_internal_erfinv_polyd(-t);
    } else {
      t = sqrt(-t);
      if (erfinv_double2hiint(t) < 0x40100000) {
        t = t - 3.25;
        r = 2.2137376921775787e-09;
        r = fma(r, t, 9.0756561938885391e-08);
        r = fma(r, t, -2.7517406297064545e-07);
        r = fma(r, t, 1.8239629214389228e-08);
        r = fma(r, t, 1.5027403968909828e-06);
        r = fma(r, t, -4.0138675269815460e-06);
        r = fma(r, t, 2.9234449089955446e-06);
        r = fma(r, t, 1.2475304481671779e-05);
        r = fma(r, t, -4.7318229009055734e-05);
        r = fma(r, t, 6.8284851459573175e-05);
        r = fma(r, t, 2.4031110387097894e-05);
        r = fma(r, t, -3.5503752036284748e-04);
        r = fma(r, t, 9.5328937973738050e-04);
        r = fma(r, t, -1.6882755560235047e-03);
        r = fma(r, t, 2.4914420961078508e-03);
        r = fma(r, t, -3.7512085075692412e-03);
        r = fma(r, t, 5.3709145535900636e-03);
        r = fma(r, t, 1.0052589676941592e+00);
        r = fma(r, t, 3.0838856104922208e+00);
      } else {
        t = t - 5.0;
        r = -2.7109920616438573e-11;
        r = fma(r, t, -2.5556418169965252e-10);
        r = fma(r, t, 1.5076572693500548e-09);
        r = fma(r, t, -3.7894654401267370e-09);
        r = fma(r, t, 7.6157012080783394e-09);
        r = fma(r, t, -1.4960026627149240e-08);
        r = fma(r, t, 2.9147953450901081e-08);
        r = fma(r, t, -6.7711997758452339e-08);
        r = fma(r, t, 2.2900482228026655e-07);
        r = fma(r, t, -9.9298272942317003e-07);
        r = fma(r, t, 4.5260625972231537e-06);
        r = fma(r, t, -1.9681778105531671e-05);
        r = fma(r, t, 7.5995277030017761e-05);
        r = fma(r, t, -2.1503011930044477e-04);
        r = fma(r, t, -1.3871931833623122e-04);
        r = fma(r, t, 1.0103004648645344e+00);
        r = fma(r, t, 4.8499064014085844e+00);
      }
    }
  } else {
    if (__ocml_isnan_f64(a)) {
      r = a;
    } else if (fabs(a) == 1.0) {
      r = __builtin_inf();
    } else {
      r = __builtin_nan("");
    }
  }
  r = r * a;
  return r;
#endif /* !defined(__XPU_ARCH__) */
}

static __host__ __device__ inline
double erfcinv(double a) {
#if !defined(__XPU_ARCH__)
  double t;
  unsigned long long int l;

  if (__isnan(a)) {
    return a + a;
  }
  if (a <= 0.0) {
    l = 0xfff8000000000000ULL;
    __builtin_memcpy(&t, &l, sizeof(double)); /* INDEFINITE */
    if (a == 0.0) {
      t = (1.0 - a) * exp(1000.0); /* Infinity */
    }
  } else if (a >= 0.0625) {
    t = erfinv(1.0 - a);
  } else if (a >= 1e-100) {
    /* Based on: J.M. Blair, C.A. Edwards, J.H. Johnson: Rational Chebyshev
       Approximations for the Inverse of the Error Function. Mathematics of
       Computation, Vol. 30, No. 136 (Oct. 1976), pp. 827-830. Table 59
    */
    double p, q;
    t = log(a);
    t = 1.0 / sqrt(-t);
    p = 2.7834010353747001060e-3;
    p = p * t + 8.6030097526280260580e-1;
    p = p * t + 2.1371214997265515515e+0;
    p = p * t + 3.1598519601132090206e+0;
    p = p * t + 3.5780402569085996758e+0;
    p = p * t + 1.5335297523989890804e+0;
    p = p * t + 3.4839207139657522572e-1;
    p = p * t + 5.3644861147153648366e-2;
    p = p * t + 4.3836709877126095665e-3;
    p = p * t + 1.3858518113496718808e-4;
    p = p * t + 1.1738352509991666680e-6;
    q = t + 2.2859981272422905412e+0;
    q = q * t + 4.3859045256449554654e+0;
    q = q * t + 4.6632960348736635331e+0;
    q = q * t + 3.9846608184671757296e+0;
    q = q * t + 1.6068377709719017609e+0;
    q = q * t + 3.5609087305900265560e-1;
    q = q * t + 5.3963550303200816744e-2;
    q = q * t + 4.3873424022706935023e-3;
    q = q * t + 1.3858762165532246059e-4;
    q = q * t + 1.1738313872397777529e-6;
    t = p / (q * t);
  } else {
    /* Based on: J.M. Blair, C.A. Edwards, J.H. Johnson: Rational Chebyshev
       Approximations for the Inverse of the Error Function. Mathematics of
       Computation, Vol. 30, No. 136 (Oct. 1976), pp. 827-830. Table 82
    */
    double p, q;
    t = log(a);
    t = 1.0 / sqrt(-t);
    p = 6.9952990607058154858e-1;
    p = p * t + 1.9507620287580568829e+0;
    p = p * t + 8.2810030904462690216e-1;
    p = p * t + 1.1279046353630280005e-1;
    p = p * t + 6.0537914739162189689e-3;
    p = p * t + 1.3714329569665128933e-4;
    p = p * t + 1.2964481560643197452e-6;
    p = p * t + 4.6156006321345332510e-9;
    p = p * t + 4.5344689563209398450e-12;
    q = t + 1.5771922386662040546e+0;
    q = q * t + 2.1238242087454993542e+0;
    q = q * t + 8.4001814918178042919e-1;
    q = q * t + 1.1311889334355782065e-1;
    q = q * t + 6.0574830550097140404e-3;
    q = q * t + 1.3715891988350205065e-4;
    q = q * t + 1.2964671850944981713e-6;
    q = q * t + 4.6156017600933592558e-9;
    q = q * t + 4.5344687377088206783e-12;
    t = p / (q * t);
  }
  return t;
#else
  return __ocml_erfcinv_f64(a);
#endif /* !defined(__XPU_ARCH__) */
}

static __host__ __device__ inline
float erfcinvf(float __x) {
  return static_cast<float>(erfcinv(static_cast<double>(__x)));
}

static __host__ __device__ inline float erfcinv(const float __x) {
  return erfcinvf(__x);
}

__DEVICE__
double erfcx(double __x) { return __ocml_erfcx_f64(__x); }

__DEVICE__
double exp(double __x) { return __ocml_exp_f64(__x); }

__DEVICE__
double exp10(double __x) { return __ocml_exp10_f64(__x); }

__DEVICE__
double exp2(double __x) { return __ocml_exp2_f64(__x); }

__DEVICE__
double expm1(double __x) { return __ocml_expm1_f64(__x); }

__DEVICE__
double fabs(double __x) { return __ocml_fabs_f64(__x); }

__DEVICE__
double fdim(double __x, double __y) { return __ocml_fdim_f64(__x, __y); }

__DEVICE__
double floor(double __x) { return __ocml_floor_f64(__x); }

__DEVICE__
double fma(double __x, double __y, double __z) {
  return __ocml_fma_f64(__x, __y, __z);
}

__DEVICE__
double fmax(double __x, double __y) { return __ocml_fmax_f64(__x, __y); }

__DEVICE__
double fmin(double __x, double __y) { return __ocml_fmin_f64(__x, __y); }

__DEVICE__
double fmod(double __x, double __y) { return __ocml_fmod_f64(__x, __y); }

__DEVICE__
double frexp(double __x, int *__nptr) {
  int __tmp;
#ifdef __OPENMP_AMDGCN__
#pragma omp allocate(__tmp) allocator(omp_thread_mem_alloc)
#endif
  double __r =
      __ocml_frexp_f64(__x, (__attribute__((address_space(5))) int *)&__tmp);
  *__nptr = __tmp;
  return __r;
}

__DEVICE__
double hypot(double __x, double __y) { return __ocml_hypot_f64(__x, __y); }

__DEVICE__
int ilogb(double __x) { return __ocml_ilogb_f64(__x); }

__DEVICE__
__RETURN_TYPE __finite(double __x) { return __ocml_isfinite_f64(__x); }

__DEVICE__
__RETURN_TYPE __isinf(double __x) { return __ocml_isinf_f64(__x); }

__DEVICE__
__RETURN_TYPE __isnan(double __x) { return __ocml_isnan_f64(__x); }

__DEVICE__
double j0(double __x) { return j0_musl(__x); }

__DEVICE__
double j1(double __x) { return j1_musl(__x); }

__DEVICE__
double jn(int __n, double __x) { // TODO: we could use Ahmes multiplication
                                 // and the Miller & Brown algorithm
  //       for linear recurrences to get O(log n) steps, but it's unclear if
  //       it'd be beneficial in this case. Placeholder until OCML adds
  //       support.
  if (__n == 0)
    return j0(__x);
  if (__n == 1)
    return j1(__x);

  double __x0 = j0(__x);
  double __x1 = j1(__x);
  for (int __i = 1; __i < __n; ++__i) {
    double __x2 = (2 * __i) / __x * __x1 - __x0;
    __x0 = __x1;
    __x1 = __x2;
  }
  return __x1;
}

__DEVICE__
double ldexp(double __x, int __e) { return __ocml_ldexp_f64(__x, __e); }

__DEVICE__
double lgamma(double __x) { return __ocml_lgamma_f64(__x); }

__DEVICE__
long long int llrint(double __x) { return __ocml_rint_f64(__x); }

__DEVICE__
long long int llround(double __x) { return __ocml_round_f64(__x); }

__DEVICE__
double log(double __x) { return __ocml_log_f64(__x); }

__DEVICE__
double log10(double __x) { return __ocml_log10_f64(__x); }

__DEVICE__
double log1p(double __x) { return __ocml_log1p_f64(__x); }

__DEVICE__
double log2(double __x) { return __ocml_log2_f64(__x); }

__DEVICE__
double logb(double __x) { return __ocml_logb_f64(__x); }

__DEVICE__
long int lrint(double __x) { return __ocml_rint_f64(__x); }

__DEVICE__
long int lround(double __x) { return __ocml_round_f64(__x); }

__DEVICE__
double modf(double __x, double *__iptr) {
  double __tmp;
#ifdef __OPENMP_AMDGCN__
#pragma omp allocate(__tmp) allocator(omp_thread_mem_alloc)
#endif
  double __r =
      __ocml_modf_f64(__x, (__attribute__((address_space(5))) double *)&__tmp);
  *__iptr = __tmp;

  return __r;
}

__DEVICE__
double nan(const char *__tagp) {
#if !_WIN32
  union {
    double val;
    struct ieee_double {
      uint64_t mantissa : 51;
      uint32_t quiet : 1;
      uint32_t exponent : 11;
      uint32_t sign : 1;
    } bits;
  } __tmp;
  __static_assert_type_size_equal(sizeof(__tmp.val), sizeof(__tmp.bits));

  __tmp.bits.sign = 0u;
  __tmp.bits.exponent = ~0u;
  __tmp.bits.quiet = 1u;
  __tmp.bits.mantissa = __make_mantissa(__tagp);

  return __tmp.val;
#else
  __static_assert_type_size_equal(sizeof(uint64_t), sizeof(double));
  uint64_t __val = __make_mantissa(__tagp);
  __val |= 0xFFF << 51;
  return *reinterpret_cast<double *>(&__val);
#endif
}

__DEVICE__
double nearbyint(double __x) { return __ocml_nearbyint_f64(__x); }

__DEVICE__
double nextafter(double __x, double __y) {
  return __ocml_nextafter_f64(__x, __y);
}

__DEVICE__
double norm(int __dim,
            const double *__a) { // TODO: placeholder until OCML adds support.
  double __r = 0;
  while (__dim--) {
    __r += __a[0] * __a[0];
    ++__a;
  }

  return __ocml_sqrt_f64(__r);
}

__DEVICE__
double norm3d(double __x, double __y, double __z) {
  return __ocml_len3_f64(__x, __y, __z);
}

__DEVICE__
double norm4d(double __x, double __y, double __z, double __w) {
  return __ocml_len4_f64(__x, __y, __z, __w);
}

__DEVICE__
double normcdf(double __x) { return __ocml_ncdf_f64(__x); }

__DEVICE__
double normcdfinv(double __x) { return __ocml_ncdfinv_f64(__x); }

__DEVICE__
double pow(double __x, double __y) { return __ocml_pow_f64(__x, __y); }

__DEVICE__
double powi(double __x, int __y) { return __ocml_pown_f64(__x, __y); }

__DEVICE__
double rcbrt(double __x) { return __ocml_rcbrt_f64(__x); }

__DEVICE__
double remainder(double __x, double __y) {
  return __ocml_remainder_f64(__x, __y);
}

__DEVICE__
double remquo(double __x, double __y, int *__quo) {
  int __tmp;
#ifdef __OPENMP_AMDGCN__
#pragma omp allocate(__tmp) allocator(omp_thread_mem_alloc)
#endif
  double __r = __ocml_remquo_f64(
      __x, __y, (__attribute__((address_space(5))) int *)&__tmp);
  *__quo = __tmp;

  return __r;
}

__DEVICE__
double rhypot(double __x, double __y) { return __ocml_rhypot_f64(__x, __y); }

__DEVICE__
double rint(double __x) { return __ocml_rint_f64(__x); }

__DEVICE__
double rnorm(int __dim,
             const double *__a) { // TODO: placeholder until OCML adds support.
  double __r = 0;
  while (__dim--) {
    __r += __a[0] * __a[0];
    ++__a;
  }

  return __ocml_rsqrt_f64(__r);
}

__DEVICE__
double rnorm3d(double __x, double __y, double __z) {
  return __ocml_rlen3_f64(__x, __y, __z);
}

__DEVICE__
double rnorm4d(double __x, double __y, double __z, double __w) {
  return __ocml_rlen4_f64(__x, __y, __z, __w);
}

__DEVICE__
double round(double __x) { return __ocml_round_f64(__x); }

__DEVICE__
double rsqrt(double __x) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
  return __builtin_xcn_rsq(__x);
#else
  return __ocml_rsqrt_f64(__x);
#endif
}

__DEVICE__
float rsqrt(float __x) { return rsqrtf(__x); }

__DEVICE__
_Float16 rsqrt(_Float16 __x) { return __ocml_rsqrt_f16(__x); }

__DEVICE__
double scalbln(double __x, long int __n) {
  return (__n < INT_MAX) ? __ocml_scalbn_f64(__x, __n)
                         : __ocml_scalb_f64(__x, __n);
}
__DEVICE__
double scalbn(double __x, int __n) { return __ocml_scalbn_f64(__x, __n); }

__DEVICE__
__RETURN_TYPE __signbit(double __x) { return __ocml_signbit_f64(__x); }

__DEVICE__
double sin(double __x) { return sin_musl(__x); }

__DEVICE__
void sincos(double __x, double *__sinptr, double *__cosptr) {
  double __tmp;
#ifdef __OPENMP_AMDGCN__
#pragma omp allocate(__tmp) allocator(omp_thread_mem_alloc)
#endif
  sincos_musl(__x, __sinptr, __cosptr);
}

__DEVICE__
void sincospi(double __x, double *__sinptr, double *__cosptr) {
  double __tmp;
#ifdef __OPENMP_AMDGCN__
#pragma omp allocate(__tmp) allocator(omp_thread_mem_alloc)
#endif
  *__sinptr = __ocml_sincospi_f64(
      __x, (__attribute__((address_space(5))) double *)&__tmp);
  *__cosptr = __tmp;
}

__DEVICE__
double sinh(double __x) { return __ocml_sinh_f64(__x); }

__DEVICE__
double sinpi(double __x) { return __ocml_sinpi_f64(__x); }

__DEVICE__
double sqrt(double __x) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
  return __builtin_sqrt(__x);
#else
  return __ocml_sqrt_f64(__x);
#endif
}

__DEVICE__
double tan(double __x) { return tan_musl(__x); }

__DEVICE__
double tanh(double __x) { return __ocml_tanh_f64(__x); }

__DEVICE__
double tgamma(double __x) { return __ocml_tgamma_f64(__x); }

__DEVICE__
double trunc(double __x) { return __ocml_trunc_f64(__x); }

__DEVICE__
double y0(double __x) { return y0_musl(__x); }

__DEVICE__
double y1(double __x) { return y1_musl(__x); }

__DEVICE__
double yn(int __n, double __x) { // TODO: we could use Ahmes multiplication
                                 // and the Miller & Brown algorithm
  //       for linear recurrences to get O(log n) steps, but it's unclear if
  //       it'd be beneficial in this case. Placeholder until OCML adds
  //       support.
  if (__n == 0)
    return y0(__x);
  if (__n == 1)
    return y1(__x);

  double __x0 = y0(__x);
  double __x1 = y1(__x);
  for (int __i = 1; __i < __n; ++__i) {
    double __x2 = (2 * __i) / __x * __x1 - __x0;
    __x0 = __x1;
    __x1 = __x2;
  }

  return __x1;
}

#define DOUBLE_SET_ROUND_MODE(mode) do { \
    uint32_t reg; \
    asm volatile("s_getreg_b32 %0, hwreg(HW_REG_MODE)":"=r"(reg)); \
    reg = (reg & 0xfffffff3) | (mode << 2); \
    asm volatile("s_setreg_b32 hwreg(HW_REG_MODE), %0"::"r"(reg)); \
} while (0)

// BEGIN INTRINSICS
__device__ double __ocml_add_rtn_f64(double __x, double __y) {
  double res;
  uint32_t tmp;
  asm volatile(
    "s_getreg_b32 %1, hwreg(HW_REG_MODE)\n"
    "s_and_b32 %1, %1, 0xfffffff3\n"
    "s_or_b32 %1, %1, 8\n"
    "s_setreg_b32 hwreg(HW_REG_MODE), %1\n"
    "v_add_f64 %0, %2, %3\n"
    "s_and_b32 %1, %1, 0xfffffff3\n"
    "s_setreg_b32 hwreg(HW_REG_MODE), %1\n"
    : "=v"(res), "=&r"(tmp) : "v"(__x), "v"(__y));
  return res;
}
__device__ double __ocml_add_rtp_f64(double __x, double __y) {
  double res;
  uint32_t tmp;
  asm volatile(
    "s_getreg_b32 %1, hwreg(HW_REG_MODE)\n"
    "s_and_b32 %1, %1, 0xfffffff3\n"
    "s_or_b32 %1, %1, 4\n"
    "s_setreg_b32 hwreg(HW_REG_MODE), %1\n"
    "v_add_f64 %0, %2, %3\n"
    "s_and_b32 %1, %1, 0xfffffff3\n"
    "s_setreg_b32 hwreg(HW_REG_MODE), %1\n"
    : "=v"(res), "=&r"(tmp) : "v"(__x), "v"(__y));
  return res;
}
__device__ double __ocml_add_rtz_f64(double __x, double __y) {
  double res;
  uint32_t tmp;
  asm volatile(
    "s_getreg_b32 %1, hwreg(HW_REG_MODE)\n"
    "s_and_b32 %1, %1, 0xfffffff3\n"
    "s_or_b32 %1, %1, 12\n"
    "s_setreg_b32 hwreg(HW_REG_MODE), %1\n"
    "v_add_f64 %0, %2, %3\n"
    "s_and_b32 %1, %1, 0xfffffff3\n"
    "s_setreg_b32 hwreg(HW_REG_MODE), %1\n"
    : "=v"(res), "=&r"(tmp) : "v"(__x), "v"(__y));
  return res;
}
__DEVICE__
double __dadd_rd(double __x, double __y) {
  return __ocml_add_rtn_f64(__x, __y);
}
__DEVICE__
double __dadd_rn(double __x, double __y) {
  return __x + __y;
}
__DEVICE__
double __dadd_ru(double __x, double __y) {
  return __ocml_add_rtp_f64(__x, __y);
}
__DEVICE__
double __dadd_rz(double __x, double __y) {
  return __ocml_add_rtz_f64(__x, __y);
}

__DEVICE__
double __ddiv_rd(double __x, double __y) {
  return __xcn_ddiv_rd(__x, __y);
}
__DEVICE__
double __ddiv_rn(double __x, double __y) {
  return __xcn_ddiv_rn(__x, __y);
}
__DEVICE__
double __ddiv_ru(double __x, double __y) {
  return __xcn_ddiv_ru(__x, __y);
}
__DEVICE__
double __ddiv_rz(double __x, double __y) {
  return __xcn_ddiv_rz(__x, __y);
}

__device__ double __ocml_mul_rtn_f64(double __x, double __y) {
  double res;
  uint32_t tmp;
  asm volatile(
    "s_getreg_b32 %1, hwreg(HW_REG_MODE)\n"
    "s_and_b32 %1, %1, 0xfffffff3\n"
    "s_or_b32 %1, %1, 8\n"
    "s_setreg_b32 hwreg(HW_REG_MODE), %1\n"
    "v_mul_f64 %0, %2, %3\n"
    "s_and_b32 %1, %1, 0xfffffff3\n"
    "s_setreg_b32 hwreg(HW_REG_MODE), %1\n"
    : "=v"(res), "=&r"(tmp) : "v"(__x), "v"(__y));
  return res;
}
__device__ double __ocml_mul_rtp_f64(double __x, double __y) {
  double res;
  uint32_t tmp;
  asm volatile(
    "s_getreg_b32 %1, hwreg(HW_REG_MODE)\n"
    "s_and_b32 %1, %1, 0xfffffff3\n"
    "s_or_b32 %1, %1, 4\n"
    "s_setreg_b32 hwreg(HW_REG_MODE), %1\n"
    "v_mul_f64 %0, %2, %3\n"
    "s_and_b32 %1, %1, 0xfffffff3\n"
    "s_setreg_b32 hwreg(HW_REG_MODE), %1\n"
    : "=v"(res), "=&r"(tmp) : "v"(__x), "v"(__y));
  return res;
}
__device__ double __ocml_mul_rtz_f64(double __x, double __y) {
  double res;
  uint32_t tmp;
  asm volatile(
    "s_getreg_b32 %1, hwreg(HW_REG_MODE)\n"
    "s_and_b32 %1, %1, 0xfffffff3\n"
    "s_or_b32 %1, %1, 12\n"
    "s_setreg_b32 hwreg(HW_REG_MODE), %1\n"
    "v_mul_f64 %0, %2, %3\n"
    "s_and_b32 %1, %1, 0xfffffff3\n"
    "s_setreg_b32 hwreg(HW_REG_MODE), %1\n"
    : "=v"(res), "=&r"(tmp) : "v"(__x), "v"(__y));
  return res;
}
__DEVICE__
double __dmul_rd(double __x, double __y) {
  return __ocml_mul_rtn_f64(__x, __y);
}
__DEVICE__
double __dmul_rn(double __x, double __y) {
  return __x * __y;
}
__DEVICE__
double __dmul_ru(double __x, double __y) {
  return __ocml_mul_rtp_f64(__x, __y);
}
__DEVICE__
double __dmul_rz(double __x, double __y) {
  return __ocml_mul_rtz_f64(__x, __y);
}

#if defined OCML_BASIC_ROUNDED_OPERATIONS
__DEVICE__
double __drcp_rd(double __x) { return 1.0 / __x; }
__DEVICE__
double __drcp_rn(double __x) { return 1.0 / __x; }
__DEVICE__
double __drcp_ru(double __x) { return 1.0 / __x; }
__DEVICE__
double __drcp_rz(double __x) { return 1.0 / __x; }
#else
__DEVICE__
double __drcp_rn(double __x) { return 1.0 / __x; }
#endif

__device__ float64_t f64_sqrt(float64_t a, enum XCN_RoundMode round_mode) {
  union ui64_f64 uA;
  uint_fast64_t uiA;
  bool signA;
  int_fast16_t expA;
  uint_fast64_t sigA, uiZ;
  struct exp16_sig64 normExpSig;
  int_fast16_t expZ;
  uint32_t sig32A, recipSqrt32, sig32Z;
  uint_fast64_t rem;
  uint32_t q;
  uint_fast64_t sigZ, shiftedSigZ;
  union ui64_f64 uZ;

  /*------------------------------------------------------------------------
   *------------------------------------------------------------------------*/
  uA.f = a;
  uiA = uA.ui;
  signA = signF64UI(uiA);
  expA = expF64UI(uiA);
  sigA = fracF64UI(uiA);
  /*------------------------------------------------------------------------
   *------------------------------------------------------------------------*/
  if (expA == 0x7FF) {
    if (sigA) {
      uiZ = softfloat_propagateNaNF64UI(uiA, 0);
      uZ.ui = uiZ;
      return uZ.f;
    }
    if (!signA)
      return a;
    uZ.ui = defaultNaNF64UI;
    return uZ.f;
  }
  /*------------------------------------------------------------------------
   *------------------------------------------------------------------------*/
  if (signA) {
    if (!(expA | sigA))
      return a;
    uZ.ui = defaultNaNF64UI;
    return uZ.f;
  }
  /*------------------------------------------------------------------------
   *------------------------------------------------------------------------*/
  if (!expA) {
    if (!sigA)
      return a;
    normExpSig = softfloat_normSubnormalF64Sig(sigA);
    expA = normExpSig.exp;
    sigA = normExpSig.sig;
  }
  /*------------------------------------------------------------------------
  | (`sig32Z' is guaranteed to be a lower bound on the square root of
  | `sig32A', which makes `sig32Z' also a lower bound on the square root of
  | `sigA'.)
  *------------------------------------------------------------------------*/
  expZ = ((expA - 0x3FF) >> 1) + 0x3FE;
  expA &= 1;
  sigA |= UINT64_C(0x0010000000000000);
  sig32A = sigA >> 21;
  recipSqrt32 = softfloat_approxRecipSqrt32_1(expA, sig32A);
  sig32Z = ((uint_fast64_t)sig32A * recipSqrt32) >> 32;
  if (expA) {
    sigA <<= 8;
    sig32Z >>= 1;
  } else {
    sigA <<= 9;
  }
  rem = sigA - (uint_fast64_t)sig32Z * sig32Z;
  q = ((uint32_t)(rem >> 2) * (uint_fast64_t)recipSqrt32) >> 32;
  sigZ = ((uint_fast64_t)sig32Z << 32 | 1 << 5) + ((uint_fast64_t)q << 3);
  /*------------------------------------------------------------------------
   *------------------------------------------------------------------------*/
  if ((sigZ & 0x1FF) < 0x22) {
    sigZ &= ~(uint_fast64_t)0x3F;
    shiftedSigZ = sigZ >> 6;
    rem = (sigA << 52) - shiftedSigZ * shiftedSigZ;
    if (rem & UINT64_C(0x8000000000000000)) {
      --sigZ;
    } else {
      if (rem)
        sigZ |= 1;
    }
  }
  return softfloat_roundPackToF64(0, expZ, sigZ, round_mode);
}

__device__ double __xcn_dsqrt(double x, enum XCN_RoundMode round_mode) {
  float64_t a, c;
  double res;
  __builtin_memcpy(&a, &x, sizeof(double));
  c = f64_sqrt(a, round_mode);
  __builtin_memcpy(&res, &c, sizeof(double));
  if (__isnan(res)) {
    uint64_t tmp = 0x7FFFFFFFFFFFFFFF;
    __builtin_memcpy(&res, &tmp, sizeof(double));
  }
  return res;
}

__device__ double __xcn_dsqrt_rd(double x) { return __xcn_dsqrt(x, XCN_RD); }

__device__ double __xcn_dsqrt_ru(double x) { return __xcn_dsqrt(x, XCN_RU); }

__device__ double __xcn_dsqrt_rz(double x) { return __xcn_dsqrt(x, XCN_RZ); }

__DEVICE__
double __dsqrt_rd(double __x) { return __xcn_dsqrt_rd(__x); }
__DEVICE__
double __dsqrt_ru(double __x) { return __xcn_dsqrt_ru(__x); }
__DEVICE__
double __dsqrt_rz(double __x) { return __xcn_dsqrt_rz(__x); }
__DEVICE__
double __dsqrt_rn(double __x) {
  if (__isnan(__x)) {
    uint64_t tmp = 0x7FFFFFFFFFFFFFFF;
    double res;
    __builtin_memcpy(&res, &tmp, sizeof(double));
    return res;
  }
  return __builtin_sqrt(__x);
}

#if defined OCML_BASIC_ROUNDED_OPERATIONS
__device__ double __ocml_sub_rtn_f64(double __x, double __y) {
  double res;
  uint32_t tmp;
  asm volatile(
    "s_getreg_b32 %1, hwreg(HW_REG_MODE)\n"
    "s_and_b32 %1, %1, 0xfffffff3\n"
    "s_or_b32 %1, %1, 8\n"
    "s_setreg_b32 hwreg(HW_REG_MODE), %1\n"
    "v_add_f64 %0, %2, -%3\n"
    "s_and_b32 %1, %1, 0xfffffff3\n"
    "s_setreg_b32 hwreg(HW_REG_MODE), %1\n"
    : "=v"(res), "=&r"(tmp) : "v"(__x), "v"(__y));
  return res;
}
__device__ double __ocml_sub_rtp_f64(double __x, double __y) {
  double res;
  uint32_t tmp;
  asm volatile(
    "s_getreg_b32 %1, hwreg(HW_REG_MODE)\n"
    "s_and_b32 %1, %1, 0xfffffff3\n"
    "s_or_b32 %1, %1, 4\n"
    "s_setreg_b32 hwreg(HW_REG_MODE), %1\n"
    "v_add_f64 %0, %2, -%3\n"
    "s_and_b32 %1, %1, 0xfffffff3\n"
    "s_setreg_b32 hwreg(HW_REG_MODE), %1\n"
    : "=v"(res), "=&r"(tmp) : "v"(__x), "v"(__y));
  return res;
}
__device__ double __ocml_sub_rtz_f64(double __x, double __y) {
  double res;
  uint32_t tmp;
  asm volatile(
    "s_getreg_b32 %1, hwreg(HW_REG_MODE)\n"
    "s_and_b32 %1, %1, 0xfffffff3\n"
    "s_or_b32 %1, %1, 12\n"
    "s_setreg_b32 hwreg(HW_REG_MODE), %1\n"
    "v_add_f64 %0, %2, -%3\n"
    "s_and_b32 %1, %1, 0xfffffff3\n"
    "s_setreg_b32 hwreg(HW_REG_MODE), %1\n"
    : "=v"(res), "=&r"(tmp) : "v"(__x), "v"(__y));
  return res;
}
__DEVICE__
double __dsub_rd(double __x, double __y) {
  return __ocml_sub_rtn_f64(__x, __y);
}
__DEVICE__
double __dsub_rn(double __x, double __y) {
  return __x - __y;;
}
__DEVICE__
double __dsub_ru(double __x, double __y) {
  return __ocml_sub_rtp_f64(__x, __y);
}
__DEVICE__
double __dsub_rz(double __x, double __y) {
  return __ocml_sub_rtz_f64(__x, __y);
}
#else
__DEVICE__
double __dsub_rn(double __x, double __y) { return __x - __y; }
#endif

#if defined OCML_BASIC_ROUNDED_OPERATIONS
__DEVICE__
double __fma_rd(double __x, double __y, double __z) {
  return __ocml_fma_f64(__x, __y, __z);
}
__DEVICE__
double __fma_rn(double __x, double __y, double __z) {
  return __ocml_fma_f64(__x, __y, __z);
}
__DEVICE__
double __fma_ru(double __x, double __y, double __z) {
  return __ocml_fma_f64(__x, __y, __z);
}
__DEVICE__
double __fma_rz(double __x, double __y, double __z) {
  return __ocml_fma_f64(__x, __y, __z);
}
#else
__DEVICE__
double __fma_rn(double __x, double __y, double __z) {
  return __ocml_fma_f64(__x, __y, __z);
}
#endif
// END INTRINSICS
// END DOUBLE

// C only macros
#if !defined(__cplusplus) && __STDC_VERSION__ >= 201112L
#define isfinite(__x) _Generic((__x), float : __finitef, double : __finite)(__x)
#define isinf(__x) _Generic((__x), float : __isinff, double : __isinf)(__x)
#define isnan(__x) _Generic((__x), float : __isnanf, double : __isnan)(__x)
#define signbit(__x)                                                           \
  _Generic((__x), float : __signbitf, double : __signbit)(__x)
#endif // !defined(__cplusplus) && __STDC_VERSION__ >= 201112L

#if defined(__cplusplus)
template <class T> __DEVICE__ T min(T __arg1, T __arg2) {
  return (__arg1 < __arg2) ? __arg1 : __arg2;
}

template <class T> __DEVICE__ T max(T __arg1, T __arg2) {
  return (__arg1 > __arg2) ? __arg1 : __arg2;
}

__DEVICE__ int min(int __arg1, int __arg2) {
  return (__arg1 < __arg2) ? __arg1 : __arg2;
}
__DEVICE__ int max(int __arg1, int __arg2) {
  return (__arg1 > __arg2) ? __arg1 : __arg2;
}

__DEVICE__
float max(float __x, float __y) { return fmaxf(__x, __y); }

__DEVICE__
double max(double __x, double __y) { return fmax(__x, __y); }

__DEVICE__
float min(float __x, float __y) { return fminf(__x, __y); }

__DEVICE__
double min(double __x, double __y) { return fmin(__x, __y); }

#if !defined(__HOUYICC_RTC__) && !defined(__OPENMP_AMDGCN__)
__host__ inline static int min(int __arg1, int __arg2) {
  return std::min(__arg1, __arg2);
}

__host__ inline static int max(int __arg1, int __arg2) {
  return std::max(__arg1, __arg2);
}
#endif // !defined(__HOUYICC_RTC__) && !defined(__OPENMP_AMDGCN__)
#endif

#pragma pop_macro("__DEVICE__")
#pragma pop_macro("__RETURN_TYPE")

#endif // __CLANG_HOUYI_MATH_H__
