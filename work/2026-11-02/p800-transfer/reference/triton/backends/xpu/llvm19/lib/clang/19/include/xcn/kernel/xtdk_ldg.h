#ifndef __XCN_KERNEL_XTDK_LDG_H__
#define __XCN_KERNEL_XTDK_LDG_H__

#include "xtdk_vector_types.h"

__device__ inline static char __ldg(const char* ptr) { return *ptr; }

__device__ inline static signed char __ldg(const signed char* ptr) { return *ptr; }

__device__ inline static unsigned char __ldg(const unsigned char* ptr) { return *ptr; }

__device__ inline static char2 __ldg(const  char2* ptr) { return *ptr; }

__device__ inline static char4 __ldg(const  char4* ptr) { return *ptr; }

__device__ inline static  uchar2 __ldg(const  uchar2* ptr) { return *ptr; }

__device__ inline static  uchar4 __ldg(const  uchar4* ptr) { return *ptr; }

__device__ inline static short __ldg(const short* ptr) { return *ptr; }

__device__ inline static unsigned short __ldg(const unsigned short* ptr) { return *ptr; }

__device__ inline static short2 __ldg(const short2* ptr) { return *ptr; }

__device__ inline static short4 __ldg(const short4* ptr) { return *ptr; }

__device__ inline static ushort2 __ldg(const ushort2* ptr) { return *ptr; }

__device__ inline static ushort4 __ldg(const ushort4* ptr) { return *ptr; }

__device__ inline static int __ldg(const int* ptr) { return *ptr; }

__device__ inline static unsigned int __ldg(const unsigned int* ptr) { return *ptr; }

__device__ inline static int2 __ldg(const int2* ptr) { return *ptr; }

__device__ inline static int4 __ldg(const int4* ptr) { return *ptr; }

__device__ inline static uint2 __ldg(const uint2* ptr) { return *ptr; }

__device__ inline static uint4 __ldg(const uint4* ptr) { return *ptr; }

__device__ inline static long __ldg(const long* ptr) { return *ptr; }

__device__ inline static unsigned long __ldg(const unsigned long* ptr) { return *ptr; }


__device__ inline static long long __ldg(const long long* ptr) { return *ptr; }

__device__ inline static unsigned long long __ldg(const unsigned long long* ptr) { return *ptr; }

__device__ inline static longlong2 __ldg(const longlong2* ptr) { return *ptr; }

__device__ inline static ulonglong2 __ldg(const ulonglong2* ptr) { return *ptr; }

__device__ inline static float __ldg(const float* ptr) { return *ptr; }

__device__ inline static float2 __ldg(const float2* ptr) { return *ptr; }

__device__ inline static float4 __ldg(const float4* ptr) { return *ptr; }

__device__ inline static double __ldg(const double* ptr) { return *ptr; }

__device__ inline static double2 __ldg(const double2* ptr) { return *ptr; }


// ldcg functions

__device__ inline static char __ldcg(const char* ptr) {
    char tmp[2];
    asm volatile("global_load_i8 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp[0];
}

__device__ inline static signed char __ldcg(const signed char* ptr) {
    signed char tmp[2];
    asm volatile("global_load_i8 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp[0];
}

__device__ inline static unsigned char __ldcg(const unsigned char* ptr) {
    unsigned char tmp[2];
    asm volatile("global_load_u8 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp[0];
}

__device__ inline static char2 __ldcg(const  char2* ptr) {
    char2 tmp;
    asm volatile("global_load_i16 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static char4 __ldcg(const  char4* ptr) {
    char4 tmp;
    asm volatile("global_load_b32 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static  uchar2 __ldcg(const  uchar2* ptr) {
    uchar2 tmp;
    asm volatile("global_load_u16 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static  uchar4 __ldcg(const  uchar4* ptr) {
    uchar4 tmp;
    asm volatile("global_load_b32 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static short __ldcg(const short* ptr) {
    short tmp;
    asm volatile("global_load_i16 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static unsigned short __ldcg(const unsigned short* ptr) {
    unsigned short tmp;
    asm volatile("global_load_u16 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static short2 __ldcg(const short2* ptr) {
    short2 tmp;
    asm volatile("global_load_b32 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static short4 __ldcg(const short4* ptr) {
    short4 tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static ushort2 __ldcg(const ushort2* ptr) {
    ushort2 tmp;
    asm volatile("global_load_b32 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static ushort4 __ldcg(const ushort4* ptr) {
    ushort4 tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static int __ldcg(const int* ptr) {
    int tmp;
    asm volatile("global_load_b32 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static unsigned int __ldcg(const unsigned int* ptr) {
    unsigned int tmp;
    asm volatile("global_load_b32 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static int2 __ldcg(const int2* ptr) {
    int2 tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static int4 __ldcg(const int4* ptr) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    int4 tmp;
    asm volatile("global_load_b128 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
#else
    int4 tmp1,tmp2;
    do {
        asm volatile("global_load_b128 %0, %1 off llca:15 glc" : "=v"(tmp1) : "v"(ptr));
        __builtin_xcn_s_mfence(0);
        asm volatile("global_load_b128 %0, %1 off llca:15 glc" : "=v"(tmp2) : "v"(ptr));
        __builtin_xcn_s_mfence(0);
    } while ((tmp2.x != tmp1.x)|| (tmp2.y != tmp1.y));
    return tmp2;
#endif
}

__device__ inline static uint2 __ldcg(const uint2* ptr) {
    uint2 tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static uint4 __ldcg(const uint4* ptr) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    uint4 tmp;
    asm volatile("global_load_b128 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
#else
    uint4 tmp1,tmp2;
    do {
        asm volatile("global_load_b128 %0, %1 off llca:15 glc" : "=v"(tmp1) : "v"(ptr));
        __builtin_xcn_s_mfence(0);
        asm volatile("global_load_b128 %0, %1 off llca:15 glc" : "=v"(tmp2) : "v"(ptr));
        __builtin_xcn_s_mfence(0);
    } while ((tmp2.x != tmp1.x)|| (tmp2.y != tmp1.y));
    return tmp2;
#endif
}

__device__ inline static long __ldcg(const long* ptr) {
    long tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static unsigned long __ldcg(const unsigned long* ptr) {
    unsigned long tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static long long __ldcg(const long long* ptr) {
    long long tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static unsigned long long __ldcg(const unsigned long long* ptr) {
    unsigned long long tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static longlong2 __ldcg(const longlong2* ptr) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    longlong2 tmp;
    asm volatile("global_load_b128 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
#else
    longlong2 tmp1;
    longlong2 tmp2;
    do {
        asm volatile("global_load_b128 %0, %1 off llca:15 glc" : "=v"(tmp1) : "v"(ptr));
        __builtin_xcn_s_mfence(0);
        asm volatile("global_load_b128 %0, %1 off llca:15 glc" : "=v"(tmp2) : "v"(ptr));
        __builtin_xcn_s_mfence(0);
    } while ((tmp2.x != tmp1.x) || (tmp2.y != tmp1.y));
    return tmp2;
#endif
}

__device__ inline static ulonglong2 __ldcg(const ulonglong2* ptr) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    ulonglong2 tmp;
    asm volatile("global_load_b128 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
#else
    ulonglong2 tmp1;
    ulonglong2 tmp2;
    do {
        asm volatile("global_load_b128 %0, %1 off llca:15 glc" : "=v"(tmp1) : "v"(ptr));
        __builtin_xcn_s_mfence(0);
        asm volatile("global_load_b128 %0, %1 off llca:15 glc" : "=v"(tmp2) : "v"(ptr));
        __builtin_xcn_s_mfence(0);
    } while ((tmp2.x != tmp1.x) || (tmp2.y != tmp1.y));
    return tmp2;
#endif
}

__device__ inline static float __ldcg(const float* ptr) {
    float tmp;
    asm volatile("global_load_b32 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static float2 __ldcg(const float2* ptr) {
    float2 tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static float4 __ldcg(const float4* ptr) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    float4 tmp;
    asm volatile("global_load_b128 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
#else
    float4 tmp1, tmp2;
    do {
        asm volatile("global_load_b128 %0, %1 off llca:15 glc" : "=v"(tmp1) : "v"(ptr));
        __builtin_xcn_s_mfence(0);
        asm volatile("global_load_b128 %0, %1 off llca:15 glc" : "=v"(tmp2) : "v"(ptr));
        __builtin_xcn_s_mfence(0);
    } while ((tmp2.x != tmp1.x)|| (tmp2.y != tmp1.y));
    return tmp2;
#endif
}

__device__ inline static double __ldcg(const double* ptr) {
    double tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static double2 __ldcg(const double2* ptr) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
    double2 tmp;
    asm volatile("global_load_b128 %0, %1 off llca:15 glc" : "=v"(tmp): "v"(ptr));
    return tmp;
#else
    double2 tmp1,tmp2;
    do {
        asm volatile("global_load_b128 %0, %1 off llca:15 glc" : "=v"(tmp1) : "v"(ptr));
        __builtin_xcn_s_mfence(0);
        asm volatile("global_load_b128 %0, %1 off llca:15 glc" : "=v"(tmp2) : "v"(ptr));
        __builtin_xcn_s_mfence(0);
    } while ((tmp2.x != tmp1.x)|| (tmp2.y != tmp1.y));
    return tmp2;
#endif
}

// ldca functions

__device__ inline static char __ldca(const char* ptr) {
    char tmp[2];
    asm volatile("global_load_i8 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp[0];
}

__device__ inline static signed char __ldca(const signed char* ptr) {
    signed char tmp[2];
    asm volatile("global_load_i8 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp[0];
}

__device__ inline static unsigned char __ldca(const unsigned char* ptr) {
    unsigned char tmp[2];
    asm volatile("global_load_u8 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp[0];
}

__device__ inline static char2 __ldca(const  char2* ptr) {
    char2 tmp;
    asm volatile("global_load_i16 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static char4 __ldca(const  char4* ptr) {
    char4 tmp;
    asm volatile("global_load_b32 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static  uchar2 __ldca(const  uchar2* ptr) {
    uchar2 tmp;
    asm volatile("global_load_u16 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static  uchar4 __ldca(const  uchar4* ptr) {
    uchar4 tmp;
    asm volatile("global_load_b32 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static short __ldca(const short* ptr) {
    short tmp;
    asm volatile("global_load_i16 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static unsigned short __ldca(const unsigned short* ptr) {
    unsigned short tmp;
    asm volatile("global_load_u16 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static short2 __ldca(const short2* ptr) {
    short2 tmp;
    asm volatile("global_load_b32 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static short4 __ldca(const short4* ptr) {
    short4 tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static ushort2 __ldca(const ushort2* ptr) {
    ushort2 tmp;
    asm volatile("global_load_b32 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static ushort4 __ldca(const ushort4* ptr) {
    ushort4 tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static int __ldca(const int* ptr) {
    int tmp;
    asm volatile("global_load_b32 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static unsigned int __ldca(const unsigned int* ptr) {
    unsigned int tmp;
    asm volatile("global_load_b32 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static int2 __ldca(const int2* ptr) {
    int2 tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static int4 __ldca(const int4* ptr) {
    int4 tmp;
    asm volatile("global_load_b128 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static uint2 __ldca(const uint2* ptr) {
    uint2 tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static uint4 __ldca(const uint4* ptr) {
    uint4 tmp;
    asm volatile("global_load_b128 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static long __ldca(const long* ptr) {
    long tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static unsigned long __ldca(const unsigned long* ptr) {
    unsigned long tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static long long __ldca(const long long* ptr) {
    long long tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static unsigned long long __ldca(const unsigned long long* ptr) {
    unsigned long long tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static longlong2 __ldca(const longlong2* ptr) {
    longlong2 tmp;
    asm volatile("global_load_b128 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static ulonglong2 __ldca(const ulonglong2* ptr) {
    ulonglong2 tmp;
    asm volatile("global_load_b128 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static float __ldca(const float* ptr) {
    float tmp;
    asm volatile("global_load_b32 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static float2 __ldca(const float2* ptr) {
    float2 tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static float4 __ldca(const float4* ptr) {
    float4 tmp;
    asm volatile("global_load_b128 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static double __ldca(const double* ptr) {
    double tmp;
    asm volatile("global_load_b64 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

__device__ inline static double2 __ldca(const double2* ptr) {
    double2 tmp;
    asm volatile("global_load_b128 %0, %1 off llca:15" : "=v"(tmp): "v"(ptr));
    return tmp;
}

// ldlu functions

__device__ inline static char __ldlu(const char* ptr) { return *ptr; }

__device__ inline static signed char __ldlu(const signed char* ptr) { return *ptr; }

__device__ inline static unsigned char __ldlu(const unsigned char* ptr) { return *ptr; }

__device__ inline static char2 __ldlu(const  char2* ptr) { return *ptr; }

__device__ inline static char4 __ldlu(const  char4* ptr) { return *ptr; }

__device__ inline static  uchar2 __ldlu(const  uchar2* ptr) { return *ptr; }

__device__ inline static  uchar4 __ldlu(const  uchar4* ptr) { return *ptr; }

__device__ inline static short __ldlu(const short* ptr) { return *ptr; }

__device__ inline static unsigned short __ldlu(const unsigned short* ptr) { return *ptr; }

__device__ inline static short2 __ldlu(const short2* ptr) { return *ptr; }

__device__ inline static short4 __ldlu(const short4* ptr) { return *ptr; }

__device__ inline static ushort2 __ldlu(const ushort2* ptr) { return *ptr; }

__device__ inline static ushort4 __ldlu(const ushort4* ptr) { return *ptr; }

__device__ inline static int __ldlu(const int* ptr) { return *ptr; }

__device__ inline static unsigned int __ldlu(const unsigned int* ptr) { return *ptr; }

__device__ inline static int2 __ldlu(const int2* ptr) { return *ptr; }

__device__ inline static int4 __ldlu(const int4* ptr) { return *ptr; }

__device__ inline static uint2 __ldlu(const uint2* ptr) { return *ptr; }

__device__ inline static uint4 __ldlu(const uint4* ptr) { return *ptr; }

__device__ inline static long __ldlu(const long* ptr) { return *ptr; }

__device__ inline static unsigned long __ldlu(const unsigned long* ptr) { return *ptr; }


__device__ inline static long long __ldlu(const long long* ptr) { return *ptr; }

__device__ inline static unsigned long long __ldlu(const unsigned long long* ptr) { return *ptr; }

__device__ inline static longlong2 __ldlu(const longlong2* ptr) { return *ptr; }

__device__ inline static ulonglong2 __ldlu(const ulonglong2* ptr) { return *ptr; }

__device__ inline static float __ldlu(const float* ptr) { return *ptr; }

__device__ inline static float2 __ldlu(const float2* ptr) { return *ptr; }

__device__ inline static float4 __ldlu(const float4* ptr) { return *ptr; }

__device__ inline static double __ldlu(const double* ptr) { return *ptr; }

__device__ inline static double2 __ldlu(const double2* ptr) { return *ptr; }

// ldcv functions

__device__ inline static char __ldcv(const char* ptr) { return *ptr; }

__device__ inline static signed char __ldcv(const signed char* ptr) { return *ptr; }

__device__ inline static unsigned char __ldcv(const unsigned char* ptr) { return *ptr; }

__device__ inline static char2 __ldcv(const  char2* ptr) { return *ptr; }

__device__ inline static char4 __ldcv(const  char4* ptr) { return *ptr; }

__device__ inline static  uchar2 __ldcv(const  uchar2* ptr) { return *ptr; }

__device__ inline static  uchar4 __ldcv(const  uchar4* ptr) { return *ptr; }

__device__ inline static short __ldcv(const short* ptr) { return *ptr; }

__device__ inline static unsigned short __ldcv(const unsigned short* ptr) { return *ptr; }

__device__ inline static short2 __ldcv(const short2* ptr) { return *ptr; }

__device__ inline static short4 __ldcv(const short4* ptr) { return *ptr; }

__device__ inline static ushort2 __ldcv(const ushort2* ptr) { return *ptr; }

__device__ inline static ushort4 __ldcv(const ushort4* ptr) { return *ptr; }

__device__ inline static int __ldcv(const int* ptr) { return *ptr; }

__device__ inline static unsigned int __ldcv(const unsigned int* ptr) { return *ptr; }

__device__ inline static int2 __ldcv(const int2* ptr) { return *ptr; }

__device__ inline static int4 __ldcv(const int4* ptr) { return *ptr; }

__device__ inline static uint2 __ldcv(const uint2* ptr) { return *ptr; }

__device__ inline static uint4 __ldcv(const uint4* ptr) { return *ptr; }

__device__ inline static long __ldcv(const long* ptr) { return *ptr; }

__device__ inline static unsigned long __ldcv(const unsigned long* ptr) { return *ptr; }


__device__ inline static long long __ldcv(const long long* ptr) { return *ptr; }

__device__ inline static unsigned long long __ldcv(const unsigned long long* ptr) { return *ptr; }

__device__ inline static longlong2 __ldcv(const longlong2* ptr) { return *ptr; }

__device__ inline static ulonglong2 __ldcv(const ulonglong2* ptr) { return *ptr; }

__device__ inline static float __ldcv(const float* ptr) { return *ptr; }

__device__ inline static float2 __ldcv(const float2* ptr) { return *ptr; }

__device__ inline static float4 __ldcv(const float4* ptr) { return *ptr; }

__device__ inline static double __ldcv(const double* ptr) { return *ptr; }

__device__ inline static double2 __ldcv(const double2* ptr) { return *ptr; }

// ldcs functions
__device__ inline static char __ldcs(const char* ptr) { return *ptr; }

__device__ inline static signed char __ldcs(const signed char* ptr) { return *ptr; }

__device__ inline static unsigned char __ldcs(const unsigned char* ptr) { return *ptr; }

__device__ inline static char2 __ldcs(const  char2* ptr) { return *ptr; }

__device__ inline static char4 __ldcs(const  char4* ptr) { return *ptr; }

__device__ inline static  uchar2 __ldcs(const  uchar2* ptr) { return *ptr; }

__device__ inline static  uchar4 __ldcs(const  uchar4* ptr) { return *ptr; }

__device__ inline static short __ldcs(const short* ptr) { return *ptr; }

__device__ inline static unsigned short __ldcs(const unsigned short* ptr) { return *ptr; }

__device__ inline static short2 __ldcs(const short2* ptr) { return *ptr; }

__device__ inline static short4 __ldcs(const short4* ptr) { return *ptr; }

__device__ inline static ushort2 __ldcs(const ushort2* ptr) { return *ptr; }

__device__ inline static ushort4 __ldcs(const ushort4* ptr) { return *ptr; }

__device__ inline static int __ldcs(const int* ptr) { return *ptr; }

__device__ inline static unsigned int __ldcs(const unsigned int* ptr) { return *ptr; }

__device__ inline static int2 __ldcs(const int2* ptr) { return *ptr; }

__device__ inline static int4 __ldcs(const int4* ptr) { return *ptr; }

__device__ inline static uint2 __ldcs(const uint2* ptr) { return *ptr; }

__device__ inline static uint4 __ldcs(const uint4* ptr) { return *ptr; }

__device__ inline static long __ldcs(const long* ptr) { return *ptr; }

__device__ inline static unsigned long __ldcs(const unsigned long* ptr) { return *ptr; }


__device__ inline static long long __ldcs(const long long* ptr) { return *ptr; }

__device__ inline static unsigned long long __ldcs(const unsigned long long* ptr) { return *ptr; }

__device__ inline static longlong2 __ldcs(const longlong2* ptr) { return *ptr; }

__device__ inline static ulonglong2 __ldcs(const ulonglong2* ptr) { return *ptr; }

__device__ inline static float __ldcs(const float* ptr) { return *ptr; }

__device__ inline static float2 __ldcs(const float2* ptr) { return *ptr; }

__device__ inline static float4 __ldcs(const float4* ptr) { return *ptr; }

__device__ inline static double __ldcs(const double* ptr) { return *ptr; }

__device__ inline static double2 __ldcs(const double2* ptr) { return *ptr; }

// stcs functions
__device__ inline static void __stcs(char* ptr, const char value) {
    *ptr = value;
}

__device__ inline static void __stcs(signed char* ptr, const signed char value) {
    *ptr = value;
}

__device__ inline static void __stcs(unsigned char* ptr, const unsigned char value) {
    *ptr = value;
}

__device__ inline static void __stcs(char2* ptr, const char2 value) {
    *ptr = value;
}

__device__ inline static void __stcs(char4* ptr, const char4 value) {
    *ptr = value;
}

__device__ inline static void  __stcs(uchar2* ptr, const uchar2 value) {
    *ptr = value;
}

__device__ inline static void __stcs(uchar4* ptr, const uchar4 value) {
    *ptr = value;
}

__device__ inline static void __stcs(short* ptr, const short value) {
    *ptr = value;
}

__device__ inline static void __stcs(unsigned short* ptr, const unsigned short value) {
    *ptr = value;
}

__device__ inline static void __stcs(short2* ptr, const short2 value) {
    *ptr = value;
}

__device__ inline static void __stcs(short4* ptr, const short4 value) {
    *ptr = value;
}

__device__ inline static void __stcs(ushort2* ptr, const ushort2 value) {
    *ptr = value;
}

__device__ inline static void __stcs(ushort4* ptr, const ushort4 value) {
    *ptr = value;
}

__device__ inline static void __stcs(int* ptr, const int value) {
    *ptr = value;
}

__device__ inline static void __stcs(unsigned int* ptr, const unsigned int value) {
    *ptr = value;
}

__device__ inline static void __stcs(int2* ptr, const int2 value) {
    *ptr = value;
}

__device__ inline static void __stcs(int4* ptr, const int4 value) {
    *ptr = value;
}

__device__ inline static void __stcs(uint2* ptr, const uint2 value) {
    *ptr = value;
}

__device__ inline static void __stcs(uint4* ptr, const uint4 value) {
    *ptr = value;
}

__device__ inline static void __stcs(long* ptr, const long value) {
    *ptr = value;
}

__device__ inline static void __stcs(unsigned long* ptr, const unsigned long value) {
    *ptr = value;
}

__device__ inline static void __stcs(long long* ptr, const long long value) {
    *ptr = value;
}

__device__ inline static void __stcs(unsigned long long* ptr, const unsigned long long value) {
    *ptr = value;
}

__device__ inline static void __stcs(longlong2* ptr, const longlong2 value) {
    *ptr = value;
}

__device__ inline static void __stcs(ulonglong2* ptr, const ulonglong2 value) {
    *ptr = value;
}

__device__ inline static void __stcs(float* ptr, const float value) {
    *ptr = value;
}

__device__ inline static void __stcs(float2* ptr, const float2 value) {
    *ptr = value;
}

__device__ inline static void __stcs(float4* ptr, const float4 value) {
    *ptr = value;
}

__device__ inline static void __stcs(double* ptr, const double value) {
    *ptr = value;
}

__device__ inline static void __stcs(double2* ptr, const double2 value) {
    *ptr = value;
}

// stwb function glc = 0
__device__ inline static void __stwb(char* ptr, const char value) {
    *ptr = value;
}

__device__ inline static void __stwb(signed char* ptr, const signed char value) {
    *ptr = value;
}

__device__ inline static void __stwb(unsigned char* ptr, const unsigned char value) {
    *ptr = value;
}

__device__ inline static void __stwb(char2* ptr, const char2 value) {
    *ptr = value;
}

__device__ inline static void __stwb(char4* ptr, const char4 value) {
    *ptr = value;
}

__device__ inline static void  __stwb(uchar2* ptr, const uchar2 value) {
    *ptr = value;
}

__device__ inline static void __stwb(uchar4* ptr, const uchar4 value) {
    *ptr = value;
}

__device__ inline static void __stwb(short* ptr, const short value) {
    *ptr = value;
}

__device__ inline static void __stwb(unsigned short* ptr, const unsigned short value) {
    *ptr = value;
}

__device__ inline static void __stwb(short2* ptr, const short2 value) {
    *ptr = value;
}

__device__ inline static void __stwb(short4* ptr, const short4 value) {
    *ptr = value;
}

__device__ inline static void __stwb(ushort2* ptr, const ushort2 value) {
    *ptr = value;
}

__device__ inline static void __stwb(ushort4* ptr, const ushort4 value) {
    *ptr = value;
}

__device__ inline static void __stwb(int* ptr, const int value) {
    *ptr = value;
}

__device__ inline static void __stwb(unsigned int* ptr, const unsigned int value) {
    *ptr = value;
}

__device__ inline static void __stwb(int2* ptr, const int2 value) {
    *ptr = value;
}

__device__ inline static void __stwb(int4* ptr, const int4 value) {
    *ptr = value;
}

__device__ inline static void __stwb(uint2* ptr, const uint2 value) {
    *ptr = value;
}

__device__ inline static void __stwb(uint4* ptr, const uint4 value) {
    *ptr = value;
}

__device__ inline static void __stwb(long* ptr, const long value) {
    *ptr = value;
}

__device__ inline static void __stwb(unsigned long* ptr, const unsigned long value) {
    *ptr = value;
}

__device__ inline static void __stwb(long long* ptr, const long long value) {
    *ptr = value;
}

__device__ inline static void __stwb(unsigned long long* ptr, const unsigned long long value) {
    *ptr = value;
}

__device__ inline static void __stwb(longlong2* ptr, const longlong2 value) {
    *ptr = value;
}

__device__ inline static void __stwb(ulonglong2* ptr, const ulonglong2 value) {
    *ptr = value;
}

__device__ inline static void __stwb(float* ptr, const float value) {
    *ptr = value;
}

__device__ inline static void __stwb(float2* ptr, const float2 value) {
    *ptr = value;
}

__device__ inline static void __stwb(float4* ptr, const float4 value) {
    *ptr = value;
}

__device__ inline static void __stwb(double* ptr, const double value) {
    *ptr = value;
}

__device__ inline static void __stwb(double2* ptr, const double2 value) {
    *ptr = value;
}

// stcg function glc = 1 llca=15
__device__ inline static void __stcg(char* ptr, const char value) {
    short tmp = value;
    asm volatile("global_store_b8 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(tmp));
}

__device__ inline static void __stcg(signed char* ptr, const signed char value) {
    short tmp = value;
    asm volatile("global_store_b8 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(tmp));
}

__device__ inline static void __stcg(unsigned char* ptr, const unsigned char value) {
    short tmp = value;
    asm volatile("global_store_b8 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(tmp));
}

__device__ inline static void __stcg(char2* ptr, const char2 value) {
    asm volatile("global_store_b16 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(char4* ptr, const char4 value) {
    asm volatile("global_store_b32 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void  __stcg(uchar2* ptr, const uchar2 value) {
    asm volatile("global_store_b16 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(uchar4* ptr, const uchar4 value) {
    asm volatile("global_store_b32 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(short* ptr, const short value) {
    asm volatile("global_store_b16 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(unsigned short* ptr, const unsigned short value) {
    asm volatile("global_store_b16 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(short2* ptr, const short2 value) {
    asm volatile("global_store_b32 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(short4* ptr, const short4 value) {
    asm volatile("global_store_b64 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(ushort2* ptr, const ushort2 value) {
    asm volatile("global_store_b32 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(ushort4* ptr, const ushort4 value) {
    asm volatile("global_store_b64 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(int* ptr, const int value) {
    asm volatile("global_store_b32 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(unsigned int* ptr, const unsigned int value) {
    asm volatile("global_store_b32 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(int2* ptr, const int2 value) {
    asm volatile("global_store_b64 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(int4* ptr, const int4 value) {
    int2 low64;
    int2 high64;
    low64.x = value.x;
    low64.y = value.y;
    high64.x = value.z;
    high64.y = value.w;
    asm volatile("global_store_b64 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(low64));
    asm volatile("global_store_b64 %0, %1, off offset:8 llca:15 glc" :: "v"(ptr), "v"(high64));
}

__device__ inline static void __stcg(uint2* ptr, const uint2 value) {
    asm volatile("global_store_b64 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(uint4* ptr, const uint4 value) {
    uint2 low64;
    uint2 high64;
    low64.x = value.x;
    low64.y = value.y;
    high64.x = value.z;
    high64.y = value.w;
    asm volatile("global_store_b64 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(low64));
    asm volatile("global_store_b64 %0, %1, off offset:8 llca:15 glc" :: "v"(ptr), "v"(high64));
}

__device__ inline static void __stcg(long* ptr, const long value) {
    asm volatile("global_store_b64 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(unsigned long* ptr, const unsigned long value) {
    asm volatile("global_store_b64 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(long long* ptr, const long long value) {
    asm volatile("global_store_b64 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(unsigned long long* ptr, const unsigned long long value) {
    asm volatile("global_store_b64 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(longlong2* ptr, const longlong2 value) {
    long long low64 = value.x;
    long long high64 = value.y;
    asm volatile("global_store_b64 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(low64));
    asm volatile("global_store_b64 %0, %1, off offset:8 llca:15 glc" :: "v"(ptr), "v"(high64));
}

__device__ inline static void __stcg(ulonglong2* ptr, const ulonglong2 value) {
    unsigned long long low64 = value.x;
    unsigned long long high64 = value.y;
    asm volatile("global_store_b64 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(low64));
    asm volatile("global_store_b64 %0, %1, off offset:8 llca:15 glc" :: "v"(ptr), "v"(high64));
}

__device__ inline static void __stcg(float* ptr, const float value) {
    asm volatile("global_store_b32 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(float2* ptr, const float2 value) {
    asm volatile("global_store_b64 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(float4* ptr, const float4 value) {
    float2 low64;
    float2 high64;
    low64.x = value.x;
    low64.y = value.y;
    high64.x = value.z;
    high64.y = value.w;
    asm volatile("global_store_b64 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(low64));
    asm volatile("global_store_b64 %0, %1, off offset:8 llca:15 glc" :: "v"(ptr), "v"(high64));
}

__device__ inline static void __stcg(double* ptr, const double value) {
    asm volatile("global_store_b64 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(value));
}

__device__ inline static void __stcg(double2* ptr, const double2 value) {
    double low64 = value.x;
    double high64 = value.y;
    asm volatile("global_store_b64 %0, %1, off llca:15 glc" :: "v"(ptr), "v"(low64));
    asm volatile("global_store_b64 %0, %1, off offset:8 llca:15 glc" :: "v"(ptr), "v"(high64));
}
#endif  // __XCN_KERNEL_XTDK_LDG_H__
