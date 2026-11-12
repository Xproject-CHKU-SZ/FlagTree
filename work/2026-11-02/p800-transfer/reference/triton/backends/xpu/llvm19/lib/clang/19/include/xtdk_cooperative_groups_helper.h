#ifndef __XCN_KERNEL_XTDK_COOPERATIVE_GROUPS_HELPER_H__
#define __XCN_KERNEL_XTDK_COOPERATIVE_GROUPS_HELPER_H__

#include "xtdk_device_functions.h"
#include "xtdk_assert.h"
#include "xtdk_type_traits.h"
#include "xtdk_utility.h"

#if !defined(__align__)
#define __align__(x) __attribute__((aligned(x)))
#endif

#define __forceinline__ __inline__ __attribute__((always_inline))

#if !defined(__CG_QUALIFIER__)
#define __CG_QUALIFIER__ __device__ __forceinline__
#endif

#if !defined(__CG_STATIC_QUALIFIER__)
#define __CG_STATIC_QUALIFIER__ __device__ static __forceinline__
#endif

#if !defined(_CG_STATIC_CONST_DECL_)
#define _CG_STATIC_CONST_DECL_ static constexpr
#endif

#if !defined(_CG_CONSTEXPR_QUALIFIER)
# define _CG_CONSTEXPR_QUALIFIER constexpr __forceinline__ __device__
#endif

// Allow use of multi warp tile, default disable, user manual enable
// #define _CG_ABI_EXPERIMENTAL

using lane_mask = unsigned int;

namespace cooperative_groups {

/* Global scope */
template <unsigned int size>
using is_power_of_2 = houyi_std::integral_constant<bool, (size & (size - 1)) == 0>;

template <unsigned int size>
using is_valid_wavefront =
    houyi_std::integral_constant<bool, (size <= __XCN_WAVEFRONT_SIZE)>;

template <unsigned int size>
using is_valid_tile_size =
    houyi_std::integral_constant<bool, is_power_of_2<size>::value &&
                                     is_valid_wavefront<size>::value>;

template <typename T>
using is_valid_type =
    houyi_std::integral_constant<bool, houyi_std::is_integral<T>::value ||
                                     houyi_std::is_floating_point<T>::value>;

namespace internal {

typedef struct dim3 {
  uint32_t x; ///< x
  uint32_t y; ///< y
  uint32_t z; ///< z
  __host__ __device__ dim3(uint32_t _x = 1, uint32_t _y = 1, uint32_t _z = 1)
      : x(_x), y(_y), z(_z){};
  // Allow comparison with any type that has x/y/z members (e.g. hierarchy_query_result)
  template <class _T>
  __host__ __device__ bool operator==(const _T& rhs) const {
    return x == rhs.x && y == rhs.y && z == rhs.z;
  }
  template <class _T>
  __host__ __device__ bool operator!=(const _T& rhs) const {
    return !(*this == rhs);
  }
} dim3;

/**
 * @brief Enums representing different cooperative group types
 * @note  This enum is only applicable on Linux.
 *
 */
typedef enum {
  cg_invalid,
  cg_multi_grid,
  cg_grid,
  cg_workgroup,
  cg_tiled_group,
  cg_coalesced_group
} group_type;

/**
 *  @ingroup CooperativeG
 *  @{
 *  This section describes the cooperative groups functions.
 *
 *  The cooperative groups provides flexible thread parallel programming
 * algorithms, threads cooperate and share data to perform collective
 * computations.
 *
 *  @note  Cooperative groups feature is implemented on Linux.
 *
 */
namespace helper {
/**
 * @brief Create output mask from input_mask at places where base_mask is set
 *
 * Example: base_mask = 0101'0101, input_mask = 1111'0000
 * Output mask: 1100
 * Explaination:
 *           | | | |  | | | |
 * base:    0|1|0|1|'0|1|0|1|   // Which bits are set
 * input:   1|1|1|1|'0|0|0|0|   // Which values are picked
 *           | | | |  | | | |
 * output:    1   1    0   0
 */
__CG_STATIC_QUALIFIER__ unsigned long long
adjust_mask(unsigned long long base_mask, unsigned long long input_mask) {
  unsigned long long out = 0;
  for (unsigned int i = 0, index = 0; i < __XCN_WAVEFRONT_SIZE; i++) {
    auto lane_active = base_mask & (1ull << i);
    if (lane_active) {
      auto result = input_mask & (1ull << i);
      out |= ((result ? 1ull : 0ull) << index);
      index++;
    }
  }
  return out;
}
} // namespace helper

/**
 *
 * @brief  Functionalities related to multi-grid cooperative group type
 * @note  The following cooperative groups functions are only applicable on
 * Linux.
 *
 */
// namespace multi_grid {

// __CG_STATIC_QUALIFIER__ uint32_t num_grids() {
//   return static_cast<uint32_t>(__ockl_multi_grid_num_grids());
// }

// __CG_STATIC_QUALIFIER__ uint32_t grid_rank() {
//   assert(false && "Not Supported!");
//   return static_cast<uint32_t>(__ockl_multi_grid_grid_rank());
// }

// __CG_STATIC_QUALIFIER__ uint32_t size() {
//   return static_cast<uint32_t>(__ockl_multi_grid_size());
// }

// __CG_STATIC_QUALIFIER__ uint32_t thread_rank() {

//   return static_cast<uint32_t>(__ockl_multi_grid_thread_rank());
// }

// __CG_STATIC_QUALIFIER__ bool is_valid() {
//   return static_cast<bool>(__ockl_multi_grid_is_valid());
// }

// __CG_STATIC_QUALIFIER__ void sync() {
//   __ockl_multi_grid_sync();
// }

// } // namespace multi_grid

/**
 *  @brief Functionalities related to grid cooperative group type
 *  @note  The following cooperative groups functions are only applicable on
 * Linux.
 */
namespace grid {

__CG_STATIC_QUALIFIER__ uint32_t size() {
  return static_cast<uint32_t>((blockDim.z * gridDim.z) *
                               (blockDim.y * gridDim.y) *
                               (blockDim.x * gridDim.x));
}

__CG_STATIC_QUALIFIER__ uint32_t thread_rank() {
  // Compute global id of the workgroup to which the current thread belongs to
  uint32_t blkIdx =
      static_cast<uint32_t>((blockIdx.z * gridDim.y * gridDim.x) +
                            (blockIdx.y * gridDim.x) + (blockIdx.x));

  // Compute total number of threads being passed to reach current workgroup
  // within grid
  uint32_t num_threads_till_current_workgroup =
      static_cast<uint32_t>(blkIdx * (blockDim.x * blockDim.y * blockDim.z));

  // Compute thread local rank within current workgroup
  uint32_t local_thread_rank =
      static_cast<uint32_t>((threadIdx.z * blockDim.y * blockDim.x) +
                            (threadIdx.y * blockDim.x) + (threadIdx.x));

  return (num_threads_till_current_workgroup + local_thread_rank);
}

__CG_STATIC_QUALIFIER__ bool is_valid() {
  assert(false && "Not Supported!");
  // return (bool)__ockl_grid_is_valid();
}

__CG_STATIC_QUALIFIER__ unsigned long long num_blocks() {
  return (unsigned long long)gridDim.x * ((unsigned long long)gridDim.y * gridDim.z);
}

__CG_STATIC_QUALIFIER__ dim3 dim_blocks() {
  return dim3(static_cast<uint32_t>(gridDim.x),
              static_cast<uint32_t>(gridDim.y),
              static_cast<uint32_t>(gridDim.z));
}

__CG_STATIC_QUALIFIER__ dim3 block_index() {
  return dim3(static_cast<uint32_t>(blockIdx.x),
              static_cast<uint32_t>(blockIdx.y),
              static_cast<uint32_t>(blockIdx.z));
}

__CG_STATIC_QUALIFIER__ unsigned long long block_rank() {
  return (unsigned long long)blockIdx.z * ((unsigned long long)gridDim.y * gridDim.x)
       + (unsigned long long)blockIdx.y * gridDim.x
       + blockIdx.x;
}

__CG_STATIC_QUALIFIER__ unsigned long long num_threads() {
  return num_blocks() * (unsigned long long)(blockDim.x * blockDim.y * blockDim.z);
}

__CG_STATIC_QUALIFIER__ dim3 dim_threads() {
  return dim3(static_cast<uint32_t>(gridDim.x * blockDim.x),
              static_cast<uint32_t>(gridDim.y * blockDim.y),
              static_cast<uint32_t>(gridDim.z * blockDim.z));
}

__CG_STATIC_QUALIFIER__ bool bar_has_flipped(unsigned int old_arrive,
                                             unsigned int current_arrive) {
    return (((old_arrive ^ current_arrive) & 0x80000000) != 0);
}

__CG_STATIC_QUALIFIER__ void sync(unsigned int *arrived) {
  unsigned int expected = gridDim.x * gridDim.y * gridDim.z;
   // first thread of block
  bool cta_master = (threadIdx.x + threadIdx.y + threadIdx.z == 0);
   // first block of grid
  bool gpu_master = (blockIdx.x + blockIdx.y + blockIdx.z == 0);

  __syncthreads();

  if (cta_master) {
    unsigned int nb = 1;
     // set first thread of grid to special value to trigger bit-flipping
    if (gpu_master) {
      nb = 0x80000000 - (expected - 1);
    }

    __threadfence();

    unsigned int oldArrive;
    oldArrive = atomicAdd(arrived, nb);

    // wait for all threads to arrive
    while (!bar_has_flipped(oldArrive, *(static_cast<volatile unsigned int *>(arrived))));
    __threadfence();
  }

  __syncthreads();
}

} // namespace grid

/**
 *  @brief Functionalities related to `workgroup` (thread_block in CUDA
 * terminology) cooperative group type
 *  @note  The following cooperative groups functions are only applicable on
 * Linux.
 */
namespace workgroup {

__CG_STATIC_QUALIFIER__ dim3 group_index() {
  return (dim3(static_cast<uint32_t>(blockIdx.x),
               static_cast<uint32_t>(blockIdx.y),
               static_cast<uint32_t>(blockIdx.z)));
}

__CG_STATIC_QUALIFIER__ dim3 thread_index() {
  return (dim3(static_cast<uint32_t>(threadIdx.x),
               static_cast<uint32_t>(threadIdx.y),
               static_cast<uint32_t>(threadIdx.z)));
}

__CG_STATIC_QUALIFIER__ uint32_t size() {
  return (static_cast<uint32_t>(blockDim.x * blockDim.y * blockDim.z));
}

__CG_STATIC_QUALIFIER__ uint32_t thread_rank() {
  return (static_cast<uint32_t>((threadIdx.z * blockDim.y * blockDim.x) +
                                (threadIdx.y * blockDim.x) + (threadIdx.x)));
}

__CG_STATIC_QUALIFIER__ bool is_valid() { return true; }

__CG_STATIC_QUALIFIER__ void sync() { __syncthreads(); }

__CG_STATIC_QUALIFIER__ uint32_t num_threads() {
  return (static_cast<uint32_t>(blockDim.x * blockDim.y * blockDim.z));
}

__CG_STATIC_QUALIFIER__ dim3 dim_threads() {
  return (dim3(static_cast<uint32_t>(blockDim.x),
               static_cast<uint32_t>(blockDim.y),
               static_cast<uint32_t>(blockDim.z)));
}

__CG_STATIC_QUALIFIER__ dim3 block_dim() {
  return (dim3(static_cast<uint32_t>(blockDim.x),
               static_cast<uint32_t>(blockDim.y),
               static_cast<uint32_t>(blockDim.z)));
}

} // namespace workgroup

namespace tiled_group {

// enforce ordering for memory intructions
__CG_STATIC_QUALIFIER__ void sync() {
  __builtin_xcn_fence(__ATOMIC_ACQ_REL, "agent");
}

} // namespace tiled_group

namespace coalesced_group {

// enforce ordering for memory intructions
__CG_STATIC_QUALIFIER__ void sync() {
  __builtin_xcn_fence(__ATOMIC_ACQ_REL, "agent");
}

// Masked bit count
//
// For each thread, this function returns the number of active threads which
// have i-th bit of x set and come before the current thread.
__CG_STATIC_QUALIFIER__ unsigned int masked_bit_count(lane_mask x,
                                                      unsigned int add = 0) {
  return __builtin_xcn_mbcnt_lo(x, add);
}

} // namespace coalesced_group

} // namespace internal

namespace details {
  template <typename Ty>
  using remove_qual = typename houyi_std::remove_cv<typename houyi_std::remove_reference<Ty>::type>::type;

  template <typename Ty> struct _is_float_or_half          : public houyi_std::is_floating_point<Ty> {};
  template <typename Ty>
  using  is_float_or_half = _is_float_or_half<typename houyi_std::remove_cv<Ty>::type>;

  class _coalesced_group_data_access {
  public:
      // Retrieve mask of coalesced groups
      template <typename TyGroup>
      __CG_STATIC_QUALIFIER__ unsigned int get_mask(const TyGroup &group) {
          return group.get_mask();
      }

      // Retrieve mask of tiles
      template <template <typename, typename> typename TyGroup, typename Sz, typename Parent>
      __CG_STATIC_QUALIFIER__ unsigned int get_mask(const TyGroup<Sz, Parent> &group) {
          return group.build_maks();
      }

      // template <typename TyGroup>
      // __CG_STATIC_QUALIFIER__ TyGroup construct_from_mask(unsigned int mask) {
      //     return TyGroup(mask);
      // }

      // template <typename TyGroup>
      // __CG_STATIC_QUALIFIER__ void modify_meta_group(TyGroup &group, unsigned int mgRank, unsigned int mgSize) {
      //     group._data.coalesced.metaGroupRank = mgRank;
      //     group._data.coalesced.metaGroupSize = mgSize;
      // }
  };

  struct grid_workspace {
    unsigned int wsSize;
    unsigned int barrier;
  };
  
  __CG_QUALIFIER__ grid_workspace* get_grid_workspace() {
      unsigned long long gridWsAbiAddress = __builtin_xcn_grid_workspace();
      // Interpret the address from runtime as the driver's grid workspace
      return (reinterpret_cast<grid_workspace*>(gridWsAbiAddress));
  }

  namespace tile {
    namespace shfl {
      /***********************************************************************************
       * Recursively Sliced Shuffle
       *  Purpose:
       *    Slices an input type a number of times into integral types so that shuffles
       *    are well defined
       *  Expectations:
       *    This object *should not* be used from a reinterpret_cast pointer unless
       *    some alignment guarantees can be met. Use a memcpy to guarantee that loads
       *    from the integral types stored within are aligned and correct.
       **********************************************************************************/
      template <unsigned int count, bool intSized = (count <= sizeof(int))>
      struct recursive_sliced_shuffle_helper;

      template <unsigned int count>
      struct recursive_sliced_shuffle_helper<count, true> {
        int val;

        template <typename TyFn>
        __CG_QUALIFIER__ void invoke_shuffle(const TyFn &shfl) {
          val = shfl(val);
        }
      };

      template <unsigned int count>
      struct recursive_sliced_shuffle_helper<count, false> {
        int val;
        recursive_sliced_shuffle_helper<count - sizeof(int)> next;

        template <typename TyFn>
        __CG_QUALIFIER__ void invoke_shuffle(const TyFn &shfl) {
          val = shfl(val);
          next.invoke_shuffle(shfl);
        }
      };
    }

    struct _memory_shuffle {
      template <typename TyElem, typename TyShflFn>
      __CG_STATIC_QUALIFIER__ TyElem _shfl_internal(TyElem elem, const TyShflFn& fn) {
        static_assert(sizeof(TyElem) > 0, "in memory shuffle is not yet implemented");
        return TyElem{};
      }

      template <typename TyElem, typename TyRet = remove_qual<TyElem>>
      __CG_STATIC_QUALIFIER__ TyRet shfl(TyElem&& elem, unsigned int gMask, unsigned int srcRank, unsigned int threads) {
        auto shfl = [=](int val) -> int {
          return 0;
        };

        return _shfl_internal<TyRet>(houyi_std::forward<TyElem>(elem), shfl);
      }

      template <typename TyElem, typename TyRet = remove_qual<TyElem>>
      __CG_STATIC_QUALIFIER__ TyRet shfl_down(TyElem&& elem, unsigned int gMask, unsigned int delta, unsigned int threads) {
        auto shfl = [=](int val) -> int {
          return 0;
        };

        return _shfl_internal<TyRet>(houyi_std::forward<TyElem>(elem), shfl);
      }

      template <typename TyElem, typename TyRet = remove_qual<TyElem>>
      __CG_STATIC_QUALIFIER__ TyRet shfl_up(TyElem&& elem, unsigned int gMask, unsigned int delta, unsigned int threads) {
        auto shfl = [=](int val) -> int {
          return 0;
        };

        return _shfl_internal<TyRet>(houyi_std::forward<TyElem>(elem), shfl);
      }

      template <typename TyElem, typename TyRet = remove_qual<TyElem>>
      __CG_STATIC_QUALIFIER__ TyRet shfl_xor(TyElem&& elem, unsigned int gMask, unsigned int lMask, unsigned int threads) {
        auto shfl = [=](int val) -> int {
          return 0;
        };

        return _shfl_internal<TyRet>(houyi_std::forward<TyElem>(elem), shfl);
      }
    };

    /***********************************************************************************
     * Intrinsic Device Function Shuffle
     *  Purpose:
     *    Uses a shuffle helper that has characteristics best suited for moving
     *    elements between threads
     *  Expectations:
     *    Object given will be forced into an l-value type so that it can be used
     *    with a helper structure that reinterprets the data into intrinsic compatible
     *    types
     *  Notes:
     *    !! TyRet is required so that objects are returned by value and not as
     *    dangling references depending on the value category of the passed object
     **********************************************************************************/
    struct _intrinsic_compat_shuffle {
      template <unsigned int count>
      using shfl_helper = shfl::recursive_sliced_shuffle_helper<count>;

      template <typename TyElem, typename TyShflFn>
      __CG_STATIC_QUALIFIER__ TyElem _shfl_internal(TyElem elem, const TyShflFn& fn) {
        static_assert(__is_trivially_copyable(TyElem), "Type is not compatible with device shuffle");
        shfl_helper<sizeof(TyElem)> helper;
        memcpy(&helper, &elem, sizeof(TyElem));
        helper.invoke_shuffle(fn);
        memcpy(&elem, &helper, sizeof(TyElem));
        return elem;
      }

      template <typename TyElem, typename TyRet = remove_qual<TyElem>>
      __CG_STATIC_QUALIFIER__ TyRet shfl(TyElem&& elem, unsigned int gMask, unsigned int srcRank, unsigned int threads) {
        auto shfl = [=](int val) -> int {
          return __shfl_sync(gMask, val, srcRank, threads);
        };

        return _shfl_internal<TyRet>(houyi_std::forward<TyElem>(elem), shfl);
      }

      template <typename TyElem, typename TyRet = remove_qual<TyElem>>
      __CG_STATIC_QUALIFIER__ TyRet shfl_down(TyElem&& elem, unsigned int gMask, unsigned int delta, unsigned int threads) {
        auto shfl = [=](int val) -> int {
          return __shfl_down_sync(gMask, val, delta, threads);
        };

        return _shfl_internal<TyRet>(houyi_std::forward<TyElem>(elem), shfl);
      }

      template <typename TyElem, typename TyRet = remove_qual<TyElem>>
      __CG_STATIC_QUALIFIER__ TyRet shfl_up(TyElem&& elem, unsigned int gMask, unsigned int delta, unsigned int threads) {
        auto shfl = [=](int val) -> int {
          return __shfl_up_sync(gMask, val, delta, threads);
        };

        return _shfl_internal<TyRet>(houyi_std::forward<TyElem>(elem), shfl);
      }

      template <typename TyElem, typename TyRet = remove_qual<TyElem>>
      __CG_STATIC_QUALIFIER__ TyRet shfl_xor(TyElem&& elem, unsigned int gMask, unsigned int lMask, unsigned int threads) {
        auto shfl = [=](int val) -> int {
          return __shfl_xor_sync(gMask, val, lMask, threads);
        };

        return _shfl_internal<TyRet>(houyi_std::forward<TyElem>(elem), shfl);
      }
    };

    struct _native_shuffle {
      template <typename TyElem>
      __CG_STATIC_QUALIFIER__ TyElem shfl(
          TyElem elem, unsigned int gMask, unsigned int srcRank, unsigned int threads) {
        return static_cast<TyElem>(__shfl_sync(gMask, elem, srcRank, threads));
      }

      template <typename TyElem>
      __CG_STATIC_QUALIFIER__ TyElem shfl_down(
          TyElem elem, unsigned int gMask, unsigned int delta, unsigned int threads) {
        return static_cast<TyElem>(__shfl_down_sync(gMask, elem, delta, threads));
      }

      template <typename TyElem>
      __CG_STATIC_QUALIFIER__ TyElem shfl_up(
          TyElem elem, unsigned int gMask, unsigned int delta, unsigned int threads) {
        return static_cast<TyElem>(__shfl_up_sync(gMask, elem, delta, threads));
      }

      template <typename TyElem>
      __CG_STATIC_QUALIFIER__ TyElem shfl_xor(
          TyElem elem, unsigned int gMask, unsigned int lMask, unsigned int threads) {
        return static_cast<TyElem>(__shfl_xor_sync(gMask, elem, lMask, threads));
      }
    };

    // Almost all arithmetic types are supported by native shuffle
    // Vector types are the exception
    template <typename TyElem>
    using use_native_shuffle = houyi_std::integral_constant<
      bool,
      houyi_std::is_integral<
        remove_qual<TyElem>>::value ||
      details::is_float_or_half<
        remove_qual<TyElem>>::value
    >;

    constexpr unsigned long long _MemoryShuffleCutoff = 32;

    template <typename TyElem,
          bool IsNative = use_native_shuffle<TyElem>::value,
          bool InMem = (sizeof(TyElem) > _MemoryShuffleCutoff)>
    struct shuffle_dispatch;

    template <typename TyElem>
    struct shuffle_dispatch<TyElem, true, false> :  public _native_shuffle {};

    template <typename TyElem>
    struct shuffle_dispatch<TyElem, false, false> : public _intrinsic_compat_shuffle {};

    template <typename TyElem>
    struct shuffle_dispatch<TyElem, false, true> :  public _memory_shuffle {};
  };
} // namespace details

} // namespace cooperative_groups

#endif // __XCN_KERNEL_XTDK_COOPERATIVE_GROUPS_HELPER_H__