/*!\file xtdk_memory_xpu3.h 
* \brief XPU C/CPP中的适用于XPU3/4/5的访存操作接口。
*/

#ifndef __XPU_KERNEL_XTDK_MEMORY_XPU3_H
#define __XPU_KERNEL_XTDK_MEMORY_XPU3_H

#if defined(__arch_xpu3__) || defined(__arch_xpu4__) || defined(__arch_xpu5__)

/// vendor provideded indicator for in structure aligment of host to device parameter packs
/// .etc :  #pragma pack(XPU_PARAMALIGN)
#define XPU_PARAMALIGN 8

/*
 * Load Functions
 * */

/** \brief 由global memory至local memory的内存拷贝
 *  \param srcptr  指向存放源数据的global memory指针
 *  \param dstptr  指向目的地址的local memory指针
 *  \param size    数据长度，以字节为单位
 *
 *  \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ GM2LM_ASYNC(_global_ptr_ const void* srcptr, void* dstptr, int size) {
    __builtin_xpu_gm2lm_v3(dstptr, srcptr, 0, size);
}

/** \brief 由global memory至local memory的内存拷贝
 *  \param srcptr  指向存放源数据的global memory指针
 *  \param dstptr  指向目的地址的local memory指针
 *  \param size    数据长度，以字节为单位
 *
 *  \note 在调用此函数后，无需mfence
 */
static void __device__ GM2LM(_global_ptr_ const void* srcptr, void* dstptr, int size) {
    __builtin_xpu_gm2lm_v3(dstptr, srcptr, 0, size);
    mfence_lm_gm();
}

/** \brief 由global memory至local memory的广播内存拷贝
 *  \param srcptr  指向存放源数据的global memory指针
 *  \param dstptr  指向目的地址的local memory指针
 *  \param size    数据长度，以字节为单位
 *
 *  \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ BL_GM2LM_ASYNC(_global_ptr_ const void* srcptr, void* dstptr, int size) {
    __builtin_xpu_bl_gm2lm_v3(dstptr, srcptr, 0, size);
}

/** \brief 由global memory至local memory的广播内存拷贝
 *  \param srcptr  指向存放源数据的global memory指针
 *  \param dstptr  指向目的地址的local memory指针
 *  \param size    数据长度，以字节为单位
 *
 *  \note 在调用此函数后，无需mfence
 */
static void __device__ BL_GM2LM(_global_ptr_ const void* srcptr, void* dstptr, int size) {
    __builtin_xpu_bl_gm2lm_v3(dstptr, srcptr, 0, size);
    mfence_lm_gm();
}

/** \brief 由global memory至shared memory的内存拷贝
 *  \param srcptr  指向存放源数据的global memory指针
 *  \param dstptr  指向shared memory上目的地址指针
 *  \param size    数据长度，以字节为单位
 *
 *  \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ GM2SM_ASYNC(_global_ptr_ const void* srcptr, _shared_ptr_ void* dstptr, int size) {
  __builtin_xpu_gm2sm_v3(dstptr, srcptr, 0, size);
}

/** \brief 由global memory至shared memory的内存拷贝
 *  \param srcptr  指向存放源数据的global memory指针
 *  \param dstptr  指向shared memory上目的地址指针
 *  \param size    数据长度，以字节为单位
 *
 *  \note 在调用此函数后，无需mfence
 */
static void __device__ GM2SM(_global_ptr_ const void* srcptr, _shared_ptr_ void* dstptr, int size) {
  __builtin_xpu_gm2sm_v3(dstptr, srcptr, 0, size);
  mfence_sm_gm();
}

/*
 * Store Functions
 * */

/** \brief 由shared memory至global memory的内存拷贝
 *  \param srcptr  指向存放源数据的shared memory指针
 *  \param dstptr  指向global memory上目的地址指针
 *  \param size    数据长度，以字节为单位
 *
 *  \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ SM2GM_ASYNC(_shared_ptr_ const void* srcptr, _global_ptr_ void* dstptr, int size) {
  __builtin_xpu_sm2gm_v3(dstptr, srcptr, 0, size);
}

/** \brief 由shared memory至global memory的内存拷贝
 *  \param srcptr  指向存放源数据的shared memory指针
 *  \param dstptr  指向global memory上目的地址指针
 *  \param size    数据长度，以字节为单位
 *
 *  \note 在调用此函数后，无需mfence
 */
static void __device__ SM2GM(_shared_ptr_ const void* srcptr, _global_ptr_ void* dstptr, int size) {
  __builtin_xpu_sm2gm_v3(dstptr, srcptr, 0, size);
  mfence_sm_gm();
}

/** \brief 由local memory至global memory的内存拷贝
 *  \param srcptr  指向存放源数据的local memory指针
 *  \param dstptr  指向global memory上目的地址指针
 *  \param size    数据长度，以字节为单位
 *
 *  \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ LM2GM_ASYNC(const void* srcptr, _global_ptr_ void* dstptr, int size) {
    __builtin_xpu_lm2gm_v3(dstptr, srcptr,  0, size);
}

/** \brief 由local memory至global memory的内存拷贝
 *  \param srcptr  指向存放源数据的local memory指针
 *  \param dstptr  指向global memory上目的地址指针
 *  \param size    数据长度，以字节为单位
 *
 *  \note 在调用此函数后，无需mfence
 */
static void __device__ LM2GM(const void* srcptr, _global_ptr_ void* dstptr, int size) {
    __builtin_xpu_lm2gm_v3(dstptr, srcptr,  0, size);
    mfence_lm_gm();
}

/** \brief 由global memory至group shared memory的内存拷贝
 *  \param srcptr  指向存放源数据的global memory指针
 *  \param dstptr  指向目的地址的group shared memory指针
 *  \param size    数据长度，以字节为单位
 *
 *  \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ GM2GSM_ASYNC(_global_ptr_ const void *srcptr,
                                    _group_shared_ptr_ void *dstptr, int size) {
  __builtin_xpu_gm2lm_v3(dstptr, srcptr, 0, size);
}

/** \brief 由global memory至group shared memory的内存拷贝
 *  \param srcptr  指向存放源数据的global memory指针
 *  \param dstptr  指向目的地址的group shared memory指针
 *  \param size    数据长度，以字节为单位
 *
 *  \note 在调用此函数后，无需mfence
 */
static void __device__ GM2GSM(_global_ptr_ const void *srcptr,
                              _group_shared_ptr_ void *dstptr, int size) {
  __builtin_xpu_gm2lm_v3(dstptr, srcptr, 0, size);
  mfence_lm_gm();
}

/** \brief 由global memory至group shared memory的广播内存拷贝
 *  \param srcptr  指向存放源数据的global memory指针
 *  \param dstptr  指向目的地址的group shared memory指针
 *  \param size    数据长度，以字节为单位
 *
 *  \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ BL_GM2GSM_ASYNC(_global_ptr_ const void *srcptr,
                                    _group_shared_ptr_ void *dstptr, int size) {
  __builtin_xpu_bl_gm2lm_v3(dstptr, srcptr, 0, size);
}

/** \brief 由global memory至group shared memory的广播内存拷贝
 *  \param srcptr  指向存放源数据的global memory指针
 *  \param dstptr  指向目的地址的group shared memory指针
 *  \param size    数据长度，以字节为单位
 *
 *  \note 在调用此函数后，无需mfence
 */
static void __device__ BL_GM2GSM(_global_ptr_ const void *srcptr,
                              _group_shared_ptr_ void *dstptr, int size) {
  __builtin_xpu_bl_gm2lm_v3(dstptr, srcptr, 0, size);
  mfence_lm_gm();
}

/** \brief 由group shared memory至global memory的内存拷贝
 *  \param srcptr  指向存放源数据的group shared memory指针
 *  \param dstptr  指向目的地址的global memory指针
 *  \param size    数据长度，以字节为单位
 *
 *  \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ GSM2GM_ASYNC(_group_shared_ptr_ const void *srcptr,
                                    _global_ptr_ void *dstptr, int size) {
  __builtin_xpu_lm2gm_v3(dstptr, srcptr,  0, size);
}

/** \brief 由group shared memory至global memory的内存拷贝
 *  \param srcptr  指向存放源数据的group shared memory指针
 *  \param dstptr  指向目的地址的global memory指针
 *  \param size    数据长度，以字节为单位
 *
 *  \note 在调用此函数后，无需mfence
 */
static void __device__ GSM2GM(_group_shared_ptr_ const void *srcptr,
                              _global_ptr_ void *dstptr, int size) {
  __builtin_xpu_lm2gm_v3(dstptr, srcptr,  0, size);
  mfence_lm_gm();
}

static __device__ int amoswap(int new_value, int __global_ptr__ *old_value_ptr) {
  return __builtin_xpu_amoswap(new_value, old_value_ptr);
}

static __device__ int amoadd(int new_value, int __global_ptr__ *old_value_ptr) {
  return __builtin_xpu_amoadd(new_value, old_value_ptr);
}

static __device__ int amosub(int new_value, int __global_ptr__ *old_value_ptr) {
  return __builtin_xpu_amosub(new_value, old_value_ptr);
}

static __device__ int amoand(int new_value, int __global_ptr__ *old_value_ptr) {
  return __builtin_xpu_amoand(new_value, old_value_ptr);
}

static __device__ int amoor(int new_value, int __global_ptr__ *old_value_ptr) {
  return __builtin_xpu_amoor(new_value, old_value_ptr);
}

static __device__ int amoxor(int new_value, int __global_ptr__ *old_value_ptr) {
  return __builtin_xpu_amoxor(new_value, old_value_ptr);
}

static __device__ int amomin(int new_value, int __global_ptr__ *old_value_ptr) {
  return __builtin_xpu_amomin(new_value, old_value_ptr);
}

static __device__ int amomax(int new_value, int __global_ptr__ *old_value_ptr) {
  return __builtin_xpu_amomax(new_value, old_value_ptr);
}

static __device__ unsigned int amoswap(unsigned int new_value, unsigned int __global_ptr__ *old_value_ptr) {
  return __builtin_xpu_amoswap(static_cast<int>(new_value), reinterpret_cast<int __global_ptr__ *>(old_value_ptr));
}

static __device__ unsigned int amoand(unsigned int new_value, unsigned int __global_ptr__ *old_value_ptr) {
  return __builtin_xpu_amoand(static_cast<int>(new_value), reinterpret_cast<int __global_ptr__ *>(old_value_ptr));
}

static __device__ unsigned int amoor(unsigned int new_value, unsigned int __global_ptr__ *old_value_ptr) {
  return __builtin_xpu_amoor(static_cast<int>(new_value), reinterpret_cast<int __global_ptr__ *>(old_value_ptr));
}

static __device__ unsigned int amoxor(unsigned int new_value, unsigned int __global_ptr__ *old_value_ptr) {
  return __builtin_xpu_amoxor(static_cast<int>(new_value), reinterpret_cast<int __global_ptr__ *>(old_value_ptr));
}

static __device__ unsigned int amominu(unsigned int new_value, unsigned int __global_ptr__ *old_value_ptr) {
  return __builtin_xpu_amominu(new_value, old_value_ptr);
}

static __device__ unsigned int amomaxu(unsigned int new_value, unsigned int __global_ptr__ *old_value_ptr) {
  return __builtin_xpu_amomaxu(new_value, old_value_ptr);
}

static __device__ unsigned int amomin(unsigned int new_value, unsigned int __global_ptr__ *old_value_ptr) {
  return __builtin_xpu_amominu(new_value, old_value_ptr);
}

static __device__ unsigned int amomax(unsigned int new_value, unsigned int __global_ptr__ *old_value_ptr) {
  return __builtin_xpu_amomaxu(new_value, old_value_ptr);
}

#endif // __arch_xpu3__

#endif
