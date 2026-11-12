/*!\file xtdk_memory_xpu2.h
* \brief XPU C/CPP中的适用于XPU2或同时适用于XPU2和XPU3的访存操作接口。
*/

#ifndef __XPU_KERNEL_XTDK_MEMORY_XPU2_H
#define __XPU_KERNEL_XTDK_MEMORY_XPU2_H

#if defined(__arch_xpu2__)

/// vendor provideded indicator for in structure aligment of host to device parameter packs
/// .etc :  #pragma pack(XPU_PARAMALIGN)
#define XPU_PARAMALIGN 4

static inline void __device__ __NO_INSTRUMENT__ cfg_haddr(int haddr) {
    __builtin_xpu_set_haddr(haddr);
}

/*
 * Load Functions
 * */

/**
 * \brief 由global memory至local memory的内存拷贝
 * \param srcptr  指向存放源数据的global memory指针
 * \param dstptr  指向目的地址的local memory指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ __NO_INSTRUMENT__ GM2LM_ASYNC(_global_ptr_ const void* srcptr, void* dstptr, int size) {
    cfg_haddr(highptr(srcptr));
    __builtin_xpu_gm2lm(dstptr, lowptr(srcptr), 0, size);
}

/**
 * \brief 由global memory至local memory的内存拷贝
 * \param srcptr  指向存放源数据的global memory指针
 * \param dstptr  指向目的地址的local memory指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，无需mfence
 */
static void __device__ __NO_INSTRUMENT__ GM2LM(_global_ptr_ const void* srcptr, void* dstptr, int size) {
    cfg_haddr(highptr(srcptr));
    __builtin_xpu_gm2lm(dstptr, lowptr(srcptr), 0, size);
    mfence_lm_gm();
}

/**
 * \brief 由global memory至local memory的广播内存拷贝
 * \param srcptr  指向存放源数据的global memory指针
 * \param dstptr  指向目的地址的local memory指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ __NO_INSTRUMENT__ BL_GM2LM_ASYNC(_global_ptr_ const void* srcptr, void* dstptr, int size) {
    cfg_haddr(highptr(srcptr));
    __builtin_xpu_bl_gm2lm(dstptr, lowptr(srcptr), 0, size);
}

/**
 * \brief 由global memory至local memory的广播内存拷贝
 * \param srcptr  指向存放源数据的global memory指针
 * \param dstptr  指向目的地址的local memory指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，无需mfence
 */
static void __device__ __NO_INSTRUMENT__ BL_GM2LM(_global_ptr_ const void* srcptr, void* dstptr, int size) {
    cfg_haddr(highptr(srcptr));
    __builtin_xpu_bl_gm2lm(dstptr, lowptr(srcptr), 0, size);
    mfence_lm_gm();
}

/**
 * \brief 由global memory至shared memory的内存拷贝
 * \param srcptr  指向存放源数据的global memory指针
 * \param dstptr  指向shared memory上目的地址指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ __NO_INSTRUMENT__ GM2SM_ASYNC(_global_ptr_ const void* srcptr, _shared_ptr_ void* dstptr, int size) {
  cfg_haddr(highptr(srcptr));
  __builtin_xpu_gm2sm((void *)dstptr, lowptr(srcptr), 0, size);
}

/**
 * \brief 由global memory至shared memory的内存拷贝
 * \param srcptr  指向存放源数据的global memory指针
 * \param dstptr  指向目的地址的shared memory指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，无需mfence
 */
static void __device__ __NO_INSTRUMENT__ GM2SM(_global_ptr_ const void* srcptr, _shared_ptr_ void* dstptr, int size) {
  cfg_haddr(highptr(srcptr));
  __builtin_xpu_gm2sm((void *)dstptr, lowptr(srcptr), 0, size);
  mfence_sm_gm();
}

/*
 * Store Functions
 * */

/**
 * \brief 由shared memory至global memory的内存拷贝
 * \param srcptr  指向存放源数据的shared memory指针
 * \param dstptr  指向global memory上目的地址指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ __NO_INSTRUMENT__ SM2GM_ASYNC(_shared_ptr_ const void* srcptr, _global_ptr_ void* dstptr, int size) {
  cfg_haddr(highptr(dstptr));
  __builtin_xpu_sm2gm(lowptr(dstptr), 0, (void *)srcptr, size);
}

/**
 * \brief 由shared memory至global memory的内存拷贝
 * \param srcptr  指向存放源数据的shared memory指针
 * \param dstptr  指向global memory上目的地址指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，无需mfence
 */
static void __device__ __NO_INSTRUMENT__ SM2GM(_shared_ptr_ const void* srcptr, _global_ptr_ void* dstptr, int size) {
  cfg_haddr(highptr(dstptr));
  __builtin_xpu_sm2gm(lowptr(dstptr), 0, (void *)srcptr, size);
  mfence_sm_gm();
}

/**
 * \brief 由local memory至global memory的内存拷贝
 * \param srcptr  指向存放源数据的local memory指针
 * \param dstptr  指向global memory上目的地址指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ __NO_INSTRUMENT__ LM2GM_ASYNC(const void* srcptr, _global_ptr_ void* dstptr, int size) {
    cfg_haddr(highptr(dstptr));
    __builtin_xpu_lm2gm(lowptr(dstptr), 0, srcptr, size);
}

/**
 * \brief 由local memory至global memory的内存拷贝
 * \param srcptr  指向存放源数据的local memory指针
 * \param dstptr  指向global memory上目的地址指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，无需mfence
 */
static void __device__ __NO_INSTRUMENT__ LM2GM(const void* srcptr, _global_ptr_ void* dstptr, int size) {
    cfg_haddr(highptr(dstptr));
    __builtin_xpu_lm2gm(lowptr(dstptr), 0, srcptr, size);
    mfence_lm_gm();
}

/**
 * \brief 由global memory至group shared memory的内存拷贝
 * \param srcptr  指向存放源数据的global memory指针
 * \param dstptr  指向目的地址的group shared memory指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ __NO_INSTRUMENT__ GM2GSM_ASYNC(_global_ptr_ const void *srcptr,
                                    _group_shared_ptr_ void *dstptr, int size) {
  cfg_haddr(highptr(srcptr));
  __builtin_xpu_gm2lm((void *)dstptr, lowptr(srcptr), 0, size);
}

/**
 * \brief 由global memory至group shared memory的内存拷贝
 * \param srcptr  指向存放源数据的global memory指针
 * \param dstptr  指向目的地址的group shared memory指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，无需mfence
 */
static void __device__ __NO_INSTRUMENT__ GM2GSM(_global_ptr_ const void *srcptr,
                              _group_shared_ptr_ void *dstptr, int size) {
  cfg_haddr(highptr(srcptr));
  __builtin_xpu_gm2lm((void *)dstptr, lowptr(srcptr), 0, size);
  mfence_lm_gm();
}

/**
 * \brief 由global memory至group shared memory的广播内存拷贝
 * \param srcptr  指向存放源数据的global memory指针
 * \param dstptr  指向目的地址的group shared memory指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ __NO_INSTRUMENT__ BL_GM2GSM_ASYNC(_global_ptr_ const void *srcptr,
                                    _group_shared_ptr_ void *dstptr, int size) {
  cfg_haddr(highptr(srcptr));
  __builtin_xpu_bl_gm2lm((void *)dstptr, lowptr(srcptr), 0, size);
}

/**
 * \brief 由global memory至group shared memory的广播内存拷贝
 * \param srcptr  指向存放源数据的global memory指针
 * \param dstptr  指向目的地址的group shared memory指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，无需mfence
 */
static void __device__ __NO_INSTRUMENT__ BL_GM2GSM(_global_ptr_ const void *srcptr,
                              _group_shared_ptr_ void *dstptr, int size) {
  cfg_haddr(highptr(srcptr));
  __builtin_xpu_bl_gm2lm((void *)dstptr, lowptr(srcptr), 0, size);
  mfence_lm_gm();
}

/**
 * \brief 由group shared memory至global memory的内存拷贝
 * \param srcptr  指向存放源数据的group shared memory指针
 * \param dstptr  指向目的地址的global memory指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ __NO_INSTRUMENT__ GSM2GM_ASYNC(_group_shared_ptr_ const void *srcptr,
                                    _global_ptr_ void *dstptr, int size) {
  cfg_haddr(highptr(dstptr));
  __builtin_xpu_lm2gm(lowptr(dstptr), 0, (void*)srcptr, size);
}

/**
 * \brief 由group shared memory至global memory的内存拷贝
 * \param srcptr  指向存放源数据的group shared memory指针
 * \param dstptr  指向目的地址的global memory指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，无需mfence
 */
static void __device__ __NO_INSTRUMENT__ GSM2GM(_group_shared_ptr_ const void *srcptr,
                              _global_ptr_ void *dstptr, int size) {
  cfg_haddr(highptr(dstptr));
  __builtin_xpu_lm2gm(lowptr(dstptr), 0, (void *)srcptr, size);
  mfence_lm_gm();
}

#endif // __arch_xpu2__

#if __xpu_subarch__ >= 2

/**
 * \brief shared memory原子读取
 * \param srcptr 指向shared memory上源地址的指针
 * \return 由shared memory中读出的数据
 * \see example/kunlun2/sync_and_atomic
 */
static float __device__ SM2REG_atomic(_shared_ptr_ const float *srcptr) {
    float ret;
    int temp = __builtin_xpu_loada(srcptr);
    ret =  *reinterpret_cast<float*>(&temp);
    return ret;
}

/**
 * \brief shared memory原子读取
 * \param srcptr 指向shared memory上源地址的指针
 * \return 由shared memory中读出的数据
 * \see example/kunlun2/sync_and_atomic
 */
static int __device__ SM2REG_atomic(_shared_ptr_ const void *srcptr) {
    int ret;
    ret = __builtin_xpu_loada(srcptr);
    return ret;
}

/**
 * \brief shared memory原子写入
 * \param dstptr 指向shared memory上目的地址的指针
 * \param value 待写入的值
 * \return 原子写的执行结果
 *  \retval 0 成功
 *  \retval 1 失败
 * \see example/kunlun2/sync_and_atomic
 */
static int __device__ REG2SM_atomic(_shared_ptr_ float *dstptr, float value) {
    int ret;
    int temp = *reinterpret_cast<int*>(&value);
    ret = __builtin_xpu_storea(temp, dstptr);
    return ret;
}

/**
 * \brief shared memory原子写入
 * \param dstptr 指向shared memory上目的地址的指针
 * \param value 待写入的值
 * \return 原子写的执行结果
 *  \retval 0 成功
 *  \retval 1 失败
 * \see example/kunlun2/sync_and_atomic
 */
static int __device__ REG2SM_atomic(_shared_ptr_ int *dstptr, int value) {
    int ret;
    ret = __builtin_xpu_storea(value, dstptr);
    return ret;
}

#endif // __xpu_subarch__ >= 2

#endif // __XPU_KERNEL_XTDK_MEMORY_XPU2_H
