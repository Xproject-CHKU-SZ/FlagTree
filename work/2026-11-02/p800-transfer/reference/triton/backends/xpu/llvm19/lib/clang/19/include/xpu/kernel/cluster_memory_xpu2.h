#ifndef __XPU_KERNEL_CLUSTER_MEMORY_XPU2_H
#define __XPU_KERNEL_CLUSTER_MEMORY_XPU2_H

#ifdef __xpu__

#if defined(__arch_xpu2__)
static inline void __device__ cfg_haddr(int haddr) {
    __builtin_xpu_set_haddr(haddr);
}

template <int mask = 7> static inline void __device__ mfence() {
  __builtin_xpu2_mfence(mask);
}

static inline void __device__ mfence_local() {
  mfence<1>();
}

static inline void __device__ mfence_shared() {
  mfence<2>();
}

static inline void __device__ mfence_local_shared() {
  mfence<3>();
}

static inline void __device__ mfence_global() {
  mfence<4>();
}

static inline void __device__ mfence_local_global() {
  mfence<5>();
}

static inline void __device__ mfence_shared_global() {
  mfence<6>();
}

static inline void __device__ mfence_local_shared_global() {
  mfence<7>();
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
    cfg_haddr(highptr(srcptr));
    __builtin_xpu_gm2lm(dstptr, lowptr(srcptr), 0, size);
}

/*
 * \brief memory copy from Global Memory to Local Memory.
 *      It blocked until the operation finished
 *      You can immediately access memory after this call
 * \param srcptr  The global memory pointer in global address space
 * \param dstptr  The local memory pointer in local address space
 *
 * \note This is memory kind operation
 */
static void __device__ GM2LM(_global_ptr_ const void* srcptr, void* dstptr, int size) {
    cfg_haddr(highptr(srcptr));
    __builtin_xpu_gm2lm(dstptr, lowptr(srcptr), 0, size);
    mfence_local_global();
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
static void __device__ GM2SM(_global_ptr_ const void* srcptr, _shared_ptr_ void* dstptr, int size) {
  cfg_haddr(highptr(srcptr));
  __builtin_xpu_gm2sm((void *)dstptr, lowptr(srcptr), 0, size);
  //__asm__("l_gm2sm %0, %1, 0(%2)":: "r"(size), "r"(dstptr),
  //"r"(lowptr(srcptr)):"memory");
  mfence_shared_global();
}

/*
 * \brief memory copy from Global Memory to Share Memory, async operation
 *      You should access memory after mfence() call
 * \param srcptr  The global memory pointer in global address space
 * \param dstptr  The share memory pointer in share address space
 *
 * \note This is memory kind operation
 */
static void __device__ GM2SM_ASYNC(_global_ptr_ const void* srcptr, _shared_ptr_ void* dstptr, int size) {
  cfg_haddr(highptr(srcptr));
  __builtin_xpu_gm2sm((void *)dstptr, lowptr(srcptr), 0, size);
  //__asm__("l_gm2sm %0, %1, 0(%2)":: "r"(size), "r"(dstptr),
  //"r"(lowptr(srcptr)):"memory");
}

/*
 * \brief memory load from shared to register using atomic instruction
 * \param srcptr the shared memory pointer in shared address space
 * \return the float value loaded from shared memory
 * 
 * \note This is memory kind operation
 */
static float __device__ SM2REG_atomic(_shared_ptr_ const float *srcptr) {
    float ret;
    int temp = __builtin_xpu_loada(srcptr);
    ret =  *reinterpret_cast<float*>(&temp);
    return ret;
}

/*
 * \brief memory load from shared to register using atomic instruction
 * \param srcptr the shared memory pointer in shared address space
 * \return the int value loaded from shared memory
 * 
 * \note This is memory kind operation
 */
static int __device__ SM2REG_atomic(_shared_ptr_ const int *srcptr) {
    int ret;
    ret = __builtin_xpu_loada(srcptr);
    return ret;
}

/*
 * Store Functions
 * */

/*
 * \brief memory copy from Share Memory to Global Memory, async operation
 *      You should access memory after mfence() call
 * \param srcptr  The share memory pointer in share address space
 * \param dstptr  The global memory pointer in global address space
 *
 * \note This is memory kind operation
 */
static void __device__ SM2GM_ASYNC(_shared_ptr_ const void* srcptr, _global_ptr_ void* dstptr, int size) {
  cfg_haddr(highptr(dstptr));
  __builtin_xpu_sm2gm(lowptr(dstptr), 0, (void *)srcptr, size);
  //__asm__("s_sm2gm %0, %1, 0(%2)":: "r"(size), "r"(srcptr),
  //"r"(lowptr(dstptr)):"memory");
}
/*
 * \brief memory copy from Share Memory to Global Memory.
 *      It blocked until the operation finished.
 *      You can immediately access memory after this call.
 *      You should access memory after mfence() call.
 * \param srcptr  The share memory pointer in share address space
 * \param dstptr  The global memory pointer in global address space
 *
 * \note This is memory kind operation
 */
static void __device__ SM2GM(_shared_ptr_ const void* srcptr, _global_ptr_ void* dstptr, int size) {
  cfg_haddr(highptr(dstptr));
  __builtin_xpu_sm2gm(lowptr(dstptr), 0, (void *)srcptr, size);
  // __asm__("s_sm2gm %0, %1, 0(%2)":: "r"(size), "r"(srcptr),
  // "r"(lowptr(dstptr)):"memory");
  mfence_shared_global();
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
    cfg_haddr(highptr(dstptr));
    __builtin_xpu_lm2gm(lowptr(dstptr), 0, srcptr, size);
}

/*
 * \brief memory copy from local Memory to global Memory.
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
    __builtin_xpu_lm2gm(lowptr(dstptr), 0, srcptr, size);
    mfence_local_global();
}

/*
 * \brief memory store from register to shared memory using atomic instruction
 * \param dstptr the shared memory pointer in shared address space
 * \param value the float value stored to shared memory
 * \return the stroe result
 *  \retval 0 store success
 *  \retval 1 store fail
 * 
 * \note This is memory kind operation
 */
static int __device__ REG2SM_atomic(_shared_ptr_ float *dstptr, float value) {
    int ret;
    int temp = *reinterpret_cast<int*>(&value);
    ret = __builtin_xpu_storea(temp, dstptr);
    return ret;
}

/*
 * \brief memory store from register to shared memory using atomic instruction
 * \param dstptr the shared memory pointer in shared address space
 * \param value the int value stored to shared memory
 * \return the stroe result
 *  \retval 0 store success
 *  \retval 1 store fail
 * 
 * \note This is memory kind operation
 */
static int __device__ REG2SM_atomic(_shared_ptr_ int *dstptr, int value) {
    int ret;
    ret = __builtin_xpu_storea(value, dstptr);
    return ret;
}

#endif // __arch_xpu2__

#if defined(__arch_xpu2__)
/*
 * \brief memory copy from Global Memory to shared local Memory.
 *      It blocked until the operation finished.
 *      You can immediately access memory after this call.
 *      You should access memory after mfence() call.
 * \param srcptr  The global memory pointer in global address space
 * \param dstptr  The shared local memory pointer in shared local address space
 *
 * \note This is memory kind operation
 */
static void __device__ GM2GSM(_global_ptr_ const void *srcptr,
                              _group_shared_ptr_ void *dstptr, int size) {
  cfg_haddr(highptr(srcptr));
  __builtin_xpu_gm2lm((void *)dstptr, lowptr(srcptr), 0, size);
  //__asm__("l_gm2lm %0, %1, 0(%2)" ::"r"(size), "r"(dstptr),
  //        "r"(lowptr(srcptr)):"memory");
  mfence_local_global();
}

/*
 * \brief memory copy from Global Memory to shared local Memory, async operation
 *      You should access memory after mfence() call
 * \param srcptr  The global memory pointer in global address space
 * \param dstptr  The shared local memory pointer in shared local address space
 *
 * \note This is memory kind operation
 */
static void __device__ GM2GSM_ASYNC(_global_ptr_ const void *srcptr,
                                    _group_shared_ptr_ void *dstptr, int size) {
  cfg_haddr(highptr(srcptr));
  __builtin_xpu_gm2lm((void *)dstptr, lowptr(srcptr), 0, size);
  //__asm__("l_gm2lm %0, %1, 0(%2)" ::"r"(size), "r"(dstptr),
  //        "r"(lowptr(srcptr)):"memory");
}

/*
 * \brief memory copy from shared Global Memory to Local Memory.
 *      It blocked until the operation finished.
 *      You can immediately access memory after this call.
 *      You should access memory after mfence() call.
 * \param srcptr  The shared local memory pointer in shared local address space
 * \param dstptr  The global memory pointer in global address space
 *
 * \note This is memory kind operation
 */
static void __device__ GSM2GM(_group_shared_ptr_ const void *srcptr,
                              _global_ptr_ void *dstptr, int size) {
  cfg_haddr(highptr(dstptr));
  __builtin_xpu_lm2gm(lowptr(dstptr), 0, (void *)srcptr, size);
  //__asm__("s_lm2gm %0, %1, 0(%2)" ::"r"(size), "r"(srcptr),
  //        "r"(lowptr(dstptr)):"memory");
  mfence_local_global();
}

/*
 * \brief memory copy from global Memory to Global Memory, async operation
 *      You should access memory after mfence() call
 * \param srcptr  The global memory pointer in global address space
 * \param dstptr  The global memory pointer in global address space
 *
 * \note This is memory kind operation
 */
static void __device__ GSM2GM_ASYNC(_group_shared_ptr_ const void *srcptr,
                                    _global_ptr_ void *dstptr, int size) {
  cfg_haddr(highptr(dstptr));
  __builtin_xpu_lm2gm(lowptr(dstptr), 0, (void*)srcptr, size);
  //__asm__("s_lm2gm %0, %1, 0(%2)" ::"r"(size), "r"(srcptr),
  //        "r"(lowptr(dstptr)):"memory");
}
#endif // __arch_xpu2__

#if defined(__arch_xpu3__) || defined(__arch_xpu4__) || defined(__arch_xpu5__)
static inline void __device__ cfg_haddr(int haddr) {

}

template <int mask = 7> static inline void __device__ mfence() {
  __builtin_xpu2_mfence(mask);
}

static inline void __device__ mfence_local() {
  mfence<1>();
}

static inline void __device__ mfence_shared() {
  mfence<2>();
}

static inline void __device__ mfence_local_shared() {
  mfence<3>();
}

static inline void __device__ mfence_global() {
  mfence<4>();
}

static inline void __device__ mfence_local_global() {
  mfence<5>();
}

static inline void __device__ mfence_shared_global() {
  mfence<6>();
}

static inline void __device__ mfence_local_shared_global() {
  mfence<7>();
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
    __builtin_xpu_gm2lm_v3(dstptr, srcptr, 0, size);
}

/*
 * \brief memory copy from Global Memory to Local Memory.
 *      It blocked until the operation finished
 *      You can immediately access memory after this call
 * \param srcptr  The global memory pointer in global address space
 * \param dstptr  The local memory pointer in local address space
 *
 * \note This is memory kind operation
 */
static void __device__ GM2LM(_global_ptr_ const void* srcptr, void* dstptr, int size) {
    __builtin_xpu_gm2lm_v3(dstptr, srcptr, 0, size);
    mfence_local_global();
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
static void __device__ GM2SM(_global_ptr_ const void* srcptr, _shared_ptr_ void* dstptr, int size) {
  __builtin_xpu_gm2sm_v3(dstptr, srcptr, 0, size);
  mfence_shared_global();
}

/*
 * \brief memory copy from Global Memory to Share Memory, async operation
 *      You should access memory after mfence() call
 * \param srcptr  The global memory pointer in global address space
 * \param dstptr  The share memory pointer in share address space
 *
 * \note This is memory kind operation
 */
static void __device__ GM2SM_ASYNC(_global_ptr_ const void* srcptr, _shared_ptr_ void* dstptr, int size) {
  __builtin_xpu_gm2sm_v3(dstptr, srcptr, 0, size);
}


/*
 * Store Functions
 * */

/*
 * \brief memory copy from Share Memory to Global Memory, async operation
 *      You should access memory after mfence() call
 * \param srcptr  The share memory pointer in share address space
 * \param dstptr  The global memory pointer in global address space
 *
 * \note This is memory kind operation
 */
static void __device__ SM2GM_ASYNC(_shared_ptr_ const void* srcptr, _global_ptr_ void* dstptr, int size) {
  __builtin_xpu_sm2gm_v3(dstptr, srcptr, 0, size);
}
/*
 * \brief memory copy from Share Memory to Global Memory.
 *      It blocked until the operation finished.
 *      You can immediately access memory after this call.
 *      You should access memory after mfence() call.
 * \param srcptr  The share memory pointer in share address space
 * \param dstptr  The global memory pointer in global address space
 *
 * \note This is memory kind operation
 */
static void __device__ SM2GM(_shared_ptr_ const void* srcptr, _global_ptr_ void* dstptr, int size) {
  __builtin_xpu_sm2gm_v3(dstptr, srcptr, 0, size);
  mfence_shared_global();
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
    __builtin_xpu_lm2gm_v3(dstptr, srcptr,  0, size);
}

/*
 * \brief memory copy from local Memory to global Memory.
 *      It blocked until the operation finished.
 *      You can immediately access memory after this call.
 *      You should access memory after mfence() call.
 * \param srcptr  The local memory pointer in local address space
 * \param dstptr  The global memory pointer in global address space
 *
 * \note This is memory kind operation
 */
static void __device__ LM2GM(const void* srcptr, _global_ptr_ void* dstptr, int size) {
    __builtin_xpu_lm2gm_v3(dstptr, srcptr,  0, size);
    mfence_local_global();
}

/*
 * \brief memory copy from Global Memory to shared local Memory.
 *      It blocked until the operation finished.
 *      You can immediately access memory after this call.
 *      You should access memory after mfence() call.
 * \param srcptr  The global memory pointer in global address space
 * \param dstptr  The shared local memory pointer in shared local address space
 *
 * \note This is memory kind operation
 */
static void __device__ GM2GSM(_global_ptr_ const void *srcptr,
                              _group_shared_ptr_ void *dstptr, int size) {
  __builtin_xpu_gm2lm_v3(dstptr, srcptr, 0, size);
  mfence_local_global();
}

/*
 * \brief memory copy from Global Memory to shared local Memory, async operation
 *      You should access memory after mfence() call
 * \param srcptr  The global memory pointer in global address space
 * \param dstptr  The shared local memory pointer in shared local address space
 *
 * \note This is memory kind operation
 */
static void __device__ GM2GSM_ASYNC(_global_ptr_ const void *srcptr,
                                    _group_shared_ptr_ void *dstptr, int size) {
  __builtin_xpu_gm2lm_v3(dstptr, srcptr, 0, size);
}

/*
 * \brief memory copy from shared Global Memory to Local Memory.
 *      It blocked until the operation finished.
 *      You can immediately access memory after this call.
 *      You should access memory after mfence() call.
 * \param srcptr  The shared local memory pointer in shared local address space
 * \param dstptr  The global memory pointer in global address space
 *
 * \note This is memory kind operation
 */
static void __device__ GSM2GM(_group_shared_ptr_ const void *srcptr,
                              _global_ptr_ void *dstptr, int size) {
  __builtin_xpu_lm2gm_v3(dstptr, srcptr,  0, size);
  mfence_local_global();
}

/*
 * \brief memory copy from global Memory to Global Memory, async operation
 *      You should access memory after mfence() call
 * \param srcptr  The global memory pointer in global address space
 * \param dstptr  The global memory pointer in global address space
 *
 * \note This is memory kind operation
 */
static void __device__ GSM2GM_ASYNC(_group_shared_ptr_ const void *srcptr,
                                    _global_ptr_ void *dstptr, int size) {
  __builtin_xpu_lm2gm_v3(dstptr, srcptr,  0, size);
}
#endif // __arch_xpu3__
#endif // __xpu__
#endif // __XPU_KERNEL_CLUSTER_MEMORY_XPU2_H
