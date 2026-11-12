/*!\file xtdk_sys_xpu2.h
* \brief XPU C/CPP中的适用于XPU2或同时适用于XPU2、XPU3和XPU4的系统操作接口。
*/

#ifndef __XPU_KERNEL_XTDK_SYS_XPU2_H
#define __XPU_KERNEL_XTDK_SYS_XPU2_H

#if __cplusplus >= 201402L
#define __XPU_DEPRECATED_FUNCTION(msg) [[deprecated(msg)]]
#else
#define __XPU_DEPRECATED_FUNCTION(msg) __attribute__((deprecated))
#endif

#if defined(__arch_xpu2__)
static __device__ inline unsigned long long get_clock64() {
  unsigned lo = __builtin_xpu_get_clock();
  unsigned hi = __builtin_xpu_get_clockh();
  return ((unsigned long long)lo) | (((unsigned long long)hi) << 32);
}

__XPU_DEPRECATED_FUNCTION("This function is deprecated. Please use get_clock64")
static __device__ inline int get_clock() {
  int clk = __builtin_xpu_get_clock();
  return clk;
}

extern "C" __device__ void _exit();
/**
 * \brief kernel执行退出
 */
static inline __device__ void exit() {
  _exit();
}
#endif // __arch_xpu2__

#if __xpu_subarch__ >= 2

/**
 * \brief 在一个cluster中，不同的group间进行同步
 * \param mask 指出了哪些group需要进行同步\n
 * 如果mask的第i个bit为1, 则表示第i个group需要进行同步\n
 * 当第i个group的core执行sync_group时，mask的第i位必须为1\n
 * 由于1个cluster仅有16个group，所以mask的高16位会被忽略\n
 * \note 例如，如果你想在group0和group1间进行sync, 可以执行 sync_group(0b0000000000000011)
 * \see example/kunlun2/sync_and_atomic
 */
static inline __device__ __NO_INSTRUMENT__ void sync_group(unsigned int mask) {
  __builtin_xpu_csr_set_sync_group(0x0000ffff & mask);
}


/**
 * \brief 完成一个cluster内所有group间的同步
 * \note 等价于sync_group(0xffff)
 * \see example/kunlun2/sync_and_atomic
 */
static inline __device__ __NO_INSTRUMENT__ void sync_all() {
  __builtin_xpu_csr_set_sync_group(0xffff);
}

/**
 * \brief 完成一个group内所有core的同步
 * \note 在sync_group时，XPU会先行完成相应group内的sync_local，
 *       因此不需要在sync_group前额外执行sync_local
 * \see example/kunlun2/sync_and_atomic
 */
static inline __device__ __NO_INSTRUMENT__ void sync_local() {
  __builtin_xpu_sync_local();
}

/**
 * \brief 在一个cluster中，不同的group间进行同步
 * \param mask 指出了哪些group需要进行同步\n
 * 如果mask的第i个bit为1, 则表示第i个group需要进行同步\n
 * 当第i个group的core执行sync_group时，mask的第i位必须为1\n
 * 由于1个cluster仅有16个group，所以mask的高16位会被忽略\n
 * 在sync_group时，XPU会先行完成sync_local，不需要在sync_group前额外执行sync_local
 * \note 例如，如果你想在group0和group1间进行sync, 可以执行 sync_group_mask(0b0000000000000011)
 * \see example/kunlun2/sync_and_atomic
 */
static inline __device__ __NO_INSTRUMENT__ void sync_group_mask(unsigned int mask) {
  __builtin_xpu_csr_set_sync_group(0x0000ffff & mask);
}

/**
 * \brief 完成一个cluster内所有group间的同步
 * \note 等价于sync_group_mask(0xffff)
 * \see example/kunlun2/sync_and_atomic
 */
static inline __device__ __NO_INSTRUMENT__ void sync_cluster() {
  __builtin_xpu_csr_set_sync_group(0xffff);
}

/**
 * \brief 获取XPU的性能计数器值
 * \param index 性能计数器索引偏移量，参数范围为0-15
 *              性能计数器的基址为16
 * \return 由性能计数器读取的数据
 */
static inline int __device__ get_pc(int index) {
  int value = __builtin_xpu2_load_param(index);
  return value;
};

/**
 * \brief XPU访存操作保序
 * \note mfence()能够保证在mfence()之前发生的访存操作完成访存后，\n
 *       再执行mfence()之后的其它访存或系统指令
 * \see example/kunlun2/mfence
 */
template <int mask = 7> static inline void __device__ __NO_INSTRUMENT__ mfence() {
  __builtin_xpu2_mfence(mask);
}

/**
 * \brief XPU local memory访存操作保序
 * \note mfence_lm()能够保证在mfence_lm()之前发生的local memory上访存操作完成访存后，\n
 *       再执行mfence_lm()之后的其它local memory访存或系统指令
 * \see example/kunlun2/mfence
 */
static inline void __device__ __NO_INSTRUMENT__ mfence_lm() {
  mfence<1>();
}

/**
 * \brief XPU shared memory访存操作保序
 * \note mfence_sm()能够保证在mfence_sm()之前发生的shared memory上访存操作完成访存后，\n
 *       再执行mfence_sm()之后的其它shared memory访存或系统指令
 * \see example/kunlun2/mfence
 */
static inline void __device__ __NO_INSTRUMENT__ mfence_sm() {
  mfence<2>();
}

/**
 * \brief XPU local memroy和shared memory访存操作保序
 * \note mfence_lm_sm()能够保证在mfence_lm_sm()之前发生的local memroy和shared memory上访存操作完成访存后，\n
 *       再执行mfence_lm_sm()之后的其它local memory和shared memory访存指令或系统指令\n
 * \see example/kunlun2/mfence
 */
static inline void __device__ __NO_INSTRUMENT__ mfence_lm_sm() {
  mfence<3>();
}

/**
 * \brief XPU global memory访存操作保序
 * \note mfence_gm()能够保证在mfence_gm()之前发生的global memory上访存操作完成访存后，\n
 *       再执行mfence_gm()之后的其它gloabl memory访存或系统指令
 * \see example/kunlun2/mfence
 */
static inline void __device__ __NO_INSTRUMENT__ mfence_gm() {
  mfence<4>();
}

/**
 * \brief XPU local memroy和global memory访存操作保序
 * \note mfence_lm_gm()能够保证在mfence_lm_gm()之前发生的local memroy和global memory上访存操作完成访存后，\n
 *       再执行mfence_lm_gm()之后的其它local memory和global memory访存指令或系统指令\n
 * \see example/kunlun2/mfence
 */
static inline void __device__ __NO_INSTRUMENT__ mfence_lm_gm() {
  mfence<5>();
}

/**
 * \brief XPU shared memroy和global memory访存操作保序
 * \note mfence_sm_gm()能够保证在mfence_sm_gm()之前发生的shared memroy和global memory上访存操作完成访存后，\n
 *       再执行mfence_sm_gm()之后的其它shared memory和global memory访存指令或系统指令\n
 * \see example/kunlun2/mfence
 */
static
static inline void __device__ __NO_INSTRUMENT__ mfence_sm_gm() {
  mfence<6>();
}

/**
 * \brief XPU访存操作保序
 * \note 等价于mfence()
 * \see example/kunlun2/mfence
 */
static inline void __device__ __NO_INSTRUMENT__ mfence_lm_sm_gm() {
  mfence<7>();
}

/**
 * \brief XPU local memory访存操作保序
 * \note mfence_local()能够保证在mfence_local()之前发生的local memory上访存操作完成访存后，\n
 *       再执行mfence_local()之后的其它local memory访存或系统指令
 * \see example/kunlun2/mfence
 */
static inline void __device__ __NO_INSTRUMENT__ mfence_local() {
  mfence<1>();
}

/**
 * \brief XPU shared memory访存操作保序
 * \note mfence_shared()能够保证在mfence_shared()之前发生的shared memory上访存操作完成访存后，\n
 *       再执行mfence_shared()之后的其它shared memory访存或系统指令
 * \see example/kunlun2/mfence
 */
static inline void __device__ __NO_INSTRUMENT__ mfence_shared() {
  mfence<2>();
}

/**
 * \brief XPU local memroy和shared memory访存操作保序
 * \note mfence_local_shared()能够保证在mfence_local_shared()之前发生的local memroy和shared memory上访存操作完成访存后，\n
 *       再执行mfence_local_shared()之后的其它local memory和shared memory访存指令或系统指令\n
 * \see example/kunlun2/mfence
 */
static inline void __device__ __NO_INSTRUMENT__ mfence_local_shared() {
  mfence<3>();
}

/**
 * \brief XPU global memory访存操作保序
 * \note mfence_global()能够保证在mfence_global()之前发生的global memory上访存操作完成访存后，\n
 *       再执行mfence_global()之后的其它gloabl memory访存或系统指令
 * \see example/kunlun2/mfence
 */
static inline void __device__ __NO_INSTRUMENT__ mfence_global() {
  mfence<4>();
}

/**
 * \brief XPU local memroy和global memory访存操作保序
 * \note mfence_local_global()能够保证在mfence_local_global()之前发生的local memroy和global memory上访存操作完成访存后，\n
 *       再执行mfence_local_global()之后的其它local memory和global memory访存指令或系统指令\n
 * \see example/kunlun2/mfence
 */
static inline void __device__ __NO_INSTRUMENT__ mfence_local_global() {
  mfence<5>();
}

/**
 * \brief XPU shared memroy和global memory访存操作保序
 * \note mfence_shared_global()能够保证在mfence_shared_global()之前发生的shared memroy和global memory上访存操作完成访存后，\n
 *       再执行mfence_shared_global()之后的其它shared memory和global memory访存指令或系统指令\n
 * \see example/kunlun2/mfence
 */
static inline void __device__ __NO_INSTRUMENT__ mfence_shared_global() {
  mfence<6>();
}

/**
 * \brief XPU访存操作保序
 * \note 等价于mfence()
 * \see example/kunlun2/mfence
 */
static inline void __device__ __NO_INSTRUMENT__ mfence_local_shared_global() {
  mfence<7>();
}

#endif

#endif