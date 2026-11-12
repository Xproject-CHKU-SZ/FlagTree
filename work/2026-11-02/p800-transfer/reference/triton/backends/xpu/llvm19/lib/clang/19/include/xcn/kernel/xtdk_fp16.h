#pragma once
#ifndef __XCN_KERNEL_XTDK_FP16_H__
#define __XCN_KERNEL_XTDK_FP16_H__

#if defined(__HOUYICC_RTC__)
#define __HOST_DEVICE__ __device__
#else
#define __HOST_DEVICE__ __host__ __device__
#include "xtdk_vector_functions.h"
#include <assert.h>
#if defined(__cplusplus)
#include "xtdk_type_traits.h"
#include "xtdk_utility.h"
#endif
#endif // !defined(__HOUYICC_RTC__)

#if defined(__clang__) && defined(__HOUYI__)
#define __HOUYI_CLANG_ONLY__ 1
#endif

// Rounding mode constants for FP16 conversion
// 1 = round-up, 2 = round-down, 3 = round-to-zero
#define __XTDK_ROUND_RU 1
#define __XTDK_ROUND_RD 2
#define __XTDK_ROUND_RZ 3

#if __HOUYI_CLANG_ONLY__
typedef _Float16 _Float16_2 __attribute__((ext_vector_type(2)));

struct __half_raw {
  union {
    static_assert(sizeof(_Float16) == sizeof(unsigned short), "");

    _Float16 data;
    unsigned short x;
  };
};

struct __half2_raw {
  union {
    static_assert(sizeof(_Float16_2) == sizeof(unsigned short[2]), "");

    _Float16_2 data;
    // Raw storage fields match CUDA's public __half2_raw interface.
    struct {
      unsigned short x;
      unsigned short y;
    };
  };
};

#if defined(__cplusplus)
#if !defined(__HOUYICC_RTC__)
#include "xtdk_fp16_math_fwd.h"
#include "xtdk_vector_types.h"
#include "xtdk_warp_functions.h"
#endif // !defined(__HOUYICC_RTC__)

namespace houyi_std {
template <> struct is_floating_point<_Float16> : houyi_std::true_type {};
} // namespace houyi_std

template <bool cond, typename T = void>
using Enable_if_t = typename houyi_std::enable_if<cond, T>::type;

// BEGIN STRUCT __HALF
struct __half {
protected:
  union {
    static_assert(sizeof(_Float16) == sizeof(unsigned short), "");

    _Float16 data;
    unsigned short __x;
  };

public:
  // CREATORS
  __HOST_DEVICE__
  __half() = default;
  __HOST_DEVICE__
  __half(const __half_raw &x) : data{x.data} {}
#if !defined(__HOUYI_NO_HALF_CONVERSIONS__)
  __HOST_DEVICE__
  __half(decltype(data) x) : data{x} {}
  template <typename T,
            Enable_if_t<houyi_std::is_floating_point<T>::value> * = nullptr>
  __HOST_DEVICE__ __half(T x) : data{static_cast<_Float16>(x)} {}
#endif
  __HOST_DEVICE__
  __half(const __half &) = default;
  __HOST_DEVICE__
  __half(__half &&) = default;
  __HOST_DEVICE__
  ~__half() = default;

// CREATORS - DEVICE ONLY
#if !defined(__HOUYI_NO_HALF_CONVERSIONS__)
  template <typename T,
            Enable_if_t<houyi_std::is_integral<T>::value> * = nullptr>
  __HOST_DEVICE__ __half(T x) : data{static_cast<_Float16>(x)} {}
#endif

  // MANIPULATORS
  __HOST_DEVICE__
  __half &operator=(const __half &) = default;
  __HOST_DEVICE__
  __half &operator=(__half &&) = default;
  __HOST_DEVICE__
  __half &operator=(const __half_raw &x) {
    data = x.data;
    return *this;
  }
  __HOST_DEVICE__
  volatile __half &operator=(const __half_raw &x) volatile {
    data = x.data;
    return *this;
  }
  volatile __half &operator=(const volatile __half_raw &x) volatile {
    data = x.data;
    return *this;
  }
  __half &operator=(__half_raw &&x) {
    data = x.data;
    return *this;
  }
  volatile __half &operator=(__half_raw &&x) volatile {
    data = x.data;
    return *this;
  }
  volatile __half &operator=(volatile __half_raw &&x) volatile {
    data = x.data;
    return *this;
  }
#if !defined(__HOUYI_NO_HALF_CONVERSIONS__)
  template <typename T,
            Enable_if_t<houyi_std::is_floating_point<T>::value> * = nullptr>
  __HOST_DEVICE__ __half &operator=(T x) {
    data = static_cast<_Float16>(x);
    return *this;
  }
#endif

// MANIPULATORS - DEVICE ONLY
#if !defined(__HOUYI_NO_HALF_CONVERSIONS__)
  template <typename T,
            Enable_if_t<houyi_std::is_integral<T>::value> * = nullptr>
  __device__ __half &operator=(T x) {
    data = static_cast<_Float16>(x);
    return *this;
  }
#endif

#if !defined(__HOUYI_NO_HALF_OPERATORS__)
  __HOST_DEVICE__ __half &operator+=(const __half &x) {
    data += x.data;
    return *this;
  }
  __HOST_DEVICE__ __half &operator-=(const __half &x) {
    data -= x.data;
    return *this;
  }
  __HOST_DEVICE__ __half &operator*=(const __half &x) {
    data *= x.data;
    return *this;
  }
  __HOST_DEVICE__ __half &operator/=(const __half &x) {
    data /= x.data;
    return *this;
  }
  __HOST_DEVICE__ __half &operator++() {
    ++data;
    return *this;
  }
  __HOST_DEVICE__ __half operator++(int) {
    __half tmp{*this};
    ++*this;
    return tmp;
  }
  __HOST_DEVICE__ __half &operator--() {
    --data;
    return *this;
  }
  __HOST_DEVICE__ __half operator--(int) {
    __half tmp{*this};
    --*this;
    return tmp;
  }
#endif

// ACCESSORS
#if !defined(__HOUYI_NO_HALF_CONVERSIONS__)
  template <typename T,
            Enable_if_t<houyi_std::is_floating_point<T>::value> * = nullptr>
  __HOST_DEVICE__ operator T() const {
    return data;
  }
#endif
  __HOST_DEVICE__
  operator __half_raw() const { return __half_raw{data}; }
  __HOST_DEVICE__
  operator __half_raw() const volatile { return __half_raw{data}; }

#if !defined(__HOUYI_NO_HALF_CONVERSIONS__)
  template <typename T,
            Enable_if_t<houyi_std::is_integral<T>::value> * = nullptr>
  __HOST_DEVICE__ operator T() const {
    return data;
  }
#endif

  __HOST_DEVICE__ __half operator+() const { return *this; }
  __HOST_DEVICE__ __half operator-() const {
    __half tmp{*this};
    tmp.data = -tmp.data;
    return tmp;
  }

// FRIENDS
#if !defined(__HOUYI_NO_HALF_OPERATORS__)
  friend inline __HOST_DEVICE__ __half operator+(const __half &x,
                                                 const __half &y) {
    return __half{x} += y;
  }
  friend inline __HOST_DEVICE__ __half operator-(const __half &x,
                                                 const __half &y) {
    return __half{x} -= y;
  }
  friend inline __HOST_DEVICE__ __half operator*(const __half &x,
                                                 const __half &y) {
    return __half{x} *= y;
  }
  friend inline __HOST_DEVICE__ __half operator/(const __half &x,
                                                 const __half &y) {
    return __half{x} /= y;
  }
  friend inline __HOST_DEVICE__ bool operator==(const __half &x,
                                                const __half &y) {
    return x.data == y.data;
  }
  friend inline __HOST_DEVICE__ bool operator!=(const __half &x,
                                                const __half &y) {
    return !(x == y);
  }
  friend inline __HOST_DEVICE__ bool operator<(const __half &x,
                                               const __half &y) {
    return x.data < y.data;
  }
  friend inline __HOST_DEVICE__ bool operator>(const __half &x,
                                               const __half &y) {
    return y.data < x.data;
  }
  friend inline __HOST_DEVICE__ bool operator<=(const __half &x,
                                                const __half &y) {
    return !(y < x);
  }
  friend inline __HOST_DEVICE__ bool operator>=(const __half &x,
                                                const __half &y) {
    return !(x < y);
  }
#endif // !defined(__HOUYI_NO_HALF_OPERATORS__)
};
// END STRUCT __HALF

// BEGIN STRUCT __HALF2
struct __half2 {
public:
  union {
    static_assert(sizeof(_Float16_2) == sizeof(unsigned short[2]), "");

    struct {
      __half x;
      __half y;
    };
    _Float16_2 data;
  };

  // CREATORS
  __HOST_DEVICE__
  __half2() = default;
  __HOST_DEVICE__
  __half2(const __half2_raw &x) : data{x.data} {}
  __HOST_DEVICE__
  __half2(decltype(data) x) : data{x} {}
  __HOST_DEVICE__
  __half2(const __half &x, const __half &y)
      : data{static_cast<__half_raw>(x).data, static_cast<__half_raw>(y).data} {
  }
  __HOST_DEVICE__
  __half2(const __half2 &) = default;
  __HOST_DEVICE__
  __half2(__half2 &&) = default;
  __HOST_DEVICE__
  ~__half2() = default;

  // MANIPULATORS
  __HOST_DEVICE__
  __half2 &operator=(const __half2 &) = default;
  __HOST_DEVICE__
  __half2 &operator=(__half2 &&) = default;
  __HOST_DEVICE__
  __half2 &operator=(const __half2_raw &x) {
    data = x.data;
    return *this;
  }

// MANIPULATORS - DEVICE ONLY
#if !defined(__HOUYI_NO_HALF_OPERATORS__)
  __HOST_DEVICE__ __half2 &operator+=(const __half2 &x) {
    data += x.data;
    return *this;
  }
  __HOST_DEVICE__ __half2 &operator-=(const __half2 &x) {
    data -= x.data;
    return *this;
  }
  __HOST_DEVICE__ __half2 &operator*=(const __half2 &x) {
    data *= x.data;
    return *this;
  }
  __HOST_DEVICE__ __half2 &operator/=(const __half2 &x) {
    data /= x.data;
    return *this;
  }
  __HOST_DEVICE__ __half2 &operator++() { return *this += _Float16_2{1, 1}; }
  __HOST_DEVICE__ __half2 operator++(int) {
    __half2 tmp{*this};
    ++*this;
    return tmp;
  }
  __HOST_DEVICE__ __half2 &operator--() { return *this -= _Float16_2{1, 1}; }
  __HOST_DEVICE__ __half2 operator--(int) {
    __half2 tmp{*this};
    --*this;
    return tmp;
  }
#endif

  // ACCESSORS
  __HOST_DEVICE__
  operator decltype(data)() const { return data; }
  __HOST_DEVICE__
  operator __half2_raw() const { return __half2_raw{data}; }

// ACCESSORS - DEVICE ONLY
#if !defined(__HOUYI_NO_HALF_OPERATORS__)
  __HOST_DEVICE__ __half2 operator+() const { return *this; }
  __HOST_DEVICE__ __half2 operator-() const {
    __half2 tmp{*this};
    tmp.data = -tmp.data;
    return tmp;
  }
#endif

// FRIENDS
#if !defined(__HOUYI_NO_HALF_OPERATORS__)
  friend inline __HOST_DEVICE__ __half2 operator+(const __half2 &x,
                                                  const __half2 &y) {
    return __half2{x} += y;
  }
  friend inline __HOST_DEVICE__ __half2 operator-(const __half2 &x,
                                                  const __half2 &y) {
    return __half2{x} -= y;
  }
  friend inline __HOST_DEVICE__ __half2 operator*(const __half2 &x,
                                                  const __half2 &y) {
    return __half2{x} *= y;
  }
  friend inline __HOST_DEVICE__ __half2 operator/(const __half2 &x,
                                                  const __half2 &y) {
    return __half2{x} /= y;
  }
  friend inline __HOST_DEVICE__ bool operator==(const __half2 &x,
                                                const __half2 &y) {
    auto r = x.data == y.data;
    return r.x != 0 && r.y != 0;
  }
  friend inline __HOST_DEVICE__ bool operator!=(const __half2 &x,
                                                const __half2 &y) {
    return !(x == y);
  }
  friend inline __HOST_DEVICE__ bool operator<(const __half2 &x,
                                               const __half2 &y) {
    auto r = x.data < y.data;
    return r.x != 0 && r.y != 0;
  }
  friend inline __HOST_DEVICE__ bool operator>(const __half2 &x,
                                               const __half2 &y) {
    return y < x;
  }
  friend inline __HOST_DEVICE__ bool operator<=(const __half2 &x,
                                                const __half2 &y) {
    return !(y < x);
  }
  friend inline __HOST_DEVICE__ bool operator>=(const __half2 &x,
                                                const __half2 &y) {
    return !(x < y);
  }
#endif // !defined(__HOUYI_NO_HALF_OPERATORS__)
};
// END STRUCT __HALF2

// BEGIN PACKED HALF TYPES (for packed pseudo builtins)
typedef _Float16 _Float16_4 __attribute__((ext_vector_type(4)));
typedef _Float16 _Float16_8 __attribute__((ext_vector_type(8)));
typedef _Float16 _Float16_16 __attribute__((ext_vector_type(16)));

struct __half4 {
  union {
    _Float16_4 data;
    struct {
      __half2 low, high;
    };
  };
  __HOST_DEVICE__ __half4() = default;
  __HOST_DEVICE__ __half4(_Float16_4 d) : data(d) {}
  __HOST_DEVICE__ __half4(__half2 lo, __half2 hi) {
    __builtin_memcpy(&data, &lo, sizeof(lo));
    _Float16_2 tmp;
    __builtin_memcpy(&tmp, &hi, sizeof(hi));
    data[2] = tmp[0];
    data[3] = tmp[1];
  }
  __HOST_DEVICE__ __half4(__half a, __half b, __half c, __half d)
      : __half4(__half2(a, b), __half2(c, d)) {}
};

struct __half8 {
  union {
    _Float16_8 data;
    struct {
      __half4 low, high;
    };
  };
  __HOST_DEVICE__ __half8() = default;
  __HOST_DEVICE__ __half8(_Float16_8 d) : data(d) {}
  __HOST_DEVICE__ __half8(__half4 lo, __half4 hi) {
    __builtin_memcpy(&data, &lo.data, sizeof(lo.data));
    _Float16_4 tmp;
    __builtin_memcpy(&tmp, &hi.data, sizeof(hi.data));
    data[4] = tmp[0]; data[5] = tmp[1]; data[6] = tmp[2]; data[7] = tmp[3];
  }
  __HOST_DEVICE__ __half8(__half2 a, __half2 b, __half2 c, __half2 d)
      : __half8(__half4(a, b), __half4(c, d)) {}
  __HOST_DEVICE__ __half8(__half s0, __half s1, __half s2, __half s3,
                          __half s4, __half s5, __half s6, __half s7)
      : __half8(__half4(s0, s1, s2, s3), __half4(s4, s5, s6, s7)) {}
};

struct __half16 {
  union {
    _Float16_16 data;
    struct {
      __half8 low, high;
    };
  };
  __HOST_DEVICE__ __half16() = default;
  __HOST_DEVICE__ __half16(_Float16_16 d) : data(d) {}
  __HOST_DEVICE__ __half16(__half8 lo, __half8 hi) {
    __builtin_memcpy(&data, &lo.data, sizeof(lo.data));
    _Float16_8 tmp;
    __builtin_memcpy(&tmp, &hi.data, sizeof(hi.data));
    data[8] = tmp[0]; data[9] = tmp[1]; data[10] = tmp[2]; data[11] = tmp[3];
    data[12] = tmp[4]; data[13] = tmp[5]; data[14] = tmp[6]; data[15] = tmp[7];
  }
  __HOST_DEVICE__ __half16(__half4 a, __half4 b, __half4 c, __half4 d)
      : __half16(__half8(a, b), __half8(c, d)) {}
  __HOST_DEVICE__ __half16(__half2 a, __half2 b, __half2 c, __half2 d,
                           __half2 e, __half2 f, __half2 g, __half2 h)
      : __half16(__half8(__half4(a, b), __half4(c, d)),
                 __half8(__half4(e, f), __half4(g, h))) {}
  __HOST_DEVICE__ __half16(__half s0, __half s1, __half s2, __half s3,
                           __half s4, __half s5, __half s6, __half s7,
                           __half s8, __half s9, __half s10, __half s11,
                           __half s12, __half s13, __half s14, __half s15)
      : __half16(__half8(s0, s1, s2, s3, s4, s5, s6, s7),
                 __half8(s8, s9, s10, s11, s12, s13, s14, s15)) {}
};
// END PACKED HALF TYPES

inline __HOST_DEVICE__ __half2 make_half2(__half x, __half y) {
  return __half2{x, y};
}

inline __HOST_DEVICE__ __half __low2half(__half2 x) {
  return __half{__half_raw{static_cast<__half2_raw>(x).data.x}};
}

inline __HOST_DEVICE__ __half __high2half(__half2 x) {
  return __half{__half_raw{static_cast<__half2_raw>(x).data.y}};
}

inline __HOST_DEVICE__ __half2 __half2half2(__half x) { return __half2{x, x}; }

inline __HOST_DEVICE__ __half2 __halves2half2(__half x, __half y) {
  return __half2{x, y};
}

inline __HOST_DEVICE__ __half2 __low2half2(__half2 x) {
  return __half2{_Float16_2{static_cast<__half2_raw>(x).data.x,
                            static_cast<__half2_raw>(x).data.x}};
}

inline __HOST_DEVICE__ __half2 __high2half2(__half2 x) {
  return __half2_raw{_Float16_2{static_cast<__half2_raw>(x).data.y,
                                static_cast<__half2_raw>(x).data.y}};
}

inline __HOST_DEVICE__ __half2 __lows2half2(__half2 x, __half2 y) {
  return __half2_raw{_Float16_2{static_cast<__half2_raw>(x).data.x,
                                static_cast<__half2_raw>(y).data.x}};
}

inline __HOST_DEVICE__ __half2 __highs2half2(__half2 x, __half2 y) {
  return __half2_raw{_Float16_2{static_cast<__half2_raw>(x).data.y,
                                static_cast<__half2_raw>(y).data.y}};
}

inline __HOST_DEVICE__ __half2 __lowhigh2highlow(__half2 x) {
  return __half2_raw{_Float16_2{static_cast<__half2_raw>(x).data.y,
                                static_cast<__half2_raw>(x).data.x}};
}

// Bitcasts
inline __HOST_DEVICE__ short __half_as_short(__half x) {
  return static_cast<__half_raw>(x).x;
}

inline __HOST_DEVICE__ unsigned short __half_as_ushort(__half x) {
  return static_cast<__half_raw>(x).x;
}

inline __HOST_DEVICE__ __half __short_as_half(short x) {
  __half_raw r;
  r.x = x;
  return r;
}

inline __HOST_DEVICE__ __half __ushort_as_half(unsigned short x) {
  __half_raw r;
  r.x = x;
  return r;
}

// float -> half | half2
inline __HOST_DEVICE__ __half __float2half(float x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __HOST_DEVICE__ __half __float2half_rn(float x) {
  return __half_raw{static_cast<_Float16>(x)};
}
#if !defined(__HOUYICC_RTC__)
// TODO: rounding behaviour is not correct for host functions.
inline __host__ __half __float2half_rz(float x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __host__ __half __float2half_rd(float x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __host__ __half __float2half_ru(float x) {
  return __half_raw{static_cast<_Float16>(x)};
}
#endif

// double -> half
inline __HOST_DEVICE__ __half __double2half(double x) {
  return __float2half((float) x);
}

// hwreg(id, offset, size) encoding = id | (offset << 6) | ((size-1) << 11)
// HW_REG_MODE id = 1
static constexpr unsigned __XPU_HWREG_MODE_FULL = 0xF801U; // (1,  0, 32)
static constexpr unsigned __XPU_HWREG_MODE_F16_RND =
    0x0881U; // (1,  2,  2) => MODE[3:2]
// v_cvt_f16_f32 rounding mode encoding in HW_REG_MODE[3:2]
static constexpr unsigned __XPU_F16_CVT_ROUND_RP = 1U; // toward +infinity
static constexpr unsigned __XPU_F16_CVT_ROUND_RM = 2U; // toward -infinity
static constexpr unsigned __XPU_F16_CVT_ROUND_RZ = 3U; // toward zero

inline __device__ __half __float2half_with_round(float x, unsigned mode) {
  unsigned oldMode = __builtin_xcn_s_getreg(__XPU_HWREG_MODE_FULL);
  __builtin_xcn_s_setreg(__XPU_HWREG_MODE_F16_RND, mode);
  __half_raw raw{static_cast<_Float16>(x)};
  __builtin_xcn_s_setreg(__XPU_HWREG_MODE_FULL, oldMode);
  return raw;
}

inline __device__ __half __float2half_rz(float x) {
  unsigned short res;
  unsigned oldMode;
  asm volatile("s_getreg_b32 %0, hwreg(HW_REG_MODE)" : "=s"(oldMode) :);
  unsigned rzMode = __XTDK_ROUND_RZ;
  asm volatile("s_setreg_b32 hwreg(HW_REG_MODE, 2, 2) %0" : : "s"(rzMode));
  __asm__ __volatile__("v_cvt_f16_f32 %0, %1" : "=v"(res) : "v"(x));
  asm volatile("s_setreg_b32 hwreg(HW_REG_MODE) %0" : : "s"(oldMode));
  __half_raw raw;
  raw.x = res;
  return raw;
}
inline __device__ __half __float2half_rd(float x) {
  unsigned short res;
  unsigned oldMode;
  asm volatile("s_getreg_b32 %0, hwreg(HW_REG_MODE)" : "=s"(oldMode) :);
  unsigned rdMode = __XTDK_ROUND_RD;
  asm volatile("s_setreg_b32 hwreg(HW_REG_MODE, 2, 2) %0" : : "s"(rdMode));
  __asm__ __volatile__("v_cvt_f16_f32 %0, %1" : "=v"(res) : "v"(x));
  asm volatile("s_setreg_b32 hwreg(HW_REG_MODE) %0" : : "s"(oldMode));
  __half_raw raw;
  raw.x = res;
  return raw;
}
inline __device__ __half __float2half_ru(float x) {
  unsigned short res;
  unsigned oldMode;
  asm volatile("s_getreg_b32 %0, hwreg(HW_REG_MODE)" : "=s"(oldMode) :);
  unsigned ruMode = __XTDK_ROUND_RU;
  asm volatile("s_setreg_b32 hwreg(HW_REG_MODE, 2, 2) %0" : : "s"(ruMode));
  __asm__ __volatile__("v_cvt_f16_f32 %0, %1" : "=v"(res) : "v"(x));
  asm volatile("s_setreg_b32 hwreg(HW_REG_MODE) %0" : : "s"(oldMode));
  __half_raw raw;
  raw.x = res;
  return raw;
}
inline __HOST_DEVICE__ __half2 __float2half2_rn(float x) {
  return __half2_raw{
      _Float16_2{static_cast<_Float16>(x), static_cast<_Float16>(x)}};
}
inline __HOST_DEVICE__ __half2 __floats2half2_rn(float x, float y) {
  return __half2_raw{
      _Float16_2{static_cast<_Float16>(x), static_cast<_Float16>(y)}};
}
inline __HOST_DEVICE__ __half2 __float22half2_rn(float2 x) {
  return __floats2half2_rn(x.x, x.y);
}

// half | half2 -> float
inline __HOST_DEVICE__ float __half2float(__half x) {
  return static_cast<__half_raw>(x).data;
}
inline __HOST_DEVICE__ float __low2float(__half2 x) {
  return static_cast<__half2_raw>(x).data.x;
}
inline __HOST_DEVICE__ float __high2float(__half2 x) {
  return static_cast<__half2_raw>(x).data.y;
}
inline __HOST_DEVICE__ float2 __half22float2(__half2 x) {
  return make_float2(static_cast<__half2_raw>(x).data.x,
                     static_cast<__half2_raw>(x).data.y);
}

// half -> int
inline __device__ int __half2int_rn(__half x) {
  return static_cast<__half_raw>(x).data;
}
inline __HOST_DEVICE__ int __half2int_rz(__half x) {
#if defined(__XPU_ARCH__)
  return __half2float(x);
#else
  int i;
  const float f = __half2float(x);
  const int max_val = (int)0x7fffffffU;
  const int min_val = (int)0x80000000U;
  const unsigned short bits =
      static_cast<unsigned short>(static_cast<__half_raw>(x).x << 1U);
  // saturation fixup
  if (bits > (unsigned short)0xF800U) {
    // NaN
    i = 0;
  } else if (f > static_cast<float>(max_val)) {
    // saturate maximum
    i = max_val;
  } else if (f < static_cast<float>(min_val)) {
    // saturate minimum
    i = min_val;
  } else {
    // normal value, conversion is well-defined
    i = static_cast<int>(f);
  }
  return i;
#endif /* (defined(__XPU_ARCH__)) */
}
inline __device__ int __half2int_rd(__half x) {
  return static_cast<__half_raw>(x).data;
}
inline __device__ int __half2int_ru(__half x) {
  return static_cast<__half_raw>(x).data;
}

// int -> half
inline __device__ __half __int2half_rn(int x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __device__ __half __int2half_rz(int x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __device__ __half __int2half_rd(int x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __device__ __half __int2half_ru(int x) {
  return __half_raw{static_cast<_Float16>(x)};
}

// half -> short
inline __device__ short __half2short_rn(__half x) {
  return static_cast<__half_raw>(x).data;
}
inline __HOST_DEVICE__ short __half2short_rz(__half x) {
#if defined(__XPU_ARCH__)
  return static_cast<__half_raw>(x).data;
#else
  short int i;
  const float f = __half2float(x);
  const short int max_val = (short int)0x7fffU;
  const short int min_val = (short int)0x8000U;
  const unsigned short bits =
      static_cast<unsigned short>(static_cast<__half_raw>(x).x << 1U);
  // saturation fixup
  if (bits > (unsigned short)0xF800U) {
    // NaN
    i = 0;
  } else if (f > static_cast<float>(max_val)) {
    // saturate maximum
    i = max_val;
  } else if (f < static_cast<float>(min_val)) {
    // saturate minimum
    i = min_val;
  } else {
    // normal value, conversion is well-defined
    i = static_cast<short int>(f);
  }
  return i;
#endif /* (defined(__XPU_ARCH__)) */
}
inline __device__ short __half2short_rd(__half x) {
  return static_cast<__half_raw>(x).data;
}
inline __device__ short __half2short_ru(__half x) {
  return static_cast<__half_raw>(x).data;
}

// short -> half
inline __device__ __half __short2half_rn(short x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __device__ __half __short2half_rz(short x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __device__ __half __short2half_rd(short x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __device__ __half __short2half_ru(short x) {
  return __half_raw{static_cast<_Float16>(x)};
}

// half -> long long
inline __device__ long long __half2ll_rn(__half x) {
  return static_cast<__half_raw>(x).data;
}
inline __HOST_DEVICE__ long long __half2ll_rz(__half x) {
  long long int i;
  const float f = __half2float(x);
  const long long int max_val = (long long int)0x7fffffffffffffffULL;
  const long long int min_val = (long long int)0x8000000000000000ULL;
  const unsigned short bits =
      static_cast<unsigned short>(static_cast<__half_raw>(x).x << 1U);
  // saturation fixup
  if (bits > (unsigned short)0xF800U) {
    // NaN
    i = min_val;
  } else if (f > static_cast<float>(max_val)) {
    // saturate maximum
    i = max_val;
  } else if (f < static_cast<float>(min_val)) {
    // saturate minimum
    i = min_val;
  } else {
    // normal value, conversion is well-defined
    i = static_cast<long long int>(f);
  }
  return i;
}
inline __device__ long long __half2ll_rd(__half x) {
  return static_cast<__half_raw>(x).data;
}
inline __device__ long long __half2ll_ru(__half x) {
  return static_cast<__half_raw>(x).data;
}

// long long -> half
inline __device__ __half __ll2half_rn(long long x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __device__ __half __ll2half_rz(long long x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __device__ __half __ll2half_rd(long long x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __device__ __half __ll2half_ru(long long x) {
  return __half_raw{static_cast<_Float16>(x)};
}

// half -> unsigned int
inline __device__ unsigned int __half2uint_rn(__half x) {
  return static_cast<__half_raw>(x).data;
}
inline __HOST_DEVICE__ unsigned int __half2uint_rz(__half x) {
#if defined(__XPU_ARCH__)
  return __half2float(x);
#else
  unsigned int i;
  const float f = __half2float(x);
  const unsigned int max_val = 0xffffffffU;
  const unsigned int min_val = 0U;
  const unsigned short bits =
      static_cast<unsigned short>(static_cast<__half_raw>(x).x << 1U);
  // saturation fixup
  if (bits > (unsigned short)0xF800U) {
    // NaN
    i = 0U;
  } else if (f > static_cast<float>(max_val)) {
    // saturate maximum
    i = max_val;
  } else if (f < static_cast<float>(min_val)) {
    // saturate minimum
    i = min_val;
  } else {
    // normal value, conversion is well-defined
    i = static_cast<unsigned int>(f);
  }
  return i;
#endif /* (defined(__XPU_ARCH__)) */
}
inline __device__ unsigned int __half2uint_rd(__half x) {
  return static_cast<__half_raw>(x).data;
}
inline __device__ unsigned int __half2uint_ru(__half x) {
  return static_cast<__half_raw>(x).data;
}
// half -> unsigned int (direct v_cvt_u16_f16, simplified for performance)
inline __device__ unsigned int __half2uint_fast(const __half x) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  unsigned int tmp;
  asm("v_cvt_u16_f16 %0, %1;" : "=v"(tmp) : "v"(x));
  return tmp;
#else
  return __half2uint_rn(x);
#endif
}

// unsigned int -> half
inline __device__ __half __uint2half_rn(unsigned int x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __device__ __half __uint2half_rz(unsigned int x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __device__ __half __uint2half_rd(unsigned int x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __device__ __half __uint2half_ru(unsigned int x) {
  return __half_raw{static_cast<_Float16>(x)};
}

// half -> unsigned short
inline unsigned short __half2ushort_rn(__half x) {
  return static_cast<__half_raw>(x).data;
}
inline __HOST_DEVICE__ unsigned short __half2ushort_rz(__half x) {
#if defined(__XPU_ARCH__)
  return static_cast<__half_raw>(x).data;
#else
  unsigned short int i;
  const float f = __half2float(x);
  const unsigned short int max_val = 0xffffU;
  const unsigned short int min_val = 0U;
  const unsigned short bits =
      static_cast<unsigned short>(static_cast<__half_raw>(x).x << 1U);
  // saturation fixup
  if (bits > (unsigned short)0xF800U) {
    // NaN
    i = 0U;
  } else if (f > static_cast<float>(max_val)) {
    // saturate maximum
    i = max_val;
  } else if (f < static_cast<float>(min_val)) {
    // saturate minimum
    i = min_val;
  } else {
    // normal value, conversion is well-defined
    i = static_cast<unsigned short int>(f);
  }
  return i;
#endif /* (defined(__XPU_ARCH__)) */
}
inline __device__ unsigned short __half2ushort_rd(__half x) {
  return static_cast<__half_raw>(x).data;
}
inline __device__ unsigned short __half2ushort_ru(__half x) {
  return static_cast<__half_raw>(x).data;
}

// unsigned short -> half
inline __device__ __half __ushort2half_rn(unsigned short x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __device__ __half __ushort2half_rz(unsigned short x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __device__ __half __ushort2half_rd(unsigned short x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __device__ __half __ushort2half_ru(unsigned short x) {
  return __half_raw{static_cast<_Float16>(x)};
}

// half -> unsigned long long
inline __device__ unsigned long long __half2ull_rn(__half x) {
  return static_cast<__half_raw>(x).data;
}
inline __HOST_DEVICE__ unsigned long long __half2ull_rz(__half x) {
  unsigned long long int i;
  const float f = __half2float(x);
  const unsigned long long int max_val = 0xffffffffffffffffULL;
  const unsigned long long int min_val = 0ULL;
  const unsigned short bits =
      static_cast<unsigned short>(static_cast<__half_raw>(x).x << 1U);
  // saturation fixup
  if (bits > (unsigned short)0xF800U) {
    // NaN
    i = 0x8000000000000000ULL;
  } else if (f > static_cast<float>(max_val)) {
    // saturate maximum
    i = max_val;
  } else if (f < static_cast<float>(min_val)) {
    // saturate minimum
    i = min_val;
  } else {
    // normal value, conversion is well-defined
    i = static_cast<unsigned long long int>(f);
  }
  return i;
}
inline __device__ unsigned long long __half2ull_rd(__half x) {
  return static_cast<__half_raw>(x).data;
}
inline __device__ unsigned long long __half2ull_ru(__half x) {
  return static_cast<__half_raw>(x).data;
}

// unsigned long long -> half
inline __device__ __half __ull2half_rn(unsigned long long x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __device__ __half __ull2half_rz(unsigned long long x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __device__ __half __ull2half_rd(unsigned long long x) {
  return __half_raw{static_cast<_Float16>(x)};
}
inline __device__ __half __ull2half_ru(unsigned long long x) {
  return __half_raw{static_cast<_Float16>(x)};
}

// half -> signed char
inline __HOST_DEVICE__ signed char __half2char_rz(const __half h) {
  signed char i;
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  unsigned int tmp;
  asm("v_cvt_i8_f16 %0, %1;" : "=v"(tmp) : "v"(h));
  const unsigned char u = static_cast<unsigned char>(tmp);
  i = static_cast<signed char>(u);
#else
  const float f = __half2float(h);
  const signed char max_val = (signed char)0x7fU;
  const signed char min_val = (signed char)0x80U;
  const unsigned short bits =
      static_cast<unsigned short>(static_cast<__half_raw>(h).x << 1U);
  // saturation fixup
  if (bits > (unsigned short)0xF800U) {
    // NaN
    i = 0;
  } else if (f > static_cast<float>(max_val)) {
    // saturate maximum
    i = max_val;
  } else if (f < static_cast<float>(min_val)) {
    // saturate minimum
    i = min_val;
  } else {
    // normal value, conversion is well-defined
    i = static_cast<signed char>(f);
  }
#endif
  return i;
}

// half -> unsigned char
inline __HOST_DEVICE__ unsigned char __half2uchar_rz(const __half h) {
  unsigned char i;
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  unsigned int tmp;
  asm("v_cvt_u8_f16 %0, %1;" : "=v"(tmp) : "v"(h));
  i = static_cast<unsigned char>(tmp);
#else
  const float f = __half2float(h);
  const unsigned char max_val = 0xffU;
  const unsigned char min_val = 0U;
  const unsigned short bits =
      static_cast<unsigned short>(static_cast<__half_raw>(h).x << 1U);
  // saturation fixup
  if (bits > (unsigned short)0xF800U) {
    // NaN
    i = 0U;
  } else if (f > static_cast<float>(max_val)) {
    // saturate maximum
    i = max_val;
  } else if (f < static_cast<float>(min_val)) {
    // saturate minimum
    i = min_val;
  } else {
    // normal value, conversion is well-defined
    i = static_cast<unsigned char>(f);
  }
#endif
  return i;
}

// Load primitives
inline __device__ __half __ldg(const __half *ptr) { return *ptr; }
inline __device__ __half __ldcg(const __half *ptr) {
  __half tmp;
  asm volatile("global_load_u16 %0, %1 off llca:15 glc" : "=v"(tmp) : "v"(ptr));
  return tmp;
}
inline __device__ __half __ldca(const __half *ptr) {
  __half tmp;
  asm volatile("global_load_u16 %0, %1 off llca:15" : "=v"(tmp) : "v"(ptr));
  return tmp;
}
inline __device__ __half __ldcs(const __half *ptr) { return *ptr; }
inline __device__ __half __ldlu(const __half *ptr) { return *ptr; }
inline __device__ __half __ldcv(const __half *ptr) { return *ptr; }

inline __HOST_DEVICE__ __half2 __ldg(const __half2 *ptr) { return *ptr; }
inline __HOST_DEVICE__ __half2 __ldcg(const __half2 *ptr) {
  __half2 tmp;
  asm volatile("global_load_b32 %0, %1 off llca:15 glc" : "=v"(tmp) : "v"(ptr));
  return tmp;
}
inline __HOST_DEVICE__ __half2 __ldca(const __half2 *ptr) {
  __half2 tmp;
  asm volatile("global_load_b32 %0, %1 off llca:15" : "=v"(tmp) : "v"(ptr));
  return tmp;
}
inline __HOST_DEVICE__ __half2 __ldcs(const __half2 *ptr) { return *ptr; }
inline __HOST_DEVICE__ __half2 __ldlu(const __half2 *ptr) { return *ptr; }
inline __HOST_DEVICE__ __half2 __ldcv(const __half2 *ptr) { return *ptr; }

// Store primitives
inline __HOST_DEVICE__ void __stwb(__half *const ptr, const __half value) {
  *ptr = value;
}

inline __HOST_DEVICE__ void __stwb(__half2 *const ptr, const __half2 value) {
  *ptr = value;
}

inline __HOST_DEVICE__ void __stcs(__half *const ptr, const __half value) {
  *ptr = value;
}

inline __HOST_DEVICE__ void __stcs(__half2 *const ptr, const __half2 value) {
  *ptr = value;
}

inline __HOST_DEVICE__ void __stcg(__half *const ptr, const __half value) {
  asm volatile("global_store_b16 %0, %1, off llca:15 glc" ::"v"(ptr),
               "v"(value));
}

inline __HOST_DEVICE__ void __stcg(__half2 *const ptr, const __half2 value) {
  asm volatile("global_store_b32 %0, %1, off llca:15 glc" ::"v"(ptr),
               "v"(value));
}

// Relations
inline __device__ bool __heq(__half x, __half y) {
  return static_cast<__half_raw>(x).data == static_cast<__half_raw>(y).data;
}
inline __device__ bool __hne(__half x, __half y) {
  return static_cast<__half_raw>(x).data != static_cast<__half_raw>(y).data;
}
inline __device__ bool __hle(__half x, __half y) {
  return static_cast<__half_raw>(x).data <= static_cast<__half_raw>(y).data;
}
inline __device__ bool __hge(__half x, __half y) {
  return static_cast<__half_raw>(x).data >= static_cast<__half_raw>(y).data;
}
inline __device__ bool __hlt(__half x, __half y) {
  return static_cast<__half_raw>(x).data < static_cast<__half_raw>(y).data;
}
inline __device__ bool __hgt(__half x, __half y) {
  return static_cast<__half_raw>(x).data > static_cast<__half_raw>(y).data;
}
inline __device__ bool __hequ(__half x, __half y) { return __heq(x, y); }
inline __device__ bool __hneu(__half x, __half y) { return __hne(x, y); }
inline __device__ bool __hleu(__half x, __half y) { return __hle(x, y); }
inline __device__ bool __hgeu(__half x, __half y) { return __hge(x, y); }
inline __device__ bool __hltu(__half x, __half y) { return __hlt(x, y); }
inline __device__ bool __hgtu(__half x, __half y) { return __hgt(x, y); }

#if !defined (__XPU_ARCH__) || (__XPU_ARCH__ >= 6)
typedef __attribute__((address_space(3))) void *SHARED_PTR;

inline __device__ unsigned long long
ds_load_exp_m2n2_f16(void *shared_load_ptr, unsigned int max_value, uint32_t stride) {
  return __builtin_xcn_ds_load_exp_m2n2_f16((SHARED_PTR)shared_load_ptr, max_value, stride);
}

inline __device__ unsigned long long
ds_load_add_m2n2_f16(void *shared_load_ptr, unsigned int add_value, uint32_t stride) {
  return __builtin_xcn_ds_load_add_m2n2_f16((SHARED_PTR)shared_load_ptr, add_value, stride);
}

inline __device__ unsigned long long
ds_load_sub_m2n2_f16(void *shared_load_ptr, unsigned int sub_value, uint32_t stride) {
  return __builtin_xcn_ds_load_sub_m2n2_f16((SHARED_PTR)shared_load_ptr, sub_value, stride);
}

inline __device__ unsigned long long
ds_load_subrev_m2n2_f16(void *shared_load_ptr, unsigned int subrev_value, uint32_t stride) {
  return __builtin_xcn_ds_load_subrev_m2n2_f16((SHARED_PTR)shared_load_ptr, subrev_value, stride);
}

inline __device__ unsigned long long
ds_load_max_m2n2_f16(void *shared_load_ptr, unsigned int max_value, uint32_t stride) {
  return __builtin_xcn_ds_load_max_m2n2_f16((SHARED_PTR)shared_load_ptr, max_value, stride);
}

inline __device__ unsigned long long
ds_load_amax_m2n2_f16(void *shared_load_ptr, unsigned int amax_value, uint32_t stride) {
  return __builtin_xcn_ds_load_amax_m2n2_f16((SHARED_PTR)shared_load_ptr, amax_value, stride);
}

typedef __attribute__((ext_vector_type(4))) uint32_t uint32x4_t;
inline __device__ uint32x4_t
ds_load_exp_m4n2_f16(void *shared_load_ptr, unsigned int max_value, uint32_t stride) {
  return __builtin_xcn_ds_load_exp_m4n2_f16((SHARED_PTR)shared_load_ptr, max_value, stride);
}

inline __device__ uint32x4_t
ds_load_add_m4n2_f16(void *shared_load_ptr, unsigned int add_value, uint32_t stride) {
  return __builtin_xcn_ds_load_add_m4n2_f16((SHARED_PTR)shared_load_ptr, add_value, stride);
}

inline __device__ uint32x4_t
ds_load_sub_m4n2_f16(void *shared_load_ptr, unsigned int sub_value, uint32_t stride) {
  return __builtin_xcn_ds_load_sub_m4n2_f16((SHARED_PTR)shared_load_ptr, sub_value, stride);
}

inline __device__ uint32x4_t
ds_load_subrev_m4n2_f16(void *shared_load_ptr, unsigned int subrev_value, uint32_t stride) {
  return __builtin_xcn_ds_load_subrev_m4n2_f16((SHARED_PTR)shared_load_ptr, subrev_value, stride);
}

inline __device__ uint32x4_t
ds_load_max_m4n2_f16(void *shared_load_ptr, unsigned int max_value, uint32_t stride) {
  return __builtin_xcn_ds_load_max_m4n2_f16((SHARED_PTR)shared_load_ptr, max_value, stride);
}

inline __device__ uint32x4_t
ds_load_amax_m4n2_f16(void *shared_load_ptr, unsigned int amax_value, uint32_t stride) {
  return __builtin_xcn_ds_load_amax_m4n2_f16((SHARED_PTR)shared_load_ptr, amax_value, stride);
}

typedef __attribute__((address_space(8))) void *TM_PTR;
typedef _Float16 __attribute__((ext_vector_type(2))) float16x2_t;
typedef _Float16 __attribute__((ext_vector_type(4))) float16x4_t;

__device__ inline void ds_store_cvt_e4m3x4_f16x4(void *shared_store_ptr, float16x4_t store_value) {
  __builtin_xcn_ds_store_cvt_e4m3x4_f16x4((SHARED_PTR)shared_store_ptr, store_value);
}

__device__ inline void ds_store_cvt_e5m2x4_f16x4(void *shared_store_ptr, float16x4_t store_value) {
  __builtin_xcn_ds_store_cvt_e5m2x4_f16x4((SHARED_PTR)shared_store_ptr, store_value);
}

__device__ inline void ds_store_cvt_e2m1x4_f16x4(void *shared_store_ptr, float16x4_t store_value) {
  __builtin_xcn_ds_store_cvt_e2m1x4_f16x4((SHARED_PTR)shared_store_ptr, store_value);
}

__device__ inline void
tm_store_cvt_e4m3x8_f16x8(void *tm_store_ptr, float16x2_t src0, float16x2_t src1, float16x2_t src2, float16x2_t src3)
{
    __builtin_xcn_tm_store_cvt_e4m3x8_f16x8((TM_PTR)tm_store_ptr,
        src0, src1, src2, src3);
}
__device__ inline void
tm_store_cvt_e5m2x8_f16x8(void *tm_store_ptr, float16x2_t src0, float16x2_t src1, float16x2_t src2, float16x2_t src3)
{
    __builtin_xcn_tm_store_cvt_e5m2x8_f16x8((TM_PTR)tm_store_ptr,
        src0, src1, src2, src3);
}
__device__ inline void
tm_store_cvt_e2m1x8_f16x8(void *tm_store_ptr, float16x2_t src0, float16x2_t src1, float16x2_t src2, float16x2_t src3)
{
    __builtin_xcn_tm_store_cvt_e2m1x8_f16x8((TM_PTR)tm_store_ptr,
        src0, src1, src2, src3);
}
#endif /* !defined (__XPU_ARCH__) || (__XPU_ARCH__ >= 6) */

inline __HOST_DEVICE__ __half2 __heq2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(x).data == static_cast<__half2_raw>(y).data;
  return __builtin_convertvector(-r, _Float16_2);
}
inline __HOST_DEVICE__ __half2 __hne2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(x).data != static_cast<__half2_raw>(y).data;
  return __builtin_convertvector(-r, _Float16_2);
}
inline __HOST_DEVICE__ __half2 __hle2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(x).data <= static_cast<__half2_raw>(y).data;
  return __builtin_convertvector(-r, _Float16_2);
}
inline __HOST_DEVICE__ __half2 __hge2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(x).data >= static_cast<__half2_raw>(y).data;
  return __builtin_convertvector(-r, _Float16_2);
}
inline __HOST_DEVICE__ __half2 __hlt2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(x).data < static_cast<__half2_raw>(y).data;
  return __builtin_convertvector(-r, _Float16_2);
}
inline __HOST_DEVICE__ __half2 __hgt2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(x).data > static_cast<__half2_raw>(y).data;
  return __builtin_convertvector(-r, _Float16_2);
}
inline __HOST_DEVICE__ __half2 __hequ2(__half2 x, __half2 y) {
  return __heq2(x, y);
}
inline __HOST_DEVICE__ __half2 __hneu2(__half2 x, __half2 y) {
  return __hne2(x, y);
}
inline __HOST_DEVICE__ __half2 __hleu2(__half2 x, __half2 y) {
  return __hle2(x, y);
}
inline __HOST_DEVICE__ __half2 __hgeu2(__half2 x, __half2 y) {
  return __hge2(x, y);
}
inline __HOST_DEVICE__ __half2 __hltu2(__half2 x, __half2 y) {
  return __hlt2(x, y);
}
inline __HOST_DEVICE__ __half2 __hgtu2(__half2 x, __half2 y) {
  return __hgt2(x, y);
}

inline __HOST_DEVICE__ bool __hbeq2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(__heq2(x, y));
  return r.data.x != 0 && r.data.y != 0;
}
inline __HOST_DEVICE__ bool __hbne2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(__hne2(x, y));
  return r.data.x != 0 && r.data.y != 0;
}
inline __HOST_DEVICE__ bool __hble2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(__hle2(x, y));
  return r.data.x != 0 && r.data.y != 0;
}
inline __HOST_DEVICE__ bool __hbge2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(__hge2(x, y));
  return r.data.x != 0 && r.data.y != 0;
}
inline __HOST_DEVICE__ bool __hblt2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(__hlt2(x, y));
  return r.data.x != 0 && r.data.y != 0;
}
inline __HOST_DEVICE__ bool __hbgt2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(__hgt2(x, y));
  return r.data.x != 0 && r.data.y != 0;
}
inline __HOST_DEVICE__ bool __hbequ2(__half2 x, __half2 y) {
  return __hbeq2(x, y);
}
inline __HOST_DEVICE__ bool __hbneu2(__half2 x, __half2 y) {
  return __hbne2(x, y);
}
inline __HOST_DEVICE__ bool __hbleu2(__half2 x, __half2 y) {
  return __hble2(x, y);
}
inline __HOST_DEVICE__ bool __hbgeu2(__half2 x, __half2 y) {
  return __hbge2(x, y);
}
inline __HOST_DEVICE__ bool __hbltu2(__half2 x, __half2 y) {
  return __hblt2(x, y);
}
inline __HOST_DEVICE__ bool __hbgtu2(__half2 x, __half2 y) {
  return __hbgt2(x, y);
}
inline __device__ __half __hmax(const __half x, const __half y) {
  return __half_raw{__ocml_fmax_f16(static_cast<__half_raw>(x).data,
                                    static_cast<__half_raw>(y).data)};
}
inline __device__ __half __hmax_nan(const __half x, const __half y) {
  if (__ocml_isnan_f16(static_cast<__half_raw>(x).data)) {
    return x;
  } else if (__ocml_isnan_f16(static_cast<__half_raw>(y).data)) {
    return y;
  }
  return __hmax(x, y);
}
inline __device__ __half __hmin(const __half x, const __half y) {
  return __half_raw{__ocml_fmin_f16(static_cast<__half_raw>(x).data,
                                    static_cast<__half_raw>(y).data)};
}
inline __device__ __half __hmin_nan(const __half x, const __half y) {
  if (__ocml_isnan_f16(static_cast<__half_raw>(x).data)) {
    return x;
  } else if (__ocml_isnan_f16(static_cast<__half_raw>(y).data)) {
    return y;
  }
  return __hmin(x, y);
}

// Arithmetic
inline __device__ __half __clamp_01(__half x) {
  auto r = static_cast<__half_raw>(x);

  if (__hlt(x, __half_raw{0}))
    return __half_raw{0};
  if (__hlt(__half_raw{1}, x))
    return __half_raw{1};
  return r;
}

inline __HOST_DEVICE__ __half __hadd(__half x, __half y) {
  return __half_raw{static_cast<__half_raw>(x).data +
                    static_cast<__half_raw>(y).data};
}
inline __device__ __half __habs(__half x) {
  return __half_raw{__ocml_fabs_f16(static_cast<__half_raw>(x).data)};
}
inline __HOST_DEVICE__ __half __hsub(__half x, __half y) {
  return __half_raw{static_cast<__half_raw>(x).data -
                    static_cast<__half_raw>(y).data};
}
inline __HOST_DEVICE__ __half __hmul(__half x, __half y) {
  return __half_raw{static_cast<__half_raw>(x).data *
                    static_cast<__half_raw>(y).data};
}
inline __device__ __half __hadd_sat(__half x, __half y) {
  return __clamp_01(__hadd(x, y));
}
inline __device__ __half __hsub_sat(__half x, __half y) {
  return __clamp_01(__hsub(x, y));
}
inline __device__ __half __hmul_sat(__half x, __half y) {
  return __clamp_01(__hmul(x, y));
}
inline __device__ __half __hfma(__half x, __half y, __half z) {
  return __half_raw{__ocml_fma_f16(static_cast<__half_raw>(x).data,
                                   static_cast<__half_raw>(y).data,
                                   static_cast<__half_raw>(z).data)};
}
inline __device__ __half __hfma_sat(__half x, __half y, __half z) {
  return __clamp_01(__hfma(x, y, z));
}
inline __HOST_DEVICE__ __half __hdiv(__half x, __half y) {
  return __half_raw{static_cast<__half_raw>(x).data /
                    static_cast<__half_raw>(y).data};
}

inline __HOST_DEVICE__ __half2 __hadd2(__half2 x, __half2 y) {
  return __half2_raw{static_cast<__half2_raw>(x).data +
                     static_cast<__half2_raw>(y).data};
}
inline __HOST_DEVICE__ __half2 __habs2(__half2 x) {
  return __half2_raw{__ocml_fabs_2f16(static_cast<__half2_raw>(x).data)};
}
inline __HOST_DEVICE__ __half2 __hsub2(__half2 x, __half2 y) {
  return __half2_raw{static_cast<__half2_raw>(x).data -
                     static_cast<__half2_raw>(y).data};
}
inline __HOST_DEVICE__ __half2 __hmul2(__half2 x, __half2 y) {
  return __half2_raw{static_cast<__half2_raw>(x).data *
                     static_cast<__half2_raw>(y).data};
}
inline __HOST_DEVICE__ __half2 __hadd2_sat(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(__hadd2(x, y));
  return __half2{__clamp_01(__half_raw{r.data.x}),
                 __clamp_01(__half_raw{r.data.y})};
}
inline __HOST_DEVICE__ __half2 __hsub2_sat(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(__hsub2(x, y));
  return __half2{__clamp_01(__half_raw{r.data.x}),
                 __clamp_01(__half_raw{r.data.y})};
}
inline __HOST_DEVICE__ __half2 __hmul2_sat(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(__hmul2(x, y));
  return __half2{__clamp_01(__half_raw{r.data.x}),
                 __clamp_01(__half_raw{r.data.y})};
}
inline __device__ __half2 __hfma2(__half2 x, __half2 y, __half2 z) {
  return __half2{__ocml_fma_2f16(x, y, z)};
}
inline __device__ __half2 __hfma2_sat(__half2 x, __half2 y, __half2 z) {
  auto r = static_cast<__half2_raw>(__hfma2(x, y, z));
  return __half2{__clamp_01(__half_raw{r.data.x}),
                 __clamp_01(__half_raw{r.data.y})};
}
inline __device__ __half2 __hmax2(__half2 x, __half2 y) {
  return __half2_raw{__ocml_fmax_2f16(x, y)};
}
inline __device__ __half2 __hmin2(__half2 x, __half2 y) {
  return __half2_raw{__ocml_fmin_2f16(x, y)};
}
inline __device__ __half2 __hmax2_nan(const __half2 a, const __half2 b) {
  return __half2(__hmax_nan(a.x, b.x), __hmax_nan(a.y, b.y));
}
inline __device__ __half2 __hmin2_nan(const __half2 a, const __half2 b) {
  return __half2(__hmin_nan(a.x, b.x), __hmin_nan(a.y, b.y));
}
inline __device__ __half __hfma_relu(const __half a, const __half b, const __half c) {
  __half_raw hzero;
  hzero.x = (unsigned short)0U;
  return __hmax_nan(__hfma(a, b, c), __half(hzero));
}
inline __device__ __half2 __hfma2_relu(const __half2 a, const __half2 b, const __half2 c) {
  __half2_raw hzero;
  hzero.x = (unsigned short)0U;
  hzero.y = (unsigned short)0U;
  return __hmax2_nan(__hfma2(a, b, c), __half2(hzero));
}

inline __HOST_DEVICE__ __half2 __h2div(__half2 x, __half2 y) {
  return __half2_raw{static_cast<__half2_raw>(x).data /
                     static_cast<__half2_raw>(y).data};
}

// Math functions
#if __HOUYI_CLANG_ONLY__
inline __device__ float amd_mixed_dot(__half2 a, __half2 b, float c,
                                      bool saturate) {
  return __ockl_fdot2(static_cast<__half2_raw>(a).data,
                      static_cast<__half2_raw>(b).data, c, saturate);
}
#endif
inline __device__ __half htrunc(__half x) {
  return __half_raw{__ocml_trunc_f16(static_cast<__half_raw>(x).data)};
}
inline __device__ __half hceil(__half x) {
  return __half_raw{__ocml_ceil_f16(static_cast<__half_raw>(x).data)};
}
inline __device__ __half hfloor(__half x) {
  return __half_raw{__ocml_floor_f16(static_cast<__half_raw>(x).data)};
}
inline __device__ __half hrint(__half x) {
  return __half_raw{__ocml_rint_f16(static_cast<__half_raw>(x).data)};
}
inline __device__ float __internal_trig_reduction_kernel(const float a, unsigned int *const quadrant)
{
  const uint32_t invpio2_u32 = 0x3F22F983U;      // 0.636619772F -> 0x3F22F983
  const uint32_t two23_plus_u32 = 0x4B400000U;   // 12582912.0F -> 0x4B400000
  const uint32_t neg_pio2_hi_u32 = 0xBFC90FDAU;  // -1.5707962512969971e+000F -> 0xBFC90FDA
  const uint32_t neg_pio2_lo_u32 = 0xB3A22168U;  // -7.5497894158615964e-008F -> 0xB3A22168
  const float ar = __fmaf_rn(a, __uint_as_float(invpio2_u32), __uint_as_float(two23_plus_u32));
  const unsigned q = __float_as_uint(ar);
  const float j = __fsub_rn(ar, __uint_as_float(two23_plus_u32));
  float t = __fmaf_rn(j, __uint_as_float(neg_pio2_hi_u32), a);
  t = __fmaf_rn(j, __uint_as_float(neg_pio2_lo_u32), t);
  *quadrant = q;
  return t;
}

inline __device__ float __internal_sin_cos_kernel(const float x, const unsigned int i)
{
  const uint32_t cos_poly_a8_u32 = 0x37CCF5CEU;  // 2.44331571e-5F -> 0x37CCF5CE
  const uint32_t cos_poly_a6_u32 = 0xBAB6061AU;  // -1.38873163e-3F -> 0xBAB6061A
  const uint32_t cos_poly_a4_u32 = 0x3D2AAAA5U;  // 4.16666457e-2F -> 0x3D2AAAA5
  const uint32_t neg_half_u32 = 0xBF000000U;     // -5.00000000e-1F -> 0xBF000000
  const uint32_t one_u32 = 0x3F800000U;          // 1.0F -> 0x3F800000
  const uint32_t sin_poly_a8_u32 = 0xB94CA1F9U;  // -1.95152959e-4F -> 0xB94CA1F9
  const uint32_t sin_poly_a6_u32 = 0x3C08839EU;  // 8.33216087e-3F -> 0x3C08839E
  const uint32_t sin_poly_a4_u32 = 0xBE2AAAA3U;  // -1.66666546e-1F -> 0xBE2AAAA3
  const uint32_t zero_u32 = 0x00000000U;         // 0.0F -> 0x00000000
  float z;
  const float x2 = x * x;
  float a8;
  float a6;
  float a4;
  float a2;
  float a1;
  float a0;

  if ((i & 1U) != 0U) {
      a8 = __uint_as_float(cos_poly_a8_u32);
      a6 = __uint_as_float(cos_poly_a6_u32);
      a4 = __uint_as_float(cos_poly_a4_u32);
      a2 = __uint_as_float(neg_half_u32);
      a1 = x2;
      a0 = __uint_as_float(one_u32);
  } else {
      a8 = __uint_as_float(sin_poly_a8_u32);
      a6 = __uint_as_float(sin_poly_a6_u32);
      a4 = __uint_as_float(sin_poly_a4_u32);
      a2 = __uint_as_float(zero_u32);
      a1 = x;
      a0 = x;
  }
  z = __fmaf_rn(a8, x2, a6);
  z = __fmaf_rn(z, x2, a4);
  z = __fmaf_rn(z, x2, a2);
  z = __fmaf_rn(z, a1, a0);

  if ((i & 2U) != 0U) {
      z = -z;
  }
  return z;
}

inline __device__ __half hsin(__half x) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  float input = __half2float(x);
  float z;
  unsigned i;
  input = __internal_trig_reduction_kernel(input, &i);
  z = __internal_sin_cos_kernel(input, i);
  __half res = __float2half(z);
  uint16_t input_abs = __half_as_ushort(x) & 0x7FFF;
  uint16_t output = __half_as_ushort(res);
  output += (input_abs == 0x32B3);
  output -= (input_abs == 0x5CB0);
  return __ushort_as_half(output);
#else 
  return __float2half(sinf(__half2float(x)));
#endif
}
inline __device__ __half hcos(__half x) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  float input = __half2float(x);
  float z;
  unsigned i;
  input = __internal_trig_reduction_kernel(input, &i);
  z = __internal_sin_cos_kernel(input, (i & 0x3U) + 1U);
  __half res = __float2half(z);
  uint16_t input_abs = __half_as_ushort(x) & 0x7FFF;
  uint16_t output = __half_as_ushort(res);
  output += (input_abs == 0x2B7C);
  return __ushort_as_half(output);
#else
  return __float2half(cosf(__half2float(x)));
#endif
}
inline __device__ __half htanh(__half x) {
  return __float2half(tanhf(__half2float(x)));
}
inline __device__ __half hexp(__half x) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
  __half res = __half_raw{__ocml_exp_f16_xpu6(static_cast<__half_raw>(x).data)};
  uint16_t input = __half_as_ushort(x);
  uint16_t output = __half_as_ushort(res);
  output -= (input == 0x1F79);
  output -= (input == 0x25CF);
  return __ushort_as_half(output);
#elif (defined __XPU_ARCH__) && (__XPU_ARCH__ == 5)
  __half res = __half_raw{__ocml_exp_f16(static_cast<__half_raw>(x).data)};
  uint16_t input = __half_as_ushort(x);
  uint16_t output = __half_as_ushort(res);
  output -= (input == 0x1F79);
  output -= (input == 0x25CF);
  output += (input == 0xC13B);
  return __ushort_as_half(output);
#else
 return __half_raw{__ocml_exp_f16(static_cast<__half_raw>(x).data)};
#endif
}
inline __device__ __half hexp2(__half x) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  __half res = __half_raw{__ocml_exp2_f16(static_cast<__half_raw>(x).data)};
  uint16_t input = __half_as_ushort(x);
  uint16_t output = __half_as_ushort(res);
  output += (input == 0x11C5);
  return __ushort_as_half(output);
#else
  return __half_raw{__ocml_exp2_f16(static_cast<__half_raw>(x).data)};
#endif
}

inline __device__ __half hexp10(__half x) {
  __half res = __half_raw{__ocml_exp10_f16(static_cast<__half_raw>(x).data)};
  uint16_t input = __half_as_ushort(x);
  uint16_t output = __half_as_ushort(res);
  output -= (input == 0xBF0A);
  output += (input == 0xAD12);
  return __ushort_as_half(output);
}
inline __device__ __half hlog2(__half x) {
  __half res = __float2half(__ocml_native_log2_f32(__half2float(x)));
  uint16_t input = __half_as_ushort(x);
  uint16_t output = __half_as_ushort(res);
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  output = (input == 0x3489 || input == 0x3BED) ? output + 1 : output;
  output = (input == 0x4089 || input == 0x3B13) ? output - 1 : output;
  res = __ushort_as_half(output);
#else
  output -= (input == 0x3B13);
  res = __ushort_as_half(output);
#endif

  return res;
}
inline __device__ __half hlog(__half x) {
  __half res = __half_raw{__ocml_log_f16(static_cast<__half_raw>(x).data)};

  uint16_t input = __half_as_ushort(x);
  uint16_t output = __half_as_ushort(res);
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  output -= (input == 0x1935);
  output -= (input == 0x1d78);
  output += (input == 0x3bfe);
  res = __ushort_as_half(output);
#else
  if (input == 0x160d || input == 0x1d78 || input == 0x6051) {
    output += 1;
    res = __ushort_as_half(output);
  }
#endif
  return res;
}
inline __device__ __half hlog10(__half x) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  const uint32_t log10_2_u32 = 0x3E9A209BU;  // 0.3010300099849701F -> 0x3E9A209B
  const float input = __half2float(x);
  const float log2_value = __builtin_log2f(input);
  __half res = __float2half(log2_value * __uint_as_float(log10_2_u32));
  uint16_t input_bits = __half_as_ushort(x);
  uint16_t output = __half_as_ushort(res);
  output -= (input_bits == 0x338f);
  output -= (input_bits == 0x57e1);
  output -= (input_bits == 0x719d);
  return __ushort_as_half(output);
#else
  return __half_raw{__ocml_log10_f16(static_cast<__half_raw>(x).data)};
#endif
}
inline __device__ __half hrcp(__half x) {
  return __half_raw{__builtin_xcn_rcph(static_cast<__half_raw>(x).data)};
}

inline __device__ __half __hsqrt(__half x) {
#if defined(__XPU5__)
  return __half_raw{__builtin_xcn_sqrth(static_cast<__half_raw>(x).data)};
#else
  return __float2half(sqrtf(__half2float(x)));
#endif
}

inline __device__ __half hsqrt(__half x) { return __hsqrt(x); }

inline __device__ __half hrsqrt(__half x) {
  return __float2half(rsqrt(__half2float(x)));
}

inline __device__ bool __hisinf(__half x) {
  return __ocml_isinf_f16(static_cast<__half_raw>(x).data);
}
inline __device__ bool __hisnan(__half x) {
  return __ocml_isnan_f16(static_cast<__half_raw>(x).data);
}
inline __HOST_DEVICE__ __half __hneg(__half x) {
  return __half_raw{-static_cast<__half_raw>(x).data};
}

static inline __device__ __half atomicAdd(__half *const address,
                                          const __half val) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ > 5)
  __half_raw old;
  old.data = __builtin_xcn_global_atomic_fadd_f16(
      address, static_cast<__half_raw>(val).data);
  return old;
#else
  __half old = *address;

  bool done = false;
  while (!done) {
    __half new_val = __hadd(val, old);
    done = __houyi_atomic_compare_exchange_strong(
        address, &old, new_val, __ATOMIC_RELAXED, __ATOMIC_RELAXED,
        __HOUYI_MEMORY_SCOPE_AGENT);
  }
  return old;
#endif // (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
}

static inline __device__ __half atomicAdd_block(__half *const address,
                                                const __half val) {
  __half old = *address;

  bool done = false;
  while (!done) {
    __half new_val = __hadd(val, old);
    done = __houyi_atomic_compare_exchange_strong(
        address, &old, new_val, __ATOMIC_RELAXED, __ATOMIC_RELAXED,
        __HOUYI_MEMORY_SCOPE_WORKGROUP);
  }
  return old;
}

static inline __device__ __half2 atomicAdd(__half2 *const address,
                                           const __half2 val) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  __half2_raw old;
  old.data = __builtin_xcn_global_atomic_fadd_v2f16(address, val.data);
  return old;
#else
  __half2 old = *address;

  bool done = false;
  while (!done) {
    __half2 new_val = __hadd2(val, old);
    done = __houyi_atomic_compare_exchange_strong(
        address, &old, new_val, __ATOMIC_RELAXED, __ATOMIC_RELAXED,
        __HOUYI_MEMORY_SCOPE_AGENT);
  }
  return old;
#endif // (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
}

static inline __device__ __half2 atomicAdd_block(__half2 *const address,
                                                 const __half2 val) {
  __half2 old = *address;

  bool done = false;
  while (!done) {
    __half2 new_val = __hadd2(val, old);
    done = __houyi_atomic_compare_exchange_strong(
        address, &old, new_val, __ATOMIC_RELAXED, __ATOMIC_RELAXED,
        __HOUYI_MEMORY_SCOPE_WORKGROUP);
  }
  return old;
}

inline __HOST_DEVICE__ __half2 h2trunc(__half2 x) {
  return __half2_raw{__ocml_trunc_2f16(x)};
}
inline __HOST_DEVICE__ __half2 h2ceil(__half2 x) {
  return __half2_raw{__ocml_ceil_2f16(x)};
}
inline __HOST_DEVICE__ __half2 h2floor(__half2 x) {
  return __half2_raw{__ocml_floor_2f16(x)};
}
inline __HOST_DEVICE__ __half2 h2rint(__half2 x) {
  return __half2_raw{__ocml_rint_2f16(x)};
}
inline __HOST_DEVICE__ __half2 h2tanh(__half2 x) {
  __half2 res;
  res.x = htanh(x.x);
  res.y = htanh(x.y);
  return res;
}
inline __HOST_DEVICE__ __half2 h2sin(__half2 x) {
  __half2 res;
  res.x = hsin(x.x);
  res.y = hsin(x.y);
  return res;
}
inline __HOST_DEVICE__ __half2 h2cos(__half2 x) {
  __half2 res;
  res.x = hcos(x.x);
  res.y = hcos(x.y);
  return res;
}
inline __HOST_DEVICE__ __half2 h2exp(__half2 x) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  __half2 res;
  res.x = hexp(x.x);
  res.y = hexp(x.y);
  return res;
#else
  return __half2_raw{__ocml_exp_2f16(x)};
#endif
}
inline __HOST_DEVICE__ __half2 h2exp2(__half2 x) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  __half2 res;
  res.x = hexp2(x.x);
  res.y = hexp2(x.y);
  return res;
#else
  return __half2_raw{__ocml_exp2_2f16(x)};
#endif  
}
inline __HOST_DEVICE__ __half2 h2exp10(__half2 x) {
  __half2 res;
  res.x = hexp10(x.x);
  res.y = hexp10(x.y);
  return res;
}
inline __HOST_DEVICE__ __half2 h2log2(__half2 x) {
  __half2 res;
  res.x = hlog2(x.x);
  res.y = hlog2(x.y);
  return res;
}
inline __HOST_DEVICE__ __half2 h2log(__half2 x) {
  __half2 res;
  res.x = hlog(x.x);
  res.y = hlog(x.y);
  return res;
}
inline __HOST_DEVICE__ __half2 h2log10(__half2 x) {
  return __ocml_log10_2f16(x);
}
inline __HOST_DEVICE__ __half2 h2rcp(__half2 x) {
  __half2 res;
  res.x = hrcp(x.x);
  res.y = hrcp(x.y);
  return res;
}
inline __HOST_DEVICE__ __half2 h2rsqrt(__half2 x) {
  __half2 res;
  res.x = __float2half(rsqrt(__half2float(x.x)));
  res.y = __float2half(rsqrt(__half2float(x.y)));
  return res;
}
inline __HOST_DEVICE__ __half2 h2sqrt(__half2 x) {
  __half2 res;
  res.x = hsqrt(x.x);
  res.y = hsqrt(x.y);
  return res;
}
inline __HOST_DEVICE__ __half2 __hisinf2(__half2 x) {
  auto r = __ocml_isinf_2f16(x);
  return __half2_raw{
      _Float16_2{static_cast<_Float16>(r.x), static_cast<_Float16>(r.y)}};
}
inline __HOST_DEVICE__ __half2 __hisnan2(__half2 x) {
  auto r = __ocml_isnan_2f16(x);
  return __half2_raw{
      _Float16_2{static_cast<_Float16>(r.x), static_cast<_Float16>(r.y)}};
}
inline __HOST_DEVICE__ __half2 __hneg2(__half2 x) {
  return __half2_raw{-static_cast<__half2_raw>(x).data};
}

inline __HOST_DEVICE__ __half2 __hfma2_cross(__half2 __s0,
                                             __half2 __s1,
                                             __half2 __s2) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
  return __half2_raw{__builtin_xcn_v_pk_cross_fma_f16(
      static_cast<__half2_raw>(__s0).data, static_cast<__half2_raw>(__s1).data,
      static_cast<__half2_raw>(__s2).data)};
#else
  return __halves2half2(__hadd(__hmul(__s0.y, __s1.x), __s0.x),
                        __hadd(__hmul(__s2.y, __s1.y), __s2.x));
#endif
}

#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
static __device__ inline __half4 __hneg4(__half4 __x) {
  __half4 ret;
  ret.data = __builtin_xcn_pk_neg2_f16(__x.data);
  return ret;
}
static __device__ inline __half8 __hneg8(__half8 __x) {
  __half8 ret;
  ret.data = __builtin_xcn_pk_neg4_f16(__x.data);
  return ret;
}
static __device__ inline __half16 __hneg16(__half16 __x) {
  __half16 ret;
  ret.data = __builtin_xcn_pk_neg8_f16(__x.data);
  return ret;
}

static __device__ inline __half4 __hmin4(__half4 __x, __half4 __y) {
  __half4 ret;
  ret.data = __builtin_xcn_pk_min2_f16(__x.data, __y.data);
  return ret;
}
static __device__ inline __half8 __hmin8(__half8 __x, __half8 __y) {
  __half8 ret;
  ret.data = __builtin_xcn_pk_min4_f16(__x.data, __y.data);
  return ret;
}
static __device__ inline __half16 __hmin16(__half16 __x, __half16 __y) {
  __half16 ret;
  ret.data = __builtin_xcn_pk_min8_f16(__x.data, __y.data);
  return ret;
}

static __device__ inline __half4 __hmax4(__half4 __x, __half4 __y) {
  __half4 ret;
  ret.data = __builtin_xcn_pk_max2_f16(__x.data, __y.data);
  return ret;
}
static __device__ inline __half8 __hmax8(__half8 __x, __half8 __y) {
  __half8 ret;
  ret.data = __builtin_xcn_pk_max4_f16(__x.data, __y.data);
  return ret;
}
static __device__ inline __half16 __hmax16(__half16 __x, __half16 __y) {
  __half16 ret;
  ret.data = __builtin_xcn_pk_max8_f16(__x.data, __y.data);
  return ret;
}

static __device__ inline __half4 __hadd4(__half4 __x, __half4 __y) {
  __half4 ret;
  ret.data = __builtin_xcn_pk_add2_f16(__x.data, __y.data);
  return ret;
}
static __device__ inline __half8 __hadd8(__half8 __x, __half8 __y) {
  __half8 ret;
  ret.data = __builtin_xcn_pk_add4_f16(__x.data, __y.data);
  return ret;
}
static __device__ inline __half16 __hadd16(__half16 __x, __half16 __y) {
  __half16 ret;
  ret.data = __builtin_xcn_pk_add8_f16(__x.data, __y.data);
  return ret;
}

static __device__ inline __half4 __hmul4(__half4 __x, __half4 __y) {
  __half4 ret;
  ret.data = __builtin_xcn_pk_mul2_f16(__x.data, __y.data);
  return ret;
}
static __device__ inline __half8 __hmul8(__half8 __x, __half8 __y) {
  __half8 ret;
  ret.data = __builtin_xcn_pk_mul4_f16(__x.data, __y.data);
  return ret;
}
static __device__ inline __half16 __hmul16(__half16 __x, __half16 __y) {
  __half16 ret;
  ret.data = __builtin_xcn_pk_mul8_f16(__x.data, __y.data);
  return ret;
}

static __device__ inline __half4 __hmul4(__half2 __x, __half4 __y) {
  __half4 ret;
  ret.data = __builtin_xcn_vs_pk_mul2_f16(__x.data, __y.data);
  return ret;
}
static __device__ inline __half8 __hmul8(__half2 __x, __half8 __y) {
  __half8 ret;
  ret.data = __builtin_xcn_vs_pk_mul4_f16(__x.data, __y.data);
  return ret;
}
static __device__ inline __half16 __hmul16(__half2 __x, __half16 __y) {
  __half16 ret;
  ret.data = __builtin_xcn_vs_pk_mul8_f16(__x.data, __y.data);
  return ret;
}

// --- pk_fmac f16 ---
static __device__ inline __half4 __hfmac4(__half4 __x, __half4 __y,
                                          __half4 __z) {
  __half4 ret;
  ret.data = __builtin_xcn_pk_fmac2_f16(__x.data, __y.data, __z.data);
  return ret;
}
static __device__ inline __half8 __hfmac8(__half8 __x, __half8 __y,
                                          __half8 __z) {
  __half8 ret;
  ret.data = __builtin_xcn_pk_fmac4_f16(__x.data, __y.data, __z.data);
  return ret;
}
static __device__ inline __half16 __hfmac16(__half16 __x, __half16 __y,
                                            __half16 __z) {
  __half16 ret;
  ret.data = __builtin_xcn_pk_fmac8_f16(__x.data, __y.data, __z.data);
  return ret;
}

// --- pk_fma f16 ---
static __device__ inline __half4 __hfma4(__half4 __x, __half4 __y,
                                         __half4 __z) {
  __half4 ret;
  ret.data = __builtin_xcn_pk_fma2_f16(__x.data, __y.data, __z.data);
  return ret;
}
static __device__ inline __half8 __hfma8(__half8 __x, __half8 __y,
                                         __half8 __z) {
  __half8 ret;
  ret.data = __builtin_xcn_pk_fma4_f16(__x.data, __y.data, __z.data);
  return ret;
}
static __device__ inline __half16 __hfma16(__half16 __x, __half16 __y,
                                           __half16 __z) {
  __half16 ret;
  ret.data = __builtin_xcn_pk_fma8_f16(__x.data, __y.data, __z.data);
  return ret;
}

// --- pk_exp f16 (natural exponential, v_pk_exp_f16 packed pseudo) ---
static __device__ inline __half4 h4exp(__half4 __x) {
  __half4 ret;
  ret.data = __builtin_xcn_h4exp_f16(__x.data);
  return ret;
}
static __device__ inline __half8 h8exp(__half8 __x) {
  __half8 ret;
  ret.data = __builtin_xcn_h8exp_f16(__x.data);
  return ret;
}
static __device__ inline __half16 h16exp(__half16 __x) {
  __half16 ret;
  ret.data = __builtin_xcn_h16exp_f16(__x.data);
  return ret;
}

// --- pk_ex2 f16 (base-2 exponential, v_pk_ex2_f16 packed pseudo) ---
static __device__ inline __half4 h4exp2(__half4 __x) {
  __half4 ret;
  ret.data = __builtin_xcn_h4exp2_f16(__x.data);
  return ret;
}
static __device__ inline __half8 h8exp2(__half8 __x) {
  __half8 ret;
  ret.data = __builtin_xcn_h8exp2_f16(__x.data);
  return ret;
}
static __device__ inline __half16 h16exp2(__half16 __x) {
  __half16 ret;
  ret.data = __builtin_xcn_h16exp2_f16(__x.data);
  return ret;
}

#endif // __XPU_ARCH__ >= 6
// END fp16 packed pseudo wrappers

#if !defined(HOUYI_NO_HALF)
using half = __half;
using half2 = __half2;
using half4 = __half4;
using half8 = __half8;
using half16 = __half16;
#endif

__device__ inline __half __shfl(__half var, int src_lane,
                                int width = warpSize) {
  union {
    int i;
    __half h;
  } tmp;
  tmp.h = var;
  tmp.i = __shfl(tmp.i, src_lane, width);
  return tmp.h;
}
__device__ inline __half2 __shfl(__half2 var, int src_lane,
                                 int width = warpSize) {
  union {
    int i;
    __half2 h;
  } tmp;
  tmp.h = var;
  tmp.i = __shfl(tmp.i, src_lane, width);
  return tmp.h;
}
__device__ inline __half __shfl_up(__half var, unsigned int lane_delta,
                                   int width = warpSize) {
  union {
    int i;
    __half h;
  } tmp;
  tmp.h = var;
  tmp.i = __shfl_up(tmp.i, lane_delta, width);
  return tmp.h;
}
__device__ inline __half2 __shfl_up(__half2 var, unsigned int lane_delta,
                                    int width = warpSize) {
  union {
    int i;
    __half2 h;
  } tmp;
  tmp.h = var;
  tmp.i = __shfl_up(tmp.i, lane_delta, width);
  return tmp.h;
}
__device__ inline __half __shfl_down(__half var, unsigned int lane_delta,
                                     int width = warpSize) {
  union {
    int i;
    __half h;
  } tmp;
  tmp.h = var;
  tmp.i = __shfl_down(tmp.i, lane_delta, width);
  return tmp.h;
}
__device__ inline __half2 __shfl_down(__half2 var, unsigned int lane_delta,
                                      int width = warpSize) {
  union {
    int i;
    __half2 h;
  } tmp;
  tmp.h = var;
  tmp.i = __shfl_down(tmp.i, lane_delta, width);
  return tmp.h;
}
__device__ inline __half __shfl_xor(__half var, int lane_mask,
                                    int width = warpSize) {
  union {
    int i;
    __half h;
  } tmp;
  tmp.h = var;
  tmp.i = __shfl_xor(tmp.i, lane_mask, width);
  return tmp.h;
}
__device__ inline __half2 __shfl_xor(__half2 var, int lane_mask,
                                     int width = warpSize) {
  union {
    int i;
    __half2 h;
  } tmp;
  tmp.h = var;
  tmp.i = __shfl_xor(tmp.i, lane_mask, width);
  return tmp.h;
}

typedef __half __nv_half;
typedef __half nv_half;

#endif // defined(__cplusplus)
#elif defined(__GNUC__)
#include "xtdk_fp16_gcc.h"
#endif // !defined(__clang__) && defined(__GNUC__)

#endif // __XCN_KERNEL_XTDK_FP16_H__
