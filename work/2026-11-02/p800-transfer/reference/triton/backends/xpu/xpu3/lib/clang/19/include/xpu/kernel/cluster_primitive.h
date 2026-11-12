#ifndef __XPU_KERNEL_CLUSTER_PRIMITIVE_H
#define __XPU_KERNEL_CLUSTER_PRIMITIVE_H

#ifndef __arch_xpu1__
#warning Support for cluster_primitive.h will end. Please try xtdk_primitive.h.
#endif

#include "cluster_header.h"
#include "cluster_memory.h"
#include "cluster_memory_xpu2.h"
#include "simd.h"
#include "xtdk_simd.h"
#include "math.h"

typedef struct {
  unsigned short val;
} float16;

static __device__ inline void partition(int tid, int nthreads, int len, int align, int* start, int* end) {
    int block_cnt = roundup_div(len, align);
    int remain_block = block_cnt % nthreads;
    int start_block = block_cnt / nthreads * tid + min(tid, remain_block);
    int end_block = start_block + block_cnt / nthreads + (tid < remain_block);
    *start = min(start_block * align, len);
    *end = min(end_block * align, len);
}

template<typename TX, typename TY>
__device__ void primitive_cast(TX* x, TY* y, int len) {
  return;
}

template<>
__device__ void primitive_cast(float* x, float16* y, int len) {
  for (int i = 0; i < len; i += 32) {
    float32x16_t Y_h = vload_lm_float32x16(x + 16);
    float32x16_t Y_l = vload_lm_float32x16(x);
    bfloat16x32_t ret;
    ret = vfloat2fp16_lh(Y_l, Y_h);
    vstore_lm_bfloat16x32_mz(y, ret);
    x += 32;
    y += 32;
  }
  mfence_local();
}

template<>
__device__ void primitive_cast(float16* x, float* y, int len) {
  int start = (len - 1) / 32 * 32;
  x = x + start;
  y = y + start;
  for (int i = start; i >= 0; i -= 32) {
    bfloat16x32_t X;
    float32x16_t X_l;
    float32x16_t X_h;
    X = vload_lm_bfloat16x32_mz(x);
    X_l = vfp162float_l(X);
    X_h = vfp162float_h(X);
    vstore_lm_float32x16_mz(y+16, X_h);
    vstore_lm_float32x16_mz(y, X_l);
    x -= 32;
    y -= 32;
  }
  mfence_local();
}
#endif
