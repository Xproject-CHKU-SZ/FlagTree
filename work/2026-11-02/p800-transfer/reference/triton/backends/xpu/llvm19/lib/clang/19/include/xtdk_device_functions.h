/*!\file xtdk_device_function.h
 * \brief XCN C/CPP中的device侧操作接口。
 */

#ifndef __XCN_KERNEL_XTDK_DEVICE_FUNCTION_H__
#define __XCN_KERNEL_XTDK_DEVICE_FUNCTION_H__

#include "xtdk_assert.h"
#include "xtdk_device_library_decls.h"
#include "xtdk_dma_functions.h"
#include "xtdk_sys.h"
#include "xtdk_warp_functions.h"
#include "xtdk_warp_sync_functions.h"
#include "xtdk_atomic_functions.h"

// integer intrinsic function __poc __clz __ffs __brev
__device__ static inline unsigned int __popc(unsigned int input) {
  return __builtin_popcount(input);
}
__device__ static inline unsigned int __popcll(unsigned long long int input) {
  return __builtin_popcountll(input);
}

__device__ static inline int __clz(int input) {
  return __ockl_clz_u32((uint)input);
}

__device__ static inline int __clzll(long long int input) {
  return __ockl_clz_u64((uint64_t)input);
}

__device__ static inline unsigned int __ffs(unsigned int input) {
  return (input == 0 ? -1 : __builtin_ctz(input)) + 1;
}

__device__ static inline unsigned int __ffsll(unsigned long long int input) {
  return (input == 0 ? -1 : __builtin_ctzll(input)) + 1;
}

__device__ static inline unsigned int __ffs(unsigned long long int input) {
  return __ffsll(input);
}

__device__ static inline unsigned int __ffs(unsigned long int input) {
  return __ffsll(static_cast<unsigned long long int>(input));
}

__device__ static inline unsigned int __ffs(int input) {
  return (input == 0 ? -1 : __builtin_ctz(input)) + 1;
}

__device__ static inline unsigned int __ffsll(long long int input) {
  return (input == 0 ? -1 : __builtin_ctzll(input)) + 1;
}

// Given a 32/64-bit value exec mask and an integer value base (between 0 and
// WAVEFRONT_SIZE), find the n-th (given by offset) set bit in the exec mask
// from the base bit, and return the bit position. If not found, return -1.
__device__ static int32_t __fns64(uint64_t mask, uint32_t base,
                                  int32_t offset) {
  uint64_t temp_mask = mask;
  int32_t temp_offset = offset;

  if (offset == 0) {
    temp_mask &= (1 << base);
    temp_offset = 1;
  } else if (offset < 0) {
    temp_mask = __builtin_bitreverse64(mask);
    base = 63 - base;
    temp_offset = -offset;
  }

  temp_mask = temp_mask & ((~0ULL) << base);
  if (__builtin_popcountll(temp_mask) < temp_offset)
    return -1;
  int32_t total = 0;
  for (int i = 0x20; i > 0; i >>= 1) {
    uint64_t temp_mask_lo = temp_mask & ((1ULL << i) - 1);
    int32_t pcnt = __builtin_popcountll(temp_mask_lo);
    if (pcnt < temp_offset) {
      temp_mask = temp_mask >> i;
      temp_offset -= pcnt;
      total += i;
    } else {
      temp_mask = temp_mask_lo;
    }
  }
  if (offset < 0)
    return 63 - total;
  else
    return total;
}

__device__ static int32_t __fns32(uint32_t mask, uint32_t base,
                                  int32_t offset) {
  uint32_t temp_mask = mask;
  int32_t temp_offset = offset;
  if (offset == 0) {
    temp_mask &= (1 << base);
    temp_offset = 1;
  } else if (offset < 0) {
    temp_mask = __builtin_bitreverse32(mask);
    base = 31 - base;
    temp_offset = -offset;
  }
  temp_mask = temp_mask & ((~0U) << base);
  if (__builtin_popcount(temp_mask) < temp_offset)
    return -1;
  int32_t total = 0;
  for (int i = 0x10; i > 0; i >>= 1) {
    uint32_t temp_mask_lo = temp_mask & ((1U << i) - 1);
    int32_t pcnt = __builtin_popcount(temp_mask_lo);
    if (pcnt < temp_offset) {
      temp_mask = temp_mask >> i;
      temp_offset -= pcnt;
      total += i;
    } else {
      temp_mask = temp_mask_lo;
    }
  }
  if (offset < 0)
    return 31 - total;
  else
    return total;
}

__device__ static unsigned __fns(unsigned mask, unsigned base, int offset) {
  return __fns32(mask, base, offset);
}

__device__ static inline unsigned int __brev(unsigned int input) {
  return __builtin_bitreverse32(input);
}

__device__ static inline unsigned long long int
__brevll(unsigned long long int input) {
  return __builtin_bitreverse64(input);
}

__device__ static inline unsigned int __lastbit_u32_u64(uint64_t input) {
  return input == 0 ? -1 : __builtin_ctzl(input);
}

__device__ static inline unsigned int
__bitextract_u32(unsigned int src0, unsigned int src1, unsigned int src2) {
  uint32_t offset = src1 & 31;
  uint32_t width = src2 & 31;
  return width == 0 ? 0 : (src0 << (32 - offset - width)) >> (32 - width);
}

__device__ static inline uint64_t
__bitextract_u64(uint64_t src0, unsigned int src1, unsigned int src2) {
  uint64_t offset = src1 & 63;
  uint64_t width = src2 & 63;
  return width == 0 ? 0 : (src0 << (64 - offset - width)) >> (64 - width);
}

__device__ static inline unsigned int __bitinsert_u32(unsigned int src0,
                                                      unsigned int src1,
                                                      unsigned int src2,
                                                      unsigned int src3) {
  uint32_t offset = src2 & 31;
  uint32_t width = src3 & 31;
  uint32_t mask = (1 << width) - 1;
  return ((src0 & ~(mask << offset)) | ((src1 & mask) << offset));
}

__device__ static inline uint64_t __bitinsert_u64(uint64_t src0, uint64_t src1,
                                                  unsigned int src2,
                                                  unsigned int src3) {
  uint64_t offset = src2 & 63;
  uint64_t width = src3 & 63;
  uint64_t mask = (1ULL << width) - 1;
  return ((src0 & ~(mask << offset)) | ((src1 & mask) << offset));
}

__device__ inline unsigned int __funnelshift_l(unsigned int lo, unsigned int hi,
                                               unsigned int shift) {
  uint32_t mask_shift = shift & 31;
  return mask_shift == 0 ? hi : __builtin_xcn_alignbit(hi, lo, 32 - mask_shift);
}

__device__ inline unsigned int
__funnelshift_lc(unsigned int lo, unsigned int hi, unsigned int shift) {
  uint32_t min_shift = shift >= 32 ? 32 : shift;
  return min_shift == 0 ? hi : __builtin_xcn_alignbit(hi, lo, 32 - min_shift);
}

__device__ inline unsigned int __funnelshift_r(unsigned int lo, unsigned int hi,
                                               unsigned int shift) {
  return __builtin_xcn_alignbit(hi, lo, shift);
}

__device__ inline unsigned int
__funnelshift_rc(unsigned int lo, unsigned int hi, unsigned int shift) {
  return shift >= 32 ? hi : __builtin_xcn_alignbit(hi, lo, shift);
}

__device__ static unsigned int __byte_perm(unsigned int x, unsigned int y,
                                           unsigned int s);
__device__ static unsigned int __hadd(int x, int y);
__device__ static int __mul24(int x, int y);
__device__ static long long int __mul64hi(long long int x, long long int y);
__device__ static int __mulhi(int x, int y);
__device__ static int __rhadd(int x, int y);
__device__ static unsigned int __sad(int x, int y, unsigned int z);
__device__ static unsigned int __uhadd(unsigned int x, unsigned int y);
__device__ static int __umul24(unsigned int x, unsigned int y);
__device__ static unsigned long long int __umul64hi(unsigned long long int x,
                                                    unsigned long long int y);
__device__ static unsigned int __umulhi(unsigned int x, unsigned int y);
__device__ static unsigned int __urhadd(unsigned int x, unsigned int y);
__device__ static unsigned int __usad(unsigned int x, unsigned int y,
                                      unsigned int z);

struct ucharHolder {
  union {
    unsigned char c[4];
    unsigned int ui;
  };
} __attribute__((aligned(4)));

struct uchar2Holder {
  union {
    unsigned int ui[2];
    unsigned char c[8];
  };
} __attribute__((aligned(8)));

__device__ static inline unsigned int
__byte_perm(unsigned int x, unsigned int y, unsigned int s) {
  struct uchar2Holder cHoldVal;
  struct ucharHolder cHoldKey;
  cHoldKey.ui = s;
  cHoldVal.ui[0] = x;
  cHoldVal.ui[1] = y;
  unsigned int result;
  result = cHoldVal.c[cHoldKey.c[0] & 0x07];
  result += (cHoldVal.c[(cHoldKey.c[0] & 0x70) >> 4] << 8);
  result += (cHoldVal.c[cHoldKey.c[1] & 0x07] << 16);
  result += (cHoldVal.c[(cHoldKey.c[1] & 0x70) >> 4] << 24);
  return result;
}

__device__ static inline unsigned int __hadd(int x, int y) {
  int z = x + y;
  int sign = z & 0x8000000;
  int value = z & 0x7FFFFFFF;
  return ((value) >> 1 || sign);
}

__device__ static inline int __mul24(int x, int y) {
  return __ockl_mul24_i32(x, y);
}

__device__ static inline long long __mul64hi(long long int x, long long int y) {
  ulong x0 = (ulong)x & 0xffffffffUL;
  long x1 = x >> 32;
  ulong y0 = (ulong)y & 0xffffffffUL;
  long y1 = y >> 32;
  ulong z0 = x0 * y0;
  long t = x1 * y0 + (z0 >> 32);
  long z1 = t & 0xffffffffL;
  long z2 = t >> 32;
  z1 = x0 * y1 + z1;
  return x1 * y1 + z2 + (z1 >> 32);
}

__device__ static inline int __mulhi(int x, int y) {
  return __ockl_mul_hi_i32(x, y);
}

__device__ static inline int __rhadd(int x, int y) {
  int z = x + y + 1;
  int sign = z & 0x8000000;
  int value = z & 0x7FFFFFFF;
  return ((value) >> 1 || sign);
}

__device__ static inline unsigned int __sad(int x, int y, unsigned int z) {
  return x > y ? x - y + z : y - x + z;
}
__device__ static inline unsigned int __uhadd(unsigned int x, unsigned int y) {
  return (x + y) >> 1;
}
__device__ static inline int __umul24(unsigned int x, unsigned int y) {
  return __ockl_mul24_u32(x, y);
}

__device__ static inline unsigned long long
__umul64hi(unsigned long long int x, unsigned long long int y) {
  ulong x0 = x & 0xffffffffUL;
  ulong x1 = x >> 32;
  ulong y0 = y & 0xffffffffUL;
  ulong y1 = y >> 32;
  ulong z0 = x0 * y0;
  ulong t = x1 * y0 + (z0 >> 32);
  ulong z1 = t & 0xffffffffUL;
  ulong z2 = t >> 32;
  z1 = x0 * y1 + z1;
  return x1 * y1 + z2 + (z1 >> 32);
}

__device__ static inline unsigned int __umulhi(unsigned int x, unsigned int y) {
  return __ockl_mul_hi_u32(x, y);
}
__device__ static inline unsigned int __urhadd(unsigned int x, unsigned int y) {
  return (x + y + 1) >> 1;
}
__device__ static inline unsigned int __usad(unsigned int x, unsigned int y,
                                             unsigned int z) {
  return __ockl_sadd_u32(x, y, z);
}

__device__ static inline unsigned int __mbcnt_lo(unsigned int x,
                                                 unsigned int y) {
  return __builtin_xcn_mbcnt_lo(x, y);
};

__device__ static inline unsigned int __mbcnt_hi(unsigned int x,
                                                 unsigned int y) {
  return __builtin_xcn_mbcnt_hi(x, y);
};

__device__ static inline float __double2float_rd(double x) {
  return __ocml_cvtrtn_f32_f64(x);
}
__device__ static inline float __double2float_rn(double x) { return x; }
__device__ static inline float __double2float_ru(double x) {
  return __ocml_cvtrtp_f32_f64(x);
}
__device__ static inline float __double2float_rz(double x) {
  return __ocml_cvtrtz_f32_f64(x);
}

__device__ static inline int __double2hiint(double x) {
  static_assert(sizeof(double) == 2 * sizeof(int), "");

  int tmp[2];
  __builtin_memcpy(tmp, &x, sizeof(tmp));

  return tmp[1];
}
__device__ static inline int __double2loint(double x) {
  static_assert(sizeof(double) == 2 * sizeof(int), "");

  int tmp[2];
  __builtin_memcpy(tmp, &x, sizeof(tmp));

  return tmp[0];
}

__device__ static inline int __double2int_rd(double x) {
  return (int)__ocml_floor_f64(x);
}
__device__ static inline int __double2int_rn(double x) {
  return (int)__ocml_rint_f64(x);
}
__device__ static inline int __double2int_ru(double x) {
  return (int)__ocml_ceil_f64(x);
}
__device__ static inline int __double2int_rz(double x) { return (int)x; }

__device__ static inline long long int __double2ll_rd(double x) {
  return (long long)__ocml_floor_f64(x);
}
__device__ static inline long long int __double2ll_rn(double x) {
  return (long long)__ocml_rint_f64(x);
}
__device__ static inline long long int __double2ll_ru(double x) {
  return (long long)__ocml_ceil_f64(x);
}
__device__ static inline long long int __double2ll_rz(double x) {
  return (long long)x;
}

__device__ static inline unsigned int __double2uint_rd(double x) {
  return (unsigned int)__ocml_floor_f64(x);
}
__device__ static inline unsigned int __double2uint_rn(double x) {
  return (unsigned int)__ocml_rint_f64(x);
}
__device__ static inline unsigned int __double2uint_ru(double x) {
  return (unsigned int)__ocml_ceil_f64(x);
}
__device__ static inline unsigned int __double2uint_rz(double x) {
  return (unsigned int)x;
}

__device__ static inline unsigned long long int __double2ull_rd(double x) {
  return (unsigned long long int)__ocml_floor_f64(x);
}
__device__ static inline unsigned long long int __double2ull_rn(double x) {
  return (unsigned long long int)__ocml_rint_f64(x);
}
__device__ static inline unsigned long long int __double2ull_ru(double x) {
  return (unsigned long long int)__ocml_ceil_f64(x);
}
__device__ static inline unsigned long long int __double2ull_rz(double x) {
  return (unsigned long long int)x;
}
__device__ static inline long long int __double_as_longlong(double x) {
  static_assert(sizeof(long long) == sizeof(double), "");

  long long tmp;
  __builtin_memcpy(&tmp, &x, sizeof(tmp));

  return tmp;
}

__device__ static inline signed char __float2char_rz(float x) {
  unsigned tmp = 0;
  asm("v_cvt_i8_f32 %0, %1" :"=v"(tmp) : "v"(x));
  const unsigned char u = static_cast<unsigned char>(tmp);
  return static_cast<signed char>(u);
}
__device__ static inline unsigned char __float2uchar_rz(float x) {
  unsigned tmp = 0;
  asm("v_cvt_u8_f32 %0, %1" :"=v"(tmp) : "v"(x));
  return static_cast<unsigned char>(tmp);
}
__device__ static inline int __float2int_rd(float x) {
  return (int)__ocml_floor_f32(x);
}
__device__ static inline int __float2int_rn(float x) {
  return (int)__ocml_rint_f32(x);
}
__device__ static inline int __float2int_ru(float x) {
  return (int)__ocml_ceil_f32(x);
}
__device__ static inline int __float2int_rz(float x) {
  return (int)__ocml_trunc_f32(x);
}

__device__ static inline long long int __float2ll_rd(float x) {
  return (long long int)__ocml_floor_f32(x);
}
__device__ static inline long long int __float2ll_rn(float x) {
  return (long long int)__ocml_rint_f32(x);
}
__device__ static inline long long int __float2ll_ru(float x) {
  return (long long int)__ocml_ceil_f32(x);
}
__device__ static inline long long int __float2ll_rz(float x) {
  return (long long int)x;
}

__device__ static inline unsigned int __float2uint_rd(float x) {
  return (unsigned int)__ocml_floor_f32(x);
}
__device__ static inline unsigned int __float2uint_rn(float x) {
  return (unsigned int)__ocml_rint_f32(x);
}
__device__ static inline unsigned int __float2uint_ru(float x) {
  return (unsigned int)__ocml_ceil_f32(x);
}
__device__ static inline unsigned int __float2uint_rz(float x) {
  return (unsigned int)x;
}

__device__ static inline unsigned long long int __float2ull_rd(float x) {
  return (unsigned long long int)__ocml_floor_f32(x);
}
__device__ static inline unsigned long long int __float2ull_rn(float x) {
  return (unsigned long long int)__ocml_rint_f32(x);
}
__device__ static inline unsigned long long int __float2ull_ru(float x) {
  return (unsigned long long int)__ocml_ceil_f32(x);
}
__device__ static inline unsigned long long int __float2ull_rz(float x) {
  return (unsigned long long int)x;
}

__device__ static inline int __float_as_int(float x) {
  static_assert(sizeof(int) == sizeof(float), "");

  int tmp;
  __builtin_memcpy(&tmp, &x, sizeof(tmp));

  return tmp;
}

__device__ static inline unsigned int __float_as_uint(float x) {
  static_assert(sizeof(unsigned int) == sizeof(float), "");

  unsigned int tmp;
  __builtin_memcpy(&tmp, &x, sizeof(tmp));

  return tmp;
}

__device__ static inline double __hiloint2double(int hi, int lo) {
  static_assert(sizeof(double) == sizeof(uint64_t), "");

  uint64_t tmp0 =
      (static_cast<uint64_t>(hi) << 32ull) | static_cast<uint32_t>(lo);
  double tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));

  return tmp1;
}

__device__ static inline double __int2double_rn(int x) { return (double)x; }

__device__ static inline float __int2float_rd(int x) {
  return __ocml_cvtrtn_f32_s32(x);
}
__device__ static inline float __int2float_rn(int x) { return (float)x; }
__device__ static inline float __int2float_ru(int x) {
  return __ocml_cvtrtp_f32_s32(x);
}
__device__ static inline float __int2float_rz(int x) {
  return __ocml_cvtrtz_f32_s32(x);
}

__device__ static inline float __int_as_float(int x) {
  static_assert(sizeof(float) == sizeof(int), "");

  float tmp;
  __builtin_memcpy(&tmp, &x, sizeof(tmp));

  return tmp;
}

__device__ static inline double __ll2double_rd(long long int x) {
  return __ocml_cvtrtn_f64_s64(x);
}
__device__ static inline double __ll2double_rn(long long int x) {
  return (double)x;
}
__device__ static inline double __ll2double_ru(long long int x) {
  return __ocml_cvtrtp_f64_s64(x);
}
__device__ static inline double __ll2double_rz(long long int x) {
  return __ocml_cvtrtz_f64_s64(x);
}

__device__ static inline float __ll2float_rd(long long int x) {
  return __ocml_cvtrtn_f32_s64(x);
}
__device__ static inline float __ll2float_rn(long long int x) {
  return (float)x;
}
__device__ static inline float __ll2float_ru(long long int x) {
  return __ocml_cvtrtp_f32_s64(x);
}
__device__ static inline float __ll2float_rz(long long int x) {
  return __ocml_cvtrtz_f32_s64(x);
}

__device__ static inline double __longlong_as_double(long long int x) {
  static_assert(sizeof(double) == sizeof(long long), "");

  double tmp;
  __builtin_memcpy(&tmp, &x, sizeof(tmp));

  return tmp;
}

__device__ static inline double __uint2double_rn(unsigned int x) {
  return (double)x;
}

__device__ static inline float __uint2float_rd(unsigned int x) {
  return __ocml_cvtrtn_f32_u32(x);
}
__device__ static inline float __uint2float_rn(unsigned int x) {
  return (float)x;
}
__device__ static inline float __uint2float_ru(unsigned int x) {
  return __ocml_cvtrtp_f32_u32(x);
}
__device__ static inline float __uint2float_rz(unsigned int x) {
  return __ocml_cvtrtz_f32_u32(x);
}

__device__ static inline float __uint_as_float(unsigned int x) {
  static_assert(sizeof(float) == sizeof(unsigned int), "");

  float tmp;
  __builtin_memcpy(&tmp, &x, sizeof(tmp));

  return tmp;
}

__device__ static inline double __ull2double_rd(unsigned long long int x) {
  return __ocml_cvtrtn_f64_u64(x);
}
__device__ static inline double __ull2double_rn(unsigned long long int x) {
  return (double)x;
}
__device__ static inline double __ull2double_ru(unsigned long long int x) {
  return __ocml_cvtrtp_f64_u64(x);
}
__device__ static inline double __ull2double_rz(unsigned long long int x) {
  return __ocml_cvtrtz_f64_u64(x);
}

__device__ static inline float __ull2float_rd(unsigned long long int x) {
  return __ocml_cvtrtn_f32_u64(x);
}
__device__ static inline float __ull2float_rn(unsigned long long int x) {
  return (float)x;
}
__device__ static inline float __ull2float_ru(unsigned long long int x) {
  return __ocml_cvtrtp_f32_u64(x);
}
__device__ static inline float __ull2float_rz(unsigned long long int x) {
  return __ocml_cvtrtz_f32_u64(x);
}

// Clock functions
__device__ long long int __clock64();
__device__ long long int __clock();
__device__ long long int clock64();
__device__ long long int clock();
__device__ long long int wall_clock64();
// hip.xcn.bc - named sync
__device__ void __named_sync();

// Clock function to return GPU core cycle count.
// GPU can change its core clock frequency at runtime. The maximum frequency can
// be queried through hipDeviceAttributeClockRate attribute.
__device__ inline __attribute((always_inline)) long long int __clock64() {
  return (long long int)__builtin_xcn_s_memtime();
}

__device__ inline __attribute((always_inline)) long long int __clock() {
  return __clock64();
}

__device__ inline __attribute__((always_inline)) long long int clock64() {
  return __clock64();
}

__device__ inline __attribute__((always_inline)) long long int clock() {
  return __clock();
}

// houyi.xcn.bc - named sync
#if defined(__XPU_ARCH__) && __XPU_ARCH__ >= 6
__device__ inline void __xcn_s_barrier() {
  __builtin_xcn_s_barrier_xpu6(0);
}
#else
__device__ inline void __xcn_s_barrier() {
  __builtin_xcn_s_barrier();
}
#endif

__device__ inline void __named_sync() { __xcn_s_barrier(); }

// Memory Fence Functions
#if !defined (__XPU_ARCH__) || (__XPU_ARCH__ >= 6)
/**
 * \brief XCN访存操作保序
 * \note mfence()能够保证在mfence()之前发生的访存操作完成访存后，\n
 *       再执行mfence()之后的其它访存或系统指令
 * mfence(): fence all memory type and all direction.
 * mfence_llc(): fence all memory type and all direction, and wait llc.
 * mfence_exc(): fence all memory type and all direction, and wait exc.
 * mfence_llc_exc(): fence all memory type and all direction, and wait llc and
 * exc.
 */
template <int mask = 0x7, int direction = 0x18> static inline void __device__ mfence() {
  __builtin_xcn_s_mfence(mask | direction);
}

static inline void __device__ mfence_llc() { mfence<0x27>(); }
static inline void __device__ mfence_exc() { mfence<0x47>(); }
static inline void __device__ mfence_llc_exc() { mfence<0x67>(); }

/**
 * \brief XCN global memory访存操作保序
 * \note mfence_global()能够保证在mfence_global()之前发生的global
 * memory上访存操作完成访存后，\n
 *       再执行mfence_global()之后的其它访存(如DMA访存)或系统指令
 * mfence_global(): fence load/store to global memory
 * mfence_global_ld(): only fence load to global memory
 * mfence_global_st(): only fence store to global memory
 */
static inline void __device__ mfence_global() { mfence<0x1>(); }
static inline void __device__ mfence_global_ld() { mfence<0x1, 0x8>(); }
static inline void __device__ mfence_global_st() { mfence<0x1, 0x10>(); }

/**
 * \brief XCN global memory访存操作保序(含llc/exc等待)
 * \note 在对应mfence_global_*()语义基础上:
 *       _llc后缀表示同时等待前序llc指令落盘;
 *       _exc后缀表示同时等待前序exc指令落盘;
 *       _llc_exc后缀表示同时等待前序llc和exc指令落盘
 */
static inline void __device__ mfence_global_llc() { mfence<0x21>(); }
static inline void __device__ mfence_global_exc() { mfence<0x41>(); }
static inline void __device__ mfence_global_llc_exc() { mfence<0x61>(); }
static inline void __device__ mfence_global_ld_llc() { mfence<0x21, 0x8>(); }
static inline void __device__ mfence_global_ld_exc() { mfence<0x41, 0x8>(); }
static inline void __device__ mfence_global_ld_llc_exc() {
  mfence<0x61, 0x8>();
}
static inline void __device__ mfence_global_st_llc() { mfence<0x21, 0x10>(); }
static inline void __device__ mfence_global_st_exc() { mfence<0x41, 0x10>(); }
static inline void __device__ mfence_global_st_llc_exc() {
  mfence<0x61, 0x10>();
}

/**
 * \brief XCN scratch(private) memory访存操作保序
 * \note mfence_scratch()能够保证在mfence_scratch()之前发生的scratch
 * memory上访存操作完成访存后，\n
 *       再执行mfence_scratch()之后的其它访存(如DMA访存)或系统指令
 * mfence_scratch(): fence load/store to scratch memory
 * mfence_scratch_ld(): only fence load to scratch memory
 * mfence_scratch_st(): only fence store to scratch memory
 */
static inline void __device__ mfence_scratch() { mfence<0x1>(); }
static inline void __device__ mfence_scratch_ld() { mfence<0x1, 0x8>(); }
static inline void __device__ mfence_scratch_st() { mfence<0x1, 0x10>(); }

/**
 * \brief XCN scratch(private) memory访存操作保序(含llc/exc等待)
 * \note 在对应mfence_scratch_*()语义基础上:
 *       _llc后缀表示同时等待前序llc指令落盘;
 *       _exc后缀表示同时等待前序exc指令落盘;
 *       _llc_exc后缀表示同时等待前序llc和exc指令落盘
 */
static inline void __device__ mfence_scratch_llc() { mfence<0x21>(); }
static inline void __device__ mfence_scratch_exc() { mfence<0x41>(); }
static inline void __device__ mfence_scratch_llc_exc() { mfence<0x61>(); }
static inline void __device__ mfence_scratch_ld_llc() { mfence<0x21, 0x8>(); }
static inline void __device__ mfence_scratch_ld_exc() { mfence<0x41, 0x8>(); }
static inline void __device__ mfence_scratch_ld_llc_exc() {
  mfence<0x61, 0x8>();
}
static inline void __device__ mfence_scratch_st_llc() { mfence<0x21, 0x10>(); }
static inline void __device__ mfence_scratch_st_exc() { mfence<0x41, 0x10>(); }
static inline void __device__ mfence_scratch_st_llc_exc() {
  mfence<0x61, 0x10>();
}

/**
 * \brief XCN shared memory访存操作保序
 * \note mfence_shared()能够保证在mfence_shared()之前发生的shared
 * memory上访存操作完成访存后，\n
 *       再执行mfence_shared()之后的其它访存(如DMA访存)或系统指令
 * mfence_shared(): fence load/store to shared memory
 * mfence_shared_ld(): only fence load to shared memory
 * mfence_shared_st(): only fence store to shared memory
 */
static inline void __device__ mfence_shared() { mfence<2>(); }
static inline void __device__ mfence_shared_ld() { mfence<2, 0x8>(); }
static inline void __device__ mfence_shared_st() { mfence<2, 0x10>(); }

/**
 * \brief XCN shared memory访存操作保序(含llc/exc等待)
 * \note 在对应mfence_shared_*()语义基础上:
 *       _llc后缀表示同时等待前序llc指令落盘;
 *       _exc后缀表示同时等待前序exc指令落盘;
 *       _llc_exc后缀表示同时等待前序llc和exc指令落盘
 */
static inline void __device__ mfence_shared_llc() { mfence<0x22>(); }
static inline void __device__ mfence_shared_exc() { mfence<0x42>(); }
static inline void __device__ mfence_shared_llc_exc() { mfence<0x62>(); }
static inline void __device__ mfence_shared_ld_llc() { mfence<0x22, 0x8>(); }
static inline void __device__ mfence_shared_ld_exc() { mfence<0x42, 0x8>(); }
static inline void __device__ mfence_shared_ld_llc_exc() {
  mfence<0x62, 0x8>();
}
static inline void __device__ mfence_shared_st_llc() { mfence<0x22, 0x10>(); }
static inline void __device__ mfence_shared_st_exc() { mfence<0x42, 0x10>(); }
static inline void __device__ mfence_shared_st_llc_exc() {
  mfence<0x62, 0x10>();
}

/**
 * \brief XCN tensor memory访存操作保序
 * \note mfence_tm ()能够保证在mfence_tm()之前发生的tensor
 * memory上访存操作完成访存后，\n
 *       再执行mfence_tm()之后的其它访存(如DMA访存)或系统指令
 * mfence_tm(): fence load/store to tensor memory
 * mfence_tm_ld(): only fence load to tensor memory
 * mfence_tm_st(): only fence store to tensor memory
 */
static inline void __device__ mfence_tm() { mfence<4>(); }
static inline void __device__ mfence_tm_ld() { mfence<4, 0x8>(); }
static inline void __device__ mfence_tm_st() { mfence<4, 0x10>(); }

/**
 * \brief XCN tensor memory访存操作保序(含llc/exc等待)
 * \note 在对应mfence_tm_*()语义基础上:
 *       _llc后缀表示同时等待前序llc指令落盘;
 *       _exc后缀表示同时等待前序exc指令落盘;
 *       _llc_exc后缀表示同时等待前序llc和exc指令落盘
 */
static inline void __device__ mfence_tm_llc() { mfence<0x24>(); }
static inline void __device__ mfence_tm_exc() { mfence<0x44>(); }
static inline void __device__ mfence_tm_llc_exc() { mfence<0x64>(); }
static inline void __device__ mfence_tm_ld_llc() { mfence<0x24, 0x8>(); }
static inline void __device__ mfence_tm_ld_exc() { mfence<0x44, 0x8>(); }
static inline void __device__ mfence_tm_ld_llc_exc() { mfence<0x64, 0x8>(); }
static inline void __device__ mfence_tm_st_llc() { mfence<0x24, 0x10>(); }
static inline void __device__ mfence_tm_st_exc() { mfence<0x44, 0x10>(); }
static inline void __device__ mfence_tm_st_llc_exc() { mfence<0x64, 0x10>(); }
#else
/**
 * \brief XCN访存操作保序
 * \note mfence()能够保证在mfence()之前发生的访存操作完成访存后，\n
 *       再执行mfence()之后的其它访存或系统指令
 */
template <int mask = 3> static inline void __device__ mfence() {
  __builtin_xcn_s_mfence(mask);
}

/**
 * \brief XCN global memory访存操作保序
 * \note mfence_global()能够保证在mfence_global()之前发生的global
 * memory上访存操作完成访存后，\n
 *       再执行mfence_global()之后的其它访存(如DMA访存)或系统指令
 */
static inline void __device__ mfence_global() { mfence<1>(); }

/**
 * \brief XCN scratch(private) memory访存操作保序
 * \note mfence_scratch()能够保证在mfence_scratch()之前发生的scratch
 * memory上访存操作完成访存后，\n
 *       再执行mfence_scratch()之后的其它访存(如DMA访存)或系统指令
 */
static inline void __device__ mfence_scratch() { mfence<1>(); }

/**
 * \brief XCN shared memory访存操作保序
 * \note mfence_shared()能够保证在mfence_shared()之前发生的shared
 * memory上访存操作完成访存后，\n
 *       再执行mfence_shared()之后的其它访存(如DMA访存)或系统指令
 */
static inline void __device__ mfence_shared() { mfence<2>(); }
#endif // !defined (__XPU_ARCH__) || (__XPU_ARCH__ >= 6)

// LDS st->ld In-order Functions
#if defined(__XPU_ARCH__) && __XPU_ARCH__ >= 6
/**
 * \brief XCN LDS st->ld保序控制
 * \note imm1=0时关闭该warp fetch上的lds st->ld保序，同warp的lds相关指令，
 *       fetch不用等st落盘就能下发ld指令\n
 *       imm1=1时开启该warp fetch上的lds st->ld保序，同warp的lds相关指令，
 *       fetch必须等st落盘才能下发ld指令
 */
template <int imm1> static inline void __device__ cfg_lds_inorder() {
  __builtin_xcn_s_cfg_lds_inorder(imm1);
}

static inline void __device__ cfg_lds_inorder_enable() { cfg_lds_inorder<1>(); }
static inline void __device__ cfg_lds_inorder_disable() { cfg_lds_inorder<0>(); }
#endif

__device__ inline static void __threadfence() {
  __builtin_xcn_fence(__ATOMIC_SEQ_CST, "agent");
}

__device__ inline static void __threadfence_block() {
  __builtin_xcn_fence(__ATOMIC_SEQ_CST, "workgroup");
}

/**
 * system scope fence is not supported on xpu4/xpu5
 * currently falling back to agent scope fence on xpu4/xpu5 to ensure that
 * the upper-layer software(like pytorch) compiles successfully,
 * but it is NOT correct for multi-GPU coherence!
 */
__device__ inline static void __threadfence_system() {
  __builtin_xcn_fence(__ATOMIC_SEQ_CST, "system");
}

__device__ inline static void __work_group_barrier(__cl_mem_fence_flags flags) {
  if (flags) {
    __builtin_xcn_fence(__ATOMIC_RELEASE, "agent");
    __xcn_s_barrier();
  } else {
    __xcn_s_barrier();
  }
}

__device__ inline static void __barrier(int n) {
  __work_group_barrier((__cl_mem_fence_flags)n);
}

__device__ inline __attribute__((convergent)) void __syncthreads() {
  __barrier(__CLK_LOCAL_MEM_FENCE);
}

__device__ inline __attribute__((convergent)) void __syncthreads_no_gm_fence() {
  __builtin_xcn_fence(__ATOMIC_RELEASE, "workgroup");
  __xcn_s_barrier();
  __builtin_xcn_fence(__ATOMIC_ACQUIRE, "workgroup");
}

__device__ inline __attribute__((convergent)) int
__syncthreads_count(int predicate) {
  predicate = !!predicate;
  __shared__ int ret;
  int tid = threadIdx.x * blockDim.y * blockDim.z + threadIdx.y * blockDim.z +
            threadIdx.z;
  if (tid == 0) {
    ret = 0;
  }
  __syncthreads();
  for (int i = 1; i < 32; i *= 2) {
// for xpu6, if the target thread of __shfl_xor is inactive, the retrieved value
// is undefined.
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ == 6)
    int lid = __lane_id();
    int tidx = lid ^ i;
    if (__activemask() >> tidx & 1)
#endif
      predicate += __shfl_xor(predicate, i);
  }

  int lid = __lane_id();
  if (lid == 0) {
    atomicAdd(&ret, predicate);
  }
  __syncthreads();
  return ret;
  // return __ockl_wgred_add_i32(!!predicate);
}

__device__ inline __attribute__((convergent)) int
__syncthreads_and(int predicate) {
  predicate = !!predicate;
  __shared__ int ret;
  int tid = threadIdx.x * blockDim.y * blockDim.z + threadIdx.y * blockDim.z +
            threadIdx.z;
  if (tid == 0) {
    ret = 0;
  }
  __syncthreads();
  for (int i = 1; i < 32; i *= 2) {
// for xpu6, if the target thread of __shfl_xor is inactive, the retrieved value
// is undefined.
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ == 6)
    int lid = __lane_id();
    int tidx = lid ^ i;
    if (__activemask() >> tidx & 1)
#endif
      predicate += __shfl_xor(predicate, i);
  }

  int lid = __lane_id();
  if (lid == 0) {
    atomicAdd(&ret, predicate);
  }
  __syncthreads();
  return ret == blockDim.x * blockDim.y * blockDim.z;
  // return __ockl_wgred_and_i32(!!predicate);
}

__device__ inline __attribute__((convergent)) int
__syncthreads_or(int predicate) {
  predicate = !!predicate;
  __shared__ int ret;
  int tid = threadIdx.x * blockDim.y * blockDim.z + threadIdx.y * blockDim.z +
            threadIdx.z;
  if (tid == 0) {
    ret = 0;
  }
  __syncthreads();
  for (int i = 1; i < 32; i *= 2) {
// for xpu6, if the target thread of __shfl_xor is inactive, the retrieved value
// is undefined.
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ == 6)
    int lid = __lane_id();
    int tidx = lid ^ i;
    if (__activemask() >> tidx & 1)
#endif
      predicate += __shfl_xor(predicate, i);
  }

  int lid = __lane_id();
  if (lid == 0) {
    atomicAdd(&ret, predicate);
  }
  __syncthreads();
  return !!ret;
  // return __ockl_wgred_or_i32(!!predicate);
}

// loop unrolling
static inline __device__ void *__houyi_hc_memcpy(void *dst, const void *src,
                                                 size_t size) {
  auto dstPtr = static_cast<unsigned char *>(dst);
  auto srcPtr = static_cast<const unsigned char *>(src);

  while (size >= 4u) {
    dstPtr[0] = srcPtr[0];
    dstPtr[1] = srcPtr[1];
    dstPtr[2] = srcPtr[2];
    dstPtr[3] = srcPtr[3];

    size -= 4u;
    srcPtr += 4u;
    dstPtr += 4u;
  }
  switch (size) {
  case 3:
    dstPtr[2] = srcPtr[2];
  case 2:
    dstPtr[1] = srcPtr[1];
  case 1:
    dstPtr[0] = srcPtr[0];
  }

  return dst;
}

static inline __device__ void *__houyi_hc_memset(void *dst, unsigned char val,
                                                 size_t size) {
  auto dstPtr = static_cast<unsigned char *>(dst);

  while (size >= 4u) {
    dstPtr[0] = val;
    dstPtr[1] = val;
    dstPtr[2] = val;
    dstPtr[3] = val;

    size -= 4u;
    dstPtr += 4u;
  }
  switch (size) {
  case 3:
    dstPtr[2] = val;
  case 2:
    dstPtr[1] = val;
  case 1:
    dstPtr[0] = val;
  }

  return dst;
}

static inline __device__ void *memcpy(void *dst, const void *src, size_t size) {
  return __houyi_hc_memcpy(dst, src, size);
}

static inline __device__ void *memset(void *ptr, int val, size_t size) {
  unsigned char val8 = static_cast<unsigned char>(val);
  return __houyi_hc_memset(ptr, val8, size);
}

#if !defined (__XPU_ARCH__) || (__XPU_ARCH__ >= 6)
typedef __attribute__((address_space(3))) void *SHARED_PTR;
__device__ inline float ds_load_exp_f32(void *shared_load_ptr, float max_value) {
  return __builtin_xcn_ds_load_exp_f32((SHARED_PTR)shared_load_ptr, max_value);
}

__device__ inline float ds_load_add_f32(void *shared_load_ptr, float add_value) {
  return __builtin_xcn_ds_load_add_f32((SHARED_PTR)shared_load_ptr, add_value);
}

__device__ inline float ds_load_sub_f32(void *shared_load_ptr, float sub_value) {
  return __builtin_xcn_ds_load_sub_f32((SHARED_PTR)shared_load_ptr, sub_value);
}

__device__ inline float ds_load_subrev_f32(void *shared_load_ptr, float subrev_value) {
  return __builtin_xcn_ds_load_subrev_f32((SHARED_PTR)shared_load_ptr, subrev_value);
}

__device__ inline float ds_load_max_f32(void *shared_load_ptr, float max_value) {
  return __builtin_xcn_ds_load_max_f32((SHARED_PTR)shared_load_ptr, max_value);
}

__device__ inline float ds_load_amax_f32(void *shared_load_ptr, float amax_value) {
  return __builtin_xcn_ds_load_amax_f32((SHARED_PTR)shared_load_ptr, amax_value);
}

__device__ inline float ds_store_sum_f32(void *shared_store_ptr, float store_value, float sum_value) {
  return __builtin_xcn_ds_store_sum_f32((SHARED_PTR)shared_store_ptr, store_value, sum_value);
}

__device__ inline float ds_store_sum_cvt_bf16(void *shared_store_ptr, float store_value, float sum_value) {
  return __builtin_xcn_ds_store_sum_cvt_bf16((SHARED_PTR)shared_store_ptr, store_value, sum_value);
}

__device__ inline float ds_store_sum_cvt_f16(void *shared_store_ptr, float store_value, float sum_value) {
  return __builtin_xcn_ds_store_sum_cvt_f16((SHARED_PTR)shared_store_ptr, store_value, sum_value);
}

typedef float __attribute__((ext_vector_type(2))) float32x2_t;

__device__ inline void ds_store_cvt_f16x2_f32x2(void *shared_store_ptr, float32x2_t store_value) {
  __builtin_xcn_ds_store_cvt_f16x2_f32x2((SHARED_PTR)shared_store_ptr, store_value);
}

__device__ inline void ds_store_cvt_bf16x2_f32x2(void *shared_store_ptr, float32x2_t store_value) {
  __builtin_xcn_ds_store_cvt_bf16x2_f32x2((SHARED_PTR)shared_store_ptr, store_value);
}


template<int OMOD = 0, int OPSEL = 0>
__device__ inline float32x2_t v_sub_exp_add(float src0, float src1, float src2) {
  return __builtin_xcn_v_sub_exp_add(src0, src1, src2, OMOD, OPSEL);
}

template<int OMOD = 0, int OPSEL = 0>
__device__ inline void v_sub_exp_add(float src0, float src1, float src2,
                                      float& result0, float& result1) {
  float32x2_t result = __builtin_xcn_v_sub_exp_add(src0, src1, src2, OMOD, OPSEL);
  result0 = result[0];
  result1 = result[1];
}

typedef __attribute__((ext_vector_type(32))) uint32_t uintx32_t;
typedef __attribute__((ext_vector_type(4))) uint32_t uint32x4_t;

__device__ inline uint64_t ds_load2_b32(void *shared_load_ptr, uint32_t stride) {
  return __builtin_xcn_ds_load2_b32((SHARED_PTR)shared_load_ptr, stride);
}

__device__ inline uint32x4_t ds_load4_b32(void *shared_load_ptr, uint32_t stride) {
  return __builtin_xcn_ds_load4_b32((SHARED_PTR)shared_load_ptr, stride);
}


__device__ inline uint64_t ds_load_m2n2_b16(void *shared_load_ptr, uint32_t stride) {
  return __builtin_xcn_ds_load_m2n2_b16((SHARED_PTR)shared_load_ptr, stride);
}

__device__ inline uint32x4_t ds_load_m4n2_b16(void *shared_load_ptr, uint32_t stride) {
  return __builtin_xcn_ds_load_m4n2_b16((SHARED_PTR)shared_load_ptr, stride);
}

__device__ inline uint32x4_t ds_load_m4n4_b8(void *shared_load_ptr, uint32_t stride) {
  return __builtin_xcn_ds_load_m4n4_b8((SHARED_PTR)shared_load_ptr, stride);
}

__device__ inline uint64_t ds_load_n4m1_b16(void *shared_load_ptr, uint32_t stride) {
  return __builtin_xcn_ds_load_n4m1_b16((SHARED_PTR)shared_load_ptr, stride);
}

__device__ inline uint32_t ds_load_n4m1_b8(void *shared_load_ptr, uint32_t stride) {
  return __builtin_xcn_ds_load_n4m1_b8((SHARED_PTR)shared_load_ptr, stride);
}

__device__ inline uint32x4_t ds_load_n8m1_b16(void *shared_load_ptr, uint32_t stride) {
  return __builtin_xcn_ds_load_n8m1_b16((SHARED_PTR)shared_load_ptr, stride);
}

__device__ inline uint64_t ds_load_n8m1_b8(void *shared_load_ptr, uint32_t stride) {
  return __builtin_xcn_ds_load_n8m1_b8((SHARED_PTR)shared_load_ptr, stride);
}

__device__ inline void ds_store2_b32(void *shared_store_ptr, uint64_t data, uint32_t stride) {
  return __builtin_xcn_ds_store2_b32((SHARED_PTR)shared_store_ptr, data, stride);
}


__device__ inline void ds_store4_b32(void *shared_store_ptr, uint32x4_t data, uint32_t stride) {
  return __builtin_xcn_ds_store4_b32((SHARED_PTR)shared_store_ptr, data, stride);
}

__device__ inline void ds_store_m2n2_b16(void *shared_store_ptr, uint64_t data, uint32_t stride) {
  return __builtin_xcn_ds_store_m2n2_b16((SHARED_PTR)shared_store_ptr, data, stride);
}

__device__ inline void ds_store_m4n2_b16(void *shared_store_ptr, uint32x4_t data, uint32_t stride) {
  return __builtin_xcn_ds_store_m4n2_b16((SHARED_PTR)shared_store_ptr, data, stride);
}

__device__ inline void ds_store_m4n4_b8(void *shared_store_ptr, uint32x4_t data, uint32_t stride) {
  return __builtin_xcn_ds_store_m4n4_b8((SHARED_PTR)shared_store_ptr, data, stride);
}

__device__ inline void ds_store_n4m1_b16(void *shared_store_ptr, uint64_t data, uint32_t stride) {
  return __builtin_xcn_ds_store_n4m1_b16((SHARED_PTR)shared_store_ptr, data, stride);
}

__device__ inline void ds_store_n4m1_b8(void *shared_store_ptr, uint32_t data, uint32_t stride) {
  return __builtin_xcn_ds_store_n4m1_b8((SHARED_PTR)shared_store_ptr, data, stride);
}

__device__ inline void ds_store_n8m1_b16(void *shared_store_ptr, uint32x4_t data, uint32_t stride) {
  return __builtin_xcn_ds_store_n8m1_b16((SHARED_PTR)shared_store_ptr, data, stride);
}

__device__ inline void ds_store_n8m1_b8(void *shared_store_ptr, uint64_t data, uint32_t stride) {
  return __builtin_xcn_ds_store_n8m1_b8((SHARED_PTR)shared_store_ptr, data, stride);
}

typedef __attribute__((address_space(8))) void *TM_PTR;
__device__ inline void tm_store_b128(void *tm_store_ptr,
        uint32_t src0, uint32_t src1, uint32_t src2, uint32_t src3) {
  __builtin_xcn_tm_store_b128((TM_PTR)tm_store_ptr, src0, src1, src2, src3);
}

typedef __attribute__((ext_vector_type(4))) float float32x4_t;

__device__ inline float32x4_t ds_load_expx4_f32(void *shared_load_ptr, float max_value, uint32_t stride) {
  return __builtin_xcn_ds_load_expx4_f32((SHARED_PTR)shared_load_ptr, max_value, stride);
}

__device__ inline void
tm_store_cvt_f16x4_f32x4(void *tm_store_ptr, float src0, float src1, float src2, float src3)
{
    return __builtin_xcn_tm_store_cvt_f16x4_f32x4((TM_PTR)tm_store_ptr, src0, src1, src2, src3);
}
__device__ inline void
tm_store_cvt_bf16x4_f32x4(void *tm_store_ptr, float src0, float src1, float src2, float src3)
{
    return __builtin_xcn_tm_store_cvt_bf16x4_f32x4((TM_PTR)tm_store_ptr, src0, src1, src2, src3);
}
__device__ inline void
tm_store_cvt_e4m3x4_f32x4(void *tm_store_ptr, float src0, float src1, float src2, float src3)
{
    return __builtin_xcn_tm_store_cvt_e4m3x4_f32x4((TM_PTR)tm_store_ptr, src0, src1, src2, src3);
}
__device__ inline void
tm_store_cvt_e5m2x4_f32x4(void *tm_store_ptr, float src0, float src1, float src2, float src3)
{
    return __builtin_xcn_tm_store_cvt_e5m2x4_f32x4((TM_PTR)tm_store_ptr, src0, src1, src2, src3);
}
#endif // !defined (__XPU_ARCH__) || (__XPU_ARCH__ >= 6)

// NVIDIA L2 cache access property hint. XPU has no equivalent hardware
// mechanism, so we pass the pointer through unchanged. This does not affect
// correctness; NVIDIA itself does the same on pre-SM80 GPUs.
__device__ static inline void *
__nv_associate_access_property(const void *__ptr, unsigned long long __prop) {
  return (void *)__ptr;
}

#endif // __XCN_KERNEL_XTDK_DEVICE_FUNCTION_H__
