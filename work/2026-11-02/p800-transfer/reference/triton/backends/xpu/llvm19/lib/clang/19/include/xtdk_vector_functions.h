#if !defined(__VECTOR_FUNCTIONS_H__)
#define __VECTOR_FUNCTIONS_H__

#include "xtdk_vector_types.h"

#if defined(__HOUYICC_RTC__)
#define __VECTOR_FUNCTIONS_DECL__ static __inline__ __device__
#else /* !__HOUYICC_RTC__ */
#define __VECTOR_FUNCTIONS_DECL__ static __inline__ __host__ __device__
#endif /* __HOUYICC_RTC__ */

__VECTOR_FUNCTIONS_DECL__ char1 make_char1(signed char x);

__VECTOR_FUNCTIONS_DECL__ uchar1 make_uchar1(unsigned char x);

__VECTOR_FUNCTIONS_DECL__ char2 make_char2(signed char x, signed char y);

__VECTOR_FUNCTIONS_DECL__ uchar2 make_uchar2(unsigned char x, unsigned char y);

__VECTOR_FUNCTIONS_DECL__ char3 make_char3(signed char x, signed char y, signed char z);

__VECTOR_FUNCTIONS_DECL__ uchar3 make_uchar3(unsigned char x, unsigned char y, unsigned char z);

__VECTOR_FUNCTIONS_DECL__ char4 make_char4(signed char x, signed char y, signed char z, signed char w);

__VECTOR_FUNCTIONS_DECL__ uchar4 make_uchar4(unsigned char x, unsigned char y, unsigned char z, unsigned char w);

__VECTOR_FUNCTIONS_DECL__ short1 make_short1(short x);

__VECTOR_FUNCTIONS_DECL__ ushort1 make_ushort1(unsigned short x);

__VECTOR_FUNCTIONS_DECL__ short2 make_short2(short x, short y);

__VECTOR_FUNCTIONS_DECL__ ushort2 make_ushort2(unsigned short x, unsigned short y);

__VECTOR_FUNCTIONS_DECL__ short3 make_short3(short x,short y, short z);

__VECTOR_FUNCTIONS_DECL__ ushort3 make_ushort3(unsigned short x, unsigned short y, unsigned short z);

__VECTOR_FUNCTIONS_DECL__ short4 make_short4(short x, short y, short z, short w);

__VECTOR_FUNCTIONS_DECL__ ushort4 make_ushort4(unsigned short x, unsigned short y, unsigned short z, unsigned short w);

__VECTOR_FUNCTIONS_DECL__ int1 make_int1(int x);

__VECTOR_FUNCTIONS_DECL__ uint1 make_uint1(unsigned int x);

__VECTOR_FUNCTIONS_DECL__ int2 make_int2(int x, int y);

__VECTOR_FUNCTIONS_DECL__ uint2 make_uint2(unsigned int x, unsigned int y);

__VECTOR_FUNCTIONS_DECL__ int3 make_int3(int x, int y, int z);

__VECTOR_FUNCTIONS_DECL__ uint3 make_uint3(unsigned int x, unsigned int y, unsigned int z);

__VECTOR_FUNCTIONS_DECL__ int4 make_int4(int x, int y, int z, int w);

__VECTOR_FUNCTIONS_DECL__ uint4 make_uint4(unsigned int x, unsigned int y, unsigned int z, unsigned int w);

__VECTOR_FUNCTIONS_DECL__ long1 make_long1(long int x);

__VECTOR_FUNCTIONS_DECL__ ulong1 make_ulong1(unsigned long int x);

__VECTOR_FUNCTIONS_DECL__ long2 make_long2(long int x, long int y);

__VECTOR_FUNCTIONS_DECL__ ulong2 make_ulong2(unsigned long int x, unsigned long int y);

__VECTOR_FUNCTIONS_DECL__ long3 make_long3(long int x, long int y, long int z);

__VECTOR_FUNCTIONS_DECL__ ulong3 make_ulong3(unsigned long int x, unsigned long int y, unsigned long int z);

__VECTOR_FUNCTIONS_DECL__ long4 make_long4(long int x, long int y, long int z, long int w);

__VECTOR_FUNCTIONS_DECL__ ulong4 make_ulong4(unsigned long int x, unsigned long int y, unsigned long int z, unsigned long int w);

__VECTOR_FUNCTIONS_DECL__ float1 make_float1(float x);

__VECTOR_FUNCTIONS_DECL__ float2 make_float2(float x, float y);

__VECTOR_FUNCTIONS_DECL__ float3 make_float3(float x, float y, float z);

__VECTOR_FUNCTIONS_DECL__ float4 make_float4(float x, float y, float z, float w);

#if !defined(__XTDK_VECTOR_TYPES_H__)
#if defined(__XCNCC__) || defined(__GNUC__) || defined(_WIN64)
#define __builtin_align__(a) \
        __align__(a)
#else
#define __builtin_align__(a)
#endif /* __XCNCC__ || __GNUC__  || _WIN64 */

typedef struct __builtin_align__(32) float8 {
  float s0, s1, s2, s3, s4, s5, s6, s7;
} float8;
#endif // !defined(__XTDK_VECTOR_TYPES_H__)

__VECTOR_FUNCTIONS_DECL__ float8 make_float8(float s0, float s1, float s2,
                                             float s3, float s4, float s5,
                                             float s6, float s7);

__VECTOR_FUNCTIONS_DECL__ longlong1 make_longlong1(long long int x);

__VECTOR_FUNCTIONS_DECL__ ulonglong1 make_ulonglong1(unsigned long long int x);

__VECTOR_FUNCTIONS_DECL__ longlong2 make_longlong2(long long int x, long long int y);

__VECTOR_FUNCTIONS_DECL__ ulonglong2 make_ulonglong2(unsigned long long int x, unsigned long long int y);

__VECTOR_FUNCTIONS_DECL__ longlong3 make_longlong3(long long int x, long long int y, long long int z);

__VECTOR_FUNCTIONS_DECL__ ulonglong3 make_ulonglong3(unsigned long long int x, unsigned long long int y, unsigned long long int z);

__VECTOR_FUNCTIONS_DECL__ longlong4 make_longlong4(long long int x, long long int y, long long int z, long long int w);

__VECTOR_FUNCTIONS_DECL__ ulonglong4 make_ulonglong4(unsigned long long int x, unsigned long long int y, unsigned long long int z, unsigned long long int w);

__VECTOR_FUNCTIONS_DECL__ double1 make_double1(double x);

__VECTOR_FUNCTIONS_DECL__ double2 make_double2(double x, double y);

__VECTOR_FUNCTIONS_DECL__ double3 make_double3(double x, double y, double z);

__VECTOR_FUNCTIONS_DECL__ double4 make_double4(double x, double y, double z, double w);

#undef __VECTOR_FUNCTIONS_DECL__

#include "xtdk_vector_functions.hpp"
#include "xtdk_vector_math_functions.hpp"

#endif /* !__VECTOR_FUNCTIONS_H__ */
