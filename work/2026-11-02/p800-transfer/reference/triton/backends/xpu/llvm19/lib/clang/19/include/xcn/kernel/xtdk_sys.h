/*!\file xtdk_sys.h 
* \brief XCN C/CPP中的系统操作接口。
*/

#ifndef __XCN_KERNEL_XTDK_SYS_H__
#define __XCN_KERNEL_XTDK_SYS_H__

extern "C" __device__ __attribute__((const)) size_t __ockl_get_local_id(uint);
extern "C" __device__ __attribute__((const)) size_t __ockl_get_group_id(uint);
extern "C" __device__ __attribute__((const)) size_t __ockl_get_local_size(uint);
extern "C" __device__ __attribute__((const)) size_t __ockl_get_num_groups(uint);
struct __HOUYI_BlockIdx {
  __device__
  uint32_t operator()(uint32_t x) const noexcept { return __ockl_get_group_id(x); }
};
struct __HOUYI_BlockDim {
  __device__
  uint32_t operator()(uint32_t x) const noexcept {
    return __ockl_get_local_size(x);
  }
};
struct __HOUYI_GridDim {
  __device__
  uint32_t operator()(uint32_t x) const noexcept {
    return __ockl_get_num_groups(x);
  }
};
struct __HOUYI_ThreadIdx {
  __device__
  uint32_t operator()(uint32_t x) const noexcept {
    return __ockl_get_local_id(x);
  }
};

template <typename F>
struct __HOUYI_Coordinates {
  using R = decltype(F{}(0));

  struct __X { __device__ operator R() const noexcept { return F{}(0); } };
  struct __Y { __device__ operator R() const noexcept { return F{}(1); } };
  struct __Z { __device__ operator R() const noexcept { return F{}(2); } };

  __X x{};
  __Y y{};
  __Z z{};
#ifdef __cplusplus
  // __device__ operator dim3() const { return dim3(x, y, z); }
#endif

};

extern "C" __device__ __attribute__((const)) size_t __ockl_get_global_size(uint32_t);
inline
__device__
uint32_t operator*(__HOUYI_Coordinates<__HOUYI_GridDim>::__X,
                        __HOUYI_Coordinates<__HOUYI_BlockDim>::__X) noexcept {
  return __ockl_get_global_size(0);
}
inline
__device__
uint32_t operator*(__HOUYI_Coordinates<__HOUYI_BlockDim>::__X,
                        __HOUYI_Coordinates<__HOUYI_GridDim>::__X) noexcept {
  return __ockl_get_global_size(0);
}
inline
__device__
uint32_t operator*(__HOUYI_Coordinates<__HOUYI_GridDim>::__Y,
                        __HOUYI_Coordinates<__HOUYI_BlockDim>::__Y) noexcept {
  return __ockl_get_global_size(1);
}
inline
__device__
uint32_t operator*(__HOUYI_Coordinates<__HOUYI_BlockDim>::__Y,
                        __HOUYI_Coordinates<__HOUYI_GridDim>::__Y) noexcept {
  return __ockl_get_global_size(1);
}
inline
__device__
uint32_t operator*(__HOUYI_Coordinates<__HOUYI_GridDim>::__Z,
                        __HOUYI_Coordinates<__HOUYI_BlockDim>::__Z) noexcept {
  return __ockl_get_global_size(2);
}
inline
__device__
uint32_t operator*(__HOUYI_Coordinates<__HOUYI_BlockDim>::__Z,
                        __HOUYI_Coordinates<__HOUYI_GridDim>::__Z) noexcept {
  return __ockl_get_global_size(2);
}

static constexpr __HOUYI_Coordinates<__HOUYI_BlockDim> blockDim{};
static constexpr __HOUYI_Coordinates<__HOUYI_BlockIdx> blockIdx{};
static constexpr __HOUYI_Coordinates<__HOUYI_GridDim> gridDim{};
static constexpr __HOUYI_Coordinates<__HOUYI_ThreadIdx> threadIdx{};

#ifndef __HOUYICC_RTC__

template <typename F> struct __CLUSTER_Coordinates {
  using R = decltype(F{}(0));

public:
  struct Accessor {
    struct X {
      __device__ operator R() const noexcept { return F{}(0); }
    };
    struct Y {
      __device__ operator R() const noexcept { return F{}(1); }
    };
    struct Z {
      __device__ operator R() const noexcept { return F{}(2); }
    };

    X x{};
    Y y{};
    Z z{};

    __device__ operator dim3() const noexcept {
      return dim3{static_cast<uint32_t>(x), static_cast<uint32_t>(y), static_cast<uint32_t>(z)};
    }
  };
  __device__ Accessor operator()() const noexcept { return Accessor{}; }
};

struct __CLUSTER_ClusterIdx {
  __device__ uint32_t operator()(uint32_t x) const noexcept {
    switch (x) {
    case 0:
      return __builtin_xcn_cluster_id_x();
    case 1:
      return __builtin_xcn_cluster_id_y();
    case 2:
      return __builtin_xcn_cluster_id_z();
    default:
      return 0;
    }
  }
};

struct __CLUSTER_ClusterGridDim {
  __device__ uint32_t operator()(uint32_t x) const noexcept {
    switch (x) {
    case 0:
      return __builtin_xcn_cluster_grid_dim_x();
    case 1:
      return __builtin_xcn_cluster_grid_dim_y();
    case 2:
      return __builtin_xcn_cluster_grid_dim_z();
    default:
      return 0;
    }
  }
};

struct __CLUSTER_BlockIdxOffset {
  __device__ uint32_t operator()(uint32_t x) const noexcept {
    switch (x) {
    case 0:
      return __builtin_xcn_block_Idx_offset_x();
    case 1:
      return __builtin_xcn_block_Idx_offset_y();
    case 2:
      return __builtin_xcn_block_Idx_offset_z();
    default:
      return 0;
    }
  }
};

struct __CLUSTER_ClusterDim {
  __device__ uint32_t operator()(uint32_t x) const noexcept {
    switch (x) {
    case 0:
      return __builtin_xcn_cluster_dim_x();
    case 1:
      return __builtin_xcn_cluster_dim_y();
    case 2:
      return __builtin_xcn_cluster_dim_z();
    default:
      return 0;
    }
  }
};

static constexpr __CLUSTER_Coordinates<__CLUSTER_ClusterIdx> __clusterIdx{};
static constexpr __CLUSTER_Coordinates<__CLUSTER_ClusterGridDim>
    __clusterGridDimInClusters{};
static constexpr __CLUSTER_Coordinates<__CLUSTER_BlockIdxOffset>
    __clusterRelativeBlockIdx{};
static constexpr __CLUSTER_Coordinates<__CLUSTER_ClusterDim> __clusterDim{};

struct __CLUSTER_BlockIdInCluster {
  __device__ uint32_t operator()() const noexcept {
    return __builtin_xcn_block_id_in_cluster();
  }
};

static constexpr auto __clusterRelativeBlockRank = __CLUSTER_BlockIdInCluster{};

struct __CLUSTER_SizeInBlocks {
  __device__ uint32_t operator()() const noexcept {
    return __builtin_xcn_block_num_in_cluster();
  }
};

static constexpr auto __clusterSizeInBlocks = __CLUSTER_SizeInBlocks{};

#endif

extern "C" __device__ __attribute__((const)) size_t __ockl_get_local_id(uint);
#define houyiThreadIdx_x (__ockl_get_local_id(0))
#define houyiThreadIdx_y (__ockl_get_local_id(1))
#define houyiThreadIdx_z (__ockl_get_local_id(2))

extern "C" __device__ __attribute__((const)) size_t __ockl_get_group_id(uint);
#define houyiBlockIdx_x (__ockl_get_group_id(0))
#define houyiBlockIdx_y (__ockl_get_group_id(1))
#define houyiBlockIdx_z (__ockl_get_group_id(2))

extern "C" __device__ __attribute__((const)) size_t __ockl_get_local_size(uint);
#define houyiBlockDim_x (__ockl_get_local_size(0))
#define houyiBlockDim_y (__ockl_get_local_size(1))
#define houyiBlockDim_z (__ockl_get_local_size(2))

extern "C" __device__ __attribute__((const)) size_t __ockl_get_num_groups(uint);
#define houyiGridDim_x (__ockl_get_num_groups(0))
#define houyiGridDim_y (__ockl_get_num_groups(1))
#define houyiGridDim_z (__ockl_get_num_groups(2))

#endif  //  __XCN_KERNEL_XTDK_SYS_H__
