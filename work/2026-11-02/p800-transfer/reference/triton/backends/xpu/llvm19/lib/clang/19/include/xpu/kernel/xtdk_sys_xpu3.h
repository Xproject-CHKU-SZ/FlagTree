/*!\file xtdk_sys_xpu3.h 
* \brief XPU C/CPP中的适用于XPU3/4/5的系统操作接口。
*/

#ifndef __XPU_KERNEL_XTDK_SYS_XPU3_H
#define __XPU_KERNEL_XTDK_SYS_XPU3_H

#if defined(__arch_xpu3__) || defined(__arch_xpu4__) || defined(__arch_xpu5__)
/**
 * \brief sync cores with mask on little core
 */
static inline __device__ void __NO_INSTRUMENT__ sync_cores(int mask) {
  __builtin_xpu_sync_core(mask);
}

/**
 * \brief 获取计时器的64位值
 */
static __device__ inline unsigned long long get_clock64() {
    return __builtin_xpu_get_clock64();
}
extern "C" __device__ thread_local int g_xpu_launch_error;
__device__ inline int xpu_get_tls_lasterrno() {
    return g_xpu_launch_error;
}
#endif

#endif
