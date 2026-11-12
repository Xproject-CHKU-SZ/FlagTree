/*!\file  xtdk_simd.h
 * \brief XPU硬件支持的simd访存和运算接口
 * \see docs/xpu/DeveloperGuide.md
*/

#ifndef __XPU_KERNEL_XTDK_SMID_H
#define __XPU_KERNEL_XTDK_SMID_H

#include "xpu/kernel/xtdk.h"

#ifdef __xpu__

// The fake xpufloat16_t type, it is int32_t in fact, for compatible with float16 type
// int types to xpufloat16_t is bitcast
// float type to xpufloat16_t is float2hf16
// xpufloat16_t to float is float2hf16
// xpufloat16_t to int types is bitcast
struct xpufloat16_t {
  unsigned short val_;
  __device__ xpufloat16_t(float arg) {
    val_ = __builtin_xpu_float2hf16_rn(arg);
  }
  __device__ xpufloat16_t(short arg) { val_ = arg; }
  __device__ xpufloat16_t(int32_t arg) { val_ = arg; } // apply on intrinsics return, like vextract,vrmax
  __device__ operator int32_t() { return val_; } // apply on intrinsics arg
  __device__ operator short () { return val_; }
  __device__ operator float() { return __builtin_xpu_hf162float_rn(val_); }
};

typedef __attribute__((ext_vector_type(16))) float float32x16_t;
typedef __attribute__((ext_vector_type(16))) int32_t int32x16_t;
typedef __attribute__((ext_vector_type(16))) uint32_t uint32x16_t;
typedef __attribute__((ext_vector_type(32))) uint16_t bfloat16x32_t;
typedef __attribute__((ext_vector_type(32))) int16_t int16x32_t;
typedef __attribute__((ext_vector_type(64))) signed char int8x64_t;
typedef __attribute__((ext_vector_type(64))) unsigned char uint8x64_t;
#if __xpu_subarch__ >= 3
typedef __attribute__((ext_vector_type(32))) _Float16 float16x32_t;
#else
typedef __attribute__((ext_vector_type(32))) uint16_t float16x32_t;
#endif

struct xpumask32_t {
  int mask;
  __device__ xpumask32_t(int m): mask{m} {}
  __device__ operator int() const {return mask;}
};
static inline __device__ xpumask32_t operator &(xpumask32_t a, xpumask32_t b) {
  return __builtin_xpu_m32and(a, b);
}
static inline __device__ xpumask32_t operator |(xpumask32_t a, xpumask32_t b) {
  return __builtin_xpu_m32or(a, b);
}
static inline __device__ xpumask32_t operator ^(xpumask32_t a, xpumask32_t b) {
  return __builtin_xpu_m32xor(a, b);
}
static inline __device__ xpumask32_t operator ~(xpumask32_t a) {
  return __builtin_xpu_m32not(a);
}

static inline __device__ xpumask32_t operator ==(xpumask32_t a, xpumask32_t b) {
  return __builtin_xpu_m32xnor(a, b);
}

#include "xpu/kernel/xtdk_simd_xpu1.h"
#include "xpu/kernel/xtdk_simd_xpu2.h"
#include "xpu/kernel/xtdk_simd_xpu3.h"

#endif

#endif
