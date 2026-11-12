#if !defined(__XTDK_FP4_HPP__)
#define __XTDK_FP4_HPP__

#if !defined(__XTDK_FP4_H__)
#error "Do not include this file directly. Instead, include xpu_fp4.h."
#endif

#if __xpu_subarch__ >= 4

/* used for subarch2-4 */
#if defined(__XPU_ARCH__) && (__XPU_ARCH__ >= 4)
#define __xpu_on_device__
#endif // defined(__XPU_ARCH__) && (__XPU_ARCH__ >= 4)

#include "xtdk_io.h"

#if defined(__cplusplus)
#include <cstring>
#elif !defined(__cplusplus)
#include <string.h>
#endif // defined(__cplusplus)

/* Set up structure-alignment attribute */
#if !(defined __XPU_ALIGN__)
#if defined(__xpu__)
#define __XPU_ALIGN__(align) __align__(align)
#else
/* Define alignment macro based on compiler type (cannot assume C11 "_Alignas"
 * is available) */
#if __cplusplus >= 201103L
#define __XPU_ALIGN__(n)                                                      \
    alignas(n) /* C++11 kindly gives us a keyword for this */
#else          /* !defined(__CPP_VERSION_AT_LEAST_11_FP4)*/
#if defined(__GNUC__)
#define __XPU_ALIGN__(n) __attribute__((aligned(n)))
#elif defined(_MSC_VER)
#define __XPU_ALIGN__(n) __declspec(align(n))
#else
#define __XPU_ALIGN__(n)
#endif /* defined(__GNUC__) */
#endif /* defined(__CPP_VERSION_AT_LEAST_11_FP4) */
#endif /* defined(__xpu__) */
#endif /* !(defined __XPU_ALIGN__) */

#if !(defined __CPP_VERSION_AT_LEAST_11_FP4)
/* need c++11 for explicit operators */
#define __XTDK_NO_FP4_CONVERSION_OPERATORS__
#endif

#if !(defined __DOXYGEN_ONLY__)

__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4_storage_t
__xpu_cvt_double_to_fp4(const double x,
                       const __xpu_fp4_interpretation_t fp4_interpretation,
                       const xpuRoundMode rounding) {
    unsigned char res;
    unsigned long long int xbits;

#if defined(__xpu_on_host__)
    (void)std::memcpy(&xbits, &x, sizeof(x));
#else
    (void)__builtin_memcpy(&xbits, &x, sizeof(x));

#endif
    unsigned char FP4_MAXNORM;
    unsigned char FP4_MANTISSA_MASK;
    unsigned short int FP4_EXP_BIAS;
    unsigned long long int FP4_SIGNIFICAND_BITS;
    unsigned long long int FP4_MINDENORM_O2;
    unsigned long long int FP4_OVERFLOW_THRESHOLD;
    unsigned long long int FP4_MINNORM;
    const unsigned long long int DP_INF_BITS = 0x7FF0000000000000ULL;

    // fp4_interpretation == __XPU_E2M1
    FP4_EXP_BIAS = 1U;
    FP4_SIGNIFICAND_BITS = 2ULL;
    FP4_MANTISSA_MASK = 0x1U;
    FP4_MINDENORM_O2 = 0x3FD0000000000000ULL; // mindenorm/2 = 2^-2
    FP4_OVERFLOW_THRESHOLD =
        0x4018000000000000ULL; // maxnorm = 6.0
    FP4_MAXNORM = 0x7U;
    FP4_MINNORM = 0x3FF0000000000000ULL; // minnorm = 2^0

    // 1/2 LSB of the target format, positioned in double precision mantissa
    // helpful in midpoints detection during round-to-nearest-even step
    const unsigned long long int FP4_DP_HALF_ULP =
        (unsigned long long int)1ULL << (53ULL - FP4_SIGNIFICAND_BITS - 1ULL);
    // prepare sign bit in target format
    unsigned char sign = (unsigned char)((xbits >> 63ULL) << 3U);
    // prepare exponent field in target format
    unsigned char exp =
        (unsigned char)((((unsigned short int)(xbits >> 52ULL)) & 0x7FFU) -
                        1023U + FP4_EXP_BIAS);
    // round mantissa to target format width, rounding towards zero
    unsigned char mantissa =
        (unsigned char)(xbits >> (53ULL - FP4_SIGNIFICAND_BITS)) &
        FP4_MANTISSA_MASK;
    unsigned long long int absx = xbits & 0x7FFFFFFFFFFFFFFFULL;

    if (absx <= FP4_MINDENORM_O2) {
        // zero or underflow
        res = 0U;
    } else if (absx > FP4_OVERFLOW_THRESHOLD) {
        // overflow or NaN
        if (absx > DP_INF_BITS)
        {
            // NaN converts to positive FP4_MAXNORM
            sign = 0U;
        }
        res = FP4_MAXNORM;
    } else if (absx >= FP4_MINNORM) {
        res = (unsigned char)((exp << (FP4_SIGNIFICAND_BITS - 1U)) | mantissa);
        // rounded-off bits
        unsigned long long int round =
            xbits & ((FP4_DP_HALF_ULP << 1ULL) - 1ULL);
        if (rounding == xpuRoundNearest)
        {
            // round-to-nearest-even adjustment
            if ((round > FP4_DP_HALF_ULP) ||
                ((round == FP4_DP_HALF_ULP) && (mantissa & 1U))) {
                res = (unsigned char)(res + 1U);
            }
        } else {
        #if defined(__xpu_on_host__)
            assert(rounding == xpuRoundZero);
        #else
            assert_device(rounding == xpuRoundZero);
        #endif
        }
    } else // Denormal range
    {
        unsigned char shift = (unsigned char)(1U - exp);
        // add implicit leading bit
        mantissa |= (unsigned char)(1U << (FP4_SIGNIFICAND_BITS - 1U));
        // additional round-off due to denormalization
        res = (unsigned char)(mantissa >> shift);

        if (rounding == xpuRoundNearest)
        {
            // rounded-off bits, including implicit leading bit
            unsigned long long int round =
                (xbits | ((unsigned long long int)1ULL << (53ULL - 1ULL))) &
                ((FP4_DP_HALF_ULP << (shift + 1ULL)) - 1ULL);
            // round-to-nearest-even adjustment
            if ((round > (FP4_DP_HALF_ULP << shift)) ||
                ((round == (FP4_DP_HALF_ULP << shift)) && (res & 1U))) {
                res = (unsigned char)(res + 1U);
            }
        } else {
        #if defined(__xpu_on_host__)
            assert(rounding == xpuRoundZero);
        #else
            assert_device(rounding == xpuRoundZero);
        #endif
        }
    }

    res |= sign;

    return (__xpu_fp4_storage_t)res;
}

__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4x2_storage_t
__xpu_cvt_double2_to_fp4x2(const double2 x,
                          const __xpu_fp4_interpretation_t fp4_interpretation,
                          const xpuRoundMode rounding) {
    __xpu_fp4x2_storage_t storage = (__xpu_fp4x2_storage_t)__xpu_cvt_double_to_fp4(
        x.y, fp4_interpretation, rounding);
    storage = (__xpu_fp4x2_storage_t)(storage << 4U);
    storage = (__xpu_fp4x2_storage_t)(storage |
                                     __xpu_cvt_double_to_fp4(
                                         x.x, fp4_interpretation, rounding));
    return storage;
}

__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4_storage_t
__xpu_cvt_float_to_fp4(const float x,
                      const __xpu_fp4_interpretation_t fp4_interpretation,
                      const xpuRoundMode rounding) {
#if defined(__xpu_on_host__)
    assert((rounding == xpuRoundNearest) || (rounding == xpuRoundZero));
#else
    assert_device((rounding == xpuRoundNearest) || (rounding == xpuRoundZero));
#endif
    __xpu_fp4_storage_t res = 0U;
    res = __xpu_cvt_double_to_fp4((double)x, fp4_interpretation, rounding);
    return res;
}

__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4x2_storage_t
__xpu_cvt_float2_to_fp4x2(const float2 x,
                         const __xpu_fp4_interpretation_t fp4_interpretation,
                         const xpuRoundMode rounding) {
#if defined(__xpu_on_host__)
    assert((rounding == xpuRoundNearest) || (rounding == xpuRoundZero));
#else
    assert_device((rounding == xpuRoundNearest) || (rounding == xpuRoundZero));
#endif
    unsigned short storage;
    storage = (__xpu_fp4x2_storage_t)__xpu_cvt_float_to_fp4(
        x.y, fp4_interpretation, rounding);
    storage = (__xpu_fp4x2_storage_t)(storage << 4U);
    storage = (__xpu_fp4x2_storage_t)(storage | __xpu_cvt_float_to_fp4(
                                                    x.x,
                                                    fp4_interpretation, rounding));
    return (__xpu_fp4x2_storage_t)storage;
}

__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4x2_storage_t
__xpu_cvt_relu_float2_to_fp4x2(const float2 x,
                         const __xpu_fp4_interpretation_t fp4_interpretation,
                         const xpuRoundMode rounding) {
#if defined(__xpu_on_host__)
    assert(false && "Not supported function");
#else
    assert_device(false && "Not supported function");
#endif
}

__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4_storage_t
__xpu_cvt_halfraw_to_fp4(const __half_raw x,
                        const __xpu_fp4_interpretation_t fp4_interpretation,
                        const xpuRoundMode rounding) {
#if defined(__xpu_on_host__)
    assert((rounding == xpuRoundNearest) || (rounding == xpuRoundZero));
#else
    assert_device((rounding == xpuRoundNearest) || (rounding == xpuRoundZero));
#endif
    __xpu_fp4_storage_t res = 0U;
    unsigned short storage;
    __half2_raw half2_raw_x;
    half2_raw_x.x = x.x;
    half2_raw_x.y = 0.0f;
    float fx = __internal_halfraw_to_float(x);
    res = __xpu_cvt_float_to_fp4(fx, fp4_interpretation, rounding);
    return res;
}

__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4x2_storage_t __xpu_cvt_halfraw2_to_fp4x2(
    const __half2_raw x,
    const __xpu_fp4_interpretation_t fp4_interpretation,
    const xpuRoundMode rounding) {
#if defined(__xpu_on_host__)
    assert((rounding == xpuRoundNearest) || (rounding == xpuRoundZero));
#else
    assert_device((rounding == xpuRoundNearest) || (rounding == xpuRoundZero));
#endif
    unsigned short storage;
    unsigned short tmp;
    __half_raw raw;
    raw.x = x.x;
    __xpu_fp4_storage_t lo =
        __xpu_cvt_halfraw_to_fp4(raw, fp4_interpretation, rounding);
    raw.x = x.y;
    __xpu_fp4_storage_t hi =
        __xpu_cvt_halfraw_to_fp4(raw, fp4_interpretation, rounding);
    tmp = hi;
    tmp = (__xpu_fp4x2_storage_t)(tmp << 4U);
    tmp = (__xpu_fp4x2_storage_t)(tmp | lo);
    return (__xpu_fp4x2_storage_t)tmp;
}

__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4x2_storage_t __xpu_cvt_relu_halfraw2_to_fp4x2(
    const __half2_raw x,
    const __xpu_fp4_interpretation_t fp4_interpretation,
    const xpuRoundMode rounding) {
#if defined(__xpu_on_host__)
    assert(false && "Not supported function");
#else
    assert_device(false && "Not supported function");
#endif
}

__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4_storage_t __xpu_cvt_bfloat16raw_to_fp4(
    const __xpu_bfloat16_raw x,
    const __xpu_fp4_interpretation_t fp4_interpretation,
    const xpuRoundMode rounding) {
    unsigned short storage;
    __xpu_bfloat162_raw __xpu_bfloat162_raw_x;
    __xpu_bfloat162_raw_x.x = x.x;
    __xpu_bfloat162_raw_x.y = 0.0f;
    const float fx = __internal_bf16raw_to_float(x);
    const __xpu_fp4_storage_t res =
        __xpu_cvt_float_to_fp4(fx, fp4_interpretation, rounding);
    return res;
}

__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4x2_storage_t
__xpu_cvt_bfloat16raw2_to_fp4x2(
    const __xpu_bfloat162_raw x,
    const __xpu_fp4_interpretation_t fp4_interpretation,
    const xpuRoundMode rounding) {
    __xpu_bfloat16_raw raw;
    raw.x = x.y;
    __xpu_fp4x2_storage_t storage =
        (__xpu_fp4x2_storage_t)__xpu_cvt_bfloat16raw_to_fp4(raw,
                                        fp4_interpretation, rounding);
    storage = (__xpu_fp4x2_storage_t)(storage << 4U);
    raw.x = x.x;
    storage = (__xpu_fp4x2_storage_t)(storage |
                                    __xpu_cvt_bfloat16raw_to_fp4(raw,
                                        fp4_interpretation, rounding));
    return storage;
}

__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4x2_storage_t
__xpu_cvt_relu_bfloat16raw2_to_fp4x2(
    const __xpu_bfloat162_raw x,
    const __xpu_fp4_interpretation_t fp4_interpretation,
    const xpuRoundMode rounding) {
#if defined(__xpu_on_host__)
    assert(false && "Not supported function");
#else
    assert_device(false && "Not supported function");
#endif
}

__XTDK_HOSTDEVICE_FP4_DECL__ unsigned short int
__internal_pack_u8x2_to_u16(const unsigned char src_lo,
                            const unsigned char src_hi) {
    return (((unsigned short int)src_hi) << 8U) |
            ((unsigned short int)src_lo);
}

__XTDK_HOSTDEVICE_FP4_DECL__ __half2_raw
__xpu_cvt_fp4x2_to_halfraw2(const __xpu_fp4x2_storage_t x,
                           const __xpu_fp4_interpretation_t fp4_interpretation);
__XTDK_HOSTDEVICE_FP4_DECL__ __half_raw
__xpu_cvt_fp4_to_halfraw(const __xpu_fp4_storage_t x,
                        const __xpu_fp4_interpretation_t fp4_interpretation) {
    __half_raw res;
    res.x = 0U;
    // fp4_interpretation == __XPU_E2M1;
    // convert to e2m3 first
    __xpu_fp6_storage_t fp6e2m3 = (x & 0xFU) << 2U;
    res = __xpu_cvt_fp6_to_halfraw(fp6e2m3, __XPU_E2M3);
    return res;
}

__XTDK_HOSTDEVICE_FP4_DECL__ float
__xpu_cvt_fp4_to_float(const __xpu_fp4_storage_t x,
                        const __xpu_fp4_interpretation_t fp4_interpretation) {
    float res;
    res = __internal_halfraw_to_float(
                __xpu_cvt_fp4_to_halfraw(x, __XPU_E2M1));
    return res;
}

__XTDK_HOSTDEVICE_FP4_DECL__ float
__xpu_cvt_relu_fp4_to_float(const __xpu_fp4_storage_t x,
                        const __xpu_fp4_interpretation_t fp4_interpretation) {
#if defined(__xpu_on_host__)
    assert(false && "Not supported function");
#else
    assert_device(false && "Not supported function");
#endif
}

__XTDK_HOSTDEVICE_FP4_DECL__ __half2_raw
__xpu_cvt_fp4x2_to_halfraw2(const __xpu_fp4x2_storage_t x,
                           const __xpu_fp4_interpretation_t fp4_interpretation) {
    __half2_raw res;
    res.x =
        __xpu_cvt_fp4_to_halfraw((__xpu_fp4_storage_t)x, fp4_interpretation).x;
    res.y = __xpu_cvt_fp4_to_halfraw((__xpu_fp4_storage_t)(x >> 4U),
                                    fp4_interpretation)
                .x;
    return res;
}

__XTDK_HOSTDEVICE_FP4_DECL__ __half2_raw
__xpu_cvt_relu_fp4x2_to_halfraw2(const __xpu_fp4x2_storage_t x,
                           const __xpu_fp4_interpretation_t fp4_interpretation) {
#if defined(__xpu_on_host__)
    assert(false && "Not supported function");
#else
    assert_device(false && "Not supported function");
#endif
}

__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_bfloat162_raw
__xpu_cvt_fp4x2_to_bfloat162(const __xpu_fp4x2_storage_t x,
                           const __xpu_fp4_interpretation_t fp4_interpretation) {
#if defined(__xpu_on_host__)
    assert(false && "Not supported function");
#else
    assert_device(false && "Not supported function");
#endif
}

__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_bfloat162_raw
__xpu_cvt_relu_fp4x2_to_bfloat162(const __xpu_fp4x2_storage_t x,
                           const __xpu_fp4_interpretation_t fp4_interpretation) {
#if defined(__xpu_on_host__)
    assert(false && "Not supported function");
#else
    assert_device(false && "Not supported function");
#endif
}

#endif /* !(defined __DOXYGEN_ONLY__) */

/* All other definitions in this file are only visible to C++ compilers */
#if defined(__cplusplus)

/**
 * \defgroup XTDK_MATH_FP4_E2M1_STRUCT C++ struct for handling fp4 data type of e2m1 kind.
 * \ingroup XTDK_MATH_INTRINSIC_FP4
 */

/**
 * \ingroup XTDK_MATH_FP4_E2M1_STRUCT
 * \brief __xpu_fp4_e2m1 datatype
 *
 * \details This structure implements the datatype for handling
 * \p fp4 floating-point numbers of \p e2m1 kind:
 * with 1 sign, 2 exponent, 1 implicit and 1 explicit mantissa bits.
 * This encoding does not support Inf/NaN.
 *
 * The structure implements converting constructors and operators.
 */
struct __XPU_ALIGN__(1) __xpu_fp4_e2m1 {
  public:
    /**
     * \ingroup XTDK_MATH_FP4_E2M1_STRUCT
     * Storage variable contains the \p fp4 floating-point data.
     */
    __xpu_fp4_storage_t __x;

    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor by default.
     */
#if defined(__CPP_VERSION_AT_LEAST_11_FP4)
    __xpu_fp4_e2m1() = default;
#else
    __XTDK_HOSTDEVICE_FP4__ __xpu_fp4_e2m1() {}
#endif /* defined(__CPP_VERSION_AT_LEAST_11_FP4) */

#if !defined(__XTDK_NO_FP4_CONVERSIONS__)

    /* Construct from wider FP types */
    /* Note we do avoid constructor init-list because of special host/device
     * compilation rules */

    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from \p __half data type, relies on \p __XPU_SATFINITE
     * behavior for out-of-range values and \p xpuRoundNearest rounding mode.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ __xpu_fp4_e2m1(const __half f) {
        __x = __xpu_cvt_halfraw_to_fp4(static_cast<__half_raw>(f),
                                      __XPU_E2M1, xpuRoundNearest);
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from \p __xpu_bfloat16 data type, relies on \p __XPU_SATFINITE
     * behavior for out-of-range values and \p xpuRoundNearest rounding mode.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ __xpu_fp4_e2m1(const __xpu_bfloat16 f) {
        __x = __xpu_cvt_bfloat16raw_to_fp4(static_cast<__xpu_bfloat16_raw>(f),
                                          __XPU_E2M1, xpuRoundNearest);
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from \p float data type, relies on \p __XPU_SATFINITE
     * behavior for out-of-range values and \p xpuRoundNearest rounding mode.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ __xpu_fp4_e2m1(const float f) {
        __x = __xpu_cvt_float_to_fp4(f, __XPU_E2M1, xpuRoundNearest);
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from \p double data type, relies on \p __XPU_SATFINITE
     * behavior for out-of-range values and \p xpuRoundNearest rounding mode.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ __xpu_fp4_e2m1(const double f) {
        __x = __xpu_cvt_double_to_fp4(f, __XPU_E2M1, xpuRoundNearest);
    }

    /* Converts from integral */

    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from \p unsigned \p short \p int data type, relies on \p
     * __XPU_SATFINITE behavior for out-of-range values.
     */
    explicit __XTDK_HOSTDEVICE_FP4__
    __xpu_fp4_e2m1(const unsigned short int val) {
        __x = static_cast<__xpu_fp4_e2m1>(static_cast<float>(val)).__x;
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from \p unsigned \p int data type, relies on \p
     * __XPU_SATFINITE behavior for out-of-range values.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ __xpu_fp4_e2m1(const unsigned int val) {
        __x = static_cast<__xpu_fp4_e2m1>(static_cast<float>(val)).__x;
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from \p unsigned \p long \p int data type, relies on \p
     * __XPU_SATFINITE behavior for out-of-range values.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ __xpu_fp4_e2m1(const unsigned long int val) {
        __x = static_cast<__xpu_fp4_e2m1>(static_cast<float>(val)).__x;
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from \p unsigned \p long \p long \p int data type, relies on
     * \p __XPU_SATFINITE behavior for out-of-range values.
     */
    explicit __XTDK_HOSTDEVICE_FP4__
    __xpu_fp4_e2m1(const unsigned long long int val) {
        __x = static_cast<__xpu_fp4_e2m1>(static_cast<float>(val)).__x;
    }

    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from \p short \p int data type.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ __xpu_fp4_e2m1(const short int val) {
        __x = static_cast<__xpu_fp4_e2m1>(static_cast<float>(val)).__x;
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from \p int data type, relies on \p __XPU_SATFINITE behavior
     * for out-of-range values.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ __xpu_fp4_e2m1(const int val) {
        __x = static_cast<__xpu_fp4_e2m1>(static_cast<float>(val)).__x;
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from \p long \p int data type, relies on \p __XPU_SATFINITE behavior
     * for out-of-range values.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ __xpu_fp4_e2m1(const long int val) {
        __x = static_cast<__xpu_fp4_e2m1>(static_cast<float>(val)).__x;
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from \p long \p long \p int data type, relies on \p
     * __XPU_SATFINITE behavior for out-of-range values.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ __xpu_fp4_e2m1(const long long int val) {
        __x = static_cast<__xpu_fp4_e2m1>(static_cast<float>(val)).__x;
    }

#if !defined(__XTDK_NO_FP4_CONVERSION_OPERATORS__)
    /* Widening FP converts */
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to \p __half data type.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator __half() const {
        return static_cast<__half>(__xpu_cvt_fp4_to_halfraw(__x, __XPU_E2M1));
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to \p float data type.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator float() const {
        return __xpu_cvt_fp4_to_float(__x, __XPU_E2M1);
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to \p __xpu_bfloat16 data type.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator __xpu_bfloat16() const {
        return __float2bfloat16_rz(float(*this));
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to \p double data type.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator double() const {
        return static_cast<double>(float(*this));
    }

    /* Convert to integral */

    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to \p unsigned \p char data type.
     * Clamps negative inputs to zero.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator unsigned char() const {
        unsigned char i;
        const float f = float(*this);

        if (f < 0.0f) {
            // saturate minimum
            i = 0U;
        } else {
            // normal value
            i = static_cast<unsigned char>(f);
        }
        return i;
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to \p unsigned \p short \p int data type.
     * Clamps negative inputs to zero.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator unsigned short int() const {
        return __half2ushort_rz(__half(*this));
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to \p unsigned \p int data type.
     * Clamps negative inputs to zero.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator unsigned int() const {
        return __half2uint_rz(__half(*this));
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to \p unsigned \p long \p int data type.
     * Clamps negative inputs to zero.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator unsigned long int() const {
        unsigned long retval;
        /* Suppress VS warning: warning C4127: conditional expression is constant */
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning (push)
#pragma warning (disable: 4127)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
        if (sizeof(unsigned long) == sizeof(unsigned long long))
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning (pop)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
        {
            retval = static_cast<unsigned long>(__half2ull_rz(__half(*this)));
        }
        else
        {
            retval = static_cast<unsigned long>(__half2uint_rz(__half(*this)));
        }
        return retval;
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to \p unsigned \p long \p long \p int data type.
     * Clamps negative inputs to zero.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator unsigned long long int() const {
        return __half2ull_rz(__half(*this));
    }

    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to \p signed \p char data type.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator signed char() const {
        const float f = float(*this);
        return static_cast<signed char>(f);
    }

    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to an implementation defined \p char data type.
     * 
     * Detects signedness of the \p char type and proceeds accordingly, see
     * further details in signed and unsigned char operators.
     * 
     * Clamps inputs to the output range.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator char() const {
        char value;
        /* Suppress VS warning: warning C4127: conditional expression is constant */
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning (push)
#pragma warning (disable: 4127)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
        if (((char)-1) < (char)0)
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning (pop)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
        {
            value = static_cast<char>(static_cast<signed char>(*this));
        }
        else
        {
            value = static_cast<char>(static_cast<unsigned char>(*this));
        }
        return value;
    }

    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to \p short \p int data type.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator short int() const {
        return __half2short_rz(__half(*this));
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to \p int data type.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator int() const {
        return __half2int_rz(__half(*this));
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to \p long \p int data type.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator long int() const {
        long retval;
        /* Suppress VS warning: warning C4127: conditional expression is constant */
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning (push)
#pragma warning (disable: 4127)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
        if (sizeof(long) == sizeof(long long))
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning (pop)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
        {
            retval = static_cast<long>(__half2ll_rz(__half(*this)));
        }
        else
        {
            retval = static_cast<long>(__half2int_rz(__half(*this)));
        }
        return retval;
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to \p long \p long \p int data type.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator long long int() const {
        return __half2ll_rz(__half(*this));
    }

    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to \p bool data type.
     * +0 and -0 inputs convert to \p false.
     * Non-zero inputs convert to \p true.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator bool() const {
        return (__x & 0x7U) != 0U;
    }
#endif /* !defined(__XTDK_NO_FP4_CONVERSION_OPERATORS__) */
#endif /* !defined(__XTDK_NO_FP4_CONVERSIONS__) */
};

/**
 * \defgroup XTDK_MATH_FP4X2_E2M1_STRUCT C++ struct for handling vector type of two fp4 values of e2m1 kind.
 * \ingroup XTDK_MATH_INTRINSIC_FP4
 */

/**
 * \ingroup XTDK_MATH_FP4X2_E2M1_STRUCT
 * \brief __xpu_fp4x2_e2m1 datatype
 *
 * \details This structure implements the datatype for handling two
 * \p fp4 floating-point numbers of \p e2m1 kind each.
 *
 * The structure implements converting constructors and operators.
 */
struct __XPU_ALIGN__(1) __xpu_fp4x2_e2m1 {
  public:
    /**
     * \ingroup XTDK_MATH_FP4X2_E2M1_STRUCT
     * Storage variable contains the vector of two \p fp4 floating-point data
     * values.
     */
    __xpu_fp4x2_storage_t __x;

    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor by default.
     */
#if defined(__CPP_VERSION_AT_LEAST_11_FP4)
    __xpu_fp4x2_e2m1() = default;
#else
    __XTDK_HOSTDEVICE_FP4__ __xpu_fp4x2_e2m1() {}
#endif /* defined(__CPP_VERSION_AT_LEAST_11_FP4) */

#if !defined(__XTDK_NO_FP4_CONVERSIONS__)

    /* Construct from wider types */

    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from \p __half2 data type, relies on \p __XPU_SATFINITE
     * behavior for out-of-range values.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ __xpu_fp4x2_e2m1(const __half2 f) {
        __x = __xpu_cvt_halfraw2_to_fp4x2(static_cast<__half2_raw>(f),
                                         __XPU_E2M1, xpuRoundNearest);
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from \p __xpu_bfloat162 data type, relies on \p __XPU_SATFINITE
     * behavior for out-of-range values.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ __xpu_fp4x2_e2m1(const __xpu_bfloat162 f) {
        __x = __xpu_cvt_bfloat16raw2_to_fp4x2(static_cast<__xpu_bfloat162_raw>(f),
                                             __XPU_E2M1, xpuRoundNearest);
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from \p float2 data type, relies on \p __XPU_SATFINITE
     * behavior for out-of-range values.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ __xpu_fp4x2_e2m1(const float2 f) {
        __x = __xpu_cvt_float2_to_fp4x2(f, __XPU_E2M1, xpuRoundNearest);
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from \p double2 data type, relies on \p __XPU_SATFINITE
     * behavior for out-of-range values.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ __xpu_fp4x2_e2m1(const double2 f) {
        __x = __xpu_cvt_double2_to_fp4x2(f, __XPU_E2M1, xpuRoundNearest);
    }

#if !defined(__XTDK_NO_FP4_CONVERSION_OPERATORS__)
    /* Widening converts */
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to \p __half2 data type.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator __half2() const {
        return static_cast<__half2>(__xpu_cvt_fp4x2_to_halfraw2(__x, __XPU_E2M1));
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to \p float2 data type.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator float2() const {
        return __internal_halfraw2_to_float2(
            __xpu_cvt_fp4x2_to_halfraw2(__x, __XPU_E2M1));
    }
    /* Widening converts */
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to \p __xpu_bfloat162_raw data type.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator __xpu_bfloat162_raw() const {
        return static_cast<__xpu_bfloat162>(
            __xpu_cvt_fp4x2_to_bfloat162_raw(__x, __XPU_E2M1));
    }
#endif /* !defined(__XTDK_NO_FP4_CONVERSION_OPERATORS__) */
#endif /* !defined(__XTDK_NO_FP4_CONVERSIONS__) */
};

/**
 * \defgroup XTDK_MATH_FP4X4_E2M1_STRUCT C++ struct for handling vector type of four fp4 values of e2m1 kind.
 * \ingroup XTDK_MATH_INTRINSIC_FP4
 */

/**
 * \ingroup XTDK_MATH_FP4X4_E2M1_STRUCT
 * \brief __xpu_fp4x4_e2m1 datatype
 *
 * \details This structure implements the datatype for handling four
 * \p fp4 floating-point numbers of \p e2m1 kind each.
 *
 * The structure implements converting constructors and operators.
 */
struct __XPU_ALIGN__(2) __xpu_fp4x4_e2m1 {
  public:
    /**
     * \ingroup XTDK_MATH_FP4X4_E2M1_STRUCT
     * Storage variable contains the vector of four \p fp4 floating-point data
     * values.
     */
    __xpu_fp4x4_storage_t __x;

    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor by default.
     */
#if defined(__CPP_VERSION_AT_LEAST_11_FP4)
    __xpu_fp4x4_e2m1() = default;
#else
    __XTDK_HOSTDEVICE_FP4__ __xpu_fp4x4_e2m1() {}
#endif /* defined(__CPP_VERSION_AT_LEAST_11_FP4) */

#if !defined(__XTDK_NO_FP4_CONVERSIONS__)

    /* Construct from wider types */

    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from a pair of \p __half2 data type values,
     * relies on \p __XPU_SATFINITE behavior for out-of-range values.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ __xpu_fp4x4_e2m1(const __half2 flo,
                                                     const __half2 fhi) {
        const __xpu_fp4x2_storage_t rlo = __xpu_cvt_halfraw2_to_fp4x2(
            static_cast<__half2_raw>(flo), __XPU_E2M1, xpuRoundNearest);
        const __xpu_fp4x2_storage_t rhi = __xpu_cvt_halfraw2_to_fp4x2(
            static_cast<__half2_raw>(fhi), __XPU_E2M1, xpuRoundNearest);
        __x = __internal_pack_u8x2_to_u16(rlo, rhi);
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from a pair of \p __xpu_bfloat162 data type values,
     * relies on \p __XPU_SATFINITE behavior for out-of-range values.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ __xpu_fp4x4_e2m1(const __xpu_bfloat162 flo,
                                                     const __xpu_bfloat162 fhi) {
        const __xpu_fp4x2_storage_t rlo = __xpu_cvt_bfloat16raw2_to_fp4x2(
            static_cast<__xpu_bfloat162_raw>(flo), __XPU_E2M1, xpuRoundNearest);
        const __xpu_fp4x2_storage_t rhi = __xpu_cvt_bfloat16raw2_to_fp4x2(
            static_cast<__xpu_bfloat162_raw>(fhi), __XPU_E2M1, xpuRoundNearest);
        __x = __internal_pack_u8x2_to_u16(rlo, rhi);
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from \p float4 vector data type,
     * relies on \p __XPU_SATFINITE behavior for out-of-range values.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ __xpu_fp4x4_e2m1(const float4 f) {
        const float2 flo = {f.x, f.y};
        const float2 fhi = {f.z, f.w};
        const __xpu_fp4x2_storage_t rlo =
            __xpu_cvt_float2_to_fp4x2(flo, __XPU_E2M1, xpuRoundNearest);
        const __xpu_fp4x2_storage_t rhi =
            __xpu_cvt_float2_to_fp4x2(fhi, __XPU_E2M1, xpuRoundNearest);
        __x = __internal_pack_u8x2_to_u16(rlo, rhi);
    }
    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Constructor from \p double4 vector data type,
     * relies on \p __XPU_SATFINITE behavior for out-of-range values.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ __xpu_fp4x4_e2m1(const double4 f) {
        const double2 flo = {f.x, f.y};
        const double2 fhi = {f.z, f.w};
        const __xpu_fp4x2_storage_t rlo =
            __xpu_cvt_double2_to_fp4x2(flo, __XPU_E2M1, xpuRoundNearest);
        const __xpu_fp4x2_storage_t rhi =
            __xpu_cvt_double2_to_fp4x2(fhi, __XPU_E2M1, xpuRoundNearest);
        __x = __internal_pack_u8x2_to_u16(rlo, rhi);
    }

#if !defined(__XTDK_NO_FP4_CONVERSION_OPERATORS__)
    /* Widening converts */

    /**
     * \ingroup XTDK_MATH_FP4_MISC
     * Conversion operator to \p float4 vector data type.
     */
    explicit __XTDK_HOSTDEVICE_FP4__ operator float4() const {
        const __xpu_fp4x2_storage_t slo = static_cast<__xpu_fp4x2_storage_t>(__x);
        const __xpu_fp4x2_storage_t shi =
            static_cast<__xpu_fp4x2_storage_t>(__x >> 8U);
        float2 rlo = __internal_halfraw2_to_float2(
            __xpu_cvt_fp4x2_to_halfraw2(slo, __XPU_E2M1));
        float2 rhi = __internal_halfraw2_to_float2(
            __xpu_cvt_fp4x2_to_halfraw2(shi, __XPU_E2M1));
        float4 res = {rlo.x, rlo.y, rhi.x, rhi.y};
        return res;
    }
#endif /* !defined(__XTDK_NO_FP4_CONVERSION_OPERATORS__) */
#endif /* !defined(__XTDK_NO_FP4_CONVERSIONS__) */
};

#endif /* defined(__cplusplus) */
#endif // __xpu_subarch__ >= 4
#endif /* end of include guard: __XTDK_FP4_HPP__ */
