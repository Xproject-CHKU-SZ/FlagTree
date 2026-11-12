#ifndef __XCN_KERNEL_XTDK_FP4_H__
#define __XCN_KERNEL_XTDK_FP4_H__

/* Set up function decorations */
#if defined(__XCNCC__)
#define __XTDK_FP4_DECL__ static __device__ __inline__
#define __XTDK_HOSTDEVICE_FP4__ __host__ __device__
#define __XTDK_HOSTDEVICE_FP4_DECL__ static __host__ __device__ __inline__
#else /* !defined(__XCNCC__) */
#if defined(__GNUC__)
#define __XTDK_HOSTDEVICE_FP4_DECL__ static __attribute__((unused))
#else
#define __XTDK_HOSTDEVICE_FP4_DECL__ static
#endif /* defined(__GNUC__) */
#define __XTDK_HOSTDEVICE_FP4__
#endif /* defined(__XCNCC__) */

#if !defined(_MSC_VER) && __cplusplus >= 201103L
#define __CPP_VERSION_AT_LEAST_11_FP4
#elif _MSC_FULL_VER >= 190024210 && _MSVC_LANG >= 201103L
#define __CPP_VERSION_AT_LEAST_11_FP4
#endif

/* bring in fp6 types infrastructure and dependencies */
#include "xtdk_fp6.h"

/**
 * \defgroup XTDK_MATH_INTRINSIC_FP4 FP4 Intrinsics
 * This section describes fp4 intrinsic functions.
 * To use these functions, include the header file \p xtdk_fp4.h in your
 * program.
 *
 * \note Most of the operations defined here benefit from native HW support
 * when compiled for specific GPU targets (e.g. devices of compute capability 10.0a),
 * other targets use emulation path.
 *
 * The following macros are available to help users selectively enable/disable
 * various definitions present in the header file:
 * - \p __XTDK_NO_FP4_CONVERSIONS__ - If defined, this macro will prevent any
 * use of the C++ type conversions (converting constructors and conversion
 * operators) defined in the header.
 * - \p __XTDK_NO_FP4_CONVERSION_OPERATORS__ - If defined, this macro will
 * prevent any use of the  C++ conversion operators from \p fp4 to other types.
 */

/**
 * \defgroup XTDK_MATH_FP4_MISC FP4 Conversion and Data Movement
 * \ingroup XTDK_MATH_INTRINSIC_FP4
 * To use these functions, include the header file \p xtdk_fp4.h in your
 * program.
 */

/**
 * \ingroup XTDK_MATH_FP4_MISC
 * \brief 8-bit \p unsigned \p integer
 * type abstraction used for \p fp4 floating-point
 * numbers storage.
 */
typedef __xpu_fp8_storage_t __xpu_fp4_storage_t;

/**
 * \ingroup XTDK_MATH_FP4_MISC
 * \brief 8-bit \p unsigned \p integer
 * type abstraction used for storage of pairs of
 * \p fp4 floating-point numbers.
 */
typedef __xpu_fp8_storage_t __xpu_fp4x2_storage_t;

/**
 * \ingroup XTDK_MATH_FP4_MISC
 * \brief 16-bit \p unsigned \p integer
 * type abstraction used for storage of tetrads of
 * \p fp4 floating-point numbers.
 */
typedef __xpu_fp8x2_storage_t __xpu_fp4x4_storage_t;

/**
 * \ingroup XTDK_MATH_FP4_MISC
 * \brief Enumerates the possible
 * interpretations of the 4-bit values when referring to them as
 * \p fp4 types.
 */
typedef enum __xpu_fp4_interpretation_t {
    __XPU_E2M1, /**< Stands for \p fp4 numbers of \p e2m1 kind. */
} __xpu_fp4_interpretation_t;

/* Forward-declaration of C-style APIs */

/**
 * \ingroup XTDK_MATH_FP4_MISC
 * \brief Converts input \p double precision \p x to \p fp4 type of the
 * requested kind using specified rounding mode and saturating
 * the out-of-range values.
 *
 * \details Converts input \p x to \p fp4 type of the kind specified by
 * \p fp4_interpretation parameter,
 * using rounding mode specified by \p rounding parameter.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 *
 * \returns
 * - The \p __xpu_fp4_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4_storage_t
__xpu_cvt_double_to_fp4(const double x,
                       const __xpu_fp4_interpretation_t fp4_interpretation,
                       const xpuRoundMode rounding);

/**
 * \ingroup XTDK_MATH_FP4_MISC
 * \brief Converts input vector of two \p double precision numbers packed
 * in \p double2 \p x into a vector of two values of \p fp4 type of the
 * requested kind using specified rounding mode and saturating
 * the out-of-range values.
 *
 * \details Converts input vector \p x to a vector of two \p fp4 values of the
 * kind specified by \p fp4_interpretation parameter, using
 * rounding mode specified by \p rounding parameter.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 *
 * \returns
 * - The \p __xpu_fp4x2_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4x2_storage_t
__xpu_cvt_double2_to_fp4x2(const double2 x,
                          const __xpu_fp4_interpretation_t fp4_interpretation,
                          const xpuRoundMode rounding);

/**
 * \ingroup XTDK_MATH_FP4_MISC
 * \brief Converts input \p single precision \p x to \p fp4 type of the
 * requested kind using specified rounding mode and saturating
 * the out-of-range values.
 *
 * \details Converts input \p x to \p fp4 type of the kind specified by
 * \p fp4_interpretation parameter, using
 * rounding mode specified by \p rounding parameter.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 *
 * \returns
 * - The \p __xpu_fp4_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4_storage_t
__xpu_cvt_float_to_fp4(const float x,
                      const __xpu_fp4_interpretation_t fp4_interpretation,
                      const xpuRoundMode rounding);

/**
 * \ingroup XTDK_MATH_FP4_MISC
 * \brief Converts input vector of two \p single precision numbers packed
 * in \p float2 \p x into a vector of two values of \p fp4 type of the
 * requested kind using specified rounding mode and saturating
 * the out-of-range values.
 *
 * \details Converts input vector \p x to a vector of two \p fp4 values of the
 * kind specified by \p fp4_interpretation parameter,
 * using rounding mode specified by \p rounding parameter.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 *
 * \returns
 * - The \p __xpu_fp4x2_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4x2_storage_t
__xpu_cvt_float2_to_fp4x2(const float2 x,
                         const __xpu_fp4_interpretation_t fp4_interpretation,
                         const xpuRoundMode rounding);

__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4x2_storage_t
__xpu_cvt_relu_float2_to_fp4x2(const float2 x,
                         const __xpu_fp4_interpretation_t fp4_interpretation,
                         const xpuRoundMode rounding);

/**
 * \ingroup XTDK_MATH_FP4_MISC
 * \brief Converts input \p half precision \p x to \p fp4 type of the
 * requested kind using specified rounding mode and saturating
 * the out-of-range values.
 *
 * \details Converts input \p x to \p fp4 type of the kind specified by
 * \p fp4_interpretation parameter,
 * using rounding mode specified by \p rounding parameter.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 *
 * \returns
 * - The \p __xpu_fp4_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4_storage_t
__xpu_cvt_halfraw_to_fp4(const __half_raw x,
                        const __xpu_fp4_interpretation_t fp4_interpretation,
                        const xpuRoundMode rounding);

/**
 * \ingroup XTDK_MATH_FP4_MISC
 * \brief Converts input vector of two \p half precision numbers packed
 * in \p __half2_raw \p x into a vector of two values of \p fp4 type of the
 * requested kind using specified rounding mode and saturating
 * the out-of-range values.
 *
 * \details Converts input vector \p x to a vector of two \p fp4 values of the
 * kind specified by \p fp4_interpretation parameter,
 * using rounding mode specified by \p rounding parameter.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 *
 * \returns
 * - The \p __xpu_fp4x2_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4x2_storage_t __xpu_cvt_halfraw2_to_fp4x2(
    const __half2_raw x,
    const __xpu_fp4_interpretation_t fp4_interpretation,
    const xpuRoundMode rounding);

__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4x2_storage_t __xpu_cvt_relu_halfraw2_to_fp4x2(
    const __half2_raw x,
    const __xpu_fp4_interpretation_t fp4_interpretation,
    const xpuRoundMode rounding);

/**
 * \ingroup XTDK_MATH_FP4_MISC
 * \brief Converts input \p xpu_bfloat16 precision \p x to \p fp4 type of the
 * requested kind using specified rounding mode and saturating
 * the out-of-range values.
 *
 * \details Converts input \p x to \p fp4 type of the kind specified by
 * \p fp4_interpretation parameter,
 * using rounding mode specified by \p rounding parameter.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 *
 * \returns
 * - The \p __xpu_fp4_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4_storage_t __xpu_cvt_bfloat16raw_to_fp4(
    const __xpu_bfloat16_raw x,
    const __xpu_fp4_interpretation_t fp4_interpretation,
    const xpuRoundMode rounding);

/**
 * \ingroup XTDK_MATH_FP4_MISC
 * \brief Converts input vector of two \p xpu_bfloat16 precision numbers packed
 * in \p __xpu_bfloat162_raw \p x into a vector of two values of \p fp4 type of the
 * requested kind using specified rounding mode and saturating
 * the out-of-range values.
 *
 * \details Converts input vector \p x to a vector of two \p fp4 values of the
 * kind specified by \p fp4_interpretation parameter,
 * using rounding mode specified by \p rounding parameter.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 *
 * \returns
 * - The \p __xpu_fp4x2_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4x2_storage_t
__xpu_cvt_bfloat16raw2_to_fp4x2(
    const __xpu_bfloat162_raw x,
    const __xpu_fp4_interpretation_t fp4_interpretation,
    const xpuRoundMode rounding);

__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_fp4x2_storage_t
__xpu_cvt_relu_bfloat16raw2_to_fp4x2(
    const __xpu_bfloat162_raw x,
    const __xpu_fp4_interpretation_t fp4_interpretation,
    const xpuRoundMode rounding);

/**
 * \ingroup XTDK_MATH_FP4_MISC
 * \brief Converts input \p fp4 \p x of the specified kind
 * to \p half precision.
 *
 * \details Converts input \p x of \p fp4 type of the kind specified by
 * \p fp4_interpretation parameter
 * to \p half precision.
 *
 * \returns
 * - The \p __half_raw value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP4_DECL__ __half_raw
__xpu_cvt_fp4_to_halfraw(const __xpu_fp4_storage_t x,
                        const __xpu_fp4_interpretation_t fp4_interpretation);
/**
 * \ingroup XTDK_MATH_FP4_MISC
 * \brief Converts input vector of two \p fp4 values of the specified kind
 * to a vector of two \p half precision values packed in \p __half2_raw
 * structure.
 *
 * \details Converts input vector \p x of \p fp4 type of the kind specified by
 * \p fp4_interpretation parameter
 * to a vector of two \p half precision values and returns as \p __half2_raw
 * structure.
 *
 * \returns
 * - The \p __half2_raw value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP4_DECL__ __half2_raw
__xpu_cvt_fp4x2_to_halfraw2(const __xpu_fp4x2_storage_t x,
                           const __xpu_fp4_interpretation_t fp4_interpretation);

__XTDK_HOSTDEVICE_FP4_DECL__ __half2_raw
__xpu_cvt_relu_fp4x2_to_halfraw2(const __xpu_fp4x2_storage_t x,
                           const __xpu_fp4_interpretation_t fp4_interpretation);

/**
 * \ingroup XTDK_MATH_FP4_MISC
 * \brief Converts input vector of two \p fp4 values of the specified kind
 * to a vector of two \p bfloat16 precision values packed in \p __xpu_bfloat162_raw
 * structure.
 *
 * \details Converts input vector \p x of \p fp4 type of the kind specified by
 * \p fp4_interpretation parameter
 * to a vector of two \p bfloat16 precision values and returns as \p __xpu_bfloat162_raw
 * structure.
 *
 * \returns
 * - The \p __xpu_bfloat162_raw value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_bfloat162_raw
__xpu_cvt_fp4x2_to_bfloat162_raw(const __xpu_fp4x2_storage_t x,
                               const __xpu_fp4_interpretation_t fp4_interpretation);

__XTDK_HOSTDEVICE_FP4_DECL__ __xpu_bfloat162_raw
__xpu_cvt_relu_fp4x2_to_bfloat162_raw(const __xpu_fp4x2_storage_t x,
                               const __xpu_fp4_interpretation_t fp4_interpretation);

/**
 * \ingroup XTDK_MATH_FP4_MISC
 * \brief Converts input \p fp4 \p x of the specified kind
 * to \p float precision.
 *
 * \details Converts input \p x of \p fp4 type of the kind specified by
 * \p fp4_interpretation parameter
 * to \p float precision.
 *
 * \returns
 * - The \p float value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP4_DECL__ float
__xpu_cvt_fp4_to_float(const __xpu_fp4_storage_t x,
                      const __xpu_fp4_interpretation_t fp4_interpretation);

__XTDK_HOSTDEVICE_FP4_DECL__ float
__xpu_cvt_relu_fp4_to_float(const __xpu_fp4_storage_t x,
                      const __xpu_fp4_interpretation_t fp4_interpretation);

#if defined(__cplusplus)

#define __XTDK_FP4_TYPES_EXIST__

/* Forward-declaration of structures defined in "xtdk_fp4.hpp" */
struct __xpu_fp4_e2m1;
struct __xpu_fp4x2_e2m1;
struct __xpu_fp4x4_e2m1;

#endif /* defined(__cplusplus) */

#include "xtdk_fp4.hpp"

#undef __XTDK_FP4_DECL__
#undef __XTDK_HOSTDEVICE_FP4__
#undef __XTDK_HOSTDEVICE_FP4_DECL__

#if defined(__CPP_VERSION_AT_LEAST_11_FP4)
#undef __CPP_VERSION_AT_LEAST_11_FP4
#endif /* defined(__CPP_VERSION_AT_LEAST_11_FP4) */

#endif /* end of include guard: __XCN_KERNEL_XTDK_FP4_H__ */
