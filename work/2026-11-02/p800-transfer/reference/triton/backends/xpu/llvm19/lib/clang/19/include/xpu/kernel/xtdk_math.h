/*!\file  xtdk_math.h
 * \brief XPU1/2/3硬件支持的基础数学运算接口
 * \see docs/xpu/DeveloperGuide.md
*/

#ifndef __XPU_KERNEL_XTDK_MATH_H
#define __XPU_KERNEL_XTDK_MATH_H

#ifdef __xpu__

#include "xpu/kernel/xtdk.h"

/**
 * \brief 有符号整型求最小值
 */
static __device__ inline int min(int a, int b) {
  int ret;
  ret = __builtin_xpu_min(a, b);
  return ret;
}

/**
 * \brief 有符号整型求最大值
 */
static __device__ inline int max(int a, int b) {
  int ret;
  ret = __builtin_xpu_max(a, b);
  return ret;
}

/**
 * \brief 单精度浮点型求最小值
 */
static __device__ inline float fmin(float a, float b) {
  float ret;
  ret = __builtin_fminf(a, b);
  return ret;
}

/**
 * \brief 单精度浮点型求最大值
 */
static __device__ inline float fmax(float a, float b) {
  float ret;
  ret = __builtin_fmaxf(a, b);
  return ret;
}

/**
 * \brief 单精度浮点型求平方根，结果向最近整数取整
 */
static __device__ inline float sqrt(float input) {
    float ret;
    ret = __builtin_xpu_sqrtf(input);
    return ret;
}

/**
 * \brief 单精度浮点型以e为底求对数，结果向最近整数取整
 */
static __device__ inline float log(float input) {
    float ret;
    ret = __builtin_xpu_log2f(input);
    return ret;
}

/**
 * \brief 单精度浮点型以e为底求幂数，结果向最近整数取整
 */
static __device__ inline float exp(float input) {
    float ret;
    ret = __builtin_xpu_exp2f(input);
    return ret;
}

/* x86_64-linux-gnu/sys/param.h may have a conflict define */
#ifndef roundup
/**
 * \brief 整型向上取整
 * \param n 待取整整型
 * \param k 取整单位
 * \return 取整结果
 * 
 * \note n会向上取整为k的倍数
 */
static __device__ inline int roundup(int n, int k) {
  return (n + k - 1) / k * k;
}
#endif

/**
 * \brief 整型求商后向上取整
 * \param n 被除数
 * \param k 除数
 * \return 商
 */
static __device__ inline int roundup_div(int n, int k) {
  return (n + k - 1) / k;
}

/**
 * \brief 整型向下取整
 * \param n 待取整整型
 * \param k 取整单位
 * \return 取整结果
 * 
 * \note n会向下取整为k的倍数
 */
static __device__ inline int rounddown(int n, int k) { return n / k * k; }

/**
 * \brief 整型求商后向下取整
 * \param n 被除数
 * \param k 除数
 * \return 商
 */
static __device__ inline int rounddown_div(int n, int k) { return n / k; }

/* example
static __device__ int div16(int n) {
    return n >> 4;
}
*/
/**
 * \brief 快速求1/2 1/4 1/8 1/16 1/32 1/64 1/128
 * 
 * \note div2(int n) div4(int n) div8(int n) div16(int n) div32(int n) div64(int n) div128(int n)
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
/**
 * \brief 快速求mod
 * 
 * \note mod2(int n) mod4(int n) mod8(int n) mod16(int n) mod32(int n) mod64(int n) mod128(int n) mod256(int n)
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
/**
 * \brief 快速向上取整
 * 
 * \note roundup2(int n) roundup4(int n) roundup8(int n) roundup16(int n) roundup32(int n) roundup64(int n) roundup128(int n) roundup256(int n)
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
/**
 * \brief 快速求商后向上取整
 * 
 * \note roundup_div2(int n) roundup_div4(int n) roundup_div8(int n) roundup_div16(int n) roundup_div32(int n) roundup_div64(int n) roundup_div128(int n) roundup_div256(int n)
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
/**
 * \brief 快速向下取整
 * 
 * \note rounddown2(int n) rounddown4(int n) rounddown8(int n) rounddown16(int n) rounddown32(int n) rounddown64(int n) rounddown128(int n) rounddown256(int n)
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

#include "xpu/kernel/xtdk_math_xpu3.h"
#include "xpu/kernel/xtdk_math_xpu2.h"
#include "xpu/kernel/xtdk_math_soft.h"

#endif // __xpu__
#endif // __XPU_KERNEL_XTDK_MATH_H