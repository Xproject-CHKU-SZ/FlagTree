/*!\file xtdk.h
 * \brief XPU C/CPP中所必须的基础宏定义以及系统操作和访存操作接口。
 */

#ifndef __XPU_KERNEL_XTDK_H
#define __XPU_KERNEL_XTDK_H

#if defined __xpu__

#include "xpu/kernel/xtdk_int.h"
#include "xpu/kernel/xtdk_type_traits.h"

#define XTDK_VERSION 201
#define XTDK_VERSION_MAJOR 2
#define XTDK_VERSION_MINOR 1

#ifdef __xpu_on_host__
#define __shared__
#define __group_shared__
#define __local__
#define __simd__
#elif defined(__arch_xpu1__)
/**
 * \brief 用于修饰位于shared memory的数组。
 * \note 被__shared__修饰的数组的首地址是32bytes对齐的。
 */
#define __shared__ __attribute__((__aligned__(32))) __attribute__((shared))

/**
 * \brief 用于修饰位于local memory的变量和数组。
 * \note 被__local__修饰的数组的首地址是32bytes对齐的。
 */
#define __local__ __attribute__((__aligned__(32)))
#elif __xpu_subarch__ >= 2
/**
 * \brief 用于修饰位于shared memory的变量和数组。
 */
#define __shared__ __attribute__((shared))

/**
 * \brief 用于修饰位于group shared memory的变量和数组。
 */
#define __group_shared__ __attribute__((group_shared))

#define __local__

/**
 * \brief 用于修饰需要在local memory或shared
 * memory上首地址64字节对齐的变量或数组。 \note
 * 如果一个地址需要通过simd指令访问，那么这个地址对应的变量或数组在申请空间时需要使用__simd__修饰。\n
 *         一个向量类型变量的首地址会自然对齐到64bytes，无需使用__simd__。
 */
#define __simd__ __attribute__((__aligned__(64)))
#endif

#ifdef __xpu_on_host__
#define __global_ptr__
#define __shared_ptr__
#define __group_shared_ptr__
#elif defined(__discard_addrspace_attribute__)
#define __global_ptr__
#define __shared_ptr__
#define __group_shared_ptr__
#else
/**
 * \brief 用于修饰指向global memory或L3上的指针，即通常所称的显存。
 */
#define __global_ptr__ __attribute__((address_space(1)))

/**
 * \brief 用于修饰指向shared memory上的指针。
 */
#define __shared_ptr__ __attribute__((address_space(2)))

/**
 * \brief 用于修饰指向group shared memory上的指针。
 */
#define __group_shared_ptr__ __attribute__((address_space(3)))
#endif

#define _global_ptr_ __global_ptr__
#define _shared_ptr_ __shared_ptr__
#define _group_shared_ptr_ __group_shared_ptr__

/*
 * 函数修饰宏
 * */

/**
 * \brief
 * 用于修饰在device侧运行的函数，这种函数仅能被__gloabl__或其它__device__类型的函数调用。
 * \note 这种函数不能调用__global__函数或__host__函数。
 */
#define __device__ __attribute__((device)) __attribute__((visibility("hidden")))

/**
 * \brief 用于修饰在device侧运行的函数，这种函数仅能被__host__类型的函数调用。
 * \note 这种函数是kernel代码的入口函数。
 */
#define __global__ __attribute__((global))

/**
 * \brief 用于修饰在host侧运行的函数，这种函数仅能被其它__host__类型的函数调用。
 * \note __host__不是必须添加的，一个函数在默认情况下就具有__host__属性。
 */
#define __host__ __attribute__((host))

/**
 * \brief 既能在host侧、也能在device侧运行的函数。
 * \note 使用__HOSTDEVICE__能够巧妙地复用host侧和device侧对同一逻辑的实现。
 */
#define HOSTDEVICE __host__ __device__

/**
 * \brief 给xpu做代码覆盖率的时候,条件判断使能不给某些函数插桩。
 * \note
 * 有__DISABLE_XPU_HEADER_CODECOVERAGE__这个宏，对桩子本身及相关的函数不应该插桩。
 */
#ifdef __DISABLE_XPU_HEADER_CODECOVERAGE__
#define __NO_INSTRUMENT__ __attribute__((no_instrument_function))
#else
#define __NO_INSTRUMENT__
#endif

#include "xpu/kernel/xtdk_sys.h"
#include "xpu/kernel/xtdk_memory.h"
// #ifdef __XPU_HOUYI_LAUNCH_FUSION__
//
// #include "cuda_runtime_api.h"
// extern "C" unsigned __cudaPushCallConfiguration(dim3 gridDim, dim3 blockDim,
//                                                 size_t sharedMem = 0,
//                                                 void *stream = 0);
// #endif

#elif defined __XCN__
#include "xcn/kernel/xtdk.h"
#endif

#endif // __XPU_KERNEL_XTDK_H
