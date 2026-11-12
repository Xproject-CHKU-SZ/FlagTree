#map = affine_map<(d0, d1) -> (d0 * 32 + d1)>
#map1 = affine_map<(d0, d1) -> (d0 * 64 + d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1)>
module {
  llvm.func @llvm.xpu.sync_core(i32) attributes {passthrough = ["convergent", "noduplicate"]}
  llvm.func @llvm.xpu.xfence()
  llvm.func @llvm.xpu.mfence.v2(i32)
  func.func @triton_unk_fused_0(%arg0: memref<*xf16, 1> {tt.divisibility = 16 : i32}, %arg1: memref<*xf16, 1> {tt.divisibility = 16 : i32}, %arg2: memref<*xf16, 1> {tt.divisibility = 16 : i32}, %arg3: memref<*xf16, 1> {tt.divisibility = 16 : i32}, %arg4: memref<*xf32, 1>, %arg5: i32, %arg6: i32, %arg7: i32) {
    %c7_i32 = arith.constant 7 : i32
    %c255_i32 = arith.constant 255 : i32
    %cst = arith.constant 4.471500e-02 : f32
    %c16_i32 = arith.constant 16 : i32
    %c32_i32 = arith.constant 32 : i32
    %c8_i32 = arith.constant 8 : i32
    %cst_0 = arith.constant 5.000000e-01 : f32
    %cst_1 = arith.constant 0.797884583 : f32
    %cst_2 = arith.constant 1.000000e+00 : f32
    %c1_i32 = arith.constant 1 : i32
    %c2147483647_i32 = arith.constant 2147483647 : i32
    %c-2147483648_i32 = arith.constant -2147483648 : i32
    %c1098907648_i32 = arith.constant 1098907648 : i32
    %c2139095040_i32 = arith.constant 2139095040 : i32
    %c4194304_i32 = arith.constant 4194304 : i32
    %c8388607_i32 = arith.constant 8388607 : i32
    %c0_i32 = arith.constant 0 : i32
    %c2048 = arith.constant 2048 : index
    %c1024 = arith.constant 1024 : index
    %c32 = arith.constant 32 : index
    %c128 = arith.constant 128 : index
    %c64 = arith.constant 64 : index
    %c16 = arith.constant 16 : index
    %c2143289344_i32 = arith.constant 2143289344 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %reinterpret_cast = memref.reinterpret_cast %arg4 to offset: [0], sizes: [1024], strides: [1] : memref<*xf32, 1> to memref<1024xf32, 1>
    "sdnn.init"(%reinterpret_cast) {signal = [array<i32: 11, 5, 3, 9, 7, 13, 33, 19, 22, 24, 26, 38, 35, 41, 43>], signal_num = array<i64: 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2>} : (memref<1024xf32, 1>) -> ()
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
    %12 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    %13 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    %14 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    %15 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    %16 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    %17 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    %18 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    %19 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    %20 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    %21 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    %22 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    %23 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    %24 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    %25 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    %26 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    scf.for %arg8 = %10 to %11 step %c1 {
      %27 = arith.index_cast %arg8 : index to i32
      %28 = arith.divsi %27, %arg7 : i32
      %29 = arith.divsi %28, %arg6 : i32
      %alloc = memref.alloc() {bufferNum = 2 : index, bufferSize = 2048 : index, init_signal = 11 : i64, processed, sram = "uni_sram"} : memref<16x32xf32, #map>
      %30 = sdnn.get_fifo_buffer %alloc, %26, {bufferNum = 2 : i32, bufferSize = 2048 : i32} : memref<16x32xf32, #map> memref<1xi32, 6> to memref<16x32xf32, #map>
      %31 = arith.divsi %29, %c32_i32 : i32
      %32 = arith.muli %31, %c8_i32 : i32
      %33 = arith.subi %c1_i32, %32 : i32
      %34 = arith.minsi %33, %c8_i32 : i32
      %35 = arith.remsi %29, %34 : i32
      %36 = arith.addi %32, %35 : i32
      %37 = arith.remsi %29, %c32_i32 : i32
      %38 = arith.divsi %37, %34 : i32
      %39 = arith.cmpi sge, %36, %c0_i32 : i32
      llvm.intr.assume %39 : i1
      %40 = arith.cmpi sge, %38, %c0_i32 : i32
      llvm.intr.assume %40 : i1
      %41 = arith.muli %36, %c16_i32 : i32
      %42 = arith.index_cast %36 : i32 to index
      %43 = arith.muli %38, %c32_i32 : i32
      %44 = arith.index_cast %38 : i32 to index
      %45 = arith.muli %44, %c32 : index
      %46 = arith.muli %42, %c1024 : index
      %47 = arith.cmpi sge, %46, %c1024 : index
      %48 = arith.divsi %46, %c1024 : index
      %49 = arith.muli %48, %c1024 : index
      %50 = arith.subi %46, %49 : index
      %51 = arith.select %47, %50, %46 : index
      %52 = arith.divsi %51, %c64 : index
      %53 = arith.addi %52, %c16 : index
      %54 = arith.minsi %53, %c16 : index
      %55 = arith.subi %54, %52 : index
      %reinterpret_cast_3 = memref.reinterpret_cast %arg0 to offset: [%46], sizes: [%55, 64], strides: [64, 1] : memref<*xf16, 1> to memref<?x64xf16, strided<[64, 1], offset: ?>, 1>
      %cast = memref.cast %reinterpret_cast_3 : memref<?x64xf16, strided<[64, 1], offset: ?>, 1> to memref<?x?xf16, strided<[?, ?], offset: ?>, 1>
      %alloc_4 = memref.alloc() {bufferNum = 2 : index, bufferSize = 2048 : index, init_signal = 5 : i64, processed, sram = "l1d"} : memref<16x64xf16, #map1, 3>
      %56 = sdnn.get_fifo_buffer %alloc_4, %25, {bufferNum = 2 : i32, bufferSize = 2048 : i32} : memref<16x64xf16, #map1, 3> memref<1xi32, 6> to memref<16x64xf16, #map1, 3>
      %alloc_5 = memref.alloc() {bufferNum = 2 : index, bufferSize = 2048 : index, init_signal = 3 : i64, processed, sram = "uni_sram", trans = false} : memref<16x64xf16, #map1>
      %57 = sdnn.get_fifo_buffer %alloc_5, %24, {bufferNum = 2 : i32, bufferSize = 2048 : i32} : memref<16x64xf16, #map1> memref<1xi32, 6> to memref<16x64xf16, #map1>
      %dim = memref.dim %reinterpret_cast_3, %c0 : memref<?x64xf16, strided<[64, 1], offset: ?>, 1>
      %subview = memref.subview %57[0, 0] [%dim, 64] [1, 1] : memref<16x64xf16, #map1> to memref<?x64xf16, strided<[64, 1]>>
      %cast_6 = memref.cast %subview : memref<?x64xf16, strided<[64, 1]>> to memref<?x?xf16, strided<[?, ?], offset: ?>>
      sdnn.dma in %cast, %cast_6 {core_id = 1 : i32, signal = array<i32: 2>, wait = array<i32: 3>} : memref<?x?xf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf16, strided<[?, ?], offset: ?>> -> 
      sdnn.ds %57, %56 mask_dims[%c16, %c64] {sdnn.layout = "CR_RowMajor", signal = array<i32: 3, 4>, signal_cached = array<i32: 4>, wait = array<i32: 2, 5>, wait_cached = array<i32: 5>} : memref<16x64xf16, #map1> memref<16x64xf16, #map1, 3> -> 
      %58 = arith.remsi %45, %c128 : index
      %59 = arith.addi %58, %c32 : index
      %60 = arith.minsi %59, %c128 : index
      %61 = arith.subi %60, %58 : index
      %reinterpret_cast_7 = memref.reinterpret_cast %arg1 to offset: [%45], sizes: [64, %61], strides: [128, 1] : memref<*xf16, 1> to memref<64x?xf16, strided<[128, 1], offset: ?>, 1>
      %cast_8 = memref.cast %reinterpret_cast_7 : memref<64x?xf16, strided<[128, 1], offset: ?>, 1> to memref<?x?xf16, strided<[?, ?], offset: ?>, 1>
      %alloc_9 = memref.alloc() {bufferNum = 2 : index, bufferSize = 4096 : index, init_signal = 9 : i64, processed, sram = "l1w"} : memref<64x32xf16, #map, 4>
      %62 = sdnn.get_fifo_buffer %alloc_9, %23, {bufferNum = 2 : i32, bufferSize = 4096 : i32} : memref<64x32xf16, #map, 4> memref<1xi32, 6> to memref<64x32xf16, #map, 4>
      %alloc_10 = memref.alloc() {bufferNum = 2 : index, bufferSize = 8192 : index, init_signal = 7 : i64, processed, sram = "uni_sram", trans = false} : memref<64x32xf16, #map1>
      %63 = sdnn.get_fifo_buffer %alloc_10, %22, {bufferNum = 2 : i32, bufferSize = 8192 : i32} : memref<64x32xf16, #map1> memref<1xi32, 6> to memref<64x32xf16, #map1>
      %dim_11 = memref.dim %reinterpret_cast_7, %c1 : memref<64x?xf16, strided<[128, 1], offset: ?>, 1>
      %subview_12 = memref.subview %63[0, 0] [64, %dim_11] [1, 1] : memref<64x32xf16, #map1> to memref<64x?xf16, strided<[64, 1]>>
      %cast_13 = memref.cast %subview_12 : memref<64x?xf16, strided<[64, 1]>> to memref<?x?xf16, strided<[?, ?], offset: ?>>
      sdnn.dma in %cast_8, %cast_13 {core_id = 6 : i32, signal = array<i32: 6>, wait = array<i32: 7>} : memref<?x?xf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf16, strided<[?, ?], offset: ?>> -> 
      sdnn.ds %63, %62 mask_dims[%c64, %c32] {sdnn.layout = "CR_RowMajor", signal = array<i32: 7, 8>, signal_cached = array<i32: 8>, wait = array<i32: 6, 9>, wait_cached = array<i32: 9>} : memref<64x32xf16, #map1> memref<64x32xf16, #map, 4> -> 
      sdnn.mma %56, %62, %30 acc %c0_i32 mask_dims[%c16, %c32, %c64] {indexing_maps = [#map2, #map3, #map4], rcOut = false, sdnn.layout = "CR_RowMajor", signal = array<i32: 5, 9, 10>, wait = array<i32: 4, 8, 11>} : (memref<16x64xf16, #map1, 3>, memref<64x32xf16, #map, 4>, memref<16x32xf32, #map>, i32, index, index, index) -> ()
      %reinterpret_cast_14 = memref.reinterpret_cast %arg2 to offset: [%45], sizes: [1, 32], strides: [32, 1] : memref<*xf16, 1> to memref<1x32xf16, strided<[32, 1], offset: ?>, 1>
      %64 = arith.index_cast %41 : i32 to index
      %65 = arith.addi %64, %c16 : index
      %66 = arith.minsi %65, %c16 : index
      %67 = arith.maxsi %66, %64 : index
      %68 = arith.subi %67, %64 : index
      %69 = arith.index_cast %43 : i32 to index
      %70 = arith.addi %69, %c32 : index
      %71 = arith.minsi %70, %c128 : index
      %72 = arith.maxsi %71, %69 : index
      %73 = arith.subi %72, %69 : index
      %74 = arith.minsi %73, %c32 : index
      %alloc_15 = memref.alloc() {bufferNum = 2 : index, bufferSize = 128 : index, init_signal = 13 : i64, processed, sram = "uni_sram", trans = false} : memref<1x32xf32, #map>
      %75 = sdnn.get_fifo_buffer %alloc_15, %21, {bufferNum = 2 : i32, bufferSize = 128 : i32} : memref<1x32xf32, #map> memref<1xi32, 6> to memref<1x32xf32, #map>
      %subview_16 = memref.subview %reinterpret_cast_14[0, 0] [1, %74] [1, 1] : memref<1x32xf16, strided<[32, 1], offset: ?>, 1> to memref<1x?xf16, strided<[32, 1], offset: ?>, 1>
      %alloc_17 = memref.alloc() {bufferNum = 2 : index, bufferSize = 2048 : index, init_signal = 33 : i64, processed, sram = "uni_sram"} : memref<16x32xf32, #map>
      %76 = sdnn.get_fifo_buffer %alloc_17, %20, {bufferNum = 2 : i32, bufferSize = 2048 : i32} : memref<16x32xf32, #map> memref<1xi32, 6> to memref<16x32xf32, #map>
      %subview_18 = memref.subview %75[0, 0] [1, %74] [1, 1] : memref<1x32xf32, #map> to memref<1x?xf32, strided<[32, 1]>>
      sdnn.dma in %subview_16, %subview_18 {core_id = 1 : i32, signal = array<i32: 12>, wait = array<i32: 13>} : memref<1x?xf16, strided<[32, 1], offset: ?>, 1> memref<1x?xf32, strided<[32, 1]>> -> 
      %alloc_19 = memref.alloc() {bufferNum = 2 : index, bufferSize = 2048 : index, init_signal = 19 : i64, processed, sram = "uni_sram"} : memref<16x32xf32, #map>
      %77 = sdnn.get_fifo_buffer %alloc_19, %19, {bufferNum = 2 : i32, bufferSize = 2048 : i32} : memref<16x32xf32, #map> memref<1xi32, 6> to memref<16x32xf32, #map>
      sdnn.ew linear %77 src0 %30 src1 %75 a %cst_2 b %cst_2 {core_id = 3 : i32, sdnn.layout = "CR_RowMajor", signal = array<i32: 11, 13, 16, 17, 20, 14>, wait = array<i32: 10, 12, 19>} : (memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<1x32xf32, #map>, f32, f32) -> ()
      %alloc_20 = memref.alloc() {bufferNum = 2 : index, bufferSize = 2048 : index, init_signal = 22 : i64, processed, sram = "uni_sram"} : memref<16x32xf32, #map>
      %78 = sdnn.get_fifo_buffer %alloc_20, %18, {bufferNum = 2 : i32, bufferSize = 2048 : i32} : memref<16x32xf32, #map> memref<1xi32, 6> to memref<16x32xf32, #map>
      sdnn.ew mul %78 src0 %77 c %cst_0 {sdnn.layout = "CR_RowMajor", signal = array<i32: 21>, wait = array<i32: 14, 22>} : (memref<16x32xf32, #map>, memref<16x32xf32, #map>, f32) -> ()
      %alloc_21 = memref.alloc() {bufferNum = 2 : index, bufferSize = 2048 : index, init_signal = 24 : i64, processed, sram = "uni_sram"} : memref<16x32xf32, #map>
      %79 = sdnn.get_fifo_buffer %alloc_21, %17, {bufferNum = 2 : i32, bufferSize = 2048 : i32} : memref<16x32xf32, #map> memref<1xi32, 6> to memref<16x32xf32, #map>
      sdnn.ew mul %79 src0 %77 src1 %77 {sdnn.layout = "CR_RowMajor", wait = array<i32: 16, 24>} : (memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>) -> ()
      %alloc_22 = memref.alloc() {bufferNum = 2 : index, bufferSize = 2048 : index, init_signal = 26 : i64, processed, sram = "uni_sram"} : memref<16x32xf32, #map>
      %80 = sdnn.get_fifo_buffer %alloc_22, %16, {bufferNum = 2 : i32, bufferSize = 2048 : i32} : memref<16x32xf32, #map> memref<1xi32, 6> to memref<16x32xf32, #map>
      sdnn.ew mul %80 src0 %79 src1 %77 {sdnn.layout = "CR_RowMajor", signal = array<i32: 15, 23, 25>, wait = array<i32: 17, 26>} : (memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>) -> ()
      %alloc_23 = memref.alloc() {bufferNum = 2 : index, bufferSize = 2048 : index, init_signal = 38 : i64, processed, sram = "uni_sram"} : memref<16x32xi32, #map>
      %81 = sdnn.get_fifo_buffer %alloc_23, %15, {bufferNum = 2 : i32, bufferSize = 2048 : i32} : memref<16x32xi32, #map> memref<1xi32, 6> to memref<16x32xi32, #map>
      sdnn.core_wait(3, 15)
      sdnn.core_wait(3, 23)
      sdnn.core_wait(3, 25)
      sdnn.core_wait(3, 33)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%79, %77, %80, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: memref<16x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c2 = arith.constant 2 : index
        scf.for %arg17 = %c0_31 to %c2 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<16x32xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<16x32xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<16x32xf32, #map>
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
            memref.store %108, %arg16[%arg17, %arg18] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %77, %80, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: memref<16x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c2 = arith.constant 2 : index
        %c4 = arith.constant 4 : index
        scf.for %arg17 = %c2 to %c4 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<16x32xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<16x32xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<16x32xf32, #map>
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
            memref.store %108, %arg16[%arg17, %arg18] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %77, %80, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: memref<16x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c4 = arith.constant 4 : index
        %c6 = arith.constant 6 : index
        scf.for %arg17 = %c4 to %c6 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<16x32xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<16x32xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<16x32xf32, #map>
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
            memref.store %108, %arg16[%arg17, %arg18] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %77, %80, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: memref<16x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c6 = arith.constant 6 : index
        %c8 = arith.constant 8 : index
        scf.for %arg17 = %c6 to %c8 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<16x32xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<16x32xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<16x32xf32, #map>
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
            memref.store %108, %arg16[%arg17, %arg18] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %77, %80, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: memref<16x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c8 = arith.constant 8 : index
        %c10 = arith.constant 10 : index
        scf.for %arg17 = %c8 to %c10 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<16x32xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<16x32xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<16x32xf32, #map>
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
            memref.store %108, %arg16[%arg17, %arg18] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %77, %80, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: memref<16x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c10 = arith.constant 10 : index
        %c12 = arith.constant 12 : index
        scf.for %arg17 = %c10 to %c12 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<16x32xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<16x32xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<16x32xf32, #map>
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
            memref.store %108, %arg16[%arg17, %arg18] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %77, %80, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: memref<16x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c12 = arith.constant 12 : index
        %c14 = arith.constant 14 : index
        scf.for %arg17 = %c12 to %c14 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<16x32xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<16x32xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<16x32xf32, #map>
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
            memref.store %108, %arg16[%arg17, %arg18] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %77, %80, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: memref<16x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c16_32 = arith.constant 16 : index
        %c1_33 = arith.constant 1 : index
        %c32_34 = arith.constant 32 : index
        %c14 = arith.constant 14 : index
        scf.for %arg17 = %c14 to %c16_32 step %c1_33 {
          scf.for %arg18 = %c0_31 to %c32_34 step %c1_33 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<16x32xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<16x32xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<16x32xf32, #map>
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
            memref.store %108, %arg16[%arg17, %arg18] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 18)
      sdnn.core_arrive(3, 24)
      sdnn.core_arrive(3, 26)
      sdnn.core_arrive(3, 27)
      %alloc_24 = memref.alloc() {bufferNum = 2 : index, bufferSize = 2048 : index, init_signal = 35 : i64, processed, sram = "uni_sram"} : memref<16x32xf32, #map>
      %82 = sdnn.get_fifo_buffer %alloc_24, %14, {bufferNum = 2 : i32, bufferSize = 2048 : i32} : memref<16x32xf32, #map> memref<1xi32, 6> to memref<16x32xf32, #map>
      sdnn.ew linear %82 src0 %77 src1 %76 a %cst_2 b %cst {sdnn.layout = "CR_RowMajor", signal = array<i32: 28>, wait = array<i32: 18, 27, 35>} : (memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>, f32, f32) -> ()
      sdnn.ew mul %82 src0 %82 c %cst_1 {sdnn.layout = "CR_RowMajor", signal = array<i32: 34>} : (memref<16x32xf32, #map>, memref<16x32xf32, #map>, f32) -> ()
      sdnn.core_wait(3, 34)
      sdnn.core_wait(3, 38)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%82 : memref<16x32xf32, #map>) outs(%81 : memref<16x32xi32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xi32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c2 = arith.constant 2 : index
        scf.for %arg11 = %c0_31 to %c2 step %c1_32 {
          scf.for %arg12 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg11, %arg12] : memref<16x32xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            memref.store %89, %arg10[%arg11, %arg12] : memref<16x32xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%82 : memref<16x32xf32, #map>) outs(%81 : memref<16x32xi32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xi32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c2 = arith.constant 2 : index
        %c4 = arith.constant 4 : index
        scf.for %arg11 = %c2 to %c4 step %c1_32 {
          scf.for %arg12 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg11, %arg12] : memref<16x32xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            memref.store %89, %arg10[%arg11, %arg12] : memref<16x32xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%82 : memref<16x32xf32, #map>) outs(%81 : memref<16x32xi32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xi32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c4 = arith.constant 4 : index
        %c6 = arith.constant 6 : index
        scf.for %arg11 = %c4 to %c6 step %c1_32 {
          scf.for %arg12 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg11, %arg12] : memref<16x32xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            memref.store %89, %arg10[%arg11, %arg12] : memref<16x32xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%82 : memref<16x32xf32, #map>) outs(%81 : memref<16x32xi32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xi32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c6 = arith.constant 6 : index
        %c8 = arith.constant 8 : index
        scf.for %arg11 = %c6 to %c8 step %c1_32 {
          scf.for %arg12 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg11, %arg12] : memref<16x32xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            memref.store %89, %arg10[%arg11, %arg12] : memref<16x32xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%82 : memref<16x32xf32, #map>) outs(%81 : memref<16x32xi32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xi32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c8 = arith.constant 8 : index
        %c10 = arith.constant 10 : index
        scf.for %arg11 = %c8 to %c10 step %c1_32 {
          scf.for %arg12 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg11, %arg12] : memref<16x32xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            memref.store %89, %arg10[%arg11, %arg12] : memref<16x32xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%82 : memref<16x32xf32, #map>) outs(%81 : memref<16x32xi32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xi32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c10 = arith.constant 10 : index
        %c12 = arith.constant 12 : index
        scf.for %arg11 = %c10 to %c12 step %c1_32 {
          scf.for %arg12 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg11, %arg12] : memref<16x32xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            memref.store %89, %arg10[%arg11, %arg12] : memref<16x32xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%82 : memref<16x32xf32, #map>) outs(%81 : memref<16x32xi32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xi32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c12 = arith.constant 12 : index
        %c14 = arith.constant 14 : index
        scf.for %arg11 = %c12 to %c14 step %c1_32 {
          scf.for %arg12 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg11, %arg12] : memref<16x32xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            memref.store %89, %arg10[%arg11, %arg12] : memref<16x32xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%82 : memref<16x32xf32, #map>) outs(%81 : memref<16x32xi32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xi32, #map>):
        %c0_31 = arith.constant 0 : index
        %c16_32 = arith.constant 16 : index
        %c1_33 = arith.constant 1 : index
        %c32_34 = arith.constant 32 : index
        %c14 = arith.constant 14 : index
        scf.for %arg11 = %c14 to %c16_32 step %c1_33 {
          scf.for %arg12 = %c0_31 to %c32_34 step %c1_33 {
            %88 = memref.load %arg9[%arg11, %arg12] : memref<16x32xf32, #map>
            %89 = arith.bitcast %88 : f32 to i32
            memref.store %89, %arg10[%arg11, %arg12] : memref<16x32xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 35)
      sdnn.core_arrive(3, 36)
      sdnn.core_wait(3, 28)
      sdnn.core_wait(3, 36)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%81, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<16x32xi32, #map>, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c2 = arith.constant 2 : index
        scf.for %arg14 = %c0_31 to %c2 step %c1_32 {
          scf.for %arg15 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg14, %arg15] : memref<16x32xi32, #map>
            %89 = arith.andi %88, %arg10 : i32
            %90 = arith.ori %89, %arg11 : i32
            %91 = arith.andi %88, %arg12 : i32
            %92 = arith.cmpi ugt, %91, %arg11 : i32
            %93 = arith.select %92, %90, %88 : i32
            %94 = arith.bitcast %93 : i32 to f32
            memref.store %94, %arg13[%arg14, %arg15] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%81, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<16x32xi32, #map>, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c2 = arith.constant 2 : index
        %c4 = arith.constant 4 : index
        scf.for %arg14 = %c2 to %c4 step %c1_32 {
          scf.for %arg15 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg14, %arg15] : memref<16x32xi32, #map>
            %89 = arith.andi %88, %arg10 : i32
            %90 = arith.ori %89, %arg11 : i32
            %91 = arith.andi %88, %arg12 : i32
            %92 = arith.cmpi ugt, %91, %arg11 : i32
            %93 = arith.select %92, %90, %88 : i32
            %94 = arith.bitcast %93 : i32 to f32
            memref.store %94, %arg13[%arg14, %arg15] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%81, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<16x32xi32, #map>, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c4 = arith.constant 4 : index
        %c6 = arith.constant 6 : index
        scf.for %arg14 = %c4 to %c6 step %c1_32 {
          scf.for %arg15 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg14, %arg15] : memref<16x32xi32, #map>
            %89 = arith.andi %88, %arg10 : i32
            %90 = arith.ori %89, %arg11 : i32
            %91 = arith.andi %88, %arg12 : i32
            %92 = arith.cmpi ugt, %91, %arg11 : i32
            %93 = arith.select %92, %90, %88 : i32
            %94 = arith.bitcast %93 : i32 to f32
            memref.store %94, %arg13[%arg14, %arg15] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%81, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<16x32xi32, #map>, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c6 = arith.constant 6 : index
        %c8 = arith.constant 8 : index
        scf.for %arg14 = %c6 to %c8 step %c1_32 {
          scf.for %arg15 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg14, %arg15] : memref<16x32xi32, #map>
            %89 = arith.andi %88, %arg10 : i32
            %90 = arith.ori %89, %arg11 : i32
            %91 = arith.andi %88, %arg12 : i32
            %92 = arith.cmpi ugt, %91, %arg11 : i32
            %93 = arith.select %92, %90, %88 : i32
            %94 = arith.bitcast %93 : i32 to f32
            memref.store %94, %arg13[%arg14, %arg15] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%81, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<16x32xi32, #map>, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c8 = arith.constant 8 : index
        %c10 = arith.constant 10 : index
        scf.for %arg14 = %c8 to %c10 step %c1_32 {
          scf.for %arg15 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg14, %arg15] : memref<16x32xi32, #map>
            %89 = arith.andi %88, %arg10 : i32
            %90 = arith.ori %89, %arg11 : i32
            %91 = arith.andi %88, %arg12 : i32
            %92 = arith.cmpi ugt, %91, %arg11 : i32
            %93 = arith.select %92, %90, %88 : i32
            %94 = arith.bitcast %93 : i32 to f32
            memref.store %94, %arg13[%arg14, %arg15] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%81, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<16x32xi32, #map>, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c10 = arith.constant 10 : index
        %c12 = arith.constant 12 : index
        scf.for %arg14 = %c10 to %c12 step %c1_32 {
          scf.for %arg15 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg14, %arg15] : memref<16x32xi32, #map>
            %89 = arith.andi %88, %arg10 : i32
            %90 = arith.ori %89, %arg11 : i32
            %91 = arith.andi %88, %arg12 : i32
            %92 = arith.cmpi ugt, %91, %arg11 : i32
            %93 = arith.select %92, %90, %88 : i32
            %94 = arith.bitcast %93 : i32 to f32
            memref.store %94, %arg13[%arg14, %arg15] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%81, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<16x32xi32, #map>, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c12 = arith.constant 12 : index
        %c14 = arith.constant 14 : index
        scf.for %arg14 = %c12 to %c14 step %c1_32 {
          scf.for %arg15 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg14, %arg15] : memref<16x32xi32, #map>
            %89 = arith.andi %88, %arg10 : i32
            %90 = arith.ori %89, %arg11 : i32
            %91 = arith.andi %88, %arg12 : i32
            %92 = arith.cmpi ugt, %91, %arg11 : i32
            %93 = arith.select %92, %90, %88 : i32
            %94 = arith.bitcast %93 : i32 to f32
            memref.store %94, %arg13[%arg14, %arg15] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%81, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<16x32xi32, #map>, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c16_32 = arith.constant 16 : index
        %c1_33 = arith.constant 1 : index
        %c32_34 = arith.constant 32 : index
        %c14 = arith.constant 14 : index
        scf.for %arg14 = %c14 to %c16_32 step %c1_33 {
          scf.for %arg15 = %c0_31 to %c32_34 step %c1_33 {
            %88 = memref.load %arg9[%arg14, %arg15] : memref<16x32xi32, #map>
            %89 = arith.andi %88, %arg10 : i32
            %90 = arith.ori %89, %arg11 : i32
            %91 = arith.andi %88, %arg12 : i32
            %92 = arith.cmpi ugt, %91, %arg11 : i32
            %93 = arith.select %92, %90, %88 : i32
            %94 = arith.bitcast %93 : i32 to f32
            memref.store %94, %arg13[%arg14, %arg15] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 29)
      sdnn.core_arrive(3, 37)
      sdnn.ew lut %76 src0 %76 lut_func tanh {kOverflow = 0.000000e+00 : f32, kUnderflow = 0.000000e+00 : f32, lut_max = 15.984375 : f32, lut_min = 0.000000e+00 : f32, packedid = 231491 : ui32, sdnn.layout = "CR_RowMajor", signal = array<i32: 30>, wait = array<i32: 29>} : (memref<16x32xf32, #map>, memref<16x32xf32, #map>) -> ()
      %alloc_25 = memref.alloc() {bufferNum = 2 : index, bufferSize = 2048 : index, init_signal = 41 : i64, processed, sram = "uni_sram"} : memref<16x32xf32, #map>
      %83 = sdnn.get_fifo_buffer %alloc_25, %13, {bufferNum = 2 : i32, bufferSize = 2048 : i32} : memref<16x32xf32, #map> memref<1xi32, 6> to memref<16x32xf32, #map>
      sdnn.core_wait(3, 30)
      sdnn.core_wait(3, 37)
      sdnn.core_wait(3, 41)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%81, %76, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<16x32xi32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%83 : memref<16x32xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xi32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c2 = arith.constant 2 : index
        scf.for %arg16 = %c0_31 to %c2 step %c1_32 {
          scf.for %arg17 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg16, %arg17] : memref<16x32xi32, #map>
            %89 = memref.load %arg10[%arg16, %arg17] : memref<16x32xf32, #map>
            %90 = arith.ori %88, %arg11 : i32
            %91 = arith.bitcast %89 : f32 to i32
            %92 = arith.andi %88, %arg12 : i32
            %93 = arith.cmpi eq, %92, %arg12 : i32
            %94 = arith.andi %88, %arg13 : i32
            %95 = arith.cmpi ne, %94, %arg14 : i32
            %96 = arith.andi %93, %95 : i1
            %97 = arith.select %96, %90, %91 : i32
            %98 = arith.bitcast %97 : i32 to f32
            memref.store %98, %arg15[%arg16, %arg17] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%81, %76, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<16x32xi32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%83 : memref<16x32xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xi32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c2 = arith.constant 2 : index
        %c4 = arith.constant 4 : index
        scf.for %arg16 = %c2 to %c4 step %c1_32 {
          scf.for %arg17 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg16, %arg17] : memref<16x32xi32, #map>
            %89 = memref.load %arg10[%arg16, %arg17] : memref<16x32xf32, #map>
            %90 = arith.ori %88, %arg11 : i32
            %91 = arith.bitcast %89 : f32 to i32
            %92 = arith.andi %88, %arg12 : i32
            %93 = arith.cmpi eq, %92, %arg12 : i32
            %94 = arith.andi %88, %arg13 : i32
            %95 = arith.cmpi ne, %94, %arg14 : i32
            %96 = arith.andi %93, %95 : i1
            %97 = arith.select %96, %90, %91 : i32
            %98 = arith.bitcast %97 : i32 to f32
            memref.store %98, %arg15[%arg16, %arg17] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%81, %76, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<16x32xi32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%83 : memref<16x32xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xi32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c4 = arith.constant 4 : index
        %c6 = arith.constant 6 : index
        scf.for %arg16 = %c4 to %c6 step %c1_32 {
          scf.for %arg17 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg16, %arg17] : memref<16x32xi32, #map>
            %89 = memref.load %arg10[%arg16, %arg17] : memref<16x32xf32, #map>
            %90 = arith.ori %88, %arg11 : i32
            %91 = arith.bitcast %89 : f32 to i32
            %92 = arith.andi %88, %arg12 : i32
            %93 = arith.cmpi eq, %92, %arg12 : i32
            %94 = arith.andi %88, %arg13 : i32
            %95 = arith.cmpi ne, %94, %arg14 : i32
            %96 = arith.andi %93, %95 : i1
            %97 = arith.select %96, %90, %91 : i32
            %98 = arith.bitcast %97 : i32 to f32
            memref.store %98, %arg15[%arg16, %arg17] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%81, %76, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<16x32xi32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%83 : memref<16x32xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xi32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c6 = arith.constant 6 : index
        %c8 = arith.constant 8 : index
        scf.for %arg16 = %c6 to %c8 step %c1_32 {
          scf.for %arg17 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg16, %arg17] : memref<16x32xi32, #map>
            %89 = memref.load %arg10[%arg16, %arg17] : memref<16x32xf32, #map>
            %90 = arith.ori %88, %arg11 : i32
            %91 = arith.bitcast %89 : f32 to i32
            %92 = arith.andi %88, %arg12 : i32
            %93 = arith.cmpi eq, %92, %arg12 : i32
            %94 = arith.andi %88, %arg13 : i32
            %95 = arith.cmpi ne, %94, %arg14 : i32
            %96 = arith.andi %93, %95 : i1
            %97 = arith.select %96, %90, %91 : i32
            %98 = arith.bitcast %97 : i32 to f32
            memref.store %98, %arg15[%arg16, %arg17] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%81, %76, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<16x32xi32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%83 : memref<16x32xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xi32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c8 = arith.constant 8 : index
        %c10 = arith.constant 10 : index
        scf.for %arg16 = %c8 to %c10 step %c1_32 {
          scf.for %arg17 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg16, %arg17] : memref<16x32xi32, #map>
            %89 = memref.load %arg10[%arg16, %arg17] : memref<16x32xf32, #map>
            %90 = arith.ori %88, %arg11 : i32
            %91 = arith.bitcast %89 : f32 to i32
            %92 = arith.andi %88, %arg12 : i32
            %93 = arith.cmpi eq, %92, %arg12 : i32
            %94 = arith.andi %88, %arg13 : i32
            %95 = arith.cmpi ne, %94, %arg14 : i32
            %96 = arith.andi %93, %95 : i1
            %97 = arith.select %96, %90, %91 : i32
            %98 = arith.bitcast %97 : i32 to f32
            memref.store %98, %arg15[%arg16, %arg17] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%81, %76, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<16x32xi32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%83 : memref<16x32xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xi32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c10 = arith.constant 10 : index
        %c12 = arith.constant 12 : index
        scf.for %arg16 = %c10 to %c12 step %c1_32 {
          scf.for %arg17 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg16, %arg17] : memref<16x32xi32, #map>
            %89 = memref.load %arg10[%arg16, %arg17] : memref<16x32xf32, #map>
            %90 = arith.ori %88, %arg11 : i32
            %91 = arith.bitcast %89 : f32 to i32
            %92 = arith.andi %88, %arg12 : i32
            %93 = arith.cmpi eq, %92, %arg12 : i32
            %94 = arith.andi %88, %arg13 : i32
            %95 = arith.cmpi ne, %94, %arg14 : i32
            %96 = arith.andi %93, %95 : i1
            %97 = arith.select %96, %90, %91 : i32
            %98 = arith.bitcast %97 : i32 to f32
            memref.store %98, %arg15[%arg16, %arg17] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%81, %76, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<16x32xi32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%83 : memref<16x32xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xi32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c12 = arith.constant 12 : index
        %c14 = arith.constant 14 : index
        scf.for %arg16 = %c12 to %c14 step %c1_32 {
          scf.for %arg17 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg16, %arg17] : memref<16x32xi32, #map>
            %89 = memref.load %arg10[%arg16, %arg17] : memref<16x32xf32, #map>
            %90 = arith.ori %88, %arg11 : i32
            %91 = arith.bitcast %89 : f32 to i32
            %92 = arith.andi %88, %arg12 : i32
            %93 = arith.cmpi eq, %92, %arg12 : i32
            %94 = arith.andi %88, %arg13 : i32
            %95 = arith.cmpi ne, %94, %arg14 : i32
            %96 = arith.andi %93, %95 : i1
            %97 = arith.select %96, %90, %91 : i32
            %98 = arith.bitcast %97 : i32 to f32
            memref.store %98, %arg15[%arg16, %arg17] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%81, %76, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<16x32xi32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%83 : memref<16x32xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xi32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c16_32 = arith.constant 16 : index
        %c1_33 = arith.constant 1 : index
        %c32_34 = arith.constant 32 : index
        %c14 = arith.constant 14 : index
        scf.for %arg16 = %c14 to %c16_32 step %c1_33 {
          scf.for %arg17 = %c0_31 to %c32_34 step %c1_33 {
            %88 = memref.load %arg9[%arg16, %arg17] : memref<16x32xi32, #map>
            %89 = memref.load %arg10[%arg16, %arg17] : memref<16x32xf32, #map>
            %90 = arith.ori %88, %arg11 : i32
            %91 = arith.bitcast %89 : f32 to i32
            %92 = arith.andi %88, %arg12 : i32
            %93 = arith.cmpi eq, %92, %arg12 : i32
            %94 = arith.andi %88, %arg13 : i32
            %95 = arith.cmpi ne, %94, %arg14 : i32
            %96 = arith.andi %93, %95 : i1
            %97 = arith.select %96, %90, %91 : i32
            %98 = arith.bitcast %97 : i32 to f32
            memref.store %98, %arg15[%arg16, %arg17] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 31)
      sdnn.core_arrive(3, 38)
      sdnn.core_arrive(3, 39)
      sdnn.ew linear %83 src0 %83 a %cst_2 c %cst_2 {sdnn.layout = "CR_RowMajor", wait = array<i32: 39>} : (memref<16x32xf32, #map>, memref<16x32xf32, #map>, f32, f32) -> ()
      %alloc_26 = memref.alloc() {bufferNum = 2 : index, bufferSize = 2048 : index, init_signal = 43 : i64, processed, sram = "uni_sram"} : memref<16x32xf32, #map>
      %84 = sdnn.get_fifo_buffer %alloc_26, %12, {bufferNum = 2 : i32, bufferSize = 2048 : i32} : memref<16x32xf32, #map> memref<1xi32, 6> to memref<16x32xf32, #map>
      sdnn.ew mul %84 src0 %77 src1 %83 c %cst_0 {sdnn.layout = "CR_RowMajor", signal = array<i32: 19, 40, 42>, wait = array<i32: 20, 43>} : (memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>, f32) -> ()
      sdnn.core_wait(3, 21)
      sdnn.core_wait(3, 31)
      sdnn.core_wait(3, 40)
      sdnn.core_wait(3, 42)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%78, %83, %84, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: memref<16x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c2 = arith.constant 2 : index
        scf.for %arg17 = %c0_31 to %c2 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<16x32xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<16x32xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<16x32xf32, #map>
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
            memref.store %108, %arg16[%arg17, %arg18] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%78, %83, %84, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: memref<16x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c2 = arith.constant 2 : index
        %c4 = arith.constant 4 : index
        scf.for %arg17 = %c2 to %c4 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<16x32xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<16x32xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<16x32xf32, #map>
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
            memref.store %108, %arg16[%arg17, %arg18] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%78, %83, %84, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: memref<16x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c4 = arith.constant 4 : index
        %c6 = arith.constant 6 : index
        scf.for %arg17 = %c4 to %c6 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<16x32xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<16x32xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<16x32xf32, #map>
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
            memref.store %108, %arg16[%arg17, %arg18] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%78, %83, %84, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: memref<16x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c6 = arith.constant 6 : index
        %c8 = arith.constant 8 : index
        scf.for %arg17 = %c6 to %c8 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<16x32xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<16x32xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<16x32xf32, #map>
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
            memref.store %108, %arg16[%arg17, %arg18] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%78, %83, %84, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: memref<16x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c8 = arith.constant 8 : index
        %c10 = arith.constant 10 : index
        scf.for %arg17 = %c8 to %c10 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<16x32xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<16x32xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<16x32xf32, #map>
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
            memref.store %108, %arg16[%arg17, %arg18] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%78, %83, %84, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: memref<16x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c10 = arith.constant 10 : index
        %c12 = arith.constant 12 : index
        scf.for %arg17 = %c10 to %c12 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<16x32xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<16x32xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<16x32xf32, #map>
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
            memref.store %108, %arg16[%arg17, %arg18] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%78, %83, %84, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: memref<16x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c1_32 = arith.constant 1 : index
        %c32_33 = arith.constant 32 : index
        %c12 = arith.constant 12 : index
        %c14 = arith.constant 14 : index
        scf.for %arg17 = %c12 to %c14 step %c1_32 {
          scf.for %arg18 = %c0_31 to %c32_33 step %c1_32 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<16x32xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<16x32xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<16x32xf32, #map>
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
            memref.store %108, %arg16[%arg17, %arg18] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%78, %83, %84, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x32xf32, #map>, memref<16x32xf32, #map>, memref<16x32xf32, #map>, i32, i32, i32, i32) outs(%76 : memref<16x32xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x32xf32, #map>, %arg10: memref<16x32xf32, #map>, %arg11: memref<16x32xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x32xf32, #map>):
        %c0_31 = arith.constant 0 : index
        %c16_32 = arith.constant 16 : index
        %c1_33 = arith.constant 1 : index
        %c32_34 = arith.constant 32 : index
        %c14 = arith.constant 14 : index
        scf.for %arg17 = %c14 to %c16_32 step %c1_33 {
          scf.for %arg18 = %c0_31 to %c32_34 step %c1_33 {
            %88 = memref.load %arg9[%arg17, %arg18] : memref<16x32xf32, #map>
            %89 = memref.load %arg10[%arg17, %arg18] : memref<16x32xf32, #map>
            %90 = memref.load %arg11[%arg17, %arg18] : memref<16x32xf32, #map>
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
            memref.store %108, %arg16[%arg17, %arg18] : memref<16x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 22)
      sdnn.core_arrive(3, 32)
      sdnn.core_arrive(3, 41)
      sdnn.core_arrive(3, 43)
      %85 = arith.muli %42, %c2048 : index
      %86 = arith.addi %85, %45 : index
      %reinterpret_cast_27 = memref.reinterpret_cast %arg3 to offset: [%86], sizes: [16, 32], strides: [128, 1] : memref<*xf16, 1> to memref<16x32xf16, strided<[128, 1], offset: ?>, 1>
      %87 = arith.minsi %68, %c16 : index
      %subview_28 = memref.subview %reinterpret_cast_27[0, 0] [%87, %74] [1, 1] : memref<16x32xf16, strided<[128, 1], offset: ?>, 1> to memref<?x?xf16, strided<[128, 1], offset: ?>, 1>
      %cast_29 = memref.cast %subview_28 : memref<?x?xf16, strided<[128, 1], offset: ?>, 1> to memref<?x?xf16, strided<[?, 1], offset: ?>, 1>
      %subview_30 = memref.subview %76[0, 0] [%87, %74] [1, 1] : memref<16x32xf32, #map> to memref<?x?xf32, strided<[32, 1]>>
      sdnn.dma out %subview_30, %cast_29 {signal = array<i32: 33>, wait = array<i32: 32>} : memref<?x?xf32, strided<[32, 1]>> memref<?x?xf16, strided<[?, 1], offset: ?>, 1> -> 
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
