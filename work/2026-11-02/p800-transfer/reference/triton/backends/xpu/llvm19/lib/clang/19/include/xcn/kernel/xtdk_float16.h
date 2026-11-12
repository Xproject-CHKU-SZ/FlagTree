#pragma once
#ifndef XTDK_XCN_FP16_H
#define XTDK_XCN_FP16_H

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
// #include "amd_houyi_vector_types.h"
// #include "host_defines.h"
#include "xtdk_fp16_math_fwd.h"
#include "xtdk_vector_types.h"

namespace houyi_std {
template <> struct is_floating_point<_Float16> : houyi_std::true_type {};
} // namespace houyi_std

template <bool cond, typename T = void>
using Enable_if_t = typename houyi_std::enable_if<cond, T>::type;

// BEGIN STRUCT __HALF
struct float16 {
protected:
  union {
    static_assert(sizeof(_Float16) == sizeof(unsigned short), "");

    _Float16 data;
    unsigned short __x;
  };

public:
  // CREATORS
  __HOST_DEVICE__
  float16() = default;
  __HOST_DEVICE__
  float16(const __half_raw &x) : data{x.data} {}
#if !defined(__HOUYI_NO_HALF_CONVERSIONS__)
  __HOST_DEVICE__
  float16(decltype(data) x) : data{x} {}
  template <typename T, Enable_if_t<houyi_std::is_floating_point<T>::value> * = nullptr>
  __HOST_DEVICE__ float16(T x) : data{static_cast<_Float16>(x)} {}
#endif
  __HOST_DEVICE__
  float16(const float16 &) = default;
  __HOST_DEVICE__
  float16(float16 &&) = default;
  __HOST_DEVICE__
  ~float16() = default;

// CREATORS - DEVICE ONLY
#if !defined(__HOUYI_NO_HALF_CONVERSIONS__)
  template <typename T, Enable_if_t<houyi_std::is_integral<T>::value> * = nullptr>
  __HOST_DEVICE__ float16(T x) : data{static_cast<_Float16>(x)} {}
#endif

  // MANIPULATORS
  __HOST_DEVICE__
  float16 &operator=(const float16 &) = default;
  __HOST_DEVICE__
  float16 &operator=(float16 &&) = default;
  __HOST_DEVICE__
  float16 &operator=(const __half_raw &x) {
    data = x.data;
    return *this;
  }
  __HOST_DEVICE__
  volatile float16 &operator=(const __half_raw &x) volatile {
    data = x.data;
    return *this;
  }
  volatile float16 &operator=(const volatile __half_raw &x) volatile {
    data = x.data;
    return *this;
  }
  float16 &operator=(__half_raw &&x) {
    data = x.data;
    return *this;
  }
  volatile float16 &operator=(__half_raw &&x) volatile {
    data = x.data;
    return *this;
  }
  volatile float16 &operator=(volatile __half_raw &&x) volatile {
    data = x.data;
    return *this;
  }
#if !defined(__HOUYI_NO_HALF_CONVERSIONS__)
  template <typename T, Enable_if_t<houyi_std::is_floating_point<T>::value> * = nullptr>
  __HOST_DEVICE__ float16 &operator=(T x) {
    data = static_cast<_Float16>(x);
    return *this;
  }
#endif

// MANIPULATORS - DEVICE ONLY
#if !defined(__HOUYI_NO_HALF_CONVERSIONS__)
  template <typename T, Enable_if_t<houyi_std::is_integral<T>::value> * = nullptr>
  __device__ float16 &operator=(T x) {
    data = static_cast<_Float16>(x);
    return *this;
  }
#endif

#if !defined(__HOUYI_NO_HALF_OPERATORS__)
  __device__ float16 &operator+=(const float16 &x) {
    data += x.data;
    return *this;
  }
  __device__ float16 &operator-=(const float16 &x) {
    data -= x.data;
    return *this;
  }
  __device__ float16 &operator*=(const float16 &x) {
    data *= x.data;
    return *this;
  }
  __device__ float16 &operator/=(const float16 &x) {
    data /= x.data;
    return *this;
  }
  __device__ float16 &operator++() {
    ++data;
    return *this;
  }
  __device__ float16 operator++(int) {
    float16 tmp{*this};
    ++*this;
    return tmp;
  }
  __device__ float16 &operator--() {
    --data;
    return *this;
  }
  __device__ float16 operator--(int) {
    float16 tmp{*this};
    --*this;
    return tmp;
  }
#endif

// ACCESSORS
#if !defined(__HOUYI_NO_HALF_CONVERSIONS__)
  template <typename T, Enable_if_t<houyi_std::is_floating_point<T>::value> * = nullptr>
  __HOST_DEVICE__ operator T() const {
    return data;
  }
#endif
  __HOST_DEVICE__
  operator __half_raw() const { return __half_raw{data}; }
  __HOST_DEVICE__
  operator __half_raw() const volatile { return __half_raw{data}; }

#if !defined(__HOUYI_NO_HALF_CONVERSIONS__)
  template <typename T, Enable_if_t<houyi_std::is_integral<T>::value> * = nullptr>
  __HOST_DEVICE__ operator T() const {
    return data;
  }
#endif

#if !defined(__HOUYI_NO_HALF_OPERATORS__)
  __device__ float16 operator+() const { return *this; }
  __device__ float16 operator-() const {
    float16 tmp{*this};
    tmp.data = -tmp.data;
    return tmp;
  }
#endif

// FRIENDS
#if !defined(__HOUYI_NO_HALF_OPERATORS__)
  friend inline __device__ float16 operator+(const float16 &x, const float16 &y) {
    return float16{x} += y;
  }
  friend inline __device__ float16 operator-(const float16 &x, const float16 &y) {
    return float16{x} -= y;
  }
  friend inline __device__ float16 operator*(const float16 &x, const float16 &y) {
    return float16{x} *= y;
  }
  friend inline __device__ float16 operator/(const float16 &x, const float16 &y) {
    return float16{x} /= y;
  }
  friend inline __device__ bool operator==(const float16 &x, const float16 &y) {
    return x.data == y.data;
  }
  friend inline __device__ bool operator!=(const float16 &x, const float16 &y) {
    return !(x == y);
  }
  friend inline __device__ bool operator<(const float16 &x, const float16 &y) {
    return x.data < y.data;
  }
  friend inline __device__ bool operator>(const float16 &x, const float16 &y) {
    return y.data < x.data;
  }
  friend inline __device__ bool operator<=(const float16 &x, const float16 &y) {
    return !(y < x);
  }
  friend inline __device__ bool operator>=(const float16 &x, const float16 &y) {
    return !(x < y);
  }
#endif // !defined(__HOUYI_NO_HALF_OPERATORS__)
};
typedef float16 __half;
// END STRUCT __HALF

// BEGIN STRUCT __HALF2
struct float162 {
public:
  union {
    static_assert(sizeof(_Float16_2) == sizeof(unsigned short[2]), "");

    _Float16_2 data;
    struct {
      _Float16 x;
      _Float16 y;
    };
  };

  // CREATORS
  __HOST_DEVICE__
  float162() = default;
  __HOST_DEVICE__
  float162(const __half2_raw &x) : data{x.data} {}
  __HOST_DEVICE__
  float162(decltype(data) x) : data{x} {}
  __HOST_DEVICE__
  float162(const __half &x, const __half &y)
      : data{static_cast<__half_raw>(x).data, static_cast<__half_raw>(y).data} {
  }
  __HOST_DEVICE__
  float162(const float162 &) = default;
  __HOST_DEVICE__
  float162(float162 &&) = default;
  __HOST_DEVICE__
  ~float162() = default;

  // MANIPULATORS
  __HOST_DEVICE__
  float162 &operator=(const float162 &) = default;
  __HOST_DEVICE__
  float162 &operator=(float162 &&) = default;
  __HOST_DEVICE__
  float162 &operator=(const __half2_raw &x) {
    data = x.data;
    return *this;
  }

// MANIPULATORS - DEVICE ONLY
#if !defined(__HOUYI_NO_HALF_OPERATORS__)
  __device__ float162 &operator+=(const float162 &x) {
    data += x.data;
    return *this;
  }
  __device__ float162 &operator-=(const float162 &x) {
    data -= x.data;
    return *this;
  }
  __device__ float162 &operator*=(const float162 &x) {
    data *= x.data;
    return *this;
  }
  __device__ float162 &operator/=(const float162 &x) {
    data /= x.data;
    return *this;
  }
  __device__ float162 &operator++() { return *this += _Float16_2{1, 1}; }
  __device__ float162 operator++(int) {
    float162 tmp{*this};
    ++*this;
    return tmp;
  }
  __device__ float162 &operator--() { return *this -= _Float16_2{1, 1}; }
  __device__ float162 operator--(int) {
    float162 tmp{*this};
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
  __device__ float162 operator+() const { return *this; }
  __device__ float162 operator-() const {
    float162 tmp{*this};
    tmp.data = -tmp.data;
    return tmp;
  }
#endif

// FRIENDS
#if !defined(__HOUYI_NO_HALF_OPERATORS__)
  friend inline __device__ float162 operator+(const float162 &x,
                                             const float162 &y) {
    return float162{x} += y;
  }
  friend inline __device__ float162 operator-(const float162 &x,
                                             const float162 &y) {
    return float162{x} -= y;
  }
  friend inline __device__ float162 operator*(const float162 &x,
                                             const float162 &y) {
    return float162{x} *= y;
  }
  friend inline __device__ float162 operator/(const float162 &x,
                                             const float162 &y) {
    return float162{x} /= y;
  }
  friend inline __device__ bool operator==(const float162 &x, const float162 &y) {
    auto r = x.data == y.data;
    return r.x != 0 && r.y != 0;
  }
  friend inline __device__ bool operator!=(const float162 &x, const float162 &y) {
    return !(x == y);
  }
  friend inline __device__ bool operator<(const float162 &x, const float162 &y) {
    auto r = x.data < y.data;
    return r.x != 0 && r.y != 0;
  }
  friend inline __device__ bool operator>(const float162 &x, const float162 &y) {
    return y < x;
  }
  friend inline __device__ bool operator<=(const float162 &x, const float162 &y) {
    return !(y < x);
  }
  friend inline __device__ bool operator>=(const float162 &x, const float162 &y) {
    return !(x < y);
  }
#endif // !defined(__HOUYI_NO_HALF_OPERATORS__)
};
typedef float162 __half2;
// END STRUCT __HALF2

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
inline __device__ short __half_as_short(__half x) {
  return static_cast<__half_raw>(x).x;
}

inline __device__ unsigned short __half_as_ushort(__half x) {
  return static_cast<__half_raw>(x).x;
}

inline __device__ __half __short_as_half(short x) {
  __half_raw r;
  r.x = x;
  return r;
}

inline __device__ __half __ushort_as_half(unsigned short x) {
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

// Rounding mode constants for FP16 conversion
// 1 = round-up, 2 = round-down, 3 = round-to-zero
#define __XTDK_ROUND_RU 1
#define __XTDK_ROUND_RD 2
#define __XTDK_ROUND_RZ 3

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
  return static_cast<__half_raw>(x).data;
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
#if defined(__XPU_ARCH__)
  return static_cast<__half_raw>(x).data;
#else
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
#endif /* (defined(__XPU_ARCH__)) */
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
  return static_cast<__half_raw>(x).data;
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
#if (defined __xcn_on_device__)
  return static_cast<__half_raw>(x).data;
#else
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
#endif /* (defined(__XPU_ARCH__)) */
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

// Store primitives
inline __HOST_DEVICE__ void __stwb(__half *const ptr, const __half value) {
  *ptr = value;
}

inline __HOST_DEVICE__ void __stwb(__half2 *const ptr, const __half2 value) {
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

inline __device__ __half __hadd(__half x, __half y) {
  return __half_raw{static_cast<__half_raw>(x).data +
                    static_cast<__half_raw>(y).data};
}
inline __device__ __half __habs(__half x) {
  return __half_raw{__ocml_fabs_f16(static_cast<__half_raw>(x).data)};
}
inline __device__ __half __hsub(__half x, __half y) {
  return __half_raw{static_cast<__half_raw>(x).data -
                    static_cast<__half_raw>(y).data};
}
inline __device__ __half __hmul(__half x, __half y) {
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
inline __device__ __half __hdiv(__half x, __half y) {
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
inline __HOST_DEVICE__ __half2 __hfma2(__half2 x, __half2 y, __half2 z) {
  return __half2_raw{__ocml_fma_2f16(x, y, z)};
}
inline __HOST_DEVICE__ __half2 __hfma2_sat(__half2 x, __half2 y, __half2 z) {
  auto r = static_cast<__half2_raw>(__hfma2(x, y, z));
  return __half2{__clamp_01(__half_raw{r.data.x}),
                 __clamp_01(__half_raw{r.data.y})};
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
inline __device__ __half hsin(__half x) {
  return __float2half(sinf(__half2float(x)));
}
inline __device__ __half hcos(__half x) {
  return __float2half(cosf(__half2float(x)));
}
inline __device__ __half hexp(__half x) {
  return __half_raw{__ocml_exp_f16(static_cast<__half_raw>(x).data)};
}
inline __device__ __half hexp2(__half x) {
  return __half_raw{__ocml_exp2_f16(static_cast<__half_raw>(x).data)};
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
  output -= (input == 0x3B13);
  return __ushort_as_half(output);
}
inline __device__ __half hlog(__half x) {
  __half res = __half_raw{__ocml_log_f16(static_cast<__half_raw>(x).data)};

  uint16_t input = __half_as_ushort(x);
  uint16_t output = __half_as_ushort(res);
  if (input == 0x160d || input == 0x1d78 || input == 0x6051) {
    output += 1;
    res = __ushort_as_half(output);
  }

  return res;
}
inline __device__ __half hlog10(__half x) {
  return __half_raw{__ocml_log10_f16(static_cast<__half_raw>(x).data)};
}
inline __device__ __half hrcp(__half x) {
  return __half_raw{__builtin_xcn_rcph(static_cast<__half_raw>(x).data)};
}

// For XCN, sqrt.fp16 requires precision compensation
// It is referred to:
// https://ku.baidu-int.com/knowledge/HFVrC7hq1Q/FTlz9IbpJx/_w9hCUBV-i/qLBkfomKpkBLyz
inline __device__ __half hrsqrt(__half x) {
  float x_k = __half2float(x);
  float x_0 = __builtin_xcn_sqrtf(x_k);

  // Three Newton iterations
  float x_i = x_0;
  for (int i = 0; i < 3; i++) {
    float tmp1 = x_i * x_i + x_k;              // x0^2 + xk
    float tmp2 = __builtin_xcn_ldexpf(x_i, 1); // 2 * x0
    x_i = tmp1 / tmp2;
  }

  return __float2half(x_i);
}
inline __device__ __half hsqrt(__half x) {
  #if defined(__XPU5__)
  return __half_raw{__builtin_xcn_sqrth(static_cast<__half_raw>(x).data)};
  #else
  return __float2half(sqrtf(__half2float(x)));
  #endif
}
inline __device__ bool __hisinf(__half x) {
  return __ocml_isinf_f16(static_cast<__half_raw>(x).data);
}
inline __device__ bool __hisnan(__half x) {
  return __ocml_isnan_f16(static_cast<__half_raw>(x).data);
}
inline __device__ __half __hneg(__half x) {
  return __half_raw{-static_cast<__half_raw>(x).data};
}

static inline __device__ __half atomicAdd(__half *const address,
                                          const __half val) {
  __half old = *address;

  bool done = false;
  while (!done) {
    __half new_val = __hadd(val, old);
    done = __houyi_atomic_compare_exchange_strong(
        address, &old, new_val, __ATOMIC_RELAXED, __ATOMIC_RELAXED,
        __HOUYI_MEMORY_SCOPE_AGENT);
  }
  return old;
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
  __half2 old = *address;

  bool done = false;
  while (!done) {
    __half2 new_val = __hadd2(val, old);
    done = __houyi_atomic_compare_exchange_strong(
        address, &old, new_val, __ATOMIC_RELAXED, __ATOMIC_RELAXED,
        __HOUYI_MEMORY_SCOPE_AGENT);
  }
  return old;
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
  return __half2_raw{__ocml_exp_2f16(x)};
}
inline __HOST_DEVICE__ __half2 h2exp2(__half2 x) {
  return __half2_raw{__ocml_exp2_2f16(x)};
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
  return __ocml_rsqrt_2f16(x);
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

#if !defined(HOUYI_NO_HALF)
using half = __half;
using half2 = __half2;
#endif
#endif // defined(__cplusplus)
#elif defined(__GNUC__)
#include "xtdk_fp16_gcc.h"
#endif // !defined(__clang__) && defined(__GNUC__)

#endif // XTDK_XCN_FP16_H
