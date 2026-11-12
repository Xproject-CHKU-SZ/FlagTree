#map = affine_map<(d0, d1) -> (d0 * 64 + d1)>
#map1 = affine_map<(d0, d1) -> (d0 * 128 + d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1)>
module {
  llvm.func @llvm.xpu.sync_core(i32) attributes {passthrough = ["convergent", "noduplicate"]}
  llvm.func @llvm.xpu.xfence()
  llvm.func @llvm.xpu.mfence.v2(i32)
  func.func @triton_unk_fused_0(%arg0: memref<*xf32, 1> {tt.divisibility = 16 : i32}, %arg1: memref<*xf32, 1> {tt.divisibility = 16 : i32}, %arg2: memref<*xf32, 1> {tt.divisibility = 16 : i32}, %arg3: memref<*xf32, 1> {tt.divisibility = 16 : i32}, %arg4: memref<*xf32, 1>, %arg5: i32, %arg6: i32, %arg7: i32) {
    %c7_i32 = arith.constant 7 : i32
    %c255_i32 = arith.constant 255 : i32
    %c32_i32 = arith.constant 32 : i32
    %c128_i32 = arith.constant 128 : i32
    %c8_i32 = arith.constant 8 : i32
    %c1_i32 = arith.constant 1 : i32
    %c16_i32 = arith.constant 16 : i32
    %cst = arith.constant 1.000000e+00 : f32
    %c2147483647_i32 = arith.constant 2147483647 : i32
    %c2139095040_i32 = arith.constant 2139095040 : i32
    %c0_i32 = arith.constant 0 : i32
    %c8192 = arith.constant 8192 : index
    %c2048 = arith.constant 2048 : index
    %c128 = arith.constant 128 : index
    %c256 = arith.constant 256 : index
    %c64 = arith.constant 64 : index
    %c32 = arith.constant 32 : index
    %c2143289344_i32 = arith.constant 2143289344 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %reinterpret_cast = memref.reinterpret_cast %arg4 to offset: [0], sizes: [1024], strides: [1] : memref<*xf32, 1> to memref<1024xf32, 1>
    "sdnn.init"(%reinterpret_cast) {signal = [array<i32: 5, 3, 9, 7, 11, 20, 14, 16, 18>], signal_num = array<i64: 5, 5, 5, 5, 5, 5, 5, 5, 5>} : (memref<1024xf32, 1>) -> ()
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
      %34 = arith.muli %29, %c32_i32 : i32
      %35 = arith.index_cast %29 : i32 to index
      %36 = arith.muli %31, %c128_i32 : i32
      %37 = arith.index_cast %31 : i32 to index
      %38 = arith.muli %37, %c128 : index
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
      %reinterpret_cast_0 = memref.reinterpret_cast %arg0 to offset: [%39], sizes: [%48, 64], strides: [64, 1] : memref<*xf32, 1> to memref<?x64xf32, strided<[64, 1], offset: ?>, 1>
      %cast = memref.cast %reinterpret_cast_0 : memref<?x64xf32, strided<[64, 1], offset: ?>, 1> to memref<?x?xf32, strided<[?, ?], offset: ?>, 1>
      %alloc = memref.alloc() {bufferNum = 5 : index, bufferSize = 8192 : index, init_signal = 5 : i64, processed, sram = "l1d"} : memref<32x64xf32, #map, 3>
      %49 = sdnn.get_fifo_buffer %alloc, %20, {bufferNum = 5 : i32, bufferSize = 8192 : i32} : memref<32x64xf32, #map, 3> memref<1xi32, 6> to memref<32x64xf32, #map, 3>
      %alloc_1 = memref.alloc() {bufferNum = 5 : index, bufferSize = 8192 : index, init_signal = 3 : i64, processed, sram = "uni_sram", trans = false} : memref<32x64xf32, #map>
      %50 = sdnn.get_fifo_buffer %alloc_1, %19, {bufferNum = 5 : i32, bufferSize = 8192 : i32} : memref<32x64xf32, #map> memref<1xi32, 6> to memref<32x64xf32, #map>
      %dim = memref.dim %reinterpret_cast_0, %c0 : memref<?x64xf32, strided<[64, 1], offset: ?>, 1>
      %subview = memref.subview %50[0, 0] [%dim, 64] [1, 1] : memref<32x64xf32, #map> to memref<?x64xf32, strided<[64, 1]>>
      %cast_2 = memref.cast %subview : memref<?x64xf32, strided<[64, 1]>> to memref<?x?xf32, strided<[?, ?], offset: ?>>
      sdnn.dma in %cast, %cast_2 {core_id = 1 : i32, signal = array<i32: 2>, wait = array<i32: 3>} : memref<?x?xf32, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[?, ?], offset: ?>> -> 
      sdnn.ds %50, %49 mask_dims[%c32, %c64] {sdnn.layout = "CR_RowMajor", signal = array<i32: 3, 4>, signal_cached = array<i32: 4>, wait = array<i32: 2, 5>, wait_cached = array<i32: 5>} : memref<32x64xf32, #map> memref<32x64xf32, #map, 3> -> 
      %51 = arith.remsi %38, %c256 : index
      %52 = arith.addi %51, %c128 : index
      %53 = arith.minsi %52, %c256 : index
      %54 = arith.subi %53, %51 : index
      %reinterpret_cast_3 = memref.reinterpret_cast %arg1 to offset: [%38], sizes: [64, %54], strides: [256, 1] : memref<*xf32, 1> to memref<64x?xf32, strided<[256, 1], offset: ?>, 1>
      %cast_4 = memref.cast %reinterpret_cast_3 : memref<64x?xf32, strided<[256, 1], offset: ?>, 1> to memref<?x?xf32, strided<[?, ?], offset: ?>, 1>
      %alloc_5 = memref.alloc() {bufferNum = 5 : index, bufferSize = 32768 : index, init_signal = 9 : i64, processed, sram = "l1w"} : memref<64x128xf32, #map1, 4>
      %55 = sdnn.get_fifo_buffer %alloc_5, %18, {bufferNum = 5 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map1, 4> memref<1xi32, 6> to memref<64x128xf32, #map1, 4>
      %alloc_6 = memref.alloc() {bufferNum = 5 : index, bufferSize = 32768 : index, init_signal = 7 : i64, processed, sram = "uni_sram", trans = false} : memref<64x128xf32, #map1>
      %56 = sdnn.get_fifo_buffer %alloc_6, %17, {bufferNum = 5 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map1> memref<1xi32, 6> to memref<64x128xf32, #map1>
      %dim_7 = memref.dim %reinterpret_cast_3, %c1 : memref<64x?xf32, strided<[256, 1], offset: ?>, 1>
      %subview_8 = memref.subview %56[0, 0] [64, %dim_7] [1, 1] : memref<64x128xf32, #map1> to memref<64x?xf32, strided<[128, 1]>>
      %cast_9 = memref.cast %subview_8 : memref<64x?xf32, strided<[128, 1]>> to memref<?x?xf32, strided<[?, ?], offset: ?>>
      sdnn.dma in %cast_4, %cast_9 {core_id = 6 : i32, signal = array<i32: 6>, wait = array<i32: 7>} : memref<?x?xf32, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[?, ?], offset: ?>> -> 
      sdnn.ds %56, %55 mask_dims[%c64, %c128] {sdnn.layout = "CR_RowMajor", signal = array<i32: 7, 8>, signal_cached = array<i32: 8>, wait = array<i32: 6, 9>, wait_cached = array<i32: 9>} : memref<64x128xf32, #map1> memref<64x128xf32, #map1, 4> -> 
      %reinterpret_cast_10 = memref.reinterpret_cast %arg2 to offset: [%38], sizes: [1, 128], strides: [128, 1] : memref<*xf32, 1> to memref<1x128xf32, strided<[128, 1], offset: ?>, 1>
      %57 = arith.index_cast %34 : i32 to index
      %58 = arith.addi %57, %c32 : index
      %59 = arith.minsi %58, %c32 : index
      %60 = arith.maxsi %59, %57 : index
      %61 = arith.subi %60, %57 : index
      %62 = arith.index_cast %36 : i32 to index
      %63 = arith.addi %62, %c128 : index
      %64 = arith.minsi %63, %c256 : index
      %65 = arith.maxsi %64, %62 : index
      %66 = arith.subi %65, %62 : index
      %67 = arith.minsi %66, %c128 : index
      %alloc_11 = memref.alloc() {bufferNum = 5 : index, bufferSize = 512 : index, init_signal = 11 : i64, processed, sram = "uni_sram", trans = false} : memref<1x128xf32, #map1>
      %68 = sdnn.get_fifo_buffer %alloc_11, %16, {bufferNum = 5 : i32, bufferSize = 512 : i32} : memref<1x128xf32, #map1> memref<1xi32, 6> to memref<1x128xf32, #map1>
      %subview_12 = memref.subview %reinterpret_cast_10[0, 0] [1, %67] [1, 1] : memref<1x128xf32, strided<[128, 1], offset: ?>, 1> to memref<1x?xf32, strided<[128, 1], offset: ?>, 1>
      %subview_13 = memref.subview %68[0, 0] [1, %67] [1, 1] : memref<1x128xf32, #map1> to memref<1x?xf32, strided<[128, 1]>>
      sdnn.dma in %subview_12, %subview_13 {core_id = 1 : i32, signal = array<i32: 10>, wait = array<i32: 11>} : memref<1x?xf32, strided<[128, 1], offset: ?>, 1> memref<1x?xf32, strided<[128, 1]>> -> 
      %alloc_14 = memref.alloc() {bufferNum = 5 : index, bufferSize = 16384 : index, init_signal = 20 : i64, processed, sram = "uni_sram"} : memref<32x128xf32, #map1>
      %69 = sdnn.get_fifo_buffer %alloc_14, %15, {bufferNum = 5 : i32, bufferSize = 16384 : i32} : memref<32x128xf32, #map1> memref<1xi32, 6> to memref<32x128xf32, #map1>
      %alloc_15 = memref.alloc() {bufferNum = 5 : index, bufferSize = 16384 : index, init_signal = 14 : i64, processed, sram = "uni_sram"} : memref<32x128xf32, #map1>
      %70 = sdnn.get_fifo_buffer %alloc_15, %14, {bufferNum = 5 : i32, bufferSize = 16384 : i32} : memref<32x128xf32, #map1> memref<1xi32, 6> to memref<32x128xf32, #map1>
      sdnn.mma %49, %55, %70 acc %c0_i32 mask_dims[%c32, %c128, %c64] {indexing_maps = [#map2, #map3, #map4], rcOut = false, sdnn.layout = "CR_RowMajor", signal = array<i32: 5, 9, 12>, wait = array<i32: 4, 8, 14>} : (memref<32x64xf32, #map, 3>, memref<64x128xf32, #map1, 4>, memref<32x128xf32, #map1>, i32, index, index, index) -> ()
      sdnn.ew linear %70 src0 %70 src1 %68 a %cst b %cst {sdnn.layout = "CR_RowMajor", signal = array<i32: 11>, wait = array<i32: 10, 12>} : (memref<32x128xf32, #map1>, memref<32x128xf32, #map1>, memref<1x128xf32, #map1>, f32, f32) -> ()
      %alloc_16 = memref.alloc() {bufferNum = 5 : index, bufferSize = 16384 : index, init_signal = 16 : i64, processed, sram = "uni_sram"} : memref<32x128xf32, #map1>
      %71 = sdnn.get_fifo_buffer %alloc_16, %13, {bufferNum = 5 : i32, bufferSize = 16384 : i32} : memref<32x128xf32, #map1> memref<1xi32, 6> to memref<32x128xf32, #map1>
      sdnn.ew lut %71 src0 %70 lut_func sigmoid {kOverflow = 0.000000e+00 : f32, kUnderflow = 0.000000e+00 : f32, lut_max = 15.984375 : f32, lut_min = 0.000000e+00 : f32, packedid = 165954 : ui32, sdnn.layout = "CR_RowMajor", wait = array<i32: 16>} : (memref<32x128xf32, #map1>, memref<32x128xf32, #map1>) -> ()
      %alloc_17 = memref.alloc() {bufferNum = 5 : index, bufferSize = 16384 : index, init_signal = 18 : i64, processed, sram = "uni_sram"} : memref<32x128xf32, #map1>
      %72 = sdnn.get_fifo_buffer %alloc_17, %12, {bufferNum = 5 : i32, bufferSize = 16384 : i32} : memref<32x128xf32, #map1> memref<1xi32, 6> to memref<32x128xf32, #map1>
      sdnn.ew mul %72 src0 %70 src1 %71 {sdnn.layout = "CR_RowMajor", signal = array<i32: 13, 15, 17>, wait = array<i32: 18>} : (memref<32x128xf32, #map1>, memref<32x128xf32, #map1>, memref<32x128xf32, #map1>) -> ()
      sdnn.core_wait(3, 13)
      sdnn.core_wait(3, 15)
      sdnn.core_wait(3, 17)
      sdnn.core_wait(3, 20)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%70, %71, %72, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<32x128xf32, #map1>, memref<32x128xf32, #map1>, memref<32x128xf32, #map1>, i32, i32, i32, i32) outs(%69 : memref<32x128xf32, #map1>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x128xf32, #map1>, %arg10: memref<32x128xf32, #map1>, %arg11: memref<32x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x128xf32, #map1>):
        %c0_22 = arith.constant 0 : index
        %c1_23 = arith.constant 1 : index
        %c128_24 = arith.constant 128 : index
        %c4 = arith.constant 4 : index
        scf.for %arg17 = %c0_22 to %c4 step %c1_23 {
          scf.for %arg18 = %c0_22 to %c128_24 step %c1_23 {
            %76 = memref.load %arg9[%arg17, %arg18] : memref<32x128xf32, #map1>
            %77 = memref.load %arg10[%arg17, %arg18] : memref<32x128xf32, #map1>
            %78 = memref.load %arg11[%arg17, %arg18] : memref<32x128xf32, #map1>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.bitcast %77 : f32 to i32
            %81 = arith.andi %80, %arg12 : i32
            %82 = arith.bitcast %76 : f32 to i32
            %83 = arith.andi %82, %arg12 : i32
            %84 = arith.cmpi eq, %83, %arg13 : i32
            %85 = arith.cmpi eq, %81, %arg14 : i32
            %86 = arith.andi %84, %85 : i1
            %87 = arith.cmpi eq, %81, %arg13 : i32
            %88 = arith.cmpi eq, %83, %arg14 : i32
            %89 = arith.andi %87, %88 : i1
            %90 = arith.ori %86, %89 : i1
            %91 = arith.cmpi ugt, %83, %arg13 : i32
            %92 = arith.cmpi ugt, %81, %arg13 : i32
            %93 = arith.ori %91, %92 : i1
            %94 = arith.ori %90, %93 : i1
            %95 = arith.select %94, %arg15, %79 : i32
            %96 = arith.bitcast %95 : i32 to f32
            memref.store %96, %arg16[%arg17, %arg18] : memref<32x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%70, %71, %72, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<32x128xf32, #map1>, memref<32x128xf32, #map1>, memref<32x128xf32, #map1>, i32, i32, i32, i32) outs(%69 : memref<32x128xf32, #map1>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x128xf32, #map1>, %arg10: memref<32x128xf32, #map1>, %arg11: memref<32x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x128xf32, #map1>):
        %c0_22 = arith.constant 0 : index
        %c1_23 = arith.constant 1 : index
        %c128_24 = arith.constant 128 : index
        %c4 = arith.constant 4 : index
        %c8 = arith.constant 8 : index
        scf.for %arg17 = %c4 to %c8 step %c1_23 {
          scf.for %arg18 = %c0_22 to %c128_24 step %c1_23 {
            %76 = memref.load %arg9[%arg17, %arg18] : memref<32x128xf32, #map1>
            %77 = memref.load %arg10[%arg17, %arg18] : memref<32x128xf32, #map1>
            %78 = memref.load %arg11[%arg17, %arg18] : memref<32x128xf32, #map1>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.bitcast %77 : f32 to i32
            %81 = arith.andi %80, %arg12 : i32
            %82 = arith.bitcast %76 : f32 to i32
            %83 = arith.andi %82, %arg12 : i32
            %84 = arith.cmpi eq, %83, %arg13 : i32
            %85 = arith.cmpi eq, %81, %arg14 : i32
            %86 = arith.andi %84, %85 : i1
            %87 = arith.cmpi eq, %81, %arg13 : i32
            %88 = arith.cmpi eq, %83, %arg14 : i32
            %89 = arith.andi %87, %88 : i1
            %90 = arith.ori %86, %89 : i1
            %91 = arith.cmpi ugt, %83, %arg13 : i32
            %92 = arith.cmpi ugt, %81, %arg13 : i32
            %93 = arith.ori %91, %92 : i1
            %94 = arith.ori %90, %93 : i1
            %95 = arith.select %94, %arg15, %79 : i32
            %96 = arith.bitcast %95 : i32 to f32
            memref.store %96, %arg16[%arg17, %arg18] : memref<32x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%70, %71, %72, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<32x128xf32, #map1>, memref<32x128xf32, #map1>, memref<32x128xf32, #map1>, i32, i32, i32, i32) outs(%69 : memref<32x128xf32, #map1>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x128xf32, #map1>, %arg10: memref<32x128xf32, #map1>, %arg11: memref<32x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x128xf32, #map1>):
        %c0_22 = arith.constant 0 : index
        %c1_23 = arith.constant 1 : index
        %c128_24 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        %c12 = arith.constant 12 : index
        scf.for %arg17 = %c8 to %c12 step %c1_23 {
          scf.for %arg18 = %c0_22 to %c128_24 step %c1_23 {
            %76 = memref.load %arg9[%arg17, %arg18] : memref<32x128xf32, #map1>
            %77 = memref.load %arg10[%arg17, %arg18] : memref<32x128xf32, #map1>
            %78 = memref.load %arg11[%arg17, %arg18] : memref<32x128xf32, #map1>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.bitcast %77 : f32 to i32
            %81 = arith.andi %80, %arg12 : i32
            %82 = arith.bitcast %76 : f32 to i32
            %83 = arith.andi %82, %arg12 : i32
            %84 = arith.cmpi eq, %83, %arg13 : i32
            %85 = arith.cmpi eq, %81, %arg14 : i32
            %86 = arith.andi %84, %85 : i1
            %87 = arith.cmpi eq, %81, %arg13 : i32
            %88 = arith.cmpi eq, %83, %arg14 : i32
            %89 = arith.andi %87, %88 : i1
            %90 = arith.ori %86, %89 : i1
            %91 = arith.cmpi ugt, %83, %arg13 : i32
            %92 = arith.cmpi ugt, %81, %arg13 : i32
            %93 = arith.ori %91, %92 : i1
            %94 = arith.ori %90, %93 : i1
            %95 = arith.select %94, %arg15, %79 : i32
            %96 = arith.bitcast %95 : i32 to f32
            memref.store %96, %arg16[%arg17, %arg18] : memref<32x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%70, %71, %72, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<32x128xf32, #map1>, memref<32x128xf32, #map1>, memref<32x128xf32, #map1>, i32, i32, i32, i32) outs(%69 : memref<32x128xf32, #map1>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x128xf32, #map1>, %arg10: memref<32x128xf32, #map1>, %arg11: memref<32x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x128xf32, #map1>):
        %c0_22 = arith.constant 0 : index
        %c1_23 = arith.constant 1 : index
        %c128_24 = arith.constant 128 : index
        %c12 = arith.constant 12 : index
        %c16 = arith.constant 16 : index
        scf.for %arg17 = %c12 to %c16 step %c1_23 {
          scf.for %arg18 = %c0_22 to %c128_24 step %c1_23 {
            %76 = memref.load %arg9[%arg17, %arg18] : memref<32x128xf32, #map1>
            %77 = memref.load %arg10[%arg17, %arg18] : memref<32x128xf32, #map1>
            %78 = memref.load %arg11[%arg17, %arg18] : memref<32x128xf32, #map1>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.bitcast %77 : f32 to i32
            %81 = arith.andi %80, %arg12 : i32
            %82 = arith.bitcast %76 : f32 to i32
            %83 = arith.andi %82, %arg12 : i32
            %84 = arith.cmpi eq, %83, %arg13 : i32
            %85 = arith.cmpi eq, %81, %arg14 : i32
            %86 = arith.andi %84, %85 : i1
            %87 = arith.cmpi eq, %81, %arg13 : i32
            %88 = arith.cmpi eq, %83, %arg14 : i32
            %89 = arith.andi %87, %88 : i1
            %90 = arith.ori %86, %89 : i1
            %91 = arith.cmpi ugt, %83, %arg13 : i32
            %92 = arith.cmpi ugt, %81, %arg13 : i32
            %93 = arith.ori %91, %92 : i1
            %94 = arith.ori %90, %93 : i1
            %95 = arith.select %94, %arg15, %79 : i32
            %96 = arith.bitcast %95 : i32 to f32
            memref.store %96, %arg16[%arg17, %arg18] : memref<32x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%70, %71, %72, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<32x128xf32, #map1>, memref<32x128xf32, #map1>, memref<32x128xf32, #map1>, i32, i32, i32, i32) outs(%69 : memref<32x128xf32, #map1>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x128xf32, #map1>, %arg10: memref<32x128xf32, #map1>, %arg11: memref<32x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x128xf32, #map1>):
        %c0_22 = arith.constant 0 : index
        %c1_23 = arith.constant 1 : index
        %c128_24 = arith.constant 128 : index
        %c16 = arith.constant 16 : index
        %c20 = arith.constant 20 : index
        scf.for %arg17 = %c16 to %c20 step %c1_23 {
          scf.for %arg18 = %c0_22 to %c128_24 step %c1_23 {
            %76 = memref.load %arg9[%arg17, %arg18] : memref<32x128xf32, #map1>
            %77 = memref.load %arg10[%arg17, %arg18] : memref<32x128xf32, #map1>
            %78 = memref.load %arg11[%arg17, %arg18] : memref<32x128xf32, #map1>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.bitcast %77 : f32 to i32
            %81 = arith.andi %80, %arg12 : i32
            %82 = arith.bitcast %76 : f32 to i32
            %83 = arith.andi %82, %arg12 : i32
            %84 = arith.cmpi eq, %83, %arg13 : i32
            %85 = arith.cmpi eq, %81, %arg14 : i32
            %86 = arith.andi %84, %85 : i1
            %87 = arith.cmpi eq, %81, %arg13 : i32
            %88 = arith.cmpi eq, %83, %arg14 : i32
            %89 = arith.andi %87, %88 : i1
            %90 = arith.ori %86, %89 : i1
            %91 = arith.cmpi ugt, %83, %arg13 : i32
            %92 = arith.cmpi ugt, %81, %arg13 : i32
            %93 = arith.ori %91, %92 : i1
            %94 = arith.ori %90, %93 : i1
            %95 = arith.select %94, %arg15, %79 : i32
            %96 = arith.bitcast %95 : i32 to f32
            memref.store %96, %arg16[%arg17, %arg18] : memref<32x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%70, %71, %72, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<32x128xf32, #map1>, memref<32x128xf32, #map1>, memref<32x128xf32, #map1>, i32, i32, i32, i32) outs(%69 : memref<32x128xf32, #map1>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x128xf32, #map1>, %arg10: memref<32x128xf32, #map1>, %arg11: memref<32x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x128xf32, #map1>):
        %c0_22 = arith.constant 0 : index
        %c1_23 = arith.constant 1 : index
        %c128_24 = arith.constant 128 : index
        %c20 = arith.constant 20 : index
        %c24 = arith.constant 24 : index
        scf.for %arg17 = %c20 to %c24 step %c1_23 {
          scf.for %arg18 = %c0_22 to %c128_24 step %c1_23 {
            %76 = memref.load %arg9[%arg17, %arg18] : memref<32x128xf32, #map1>
            %77 = memref.load %arg10[%arg17, %arg18] : memref<32x128xf32, #map1>
            %78 = memref.load %arg11[%arg17, %arg18] : memref<32x128xf32, #map1>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.bitcast %77 : f32 to i32
            %81 = arith.andi %80, %arg12 : i32
            %82 = arith.bitcast %76 : f32 to i32
            %83 = arith.andi %82, %arg12 : i32
            %84 = arith.cmpi eq, %83, %arg13 : i32
            %85 = arith.cmpi eq, %81, %arg14 : i32
            %86 = arith.andi %84, %85 : i1
            %87 = arith.cmpi eq, %81, %arg13 : i32
            %88 = arith.cmpi eq, %83, %arg14 : i32
            %89 = arith.andi %87, %88 : i1
            %90 = arith.ori %86, %89 : i1
            %91 = arith.cmpi ugt, %83, %arg13 : i32
            %92 = arith.cmpi ugt, %81, %arg13 : i32
            %93 = arith.ori %91, %92 : i1
            %94 = arith.ori %90, %93 : i1
            %95 = arith.select %94, %arg15, %79 : i32
            %96 = arith.bitcast %95 : i32 to f32
            memref.store %96, %arg16[%arg17, %arg18] : memref<32x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%70, %71, %72, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<32x128xf32, #map1>, memref<32x128xf32, #map1>, memref<32x128xf32, #map1>, i32, i32, i32, i32) outs(%69 : memref<32x128xf32, #map1>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x128xf32, #map1>, %arg10: memref<32x128xf32, #map1>, %arg11: memref<32x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x128xf32, #map1>):
        %c0_22 = arith.constant 0 : index
        %c1_23 = arith.constant 1 : index
        %c128_24 = arith.constant 128 : index
        %c24 = arith.constant 24 : index
        %c28 = arith.constant 28 : index
        scf.for %arg17 = %c24 to %c28 step %c1_23 {
          scf.for %arg18 = %c0_22 to %c128_24 step %c1_23 {
            %76 = memref.load %arg9[%arg17, %arg18] : memref<32x128xf32, #map1>
            %77 = memref.load %arg10[%arg17, %arg18] : memref<32x128xf32, #map1>
            %78 = memref.load %arg11[%arg17, %arg18] : memref<32x128xf32, #map1>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.bitcast %77 : f32 to i32
            %81 = arith.andi %80, %arg12 : i32
            %82 = arith.bitcast %76 : f32 to i32
            %83 = arith.andi %82, %arg12 : i32
            %84 = arith.cmpi eq, %83, %arg13 : i32
            %85 = arith.cmpi eq, %81, %arg14 : i32
            %86 = arith.andi %84, %85 : i1
            %87 = arith.cmpi eq, %81, %arg13 : i32
            %88 = arith.cmpi eq, %83, %arg14 : i32
            %89 = arith.andi %87, %88 : i1
            %90 = arith.ori %86, %89 : i1
            %91 = arith.cmpi ugt, %83, %arg13 : i32
            %92 = arith.cmpi ugt, %81, %arg13 : i32
            %93 = arith.ori %91, %92 : i1
            %94 = arith.ori %90, %93 : i1
            %95 = arith.select %94, %arg15, %79 : i32
            %96 = arith.bitcast %95 : i32 to f32
            memref.store %96, %arg16[%arg17, %arg18] : memref<32x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%70, %71, %72, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<32x128xf32, #map1>, memref<32x128xf32, #map1>, memref<32x128xf32, #map1>, i32, i32, i32, i32) outs(%69 : memref<32x128xf32, #map1>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<32x128xf32, #map1>, %arg10: memref<32x128xf32, #map1>, %arg11: memref<32x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<32x128xf32, #map1>):
        %c0_22 = arith.constant 0 : index
        %c32_23 = arith.constant 32 : index
        %c1_24 = arith.constant 1 : index
        %c128_25 = arith.constant 128 : index
        %c28 = arith.constant 28 : index
        scf.for %arg17 = %c28 to %c32_23 step %c1_24 {
          scf.for %arg18 = %c0_22 to %c128_25 step %c1_24 {
            %76 = memref.load %arg9[%arg17, %arg18] : memref<32x128xf32, #map1>
            %77 = memref.load %arg10[%arg17, %arg18] : memref<32x128xf32, #map1>
            %78 = memref.load %arg11[%arg17, %arg18] : memref<32x128xf32, #map1>
            %79 = arith.bitcast %78 : f32 to i32
            %80 = arith.bitcast %77 : f32 to i32
            %81 = arith.andi %80, %arg12 : i32
            %82 = arith.bitcast %76 : f32 to i32
            %83 = arith.andi %82, %arg12 : i32
            %84 = arith.cmpi eq, %83, %arg13 : i32
            %85 = arith.cmpi eq, %81, %arg14 : i32
            %86 = arith.andi %84, %85 : i1
            %87 = arith.cmpi eq, %81, %arg13 : i32
            %88 = arith.cmpi eq, %83, %arg14 : i32
            %89 = arith.andi %87, %88 : i1
            %90 = arith.ori %86, %89 : i1
            %91 = arith.cmpi ugt, %83, %arg13 : i32
            %92 = arith.cmpi ugt, %81, %arg13 : i32
            %93 = arith.ori %91, %92 : i1
            %94 = arith.ori %90, %93 : i1
            %95 = arith.select %94, %arg15, %79 : i32
            %96 = arith.bitcast %95 : i32 to f32
            memref.store %96, %arg16[%arg17, %arg18] : memref<32x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 14)
      sdnn.core_arrive(3, 16)
      sdnn.core_arrive(3, 18)
      sdnn.core_arrive(3, 19)
      %73 = arith.muli %35, %c8192 : index
      %74 = arith.addi %73, %38 : index
      %reinterpret_cast_18 = memref.reinterpret_cast %arg3 to offset: [%74], sizes: [32, 128], strides: [256, 1] : memref<*xf32, 1> to memref<32x128xf32, strided<[256, 1], offset: ?>, 1>
      %75 = arith.minsi %61, %c32 : index
      %subview_19 = memref.subview %69[0, 0] [%75, %67] [1, 1] : memref<32x128xf32, #map1> to memref<?x?xf32, strided<[128, 1]>>
      %subview_20 = memref.subview %reinterpret_cast_18[0, 0] [%75, %67] [1, 1] : memref<32x128xf32, strided<[256, 1], offset: ?>, 1> to memref<?x?xf32, strided<[256, 1], offset: ?>, 1>
      %cast_21 = memref.cast %subview_20 : memref<?x?xf32, strided<[256, 1], offset: ?>, 1> to memref<?x?xf32, strided<[?, 1], offset: ?>, 1>
      sdnn.dma out %subview_19, %cast_21 {signal = array<i32: 20>, wait = array<i32: 19>} : memref<?x?xf32, strided<[128, 1]>> memref<?x?xf32, strided<[?, 1], offset: ?>, 1> -> 
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
