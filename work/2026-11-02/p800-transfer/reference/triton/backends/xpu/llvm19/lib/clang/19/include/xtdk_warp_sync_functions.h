// Warp sync builtins (with explicit mask argument)

#ifndef __XCN_KERNEL_XTDK_WARP_SYNC_FUNCTIONS_H__
#define __XCN_KERNEL_XTDK_WARP_SYNC_FUNCTIONS_H__

#include "xtdk_assert.h"
#include "xtdk_type_traits.h"
#include "xtdk_warp_functions.h"

template <typename T> __device__ inline T __houyi_readfirstlane(T val) {
  // In theory, behaviour is undefined when reading from a union member other
  // than the member that was last assigned to, but it works in practice because
  // we rely on the compiler to do the reasonable thing.
  union {
    unsigned int i;
    T d;
  } u;
  u.d = val;
  u.i = (unsigned)__builtin_xcn_readfirstlane(u.i);
  return u.d;
}

// We use a macro to expand each builtin into a waterfall that implements the
// mask semantics:
//
// 1. The mask argument may be divergent.
// 2. Each active thread must have its own bit set in its own mask value.
// 3. For a given mask value, all threads that are mentioned in the mask must
//    execute the same static instance of the builtin with the same mask.
// 4. The union of all mask values supplied at a static instance must be equal
//    to the activemask at the program point.
//
// Thus, the mask argument partitions the set of currently active threads in the
// wave into disjoint subsets that cover all active threads.
//
// Implementation notes:
// ---------------------
//
// We implement this as a waterfall loop that executes the builtin for each
// subset separately. The return value is a divergent value across the active
// threads. The value for inactive threads is defined by each builtin
// separately.
//
// As long as every mask value is non-zero, we don't need to check if a lane
// specifies itself in the mask; that is done by the later assertion where all
// chosen lanes must be in the chosen mask.

#define __houyi_check_mask(MASK)                                               \
  do {                                                                         \
    assert(MASK && "mask must be non-zero");                                   \
    bool done = false;                                                         \
    while (__any(!done)) {                                                     \
      if (!done) {                                                             \
        auto chosen_mask = __houyi_readfirstlane(MASK);                        \
        if (MASK == chosen_mask) {                                             \
          assert(MASK == __ballot(true) &&                                     \
                 "all threads specified in the mask"                           \
                 " must execute the same operation with the same mask");       \
          done = true;                                                         \
        }                                                                      \
      }                                                                        \
    }                                                                          \
  } while (0)

#define __houyi_do_sync(RETVAL, FUNC, MASK, ...)                               \
  do {                                                                         \
    assert(MASK && "mask must be non-zero");                                   \
    bool done = false;                                                         \
    while (__any(!done)) {                                                     \
      if (!done) {                                                             \
        auto chosen_mask = __houyi_readfirstlane(MASK);                        \
        if (MASK == chosen_mask) {                                             \
          assert(MASK == __ballot(true) &&                                     \
                 "all threads specified in the mask"                           \
                 " must execute the same operation with the same mask");       \
          RETVAL = FUNC(__VA_ARGS__);                                          \
          done = true;                                                         \
        }                                                                      \
      }                                                                        \
    }                                                                          \
  } while (0)

// __all_sync, __any_sync, __ballot_sync

template <typename MaskT>
__device__ inline unsigned int __ballot_sync(MaskT mask, int predicate) {
  static_assert(houyi_std::is_integral<MaskT>::value && sizeof(MaskT) == 4,
                "The mask must be a 32-bit integer. ");
  __houyi_check_mask(mask);
  return __ballot(predicate) & mask;
}

template <typename MaskT>
__device__ inline int __all_sync(MaskT mask, int predicate) {
  static_assert(houyi_std::is_integral<MaskT>::value && sizeof(MaskT) == 4,
                "The mask must be a 32-bit integer. ");
  return __ballot_sync(mask, predicate) == mask;
}

template <typename MaskT>
__device__ inline int __any_sync(MaskT mask, int predicate) {
  static_assert(houyi_std::is_integral<MaskT>::value && sizeof(MaskT) == 4,
                "The mask must be a 32-bit integer. ");
  return __ballot_sync(mask, predicate) != 0;
}

// __match_any, __match_all and sync variants

template <typename T> __device__ inline unsigned int __match_any(T value) {
  static_assert(
      (houyi_std::is_integral<T>::value || houyi_std::is_floating_point<T>::value) &&
          (sizeof(T) == 4 || sizeof(T) == 8),
      "T can be int, unsigned int, long, unsigned long, long long, unsigned "
      "long long, float or double.");
  volatile bool done = false;
  unsigned int retval = 0;

  while (__any(!done)) {
    if (!done) {
      T chosen = __houyi_readfirstlane(value);
      if (chosen == value) {
        retval = __activemask();
        done = true;
      }
    }
  }

  return retval;
}

template <typename MaskT, typename T>
__device__ inline unsigned int __match_any_sync(MaskT mask, T value) {
  static_assert(
      houyi_std::is_integral<MaskT>::value && sizeof(MaskT) == 4,
      "The mask must be a 32-bit integer. "
      "Implicitly promoting a smaller integer is almost always an error.");
  __houyi_check_mask(mask);
  return __match_any(value) & mask;
}

template <typename T>
__device__ inline unsigned int __match_all(T value, int *pred) {
  static_assert(
      (houyi_std::is_integral<T>::value || houyi_std::is_floating_point<T>::value) &&
          (sizeof(T) == 4 || sizeof(T) == 8),
      "T can be int, unsigned int, long, unsigned long, long long, unsigned "
      "long long, float or double.");
  T first = __houyi_readfirstlane(value);
  if (__all(first == value)) {
    *pred = true;
    return __activemask();
  } else {
    *pred = false;
    return 0;
  }
}

template <typename MaskT, typename T>
__device__ inline unsigned int __match_all_sync(MaskT mask, T value,
                                                int *pred) {
  static_assert(houyi_std::is_integral<MaskT>::value && sizeof(MaskT) == 4,
                "The mask must be a 32-bit integer. ");
  MaskT retval = 0;
  __houyi_do_sync(retval, __match_all, mask, value, pred);
  return retval;
}

// __reduce_*_sync: wavefront reduction builtins (sm_80 equivalents)
// Pure software reduction tree using v_shfl_b32 (arch >= 6) or
// __builtin_xcn_ds_bpermute (arch < 6). No external device library needed.

// Generic masked wavefront reduction.
// MaskT must be unsigned int (32-bit). Uses a waterfall loop so that
// divergent mask values are handled correctly.
template <typename MaskT, typename T, typename BinaryOp>
__device__ inline T __xcn_reduce_op_sync(MaskT mask, T val, BinaryOp op) {
  static_assert(houyi_std::is_integral<MaskT>::value && sizeof(MaskT) == 4,
                "The mask must be a 32-bit integer.");
  __houyi_check_mask(mask);

  int maskNumBits = __builtin_popcount(mask);

  int firstLane = __builtin_ctz(mask);
  unsigned int laneId  = __lane_id();
  int nextBit          = laneId;
  int modulo           = 1;
  int maskIdx          = __builtin_popcount(((1u << laneId) - 1u) & mask);

  unsigned int workMask = mask >> laneId;
  workMask >>= 1u;

  // log2(maskNumBits) iterations, rounded up
  int numIterations = (int)(sizeof(int) * 8) - __builtin_clz(maskNumBits);
  if (!(maskNumBits & (maskNumBits - 1)))
    numIterations -= 1;

  int result;
  __builtin_memcpy(&result, &val, sizeof(int));

  while (numIterations) {
    int offset    = modulo >> 1;
    int increment = modulo - offset;
    int nextPos   = maskIdx + offset + increment;
    bool insideLanes = (nextPos < maskNumBits);

    if (insideLanes) {
      for (int i = 0; i < increment; i++) {
        int next = __builtin_ctz(workMask) + 1;
        workMask >>= next;
        nextBit  += next;
      }
    }

    int permuteResult;
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ < 6)
    permuteResult = __builtin_xcn_ds_bpermute(nextBit << 2, result);
#else
    {
      unsigned int p;
      unsigned int c = 0x1Fu;  // bound = 31 (full wavefront)
      asm volatile("v_shfl_b32 %0, %1, %2, %3, %4 mode:idx\n"
                   : "=v"(permuteResult), "=s"(p)
                   : "v"(result), "v"(nextBit), "v"(c));
    }
#endif

    if (insideLanes) {
      T lhs, rhs;
      __builtin_memcpy(&lhs, &result,        sizeof(T));
      __builtin_memcpy(&rhs, &permuteResult, sizeof(T));
      T tmp = op(lhs, rhs);
      __builtin_memcpy(&result, &tmp, sizeof(T));
    }

    modulo <<= 1;
    numIterations--;
  }

  // Broadcast result from first active lane to all lanes in the mask
  int finalResult;
#if (defined __XPU_ARCH__) && (__XPU_ARCH__ < 6)
  finalResult = __builtin_xcn_ds_bpermute(firstLane << 2, result);
#else
  {
    unsigned int p;
    unsigned int c = 0x1Fu;  // bound = 31 (full wavefront)
    asm volatile("v_shfl_b32 %0, %1, %2, %3, %4 mode:idx\n"
                 : "=v"(finalResult), "=s"(p)
                 : "v"(result), "v"(firstLane), "v"(c));
  }
#endif
  T ret;
  __builtin_memcpy(&ret, &finalResult, sizeof(T));
  return ret;
}

template <typename MaskT>
__device__ inline int __reduce_add_sync(MaskT mask, int val) {
  static_assert(houyi_std::is_integral<MaskT>::value && sizeof(MaskT) == 4,
                "The mask must be a 32-bit integer.");
  auto op = [](int a, int b) { return a + b; };
  return __xcn_reduce_op_sync(mask, val, op);
}

template <typename MaskT>
__device__ inline unsigned int __reduce_add_sync(MaskT mask, unsigned int val) {
  static_assert(houyi_std::is_integral<MaskT>::value && sizeof(MaskT) == 4,
                "The mask must be a 32-bit integer.");
  auto op = [](unsigned int a, unsigned int b) { return a + b; };
  return __xcn_reduce_op_sync(mask, val, op);
}

template <typename MaskT>
__device__ inline int __reduce_min_sync(MaskT mask, int val) {
  static_assert(houyi_std::is_integral<MaskT>::value && sizeof(MaskT) == 4,
                "The mask must be a 32-bit integer.");
  auto op = [](int a, int b) { return b < a ? b : a; };
  return __xcn_reduce_op_sync(mask, val, op);
}

template <typename MaskT>
__device__ inline unsigned int __reduce_min_sync(MaskT mask, unsigned int val) {
  static_assert(houyi_std::is_integral<MaskT>::value && sizeof(MaskT) == 4,
                "The mask must be a 32-bit integer.");
  auto op = [](unsigned int a, unsigned int b) { return b < a ? b : a; };
  return __xcn_reduce_op_sync(mask, val, op);
}

template <typename MaskT>
__device__ inline int __reduce_max_sync(MaskT mask, int val) {
  static_assert(houyi_std::is_integral<MaskT>::value && sizeof(MaskT) == 4,
                "The mask must be a 32-bit integer.");
  auto op = [](int a, int b) { return a < b ? b : a; };
  return __xcn_reduce_op_sync(mask, val, op);
}

template <typename MaskT>
__device__ inline unsigned int __reduce_max_sync(MaskT mask, unsigned int val) {
  static_assert(houyi_std::is_integral<MaskT>::value && sizeof(MaskT) == 4,
                "The mask must be a 32-bit integer.");
  auto op = [](unsigned int a, unsigned int b) { return a < b ? b : a; };
  return __xcn_reduce_op_sync(mask, val, op);
}

template <typename MaskT>
__device__ inline unsigned int __reduce_and_sync(MaskT mask, unsigned int val) {
  static_assert(houyi_std::is_integral<MaskT>::value && sizeof(MaskT) == 4,
                "The mask must be a 32-bit integer.");
  auto op = [](unsigned int a, unsigned int b) { return a & b; };
  return __xcn_reduce_op_sync(mask, val, op);
}

template <typename MaskT>
__device__ inline unsigned int __reduce_or_sync(MaskT mask, unsigned int val) {
  static_assert(houyi_std::is_integral<MaskT>::value && sizeof(MaskT) == 4,
                "The mask must be a 32-bit integer.");
  auto op = [](unsigned int a, unsigned int b) { return a | b; };
  return __xcn_reduce_op_sync(mask, val, op);
}

template <typename MaskT>
__device__ inline unsigned int __reduce_xor_sync(MaskT mask, unsigned int val) {
  static_assert(houyi_std::is_integral<MaskT>::value && sizeof(MaskT) == 4,
                "The mask must be a 32-bit integer.");
  auto op = [](unsigned int a, unsigned int b) { return a ^ b; };
  return __xcn_reduce_op_sync(mask, val, op);
}

// various variants of shfl

template <typename MaskT, typename T>
__device__ inline T __shfl_sync(MaskT mask, T var, int srcLane,
                                int width = __XCN_WAVEFRONT_SIZE) {
  static_assert(houyi_std::is_integral<MaskT>::value && sizeof(MaskT) == 4,
                "The mask must be a 32-bit integer. ");
  // NOTE: thread_block_tile<32> may actually have <32 threads
  // if parent group size (e.g. 120) isn't divisible by 32.
  // The active mask != 0xFFFFFFFF in this situation.
  // We use actual active mask to shuffle in this situation.
  mask = __ballot(true);
  __houyi_check_mask(mask);
  return __shfl(var, srcLane, width);
}

template <typename MaskT, typename T>
__device__ inline T __shfl_up_sync(MaskT mask, T var, unsigned int delta,
                                   int width = __XCN_WAVEFRONT_SIZE) {
  static_assert(houyi_std::is_integral<MaskT>::value && sizeof(MaskT) == 4,
                "The mask must be a 32-bit integer. ");
  mask = __ballot(true);
  __houyi_check_mask(mask);
  return __shfl_up(var, delta, width);
}

template <typename MaskT, typename T>
__device__ inline T __shfl_down_sync(MaskT mask, T var, unsigned int delta,
                                     int width = __XCN_WAVEFRONT_SIZE) {
  static_assert(houyi_std::is_integral<MaskT>::value && sizeof(MaskT) == 4,
                "The mask must be a 32-bit integer. ");
  mask = __ballot(true);
  __houyi_check_mask(mask);
  return __shfl_down(var, delta, width);
}

template <typename MaskT, typename T>
__device__ inline T __shfl_xor_sync(MaskT mask, T var, int laneMask,
                                    int width = __XCN_WAVEFRONT_SIZE) {
  static_assert(houyi_std::is_integral<MaskT>::value && sizeof(MaskT) == 4,
                "The mask must be a 32-bit integer. ");
  mask = __ballot(true);
  __houyi_check_mask(mask);
  return __shfl_xor(var, laneMask, width);
}

#undef __houyi_do_sync
#undef __houyi_check_mask

#endif // __XCN_KERNEL_XTDK_WARP_SYNC_FUNCTIONS_H__