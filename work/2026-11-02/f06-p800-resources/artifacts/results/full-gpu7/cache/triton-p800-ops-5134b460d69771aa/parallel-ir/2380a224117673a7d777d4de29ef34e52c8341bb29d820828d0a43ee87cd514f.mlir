#map = affine_map<(d0, d1) -> (d0 * 32 + d1)>
#map1 = affine_map<(d0, d1) -> (d0 * 64 + d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1)>
module {
  llvm.func @llvm.xpu.sync_core(i32) attributes {passthrough = ["convergent", "noduplicate"]}
  llvm.func @llvm.xpu.xfence()
  llvm.func @llvm.xpu.mfence.v2(i32)
  func.func @triton_unk_fused_0(%arg0: memref<*xbf16, 1> {tt.divisibility = 16 : i32}, %arg1: memref<*xbf16, 1> {tt.divisibility = 16 : i32}, %arg2: memref<*xbf16, 1> {tt.divisibility = 16 : i32}, %arg3: memref<*xbf16, 1> {tt.divisibility = 16 : i32}, %arg4: i32, %arg5: i32, %arg6: i32) {
    %c7_i32 = arith.constant 7 : i32
    %c255_i32 = arith.constant 255 : i32
    %c64_i32 = arith.constant 64 : i32
    %c32_i32 = arith.constant 32 : i32
    %c0_i32 = arith.constant 0 : i32
    %c8_i32 = arith.constant 8 : i32
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
    %cst = arith.constant 1.000000e+00 : f32
    "sdnn.init"() {signal = [array<i32: 11, 5, 3, 9, 7, 16, 18, 14>], signal_num = array<i64: 5, 5, 5, 5, 5, 5, 5, 5>} : () -> ()
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
    %12 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    %13 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    %14 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    %15 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    %16 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    %17 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    %18 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    %19 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    scf.for %arg7 = %10 to %11 step %c1 {
      %20 = arith.index_cast %arg7 : index to i32
      %21 = arith.divsi %20, %arg6 : i32
      %22 = arith.divsi %21, %arg5 : i32
      %alloc = memref.alloc() {bufferNum = 5 : index, bufferSize = 4096 : index, init_signal = 11 : i64, processed, sram = "uni_sram"} : memref<32x32xf32, #map>
      %23 = sdnn.get_fifo_buffer %alloc, %19, {bufferNum = 5 : i32, bufferSize = 4096 : i32} : memref<32x32xf32, #map> memref<1xi32, 6> to memref<32x32xf32, #map>
      %24 = arith.divsi %22, %c64_i32 : i32
      %25 = arith.muli %24, %c8_i32 : i32
      %26 = arith.subi %c1_i32, %25 : i32
      %27 = arith.minsi %26, %c8_i32 : i32
      %28 = arith.remsi %22, %27 : i32
      %29 = arith.addi %25, %28 : i32
      %30 = arith.remsi %22, %c64_i32 : i32
      %31 = arith.divsi %30, %27 : i32
      %32 = arith.cmpi sge, %29, %c0_i32 : i32
      llvm.intr.assume %32 : i1
      %33 = arith.cmpi sge, %31, %c0_i32 : i32
      llvm.intr.assume %33 : i1
      %34 = arith.muli %29, %c32_i32 : i32
      %35 = arith.index_cast %29 : i32 to index
      %36 = arith.muli %31, %c32_i32 : i32
      %37 = arith.index_cast %31 : i32 to index
      %38 = arith.muli %37, %c32 : index
      %39 = arith.muli %35, %c2048 : index
      %40 = arith.cmpi sge, %39, %c2048 : index
      %41 = arith.divsi %39, %c2048 : index
      %42 = arith.muli %41, %c2048 : index
      %43 = arith.subi %39, %42 : index
      %44 = arith.select %40, %43, %39 : index
      %45 = arith.divsi %44, %c64 : index
      %46 = arith.addi %45, %c32 : index
      %47 = arith.minsi %46, %c32 : index
      %48 = arith.subi %47, %45 : index
      %reinterpret_cast = memref.reinterpret_cast %arg0 to offset: [%39], sizes: [%48, 64], strides: [64, 1] : memref<*xbf16, 1> to memref<?x64xbf16, strided<[64, 1], offset: ?>, 1>
      %cast = memref.cast %reinterpret_cast : memref<?x64xbf16, strided<[64, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
      %alloc_0 = memref.alloc() {bufferNum = 5 : index, bufferSize = 8192 : index, init_signal = 5 : i64, processed, sram = "l1d"} : memref<32x64xf32, #map1, 3>
      %49 = sdnn.get_fifo_buffer %alloc_0, %18, {bufferNum = 5 : i32, bufferSize = 8192 : i32} : memref<32x64xf32, #map1, 3> memref<1xi32, 6> to memref<32x64xf32, #map1, 3>
      %alloc_1 = memref.alloc() {bufferNum = 5 : index, bufferSize = 8192 : index, init_signal = 3 : i64, processed, sram = "uni_sram", trans = false} : memref<32x64xf32, #map1>
      %50 = sdnn.get_fifo_buffer %alloc_1, %17, {bufferNum = 5 : i32, bufferSize = 8192 : i32} : memref<32x64xf32, #map1> memref<1xi32, 6> to memref<32x64xf32, #map1>
      %dim = memref.dim %reinterpret_cast, %c0 : memref<?x64xbf16, strided<[64, 1], offset: ?>, 1>
      %subview = memref.subview %50[0, 0] [%dim, 64] [1, 1] : memref<32x64xf32, #map1> to memref<?x64xf32, strided<[64, 1]>>
      %cast_2 = memref.cast %subview : memref<?x64xf32, strided<[64, 1]>> to memref<?x?xf32, strided<[64, 1]>>
      sdnn.dma in %cast, %cast_2 {core_id = 1 : i32, signal = array<i32: 2>, wait = array<i32: 3>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[64, 1]>> -> 
      sdnn.ds %50, %49 mask_dims[%c32, %c64] {sdnn.layout = "CR_RowMajor", signal = array<i32: 3, 4>, signal_cached = array<i32: 4>, wait = array<i32: 2, 5>, wait_cached = array<i32: 5>} : memref<32x64xf32, #map1> memref<32x64xf32, #map1, 3> -> 
      %51 = arith.remsi %38, %c256 : index
      %52 = arith.addi %51, %c32 : index
      %53 = arith.minsi %52, %c256 : index
      %54 = arith.subi %53, %51 : index
      %reinterpret_cast_3 = memref.reinterpret_cast %arg1 to offset: [%38], sizes: [64, %54], strides: [256, 1] : memref<*xbf16, 1> to memref<64x?xbf16, strided<[256, 1], offset: ?>, 1>
      %cast_4 = memref.cast %reinterpret_cast_3 : memref<64x?xbf16, strided<[256, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
      %alloc_5 = memref.alloc() {bufferNum = 5 : index, bufferSize = 8192 : index, init_signal = 9 : i64, processed, sram = "l1w"} : memref<64x32xf32, #map, 4>
      %55 = sdnn.get_fifo_buffer %alloc_5, %16, {bufferNum = 5 : i32, bufferSize = 8192 : i32} : memref<64x32xf32, #map, 4> memref<1xi32, 6> to memref<64x32xf32, #map, 4>
      %alloc_6 = memref.alloc() {bufferNum = 5 : index, bufferSize = 8192 : index, init_signal = 7 : i64, processed, sram = "uni_sram", trans = false} : memref<64x32xf32, #map>
      %56 = sdnn.get_fifo_buffer %alloc_6, %15, {bufferNum = 5 : i32, bufferSize = 8192 : i32} : memref<64x32xf32, #map> memref<1xi32, 6> to memref<64x32xf32, #map>
      %dim_7 = memref.dim %reinterpret_cast_3, %c1 : memref<64x?xbf16, strided<[256, 1], offset: ?>, 1>
      %subview_8 = memref.subview %56[0, 0] [64, %dim_7] [1, 1] : memref<64x32xf32, #map> to memref<64x?xf32, strided<[32, 1]>>
      %cast_9 = memref.cast %subview_8 : memref<64x?xf32, strided<[32, 1]>> to memref<?x?xf32, strided<[32, 1]>>
      sdnn.dma in %cast_4, %cast_9 {core_id = 6 : i32, signal = array<i32: 6>, wait = array<i32: 7>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[32, 1]>> -> 
      sdnn.ds %56, %55 mask_dims[%c64, %c32] {sdnn.layout = "CR_RowMajor", signal = array<i32: 7, 8>, signal_cached = array<i32: 8>, wait = array<i32: 6, 9>, wait_cached = array<i32: 9>} : memref<64x32xf32, #map> memref<64x32xf32, #map, 4> -> 
      sdnn.mma %49, %55, %23 acc %c0_i32 mask_dims[%c32, %c32, %c64] {indexing_maps = [#map2, #map3, #map4], rcOut = false, sdnn.layout = "CR_RowMajor", signal = array<i32: 5, 9, 10>, wait = array<i32: 4, 8, 11>} : (memref<32x64xf32, #map1, 3>, memref<64x32xf32, #map, 4>, memref<32x32xf32, #map>, i32, index, index, index) -> ()
      %reinterpret_cast_10 = memref.reinterpret_cast %arg2 to offset: [%38], sizes: [1, 32], strides: [32, 1] : memref<*xbf16, 1> to memref<1x32xbf16, strided<[32, 1], offset: ?>, 1>
      %57 = arith.index_cast %34 : i32 to index
      %58 = arith.addi %57, %c32 : index
      %59 = arith.minsi %58, %c32 : index
      %60 = arith.maxsi %59, %57 : index
      %61 = arith.subi %60, %57 : index
      %62 = arith.index_cast %36 : i32 to index
      %63 = arith.addi %62, %c32 : index
      %64 = arith.minsi %63, %c256 : index
      %65 = arith.maxsi %64, %62 : index
      %66 = arith.subi %65, %62 : index
      %67 = arith.minsi %66, %c32 : index
      %alloc_11 = memref.alloc() {bufferNum = 5 : index, bufferSize = 128 : index, init_signal = 16 : i64, processed, sram = "uni_sram", trans = false} : memref<1x32xf32, #map>
      %68 = sdnn.get_fifo_buffer %alloc_11, %14, {bufferNum = 5 : i32, bufferSize = 128 : i32} : memref<1x32xf32, #map> memref<1xi32, 6> to memref<1x32xf32, #map>
      %subview_12 = memref.subview %reinterpret_cast_10[0, 0] [1, %67] [1, 1] : memref<1x32xbf16, strided<[32, 1], offset: ?>, 1> to memref<1x?xbf16, strided<[32, 1], offset: ?>, 1>
      %alloc_13 = memref.alloc() {bufferNum = 5 : index, bufferSize = 4096 : index, init_signal = 18 : i64, processed, sram = "uni_sram"} : memref<32x32xf32, #map>
      %69 = sdnn.get_fifo_buffer %alloc_13, %13, {bufferNum = 5 : i32, bufferSize = 4096 : i32} : memref<32x32xf32, #map> memref<1xi32, 6> to memref<32x32xf32, #map>
      %alloc_14 = memref.alloc() {bufferNum = 5 : index, bufferSize = 4096 : index, init_signal = 14 : i64, processed, sram = "uni_sram"} : memref<32x32xf32, #map>
      %70 = sdnn.get_fifo_buffer %alloc_14, %12, {bufferNum = 5 : i32, bufferSize = 4096 : i32} : memref<32x32xf32, #map> memref<1xi32, 6> to memref<32x32xf32, #map>
      sdnn.core_wait(3, 10)
      sdnn.core_wait(3, 14)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%23, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%70 : memref<32x32xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<32x32xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x32xf32, #map>):
        %c0_20 = arith.constant 0 : index
        %c32_21 = arith.constant 32 : index
        %c1_22 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        scf.for %arg17 = %c0_20 to %c4 step %c1_22 {
          scf.for %arg18 = %c0_20 to %c32_21 step %c1_22 {
            %74 = memref.load %arg8[%arg17, %arg18] : memref<32x32xf32, #map>
            %75 = arith.bitcast %74 : f32 to i32
            %76 = arith.andi %75, %arg9 : i32
            %77 = arith.ori %75, %arg10 : i32
            %78 = arith.cmpi ugt, %76, %arg11 : i32
            %79 = arith.select %78, %77, %75 : i32
            %80 = arith.addi %75, %arg12 : i32
            %81 = arith.shrui %75, %arg13 : i32
            %82 = arith.andi %81, %arg14 : i32
            %83 = arith.addi %80, %82 : i32
            %84 = arith.andi %83, %arg15 : i32
            %85 = arith.cmpi uge, %76, %arg11 : i32
            %86 = arith.select %85, %79, %84 : i32
            %87 = arith.bitcast %86 : i32 to f32
            memref.store %87, %arg16[%arg17, %arg18] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%23, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%70 : memref<32x32xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<32x32xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x32xf32, #map>):
        %c0_20 = arith.constant 0 : index
        %c32_21 = arith.constant 32 : index
        %c1_22 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        %c8 = arith.constant 8 : index
        scf.for %arg17 = %c4 to %c8 step %c1_22 {
          scf.for %arg18 = %c0_20 to %c32_21 step %c1_22 {
            %74 = memref.load %arg8[%arg17, %arg18] : memref<32x32xf32, #map>
            %75 = arith.bitcast %74 : f32 to i32
            %76 = arith.andi %75, %arg9 : i32
            %77 = arith.ori %75, %arg10 : i32
            %78 = arith.cmpi ugt, %76, %arg11 : i32
            %79 = arith.select %78, %77, %75 : i32
            %80 = arith.addi %75, %arg12 : i32
            %81 = arith.shrui %75, %arg13 : i32
            %82 = arith.andi %81, %arg14 : i32
            %83 = arith.addi %80, %82 : i32
            %84 = arith.andi %83, %arg15 : i32
            %85 = arith.cmpi uge, %76, %arg11 : i32
            %86 = arith.select %85, %79, %84 : i32
            %87 = arith.bitcast %86 : i32 to f32
            memref.store %87, %arg16[%arg17, %arg18] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%23, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%70 : memref<32x32xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<32x32xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x32xf32, #map>):
        %c0_20 = arith.constant 0 : index
        %c32_21 = arith.constant 32 : index
        %c1_22 = arith.constant 1 : index
        %c8 = arith.constant 8 : index
        %c12 = arith.constant 12 : index
        scf.for %arg17 = %c8 to %c12 step %c1_22 {
          scf.for %arg18 = %c0_20 to %c32_21 step %c1_22 {
            %74 = memref.load %arg8[%arg17, %arg18] : memref<32x32xf32, #map>
            %75 = arith.bitcast %74 : f32 to i32
            %76 = arith.andi %75, %arg9 : i32
            %77 = arith.ori %75, %arg10 : i32
            %78 = arith.cmpi ugt, %76, %arg11 : i32
            %79 = arith.select %78, %77, %75 : i32
            %80 = arith.addi %75, %arg12 : i32
            %81 = arith.shrui %75, %arg13 : i32
            %82 = arith.andi %81, %arg14 : i32
            %83 = arith.addi %80, %82 : i32
            %84 = arith.andi %83, %arg15 : i32
            %85 = arith.cmpi uge, %76, %arg11 : i32
            %86 = arith.select %85, %79, %84 : i32
            %87 = arith.bitcast %86 : i32 to f32
            memref.store %87, %arg16[%arg17, %arg18] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%23, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%70 : memref<32x32xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<32x32xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x32xf32, #map>):
        %c0_20 = arith.constant 0 : index
        %c32_21 = arith.constant 32 : index
        %c1_22 = arith.constant 1 : index
        %c12 = arith.constant 12 : index
        %c16 = arith.constant 16 : index
        scf.for %arg17 = %c12 to %c16 step %c1_22 {
          scf.for %arg18 = %c0_20 to %c32_21 step %c1_22 {
            %74 = memref.load %arg8[%arg17, %arg18] : memref<32x32xf32, #map>
            %75 = arith.bitcast %74 : f32 to i32
            %76 = arith.andi %75, %arg9 : i32
            %77 = arith.ori %75, %arg10 : i32
            %78 = arith.cmpi ugt, %76, %arg11 : i32
            %79 = arith.select %78, %77, %75 : i32
            %80 = arith.addi %75, %arg12 : i32
            %81 = arith.shrui %75, %arg13 : i32
            %82 = arith.andi %81, %arg14 : i32
            %83 = arith.addi %80, %82 : i32
            %84 = arith.andi %83, %arg15 : i32
            %85 = arith.cmpi uge, %76, %arg11 : i32
            %86 = arith.select %85, %79, %84 : i32
            %87 = arith.bitcast %86 : i32 to f32
            memref.store %87, %arg16[%arg17, %arg18] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%23, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%70 : memref<32x32xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<32x32xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x32xf32, #map>):
        %c0_20 = arith.constant 0 : index
        %c32_21 = arith.constant 32 : index
        %c1_22 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        %c20 = arith.constant 20 : index
        scf.for %arg17 = %c16 to %c20 step %c1_22 {
          scf.for %arg18 = %c0_20 to %c32_21 step %c1_22 {
            %74 = memref.load %arg8[%arg17, %arg18] : memref<32x32xf32, #map>
            %75 = arith.bitcast %74 : f32 to i32
            %76 = arith.andi %75, %arg9 : i32
            %77 = arith.ori %75, %arg10 : i32
            %78 = arith.cmpi ugt, %76, %arg11 : i32
            %79 = arith.select %78, %77, %75 : i32
            %80 = arith.addi %75, %arg12 : i32
            %81 = arith.shrui %75, %arg13 : i32
            %82 = arith.andi %81, %arg14 : i32
            %83 = arith.addi %80, %82 : i32
            %84 = arith.andi %83, %arg15 : i32
            %85 = arith.cmpi uge, %76, %arg11 : i32
            %86 = arith.select %85, %79, %84 : i32
            %87 = arith.bitcast %86 : i32 to f32
            memref.store %87, %arg16[%arg17, %arg18] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%23, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%70 : memref<32x32xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<32x32xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x32xf32, #map>):
        %c0_20 = arith.constant 0 : index
        %c32_21 = arith.constant 32 : index
        %c1_22 = arith.constant 1 : index
        %c20 = arith.constant 20 : index
        %c24 = arith.constant 24 : index
        scf.for %arg17 = %c20 to %c24 step %c1_22 {
          scf.for %arg18 = %c0_20 to %c32_21 step %c1_22 {
            %74 = memref.load %arg8[%arg17, %arg18] : memref<32x32xf32, #map>
            %75 = arith.bitcast %74 : f32 to i32
            %76 = arith.andi %75, %arg9 : i32
            %77 = arith.ori %75, %arg10 : i32
            %78 = arith.cmpi ugt, %76, %arg11 : i32
            %79 = arith.select %78, %77, %75 : i32
            %80 = arith.addi %75, %arg12 : i32
            %81 = arith.shrui %75, %arg13 : i32
            %82 = arith.andi %81, %arg14 : i32
            %83 = arith.addi %80, %82 : i32
            %84 = arith.andi %83, %arg15 : i32
            %85 = arith.cmpi uge, %76, %arg11 : i32
            %86 = arith.select %85, %79, %84 : i32
            %87 = arith.bitcast %86 : i32 to f32
            memref.store %87, %arg16[%arg17, %arg18] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%23, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%70 : memref<32x32xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<32x32xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x32xf32, #map>):
        %c0_20 = arith.constant 0 : index
        %c32_21 = arith.constant 32 : index
        %c1_22 = arith.constant 1 : index
        %c24 = arith.constant 24 : index
        %c28 = arith.constant 28 : index
        scf.for %arg17 = %c24 to %c28 step %c1_22 {
          scf.for %arg18 = %c0_20 to %c32_21 step %c1_22 {
            %74 = memref.load %arg8[%arg17, %arg18] : memref<32x32xf32, #map>
            %75 = arith.bitcast %74 : f32 to i32
            %76 = arith.andi %75, %arg9 : i32
            %77 = arith.ori %75, %arg10 : i32
            %78 = arith.cmpi ugt, %76, %arg11 : i32
            %79 = arith.select %78, %77, %75 : i32
            %80 = arith.addi %75, %arg12 : i32
            %81 = arith.shrui %75, %arg13 : i32
            %82 = arith.andi %81, %arg14 : i32
            %83 = arith.addi %80, %82 : i32
            %84 = arith.andi %83, %arg15 : i32
            %85 = arith.cmpi uge, %76, %arg11 : i32
            %86 = arith.select %85, %79, %84 : i32
            %87 = arith.bitcast %86 : i32 to f32
            memref.store %87, %arg16[%arg17, %arg18] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%23, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%70 : memref<32x32xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<32x32xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x32xf32, #map>):
        %c0_20 = arith.constant 0 : index
        %c32_21 = arith.constant 32 : index
        %c1_22 = arith.constant 1 : index
        %c28 = arith.constant 28 : index
        scf.for %arg17 = %c28 to %c32_21 step %c1_22 {
          scf.for %arg18 = %c0_20 to %c32_21 step %c1_22 {
            %74 = memref.load %arg8[%arg17, %arg18] : memref<32x32xf32, #map>
            %75 = arith.bitcast %74 : f32 to i32
            %76 = arith.andi %75, %arg9 : i32
            %77 = arith.ori %75, %arg10 : i32
            %78 = arith.cmpi ugt, %76, %arg11 : i32
            %79 = arith.select %78, %77, %75 : i32
            %80 = arith.addi %75, %arg12 : i32
            %81 = arith.shrui %75, %arg13 : i32
            %82 = arith.andi %81, %arg14 : i32
            %83 = arith.addi %80, %82 : i32
            %84 = arith.andi %83, %arg15 : i32
            %85 = arith.cmpi uge, %76, %arg11 : i32
            %86 = arith.select %85, %79, %84 : i32
            %87 = arith.bitcast %86 : i32 to f32
            memref.store %87, %arg16[%arg17, %arg18] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 11)
      sdnn.core_arrive(3, 12)
      %subview_15 = memref.subview %68[0, 0] [1, %67] [1, 1] : memref<1x32xf32, #map> to memref<1x?xf32, strided<[32, 1]>>
      sdnn.dma in %subview_12, %subview_15 {core_id = 1 : i32, signal = array<i32: 15>, wait = array<i32: 16>} : memref<1x?xbf16, strided<[32, 1], offset: ?>, 1> memref<1x?xf32, strided<[32, 1]>> -> 
      sdnn.ew linear %70 src0 %70 src1 %68 a %cst b %cst {sdnn.layout = "CR_RowMajor", signal = array<i32: 13, 16>, wait = array<i32: 12, 15>} : (memref<32x32xf32, #map>, memref<32x32xf32, #map>, memref<1x32xf32, #map>, f32, f32) -> ()
      sdnn.core_wait(3, 13)
      sdnn.core_wait(3, 18)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%70, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%69 : memref<32x32xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<32x32xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x32xf32, #map>):
        %c0_20 = arith.constant 0 : index
        %c32_21 = arith.constant 32 : index
        %c1_22 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        scf.for %arg17 = %c0_20 to %c4 step %c1_22 {
          scf.for %arg18 = %c0_20 to %c32_21 step %c1_22 {
            %74 = memref.load %arg8[%arg17, %arg18] : memref<32x32xf32, #map>
            %75 = arith.bitcast %74 : f32 to i32
            %76 = arith.andi %75, %arg9 : i32
            %77 = arith.ori %75, %arg10 : i32
            %78 = arith.cmpi ugt, %76, %arg11 : i32
            %79 = arith.select %78, %77, %75 : i32
            %80 = arith.addi %75, %arg12 : i32
            %81 = arith.shrui %75, %arg13 : i32
            %82 = arith.andi %81, %arg14 : i32
            %83 = arith.addi %80, %82 : i32
            %84 = arith.andi %83, %arg15 : i32
            %85 = arith.cmpi uge, %76, %arg11 : i32
            %86 = arith.select %85, %79, %84 : i32
            %87 = arith.bitcast %86 : i32 to f32
            memref.store %87, %arg16[%arg17, %arg18] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%70, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%69 : memref<32x32xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<32x32xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x32xf32, #map>):
        %c0_20 = arith.constant 0 : index
        %c32_21 = arith.constant 32 : index
        %c1_22 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        %c8 = arith.constant 8 : index
        scf.for %arg17 = %c4 to %c8 step %c1_22 {
          scf.for %arg18 = %c0_20 to %c32_21 step %c1_22 {
            %74 = memref.load %arg8[%arg17, %arg18] : memref<32x32xf32, #map>
            %75 = arith.bitcast %74 : f32 to i32
            %76 = arith.andi %75, %arg9 : i32
            %77 = arith.ori %75, %arg10 : i32
            %78 = arith.cmpi ugt, %76, %arg11 : i32
            %79 = arith.select %78, %77, %75 : i32
            %80 = arith.addi %75, %arg12 : i32
            %81 = arith.shrui %75, %arg13 : i32
            %82 = arith.andi %81, %arg14 : i32
            %83 = arith.addi %80, %82 : i32
            %84 = arith.andi %83, %arg15 : i32
            %85 = arith.cmpi uge, %76, %arg11 : i32
            %86 = arith.select %85, %79, %84 : i32
            %87 = arith.bitcast %86 : i32 to f32
            memref.store %87, %arg16[%arg17, %arg18] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%70, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%69 : memref<32x32xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<32x32xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x32xf32, #map>):
        %c0_20 = arith.constant 0 : index
        %c32_21 = arith.constant 32 : index
        %c1_22 = arith.constant 1 : index
        %c8 = arith.constant 8 : index
        %c12 = arith.constant 12 : index
        scf.for %arg17 = %c8 to %c12 step %c1_22 {
          scf.for %arg18 = %c0_20 to %c32_21 step %c1_22 {
            %74 = memref.load %arg8[%arg17, %arg18] : memref<32x32xf32, #map>
            %75 = arith.bitcast %74 : f32 to i32
            %76 = arith.andi %75, %arg9 : i32
            %77 = arith.ori %75, %arg10 : i32
            %78 = arith.cmpi ugt, %76, %arg11 : i32
            %79 = arith.select %78, %77, %75 : i32
            %80 = arith.addi %75, %arg12 : i32
            %81 = arith.shrui %75, %arg13 : i32
            %82 = arith.andi %81, %arg14 : i32
            %83 = arith.addi %80, %82 : i32
            %84 = arith.andi %83, %arg15 : i32
            %85 = arith.cmpi uge, %76, %arg11 : i32
            %86 = arith.select %85, %79, %84 : i32
            %87 = arith.bitcast %86 : i32 to f32
            memref.store %87, %arg16[%arg17, %arg18] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%70, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%69 : memref<32x32xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<32x32xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x32xf32, #map>):
        %c0_20 = arith.constant 0 : index
        %c32_21 = arith.constant 32 : index
        %c1_22 = arith.constant 1 : index
        %c12 = arith.constant 12 : index
        %c16 = arith.constant 16 : index
        scf.for %arg17 = %c12 to %c16 step %c1_22 {
          scf.for %arg18 = %c0_20 to %c32_21 step %c1_22 {
            %74 = memref.load %arg8[%arg17, %arg18] : memref<32x32xf32, #map>
            %75 = arith.bitcast %74 : f32 to i32
            %76 = arith.andi %75, %arg9 : i32
            %77 = arith.ori %75, %arg10 : i32
            %78 = arith.cmpi ugt, %76, %arg11 : i32
            %79 = arith.select %78, %77, %75 : i32
            %80 = arith.addi %75, %arg12 : i32
            %81 = arith.shrui %75, %arg13 : i32
            %82 = arith.andi %81, %arg14 : i32
            %83 = arith.addi %80, %82 : i32
            %84 = arith.andi %83, %arg15 : i32
            %85 = arith.cmpi uge, %76, %arg11 : i32
            %86 = arith.select %85, %79, %84 : i32
            %87 = arith.bitcast %86 : i32 to f32
            memref.store %87, %arg16[%arg17, %arg18] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%70, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%69 : memref<32x32xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<32x32xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x32xf32, #map>):
        %c0_20 = arith.constant 0 : index
        %c32_21 = arith.constant 32 : index
        %c1_22 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        %c20 = arith.constant 20 : index
        scf.for %arg17 = %c16 to %c20 step %c1_22 {
          scf.for %arg18 = %c0_20 to %c32_21 step %c1_22 {
            %74 = memref.load %arg8[%arg17, %arg18] : memref<32x32xf32, #map>
            %75 = arith.bitcast %74 : f32 to i32
            %76 = arith.andi %75, %arg9 : i32
            %77 = arith.ori %75, %arg10 : i32
            %78 = arith.cmpi ugt, %76, %arg11 : i32
            %79 = arith.select %78, %77, %75 : i32
            %80 = arith.addi %75, %arg12 : i32
            %81 = arith.shrui %75, %arg13 : i32
            %82 = arith.andi %81, %arg14 : i32
            %83 = arith.addi %80, %82 : i32
            %84 = arith.andi %83, %arg15 : i32
            %85 = arith.cmpi uge, %76, %arg11 : i32
            %86 = arith.select %85, %79, %84 : i32
            %87 = arith.bitcast %86 : i32 to f32
            memref.store %87, %arg16[%arg17, %arg18] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%70, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%69 : memref<32x32xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<32x32xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x32xf32, #map>):
        %c0_20 = arith.constant 0 : index
        %c32_21 = arith.constant 32 : index
        %c1_22 = arith.constant 1 : index
        %c20 = arith.constant 20 : index
        %c24 = arith.constant 24 : index
        scf.for %arg17 = %c20 to %c24 step %c1_22 {
          scf.for %arg18 = %c0_20 to %c32_21 step %c1_22 {
            %74 = memref.load %arg8[%arg17, %arg18] : memref<32x32xf32, #map>
            %75 = arith.bitcast %74 : f32 to i32
            %76 = arith.andi %75, %arg9 : i32
            %77 = arith.ori %75, %arg10 : i32
            %78 = arith.cmpi ugt, %76, %arg11 : i32
            %79 = arith.select %78, %77, %75 : i32
            %80 = arith.addi %75, %arg12 : i32
            %81 = arith.shrui %75, %arg13 : i32
            %82 = arith.andi %81, %arg14 : i32
            %83 = arith.addi %80, %82 : i32
            %84 = arith.andi %83, %arg15 : i32
            %85 = arith.cmpi uge, %76, %arg11 : i32
            %86 = arith.select %85, %79, %84 : i32
            %87 = arith.bitcast %86 : i32 to f32
            memref.store %87, %arg16[%arg17, %arg18] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%70, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%69 : memref<32x32xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<32x32xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x32xf32, #map>):
        %c0_20 = arith.constant 0 : index
        %c32_21 = arith.constant 32 : index
        %c1_22 = arith.constant 1 : index
        %c24 = arith.constant 24 : index
        %c28 = arith.constant 28 : index
        scf.for %arg17 = %c24 to %c28 step %c1_22 {
          scf.for %arg18 = %c0_20 to %c32_21 step %c1_22 {
            %74 = memref.load %arg8[%arg17, %arg18] : memref<32x32xf32, #map>
            %75 = arith.bitcast %74 : f32 to i32
            %76 = arith.andi %75, %arg9 : i32
            %77 = arith.ori %75, %arg10 : i32
            %78 = arith.cmpi ugt, %76, %arg11 : i32
            %79 = arith.select %78, %77, %75 : i32
            %80 = arith.addi %75, %arg12 : i32
            %81 = arith.shrui %75, %arg13 : i32
            %82 = arith.andi %81, %arg14 : i32
            %83 = arith.addi %80, %82 : i32
            %84 = arith.andi %83, %arg15 : i32
            %85 = arith.cmpi uge, %76, %arg11 : i32
            %86 = arith.select %85, %79, %84 : i32
            %87 = arith.bitcast %86 : i32 to f32
            memref.store %87, %arg16[%arg17, %arg18] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%70, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%69 : memref<32x32xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<32x32xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x32xf32, #map>):
        %c0_20 = arith.constant 0 : index
        %c32_21 = arith.constant 32 : index
        %c1_22 = arith.constant 1 : index
        %c28 = arith.constant 28 : index
        scf.for %arg17 = %c28 to %c32_21 step %c1_22 {
          scf.for %arg18 = %c0_20 to %c32_21 step %c1_22 {
            %74 = memref.load %arg8[%arg17, %arg18] : memref<32x32xf32, #map>
            %75 = arith.bitcast %74 : f32 to i32
            %76 = arith.andi %75, %arg9 : i32
            %77 = arith.ori %75, %arg10 : i32
            %78 = arith.cmpi ugt, %76, %arg11 : i32
            %79 = arith.select %78, %77, %75 : i32
            %80 = arith.addi %75, %arg12 : i32
            %81 = arith.shrui %75, %arg13 : i32
            %82 = arith.andi %81, %arg14 : i32
            %83 = arith.addi %80, %82 : i32
            %84 = arith.andi %83, %arg15 : i32
            %85 = arith.cmpi uge, %76, %arg11 : i32
            %86 = arith.select %85, %79, %84 : i32
            %87 = arith.bitcast %86 : i32 to f32
            memref.store %87, %arg16[%arg17, %arg18] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 14)
      sdnn.core_arrive(3, 17)
      %71 = arith.muli %35, %c8192 : index
      %72 = arith.addi %71, %38 : index
      %reinterpret_cast_16 = memref.reinterpret_cast %arg3 to offset: [%72], sizes: [32, 32], strides: [256, 1] : memref<*xbf16, 1> to memref<32x32xbf16, strided<[256, 1], offset: ?>, 1>
      %73 = arith.minsi %61, %c32 : index
      %subview_17 = memref.subview %reinterpret_cast_16[0, 0] [%73, %67] [1, 1] : memref<32x32xbf16, strided<[256, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[256, 1], offset: ?>, 1>
      %cast_18 = memref.cast %subview_17 : memref<?x?xbf16, strided<[256, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, 1], offset: ?>, 1>
      %subview_19 = memref.subview %69[0, 0] [%73, %67] [1, 1] : memref<32x32xf32, #map> to memref<?x?xf32, strided<[32, 1]>>
      sdnn.dma out %subview_19, %cast_18 {signal = array<i32: 18>, wait = array<i32: 17>} : memref<?x?xf32, strided<[32, 1]>> memref<?x?xbf16, strided<[?, 1], offset: ?>, 1> -> 
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
