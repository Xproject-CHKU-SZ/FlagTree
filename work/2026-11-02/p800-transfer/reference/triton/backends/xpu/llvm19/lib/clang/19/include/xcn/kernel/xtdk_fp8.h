#ifndef __XCN_KERNEL_XTDK_FP8_H__
#define __XCN_KERNEL_XTDK_FP8_H__

/* Set up function decorations */
#if defined(__XCNCC__)
#define __XTDK_FP8_DECL__ static __device__ __inline__
#define __XTDK_HOSTDEVICE_FP8__ __host__ __device__
#define __XTDK_HOSTDEVICE_FP8_DECL__ static __host__ __device__ __inline__
#else /* !defined(__XCNCC__) */
#if defined(__GNUC__)
#define __XTDK_HOSTDEVICE_FP8_DECL__ static __attribute__((unused))
#else
#define __XTDK_HOSTDEVICE_FP8_DECL__ static
#endif /* defined(__GNUC__) */
#define __XTDK_HOSTDEVICE_FP8__
#endif /* defined(__XCNCC__) */

#if !defined(_MSC_VER) && __cplusplus >= 201103L
#define __CPP_VERSION_AT_LEAST_11_FP8
#elif _MSC_FULL_VER >= 190024210 && _MSVC_LANG >= 201103L
#define __CPP_VERSION_AT_LEAST_11_FP8
#endif

/* bring in float2, double4, etc vector types */
#include "xtdk_vector_types.h"
/* bring in __half_raw data type */
#include "xtdk_fp16.h"
/* bring in __xpu_bfloat16_raw data type */
#include "xtdk_bf16.h"

#include "xtdk_device_functions.h"

#if !defined(__CUDA_HAS_DEF_CUDAROUNDMODE__)
enum __device_builtin__ xpuRoundMode
{
    xpuRoundNearest,
    xpuRoundZero,
    xpuRoundPosInf,
    xpuRoundMinInf
};
#endif

/**
 * \defgroup XTDK_MATH_INTRINSIC_FP8 FP8 Intrinsics
 * This section describes fp8 intrinsic functions.
 * To use these functions, include the header file \p xtdk_fp8.h in your
 * program.
 */

/**
 * \defgroup XTDK_MATH_FP8_MISC FP8 Conversion and Data Movement
 * \ingroup XTDK_MATH_INTRINSIC_FP8
 * To use these functions, include the header file \p xtdk_fp8.h in your
 * program.
 */

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief 8-bit \p unsigned \p integer
 * type abstraction used to for \p fp8 floating-point
 * numbers storage.
 */
typedef unsigned char __xpu_fp8_storage_t;

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief 16-bit \p unsigned \p integer
 * type abstraction used to for storage of pairs of
 * \p fp8 floating-point numbers.
 */
typedef unsigned short int __xpu_fp8x2_storage_t;

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief 32-bit \p unsigned \p integer
 * type abstraction used to for storage of tetrads of
 * \p fp8 floating-point numbers.
 */
typedef unsigned int __xpu_fp8x4_storage_t;

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Enumerates the modes applicable when
 * performing a narrowing conversion to \p fp8 destination types.
 */
typedef enum __xpu_saturation_t {
  /**
   * Means no saturation to finite is performed when conversion
   * results in rounding values outside the range of destination
   * type.
   * NOTE: for fp8 type of e4m3 kind, the results that are larger
   * than the maximum representable finite number of the target
   * format become NaN.
   */
  __XPU_NOSAT,
  /**
   * Means input larger than the maximum representable
   * finite number MAXNORM of the target format round to the
   * MAXNORM of the same sign as input.
   */
  __XPU_SATFINITE,
  __xpu_NOSAT = __XPU_NOSAT, // compatibility alias
  __xpu_SATFINITE = __XPU_SATFINITE,
} __xpu_saturation_t;

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Enumerates the possible
 * interpretations of the 8-bit values when referring to them as
 * \p fp8 types.
 */
typedef enum __xpu_fp8_interpretation_t {
  __XPU_E4M3, /**< Stands for \p fp8 numbers of \p e4m3 kind. */
  __XPU_E5M2, /**< Stands for \p fp8 numbers of \p e5m2 kind. */
  __xpu_E4M3 = __XPU_E4M3, // compatibility alias
  __xpu_E5M2 = __XPU_E5M2,
} __xpu_fp8_interpretation_t;

/* Forward-declaration of C-style APIs */

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Converts input \p double precision \p x to \p fp8 type of the
 * requested kind using round-to-nearest-even rounding and requested saturation
 * mode.
 *
 * \details Converts input \p x to \p fp8 type of the kind specified by
 * \p fp8_interpretation parameter,
 * using round-to-nearest-even rounding and
 * saturation mode specified by \p saturate parameter.
 *
 * \returns
 * - The \p __xpu_fp8_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8_storage_t
__xpu_cvt_double_to_fp8(const double x, const __xpu_saturation_t saturate,
                        const __xpu_fp8_interpretation_t fp8_interpretation);

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Converts input vector of two \p double precision numbers packed
 * in \p double2 \p x into a vector of two values of \p fp8 type of
 * the requested kind using round-to-nearest-even rounding and requested
 * saturation mode.
 *
 * \details Converts input vector \p x to a vector of two \p fp8 values of the
 * kind specified by \p fp8_interpretation parameter, using
 * round-to-nearest-even rounding and saturation mode specified by \p saturate
 * parameter.
 *
 * \returns
 * - The \p __xpu_fp8x2_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x2_storage_t
__xpu_cvt_double2_to_fp8x2(const double2 x, const __xpu_saturation_t saturate,
                           const __xpu_fp8_interpretation_t fp8_interpretation);

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Converts input \p single precision \p x to \p fp8 type of the
 * requested kind using round-to-nearest-even rounding and requested saturation
 * mode.
 *
 * \details Converts input \p x to \p fp8 type of the kind specified by
 * \p fp8_interpretation parameter,
 * using round-to-nearest-even rounding and
 * saturation mode specified by \p saturate parameter.
 *
 * \returns
 * - The \p __xpu_fp8_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8_storage_t
__xpu_cvt_float_to_fp8(const float x, const __xpu_saturation_t saturate,
                       const __xpu_fp8_interpretation_t fp8_interpretation);

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Converts input vector of two \p single precision numbers packed
 * in \p float2 \p x into a vector of two values of \p fp8 type of
 * the requested kind using round-to-nearest-even rounding and requested
 * saturation mode.
 *
 * \details Converts input vector \p x to a vector of two \p fp8 values of the
 * kind specified by \p fp8_interpretation parameter, using
 * round-to-nearest-even rounding and saturation mode specified by \p saturate
 * parameter.
 *
 * \returns
 * - The \p __xpu_fp8x2_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x2_storage_t
__xpu_cvt_float2_to_fp8x2(const float2 x, const __xpu_saturation_t saturate,
                          const __xpu_fp8_interpretation_t fp8_interpretation);

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Converts input \p half precision \p x to \p fp8 type of the requested
 * kind using round-to-nearest-even rounding and requested saturation mode.
 *
 * \details Converts input \p x to \p fp8 type of the kind specified by
 * \p fp8_interpretation parameter,
 * using round-to-nearest-even rounding and
 * saturation mode specified by \p saturate parameter.
 *
 * \returns
 * - The \p __xpu_fp8_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8_storage_t
__xpu_cvt_halfraw_to_fp8(const __half_raw x, const __xpu_saturation_t saturate,
                         const __xpu_fp8_interpretation_t fp8_interpretation);

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Converts input vector of two \p half precision numbers packed
 * in \p __half2_raw \p x into a vector of two values of \p fp8 type of
 * the requested kind using round-to-nearest-even rounding and requested
 * saturation mode.
 *
 * \details Converts input vector \p x to a vector of two \p fp8 values of the
 * kind specified by \p fp8_interpretation parameter, using
 * round-to-nearest-even rounding and saturation mode specified by \p saturate
 * parameter.
 *
 * \returns
 * - The \p __xpu_fp8x2_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x2_storage_t __xpu_cvt_halfraw2_to_fp8x2(
    const __half2_raw x, const __xpu_saturation_t saturate,
    const __xpu_fp8_interpretation_t fp8_interpretation);

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Converts input \p nv_bfloat16 precision \p x to \p fp8 type of the
 * requested kind using round-to-nearest-even rounding and requested saturation
 * mode.
 *
 * \details Converts input \p x to \p fp8 type of the kind specified by
 * \p fp8_interpretation parameter,
 * using round-to-nearest-even rounding and
 * saturation mode specified by \p saturate parameter.
 *
 * \returns
 * - The \p __xpu_fp8_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8_storage_t __xpu_cvt_bfloat16raw_to_fp8(
    const __xpu_bfloat16_raw x, const __xpu_saturation_t saturate,
    const __xpu_fp8_interpretation_t fp8_interpretation);

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Converts input vector of two \p nv_bfloat16 precision numbers packed
 * in \p __xpu_bfloat162_raw \p x into a vector of two values of \p fp8 type of
 * the requested kind using round-to-nearest-even rounding and requested
 * saturation mode.
 *
 * \details Converts input vector \p x to a vector of two \p fp8 values of the
 * kind specified by \p fp8_interpretation parameter, using
 * round-to-nearest-even rounding and saturation mode specified by \p saturate
 * parameter.
 *
 * \returns
 * - The \p __xpu_fp8x2_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x2_storage_t
__xpu_cvt_bfloat16raw2_to_fp8x2(
    const __xpu_bfloat162_raw x, const __xpu_saturation_t saturate,
    const __xpu_fp8_interpretation_t fp8_interpretation);

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Converts input \p fp8 \p x of the specified kind
 * to \p half precision.
 *
 * \details Converts input \p x of \p fp8 type of the kind specified by
 * \p fp8_interpretation parameter
 * to \p half precision.
 *
 * \returns
 * - The \p __half_raw value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP8_DECL__ __half_raw
__xpu_cvt_fp8_to_halfraw(const __xpu_fp8_storage_t x,
                         const __xpu_fp8_interpretation_t fp8_interpretation);
/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Converts input vector of two \p fp8 values of the specified kind
 * to a vector of two \p half precision values packed in \p __half2_raw
 * structure.
 *
 * \details Converts input vector \p x of \p fp8 type of the kind specified by
 * \p fp8_interpretation parameter
 * to a vector of two \p half precision values and returns as \p __half2_raw
 * structure.
 *
 * \returns
 * - The \p __half2_raw value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP8_DECL__ __half2_raw __xpu_cvt_fp8x2_to_halfraw2(
    const __xpu_fp8x2_storage_t x,
    const __xpu_fp8_interpretation_t fp8_interpretation);

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Converts input \p bfloat16 input into a scaling factor of \p e8m0
 * kind.
 *
 * \details Input number's absolute value is rounded to the closest power of two
 * in the direction specified via \p rounding parameter. Rounded results that
 * are smaller than the smallest representable target format number 2^-127 are
 * then clipped to 2^-127. Results that are larger than the largest
 * representable target format number 2^127 are either clipped to 2^127 if \p
 * saturate equals to \p __XPU_SATFINITE, or convert to \p NaN otherwise. \p NaN
 * inputs convert into \p NaN output, encoded as \p 0xFF in the target format.
 *
 * \returns
 * - The \p __xpu_fp8_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8_storage_t __xpu_cvt_bfloat16raw_to_e8m0(
    const __xpu_bfloat16_raw x, const __xpu_saturation_t saturate,
    const xpuRoundMode rounding);

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Converts a pair of \p bfloat16 values into a pair of scaling factors
 * of \p e8m0 kind.
 *
 * \see __xpu_cvt_bfloat16raw_to_e8m0() for details of conversion.
 *
 * \returns
 * - The \p __xpu_fp8x2_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x2_storage_t
__xpu_cvt_bfloat162raw_to_e8m0x2(const __xpu_bfloat162_raw x,
                                 const __xpu_saturation_t saturate,
                                 const xpuRoundMode rounding);

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Converts input \p float value into a scaling factor of \p e8m0 kind.
 *
 * \see __xpu_cvt_bfloat16raw_to_e8m0() for details of conversion.
 *
 * \returns
 * - The \p __xpu_fp8_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8_storage_t
__xpu_cvt_float_to_e8m0(const float x, const __xpu_saturation_t saturate,
                        const xpuRoundMode rounding);

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Converts a pair of \p float values into a pair of scaling factors of
 * \p e8m0 kind.
 *
 * \see __xpu_cvt_bfloat16raw_to_e8m0() for details of conversion.
 *
 * \returns
 * - The \p __xpu_fp8x2_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x2_storage_t
__xpu_cvt_float2_to_e8m0x2(const float2 x, const __xpu_saturation_t saturate,
                           const xpuRoundMode rounding);

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Converts input \p double value into a scaling factor of \p e8m0 kind.
 *
 * \see __xpu_cvt_bfloat16raw_to_e8m0() for details of conversion.
 *
 * \returns
 * - The \p __xpu_fp8_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8_storage_t
__xpu_cvt_double_to_e8m0(const double x, const __xpu_saturation_t saturate,
                         const xpuRoundMode rounding);

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Converts a pair of \p double values into a pair of scaling factors of
 * \p e8m0 kind.
 *
 * \see __xpu_cvt_bfloat16raw_to_e8m0() for details of conversion.
 *
 * \returns
 * - The \p __xpu_fp8x2_storage_t value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x2_storage_t
__xpu_cvt_double2_to_e8m0x2(const double2 x, const __xpu_saturation_t saturate,
                            const xpuRoundMode rounding);

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Converts input scaling factor value of \p e8m0 kind into \p bfloat16.
 *
 * \details Input scales are exact powers of two or a \p NaN value,
 * also representable in the target format.
 *
 * \returns
 * - The \p __xpu_bfloat16_raw value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_bfloat16_raw
__xpu_cvt_e8m0_to_bf16raw(const __xpu_fp8_storage_t x);

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Converts input scaling factor value of \p e8m0 kind into \p float.
 *
 * \details Input scales are exact powers of two or a \p NaN value,
 * also representable in the target format.
 *
 * \returns
 * - The \p float value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP8_DECL__ float
__xpu_cvt_e8m0_to_float(const __xpu_fp8_storage_t x);

/**
 * \ingroup XTDK_MATH_FP8_MISC
 * \brief Converts input pair of scaling factors of \p e8m0 kind into a pair of
 * \p bfloat16 values.
 *
 * \returns
 * - The \p __xpu_bfloat162_raw value holds the result of conversion.
 */
__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_bfloat162_raw
__xpu_cvt_e8m0x2_to_bf162raw(const __xpu_fp8x2_storage_t x);

#if defined(__cplusplus)

#define __XTDK_FP8_TYPES_EXIST__

/* Forward-declaration of structures defined in "xtdk_fp8.hpp" */
struct __xpu_fp8_e5m2;
struct __xpu_fp8x2_e5m2;
struct __xpu_fp8x4_e5m2;

struct __xpu_fp8_e4m3;
struct __xpu_fp8x2_e4m3;
struct __xpu_fp8x4_e4m3;

struct __xpu_fp8_e8m0;
struct __xpu_fp8x2_e8m0;
struct __xpu_fp8x4_e8m0;

#endif /* defined(__cplusplus) */

#include "xtdk_fp8.hpp"

#undef __XTDK_FP8_DECL__
#undef __XTDK_HOSTDEVICE_FP8__
#undef __XTDK_HOSTDEVICE_FP8_DECL__

#if defined(__CPP_VERSION_AT_LEAST_11_FP8)
#undef __CPP_VERSION_AT_LEAST_11_FP8
#endif /* defined(__CPP_VERSION_AT_LEAST_11_FP8) */

#endif /* end of include guard: __XCN_KERNEL_XTDK_FP8_H__ */
