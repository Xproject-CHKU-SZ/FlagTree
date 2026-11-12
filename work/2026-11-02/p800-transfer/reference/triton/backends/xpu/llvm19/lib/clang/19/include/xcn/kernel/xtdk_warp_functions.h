#ifndef __XCN_KERNEL_XTDK_WARP_FUNCTIONS_H__
#define __XCN_KERNEL_XTDK_WARP_FUNCTIONS_H__

#include "xtdk_device_library_decls.h"

#if !defined (warpSize)
static constexpr int warpSize = __XCN_WAVEFRONT_SIZE;
#endif  // !defined (warpSize)

// warp vote function __all __any __ballot
__device__ inline int __all(int predicate) {
  return __ockl_wfall_i32(predicate);
}

__device__ inline int __any(int predicate) {
  return __ockl_wfany_i32(predicate);
}

__device__ inline unsigned int __ballot(int predicate) {
  return __builtin_xcn_ballot_w32(predicate);
}

// Since threads in a wave do not make independent progress, __activemask()
// always returns the exact active mask, i.e, all active threads in the wave.
__device__ inline unsigned int __activemask() { return __ballot(true); }

__device__ static inline unsigned int __lane_id() {
  return __builtin_xcn_mbcnt_hi(-1, __builtin_xcn_mbcnt_lo(-1, 0));
}

__device__ inline int __shfl(int var, int src_lane, int width = warpSize) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ < 6)
  int self = __lane_id();
  int index = src_lane + (self & ~(width - 1));
  return __builtin_xcn_ds_bpermute(index << 2, var);
#else
  // c[4:0] = width-1, c[12:8] = segmask
  unsigned int segmask = 0x1F & ~(width - 1);
  unsigned int c = (segmask << 8) | (width - 1);
  int shuffled_value;
  unsigned int p;

  asm volatile (
      "v_shfl_b32 %0, %1, %2, %3, %4 mode:idx\n"
      : "=v" (shuffled_value), "=s" (p)
      : "v" (var), "v" (src_lane), "v" (c)
  );

  return shuffled_value;
#endif
}
__device__ inline unsigned int __shfl(unsigned int var, int src_lane,
                                      int width = warpSize) {
  union {
    int i;
    unsigned u;
    float f;
  } tmp;
  tmp.u = var;
  tmp.i = __shfl(tmp.i, src_lane, width);
  return tmp.u;
}
__device__ inline float __shfl(float var, int src_lane, int width = warpSize) {
  union {
    int i;
    unsigned u;
    float f;
  } tmp;
  tmp.f = var;
  tmp.i = __shfl(tmp.i, src_lane, width);
  return tmp.f;
}
__device__ inline double __shfl(double var, int src_lane,
                                int width = warpSize) {
  static_assert(sizeof(double) == 2 * sizeof(int), "");
  static_assert(sizeof(double) == sizeof(uint64_t), "");

  int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl(tmp[0], src_lane, width);
  tmp[1] = __shfl(tmp[1], src_lane, width);

  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  double tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
}
__device__ inline long __shfl(long var, int src_lane, int width = warpSize) {
#ifndef _MSC_VER
  static_assert(sizeof(long) == 2 * sizeof(int), "");
  static_assert(sizeof(long) == sizeof(uint64_t), "");

  int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl(tmp[0], src_lane, width);
  tmp[1] = __shfl(tmp[1], src_lane, width);

  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  long tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
#else
  static_assert(sizeof(long) == sizeof(int), "");
  return static_cast<long>(__shfl(static_cast<int>(var), src_lane, width));
#endif
}
__device__ inline unsigned long __shfl(unsigned long var, int src_lane,
                                       int width = warpSize) {
#ifndef _MSC_VER
  static_assert(sizeof(unsigned long) == 2 * sizeof(unsigned int), "");
  static_assert(sizeof(unsigned long) == sizeof(uint64_t), "");

  unsigned int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl(tmp[0], src_lane, width);
  tmp[1] = __shfl(tmp[1], src_lane, width);

  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  unsigned long tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
#else
  static_assert(sizeof(unsigned long) == sizeof(unsigned int), "");
  return static_cast<unsigned long>(
      __shfl(static_cast<unsigned int>(var), src_lane, width));
#endif
}
__device__ inline long long __shfl(long long var, int src_lane,
                                   int width = warpSize) {
  static_assert(sizeof(long long) == 2 * sizeof(int), "");
  static_assert(sizeof(long long) == sizeof(uint64_t), "");

  int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl(tmp[0], src_lane, width);
  tmp[1] = __shfl(tmp[1], src_lane, width);

  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  long long tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
}
__device__ inline unsigned long long
__shfl(unsigned long long var, int src_lane, int width = warpSize) {
  static_assert(sizeof(unsigned long long) == 2 * sizeof(unsigned int), "");
  static_assert(sizeof(unsigned long long) == sizeof(uint64_t), "");

  unsigned int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl(tmp[0], src_lane, width);
  tmp[1] = __shfl(tmp[1], src_lane, width);

  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  unsigned long long tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
}

__device__ inline int __shfl_up(int var, unsigned int lane_delta,
                                int width = warpSize) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ < 6)
  int self = __lane_id();
  int index = self - lane_delta;
  index = (index < (self & ~(width - 1))) ? self : index;
  return __builtin_xcn_ds_bpermute(index << 2, var);
#else
  // c[4:0] = width-1, c[12:8] = segmask
  unsigned int segmask = 0x1F & ~(width - 1);
  unsigned int c = (segmask << 8) | (width - 1);
  int shuffled_value;
  unsigned int p;

  asm volatile (
      "v_shfl_b32 %0, %1, %2, %3, %4 mode:up\n"
      : "=v" (shuffled_value), "=s" (p)
      : "v" (var), "v" (lane_delta), "v" (c)
  );

  return shuffled_value;
#endif
}
__device__ inline unsigned int
__shfl_up(unsigned int var, unsigned int lane_delta, int width = warpSize) {
  union {
    int i;
    unsigned u;
    float f;
  } tmp;
  tmp.u = var;
  tmp.i = __shfl_up(tmp.i, lane_delta, width);
  return tmp.u;
}
__device__ inline float __shfl_up(float var, unsigned int lane_delta,
                                  int width = warpSize) {
  union {
    int i;
    unsigned u;
    float f;
  } tmp;
  tmp.f = var;
  tmp.i = __shfl_up(tmp.i, lane_delta, width);
  return tmp.f;
}
__device__ inline double __shfl_up(double var, unsigned int lane_delta,
                                   int width = warpSize) {
  static_assert(sizeof(double) == 2 * sizeof(int), "");
  static_assert(sizeof(double) == sizeof(uint64_t), "");

  int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl_up(tmp[0], lane_delta, width);
  tmp[1] = __shfl_up(tmp[1], lane_delta, width);

  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  double tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
}
__device__ inline long __shfl_up(long var, unsigned int lane_delta,
                                 int width = warpSize) {
#ifndef _MSC_VER
  static_assert(sizeof(long) == 2 * sizeof(int), "");
  static_assert(sizeof(long) == sizeof(uint64_t), "");

  int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl_up(tmp[0], lane_delta, width);
  tmp[1] = __shfl_up(tmp[1], lane_delta, width);

  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  long tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
#else
  static_assert(sizeof(long) == sizeof(int), "");
  return static_cast<long>(__shfl_up(static_cast<int>(var), lane_delta, width));
#endif
}

__device__ inline unsigned long
__shfl_up(unsigned long var, unsigned int lane_delta, int width = warpSize) {
#ifndef _MSC_VER
  static_assert(sizeof(unsigned long) == 2 * sizeof(unsigned int), "");
  static_assert(sizeof(unsigned long) == sizeof(uint64_t), "");

  unsigned int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl_up(tmp[0], lane_delta, width);
  tmp[1] = __shfl_up(tmp[1], lane_delta, width);

  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  unsigned long tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
#else
  static_assert(sizeof(unsigned long) == sizeof(unsigned int), "");
  return static_cast<unsigned long>(
      __shfl_up(static_cast<unsigned int>(var), lane_delta, width));
#endif
}

__device__ inline long long __shfl_up(long long var, unsigned int lane_delta,
                                      int width = warpSize) {
  static_assert(sizeof(long long) == 2 * sizeof(int), "");
  static_assert(sizeof(long long) == sizeof(uint64_t), "");
  int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl_up(tmp[0], lane_delta, width);
  tmp[1] = __shfl_up(tmp[1], lane_delta, width);
  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  long long tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
}

__device__ inline unsigned long long __shfl_up(unsigned long long var,
                                               unsigned int lane_delta,
                                               int width = warpSize) {
  static_assert(sizeof(unsigned long long) == 2 * sizeof(unsigned int), "");
  static_assert(sizeof(unsigned long long) == sizeof(uint64_t), "");
  unsigned int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl_up(tmp[0], lane_delta, width);
  tmp[1] = __shfl_up(tmp[1], lane_delta, width);
  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  unsigned long long tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
}

__device__ inline int __shfl_down(int var, unsigned int lane_delta,
                                  int width = warpSize) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ < 6)
  int self = __lane_id();
  int index = self + lane_delta;
  index = (int)((self & (width - 1)) + lane_delta) >= width ? self : index;
  return __builtin_xcn_ds_bpermute(index << 2, var);
#else
  // c[4:0] = width-1, c[12:8] = segmask
  unsigned int segmask = 0x1F & ~(width - 1);
  unsigned int c = (segmask << 8) | (width - 1);
  int shuffled_value;
  unsigned int p;

  asm volatile (
      "v_shfl_b32 %0, %1, %2, %3, %4 mode:down\n"
      : "=v" (shuffled_value), "=s" (p)
      : "v" (var), "v" (lane_delta), "v" (c)
  );

  return shuffled_value;
#endif
}
__device__ inline unsigned int
__shfl_down(unsigned int var, unsigned int lane_delta, int width = warpSize) {
  union {
    int i;
    unsigned u;
    float f;
  } tmp;
  tmp.u = var;
  tmp.i = __shfl_down(tmp.i, lane_delta, width);
  return tmp.u;
}
__device__ inline float __shfl_down(float var, unsigned int lane_delta,
                                    int width = warpSize) {
  union {
    int i;
    unsigned u;
    float f;
  } tmp;
  tmp.f = var;
  tmp.i = __shfl_down(tmp.i, lane_delta, width);
  return tmp.f;
}
__device__ inline double __shfl_down(double var, unsigned int lane_delta,
                                     int width = warpSize) {
  static_assert(sizeof(double) == 2 * sizeof(int), "");
  static_assert(sizeof(double) == sizeof(uint64_t), "");

  int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl_down(tmp[0], lane_delta, width);
  tmp[1] = __shfl_down(tmp[1], lane_delta, width);

  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  double tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
}
__device__ inline long __shfl_down(long var, unsigned int lane_delta,
                                   int width = warpSize) {
#ifndef _MSC_VER
  static_assert(sizeof(long) == 2 * sizeof(int), "");
  static_assert(sizeof(long) == sizeof(uint64_t), "");

  int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl_down(tmp[0], lane_delta, width);
  tmp[1] = __shfl_down(tmp[1], lane_delta, width);

  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  long tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
#else
  static_assert(sizeof(long) == sizeof(int), "");
  return static_cast<long>(
      __shfl_down(static_cast<int>(var), lane_delta, width));
#endif
}
__device__ inline unsigned long
__shfl_down(unsigned long var, unsigned int lane_delta, int width = warpSize) {
#ifndef _MSC_VER
  static_assert(sizeof(unsigned long) == 2 * sizeof(unsigned int), "");
  static_assert(sizeof(unsigned long) == sizeof(uint64_t), "");

  unsigned int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl_down(tmp[0], lane_delta, width);
  tmp[1] = __shfl_down(tmp[1], lane_delta, width);

  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  unsigned long tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
#else
  static_assert(sizeof(unsigned long) == sizeof(unsigned int), "");
  return static_cast<unsigned long>(
      __shfl_down(static_cast<unsigned int>(var), lane_delta, width));
#endif
}
__device__ inline long long __shfl_down(long long var, unsigned int lane_delta,
                                        int width = warpSize) {
  static_assert(sizeof(long long) == 2 * sizeof(int), "");
  static_assert(sizeof(long long) == sizeof(uint64_t), "");
  int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl_down(tmp[0], lane_delta, width);
  tmp[1] = __shfl_down(tmp[1], lane_delta, width);
  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  long long tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
}
__device__ inline unsigned long long __shfl_down(unsigned long long var,
                                                 unsigned int lane_delta,
                                                 int width = warpSize) {
  static_assert(sizeof(unsigned long long) == 2 * sizeof(unsigned int), "");
  static_assert(sizeof(unsigned long long) == sizeof(uint64_t), "");
  unsigned int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl_down(tmp[0], lane_delta, width);
  tmp[1] = __shfl_down(tmp[1], lane_delta, width);
  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  unsigned long long tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
}

__device__ inline int __shfl_xor(int var, int lane_mask, int width = warpSize) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ < 6)
  int self = __lane_id();
  int index = self ^ lane_mask;
  index = index >= ((self + width) & ~(width - 1)) ? self : index;
  return __builtin_xcn_ds_bpermute(index << 2, var);
#else
  // c[4:0] = width-1, c[12:8] = segmask
  unsigned int segmask = 0x1F & ~(width - 1);
  unsigned int c = (segmask << 8) | (width - 1);
  int shuffled_value;
  unsigned int p;

  asm volatile (
      "v_shfl_b32 %0, %1, %2, %3, %4 mode:bfly\n"
      : "=v" (shuffled_value), "=s" (p)
      : "v" (var), "v" (lane_mask), "v" (c)
  );

  return shuffled_value;
#endif
}
__device__ inline unsigned int __shfl_xor(unsigned int var, int lane_mask,
                                          int width = warpSize) {
  union {
    int i;
    unsigned u;
    float f;
  } tmp;
  tmp.u = var;
  tmp.i = __shfl_xor(tmp.i, lane_mask, width);
  return tmp.u;
}
__device__ inline float __shfl_xor(float var, int lane_mask,
                                   int width = warpSize) {
  union {
    int i;
    unsigned u;
    float f;
  } tmp;
  tmp.f = var;
  tmp.i = __shfl_xor(tmp.i, lane_mask, width);
  return tmp.f;
}
__device__ inline double __shfl_xor(double var, int lane_mask,
                                    int width = warpSize) {
  static_assert(sizeof(double) == 2 * sizeof(int), "");
  static_assert(sizeof(double) == sizeof(uint64_t), "");

  int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl_xor(tmp[0], lane_mask, width);
  tmp[1] = __shfl_xor(tmp[1], lane_mask, width);

  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  double tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
}
__device__ inline long __shfl_xor(long var, int lane_mask,
                                  int width = warpSize) {
#ifndef _MSC_VER
  static_assert(sizeof(long) == 2 * sizeof(int), "");
  static_assert(sizeof(long) == sizeof(uint64_t), "");

  int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl_xor(tmp[0], lane_mask, width);
  tmp[1] = __shfl_xor(tmp[1], lane_mask, width);

  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  long tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
#else
  static_assert(sizeof(long) == sizeof(int), "");
  return static_cast<long>(__shfl_xor(static_cast<int>(var), lane_mask, width));
#endif
}
__device__ inline unsigned long __shfl_xor(unsigned long var, int lane_mask,
                                           int width = warpSize) {
#ifndef _MSC_VER
  static_assert(sizeof(unsigned long) == 2 * sizeof(unsigned int), "");
  static_assert(sizeof(unsigned long) == sizeof(uint64_t), "");

  unsigned int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl_xor(tmp[0], lane_mask, width);
  tmp[1] = __shfl_xor(tmp[1], lane_mask, width);

  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  unsigned long tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
#else
  static_assert(sizeof(unsigned long) == sizeof(unsigned int), "");
  return static_cast<unsigned long>(
      __shfl_xor(static_cast<unsigned int>(var), lane_mask, width));
#endif
}
__device__ inline long long __shfl_xor(long long var, int lane_mask,
                                       int width = warpSize) {
  static_assert(sizeof(long long) == 2 * sizeof(int), "");
  static_assert(sizeof(long long) == sizeof(uint64_t), "");
  int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl_xor(tmp[0], lane_mask, width);
  tmp[1] = __shfl_xor(tmp[1], lane_mask, width);
  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  long long tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
}
__device__ inline unsigned long long
__shfl_xor(unsigned long long var, int lane_mask, int width = warpSize) {
  static_assert(sizeof(unsigned long long) == 2 * sizeof(unsigned int), "");
  static_assert(sizeof(unsigned long long) == sizeof(uint64_t), "");
  unsigned int tmp[2];
  __builtin_memcpy(tmp, &var, sizeof(tmp));
  tmp[0] = __shfl_xor(tmp[0], lane_mask, width);
  tmp[1] = __shfl_xor(tmp[1], lane_mask, width);
  uint64_t tmp0 =
      (static_cast<uint64_t>(tmp[1]) << 32ull) | static_cast<uint32_t>(tmp[0]);
  unsigned long long tmp1;
  __builtin_memcpy(&tmp1, &tmp0, sizeof(tmp0));
  return tmp1;
}

#endif // __XCN_KERNEL_XTDK_WARP_FUNCTIONS_H__
