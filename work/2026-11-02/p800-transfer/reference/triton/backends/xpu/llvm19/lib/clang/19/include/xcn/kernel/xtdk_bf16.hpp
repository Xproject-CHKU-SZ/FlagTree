#if !defined(__XCN_KERNEL_XTDK_BF16_HPP__)
#define __XCN_KERNEL_XTDK_BF16_HPP__

#if !defined(__XCN_KERNEL_XTDK_BF16_H__)
#error "Do not include this file directly. Instead, include xtdk_bf16.h."
#endif

#if !defined(_MSC_VER) && __cplusplus >= 201103L
#   define __CPP_VERSION_AT_LEAST_11_BF16
#elif _MSC_FULL_VER >= 190024210 && _MSVC_LANG >= 201103L
#   define __CPP_VERSION_AT_LEAST_11_BF16
#endif

#if defined(__CPP_VERSION_AT_LEAST_11_BF16) && !defined(__HOUYICC_RTC__)
#include "xtdk_utility.h"
#endif /* defined(__CPP_VERSION_AT_LEAST_11_BF16) && !defined(__HOUYICC_RTC__) */

#if !defined(__HOUYICC_RTC__)
/* C++ header for std::memcpy */
/* This header should not be included, but it’s already required by external dependencies, so it can’t be removed. */
#include <cstring>
#endif

/* utility header for make_float2 */
#include "xtdk_vector_functions.h"

/* utility header for shfl funcs */
#include "xtdk_warp_sync_functions.h"

/* Set up function decorations */
#define __HOUYI_BF16_DECL__ static __device__ __inline__
#define __HOUYI_HOSTDEVICE_BF16_DECL__ static __host__ __device__ __inline__
#define __VECTOR_FUNCTIONS_DECL__ static __inline__ __host__ __device__
#define __HOUYI_HOSTDEVICE__ __host__ __device__
/* Set up structure-alignment attribute */
#define __HOUYI_ALIGN__(align) __align__(align)

/* Macros to allow xpu_bfloat16 & xpu_bfloat162 to be used by inline assembly.
 * Use &(var) (not &(var).__x) so these macros also work with float/short
 * arguments that appear as conversion-function inputs in inline asm.
 * For __xpu_bfloat16 the struct address equals the address of its only member
 * (unsigned short __x), which has the same binary layout as the bf16 bit pattern. */
#define __BFLOAT16_TO_US(var) *(reinterpret_cast<unsigned short *>(&(var)))
#define __BFLOAT16_TO_CUS(var) *(reinterpret_cast<const unsigned short *>(&(var)))
#define __BFLOAT162_TO_UI(var) *(reinterpret_cast<unsigned int *>(&(var)))
#define __BFLOAT162_TO_CUI(var) *(reinterpret_cast<const unsigned int *>(&(var)))
#define __UI_TO_BFLOAT162(var) *(reinterpret_cast<__xpu_bfloat162 *>(&(var)))

#define HOUYI_ONE_BF16 __ushort_as_bfloat16((unsigned short)0x3F80U)
#define HOUYI_ZERO_BF16 __ushort_as_bfloat16((unsigned short)0x0000U)
#define HOUYI_INF_BF16 __ushort_as_bfloat16((unsigned short)0x7F80U)
#define HOUYI_MAX_NORMAL_BF16 __ushort_as_bfloat16((unsigned short)0x7F7FU)
#define HOUYI_MIN_DENORM_BF16 __ushort_as_bfloat16((unsigned short)0x0001U)
#define HOUYI_NAN_BF16 __ushort_as_bfloat16((unsigned short)0x7FFFU)
#define HOUYI_NEG_ZERO_BF16 __ushort_as_bfloat16((unsigned short)0x8000U)

/**
* Types which allow static initialization of "xpu_bfloat16" and "xpu_bfloat162" until
* these become an actual builtin. Note this initialization is as a
* bitfield representation of "xpu_bfloat16", and not a conversion from short->xpu_bfloat16.
* Such a representation will be deprecated in a future version of HOUYI. 
* (Note these are visible to non-nvcc compilers, including C-only compilation)
*/
typedef struct __HOUYI_ALIGN__(2) {
    unsigned short x;
} __xpu_bfloat16_raw;

typedef struct __HOUYI_ALIGN__(4) {
    unsigned short x;
    unsigned short y;
} __xpu_bfloat162_raw;

/* All other definitions in this file are only visible to C++ compilers */
#if defined(__cplusplus)

/* Hide GCC member initialization list warnings because of host/device in-function init requirement */
#if defined(__GNUC__)
#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wstrict-aliasing"
#pragma GCC diagnostic ignored "-Weffc++"
#endif /* __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6) */
#endif /* defined(__GNUC__) */

/* class' : multiple assignment operators specified
   The class has multiple assignment operators of a single type. This warning is informational */
#if defined(_MSC_VER) && _MSC_VER >= 1500
#pragma warning( push )
#pragma warning( disable:4522 )
#endif /* defined(__GNUC__) */

typedef __bf16 __attribute__((ext_vector_type(2))) __xpu_bfloat162_native;
typedef __bf16 __attribute__((ext_vector_type(4))) __xpu_bfloat164_native;
typedef __bf16 __attribute__((ext_vector_type(8))) __xpu_bfloat168_native;
typedef __bf16 __attribute__((ext_vector_type(16))) __xpu_bfloat1616_native;

struct __HOUYI_ALIGN__(2) __xpu_bfloat16 {
public:
    __bf16 __x;

public:
#if defined(__CPP_VERSION_AT_LEAST_11_BF16)
    __xpu_bfloat16() = default;
#else
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16() { }
#endif /* defined(__CPP_VERSION_AT_LEAST_11_BF16) */

    /* Convert to/from __xpu_bfloat16_raw */
    __HOUYI_HOSTDEVICE__ constexpr __xpu_bfloat16(const __xpu_bfloat16_raw &hr) : __x(__builtin_bit_cast(__bf16, hr.x)) { }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16 &operator=(const __xpu_bfloat16_raw &hr) { __x = __ushort_as_bfloat16(hr.x).__x; return *this; }
    __HOUYI_HOSTDEVICE__ volatile __xpu_bfloat16 &operator=(const __xpu_bfloat16_raw &hr) volatile { __x = __ushort_as_bfloat16(hr.x).__x; return *this; }
    __HOUYI_HOSTDEVICE__ volatile __xpu_bfloat16 &operator=(const volatile __xpu_bfloat16_raw &hr) volatile { __x = __ushort_as_bfloat16(hr.x).__x; return *this; }
    __HOUYI_HOSTDEVICE__ operator __xpu_bfloat16_raw() const { __xpu_bfloat16_raw ret; ret.x = __builtin_bit_cast(unsigned short, __x); return ret; }
    __HOUYI_HOSTDEVICE__ operator __xpu_bfloat16_raw() const volatile { __xpu_bfloat16_raw ret; __bf16 x = __x; ret.x = __builtin_bit_cast(unsigned short, x); return ret; }

#if !defined(__HOUYI_NO_BFLOAT16_CONVERSIONS__)
    /* Construct from float/double */
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16(const float f) { __x = __float2bfloat16(f).__x;  }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16(const double f) { __x = __double2bfloat16(f).__x;  }

    __HOUYI_HOSTDEVICE__ operator float() const { return __bfloat162float(*this); }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16 &operator=(const float f) { __x = __float2bfloat16(f).__x; return *this; }

    /* We omit "cast to double" operator, so as to not be ambiguous about up-cast */
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16 &operator=(const double f) { __x = __double2bfloat16(f).__x; return *this; }

/* Member functions only available to nvcc compilation so far */
    /* Allow automatic construction from types supported natively in hardware */
    /* Note we do avoid constructor init-list because of special host/device compilation rules */
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16(char val) { __x = __short2bfloat16_rn(val).__x;  }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16(unsigned char val) { __x = __ushort2bfloat16_rn(val).__x;  }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16(short val) { __x = __short2bfloat16_rn(val).__x;  }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16(unsigned short val) { __x = __ushort2bfloat16_rn(val).__x;  }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16(int val) { __x = __int2bfloat16_rn(val).__x;  }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16(unsigned int val) { __x = __uint2bfloat16_rn(val).__x;  }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16(long long val) { __x = __ll2bfloat16_rn(val).__x;  }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16(unsigned long long val) { __x = __ull2bfloat16_rn(val).__x; }

    /* Allow automatic casts to supported builtin types, matching all that are permitted with float */
    __HOUYI_HOSTDEVICE__ operator signed char() const { return __bfloat162char_rz(*this); }
    __HOUYI_HOSTDEVICE__ operator unsigned char() const { return __bfloat162uchar_rz(*this); }
    __HOUYI_HOSTDEVICE__
    __forceinline__ operator char() const {
      char value;
      if (((char)-1) < (char)0) {
        value = static_cast<char>(__bfloat162char_rz(*this));
      } else {
        value = static_cast<char>(__bfloat162uchar_rz(*this));
      }
      return value;
    }
    __HOUYI_HOSTDEVICE__ operator short() const { return __bfloat162short_rz(*this); }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16 &operator=(short val) { __x = __short2bfloat16_rn(val).__x; return *this; }

    __HOUYI_HOSTDEVICE__ operator unsigned short() const { return __bfloat162ushort_rz(*this); }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16 &operator=(unsigned short val) { __x = __ushort2bfloat16_rn(val).__x; return *this; }

    __HOUYI_HOSTDEVICE__ operator int() const { return __bfloat162int_rz(*this); }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16 &operator=(int val) { __x = __int2bfloat16_rn(val).__x; return *this; }

    __HOUYI_HOSTDEVICE__ operator unsigned int() const { return __bfloat162uint_rz(*this); }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16 &operator=(unsigned int val) { __x = __uint2bfloat16_rn(val).__x; return *this; }

    __HOUYI_HOSTDEVICE__ operator long long() const { return __bfloat162ll_rz(*this); }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16 &operator=(long long val) { __x = __ll2bfloat16_rn(val).__x; return *this; }

    __HOUYI_HOSTDEVICE__ operator unsigned long long() const { return __bfloat162ull_rz(*this); }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16 &operator=(unsigned long long val) { __x = __ull2bfloat16_rn(val).__x; return *this; }

    /* Boolean conversion - note both 0 and -0 must return false */
    __HOUYI_HOSTDEVICE__ operator bool() const { return (__builtin_bit_cast(unsigned short, __x) & 0x7FFF) != 0; }
#endif /* !defined(__HOUYI_NO_BFLOAT16_CONVERSIONS__) */

#if defined(__XCN_KERNEL_XTDK_FP16_H__) && !defined(__HOUYI_NO_BFLOAT16_CONVERSIONS__)
    __HOUYI_HOSTDEVICE__ __xpu_bfloat16(const __half &h)
        : __x(__float2bfloat16(static_cast<float>(h)).__x) {}
    __HOUYI_HOSTDEVICE__ operator __half() const {
        return __half(static_cast<float>(*this));
    }
#endif
};

#if !defined(__HOUYI_NO_BFLOAT16_OPERATORS__)
/* Some basic arithmetic operations expected of a builtin */
__device__ __forceinline__ __xpu_bfloat16 operator+(const __xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { return __hadd(lh, rh); }
__device__ __forceinline__ __xpu_bfloat16 operator-(const __xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { return __hsub(lh, rh); }
__device__ __forceinline__ __xpu_bfloat16 operator*(const __xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { return __hmul(lh, rh); }
__device__ __forceinline__ __xpu_bfloat16 operator/(const __xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { return __hdiv(lh, rh); }

__device__ __forceinline__ __xpu_bfloat16 &operator+=(__xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { lh = __hadd(lh, rh); return lh; }
__device__ __forceinline__ __xpu_bfloat16 &operator-=(__xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { lh = __hsub(lh, rh); return lh; }
__device__ __forceinline__ __xpu_bfloat16 &operator*=(__xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { lh = __hmul(lh, rh); return lh; }
__device__ __forceinline__ __xpu_bfloat16 &operator/=(__xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { lh = __hdiv(lh, rh); return lh; }

/* Note for increment and decrement we use the raw value 0x3F80 equating to xpu_bfloat16(1.0f), to avoid the extra conversion */
__device__ __forceinline__ __xpu_bfloat16 &operator++(__xpu_bfloat16 &h)      { __xpu_bfloat16_raw one; one.x = 0x3F80; h += one; return h; }
__device__ __forceinline__ __xpu_bfloat16 &operator--(__xpu_bfloat16 &h)      { __xpu_bfloat16_raw one; one.x = 0x3F80; h -= one; return h; }
__device__ __forceinline__ __xpu_bfloat16  operator++(__xpu_bfloat16 &h, const int ignored)
{
    // ignored on purpose. Parameter only needed to distinguish the function declaration from other types of operators.
    static_cast<void>(ignored);

    const __xpu_bfloat16 ret = h;
    __xpu_bfloat16_raw one;
    one.x = 0x3F80;
    h += one;
    return ret;
}
__device__ __forceinline__ __xpu_bfloat16  operator--(__xpu_bfloat16 &h, const int ignored)
{
    // ignored on purpose. Parameter only needed to distinguish the function declaration from other types of operators.
    static_cast<void>(ignored);

    const __xpu_bfloat16 ret = h;
    __xpu_bfloat16_raw one;
    one.x = 0x3F80;
    h -= one;
    return ret;
}
/* Unary plus and inverse operators */
__device__ __forceinline__ __xpu_bfloat16 operator+(const __xpu_bfloat16 &h) { return h; }
__device__ __forceinline__ __xpu_bfloat16 operator-(const __xpu_bfloat16 &h) { return __hneg(h); }

/* Some basic comparison operations to make it look like a builtin */
__device__ __forceinline__ bool operator==(const __xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { return __heq(lh, rh); }
__device__ __forceinline__ bool operator!=(const __xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { return __hneu(lh, rh); }
__device__ __forceinline__ bool operator> (const __xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { return __hgt(lh, rh); }
__device__ __forceinline__ bool operator< (const __xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { return __hlt(lh, rh); }
__device__ __forceinline__ bool operator>=(const __xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { return __hge(lh, rh); }
__device__ __forceinline__ bool operator<=(const __xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { return __hle(lh, rh); }

__host__ __forceinline__ bool operator==(const __xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { return float(lh) == float(rh);}
__host__ __forceinline__ bool operator!=(const __xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { return float(lh) != float(rh);}
__host__ __forceinline__ bool operator> (const __xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { return float(lh) > float(rh);}
__host__ __forceinline__ bool operator< (const __xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { return float(lh) < float(rh);}
__host__ __forceinline__ bool operator>=(const __xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { return float(lh) >= float(rh);}
__host__ __forceinline__ bool operator<=(const __xpu_bfloat16 &lh, const __xpu_bfloat16 &rh) { return float(lh) <= float(rh);}
#endif /* !defined(__HOUYI_NO_BFLOAT16_OPERATORS__) */

/* __xpu_bfloat162 is visible to non-nvcc host compilers */
struct __HOUYI_ALIGN__(4) __xpu_bfloat162 {
    __xpu_bfloat16 x;
    __xpu_bfloat16 y;

    // All construct/copy/assign/move
public:
#if defined(__CPP_VERSION_AT_LEAST_11_BF16)
    __xpu_bfloat162() = default;
    __HOUYI_HOSTDEVICE__ __xpu_bfloat162(__xpu_bfloat162 &&src) { __BFLOAT162_TO_UI(*this) = houyi_std::move(__BFLOAT162_TO_CUI(src)); }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat162 &operator=(__xpu_bfloat162 &&src) { __BFLOAT162_TO_UI(*this) = houyi_std::move(__BFLOAT162_TO_CUI(src)); return *this; }
#else
    __HOUYI_HOSTDEVICE__ __xpu_bfloat162() { }
#endif /* defined(__CPP_VERSION_AT_LEAST_11_BF16) */
    __HOUYI_HOSTDEVICE__ __xpu_bfloat162(const __xpu_bfloat16 &a, const __xpu_bfloat16 &b) : x(a), y(b) { }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat162(const __xpu_bfloat162 &src) { __BFLOAT162_TO_UI(*this) = __BFLOAT162_TO_CUI(src); }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat162 &operator=(const __xpu_bfloat162 &src) { __BFLOAT162_TO_UI(*this) = __BFLOAT162_TO_CUI(src); return *this; }

    /* Convert to/from __xpu_bfloat162_raw */
    __HOUYI_HOSTDEVICE__ __xpu_bfloat162(const __xpu_bfloat162_raw &h2r ) { __BFLOAT162_TO_UI(*this) = __BFLOAT162_TO_CUI(h2r); }
    __HOUYI_HOSTDEVICE__ __xpu_bfloat162 &operator=(const __xpu_bfloat162_raw &h2r) { __BFLOAT162_TO_UI(*this) = __BFLOAT162_TO_CUI(h2r); return *this; }
    __HOUYI_HOSTDEVICE__ operator __xpu_bfloat162_raw() const { __xpu_bfloat162_raw ret; ret.x = 0U; ret.y = 0U; __BFLOAT162_TO_UI(ret) = __BFLOAT162_TO_CUI(*this); return ret; }
};

__HOUYI_BF16_DECL__ __xpu_bfloat162_native __bfloat162_as_native(const __xpu_bfloat162 v) {
    __xpu_bfloat162_native ret;
    __builtin_memcpy(&ret, &v, sizeof(ret));
    return ret;
}

__HOUYI_BF16_DECL__ __xpu_bfloat162 __native_as_bfloat162(const __xpu_bfloat162_native v) {
    __xpu_bfloat162 ret;
    __builtin_memcpy(&ret, &v, sizeof(ret));
    return ret;
}

__device__ __forceinline__ __xpu_bfloat162 operator+(const __xpu_bfloat162 &lh, const __xpu_bfloat162 &rh) { return __hadd2(lh, rh); }
__device__ __forceinline__ __xpu_bfloat162 operator-(const __xpu_bfloat162 &lh, const __xpu_bfloat162 &rh) { return __hsub2(lh, rh); }
__device__ __forceinline__ __xpu_bfloat162 operator*(const __xpu_bfloat162 &lh, const __xpu_bfloat162 &rh) { return __hmul2(lh, rh); }
__device__ __forceinline__ __xpu_bfloat162 operator/(const __xpu_bfloat162 &lh, const __xpu_bfloat162 &rh) { return __h2div(lh, rh); }

__device__ __forceinline__ __xpu_bfloat162& operator+=(__xpu_bfloat162 &lh, const __xpu_bfloat162 &rh) { lh = __hadd2(lh, rh); return lh; }
__device__ __forceinline__ __xpu_bfloat162& operator-=(__xpu_bfloat162 &lh, const __xpu_bfloat162 &rh) { lh = __hsub2(lh, rh); return lh; }
__device__ __forceinline__ __xpu_bfloat162& operator*=(__xpu_bfloat162 &lh, const __xpu_bfloat162 &rh) { lh = __hmul2(lh, rh); return lh; }
__device__ __forceinline__ __xpu_bfloat162& operator/=(__xpu_bfloat162 &lh, const __xpu_bfloat162 &rh) { lh = __h2div(lh, rh); return lh; }

__device__ __forceinline__ __xpu_bfloat162 &operator++(__xpu_bfloat162 &h)      { __xpu_bfloat162_raw one; one.x = 0x3F80; one.y = 0x3F80; h = __hadd2(h, one); return h; }
__device__ __forceinline__ __xpu_bfloat162 &operator--(__xpu_bfloat162 &h)      { __xpu_bfloat162_raw one; one.x = 0x3F80; one.y = 0x3F80; h = __hsub2(h, one); return h; }
__device__ __forceinline__ __xpu_bfloat162  operator++(__xpu_bfloat162 &h, const int ignored)
{
    // ignored on purpose. Parameter only needed to distinguish the function declaration from other types of operators.
    static_cast<void>(ignored);

    const __xpu_bfloat162 ret = h;
    __xpu_bfloat162_raw one;
    one.x = 0x3F80;
    one.y = 0x3F80;
    h = __hadd2(h, one);
    return ret;
}
__device__ __forceinline__ __xpu_bfloat162  operator--(__xpu_bfloat162 &h, const int ignored)
{
    // ignored on purpose. Parameter only needed to distinguish the function declaration from other types of operators.
    static_cast<void>(ignored);

    const __xpu_bfloat162 ret = h;
    __xpu_bfloat162_raw one;
    one.x = 0x3F80;
    one.y = 0x3F80;
    h = __hsub2(h, one);
    return ret;
}
__device__ __forceinline__ __xpu_bfloat162 operator+(const __xpu_bfloat162 &h) { return h; }
// __device__ __forceinline__ __xpu_bfloat162 operator-(const __xpu_bfloat162 &h) { return __hneg2(h); }

__device__ __forceinline__ bool operator==(const __xpu_bfloat162 &lh, const __xpu_bfloat162 &rh) { return __hbeq2(lh, rh); }
__device__ __forceinline__ bool operator!=(const __xpu_bfloat162 &lh, const __xpu_bfloat162 &rh) { return __hbneu2(lh, rh); }
__device__ __forceinline__ bool operator>(const __xpu_bfloat162 &lh, const __xpu_bfloat162 &rh) { return __hbgt2(lh, rh); }
__device__ __forceinline__ bool operator<(const __xpu_bfloat162 &lh, const __xpu_bfloat162 &rh) { return __hblt2(lh, rh); }
__device__ __forceinline__ bool operator>=(const __xpu_bfloat162 &lh, const __xpu_bfloat162 &rh) { return __hbge2(lh, rh); }
__device__ __forceinline__ bool operator<=(const __xpu_bfloat162 &lh, const __xpu_bfloat162 &rh) { return __hble2(lh, rh); }

// BEGIN PACKED BFLOAT16 TYPES
// Public packed BF16 aggregates keep their existing layout; builtins use native BF16 vectors.
typedef unsigned int __bf16_uint2 __attribute__((ext_vector_type(2)));
typedef unsigned int __bf16_uint4 __attribute__((ext_vector_type(4)));
typedef unsigned int __bf16_uint8 __attribute__((ext_vector_type(8)));

struct __xpu_bfloat164 {
  union {
    __bf16_uint2 data;
    struct {
      __xpu_bfloat162 low, high;
    };
  };
  __host__ __device__ __xpu_bfloat164() = default;
  __host__ __device__ __xpu_bfloat164(const __xpu_bfloat164 &o)
      : data(o.data) {}
  __host__ __device__ __xpu_bfloat164 &operator=(const __xpu_bfloat164 &o) {
    data = o.data;
    return *this;
  }
  __host__ __device__ __xpu_bfloat164(__bf16_uint2 d) : data(d) {}
  __host__ __device__ __xpu_bfloat164(__xpu_bfloat162 lo, __xpu_bfloat162 hi) {
    __builtin_memcpy(&data, &lo, sizeof(lo));
    unsigned int tmp;
    __builtin_memcpy(&tmp, &hi, sizeof(hi));
    data[1] = tmp;
  }
  __host__ __device__ __xpu_bfloat164(__xpu_bfloat16 a, __xpu_bfloat16 b,
                                      __xpu_bfloat16 c, __xpu_bfloat16 d)
      : __xpu_bfloat164(__xpu_bfloat162(a, b), __xpu_bfloat162(c, d)) {}
};

struct __xpu_bfloat168 {
  union {
    __bf16_uint4 data;
    struct {
      __xpu_bfloat164 low, high;
    };
  };
  __host__ __device__ __xpu_bfloat168() = default;
  __host__ __device__ __xpu_bfloat168(const __xpu_bfloat168 &o)
      : data(o.data) {}
  __host__ __device__ __xpu_bfloat168 &operator=(const __xpu_bfloat168 &o) {
    data = o.data;
    return *this;
  }
  __host__ __device__ __xpu_bfloat168(__bf16_uint4 d) : data(d) {}
  __host__ __device__ __xpu_bfloat168(__xpu_bfloat164 lo, __xpu_bfloat164 hi) {
    __builtin_memcpy(&data, &lo.data, sizeof(lo.data));
    __bf16_uint2 tmp;
    __builtin_memcpy(&tmp, &hi.data, sizeof(hi.data));
    data[2] = tmp[0]; data[3] = tmp[1];
  }
  __host__ __device__ __xpu_bfloat168(__xpu_bfloat162 a, __xpu_bfloat162 b,
                                      __xpu_bfloat162 c, __xpu_bfloat162 d)
      : __xpu_bfloat168(__xpu_bfloat164(a, b), __xpu_bfloat164(c, d)) {}
  __host__ __device__ __xpu_bfloat168(__xpu_bfloat16 s0, __xpu_bfloat16 s1,
                                      __xpu_bfloat16 s2, __xpu_bfloat16 s3,
                                      __xpu_bfloat16 s4, __xpu_bfloat16 s5,
                                      __xpu_bfloat16 s6, __xpu_bfloat16 s7)
      : __xpu_bfloat168(__xpu_bfloat164(s0, s1, s2, s3),
                        __xpu_bfloat164(s4, s5, s6, s7)) {}
};

struct __xpu_bfloat1616 {
  union {
    __bf16_uint8 data;
    struct {
      __xpu_bfloat168 low, high;
    };
  };
  __host__ __device__ __xpu_bfloat1616() = default;
  __host__ __device__ __xpu_bfloat1616(const __xpu_bfloat1616 &o)
      : data(o.data) {}
  __host__ __device__ __xpu_bfloat1616 &operator=(const __xpu_bfloat1616 &o) {
    data = o.data;
    return *this;
  }
  __host__ __device__ __xpu_bfloat1616(__bf16_uint8 d) : data(d) {}
  __host__ __device__ __xpu_bfloat1616(__xpu_bfloat168 lo, __xpu_bfloat168 hi) {
    __builtin_memcpy(&data, &lo.data, sizeof(lo.data));
    __bf16_uint4 tmp;
    __builtin_memcpy(&tmp, &hi.data, sizeof(hi.data));
    data[4] = tmp[0]; data[5] = tmp[1]; data[6] = tmp[2]; data[7] = tmp[3];
  }
  __host__ __device__ __xpu_bfloat1616(__xpu_bfloat164 a, __xpu_bfloat164 b,
                                       __xpu_bfloat164 c, __xpu_bfloat164 d)
      : __xpu_bfloat1616(__xpu_bfloat168(a, b), __xpu_bfloat168(c, d)) {}
  __host__ __device__ __xpu_bfloat1616(__xpu_bfloat162 a, __xpu_bfloat162 b,
                                       __xpu_bfloat162 c, __xpu_bfloat162 d,
                                       __xpu_bfloat162 e, __xpu_bfloat162 f,
                                       __xpu_bfloat162 g, __xpu_bfloat162 h)
      : __xpu_bfloat1616(__xpu_bfloat168(__xpu_bfloat164(a, b), __xpu_bfloat164(c, d)),
                         __xpu_bfloat168(__xpu_bfloat164(e, f), __xpu_bfloat164(g, h))) {}
  __host__ __device__ __xpu_bfloat1616(__xpu_bfloat16 s0, __xpu_bfloat16 s1,
                                       __xpu_bfloat16 s2, __xpu_bfloat16 s3,
                                       __xpu_bfloat16 s4, __xpu_bfloat16 s5,
                                       __xpu_bfloat16 s6, __xpu_bfloat16 s7,
                                       __xpu_bfloat16 s8, __xpu_bfloat16 s9,
                                       __xpu_bfloat16 s10, __xpu_bfloat16 s11,
                                       __xpu_bfloat16 s12, __xpu_bfloat16 s13,
                                       __xpu_bfloat16 s14, __xpu_bfloat16 s15)
      : __xpu_bfloat1616(__xpu_bfloat168(s0, s1, s2, s3, s4, s5, s6, s7),
                         __xpu_bfloat168(s8, s9, s10, s11, s12, s13, s14, s15)) {}
};

__HOUYI_BF16_DECL__ __xpu_bfloat164_native
__bfloat164_as_native(const __xpu_bfloat164 v) {
  return __builtin_bit_cast(__xpu_bfloat164_native, v.data);
}

__HOUYI_BF16_DECL__ __xpu_bfloat164
__native_as_bfloat164(const __xpu_bfloat164_native v) {
  __xpu_bfloat164 ret;
  ret.data = __builtin_bit_cast(__bf16_uint2, v);
  return ret;
}

__HOUYI_BF16_DECL__ __xpu_bfloat168_native
__bfloat168_as_native(const __xpu_bfloat168 v) {
  return __builtin_bit_cast(__xpu_bfloat168_native, v.data);
}

__HOUYI_BF16_DECL__ __xpu_bfloat168
__native_as_bfloat168(const __xpu_bfloat168_native v) {
  __xpu_bfloat168 ret;
  ret.data = __builtin_bit_cast(__bf16_uint4, v);
  return ret;
}

__HOUYI_BF16_DECL__ __xpu_bfloat1616_native
__bfloat1616_as_native(const __xpu_bfloat1616 v) {
  return __builtin_bit_cast(__xpu_bfloat1616_native, v.data);
}

__HOUYI_BF16_DECL__ __xpu_bfloat1616
__native_as_bfloat1616(const __xpu_bfloat1616_native v) {
  __xpu_bfloat1616 ret;
  ret.data = __builtin_bit_cast(__bf16_uint8, v);
  return ret;
}
// END PACKED BFLOAT16 TYPES

/* Restore warning for multiple assignment operators */
#if defined(_MSC_VER) && _MSC_VER >= 1500
#pragma warning( pop )
#endif /* defined(_MSC_VER) && _MSC_VER >= 1500 */

/* Restore -Weffc++ warnings from here on */
#if defined(__GNUC__)
#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
#pragma GCC diagnostic pop
#endif /* __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6) */
#endif /* defined(__GNUC__) */

#undef __HOUYI_HOSTDEVICE__
#undef __HOUYI_ALIGN__

__HOUYI_HOSTDEVICE_BF16_DECL__ unsigned short __internal_float2bfloat16(const float f, unsigned int &sign, unsigned int &remainder)
{
    unsigned int x;
    (void)__builtin_memcpy(&x, &f, sizeof(f));

    if ((x & 0x7fffffffU) > 0x7f800000U) {
        sign = 0U;
        remainder = 0U;
        return static_cast<unsigned short>(0x7fffU);
    }
    sign = x >> 31U;
    remainder = x << 16U;
    return static_cast<unsigned short>(x >> 16U);
}

__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __double2bfloat16(const double x)
{
#if defined(__XPU_ARCH__)
    __xpu_bfloat16 val;
    float f = static_cast<float>(x);
    val.__x = __builtin_xcn_v_cvt_bf16_f32(f);
    return val;
#else

    float f = static_cast<float>(x);
    const double d = static_cast<double>(f);
    unsigned int u;

    (void)__builtin_memcpy(&u, &f, sizeof(f));
    bool x_is_not_nan = ((u << (unsigned)1U) <= (unsigned)0xFF000000U);


    if ((x > 0.0) && (d > x)) {
        u--;
    }
    if ((x < 0.0) && (d < x)) {
        u--;
    }
    if ((d != x) && x_is_not_nan) {
        u |= 1U;
    }

    (void)__builtin_memcpy(&f, &u, sizeof(f));

    return __float2bfloat16(f);

#endif // defined(__XPU_ARCH__)
}

__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __float2bfloat16(const float a)
{
    __xpu_bfloat16 val;
#if defined(__XPU_ARCH__)
    val.__x = __builtin_xcn_v_cvt_bf16_f32(a);
#else
    __xpu_bfloat16_raw r;
    unsigned int sign = 0U;
    unsigned int remainder = 0U;
    r.x = __internal_float2bfloat16(a, sign, remainder);
    if ((remainder > 0x80000000U) || ((remainder == 0x80000000U) && ((r.x & 0x1U) != 0U))) {
        r.x++;
    }
    val = r;
#endif
    return val;
}
__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __float2bfloat16_rn(const float a)
{
    __xpu_bfloat16 val;
#if defined(__XPU_ARCH__)
    val.__x = __builtin_xcn_v_cvt_bf16_f32(a);
#else
    __xpu_bfloat16_raw r;
    unsigned int sign = 0U;
    unsigned int remainder = 0U;
    r.x = __internal_float2bfloat16(a, sign, remainder);
    if ((remainder > 0x80000000U) || ((remainder == 0x80000000U) && ((r.x & 0x1U) != 0U))) {
        r.x++;
    }
    val = r;
#endif
    return val;
}

#define __RD_SINGLE_OP_TO_BFLOAT16_MACRO(name) {\
    unsigned short raw; \
    __builtin_xcn_s_setreg(0x201, 2); \
    __asm__ __volatile__( \
        __XTDK_BF16_STRINGIFY(name) " %0, %1 \n" \
        :"=v"(raw) : "v"(__BFLOAT16_TO_CUS(a))); \
    __builtin_xcn_s_setreg(0x201, 0); \
    return __ushort_as_bfloat16(raw); \
}

#define __RD_DOUBLE_HALF_OP_TO_BFLOAT16_MACRO(name) {\
    unsigned short raw; \
    __builtin_xcn_s_setreg(0x221, 2); \
    __asm__ __volatile__( \
        __XTDK_BF16_STRINGIFY(name) " %0, %1 \n" \
        :"=v"(raw) : "v"(__BFLOAT16_TO_CUS(a))); \
    __builtin_xcn_s_setreg(0x221, 0); \
    return __ushort_as_bfloat16(raw); \
}

#define __RU_SINGLE_OP_TO_BFLOAT16_MACRO(name) {\
    unsigned short raw; \
    __builtin_xcn_s_setreg(0x201, 1); \
    __asm__ __volatile__( \
        __XTDK_BF16_STRINGIFY(name) " %0, %1 \n" \
        :"=v"(raw) : "v"(__BFLOAT16_TO_CUS(a))); \
    __builtin_xcn_s_setreg(0x201, 0); \
    return __ushort_as_bfloat16(raw); \
}

#define __RU_DOUBLE_HALF_OP_TO_BFLOAT16_MACRO(name) {\
    unsigned short raw; \
    __builtin_xcn_s_setreg(0x221, 1); \
    __asm__ __volatile__( \
        __XTDK_BF16_STRINGIFY(name) " %0, %1 \n" \
        :"=v"(raw) : "v"(__BFLOAT16_TO_CUS(a))); \
    __builtin_xcn_s_setreg(0x221, 0); \
    return __ushort_as_bfloat16(raw); \
}

#define __RZ_SINGLE_OP_TO_BFLOAT16_MACRO(name) {\
    unsigned short raw; \
    __builtin_xcn_s_setreg(0x201, 3); \
    __asm__ __volatile__( \
        __XTDK_BF16_STRINGIFY(name) " %0, %1 \n" \
        :"=v"(raw) : "v"(__BFLOAT16_TO_CUS(a))); \
    __builtin_xcn_s_setreg(0x201, 0); \
    return __ushort_as_bfloat16(raw); \
}

#define __RZ_DOUBLE_HALF_OP_TO_BFLOAT16_MACRO(name) {\
    unsigned short raw; \
    __builtin_xcn_s_setreg(0x221, 3); \
    __asm__ __volatile__( \
        __XTDK_BF16_STRINGIFY(name) " %0, %1 \n" \
        :"=v"(raw) : "v"(a)); \
    __builtin_xcn_s_setreg(0x221, 0); \
    return __ushort_as_bfloat16(raw); \
}

__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __float2bfloat16_rz(const float a)
{
#if defined(__XPU_ARCH__)
    __RZ_DOUBLE_HALF_OP_TO_BFLOAT16_MACRO(v_cvt_bf16_f32)
#else
    __xpu_bfloat16 val;
    __xpu_bfloat16_raw r;
    unsigned int sign = 0U;
    unsigned int remainder = 0U;
    r.x = __internal_float2bfloat16(a, sign, remainder);
    val = r;
    return val;
#endif
}
__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __float2bfloat16_rd(const float a)
{
#if defined(__XPU_ARCH__)
    __RD_DOUBLE_HALF_OP_TO_BFLOAT16_MACRO(v_cvt_bf16_f32)
#else
    __xpu_bfloat16 val;
    __xpu_bfloat16_raw r;
    unsigned int sign = 0U;
    unsigned int remainder = 0U;
    r.x = __internal_float2bfloat16(a, sign, remainder);
    if ((remainder != 0U) && (sign != 0U)) {
        r.x++;
    }
    val = r;
    return val;
#endif
}
__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __float2bfloat16_ru(const float a)
{
#if defined(__XPU_ARCH__)
    __RU_DOUBLE_HALF_OP_TO_BFLOAT16_MACRO(v_cvt_bf16_f32)
#else
    __xpu_bfloat16 val;
    __xpu_bfloat16_raw r;
    unsigned int sign = 0U;
    unsigned int remainder = 0U;
    r.x = __internal_float2bfloat16(a, sign, remainder);
    if ((remainder != 0U) && (sign == 0U)) {
        r.x++;
    }
    val = r;
    return val;
#endif
}
__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat162 __float2bfloat162_rn(const float a)
{
    __xpu_bfloat162 val;
    val = __xpu_bfloat162(__float2bfloat16_rn(a), __float2bfloat16_rn(a));
    return val;
}
__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat162 __floats2bfloat162_rn(const float a, const float b)
{
    __xpu_bfloat162 val;
    val = __xpu_bfloat162(__float2bfloat16_rn(a), __float2bfloat16_rn(b));
    return val;
}

__HOUYI_HOSTDEVICE_BF16_DECL__ float __internal_bfloat162float(const unsigned short h)
{
    float f;
#if defined(__XPU_ARCH__)
    f = __builtin_xcn_v_cvt_f32_bf16(__builtin_bit_cast(__bf16, h));
#else
    unsigned int u = static_cast<unsigned int>(h) << 16;
    (void)__builtin_memcpy(&f, &u, sizeof(f));
#endif
    return f;
}

__HOUYI_HOSTDEVICE_BF16_DECL__ float __bfloat162float(const __xpu_bfloat16 a)
{
    return __internal_bfloat162float(static_cast<__xpu_bfloat16_raw>(a).x);
}
__HOUYI_HOSTDEVICE_BF16_DECL__ float __low2float(const __xpu_bfloat162 a)
{
    return __internal_bfloat162float(static_cast<__xpu_bfloat162_raw>(a).x);
}

__HOUYI_HOSTDEVICE_BF16_DECL__ float __high2float(const __xpu_bfloat162 a)
{
    return __internal_bfloat162float(static_cast<__xpu_bfloat162_raw>(a).y);
}

/* HOUYI vector-types compatible vector creation function (note returns __xpu_bfloat162, not xpu_bfloat162) */
__VECTOR_FUNCTIONS_DECL__ __xpu_bfloat162 make_bfloat162(const __xpu_bfloat16 x, const __xpu_bfloat16 y)
{
    __xpu_bfloat162 t; t.x = x; t.y = y; return t;
}
#undef __VECTOR_FUNCTIONS_DECL__


/* Definitions of intrinsics */
__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat162 __float22bfloat162_rn(const float2 a)
{
    __xpu_bfloat162 val = __floats2bfloat162_rn(a.x, a.y);
    return val;
}
__HOUYI_HOSTDEVICE_BF16_DECL__ float2 __bfloat1622float2(const __xpu_bfloat162 a)
{
    float hi_float;
    float lo_float;
    lo_float = __internal_bfloat162float(((__xpu_bfloat162_raw)a).x);
    hi_float = __internal_bfloat162float(((__xpu_bfloat162_raw)a).y);
    return make_float2(lo_float, hi_float);
}
__HOUYI_HOSTDEVICE_BF16_DECL__ signed char __bfloat162char_rz(const __xpu_bfloat16 h)
{
    signed char i;
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    unsigned short tmp = 0;
    asm("v_cvt_i8_bf16 %0, %1" :"=v"(tmp) : "v"(h));
    const unsigned char u = static_cast<unsigned char>(tmp);
    i = static_cast<signed char>(u);
#else
    const float f = __bfloat162float(h);
    const signed char max_val = (signed char)0x7fU;
    const signed char min_val = (signed char)0x80U;
    const unsigned short bits = static_cast<unsigned short>(static_cast<__xpu_bfloat16_raw>(h).x << 1U);
    // saturation fixup
    if (bits > (unsigned short)0xFF00U) {
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

__HOUYI_HOSTDEVICE_BF16_DECL__ unsigned char __bfloat162uchar_rz(const __xpu_bfloat16 h)
{
    unsigned char i;
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    unsigned short tmp = 0;
    asm("v_cvt_u8_bf16 %0, %1" :"=v"(tmp) : "v"(h));
    i = static_cast<unsigned char>(tmp);
#else
    const float f = __bfloat162float(h);
    const unsigned char max_val = 0xffU;
    const unsigned char min_val = 0U;
    const unsigned short bits = static_cast<unsigned short>(static_cast<__xpu_bfloat16_raw>(h).x << 1U);
    // saturation fixup
    if (bits > (unsigned short)0xFF00U) {
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
__HOUYI_BF16_DECL__ int __bfloat162int_rn(const __xpu_bfloat16 h)
{
    int val;
    const float f = __builtin_xcn_v_cvt_f32_bf16(h.__x);
    val = static_cast<int>(f);
    return val;
}
__HOUYI_HOSTDEVICE_BF16_DECL__ int __bfloat162int_rz(const __xpu_bfloat16 h)
{
#if defined(__XPU_ARCH__)
    int val;
    const float f = __builtin_xcn_v_cvt_f32_bf16(h.__x);
    val = static_cast<int>(f);
    return val;
#else
    const float f = __bfloat162float(h);
    int   i;
    i = static_cast<int>(f);
#if !(defined __xcn_on_device__)
    const int max_val = (int)0x7fffffffU;
    const int min_val = (int)0x80000000U;
    const unsigned short bits = static_cast<unsigned short>(static_cast<__xpu_bfloat16_raw>(h).x << 1U);
    // saturation fixup
    if (bits > (unsigned short)0xFF00U) {
        // NaN
        i = 0;
    } else if (f >= static_cast<float>(max_val)) {
        // saturate maximum
        i = max_val;
    } else if (f < static_cast<float>(min_val)) {
        // saturate minimum
        i = min_val;
    }
#endif
    return i;
#endif // defined(__XPU_ARCH__)
}
__HOUYI_BF16_DECL__ int __bfloat162int_rd(const __xpu_bfloat16 h)
{
    int val;
    const float f = __builtin_xcn_v_cvt_f32_bf16(h.__x);
    val = static_cast<int>(f);
    return val;
}
__HOUYI_BF16_DECL__ int __bfloat162int_ru(const __xpu_bfloat16 h)
{
    int val;
    const float f = __builtin_xcn_v_cvt_f32_bf16(h.__x);
    val = static_cast<int>(f);
    return val;
}
__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __int2bfloat16_rn(const int i)
{
#if (defined __xcn_on_device__)
       __xpu_bfloat16 val;
       const float f = static_cast<float>(i);
       val.__x = __builtin_xcn_v_cvt_bf16_f32(f);
       return val;
#else
    const double d = static_cast<double>(i);
    return __double2bfloat16(d);
#endif
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __int2bfloat16_rz(const int i)
{
    const float a = static_cast<float>(i);
    __RZ_DOUBLE_HALF_OP_TO_BFLOAT16_MACRO(v_cvt_bf16_f32)
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __int2bfloat16_rd(const int i)
{
    const float a = static_cast<float>(i);
    __RD_DOUBLE_HALF_OP_TO_BFLOAT16_MACRO(v_cvt_bf16_f32)
}

__HOUYI_BF16_DECL__ __xpu_bfloat16 __int2bfloat16_ru(const int i)
{
    const float a = static_cast<float>(i);
    __RU_DOUBLE_HALF_OP_TO_BFLOAT16_MACRO(v_cvt_bf16_f32)
}

__HOUYI_BF16_DECL__ short int __bfloat162short_rn(const __xpu_bfloat16 h)
{
    short int val;
    val = __builtin_xcn_v_cvt_i16_bf16(h.__x);
    return val;
}

__HOUYI_HOSTDEVICE_BF16_DECL__ short int __bfloat162short_rz(const __xpu_bfloat16 h)
{
   short int val;
#if defined(__XPU_ARCH__)
   val = __builtin_xcn_v_cvt_i16_bf16(h.__x);
#else
    const float f = __bfloat162float(h);
    val = static_cast<short int>(f);
    const short int max_val = (short int)0x7fffU;
    const short int min_val = (short int)0x8000U;
    const unsigned short bits = static_cast<unsigned short>(static_cast<__xpu_bfloat16_raw>(h).x << 1U);
    // saturation fixup
    if (bits > (unsigned short)0xFF00U) {
        // NaN
        val = 0;
    } else if (f > static_cast<float>(max_val)) {
        // saturate maximum
        val = max_val;
    } else if (f < static_cast<float>(min_val)) {
        // saturate minimum
        val = min_val;
    }
#endif
   return val;
}
__HOUYI_BF16_DECL__ short int __bfloat162short_rd(const __xpu_bfloat16 h)
{
    short int val;
    val = __builtin_xcn_v_cvt_i16_bf16(h.__x);
    return val;
}
__HOUYI_BF16_DECL__ short int __bfloat162short_ru(const __xpu_bfloat16 h)
{
    short int val;
    val = __builtin_xcn_v_cvt_i16_bf16(h.__x);
    return val;
}
__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __short2bfloat16_rn(const short int i)
{
#if defined(__XPU_ARCH__)
    __xpu_bfloat16 val;
    val.__x = __builtin_xcn_v_cvt_bf16_i16(i);
    return val;
#else
    const float f = static_cast<float>(i);
    return __float2bfloat16_rn(f);
#endif
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __short2bfloat16_rz(const short int a)
{
    __RZ_DOUBLE_HALF_OP_TO_BFLOAT16_MACRO(v_cvt_bf16_i16)
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __short2bfloat16_rd(const short int a)
{
    __RD_DOUBLE_HALF_OP_TO_BFLOAT16_MACRO(v_cvt_bf16_i16)
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __short2bfloat16_ru(const short int a)
{
    __RU_DOUBLE_HALF_OP_TO_BFLOAT16_MACRO(v_cvt_bf16_i16)
}

__HOUYI_BF16_DECL__ unsigned int __bfloat162uint_rn(const __xpu_bfloat16 h)
{
    unsigned int val;
    const float f = __builtin_xcn_v_cvt_f32_bf16(h.__x);
    val = static_cast<unsigned int>(f);
    return val;
}

__HOUYI_HOSTDEVICE_BF16_DECL__ unsigned int __bfloat162uint_rz(const __xpu_bfloat16 h)
{
    const float f = __bfloat162float(h);
    unsigned int i;
    i = static_cast<unsigned int>(f);
#if !(defined __xcn_on_device__)
    const unsigned int max_val = 0xffffffffU;
    const unsigned int min_val = 0U;
    const unsigned short bits = static_cast<unsigned short>(static_cast<__xpu_bfloat16_raw>(h).x << 1U);
    // saturation fixup
    if (bits > (unsigned short)0xFF00U) {
        // NaN
        i = 0U;
    } else if (f >= static_cast<float>(max_val)) {
        // saturate maximum
        i = max_val;
    } else if (f < static_cast<float>(min_val)) {
        // saturate minimum
        i = min_val;
    }
#endif
    return i;
}

__HOUYI_BF16_DECL__ unsigned int __bfloat162uint_rd(const __xpu_bfloat16 h)
{
    const float f = __bfloat162float(h);
    unsigned int val;
    val = static_cast<unsigned int>(f);
    return val;
}
__HOUYI_BF16_DECL__ unsigned int __bfloat162uint_ru(const __xpu_bfloat16 h)
{
    const float f = __bfloat162float(h);
    unsigned int val;
    val = static_cast<unsigned int>(f);
    return val;
}

__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __uint2bfloat16_rn(const unsigned int i)
{
#if defined(__XPU_ARCH__)
     __xpu_bfloat16 val;
     const float f = static_cast<float>(i);
     val.__x = __builtin_xcn_v_cvt_bf16_f32(f);
    return val;
#else
    const double d = static_cast<double>(i);
    return __double2bfloat16(d);
#endif
}

__HOUYI_BF16_DECL__ __xpu_bfloat16 __uint2bfloat16_rz(const unsigned int i)
{
    float f;
    unsigned short raw;
    __asm__ __volatile__(
        "s_or_b32 s107, s107, 0x3 \n"
        "\tv_cvt_f32_u32 %0, %1\n"
        :"=v"(f) : "v"(i));
    __asm__ __volatile__(
        "s_or_b32 s107, s107, 0xc \n"
        "\tv_cvt_bf16_f32 %0, %1 \n"
        "\ts_and_b32 s107, s107, 0xfffffff0"
        :"=v"(raw) : "v"(f));
    return __ushort_as_bfloat16(raw);
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __uint2bfloat16_rd(const unsigned int i)
{
    float f;
    unsigned short raw;
    __asm__ __volatile__(
        "s_or_b32 s107, s107, 0x2 \n"
        "\tv_cvt_f32_u32 %0, %1\n"
        :"=v"(f) : "v"(i));
    __asm__ __volatile__(
        "s_or_b32 s107, s107, 0x8 \n"
        "\tv_cvt_bf16_f32 %0, %1 \n"
        "\ts_and_b32 s107, s107, 0xfffffff0"
        :"=v"(raw) : "v"(f));
    return __ushort_as_bfloat16(raw);
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __uint2bfloat16_ru(const unsigned int i)
{
    float f;
    unsigned short raw;
    __asm__ __volatile__(
        "s_or_b32 s107, s107, 0x1 \n"
        "\tv_cvt_f32_u32 %0, %1\n"
        :"=v"(f) : "v"(i));
    __asm__ __volatile__(
        "s_or_b32 s107, s107, 0x4 \n"
        "\tv_cvt_bf16_f32 %0, %1 \n"
        "\ts_and_b32 s107, s107, 0xfffffff0"
        :"=v"(raw) : "v"(f));
    return __ushort_as_bfloat16(raw);
}

__HOUYI_BF16_DECL__ unsigned short int __bfloat162ushort_rn(const __xpu_bfloat16 h)
{
    unsigned short int val;
    val = __builtin_xcn_v_cvt_u16_bf16(h.__x);
   return val;
}
__HOUYI_HOSTDEVICE_BF16_DECL__ unsigned short int __bfloat162ushort_rz(const __xpu_bfloat16 h)
{
   unsigned short int val;
#if defined(__XPU_ARCH__)
   val = __builtin_xcn_v_cvt_u16_bf16(h.__x);
#else
    const float f = __bfloat162float(h);
    val = static_cast<unsigned short int>(f);
    const unsigned short int max_val = 0xffffU;
    const unsigned short int min_val = 0U;
    const unsigned short bits = static_cast<unsigned short>(static_cast<__xpu_bfloat16_raw>(h).x << 1U);
    // saturation fixup
    if (bits > (unsigned short)0xFF00U) {
        // NaN
        val = 0U;
    } else if (f > static_cast<float>(max_val)) {
        // saturate maximum
        val = max_val;
    } else if (f < static_cast<float>(min_val)) {
        // saturate minimum
        val = min_val;
    }
#endif
   return val;
}
__HOUYI_BF16_DECL__ unsigned short int __bfloat162ushort_rd(const __xpu_bfloat16 h)
{
   unsigned short int val;
   val = __builtin_xcn_v_cvt_u16_bf16(h.__x);
   return val;
}
__HOUYI_BF16_DECL__ unsigned short int __bfloat162ushort_ru(const __xpu_bfloat16 h)
{
    unsigned short int val;
    val = __builtin_xcn_v_cvt_u16_bf16(h.__x);
    return val;
}
__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __ushort2bfloat16_rn(const unsigned short int i)
{
#if defined(__XPU_ARCH__)
    __xpu_bfloat16 val;
    val.__x = __builtin_xcn_v_cvt_bf16_u16(i);
    return val;
#else
    const float f = static_cast<float>(i);
    return __float2bfloat16_rn(f);
#endif
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __ushort2bfloat16_rz(const unsigned short int i)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xcn_v_cvt_bf16_u16(i);
    return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __ushort2bfloat16_rd(const unsigned short int i)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xcn_v_cvt_bf16_u16(i);
    return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __ushort2bfloat16_ru(const unsigned short int i)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xcn_v_cvt_bf16_u16(i);
    return val;
}

__HOUYI_BF16_DECL__ unsigned long long int __bfloat162ull_rn(const __xpu_bfloat16 h)
{
    unsigned long long int i;
    const float f = __builtin_xcn_v_cvt_f32_bf16(h.__x);
    i = static_cast<unsigned long long int>(f);
    return i;
}
__HOUYI_HOSTDEVICE_BF16_DECL__ unsigned long long int __bfloat162ull_rz(const __xpu_bfloat16 h)
{
    unsigned long long int i;
    const float f = __bfloat162float(h);
    i = static_cast<unsigned long long int>(f);
    const unsigned long long int max_val = 0xffffffffffffffffULL;
    const unsigned long long int min_val = 0ULL;
    const unsigned short bits = static_cast<unsigned short>(static_cast<__xpu_bfloat16_raw>(h).x << 1U);
    // saturation fixup
    if (bits > (unsigned short)0xFF00U) {
        // NaN
        i = 0x8000000000000000ULL;
    } else if (f >= static_cast<float>(max_val)) {
        // saturate maximum
        i = max_val;
    } else if (f < static_cast<float>(min_val)) {
        // saturate minimum
        i = min_val;
    }
    return i;
}
__HOUYI_BF16_DECL__ unsigned long long int __bfloat162ull_rd(const __xpu_bfloat16 h)
{
    unsigned long long int i;
    float f = __builtin_xcn_v_cvt_f32_bf16(h.__x);
    i = static_cast<unsigned long long int>(f);
    return i;
}
__HOUYI_BF16_DECL__ unsigned long long int __bfloat162ull_ru(const __xpu_bfloat16 h)
{
    unsigned long long int i;
    float f = __builtin_xcn_v_cvt_f32_bf16(h.__x);
    i = static_cast<unsigned long long int>(f);
    return i;
}
__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __ull2bfloat16_rn(const unsigned long long int i)
{
#if defined(__XPU_ARCH__)
    __xpu_bfloat16 h;
    const float f = static_cast<float>(i);
    h.__x = __builtin_xcn_v_cvt_bf16_f32(f);
    return h;
#else
    float f = static_cast<float>(i);
    const unsigned long long int uf = static_cast<unsigned long long int>(f);
    unsigned int u;

    (void)__builtin_memcpy(&u, &f, sizeof(f));

    // round up happened here
    // note: no need to handle round up to f == 0x1.p64 specially
    if (uf > i) {
        u--;
    }
    if (uf != i) {
        u |= 1U;
    }

    (void)__builtin_memcpy(&f, &u, sizeof(f));

    return __float2bfloat16_rn(f);
#endif
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __ull2bfloat16_rz(const unsigned long long int i)
{
    __xpu_bfloat16 h;
    const float f = static_cast<float>(i);
    h.__x = __builtin_xcn_v_cvt_bf16_f32(f);
    return h;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __ull2bfloat16_rd(const unsigned long long int i)
{
    __xpu_bfloat16 h;
    const float f = static_cast<float>(i);
    h.__x = __builtin_xcn_v_cvt_bf16_f32(f);
    return h;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __ull2bfloat16_ru(const unsigned long long int i)
{
    __xpu_bfloat16 h;
    const float f = static_cast<float>(i);
    h.__x = __builtin_xcn_v_cvt_bf16_f32(f);
    return h;
}
__HOUYI_BF16_DECL__ long long int __bfloat162ll_rn(const __xpu_bfloat16 h)
{
    long long int i;
    const float f = __builtin_xcn_v_cvt_f32_bf16(h.__x);
    i = static_cast<long long int>(f);
    return i;
}
__HOUYI_HOSTDEVICE_BF16_DECL__ long long int __bfloat162ll_rz(const __xpu_bfloat16 h)
{
    long long int i;
    const float f = __bfloat162float(h);
    i = static_cast<long long int>(f);
    const long long int max_val = (long long int)0x7fffffffffffffffULL;
    const long long int min_val = (long long int)0x8000000000000000ULL;
    const unsigned short bits = static_cast<unsigned short>(static_cast<__xpu_bfloat16_raw>(h).x << 1U);
    // saturation fixup
    if (bits > (unsigned short)0xFF00U) {
        // NaN
        i = min_val;
    } else if (f >= static_cast<float>(max_val)) {
        // saturate maximum
        i = max_val;
    } else if (f < static_cast<float>(min_val)) {
        // saturate minimum
        i = min_val;
    }
    return i;
}
__HOUYI_BF16_DECL__ long long int __bfloat162ll_rd(const __xpu_bfloat16 h)
{
    long long int i;
    const float f = __builtin_xcn_v_cvt_f32_bf16(h.__x);
    i = static_cast<long long int>(f);
    return i;
}
__HOUYI_BF16_DECL__ long long int __bfloat162ll_ru(const __xpu_bfloat16 h)
{
    long long int i;
    const float f = __builtin_xcn_v_cvt_f32_bf16(h.__x);
    i = static_cast<long long int>(f);
    return i;
}
__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __ll2bfloat16_rn(const long long int i)
{
#if defined(__XPU_ARCH__)
    __xpu_bfloat16 h;
    const float f = static_cast<float>(i);
    h.__x = __builtin_xcn_v_cvt_bf16_f32(f);
    return h;
#else
    float f = static_cast<float>(i);
    const long long int lf = static_cast<long long int>(f);
    unsigned int u;

    (void)__builtin_memcpy(&u, &f, sizeof(f));

    if ((f > 0.0f) && (lf > i)) {
        u--;
    }
    if ((f < 0.0f) && (lf < i)) {
        u--;
    }
    if (lf != i) {
        u |= 1U;
    }

    (void)__builtin_memcpy(&f, &u, sizeof(f));

    return __float2bfloat16_rn(f);
#endif
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __ll2bfloat16_rz(const long long int i)
{
    __xpu_bfloat16 h;
    const float f = static_cast<float>(i);
    h.__x = __builtin_xcn_v_cvt_bf16_f32(f);
    return h;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __ll2bfloat16_rd(const long long int i)
{
    __xpu_bfloat16 h;
    const float f = static_cast<float>(i);
    h.__x = __builtin_xcn_v_cvt_bf16_f32(f);
    return h;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __ll2bfloat16_ru(const long long int i)
{
    __xpu_bfloat16 h;
    const float f = static_cast<float>(i);
    h.__x = __builtin_xcn_v_cvt_bf16_f32(f);
    return h;
}

__HOUYI_BF16_DECL__ __xpu_bfloat16 htrunc(const __xpu_bfloat16 h)
{
   __xpu_bfloat16 val;
   val.__x = __builtin_xcn_v_trunc_bf16(h.__x);
   return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 hceil(const __xpu_bfloat16 h)
{
   __xpu_bfloat16 val;
   val.__x = __builtin_xcn_v_ceil_bf16(h.__x);
   return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 hfloor(const __xpu_bfloat16 h)
{
   __xpu_bfloat16 val;
   val.__x = __builtin_xcn_v_floor_bf16(h.__x);
   return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 hrint(const __xpu_bfloat16 h)
{
    __xpu_bfloat16 val;
    float f = __builtin_xcn_v_cvt_f32_bf16(h.__x);
    f = rintf(f);
    val.__x = __builtin_xcn_v_cvt_bf16_f32(f);
    return val;
}

__HOUYI_BF16_DECL__ __xpu_bfloat162 h2trunc(const __xpu_bfloat162 h)
{
    const __xpu_bfloat16 low = __float2bfloat16_rz(truncf(__low2float(h)));
    const __xpu_bfloat16 high = __float2bfloat16_rz(truncf(__high2float(h)));
    return __xpu_bfloat162(low, high);
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 h2ceil(const __xpu_bfloat162 h)
{
    const __xpu_bfloat16 low = __float2bfloat16_ru(ceilf(__low2float(h)));
    const __xpu_bfloat16 high = __float2bfloat16_ru(ceilf(__high2float(h)));
    return __xpu_bfloat162(low, high);
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 h2floor(const __xpu_bfloat162 h)
{
    const __xpu_bfloat16 low = __float2bfloat16_rd(floorf(__low2float(h)));
    const __xpu_bfloat16 high = __float2bfloat16_rd(floorf(__high2float(h)));
    return __xpu_bfloat162(low, high);
}

__HOUYI_BF16_DECL__ __xpu_bfloat162 h2rint(const __xpu_bfloat162 h)
{
    return __halves2bfloat162(hrint(__low2bfloat16(h)), hrint(__high2bfloat16(h)));
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __lows2bfloat162(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat162 val;
    val.x = a.x;
    val.y = b.x;
    return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __highs2bfloat162(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat162 val;
    val.x = a.y;
    val.y = b.y;
    return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __low2bfloat16(const __xpu_bfloat162 a)
{
    __xpu_bfloat16 ret;
    ret.__x = __ushort_as_bfloat16(static_cast<__xpu_bfloat162_raw>(a).x).__x;
    return ret;
}
__HOUYI_BF16_DECL__ int __hisinf(const __xpu_bfloat16 a)
{
    int retval;
    if (__BFLOAT16_TO_CUS(a) == 0xFF80U) {
        retval = -1;
    } else if (__BFLOAT16_TO_CUS(a) == 0x7F80U) {
        retval = 1;
    } else {
        retval = 0;
    }
    return retval;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __low2bfloat162(const __xpu_bfloat162 a)
{
    __xpu_bfloat162 val;
    val.x = a.x;
    val.y = a.x;
    return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __high2bfloat162(const __xpu_bfloat162 a)
{
    __xpu_bfloat162 val;
    val.x = a.y;
    val.y = a.y;
    return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __high2bfloat16(const __xpu_bfloat162 a)
{
    __xpu_bfloat16 ret;
    ret.__x = __ushort_as_bfloat16(static_cast<__xpu_bfloat162_raw>(a).y).__x;
    return ret;
}
__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat162 __halves2bfloat162(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    __xpu_bfloat162 val;
    val.x = a;
    val.y = b;
    return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __bfloat162bfloat162(const __xpu_bfloat16 a)
{
    __xpu_bfloat162 val;
    val.x = a;
    val.y = a;
    return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __lowhigh2highlow(const __xpu_bfloat162 a)
{
    __xpu_bfloat162 val;
    val.x = a.y;
    val.y = a.x;
    return val;
}
__HOUYI_HOSTDEVICE_BF16_DECL__ short int __bfloat16_as_short(const __xpu_bfloat16 h)
{
    return static_cast<short int>(__BFLOAT16_TO_CUS(h));
}
__HOUYI_HOSTDEVICE_BF16_DECL__ unsigned short int __bfloat16_as_ushort(const __xpu_bfloat16 h)
{
    return __builtin_bit_cast(unsigned short, h.__x);
}
__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __short_as_bfloat16(const short int i)
{
    __xpu_bfloat16 h;
    h.__x = __builtin_bit_cast(__bf16, static_cast<unsigned short int>(i));
    return h;
}
__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __ushort_as_bfloat16(const unsigned short int i)
{
    __xpu_bfloat16 h;
    h.__x = __builtin_bit_cast(__bf16, i);
    return h;
}

/******************************************************************************
*                __xpu_bfloat16, __xpu_bfloat162 warp shuffle                 *
******************************************************************************/

/**
 * \ingroup HOUYI_INTRINSIC_BFLOAT16_MOVE
 * \brief shfl down warp intrinsic for bfloat16
 */
__HOUYI_BF16_DECL__ __xpu_bfloat16 __shfl_down_sync(
    const unsigned int mask, const __xpu_bfloat16 in, const unsigned int delta,
    const int width = __XCN_WAVEFRONT_SIZE) {
    return __ushort_as_bfloat16(
        __shfl_down_sync(mask, __bfloat16_as_ushort(in), delta, width));
}

/**
 * \ingroup HOUYI_INTRINSIC_BFLOAT162_MOVE
 * \brief shfl down warp intrinsic for bfloat16
 */
__HOUYI_BF16_DECL__ __xpu_bfloat162 __shfl_down_sync(
    const unsigned int mask, const __xpu_bfloat162 in, const unsigned int delta,
    const int width = __XCN_WAVEFRONT_SIZE) {
    static_assert(sizeof(__xpu_bfloat162) == sizeof(unsigned int));
    union {
        __xpu_bfloat162 bf162;
        unsigned int ui;
    } u{in};
    u.ui =
        __shfl_down_sync<unsigned int, unsigned int>(mask, u.ui, delta, width);
    return u.bf162;
}

__device__ inline __xpu_bfloat16
__shfl_down(__xpu_bfloat16 var, unsigned int lane_delta, int width = warpSize) {
  unsigned short bits;
  __builtin_memcpy(&bits, &var, sizeof(bits));
  union { int i; unsigned short s[2]; } tmp;
  tmp.s[0] = bits;
  tmp.s[1] = 0;
  tmp.i = __shfl_down(tmp.i, lane_delta, width);
  bits = tmp.s[0];
  __xpu_bfloat16 result;
  __builtin_memcpy(&result, &bits, sizeof(bits));
  return result;
}

/**
 * \ingroup HOUYI_INTRINSIC_BFLOAT16_MOVE
 * \brief shfl sync warp intrinsic for bfloat16
 */
__HOUYI_BF16_DECL__ __xpu_bfloat16
__shfl_sync(const unsigned int mask, const __xpu_bfloat16 in, const int delta,
            const int width = __XCN_WAVEFRONT_SIZE) {
    return __ushort_as_bfloat16(
        __shfl_sync(mask, __bfloat16_as_ushort(in), delta, width));
}

/**
 * \ingroup HOUYI_INTRINSIC_BFLOAT162_MOVE
 * \brief shfl sync warp intrinsic for bfloat162
 */
__HOUYI_BF16_DECL__ __xpu_bfloat162
__shfl_sync(const unsigned int mask, const __xpu_bfloat162 in, const int delta,
            const int width = __XCN_WAVEFRONT_SIZE) {
    static_assert(sizeof(__xpu_bfloat162) == sizeof(unsigned int));
    union {
        __xpu_bfloat162 bf162;
        unsigned int ui;
    } u{in};
    u.ui = __shfl_sync(mask, u.ui, delta, width);
    return u.bf162;
}

/**
 * \ingroup HOUYI_INTRINSIC_BFLOAT16_MOVE
 * \brief shfl up sync warp intrinsic for bfloat16
 */
__HOUYI_BF16_DECL__ __xpu_bfloat16 __shfl_up_sync(
    const unsigned int mask, const __xpu_bfloat16 in, const unsigned int delta,
    const int width = __XCN_WAVEFRONT_SIZE) {
    return __ushort_as_bfloat16(
        __shfl_up_sync(mask, __bfloat16_as_ushort(in), delta, width));
}

/**
 * \ingroup HOUYI_INTRINSIC_BFLOAT162_MOVE
 * \brief shfl up sync warp intrinsic for bfloat162
 */
__HOUYI_BF16_DECL__ __xpu_bfloat162 __shfl_up_sync(
    const unsigned int mask, const __xpu_bfloat162 in, const unsigned int delta,
    const int width = __XCN_WAVEFRONT_SIZE) {
    static_assert(sizeof(__xpu_bfloat162) == sizeof(unsigned int));
    union {
        __xpu_bfloat162 bf162;
        unsigned int ui;
    } u{in};
    u.ui = __shfl_up_sync(mask, u.ui, delta, width);
    return u.bf162;
}

__device__ inline __xpu_bfloat16
__shfl_up(__xpu_bfloat16 var, unsigned int lane_delta, int width = warpSize) {
  unsigned short bits;
  __builtin_memcpy(&bits, &var, sizeof(bits));
  union { int i; unsigned short s[2]; } tmp;
  tmp.s[0] = bits;
  tmp.s[1] = 0;
  tmp.i = __shfl_up(tmp.i, lane_delta, width);
  bits = tmp.s[0];
  __xpu_bfloat16 result;
  __builtin_memcpy(&result, &bits, sizeof(bits));
  return result;
}

/**
 * \ingroup HOUYI_INTRINSIC_BFLOAT16_MOVE
 * \brief shfl xor sync warp intrinsic for bfloat16
 */
__HOUYI_BF16_DECL__ __xpu_bfloat16
__shfl_xor_sync(const unsigned int mask, const __xpu_bfloat16 in,
                const int delta, const int width = __XCN_WAVEFRONT_SIZE) {
    return __ushort_as_bfloat16(
        __shfl_xor_sync(mask, __bfloat16_as_ushort(in), delta, width));
}

__device__ inline __xpu_bfloat16
__shfl_xor(__xpu_bfloat16 var, int lane_mask, int width = warpSize) {
  unsigned short bits;
  __builtin_memcpy(&bits, &var, sizeof(bits));
  union { int i; unsigned short s[2]; } tmp;
  tmp.s[0] = bits;
  tmp.s[1] = 0;
  tmp.i = __shfl_xor(tmp.i, lane_mask, width);
  bits = tmp.s[0];
  __xpu_bfloat16 result;
  __builtin_memcpy(&result, &bits, sizeof(bits));
  return result;
}

__device__ inline __xpu_bfloat16
__shfl(__xpu_bfloat16 var, int src_lane, int width = warpSize) {
  unsigned short bits;
  __builtin_memcpy(&bits, &var, sizeof(bits));
  union { int i; unsigned short s[2]; } tmp;
  tmp.s[0] = bits;
  tmp.s[1] = 0;
  tmp.i = __shfl(tmp.i, src_lane, width);
  bits = tmp.s[0];
  __xpu_bfloat16 result;
  __builtin_memcpy(&result, &bits, sizeof(bits));
  return result;
}
/**
 * \ingroup HOUYI_INTRINSIC_BFLOAT162_MOVE
 * \brief shfl xor sync warp intrinsic for bfloat162
 */
__HOUYI_BF16_DECL__ __xpu_bfloat162
__shfl_xor_sync(const unsigned int mask, const __xpu_bfloat162 in,
                const int delta, const int width = __XCN_WAVEFRONT_SIZE) {
    static_assert(sizeof(__xpu_bfloat162) == sizeof(unsigned int));
    union {
        __xpu_bfloat162 bf162;
        unsigned int ui;
    } u{in};
    u.ui = __shfl_xor_sync(mask, u.ui, delta, width);
    return u.bf162;
}

__HOUYI_BF16_DECL__ inline __xpu_bfloat162
__shfl_xor(__xpu_bfloat162 var, int lane_mask,
           int width = __XCN_WAVEFRONT_SIZE) {
    static_assert(sizeof(__xpu_bfloat162) == sizeof(unsigned int));
    union {
        __xpu_bfloat162 bf162;
        unsigned int ui;
    } u{var};
    u.ui = __shfl_xor(u.ui, lane_mask, width);
    return u.bf162;
}

/******************************************************************************
*               __xpu_bfloat16 and __xpu_bfloat162 __ldg,__ldcg,__ldca,__ldcs                *
******************************************************************************/

#if defined(__cplusplus)
#if (defined(_MSC_VER) && defined(_WIN64)) || defined(__LP64__) || defined(__HOUYICC_RTC__)
#endif /*(defined(_MSC_VER) && defined(_WIN64)) || defined(__LP64__) || defined(__HOUYICC_RTC__)*/
__HOUYI_BF16_DECL__ __xpu_bfloat162 __ldg(const  __xpu_bfloat162 *const ptr)
{
    return *ptr;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __ldg(const __xpu_bfloat16 *const ptr)
{
    return *ptr;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __ldcg(const  __xpu_bfloat162 *const ptr)
{
    __xpu_bfloat162 tmp;
    asm volatile("global_load_b32 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __ldcg(const __xpu_bfloat16 *const ptr)
{
    __xpu_bfloat16 tmp;
    asm volatile("global_load_u16 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __ldca(const  __xpu_bfloat162 *const ptr)
{
    __xpu_bfloat162 tmp;
    asm volatile("global_load_b32 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __ldca(const __xpu_bfloat16 *const ptr)
{
    __xpu_bfloat16 tmp;
    asm volatile("global_load_u16 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __ldcs(const  __xpu_bfloat162 *const ptr)
{
    return *ptr;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __ldcs(const __xpu_bfloat16 *const ptr)
{
    return *ptr;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __ldlu(const  __xpu_bfloat162 *const ptr)
{
    return *ptr;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __ldlu(const __xpu_bfloat16 *const ptr)
{
    return *ptr;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __ldcv(const  __xpu_bfloat162 *const ptr)
{
    return *ptr;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __ldcv(const __xpu_bfloat16 *const ptr)
{
    return *ptr;
}

__HOUYI_BF16_DECL__ void __stwb(__xpu_bfloat162 *const ptr, const __xpu_bfloat162 value)
{
    *ptr = value;
}
__HOUYI_BF16_DECL__ void __stwb(__xpu_bfloat16 *const ptr, const __xpu_bfloat16 value)
{
    *ptr = value;
}
__HOUYI_BF16_DECL__ void __stcg(__xpu_bfloat162 *const ptr, const __xpu_bfloat162 value)
{
    asm volatile("global_store_b32 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}
__HOUYI_BF16_DECL__ void __stcg(__xpu_bfloat16 *const ptr, const __xpu_bfloat16 value)
{
    asm volatile("global_store_b16 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}
__HOUYI_BF16_DECL__ void __stcs(__xpu_bfloat162 *const ptr, const __xpu_bfloat162 value)
{
    *ptr = value;
}
__HOUYI_BF16_DECL__ void __stcs(__xpu_bfloat16 *const ptr, const __xpu_bfloat16 value)
{
    *ptr = value;
}
__HOUYI_BF16_DECL__ void __stwt(__xpu_bfloat162 *const ptr, const __xpu_bfloat162 value)
{
    *ptr = value;
}
__HOUYI_BF16_DECL__ void __stwt(__xpu_bfloat16 *const ptr, const __xpu_bfloat16 value)
{
    *ptr = value;
}

#endif /*defined(__cplusplus) */
/******************************************************************************
*                             __xpu_bfloat162 comparison                             *
******************************************************************************/
__HOUYI_BF16_DECL__ __xpu_bfloat162 __heq2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1 = __heq(a_low, b_low);
    v2 = __heq(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__HOUYI_BF16_DECL__ unsigned int __heq2_mask(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    const unsigned short px = __heq(a.x, b.x) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    const unsigned short py = __heq(a.y, b.y) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    unsigned ur = (unsigned)py;
    ur <<= (unsigned)16U;
    ur |= (unsigned)px;
    return ur;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hne2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1 = __hne(a_low, b_low);
    v2 = __hne(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__HOUYI_BF16_DECL__ unsigned int __hne2_mask(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    const unsigned short px = __hne(a.x, b.x) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    const unsigned short py = __hne(a.y, b.y) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    unsigned ur = (unsigned)py;
    ur <<= (unsigned)16U;
    ur |= (unsigned)px;
    return ur;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hle2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1 = __hle(a_low, b_low);
    v2 = __hle(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__HOUYI_BF16_DECL__ unsigned int __hle2_mask(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    const unsigned short px = __hle(a.x, b.x) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    const unsigned short py = __hle(a.y, b.y) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    unsigned ur = (unsigned)py;
    ur <<= (unsigned)16U;
    ur |= (unsigned)px;
    return ur;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hge2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1 = __hge(a_low, b_low);
    v2 = __hge(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__HOUYI_BF16_DECL__ unsigned int __hge2_mask(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    const unsigned short px = __hge(a.x, b.x) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    const unsigned short py = __hge(a.y, b.y) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    unsigned ur = (unsigned)py;
    ur <<= (unsigned)16U;
    ur |= (unsigned)px;
    return ur;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hlt2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1 = __hlt(a_low, b_low);
    v2 = __hlt(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__HOUYI_BF16_DECL__ unsigned int __hlt2_mask(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    const unsigned short px = __hlt(a.x, b.x) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    const unsigned short py = __hlt(a.y, b.y) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    unsigned ur = (unsigned)py;
    ur <<= (unsigned)16U;
    ur |= (unsigned)px;
    return ur;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hgt2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1 = __hgt(a_low, b_low);
    v2 = __hgt(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__HOUYI_BF16_DECL__ unsigned int __hgt2_mask(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    const unsigned short px = __hgt(a.x, b.x) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    const unsigned short py = __hgt(a.y, b.y) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    unsigned ur = (unsigned)py;
    ur <<= (unsigned)16U;
    ur |= (unsigned)px;
    return ur;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hequ2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1 = __hequ(a_low, b_low);
    v2 = __hequ(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__HOUYI_BF16_DECL__ unsigned int __hequ2_mask(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    const unsigned short px = __hequ(a.x, b.x) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    const unsigned short py = __hequ(a.y, b.y) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    unsigned ur = (unsigned)py;
    ur <<= (unsigned)16U;
    ur |= (unsigned)px;
    return ur;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hneu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1 = __hneu(a_low, b_low);
    v2 = __hneu(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__HOUYI_BF16_DECL__ unsigned int __hneu2_mask(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    const unsigned short px = __hneu(a.x, b.x) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    const unsigned short py = __hneu(a.y, b.y) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    unsigned ur = (unsigned)py;
    ur <<= (unsigned)16U;
    ur |= (unsigned)px;
    return ur;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hleu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1 = __hleu(a_low, b_low);
    v2 = __hleu(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__HOUYI_BF16_DECL__ unsigned int __hleu2_mask(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    const unsigned short px = __hleu(a.x, b.x) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    const unsigned short py = __hleu(a.y, b.y) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    unsigned ur = (unsigned)py;
    ur <<= (unsigned)16U;
    ur |= (unsigned)px;
    return ur;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hgeu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1 = __hgeu(a_low, b_low);
    v2 = __hgeu(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__HOUYI_BF16_DECL__ unsigned int __hgeu2_mask(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    const unsigned short px = __hgeu(a.x, b.x) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    const unsigned short py = __hgeu(a.y, b.y) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    unsigned ur = (unsigned)py;
    ur <<= (unsigned)16U;
    ur |= (unsigned)px;
    return ur;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hltu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1 = __hltu(a_low, b_low);
    v2 = __hltu(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__HOUYI_BF16_DECL__ unsigned int __hltu2_mask(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    const unsigned short px = __hltu(a.x, b.x) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    const unsigned short py = __hltu(a.y, b.y) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    unsigned ur = (unsigned)py;
    ur <<= (unsigned)16U;
    ur |= (unsigned)px;
    return ur;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hgtu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1 = __hgtu(a_low, b_low);
    v2 = __hgtu(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__HOUYI_BF16_DECL__ unsigned int __hgtu2_mask(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    const unsigned short px = __hgtu(a.x, b.x) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    const unsigned short py = __hgtu(a.y, b.y) ? (unsigned short)0xFFFFU : (unsigned short)0U;
    unsigned ur = (unsigned)py;
    ur <<= (unsigned)16U;
    ur |= (unsigned)px;
    return ur;
}
__HOUYI_BF16_DECL__ bool __hbeq2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __heq(a_low, b_low) & __heq(a_high, b_high);
}
__HOUYI_BF16_DECL__ bool __hbne2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hneu(a_low, b_low) & __hneu(a_high, b_high);
}
__HOUYI_BF16_DECL__ bool __hble2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hle(a_low, b_low) & __hle(a_high, b_high);
}
__HOUYI_BF16_DECL__ bool __hbge2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hge(a_low, b_low) & __hge(a_high, b_high);
}
__HOUYI_BF16_DECL__ bool __hblt2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hlt(a_low, b_low) & __hlt(a_high, b_high);
}
__HOUYI_BF16_DECL__ bool __hbgt2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hgt(a_low, b_low) & __hgt(a_high, b_high);
}
__HOUYI_BF16_DECL__ bool __hbequ2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hequ(a_low, b_low) & __hequ(a_high, b_high);
}
__HOUYI_BF16_DECL__ bool __hbneu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hneu(a_low, b_low) & __hequ(a_high, b_high);
}
__HOUYI_BF16_DECL__ bool __hbleu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hleu(a_low, b_low) & __hleu(a_high, b_high);
}
__HOUYI_BF16_DECL__ bool __hbgeu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hgeu(a_low, b_low) & __hgeu(a_high, b_high);
}
__HOUYI_BF16_DECL__ bool __hbltu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hltu(a_low, b_low) & __hltu(a_high, b_high);
}
__HOUYI_BF16_DECL__ bool __hbgtu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hgtu(a_low, b_low) & __hgtu(a_high, b_high);
}
/******************************************************************************
*                             __xpu_bfloat16 comparison                              *
******************************************************************************/
__HOUYI_BF16_DECL__ bool __heq(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __builtin_xcn_v_cmp_eq_bf16(a.__x, b.__x);
}
__HOUYI_BF16_DECL__ bool __hne(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __builtin_xcn_v_cmp_lg_bf16(a.__x, b.__x);
}
__HOUYI_BF16_DECL__ bool __hle(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __builtin_xcn_v_cmp_le_bf16(a.__x, b.__x);
}
__HOUYI_BF16_DECL__ bool __hge(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __builtin_xcn_v_cmp_ge_bf16(a.__x, b.__x);
}
__HOUYI_BF16_DECL__ bool __hlt(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __builtin_xcn_v_cmp_lt_bf16(a.__x, b.__x);
}
__HOUYI_BF16_DECL__ bool __hgt(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __builtin_xcn_v_cmp_gt_bf16(a.__x, b.__x);
}
__HOUYI_BF16_DECL__ bool __hequ(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __builtin_xcn_v_cmp_nlg_bf16(a.__x, b.__x);
}
__HOUYI_BF16_DECL__ bool __hneu(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __builtin_xcn_v_cmp_neq_bf16(a.__x, b.__x);
}
__HOUYI_BF16_DECL__ bool __hleu(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __builtin_xcn_v_cmp_ngt_bf16(a.__x, b.__x);
}
__HOUYI_BF16_DECL__ bool __hgeu(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __builtin_xcn_v_cmp_nlt_bf16(a.__x, b.__x);
}
__HOUYI_BF16_DECL__ bool __hltu(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __builtin_xcn_v_cmp_nge_bf16(a.__x, b.__x);
}
__HOUYI_BF16_DECL__ bool __hgtu(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __builtin_xcn_v_cmp_nle_bf16(a.__x, b.__x);
}
/******************************************************************************
*                            __xpu_bfloat162 arithmetic                             *
******************************************************************************/
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hadd2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    return __native_as_bfloat162(__builtin_xcn_v_pk_add_bf16(
        __bfloat162_as_native(a), __bfloat162_as_native(b)));
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hsub2(__xpu_bfloat162 a, __xpu_bfloat162 b)
{
    __xpu_bfloat16 ha, hb;
    ha = __low2bfloat16(a);
    hb = __low2bfloat16(b);
    __xpu_bfloat16 v1 = __hsub(ha, hb);
    ha = __high2bfloat16(a);
    hb = __high2bfloat16(b);
    __xpu_bfloat16 v2 = __hsub(ha, hb);
    return __halves2bfloat162(v1, v2);
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hmul2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    return __native_as_bfloat162(__builtin_xcn_v_pk_mul_bf16(
        __bfloat162_as_native(a), __bfloat162_as_native(b)));
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hadd2_rn(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    return __hadd2(a, b);
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hsub2_rn(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    return __hsub2(a, b);
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hmul2_rn(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    return __hmul2(a, b);
}
#define __SAT_OP_BFLOAT162_MACRO(name) { \
    __builtin_xcn_s_setreg(0x91, 1); \
    __xpu_bfloat162_native res = __builtin_xcn_v_##name##_bf16( \
        __bfloat162_as_native(a), __bfloat162_as_native(b)); \
    __builtin_xcn_s_setreg(0x91, 0); \
    return __native_as_bfloat162(res); \
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hadd2_sat(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    // __SAT_OP_BFLOAT162_MACRO(pk_add)
    __xpu_bfloat162 val;
    val.x = __hadd_sat(a.x, b.x);
    val.y = __hadd_sat(a.y, b.y);
    return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hsub2_sat(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 ha, hb;
    ha = __low2bfloat16(a);
    hb = __low2bfloat16(b);
    __builtin_xcn_s_setreg(0x91, 1);
    __xpu_bfloat16 v1 = __hsub(ha, hb);
    ha = __high2bfloat16(a);
    hb = __high2bfloat16(b);
    __xpu_bfloat16 v2 = __hsub(ha, hb);
    __builtin_xcn_s_setreg(0x91, 0);
    return __halves2bfloat162(v1, v2);
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hmul2_sat(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __SAT_OP_BFLOAT162_MACRO(pk_mul)
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hfma2(const __xpu_bfloat162 a, const __xpu_bfloat162 b, const __xpu_bfloat162 c)
{
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    return __native_as_bfloat162(__builtin_xcn_v_pk_fma_bf16(
        __bfloat162_as_native(a), __bfloat162_as_native(b),
        __bfloat162_as_native(c)));
#else
    __xpu_bfloat16 ha, hb, hc;

    ha = __low2bfloat16(a);
    hb = __low2bfloat16(b);
    hc = __low2bfloat16(c);

    __xpu_bfloat16 v1 = __hmul(ha, hb);
    v1 = __hadd(v1, hc);

    ha = __high2bfloat16(a);
    hb = __high2bfloat16(b);
    hc = __high2bfloat16(c);

    __xpu_bfloat16 v2 = __hmul(ha, hb);
    v2 = __hadd(v2, hc);

    return __halves2bfloat162(v1, v2);
#endif
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hfma2_sat(const __xpu_bfloat162 a, const __xpu_bfloat162 b, const __xpu_bfloat162 c)
{
    __xpu_bfloat162 val;
    __builtin_xcn_s_setreg(0x91, 1);
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    val = __native_as_bfloat162(__builtin_xcn_v_pk_fma_bf16(
        __bfloat162_as_native(a), __bfloat162_as_native(b),
        __bfloat162_as_native(c)));
#else
    __xpu_bfloat16 ha, hb, hc;

    ha = __low2bfloat16(a);
    hb = __low2bfloat16(b);
    hc = __low2bfloat16(c);

    __xpu_bfloat16 v1 = __hmul(ha, hb);
    v1 = __hadd(v1, hc);

    ha = __high2bfloat16(a);
    hb = __high2bfloat16(b);
    hc = __high2bfloat16(c);

    __xpu_bfloat16 v2 = __hmul(ha, hb);
    v2 = __hadd(v2, hc);
    val = __halves2bfloat162(v1, v2);
#endif
    __builtin_xcn_s_setreg(0x91, 0);
    return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __h2div(const __xpu_bfloat162 a, const __xpu_bfloat162 b) {
    __xpu_bfloat16 ha, hb;

    ha = __low2bfloat16(a);
    hb = __low2bfloat16(b);

    const __xpu_bfloat16 v1 = __hdiv(ha, hb);

    ha = __high2bfloat16(a);
    hb = __high2bfloat16(b);

    const __xpu_bfloat16 v2 = __hdiv(ha, hb);

    return __halves2bfloat162(v1, v2);
}
/******************************************************************************
*                             __xpu_bfloat16 arithmetic                             *
******************************************************************************/
__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __hadd(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    
    __xpu_bfloat16 val;
    #if defined(__XPU_ARCH__)
    val.__x = __builtin_xcn_v_add_bf16(a.__x, b.__x);
    #else
    val.__x = a.__x + b.__x;
    #endif
    return val;
}
__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __hsub(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
   __xpu_bfloat16 val;
   #if defined(__XPU_ARCH__)
   val.__x = __builtin_xcn_v_sub_bf16(a.__x, b.__x);
   #else
   val.__x = a.__x - b.__x;
   #endif
   return val;
}
__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __hmul(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    __xpu_bfloat16 val;
    #if defined(__XPU_ARCH__)
    val.__x = __builtin_xcn_v_mul_bf16(a.__x, b.__x);
    #else
    val.__x = a.__x * b.__x;
    #endif
    return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __hadd_rn(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xcn_v_add_bf16(a.__x, b.__x);
    return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __hsub_rn(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xcn_v_sub_bf16(a.__x, b.__x);
    return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __hmul_rn(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xcn_v_mul_bf16(a.__x, b.__x);
    return val;
}
#define __SAT_OP_BFLOAT16_MACRO(name) { \
    __xpu_bfloat16 val; \
    __builtin_xcn_s_setreg(0x91, 1); \
    val.__x = __builtin_xcn_v_##name##_bf16(a.__x, b.__x); \
    __builtin_xcn_s_setreg(0x91, 0); \
    return val; \
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __hadd_sat(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    __SAT_OP_BFLOAT16_MACRO(add)
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __hsub_sat(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    __SAT_OP_BFLOAT16_MACRO(sub)
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __hmul_sat(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    __SAT_OP_BFLOAT16_MACRO(mul)
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __hfma(const __xpu_bfloat16 a, const __xpu_bfloat16 b, const __xpu_bfloat16 c)
{
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    __xpu_bfloat16 val;
    val.__x = __builtin_xcn_v_fma_bf16(a.__x, b.__x, c.__x);
    return val;
#else
    return __hadd(__hmul(a, b), c);
#endif
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __hfma_sat(const __xpu_bfloat16 a, const __xpu_bfloat16 b, const __xpu_bfloat16 c)
{
    __xpu_bfloat16 val;
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    val.__x = __builtin_xcn_v_fma_bf16(a.__x, b.__x, c.__x);
#else
    val = __hfma(a, b, c);
#endif
    return __hmin(__hmax(val, HOUYI_ZERO_BF16), HOUYI_ONE_BF16);
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __hdiv(const __xpu_bfloat16 a, const __xpu_bfloat16 b) {
    __xpu_bfloat16 val;
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    __asm__ __volatile__("v_div_full_bf16 %0, %1, %2"
                         : "=v"(val.__x)
                         : "v"(b.__x), "v"(a.__x));
#else
    const float fa = __builtin_xcn_v_cvt_f32_bf16(a.__x);
    const float fb = __builtin_xcn_v_cvt_f32_bf16(b.__x);
    const float res = fa / fb;
    val.__x = __builtin_xcn_v_cvt_bf16_f32(res);
#endif
    return val;
}

/******************************************************************************
*                             __xpu_bfloat162 functions                  *
******************************************************************************/
__HOUYI_BF16_DECL__ __xpu_bfloat16 __hsin_internal(const __xpu_bfloat16 a) {
    __xpu_bfloat16 val;
    float f = __builtin_xcn_v_cvt_f32_bf16(a.__x);
    f = sinf(f);
    val.__x = __builtin_xcn_v_cvt_bf16_f32(f);
    return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 hsin(const __xpu_bfloat16 a) {
    return __hsin_internal(a);
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 h2sin(const __xpu_bfloat162 a) {
    const __xpu_bfloat16 l = __low2bfloat16(a);
    const __xpu_bfloat16 h = __high2bfloat16(a);
    return __halves2bfloat162(__hsin_internal(l), __hsin_internal(h));
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __hcos_internal(const __xpu_bfloat16 a) {
    __xpu_bfloat16 val;
    float f = __builtin_xcn_v_cvt_f32_bf16(a.__x);
    f = cosf(f);
    val.__x = __builtin_xcn_v_cvt_bf16_f32(f);
    return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 hcos(const __xpu_bfloat16 a) {
    return __hcos_internal(a);
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 h2cos(const __xpu_bfloat162 a) {
    const __xpu_bfloat16 l = __low2bfloat16(a);
    const __xpu_bfloat16 h = __high2bfloat16(a);
    return __halves2bfloat162(__hcos_internal(l), __hcos_internal(h));
}

__HOUYI_BF16_DECL__ __xpu_bfloat16 htanh(const __xpu_bfloat16 a) {
    return __float2bfloat16(__ocml_tanh_f32(__bfloat162float(a)));
}

__HOUYI_BF16_DECL__ __xpu_bfloat162 h2tanh(const __xpu_bfloat162 a) {
    return __xpu_bfloat162(htanh(a.x), htanh(a.y));
}

__HOUYI_BF16_DECL__ __xpu_bfloat16 hexp(const __xpu_bfloat16 a) {
    #if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
        return __float2bfloat16(__ocml_exp_f32(__bfloat162float(a)));
    #else
        __xpu_bfloat16 res = __float2bfloat16(__ocml_exp_f32(__bfloat162float(a)));
        uint16_t input = __bfloat16_as_ushort(a);
        uint16_t output = __bfloat16_as_ushort(res);
        output += (input == 0x40DB);
        return __ushort_as_bfloat16(output);
    #endif
}

__HOUYI_BF16_DECL__ __xpu_bfloat16 hexp10(const __xpu_bfloat16 a) {
    __xpu_bfloat16 res = __float2bfloat16(__ocml_exp10_f32(__bfloat162float(a)));
    uint16_t input = __bfloat16_as_ushort(a);
    uint16_t output = __bfloat16_as_ushort(res);
    output -= (input == 0xBC95);
    return __ushort_as_bfloat16(output);
}

__HOUYI_BF16_DECL__ __xpu_bfloat16 hexp2(const __xpu_bfloat16 a) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    __xpu_bfloat16 val;
    val.__x = __builtin_xcn_v_exp2_bf16(a.__x);
    return val;
#else
    return __float2bfloat16(__ocml_exp2_f32(__bfloat162float(a)));
#endif
}

__HOUYI_BF16_DECL__ __xpu_bfloat162 h2exp(const __xpu_bfloat162 a) {
    return __xpu_bfloat162(hexp(a.x), hexp(a.y));
}

__HOUYI_BF16_DECL__ __xpu_bfloat162 h2exp10(const __xpu_bfloat162 a) {
    return __xpu_bfloat162(hexp10(a.x), hexp10(a.y));
}

__HOUYI_BF16_DECL__ __xpu_bfloat162 h2exp2(const __xpu_bfloat162 a) {
    return __xpu_bfloat162(hexp2(a.x), hexp2(a.y));
}

__HOUYI_BF16_DECL__ __xpu_bfloat16 hlog(const __xpu_bfloat16 a) {
    return __float2bfloat16(__ocml_log_f32(__bfloat162float(a)));
}

__HOUYI_BF16_DECL__ __xpu_bfloat16 hlog10(const __xpu_bfloat16 a) {
    return __float2bfloat16(__ocml_log10_f32(__bfloat162float(a)));
}

__HOUYI_BF16_DECL__ __xpu_bfloat16 hlog2(const __xpu_bfloat16 a) {
    return __float2bfloat16(__ocml_log2_f32(__bfloat162float(a)));
}

__HOUYI_BF16_DECL__ __xpu_bfloat162 h2log(const __xpu_bfloat162 a) {
    return __halves2bfloat162(hlog(a.x), hlog(a.y));
}

__HOUYI_BF16_DECL__ __xpu_bfloat162 h2log10(const __xpu_bfloat162 a) {
    return __halves2bfloat162(hlog10(a.x), hlog10(a.y));
}

__HOUYI_BF16_DECL__ __xpu_bfloat162 h2log2(const __xpu_bfloat162 a) {
    return __halves2bfloat162(hlog2(a.x), hlog2(a.y));
}

__HOUYI_BF16_DECL__ __xpu_bfloat162 h2rcp(const __xpu_bfloat162 a) {
    __xpu_bfloat16 ha, hb;
    ha = __low2bfloat16(a);
    const __xpu_bfloat16 v1 = hrcp(ha);

    hb = __high2bfloat16(a);
    const __xpu_bfloat16 v2 = hrcp(hb);

    return __halves2bfloat162(v1, v2);
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 hrcp(const __xpu_bfloat16 a) {
    __xpu_bfloat16 val;
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    val.__x = __builtin_xcn_v_rcp_bf16(a.__x);
#else
    float f = __builtin_xcn_v_cvt_f32_bf16(a.__x);
    f = __builtin_xcn_rcpf(f);
    val.__x = __builtin_xcn_v_cvt_bf16_f32(f);
#endif
    return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 h2rsqrt(const __xpu_bfloat162 a) {
    __xpu_bfloat16 ha, hb;
    ha = __low2bfloat16(a);
    const __xpu_bfloat16 v1 = hrsqrt(ha);

    hb = __high2bfloat16(a);
    const __xpu_bfloat16 v2 = hrsqrt(hb);

    return __halves2bfloat162(v1, v2);
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 hrsqrt(const __xpu_bfloat16 a) {
    __xpu_bfloat16 val;
    float f = __builtin_xcn_v_cvt_f32_bf16(a.__x);
    f = __builtin_xcn_sqrtf(f);
    f = 1.0f / f;
    val.__x = __builtin_xcn_v_cvt_bf16_f32(f);
    return val;
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 h2sqrt(const __xpu_bfloat162 a) {
    __xpu_bfloat16 ha, hb;
    ha = __low2bfloat16(a);
    const __xpu_bfloat16 v1 = hsqrt(ha);

    hb = __high2bfloat16(a);
    const __xpu_bfloat16 v2 = hsqrt(hb);

    return __halves2bfloat162(v1, v2);
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 hsqrt(const __xpu_bfloat16 a) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    __xpu_bfloat16 val;
    val.__x = __builtin_xcn_v_sqrt_bf16(a.__x);
    return val;
#else
    __xpu_bfloat16 val;
    float f = __builtin_xcn_v_cvt_f32_bf16(a.__x);
    f = __builtin_xcn_sqrtf(f);
    val.__x = __builtin_xcn_v_cvt_bf16_f32(f);
    return val;
#endif
}
__HOUYI_BF16_DECL__ bool __hisnan(const __xpu_bfloat16 a) {
    __xpu_bfloat16_raw hr = static_cast<__xpu_bfloat16_raw>(a);
    return !(~hr.x & 0x7f80) && +(hr.x & 0x7f);
}

__HOUYI_BF16_DECL__ __xpu_bfloat162 __hisnan2(const __xpu_bfloat162 a) {
    return __xpu_bfloat162{{__hisnan(a.x) ? HOUYI_ONE_BF16 : HOUYI_ZERO_BF16},
                           {__hisnan(a.y) ? HOUYI_ONE_BF16 : HOUYI_ZERO_BF16}};
}

__HOUYI_BF16_DECL__ __xpu_bfloat162 __hneg2(const __xpu_bfloat162 a)
{
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    return __native_as_bfloat162(
        __builtin_xcn_v_pk_neg_bf16(__bfloat162_as_native(a)));
#else if
    __xpu_bfloat16 ha, hb;
    ha = __low2bfloat16(a);
    const __xpu_bfloat16 v1 = __hneg(ha);

    hb = __high2bfloat16(a);
    const __xpu_bfloat16 v2 = __hneg(hb);

    return __halves2bfloat162(v1, v2);
#endif
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __hneg(const __xpu_bfloat16 a)
{
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    __xpu_bfloat16 val;
    val.__x = __builtin_xcn_v_neg_bf16(a.__x);
    return val;
#else if
    __xpu_bfloat16 r;
    float f = __builtin_xcn_v_cvt_f32_bf16(a.__x);
    asm("{v_neg_f32 %0,%1}"
        :"=v"(f) : "v"(f));
    r.__x = __builtin_xcn_v_cvt_bf16_f32(f);
    return r;
#endif
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __habs2(const __xpu_bfloat162 a)
{
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    return __native_as_bfloat162(
        __builtin_xcn_v_pk_abs_bf16(__bfloat162_as_native(a)));
#else if
    __xpu_bfloat16 ha, hb;
    ha = __low2bfloat16(a);
    const __xpu_bfloat16 v1 = __habs(ha);

    hb = __high2bfloat16(a);
    const __xpu_bfloat16 v2 = __habs(hb);

    return __halves2bfloat162(v1, v2);
#endif
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __habs(const __xpu_bfloat16 a)
{
    #if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    __xpu_bfloat16 val;
    val.__x = __builtin_xcn_v_abs_bf16(a.__x);
    return val;
#else if
    __xpu_bfloat16 r;
    float f = __builtin_xcn_v_cvt_f32_bf16(a.__x);
    asm("{v_abs_f32 %0,%1}"
        :"=v"(f) : "v"(f));
    r.__x = __builtin_xcn_v_cvt_bf16_f32(f);
    return r;
#endif
}
/******************************************************************************
*                             __xpu_bfloat16 arithmetic                             *
******************************************************************************/
__HOUYI_BF16_DECL__ __xpu_bfloat16 __hmax(const __xpu_bfloat16 a,
                                          const __xpu_bfloat16 b) {
    unsigned short raw;
    asm("{v_max_bf16 %0,%1,%2}"
        : "=v"(raw)
        : "v"(__BFLOAT16_TO_CUS(a)), "v"(__BFLOAT16_TO_CUS(b)));
    return __ushort_as_bfloat16(raw);
}

__HOUYI_BF16_DECL__ __xpu_bfloat16 __hmin(const __xpu_bfloat16 a,
                                          const __xpu_bfloat16 b) {
   unsigned short raw;
   asm("{v_min_bf16 %0,%1,%2}"
       : "=v"(raw)
       : "v"(__BFLOAT16_TO_CUS(a)), "v"(__BFLOAT16_TO_CUS(b)));
   return __ushort_as_bfloat16(raw);
}

__HOUYI_BF16_DECL__ __xpu_bfloat16 __hmax_nan(const __xpu_bfloat16 a,
                                              const __xpu_bfloat16 b) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
   unsigned short raw;
   asm("{v_max_bf16 %0,%1,%2 nan}"
       : "=v"(raw)
       : "v"(__BFLOAT16_TO_CUS(a)), "v"(__BFLOAT16_TO_CUS(b)));
   return __ushort_as_bfloat16(raw);
#else
    if (__hisnan(a) || __hisnan(b))
        return HOUYI_NAN_BF16;
    return __hmax(a, b);
#endif // (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
}

__HOUYI_BF16_DECL__ __xpu_bfloat16 __hmin_nan(const __xpu_bfloat16 a,
                                              const __xpu_bfloat16 b) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
   unsigned short raw;
   asm("{v_min_bf16 %0,%1,%2 nan}"
       : "=v"(raw)
       : "v"(__BFLOAT16_TO_CUS(a)), "v"(__BFLOAT16_TO_CUS(b)));
   return __ushort_as_bfloat16(raw);
#else
    if (__hisnan(a) || __hisnan(b))
        return HOUYI_NAN_BF16;
    return __hmin(a, b);
#endif // (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
}
__HOUYI_BF16_DECL__ __xpu_bfloat16 __hfma_relu(const __xpu_bfloat16 a, const __xpu_bfloat16 b, const __xpu_bfloat16 c)
{
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    __xpu_bfloat16 val;
    val.__x = __builtin_xcn_v_fma_bf16(a.__x, b.__x, c.__x);
    return __hmax(0, val);
#else
    return __hmax(0, __hfma(a, b, c));
#endif
}
/******************************************************************************
*                            __xpu_bfloat162 arithmetic                             *
******************************************************************************/
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hmax2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    return __native_as_bfloat162(__builtin_xcn_v_pk_max_bf16(
        __bfloat162_as_native(a), __bfloat162_as_native(b)));
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hmin2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    return __native_as_bfloat162(__builtin_xcn_v_pk_min_bf16(
        __bfloat162_as_native(a), __bfloat162_as_native(b)));
}

__HOUYI_BF16_DECL__ __xpu_bfloat162 __hmax2_nan(const __xpu_bfloat162 a,
                                                const __xpu_bfloat162 b) {
    return __xpu_bfloat162(__hmax_nan(a.x, b.x), __hmax_nan(a.y, b.y));
}

__HOUYI_BF16_DECL__ __xpu_bfloat162 __hmin2_nan(const __xpu_bfloat162 a,
                                                const __xpu_bfloat162 b) {
    return __xpu_bfloat162(__hmin_nan(a.x, b.x), __hmin_nan(a.y, b.y));
}
__HOUYI_BF16_DECL__ __xpu_bfloat162 __hfma2_relu(const __xpu_bfloat162 a, const __xpu_bfloat162 b, const __xpu_bfloat162 c)
{
  __xpu_bfloat162 hzero;
  hzero.x = __ushort_as_bfloat16((unsigned short)0x0000U);
  hzero.y = __ushort_as_bfloat16((unsigned short)0x0000U);
  return __hmax2_nan(__hfma2(a, b, c), __xpu_bfloat162(hzero));
}

__HOUYI_BF16_DECL__ __xpu_bfloat162 __hcmadd(const __xpu_bfloat162 a, const __xpu_bfloat162 b, const __xpu_bfloat162 c)
{
    __xpu_bfloat16 r_tmp = __hfma(a.x, b.x, c.x);
    __xpu_bfloat16 i_tmp = __hfma(a.x, b.y, c.y);
    r_tmp = __hfma(__hneg(a.y), b.y, r_tmp);
    i_tmp = __hfma(a.y, b.x, i_tmp);
    return make_bfloat162(r_tmp, i_tmp);
}

/* Define __PTR for atomicAdd prototypes below, undef after done */
#if (defined(_MSC_VER) && defined(_WIN64)) || defined(__LP64__) || defined(__HOUYICC_RTC__)
#define __PTR   "l"
#else
#define __PTR   "r"
#endif /*(defined(_MSC_VER) && defined(_WIN64)) || defined(__LP64__) || defined(__HOUYICC_RTC__)*/

__HOUYI_BF16_DECL__ __xpu_bfloat16 atomicAdd(__xpu_bfloat16 *const address,
                                           const __xpu_bfloat16 val) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    __xpu_bfloat16 old;
    asm volatile("{global_atomic_add_bf16 %0, %1, %2 off llca:15 glc}"
                 : "=v"(old)
                 : "v"(address), "v"(val));
    return old;
#else
  __xpu_bfloat16 old = *address;

  bool done = false;
  while (!done) {
    __xpu_bfloat16 new_val = __hadd(val, old);
    done = __houyi_atomic_compare_exchange_strong(
        address, &old, new_val, __ATOMIC_RELAXED, __ATOMIC_RELAXED,
        __HOUYI_MEMORY_SCOPE_AGENT);
  }
  return old;
#endif // (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
}

__HOUYI_BF16_DECL__ __xpu_bfloat16
atomicAdd_block(__xpu_bfloat16 *const address, const __xpu_bfloat16 val) {
  __xpu_bfloat16 old = *address;

  bool done = false;
  while (!done) {
    __xpu_bfloat16 new_val = __hadd(val, old);
    done = __houyi_atomic_compare_exchange_strong(
        address, &old, new_val, __ATOMIC_RELAXED, __ATOMIC_RELAXED,
        __HOUYI_MEMORY_SCOPE_WORKGROUP);
  }
  return old;
}

__HOUYI_BF16_DECL__ __xpu_bfloat162 atomicAdd(__xpu_bfloat162 *const address,
                                            const __xpu_bfloat162 val) {
  __xpu_bfloat162 old = *address;

  bool done = false;
  while (!done) {
    __xpu_bfloat162 new_val = __hadd2(val, old);
    done = __houyi_atomic_compare_exchange_strong(
        (unsigned int *)address, (unsigned int *)&old,
        *(unsigned int *)&new_val, __ATOMIC_RELAXED, __ATOMIC_RELAXED,
        __HOUYI_MEMORY_SCOPE_AGENT);
  }
  return old;
}

__HOUYI_BF16_DECL__ __xpu_bfloat162
atomicAdd_block(__xpu_bfloat162 *const address, const __xpu_bfloat162 val) {
  __xpu_bfloat162 old = *address;

  bool done = false;
  while (!done) {
    __xpu_bfloat162 new_val = __hadd2(val, old);
    done = __houyi_atomic_compare_exchange_strong(
        (unsigned int *)address, (unsigned int *)&old,
        *(unsigned int *)&new_val, __ATOMIC_RELAXED, __ATOMIC_RELAXED,
        __HOUYI_MEMORY_SCOPE_WORKGROUP);
  }
  return old;
}

#if !defined (__XPU_ARCH__) || (__XPU_ARCH__ >= 6)
typedef __attribute__((address_space(3))) void *SHARED_PTR;
typedef __attribute__((ext_vector_type(4))) uint32_t __xpu_uint32x4_t;
__HOUYI_BF16_DECL__ __xpu_bfloat162 ds_load_n2m1_b16(void *shared_load_ptr, unsigned stride) {
    __xpu_bfloat162 result;
    unsigned temp =  __builtin_xcn_ds_load_n2m1_b16((SHARED_PTR)shared_load_ptr, stride);
    __builtin_memcpy(&result, &temp, sizeof(unsigned)); 
    return result;
}

struct __xpu_bfloat16_padded {
    __xpu_bfloat16 val;
    uint16_t padding;
};
struct __xpu_bfloat16_pair {
    __xpu_bfloat16_padded x;
    __xpu_bfloat16_padded y;
};

__HOUYI_BF16_DECL__ void ds_store_n2m1_b16(void *shared_store_ptr, __xpu_bfloat162 data, unsigned stride) {
    unsigned temp;
    __builtin_memcpy(&temp, &data, sizeof(__xpu_bfloat162));
    __builtin_xcn_ds_store_n2m1_b16((SHARED_PTR)shared_store_ptr, temp, stride);
}

__HOUYI_BF16_DECL__ __xpu_bfloat16_pair ds_load_exp_m2n2_bf16(void *shared_load_ptr, __xpu_bfloat162 max_value, unsigned stride) {
    __xpu_bfloat16_pair result;
    unsigned long re = __builtin_xcn_ds_load_exp_m2n2_bf16((SHARED_PTR)shared_load_ptr,
                                                           __bfloat162_as_native(max_value),
                                                           stride);
    __builtin_memcpy(&result, &re, sizeof(unsigned long));
    return result;
}

__HOUYI_BF16_DECL__ __xpu_bfloat16_pair ds_load_add_m2n2_bf16(void *shared_load_ptr, __xpu_bfloat162 add_value, unsigned stride) {
    __xpu_bfloat16_pair result;
    unsigned long re = __builtin_xcn_ds_load_add_m2n2_bf16((SHARED_PTR)shared_load_ptr,
                                                           __bfloat162_as_native(add_value),
                                                           stride);
    __builtin_memcpy(&result, &re, sizeof(unsigned long));
    return result;
}

__HOUYI_BF16_DECL__ __xpu_bfloat16_pair ds_load_sub_m2n2_bf16(void *shared_load_ptr, __xpu_bfloat162 sub_value, unsigned stride) {
    __xpu_bfloat16_pair result;
    unsigned long re = __builtin_xcn_ds_load_sub_m2n2_bf16((SHARED_PTR)shared_load_ptr,
                                                           __bfloat162_as_native(sub_value),
                                                           stride);
    __builtin_memcpy(&result, &re, sizeof(unsigned long));
    return result;
}

__HOUYI_BF16_DECL__ __xpu_bfloat16_pair ds_load_subrev_m2n2_bf16(void *shared_load_ptr, __xpu_bfloat162 subrev_value, unsigned stride) {
    __xpu_bfloat16_pair result;
    unsigned long re = __builtin_xcn_ds_load_subrev_m2n2_bf16((SHARED_PTR)shared_load_ptr,
                                                              __bfloat162_as_native(subrev_value),
                                                              stride);
    __builtin_memcpy(&result, &re, sizeof(unsigned long));
    return result;
}

__HOUYI_BF16_DECL__ __xpu_bfloat16_pair ds_load_max_m2n2_bf16(void *shared_load_ptr, __xpu_bfloat162 max_value, unsigned stride) {
    __xpu_bfloat16_pair result;
    unsigned long re = __builtin_xcn_ds_load_max_m2n2_bf16((SHARED_PTR)shared_load_ptr,
                                                           __bfloat162_as_native(max_value),
                                                           stride);
    __builtin_memcpy(&result, &re, sizeof(unsigned long));
    return result;
}

__HOUYI_BF16_DECL__ __xpu_bfloat16_pair ds_load_amax_m2n2_bf16(void *shared_load_ptr, __xpu_bfloat162 amax_value, unsigned stride) {
    __xpu_bfloat16_pair result;
    unsigned long re = __builtin_xcn_ds_load_amax_m2n2_bf16((SHARED_PTR)shared_load_ptr,
                                                            __bfloat162_as_native(amax_value),
                                                            stride);
    __builtin_memcpy(&result, &re, sizeof(unsigned long));
    return result;
}

__HOUYI_BF16_DECL__ __xpu_uint32x4_t ds_load_exp_m4n2_bf16(void *shared_load_ptr, __xpu_bfloat162 max_value, unsigned stride) {
    return __builtin_xcn_ds_load_exp_m4n2_bf16((SHARED_PTR)shared_load_ptr,
                                               __bfloat162_as_native(max_value),
                                               stride);
}

__HOUYI_BF16_DECL__ __xpu_uint32x4_t ds_load_add_m4n2_bf16(void *shared_load_ptr, __xpu_bfloat162 add_value, unsigned stride) {
    return __builtin_xcn_ds_load_add_m4n2_bf16((SHARED_PTR)shared_load_ptr,
                                               __bfloat162_as_native(add_value),
                                               stride);
}

__HOUYI_BF16_DECL__ __xpu_uint32x4_t ds_load_sub_m4n2_bf16(void *shared_load_ptr, __xpu_bfloat162 sub_value, unsigned stride) {
    return __builtin_xcn_ds_load_sub_m4n2_bf16((SHARED_PTR)shared_load_ptr,
                                               __bfloat162_as_native(sub_value),
                                               stride);
}

__HOUYI_BF16_DECL__ __xpu_uint32x4_t ds_load_subrev_m4n2_bf16(void *shared_load_ptr, __xpu_bfloat162 subrev_value, unsigned stride) {
    return __builtin_xcn_ds_load_subrev_m4n2_bf16((SHARED_PTR)shared_load_ptr,
                                                  __bfloat162_as_native(subrev_value),
                                                  stride);
}

__HOUYI_BF16_DECL__ __xpu_uint32x4_t ds_load_max_m4n2_bf16(void *shared_load_ptr, __xpu_bfloat162 max_value, unsigned stride) {
    return __builtin_xcn_ds_load_max_m4n2_bf16((SHARED_PTR)shared_load_ptr,
                                               __bfloat162_as_native(max_value),
                                               stride);
}

__HOUYI_BF16_DECL__ __xpu_uint32x4_t ds_load_amax_m4n2_bf16(void *shared_load_ptr, __xpu_bfloat162 amax_value, unsigned stride) {
    return __builtin_xcn_ds_load_amax_m4n2_bf16((SHARED_PTR)shared_load_ptr,
                                                __bfloat162_as_native(amax_value),
                                                stride);
}
#endif /* !defined (__XPU_ARCH__) || (__XPU_ARCH__ >= 6) */

__HOUYI_HOSTDEVICE_BF16_DECL__ __xpu_bfloat162 __hfma2_cross(
    __xpu_bfloat162 __s0, __xpu_bfloat162 __s1, __xpu_bfloat162 __s2) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
  return __native_as_bfloat162(__builtin_xcn_v_pk_cross_fma_bf16(
      __bfloat162_as_native(__s0), __bfloat162_as_native(__s1),
      __bfloat162_as_native(__s2)));
#else
  return __halves2bfloat162(__hadd(__hmul(__s0.y, __s1.x), __s0.x),
                            __hadd(__hmul(__s2.y, __s1.y), __s2.x));
#endif
}

#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
// --- pk_neg bf16 ---
__HOUYI_BF16_DECL__ __xpu_bfloat164 __hneg4(__xpu_bfloat164 __x) {
  __xpu_bfloat164 ret;
  ret.data = __builtin_bit_cast(__bf16_uint2,
      __builtin_xcn_pk_neg2_bf16(__bfloat164_as_native(__x)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat168 __hneg8(__xpu_bfloat168 __x) {
  __xpu_bfloat168 ret;
  ret.data = __builtin_bit_cast(__bf16_uint4,
      __builtin_xcn_pk_neg4_bf16(__bfloat168_as_native(__x)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat1616 __hneg16(__xpu_bfloat1616 __x) {
  __xpu_bfloat1616 ret;
  ret.data = __builtin_bit_cast(__bf16_uint8,
      __builtin_xcn_pk_neg8_bf16(__bfloat1616_as_native(__x)));
  return ret;
}

// --- pk_min bf16 ---
__HOUYI_BF16_DECL__ __xpu_bfloat164 __hmin4(__xpu_bfloat164 __x,
                                            __xpu_bfloat164 __y) {
  __xpu_bfloat164 ret;
  ret.data = __builtin_bit_cast(__bf16_uint2,
      __builtin_xcn_pk_min2_bf16(__bfloat164_as_native(__x),
                                  __bfloat164_as_native(__y)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat168 __hmin8(__xpu_bfloat168 __x,
                                            __xpu_bfloat168 __y) {
  __xpu_bfloat168 ret;
  ret.data = __builtin_bit_cast(__bf16_uint4,
      __builtin_xcn_pk_min4_bf16(__bfloat168_as_native(__x),
                                  __bfloat168_as_native(__y)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat1616 __hmin16(__xpu_bfloat1616 __x,
                                              __xpu_bfloat1616 __y) {
  __xpu_bfloat1616 ret;
  ret.data = __builtin_bit_cast(__bf16_uint8,
      __builtin_xcn_pk_min8_bf16(__bfloat1616_as_native(__x),
                                  __bfloat1616_as_native(__y)));
  return ret;
}

// --- pk_max bf16 ---
__HOUYI_BF16_DECL__ __xpu_bfloat164 __hmax4(__xpu_bfloat164 __x,
                                            __xpu_bfloat164 __y) {
  __xpu_bfloat164 ret;
  ret.data = __builtin_bit_cast(__bf16_uint2,
      __builtin_xcn_pk_max2_bf16(__bfloat164_as_native(__x),
                                  __bfloat164_as_native(__y)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat168 __hmax8(__xpu_bfloat168 __x,
                                            __xpu_bfloat168 __y) {
  __xpu_bfloat168 ret;
  ret.data = __builtin_bit_cast(__bf16_uint4,
      __builtin_xcn_pk_max4_bf16(__bfloat168_as_native(__x),
                                  __bfloat168_as_native(__y)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat1616 __hmax16(__xpu_bfloat1616 __x,
                                              __xpu_bfloat1616 __y) {
  __xpu_bfloat1616 ret;
  ret.data = __builtin_bit_cast(__bf16_uint8,
      __builtin_xcn_pk_max8_bf16(__bfloat1616_as_native(__x),
                                  __bfloat1616_as_native(__y)));
  return ret;
}

__HOUYI_BF16_DECL__ __xpu_bfloat164 __hadd4(__xpu_bfloat164 __x,
                                            __xpu_bfloat164 __y) {
  __xpu_bfloat164 ret;
  ret.data = __builtin_bit_cast(__bf16_uint2,
      __builtin_xcn_pk_add2_bf16(__bfloat164_as_native(__x),
                                  __bfloat164_as_native(__y)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat168 __hadd8(__xpu_bfloat168 __x,
                                            __xpu_bfloat168 __y) {
  __xpu_bfloat168 ret;
  ret.data = __builtin_bit_cast(__bf16_uint4,
      __builtin_xcn_pk_add4_bf16(__bfloat168_as_native(__x),
                                  __bfloat168_as_native(__y)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat1616 __hadd16(__xpu_bfloat1616 __x,
                                              __xpu_bfloat1616 __y) {
  __xpu_bfloat1616 ret;
  ret.data = __builtin_bit_cast(__bf16_uint8,
      __builtin_xcn_pk_add8_bf16(__bfloat1616_as_native(__x),
                                  __bfloat1616_as_native(__y)));
  return ret;
}

// --- pk_mul bf16 ---
__HOUYI_BF16_DECL__ __xpu_bfloat164 __hmul4(__xpu_bfloat164 __x,
                                            __xpu_bfloat164 __y) {
  __xpu_bfloat164 ret;
  ret.data = __builtin_bit_cast(__bf16_uint2,
      __builtin_xcn_pk_mul2_bf16(__bfloat164_as_native(__x),
                                  __bfloat164_as_native(__y)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat168 __hmul8(__xpu_bfloat168 __x,
                                            __xpu_bfloat168 __y) {
  __xpu_bfloat168 ret;
  ret.data = __builtin_bit_cast(__bf16_uint4,
      __builtin_xcn_pk_mul4_bf16(__bfloat168_as_native(__x),
                                  __bfloat168_as_native(__y)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat1616 __hmul16(__xpu_bfloat1616 __x,
                                              __xpu_bfloat1616 __y) {
  __xpu_bfloat1616 ret;
  ret.data = __builtin_bit_cast(__bf16_uint8,
      __builtin_xcn_pk_mul8_bf16(__bfloat1616_as_native(__x),
                                  __bfloat1616_as_native(__y)));
  return ret;
}

// --- vs_pk_mul bf16 (scalar * vector) ---
__HOUYI_BF16_DECL__ __xpu_bfloat164 __hmul4(__xpu_bfloat162 __x,
                                            __xpu_bfloat164 __y) {
  __xpu_bfloat164 ret;
  ret.data = __builtin_bit_cast(__bf16_uint2,
      __builtin_xcn_vs_pk_mul2_bf16(__bfloat162_as_native(__x),
                                    __bfloat164_as_native(__y)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat168 __hmul8(__xpu_bfloat162 __x,
                                            __xpu_bfloat168 __y) {
  __xpu_bfloat168 ret;
  ret.data = __builtin_bit_cast(__bf16_uint4,
      __builtin_xcn_vs_pk_mul4_bf16(__bfloat162_as_native(__x),
                                    __bfloat168_as_native(__y)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat1616 __hmul16(__xpu_bfloat162 __x,
                                              __xpu_bfloat1616 __y) {
  __xpu_bfloat1616 ret;
  ret.data = __builtin_bit_cast(__bf16_uint8,
      __builtin_xcn_vs_pk_mul8_bf16(__bfloat162_as_native(__x),
                                    __bfloat1616_as_native(__y)));
  return ret;
}

// --- vsbf16_pk_mul bf16 (scalar bf16 * vector, e64 + opsel broadcast) ---
__HOUYI_BF16_DECL__ __xpu_bfloat164 __hmul4(__xpu_bfloat16 __x,
                                            __xpu_bfloat164 __y) {
  __xpu_bfloat164 ret;
  ret.data = __builtin_bit_cast(__bf16_uint2,
      __builtin_xcn_vsbf16_pk_mul2_bf16(__x.__x,
                                        __bfloat164_as_native(__y)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat168 __hmul8(__xpu_bfloat16 __x,
                                            __xpu_bfloat168 __y) {
  __xpu_bfloat168 ret;
  ret.data = __builtin_bit_cast(__bf16_uint4,
      __builtin_xcn_vsbf16_pk_mul4_bf16(__x.__x,
                                        __bfloat168_as_native(__y)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat1616 __hmul16(__xpu_bfloat16 __x,
                                              __xpu_bfloat1616 __y) {
  __xpu_bfloat1616 ret;
  ret.data = __builtin_bit_cast(__bf16_uint8,
      __builtin_xcn_vsbf16_pk_mul8_bf16(__x.__x,
                                        __bfloat1616_as_native(__y)));
  return ret;
}

// --- pk_fmac bf16 ---
__HOUYI_BF16_DECL__ __xpu_bfloat164 __hfmac4(__xpu_bfloat164 __x,
                                             __xpu_bfloat164 __y,
                                             __xpu_bfloat164 __z) {
  __xpu_bfloat164 ret;
  ret.data = __builtin_bit_cast(__bf16_uint2,
      __builtin_xcn_pk_fmac2_bf16(__bfloat164_as_native(__x),
                                  __bfloat164_as_native(__y),
                                  __bfloat164_as_native(__z)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat168 __hfmac8(__xpu_bfloat168 __x,
                                             __xpu_bfloat168 __y,
                                             __xpu_bfloat168 __z) {
  __xpu_bfloat168 ret;
  ret.data = __builtin_bit_cast(__bf16_uint4,
      __builtin_xcn_pk_fmac4_bf16(__bfloat168_as_native(__x),
                                  __bfloat168_as_native(__y),
                                  __bfloat168_as_native(__z)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat1616 __hfmac16(__xpu_bfloat1616 __x,
                                               __xpu_bfloat1616 __y,
                                               __xpu_bfloat1616 __z) {
  __xpu_bfloat1616 ret;
  ret.data = __builtin_bit_cast(__bf16_uint8,
      __builtin_xcn_pk_fmac8_bf16(__bfloat1616_as_native(__x),
                                  __bfloat1616_as_native(__y),
                                  __bfloat1616_as_native(__z)));
  return ret;
}

// --- pk_fma bf16 ---
__HOUYI_BF16_DECL__ __xpu_bfloat164 __hfma4(__xpu_bfloat164 __x,
                                            __xpu_bfloat164 __y,
                                            __xpu_bfloat164 __z) {
  __xpu_bfloat164 ret;
  ret.data = __builtin_bit_cast(__bf16_uint2,
      __builtin_xcn_pk_fma2_bf16(__bfloat164_as_native(__x),
                                  __bfloat164_as_native(__y),
                                  __bfloat164_as_native(__z)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat168 __hfma8(__xpu_bfloat168 __x,
                                            __xpu_bfloat168 __y,
                                            __xpu_bfloat168 __z) {
  __xpu_bfloat168 ret;
  ret.data = __builtin_bit_cast(__bf16_uint4,
      __builtin_xcn_pk_fma4_bf16(__bfloat168_as_native(__x),
                                  __bfloat168_as_native(__y),
                                  __bfloat168_as_native(__z)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat1616 __hfma16(__xpu_bfloat1616 __x,
                                              __xpu_bfloat1616 __y,
                                              __xpu_bfloat1616 __z) {
  __xpu_bfloat1616 ret;
  ret.data = __builtin_bit_cast(__bf16_uint8,
      __builtin_xcn_pk_fma8_bf16(__bfloat1616_as_native(__x),
                                  __bfloat1616_as_native(__y),
                                  __bfloat1616_as_native(__z)));
  return ret;
}

// --- pk_exp bf16 (natural exponential, v_pk_exp_bf16 packed pseudo) ---
__HOUYI_BF16_DECL__ __xpu_bfloat164 h4exp(__xpu_bfloat164 __x) {
  __xpu_bfloat164 ret;
  ret.data = __builtin_bit_cast(__bf16_uint2,
      __builtin_xcn_h4exp_bf16(__bfloat164_as_native(__x)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat168 h8exp(__xpu_bfloat168 __x) {
  __xpu_bfloat168 ret;
  ret.data = __builtin_bit_cast(__bf16_uint4,
      __builtin_xcn_h8exp_bf16(__bfloat168_as_native(__x)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat1616 h16exp(__xpu_bfloat1616 __x) {
  __xpu_bfloat1616 ret;
  ret.data = __builtin_bit_cast(__bf16_uint8,
      __builtin_xcn_h16exp_bf16(__bfloat1616_as_native(__x)));
  return ret;
}

// --- pk_ex2 bf16 (base-2 exponential, v_pk_ex2_bf16 packed pseudo) ---
__HOUYI_BF16_DECL__ __xpu_bfloat164 h4exp2(__xpu_bfloat164 __x) {
  __xpu_bfloat164 ret;
  ret.data = __builtin_bit_cast(__bf16_uint2,
      __builtin_xcn_h4exp2_bf16(__bfloat164_as_native(__x)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat168 h8exp2(__xpu_bfloat168 __x) {
  __xpu_bfloat168 ret;
  ret.data = __builtin_bit_cast(__bf16_uint4,
      __builtin_xcn_h8exp2_bf16(__bfloat168_as_native(__x)));
  return ret;
}
__HOUYI_BF16_DECL__ __xpu_bfloat1616 h16exp2(__xpu_bfloat1616 __x) {
  __xpu_bfloat1616 ret;
  ret.data = __builtin_bit_cast(__bf16_uint8,
      __builtin_xcn_h16exp2_bf16(__bfloat1616_as_native(__x)));
  return ret;
}

/* __xcn_readlane_bf16 / __xcn_readfirstlane_bf16
 *
 * Read a bfloat16 value from a specific lane (or the first active lane) of a
 * vector register without any numeric conversion instruction.
 *
 * Using __builtin_xcn_readlanef on a bfloat16 argument causes an implicit
 * bfloat16->float conversion before the readlane and a float->bfloat16
 * conversion after, adding two v_cvt instructions.  Assigning the unsigned
 * short result of a hypothetical raw-bits builtin to a bfloat16 variable
 * triggers the bfloat16(unsigned short) constructor which calls
 * __ushort2bfloat16_rn -- another conversion.
 *
 * The only constructor that copies raw bits without conversion is
 * bfloat16(__xpu_bfloat16_raw).  This wrapper reads the raw 16-bit pattern
 * via the integer readlane and reconstructs the bfloat16 through that safe
 * path, so the compiler emits a single v_readlane_b32 with no v_cvt.
 */
__HOUYI_BF16_DECL__ __xpu_bfloat16
__xcn_readlane_bf16(__xpu_bfloat16 val, int lane) {
    return __xpu_bfloat16_raw{static_cast<unsigned short>(
        __builtin_xcn_readlane(
            static_cast<int>(static_cast<unsigned int>(val.__x)), lane))};
}

__HOUYI_BF16_DECL__ __xpu_bfloat16
__xcn_readfirstlane_bf16(__xpu_bfloat16 val) {
    return __xpu_bfloat16_raw{static_cast<unsigned short>(
        __builtin_xcn_readfirstlane(
            static_cast<int>(static_cast<unsigned int>(val.__x))))};
}

#endif // __XPU_ARCH__ >= 6
// END bf16 packed pseudo wrappers

#undef __PTR
#undef __HOUYI_BF16_DECL__
#endif /* defined(__cplusplus) */

#undef __HOUYI_HOSTDEVICE_BF16_DECL__
#undef __HOUYI_BF16_DECL__

/* Define first-class types "xpu_bfloat16" and "xpu_bfloat162", unless user specifies otherwise via "#define HOUYI_NO_BFLOAT16" */
/* C cannot ever have these types defined here, because __xpu_bfloat16 and __xpu_bfloat162 are C++ classes */
#if defined(__cplusplus) && !defined(HOUYI_NO_BFLOAT16)
typedef __xpu_bfloat16  xpu_bfloat16;
typedef __xpu_bfloat162 xpu_bfloat162;

#endif /* defined(__cplusplus) && !defined(HOUYI_NO_BFLOAT16) */
 
#if defined(__CPP_VERSION_AT_LEAST_11_BF16)
#undef __CPP_VERSION_AT_LEAST_11_BF16
#endif /* defined(__CPP_VERSION_AT_LEAST_11_BF16) */

#endif /* end of include guard: __XCN_KERNEL_XTDK_BF16_HPP__ */

