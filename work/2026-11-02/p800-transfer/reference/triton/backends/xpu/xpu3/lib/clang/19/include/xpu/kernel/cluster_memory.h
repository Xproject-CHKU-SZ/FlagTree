#ifndef __XPU_KERNEL_CLUSTER_MEMORY_H
#define __XPU_KERNEL_CLUSTER_MEMORY_H

#ifdef __xpu__

template <typename T>
static inline T* __device__ lowptr(_global_ptr_ const T* srcptr) {
    T* ret = (T*) srcptr;
    return ret;
}

static inline int __device__ highptr(_global_ptr_ const void* srcptr) {
    int ret = (int) (((long long)srcptr) >> 32);
    return ret;
}

static inline int __device__ high32(long long src) {
    int ret = (int) (((long long)src) >> 32);
    return ret;
}

static inline int __device__ low32(long long src) {
    int ret = (int)src;
    return ret;
}


#if defined(__arch_xpu1__)
static inline void __device__ cfg_haddr(int haddr) {
    __builtin_xpu_cfghaddr((void *)haddr);
}

static inline void __device__ mfence() {
    __builtin_xpu_mfence();
}

/*
 * Load Functions
 * */

/*
 * \brief memory copy from Global Memory to Local Memory, async operation
 *      You should access memory after mfence() call
 * \param srcptr  The global memory pointer in global address space
 * \param dstptr  The local memory pointer in local address space
 *
 * \note This is memory kind operation
 */
static void __device__ GM2LM_ASYNC(_global_ptr_ const void* srcptr, void* dstptr, int size) {
    __builtin_xpu_gm2lm(dstptr, lowptr(srcptr), 0, size);
}

/*
 * \brief memory copy from Global Memory to Local Memory.
 *      It blocked until the operation finished.
 *      You can immediately access memory after this call.
 *      You should access memory after mfence() call.
 * \param srcptr  The global memory pointer in global address space
 * \param dstptr  The local memory pointer in local address space
 *
 * \note This is memory kind operation
 */
static void __device__ GM2LM(_global_ptr_ const void* srcptr, void* dstptr, int size) {
    cfg_haddr(highptr(srcptr));
    __builtin_xpu_gm2lm(dstptr, lowptr(srcptr), 0, size);
    mfence();
}

/*
 * \brief memory copy from Global Memory to Share Memory.
 *      It blocked until the operation finished.
 *      You can immediately access memory after this call.
 *      You should access memory after mfence() call.
 * \param srcptr  The global memory pointer in global address space
 * \param dstptr  The share memory pointer in shared address space
 *
 * \note This is memory kind operation
 */
// TODO(miaotianxiang): To make host compilation(namely, `clang -x xpu --xpu-host-only`) pass, we
// should give complete function definition, though it doesn't have any influence on generated
// host.o.
static void __device__ GM2SM(_global_ptr_ const void* srcptr, void* dstptr, int size) {
    cfg_haddr(highptr(srcptr));
    __asm__("l_gm2sm %0, %1, 0(%2) \t\n mfence"  :: "r"(size), "r"(dstptr), "r"(lowptr(srcptr)));
}

/*
 * \brief memory copy from Global Memory to Share Memory, async operation
 *      You should access memory after mfence() call
 * \param srcptr  The global memory pointer in global address space
 * \param dstptr  The share memory pointer in shared address space
 *
 * \note This is memory kind operation
 */
static void __device__ GM2SM_ASYNC(_global_ptr_ const void* srcptr, void* dstptr, int size) {
    __builtin_xpu_gm2sm(dstptr, lowptr(srcptr), 0, size);
}

/*
 * \brief memory copy from Share Memory to Local Memory, async operation
 *      You should access memory after mfence() call
 * \param srcptr  The share memory pointer in shared address space
 * \param dstptr  The local memory pointer in local address space
 *
 * \note This is memory kind operation
 */
static void __device__ SM2LM_ASYNC(const void* srcptr, void* dstptr, int size) {
    __builtin_xpu_sm2lm(dstptr, srcptr, 0, size);
}

/*
 * \brief memory copy from Share Memory to Local Memory
 *      It blocked until the operation finished.
 *      You can immediately access memory after this call.
 *      You should access memory after mfence() call.
 * \param srcptr  The share memory pointer in shared address space
 * \param dstptr  The local memory pointer in local address space
 *
 * \note This is memory kind operation
 */
static void __device__ SM2LM(const void* srcptr, void* dstptr, int size) {
    __asm__("l_sm2lm %0, %1, 0(%2) \t\n mfence"  :: "r"(size), "r"(dstptr), "r"(srcptr));
}

/*
 * \brief bundle instructions for memory copy from Share Memory to Local Memory
 *     same to SM2LM but prevent optimizer insert other instr between them.
 *
 * \param srcptr  The share memory pointer in shared address space
 * \param dstptr  The local memory pointer in local address space
 *
 * \note This is memory kind operation
 */
static void __device__ SM2LM_BUNDLE(const void* srcptr, void* dstptr, int size) {
  __asm__("l_sm2lm %0, %1, 0(%2) \t\n" "mfence"  :: "r"(size), "r"(dstptr), "r"(srcptr));
}

/*
 * Store Functions
 * */
/*
 * \brief memory copy from Share Memory to Global Memory, async operation
 *      You should access memory after mfence() call
 * \param srcptr  The share memory pointer in shared address space
 * \param dstptr  The global memory pointer in global address space
 *
 * \note This is memory kind operation
 */
static void __device__ SM2GM_ASYNC(const void* srcptr, _global_ptr_ void* dstptr, int size) {
    __builtin_xpu_sm2gm(lowptr(dstptr), 0, srcptr, size);
}

/*
 * \brief memory copy from Share Memory to Global Memory
 *      It blocked until the operation finished.
 *      You can immediately access memory after this call.
 *      You should access memory after mfence() call.
 * \param srcptr  The share memory pointer in shared address space
 * \param dstptr  The global memory pointer in global address space
 *
 * \note This is memory kind operation
 */
static void __device__ SM2GM(const void* srcptr, _global_ptr_ void* dstptr, int size) {
    cfg_haddr(highptr(dstptr));
    __asm__("s_sm2gm %0, %1, 0(%2) \t\n mfence"::"r"(size),"r"(srcptr),"r"((lowptr(dstptr))));
}

/*
 * \brief memory copy from Local Memory to Global Memory, async operation
 *      You should access memory after mfence() call
 * \param srcptr  The local memory pointer in local address space
 * \param dstptr  The global memory pointer in global address space
 *
 * \note This is memory kind operation
 */
static void __device__ LM2GM_ASYNC(const void* srcptr, _global_ptr_ void* dstptr, int size) {
    __builtin_xpu_lm2gm(lowptr(dstptr), 0, srcptr, size);
}

/*
 * \brief memory copy from Local Memory to Global Memory
 *      It blocked until the operation finished.
 *      You can immediately access memory after this call.
 *      You should access memory after mfence() call.
 * \param srcptr  The local memory pointer in local address space
 * \param dstptr  The global memory pointer in global address space
 *
 * \note This is memory kind operation
 */
static void __device__ LM2GM(const void* srcptr, _global_ptr_ void* dstptr, int size) {
    cfg_haddr(highptr(dstptr));
    __asm__("s_lm2gm %0, %1, 0(%2) \t\n mfence"::"r"(size),"r"(srcptr),"r"((lowptr(dstptr))));
}
/*
 * \brief memory copy from Local Memory to Share Memory, async operation
 *      You should access memory after mfence() call
 * \param srcptr  The local memory pointer in local address space
 * \param dstptr  The share memory pointer in shared address space
 *
 * \note This is memory kind operation
 */
static void __device__ LM2SM_ASYNC(const void* srcptr, void* dstptr, int size) {
    __builtin_xpu_lm2sm(dstptr, 0, srcptr, size);
}

/*
 * \brief memory copy from Local Memory to Share Memory
 *      It blocked until the operation finished.
 *      You can immediately access memory after this call.
 *      You should access memory after mfence() call.
 * \param srcptr  The local memory pointer in local address space
 * \param dstptr  The share memory pointer in shared address space
 *
 * \note This is memory kind operation
 */
static void __device__ LM2SM(const void* srcptr, void* dstptr, int size) {
    __asm__("s_lm2sm %0, %1, 0(%2) \t\n mfence"  :: "r"(size), "r"(srcptr), "r"(dstptr));
}

/*
 * \brief set local memory pointed by lmptr to the specified float value
 * \param lmptr  The local memory pointer in local address space
 * \param size  Number of float to be set to the value.
 * \param val  Value to be set.
 *
 * \note This is memory kind operation
 */
static void __device__ memset_lm_float(float *lmptr, int size,
                                       float val = 0.0f) {
  __local__ float zero_vec[8];
  for (int __i = 0; __i < 8; __i++) {
    zero_vec[__i] = val;
  }
  for (int __i = 0; __i < size; __i += 8) {
    float lhs = 1.0f;
    float *rhs = zero_vec;
    __asm__("svmul_s %0, %1, %2\n" ::"r"((lmptr)), "r"((lhs)), "r"((rhs)));
    lmptr += 8;
  }
}
#endif //__arch_xpu1__

static void __device__ memset_local_array(float *lmptr, int size,
                                          float val = 0.0f) {
  __local__ float zero_vec[8];
  for (int __i = 0; __i < 8; __i++) {
    zero_vec[__i] = val;
  }
  for (int __i = 0; __i < size; __i += 8) {
    float lhs = 0.0f;
    float *rhs = zero_vec;
    __builtin_xpu_svmul_s(lhs, rhs, lmptr);
    lmptr += 8;
  }
}

static void __device__ memset_local_array(void* lmptr, int c, int n) {
    int c_lb = c & 0x000000ff;      // last byte
    int c_4b = (c_lb << 8) | c_lb;  // 0x000000Xx => 0x0000XxXx
    c_4b = (c_4b << 16) | c_4b;     // 0x0000XxXx => 0xXxXxXxXx
    for (int __i = 0; __i < n; __i += 4) {
        *(int *)((char *)lmptr + __i) = c_4b;
    }
}

static void __device__ memset_lm_char(void* lmptr, int c, int n) {
    int c_lb = c & 0x000000ff;      // last byte
    int c_4b = (c_lb << 8) | c_lb;  // 0x000000Xx => 0x0000XxXx
    c_4b = (c_4b << 16) | c_4b;     // 0x0000XxXx => 0xXxXxXxXx
    for (int __i = 0; __i < n; __i += 4) {
        *(int *)((char *)lmptr + __i) = c_4b;
    }
}

#include <xpu/kernel/cluster_memory_xpu2.h>

#endif // __xpu__
#endif // __XPU_KERNEL_CLUSTER_MEMORY_H
