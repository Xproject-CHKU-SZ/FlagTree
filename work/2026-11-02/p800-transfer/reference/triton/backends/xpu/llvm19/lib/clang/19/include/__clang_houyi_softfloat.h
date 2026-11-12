#ifndef __CLANG_HOUYI_SOFTFLOAT_H__
#define __CLANG_HOUYI_SOFTFLOAT_H__

#if !defined(__HOUYI__)
#error "This file is for HOUYI device compilation only."
#endif

#ifndef __HOUYICC_RTC__
#include <stdint.h>
#endif

enum XCN_RoundMode {
  XCN_RN = 0, // nearest even, default
  XCN_RZ = 1, // toward zero
  XCN_RU = 2, // toward infinity
  XCN_RD = 3, // toward -infinity
};

typedef struct {
  uint64_t v;
} float64_t;

union ui64_f64 {
  uint64_t ui;
  float64_t f;
};

struct exp16_sig64 {
  int_fast16_t exp;
  uint_fast64_t sig;
};

struct exp16_sig32 {
  int_fast16_t exp;
  uint_fast32_t sig;
};

typedef struct {
  uint32_t v;
} float32_t1;

union ui32_f32 {
  uint32_t ui;
  float32_t1 f;
};

#define signF64UI(a) ((bool)((uint64_t)(a) >> 63))
#define expF64UI(a) ((int_fast16_t)((a) >> 52) & 0x7FF)
#define fracF64UI(a) ((a)&UINT64_C(0x000FFFFFFFFFFFFF))
#define signF32UI(a) ((bool)((uint32_t)(a) >> 31))
#define expF32UI(a) ((int_fast16_t)((a) >> 23) & 0xFF)
#define fracF32UI(a) ((a)&0x007FFFFF)
#define isNaNF32UI(a) (((~(a)&0x7F800000) == 0) && ((a)&0x007FFFFF))
#define packToF32UI(sign, exp, sig)                                            \
  (((uint32_t)(sign) << 31) + ((uint32_t)(exp) << 23) + (sig))
#define softfloat_isSigNaNF32UI(uiA)                                           \
  ((((uiA)&0x7FC00000) == 0x7F800000) && ((uiA)&0x003FFFFF))
#define defaultNaNF32UI 0xFFC00000

#define packToF64UI(sign, exp, sig)                                            \
  ((uint64_t)(((uint_fast64_t)(sign) << 63) + ((uint_fast64_t)(exp) << 52) +   \
              (sig)))

#define softfloat_isSigNaNF64UI(uiA)                                           \
  ((((uiA)&UINT64_C(0x7FF8000000000000)) == UINT64_C(0x7FF0000000000000)) &&   \
   ((uiA)&UINT64_C(0x0007FFFFFFFFFFFF)))

#define isNaNF64UI(a)                                                          \
  (((~(a)&UINT64_C(0x7FF0000000000000)) == 0) &&                               \
   ((a)&UINT64_C(0x000FFFFFFFFFFFFF)))

#define defaultNaNF64UI UINT64_C(0xFFF8000000000000)

__device__ const uint_least8_t softfloat_countLeadingZeros8[256] = {
    8, 7, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3,
    3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
    2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

__device__ const uint16_t softfloat_approxRecipSqrt_1k0s[16] = {
    0xB4C9, 0xFFAB, 0xAA7D, 0xF11C, 0xA1C5, 0xE4C7, 0x9A43, 0xDA29,
    0x93B5, 0xD0E5, 0x8DED, 0xC8B7, 0x88C6, 0xC16D, 0x8424, 0xBAE1};

__device__ const uint16_t softfloat_approxRecipSqrt_1k1s[16] = {
    0xA5A5, 0xEA42, 0x8C21, 0xC62D, 0x788F, 0xAA7F, 0x6928, 0x94B6,
    0x5CC7, 0x8335, 0x52A6, 0x74E2, 0x4A3E, 0x68FE, 0x432B, 0x5EFD};

__device__ const uint16_t softfloat_approxRecip_1k0s[16] = {
    0xFFC4, 0xF0BE, 0xE363, 0xD76F, 0xCCAD, 0xC2F0, 0xBA16, 0xB201,
    0xAA97, 0xA3C6, 0x9D7A, 0x97A6, 0x923C, 0x8D32, 0x887E, 0x8417};
__device__ const uint16_t softfloat_approxRecip_1k1s[16] = {
    0xF0F1, 0xD62C, 0xBFA1, 0xAC77, 0x9C0A, 0x8DDB, 0x8185, 0x76BA,
    0x6D3B, 0x64D4, 0x5D5C, 0x56B1, 0x50B6, 0x4B55, 0x4679, 0x4211};

__device__ uint_fast64_t softfloat_propagateNaNF64UI(uint_fast64_t uiA,
                                                     uint_fast64_t uiB) {
  bool isSigNaNA;

  isSigNaNA = softfloat_isSigNaNF64UI(uiA);
  if (isSigNaNA || softfloat_isSigNaNF64UI(uiB)) {
    // softfloat_raiseFlags(softfloat_flag_invalid);
    if (isSigNaNA)
      return uiA | UINT64_C(0x0008000000000000);
  }
  return (isNaNF64UI(uiA) ? uiA : uiB) | UINT64_C(0x0008000000000000);
}

__device__ uint_fast8_t softfloat_countLeadingZeros64(uint64_t a) {
  uint_fast8_t count;
  uint32_t a32;

  count = 0;
  a32 = a >> 32;
  if (!a32) {
    count = 32;
    a32 = a;
  }
  /*------------------------------------------------------------------------
  | From here, result is current count + count leading zeros of `a32'.
  *------------------------------------------------------------------------*/
  if (a32 < 0x10000) {
    count += 16;
    a32 <<= 16;
  }
  if (a32 < 0x1000000) {
    count += 8;
    a32 <<= 8;
  }
  count += softfloat_countLeadingZeros8[a32 >> 24];
  return count;
}

__device__ struct exp16_sig64 softfloat_normSubnormalF64Sig(uint_fast64_t sig) {
  int_fast8_t shiftDist;
  struct exp16_sig64 z;

  shiftDist = softfloat_countLeadingZeros64(sig) - 11;
  z.exp = 1 - shiftDist;
  z.sig = sig << shiftDist;
  return z;
}

__device__ uint32_t softfloat_approxRecipSqrt32_1(unsigned int oddExpA,
                                                  uint32_t a) {
  int index;
  uint16_t eps, r0;
  uint_fast32_t ESqrR0;
  uint32_t sigma0;
  uint_fast32_t r;
  uint32_t sqrSigma0;

  index = (a >> 27 & 0xE) + oddExpA;
  eps = (uint16_t)(a >> 12);
  r0 = softfloat_approxRecipSqrt_1k0s[index] -
       ((softfloat_approxRecipSqrt_1k1s[index] * (uint_fast32_t)eps) >> 20);
  ESqrR0 = (uint_fast32_t)r0 * r0;
  if (!oddExpA)
    ESqrR0 <<= 1;
  sigma0 = ~(uint_fast32_t)(((uint32_t)ESqrR0 * (uint_fast64_t)a) >> 23);
  r = ((uint_fast32_t)r0 << 16) + ((r0 * (uint_fast64_t)sigma0) >> 25);
  sqrSigma0 = ((uint_fast64_t)sigma0 * sigma0) >> 32;
  r += ((uint32_t)((r >> 1) + (r >> 3) - ((uint_fast32_t)r0 << 14)) *
        (uint_fast64_t)sqrSigma0) >>
       48;
  if (!(r & 0x80000000))
    r = 0x80000000;
  return r;
}

__device__ uint64_t softfloat_shiftRightJam64(uint64_t a, uint_fast32_t dist) {
  return (dist < 63) ? a >> dist | ((uint64_t)(a << (-dist & 63)) != 0)
                     : (a != 0);
}

__device__ float64_t softfloat_roundPackToF64(bool sign, int_fast16_t exp,
                                              uint_fast64_t sig,
                                              enum XCN_RoundMode round_mode) {
  uint_fast8_t roundingMode;
  bool roundNearEven;
  uint_fast16_t roundIncrement, roundBits;
  bool isTiny;
  uint_fast64_t uiZ;
  union ui64_f64 uZ;

  /*------------------------------------------------------------------------
  // softfloat_round_near_even rn
  // softfloat_round_minMag rz
  // softfloat_round_min rd
  // softfloat_round_max ru
  *------------------------------------------------------------------------*/
  roundingMode = round_mode; // ru

  roundNearEven = (roundingMode == XCN_RN);
  roundIncrement = 0x200;
  if (!roundNearEven) {
    roundIncrement = (roundingMode == (sign ? XCN_RD : XCN_RU)) ? 0x3FF : 0;
  }
  roundBits = sig & 0x3FF;
  /*------------------------------------------------------------------------
   *------------------------------------------------------------------------*/
  if (0x7FD <= (uint16_t)exp) {
    if (exp < 0) {
      /*----------------------------------------------------------------
       *----------------------------------------------------------------*/
      // isTiny =
      //     (softfloat_detectTininess == softfloat_tininess_beforeRounding) ||
      //     (exp < -1) || (sig + roundIncrement <
      //     UINT64_C(0x8000000000000000));
      isTiny = sig + roundIncrement < UINT64_C(0x8000000000000000);
      sig = softfloat_shiftRightJam64(sig, -exp);
      exp = 0;
      roundBits = sig & 0x3FF;
    } else if ((0x7FD < exp) ||
               (UINT64_C(0x8000000000000000) <= sig + roundIncrement)) {
      /*----------------------------------------------------------------
       *----------------------------------------------------------------*/
      uiZ = packToF64UI(sign, 0x7FF, 0) - !roundIncrement;
      uZ.ui = uiZ;
      return uZ.f;
    }
  }
  /*------------------------------------------------------------------------
   *------------------------------------------------------------------------*/
  sig = (sig + roundIncrement) >> 10;
  sig &= ~(uint_fast64_t)(!(roundBits ^ 0x200) & roundNearEven);
  if (!sig)
    exp = 0;

  uiZ = packToF64UI(sign, exp, sig);

  uZ.ui = uiZ;
  return uZ.f;
}

// for ddiv rnd
__device__ uint32_t softfloat_approxRecip32_1(uint32_t a) {
  int index;
  uint16_t eps, r0;
  uint32_t sigma0;
  uint_fast32_t r;
  uint32_t sqrSigma0;

  index = a >> 27 & 0xF;
  eps = (uint16_t)(a >> 11);
  r0 = softfloat_approxRecip_1k0s[index] -
       ((softfloat_approxRecip_1k1s[index] * (uint_fast32_t)eps) >> 20);
  sigma0 = ~(uint_fast32_t)((r0 * (uint_fast64_t)a) >> 7);
  r = ((uint_fast32_t)r0 << 16) + ((r0 * (uint_fast64_t)sigma0) >> 24);
  sqrSigma0 = ((uint_fast64_t)sigma0 * sigma0) >> 32;
  r += ((uint32_t)r * (uint_fast64_t)sqrSigma0) >> 48;
  return r;
}

// for fsqrt rnd
__device__ uint_fast8_t softfloat_countLeadingZeros32(uint32_t a) {
  uint_fast8_t count;

  count = 0;
  if (a < 0x10000) {
    count = 16;
    a <<= 16;
  }
  if (a < 0x1000000) {
    count += 8;
    a <<= 8;
  }
  count += softfloat_countLeadingZeros8[a >> 24];
  return count;
}

__device__ struct exp16_sig32 softfloat_normSubnormalF32Sig(uint_fast32_t sig) {
  int_fast8_t shiftDist;
  struct exp16_sig32 z;

  shiftDist = softfloat_countLeadingZeros32(sig) - 8;
  z.exp = 1 - shiftDist;
  z.sig = sig << shiftDist;
  return z;
}

__device__ uint_fast32_t softfloat_propagateNaNF32UI(uint_fast32_t uiA,
                                                     uint_fast32_t uiB) {
  bool isSigNaNA;

  isSigNaNA = softfloat_isSigNaNF32UI(uiA);
  if (isSigNaNA || softfloat_isSigNaNF32UI(uiB)) {
    if (isSigNaNA)
      return uiA | 0x00400000;
  }
  return (isNaNF32UI(uiA) ? uiA : uiB) | 0x00400000;
}

__device__ uint32_t softfloat_shiftRightJam32(uint32_t a, uint_fast16_t dist) {

  return (dist < 31) ? a >> dist | ((uint32_t)(a << (-dist & 31)) != 0)
                     : (a != 0);
}

__device__ float32_t1 softfloat_roundPackToF32(bool sign, int_fast16_t exp,
                                              uint_fast32_t sig,
                                              enum XCN_RoundMode round_mode) {
  uint_fast8_t roundingMode;
  bool roundNearEven;
  uint_fast8_t roundIncrement, roundBits;
  bool isTiny;
  uint_fast32_t uiZ;
  union ui32_f32 uZ;

  /*------------------------------------------------------------------------
   *------------------------------------------------------------------------*/
  roundingMode = round_mode;
  roundNearEven = (roundingMode == XCN_RN);
  roundIncrement = 0x40;
  if (!roundNearEven) {
    roundIncrement = (roundingMode == (sign ? XCN_RD : XCN_RU)) ? 0x7F : 0;
  }
  roundBits = sig & 0x7F;
  /*------------------------------------------------------------------------
   *------------------------------------------------------------------------*/
  if (0xFD <= (unsigned int)exp) {
    if (exp < 0) {
      /*----------------------------------------------------------------
       *----------------------------------------------------------------*/
      isTiny = (exp < -1) || (sig + roundIncrement < 0x80000000);
      sig = softfloat_shiftRightJam32(sig, -exp);
      exp = 0;
      roundBits = sig & 0x7F;
    } else if ((0xFD < exp) || (0x80000000 <= sig + roundIncrement)) {
      uiZ = packToF32UI(sign, 0xFF, 0) - !roundIncrement;
      uZ.ui = uiZ;
      return uZ.f;
    }
  }
  /*------------------------------------------------------------------------
   *------------------------------------------------------------------------*/
  sig = (sig + roundIncrement) >> 7;
  sig &= ~(uint_fast32_t)(!(roundBits ^ 0x40) & roundNearEven);
  if (!sig)
    exp = 0;
  uiZ = packToF32UI(sign, exp, sig);
  uZ.ui = uiZ;
  return uZ.f;
}

#endif // __CLANG_HOUYI_SOFTFLOAT_H__