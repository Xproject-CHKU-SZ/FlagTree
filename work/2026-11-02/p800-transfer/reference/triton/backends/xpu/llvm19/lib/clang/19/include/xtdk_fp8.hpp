#if !defined(__XCN_KERNEL_XTDK_FP8_HPP__)
#define __XCN_KERNEL_XTDK_FP8_HPP__

#if !defined(__XCN_KERNEL_XTDK_FP8_H__)
#error "Do not include this file directly. Instead, include xtdk_fp8.h."
#endif

/*
 * Bring in the standard assertions header to enforce the subset
 * of rounding modes supported by the APIs defined here.
 * NOTE: NVRTC defines its own assert
 */
#if !defined(__HOUYICC_RTC__)
#include <assert.h>
#endif

/* Set up structure-alignment attribute */
#if !(defined __HOUYI_ALIGN__)
#if defined(__XCNCC__)
#define __HOUYI_ALIGN__(align) __align__(align)
#else
/* Define alignment macro based on compiler type (cannot assume C11 "_Alignas"
 * is available) */
#if __cplusplus >= 201103L
#define __HOUYI_ALIGN__(n)                                                     \
  alignas(n) /* C++11 kindly gives us a keyword for this */
#else        /* !defined(__CPP_VERSION_AT_LEAST_11_FP8)*/
#if defined(__GNUC__)
#define __HOUYI_ALIGN__(n) __attribute__((aligned(n)))
#elif defined(_MSC_VER)
#define __HOUYI_ALIGN__(n) __declspec(align(n))
#else
#define __HOUYI_ALIGN__(n)
#endif /* defined(__GNUC__) */
#endif /* defined(__CPP_VERSION_AT_LEAST_11_FP8) */
#endif /* defined(__XCNCC__) */
#endif /* !(defined __HOUYI_ALIGN__) */

#if !(defined __CPP_VERSION_AT_LEAST_11_FP8)
/* need c++11 for explicit operators */
#define __XTDK_NO_FP8_CONVERSION_OPERATORS__
#endif

__XTDK_FP8_DECL__ void setMode(const __xpu_saturation_t saturate,
                               const xpuRoundMode rounding) {
  int noSatfMode = 0, rdPosInf = 1;
  if (saturate == __XPU_NOSAT) {
    asm volatile("s_setreg_b32 hwreg(HW_REG_MODE, 24, 1) %0"
                 :
                 : "s"(noSatfMode));
  }

  if (rounding == xpuRoundPosInf) {
    asm volatile("s_setreg_b32 hwreg(HW_REG_MODE, 0, 1) %0" : : "s"(rdPosInf));
  }

  return;
}

__XTDK_FP8_DECL__ void resetMode(const unsigned oldMode) {
  asm volatile("s_setreg_b32 hwreg(HW_REG_MODE) %0" : : "s"(oldMode));
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8_storage_t
__xpu_cvt_double_to_fp8(const double x, const __xpu_saturation_t saturate,
                        const __xpu_fp8_interpretation_t fp8_interpretation) {
  unsigned char res;
  unsigned long long int xbits;
  __builtin_memcpy(&xbits, &x, sizeof(x));

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
#if (defined __XPU_ARCH__)
#if (__XPU_ARCH__ >= 5)
  __xpu_fp8x2_storage_t storage;
  float2 x2 = make_float2(x, 0.0f);

  if (saturate == __XPU_NOSAT) {
    int noSatfMode = 0;
    asm volatile("s_setreg_b32 hwreg(HW_REG_MODE, 24, 1) %0"
                 :
                 : "s"(noSatfMode));
  }

  if (fp8_interpretation == __XPU_E5M2)
    asm volatile("{v_cvt_e5m2x2_f32x2 %0, %1}" : "=v"(storage) : "v"(x2));
  else
    asm volatile("{v_cvt_e4m3x2_f32x2 %0, %1}" : "=v"(storage) : "v"(x2));

  if (saturate == __XPU_NOSAT) {
    int satfMode = 1;
    asm volatile("s_setreg_b32 hwreg(HW_REG_MODE, 24, 1) %0" : : "s"(satfMode));
  }
  res = (__xpu_fp8_storage_t)storage;
#else
  if (saturate == __XPU_SATFINITE) {
    unsigned int storage;
    if (fp8_interpretation == __XPU_E5M2) {
      storage = __builtin_xcn_v_cvt_rn_satf_e5m2_f32(x);
    } else {
      storage = __builtin_xcn_v_cvt_rn_satf_e4m3_f32(x);
    }
    res = (__xpu_fp8_storage_t)storage;
  } else
#endif // (__XPU_ARCH__ >= 5)
#endif // (defined __XPU_ARCH__)
#if (!defined __XPU_ARCH__ || (__XPU_ARCH__ == 4))
  {
    unsigned int xbits;
    __builtin_memcpy(&xbits, &x, sizeof(x));

    // isnan
    if ((xbits & 0x7FFFFFFFU) > 0x7F800000U) {
      // Canonical NaN
      xbits = 0x7FFFFFFFU;
    }

    float fx;
    __builtin_memcpy(&fx, &xbits, sizeof(xbits));

    const double dx = (double)fx;
    res = __xpu_cvt_double_to_fp8(dx, saturate, fp8_interpretation);
  }
#endif // (!defined __XPU_ARCH__ || (__XPU_ARCH__ == 4))
  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x2_storage_t
__xpu_cvt_float2_to_fp8x2(const float2 x, const __xpu_saturation_t saturate,
                          const __xpu_fp8_interpretation_t fp8_interpretation) {
  __xpu_fp8x2_storage_t storage;
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  if (saturate == __XPU_NOSAT) {
    int noSatfMode = 0;
    asm volatile("s_setreg_b32 hwreg(HW_REG_MODE, 24, 1) %0"
                 :
                 : "s"(noSatfMode));
  }

  if (fp8_interpretation == __XPU_E5M2)
    asm volatile("{v_cvt_e5m2x2_f32x2 %0, %1}" : "=v"(storage) : "v"(x));
  else
    asm volatile("{v_cvt_e4m3x2_f32x2 %0, %1}" : "=v"(storage) : "v"(x));

  if (saturate == __XPU_NOSAT) {
    int satfMode = 1;
    asm volatile("s_setreg_b32 hwreg(HW_REG_MODE, 24, 1) %0" : : "s"(satfMode));
  }
#else
  {
    storage = (__xpu_fp8x2_storage_t)__xpu_cvt_float_to_fp8(x.y, saturate,
                                                            fp8_interpretation);
    storage = (__xpu_fp8x2_storage_t)(storage << 8U);
    storage = (__xpu_fp8x2_storage_t)(storage |
                                      __xpu_cvt_float_to_fp8(
                                          x.x, saturate, fp8_interpretation));
  }
#endif /* (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5) */
  return storage;
}

__XTDK_HOSTDEVICE_FP8_DECL__ float
__internal_halfraw_to_float(const __half_raw x) {
  float f;
#if defined(__XPU_ARCH__)
  asm volatile("{v_cvt_f32_f16 %0, %1}" : "=v"(f) : "v"(x.x));
#else
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
  (void)__builtin_memcpy(&f, &u, sizeof(u));
#endif /* (defined(__XPU_ARCH__)) */
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
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  _Float16_2 x2;
  __builtin_memcpy(&x2, &x, sizeof(__half_raw));
  __builtin_memset((char *)&x2 + sizeof(__half_raw), 0, sizeof(__half_raw));
  __xpu_fp8x2_storage_t tmp;

  if (saturate == __XPU_NOSAT) {
    int noSatfMode = 0;
    asm volatile("s_setreg_b32 hwreg(HW_REG_MODE, 24, 1) %0"
                 :
                 : "s"(noSatfMode));
  }

  if (fp8_interpretation == __XPU_E5M2)
    asm volatile("{v_cvt_e5m2x2_f16x2 %0, %1}" : "=v"(tmp) : "v"(x2));
  else
    asm volatile("{v_cvt_e4m3x2_f16x2 %0, %1}" : "=v"(tmp) : "v"(x2));

  if (saturate == __XPU_NOSAT) {
    int satfMode = 1;
    asm volatile("s_setreg_b32 hwreg(HW_REG_MODE, 24, 1) %0" : : "s"(satfMode));
  }
  res = (__xpu_fp8_storage_t)tmp;
#else
  if (saturate == __XPU_SATFINITE) {
    _Float16_2 x2;
    __builtin_memcpy(&x2, &x, sizeof(__half_raw));
    __builtin_memset((char *)&x2 + sizeof(__half_raw), 0, sizeof(__half_raw));
    __xpu_fp8x2_storage_t tmp;
    if (fp8_interpretation == __XPU_E5M2) {
      tmp = __builtin_xcn_v_cvt_rn_satf_e5m2x2_f16x2(x2);
    } else {
      tmp = __builtin_xcn_v_cvt_rn_satf_e4m3x2_f16x2(x2);
    }
    res = (__xpu_fp8_storage_t)tmp;
  } else
#endif /* (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5) */
#if (!defined __XPU_ARCH__ || (__XPU_ARCH__ == 4))
  {
    float fx = __internal_halfraw_to_float(x);
    res = __xpu_cvt_float_to_fp8(fx, saturate, fp8_interpretation);
  }
#endif // (!defined __XPU_ARCH__ || (__XPU_ARCH__ == 4))
  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x2_storage_t __xpu_cvt_halfraw2_to_fp8x2(
    const __half2_raw x, const __xpu_saturation_t saturate,
    const __xpu_fp8_interpretation_t fp8_interpretation) {
  __xpu_fp8x2_storage_t tmp;
#if defined(__XPU_ARCH__)
#if (__XPU_ARCH__ >= 5)
  if (saturate == __XPU_SATFINITE) {
    // The default MODE already saturates, so no MODE update is needed and the
    // conversion can stay a plain intrinsic.  Keeping it out of inline asm lets
    // InstCombine reason about it, in particular drop a dead lane 1 of the
    // source when only the low fp8 byte of the result is used.
    if (fp8_interpretation == __XPU_E5M2)
      tmp = __builtin_xcn_v_cvt_e5m2x2_f16x2(x.data);
    else
      tmp = __builtin_xcn_v_cvt_e4m3x2_f16x2(x.data);
  } else {
    // __XPU_NOSAT has to clear the MODE saturation bit around the conversion,
    // so the conversion stays inline asm to keep it ordered with the MODE
    // updates.
    int noSatfMode = 0;
    asm volatile("s_setreg_b32 hwreg(HW_REG_MODE, 24, 1) %0"
                 :
                 : "s"(noSatfMode));

    if (fp8_interpretation == __XPU_E5M2) {
      asm volatile("{v_cvt_e5m2x2_f16x2 %0, %1}" : "=v"(tmp) : "v"(x));
    } else {
      asm volatile("{v_cvt_e4m3x2_f16x2 %0, %1}" : "=v"(tmp) : "v"(x));
    }

    int satfMode = 1;
    asm volatile("s_setreg_b32 hwreg(HW_REG_MODE, 24, 1) %0" : : "s"(satfMode));
  }
#else
  if (saturate == __XPU_SATFINITE) {
    _Float16_2 x2 = x.data;

    if (fp8_interpretation == __XPU_E5M2) {
      tmp = __builtin_xcn_v_cvt_rn_satf_e5m2x2_f16x2(x2);
    } else {
      tmp = __builtin_xcn_v_cvt_rn_satf_e4m3x2_f16x2(x2);
    }
  } else
#endif // (__XPU_ARCH__ >= 5)
#endif // defined(__XPU_ARCH__)
#if (!defined __XPU_ARCH__ || (__XPU_ARCH__ == 4))
  {
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
  }
#endif // (!defined __XPU_ARCH__ || (__XPU_ARCH__ == 4))
  return tmp;
}

__XTDK_HOSTDEVICE_FP8_DECL__ float
__internal_bf16raw_to_float(const __xpu_bfloat16_raw x) {
  const unsigned int ux = ((unsigned int)x.x) << 16U;
  float fx;
  __builtin_memcpy(&fx, &ux, sizeof(ux));
  return fx;
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_bfloat16_raw
__internal_float_to_bf16raw_rz(const float x) {
  unsigned int ux;
  __xpu_bfloat16_raw r;
  __builtin_memcpy(&ux, &x, sizeof(x));
  r.x = (unsigned short int)(ux >> 16U);
  return r;
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8_storage_t __xpu_cvt_bfloat16raw_to_fp8(
    const __xpu_bfloat16_raw x, const __xpu_saturation_t saturate,
    const __xpu_fp8_interpretation_t fp8_interpretation) {
  __xpu_fp8_storage_t res;
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  __xpu_fp8x2_storage_t storage;
  __xpu_bfloat162_raw x2;
  __builtin_memcpy(&x2, &x, sizeof(__xpu_bfloat16_raw));
  __builtin_memset(&x2.y, 0, sizeof(__xpu_bfloat16_raw));
  if (saturate == __XPU_NOSAT) {
    int noSatfMode = 0;
    asm volatile("s_setreg_b32 hwreg(HW_REG_MODE, 24, 1) %0"
                 :
                 : "s"(noSatfMode));
  }

  if (fp8_interpretation == __XPU_E5M2)
    asm volatile("{v_cvt_e5m2x2_bf16x2 %0, %1}" : "=v"(storage) : "v"(x2));
  else
    asm volatile("{v_cvt_e4m3x2_bf16x2 %0, %1}" : "=v"(storage) : "v"(x2));

  if (saturate == __XPU_NOSAT) {
    int satfMode = 1;
    asm volatile("s_setreg_b32 hwreg(HW_REG_MODE, 24, 1) %0" : : "s"(satfMode));
  }
  res = (__xpu_fp8_storage_t)storage;
#else
  const float fx = __internal_bf16raw_to_float(x);
  res = __xpu_cvt_float_to_fp8(fx, saturate, fp8_interpretation);
#endif // (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x2_storage_t
__xpu_cvt_bfloat16raw2_to_fp8x2(
    const __xpu_bfloat162_raw x, const __xpu_saturation_t saturate,
    const __xpu_fp8_interpretation_t fp8_interpretation) {
  __xpu_fp8x2_storage_t storage;
#if (defined __XPU_ARCH__)
  unsigned int tmp;
  __builtin_memcpy(&tmp, &x, sizeof(x));
#if (__XPU_ARCH__ >= 5)
  if (saturate == __XPU_NOSAT) {
    int noSatfMode = 0;
    asm volatile("s_setreg_b32 hwreg(HW_REG_MODE, 24, 1) %0"
                 :
                 : "s"(noSatfMode));
  }

  if (fp8_interpretation == __XPU_E5M2)
    asm volatile("{v_cvt_e5m2x2_bf16x2 %0, %1}" : "=v"(storage) : "v"(tmp));
  else
    asm volatile("{v_cvt_e4m3x2_bf16x2 %0, %1}" : "=v"(storage) : "v"(tmp));

  if (saturate == __XPU_NOSAT) {
    int satfMode = 1;
    asm volatile("s_setreg_b32 hwreg(HW_REG_MODE, 24, 1) %0" : : "s"(satfMode));
  }
#else
  if (saturate == __XPU_SATFINITE) {
    if (fp8_interpretation == __XPU_E5M2)
      storage = __builtin_xcn_v_cvt_rn_satf_e5m2x2_bf16x2(
          __builtin_bit_cast(__xpu_bfloat162_native, tmp));
    else
      storage = __builtin_xcn_v_cvt_rn_satf_e4m3x2_bf16x2(
          __builtin_bit_cast(__xpu_bfloat162_native, tmp));
  } else
#endif // (__XPU_ARCH__ >= 5)
#endif // (defined __XPU_ARCH__)
#if (!defined __XPU_ARCH__ || (__XPU_ARCH__ == 4))
  {
    __xpu_bfloat16_raw raw;
    raw.x = x.y;
    storage = (__xpu_fp8x2_storage_t)__xpu_cvt_bfloat16raw_to_fp8(
        raw, saturate, fp8_interpretation);
    storage = (__xpu_fp8x2_storage_t)(storage << 8U);
    raw.x = x.x;
    storage = (__xpu_fp8x2_storage_t)(storage |
                                      __xpu_cvt_bfloat16raw_to_fp8(
                                          raw, saturate, fp8_interpretation));
  }
#endif // !defined __XPU_ARCH__ || (__XPU_ARCH__ == 4)
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
#if defined(__XPU_ARCH__)
  __half2_raw tmp;
  tmp =
      __xpu_cvt_fp8x2_to_halfraw2((__xpu_fp8x2_storage_t)x, fp8_interpretation);
  res = *(__half_raw *)&tmp;
#else
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
#endif /* (defined(__XPU_ARCH__)) */
  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__ __half2_raw __xpu_cvt_fp8x2_to_halfraw2(
    const __xpu_fp8x2_storage_t x,
    const __xpu_fp8_interpretation_t fp8_interpretation) {
  __half2_raw res;
#if defined(__XPU_ARCH__)
  unsigned int half2_storage;
  unsigned short tmp1, tmp2;
  if (fp8_interpretation == __XPU_E5M2) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    asm volatile("{v_cvt_f16x2_e5m2x2 %0, %1}" : "=v"(half2_storage) : "v"(x));
#else
    half2_storage = __builtin_xcn_v_cvt_rn_f16x2_e5m2x2(x);
#endif // (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  } else {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    asm volatile("{v_cvt_f16x2_e4m3x2 %0, %1}" : "=v"(half2_storage) : "v"(x));
#else
    half2_storage = __builtin_xcn_v_cvt_rn_f16x2_e4m3x2(x);
#endif // (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  }
  __builtin_memcpy(&res, &half2_storage, sizeof(half2_storage));
#else
  res.x =
      __xpu_cvt_fp8_to_halfraw((__xpu_fp8_storage_t)x, fp8_interpretation).x;
  res.y = __xpu_cvt_fp8_to_halfraw((__xpu_fp8_storage_t)(x >> 8U),
                                   fp8_interpretation)
              .x;
#endif /* (defined(__XPU_ARCH__)) */
  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__
__xpu_fp8_storage_t
__xpu_cvt_bfloat16raw_to_e8m0(const __xpu_bfloat16_raw x,
                              const __xpu_saturation_t saturate,
                              const xpuRoundMode rounding) {
  assert((rounding == xpuRoundZero) || (rounding == xpuRoundPosInf));
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  unsigned short ures = 0U;
  unsigned in = (unsigned)(x.x);
  bool needSetMode = false;
  unsigned oldMode;
  if (saturate != __XPU_SATFINITE || rounding != xpuRoundZero) {
    asm volatile("s_getreg_b32 %0, hwreg(HW_REG_MODE)" : "=s"(oldMode) :);
    setMode(saturate, rounding);
    needSetMode = true;
  }

  asm volatile("{v_cvt_e8m0x2_bf16x2 %0, %1}" : "=v"(ures) : "v"(in));

  if (needSetMode)
    resetMode(oldMode);

  return (__xpu_fp8_storage_t)ures;
#else
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
#endif // (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
}

__XTDK_HOSTDEVICE_FP8_DECL__
__xpu_fp8x2_storage_t
__xpu_cvt_bfloat162raw_to_e8m0x2(const __xpu_bfloat162_raw x,
                                 const __xpu_saturation_t saturate,
                                 const xpuRoundMode rounding) {
  assert((rounding == xpuRoundZero) || (rounding == xpuRoundPosInf));
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  __xpu_fp8x2_storage_t ures = 0U;
  unsigned in = (unsigned)(x.x) | ((unsigned)(x.y) << (unsigned)16U);
  bool needSetMode = false;
  unsigned oldMode;
  if (saturate != __XPU_SATFINITE || rounding != xpuRoundZero) {
    asm volatile("s_getreg_b32 %0, hwreg(HW_REG_MODE)" : "=s"(oldMode) :);
    setMode(saturate, rounding);
    needSetMode = true;
  }

  asm volatile("{v_cvt_e8m0x2_bf16x2 %0, %1}" : "=v"(ures) : "v"(in));

  if (needSetMode)
    resetMode(oldMode);

  return ures;
#else
  __xpu_bfloat16_raw lo, hi;
  lo.x = x.x;
  hi.x = x.y;
  __xpu_fp8x2_storage_t ures =
      __xpu_cvt_bfloat16raw_to_e8m0(hi, saturate, rounding);
  ures <<= (unsigned short)8U;
  ures |= __xpu_cvt_bfloat16raw_to_e8m0(lo, saturate, rounding);
  return ures;
#endif // (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
}

__XTDK_HOSTDEVICE_FP8_DECL__ unsigned int
__internal_fp8_float_as_uint(const float f) {
  unsigned int u;
#if defined(__XPU_ARCH__)
  u = __float_as_uint(f);
#else
  __builtin_memcpy(&u, &f, sizeof(f));
#endif /* defined(__XPU_ARCH__) */
  return u;
}

__XTDK_HOSTDEVICE_FP8_DECL__ float
__internal_fp8_uint_as_float(const unsigned int u) {
  float f;
#if defined(__XPU_ARCH__)
  f = __uint_as_float(u);
#else
  __builtin_memcpy(&f, &u, sizeof(u));
#endif /* defined(__XPU_ARCH__) */
  return f;
}

__XTDK_HOSTDEVICE_FP8_DECL__
__xpu_fp8_storage_t __xpu_cvt_float_to_e8m0(const float x,
                                            const __xpu_saturation_t saturate,
                                            const xpuRoundMode rounding) {
  assert((rounding == xpuRoundZero) || (rounding == xpuRoundPosInf));
  __xpu_fp8_storage_t res = 0U;
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  unsigned short ures = 0U;
  float2 data;
  data.x = x;
  bool needSetMode = false;
  unsigned oldMode;
  if (saturate != __XPU_SATFINITE || rounding != xpuRoundZero) {
    asm volatile("s_getreg_b32 %0, hwreg(HW_REG_MODE)" : "=s"(oldMode) :);
    setMode(saturate, rounding);
    needSetMode = true;
  }

  asm volatile("{v_cvt_e8m0x2_f32x2 %0, %1}" : "=v"(ures) : "v"(data));

  if (needSetMode)
    resetMode(oldMode);

  res = (__xpu_fp8_storage_t)ures;
#else
  if (rounding == xpuRoundZero) {
    res = __xpu_cvt_bfloat16raw_to_e8m0(
        static_cast<__xpu_bfloat16_raw>(__float2bfloat16_rz(x)), saturate,
        rounding);
  } else { // xpuRoundPosInf
    float absx = __internal_fp8_uint_as_float(
        (__internal_fp8_float_as_uint(x) << (unsigned)1U) >> (unsigned)1U);
    __xpu_bfloat16_raw r;
    unsigned int sign = 0U;
    unsigned int remainder = 0U;
    r.x = __internal_float2bfloat16(absx, sign, remainder);
    if ((remainder != 0U) && (sign == 0U)) {
      r.x++;
    }
    res = __xpu_cvt_bfloat16raw_to_e8m0(r, saturate, rounding);
  }
#endif // (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__
__xpu_fp8x2_storage_t
__xpu_cvt_float2_to_e8m0x2(const float2 x, const __xpu_saturation_t saturate,
                           const xpuRoundMode rounding) {
  assert((rounding == xpuRoundZero) || (rounding == xpuRoundPosInf));
  __xpu_fp8x2_storage_t res = 0U;
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  bool needSetMode = false;
  unsigned oldMode;
  if (saturate != __XPU_SATFINITE || rounding != xpuRoundZero) {
    asm volatile("s_getreg_b32 %0, hwreg(HW_REG_MODE)" : "=s"(oldMode) :);
    setMode(saturate, rounding);
    needSetMode = true;
  }

  asm volatile("{v_cvt_e8m0x2_f32x2 %0, %1}" : "=v"(res) : "v"(x));

  if (needSetMode)
    resetMode(oldMode);
#else
  res = __xpu_cvt_float_to_e8m0(x.y, saturate, rounding);
  res <<= (unsigned short)8U;
  res |= __xpu_cvt_float_to_e8m0(x.x, saturate, rounding);
#endif // (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__
float __internal_double_to_float_with_sticky(double x) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  // protect from ftz in device code
  float f;
  double d;
  asm("{v_cvt_f32_f64 %0, %1}" : "=v"(f) : "v"(x));
  asm("{v_cvt_f64_f32 %0, %1}" : "=v"(d) : "v"(f));
#else
  const float f = static_cast<float>(x);
  const double d = static_cast<double>(f);
#endif // (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
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

#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  unsigned short in = (unsigned short)x;
  unsigned hr = 0U;
  asm volatile("{v_cvt_bf16x2_e8m0x2 %0, %1}" : "=v"(hr) : "v"(in));

  res.x = (unsigned short)hr;
#else
  res.x = __internal_e8m0_to_bf16(x);
#endif // (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)

  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__
float __xpu_cvt_e8m0_to_float(const __xpu_fp8_storage_t x) {
  float res = 0.0f;

#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  unsigned short in = (unsigned short)x;
  asm volatile("{v_cvt_f32_e8m0 %0, %1}" : "=v"(res) : "v"(in));

#else
  res = __internal_bf16raw_to_float(__xpu_cvt_e8m0_to_bf16raw(x));
#endif // (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)

  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__
__xpu_bfloat162_raw
__xpu_cvt_e8m0x2_to_bf162raw(const __xpu_fp8x2_storage_t x) {
  __xpu_bfloat162_raw res;

#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  unsigned short in = (unsigned short)x;
  unsigned hr = 0U;
  asm volatile("{v_cvt_bf16x2_e8m0x2 %0, %1}" : "=v"(hr) : "v"(in));

  res.x = (unsigned short)hr;
  res.y = (unsigned short)(hr >> (unsigned)16U);
#else
  res.x = __internal_e8m0_to_bf16((__xpu_fp8_storage_t)x);
  res.y =
      __internal_e8m0_to_bf16((__xpu_fp8_storage_t)(x >> (unsigned short)8U));
#endif // (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)

  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__ unsigned int
__internal_pack_u16x2_to_u32(const unsigned short int src_lo,
                             const unsigned short int src_hi) {
  unsigned int dst = (static_cast<unsigned int>(src_hi) << 16U) |
                     static_cast<unsigned int>(src_lo);
  return dst;
}

#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x4_storage_t
__internal_xpu6_cvt_e5m2x4_f16x4(const __half2_raw flo,
                                 const __half2_raw fhi) {
  __half2 flo_packed = flo;
  __half2 fhi_packed = fhi;
  unsigned int out;
  asm volatile("v_cvt_e5m2x2_f16x2 %0, %1 satfinite"
               : "=v"(out)
               : "v"(flo_packed));
  asm volatile("v_cvt_e5m2x2_f16x2 %0, %1 op_sel:[0,0,0,1] satfinite"
               : "+v"(out)
               : "v"(fhi_packed));
  return static_cast<__xpu_fp8x4_storage_t>(out);
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x4_storage_t
__internal_xpu6_cvt_e4m3x4_f16x4(const __half2_raw flo,
                                 const __half2_raw fhi) {
  __half2 flo_packed = flo;
  __half2 fhi_packed = fhi;
  unsigned int out;
  asm volatile("v_cvt_e4m3x2_f16x2 %0, %1 satfinite"
               : "=v"(out)
               : "v"(flo_packed));
  asm volatile("v_cvt_e4m3x2_f16x2 %0, %1 op_sel:[0,0,0,1] satfinite"
               : "+v"(out)
               : "v"(fhi_packed));
  return static_cast<__xpu_fp8x4_storage_t>(out);
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x4_storage_t
__internal_xpu6_cvt_e8m0x4_f16x4(const __half2_raw flo,
                                 const __half2_raw fhi) {
  __half2 flo_packed = flo;
  __half2 fhi_packed = fhi;
  unsigned int out;
  asm volatile("v_cvt_e8m0x2_f16x2 %0, %1 satfinite"
               : "=v"(out)
               : "v"(flo_packed));
  asm volatile("v_cvt_e8m0x2_f16x2 %0, %1 op_sel:[0,0,0,1] satfinite"
               : "+v"(out)
               : "v"(fhi_packed));
  return static_cast<__xpu_fp8x4_storage_t>(out);
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x4_storage_t
__internal_xpu6_cvt_e5m2x4_bf16x4(const __xpu_bfloat162_raw flo,
                                  const __xpu_bfloat162_raw fhi) {
  __xpu_bfloat162 flo_packed = {flo.x, flo.y};
  __xpu_bfloat162 fhi_packed = {fhi.x, fhi.y};
  unsigned int out;
  asm volatile("v_cvt_e5m2x2_bf16x2 %0, %1 satfinite"
               : "=v"(out)
               : "v"(flo_packed));
  asm volatile("v_cvt_e5m2x2_bf16x2 %0, %1 op_sel:[0,0,0,1] satfinite"
               : "+v"(out)
               : "v"(fhi_packed));
  return static_cast<__xpu_fp8x4_storage_t>(out);
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x4_storage_t
__internal_xpu6_cvt_e4m3x4_bf16x4(const __xpu_bfloat162_raw flo,
                                  const __xpu_bfloat162_raw fhi) {
  __xpu_bfloat162 flo_packed = {flo.x, flo.y};
  __xpu_bfloat162 fhi_packed = {fhi.x, fhi.y};
  unsigned int out;
  asm volatile("v_cvt_e4m3x2_bf16x2 %0, %1 satfinite"
               : "=v"(out)
               : "v"(flo_packed));
  asm volatile("v_cvt_e4m3x2_bf16x2 %0, %1 op_sel:[0,0,0,1] satfinite"
               : "+v"(out)
               : "v"(fhi_packed));
  return static_cast<__xpu_fp8x4_storage_t>(out);
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x4_storage_t
__internal_xpu6_cvt_e8m0x4_bf16x4(const __xpu_bfloat162_raw flo,
                                  const __xpu_bfloat162_raw fhi) {
  __xpu_bfloat162 flo_packed = {flo.x, flo.y};
  __xpu_bfloat162 fhi_packed = {fhi.x, fhi.y};
  unsigned int out;
  asm volatile("v_cvt_e8m0x2_bf16x2 %0, %1 satfinite"
               : "=v"(out)
               : "v"(flo_packed));
  asm volatile("v_cvt_e8m0x2_bf16x2 %0, %1 op_sel:[0,0,0,1] satfinite"
               : "+v"(out)
               : "v"(fhi_packed));
  return static_cast<__xpu_fp8x4_storage_t>(out);
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x4_storage_t
__internal_xpu6_cvt_e5m2x4_f32x4(const float4 f) {
  unsigned int out;
  asm volatile("v_cvt_e5m2x2_f32x2 %0, %1, %2 satfinite"
               : "=v"(out)
               : "v"(f.x), "v"(f.y));
  asm volatile("v_cvt_e5m2x2_f32x2 %0, %1, %2 op_sel:[0,0,0,1] satfinite"
               : "+v"(out)
               : "v"(f.z), "v"(f.w));
  return static_cast<__xpu_fp8x4_storage_t>(out);
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x4_storage_t
__internal_xpu6_cvt_e4m3x4_f32x4(const float4 f) {
  unsigned int out;
  asm volatile("v_cvt_e4m3x2_f32x2 %0, %1, %2 satfinite"
               : "=v"(out)
               : "v"(f.x), "v"(f.y));
  asm volatile("v_cvt_e4m3x2_f32x2 %0, %1, %2 op_sel:[0,0,0,1] satfinite"
               : "+v"(out)
               : "v"(f.z), "v"(f.w));
  return static_cast<__xpu_fp8x4_storage_t>(out);
}

__XTDK_HOSTDEVICE_FP8_DECL__ __xpu_fp8x4_storage_t
__internal_xpu6_cvt_e8m0x4_f32x4(const float4 f) {
  unsigned int out;
  asm volatile("v_cvt_e8m0x2_f32x2 %0, %1, %2 satfinite"
               : "=v"(out)
               : "v"(f.x), "v"(f.y));
  asm volatile("v_cvt_e8m0x2_f32x2 %0, %1, %2 op_sel:[0,0,0,1] satfinite"
               : "+v"(out)
               : "v"(f.z), "v"(f.w));
  return static_cast<__xpu_fp8x4_storage_t>(out);
}

__XTDK_HOSTDEVICE_FP8_DECL__ float4
__internal_xpu6_cvt_f32x4_e5m2x4(const __xpu_fp8x4_storage_t x) {
  float r0, r1, r2, r3;
  asm volatile("v_cvt_f32_e5m2 %0, %1" : "=v"(r0) : "v"(x));
  asm volatile("v_cvt_f32_e5m2 %0, %1 op_sel:[1,0,0,0]"
               : "=v"(r1)
               : "v"(x));
  asm volatile("v_cvt_f32_e5m2 %0, %1 op_sel:[0,1,0,0]"
               : "=v"(r2)
               : "v"(x));
  asm volatile("v_cvt_f32_e5m2 %0, %1 op_sel:[1,1,0,0]"
               : "=v"(r3)
               : "v"(x));
  const float4 res = {r0, r1, r2, r3};
  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__ float4
__internal_xpu6_cvt_f32x4_e4m3x4(const __xpu_fp8x4_storage_t x) {
  float r0, r1, r2, r3;
  asm volatile("v_cvt_f32_e4m3 %0, %1" : "=v"(r0) : "v"(x));
  asm volatile("v_cvt_f32_e4m3 %0, %1 op_sel:[1,0,0,0]"
               : "=v"(r1)
               : "v"(x));
  asm volatile("v_cvt_f32_e4m3 %0, %1 op_sel:[0,1,0,0]"
               : "=v"(r2)
               : "v"(x));
  asm volatile("v_cvt_f32_e4m3 %0, %1 op_sel:[1,1,0,0]"
               : "=v"(r3)
               : "v"(x));
  const float4 res = {r0, r1, r2, r3};
  return res;
}

__XTDK_HOSTDEVICE_FP8_DECL__ float4
__internal_xpu6_cvt_f32x4_e8m0x4(const __xpu_fp8x4_storage_t x) {
  float r0, r1, r2, r3;
  asm volatile("v_cvt_f32_e8m0 %0, %1" : "=v"(r0) : "v"(x));
  asm volatile("v_cvt_f32_e8m0 %0, %1 op_sel:[1,0,0,0]"
               : "=v"(r1)
               : "v"(x));
  asm volatile("v_cvt_f32_e8m0 %0, %1 op_sel:[0,1,0,0]"
               : "=v"(r2)
               : "v"(x));
  asm volatile("v_cvt_f32_e8m0 %0, %1 op_sel:[1,1,0,0]"
               : "=v"(r3)
               : "v"(x));
  const float4 res = {r0, r1, r2, r3};
  return res;
}
#endif

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
struct __HOUYI_ALIGN__(1) __xpu_fp8_e5m2 {
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
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p unsigned \p long \p int data type, relies on \p
   * __NV_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e5m2(const unsigned long int val) {
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
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p long \p int data type, relies on \p __XPU_SATFINITE
   * behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e5m2(const long int val) {
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
#if defined(__XPU_ARCH__)
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    float res;
    asm volatile("{v_cvt_f32_e5m2 %0, %1}" : "=v"(res) : "v"(__x));
    return res;
#else
    return __builtin_xcn_v_cvt_rn_f32_e5m2(__x);
#endif // (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
#else
    return __internal_halfraw_to_float(
        __xpu_cvt_fp8_to_halfraw(__x, __XPU_E5M2));
#endif
  }
  /**
   * \ingroup XTDK_MATH_FP8_E5M2_STRUCT
   * Conversion operator to \p __xpu_bfloat16 data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator __xpu_bfloat16() const {
    __xpu_bfloat16_raw res;
#if defined(__XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    unsigned short in = (unsigned short)__x;
    unsigned hr = 0U;
    asm volatile("{v_cvt_bf16x2_e5m2x2 %0, %1}" : "=v"(hr) : "v"(in));
    res.x = (unsigned short)hr;
#else
    res = __internal_float_to_bf16raw_rz(float(*this));
#endif
    return static_cast<__xpu_bfloat16>(res);
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
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p unsigned \p long \p int data type.
   * Clamps negative and too large inputs to the output range.
   * \p NaN inputs convert to \p zero if output type is 32-bit.
   * \p NaN inputs convert to \p 0x8000000000000000ULL if output type is 64-bit.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator unsigned long int() const {
    unsigned long retval;
    /* Suppress VS warning: warning C4127: conditional expression is constant */
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning(push)
#pragma warning(disable : 4127)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
    if (sizeof(unsigned long) == sizeof(unsigned long long))
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning(pop)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
    {
      retval = static_cast<unsigned long>(__half2ull_rz(__half(*this)));
    } else {
      retval = static_cast<unsigned long>(__half2uint_rz(__half(*this)));
    }
    return retval;
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
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning(push)
#pragma warning(disable : 4127)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
    if (((char)-1) < (char)0)
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning(pop)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
    {
      value = static_cast<char>(static_cast<signed char>(*this));
    } else {
      value = static_cast<char>(static_cast<unsigned char>(*this));
    }
    return value;
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
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p long \p int data type.
   * Clamps too large inputs to the output range.
   * \p NaN inputs convert to \p zero if output type is 32-bit.
   * \p NaN inputs convert to \p 0x8000000000000000ULL if output type is 64-bit.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator long int() const {
    long retval;
    /* Suppress VS warning: warning C4127: conditional expression is constant */
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning(push)
#pragma warning(disable : 4127)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
    if (sizeof(long) == sizeof(long long))
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning(pop)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
    {
      retval = static_cast<long>(__half2ll_rz(__half(*this)));
    } else {
      retval = static_cast<long>(__half2int_rz(__half(*this)));
    }
    return retval;
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
struct __HOUYI_ALIGN__(2) __xpu_fp8x2_e5m2 {
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
struct __HOUYI_ALIGN__(4) __xpu_fp8x4_e5m2 {
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
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    __x = __internal_xpu6_cvt_e5m2x4_f16x4(static_cast<__half2_raw>(flo),
                                           static_cast<__half2_raw>(fhi));
#else
    const __xpu_fp8x2_storage_t rlo = __xpu_cvt_halfraw2_to_fp8x2(
        static_cast<__half2_raw>(flo), __XPU_SATFINITE, __XPU_E5M2);
    const __xpu_fp8x2_storage_t rhi = __xpu_cvt_halfraw2_to_fp8x2(
        static_cast<__half2_raw>(fhi), __XPU_SATFINITE, __XPU_E5M2);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
#endif
  }
  /**
   * \ingroup XTDK_MATH_FP8X4_E5M2_STRUCT
   * Constructor from a pair of \p __xpu_bfloat162 data type values,
   * relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e5m2(const __xpu_bfloat162 flo,
                                                    const __xpu_bfloat162 fhi) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    __x = __internal_xpu6_cvt_e5m2x4_bf16x4(
        static_cast<__xpu_bfloat162_raw>(flo),
        static_cast<__xpu_bfloat162_raw>(fhi));
#else
    const __xpu_fp8x2_storage_t rlo = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(flo), __XPU_SATFINITE, __XPU_E5M2);
    const __xpu_fp8x2_storage_t rhi = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(fhi), __XPU_SATFINITE, __XPU_E5M2);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
#endif
  }
  /**
   * \ingroup XTDK_MATH_FP8X4_E5M2_STRUCT
   * Constructor from \p __half4 packed data type.
   * Relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e5m2(const __half4 f) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    __x = __internal_xpu6_cvt_e5m2x4_f16x4(static_cast<__half2_raw>(f.low),
                                           static_cast<__half2_raw>(f.high));
#else
    const __xpu_fp8x2_storage_t rlo = __xpu_cvt_halfraw2_to_fp8x2(
        static_cast<__half2_raw>(f.low), __XPU_SATFINITE, __XPU_E5M2);
    const __xpu_fp8x2_storage_t rhi = __xpu_cvt_halfraw2_to_fp8x2(
        static_cast<__half2_raw>(f.high), __XPU_SATFINITE, __XPU_E5M2);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
#endif
  }
  /**
   * \ingroup XTDK_MATH_FP8X4_E5M2_STRUCT
   * Constructor from \p __xpu_bfloat164 packed data type, uses cvt4 packed
   * instruction on XPU6+, falls back to two \p __xpu_bfloat162 conversions
   * otherwise. Relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e5m2(const __xpu_bfloat164 f) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    __x = __internal_xpu6_cvt_e5m2x4_bf16x4(
        static_cast<__xpu_bfloat162_raw>(f.low),
        static_cast<__xpu_bfloat162_raw>(f.high));
#else
    const __xpu_fp8x2_storage_t rlo = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.low), __XPU_SATFINITE, __XPU_E5M2);
    const __xpu_fp8x2_storage_t rhi = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.high), __XPU_SATFINITE, __XPU_E5M2);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
#endif
  }
  /**
   * \ingroup XTDK_MATH_FP8X4_E5M2_STRUCT
   * Constructor from \p float4 vector data type,
   * relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e5m2(const float4 f) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    __x = __internal_xpu6_cvt_e5m2x4_f32x4(f);
#else
    const float2 flo = {f.x, f.y};
    const float2 fhi = {f.z, f.w};
    const __xpu_fp8x2_storage_t rlo =
        __xpu_cvt_float2_to_fp8x2(flo, __XPU_SATFINITE, __XPU_E5M2);
    const __xpu_fp8x2_storage_t rhi =
        __xpu_cvt_float2_to_fp8x2(fhi, __XPU_SATFINITE, __XPU_E5M2);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
#endif
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
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    return __internal_xpu6_cvt_f32x4_e5m2x4(__x);
#else
    const __xpu_fp8x2_storage_t slo = static_cast<__xpu_fp8x2_storage_t>(__x);
    const __xpu_fp8x2_storage_t shi =
        static_cast<__xpu_fp8x2_storage_t>(__x >> 16U);
    float2 rlo = __internal_halfraw2_to_float2(
        __xpu_cvt_fp8x2_to_halfraw2(slo, __XPU_E5M2));
    float2 rhi = __internal_halfraw2_to_float2(
        __xpu_cvt_fp8x2_to_halfraw2(shi, __XPU_E5M2));
    float4 res = {rlo.x, rlo.y, rhi.x, rhi.y};
    return res;
#endif
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
struct __HOUYI_ALIGN__(1) __xpu_fp8_e4m3 {
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
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p unsigned \p long \p int data type, relies on \p
   * __NV_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e4m3(const unsigned long int val) {
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
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p long \p int data type, relies on \p
   * __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8_e4m3(const long int val) {
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
#if defined(__XPU_ARCH__)
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    float res;
    asm volatile("{v_cvt_f32_e4m3 %0, %1}" : "=v"(res) : "v"(__x));
    return res;
#else
    return __builtin_xcn_v_cvt_rn_f32_e4m3(__x);
#endif // (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
#else
    return __internal_halfraw_to_float(
        __xpu_cvt_fp8_to_halfraw(__x, __XPU_E4M3));
#endif
  }
  /**
   * \ingroup XTDK_MATH_FP8_E4M3_STRUCT
   * Conversion operator to \p __xpu_bfloat16 data type.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator __xpu_bfloat16() const {
    __xpu_bfloat16_raw res;
#if defined(__XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    unsigned short in = (unsigned short)__x;
    unsigned hr = 0U;
    asm volatile("{v_cvt_bf16x2_e4m3x2 %0, %1}" : "=v"(hr) : "v"(in));
    res.x = (unsigned short)hr;
#else
    res = __internal_float_to_bf16raw_rz(float(*this));
#endif
    return static_cast<__xpu_bfloat16>(res);
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
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p unsigned \p long \p int data type.
   * Clamps negative and too large inputs to the output range.
   * \p NaN inputs convert to \p zero if output type is 32-bit.
   * \p NaN inputs convert to \p 0x8000000000000000ULL if output type is 64-bit.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator unsigned long int() const {
    unsigned long retval;
    /* Suppress VS warning: warning C4127: conditional expression is constant */
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning(push)
#pragma warning(disable : 4127)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
    if (sizeof(unsigned long) == sizeof(unsigned long long))
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning(pop)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
    {
      retval = static_cast<unsigned long>(__half2ull_rz(__half(*this)));
    } else {
      retval = static_cast<unsigned long>(__half2uint_rz(__half(*this)));
    }
    return retval;
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
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning(push)
#pragma warning(disable : 4127)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
    if (((char)-1) < (char)0)
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning(pop)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
    {
      value = static_cast<char>(static_cast<signed char>(*this));
    } else {
      value = static_cast<char>(static_cast<unsigned char>(*this));
    }
    return value;
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
   * \ingroup XTDK_MATH_FP8_MISC
   * Conversion operator to \p long \p int data type.
   * Clamps too large inputs to the output range.
   * \p NaN inputs convert to \p zero if output type is 32-bit.
   * \p NaN inputs convert to \p 0x8000000000000000ULL if output type is 64-bit.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ operator long int() const {
    long retval;
    /* Suppress VS warning: warning C4127: conditional expression is constant */
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning(push)
#pragma warning(disable : 4127)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
    if (sizeof(long) == sizeof(long long))
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning(pop)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
    {
      retval = static_cast<long>(__half2ll_rz(__half(*this)));
    } else {
      retval = static_cast<long>(__half2int_rz(__half(*this)));
    }
    return retval;
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
struct __HOUYI_ALIGN__(2) __xpu_fp8x2_e4m3 {
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
struct __HOUYI_ALIGN__(4) __xpu_fp8x4_e4m3 {
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
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    __x = __internal_xpu6_cvt_e4m3x4_f16x4(static_cast<__half2_raw>(flo),
                                           static_cast<__half2_raw>(fhi));
#else
    const __xpu_fp8x2_storage_t rlo = __xpu_cvt_halfraw2_to_fp8x2(
        static_cast<__half2_raw>(flo), __XPU_SATFINITE, __XPU_E4M3);
    const __xpu_fp8x2_storage_t rhi = __xpu_cvt_halfraw2_to_fp8x2(
        static_cast<__half2_raw>(fhi), __XPU_SATFINITE, __XPU_E4M3);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
#endif
  }
  /**
   * \ingroup XTDK_MATH_FP8X4_E4M3_STRUCT
   * Constructor from a pair of \p __xpu_bfloat162 data type values,
   * relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e4m3(const __xpu_bfloat162 flo,
                                                    const __xpu_bfloat162 fhi) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    __x = __internal_xpu6_cvt_e4m3x4_bf16x4(
        static_cast<__xpu_bfloat162_raw>(flo),
        static_cast<__xpu_bfloat162_raw>(fhi));
#else
    const __xpu_fp8x2_storage_t rlo = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(flo), __XPU_SATFINITE, __XPU_E4M3);
    const __xpu_fp8x2_storage_t rhi = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(fhi), __XPU_SATFINITE, __XPU_E4M3);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
#endif
  }
  /**
   * \ingroup XTDK_MATH_FP8X4_E4M3_STRUCT
   * Constructor from \p __half4 packed data type.
   * Relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e4m3(const __half4 f) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    __x = __internal_xpu6_cvt_e4m3x4_f16x4(static_cast<__half2_raw>(f.low),
                                           static_cast<__half2_raw>(f.high));
#else
    const __xpu_fp8x2_storage_t rlo = __xpu_cvt_halfraw2_to_fp8x2(
        static_cast<__half2_raw>(f.low), __XPU_SATFINITE, __XPU_E4M3);
    const __xpu_fp8x2_storage_t rhi = __xpu_cvt_halfraw2_to_fp8x2(
        static_cast<__half2_raw>(f.high), __XPU_SATFINITE, __XPU_E4M3);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
#endif
  }
  /**
   * \ingroup XTDK_MATH_FP8X4_E4M3_STRUCT
   * Constructor from \p __xpu_bfloat164 packed data type, uses cvt4 packed
   * instruction on XPU6+, falls back to two \p __xpu_bfloat162 conversions
   * otherwise. Relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e4m3(const __xpu_bfloat164 f) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    __x = __internal_xpu6_cvt_e4m3x4_bf16x4(
        static_cast<__xpu_bfloat162_raw>(f.low),
        static_cast<__xpu_bfloat162_raw>(f.high));
#else
    const __xpu_fp8x2_storage_t rlo = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.low), __XPU_SATFINITE, __XPU_E4M3);
    const __xpu_fp8x2_storage_t rhi = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.high), __XPU_SATFINITE, __XPU_E4M3);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
#endif
  }
  /**
   * \ingroup XTDK_MATH_FP8X4_E4M3_STRUCT
   * Constructor from \p float4 vector data type,
   * relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e4m3(const float4 f) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    __x = __internal_xpu6_cvt_e4m3x4_f32x4(f);
#else
    const float2 flo = {f.x, f.y};
    const float2 fhi = {f.z, f.w};
    const __xpu_fp8x2_storage_t rlo =
        __xpu_cvt_float2_to_fp8x2(flo, __XPU_SATFINITE, __XPU_E4M3);
    const __xpu_fp8x2_storage_t rhi =
        __xpu_cvt_float2_to_fp8x2(fhi, __XPU_SATFINITE, __XPU_E4M3);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
#endif
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
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    return __internal_xpu6_cvt_f32x4_e4m3x4(__x);
#else
    const __xpu_fp8x2_storage_t slo = static_cast<__xpu_fp8x2_storage_t>(__x);
    const __xpu_fp8x2_storage_t shi =
        static_cast<__xpu_fp8x2_storage_t>(__x >> 16U);
    float2 rlo = __internal_halfraw2_to_float2(
        __xpu_cvt_fp8x2_to_halfraw2(slo, __XPU_E4M3));
    float2 rhi = __internal_halfraw2_to_float2(
        __xpu_cvt_fp8x2_to_halfraw2(shi, __XPU_E4M3));
    float4 res = {rlo.x, rlo.y, rhi.x, rhi.y};
    return res;
#endif
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
struct __HOUYI_ALIGN__(1) __xpu_fp8_e8m0 {
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
    return __xpu_cvt_e8m0_to_float((*this).__x);
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
#if defined(__XPU_ARCH__)
    // protect from ftz in device code
    asm("{v_cvt_f64_f32 %0, %1}" : "=v"(d) : "v"(f));
#else
    d = static_cast<double>(f);
#endif
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
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning(push)
#pragma warning(disable : 4127)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
    if (sizeof(unsigned long) == sizeof(unsigned long long))
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning(pop)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
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
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning(push)
#pragma warning(disable : 4127)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
    if (((char)-1) < (char)0)
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning(pop)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
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
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning(push)
#pragma warning(disable : 4127)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
    if (sizeof(long) == sizeof(long long))
#if defined(_MSC_VER) && !defined(__XPU_ARCH__)
#pragma warning(pop)
#endif /* _MSC_VER && !defined(__XPU_ARCH__) */
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
struct __HOUYI_ALIGN__(2) __xpu_fp8x2_e8m0 {
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
struct __HOUYI_ALIGN__(4) __xpu_fp8x4_e8m0 {
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
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    __x = __internal_xpu6_cvt_e8m0x4_f16x4(static_cast<__half2_raw>(flo),
                                           static_cast<__half2_raw>(fhi));
#else
    const __xpu_fp8x2_storage_t rlo = static_cast<__xpu_fp8x2_e8m0>(flo).__x;
    const __xpu_fp8x2_storage_t rhi = static_cast<__xpu_fp8x2_e8m0>(fhi).__x;
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
#endif
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from a pair of \p __xpu_bfloat162 data type values,
   * relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e8m0(const __xpu_bfloat162 flo,
                                                    const __xpu_bfloat162 fhi) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    __x = __internal_xpu6_cvt_e8m0x4_bf16x4(
        static_cast<__xpu_bfloat162_raw>(flo),
        static_cast<__xpu_bfloat162_raw>(fhi));
#else
    const __xpu_fp8x2_storage_t rlo = static_cast<__xpu_fp8x2_e8m0>(flo).__x;
    const __xpu_fp8x2_storage_t rhi = static_cast<__xpu_fp8x2_e8m0>(fhi).__x;
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
#endif
  }
  /**
   * \ingroup XTDK_MATH_FP8_MISC
   * Constructor from \p float4 vector data type,
   * relies on \p __XPU_SATFINITE behavior for out-of-range values.
   */
  explicit __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x4_e8m0(const float4 f) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    __x = __internal_xpu6_cvt_e8m0x4_f32x4(f);
#else
    const float2 flo = {f.x, f.y};
    const float2 fhi = {f.z, f.w};
    const __xpu_fp8x2_storage_t rlo =
        __xpu_cvt_float2_to_e8m0x2(flo, __XPU_SATFINITE, xpuRoundZero);
    const __xpu_fp8x2_storage_t rhi =
        __xpu_cvt_float2_to_e8m0x2(fhi, __XPU_SATFINITE, xpuRoundZero);
    __x = __internal_pack_u16x2_to_u32(rlo, rhi);
#endif
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
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    return __internal_xpu6_cvt_f32x4_e8m0x4(__x);
#else
    __xpu_fp8x2_e8m0 lo;
    lo.__x = static_cast<__xpu_fp8x2_storage_t>(__x);
    __xpu_fp8x2_e8m0 hi;
    hi.__x = static_cast<__xpu_fp8x2_storage_t>(__x >> 16U);

    float2 rlo = static_cast<float2>(lo);
    float2 rhi = static_cast<float2>(hi);
    float4 res = {rlo.x, rlo.y, rhi.x, rhi.y};
    return res;
#endif
  }
#endif /* !defined(__XTDK_NO_FP8_CONVERSION_OPERATORS__) */
#endif /* !defined(__XTDK_NO_FP8_CONVERSIONS__) */
};

// BEGIN fp8 packed pseudo wrappers (XPU6+)
// Wrappers for v_cvt_e4m3x2_bf16x2 / v_cvt_e5m2x2_bf16x2 packed pseudos.
// The x2 variant (4 fp8 results) reuses the existing __xpu_fp8x4_e4m3/e5m2.
// The x4/x8 variants produce 8/16 fp8 values and use lightweight storage types
// __xpu_fp8x8_e4m3, __xpu_fp8x16_e4m3, __xpu_fp8x8_e5m2, __xpu_fp8x16_e5m2.
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)

// Storage type for 8 and 16 packed fp8 values (64-bit and 128-bit).
typedef unsigned long long __xpu_fp8x8_storage_t;

// --- 8 packed fp8 (e4m3) ---
struct __HOUYI_ALIGN__(8) __xpu_fp8x8_e4m3 {
  __xpu_fp8x8_storage_t __x;
#if defined(__CPP_VERSION_AT_LEAST_11_FP8)
  __xpu_fp8x8_e4m3() = default;
#else
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x8_e4m3() {}
#endif
  __XTDK_HOSTDEVICE_FP8__ explicit __xpu_fp8x8_e4m3(__xpu_fp8x8_storage_t v)
      : __x(v) {}
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x8_e4m3(
      __xpu_fp8x4_e4m3 lo, __xpu_fp8x4_e4m3 hi) {
    __x = (static_cast<__xpu_fp8x8_storage_t>(hi.__x) << 32) |
          static_cast<__xpu_fp8x8_storage_t>(lo.__x);
  }
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x8_e4m3(
      __xpu_fp8x2_e4m3 v0, __xpu_fp8x2_e4m3 v1,
      __xpu_fp8x2_e4m3 v2, __xpu_fp8x2_e4m3 v3) {
    __x = (static_cast<__xpu_fp8x8_storage_t>(v3.__x) << 48) |
          (static_cast<__xpu_fp8x8_storage_t>(v2.__x) << 32) |
          (static_cast<__xpu_fp8x8_storage_t>(v1.__x) << 16) |
          static_cast<__xpu_fp8x8_storage_t>(v0.__x);
  }
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x8_e4m3(
      __xpu_fp8_e4m3 v0, __xpu_fp8_e4m3 v1, __xpu_fp8_e4m3 v2, __xpu_fp8_e4m3 v3,
      __xpu_fp8_e4m3 v4, __xpu_fp8_e4m3 v5, __xpu_fp8_e4m3 v6, __xpu_fp8_e4m3 v7) {
    __x = (static_cast<__xpu_fp8x8_storage_t>(v7.__x) << 56) |
          (static_cast<__xpu_fp8x8_storage_t>(v6.__x) << 48) |
          (static_cast<__xpu_fp8x8_storage_t>(v5.__x) << 40) |
          (static_cast<__xpu_fp8x8_storage_t>(v4.__x) << 32) |
          (static_cast<__xpu_fp8x8_storage_t>(v3.__x) << 24) |
          (static_cast<__xpu_fp8x8_storage_t>(v2.__x) << 16) |
          (static_cast<__xpu_fp8x8_storage_t>(v1.__x) << 8)  |
          static_cast<__xpu_fp8x8_storage_t>(v0.__x);
  }
  /**
   * Constructor from \p __xpu_bfloat168 packed data type, uses cvt8 packed
   * instruction on XPU6+. Relies on \p __XPU_SATFINITE behavior.
   */
  __XTDK_HOSTDEVICE_FP8__ explicit __xpu_fp8x8_e4m3(__xpu_bfloat168 f) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    typedef short __v4i16 __attribute__((ext_vector_type(4)));
    __v4i16 tmp = (__v4i16)__builtin_xcn_cvt8_e4m3_bf16(__bfloat168_as_native(f));
    __builtin_memcpy(&__x, &tmp, sizeof(__x));
#else
    const __xpu_fp8x2_storage_t r0 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.low.low), __XPU_SATFINITE, __XPU_E4M3);
    const __xpu_fp8x2_storage_t r1 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.low.high), __XPU_SATFINITE, __XPU_E4M3);
    const __xpu_fp8x2_storage_t r2 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.high.low), __XPU_SATFINITE, __XPU_E4M3);
    const __xpu_fp8x2_storage_t r3 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.high.high), __XPU_SATFINITE, __XPU_E4M3);
    __x = (static_cast<__xpu_fp8x8_storage_t>(r1) << 16) |
          (static_cast<__xpu_fp8x8_storage_t>(r2) << 32) |
          (static_cast<__xpu_fp8x8_storage_t>(r3) << 48) | r0;
#endif
  }
};

// --- 16 packed fp8 (e4m3) ---
struct __HOUYI_ALIGN__(16) __xpu_fp8x16_e4m3 {
  __xpu_fp8x8_storage_t __x[2];
#if defined(__CPP_VERSION_AT_LEAST_11_FP8)
  __xpu_fp8x16_e4m3() = default;
#else
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x16_e4m3() {}
#endif
  __XTDK_HOSTDEVICE_FP8__ explicit __xpu_fp8x16_e4m3(
      __xpu_fp8x8_storage_t lo, __xpu_fp8x8_storage_t hi) {
    __x[0] = lo;
    __x[1] = hi;
  }
  /**
   * Constructor from \p __xpu_bfloat1616 packed data type, uses cvt16 packed
   * instruction on XPU6+. Relies on \p __XPU_SATFINITE behavior.
   */
  __XTDK_HOSTDEVICE_FP8__ explicit __xpu_fp8x16_e4m3(__xpu_bfloat1616 f) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    typedef short __v8i16 __attribute__((ext_vector_type(8)));
    __v8i16 tmp = (__v8i16)__builtin_xcn_cvt16_e4m3_bf16(__bfloat1616_as_native(f));
    __builtin_memcpy(__x, &tmp, sizeof(__x));
#else
    const __xpu_fp8x2_storage_t r0 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.low.low.low), __XPU_SATFINITE, __XPU_E4M3);
    const __xpu_fp8x2_storage_t r1 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.low.low.high), __XPU_SATFINITE, __XPU_E4M3);
    const __xpu_fp8x2_storage_t r2 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.low.high.low), __XPU_SATFINITE, __XPU_E4M3);
    const __xpu_fp8x2_storage_t r3 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.low.high.high), __XPU_SATFINITE, __XPU_E4M3);
    const __xpu_fp8x2_storage_t r4 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.high.low.low), __XPU_SATFINITE, __XPU_E4M3);
    const __xpu_fp8x2_storage_t r5 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.high.low.high), __XPU_SATFINITE, __XPU_E4M3);
    const __xpu_fp8x2_storage_t r6 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.high.high.low), __XPU_SATFINITE, __XPU_E4M3);
    const __xpu_fp8x2_storage_t r7 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.high.high.high), __XPU_SATFINITE, __XPU_E4M3);
    __x[0] = (static_cast<__xpu_fp8x8_storage_t>(r1) << 16) |
              (static_cast<__xpu_fp8x8_storage_t>(r2) << 32) |
              (static_cast<__xpu_fp8x8_storage_t>(r3) << 48) | r0;
    __x[1] = (static_cast<__xpu_fp8x8_storage_t>(r5) << 16) |
              (static_cast<__xpu_fp8x8_storage_t>(r6) << 32) |
              (static_cast<__xpu_fp8x8_storage_t>(r7) << 48) | r4;
#endif
  }
  // 2 × fp8x8 → fp8x16
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x16_e4m3(
      __xpu_fp8x8_e4m3 lo, __xpu_fp8x8_e4m3 hi) {
    __x[0] = lo.__x;
    __x[1] = hi.__x;
  }
  // 4 × fp8x4 → fp8x16
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x16_e4m3(
      __xpu_fp8x4_e4m3 v0, __xpu_fp8x4_e4m3 v1,
      __xpu_fp8x4_e4m3 v2, __xpu_fp8x4_e4m3 v3) {
    __x[0] = (static_cast<__xpu_fp8x8_storage_t>(v1.__x) << 32) |
              static_cast<__xpu_fp8x8_storage_t>(v0.__x);
    __x[1] = (static_cast<__xpu_fp8x8_storage_t>(v3.__x) << 32) |
              static_cast<__xpu_fp8x8_storage_t>(v2.__x);
  }
  // 8 × fp8x2 → fp8x16
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x16_e4m3(
      __xpu_fp8x2_e4m3 v0, __xpu_fp8x2_e4m3 v1,
      __xpu_fp8x2_e4m3 v2, __xpu_fp8x2_e4m3 v3,
      __xpu_fp8x2_e4m3 v4, __xpu_fp8x2_e4m3 v5,
      __xpu_fp8x2_e4m3 v6, __xpu_fp8x2_e4m3 v7) {
    __x[0] = (static_cast<__xpu_fp8x8_storage_t>(v3.__x) << 48) |
              (static_cast<__xpu_fp8x8_storage_t>(v2.__x) << 32) |
              (static_cast<__xpu_fp8x8_storage_t>(v1.__x) << 16) |
              static_cast<__xpu_fp8x8_storage_t>(v0.__x);
    __x[1] = (static_cast<__xpu_fp8x8_storage_t>(v7.__x) << 48) |
              (static_cast<__xpu_fp8x8_storage_t>(v6.__x) << 32) |
              (static_cast<__xpu_fp8x8_storage_t>(v5.__x) << 16) |
              static_cast<__xpu_fp8x8_storage_t>(v4.__x);
  }
  // 16 × fp8 → fp8x16
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x16_e4m3(
      __xpu_fp8_e4m3 v0,  __xpu_fp8_e4m3 v1,
      __xpu_fp8_e4m3 v2,  __xpu_fp8_e4m3 v3,
      __xpu_fp8_e4m3 v4,  __xpu_fp8_e4m3 v5,
      __xpu_fp8_e4m3 v6,  __xpu_fp8_e4m3 v7,
      __xpu_fp8_e4m3 v8,  __xpu_fp8_e4m3 v9,
      __xpu_fp8_e4m3 v10, __xpu_fp8_e4m3 v11,
      __xpu_fp8_e4m3 v12, __xpu_fp8_e4m3 v13,
      __xpu_fp8_e4m3 v14, __xpu_fp8_e4m3 v15) {
    __x[0] = (static_cast<__xpu_fp8x8_storage_t>(v7.__x)  << 56) |
              (static_cast<__xpu_fp8x8_storage_t>(v6.__x)  << 48) |
              (static_cast<__xpu_fp8x8_storage_t>(v5.__x)  << 40) |
              (static_cast<__xpu_fp8x8_storage_t>(v4.__x)  << 32) |
              (static_cast<__xpu_fp8x8_storage_t>(v3.__x)  << 24) |
              (static_cast<__xpu_fp8x8_storage_t>(v2.__x)  << 16) |
              (static_cast<__xpu_fp8x8_storage_t>(v1.__x)  <<  8) |
              static_cast<__xpu_fp8x8_storage_t>(v0.__x);
    __x[1] = (static_cast<__xpu_fp8x8_storage_t>(v15.__x) << 56) |
              (static_cast<__xpu_fp8x8_storage_t>(v14.__x) << 48) |
              (static_cast<__xpu_fp8x8_storage_t>(v13.__x) << 40) |
              (static_cast<__xpu_fp8x8_storage_t>(v12.__x) << 32) |
              (static_cast<__xpu_fp8x8_storage_t>(v11.__x) << 24) |
              (static_cast<__xpu_fp8x8_storage_t>(v10.__x) << 16) |
              (static_cast<__xpu_fp8x8_storage_t>(v9.__x)  <<  8) |
              static_cast<__xpu_fp8x8_storage_t>(v8.__x);
  }
};

// --- 8 packed fp8 (e5m2) ---
struct __HOUYI_ALIGN__(8) __xpu_fp8x8_e5m2 {
  __xpu_fp8x8_storage_t __x;
#if defined(__CPP_VERSION_AT_LEAST_11_FP8)
  __xpu_fp8x8_e5m2() = default;
#else
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x8_e5m2() {}
#endif
  __XTDK_HOSTDEVICE_FP8__ explicit __xpu_fp8x8_e5m2(__xpu_fp8x8_storage_t v)
      : __x(v) {}
  /**
   * Constructor from \p __xpu_bfloat168 packed data type, uses cvt8 packed
   * instruction on XPU6+. Relies on \p __XPU_SATFINITE behavior.
   */
  __XTDK_HOSTDEVICE_FP8__ explicit __xpu_fp8x8_e5m2(__xpu_bfloat168 f) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    typedef short __v4i16 __attribute__((ext_vector_type(4)));
    __v4i16 tmp = (__v4i16)__builtin_xcn_cvt8_e5m2_bf16(__bfloat168_as_native(f));
    __builtin_memcpy(&__x, &tmp, sizeof(__x));
#else
    const __xpu_fp8x2_storage_t r0 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.low.low), __XPU_SATFINITE, __XPU_E5M2);
    const __xpu_fp8x2_storage_t r1 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.low.high), __XPU_SATFINITE, __XPU_E5M2);
    const __xpu_fp8x2_storage_t r2 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.high.low), __XPU_SATFINITE, __XPU_E5M2);
    const __xpu_fp8x2_storage_t r3 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.high.high), __XPU_SATFINITE, __XPU_E5M2);
    __x = (static_cast<__xpu_fp8x8_storage_t>(r1) << 16) |
          (static_cast<__xpu_fp8x8_storage_t>(r2) << 32) |
          (static_cast<__xpu_fp8x8_storage_t>(r3) << 48) | r0;
#endif
  }
  // 2 × fp8x4 → fp8x8
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x8_e5m2(
      __xpu_fp8x4_e5m2 lo, __xpu_fp8x4_e5m2 hi) {
    __x = (static_cast<__xpu_fp8x8_storage_t>(hi.__x) << 32) |
          static_cast<__xpu_fp8x8_storage_t>(lo.__x);
  }
  // 4 × fp8x2 → fp8x8
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x8_e5m2(
      __xpu_fp8x2_e5m2 v0, __xpu_fp8x2_e5m2 v1,
      __xpu_fp8x2_e5m2 v2, __xpu_fp8x2_e5m2 v3) {
    __x = (static_cast<__xpu_fp8x8_storage_t>(v3.__x) << 48) |
          (static_cast<__xpu_fp8x8_storage_t>(v2.__x) << 32) |
          (static_cast<__xpu_fp8x8_storage_t>(v1.__x) << 16) |
          static_cast<__xpu_fp8x8_storage_t>(v0.__x);
  }
  // 8 × fp8 → fp8x8
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x8_e5m2(
      __xpu_fp8_e5m2 v0, __xpu_fp8_e5m2 v1, __xpu_fp8_e5m2 v2, __xpu_fp8_e5m2 v3,
      __xpu_fp8_e5m2 v4, __xpu_fp8_e5m2 v5, __xpu_fp8_e5m2 v6, __xpu_fp8_e5m2 v7) {
    __x = (static_cast<__xpu_fp8x8_storage_t>(v7.__x) << 56) |
          (static_cast<__xpu_fp8x8_storage_t>(v6.__x) << 48) |
          (static_cast<__xpu_fp8x8_storage_t>(v5.__x) << 40) |
          (static_cast<__xpu_fp8x8_storage_t>(v4.__x) << 32) |
          (static_cast<__xpu_fp8x8_storage_t>(v3.__x) << 24) |
          (static_cast<__xpu_fp8x8_storage_t>(v2.__x) << 16) |
          (static_cast<__xpu_fp8x8_storage_t>(v1.__x) <<  8) |
          static_cast<__xpu_fp8x8_storage_t>(v0.__x);
  }
};

// --- 16 packed fp8 (e5m2) ---
struct __HOUYI_ALIGN__(16) __xpu_fp8x16_e5m2 {
  __xpu_fp8x8_storage_t __x[2];
#if defined(__CPP_VERSION_AT_LEAST_11_FP8)
  __xpu_fp8x16_e5m2() = default;
#else
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x16_e5m2() {}
#endif
  __XTDK_HOSTDEVICE_FP8__ explicit __xpu_fp8x16_e5m2(
      __xpu_fp8x8_storage_t lo, __xpu_fp8x8_storage_t hi) {
    __x[0] = lo;
    __x[1] = hi;
  }
  /**
   * Constructor from \p __xpu_bfloat1616 packed data type, uses cvt16 packed
   * instruction on XPU6+. Relies on \p __XPU_SATFINITE behavior.
   */
  __XTDK_HOSTDEVICE_FP8__ explicit __xpu_fp8x16_e5m2(__xpu_bfloat1616 f) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 6)
    typedef short __v8i16 __attribute__((ext_vector_type(8)));
    __v8i16 tmp = (__v8i16)__builtin_xcn_cvt16_e5m2_bf16(__bfloat1616_as_native(f));
    __builtin_memcpy(__x, &tmp, sizeof(__x));
#else
    const __xpu_fp8x2_storage_t r0 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.low.low.low), __XPU_SATFINITE, __XPU_E5M2);
    const __xpu_fp8x2_storage_t r1 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.low.low.high), __XPU_SATFINITE, __XPU_E5M2);
    const __xpu_fp8x2_storage_t r2 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.low.high.low), __XPU_SATFINITE, __XPU_E5M2);
    const __xpu_fp8x2_storage_t r3 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.low.high.high), __XPU_SATFINITE, __XPU_E5M2);
    const __xpu_fp8x2_storage_t r4 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.high.low.low), __XPU_SATFINITE, __XPU_E5M2);
    const __xpu_fp8x2_storage_t r5 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.high.low.high), __XPU_SATFINITE, __XPU_E5M2);
    const __xpu_fp8x2_storage_t r6 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.high.high.low), __XPU_SATFINITE, __XPU_E5M2);
    const __xpu_fp8x2_storage_t r7 = __xpu_cvt_bfloat16raw2_to_fp8x2(
        static_cast<__xpu_bfloat162_raw>(f.high.high.high), __XPU_SATFINITE, __XPU_E5M2);
    __x[0] = (static_cast<__xpu_fp8x8_storage_t>(r1) << 16) |
              (static_cast<__xpu_fp8x8_storage_t>(r2) << 32) |
              (static_cast<__xpu_fp8x8_storage_t>(r3) << 48) | r0;
    __x[1] = (static_cast<__xpu_fp8x8_storage_t>(r5) << 16) |
              (static_cast<__xpu_fp8x8_storage_t>(r6) << 32) |
              (static_cast<__xpu_fp8x8_storage_t>(r7) << 48) | r4;
#endif
  }
  // 2 × fp8x8 → fp8x16
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x16_e5m2(
      __xpu_fp8x8_e5m2 lo, __xpu_fp8x8_e5m2 hi) {
    __x[0] = lo.__x;
    __x[1] = hi.__x;
  }
  // 4 × fp8x4 → fp8x16
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x16_e5m2(
      __xpu_fp8x4_e5m2 v0, __xpu_fp8x4_e5m2 v1,
      __xpu_fp8x4_e5m2 v2, __xpu_fp8x4_e5m2 v3) {
    __x[0] = (static_cast<__xpu_fp8x8_storage_t>(v1.__x) << 32) |
              static_cast<__xpu_fp8x8_storage_t>(v0.__x);
    __x[1] = (static_cast<__xpu_fp8x8_storage_t>(v3.__x) << 32) |
              static_cast<__xpu_fp8x8_storage_t>(v2.__x);
  }
  // 8 × fp8x2 → fp8x16
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x16_e5m2(
      __xpu_fp8x2_e5m2 v0, __xpu_fp8x2_e5m2 v1,
      __xpu_fp8x2_e5m2 v2, __xpu_fp8x2_e5m2 v3,
      __xpu_fp8x2_e5m2 v4, __xpu_fp8x2_e5m2 v5,
      __xpu_fp8x2_e5m2 v6, __xpu_fp8x2_e5m2 v7) {
    __x[0] = (static_cast<__xpu_fp8x8_storage_t>(v3.__x) << 48) |
              (static_cast<__xpu_fp8x8_storage_t>(v2.__x) << 32) |
              (static_cast<__xpu_fp8x8_storage_t>(v1.__x) << 16) |
              static_cast<__xpu_fp8x8_storage_t>(v0.__x);
    __x[1] = (static_cast<__xpu_fp8x8_storage_t>(v7.__x) << 48) |
              (static_cast<__xpu_fp8x8_storage_t>(v6.__x) << 32) |
              (static_cast<__xpu_fp8x8_storage_t>(v5.__x) << 16) |
              static_cast<__xpu_fp8x8_storage_t>(v4.__x);
  }
  // 16 × fp8 → fp8x16
  __XTDK_HOSTDEVICE_FP8__ __xpu_fp8x16_e5m2(
      __xpu_fp8_e5m2 v0,  __xpu_fp8_e5m2 v1,
      __xpu_fp8_e5m2 v2,  __xpu_fp8_e5m2 v3,
      __xpu_fp8_e5m2 v4,  __xpu_fp8_e5m2 v5,
      __xpu_fp8_e5m2 v6,  __xpu_fp8_e5m2 v7,
      __xpu_fp8_e5m2 v8,  __xpu_fp8_e5m2 v9,
      __xpu_fp8_e5m2 v10, __xpu_fp8_e5m2 v11,
      __xpu_fp8_e5m2 v12, __xpu_fp8_e5m2 v13,
      __xpu_fp8_e5m2 v14, __xpu_fp8_e5m2 v15) {
    __x[0] = (static_cast<__xpu_fp8x8_storage_t>(v7.__x)  << 56) |
              (static_cast<__xpu_fp8x8_storage_t>(v6.__x)  << 48) |
              (static_cast<__xpu_fp8x8_storage_t>(v5.__x)  << 40) |
              (static_cast<__xpu_fp8x8_storage_t>(v4.__x)  << 32) |
              (static_cast<__xpu_fp8x8_storage_t>(v3.__x)  << 24) |
              (static_cast<__xpu_fp8x8_storage_t>(v2.__x)  << 16) |
              (static_cast<__xpu_fp8x8_storage_t>(v1.__x)  <<  8) |
              static_cast<__xpu_fp8x8_storage_t>(v0.__x);
    __x[1] = (static_cast<__xpu_fp8x8_storage_t>(v15.__x) << 56) |
              (static_cast<__xpu_fp8x8_storage_t>(v14.__x) << 48) |
              (static_cast<__xpu_fp8x8_storage_t>(v13.__x) << 40) |
              (static_cast<__xpu_fp8x8_storage_t>(v12.__x) << 32) |
              (static_cast<__xpu_fp8x8_storage_t>(v11.__x) << 24) |
              (static_cast<__xpu_fp8x8_storage_t>(v10.__x) << 16) |
              (static_cast<__xpu_fp8x8_storage_t>(v9.__x)  <<  8) |
              static_cast<__xpu_fp8x8_storage_t>(v8.__x);
  }
};

// --- cvt e4m3 bf16 packed pseudo wrappers ---
// Builtins return v{n}i16; use local typedefs + __builtin_memcpy to store into
// the unsigned-integer storage fields of the return structs.

// 4 bf16 -> 4 e4m3 fp8 (v_cvt_e4m3x2_bf16x2 x2 via setloop 2)
static __device__ inline __xpu_fp8x4_e4m3
cvt4_e4m3_bf16(__xpu_bfloat164 __x) {
  typedef short __v2i16 __attribute__((ext_vector_type(2)));
  __xpu_fp8x4_e4m3 ret;
  __v2i16 tmp = (__v2i16)__builtin_xcn_cvt4_e4m3_bf16(__bfloat164_as_native(__x));
  __builtin_memcpy(&ret.__x, &tmp, sizeof(ret.__x));
  return ret;
}

// 8 bf16 -> 8 e4m3 fp8 (v_cvt_e4m3x2_bf16x2 x4 via setloop 4)
static __device__ inline __xpu_fp8x8_e4m3
cvt8_e4m3_bf16(__xpu_bfloat168 __x) {
  typedef short __v4i16 __attribute__((ext_vector_type(4)));
  __xpu_fp8x8_e4m3 ret;
  __v4i16 tmp = (__v4i16)__builtin_xcn_cvt8_e4m3_bf16(__bfloat168_as_native(__x));
  __builtin_memcpy(&ret.__x, &tmp, sizeof(ret.__x));
  return ret;
}

// 16 bf16 -> 16 e4m3 fp8 (v_cvt_e4m3x2_bf16x2 x8 via setloop 8)
static __device__ inline __xpu_fp8x16_e4m3
cvt16_e4m3_bf16(__xpu_bfloat1616 __x) {
  typedef short __v8i16 __attribute__((ext_vector_type(8)));
  __xpu_fp8x16_e4m3 ret;
  __v8i16 tmp = (__v8i16)__builtin_xcn_cvt16_e4m3_bf16(__bfloat1616_as_native(__x));
  __builtin_memcpy(ret.__x, &tmp, sizeof(ret.__x));
  return ret;
}

// --- cvt e5m2 bf16 packed pseudo wrappers ---

// 4 bf16 -> 4 e5m2 fp8 (v_cvt_e5m2x2_bf16x2 x2 via setloop 2)
static __device__ inline __xpu_fp8x4_e5m2
cvt4_e5m2_bf16(__xpu_bfloat164 __x) {
  typedef short __v2i16 __attribute__((ext_vector_type(2)));
  __xpu_fp8x4_e5m2 ret;
  __v2i16 tmp = (__v2i16)__builtin_xcn_cvt4_e5m2_bf16(__bfloat164_as_native(__x));
  __builtin_memcpy(&ret.__x, &tmp, sizeof(ret.__x));
  return ret;
}

// 8 bf16 -> 8 e5m2 fp8 (v_cvt_e5m2x2_bf16x2 x4 via setloop 4)
static __device__ inline __xpu_fp8x8_e5m2
cvt8_e5m2_bf16(__xpu_bfloat168 __x) {
  typedef short __v4i16 __attribute__((ext_vector_type(4)));
  __xpu_fp8x8_e5m2 ret;
  __v4i16 tmp = (__v4i16)__builtin_xcn_cvt8_e5m2_bf16(__bfloat168_as_native(__x));
  __builtin_memcpy(&ret.__x, &tmp, sizeof(ret.__x));
  return ret;
}

// 16 bf16 -> 16 e5m2 fp8 (v_cvt_e5m2x2_bf16x2 x8 via setloop 8)
static __device__ inline __xpu_fp8x16_e5m2
cvt16_e5m2_bf16(__xpu_bfloat1616 __x) {
  typedef short __v8i16 __attribute__((ext_vector_type(8)));
  __xpu_fp8x16_e5m2 ret;
  __v8i16 tmp = (__v8i16)__builtin_xcn_cvt16_e5m2_bf16(__bfloat1616_as_native(__x));
  __builtin_memcpy(ret.__x, &tmp, sizeof(ret.__x));
  return ret;
}

#endif // __XPU_ARCH__ >= 6
// END fp8 packed pseudo wrappers

#endif /* defined(__cplusplus) */

#endif /* end of include guard: __XTDK_XCN_FP8_HPP__ */
