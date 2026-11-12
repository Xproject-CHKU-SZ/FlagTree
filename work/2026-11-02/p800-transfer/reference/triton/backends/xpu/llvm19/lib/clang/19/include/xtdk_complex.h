/*
/* The header defines complex numbers and related functions*/

#ifndef __XCN_KERNEL_XTDK_COMPLEX_H__
#define __XCN_KERNEL_XTDK_COMPLEX_H__

#if !defined(__HOUYICC_RTC__)
#include "xtdk_vector_types.h"
#endif

#if defined(__HOUYICC_RTC__)
#define __HOST_DEVICE__ __device__
#else
#define __HOST_DEVICE__ __host__ __device__
// TODO: Clang has a bug which allows device functions to call std functions
// when std functions are introduced into default namespace by using statement.
// math.h may be included after this bug is fixed.
#if __cplusplus
#include <cmath>
#else
#include "math.h"
#endif
#endif // !defined(__HOUYICC_RTC__)

typedef float2 houyiFloatComplex;

__HOST_DEVICE__ static inline float houyiCrealf(houyiFloatComplex z) {
  return z.x;
}

__HOST_DEVICE__ static inline float houyiCimagf(houyiFloatComplex z) {
  return z.y;
}

__HOST_DEVICE__ static inline houyiFloatComplex
make_houyiFloatComplex(float a, float b) {
  houyiFloatComplex z;
  z.x = a;
  z.y = b;
  return z;
}

__HOST_DEVICE__ static inline houyiFloatComplex
houyiConjf(houyiFloatComplex z) {
  houyiFloatComplex ret;
  ret.x = z.x;
  ret.y = -z.y;
  return ret;
}

__HOST_DEVICE__ static inline float houyiCsqabsf(houyiFloatComplex z) {
  return z.x * z.x + z.y * z.y;
}

__HOST_DEVICE__ static inline houyiFloatComplex
houyiCaddf(houyiFloatComplex p, houyiFloatComplex q) {
  return make_houyiFloatComplex(p.x + q.x, p.y + q.y);
}

__HOST_DEVICE__ static inline houyiFloatComplex
houyiCsubf(houyiFloatComplex p, houyiFloatComplex q) {
  return make_houyiFloatComplex(p.x - q.x, p.y - q.y);
}

__HOST_DEVICE__ static inline houyiFloatComplex
houyiCmulf(houyiFloatComplex p, houyiFloatComplex q) {
  return make_houyiFloatComplex(p.x * q.x - p.y * q.y, p.y * q.x + p.x * q.y);
}

__HOST_DEVICE__ static inline houyiFloatComplex
houyiCdivf(houyiFloatComplex p, houyiFloatComplex q) {
  float sqabs = houyiCsqabsf(q);
  houyiFloatComplex ret;
  ret.x = (p.x * q.x + p.y * q.y) / sqabs;
  ret.y = (p.y * q.x - p.x * q.y) / sqabs;
  return ret;
}

__HOST_DEVICE__ static inline float houyiCabsf(houyiFloatComplex z) {
  return sqrtf(houyiCsqabsf(z));
}

typedef double2 houyiDoubleComplex;

__HOST_DEVICE__ static inline double houyiCreal(houyiDoubleComplex z) {
  return z.x;
}

__HOST_DEVICE__ static inline double houyiCimag(houyiDoubleComplex z) {
  return z.y;
}

__HOST_DEVICE__ static inline houyiDoubleComplex
make_houyiDoubleComplex(double a, double b) {
  houyiDoubleComplex z;
  z.x = a;
  z.y = b;
  return z;
}

__HOST_DEVICE__ static inline houyiDoubleComplex
houyiConj(houyiDoubleComplex z) {
  houyiDoubleComplex ret;
  ret.x = z.x;
  ret.y = -z.y;
  return ret;
}

__HOST_DEVICE__ static inline double houyiCsqabs(houyiDoubleComplex z) {
  return z.x * z.x + z.y * z.y;
}

__HOST_DEVICE__ static inline houyiDoubleComplex
houyiCadd(houyiDoubleComplex p, houyiDoubleComplex q) {
  return make_houyiDoubleComplex(p.x + q.x, p.y + q.y);
}

__HOST_DEVICE__ static inline houyiDoubleComplex
houyiCsub(houyiDoubleComplex p, houyiDoubleComplex q) {
  return make_houyiDoubleComplex(p.x - q.x, p.y - q.y);
}

__HOST_DEVICE__ static inline houyiDoubleComplex
houyiCmul(houyiDoubleComplex p, houyiDoubleComplex q) {
  return make_houyiDoubleComplex(p.x * q.x - p.y * q.y, p.y * q.x + p.x * q.y);
}

__HOST_DEVICE__ static inline houyiDoubleComplex
houyiCdiv(houyiDoubleComplex p, houyiDoubleComplex q) {
  double sqabs = houyiCsqabs(q);
  houyiDoubleComplex ret;
  ret.x = (p.x * q.x + p.y * q.y) / sqabs;
  ret.y = (p.y * q.x - p.x * q.y) / sqabs;
  return ret;
}

__HOST_DEVICE__ static inline double houyiCabs(houyiDoubleComplex z) {
  return sqrt(houyiCsqabs(z));
}

typedef houyiFloatComplex houyiComplex;

__HOST_DEVICE__ static inline houyiComplex make_houyiComplex(float x, float y) {
  return make_houyiFloatComplex(x, y);
}

__HOST_DEVICE__ static inline houyiFloatComplex
houyiComplexDoubleToFloat(houyiDoubleComplex z) {
  return make_houyiFloatComplex((float)z.x, (float)z.y);
}

__HOST_DEVICE__ static inline houyiDoubleComplex
houyiComplexFloatToDouble(houyiFloatComplex z) {
  return make_houyiDoubleComplex((double)z.x, (double)z.y);
}

__HOST_DEVICE__ static inline houyiComplex
houyiCfmaf(houyiComplex p, houyiComplex q, houyiComplex r) {
  float real = (p.x * q.x) + r.x;
  float imag = (q.x * p.y) + r.y;

  real = -(p.y * q.y) + real;
  imag = (p.x * q.y) + imag;

  return make_houyiComplex(real, imag);
}

__HOST_DEVICE__ static inline houyiDoubleComplex
houyiCfma(houyiDoubleComplex p, houyiDoubleComplex q, houyiDoubleComplex r) {
  double real = (p.x * q.x) + r.x;
  double imag = (q.x * p.y) + r.y;

  real = -(p.y * q.y) + real;
  imag = (p.x * q.y) + imag;

  return make_houyiDoubleComplex(real, imag);
}

#endif // __XCN_KERNEL_XTDK_COMPLEX_H__
