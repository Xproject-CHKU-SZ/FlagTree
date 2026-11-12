
/*!\file  xtdk_simd_xpu2.h
 * \brief XPU2/3/4 hardware supported simd memory access and computing interface
 * \see docs/xpu/DeveloperGuide.md
*/

#ifndef __XPU_KERNEL_XTDK_SIMD_XPU2_H
#define __XPU_KERNEL_XTDK_SIMD_XPU2_H

#if __xpu_subarch__ >= 2


static __device__ inline bfloat16x32_t vload_sm_bfloat16x32(_shared_ptr_  const void* src_ptr) {
    return __builtin_xpu2_vloads_mr1( src_ptr, 0);
}

static __device__ inline bfloat16x32_t vload_sm_bfloat16x32_mz(_shared_ptr_  const void* src_ptr, int mask = -1) {
    return __builtin_xpu2_vloads_mz(mask,  src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vload_sm_bfloat16x32_mh(_shared_ptr_  const void* src_ptr, bfloat16x32_t dst_data, int mask = -1) {
    return __builtin_xpu2_vloads_mh(mask,  src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int16x32_t vload_sm_int16x32(_shared_ptr_  const void* src_ptr) {
    return __builtin_xpu2_vloads_mr1( src_ptr, 0);
}

static __device__ inline int16x32_t vload_sm_int16x32_mz(_shared_ptr_  const void* src_ptr, int mask = -1) {
    return __builtin_xpu2_vloads_mz(mask,  src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int16x32_t vload_sm_int16x32_mh(_shared_ptr_  const void* src_ptr, int16x32_t dst_data, int mask = -1) {
    return __builtin_xpu2_vloads_mh(mask,  src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t vload_sm_float32x16(_shared_ptr_  const void* src_ptr) {
    return __builtin_xpu2_vloads_mask16_mr1( src_ptr, 0);
}

static __device__ inline float32x16_t vload_sm_float32x16_mz(_shared_ptr_  const void* src_ptr, int mask = -1) {
    return __builtin_xpu2_vloads_mask16_mz(mask,  src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vload_sm_float32x16_mh(_shared_ptr_  const void* src_ptr, float32x16_t dst_data, int mask = -1) {
    return __builtin_xpu2_vloads_mask16_mh(mask,  src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vload_sm_int32x16(_shared_ptr_  const void* src_ptr) {
    return __builtin_xpu2_vloads_mask16_mr1( src_ptr, 0);
}

static __device__ inline int32x16_t vload_sm_int32x16_mz(_shared_ptr_  const void* src_ptr, int mask = -1) {
    return __builtin_xpu2_vloads_mask16_mz(mask,  src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vload_sm_int32x16_mh(_shared_ptr_  const void* src_ptr, int32x16_t dst_data, int mask = -1) {
    return __builtin_xpu2_vloads_mask16_mh(mask,  src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vload_sm_uint32x16(_shared_ptr_  const void* src_ptr) {
    return __builtin_xpu2_vloads_mask16_mr1( src_ptr, 0);
}

static __device__ inline uint32x16_t vload_sm_uint32x16_mz(_shared_ptr_  const void* src_ptr, int mask = -1) {
    return __builtin_xpu2_vloads_mask16_mz(mask,  src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vload_sm_uint32x16_mh(_shared_ptr_  const void* src_ptr, uint32x16_t dst_data, int mask = -1) {
    return __builtin_xpu2_vloads_mask16_mh(mask,  src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline bfloat16x32_t vload_lm_bfloat16x32( const void* src_ptr) {
    return __builtin_xpu2_vload_mr1( src_ptr, 0);
}

static __device__ inline bfloat16x32_t vload_lm_bfloat16x32_mz( const void* src_ptr, int mask = -1) {
    return __builtin_xpu2_vload_mz(mask,  src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vload_lm_bfloat16x32_mh( const void* src_ptr, bfloat16x32_t dst_data, int mask = -1) {
    return __builtin_xpu2_vload_mh(mask,  src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int16x32_t vload_lm_int16x32( const void* src_ptr) {
    return __builtin_xpu2_vload_mr1( src_ptr, 0);
}

static __device__ inline int16x32_t vload_lm_int16x32_mz( const void* src_ptr, int mask = -1) {
    return __builtin_xpu2_vload_mz(mask,  src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int16x32_t vload_lm_int16x32_mh( const void* src_ptr, int16x32_t dst_data, int mask = -1) {
    return __builtin_xpu2_vload_mh(mask,  src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t vload_lm_float32x16( const void* src_ptr) {
    return __builtin_xpu2_vload_mask16_mr1( src_ptr, 0);
}

static __device__ inline float32x16_t vload_lm_float32x16_mz( const void* src_ptr, int mask = -1) {
    return __builtin_xpu2_vload_mask16_mz(mask,  src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vload_lm_float32x16_mh( const void* src_ptr, float32x16_t dst_data, int mask = -1) {
    return __builtin_xpu2_vload_mask16_mh(mask,  src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vload_lm_int32x16( const void* src_ptr) {
    return __builtin_xpu2_vload_mask16_mr1( src_ptr, 0);
}

static __device__ inline int32x16_t vload_lm_int32x16_mz( const void* src_ptr, int mask = -1) {
    return __builtin_xpu2_vload_mask16_mz(mask,  src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vload_lm_int32x16_mh( const void* src_ptr, int32x16_t dst_data, int mask = -1) {
    return __builtin_xpu2_vload_mask16_mh(mask,  src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vload_lm_uint32x16( const void* src_ptr) {
    return __builtin_xpu2_vload_mask16_mr1( src_ptr, 0);
}

static __device__ inline uint32x16_t vload_lm_uint32x16_mz( const void* src_ptr, int mask = -1) {
    return __builtin_xpu2_vload_mask16_mz(mask,  src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vload_lm_uint32x16_mh( const void* src_ptr, uint32x16_t dst_data, int mask = -1) {
    return __builtin_xpu2_vload_mask16_mh(mask,  src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline bfloat16x32_t vload_gsm_bfloat16x32(_group_shared_ptr_  const void* src_ptr) {
    return __builtin_xpu2_vload_mr1( src_ptr, 0);
}

static __device__ inline bfloat16x32_t vload_gsm_bfloat16x32_mz(_group_shared_ptr_  const void* src_ptr, int mask = -1) {
    return __builtin_xpu2_vload_mz(mask,  src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vload_gsm_bfloat16x32_mh(_group_shared_ptr_  const void* src_ptr, bfloat16x32_t dst_data, int mask = -1) {
    return __builtin_xpu2_vload_mh(mask,  src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int16x32_t vload_gsm_int16x32(_group_shared_ptr_  const void* src_ptr) {
    return __builtin_xpu2_vload_mr1( src_ptr, 0);
}

static __device__ inline int16x32_t vload_gsm_int16x32_mz(_group_shared_ptr_  const void* src_ptr, int mask = -1) {
    return __builtin_xpu2_vload_mz(mask,  src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int16x32_t vload_gsm_int16x32_mh(_group_shared_ptr_  const void* src_ptr, int16x32_t dst_data, int mask = -1) {
    return __builtin_xpu2_vload_mh(mask,  src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t vload_gsm_float32x16(_group_shared_ptr_  const void* src_ptr) {
    return __builtin_xpu2_vload_mask16_mr1( src_ptr, 0);
}

static __device__ inline float32x16_t vload_gsm_float32x16_mz(_group_shared_ptr_  const void* src_ptr, int mask = -1) {
    return __builtin_xpu2_vload_mask16_mz(mask,  src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vload_gsm_float32x16_mh(_group_shared_ptr_  const void* src_ptr, float32x16_t dst_data, int mask = -1) {
    return __builtin_xpu2_vload_mask16_mh(mask,  src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vload_gsm_int32x16(_group_shared_ptr_  const void* src_ptr) {
    return __builtin_xpu2_vload_mask16_mr1( src_ptr, 0);
}

static __device__ inline int32x16_t vload_gsm_int32x16_mz(_group_shared_ptr_  const void* src_ptr, int mask = -1) {
    return __builtin_xpu2_vload_mask16_mz(mask,  src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vload_gsm_int32x16_mh(_group_shared_ptr_  const void* src_ptr, int32x16_t dst_data, int mask = -1) {
    return __builtin_xpu2_vload_mask16_mh(mask,  src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vload_gsm_uint32x16(_group_shared_ptr_  const void* src_ptr) {
    return __builtin_xpu2_vload_mask16_mr1( src_ptr, 0);
}

static __device__ inline uint32x16_t vload_gsm_uint32x16_mz(_group_shared_ptr_  const void* src_ptr, int mask = -1) {
    return __builtin_xpu2_vload_mask16_mz(mask,  src_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vload_gsm_uint32x16_mh(_group_shared_ptr_  const void* src_ptr, uint32x16_t dst_data, int mask = -1) {
    return __builtin_xpu2_vload_mask16_mh(mask,  src_ptr, dst_data, 0);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline void vstore_sm_bfloat16x32(_shared_ptr_  void* dst_ptr, bfloat16x32_t src_data) {
    return __builtin_xpu2_vstores_mr1(src_data, dst_ptr, 0);
}

static __device__ inline void vstore_sm_bfloat16x32_mz(_shared_ptr_  void* dst_ptr, bfloat16x32_t src_data, int mask = -1) {
    return __builtin_xpu2_vstores_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_sm_bfloat16x32_mh(_shared_ptr_  void* dst_ptr, bfloat16x32_t src_data, int mask = -1) {
    return __builtin_xpu2_vstores_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vstore_sm_int16x32(_shared_ptr_  void* dst_ptr, int16x32_t src_data) {
    return __builtin_xpu2_vstores_mr1(src_data, dst_ptr, 0);
}

static __device__ inline void vstore_sm_int16x32_mz(_shared_ptr_  void* dst_ptr, int16x32_t src_data, int mask = -1) {
    return __builtin_xpu2_vstores_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_sm_int16x32_mh(_shared_ptr_  void* dst_ptr, int16x32_t src_data, int mask = -1) {
    return __builtin_xpu2_vstores_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vstore_sm_float32x16(_shared_ptr_  void* dst_ptr, float32x16_t src_data) {
    return __builtin_xpu2_vstores_mask16_mr1(src_data, dst_ptr, 0);
}

static __device__ inline void vstore_sm_float32x16_mz(_shared_ptr_  void* dst_ptr, float32x16_t src_data, int mask = -1) {
    return __builtin_xpu2_vstores_mask16_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_sm_float32x16_mh(_shared_ptr_  void* dst_ptr, float32x16_t src_data, int mask = -1) {
    return __builtin_xpu2_vstores_mask16_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vstore_sm_int32x16(_shared_ptr_  void* dst_ptr, int32x16_t src_data) {
    return __builtin_xpu2_vstores_mask16_mr1(src_data, dst_ptr, 0);
}

static __device__ inline void vstore_sm_int32x16_mz(_shared_ptr_  void* dst_ptr, int32x16_t src_data, int mask = -1) {
    return __builtin_xpu2_vstores_mask16_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_sm_int32x16_mh(_shared_ptr_  void* dst_ptr, int32x16_t src_data, int mask = -1) {
    return __builtin_xpu2_vstores_mask16_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vstore_sm_uint32x16(_shared_ptr_  void* dst_ptr, uint32x16_t src_data) {
    return __builtin_xpu2_vstores_mask16_mr1(src_data, dst_ptr, 0);
}

static __device__ inline void vstore_sm_uint32x16_mz(_shared_ptr_  void* dst_ptr, uint32x16_t src_data, int mask = -1) {
    return __builtin_xpu2_vstores_mask16_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_sm_uint32x16_mh(_shared_ptr_  void* dst_ptr, uint32x16_t src_data, int mask = -1) {
    return __builtin_xpu2_vstores_mask16_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vstore_lm_bfloat16x32( void* dst_ptr, bfloat16x32_t src_data) {
    return __builtin_xpu2_vstore_mr1(src_data, dst_ptr, 0);
}

static __device__ inline void vstore_lm_bfloat16x32_mz( void* dst_ptr, bfloat16x32_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_lm_bfloat16x32_mh( void* dst_ptr, bfloat16x32_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vstore_lm_int16x32( void* dst_ptr, int16x32_t src_data) {
    return __builtin_xpu2_vstore_mr1(src_data, dst_ptr, 0);
}

static __device__ inline void vstore_lm_int16x32_mz( void* dst_ptr, int16x32_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_lm_int16x32_mh( void* dst_ptr, int16x32_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vstore_lm_float32x16( void* dst_ptr, float32x16_t src_data) {
    return __builtin_xpu2_vstore_mask16_mr1(src_data, dst_ptr, 0);
}

static __device__ inline void vstore_lm_float32x16_mz( void* dst_ptr, float32x16_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mask16_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_lm_float32x16_mh( void* dst_ptr, float32x16_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mask16_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vstore_lm_int32x16( void* dst_ptr, int32x16_t src_data) {
    return __builtin_xpu2_vstore_mask16_mr1(src_data, dst_ptr, 0);
}

static __device__ inline void vstore_lm_int32x16_mz( void* dst_ptr, int32x16_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mask16_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_lm_int32x16_mh( void* dst_ptr, int32x16_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mask16_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vstore_lm_uint32x16( void* dst_ptr, uint32x16_t src_data) {
    return __builtin_xpu2_vstore_mask16_mr1(src_data, dst_ptr, 0);
}

static __device__ inline void vstore_lm_uint32x16_mz( void* dst_ptr, uint32x16_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mask16_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_lm_uint32x16_mh( void* dst_ptr, uint32x16_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mask16_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vstore_gsm_bfloat16x32(_group_shared_ptr_  void* dst_ptr, bfloat16x32_t src_data) {
    return __builtin_xpu2_vstore_mr1(src_data, dst_ptr, 0);
}

static __device__ inline void vstore_gsm_bfloat16x32_mz(_group_shared_ptr_  void* dst_ptr, bfloat16x32_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_gsm_bfloat16x32_mh(_group_shared_ptr_  void* dst_ptr, bfloat16x32_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vstore_gsm_int16x32(_group_shared_ptr_  void* dst_ptr, int16x32_t src_data) {
    return __builtin_xpu2_vstore_mr1(src_data, dst_ptr, 0);
}

static __device__ inline void vstore_gsm_int16x32_mz(_group_shared_ptr_  void* dst_ptr, int16x32_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_gsm_int16x32_mh(_group_shared_ptr_  void* dst_ptr, int16x32_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vstore_gsm_float32x16(_group_shared_ptr_  void* dst_ptr, float32x16_t src_data) {
    return __builtin_xpu2_vstore_mask16_mr1(src_data, dst_ptr, 0);
}

static __device__ inline void vstore_gsm_float32x16_mz(_group_shared_ptr_  void* dst_ptr, float32x16_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mask16_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_gsm_float32x16_mh(_group_shared_ptr_  void* dst_ptr, float32x16_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mask16_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vstore_gsm_int32x16(_group_shared_ptr_  void* dst_ptr, int32x16_t src_data) {
    return __builtin_xpu2_vstore_mask16_mr1(src_data, dst_ptr, 0);
}

static __device__ inline void vstore_gsm_int32x16_mz(_group_shared_ptr_  void* dst_ptr, int32x16_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mask16_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_gsm_int32x16_mh(_group_shared_ptr_  void* dst_ptr, int32x16_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mask16_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vstore_gsm_uint32x16(_group_shared_ptr_  void* dst_ptr, uint32x16_t src_data) {
    return __builtin_xpu2_vstore_mask16_mr1(src_data, dst_ptr, 0);
}

static __device__ inline void vstore_gsm_uint32x16_mz(_group_shared_ptr_  void* dst_ptr, uint32x16_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mask16_mz(src_data, mask, dst_ptr, 0);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vstore_gsm_uint32x16_mh(_group_shared_ptr_  void* dst_ptr, uint32x16_t src_data, int mask = -1) {
    return __builtin_xpu2_vstore_mask16_mh(src_data, mask, dst_ptr, 0);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t vgather_sm_bfloat16x32(_shared_ptr_  const void* src_ptr, int16x32_t offset) {
    return __builtin_xpu2_vgathers_mr1(src_ptr, offset);
}

static __device__ inline bfloat16x32_t vgather_sm_bfloat16x32_mz(_shared_ptr_  const void* src_ptr, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vgathers_mz(mask, src_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vgather_sm_bfloat16x32_mh(_shared_ptr_  const void* src_ptr, int16x32_t offset, bfloat16x32_t dst_data, int mask = -1) {
    return __builtin_xpu2_vgathers_mh(mask, src_ptr, offset, dst_data);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int16x32_t vgather_sm_int16x32(_shared_ptr_  const void* src_ptr, int16x32_t offset) {
    return __builtin_xpu2_vgathers_mr1(src_ptr, offset);
}

static __device__ inline int16x32_t vgather_sm_int16x32_mz(_shared_ptr_  const void* src_ptr, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vgathers_mz(mask, src_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int16x32_t vgather_sm_int16x32_mh(_shared_ptr_  const void* src_ptr, int16x32_t offset, int16x32_t dst_data, int mask = -1) {
    return __builtin_xpu2_vgathers_mh(mask, src_ptr, offset, dst_data);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t vgather_sm_float32x16(_shared_ptr_  const void* src_ptr, int32x16_t offset) {
    return __builtin_xpu2_vgathers_mask16_mr1(src_ptr, offset);
}

static __device__ inline float32x16_t vgather_sm_float32x16_mz(_shared_ptr_  const void* src_ptr, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vgathers_mask16_mz(mask, src_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vgather_sm_float32x16_mh(_shared_ptr_  const void* src_ptr, int32x16_t offset, float32x16_t dst_data, int mask = -1) {
    return __builtin_xpu2_vgathers_mask16_mh(mask, src_ptr, offset, dst_data);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vgather_sm_int32x16(_shared_ptr_  const void* src_ptr, int32x16_t offset) {
    return __builtin_xpu2_vgathers_mask16_mr1(src_ptr, offset);
}

static __device__ inline int32x16_t vgather_sm_int32x16_mz(_shared_ptr_  const void* src_ptr, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vgathers_mask16_mz(mask, src_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vgather_sm_int32x16_mh(_shared_ptr_  const void* src_ptr, int32x16_t offset, int32x16_t dst_data, int mask = -1) {
    return __builtin_xpu2_vgathers_mask16_mh(mask, src_ptr, offset, dst_data);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vgather_sm_uint32x16(_shared_ptr_  const void* src_ptr, int32x16_t offset) {
    return __builtin_xpu2_vgathers_mask16_mr1(src_ptr, offset);
}

static __device__ inline uint32x16_t vgather_sm_uint32x16_mz(_shared_ptr_  const void* src_ptr, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vgathers_mask16_mz(mask, src_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vgather_sm_uint32x16_mh(_shared_ptr_  const void* src_ptr, int32x16_t offset, uint32x16_t dst_data, int mask = -1) {
    return __builtin_xpu2_vgathers_mask16_mh(mask, src_ptr, offset, dst_data);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline bfloat16x32_t vgather_lm_bfloat16x32( const void* src_ptr, int16x32_t offset) {
    return __builtin_xpu2_vgather_mr1(src_ptr, offset);
}

static __device__ inline bfloat16x32_t vgather_lm_bfloat16x32_mz( const void* src_ptr, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vgather_mz(mask, src_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vgather_lm_bfloat16x32_mh( const void* src_ptr, int16x32_t offset, bfloat16x32_t dst_data, int mask = -1) {
    return __builtin_xpu2_vgather_mh(mask, src_ptr, offset, dst_data);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int16x32_t vgather_lm_int16x32( const void* src_ptr, int16x32_t offset) {
    return __builtin_xpu2_vgather_mr1(src_ptr, offset);
}

static __device__ inline int16x32_t vgather_lm_int16x32_mz( const void* src_ptr, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vgather_mz(mask, src_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int16x32_t vgather_lm_int16x32_mh( const void* src_ptr, int16x32_t offset, int16x32_t dst_data, int mask = -1) {
    return __builtin_xpu2_vgather_mh(mask, src_ptr, offset, dst_data);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t vgather_lm_float32x16( const void* src_ptr, int32x16_t offset) {
    return __builtin_xpu2_vgather_mask16_mr1(src_ptr, offset);
}

static __device__ inline float32x16_t vgather_lm_float32x16_mz( const void* src_ptr, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vgather_mask16_mz(mask, src_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vgather_lm_float32x16_mh( const void* src_ptr, int32x16_t offset, float32x16_t dst_data, int mask = -1) {
    return __builtin_xpu2_vgather_mask16_mh(mask, src_ptr, offset, dst_data);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vgather_lm_int32x16( const void* src_ptr, int32x16_t offset) {
    return __builtin_xpu2_vgather_mask16_mr1(src_ptr, offset);
}

static __device__ inline int32x16_t vgather_lm_int32x16_mz( const void* src_ptr, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vgather_mask16_mz(mask, src_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vgather_lm_int32x16_mh( const void* src_ptr, int32x16_t offset, int32x16_t dst_data, int mask = -1) {
    return __builtin_xpu2_vgather_mask16_mh(mask, src_ptr, offset, dst_data);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vgather_lm_uint32x16( const void* src_ptr, int32x16_t offset) {
    return __builtin_xpu2_vgather_mask16_mr1(src_ptr, offset);
}

static __device__ inline uint32x16_t vgather_lm_uint32x16_mz( const void* src_ptr, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vgather_mask16_mz(mask, src_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vgather_lm_uint32x16_mh( const void* src_ptr, int32x16_t offset, uint32x16_t dst_data, int mask = -1) {
    return __builtin_xpu2_vgather_mask16_mh(mask, src_ptr, offset, dst_data);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline bfloat16x32_t vgather_gsm_bfloat16x32(_group_shared_ptr_  const void* src_ptr, int16x32_t offset) {
    return __builtin_xpu2_vgather_mr1(src_ptr, offset);
}

static __device__ inline bfloat16x32_t vgather_gsm_bfloat16x32_mz(_group_shared_ptr_  const void* src_ptr, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vgather_mz(mask, src_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vgather_gsm_bfloat16x32_mh(_group_shared_ptr_  const void* src_ptr, int16x32_t offset, bfloat16x32_t dst_data, int mask = -1) {
    return __builtin_xpu2_vgather_mh(mask, src_ptr, offset, dst_data);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int16x32_t vgather_gsm_int16x32(_group_shared_ptr_  const void* src_ptr, int16x32_t offset) {
    return __builtin_xpu2_vgather_mr1(src_ptr, offset);
}

static __device__ inline int16x32_t vgather_gsm_int16x32_mz(_group_shared_ptr_  const void* src_ptr, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vgather_mz(mask, src_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int16x32_t vgather_gsm_int16x32_mh(_group_shared_ptr_  const void* src_ptr, int16x32_t offset, int16x32_t dst_data, int mask = -1) {
    return __builtin_xpu2_vgather_mh(mask, src_ptr, offset, dst_data);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t vgather_gsm_float32x16(_group_shared_ptr_  const void* src_ptr, int32x16_t offset) {
    return __builtin_xpu2_vgather_mask16_mr1(src_ptr, offset);
}

static __device__ inline float32x16_t vgather_gsm_float32x16_mz(_group_shared_ptr_  const void* src_ptr, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vgather_mask16_mz(mask, src_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vgather_gsm_float32x16_mh(_group_shared_ptr_  const void* src_ptr, int32x16_t offset, float32x16_t dst_data, int mask = -1) {
    return __builtin_xpu2_vgather_mask16_mh(mask, src_ptr, offset, dst_data);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vgather_gsm_int32x16(_group_shared_ptr_  const void* src_ptr, int32x16_t offset) {
    return __builtin_xpu2_vgather_mask16_mr1(src_ptr, offset);
}

static __device__ inline int32x16_t vgather_gsm_int32x16_mz(_group_shared_ptr_  const void* src_ptr, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vgather_mask16_mz(mask, src_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vgather_gsm_int32x16_mh(_group_shared_ptr_  const void* src_ptr, int32x16_t offset, int32x16_t dst_data, int mask = -1) {
    return __builtin_xpu2_vgather_mask16_mh(mask, src_ptr, offset, dst_data);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vgather_gsm_uint32x16(_group_shared_ptr_  const void* src_ptr, int32x16_t offset) {
    return __builtin_xpu2_vgather_mask16_mr1(src_ptr, offset);
}

static __device__ inline uint32x16_t vgather_gsm_uint32x16_mz(_group_shared_ptr_  const void* src_ptr, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vgather_mask16_mz(mask, src_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vgather_gsm_uint32x16_mh(_group_shared_ptr_  const void* src_ptr, int32x16_t offset, uint32x16_t dst_data, int mask = -1) {
    return __builtin_xpu2_vgather_mask16_mh(mask, src_ptr, offset, dst_data);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline void vscatter_sm_bfloat16x32(_shared_ptr_  void* dst_ptr, bfloat16x32_t src_data, int16x32_t offset) {
    return __builtin_xpu2_vscatters_mr1(src_data,  dst_ptr, offset);
}

static __device__ inline void vscatter_sm_bfloat16x32_mz(_shared_ptr_  void* dst_ptr, bfloat16x32_t src_data, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vscatters_mz(src_data, mask,  dst_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vscatter_sm_bfloat16x32_mh(_shared_ptr_  void* dst_ptr, bfloat16x32_t src_data, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vscatters_mh(src_data, mask,  dst_ptr, offset);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vscatter_sm_int16x32(_shared_ptr_  void* dst_ptr, int16x32_t src_data, int16x32_t offset) {
    return __builtin_xpu2_vscatters_mr1(src_data,  dst_ptr, offset);
}

static __device__ inline void vscatter_sm_int16x32_mz(_shared_ptr_  void* dst_ptr, int16x32_t src_data, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vscatters_mz(src_data, mask,  dst_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vscatter_sm_int16x32_mh(_shared_ptr_  void* dst_ptr, int16x32_t src_data, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vscatters_mh(src_data, mask,  dst_ptr, offset);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vscatter_sm_float32x16(_shared_ptr_  void* dst_ptr, float32x16_t src_data, int32x16_t offset) {
    return __builtin_xpu2_vscatters_mask16_mr1(src_data,  dst_ptr, offset);
}

static __device__ inline void vscatter_sm_float32x16_mz(_shared_ptr_  void* dst_ptr, float32x16_t src_data, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vscatters_mask16_mz(src_data, mask,  dst_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vscatter_sm_float32x16_mh(_shared_ptr_  void* dst_ptr, float32x16_t src_data, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vscatters_mask16_mh(src_data, mask,  dst_ptr, offset);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vscatter_sm_int32x16(_shared_ptr_  void* dst_ptr, int32x16_t src_data, int32x16_t offset) {
    return __builtin_xpu2_vscatters_mask16_mr1(src_data,  dst_ptr, offset);
}

static __device__ inline void vscatter_sm_int32x16_mz(_shared_ptr_  void* dst_ptr, int32x16_t src_data, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vscatters_mask16_mz(src_data, mask,  dst_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vscatter_sm_int32x16_mh(_shared_ptr_  void* dst_ptr, int32x16_t src_data, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vscatters_mask16_mh(src_data, mask,  dst_ptr, offset);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vscatter_sm_uint32x16(_shared_ptr_  void* dst_ptr, uint32x16_t src_data, int32x16_t offset) {
    return __builtin_xpu2_vscatters_mask16_mr1(src_data,  dst_ptr, offset);
}

static __device__ inline void vscatter_sm_uint32x16_mz(_shared_ptr_  void* dst_ptr, uint32x16_t src_data, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vscatters_mask16_mz(src_data, mask,  dst_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vscatter_sm_uint32x16_mh(_shared_ptr_  void* dst_ptr, uint32x16_t src_data, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vscatters_mask16_mh(src_data, mask,  dst_ptr, offset);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vscatter_lm_bfloat16x32( void* dst_ptr, bfloat16x32_t src_data, int16x32_t offset) {
    return __builtin_xpu2_vscatter_mr1(src_data,  dst_ptr, offset);
}

static __device__ inline void vscatter_lm_bfloat16x32_mz( void* dst_ptr, bfloat16x32_t src_data, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mz(src_data, mask,  dst_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vscatter_lm_bfloat16x32_mh( void* dst_ptr, bfloat16x32_t src_data, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mh(src_data, mask,  dst_ptr, offset);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vscatter_lm_int16x32( void* dst_ptr, int16x32_t src_data, int16x32_t offset) {
    return __builtin_xpu2_vscatter_mr1(src_data,  dst_ptr, offset);
}

static __device__ inline void vscatter_lm_int16x32_mz( void* dst_ptr, int16x32_t src_data, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mz(src_data, mask,  dst_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vscatter_lm_int16x32_mh( void* dst_ptr, int16x32_t src_data, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mh(src_data, mask,  dst_ptr, offset);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vscatter_lm_float32x16( void* dst_ptr, float32x16_t src_data, int32x16_t offset) {
    return __builtin_xpu2_vscatter_mask16_mr1(src_data,  dst_ptr, offset);
}

static __device__ inline void vscatter_lm_float32x16_mz( void* dst_ptr, float32x16_t src_data, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mask16_mz(src_data, mask,  dst_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vscatter_lm_float32x16_mh( void* dst_ptr, float32x16_t src_data, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mask16_mh(src_data, mask,  dst_ptr, offset);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vscatter_lm_int32x16( void* dst_ptr, int32x16_t src_data, int32x16_t offset) {
    return __builtin_xpu2_vscatter_mask16_mr1(src_data,  dst_ptr, offset);
}

static __device__ inline void vscatter_lm_int32x16_mz( void* dst_ptr, int32x16_t src_data, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mask16_mz(src_data, mask,  dst_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vscatter_lm_int32x16_mh( void* dst_ptr, int32x16_t src_data, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mask16_mh(src_data, mask,  dst_ptr, offset);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vscatter_lm_uint32x16( void* dst_ptr, uint32x16_t src_data, int32x16_t offset) {
    return __builtin_xpu2_vscatter_mask16_mr1(src_data,  dst_ptr, offset);
}

static __device__ inline void vscatter_lm_uint32x16_mz( void* dst_ptr, uint32x16_t src_data, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mask16_mz(src_data, mask,  dst_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vscatter_lm_uint32x16_mh( void* dst_ptr, uint32x16_t src_data, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mask16_mh(src_data, mask,  dst_ptr, offset);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vscatter_gsm_bfloat16x32(_group_shared_ptr_  void* dst_ptr, bfloat16x32_t src_data, int16x32_t offset) {
    return __builtin_xpu2_vscatter_mr1(src_data,  dst_ptr, offset);
}

static __device__ inline void vscatter_gsm_bfloat16x32_mz(_group_shared_ptr_  void* dst_ptr, bfloat16x32_t src_data, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mz(src_data, mask,  dst_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vscatter_gsm_bfloat16x32_mh(_group_shared_ptr_  void* dst_ptr, bfloat16x32_t src_data, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mh(src_data, mask,  dst_ptr, offset);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vscatter_gsm_int16x32(_group_shared_ptr_  void* dst_ptr, int16x32_t src_data, int16x32_t offset) {
    return __builtin_xpu2_vscatter_mr1(src_data,  dst_ptr, offset);
}

static __device__ inline void vscatter_gsm_int16x32_mz(_group_shared_ptr_  void* dst_ptr, int16x32_t src_data, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mz(src_data, mask,  dst_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vscatter_gsm_int16x32_mh(_group_shared_ptr_  void* dst_ptr, int16x32_t src_data, int16x32_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mh(src_data, mask,  dst_ptr, offset);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vscatter_gsm_float32x16(_group_shared_ptr_  void* dst_ptr, float32x16_t src_data, int32x16_t offset) {
    return __builtin_xpu2_vscatter_mask16_mr1(src_data,  dst_ptr, offset);
}

static __device__ inline void vscatter_gsm_float32x16_mz(_group_shared_ptr_  void* dst_ptr, float32x16_t src_data, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mask16_mz(src_data, mask,  dst_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vscatter_gsm_float32x16_mh(_group_shared_ptr_  void* dst_ptr, float32x16_t src_data, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mask16_mh(src_data, mask,  dst_ptr, offset);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vscatter_gsm_int32x16(_group_shared_ptr_  void* dst_ptr, int32x16_t src_data, int32x16_t offset) {
    return __builtin_xpu2_vscatter_mask16_mr1(src_data,  dst_ptr, offset);
}

static __device__ inline void vscatter_gsm_int32x16_mz(_group_shared_ptr_  void* dst_ptr, int32x16_t src_data, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mask16_mz(src_data, mask,  dst_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vscatter_gsm_int32x16_mh(_group_shared_ptr_  void* dst_ptr, int32x16_t src_data, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mask16_mh(src_data, mask,  dst_ptr, offset);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline void vscatter_gsm_uint32x16(_group_shared_ptr_  void* dst_ptr, uint32x16_t src_data, int32x16_t offset) {
    return __builtin_xpu2_vscatter_mask16_mr1(src_data,  dst_ptr, offset);
}

static __device__ inline void vscatter_gsm_uint32x16_mz(_group_shared_ptr_  void* dst_ptr, uint32x16_t src_data, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mask16_mz(src_data, mask,  dst_ptr, offset);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline void vscatter_gsm_uint32x16_mh(_group_shared_ptr_  void* dst_ptr, uint32x16_t src_data, int32x16_t offset, int mask = -1) {
    return __builtin_xpu2_vscatter_mask16_mh(src_data, mask,  dst_ptr, offset);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t vvmul_bfloat16x32(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvmul_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t vvmul_bfloat16x32_rz(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvmul_bf_mr1_rz(a, b);
}

static __device__ inline bfloat16x32_t vvmul_bfloat16x32_ru(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvmul_bf_mr1_ru(a, b);
}

static __device__ inline bfloat16x32_t vvmul_bfloat16x32_rd(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvmul_bf_mr1_rd(a, b);
}

static __device__ inline bfloat16x32_t vvmul_bfloat16x32_mz(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvmul_bf_mz_rn(mask, a, b);
}

static __device__ inline bfloat16x32_t vvmul_bfloat16x32_mz_rz(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvmul_bf_mz_rz(mask, a, b);
}

static __device__ inline bfloat16x32_t vvmul_bfloat16x32_mz_ru(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvmul_bf_mz_ru(mask, a, b);
}

static __device__ inline bfloat16x32_t vvmul_bfloat16x32_mz_rd(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvmul_bf_mz_rd(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvmul_bfloat16x32_mh(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvmul_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvmul_bfloat16x32_mh_rz(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvmul_bf_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvmul_bfloat16x32_mh_ru(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvmul_bf_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvmul_bfloat16x32_mh_rd(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvmul_bf_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t vvmul_float32x16(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvmul_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t vvmul_float32x16_rz(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvmul_f_mr1_rz(a, b);
}

static __device__ inline float32x16_t vvmul_float32x16_ru(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvmul_f_mr1_ru(a, b);
}

static __device__ inline float32x16_t vvmul_float32x16_rd(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvmul_f_mr1_rd(a, b);
}

static __device__ inline float32x16_t vvmul_float32x16_mz(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvmul_f_mz_rn(mask, a, b);
}

static __device__ inline float32x16_t vvmul_float32x16_mz_rz(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvmul_f_mz_rz(mask, a, b);
}

static __device__ inline float32x16_t vvmul_float32x16_mz_ru(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvmul_f_mz_ru(mask, a, b);
}

static __device__ inline float32x16_t vvmul_float32x16_mz_rd(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvmul_f_mz_rd(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvmul_float32x16_mh(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmul_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvmul_float32x16_mh_rz(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmul_f_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvmul_float32x16_mh_ru(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmul_f_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvmul_float32x16_mh_rd(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmul_f_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vvmul_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vvmul_s_mr1(a, b);
}

static __device__ inline int32x16_t vvmul_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvmul_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vvmul_int32x16_mh(int32x16_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmul_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vvmul_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vvmul_u_mr1(a, b);
}

static __device__ inline uint32x16_t vvmul_uint32x16_mz(uint32x16_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvmul_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vvmul_uint32x16_mh(uint32x16_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmul_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t vvadd_bfloat16x32(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvadd_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t vvadd_bfloat16x32_rz(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvadd_bf_mr1_rz(a, b);
}

static __device__ inline bfloat16x32_t vvadd_bfloat16x32_ru(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvadd_bf_mr1_ru(a, b);
}

static __device__ inline bfloat16x32_t vvadd_bfloat16x32_rd(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvadd_bf_mr1_rd(a, b);
}

static __device__ inline bfloat16x32_t vvadd_bfloat16x32_mz(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvadd_bf_mz_rn(mask, a, b);
}

static __device__ inline bfloat16x32_t vvadd_bfloat16x32_mz_rz(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvadd_bf_mz_rz(mask, a, b);
}

static __device__ inline bfloat16x32_t vvadd_bfloat16x32_mz_ru(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvadd_bf_mz_ru(mask, a, b);
}

static __device__ inline bfloat16x32_t vvadd_bfloat16x32_mz_rd(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvadd_bf_mz_rd(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvadd_bfloat16x32_mh(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvadd_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvadd_bfloat16x32_mh_rz(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvadd_bf_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvadd_bfloat16x32_mh_ru(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvadd_bf_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvadd_bfloat16x32_mh_rd(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvadd_bf_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t vvadd_float32x16(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvadd_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t vvadd_float32x16_rz(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvadd_f_mr1_rz(a, b);
}

static __device__ inline float32x16_t vvadd_float32x16_ru(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvadd_f_mr1_ru(a, b);
}

static __device__ inline float32x16_t vvadd_float32x16_rd(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvadd_f_mr1_rd(a, b);
}

static __device__ inline float32x16_t vvadd_float32x16_mz(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvadd_f_mz_rn(mask, a, b);
}

static __device__ inline float32x16_t vvadd_float32x16_mz_rz(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvadd_f_mz_rz(mask, a, b);
}

static __device__ inline float32x16_t vvadd_float32x16_mz_ru(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvadd_f_mz_ru(mask, a, b);
}

static __device__ inline float32x16_t vvadd_float32x16_mz_rd(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvadd_f_mz_rd(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvadd_float32x16_mh(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvadd_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvadd_float32x16_mh_rz(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvadd_f_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvadd_float32x16_mh_ru(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvadd_f_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvadd_float32x16_mh_rd(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvadd_f_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vvadd_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vvadd_s_mr1(a, b);
}

static __device__ inline int32x16_t vvadd_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvadd_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vvadd_int32x16_mh(int32x16_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvadd_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vvadd_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vvadd_u_mr1(a, b);
}

static __device__ inline uint32x16_t vvadd_uint32x16_mz(uint32x16_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvadd_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vvadd_uint32x16_mh(uint32x16_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvadd_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t vvsub_bfloat16x32(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvsub_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t vvsub_bfloat16x32_rz(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvsub_bf_mr1_rz(a, b);
}

static __device__ inline bfloat16x32_t vvsub_bfloat16x32_ru(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvsub_bf_mr1_ru(a, b);
}

static __device__ inline bfloat16x32_t vvsub_bfloat16x32_rd(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvsub_bf_mr1_rd(a, b);
}

static __device__ inline bfloat16x32_t vvsub_bfloat16x32_mz(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvsub_bf_mz_rn(mask, a, b);
}

static __device__ inline bfloat16x32_t vvsub_bfloat16x32_mz_rz(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvsub_bf_mz_rz(mask, a, b);
}

static __device__ inline bfloat16x32_t vvsub_bfloat16x32_mz_ru(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvsub_bf_mz_ru(mask, a, b);
}

static __device__ inline bfloat16x32_t vvsub_bfloat16x32_mz_rd(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvsub_bf_mz_rd(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvsub_bfloat16x32_mh(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvsub_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvsub_bfloat16x32_mh_rz(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvsub_bf_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvsub_bfloat16x32_mh_ru(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvsub_bf_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvsub_bfloat16x32_mh_rd(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvsub_bf_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t vvsub_float32x16(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvsub_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t vvsub_float32x16_rz(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvsub_f_mr1_rz(a, b);
}

static __device__ inline float32x16_t vvsub_float32x16_ru(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvsub_f_mr1_ru(a, b);
}

static __device__ inline float32x16_t vvsub_float32x16_rd(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvsub_f_mr1_rd(a, b);
}

static __device__ inline float32x16_t vvsub_float32x16_mz(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvsub_f_mz_rn(mask, a, b);
}

static __device__ inline float32x16_t vvsub_float32x16_mz_rz(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvsub_f_mz_rz(mask, a, b);
}

static __device__ inline float32x16_t vvsub_float32x16_mz_ru(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvsub_f_mz_ru(mask, a, b);
}

static __device__ inline float32x16_t vvsub_float32x16_mz_rd(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvsub_f_mz_rd(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvsub_float32x16_mh(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvsub_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvsub_float32x16_mh_rz(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvsub_f_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvsub_float32x16_mh_ru(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvsub_f_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvsub_float32x16_mh_rd(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvsub_f_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vvsub_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vvsub_s_mr1(a, b);
}

static __device__ inline int32x16_t vvsub_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvsub_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vvsub_int32x16_mh(int32x16_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvsub_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vvsub_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vvsub_u_mr1(a, b);
}

static __device__ inline uint32x16_t vvsub_uint32x16_mz(uint32x16_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvsub_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vvsub_uint32x16_mh(uint32x16_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvsub_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t vvmin_bfloat16x32(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvmin_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t vvmin_bfloat16x32_mz(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvmin_bf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvmin_bfloat16x32_mh(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvmin_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t vvmin_float32x16(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvmin_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t vvmin_float32x16_mz(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvmin_f_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvmin_float32x16_mh(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmin_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vvmin_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vvmin_s_mr1(a, b);
}

static __device__ inline int32x16_t vvmin_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvmin_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vvmin_int32x16_mh(int32x16_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmin_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vvmin_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vvmin_u_mr1(a, b);
}

static __device__ inline uint32x16_t vvmin_uint32x16_mz(uint32x16_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvmin_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vvmin_uint32x16_mh(uint32x16_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmin_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t vvmax_bfloat16x32(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvmax_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t vvmax_bfloat16x32_mz(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvmax_bf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvmax_bfloat16x32_mh(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvmax_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t vvmax_float32x16(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvmax_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t vvmax_float32x16_mz(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvmax_f_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvmax_float32x16_mh(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmax_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vvmax_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vvmax_s_mr1(a, b);
}

static __device__ inline int32x16_t vvmax_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvmax_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vvmax_int32x16_mh(int32x16_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmax_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vvmax_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vvmax_u_mr1(a, b);
}

static __device__ inline uint32x16_t vvmax_uint32x16_mz(uint32x16_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvmax_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vvmax_uint32x16_mh(uint32x16_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmax_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t vvand_bfloat16x32(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvand_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t vvand_bfloat16x32_mz(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvand_bf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvand_bfloat16x32_mh(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvand_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t vvand_float32x16(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvand_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t vvand_float32x16_mz(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvand_f_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvand_float32x16_mh(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvand_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vvand_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vvand_s_mr1(a, b);
}

static __device__ inline int32x16_t vvand_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvand_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vvand_int32x16_mh(int32x16_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvand_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vvand_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vvand_u_mr1(a, b);
}

static __device__ inline uint32x16_t vvand_uint32x16_mz(uint32x16_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvand_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vvand_uint32x16_mh(uint32x16_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvand_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t vvor_bfloat16x32(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvor_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t vvor_bfloat16x32_mz(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvor_bf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvor_bfloat16x32_mh(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvor_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t vvor_float32x16(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvor_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t vvor_float32x16_mz(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvor_f_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvor_float32x16_mh(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvor_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vvor_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vvor_s_mr1(a, b);
}

static __device__ inline int32x16_t vvor_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvor_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vvor_int32x16_mh(int32x16_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvor_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vvor_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vvor_u_mr1(a, b);
}

static __device__ inline uint32x16_t vvor_uint32x16_mz(uint32x16_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvor_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vvor_uint32x16_mh(uint32x16_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvor_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t vvnor_bfloat16x32(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvnor_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t vvnor_bfloat16x32_mz(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvnor_bf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvnor_bfloat16x32_mh(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvnor_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t vvnor_float32x16(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvnor_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t vvnor_float32x16_mz(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvnor_f_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvnor_float32x16_mh(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvnor_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vvnor_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vvnor_s_mr1(a, b);
}

static __device__ inline int32x16_t vvnor_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvnor_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vvnor_int32x16_mh(int32x16_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvnor_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vvnor_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vvnor_u_mr1(a, b);
}

static __device__ inline uint32x16_t vvnor_uint32x16_mz(uint32x16_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvnor_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vvnor_uint32x16_mh(uint32x16_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvnor_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t vvxor_bfloat16x32(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvxor_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t vvxor_bfloat16x32_mz(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvxor_bf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvxor_bfloat16x32_mh(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvxor_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t vvxor_float32x16(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvxor_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t vvxor_float32x16_mz(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvxor_f_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvxor_float32x16_mh(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvxor_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vvxor_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vvxor_s_mr1(a, b);
}

static __device__ inline int32x16_t vvxor_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvxor_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vvxor_int32x16_mh(int32x16_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvxor_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vvxor_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vvxor_u_mr1(a, b);
}

static __device__ inline uint32x16_t vvxor_uint32x16_mz(uint32x16_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvxor_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vvxor_uint32x16_mh(uint32x16_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvxor_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t vvxnor_bfloat16x32(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvxnor_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t vvxnor_bfloat16x32_mz(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvxnor_bf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvxnor_bfloat16x32_mh(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvxnor_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t vvxnor_float32x16(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvxnor_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t vvxnor_float32x16_mz(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvxnor_f_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvxnor_float32x16_mh(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvxnor_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vvxnor_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vvxnor_s_mr1(a, b);
}

static __device__ inline int32x16_t vvxnor_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvxnor_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vvxnor_int32x16_mh(int32x16_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvxnor_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vvxnor_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vvxnor_u_mr1(a, b);
}

static __device__ inline uint32x16_t vvxnor_uint32x16_mz(uint32x16_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvxnor_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vvxnor_uint32x16_mh(uint32x16_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvxnor_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t vvsetlt_bfloat16x32(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vsetlt_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t vvsetlt_bfloat16x32_mz(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vsetlt_bf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvsetlt_bfloat16x32_mh(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vsetlt_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t vvsetlt_float32x16(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vsetlt_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t vvsetlt_float32x16_mz(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vsetlt_f_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvsetlt_float32x16_mh(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vsetlt_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vvsetlt_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vsetlt_s_mr1(a, b);
}

static __device__ inline int32x16_t vvsetlt_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vsetlt_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vvsetlt_int32x16_mh(int32x16_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_vsetlt_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vvsetlt_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vsetlt_u_mr1(a, b);
}

static __device__ inline uint32x16_t vvsetlt_uint32x16_mz(uint32x16_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_vsetlt_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vvsetlt_uint32x16_mh(uint32x16_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_vsetlt_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t vvsetgt_bfloat16x32(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vsetgt_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t vvsetgt_bfloat16x32_mz(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vsetgt_bf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvsetgt_bfloat16x32_mh(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vsetgt_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t vvsetgt_float32x16(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vsetgt_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t vvsetgt_float32x16_mz(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vsetgt_f_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvsetgt_float32x16_mh(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vsetgt_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vvsetgt_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vsetgt_s_mr1(a, b);
}

static __device__ inline int32x16_t vvsetgt_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vsetgt_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vvsetgt_int32x16_mh(int32x16_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_vsetgt_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vvsetgt_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vsetgt_u_mr1(a, b);
}

static __device__ inline uint32x16_t vvsetgt_uint32x16_mz(uint32x16_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_vsetgt_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vvsetgt_uint32x16_mh(uint32x16_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_vsetgt_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t svmul_bfloat16x32(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svmul_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t svmul_bfloat16x32_rz(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svmul_bf_mr1_rz(a, b);
}

static __device__ inline bfloat16x32_t svmul_bfloat16x32_ru(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svmul_bf_mr1_ru(a, b);
}

static __device__ inline bfloat16x32_t svmul_bfloat16x32_rd(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svmul_bf_mr1_rd(a, b);
}

static __device__ inline bfloat16x32_t svmul_bfloat16x32_mz(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svmul_bf_mz_rn(mask, a, b);
}

static __device__ inline bfloat16x32_t svmul_bfloat16x32_mz_rz(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svmul_bf_mz_rz(mask, a, b);
}

static __device__ inline bfloat16x32_t svmul_bfloat16x32_mz_ru(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svmul_bf_mz_ru(mask, a, b);
}

static __device__ inline bfloat16x32_t svmul_bfloat16x32_mz_rd(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svmul_bf_mz_rd(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svmul_bfloat16x32_mh(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_svmul_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svmul_bfloat16x32_mh_rz(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_svmul_bf_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svmul_bfloat16x32_mh_ru(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_svmul_bf_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svmul_bfloat16x32_mh_rd(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_svmul_bf_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t svmul_float32x16(float a, float32x16_t b) {
    return __builtin_xpu2_svmul_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t svmul_float32x16_rz(float a, float32x16_t b) {
    return __builtin_xpu2_svmul_f_mr1_rz(a, b);
}

static __device__ inline float32x16_t svmul_float32x16_ru(float a, float32x16_t b) {
    return __builtin_xpu2_svmul_f_mr1_ru(a, b);
}

static __device__ inline float32x16_t svmul_float32x16_rd(float a, float32x16_t b) {
    return __builtin_xpu2_svmul_f_mr1_rd(a, b);
}

static __device__ inline float32x16_t svmul_float32x16_mz(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svmul_f_mz_rn(mask, a, b);
}

static __device__ inline float32x16_t svmul_float32x16_mz_rz(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svmul_f_mz_rz(mask, a, b);
}

static __device__ inline float32x16_t svmul_float32x16_mz_ru(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svmul_f_mz_ru(mask, a, b);
}

static __device__ inline float32x16_t svmul_float32x16_mz_rd(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svmul_f_mz_rd(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svmul_float32x16_mh(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_svmul_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svmul_float32x16_mh_rz(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_svmul_f_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svmul_float32x16_mh_ru(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_svmul_f_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svmul_float32x16_mh_rd(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_svmul_f_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t svmul_int32x16(int32_t a, int32x16_t b) {
    return __builtin_xpu2_svmul_s_mr1(a, b);
}

static __device__ inline int32x16_t svmul_int32x16_mz(int32_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_svmul_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t svmul_int32x16_mh(int32_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_svmul_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t svmul_uint32x16(uint32_t a, uint32x16_t b) {
    return __builtin_xpu2_svmul_u_mr1(a, b);
}

static __device__ inline uint32x16_t svmul_uint32x16_mz(uint32_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_svmul_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t svmul_uint32x16_mh(uint32_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_svmul_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t svadd_bfloat16x32(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svadd_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t svadd_bfloat16x32_rz(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svadd_bf_mr1_rz(a, b);
}

static __device__ inline bfloat16x32_t svadd_bfloat16x32_ru(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svadd_bf_mr1_ru(a, b);
}

static __device__ inline bfloat16x32_t svadd_bfloat16x32_rd(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svadd_bf_mr1_rd(a, b);
}

static __device__ inline bfloat16x32_t svadd_bfloat16x32_mz(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svadd_bf_mz_rn(mask, a, b);
}

static __device__ inline bfloat16x32_t svadd_bfloat16x32_mz_rz(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svadd_bf_mz_rz(mask, a, b);
}

static __device__ inline bfloat16x32_t svadd_bfloat16x32_mz_ru(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svadd_bf_mz_ru(mask, a, b);
}

static __device__ inline bfloat16x32_t svadd_bfloat16x32_mz_rd(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svadd_bf_mz_rd(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svadd_bfloat16x32_mh(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_svadd_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svadd_bfloat16x32_mh_rz(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_svadd_bf_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svadd_bfloat16x32_mh_ru(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_svadd_bf_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svadd_bfloat16x32_mh_rd(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_svadd_bf_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t svadd_float32x16(float a, float32x16_t b) {
    return __builtin_xpu2_svadd_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t svadd_float32x16_rz(float a, float32x16_t b) {
    return __builtin_xpu2_svadd_f_mr1_rz(a, b);
}

static __device__ inline float32x16_t svadd_float32x16_ru(float a, float32x16_t b) {
    return __builtin_xpu2_svadd_f_mr1_ru(a, b);
}

static __device__ inline float32x16_t svadd_float32x16_rd(float a, float32x16_t b) {
    return __builtin_xpu2_svadd_f_mr1_rd(a, b);
}

static __device__ inline float32x16_t svadd_float32x16_mz(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svadd_f_mz_rn(mask, a, b);
}

static __device__ inline float32x16_t svadd_float32x16_mz_rz(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svadd_f_mz_rz(mask, a, b);
}

static __device__ inline float32x16_t svadd_float32x16_mz_ru(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svadd_f_mz_ru(mask, a, b);
}

static __device__ inline float32x16_t svadd_float32x16_mz_rd(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svadd_f_mz_rd(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svadd_float32x16_mh(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_svadd_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svadd_float32x16_mh_rz(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_svadd_f_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svadd_float32x16_mh_ru(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_svadd_f_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svadd_float32x16_mh_rd(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_svadd_f_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t svadd_int32x16(int32_t a, int32x16_t b) {
    return __builtin_xpu2_svadd_s_mr1(a, b);
}

static __device__ inline int32x16_t svadd_int32x16_mz(int32_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_svadd_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t svadd_int32x16_mh(int32_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_svadd_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t svadd_uint32x16(uint32_t a, uint32x16_t b) {
    return __builtin_xpu2_svadd_u_mr1(a, b);
}

static __device__ inline uint32x16_t svadd_uint32x16_mz(uint32_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_svadd_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t svadd_uint32x16_mh(uint32_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_svadd_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t svsub_bfloat16x32(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svsub_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t svsub_bfloat16x32_rz(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svsub_bf_mr1_rz(a, b);
}

static __device__ inline bfloat16x32_t svsub_bfloat16x32_ru(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svsub_bf_mr1_ru(a, b);
}

static __device__ inline bfloat16x32_t svsub_bfloat16x32_rd(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svsub_bf_mr1_rd(a, b);
}

static __device__ inline bfloat16x32_t svsub_bfloat16x32_mz(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svsub_bf_mz_rn(mask, a, b);
}

static __device__ inline bfloat16x32_t svsub_bfloat16x32_mz_rz(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svsub_bf_mz_rz(mask, a, b);
}

static __device__ inline bfloat16x32_t svsub_bfloat16x32_mz_ru(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svsub_bf_mz_ru(mask, a, b);
}

static __device__ inline bfloat16x32_t svsub_bfloat16x32_mz_rd(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svsub_bf_mz_rd(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svsub_bfloat16x32_mh(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_svsub_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svsub_bfloat16x32_mh_rz(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_svsub_bf_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svsub_bfloat16x32_mh_ru(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_svsub_bf_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svsub_bfloat16x32_mh_rd(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_svsub_bf_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t svsub_float32x16(float a, float32x16_t b) {
    return __builtin_xpu2_svsub_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t svsub_float32x16_rz(float a, float32x16_t b) {
    return __builtin_xpu2_svsub_f_mr1_rz(a, b);
}

static __device__ inline float32x16_t svsub_float32x16_ru(float a, float32x16_t b) {
    return __builtin_xpu2_svsub_f_mr1_ru(a, b);
}

static __device__ inline float32x16_t svsub_float32x16_rd(float a, float32x16_t b) {
    return __builtin_xpu2_svsub_f_mr1_rd(a, b);
}

static __device__ inline float32x16_t svsub_float32x16_mz(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svsub_f_mz_rn(mask, a, b);
}

static __device__ inline float32x16_t svsub_float32x16_mz_rz(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svsub_f_mz_rz(mask, a, b);
}

static __device__ inline float32x16_t svsub_float32x16_mz_ru(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svsub_f_mz_ru(mask, a, b);
}

static __device__ inline float32x16_t svsub_float32x16_mz_rd(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svsub_f_mz_rd(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svsub_float32x16_mh(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_svsub_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svsub_float32x16_mh_rz(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_svsub_f_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svsub_float32x16_mh_ru(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_svsub_f_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svsub_float32x16_mh_rd(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_svsub_f_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t svsub_int32x16(int32_t a, int32x16_t b) {
    return __builtin_xpu2_svsub_s_mr1(a, b);
}

static __device__ inline int32x16_t svsub_int32x16_mz(int32_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_svsub_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t svsub_int32x16_mh(int32_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_svsub_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t svsub_uint32x16(uint32_t a, uint32x16_t b) {
    return __builtin_xpu2_svsub_u_mr1(a, b);
}

static __device__ inline uint32x16_t svsub_uint32x16_mz(uint32_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_svsub_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t svsub_uint32x16_mh(uint32_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_svsub_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t svmin_bfloat16x32(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svmin_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t svmin_bfloat16x32_mz(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svmin_bf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svmin_bfloat16x32_mh(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_svmin_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t svmin_float32x16(float a, float32x16_t b) {
    return __builtin_xpu2_svmin_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t svmin_float32x16_mz(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svmin_f_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svmin_float32x16_mh(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_svmin_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t svmin_int32x16(int32_t a, int32x16_t b) {
    return __builtin_xpu2_svmin_s_mr1(a, b);
}

static __device__ inline int32x16_t svmin_int32x16_mz(int32_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_svmin_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t svmin_int32x16_mh(int32_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_svmin_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t svmin_uint32x16(uint32_t a, uint32x16_t b) {
    return __builtin_xpu2_svmin_u_mr1(a, b);
}

static __device__ inline uint32x16_t svmin_uint32x16_mz(uint32_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_svmin_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t svmin_uint32x16_mh(uint32_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_svmin_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t svmax_bfloat16x32(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svmax_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t svmax_bfloat16x32_mz(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svmax_bf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svmax_bfloat16x32_mh(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_svmax_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t svmax_float32x16(float a, float32x16_t b) {
    return __builtin_xpu2_svmax_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t svmax_float32x16_mz(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svmax_f_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svmax_float32x16_mh(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_svmax_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t svmax_int32x16(int32_t a, int32x16_t b) {
    return __builtin_xpu2_svmax_s_mr1(a, b);
}

static __device__ inline int32x16_t svmax_int32x16_mz(int32_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_svmax_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t svmax_int32x16_mh(int32_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_svmax_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t svmax_uint32x16(uint32_t a, uint32x16_t b) {
    return __builtin_xpu2_svmax_u_mr1(a, b);
}

static __device__ inline uint32x16_t svmax_uint32x16_mz(uint32_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_svmax_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t svmax_uint32x16_mh(uint32_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_svmax_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t svand_bfloat16x32(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svand_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t svand_bfloat16x32_mz(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svand_bf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svand_bfloat16x32_mh(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_svand_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t svand_float32x16(float a, float32x16_t b) {
    return __builtin_xpu2_svand_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t svand_float32x16_mz(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svand_f_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svand_float32x16_mh(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_svand_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t svand_int32x16(int32_t a, int32x16_t b) {
    return __builtin_xpu2_svand_s_mr1(a, b);
}

static __device__ inline int32x16_t svand_int32x16_mz(int32_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_svand_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t svand_int32x16_mh(int32_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_svand_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t svand_uint32x16(uint32_t a, uint32x16_t b) {
    return __builtin_xpu2_svand_u_mr1(a, b);
}

static __device__ inline uint32x16_t svand_uint32x16_mz(uint32_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_svand_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t svand_uint32x16_mh(uint32_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_svand_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t svor_bfloat16x32(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svor_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t svor_bfloat16x32_mz(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svor_bf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svor_bfloat16x32_mh(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_svor_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t svor_float32x16(float a, float32x16_t b) {
    return __builtin_xpu2_svor_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t svor_float32x16_mz(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svor_f_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svor_float32x16_mh(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_svor_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t svor_int32x16(int32_t a, int32x16_t b) {
    return __builtin_xpu2_svor_s_mr1(a, b);
}

static __device__ inline int32x16_t svor_int32x16_mz(int32_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_svor_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t svor_int32x16_mh(int32_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_svor_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t svor_uint32x16(uint32_t a, uint32x16_t b) {
    return __builtin_xpu2_svor_u_mr1(a, b);
}

static __device__ inline uint32x16_t svor_uint32x16_mz(uint32_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_svor_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t svor_uint32x16_mh(uint32_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_svor_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t svnor_bfloat16x32(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svnor_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t svnor_bfloat16x32_mz(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svnor_bf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svnor_bfloat16x32_mh(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_svnor_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t svnor_float32x16(float a, float32x16_t b) {
    return __builtin_xpu2_svnor_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t svnor_float32x16_mz(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svnor_f_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svnor_float32x16_mh(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_svnor_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t svnor_int32x16(int32_t a, int32x16_t b) {
    return __builtin_xpu2_svnor_s_mr1(a, b);
}

static __device__ inline int32x16_t svnor_int32x16_mz(int32_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_svnor_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t svnor_int32x16_mh(int32_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_svnor_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t svnor_uint32x16(uint32_t a, uint32x16_t b) {
    return __builtin_xpu2_svnor_u_mr1(a, b);
}

static __device__ inline uint32x16_t svnor_uint32x16_mz(uint32_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_svnor_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t svnor_uint32x16_mh(uint32_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_svnor_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t svxor_bfloat16x32(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svxor_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t svxor_bfloat16x32_mz(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svxor_bf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svxor_bfloat16x32_mh(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_svxor_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t svxor_float32x16(float a, float32x16_t b) {
    return __builtin_xpu2_svxor_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t svxor_float32x16_mz(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svxor_f_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svxor_float32x16_mh(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_svxor_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t svxor_int32x16(int32_t a, int32x16_t b) {
    return __builtin_xpu2_svxor_s_mr1(a, b);
}

static __device__ inline int32x16_t svxor_int32x16_mz(int32_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_svxor_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t svxor_int32x16_mh(int32_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_svxor_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t svxor_uint32x16(uint32_t a, uint32x16_t b) {
    return __builtin_xpu2_svxor_u_mr1(a, b);
}

static __device__ inline uint32x16_t svxor_uint32x16_mz(uint32_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_svxor_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t svxor_uint32x16_mh(uint32_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_svxor_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t svxnor_bfloat16x32(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svxnor_bf_mr1_rn(a, b);
}

static __device__ inline bfloat16x32_t svxnor_bfloat16x32_mz(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svxnor_bf_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svxnor_bfloat16x32_mh(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_svxnor_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t svxnor_float32x16(float a, float32x16_t b) {
    return __builtin_xpu2_svxnor_f_mr1_rn(a, b);
}

static __device__ inline float32x16_t svxnor_float32x16_mz(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svxnor_f_mz_rn(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svxnor_float32x16_mh(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_svxnor_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t svxnor_int32x16(int32_t a, int32x16_t b) {
    return __builtin_xpu2_svxnor_s_mr1(a, b);
}

static __device__ inline int32x16_t svxnor_int32x16_mz(int32_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_svxnor_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t svxnor_int32x16_mh(int32_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_svxnor_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t svxnor_uint32x16(uint32_t a, uint32x16_t b) {
    return __builtin_xpu2_svxnor_u_mr1(a, b);
}

static __device__ inline uint32x16_t svxnor_uint32x16_mz(uint32_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_svxnor_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t svxnor_uint32x16_mh(uint32_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_svxnor_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED



static __device__ inline bfloat16x32_t vvmerge_l_bfloat16x32(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vmerge_l_bf(a, b);
}

static __device__ inline float32x16_t vvmerge_l_float32x16(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vmerge_l_f(a, b);
}

static __device__ inline int32x16_t vvmerge_l_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vmerge_l_s(a, b);
}

static __device__ inline uint32x16_t vvmerge_l_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vmerge_l_u(a, b);
}

static __device__ inline bfloat16x32_t vvmerge_h_bfloat16x32(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vmerge_h_bf(a, b);
}

static __device__ inline float32x16_t vvmerge_h_float32x16(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vmerge_h_f(a, b);
}

static __device__ inline int32x16_t vvmerge_h_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vmerge_h_s(a, b);
}

static __device__ inline uint32x16_t vvmerge_h_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vmerge_h_u(a, b);
}

static __device__ inline int32x16_t vvsll_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vvsll_s_mr1(a, b);
}

static __device__ inline int32x16_t vvsll_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvsll_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vvsll_int32x16_mh(int32x16_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvsll_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vvsll_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vvsll_u_mr1(a, b);
}

static __device__ inline uint32x16_t vvsll_uint32x16_mz(uint32x16_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvsll_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vvsll_uint32x16_mh(uint32x16_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvsll_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vvsrl_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vvsrl_s_mr1(a, b);
}

static __device__ inline int32x16_t vvsrl_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvsrl_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vvsrl_int32x16_mh(int32x16_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvsrl_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vvsrl_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vvsrl_u_mr1(a, b);
}

static __device__ inline uint32x16_t vvsrl_uint32x16_mz(uint32x16_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvsrl_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vvsrl_uint32x16_mh(uint32x16_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvsrl_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t svsll_int32x16(int32_t a, int32x16_t b) {
    return __builtin_xpu2_svsll_s_mr1(a, b);
}

static __device__ inline int32x16_t svsll_int32x16_mz(int32_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_svsll_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t svsll_int32x16_mh(int32_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_svsll_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t svsll_uint32x16(uint32_t a, uint32x16_t b) {
    return __builtin_xpu2_svsll_u_mr1(a, b);
}

static __device__ inline uint32x16_t svsll_uint32x16_mz(uint32_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_svsll_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t svsll_uint32x16_mh(uint32_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_svsll_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t svsrl_int32x16(int32_t a, int32x16_t b) {
    return __builtin_xpu2_svsrl_s_mr1(a, b);
}

static __device__ inline int32x16_t svsrl_int32x16_mz(int32_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_svsrl_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t svsrl_int32x16_mh(int32_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_svsrl_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t svsrl_uint32x16(uint32_t a, uint32x16_t b) {
    return __builtin_xpu2_svsrl_u_mr1(a, b);
}

static __device__ inline uint32x16_t svsrl_uint32x16_mz(uint32_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_svsrl_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t svsrl_uint32x16_mh(uint32_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_svsrl_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline bfloat16x32_t vsllp_bfloat16x32(int a, bfloat16x32_t b) {
    return __builtin_xpu2_svsllp_bf(a, b);
}

static __device__ inline float32x16_t vsllp_float32x16(int a, float32x16_t b) {
    return __builtin_xpu2_svsllp_f(a, b);
}

static __device__ inline int32x16_t vsllp_int32x16(int a, int32x16_t b) {
    return __builtin_xpu2_svsllp_s(a, b);
}

static __device__ inline uint32x16_t vsllp_uint32x16(int a, uint32x16_t b) {
    return __builtin_xpu2_svsllp_u(a, b);
}

static __device__ inline bfloat16x32_t vsrlp_bfloat16x32(int a, bfloat16x32_t b) {
    return __builtin_xpu2_svsrlp_bf(a, b);
}

static __device__ inline float32x16_t vsrlp_float32x16(int a, float32x16_t b) {
    return __builtin_xpu2_svsrlp_f(a, b);
}

static __device__ inline int32x16_t vsrlp_int32x16(int a, int32x16_t b) {
    return __builtin_xpu2_svsrlp_s(a, b);
}

static __device__ inline uint32x16_t vsrlp_uint32x16(int a, uint32x16_t b) {
    return __builtin_xpu2_svsrlp_u(a, b);
}

static __device__ inline int32x16_t vvsra_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vvsra_s_mr1(a, b);
}

static __device__ inline int32x16_t vvsra_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvsra_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vvsra_int32x16_mh(int32x16_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvsra_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t svsra_int32x16(int32_t a, int32x16_t b) {
    return __builtin_xpu2_svsra_s_mr1(a, b);
}

static __device__ inline int32x16_t svsra_int32x16_mz(int32_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_svsra_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t svsra_int32x16_mh(int32_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_svsra_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vvmulh_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vvmulh_s_mr1(a, b);
}

static __device__ inline int32x16_t vvmulh_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvmulh_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vvmulh_int32x16_mh(int32x16_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmulh_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vvmulh_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vvmulh_u_mr1(a, b);
}

static __device__ inline uint32x16_t vvmulh_uint32x16_mz(uint32x16_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvmulh_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vvmulh_uint32x16_mh(uint32x16_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmulh_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t svmulh_int32x16(int32_t a, int32x16_t b) {
    return __builtin_xpu2_svmulh_s_mr1(a, b);
}

static __device__ inline int32x16_t svmulh_int32x16_mz(int32_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_svmulh_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t svmulh_int32x16_mh(int32_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_svmulh_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t svmulh_uint32x16(uint32_t a, uint32x16_t b) {
    return __builtin_xpu2_svmulh_u_mr1(a, b);
}

static __device__ inline uint32x16_t svmulh_uint32x16_mz(uint32_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_svmulh_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t svmulh_uint32x16_mh(uint32_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_svmulh_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline bfloat16x32_t vvmac_bfloat16x32(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c) {
    return __builtin_xpu2_vvmac_bf_mr1_rn(a, b, c);
}

static __device__ inline bfloat16x32_t vvmac_bfloat16x32_rz(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c) {
    return __builtin_xpu2_vvmac_bf_mr1_rz(a, b, c);
}

static __device__ inline bfloat16x32_t vvmac_bfloat16x32_ru(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c) {
    return __builtin_xpu2_vvmac_bf_mr1_ru(a, b, c);
}

static __device__ inline bfloat16x32_t vvmac_bfloat16x32_rd(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c) {
    return __builtin_xpu2_vvmac_bf_mr1_rd(a, b, c);
}

static __device__ inline bfloat16x32_t vvmac_bfloat16x32_mz(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_bf_mz_rn(mask, a, b, c);
}

static __device__ inline bfloat16x32_t vvmac_bfloat16x32_mz_rz(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_bf_mz_rz(mask, a, b, c);
}

static __device__ inline bfloat16x32_t vvmac_bfloat16x32_mz_ru(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_bf_mz_ru(mask, a, b, c);
}

static __device__ inline bfloat16x32_t vvmac_bfloat16x32_mz_rd(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_bf_mz_rd(mask, a, b, c);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvmac_bfloat16x32_mh(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_bf_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvmac_bfloat16x32_mh_rz(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_bf_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvmac_bfloat16x32_mh_ru(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_bf_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t vvmac_bfloat16x32_mh_rd(bfloat16x32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_bf_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t vvmac_float32x16(float32x16_t a, float32x16_t b, float32x16_t c) {
    return __builtin_xpu2_vvmac_f_mr1_rn(a, b, c);
}

static __device__ inline float32x16_t vvmac_float32x16_rz(float32x16_t a, float32x16_t b, float32x16_t c) {
    return __builtin_xpu2_vvmac_f_mr1_rz(a, b, c);
}

static __device__ inline float32x16_t vvmac_float32x16_ru(float32x16_t a, float32x16_t b, float32x16_t c) {
    return __builtin_xpu2_vvmac_f_mr1_ru(a, b, c);
}

static __device__ inline float32x16_t vvmac_float32x16_rd(float32x16_t a, float32x16_t b, float32x16_t c) {
    return __builtin_xpu2_vvmac_f_mr1_rd(a, b, c);
}

static __device__ inline float32x16_t vvmac_float32x16_mz(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_f_mz_rn(mask, a, b, c);
}

static __device__ inline float32x16_t vvmac_float32x16_mz_rz(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_f_mz_rz(mask, a, b, c);
}

static __device__ inline float32x16_t vvmac_float32x16_mz_ru(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_f_mz_ru(mask, a, b, c);
}

static __device__ inline float32x16_t vvmac_float32x16_mz_rd(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_f_mz_rd(mask, a, b, c);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvmac_float32x16_mh(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_f_mh_rn(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvmac_float32x16_mh_rz(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_f_mh_rz(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvmac_float32x16_mh_ru(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_f_mh_ru(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t vvmac_float32x16_mh_rd(float32x16_t a, float32x16_t b, float32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_f_mh_rd(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t vvmac_int32x16(int32x16_t a, int32x16_t b, int32x16_t c) {
    return __builtin_xpu2_vvmac_s_mr1(a, b, c);
}

static __device__ inline int32x16_t vvmac_int32x16_mz(int32x16_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_s_mz(mask, a, b, c);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t vvmac_int32x16_mh(int32x16_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t vvmac_uint32x16(uint32x16_t a, uint32x16_t b, uint32x16_t c) {
    return __builtin_xpu2_vvmac_u_mr1(a, b, c);
}

static __device__ inline uint32x16_t vvmac_uint32x16_mz(uint32x16_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_u_mz(mask, a, b, c);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t vvmac_uint32x16_mh(uint32x16_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    return __builtin_xpu2_vvmac_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline bfloat16x32_t svmac_bfloat16x32(int32_t a, bfloat16x32_t b, bfloat16x32_t c) {
    c = __builtin_xpu2_svmac_bf_mr1_rn(a, b, c);
    return c;
}

static __device__ inline bfloat16x32_t svmac_bfloat16x32_rz(int32_t a, bfloat16x32_t b, bfloat16x32_t c) {
    c = __builtin_xpu2_svmac_bf_mr1_rz(a, b, c);
    return c;
}

static __device__ inline bfloat16x32_t svmac_bfloat16x32_ru(int32_t a, bfloat16x32_t b, bfloat16x32_t c) {
    c = __builtin_xpu2_svmac_bf_mr1_ru(a, b, c);
    return c;
}

static __device__ inline bfloat16x32_t svmac_bfloat16x32_rd(int32_t a, bfloat16x32_t b, bfloat16x32_t c) {
    c = __builtin_xpu2_svmac_bf_mr1_rd(a, b, c);
    return c;
}

static __device__ inline bfloat16x32_t svmac_bfloat16x32_mz(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_bf_mz_rn(mask, a, b, c);
    return c;
}

static __device__ inline bfloat16x32_t svmac_bfloat16x32_mz_rz(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_bf_mz_rz(mask, a, b, c);
    return c;
}

static __device__ inline bfloat16x32_t svmac_bfloat16x32_mz_ru(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_bf_mz_ru(mask, a, b, c);
    return c;
}

static __device__ inline bfloat16x32_t svmac_bfloat16x32_mz_rd(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_bf_mz_rd(mask, a, b, c);
    return c;
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svmac_bfloat16x32_mh(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_bf_mh_rn(mask, a, b, c);
    return c;
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svmac_bfloat16x32_mh_rz(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_bf_mh_rz(mask, a, b, c);
    return c;
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svmac_bfloat16x32_mh_ru(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_bf_mh_ru(mask, a, b, c);
    return c;
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline bfloat16x32_t svmac_bfloat16x32_mh_rd(int32_t a, bfloat16x32_t b, bfloat16x32_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_bf_mh_rd(mask, a, b, c);
    return c;
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline float32x16_t svmac_float32x16(float a, float32x16_t b, float32x16_t c) {
    c = __builtin_xpu2_svmac_f_mr1_rn(a, b, c);
    return c;
}

static __device__ inline float32x16_t svmac_float32x16_rz(float a, float32x16_t b, float32x16_t c) {
    c = __builtin_xpu2_svmac_f_mr1_rz(a, b, c);
    return c;
}

static __device__ inline float32x16_t svmac_float32x16_ru(float a, float32x16_t b, float32x16_t c) {
    c = __builtin_xpu2_svmac_f_mr1_ru(a, b, c);
    return c;
}

static __device__ inline float32x16_t svmac_float32x16_rd(float a, float32x16_t b, float32x16_t c) {
    c = __builtin_xpu2_svmac_f_mr1_rd(a, b, c);
    return c;
}

static __device__ inline float32x16_t svmac_float32x16_mz(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_f_mz_rn(mask, a, b, c);
    return c;
}

static __device__ inline float32x16_t svmac_float32x16_mz_rz(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_f_mz_rz(mask, a, b, c);
    return c;
}

static __device__ inline float32x16_t svmac_float32x16_mz_ru(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_f_mz_ru(mask, a, b, c);
    return c;
}

static __device__ inline float32x16_t svmac_float32x16_mz_rd(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_f_mz_rd(mask, a, b, c);
    return c;
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svmac_float32x16_mh(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_f_mh_rn(mask, a, b, c);
    return c;
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svmac_float32x16_mh_rz(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_f_mh_rz(mask, a, b, c);
    return c;
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svmac_float32x16_mh_ru(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_f_mh_ru(mask, a, b, c);
    return c;
}
#endif // MASK_HOLD_UNSUPPORTED

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline float32x16_t svmac_float32x16_mh_rd(float a, float32x16_t b, float32x16_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_f_mh_rd(mask, a, b, c);
    return c;
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int32x16_t svmac_int32x16(int32_t a, int32x16_t b, int32x16_t c) {
    c = __builtin_xpu2_svmac_s_mr1(a, b, c);
    return c;
}

static __device__ inline int32x16_t svmac_int32x16_mz(int32_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_s_mz(mask, a, b, c);
    return c;
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int32x16_t svmac_int32x16_mh(int32_t a, int32x16_t b, int32x16_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_s_mh(mask, a, b, c);
    return c;
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline uint32x16_t svmac_uint32x16(uint32_t a, uint32x16_t b, uint32x16_t c) {
    c = __builtin_xpu2_svmac_u_mr1(a, b, c);
    return c;
}

static __device__ inline uint32x16_t svmac_uint32x16_mz(uint32_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_u_mz(mask, a, b, c);
    return c;
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline uint32x16_t svmac_uint32x16_mh(uint32_t a, uint32x16_t b, uint32x16_t c, int mask = -1) {
    c = __builtin_xpu2_svmac_u_mh(mask, a, b, c);
    return c;
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline int vvle_bfloat16x32(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvle_bf_mr1(a, b);
}

static __device__ inline int vvle_bfloat16x32_mz(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvle_bf_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vvle_bfloat16x32_mh(bfloat16x32_t a, bfloat16x32_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_vvle_bf_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int vvle_float32x16(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvle_f_mr1(a, b);
}

static __device__ inline int vvle_float32x16_mz(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvle_f_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vvle_float32x16_mh(float32x16_t a, float32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_vvle_f_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int vvle_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vvle_s_mr1(a, b);
}

static __device__ inline int vvle_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvle_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vvle_int32x16_mh(int32x16_t a, int32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_vvle_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int vvle_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vvle_u_mr1(a, b);
}

static __device__ inline int vvle_uint32x16_mz(uint32x16_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvle_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vvle_uint32x16_mh(uint32x16_t a, uint32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_vvle_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int vvlt_bfloat16x32(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvlt_bf_mr1(a, b);
}

static __device__ inline int vvlt_bfloat16x32_mz(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvlt_bf_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vvlt_bfloat16x32_mh(bfloat16x32_t a, bfloat16x32_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_vvlt_bf_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int vvlt_float32x16(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvlt_f_mr1(a, b);
}

static __device__ inline int vvlt_float32x16_mz(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvlt_f_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vvlt_float32x16_mh(float32x16_t a, float32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_vvlt_f_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int vvlt_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vvlt_s_mr1(a, b);
}

static __device__ inline int vvlt_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvlt_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vvlt_int32x16_mh(int32x16_t a, int32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_vvlt_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int vvlt_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vvlt_u_mr1(a, b);
}

static __device__ inline int vvlt_uint32x16_mz(uint32x16_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvlt_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vvlt_uint32x16_mh(uint32x16_t a, uint32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_vvlt_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int vveq_bfloat16x32(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vveq_bf_mr1(a, b);
}

static __device__ inline int vveq_bfloat16x32_mz(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vveq_bf_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vveq_bfloat16x32_mh(bfloat16x32_t a, bfloat16x32_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_vveq_bf_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int vveq_float32x16(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vveq_f_mr1(a, b);
}

static __device__ inline int vveq_float32x16_mz(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vveq_f_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vveq_float32x16_mh(float32x16_t a, float32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_vveq_f_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int vveq_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vveq_s_mr1(a, b);
}

static __device__ inline int vveq_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vveq_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vveq_int32x16_mh(int32x16_t a, int32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_vveq_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int vveq_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vveq_u_mr1(a, b);
}

static __device__ inline int vveq_uint32x16_mz(uint32x16_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_vveq_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vveq_uint32x16_mh(uint32x16_t a, uint32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_vveq_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int vvneq_bfloat16x32(bfloat16x32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vvneq_bf_mr1(a, b);
}

static __device__ inline int vvneq_bfloat16x32_mz(bfloat16x32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_vvneq_bf_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vvneq_bfloat16x32_mh(bfloat16x32_t a, bfloat16x32_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_vvneq_bf_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int vvneq_float32x16(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vvneq_f_mr1(a, b);
}

static __device__ inline int vvneq_float32x16_mz(float32x16_t a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvneq_f_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vvneq_float32x16_mh(float32x16_t a, float32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_vvneq_f_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int vvneq_int32x16(int32x16_t a, int32x16_t b) {
    return __builtin_xpu2_vvneq_s_mr1(a, b);
}

static __device__ inline int vvneq_int32x16_mz(int32x16_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvneq_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vvneq_int32x16_mh(int32x16_t a, int32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_vvneq_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int vvneq_uint32x16(uint32x16_t a, uint32x16_t b) {
    return __builtin_xpu2_vvneq_u_mr1(a, b);
}

static __device__ inline int vvneq_uint32x16_mz(uint32x16_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_vvneq_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int vvneq_uint32x16_mh(uint32x16_t a, uint32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_vvneq_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int svle_bfloat16x32(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svle_bf_mr1(a, b);
}

static __device__ inline int svle_bfloat16x32_mz(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svle_bf_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int svle_bfloat16x32_mh(int32_t a, bfloat16x32_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_svle_bf_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int svle_float32x16(float a, float32x16_t b) {
    return __builtin_xpu2_svle_f_mr1(a, b);
}

static __device__ inline int svle_float32x16_mz(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svle_f_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int svle_float32x16_mh(float a, float32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_svle_f_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int svle_int32x16(int32_t a, int32x16_t b) {
    return __builtin_xpu2_svle_s_mr1(a, b);
}

static __device__ inline int svle_int32x16_mz(int32_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_svle_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int svle_int32x16_mh(int32_t a, int32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_svle_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int svle_uint32x16(uint32_t a, uint32x16_t b) {
    return __builtin_xpu2_svle_u_mr1(a, b);
}

static __device__ inline int svle_uint32x16_mz(uint32_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_svle_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int svle_uint32x16_mh(uint32_t a, uint32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_svle_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int svlt_bfloat16x32(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svlt_bf_mr1(a, b);
}

static __device__ inline int svlt_bfloat16x32_mz(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svlt_bf_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int svlt_bfloat16x32_mh(int32_t a, bfloat16x32_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_svlt_bf_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int svlt_float32x16(float a, float32x16_t b) {
    return __builtin_xpu2_svlt_f_mr1(a, b);
}

static __device__ inline int svlt_float32x16_mz(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svlt_f_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int svlt_float32x16_mh(float a, float32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_svlt_f_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int svlt_int32x16(int32_t a, int32x16_t b) {
    return __builtin_xpu2_svlt_s_mr1(a, b);
}

static __device__ inline int svlt_int32x16_mz(int32_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_svlt_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int svlt_int32x16_mh(int32_t a, int32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_svlt_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int svlt_uint32x16(uint32_t a, uint32x16_t b) {
    return __builtin_xpu2_svlt_u_mr1(a, b);
}

static __device__ inline int svlt_uint32x16_mz(uint32_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_svlt_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int svlt_uint32x16_mh(uint32_t a, uint32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_svlt_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int sveq_bfloat16x32(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_sveq_bf_mr1(a, b);
}

static __device__ inline int sveq_bfloat16x32_mz(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_sveq_bf_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int sveq_bfloat16x32_mh(int32_t a, bfloat16x32_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_sveq_bf_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int sveq_float32x16(float a, float32x16_t b) {
    return __builtin_xpu2_sveq_f_mr1(a, b);
}

static __device__ inline int sveq_float32x16_mz(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_sveq_f_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int sveq_float32x16_mh(float a, float32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_sveq_f_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int sveq_int32x16(int32_t a, int32x16_t b) {
    return __builtin_xpu2_sveq_s_mr1(a, b);
}

static __device__ inline int sveq_int32x16_mz(int32_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_sveq_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int sveq_int32x16_mh(int32_t a, int32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_sveq_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int sveq_uint32x16(uint32_t a, uint32x16_t b) {
    return __builtin_xpu2_sveq_u_mr1(a, b);
}

static __device__ inline int sveq_uint32x16_mz(uint32_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_sveq_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int sveq_uint32x16_mh(uint32_t a, uint32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_sveq_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int svneq_bfloat16x32(int32_t a, bfloat16x32_t b) {
    return __builtin_xpu2_svneq_bf_mr1(a, b);
}

static __device__ inline int svneq_bfloat16x32_mz(int32_t a, bfloat16x32_t b, int mask = -1) {
    return __builtin_xpu2_svneq_bf_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int svneq_bfloat16x32_mh(int32_t a, bfloat16x32_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_svneq_bf_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int svneq_float32x16(float a, float32x16_t b) {
    return __builtin_xpu2_svneq_f_mr1(a, b);
}

static __device__ inline int svneq_float32x16_mz(float a, float32x16_t b, int mask = -1) {
    return __builtin_xpu2_svneq_f_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int svneq_float32x16_mh(float a, float32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_svneq_f_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int svneq_int32x16(int32_t a, int32x16_t b) {
    return __builtin_xpu2_svneq_s_mr1(a, b);
}

static __device__ inline int svneq_int32x16_mz(int32_t a, int32x16_t b, int mask = -1) {
    return __builtin_xpu2_svneq_s_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int svneq_int32x16_mh(int32_t a, int32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_svneq_s_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED

static __device__ inline int svneq_uint32x16(uint32_t a, uint32x16_t b) {
    return __builtin_xpu2_svneq_u_mr1(a, b);
}

static __device__ inline int svneq_uint32x16_mz(uint32_t a, uint32x16_t b, int mask = -1) {
    return __builtin_xpu2_svneq_u_mz(mask, a, b);
}

#ifndef MASK_HOLD_UNSUPPORTED
static __device__ inline int svneq_uint32x16_mh(uint32_t a, uint32x16_t b, int mask = -1, int c = -1) {
    return __builtin_xpu2_svneq_u_mh(mask, a, b, c);
}
#endif // MASK_HOLD_UNSUPPORTED


static __device__ inline bfloat16x32_t vshuffle2_bfloat16x32(bfloat16x32_t a) {
    return __builtin_xpu2_vshuffle2_bf(a);
}

static __device__ inline float32x16_t vshuffle2_float32x16(float32x16_t a) {
    return __builtin_xpu2_vshuffle2_f(a);
}

static __device__ inline int32x16_t vshuffle2_int32x16(int32x16_t a) {
    return __builtin_xpu2_vshuffle2_s(a);
}

static __device__ inline uint32x16_t vshuffle2_uint32x16(uint32x16_t a) {
    return __builtin_xpu2_vshuffle2_u(a);
}

static __device__ inline int32x16_t inc_int128int32x16(int32x16_t a) {
    return __builtin_xpu2_inc_int128(a);
}


static __device__ inline int32_t vextract_bfloat16x32(bfloat16x32_t a, int mask = 1) {
    return __builtin_xpu2_vextract_bf(mask, a);
}

static __device__ inline float vextract_float32x16(float32x16_t a, int mask = 1) {
    return __builtin_xpu2_vextract_f(mask, a);
}

static __device__ inline int32_t vextract_int32x16(int32x16_t a, int mask = 1) {
    return __builtin_xpu2_vextract_s(mask, a);
}

static __device__ inline uint32_t vextract_uint32x16(uint32x16_t a, int mask = 1) {
    return __builtin_xpu2_vextract_u(mask, a);
}

static __device__ inline int vpopcnt512(int32x16_t a) {
    return __builtin_xpu2_vpopcnt(a);
}


static __device__ inline bfloat16x32_t vfloat2bf16_l(float32x16_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vfloat2bf16_l_rn(a, b);
}

static __device__ inline bfloat16x32_t vfloat2bf16_l_rz(float32x16_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vfloat2bf16_l_rz(a, b);
}

static __device__ inline bfloat16x32_t vfloat2bf16_l_ru(float32x16_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vfloat2bf16_l_ru(a, b);
}

static __device__ inline bfloat16x32_t vfloat2bf16_l_rd(float32x16_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vfloat2bf16_l_rd(a, b);
}


static __device__ inline bfloat16x32_t vfloat2bf16_h(float32x16_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vfloat2bf16_h_rn(a, b);
}

static __device__ inline bfloat16x32_t vfloat2bf16_h_rz(float32x16_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vfloat2bf16_h_rz(a, b);
}

static __device__ inline bfloat16x32_t vfloat2bf16_h_ru(float32x16_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vfloat2bf16_h_ru(a, b);
}

static __device__ inline bfloat16x32_t vfloat2bf16_h_rd(float32x16_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vfloat2bf16_h_rd(a, b);
}


#if __xpu_subarch__ == 2
static __device__ inline bfloat16x32_t vfloat2bf16_lh(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vfloat2bf16_lh_rn(a, b);
}
#endif

#if __xpu_subarch__ == 2
static __device__ inline bfloat16x32_t vfloat2bf16_lh_rz(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vfloat2bf16_lh_rz(a, b);
}
#endif

#if __xpu_subarch__ == 2
static __device__ inline bfloat16x32_t vfloat2bf16_lh_ru(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vfloat2bf16_lh_ru(a, b);
}
#endif

#if __xpu_subarch__ == 2
static __device__ inline bfloat16x32_t vfloat2bf16_lh_rd(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vfloat2bf16_lh_rd(a, b);
}
#endif


static __device__ inline bfloat16x32_t vfloat2fp16_l(float32x16_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vfloat2fp16_l_rn(a, b);
}

static __device__ inline bfloat16x32_t vfloat2fp16_l_rz(float32x16_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vfloat2fp16_l_rz(a, b);
}

static __device__ inline bfloat16x32_t vfloat2fp16_l_ru(float32x16_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vfloat2fp16_l_ru(a, b);
}

static __device__ inline bfloat16x32_t vfloat2fp16_l_rd(float32x16_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vfloat2fp16_l_rd(a, b);
}


static __device__ inline bfloat16x32_t vfloat2fp16_h(float32x16_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vfloat2fp16_h_rn(a, b);
}

static __device__ inline bfloat16x32_t vfloat2fp16_h_rz(float32x16_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vfloat2fp16_h_rz(a, b);
}

static __device__ inline bfloat16x32_t vfloat2fp16_h_ru(float32x16_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vfloat2fp16_h_ru(a, b);
}

static __device__ inline bfloat16x32_t vfloat2fp16_h_rd(float32x16_t a, bfloat16x32_t b) {
    return __builtin_xpu2_vfloat2fp16_h_rd(a, b);
}


#if __xpu_subarch__ == 2
static __device__ inline bfloat16x32_t vfloat2fp16_lh(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vfloat2fp16_lh_rn(a, b);
}
#endif

#if __xpu_subarch__ == 2
static __device__ inline bfloat16x32_t vfloat2fp16_lh_rz(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vfloat2fp16_lh_rz(a, b);
}
#endif

#if __xpu_subarch__ == 2
static __device__ inline bfloat16x32_t vfloat2fp16_lh_ru(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vfloat2fp16_lh_ru(a, b);
}
#endif

#if __xpu_subarch__ == 2
static __device__ inline bfloat16x32_t vfloat2fp16_lh_rd(float32x16_t a, float32x16_t b) {
    return __builtin_xpu2_vfloat2fp16_lh_rd(a, b);
}
#endif


static __device__ inline float32x16_t vfp162float_l(bfloat16x32_t a) {
    return __builtin_xpu2_vfp162float_l_rn(a);
}

static __device__ inline float32x16_t vfp162float_l_rz(bfloat16x32_t a) {
    return __builtin_xpu2_vfp162float_l_rz(a);
}

static __device__ inline float32x16_t vfp162float_l_ru(bfloat16x32_t a) {
    return __builtin_xpu2_vfp162float_l_ru(a);
}

static __device__ inline float32x16_t vfp162float_l_rd(bfloat16x32_t a) {
    return __builtin_xpu2_vfp162float_l_rd(a);
}


static __device__ inline float32x16_t vfp162float_h(bfloat16x32_t a) {
    return __builtin_xpu2_vfp162float_h_rn(a);
}

static __device__ inline float32x16_t vfp162float_h_rz(bfloat16x32_t a) {
    return __builtin_xpu2_vfp162float_h_rz(a);
}

static __device__ inline float32x16_t vfp162float_h_ru(bfloat16x32_t a) {
    return __builtin_xpu2_vfp162float_h_ru(a);
}

static __device__ inline float32x16_t vfp162float_h_rd(bfloat16x32_t a) {
    return __builtin_xpu2_vfp162float_h_rd(a);
}



static __device__ inline float32x16_t vbf162float_l(bfloat16x32_t a) {
    return __builtin_xpu2_vbf162float_l(a);
}

static __device__ inline float32x16_t vbf162float_h(bfloat16x32_t a) {
    return __builtin_xpu2_vbf162float_h(a);
}


#endif
#endif // __XPU_KERNEL_XTDK_SIMD_XPU2H

