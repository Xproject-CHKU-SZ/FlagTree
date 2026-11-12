#map = affine_map<(d0, d1) -> (d0 * 128 + d1)>
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
    %c128_i32 = arith.constant 128 : i32
    %c8_i32 = arith.constant 8 : i32
    %c64_i32 = arith.constant 64 : i32
    %c4_i32 = arith.constant 4 : i32
    %cst = arith.constant 1.000000e+00 : f32
    %c2147483647_i32 = arith.constant 2147483647 : i32
    %c2139095040_i32 = arith.constant 2139095040 : i32
    %c0_i32 = arith.constant 0 : i32
    %c2143289344_i32 = arith.constant 2143289344 : i32
    %c16_i32 = arith.constant 16 : i32
    %c1_i32 = arith.constant 1 : i32
    %c32767_i32 = arith.constant 32767 : i32
    %c-65536_i32 = arith.constant -65536 : i32
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
    %reinterpret_cast = memref.reinterpret_cast %arg4 to offset: [0], sizes: [1024], strides: [1] : memref<*xf32, 1> to memref<1024xf32, 1>
    "sdnn.init"(%reinterpret_cast) {signal = [array<i32: 16, 11, 5, 3, 9, 7, 18, 22, 24, 26>], signal_num = array<i64: 4, 4, 24, 4, 40, 4, 4, 4, 4, 4>} : (memref<1024xf32, 1>) -> ()
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
    %16 = sdnn.counter {bufferNum = 4 : i32} : memref<1xi32, 6>
    %17 = sdnn.counter {bufferNum = 40 : i32} : memref<1xi32, 6>
    %18 = sdnn.counter {bufferNum = 4 : i32} : memref<1xi32, 6>
    %19 = sdnn.counter {bufferNum = 24 : i32} : memref<1xi32, 6>
    %20 = sdnn.counter {bufferNum = 4 : i32} : memref<1xi32, 6>
    %21 = sdnn.counter {bufferNum = 4 : i32} : memref<1xi32, 6>
    scf.for %arg8 = %10 to %11 step %c1 {
      %22 = arith.index_cast %arg8 : index to i32
      %23 = arith.divsi %22, %arg7 : i32
      %24 = arith.divsi %23, %arg6 : i32
      %25 = arith.divsi %24, %c64_i32 : i32
      %26 = arith.muli %25, %c8_i32 : i32
      %27 = arith.subi %c4_i32, %26 : i32
      %28 = arith.minsi %27, %c8_i32 : i32
      %29 = arith.remsi %24, %28 : i32
      %30 = arith.addi %26, %29 : i32
      %31 = arith.remsi %24, %c64_i32 : i32
      %32 = arith.divsi %31, %28 : i32
      %33 = arith.cmpi sge, %30, %c0_i32 : i32
      llvm.intr.assume %33 : i1
      %34 = arith.cmpi sge, %32, %c0_i32 : i32
      llvm.intr.assume %34 : i1
      %35 = arith.muli %30, %c128_i32 : i32
      %36 = arith.index_cast %30 : i32 to index
      %37 = arith.muli %32, %c128_i32 : i32
      %38 = arith.index_cast %32 : i32 to index
      %39 = arith.muli %38, %c128 : index
      %alloca = memref.alloca() : memref<1xi32>
      memref.store %c0_i32, %alloca[%c0] : memref<1xi32>
      %alloc = memref.alloc() {bufferNum = 4 : index, bufferSize = 65536 : index, init_signal = 16 : i64, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %40 = sdnn.get_fifo_buffer %alloc, %21, {bufferNum = 4 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      %alloc_0 = memref.alloc() {bufferNum = 4 : index, bufferSize = 65536 : index, init_signal = 11 : i64, pingpong_single, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %41 = sdnn.get_fifo_buffer %alloc_0, %20, {bufferNum = 4 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      sdnn.core_wait(4, 11) {core_name = "mma"}
      scf.for %arg9 = %c0_i32 to %c16_i32 step %c1_i32  : i32 {
        %60 = arith.index_cast %arg9 : i32 to index
        %61 = arith.muli %60, %c64 : index
        %62 = arith.muli %36, %c131072 : index
        %63 = arith.addi %62, %61 : index
        %64 = arith.cmpi sge, %63, %c524288 : index
        %65 = arith.divsi %63, %c524288 : index
        %66 = arith.muli %65, %c524288 : index
        %67 = arith.subi %63, %66 : index
        %68 = arith.select %64, %67, %63 : index
        %69 = arith.divsi %68, %c1024 : index
        %70 = arith.addi %69, %c128 : index
        %71 = arith.minsi %70, %c512 : index
        %72 = arith.subi %71, %69 : index
        %reinterpret_cast_10 = memref.reinterpret_cast %arg0 to offset: [%63], sizes: [%72, 64], strides: [1024, 1] : memref<*xbf16, 1> to memref<?x64xbf16, strided<[1024, 1], offset: ?>, 1>
        %cast_11 = memref.cast %reinterpret_cast_10 : memref<?x64xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
        %alloc_12 = memref.alloc() {bufferNum = 24 : index, bufferSize = 32768 : index, init_signal = 5 : i64, processed, sram = "l1d"} : memref<128x64xf32, #map1, 3>
        %73 = sdnn.get_fifo_buffer %alloc_12, %19, {bufferNum = 24 : i32, bufferSize = 32768 : i32} : memref<128x64xf32, #map1, 3> memref<1xi32, 6> to memref<128x64xf32, #map1, 3>
        %alloc_13 = memref.alloc() {bufferNum = 4 : index, bufferSize = 32768 : index, init_signal = 3 : i64, processed, sram = "uni_sram", trans = false} : memref<128x64xf32, #map1>
        %74 = sdnn.get_fifo_buffer %alloc_13, %18, {bufferNum = 4 : i32, bufferSize = 32768 : i32} : memref<128x64xf32, #map1> memref<1xi32, 6> to memref<128x64xf32, #map1>
        %dim = memref.dim %reinterpret_cast_10, %c0 : memref<?x64xbf16, strided<[1024, 1], offset: ?>, 1>
        %subview_14 = memref.subview %74[0, 0] [%dim, 64] [1, 1] : memref<128x64xf32, #map1> to memref<?x64xf32, strided<[64, 1]>>
        %cast_15 = memref.cast %subview_14 : memref<?x64xf32, strided<[64, 1]>> to memref<?x?xf32, strided<[64, 1]>>
        sdnn.dma in %cast_11, %cast_15 {core_id = 1 : i32, signal = array<i32: 2>, wait = array<i32: 3>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[64, 1]>> -> 
        sdnn.ds %74, %73 mask_dims[%c128, %c64] {sdnn.layout = "CR_RowMajor", signal = array<i32: 3, 4>, signal_cached = array<i32: 4>, wait = array<i32: 2, 5>, wait_cached = array<i32: 5>} : memref<128x64xf32, #map1> memref<128x64xf32, #map1, 3> -> 
        %75 = arith.muli %60, %c65536 : index
        %76 = arith.addi %75, %39 : index
        %77 = arith.remsi %76, %c1024 : index
        %78 = arith.addi %77, %c128 : index
        %79 = arith.minsi %78, %c1024 : index
        %80 = arith.subi %79, %77 : index
        %reinterpret_cast_16 = memref.reinterpret_cast %arg1 to offset: [%76], sizes: [64, %80], strides: [1024, 1] : memref<*xbf16, 1> to memref<64x?xbf16, strided<[1024, 1], offset: ?>, 1>
        %cast_17 = memref.cast %reinterpret_cast_16 : memref<64x?xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
        %alloc_18 = memref.alloc() {bufferNum = 40 : index, bufferSize = 32768 : index, init_signal = 9 : i64, processed, sram = "l1w"} : memref<64x128xf32, #map, 4>
        %81 = sdnn.get_fifo_buffer %alloc_18, %17, {bufferNum = 40 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map, 4> memref<1xi32, 6> to memref<64x128xf32, #map, 4>
        %alloc_19 = memref.alloc() {bufferNum = 4 : index, bufferSize = 32768 : index, init_signal = 7 : i64, processed, sram = "uni_sram", trans = false} : memref<64x128xf32, #map>
        %82 = sdnn.get_fifo_buffer %alloc_19, %16, {bufferNum = 4 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
        %dim_20 = memref.dim %reinterpret_cast_16, %c1 : memref<64x?xbf16, strided<[1024, 1], offset: ?>, 1>
        %subview_21 = memref.subview %82[0, 0] [64, %dim_20] [1, 1] : memref<64x128xf32, #map> to memref<64x?xf32, strided<[128, 1]>>
        %cast_22 = memref.cast %subview_21 : memref<64x?xf32, strided<[128, 1]>> to memref<?x?xf32, strided<[128, 1]>>
        sdnn.dma in %cast_17, %cast_22 {core_id = 6 : i32, signal = array<i32: 6>, wait = array<i32: 7>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[128, 1]>> -> 
        sdnn.ds %82, %81 mask_dims[%c64, %c128] {sdnn.layout = "CR_RowMajor", signal = array<i32: 7, 8>, signal_cached = array<i32: 8>, wait = array<i32: 6, 9>, wait_cached = array<i32: 9>} : memref<64x128xf32, #map> memref<64x128xf32, #map, 4> -> 
        %83 = memref.load %alloca[%c0] : memref<1xi32>
        sdnn.mma %73, %81, %41 acc %83 mask_dims[%c128, %c128, %c64] {indexing_maps = [#map2, #map3, #map4], rcOut = false, sdnn.layout = "CR_RowMajor", signal = array<i32: 5, 9>, wait = array<i32: 4, 8>} : (memref<128x64xf32, #map1, 3>, memref<64x128xf32, #map, 4>, memref<128x128xf32, #map>, i32, index, index, index) -> ()
        %84 = arith.addi %83, %c1_i32 : i32
        memref.store %84, %alloca[%c0] : memref<1xi32>
      } {mac_acc = true, sdnn.arg_layout.1 = "CR_RowMajor", sdnn.layout = "CR_RowMajor"}
      sdnn.core_arrive(4, 10) {core_name = "mma"}
      %reinterpret_cast_1 = memref.reinterpret_cast %arg2 to offset: [%39], sizes: [1, 128], strides: [128, 1] : memref<*xbf16, 1> to memref<1x128xbf16, strided<[128, 1], offset: ?>, 1>
      %42 = arith.index_cast %35 : i32 to index
      %43 = arith.addi %42, %c128 : index
      %44 = arith.minsi %43, %c512 : index
      %45 = arith.maxsi %44, %42 : index
      %46 = arith.subi %45, %42 : index
      %47 = arith.index_cast %37 : i32 to index
      %48 = arith.addi %47, %c128 : index
      %49 = arith.minsi %48, %c1024 : index
      %50 = arith.maxsi %49, %47 : index
      %51 = arith.subi %50, %47 : index
      %52 = arith.minsi %51, %c128 : index
      %alloc_2 = memref.alloc() {bufferNum = 4 : index, bufferSize = 512 : index, init_signal = 18 : i64, processed, sram = "uni_sram", trans = false} : memref<1x128xf32, #map>
      %53 = sdnn.get_fifo_buffer %alloc_2, %15, {bufferNum = 4 : i32, bufferSize = 512 : i32} : memref<1x128xf32, #map> memref<1xi32, 6> to memref<1x128xf32, #map>
      %subview = memref.subview %reinterpret_cast_1[0, 0] [1, %52] [1, 1] : memref<1x128xbf16, strided<[128, 1], offset: ?>, 1> to memref<1x?xbf16, strided<[128, 1], offset: ?>, 1>
      sdnn.core_wait(3, 10)
      sdnn.core_wait(3, 16)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%41, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%40 : memref<128x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        scf.for %arg18 = %c0_10 to %c16 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg18, %arg19] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.andi %61, %arg10 : i32
            %63 = arith.ori %61, %arg11 : i32
            %64 = arith.cmpi ugt, %62, %arg12 : i32
            %65 = arith.select %64, %63, %61 : i32
            %66 = arith.addi %61, %arg13 : i32
            %67 = arith.shrui %61, %arg14 : i32
            %68 = arith.andi %67, %arg15 : i32
            %69 = arith.addi %66, %68 : i32
            %70 = arith.andi %69, %arg16 : i32
            %71 = arith.cmpi uge, %62, %arg12 : i32
            %72 = arith.select %71, %65, %70 : i32
            %73 = arith.bitcast %72 : i32 to f32
            memref.store %73, %arg17[%arg18, %arg19] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%41, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%40 : memref<128x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        %c32 = arith.constant 32 : index
        scf.for %arg18 = %c16 to %c32 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg18, %arg19] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.andi %61, %arg10 : i32
            %63 = arith.ori %61, %arg11 : i32
            %64 = arith.cmpi ugt, %62, %arg12 : i32
            %65 = arith.select %64, %63, %61 : i32
            %66 = arith.addi %61, %arg13 : i32
            %67 = arith.shrui %61, %arg14 : i32
            %68 = arith.andi %67, %arg15 : i32
            %69 = arith.addi %66, %68 : i32
            %70 = arith.andi %69, %arg16 : i32
            %71 = arith.cmpi uge, %62, %arg12 : i32
            %72 = arith.select %71, %65, %70 : i32
            %73 = arith.bitcast %72 : i32 to f32
            memref.store %73, %arg17[%arg18, %arg19] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%41, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%40 : memref<128x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c32 = arith.constant 32 : index
        %c48 = arith.constant 48 : index
        scf.for %arg18 = %c32 to %c48 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg18, %arg19] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.andi %61, %arg10 : i32
            %63 = arith.ori %61, %arg11 : i32
            %64 = arith.cmpi ugt, %62, %arg12 : i32
            %65 = arith.select %64, %63, %61 : i32
            %66 = arith.addi %61, %arg13 : i32
            %67 = arith.shrui %61, %arg14 : i32
            %68 = arith.andi %67, %arg15 : i32
            %69 = arith.addi %66, %68 : i32
            %70 = arith.andi %69, %arg16 : i32
            %71 = arith.cmpi uge, %62, %arg12 : i32
            %72 = arith.select %71, %65, %70 : i32
            %73 = arith.bitcast %72 : i32 to f32
            memref.store %73, %arg17[%arg18, %arg19] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%41, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%40 : memref<128x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c48 = arith.constant 48 : index
        %c64_13 = arith.constant 64 : index
        scf.for %arg18 = %c48 to %c64_13 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg18, %arg19] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.andi %61, %arg10 : i32
            %63 = arith.ori %61, %arg11 : i32
            %64 = arith.cmpi ugt, %62, %arg12 : i32
            %65 = arith.select %64, %63, %61 : i32
            %66 = arith.addi %61, %arg13 : i32
            %67 = arith.shrui %61, %arg14 : i32
            %68 = arith.andi %67, %arg15 : i32
            %69 = arith.addi %66, %68 : i32
            %70 = arith.andi %69, %arg16 : i32
            %71 = arith.cmpi uge, %62, %arg12 : i32
            %72 = arith.select %71, %65, %70 : i32
            %73 = arith.bitcast %72 : i32 to f32
            memref.store %73, %arg17[%arg18, %arg19] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%41, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%40 : memref<128x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c64_13 = arith.constant 64 : index
        %c80 = arith.constant 80 : index
        scf.for %arg18 = %c64_13 to %c80 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg18, %arg19] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.andi %61, %arg10 : i32
            %63 = arith.ori %61, %arg11 : i32
            %64 = arith.cmpi ugt, %62, %arg12 : i32
            %65 = arith.select %64, %63, %61 : i32
            %66 = arith.addi %61, %arg13 : i32
            %67 = arith.shrui %61, %arg14 : i32
            %68 = arith.andi %67, %arg15 : i32
            %69 = arith.addi %66, %68 : i32
            %70 = arith.andi %69, %arg16 : i32
            %71 = arith.cmpi uge, %62, %arg12 : i32
            %72 = arith.select %71, %65, %70 : i32
            %73 = arith.bitcast %72 : i32 to f32
            memref.store %73, %arg17[%arg18, %arg19] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%41, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%40 : memref<128x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c80 = arith.constant 80 : index
        %c96 = arith.constant 96 : index
        scf.for %arg18 = %c80 to %c96 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg18, %arg19] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.andi %61, %arg10 : i32
            %63 = arith.ori %61, %arg11 : i32
            %64 = arith.cmpi ugt, %62, %arg12 : i32
            %65 = arith.select %64, %63, %61 : i32
            %66 = arith.addi %61, %arg13 : i32
            %67 = arith.shrui %61, %arg14 : i32
            %68 = arith.andi %67, %arg15 : i32
            %69 = arith.addi %66, %68 : i32
            %70 = arith.andi %69, %arg16 : i32
            %71 = arith.cmpi uge, %62, %arg12 : i32
            %72 = arith.select %71, %65, %70 : i32
            %73 = arith.bitcast %72 : i32 to f32
            memref.store %73, %arg17[%arg18, %arg19] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%41, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%40 : memref<128x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c96 = arith.constant 96 : index
        %c112 = arith.constant 112 : index
        scf.for %arg18 = %c96 to %c112 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg18, %arg19] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.andi %61, %arg10 : i32
            %63 = arith.ori %61, %arg11 : i32
            %64 = arith.cmpi ugt, %62, %arg12 : i32
            %65 = arith.select %64, %63, %61 : i32
            %66 = arith.addi %61, %arg13 : i32
            %67 = arith.shrui %61, %arg14 : i32
            %68 = arith.andi %67, %arg15 : i32
            %69 = arith.addi %66, %68 : i32
            %70 = arith.andi %69, %arg16 : i32
            %71 = arith.cmpi uge, %62, %arg12 : i32
            %72 = arith.select %71, %65, %70 : i32
            %73 = arith.bitcast %72 : i32 to f32
            memref.store %73, %arg17[%arg18, %arg19] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%41, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%40 : memref<128x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c112 = arith.constant 112 : index
        scf.for %arg18 = %c112 to %c128_11 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg18, %arg19] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.andi %61, %arg10 : i32
            %63 = arith.ori %61, %arg11 : i32
            %64 = arith.cmpi ugt, %62, %arg12 : i32
            %65 = arith.select %64, %63, %61 : i32
            %66 = arith.addi %61, %arg13 : i32
            %67 = arith.shrui %61, %arg14 : i32
            %68 = arith.andi %67, %arg15 : i32
            %69 = arith.addi %66, %68 : i32
            %70 = arith.andi %69, %arg16 : i32
            %71 = arith.cmpi uge, %62, %arg12 : i32
            %72 = arith.select %71, %65, %70 : i32
            %73 = arith.bitcast %72 : i32 to f32
            memref.store %73, %arg17[%arg18, %arg19] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 11)
      sdnn.core_arrive(3, 12)
      %subview_3 = memref.subview %53[0, 0] [1, %52] [1, 1] : memref<1x128xf32, #map> to memref<1x?xf32, strided<[128, 1]>>
      sdnn.dma in %subview, %subview_3 {core_id = 1 : i32, signal = array<i32: 17>, wait = array<i32: 18>} : memref<1x?xbf16, strided<[128, 1], offset: ?>, 1> memref<1x?xf32, strided<[128, 1]>> -> 
      sdnn.ew linear %40 src0 %40 src1 %53 a %cst b %cst {sdnn.layout = "CR_RowMajor", signal = array<i32: 13, 18>, wait = array<i32: 12, 17>} : (memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<1x128xf32, #map>, f32, f32) -> ()
      %alloc_4 = memref.alloc() {bufferNum = 4 : index, bufferSize = 65536 : index, init_signal = 22 : i64, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %54 = sdnn.get_fifo_buffer %alloc_4, %14, {bufferNum = 4 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      sdnn.core_wait(3, 13)
      sdnn.core_wait(3, 22)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%40, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%54 : memref<128x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        scf.for %arg18 = %c0_10 to %c16 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg18, %arg19] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.andi %61, %arg10 : i32
            %63 = arith.ori %61, %arg11 : i32
            %64 = arith.cmpi ugt, %62, %arg12 : i32
            %65 = arith.select %64, %63, %61 : i32
            %66 = arith.addi %61, %arg13 : i32
            %67 = arith.shrui %61, %arg14 : i32
            %68 = arith.andi %67, %arg15 : i32
            %69 = arith.addi %66, %68 : i32
            %70 = arith.andi %69, %arg16 : i32
            %71 = arith.cmpi uge, %62, %arg12 : i32
            %72 = arith.select %71, %65, %70 : i32
            %73 = arith.bitcast %72 : i32 to f32
            memref.store %73, %arg17[%arg18, %arg19] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%40, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%54 : memref<128x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        %c32 = arith.constant 32 : index
        scf.for %arg18 = %c16 to %c32 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg18, %arg19] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.andi %61, %arg10 : i32
            %63 = arith.ori %61, %arg11 : i32
            %64 = arith.cmpi ugt, %62, %arg12 : i32
            %65 = arith.select %64, %63, %61 : i32
            %66 = arith.addi %61, %arg13 : i32
            %67 = arith.shrui %61, %arg14 : i32
            %68 = arith.andi %67, %arg15 : i32
            %69 = arith.addi %66, %68 : i32
            %70 = arith.andi %69, %arg16 : i32
            %71 = arith.cmpi uge, %62, %arg12 : i32
            %72 = arith.select %71, %65, %70 : i32
            %73 = arith.bitcast %72 : i32 to f32
            memref.store %73, %arg17[%arg18, %arg19] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%40, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%54 : memref<128x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c32 = arith.constant 32 : index
        %c48 = arith.constant 48 : index
        scf.for %arg18 = %c32 to %c48 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg18, %arg19] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.andi %61, %arg10 : i32
            %63 = arith.ori %61, %arg11 : i32
            %64 = arith.cmpi ugt, %62, %arg12 : i32
            %65 = arith.select %64, %63, %61 : i32
            %66 = arith.addi %61, %arg13 : i32
            %67 = arith.shrui %61, %arg14 : i32
            %68 = arith.andi %67, %arg15 : i32
            %69 = arith.addi %66, %68 : i32
            %70 = arith.andi %69, %arg16 : i32
            %71 = arith.cmpi uge, %62, %arg12 : i32
            %72 = arith.select %71, %65, %70 : i32
            %73 = arith.bitcast %72 : i32 to f32
            memref.store %73, %arg17[%arg18, %arg19] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%40, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%54 : memref<128x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c48 = arith.constant 48 : index
        %c64_13 = arith.constant 64 : index
        scf.for %arg18 = %c48 to %c64_13 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg18, %arg19] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.andi %61, %arg10 : i32
            %63 = arith.ori %61, %arg11 : i32
            %64 = arith.cmpi ugt, %62, %arg12 : i32
            %65 = arith.select %64, %63, %61 : i32
            %66 = arith.addi %61, %arg13 : i32
            %67 = arith.shrui %61, %arg14 : i32
            %68 = arith.andi %67, %arg15 : i32
            %69 = arith.addi %66, %68 : i32
            %70 = arith.andi %69, %arg16 : i32
            %71 = arith.cmpi uge, %62, %arg12 : i32
            %72 = arith.select %71, %65, %70 : i32
            %73 = arith.bitcast %72 : i32 to f32
            memref.store %73, %arg17[%arg18, %arg19] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%40, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%54 : memref<128x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c64_13 = arith.constant 64 : index
        %c80 = arith.constant 80 : index
        scf.for %arg18 = %c64_13 to %c80 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg18, %arg19] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.andi %61, %arg10 : i32
            %63 = arith.ori %61, %arg11 : i32
            %64 = arith.cmpi ugt, %62, %arg12 : i32
            %65 = arith.select %64, %63, %61 : i32
            %66 = arith.addi %61, %arg13 : i32
            %67 = arith.shrui %61, %arg14 : i32
            %68 = arith.andi %67, %arg15 : i32
            %69 = arith.addi %66, %68 : i32
            %70 = arith.andi %69, %arg16 : i32
            %71 = arith.cmpi uge, %62, %arg12 : i32
            %72 = arith.select %71, %65, %70 : i32
            %73 = arith.bitcast %72 : i32 to f32
            memref.store %73, %arg17[%arg18, %arg19] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%40, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%54 : memref<128x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c80 = arith.constant 80 : index
        %c96 = arith.constant 96 : index
        scf.for %arg18 = %c80 to %c96 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg18, %arg19] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.andi %61, %arg10 : i32
            %63 = arith.ori %61, %arg11 : i32
            %64 = arith.cmpi ugt, %62, %arg12 : i32
            %65 = arith.select %64, %63, %61 : i32
            %66 = arith.addi %61, %arg13 : i32
            %67 = arith.shrui %61, %arg14 : i32
            %68 = arith.andi %67, %arg15 : i32
            %69 = arith.addi %66, %68 : i32
            %70 = arith.andi %69, %arg16 : i32
            %71 = arith.cmpi uge, %62, %arg12 : i32
            %72 = arith.select %71, %65, %70 : i32
            %73 = arith.bitcast %72 : i32 to f32
            memref.store %73, %arg17[%arg18, %arg19] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%40, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%54 : memref<128x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c96 = arith.constant 96 : index
        %c112 = arith.constant 112 : index
        scf.for %arg18 = %c96 to %c112 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg18, %arg19] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.andi %61, %arg10 : i32
            %63 = arith.ori %61, %arg11 : i32
            %64 = arith.cmpi ugt, %62, %arg12 : i32
            %65 = arith.select %64, %63, %61 : i32
            %66 = arith.addi %61, %arg13 : i32
            %67 = arith.shrui %61, %arg14 : i32
            %68 = arith.andi %67, %arg15 : i32
            %69 = arith.addi %66, %68 : i32
            %70 = arith.andi %69, %arg16 : i32
            %71 = arith.cmpi uge, %62, %arg12 : i32
            %72 = arith.select %71, %65, %70 : i32
            %73 = arith.bitcast %72 : i32 to f32
            memref.store %73, %arg17[%arg18, %arg19] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%40, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%54 : memref<128x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c112 = arith.constant 112 : index
        scf.for %arg18 = %c112 to %c128_11 step %c1_12 {
          scf.for %arg19 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg18, %arg19] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.andi %61, %arg10 : i32
            %63 = arith.ori %61, %arg11 : i32
            %64 = arith.cmpi ugt, %62, %arg12 : i32
            %65 = arith.select %64, %63, %61 : i32
            %66 = arith.addi %61, %arg13 : i32
            %67 = arith.shrui %61, %arg14 : i32
            %68 = arith.andi %67, %arg15 : i32
            %69 = arith.addi %66, %68 : i32
            %70 = arith.andi %69, %arg16 : i32
            %71 = arith.cmpi uge, %62, %arg12 : i32
            %72 = arith.select %71, %65, %70 : i32
            %73 = arith.bitcast %72 : i32 to f32
            memref.store %73, %arg17[%arg18, %arg19] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 14)
      sdnn.core_arrive(3, 21)
      sdnn.core_arrive(3, 19)
      %alloc_5 = memref.alloc() {bufferNum = 4 : index, bufferSize = 65536 : index, init_signal = 24 : i64, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %55 = sdnn.get_fifo_buffer %alloc_5, %13, {bufferNum = 4 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      sdnn.ew lut %55 src0 %54 lut_func sigmoid {kOverflow = 0.000000e+00 : f32, kUnderflow = 0.000000e+00 : f32, lut_max = 15.984375 : f32, lut_min = 0.000000e+00 : f32, packedid = 165954 : ui32, sdnn.layout = "CR_RowMajor", wait = array<i32: 19, 24>} : (memref<128x128xf32, #map>, memref<128x128xf32, #map>) -> ()
      %alloc_6 = memref.alloc() {bufferNum = 4 : index, bufferSize = 65536 : index, init_signal = 26 : i64, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %56 = sdnn.get_fifo_buffer %alloc_6, %12, {bufferNum = 4 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      sdnn.ew mul %56 src0 %54 src1 %55 {sdnn.layout = "CR_RowMajor", signal = array<i32: 20, 23, 25>, wait = array<i32: 21, 26>} : (memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>) -> ()
      sdnn.core_wait(3, 14)
      sdnn.core_wait(3, 20)
      sdnn.core_wait(3, 23)
      sdnn.core_wait(3, 25)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%54, %55, %56, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%40 : memref<128x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        scf.for %arg22 = %c0_10 to %c16 step %c1_12 {
          scf.for %arg23 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg22, %arg23] : memref<128x128xf32, #map>
            %61 = memref.load %arg10[%arg22, %arg23] : memref<128x128xf32, #map>
            %62 = memref.load %arg11[%arg22, %arg23] : memref<128x128xf32, #map>
            %63 = arith.bitcast %62 : f32 to i32
            %64 = arith.bitcast %61 : f32 to i32
            %65 = arith.andi %64, %arg12 : i32
            %66 = arith.bitcast %60 : f32 to i32
            %67 = arith.andi %66, %arg12 : i32
            %68 = arith.cmpi eq, %67, %arg13 : i32
            %69 = arith.cmpi eq, %65, %arg14 : i32
            %70 = arith.andi %68, %69 : i1
            %71 = arith.cmpi eq, %65, %arg13 : i32
            %72 = arith.cmpi eq, %67, %arg14 : i32
            %73 = arith.andi %71, %72 : i1
            %74 = arith.ori %70, %73 : i1
            %75 = arith.cmpi ugt, %67, %arg13 : i32
            %76 = arith.cmpi ugt, %65, %arg13 : i32
            %77 = arith.ori %75, %76 : i1
            %78 = arith.ori %74, %77 : i1
            %79 = arith.select %78, %arg15, %63 : i32
            %80 = arith.andi %79, %arg12 : i32
            %81 = arith.ori %79, %arg16 : i32
            %82 = arith.cmpi ugt, %80, %arg13 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg17 : i32
            %85 = arith.shrui %79, %arg18 : i32
            %86 = arith.andi %85, %arg19 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg20 : i32
            %89 = arith.cmpi uge, %80, %arg13 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg21[%arg22, %arg23] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%54, %55, %56, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%40 : memref<128x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        %c32 = arith.constant 32 : index
        scf.for %arg22 = %c16 to %c32 step %c1_12 {
          scf.for %arg23 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg22, %arg23] : memref<128x128xf32, #map>
            %61 = memref.load %arg10[%arg22, %arg23] : memref<128x128xf32, #map>
            %62 = memref.load %arg11[%arg22, %arg23] : memref<128x128xf32, #map>
            %63 = arith.bitcast %62 : f32 to i32
            %64 = arith.bitcast %61 : f32 to i32
            %65 = arith.andi %64, %arg12 : i32
            %66 = arith.bitcast %60 : f32 to i32
            %67 = arith.andi %66, %arg12 : i32
            %68 = arith.cmpi eq, %67, %arg13 : i32
            %69 = arith.cmpi eq, %65, %arg14 : i32
            %70 = arith.andi %68, %69 : i1
            %71 = arith.cmpi eq, %65, %arg13 : i32
            %72 = arith.cmpi eq, %67, %arg14 : i32
            %73 = arith.andi %71, %72 : i1
            %74 = arith.ori %70, %73 : i1
            %75 = arith.cmpi ugt, %67, %arg13 : i32
            %76 = arith.cmpi ugt, %65, %arg13 : i32
            %77 = arith.ori %75, %76 : i1
            %78 = arith.ori %74, %77 : i1
            %79 = arith.select %78, %arg15, %63 : i32
            %80 = arith.andi %79, %arg12 : i32
            %81 = arith.ori %79, %arg16 : i32
            %82 = arith.cmpi ugt, %80, %arg13 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg17 : i32
            %85 = arith.shrui %79, %arg18 : i32
            %86 = arith.andi %85, %arg19 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg20 : i32
            %89 = arith.cmpi uge, %80, %arg13 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg21[%arg22, %arg23] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%54, %55, %56, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%40 : memref<128x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c32 = arith.constant 32 : index
        %c48 = arith.constant 48 : index
        scf.for %arg22 = %c32 to %c48 step %c1_12 {
          scf.for %arg23 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg22, %arg23] : memref<128x128xf32, #map>
            %61 = memref.load %arg10[%arg22, %arg23] : memref<128x128xf32, #map>
            %62 = memref.load %arg11[%arg22, %arg23] : memref<128x128xf32, #map>
            %63 = arith.bitcast %62 : f32 to i32
            %64 = arith.bitcast %61 : f32 to i32
            %65 = arith.andi %64, %arg12 : i32
            %66 = arith.bitcast %60 : f32 to i32
            %67 = arith.andi %66, %arg12 : i32
            %68 = arith.cmpi eq, %67, %arg13 : i32
            %69 = arith.cmpi eq, %65, %arg14 : i32
            %70 = arith.andi %68, %69 : i1
            %71 = arith.cmpi eq, %65, %arg13 : i32
            %72 = arith.cmpi eq, %67, %arg14 : i32
            %73 = arith.andi %71, %72 : i1
            %74 = arith.ori %70, %73 : i1
            %75 = arith.cmpi ugt, %67, %arg13 : i32
            %76 = arith.cmpi ugt, %65, %arg13 : i32
            %77 = arith.ori %75, %76 : i1
            %78 = arith.ori %74, %77 : i1
            %79 = arith.select %78, %arg15, %63 : i32
            %80 = arith.andi %79, %arg12 : i32
            %81 = arith.ori %79, %arg16 : i32
            %82 = arith.cmpi ugt, %80, %arg13 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg17 : i32
            %85 = arith.shrui %79, %arg18 : i32
            %86 = arith.andi %85, %arg19 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg20 : i32
            %89 = arith.cmpi uge, %80, %arg13 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg21[%arg22, %arg23] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%54, %55, %56, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%40 : memref<128x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c48 = arith.constant 48 : index
        %c64_13 = arith.constant 64 : index
        scf.for %arg22 = %c48 to %c64_13 step %c1_12 {
          scf.for %arg23 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg22, %arg23] : memref<128x128xf32, #map>
            %61 = memref.load %arg10[%arg22, %arg23] : memref<128x128xf32, #map>
            %62 = memref.load %arg11[%arg22, %arg23] : memref<128x128xf32, #map>
            %63 = arith.bitcast %62 : f32 to i32
            %64 = arith.bitcast %61 : f32 to i32
            %65 = arith.andi %64, %arg12 : i32
            %66 = arith.bitcast %60 : f32 to i32
            %67 = arith.andi %66, %arg12 : i32
            %68 = arith.cmpi eq, %67, %arg13 : i32
            %69 = arith.cmpi eq, %65, %arg14 : i32
            %70 = arith.andi %68, %69 : i1
            %71 = arith.cmpi eq, %65, %arg13 : i32
            %72 = arith.cmpi eq, %67, %arg14 : i32
            %73 = arith.andi %71, %72 : i1
            %74 = arith.ori %70, %73 : i1
            %75 = arith.cmpi ugt, %67, %arg13 : i32
            %76 = arith.cmpi ugt, %65, %arg13 : i32
            %77 = arith.ori %75, %76 : i1
            %78 = arith.ori %74, %77 : i1
            %79 = arith.select %78, %arg15, %63 : i32
            %80 = arith.andi %79, %arg12 : i32
            %81 = arith.ori %79, %arg16 : i32
            %82 = arith.cmpi ugt, %80, %arg13 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg17 : i32
            %85 = arith.shrui %79, %arg18 : i32
            %86 = arith.andi %85, %arg19 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg20 : i32
            %89 = arith.cmpi uge, %80, %arg13 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg21[%arg22, %arg23] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%54, %55, %56, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%40 : memref<128x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c64_13 = arith.constant 64 : index
        %c80 = arith.constant 80 : index
        scf.for %arg22 = %c64_13 to %c80 step %c1_12 {
          scf.for %arg23 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg22, %arg23] : memref<128x128xf32, #map>
            %61 = memref.load %arg10[%arg22, %arg23] : memref<128x128xf32, #map>
            %62 = memref.load %arg11[%arg22, %arg23] : memref<128x128xf32, #map>
            %63 = arith.bitcast %62 : f32 to i32
            %64 = arith.bitcast %61 : f32 to i32
            %65 = arith.andi %64, %arg12 : i32
            %66 = arith.bitcast %60 : f32 to i32
            %67 = arith.andi %66, %arg12 : i32
            %68 = arith.cmpi eq, %67, %arg13 : i32
            %69 = arith.cmpi eq, %65, %arg14 : i32
            %70 = arith.andi %68, %69 : i1
            %71 = arith.cmpi eq, %65, %arg13 : i32
            %72 = arith.cmpi eq, %67, %arg14 : i32
            %73 = arith.andi %71, %72 : i1
            %74 = arith.ori %70, %73 : i1
            %75 = arith.cmpi ugt, %67, %arg13 : i32
            %76 = arith.cmpi ugt, %65, %arg13 : i32
            %77 = arith.ori %75, %76 : i1
            %78 = arith.ori %74, %77 : i1
            %79 = arith.select %78, %arg15, %63 : i32
            %80 = arith.andi %79, %arg12 : i32
            %81 = arith.ori %79, %arg16 : i32
            %82 = arith.cmpi ugt, %80, %arg13 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg17 : i32
            %85 = arith.shrui %79, %arg18 : i32
            %86 = arith.andi %85, %arg19 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg20 : i32
            %89 = arith.cmpi uge, %80, %arg13 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg21[%arg22, %arg23] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%54, %55, %56, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%40 : memref<128x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c80 = arith.constant 80 : index
        %c96 = arith.constant 96 : index
        scf.for %arg22 = %c80 to %c96 step %c1_12 {
          scf.for %arg23 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg22, %arg23] : memref<128x128xf32, #map>
            %61 = memref.load %arg10[%arg22, %arg23] : memref<128x128xf32, #map>
            %62 = memref.load %arg11[%arg22, %arg23] : memref<128x128xf32, #map>
            %63 = arith.bitcast %62 : f32 to i32
            %64 = arith.bitcast %61 : f32 to i32
            %65 = arith.andi %64, %arg12 : i32
            %66 = arith.bitcast %60 : f32 to i32
            %67 = arith.andi %66, %arg12 : i32
            %68 = arith.cmpi eq, %67, %arg13 : i32
            %69 = arith.cmpi eq, %65, %arg14 : i32
            %70 = arith.andi %68, %69 : i1
            %71 = arith.cmpi eq, %65, %arg13 : i32
            %72 = arith.cmpi eq, %67, %arg14 : i32
            %73 = arith.andi %71, %72 : i1
            %74 = arith.ori %70, %73 : i1
            %75 = arith.cmpi ugt, %67, %arg13 : i32
            %76 = arith.cmpi ugt, %65, %arg13 : i32
            %77 = arith.ori %75, %76 : i1
            %78 = arith.ori %74, %77 : i1
            %79 = arith.select %78, %arg15, %63 : i32
            %80 = arith.andi %79, %arg12 : i32
            %81 = arith.ori %79, %arg16 : i32
            %82 = arith.cmpi ugt, %80, %arg13 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg17 : i32
            %85 = arith.shrui %79, %arg18 : i32
            %86 = arith.andi %85, %arg19 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg20 : i32
            %89 = arith.cmpi uge, %80, %arg13 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg21[%arg22, %arg23] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%54, %55, %56, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%40 : memref<128x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c96 = arith.constant 96 : index
        %c112 = arith.constant 112 : index
        scf.for %arg22 = %c96 to %c112 step %c1_12 {
          scf.for %arg23 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg22, %arg23] : memref<128x128xf32, #map>
            %61 = memref.load %arg10[%arg22, %arg23] : memref<128x128xf32, #map>
            %62 = memref.load %arg11[%arg22, %arg23] : memref<128x128xf32, #map>
            %63 = arith.bitcast %62 : f32 to i32
            %64 = arith.bitcast %61 : f32 to i32
            %65 = arith.andi %64, %arg12 : i32
            %66 = arith.bitcast %60 : f32 to i32
            %67 = arith.andi %66, %arg12 : i32
            %68 = arith.cmpi eq, %67, %arg13 : i32
            %69 = arith.cmpi eq, %65, %arg14 : i32
            %70 = arith.andi %68, %69 : i1
            %71 = arith.cmpi eq, %65, %arg13 : i32
            %72 = arith.cmpi eq, %67, %arg14 : i32
            %73 = arith.andi %71, %72 : i1
            %74 = arith.ori %70, %73 : i1
            %75 = arith.cmpi ugt, %67, %arg13 : i32
            %76 = arith.cmpi ugt, %65, %arg13 : i32
            %77 = arith.ori %75, %76 : i1
            %78 = arith.ori %74, %77 : i1
            %79 = arith.select %78, %arg15, %63 : i32
            %80 = arith.andi %79, %arg12 : i32
            %81 = arith.ori %79, %arg16 : i32
            %82 = arith.cmpi ugt, %80, %arg13 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg17 : i32
            %85 = arith.shrui %79, %arg18 : i32
            %86 = arith.andi %85, %arg19 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg20 : i32
            %89 = arith.cmpi uge, %80, %arg13 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg21[%arg22, %arg23] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%54, %55, %56, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%40 : memref<128x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<128x128xf32, #map>):
        %c0_10 = arith.constant 0 : index
        %c128_11 = arith.constant 128 : index
        %c1_12 = arith.constant 1 : index
        %c112 = arith.constant 112 : index
        scf.for %arg22 = %c112 to %c128_11 step %c1_12 {
          scf.for %arg23 = %c0_10 to %c128_11 step %c1_12 {
            %60 = memref.load %arg9[%arg22, %arg23] : memref<128x128xf32, #map>
            %61 = memref.load %arg10[%arg22, %arg23] : memref<128x128xf32, #map>
            %62 = memref.load %arg11[%arg22, %arg23] : memref<128x128xf32, #map>
            %63 = arith.bitcast %62 : f32 to i32
            %64 = arith.bitcast %61 : f32 to i32
            %65 = arith.andi %64, %arg12 : i32
            %66 = arith.bitcast %60 : f32 to i32
            %67 = arith.andi %66, %arg12 : i32
            %68 = arith.cmpi eq, %67, %arg13 : i32
            %69 = arith.cmpi eq, %65, %arg14 : i32
            %70 = arith.andi %68, %69 : i1
            %71 = arith.cmpi eq, %65, %arg13 : i32
            %72 = arith.cmpi eq, %67, %arg14 : i32
            %73 = arith.andi %71, %72 : i1
            %74 = arith.ori %70, %73 : i1
            %75 = arith.cmpi ugt, %67, %arg13 : i32
            %76 = arith.cmpi ugt, %65, %arg13 : i32
            %77 = arith.ori %75, %76 : i1
            %78 = arith.ori %74, %77 : i1
            %79 = arith.select %78, %arg15, %63 : i32
            %80 = arith.andi %79, %arg12 : i32
            %81 = arith.ori %79, %arg16 : i32
            %82 = arith.cmpi ugt, %80, %arg13 : i32
            %83 = arith.select %82, %81, %79 : i32
            %84 = arith.addi %79, %arg17 : i32
            %85 = arith.shrui %79, %arg18 : i32
            %86 = arith.andi %85, %arg19 : i32
            %87 = arith.addi %84, %86 : i32
            %88 = arith.andi %87, %arg20 : i32
            %89 = arith.cmpi uge, %80, %arg13 : i32
            %90 = arith.select %89, %83, %88 : i32
            %91 = arith.bitcast %90 : i32 to f32
            memref.store %91, %arg21[%arg22, %arg23] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 15)
      sdnn.core_arrive(3, 22)
      sdnn.core_arrive(3, 24)
      sdnn.core_arrive(3, 26)
      %57 = arith.muli %36, %c131072 : index
      %58 = arith.addi %57, %39 : index
      %reinterpret_cast_7 = memref.reinterpret_cast %arg3 to offset: [%58], sizes: [128, 128], strides: [1024, 1] : memref<*xbf16, 1> to memref<128x128xbf16, strided<[1024, 1], offset: ?>, 1>
      %59 = arith.minsi %46, %c128 : index
      %subview_8 = memref.subview %reinterpret_cast_7[0, 0] [%59, %52] [1, 1] : memref<128x128xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[1024, 1], offset: ?>, 1>
      %cast = memref.cast %subview_8 : memref<?x?xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, 1], offset: ?>, 1>
      %subview_9 = memref.subview %40[0, 0] [%59, %52] [1, 1] : memref<128x128xf32, #map> to memref<?x?xf32, strided<[128, 1]>>
      sdnn.dma out %subview_9, %cast {signal = array<i32: 16>, wait = array<i32: 15>} : memref<?x?xf32, strided<[128, 1]>> memref<?x?xbf16, strided<[?, 1], offset: ?>, 1> -> 
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
