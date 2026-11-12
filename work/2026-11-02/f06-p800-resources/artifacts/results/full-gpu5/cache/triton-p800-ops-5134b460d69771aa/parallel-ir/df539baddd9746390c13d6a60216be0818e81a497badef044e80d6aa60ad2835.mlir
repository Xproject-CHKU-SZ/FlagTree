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
    %c64_i32 = arith.constant 64 : i32
    %c128_i32 = arith.constant 128 : i32
    %c8_i32 = arith.constant 8 : i32
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
    %c4096 = arith.constant 4096 : index
    %c128 = arith.constant 128 : index
    %c1024 = arith.constant 1024 : index
    %c64 = arith.constant 64 : index
    %c4194304_i32 = arith.constant 4194304 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %reinterpret_cast = memref.reinterpret_cast %arg4 to offset: [0], sizes: [1024], strides: [1] : memref<*xf32, 1> to memref<1024xf32, 1>
    "sdnn.init"(%reinterpret_cast) {signal = [array<i32: 11, 5, 3, 9, 7, 16, 18, 22, 24, 26>], signal_num = array<i64: 5, 5, 5, 5, 5, 5, 5, 5, 5, 5>} : (memref<1024xf32, 1>) -> ()
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
      %alloc = memref.alloc() {bufferNum = 5 : index, bufferSize = 32768 : index, init_signal = 11 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map>
      %25 = sdnn.get_fifo_buffer %alloc, %21, {bufferNum = 5 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
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
      %36 = arith.muli %31, %c64_i32 : i32
      %37 = arith.index_cast %31 : i32 to index
      %38 = arith.muli %33, %c128_i32 : i32
      %39 = arith.index_cast %33 : i32 to index
      %40 = arith.muli %39, %c128 : index
      %41 = arith.muli %37, %c4096 : index
      %42 = arith.cmpi sge, %41, %c4096 : index
      %43 = arith.divsi %41, %c4096 : index
      %44 = arith.muli %43, %c4096 : index
      %45 = arith.subi %41, %44 : index
      %46 = arith.select %42, %45, %41 : index
      %47 = arith.divsi %46, %c64 : index
      %48 = arith.addi %47, %c64 : index
      %49 = arith.minsi %48, %c64 : index
      %50 = arith.subi %49, %47 : index
      %reinterpret_cast_0 = memref.reinterpret_cast %arg0 to offset: [%41], sizes: [%50, 64], strides: [64, 1] : memref<*xbf16, 1> to memref<?x64xbf16, strided<[64, 1], offset: ?>, 1>
      %cast = memref.cast %reinterpret_cast_0 : memref<?x64xbf16, strided<[64, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
      %alloc_1 = memref.alloc() {bufferNum = 5 : index, bufferSize = 16384 : index, init_signal = 5 : i64, processed, sram = "l1d"} : memref<64x64xf32, #map1, 3>
      %51 = sdnn.get_fifo_buffer %alloc_1, %20, {bufferNum = 5 : i32, bufferSize = 16384 : i32} : memref<64x64xf32, #map1, 3> memref<1xi32, 6> to memref<64x64xf32, #map1, 3>
      %alloc_2 = memref.alloc() {bufferNum = 5 : index, bufferSize = 16384 : index, init_signal = 3 : i64, processed, sram = "uni_sram", trans = false} : memref<64x64xf32, #map1>
      %52 = sdnn.get_fifo_buffer %alloc_2, %19, {bufferNum = 5 : i32, bufferSize = 16384 : i32} : memref<64x64xf32, #map1> memref<1xi32, 6> to memref<64x64xf32, #map1>
      %dim = memref.dim %reinterpret_cast_0, %c0 : memref<?x64xbf16, strided<[64, 1], offset: ?>, 1>
      %subview = memref.subview %52[0, 0] [%dim, 64] [1, 1] : memref<64x64xf32, #map1> to memref<?x64xf32, strided<[64, 1]>>
      %cast_3 = memref.cast %subview : memref<?x64xf32, strided<[64, 1]>> to memref<?x?xf32, strided<[64, 1]>>
      sdnn.dma in %cast, %cast_3 {core_id = 1 : i32, signal = array<i32: 2>, wait = array<i32: 3>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[64, 1]>> -> 
      sdnn.ds %52, %51 mask_dims[%c64, %c64] {sdnn.layout = "CR_RowMajor", signal = array<i32: 3, 4>, signal_cached = array<i32: 4>, wait = array<i32: 2, 5>, wait_cached = array<i32: 5>} : memref<64x64xf32, #map1> memref<64x64xf32, #map1, 3> -> 
      %53 = arith.remsi %40, %c1024 : index
      %54 = arith.addi %53, %c128 : index
      %55 = arith.minsi %54, %c1024 : index
      %56 = arith.subi %55, %53 : index
      %reinterpret_cast_4 = memref.reinterpret_cast %arg1 to offset: [%40], sizes: [64, %56], strides: [1024, 1] : memref<*xbf16, 1> to memref<64x?xbf16, strided<[1024, 1], offset: ?>, 1>
      %cast_5 = memref.cast %reinterpret_cast_4 : memref<64x?xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
      %alloc_6 = memref.alloc() {bufferNum = 5 : index, bufferSize = 32768 : index, init_signal = 9 : i64, processed, sram = "l1w"} : memref<64x128xf32, #map, 4>
      %57 = sdnn.get_fifo_buffer %alloc_6, %18, {bufferNum = 5 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map, 4> memref<1xi32, 6> to memref<64x128xf32, #map, 4>
      %alloc_7 = memref.alloc() {bufferNum = 5 : index, bufferSize = 32768 : index, init_signal = 7 : i64, processed, sram = "uni_sram", trans = false} : memref<64x128xf32, #map>
      %58 = sdnn.get_fifo_buffer %alloc_7, %17, {bufferNum = 5 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
      %dim_8 = memref.dim %reinterpret_cast_4, %c1 : memref<64x?xbf16, strided<[1024, 1], offset: ?>, 1>
      %alloc_9 = memref.alloc() {bufferNum = 5 : index, bufferSize = 32768 : index, init_signal = 16 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map>
      %59 = sdnn.get_fifo_buffer %alloc_9, %16, {bufferNum = 5 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
      %subview_10 = memref.subview %58[0, 0] [64, %dim_8] [1, 1] : memref<64x128xf32, #map> to memref<64x?xf32, strided<[128, 1]>>
      %cast_11 = memref.cast %subview_10 : memref<64x?xf32, strided<[128, 1]>> to memref<?x?xf32, strided<[128, 1]>>
      sdnn.dma in %cast_5, %cast_11 {core_id = 6 : i32, signal = array<i32: 6>, wait = array<i32: 7>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[128, 1]>> -> 
      sdnn.ds %58, %57 mask_dims[%c64, %c128] {sdnn.layout = "CR_RowMajor", signal = array<i32: 7, 8>, signal_cached = array<i32: 8>, wait = array<i32: 6, 9>, wait_cached = array<i32: 9>} : memref<64x128xf32, #map> memref<64x128xf32, #map, 4> -> 
      sdnn.mma %51, %57, %25 acc %c0_i32 mask_dims[%c64, %c128, %c64] {indexing_maps = [#map2, #map3, #map4], rcOut = false, sdnn.layout = "CR_RowMajor", signal = array<i32: 5, 9, 10>, wait = array<i32: 4, 8, 11>} : (memref<64x64xf32, #map1, 3>, memref<64x128xf32, #map, 4>, memref<64x128xf32, #map>, i32, index, index, index) -> ()
      %reinterpret_cast_12 = memref.reinterpret_cast %arg2 to offset: [%40], sizes: [1, 128], strides: [128, 1] : memref<*xbf16, 1> to memref<1x128xbf16, strided<[128, 1], offset: ?>, 1>
      %60 = arith.index_cast %36 : i32 to index
      %61 = arith.addi %60, %c64 : index
      %62 = arith.minsi %61, %c64 : index
      %63 = arith.maxsi %62, %60 : index
      %64 = arith.subi %63, %60 : index
      %65 = arith.index_cast %38 : i32 to index
      %66 = arith.addi %65, %c128 : index
      %67 = arith.minsi %66, %c1024 : index
      %68 = arith.maxsi %67, %65 : index
      %69 = arith.subi %68, %65 : index
      %70 = arith.minsi %69, %c128 : index
      %alloc_13 = memref.alloc() {bufferNum = 5 : index, bufferSize = 512 : index, init_signal = 18 : i64, processed, sram = "uni_sram", trans = false} : memref<1x128xf32, #map>
      %71 = sdnn.get_fifo_buffer %alloc_13, %15, {bufferNum = 5 : i32, bufferSize = 512 : i32} : memref<1x128xf32, #map> memref<1xi32, 6> to memref<1x128xf32, #map>
      %subview_14 = memref.subview %reinterpret_cast_12[0, 0] [1, %70] [1, 1] : memref<1x128xbf16, strided<[128, 1], offset: ?>, 1> to memref<1x?xbf16, strided<[128, 1], offset: ?>, 1>
      sdnn.core_wait(3, 10)
      sdnn.core_wait(3, 16)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%25, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%59 : memref<64x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        scf.for %arg18 = %c0_23 to %c8 step %c1_24 {
          scf.for %arg19 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
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
            memref.store %91, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%25, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%59 : memref<64x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        %c16 = arith.constant 16 : index
        scf.for %arg18 = %c8 to %c16 step %c1_24 {
          scf.for %arg19 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
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
            memref.store %91, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%25, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%59 : memref<64x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c16 = arith.constant 16 : index
        %c24 = arith.constant 24 : index
        scf.for %arg18 = %c16 to %c24 step %c1_24 {
          scf.for %arg19 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
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
            memref.store %91, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%25, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%59 : memref<64x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c24 = arith.constant 24 : index
        %c32 = arith.constant 32 : index
        scf.for %arg18 = %c24 to %c32 step %c1_24 {
          scf.for %arg19 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
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
            memref.store %91, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%25, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%59 : memref<64x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c32 = arith.constant 32 : index
        %c40 = arith.constant 40 : index
        scf.for %arg18 = %c32 to %c40 step %c1_24 {
          scf.for %arg19 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
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
            memref.store %91, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%25, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%59 : memref<64x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c40 = arith.constant 40 : index
        %c48 = arith.constant 48 : index
        scf.for %arg18 = %c40 to %c48 step %c1_24 {
          scf.for %arg19 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
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
            memref.store %91, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%25, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%59 : memref<64x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c48 = arith.constant 48 : index
        %c56 = arith.constant 56 : index
        scf.for %arg18 = %c48 to %c56 step %c1_24 {
          scf.for %arg19 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
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
            memref.store %91, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%25, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%59 : memref<64x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c64_24 = arith.constant 64 : index
        %c1_25 = arith.constant 1 : index
        %c128_26 = arith.constant 128 : index
        %c56 = arith.constant 56 : index
        scf.for %arg18 = %c56 to %c64_24 step %c1_25 {
          scf.for %arg19 = %c0_23 to %c128_26 step %c1_25 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
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
            memref.store %91, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 11)
      sdnn.core_arrive(3, 12)
      %subview_15 = memref.subview %71[0, 0] [1, %70] [1, 1] : memref<1x128xf32, #map> to memref<1x?xf32, strided<[128, 1]>>
      sdnn.dma in %subview_14, %subview_15 {core_id = 1 : i32, signal = array<i32: 17>, wait = array<i32: 18>} : memref<1x?xbf16, strided<[128, 1], offset: ?>, 1> memref<1x?xf32, strided<[128, 1]>> -> 
      sdnn.ew linear %59 src0 %59 src1 %71 a %cst b %cst {sdnn.layout = "CR_RowMajor", signal = array<i32: 13, 18>, wait = array<i32: 12, 17>} : (memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<1x128xf32, #map>, f32, f32) -> ()
      %alloc_16 = memref.alloc() {bufferNum = 5 : index, bufferSize = 32768 : index, init_signal = 22 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map>
      %72 = sdnn.get_fifo_buffer %alloc_16, %14, {bufferNum = 5 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
      sdnn.core_wait(3, 13)
      sdnn.core_wait(3, 22)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%59, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%72 : memref<64x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        scf.for %arg18 = %c0_23 to %c8 step %c1_24 {
          scf.for %arg19 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
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
            memref.store %91, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%72 : memref<64x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        %c16 = arith.constant 16 : index
        scf.for %arg18 = %c8 to %c16 step %c1_24 {
          scf.for %arg19 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
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
            memref.store %91, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%72 : memref<64x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c16 = arith.constant 16 : index
        %c24 = arith.constant 24 : index
        scf.for %arg18 = %c16 to %c24 step %c1_24 {
          scf.for %arg19 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
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
            memref.store %91, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%72 : memref<64x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c24 = arith.constant 24 : index
        %c32 = arith.constant 32 : index
        scf.for %arg18 = %c24 to %c32 step %c1_24 {
          scf.for %arg19 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
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
            memref.store %91, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%72 : memref<64x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c32 = arith.constant 32 : index
        %c40 = arith.constant 40 : index
        scf.for %arg18 = %c32 to %c40 step %c1_24 {
          scf.for %arg19 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
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
            memref.store %91, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%72 : memref<64x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c40 = arith.constant 40 : index
        %c48 = arith.constant 48 : index
        scf.for %arg18 = %c40 to %c48 step %c1_24 {
          scf.for %arg19 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
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
            memref.store %91, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%72 : memref<64x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c48 = arith.constant 48 : index
        %c56 = arith.constant 56 : index
        scf.for %arg18 = %c48 to %c56 step %c1_24 {
          scf.for %arg19 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
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
            memref.store %91, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%72 : memref<64x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c64_24 = arith.constant 64 : index
        %c1_25 = arith.constant 1 : index
        %c128_26 = arith.constant 128 : index
        %c56 = arith.constant 56 : index
        scf.for %arg18 = %c56 to %c64_24 step %c1_25 {
          scf.for %arg19 = %c0_23 to %c128_26 step %c1_25 {
            %78 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
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
            memref.store %91, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 14)
      sdnn.core_arrive(3, 21)
      sdnn.core_arrive(3, 19)
      %alloc_17 = memref.alloc() {bufferNum = 5 : index, bufferSize = 32768 : index, init_signal = 24 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map>
      %73 = sdnn.get_fifo_buffer %alloc_17, %13, {bufferNum = 5 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
      sdnn.ew lut %73 src0 %72 lut_func sigmoid {kOverflow = 0.000000e+00 : f32, kUnderflow = 0.000000e+00 : f32, lut_max = 15.984375 : f32, lut_min = 0.000000e+00 : f32, packedid = 165954 : ui32, sdnn.layout = "CR_RowMajor", wait = array<i32: 19, 24>} : (memref<64x128xf32, #map>, memref<64x128xf32, #map>) -> ()
      %alloc_18 = memref.alloc() {bufferNum = 5 : index, bufferSize = 32768 : index, init_signal = 26 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map>
      %74 = sdnn.get_fifo_buffer %alloc_18, %12, {bufferNum = 5 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
      sdnn.ew mul %74 src0 %72 src1 %73 {sdnn.layout = "CR_RowMajor", signal = array<i32: 20, 23, 25>, wait = array<i32: 21, 26>} : (memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>) -> ()
      sdnn.core_wait(3, 14)
      sdnn.core_wait(3, 20)
      sdnn.core_wait(3, 23)
      sdnn.core_wait(3, 25)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%72, %73, %74, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%59 : memref<64x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        scf.for %arg22 = %c0_23 to %c8 step %c1_24 {
          scf.for %arg23 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg22, %arg23] : memref<64x128xf32, #map>
            %79 = memref.load %arg10[%arg22, %arg23] : memref<64x128xf32, #map>
            %80 = memref.load %arg11[%arg22, %arg23] : memref<64x128xf32, #map>
            %81 = arith.bitcast %80 : f32 to i32
            %82 = arith.bitcast %79 : f32 to i32
            %83 = arith.andi %82, %arg12 : i32
            %84 = arith.bitcast %78 : f32 to i32
            %85 = arith.andi %84, %arg12 : i32
            %86 = arith.cmpi eq, %85, %arg13 : i32
            %87 = arith.cmpi eq, %83, %arg14 : i32
            %88 = arith.andi %86, %87 : i1
            %89 = arith.cmpi eq, %83, %arg13 : i32
            %90 = arith.cmpi eq, %85, %arg14 : i32
            %91 = arith.andi %89, %90 : i1
            %92 = arith.ori %88, %91 : i1
            %93 = arith.cmpi ugt, %85, %arg13 : i32
            %94 = arith.cmpi ugt, %83, %arg13 : i32
            %95 = arith.ori %93, %94 : i1
            %96 = arith.ori %92, %95 : i1
            %97 = arith.select %96, %arg15, %81 : i32
            %98 = arith.andi %97, %arg12 : i32
            %99 = arith.ori %97, %arg16 : i32
            %100 = arith.cmpi ugt, %98, %arg13 : i32
            %101 = arith.select %100, %99, %97 : i32
            %102 = arith.addi %97, %arg17 : i32
            %103 = arith.shrui %97, %arg18 : i32
            %104 = arith.andi %103, %arg19 : i32
            %105 = arith.addi %102, %104 : i32
            %106 = arith.andi %105, %arg20 : i32
            %107 = arith.cmpi uge, %98, %arg13 : i32
            %108 = arith.select %107, %101, %106 : i32
            %109 = arith.bitcast %108 : i32 to f32
            memref.store %109, %arg21[%arg22, %arg23] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%72, %73, %74, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%59 : memref<64x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        %c16 = arith.constant 16 : index
        scf.for %arg22 = %c8 to %c16 step %c1_24 {
          scf.for %arg23 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg22, %arg23] : memref<64x128xf32, #map>
            %79 = memref.load %arg10[%arg22, %arg23] : memref<64x128xf32, #map>
            %80 = memref.load %arg11[%arg22, %arg23] : memref<64x128xf32, #map>
            %81 = arith.bitcast %80 : f32 to i32
            %82 = arith.bitcast %79 : f32 to i32
            %83 = arith.andi %82, %arg12 : i32
            %84 = arith.bitcast %78 : f32 to i32
            %85 = arith.andi %84, %arg12 : i32
            %86 = arith.cmpi eq, %85, %arg13 : i32
            %87 = arith.cmpi eq, %83, %arg14 : i32
            %88 = arith.andi %86, %87 : i1
            %89 = arith.cmpi eq, %83, %arg13 : i32
            %90 = arith.cmpi eq, %85, %arg14 : i32
            %91 = arith.andi %89, %90 : i1
            %92 = arith.ori %88, %91 : i1
            %93 = arith.cmpi ugt, %85, %arg13 : i32
            %94 = arith.cmpi ugt, %83, %arg13 : i32
            %95 = arith.ori %93, %94 : i1
            %96 = arith.ori %92, %95 : i1
            %97 = arith.select %96, %arg15, %81 : i32
            %98 = arith.andi %97, %arg12 : i32
            %99 = arith.ori %97, %arg16 : i32
            %100 = arith.cmpi ugt, %98, %arg13 : i32
            %101 = arith.select %100, %99, %97 : i32
            %102 = arith.addi %97, %arg17 : i32
            %103 = arith.shrui %97, %arg18 : i32
            %104 = arith.andi %103, %arg19 : i32
            %105 = arith.addi %102, %104 : i32
            %106 = arith.andi %105, %arg20 : i32
            %107 = arith.cmpi uge, %98, %arg13 : i32
            %108 = arith.select %107, %101, %106 : i32
            %109 = arith.bitcast %108 : i32 to f32
            memref.store %109, %arg21[%arg22, %arg23] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%72, %73, %74, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%59 : memref<64x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c16 = arith.constant 16 : index
        %c24 = arith.constant 24 : index
        scf.for %arg22 = %c16 to %c24 step %c1_24 {
          scf.for %arg23 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg22, %arg23] : memref<64x128xf32, #map>
            %79 = memref.load %arg10[%arg22, %arg23] : memref<64x128xf32, #map>
            %80 = memref.load %arg11[%arg22, %arg23] : memref<64x128xf32, #map>
            %81 = arith.bitcast %80 : f32 to i32
            %82 = arith.bitcast %79 : f32 to i32
            %83 = arith.andi %82, %arg12 : i32
            %84 = arith.bitcast %78 : f32 to i32
            %85 = arith.andi %84, %arg12 : i32
            %86 = arith.cmpi eq, %85, %arg13 : i32
            %87 = arith.cmpi eq, %83, %arg14 : i32
            %88 = arith.andi %86, %87 : i1
            %89 = arith.cmpi eq, %83, %arg13 : i32
            %90 = arith.cmpi eq, %85, %arg14 : i32
            %91 = arith.andi %89, %90 : i1
            %92 = arith.ori %88, %91 : i1
            %93 = arith.cmpi ugt, %85, %arg13 : i32
            %94 = arith.cmpi ugt, %83, %arg13 : i32
            %95 = arith.ori %93, %94 : i1
            %96 = arith.ori %92, %95 : i1
            %97 = arith.select %96, %arg15, %81 : i32
            %98 = arith.andi %97, %arg12 : i32
            %99 = arith.ori %97, %arg16 : i32
            %100 = arith.cmpi ugt, %98, %arg13 : i32
            %101 = arith.select %100, %99, %97 : i32
            %102 = arith.addi %97, %arg17 : i32
            %103 = arith.shrui %97, %arg18 : i32
            %104 = arith.andi %103, %arg19 : i32
            %105 = arith.addi %102, %104 : i32
            %106 = arith.andi %105, %arg20 : i32
            %107 = arith.cmpi uge, %98, %arg13 : i32
            %108 = arith.select %107, %101, %106 : i32
            %109 = arith.bitcast %108 : i32 to f32
            memref.store %109, %arg21[%arg22, %arg23] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%72, %73, %74, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%59 : memref<64x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c24 = arith.constant 24 : index
        %c32 = arith.constant 32 : index
        scf.for %arg22 = %c24 to %c32 step %c1_24 {
          scf.for %arg23 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg22, %arg23] : memref<64x128xf32, #map>
            %79 = memref.load %arg10[%arg22, %arg23] : memref<64x128xf32, #map>
            %80 = memref.load %arg11[%arg22, %arg23] : memref<64x128xf32, #map>
            %81 = arith.bitcast %80 : f32 to i32
            %82 = arith.bitcast %79 : f32 to i32
            %83 = arith.andi %82, %arg12 : i32
            %84 = arith.bitcast %78 : f32 to i32
            %85 = arith.andi %84, %arg12 : i32
            %86 = arith.cmpi eq, %85, %arg13 : i32
            %87 = arith.cmpi eq, %83, %arg14 : i32
            %88 = arith.andi %86, %87 : i1
            %89 = arith.cmpi eq, %83, %arg13 : i32
            %90 = arith.cmpi eq, %85, %arg14 : i32
            %91 = arith.andi %89, %90 : i1
            %92 = arith.ori %88, %91 : i1
            %93 = arith.cmpi ugt, %85, %arg13 : i32
            %94 = arith.cmpi ugt, %83, %arg13 : i32
            %95 = arith.ori %93, %94 : i1
            %96 = arith.ori %92, %95 : i1
            %97 = arith.select %96, %arg15, %81 : i32
            %98 = arith.andi %97, %arg12 : i32
            %99 = arith.ori %97, %arg16 : i32
            %100 = arith.cmpi ugt, %98, %arg13 : i32
            %101 = arith.select %100, %99, %97 : i32
            %102 = arith.addi %97, %arg17 : i32
            %103 = arith.shrui %97, %arg18 : i32
            %104 = arith.andi %103, %arg19 : i32
            %105 = arith.addi %102, %104 : i32
            %106 = arith.andi %105, %arg20 : i32
            %107 = arith.cmpi uge, %98, %arg13 : i32
            %108 = arith.select %107, %101, %106 : i32
            %109 = arith.bitcast %108 : i32 to f32
            memref.store %109, %arg21[%arg22, %arg23] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%72, %73, %74, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%59 : memref<64x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c32 = arith.constant 32 : index
        %c40 = arith.constant 40 : index
        scf.for %arg22 = %c32 to %c40 step %c1_24 {
          scf.for %arg23 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg22, %arg23] : memref<64x128xf32, #map>
            %79 = memref.load %arg10[%arg22, %arg23] : memref<64x128xf32, #map>
            %80 = memref.load %arg11[%arg22, %arg23] : memref<64x128xf32, #map>
            %81 = arith.bitcast %80 : f32 to i32
            %82 = arith.bitcast %79 : f32 to i32
            %83 = arith.andi %82, %arg12 : i32
            %84 = arith.bitcast %78 : f32 to i32
            %85 = arith.andi %84, %arg12 : i32
            %86 = arith.cmpi eq, %85, %arg13 : i32
            %87 = arith.cmpi eq, %83, %arg14 : i32
            %88 = arith.andi %86, %87 : i1
            %89 = arith.cmpi eq, %83, %arg13 : i32
            %90 = arith.cmpi eq, %85, %arg14 : i32
            %91 = arith.andi %89, %90 : i1
            %92 = arith.ori %88, %91 : i1
            %93 = arith.cmpi ugt, %85, %arg13 : i32
            %94 = arith.cmpi ugt, %83, %arg13 : i32
            %95 = arith.ori %93, %94 : i1
            %96 = arith.ori %92, %95 : i1
            %97 = arith.select %96, %arg15, %81 : i32
            %98 = arith.andi %97, %arg12 : i32
            %99 = arith.ori %97, %arg16 : i32
            %100 = arith.cmpi ugt, %98, %arg13 : i32
            %101 = arith.select %100, %99, %97 : i32
            %102 = arith.addi %97, %arg17 : i32
            %103 = arith.shrui %97, %arg18 : i32
            %104 = arith.andi %103, %arg19 : i32
            %105 = arith.addi %102, %104 : i32
            %106 = arith.andi %105, %arg20 : i32
            %107 = arith.cmpi uge, %98, %arg13 : i32
            %108 = arith.select %107, %101, %106 : i32
            %109 = arith.bitcast %108 : i32 to f32
            memref.store %109, %arg21[%arg22, %arg23] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%72, %73, %74, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%59 : memref<64x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c40 = arith.constant 40 : index
        %c48 = arith.constant 48 : index
        scf.for %arg22 = %c40 to %c48 step %c1_24 {
          scf.for %arg23 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg22, %arg23] : memref<64x128xf32, #map>
            %79 = memref.load %arg10[%arg22, %arg23] : memref<64x128xf32, #map>
            %80 = memref.load %arg11[%arg22, %arg23] : memref<64x128xf32, #map>
            %81 = arith.bitcast %80 : f32 to i32
            %82 = arith.bitcast %79 : f32 to i32
            %83 = arith.andi %82, %arg12 : i32
            %84 = arith.bitcast %78 : f32 to i32
            %85 = arith.andi %84, %arg12 : i32
            %86 = arith.cmpi eq, %85, %arg13 : i32
            %87 = arith.cmpi eq, %83, %arg14 : i32
            %88 = arith.andi %86, %87 : i1
            %89 = arith.cmpi eq, %83, %arg13 : i32
            %90 = arith.cmpi eq, %85, %arg14 : i32
            %91 = arith.andi %89, %90 : i1
            %92 = arith.ori %88, %91 : i1
            %93 = arith.cmpi ugt, %85, %arg13 : i32
            %94 = arith.cmpi ugt, %83, %arg13 : i32
            %95 = arith.ori %93, %94 : i1
            %96 = arith.ori %92, %95 : i1
            %97 = arith.select %96, %arg15, %81 : i32
            %98 = arith.andi %97, %arg12 : i32
            %99 = arith.ori %97, %arg16 : i32
            %100 = arith.cmpi ugt, %98, %arg13 : i32
            %101 = arith.select %100, %99, %97 : i32
            %102 = arith.addi %97, %arg17 : i32
            %103 = arith.shrui %97, %arg18 : i32
            %104 = arith.andi %103, %arg19 : i32
            %105 = arith.addi %102, %104 : i32
            %106 = arith.andi %105, %arg20 : i32
            %107 = arith.cmpi uge, %98, %arg13 : i32
            %108 = arith.select %107, %101, %106 : i32
            %109 = arith.bitcast %108 : i32 to f32
            memref.store %109, %arg21[%arg22, %arg23] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%72, %73, %74, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%59 : memref<64x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c48 = arith.constant 48 : index
        %c56 = arith.constant 56 : index
        scf.for %arg22 = %c48 to %c56 step %c1_24 {
          scf.for %arg23 = %c0_23 to %c128_25 step %c1_24 {
            %78 = memref.load %arg9[%arg22, %arg23] : memref<64x128xf32, #map>
            %79 = memref.load %arg10[%arg22, %arg23] : memref<64x128xf32, #map>
            %80 = memref.load %arg11[%arg22, %arg23] : memref<64x128xf32, #map>
            %81 = arith.bitcast %80 : f32 to i32
            %82 = arith.bitcast %79 : f32 to i32
            %83 = arith.andi %82, %arg12 : i32
            %84 = arith.bitcast %78 : f32 to i32
            %85 = arith.andi %84, %arg12 : i32
            %86 = arith.cmpi eq, %85, %arg13 : i32
            %87 = arith.cmpi eq, %83, %arg14 : i32
            %88 = arith.andi %86, %87 : i1
            %89 = arith.cmpi eq, %83, %arg13 : i32
            %90 = arith.cmpi eq, %85, %arg14 : i32
            %91 = arith.andi %89, %90 : i1
            %92 = arith.ori %88, %91 : i1
            %93 = arith.cmpi ugt, %85, %arg13 : i32
            %94 = arith.cmpi ugt, %83, %arg13 : i32
            %95 = arith.ori %93, %94 : i1
            %96 = arith.ori %92, %95 : i1
            %97 = arith.select %96, %arg15, %81 : i32
            %98 = arith.andi %97, %arg12 : i32
            %99 = arith.ori %97, %arg16 : i32
            %100 = arith.cmpi ugt, %98, %arg13 : i32
            %101 = arith.select %100, %99, %97 : i32
            %102 = arith.addi %97, %arg17 : i32
            %103 = arith.shrui %97, %arg18 : i32
            %104 = arith.andi %103, %arg19 : i32
            %105 = arith.addi %102, %104 : i32
            %106 = arith.andi %105, %arg20 : i32
            %107 = arith.cmpi uge, %98, %arg13 : i32
            %108 = arith.select %107, %101, %106 : i32
            %109 = arith.bitcast %108 : i32 to f32
            memref.store %109, %arg21[%arg22, %arg23] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%72, %73, %74, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%59 : memref<64x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<64x128xf32, #map>):
        %c0_23 = arith.constant 0 : index
        %c64_24 = arith.constant 64 : index
        %c1_25 = arith.constant 1 : index
        %c128_26 = arith.constant 128 : index
        %c56 = arith.constant 56 : index
        scf.for %arg22 = %c56 to %c64_24 step %c1_25 {
          scf.for %arg23 = %c0_23 to %c128_26 step %c1_25 {
            %78 = memref.load %arg9[%arg22, %arg23] : memref<64x128xf32, #map>
            %79 = memref.load %arg10[%arg22, %arg23] : memref<64x128xf32, #map>
            %80 = memref.load %arg11[%arg22, %arg23] : memref<64x128xf32, #map>
            %81 = arith.bitcast %80 : f32 to i32
            %82 = arith.bitcast %79 : f32 to i32
            %83 = arith.andi %82, %arg12 : i32
            %84 = arith.bitcast %78 : f32 to i32
            %85 = arith.andi %84, %arg12 : i32
            %86 = arith.cmpi eq, %85, %arg13 : i32
            %87 = arith.cmpi eq, %83, %arg14 : i32
            %88 = arith.andi %86, %87 : i1
            %89 = arith.cmpi eq, %83, %arg13 : i32
            %90 = arith.cmpi eq, %85, %arg14 : i32
            %91 = arith.andi %89, %90 : i1
            %92 = arith.ori %88, %91 : i1
            %93 = arith.cmpi ugt, %85, %arg13 : i32
            %94 = arith.cmpi ugt, %83, %arg13 : i32
            %95 = arith.ori %93, %94 : i1
            %96 = arith.ori %92, %95 : i1
            %97 = arith.select %96, %arg15, %81 : i32
            %98 = arith.andi %97, %arg12 : i32
            %99 = arith.ori %97, %arg16 : i32
            %100 = arith.cmpi ugt, %98, %arg13 : i32
            %101 = arith.select %100, %99, %97 : i32
            %102 = arith.addi %97, %arg17 : i32
            %103 = arith.shrui %97, %arg18 : i32
            %104 = arith.andi %103, %arg19 : i32
            %105 = arith.addi %102, %104 : i32
            %106 = arith.andi %105, %arg20 : i32
            %107 = arith.cmpi uge, %98, %arg13 : i32
            %108 = arith.select %107, %101, %106 : i32
            %109 = arith.bitcast %108 : i32 to f32
            memref.store %109, %arg21[%arg22, %arg23] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 15)
      sdnn.core_arrive(3, 22)
      sdnn.core_arrive(3, 24)
      sdnn.core_arrive(3, 26)
      %75 = arith.muli %37, %c65536 : index
      %76 = arith.addi %75, %40 : index
      %reinterpret_cast_19 = memref.reinterpret_cast %arg3 to offset: [%76], sizes: [64, 128], strides: [1024, 1] : memref<*xbf16, 1> to memref<64x128xbf16, strided<[1024, 1], offset: ?>, 1>
      %77 = arith.minsi %64, %c64 : index
      %subview_20 = memref.subview %reinterpret_cast_19[0, 0] [%77, %70] [1, 1] : memref<64x128xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[1024, 1], offset: ?>, 1>
      %cast_21 = memref.cast %subview_20 : memref<?x?xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, 1], offset: ?>, 1>
      %subview_22 = memref.subview %59[0, 0] [%77, %70] [1, 1] : memref<64x128xf32, #map> to memref<?x?xf32, strided<[128, 1]>>
      sdnn.dma out %subview_22, %cast_21 {signal = array<i32: 16>, wait = array<i32: 15>} : memref<?x?xf32, strided<[128, 1]>> memref<?x?xbf16, strided<[?, 1], offset: ?>, 1> -> 
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
