#ifndef __XTDK_FP6_H__
#define __XTDK_FP6_H__

#if defined(__xpu__) && __xpu_subarch__ >= 4

/* Set up function decorations */
#if defined(__xpu__)
#define __XTDK_FP6_DECL__ static __device__ __inline__
#define __XTDK_HOSTDEVICE_FP6__ __host__ __device__
#define __XTDK_HOSTDEVICE_FP6_DECL__ static __host__ __device__ __inline__
#else /* !defined(__xpu__) */
#if defined(__GNUC__)
#define __XTDK_HOSTDEVICE_FP6_DECL__ static __attribute__((unused))
#else
#define __XTDK_HOSTDEVICE_FP6_DECL__ static
#endif /* defined(__GNUC__) */
#define __XTDK_HOSTDEVICE_FP6__
#endif /* defined(__xpu__) */

#if !defined(_MSC_VER) && __cplusplus >= 201103L
#define __CPP_VERSION_AT_LEAST_11_FP6
#elif _MSC_FULL_VER >= 190024210 && _MSVC_LANG >= 201103L
#define __CPP_VERSION_AT_LEAST_11_FP6
#endif

/* bring in fp8 types infrastructure and dependencies */
#include "xtdk_fp8.h"

/**
 * \defgroup XTDK_MATH_INTRINSIC_FP6 FP6 Intrinsics
 * This section describes fp6 intrinsic functions.
 * To use these functions, include the header file \p xtdk_fp6.h in your
 * program.
 *
 * \note Most of the operations defined here benefit from native HW support
 * when compiled for specific GPU targets (e.g. devices of compute capability 10.0a),
 * other targets use emulation path.
 *
 * The following macros are available to help users selectively enable/disable
 * various definitions present in the header file:
 * - \p __XTDK_NO_FP6_CONVERSIONS__ - If defined, this macro will prevent any
 * use of the C++ type conversions (converting constructors and conversion
 * operators) defined in the header.
 * - \p __XTDK_NO_FP6_CONVERSION_OPERATORS__ - If defined, this macro will
 * prevent any use of the  C++ conversion operators from \p fp6 to other types.
 */

/**
 * \defgroup XTDK_MATH_FP6_MISC FP6 Conversion and Data Movement
 * \ingroup XTDK_MATH_INTRINSIC_FP6
 * To use these functions, include the header file \p xtdk_fp6.h in your
 * program.
 */

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief 8-bit \p unsigned \p integer
 * type abstraction used for \p fp6 floating-point
 * numbers storage.
 */
typedef __xpu_fp8_storage_t __xpu_fp6_storage_t;

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief 16-bit \p unsigned \p integer
 * type abstraction used for storage of pairs of
 * \p fp6 floating-point numbers.
 */
typedef __xpu_fp8x2_storage_t __xpu_fp6x2_storage_t;

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief 32-bit \p unsigned \p integer
 * type abstraction used for storage of tetrads of
 * \p fp6 floating-point numbers.
 */
typedef __xpu_fp8x4_storage_t __xpu_fp6x4_storage_t;

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Enumerates the possible
 * interpretations of the 8-bit values when referring to them as
 * \p fp6 types.
 */
typedef enum __xpu_fp6_interpretation_t {
    __XPU_E2M3, /**< Stands for \p fp6 numbers of \p e2m3 kind. */
    __XPU_E3M2, /**< Stands for \p fp6 numbers of \p e3m2 kind. */
} __xpu_fp6_interpretation_t;

/* Forward-declaration of C-style APIs */

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input \p double precision \p x to \p fp6 type of the
 * requested kind using rne mode and saturating
 * the out-of-range values.
 *
 * \details Converts input \p x to \p fp6 type of the kind specified by
 * \p fp6_interpretation parameter,
 * using rne mode.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 *
 * \returns
 * - The \p __xpu_fp6_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __xpu_fp6_storage_t
__xpu_cvt_double_to_fp6(const double x,
                        const __xpu_fp6_interpretation_t fp6_interpretation,
                        const xpuRoundMode rounding = xpuRoundNearest);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input vector of two \p double precision numbers packed
 * in \p double2 \p x into a vector of two values of \p fp6 type of the
 * requested kind using rne mode and saturating
 * the out-of-range values.
 *
 * \details Converts input vector \p x to a vector of two \p fp6 values of the
 * kind specified by \p fp6_interpretation parameter, using
 * rne mode.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 *
 * \returns
 * - The \p __xpu_fp6x2_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __xpu_fp6x2_storage_t
__xpu_cvt_double2_to_fp6x2(const double2 x,
                           const __xpu_fp6_interpretation_t fp6_interpretation,
                           const xpuRoundMode rounding = xpuRoundNearest);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input \p single precision \p x to \p fp6 type of the
 * requested kind using rne mode and saturating
 * the out-of-range values.
 *
 * \details Converts input \p x to \p fp6 type of the kind specified by
 * \p fp6_interpretation parameter, using
 * rne mode.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 *
 * \returns
 * - The \p __xpu_fp6_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __xpu_fp6_storage_t
__xpu_cvt_float_to_fp6(const float x,
                       const __xpu_fp6_interpretation_t fp6_interpretation,
                       const xpuRoundMode rounding = xpuRoundNearest);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input vector of two \p single precision numbers packed
 * in \p float2 \p x into a vector of two values of \p fp6 type of the
 * requested kind using rne mode and saturating
 * the out-of-range values.
 *
 * \details Converts input vector \p x to a vector of two \p fp6 values of the
 * kind specified by \p fp6_interpretation parameter,
 * using rne mode.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 *
 * \returns
 * - The \p __xpu_fp6x2_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __xpu_fp6x2_storage_t
__xpu_cvt_float2_to_fp6x2(const float2 x,
                          const __xpu_fp6_interpretation_t fp6_interpretation,
                          const xpuRoundMode rounding = xpuRoundNearest);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input \p single precision \p x to \p fp6 type of the
 * requested kind using rne mode and saturating
 * the out-of-range values, and clamps the result to 0 if negative.
 *
 * \details Converts input \p x to \p fp6 type of the kind specified by
 * \p fp6_interpretation parameter, using
 * rne mode.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 * Negative values are clamped to 0.
 *
 * \returns
 * - The \p __xpu_fp6_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __xpu_fp6_storage_t
__xpu_cvt_relu_float_to_fp6(const float x,
                            const __xpu_fp6_interpretation_t fp6_interpretation,
                            const xpuRoundMode rounding = xpuRoundNearest);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input vector of two \p single precision numbers packed
 * in \p float2 \p x into a vector of two values of \p fp6 type of the
 * requested kind using rne mode and saturating
 * the out-of-range values, and clamps the result to 0 if negative.
 *
 * \details Converts input vector \p x to a vector of two \p fp6 values of the
 * kind specified by \p fp6_interpretation parameter,
 * using rne mode.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 * Negative values are clamped to 0.
 *
 * \returns
 * - The \p __xpu_fp6x2_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __xpu_fp6x2_storage_t
__xpu_cvt_relu_float2_to_fp6x2(const float2 x,
                               const __xpu_fp6_interpretation_t fp6_interpretation,
                               const xpuRoundMode rounding = xpuRoundNearest);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input \p half precision \p x to \p fp6 type of the
 * requested kind using rne mode and saturating
 * the out-of-range values.
 *
 * \details Converts input \p x to \p fp6 type of the kind specified by
 * \p fp6_interpretation parameter,
 * using rne mode.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 *
 * \returns
 * - The \p __xpu_fp6_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __xpu_fp6_storage_t
__xpu_cvt_halfraw_to_fp6(const __half_raw x,
                         const __xpu_fp6_interpretation_t fp6_interpretation,
                         const xpuRoundMode rounding = xpuRoundNearest);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input vector of two \p half precision numbers packed
 * in \p __half2_raw \p x into a vector of two values of \p fp6 type of the
 * requested kind using rne mode and saturating
 * the out-of-range values.
 *
 * \details Converts input vector \p x to a vector of two \p fp6 values of the
 * kind specified by \p fp6_interpretation parameter,
 * using rne mode.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 *
 * \returns
 * - The \p __xpu_fp6x2_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __xpu_fp6x2_storage_t __xpu_cvt_halfraw2_to_fp6x2(
    const __half2_raw x,
    const __xpu_fp6_interpretation_t fp6_interpretation,
    const xpuRoundMode rounding = xpuRoundNearest);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input \p half precision \p x to \p fp6 type of the
 * requested kind using rne mode and saturating
 * the out-of-range values, and clamps the result to 0 if negative.
 *
 * \details Converts input \p x to \p fp6 type of the kind specified by
 * \p fp6_interpretation parameter,
 * using rne mode.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 * Negative values are clamped to 0.
 *
 * \returns
 * - The \p __xpu_fp6_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __xpu_fp6_storage_t
__xpu_cvt_relu_halfraw_to_fp6(const __half_raw x,
                              const __xpu_fp6_interpretation_t fp6_interpretation,
                              const xpuRoundMode rounding = xpuRoundNearest);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input vector of two \p half precision numbers packed
 * in \p __half2_raw \p x into a vector of two values of \p fp6 type of the
 * requested kind using rne mode and saturating
 * the out-of-range values, and clamps the result to 0 if negative.
 *
 * \details Converts input vector \p x to a vector of two \p fp6 values of the
 * kind specified by \p fp6_interpretation parameter,
 * using rne mode.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 * Negative values are clamped to 0.
 *
 * \returns
 * - The \p __xpu_fp6x2_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __xpu_fp6x2_storage_t __xpu_cvt_relu_halfraw2_to_fp6x2(
    const __half2_raw x,
    const __xpu_fp6_interpretation_t fp6_interpretation,
    const xpuRoundMode rounding = xpuRoundNearest);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input \p nv_bfloat16 precision \p x to \p fp6 type of the
 * requested kind using rne mode and saturating
 * the out-of-range values.
 *
 * \details Converts input \p x to \p fp6 type of the kind specified by
 * \p fp6_interpretation parameter,
 * using rne mode.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 *
 * \returns
 * - The \p __xpu_fp6_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __xpu_fp6_storage_t __xpu_cvt_bfloat16raw_to_fp6(
    const __xpu_bfloat16_raw x,
    const __xpu_fp6_interpretation_t fp6_interpretation,
    const xpuRoundMode rounding = xpuRoundNearest);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input vector of two \p nv_bfloat16 precision numbers packed
 * in \p __xpu_bfloat162_raw \p x into a vector of two values of \p fp6 type of the
 * requested kind using rne mode and saturating
 * the out-of-range values.
 *
 * \details Converts input vector \p x to a vector of two \p fp6 values of the
 * kind specified by \p fp6_interpretation parameter,
 * using rne mode.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 *
 * \returns
 * - The \p __xpu_fp6x2_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __xpu_fp6x2_storage_t
__xpu_cvt_bfloat16raw2_to_fp6x2(
    const __xpu_bfloat162_raw x,
    const __xpu_fp6_interpretation_t fp6_interpretation,
    const xpuRoundMode rounding = xpuRoundNearest);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input \p nv_bfloat16 precision \p x to \p fp6 type of the
 * requested kind using rne mode and saturating
 * the out-of-range values, and clamps the result to 0 if negative.
 *
 * \details Converts input \p x to \p fp6 type of the kind specified by
 * \p fp6_interpretation parameter,
 * using rne mode.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 * Negative values are clamped to 0.
 *
 * \returns
 * - The \p __xpu_fp6_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __xpu_fp6_storage_t
__xpu_cvt_relu_bfloat16raw_to_fp6(
    const __xpu_bfloat16_raw x,
    const __xpu_fp6_interpretation_t fp6_interpretation,
    const xpuRoundMode rounding = xpuRoundNearest);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input vector of two \p nv_bfloat16 precision numbers packed
 * in \p __xpu_bfloat162_raw \p x into a vector of two values of \p fp6 type of the
 * requested kind using rne mode and saturating
 * the out-of-range values, and clamps the result to 0 if negative.
 *
 * \details Converts input vector \p x to a vector of two \p fp6 values of the
 * kind specified by \p fp6_interpretation parameter,
 * using rne mode.
 * Large out-of-range values saturate to MAXNORM of the same sign.
 * \p NaN input values result in positive MAXNORM.
 * Negative values are clamped to 0.
 *
 * \returns
 * - The \p __xpu_fp6x2_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __xpu_fp6x2_storage_t
__xpu_cvt_relu_bfloat16raw2_to_fp6x2(
    const __xpu_bfloat162_raw x,
    const __xpu_fp6_interpretation_t fp6_interpretation,
    const xpuRoundMode rounding = xpuRoundNearest);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input \p fp6 \p x of the specified kind
 * to \p half precision.
 *
 * \details Converts input \p x of \p fp6 type of the kind specified by
 * \p fp6_interpretation parameter
 * to \p half precision.
 *
 * \returns
 * - The \p __half_raw value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __half_raw
__xpu_cvt_fp6_to_halfraw(const __xpu_fp6_storage_t x,
                         const __xpu_fp6_interpretation_t fp6_interpretation);
/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input vector of two \p fp6 values of the specified kind
 * to a vector of two \p half precision values packed in \p __half2_raw
 * structure.
 *
 * \details Converts input vector \p x of \p fp6 type of the kind specified by
 * \p fp6_interpretation parameter
 * to a vector of two \p half precision values and returns as \p __half2_raw
 * structure.
 *
 * \returns
 * - The \p __half2_raw value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __half2_raw
__xpu_cvt_fp6x2_to_halfraw2(const __xpu_fp6x2_storage_t x,
                            const __xpu_fp6_interpretation_t fp6_interpretation);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input \p fp6 \p x of the specified kind
 * to \p half precision, and clamps the result to 0 if negative.
 *
 * \details Converts input \p x of \p fp6 type of the kind specified by
 * \p fp6_interpretation parameter
 * to \p half precision.
 *  Negative values are clamped to 0.
 * 
 * \returns
 * - The \p __half_raw value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __half_raw
__xpu_cvt_relu_fp6_to_halfraw(const __xpu_fp6_storage_t x,
                              const __xpu_fp6_interpretation_t fp6_interpretation);
/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input vector of two \p fp6 values of the specified kind
 * to a vector of two \p half precision values packed in \p __half2_raw
 * structure, and clamps the result to 0 if negative.
 *
 * \details Converts input vector \p x of \p fp6 type of the kind specified by
 * \p fp6_interpretation parameter
 * to a vector of two \p half precision values and returns as \p __half2_raw
 * structure.
 * Negative values are clamped to 0.
 *
 * \returns
 * - The \p __half2_raw value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __half2_raw
__xpu_cvt_relu_fp6x2_to_halfraw2(const __xpu_fp6x2_storage_t x,
                                 const __xpu_fp6_interpretation_t fp6_interpretation);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input \p fp6 \p x of the specified kind
 * to \p bfloat16 precision.
 *
 * \details Converts input \p x of \p fp6 type of the kind specified by
 * \p fp6_interpretation parameter
 * to \p bfloat16 precision.
 *
 * \returns
 * - The \p __xpu_bfloat16_raw value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __xpu_bfloat16_raw
__xpu_cvt_fp6_to_bfloat16raw(const __xpu_fp6_storage_t x,
                             const __xpu_fp6_interpretation_t fp6_interpretation);
/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input vector of two \p fp6 values of the specified kind
 * to a vector of two \p bfloat16 precision values packed in
 * \p __xpu_bfloat162_raw structure.
 *
 * \details Converts input vector \p x of \p fp6 type of the kind specified by
 * \p fp6_interpretation parameter
 * to a vector of two \p bfloat16 precision values and returns as
 * \p __xpu_bfloat162_raw structure.
 *
 * \returns
 * - The \p __xpu_bfloat162_raw value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __xpu_bfloat162_raw
__xpu_cvt_fp6x2_to_bfloat16raw2(const __xpu_fp6x2_storage_t x,
                                const __xpu_fp6_interpretation_t fp6_interpretation);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input \p fp6 \p x of the specified kind
 * to \p bfloat16 precision, and clamps the result to 0 if negative.
 *
 * \details Converts input \p x of \p fp6 type of the kind specified by
 * \p fp6_interpretation parameter
 * to \p bfloat16 precision.
 * Negative values are clamped to 0.
 *
 * \returns
 * - The \p __xpu_bfloat16_raw value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __xpu_bfloat16_raw
__xpu_cvt_relu_fp6_to_bfloat16raw(const __xpu_fp6_storage_t x,
                                  const __xpu_fp6_interpretation_t fp6_interpretation);
/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input vector of two \p fp6 values of the specified kind
 * to a vector of two \p bfloat16 precision values packed in
 * \p __xpu_bfloat162_raw structure, and clamps the result to 0 if negative.
 *
 * \details Converts input vector \p x of \p fp6 type of the kind specified by
 * \p fp6_interpretation parameter
 * to a vector of two \p bfloat16 precision values and returns as
 * \p __xpu_bfloat162_raw structure.
 * Negative values are clamped to 0.
 *
 * \returns
 * - The \p __xpu_bfloat162_raw value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ __xpu_bfloat162_raw
__xpu_cvt_relu_fp6x2_to_bfloat16raw2(const __xpu_fp6x2_storage_t x,
                                     const __xpu_fp6_interpretation_t fp6_interpretation);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input \p fp6 \p x of the specified kind
 * to \p float precision.
 *
 * \details Converts input \p x of \p fp6 type of the kind specified by
 * \p fp6_interpretation parameter
 * to \p float precision.
 *
 * \returns
 * - The \p float value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ float
__xpu_cvt_fp6_to_float(const __xpu_fp6_storage_t x,
                       const __xpu_fp6_interpretation_t fp6_interpretation);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input vector of two \p fp6 values of the specified kind
 * to a vector of two \p float precision values packed in \p float2
 * structure.
 *
 * \details Converts input vector \p x of \p fp6 type of the kind specified by
 * \p fp6_interpretation parameter
 * to a vector of two \p float precision values and returns as \p float2
 * structure.
 *
 * \returns
 * - The \p float2 value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ float2
__xpu_cvt_fp6x2_to_float2(const __xpu_fp6x2_storage_t x,
                          const __xpu_fp6_interpretation_t fp6_interpretation);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input \p fp6 \p x of the specified kind
 * to \p float precision , and clamps the result to 0 if negative.
 *
 * \details Converts input \p x of \p fp6 type of the kind specified by
 * \p fp6_interpretation parameter to \p float precision.
 * Negative values are clamped to 0.
 *
 * \returns
 * - The \p float value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ float
__xpu_cvt_relu_fp6_to_float(const __xpu_fp6_storage_t x,
                            const __xpu_fp6_interpretation_t fp6_interpretation);

/**
 * \ingroup XTDK_MATH_FP6_MISC
 * \brief Converts input vector of two \p fp6 values of the specified kind
 * to a vector of two \p float precision values packed in \p float2
 * structure, and clamps the result to 0 if negative.
 *
 * \details Converts input vector \p x of \p fp6 type of the kind specified by
 * \p fp6_interpretation parameter
 * to a vector of two \p float precision values and returns as \p float2
 * structure.
 *
 * \returns
 * - The \p float2 value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP6_DECL__ float2
__xpu_cvt_relu_fp6x2_to_float2(const __xpu_fp6x2_storage_t x,
                               const __xpu_fp6_interpretation_t fp6_interpretation);

#if defined(__cplusplus)

#define __XTDK_FP6_TYPES_EXIST__

/* Forward-declaration of structures defined in "xtdk_fp6.hpp" */
struct __xpu_fp6_e3m2;
struct __xpu_fp6x2_e3m2;
struct __xpu_fp6x4_e3m2;

struct __xpu_fp6_e2m3;
struct __xpu_fp6x2_e2m3;
struct __xpu_fp6x4_e2m3;

#endif /* defined(__cplusplus) */

#include "xtdk_fp6.hpp"

#undef __XTDK_FP6_DECL__
#undef __XTDK_HOSTDEVICE_FP6__
#undef __XTDK_HOSTDEVICE_FP6_DECL__

#if defined(__CPP_VERSION_AT_LEAST_11_FP6)
#undef __CPP_VERSION_AT_LEAST_11_FP6
#endif /* defined(__CPP_VERSION_AT_LEAST_11_FP6) */

#elif defined(__XCN__)
#include "xcn/kernel/xtdk_fp6.h"
#endif /* defined(__xpu__) && __xpu_subarch__ >= 4 */

#endif /* end of include guard: __XTDK_FP6_H__ */
