/*!\file  xtdk_math_soft.h
 * \brief XPU软实现的基础数学运算接口
*/
#ifndef __XPU_KERNEL_XTDK_MATH_SOFT_H
#define __XPU_KERNEL_XTDK_MATH_SOFT_H

#include "xpu/kernel/xtdk_int.h"

#if __xpu_subarch__ <= 2
/**
 * \brief 单精度浮点型求绝对值
 */
static __device__ inline float fabs(float t) {
  unsigned int temp = __builtin_xpu_bitcast_to_uint(t);
  temp = temp & 0x7FFFFFFF;
  return __builtin_xpu_bitcast_to_float(temp);
}

/**
 * \brief 32位整型求绝对值
 */
static __device__ inline int abs_s(int t) {
  int mask = t >> (sizeof(int) * 8 - 1);
  return (t + mask) ^ mask;
}

/**
 * \brief 64位整型求绝对值
 */
static __device__ inline int64_t abs_l(int64_t t) {
  int64_t mask = t >> (sizeof(int64_t) * 8 - 1);
  return (t + mask) ^ mask;
}

#endif  // __xpu_subarch__ <= 2

/**
 * \brief 双精度浮点型求绝对值
 */
static __device__ inline float fabs_d(double t) {
  uint64_t temp = __builtin_xpu_bitcast_to_uint(t);
  temp = temp & 0x7FFFFFFFFFFFFFFF;
  return __builtin_xpu_bitcast_to_double(temp);
}

// 1/sqrt(number), Fast Inverse Square Root from wikepedia
/**
 * \brief 单精度浮点型求平方根的倒数
 * 
 * \param number 被求反平方根的操作数
 * \param epsilon 求解精度
 * 
 * \return 求解结果
 */
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

/**
 * \brief 单精度浮点型误差函数
 */
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

#endif