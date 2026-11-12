/*!\file  xtdk_math_xpu3.h
 * \brief XPU3/4硬件支持的基础数学运算接口
 * \see docs/xpu/DeveloperGuide.md
*/

#ifndef __XPU_KERNEL_XTDK_MATH_XPU3_H
#define __XPU_KERNEL_XTDK_MATH_XPU3_H

#if __xpu_subarch__ >= 3
/**
 * \brief 无符号32位整型求最小值
 */
static __device__ inline unsigned int min_u(unsigned int a, unsigned int b) {
  unsigned int ret;
  ret = __builtin_xpu3_umin(a, b);
  return ret;
}

/**
 * \brief 无符号64位整型求最小值
 */
static __device__ inline uint64_t min_ul(uint64_t a, uint64_t b) {
  uint64_t ret;
  ret = __builtin_xpu3_ulmin(a, b);
  return ret;
}

/**
 * \brief 有符号64位整型求最小值
 */
static __device__ inline int64_t min_l(int64_t a, int64_t b) {
  int64_t ret;
  ret = __builtin_xpu3_lmin(a, b);
  return ret;
}

/**
 * \brief 无符号32位整型求最大值
 */
static __device__ inline unsigned int max_u(unsigned int a, unsigned int b) {
  unsigned int ret;
  ret = __builtin_xpu3_umax(a, b);
  return ret;
}

/**
 * \brief 无符号64位整型求最大值
 */
static __device__ inline uint64_t max_ul(uint64_t a, uint64_t b) {
  uint64_t ret;
  ret = __builtin_xpu3_ulmax(a, b);
  return ret;
}

/**
 * \brief 有符号64位整型求最大值
 */
static __device__ inline int64_t max_l(int64_t a, int64_t b) {
  int64_t ret;
  ret = __builtin_xpu3_lmax(a, b);
  return ret;
}

/**
 * \brief 双精度浮点型求最小值
 */
static __device__ inline double fmin_d(double a, double b) {
  double ret;
  ret = __builtin_fmin(a, b);
  return ret;
}

/**
 * \brief 双精度浮点型求最大值
 */
static __device__ inline double fmax_d(double a, double b) {
  double ret;
  ret = __builtin_fmax(a, b);
  return ret;
}

/**
 * \brief 有符号32位整型取绝对值
 */
static __device__ inline int abs_s(int a) {
  int ret;
  ret = __builtin_xpu3_abs(a);
  return ret;
}

/**
 * \brief 有符号64位整型取绝对值
 */
static __device__ inline int64_t abs_l(int64_t a) {
  int64_t ret;
  ret = __builtin_xpu3_labs(a);
  return ret;
}

/**
 * \brief 单精度浮点型取绝对值
 */
static __device__ inline float fabs(float t) {
  return __builtin_fabsf(t);
}

#endif
#endif