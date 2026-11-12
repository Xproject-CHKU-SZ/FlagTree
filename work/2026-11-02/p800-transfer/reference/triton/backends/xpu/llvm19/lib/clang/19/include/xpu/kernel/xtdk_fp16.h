/*!\file  xtdk_fp16.h
 * \brief XPU fp16
 */

#ifndef __XPU_KERNEL_XTDK_FP16_H__
#define __XPU_KERNEL_XTDK_FP16_H__

#if defined __xpu__

/* used for subarch3-4 */
#if defined (__XPU_ARCH__) && (__XPU_ARCH__ >= 3)
#define __xpu_on_device__
#endif

#if __xpu_subarch__ <= 2
typedef struct {
  unsigned short val;
} half_float;

#elif __xpu_subarch__ >= 3

#if defined(__XPUCC_RTC__)
#define __HOST_DEVICE__ __device__
#else
#define __HOST_DEVICE__ __host__ __device__
#include "xtdk_vector_functions.h"
#include "xtdk_math.h"
/* C++ header for std::memcpy */
#include <cstring>
#include <assert.h>
#if defined(__cplusplus)
#include <algorithm>
#include <type_traits>
#include <utility>
#endif

#endif // !defined(__XPUCC_RTC__)

#define __XPU_CLANG_ONLY__ 1
#if __XPU_CLANG_ONLY__
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
    struct {
      _Float16 x;
      _Float16 y;
    };
  };
};

#if defined(__cplusplus)
#include "xtdk_fp16_math_fwd.h"

namespace xpu_std {
template <> struct is_floating_point<_Float16> : xpu_std::true_type {};
} // namespace xpu_std

template <bool cond, typename T = void>
using Enable_if_t = typename xpu_std::enable_if<cond, T>::type;

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
#if !defined(__XPU_NO_HALF_CONVERSIONS__)
  __HOST_DEVICE__
  __half(decltype(data) x) : data{x} {}
  template <typename T,
            Enable_if_t<bool(xpu_std::is_floating_point<T>{})> * = nullptr>
  __HOST_DEVICE__ __half(T x) : data{static_cast<_Float16>(x)} {}
#endif
  __HOST_DEVICE__
  __half(const __half &) = default;
  __HOST_DEVICE__
  __half(__half &&) = default;
  __HOST_DEVICE__
  ~__half() = default;

// CREATORS - DEVICE ONLY
#if !defined(__XPU_NO_HALF_CONVERSIONS__)
  template <typename T,
            Enable_if_t<bool(xpu_std::is_integral<T>{})> * = nullptr>
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
#if !defined(__XPU_NO_HALF_CONVERSIONS__)
  template <typename T,
            Enable_if_t<bool(xpu_std::is_floating_point<T>{})> * = nullptr>
  __HOST_DEVICE__ __half &operator=(T x) {
    data = static_cast<_Float16>(x);
    return *this;
  }
#endif

// MANIPULATORS - DEVICE ONLY
#if !defined(__XPU_NO_HALF_CONVERSIONS__)
  template <typename T,
            Enable_if_t<bool(xpu_std::is_integral<T>{})> * = nullptr>
  __device__ __half &operator=(T x) {
    data = static_cast<_Float16>(x);
    return *this;
  }
#endif

#if !defined(__XPU_NO_HALF_OPERATORS__)
  __device__ __half &operator+=(const __half &x) {
    data += x.data;
    return *this;
  }
  __device__ __half &operator-=(const __half &x) {
    data -= x.data;
    return *this;
  }
  __device__ __half &operator*=(const __half &x) {
    data *= x.data;
    return *this;
  }
  __device__ __half &operator/=(const __half &x) {
    data /= x.data;
    return *this;
  }
  __device__ __half &operator++() {
    ++data;
    return *this;
  }
  __device__ __half operator++(int) {
    __half tmp{*this};
    ++*this;
    return tmp;
  }
  __device__ __half &operator--() {
    --data;
    return *this;
  }
  __device__ __half operator--(int) {
    __half tmp{*this};
    --*this;
    return tmp;
  }
#endif

// ACCESSORS
#if !defined(__XPU_NO_HALF_CONVERSIONS__)
  template <typename T,
            Enable_if_t<bool(xpu_std::is_floating_point<T>{})> * = nullptr>
  __HOST_DEVICE__ operator T() const {
    return data;
  }
#endif
  __HOST_DEVICE__
  operator __half_raw() const { return __half_raw{data}; }
  __HOST_DEVICE__
  operator __half_raw() const volatile { return __half_raw{data}; }

#if !defined(__XPU_NO_HALF_CONVERSIONS__)
  template <typename T,
            Enable_if_t<bool(xpu_std::is_integral<T>{})> * = nullptr>
  __HOST_DEVICE__ operator T() const {
    return data;
  }
#endif

#if !defined(__XPU_NO_HALF_OPERATORS__)
  __device__ __half operator+() const { return *this; }
  __device__ __half operator-() const {
    __half tmp{*this};
    tmp.data = -tmp.data;
    return tmp;
  }
#endif

// FRIENDS
#if !defined(__XPU_NO_HALF_OPERATORS__)
  friend inline __device__ __half operator+(const __half &x, const __half &y) {
    return __half{x} += y;
  }
  friend inline __device__ __half operator-(const __half &x, const __half &y) {
    return __half{x} -= y;
  }
  friend inline __device__ __half operator*(const __half &x, const __half &y) {
    return __half{x} *= y;
  }
  friend inline __device__ __half operator/(const __half &x, const __half &y) {
    return __half{x} /= y;
  }
  friend inline __device__ bool operator==(const __half &x, const __half &y) {
    return x.data == y.data;
  }
  friend inline __device__ bool operator!=(const __half &x, const __half &y) {
    return !(x == y);
  }
  friend inline __device__ bool operator<(const __half &x, const __half &y) {
    return x.data < y.data;
  }
  friend inline __device__ bool operator>(const __half &x, const __half &y) {
    return y.data < x.data;
  }
  friend inline __device__ bool operator<=(const __half &x, const __half &y) {
    return x.data <= y.data;
  }
  friend inline __device__ bool operator>=(const __half &x, const __half &y) {
    return !(x < y);
  }
#endif // !defined(__XPU_NO_HALF_OPERATORS__)
};
// END STRUCT __HALF

// BEGIN STRUCT __HALF2
struct __half2 {
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
#if !defined(__XPU_NO_HALF_OPERATORS__)
  __device__ __half2 &operator+=(const __half2 &x) {
    data += x.data;
    return *this;
  }
  __device__ __half2 &operator-=(const __half2 &x) {
    data -= x.data;
    return *this;
  }
  __device__ __half2 &operator*=(const __half2 &x) {
    data *= x.data;
    return *this;
  }
  __device__ __half2 &operator/=(const __half2 &x) {
    data /= x.data;
    return *this;
  }
  __device__ __half2 &operator++() { return *this += _Float16_2{1, 1}; }
  __device__ __half2 operator++(int) {
    __half2 tmp{*this};
    ++*this;
    return tmp;
  }
  __device__ __half2 &operator--() { return *this -= _Float16_2{1, 1}; }
  __device__ __half2 operator--(int) {
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
#if !defined(__XPU_NO_HALF_OPERATORS__)
  __device__ __half2 operator+() const { return *this; }
  __device__ __half2 operator-() const {
    __half2 tmp{*this};
    tmp.data = -tmp.data;
    return tmp;
  }
#endif

// FRIENDS
#if !defined(__XPU_NO_HALF_OPERATORS__)
  friend inline __device__ __half2 operator+(const __half2 &x,
                                             const __half2 &y) {
    return __half2{x} += y;
  }
  friend inline __device__ __half2 operator-(const __half2 &x,
                                             const __half2 &y) {
    return __half2{x} -= y;
  }
  friend inline __device__ __half2 operator*(const __half2 &x,
                                             const __half2 &y) {
    return __half2{x} *= y;
  }
  friend inline __device__ __half2 operator/(const __half2 &x,
                                             const __half2 &y) {
    return __half2{x} /= y;
  }
  friend inline __device__ bool operator==(const __half2 &x, const __half2 &y) {
    auto r = x.data == y.data;
    return r.x != 0 && r.y != 0;
  }
  friend inline __device__ bool operator!=(const __half2 &x, const __half2 &y) {
    return !(x == y);
  }
  friend inline __device__ bool operator<(const __half2 &x, const __half2 &y) {
    auto r = x.data < y.data;
    return r.x != 0 && r.y != 0;
  }
  friend inline __device__ bool operator>(const __half2 &x, const __half2 &y) {
    return y < x;
  }
  friend inline __device__ bool operator<=(const __half2 &x, const __half2 &y) {
    return !(y < x);
  }
  friend inline __device__ bool operator>=(const __half2 &x, const __half2 &y) {
    return !(x < y);
  }
#endif // !defined(__XPU_NO_HALF_OPERATORS__)
};
// END STRUCT __HALF2

#ifndef __XPUCC_RTC__
static inline unsigned short __internal_float2half(const float f, unsigned int &sign, unsigned int &remainder)
{
    unsigned int x;
    unsigned int u;
    unsigned int result;
    (void)std::memcpy(&x, &f, sizeof(f));
    u = (x & 0x7fffffffU);
    sign = ((x >> 16U) & 0x8000U);
    // NaN/+Inf/-Inf
    if (u >= 0x7f800000U) {
        remainder = 0U;
        result = ((u == 0x7f800000U) ? (sign | 0x7c00U) : 0x7fffU);
    } else if (u > 0x477fefffU) { // Overflows
        remainder = 0x80000000U;
        result = (sign | 0x7bffU);
    } else if (u >= 0x38800000U) { // Normal numbers
        remainder = u << 19U;
        u -= 0x38000000U;
        result = (sign | (u >> 13U));
    } else if (u < 0x33000001U) { // +0/-0
        remainder = u;
        result = sign;
    } else { // Denormal numbers
        const unsigned int exponent = u >> 23U;
        const unsigned int shift = 0x7eU - exponent;
        unsigned int mantissa = (u & 0x7fffffU);
        mantissa |= 0x800000U;
        remainder = mantissa << (32U - shift);
        result = (sign | (mantissa >> shift));
        result &= 0x0000FFFFU;
    }
    return static_cast<unsigned short>(result);
}
#endif  /* #if !defined(__XPUCC_RTC__) */

inline __HOST_DEVICE__ __half2 make_half2(__half x, __half y) {
  return __half2{x, y};
}

inline __device__ __half __low2half(__half2 x) {
  return __half{__half_raw{static_cast<__half2_raw>(x).data.x}};
}

inline __device__ __half __high2half(__half2 x) {
  return __half{__half_raw{static_cast<__half2_raw>(x).data.y}};
}

inline __device__ __half2 __half2half2(__half x) { return __half2{x, x}; }

inline __device__ __half2 __halves2half2(__half x, __half y) {
  return __half2{x, y};
}

inline __device__ __half2 __low2half2(__half2 x) {
  return __half2{_Float16_2{static_cast<__half2_raw>(x).data.x,
                            static_cast<__half2_raw>(x).data.x}};
}

inline __device__ __half2 __high2half2(__half2 x) {
  return __half2_raw{_Float16_2{static_cast<__half2_raw>(x).data.y,
                                static_cast<__half2_raw>(x).data.y}};
}

inline __device__ __half2 __lows2half2(__half2 x, __half2 y) {
  return __half2_raw{_Float16_2{static_cast<__half2_raw>(x).data.x,
                                static_cast<__half2_raw>(y).data.x}};
}

inline __device__ __half2 __highs2half2(__half2 x, __half2 y) {
  return __half2_raw{_Float16_2{static_cast<__half2_raw>(x).data.y,
                                static_cast<__half2_raw>(y).data.y}};
}

inline __device__ __half2 __lowhigh2highlow(__half2 x) {
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

inline __HOST_DEVICE__ __half __float2half_rz(float x) {
  __half val;
#if defined(__xpu_on_device__)
    return __half_raw{__builtin_xpu_float2half_rz(x)};
#else
    __half_raw r;
    unsigned int sign = 0U;
    unsigned int remainder = 0U;
    r.x = __internal_float2half(x, sign, remainder);
    val = r;
#endif
    return val;
}
inline __HOST_DEVICE__ __half __float2half_rd(float x) {
  __half val;
#if defined(__xpu_on_device__)
    return __half_raw{__builtin_xpu_float2half_rd(x)};
#else
    __half_raw r;
    unsigned int sign = 0U;
    unsigned int remainder = 0U;
    r.x = __internal_float2half(x, sign, remainder);
    if ((remainder != 0U) && (sign != 0U)) {
        r.x++;
    }
    val = r;
#endif
    return val;
}
inline __HOST_DEVICE__ __half __float2half_ru(float x) {
  __half val;
#if defined(__xpu_on_device__)
  return __half_raw{__builtin_xpu_float2half_ru(x)};
#else
    __half_raw r;
    unsigned int sign = 0U;
    unsigned int remainder = 0U;
    r.x = __internal_float2half(x, sign, remainder);
    if ((remainder != 0U) && (sign == 0U)) {
        r.x++;
    }
    val = r;
#endif
    return val;
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
  return static_cast<__half_raw>(x).data;
}
inline __device__ int __half2int_rd(__half x) {
  return static_cast<__half_raw>(x).data;
}
inline __device__ int __half2int_ru(__half x) {
  return static_cast<__half_raw>(x).data;
}

// int -> half
inline __HOST_DEVICE__ __half __int2half_rn(int x) {
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
  return static_cast<__half_raw>(x).data;
}
inline __device__ short __half2short_rd(__half x) {
  return static_cast<__half_raw>(x).data;
}
inline __device__ short __half2short_ru(__half x) {
  return static_cast<__half_raw>(x).data;
}

// short -> half
inline __HOST_DEVICE__ __half __short2half_rn(short x) {
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
  return static_cast<__half_raw>(x).data;
}
inline __device__ long long __half2ll_rd(__half x) {
  return static_cast<__half_raw>(x).data;
}
inline __device__ long long __half2ll_ru(__half x) {
  return static_cast<__half_raw>(x).data;
}

// long long -> half
inline __HOST_DEVICE__ __half __ll2half_rn(long long x) {
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
  return static_cast<__half_raw>(x).data;
}
inline __device__ unsigned int __half2uint_rd(__half x) {
  return static_cast<__half_raw>(x).data;
}
inline __device__ unsigned int __half2uint_ru(__half x) {
  return static_cast<__half_raw>(x).data;
}

// unsigned int -> half
inline __HOST_DEVICE__ __half __uint2half_rn(unsigned int x) {
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
  return static_cast<__half_raw>(x).data;
}
inline __device__ unsigned short __half2ushort_rd(__half x) {
  return static_cast<__half_raw>(x).data;
}
inline __device__ unsigned short __half2ushort_ru(__half x) {
  return static_cast<__half_raw>(x).data;
}

// unsigned short -> half
inline __HOST_DEVICE__ __half __ushort2half_rn(unsigned short x) {
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
  return static_cast<__half_raw>(x).data;
}
inline __device__ unsigned long long __half2ull_rd(__half x) {
  return static_cast<__half_raw>(x).data;
}
inline __device__ unsigned long long __half2ull_ru(__half x) {
  return static_cast<__half_raw>(x).data;
}

// unsigned long long -> half
inline __HOST_DEVICE__ __half __ull2half_rn(unsigned long long x) {
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

// load primitives
inline __device__ __half __ldg(const __half *ptr) { return *ptr; }

inline __device__ __half __ldcg(const __half *ptr) {
  return *ptr;
}
inline __device__ __half __ldca(const __half *ptr) {
  return *ptr;
}
inline __device__ __half __ldcs(const __half *ptr) { return *ptr; }

inline __device__ __half2 __ldg(const __half2 *ptr) { return *ptr; }
inline __device__ __half2 __ldcg(const __half2 *ptr) {
  return *ptr;
}
inline __device__ __half2 __ldca(const __half2 *ptr) {
  return *ptr;
}
inline __device__ __half2 __ldcs(const __half2 *ptr) { return *ptr; }

// Store primitives
inline __device__ void __stwb(__half *const ptr, const __half value) {
  *ptr = value;
}

inline __device__ void __stwb(__half2 *const ptr, const __half2 value) {
  *ptr = value;
}

inline __device__ void __stcg(__half *const ptr, const __half value) {
  *ptr = value;
}

inline __device__ void __stcg(__half2 *const ptr, const __half2 value) {
  *ptr = value;
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

inline __device__ __half2 __heq2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(x).data == static_cast<__half2_raw>(y).data;
  return __builtin_convertvector(-r, _Float16_2);
}
inline __device__ __half2 __hne2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(x).data != static_cast<__half2_raw>(y).data;
  return __builtin_convertvector(-r, _Float16_2);
}
inline __device__ __half2 __hle2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(x).data <= static_cast<__half2_raw>(y).data;
  return __builtin_convertvector(-r, _Float16_2);
}
inline __device__ __half2 __hge2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(x).data >= static_cast<__half2_raw>(y).data;
  return __builtin_convertvector(-r, _Float16_2);
}
inline __device__ __half2 __hlt2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(x).data < static_cast<__half2_raw>(y).data;
  return __builtin_convertvector(-r, _Float16_2);
}
inline __device__ __half2 __hgt2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(x).data > static_cast<__half2_raw>(y).data;
  return __builtin_convertvector(-r, _Float16_2);
}
inline __device__ __half2 __hequ2(__half2 x, __half2 y) {
  return __heq2(x, y);
}
inline __device__ __half2 __hneu2(__half2 x, __half2 y) {
  return __hne2(x, y);
}
inline __device__ __half2 __hleu2(__half2 x, __half2 y) {
  return __hle2(x, y);
}
inline __device__ __half2 __hgeu2(__half2 x, __half2 y) {
  return __hge2(x, y);
}
inline __device__ __half2 __hltu2(__half2 x, __half2 y) {
  return __hlt2(x, y);
}
inline __device__ __half2 __hgtu2(__half2 x, __half2 y) {
  return __hgt2(x, y);
}

inline __device__ bool __hbeq2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(__heq2(x, y));
  return r.data.x != 0 && r.data.y != 0;
}
inline __device__ bool __hbne2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(__hne2(x, y));
  return r.data.x != 0 && r.data.y != 0;
}
inline __device__ bool __hble2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(__hle2(x, y));
  return r.data.x != 0 && r.data.y != 0;
}
inline __device__ bool __hbge2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(__hge2(x, y));
  return r.data.x != 0 && r.data.y != 0;
}
inline __device__ bool __hblt2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(__hlt2(x, y));
  return r.data.x != 0 && r.data.y != 0;
}
inline __device__ bool __hbgt2(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(__hgt2(x, y));
  return r.data.x != 0 && r.data.y != 0;
}
inline __device__ bool __hbequ2(__half2 x, __half2 y) {
  return __hbeq2(x, y);
}
inline __device__ bool __hbneu2(__half2 x, __half2 y) {
  return __hbne2(x, y);
}
inline __device__ bool __hbleu2(__half2 x, __half2 y) {
  return __hble2(x, y);
}
inline __device__ bool __hbgeu2(__half2 x, __half2 y) {
  return __hbge2(x, y);
}
inline __device__ bool __hbltu2(__half2 x, __half2 y) {
  return __hblt2(x, y);
}
inline __device__ bool __hbgtu2(__half2 x, __half2 y) {
  return __hbgt2(x, y);
}

inline __device__ int __hisinf(__half x) {
  int retval;
  unsigned short hx = __builtin_xpu_bitcast_to_uint(static_cast<__half_raw>(x).data);
  if (hx == 0xFC00U) { //-inf
    retval = -1;
  } else if (hx == 0x7C00U) { //+inf
    retval = 1;
  } else {
    retval = 0;
  }
  return retval;
}

inline __device__ bool __hisnan(__half x) {
  unsigned short hx =
      __builtin_xpu_bitcast_to_uint(static_cast<__half_raw>(x).data);
  return ((hx >> 10) == 0x1F) && ((hx & 0x03FF) != 0);
}
inline __device__ __half __hmax(const __half x, const __half y) {
  return __half_raw{__builtin_xpu_fmax_hf(static_cast<__half_raw>(x).data,
                                          static_cast<__half_raw>(y).data)};
}
inline __device__ __half __hmax_nan(const __half x, const __half y) {
  if (__hisnan(x)) {
    return x;
  } else if (__hisnan(y)) {
    return y;
  }
  return __hmax(x, y);
}
inline __device__ __half __hmin(const __half x, const __half y) {
  return __half_raw{__builtin_xpu_fmin_hf(static_cast<__half_raw>(x).data,
                                          static_cast<__half_raw>(y).data)};
}
inline __device__ __half __hmin_nan(const __half x, const __half y) {
  if (__hisnan(x)) {
    return x;
  } else if (__hisnan(y)) {
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
  return __half_raw{__builtin_xpu_fabs_hf(static_cast<__half_raw>(x).data)};
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
  return __half_raw{__builtin_xpu_fmac_hf_rn(static_cast<__half_raw>(x).data,
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

inline __device__ __half2 __hadd2(__half2 x, __half2 y) {
  return __half2_raw{static_cast<__half2_raw>(x).data +
                     static_cast<__half2_raw>(y).data};
}
inline __device__ __half2 __habs2(__half2 x) {
  return __half2_raw{
      _Float16_2{__builtin_xpu_fabs_hf(static_cast<__half2_raw>(x).data.x),
                 __builtin_xpu_fabs_hf(static_cast<__half2_raw>(x).data.y)}};
}
inline __device__ __half2 __hsub2(__half2 x, __half2 y) {
  return __half2_raw{static_cast<__half2_raw>(x).data -
                     static_cast<__half2_raw>(y).data};
}
inline __device__ __half2 __hmul2(__half2 x, __half2 y) {
  return __half2_raw{static_cast<__half2_raw>(x).data *
                     static_cast<__half2_raw>(y).data};
}
inline __device__ __half2 __hadd2_sat(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(__hadd2(x, y));
  return __half2{__clamp_01(__half_raw{r.data.x}),
                 __clamp_01(__half_raw{r.data.y})};
}
inline __device__ __half2 __hsub2_sat(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(__hsub2(x, y));
  return __half2{__clamp_01(__half_raw{r.data.x}),
                 __clamp_01(__half_raw{r.data.y})};
}
inline __device__ __half2 __hmul2_sat(__half2 x, __half2 y) {
  auto r = static_cast<__half2_raw>(__hmul2(x, y));
  return __half2{__clamp_01(__half_raw{r.data.x}),
                 __clamp_01(__half_raw{r.data.y})};
}
inline __device__ __half2 __hfma2(__half2 x, __half2 y, __half2 z) {
  return __half2_raw{
      _Float16_2{__builtin_xpu_fmac_hf_rn(static_cast<__half2_raw>(x).data.x,
                                          static_cast<__half2_raw>(y).data.x,
                                          static_cast<__half2_raw>(z).data.x),
                 __builtin_xpu_fmac_hf_rn(static_cast<__half2_raw>(x).data.y,
                                          static_cast<__half2_raw>(y).data.y,
                                          static_cast<__half2_raw>(z).data.y)}};
}
inline __device__ __half2 __hfma2_sat(__half2 x, __half2 y, __half2 z) {
  auto r = static_cast<__half2_raw>(__hfma2(x, y, z));
  return __half2{__clamp_01(__half_raw{r.data.x}),
                 __clamp_01(__half_raw{r.data.y})};
}
inline __device__ __half2 __h2div(__half2 x, __half2 y) {
  return __half2_raw{static_cast<__half2_raw>(x).data /
                     static_cast<__half2_raw>(y).data};
}

inline __device__ __half htrunc(__half x) {
  return __half_raw{__builtin_xpu_fix2half_rz(
      __builtin_xpu_half2fix_rz(static_cast<__half_raw>(x).data))};
}
inline __device__ __half hceil(__half x) {
  return __half_raw{__builtin_xpu_fix2half_ru(
      __builtin_xpu_half2fix_ru(static_cast<__half_raw>(x).data))};
}
inline __device__ __half hfloor(__half x) {
  return __half_raw{__builtin_xpu_fix2half_rd(
      __builtin_xpu_half2fix_rd(static_cast<__half_raw>(x).data))};
}
inline __device__ __half hrint(__half x) {
  return __half_raw{__builtin_xpu_fix2half_rn(
      __builtin_xpu_half2fix_rn(static_cast<__half_raw>(x).data))};
}
inline __device__ __half hsin(__half x) {
  return __half_raw{__builtin_xpu_float2half_rn(__builtin_sinf(
      __builtin_xpu_half2float_rn(static_cast<__half_raw>(x).data)))};
}
inline __device__ __half hcos(__half x) {
  return __half_raw{__builtin_xpu_float2half_rn(__builtin_cosf(
      __builtin_xpu_half2float_rn(static_cast<__half_raw>(x).data)))};
}
inline __device__ __half hexp(__half x) {
  return __half_raw{__builtin_xpu_float2half_rn(__builtin_xpu_expf_rn(
      __builtin_xpu_half2float_rn(static_cast<__half_raw>(x).data)))};
}
// lnx
inline __device__ __half hlog(__half x) {
  return __half_raw{__builtin_xpu_float2half_rn(__builtin_xpu_logf_rn(
      __builtin_xpu_half2float_rn(static_cast<__half_raw>(x).data)))};
}

inline __device__ __half hrcp(__half x) {
  return __half_raw{__builtin_xpu_float2half_rn(
      1.f / __builtin_xpu_half2float_rn(static_cast<__half_raw>(x).data))};
}

inline __device__ __half hexp2(__half x) {
  return __half_raw{__builtin_xpu_float2half_rn(pow_rz(2.0f, __half2float(x)))};
}
inline __device__ __half hexp10(__half x) {
  return __half_raw{__builtin_xpu_float2half_rn(pow_rz(10.0f, __half2float(x)))};
}

inline __device__ __half hlog2(__half x) {
  const float LnTwo = 0.69314718055994530942f;
  return __half_raw{__hmul(hlog(x), hrcp(__float2half(LnTwo)))};
}

inline __device__ __half hlog10(__half x) {
  const float LnTen = 2.30258509299404568402f;
  return __half_raw{__hmul(hlog(x), hrcp(__float2half(LnTen)))};
}
inline __device__ __half hrsqrt(__half x) {
  return __half_raw{__builtin_xpu_float2half_rn(
      1.f / __builtin_xpu_sqrtf_rn(
                __builtin_xpu_half2float_rn(static_cast<__half_raw>(x).data)))};
}
inline __device__ __half hsqrt(__half x) {
  return __half_raw{__builtin_xpu_float2half_rn(__builtin_xpu_sqrtf_rn(
      __builtin_xpu_half2float_rn(static_cast<__half_raw>(x).data)))};
}
inline __device__ __half __hneg(__half x) {
  return __half_raw{-static_cast<__half_raw>(x).data};
}
inline __device__ __half2 h2trunc(__half2 x) {
  return __half2_raw{_Float16_2{
      __builtin_xpu_fix2half_rz(
          __builtin_xpu_half2fix_rz(static_cast<__half2_raw>(x).data.x)),
      __builtin_xpu_fix2half_rz(
          __builtin_xpu_half2fix_rz(static_cast<__half2_raw>(x).data.y))}};
}
inline __device__ __half2 h2ceil(__half2 x) {
  return __half2_raw{_Float16_2{
      __builtin_xpu_fix2half_ru(
          __builtin_xpu_half2fix_ru(static_cast<__half2_raw>(x).data.x)),
      __builtin_xpu_fix2half_ru(
          __builtin_xpu_half2fix_ru(static_cast<__half2_raw>(x).data.y))}};
}
inline __device__ __half2 h2floor(__half2 x) {
  return __half2_raw{_Float16_2{
      __builtin_xpu_fix2half_rd(
          __builtin_xpu_half2fix_rd(static_cast<__half2_raw>(x).data.x)),
      __builtin_xpu_fix2half_rd(
          __builtin_xpu_half2fix_rd(static_cast<__half2_raw>(x).data.y))}};
}
inline __device__ __half2 h2rint(__half2 x) {
  return __half2_raw{_Float16_2{
      __builtin_xpu_fix2half_rn(
          __builtin_xpu_half2fix_rn(static_cast<__half2_raw>(x).data.x)),
      __builtin_xpu_fix2half_rn(
          __builtin_xpu_half2fix_rn(static_cast<__half2_raw>(x).data.y))}};
}
inline __device__ __half2 h2sin(__half2 x) {
  return __half2_raw{_Float16_2{
      __builtin_xpu_float2half_rn(__builtin_sinf(
          __builtin_xpu_half2float_rn(static_cast<__half2_raw>(x).data.x))),
      __builtin_xpu_float2half_rn(__builtin_sinf(
          __builtin_xpu_half2float_rn(static_cast<__half2_raw>(x).data.y)))}};
}
inline __device__ __half2 h2cos(__half2 x) {
  return __half2_raw{_Float16_2{
      __builtin_xpu_float2half_rn(__builtin_cosf(
          __builtin_xpu_half2float_rn(static_cast<__half2_raw>(x).data.x))),
      __builtin_xpu_float2half_rn(__builtin_cosf(
          __builtin_xpu_half2float_rn(static_cast<__half2_raw>(x).data.y)))}};
}
inline __device__ __half2 h2exp(__half2 x) {
  return __half2_raw{_Float16_2{
      __builtin_xpu_float2half_rn(__builtin_xpu_expf_rn(
          __builtin_xpu_half2float_rn(static_cast<__half2_raw>(x).data.x))),
      __builtin_xpu_float2half_rn(__builtin_xpu_expf_rn(
          __builtin_xpu_half2float_rn(static_cast<__half2_raw>(x).data.y)))}};
}
inline __device__ __half2 h2log(__half2 x) {
  return __half2_raw{_Float16_2{
      __builtin_xpu_float2half_rn(__builtin_xpu_logf_rn(
          __builtin_xpu_half2float_rn(static_cast<__half2_raw>(x).data.x))),
      __builtin_xpu_float2half_rn(__builtin_xpu_logf_rn(
          __builtin_xpu_half2float_rn(static_cast<__half2_raw>(x).data.y)))}};
}

inline __device__ __half2 h2exp2(__half2 x) {
  return __half2_raw{_Float16_2{__builtin_xpu_float2half_rn(pow_rz(2.0f, __half2float(static_cast<__half2_raw>(x).data.x))),
                                __builtin_xpu_float2half_rn(pow_rz(2.0f, __half2float(static_cast<__half2_raw>(x).data.y)))}};
}
inline __device__ __half2 h2exp10(__half2 x) {
  return __half2_raw{_Float16_2{__builtin_xpu_float2half_rn(pow_rz(10.0f, __half2float(static_cast<__half2_raw>(x).data.x))),
                                __builtin_xpu_float2half_rn(pow_rz(10.0f, __half2float(static_cast<__half2_raw>(x).data.y)))}};
}
inline __device__ __half2 h2log2(__half2 x) {
  return __half2_raw{
      _Float16_2{__hmul(hlog(__half(static_cast<__half2_raw>(x).data.x)),
                        hrcp(__uint2half_rn(0x3f317218U))),
                 __hmul(hlog(__half(static_cast<__half2_raw>(x).data.y)),
                        hrcp(__uint2half_rn(0x3f317218U)))}};
}
inline __device__ __half2 h2log10(__half2 x) {
  return __half2_raw{
      _Float16_2{__hmul(hlog2(__half(static_cast<__half2_raw>(x).data.x)),
                        __uint2half_rn(0x3E9A209BU)),
                 __hmul(hlog2(__half(static_cast<__half2_raw>(x).data.y)),
                        __uint2half_rn(0x3E9A209BU))}};
}
inline __device__ __half2 h2rcp(__half2 x) {
  return __half2_raw{_Float16_2{
      __builtin_xpu_float2half_rn(
          1.f /
          __builtin_xpu_half2float_rn(static_cast<__half2_raw>(x).data.x)),
      __builtin_xpu_float2half_rn(
          1.f /
          __builtin_xpu_half2float_rn(static_cast<__half2_raw>(x).data.y))}};
}
inline __device__ __half2 h2rsqrt(__half2 x) {
  return __half2_raw{
      _Float16_2{__builtin_xpu_float2half_rn(
                     1.f / __builtin_xpu_sqrtf_rn(__builtin_xpu_half2float_rn(
                               static_cast<__half2_raw>(x).data.x))),
                 __builtin_xpu_float2half_rn(
                     1.f / __builtin_xpu_sqrtf_rn(__builtin_xpu_half2float_rn(
                               static_cast<__half2_raw>(x).data.y)))}};
}
inline __device__ __half2 h2sqrt(__half2 x) {
  return __half2_raw{_Float16_2{
      __builtin_xpu_float2half_rn(__builtin_xpu_sqrtf_rn(
          __builtin_xpu_half2float_rn(static_cast<__half2_raw>(x).data.x))),
      __builtin_xpu_float2half_rn(__builtin_xpu_sqrtf_rn(
          __builtin_xpu_half2float_rn(static_cast<__half2_raw>(x).data.y)))}};
}
inline __device__ __half2 __hisinf2(__half2 x) {
  unsigned short hx =
      __builtin_xpu_bitcast_to_uint(static_cast<__half2_raw>(x).data.x);
  unsigned short xx = ((hx >> 10) == 0x1F) && ((hx & 0x03FF) == 0);
  unsigned short hy =
      __builtin_xpu_bitcast_to_uint(static_cast<__half2_raw>(x).data.y);
  unsigned short xy = ((hy >> 10) == 0x1F) && ((hy & 0x03FF) == 0);
  return __half2_raw{_Float16_2{__builtin_xpu_bitcast_to_half(xx),
                                __builtin_xpu_bitcast_to_half(xy)}};
}
inline __device__ __half2 __hisnan2(__half2 x) {
  unsigned short hx =
      __builtin_xpu_bitcast_to_uint(static_cast<__half2_raw>(x).data.x);
  unsigned short xx = ((hx >> 10) == 0x1F) && ((hx & 0x03FF) != 0);
  unsigned short hy =
      __builtin_xpu_bitcast_to_uint(static_cast<__half2_raw>(x).data.y);
  unsigned short xy = ((hy >> 10) == 0x1F) && ((hy & 0x03FF) != 0);
  return __half2_raw{_Float16_2{__builtin_xpu_bitcast_to_half(xx),
                                __builtin_xpu_bitcast_to_half(xy)}};
}
inline __device__ __half2 __hneg2(__half2 x) {
  return __half2_raw{-static_cast<__half2_raw>(x).data};
}

#if !defined(XPU_NO_HALF)
using half = __half;
using half2 = __half2;
#endif
#endif // defined(__cplusplus)
#elif defined(__GNUC__)
#include "xtdk_fp16_gcc.h"
#endif // !defined(__clang__) && defined(__GNUC__)
#endif // __xpu_subarch__ <= 2

#elif defined __XCN__
#include "xcn/kernel/xtdk_fp16.h"
#endif

#endif // __XPU_KERNEL_XTDK_FP16_H__