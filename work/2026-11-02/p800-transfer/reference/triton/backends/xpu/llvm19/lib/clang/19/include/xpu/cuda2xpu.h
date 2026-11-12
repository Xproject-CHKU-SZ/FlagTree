#ifndef __CUDA2XPU_H
#define __CUDA2XPU_h

#include "xpu/kernel/xtdk.h"
#include "vector_types.h"
/* it should be defined in cuda/include/vector_types.h*/
struct uint3;
struct dim3;

typedef void* cudaStream_t;
typedef void* cublasHandle_t;

static inline __attribute__((device)) void __syncthreads() {
  sync_all();
}

int xpu_launch_config(dim3 gridSize, dim3 blockSize, size_t sharedSize = 0,
                     void* stream = 0)
{
  int blockCount = gridSize.x * gridSize.y * gridSize.z;
  int threadCount = blockSize.x * blockSize.y * blockSize.y;

  return xpu_launch_config(blockCount, threadCount, sharedSize, stream);
}

int xpu_launch_config(dim3 gridSize, int threadCount, size_t sharedSize = 0,
                     void* stream = 0)
{
  int blockCount = gridSize.x * gridSize.y * gridSize.z;

  return xpu_launch_config(blockCount, threadCount, sharedSize, stream);
}

struct __cuda_builtin_threadIdx_t {
  __declspec(property(get = __fetch_builtin_x)) unsigned int x;
  __declspec(property(get = __fetch_builtin_y)) unsigned int y;
  __declspec(property(get = __fetch_builtin_z)) unsigned int z;

  static inline __attribute__((always_inline)) __attribute__((device))
  unsigned int __fetch_builtin_x(void) { return core_id(); };
  static inline __attribute__((always_inline)) __attribute__((device))
  unsigned int __fetch_builtin_y(void) { return 0; };
  static inline __attribute__((always_inline)) __attribute__((device))
  unsigned int __fetch_builtin_z(void) { return 0; };


  __attribute__((device)) operator uint3() const;
private:
  __attribute__((device)) __cuda_builtin_threadIdx_t() ;
  __attribute__((device)) __cuda_builtin_threadIdx_t(const __cuda_builtin_threadIdx_t &) ;
  __attribute__((device)) void operator=(const __cuda_builtin_threadIdx_t &) const ;
  __attribute__((device)) __cuda_builtin_threadIdx_t *operator&() const ;
};

struct __cuda_builtin_blockIdx_t {
  __declspec(property(get = __fetch_builtin_x)) unsigned int x;
  __declspec(property(get = __fetch_builtin_y)) unsigned int y;
  __declspec(property(get = __fetch_builtin_z)) unsigned int z;

  static inline __attribute__((always_inline)) __attribute__((device))
  unsigned int __fetch_builtin_x(void) { return cluster_id(); };
  static inline __attribute__((always_inline)) __attribute__((device))
  unsigned int __fetch_builtin_y(void) { return 0; };
  static inline __attribute__((always_inline)) __attribute__((device))
  unsigned int __fetch_builtin_z(void) { return 0; };

  __attribute__((device)) operator uint3() const;
private:
  __attribute__((device)) __cuda_builtin_blockIdx_t() ;
  __attribute__((device)) __cuda_builtin_blockIdx_t(const __cuda_builtin_blockIdx_t &) ;
  __attribute__((device)) void operator=(const __cuda_builtin_blockIdx_t &) const ;
  __attribute__((device)) __cuda_builtin_blockIdx_t *operator&() const ;
};

struct __cuda_builtin_blockDim_t {
  __declspec(property(get = __fetch_builtin_x)) unsigned int x;
  __declspec(property(get = __fetch_builtin_y)) unsigned int y;
  __declspec(property(get = __fetch_builtin_z)) unsigned int z;

  static inline __attribute__((always_inline)) __attribute__((device))
  unsigned int __fetch_builtin_x(void) { return cluster_num(); };
  static inline __attribute__((always_inline)) __attribute__((device))
  unsigned int __fetch_builtin_y(void) { return 1; };
  static inline __attribute__((always_inline)) __attribute__((device))
  unsigned int __fetch_builtin_z(void) { return 1; };

  __attribute__((device)) operator dim3() const;
private:
  __attribute__((device)) __cuda_builtin_blockDim_t() ;
  __attribute__((device)) __cuda_builtin_blockDim_t(const __cuda_builtin_blockDim_t &) ;
  __attribute__((device)) void operator=(const __cuda_builtin_blockDim_t &) const ;
  __attribute__((device)) __cuda_builtin_blockDim_t *operator&() const ;
};

struct __cuda_builtin_gridDim_t {
  __declspec(property(get = __fetch_builtin_x)) unsigned int x;
  __declspec(property(get = __fetch_builtin_y)) unsigned int y;
  __declspec(property(get = __fetch_builtin_z)) unsigned int z;

  static inline __attribute__((always_inline)) __attribute__((device))
  unsigned int __fetch_builtin_x(void) { return 1; };
  static inline __attribute__((always_inline)) __attribute__((device))
  unsigned int __fetch_builtin_y(void) { return 1; };
  static inline __attribute__((always_inline)) __attribute__((device))
  unsigned int __fetch_builtin_z(void) { return 1; };

  __attribute__((device)) operator dim3() const;
private:
  __attribute__((device)) __cuda_builtin_gridDim_t() ;
  __attribute__((device)) __cuda_builtin_gridDim_t(const __cuda_builtin_gridDim_t &) ;
  __attribute__((device)) void operator=(const __cuda_builtin_gridDim_t &) const ;
  __attribute__((device)) __cuda_builtin_gridDim_t *operator&() const ;
};



extern const __attribute__((device)) __attribute__((weak)) __cuda_builtin_threadIdx_t threadIdx;
extern const __attribute__((device)) __attribute__((weak)) __cuda_builtin_blockIdx_t blockIdx;
extern const __attribute__((device)) __attribute__((weak)) __cuda_builtin_blockDim_t blockDim;
extern const __attribute__((device)) __attribute__((weak)) __cuda_builtin_gridDim_t gridDim;

#endif /* __CUDA2XPU_H */
