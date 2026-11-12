#ifndef __XCN_KERNEL_XTDK_DMA_FUNCTIONS_H__
#define __XCN_KERNEL_XTDK_DMA_FUNCTIONS_H__

typedef __attribute__((address_space(1))) void *GLOBAL_PTR;
typedef __attribute__((address_space(3))) void *SHARED_PTR;

#if !defined (__XPU_ARCH__) || (__XPU_ARCH__ >= 5)
template<int LLCA = 0, bool isFP6 = false>
__device__ inline void gm2sm(void *global_ptr, void *shared_ptr, int size) {
  __builtin_xcn_global_to_lds((GLOBAL_PTR)global_ptr, (SHARED_PTR)shared_ptr,
                              size, 0, LLCA, isFP6);
}

template<int LLCA = 0, bool isFP6 = false>
__device__ inline void sm2gm(void *global_ptr, void *shared_ptr, int size) {
  __builtin_xcn_lds_to_global((GLOBAL_PTR)global_ptr, (SHARED_PTR)shared_ptr,
                              size, 0, LLCA, isFP6);
}
#else
template<int LLCA = 0>
__device__ inline void gm2sm(void *global_ptr, void *shared_ptr, int size) {
  __builtin_xcn_global_to_lds((GLOBAL_PTR)global_ptr, (SHARED_PTR)shared_ptr,
                              size, 0, LLCA, 0);
}

template<int LLCA = 0>
__device__ inline void sm2gm(void *global_ptr, void *shared_ptr, int size) {
  __builtin_xcn_lds_to_global((GLOBAL_PTR)global_ptr, (SHARED_PTR)shared_ptr,
                              size, 0, LLCA, 0);
}
#endif // !defined (__XPU_ARCH__) || (__XPU_ARCH__ >= 5)

__device__ inline void commit_group() { __builtin_xcn_s_commit_group(); }

#if !defined (__XPU_ARCH__) || (__XPU_ARCH__ >= 5)
template <int READ = 0> __device__ inline void wait_group_0() {
  __builtin_xcn_s_wait_group(READ << 2 | 0);
}
template <int READ = 0> __device__ inline void wait_group_1() {
  __builtin_xcn_s_wait_group(READ << 2 | 1);
}
template <int READ = 0> __device__ inline void wait_group_2() {
  __builtin_xcn_s_wait_group(READ << 2 | 2);
}
#else
__device__ inline void wait_group_0() { __builtin_xcn_s_wait_group(0); }
__device__ inline void wait_group_1() { __builtin_xcn_s_wait_group(1); }
__device__ inline void wait_group_2() { __builtin_xcn_s_wait_group(2); }
#endif // !defined (__XPU_ARCH__) || (__XPU_ARCH__ >= 5)

#endif // __XCN_KERNEL_XTDK_DMA_FUNCTIONS_H__