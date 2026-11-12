/*!\file xtdk_primitive.h
*/

#ifndef __XPU_KERNEL_XTDK_PRIMITIVE_H
#define __XPU_KERNEL_XTDK_PRIMITIVE_H
#include "xtdk.h"
#include "xtdk_simd.h"
#include "xtdk_math.h"

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
#if defined(__arch_xpu3__)
    float16x32_t ret;
    ret = vfloat2fp16_lh(Y_l, Y_h);
    vstore_lm_float16x32_mz(y, ret);
#elif defined(__arch_xpu2__)
    bfloat16x32_t ret;
    ret = vfloat2fp16_lh(Y_l, Y_h);
    vstore_lm_bfloat16x32_mz(y, ret);
#endif
    x += 32;
    y += 32;
  }
  mfence_lm();
}

template<>
__device__ void primitive_cast(float16* x, float* y, int len) {
  int start = (len - 1) / 32 * 32;
  x = x + start;
  y = y + start;
  for (int i = start; i >= 0; i -= 32) {
    float32x16_t X_l;
    float32x16_t X_h;
#if defined(__arch_xpu3__)
    float16x32_t X;
    X = vload_lm_float16x32_mz(x);
#elif defined(__arch_xpu2__)
    bfloat16x32_t X;
    X = vload_lm_bfloat16x32_mz(x);
#endif    
    X_l = vfp162float_l(X);
    X_h = vfp162float_h(X);
    vstore_lm_float32x16_mz(y+16, X_h);
    vstore_lm_float32x16_mz(y, X_l);
    x -= 32;
    y -= 32;
  }
  mfence_lm();
}

template<typename TX, typename TY>
static __device__ void primitive_cast(const TX* x, TY* y, int len) {
    return;
}
template<>
__device__ void primitive_cast(const float* x, float* y, int len) {
    if (x == y) {
        return;
    } else {            // just copy
        float32x16_t vec_x_0;
        float32x16_t vec_x_1;
        for (int i = 0; i < len; i += 32) {
            vec_x_0 = vload_lm_float32x16(x + i);
            vec_x_1 = vload_lm_float32x16(x + i + 16);
            vstore_lm_float32x16(y + i, vec_x_0);
            vstore_lm_float32x16(y + i + 16, vec_x_1);
        }
        mfence_lm();
    }
}

/**
 * @brief    calc exp, y[i] = exp(x[i])
 *
 * @param   [in] x  : operand x, vector
 * @param   [out] y : result
 *
 * @return  void
*/
template<typename T>
static __device__ void primitive_exp(const T* x, T* y, int len) {
    return;
}
template<>
__device__ void primitive_exp(const float* x, float* y, int len) {
    int len_rounddown4 = rounddown4(len);
    for (int i = 0; i < len_rounddown4; i += 4) {
        float v0 = x[i + 0];
        float v1 = x[i + 1];
        float v2 = x[i + 2];
        float v3 = x[i + 3];
        y[i + 0] = exp(v0);
        y[i + 1] = exp(v1);
        y[i + 2] = exp(v2);
        y[i + 3] = exp(v3);
    }
    for (int i = len_rounddown4; i < len; i++) {
        float v0 = x[i];
        y[i] = exp(v0);
    }
    mfence_lm();
}

/**
 * @brief    calc log, y[i] = log(x[i])
 *
 * @param   [in] x  : operand x, vector
 * @param   [out] y : result
 *
 * @return  void
*/
template<typename T>
static __device__ void primitive_log(const T* x, T* y, int len) {
    return;
}
template<>
__device__ void primitive_log(const float* x, float* y, int len) {
    int len_rounddown4 = rounddown4(len);
    for (int i = 0; i < len_rounddown4; i += 4) {
        float v0 = log(x[i + 0]);
        float v1 = log(x[i + 1]);
        float v2 = log(x[i + 2]);
        float v3 = log(x[i + 3]);
        y[i + 0] = v0;
        y[i + 1] = v1;
        y[i + 2] = v2;
        y[i + 3] = v3;
    }
    for (int i = len_rounddown4; i < len; i++) {
        y[i] = log(x[i]);
    }
    mfence_lm();
}

template<typename T>
static __device__ void primitive_add(float x, const T* y, T* z, int len) {
    return;
}
template<>
__device__ void primitive_add(float x, const float* y, float* z, int len) {
    float32x16_t vec_y_0;
    vvxor_float32x16(vec_y_0, vec_y_0);
    float32x16_t vec_y_1;
    vvxor_float32x16(vec_y_1, vec_y_1);
    float thresh = -64.0f;
    int roundsize32 = rounddown32(len);
    int remain = len - roundsize32;
    for (int i = 0; i < roundsize32; i += 32) {
        vec_y_0 = vload_lm_float32x16(y + i);
        vec_y_1 = vload_lm_float32x16(y + i + 16);
        vec_y_0 = svadd_float32x16(x, vec_y_0);
        vec_y_1 = svadd_float32x16(x, vec_y_1);
        vec_y_0 = svmax_float32x16(thresh, vec_y_0);
        vec_y_1 = svmax_float32x16(thresh, vec_y_1);
        vstore_lm_float32x16(z + i, vec_y_0);
        vstore_lm_float32x16(z + i + 16, vec_y_1);
        
    }
    for (int i = 0; i < remain; i++) {
        *(z + roundsize32 + i) = *(y + roundsize32 + i) + x;
        *(z + roundsize32 + i) = fmax(*(z + roundsize32 + i), -64.0f);
    }
    mfence_lm();
}
#endif
