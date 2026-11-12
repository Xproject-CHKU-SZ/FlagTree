#map = affine_map<(d0, d1) -> (d0 * 32 + d1)>
#map1 = affine_map<(d0, d1) -> (d0 * 64 + d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1)>
module {
  llvm.func @llvm.xpu.sync_core(i32) attributes {passthrough = ["convergent", "noduplicate"]}
  llvm.func @llvm.xpu.xfence()
  llvm.func @llvm.xpu.mfence.v2(i32)
  func.func @triton_mm(%arg0: memref<*xbf16, 1> {tt.divisibility = 16 : i32}, %arg1: memref<*xbf16, 1> {tt.divisibility = 16 : i32}, %arg2: memref<*xbf16, 1> {tt.divisibility = 16 : i32}, %arg3: i32, %arg4: i32, %arg5: i32) {
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
    "sdnn.init"() {signal = [array<i32: 11, 5, 3, 9, 7, 13>], signal_num = array<i64: 2, 2, 2, 2, 2, 2>} : () -> ()
    %0 = sdnn.get_sdnn_id : i32
    %1 = sdnn.get_num_sdnn : i32
    %2 = arith.muli %arg3, %arg4 : i32
    %3 = arith.muli %2, %arg5 : i32
    %4 = arith.subi %1, %c1_i32 : i32
    %5 = arith.addi %3, %4 : i32
    %6 = arith.divsi %5, %1 : i32
    %7 = arith.muli %0, %6 : i32
    %8 = arith.addi %7, %6 : i32
    %9 = arith.minsi %8, %3 : i32
    %10 = arith.index_cast %7 : i32 to index
    %11 = arith.index_cast %9 : i32 to index
    %12 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    %13 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    %14 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    %15 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    %16 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    %17 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    scf.for %arg6 = %10 to %11 step %c1 {
      %18 = arith.index_cast %arg6 : index to i32
      %19 = arith.divsi %18, %arg5 : i32
      %20 = arith.divsi %19, %arg4 : i32
      %alloc = memref.alloc() {bufferNum = 2 : index, bufferSize = 4096 : index, init_signal = 11 : i64, processed, sram = "uni_sram"} : memref<32x32xf32, #map>
      %21 = sdnn.get_fifo_buffer %alloc, %17, {bufferNum = 2 : i32, bufferSize = 4096 : i32} : memref<32x32xf32, #map> memref<1xi32, 6> to memref<32x32xf32, #map>
      %22 = arith.divsi %20, %c64_i32 : i32
      %23 = arith.muli %22, %c8_i32 : i32
      %24 = arith.subi %c1_i32, %23 : i32
      %25 = arith.minsi %24, %c8_i32 : i32
      %26 = arith.remsi %20, %25 : i32
      %27 = arith.addi %23, %26 : i32
      %28 = arith.remsi %20, %c64_i32 : i32
      %29 = arith.divsi %28, %25 : i32
      %30 = arith.cmpi sge, %27, %c0_i32 : i32
      llvm.intr.assume %30 : i1
      %31 = arith.cmpi sge, %29, %c0_i32 : i32
      llvm.intr.assume %31 : i1
      %32 = arith.muli %27, %c32_i32 : i32
      %33 = arith.index_cast %27 : i32 to index
      %34 = arith.muli %29, %c32_i32 : i32
      %35 = arith.index_cast %29 : i32 to index
      %36 = arith.muli %35, %c32 : index
      %37 = arith.muli %33, %c2048 : index
      %38 = arith.cmpi sge, %37, %c2048 : index
      %39 = arith.divsi %37, %c2048 : index
      %40 = arith.muli %39, %c2048 : index
      %41 = arith.subi %37, %40 : index
      %42 = arith.select %38, %41, %37 : index
      %43 = arith.divsi %42, %c64 : index
      %44 = arith.addi %43, %c32 : index
      %45 = arith.minsi %44, %c32 : index
      %46 = arith.subi %45, %43 : index
      %reinterpret_cast = memref.reinterpret_cast %arg0 to offset: [%37], sizes: [%46, 64], strides: [64, 1] : memref<*xbf16, 1> to memref<?x64xbf16, strided<[64, 1], offset: ?>, 1>
      %cast = memref.cast %reinterpret_cast : memref<?x64xbf16, strided<[64, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
      %alloc_0 = memref.alloc() {bufferNum = 2 : index, bufferSize = 8192 : index, init_signal = 5 : i64, processed, sram = "l1d"} : memref<32x64xf32, #map1, 3>
      %47 = sdnn.get_fifo_buffer %alloc_0, %16, {bufferNum = 2 : i32, bufferSize = 8192 : i32} : memref<32x64xf32, #map1, 3> memref<1xi32, 6> to memref<32x64xf32, #map1, 3>
      %alloc_1 = memref.alloc() {bufferNum = 2 : index, bufferSize = 8192 : index, init_signal = 3 : i64, processed, sram = "uni_sram", trans = false} : memref<32x64xf32, #map1>
      %48 = sdnn.get_fifo_buffer %alloc_1, %15, {bufferNum = 2 : i32, bufferSize = 8192 : i32} : memref<32x64xf32, #map1> memref<1xi32, 6> to memref<32x64xf32, #map1>
      %dim = memref.dim %reinterpret_cast, %c0 : memref<?x64xbf16, strided<[64, 1], offset: ?>, 1>
      %subview = memref.subview %48[0, 0] [%dim, 64] [1, 1] : memref<32x64xf32, #map1> to memref<?x64xf32, strided<[64, 1]>>
      %cast_2 = memref.cast %subview : memref<?x64xf32, strided<[64, 1]>> to memref<?x?xf32, strided<[64, 1]>>
      sdnn.dma in %cast, %cast_2 {core_id = 1 : i32, signal = array<i32: 2>, wait = array<i32: 3>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[64, 1]>> -> 
      sdnn.ds %48, %47 mask_dims[%c32, %c64] {sdnn.layout = "CR_RowMajor", signal = array<i32: 3, 4>, signal_cached = array<i32: 4>, wait = array<i32: 2, 5>, wait_cached = array<i32: 5>} : memref<32x64xf32, #map1> memref<32x64xf32, #map1, 3> -> 
      %49 = arith.remsi %36, %c256 : index
      %50 = arith.addi %49, %c32 : index
      %51 = arith.minsi %50, %c256 : index
      %52 = arith.subi %51, %49 : index
      %reinterpret_cast_3 = memref.reinterpret_cast %arg1 to offset: [%36], sizes: [64, %52], strides: [256, 1] : memref<*xbf16, 1> to memref<64x?xbf16, strided<[256, 1], offset: ?>, 1>
      %cast_4 = memref.cast %reinterpret_cast_3 : memref<64x?xbf16, strided<[256, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
      %alloc_5 = memref.alloc() {bufferNum = 2 : index, bufferSize = 8192 : index, init_signal = 9 : i64, processed, sram = "l1w"} : memref<64x32xf32, #map, 4>
      %53 = sdnn.get_fifo_buffer %alloc_5, %14, {bufferNum = 2 : i32, bufferSize = 8192 : i32} : memref<64x32xf32, #map, 4> memref<1xi32, 6> to memref<64x32xf32, #map, 4>
      %alloc_6 = memref.alloc() {bufferNum = 2 : index, bufferSize = 8192 : index, init_signal = 7 : i64, processed, sram = "uni_sram", trans = false} : memref<64x32xf32, #map>
      %54 = sdnn.get_fifo_buffer %alloc_6, %13, {bufferNum = 2 : i32, bufferSize = 8192 : i32} : memref<64x32xf32, #map> memref<1xi32, 6> to memref<64x32xf32, #map>
      %dim_7 = memref.dim %reinterpret_cast_3, %c1 : memref<64x?xbf16, strided<[256, 1], offset: ?>, 1>
      %subview_8 = memref.subview %54[0, 0] [64, %dim_7] [1, 1] : memref<64x32xf32, #map> to memref<64x?xf32, strided<[32, 1]>>
      %cast_9 = memref.cast %subview_8 : memref<64x?xf32, strided<[32, 1]>> to memref<?x?xf32, strided<[32, 1]>>
      sdnn.dma in %cast_4, %cast_9 {core_id = 6 : i32, signal = array<i32: 6>, wait = array<i32: 7>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[32, 1]>> -> 
      sdnn.ds %54, %53 mask_dims[%c64, %c32] {sdnn.layout = "CR_RowMajor", signal = array<i32: 7, 8>, signal_cached = array<i32: 8>, wait = array<i32: 6, 9>, wait_cached = array<i32: 9>} : memref<64x32xf32, #map> memref<64x32xf32, #map, 4> -> 
      sdnn.mma %47, %53, %21 acc %c0_i32 mask_dims[%c32, %c32, %c64] {indexing_maps = [#map2, #map3, #map4], rcOut = false, sdnn.layout = "CR_RowMajor", signal = array<i32: 5, 9, 10>, wait = array<i32: 4, 8, 11>} : (memref<32x64xf32, #map1, 3>, memref<64x32xf32, #map, 4>, memref<32x32xf32, #map>, i32, index, index, index) -> ()
      %55 = arith.muli %33, %c8192 : index
      %56 = arith.addi %55, %36 : index
      %reinterpret_cast_10 = memref.reinterpret_cast %arg2 to offset: [%56], sizes: [32, 32], strides: [256, 1] : memref<*xbf16, 1> to memref<32x32xbf16, strided<[256, 1], offset: ?>, 1>
      %alloc_11 = memref.alloc() {bufferNum = 2 : index, bufferSize = 4096 : index, init_signal = 13 : i64, processed, sram = "uni_sram"} : memref<32x32xf32, #map>
      %57 = sdnn.get_fifo_buffer %alloc_11, %12, {bufferNum = 2 : i32, bufferSize = 4096 : i32} : memref<32x32xf32, #map> memref<1xi32, 6> to memref<32x32xf32, #map>
      sdnn.core_wait(3, 10)
      sdnn.core_wait(3, 13)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%21, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%57 : memref<32x32xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<32x32xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<32x32xf32, #map>):
        %c0_15 = arith.constant 0 : index
        %c32_16 = arith.constant 32 : index
        %c1_17 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        scf.for %arg16 = %c0_15 to %c4 step %c1_17 {
          scf.for %arg17 = %c0_15 to %c32_16 step %c1_17 {
            %70 = memref.load %arg7[%arg16, %arg17] : memref<32x32xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg8 : i32
            %73 = arith.ori %71, %arg9 : i32
            %74 = arith.cmpi ugt, %72, %arg10 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg11 : i32
            %77 = arith.shrui %71, %arg12 : i32
            %78 = arith.andi %77, %arg13 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg14 : i32
            %81 = arith.cmpi uge, %72, %arg10 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg15[%arg16, %arg17] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%21, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%57 : memref<32x32xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<32x32xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<32x32xf32, #map>):
        %c0_15 = arith.constant 0 : index
        %c32_16 = arith.constant 32 : index
        %c1_17 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        %c8 = arith.constant 8 : index
        scf.for %arg16 = %c4 to %c8 step %c1_17 {
          scf.for %arg17 = %c0_15 to %c32_16 step %c1_17 {
            %70 = memref.load %arg7[%arg16, %arg17] : memref<32x32xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg8 : i32
            %73 = arith.ori %71, %arg9 : i32
            %74 = arith.cmpi ugt, %72, %arg10 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg11 : i32
            %77 = arith.shrui %71, %arg12 : i32
            %78 = arith.andi %77, %arg13 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg14 : i32
            %81 = arith.cmpi uge, %72, %arg10 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg15[%arg16, %arg17] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%21, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%57 : memref<32x32xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<32x32xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<32x32xf32, #map>):
        %c0_15 = arith.constant 0 : index
        %c32_16 = arith.constant 32 : index
        %c1_17 = arith.constant 1 : index
        %c8 = arith.constant 8 : index
        %c12 = arith.constant 12 : index
        scf.for %arg16 = %c8 to %c12 step %c1_17 {
          scf.for %arg17 = %c0_15 to %c32_16 step %c1_17 {
            %70 = memref.load %arg7[%arg16, %arg17] : memref<32x32xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg8 : i32
            %73 = arith.ori %71, %arg9 : i32
            %74 = arith.cmpi ugt, %72, %arg10 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg11 : i32
            %77 = arith.shrui %71, %arg12 : i32
            %78 = arith.andi %77, %arg13 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg14 : i32
            %81 = arith.cmpi uge, %72, %arg10 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg15[%arg16, %arg17] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%21, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%57 : memref<32x32xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<32x32xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<32x32xf32, #map>):
        %c0_15 = arith.constant 0 : index
        %c32_16 = arith.constant 32 : index
        %c1_17 = arith.constant 1 : index
        %c12 = arith.constant 12 : index
        %c16 = arith.constant 16 : index
        scf.for %arg16 = %c12 to %c16 step %c1_17 {
          scf.for %arg17 = %c0_15 to %c32_16 step %c1_17 {
            %70 = memref.load %arg7[%arg16, %arg17] : memref<32x32xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg8 : i32
            %73 = arith.ori %71, %arg9 : i32
            %74 = arith.cmpi ugt, %72, %arg10 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg11 : i32
            %77 = arith.shrui %71, %arg12 : i32
            %78 = arith.andi %77, %arg13 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg14 : i32
            %81 = arith.cmpi uge, %72, %arg10 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg15[%arg16, %arg17] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%21, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%57 : memref<32x32xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<32x32xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<32x32xf32, #map>):
        %c0_15 = arith.constant 0 : index
        %c32_16 = arith.constant 32 : index
        %c1_17 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        %c20 = arith.constant 20 : index
        scf.for %arg16 = %c16 to %c20 step %c1_17 {
          scf.for %arg17 = %c0_15 to %c32_16 step %c1_17 {
            %70 = memref.load %arg7[%arg16, %arg17] : memref<32x32xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg8 : i32
            %73 = arith.ori %71, %arg9 : i32
            %74 = arith.cmpi ugt, %72, %arg10 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg11 : i32
            %77 = arith.shrui %71, %arg12 : i32
            %78 = arith.andi %77, %arg13 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg14 : i32
            %81 = arith.cmpi uge, %72, %arg10 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg15[%arg16, %arg17] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%21, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%57 : memref<32x32xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<32x32xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<32x32xf32, #map>):
        %c0_15 = arith.constant 0 : index
        %c32_16 = arith.constant 32 : index
        %c1_17 = arith.constant 1 : index
        %c20 = arith.constant 20 : index
        %c24 = arith.constant 24 : index
        scf.for %arg16 = %c20 to %c24 step %c1_17 {
          scf.for %arg17 = %c0_15 to %c32_16 step %c1_17 {
            %70 = memref.load %arg7[%arg16, %arg17] : memref<32x32xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg8 : i32
            %73 = arith.ori %71, %arg9 : i32
            %74 = arith.cmpi ugt, %72, %arg10 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg11 : i32
            %77 = arith.shrui %71, %arg12 : i32
            %78 = arith.andi %77, %arg13 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg14 : i32
            %81 = arith.cmpi uge, %72, %arg10 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg15[%arg16, %arg17] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%21, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%57 : memref<32x32xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<32x32xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<32x32xf32, #map>):
        %c0_15 = arith.constant 0 : index
        %c32_16 = arith.constant 32 : index
        %c1_17 = arith.constant 1 : index
        %c24 = arith.constant 24 : index
        %c28 = arith.constant 28 : index
        scf.for %arg16 = %c24 to %c28 step %c1_17 {
          scf.for %arg17 = %c0_15 to %c32_16 step %c1_17 {
            %70 = memref.load %arg7[%arg16, %arg17] : memref<32x32xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg8 : i32
            %73 = arith.ori %71, %arg9 : i32
            %74 = arith.cmpi ugt, %72, %arg10 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg11 : i32
            %77 = arith.shrui %71, %arg12 : i32
            %78 = arith.andi %77, %arg13 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg14 : i32
            %81 = arith.cmpi uge, %72, %arg10 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg15[%arg16, %arg17] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%21, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%57 : memref<32x32xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<32x32xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<32x32xf32, #map>):
        %c0_15 = arith.constant 0 : index
        %c32_16 = arith.constant 32 : index
        %c1_17 = arith.constant 1 : index
        %c28 = arith.constant 28 : index
        scf.for %arg16 = %c28 to %c32_16 step %c1_17 {
          scf.for %arg17 = %c0_15 to %c32_16 step %c1_17 {
            %70 = memref.load %arg7[%arg16, %arg17] : memref<32x32xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg8 : i32
            %73 = arith.ori %71, %arg9 : i32
            %74 = arith.cmpi ugt, %72, %arg10 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg11 : i32
            %77 = arith.shrui %71, %arg12 : i32
            %78 = arith.andi %77, %arg13 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg14 : i32
            %81 = arith.cmpi uge, %72, %arg10 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg15[%arg16, %arg17] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 11)
      sdnn.core_arrive(3, 12)
      %58 = arith.index_cast %32 : i32 to index
      %59 = arith.addi %58, %c32 : index
      %60 = arith.minsi %59, %c32 : index
      %61 = arith.maxsi %60, %58 : index
      %62 = arith.subi %61, %58 : index
      %63 = arith.index_cast %34 : i32 to index
      %64 = arith.addi %63, %c32 : index
      %65 = arith.minsi %64, %c256 : index
      %66 = arith.maxsi %65, %63 : index
      %67 = arith.subi %66, %63 : index
      %68 = arith.minsi %62, %c32 : index
      %69 = arith.minsi %67, %c32 : index
      %subview_12 = memref.subview %reinterpret_cast_10[0, 0] [%68, %69] [1, 1] : memref<32x32xbf16, strided<[256, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[256, 1], offset: ?>, 1>
      %cast_13 = memref.cast %subview_12 : memref<?x?xbf16, strided<[256, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, 1], offset: ?>, 1>
      %subview_14 = memref.subview %57[0, 0] [%68, %69] [1, 1] : memref<32x32xf32, #map> to memref<?x?xf32, strided<[32, 1]>>
      sdnn.dma out %subview_14, %cast_13 {signal = array<i32: 13>, wait = array<i32: 12>} : memref<?x?xf32, strided<[32, 1]>> memref<?x?xbf16, strided<[?, 1], offset: ?>, 1> -> 
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
