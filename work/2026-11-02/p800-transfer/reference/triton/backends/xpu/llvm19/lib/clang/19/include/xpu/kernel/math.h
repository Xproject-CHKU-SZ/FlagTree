#ifndef __XPU_KERNEL_MATH_H
#define __XPU_KERNEL_MATH_H

#ifdef __xpu__

#ifndef __arch_xpu1__
#warning Support for math.h will end. Please try xtdk_math.h.
#endif

#include "xpu/kernel/cluster_header.h"

static __device__ inline int min(int a, int b) {
  int ret;
  ret = __builtin_xpu_min(a, b);
  return ret;
}

static __device__ inline int max(int a, int b) {
  int ret;
  ret = __builtin_xpu_max(a, b);
  return ret;
}

static __device__ inline float fmin(float a, float b) {
  float ret;
  ret = __builtin_xpu_fmin(a, b);
  return ret;
}

static __device__ inline float fmax(float a, float b) {
  float ret;
  ret = __builtin_xpu_fmax(a, b);
  return ret;
}

// sqrt
static __device__ inline float sqrt(float input) {
    float ret;
    ret = __builtin_xpu_sqrtf(input);
    return ret;
}

// log
static __device__ inline float log(float input) {
    float ret;
    ret = __builtin_xpu_log2f(input);
    return ret;
}

// expf
static __device__ inline float expf(float input) {
    float ret;
    ret = __builtin_xpu_exp2f(input);
    return ret;
}


// exp
static __device__ inline float exp(float input) {
    float ret;
    ret = __builtin_xpu_exp2f(input);
    return ret;
}

#if defined(__arch_xpu1__)
// power
static __device__ inline float pow(float a, float b) {
    float c = 0.0f;
    __asm__("pow_s %0, %1, %2" :"=r"(c) :"r"(a), "r"(b));
    return c;
}
#endif //__arch_xpu1__

#include <xpu/kernel/xtdk_math_xpu2.h>

static __device__ inline float fabs(float t) {
  if (t < 0.0f)
    return (0 - t);
  return t;
}

// 1/sqrt(number), Fast Inverse Square Root from wikepedia
static __device__ float fast_inverse_sqrt(float number, float epsilon) {
  const float threehalfs = 1.5F;
  float x2 = number * 0.5F;
  float y = number;
  long i = *(long *)&y; // evil floating point bit level hacking

  i = 0x5f3759df - (i >> 1);
  y = *(float *)&i;
  y = y * (threehalfs - (x2 * y * y)); // 1st iteration
  y = y * (threehalfs - (x2 * y * y)); // 2nd iteration

  return y;
}


// refer to:
// https://stackoverflow.com/questions/457408/is-there-an-easily-available-implementation-of-erf-for-python
static __device__ float fast_erf(float x) {
  bool sign = true;
  if (x < 0) {
    x = -x;
    sign = false;
  }

  const float a1 = 0.254829592;
  const float a2 = -0.284496736;
  const float a3 = 1.421413741;
  const float a4 = -1.453152027;
  const float a5 = 1.061405429;
  const float p = 0.3275911;

  float t = 1.0 / (1.0 + p * x);
  float y =
      1.0 - (((((a5 * t + a4) * t) + a3) * t + a2) * t + a1) * t * exp(-x * x);
  return sign ? y : -y;
}

#ifndef roundup
/* x86_64-linux-gnu/sys/param.h may have a conflict define */
static __device__ inline int roundup(int n, int k) {
  return (n + k - 1) / k * k;
}
#endif

static __device__ inline int roundup_div(int n, int k) {
  return (n + k - 1) / k;
}

static __device__ inline int rounddown(int n, int k) { return n / k * k; }

static __device__ inline int rounddown_div(int n, int k) { return n / k; }

/* example
static __device__ int div16(int n) {
    return n >> 4;
}
*/
#define FUNCTION_DEFINE_HELPER_DIV(value1, value2)                             \
  static __device__ inline int div##value1(int n) { return n >> value2; }
FUNCTION_DEFINE_HELPER_DIV(2, 1)
FUNCTION_DEFINE_HELPER_DIV(4, 2)
FUNCTION_DEFINE_HELPER_DIV(8, 3)
FUNCTION_DEFINE_HELPER_DIV(16, 4)
FUNCTION_DEFINE_HELPER_DIV(32, 5)
FUNCTION_DEFINE_HELPER_DIV(64, 6)
FUNCTION_DEFINE_HELPER_DIV(128, 7)

/* example
static __device__ int mod16(int n) {
    return n & 15;
}
*/
#define FUNCTION_DEFINE_HELPER_MOD(value1)                                     \
  static __device__ inline int mod##value1(int n) { return n & (value1 - 1); }
FUNCTION_DEFINE_HELPER_MOD(2)
FUNCTION_DEFINE_HELPER_MOD(4)
FUNCTION_DEFINE_HELPER_MOD(8)
FUNCTION_DEFINE_HELPER_MOD(16)
FUNCTION_DEFINE_HELPER_MOD(32)
FUNCTION_DEFINE_HELPER_MOD(64)
FUNCTION_DEFINE_HELPER_MOD(128)
FUNCTION_DEFINE_HELPER_MOD(256)

/* example
static __device__ int roundup16(int n) {
    return ((n + 15) >> 4) << 4;
}
*/
#define FUNCTION_DEFINE_HELPER_ROUNDUP(value1, value2)                         \
  static __device__ inline int roundup##value1(int n) {                        \
    return ((n + value1 - 1) >> value2) << value2;                             \
  }
FUNCTION_DEFINE_HELPER_ROUNDUP(2, 1)
FUNCTION_DEFINE_HELPER_ROUNDUP(4, 2)
FUNCTION_DEFINE_HELPER_ROUNDUP(8, 3)
FUNCTION_DEFINE_HELPER_ROUNDUP(16, 4)
FUNCTION_DEFINE_HELPER_ROUNDUP(32, 5)
FUNCTION_DEFINE_HELPER_ROUNDUP(64, 6)
FUNCTION_DEFINE_HELPER_ROUNDUP(128, 7)
FUNCTION_DEFINE_HELPER_ROUNDUP(256, 8)
/* example
static __device__ int roundup_div16(int n) {
    return (n + 15) >> 4;
}
*/
#define FUNCTION_DEFINE_HELPER_ROUNDUP_DIV(value1, value2)                     \
  static __device__ inline int roundup_div##value1(int n) {                    \
    return (n + value1 - 1) >> value2;                                         \
  }
FUNCTION_DEFINE_HELPER_ROUNDUP_DIV(2, 1)
FUNCTION_DEFINE_HELPER_ROUNDUP_DIV(4, 2)
FUNCTION_DEFINE_HELPER_ROUNDUP_DIV(8, 3)
FUNCTION_DEFINE_HELPER_ROUNDUP_DIV(16, 4)
FUNCTION_DEFINE_HELPER_ROUNDUP_DIV(32, 5)
FUNCTION_DEFINE_HELPER_ROUNDUP_DIV(64, 6)
FUNCTION_DEFINE_HELPER_ROUNDUP_DIV(128, 7)
FUNCTION_DEFINE_HELPER_ROUNDUP_DIV(256, 8)

/* example
static __device__ int rounddown16(int n) {
    return (n >> 4) << 4;
}
*/
#define FUNCTION_DEFINE_HELPER_ROUNDDOWN(value1, value2)                       \
  static __device__ inline int rounddown##value1(int n) {                      \
    return (n >> value2) << value2;                                            \
  }
FUNCTION_DEFINE_HELPER_ROUNDDOWN(2, 1)
FUNCTION_DEFINE_HELPER_ROUNDDOWN(4, 2)
FUNCTION_DEFINE_HELPER_ROUNDDOWN(8, 3)
FUNCTION_DEFINE_HELPER_ROUNDDOWN(16, 4)
FUNCTION_DEFINE_HELPER_ROUNDDOWN(32, 5)
FUNCTION_DEFINE_HELPER_ROUNDDOWN(64, 6)
FUNCTION_DEFINE_HELPER_ROUNDDOWN(128, 7)
FUNCTION_DEFINE_HELPER_ROUNDDOWN(256, 8)

#endif // __xpu__
#endif // __XPU_KERNEL_MATH_H

