/*!\file xtdk.h 
 * \brief XCN C/CPP中所必须的基础宏定义以及系统操作和访存操作接口。
*/

#ifndef __XCN_KERNEL_XTDK_H__
#define __XCN_KERNEL_XTDK_H__

#ifdef __XCN__

#ifndef __HOUYICC_RTC__
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <cassert>
#include <cmath>
#include <cstdint>
#include <cstring>
#endif

#ifdef __xcn_on_host__
#define __shared__
#elif defined(__xcn_on_device__)
/**
 * \brief 用于修饰位于shared memory的变量和数组。
 */
#define __shared__ __attribute__((shared))
#endif

#ifdef __xcn_on_host__
#define __global_ptr__
#define __shared_ptr__
#define __constant_ptr__
#elif defined(__xcn_on_device__)
/**
 * \brief 用于修饰指向global memory或L3上的指针，即通常所称的显存。
*/
#define __global_ptr__ __attribute__((address_space(1)))

/**
 * \brief 用于修饰指向shared memory上的指针。
*/
#define __shared_ptr__ __attribute__((address_space(3)))

/**
 * \brief 用于修饰指向constant memory上的指针。
*/
#define __constant_ptr__ __attribute__((address_space(4)))
#endif

/*
 * 函数修饰宏
 * */

/**
 * \brief 用于修饰在device侧运行的函数，这种函数仅能被__gloabl__或其它__device__类型的函数调用。
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
 * \note 使用HOSTDEVICE能够巧妙地复用host侧和device侧对同一逻辑的实现。
 */
#define HOSTDEVICE __host__ __device__

#define __noinline__ __attribute__((noinline))

#define __forceinline__ inline __attribute__((always_inline))

#define __align__(x) __attribute__((aligned(x)))

#define launch_bounds_impl0(requiredMaxThreadsPerBlock)                                            \
    __attribute__((xcn_flat_work_group_size(1, requiredMaxThreadsPerBlock)))
#define launch_bounds_impl1(requiredMaxThreadsPerBlock, minBlocksPerMultiprocessor)                \
    __attribute__((xcn_flat_work_group_size(1, requiredMaxThreadsPerBlock),                     \
                   xcn_waves_per_eu(                                                             \
                       ((minBlocksPerMultiprocessor) *                                            \
                            (((requiredMaxThreadsPerBlock) +                                      \
                              __XCN_WAVEFRONT_SIZE - 1) /                                        \
                             __XCN_WAVEFRONT_SIZE) +                                             \
                        __XCN_EUS_PER_PU - 1) /                                                  \
                       __XCN_EUS_PER_PU)))
#define launch_bounds_impl2(requiredMaxThreadsPerBlock, minBlocksPerMultiprocessor,                \
                            maxBlocksPerCluster)                                                   \
    launch_bounds_impl1(requiredMaxThreadsPerBlock, minBlocksPerMultiprocessor)
#define select_impl_(_1, _2, _3, impl_, ...) impl_
#define __launch_bounds__(...)                                                                     \
  select_impl_(__VA_ARGS__, launch_bounds_impl2, launch_bounds_impl1, launch_bounds_impl0, )(__VA_ARGS__)

#define __cluster_dims__(...) __attribute__((cluster_dims(__VA_ARGS__)))

#include "xtdk_sys.h"
#include "xtdk_assert.h"
#include "xtdk_addrspace.h"
#include "xtdk_atomic_functions.h"
#include "xtdk_io.h"
#include "xtdk_type_traits.h"
#include "xtdk_vector_functions.h"
#include "xtdk_ldg.h"
#include "xtdk_cooperative_groups.h"
#include "xtdk_reduce.h"
#include "xtdk_device_functions.h"

#endif // __XCN__
#endif // __XCN_KERNEL_XTDK_H__
