#ifndef __XCN_KERNEL_XTDK_MATH_H__
#define __XCN_KERNEL_XTDK_MATH_H__

extern "C" {
__device__
__attribute__((const))
float __ocml_fmin_f32(float, float);
__device__
__attribute__((const))
float __ocml_fmax_f32(float, float);

__device__
__attribute__((const))
float __ocml_ceil_f32(float);

__device__
__attribute__((const))
float __ocml_fdim_f32(float, float);

__device__
__attribute__((pure))
float __ocml_exp10_f32(float);
__device__
__attribute__((pure))
float __ocml_native_exp10_f32(float);
__device__
__attribute__((pure))
float __ocml_exp2_f32(float);
__device__
__attribute__((pure))
float __ocml_exp_f32(float);
__device__
__attribute__((pure))
float __ocml_native_exp_f32(float);
__device__
__attribute__((pure))
float __ocml_expm1_f32(float);

__device__
__attribute__((pure))
float __ocml_log10_f32(float);
__device__
__attribute__((pure))
float __ocml_native_log10_f32(float);
__device__
__attribute__((pure))
float __ocml_log1p_f32(float);
__device__
__attribute__((pure))
float __ocml_log2_f32(float);
__device__
__attribute__((pure))
float __ocml_native_log2_f32(float);
__device__
__attribute__((const))
float __ocml_logb_f32(float);
__device__
__attribute__((pure))
float __ocml_log_f32(float);
__device__
__attribute__((pure))
float __ocml_native_log_f32(float);
}   // extern "C"

#define __DEVICE__ static __device__

__DEVICE__
inline
float fminf(float x, float y) { return __ocml_fmin_f32(x, y); }

__DEVICE__
inline
float fmaxf(float x, float y) { return __ocml_fmax_f32(x, y); }

__DEVICE__
inline
float ceil(float x) { return __ocml_ceil_f32(x); }

__DEVICE__
inline
float fdimf(float x, float y) { return __ocml_fdim_f32(x, y); }

__DEVICE__
float exp10f(float __x) { return __ocml_exp10_f32(__x); }

__DEVICE__
float exp2f(float __x) { return __ocml_exp2_f32(__x); }

__DEVICE__
float expf(float __x) { return __ocml_exp_f32(__x); }

__DEVICE__
float expm1f(float __x) { return __ocml_expm1_f32(__x); }

__DEVICE__
float log10f(float __x) { return __ocml_log10_f32(__x); }

__DEVICE__
float log1pf(float __x) { return __ocml_log1p_f32(__x); }

__DEVICE__
float log2f(float __x) { return __ocml_log2_f32(__x); }

__DEVICE__
float logbf(float __x) { return __ocml_logb_f32(__x); }

__DEVICE__
float logf(float __x) { return __ocml_log_f32(__x); }

#pragma push_macro("__DEVICE__")
#pragma push_macro("__CONSTEXPR__")
#define __DEVICE__ static __device__ inline __attribute__((always_inline))
#define __CONSTEXPR__

#pragma push_macro("__DEF_FUN1")

#define __DEF_FUN1(__retty, __func)                                            \
  __DEVICE__ __CONSTEXPR__ __retty __func(float __x) { return __func##f(__x); }

__DEF_FUN1(float, exp)
__DEF_FUN1(float, exp2)
__DEF_FUN1(float, expm1)
__DEF_FUN1(float, log)
__DEF_FUN1(float, log10)
__DEF_FUN1(float, log1p)
__DEF_FUN1(float, log2)
__DEF_FUN1(float, logb)

#pragma pop_macro("__DEF_FUN1")

#define __XCN_OVERLOAD1(__retty, __fn)                                         \
  template <typename __T>                                                      \
  __DEVICE__ __CONSTEXPR__                                                     \
      typename houyi_std::enable_if<houyi_std::is_integral<__T>::value, __retty>::type  \
      __fn(__T __x) {                                                          \
    return ::__fn((double)__x);                                                \
  }

#define __XCN_OVERLOAD2(__retty, __fn)                                         \
  template <typename __T1, typename __T2>                                      \
  __DEVICE__ __CONSTEXPR__ typename houyi_std::enable_if<                           \
      houyi_std::is_arithmetic<__T1>::value && houyi_std::is_arithmetic<__T2>::value,  \
      typename houyi_std::__promote<__T1, __T2>::type>::type                       \
  __fn(__T1 __x, __T2 __y) {                                                   \
    typedef typename houyi_std::__promote<__T1, __T2>::type __result_type;         \
    return __fn((__result_type)__x, (__result_type)__y);                       \
  }

__XCN_OVERLOAD1(double, exp)
__XCN_OVERLOAD1(double, exp2)
__XCN_OVERLOAD1(double, expm1)
__XCN_OVERLOAD1(double, log)
__XCN_OVERLOAD1(double, log10)
__XCN_OVERLOAD1(double, log1p)
__XCN_OVERLOAD1(double, log2)
__XCN_OVERLOAD1(double, logb)

namespace std {
    using ::exp;
    using ::exp2;
    using ::expm1;
    using ::log;
    using ::log10;
    using ::log1p;
    using ::log2;
    using ::logb;
}

#pragma pop_macro("__CONSTEXPR__")
#pragma pop_macro("__DEVICE__")

#endif // __XCN_KERNEL_XTDK_MATH_H__