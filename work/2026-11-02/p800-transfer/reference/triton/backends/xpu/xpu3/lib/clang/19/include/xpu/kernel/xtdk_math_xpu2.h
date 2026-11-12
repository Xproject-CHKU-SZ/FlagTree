/*!\file  xtdk_math_xpu2.h
 * \brief XPU2/3/4硬件支持的基础数学运算接口
 * \see docs/xpu/DeveloperGuide.md
*/

#ifndef __XPU_KERNEL_XTDK_MATH_XPU2_H
#define __XPU_KERNEL_XTDK_MATH_XPU2_H

#if __xpu_subarch__ >= 2

#include "xpu/kernel/xtdk_float.h"

/**
 * \brief 单精度浮点型向最近整数取整
 */
static __device__ inline float rint(float input) {
    float ret;
    ret = __builtin_rintf(input);
    return ret;
}

/**
 * \brief 单精度浮点型向零取整
 */
static __device__ inline float trunc(float input) {
    float ret;
    ret = __builtin_truncf(input);
    return ret;
}

/**
 * \brief 单精度浮点型向上取整
 */
static __device__ inline float ceil(float input) {
    float ret;
    ret = __builtin_ceilf(input);
    return ret;
}

/**
 * \brief 单精度浮点型向下取整
 */
static __device__ inline float floor(float input) {
    float ret;
    ret = __builtin_floorf(input);
    return ret;
}

/**
 * \brief 单精度浮点型转有符号整型，向最近整数取整
 */
static __device__ inline int float2fix(float input) {
    int ret;
    ret = __builtin_xpu_float2fix_rn(input);
    return ret;
}

/**
 * \brief 单精度浮点型求幂,fast版本，结果向最近整数取整
 * 
 * \param input1 底数，必须为正数
 * \param input2 指数
 * \return 幂
 */

static __device__ inline float fast_pow(float input1, float input2) {
    float ret;
    float mul_res;
    float log_res = __builtin_xpu_log2f(input1);
    mul_res = __builtin_xpu_mulf(log_res, input2);
    ret = __builtin_xpu_exp2f(mul_res);
    return ret;
}

/**
 * \brief 单精度浮点型求幂，结果向最近整数取整，输入不能为inf
 * 
 * \param input1 底数
 * \param input2 指数
 * \return 幂
 */
static __device__ inline float pow(float input1, float input2) {
    float ret;
    float mul_res;
    float log_res;
    if (input1 > 0.0f) {
      log_res = __builtin_xpu_log2f(input1);
      mul_res = __builtin_xpu_mulf(log_res, input2);
      ret = __builtin_xpu_exp2f(mul_res);
    } else if ((input1 < 0.0f) && (rint(input2) != input2)) { // intput1 is negative and input2 is not integer
      ret = __builtin_nanf ("");
    } else if (input2 == 0.0f) {
      ret = 1.0f;
    } else if (input1 == 0.0f && input2 > 0.0f) {
      ret = 0.0f;
    } else if (input1 == 0.0f && input2 < 0.0f) {
      ret = __builtin_inff();
    } else if (rint(0.5f * input2) == (0.5f * input2)) { // input2 is even
      log_res = __builtin_xpu_log2f(-input1);
      mul_res = __builtin_xpu_mulf(log_res, input2);
      ret = __builtin_xpu_exp2f(mul_res);
    } else {
      log_res = __builtin_xpu_log2f(-input1);
      mul_res = __builtin_xpu_mulf(log_res, input2);
      ret = -__builtin_xpu_exp2f(mul_res);
    }
    return ret;
}

/**
 * \brief 单精度浮点型以e为底求对数，结果向零取整
 */
static __device__ inline float log_rz(float input) {
    float ret;
    ret = __builtin_xpu_log2f_rz(input);
    return ret;
}

/**
 * \brief 单精度浮点型以e为底求对数，结果向上取整
 */
static __device__ inline float log_ru(float input) {
    float ret;
    ret = __builtin_xpu_log2f_ru(input);
    return ret;
}

/**
 * \brief 单精度浮点型以e为底求对数，结果向下取整
 */
static __device__ inline float log_rd(float input) {
    float ret;
    ret = __builtin_xpu_log2f_rd(input);
    return ret;
}

/**
 * \brief 单精度浮点型以e为底求幂数，结果向零取整
 */
static __device__ inline float exp_rz(float input) {
    float ret;
    ret = __builtin_xpu_exp2f_rz(input);
    return ret;
}

/**
 * \brief 单精度浮点型以e为底求幂数，结果向上取整
 */
static __device__ inline float exp_ru(float input) {
    float ret;
    ret = __builtin_xpu_exp2f_ru(input);
    return ret;
}

/**
 * \brief 单精度浮点型以e为底求幂数，结果向下取整
 */
static __device__ inline float exp_rd(float input) {
    float ret;
    ret = __builtin_xpu_exp2f_rd(input);
    return ret;
}

/**
 * \brief 单精度浮点型求幂，结果向零取整，fast版本
 * 
 * \param input1 底数，必须为正数
 * \param input2 指数
 * \return 幂
 */
static __device__ inline float fast_pow_rz(float input1, float input2) {
    float ret;
    float mul_res;
    float log_res = log_rz(input1);
    mul_res = __builtin_xpu_mulf_rz(log_res, input2);
    ret = __builtin_xpu_exp2f_rz(mul_res);
    return ret;
}

/**
 * \brief 单精度浮点型求幂，结果向零取整，输入不能为inf
 * 
 * \param input1 底数
 * \param input2 指数
 * \return 幂
 */
static __device__ inline float pow_rz(float input1, float input2) {
    float ret;
    float mul_res;
    float log_res;
    if (input1 > 0.0f) {
      log_res = log_rz(input1);
      mul_res = __builtin_xpu_mulf_rz(log_res, input2);
      ret = __builtin_xpu_exp2f_rz(mul_res);
    } else if ((input1 < 0.0f) && (trunc(input2) != input2)) { // intput1 is negative and input2 is not integer
      ret = __builtin_nanf ("");
    } else if (input2 == 0.0f) {
      ret = 1.0f;
    } else if (input1 == 0.0f && input2 > 0.0f) {
      ret = 0.0f;
    } else if (input1 == 0.0f && input2 < 0.0f) {
      ret = __builtin_inff();
    } else if (trunc(0.5f * input2) == (0.5f * input2)) { // input2 is even
      log_res = log_rz(-input1);
      mul_res = __builtin_xpu_mulf_rz(log_res, input2);
      ret = __builtin_xpu_exp2f_rz(mul_res);
    } else {
      log_res = log_rz(-input1);
      mul_res = __builtin_xpu_mulf_rz(log_res, input2);
      ret = -__builtin_xpu_exp2f_rz(mul_res);
    }
    return ret;
}

/**
 * \brief 单精度浮点型求幂，结果向上取整，fast版本
 * 
 * \param input1 底数，必须为正数
 * \param input2 指数
 * \return 幂
 */
static __device__ inline float fast_pow_ru(float input1, float input2) {
    float ret;
    float mul_res;
    float log_res = log_ru(input1);
     mul_res = __builtin_xpu_mulf_ru(log_res, input2);
    ret = __builtin_xpu_exp2f_ru(mul_res);
    return ret;
}

/**
 * \brief 单精度浮点型求幂，结果向上取整，输入不能为inf
 * 
 * \param input1 底数
 * \param input2 指数
 * \return 幂
 */
static __device__ inline float pow_ru(float input1, float input2) {
    float ret;
    float mul_res;
    float log_res;
    if (input1 > 0.0f) {
      log_res = log_ru(input1);
      mul_res = __builtin_xpu_mulf_ru(log_res, input2);
      ret = __builtin_xpu_exp2f_ru(mul_res);
    } else if ((input1 < 0.0f) && (ceil(input2) != input2)) { // intput1 is negative and input2 is not integer
      ret = __builtin_nanf ("");
    } else if (input2 == 0.0f) {
      ret = 1.0f;
    } else if (input1 == 0.0f && input2 > 0.0f) {
      ret = 0.0f;
    } else if (input1 == 0.0f && input2 < 0.0f) {
      ret = __builtin_inff();
    } else if (ceil(0.5f * input2) == (0.5f * input2)) { // input2 is even
      log_res = log_ru(-input1);
      mul_res = __builtin_xpu_mulf_ru(log_res, input2);
      ret = __builtin_xpu_exp2f_ru(mul_res);
    } else {
      log_res = log_ru(-input1);
      mul_res = __builtin_xpu_mulf_ru(log_res, input2);
      ret = -__builtin_xpu_exp2f_ru(mul_res);
    }
    return ret;
}

/**
 * \brief 单精度浮点型求幂，结果向下取整，fast版本
 * 
 * \param input1 底数，必须为正数
 * \param input2 指数
 * \return 幂
 */
static __device__ inline float fast_pow_rd(float input1, float input2) {
    float ret;
    float mul_res;
    float log_res = log_rd(input1);
     mul_res = __builtin_xpu_mulf_rd(log_res, input2);
    ret = __builtin_xpu_exp2f_rd(mul_res);
    return ret;
}

/**
 * \brief 单精度浮点型求幂，结果向下取整，输入不能为inf
 * 
 * \param input1 底数
 * \param input2 指数
 * \return 幂
 */
static __device__ inline float pow_rd(float input1, float input2) {
    float ret;
    float mul_res;
    float log_res;
    if (input1 > 0.0f) {
      log_res = log_rd(input1);
      mul_res = __builtin_xpu_mulf_rd(log_res, input2);
      ret = __builtin_xpu_exp2f_rd(mul_res);
    } else if ((input1 < 0.0f) && (floor(input2) != input2)) { // intput1 is negative and input2 is not integer
      ret = __builtin_nanf ("");
    } else if (input2 == 0.0f) {
      ret = 1.0f;
    } else if (input1 == 0.0f && input2 > 0.0f) {
      ret = 0.0f;
    } else if (input1 == 0.0f && input2 < 0.0f) {
      ret = __builtin_inff();
    } else if (floor(0.5f * input2) == (0.5f * input2)) { // input2 is even
      log_res = log_rd(-input1);
      mul_res = __builtin_xpu_mulf_rd(log_res, input2);
      ret = __builtin_xpu_exp2f_rd(mul_res);
    } else {
      log_res = log_rd(-input1);
      mul_res = __builtin_xpu_mulf_rd(log_res, input2);
      ret = -__builtin_xpu_exp2f_rd(mul_res);
    }
    return ret;
}

/**
 * \brief   call matrix multiply on cdnn
 * \param  high_*, low_* the global memory address of mat
 * \param  m,n,k
 *              The left mat dimension is m*k
 *              The right mat dimension is k*n
 *              The result dimension is m*n
 * \param  max_a, max_b
 *              Set the maximum value of matrix A and B
 * \param  dataType    keep it's value to 0
 *
 * \note   The intrinsics implemented on CDNN
 */
static inline void __device__ matmul(int high_C, int low_C, int high_A, int low_A,
                                     int high_B, int low_B, int m, int n, int k,
                                     float max_a, float max_b, const int dataType=0) {
  __builtin_xpu2_mma(high_C, low_C, high_A, low_A, high_B, low_B, m,n,k,
                       max_a, max_b, dataType);
};

#endif //__arch_xpu2__ || __arch_xpu3__
#endif // __XPU_KERNEL_XTDK_MATH_XPU2_H