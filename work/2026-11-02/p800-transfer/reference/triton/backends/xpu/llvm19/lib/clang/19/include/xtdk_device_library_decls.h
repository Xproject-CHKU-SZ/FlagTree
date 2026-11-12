#ifndef __XCN_KERNEL_XTDK_DETAIL_DEVICE_LIBRARY_DECLS_H__
#define __XCN_KERNEL_XTDK_DETAIL_DEVICE_LIBRARY_DECLS_H__

typedef enum __memory_scope {
  __memory_scope_work_item = __OPENCL_MEMORY_SCOPE_WORK_ITEM,
  __memory_scope_work_group = __OPENCL_MEMORY_SCOPE_WORK_GROUP,
  __memory_scope_device = __OPENCL_MEMORY_SCOPE_DEVICE,
  __memory_scope_all_svm_devices = __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES,
  __memory_scope_sub_group = __OPENCL_MEMORY_SCOPE_SUB_GROUP
} __memory_scope;

// enum values aligned with what clang uses in EmitAtomicExpr()
typedef enum __memory_order {
  __memory_order_relaxed = __ATOMIC_RELAXED,
  __memory_order_acquire = __ATOMIC_ACQUIRE,
  __memory_order_release = __ATOMIC_RELEASE,
  __memory_order_acq_rel = __ATOMIC_ACQ_REL,
  __memory_order_seq_cst = __ATOMIC_SEQ_CST
} __memory_order;

// Linked from houyi.xcn.bc
extern "C" __device__ __attribute__((const)) bool __ockl_wfany_i32(int);
extern "C" __device__ __attribute__((const)) bool __ockl_wfall_i32(int);
extern "C" __device__ uint __ockl_activelane_u32(void);

extern "C" __device__ __attribute__((const)) uint __ockl_mul24_u32(uint, uint);
extern "C" __device__ __attribute__((const)) int __ockl_mul24_i32(int, int);
extern "C" __device__ __attribute__((const)) uint __ockl_mul_hi_u32(uint, uint);
extern "C" __device__ __attribute__((const)) int __ockl_mul_hi_i32(int, int);
extern "C" __device__ __attribute__((const)) uint __ockl_sadd_u32(uint, uint, uint);

extern "C" __device__ __attribute__((const)) uint __ockl_clz_u32(uint);
extern "C" __device__ __attribute__((const)) uint64_t __ockl_clz_u64(uint64_t);

extern "C" __device__ __attribute__((const)) float __ocml_floor_f32(float);
extern "C" __device__ __attribute__((const)) float __ocml_rint_f32(float);
extern "C" __device__ __attribute__((const)) float __ocml_ceil_f32(float);
extern "C" __device__ __attribute__((const)) float __ocml_trunc_f32(float);

extern "C" __device__ __attribute__((const)) float __ocml_cvtrtn_f32_f64(double);
extern "C" __device__ __attribute__((const)) float __ocml_cvtrtp_f32_f64(double);
extern "C" __device__ __attribute__((const)) float __ocml_cvtrtz_f32_f64(double);

extern "C" __device__ __attribute__((const)) _Float16 __ocml_cvtrtn_f16_f32(float);
extern "C" __device__ __attribute__((const)) _Float16 __ocml_cvtrtp_f16_f32(float);
extern "C" __device__ __attribute__((const)) _Float16 __ocml_cvtrtz_f16_f32(float);

extern "C" __device__ __attribute__((const)) float __ocml_cvtrtn_f32_s32(int);
extern "C" __device__ __attribute__((const)) float __ocml_cvtrtp_f32_s32(int);
extern "C" __device__ __attribute__((const)) float __ocml_cvtrtz_f32_s32(int);
extern "C" __device__ __attribute__((const)) float __ocml_cvtrtn_f32_u32(uint32_t);
extern "C" __device__ __attribute__((const)) float __ocml_cvtrtp_f32_u32(uint32_t);
extern "C" __device__ __attribute__((const)) float __ocml_cvtrtz_f32_u32(uint32_t);
extern "C" __device__ __attribute__((const)) float __ocml_cvtrtn_f32_s64(int64_t);
extern "C" __device__ __attribute__((const)) float __ocml_cvtrtp_f32_s64(int64_t);
extern "C" __device__ __attribute__((const)) float __ocml_cvtrtz_f32_s64(int64_t);
extern "C" __device__ __attribute__((const)) float __ocml_cvtrtn_f32_u64(uint64_t);
extern "C" __device__ __attribute__((const)) float __ocml_cvtrtp_f32_u64(uint64_t);
extern "C" __device__ __attribute__((const)) float __ocml_cvtrtz_f32_u64(uint64_t);
extern "C" __device__ __attribute__((const)) double __ocml_cvtrtn_f64_s64(int64_t);
extern "C" __device__ __attribute__((const)) double __ocml_cvtrtp_f64_s64(int64_t);
extern "C" __device__ __attribute__((const)) double __ocml_cvtrtz_f64_s64(int64_t);
extern "C" __device__ __attribute__((const)) double __ocml_cvtrtn_f64_u64(uint64_t);
extern "C" __device__ __attribute__((const)) double __ocml_cvtrtp_f64_u64(uint64_t);
extern "C" __device__ __attribute__((const)) double __ocml_cvtrtz_f64_u64(uint64_t);

extern "C" __device__ __attribute__((const)) uint32_t __ockl_lane_u32();
extern "C" __device__ __attribute__((const)) int __ockl_grid_is_valid(void);
extern "C" __device__ __attribute__((convergent)) void __ockl_grid_sync(void);

extern "C" __device__ __attribute__((convergent)) int __ockl_wgred_add_i32(int a);
extern "C" __device__ __attribute__((convergent)) int __ockl_wgred_and_i32(int a);
extern "C" __device__ __attribute__((convergent)) int __ockl_wgred_or_i32(int a);

// Using houyi.xcn.bc - sync threads
#define __CLK_LOCAL_MEM_FENCE 0x01
typedef unsigned __cl_mem_fence_flags;

#endif // __XCN_KERNEL_XTDK_DETAIL_DEVICE_LIBRARY_DECLS_H__