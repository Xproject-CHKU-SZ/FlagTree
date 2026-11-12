#if !defined(__XPU_KERNEL_XTDK_BF16_HPP__)
#define __XPU_KERNEL_XTDK_BF16_HPP__

#if !defined(__XPU_KERNEL_XTDK_BF16_H__)
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

/* utility header for make_float2 */
#include "xtdk_vector_functions.h"

/* used for subarch2-4 */
#if defined (__XPU_ARCH__) && (__XPU_ARCH__ >= 2)
#define __xpu_on_device__
#endif

#undef __forceinline__
#define __forceinline__ __inline__ __attribute__((always_inline))

/* Set up function decorations */
#define __XTDK_BF16_DECL__ static __device__ __inline__
#define __XTDK_HOSTDEVICE_BF16_DECL__ static __host__ __device__ __inline__
#define __VECTOR_FUNCTIONS_DECL__ static __inline__ __host__ __device__
#define __XTDK_HOSTDEVICE__ __host__ __device__
/* Set up structure-alignment attribute */
#define __XTDK_ALIGN__(align) __align__(align)

/* Macros to allow xpu_bfloat16 & xpu_bfloat162 to be used by inline assembly */
#define __BFLOAT16_TO_US(var) *(reinterpret_cast<unsigned short *>(&(var)))
#define __BFLOAT16_TO_CUS(var) *(reinterpret_cast<const unsigned short *>(&(var)))
#define __BFLOAT162_TO_UI(var) *(reinterpret_cast<unsigned int *>(&(var)))
#define __BFLOAT162_TO_CUI(var) *(reinterpret_cast<const unsigned int *>(&(var)))
#define __UI_TO_BFLOAT162(var) *(reinterpret_cast<__xpu_bfloat162 *>(&(var)))

/**
* Types which allow static initialization of "xpu_bfloat16" and "xpu_bfloat162" until
* these become an actual builtin. Note this initialization is as a
* bitfield representation of "xpu_bfloat16", and not a conversion from short->xpu_bfloat16.
* Such a representation will be deprecated in a future version of XTDK. 
* (Note these are visible to non-nvcc compilers, including C-only compilation)
*/
typedef struct __XTDK_ALIGN__(2) {
    unsigned short x;
} __xpu_bfloat16_raw;

typedef struct __XTDK_ALIGN__(4) {
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

/* __xpu_bfloat162 is visible to non-nvcc host compilers */
struct __XTDK_ALIGN__(4) __xpu_bfloat162 {
    __xpu_bfloat16 x;
    __xpu_bfloat16 y;

    // All construct/copy/assign/move
public:
#if defined(__CPP_VERSION_AT_LEAST_11_BF16)
    __xpu_bfloat162() = default;
    __XTDK_HOSTDEVICE__ __xpu_bfloat162(__xpu_bfloat162 &&src) { __BFLOAT162_TO_UI(*this) = std::move(__BFLOAT162_TO_CUI(src)); }
    __XTDK_HOSTDEVICE__ __xpu_bfloat162 &operator=(__xpu_bfloat162 &&src) { __BFLOAT162_TO_UI(*this) = std::move(__BFLOAT162_TO_CUI(src)); return *this; }
#else
    __XTDK_HOSTDEVICE__ __xpu_bfloat162() { }
#endif /* defined(__CPP_VERSION_AT_LEAST_11_BF16) */
    __XTDK_HOSTDEVICE__ __xpu_bfloat162(const __xpu_bfloat16 &a, const __xpu_bfloat16 &b) : x(a), y(b) { }
    __XTDK_HOSTDEVICE__ __xpu_bfloat162(const __xpu_bfloat162 &src) { __BFLOAT162_TO_UI(*this) = __BFLOAT162_TO_CUI(src); }
    __XTDK_HOSTDEVICE__ __xpu_bfloat162 &operator=(const __xpu_bfloat162 &src) { __BFLOAT162_TO_UI(*this) = __BFLOAT162_TO_CUI(src); return *this; }

    /* Convert to/from __xpu_bfloat162_raw */
    __XTDK_HOSTDEVICE__ __xpu_bfloat162(const __xpu_bfloat162_raw &h2r ) { __BFLOAT162_TO_UI(*this) = __BFLOAT162_TO_CUI(h2r); }
    __XTDK_HOSTDEVICE__ __xpu_bfloat162 &operator=(const __xpu_bfloat162_raw &h2r) { __BFLOAT162_TO_UI(*this) = __BFLOAT162_TO_CUI(h2r); return *this; }
    __XTDK_HOSTDEVICE__ operator __xpu_bfloat162_raw() const { __xpu_bfloat162_raw ret; ret.x = 0U; ret.y = 0U; __BFLOAT162_TO_UI(ret) = __BFLOAT162_TO_CUI(*this); return ret; }
};

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

#define LC_PI 3.14159265358979323846f
__XTDK_BF16_DECL__ void taylor_sin_fusion(float *C1, float *C3, float *C5, float *C7, float *C9) {
    *C1 = 1;
    *C3 = -0.16666666666666666;
    *C5 = 0.008333333333333333;
    *C7 = -0.0001984126984126984;
    *C9 = 2.7557319223985893e-06;
}

__XTDK_BF16_DECL__ void translation_sin_fusion(float *input) {
    float tmp;
    tmp = *input;
    int factor = int(*input / LC_PI);
    tmp = tmp - factor * LC_PI;
    if (factor % 2 != 0){
        tmp = -tmp;
    }
    *input = tmp;
}

__XTDK_BF16_DECL__ void translation_cos_fusion(float* input) {
    float tmp;
    tmp = *input + LC_PI / 2;
    int factor = int(tmp / LC_PI);
    tmp = tmp - factor * LC_PI;
    if (factor % 2 != 0){
        tmp = -tmp;
    }
    *input = tmp;
}

__XTDK_BF16_DECL__ float sin_fusion(float input) {
#if __xpu_subarch__ >= 3
    return __builtin_sinf(input);
#else
    float C1, C3, C5, C7, C9;
    taylor_sin_fusion(&C1, &C3, &C5, &C7, &C9);

    translation_sin_fusion(&input);

    // make the input exist in the [- LC_PI/2, LC_PI/2] interval,
    // taylor expansion is more effective for this part
    if (input > (LC_PI / 2)) {
        input = LC_PI - input;
    } else if (input < (-LC_PI / 2)) {
        input = -LC_PI - input;
    }

    // taylor expansion process
    float tmp0 = input * input;
    float tmp1 = tmp0 * input;
    float tmp2 = tmp1 * tmp0;
    float tmp3 = tmp2 * tmp0;
    float tmp4 = tmp3 * tmp0;
    float result = C1 * input + C3 * tmp1 + C5 * tmp2 + C7 * tmp3 + C9 * tmp4;

    return result;
#endif
}

__XTDK_BF16_DECL__ float cos_fusion(float input) {
#if __xpu_subarch__ >= 3
    return __builtin_cosf(input);
#else
    float C1, C3, C5, C7, C9;
    taylor_sin_fusion(&C1, &C3, &C5, &C7, &C9);

    translation_cos_fusion(&input);

    // make the input exist in the [-LC_PI/2, LC_PI/2]
    if (input > (LC_PI / 2)) {
        input = LC_PI - input;
    } else if (input < (-LC_PI / 2)) {
        input = -LC_PI - input;
    }

    // taylor expansion process
    float tmp0 = input * input;
    float tmp1 = tmp0 * input;
    float tmp2 = tmp1 * tmp0;
    float tmp3 = tmp2 * tmp0;
    float tmp4 = tmp3 * tmp0;
    float result = C1 * input + C3 * tmp1 + C5 * tmp2 + C7 * tmp3 + C9 * tmp4;

    return result;
#endif
}

__XTDK_BF16_DECL__ float pow_fusion(float input1, float input2) {
    float ret;
    float mul_res;
    float log_res;
    if (input1 > 0.0f) {
      log_res = __builtin_xpu_log2f(input1);
      mul_res = __builtin_xpu_mulf(log_res, input2);
      ret = __builtin_xpu_exp2f(mul_res);
    } else if ((input1 < 0.0f) && (__builtin_rintf(input2) != input2)) { // intput1 is negative and input2 is not integer
      ret = __builtin_nanf ("");
    } else if (input2 == 0.0f) {
      ret = 1.0f;
    } else if (input1 == 0.0f && input2 > 0.0f) {
      ret = 0.0f;
    } else if (input1 == 0.0f && input2 < 0.0f) {
      ret = __builtin_inff();
    } else if (__builtin_rintf(0.5f * input2) == (0.5f * input2)) { // input2 is even
      log_res = __builtin_xpu_log2f(-input1);
      mul_res = __builtin_xpu_mulf(log_res, input2);
      ret = __builtin_xpu_exp2f(mul_res);
    } else {
      log_res = __builtin_xpu_log2f(-input1);
      mul_res = __builtin_xpu_mulf(log_res, input2);
      ret = -__builtin_xpu_exp2f(mul_res);
    }
    return ret;
}

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

#define __RD_SINGLE_OP_TO_BFLOAT16_MACRO(name) {\
    __xpu_bfloat16 val; \
    __asm__ __volatile__( \
        "s_or_b32 s107, s107, 0x2 \n" \
        "\t" __XTDK_BF16_STRINGIFY(name) " %0, %1 \n" \
        "\ts_and_b32 s107, s107, 0xfffffff0" \
        :"=v"(__BFLOAT16_TO_US(val)) : "v"(__BFLOAT16_TO_CUS(a))); \
    return val; \
}

#define __RD_DOUBLE_HALF_OP_TO_BFLOAT16_MACRO(name) {\
    __xpu_bfloat16 val; \
    __asm__ __volatile__( \
        "s_or_b32 s107, s107, 0x8 \n" \
        "\t" __XTDK_BF16_STRINGIFY(name) " %0, %1 \n" \
        "\ts_and_b32 s107, s107, 0xfffffff0" \
        :"=v"(__BFLOAT16_TO_US(val)) : "v"(__BFLOAT16_TO_CUS(a))); \
    return val; \
}

#define __RU_SINGLE_OP_TO_BFLOAT16_MACRO(name) {\
    __xpu_bfloat16 val; \
    __asm__ __volatile__( \
        "s_or_b32 s107, s107, 0x1 \n" \
        "\t" __XTDK_BF16_STRINGIFY(name) " %0, %1 \n" \
        "\ts_and_b32 s107, s107, 0xfffffff0" \
        :"=v"(__BFLOAT16_TO_US(val)) : "v"(__BFLOAT16_TO_CUS(a))); \
    return val; \
}

#define __RU_DOUBLE_HALF_OP_TO_BFLOAT16_MACRO(name) {\
    __xpu_bfloat16 val; \
    __asm__ __volatile__( \
        "s_or_b32 s107, s107, 0x4 \n" \
        "\t" __XTDK_BF16_STRINGIFY(name) " %0, %1 \n" \
        "\ts_and_b32 s107, s107, 0xfffffff0" \
        :"=v"(__BFLOAT16_TO_US(val)) : "v"(__BFLOAT16_TO_CUS(a))); \
    return val; \
}

#define __RZ_SINGLE_OP_TO_BFLOAT16_MACRO(name) {\
    __xpu_bfloat16 val; \
    __asm__ __volatile__( \
        "s_or_b32 s107, s107, 0x3 \n" \
        "\t" __XTDK_BF16_STRINGIFY(name) " %0, %1 \n" \
        "\ts_and_b32 s107, s107, 0xfffffff0" \
        :"=v"(__BFLOAT16_TO_US(val)) : "v"(__BFLOAT16_TO_CUS(a))); \
    return val; \
}

#define __RZ_DOUBLE_HALF_OP_TO_BFLOAT16_MACRO(name) {\
    __xpu_bfloat16 val; \
    __asm__ __volatile__( \
        "s_or_b32 s107, s107, 0xc \n" \
        "\t" __XTDK_BF16_STRINGIFY(name) " %0, %1 \n" \
        "\ts_and_b32 s107, s107, 0xfffffff0" \
        :"=v"(__BFLOAT16_TO_US(val)) : "v"(a)); \
    return val; \
}

#define __RD_DOUBLE_HALF_OP_TO_BFLOAT16_MACRO(name) {\
    __xpu_bfloat16 val; \
    __asm__ __volatile__( \
        "s_or_b32 s107, s107, 0x8 \n" \
        "\t" __XTDK_BF16_STRINGIFY(name) " %0, %1 \n" \
        "\ts_and_b32 s107, s107, 0xfffffff0" \
        :"=v"(__BFLOAT16_TO_US(val)) : "v"(__BFLOAT16_TO_CUS(a))); \
    return val; \
}

#define __RU_SINGLE_OP_TO_BFLOAT16_MACRO(name) {\
    __xpu_bfloat16 val; \
    __asm__ __volatile__( \
        "s_or_b32 s107, s107, 0x1 \n" \
        "\t" __XTDK_BF16_STRINGIFY(name) " %0, %1 \n" \
        "\ts_and_b32 s107, s107, 0xfffffff0" \
        :"=v"(__BFLOAT16_TO_US(val)) : "v"(__BFLOAT16_TO_CUS(a))); \
    return val; \
}

#define __RU_DOUBLE_HALF_OP_TO_BFLOAT16_MACRO(name) {\
    __xpu_bfloat16 val; \
    __asm__ __volatile__( \
        "s_or_b32 s107, s107, 0x4 \n" \
        "\t" __XTDK_BF16_STRINGIFY(name) " %0, %1 \n" \
        "\ts_and_b32 s107, s107, 0xfffffff0" \
        :"=v"(__BFLOAT16_TO_US(val)) : "v"(__BFLOAT16_TO_CUS(a))); \
    return val; \
}

#define __RZ_SINGLE_OP_TO_BFLOAT16_MACRO(name) {\
    __xpu_bfloat16 val; \
    __asm__ __volatile__( \
        "s_or_b32 s107, s107, 0x3 \n" \
        "\t" __XTDK_BF16_STRINGIFY(name) " %0, %1\n" \
        "\ts_and_b32 s107, s107, 0xfffffff0" \
        :"=v"(__BFLOAT16_TO_US(val)) : "v"(__BFLOAT16_TO_CUS(a))); \
    return val; \
}

#define __RZ_DOUBLE_HALF_OP_TO_BFLOAT16_MACRO(name) {\
    __xpu_bfloat16 val; \
    __asm__ __volatile__( \
        "s_or_b32 s107, s107, 0xc \n" \
        "\t" __XTDK_BF16_STRINGIFY(name) " %0, %1 \n" \
        "\ts_and_b32 s107, s107, 0xfffffff0" \
        :"=v"(__BFLOAT16_TO_US(val)) : "v"(a)); \
    return val; \
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

__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat162 __float2bfloat162_rn(const float a)
{
    __xpu_bfloat162 val;
    val = __xpu_bfloat162(__float2bfloat16_rn(a), __float2bfloat16_rn(a));
    return val;
}
__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat162 __floats2bfloat162_rn(const float a, const float b)
{
    __xpu_bfloat162 val;
    val = __xpu_bfloat162(__float2bfloat16_rn(a), __float2bfloat16_rn(b));
    return val;
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

__XTDK_BF16_DECL__ float __bfloat162float_rz(const __xpu_bfloat16 a) {
    return __builtin_xpu_bf162float_rz(static_cast<__xpu_bfloat16_raw>(a).x);
}

__XTDK_BF16_DECL__ float __bfloat162float_ru(const __xpu_bfloat16 a) {
    return __builtin_xpu_bf162float_ru(static_cast<__xpu_bfloat16_raw>(a).x);
}

__XTDK_BF16_DECL__ float __bfloat162float_rd(const __xpu_bfloat16 a) {
    return __builtin_xpu_bf162float_rd(static_cast<__xpu_bfloat16_raw>(a).x);
}

__XTDK_HOSTDEVICE_BF16_DECL__ float __low2float(const __xpu_bfloat162 a)
{
    return __internal_bfloat162float(static_cast<__xpu_bfloat162_raw>(a).x);
}

__XTDK_HOSTDEVICE_BF16_DECL__ float __high2float(const __xpu_bfloat162 a)
{
    return __internal_bfloat162float(static_cast<__xpu_bfloat162_raw>(a).y);
}

/* XTDK vector-types compatible vector creation function (note returns __xpu_bfloat162, not xpu_bfloat162) */
__VECTOR_FUNCTIONS_DECL__ __xpu_bfloat162 make_bfloat162(const __xpu_bfloat16 x, const __xpu_bfloat16 y)
{
    __xpu_bfloat162 t; t.x = x; t.y = y; return t;
}
#undef __VECTOR_FUNCTIONS_DECL__


/* Definitions of intrinsics */
__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat162 __float22bfloat162_rn(const float2 a)
{
    __xpu_bfloat162 val = __floats2bfloat162_rn(a.x, a.y);
    return val;
}
__XTDK_HOSTDEVICE_BF16_DECL__ float2 __bfloat1622float2(const __xpu_bfloat162 a)
{
    float hi_float;
    float lo_float;
    lo_float = __internal_bfloat162float(((__xpu_bfloat162_raw)a).x);
    hi_float = __internal_bfloat162float(((__xpu_bfloat162_raw)a).y);
    return make_float2(lo_float, hi_float);
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

__XTDK_BF16_DECL__ int __bfloat162int_rn(const __xpu_bfloat16 h)
{
    return __builtin_xpu_bf162fix_rn(h.__x);
}
__XTDK_BF16_DECL__ int __bfloat162int_rd(const __xpu_bfloat16 h)
{
    return __builtin_xpu_bf162fix_rd(h.__x);
}
__XTDK_BF16_DECL__ int __bfloat162int_ru(const __xpu_bfloat16 h)
{
    return __builtin_xpu_bf162fix_ru(h.__x);
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

__XTDK_BF16_DECL__ __xpu_bfloat16 __int2bfloat16_rz(const int i)
{
    __xpu_bfloat16 val;
    val.__x =  __builtin_xpu_fix2bf16_rz(i);
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __int2bfloat16_rd(const int i)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_fix2bf16_rd(i);
    return val;
}

__XTDK_BF16_DECL__ __xpu_bfloat16 __int2bfloat16_ru(const int i)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_fix2bf16_ru(i);
    return val;
}

__XTDK_BF16_DECL__ short int __bfloat162short_rn(const __xpu_bfloat16 h)
{
    return (short int)__builtin_xpu_bf162fix_rz(h.__x);
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

__XTDK_BF16_DECL__ short int __bfloat162short_rd(const __xpu_bfloat16 h)
{
    return (short int)__builtin_xpu_bf162fix_rd(h.__x);
}
__XTDK_BF16_DECL__ short int __bfloat162short_ru(const __xpu_bfloat16 h)
{
    return (short int)__builtin_xpu_bf162fix_ru(h.__x);
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

__XTDK_BF16_DECL__ __xpu_bfloat16 __short2bfloat16_rz(const short int a)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_fix2bf16_rz((int)a);
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __short2bfloat16_rd(const short int a)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_fix2bf16_rd((int)a);
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __short2bfloat16_ru(const short int a)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_fix2bf16_ru((int)a);
    return val;
}

__XTDK_BF16_DECL__ unsigned int __bfloat162uint_rn(const __xpu_bfloat16 h)
{
    return (unsigned int)__builtin_xpu_bf162fix_rn(h.__x);
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

__XTDK_BF16_DECL__ unsigned int __bfloat162uint_rd(const __xpu_bfloat16 h)
{
    return (unsigned int)__builtin_xpu_bf162fix_rd(h.__x);
}
__XTDK_BF16_DECL__ unsigned int __bfloat162uint_ru(const __xpu_bfloat16 h)
{
    return (unsigned int)__builtin_xpu_bf162fix_ru(h.__x);
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

#define __RZ_SINGLE_OP_TO_BFLOAT16_MACRO(name) {\
    __xpu_bfloat16 val; \
    __asm__ __volatile__( \
        "s_or_b32 s107, s107, 0x3 \n" \
        "\t" __XTDK_BF16_STRINGIFY(name) " %0, %1\n" \
        "\ts_and_b32 s107, s107, 0xfffffff0" \
        :"=v"(__BFLOAT16_TO_US(val)) : "v"(__BFLOAT16_TO_CUS(a))); \
    return val; \
}

#define __RZ_DOUBLE_HALF_OP_TO_BFLOAT16_MACRO(name) {\
    __xpu_bfloat16 val; \
    __asm__ __volatile__( \
        "s_or_b32 s107, s107, 0xc \n" \
        "\t" __XTDK_BF16_STRINGIFY(name) " %0, %1 \n" \
        "\ts_and_b32 s107, s107, 0xfffffff0" \
        :"=v"(__BFLOAT16_TO_US(val)) : "v"(a)); \
    return val; \
}

__XTDK_BF16_DECL__ __xpu_bfloat16 __uint2bfloat16_rz(const unsigned int i)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_fix2bf16_u_rz(i);
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __uint2bfloat16_rd(const unsigned int i)
{
    __xpu_bfloat16 val;
    val.__x =  __builtin_xpu_fix2bf16_u_rd(i);
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __uint2bfloat16_ru(const unsigned int i)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_fix2bf16_u_ru(i);
    return val;
}

__XTDK_BF16_DECL__ unsigned short int __bfloat162ushort_rn(const __xpu_bfloat16 h)
{
    return (unsigned short int)__builtin_xpu_bf162fix_rz(h.__x);
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

__XTDK_BF16_DECL__ unsigned short int __bfloat162ushort_rd(const __xpu_bfloat16 h)
{
   return (short int)__builtin_xpu_bf162fix_rd(h.__x);
}
__XTDK_BF16_DECL__ unsigned short int __bfloat162ushort_ru(const __xpu_bfloat16 h)
{
   return (short int)__builtin_xpu_bf162fix_ru(h.__x);
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __ushort2bfloat16_rz(const unsigned short int i)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_fix2bf16_u_rz((unsigned int)i);
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __ushort2bfloat16_rd(const unsigned short int i)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_fix2bf16_u_rd((unsigned int)i);
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __ushort2bfloat16_ru(const unsigned short int i)
{
    __xpu_bfloat16 val;
    val.__x = __builtin_xpu_fix2bf16_u_ru((unsigned int)i);
    return val;
}
__XTDK_BF16_DECL__ unsigned long long int __bfloat162ull_rn(const __xpu_bfloat16 h)
{
    return (unsigned long long int)__builtin_xpu_bf162fix_rn(h.__x);
}
__XTDK_BF16_DECL__ unsigned long long int __bfloat162ull_rd(const __xpu_bfloat16 h)
{
    return (unsigned long long int)__builtin_xpu_bf162fix_rd(h.__x);
}
__XTDK_BF16_DECL__ unsigned long long int __bfloat162ull_ru(const __xpu_bfloat16 h)
{
    return (unsigned long long int)__builtin_xpu_bf162fix_ru(h.__x);
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __ull2bfloat16_rz(const unsigned long long int i)
{
    __xpu_bfloat16 h;
    h.__x = __builtin_xpu_fix2bf16_u_rz((unsigned int)i);
    return h;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __ull2bfloat16_rd(const unsigned long long int i)
{
    __xpu_bfloat16 h;
    h.__x = __builtin_xpu_fix2bf16_u_rd((unsigned int)i);
    return h;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __ull2bfloat16_ru(const unsigned long long int i)
{
    __xpu_bfloat16 h;
    h.__x = __builtin_xpu_fix2bf16_u_ru((unsigned int)i);
    return h;
}
__XTDK_BF16_DECL__ long long int __bfloat162ll_rn(const __xpu_bfloat16 h)
{
    return (long long int)__builtin_xpu_bf162fix_rn(h.__x);
}
__XTDK_BF16_DECL__ long long int __bfloat162ll_rd(const __xpu_bfloat16 h)
{
    return (long long int)__builtin_xpu_bf162fix_rd(h.__x);
}
__XTDK_BF16_DECL__ long long int __bfloat162ll_ru(const __xpu_bfloat16 h)
{
    return (long long int)__builtin_xpu_bf162fix_ru(h.__x);
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __ll2bfloat16_rz(const long long int i)
{
    __xpu_bfloat16 h;
    h.__x = __builtin_xpu_fix2bf16_u_rz((unsigned int)i);
    return h;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __ll2bfloat16_rd(const long long int i)
{
    __xpu_bfloat16 h;
    h.__x = __builtin_xpu_fix2bf16_u_rd((unsigned int)i);
    return h;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __ll2bfloat16_ru(const long long int i)
{
    __xpu_bfloat16 h;
    h.__x = __builtin_xpu_fix2bf16_u_ru((unsigned int)i);
    return h;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 htrunc(const __xpu_bfloat16 h)
{
    __xpu_bfloat16 val;
   float temp = __builtin_truncf(__bfloat162float(h));
   val = __float2bfloat16_rn(temp);
   return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 hceil(const __xpu_bfloat16 h)
{
    __xpu_bfloat16 val;
   float temp = __builtin_ceilf(__bfloat162float(h));
   val = __float2bfloat16_rn(temp);
   return  val;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 hfloor(const __xpu_bfloat16 h)
{
    __xpu_bfloat16 val;
   float temp = __builtin_floorf(__bfloat162float(h));
   val = __float2bfloat16_rn(temp);
   return  val;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 hrint(const __xpu_bfloat16 h)
{
    __xpu_bfloat16 val;
   float temp = __builtin_rintf(__bfloat162float(h));
   val = __float2bfloat16_rn(temp);
   return  val;
}

__XTDK_BF16_DECL__ __xpu_bfloat162 h2trunc(const __xpu_bfloat162 h)
{
    const __xpu_bfloat16 low = __float2bfloat16_rz(__builtin_truncf(__low2float(h)));
    const __xpu_bfloat16 high = __float2bfloat16_rz(__builtin_truncf(__high2float(h)));
    return __xpu_bfloat162(low, high);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 h2ceil(const __xpu_bfloat162 h)
{
    const __xpu_bfloat16 low = __float2bfloat16_rz(__builtin_ceilf(__low2float(h)));
    const __xpu_bfloat16 high = __float2bfloat16_rz(__builtin_ceilf(__high2float(h)));
    return __xpu_bfloat162(low, high);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 h2floor(const __xpu_bfloat162 h)
{
    const __xpu_bfloat16 low = __float2bfloat16_rd(__builtin_floorf(__low2float(h)));
    const __xpu_bfloat16 high = __float2bfloat16_rd(__builtin_floorf(__high2float(h)));
    return __xpu_bfloat162(low, high);
}

__XTDK_BF16_DECL__ __xpu_bfloat162 h2rint(const __xpu_bfloat162 h)
{
    return __halves2bfloat162(__builtin_rintf(__low2bfloat16(h)), __builtin_rintf(__high2bfloat16(h)));
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __lows2bfloat162(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat162 val;
    val.x = a.x;
    val.y = b.x;
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __highs2bfloat162(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat162 val;
    val.x = a.y;
    val.y = b.y;
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __low2bfloat16(const __xpu_bfloat162 a)
{
    __xpu_bfloat16 ret;
    ret.__x = static_cast<__xpu_bfloat162_raw>(a).x;
    return ret;
}
__XTDK_BF16_DECL__ int __hisinf(const __xpu_bfloat16 a)
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
__XTDK_BF16_DECL__ __xpu_bfloat162 __low2bfloat162(const __xpu_bfloat162 a)
{
    __xpu_bfloat162 val;
    val.x = a.x;
    val.y = a.x;
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __high2bfloat162(const __xpu_bfloat162 a)
{
    __xpu_bfloat162 val;
    val.x = a.y;
    val.y = a.y;
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __high2bfloat16(const __xpu_bfloat162 a)
{
    __xpu_bfloat16 ret;
    ret.__x= static_cast<__xpu_bfloat162_raw>(a).y;
    return ret;
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __halves2bfloat162(const __xpu_bfloat16 a, const __xpu_bfloat16 b)
{
    __xpu_bfloat162 val;
    val.x = a;
    val.y = b;
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __bfloat162bfloat162(const __xpu_bfloat16 a)
{
    __xpu_bfloat162 val;
    val.x = a;
    val.y = a;
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __lowhigh2highlow(const __xpu_bfloat162 a)
{
    __xpu_bfloat162 val;
    val.x = a.y;
    val.y = a.x;
    return val;
}
__XTDK_BF16_DECL__ short int __bfloat16_as_short(const __xpu_bfloat16 h)
{
    return static_cast<short int>(__BFLOAT16_TO_CUS(h));
}
__XTDK_BF16_DECL__ unsigned short int __bfloat16_as_ushort(const __xpu_bfloat16 h)
{
    return __BFLOAT16_TO_CUS(h);
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __short_as_bfloat16(const short int i)
{
    __xpu_bfloat16 h;
    __BFLOAT16_TO_US(h) = static_cast<unsigned short int>(i);
    return h;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __ushort_as_bfloat16(const unsigned short int i)
{
    __xpu_bfloat16 h;
    __BFLOAT16_TO_US(h) = i;
    return h;
}

/******************************************************************************
*                           __xpu_bfloat16, __xpu_bfloat162 warp shuffle                     *
******************************************************************************/
// #define __SHUFFLE_SYNC_BFLOAT162_MACRO(name) /* do */ {\
//    __xpu_bfloat162 r; \
//    asm volatile ("{" __XTDK_BF16_STRINGIFY(name) " %0,%1,%2,%3,%4;\n}" \
//        :"=r"(__BFLOAT162_TO_UI(r)): "r"(__BFLOAT162_TO_CUI(var)), "r"(delta), "r"(c), "r"(mask)); \
//    return r; \
// } /* while(0) */

// __XTDK_BF16_DECL__ __xpu_bfloat162 __shfl_sync(const unsigned mask, const __xpu_bfloat162 var, const int delta, const int width)
// {
//     unsigned int warp_size;
//     asm("{mov.u32 %0, WARP_SZ;\n}" : "=r"(warp_size));
//     const unsigned int c = ((warp_size - static_cast<unsigned>(width)) << 8U) | 0x1fU;
//     __SHUFFLE_SYNC_BFLOAT162_MACRO(shfl.sync.idx.b32)
// }
// __XTDK_BF16_DECL__ __xpu_bfloat162 __shfl_up_sync(const unsigned mask, const __xpu_bfloat162 var, const unsigned int delta, const int width)
// {
//     unsigned int warp_size;
//     asm("{mov.u32 %0, WARP_SZ;\n}" : "=r"(warp_size));
//     const unsigned int c = (warp_size - static_cast<unsigned>(width)) << 8U;
//     __SHUFFLE_SYNC_BFLOAT162_MACRO(shfl.sync.up.b32)
// }
// __XTDK_BF16_DECL__ __xpu_bfloat162 __shfl_down_sync(const unsigned mask, const __xpu_bfloat162 var, const unsigned int delta, const int width)
// {
//     unsigned int warp_size;
//     asm("{mov.u32 %0, WARP_SZ;\n}" : "=r"(warp_size));
//     const unsigned int c = ((warp_size - static_cast<unsigned>(width)) << 8U) | 0x1fU;
//     __SHUFFLE_SYNC_BFLOAT162_MACRO(shfl.sync.down.b32)
// }
// __XTDK_BF16_DECL__ __xpu_bfloat162 __shfl_xor_sync(const unsigned mask, const __xpu_bfloat162 var, const int delta, const int width)
// {
//     unsigned int warp_size;
//     asm("{mov.u32 %0, WARP_SZ;\n}" : "=r"(warp_size));
//     const unsigned int c = ((warp_size - static_cast<unsigned>(width)) << 8U) | 0x1fU;
//     __SHUFFLE_SYNC_BFLOAT162_MACRO(shfl.sync.bfly.b32)
// }

// #undef __SHUFFLE_SYNC_BFLOAT162_MACRO

// __XTDK_BF16_DECL__ __xpu_bfloat16 __shfl_sync(const unsigned mask, const __xpu_bfloat16 var, const int delta, const int width)
// {
//     const __xpu_bfloat162 temp1 = __halves2bfloat162(var, var);
//     const __xpu_bfloat162 temp2 = __shfl_sync(mask, temp1, delta, width);
//     return __low2bfloat16(temp2);
// }
// __XTDK_BF16_DECL__ __xpu_bfloat16 __shfl_up_sync(const unsigned mask, const __xpu_bfloat16 var, const unsigned int delta, const int width)
// {
//     const __xpu_bfloat162 temp1 = __halves2bfloat162(var, var);
//     const __xpu_bfloat162 temp2 = __shfl_up_sync(mask, temp1, delta, width);
//     return __low2bfloat16(temp2);
// }
// __XTDK_BF16_DECL__ __xpu_bfloat16 __shfl_down_sync(const unsigned mask, const __xpu_bfloat16 var, const unsigned int delta, const int width)
// {
//     const __xpu_bfloat162 temp1 = __halves2bfloat162(var, var);
//     const __xpu_bfloat162 temp2 = __shfl_down_sync(mask, temp1, delta, width);
//     return __low2bfloat16(temp2);
// }
// __XTDK_BF16_DECL__ __xpu_bfloat16 __shfl_xor_sync(const unsigned mask, const __xpu_bfloat16 var, const int delta, const int width)
// {
//     const __xpu_bfloat162 temp1 = __halves2bfloat162(var, var);
//     const __xpu_bfloat162 temp2 = __shfl_xor_sync(mask, temp1, delta, width);
//     return __low2bfloat16(temp2);
// }

/******************************************************************************
*               __xpu_bfloat16 and __xpu_bfloat162 __ldg,__ldcg,__ldca,__ldcs                *
******************************************************************************/

#if defined(__cplusplus)
#if (defined(_MSC_VER) && defined(_WIN64)) || defined(__LP64__) || defined(__XTDKCC_RTC__)
#endif /*(defined(_MSC_VER) && defined(_WIN64)) || defined(__LP64__) || defined(__XTDKCC_RTC__)*/
__XTDK_BF16_DECL__ __xpu_bfloat162 __ldg(const  __xpu_bfloat162 *const ptr)
{
    return *ptr;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __ldg(const __xpu_bfloat16 *const ptr)
{
    return *ptr;
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __ldcg(const  __xpu_bfloat162 *const ptr)
{
    return *ptr;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __ldcg(const __xpu_bfloat16 *const ptr)
{
    return *ptr;
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __ldca(const  __xpu_bfloat162 *const ptr)
{
    return *ptr;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __ldca(const __xpu_bfloat16 *const ptr)
{
    return *ptr;
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __ldcs(const  __xpu_bfloat162 *const ptr)
{
    return *ptr;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __ldcs(const __xpu_bfloat16 *const ptr)
{
    return *ptr;
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __ldlu(const  __xpu_bfloat162 *const ptr)
{
    return *ptr;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __ldlu(const __xpu_bfloat16 *const ptr)
{
    return *ptr;
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __ldcv(const  __xpu_bfloat162 *const ptr)
{
    return *ptr;
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __ldcv(const __xpu_bfloat16 *const ptr)
{
    return *ptr;
}

__XTDK_BF16_DECL__ void __stwb(__xpu_bfloat162 *const ptr, const __xpu_bfloat162 value)
{
    *ptr = value;
}
__XTDK_BF16_DECL__ void __stwb(__xpu_bfloat16 *const ptr, const __xpu_bfloat16 value)
{
    *ptr = value;
}
__XTDK_BF16_DECL__ void __stcg(__xpu_bfloat162 *const ptr, const __xpu_bfloat162 value)
{
    *ptr = value;
}
__XTDK_BF16_DECL__ void __stcg(__xpu_bfloat16 *const ptr, const __xpu_bfloat16 value)
{
    *ptr = value;
}
__XTDK_BF16_DECL__ void __stcs(__xpu_bfloat162 *const ptr, const __xpu_bfloat162 value)
{
    *ptr = value;
}
__XTDK_BF16_DECL__ void __stcs(__xpu_bfloat16 *const ptr, const __xpu_bfloat16 value)
{
    *ptr = value;
}
__XTDK_BF16_DECL__ void __stwt(__xpu_bfloat162 *const ptr, const __xpu_bfloat162 value)
{
    *ptr = value;
}
__XTDK_BF16_DECL__ void __stwt(__xpu_bfloat16 *const ptr, const __xpu_bfloat16 value)
{
    *ptr = value;
}

#endif /*defined(__cplusplus) */
/******************************************************************************
*                             __xpu_bfloat162 comparison                             *
******************************************************************************/
__XTDK_BF16_DECL__ __xpu_bfloat162 __heq2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1.__x = __heq(a_low, b_low);
    v2.__x = __heq(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hne2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1.__x = __hne(a_low, b_low);
    v2.__x = __hne(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hle2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1.__x = __hle(a_low, b_low);
    v2.__x = __hle(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hge2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1.__x = __hge(a_low, b_low);
    v2.__x = __hge(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hlt2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1.__x = __hlt(a_low, b_low);
    v2.__x = __hlt(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hgt2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1.__x = __hgt(a_low, b_low);
    v2.__x = __hgt(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hequ2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1.__x = __hequ(a_low, b_low);
    v2.__x = __hequ(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hneu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1.__x = __hneu(a_low, b_low);
    v2.__x = __hneu(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hleu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1.__x = __hleu(a_low, b_low);
    v2.__x = __hleu(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hgeu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1.__x = __hgeu(a_low, b_low);
    v2.__x = __hgeu(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hltu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1.__x = __hltu(a_low, b_low);
    v2.__x = __hltu(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hgtu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 v1, v2;
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    v1.__x = __hgtu(a_low, b_low);
    v2.__x = __hgtu(a_high, b_high);
    return __halves2bfloat162(v1, v2);
}

__XTDK_BF16_DECL__ bool __hbeq2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __heq(a_low, b_low) & __heq(a_high, b_high);
}
__XTDK_BF16_DECL__ bool __hbne2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hneu(a_low, b_low) & __hneu(a_high, b_high);
}
__XTDK_BF16_DECL__ bool __hble2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hle(a_low, b_low) & __hle(a_high, b_high);
}
__XTDK_BF16_DECL__ bool __hbge2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hge(a_low, b_low) & __hge(a_high, b_high);
}
__XTDK_BF16_DECL__ bool __hblt2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hlt(a_low, b_low) & __hlt(a_high, b_high);
}
__XTDK_BF16_DECL__ bool __hbgt2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hgt(a_low, b_low) & __hgt(a_high, b_high);
}
__XTDK_BF16_DECL__ bool __hbequ2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hequ(a_low, b_low) & __hequ(a_high, b_high);
}
__XTDK_BF16_DECL__ bool __hbneu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hneu(a_low, b_low) & __hequ(a_high, b_high);
}
__XTDK_BF16_DECL__ bool __hbleu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hleu(a_low, b_low) & __hleu(a_high, b_high);
}
__XTDK_BF16_DECL__ bool __hbgeu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hgeu(a_low, b_low) & __hgeu(a_high, b_high);
}
__XTDK_BF16_DECL__ bool __hbltu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 a_low = a.x;
    __xpu_bfloat16 b_low = b.x;
    __xpu_bfloat16 a_high = a.y;
    __xpu_bfloat16 b_high = b.y;
    return __hltu(a_low, b_low) & __hltu(a_high, b_high);
}
__XTDK_BF16_DECL__ bool __hbgtu2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
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
*                            __xpu_bfloat162 arithmetic                             *
******************************************************************************/

__XTDK_BF16_DECL__ __xpu_bfloat162 __hadd2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 ha, hb;
    ha = __low2bfloat16(a);
    hb = __low2bfloat16(b);
    const __xpu_bfloat16 v1 = __hadd(ha, hb);
    ha = __high2bfloat16(a);
    hb = __high2bfloat16(b);
    const __xpu_bfloat16 v2 = __hadd(ha, hb);
    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hsub2(__xpu_bfloat162 a, __xpu_bfloat162 b)
{
    __xpu_bfloat16 ha, hb;
    ha = __low2bfloat16(a);
    hb = __low2bfloat16(b);
    const __xpu_bfloat16 v1 = __hsub(ha, hb);
    ha = __high2bfloat16(a);
    hb = __high2bfloat16(b);
    const __xpu_bfloat16 v2 = __hsub(ha, hb);
    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hmul2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 ha, hb;
    ha = __low2bfloat16(a);
    hb = __low2bfloat16(b);
    const __xpu_bfloat16 v1 = __hmul(ha, hb);
    ha = __high2bfloat16(a);
    hb = __high2bfloat16(b);
    const __xpu_bfloat16 v2 = __hmul(ha, hb);
    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hadd2_rn(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    return __hadd2(a, b);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hsub2_rn(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    return __hsub2(a, b);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hmul2_rn(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    return __hmul2(a, b);
}

__XTDK_BF16_DECL__ __xpu_bfloat162 __hadd2_sat(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    return __hadd2(a, b);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hmul2_sat(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    return __hmul2(a, b);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hfma2(const __xpu_bfloat162 a, const __xpu_bfloat162 b, const __xpu_bfloat162 c)
{
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
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __h2div(const __xpu_bfloat162 a, const __xpu_bfloat162 b) {
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

/******************************************************************************
*                             __xpu_bfloat162 functions                  *
******************************************************************************/

__XTDK_BF16_DECL__ __xpu_bfloat16 __hsin_internal(const __xpu_bfloat16 a) {
    float f = __bfloat162float(a);
    f = sin_fusion(f);
    return __float2bfloat16_rn(f);
}
__XTDK_BF16_DECL__ __xpu_bfloat16 hsin(const __xpu_bfloat16 a) {
    return __hsin_internal(a);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 h2sin(const __xpu_bfloat162 a) {
    const __xpu_bfloat16 l = __low2bfloat16(a);
    const __xpu_bfloat16 h = __high2bfloat16(a);
    return __halves2bfloat162(__hsin_internal(l), __hsin_internal(h));
}
__XTDK_BF16_DECL__ __xpu_bfloat16 __hcos_internal(const __xpu_bfloat16 a) {
    float f = __bfloat162float(a);
    f = cos_fusion(f);
    return __float2bfloat16_rn(f);
}
__XTDK_BF16_DECL__ __xpu_bfloat16 hcos(const __xpu_bfloat16 a) {
    return __hcos_internal(a);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 h2cos(const __xpu_bfloat162 a) {
    const __xpu_bfloat16 l = __low2bfloat16(a);
    const __xpu_bfloat16 h = __high2bfloat16(a);
    return __halves2bfloat162(__hcos_internal(l), __hcos_internal(h));
}
__XTDK_BF16_DECL__ __xpu_bfloat16 hexp2(const __xpu_bfloat16 a) {
    __xpu_bfloat16 val;
    float f = __bfloat162float(a);
    f = pow_fusion(2.0, f);
    val = __float2bfloat16_rn(f);
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat162 h2exp2(const __xpu_bfloat162 a) {
    __xpu_bfloat16 ha, hb;
    ha = __low2bfloat16(a);
    const __xpu_bfloat16 v1 = hexp2(ha);

    hb = __high2bfloat16(a);
    const __xpu_bfloat16 v2 = hexp2(hb);

    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat16 hlog2(const __xpu_bfloat16 a) {
    __xpu_bfloat16 val;
    const float LnTwo = 0.69314718055994530942f;
    float f = __bfloat162float(a);
    f = __builtin_xpu_logf_rn(f) / LnTwo;
    val = __float2bfloat16_rn(f);
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat162 h2log2(const __xpu_bfloat162 a) {
    __xpu_bfloat16 ha, hb;
    ha = __low2bfloat16(a);
    const __xpu_bfloat16 v1 = hlog2(ha);

    hb = __high2bfloat16(a);
    const __xpu_bfloat16 v2 = hlog2(hb);

    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 h2rcp(const __xpu_bfloat162 a) {
    __xpu_bfloat16 ha, hb;
    ha = __low2bfloat16(a);
    const __xpu_bfloat16 v1 = hrcp(ha);

    hb = __high2bfloat16(a);
    const __xpu_bfloat16 v2 = hrcp(hb);

    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat16 hrcp(const __xpu_bfloat16 a) {
    __xpu_bfloat16 val;
    float f = __bfloat162float(a);
    f = 1.0f / f;
    val = __float2bfloat16_rn(f);
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat162 h2sqrt(const __xpu_bfloat162 a) {
    __xpu_bfloat16 ha, hb;
    ha = __low2bfloat16(a);
    const __xpu_bfloat16 v1 = hsqrt(ha);

    hb = __high2bfloat16(a);
    const __xpu_bfloat16 v2 = hsqrt(hb);

    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat16 hsqrt(const __xpu_bfloat16 a) {
    __xpu_bfloat16 val;
    float f = __bfloat162float(a);
    f = __builtin_xpu_sqrtf(f);
    val = __float2bfloat16_rn(f);
    return val;
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hneg2(const __xpu_bfloat162 a)
{
    __xpu_bfloat16 ha, hb;
    ha = __low2bfloat16(a);
    const __xpu_bfloat16 v1 = __hneg(ha);

    hb = __high2bfloat16(a);
    const __xpu_bfloat16 v2 = __hneg(hb);

    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __habs2(const __xpu_bfloat162 a)
{
    __xpu_bfloat16 ha, hb;
    ha = __low2bfloat16(a);
    const __xpu_bfloat16 v1 = __habs(ha);

    hb = __high2bfloat16(a);
    const __xpu_bfloat16 v2 = __habs(hb);

    return __halves2bfloat162(v1, v2);
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
/******************************************************************************
*                            __xpu_bfloat162 arithmetic                             *
******************************************************************************/

__XTDK_BF16_DECL__ __xpu_bfloat162 __hmax2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 ha, hb;
    ha = __low2bfloat16(a);
    hb = __low2bfloat16(b);
    const __xpu_bfloat16 v1 = __hmax(ha, hb);
    ha = __high2bfloat16(a);
    hb = __high2bfloat16(b);
    const __xpu_bfloat16 v2 = __hmax(ha, hb);
    return __halves2bfloat162(v1, v2);
}
__XTDK_BF16_DECL__ __xpu_bfloat162 __hmin2(const __xpu_bfloat162 a, const __xpu_bfloat162 b)
{
    __xpu_bfloat16 ha, hb;
    ha = __low2bfloat16(a);
    hb = __low2bfloat16(b);
    const __xpu_bfloat16 v1 = __hmin(ha, hb);
    ha = __high2bfloat16(a);
    hb = __high2bfloat16(b);
    const __xpu_bfloat16 v2 = __hmin(ha, hb);
    return __halves2bfloat162(v1, v2);
}
#undef __XTDK_BF16_DECL__
#endif /* defined(__cplusplus) */

#undef __BINARY_OP_BFLOAT162_MACRO

#undef __XTDK_HOSTDEVICE_BF16_DECL__
#undef __XTDK_BF16_DECL__

/* Define first-class types "xpu_bfloat16" and "xpu_bfloat162", unless user specifies otherwise via "#define XTDK_NO_BFLOAT16" */
/* C cannot ever have these types defined here, because __xpu_bfloat16 and __xpu_bfloat162 are C++ classes */
#if defined(__cplusplus) && !defined(XTDK_NO_BFLOAT16)
typedef __xpu_bfloat16  xpu_bfloat16;
typedef __xpu_bfloat162 xpu_bfloat162;
typedef __xpu_bfloat16 bfloat16_t;
#endif /* defined(__cplusplus) && !defined(XTDK_NO_BFLOAT16) */
 
#if defined(__CPP_VERSION_AT_LEAST_11_BF16)
#undef __CPP_VERSION_AT_LEAST_11_BF16
#endif /* defined(__CPP_VERSION_AT_LEAST_11_BF16) */

#endif /* if defined(__xpu_on_host__) || __xpu_subarch__ >= 2) */


#endif /* end of include guard: __XPU_KERNEL_XTDK_BF16_HPP__ */
