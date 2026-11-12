#if !defined(__XTDK_VECTOR_TYPES_H__) && !defined(__VECTOR_TYPES_H__) &&       \
    !defined(__XPU_PLATFORM_AMD__) // CUDA and AMD have their own header files
                                   // regarding vector types.
#define __XTDK_VECTOR_TYPES_H__

#if !defined(__XTDK_INCLUDE_COMPILER_INTERNAL_HEADERS__)
#define __XTDK_INCLUDE_COMPILER_INTERNAL_HEADERS__
#define __UNDEF_XTDK_INCLUDE_COMPILER_INTERNAL_HEADERS_VECTOR_TYPES_H__
#endif

/*******************************************************************************
*                                                                              *
*                                                                              *
*                                                                              *
*******************************************************************************/

// #ifndef __DOXYGEN_ONLY__
// #include "crt/host_defines.h"
// #endif

#define __device_builtin__

#if defined(__XCNCC__) || defined(__GNUC__) || defined(_WIN64)
#define __builtin_align__(a) \
        __align__(a)
#else
#define __builtin_align__(a)
#endif /* __XCNCC__ || __GNUC__  || _WIN64 */

#ifndef __align__
#define __align__(n) __attribute__((aligned(n)))
#endif


/*******************************************************************************
*                                                                              *
*                                                                              *
*                                                                              *
*******************************************************************************/

#if !defined(__XCNCC__) && !defined(__HOUYICC_RTC__) && \
    defined(_WIN32) && !defined(_WIN64)

#pragma warning(push)
#pragma warning(disable: 4201 4408)

#define __xcn_builtin_vector_align8(tag, members) \
struct __device_builtin__ tag                      \
{                                                  \
    union                                          \
    {                                              \
        struct { members };                        \
        struct { long long int :1,:0; };           \
    };                                             \
}

#else /* !__XCNCC__ && !__HOUYICC_RTC__ && _WIN32 && !_WIN64 */

#define __xcn_builtin_vector_align8(tag, members) \
struct __device_builtin__ __align__(8) tag         \
{                                                  \
    members                                        \
}

#endif /* !__XCNCC__ && !__HOUYICC_RTC__ && _WIN32 && !_WIN64 */

struct __device_builtin__ char1
{
    signed char x;
};

struct __device_builtin__ uchar1
{
    unsigned char x;
};


struct __device_builtin__ __align__(2) char2
{
    signed char x, y;
};

struct __device_builtin__ __align__(2) uchar2
{
    unsigned char x, y;
};

struct __device_builtin__ char3
{
    signed char x, y, z;
};

struct __device_builtin__ uchar3
{
    unsigned char x, y, z;
};

struct __device_builtin__ __align__(4) char4
{
    signed char x, y, z, w;
};

struct __device_builtin__ __align__(4) uchar4
{
    unsigned char x, y, z, w;
};

struct __device_builtin__ short1
{
    short x;
};

struct __device_builtin__ ushort1
{
    unsigned short x;
};

struct __device_builtin__ __align__(4) short2
{
    short x, y;
};

struct __device_builtin__ __align__(4) ushort2
{
    unsigned short x, y;
};

struct __device_builtin__ short3
{
    short x, y, z;
};

struct __device_builtin__ ushort3
{
    unsigned short x, y, z;
};

__xcn_builtin_vector_align8(short4, short x; short y; short z; short w;);
__xcn_builtin_vector_align8(ushort4, unsigned short x; unsigned short y; unsigned short z; unsigned short w;);

struct __device_builtin__ int1
{
    int x;
};

struct __device_builtin__ uint1
{
    unsigned int x;
};

__xcn_builtin_vector_align8(int2, int x; int y;);
__xcn_builtin_vector_align8(uint2, unsigned int x; unsigned int y;);

struct __device_builtin__ int3
{
    int x, y, z;
};

struct __device_builtin__ uint3
{
    unsigned int x, y, z;
};

struct __device_builtin__ __builtin_align__(16) int4
{
    int x, y, z, w;
};

struct __device_builtin__ __builtin_align__(16) uint4
{
    unsigned int x, y, z, w;
};

struct __device_builtin__ long1
{
    long int x;
};

struct __device_builtin__ ulong1
{
    unsigned long x;
};

#if defined(_WIN32)
__xcn_builtin_vector_align8(long2, long int x; long int y;);
__xcn_builtin_vector_align8(ulong2, unsigned long int x; unsigned long int y;);
#else /* !_WIN32 */

struct __device_builtin__ __align__(2*sizeof(long int)) long2
{
    long int x, y;
};

struct __device_builtin__ __align__(2*sizeof(unsigned long int)) ulong2
{
    unsigned long int x, y;
};

#endif /* _WIN32 */

struct __device_builtin__ long3
{
    long int x, y, z;
};

struct __device_builtin__ ulong3
{
    unsigned long int x, y, z;
};

struct __device_builtin__ __builtin_align__(16) long4
{
    long int x, y, z, w;
};

struct __device_builtin__ __builtin_align__(16) ulong4
{
    unsigned long int x, y, z, w;
};

struct __device_builtin__ float1
{
    float x;
};

#if !defined(__XCNCC__) && defined(__arm__) && \
    defined(__ARM_PCS_VFP) && __GNUC__ == 4 && __GNUC_MINOR__ == 6

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-pedantic"

struct __device_builtin__ __attribute__((aligned(8))) float2
{
    float x; float y; float __xcn_gnu_arm_ice_workaround[0];
};

#pragma GCC poison __xcn_gnu_arm_ice_workaround
#pragma GCC diagnostic pop

#else /* !__XCNCC__ && __arm__ && __ARM_PCS_VFP &&
         __GNUC__ == 4&& __GNUC_MINOR__ == 6 */

__xcn_builtin_vector_align8(float2, float x; float y;);

#endif /* !__XCNCC__ && __arm__ && __ARM_PCS_VFP &&
          __GNUC__ == 4&& __GNUC_MINOR__ == 6 */

struct __device_builtin__ float3
{
    float x, y, z;
};

struct __device_builtin__ __builtin_align__(16) float4
{
    float x, y, z, w;
};

struct __device_builtin__ __builtin_align__(32) float8
{
    float s0, s1, s2, s3, s4, s5, s6, s7;
};

struct __device_builtin__ longlong1
{
    long long int x;
};

struct __device_builtin__ ulonglong1
{
    unsigned long long int x;
};

struct __device_builtin__ __builtin_align__(16) longlong2
{
    long long int x, y;
};

struct __device_builtin__ __builtin_align__(16) ulonglong2
{
    unsigned long long int x, y;
};

struct __device_builtin__ longlong3
{
    long long int x, y, z;
};

struct __device_builtin__ ulonglong3
{
    unsigned long long int x, y, z;
};

struct __device_builtin__ __builtin_align__(16) longlong4
{
    long long int x, y, z ,w;
};

struct __device_builtin__ __builtin_align__(16) ulonglong4
{
    unsigned long long int x, y, z, w;
};

struct __device_builtin__ double1
{
    double x;
};

struct __device_builtin__ __builtin_align__(16) double2
{
    double x, y;
};

struct __device_builtin__ double3
{
    double x, y, z;
};

struct __device_builtin__ __builtin_align__(16) double4
{
    double x, y, z, w;
};

#if !defined(__XCNCC__) && defined(_WIN32) && !defined(_WIN64)

#pragma warning(pop)

#endif /* !__XCNCC__ && _WIN32 && !_WIN64 */

/*******************************************************************************
*                                                                              *
*                                                                              *
*                                                                              *
*******************************************************************************/

typedef __device_builtin__ struct char1 char1;
typedef __device_builtin__ struct uchar1 uchar1;
typedef __device_builtin__ struct char2 char2;
typedef __device_builtin__ struct uchar2 uchar2;
typedef __device_builtin__ struct char3 char3;
typedef __device_builtin__ struct uchar3 uchar3;
typedef __device_builtin__ struct char4 char4;
typedef __device_builtin__ struct uchar4 uchar4;
typedef __device_builtin__ struct short1 short1;
typedef __device_builtin__ struct ushort1 ushort1;
typedef __device_builtin__ struct short2 short2;
typedef __device_builtin__ struct ushort2 ushort2;
typedef __device_builtin__ struct short3 short3;
typedef __device_builtin__ struct ushort3 ushort3;
typedef __device_builtin__ struct short4 short4;
typedef __device_builtin__ struct ushort4 ushort4;
typedef __device_builtin__ struct int1 int1;
typedef __device_builtin__ struct uint1 uint1;
typedef __device_builtin__ struct int2 int2;
typedef __device_builtin__ struct uint2 uint2;
typedef __device_builtin__ struct int3 int3;
typedef __device_builtin__ struct uint3 uint3;
typedef __device_builtin__ struct int4 int4;
typedef __device_builtin__ struct uint4 uint4;
typedef __device_builtin__ struct long1 long1;
typedef __device_builtin__ struct ulong1 ulong1;
typedef __device_builtin__ struct long2 long2;
typedef __device_builtin__ struct ulong2 ulong2;
typedef __device_builtin__ struct long3 long3;
typedef __device_builtin__ struct ulong3 ulong3;
typedef __device_builtin__ struct long4 long4;
typedef __device_builtin__ struct ulong4 ulong4;
typedef __device_builtin__ struct float1 float1;
typedef __device_builtin__ struct float2 float2;
typedef __device_builtin__ struct float3 float3;
typedef __device_builtin__ struct float4 float4;
typedef __device_builtin__ struct float8 float8;
typedef __device_builtin__ struct longlong1 longlong1;
typedef __device_builtin__ struct ulonglong1 ulonglong1;
typedef __device_builtin__ struct longlong2 longlong2;
typedef __device_builtin__ struct ulonglong2 ulonglong2;
typedef __device_builtin__ struct longlong3 longlong3;
typedef __device_builtin__ struct ulonglong3 ulonglong3;
typedef __device_builtin__ struct longlong4 longlong4;
typedef __device_builtin__ struct ulonglong4 ulonglong4;
typedef __device_builtin__ struct double1 double1;
typedef __device_builtin__ struct double2 double2;
typedef __device_builtin__ struct double3 double3;
typedef __device_builtin__ struct double4 double4;

/*******************************************************************************
*                                                                              *
*                                                                              *
*                                                                              *
*******************************************************************************/

// struct __device_builtin__ dim3
// {
//     unsigned int x, y, z;
// #if defined(__cplusplus)
// #if __cplusplus >= 201103L
//     __host__ __device__ constexpr dim3(unsigned int vx = 1, unsigned int vy = 1, unsigned int vz = 1) : x(vx), y(vy), z(vz) {}
//     __host__ __device__ constexpr dim3(uint3 v) : x(v.x), y(v.y), z(v.z) {}
//     __host__ __device__ constexpr operator uint3(void) const { return uint3{x, y, z}; }
// #else
//     __host__ __device__ dim3(unsigned int vx = 1, unsigned int vy = 1, unsigned int vz = 1) : x(vx), y(vy), z(vz) {}
//     __host__ __device__ dim3(uint3 v) : x(v.x), y(v.y), z(v.z) {}
//     __host__ __device__ operator uint3(void) const { uint3 t; t.x = x; t.y = y; t.z = z; return t; }
// #endif
// #endif /* __cplusplus */
// };

// typedef __device_builtin__ struct dim3 dim3;

#undef  __xcn_builtin_vector_align8

#if defined(__UNDEF_XTDK_INCLUDE_COMPILER_INTERNAL_HEADERS_VECTOR_TYPES_H__)
#undef __XTDK_INCLUDE_COMPILER_INTERNAL_HEADERS__
#undef __UNDEF_XTDK_INCLUDE_COMPILER_INTERNAL_HEADERS_VECTOR_TYPES_H__
#endif

#endif // !defined(__XTDK_VECTOR_TYPES_H__) && !defined(__VECTOR_TYPES_H__) &&
       // !defined(__XPU_PLATFORM_AMD__)
