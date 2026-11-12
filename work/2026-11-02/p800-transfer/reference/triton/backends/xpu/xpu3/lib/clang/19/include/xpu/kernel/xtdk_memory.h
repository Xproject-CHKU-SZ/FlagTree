/*!\file xtdk_memory.h 
* \brief XPU C/CPP中的访存操作接口。
*/

#ifndef __XPU_KERNEL_XTDK_MEMORY_H
#define __XPU_KERNEL_XTDK_MEMORY_H

#ifdef __xpu__

/**
 * \brief 取global memroy地址的低32位
 */
template <typename T>
static inline T* __device__ __NO_INSTRUMENT__ lowptr(_global_ptr_ T* srcptr) {
    T *ret = reinterpret_cast<T*>((int) ((long long)srcptr));
    return ret;
}

/**
 * \brief 取global memroy地址的高32位
 */
static inline int __device__ __NO_INSTRUMENT__ highptr(_global_ptr_ const void* srcptr) {
    int ret = (int) (((long long)srcptr) >> 32);
    return ret;
}

/**
 * \brief 取64位整型的高32位
 */
static inline int __device__ high32(long long src) {
    int ret = (int) (((long long)src) >> 32);
    return ret;
}

/**
 * \brief 取64位整型的低32位
 */
static inline int __device__ low32(long long src) {
    int ret = (int)src;
    return ret;
}

#include "xpu/kernel/xtdk_memory_xpu1.h"
#include "xpu/kernel/xtdk_memory_xpu2.h"
#include "xpu/kernel/xtdk_memory_xpu3.h"

#endif
#endif
