/*!\file xtdk_atomic_function.h
 * \brief XCN C/CPP中的原子操作接口。
 */

#ifndef __XCN_KERNEL_XTDK_ATOMIC_FUNCTIONS_H__
#define __XCN_KERNEL_XTDK_ATOMIC_FUNCTIONS_H__

__device__ inline int atomicAdd(int *address, int val) {
  return __houyi_atomic_fetch_add(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline int atomicAdd_block(int *address, int val) {
  return __houyi_atomic_fetch_add(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

__device__ inline unsigned int atomicAdd(unsigned int *address,
                                         unsigned int val) {
  return __houyi_atomic_fetch_add(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline unsigned int atomicAdd_block(unsigned int *address,
                                               unsigned int val) {
  return __houyi_atomic_fetch_add(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

__device__ inline unsigned long long atomicAdd(unsigned long long *address,
                                               unsigned long long val) {
  return __houyi_atomic_fetch_add(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline unsigned long long
atomicAdd_block(unsigned long long *address, unsigned long long val) {
  return __houyi_atomic_fetch_add(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

__device__ inline float atomicAdd(float *address, float val) {
  return __houyi_atomic_fetch_add(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline float atomicAdd_block(float *address, float val) {
  return __houyi_atomic_fetch_add(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline double atomicAdd(double *address, double val) {
  return __houyi_atomic_fetch_add(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline double atomicAdd_block(double *address, double val) {
  return __houyi_atomic_fetch_add(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

// Atomic Sub.

__device__ inline int atomicSub(int *address, int val) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  return __houyi_atomic_fetch_sub(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
#else
  return atomicAdd(address, -val);
#endif
}

__device__ inline int atomicSub_block(int *address, int val) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  return __houyi_atomic_fetch_sub(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
#else
  return atomicAdd_block(address, -val);
#endif
}

__device__ inline unsigned int atomicSub(unsigned int *address,
                                         unsigned int val) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  return __houyi_atomic_fetch_sub(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
#else
  return atomicAdd(address, -val);
#endif
}

__device__ inline unsigned int atomicSub_block(unsigned int *address,
                                               unsigned int val) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  return __houyi_atomic_fetch_sub(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
#else
  return atomicAdd_block(address, -val);
#endif
}

// Atomic Exchange.

__device__ inline int atomicExch(int *address, int val) {
  return __houyi_atomic_exchange(address, val, __ATOMIC_RELAXED,
                                 __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline int atomicExch_block(int *address, int val) {
  return __houyi_atomic_exchange(address, val, __ATOMIC_RELAXED,
                                 __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

__device__ inline unsigned int atomicExch(unsigned int *address,
                                          unsigned int val) {
  return __houyi_atomic_exchange(address, val, __ATOMIC_RELAXED,
                                 __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline unsigned int atomicExch_block(unsigned int *address,
                                                unsigned int val) {
  return __houyi_atomic_exchange(address, val, __ATOMIC_RELAXED,
                                 __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

__device__ inline unsigned long long atomicExch(unsigned long long *address,
                                                unsigned long long val) {
  return __houyi_atomic_exchange(address, val, __ATOMIC_RELAXED,
                                 __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline unsigned long long
atomicExch_block(unsigned long long *address, unsigned long long val) {
  return __houyi_atomic_exchange(address, val, __ATOMIC_RELAXED,
                                 __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

__device__ inline float atomicExch(float *address, float val) {
  return __houyi_atomic_exchange(address, val, __ATOMIC_RELAXED,
                                 __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline float atomicExch_block(float *address, float val) {
  return __houyi_atomic_exchange(address, val, __ATOMIC_RELAXED,
                                 __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

// Atomic Min

__device__ inline int atomicMin(int *address, int val) {
  return __houyi_atomic_fetch_min(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline int atomicMin_block(int *address, int val) {
  return __houyi_atomic_fetch_min(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

__device__ inline unsigned int atomicMin(unsigned int *address,
                                         unsigned int val) {
  return __houyi_atomic_fetch_min(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline unsigned int atomicMin_block(unsigned int *address,
                                               unsigned int val) {
  return __houyi_atomic_fetch_min(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

__device__ inline unsigned long long atomicMin(unsigned long long *address,
                                               unsigned long long val) {
  return __houyi_atomic_fetch_min(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline unsigned long long
atomicMin_block(unsigned long long *address, unsigned long long val) {
  return __houyi_atomic_fetch_min(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

__device__ inline long long int atomicMin(long long int *address,
                                          long long int val) {
  return __houyi_atomic_fetch_min(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline long long int atomicMin_block(long long int *address,
                                                long long int val) {
  return __houyi_atomic_fetch_min(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

// Atomic Max

__device__ inline int atomicMax(int *address, int val) {
  return __houyi_atomic_fetch_max(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline int atomicMax_block(int *address, int val) {
  return __houyi_atomic_fetch_max(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

__device__ inline unsigned int atomicMax(unsigned int *address,
                                         unsigned int val) {
  return __houyi_atomic_fetch_max(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline unsigned int atomicMax_block(unsigned int *address,
                                               unsigned int val) {
  return __houyi_atomic_fetch_max(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

__device__ inline unsigned long long atomicMax(unsigned long long *address,
                                               unsigned long long val) {
  return __houyi_atomic_fetch_max(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline unsigned long long
atomicMax_block(unsigned long long *address, unsigned long long val) {
  return __houyi_atomic_fetch_max(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

__device__ inline long long int atomicMax(long long int *address,
                                          long long int val) {
  return __houyi_atomic_fetch_max(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline long long int atomicMax_block(long long int *address,
                                                long long int val) {
  return __houyi_atomic_fetch_max(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

// Atomic Inc/Dec

__device__ inline unsigned int atomicInc(unsigned int *address,
                                         unsigned int val) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  return __builtin_xcn_atomic_inc32(address, val, __ATOMIC_RELAXED, "agent");
#else
  bool done = false;
  unsigned int old = __houyi_atomic_load(address, __ATOMIC_RELAXED,
                                         __HOUYI_MEMORY_SCOPE_AGENT);
  while (!done) {
    // old >= val ? 0 : old+1
    unsigned int compute = old >= val ? 0 : old + 1;
    done = __houyi_atomic_compare_exchange_strong(
        address, &old, compute, __ATOMIC_RELAXED, __ATOMIC_RELAXED,
        __HOUYI_MEMORY_SCOPE_AGENT);
  }
  return old;
#endif
}

__device__ inline unsigned int atomicInc_block(unsigned int *address,
                                               unsigned int val) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  return __builtin_xcn_atomic_inc32(address, val, __ATOMIC_RELAXED,
                                    "workgroup");
#else
  bool done = false;
  unsigned int old = __houyi_atomic_load(address, __ATOMIC_RELAXED,
                                         __HOUYI_MEMORY_SCOPE_WORKGROUP);
  while (!done) {
    // old >= val ? 0 : old+1
    unsigned int compute = old >= val ? 0 : old + 1;
    done = __houyi_atomic_compare_exchange_strong(
        address, &old, compute, __ATOMIC_RELAXED, __ATOMIC_RELAXED,
        __HOUYI_MEMORY_SCOPE_WORKGROUP);
  }
  return old;
#endif
}

__device__ inline unsigned int atomicDec(unsigned int *address,
                                         unsigned int val) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  return __builtin_xcn_atomic_dec32(address, val, __ATOMIC_RELAXED, "agent");
#else
  bool done = false;
  unsigned int old = __houyi_atomic_load(address, __ATOMIC_RELAXED,
                                         __HOUYI_MEMORY_SCOPE_AGENT);
  while (!done) {
    // ((old == 0) || (old > val)) ? val : (old-1)
    unsigned int compute = ((old == 0) || (old > val)) ? val : (old - 1);
    done = __houyi_atomic_compare_exchange_strong(
        address, &old, compute, __ATOMIC_RELAXED, __ATOMIC_RELAXED,
        __HOUYI_MEMORY_SCOPE_AGENT);
  }
  return old;
#endif
}

__device__ inline unsigned int atomicDec_block(unsigned int *address,
                                               unsigned int val) {
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
  return __builtin_xcn_atomic_dec32(address, val, __ATOMIC_RELAXED,
                                    "workgroup");
#else
  bool done = false;
  unsigned int old = __houyi_atomic_load(address, __ATOMIC_RELAXED,
                                         __HOUYI_MEMORY_SCOPE_WORKGROUP);
  while (!done) {
    // ((old == 0) || (old > val)) ? val : (old-1)
    unsigned int compute = ((old == 0) || (old > val)) ? val : (old - 1);
    done = __houyi_atomic_compare_exchange_strong(
        address, &old, compute, __ATOMIC_RELAXED, __ATOMIC_RELAXED,
        __HOUYI_MEMORY_SCOPE_WORKGROUP);
  }
  return old;
#endif
}

// Atomic compare and exchange.

__device__ unsigned short int atomicCAS(unsigned short int *address,
                                        unsigned short int compare,
                                        unsigned short int val) {
  __houyi_atomic_compare_exchange_strong(address, &compare, val,
                                         __ATOMIC_RELAXED, __ATOMIC_RELAXED,
                                         __HOUYI_MEMORY_SCOPE_AGENT);
  return compare;
}

__device__ unsigned short int atomicCAS_block(unsigned short int *address,
                                              unsigned short int compare,
                                              unsigned short int val) {
  __houyi_atomic_compare_exchange_strong(address, &compare, val,
                                         __ATOMIC_RELAXED, __ATOMIC_RELAXED,
                                         __HOUYI_MEMORY_SCOPE_WORKGROUP);
  return compare;
}

__device__ inline int atomicCAS(int *address, int compare, int val) {
  __houyi_atomic_compare_exchange_strong(address, &compare, val,
                                         __ATOMIC_RELAXED, __ATOMIC_RELAXED,
                                         __HOUYI_MEMORY_SCOPE_AGENT);
  return compare;
}

__device__ inline int atomicCAS_block(int *address, int compare, int val) {
  __houyi_atomic_compare_exchange_strong(address, &compare, val,
                                         __ATOMIC_RELAXED, __ATOMIC_RELAXED,
                                         __HOUYI_MEMORY_SCOPE_WORKGROUP);
  return compare;
}

__device__ inline unsigned int
atomicCAS(unsigned int *address, unsigned int compare, unsigned int val) {
  __houyi_atomic_compare_exchange_strong(address, &compare, val,
                                         __ATOMIC_RELAXED, __ATOMIC_RELAXED,
                                         __HOUYI_MEMORY_SCOPE_AGENT);
  return compare;
}

__device__ inline unsigned int
atomicCAS_block(unsigned int *address, unsigned int compare, unsigned int val) {
  __houyi_atomic_compare_exchange_strong(address, &compare, val,
                                         __ATOMIC_RELAXED, __ATOMIC_RELAXED,
                                         __HOUYI_MEMORY_SCOPE_WORKGROUP);
  return compare;
}

__device__ inline unsigned long long atomicCAS(unsigned long long *address,
                                               unsigned long long compare,
                                               unsigned long long val) {
  __houyi_atomic_compare_exchange_strong(address, &compare, val,
                                         __ATOMIC_RELAXED, __ATOMIC_RELAXED,
                                         __HOUYI_MEMORY_SCOPE_AGENT);
  return compare;
}

__device__ inline unsigned long long
atomicCAS_block(unsigned long long *address, unsigned long long compare,
                unsigned long long val) {
  __houyi_atomic_compare_exchange_strong(address, &compare, val,
                                         __ATOMIC_RELAXED, __ATOMIC_RELAXED,
                                         __HOUYI_MEMORY_SCOPE_WORKGROUP);
  return compare;
}

// Atomic And

__device__ inline int atomicAnd(int *address, int val) {
  return __houyi_atomic_fetch_and(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline int atomicAnd_block(int *address, int val) {
  return __houyi_atomic_fetch_and(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

__device__ inline unsigned int atomicAnd(unsigned int *address,
                                         unsigned int val) {
  return __houyi_atomic_fetch_and(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline unsigned int atomicAnd_block(unsigned int *address,
                                               unsigned int val) {
  return __houyi_atomic_fetch_and(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

__device__ inline unsigned long long atomicAnd(unsigned long long *address,
                                               unsigned long long val) {
  return __houyi_atomic_fetch_and(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline unsigned long long
atomicAnd_block(unsigned long long *address, unsigned long long val) {
  return __houyi_atomic_fetch_and(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

// Atomic Or

__device__ inline int atomicOr(int *address, int val) {
  return __houyi_atomic_fetch_or(address, val, __ATOMIC_RELAXED,
                                 __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline int atomicOr_block(int *address, int val) {
  return __houyi_atomic_fetch_or(address, val, __ATOMIC_RELAXED,
                                 __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

__device__ inline unsigned int atomicOr(unsigned int *address,
                                        unsigned int val) {
  return __houyi_atomic_fetch_or(address, val, __ATOMIC_RELAXED,
                                 __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline unsigned int atomicOr_block(unsigned int *address,
                                              unsigned int val) {
  return __houyi_atomic_fetch_or(address, val, __ATOMIC_RELAXED,
                                 __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

__device__ inline unsigned long long atomicOr(unsigned long long *address,
                                              unsigned long long val) {
  return __houyi_atomic_fetch_or(address, val, __ATOMIC_RELAXED,
                                 __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline unsigned long long atomicOr_block(unsigned long long *address,
                                                    unsigned long long val) {
  return __houyi_atomic_fetch_or(address, val, __ATOMIC_RELAXED,
                                 __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

// Atomic Xor

__device__ inline int atomicXor(int *address, int val) {
  return __houyi_atomic_fetch_xor(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline int atomicXor_block(int *address, int val) {
  return __houyi_atomic_fetch_xor(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

__device__ inline unsigned int atomicXor(unsigned int *address,
                                         unsigned int val) {
  return __houyi_atomic_fetch_xor(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline unsigned int atomicXor_block(unsigned int *address,
                                               unsigned int val) {
  return __houyi_atomic_fetch_xor(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

__device__ inline unsigned long long atomicXor(unsigned long long *address,
                                               unsigned long long val) {
  return __houyi_atomic_fetch_xor(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_AGENT);
}

__device__ inline unsigned long long
atomicXor_block(unsigned long long *address, unsigned long long val) {
  return __houyi_atomic_fetch_xor(address, val, __ATOMIC_RELAXED,
                                  __HOUYI_MEMORY_SCOPE_WORKGROUP);
}

#if (defined __XPU_ARCH__) && (__XPU_ARCH__ == 6)

#define ATOMIC_SYSTEM_WRAPPER(name, type)                               \
__device__ inline type atomic##name##_system(type *address, type val) { \
    return atomic##name(address, val);                                  \
}

#define ATOMIC_CAS_SYSTEM_WRAPPER(type)                                          \
__device__ inline type atomicCAS_system(type *address, type compare, type val) { \
    return atomicCAS(address, compare, val);                                     \
}

ATOMIC_SYSTEM_WRAPPER(Add, int)
ATOMIC_SYSTEM_WRAPPER(Add, unsigned int)
ATOMIC_SYSTEM_WRAPPER(Add, unsigned long long)
ATOMIC_SYSTEM_WRAPPER(Add, float)
ATOMIC_SYSTEM_WRAPPER(Add, double)
// TODO: may need __half, __half2, __xpu_bfloat16, __xpu_bfloat162 versions in the future

ATOMIC_SYSTEM_WRAPPER(Sub, int)
ATOMIC_SYSTEM_WRAPPER(Sub, unsigned int)

ATOMIC_SYSTEM_WRAPPER(Inc, unsigned int)

ATOMIC_SYSTEM_WRAPPER(Exch, int)
ATOMIC_SYSTEM_WRAPPER(Exch, unsigned int)
ATOMIC_SYSTEM_WRAPPER(Exch, unsigned long long)
ATOMIC_SYSTEM_WRAPPER(Exch, float)

ATOMIC_SYSTEM_WRAPPER(And, int)
ATOMIC_SYSTEM_WRAPPER(And, unsigned int)
ATOMIC_SYSTEM_WRAPPER(And, unsigned long long)

ATOMIC_SYSTEM_WRAPPER(Or, int)
ATOMIC_SYSTEM_WRAPPER(Or, unsigned int)
ATOMIC_SYSTEM_WRAPPER(Or, unsigned long long)

ATOMIC_SYSTEM_WRAPPER(Xor, int)
ATOMIC_SYSTEM_WRAPPER(Xor, unsigned int)
ATOMIC_SYSTEM_WRAPPER(Xor, unsigned long long)

ATOMIC_CAS_SYSTEM_WRAPPER(unsigned short int)
ATOMIC_CAS_SYSTEM_WRAPPER(int)
ATOMIC_CAS_SYSTEM_WRAPPER(unsigned int)
ATOMIC_CAS_SYSTEM_WRAPPER(unsigned long long)

#endif

#endif // __XCN_KERNEL_XTDK_ATOMIC_FUNCTIONS_H__
