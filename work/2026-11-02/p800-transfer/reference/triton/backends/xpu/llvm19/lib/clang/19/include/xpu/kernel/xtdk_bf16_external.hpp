#if !defined(__XTDK_BF16_HPP__)
#define __XTDK_BF16_HPP__

#if !defined(__XTDK_BF16_H__)
#error "Do not include this file directly. Instead, include xtdk_bf16.h."
#endif

#if defined(__xpu_on_host__) || __xpu_subarch__ >= 2

#if !defined(_MSC_VER) && __cplusplus >= 201103L
#   define __CPP_VERSION_AT_LEAST_11_BF16
#elif _MSC_FULL_VER >= 190024210 && _MSVC_LANG >= 201103L
#   define __CPP_VERSION_AT_LEAST_11_BF16
#endif

/* C++11 header for std::move. 
 * In RTC mode, std::move is provided implicitly; don't include the header
 */
#if defined(__CPP_VERSION_AT_LEAST_11_BF16) && !defined(__XTDKCC_RTC__)
#include <utility>
#endif /* defined(__CPP_VERSION_AT_LEAST_11_BF16) && !defined(__XTDKCC_RTC__) */

/* C++ header for std::memcpy */
#include <cstring>

/* used for subarch2-4 */
#if defined (__XPU_ARCH__) && (__XPU_ARCH__ >= 2)
#define __xpu_on_device__
#endif

#undef __forceinline__
#define __forceinline__ __inline__ __attribute__((always_inline))

#define __align__(n) \
        __attribute__((aligned(n)))

/* Set up function decorations */
#define __XTDK_BF16_DECL__ static __device__ __inline__
#define __XTDK_HOSTDEVICE_BF16_DECL__ static __host__ __device__ __inline__
#define __XTDK_HOSTDEVICE__ __host__ __device__
/* Set up structure-alignment attribute */
#define __XTDK_ALIGN__(align) __align__(align)

/* Macros to allow xpu_bfloat16 to be used by inline assembly */
#define __BFLOAT16_TO_US(var) *(reinterpret_cast<unsigned short *>(&(var)))
#define __BFLOAT16_TO_CUS(var) *(reinterpret_cast<const unsigned short *>(&(var)))

/**
* Types which allow static initialization of "xpu_bfloat16" until
* these become an actual builtin. Note this initialization is as a
* bitfield representation of "xpu_bfloat16", and not a conversion from short->xpu_bfloat16.
* Such a representation will be deprecated in a future version of XTDK. 
* (Note these are visible to non-nvcc compilers, including C-only compilation)
*/
typedef struct __XTDK_ALIGN__(2) {
    unsigned short x;
} __xpu_bfloat16_raw;

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

struct __XTDK_ALIGN__(2) __xpu_bfloat16 {
public:
    unsigned short __x;

public:
#if defined(__CPP_VERSION_AT_LEAST_11_BF16)
    __xpu_bfloat16() = default;
#else
    __XTDK_HOSTDEVICE__ __xpu_bfloat16() { }
#endif /* defined(__CPP_VERSION_AT_LEAST_11_BF16) */

    /* Convert to/from __xpu_bfloat16_raw */
    __XTDK_HOSTDEVICE__ __xpu_bfloat16(const __xpu_bfloat16_raw &hr) : __x(hr.x) { }
    __XTDK_HOSTDEVICE__ __xpu_bfloat16 &operator=(const __xpu_bfloat16_raw &hr) { __x = hr.x; return *this; }
    __XTDK_HOSTDEVICE__ volatile __xpu_bfloat16 &operator=(const __xpu_bfloat16_raw &hr) volatile { __x = hr.x; return *this; }
    __XTDK_HOSTDEVICE__ volatile __xpu_bfloat16 &operator=(const volatile __xpu_bfloat16_raw &hr) volatile { __x = hr.x; return *this; }
    __XTDK_HOSTDEVICE__ operator __xpu_bfloat16_raw() const { __xpu_bfloat16_raw ret; ret.x = __x; return ret; }
    __XTDK_HOSTDEVICE__ operator __xpu_bfloat16_raw() const volatile { __xpu_bfloat16_raw ret; ret.x = __x; return ret; }

#if !defined(__XTDK_NO_BFLOAT16_CONVERSIONS__)
    /* Construct from float/double */
    __XTDK_HOSTDEVICE__ __xpu_bfloat16(const float f) { __x = __float2bfloat16(f).__x;  }
    __XTDK_HOSTDEVICE__ __xpu_bfloat16(const double f) { __x = __double2bfloat16(f).__x;  }

    __XTDK_HOSTDEVICE__ operator float() const { return __bfloat162float(*this); }
    __XTDK_HOSTDEVICE__ __xpu_bfloat16 &operator=(const float f) { __x = __float2bfloat16(f).__x; return *this; }

    /* We omit "cast to double" operator, so as to not be ambiguous about up-cast */
    __XTDK_HOSTDEVICE__ __xpu_bfloat16 &operator=(const double f) { __x = __double2bfloat16(f).__x; return *this; }

/* Member functions only available to nvcc compilation so far */
    /* Allow automatic construction from types supported natively in hardware */
    /* Note we do avoid constructor init-list because of special host/device compilation rules */
    __XTDK_HOSTDEVICE__ __xpu_bfloat16(short val) { __x = __short2bfloat16_rn(val).__x;  }
    __XTDK_HOSTDEVICE__ __xpu_bfloat16(unsigned short val) { __x = __ushort2bfloat16_rn(val).__x;  }
    __XTDK_HOSTDEVICE__ __xpu_bfloat16(int val) { __x = __int2bfloat16_rn(val).__x;  }
    __XTDK_HOSTDEVICE__ __xpu_bfloat16(unsigned int val) { __x = __uint2bfloat16_rn(val).__x;  }
    __XTDK_HOSTDEVICE__ __xpu_bfloat16(long long val) { __x = __ll2bfloat16_rn(val).__x;  }
    __XTDK_HOSTDEVICE__ __xpu_bfloat16(unsigned long long val) { __x = __ull2bfloat16_rn(val).__x; }

    /* Allow automatic casts to supported builtin types, matching all that are permitted with float */
    __XTDK_HOSTDEVICE__ operator short() const { return __bfloat162short_rz(*this); }
    __XTDK_HOSTDEVICE__ __xpu_bfloat16 &operator=(short val) { __x = __short2bfloat16_rn(val).__x; return *this; }

    __XTDK_HOSTDEVICE__ operator unsigned short() const { return __bfloat162ushort_rz(*this); }
    __XTDK_HOSTDEVICE__ __xpu_bfloat16 &operator=(unsigned short val) { __x = __ushort2bfloat16_rn(val).__x; return *this; }

    __XTDK_HOSTDEVICE__ operator int() const { return __bfloat162int_rz(*this); }
    __XTDK_HOSTDEVICE__ __xpu_bfloat16 &operator=(int val) { __x = __int2bfloat16_rn(val).__x; return *this; }

    __XTDK_HOSTDEVICE__ operator unsigned int() const { return __bfloat162uint_rz(*this); }
    __XTDK_HOSTDEVICE__ __xpu_bfloat16 &operator=(unsigned int val) { __x = __uint2bfloat16_rn(val).__x; return *this; }

    __XTDK_HOSTDEVICE__ operator long long() const { return __bfloat162ll_rz(*this); }
    __XTDK_HOSTDEVICE__ __xpu_bfloat16 &operator=(long long val) { __x = __ll2bfloat16_rn(val).__x; return *this; }

    __XTDK_HOSTDEVICE__ operator unsigned long long() const { return __bfloat162ull_rz(*this); }
    __XTDK_HOSTDEVICE__ __xpu_bfloat16 &operator=(unsigned long long val) { __x = __ull2bfloat16_rn(val).__x; return *this; }

    /* Boolean conversion - note both 0 and -0 must return false */
    __XTDK_HOSTDEVICE__ operator bool() const { return (__x & 0x7FFF) != 0; }
#endif /* !defined(__XTDK_NO_BFLOAT16_CONVERSIONS__) */
};

#if !defined(__XTDK_NO_BFLOAT16_OPERATORS__)
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
#endif /* !defined(__XTDK_NO_BFLOAT16_OPERATORS__) */

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

#undef __XTDK_HOSTDEVICE__
#undef __XTDK_ALIGN__

__XTDK_HOSTDEVICE_BF16_DECL__ unsigned short __internal_float2bfloat16(const float f, unsigned int &sign, unsigned int &remainder)
{
    unsigned int x;
    (void)std::memcpy(&x, &f, sizeof(f));

    if ((x & 0x7fffffffU) > 0x7f800000U) {
        sign = 0U;
        remainder = 0U;
        return static_cast<unsigned short>(0x7fffU);
    }
    sign = x >> 31U;
    remainder = x << 16U;
    return static_cast<unsigned short>(x >> 16U);
}

__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __double2bfloat16(const double x)
{
#if defined (__xpu_on_device__)
    __xpu_bfloat16 val;
    float f = static_cast<float>(x);
    val.__x = __builtin_xpu_float2bf16_rn(f);
    return val;
#else

    float f = static_cast<float>(x);
    const double d = static_cast<double>(f);
    unsigned int u;

    (void)std::memcpy(&u, &f, sizeof(f));
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

    (void)std::memcpy(&f, &u, sizeof(f));

    return __float2bfloat16(f);

#endif
}

__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __float2bfloat16(const float a)
{
    __xpu_bfloat16 val;
#if defined (__xpu_on_device__)
    val.__x = __builtin_xpu_float2bf16_rn(a);
    return val;
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

__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __float2bfloat16_rn(const float a)
{
    __xpu_bfloat16 val;
#if defined(__xpu_on_device__)
    val.__x = __builtin_xpu_float2bf16_rn(a);
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

__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __float2bfloat16_rz(const float a)
{
#if defined(__xpu_on_device__)
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_float2bf16_rz(a);
    return val;
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
__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __float2bfloat16_rd(const float a)
{
#if defined(__xpu_on_device__)
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_float2bf16_rd(a);
    return val;
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
__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __float2bfloat16_ru(const float a)
{
#if defined(__xpu_on_device__)
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_float2bf16_ru(a);
    return val;
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
__XTDK_HOSTDEVICE_BF16_DECL__ float __internal_bfloat162float(const unsigned short h)
{
    float f;
#if defined (__xpu_on_device__)
    return __builtin_xpu_bf162float_rn(h);
#else
    unsigned int u = static_cast<unsigned int>(h) << 16;
    (void)std::memcpy(&f, &u, sizeof(f));
#endif
    return f;
}
__XTDK_HOSTDEVICE_BF16_DECL__ float __bfloat162float(const __xpu_bfloat16 a)
{
    return __internal_bfloat162float(static_cast<__xpu_bfloat16_raw>(a).x);
}

__XTDK_HOSTDEVICE_BF16_DECL__ int __bfloat162int_rz(const __xpu_bfloat16 h)
{
#if defined (__xpu_on_device__)
    return __builtin_xpu_bf162fix_rz(h.__x);
#else
    const float f = __bfloat162float(h);
    int   i;
    i = static_cast<int>(f);
#if !(defined __xpu_on_device__)
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
#endif
}

__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __int2bfloat16_rn(const int i)
{
#if defined (__xpu_on_device__)
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_fix2bf16_rn(i);
    return val;
#else
    const double d = static_cast<double>(i);
    return __double2bfloat16(d);
#endif
}

__XTDK_HOSTDEVICE_BF16_DECL__ short int __bfloat162short_rz(const __xpu_bfloat16 h)
{
   short int val;
#if defined(__xpu_on_device__)
    val = (short int)__builtin_xpu_bf162fix_rz(h.__x);
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

__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __short2bfloat16_rn(const short int i)
{
#if defined(__xpu_on_device__)
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_fix2bf16_rn((int)i);
    return val;
#else
    const float f = static_cast<float>(i);
    return __float2bfloat16_rn(f);
#endif
}

__XTDK_HOSTDEVICE_BF16_DECL__ unsigned int __bfloat162uint_rz(const __xpu_bfloat16 h)
{
    const float f = __bfloat162float(h);
    unsigned int i;
    i = static_cast<unsigned int>(f);
#if !(defined __xpu_on_device__)
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

__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __uint2bfloat16_rn(const unsigned int i)
{
#if defined (__xpu_on_device__)
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_fix2bf16_u_rn(i);
    return val;
#else
    const double d = static_cast<double>(i);
    return __double2bfloat16(d);
#endif
}

__XTDK_HOSTDEVICE_BF16_DECL__ unsigned short int __bfloat162ushort_rz(const __xpu_bfloat16 h)
{
   unsigned short int val;
#if defined (__xpu_on_device__)
    return (unsigned short int)__builtin_xpu_bf162fix_rz(h.__x);
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

__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __ushort2bfloat16_rn(const unsigned short int i)
{
#if defined(__xpu_on_device__)
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_fix2bf16_u_rn((unsigned int)i);
    return val;
#else
    const float f = static_cast<float>(i);
    return __float2bfloat16_rn(f);
#endif
}
__XTDK_HOSTDEVICE_BF16_DECL__ unsigned long long int __bfloat162ull_rz(const __xpu_bfloat16 h)
{
    unsigned long long int i;
#if defined(__xpu_on_device__)
    return (unsigned long long int)__builtin_xpu_bf162fix_rz(h.__x);
#else
    const float f = __bfloat162float(h);
    i = static_cast<unsigned long long int>(f);
#if !(defined __XTDK_ARCH__)
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
#endif
#endif
    return i;
}
__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __ull2bfloat16_rn(const unsigned long long int i)
{
#if defined(__xpu_on_device__)
    __xpu_bfloat16 h;
    const float f = static_cast<float>(i);
    h.__x = __builtin_xpu_float2bf16_rn(f);
    return h;
#else
    float f = static_cast<float>(i);
    const unsigned long long int uf = static_cast<unsigned long long int>(f);
    unsigned int u;

    (void)std::memcpy(&u, &f, sizeof(f));

    // round up happened here
    // note: no need to handle round up to f == 0x1.p64 specially
    if (uf > i) {
        u--;
    }
    if (uf != i) {
        u |= 1U;
    }

    (void)std::memcpy(&f, &u, sizeof(f));

    return __float2bfloat16_rn(f);
#endif
}
__XTDK_HOSTDEVICE_BF16_DECL__ long long int __bfloat162ll_rz(const __xpu_bfloat16 h)
{
    long long int i;
#if defined(__xpu_on_device__)
    return (long long int)__builtin_xpu_bf162fix_rz(h.__x);
#else
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
#endif
    return i;
}
__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __ll2bfloat16_rn(const long long int i)
{
#if defined(__xpu_on_device__)
    __xpu_bfloat16 h;
    const float f = static_cast<float>(i);
    h.__x = __builtin_xpu_float2bf16_rn(f);
    return h;
#else
    float f = static_cast<float>(i);
    const long long int lf = static_cast<long long int>(f);
    unsigned int u;

    (void)std::memcpy(&u, &f, sizeof(f));

    if ((f > 0.0f) && (lf > i)) {
        u--;
    }
    if ((f < 0.0f) && (lf < i)) {
        u--;
    }
    if (lf != i) {
        u |= 1U;
    }

    (void)std::memcpy(&f, &u, sizeof(f));

    return __float2bfloat16_rn(f);
#endif
}

/******************************************************************************
*                             __xpu_bfloat16 comparison                              *
******************************************************************************/
__XTDK_BF16_DECL__ bool __heq(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    const float fa = __builtin_xpu_bf162float_rn(a.__x);
    const float fb = __builtin_xpu_bf162float_rn(b.__x);
    return fa == fb;
}
__XTDK_BF16_DECL__ bool __hle(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __builtin_xpu_bfloat16le(a.__x, b.__x);
}
__XTDK_BF16_DECL__ bool __hge(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __builtin_xpu_bfloat16le(b.__x, a.__x);
}
__XTDK_BF16_DECL__ bool __hlt(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __builtin_xpu_bfloat16lt(a.__x, b.__x);
}
__XTDK_BF16_DECL__ bool __hgt(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __builtin_xpu_bfloat16lt(b.__x, a.__x);
}


__XTDK_BF16_DECL__ bool __hne(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    const float fa = __builtin_xpu_bf162float_rn(a.__x);
    const float fb = __builtin_xpu_bf162float_rn(b.__x);
    return fa != fb;
}
__XTDK_BF16_DECL__ bool __hequ(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __heq(a, b);
}
__XTDK_BF16_DECL__ bool __hneu(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __hne(a, b);
}
__XTDK_BF16_DECL__ bool __hleu(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __hle(a, b);
}
__XTDK_BF16_DECL__ bool __hgeu(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __hge(a, b);
}
__XTDK_BF16_DECL__ bool __hltu(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __hlt(a, b);
}
__XTDK_BF16_DECL__ bool __hgtu(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __hgt(a, b);
}

/******************************************************************************
*                             __xpu_bfloat16 arithmetic                             *
******************************************************************************/
__XTDK_BF16_DECL__ __xpu_bfloat16 __hadd(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
   __xpu_bfloat16 val;
    val.__x = __builtin_xpu_add_bf16_rn(a.__x, b.__x);
   return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __hsub(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
   __xpu_bfloat16 val;
   val.__x = __builtin_xpu_sub_bf16_rn(a.__x, b.__x);
   return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __hmul(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_mul_bf16_rn(a.__x, b.__x);
    return val;
}

__XTDK_BF16_DECL__ __xpu_bfloat16 __hadd_rn(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_add_bf16_rn(a.__x, b.__x);
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __hsub_rn(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_sub_bf16_rn(a.__x, b.__x);
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __hmul_rn(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_mul_bf16_rn(a.__x, b.__x);
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __hadd_sat(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __hadd(a, b);
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __hsub_sat(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __hsub(a, b);
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __hmul_sat(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    return __hmul(a, b);
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __hfma_sat(const __xpu_bfloat16 a, const __xpu_bfloat16 b, const __xpu_bfloat16 c)
{
    return __hfma(a, b, c);
}

__XTDK_BF16_DECL__ __xpu_bfloat16 __hfma(const __xpu_bfloat16 a, const __xpu_bfloat16 b, const __xpu_bfloat16 c)
{
#if defined (__xpu_on_device__)
    return __builtin_xpu_fmac_bf16_rn(a.__x, b.__x, c.__x);
#else
    return __hadd(__hmul(a, b), c);
#endif
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __hdiv(const __xpu_bfloat16 a, const __xpu_bfloat16 b) {
    __xpu_bfloat16 val;
    const float fa = __builtin_xpu_bf162float_rn(a.__x);
    const float fb = __builtin_xpu_bf162float_rn(b.__x);
    const float res = __builtin_xpu_fdiv_rn(fa,fb);
    val.__x = __builtin_xpu_float2bf16_rn(res);
    return val;
}

__XTDK_BF16_DECL__ __xpu_bfloat16 __hneg(const __xpu_bfloat16 a)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_neg_bf16(a.__x);
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __habs(const __xpu_bfloat16 a)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_abs_bf16(a.__x);
    return val;
}
/******************************************************************************
*                             __xpu_bfloat16 arithmetic                             *
******************************************************************************/
__XTDK_BF16_DECL__ __xpu_bfloat16 __hmax(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
   __xpu_bfloat16 val;
   val.__x = __builtin_xpu_max_bf16(a.__x, b.__x);
   return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __hmin(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
   __xpu_bfloat16 val;
    val.__x = __builtin_xpu_min_bf16(a.__x, b.__x);
   return val;
}

#endif /* defined(__cplusplus) */

#undef __XTDK_BF16_DECL__
#undef __XTDK_HOSTDEVICE_BF16_DECL__

/* Define first-class types "xpu_bfloat16", unless user specifies otherwise via "#define XTDK_NO_BFLOAT16" */
/* C cannot ever have these types defined here, because __xpu_bfloat16 are C++ classes */
#if defined(__cplusplus) && !defined(XTDK_NO_BFLOAT16)
typedef __xpu_bfloat16  xpu_bfloat16;
typedef __xpu_bfloat16 bfloat16_t;
#endif /* defined(__cplusplus) && !defined(XTDK_NO_BFLOAT16) */
 
#if defined(__CPP_VERSION_AT_LEAST_11_BF16)
#undef __CPP_VERSION_AT_LEAST_11_BF16
#endif /* defined(__CPP_VERSION_AT_LEAST_11_BF16) */

#endif /* if defined(__xpu_on_host__) || __xpu_subarch__ >= 2) */


#endif /* end of include guard: __XTDK_BF16_HPP__ */
