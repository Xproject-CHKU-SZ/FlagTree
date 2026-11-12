#map = affine_map<(d0, d1) -> (d0 * 32 + d1)>
#map1 = affine_map<(d0, d1) -> (d0 * 64 + d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1)>
module {
  llvm.func @llvm.xpu.sync_core(i32) attributes {passthrough = ["convergent", "noduplicate"]}
  llvm.func @llvm.xpu.xfence()
  llvm.func @llvm.xpu.mfence.v2(i32)
  func.func @triton_unk_fused_0(%arg0: memref<*xbf16, 1> {tt.divisibility = 16 : i32}, %arg1: memref<*xbf16, 1> {tt.divisibility = 16 : i32}, %arg2: memref<*xbf16, 1> {tt.divisibility = 16 : i32}, %arg3: memref<*xbf16, 1> {tt.divisibility = 16 : i32}, %arg4: memref<*xf32, 1>, %arg5: i32, %arg6: i32, %arg7: i32) {
    %c7_i32 = arith.constant 7 : i32
    %c255_i32 = arith.constant 255 : i32
    %c64_i32 = arith.constant 64 : i32
    %c32_i32 = arith.constant 32 : i32
    %c0_i32 = arith.constant 0 : i32
    %c8_i32 = arith.constant 8 : i32
    %cst = arith.constant -3.40282347E+38 : f32
    %cst_0 = arith.constant 3.40282347E+38 : f32
    %c16_i32 = arith.constant 16 : i32
    %c1_i32 = arith.constant 1 : i32
    %c32767_i32 = arith.constant 32767 : i32
    %c-65536_i32 = arith.constant -65536 : i32
    %c2147483647_i32 = arith.constant 2147483647 : i32
    %c2139095040_i32 = arith.constant 2139095040 : i32
    %c8192 = arith.constant 8192 : index
    %c2048 = arith.constant 2048 : index
    %c256 = arith.constant 256 : index
    %c64 = arith.constant 64 : index
    %c32 = arith.constant 32 : index
    %c4194304_i32 = arith.constant 4194304 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst_1 = arith.constant 1.000000e+00 : f32
    %cst_2 = arith.constant -1.000000e+00 : f32
    %reinterpret_cast = memref.reinterpret_cast %arg4 to offset: [0], sizes: [1024], strides: [1] : memref<*xf32, 1> to memref<1024xf32, 1>
    "sdnn.init"(%reinterpret_cast) {signal = [array<i32: 11, 5, 3, 9, 7, 16, 22, 14, 24, 25>], signal_num = array<i64: 5, 5, 5, 5, 5, 5, 5, 5, 5, 5>} : (memref<1024xf32, 1>) -> ()
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
    %12 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    %13 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    %14 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    %15 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    %16 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    %17 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    %18 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    %19 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    %20 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    %21 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    scf.for %arg8 = %10 to %11 step %c1 {
      %22 = arith.index_cast %arg8 : index to i32
      %23 = arith.divsi %22, %arg7 : i32
      %24 = arith.divsi %23, %arg6 : i32
      %alloc = memref.alloc() {bufferNum = 5 : index, bufferSize = 4096 : index, init_signal = 11 : i64, processed, sram = "uni_sram"} : memref<32x32xf32, #map>
      %25 = sdnn.get_fifo_buffer %alloc, %21, {bufferNum = 5 : i32, bufferSize = 4096 : i32} : memref<32x32xf32, #map> memref<1xi32, 6> to memref<32x32xf32, #map>
      %26 = arith.divsi %24, %c64_i32 : i32
      %27 = arith.muli %26, %c8_i32 : i32
      %28 = arith.subi %c1_i32, %27 : i32
      %29 = arith.minsi %28, %c8_i32 : i32
      %30 = arith.remsi %24, %29 : i32
      %31 = arith.addi %27, %30 : i32
      %32 = arith.remsi %24, %c64_i32 : i32
      %33 = arith.divsi %32, %29 : i32
      %34 = arith.cmpi sge, %31, %c0_i32 : i32
      llvm.intr.assume %34 : i1
      %35 = arith.cmpi sge, %33, %c0_i32 : i32
      llvm.intr.assume %35 : i1
      %36 = arith.muli %31, %c32_i32 : i32
      %37 = arith.index_cast %31 : i32 to index
      %38 = arith.muli %33, %c32_i32 : i32
      %39 = arith.index_cast %33 : i32 to index
      %40 = arith.muli %39, %c32 : index
      %41 = arith.muli %37, %c2048 : index
      %42 = arith.cmpi sge, %41, %c2048 : index
      %43 = arith.divsi %41, %c2048 : index
      %44 = arith.muli %43, %c2048 : index
      %45 = arith.subi %41, %44 : index
      %46 = arith.select %42, %45, %41 : index
      %47 = arith.divsi %46, %c64 : index
      %48 = arith.addi %47, %c32 : index
      %49 = arith.minsi %48, %c32 : index
      %50 = arith.subi %49, %47 : index
      %reinterpret_cast_3 = memref.reinterpret_cast %arg0 to offset: [%41], sizes: [%50, 64], strides: [64, 1] : memref<*xbf16, 1> to memref<?x64xbf16, strided<[64, 1], offset: ?>, 1>
      %cast = memref.cast %reinterpret_cast_3 : memref<?x64xbf16, strided<[64, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
      %alloc_4 = memref.alloc() {bufferNum = 5 : index, bufferSize = 8192 : index, init_signal = 5 : i64, processed, sram = "l1d"} : memref<32x64xf32, #map1, 3>
      %51 = sdnn.get_fifo_buffer %alloc_4, %20, {bufferNum = 5 : i32, bufferSize = 8192 : i32} : memref<32x64xf32, #map1, 3> memref<1xi32, 6> to memref<32x64xf32, #map1, 3>
      %alloc_5 = memref.alloc() {bufferNum = 5 : index, bufferSize = 8192 : index, init_signal = 3 : i64, processed, sram = "uni_sram", trans = false} : memref<32x64xf32, #map1>
      %52 = sdnn.get_fifo_buffer %alloc_5, %19, {bufferNum = 5 : i32, bufferSize = 8192 : i32} : memref<32x64xf32, #map1> memref<1xi32, 6> to memref<32x64xf32, #map1>
      %dim = memref.dim %reinterpret_cast_3, %c0 : memref<?x64xbf16, strided<[64, 1], offset: ?>, 1>
      %subview = memref.subview %52[0, 0] [%dim, 64] [1, 1] : memref<32x64xf32, #map1> to memref<?x64xf32, strided<[64, 1]>>
      %cast_6 = memref.cast %subview : memref<?x64xf32, strided<[64, 1]>> to memref<?x?xf32, strided<[64, 1]>>
      sdnn.dma in %cast, %cast_6 {core_id = 1 : i32, signal = array<i32: 2>, wait = array<i32: 3>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[64, 1]>> -> 
      sdnn.ds %52, %51 mask_dims[%c32, %c64] {sdnn.layout = "CR_RowMajor", signal = array<i32: 3, 4>, signal_cached = array<i32: 4>, wait = array<i32: 2, 5>, wait_cached = array<i32: 5>} : memref<32x64xf32, #map1> memref<32x64xf32, #map1, 3> -> 
      %53 = arith.remsi %40, %c256 : index
      %54 = arith.addi %53, %c32 : index
      %55 = arith.minsi %54, %c256 : index
      %56 = arith.subi %55, %53 : index
      %reinterpret_cast_7 = memref.reinterpret_cast %arg1 to offset: [%40], sizes: [64, %56], strides: [256, 1] : memref<*xbf16, 1> to memref<64x?xbf16, strided<[256, 1], offset: ?>, 1>
      %cast_8 = memref.cast %reinterpret_cast_7 : memref<64x?xbf16, strided<[256, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
      %alloc_9 = memref.alloc() {bufferNum = 5 : index, bufferSize = 8192 : index, init_signal = 9 : i64, processed, sram = "l1w"} : memref<64x32xf32, #map, 4>
      %57 = sdnn.get_fifo_buffer %alloc_9, %18, {bufferNum = 5 : i32, bufferSize = 8192 : i32} : memref<64x32xf32, #map, 4> memref<1xi32, 6> to memref<64x32xf32, #map, 4>
      %alloc_10 = memref.alloc() {bufferNum = 5 : index, bufferSize = 8192 : index, init_signal = 7 : i64, processed, sram = "uni_sram", trans = false} : memref<64x32xf32, #map>
      %58 = sdnn.get_fifo_buffer %alloc_10, %17, {bufferNum = 5 : i32, bufferSize = 8192 : i32} : memref<64x32xf32, #map> memref<1xi32, 6> to memref<64x32xf32, #map>
      %dim_11 = memref.dim %reinterpret_cast_7, %c1 : memref<64x?xbf16, strided<[256, 1], offset: ?>, 1>
      %subview_12 = memref.subview %58[0, 0] [64, %dim_11] [1, 1] : memref<64x32xf32, #map> to memref<64x?xf32, strided<[32, 1]>>
      %cast_13 = memref.cast %subview_12 : memref<64x?xf32, strided<[32, 1]>> to memref<?x?xf32, strided<[32, 1]>>
      sdnn.dma in %cast_8, %cast_13 {core_id = 6 : i32, signal = array<i32: 6>, wait = array<i32: 7>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[32, 1]>> -> 
      sdnn.ds %58, %57 mask_dims[%c64, %c32] {sdnn.layout = "CR_RowMajor", signal = array<i32: 7, 8>, signal_cached = array<i32: 8>, wait = array<i32: 6, 9>, wait_cached = array<i32: 9>} : memref<64x32xf32, #map> memref<64x32xf32, #map, 4> -> 
      sdnn.mma %51, %57, %25 acc %c0_i32 mask_dims[%c32, %c32, %c64] {indexing_maps = [#map2, #map3, #map4], rcOut = false, sdnn.layout = "CR_RowMajor", signal = array<i32: 5, 9, 10>, wait = array<i32: 4, 8, 11>} : (memref<32x64xf32, #map1, 3>, memref<64x32xf32, #map, 4>, memref<32x32xf32, #map>, i32, index, index, index) -> ()
      %reinterpret_cast_14 = memref.reinterpret_cast %arg2 to offset: [%40], sizes: [1, 32], strides: [32, 1] : memref<*xbf16, 1> to memref<1x32xbf16, strided<[32, 1], offset: ?>, 1>
      %59 = arith.index_cast %36 : i32 to index
      %60 = arith.addi %59, %c32 : index
      %61 = arith.minsi %60, %c32 : index
      %62 = arith.maxsi %61, %59 : index
      %63 = arith.subi %62, %59 : index
      %64 = arith.index_cast %38 : i32 to index
      %65 = arith.addi %64, %c32 : index
      %66 = arith.minsi %65, %c256 : index
      %67 = arith.maxsi %66, %64 : index
      %68 = arith.subi %67, %64 : index
      %69 = arith.minsi %68, %c32 : index
      %alloc_15 = memref.alloc() {bufferNum = 5 : index, bufferSize = 128 : index, init_signal = 16 : i64, processed, sram = "uni_sram", trans = false} : memref<1x32xf32, #map>
      %70 = sdnn.get_fifo_buffer %alloc_15, %16, {bufferNum = 5 : i32, bufferSize = 128 : i32} : memref<1x32xf32, #map> memref<1xi32, 6> to memref<1x32xf32, #map>
      %subview_16 = memref.subview %reinterpret_cast_14[0, 0] [1, %69] [1, 1] : memref<1x32xbf16, strided<[32, 1], offset: ?>, 1> to memref<1x?xbf16, strided<[32, 1], offset: ?>, 1>
      %alloc_17 = memref.alloc() {bufferNum = 5 : index, bufferSize = 4096 : index, init_signal = 22 : i64, processed, sram = "uni_sram"} : memref<32x32xf32, #map>
      %71 = sdnn.get_fifo_buffer %alloc_17, %15, {bufferNum = 5 : i32, bufferSize = 4096 : i32} : memref<32x32xf32, #map> memref<1xi32, 6> to memref<32x32xf32, #map>
      %alloc_18 = memref.alloc() {bufferNum = 5 : index, bufferSize = 4096 : index, init_signal = 14 : i64, processed, sram = "uni_sram"} : memref<32x32xf32, #map>
      %72 = sdnn.get_fifo_buffer %alloc_18, %14, {bufferNum = 5 : i32, bufferSize = 4096 : i32} : memref<32x32xf32, #map> memref<1xi32, 6> to memref<32x32xf32, #map>
      sdnn.core_wait(3, 10)
      sdnn.core_wait(3, 14)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%25, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%72 : memref<32x32xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        scf.for %arg18 = %c0_26 to %c4 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%25, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%72 : memref<32x32xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        %c8 = arith.constant 8 : index
        scf.for %arg18 = %c4 to %c8 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%25, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%72 : memref<32x32xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c8 = arith.constant 8 : index
        %c12 = arith.constant 12 : index
        scf.for %arg18 = %c8 to %c12 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%25, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%72 : memref<32x32xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c12 = arith.constant 12 : index
        %c16 = arith.constant 16 : index
        scf.for %arg18 = %c12 to %c16 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%25, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%72 : memref<32x32xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        %c20 = arith.constant 20 : index
        scf.for %arg18 = %c16 to %c20 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%25, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%72 : memref<32x32xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c20 = arith.constant 20 : index
        %c24 = arith.constant 24 : index
        scf.for %arg18 = %c20 to %c24 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%25, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%72 : memref<32x32xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c24 = arith.constant 24 : index
        %c28 = arith.constant 28 : index
        scf.for %arg18 = %c24 to %c28 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%25, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%72 : memref<32x32xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c28 = arith.constant 28 : index
        scf.for %arg18 = %c28 to %c32_27 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 11)
      sdnn.core_arrive(3, 12)
      %subview_19 = memref.subview %70[0, 0] [1, %69] [1, 1] : memref<1x32xf32, #map> to memref<1x?xf32, strided<[32, 1]>>
      sdnn.dma in %subview_16, %subview_19 {core_id = 1 : i32, signal = array<i32: 15>, wait = array<i32: 16>} : memref<1x?xbf16, strided<[32, 1], offset: ?>, 1> memref<1x?xf32, strided<[32, 1]>> -> 
      sdnn.ew linear %72 src0 %72 src1 %70 a %cst_1 b %cst_1 {sdnn.layout = "CR_RowMajor", signal = array<i32: 13, 16>, wait = array<i32: 12, 15>} : (memref<32x32xf32, #map>, memref<32x32xf32, #map>, memref<1x32xf32, #map>, f32, f32) -> ()
      sdnn.core_wait(3, 13)
      sdnn.core_wait(3, 22)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%72, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%71 : memref<32x32xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        scf.for %arg18 = %c0_26 to %c4 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%72, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%71 : memref<32x32xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        %c8 = arith.constant 8 : index
        scf.for %arg18 = %c4 to %c8 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%72, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%71 : memref<32x32xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c8 = arith.constant 8 : index
        %c12 = arith.constant 12 : index
        scf.for %arg18 = %c8 to %c12 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%72, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%71 : memref<32x32xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c12 = arith.constant 12 : index
        %c16 = arith.constant 16 : index
        scf.for %arg18 = %c12 to %c16 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%72, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%71 : memref<32x32xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        %c20 = arith.constant 20 : index
        scf.for %arg18 = %c16 to %c20 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%72, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%71 : memref<32x32xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c20 = arith.constant 20 : index
        %c24 = arith.constant 24 : index
        scf.for %arg18 = %c20 to %c24 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%72, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%71 : memref<32x32xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c24 = arith.constant 24 : index
        %c28 = arith.constant 28 : index
        scf.for %arg18 = %c24 to %c28 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%72, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%71 : memref<32x32xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c28 = arith.constant 28 : index
        scf.for %arg18 = %c28 to %c32_27 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 14)
      sdnn.core_arrive(3, 19)
      sdnn.core_arrive(3, 20)
      sdnn.core_arrive(3, 17)
      %alloc_20 = memref.alloc() {bufferNum = 5 : index, bufferSize = 4096 : index, init_signal = 24 : i64, processed, sram = "uni_sram"} : memref<32x32xf32, #map>
      %73 = sdnn.get_fifo_buffer %alloc_20, %13, {bufferNum = 5 : i32, bufferSize = 4096 : i32} : memref<32x32xf32, #map> memref<1xi32, 6> to memref<32x32xf32, #map>
      sdnn.ew lut %73 src0 %71 lut_func gelu {kOverflow = 1.000000e+00 : f32, kUnderflow = 0.000000e+00 : f32, lut_max = 7.984375 : f32, lut_min = -8.000000e+00 : f32, packedid = 887629 : ui32, sdnn.layout = "CR_RowMajor", wait = array<i32: 17, 24>} : (memref<32x32xf32, #map>, memref<32x32xf32, #map>) -> ()
      %alloc_21 = memref.alloc() {bufferNum = 5 : index, bufferSize = 4096 : index, init_signal = 25 : i64, processed, sram = "uni_sram"} : memref<32x32xf32, #map>
      %74 = sdnn.get_fifo_buffer %alloc_21, %12, {bufferNum = 5 : i32, bufferSize = 4096 : i32} : memref<32x32xf32, #map> memref<1xi32, 6> to memref<32x32xf32, #map>
      sdnn.ew maximum %74 src0 %71 c %cst {sdnn.layout = "CR_RowMajor", wait = array<i32: 19, 25>} : (memref<32x32xf32, #map>, memref<32x32xf32, #map>, f32) -> ()
      sdnn.ew minimum %74 src0 %74 c %cst_0 {sdnn.layout = "CR_RowMajor"} : (memref<32x32xf32, #map>, memref<32x32xf32, #map>, f32) -> ()
      sdnn.ew linear %71 src0 %71 src1 %74 a %cst_1 b %cst_2 {sdnn.layout = "CR_RowMajor", signal = array<i32: 25>, wait = array<i32: 20>} : (memref<32x32xf32, #map>, memref<32x32xf32, #map>, memref<32x32xf32, #map>, f32, f32) -> ()
      sdnn.ew linear %73 src0 %73 src1 %71 a %cst_1 b %cst_1 {sdnn.layout = "CR_RowMajor", signal = array<i32: 18, 23>} : (memref<32x32xf32, #map>, memref<32x32xf32, #map>, memref<32x32xf32, #map>, f32, f32) -> ()
      sdnn.core_wait(3, 18)
      sdnn.core_wait(3, 23)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%73, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%71 : memref<32x32xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        scf.for %arg18 = %c0_26 to %c4 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%73, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%71 : memref<32x32xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        %c8 = arith.constant 8 : index
        scf.for %arg18 = %c4 to %c8 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%73, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%71 : memref<32x32xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c8 = arith.constant 8 : index
        %c12 = arith.constant 12 : index
        scf.for %arg18 = %c8 to %c12 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%73, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%71 : memref<32x32xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c12 = arith.constant 12 : index
        %c16 = arith.constant 16 : index
        scf.for %arg18 = %c12 to %c16 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%73, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%71 : memref<32x32xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        %c20 = arith.constant 20 : index
        scf.for %arg18 = %c16 to %c20 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%73, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%71 : memref<32x32xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c20 = arith.constant 20 : index
        %c24 = arith.constant 24 : index
        scf.for %arg18 = %c20 to %c24 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%73, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%71 : memref<32x32xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c24 = arith.constant 24 : index
        %c28 = arith.constant 28 : index
        scf.for %arg18 = %c24 to %c28 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%73, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%71 : memref<32x32xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        %c28 = arith.constant 28 : index
        scf.for %arg18 = %c28 to %c32_27 step %c1_28 {
          scf.for %arg19 = %c0_26 to %c32_27 step %c1_28 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.andi %79, %arg10 : i32
            %81 = arith.ori %79, %arg11 : i32
            %82 = arith.cmpi ugt, %80, %arg12 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg13 : i32
            %85 = arith.shrui %79, %arg14 : i32
            %86 = arith.andi %85, %arg15 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg16 : i32
            %89 = arith.cmpi uge, %80, %arg12 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 21)
      sdnn.core_arrive(3, 24)
      %75 = arith.muli %37, %c8192 : index
      %76 = arith.addi %75, %40 : index
      %reinterpret_cast_22 = memref.reinterpret_cast %arg3 to offset: [%76], sizes: [32, 32], strides: [256, 1] : memref<*xbf16, 1> to memref<32x32xbf16, strided<[256, 1], offset: ?>, 1>
      %77 = arith.minsi %63, %c32 : index
      %subview_23 = memref.subview %reinterpret_cast_22[0, 0] [%77, %69] [1, 1] : memref<32x32xbf16, strided<[256, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[256, 1], offset: ?>, 1>
      %cast_24 = memref.cast %subview_23 : memref<?x?xbf16, strided<[256, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, 1], offset: ?>, 1>
      %subview_25 = memref.subview %71[0, 0] [%77, %69] [1, 1] : memref<32x32xf32, #map> to memref<?x?xf32, strided<[32, 1]>>
      sdnn.dma out %subview_25, %cast_24 {signal = array<i32: 22>, wait = array<i32: 21>} : memref<?x?xf32, strided<[32, 1]>> memref<?x?xbf16, strided<[?, 1], offset: ?>, 1> -> 
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
