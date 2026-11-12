#if !defined(__XPU_KERNEL_XTDK_FP8_HPP__)
#define __XPU_KERNEL_XTDK_FP8_HPP__

#if !defined(__XPU_KERNEL_XTDK_FP8_H__)
#error "Do not include this file directly. Instead, include xtdk_fp8.h."
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
#define __XPU_ALIGN__(n)                                                       \
  alignas(n) /* C++11 kindly gives us a keyword for this */
#else        /* !defined(__CPP_VERSION_AT_LEAST_11_FP8)*/
#if defined(__GNUC__)
#define __XPU_ALIGN__(n) __attribute__((aligned(n)))
#elif defined(_MSC_VER)
#define __XPU_ALIGN__(n) __declspec(align(n))
#else
#define __XPU_ALIGN__(n)
#endif /* defined(__GNUC__) */
#endif /* defined(__CPP_VERSION_AT_LEAST_11_FP8) */
#endif /* defined(__xpu__) */
#endif /* !(defined __XPU_ALIGN__) */

#if !(defined __CPP_VERSION_AT_LEAST_11_FP8)
/* need c++11 for explicit operators */
#define __XTDK_NO_FP8_CONVERSION_OPERATORS__
#endif

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8_storage_t
__xpu_cvt_double_to_fp8(const double x, const __xpu_saturation_t saturate,
                        const __xpu_fp8_interpretation_t fp8_interpretation) {
  unsigned char res;
  unsigned long long int xbits;
#if defined(__xpu_on_host__)
  (void)std::memcpy(&xbits, &x, sizeof(x));
#else
  __builtin_memcpy(&xbits, &x, sizeof(x));
#endif /* defined(__xpu_on_device__) */

  unsigned char FP8_MAXNORM;
  unsigned char FP8_MANTISSA_MASK;
  unsigned short int FP8_EXP_BIAS;
  unsigned long long int FP8_SIGNIFICAND_BITS;
  const unsigned long long int DP_INF_BITS = 0x7FF0000000000000ULL;
  unsigned long long int FP8_MINDENORM_O2;
  unsigned long long int FP8_OVERFLOW_THRESHOLD;
  unsigned long long int FP8_MINNORM;

  if (fp8_interpretation == __XPU_E4M3) {
    FP8_EXP_BIAS = 7U;
    FP8_SIGNIFICAND_BITS = 4ULL;
    FP8_MANTISSA_MASK = 0x7U;
    FP8_MINDENORM_O2 = 0x3F50000000000000ULL; // mindenorm/2 = 2^-10
    FP8_OVERFLOW_THRESHOLD =
        0x407D000000000000ULL; // maxnorm + 1/2ulp = 0x1.Cp+8 + 0x1p+4
    FP8_MAXNORM = 0x7EU;
    FP8_MINNORM = 0x3F90000000000000ULL; // minnorm = 2^-6
  } else {                               //__XPU_E5M2
    FP8_EXP_BIAS = 15U;
    FP8_SIGNIFICAND_BITS = 3ULL;
    FP8_MANTISSA_MASK = 0x3U;
    FP8_MINDENORM_O2 = 0x3EE0000000000000ULL; // mindenorm/2 = 2^-17
    FP8_OVERFLOW_THRESHOLD =
        0x40EE000000000000ULL -
        1ULL; // maxnorm + 1/2ulp = 0x1.Ep+15, and -1 to have common code
    FP8_MAXNORM = 0x7BU;
    FP8_MINNORM = 0x3F10000000000000ULL; // minnorm = 2^-14
  }

  // 1/2 LSB of the target format, positioned in double precision mantissa
  // helpful in midpoints detection during round-to-nearest-even step
  const unsigned long long int FP8_DP_HALF_ULP =
      (unsigned long long int)1ULL << (53ULL - FP8_SIGNIFICAND_BITS - 1ULL);
  // prepare sign bit in target format
  unsigned char sign = (unsigned char)((xbits >> 63ULL) << 7U);
  // prepare exponent field in target format
  unsigned char exp =
      (unsigned char)((((unsigned short int)(xbits >> 52ULL)) & 0x7FFU) -
                      1023U + FP8_EXP_BIAS);
  // round mantissa to target format width, rounding towards zero
  unsigned char mantissa =
      (unsigned char)(xbits >> (53ULL - FP8_SIGNIFICAND_BITS)) &
      FP8_MANTISSA_MASK;
  unsigned long long int absx = xbits & 0x7FFFFFFFFFFFFFFFULL;

  if (absx <= FP8_MINDENORM_O2) {
    // zero or underflow
    res = 0U;
  } else if (absx > DP_INF_BITS) {
    // NaN
    if (fp8_interpretation == __XPU_E4M3) {
      res = 0x7FU;
    } else {
      // NaN --> QNaN
      res = 0x7EU | mantissa;
    }
  } else if (absx > FP8_OVERFLOW_THRESHOLD) {
    if (saturate == __XPU_SATFINITE) {
      res = FP8_MAXNORM;
    } else {
      // __XPU_NOSAT
      if (fp8_interpretation == __XPU_E4M3) {
        // no Inf in E4M3
        res = 0x7FU; // NaN
      } else {
        res = 0x7CU; // Inf in E5M2
      }
    }
  } else if (absx >= FP8_MINNORM) {
    res = (unsigned char)((exp << (FP8_SIGNIFICAND_BITS - 1U)) | mantissa);
    // rounded-off bits
    unsigned long long int round = xbits & ((FP8_DP_HALF_ULP << 1ULL) - 1ULL);
    // round-to-nearest-even adjustment
    if ((round > FP8_DP_HALF_ULP) ||
        ((round == FP8_DP_HALF_ULP) && (mantissa & 1U))) {
      res = (unsigned char)(res + 1U);
    }
  } else // Denormal range
  {
    unsigned char shift = (unsigned char)(1U - exp);
    // add implicit leading bit
    mantissa |= (unsigned char)(1U << (FP8_SIGNIFICAND_BITS - 1U));
    // additional round-off due to denormalization
    res = (unsigned char)(mantissa >> shift);

    // rounded-off bits, including implicit leading bit
    unsigned long long int round =
        (xbits | ((unsigned long long int)1ULL << (53ULL - 1ULL))) &
        ((FP8_DP_HALF_ULP << (shift + 1ULL)) - 1ULL);
    // round-to-nearest-even adjustment
    if ((round > (FP8_DP_HALF_ULP << shift)) ||
        ((round == (FP8_DP_HALF_ULP << shift)) && (res & 1U))) {
      res = (unsigned char)(res + 1U);
    }
  }

  res |= sign;

  return (__xpu_fp8_storage_t)res;
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x2_storage_t __xpu_cvt_double2_to_fp8x2(
    const double2 x, const __xpu_saturation_t saturate,
    const __xpu_fp8_interpretation_t fp8_interpretation) {
  __xpu_fp8x2_storage_t storage =
      (__xpu_fp8x2_storage_t)__xpu_cvt_double_to_fp8(x.y, saturate,
                                                     fp8_interpretation);
  storage = (__xpu_fp8x2_storage_t)(storage << 8U);
  storage =
      (__xpu_fp8x2_storage_t)(storage | __xpu_cvt_double_to_fp8(
                                            x.x, saturate, fp8_interpretation));
  return storage;
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8_storage_t
__xpu_cvt_float_to_fp8(const float x, const __xpu_saturation_t saturate,
                       const __xpu_fp8_interpretation_t fp8_interpretation) {
  __xpu_fp8_storage_t res = 0U;
  unsigned int xbits;
#if defined(__xpu_on_host__)
  (void)std::memcpy(&xbits, &x, sizeof(x));
#else
  __builtin_memcpy(&xbits, &x, sizeof(x));
#endif

  // isnan
  if ((xbits & 0x7FFFFFFFU) > 0x7F800000U) {
    // Canonical NaN
    xbits = 0x7FFFFFFFU;
  }

  float fx;
#if defined(__xpu_on_host__)
  (void)std::memcpy(&fx, &xbits, sizeof(xbits));
#else
  __builtin_memcpy(&fx, &xbits, sizeof(xbits));
#endif

  const double dx = (double)fx;
  res = __xpu_cvt_double_to_fp8(dx, saturate, fp8_interpretation);
  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x2_storage_t
__xpu_cvt_float2_to_fp8x2(const float2 x, const __xpu_saturation_t saturate,
                          const __xpu_fp8_interpretation_t fp8_interpretation) {
  __xpu_fp8x2_storage_t storage;
  storage = (__xpu_fp8x2_storage_t)__xpu_cvt_float_to_fp8(x.y, saturate,
                                                          fp8_interpretation);
  storage = (__xpu_fp8x2_storage_t)(storage << 8U);
  storage =
      (__xpu_fp8x2_storage_t)(storage | __xpu_cvt_float_to_fp8(
                                            x.x, saturate, fp8_interpretation));
  return storage;
}

__XTDK_HOSTDEVICE_FP8_DECL__ float
__internal_halfraw_to_float(const __half_raw x) {
  float f;
  const unsigned int ux = (unsigned int)x.x;
  unsigned int sign = (ux >> 15U) & 1U;
  unsigned int exponent = (ux >> 10U) & 0x1fU;
  unsigned int mantissa = (ux & 0x3ffU) << 13U;
  if (exponent == 0x1fU) { /* NaN or Inf */
    /* discard sign of a NaN */
    sign = ((mantissa != 0U) ? (sign >> 1U) : sign);
    mantissa = ((mantissa != 0U) ? 0x7fffffU : 0U);
    exponent = 0xffU;
  } else if (exponent == 0U) { /* Denorm or Zero */
    if (mantissa != 0U) {
      unsigned int msb;
      exponent = 0x71U;
      do {
        msb = (mantissa & 0x400000U);
        mantissa <<= 1U; /* normalize */
        --exponent;
      } while (msb == 0U);
      mantissa &= 0x7fffffU; /* 1.mantissa is implicit */
    }
  } else {
    exponent += 0x70U;
  }
  const unsigned int u = ((sign << 31U) | (exponent << 23U) | mantissa);
#if defined(__xpu_on_host__)
  (void)std::memcpy(&f, &u, sizeof(u));
#else
  __builtin_memcpy(&f, &u, sizeof(u));
#endif
  return f;
}

__XTDK_HOSTDEVICE_FP8_DECL__ float2
__internal_halfraw2_to_float2(const __half2_raw x) {
  __half_raw raw;
  float2 res;
  raw.x = x.x;
  res.x = __internal_halfraw_to_float(raw);
  raw.x = x.y;
  res.y = __internal_halfraw_to_float(raw);
  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8_storage_t
__xpu_cvt_halfraw_to_fp8(const __half_raw x, const __xpu_saturation_t saturate,
                         const __xpu_fp8_interpretation_t fp8_interpretation) {
  __xpu_fp8_storage_t res = 0U;
  float fx = __internal_halfraw_to_float(x);
  res = __xpu_cvt_float_to_fp8(fx, saturate, fp8_interpretation);
  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x2_storage_t __xpu_cvt_halfraw2_to_fp8x2(
    const __half2_raw x, const __xpu_saturation_t saturate,
    const __xpu_fp8_interpretation_t fp8_interpretation) {
  __xpu_fp8x2_storage_t tmp;
  __half_raw raw;
  raw.x = x.x;
  __xpu_fp8_storage_t lo =
      __xpu_cvt_halfraw_to_fp8(raw, saturate, fp8_interpretation);
  raw.x = x.y;
  __xpu_fp8_storage_t hi =
      __xpu_cvt_halfraw_to_fp8(raw, saturate, fp8_interpretation);
  tmp = hi;
  tmp = (__xpu_fp8x2_storage_t)(tmp << 8U);
  tmp = (__xpu_fp8x2_storage_t)(tmp | lo);
  return tmp;
}

__XTDK_HOSTDEVICE_FP8_DECL__ float
__internal_bf16raw_to_float(const __xpu_bfloat16_raw x) {
  const unsigned int ux = ((unsigned int)x.x) << 16U;
  float fx;
#if defined(__xpu_on_host__)
  (void)std::memcpy(&fx, &ux, sizeof(ux));
#else
  __builtin_memcpy(&fx, &ux, sizeof(ux));
#endif
  return fx;
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_bfloat16_raw
__internal_float_to_bf16raw_rz(const float x) {
  unsigned int ux;
  __xpu_bfloat16_raw r;
#if defined(__xpu_on_host__)
  (void)std::memcpy(&ux, &x, sizeof(x));
#else
  __builtin_memcpy(&ux, &x, sizeof(x));
#endif
  r.x = (unsigned short int)(ux >> 16U);
  return r;
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8_storage_t __xpu_cvt_bfloat16raw_to_fp8(
    const __xpu_bfloat16_raw x, const __xpu_saturation_t saturate,
    const __xpu_fp8_interpretation_t fp8_interpretation) {
  const float fx = __internal_bf16raw_to_float(x);
  const __xpu_fp8_storage_t res =
      __xpu_cvt_float_to_fp8(fx, saturate, fp8_interpretation);
  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x2_storage_t
__xpu_cvt_bfloat16raw2_to_fp8x2(
    const __xpu_bfloat162_raw x, const __xpu_saturation_t saturate,
    const __xpu_fp8_interpretation_t fp8_interpretation) {
  __xpu_fp8x2_storage_t storage;
  __xpu_bfloat16_raw raw;
  raw.x = x.y;
  storage = (__xpu_fp8x2_storage_t)__xpu_cvt_bfloat16raw_to_fp8(
      raw, saturate, fp8_interpretation);
  storage = (__xpu_fp8x2_storage_t)(storage << 8U);
  raw.x = x.x;
  storage =
      (__xpu_fp8x2_storage_t)(storage | __xpu_cvt_bfloat16raw_to_fp8(
                                            raw, saturate, fp8_interpretation));

  return storage;
}

__XTDK_HOSTDEVICE_FP8_DECL__ __half2_raw __xpu_cvt_fp8x2_to_halfraw2(
    const __xpu_fp8x2_storage_t x,
    const __xpu_fp8_interpretation_t fp8_interpretation);
__XTDK_HOSTDEVICE_FP8_DECL__ __half_raw
__xpu_cvt_fp8_to_halfraw(const __xpu_fp8_storage_t x,
                         const __xpu_fp8_interpretation_t fp8_interpretation) {
  __half_raw res;
  res.x = 0U;
  unsigned short int ur = (unsigned short int)x;
  ur = (unsigned short int)(ur << 8U);

  if (fp8_interpretation == __XPU_E5M2) {
    if ((ur & 0x7FFFU) > 0x7C00U) {
      /* If NaN, return canonical NaN */
      ur = 0x7FFFU;
    }
  } else { // __XPU_E4M3
    unsigned short int sign = ur & 0x8000U;
    unsigned short int exponent =
        (unsigned short int)(((ur & 0x7800U) >> 1U) + 0x2000U);
    unsigned short int mantissa = (ur & 0x0700U) >> 1U;
    unsigned char absx = 0x7FU & (unsigned char)x;

    if (absx == 0x7FU) // NaN
    {
      ur = 0x7FFFU; // fp16 canonical NaN, discard sign
    } else if (exponent == 0x2000U) {
      // zero or denormal
      if (mantissa != 0U) {
        // normalize
        mantissa = (unsigned short int)(mantissa << 1U);
        while ((mantissa & 0x0400U) == 0U) {
          mantissa = (unsigned short int)(mantissa << 1U);
          exponent = (unsigned short int)(exponent - 0x0400U);
        }
        // discard implicit leading bit
        mantissa &= 0x03FFU;
      } else { // Zero
        exponent = 0U;
      }

      ur = (sign | exponent) | mantissa;
    } else {
      ur = (sign | exponent) | mantissa;
    }
  }
  res.x = ur;
  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__ __half2_raw __xpu_cvt_fp8x2_to_halfraw2(
    const __xpu_fp8x2_storage_t x,
    const __xpu_fp8_interpretation_t fp8_interpretation) {
  __half2_raw res;
  res.x =
      __xpu_cvt_fp8_to_halfraw((__xpu_fp8_storage_t)x, fp8_interpretation).x;
  res.y = __xpu_cvt_fp8_to_halfraw((__xpu_fp8_storage_t)(x >> 8U),
                                   fp8_interpretation)
              .x;
  return res;
}








__XTDK_HOSTDEVICE_FP8_DECL__
__xpu_fp8_storage_t
__xpu_cvt_bfloat16raw_to_e8m0(const __xpu_bfloat16_raw x,
                              const __xpu_saturation_t saturate,
                              const xpuRoundMode rounding) {
  // extract exponent bits, provides non-saturated result in RZ
  __xpu_fp8_storage_t res = (unsigned char)(x.x >> 7U);

  if (rounding == xpuRoundPosInf) {
    // round-up if mantissa non-zero and |x| > 2^-127 and finite
    if ((x.x & 0x007FU) && ((x.x & 0x7FFFU) > 0x0040U) &&
        ((x.x & 0x7FFFU) < 0x7F80U))
      res++;
  }

  // Handle saturation of non-NaN large inputs to finite
  if (saturate == __XPU_SATFINITE) {
    // non-NaN, Overflow --> Max
    if (((x.x & 0x7FFFU) <= 0x7F80U) && (res == 0xFFU)) {
      res--;
    }
  }
  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__
__xpu_fp8x2_storage_t
__xpu_cvt_bfloat162raw_to_e8m0x2(const __xpu_bfloat162_raw x,
                                 const __xpu_saturation_t saturate,
                                 const xpuRoundMode rounding) {
#if defined(__xpu_on_host__)
  assert((rounding == xpuRoundZero) || (rounding == xpuRoundPosInf));
#else
  assert_device((rounding == xpuRoundZero) || (rounding == xpuRoundPosInf));
#endif
  __xpu_bfloat16_raw lo, hi;
  lo.x = x.x;
  hi.x = x.y;
  __xpu_fp8x2_storage_t ures =
      __xpu_cvt_bfloat16raw_to_e8m0(hi, saturate, rounding);
  ures <<= (unsigned short)8U;
  ures |= __xpu_cvt_bfloat16raw_to_e8m0(lo, saturate, rounding);
  return ures;
}

__XTDK_HOSTDEVICE_FP8_DECL__ unsigned int
__internal_fp8_float_as_uint(const float f) {
  unsigned int u;
#if defined(__xpu_on_device__)
  __builtin_memcpy(&u, &f, sizeof(f));
#else
  std::memcpy(&u, &f, sizeof(f));
#endif /* defined(__xpu_on_device__) */
  return u;
}

__XTDK_HOSTDEVICE_FP8_DECL__ float
__internal_fp8_uint_as_float(const unsigned int u) {
  float f;
#if defined(__xpu_on_device__)
  __builtin_memcpy(&f, &u, sizeof(u));
#else
  std::memcpy(&f, &u, sizeof(u));
#endif /* defined(__xpu_on_device__) */
  return f;
}

__XTDK_HOSTDEVICE_FP8_DECL__
__xpu_fp8_storage_t __xpu_cvt_float_to_e8m0(const float x,
                                            const __xpu_saturation_t saturate,
                                            const xpuRoundMode rounding) {
#if defined(__xpu_on_host__)
  assert((rounding == xpuRoundZero) || (rounding == xpuRoundPosInf));
#else
  assert_device((rounding == xpuRoundZero) || (rounding == xpuRoundPosInf));
#endif
  __xpu_fp8_storage_t res = 0U;
  if (rounding == xpuRoundZero) {
    res = __xpu_cvt_bfloat16raw_to_e8m0(
        static_cast<__xpu_bfloat16_raw>(__float2bfloat16_rz(x)), saturate,
        rounding);
  } else { // xpuRoundPosInf
    float absx = __internal_fp8_uint_as_float(
        (__internal_fp8_float_as_uint(x) << (unsigned)1U) >> (unsigned)1U);
    res = __xpu_cvt_bfloat16raw_to_e8m0(__float2bfloat16_ru(absx), saturate,
                                        rounding);
  }
  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__
__xpu_fp8x2_storage_t
__xpu_cvt_float2_to_e8m0x2(const float2 x, const __xpu_saturation_t saturate,
                           const xpuRoundMode rounding) {
#if defined(__xpu_on_host__)
  assert((rounding == xpuRoundZero) || (rounding == xpuRoundPosInf));
#else
  assert_device((rounding == xpuRoundZero) || (rounding == xpuRoundPosInf));
#endif
  __xpu_fp8x2_storage_t res = 0U;
  res = __xpu_cvt_float_to_e8m0(x.y, saturate, rounding);
  res <<= (unsigned short)8U;
  res |= __xpu_cvt_float_to_e8m0(x.x, saturate, rounding);
  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__
float __internal_double_to_float_with_sticky(double x) {
  const float f = static_cast<float>(x);
  const double d = static_cast<double>(f);
  unsigned int u = __internal_fp8_float_as_uint(f);
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
  return __internal_fp8_uint_as_float(u);
}

__XTDK_HOSTDEVICE_FP8_DECL__
__xpu_fp8_storage_t __xpu_cvt_double_to_e8m0(const double x,
                                             const __xpu_saturation_t saturate,
                                             const xpuRoundMode rounding) {
  float fx_with_sticky = __internal_double_to_float_with_sticky(x);
  __xpu_fp8_storage_t res =
      __xpu_cvt_float_to_e8m0(fx_with_sticky, saturate, rounding);

  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__
__xpu_fp8x2_storage_t
__xpu_cvt_double2_to_e8m0x2(const double2 x, const __xpu_saturation_t saturate,
                            const xpuRoundMode rounding) {
  float2 f;
  f.x = __internal_double_to_float_with_sticky(x.x);
  f.y = __internal_double_to_float_with_sticky(x.y);
  return __xpu_cvt_float2_to_e8m0x2(f, saturate, rounding);
}

__XTDK_HOSTDEVICE_FP8_DECL__
unsigned short __internal_e8m0_to_bf16(const __xpu_fp8_storage_t x) {
  unsigned short res;
  // shift bias exponent bits into place
  res = ((unsigned short)x) << 7U;

  if (x == 0xFFU) {
    res = 0x7FFFU; // NaN --> Canonical QNaN
  } else if (x == 0U) {
    res = 0x0040U; // 2^-127
  }

  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__
__xpu_bfloat16_raw __xpu_cvt_e8m0_to_bf16raw(const __xpu_fp8_storage_t x) {
  __xpu_bfloat16_raw res;
  res.x = __internal_e8m0_to_bf16(x);

  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__
__xpu_bfloat162_raw
__xpu_cvt_e8m0x2_to_bf162raw(const __xpu_fp8x2_storage_t x) {
  __xpu_bfloat162_raw res;
  res.x = __internal_e8m0_to_bf16((__xpu_fp8_storage_t)x);
  res.y =
      __internal_e8m0_to_bf16((__xpu_fp8_storage_t)(x >> (unsigned short)8U));

  return res;
}










__XTDK_HOSTDEVICE_FP8_DECL__ unsigned int
__internal_pack_u16x2_to_u32(const unsigned short int src_lo,
                             const unsigned short int src_hi) {
  unsigned int dst = (static_cast<unsigned int>(src_hi) << 16U) |
                     static_cast<unsigned int>(src_lo);
  return dst;
}

/* All other definitions in this file are only visible to C++ compilers */
#if defined(__cplusplus)

/**
 * \defgroup XTDK_MATH_FP8_E5M2_STRUCT C++ struct for handling fp8 data type of
 * e5m2 kind. \ingroup XTDK_MATH_INTRINSIC_FP8
 */

/**
 * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
 * \brief __xpu_fp8_e5m2 datatype
 *
 * \details This structure implements the datatype for handling
 * \p fp8 floating-point numbers of \p e5m2 kind:
 * with 1 sign, 5 exponent, 1 implicit and 2 explicit mantissa bits.
 *
 * The structure implements converting constructors and operators.
 */
struct __XPU_ALIGN__(1) __xpu_fp8_e5m2 {
public:
  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Storage variable contains the \p fp8 floating-point data.
   */
  __xpu_fp8_storage_t __x;

  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Constructor by default.
   */
#if defined(__CPP_VERSION_AT_LEAST_11_FP8)
  __xpu_fp8_e5m2() = default;
#else
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e5m2() {}
#endif /* defined(__CPP_VERSION_AT_LEAST_11_FP8) */

#if !defined(__XTDK_NO_FP8_CONVERSIONS__)

  /* Construct from wider FP types */
  /* Note we do avoid constructor init-list because of special host/device
   * compilation rules */

  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Constructor from \p __half data type, relies on \p __XPU_SATFINITE
   * behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e5m2(const __half f) {
    __x = __xpu_cvt_halfraw_to_fp8(static_cast<__half_raw>(f), __XPU_SATFINITE,
                                   __XPU_E5M2);
  }
  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Constructor from \p __xpu_bfloat16 data type, relies on \p __XPU_SATFINITE
   * behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e5m2(const __xpu_bfloat16 f) {
    __x = __xpu_cvt_bfloat16raw_to_fp8(static_cast<__xpu_bfloat16_raw>(f),
                                       __XPU_SATFINITE, __XPU_E5M2);
  }
  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Constructor from \p float data type, relies on \p __XPU_SATFINITE behavior
   * for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e5m2(const float f) {
    __x = __xpu_cvt_float_to_fp8(f, __XPU_SATFINITE, __XPU_E5M2);
  }
  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Constructor from \p double data type, relies on \p __XPU_SATFINITE
   * behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e5m2(const double f) {
    __x = __xpu_cvt_double_to_fp8(f, __XPU_SATFINITE, __XPU_E5M2);
  }

  /* Converts from integral */

  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Constructor from \p unsigned \p short \p int data type, relies on \p
   * __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__
  __xpu_fp8_e5m2(const unsigned short int val) {
    __x = static_cast<__xpu_fp8_e5m2>(static_cast<float>(val)).__x;
  }
  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Constructor from \p unsigned \p int data type, relies on \p
   * __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e5m2(const unsigned int val) {
    __x = static_cast<__xpu_fp8_e5m2>(static_cast<float>(val)).__x;
  }
  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Constructor from \p unsigned \p long \p long \p int data type, relies on
   * \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__
  __xpu_fp8_e5m2(const unsigned long long int val) {
    __x = static_cast<__xpu_fp8_e5m2>(static_cast<float>(val)).__x;
  }

  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Constructor from \p short \p int data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e5m2(const short int val) {
    __x = static_cast<__xpu_fp8_e5m2>(static_cast<float>(val)).__x;
  }
  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Constructor from \p int data type, relies on \p __XPU_SATFINITE behavior
   * for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e5m2(const int val) {
    __x = static_cast<__xpu_fp8_e5m2>(static_cast<float>(val)).__x;
  }
  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Constructor from \p long \p long \p int data type, relies on \p
   * __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e5m2(const long long int val) {
    __x = static_cast<__xpu_fp8_e5m2>(static_cast<float>(val)).__x;
  }

#if !defined(__XTDK_NO_FP8_CONVERSION_OPERATORS__)
  /* Widening FP converts */
  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Conversion operator to \p __half data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator __half() const {
    return static_cast<__half>(__xpu_cvt_fp8_to_halfraw(__x, __XPU_E5M2));
  }
  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Conversion operator to \p float data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator float() const {
    return __internal_halfraw_to_float(
        __xpu_cvt_fp8_to_halfraw(__x, __XPU_E5M2));
  }
  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Conversion operator to \p __xpu_bfloat16 data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator __xpu_bfloat16() const {
    return static_cast<__xpu_bfloat16>(
        __internal_float_to_bf16raw_rz(float(*this)));
  }
  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Conversion operator to \p double data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator double() const {
    return static_cast<double>(float(*this));
  }

  /* Convert to integral */

  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Conversion operator to \p unsigned \p char data type.
   * Clamps negative and too large inputs to the output range.
   * \p NaN inputs convert to \p zero.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator unsigned char() const {
    unsigned char i;
    const float f = float(*this);
    const unsigned char max_val = 0xFFU;
    const unsigned char min_val = 0U;
    const unsigned char bits = (*this).__x;
    // saturation fixup
    if ((bits & 0x7FU) > 0x7CU) {
      // NaN
      i = 0;
    } else if (f > static_cast<float>(max_val)) {
      // saturate maximum
      i = max_val;
    } else if (f < static_cast<float>(min_val)) {
      // saturate minimum
      i = min_val;
    } else {
      // normal value
      i = static_cast<unsigned char>(f);
    }
    return i;
  }
  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Conversion operator to \p unsigned \p short \p int data type.
   * Clamps negative and too large inputs to the output range.
   * \p NaN inputs convert to \p zero.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator unsigned short int() const {
    return __half2ushort_rz(__half(*this));
  }
  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Conversion operator to \p unsigned \p int data type.
   * Clamps negative and too large inputs to the output range.
   * \p NaN inputs convert to \p zero.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator unsigned int() const {
    return __half2uint_rz(__half(*this));
  }
  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Conversion operator to \p unsigned \p long \p long \p int data type.
   * Clamps negative and too large inputs to the output range.
   * \p NaN inputs convert to \p 0x8000000000000000ULL.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator unsigned long long int() const {
    return __half2ull_rz(__half(*this));
  }

  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Conversion operator to \p signed \p char data type.
   * Clamps too large inputs to the output range.
   * \p NaN inputs convert to \p zero.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator signed char() const {
    signed char i;
    const float f = float(*this);
    const signed char max_val = (signed char)0x7FU;
    const signed char min_val = (signed char)0x80U;
    const unsigned char bits = (*this).__x;
    // saturation fixup
    if ((bits & 0x7FU) > 0x7CU) {
      // NaN
      i = 0;
    } else if (f > static_cast<float>(max_val)) {
      // saturate maximum
      i = max_val;
    } else if (f < static_cast<float>(min_val)) {
      // saturate minimum
      i = min_val;
    } else {
      // normal value
      i = static_cast<signed char>(f);
    }
    return i;
  }
  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Conversion operator to \p short \p int data type.
   * Clamps too large inputs to the output range.
   * \p NaN inputs convert to \p zero.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator short int() const {
    return __half2short_rz(__half(*this));
  }
  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Conversion operator to \p int data type.
   * Clamps too large inputs to the output range.
   * \p NaN inputs convert to \p zero.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator int() const {
    return __half2int_rz(__half(*this));
  }
  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Conversion operator to \p long \p long \p int data type.
   * Clamps too large inputs to the output range.
   * \p NaN inputs convert to \p 0x8000000000000000LL.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator long long int() const {
    return __half2ll_rz(__half(*this));
  }

  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Conversion operator to \p bool data type.
   * +0 and -0 inputs convert to \p false.
   * Non-zero inputs convert to \p true.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator bool() const {
    return (__x & 0x7FU) != 0U;
  }
#endif /* !defined(__XTDK_NO_FP8_CONVERSION_OPERATORS__) */
#endif /* !defined(__XTDK_NO_FP8_CONVERSIONS__) */
};

/**
 * \defgroup XTDK_MATH_FP8X2_E5M2_STRUCT C++ struct for handling vector type of
 * two fp8 values of e5m2 kind. \ingroup XTDK_MATH_INTRINSIC_FP8
 */

/**
 * \ingroup XTDK_MATH_FP8X2_E5M2_STRUCT
 * \brief __xpu_fp8x2_e5m2 datatype
 *
 * \details This structure implements the datatype for handling two
 * \p fp8 floating-point numbers of \p e5m2 kind each:
 * with 1 sign, 5 exponent, 1 implicit and 2 explicit mantissa bits.
 *
 * The structure implements converting constructors and operators.
 */
struct __XPU_ALIGN__(2) __xpu_fp8x2_e5m2 {
public:
  /**
   * \ingroup XTDK_MATH_FP8X2_E5M2_STRUCT
   * Storage variable contains the vector of two \p fp8 floating-point data
   * values.
   */
  __xpu_fp8x2_storage_t __x;

  /**
   * \ingroup XTDK_MATH_FP8X2_E5M2_STRUCT
   * Constructor by default.
   */
#if defined(__CPP_VERSION_AT_LEAST_11_FP8)
  __xpu_fp8x2_e5m2() = default;
#else
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x2_e5m2() {}
#endif /* defined(__CPP_VERSION_AT_LEAST_11_FP8) */

#if !defined(__XTDK_NO_FP8_CONVERSIONS__)

  /* Construct from wider types */

  /**
   * \ingroup XTDK_MATH_FP8X2_E5M2_STRUCT
   * Constructor from \p __half2 data type, relies on \p __XPU_SATFINITE
   * behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x2_e5m2(const __half2 f) {
    __x = __xpu_cvt_halfraw2_to_fp8x2(static_cast<__half2_raw>(f),
                                      __XPU_SATFINITE, __XPU_E5M2);
  }
  /**
   * \ingroup XTDK_MATH_FP8X2_E5M2_STRUCT
   * Constructor from \p __xpu_bfloat162 data type, relies on \p __XPU_SATFINITE
   * behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x2_e5m2(const __xpu_bfloat162 f) {
    __x = __xpu_cvt_bfloat16raw2_to_fp8x2(static_cast<__xpu_bfloat162_raw>(f),
                                          __XPU_SATFINITE, __XPU_E5M2);
  }
  /**
   * \ingroup XTDK_MATH_FP8X2_E5M2_STRUCT
   * Constructor from \p float2 data type, relies on \p __XPU_SATFINITE
   * behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x2_e5m2(const float2 f) {
    __x = __xpu_cvt_float2_to_fp8x2(f, __XPU_SATFINITE, __XPU_E5M2);
  }
  /**
   * \ingroup XTDK_MATH_FP8X2_E5M2_STRUCT
   * Constructor from \p double2 data type, relies on \p __XPU_SATFINITE
   * behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x2_e5m2(const double2 f) {
    __x = __xpu_cvt_double2_to_fp8x2(f, __XPU_SATFINITE, __XPU_E5M2);
  }

#if !defined(__XTDK_NO_FP8_CONVERSION_OPERATORS__)
  /* Widening converts */
  /**
   * \ingroup XTDK_MATH_FP8X2_E5M2_STRUCT
   * Conversion operator to \p __half2 data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator __half2() const {
    return static_cast<__half2>(__xpu_cvt_fp8x2_to_halfraw2(__x, __XPU_E5M2));
  }
  /**
   * \ingroup XTDK_MATH_FP8X2_E5M2_STRUCT
   * Conversion operator to \p float2 data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator float2() const {
    return __internal_halfraw2_to_float2(
        __xpu_cvt_fp8x2_to_halfraw2(__x, __XPU_E5M2));
  }
#endif /* !defined(__XTDK_NO_FP8_CONVERSION_OPERATORS__) */
#endif /* !defined(__XTDK_NO_FP8_CONVERSIONS__) */
};

/**
 * \defgroup XTDK_MATH_FP8X4_E5M2_STRUCT C++ struct for handling vector type of
 * four fp8 values of e5m2 kind. \ingroup XTDK_MATH_INTRINSIC_FP8
 */

/**
 * \ingroup XTDK_MATH_FP8X4_E5M2_STRUCT
 * \brief __xpu_fp8x4_e5m2 datatype
 *
 * \details This structure implements the datatype for handling four
 * \p fp8 floating-point numbers of \p e5m2 kind each:
 * with 1 sign, 5 exponent, 1 implicit and 2 explicit mantissa bits.
 *
 * The structure implements converting constructors and operators.
 */
struct __XPU_ALIGN__(4) __xpu_fp8x4_e5m2 {
public:
  /**
   * \ingroup XTDK_MATH_FP8X4_E5M2_STRUCT
   * Storage variable contains the vector of four \p fp8 floating-point data
   * values.
   */
  __xpu_fp8x4_storage_t __x;

  /**
   * \ingroup XTDK_MATH_FP8X4_E5M2_STRUCT
   * Constructor by default.
   */
#if defined(__CPP_VERSION_AT_LEAST_11_FP8)
  __xpu_fp8x4_e5m2() = default;
#else
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e5m2() {}
#endif /* defined(__CPP_VERSION_AT_LEAST_11_FP8) */

#if !defined(__XTDK_NO_FP8_CONVERSIONS__)

  /* Construct from wider types */

  /**
   * \ingroup XTDK_MATH_FP8X4_E5M2_STRUCT
   * Constructor from a pair of \p __half2 data type values,
   * relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e5m2(const __half2 flo,
                                                    const __half2 fhi) {
    const __xpu_fp8x2_storage_t rlo = __xpu_cvt_halfraw2_to_fp8x2(
        static_cast<__half2_raw>(flo), __XPU_SATFINITE, __XPU_E5M2);
    const __xpu_fp8x2_storage_t rhi = __xpu_cvt_halfraw2_to_fp8x2(
        static_cast<__half2_raw>(fhi), __XPU_SATFINITE, __XPU_E5M2);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
  }
  /**
   * \ingroup XTDK_MATH_FP8X4_E5M2_STRUCT
   * Constructor from a pair of \p __xpu_bfloat162 data type values,
   * relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e5m2(const __xpu_bfloat162 flo,
                                                    const __xpu_bfloat162 fhi) {
    const __xpu_fp8x2_storage_t rlo = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(flo), __XPU_SATFINITE, __XPU_E5M2);
    const __xpu_fp8x2_storage_t rhi = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(fhi), __XPU_SATFINITE, __XPU_E5M2);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
  }
  /**
   * \ingroup XTDK_MATH_FP8X4_E5M2_STRUCT
   * Constructor from \p float4 vector data type,
   * relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e5m2(const float4 f) {
    const float2 flo = {f.x, f.y};
    const float2 fhi = {f.z, f.w};
    const __xpu_fp8x2_storage_t rlo =
        __xpu_cvt_float2_to_fp8x2(flo, __XPU_SATFINITE, __XPU_E5M2);
    const __xpu_fp8x2_storage_t rhi =
        __xpu_cvt_float2_to_fp8x2(fhi, __XPU_SATFINITE, __XPU_E5M2);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
  }
  /**
   * \ingroup XTDK_MATH_FP8X4_E5M2_STRUCT
   * Constructor from \p double4 vector data type,
   * relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e5m2(const double4 f) {
    const double2 flo = {f.x, f.y};
    const double2 fhi = {f.z, f.w};
    const __xpu_fp8x2_storage_t rlo =
        __xpu_cvt_double2_to_fp8x2(flo, __XPU_SATFINITE, __XPU_E5M2);
    const __xpu_fp8x2_storage_t rhi =
        __xpu_cvt_double2_to_fp8x2(fhi, __XPU_SATFINITE, __XPU_E5M2);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
  }

#if !defined(__XTDK_NO_FP8_CONVERSION_OPERATORS__)
  /* Widening converts */

  /**
   * \ingroup XTDK_MATH_FP8X4_E5M2_STRUCT
   * Conversion operator to \p float4 vector data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator float4() const {
    const __xpu_fp8x2_storage_t slo = static_cast<__xpu_fp8x2_storage_t>(__x);
    const __xpu_fp8x2_storage_t shi =
        static_cast<__xpu_fp8x2_storage_t>(__x >> 16U);
    float2 rlo = __internal_halfraw2_to_float2(
        __xpu_cvt_fp8x2_to_halfraw2(slo, __XPU_E5M2));
    float2 rhi = __internal_halfraw2_to_float2(
        __xpu_cvt_fp8x2_to_halfraw2(shi, __XPU_E5M2));
    float4 res = {rlo.x, rlo.y, rhi.x, rhi.y};
    return res;
  }
#endif /* !defined(__XTDK_NO_FP8_CONVERSION_OPERATORS__) */
#endif /* !defined(__XTDK_NO_FP8_CONVERSIONS__) */
};

/**
 * \defgroup XTDK_MATH_FP8_E4M3_STRUCT C++ struct for handling fp8 data type of
 * e4m3 kind. \ingroup XTDK_MATH_INTRINSIC_FP8
 */

/**
 * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
 * \brief __xpu_fp8_e4m3 datatype
 *
 * \details This structure implements the datatype for storing
 * \p fp8 floating-point numbers of \p e4m3 kind:
 * with 1 sign, 4 exponent, 1 implicit and 3 explicit mantissa bits.
 * The encoding doesn't support Infinity.
 * NaNs are limited to 0x7F and 0xFF values.
 *
 * The structure implements converting constructors and operators.
 */
struct __XPU_ALIGN__(1) __xpu_fp8_e4m3 {
public:
  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Storage variable contains the \p fp8 floating-point data.
   */
  __xpu_fp8_storage_t __x;

  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Constructor by default.
   */
#if defined(__CPP_VERSION_AT_LEAST_11_FP8)
  __xpu_fp8_e4m3() = default;
#else
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e4m3() {}
#endif /* defined(__CPP_VERSION_AT_LEAST_11_FP8) */

#if !defined(__XTDK_NO_FP8_CONVERSIONS__)

  /* Construct from wider FP types */
  /* Note we do avoid constructor init-list because of special host/device
   * compilation rules */

  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Constructor from \p __half data type, relies on \p __XPU_SATFINITE
   * behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e4m3(const __half f) {
    __x = __xpu_cvt_halfraw_to_fp8(static_cast<__half_raw>(f), __XPU_SATFINITE,
                                   __XPU_E4M3);
  }
  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Constructor from \p __xpu_bfloat16 data type, relies on \p __XPU_SATFINITE
   * behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e4m3(const __xpu_bfloat16 f) {
    __x = __xpu_cvt_bfloat16raw_to_fp8(static_cast<__xpu_bfloat16_raw>(f),
                                       __XPU_SATFINITE, __XPU_E4M3);
  }

  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Constructor from \p float data type, relies on \p __XPU_SATFINITE behavior
   * for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e4m3(const float f) {
    __x = __xpu_cvt_float_to_fp8(f, __XPU_SATFINITE, __XPU_E4M3);
  }
  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Constructor from \p double data type, relies on \p __XPU_SATFINITE
   * behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e4m3(const double f) {
    __x = __xpu_cvt_double_to_fp8(f, __XPU_SATFINITE, __XPU_E4M3);
  }

  /* Converts from integral */

  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Constructor from \p unsigned \p short \p int data type, relies on \p
   * __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__
  __xpu_fp8_e4m3(const unsigned short int val) {
    __x = static_cast<__xpu_fp8_e4m3>(static_cast<float>(val)).__x;
  }
  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Constructor from \p unsigned \p int data type, relies on \p
   * __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e4m3(const unsigned int val) {
    __x = static_cast<__xpu_fp8_e4m3>(static_cast<float>(val)).__x;
  }
  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Constructor from \p unsigned \p long \p long \p int data type, relies on
   * \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__
  __xpu_fp8_e4m3(const unsigned long long int val) {
    __x = static_cast<__xpu_fp8_e4m3>(static_cast<float>(val)).__x;
  }

  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Constructor from \p short \p int data type, relies on \p
   * __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e4m3(const short int val) {
    __x = static_cast<__xpu_fp8_e4m3>(static_cast<float>(val)).__x;
  }
  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Constructor from \p int data type, relies on \p __XPU_SATFINITE behavior
   * for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e4m3(const int val) {
    __x = static_cast<__xpu_fp8_e4m3>(static_cast<float>(val)).__x;
  }
  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Constructor from \p long \p long \p int data type, relies on \p
   * __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e4m3(const long long int val) {
    __x = static_cast<__xpu_fp8_e4m3>(static_cast<float>(val)).__x;
  }

#if !defined(__XTDK_NO_FP8_CONVERSION_OPERATORS__)
  /* Widening FP converts */
  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Conversion operator to \p __half data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator __half() const {
    return static_cast<__half>(__xpu_cvt_fp8_to_halfraw(__x, __XPU_E4M3));
  }
  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Conversion operator to \p float data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator float() const {
    return __internal_halfraw_to_float(
        __xpu_cvt_fp8_to_halfraw(__x, __XPU_E4M3));
  }
  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Conversion operator to \p __xpu_bfloat16 data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator __xpu_bfloat16() const {
    return static_cast<__xpu_bfloat16>(
        __internal_float_to_bf16raw_rz(float(*this)));
  }
  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Conversion operator to \p double data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator double() const {
    return static_cast<double>(float(*this));
  }

  /* Convert to integral */

  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Conversion operator to \p unsigned \p char data type.
   * Clamps negative and too large inputs to the output range.
   * \p NaN inputs convert to \p zero.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator unsigned char() const {
    unsigned char i;
    const float f = float(*this);
    const unsigned char max_val = 0xFFU;
    const unsigned char min_val = 0U;
    const unsigned char bits = (*this).__x;
    // saturation fixup
    if ((bits & 0x7FU) == 0x7FU) {
      // NaN
      i = 0;
    } else if (f > static_cast<float>(max_val)) {
      // saturate maximum
      i = max_val;
    } else if (f < static_cast<float>(min_val)) {
      // saturate minimum
      i = min_val;
    } else {
      // normal value
      i = static_cast<unsigned char>(f);
    }
    return i;
  }

  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Conversion operator to \p unsigned \p short \p int data type.
   * Clamps negative inputs to zero.
   * \p NaN inputs convert to \p zero.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator unsigned short int() const {
    return __half2ushort_rz(__half(*this));
  }
  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Conversion operator to \p unsigned \p int data type.
   * Clamps negative inputs to zero.
   * \p NaN inputs convert to \p zero.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator unsigned int() const {
    return __half2uint_rz(__half(*this));
  }
  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Conversion operator to \p unsigned \p long \p long \p int data type.
   * Clamps negative inputs to zero.
   * \p NaN inputs convert to \p 0x8000000000000000ULL.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator unsigned long long int() const {
    return __half2ull_rz(__half(*this));
  }

  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Conversion operator to \p signed \p char data type.
   * Clamps too large inputs to the output range.
   * \p NaN inputs convert to \p zero.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator signed char() const {
    signed char i;
    const float f = float(*this);
    const signed char max_val = (signed char)0x7FU;
    const signed char min_val = (signed char)0x80U;
    const unsigned char bits = (*this).__x;
    // saturation fixup
    if ((bits & 0x7FU) == 0x7FU) {
      // NaN
      i = 0;
    } else if (f > static_cast<float>(max_val)) {
      // saturate maximum
      i = max_val;
    } else if (f < static_cast<float>(min_val)) {
      // saturate minimum
      i = min_val;
    } else {
      // normal value
      i = static_cast<signed char>(f);
    }
    return i;
  }
  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Conversion operator to \p short \p int data type.
   * \p NaN inputs convert to \p zero.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator short int() const {
    return __half2short_rz(__half(*this));
  }
  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Conversion operator to \p int data type.
   * \p NaN inputs convert to \p zero.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator int() const {
    return __half2int_rz(__half(*this));
  }
  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Conversion operator to \p long \p long \p int data type.
   * \p NaN inputs convert to \p 0x8000000000000000LL.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator long long int() const {
    return __half2ll_rz(__half(*this));
  }

  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Conversion operator to \p bool data type.
   * +0 and -0 inputs convert to \p false.
   * Non-zero inputs convert to \p true.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator bool() const {
    return (__x & 0x7FU) != 0U;
  }
#endif /* !defined(__XTDK_NO_FP8_CONVERSION_OPERATORS__) */
#endif /* !defined(__XTDK_NO_FP8_CONVERSIONS__) */
};

/**
 * \defgroup XTDK_MATH_FP8X2_E4M3_STRUCT C++ struct for handling vector type of
 * two fp8 values of e4m3 kind. \ingroup XTDK_MATH_INTRINSIC_FP8
 */

/**
 * \ingroup XTDK_MATH_FP8X2_E4M3_STRUCT
 * \brief __xpu_fp8x2_e4m3 datatype
 *
 * \details This structure implements the datatype for storage
 * and operations on the vector of two \p fp8 values of \p e4m3 kind each:
 * with 1 sign, 4 exponent, 1 implicit and 3 explicit mantissa bits.
 * The encoding doesn't support Infinity.
 * NaNs are limited to 0x7F and 0xFF values.
 */
struct __XPU_ALIGN__(2) __xpu_fp8x2_e4m3 {
public:
  /**
   * \ingroup XTDK_MATH_FP8X2_E4M3_STRUCT
   * Storage variable contains the vector of two \p fp8 floating-point data
   * values.
   */
  __xpu_fp8x2_storage_t __x;

  /**
   * \ingroup XTDK_MATH_FP8X2_E4M3_STRUCT
   * Constructor by default.
   */
#if defined(__CPP_VERSION_AT_LEAST_11_FP8)
  __xpu_fp8x2_e4m3() = default;
#else
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x2_e4m3() {}
#endif /* defined(__CPP_VERSION_AT_LEAST_11_FP8) */

#if !defined(__XTDK_NO_FP8_CONVERSIONS__)

  /* Construct from wider types */

  /**
   * \ingroup XTDK_MATH_FP8X2_E4M3_STRUCT
   * Constructor from \p __half2 data type, relies on \p __XPU_SATFINITE
   * behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x2_e4m3(const __half2 f) {
    __x = __xpu_cvt_halfraw2_to_fp8x2(static_cast<__half2_raw>(f),
                                      __XPU_SATFINITE, __XPU_E4M3);
  }
  /**
   * \ingroup XTDK_MATH_FP8X2_E4M3_STRUCT
   * Constructor from \p __xpu_bfloat162 data type, relies on \p __XPU_SATFINITE
   * behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x2_e4m3(const __xpu_bfloat162 f) {
    __x = __xpu_cvt_bfloat16raw2_to_fp8x2(static_cast<__xpu_bfloat162_raw>(f),
                                          __XPU_SATFINITE, __XPU_E4M3);
  }
  /**
   * \ingroup XTDK_MATH_FP8X2_E4M3_STRUCT
   * Constructor from \p float2 data type, relies on \p __XPU_SATFINITE
   * behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x2_e4m3(const float2 f) {
    __x = __xpu_cvt_float2_to_fp8x2(f, __XPU_SATFINITE, __XPU_E4M3);
  }
  /**
   * \ingroup XTDK_MATH_FP8X2_E4M3_STRUCT
   * Constructor from \p double2 data type, relies on \p __XPU_SATFINITE
   * behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x2_e4m3(const double2 f) {
    __x = __xpu_cvt_double2_to_fp8x2(f, __XPU_SATFINITE, __XPU_E4M3);
  }

#if !defined(__XTDK_NO_FP8_CONVERSION_OPERATORS__)
  /* Widening converts */
  /**
   * \ingroup XTDK_MATH_FP8X2_E4M3_STRUCT
   * Conversion operator to \p __half2 data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator __half2() const {
    return static_cast<__half2>(__xpu_cvt_fp8x2_to_halfraw2(__x, __XPU_E4M3));
  }
  /**
   * \ingroup XTDK_MATH_FP8X2_E4M3_STRUCT
   * Conversion operator to \p float2 data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator float2() const {
    return __internal_halfraw2_to_float2(
        __xpu_cvt_fp8x2_to_halfraw2(__x, __XPU_E4M3));
  }
#endif /* !defined(__XTDK_NO_FP8_CONVERSION_OPERATORS__) */
#endif /* !defined(__XTDK_NO_FP8_CONVERSIONS__) */
};

/**
 * \defgroup XTDK_MATH_FP8X4_E4M3_STRUCT C++ struct for handling vector type of
 * four fp8 values of e4m3 kind. \ingroup XTDK_MATH_INTRINSIC_FP8
 */

/**
 * \ingroup XTDK_MATH_FP8X4_E4M3_STRUCT
 * \brief __xpu_fp8x4_e4m3 datatype
 *
 * \details This structure implements the datatype for storage
 * and operations on the vector of four \p fp8 values of \p e4m3 kind each:
 * with 1 sign, 4 exponent, 1 implicit and 3 explicit mantissa bits.
 * The encoding doesn't support Infinity.
 * NaNs are limited to 0x7F and 0xFF values.
 */
struct __XPU_ALIGN__(4) __xpu_fp8x4_e4m3 {
public:
  /**
   * \ingroup XTDK_MATH_FP8X4_E4M3_STRUCT
   * Storage variable contains the vector of four \p fp8 floating-point data
   * values.
   */
  __xpu_fp8x4_storage_t __x;

  /**
   * \ingroup XTDK_MATH_FP8X4_E4M3_STRUCT
   * Constructor by default.
   */
#if defined(__CPP_VERSION_AT_LEAST_11_FP8)
  __xpu_fp8x4_e4m3() = default;
#else
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e4m3() {}
#endif /* defined(__CPP_VERSION_AT_LEAST_11_FP8) */

#if !defined(__XTDK_NO_FP8_CONVERSIONS__)

  /* Construct from wider types */

  /**
   * \ingroup XTDK_MATH_FP8X4_E4M3_STRUCT
   * Constructor from a pair of \p __half2 data type values,
   * relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e4m3(const __half2 flo,
                                                    const __half2 fhi) {
    const __xpu_fp8x2_storage_t rlo = __xpu_cvt_halfraw2_to_fp8x2(
        static_cast<__half2_raw>(flo), __XPU_SATFINITE, __XPU_E4M3);
    const __xpu_fp8x2_storage_t rhi = __xpu_cvt_halfraw2_to_fp8x2(
        static_cast<__half2_raw>(fhi), __XPU_SATFINITE, __XPU_E4M3);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
  }
  /**
   * \ingroup XTDK_MATH_FP8X4_E4M3_STRUCT
   * Constructor from a pair of \p __xpu_bfloat162 data type values,
   * relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e4m3(const __xpu_bfloat162 flo,
                                                    const __xpu_bfloat162 fhi) {
    const __xpu_fp8x2_storage_t rlo = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(flo), __XPU_SATFINITE, __XPU_E4M3);
    const __xpu_fp8x2_storage_t rhi = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(fhi), __XPU_SATFINITE, __XPU_E4M3);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
  }
  /**
   * \ingroup XTDK_MATH_FP8X4_E4M3_STRUCT
   * Constructor from \p float4 vector data type,
   * relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e4m3(const float4 f) {
    const float2 flo = {f.x, f.y};
    const float2 fhi = {f.z, f.w};
    const __xpu_fp8x2_storage_t rlo =
        __xpu_cvt_float2_to_fp8x2(flo, __XPU_SATFINITE, __XPU_E4M3);
    const __xpu_fp8x2_storage_t rhi =
        __xpu_cvt_float2_to_fp8x2(fhi, __XPU_SATFINITE, __XPU_E4M3);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
  }
  /**
   * \ingroup XTDK_MATH_FP8X4_E4M3_STRUCT
   * Constructor from \p double4 vector data type,
   * relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e4m3(const double4 f) {
    const double2 flo = {f.x, f.y};
    const double2 fhi = {f.z, f.w};
    const __xpu_fp8x2_storage_t rlo =
        __xpu_cvt_double2_to_fp8x2(flo, __XPU_SATFINITE, __XPU_E4M3);
    const __xpu_fp8x2_storage_t rhi =
        __xpu_cvt_double2_to_fp8x2(fhi, __XPU_SATFINITE, __XPU_E4M3);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
  }

#if !defined(__XTDK_NO_FP8_CONVERSION_OPERATORS__)
  /* Widening converts */

  /**
   * \ingroup XTDK_MATH_FP8X4_E4M3_STRUCT
   * Conversion operator to \p float4 vector data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator float4() const {
    const __xpu_fp8x2_storage_t slo = static_cast<__xpu_fp8x2_storage_t>(__x);
    const __xpu_fp8x2_storage_t shi =
        static_cast<__xpu_fp8x2_storage_t>(__x >> 16U);
    float2 rlo = __internal_halfraw2_to_float2(
        __xpu_cvt_fp8x2_to_halfraw2(slo, __XPU_E4M3));
    float2 rhi = __internal_halfraw2_to_float2(
        __xpu_cvt_fp8x2_to_halfraw2(shi, __XPU_E4M3));
    float4 res = {rlo.x, rlo.y, rhi.x, rhi.y};
    return res;
  }
#endif /* !defined(__XTDK_NO_FP8_CONVERSION_OPERATORS__) */
#endif /* !defined(__XTDK_NO_FP8_CONVERSIONS__) */
};

/**
 * \ingroup XTDK_MATH_FP8_E8M0_STRUCT
 * \brief __xpu_fp8_e8m0 datatype
 *
 * \details This structure implements the datatype for handling
 * 8-bit scale factors of \p e8m0 kind: interpreted as powers of two
 * with biased exponent. Bias equals to 127, so numbers 0 through 254
 * represent 2^-127 through 2^127. Number \p 0xFF = 255 is reserved
 * for NaN.
 *
 * The structure implements converting constructors and operators.
 */
struct __XPU_ALIGN__(1) __xpu_fp8_e8m0 {
public:
  /**
   * \ingroup XTDK_MATH_FP8_E8M0_STRUCT
   * Storage variable contains the 8-bit scale data.
   */
  __xpu_fp8_storage_t __x;

  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor by default.
   */
#if defined(__CPP_VERSION_AT_LEAST_11_FP8)
  __xpu_fp8_e8m0() = default;
#else
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e8m0() {}
#endif /* defined(__CPP_VERSION_AT_LEAST_11_FP8) */

#if !defined(__XTDK_NO_FP8_CONVERSIONS__)

  /* Construct from wider FP types */
  /* Note we do avoid constructor init-list because of special host/device
   * compilation rules */

  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p __half data type, relies on \p __XPU_SATFINITE
   * behavior for large input values and \p xpuRoundZero for
   * rounding.
   * \see __xpu_cvt_float_to_e8m0 for further details
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e8m0(const __half f) {
    __x = __xpu_cvt_float_to_e8m0(
        __internal_halfraw_to_float(static_cast<__half_raw>(f)),
        __XPU_SATFINITE, xpuRoundZero);
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p __xpu_bfloat16 data type, relies on \p __XPU_SATFINITE
   * behavior for large input values and \p xpuRoundZero for
   * rounding.
   * \see __xpu_cvt_bfloat16raw_to_e8m0 for further details
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e8m0(const __xpu_bfloat16 f) {
    __x = __xpu_cvt_bfloat16raw_to_e8m0(static_cast<__xpu_bfloat16_raw>(f),
                                        __XPU_SATFINITE, xpuRoundZero);
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p float data type, relies on \p __XPU_SATFINITE behavior
   * behavior for large input values and \p xpuRoundZero for
   * rounding.
   * \see __xpu_cvt_float_to_e8m0 for further details
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e8m0(const float f) {
    __x = __xpu_cvt_float_to_e8m0(f, __XPU_SATFINITE, xpuRoundZero);
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p double data type, relies on \p __XPU_SATFINITE
   * behavior for large input values and \p xpuRoundZero for
   * rounding.
   * \see __xpu_cvt_double_to_e8m0 for further details
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e8m0(const double f) {
    __x = __xpu_cvt_double_to_e8m0(f, __XPU_SATFINITE, xpuRoundZero);
  }

  /* Converts from integral */

  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p unsigned \p short \p int data type, relies on
   * \p xpuRoundZero rounding.
   */
  explicit __XTDK_HOSTDEVICE_FP8__
  __xpu_fp8_e8m0(const unsigned short int val) {
    __x = static_cast<__xpu_fp8_e8m0>(static_cast<float>(val)).__x;
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p unsigned \p int data type, relies on
   * \p xpuRoundZero rounding.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e8m0(const unsigned int val) {
    __x = static_cast<__xpu_fp8_e8m0>(static_cast<double>(val)).__x;
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p unsigned \p long \p long \p int data type, relies on
   * \p xpuRoundZero rounding.
   */
  explicit __XTDK_HOSTDEVICE_FP8__
  __xpu_fp8_e8m0(const unsigned long long int val) {
    __xpu_bfloat16 rn = __ull2bfloat16_rn(val);
    __xpu_bfloat16_raw rn_raw = static_cast<__xpu_bfloat16_raw>(rn);
    unsigned long long int back_int = __bfloat162ull_rz(rn);
    if (back_int > val) {
      rn_raw.x--;
    }
    __x = __xpu_cvt_bfloat16raw_to_e8m0(rn_raw, __XPU_SATFINITE, xpuRoundZero);
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p unsigned \p long \p int data type, relies on
   * \p xpuRoundZero rounding.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e8m0(const unsigned long int val) {
    __x = static_cast<__xpu_fp8_e8m0>(static_cast<unsigned long long int>(val))
              .__x;
  }

  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p short \p int data type, relies on
   * \p xpuRoundZero rounding.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e8m0(const short int val) {
    __x = static_cast<__xpu_fp8_e8m0>(static_cast<float>(val)).__x;
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p int data type, relies on
   * \p xpuRoundZero rounding.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e8m0(const int val) {
    __x = static_cast<__xpu_fp8_e8m0>(static_cast<double>(val)).__x;
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p long \p long \p int data type, relies on
   * \p xpuRoundZero rounding.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e8m0(const long long int val) {
    __xpu_bfloat16 rn = __ll2bfloat16_rn(val);
    __xpu_bfloat16_raw rn_raw = static_cast<__xpu_bfloat16_raw>(rn);
    long long int back_int = __bfloat162ll_rz(rn);
    if (((val > 0) && (back_int > val)) || ((val < 0) && (back_int < val))) {
      rn_raw.x--;
    }
    __x = __xpu_cvt_bfloat16raw_to_e8m0(rn_raw, __XPU_SATFINITE, xpuRoundZero);
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p long \p int data type, relies on
   * \p xpuRoundZero rounding.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e8m0(const long int val) {
    __x = static_cast<__xpu_fp8_e8m0>(static_cast<long long int>(val)).__x;
  }

#if !defined(__XTDK_NO_FP8_CONVERSION_OPERATORS__)
  /* Widening FP converts */

  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p float data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator float() const {
    return __internal_bf16raw_to_float(__xpu_cvt_e8m0_to_bf16raw((*this).__x));
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p __xpu_bfloat16 data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator __xpu_bfloat16() const {
    return static_cast<__xpu_bfloat16>(__xpu_cvt_e8m0_to_bf16raw((*this).__x));
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p double data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator double() const {
    const float f = float(*this);
    double d;
    d = static_cast<double>(f);
    return d;
  }

  /* rounding conversion to half */

  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p __half data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator __half() const {
    return __float2half_rn(float(*this));
  }

  /* Convert to integral */

  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p unsigned \p char data type.
   * Clamps too large inputs to the output range.
   * \p NaN inputs convert to \p zero.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator unsigned char() const {
    unsigned char i;
    const float f = float(*this);
    const unsigned char max_val = 0xFFU;
    const unsigned char bits = (*this).__x;
    // saturation fixup
    if (bits == 0xFFU) {
      // NaN
      i = 0;
    } else if (f > static_cast<float>(max_val)) {
      // saturate maximum
      i = max_val;
    } else {
      // normal value
      i = static_cast<unsigned char>(f);
    }
    return i;
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p unsigned \p short \p int data type.
   * Clamps too large inputs to the output range.
   * \p NaN inputs convert to \p zero.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator unsigned short int() const {
    return __bfloat162ushort_rz(__xpu_bfloat16(*this));
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p unsigned \p int data type.
   * Clamps too large inputs to the output range.
   * \p NaN inputs convert to \p zero.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator unsigned int() const {
    return __bfloat162uint_rz(__xpu_bfloat16(*this));
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p unsigned \p long \p int data type.
   * Clamps too large inputs to the output range.
   * \p NaN inputs convert to \p zero if output type is 32-bit.
   * \p NaN inputs convert to \p 0x8000000000000000ULL if output type is 64-bit.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator unsigned long int() const {
    unsigned long retval;
    /* Suppress VS warning: warning C4127: conditional expression is constant */
#if defined(_MSC_VER) && !defined(__xpu_on_device__)
#pragma warning(push)
#pragma warning(disable : 4127)
#endif /* _MSC_VER && !defined(__xpu_on_device__) */
    if (sizeof(unsigned long) == sizeof(unsigned long long))
#if defined(_MSC_VER) && !defined(__xpu_on_device__)
#pragma warning(pop)
#endif /* _MSC_VER && !defined(__xpu_on_device__) */
    {
      retval =
          static_cast<unsigned long>(__bfloat162ull_rz(__xpu_bfloat16(*this)));
    } else {
      retval =
          static_cast<unsigned long>(__bfloat162uint_rz(__xpu_bfloat16(*this)));
    }
    return retval;
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p unsigned \p long \p long \p int data type.
   * Clamps too large inputs to the output range.
   * \p NaN inputs convert to \p 0x8000000000000000ULL.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator unsigned long long int() const {
    return __bfloat162ull_rz(__xpu_bfloat16(*this));
  }

  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p signed \p char data type.
   * Clamps too large inputs to the output range.
   * \p NaN inputs convert to \p zero.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator signed char() const {
    signed char i;
    const float f = float(*this);
    const signed char max_val = (signed char)0x7FU;
    const unsigned char bits = (*this).__x;
    // saturation fixup
    if (bits == 0xFFU) {
      // NaN
      i = 0;
    } else if (f > static_cast<float>(max_val)) {
      // saturate maximum
      i = max_val;
    } else {
      // normal value
      i = static_cast<signed char>(f);
    }
    return i;
  }

  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to an implementation defined \p char data type.
   *
   * Detects signedness of the \p char type and proceeds accordingly, see
   * further details in signed and unsigned char operators.

   * Clamps inputs to the output range.
   * \p NaN inputs convert to \p zero.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator char() const {
    char value;
    /* Suppress VS warning: warning C4127: conditional expression is constant */
#if defined(_MSC_VER) && !defined(__xpu_on_device__)
#pragma warning(push)
#pragma warning(disable : 4127)
#endif /* _MSC_VER && !defined(__xpu_on_device__) */
    if (((char)-1) < (char)0)
#if defined(_MSC_VER) && !defined(__xpu_on_device__)
#pragma warning(pop)
#endif /* _MSC_VER && !defined(__xpu_on_device__) */
    {
      value = static_cast<char>(static_cast<signed char>(*this));
    } else {
      value = static_cast<char>(static_cast<unsigned char>(*this));
    }
    return value;
  }

  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p short \p int data type.
   * Clamps too large inputs to the output range.
   * \p NaN inputs convert to \p zero.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator short int() const {
    return __bfloat162short_rz(__xpu_bfloat16(*this));
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p int data type.
   * Clamps too large inputs to the output range.
   * \p NaN inputs convert to \p zero.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator int() const {
    return __bfloat162int_rz(__xpu_bfloat16(*this));
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p long \p int data type.
   * Clamps too large inputs to the output range.
   * \p NaN inputs convert to \p zero if output type is 32-bit.
   * \p NaN inputs convert to \p 0x8000000000000000ULL if output type is 64-bit.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator long int() const {
    long retval;
    /* Suppress VS warning: warning C4127: conditional expression is constant */
#if defined(_MSC_VER) && !defined(__xpu_on_device__)
#pragma warning(push)
#pragma warning(disable : 4127)
#endif /* _MSC_VER && !defined(__xpu_on_device__) */
    if (sizeof(long) == sizeof(long long))
#if defined(_MSC_VER) && !defined(__xpu_on_device__)
#pragma warning(pop)
#endif /* _MSC_VER && !defined(__xpu_on_device__) */
    {
      retval = static_cast<long>(__bfloat162ll_rz(__xpu_bfloat16(*this)));
    } else {
      retval = static_cast<long>(__bfloat162int_rz(__xpu_bfloat16(*this)));
    }
    return retval;
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p long \p long \p int data type.
   * Clamps too large inputs to the output range.
   * \p NaN inputs convert to \p 0x8000000000000000LL.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator long long int() const {
    return __bfloat162ll_rz(__xpu_bfloat16(*this));
  }

  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p bool data type.
   * All values in input range are non-zero, so result is always \p true.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator bool() const { return true; }
#endif /* !defined(__XTDK_NO_FP8_CONVERSION_OPERATORS__) */
#endif /* !defined(__XTDK_NO_FP8_CONVERSIONS__) */
};

/**
 * \defgroup XTDK_MATH_FP8X2_E8M0_STRUCT C++ struct for handling vector type of
 * two scale factors of e8m0 kind. \ingroup XTDK_MATH_INTRINSIC_FP8
 */

/**
 * \ingroup XTDK_MATH_FP8X2_E8M0_STRUCT
 * \brief __xpu_fp8x2_e8m0 datatype
 *
 * \details This structure implements the datatype for storage
 * and operations on the vector of two scale factors of \p e8m0 kind each.
 */
struct __XPU_ALIGN__(2) __xpu_fp8x2_e8m0 {
public:
  /**
   * \ingroup XTDK_MATH_FP8X2_E8M0_STRUCT
   * Storage variable contains the vector of two scale factor
   * values.
   */
  __xpu_fp8x2_storage_t __x;

  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor by default.
   */
#if defined(__CPP_VERSION_AT_LEAST_11_FP8)
  __xpu_fp8x2_e8m0() = default;
#else
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x2_e8m0() {}
#endif /* defined(__CPP_VERSION_AT_LEAST_11_FP8) */

#if !defined(__XTDK_NO_FP8_CONVERSIONS__)

  /* Construct from wider types */

  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p __half2 data type, relies on \p __XPU_SATFINITE
   * behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x2_e8m0(const __half2 f) {
    __x = __xpu_cvt_float2_to_e8m0x2(__half22float2(f), __XPU_SATFINITE,
                                     xpuRoundZero);
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p __xpu_bfloat162 data type, relies on \p __XPU_SATFINITE
   * behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x2_e8m0(const __xpu_bfloat162 f) {
    __x = __xpu_cvt_bfloat162raw_to_e8m0x2(static_cast<__xpu_bfloat162_raw>(f),
                                           __XPU_SATFINITE, xpuRoundZero);
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p float2 data type, relies on \p __XPU_SATFINITE
   * behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x2_e8m0(const float2 f) {
    __x = __xpu_cvt_float2_to_e8m0x2(f, __XPU_SATFINITE, xpuRoundZero);
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p double2 data type, relies on \p __XPU_SATFINITE
   * behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x2_e8m0(const double2 f) {
    __x = __xpu_cvt_double2_to_e8m0x2(f, __XPU_SATFINITE, xpuRoundZero);
  }

#if !defined(__XTDK_NO_FP8_CONVERSION_OPERATORS__)
  /* Widening converts */
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p __xpu_bfloat162 data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator __xpu_bfloat162() const {
    return static_cast<__xpu_bfloat162>(
        __xpu_cvt_e8m0x2_to_bf162raw((*this).__x));
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p float2 data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator float2() const {
    return __bfloat1622float2(static_cast<__xpu_bfloat162>(*this));
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p __half2 data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator __half2() const {
    return __float22half2_rn(static_cast<float2>(*this));
  }

#endif /* !defined(__XTDK_NO_FP8_CONVERSION_OPERATORS__) */
#endif /* !defined(__XTDK_NO_FP8_CONVERSIONS__) */
};

/**
 * \defgroup XTDK_MATH_FP8X4_E8M0_STRUCT C++ struct for handling vector type of
 * four scale factors of e8m0 kind. \ingroup XTDK_MATH_INTRINSIC_FP8
 */

/**
 * \ingroup XTDK_MATH_FP8X4_E8M0_STRUCT
 * \brief __xpu_fp8x4_e8m0 datatype
 *
 * \details This structure implements the datatype for storage
 * and operations on the vector of scale factors of \p e8m0 kind each.
 */
struct __XPU_ALIGN__(4) __xpu_fp8x4_e8m0 {
public:
  /**
   * \ingroup XTDK_MATH_FP8X4_E8M0_STRUCT
   * Storage variable contains the vector of four scale factor
   * values.
   */
  __xpu_fp8x4_storage_t __x;

  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor by default.
   */
#if defined(__CPP_VERSION_AT_LEAST_11_FP8)
  __xpu_fp8x4_e8m0() = default;
#else
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e8m0() {}
#endif /* defined(__CPP_VERSION_AT_LEAST_11_FP8) */

#if !defined(__XTDK_NO_FP8_CONVERSIONS__)

  /* Construct from wider types */

  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from a pair of \p __half2 data type values,
   * relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e8m0(const __half2 flo,
                                                    const __half2 fhi) {
    const __xpu_fp8x2_storage_t rlo = static_cast<__xpu_fp8x2_e8m0>(flo).__x;
    const __xpu_fp8x2_storage_t rhi = static_cast<__xpu_fp8x2_e8m0>(fhi).__x;
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from a pair of \p __xpu_bfloat162 data type values,
   * relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e8m0(const __xpu_bfloat162 flo,
                                                    const __xpu_bfloat162 fhi) {
    const __xpu_fp8x2_storage_t rlo = static_cast<__xpu_fp8x2_e8m0>(flo).__x;
    const __xpu_fp8x2_storage_t rhi = static_cast<__xpu_fp8x2_e8m0>(fhi).__x;
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p float4 vector data type,
   * relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e8m0(const float4 f) {
    const float2 flo = {f.x, f.y};
    const float2 fhi = {f.z, f.w};
    const __xpu_fp8x2_storage_t rlo =
        __xpu_cvt_float2_to_e8m0x2(flo, __XPU_SATFINITE, xpuRoundZero);
    const __xpu_fp8x2_storage_t rhi =
        __xpu_cvt_float2_to_e8m0x2(fhi, __XPU_SATFINITE, xpuRoundZero);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p double4 vector data type,
   * relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e8m0(const double4 f) {
    const double2 flo = {f.x, f.y};
    const double2 fhi = {f.z, f.w};
    const __xpu_fp8x2_storage_t rlo =
        __xpu_cvt_double2_to_e8m0x2(flo, __XPU_SATFINITE, xpuRoundZero);
    const __xpu_fp8x2_storage_t rhi =
        __xpu_cvt_double2_to_e8m0x2(fhi, __XPU_SATFINITE, xpuRoundZero);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
  }

#if !defined(__XTDK_NO_FP8_CONVERSION_OPERATORS__)
  /* Widening converts */

  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p float4 vector data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator float4() const {
    __xpu_fp8x2_e8m0 lo;
    lo.__x = static_cast<__xpu_fp8x2_storage_t>(__x);
    __xpu_fp8x2_e8m0 hi;
    hi.__x = static_cast<__xpu_fp8x2_storage_t>(__x >> 16U);

    float2 rlo = static_cast<float2>(lo);
    float2 rhi = static_cast<float2>(hi);
    float4 res = {rlo.x, rlo.y, rhi.x, rhi.y};
    return res;
  }
#endif /* !defined(__XTDK_NO_FP8_CONVERSION_OPERATORS__) */
#endif /* !defined(__XTDK_NO_FP8_CONVERSIONS__) */
};

#endif /* defined(__cplusplus) */

#endif // __xpu_subarch__ >= 4
#endif /* end of include guard: __XPU_KERNEL_XTDK_FP8_HPP__ */
