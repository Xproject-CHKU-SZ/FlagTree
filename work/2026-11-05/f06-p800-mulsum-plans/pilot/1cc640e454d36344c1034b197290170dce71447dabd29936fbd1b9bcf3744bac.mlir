#map = affine_map<(d0, d1) -> (d0 * 2048 + d1)>
#map1 = affine_map<(d0, d1) -> (d0 * 32 + d1)>
module {
  func.func @triton_unk_fused_0(%arg0: memref<*xf32, 1> {tt.divisibility = 16 : i32}, %arg1: memref<*xf32, 1> {tt.divisibility = 16 : i32}, %arg2: i32 {tt.divisibility = 16 : i32}, %arg3: i32 {tt.divisibility = 16 : i32}, %arg4: i32, %arg5: i32, %arg6: i32) {
    %c1_i32 = arith.constant 1 : i32
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f32
    %c1 = arith.constant 1 : index
    %c2048 = arith.constant 2048 : index
    %c2048_i32 = arith.constant 2048 : i32
    %cst_0 = arith.constant 1.000000e+00 : f32
    "sdnn.init"() {signal = [array<i32: 3, 5, 8, 10, 12, 14>], signal_num = array<i64: 1, 1, 1, 1, 1, 1>} : () -> ()
    %0 = sdnn.get_sdnn_id : i32
    %1 = sdnn.get_num_sdnn : i32
    %2 = arith.muli %arg4, %arg5 : i32
    %3 = arith.muli %2, %arg6 : i32
    %4 = arith.subi %1, %c1_i32 : i32
    %5 = arith.addi %3, %4 : i32
    %6 = arith.divsi %5, %1 : i32
    %7 = arith.muli %0, %6 : i32
    %8 = arith.addi %7, %6 : i32
    %9 = arith.minsi %8, %3 : i32
    %10 = arith.index_cast %7 : i32 to index
    %11 = arith.index_cast %9 : i32 to index
    scf.for %arg7 = %10 to %11 step %c1 {
      %12 = arith.index_cast %arg7 : index to i32
      %13 = arith.divsi %12, %arg6 : i32
      %14 = arith.divsi %13, %arg5 : i32
      %alloc = memref.alloc() {bufferNum = 1 : index, bufferSize = 8192 : index, init_signal = 3 : i64, sram = "uni_sram"} : memref<1x2048xf32, #map>
      sdnn.ew fill %alloc c %cst {sdnn.layout = "CR_RowMajor", signal = array<i32: 2>, wait = array<i32: 3>} : (memref<1x2048xf32, #map>, f32) -> ()
      %15 = arith.index_cast %14 : i32 to index
      %alloc_1 = memref.alloc() {bufferNum = 1 : index, bufferSize = 8192 : index, init_signal = 5 : i64, sram = "uni_sram"} : memref<2048xi32>
      sdnn.ew arange %alloc_1 src0 %alloc_1 a %cst b %cst_0 {sdnn.layout = "CR_RowMajor", signal = array<i32: 4>, wait = array<i32: 5>} : (memref<2048xi32>, memref<2048xi32>, f32, f32) -> ()
      %expand_shape = memref.expand_shape %alloc_1 [[0, 1]] output_shape [1, 2048] : memref<2048xi32> into memref<1x2048xi32>
      %16 = arith.muli %15, %c2048 : index
      %reinterpret_cast = memref.reinterpret_cast %arg0 to offset: [%16], sizes: [1, 2048], strides: [2048, 1] : memref<*xf32, 1> to memref<1x2048xf32, strided<[2048, 1], offset: ?>, 1>
      %17 = arith.addi %15, %c1 : index
      %18 = arith.minsi %17, %c2048 : index
      %19 = arith.maxsi %18, %15 : index
      %20 = arith.subi %19, %15 : index
      %21 = arith.minsi %20, %c1 : index
      %alloc_2 = memref.alloc() {bufferNum = 1 : index, bufferSize = 8192 : index, init_signal = 8 : i64, sram = "uni_sram", trans = false} : memref<1x2048xf32, #map>
      %22 = arith.cmpi slt, %21, %c1 : index
      sdnn.ew fill %alloc_2 c %cst pred %22 {core_id = 1 : i32, signal = array<i32: 6>, wait = array<i32: 8>} : (memref<1x2048xf32, #map>, f32, i1) -> ()
      %subview = memref.subview %reinterpret_cast[0, 0] [%21, 2048] [1, 1] : memref<1x2048xf32, strided<[2048, 1], offset: ?>, 1> to memref<?x2048xf32, strided<[2048, 1], offset: ?>, 1>
      %cast = memref.cast %subview : memref<?x2048xf32, strided<[2048, 1], offset: ?>, 1> to memref<?x2048xf32, strided<[?, 1], offset: ?>, 1>
      %subview_3 = memref.subview %alloc_2[0, 0] [%21, 2048] [1, 1] : memref<1x2048xf32, #map> to memref<?x2048xf32, strided<[2048, 1]>>
      sdnn.dma in %cast, %subview_3 {core_id = 6 : i32, signal = array<i32: 7>, wait = array<i32: 6>} : memref<?x2048xf32, strided<[?, 1], offset: ?>, 1> memref<?x2048xf32, strided<[2048, 1]>> -> 
      %alloc_4 = memref.alloc() {bufferNum = 1 : index, bufferSize = 8192 : index, init_signal = 10 : i64, sram = "uni_sram"} : memref<1x2048xf32, #map>
      sdnn.core_specialize ins(%expand_shape, %alloc_2, %alloc, %c2048_i32, %14 : memref<1x2048xi32>, memref<1x2048xf32, #map>, memref<1x2048xf32, #map>, i32, i32) outs(%alloc_4 : memref<1x2048xf32, #map>) attributes {little_core, sdnn.layout = "CR_ColMajor", signal = array<i32: 3, 5, 8, 9>, wait = array<i32: 2, 4, 7, 10>} {
      ^bb0(%arg8: memref<1x2048xi32>, %arg9: memref<1x2048xf32, #map>, %arg10: memref<1x2048xf32, #map>, %arg11: i32, %arg12: i32, %arg13: memref<1x2048xf32, #map>):
        %c0_13 = arith.constant 0 : index
        %c1_14 = arith.constant 1 : index
        %c2048_15 = arith.constant 2048 : index
        scf.for %arg14 = %c0_13 to %c2048_15 step %c1_14 {
          %23 = memref.load %arg8[%c0_13, %arg14] : memref<1x2048xi32>
          %24 = memref.load %arg9[%c0_13, %arg14] : memref<1x2048xf32, #map>
          %25 = memref.load %arg10[%c0_13, %arg14] : memref<1x2048xf32, #map>
          %26 = arith.cmpi slt, %23, %arg11 : i32
          %27 = arith.cmpi slt, %arg12, %arg11 : i32
          %28 = arith.andi %26, %27 : i1
          %29 = arith.select %28, %24, %25 : f32
          memref.store %29, %arg13[%c0_13, %arg14] : memref<1x2048xf32, #map>
        }
        sdnn.core_specialize_return
      }
      %reinterpret_cast_5 = memref.reinterpret_cast %alloc_4 to offset: [0], sizes: [2048, 1], strides: [1, 2048] : memref<1x2048xf32, #map> to memref<2048x1xf32, strided<[1, 2048]>>
      %alloc_6 = memref.alloc() {bufferNum = 1 : index, bufferSize = 262144 : index, init_signal = 12 : i64, sram = "uni_sram"} : memref<2048x1xf32, #map1, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 2048>>
      sdnn.ds %reinterpret_cast_5, %alloc_6 mask_dims[%c0, %c0] {signal = array<i32: 10, 11>, signal_cached = array<i32: 11>, wait = array<i32: 9, 12>, wait_cached = array<i32: 12>} : memref<2048x1xf32, strided<[1, 2048]>> memref<2048x1xf32, #map1, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 2048>> -> 
      %alloc_7 = memref.alloc() {bufferNum = 1 : index, bufferSize = 128 : index, init_signal = 14 : i64, sram = "uni_sram"} : memref<1xf32, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>>
      sdnn.ew reduce_sum %alloc_7 src0 %alloc_6 {sdnn.layout = "CR_RowMajor", signal = array<i32: 12, 13>, wait = array<i32: 11, 14>} : (memref<1xf32, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>>, memref<2048x1xf32, #map1, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 2048>>) -> ()
      %expand_shape_8 = memref.expand_shape %alloc_7 [[0, 1]] output_shape [1, 1] : memref<1xf32, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>> into memref<1x1xf32, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>>
      %reinterpret_cast_9 = memref.reinterpret_cast %arg1 to offset: [%15], sizes: [1, 1], strides: [1, 1] : memref<*xf32, 1> to memref<1x1xf32, strided<[1, 1], offset: ?>, 1>
      %reinterpret_cast_10 = memref.reinterpret_cast %expand_shape_8 to offset: [0], sizes: [%20, 1], strides: [1, 1] : memref<1x1xf32, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>> to memref<?x1xf32, strided<[1, 1]>, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>>
      %cast_11 = memref.cast %reinterpret_cast_10 : memref<?x1xf32, strided<[1, 1]>, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>> to memref<?x1xf32, strided<[1, 1], offset: ?>, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>>
      %subview_12 = memref.subview %reinterpret_cast_9[0, 0] [%20, 1] [1, 1] : memref<1x1xf32, strided<[1, 1], offset: ?>, 1> to memref<?x1xf32, strided<[1, 1], offset: ?>, 1>
      sdnn.dma out %cast_11, %subview_12 {signal = array<i32: 14>, wait = array<i32: 13>} : memref<?x1xf32, strided<[1, 1], offset: ?>, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>> memref<?x1xf32, strided<[1, 1], offset: ?>, 1> -> 
    } {loop_grid}
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
