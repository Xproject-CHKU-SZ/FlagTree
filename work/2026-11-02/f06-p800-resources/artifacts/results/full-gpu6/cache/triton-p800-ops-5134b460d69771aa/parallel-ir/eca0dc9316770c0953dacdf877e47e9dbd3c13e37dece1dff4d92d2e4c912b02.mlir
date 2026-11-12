#map = affine_map<(d0, d1) -> (d0 * 32 + d1)>
#map1 = affine_map<(d0, d1) -> (d0 * 16 + d1)>
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
    %c32_i32 = arith.constant 32 : i32
    %c8_i32 = arith.constant 8 : i32
    %c4_i32 = arith.constant 4 : i32
    %c256_i32 = arith.constant 256 : i32
    %cst = arith.constant 1.000000e+00 : f32
    %c2147483647_i32 = arith.constant 2147483647 : i32
    %c2139095040_i32 = arith.constant 2139095040 : i32
    %c0_i32 = arith.constant 0 : i32
    %c2143289344_i32 = arith.constant 2143289344 : i32
    %c16_i32 = arith.constant 16 : i32
    %c1_i32 = arith.constant 1 : i32
    %c32767_i32 = arith.constant 32767 : i32
    %c-65536_i32 = arith.constant -65536 : i32
    %c32768 = arith.constant 32768 : index
    %c16384 = arith.constant 16384 : index
    %c4096 = arith.constant 4096 : index
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    %c1024 = arith.constant 1024 : index
    %c128 = arith.constant 128 : index
    %c4194304_i32 = arith.constant 4194304 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %reinterpret_cast = memref.reinterpret_cast %arg4 to offset: [0], sizes: [1024], strides: [1] : memref<*xf32, 1> to memref<1024xf32, 1>
    "sdnn.init"(%reinterpret_cast) {signal = [array<i32: 16, 11, 5, 3, 9, 7, 18, 22, 24, 26>], signal_num = array<i64: 1, 1, 255, 255, 255, 255, 1, 1, 1, 1>} : (memref<1024xf32, 1>) -> ()
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
    %12 = sdnn.counter {bufferNum = 255 : i32} : memref<1xi32, 6>
    %13 = sdnn.counter {bufferNum = 255 : i32} : memref<1xi32, 6>
    %14 = sdnn.counter {bufferNum = 255 : i32} : memref<1xi32, 6>
    %15 = sdnn.counter {bufferNum = 255 : i32} : memref<1xi32, 6>
    scf.for %arg8 = %10 to %11 step %c1 {
      %16 = arith.index_cast %arg8 : index to i32
      %17 = arith.divsi %16, %arg7 : i32
      %18 = arith.divsi %17, %arg6 : i32
      %19 = arith.divsi %18, %c256_i32 : i32
      %20 = arith.muli %19, %c8_i32 : i32
      %21 = arith.subi %c4_i32, %20 : i32
      %22 = arith.minsi %21, %c8_i32 : i32
      %23 = arith.remsi %18, %22 : i32
      %24 = arith.addi %20, %23 : i32
      %25 = arith.remsi %18, %c256_i32 : i32
      %26 = arith.divsi %25, %22 : i32
      %27 = arith.cmpi sge, %24, %c0_i32 : i32
      llvm.intr.assume %27 : i1
      %28 = arith.cmpi sge, %26, %c0_i32 : i32
      llvm.intr.assume %28 : i1
      %29 = arith.muli %24, %c32_i32 : i32
      %30 = arith.index_cast %24 : i32 to index
      %31 = arith.muli %26, %c32_i32 : i32
      %32 = arith.index_cast %26 : i32 to index
      %33 = arith.muli %32, %c32 : index
      %alloca = memref.alloca() : memref<1xi32>
      memref.store %c0_i32, %alloca[%c0] : memref<1xi32>
      %alloc = memref.alloc() {bufferNum = 1 : index, bufferSize = 4096 : index, init_signal = 16 : i64, sram = "uni_sram"} : memref<32x32xf32, #map>
      %alloc_0 = memref.alloc() {bufferNum = 1 : index, bufferSize = 4096 : index, init_signal = 11 : i64, pingpong_single, sram = "uni_sram"} : memref<32x32xf32, #map>
      sdnn.core_wait(4, 11) {core_name = "mma"}
      scf.for %arg9 = %c0_i32 to %c8_i32 step %c1_i32  : i32 {
        %48 = arith.index_cast %arg9 : i32 to index
        %49 = arith.muli %48, %c16 : index
        %50 = arith.muli %30, %c4096 : index
        %51 = arith.addi %50, %49 : index
        %52 = arith.cmpi sge, %51, %c16384 : index
        %53 = arith.divsi %51, %c16384 : index
        %54 = arith.muli %53, %c16384 : index
        %55 = arith.subi %51, %54 : index
        %56 = arith.select %52, %55, %51 : index
        %57 = arith.divsi %56, %c128 : index
        %58 = arith.addi %57, %c32 : index
        %59 = arith.minsi %58, %c128 : index
        %60 = arith.subi %59, %57 : index
        %reinterpret_cast_10 = memref.reinterpret_cast %arg0 to offset: [%51], sizes: [%60, 16], strides: [128, 1] : memref<*xbf16, 1> to memref<?x16xbf16, strided<[128, 1], offset: ?>, 1>
        %cast_11 = memref.cast %reinterpret_cast_10 : memref<?x16xbf16, strided<[128, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
        %alloc_12 = memref.alloc() {bufferNum = 255 : index, bufferSize = 2048 : index, init_signal = 5 : i64, processed, sram = "l1d"} : memref<32x16xf32, #map1, 3>
        %61 = sdnn.get_fifo_buffer %alloc_12, %15, {bufferNum = 255 : i32, bufferSize = 2048 : i32} : memref<32x16xf32, #map1, 3> memref<1xi32, 6> to memref<32x16xf32, #map1, 3>
        %alloc_13 = memref.alloc() {bufferNum = 255 : index, bufferSize = 4096 : index, init_signal = 3 : i64, processed, sram = "uni_sram", trans = false} : memref<32x16xf32, #map>
        %62 = sdnn.get_fifo_buffer %alloc_13, %14, {bufferNum = 255 : i32, bufferSize = 4096 : i32} : memref<32x16xf32, #map> memref<1xi32, 6> to memref<32x16xf32, #map>
        %dim = memref.dim %reinterpret_cast_10, %c0 : memref<?x16xbf16, strided<[128, 1], offset: ?>, 1>
        %subview_14 = memref.subview %62[0, 0] [%dim, 16] [1, 1] : memref<32x16xf32, #map> to memref<?x16xf32, strided<[32, 1]>>
        %cast_15 = memref.cast %subview_14 : memref<?x16xf32, strided<[32, 1]>> to memref<?x?xf32, strided<[32, 1]>>
        sdnn.dma in %cast_11, %cast_15 {core_id = 1 : i32, signal = array<i32: 2>, wait = array<i32: 3>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[32, 1]>> -> 
        sdnn.ds %62, %61 mask_dims[%c32, %c16] {sdnn.layout = "CR_RowMajor", signal = array<i32: 3, 4>, signal_cached = array<i32: 4>, wait = array<i32: 2, 5>, wait_cached = array<i32: 5>} : memref<32x16xf32, #map> memref<32x16xf32, #map1, 3> -> 
        %63 = arith.muli %48, %c16384 : index
        %64 = arith.addi %63, %33 : index
        %65 = arith.remsi %64, %c1024 : index
        %66 = arith.addi %65, %c32 : index
        %67 = arith.minsi %66, %c1024 : index
        %68 = arith.subi %67, %65 : index
        %reinterpret_cast_16 = memref.reinterpret_cast %arg1 to offset: [%64], sizes: [16, %68], strides: [1024, 1] : memref<*xbf16, 1> to memref<16x?xbf16, strided<[1024, 1], offset: ?>, 1>
        %cast_17 = memref.cast %reinterpret_cast_16 : memref<16x?xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
        %alloc_18 = memref.alloc() {bufferNum = 255 : index, bufferSize = 2048 : index, init_signal = 9 : i64, processed, sram = "l1w"} : memref<16x32xf32, #map, 4>
        %69 = sdnn.get_fifo_buffer %alloc_18, %13, {bufferNum = 255 : i32, bufferSize = 2048 : i32} : memref<16x32xf32, #map, 4> memref<1xi32, 6> to memref<16x32xf32, #map, 4>
        %alloc_19 = memref.alloc() {bufferNum = 255 : index, bufferSize = 2048 : index, init_signal = 7 : i64, processed, sram = "uni_sram", trans = false} : memref<16x32xf32, #map>
        %70 = sdnn.get_fifo_buffer %alloc_19, %12, {bufferNum = 255 : i32, bufferSize = 2048 : i32} : memref<16x32xf32, #map> memref<1xi32, 6> to memref<16x32xf32, #map>
        %dim_20 = memref.dim %reinterpret_cast_16, %c1 : memref<16x?xbf16, strided<[1024, 1], offset: ?>, 1>
        %subview_21 = memref.subview %70[0, 0] [16, %dim_20] [1, 1] : memref<16x32xf32, #map> to memref<16x?xf32, strided<[32, 1]>>
        %cast_22 = memref.cast %subview_21 : memref<16x?xf32, strided<[32, 1]>> to memref<?x?xf32, strided<[32, 1]>>
        sdnn.dma in %cast_17, %cast_22 {core_id = 6 : i32, signal = array<i32: 6>, wait = array<i32: 7>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[32, 1]>> -> 
        sdnn.ds %70, %69 mask_dims[%c16, %c32] {sdnn.layout = "CR_RowMajor", signal = array<i32: 7, 8>, signal_cached = array<i32: 8>, wait = array<i32: 6, 9>, wait_cached = array<i32: 9>} : memref<16x32xf32, #map> memref<16x32xf32, #map, 4> -> 
        %71 = memref.load %alloca[%c0] : memref<1xi32>
        sdnn.mma %61, %69, %alloc_0 acc %71 mask_dims[%c32, %c32, %c16] {indexing_maps = [#map2, #map3, #map4], rcOut = false, sdnn.layout = "CR_RowMajor", signal = array<i32: 5, 9>, wait = array<i32: 4, 8>} : (memref<32x16xf32, #map1, 3>, memref<16x32xf32, #map, 4>, memref<32x32xf32, #map>, i32, index, index, index) -> ()
        %72 = arith.addi %71, %c1_i32 : i32
        memref.store %72, %alloca[%c0] : memref<1xi32>
      } {mac_acc = true, sdnn.arg_layout.1 = "CR_RowMajor", sdnn.layout = "CR_RowMajor"}
      sdnn.core_arrive(4, 10) {core_name = "mma"}
      %reinterpret_cast_1 = memref.reinterpret_cast %arg2 to offset: [%33], sizes: [1, 32], strides: [32, 1] : memref<*xbf16, 1> to memref<1x32xbf16, strided<[32, 1], offset: ?>, 1>
      %34 = arith.index_cast %29 : i32 to index
      %35 = arith.addi %34, %c32 : index
      %36 = arith.minsi %35, %c128 : index
      %37 = arith.maxsi %36, %34 : index
      %38 = arith.subi %37, %34 : index
      %39 = arith.index_cast %31 : i32 to index
      %40 = arith.addi %39, %c32 : index
      %41 = arith.minsi %40, %c1024 : index
      %42 = arith.maxsi %41, %39 : index
      %43 = arith.subi %42, %39 : index
      %44 = arith.minsi %43, %c32 : index
      %alloc_2 = memref.alloc() {bufferNum = 1 : index, bufferSize = 128 : index, init_signal = 18 : i64, sram = "uni_sram", trans = false} : memref<1x32xf32, #map>
      %subview = memref.subview %reinterpret_cast_1[0, 0] [1, %44] [1, 1] : memref<1x32xbf16, strided<[32, 1], offset: ?>, 1> to memref<1x?xbf16, strided<[32, 1], offset: ?>, 1>
      sdnn.core_wait(3, 10)
      sdnn.core_wait(3, 16)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%alloc_0, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        scf.for %arg18 = %c0_10 to %c4 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg10 : i32
            %51 = arith.ori %49, %arg11 : i32
            %52 = arith.cmpi ugt, %50, %arg12 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg13 : i32
            %55 = arith.shrui %49, %arg14 : i32
            %56 = arith.andi %55, %arg15 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg16 : i32
            %59 = arith.cmpi uge, %50, %arg12 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_0, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        %c8 = arith.constant 8 : index
        scf.for %arg18 = %c4 to %c8 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg10 : i32
            %51 = arith.ori %49, %arg11 : i32
            %52 = arith.cmpi ugt, %50, %arg12 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg13 : i32
            %55 = arith.shrui %49, %arg14 : i32
            %56 = arith.andi %55, %arg15 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg16 : i32
            %59 = arith.cmpi uge, %50, %arg12 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_0, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c8 = arith.constant 8 : index
        %c12 = arith.constant 12 : index
        scf.for %arg18 = %c8 to %c12 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg10 : i32
            %51 = arith.ori %49, %arg11 : i32
            %52 = arith.cmpi ugt, %50, %arg12 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg13 : i32
            %55 = arith.shrui %49, %arg14 : i32
            %56 = arith.andi %55, %arg15 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg16 : i32
            %59 = arith.cmpi uge, %50, %arg12 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_0, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c12 = arith.constant 12 : index
        %c16_13 = arith.constant 16 : index
        scf.for %arg18 = %c12 to %c16_13 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg10 : i32
            %51 = arith.ori %49, %arg11 : i32
            %52 = arith.cmpi ugt, %50, %arg12 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg13 : i32
            %55 = arith.shrui %49, %arg14 : i32
            %56 = arith.andi %55, %arg15 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg16 : i32
            %59 = arith.cmpi uge, %50, %arg12 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_0, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c16_13 = arith.constant 16 : index
        %c20 = arith.constant 20 : index
        scf.for %arg18 = %c16_13 to %c20 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg10 : i32
            %51 = arith.ori %49, %arg11 : i32
            %52 = arith.cmpi ugt, %50, %arg12 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg13 : i32
            %55 = arith.shrui %49, %arg14 : i32
            %56 = arith.andi %55, %arg15 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg16 : i32
            %59 = arith.cmpi uge, %50, %arg12 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_0, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c20 = arith.constant 20 : index
        %c24 = arith.constant 24 : index
        scf.for %arg18 = %c20 to %c24 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg10 : i32
            %51 = arith.ori %49, %arg11 : i32
            %52 = arith.cmpi ugt, %50, %arg12 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg13 : i32
            %55 = arith.shrui %49, %arg14 : i32
            %56 = arith.andi %55, %arg15 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg16 : i32
            %59 = arith.cmpi uge, %50, %arg12 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_0, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c24 = arith.constant 24 : index
        %c28 = arith.constant 28 : index
        scf.for %arg18 = %c24 to %c28 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg10 : i32
            %51 = arith.ori %49, %arg11 : i32
            %52 = arith.cmpi ugt, %50, %arg12 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg13 : i32
            %55 = arith.shrui %49, %arg14 : i32
            %56 = arith.andi %55, %arg15 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg16 : i32
            %59 = arith.cmpi uge, %50, %arg12 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_0, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c28 = arith.constant 28 : index
        scf.for %arg18 = %c28 to %c32_11 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg10 : i32
            %51 = arith.ori %49, %arg11 : i32
            %52 = arith.cmpi ugt, %50, %arg12 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg13 : i32
            %55 = arith.shrui %49, %arg14 : i32
            %56 = arith.andi %55, %arg15 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg16 : i32
            %59 = arith.cmpi uge, %50, %arg12 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 11)
      sdnn.core_arrive(3, 12)
      %subview_3 = memref.subview %alloc_2[0, 0] [1, %44] [1, 1] : memref<1x32xf32, #map> to memref<1x?xf32, strided<[32, 1]>>
      sdnn.dma in %subview, %subview_3 {core_id = 1 : i32, signal = array<i32: 17>, wait = array<i32: 18>} : memref<1x?xbf16, strided<[32, 1], offset: ?>, 1> memref<1x?xf32, strided<[32, 1]>> -> 
      sdnn.ew linear %alloc src0 %alloc src1 %alloc_2 a %cst b %cst {sdnn.layout = "CR_RowMajor", signal = array<i32: 13, 18>, wait = array<i32: 12, 17>} : (memref<32x32xf32, #map>, memref<32x32xf32, #map>, memref<1x32xf32, #map>, f32, f32) -> ()
      %alloc_4 = memref.alloc() {bufferNum = 1 : index, bufferSize = 4096 : index, init_signal = 22 : i64, sram = "uni_sram"} : memref<32x32xf32, #map>
      sdnn.core_wait(3, 13)
      sdnn.core_wait(3, 22)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%alloc, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc_4 : memref<32x32xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        scf.for %arg18 = %c0_10 to %c4 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg10 : i32
            %51 = arith.ori %49, %arg11 : i32
            %52 = arith.cmpi ugt, %50, %arg12 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg13 : i32
            %55 = arith.shrui %49, %arg14 : i32
            %56 = arith.andi %55, %arg15 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg16 : i32
            %59 = arith.cmpi uge, %50, %arg12 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc_4 : memref<32x32xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        %c8 = arith.constant 8 : index
        scf.for %arg18 = %c4 to %c8 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg10 : i32
            %51 = arith.ori %49, %arg11 : i32
            %52 = arith.cmpi ugt, %50, %arg12 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg13 : i32
            %55 = arith.shrui %49, %arg14 : i32
            %56 = arith.andi %55, %arg15 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg16 : i32
            %59 = arith.cmpi uge, %50, %arg12 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc_4 : memref<32x32xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c8 = arith.constant 8 : index
        %c12 = arith.constant 12 : index
        scf.for %arg18 = %c8 to %c12 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg10 : i32
            %51 = arith.ori %49, %arg11 : i32
            %52 = arith.cmpi ugt, %50, %arg12 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg13 : i32
            %55 = arith.shrui %49, %arg14 : i32
            %56 = arith.andi %55, %arg15 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg16 : i32
            %59 = arith.cmpi uge, %50, %arg12 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc_4 : memref<32x32xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c12 = arith.constant 12 : index
        %c16_13 = arith.constant 16 : index
        scf.for %arg18 = %c12 to %c16_13 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg10 : i32
            %51 = arith.ori %49, %arg11 : i32
            %52 = arith.cmpi ugt, %50, %arg12 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg13 : i32
            %55 = arith.shrui %49, %arg14 : i32
            %56 = arith.andi %55, %arg15 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg16 : i32
            %59 = arith.cmpi uge, %50, %arg12 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc_4 : memref<32x32xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c16_13 = arith.constant 16 : index
        %c20 = arith.constant 20 : index
        scf.for %arg18 = %c16_13 to %c20 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg10 : i32
            %51 = arith.ori %49, %arg11 : i32
            %52 = arith.cmpi ugt, %50, %arg12 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg13 : i32
            %55 = arith.shrui %49, %arg14 : i32
            %56 = arith.andi %55, %arg15 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg16 : i32
            %59 = arith.cmpi uge, %50, %arg12 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc_4 : memref<32x32xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c20 = arith.constant 20 : index
        %c24 = arith.constant 24 : index
        scf.for %arg18 = %c20 to %c24 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg10 : i32
            %51 = arith.ori %49, %arg11 : i32
            %52 = arith.cmpi ugt, %50, %arg12 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg13 : i32
            %55 = arith.shrui %49, %arg14 : i32
            %56 = arith.andi %55, %arg15 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg16 : i32
            %59 = arith.cmpi uge, %50, %arg12 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc_4 : memref<32x32xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c24 = arith.constant 24 : index
        %c28 = arith.constant 28 : index
        scf.for %arg18 = %c24 to %c28 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg10 : i32
            %51 = arith.ori %49, %arg11 : i32
            %52 = arith.cmpi ugt, %50, %arg12 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg13 : i32
            %55 = arith.shrui %49, %arg14 : i32
            %56 = arith.andi %55, %arg15 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg16 : i32
            %59 = arith.cmpi uge, %50, %arg12 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc_4 : memref<32x32xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c28 = arith.constant 28 : index
        scf.for %arg18 = %c28 to %c32_11 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg18, %arg19] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg10 : i32
            %51 = arith.ori %49, %arg11 : i32
            %52 = arith.cmpi ugt, %50, %arg12 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg13 : i32
            %55 = arith.shrui %49, %arg14 : i32
            %56 = arith.andi %55, %arg15 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg16 : i32
            %59 = arith.cmpi uge, %50, %arg12 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg17[%arg18, %arg19] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 14)
      sdnn.core_arrive(3, 21)
      sdnn.core_arrive(3, 19)
      %alloc_5 = memref.alloc() {bufferNum = 1 : index, bufferSize = 4096 : index, init_signal = 24 : i64, sram = "uni_sram"} : memref<32x32xf32, #map>
      sdnn.ew lut %alloc_5 src0 %alloc_4 lut_func sigmoid {kOverflow = 0.000000e+00 : f32, kUnderflow = 0.000000e+00 : f32, lut_max = 15.984375 : f32, lut_min = 0.000000e+00 : f32, packedid = 165954 : ui32, sdnn.layout = "CR_RowMajor", wait = array<i32: 19, 24>} : (memref<32x32xf32, #map>, memref<32x32xf32, #map>) -> ()
      %alloc_6 = memref.alloc() {bufferNum = 1 : index, bufferSize = 4096 : index, init_signal = 26 : i64, sram = "uni_sram"} : memref<32x32xf32, #map>
      sdnn.ew mul %alloc_6 src0 %alloc_4 src1 %alloc_5 {sdnn.layout = "CR_RowMajor", signal = array<i32: 20, 23, 25>, wait = array<i32: 21, 26>} : (memref<32x32xf32, #map>, memref<32x32xf32, #map>, memref<32x32xf32, #map>) -> ()
      sdnn.core_wait(3, 14)
      sdnn.core_wait(3, 20)
      sdnn.core_wait(3, 23)
      sdnn.core_wait(3, 25)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%alloc_4, %alloc_5, %alloc_6, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, memref<32x32xf32, #map>, memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: memref<32x32xf32, #map>, %arg11: memref<32x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        scf.for %arg22 = %c0_10 to %c4 step %c1_12 {
          scf.for %arg23 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg22, %arg23] : memref<32x32xf32, #map>
            %49 = memref.load %arg10[%arg22, %arg23] : memref<32x32xf32, #map>
            %50 = memref.load %arg11[%arg22, %arg23] : memref<32x32xf32, #map>
            %51 = arith.bitcast %50 : f32 to i32
            %52 = arith.bitcast %49 : f32 to i32
            %53 = arith.andi %52, %arg12 : i32
            %54 = arith.bitcast %48 : f32 to i32
            %55 = arith.andi %54, %arg12 : i32
            %56 = arith.cmpi eq, %55, %arg13 : i32
            %57 = arith.cmpi eq, %53, %arg14 : i32
            %58 = arith.andi %56, %57 : i1
            %59 = arith.cmpi eq, %53, %arg13 : i32
            %60 = arith.cmpi eq, %55, %arg14 : i32
            %61 = arith.andi %59, %60 : i1
            %62 = arith.ori %58, %61 : i1
            %63 = arith.cmpi ugt, %55, %arg13 : i32
            %64 = arith.cmpi ugt, %53, %arg13 : i32
            %65 = arith.ori %63, %64 : i1
            %66 = arith.ori %62, %65 : i1
            %67 = arith.select %66, %arg15, %51 : i32
            %68 = arith.andi %67, %arg12 : i32
            %69 = arith.ori %67, %arg16 : i32
            %70 = arith.cmpi ugt, %68, %arg13 : i32
            %71 = arith.select %70, %69, %67 : i32
            %72 = arith.addi %67, %arg17 : i32
            %73 = arith.shrui %67, %arg18 : i32
            %74 = arith.andi %73, %arg19 : i32
            %75 = arith.addi %72, %74 : i32
            %76 = arith.andi %75, %arg20 : i32
            %77 = arith.cmpi uge, %68, %arg13 : i32
            %78 = arith.select %77, %71, %76 : i32
            %79 = arith.bitcast %78 : i32 to f32
            memref.store %79, %arg21[%arg22, %arg23] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_4, %alloc_5, %alloc_6, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, memref<32x32xf32, #map>, memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: memref<32x32xf32, #map>, %arg11: memref<32x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        %c8 = arith.constant 8 : index
        scf.for %arg22 = %c4 to %c8 step %c1_12 {
          scf.for %arg23 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg22, %arg23] : memref<32x32xf32, #map>
            %49 = memref.load %arg10[%arg22, %arg23] : memref<32x32xf32, #map>
            %50 = memref.load %arg11[%arg22, %arg23] : memref<32x32xf32, #map>
            %51 = arith.bitcast %50 : f32 to i32
            %52 = arith.bitcast %49 : f32 to i32
            %53 = arith.andi %52, %arg12 : i32
            %54 = arith.bitcast %48 : f32 to i32
            %55 = arith.andi %54, %arg12 : i32
            %56 = arith.cmpi eq, %55, %arg13 : i32
            %57 = arith.cmpi eq, %53, %arg14 : i32
            %58 = arith.andi %56, %57 : i1
            %59 = arith.cmpi eq, %53, %arg13 : i32
            %60 = arith.cmpi eq, %55, %arg14 : i32
            %61 = arith.andi %59, %60 : i1
            %62 = arith.ori %58, %61 : i1
            %63 = arith.cmpi ugt, %55, %arg13 : i32
            %64 = arith.cmpi ugt, %53, %arg13 : i32
            %65 = arith.ori %63, %64 : i1
            %66 = arith.ori %62, %65 : i1
            %67 = arith.select %66, %arg15, %51 : i32
            %68 = arith.andi %67, %arg12 : i32
            %69 = arith.ori %67, %arg16 : i32
            %70 = arith.cmpi ugt, %68, %arg13 : i32
            %71 = arith.select %70, %69, %67 : i32
            %72 = arith.addi %67, %arg17 : i32
            %73 = arith.shrui %67, %arg18 : i32
            %74 = arith.andi %73, %arg19 : i32
            %75 = arith.addi %72, %74 : i32
            %76 = arith.andi %75, %arg20 : i32
            %77 = arith.cmpi uge, %68, %arg13 : i32
            %78 = arith.select %77, %71, %76 : i32
            %79 = arith.bitcast %78 : i32 to f32
            memref.store %79, %arg21[%arg22, %arg23] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_4, %alloc_5, %alloc_6, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, memref<32x32xf32, #map>, memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: memref<32x32xf32, #map>, %arg11: memref<32x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c8 = arith.constant 8 : index
        %c12 = arith.constant 12 : index
        scf.for %arg22 = %c8 to %c12 step %c1_12 {
          scf.for %arg23 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg22, %arg23] : memref<32x32xf32, #map>
            %49 = memref.load %arg10[%arg22, %arg23] : memref<32x32xf32, #map>
            %50 = memref.load %arg11[%arg22, %arg23] : memref<32x32xf32, #map>
            %51 = arith.bitcast %50 : f32 to i32
            %52 = arith.bitcast %49 : f32 to i32
            %53 = arith.andi %52, %arg12 : i32
            %54 = arith.bitcast %48 : f32 to i32
            %55 = arith.andi %54, %arg12 : i32
            %56 = arith.cmpi eq, %55, %arg13 : i32
            %57 = arith.cmpi eq, %53, %arg14 : i32
            %58 = arith.andi %56, %57 : i1
            %59 = arith.cmpi eq, %53, %arg13 : i32
            %60 = arith.cmpi eq, %55, %arg14 : i32
            %61 = arith.andi %59, %60 : i1
            %62 = arith.ori %58, %61 : i1
            %63 = arith.cmpi ugt, %55, %arg13 : i32
            %64 = arith.cmpi ugt, %53, %arg13 : i32
            %65 = arith.ori %63, %64 : i1
            %66 = arith.ori %62, %65 : i1
            %67 = arith.select %66, %arg15, %51 : i32
            %68 = arith.andi %67, %arg12 : i32
            %69 = arith.ori %67, %arg16 : i32
            %70 = arith.cmpi ugt, %68, %arg13 : i32
            %71 = arith.select %70, %69, %67 : i32
            %72 = arith.addi %67, %arg17 : i32
            %73 = arith.shrui %67, %arg18 : i32
            %74 = arith.andi %73, %arg19 : i32
            %75 = arith.addi %72, %74 : i32
            %76 = arith.andi %75, %arg20 : i32
            %77 = arith.cmpi uge, %68, %arg13 : i32
            %78 = arith.select %77, %71, %76 : i32
            %79 = arith.bitcast %78 : i32 to f32
            memref.store %79, %arg21[%arg22, %arg23] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_4, %alloc_5, %alloc_6, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, memref<32x32xf32, #map>, memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: memref<32x32xf32, #map>, %arg11: memref<32x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c12 = arith.constant 12 : index
        %c16_13 = arith.constant 16 : index
        scf.for %arg22 = %c12 to %c16_13 step %c1_12 {
          scf.for %arg23 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg22, %arg23] : memref<32x32xf32, #map>
            %49 = memref.load %arg10[%arg22, %arg23] : memref<32x32xf32, #map>
            %50 = memref.load %arg11[%arg22, %arg23] : memref<32x32xf32, #map>
            %51 = arith.bitcast %50 : f32 to i32
            %52 = arith.bitcast %49 : f32 to i32
            %53 = arith.andi %52, %arg12 : i32
            %54 = arith.bitcast %48 : f32 to i32
            %55 = arith.andi %54, %arg12 : i32
            %56 = arith.cmpi eq, %55, %arg13 : i32
            %57 = arith.cmpi eq, %53, %arg14 : i32
            %58 = arith.andi %56, %57 : i1
            %59 = arith.cmpi eq, %53, %arg13 : i32
            %60 = arith.cmpi eq, %55, %arg14 : i32
            %61 = arith.andi %59, %60 : i1
            %62 = arith.ori %58, %61 : i1
            %63 = arith.cmpi ugt, %55, %arg13 : i32
            %64 = arith.cmpi ugt, %53, %arg13 : i32
            %65 = arith.ori %63, %64 : i1
            %66 = arith.ori %62, %65 : i1
            %67 = arith.select %66, %arg15, %51 : i32
            %68 = arith.andi %67, %arg12 : i32
            %69 = arith.ori %67, %arg16 : i32
            %70 = arith.cmpi ugt, %68, %arg13 : i32
            %71 = arith.select %70, %69, %67 : i32
            %72 = arith.addi %67, %arg17 : i32
            %73 = arith.shrui %67, %arg18 : i32
            %74 = arith.andi %73, %arg19 : i32
            %75 = arith.addi %72, %74 : i32
            %76 = arith.andi %75, %arg20 : i32
            %77 = arith.cmpi uge, %68, %arg13 : i32
            %78 = arith.select %77, %71, %76 : i32
            %79 = arith.bitcast %78 : i32 to f32
            memref.store %79, %arg21[%arg22, %arg23] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_4, %alloc_5, %alloc_6, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, memref<32x32xf32, #map>, memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: memref<32x32xf32, #map>, %arg11: memref<32x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c16_13 = arith.constant 16 : index
        %c20 = arith.constant 20 : index
        scf.for %arg22 = %c16_13 to %c20 step %c1_12 {
          scf.for %arg23 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg22, %arg23] : memref<32x32xf32, #map>
            %49 = memref.load %arg10[%arg22, %arg23] : memref<32x32xf32, #map>
            %50 = memref.load %arg11[%arg22, %arg23] : memref<32x32xf32, #map>
            %51 = arith.bitcast %50 : f32 to i32
            %52 = arith.bitcast %49 : f32 to i32
            %53 = arith.andi %52, %arg12 : i32
            %54 = arith.bitcast %48 : f32 to i32
            %55 = arith.andi %54, %arg12 : i32
            %56 = arith.cmpi eq, %55, %arg13 : i32
            %57 = arith.cmpi eq, %53, %arg14 : i32
            %58 = arith.andi %56, %57 : i1
            %59 = arith.cmpi eq, %53, %arg13 : i32
            %60 = arith.cmpi eq, %55, %arg14 : i32
            %61 = arith.andi %59, %60 : i1
            %62 = arith.ori %58, %61 : i1
            %63 = arith.cmpi ugt, %55, %arg13 : i32
            %64 = arith.cmpi ugt, %53, %arg13 : i32
            %65 = arith.ori %63, %64 : i1
            %66 = arith.ori %62, %65 : i1
            %67 = arith.select %66, %arg15, %51 : i32
            %68 = arith.andi %67, %arg12 : i32
            %69 = arith.ori %67, %arg16 : i32
            %70 = arith.cmpi ugt, %68, %arg13 : i32
            %71 = arith.select %70, %69, %67 : i32
            %72 = arith.addi %67, %arg17 : i32
            %73 = arith.shrui %67, %arg18 : i32
            %74 = arith.andi %73, %arg19 : i32
            %75 = arith.addi %72, %74 : i32
            %76 = arith.andi %75, %arg20 : i32
            %77 = arith.cmpi uge, %68, %arg13 : i32
            %78 = arith.select %77, %71, %76 : i32
            %79 = arith.bitcast %78 : i32 to f32
            memref.store %79, %arg21[%arg22, %arg23] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_4, %alloc_5, %alloc_6, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, memref<32x32xf32, #map>, memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: memref<32x32xf32, #map>, %arg11: memref<32x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c20 = arith.constant 20 : index
        %c24 = arith.constant 24 : index
        scf.for %arg22 = %c20 to %c24 step %c1_12 {
          scf.for %arg23 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg22, %arg23] : memref<32x32xf32, #map>
            %49 = memref.load %arg10[%arg22, %arg23] : memref<32x32xf32, #map>
            %50 = memref.load %arg11[%arg22, %arg23] : memref<32x32xf32, #map>
            %51 = arith.bitcast %50 : f32 to i32
            %52 = arith.bitcast %49 : f32 to i32
            %53 = arith.andi %52, %arg12 : i32
            %54 = arith.bitcast %48 : f32 to i32
            %55 = arith.andi %54, %arg12 : i32
            %56 = arith.cmpi eq, %55, %arg13 : i32
            %57 = arith.cmpi eq, %53, %arg14 : i32
            %58 = arith.andi %56, %57 : i1
            %59 = arith.cmpi eq, %53, %arg13 : i32
            %60 = arith.cmpi eq, %55, %arg14 : i32
            %61 = arith.andi %59, %60 : i1
            %62 = arith.ori %58, %61 : i1
            %63 = arith.cmpi ugt, %55, %arg13 : i32
            %64 = arith.cmpi ugt, %53, %arg13 : i32
            %65 = arith.ori %63, %64 : i1
            %66 = arith.ori %62, %65 : i1
            %67 = arith.select %66, %arg15, %51 : i32
            %68 = arith.andi %67, %arg12 : i32
            %69 = arith.ori %67, %arg16 : i32
            %70 = arith.cmpi ugt, %68, %arg13 : i32
            %71 = arith.select %70, %69, %67 : i32
            %72 = arith.addi %67, %arg17 : i32
            %73 = arith.shrui %67, %arg18 : i32
            %74 = arith.andi %73, %arg19 : i32
            %75 = arith.addi %72, %74 : i32
            %76 = arith.andi %75, %arg20 : i32
            %77 = arith.cmpi uge, %68, %arg13 : i32
            %78 = arith.select %77, %71, %76 : i32
            %79 = arith.bitcast %78 : i32 to f32
            memref.store %79, %arg21[%arg22, %arg23] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_4, %alloc_5, %alloc_6, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, memref<32x32xf32, #map>, memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: memref<32x32xf32, #map>, %arg11: memref<32x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c24 = arith.constant 24 : index
        %c28 = arith.constant 28 : index
        scf.for %arg22 = %c24 to %c28 step %c1_12 {
          scf.for %arg23 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg22, %arg23] : memref<32x32xf32, #map>
            %49 = memref.load %arg10[%arg22, %arg23] : memref<32x32xf32, #map>
            %50 = memref.load %arg11[%arg22, %arg23] : memref<32x32xf32, #map>
            %51 = arith.bitcast %50 : f32 to i32
            %52 = arith.bitcast %49 : f32 to i32
            %53 = arith.andi %52, %arg12 : i32
            %54 = arith.bitcast %48 : f32 to i32
            %55 = arith.andi %54, %arg12 : i32
            %56 = arith.cmpi eq, %55, %arg13 : i32
            %57 = arith.cmpi eq, %53, %arg14 : i32
            %58 = arith.andi %56, %57 : i1
            %59 = arith.cmpi eq, %53, %arg13 : i32
            %60 = arith.cmpi eq, %55, %arg14 : i32
            %61 = arith.andi %59, %60 : i1
            %62 = arith.ori %58, %61 : i1
            %63 = arith.cmpi ugt, %55, %arg13 : i32
            %64 = arith.cmpi ugt, %53, %arg13 : i32
            %65 = arith.ori %63, %64 : i1
            %66 = arith.ori %62, %65 : i1
            %67 = arith.select %66, %arg15, %51 : i32
            %68 = arith.andi %67, %arg12 : i32
            %69 = arith.ori %67, %arg16 : i32
            %70 = arith.cmpi ugt, %68, %arg13 : i32
            %71 = arith.select %70, %69, %67 : i32
            %72 = arith.addi %67, %arg17 : i32
            %73 = arith.shrui %67, %arg18 : i32
            %74 = arith.andi %73, %arg19 : i32
            %75 = arith.addi %72, %74 : i32
            %76 = arith.andi %75, %arg20 : i32
            %77 = arith.cmpi uge, %68, %arg13 : i32
            %78 = arith.select %77, %71, %76 : i32
            %79 = arith.bitcast %78 : i32 to f32
            memref.store %79, %arg21[%arg22, %arg23] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_4, %alloc_5, %alloc_6, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, memref<32x32xf32, #map>, memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x32xf32, #map>, %arg10: memref<32x32xf32, #map>, %arg11: memref<32x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<32x32xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        %c28 = arith.constant 28 : index
        scf.for %arg22 = %c28 to %c32_11 step %c1_12 {
          scf.for %arg23 = %c0_10 to %c32_11 step %c1_12 {
            %48 = memref.load %arg9[%arg22, %arg23] : memref<32x32xf32, #map>
            %49 = memref.load %arg10[%arg22, %arg23] : memref<32x32xf32, #map>
            %50 = memref.load %arg11[%arg22, %arg23] : memref<32x32xf32, #map>
            %51 = arith.bitcast %50 : f32 to i32
            %52 = arith.bitcast %49 : f32 to i32
            %53 = arith.andi %52, %arg12 : i32
            %54 = arith.bitcast %48 : f32 to i32
            %55 = arith.andi %54, %arg12 : i32
            %56 = arith.cmpi eq, %55, %arg13 : i32
            %57 = arith.cmpi eq, %53, %arg14 : i32
            %58 = arith.andi %56, %57 : i1
            %59 = arith.cmpi eq, %53, %arg13 : i32
            %60 = arith.cmpi eq, %55, %arg14 : i32
            %61 = arith.andi %59, %60 : i1
            %62 = arith.ori %58, %61 : i1
            %63 = arith.cmpi ugt, %55, %arg13 : i32
            %64 = arith.cmpi ugt, %53, %arg13 : i32
            %65 = arith.ori %63, %64 : i1
            %66 = arith.ori %62, %65 : i1
            %67 = arith.select %66, %arg15, %51 : i32
            %68 = arith.andi %67, %arg12 : i32
            %69 = arith.ori %67, %arg16 : i32
            %70 = arith.cmpi ugt, %68, %arg13 : i32
            %71 = arith.select %70, %69, %67 : i32
            %72 = arith.addi %67, %arg17 : i32
            %73 = arith.shrui %67, %arg18 : i32
            %74 = arith.andi %73, %arg19 : i32
            %75 = arith.addi %72, %74 : i32
            %76 = arith.andi %75, %arg20 : i32
            %77 = arith.cmpi uge, %68, %arg13 : i32
            %78 = arith.select %77, %71, %76 : i32
            %79 = arith.bitcast %78 : i32 to f32
            memref.store %79, %arg21[%arg22, %arg23] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 15)
      sdnn.core_arrive(3, 22)
      sdnn.core_arrive(3, 24)
      sdnn.core_arrive(3, 26)
      %45 = arith.muli %30, %c32768 : index
      %46 = arith.addi %45, %33 : index
      %reinterpret_cast_7 = memref.reinterpret_cast %arg3 to offset: [%46], sizes: [32, 32], strides: [1024, 1] : memref<*xbf16, 1> to memref<32x32xbf16, strided<[1024, 1], offset: ?>, 1>
      %47 = arith.minsi %38, %c32 : index
      %subview_8 = memref.subview %reinterpret_cast_7[0, 0] [%47, %44] [1, 1] : memref<32x32xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[1024, 1], offset: ?>, 1>
      %cast = memref.cast %subview_8 : memref<?x?xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, 1], offset: ?>, 1>
      %subview_9 = memref.subview %alloc[0, 0] [%47, %44] [1, 1] : memref<32x32xf32, #map> to memref<?x?xf32, strided<[32, 1]>>
      sdnn.dma out %subview_9, %cast {signal = array<i32: 16>, wait = array<i32: 15>} : memref<?x?xf32, strided<[32, 1]>> memref<?x?xbf16, strided<[?, 1], offset: ?>, 1> -> 
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
