/*===---- __clang_houyi_runtime_wrapper.h - HOUYI runtime support ---------------===
 *
 * Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
 * See https://llvm.org/LICENSE.txt for license information.
 * SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
 *
 *===-----------------------------------------------------------------------===
 */

/*
 * WARNING: This header is intended to be directly -include'd by
 * the compiler and is not supposed to be included by users.
 *
 */

#ifndef __CLANG_HOUYI_RUNTIME_WRAPPER_H__
#define __CLANG_HOUYI_RUNTIME_WRAPPER_H__

#if __HOUYI__

#define __host__ __attribute__((host))
#define __device__ __attribute__((device))
#define __global__ __attribute__((global))
#define __shared__ __attribute__((shared))
#define __l1__ __attribute__((l1)) __attribute__((aligned(1024)))
#define __constant__ __attribute__((constant))
#define __grid_constant__ __attribute__((grid_constant))
#define __managed__ __attribute__((managed))

#if !defined(__cplusplus) || __cplusplus < 201103L
  #define nullptr NULL;
#endif

#ifdef __cplusplus
extern "C" {
  // __attribute__((__visibility__("default")))
  // __attribute__((weak))
  // __attribute__((noreturn))
  // __device__ void __cxa_pure_virtual(void) {
  //   __builtin_trap();
  // }
  // __attribute__((__visibility__("default")))
  // __attribute__((weak))
  // __attribute__((noreturn))
  // __device__ void __cxa_deleted_virtual(void) {
  //   __builtin_trap();
  // }
}
#endif //__cplusplus

#if !defined(__HOUYICC_RTC__)
#include <cmath>
#include <cstdlib>
#include <stdlib.h>
#endif // __HOUYICC_RTC__

typedef __SIZE_TYPE__ __houyi_size_t;

#ifdef __HOUYICC_RTC__

// CUDA Tile execution spaces for the device compilation pass. The device
// pass skips the non-RTC section above, so the tile macros must be defined
// here -- before xtdk.h pulls in the CUDA vendor crt/host_defines.h, which
// would otherwise expand __tile_global__ to __location__(tile_global)
// (an NVIDIA-compiler-only location, unsupported on XCN).
#ifndef __tile_global__
#define __tile_global__ __attribute__((global))
#endif
#ifndef __tile__
#define __tile__ __attribute__((device))
#endif

typedef __SIZE_TYPE__ size_t;
typedef __PTRDIFF_TYPE__ ptrdiff_t;
typedef long int clock_t;
#define NULL ((void*)0)

namespace __nvrtc_util {
template <typename T> struct remove_ref {
  typedef T type;
};

template <typename T> struct remove_ref<T &> {
  typedef T type;
};

template <typename T> struct remove_ref<T &&> {
  typedef T type;
};

template <class T> struct is_lvalue_ref {
  static const bool val = false;
};

template <class T> struct is_lvalue_ref<T &> {
  static const bool val = true;
};

} // namespace __nvrtc_util
namespace std {
template <typename T> constexpr T &&__attribute__((device)) forward(typename __nvrtc_util::remove_ref<T>::type &__in) noexcept { return static_cast<T &&>(__in); }

template <typename T> constexpr T &&__attribute__((device)) forward(typename __nvrtc_util::remove_ref<T>::type &&__in) noexcept {
  static_assert(!__nvrtc_util::is_lvalue_ref<T>::val, "incorrect forward call!");

  return static_cast<T &&>(__in);
}

template <typename T> constexpr typename __nvrtc_util::remove_ref<T>::type &&__attribute__((device)) move(T &&__in) noexcept {
  return static_cast<typename __nvrtc_util::remove_ref<T>::type &&>(__in);
}

} // namespace std
  // namespace std
namespace std {
template <class T> class initializer_list {
public:
  typedef T value_type;

  typedef const T &reference;

  typedef const T &const_reference;

  typedef size_t size_type;

  typedef const T *iterator;

  typedef const T *const_iterator;

private:
  const T *buf_ptr;

  size_t length;

  constexpr initializer_list(const_iterator in, size_type in_length) : buf_ptr(in), length(in_length) {}

public:
  constexpr initializer_list() noexcept : buf_ptr(0), length(0) {}

  constexpr size_type size() const noexcept { return length; }

  constexpr const_iterator begin() const noexcept { return buf_ptr; }

  constexpr const_iterator end() const noexcept { return buf_ptr + length; }
};

} // namespace std

#pragma push_macro("CHAR_BIT")
#pragma push_macro("INT_MAX")

#pragma push_macro("int8_t")
#pragma push_macro("int16_t")
#pragma push_macro("int32_t")
#pragma push_macro("int64_t")

#pragma push_macro("uint8_t")
#pragma push_macro("uint16_t")
#pragma push_macro("uint32_t")
#pragma push_macro("uint64_t")

#pragma push_macro("int_fast8_t")
#pragma push_macro("int_fast16_t")
#pragma push_macro("int_fast32_t")
#pragma push_macro("int_fast64_t")

#pragma push_macro("uint_fast8_t")
#pragma push_macro("uint_fast16_t")
#pragma push_macro("uint_fast32_t")
#pragma push_macro("uint_fast64_t")

#pragma push_macro("int_least8_t")
#pragma push_macro("int_least16_t")
#pragma push_macro("int_least32_t")
#pragma push_macro("int_least64_t")

#pragma push_macro("uint_least8_t")
#pragma push_macro("uint_least16_t")
#pragma push_macro("uint_least32_t")
#pragma push_macro("uint_least64_t")

#pragma push_macro("uint")
#pragma push_macro("ulong")

#pragma push_macro("UINT64_C")

#define CHAR_BIT 8
#define INT_MAX 0x7fffffff

#define int8_t char
#define int16_t short
#define int32_t int
#define int64_t long

#define uint8_t unsigned char
#define uint16_t unsigned short
#define uint32_t unsigned int
#define uint64_t unsigned long

#define int_fast8_t char
#define int_fast16_t short
#define int_fast32_t int
#define int_fast64_t long

#define uint_fast8_t unsigned char
#define uint_fast16_t unsigned short
#define uint_fast32_t unsigned int
#define uint_fast64_t unsigned long

#define int_least8_t char
#define int_least16_t short
#define int_least32_t int
#define int_least64_t long

#define uint_least8_t unsigned char
#define uint_least16_t unsigned short
#define uint_least32_t unsigned int
#define uint_least64_t unsigned long

#define uint unsigned int
#define ulong unsigned long int

#define UINT64_C(x) x##UL
#endif


#ifdef __cplusplus
extern "C" {
#endif //__cplusplus

#if !defined(__HOUYICC_RTC__)
// cuda kernel launch
#include "cuda_runtime_api.h"
// extern "C" int cudaConfigureCall(dim3 gridSize, dim3 blockSize,
//                                  size_t sharedSize = 0,
//                                  cudaStream_t stream = 0);
#if defined(__HOUYI_TILE_MODE__)
extern "C" int __cudaPushCallConfiguration(dim3 gridSize,
                                           dim3 blockSize = dim3(64),
                                           size_t sharedSize = 65536,
                                           cudaStream_t stream = 0);
#else
extern "C" int __cudaPushCallConfiguration(dim3 gridSize, dim3 blockSize,
                                           size_t sharedSize = 0,
                                           cudaStream_t stream = 0);
#endif
// extern "C" cudaError_t cudaLaunchKernel(const void *func, dim3 gridDim,
//                                         dim3 blockDim, void **args,
//                                         size_t sharedMem, cudaStream_t stream);
#endif

extern "C" __device__ __attribute__((visibility("default"), xcn_runtime_import))
void *malloc(__houyi_size_t __size) noexcept;
extern "C" __device__ __attribute__((visibility("default"), xcn_runtime_import))
void free(void *__ptr) noexcept;

#ifdef __cplusplus
} // extern "C"
#endif //__cplusplus

#include <__clang_houyi_libdevice_declares.h>
#include <__clang_houyi_math.h>

#if defined(__HOUYICC_RTC__)
#include <__clang_houyi_cmath.h>
#else
#include <__clang_cuda_math_forward_declares.h>
#include <__clang_houyi_cmath.h>
#include <__clang_cuda_complex_builtins.h>
#include <algorithm>
#include <complex>
#include <new>
#endif // __HOUYICC_RTC__

#define __CLANG_HOUYI_RUNTIME_WRAPPER_INCLUDED__ 1
#if !defined(__HOUYICC_RTC__)
#if defined(__HOUYI_TILE_MODE__)
#ifndef __tile_global__
#define __tile_global__ __global__
#endif
#ifndef __tile__
#define __tile__ __device__
#endif
#include <xcn/kernel/xtdk.h>
#include <xcn/kernel/xtdk_io.h>
#include <xpu_cuda_tile.h>
// crt/host_defines.h (pulled in by xtdk.h above) unconditionally redefines the
// tile execution-space keywords to __location__(...) annotations that only the
// NVIDIA frontend understands; clang reports them as unknown attributes and
// drops them, which silently turns a tile-scope function into a host function.
// Re-apply the XCN mapping afterwards. __tile_global__ keeps the tile-kernel
// marker so CodeGen (CGCUDANV emitDeviceStubBodyNew) can identify tile kernels
// and clamp blockDim up to the tile lane count. __tile_builtin__ maps to
// nothing: it marks entities the NVIDIA tile compiler implements as builtins,
// and it is also spelled on types, so it cannot become __device__.
#undef __tile_global__
#define __tile_global__ __global__ __attribute__((annotate("xpu_tile_kernel")))
#undef __tile__
#define __tile__ __attribute__((tile))
#undef __tile_builtin__
#define __tile_builtin__
#endif
#endif

#endif // __HOUYI__

#ifdef __HOUYICC_RTC__
#include <xcn/kernel/xtdk.h>
#include <xcn/kernel/xtdk_vector_functions.h>
#if !defined(__HOUYICC_RTC_NO_FP16__)
#include <xcn/kernel/xtdk_float16.h>
#endif


#pragma pop_macro("CHAR_BIT")
#pragma pop_macro("INT_MAX")

#pragma pop_macro("int8_t")
#pragma pop_macro("int16_t")
#pragma pop_macro("int32_t")
#pragma pop_macro("int64_t")

#pragma pop_macro("uint8_t")
#pragma pop_macro("uint16_t")
#pragma pop_macro("uint32_t")
#pragma pop_macro("uint64_t")

#pragma pop_macro("int_fast8_t")
#pragma pop_macro("int_fast16_t")
#pragma pop_macro("int_fast32_t")
#pragma pop_macro("int_fast64_t")

#pragma pop_macro("uint_fast8_t")
#pragma pop_macro("uint_fast16_t")
#pragma pop_macro("uint_fast32_t")
#pragma pop_macro("uint_fast64_t")

#pragma pop_macro("int_least8_t")
#pragma pop_macro("int_least16_t")
#pragma pop_macro("int_least32_t")
#pragma pop_macro("int_least64_t")

#pragma pop_macro("uint_least8_t")
#pragma pop_macro("uint_least16_t")
#pragma pop_macro("uint_least32_t")
#pragma pop_macro("uint_least64_t")

#pragma pop_macro("uint")
#pragma pop_macro("ulong")

#pragma pop_macro("UINT64_C")
#endif

#endif // __CLANG_HOUYI_RUNTIME_WRAPPER_H__
