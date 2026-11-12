#map = affine_map<(d0, d1) -> (d0 * 256 + d1)>
#map1 = affine_map<(d0, d1) -> (d0 * 32 + d1)>
module {
  func.func @triton_unk_fused_0(%arg0: memref<*xbf16, 1> {tt.divisibility = 16 : i32}, %arg1: memref<*xbf16, 1> {tt.divisibility = 16 : i32}, %arg2: memref<*xf32, 1> {tt.divisibility = 16 : i32}, %arg3: i32 {tt.divisibility = 16 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32, %arg6: i32, %arg7: i32) {
    %cst = arith.constant 5.000000e-01 : f32
    %c0 = arith.constant 0 : index
    %c64_i32 = arith.constant 64 : i32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %c16_i32 = arith.constant 16 : i32
    %c1_i32 = arith.constant 1 : i32
    %c32767_i32 = arith.constant 32767 : i32
    %c-65536_i32 = arith.constant -65536 : i32
    %c2147483647_i32 = arith.constant 2147483647 : i32
    %c2139095040_i32 = arith.constant 2139095040 : i32
    %c64 = arith.constant 64 : index
    %c1 = arith.constant 1 : index
    %c1024 = arith.constant 1024 : index
    %c4194304_i32 = arith.constant 4194304 : i32
    "sdnn.init"() {signal = [array<i32: 3, 5, 11, 15, 12, 17, 19>], signal_num = array<i64: 1, 1, 1, 1, 1, 1, 1>} : () -> ()
    %0 = sdnn.get_sdnn_id : i32
    %1 = sdnn.get_num_sdnn : i32
    %2 = arith.muli %arg5, %arg6 : i32
    %3 = arith.muli %2, %arg7 : i32
    %4 = arith.subi %1, %c1_i32 : i32
    %5 = arith.addi %3, %4 : i32
    %6 = arith.divsi %5, %1 : i32
    %7 = arith.muli %0, %6 : i32
    %8 = arith.addi %7, %6 : i32
    %9 = arith.minsi %8, %3 : i32
    %10 = arith.index_cast %7 : i32 to index
    %11 = arith.index_cast %9 : i32 to index
    %reinterpret_cast = memref.reinterpret_cast %arg1 to offset: [0], sizes: [1, 256], strides: [256, 1] : memref<*xbf16, 1> to memref<1x256xbf16, strided<[256, 1]>, 1>
    %alloc = memref.alloc() {bufferNum = 1 : index, bufferSize = 1024 : index, init_signal = 3 : i64, sram = "uni_sram", trans = false} : memref<1x256xf32, #map>
    sdnn.dma in %reinterpret_cast, %alloc {core_id = 1 : i32, signal = array<i32: 2>, wait = array<i32: 3>} : memref<1x256xbf16, strided<[256, 1]>, 1> memref<1x256xf32, #map> -> 
    sdnn.core_wait(5, 2) {core_name = "ew"}
    scf.for %arg8 = %10 to %11 step %c1 {
      %12 = arith.index_cast %arg8 : index to i32
      %13 = arith.divsi %12, %arg7 : i32
      %14 = arith.divsi %13, %arg6 : i32
      %alloc_1 = memref.alloc() {bufferNum = 1 : index, bufferSize = 1024 : index, init_signal = 5 : i64, sram = "uni_sram"} : memref<1x256xf32, #map>
      sdnn.ew fill %alloc_1 c %cst_0 {sdnn.layout = "CR_RowMajor", signal = array<i32: 4>, wait = array<i32: 5>} : (memref<1x256xf32, #map>, f32) -> ()
      %15 = arith.index_cast %14 : i32 to index
      %16 = arith.muli %15, %c1024 : index
      %reinterpret_cast_2 = memref.reinterpret_cast %arg0 to offset: [%16], sizes: [1, 256], strides: [1024, 1] : memref<*xbf16, 1> to memref<1x256xbf16, strided<[1024, 1], offset: ?>, 1>
      %17 = arith.addi %15, %c1 : index
      %18 = arith.minsi %17, %c64 : index
      %19 = arith.maxsi %18, %15 : index
      %20 = arith.subi %19, %15 : index
      %alloc_3 = memref.alloc() {bufferNum = 1 : index, bufferSize = 1024 : index, init_signal = 11 : i64, sram = "uni_sram", trans = false} : memref<1x256xf32, #map>
      %21 = arith.cmpi slt, %20, %c1 : index
      sdnn.ew fill %alloc_3 c %cst_0 pred %21 {core_id = 1 : i32, signal = array<i32: 6>, wait = array<i32: 11>} : (memref<1x256xf32, #map>, f32, i1) -> ()
      %subview = memref.subview %reinterpret_cast_2[0, 0] [%20, 256] [1, 1] : memref<1x256xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x256xbf16, strided<[1024, 1], offset: ?>, 1>
      %cast = memref.cast %subview : memref<?x256xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x256xbf16, strided<[?, 1], offset: ?>, 1>
      %subview_4 = memref.subview %alloc_3[0, 0] [%20, 256] [1, 1] : memref<1x256xf32, #map> to memref<?x256xf32, strided<[256, 1]>>
      sdnn.dma in %cast, %subview_4 {core_id = 6 : i32, signal = array<i32: 9, 10, 7>, wait = array<i32: 6>} : memref<?x256xbf16, strided<[?, 1], offset: ?>, 1> memref<?x256xf32, strided<[256, 1]>> -> 
      %alloc_5 = memref.alloc() {bufferNum = 1 : index, bufferSize = 1024 : index, init_signal = 15 : i64, sram = "uni_sram"} : memref<1x256xf32, #map>
      %alloc_6 = memref.alloc() {bufferNum = 1 : index, bufferSize = 1024 : index, init_signal = 12 : i64, sram = "uni_sram"} : memref<1x256xf32, #map>
      sdnn.ew mul %alloc_6 src0 %alloc_3 src1 %alloc {sdnn.layout = "CR_RowMajor", wait = array<i32: 7, 12>} : (memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>) -> ()
      sdnn.ew mul %alloc_5 src0 %alloc src1 %alloc_3 {sdnn.layout = "CR_RowMajor", wait = array<i32: 9, 15>} : (memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>) -> ()
      sdnn.ew linear %alloc_3 src0 %alloc_6 src1 %alloc_5 a %cst b %cst {sdnn.layout = "CR_RowMajor", signal = array<i32: 8, 12, 13>, wait = array<i32: 10>} : (memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>, f32, f32) -> ()
      sdnn.core_specialize ins(%alloc_3, %alloc_1, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32, %14, %c64_i32 : memref<1x256xf32, #map>, memref<1x256xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%alloc_5 : memref<1x256xf32, #map>) attributes {little_core, sdnn.layout = "CR_ColMajor", signal = array<i32: 5, 11, 14>, wait = array<i32: 4, 8, 13>} {
      ^bb0(%arg9: memref<1x256xf32, #map>, %arg10: memref<1x256xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: memref<1x256xf32, #map>):
        %c0_14 = arith.constant 0 : index
        %c1_15 = arith.constant 1 : index
        %c256 = arith.constant 256 : index
        scf.for %arg21 = %c0_14 to %c256 step %c1_15 {
          %22 = memref.load %arg9[%c0_14, %arg21] : memref<1x256xf32, #map>
          %23 = memref.load %arg10[%c0_14, %arg21] : memref<1x256xf32, #map>
          %24 = arith.bitcast %22 : f32 to i32
          %25 = arith.andi %24, %arg11 : i32
          %26 = arith.ori %24, %arg12 : i32
          %27 = arith.cmpi ugt, %25, %arg13 : i32
          %28 = arith.select %27, %26, %24 : i32
          %29 = arith.addi %24, %arg14 : i32
          %30 = arith.shrui %24, %arg15 : i32
          %31 = arith.andi %30, %arg16 : i32
          %32 = arith.addi %29, %31 : i32
          %33 = arith.andi %32, %arg17 : i32
          %34 = arith.cmpi uge, %25, %arg13 : i32
          %35 = arith.select %34, %28, %33 : i32
          %36 = arith.bitcast %35 : i32 to f32
          %37 = arith.cmpi slt, %arg18, %arg19 : i32
          %38 = arith.select %37, %36, %23 : f32
          memref.store %38, %arg20[%c0_14, %arg21] : memref<1x256xf32, #map>
        }
        sdnn.core_specialize_return
      }
      %reinterpret_cast_7 = memref.reinterpret_cast %alloc_5 to offset: [0], sizes: [256, 1], strides: [1, 256] : memref<1x256xf32, #map> to memref<256x1xf32, strided<[1, 256]>>
      %alloc_8 = memref.alloc() {bufferNum = 1 : index, bufferSize = 32768 : index, init_signal = 17 : i64, sram = "uni_sram"} : memref<256x1xf32, #map1, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 256>>
      sdnn.ds %reinterpret_cast_7, %alloc_8 mask_dims[%c0, %c0] {signal = array<i32: 15, 16>, signal_cached = array<i32: 16>, wait = array<i32: 14, 17>, wait_cached = array<i32: 17>} : memref<256x1xf32, strided<[1, 256]>> memref<256x1xf32, #map1, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 256>> -> 
      %alloc_9 = memref.alloc() {bufferNum = 1 : index, bufferSize = 128 : index, init_signal = 19 : i64, sram = "uni_sram"} : memref<1xf32, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>>
      sdnn.ew reduce_sum %alloc_9 src0 %alloc_8 {sdnn.layout = "CR_RowMajor", signal = array<i32: 17, 18>, wait = array<i32: 16, 19>} : (memref<1xf32, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>>, memref<256x1xf32, #map1, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 256>>) -> ()
      %expand_shape = memref.expand_shape %alloc_9 [[0, 1]] output_shape [1, 1] : memref<1xf32, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>> into memref<1x1xf32, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>>
      %reinterpret_cast_10 = memref.reinterpret_cast %arg2 to offset: [%15], sizes: [1, 1], strides: [1, 1] : memref<*xf32, 1> to memref<1x1xf32, strided<[1, 1], offset: ?>, 1>
      %reinterpret_cast_11 = memref.reinterpret_cast %expand_shape to offset: [0], sizes: [%20, 1], strides: [1, 1] : memref<1x1xf32, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>> to memref<?x1xf32, strided<[1, 1]>, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>>
      %cast_12 = memref.cast %reinterpret_cast_11 : memref<?x1xf32, strided<[1, 1]>, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>> to memref<?x1xf32, strided<[1, 1], offset: ?>, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>>
      %subview_13 = memref.subview %reinterpret_cast_10[0, 0] [%20, 1] [1, 1] : memref<1x1xf32, strided<[1, 1], offset: ?>, 1> to memref<?x1xf32, strided<[1, 1], offset: ?>, 1>
      sdnn.dma out %cast_12, %subview_13 {signal = array<i32: 19>, wait = array<i32: 18>} : memref<?x1xf32, strided<[1, 1], offset: ?>, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>> memref<?x1xf32, strided<[1, 1], offset: ?>, 1> -> 
    } {loop_grid}
    sdnn.core_arrive(5, 3) {core_name = "ew"}
    "sdnn.end"() : () -> ()
    return
  }
}

{-#
  external_resources: {
    mlir_reproducer: {
      pipeline: "any()",
      disable_threading: false,
      verify_each: false
    }
  }
#-}
