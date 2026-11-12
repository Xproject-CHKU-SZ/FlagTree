
#ifndef __XPU_KERNEL_XTDK_FLOAT_H
#define __XPU_KERNEL_XTDK_FLOAT_H

#if __xpu_subarch__ >= 2
// BEGIN SCALAR FLOAT INTRINSIC FOR XPU 2, 3, 4 -- dont edit this

__attribute__((device)) static inline float add_f32_rn(float a, float b) {
    return __builtin_xpu_add_f32_rn(a, b);
}

__attribute__((device)) static inline float add_f32_rz(float a, float b) {
    return __builtin_xpu_add_f32_rz(a, b);
}

__attribute__((device)) static inline float add_f32_ru(float a, float b) {
    return __builtin_xpu_add_f32_ru(a, b);
}

__attribute__((device)) static inline float add_f32_rd(float a, float b) {
    return __builtin_xpu_add_f32_rd(a, b);
}

__attribute__((device)) static inline float sub_f32_rn(float a, float b) {
    return __builtin_xpu_sub_f32_rn(a, b);
}

__attribute__((device)) static inline float sub_f32_rz(float a, float b) {
    return __builtin_xpu_sub_f32_rz(a, b);
}

__attribute__((device)) static inline float sub_f32_ru(float a, float b) {
    return __builtin_xpu_sub_f32_ru(a, b);
}

__attribute__((device)) static inline float sub_f32_rd(float a, float b) {
    return __builtin_xpu_sub_f32_rd(a, b);
}

__attribute__((device)) static inline float mul_f32_rn(float a, float b) {
    return __builtin_xpu_mul_f32_rn(a, b);
}

__attribute__((device)) static inline float mul_f32_rz(float a, float b) {
    return __builtin_xpu_mul_f32_rz(a, b);
}

__attribute__((device)) static inline float mul_f32_ru(float a, float b) {
    return __builtin_xpu_mul_f32_ru(a, b);
}

__attribute__((device)) static inline float mul_f32_rd(float a, float b) {
    return __builtin_xpu_mul_f32_rd(a, b);
}

__attribute__((device)) static inline float div_f32_rn(float a, float b) {
    return __builtin_xpu_div_f32_rn(a, b);
}

__attribute__((device)) static inline float div_f32_rz(float a, float b) {
    return __builtin_xpu_div_f32_rz(a, b);
}

__attribute__((device)) static inline float div_f32_ru(float a, float b) {
    return __builtin_xpu_div_f32_ru(a, b);
}

__attribute__((device)) static inline float div_f32_rd(float a, float b) {
    return __builtin_xpu_div_f32_rd(a, b);
}

__attribute__((device)) static inline float fmac_f32_rn(float a, float b, float c) {
    return __builtin_xpu_fmac_f32_rn(a, b, c);
}

__attribute__((device)) static inline float fmac_f32_rz(float a, float b, float c) {
    return __builtin_xpu_fmac_f32_rz(a, b, c);
}

__attribute__((device)) static inline float fmac_f32_ru(float a, float b, float c) {
    return __builtin_xpu_fmac_f32_ru(a, b, c);
}

__attribute__((device)) static inline float fmac_f32_rd(float a, float b, float c) {
    return __builtin_xpu_fmac_f32_rd(a, b, c);
}

__attribute__((device)) static inline float expf_rn(float a) {
    return __builtin_xpu_expf_rn(a);
}

__attribute__((device)) static inline float expf_rz(float a) {
    return __builtin_xpu_expf_rz(a);
}

__attribute__((device)) static inline float expf_ru(float a) {
    return __builtin_xpu_expf_ru(a);
}

__attribute__((device)) static inline float expf_rd(float a) {
    return __builtin_xpu_expf_rd(a);
}

__attribute__((device)) static inline float sqrtf_rn(float a) {
    return __builtin_xpu_sqrtf_rn(a);
}

__attribute__((device)) static inline float sqrtf_rz(float a) {
    return __builtin_xpu_sqrtf_rz(a);
}

__attribute__((device)) static inline float sqrtf_ru(float a) {
    return __builtin_xpu_sqrtf_ru(a);
}

__attribute__((device)) static inline float sqrtf_rd(float a) {
    return __builtin_xpu_sqrtf_rd(a);
}

__attribute__((device)) static inline float logf_rn(float a) {
    return __builtin_xpu_logf_rn(a);
}

__attribute__((device)) static inline float logf_rz(float a) {
    return __builtin_xpu_logf_rz(a);
}

__attribute__((device)) static inline float logf_ru(float a) {
    return __builtin_xpu_logf_ru(a);
}

__attribute__((device)) static inline float logf_rd(float a) {
    return __builtin_xpu_logf_rd(a);
}

__attribute__((device)) static inline int float2fix_rn(float a) {
    return __builtin_xpu_float2fix_rn(a);
}

__attribute__((device)) static inline float fix2float_rn(int a) {
    return __builtin_xpu_fix2float_rn(a);
}

__attribute__((device)) static inline float fix2float_u_rn(unsigned a) {
    return __builtin_xpu_fix2float_u_rn(a);
}

__attribute__((device)) static inline int float2fix_rz(float a) {
    return __builtin_xpu_float2fix_rz(a);
}

__attribute__((device)) static inline float fix2float_rz(int a) {
    return __builtin_xpu_fix2float_rz(a);
}

__attribute__((device)) static inline float fix2float_u_rz(unsigned a) {
    return __builtin_xpu_fix2float_u_rz(a);
}

__attribute__((device)) static inline int float2fix_ru(float a) {
    return __builtin_xpu_float2fix_ru(a);
}

__attribute__((device)) static inline float fix2float_ru(int a) {
    return __builtin_xpu_fix2float_ru(a);
}

__attribute__((device)) static inline float fix2float_u_ru(unsigned a) {
    return __builtin_xpu_fix2float_u_ru(a);
}

__attribute__((device)) static inline int float2fix_rd(float a) {
    return __builtin_xpu_float2fix_rd(a);
}

__attribute__((device)) static inline float fix2float_rd(int a) {
    return __builtin_xpu_fix2float_rd(a);
}

__attribute__((device)) static inline float fix2float_u_rd(unsigned a) {
    return __builtin_xpu_fix2float_u_rd(a);
}
// END SCALAR FLOAT INTRINSIC for XPU 2, 3, 4 -- dont edit this
#endif

#if __xpu_subarch__ >= 3
// BEGIN SCALAR FLOAT INTRINSIC FOR XPU 3, 4 -- dont edit this

__attribute__((device)) static inline double add_f64_rn(double a, double b) {
    return __builtin_xpu_add_f64_rn(a, b);
}

__attribute__((device)) static inline double add_f64_rz(double a, double b) {
    return __builtin_xpu_add_f64_rz(a, b);
}

__attribute__((device)) static inline double add_f64_ru(double a, double b) {
    return __builtin_xpu_add_f64_ru(a, b);
}

__attribute__((device)) static inline double add_f64_rd(double a, double b) {
    return __builtin_xpu_add_f64_rd(a, b);
}

__attribute__((device)) static inline double sub_f64_rn(double a, double b) {
    return __builtin_xpu_sub_f64_rn(a, b);
}

__attribute__((device)) static inline double sub_f64_rz(double a, double b) {
    return __builtin_xpu_sub_f64_rz(a, b);
}

__attribute__((device)) static inline double sub_f64_ru(double a, double b) {
    return __builtin_xpu_sub_f64_ru(a, b);
}

__attribute__((device)) static inline double sub_f64_rd(double a, double b) {
    return __builtin_xpu_sub_f64_rd(a, b);
}

__attribute__((device)) static inline double mul_f64_rn(double a, double b) {
    return __builtin_xpu_mul_f64_rn(a, b);
}

__attribute__((device)) static inline double mul_f64_rz(double a, double b) {
    return __builtin_xpu_mul_f64_rz(a, b);
}

__attribute__((device)) static inline double mul_f64_ru(double a, double b) {
    return __builtin_xpu_mul_f64_ru(a, b);
}

__attribute__((device)) static inline double mul_f64_rd(double a, double b) {
    return __builtin_xpu_mul_f64_rd(a, b);
}

__attribute__((device)) static inline long long float2long_rn(float a) {
    return __builtin_xpu_float2long_rn(a);
}

__attribute__((device)) static inline double float2dfloat_rn(float a) {
    return __builtin_xpu_float2dfloat_rn(a);
}

__attribute__((device)) static inline double fix2dfloat_rn(int a) {
    return __builtin_xpu_fix2dfloat_rn(a);
}

__attribute__((device)) static inline double fix2dfloat_u_rn(unsigned a) {
    return __builtin_xpu_fix2dfloat_u_rn(a);
}

__attribute__((device)) static inline float long2float_rn(long long a) {
    return __builtin_xpu_long2float_rn(a);
}

__attribute__((device)) static inline float long2float_u_rn(unsigned long long a) {
    return __builtin_xpu_long2float_u_rn(a);
}

__attribute__((device)) static inline float dfloat2float_rn(double a) {
    return __builtin_xpu_dfloat2float_rn(a);
}

__attribute__((device)) static inline int dfloat2fix_rn(double a) {
    return __builtin_xpu_dfloat2fix_rn(a);
}

__attribute__((device)) static inline long long dfloat2long_rn(double a) {
    return __builtin_xpu_dfloat2long_rn(a);
}

__attribute__((device)) static inline double long2dfloat_rn(long long a) {
    return __builtin_xpu_long2dfloat_rn(a);
}

__attribute__((device)) static inline double long2dfloat_u_rn(unsigned long long a) {
    return __builtin_xpu_long2dfloat_u_rn(a);
}

__attribute__((device)) static inline long long float2long_rz(float a) {
    return __builtin_xpu_float2long_rz(a);
}

__attribute__((device)) static inline double float2dfloat_rz(float a) {
    return __builtin_xpu_float2dfloat_rz(a);
}

__attribute__((device)) static inline double fix2dfloat_rz(int a) {
    return __builtin_xpu_fix2dfloat_rz(a);
}

__attribute__((device)) static inline double fix2dfloat_u_rz(unsigned a) {
    return __builtin_xpu_fix2dfloat_u_rz(a);
}

__attribute__((device)) static inline float long2float_rz(long long a) {
    return __builtin_xpu_long2float_rz(a);
}

__attribute__((device)) static inline float long2float_u_rz(unsigned long long a) {
    return __builtin_xpu_long2float_u_rz(a);
}

__attribute__((device)) static inline float dfloat2float_rz(double a) {
    return __builtin_xpu_dfloat2float_rz(a);
}

__attribute__((device)) static inline int dfloat2fix_rz(double a) {
    return __builtin_xpu_dfloat2fix_rz(a);
}

__attribute__((device)) static inline long long dfloat2long_rz(double a) {
    return __builtin_xpu_dfloat2long_rz(a);
}

__attribute__((device)) static inline double long2dfloat_rz(long long a) {
    return __builtin_xpu_long2dfloat_rz(a);
}

__attribute__((device)) static inline double long2dfloat_u_rz(unsigned long long a) {
    return __builtin_xpu_long2dfloat_u_rz(a);
}

__attribute__((device)) static inline long long float2long_ru(float a) {
    return __builtin_xpu_float2long_ru(a);
}

__attribute__((device)) static inline double float2dfloat_ru(float a) {
    return __builtin_xpu_float2dfloat_ru(a);
}

__attribute__((device)) static inline double fix2dfloat_ru(int a) {
    return __builtin_xpu_fix2dfloat_ru(a);
}

__attribute__((device)) static inline double fix2dfloat_u_ru(unsigned a) {
    return __builtin_xpu_fix2dfloat_u_ru(a);
}

__attribute__((device)) static inline float long2float_ru(long long a) {
    return __builtin_xpu_long2float_ru(a);
}

__attribute__((device)) static inline float long2float_u_ru(unsigned long long a) {
    return __builtin_xpu_long2float_u_ru(a);
}

__attribute__((device)) static inline float dfloat2float_ru(double a) {
    return __builtin_xpu_dfloat2float_ru(a);
}

__attribute__((device)) static inline int dfloat2fix_ru(double a) {
    return __builtin_xpu_dfloat2fix_ru(a);
}

__attribute__((device)) static inline long long dfloat2long_ru(double a) {
    return __builtin_xpu_dfloat2long_ru(a);
}

__attribute__((device)) static inline double long2dfloat_ru(long long a) {
    return __builtin_xpu_long2dfloat_ru(a);
}

__attribute__((device)) static inline double long2dfloat_u_ru(unsigned long long a) {
    return __builtin_xpu_long2dfloat_u_ru(a);
}

__attribute__((device)) static inline long long float2long_rd(float a) {
    return __builtin_xpu_float2long_rd(a);
}

__attribute__((device)) static inline double float2dfloat_rd(float a) {
    return __builtin_xpu_float2dfloat_rd(a);
}

__attribute__((device)) static inline double fix2dfloat_rd(int a) {
    return __builtin_xpu_fix2dfloat_rd(a);
}

__attribute__((device)) static inline double fix2dfloat_u_rd(unsigned a) {
    return __builtin_xpu_fix2dfloat_u_rd(a);
}

__attribute__((device)) static inline float long2float_rd(long long a) {
    return __builtin_xpu_long2float_rd(a);
}

__attribute__((device)) static inline float long2float_u_rd(unsigned long long a) {
    return __builtin_xpu_long2float_u_rd(a);
}

__attribute__((device)) static inline float dfloat2float_rd(double a) {
    return __builtin_xpu_dfloat2float_rd(a);
}

__attribute__((device)) static inline int dfloat2fix_rd(double a) {
    return __builtin_xpu_dfloat2fix_rd(a);
}

__attribute__((device)) static inline long long dfloat2long_rd(double a) {
    return __builtin_xpu_dfloat2long_rd(a);
}

__attribute__((device)) static inline double long2dfloat_rd(long long a) {
    return __builtin_xpu_long2dfloat_rd(a);
}

__attribute__((device)) static inline double long2dfloat_u_rd(unsigned long long a) {
    return __builtin_xpu_long2dfloat_u_rd(a);
}
// END SCALAR FLOAT INTRINSIC for XPU 3, 4 -- dont edit this
#endif

#endif
