#ifndef __XCN_KERNEL_XTDK_ADDRSPACE_H__
#define __XCN_KERNEL_XTDK_ADDRSPACE_H__

__device__ unsigned int __isGlobal(const void *ptr) {
    return __builtin_xcn_is_global((__attribute__((address_space(0))) const void*)ptr);
}

__device__ unsigned int __isShared(const void *ptr) {
    return __builtin_xcn_is_shared((__attribute__((address_space(0))) const void*)ptr);
}

__device__ unsigned int __isLocal(const void *ptr) {
    return __builtin_xcn_is_private((__attribute__((address_space(0))) const void*)ptr);
}

// there is no constant memory on xcn; so we use global memory to replace constant
__device__ unsigned int __isConstant(const void *ptr) {
    return __builtin_xcn_is_global((__attribute__((address_space(0))) const void*)ptr);
}

__device__ unsigned int __isGridConstant(const void *ptr) {
    return __builtin_xcn_is_global((__attribute__((address_space(0))) const void*)ptr);
}

__device__ size_t __cvta_generic_to_global(const void *ptr) {
  return (size_t)(void __attribute__((address_space(1))) *)ptr;
}

__device__ size_t __cvta_generic_to_shared(const void *ptr) {
  return (size_t)(void __attribute__((address_space(3))) *)ptr;
}

__device__ size_t __cvta_generic_to_constant(const void *ptr) {
  return (size_t)(void __attribute__((address_space(1))) *)ptr;
}

__device__ size_t __cvta_generic_to_local(const void *ptr) {
  return (size_t)(void __attribute__((address_space(5))) *)ptr;
}

__device__ void *__cvta_global_to_generic(size_t rawbits) {
  return (void *)(void __attribute__((address_space(0))) *)rawbits;
}

__device__ void *__cvta_shared_to_generic(size_t rawbits) {
  // rawbits is a bare LDS offset (address_space(3) ptrtoint), NOT a flat
  // address. Casting it directly to address_space(0) skips the
  // shared_base_lo aperture that the backend adds when lowering an
  // addrspacecast(3->0); that produces a flat pointer whose value is just
  // the raw LDS offset, which the runtime correctly rejects as an invalid
  // flat address (e.g. "flat instr addr is not in memory"). Round-trip
  // through address_space(3) so XCNLowerIntrinsics/SIXCNISelLowering can
  // compose shared_base_lo + LDS_offset before this reaches a flat load/store.
  return (void *)(void __attribute__((address_space(0))) *)
      (void __attribute__((address_space(3))) *)rawbits;
}

__device__ void *__cvta_constant_to_generic(size_t rawbits) {
  return (void *)(void __attribute__((address_space(0))) *)rawbits;
}

__device__ void *__cvta_local_to_generic(size_t rawbits) {
  return (void *)(void __attribute__((address_space(0))) *)rawbits;
}

#endif  // __XCN_KERNEL_XTDK_ADDRSPACE_H__