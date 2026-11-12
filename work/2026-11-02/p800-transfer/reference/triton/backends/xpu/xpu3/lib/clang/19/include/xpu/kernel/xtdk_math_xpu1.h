/*!\file  xtdk_math_xpu1.h
 * \brief XPU1硬件支持的基础数学运算接口
 * \see docs/xpu/DeveloperGuide.md
*/

#ifndef __XPU_KERNEL_XTDK_MATH_XPU1_H
#define __XPU_KERNEL_XTDK_MATH_XPU1_H

#if defined(__arch_xpu1__)
/**
 * \brief 单精度浮点型求幂
 * 
 * \param a 底数
 * \param b 指数
 * \return 幂
 */
static __device__ inline float pow(float a, float b) {
    float c = 0.0f;
    __asm__("pow_s %0, %1, %2" :"=r"(c) :"r"(a), "r"(b));
    return c;
}
#endif //__arch_xpu1__

#endif