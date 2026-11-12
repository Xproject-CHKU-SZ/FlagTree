/*!\file  xtdk_atomic_sm_xpu3.h
 * \brief XPU3硬件支持的SM上原子操作math接口
 */

#ifndef __XPU_KERNEL_XTDK_ATOMIC_SM_XPU3_H
#define __XPU_KERNEL_XTDK_ATOMIC_SM_XPU3_H

#ifdef __xpu__
#if defined(__arch_xpu3__)

#include <stdint.h>

#include <xpu/kernel/xtdk.h>

static __simd__ __shared__
    __attribute__((section(".sh.amo"))) int atomic_sm_lock[3];

#define NOP_TIME 5

/**
 * \brief 获取一个shared memory上的自旋锁
 */
static __device__ inline void ticket_lock_mix() {
  int soft_fail = 1;
  int hard_fail = 1;
  int a = 1;
  int nop_time = NOP_TIME;
  while (soft_fail || hard_fail) {
    a = __builtin_xpu_loada(atomic_sm_lock);
    // a == 0 => success, a change to 1
    // a != 0 => fail, a the-same
    soft_fail = (a != 0);
    if (soft_fail) {
      nop_time += NOP_TIME;
      for (int i = 0; i < nop_time; i++) {
        __asm __volatile__("nop");
      }
    }
    a = 1;
    hard_fail = __builtin_xpu_storea(1, atomic_sm_lock);
  }
}

/**
 * \brief
 * 释放由ticket_lock_mix获取的锁，注意使用前可能需要增加mfence以避免在访存落盘前释放锁
 */
static __device__ inline void ticket_unlock_mix() {
  bool fail = true;
  int a;
  while (fail) {
    __builtin_xpu_loada(atomic_sm_lock);
    fail = __builtin_xpu_storea(0, atomic_sm_lock);
  }
}

/**
 * \brief 获取一个shared memory上的自旋锁
 */
static __device__ inline void ticket_lock_ull() {
  int soft_fail = 1;
  int hard_fail = 1;
  int a = 1;
  int nop_time = NOP_TIME;
  while (soft_fail || hard_fail) {
    a = __builtin_xpu_loada(atomic_sm_lock + 1);
    // a == 0 => success, a change to 1
    // a != 0 => fail, a the-same
    soft_fail = (a != 0);
    if (soft_fail) {
      nop_time += NOP_TIME;
      for (int i = 0; i < nop_time; i++) {
        __asm __volatile__("nop");
      }
    }
    a = 1;
    hard_fail = __builtin_xpu_storea(1, atomic_sm_lock + 1);
  }
}

/**
 * \brief
 * 释放由ticket_lock_ull获取的锁，注意使用前可能需要增加mfence以避免在访存落盘前释放锁
 */
static __device__ inline void ticket_unlock_ull() {
  bool fail = true;
  int a;
  while (fail) {
    __builtin_xpu_loada(atomic_sm_lock + 1);
    fail = __builtin_xpu_storea(0, atomic_sm_lock + 1);
  }
}

/**
 * \brief 获取一个shared memory上的自旋锁
 */
static __device__ inline void ticket_lock_ll() {
  int soft_fail = 1;
  int hard_fail = 1;
  int a = 1;
  int nop_time = NOP_TIME;
  while (soft_fail || hard_fail) {
    a = __builtin_xpu_loada(atomic_sm_lock + 2);
    // a == 0 => success, a change to 1
    // a != 0 => fail, a the-same
    soft_fail = (a != 0);
    if (soft_fail) {
      nop_time += NOP_TIME;
      for (int i = 0; i < nop_time; i++) {
        __asm __volatile__("nop");
      }
    }
    a = 1;
    hard_fail = __builtin_xpu_storea(1, atomic_sm_lock + 2);
  }
}

/**
 * \brief
 * 释放由ticket_lock_ll获取的锁，注意使用前可能需要增加mfence以避免在访存落盘前释放锁
 */
static __device__ inline void ticket_unlock_ll() {
  bool fail = true;
  int a;
  while (fail) {
    __builtin_xpu_loada(atomic_sm_lock + 2);
    fail = __builtin_xpu_storea(0, atomic_sm_lock + 2);
  }
}

/**
 * @brief atomicadd shared_ptr int
 */
inline __attribute__((device)) int atomicadd(__shared_ptr__ int *sm, int n) {
  int x;
  do {
    x = __builtin_xpu_loada(sm);
  } while (__builtin_xpu_storea(x + n, sm));
  return x;
}

/**
 * @brief atomicadd shared_ptr double
 */
inline __attribute__((device)) double atomicadd(__shared_ptr__ double *sm,
                                                double n) {
  ticket_lock_mix();
  double x = *sm;
  *sm = x + n;
  mfence_sm();
  ticket_unlock_mix();
  return x;
}

/**
 * @brief atomicadd shared_ptr float
 */
inline __attribute__((device)) float atomicadd(__shared_ptr__ float *sm,
                                               float n) {
  float x;
  bool storea_fail = true;
  while (storea_fail) {
    x = __builtin_xpu_loada(sm);
    storea_fail = __builtin_xpu_storea(x + n, sm);
  }
  return x;
}

/**
 * @brief atomicadd shared_ptr unsigned int
 */
inline __attribute__((device)) unsigned int
atomicadd(__shared_ptr__ unsigned int *sm, unsigned int n) {
  unsigned int x;
  bool storea_fail = true;
  while (storea_fail) {
    x = __builtin_xpu_loada(sm);
    storea_fail = __builtin_xpu_storea(x + n, sm);
  }
  return x;
}

/**
 * @brief atomicadd shared_ptr unsigned long long
 */
inline __attribute__((device)) unsigned long long
atomicadd(__shared_ptr__ unsigned long long *sm, unsigned long long n) {
  ticket_lock_ull();
  unsigned long long x = *sm;
  *sm = x + n;
  mfence_sm();
  ticket_unlock_ull();
  return x;
}

/**
 * @brief atomicadd shared_ptr uint8_t
 */
inline __attribute__((device)) uint8_t atomicadd(__shared_ptr__ uint8_t *sm,
                                                 uint8_t n) {
  ticket_lock_mix();
  uint8_t x = *sm;
  *sm = x + n;
  mfence_sm();
  ticket_unlock_mix();
  return x;
}

/**
 * @brief atomicadd shared_ptr int8_t
 */
inline __attribute__((device)) int8_t atomicadd(__shared_ptr__ int8_t *sm,
                                                int8_t n) {
  ticket_lock_mix();
  int8_t x = *sm;
  *sm = x + n;
  mfence_sm();
  ticket_unlock_mix();
  return x;
}

/**
 * @brief atomicadd shared_ptr int16_t
 */
inline __attribute__((device)) int16_t atomicadd(__shared_ptr__ int16_t *sm,
                                                 int16_t n) {
  ticket_lock_mix();
  int16_t x = *sm;
  *sm = x + n;
  mfence_sm();
  ticket_unlock_mix();
  return x;
}

/**
 * @brief atomicadd shared_ptr int64_t
 */
inline __attribute__((device)) int64_t atomicadd(__shared_ptr__ int64_t *sm,
                                                 int64_t n) {
  ticket_lock_mix();
  int64_t x = *sm;
  *sm = x + n;
  mfence_sm();
  ticket_unlock_mix();
  return x;
}
/**
 * @brief atomiccas shared_ptr int
 */
inline __attribute__((device)) int atomiccas(__shared_ptr__ int *sm,
                                             int compare, int n) {
  int x;
  int nop_time = NOP_TIME;
  int soft_fail = 1, hard_fail = 1;
  do {
    x = __builtin_xpu_loada(sm);
    soft_fail = (x != compare);
    if (soft_fail) {
      nop_time += NOP_TIME;
      for (int i = 0; i < nop_time; i++) {
        __asm __volatile__("nop");
      }
    }
    hard_fail = __builtin_xpu_storea((soft_fail ? x : n), sm);
  } while (hard_fail);
  return x;
}

/**
 * @brief atomiccas shared_ptr unsigned int
 */
inline __attribute__((device)) unsigned int
atomiccas(__shared_ptr__ unsigned int *sm, unsigned int compare,
          unsigned int n) {
  unsigned int x;
  int nop_time = NOP_TIME;
  int soft_fail = 1, hard_fail = 1;
  do {
    x = __builtin_xpu_loada(sm);
    soft_fail = (x != compare);
    if (soft_fail) {
      nop_time += NOP_TIME;
      for (int i = 0; i < nop_time; i++) {
        __asm __volatile__("nop");
      }
    }
    hard_fail = __builtin_xpu_storea(soft_fail ? x : n, sm);
  } while (hard_fail);
  return x;
}

/**
 * @brief atomiccas shared_ptr unsigned short int
 */
inline __attribute__((device)) unsigned short int
atomiccas(__shared_ptr__ unsigned short int *sm, unsigned short int compare,
          unsigned short int n) {
  ticket_lock_mix();
  unsigned short int x = *sm;
  *sm = (x == compare ? n : x);
  mfence_sm();
  ticket_unlock_mix();
  return x;
}

/**
 * @brief atomiccas shared_ptr unsigned long long
 */
inline __attribute__((device)) unsigned long long
atomiccas(__shared_ptr__ unsigned long long *sm, unsigned long long compare,
          unsigned long long n) {
  ticket_lock_ull();
  unsigned long long x = *sm;
  *sm = (x == compare ? n : x);
  mfence_sm();
  ticket_unlock_ull();
  return x;
}

/**
 * @brief atomiccas shared_ptr unsigned long
 */
inline __attribute__((device)) unsigned long
atomiccas(__shared_ptr__ unsigned long *sm, unsigned long compare,
          unsigned long n) {
  ticket_lock_ull();
  unsigned long x = *sm;
  *sm = (x == compare ? n : x);
  mfence_sm();
  ticket_unlock_ull();
  return x;
}

/**
 * @brief atomicexch shared_ptr int
 */
inline __attribute__((device)) int atomicexch(__shared_ptr__ int *sm, int n) {
  int x;
  bool storea_fail = true;
  int nop_time = NOP_TIME;
  while (storea_fail) {
    x = __builtin_xpu_loada(sm);
    storea_fail = __builtin_xpu_storea(n, sm);
    if (storea_fail) {
      nop_time += NOP_TIME;
      for (int i = 0; i < nop_time; i++) {
        __asm __volatile__("nop");
      }
    }
  }
  return x;
}

/**
 * @brief atomicexch shared_ptr unsigned int
 */
inline __attribute__((device)) unsigned int
atomicexch(__shared_ptr__ unsigned int *sm, unsigned int n) {
  unsigned int x;
  bool storea_fail = true;
  int nop_time = NOP_TIME;
  while (storea_fail) {
    x = __builtin_xpu_loada(sm);
    storea_fail = __builtin_xpu_storea(n, sm);
    if (storea_fail) {
      nop_time += NOP_TIME;
      for (int i = 0; i < nop_time; i++) {
        __asm __volatile__("nop");
      }
    }
  }
  return x;
}

/**
 * @brief atomicexch shared_ptr unsigned long long
 */
inline __attribute__((device)) unsigned long long
atomicexch(__shared_ptr__ unsigned long long *sm, unsigned long long n) {
  ticket_lock_ull();
  unsigned long long x = *sm;
  *sm = n;
  mfence_sm();
  ticket_unlock_ull();
  return x;
}

/**
 * @brief atomicexch shared_ptr float
 */
inline __attribute__((device)) float atomicexch(__shared_ptr__ float *sm,
                                                float n) {
  float x;
  bool storea_fail = true;
  int nop_time = NOP_TIME;
  while (storea_fail) {
    x = __builtin_xpu_loada(sm);
    storea_fail = __builtin_xpu_storea(n, sm);
    if (storea_fail) {
      nop_time += NOP_TIME;
      for (int i = 0; i < nop_time; i++) {
        __asm __volatile__("nop");
      }
    }
  }
  return x;
}

/**
 * @brief atomicsub shared_ptr int
 */
inline __attribute__((device)) int atomicsub(__shared_ptr__ int *sm, int n) {
  int x;
  do {
    x = __builtin_xpu_loada(sm);
  } while (__builtin_xpu_storea(x - n, sm));
  return x;
}

/**
 * @brief atomicsub shared_ptr unsigned int
 */
inline __attribute__((device)) unsigned int
atomicsub(__shared_ptr__ unsigned int *sm, unsigned int n) {
  unsigned int x;
  bool storea_fail = true;
  while (storea_fail) {
    x = __builtin_xpu_loada(sm);
    storea_fail = __builtin_xpu_storea(x - n, sm);
  }
  return x;
}

/**
 * @brief atomicmin shared_ptr int
 */
inline __attribute__((device)) int atomicmin(__shared_ptr__ int *sm, int n) {
  int x;
  do {
    x = __builtin_xpu_loada(sm);
  } while (__builtin_xpu_storea(((x <= n) ? x : n), sm));
  return x;
}

/**
 * @brief atomicmin shared_ptr unsigned int
 */
inline __attribute__((device)) unsigned int
atomicmin(__shared_ptr__ unsigned int *sm, unsigned int n) {
  unsigned int x;
  bool storea_fail = true;
  while (storea_fail) {
    x = __builtin_xpu_loada(sm);
    storea_fail = __builtin_xpu_storea((x <= n) ? x : n, sm);
  }
  return x;
}

/**
 * @brief atomicmin shared_ptr long long
 */
inline __attribute__((device)) long long atomicmin(__shared_ptr__ long long *sm,
                                                   long long n) {
  ticket_lock_ll();
  long long x = *sm;
  *sm = ((x <= n) ? x : n);
  mfence_sm();
  ticket_unlock_ll();
  return x;
}

/**
 * @brief atomicmin shared_ptr unsigned long long
 */
inline __attribute__((device)) unsigned long long
atomicmin(__shared_ptr__ unsigned long long *sm, unsigned long long n) {
  ticket_lock_ull();
  unsigned long long x = *sm;
  *sm = ((x <= n) ? x : n);
  mfence_sm();
  ticket_unlock_ull();
  return x;
}

/**
 * @brief atomicmax shared_ptr int
 */
inline __attribute__((device)) int atomicmax(__shared_ptr__ int *sm, int n) {
  int x;
  do {
    x = __builtin_xpu_loada(sm);
  } while (__builtin_xpu_storea(((x >= n) ? x : n), sm));
  return x;
}

/**
 * @brief atomicmax shared_ptr unsigned int
 */
inline __attribute__((device)) unsigned int
atomicmax(__shared_ptr__ unsigned int *sm, unsigned int n) {
  unsigned int x;
  bool storea_fail = true;
  while (storea_fail) {
    x = __builtin_xpu_loada(sm);
    storea_fail = __builtin_xpu_storea((x >= n) ? x : n, sm);
  }
  return x;
}

/**
 * @brief atomicmax shared_ptr long long
 */
inline __attribute__((device)) long long atomicmax(__shared_ptr__ long long *sm,
                                                   long long n) {
  ticket_lock_ll();
  long long x = *sm;
  *sm = ((x >= n) ? x : n);
  mfence_sm();
  ticket_unlock_ll();
  return x;
}

/**
 * @brief atomicmax shared_ptr unsigned long long
 */
inline __attribute__((device)) unsigned long long
atomicmax(__shared_ptr__ unsigned long long *sm, unsigned long long n) {
  ticket_lock_ull();
  unsigned long long x = *sm;
  *sm = ((x >= n) ? x : n);
  mfence_sm();
  ticket_unlock_ull();
  return x;
}

/**
 * @brief atomicinc shared_ptr unsigned int
 */
inline __attribute__((device)) unsigned int
atomicinc(__shared_ptr__ unsigned int *sm, unsigned int n) {
  unsigned int x;
  bool storea_fail = true;
  while (storea_fail) {
    x = __builtin_xpu_loada(sm);
    storea_fail = __builtin_xpu_storea((x >= n) ? 0 : (x + 1), sm);
  }
  return x;
}

/**
 * @brief atomicdec shared_ptr unsigned int
 */
inline __attribute__((device)) unsigned int
atomicdec(__shared_ptr__ unsigned int *sm, unsigned int n) {
  unsigned int x;
  bool storea_fail = true;
  while (storea_fail) {
    x = __builtin_xpu_loada(sm);
    storea_fail = __builtin_xpu_storea(((x == 0) || (x > n)) ? n : (x - 1), sm);
  }
  return x;
}

/**
 * @brief atomicand shared_ptr int
 */
inline __attribute__((device)) int atomicand(__shared_ptr__ int *sm, int n) {
  int x;
  do {
    x = __builtin_xpu_loada(sm);
  } while (__builtin_xpu_storea(x & n, sm));
  return x;
}

/**
 * @brief atomicand shared_ptr unsigned int
 */
inline __attribute__((device)) unsigned int
atomicand(__shared_ptr__ unsigned int *sm, unsigned int n) {
  unsigned int x;
  bool storea_fail = true;
  while (storea_fail) {
    x = __builtin_xpu_loada(sm);
    storea_fail = __builtin_xpu_storea(x & n, sm);
  }
  return x;
}

/**
 * @brief atomicand shared_ptr long long
 */
inline __attribute__((device)) long long atomicand(__shared_ptr__ long long *sm,
                                                   long long n) {
  ticket_lock_ll();
  long long x = *sm;
  *sm = (x & n);
  mfence_sm();
  ticket_unlock_ll();
  return x;
}

/**
 * @brief atomicand shared_ptr unsigned long long
 */
inline __attribute__((device)) unsigned long long
atomicand(__shared_ptr__ unsigned long long *sm, unsigned long long n) {
  ticket_lock_ull();
  unsigned long long x = *sm;
  *sm = (x & n);
  mfence_sm();
  ticket_unlock_ull();
  return x;
}

/**
 * @brief atomicor shared_ptr int
 */
inline __attribute__((device)) int atomicor(__shared_ptr__ int *sm, int n) {
  int x;
  do {
    x = __builtin_xpu_loada(sm);
  } while (__builtin_xpu_storea(x | n, sm));
  return x;
}

/**
 * @brief atomicor shared_ptr unsigned int
 */
inline __attribute__((device)) unsigned int
atomicor(__shared_ptr__ unsigned int *sm, unsigned int n) {
  unsigned int x;
  bool storea_fail = true;
  while (storea_fail) {
    x = __builtin_xpu_loada(sm);
    storea_fail = __builtin_xpu_storea(x | n, sm);
  }
  return x;
}

/**
 * @brief atomicor shared_ptr long long
 */
inline __attribute__((device)) long long atomicor(__shared_ptr__ long long *sm,
                                                  long long n) {
  ticket_lock_ll();
  long long x = *sm;
  *sm = (x | n);
  mfence_sm();
  ticket_unlock_ll();
  return x;
}

/**
 * @brief atomicor shared_ptr unsigned long long
 */
inline __attribute__((device)) unsigned long long
atomicor(__shared_ptr__ unsigned long long *sm, unsigned long long n) {
  ticket_lock_ull();
  unsigned long long x = *sm;
  *sm = (x | n);
  mfence_sm();
  ticket_unlock_ull();
  return x;
}

/**
 * @brief atomicxor shared_ptr int
 */
inline __attribute__((device)) int atomicxor(__shared_ptr__ int *sm, int n) {
  int x;
  do {
    x = __builtin_xpu_loada(sm);
  } while (__builtin_xpu_storea(x ^ n, sm));
  return x;
}

/**
 * @brief atomicxor shared_ptr unsigned int
 */
inline __attribute__((device)) unsigned int
atomicxor(__shared_ptr__ unsigned int *sm, unsigned int n) {
  unsigned int x;
  bool storea_fail = true;
  while (storea_fail) {
    x = __builtin_xpu_loada(sm);
    storea_fail = __builtin_xpu_storea(x ^ n, sm);
  }
  return x;
}

/**
 * @brief atomicxor shared_ptr long long
 */
inline __attribute__((device)) long long atomicxor(__shared_ptr__ long long *sm,
                                                   long long n) {
  ticket_lock_ll();
  long long x = *sm;
  *sm = (x ^ n);
  mfence_sm();
  ticket_unlock_ll();
  return x;
}

/**
 * @brief atomicxor shared_ptr unsigned long long
 */
inline __attribute__((device)) unsigned long long
atomicxor(__shared_ptr__ unsigned long long *sm, unsigned long long n) {
  ticket_lock_ull();
  unsigned long long x = *sm;
  *sm = (x ^ n);
  mfence_sm();
  ticket_unlock_ull();
  return x;
}

#endif //__arch_xpu3__
#endif // __xpu__
#endif // __XPU_KERNEL_XTDK_ATOMIC_SM_XPU3_H
