
/*!\file  xtdk_simd_xpu3.h
 * \brief XPU3/4 hardware supported simd memory access and computing interface
 * \see docs/xpu/DeveloperGuide.md
*/

#ifndef __XPU_KERNEL_XTDK_SIMD_XPU3_H
#define __XPU_KERNEL_XTDK_SIMD_XPU3_H

#if __xpu_subarch__ >= 3

#include "xpu/kernel/xtdk_fp16.h"

static __device__ inline float16x32_t vload_sm_float16x32(_shared_ptr_  const void* src_ptr) {
    return __builtin_xpu2_vloads_mr1( src_ptr, 0);
}

static __device__ inline float16x32_t vload_sm_float16x32_mz(_shared_ptr_  const void* src_ptr, int mask = -1) {
    return __builtin_xpu2_vloads_mz(mask,  src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vload_sm_float16x32_mh(_shared_ptr_  const void* src_ptr, float16x32_t dst_data, int mask = -1) {
    return __builtin_xpu2_vloads_mh(mask,  src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float16x32_t vload_lm_float16x32( const void* src_ptr) {
    return __builtin_xpu2_vload_mr1( src_ptr, 0);
}

static __device__ inline float16x32_t vload_lm_float16x32_mz( const void* src_ptr, int mask = -1) {
    return __builtin_xpu2_vload_mz(mask,  src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vload_lm_float16x32_mh( const void* src_ptr, float16x32_t dst_data, int mask = -1) {
    return __builtin_xpu2_vload_mh(mask,  src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float16x32_t vload_gsm_float16x32(_group_shared_ptr_  const void* src_ptr) {
    return __builtin_xpu2_vload_mr1( src_ptr, 0);
}

static __device__ inline float16x32_t vload_gsm_float16x32_mz(_group_shared_ptr_  const void* src_ptr, int mask = -1) {
    return __builtin_xpu2_vload_mz(mask,  src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vload_gsm_float16x32_mh(_group_shared_ptr_  const void* src_ptr, float16x32_t dst_data, int mask = -1) {
    return __builtin_xpu2_vload_mh(mask,  src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline void vstore_sm_float16x32(_shared_ptr_  void* dst_ptr, float16x32_t src_data) {
    return __builtin_xpu2_vstores_mr1(src_data, dst_ptr, 0);
}

static __device__ inline void vstore_sm_float16x32_mz(_shared_ptr_  void* dst_ptr, float16x32_t src_data, int mask = -1) {
    return __builtin_xpu2_vstores_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_sm_float16x32_mh(_shared_ptr_  void* dst_ptr, float16x32_t src_data, int mask = -1) {
    return __builtin_xpu2_vstores_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vstore_lm_float16x32( void* dst_ptr, float16x32_t src_data) {
    return __builtin_xpu2_vstore_mr1(src_data, dst_ptr, 0);
}

static __device__ inline void vstore_lm_float16x32_mz( void* dst_ptr, float16x32_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_lm_float16x32_mh( void* dst_ptr, float16x32_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vstore_gsm_float16x32(_group_shared_ptr_  void* dst_ptr, float16x32_t src_data) {
    return __builtin_xpu2_vstore_mr1(src_data, dst_ptr, 0);
}

static __device__ inline void vstore_gsm_float16x32_mz(_group_shared_ptr_  void* dst_ptr, float16x32_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_gsm_float16x32_mh(_group_shared_ptr_  void* dst_ptr, float16x32_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t vgather_sm_float16x32(_shared_ptr_  const void* src_ptr, int16x32_t offset) {
    return __builtin_xpu2_vgathers_mr1(src_ptr, offset);
}

static __device__ inline float16x32_t vgather_sm_float16x32_mz(_shared_ptr_  const void* src_ptr, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vgathers_mz(mask, src_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vgather_sm_float16x32_mh(_shared_ptr_  const void* src_ptr, int16x32_t offset, float16x32_t dst_data, int mask = -1) {
    return __builtin_xpu2_vgathers_mh(mask, src_ptr, offset, dst_data);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float16x32_t vgather_lm_float16x32( const void* src_ptr, int16x32_t offset) {
    return __builtin_xpu2_vgather_mr1(src_ptr, offset);
}

static __device__ inline float16x32_t vgather_lm_float16x32_mz( const void* src_ptr, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vgather_mz(mask, src_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vgather_lm_float16x32_mh( const void* src_ptr, int16x32_t offset, float16x32_t dst_data, int mask = -1) {
    return __builtin_xpu2_vgather_mh(mask, src_ptr, offset, dst_data);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float16x32_t vgather_gsm_float16x32(_group_shared_ptr_  const void* src_ptr, int16x32_t offset) {
    return __builtin_xpu2_vgather_mr1(src_ptr, offset);
}

static __device__ inline float16x32_t vgather_gsm_float16x32_mz(_group_shared_ptr_  const void* src_ptr, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vgather_mz(mask, src_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vgather_gsm_float16x32_mh(_group_shared_ptr_  const void* src_ptr, int16x32_t offset, float16x32_t dst_data, int mask = -1) {
    return __builtin_xpu2_vgather_mh(mask, src_ptr, offset, dst_data);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline void vscatter_sm_float16x32(_shared_ptr_  void* dst_ptr, float16x32_t src_data, int16x32_t offset) {
    return __builtin_xpu2_vscatters_mr1(src_data,  dst_ptr, offset);
}

static __device__ inline void vscatter_sm_float16x32_mz(_shared_ptr_  void* dst_ptr, float16x32_t src_data, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vscatters_mz(src_data, mask,  dst_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vscatter_sm_float16x32_mh(_shared_ptr_  void* dst_ptr, float16x32_t src_data, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vscatters_mh(src_data, mask,  dst_ptr, offset);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vscatter_lm_float16x32( void* dst_ptr, float16x32_t src_data, int16x32_t offset) {
    return __builtin_xpu2_vscatter_mr1(src_data,  dst_ptr, offset);
}

static __device__ inline void vscatter_lm_float16x32_mz( void* dst_ptr, float16x32_t src_data, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mz(src_data, mask,  dst_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vscatter_lm_float16x32_mh( void* dst_ptr, float16x32_t src_data, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mh(src_data, mask,  dst_ptr, offset);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vscatter_gsm_float16x32(_group_shared_ptr_  void* dst_ptr, float16x32_t src_data, int16x32_t offset) {
    return __builtin_xpu2_vscatter_mr1(src_data,  dst_ptr, offset);
}

static __device__ inline void vscatter_gsm_float16x32_mz(_group_shared_ptr_  void* dst_ptr, float16x32_t src_data, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mz(src_data, mask,  dst_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vscatter_gsm_float16x32_mh(_group_shared_ptr_  void* dst_ptr, float16x32_t src_data, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mh(src_data, mask,  dst_ptr, offset);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t vvmul_float16x32(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvmul_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t vvmul_float16x32_rz(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvmul_hf_mr1_rz(a, b);
}

static __device__ inline float16x32_t vvmul_float16x32_ru(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvmul_hf_mr1_ru(a, b);
}

static __device__ inline float16x32_t vvmul_float16x32_rd(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvmul_hf_mr1_rd(a, b);
}

static __device__ inline float16x32_t vvmul_float16x32_mz(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvmul_hf_mz_rn(mask, a, b);
}

static __device__ inline float16x32_t vvmul_float16x32_mz_rz(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvmul_hf_mz_rz(mask, a, b);
}

static __device__ inline float16x32_t vvmul_float16x32_mz_ru(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvmul_hf_mz_ru(mask, a, b);
}

static __device__ inline float16x32_t vvmul_float16x32_mz_rd(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvmul_hf_mz_rd(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvmul_float16x32_mh(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvmul_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvmul_float16x32_mh_rz(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvmul_hf_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvmul_float16x32_mh_ru(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvmul_hf_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvmul_float16x32_mh_rd(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvmul_hf_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t vvadd_float16x32(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvadd_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t vvadd_float16x32_rz(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvadd_hf_mr1_rz(a, b);
}

static __device__ inline float16x32_t vvadd_float16x32_ru(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvadd_hf_mr1_ru(a, b);
}

static __device__ inline float16x32_t vvadd_float16x32_rd(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvadd_hf_mr1_rd(a, b);
}

static __device__ inline float16x32_t vvadd_float16x32_mz(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvadd_hf_mz_rn(mask, a, b);
}

static __device__ inline float16x32_t vvadd_float16x32_mz_rz(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvadd_hf_mz_rz(mask, a, b);
}

static __device__ inline float16x32_t vvadd_float16x32_mz_ru(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvadd_hf_mz_ru(mask, a, b);
}

static __device__ inline float16x32_t vvadd_float16x32_mz_rd(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvadd_hf_mz_rd(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvadd_float16x32_mh(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvadd_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvadd_float16x32_mh_rz(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvadd_hf_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvadd_float16x32_mh_ru(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvadd_hf_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvadd_float16x32_mh_rd(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvadd_hf_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t vvsub_float16x32(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvsub_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t vvsub_float16x32_rz(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvsub_hf_mr1_rz(a, b);
}

static __device__ inline float16x32_t vvsub_float16x32_ru(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvsub_hf_mr1_ru(a, b);
}

static __device__ inline float16x32_t vvsub_float16x32_rd(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvsub_hf_mr1_rd(a, b);
}

static __device__ inline float16x32_t vvsub_float16x32_mz(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvsub_hf_mz_rn(mask, a, b);
}

static __device__ inline float16x32_t vvsub_float16x32_mz_rz(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvsub_hf_mz_rz(mask, a, b);
}

static __device__ inline float16x32_t vvsub_float16x32_mz_ru(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvsub_hf_mz_ru(mask, a, b);
}

static __device__ inline float16x32_t vvsub_float16x32_mz_rd(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvsub_hf_mz_rd(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvsub_float16x32_mh(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvsub_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvsub_float16x32_mh_rz(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvsub_hf_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvsub_float16x32_mh_ru(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvsub_hf_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvsub_float16x32_mh_rd(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvsub_hf_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t vvmin_float16x32(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvmin_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t vvmin_float16x32_mz(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvmin_hf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvmin_float16x32_mh(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvmin_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t vvmax_float16x32(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvmax_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t vvmax_float16x32_mz(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvmax_hf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvmax_float16x32_mh(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvmax_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t vvand_float16x32(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvand_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t vvand_float16x32_mz(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvand_hf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvand_float16x32_mh(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvand_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t vvor_float16x32(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvor_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t vvor_float16x32_mz(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvor_hf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvor_float16x32_mh(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvor_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t vvnor_float16x32(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvnor_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t vvnor_float16x32_mz(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvnor_hf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvnor_float16x32_mh(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvnor_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t vvxor_float16x32(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvxor_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t vvxor_float16x32_mz(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvxor_hf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvxor_float16x32_mh(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvxor_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t vvxnor_float16x32(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvxnor_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t vvxnor_float16x32_mz(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvxnor_hf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvxnor_float16x32_mh(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvxnor_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t vvsetlt_float16x32(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vsetlt_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t vvsetlt_float16x32_mz(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vsetlt_hf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvsetlt_float16x32_mh(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vsetlt_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t vvsetgt_float16x32(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vsetgt_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t vvsetgt_float16x32_mz(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vsetgt_hf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvsetgt_float16x32_mh(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vsetgt_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t svmul_float16x32(half a, float16x32_t b) {
    return __builtin_xpu3_svmul_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t svmul_float16x32_rz(half a, float16x32_t b) {
    return __builtin_xpu3_svmul_hf_mr1_rz(a, b);
}

static __device__ inline float16x32_t svmul_float16x32_ru(half a, float16x32_t b) {
    return __builtin_xpu3_svmul_hf_mr1_ru(a, b);
}

static __device__ inline float16x32_t svmul_float16x32_rd(half a, float16x32_t b) {
    return __builtin_xpu3_svmul_hf_mr1_rd(a, b);
}

static __device__ inline float16x32_t svmul_float16x32_mz(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svmul_hf_mz_rn(mask, a, b);
}

static __device__ inline float16x32_t svmul_float16x32_mz_rz(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svmul_hf_mz_rz(mask, a, b);
}

static __device__ inline float16x32_t svmul_float16x32_mz_ru(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svmul_hf_mz_ru(mask, a, b);
}

static __device__ inline float16x32_t svmul_float16x32_mz_rd(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svmul_hf_mz_rd(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svmul_float16x32_mh(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_svmul_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svmul_float16x32_mh_rz(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_svmul_hf_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svmul_float16x32_mh_ru(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_svmul_hf_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svmul_float16x32_mh_rd(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_svmul_hf_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t svadd_float16x32(half a, float16x32_t b) {
    return __builtin_xpu3_svadd_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t svadd_float16x32_rz(half a, float16x32_t b) {
    return __builtin_xpu3_svadd_hf_mr1_rz(a, b);
}

static __device__ inline float16x32_t svadd_float16x32_ru(half a, float16x32_t b) {
    return __builtin_xpu3_svadd_hf_mr1_ru(a, b);
}

static __device__ inline float16x32_t svadd_float16x32_rd(half a, float16x32_t b) {
    return __builtin_xpu3_svadd_hf_mr1_rd(a, b);
}

static __device__ inline float16x32_t svadd_float16x32_mz(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svadd_hf_mz_rn(mask, a, b);
}

static __device__ inline float16x32_t svadd_float16x32_mz_rz(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svadd_hf_mz_rz(mask, a, b);
}

static __device__ inline float16x32_t svadd_float16x32_mz_ru(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svadd_hf_mz_ru(mask, a, b);
}

static __device__ inline float16x32_t svadd_float16x32_mz_rd(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svadd_hf_mz_rd(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svadd_float16x32_mh(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_svadd_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svadd_float16x32_mh_rz(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_svadd_hf_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svadd_float16x32_mh_ru(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_svadd_hf_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svadd_float16x32_mh_rd(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_svadd_hf_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t svsub_float16x32(half a, float16x32_t b) {
    return __builtin_xpu3_svsub_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t svsub_float16x32_rz(half a, float16x32_t b) {
    return __builtin_xpu3_svsub_hf_mr1_rz(a, b);
}

static __device__ inline float16x32_t svsub_float16x32_ru(half a, float16x32_t b) {
    return __builtin_xpu3_svsub_hf_mr1_ru(a, b);
}

static __device__ inline float16x32_t svsub_float16x32_rd(half a, float16x32_t b) {
    return __builtin_xpu3_svsub_hf_mr1_rd(a, b);
}

static __device__ inline float16x32_t svsub_float16x32_mz(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svsub_hf_mz_rn(mask, a, b);
}

static __device__ inline float16x32_t svsub_float16x32_mz_rz(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svsub_hf_mz_rz(mask, a, b);
}

static __device__ inline float16x32_t svsub_float16x32_mz_ru(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svsub_hf_mz_ru(mask, a, b);
}

static __device__ inline float16x32_t svsub_float16x32_mz_rd(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svsub_hf_mz_rd(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svsub_float16x32_mh(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_svsub_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svsub_float16x32_mh_rz(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_svsub_hf_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svsub_float16x32_mh_ru(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_svsub_hf_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svsub_float16x32_mh_rd(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_svsub_hf_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t svmin_float16x32(half a, float16x32_t b) {
    return __builtin_xpu3_svmin_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t svmin_float16x32_mz(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svmin_hf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svmin_float16x32_mh(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_svmin_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t svmax_float16x32(half a, float16x32_t b) {
    return __builtin_xpu3_svmax_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t svmax_float16x32_mz(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svmax_hf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svmax_float16x32_mh(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_svmax_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t svand_float16x32(half a, float16x32_t b) {
    return __builtin_xpu3_svand_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t svand_float16x32_mz(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svand_hf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svand_float16x32_mh(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_svand_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t svor_float16x32(half a, float16x32_t b) {
    return __builtin_xpu3_svor_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t svor_float16x32_mz(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svor_hf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svor_float16x32_mh(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_svor_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t svnor_float16x32(half a, float16x32_t b) {
    return __builtin_xpu3_svnor_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t svnor_float16x32_mz(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svnor_hf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svnor_float16x32_mh(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_svnor_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t svxor_float16x32(half a, float16x32_t b) {
    return __builtin_xpu3_svxor_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t svxor_float16x32_mz(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svxor_hf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svxor_float16x32_mh(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_svxor_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t svxnor_float16x32(half a, float16x32_t b) {
    return __builtin_xpu3_svxnor_hf_mr1_rn(a, b);
}

static __device__ inline float16x32_t svxnor_float16x32_mz(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svxnor_hf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svxnor_float16x32_mh(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_svxnor_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED



static __device__ inline float16x32_t vvmerge_l_float16x32(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vmerge_l_hf(a, b);
}

static __device__ inline float16x32_t vvmerge_h_float16x32(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vmerge_h_hf(a, b);
}

static __device__ inline float16x32_t vsllp_float16x32(int a, float16x32_t b) {
    return __builtin_xpu3_svsllp_hf(a, b);
}

static __device__ inline float16x32_t vsrlp_float16x32(int a, float16x32_t b) {
    return __builtin_xpu3_svsrlp_hf(a, b);
}

static __device__ inline float16x32_t vvmac_float16x32(float16x32_t a, float16x32_t b, float16x32_t c) {
    return __builtin_xpu3_vvmac_hf_mr1_rn(a, b, c);
}

static __device__ inline float16x32_t vvmac_float16x32_rz(float16x32_t a, float16x32_t b, float16x32_t c) {
    return __builtin_xpu3_vvmac_hf_mr1_rz(a, b, c);
}

static __device__ inline float16x32_t vvmac_float16x32_ru(float16x32_t a, float16x32_t b, float16x32_t c) {
    return __builtin_xpu3_vvmac_hf_mr1_ru(a, b, c);
}

static __device__ inline float16x32_t vvmac_float16x32_rd(float16x32_t a, float16x32_t b, float16x32_t c) {
    return __builtin_xpu3_vvmac_hf_mr1_rd(a, b, c);
}

static __device__ inline float16x32_t vvmac_float16x32_mz(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvmac_hf_mz_rn(mask, a, b, c);
}

static __device__ inline float16x32_t vvmac_float16x32_mz_rz(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvmac_hf_mz_rz(mask, a, b, c);
}

static __device__ inline float16x32_t vvmac_float16x32_mz_ru(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvmac_hf_mz_ru(mask, a, b, c);
}

static __device__ inline float16x32_t vvmac_float16x32_mz_rd(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvmac_hf_mz_rd(mask, a, b, c);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvmac_float16x32_mh(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvmac_hf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvmac_float16x32_mh_rz(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvmac_hf_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvmac_float16x32_mh_ru(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvmac_hf_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t vvmac_float16x32_mh_rd(float16x32_t a, float16x32_t b, float16x32_t c, int mask = -1) {
    return __builtin_xpu3_vvmac_hf_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float16x32_t svmac_float16x32(half a, float16x32_t b, float16x32_t c) {
    c = __builtin_xpu3_svmac_hf_mr1_rn(a, b, c);
    return c;
}

static __device__ inline float16x32_t svmac_float16x32_rz(half a, float16x32_t b, float16x32_t c) {
    c = __builtin_xpu3_svmac_hf_mr1_rz(a, b, c);
    return c;
}

static __device__ inline float16x32_t svmac_float16x32_ru(half a, float16x32_t b, float16x32_t c) {
    c = __builtin_xpu3_svmac_hf_mr1_ru(a, b, c);
    return c;
}

static __device__ inline float16x32_t svmac_float16x32_rd(half a, float16x32_t b, float16x32_t c) {
    c = __builtin_xpu3_svmac_hf_mr1_rd(a, b, c);
    return c;
}

static __device__ inline float16x32_t svmac_float16x32_mz(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    c = __builtin_xpu3_svmac_hf_mz_rn(mask, a, b, c);
    return c;
}

static __device__ inline float16x32_t svmac_float16x32_mz_rz(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    c = __builtin_xpu3_svmac_hf_mz_rz(mask, a, b, c);
    return c;
}

static __device__ inline float16x32_t svmac_float16x32_mz_ru(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    c = __builtin_xpu3_svmac_hf_mz_ru(mask, a, b, c);
    return c;
}

static __device__ inline float16x32_t svmac_float16x32_mz_rd(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    c = __builtin_xpu3_svmac_hf_mz_rd(mask, a, b, c);
    return c;
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svmac_float16x32_mh(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    c = __builtin_xpu3_svmac_hf_mh_rn(mask, a, b, c);
    return c;
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svmac_float16x32_mh_rz(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    c = __builtin_xpu3_svmac_hf_mh_rz(mask, a, b, c);
    return c;
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svmac_float16x32_mh_ru(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    c = __builtin_xpu3_svmac_hf_mh_ru(mask, a, b, c);
    return c;
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float16x32_t svmac_float16x32_mh_rd(half a, float16x32_t b, float16x32_t c, int mask = -1) {
    c = __builtin_xpu3_svmac_hf_mh_rd(mask, a, b, c);
    return c;
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline int vvle_float16x32(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvle_hf_mr1(a, b);
}

static __device__ inline int vvle_float16x32_mz(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvle_hf_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vvle_float16x32_mh(float16x32_t a, float16x32_t b, int mask = -1, int c = -1) {
    return __builtin_xpu3_vvle_hf_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int vvlt_float16x32(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvlt_hf_mr1(a, b);
}

static __device__ inline int vvlt_float16x32_mz(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvlt_hf_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vvlt_float16x32_mh(float16x32_t a, float16x32_t b, int mask = -1, int c = -1) {
    return __builtin_xpu3_vvlt_hf_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int vveq_float16x32(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vveq_hf_mr1(a, b);
}

static __device__ inline int vveq_float16x32_mz(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vveq_hf_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vveq_float16x32_mh(float16x32_t a, float16x32_t b, int mask = -1, int c = -1) {
    return __builtin_xpu3_vveq_hf_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int vvneq_float16x32(float16x32_t a, float16x32_t b) {
    return __builtin_xpu3_vvneq_hf_mr1(a, b);
}

static __device__ inline int vvneq_float16x32_mz(float16x32_t a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_vvneq_hf_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vvneq_float16x32_mh(float16x32_t a, float16x32_t b, int mask = -1, int c = -1) {
    return __builtin_xpu3_vvneq_hf_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int svle_float16x32(half a, float16x32_t b) {
    return __builtin_xpu3_svle_hf_mr1(a, b);
}

static __device__ inline int svle_float16x32_mz(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svle_hf_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int svle_float16x32_mh(half a, float16x32_t b, int mask = -1, int c = -1) {
    return __builtin_xpu3_svle_hf_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int svlt_float16x32(half a, float16x32_t b) {
    return __builtin_xpu3_svlt_hf_mr1(a, b);
}

static __device__ inline int svlt_float16x32_mz(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svlt_hf_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int svlt_float16x32_mh(half a, float16x32_t b, int mask = -1, int c = -1) {
    return __builtin_xpu3_svlt_hf_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int sveq_float16x32(half a, float16x32_t b) {
    return __builtin_xpu3_sveq_hf_mr1(a, b);
}

static __device__ inline int sveq_float16x32_mz(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_sveq_hf_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int sveq_float16x32_mh(half a, float16x32_t b, int mask = -1, int c = -1) {
    return __builtin_xpu3_sveq_hf_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int svneq_float16x32(half a, float16x32_t b) {
    return __builtin_xpu3_svneq_hf_mr1(a, b);
}

static __device__ inline int svneq_float16x32_mz(half a, float16x32_t b, int mask = -1) {
    return __builtin_xpu3_svneq_hf_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int svneq_float16x32_mh(half a, float16x32_t b, int mask = -1, int c = -1) {
    return __builtin_xpu3_svneq_hf_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline float16x32_t vshuffle2_float16x32(float16x32_t a) {
    return __builtin_xpu3_vshuffle2_hf(a);
}


static __device__ inline half vextract_float16x32(float16x32_t a, int mask = 1) {
    return __builtin_xpu3_vextract_hf(mask, a);
}

static __device__ inline float16x32_t vabs_float16x32(float16x32_t a) {
    return __builtin_xpu3_vabs_hf(a);
}

static __device__ inline float32x16_t vabs_float32x16(float32x16_t a) {
    return __builtin_xpu3_vabs_f(a);
}

static __device__ inline int32x16_t vabs_int32x16(int32x16_t a) {
    return __builtin_xpu3_vabs_s(a);
}

static __device__ inline int8x64_t vload_sm_int8x64_mz(_shared_ptr_ const void* src_ptr, unsigned long long mask = -1) {
    return __builtin_xpu3_vloads_mask64_mz(mask, src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int8x64_t vload_sm_int8x64_mh(_shared_ptr_ const void* src_ptr, int8x64_t dst_data, unsigned long long mask = -1) {
    return __builtin_xpu3_vloads_mask64_mh(mask, src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int8x64_t vload_lm_int8x64_mz(const void* src_ptr, unsigned long long mask = -1) {
    return __builtin_xpu3_vload_mask64_mz(mask, src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int8x64_t vload_lm_int8x64_mh(const void* src_ptr, int8x64_t dst_data, unsigned long long mask = -1) {
    return __builtin_xpu3_vload_mask64_mh(mask, src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int8x64_t vload_gsm_int8x64_mz(_group_shared_ptr_ const void* src_ptr, unsigned long long mask = -1) {
    return __builtin_xpu3_vload_mask64_mz(mask, src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int8x64_t vload_gsm_int8x64_mh(_group_shared_ptr_ const void* src_ptr, int8x64_t dst_data, unsigned long long mask = -1) {
    return __builtin_xpu3_vload_mask64_mh(mask, src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vstore_sm_int8x64_mz(_shared_ptr_ void* dst_ptr, int8x64_t src_data, unsigned long long mask = -1) {
    return __builtin_xpu3_vstores_mask64_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_sm_int8x64_mh(_shared_ptr_ void* dst_ptr, int8x64_t src_data, unsigned long long mask = -1) {
    return __builtin_xpu3_vstores_mask64_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vstore_lm_int8x64_mz(void* dst_ptr, int8x64_t src_data, unsigned long long mask = -1) {
    return __builtin_xpu3_vstore_mask64_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_lm_int8x64_mh(void* dst_ptr, int8x64_t src_data, unsigned long long mask = -1) {
    return __builtin_xpu3_vstore_mask64_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vstore_gsm_int8x64_mz(_group_shared_ptr_ void* dst_ptr, int8x64_t src_data, unsigned long long mask = -1) {
    return __builtin_xpu3_vstore_mask64_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_gsm_int8x64_mh(_group_shared_ptr_ void* dst_ptr, int8x64_t src_data, unsigned long long mask = -1) {
    return __builtin_xpu3_vstore_mask64_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vfloat2fix(float32x16_t a) {
    return __builtin_xpu3_vfloat2fix_rn(a);
}

static __device__ inline int32x16_t vfloat2fix_rz(float32x16_t a) {
    return __builtin_xpu3_vfloat2fix_rz(a);
}

static __device__ inline int32x16_t vfloat2fix_ru(float32x16_t a) {
    return __builtin_xpu3_vfloat2fix_ru(a);
}

static __device__ inline int32x16_t vfloat2fix_rd(float32x16_t a) {
    return __builtin_xpu3_vfloat2fix_rd(a);
}

static __device__ inline float32x16_t vfix2float(int32x16_t a) {
    return __builtin_xpu3_vfix2float_rn(a);
}

static __device__ inline float32x16_t vfix2float_rz(int32x16_t a) {
    return __builtin_xpu3_vfix2float_rz(a);
}

static __device__ inline float32x16_t vfix2float_ru(int32x16_t a) {
    return __builtin_xpu3_vfix2float_ru(a);
}

static __device__ inline float32x16_t vfix2float_rd(int32x16_t a) {
    return __builtin_xpu3_vfix2float_rd(a);
}

static __device__ inline float32x16_t vfp162float_l(float16x32_t a) {
    return __builtin_xpu3_vhalf2float_l_rn(a);
}

static __device__ inline float32x16_t vfp162float_l_rz(float16x32_t a) {
    return __builtin_xpu3_vhalf2float_l_rz(a);
}

static __device__ inline float32x16_t vfp162float_l_ru(float16x32_t a) {
    return __builtin_xpu3_vhalf2float_l_ru(a);
}

static __device__ inline float32x16_t vfp162float_l_rd(float16x32_t a) {
    return __builtin_xpu3_vhalf2float_l_rd(a);
}

static __device__ inline float32x16_t vfp162float_h(float16x32_t a) {
    return __builtin_xpu3_vhalf2float_h_rn(a);
}

static __device__ inline float32x16_t vfp162float_h_rz(float16x32_t a) {
    return __builtin_xpu3_vhalf2float_h_rz(a);
}

static __device__ inline float32x16_t vfp162float_h_ru(float16x32_t a) {
    return __builtin_xpu3_vhalf2float_h_ru(a);
}

static __device__ inline float32x16_t vfp162float_h_rd(float16x32_t a) {
    return __builtin_xpu3_vhalf2float_h_rd(a);
}

static __device__ inline float16x32_t vfloat2fp16_l(float32x16_t a, float16x32_t b) {
    return __builtin_xpu3_vfloat2half_l_rn(a, b);
}

static __device__ inline float16x32_t vfloat2fp16_l_rz(float32x16_t a, float16x32_t b) {
    return __builtin_xpu3_vfloat2half_l_rz(a, b);
}

static __device__ inline float16x32_t vfloat2fp16_l_ru(float32x16_t a, float16x32_t b) {
    return __builtin_xpu3_vfloat2half_l_ru(a, b);
}

static __device__ inline float16x32_t vfloat2fp16_l_rd(float32x16_t a, float16x32_t b) {
    return __builtin_xpu3_vfloat2half_l_rd(a, b);
}

static __device__ inline float16x32_t vfloat2fp16_h(float32x16_t a, float16x32_t b) {
    return __builtin_xpu3_vfloat2half_h_rn(a, b);
}

static __device__ inline float16x32_t vfloat2fp16_h_rz(float32x16_t a, float16x32_t b) {
    return __builtin_xpu3_vfloat2half_h_rz(a, b);
}

static __device__ inline float16x32_t vfloat2fp16_h_ru(float32x16_t a, float16x32_t b) {
    return __builtin_xpu3_vfloat2half_h_ru(a, b);
}

static __device__ inline float16x32_t vfloat2fp16_h_rd(float32x16_t a, float16x32_t b) {
    return __builtin_xpu3_vfloat2half_h_rd(a, b);
}

static __device__ inline float16x32_t vfloat2fp16_lh(float32x16_t a, float32x16_t b) {
    return __builtin_xpu3_vfloat2half_lh_rn(a, b);
}
static __device__ inline float16x32_t vfloat2fp16_lh_rz(float32x16_t a, float32x16_t b) {
    return __builtin_xpu3_vfloat2half_lh_rz(a, b);
}
static __device__ inline float16x32_t vfloat2fp16_lh_ru(float32x16_t a, float32x16_t b) {
    return __builtin_xpu3_vfloat2half_lh_ru(a, b);
}
static __device__ inline float16x32_t vfloat2fp16_lh_rd(float32x16_t a, float32x16_t b) {
    return __builtin_xpu3_vfloat2half_lh_rd(a, b);
}
static __device__ inline float32x16_t vfix82float_ll(int8x64_t a) {
    return __builtin_xpu3_vfix82float(a, 0);
}

static __device__ inline float32x16_t vfix82float_lh(int8x64_t a) {
    return __builtin_xpu3_vfix82float(a, 1);
}

static __device__ inline float32x16_t vfix82float_hl(int8x64_t a) {
    return __builtin_xpu3_vfix82float(a, 2);
}

static __device__ inline float32x16_t vfix82float_hh(int8x64_t a) {
    return __builtin_xpu3_vfix82float(a, 3);
}

static __device__ inline int8x64_t vfloat2fix8_ll(int8x64_t a, float32x16_t b) {
    return __builtin_xpu3_vfloat2fix8(a, b, 0);
}

static __device__ inline int8x64_t vfloat2fix8_lh(int8x64_t a, float32x16_t b) {
    return __builtin_xpu3_vfloat2fix8(a, b, 1);
}

static __device__ inline int8x64_t vfloat2fix8_hl(int8x64_t a, float32x16_t b) {
    return __builtin_xpu3_vfloat2fix8(a, b, 2);
}

static __device__ inline int8x64_t vfloat2fix8_hh(int8x64_t a, float32x16_t b) {
    return __builtin_xpu3_vfloat2fix8(a, b, 3);
}

static __device__ inline int8x64_t vfloat2fix8_ll_rn(int8x64_t a, float32x16_t b) {
    return __builtin_xpu3_vfloat2fix8_rn(a, b, 0);
}

static __device__ inline int8x64_t vfloat2fix8_lh_rn(int8x64_t a, float32x16_t b) {
    return __builtin_xpu3_vfloat2fix8_rn(a, b, 1);
}

static __device__ inline int8x64_t vfloat2fix8_hl_rn(int8x64_t a, float32x16_t b) {
    return __builtin_xpu3_vfloat2fix8_rn(a, b, 2);
}

static __device__ inline int8x64_t vfloat2fix8_hh_rn(int8x64_t a, float32x16_t b) {
    return __builtin_xpu3_vfloat2fix8_rn(a, b, 3);
}

static __device__ inline float32x16_t vufix82float_ll(uint8x64_t a) {
    return __builtin_xpu3_vufix82float(a, 0);
}

static __device__ inline float32x16_t vufix82float_lh(uint8x64_t a) {
    return __builtin_xpu3_vufix82float(a, 1);
}

static __device__ inline float32x16_t vufix82float_hl(uint8x64_t a) {
    return __builtin_xpu3_vufix82float(a, 2);
}

static __device__ inline float32x16_t vufix82float_hh(uint8x64_t a) {
    return __builtin_xpu3_vufix82float(a, 3);
}

static __device__ inline uint8x64_t vfloat2ufix8_ll(uint8x64_t a, float32x16_t b) {
    return __builtin_xpu3_vfloat2ufix8(a, b, 0);
}

static __device__ inline uint8x64_t vfloat2ufix8_lh(uint8x64_t a, float32x16_t b) {
    return __builtin_xpu3_vfloat2ufix8(a, b, 1);
}

static __device__ inline uint8x64_t vfloat2ufix8_hl(uint8x64_t a, float32x16_t b) {
    return __builtin_xpu3_vfloat2ufix8(a, b, 2);
}

static __device__ inline uint8x64_t vfloat2ufix8_hh(uint8x64_t a, float32x16_t b) {
    return __builtin_xpu3_vfloat2ufix8(a, b, 3);
}

static __device__ inline float32x16_t vfix82float_ll_rn(int8x64_t a) {
    return __builtin_xpu3_vfix82float_ll_rn(a, 0);
}

static __device__ inline float32x16_t vfix82float_ll_ru(int8x64_t a) {
    return __builtin_xpu3_vfix82float_ll_ru(a, 0);
}

static __device__ inline float32x16_t vfix82float_ll_rd(int8x64_t a) {
    return __builtin_xpu3_vfix82float_ll_rd(a, 0);
}

static __device__ inline float32x16_t vfix82float_lh_rn(int8x64_t a) {
    return __builtin_xpu3_vfix82float_lh_rn(a, 1);
}

static __device__ inline float32x16_t vfix82float_lh_ru(int8x64_t a) {
    return __builtin_xpu3_vfix82float_lh_ru(a, 1);
}

static __device__ inline float32x16_t vfix82float_lh_rd(int8x64_t a) {
    return __builtin_xpu3_vfix82float_lh_rd(a, 1);
}

static __device__ inline float32x16_t vfix82float_hl_rn(int8x64_t a) {
    return __builtin_xpu3_vfix82float_hl_rn(a, 2);
}

static __device__ inline float32x16_t vfix82float_hl_ru(int8x64_t a) {
    return __builtin_xpu3_vfix82float_hl_ru(a, 2);
}

static __device__ inline float32x16_t vfix82float_hl_rd(int8x64_t a) {
    return __builtin_xpu3_vfix82float_hl_rd(a, 2);
}

static __device__ inline float32x16_t vfix82float_hh_rn(int8x64_t a) {
    return __builtin_xpu3_vfix82float_hh_rn(a, 3);
}

static __device__ inline float32x16_t vfix82float_hh_ru(int8x64_t a) {
    return __builtin_xpu3_vfix82float_hh_ru(a, 3);
}

static __device__ inline float32x16_t vfix82float_hh_rd(int8x64_t a) {
    return __builtin_xpu3_vfix82float_hh_rd(a, 3);
}

static __device__ inline float32x16_t vufix82float_ll_rn(uint8x64_t a) {
    return __builtin_xpu3_vufix82float_ll_rn(a, 0);
}

static __device__ inline float32x16_t vufix82float_ll_ru(uint8x64_t a) {
    return __builtin_xpu3_vufix82float_ll_ru(a, 0);
}

static __device__ inline float32x16_t vufix82float_ll_rd(uint8x64_t a) {
    return __builtin_xpu3_vufix82float_ll_rd(a, 0);
}

static __device__ inline float32x16_t vufix82float_lh_rn(uint8x64_t a) {
    return __builtin_xpu3_vufix82float_lh_rn(a, 1);
}

static __device__ inline float32x16_t vufix82float_lh_ru(uint8x64_t a) {
    return __builtin_xpu3_vufix82float_lh_ru(a, 1);
}

static __device__ inline float32x16_t vufix82float_lh_rd(uint8x64_t a) {
    return __builtin_xpu3_vufix82float_lh_rd(a, 1);
}

static __device__ inline float32x16_t vufix82float_hl_rn(uint8x64_t a) {
    return __builtin_xpu3_vufix82float_hl_rn(a, 2);
}

static __device__ inline float32x16_t vufix82float_hl_ru(uint8x64_t a) {
    return __builtin_xpu3_vufix82float_hl_ru(a, 2);
}

static __device__ inline float32x16_t vufix82float_hl_rd(uint8x64_t a) {
    return __builtin_xpu3_vufix82float_hl_rd(a, 2);
}

static __device__ inline float32x16_t vufix82float_hh_rn(uint8x64_t a) {
    return __builtin_xpu3_vufix82float_hh_rn(a, 3);
}

static __device__ inline float32x16_t vufix82float_hh_ru(uint8x64_t a) {
    return __builtin_xpu3_vufix82float_hh_ru(a, 3);
}

static __device__ inline float32x16_t vufix82float_hh_rd(uint8x64_t a) {
    return __builtin_xpu3_vufix82float_hh_rd(a, 3);
}

template <int imm = 0> static inline __device__ half vextracti_hf(float16x32_t a) {
    return __builtin_xpu3_vextracti_hf(a, imm);
}

static __device__ inline half vextracti_float16x32_0(float16x32_t a) {
    return vextracti_hf<0>(a);
}

static __device__ inline half vextracti_float16x32_1(float16x32_t a) {
    return vextracti_hf<1>(a);
}

static __device__ inline half vextracti_float16x32_2(float16x32_t a) {
    return vextracti_hf<2>(a);
}

static __device__ inline half vextracti_float16x32_3(float16x32_t a) {
    return vextracti_hf<3>(a);
}

static __device__ inline half vextracti_float16x32_4(float16x32_t a) {
    return vextracti_hf<4>(a);
}

static __device__ inline half vextracti_float16x32_5(float16x32_t a) {
    return vextracti_hf<5>(a);
}

static __device__ inline half vextracti_float16x32_6(float16x32_t a) {
    return vextracti_hf<6>(a);
}

static __device__ inline half vextracti_float16x32_7(float16x32_t a) {
    return vextracti_hf<7>(a);
}

static __device__ inline half vextracti_float16x32_8(float16x32_t a) {
    return vextracti_hf<8>(a);
}

static __device__ inline half vextracti_float16x32_9(float16x32_t a) {
    return vextracti_hf<9>(a);
}

static __device__ inline half vextracti_float16x32_10(float16x32_t a) {
    return vextracti_hf<10>(a);
}

static __device__ inline half vextracti_float16x32_11(float16x32_t a) {
    return vextracti_hf<11>(a);
}

static __device__ inline half vextracti_float16x32_12(float16x32_t a) {
    return vextracti_hf<12>(a);
}

static __device__ inline half vextracti_float16x32_13(float16x32_t a) {
    return vextracti_hf<13>(a);
}

static __device__ inline half vextracti_float16x32_14(float16x32_t a) {
    return vextracti_hf<14>(a);
}

static __device__ inline half vextracti_float16x32_15(float16x32_t a) {
    return vextracti_hf<15>(a);
}

static __device__ inline half vextracti_float16x32_16(float16x32_t a) {
    return vextracti_hf<16>(a);
}

static __device__ inline half vextracti_float16x32_17(float16x32_t a) {
    return vextracti_hf<17>(a);
}

static __device__ inline half vextracti_float16x32_18(float16x32_t a) {
    return vextracti_hf<18>(a);
}

static __device__ inline half vextracti_float16x32_19(float16x32_t a) {
    return vextracti_hf<19>(a);
}

static __device__ inline half vextracti_float16x32_20(float16x32_t a) {
    return vextracti_hf<20>(a);
}

static __device__ inline half vextracti_float16x32_21(float16x32_t a) {
    return vextracti_hf<21>(a);
}

static __device__ inline half vextracti_float16x32_22(float16x32_t a) {
    return vextracti_hf<22>(a);
}

static __device__ inline half vextracti_float16x32_23(float16x32_t a) {
    return vextracti_hf<23>(a);
}

static __device__ inline half vextracti_float16x32_24(float16x32_t a) {
    return vextracti_hf<24>(a);
}

static __device__ inline half vextracti_float16x32_25(float16x32_t a) {
    return vextracti_hf<25>(a);
}

static __device__ inline half vextracti_float16x32_26(float16x32_t a) {
    return vextracti_hf<26>(a);
}

static __device__ inline half vextracti_float16x32_27(float16x32_t a) {
    return vextracti_hf<27>(a);
}

static __device__ inline half vextracti_float16x32_28(float16x32_t a) {
    return vextracti_hf<28>(a);
}

static __device__ inline half vextracti_float16x32_29(float16x32_t a) {
    return vextracti_hf<29>(a);
}

static __device__ inline half vextracti_float16x32_30(float16x32_t a) {
    return vextracti_hf<30>(a);
}

static __device__ inline half vextracti_float16x32_31(float16x32_t a) {
    return vextracti_hf<31>(a);
}

template <int imm = 0> static inline __device__ float vextracti_f(float32x16_t a) {
    return __builtin_xpu3_vextracti_f(a, imm);
}

static __device__ inline float vextracti_float32x16_0(float32x16_t a) {
    return vextracti_f<0>(a);
}

static __device__ inline float vextracti_float32x16_1(float32x16_t a) {
    return vextracti_f<1>(a);
}

static __device__ inline float vextracti_float32x16_2(float32x16_t a) {
    return vextracti_f<2>(a);
}

static __device__ inline float vextracti_float32x16_3(float32x16_t a) {
    return vextracti_f<3>(a);
}

static __device__ inline float vextracti_float32x16_4(float32x16_t a) {
    return vextracti_f<4>(a);
}

static __device__ inline float vextracti_float32x16_5(float32x16_t a) {
    return vextracti_f<5>(a);
}

static __device__ inline float vextracti_float32x16_6(float32x16_t a) {
    return vextracti_f<6>(a);
}

static __device__ inline float vextracti_float32x16_7(float32x16_t a) {
    return vextracti_f<7>(a);
}

static __device__ inline float vextracti_float32x16_8(float32x16_t a) {
    return vextracti_f<8>(a);
}

static __device__ inline float vextracti_float32x16_9(float32x16_t a) {
    return vextracti_f<9>(a);
}

static __device__ inline float vextracti_float32x16_10(float32x16_t a) {
    return vextracti_f<10>(a);
}

static __device__ inline float vextracti_float32x16_11(float32x16_t a) {
    return vextracti_f<11>(a);
}

static __device__ inline float vextracti_float32x16_12(float32x16_t a) {
    return vextracti_f<12>(a);
}

static __device__ inline float vextracti_float32x16_13(float32x16_t a) {
    return vextracti_f<13>(a);
}

static __device__ inline float vextracti_float32x16_14(float32x16_t a) {
    return vextracti_f<14>(a);
}

static __device__ inline float vextracti_float32x16_15(float32x16_t a) {
    return vextracti_f<15>(a);
}

template <int imm = 0> static inline __device__ int32_t vextracti_s(int32x16_t a) {
    return __builtin_xpu3_vextracti_s(a, imm);
}

static __device__ inline int32_t vextracti_int32x16_0(int32x16_t a) {
    return vextracti_s<0>(a);
}

static __device__ inline int32_t vextracti_int32x16_1(int32x16_t a) {
    return vextracti_s<1>(a);
}

static __device__ inline int32_t vextracti_int32x16_2(int32x16_t a) {
    return vextracti_s<2>(a);
}

static __device__ inline int32_t vextracti_int32x16_3(int32x16_t a) {
    return vextracti_s<3>(a);
}

static __device__ inline int32_t vextracti_int32x16_4(int32x16_t a) {
    return vextracti_s<4>(a);
}

static __device__ inline int32_t vextracti_int32x16_5(int32x16_t a) {
    return vextracti_s<5>(a);
}

static __device__ inline int32_t vextracti_int32x16_6(int32x16_t a) {
    return vextracti_s<6>(a);
}

static __device__ inline int32_t vextracti_int32x16_7(int32x16_t a) {
    return vextracti_s<7>(a);
}

static __device__ inline int32_t vextracti_int32x16_8(int32x16_t a) {
    return vextracti_s<8>(a);
}

static __device__ inline int32_t vextracti_int32x16_9(int32x16_t a) {
    return vextracti_s<9>(a);
}

static __device__ inline int32_t vextracti_int32x16_10(int32x16_t a) {
    return vextracti_s<10>(a);
}

static __device__ inline int32_t vextracti_int32x16_11(int32x16_t a) {
    return vextracti_s<11>(a);
}

static __device__ inline int32_t vextracti_int32x16_12(int32x16_t a) {
    return vextracti_s<12>(a);
}

static __device__ inline int32_t vextracti_int32x16_13(int32x16_t a) {
    return vextracti_s<13>(a);
}

static __device__ inline int32_t vextracti_int32x16_14(int32x16_t a) {
    return vextracti_s<14>(a);
}

static __device__ inline int32_t vextracti_int32x16_15(int32x16_t a) {
    return vextracti_s<15>(a);
}

template <int imm = 0> static inline __device__ uint32_t vextracti_u(uint32x16_t a) {
    return __builtin_xpu3_vextracti_u(a, imm);
}

static __device__ inline uint32_t vextracti_uint32x16_0(uint32x16_t a) {
    return vextracti_u<0>(a);
}

static __device__ inline uint32_t vextracti_uint32x16_1(uint32x16_t a) {
    return vextracti_u<1>(a);
}

static __device__ inline uint32_t vextracti_uint32x16_2(uint32x16_t a) {
    return vextracti_u<2>(a);
}

static __device__ inline uint32_t vextracti_uint32x16_3(uint32x16_t a) {
    return vextracti_u<3>(a);
}

static __device__ inline uint32_t vextracti_uint32x16_4(uint32x16_t a) {
    return vextracti_u<4>(a);
}

static __device__ inline uint32_t vextracti_uint32x16_5(uint32x16_t a) {
    return vextracti_u<5>(a);
}

static __device__ inline uint32_t vextracti_uint32x16_6(uint32x16_t a) {
    return vextracti_u<6>(a);
}

static __device__ inline uint32_t vextracti_uint32x16_7(uint32x16_t a) {
    return vextracti_u<7>(a);
}

static __device__ inline uint32_t vextracti_uint32x16_8(uint32x16_t a) {
    return vextracti_u<8>(a);
}

static __device__ inline uint32_t vextracti_uint32x16_9(uint32x16_t a) {
    return vextracti_u<9>(a);
}

static __device__ inline uint32_t vextracti_uint32x16_10(uint32x16_t a) {
    return vextracti_u<10>(a);
}

static __device__ inline uint32_t vextracti_uint32x16_11(uint32x16_t a) {
    return vextracti_u<11>(a);
}

static __device__ inline uint32_t vextracti_uint32x16_12(uint32x16_t a) {
    return vextracti_u<12>(a);
}

static __device__ inline uint32_t vextracti_uint32x16_13(uint32x16_t a) {
    return vextracti_u<13>(a);
}

static __device__ inline uint32_t vextracti_uint32x16_14(uint32x16_t a) {
    return vextracti_u<14>(a);
}

static __device__ inline uint32_t vextracti_uint32x16_15(uint32x16_t a) {
    return vextracti_u<15>(a);
}

static __device__ inline half vrmax_float16x32(float16x32_t a) {
    return __builtin_xpu3_vrmax_hf(a);
}

static __device__ inline float vrmax_float32x16(float32x16_t a) {
    return __builtin_xpu3_vrmax_f(a);
}

static __device__ inline int32_t vrmax_int32x16(int32x16_t a) {
    return __builtin_xpu3_vrmax_s(a);
}

static __device__ inline uint32_t vrmax_uint32x16(uint32x16_t a) {
    return __builtin_xpu3_vrmax_u(a);
}


#endif
#endif // __XPU_KERNEL_XTDK_SIMD_XPU3H

