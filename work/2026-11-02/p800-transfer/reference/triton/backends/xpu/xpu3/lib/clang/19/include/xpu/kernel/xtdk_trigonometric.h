/*!\file xtdk_trigonometric.h
 * \brief XPU 三角函数运算接口.
 */

#ifndef __XPU_KERNEL_TRIGONOMETRIC_H
#define __XPU_KERNEL_TRIGONOMETRIC_H

#ifdef __xpu__

#include "xpu/kernel/xtdk.h"

#define PI 3.14159265358979323846f
// Value of ln2 and ln10
#define LN2 0.69314718055994530942f
#define LN10 2.30258509299404568402f

static __device__ inline void taylor_sin(float *C1, float *C3, float *C5, float *C7, float *C9) {
    *C1 = 1;
    *C3 = -0.16666666666666666;
    *C5 = 0.008333333333333333;
    *C7 = -0.0001984126984126984;
    *C9 = 2.7557319223985893e-06;
}

static __device__ inline void taylor_arcsin(float *C1, float *C3, float *C5, float *C7, float *C9) {
    *C1 = 1;
    *C3 = 1.0f / 6.0f;
    *C5 = 3.0f / 40.0f;
    *C7 = 5.0f / 112.0f;
    *C9 = 35.0f / 1152.0f;
}

// standardized input into [-PI, PI] interval
static __device__ inline void translation_sin(float *input) {
    float tmp;
    tmp = *input;
    int factor = int(*input / PI);
    tmp = tmp - factor * PI;
    if (factor % 2 != 0){
        tmp = -tmp;
    }
    *input = tmp;
}

static __device__ inline float sin(float input) {
#if __xpu_subarch__ >= 3
    return __builtin_sinf(input);
#else
    float C1, C3, C5, C7, C9;
    taylor_sin(&C1, &C3, &C5, &C7, &C9);

    translation_sin(&input);

    // make the input exist in the [- PI/2, PI/2] interval,
    // taylor expansion is more effective for this part
    if (input > (PI / 2)) {
        input = PI - input;
    } else if (input < (-PI / 2)) {
        input = -PI - input;
    }

    // taylor expansion process
    float tmp0 = input * input;
    float tmp1 = tmp0 * input;
    float tmp2 = tmp1 * tmp0;
    float tmp3 = tmp2 * tmp0;
    float tmp4 = tmp3 * tmp0;
    float result = C1 * input + C3 * tmp1 + C5 * tmp2 + C7 * tmp3 + C9 * tmp4;

    return result;
#endif
}

// Translate cos into sin, convert to [-PI, PI]
static __device__ inline void translation_cos(float* input) {
    float tmp;
    tmp = *input + PI / 2;
    int factor = int(tmp / PI);
    tmp = tmp - factor * PI;
    if (factor % 2 != 0){
        tmp = -tmp;
    }
    *input = tmp;
}

static __device__ inline float cos(float input) {
#if __xpu_subarch__ >= 3
    return __builtin_cosf(input);
#else
    float C1, C3, C5, C7, C9;
    taylor_sin(&C1, &C3, &C5, &C7, &C9);

    translation_cos(&input);

    // make the input exist in the [-PI/2, PI/2]
    if (input > (PI / 2)) {
        input = PI - input;
    } else if (input < (-PI / 2)) {
        input = -PI - input;
    }

    // taylor expansion process
    float tmp0 = input * input;
    float tmp1 = tmp0 * input;
    float tmp2 = tmp1 * tmp0;
    float tmp3 = tmp2 * tmp0;
    float tmp4 = tmp3 * tmp0;
    float result = C1 * input + C3 * tmp1 + C5 * tmp2 + C7 * tmp3 + C9 * tmp4;

    return result;
#endif
}

static __device__ inline void translation_tan(float* input) {
    float tmp = *input;
    int factor = int(tmp / (PI/2));
    tmp = tmp - factor * (PI/2);
    if (factor % 2 != 0) {
         if (factor > 0) {
             tmp = tmp - (PI/2);
         } else if (factor < 0) {
             tmp = tmp + (PI/2);
         }
    }
    *input = tmp;
}

static __device__ inline float tan(float input) {
    float C1, C3, C5, C7, C9;
    taylor_sin(&C1, &C3, &C5, &C7, &C9);

    translation_tan(&input);

    // sin
    float tmp0 = input * input;
    float tmp1 = tmp0 * input;
    float tmp2 = tmp1 * tmp0;
    float tmp3 = tmp2 * tmp0;
    float tmp4 = tmp3 * tmp0;
    float result_sin = C1 * input + C3 * tmp1 + C5 * tmp2 + C7 * tmp3 + C9 * tmp4;

    // cos
    input = input + PI/2;
    if (input > (PI/2)) {
        input = PI - input;  // sin (pi-x) = sin x
    } 

    tmp0 = input * input;
    tmp1 = tmp0 * input;
    tmp2 = tmp1 * tmp0;
    tmp3 = tmp2 * tmp0;
    tmp4 = tmp3 * tmp0;
    float result_cos = C1 * input + C3 * tmp1 + C5 * tmp2 + C7 * tmp3 + C9 * tmp4;

    return result_sin/result_cos;
}

static __device__ inline void translation_arcsin(float* input) {
    float tmp;
    tmp = *input;       
    if (tmp < 0) {tmp = -tmp;}
    if (tmp > 0.62f){
        tmp = sqrt(1.0f - tmp * tmp);
    }
    *input = tmp;
}

// There is no feedback when the input is not [- 1, 1]
static __device__ inline float asin(float input) {
    float C1, C3, C5, C7, C9;
    taylor_arcsin(&C1, &C3, &C5, &C7, &C9);

    float input_ori = input;
    translation_arcsin(&input);  // The interval becomes [0, 0.62]

    float tmp0 = input * input;
    float tmp1 = tmp0 * input;
    float tmp2 = tmp1 * tmp0;
    float tmp3 = tmp2 * tmp0;
    float tmp4 = tmp3 * tmp0;
    float result = C1 * input + C3 * tmp1 + C5 * tmp2 + C7 * tmp3 + C9 * tmp4;

    if (input_ori > 0.62f || input_ori < -0.62f) {
        result = PI/2 - result;
    } 
    if (input_ori < 0) {
        result = - result;
    }
    
    return result;
}    

static __device__ inline float acos(float input) {
    float result = PI/2 - asin(input);
    return result;
} 

static __device__ inline float atan(float input) {
    input = input / sqrt(1.0f + input * input);
    float result = asin(input);
    return result;
} 

static __device__ inline float sinh(float input) {
    float tmp = exp(input);
    float result = (tmp-1.0f/tmp)/2;
    return result;
} 

static __device__ inline float cosh(float input) {
    float tmp = exp(input);
    float result = (tmp+1.0f/tmp)/2;
    return result;
} 

static __device__ inline float tanh(float input) {
    float tmp = exp(input);
    float result = (tmp-1.0f/tmp)/(tmp+1.0f/tmp);
    return result;
} 

static __device__ inline float asinh(float input) {
    float result = log(input + sqrt(1.0f + input * input));
    return result;
} 

static __device__ inline float acosh(float input) {
    float result = log(input + sqrt(-1.0f + input * input));
    return result;
} 

static __device__ inline float atanh(float input) {
    float result = log((1.0f + input)/(1.0f - input)) / 2;
    return result;
} 

// other
static __device__ inline float rsqrt(float input) {
    return 1.0f / sqrt(input);
}

static __device__ inline float expm1(float input) {
    return exp(input) - 1.0f;
}

static __device__ inline float round(float input) {
    return (input > 0.0) ? floor(input + 0.5) : ceil(input - 0.5);
}

static __device__ inline float log2(float input) {
    return log(input) / LN2;
}

static __device__ inline float log10(float input) {
    return log(input) / LN10;
}

#endif // __xpu__
#endif // __XPU_KERNEL_TRIGONOMETRIC_H
