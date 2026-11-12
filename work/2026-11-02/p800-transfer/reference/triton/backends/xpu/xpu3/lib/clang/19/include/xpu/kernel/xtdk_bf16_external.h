/**
* \defgroup XTDK_MATH_INTRINSIC_BFLOAT16 Bfloat16 Precision Intrinsics
* This section describes xpu_bfloat16 precision intrinsic functions that are
* only supported in device code.
* To use these functions, include the header file \p xtdk_bf16.h in your program.
*/

/**
* \defgroup XTDK_MATH__BFLOAT16_ARITHMETIC Bfloat16 Arithmetic Functions
* \ingroup XTDK_MATH_INTRINSIC_BFLOAT16
* To use these functions, include the header file \p xtdk_bf16.h in your program.
*/

/**
* \defgroup XTDK_MATH__BFLOAT162_ARITHMETIC Bfloat162 Arithmetic Functions
* \ingroup XTDK_MATH_INTRINSIC_BFLOAT16
* To use these functions, include the header file \p xtdk_bf16.h in your program.
*/

/**
* \defgroup XTDK_MATH__BFLOAT16_COMPARISON Bfloat16 Comparison Functions
* \ingroup XTDK_MATH_INTRINSIC_BFLOAT16
* To use these functions, include the header file \p xtdk_bf16.h in your program.
*/

/**
* \defgroup XTDK_MATH__BFLOAT162_COMPARISON Bfloat162 Comparison Functions
* \ingroup XTDK_MATH_INTRINSIC_BFLOAT16
* To use these functions, include the header file \p xtdk_bf16.h in your program.
*/

/**
* \defgroup XTDK_MATH__BFLOAT16_MISC Bfloat16 Precision Conversion and Data Movement
* \ingroup XTDK_MATH_INTRINSIC_BFLOAT16
* To use these functions, include the header file \p xtdk_bf16.h in your program.
*/

/**
* \defgroup XTDK_MATH__BFLOAT16_FUNCTIONS Bfloat16 Math Functions
* \ingroup XTDK_MATH_INTRINSIC_BFLOAT16
* To use these functions, include the header file \p xtdk_bf16.h in your program.
*/

/**
* \defgroup XTDK_MATH__BFLOAT162_FUNCTIONS Bfloat162 Math Functions
* \ingroup XTDK_MATH_INTRINSIC_BFLOAT16
* To use these functions, include the header file \p xtdk_bf16.h in your program.
*/

#ifndef __XTDK_BF16_H__
#define __XTDK_BF16_H__

#define ___XTDK_BF16_STRINGIFY_INNERMOST(x) #x
#define __XTDK_BF16_STRINGIFY(x) ___XTDK_BF16_STRINGIFY_INNERMOST(x)

#if defined(__cplusplus)
#define __XTDK_BF16_DECL__ static __device__ __inline__
#define __XTDK_HOSTDEVICE_BF16_DECL__ static __host__ __device__ __inline__

#define __XTDK_BF16_TYPES_EXIST__

/* Forward-declaration of structures defined in "xtdk_bf16.hpp" */

/**
 * \brief xpu_bfloat16 datatype 
 * 
 * \details This structure implements the datatype for storing 
 * xpu_bfloat16 floating-point numbers. The structure implements 
 * assignment operators and type conversions. 16 bits are being 
 * used in total: 1 sign bit, 8 bits for the exponent, and 
 * the significand is being stored in 7 bits. The total 
 * precision is 8 bits.
 * 
 */
struct __xpu_bfloat16;

/**
* \ingroup XTDK_MATH__BFLOAT16_MISC
* \brief Converts double number to xpu_bfloat16 precision in round-to-nearest-even mode
* and returns \p xpu_bfloat16 with converted value.
*
* \details Converts double number \p a to xpu_bfloat16 precision in round-to-nearest-even mode.
* \param[in] a - double. Is only being read.
* \returns xpu_bfloat16
* - \p a converted to xpu_bfloat16.
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __double2bfloat16(const double a);
/**
* \ingroup XTDK_MATH__BFLOAT16_MISC
* \brief Converts float number to xpu_bfloat16 precision in round-to-nearest-even mode
* and returns \p xpu_bfloat16 with converted value. 
* 
* \details Converts float number \p a to xpu_bfloat16 precision in round-to-nearest-even mode. 
* \param[in] a - float. Is only being read. 
* \returns xpu_bfloat16
* - \p a converted to xpu_bfloat16. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __float2bfloat16(const float a);
/**
* \ingroup XTDK_MATH__BFLOAT16_MISC
* \brief Converts float number to xpu_bfloat16 precision in round-to-nearest-even mode
* and returns \p xpu_bfloat16 with converted value.
*
* \details Converts float number \p a to xpu_bfloat16 precision in round-to-nearest-even mode.
* \param[in] a - float. Is only being read. 
* \returns xpu_bfloat16
* - \p a converted to xpu_bfloat16. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __float2bfloat16_rn(const float a);
/**
* \ingroup XTDK_MATH__BFLOAT16_MISC
* \brief Converts float number to xpu_bfloat16 precision in round-towards-zero mode
* and returns \p xpu_bfloat16 with converted value.
* 
* \details Converts float number \p a to xpu_bfloat16 precision in round-towards-zero mode.
* \param[in] a - float. Is only being read. 
* \returns xpu_bfloat16
* - \p a converted to xpu_bfloat16. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __float2bfloat16_rz(const float a);
/**
* \ingroup XTDK_MATH__BFLOAT16_MISC
* \brief Converts float number to xpu_bfloat16 precision in round-down mode
* and returns \p xpu_bfloat16 with converted value.
* 
* \details Converts float number \p a to xpu_bfloat16 precision in round-down mode.
* \param[in] a - float. Is only being read. 
* 
* \returns xpu_bfloat16
* - \p a converted to xpu_bfloat16. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __float2bfloat16_rd(const float a);
/**
* \ingroup XTDK_MATH__BFLOAT16_MISC
* \brief Converts float number to xpu_bfloat16 precision in round-up mode
* and returns \p xpu_bfloat16 with converted value.
* 
* \details Converts float number \p a to xpu_bfloat16 precision in round-up mode.
* \param[in] a - float. Is only being read. 
* 
* \returns xpu_bfloat16
* - \p a converted to xpu_bfloat16. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __float2bfloat16_ru(const float a);
/**
* \ingroup XTDK_MATH__BFLOAT16_MISC
* \brief Converts \p xpu_bfloat16 number to float.
* 
* \details Converts xpu_bfloat16 number \p a to float.
* \param[in] a - float. Is only being read. 
* 
* \returns float
* - \p a converted to float. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_HOSTDEVICE_BF16_DECL__ float __bfloat162float(const __xpu_bfloat16 a);
/**
* \ingroup XTDK_MATH__BFLOAT16_MISC
* \brief Convert a xpu_bfloat16 to a signed integer in round-towards-zero mode.
* 
* \details Convert the xpu_bfloat16 floating-point value \p h to a signed integer in
* round-towards-zero mode. NaN inputs are converted to 0.
* \param[in] h - xpu_bfloat16. Is only being read. 
* 
* \returns int
* - \p h converted to a signed integer. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_HOSTDEVICE_BF16_DECL__ int __bfloat162int_rz(const __xpu_bfloat16 h);
/**
* \ingroup XTDK_MATH__BFLOAT16_MISC
* \brief Convert a signed integer to a xpu_bfloat16 in round-to-nearest-even mode.
* 
* \details Convert the signed integer value \p i to a xpu_bfloat16 floating-point
* value in round-to-nearest-even mode.
* \param[in] i - int. Is only being read. 
* 
* \returns xpu_bfloat16
* - \p i converted to xpu_bfloat16. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __int2bfloat16_rn(const int i);
/**
* \ingroup XTDK_MATH__BFLOAT16_MISC
* \brief Convert a xpu_bfloat16 to a signed short integer in round-towards-zero mode.
* 
* \details Convert the xpu_bfloat16 floating-point value \p h to a signed short
* integer in round-towards-zero mode. NaN inputs are converted to 0.
* \param[in] h - xpu_bfloat16. Is only being read. 
* 
* \returns short int
* - \p h converted to a signed short integer. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_HOSTDEVICE_BF16_DECL__ short int __bfloat162short_rz(const __xpu_bfloat16 h);
/**
* \ingroup XTDK_MATH__BFLOAT16_MISC
* \brief Convert a signed short integer to a xpu_bfloat16 in round-to-nearest-even
* mode.
* 
* \details Convert the signed short integer value \p i to a xpu_bfloat16 floating-point
* value in round-to-nearest-even mode.
* \param[in] i - short int. Is only being read. 
* 
* \returns xpu_bfloat16
* - \p i converted to xpu_bfloat16. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __short2bfloat16_rn(const short int i);
/**
* \ingroup XTDK_MATH__BFLOAT16_MISC
* \brief Convert a xpu_bfloat16 to an unsigned integer in round-towards-zero mode.
* 
* \details Convert the xpu_bfloat16 floating-point value \p h to an unsigned integer
* in round-towards-zero mode. NaN inputs are converted to 0.
* \param[in] h - xpu_bfloat16. Is only being read. 
* 
* \returns unsigned int
* - \p h converted to an unsigned integer. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_HOSTDEVICE_BF16_DECL__ unsigned int __bfloat162uint_rz(const __xpu_bfloat16 h);
/**
* \ingroup XTDK_MATH__BFLOAT16_MISC
* \brief Convert an unsigned integer to a xpu_bfloat16 in round-to-nearest-even mode.
* 
* \details Convert the unsigned integer value \p i to a xpu_bfloat16 floating-point
* value in round-to-nearest-even mode.
* \param[in] i - unsigned int. Is only being read. 
* 
* \returns xpu_bfloat16
* - \p i converted to xpu_bfloat16. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __uint2bfloat16_rn(const unsigned int i);
/**
* \ingroup XTDK_MATH__BFLOAT16_MISC
* \brief Convert a xpu_bfloat16 to an unsigned short integer in round-towards-zero
* mode.
* 
* \details Convert the xpu_bfloat16 floating-point value \p h to an unsigned short
* integer in round-towards-zero mode. NaN inputs are converted to 0.
* \param[in] h - xpu_bfloat16. Is only being read. 
* 
* \returns unsigned short int
* - \p h converted to an unsigned short integer. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_HOSTDEVICE_BF16_DECL__ unsigned short int __bfloat162ushort_rz(const __xpu_bfloat16 h);
/**
* \ingroup XTDK_MATH__BFLOAT16_MISC
* \brief Convert an unsigned short integer to a xpu_bfloat16 in round-to-nearest-even
* mode.
* 
* \details Convert the unsigned short integer value \p i to a xpu_bfloat16 floating-point
* value in round-to-nearest-even mode.
* \param[in] i - unsigned short int. Is only being read. 
* 
* \returns xpu_bfloat16
* - \p i converted to xpu_bfloat16. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __ushort2bfloat16_rn(const unsigned short int i);
/**
* \ingroup XTDK_MATH__BFLOAT16_MISC
* \brief Convert a xpu_bfloat16 to an unsigned 64-bit integer in round-towards-zero
* mode.
* 
* \details Convert the xpu_bfloat16 floating-point value \p h to an unsigned 64-bit
* integer in round-towards-zero mode. NaN inputs return 0x8000000000000000.
* \param[in] h - xpu_bfloat16. Is only being read. 
* 
* \returns unsigned long long int
* - \p h converted to an unsigned 64-bit integer. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_HOSTDEVICE_BF16_DECL__ unsigned long long int __bfloat162ull_rz(const __xpu_bfloat16 h);
/**
* \ingroup XTDK_MATH__BFLOAT16_MISC
* \brief Convert an unsigned 64-bit integer to a xpu_bfloat16 in round-to-nearest-even
* mode.
* 
* \details Convert the unsigned 64-bit integer value \p i to a xpu_bfloat16 floating-point
* value in round-to-nearest-even mode.
* \param[in] i - unsigned long long int. Is only being read. 
* 
* \returns xpu_bfloat16
* - \p i converted to xpu_bfloat16. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __ull2bfloat16_rn(const unsigned long long int i);
/**
* \ingroup XTDK_MATH__BFLOAT16_MISC
* \brief Convert a xpu_bfloat16 to a signed 64-bit integer in round-towards-zero mode.
* 
* \details Convert the xpu_bfloat16 floating-point value \p h to a signed 64-bit
* integer in round-towards-zero mode. NaN inputs return a long long int with hex value of 0x8000000000000000.
* \param[in] h - xpu_bfloat16. Is only being read. 
* 
* \returns long long int
* - \p h converted to a signed 64-bit integer. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_HOSTDEVICE_BF16_DECL__ long long int __bfloat162ll_rz(const __xpu_bfloat16 h);

/**
* \ingroup XTDK_MATH__BFLOAT16_MISC
* \brief Convert a signed 64-bit integer to a xpu_bfloat16 in round-to-nearest-even
* mode.
* 
* \details Convert the signed 64-bit integer value \p i to a xpu_bfloat16 floating-point
* value in round-to-nearest-even mode.
* \param[in] i - long long int. Is only being read. 
* 
* \returns xpu_bfloat16
* - \p i converted to xpu_bfloat16. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_HOSTDEVICE_BF16_DECL__ __xpu_bfloat16 __ll2bfloat16_rn(const long long int i);

#if !defined warpSize && !defined __local_warpSize
#define warpSize    32
#define __local_warpSize
#endif

/**
* \ingroup XTDK_MATH__BFLOAT16_ARITHMETIC
* \brief Calculates the absolute value of input \p xpu_bfloat16 number and returns the result.
*
* \details Calculates the absolute value of input \p xpu_bfloat16 number and returns the result.
* \param[in] a - xpu_bfloat16. Is only being read. 
*
* \returns xpu_bfloat16
* - The absolute value of a.
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ __xpu_bfloat16 __habs(const __xpu_bfloat16 a);
/**
* \ingroup XTDK_MATH__BFLOAT16_ARITHMETIC
* \brief Performs \p xpu_bfloat16 addition in round-to-nearest-even mode.
*
* \details Performs \p xpu_bfloat16 addition of inputs \p a and \p b, in round-to-nearest-even
* mode.
* \internal
* \req DEEPLEARN-SRM_REQ-94
* \endinternal
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
*
* \returns xpu_bfloat16
* - The sum of \p a and \p b.
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ __xpu_bfloat16 __hadd(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_ARITHMETIC
* \brief Performs \p xpu_bfloat16 subtraction in round-to-nearest-even mode.
*
* \details Subtracts \p xpu_bfloat16 input \p b from input \p a in round-to-nearest
* mode.
* \internal
* \req DEEPLEARN-SRM_REQ-97
* \endinternal
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
*
* \returns xpu_bfloat16
* - The result of subtracting \p b from \p a. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ __xpu_bfloat16 __hsub(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_ARITHMETIC
* \brief Performs \p xpu_bfloat16 multiplication in round-to-nearest-even mode.
*
* \details Performs \p xpu_bfloat16 multiplication of inputs \p a and \p b, in round-to-nearest
* mode.
* \internal
* \req DEEPLEARN-SRM_REQ-99
* \endinternal
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
*
* \returns xpu_bfloat16
* - The result of multiplying \p a and \p b. 
*/
__XTDK_BF16_DECL__ __xpu_bfloat16 __hmul(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_ARITHMETIC
* \brief Performs \p xpu_bfloat16 addition in round-to-nearest-even mode.
*
* \details Performs \p xpu_bfloat16 addition of inputs \p a and \p b, in round-to-nearest-even
* mode. Prevents floating-point contractions of mul+add into fma.
* \internal
* \req DEEPLEARN-SRM_REQ-94
* \endinternal
* \param[in] a - xpu_bfloat16. Is only being read.
* \param[in] b - xpu_bfloat16. Is only being read.
*
* \returns xpu_bfloat16
* - The sum of \p a and \p b.
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ __xpu_bfloat16 __hadd_rn(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_ARITHMETIC
* \brief Performs \p xpu_bfloat16 subtraction in round-to-nearest-even mode.
*
* \details Subtracts \p xpu_bfloat16 input \p b from input \p a in round-to-nearest
* mode. Prevents floating-point contractions of mul+sub into fma.
* \internal
* \req DEEPLEARN-SRM_REQ-97
* \endinternal
* \param[in] a - xpu_bfloat16. Is only being read.
* \param[in] b - xpu_bfloat16. Is only being read.
*
* \returns xpu_bfloat16
* - The result of subtracting \p b from \p a.
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ __xpu_bfloat16 __hsub_rn(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_ARITHMETIC
* \brief Performs \p xpu_bfloat16 multiplication in round-to-nearest-even mode.
*
* \details Performs \p xpu_bfloat16 multiplication of inputs \p a and \p b, in round-to-nearest
* mode. Prevents floating-point contractions of mul+add or sub into fma.
* \internal
* \req DEEPLEARN-SRM_REQ-99
* \endinternal
* \param[in] a - xpu_bfloat16. Is only being read.
* \param[in] b - xpu_bfloat16. Is only being read.
*
* \returns xpu_bfloat16
* - The result of multiplying \p a and \p b.
*/
__XTDK_BF16_DECL__ __xpu_bfloat16 __hmul_rn(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_ARITHMETIC
* \brief Performs \p xpu_bfloat16 division in round-to-nearest-even mode.
* 
* \details Divides \p xpu_bfloat16 input \p a by input \p b in round-to-nearest
* mode.
* \internal
* \req DEEPLEARN-SRM_REQ-98
* \endinternal
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
* 
* \returns xpu_bfloat16
* - The result of dividing \p a by \p b. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__  __xpu_bfloat16 __hdiv(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_ARITHMETIC
* \brief Performs \p xpu_bfloat16 addition in round-to-nearest-even mode, with
* saturation to [0.0, 1.0].
*
* \details Performs \p xpu_bfloat16 add of inputs \p a and \p b, in round-to-nearest-even mode,
* and clamps the result to range [0.0, 1.0]. NaN results are flushed to +0.0.
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
*
* \returns xpu_bfloat16
* - The sum of \p a and \p b, with respect to saturation.
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ __xpu_bfloat16 __hadd_sat(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_ARITHMETIC
* \brief Performs \p xpu_bfloat16 subtraction in round-to-nearest-even mode, with
* saturation to [0.0, 1.0].
*
* \details Subtracts \p xpu_bfloat16 input \p b from input \p a in round-to-nearest
* mode,
* and clamps the result to range [0.0, 1.0]. NaN results are flushed to +0.0.
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
*
* \returns xpu_bfloat16
* - The result of subtraction of \p b from \p a, with respect to saturation.
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ __xpu_bfloat16 __hsub_sat(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_ARITHMETIC
* \brief Performs \p xpu_bfloat16 multiplication in round-to-nearest-even mode, with
* saturation to [0.0, 1.0].
*
* \details Performs \p xpu_bfloat16 multiplication of inputs \p a and \p b, in round-to-nearest
* mode, and clamps the result to range [0.0, 1.0]. NaN results are flushed to
* +0.0.
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
*
* \returns xpu_bfloat16
* - The result of multiplying \p a and \p b, with respect to saturation.
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ __xpu_bfloat16 __hmul_sat(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_ARITHMETIC
* \brief Performs \p xpu_bfloat16 fused multiply-add in round-to-nearest-even mode.
*
* \details Performs \p xpu_bfloat16 multiply on inputs \p a and \p b,
* then performs a \p xpu_bfloat16 add of the result with \p c,
* rounding the result once in round-to-nearest-even mode.
* \internal
* \req DEEPLEARN-SRM_REQ-96
* \endinternal
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
* \param[in] c - xpu_bfloat16. Is only being read. 
*
* \returns xpu_bfloat16
* - The result of fused multiply-add operation on \p
* a, \p b, and \p c. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ __xpu_bfloat16 __hfma(const __xpu_bfloat16 a, const __xpu_bfloat16 b, const __xpu_bfloat16 c);
/**
* \ingroup XTDK_MATH__BFLOAT16_ARITHMETIC
* \brief Performs \p xpu_bfloat16 fused multiply-add in round-to-nearest-even mode,
* with saturation to [0.0, 1.0].
*
* \details Performs \p xpu_bfloat16 multiply on inputs \p a and \p b,
* then performs a \p xpu_bfloat16 add of the result with \p c,
* rounding the result once in round-to-nearest-even mode, and clamps the result
* to range [0.0, 1.0]. NaN results are flushed to +0.0.
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
* \param[in] c - xpu_bfloat16. Is only being read. 
*
* \returns xpu_bfloat16
* - The result of fused multiply-add operation on \p
* a, \p b, and \p c, with respect to saturation. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ __xpu_bfloat16 __hfma_sat(const __xpu_bfloat16 a, const __xpu_bfloat16 b, const __xpu_bfloat16 c);
// /**
// * \ingroup XTDK_MATH__BFLOAT16_ARITHMETIC
// * \brief Negates input \p xpu_bfloat16 number and returns the result.
// *
// * \details Negates input \p xpu_bfloat16 number and returns the result.
// * \internal
// * \req DEEPLEARN-SRM_REQ-100
// * \endinternal
// * \param[in] a - xpu_bfloat16. Is only being read. 
// *
// * \returns xpu_bfloat16
// * - minus a
// * \internal
// * \exception-guarantee no-throw guarantee
// * \behavior reentrant, thread safe
// * \endinternal
// */
__XTDK_BF16_DECL__ __xpu_bfloat16 __hneg(const __xpu_bfloat16 a);
/**
* \ingroup XTDK_MATH__BFLOAT16_COMPARISON
* \brief Performs \p xpu_bfloat16 if-equal comparison.
*
* \details Performs \p xpu_bfloat16 if-equal comparison of inputs \p a and \p b.
* NaN inputs generate false results.
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
*
* \returns bool
* - The boolean result of if-equal comparison of \p a and \p b. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ bool __heq(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_COMPARISON
* \brief Performs \p xpu_bfloat16 not-equal comparison.
*
* \details Performs \p xpu_bfloat16 not-equal comparison of inputs \p a and \p b.
* NaN inputs generate false results.
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
*
* \returns bool
* - The boolean result of not-equal comparison of \p a and \p b.
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ bool __hne(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_COMPARISON
* \brief Performs \p xpu_bfloat16 less-equal comparison.
*
* \details Performs \p xpu_bfloat16 less-equal comparison of inputs \p a and \p b.
* NaN inputs generate false results.
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
*
* \returns bool
* - The boolean result of less-equal comparison of \p a and \p b.
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ bool __hle(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_COMPARISON
* \brief Performs \p xpu_bfloat16 greater-equal comparison.
*
* \details Performs \p xpu_bfloat16 greater-equal comparison of inputs \p a and \p b.
* NaN inputs generate false results.
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
*
* \returns bool
* - The boolean result of greater-equal comparison of \p a and \p b.
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ bool __hge(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_COMPARISON
* \brief Performs \p xpu_bfloat16 less-than comparison.
*
* \details Performs \p xpu_bfloat16 less-than comparison of inputs \p a and \p b.
* NaN inputs generate false results.
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
*
* \returns bool
* - The boolean result of less-than comparison of \p a and \p b.
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ bool __hlt(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_COMPARISON
* \brief Performs \p xpu_bfloat16 greater-than comparison.
*
* \details Performs \p xpu_bfloat16 greater-than comparison of inputs \p a and \p b.
* NaN inputs generate false results.
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
*
* \returns bool
* - The boolean result of greater-than comparison of \p a and \p b.
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ bool __hgt(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_COMPARISON
* \brief Performs \p xpu_bfloat16 unordered if-equal comparison.
*
* \details Performs \p xpu_bfloat16 if-equal comparison of inputs \p a and \p b.
* NaN inputs generate true results.
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
*
* \returns bool
* - The boolean result of unordered if-equal comparison of \p a and
* \p b.
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ bool __hequ(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_COMPARISON
* \brief Performs \p xpu_bfloat16 unordered not-equal comparison.
*
* \details Performs \p xpu_bfloat16 not-equal comparison of inputs \p a and \p b.
* NaN inputs generate true results.
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
*
* \returns bool
* - The boolean result of unordered not-equal comparison of \p a and
* \p b.
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ bool __hneu(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_COMPARISON
* \brief Performs \p xpu_bfloat16 unordered less-equal comparison.
*
* \details Performs \p xpu_bfloat16 less-equal comparison of inputs \p a and \p b.
* NaN inputs generate true results.
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
*
* \returns bool
* - The boolean result of unordered less-equal comparison of \p a and
* \p b.
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ bool __hleu(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_COMPARISON
* \brief Performs \p xpu_bfloat16 unordered greater-equal comparison.
*
* \details Performs \p xpu_bfloat16 greater-equal comparison of inputs \p a and \p b.
* NaN inputs generate true results.
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
*
* \returns bool
* - The boolean result of unordered greater-equal comparison of \p a
* and \p b.
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ bool __hgeu(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_COMPARISON
* \brief Performs \p xpu_bfloat16 unordered less-than comparison.
*
* \details Performs \p xpu_bfloat16 less-than comparison of inputs \p a and \p b.
* NaN inputs generate true results.
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
*
* \returns bool
* - The boolean result of unordered less-than comparison of \p a and
* \p b.
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ bool __hltu(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_COMPARISON
* \brief Performs \p xpu_bfloat16 unordered greater-than comparison.
*
* \details Performs \p xpu_bfloat16 greater-than comparison of inputs \p a and \p b.
* NaN inputs generate true results.
* \param[in] a - xpu_bfloat16. Is only being read. 
* \param[in] b - xpu_bfloat16. Is only being read. 
*
* \returns bool
* - The boolean result of unordered greater-than comparison of \p a
* and \p b.
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ bool __hgtu(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_COMPARISON
* \brief Determine whether \p xpu_bfloat16 argument is a NaN.
*
* \details Determine whether \p xpu_bfloat16 value \p a is a NaN.
* \param[in] a - xpu_bfloat16. Is only being read. 
*
* \returns bool
* - true iff argument is NaN. 
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
// __XTDK_BF16_DECL__ bool __hisnan(const __xpu_bfloat16 a);
// /**
// * \ingroup XTDK_MATH__BFLOAT16_COMPARISON
// * \brief Calculates \p xpu_bfloat16 maximum of two input values.
// *
// * \details Calculates \p xpu_bfloat16 max(\p a, \p b)
// * defined as (\p a > \p b) ? \p a : \p b. 
// * - If either of inputs is NaN, the other input is returned.
// * - If both inputs are NaNs, then canonical NaN is returned.
// * - If values of both inputs are 0.0, then +0.0 > -0.0
// * \param[in] a - xpu_bfloat16. Is only being read.
// * \param[in] b - xpu_bfloat16. Is only being read.
// *
// * \returns xpu_bfloat16
// * \internal
// * \exception-guarantee no-throw guarantee
// * \behavior reentrant, thread safe
// * \endinternal
// */
__XTDK_BF16_DECL__ __xpu_bfloat16 __hmax(const __xpu_bfloat16 a, const __xpu_bfloat16 b);
/**
* \ingroup XTDK_MATH__BFLOAT16_COMPARISON
* \brief Calculates \p xpu_bfloat16 minimum of two input values.
*
* \details Calculates \p xpu_bfloat16 min(\p a, \p b)
* defined as (\p a < \p b) ? \p a : \p b.
* - If either of inputs is NaN, the other input is returned.
* - If both inputs are NaNs, then canonical NaN is returned.
* - If values of both inputs are 0.0, then +0.0 > -0.0
* \param[in] a - xpu_bfloat16. Is only being read.
* \param[in] b - xpu_bfloat16. Is only being read.
*
* \returns xpu_bfloat16
* \internal
* \exception-guarantee no-throw guarantee
* \behavior reentrant, thread safe
* \endinternal
*/
__XTDK_BF16_DECL__ __xpu_bfloat16 __hmin(const __xpu_bfloat16 a, const __xpu_bfloat16 b);

#undef __XTDK_BF16_DECL__
#undef __XTDK_HOSTDEVICE_BF16_DECL__

#endif /* defined(__cplusplus) */

/* Note the .hpp file is included even for host-side compilation, to capture the "xpu_bfloat16" definitions */
#if defined __xpu__
#include "xtdk_bf16.hpp"
#endif

#undef ___XTDK_BF16_STRINGIFY_INNERMOST
#undef __XTDK_BF16_STRINGIFY

#endif /* end of include guard: __XTDK_BF16_H__ */
