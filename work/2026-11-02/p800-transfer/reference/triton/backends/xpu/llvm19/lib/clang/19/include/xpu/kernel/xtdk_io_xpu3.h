/*!\file  xtdk_io_xpu3.h
 * \brief XPU3 printf/assert_device
 */

#ifndef __XPU_KERNEL_XTDK_IO_XPU3_H
#define __XPU_KERNEL_XTDK_IO_XPU3_H

#if defined __xpu__

#include "xpu/kernel/xtdk.h"

#if defined(__arch_xpu3__)

extern "C" {

__device__ int printf(const char *, ...);
__device__ void __assert_fail(const char *__message, const char *__file,
                              unsigned __line, const char *__function);

#if !defined(XPU_GEN_SIM_ONLY) && !defined(NDEBUG)
#define assert_device(expr)                                                    \
  (static_cast<bool>(expr)                                                     \
       ? void(0)                                                               \
       : __assert_fail(#expr, __FILE__, __LINE__, __ASSERT_FUNCTION))
#endif // !XPU_GEN_SIM_ONLY && !NDEBUG

} // extern "C"

#endif // __arch_xpu3__

#endif // __xpu__

#endif // __XPU_KERNEL_XTDK_IO_XPU3_H