
#ifndef __XPU_KERNEL_XTDK_FP16_MATH_FWD_H
#define __XPU_KERNEL_XTDK_FP16_MATH_FWD_H
#pragma once

#if __xpu_subarch__ >= 3

// BEGIN SCALAR FP16 INTRINSIC FOR XPU 3, 4

__attribute__((device)) static inline _Float16 fneg_hf(_Float16 a) {
    return __builtin_xpu_fneg_hf(a);
}

__attribute__((device)) static inline _Float16 fabs_hf(_Float16 a) {
    return __builtin_xpu_fabs_hf(a);
}

__attribute__((device)) static inline _Float16 fmin_hf(_Float16 a, _Float16 b) {
    return __builtin_xpu_fmin_hf(a, b);
}

__attribute__((device)) static inline _Float16 fmax_hf(_Float16 a, _Float16 b) {
    return __builtin_xpu_fmax_hf(a, b);
}

__attribute__((device)) static inline _Float16 fadd_hf(_Float16 a, _Float16 b) {
    return __builtin_xpu_fadd_hf_rn(a, b);
}

__attribute__((device)) static inline _Float16 fadd_hf_rz(_Float16 a, _Float16 b) {
    return __builtin_xpu_fadd_hf_rz(a, b);
}

__attribute__((device)) static inline _Float16 fadd_hf_ru(_Float16 a, _Float16 b) {
    return __builtin_xpu_fadd_hf_ru(a, b);
}

__attribute__((device)) static inline _Float16 fadd_hf_rd(_Float16 a, _Float16 b) {
    return __builtin_xpu_fadd_hf_rd(a, b);
}

__attribute__((device)) static inline _Float16 fsub_hf(_Float16 a, _Float16 b) {
    return __builtin_xpu_fsub_hf_rn(a, b);
}

__attribute__((device)) static inline _Float16 fsub_hf_rz(_Float16 a, _Float16 b) {
    return __builtin_xpu_fsub_hf_rz(a, b);
}

__attribute__((device)) static inline _Float16 fsub_hf_ru(_Float16 a, _Float16 b) {
    return __builtin_xpu_fsub_hf_ru(a, b);
}

__attribute__((device)) static inline _Float16 fsub_hf_rd(_Float16 a, _Float16 b) {
    return __builtin_xpu_fsub_hf_rd(a, b);
}

__attribute__((device)) static inline _Float16 fmul_hf(_Float16 a, _Float16 b) {
    return __builtin_xpu_fmul_hf_rn(a, b);
}

__attribute__((device)) static inline _Float16 fmul_hf_rz(_Float16 a, _Float16 b) {
    return __builtin_xpu_fmul_hf_rz(a, b);
}

__attribute__((device)) static inline _Float16 fmul_hf_ru(_Float16 a, _Float16 b) {
    return __builtin_xpu_fmul_hf_ru(a, b);
}

__attribute__((device)) static inline _Float16 fmul_hf_rd(_Float16 a, _Float16 b) {
    return __builtin_xpu_fmul_hf_rd(a, b);
}

__attribute__((device)) static inline _Float16 fmac_hf(_Float16 a, _Float16 b, _Float16 c) {
    return __builtin_xpu_fmac_hf_rn(a, b, c);
}

__attribute__((device)) static inline _Float16 fmac_hf_rz(_Float16 a, _Float16 b, _Float16 c) {
    return __builtin_xpu_fmac_hf_rz(a, b, c);
}

__attribute__((device)) static inline _Float16 fmac_hf_ru(_Float16 a, _Float16 b, _Float16 c) {
    return __builtin_xpu_fmac_hf_ru(a, b, c);
}

__attribute__((device)) static inline _Float16 fmac_hf_rd(_Float16 a, _Float16 b, _Float16 c) {
    return __builtin_xpu_fmac_hf_rd(a, b, c);
}

__attribute__((device)) static inline int half2fix(_Float16 a) {
    return __builtin_xpu_half2fix_rn(a);
}

__attribute__((device)) static inline _Float16 fix2half(int a) {
    return __builtin_xpu_fix2half_rn(a);
}

__attribute__((device)) static inline _Float16 fix2half_u(unsigned a) {
    return __builtin_xpu_fix2half_u_rn(a);
}

__attribute__((device)) static inline _Float16 float2half(float a) {
    return __builtin_xpu_float2half_rn(a);
}

__attribute__((device)) static inline float half2float(_Float16 a) {
    return __builtin_xpu_half2float_rn(a);
}

__attribute__((device)) static inline int half2fix_rz(_Float16 a) {
    return __builtin_xpu_half2fix_rz(a);
}

__attribute__((device)) static inline _Float16 fix2half_rz(int a) {
    return __builtin_xpu_fix2half_rz(a);
}

__attribute__((device)) static inline _Float16 fix2half_u_rz(unsigned a) {
    return __builtin_xpu_fix2half_u_rz(a);
}

__attribute__((device)) static inline _Float16 float2half_rz(float a) {
    return __builtin_xpu_float2half_rz(a);
}

__attribute__((device)) static inline float half2float_rz(_Float16 a) {
    return __builtin_xpu_half2float_rz(a);
}

__attribute__((device)) static inline int half2fix_ru(_Float16 a) {
    return __builtin_xpu_half2fix_ru(a);
}

__attribute__((device)) static inline _Float16 fix2half_ru(int a) {
    return __builtin_xpu_fix2half_ru(a);
}

__attribute__((device)) static inline _Float16 fix2half_u_ru(unsigned a) {
    return __builtin_xpu_fix2half_u_ru(a);
}

__attribute__((device)) static inline _Float16 float2half_ru(float a) {
    return __builtin_xpu_float2half_ru(a);
}

__attribute__((device)) static inline float half2float_ru(_Float16 a) {
    return __builtin_xpu_half2float_ru(a);
}

__attribute__((device)) static inline int half2fix_rd(_Float16 a) {
    return __builtin_xpu_half2fix_rd(a);
}

__attribute__((device)) static inline _Float16 fix2half_rd(int a) {
    return __builtin_xpu_fix2half_rd(a);
}

__attribute__((device)) static inline _Float16 fix2half_u_rd(unsigned a) {
    return __builtin_xpu_fix2half_u_rd(a);
}

__attribute__((device)) static inline _Float16 float2half_rd(float a) {
    return __builtin_xpu_float2half_rd(a);
}

__attribute__((device)) static inline float half2float_rd(_Float16 a) {
    return __builtin_xpu_half2float_rd(a);
}
// END SCALAR FLOAT INTRINSIC for XPU 3, 4

#endif  // __xpu_subarch__ >= 3

#endif  // __XPU_KERNEL_XTDK_FP16_MATH_FWD_H