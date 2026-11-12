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
    %cst = arith.constant 4.471500e-02 : f32
    %c64_i32 = arith.constant 64 : i32
    %c128_i32 = arith.constant 128 : i32
    %c8_i32 = arith.constant 8 : i32
    %cst_0 = arith.constant 5.000000e-01 : f32
    %cst_1 = arith.constant 0.797884583 : f32
    %cst_2 = arith.constant 1.000000e+00 : f32
    %c2147483647_i32 = arith.constant 2147483647 : i32
    %c-2147483648_i32 = arith.constant -2147483648 : i32
    %c1098907648_i32 = arith.constant 1098907648 : i32
    %c2139095040_i32 = arith.constant 2139095040 : i32
    %c4194304_i32 = arith.constant 4194304 : i32
    %c8388607_i32 = arith.constant 8388607 : i32
    %c0_i32 = arith.constant 0 : i32
    %c2143289344_i32 = arith.constant 2143289344 : i32
    %c16_i32 = arith.constant 16 : i32
    %c1_i32 = arith.constant 1 : i32
    %c32767_i32 = arith.constant 32767 : i32
    %c65536 = arith.constant 65536 : index
    %c4096 = arith.constant 4096 : index
    %c128 = arith.constant 128 : index
    %c1024 = arith.constant 1024 : index
    %c64 = arith.constant 64 : index
    %c-65536_i32 = arith.constant -65536 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %reinterpret_cast = memref.reinterpret_cast %arg4 to offset: [0], sizes: [1024], strides: [1] : memref<*xf32, 1> to memref<1024xf32, 1>
    "sdnn.init"(%reinterpret_cast) {signal = [array<i32: 11, 5, 3, 9, 7, 21, 23, 41, 29, 32, 34, 36, 38, 44, 46>], signal_num = array<i64: 4, 5, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4>} : (memref<1024xf32, 1>) -> ()
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
    %17 = sdnn.counter {bufferNum = 4 : i32} : memref<1xi32, 6>
    %18 = sdnn.counter {bufferNum = 4 : i32} : memref<1xi32, 6>
    %19 = sdnn.counter {bufferNum = 4 : i32} : memref<1xi32, 6>
    %20 = sdnn.counter {bufferNum = 4 : i32} : memref<1xi32, 6>
    %21 = sdnn.counter {bufferNum = 4 : i32} : memref<1xi32, 6>
    %22 = sdnn.counter {bufferNum = 4 : i32} : memref<1xi32, 6>
    %23 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    %24 = sdnn.counter {bufferNum = 4 : i32} : memref<1xi32, 6>
    %25 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    %26 = sdnn.counter {bufferNum = 4 : i32} : memref<1xi32, 6>
    scf.for %arg8 = %10 to %11 step %c1 {
      %27 = arith.index_cast %arg8 : index to i32
      %28 = arith.divsi %27, %arg7 : i32
      %29 = arith.divsi %28, %arg6 : i32
      %alloc = memref.alloc() {bufferNum = 4 : index, bufferSize = 32768 : index, init_signal = 11 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map>
      %30 = sdnn.get_fifo_buffer %alloc, %26, {bufferNum = 4 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
      %31 = arith.divsi %29, %c64_i32 : i32
      %32 = arith.muli %31, %c8_i32 : i32
      %33 = arith.subi %c1_i32, %32 : i32
      %34 = arith.minsi %33, %c8_i32 : i32
      %35 = arith.remsi %29, %34 : i32
      %36 = arith.addi %32, %35 : i32
      %37 = arith.remsi %29, %c64_i32 : i32
      %38 = arith.divsi %37, %34 : i32
      %39 = arith.cmpi sge, %36, %c0_i32 : i32
      llvm.intr.assume %39 : i1
      %40 = arith.cmpi sge, %38, %c0_i32 : i32
      llvm.intr.assume %40 : i1
      %41 = arith.muli %36, %c64_i32 : i32
      %42 = arith.index_cast %36 : i32 to index
      %43 = arith.muli %38, %c128_i32 : i32
      %44 = arith.index_cast %38 : i32 to index
      %45 = arith.muli %44, %c128 : index
      %46 = arith.muli %42, %c4096 : index
      %47 = arith.cmpi sge, %46, %c4096 : index
      %48 = arith.divsi %46, %c4096 : index
      %49 = arith.muli %48, %c4096 : index
      %50 = arith.subi %46, %49 : index
      %51 = arith.select %47, %50, %46 : index
      %52 = arith.divsi %51, %c64 : index
      %53 = arith.addi %52, %c64 : index
      %54 = arith.minsi %53, %c64 : index
      %55 = arith.subi %54, %52 : index
      %reinterpret_cast_3 = memref.reinterpret_cast %arg0 to offset: [%46], sizes: [%55, 64], strides: [64, 1] : memref<*xbf16, 1> to memref<?x64xbf16, strided<[64, 1], offset: ?>, 1>
      %cast = memref.cast %reinterpret_cast_3 : memref<?x64xbf16, strided<[64, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
      %alloc_4 = memref.alloc() {bufferNum = 5 : index, bufferSize = 16384 : index, init_signal = 5 : i64, processed, sram = "l1d"} : memref<64x64xf32, #map1, 3>
      %56 = sdnn.get_fifo_buffer %alloc_4, %25, {bufferNum = 5 : i32, bufferSize = 16384 : i32} : memref<64x64xf32, #map1, 3> memref<1xi32, 6> to memref<64x64xf32, #map1, 3>
      %alloc_5 = memref.alloc() {bufferNum = 4 : index, bufferSize = 16384 : index, init_signal = 3 : i64, processed, sram = "uni_sram", trans = false} : memref<64x64xf32, #map1>
      %57 = sdnn.get_fifo_buffer %alloc_5, %24, {bufferNum = 4 : i32, bufferSize = 16384 : i32} : memref<64x64xf32, #map1> memref<1xi32, 6> to memref<64x64xf32, #map1>
      %dim = memref.dim %reinterpret_cast_3, %c0 : memref<?x64xbf16, strided<[64, 1], offset: ?>, 1>
      %subview = memref.subview %57[0, 0] [%dim, 64] [1, 1] : memref<64x64xf32, #map1> to memref<?x64xf32, strided<[64, 1]>>
      %cast_6 = memref.cast %subview : memref<?x64xf32, strided<[64, 1]>> to memref<?x?xf32, strided<[64, 1]>>
      sdnn.dma in %cast, %cast_6 {core_id = 1 : i32, signal = array<i32: 2>, wait = array<i32: 3>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[64, 1]>> -> 
      sdnn.ds %57, %56 mask_dims[%c64, %c64] {sdnn.layout = "CR_RowMajor", signal = array<i32: 3, 4>, signal_cached = array<i32: 4>, wait = array<i32: 2, 5>, wait_cached = array<i32: 5>} : memref<64x64xf32, #map1> memref<64x64xf32, #map1, 3> -> 
      %58 = arith.remsi %45, %c1024 : index
      %59 = arith.addi %58, %c128 : index
      %60 = arith.minsi %59, %c1024 : index
      %61 = arith.subi %60, %58 : index
      %reinterpret_cast_7 = memref.reinterpret_cast %arg1 to offset: [%45], sizes: [64, %61], strides: [1024, 1] : memref<*xbf16, 1> to memref<64x?xbf16, strided<[1024, 1], offset: ?>, 1>
      %cast_8 = memref.cast %reinterpret_cast_7 : memref<64x?xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
      %alloc_9 = memref.alloc() {bufferNum = 5 : index, bufferSize = 32768 : index, init_signal = 9 : i64, processed, sram = "l1w"} : memref<64x128xf32, #map, 4>
      %62 = sdnn.get_fifo_buffer %alloc_9, %23, {bufferNum = 5 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map, 4> memref<1xi32, 6> to memref<64x128xf32, #map, 4>
      %alloc_10 = memref.alloc() {bufferNum = 4 : index, bufferSize = 32768 : index, init_signal = 7 : i64, processed, sram = "uni_sram", trans = false} : memref<64x128xf32, #map>
      %63 = sdnn.get_fifo_buffer %alloc_10, %22, {bufferNum = 4 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
      %dim_11 = memref.dim %reinterpret_cast_7, %c1 : memref<64x?xbf16, strided<[1024, 1], offset: ?>, 1>
      %alloc_12 = memref.alloc() {bufferNum = 4 : index, bufferSize = 32768 : index, init_signal = 21 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map>
      %64 = sdnn.get_fifo_buffer %alloc_12, %21, {bufferNum = 4 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
      %subview_13 = memref.subview %63[0, 0] [64, %dim_11] [1, 1] : memref<64x128xf32, #map> to memref<64x?xf32, strided<[128, 1]>>
      %cast_14 = memref.cast %subview_13 : memref<64x?xf32, strided<[128, 1]>> to memref<?x?xf32, strided<[128, 1]>>
      sdnn.dma in %cast_8, %cast_14 {core_id = 6 : i32, signal = array<i32: 6>, wait = array<i32: 7>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[128, 1]>> -> 
      sdnn.ds %63, %62 mask_dims[%c64, %c128] {sdnn.layout = "CR_RowMajor", signal = array<i32: 7, 8>, signal_cached = array<i32: 8>, wait = array<i32: 6, 9>, wait_cached = array<i32: 9>} : memref<64x128xf32, #map> memref<64x128xf32, #map, 4> -> 
      sdnn.mma %56, %62, %30 acc %c0_i32 mask_dims[%c64, %c128, %c64] {indexing_maps = [#map2, #map3, #map4], rcOut = false, sdnn.layout = "CR_RowMajor", signal = array<i32: 5, 9, 10>, wait = array<i32: 4, 8, 11>} : (memref<64x64xf32, #map1, 3>, memref<64x128xf32, #map, 4>, memref<64x128xf32, #map>, i32, index, index, index) -> ()
      %reinterpret_cast_15 = memref.reinterpret_cast %arg2 to offset: [%45], sizes: [1, 128], strides: [128, 1] : memref<*xbf16, 1> to memref<1x128xbf16, strided<[128, 1], offset: ?>, 1>
      %65 = arith.index_cast %41 : i32 to index
      %66 = arith.addi %65, %c64 : index
      %67 = arith.minsi %66, %c64 : index
      %68 = arith.maxsi %67, %65 : index
      %69 = arith.subi %68, %65 : index
      %70 = arith.index_cast %43 : i32 to index
      %71 = arith.addi %70, %c128 : index
      %72 = arith.minsi %71, %c1024 : index
      %73 = arith.maxsi %72, %70 : index
      %74 = arith.subi %73, %70 : index
      %75 = arith.minsi %74, %c128 : index
      %alloc_16 = memref.alloc() {bufferNum = 4 : index, bufferSize = 512 : index, init_signal = 23 : i64, processed, sram = "uni_sram", trans = false} : memref<1x128xf32, #map>
      %76 = sdnn.get_fifo_buffer %alloc_16, %20, {bufferNum = 4 : i32, bufferSize = 512 : i32} : memref<1x128xf32, #map> memref<1xi32, 6> to memref<1x128xf32, #map>
      %subview_17 = memref.subview %reinterpret_cast_15[0, 0] [1, %75] [1, 1] : memref<1x128xbf16, strided<[128, 1], offset: ?>, 1> to memref<1x?xbf16, strided<[128, 1], offset: ?>, 1>
      %alloc_18 = memref.alloc() {bufferNum = 4 : index, bufferSize = 32768 : index, init_signal = 41 : i64, processed, sram = "uni_sram"} : memref<64x128xi32, #map>
      %77 = sdnn.get_fifo_buffer %alloc_18, %19, {bufferNum = 4 : i32, bufferSize = 32768 : i32} : memref<64x128xi32, #map> memref<1xi32, 6> to memref<64x128xi32, #map>
      sdnn.core_wait(3, 10)
      sdnn.core_wait(3, 21)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%30, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        scf.for %arg18 = %c0_31 to %c8 step %c1_32 {
          scf.for %arg19 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.andi %89, %arg10 : i32
            %91 = arith.ori %89, %arg11 : i32
            %92 = arith.cmpi ugt, %90, %arg12 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg13 : i32
            %95 = arith.shrui %89, %arg14 : i32
            %96 = arith.andi %95, %arg15 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg16 : i32
            %99 = arith.cmpi uge, %90, %arg12 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%30, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        %c16 = arith.constant 16 : index
        scf.for %arg18 = %c8 to %c16 step %c1_32 {
          scf.for %arg19 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.andi %89, %arg10 : i32
            %91 = arith.ori %89, %arg11 : i32
            %92 = arith.cmpi ugt, %90, %arg12 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg13 : i32
            %95 = arith.shrui %89, %arg14 : i32
            %96 = arith.andi %95, %arg15 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg16 : i32
            %99 = arith.cmpi uge, %90, %arg12 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%30, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c16 = arith.constant 16 : index
        %c24 = arith.constant 24 : index
        scf.for %arg18 = %c16 to %c24 step %c1_32 {
          scf.for %arg19 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.andi %89, %arg10 : i32
            %91 = arith.ori %89, %arg11 : i32
            %92 = arith.cmpi ugt, %90, %arg12 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg13 : i32
            %95 = arith.shrui %89, %arg14 : i32
            %96 = arith.andi %95, %arg15 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg16 : i32
            %99 = arith.cmpi uge, %90, %arg12 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%30, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c24 = arith.constant 24 : index
        %c32 = arith.constant 32 : index
        scf.for %arg18 = %c24 to %c32 step %c1_32 {
          scf.for %arg19 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.andi %89, %arg10 : i32
            %91 = arith.ori %89, %arg11 : i32
            %92 = arith.cmpi ugt, %90, %arg12 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg13 : i32
            %95 = arith.shrui %89, %arg14 : i32
            %96 = arith.andi %95, %arg15 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg16 : i32
            %99 = arith.cmpi uge, %90, %arg12 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%30, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c32 = arith.constant 32 : index
        %c40 = arith.constant 40 : index
        scf.for %arg18 = %c32 to %c40 step %c1_32 {
          scf.for %arg19 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.andi %89, %arg10 : i32
            %91 = arith.ori %89, %arg11 : i32
            %92 = arith.cmpi ugt, %90, %arg12 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg13 : i32
            %95 = arith.shrui %89, %arg14 : i32
            %96 = arith.andi %95, %arg15 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg16 : i32
            %99 = arith.cmpi uge, %90, %arg12 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%30, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c40 = arith.constant 40 : index
        %c48 = arith.constant 48 : index
        scf.for %arg18 = %c40 to %c48 step %c1_32 {
          scf.for %arg19 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.andi %89, %arg10 : i32
            %91 = arith.ori %89, %arg11 : i32
            %92 = arith.cmpi ugt, %90, %arg12 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg13 : i32
            %95 = arith.shrui %89, %arg14 : i32
            %96 = arith.andi %95, %arg15 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg16 : i32
            %99 = arith.cmpi uge, %90, %arg12 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%30, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c48 = arith.constant 48 : index
        %c56 = arith.constant 56 : index
        scf.for %arg18 = %c48 to %c56 step %c1_32 {
          scf.for %arg19 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.andi %89, %arg10 : i32
            %91 = arith.ori %89, %arg11 : i32
            %92 = arith.cmpi ugt, %90, %arg12 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg13 : i32
            %95 = arith.shrui %89, %arg14 : i32
            %96 = arith.andi %95, %arg15 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg16 : i32
            %99 = arith.cmpi uge, %90, %arg12 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%30, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c64_32 = arith.constant 64 : index
        %c1_33 = arith.constant 1 : index
        %c128_34 = arith.constant 128 : index
        %c56 = arith.constant 56 : index
        scf.for %arg18 = %c56 to %c64_32 step %c1_33 {
          scf.for %arg19 = %c0_31 to %c128_34 step %c1_33 {
            %88 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.andi %89, %arg10 : i32
            %91 = arith.ori %89, %arg11 : i32
            %92 = arith.cmpi ugt, %90, %arg12 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg13 : i32
            %95 = arith.shrui %89, %arg14 : i32
            %96 = arith.andi %95, %arg15 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg16 : i32
            %99 = arith.cmpi uge, %90, %arg12 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 11)
      sdnn.core_arrive(3, 12)
      %subview_19 = memref.subview %76[0, 0] [1, %75] [1, 1] : memref<1x128xf32, #map> to memref<1x?xf32, strided<[128, 1]>>
      sdnn.dma in %subview_17, %subview_19 {core_id = 1 : i32, signal = array<i32: 22>, wait = array<i32: 23>} : memref<1x?xbf16, strided<[128, 1], offset: ?>, 1> memref<1x?xf32, strided<[128, 1]>> -> 
      sdnn.ew linear %64 src0 %64 src1 %76 a %cst_2 b %cst_2 {sdnn.layout = "CR_RowMajor", signal = array<i32: 13, 23>, wait = array<i32: 12, 22>} : (memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<1x128xf32, #map>, f32, f32) -> ()
      %alloc_20 = memref.alloc() {bufferNum = 4 : index, bufferSize = 32768 : index, init_signal = 29 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map>
      %78 = sdnn.get_fifo_buffer %alloc_20, %18, {bufferNum = 4 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
      sdnn.core_wait(3, 13)
      sdnn.core_wait(3, 29)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%64, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%78 : memref<64x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        scf.for %arg18 = %c0_31 to %c8 step %c1_32 {
          scf.for %arg19 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.andi %89, %arg10 : i32
            %91 = arith.ori %89, %arg11 : i32
            %92 = arith.cmpi ugt, %90, %arg12 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg13 : i32
            %95 = arith.shrui %89, %arg14 : i32
            %96 = arith.andi %95, %arg15 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg16 : i32
            %99 = arith.cmpi uge, %90, %arg12 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%64, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%78 : memref<64x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        %c16 = arith.constant 16 : index
        scf.for %arg18 = %c8 to %c16 step %c1_32 {
          scf.for %arg19 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.andi %89, %arg10 : i32
            %91 = arith.ori %89, %arg11 : i32
            %92 = arith.cmpi ugt, %90, %arg12 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg13 : i32
            %95 = arith.shrui %89, %arg14 : i32
            %96 = arith.andi %95, %arg15 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg16 : i32
            %99 = arith.cmpi uge, %90, %arg12 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%64, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%78 : memref<64x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c16 = arith.constant 16 : index
        %c24 = arith.constant 24 : index
        scf.for %arg18 = %c16 to %c24 step %c1_32 {
          scf.for %arg19 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.andi %89, %arg10 : i32
            %91 = arith.ori %89, %arg11 : i32
            %92 = arith.cmpi ugt, %90, %arg12 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg13 : i32
            %95 = arith.shrui %89, %arg14 : i32
            %96 = arith.andi %95, %arg15 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg16 : i32
            %99 = arith.cmpi uge, %90, %arg12 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%64, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%78 : memref<64x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c24 = arith.constant 24 : index
        %c32 = arith.constant 32 : index
        scf.for %arg18 = %c24 to %c32 step %c1_32 {
          scf.for %arg19 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.andi %89, %arg10 : i32
            %91 = arith.ori %89, %arg11 : i32
            %92 = arith.cmpi ugt, %90, %arg12 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg13 : i32
            %95 = arith.shrui %89, %arg14 : i32
            %96 = arith.andi %95, %arg15 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg16 : i32
            %99 = arith.cmpi uge, %90, %arg12 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%64, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%78 : memref<64x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c32 = arith.constant 32 : index
        %c40 = arith.constant 40 : index
        scf.for %arg18 = %c32 to %c40 step %c1_32 {
          scf.for %arg19 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.andi %89, %arg10 : i32
            %91 = arith.ori %89, %arg11 : i32
            %92 = arith.cmpi ugt, %90, %arg12 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg13 : i32
            %95 = arith.shrui %89, %arg14 : i32
            %96 = arith.andi %95, %arg15 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg16 : i32
            %99 = arith.cmpi uge, %90, %arg12 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%64, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%78 : memref<64x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c40 = arith.constant 40 : index
        %c48 = arith.constant 48 : index
        scf.for %arg18 = %c40 to %c48 step %c1_32 {
          scf.for %arg19 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.andi %89, %arg10 : i32
            %91 = arith.ori %89, %arg11 : i32
            %92 = arith.cmpi ugt, %90, %arg12 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg13 : i32
            %95 = arith.shrui %89, %arg14 : i32
            %96 = arith.andi %95, %arg15 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg16 : i32
            %99 = arith.cmpi uge, %90, %arg12 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%64, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%78 : memref<64x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c48 = arith.constant 48 : index
        %c56 = arith.constant 56 : index
        scf.for %arg18 = %c48 to %c56 step %c1_32 {
          scf.for %arg19 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.andi %89, %arg10 : i32
            %91 = arith.ori %89, %arg11 : i32
            %92 = arith.cmpi ugt, %90, %arg12 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg13 : i32
            %95 = arith.shrui %89, %arg14 : i32
            %96 = arith.andi %95, %arg15 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg16 : i32
            %99 = arith.cmpi uge, %90, %arg12 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%64, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%78 : memref<64x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c64_32 = arith.constant 64 : index
        %c1_33 = arith.constant 1 : index
        %c128_34 = arith.constant 128 : index
        %c56 = arith.constant 56 : index
        scf.for %arg18 = %c56 to %c64_32 step %c1_33 {
          scf.for %arg19 = %c0_31 to %c128_34 step %c1_33 {
            %88 = memref.load %arg9[%arg18, %arg19] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.andi %89, %arg10 : i32
            %91 = arith.ori %89, %arg11 : i32
            %92 = arith.cmpi ugt, %90, %arg12 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg13 : i32
            %95 = arith.shrui %89, %arg14 : i32
            %96 = arith.andi %95, %arg15 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg16 : i32
            %99 = arith.cmpi uge, %90, %arg12 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg17[%arg18, %arg19] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 14)
      sdnn.core_arrive(3, 26)
      sdnn.core_arrive(3, 27)
      sdnn.core_arrive(3, 30)
      sdnn.core_arrive(3, 24)
      %alloc_21 = memref.alloc() {bufferNum = 4 : index, bufferSize = 32768 : index, init_signal = 32 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map>
      %79 = sdnn.get_fifo_buffer %alloc_21, %17, {bufferNum = 4 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
      sdnn.ew mul %79 src0 %78 c %cst_0 {sdnn.layout = "CR_RowMajor", signal = array<i32: 31>, wait = array<i32: 24, 32>} : (memref<64x128xf32, #map>, memref<64x128xf32, #map>, f32) -> ()
      %alloc_22 = memref.alloc() {bufferNum = 4 : index, bufferSize = 32768 : index, init_signal = 34 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map>
      %80 = sdnn.get_fifo_buffer %alloc_22, %16, {bufferNum = 4 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
      sdnn.ew mul %80 src0 %78 src1 %78 {sdnn.layout = "CR_RowMajor", wait = array<i32: 26, 34>} : (memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>) -> ()
      %alloc_23 = memref.alloc() {bufferNum = 4 : index, bufferSize = 32768 : index, init_signal = 36 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map>
      %81 = sdnn.get_fifo_buffer %alloc_23, %15, {bufferNum = 4 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
      sdnn.ew mul %81 src0 %80 src1 %78 {sdnn.layout = "CR_RowMajor", signal = array<i32: 25, 33, 35>, wait = array<i32: 27, 36>} : (memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>) -> ()
      sdnn.core_wait(3, 14)
      sdnn.core_wait(3, 25)
      sdnn.core_wait(3, 33)
      sdnn.core_wait(3, 35)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%80, %78, %81, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        scf.for %arg17 = %c0_31 to %c8 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map>
            %91 = arith.bitcast %90 : f32 to i32
            %92 = arith.bitcast %89 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.bitcast %88 : f32 to i32
            %95 = arith.andi %94, %arg12 : i32
            %96 = arith.cmpi eq, %95, %arg13 : i32
            %97 = arith.cmpi eq, %93, %arg14 : i32
            %98 = arith.andi %96, %97 : i1
            %99 = arith.cmpi eq, %93, %arg13 : i32
            %100 = arith.cmpi eq, %95, %arg14 : i32
            %101 = arith.andi %99, %100 : i1
            %102 = arith.ori %98, %101 : i1
            %103 = arith.cmpi ugt, %95, %arg13 : i32
            %104 = arith.cmpi ugt, %93, %arg13 : i32
            %105 = arith.ori %103, %104 : i1
            %106 = arith.ori %102, %105 : i1
            %107 = arith.select %106, %arg15, %91 : i32
            %108 = arith.bitcast %107 : i32 to f32
            memref.store %108, %arg16[%arg17, %arg18] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%80, %78, %81, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        %c16 = arith.constant 16 : index
        scf.for %arg17 = %c8 to %c16 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map>
            %91 = arith.bitcast %90 : f32 to i32
            %92 = arith.bitcast %89 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.bitcast %88 : f32 to i32
            %95 = arith.andi %94, %arg12 : i32
            %96 = arith.cmpi eq, %95, %arg13 : i32
            %97 = arith.cmpi eq, %93, %arg14 : i32
            %98 = arith.andi %96, %97 : i1
            %99 = arith.cmpi eq, %93, %arg13 : i32
            %100 = arith.cmpi eq, %95, %arg14 : i32
            %101 = arith.andi %99, %100 : i1
            %102 = arith.ori %98, %101 : i1
            %103 = arith.cmpi ugt, %95, %arg13 : i32
            %104 = arith.cmpi ugt, %93, %arg13 : i32
            %105 = arith.ori %103, %104 : i1
            %106 = arith.ori %102, %105 : i1
            %107 = arith.select %106, %arg15, %91 : i32
            %108 = arith.bitcast %107 : i32 to f32
            memref.store %108, %arg16[%arg17, %arg18] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%80, %78, %81, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c16 = arith.constant 16 : index
        %c24 = arith.constant 24 : index
        scf.for %arg17 = %c16 to %c24 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map>
            %91 = arith.bitcast %90 : f32 to i32
            %92 = arith.bitcast %89 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.bitcast %88 : f32 to i32
            %95 = arith.andi %94, %arg12 : i32
            %96 = arith.cmpi eq, %95, %arg13 : i32
            %97 = arith.cmpi eq, %93, %arg14 : i32
            %98 = arith.andi %96, %97 : i1
            %99 = arith.cmpi eq, %93, %arg13 : i32
            %100 = arith.cmpi eq, %95, %arg14 : i32
            %101 = arith.andi %99, %100 : i1
            %102 = arith.ori %98, %101 : i1
            %103 = arith.cmpi ugt, %95, %arg13 : i32
            %104 = arith.cmpi ugt, %93, %arg13 : i32
            %105 = arith.ori %103, %104 : i1
            %106 = arith.ori %102, %105 : i1
            %107 = arith.select %106, %arg15, %91 : i32
            %108 = arith.bitcast %107 : i32 to f32
            memref.store %108, %arg16[%arg17, %arg18] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%80, %78, %81, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c24 = arith.constant 24 : index
        %c32 = arith.constant 32 : index
        scf.for %arg17 = %c24 to %c32 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map>
            %91 = arith.bitcast %90 : f32 to i32
            %92 = arith.bitcast %89 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.bitcast %88 : f32 to i32
            %95 = arith.andi %94, %arg12 : i32
            %96 = arith.cmpi eq, %95, %arg13 : i32
            %97 = arith.cmpi eq, %93, %arg14 : i32
            %98 = arith.andi %96, %97 : i1
            %99 = arith.cmpi eq, %93, %arg13 : i32
            %100 = arith.cmpi eq, %95, %arg14 : i32
            %101 = arith.andi %99, %100 : i1
            %102 = arith.ori %98, %101 : i1
            %103 = arith.cmpi ugt, %95, %arg13 : i32
            %104 = arith.cmpi ugt, %93, %arg13 : i32
            %105 = arith.ori %103, %104 : i1
            %106 = arith.ori %102, %105 : i1
            %107 = arith.select %106, %arg15, %91 : i32
            %108 = arith.bitcast %107 : i32 to f32
            memref.store %108, %arg16[%arg17, %arg18] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%80, %78, %81, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c32 = arith.constant 32 : index
        %c40 = arith.constant 40 : index
        scf.for %arg17 = %c32 to %c40 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map>
            %91 = arith.bitcast %90 : f32 to i32
            %92 = arith.bitcast %89 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.bitcast %88 : f32 to i32
            %95 = arith.andi %94, %arg12 : i32
            %96 = arith.cmpi eq, %95, %arg13 : i32
            %97 = arith.cmpi eq, %93, %arg14 : i32
            %98 = arith.andi %96, %97 : i1
            %99 = arith.cmpi eq, %93, %arg13 : i32
            %100 = arith.cmpi eq, %95, %arg14 : i32
            %101 = arith.andi %99, %100 : i1
            %102 = arith.ori %98, %101 : i1
            %103 = arith.cmpi ugt, %95, %arg13 : i32
            %104 = arith.cmpi ugt, %93, %arg13 : i32
            %105 = arith.ori %103, %104 : i1
            %106 = arith.ori %102, %105 : i1
            %107 = arith.select %106, %arg15, %91 : i32
            %108 = arith.bitcast %107 : i32 to f32
            memref.store %108, %arg16[%arg17, %arg18] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%80, %78, %81, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c40 = arith.constant 40 : index
        %c48 = arith.constant 48 : index
        scf.for %arg17 = %c40 to %c48 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map>
            %91 = arith.bitcast %90 : f32 to i32
            %92 = arith.bitcast %89 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.bitcast %88 : f32 to i32
            %95 = arith.andi %94, %arg12 : i32
            %96 = arith.cmpi eq, %95, %arg13 : i32
            %97 = arith.cmpi eq, %93, %arg14 : i32
            %98 = arith.andi %96, %97 : i1
            %99 = arith.cmpi eq, %93, %arg13 : i32
            %100 = arith.cmpi eq, %95, %arg14 : i32
            %101 = arith.andi %99, %100 : i1
            %102 = arith.ori %98, %101 : i1
            %103 = arith.cmpi ugt, %95, %arg13 : i32
            %104 = arith.cmpi ugt, %93, %arg13 : i32
            %105 = arith.ori %103, %104 : i1
            %106 = arith.ori %102, %105 : i1
            %107 = arith.select %106, %arg15, %91 : i32
            %108 = arith.bitcast %107 : i32 to f32
            memref.store %108, %arg16[%arg17, %arg18] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%80, %78, %81, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c48 = arith.constant 48 : index
        %c56 = arith.constant 56 : index
        scf.for %arg17 = %c48 to %c56 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map>
            %91 = arith.bitcast %90 : f32 to i32
            %92 = arith.bitcast %89 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.bitcast %88 : f32 to i32
            %95 = arith.andi %94, %arg12 : i32
            %96 = arith.cmpi eq, %95, %arg13 : i32
            %97 = arith.cmpi eq, %93, %arg14 : i32
            %98 = arith.andi %96, %97 : i1
            %99 = arith.cmpi eq, %93, %arg13 : i32
            %100 = arith.cmpi eq, %95, %arg14 : i32
            %101 = arith.andi %99, %100 : i1
            %102 = arith.ori %98, %101 : i1
            %103 = arith.cmpi ugt, %95, %arg13 : i32
            %104 = arith.cmpi ugt, %93, %arg13 : i32
            %105 = arith.ori %103, %104 : i1
            %106 = arith.ori %102, %105 : i1
            %107 = arith.select %106, %arg15, %91 : i32
            %108 = arith.bitcast %107 : i32 to f32
            memref.store %108, %arg16[%arg17, %arg18] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%80, %78, %81, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c64_32 = arith.constant 64 : index
        %c1_33 = arith.constant 1 : index
        %c128_34 = arith.constant 128 : index
        %c56 = arith.constant 56 : index
        scf.for %arg17 = %c56 to %c64_32 step %c1_33 {
          scf.for %arg18 = %c0_31 to %c128_34 step %c1_33 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map>
            %91 = arith.bitcast %90 : f32 to i32
            %92 = arith.bitcast %89 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.bitcast %88 : f32 to i32
            %95 = arith.andi %94, %arg12 : i32
            %96 = arith.cmpi eq, %95, %arg13 : i32
            %97 = arith.cmpi eq, %93, %arg14 : i32
            %98 = arith.andi %96, %97 : i1
            %99 = arith.cmpi eq, %93, %arg13 : i32
            %100 = arith.cmpi eq, %95, %arg14 : i32
            %101 = arith.andi %99, %100 : i1
            %102 = arith.ori %98, %101 : i1
            %103 = arith.cmpi ugt, %95, %arg13 : i32
            %104 = arith.cmpi ugt, %93, %arg13 : i32
            %105 = arith.ori %103, %104 : i1
            %106 = arith.ori %102, %105 : i1
            %107 = arith.select %106, %arg15, %91 : i32
            %108 = arith.bitcast %107 : i32 to f32
            memref.store %108, %arg16[%arg17, %arg18] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 15)
      sdnn.core_arrive(3, 28)
      sdnn.core_arrive(3, 34)
      sdnn.core_arrive(3, 36)
      %alloc_24 = memref.alloc() {bufferNum = 4 : index, bufferSize = 32768 : index, init_signal = 38 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map>
      %82 = sdnn.get_fifo_buffer %alloc_24, %14, {bufferNum = 4 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
      sdnn.ew linear %82 src0 %78 src1 %64 a %cst_2 b %cst {sdnn.layout = "CR_RowMajor", signal = array<i32: 16>, wait = array<i32: 15, 28, 38>} : (memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, f32, f32) -> ()
      sdnn.ew mul %82 src0 %82 c %cst_1 {sdnn.layout = "CR_RowMajor", signal = array<i32: 37>} : (memref<64x128xf32, #map>, memref<64x128xf32, #map>, f32) -> ()
      sdnn.core_wait(3, 37)
      sdnn.core_wait(3, 41)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%82 : memref<64x128xf32, #map>) outs(%77 : memref<64x128xi32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xi32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        scf.for %arg11 = %c0_31 to %c8 step %c1_32 {
          scf.for %arg12 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg11, %arg12] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            memref.store %89, %arg10[%arg11, %arg12] : memref<64x128xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%82 : memref<64x128xf32, #map>) outs(%77 : memref<64x128xi32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xi32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        %c16 = arith.constant 16 : index
        scf.for %arg11 = %c8 to %c16 step %c1_32 {
          scf.for %arg12 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg11, %arg12] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            memref.store %89, %arg10[%arg11, %arg12] : memref<64x128xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%82 : memref<64x128xf32, #map>) outs(%77 : memref<64x128xi32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xi32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c16 = arith.constant 16 : index
        %c24 = arith.constant 24 : index
        scf.for %arg11 = %c16 to %c24 step %c1_32 {
          scf.for %arg12 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg11, %arg12] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            memref.store %89, %arg10[%arg11, %arg12] : memref<64x128xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%82 : memref<64x128xf32, #map>) outs(%77 : memref<64x128xi32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xi32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c24 = arith.constant 24 : index
        %c32 = arith.constant 32 : index
        scf.for %arg11 = %c24 to %c32 step %c1_32 {
          scf.for %arg12 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg11, %arg12] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            memref.store %89, %arg10[%arg11, %arg12] : memref<64x128xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%82 : memref<64x128xf32, #map>) outs(%77 : memref<64x128xi32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xi32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c32 = arith.constant 32 : index
        %c40 = arith.constant 40 : index
        scf.for %arg11 = %c32 to %c40 step %c1_32 {
          scf.for %arg12 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg11, %arg12] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            memref.store %89, %arg10[%arg11, %arg12] : memref<64x128xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%82 : memref<64x128xf32, #map>) outs(%77 : memref<64x128xi32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xi32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c40 = arith.constant 40 : index
        %c48 = arith.constant 48 : index
        scf.for %arg11 = %c40 to %c48 step %c1_32 {
          scf.for %arg12 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg11, %arg12] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            memref.store %89, %arg10[%arg11, %arg12] : memref<64x128xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%82 : memref<64x128xf32, #map>) outs(%77 : memref<64x128xi32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xi32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c48 = arith.constant 48 : index
        %c56 = arith.constant 56 : index
        scf.for %arg11 = %c48 to %c56 step %c1_32 {
          scf.for %arg12 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg11, %arg12] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            memref.store %89, %arg10[%arg11, %arg12] : memref<64x128xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%82 : memref<64x128xf32, #map>) outs(%77 : memref<64x128xi32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xi32, #map>):
        %c0_31 = arith.constant 0 : index
        %c64_32 = arith.constant 64 : index
        %c1_33 = arith.constant 1 : index
        %c128_34 = arith.constant 128 : index
        %c56 = arith.constant 56 : index
        scf.for %arg11 = %c56 to %c64_32 step %c1_33 {
          scf.for %arg12 = %c0_31 to %c128_34 step %c1_33 {
            %88 = memref.load %arg9[%arg11, %arg12] : memref<64x128xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            memref.store %89, %arg10[%arg11, %arg12] : memref<64x128xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 38)
      sdnn.core_arrive(3, 39)
      sdnn.core_wait(3, 16)
      sdnn.core_wait(3, 39)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%77, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<64x128xi32, #map>, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        scf.for %arg14 = %c0_31 to %c8 step %c1_32 {
          scf.for %arg15 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg14, %arg15] : memref<64x128xi32, #map>
            %89 = arith.andi %88, %arg10 : i32
            %90 = arith.ori %89, %arg11 : i32
            %91 = arith.andi %88, %arg12 : i32
            %92 = arith.cmpi ugt, %91, %arg11 : i32
            %93 = arith.select %92, %90, %88 : i32
            %94 = arith.bitcast %93 : i32 to f32
            memref.store %94, %arg13[%arg14, %arg15] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<64x128xi32, #map>, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        %c16 = arith.constant 16 : index
        scf.for %arg14 = %c8 to %c16 step %c1_32 {
          scf.for %arg15 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg14, %arg15] : memref<64x128xi32, #map>
            %89 = arith.andi %88, %arg10 : i32
            %90 = arith.ori %89, %arg11 : i32
            %91 = arith.andi %88, %arg12 : i32
            %92 = arith.cmpi ugt, %91, %arg11 : i32
            %93 = arith.select %92, %90, %88 : i32
            %94 = arith.bitcast %93 : i32 to f32
            memref.store %94, %arg13[%arg14, %arg15] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<64x128xi32, #map>, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c16 = arith.constant 16 : index
        %c24 = arith.constant 24 : index
        scf.for %arg14 = %c16 to %c24 step %c1_32 {
          scf.for %arg15 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg14, %arg15] : memref<64x128xi32, #map>
            %89 = arith.andi %88, %arg10 : i32
            %90 = arith.ori %89, %arg11 : i32
            %91 = arith.andi %88, %arg12 : i32
            %92 = arith.cmpi ugt, %91, %arg11 : i32
            %93 = arith.select %92, %90, %88 : i32
            %94 = arith.bitcast %93 : i32 to f32
            memref.store %94, %arg13[%arg14, %arg15] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<64x128xi32, #map>, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c24 = arith.constant 24 : index
        %c32 = arith.constant 32 : index
        scf.for %arg14 = %c24 to %c32 step %c1_32 {
          scf.for %arg15 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg14, %arg15] : memref<64x128xi32, #map>
            %89 = arith.andi %88, %arg10 : i32
            %90 = arith.ori %89, %arg11 : i32
            %91 = arith.andi %88, %arg12 : i32
            %92 = arith.cmpi ugt, %91, %arg11 : i32
            %93 = arith.select %92, %90, %88 : i32
            %94 = arith.bitcast %93 : i32 to f32
            memref.store %94, %arg13[%arg14, %arg15] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<64x128xi32, #map>, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c32 = arith.constant 32 : index
        %c40 = arith.constant 40 : index
        scf.for %arg14 = %c32 to %c40 step %c1_32 {
          scf.for %arg15 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg14, %arg15] : memref<64x128xi32, #map>
            %89 = arith.andi %88, %arg10 : i32
            %90 = arith.ori %89, %arg11 : i32
            %91 = arith.andi %88, %arg12 : i32
            %92 = arith.cmpi ugt, %91, %arg11 : i32
            %93 = arith.select %92, %90, %88 : i32
            %94 = arith.bitcast %93 : i32 to f32
            memref.store %94, %arg13[%arg14, %arg15] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<64x128xi32, #map>, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c40 = arith.constant 40 : index
        %c48 = arith.constant 48 : index
        scf.for %arg14 = %c40 to %c48 step %c1_32 {
          scf.for %arg15 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg14, %arg15] : memref<64x128xi32, #map>
            %89 = arith.andi %88, %arg10 : i32
            %90 = arith.ori %89, %arg11 : i32
            %91 = arith.andi %88, %arg12 : i32
            %92 = arith.cmpi ugt, %91, %arg11 : i32
            %93 = arith.select %92, %90, %88 : i32
            %94 = arith.bitcast %93 : i32 to f32
            memref.store %94, %arg13[%arg14, %arg15] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<64x128xi32, #map>, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c48 = arith.constant 48 : index
        %c56 = arith.constant 56 : index
        scf.for %arg14 = %c48 to %c56 step %c1_32 {
          scf.for %arg15 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg14, %arg15] : memref<64x128xi32, #map>
            %89 = arith.andi %88, %arg10 : i32
            %90 = arith.ori %89, %arg11 : i32
            %91 = arith.andi %88, %arg12 : i32
            %92 = arith.cmpi ugt, %91, %arg11 : i32
            %93 = arith.select %92, %90, %88 : i32
            %94 = arith.bitcast %93 : i32 to f32
            memref.store %94, %arg13[%arg14, %arg15] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<64x128xi32, #map>, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c64_32 = arith.constant 64 : index
        %c1_33 = arith.constant 1 : index
        %c128_34 = arith.constant 128 : index
        %c56 = arith.constant 56 : index
        scf.for %arg14 = %c56 to %c64_32 step %c1_33 {
          scf.for %arg15 = %c0_31 to %c128_34 step %c1_33 {
            %88 = memref.load %arg9[%arg14, %arg15] : memref<64x128xi32, #map>
            %89 = arith.andi %88, %arg10 : i32
            %90 = arith.ori %89, %arg11 : i32
            %91 = arith.andi %88, %arg12 : i32
            %92 = arith.cmpi ugt, %91, %arg11 : i32
            %93 = arith.select %92, %90, %88 : i32
            %94 = arith.bitcast %93 : i32 to f32
            memref.store %94, %arg13[%arg14, %arg15] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 17)
      sdnn.core_arrive(3, 40)
      sdnn.ew lut %64 src0 %64 lut_func tanh {kOverflow = 0.000000e+00 : f32, kUnderflow = 0.000000e+00 : f32, lut_max = 15.984375 : f32, lut_min = 0.000000e+00 : f32, packedid = 231491 : ui32, sdnn.layout = "CR_RowMajor", signal = array<i32: 18>, wait = array<i32: 17>} : (memref<64x128xf32, #map>, memref<64x128xf32, #map>) -> ()
      %alloc_25 = memref.alloc() {bufferNum = 4 : index, bufferSize = 32768 : index, init_signal = 44 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map>
      %83 = sdnn.get_fifo_buffer %alloc_25, %13, {bufferNum = 4 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
      sdnn.core_wait(3, 18)
      sdnn.core_wait(3, 40)
      sdnn.core_wait(3, 44)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%77, %64, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<64x128xi32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32) outs(%83 : memref<64x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        scf.for %arg16 = %c0_31 to %c8 step %c1_32 {
          scf.for %arg17 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg16, %arg17] : memref<64x128xi32, #map>
            %89 = memref.load %arg10[%arg16, %arg17] : memref<64x128xf32, #map>
            %90 = arith.ori %88, %arg11 : i32
            %91 = arith.bitcast %89 : f32 to i32
            %92 = arith.andi %88, %arg12 : i32
            %93 = arith.cmpi eq, %92, %arg12 : i32
            %94 = arith.andi %88, %arg13 : i32
            %95 = arith.cmpi ne, %94, %arg14 : i32
            %96 = arith.andi %93, %95 : i1
            %97 = arith.select %96, %90, %91 : i32
            %98 = arith.bitcast %97 : i32 to f32
            memref.store %98, %arg15[%arg16, %arg17] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %64, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<64x128xi32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32) outs(%83 : memref<64x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        %c16 = arith.constant 16 : index
        scf.for %arg16 = %c8 to %c16 step %c1_32 {
          scf.for %arg17 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg16, %arg17] : memref<64x128xi32, #map>
            %89 = memref.load %arg10[%arg16, %arg17] : memref<64x128xf32, #map>
            %90 = arith.ori %88, %arg11 : i32
            %91 = arith.bitcast %89 : f32 to i32
            %92 = arith.andi %88, %arg12 : i32
            %93 = arith.cmpi eq, %92, %arg12 : i32
            %94 = arith.andi %88, %arg13 : i32
            %95 = arith.cmpi ne, %94, %arg14 : i32
            %96 = arith.andi %93, %95 : i1
            %97 = arith.select %96, %90, %91 : i32
            %98 = arith.bitcast %97 : i32 to f32
            memref.store %98, %arg15[%arg16, %arg17] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %64, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<64x128xi32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32) outs(%83 : memref<64x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c16 = arith.constant 16 : index
        %c24 = arith.constant 24 : index
        scf.for %arg16 = %c16 to %c24 step %c1_32 {
          scf.for %arg17 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg16, %arg17] : memref<64x128xi32, #map>
            %89 = memref.load %arg10[%arg16, %arg17] : memref<64x128xf32, #map>
            %90 = arith.ori %88, %arg11 : i32
            %91 = arith.bitcast %89 : f32 to i32
            %92 = arith.andi %88, %arg12 : i32
            %93 = arith.cmpi eq, %92, %arg12 : i32
            %94 = arith.andi %88, %arg13 : i32
            %95 = arith.cmpi ne, %94, %arg14 : i32
            %96 = arith.andi %93, %95 : i1
            %97 = arith.select %96, %90, %91 : i32
            %98 = arith.bitcast %97 : i32 to f32
            memref.store %98, %arg15[%arg16, %arg17] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %64, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<64x128xi32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32) outs(%83 : memref<64x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c24 = arith.constant 24 : index
        %c32 = arith.constant 32 : index
        scf.for %arg16 = %c24 to %c32 step %c1_32 {
          scf.for %arg17 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg16, %arg17] : memref<64x128xi32, #map>
            %89 = memref.load %arg10[%arg16, %arg17] : memref<64x128xf32, #map>
            %90 = arith.ori %88, %arg11 : i32
            %91 = arith.bitcast %89 : f32 to i32
            %92 = arith.andi %88, %arg12 : i32
            %93 = arith.cmpi eq, %92, %arg12 : i32
            %94 = arith.andi %88, %arg13 : i32
            %95 = arith.cmpi ne, %94, %arg14 : i32
            %96 = arith.andi %93, %95 : i1
            %97 = arith.select %96, %90, %91 : i32
            %98 = arith.bitcast %97 : i32 to f32
            memref.store %98, %arg15[%arg16, %arg17] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %64, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<64x128xi32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32) outs(%83 : memref<64x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c32 = arith.constant 32 : index
        %c40 = arith.constant 40 : index
        scf.for %arg16 = %c32 to %c40 step %c1_32 {
          scf.for %arg17 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg16, %arg17] : memref<64x128xi32, #map>
            %89 = memref.load %arg10[%arg16, %arg17] : memref<64x128xf32, #map>
            %90 = arith.ori %88, %arg11 : i32
            %91 = arith.bitcast %89 : f32 to i32
            %92 = arith.andi %88, %arg12 : i32
            %93 = arith.cmpi eq, %92, %arg12 : i32
            %94 = arith.andi %88, %arg13 : i32
            %95 = arith.cmpi ne, %94, %arg14 : i32
            %96 = arith.andi %93, %95 : i1
            %97 = arith.select %96, %90, %91 : i32
            %98 = arith.bitcast %97 : i32 to f32
            memref.store %98, %arg15[%arg16, %arg17] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %64, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<64x128xi32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32) outs(%83 : memref<64x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c40 = arith.constant 40 : index
        %c48 = arith.constant 48 : index
        scf.for %arg16 = %c40 to %c48 step %c1_32 {
          scf.for %arg17 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg16, %arg17] : memref<64x128xi32, #map>
            %89 = memref.load %arg10[%arg16, %arg17] : memref<64x128xf32, #map>
            %90 = arith.ori %88, %arg11 : i32
            %91 = arith.bitcast %89 : f32 to i32
            %92 = arith.andi %88, %arg12 : i32
            %93 = arith.cmpi eq, %92, %arg12 : i32
            %94 = arith.andi %88, %arg13 : i32
            %95 = arith.cmpi ne, %94, %arg14 : i32
            %96 = arith.andi %93, %95 : i1
            %97 = arith.select %96, %90, %91 : i32
            %98 = arith.bitcast %97 : i32 to f32
            memref.store %98, %arg15[%arg16, %arg17] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %64, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<64x128xi32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32) outs(%83 : memref<64x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c48 = arith.constant 48 : index
        %c56 = arith.constant 56 : index
        scf.for %arg16 = %c48 to %c56 step %c1_32 {
          scf.for %arg17 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg16, %arg17] : memref<64x128xi32, #map>
            %89 = memref.load %arg10[%arg16, %arg17] : memref<64x128xf32, #map>
            %90 = arith.ori %88, %arg11 : i32
            %91 = arith.bitcast %89 : f32 to i32
            %92 = arith.andi %88, %arg12 : i32
            %93 = arith.cmpi eq, %92, %arg12 : i32
            %94 = arith.andi %88, %arg13 : i32
            %95 = arith.cmpi ne, %94, %arg14 : i32
            %96 = arith.andi %93, %95 : i1
            %97 = arith.select %96, %90, %91 : i32
            %98 = arith.bitcast %97 : i32 to f32
            memref.store %98, %arg15[%arg16, %arg17] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %64, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<64x128xi32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32) outs(%83 : memref<64x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c64_32 = arith.constant 64 : index
        %c1_33 = arith.constant 1 : index
        %c128_34 = arith.constant 128 : index
        %c56 = arith.constant 56 : index
        scf.for %arg16 = %c56 to %c64_32 step %c1_33 {
          scf.for %arg17 = %c0_31 to %c128_34 step %c1_33 {
            %88 = memref.load %arg9[%arg16, %arg17] : memref<64x128xi32, #map>
            %89 = memref.load %arg10[%arg16, %arg17] : memref<64x128xf32, #map>
            %90 = arith.ori %88, %arg11 : i32
            %91 = arith.bitcast %89 : f32 to i32
            %92 = arith.andi %88, %arg12 : i32
            %93 = arith.cmpi eq, %92, %arg12 : i32
            %94 = arith.andi %88, %arg13 : i32
            %95 = arith.cmpi ne, %94, %arg14 : i32
            %96 = arith.andi %93, %95 : i1
            %97 = arith.select %96, %90, %91 : i32
            %98 = arith.bitcast %97 : i32 to f32
            memref.store %98, %arg15[%arg16, %arg17] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 19)
      sdnn.core_arrive(3, 41)
      sdnn.core_arrive(3, 42)
      sdnn.ew linear %83 src0 %83 a %cst_2 c %cst_2 {sdnn.layout = "CR_RowMajor", wait = array<i32: 42>} : (memref<64x128xf32, #map>, memref<64x128xf32, #map>, f32, f32) -> ()
      %alloc_26 = memref.alloc() {bufferNum = 4 : index, bufferSize = 32768 : index, init_signal = 46 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map>
      %84 = sdnn.get_fifo_buffer %alloc_26, %12, {bufferNum = 4 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
      sdnn.ew mul %84 src0 %78 src1 %83 c %cst_0 {sdnn.layout = "CR_RowMajor", signal = array<i32: 29, 43, 45>, wait = array<i32: 30, 46>} : (memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, f32) -> ()
      sdnn.core_wait(3, 19)
      sdnn.core_wait(3, 31)
      sdnn.core_wait(3, 43)
      sdnn.core_wait(3, 45)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%79, %83, %84, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        scf.for %arg22 = %c0_31 to %c8 step %c1_32 {
          scf.for %arg23 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg22, %arg23] : memref<64x128xf32, #map>
            %89 = memref.load %arg10[%arg22, %arg23] : memref<64x128xf32, #map>
            %90 = memref.load %arg11[%arg22, %arg23] : memref<64x128xf32, #map>
            %91 = arith.bitcast %90 : f32 to i32
            %92 = arith.bitcast %89 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.bitcast %88 : f32 to i32
            %95 = arith.andi %94, %arg12 : i32
            %96 = arith.cmpi eq, %95, %arg13 : i32
            %97 = arith.cmpi eq, %93, %arg14 : i32
            %98 = arith.andi %96, %97 : i1
            %99 = arith.cmpi eq, %93, %arg13 : i32
            %100 = arith.cmpi eq, %95, %arg14 : i32
            %101 = arith.andi %99, %100 : i1
            %102 = arith.ori %98, %101 : i1
            %103 = arith.cmpi ugt, %95, %arg13 : i32
            %104 = arith.cmpi ugt, %93, %arg13 : i32
            %105 = arith.ori %103, %104 : i1
            %106 = arith.ori %102, %105 : i1
            %107 = arith.select %106, %arg15, %91 : i32
            %108 = arith.andi %107, %arg12 : i32
            %109 = arith.ori %107, %arg16 : i32
            %110 = arith.cmpi ugt, %108, %arg13 : i32
            %111 = arith.select %110, %109, %107 : i32
            %112 = arith.addi %107, %arg17 : i32
            %113 = arith.shrui %107, %arg18 : i32
            %114 = arith.andi %113, %arg19 : i32
            %115 = arith.addi %112, %114 : i32
            %116 = arith.andi %115, %arg20 : i32
            %117 = arith.cmpi uge, %108, %arg13 : i32
            %118 = arith.select %117, %111, %116 : i32
            %119 = arith.bitcast %118 : i32 to f32
            memref.store %119, %arg21[%arg22, %arg23] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %83, %84, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        %c16 = arith.constant 16 : index
        scf.for %arg22 = %c8 to %c16 step %c1_32 {
          scf.for %arg23 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg22, %arg23] : memref<64x128xf32, #map>
            %89 = memref.load %arg10[%arg22, %arg23] : memref<64x128xf32, #map>
            %90 = memref.load %arg11[%arg22, %arg23] : memref<64x128xf32, #map>
            %91 = arith.bitcast %90 : f32 to i32
            %92 = arith.bitcast %89 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.bitcast %88 : f32 to i32
            %95 = arith.andi %94, %arg12 : i32
            %96 = arith.cmpi eq, %95, %arg13 : i32
            %97 = arith.cmpi eq, %93, %arg14 : i32
            %98 = arith.andi %96, %97 : i1
            %99 = arith.cmpi eq, %93, %arg13 : i32
            %100 = arith.cmpi eq, %95, %arg14 : i32
            %101 = arith.andi %99, %100 : i1
            %102 = arith.ori %98, %101 : i1
            %103 = arith.cmpi ugt, %95, %arg13 : i32
            %104 = arith.cmpi ugt, %93, %arg13 : i32
            %105 = arith.ori %103, %104 : i1
            %106 = arith.ori %102, %105 : i1
            %107 = arith.select %106, %arg15, %91 : i32
            %108 = arith.andi %107, %arg12 : i32
            %109 = arith.ori %107, %arg16 : i32
            %110 = arith.cmpi ugt, %108, %arg13 : i32
            %111 = arith.select %110, %109, %107 : i32
            %112 = arith.addi %107, %arg17 : i32
            %113 = arith.shrui %107, %arg18 : i32
            %114 = arith.andi %113, %arg19 : i32
            %115 = arith.addi %112, %114 : i32
            %116 = arith.andi %115, %arg20 : i32
            %117 = arith.cmpi uge, %108, %arg13 : i32
            %118 = arith.select %117, %111, %116 : i32
            %119 = arith.bitcast %118 : i32 to f32
            memref.store %119, %arg21[%arg22, %arg23] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %83, %84, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c16 = arith.constant 16 : index
        %c24 = arith.constant 24 : index
        scf.for %arg22 = %c16 to %c24 step %c1_32 {
          scf.for %arg23 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg22, %arg23] : memref<64x128xf32, #map>
            %89 = memref.load %arg10[%arg22, %arg23] : memref<64x128xf32, #map>
            %90 = memref.load %arg11[%arg22, %arg23] : memref<64x128xf32, #map>
            %91 = arith.bitcast %90 : f32 to i32
            %92 = arith.bitcast %89 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.bitcast %88 : f32 to i32
            %95 = arith.andi %94, %arg12 : i32
            %96 = arith.cmpi eq, %95, %arg13 : i32
            %97 = arith.cmpi eq, %93, %arg14 : i32
            %98 = arith.andi %96, %97 : i1
            %99 = arith.cmpi eq, %93, %arg13 : i32
            %100 = arith.cmpi eq, %95, %arg14 : i32
            %101 = arith.andi %99, %100 : i1
            %102 = arith.ori %98, %101 : i1
            %103 = arith.cmpi ugt, %95, %arg13 : i32
            %104 = arith.cmpi ugt, %93, %arg13 : i32
            %105 = arith.ori %103, %104 : i1
            %106 = arith.ori %102, %105 : i1
            %107 = arith.select %106, %arg15, %91 : i32
            %108 = arith.andi %107, %arg12 : i32
            %109 = arith.ori %107, %arg16 : i32
            %110 = arith.cmpi ugt, %108, %arg13 : i32
            %111 = arith.select %110, %109, %107 : i32
            %112 = arith.addi %107, %arg17 : i32
            %113 = arith.shrui %107, %arg18 : i32
            %114 = arith.andi %113, %arg19 : i32
            %115 = arith.addi %112, %114 : i32
            %116 = arith.andi %115, %arg20 : i32
            %117 = arith.cmpi uge, %108, %arg13 : i32
            %118 = arith.select %117, %111, %116 : i32
            %119 = arith.bitcast %118 : i32 to f32
            memref.store %119, %arg21[%arg22, %arg23] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %83, %84, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c24 = arith.constant 24 : index
        %c32 = arith.constant 32 : index
        scf.for %arg22 = %c24 to %c32 step %c1_32 {
          scf.for %arg23 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg22, %arg23] : memref<64x128xf32, #map>
            %89 = memref.load %arg10[%arg22, %arg23] : memref<64x128xf32, #map>
            %90 = memref.load %arg11[%arg22, %arg23] : memref<64x128xf32, #map>
            %91 = arith.bitcast %90 : f32 to i32
            %92 = arith.bitcast %89 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.bitcast %88 : f32 to i32
            %95 = arith.andi %94, %arg12 : i32
            %96 = arith.cmpi eq, %95, %arg13 : i32
            %97 = arith.cmpi eq, %93, %arg14 : i32
            %98 = arith.andi %96, %97 : i1
            %99 = arith.cmpi eq, %93, %arg13 : i32
            %100 = arith.cmpi eq, %95, %arg14 : i32
            %101 = arith.andi %99, %100 : i1
            %102 = arith.ori %98, %101 : i1
            %103 = arith.cmpi ugt, %95, %arg13 : i32
            %104 = arith.cmpi ugt, %93, %arg13 : i32
            %105 = arith.ori %103, %104 : i1
            %106 = arith.ori %102, %105 : i1
            %107 = arith.select %106, %arg15, %91 : i32
            %108 = arith.andi %107, %arg12 : i32
            %109 = arith.ori %107, %arg16 : i32
            %110 = arith.cmpi ugt, %108, %arg13 : i32
            %111 = arith.select %110, %109, %107 : i32
            %112 = arith.addi %107, %arg17 : i32
            %113 = arith.shrui %107, %arg18 : i32
            %114 = arith.andi %113, %arg19 : i32
            %115 = arith.addi %112, %114 : i32
            %116 = arith.andi %115, %arg20 : i32
            %117 = arith.cmpi uge, %108, %arg13 : i32
            %118 = arith.select %117, %111, %116 : i32
            %119 = arith.bitcast %118 : i32 to f32
            memref.store %119, %arg21[%arg22, %arg23] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %83, %84, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c32 = arith.constant 32 : index
        %c40 = arith.constant 40 : index
        scf.for %arg22 = %c32 to %c40 step %c1_32 {
          scf.for %arg23 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg22, %arg23] : memref<64x128xf32, #map>
            %89 = memref.load %arg10[%arg22, %arg23] : memref<64x128xf32, #map>
            %90 = memref.load %arg11[%arg22, %arg23] : memref<64x128xf32, #map>
            %91 = arith.bitcast %90 : f32 to i32
            %92 = arith.bitcast %89 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.bitcast %88 : f32 to i32
            %95 = arith.andi %94, %arg12 : i32
            %96 = arith.cmpi eq, %95, %arg13 : i32
            %97 = arith.cmpi eq, %93, %arg14 : i32
            %98 = arith.andi %96, %97 : i1
            %99 = arith.cmpi eq, %93, %arg13 : i32
            %100 = arith.cmpi eq, %95, %arg14 : i32
            %101 = arith.andi %99, %100 : i1
            %102 = arith.ori %98, %101 : i1
            %103 = arith.cmpi ugt, %95, %arg13 : i32
            %104 = arith.cmpi ugt, %93, %arg13 : i32
            %105 = arith.ori %103, %104 : i1
            %106 = arith.ori %102, %105 : i1
            %107 = arith.select %106, %arg15, %91 : i32
            %108 = arith.andi %107, %arg12 : i32
            %109 = arith.ori %107, %arg16 : i32
            %110 = arith.cmpi ugt, %108, %arg13 : i32
            %111 = arith.select %110, %109, %107 : i32
            %112 = arith.addi %107, %arg17 : i32
            %113 = arith.shrui %107, %arg18 : i32
            %114 = arith.andi %113, %arg19 : i32
            %115 = arith.addi %112, %114 : i32
            %116 = arith.andi %115, %arg20 : i32
            %117 = arith.cmpi uge, %108, %arg13 : i32
            %118 = arith.select %117, %111, %116 : i32
            %119 = arith.bitcast %118 : i32 to f32
            memref.store %119, %arg21[%arg22, %arg23] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %83, %84, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c40 = arith.constant 40 : index
        %c48 = arith.constant 48 : index
        scf.for %arg22 = %c40 to %c48 step %c1_32 {
          scf.for %arg23 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg22, %arg23] : memref<64x128xf32, #map>
            %89 = memref.load %arg10[%arg22, %arg23] : memref<64x128xf32, #map>
            %90 = memref.load %arg11[%arg22, %arg23] : memref<64x128xf32, #map>
            %91 = arith.bitcast %90 : f32 to i32
            %92 = arith.bitcast %89 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.bitcast %88 : f32 to i32
            %95 = arith.andi %94, %arg12 : i32
            %96 = arith.cmpi eq, %95, %arg13 : i32
            %97 = arith.cmpi eq, %93, %arg14 : i32
            %98 = arith.andi %96, %97 : i1
            %99 = arith.cmpi eq, %93, %arg13 : i32
            %100 = arith.cmpi eq, %95, %arg14 : i32
            %101 = arith.andi %99, %100 : i1
            %102 = arith.ori %98, %101 : i1
            %103 = arith.cmpi ugt, %95, %arg13 : i32
            %104 = arith.cmpi ugt, %93, %arg13 : i32
            %105 = arith.ori %103, %104 : i1
            %106 = arith.ori %102, %105 : i1
            %107 = arith.select %106, %arg15, %91 : i32
            %108 = arith.andi %107, %arg12 : i32
            %109 = arith.ori %107, %arg16 : i32
            %110 = arith.cmpi ugt, %108, %arg13 : i32
            %111 = arith.select %110, %109, %107 : i32
            %112 = arith.addi %107, %arg17 : i32
            %113 = arith.shrui %107, %arg18 : i32
            %114 = arith.andi %113, %arg19 : i32
            %115 = arith.addi %112, %114 : i32
            %116 = arith.andi %115, %arg20 : i32
            %117 = arith.cmpi uge, %108, %arg13 : i32
            %118 = arith.select %117, %111, %116 : i32
            %119 = arith.bitcast %118 : i32 to f32
            memref.store %119, %arg21[%arg22, %arg23] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %83, %84, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c48 = arith.constant 48 : index
        %c56 = arith.constant 56 : index
        scf.for %arg22 = %c48 to %c56 step %c1_32 {
          scf.for %arg23 = %c0_31 to %c128_33 step %c1_32 {
            %88 = memref.load %arg9[%arg22, %arg23] : memref<64x128xf32, #map>
            %89 = memref.load %arg10[%arg22, %arg23] : memref<64x128xf32, #map>
            %90 = memref.load %arg11[%arg22, %arg23] : memref<64x128xf32, #map>
            %91 = arith.bitcast %90 : f32 to i32
            %92 = arith.bitcast %89 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.bitcast %88 : f32 to i32
            %95 = arith.andi %94, %arg12 : i32
            %96 = arith.cmpi eq, %95, %arg13 : i32
            %97 = arith.cmpi eq, %93, %arg14 : i32
            %98 = arith.andi %96, %97 : i1
            %99 = arith.cmpi eq, %93, %arg13 : i32
            %100 = arith.cmpi eq, %95, %arg14 : i32
            %101 = arith.andi %99, %100 : i1
            %102 = arith.ori %98, %101 : i1
            %103 = arith.cmpi ugt, %95, %arg13 : i32
            %104 = arith.cmpi ugt, %93, %arg13 : i32
            %105 = arith.ori %103, %104 : i1
            %106 = arith.ori %102, %105 : i1
            %107 = arith.select %106, %arg15, %91 : i32
            %108 = arith.andi %107, %arg12 : i32
            %109 = arith.ori %107, %arg16 : i32
            %110 = arith.cmpi ugt, %108, %arg13 : i32
            %111 = arith.select %110, %109, %107 : i32
            %112 = arith.addi %107, %arg17 : i32
            %113 = arith.shrui %107, %arg18 : i32
            %114 = arith.andi %113, %arg19 : i32
            %115 = arith.addi %112, %114 : i32
            %116 = arith.andi %115, %arg20 : i32
            %117 = arith.cmpi uge, %108, %arg13 : i32
            %118 = arith.select %117, %111, %116 : i32
            %119 = arith.bitcast %118 : i32 to f32
            memref.store %119, %arg21[%arg22, %arg23] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %83, %84, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<64x128xf32, #map>, memref<64x128xf32, #map>, memref<64x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%64 : memref<64x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map>, %arg10: memref<64x128xf32, #map>, %arg11: memref<64x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<64x128xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c64_32 = arith.constant 64 : index
        %c1_33 = arith.constant 1 : index
        %c128_34 = arith.constant 128 : index
        %c56 = arith.constant 56 : index
        scf.for %arg22 = %c56 to %c64_32 step %c1_33 {
          scf.for %arg23 = %c0_31 to %c128_34 step %c1_33 {
            %88 = memref.load %arg9[%arg22, %arg23] : memref<64x128xf32, #map>
            %89 = memref.load %arg10[%arg22, %arg23] : memref<64x128xf32, #map>
            %90 = memref.load %arg11[%arg22, %arg23] : memref<64x128xf32, #map>
            %91 = arith.bitcast %90 : f32 to i32
            %92 = arith.bitcast %89 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.bitcast %88 : f32 to i32
            %95 = arith.andi %94, %arg12 : i32
            %96 = arith.cmpi eq, %95, %arg13 : i32
            %97 = arith.cmpi eq, %93, %arg14 : i32
            %98 = arith.andi %96, %97 : i1
            %99 = arith.cmpi eq, %93, %arg13 : i32
            %100 = arith.cmpi eq, %95, %arg14 : i32
            %101 = arith.andi %99, %100 : i1
            %102 = arith.ori %98, %101 : i1
            %103 = arith.cmpi ugt, %95, %arg13 : i32
            %104 = arith.cmpi ugt, %93, %arg13 : i32
            %105 = arith.ori %103, %104 : i1
            %106 = arith.ori %102, %105 : i1
            %107 = arith.select %106, %arg15, %91 : i32
            %108 = arith.andi %107, %arg12 : i32
            %109 = arith.ori %107, %arg16 : i32
            %110 = arith.cmpi ugt, %108, %arg13 : i32
            %111 = arith.select %110, %109, %107 : i32
            %112 = arith.addi %107, %arg17 : i32
            %113 = arith.shrui %107, %arg18 : i32
            %114 = arith.andi %113, %arg19 : i32
            %115 = arith.addi %112, %114 : i32
            %116 = arith.andi %115, %arg20 : i32
            %117 = arith.cmpi uge, %108, %arg13 : i32
            %118 = arith.select %117, %111, %116 : i32
            %119 = arith.bitcast %118 : i32 to f32
            memref.store %119, %arg21[%arg22, %arg23] : memref<64x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 20)
      sdnn.core_arrive(3, 32)
      sdnn.core_arrive(3, 44)
      sdnn.core_arrive(3, 46)
      %85 = arith.muli %42, %c65536 : index
      %86 = arith.addi %85, %45 : index
      %reinterpret_cast_27 = memref.reinterpret_cast %arg3 to offset: [%86], sizes: [64, 128], strides: [1024, 1] : memref<*xbf16, 1> to memref<64x128xbf16, strided<[1024, 1], offset: ?>, 1>
      %87 = arith.minsi %69, %c64 : index
      %subview_28 = memref.subview %reinterpret_cast_27[0, 0] [%87, %75] [1, 1] : memref<64x128xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[1024, 1], offset: ?>, 1>
      %cast_29 = memref.cast %subview_28 : memref<?x?xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, 1], offset: ?>, 1>
      %subview_30 = memref.subview %64[0, 0] [%87, %75] [1, 1] : memref<64x128xf32, #map> to memref<?x?xf32, strided<[128, 1]>>
      sdnn.dma out %subview_30, %cast_29 {signal = array<i32: 21>, wait = array<i32: 20>} : memref<?x?xf32, strided<[128, 1]>> memref<?x?xbf16, strided<[?, 1], offset: ?>, 1> -> 
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
