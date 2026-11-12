/*===---- __clang_houyi_runtime_wrapper.h - XPU runtime support ---------------===
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

#ifndef __CLANG_XPU_RUNTIME_WRAPPER_H__
#define __CLANG_XPU_RUNTIME_WRAPPER_H__

#ifdef __cplusplus
extern "C" {
#endif //__cplusplus

// cuda kernel launch
#include "cuda_runtime_api.h"
extern "C" int __cudaPushCallConfiguration(dim3 gridSize, dim3 blockSize,
                                           size_t sharedSize = 0,
                                           void *stream = 0);


#ifdef __cplusplus
} // extern "C"
#endif //__cplusplus

#endif // __CLANG_XPU_RUNTIME_WRAPPER_H__
