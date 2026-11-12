#map = affine_map<(d0, d1) -> (d0 * 64 + d1)>
#map1 = affine_map<(d0, d1) -> (d0 * 32 + d1)>
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
    %c0_i32 = arith.constant 0 : i32
    %c8_i32 = arith.constant 8 : i32
    %c2_i32 = arith.constant 2 : i32
    %cst = arith.constant -3.40282347E+38 : f32
    %cst_0 = arith.constant 3.40282347E+38 : f32
    %c16_i32 = arith.constant 16 : i32
    %c1_i32 = arith.constant 1 : i32
    %c32767_i32 = arith.constant 32767 : i32
    %c-65536_i32 = arith.constant -65536 : i32
    %c2147483647_i32 = arith.constant 2147483647 : i32
    %c2139095040_i32 = arith.constant 2139095040 : i32
    %c2048 = arith.constant 2048 : index
    %c4096 = arith.constant 4096 : index
    %c1024 = arith.constant 1024 : index
    %c32 = arith.constant 32 : index
    %c64 = arith.constant 64 : index
    %c128 = arith.constant 128 : index
    %c16 = arith.constant 16 : index
    %c4194304_i32 = arith.constant 4194304 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst_1 = arith.constant 1.000000e+00 : f32
    %cst_2 = arith.constant -1.000000e+00 : f32
    %reinterpret_cast = memref.reinterpret_cast %arg4 to offset: [0], sizes: [1024], strides: [1] : memref<*xf32, 1> to memref<1024xf32, 1>
    "sdnn.init"(%reinterpret_cast) {signal = [array<i32: 17, 5, 3, 9, 7, 22, 20, 24, 25>], signal_num = array<i64: 4, 255, 151, 160, 150, 4, 4, 4, 4>} : (memref<1024xf32, 1>) -> ()
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
    %12 = sdnn.counter {bufferNum = 4 : i32} : memref<1xi32, 6>
    %13 = sdnn.counter {bufferNum = 4 : i32} : memref<1xi32, 6>
    %14 = sdnn.counter {bufferNum = 4 : i32} : memref<1xi32, 6>
    %15 = sdnn.counter {bufferNum = 4 : i32} : memref<1xi32, 6>
    %16 = sdnn.counter {bufferNum = 150 : i32} : memref<1xi32, 6>
    %17 = sdnn.counter {bufferNum = 160 : i32} : memref<1xi32, 6>
    %18 = sdnn.counter {bufferNum = 151 : i32} : memref<1xi32, 6>
    %19 = sdnn.counter {bufferNum = 255 : i32} : memref<1xi32, 6>
    %20 = sdnn.counter {bufferNum = 4 : i32} : memref<1xi32, 6>
    scf.for %arg8 = %10 to %11 step %c1 {
      %21 = arith.index_cast %arg8 : index to i32
      %22 = arith.divsi %21, %arg7 : i32
      %23 = arith.divsi %22, %arg6 : i32
      %24 = arith.divsi %23, %c16_i32 : i32
      %25 = arith.muli %24, %c8_i32 : i32
      %26 = arith.subi %c1_i32, %25 : i32
      %27 = arith.minsi %26, %c8_i32 : i32
      %28 = arith.remsi %23, %27 : i32
      %29 = arith.addi %25, %28 : i32
      %30 = arith.remsi %23, %c16_i32 : i32
      %31 = arith.divsi %30, %27 : i32
      %32 = arith.cmpi sge, %29, %c0_i32 : i32
      llvm.intr.assume %32 : i1
      %33 = arith.cmpi sge, %31, %c0_i32 : i32
      llvm.intr.assume %33 : i1
      %34 = arith.muli %29, %c16_i32 : i32
      %35 = arith.index_cast %29 : i32 to index
      %36 = arith.muli %31, %c64_i32 : i32
      %37 = arith.index_cast %31 : i32 to index
      %38 = arith.muli %37, %c64 : index
      %alloca = memref.alloca() : memref<1xi32>
      memref.store %c0_i32, %alloca[%c0] : memref<1xi32>
      %alloc = memref.alloc() {bufferNum = 4 : index, bufferSize = 4096 : index, init_signal = 17 : i64, processed, sram = "uni_sram"} : memref<16x64xf32, #map>
      %39 = sdnn.get_fifo_buffer %alloc, %20, {bufferNum = 4 : i32, bufferSize = 4096 : i32} : memref<16x64xf32, #map> memref<1xi32, 6> to memref<16x64xf32, #map>
      sdnn.core_wait(4, 17) {core_name = "mma"}
      scf.for %arg9 = %c0_i32 to %c2_i32 step %c1_i32  : i32 {
        %58 = arith.index_cast %arg9 : i32 to index
        %59 = arith.muli %58, %c32 : index
        %60 = arith.muli %35, %c1024 : index
        %61 = arith.addi %60, %59 : index
        %62 = arith.cmpi sge, %61, %c1024 : index
        %63 = arith.divsi %61, %c1024 : index
        %64 = arith.muli %63, %c1024 : index
        %65 = arith.subi %61, %64 : index
        %66 = arith.select %62, %65, %61 : index
        %67 = arith.divsi %66, %c64 : index
        %68 = arith.addi %67, %c16 : index
        %69 = arith.minsi %68, %c16 : index
        %70 = arith.subi %69, %67 : index
        %reinterpret_cast_12 = memref.reinterpret_cast %arg0 to offset: [%61], sizes: [%70, 32], strides: [64, 1] : memref<*xbf16, 1> to memref<?x32xbf16, strided<[64, 1], offset: ?>, 1>
        %cast_13 = memref.cast %reinterpret_cast_12 : memref<?x32xbf16, strided<[64, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
        %alloc_14 = memref.alloc() {bufferNum = 255 : index, bufferSize = 2048 : index, init_signal = 5 : i64, processed, sram = "l1d"} : memref<16x32xf32, #map1, 3>
        %71 = sdnn.get_fifo_buffer %alloc_14, %19, {bufferNum = 255 : i32, bufferSize = 2048 : i32} : memref<16x32xf32, #map1, 3> memref<1xi32, 6> to memref<16x32xf32, #map1, 3>
        %alloc_15 = memref.alloc() {bufferNum = 151 : index, bufferSize = 2048 : index, init_signal = 3 : i64, processed, sram = "uni_sram", trans = false} : memref<16x32xf32, #map1>
        %72 = sdnn.get_fifo_buffer %alloc_15, %18, {bufferNum = 151 : i32, bufferSize = 2048 : i32} : memref<16x32xf32, #map1> memref<1xi32, 6> to memref<16x32xf32, #map1>
        %dim = memref.dim %reinterpret_cast_12, %c0 : memref<?x32xbf16, strided<[64, 1], offset: ?>, 1>
        %subview_16 = memref.subview %72[0, 0] [%dim, 32] [1, 1] : memref<16x32xf32, #map1> to memref<?x32xf32, strided<[32, 1]>>
        %cast_17 = memref.cast %subview_16 : memref<?x32xf32, strided<[32, 1]>> to memref<?x?xf32, strided<[32, 1]>>
        sdnn.dma in %cast_13, %cast_17 {core_id = 1 : i32, signal = array<i32: 2>, wait = array<i32: 3>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[32, 1]>> -> 
        sdnn.ds %72, %71 mask_dims[%c16, %c32] {sdnn.layout = "CR_RowMajor", signal = array<i32: 3, 4>, signal_cached = array<i32: 4>, wait = array<i32: 2, 5>, wait_cached = array<i32: 5>} : memref<16x32xf32, #map1> memref<16x32xf32, #map1, 3> -> 
        %73 = arith.muli %58, %c4096 : index
        %74 = arith.addi %73, %38 : index
        %75 = arith.remsi %74, %c128 : index
        %76 = arith.addi %75, %c64 : index
        %77 = arith.minsi %76, %c128 : index
        %78 = arith.subi %77, %75 : index
        %reinterpret_cast_18 = memref.reinterpret_cast %arg1 to offset: [%74], sizes: [32, %78], strides: [128, 1] : memref<*xbf16, 1> to memref<32x?xbf16, strided<[128, 1], offset: ?>, 1>
        %cast_19 = memref.cast %reinterpret_cast_18 : memref<32x?xbf16, strided<[128, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
        %alloc_20 = memref.alloc() {bufferNum = 160 : index, bufferSize = 8192 : index, init_signal = 9 : i64, processed, sram = "l1w"} : memref<32x64xf32, #map, 4>
        %79 = sdnn.get_fifo_buffer %alloc_20, %17, {bufferNum = 160 : i32, bufferSize = 8192 : i32} : memref<32x64xf32, #map, 4> memref<1xi32, 6> to memref<32x64xf32, #map, 4>
        %alloc_21 = memref.alloc() {bufferNum = 150 : index, bufferSize = 8192 : index, init_signal = 7 : i64, processed, sram = "uni_sram", trans = false} : memref<32x64xf32, #map>
        %80 = sdnn.get_fifo_buffer %alloc_21, %16, {bufferNum = 150 : i32, bufferSize = 8192 : i32} : memref<32x64xf32, #map> memref<1xi32, 6> to memref<32x64xf32, #map>
        %dim_22 = memref.dim %reinterpret_cast_18, %c1 : memref<32x?xbf16, strided<[128, 1], offset: ?>, 1>
        %subview_23 = memref.subview %80[0, 0] [32, %dim_22] [1, 1] : memref<32x64xf32, #map> to memref<32x?xf32, strided<[64, 1]>>
        %cast_24 = memref.cast %subview_23 : memref<32x?xf32, strided<[64, 1]>> to memref<?x?xf32, strided<[64, 1]>>
        sdnn.dma in %cast_19, %cast_24 {core_id = 6 : i32, signal = array<i32: 6>, wait = array<i32: 7>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[64, 1]>> -> 
        sdnn.ds %80, %79 mask_dims[%c32, %c64] {sdnn.layout = "CR_RowMajor", signal = array<i32: 7, 8>, signal_cached = array<i32: 8>, wait = array<i32: 6, 9>, wait_cached = array<i32: 9>} : memref<32x64xf32, #map> memref<32x64xf32, #map, 4> -> 
        %81 = memref.load %alloca[%c0] : memref<1xi32>
        sdnn.mma %71, %79, %39 acc %81 mask_dims[%c16, %c64, %c32] {indexing_maps = [#map2, #map3, #map4], rcOut = false, sdnn.layout = "CR_RowMajor", signal = array<i32: 5, 9>, wait = array<i32: 4, 8>} : (memref<16x32xf32, #map1, 3>, memref<32x64xf32, #map, 4>, memref<16x64xf32, #map>, i32, index, index, index) -> ()
        %82 = arith.addi %81, %c1_i32 : i32
        memref.store %82, %alloca[%c0] : memref<1xi32>
      } {mac_acc = true, sdnn.arg_layout.1 = "CR_RowMajor", sdnn.layout = "CR_RowMajor"}
      sdnn.core_arrive(4, 10) {core_name = "mma"}
      %reinterpret_cast_3 = memref.reinterpret_cast %arg2 to offset: [%38], sizes: [1, 64], strides: [64, 1] : memref<*xbf16, 1> to memref<1x64xbf16, strided<[64, 1], offset: ?>, 1>
      %40 = arith.index_cast %34 : i32 to index
      %41 = arith.addi %40, %c16 : index
      %42 = arith.minsi %41, %c16 : index
      %43 = arith.maxsi %42, %40 : index
      %44 = arith.subi %43, %40 : index
      %45 = arith.index_cast %36 : i32 to index
      %46 = arith.addi %45, %c64 : index
      %47 = arith.minsi %46, %c128 : index
      %48 = arith.maxsi %47, %45 : index
      %49 = arith.subi %48, %45 : index
      %50 = arith.minsi %49, %c64 : index
      %alloc_4 = memref.alloc() {bufferNum = 4 : index, bufferSize = 256 : index, init_signal = 22 : i64, processed, sram = "uni_sram", trans = false} : memref<1x64xf32, #map>
      %51 = sdnn.get_fifo_buffer %alloc_4, %15, {bufferNum = 4 : i32, bufferSize = 256 : i32} : memref<1x64xf32, #map> memref<1xi32, 6> to memref<1x64xf32, #map>
      %subview = memref.subview %reinterpret_cast_3[0, 0] [1, %50] [1, 1] : memref<1x64xbf16, strided<[64, 1], offset: ?>, 1> to memref<1x?xbf16, strided<[64, 1], offset: ?>, 1>
      %alloc_5 = memref.alloc() {bufferNum = 4 : index, bufferSize = 4096 : index, init_signal = 20 : i64, processed, sram = "uni_sram"} : memref<16x64xf32, #map>
      %52 = sdnn.get_fifo_buffer %alloc_5, %14, {bufferNum = 4 : i32, bufferSize = 4096 : i32} : memref<16x64xf32, #map> memref<1xi32, 6> to memref<16x64xf32, #map>
      sdnn.core_wait(3, 10)
      sdnn.core_wait(3, 20)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%39, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%52 : memref<16x64xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        scf.for %arg18 = %c0_12 to %c2 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%39, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%52 : memref<16x64xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        %c4 = arith.constant 4 : index
        scf.for %arg18 = %c2 to %c4 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%39, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%52 : memref<16x64xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c4 = arith.constant 4 : index
        %c6 = arith.constant 6 : index
        scf.for %arg18 = %c4 to %c6 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%39, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%52 : memref<16x64xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c6 = arith.constant 6 : index
        %c8 = arith.constant 8 : index
        scf.for %arg18 = %c6 to %c8 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%39, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%52 : memref<16x64xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c8 = arith.constant 8 : index
        %c10 = arith.constant 10 : index
        scf.for %arg18 = %c8 to %c10 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%39, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%52 : memref<16x64xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c10 = arith.constant 10 : index
        %c12 = arith.constant 12 : index
        scf.for %arg18 = %c10 to %c12 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%39, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%52 : memref<16x64xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c12 = arith.constant 12 : index
        %c14 = arith.constant 14 : index
        scf.for %arg18 = %c12 to %c14 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%39, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%52 : memref<16x64xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c16_13 = arith.constant 16 : index
        %c1_14 = arith.constant 1 : index
        %c64_15 = arith.constant 64 : index
        %c14 = arith.constant 14 : index
        scf.for %arg18 = %c14 to %c16_13 step %c1_14 {
          scf.for %arg19 = %c0_12 to %c64_15 step %c1_14 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 11)
      sdnn.core_arrive(3, 18)
      %subview_6 = memref.subview %51[0, 0] [1, %50] [1, 1] : memref<1x64xf32, #map> to memref<1x?xf32, strided<[64, 1]>>
      sdnn.dma in %subview, %subview_6 {core_id = 1 : i32, signal = array<i32: 21>, wait = array<i32: 22>} : memref<1x?xbf16, strided<[64, 1], offset: ?>, 1> memref<1x?xf32, strided<[64, 1]>> -> 
      sdnn.ew linear %52 src0 %52 src1 %51 a %cst_1 b %cst_1 {sdnn.layout = "CR_RowMajor", signal = array<i32: 19, 22>, wait = array<i32: 18, 21>} : (memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<1x64xf32, #map>, f32, f32) -> ()
      sdnn.core_wait(3, 11)
      sdnn.core_wait(3, 19)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%52, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%39 : memref<16x64xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        scf.for %arg18 = %c0_12 to %c2 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%52, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%39 : memref<16x64xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        %c4 = arith.constant 4 : index
        scf.for %arg18 = %c2 to %c4 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%52, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%39 : memref<16x64xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c4 = arith.constant 4 : index
        %c6 = arith.constant 6 : index
        scf.for %arg18 = %c4 to %c6 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%52, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%39 : memref<16x64xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c6 = arith.constant 6 : index
        %c8 = arith.constant 8 : index
        scf.for %arg18 = %c6 to %c8 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%52, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%39 : memref<16x64xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c8 = arith.constant 8 : index
        %c10 = arith.constant 10 : index
        scf.for %arg18 = %c8 to %c10 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%52, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%39 : memref<16x64xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c10 = arith.constant 10 : index
        %c12 = arith.constant 12 : index
        scf.for %arg18 = %c10 to %c12 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%52, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%39 : memref<16x64xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c12 = arith.constant 12 : index
        %c14 = arith.constant 14 : index
        scf.for %arg18 = %c12 to %c14 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%52, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%39 : memref<16x64xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c16_13 = arith.constant 16 : index
        %c1_14 = arith.constant 1 : index
        %c64_15 = arith.constant 64 : index
        %c14 = arith.constant 14 : index
        scf.for %arg18 = %c14 to %c16_13 step %c1_14 {
          scf.for %arg19 = %c0_12 to %c64_15 step %c1_14 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 14)
      sdnn.core_arrive(3, 15)
      sdnn.core_arrive(3, 12)
      sdnn.core_arrive(3, 20)
      %alloc_7 = memref.alloc() {bufferNum = 4 : index, bufferSize = 4096 : index, init_signal = 24 : i64, processed, sram = "uni_sram"} : memref<16x64xf32, #map>
      %53 = sdnn.get_fifo_buffer %alloc_7, %13, {bufferNum = 4 : i32, bufferSize = 4096 : i32} : memref<16x64xf32, #map> memref<1xi32, 6> to memref<16x64xf32, #map>
      sdnn.ew lut %53 src0 %39 lut_func gelu {kOverflow = 1.000000e+00 : f32, kUnderflow = 0.000000e+00 : f32, lut_max = 7.984375 : f32, lut_min = -8.000000e+00 : f32, packedid = 887629 : ui32, sdnn.layout = "CR_RowMajor", wait = array<i32: 12, 24>} : (memref<16x64xf32, #map>, memref<16x64xf32, #map>) -> ()
      %alloc_8 = memref.alloc() {bufferNum = 4 : index, bufferSize = 4096 : index, init_signal = 25 : i64, processed, sram = "uni_sram"} : memref<16x64xf32, #map>
      %54 = sdnn.get_fifo_buffer %alloc_8, %12, {bufferNum = 4 : i32, bufferSize = 4096 : i32} : memref<16x64xf32, #map> memref<1xi32, 6> to memref<16x64xf32, #map>
      sdnn.ew maximum %54 src0 %39 c %cst {sdnn.layout = "CR_RowMajor", wait = array<i32: 14, 25>} : (memref<16x64xf32, #map>, memref<16x64xf32, #map>, f32) -> ()
      sdnn.ew minimum %54 src0 %54 c %cst_0 {sdnn.layout = "CR_RowMajor"} : (memref<16x64xf32, #map>, memref<16x64xf32, #map>, f32) -> ()
      sdnn.ew linear %39 src0 %39 src1 %54 a %cst_1 b %cst_2 {sdnn.layout = "CR_RowMajor", signal = array<i32: 25>, wait = array<i32: 15>} : (memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, f32, f32) -> ()
      sdnn.ew linear %53 src0 %53 src1 %39 a %cst_1 b %cst_1 {sdnn.layout = "CR_RowMajor", signal = array<i32: 13, 23>} : (memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, f32, f32) -> ()
      sdnn.core_wait(3, 13)
      sdnn.core_wait(3, 23)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%53, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%39 : memref<16x64xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        scf.for %arg18 = %c0_12 to %c2 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%53, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%39 : memref<16x64xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        %c4 = arith.constant 4 : index
        scf.for %arg18 = %c2 to %c4 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%53, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%39 : memref<16x64xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c4 = arith.constant 4 : index
        %c6 = arith.constant 6 : index
        scf.for %arg18 = %c4 to %c6 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%53, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%39 : memref<16x64xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c6 = arith.constant 6 : index
        %c8 = arith.constant 8 : index
        scf.for %arg18 = %c6 to %c8 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%53, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%39 : memref<16x64xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c8 = arith.constant 8 : index
        %c10 = arith.constant 10 : index
        scf.for %arg18 = %c8 to %c10 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%53, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%39 : memref<16x64xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c10 = arith.constant 10 : index
        %c12 = arith.constant 12 : index
        scf.for %arg18 = %c10 to %c12 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%53, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%39 : memref<16x64xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c12 = arith.constant 12 : index
        %c14 = arith.constant 14 : index
        scf.for %arg18 = %c12 to %c14 step %c1_13 {
          scf.for %arg19 = %c0_12 to %c64_14 step %c1_13 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%53, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%39 : memref<16x64xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_12 = arith.constant 0 : index
        %c16_13 = arith.constant 16 : index
        %c1_14 = arith.constant 1 : index
        %c64_15 = arith.constant 64 : index
        %c14 = arith.constant 14 : index
        scf.for %arg18 = %c14 to %c16_13 step %c1_14 {
          scf.for %arg19 = %c0_12 to %c64_15 step %c1_14 {
            %58 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %59 = arith.bitcast %58 : f32 to i32
            %60 = arith.andi %59, %arg10 : i32
            %61 = arith.ori %59, %arg11 : i32
            %62 = arith.cmpi ugt, %60, %arg12 : i32
            %63 = arith.select %62, %61, %59 : i32
            %64 = arith.addi %59, %arg13 : i32
            %65 = arith.shrui %59, %arg14 : i32
            %66 = arith.andi %65, %arg15 : i32
            %67 = arith.addi %64, %66 : i32
            %68 = arith.andi %67, %arg16 : i32
            %69 = arith.cmpi uge, %60, %arg12 : i32
            %70 = arith.select %69, %63, %68 : i32
            %71 = arith.bitcast %70 : i32 to f32
            memref.store %71, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 16)
      sdnn.core_arrive(3, 24)
      %55 = arith.muli %35, %c2048 : index
      %56 = arith.addi %55, %38 : index
      %reinterpret_cast_9 = memref.reinterpret_cast %arg3 to offset: [%56], sizes: [16, 64], strides: [128, 1] : memref<*xbf16, 1> to memref<16x64xbf16, strided<[128, 1], offset: ?>, 1>
      %57 = arith.minsi %44, %c16 : index
      %subview_10 = memref.subview %reinterpret_cast_9[0, 0] [%57, %50] [1, 1] : memref<16x64xbf16, strided<[128, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[128, 1], offset: ?>, 1>
      %cast = memref.cast %subview_10 : memref<?x?xbf16, strided<[128, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, 1], offset: ?>, 1>
      %subview_11 = memref.subview %39[0, 0] [%57, %50] [1, 1] : memref<16x64xf32, #map> to memref<?x?xf32, strided<[64, 1]>>
      sdnn.dma out %subview_11, %cast {signal = array<i32: 17>, wait = array<i32: 16>} : memref<?x?xf32, strided<[64, 1]>> memref<?x?xbf16, strided<[?, 1], offset: ?>, 1> -> 
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
