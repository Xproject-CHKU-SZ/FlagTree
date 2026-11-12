#ifndef __XCN_KERNEL_XTDK_ASSERT_H__
#define __XCN_KERNEL_XTDK_ASSERT_H__

#include <assert.h>
#include "xtdk_io.h"
#ifdef __HOUYICC_RTC__
#define __NO_PRINT_ASSERT_INFO
#endif


// The noinline attribute helps encapsulate the printf expansion,
// which otherwise has a performance impact just by increasing the
// size of the calling function. Additionally, the weak attribute
// allows the function to exist as a global although its definition is
// included in every compilation unit.
#if defined(_WIN32) || defined(_WIN64)
extern "C" __device__ __attribute__((noinline)) __attribute__((weak)) void
_wassert(const wchar_t *_msg, const wchar_t *_file, unsigned _line) {
  // FIXME: Need `wchar_t` support to generate assertion message.
  __builtin_trap();
}
#else  /* defined(_WIN32) || defined(_WIN64) */
extern "C" __device__ inline __attribute__((weak)) void
__assert_fail(const char *assertion, const char *file, unsigned int line,
              const char *function) {
  #if !defined(__NO_PRINT_ASSERT_INFO)
  printf<PRINTF_STDERR_FP>("%s:%u: %s: Device-side assertion `%s' failed.\n",
                           file, line, function, assertion);
  #endif
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  __builtin_xcn_s_abort(1);
#else
  __builtin_xcn_s_sendmsg(11);
  for(;;);
#endif
}

extern "C" __device__ __attribute__((noinline)) __attribute__((weak)) void
__assertfail() {
  // ignore all the args for now.
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  __builtin_xcn_s_abort(1);
#else
  __builtin_xcn_s_sendmsg(11);
  for(;;) {
    asm volatile ("");
  }
#endif
}

#endif // defined(_WIN32) || defined(_WIN64)

#endif // __XCN_KERNEL_XTDK_ASSERT_H__