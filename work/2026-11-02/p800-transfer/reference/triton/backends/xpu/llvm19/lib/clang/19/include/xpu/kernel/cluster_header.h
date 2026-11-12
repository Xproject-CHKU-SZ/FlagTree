#ifndef __XPU_KERNEL_CLUSTER_HEADER_H
#define __XPU_KERNEL_CLUSTER_HEADER_H

#ifdef __xpu__

#ifndef __arch_xpu1__
#warning Support for cluster_header.h will end. Please try xtdk.h.
#endif

#define XTDK_VERSION 201
#define XTDK_VERSION_MAJOR 2
#define XTDK_VERSION_MINOR 1

#include "xpu/kernel/xtdk_type_traits.h"

#ifdef _STDINT_H
// "Note: xpu is 32bit, host is often 64bit. So please include cluster_header.h before stdint.h to skip gcc int64_t definition in .xpu or do not use alias type of "long" "\
   "Note: you need to use long long instead of long to keep same bitwidth on host and device, especially in __global__ parameter and template parameter."
#else
//#warning "Probable Seperate mode: Using device typedef for xpu device, Note uint64 === long long"
typedef signed long long int int64_t;
typedef unsigned long long int uint64_t;
typedef signed int int32_t;
typedef unsigned int uint32_t;
typedef signed short int16_t;
typedef unsigned short uint16_t;
typedef signed char int8_t;
typedef unsigned char uint8_t;
#endif

#if __cplusplus <= 199711L
#define STATIC_ASSERT(COND,MSG) typedef char static_assertion_##MSG[(COND)?1:-1]
STATIC_ASSERT(sizeof(int32_t) == 4, int32_t_should_be_32_bit);
STATIC_ASSERT(sizeof(uint32_t) == 4, uint32_t_should_be_32_bit);
STATIC_ASSERT(sizeof(int16_t) == 2, int16_t_should_be_16_bit);
STATIC_ASSERT(sizeof(uint16_t) == 2, uint16_t_should_be_16_bit);
STATIC_ASSERT(sizeof(int8_t) == 1, int8_t_should_be_8_bit);
STATIC_ASSERT(sizeof(uint8_t) == 1, uint8_t_should_be_8_bit);
#else
static_assert(sizeof(int32_t) == 4, "int32_t should be 32-bit");
static_assert(sizeof(uint32_t) == 4, "uint32_t should be 32-bit");
static_assert(sizeof(int16_t) == 2, "int16_t should be 16-bit");
static_assert(sizeof(uint16_t) == 2, "uint16_t should be 16-bit");
static_assert(sizeof(int8_t) == 1, "int8_t should be 8-bit");
static_assert(sizeof(uint8_t) == 1, "uint8_t should be 8-bit");
#endif

typedef struct {
  unsigned short val;
} half_float;

#define __64byte_aligned__ __attribute__((__aligned__(64)))
#define __32byte_aligned__ __attribute__((__aligned__(32)))
#define __16byte_aligned__ __attribute__((__aligned__(16)))
#define __8byte_aligned__ __attribute__((__aligned__(8)))

// define shared variable
#ifdef __xpu_on_host__
  #define __shared__
  #define __group_shared__
  #define __local__
  #define __simd__
#elif defined(__arch_xpu1__)
  #define __shared__ __attribute__((__aligned__(32))) __attribute__((shared))
  #define __group_shared__
  #define __local__ __attribute__((__aligned__(32)))
  #define __simd__  // no hardware component
#elif defined(__arch_xpu2__) || defined(__arch_xpu3__)
  #define __shared__ __attribute__((shared))
  #define __group_shared__ __attribute__((group_shared))
  #define __local__
  #define __simd__ __attribute__((__aligned__(64)))
#endif

#define __device__ __attribute__((device)) __attribute__((visibility("hidden")))
#define __global__ __attribute__((global))
#define __host__ __attribute__((host))

#ifdef __xpu_on_host__
#define __global_ptr__
#define __shared_ptr__
#define __group_shared_ptr__
#else
#define __global_ptr__ __attribute__((address_space(1)))
#define __shared_ptr__ __attribute__((address_space(2)))
#define __group_shared_ptr__ __attribute__((address_space(3)))
#endif
#define _global_ptr_ __global_ptr__
#define _shared_ptr_ __shared_ptr__
#define _group_shared_ptr_ __group_shared_ptr__

#define XPU_KERNEL_LOOP(param, i, n) \
  for (int i = (cluster_id() * core_num() + core_id()); \
       i < (n); \
       i += cluster_num() * core_num())


static inline void __device__ sync() {
  __builtin_xpu_sync();
}

static inline int __device__ physical_cluster_id() {
  int id = __builtin_xpu_cluster_id();
  return id;
}

static inline __device__ int core_id() {
  int id = __builtin_xpu_core_id();
  return id;
}

static inline int __device__ cluster_id() {
  int id = __builtin_xpu_load_param(0);
  return id;
}

static inline int __device__ cluster_num() {
  int num = __builtin_xpu_load_param(1);
  return num;
}

static inline int __device__ core_num() {
  int num = __builtin_xpu_load_param(2);
  return num;
};

#if defined(__arch_xpu2__)
extern "C" __device__ void _exit();

static inline __device__ void exit() {
  _exit();
}
#endif // __arch_xpu2__

#if defined(__arch_xpu2__) || defined(__arch_xpu3__)
/*
 * \brief sync between different groups in one cluster
 * \param mask index of groups to be synchronized\n
 * if the i-th bit of the mask is 1, it means you are waiting for the i-th group to complete synchronization\n
 * when the i-th group call this function, the i-th bit of its mask has to be 1\n
 * because a cluster just contains 16 groups, the high 16 bit of the mask will be dropped
 * \note if you want to sync group0 and group1, do sync_group_mask(0b0000000000000011)
 */
static inline __device__ void sync_group_mask(unsigned int mask) {
  __builtin_xpu_csr_set_sync_group(0x0000ffff & mask);
}

/*
 * \brief sync cores with mask on little core
 */
static inline __device__ void sync_cores(int mask) {
  __builtin_xpu_sync_core(mask);
}


/*
 * \brief sync all groups in one cluster
 */
static inline __device__ void sync_cluster() {
  __builtin_xpu_csr_set_sync_group(0xffff);
}

/*
 * \brief sync between different cores in one group
 */
static inline __device__ void sync_local() {
  __builtin_xpu_sync_local();
}
#endif  //__arch_xpu2__ || __arch_xpu3__

#if defined(__arch_xpu2__) || defined(__xpu_on_host__) || defined(__arch_xpu3__)
/*
 * \brief get   Performance counter value in device
 * \param index The offset in perf counter registers
 *              on xpu2 perf registers start from index 16
 *
 * \note  This is low level operation for formance measure
 */
static inline int __device__ get_pc(int index) {
  int value = __builtin_xpu2_load_param(index);
  return value;
};

/*
 * \brief   call matrix multiply on cdnn
 * \param  high_*, low_* the global memory address of mat
 * \param  m,n,k
 *              The left mat dimension is m*k
 *              The right mat dimension is k*n
 *              The result dimension is m*n
 * \param  max_a, max_b
 *              Set the maximum value of matrix A and B
 * \param  dataType    keep it's value to 0
 *
 * \note   The intrinsics implemented on CDNN
 */
static inline void __device__ matmul(int high_C, int low_C, int high_A, int low_A,
                                     int high_B, int low_B, int m, int n, int k,
                                     float max_a, float max_b, const int dataType=0) {
  __builtin_xpu2_mma(high_C, low_C, high_A, low_A, high_B, low_B, m,n,k,
                       max_a, max_b, dataType);
};



#endif //__arch_xpu2__ || __xpu_on_host__ || __arch_xpu3__

static __device__ inline int get_clock() {
  int clk = __builtin_xpu_get_clock();
  return clk;
}

enum ElementwiseOp{
  ADD = 0,
  SUB = 1,
  MUL = 2,
  DIV = 3,
  POW = 4,
  ASSIGN = 5,
};

#include "xpu/kernel/cluster_memory.h"

#include "xpu/kernel/simd.h"

#endif // __xpu__
#endif // __XPU_KERNEL_CLUSTER_HEADER_H
