#map = affine_map<(d0, d1) -> (d0 * 128 + d1)>
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
    %c0_i32 = arith.constant 0 : i32
    %c128_i32 = arith.constant 128 : i32
    %c8_i32 = arith.constant 8 : i32
    %c64_i32 = arith.constant 64 : i32
    %c4_i32 = arith.constant 4 : i32
    %c16_i32 = arith.constant 16 : i32
    %c1_i32 = arith.constant 1 : i32
    %c32767_i32 = arith.constant 32767 : i32
    %c-65536_i32 = arith.constant -65536 : i32
    %c2147483647_i32 = arith.constant 2147483647 : i32
    %c2139095040_i32 = arith.constant 2139095040 : i32
    %c65536 = arith.constant 65536 : index
    %c524288 = arith.constant 524288 : index
    %c131072 = arith.constant 131072 : index
    %c64 = arith.constant 64 : index
    %c128 = arith.constant 128 : index
    %c1024 = arith.constant 1024 : index
    %c512 = arith.constant 512 : index
    %c4194304_i32 = arith.constant 4194304 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 1.000000e+00 : f32
    "sdnn.init"() {signal = [array<i32: 13, 5, 3, 9, 7, 18, 16>], signal_num = array<i64: 5, 24, 14, 40, 14, 5, 5>} : () -> ()
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
    %14 = sdnn.counter {bufferNum = 14 : i32} : memref<1xi32, 6>
    %15 = sdnn.counter {bufferNum = 40 : i32} : memref<1xi32, 6>
    %16 = sdnn.counter {bufferNum = 14 : i32} : memref<1xi32, 6>
    %17 = sdnn.counter {bufferNum = 24 : i32} : memref<1xi32, 6>
    %18 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    scf.for %arg7 = %10 to %11 step %c1 {
      %19 = arith.index_cast %arg7 : index to i32
      %20 = arith.divsi %19, %arg6 : i32
      %21 = arith.divsi %20, %arg5 : i32
      %22 = arith.divsi %21, %c64_i32 : i32
      %23 = arith.muli %22, %c8_i32 : i32
      %24 = arith.subi %c4_i32, %23 : i32
      %25 = arith.minsi %24, %c8_i32 : i32
      %26 = arith.remsi %21, %25 : i32
      %27 = arith.addi %23, %26 : i32
      %28 = arith.remsi %21, %c64_i32 : i32
      %29 = arith.divsi %28, %25 : i32
      %30 = arith.cmpi sge, %27, %c0_i32 : i32
      llvm.intr.assume %30 : i1
      %31 = arith.cmpi sge, %29, %c0_i32 : i32
      llvm.intr.assume %31 : i1
      %32 = arith.muli %27, %c128_i32 : i32
      %33 = arith.index_cast %27 : i32 to index
      %34 = arith.muli %29, %c128_i32 : i32
      %35 = arith.index_cast %29 : i32 to index
      %36 = arith.muli %35, %c128 : index
      %alloca = memref.alloca() : memref<1xi32>
      memref.store %c0_i32, %alloca[%c0] : memref<1xi32>
      %alloc = memref.alloc() {bufferNum = 5 : index, bufferSize = 65536 : index, init_signal = 13 : i64, pingpong_single, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %37 = sdnn.get_fifo_buffer %alloc, %18, {bufferNum = 5 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      sdnn.core_wait(4, 13) {core_name = "mma"}
      scf.for %arg8 = %c0_i32 to %c16_i32 step %c1_i32  : i32 {
        %54 = arith.index_cast %arg8 : i32 to index
        %55 = arith.muli %54, %c64 : index
        %56 = arith.muli %33, %c131072 : index
        %57 = arith.addi %56, %55 : index
        %58 = arith.cmpi sge, %57, %c524288 : index
        %59 = arith.divsi %57, %c524288 : index
        %60 = arith.muli %59, %c524288 : index
        %61 = arith.subi %57, %60 : index
        %62 = arith.select %58, %61, %57 : index
        %63 = arith.divsi %62, %c1024 : index
        %64 = arith.addi %63, %c128 : index
        %65 = arith.minsi %64, %c512 : index
        %66 = arith.subi %65, %63 : index
        %reinterpret_cast_6 = memref.reinterpret_cast %arg0 to offset: [%57], sizes: [%66, 64], strides: [1024, 1] : memref<*xbf16, 1> to memref<?x64xbf16, strided<[1024, 1], offset: ?>, 1>
        %cast_7 = memref.cast %reinterpret_cast_6 : memref<?x64xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
        %alloc_8 = memref.alloc() {bufferNum = 24 : index, bufferSize = 32768 : index, init_signal = 5 : i64, processed, sram = "l1d"} : memref<128x64xf32, #map1, 3>
        %67 = sdnn.get_fifo_buffer %alloc_8, %17, {bufferNum = 24 : i32, bufferSize = 32768 : i32} : memref<128x64xf32, #map1, 3> memref<1xi32, 6> to memref<128x64xf32, #map1, 3>
        %alloc_9 = memref.alloc() {bufferNum = 14 : index, bufferSize = 32768 : index, init_signal = 3 : i64, processed, sram = "uni_sram", trans = false} : memref<128x64xf32, #map1>
        %68 = sdnn.get_fifo_buffer %alloc_9, %16, {bufferNum = 14 : i32, bufferSize = 32768 : i32} : memref<128x64xf32, #map1> memref<1xi32, 6> to memref<128x64xf32, #map1>
        %dim = memref.dim %reinterpret_cast_6, %c0 : memref<?x64xbf16, strided<[1024, 1], offset: ?>, 1>
        %subview_10 = memref.subview %68[0, 0] [%dim, 64] [1, 1] : memref<128x64xf32, #map1> to memref<?x64xf32, strided<[64, 1]>>
        %cast_11 = memref.cast %subview_10 : memref<?x64xf32, strided<[64, 1]>> to memref<?x?xf32, strided<[64, 1]>>
        sdnn.dma in %cast_7, %cast_11 {core_id = 1 : i32, signal = array<i32: 2>, wait = array<i32: 3>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[64, 1]>> -> 
        sdnn.ds %68, %67 mask_dims[%c128, %c64] {sdnn.layout = "CR_RowMajor", signal = array<i32: 3, 4>, signal_cached = array<i32: 4>, wait = array<i32: 2, 5>, wait_cached = array<i32: 5>} : memref<128x64xf32, #map1> memref<128x64xf32, #map1, 3> -> 
        %69 = arith.muli %54, %c65536 : index
        %70 = arith.addi %69, %36 : index
        %71 = arith.remsi %70, %c1024 : index
        %72 = arith.addi %71, %c128 : index
        %73 = arith.minsi %72, %c1024 : index
        %74 = arith.subi %73, %71 : index
        %reinterpret_cast_12 = memref.reinterpret_cast %arg1 to offset: [%70], sizes: [64, %74], strides: [1024, 1] : memref<*xbf16, 1> to memref<64x?xbf16, strided<[1024, 1], offset: ?>, 1>
        %cast_13 = memref.cast %reinterpret_cast_12 : memref<64x?xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
        %alloc_14 = memref.alloc() {bufferNum = 40 : index, bufferSize = 32768 : index, init_signal = 9 : i64, processed, sram = "l1w"} : memref<64x128xf32, #map, 4>
        %75 = sdnn.get_fifo_buffer %alloc_14, %15, {bufferNum = 40 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map, 4> memref<1xi32, 6> to memref<64x128xf32, #map, 4>
        %alloc_15 = memref.alloc() {bufferNum = 14 : index, bufferSize = 32768 : index, init_signal = 7 : i64, processed, sram = "uni_sram", trans = false} : memref<64x128xf32, #map>
        %76 = sdnn.get_fifo_buffer %alloc_15, %14, {bufferNum = 14 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
        %dim_16 = memref.dim %reinterpret_cast_12, %c1 : memref<64x?xbf16, strided<[1024, 1], offset: ?>, 1>
        %subview_17 = memref.subview %76[0, 0] [64, %dim_16] [1, 1] : memref<64x128xf32, #map> to memref<64x?xf32, strided<[128, 1]>>
        %cast_18 = memref.cast %subview_17 : memref<64x?xf32, strided<[128, 1]>> to memref<?x?xf32, strided<[128, 1]>>
        sdnn.dma in %cast_13, %cast_18 {core_id = 6 : i32, signal = array<i32: 6>, wait = array<i32: 7>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[128, 1]>> -> 
        sdnn.ds %76, %75 mask_dims[%c64, %c128] {sdnn.layout = "CR_RowMajor", signal = array<i32: 7, 8>, signal_cached = array<i32: 8>, wait = array<i32: 6, 9>, wait_cached = array<i32: 9>} : memref<64x128xf32, #map> memref<64x128xf32, #map, 4> -> 
        %77 = memref.load %alloca[%c0] : memref<1xi32>
        sdnn.mma %67, %75, %37 acc %77 mask_dims[%c128, %c128, %c64] {indexing_maps = [#map2, #map3, #map4], rcOut = false, sdnn.layout = "CR_RowMajor", signal = array<i32: 5, 9>, wait = array<i32: 4, 8>} : (memref<128x64xf32, #map1, 3>, memref<64x128xf32, #map, 4>, memref<128x128xf32, #map>, i32, index, index, index) -> ()
        %78 = arith.addi %77, %c1_i32 : i32
        memref.store %78, %alloca[%c0] : memref<1xi32>
      } {mac_acc = true, sdnn.arg_layout.1 = "CR_RowMajor", sdnn.layout = "CR_RowMajor"}
      sdnn.core_arrive(4, 10) {core_name = "mma"}
      %reinterpret_cast = memref.reinterpret_cast %arg2 to offset: [%36], sizes: [1, 128], strides: [128, 1] : memref<*xbf16, 1> to memref<1x128xbf16, strided<[128, 1], offset: ?>, 1>
      %38 = arith.index_cast %32 : i32 to index
      %39 = arith.addi %38, %c128 : index
      %40 = arith.minsi %39, %c512 : index
      %41 = arith.maxsi %40, %38 : index
      %42 = arith.subi %41, %38 : index
      %43 = arith.index_cast %34 : i32 to index
      %44 = arith.addi %43, %c128 : index
      %45 = arith.minsi %44, %c1024 : index
      %46 = arith.maxsi %45, %43 : index
      %47 = arith.subi %46, %43 : index
      %48 = arith.minsi %47, %c128 : index
      %alloc_0 = memref.alloc() {bufferNum = 5 : index, bufferSize = 512 : index, init_signal = 18 : i64, processed, sram = "uni_sram", trans = false} : memref<1x128xf32, #map>
      %49 = sdnn.get_fifo_buffer %alloc_0, %13, {bufferNum = 5 : i32, bufferSize = 512 : i32} : memref<1x128xf32, #map> memref<1xi32, 6> to memref<1x128xf32, #map>
      %subview = memref.subview %reinterpret_cast[0, 0] [1, %48] [1, 1] : memref<1x128xbf16, strided<[128, 1], offset: ?>, 1> to memref<1x?xbf16, strided<[128, 1], offset: ?>, 1>
      %alloc_1 = memref.alloc() {bufferNum = 5 : index, bufferSize = 65536 : index, init_signal = 16 : i64, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %50 = sdnn.get_fifo_buffer %alloc_1, %12, {bufferNum = 5 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      sdnn.core_wait(3, 10)
      sdnn.core_wait(3, 16)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%37, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%50 : memref<128x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<128x128xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_6 = arith.constant 0 : index
        %c128_7 = arith.constant 128 : index
        %c1_8 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        scf.for %arg17 = %c0_6 to %c16 step %c1_8 {
          scf.for %arg18 = %c0_6 to %c128_7 step %c1_8 {
            %54 = memref.load %arg8[%arg17, %arg18] : memref<128x128xf32, #map>
            %55 = arith.bitcast %54 : f32 to i32
            %56 = arith.andi %55, %arg9 : i32
            %57 = arith.ori %55, %arg10 : i32
            %58 = arith.cmpi ugt, %56, %arg11 : i32
            %59 = arith.select %58, %57, %55 : i32
            %60 = arith.addi %55, %arg12 : i32
            %61 = arith.shrui %55, %arg13 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.addi %60, %62 : i32
            %64 = arith.andi %63, %arg15 : i32
            %65 = arith.cmpi uge, %56, %arg11 : i32
            %66 = arith.select %65, %59, %64 : i32
            %67 = arith.bitcast %66 : i32 to f32
            memref.store %67, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%37, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%50 : memref<128x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<128x128xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_6 = arith.constant 0 : index
        %c128_7 = arith.constant 128 : index
        %c1_8 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        %c32 = arith.constant 32 : index
        scf.for %arg17 = %c16 to %c32 step %c1_8 {
          scf.for %arg18 = %c0_6 to %c128_7 step %c1_8 {
            %54 = memref.load %arg8[%arg17, %arg18] : memref<128x128xf32, #map>
            %55 = arith.bitcast %54 : f32 to i32
            %56 = arith.andi %55, %arg9 : i32
            %57 = arith.ori %55, %arg10 : i32
            %58 = arith.cmpi ugt, %56, %arg11 : i32
            %59 = arith.select %58, %57, %55 : i32
            %60 = arith.addi %55, %arg12 : i32
            %61 = arith.shrui %55, %arg13 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.addi %60, %62 : i32
            %64 = arith.andi %63, %arg15 : i32
            %65 = arith.cmpi uge, %56, %arg11 : i32
            %66 = arith.select %65, %59, %64 : i32
            %67 = arith.bitcast %66 : i32 to f32
            memref.store %67, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%37, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%50 : memref<128x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<128x128xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_6 = arith.constant 0 : index
        %c128_7 = arith.constant 128 : index
        %c1_8 = arith.constant 1 : index
        %c32 = arith.constant 32 : index
        %c48 = arith.constant 48 : index
        scf.for %arg17 = %c32 to %c48 step %c1_8 {
          scf.for %arg18 = %c0_6 to %c128_7 step %c1_8 {
            %54 = memref.load %arg8[%arg17, %arg18] : memref<128x128xf32, #map>
            %55 = arith.bitcast %54 : f32 to i32
            %56 = arith.andi %55, %arg9 : i32
            %57 = arith.ori %55, %arg10 : i32
            %58 = arith.cmpi ugt, %56, %arg11 : i32
            %59 = arith.select %58, %57, %55 : i32
            %60 = arith.addi %55, %arg12 : i32
            %61 = arith.shrui %55, %arg13 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.addi %60, %62 : i32
            %64 = arith.andi %63, %arg15 : i32
            %65 = arith.cmpi uge, %56, %arg11 : i32
            %66 = arith.select %65, %59, %64 : i32
            %67 = arith.bitcast %66 : i32 to f32
            memref.store %67, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%37, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%50 : memref<128x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<128x128xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_6 = arith.constant 0 : index
        %c128_7 = arith.constant 128 : index
        %c1_8 = arith.constant 1 : index
        %c48 = arith.constant 48 : index
        %c64_9 = arith.constant 64 : index
        scf.for %arg17 = %c48 to %c64_9 step %c1_8 {
          scf.for %arg18 = %c0_6 to %c128_7 step %c1_8 {
            %54 = memref.load %arg8[%arg17, %arg18] : memref<128x128xf32, #map>
            %55 = arith.bitcast %54 : f32 to i32
            %56 = arith.andi %55, %arg9 : i32
            %57 = arith.ori %55, %arg10 : i32
            %58 = arith.cmpi ugt, %56, %arg11 : i32
            %59 = arith.select %58, %57, %55 : i32
            %60 = arith.addi %55, %arg12 : i32
            %61 = arith.shrui %55, %arg13 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.addi %60, %62 : i32
            %64 = arith.andi %63, %arg15 : i32
            %65 = arith.cmpi uge, %56, %arg11 : i32
            %66 = arith.select %65, %59, %64 : i32
            %67 = arith.bitcast %66 : i32 to f32
            memref.store %67, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%37, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%50 : memref<128x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<128x128xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_6 = arith.constant 0 : index
        %c128_7 = arith.constant 128 : index
        %c1_8 = arith.constant 1 : index
        %c64_9 = arith.constant 64 : index
        %c80 = arith.constant 80 : index
        scf.for %arg17 = %c64_9 to %c80 step %c1_8 {
          scf.for %arg18 = %c0_6 to %c128_7 step %c1_8 {
            %54 = memref.load %arg8[%arg17, %arg18] : memref<128x128xf32, #map>
            %55 = arith.bitcast %54 : f32 to i32
            %56 = arith.andi %55, %arg9 : i32
            %57 = arith.ori %55, %arg10 : i32
            %58 = arith.cmpi ugt, %56, %arg11 : i32
            %59 = arith.select %58, %57, %55 : i32
            %60 = arith.addi %55, %arg12 : i32
            %61 = arith.shrui %55, %arg13 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.addi %60, %62 : i32
            %64 = arith.andi %63, %arg15 : i32
            %65 = arith.cmpi uge, %56, %arg11 : i32
            %66 = arith.select %65, %59, %64 : i32
            %67 = arith.bitcast %66 : i32 to f32
            memref.store %67, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%37, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%50 : memref<128x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<128x128xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_6 = arith.constant 0 : index
        %c128_7 = arith.constant 128 : index
        %c1_8 = arith.constant 1 : index
        %c80 = arith.constant 80 : index
        %c96 = arith.constant 96 : index
        scf.for %arg17 = %c80 to %c96 step %c1_8 {
          scf.for %arg18 = %c0_6 to %c128_7 step %c1_8 {
            %54 = memref.load %arg8[%arg17, %arg18] : memref<128x128xf32, #map>
            %55 = arith.bitcast %54 : f32 to i32
            %56 = arith.andi %55, %arg9 : i32
            %57 = arith.ori %55, %arg10 : i32
            %58 = arith.cmpi ugt, %56, %arg11 : i32
            %59 = arith.select %58, %57, %55 : i32
            %60 = arith.addi %55, %arg12 : i32
            %61 = arith.shrui %55, %arg13 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.addi %60, %62 : i32
            %64 = arith.andi %63, %arg15 : i32
            %65 = arith.cmpi uge, %56, %arg11 : i32
            %66 = arith.select %65, %59, %64 : i32
            %67 = arith.bitcast %66 : i32 to f32
            memref.store %67, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%37, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%50 : memref<128x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<128x128xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_6 = arith.constant 0 : index
        %c128_7 = arith.constant 128 : index
        %c1_8 = arith.constant 1 : index
        %c96 = arith.constant 96 : index
        %c112 = arith.constant 112 : index
        scf.for %arg17 = %c96 to %c112 step %c1_8 {
          scf.for %arg18 = %c0_6 to %c128_7 step %c1_8 {
            %54 = memref.load %arg8[%arg17, %arg18] : memref<128x128xf32, #map>
            %55 = arith.bitcast %54 : f32 to i32
            %56 = arith.andi %55, %arg9 : i32
            %57 = arith.ori %55, %arg10 : i32
            %58 = arith.cmpi ugt, %56, %arg11 : i32
            %59 = arith.select %58, %57, %55 : i32
            %60 = arith.addi %55, %arg12 : i32
            %61 = arith.shrui %55, %arg13 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.addi %60, %62 : i32
            %64 = arith.andi %63, %arg15 : i32
            %65 = arith.cmpi uge, %56, %arg11 : i32
            %66 = arith.select %65, %59, %64 : i32
            %67 = arith.bitcast %66 : i32 to f32
            memref.store %67, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%37, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%50 : memref<128x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<128x128xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_6 = arith.constant 0 : index
        %c128_7 = arith.constant 128 : index
        %c1_8 = arith.constant 1 : index
        %c112 = arith.constant 112 : index
        scf.for %arg17 = %c112 to %c128_7 step %c1_8 {
          scf.for %arg18 = %c0_6 to %c128_7 step %c1_8 {
            %54 = memref.load %arg8[%arg17, %arg18] : memref<128x128xf32, #map>
            %55 = arith.bitcast %54 : f32 to i32
            %56 = arith.andi %55, %arg9 : i32
            %57 = arith.ori %55, %arg10 : i32
            %58 = arith.cmpi ugt, %56, %arg11 : i32
            %59 = arith.select %58, %57, %55 : i32
            %60 = arith.addi %55, %arg12 : i32
            %61 = arith.shrui %55, %arg13 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.addi %60, %62 : i32
            %64 = arith.andi %63, %arg15 : i32
            %65 = arith.cmpi uge, %56, %arg11 : i32
            %66 = arith.select %65, %59, %64 : i32
            %67 = arith.bitcast %66 : i32 to f32
            memref.store %67, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 11)
      sdnn.core_arrive(3, 14)
      %subview_2 = memref.subview %49[0, 0] [1, %48] [1, 1] : memref<1x128xf32, #map> to memref<1x?xf32, strided<[128, 1]>>
      sdnn.dma in %subview, %subview_2 {core_id = 1 : i32, signal = array<i32: 17>, wait = array<i32: 18>} : memref<1x?xbf16, strided<[128, 1], offset: ?>, 1> memref<1x?xf32, strided<[128, 1]>> -> 
      sdnn.ew linear %50 src0 %50 src1 %49 a %cst b %cst {sdnn.layout = "CR_RowMajor", signal = array<i32: 15, 18>, wait = array<i32: 14, 17>} : (memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<1x128xf32, #map>, f32, f32) -> ()
      sdnn.core_wait(3, 11)
      sdnn.core_wait(3, 15)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%50, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%37 : memref<128x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<128x128xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_6 = arith.constant 0 : index
        %c128_7 = arith.constant 128 : index
        %c1_8 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        scf.for %arg17 = %c0_6 to %c16 step %c1_8 {
          scf.for %arg18 = %c0_6 to %c128_7 step %c1_8 {
            %54 = memref.load %arg8[%arg17, %arg18] : memref<128x128xf32, #map>
            %55 = arith.bitcast %54 : f32 to i32
            %56 = arith.andi %55, %arg9 : i32
            %57 = arith.ori %55, %arg10 : i32
            %58 = arith.cmpi ugt, %56, %arg11 : i32
            %59 = arith.select %58, %57, %55 : i32
            %60 = arith.addi %55, %arg12 : i32
            %61 = arith.shrui %55, %arg13 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.addi %60, %62 : i32
            %64 = arith.andi %63, %arg15 : i32
            %65 = arith.cmpi uge, %56, %arg11 : i32
            %66 = arith.select %65, %59, %64 : i32
            %67 = arith.bitcast %66 : i32 to f32
            memref.store %67, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%50, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%37 : memref<128x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<128x128xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_6 = arith.constant 0 : index
        %c128_7 = arith.constant 128 : index
        %c1_8 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        %c32 = arith.constant 32 : index
        scf.for %arg17 = %c16 to %c32 step %c1_8 {
          scf.for %arg18 = %c0_6 to %c128_7 step %c1_8 {
            %54 = memref.load %arg8[%arg17, %arg18] : memref<128x128xf32, #map>
            %55 = arith.bitcast %54 : f32 to i32
            %56 = arith.andi %55, %arg9 : i32
            %57 = arith.ori %55, %arg10 : i32
            %58 = arith.cmpi ugt, %56, %arg11 : i32
            %59 = arith.select %58, %57, %55 : i32
            %60 = arith.addi %55, %arg12 : i32
            %61 = arith.shrui %55, %arg13 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.addi %60, %62 : i32
            %64 = arith.andi %63, %arg15 : i32
            %65 = arith.cmpi uge, %56, %arg11 : i32
            %66 = arith.select %65, %59, %64 : i32
            %67 = arith.bitcast %66 : i32 to f32
            memref.store %67, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%50, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%37 : memref<128x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<128x128xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_6 = arith.constant 0 : index
        %c128_7 = arith.constant 128 : index
        %c1_8 = arith.constant 1 : index
        %c32 = arith.constant 32 : index
        %c48 = arith.constant 48 : index
        scf.for %arg17 = %c32 to %c48 step %c1_8 {
          scf.for %arg18 = %c0_6 to %c128_7 step %c1_8 {
            %54 = memref.load %arg8[%arg17, %arg18] : memref<128x128xf32, #map>
            %55 = arith.bitcast %54 : f32 to i32
            %56 = arith.andi %55, %arg9 : i32
            %57 = arith.ori %55, %arg10 : i32
            %58 = arith.cmpi ugt, %56, %arg11 : i32
            %59 = arith.select %58, %57, %55 : i32
            %60 = arith.addi %55, %arg12 : i32
            %61 = arith.shrui %55, %arg13 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.addi %60, %62 : i32
            %64 = arith.andi %63, %arg15 : i32
            %65 = arith.cmpi uge, %56, %arg11 : i32
            %66 = arith.select %65, %59, %64 : i32
            %67 = arith.bitcast %66 : i32 to f32
            memref.store %67, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%50, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%37 : memref<128x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<128x128xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_6 = arith.constant 0 : index
        %c128_7 = arith.constant 128 : index
        %c1_8 = arith.constant 1 : index
        %c48 = arith.constant 48 : index
        %c64_9 = arith.constant 64 : index
        scf.for %arg17 = %c48 to %c64_9 step %c1_8 {
          scf.for %arg18 = %c0_6 to %c128_7 step %c1_8 {
            %54 = memref.load %arg8[%arg17, %arg18] : memref<128x128xf32, #map>
            %55 = arith.bitcast %54 : f32 to i32
            %56 = arith.andi %55, %arg9 : i32
            %57 = arith.ori %55, %arg10 : i32
            %58 = arith.cmpi ugt, %56, %arg11 : i32
            %59 = arith.select %58, %57, %55 : i32
            %60 = arith.addi %55, %arg12 : i32
            %61 = arith.shrui %55, %arg13 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.addi %60, %62 : i32
            %64 = arith.andi %63, %arg15 : i32
            %65 = arith.cmpi uge, %56, %arg11 : i32
            %66 = arith.select %65, %59, %64 : i32
            %67 = arith.bitcast %66 : i32 to f32
            memref.store %67, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%50, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%37 : memref<128x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<128x128xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_6 = arith.constant 0 : index
        %c128_7 = arith.constant 128 : index
        %c1_8 = arith.constant 1 : index
        %c64_9 = arith.constant 64 : index
        %c80 = arith.constant 80 : index
        scf.for %arg17 = %c64_9 to %c80 step %c1_8 {
          scf.for %arg18 = %c0_6 to %c128_7 step %c1_8 {
            %54 = memref.load %arg8[%arg17, %arg18] : memref<128x128xf32, #map>
            %55 = arith.bitcast %54 : f32 to i32
            %56 = arith.andi %55, %arg9 : i32
            %57 = arith.ori %55, %arg10 : i32
            %58 = arith.cmpi ugt, %56, %arg11 : i32
            %59 = arith.select %58, %57, %55 : i32
            %60 = arith.addi %55, %arg12 : i32
            %61 = arith.shrui %55, %arg13 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.addi %60, %62 : i32
            %64 = arith.andi %63, %arg15 : i32
            %65 = arith.cmpi uge, %56, %arg11 : i32
            %66 = arith.select %65, %59, %64 : i32
            %67 = arith.bitcast %66 : i32 to f32
            memref.store %67, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%50, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%37 : memref<128x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<128x128xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_6 = arith.constant 0 : index
        %c128_7 = arith.constant 128 : index
        %c1_8 = arith.constant 1 : index
        %c80 = arith.constant 80 : index
        %c96 = arith.constant 96 : index
        scf.for %arg17 = %c80 to %c96 step %c1_8 {
          scf.for %arg18 = %c0_6 to %c128_7 step %c1_8 {
            %54 = memref.load %arg8[%arg17, %arg18] : memref<128x128xf32, #map>
            %55 = arith.bitcast %54 : f32 to i32
            %56 = arith.andi %55, %arg9 : i32
            %57 = arith.ori %55, %arg10 : i32
            %58 = arith.cmpi ugt, %56, %arg11 : i32
            %59 = arith.select %58, %57, %55 : i32
            %60 = arith.addi %55, %arg12 : i32
            %61 = arith.shrui %55, %arg13 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.addi %60, %62 : i32
            %64 = arith.andi %63, %arg15 : i32
            %65 = arith.cmpi uge, %56, %arg11 : i32
            %66 = arith.select %65, %59, %64 : i32
            %67 = arith.bitcast %66 : i32 to f32
            memref.store %67, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%50, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%37 : memref<128x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<128x128xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_6 = arith.constant 0 : index
        %c128_7 = arith.constant 128 : index
        %c1_8 = arith.constant 1 : index
        %c96 = arith.constant 96 : index
        %c112 = arith.constant 112 : index
        scf.for %arg17 = %c96 to %c112 step %c1_8 {
          scf.for %arg18 = %c0_6 to %c128_7 step %c1_8 {
            %54 = memref.load %arg8[%arg17, %arg18] : memref<128x128xf32, #map>
            %55 = arith.bitcast %54 : f32 to i32
            %56 = arith.andi %55, %arg9 : i32
            %57 = arith.ori %55, %arg10 : i32
            %58 = arith.cmpi ugt, %56, %arg11 : i32
            %59 = arith.select %58, %57, %55 : i32
            %60 = arith.addi %55, %arg12 : i32
            %61 = arith.shrui %55, %arg13 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.addi %60, %62 : i32
            %64 = arith.andi %63, %arg15 : i32
            %65 = arith.cmpi uge, %56, %arg11 : i32
            %66 = arith.select %65, %59, %64 : i32
            %67 = arith.bitcast %66 : i32 to f32
            memref.store %67, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%50, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%37 : memref<128x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg8: memref<128x128xf32, #map>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_6 = arith.constant 0 : index
        %c128_7 = arith.constant 128 : index
        %c1_8 = arith.constant 1 : index
        %c112 = arith.constant 112 : index
        scf.for %arg17 = %c112 to %c128_7 step %c1_8 {
          scf.for %arg18 = %c0_6 to %c128_7 step %c1_8 {
            %54 = memref.load %arg8[%arg17, %arg18] : memref<128x128xf32, #map>
            %55 = arith.bitcast %54 : f32 to i32
            %56 = arith.andi %55, %arg9 : i32
            %57 = arith.ori %55, %arg10 : i32
            %58 = arith.cmpi ugt, %56, %arg11 : i32
            %59 = arith.select %58, %57, %55 : i32
            %60 = arith.addi %55, %arg12 : i32
            %61 = arith.shrui %55, %arg13 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.addi %60, %62 : i32
            %64 = arith.andi %63, %arg15 : i32
            %65 = arith.cmpi uge, %56, %arg11 : i32
            %66 = arith.select %65, %59, %64 : i32
            %67 = arith.bitcast %66 : i32 to f32
            memref.store %67, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 12)
      sdnn.core_arrive(3, 16)
      %51 = arith.muli %33, %c131072 : index
      %52 = arith.addi %51, %36 : index
      %reinterpret_cast_3 = memref.reinterpret_cast %arg3 to offset: [%52], sizes: [128, 128], strides: [1024, 1] : memref<*xbf16, 1> to memref<128x128xbf16, strided<[1024, 1], offset: ?>, 1>
      %53 = arith.minsi %42, %c128 : index
      %subview_4 = memref.subview %reinterpret_cast_3[0, 0] [%53, %48] [1, 1] : memref<128x128xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[1024, 1], offset: ?>, 1>
      %cast = memref.cast %subview_4 : memref<?x?xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, 1], offset: ?>, 1>
      %subview_5 = memref.subview %37[0, 0] [%53, %48] [1, 1] : memref<128x128xf32, #map> to memref<?x?xf32, strided<[128, 1]>>
      sdnn.dma out %subview_5, %cast {signal = array<i32: 13>, wait = array<i32: 12>} : memref<?x?xf32, strided<[128, 1]>> memref<?x?xbf16, strided<[?, 1], offset: ?>, 1> -> 
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
