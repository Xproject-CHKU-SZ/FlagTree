/*!\file xtdk_sys.h 
* \brief XPU C/CPP中的系统操作接口。
*/

#ifndef __XPU_KERNEL_XTDK_SYS_H
#define __XPU_KERNEL_XTDK_SYS_H

/** 
 * \brief 获取cluster的物理id
 * \return 当前cluster的物理id
 */
static inline int __device__ __NO_INSTRUMENT__ physical_cluster_id() {
  return __builtin_xpu_cluster_id();
}

/** 
 * \brief 获取core的物理id
 * \return 当前core的物理id
 */
static inline __device__ __NO_INSTRUMENT__ int core_id() {
  return __builtin_xpu_core_id();
}

/** 
 * \brief 获取cluster的逻辑id
 * \return 当前cluster的逻辑id
 */
static inline int __device__ __NO_INSTRUMENT__ cluster_id() {
  return __builtin_xpu_load_param(0);
}

/** 
 * \brief 获取cluster的逻辑数量
 * \return 当前kernel调用的cluster的逻辑数量
 */
static inline int __device__ __NO_INSTRUMENT__ cluster_num() {
  return __builtin_xpu_load_param(1);
}

/** 
 * \brief 获取core的数量
 * \return 当前kernel调用的core的数量
 */
static inline int __device__ __NO_INSTRUMENT__ core_num() {
  return __builtin_xpu_load_param(2);
}

#include "xpu/kernel/xtdk_sys_xpu1.h"
#include "xpu/kernel/xtdk_sys_xpu2.h"
#include "xpu/kernel/xtdk_sys_xpu3.h"

#endif // __XPU_KERNEL_XTDK_SYS_H
