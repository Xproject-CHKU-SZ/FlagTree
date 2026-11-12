/*!\file xtdk_sys_xpu1.h 
* \brief XPU C/CPP中的适用于XPU1或同时适用于XPU1和XPU2的系统操作接口。
*/

#ifndef __XPU_KERNEL_XTDK_SYS_XPU1_H
#define __XPU_KERNEL_XTDK_SYS_XPU1_H

#if defined(__arch_xpu1__)
/**
 * \brief XPU访存操作保序
 * \note mfence()能够保证在mfence()之前发生的访存操作完成访存后，\n
 *       再执行mfence()之后的其它访存或系统指令
 */
static inline void __device__ mfence() {
    __builtin_xpu_mfence();
}

/**
 * \brief 完成一个cluster内所有core的同步
 */
static inline void __device__ sync() {
  __builtin_xpu_sync();
}

/**
 * \brief 获取当前core的计时器值
 */
static __device__ inline int get_clock() {
  int clk = __builtin_xpu_get_clock();
  return clk;
}
#endif

#endif