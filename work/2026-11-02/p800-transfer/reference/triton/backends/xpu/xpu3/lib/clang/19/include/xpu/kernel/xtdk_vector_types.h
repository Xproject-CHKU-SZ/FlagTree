#if !defined(__XTDK_VECTOR_TYPES_H__)
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
#define __align__(n) \
        __attribute__((aligned(n)))

#define __device_builtin__

#if defined(__XPUCC__) || defined(__GNUC__) || defined(_WIN64)
#define __builtin_align__(a) \
        __align__(a)
#else /* __XPUCC__ || __GNUC__ || _WIN64 */
#define __builtin_align__(a)
#endif /* __CUDACC__ || __GNUC__  || _WIN64 */


/*******************************************************************************
*                                                                              *
*                                                                              *
*                                                                              *
*******************************************************************************/

#if !defined(__XPUCC__) && !defined(__XPUCC_RTC__) && \
    defined(_WIN32) && !defined(_WIN64)

#pragma warning(push)
#pragma warning(disable: 4201 4408)

#define __xpu_builtin_vector_align8(tag, members) \
struct __device_builtin__ tag                      \
{                                                  \
    union                                          \
    {                                              \
        struct { members };                        \
        struct { long long int :1,:0; };           \
    };                                             \
}

#else /* !__XPUCC__ && !__XPUCC_RTC__ && _WIN32 && !_WIN64 */

#define __xpu_builtin_vector_align8(tag, members) \
struct __device_builtin__ __align__(8) tag         \
{                                                  \
    members                                        \
}

#endif /* !__XPUCC__ && !__XPUCC_RTC__ && _WIN32 && !_WIN64 */

#define __XTDK_MAKE_VECTOR_TYPE__(xtdk_name, T) \
    typedef struct {\
        T x;\
    } xtdk_name##1;\
    typedef struct {\
        T x;\
        T y;\
    } xtdk_name##2;\
    typedef struct {\
        T x;\
        T y;\
        T z;\
    } xtdk_name##3;\
    typedef struct {\
        T x;\
        T y;\
        T z;\
        T w;\
    } xtdk_name##4;

__XTDK_MAKE_VECTOR_TYPE__(uchar, unsigned char);
__XTDK_MAKE_VECTOR_TYPE__(char, char);
__XTDK_MAKE_VECTOR_TYPE__(ushort, unsigned short);
__XTDK_MAKE_VECTOR_TYPE__(short, short);
__XTDK_MAKE_VECTOR_TYPE__(uint, unsigned int);
__XTDK_MAKE_VECTOR_TYPE__(int, int);
__XTDK_MAKE_VECTOR_TYPE__(ulong, unsigned long);
__XTDK_MAKE_VECTOR_TYPE__(long, long);
__XTDK_MAKE_VECTOR_TYPE__(ulonglong, unsigned long long);
__XTDK_MAKE_VECTOR_TYPE__(longlong, long long);
__XTDK_MAKE_VECTOR_TYPE__(float, float);
__XTDK_MAKE_VECTOR_TYPE__(double, double);
#undef  __xpu_builtin_vector_align8

#if defined(__UNDEF_XTDK_INCLUDE_COMPILER_INTERNAL_HEADERS_VECTOR_TYPES_H__)
#undef __XTDK_INCLUDE_COMPILER_INTERNAL_HEADERS__
#undef __UNDEF_XTDK_INCLUDE_COMPILER_INTERNAL_HEADERS_VECTOR_TYPES_H__
#endif

#endif /* !__XTDK_VECTOR_TYPES_H__ */
