/*!\file xtdk_memory_xpu1.h 
* \brief XPU C/CPP中的适用于XPU1或同时适用于XPU1和XPU2的访存操作接口。
*/

#ifndef __XPU_KERNEL_XTDK_MEMORY_XPU1_H
#define __XPU_KERNEL_XTDK_MEMORY_XPU1_H

#if defined(__arch_xpu1__)
/**
 * \brief 初始化local memory
*/
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

/**
 * \brief 初始化local memory
*/
static void __device__ memset_local_array(void* lmptr, int c, int n) {
    int c_lb = c & 0x000000ff;      // last byte
    int c_4b = (c_lb << 8) | c_lb;  // 0x000000Xx => 0x0000XxXx
    c_4b = (c_4b << 16) | c_4b;     // 0x0000XxXx => 0xXxXxXxXx
    for (int __i = 0; __i < n; __i += 4) {
        *(int *)((char *)lmptr + __i) = c_4b;
    }
}

/**
 * \brief 初始化local memory
*/
static void __device__ memset_lm_char(void* lmptr, int c, int n) {
    int c_lb = c & 0x000000ff;      // last byte
    int c_4b = (c_lb << 8) | c_lb;  // 0x000000Xx => 0x0000XxXx
    c_4b = (c_4b << 16) | c_4b;     // 0x0000XxXx => 0xXxXxXxXx
    for (int __i = 0; __i < n; __i += 4) {
        *(int *)((char *)lmptr + __i) = c_4b;
    }
}

/**
 * \brief 初始化local memory
 * \param lmptr  待初始化内存的起始地址
 * \param size  待初始化内存的长度
 * \param val  初始化值，默认为0
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

static inline void __device__ cfg_haddr(int haddr) {
    __builtin_xpu_cfghaddr((void *)haddr);
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
static void __device__ GM2LM_ASYNC(_global_ptr_ const void* srcptr, void* dstptr, int size) {
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
static void __device__ GM2LM(_global_ptr_ const void* srcptr, void* dstptr, int size) {
    cfg_haddr(highptr(srcptr));
    __builtin_xpu_gm2lm(dstptr, lowptr(srcptr), 0, size);
    mfence();
}

/**
 * \brief 由global memory至shared memory的内存拷贝
 * \param srcptr  指向存放源数据的global memory指针
 * \param dstptr  指向shared memory上目的地址指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ GM2SM_ASYNC(_global_ptr_ const void* srcptr, void* dstptr, int size) {
    __builtin_xpu_gm2sm(dstptr, lowptr(srcptr), 0, size);
}

/**
 * \brief 由global memory至shared memory的内存拷贝
 * \param srcptr  指向存放源数据的global memory指针
 * \param dstptr  指向目的地址的shared memory指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，无需mfence
 */
static void __device__ GM2SM(_global_ptr_ const void* srcptr, void* dstptr, int size) {
    cfg_haddr(highptr(srcptr));
    __asm__("l_gm2sm %0, %1, 0(%2) \t\n mfence"  :: "r"(size), "r"(dstptr), "r"(lowptr(srcptr)));
}

/**
 * \brief 由shared memory至local memory的内存拷贝
 * \param srcptr  指向存放源数据的shared memory指针
 * \param dstptr  指向local memory上目的地址指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ SM2LM_ASYNC(const void* srcptr, void* dstptr, int size) {
    __builtin_xpu_sm2lm(dstptr, srcptr, 0, size);
}

/**
 * \brief 由shared memory至local memory的内存拷贝
 * \param srcptr  指向存放源数据的shared memory指针
 * \param dstptr  指向local memory上目的地址指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，无需mfence
 */
static void __device__ SM2LM(const void* srcptr, void* dstptr, int size) {
    __asm__("l_sm2lm %0, %1, 0(%2) \t\n mfence"  :: "r"(size), "r"(dstptr), "r"(srcptr));
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
static void __device__ SM2GM_ASYNC(const void* srcptr, _global_ptr_ void* dstptr, int size) {
    __builtin_xpu_sm2gm(lowptr(dstptr), 0, srcptr, size);
}

/**
 * \brief 由shared memory至global memory的内存拷贝
 * \param srcptr  指向存放源数据的shared memory指针
 * \param dstptr  指向global memory上目的地址指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，无需mfence
 */
static void __device__ SM2GM(const void* srcptr, _global_ptr_ void* dstptr, int size) {
    cfg_haddr(highptr(dstptr));
    __asm__("s_sm2gm %0, %1, 0(%2) \t\n mfence"::"r"(size),"r"(srcptr),"r"((lowptr(dstptr))));
}

/**
 * \brief 由local memory至global memory的内存拷贝
 * \param srcptr  指向存放源数据的local memory指针
 * \param dstptr  指向global memory上目的地址指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ LM2GM_ASYNC(const void* srcptr, _global_ptr_ void* dstptr, int size) {
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
static void __device__ LM2GM(const void* srcptr, _global_ptr_ void* dstptr, int size) {
    cfg_haddr(highptr(dstptr));
    __asm__("s_lm2gm %0, %1, 0(%2) \t\n mfence"::"r"(size),"r"(srcptr),"r"((lowptr(dstptr))));
}

/**
 * \brief 由local memory至shared memory的内存拷贝
 * \param srcptr  指向存放源数据的local memory指针
 * \param dstptr  指向shared memory上目的地址指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，应根据访存需要进行mfence
 */
static void __device__ LM2SM_ASYNC(const void* srcptr, void* dstptr, int size) {
    __builtin_xpu_lm2sm(dstptr, 0, srcptr, size);
}

/**
 * \brief 由local memory至shared memory的内存拷贝
 * \param srcptr  指向存放源数据的local memory指针
 * \param dstptr  指向shared memory上目的地址指针
 * \param size    数据长度，以字节为单位
 *
 * \note 在调用此函数后，无需mfence
 */
static void __device__ LM2SM(const void* srcptr, void* dstptr, int size) {
    __asm__("s_lm2sm %0, %1, 0(%2) \t\n mfence"  :: "r"(size), "r"(srcptr), "r"(dstptr));
}

#endif //__arch_xpu1__
#endif