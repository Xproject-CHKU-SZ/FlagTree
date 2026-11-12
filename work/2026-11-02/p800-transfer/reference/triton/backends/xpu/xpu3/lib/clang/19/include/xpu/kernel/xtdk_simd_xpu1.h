/*!\file  xtdk_simd_xpu1.h
 * \brief XPU1硬件支持的simd访存和运算接口
 * \see docs/xpu/DeveloperGuide.md
*/

#ifndef __XPU_KERNEL_XTDK_SIMD_XPU1_H
#define __XPU_KERNEL_XTDK_SIMD_XPU1_H

#if defined(__arch_xpu1__) || defined(__xpu_on_host__)
/*!
 * \brief XPU 256-bit vector-vector addition on local memory, single precision floating point
 *        Add two single-precision (32-bit) floating-point vector on address \p lhs and \p rhs,
 *        then store the results to address \p res.
 *        `for (int i = 0; i < 8; i++) { res[i] = lhs[i] + rhs[i]; }`
 * \param lhs address of left-hand-side vector operand on local memory
 * \param rhs address of right-hand-side vector operand on local memory
 * \param res address of result vector on local memory
 */
static inline __device__ void _x256_vvadd_ls(const float* lhs, const float* rhs, float* res) {
  __builtin_xpu_vvadd_s(lhs, rhs, res);
}

/*!
 * \brief XPU 256-bit vector-vector subtraction on local memory, single precision floating point
 *        Subtract two single-precision (32-bit) floating-point vector on address \p lhs and \p rhs,
 *        then store the results to address \p res.
 *        `for (int i = 0; i < 8; i++) { res[i] = lhs[i] - rhs[i]; }`
 * \param lhs address of left-hand-side vector operand on local memory
 * \param rhs address of right-hand-side vector operand on local memory
 * \param res address of result vector on local memory
 */
static inline __device__ void _x256_vvsub_ls(const float* lhs, const float* rhs, float* res) {
  __builtin_xpu_vvsub_s(lhs, rhs, res);
}

/*!
 * \brief XPU 256-bit vector-vector multiplication on local memory, single precision floating point
 *        Multiply two single-precision (32-bit) floating-point vector on address \p lhs and \p rhs,
 *        then store the results to address \p res.
 *        `for (int i = 0; i < 8; i++) { res[i] = lhs[i] * rhs[i]; }`
 * \param lhs address of left-hand-side vector operand on local memory
 * \param rhs address of right-hand-side vector operand on local memory
 * \param res address of result vector on local memory
 */
static inline __device__ void _x256_vvmul_ls(const float* lhs, const float* rhs, float* res) {
  __builtin_xpu_vvmul_s(lhs, rhs, res);
}

/*!
 * \brief XPU 256-bit scalar-vector addition on local memory, single precision floating point
 *        Add a single-precision (32-bit) floating-point scalar \p lhs with a vector of same type on address \p rhs,
 *        then store the results to address \p res.
 *        `for (int i = 0; i < 8; i++) { res[i] = lhs + rhs[i]; }`
 * \param lhs left-hand-side scalar operand
 * \param rhs address of right-hand-side vector operand on local memory
 * \param res address of result vector on local memory
 */
static inline  __device__ void _x256_svadd_ls(const float lhs, const float* rhs, float* res) {
  __builtin_xpu_svadd_s(lhs, rhs, res);
}

/*!
 * \brief XPU 256-bit scalar-vector subtraction on local memory, single precision floating point
 *        Subtract a single-precision (32-bit) floating-point scalar \p lhs with a vector of same type on address \p rhs,
 *        then store the results to address \p res.
 *        `for (int i = 0; i < 8; i++) { res[i] = lhs - rhs[i]; }`
 * \param lhs left-hand-side scalar operand
 * \param rhs address of right-hand-side vector operand on local memory
 * \param res address of result vector on local memory
 */
static inline  __device__ void _x256_svsub_ls(const float lhs, const float* rhs, float* res) {
  __builtin_xpu_svsub_s(lhs, rhs, res);
}

/*!
 * \brief XPU 256-bit scalar-vector multiplication on local memory, single precision floating point
 *        Multiply a single-precision (32-bit) floating-point scalar \p lhs with a vector of same type on address \p rhs,
 *        then store the results to address \p res.
 *        `for (int i = 0; i < 8; i++) { res[i] = lhs * rhs[i]; }`
 * \param lhs left-hand-side scalar operand
 * \param rhs address of right-hand-side vector operand on local memory
 * \param res address of result vector on local memory
 */
static inline  __device__ void _x256_svmul_ls(const float lhs, const float* rhs, float* res) {
  __builtin_xpu_svmul_s(lhs, rhs, res);
}

/*!
 * \brief XPU 256-bit vector-vector xor on local memory, int
 *        Xor two  (32-bit) int vector on address \p lhs and \p rhs,
 *        then store the results to address \p res.
 *        `for (int i = 0; i < 8; i++) { res[i] = lhs[i] ^ rhs[i]; }`
 * \param lhs address of left-hand-side vector operand on local memory
 * \param rhs address of right-hand-side vector operand on local memory
 * \param res address of result vector on local memory
 */
static inline  __device__ void _x256_vvxor_ls(const int* lhs, const int* rhs, int* res) {
  __builtin_xpu_vvxor(lhs, rhs, res);
}

/*!
 * \brief XPU 256-bit vector-vector xnor on local memory, int
 *        Xnor two  (32-bit) int vector on address \p lhs and \p rhs,
 *        then store the results to address \p res.
 *        `for (int i = 0; i < 8; i++) { res[i] = ~(lhs[i] ^ rhs[i]); }`
 * \param lhs address of left-hand-side vector operand on local memory
 * \param rhs address of right-hand-side vector operand on local memory
 * \param res address of result vector on local memory
 */
static inline  __device__ void _x256_vvxnor_ls(const int* lhs, const int* rhs, int* res) {
  __builtin_xpu_vvxnor(lhs, rhs, res);
}

/*!
 * \brief XPU 256-bit vector popcnt on local memory, int
 *        Popcnt int vector on address \p input
 *        `int cnt = 0; for (int i = 0; i < 8; i++) { cnt += popcnt(input[i]); } return cnt;`
 * \param input address of vector operand on local memory
 */
static inline  __device__ int _x256_popcnt_ls(const int* input) {
    int result = __builtin_xpu_popcnt(input);
    return result;
}
#endif //__arch_xpu1__

#endif // __XPU_KERNEL_XTDK_SIMD_XPU1_H
