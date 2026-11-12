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
    %cst = arith.constant 4.471500e-02 : f32
    %c64_i32 = arith.constant 64 : i32
    %c128_i32 = arith.constant 128 : i32
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
    %c65536 = arith.constant 65536 : index
    %c4096 = arith.constant 4096 : index
    %c128 = arith.constant 128 : index
    %c1024 = arith.constant 1024 : index
    %c64 = arith.constant 64 : index
    %c2143289344_i32 = arith.constant 2143289344 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %reinterpret_cast = memref.reinterpret_cast %arg4 to offset: [0], sizes: [1024], strides: [1] : memref<*xf32, 1> to memref<1024xf32, 1>
    "sdnn.init"(%reinterpret_cast) {signal = [array<i32: 5, 3, 9, 7, 11, 29, 15, 18, 20, 22, 34, 31, 37, 39>], signal_num = array<i64: 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3>} : (memref<1024xf32, 1>) -> ()
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
    %12 = sdnn.counter {bufferNum = 3 : i32} : memref<1xi32, 6>
    %13 = sdnn.counter {bufferNum = 3 : i32} : memref<1xi32, 6>
    %14 = sdnn.counter {bufferNum = 3 : i32} : memref<1xi32, 6>
    %15 = sdnn.counter {bufferNum = 3 : i32} : memref<1xi32, 6>
    %16 = sdnn.counter {bufferNum = 3 : i32} : memref<1xi32, 6>
    %17 = sdnn.counter {bufferNum = 3 : i32} : memref<1xi32, 6>
    %18 = sdnn.counter {bufferNum = 3 : i32} : memref<1xi32, 6>
    %19 = sdnn.counter {bufferNum = 3 : i32} : memref<1xi32, 6>
    %20 = sdnn.counter {bufferNum = 3 : i32} : memref<1xi32, 6>
    %21 = sdnn.counter {bufferNum = 3 : i32} : memref<1xi32, 6>
    %22 = sdnn.counter {bufferNum = 3 : i32} : memref<1xi32, 6>
    %23 = sdnn.counter {bufferNum = 3 : i32} : memref<1xi32, 6>
    %24 = sdnn.counter {bufferNum = 3 : i32} : memref<1xi32, 6>
    %25 = sdnn.counter {bufferNum = 3 : i32} : memref<1xi32, 6>
    scf.for %arg8 = %10 to %11 step %c1 {
      %26 = arith.index_cast %arg8 : index to i32
      %27 = arith.divsi %26, %arg7 : i32
      %28 = arith.divsi %27, %arg6 : i32
      %29 = arith.divsi %28, %c64_i32 : i32
      %30 = arith.muli %29, %c8_i32 : i32
      %31 = arith.subi %c1_i32, %30 : i32
      %32 = arith.minsi %31, %c8_i32 : i32
      %33 = arith.remsi %28, %32 : i32
      %34 = arith.addi %30, %33 : i32
      %35 = arith.remsi %28, %c64_i32 : i32
      %36 = arith.divsi %35, %32 : i32
      %37 = arith.cmpi sge, %34, %c0_i32 : i32
      llvm.intr.assume %37 : i1
      %38 = arith.cmpi sge, %36, %c0_i32 : i32
      llvm.intr.assume %38 : i1
      %39 = arith.muli %34, %c64_i32 : i32
      %40 = arith.index_cast %34 : i32 to index
      %41 = arith.muli %36, %c128_i32 : i32
      %42 = arith.index_cast %36 : i32 to index
      %43 = arith.muli %42, %c128 : index
      %44 = arith.muli %40, %c4096 : index
      %45 = arith.cmpi sge, %44, %c4096 : index
      %46 = arith.divsi %44, %c4096 : index
      %47 = arith.muli %46, %c4096 : index
      %48 = arith.subi %44, %47 : index
      %49 = arith.select %45, %48, %44 : index
      %50 = arith.divsi %49, %c64 : index
      %51 = arith.addi %50, %c64 : index
      %52 = arith.minsi %51, %c64 : index
      %53 = arith.subi %52, %50 : index
      %reinterpret_cast_3 = memref.reinterpret_cast %arg0 to offset: [%44], sizes: [%53, 64], strides: [64, 1] : memref<*xf32, 1> to memref<?x64xf32, strided<[64, 1], offset: ?>, 1>
      %cast = memref.cast %reinterpret_cast_3 : memref<?x64xf32, strided<[64, 1], offset: ?>, 1> to memref<?x?xf32, strided<[?, ?], offset: ?>, 1>
      %alloc = memref.alloc() {bufferNum = 3 : index, bufferSize = 16384 : index, init_signal = 5 : i64, processed, sram = "l1d"} : memref<64x64xf32, #map, 3>
      %54 = sdnn.get_fifo_buffer %alloc, %25, {bufferNum = 3 : i32, bufferSize = 16384 : i32} : memref<64x64xf32, #map, 3> memref<1xi32, 6> to memref<64x64xf32, #map, 3>
      %alloc_4 = memref.alloc() {bufferNum = 3 : index, bufferSize = 16384 : index, init_signal = 3 : i64, processed, sram = "uni_sram", trans = false} : memref<64x64xf32, #map>
      %55 = sdnn.get_fifo_buffer %alloc_4, %24, {bufferNum = 3 : i32, bufferSize = 16384 : i32} : memref<64x64xf32, #map> memref<1xi32, 6> to memref<64x64xf32, #map>
      %dim = memref.dim %reinterpret_cast_3, %c0 : memref<?x64xf32, strided<[64, 1], offset: ?>, 1>
      %subview = memref.subview %55[0, 0] [%dim, 64] [1, 1] : memref<64x64xf32, #map> to memref<?x64xf32, strided<[64, 1]>>
      %cast_5 = memref.cast %subview : memref<?x64xf32, strided<[64, 1]>> to memref<?x?xf32, strided<[?, ?], offset: ?>>
      sdnn.dma in %cast, %cast_5 {core_id = 1 : i32, signal = array<i32: 2>, wait = array<i32: 3>} : memref<?x?xf32, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[?, ?], offset: ?>> -> 
      sdnn.ds %55, %54 mask_dims[%c64, %c64] {sdnn.layout = "CR_RowMajor", signal = array<i32: 3, 4>, signal_cached = array<i32: 4>, wait = array<i32: 2, 5>, wait_cached = array<i32: 5>} : memref<64x64xf32, #map> memref<64x64xf32, #map, 3> -> 
      %56 = arith.remsi %43, %c1024 : index
      %57 = arith.addi %56, %c128 : index
      %58 = arith.minsi %57, %c1024 : index
      %59 = arith.subi %58, %56 : index
      %reinterpret_cast_6 = memref.reinterpret_cast %arg1 to offset: [%43], sizes: [64, %59], strides: [1024, 1] : memref<*xf32, 1> to memref<64x?xf32, strided<[1024, 1], offset: ?>, 1>
      %cast_7 = memref.cast %reinterpret_cast_6 : memref<64x?xf32, strided<[1024, 1], offset: ?>, 1> to memref<?x?xf32, strided<[?, ?], offset: ?>, 1>
      %alloc_8 = memref.alloc() {bufferNum = 3 : index, bufferSize = 32768 : index, init_signal = 9 : i64, processed, sram = "l1w"} : memref<64x128xf32, #map1, 4>
      %60 = sdnn.get_fifo_buffer %alloc_8, %23, {bufferNum = 3 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map1, 4> memref<1xi32, 6> to memref<64x128xf32, #map1, 4>
      %alloc_9 = memref.alloc() {bufferNum = 3 : index, bufferSize = 32768 : index, init_signal = 7 : i64, processed, sram = "uni_sram", trans = false} : memref<64x128xf32, #map1>
      %61 = sdnn.get_fifo_buffer %alloc_9, %22, {bufferNum = 3 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map1> memref<1xi32, 6> to memref<64x128xf32, #map1>
      %dim_10 = memref.dim %reinterpret_cast_6, %c1 : memref<64x?xf32, strided<[1024, 1], offset: ?>, 1>
      %subview_11 = memref.subview %61[0, 0] [64, %dim_10] [1, 1] : memref<64x128xf32, #map1> to memref<64x?xf32, strided<[128, 1]>>
      %cast_12 = memref.cast %subview_11 : memref<64x?xf32, strided<[128, 1]>> to memref<?x?xf32, strided<[?, ?], offset: ?>>
      sdnn.dma in %cast_7, %cast_12 {core_id = 6 : i32, signal = array<i32: 6>, wait = array<i32: 7>} : memref<?x?xf32, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[?, ?], offset: ?>> -> 
      sdnn.ds %61, %60 mask_dims[%c64, %c128] {sdnn.layout = "CR_RowMajor", signal = array<i32: 7, 8>, signal_cached = array<i32: 8>, wait = array<i32: 6, 9>, wait_cached = array<i32: 9>} : memref<64x128xf32, #map1> memref<64x128xf32, #map1, 4> -> 
      %reinterpret_cast_13 = memref.reinterpret_cast %arg2 to offset: [%43], sizes: [1, 128], strides: [128, 1] : memref<*xf32, 1> to memref<1x128xf32, strided<[128, 1], offset: ?>, 1>
      %62 = arith.index_cast %39 : i32 to index
      %63 = arith.addi %62, %c64 : index
      %64 = arith.minsi %63, %c64 : index
      %65 = arith.maxsi %64, %62 : index
      %66 = arith.subi %65, %62 : index
      %67 = arith.index_cast %41 : i32 to index
      %68 = arith.addi %67, %c128 : index
      %69 = arith.minsi %68, %c1024 : index
      %70 = arith.maxsi %69, %67 : index
      %71 = arith.subi %70, %67 : index
      %72 = arith.minsi %71, %c128 : index
      %alloc_14 = memref.alloc() {bufferNum = 3 : index, bufferSize = 512 : index, init_signal = 11 : i64, processed, sram = "uni_sram", trans = false} : memref<1x128xf32, #map1>
      %73 = sdnn.get_fifo_buffer %alloc_14, %21, {bufferNum = 3 : i32, bufferSize = 512 : i32} : memref<1x128xf32, #map1> memref<1xi32, 6> to memref<1x128xf32, #map1>
      %subview_15 = memref.subview %reinterpret_cast_13[0, 0] [1, %72] [1, 1] : memref<1x128xf32, strided<[128, 1], offset: ?>, 1> to memref<1x?xf32, strided<[128, 1], offset: ?>, 1>
      %subview_16 = memref.subview %73[0, 0] [1, %72] [1, 1] : memref<1x128xf32, #map1> to memref<1x?xf32, strided<[128, 1]>>
      sdnn.dma in %subview_15, %subview_16 {core_id = 1 : i32, signal = array<i32: 10>, wait = array<i32: 11>} : memref<1x?xf32, strided<[128, 1], offset: ?>, 1> memref<1x?xf32, strided<[128, 1]>> -> 
      %alloc_17 = memref.alloc() {bufferNum = 3 : index, bufferSize = 32768 : index, init_signal = 29 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map1>
      %74 = sdnn.get_fifo_buffer %alloc_17, %20, {bufferNum = 3 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map1> memref<1xi32, 6> to memref<64x128xf32, #map1>
      %alloc_18 = memref.alloc() {bufferNum = 3 : index, bufferSize = 32768 : index, init_signal = 15 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map1>
      %75 = sdnn.get_fifo_buffer %alloc_18, %19, {bufferNum = 3 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map1> memref<1xi32, 6> to memref<64x128xf32, #map1>
      sdnn.mma %54, %60, %75 acc %c0_i32 mask_dims[%c64, %c128, %c64] {indexing_maps = [#map2, #map3, #map4], rcOut = false, sdnn.layout = "CR_RowMajor", signal = array<i32: 5, 9, 12>, wait = array<i32: 4, 8, 15>} : (memref<64x64xf32, #map, 3>, memref<64x128xf32, #map1, 4>, memref<64x128xf32, #map1>, i32, index, index, index) -> ()
      sdnn.ew linear %75 src0 %75 src1 %73 a %cst_2 b %cst_2 {sdnn.layout = "CR_RowMajor", signal = array<i32: 11, 16>, wait = array<i32: 10, 12>} : (memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<1x128xf32, #map1>, f32, f32) -> ()
      %alloc_19 = memref.alloc() {bufferNum = 3 : index, bufferSize = 32768 : index, init_signal = 18 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map1>
      %76 = sdnn.get_fifo_buffer %alloc_19, %18, {bufferNum = 3 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map1> memref<1xi32, 6> to memref<64x128xf32, #map1>
      sdnn.ew mul %76 src0 %75 c %cst_0 {sdnn.layout = "CR_RowMajor", signal = array<i32: 17>, wait = array<i32: 18>} : (memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, f32) -> ()
      %alloc_20 = memref.alloc() {bufferNum = 3 : index, bufferSize = 32768 : index, init_signal = 20 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map1>
      %77 = sdnn.get_fifo_buffer %alloc_20, %17, {bufferNum = 3 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map1> memref<1xi32, 6> to memref<64x128xf32, #map1>
      sdnn.ew mul %77 src0 %75 src1 %75 {sdnn.layout = "CR_RowMajor", wait = array<i32: 20>} : (memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>) -> ()
      %alloc_21 = memref.alloc() {bufferNum = 3 : index, bufferSize = 32768 : index, init_signal = 22 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map1>
      %78 = sdnn.get_fifo_buffer %alloc_21, %16, {bufferNum = 3 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map1> memref<1xi32, 6> to memref<64x128xf32, #map1>
      sdnn.ew mul %78 src0 %77 src1 %75 {sdnn.layout = "CR_RowMajor", signal = array<i32: 13, 19, 21>, wait = array<i32: 22>} : (memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>) -> ()
      %alloc_22 = memref.alloc() {bufferNum = 3 : index, bufferSize = 32768 : index, init_signal = 34 : i64, processed, sram = "uni_sram"} : memref<64x128xi32, #map1>
      %79 = sdnn.get_fifo_buffer %alloc_22, %15, {bufferNum = 3 : i32, bufferSize = 32768 : i32} : memref<64x128xi32, #map1> memref<1xi32, 6> to memref<64x128xi32, #map1>
      sdnn.core_wait(3, 13)
      sdnn.core_wait(3, 19)
      sdnn.core_wait(3, 21)
      sdnn.core_wait(3, 29)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%77, %75, %78, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: memref<64x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        scf.for %arg17 = %c0_30 to %c8 step %c1_31 {
          scf.for %arg18 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map1>
            %87 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map1>
            %88 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map1>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.bitcast %87 : f32 to i32
            %91 = arith.andi %90, %arg12 : i32
            %92 = arith.bitcast %86 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.cmpi eq, %93, %arg13 : i32
            %95 = arith.cmpi eq, %91, %arg14 : i32
            %96 = arith.andi %94, %95 : i1
            %97 = arith.cmpi eq, %91, %arg13 : i32
            %98 = arith.cmpi eq, %93, %arg14 : i32
            %99 = arith.andi %97, %98 : i1
            %100 = arith.ori %96, %99 : i1
            %101 = arith.cmpi ugt, %93, %arg13 : i32
            %102 = arith.cmpi ugt, %91, %arg13 : i32
            %103 = arith.ori %101, %102 : i1
            %104 = arith.ori %100, %103 : i1
            %105 = arith.select %104, %arg15, %89 : i32
            %106 = arith.bitcast %105 : i32 to f32
            memref.store %106, %arg16[%arg17, %arg18] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %75, %78, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: memref<64x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        %c16 = arith.constant 16 : index
        scf.for %arg17 = %c8 to %c16 step %c1_31 {
          scf.for %arg18 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map1>
            %87 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map1>
            %88 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map1>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.bitcast %87 : f32 to i32
            %91 = arith.andi %90, %arg12 : i32
            %92 = arith.bitcast %86 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.cmpi eq, %93, %arg13 : i32
            %95 = arith.cmpi eq, %91, %arg14 : i32
            %96 = arith.andi %94, %95 : i1
            %97 = arith.cmpi eq, %91, %arg13 : i32
            %98 = arith.cmpi eq, %93, %arg14 : i32
            %99 = arith.andi %97, %98 : i1
            %100 = arith.ori %96, %99 : i1
            %101 = arith.cmpi ugt, %93, %arg13 : i32
            %102 = arith.cmpi ugt, %91, %arg13 : i32
            %103 = arith.ori %101, %102 : i1
            %104 = arith.ori %100, %103 : i1
            %105 = arith.select %104, %arg15, %89 : i32
            %106 = arith.bitcast %105 : i32 to f32
            memref.store %106, %arg16[%arg17, %arg18] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %75, %78, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: memref<64x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c16 = arith.constant 16 : index
        %c24 = arith.constant 24 : index
        scf.for %arg17 = %c16 to %c24 step %c1_31 {
          scf.for %arg18 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map1>
            %87 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map1>
            %88 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map1>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.bitcast %87 : f32 to i32
            %91 = arith.andi %90, %arg12 : i32
            %92 = arith.bitcast %86 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.cmpi eq, %93, %arg13 : i32
            %95 = arith.cmpi eq, %91, %arg14 : i32
            %96 = arith.andi %94, %95 : i1
            %97 = arith.cmpi eq, %91, %arg13 : i32
            %98 = arith.cmpi eq, %93, %arg14 : i32
            %99 = arith.andi %97, %98 : i1
            %100 = arith.ori %96, %99 : i1
            %101 = arith.cmpi ugt, %93, %arg13 : i32
            %102 = arith.cmpi ugt, %91, %arg13 : i32
            %103 = arith.ori %101, %102 : i1
            %104 = arith.ori %100, %103 : i1
            %105 = arith.select %104, %arg15, %89 : i32
            %106 = arith.bitcast %105 : i32 to f32
            memref.store %106, %arg16[%arg17, %arg18] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %75, %78, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: memref<64x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c24 = arith.constant 24 : index
        %c32 = arith.constant 32 : index
        scf.for %arg17 = %c24 to %c32 step %c1_31 {
          scf.for %arg18 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map1>
            %87 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map1>
            %88 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map1>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.bitcast %87 : f32 to i32
            %91 = arith.andi %90, %arg12 : i32
            %92 = arith.bitcast %86 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.cmpi eq, %93, %arg13 : i32
            %95 = arith.cmpi eq, %91, %arg14 : i32
            %96 = arith.andi %94, %95 : i1
            %97 = arith.cmpi eq, %91, %arg13 : i32
            %98 = arith.cmpi eq, %93, %arg14 : i32
            %99 = arith.andi %97, %98 : i1
            %100 = arith.ori %96, %99 : i1
            %101 = arith.cmpi ugt, %93, %arg13 : i32
            %102 = arith.cmpi ugt, %91, %arg13 : i32
            %103 = arith.ori %101, %102 : i1
            %104 = arith.ori %100, %103 : i1
            %105 = arith.select %104, %arg15, %89 : i32
            %106 = arith.bitcast %105 : i32 to f32
            memref.store %106, %arg16[%arg17, %arg18] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %75, %78, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: memref<64x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c32 = arith.constant 32 : index
        %c40 = arith.constant 40 : index
        scf.for %arg17 = %c32 to %c40 step %c1_31 {
          scf.for %arg18 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map1>
            %87 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map1>
            %88 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map1>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.bitcast %87 : f32 to i32
            %91 = arith.andi %90, %arg12 : i32
            %92 = arith.bitcast %86 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.cmpi eq, %93, %arg13 : i32
            %95 = arith.cmpi eq, %91, %arg14 : i32
            %96 = arith.andi %94, %95 : i1
            %97 = arith.cmpi eq, %91, %arg13 : i32
            %98 = arith.cmpi eq, %93, %arg14 : i32
            %99 = arith.andi %97, %98 : i1
            %100 = arith.ori %96, %99 : i1
            %101 = arith.cmpi ugt, %93, %arg13 : i32
            %102 = arith.cmpi ugt, %91, %arg13 : i32
            %103 = arith.ori %101, %102 : i1
            %104 = arith.ori %100, %103 : i1
            %105 = arith.select %104, %arg15, %89 : i32
            %106 = arith.bitcast %105 : i32 to f32
            memref.store %106, %arg16[%arg17, %arg18] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %75, %78, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: memref<64x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c40 = arith.constant 40 : index
        %c48 = arith.constant 48 : index
        scf.for %arg17 = %c40 to %c48 step %c1_31 {
          scf.for %arg18 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map1>
            %87 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map1>
            %88 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map1>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.bitcast %87 : f32 to i32
            %91 = arith.andi %90, %arg12 : i32
            %92 = arith.bitcast %86 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.cmpi eq, %93, %arg13 : i32
            %95 = arith.cmpi eq, %91, %arg14 : i32
            %96 = arith.andi %94, %95 : i1
            %97 = arith.cmpi eq, %91, %arg13 : i32
            %98 = arith.cmpi eq, %93, %arg14 : i32
            %99 = arith.andi %97, %98 : i1
            %100 = arith.ori %96, %99 : i1
            %101 = arith.cmpi ugt, %93, %arg13 : i32
            %102 = arith.cmpi ugt, %91, %arg13 : i32
            %103 = arith.ori %101, %102 : i1
            %104 = arith.ori %100, %103 : i1
            %105 = arith.select %104, %arg15, %89 : i32
            %106 = arith.bitcast %105 : i32 to f32
            memref.store %106, %arg16[%arg17, %arg18] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %75, %78, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: memref<64x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c48 = arith.constant 48 : index
        %c56 = arith.constant 56 : index
        scf.for %arg17 = %c48 to %c56 step %c1_31 {
          scf.for %arg18 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map1>
            %87 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map1>
            %88 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map1>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.bitcast %87 : f32 to i32
            %91 = arith.andi %90, %arg12 : i32
            %92 = arith.bitcast %86 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.cmpi eq, %93, %arg13 : i32
            %95 = arith.cmpi eq, %91, %arg14 : i32
            %96 = arith.andi %94, %95 : i1
            %97 = arith.cmpi eq, %91, %arg13 : i32
            %98 = arith.cmpi eq, %93, %arg14 : i32
            %99 = arith.andi %97, %98 : i1
            %100 = arith.ori %96, %99 : i1
            %101 = arith.cmpi ugt, %93, %arg13 : i32
            %102 = arith.cmpi ugt, %91, %arg13 : i32
            %103 = arith.ori %101, %102 : i1
            %104 = arith.ori %100, %103 : i1
            %105 = arith.select %104, %arg15, %89 : i32
            %106 = arith.bitcast %105 : i32 to f32
            memref.store %106, %arg16[%arg17, %arg18] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%77, %75, %78, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: memref<64x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c64_31 = arith.constant 64 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c56 = arith.constant 56 : index
        scf.for %arg17 = %c56 to %c64_31 step %c1_32 {
          scf.for %arg18 = %c0_30 to %c128_33 step %c1_32 {
            %86 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map1>
            %87 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map1>
            %88 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map1>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.bitcast %87 : f32 to i32
            %91 = arith.andi %90, %arg12 : i32
            %92 = arith.bitcast %86 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.cmpi eq, %93, %arg13 : i32
            %95 = arith.cmpi eq, %91, %arg14 : i32
            %96 = arith.andi %94, %95 : i1
            %97 = arith.cmpi eq, %91, %arg13 : i32
            %98 = arith.cmpi eq, %93, %arg14 : i32
            %99 = arith.andi %97, %98 : i1
            %100 = arith.ori %96, %99 : i1
            %101 = arith.cmpi ugt, %93, %arg13 : i32
            %102 = arith.cmpi ugt, %91, %arg13 : i32
            %103 = arith.ori %101, %102 : i1
            %104 = arith.ori %100, %103 : i1
            %105 = arith.select %104, %arg15, %89 : i32
            %106 = arith.bitcast %105 : i32 to f32
            memref.store %106, %arg16[%arg17, %arg18] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 14)
      sdnn.core_arrive(3, 20)
      sdnn.core_arrive(3, 22)
      sdnn.core_arrive(3, 23)
      %alloc_23 = memref.alloc() {bufferNum = 3 : index, bufferSize = 32768 : index, init_signal = 31 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map1>
      %80 = sdnn.get_fifo_buffer %alloc_23, %14, {bufferNum = 3 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map1> memref<1xi32, 6> to memref<64x128xf32, #map1>
      sdnn.ew linear %80 src0 %75 src1 %74 a %cst_2 b %cst {sdnn.layout = "CR_RowMajor", signal = array<i32: 24>, wait = array<i32: 14, 23, 31>} : (memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, f32, f32) -> ()
      sdnn.ew mul %80 src0 %80 c %cst_1 {sdnn.layout = "CR_RowMajor", signal = array<i32: 30>} : (memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, f32) -> ()
      sdnn.core_wait(3, 30)
      sdnn.core_wait(3, 34)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%80 : memref<64x128xf32, #map1>) outs(%79 : memref<64x128xi32, #map1>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xi32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        scf.for %arg11 = %c0_30 to %c8 step %c1_31 {
          scf.for %arg12 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg11, %arg12] : memref<64x128xf32, #map1>
            %87 = arith.bitcast %86 : f32 to i32
            memref.store %87, %arg10[%arg11, %arg12] : memref<64x128xi32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%80 : memref<64x128xf32, #map1>) outs(%79 : memref<64x128xi32, #map1>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xi32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        %c16 = arith.constant 16 : index
        scf.for %arg11 = %c8 to %c16 step %c1_31 {
          scf.for %arg12 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg11, %arg12] : memref<64x128xf32, #map1>
            %87 = arith.bitcast %86 : f32 to i32
            memref.store %87, %arg10[%arg11, %arg12] : memref<64x128xi32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%80 : memref<64x128xf32, #map1>) outs(%79 : memref<64x128xi32, #map1>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xi32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c16 = arith.constant 16 : index
        %c24 = arith.constant 24 : index
        scf.for %arg11 = %c16 to %c24 step %c1_31 {
          scf.for %arg12 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg11, %arg12] : memref<64x128xf32, #map1>
            %87 = arith.bitcast %86 : f32 to i32
            memref.store %87, %arg10[%arg11, %arg12] : memref<64x128xi32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%80 : memref<64x128xf32, #map1>) outs(%79 : memref<64x128xi32, #map1>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xi32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c24 = arith.constant 24 : index
        %c32 = arith.constant 32 : index
        scf.for %arg11 = %c24 to %c32 step %c1_31 {
          scf.for %arg12 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg11, %arg12] : memref<64x128xf32, #map1>
            %87 = arith.bitcast %86 : f32 to i32
            memref.store %87, %arg10[%arg11, %arg12] : memref<64x128xi32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%80 : memref<64x128xf32, #map1>) outs(%79 : memref<64x128xi32, #map1>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xi32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c32 = arith.constant 32 : index
        %c40 = arith.constant 40 : index
        scf.for %arg11 = %c32 to %c40 step %c1_31 {
          scf.for %arg12 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg11, %arg12] : memref<64x128xf32, #map1>
            %87 = arith.bitcast %86 : f32 to i32
            memref.store %87, %arg10[%arg11, %arg12] : memref<64x128xi32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%80 : memref<64x128xf32, #map1>) outs(%79 : memref<64x128xi32, #map1>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xi32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c40 = arith.constant 40 : index
        %c48 = arith.constant 48 : index
        scf.for %arg11 = %c40 to %c48 step %c1_31 {
          scf.for %arg12 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg11, %arg12] : memref<64x128xf32, #map1>
            %87 = arith.bitcast %86 : f32 to i32
            memref.store %87, %arg10[%arg11, %arg12] : memref<64x128xi32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%80 : memref<64x128xf32, #map1>) outs(%79 : memref<64x128xi32, #map1>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xi32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c48 = arith.constant 48 : index
        %c56 = arith.constant 56 : index
        scf.for %arg11 = %c48 to %c56 step %c1_31 {
          scf.for %arg12 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg11, %arg12] : memref<64x128xf32, #map1>
            %87 = arith.bitcast %86 : f32 to i32
            memref.store %87, %arg10[%arg11, %arg12] : memref<64x128xi32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%80 : memref<64x128xf32, #map1>) outs(%79 : memref<64x128xi32, #map1>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xi32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c64_31 = arith.constant 64 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c56 = arith.constant 56 : index
        scf.for %arg11 = %c56 to %c64_31 step %c1_32 {
          scf.for %arg12 = %c0_30 to %c128_33 step %c1_32 {
            %86 = memref.load %arg9[%arg11, %arg12] : memref<64x128xf32, #map1>
            %87 = arith.bitcast %86 : f32 to i32
            memref.store %87, %arg10[%arg11, %arg12] : memref<64x128xi32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 31)
      sdnn.core_arrive(3, 32)
      sdnn.core_wait(3, 24)
      sdnn.core_wait(3, 32)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%79, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<64x128xi32, #map1>, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map1>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        scf.for %arg14 = %c0_30 to %c8 step %c1_31 {
          scf.for %arg15 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg14, %arg15] : memref<64x128xi32, #map1>
            %87 = arith.andi %86, %arg10 : i32
            %88 = arith.ori %87, %arg11 : i32
            %89 = arith.andi %86, %arg12 : i32
            %90 = arith.cmpi ugt, %89, %arg11 : i32
            %91 = arith.select %90, %88, %86 : i32
            %92 = arith.bitcast %91 : i32 to f32
            memref.store %92, %arg13[%arg14, %arg15] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<64x128xi32, #map1>, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map1>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        %c16 = arith.constant 16 : index
        scf.for %arg14 = %c8 to %c16 step %c1_31 {
          scf.for %arg15 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg14, %arg15] : memref<64x128xi32, #map1>
            %87 = arith.andi %86, %arg10 : i32
            %88 = arith.ori %87, %arg11 : i32
            %89 = arith.andi %86, %arg12 : i32
            %90 = arith.cmpi ugt, %89, %arg11 : i32
            %91 = arith.select %90, %88, %86 : i32
            %92 = arith.bitcast %91 : i32 to f32
            memref.store %92, %arg13[%arg14, %arg15] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<64x128xi32, #map1>, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map1>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c16 = arith.constant 16 : index
        %c24 = arith.constant 24 : index
        scf.for %arg14 = %c16 to %c24 step %c1_31 {
          scf.for %arg15 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg14, %arg15] : memref<64x128xi32, #map1>
            %87 = arith.andi %86, %arg10 : i32
            %88 = arith.ori %87, %arg11 : i32
            %89 = arith.andi %86, %arg12 : i32
            %90 = arith.cmpi ugt, %89, %arg11 : i32
            %91 = arith.select %90, %88, %86 : i32
            %92 = arith.bitcast %91 : i32 to f32
            memref.store %92, %arg13[%arg14, %arg15] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<64x128xi32, #map1>, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map1>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c24 = arith.constant 24 : index
        %c32 = arith.constant 32 : index
        scf.for %arg14 = %c24 to %c32 step %c1_31 {
          scf.for %arg15 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg14, %arg15] : memref<64x128xi32, #map1>
            %87 = arith.andi %86, %arg10 : i32
            %88 = arith.ori %87, %arg11 : i32
            %89 = arith.andi %86, %arg12 : i32
            %90 = arith.cmpi ugt, %89, %arg11 : i32
            %91 = arith.select %90, %88, %86 : i32
            %92 = arith.bitcast %91 : i32 to f32
            memref.store %92, %arg13[%arg14, %arg15] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<64x128xi32, #map1>, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map1>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c32 = arith.constant 32 : index
        %c40 = arith.constant 40 : index
        scf.for %arg14 = %c32 to %c40 step %c1_31 {
          scf.for %arg15 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg14, %arg15] : memref<64x128xi32, #map1>
            %87 = arith.andi %86, %arg10 : i32
            %88 = arith.ori %87, %arg11 : i32
            %89 = arith.andi %86, %arg12 : i32
            %90 = arith.cmpi ugt, %89, %arg11 : i32
            %91 = arith.select %90, %88, %86 : i32
            %92 = arith.bitcast %91 : i32 to f32
            memref.store %92, %arg13[%arg14, %arg15] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<64x128xi32, #map1>, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map1>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c40 = arith.constant 40 : index
        %c48 = arith.constant 48 : index
        scf.for %arg14 = %c40 to %c48 step %c1_31 {
          scf.for %arg15 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg14, %arg15] : memref<64x128xi32, #map1>
            %87 = arith.andi %86, %arg10 : i32
            %88 = arith.ori %87, %arg11 : i32
            %89 = arith.andi %86, %arg12 : i32
            %90 = arith.cmpi ugt, %89, %arg11 : i32
            %91 = arith.select %90, %88, %86 : i32
            %92 = arith.bitcast %91 : i32 to f32
            memref.store %92, %arg13[%arg14, %arg15] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<64x128xi32, #map1>, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map1>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c48 = arith.constant 48 : index
        %c56 = arith.constant 56 : index
        scf.for %arg14 = %c48 to %c56 step %c1_31 {
          scf.for %arg15 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg14, %arg15] : memref<64x128xi32, #map1>
            %87 = arith.andi %86, %arg10 : i32
            %88 = arith.ori %87, %arg11 : i32
            %89 = arith.andi %86, %arg12 : i32
            %90 = arith.cmpi ugt, %89, %arg11 : i32
            %91 = arith.select %90, %88, %86 : i32
            %92 = arith.bitcast %91 : i32 to f32
            memref.store %92, %arg13[%arg14, %arg15] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<64x128xi32, #map1>, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map1>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c64_31 = arith.constant 64 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c56 = arith.constant 56 : index
        scf.for %arg14 = %c56 to %c64_31 step %c1_32 {
          scf.for %arg15 = %c0_30 to %c128_33 step %c1_32 {
            %86 = memref.load %arg9[%arg14, %arg15] : memref<64x128xi32, #map1>
            %87 = arith.andi %86, %arg10 : i32
            %88 = arith.ori %87, %arg11 : i32
            %89 = arith.andi %86, %arg12 : i32
            %90 = arith.cmpi ugt, %89, %arg11 : i32
            %91 = arith.select %90, %88, %86 : i32
            %92 = arith.bitcast %91 : i32 to f32
            memref.store %92, %arg13[%arg14, %arg15] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 25)
      sdnn.core_arrive(3, 33)
      sdnn.ew lut %74 src0 %74 lut_func tanh {kOverflow = 0.000000e+00 : f32, kUnderflow = 0.000000e+00 : f32, lut_max = 15.984375 : f32, lut_min = 0.000000e+00 : f32, packedid = 231491 : ui32, sdnn.layout = "CR_RowMajor", signal = array<i32: 26>, wait = array<i32: 25>} : (memref<64x128xf32, #map1>, memref<64x128xf32, #map1>) -> ()
      %alloc_24 = memref.alloc() {bufferNum = 3 : index, bufferSize = 32768 : index, init_signal = 37 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map1>
      %81 = sdnn.get_fifo_buffer %alloc_24, %13, {bufferNum = 3 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map1> memref<1xi32, 6> to memref<64x128xf32, #map1>
      sdnn.core_wait(3, 26)
      sdnn.core_wait(3, 33)
      sdnn.core_wait(3, 37)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%79, %74, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<64x128xi32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%81 : memref<64x128xf32, #map1>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        scf.for %arg16 = %c0_30 to %c8 step %c1_31 {
          scf.for %arg17 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg16, %arg17] : memref<64x128xi32, #map1>
            %87 = memref.load %arg10[%arg16, %arg17] : memref<64x128xf32, #map1>
            %88 = arith.ori %86, %arg11 : i32
            %89 = arith.bitcast %87 : f32 to i32
            %90 = arith.andi %86, %arg12 : i32
            %91 = arith.cmpi eq, %90, %arg12 : i32
            %92 = arith.andi %86, %arg13 : i32
            %93 = arith.cmpi ne, %92, %arg14 : i32
            %94 = arith.andi %91, %93 : i1
            %95 = arith.select %94, %88, %89 : i32
            %96 = arith.bitcast %95 : i32 to f32
            memref.store %96, %arg15[%arg16, %arg17] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %74, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<64x128xi32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%81 : memref<64x128xf32, #map1>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        %c16 = arith.constant 16 : index
        scf.for %arg16 = %c8 to %c16 step %c1_31 {
          scf.for %arg17 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg16, %arg17] : memref<64x128xi32, #map1>
            %87 = memref.load %arg10[%arg16, %arg17] : memref<64x128xf32, #map1>
            %88 = arith.ori %86, %arg11 : i32
            %89 = arith.bitcast %87 : f32 to i32
            %90 = arith.andi %86, %arg12 : i32
            %91 = arith.cmpi eq, %90, %arg12 : i32
            %92 = arith.andi %86, %arg13 : i32
            %93 = arith.cmpi ne, %92, %arg14 : i32
            %94 = arith.andi %91, %93 : i1
            %95 = arith.select %94, %88, %89 : i32
            %96 = arith.bitcast %95 : i32 to f32
            memref.store %96, %arg15[%arg16, %arg17] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %74, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<64x128xi32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%81 : memref<64x128xf32, #map1>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c16 = arith.constant 16 : index
        %c24 = arith.constant 24 : index
        scf.for %arg16 = %c16 to %c24 step %c1_31 {
          scf.for %arg17 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg16, %arg17] : memref<64x128xi32, #map1>
            %87 = memref.load %arg10[%arg16, %arg17] : memref<64x128xf32, #map1>
            %88 = arith.ori %86, %arg11 : i32
            %89 = arith.bitcast %87 : f32 to i32
            %90 = arith.andi %86, %arg12 : i32
            %91 = arith.cmpi eq, %90, %arg12 : i32
            %92 = arith.andi %86, %arg13 : i32
            %93 = arith.cmpi ne, %92, %arg14 : i32
            %94 = arith.andi %91, %93 : i1
            %95 = arith.select %94, %88, %89 : i32
            %96 = arith.bitcast %95 : i32 to f32
            memref.store %96, %arg15[%arg16, %arg17] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %74, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<64x128xi32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%81 : memref<64x128xf32, #map1>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c24 = arith.constant 24 : index
        %c32 = arith.constant 32 : index
        scf.for %arg16 = %c24 to %c32 step %c1_31 {
          scf.for %arg17 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg16, %arg17] : memref<64x128xi32, #map1>
            %87 = memref.load %arg10[%arg16, %arg17] : memref<64x128xf32, #map1>
            %88 = arith.ori %86, %arg11 : i32
            %89 = arith.bitcast %87 : f32 to i32
            %90 = arith.andi %86, %arg12 : i32
            %91 = arith.cmpi eq, %90, %arg12 : i32
            %92 = arith.andi %86, %arg13 : i32
            %93 = arith.cmpi ne, %92, %arg14 : i32
            %94 = arith.andi %91, %93 : i1
            %95 = arith.select %94, %88, %89 : i32
            %96 = arith.bitcast %95 : i32 to f32
            memref.store %96, %arg15[%arg16, %arg17] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %74, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<64x128xi32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%81 : memref<64x128xf32, #map1>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c32 = arith.constant 32 : index
        %c40 = arith.constant 40 : index
        scf.for %arg16 = %c32 to %c40 step %c1_31 {
          scf.for %arg17 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg16, %arg17] : memref<64x128xi32, #map1>
            %87 = memref.load %arg10[%arg16, %arg17] : memref<64x128xf32, #map1>
            %88 = arith.ori %86, %arg11 : i32
            %89 = arith.bitcast %87 : f32 to i32
            %90 = arith.andi %86, %arg12 : i32
            %91 = arith.cmpi eq, %90, %arg12 : i32
            %92 = arith.andi %86, %arg13 : i32
            %93 = arith.cmpi ne, %92, %arg14 : i32
            %94 = arith.andi %91, %93 : i1
            %95 = arith.select %94, %88, %89 : i32
            %96 = arith.bitcast %95 : i32 to f32
            memref.store %96, %arg15[%arg16, %arg17] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %74, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<64x128xi32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%81 : memref<64x128xf32, #map1>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c40 = arith.constant 40 : index
        %c48 = arith.constant 48 : index
        scf.for %arg16 = %c40 to %c48 step %c1_31 {
          scf.for %arg17 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg16, %arg17] : memref<64x128xi32, #map1>
            %87 = memref.load %arg10[%arg16, %arg17] : memref<64x128xf32, #map1>
            %88 = arith.ori %86, %arg11 : i32
            %89 = arith.bitcast %87 : f32 to i32
            %90 = arith.andi %86, %arg12 : i32
            %91 = arith.cmpi eq, %90, %arg12 : i32
            %92 = arith.andi %86, %arg13 : i32
            %93 = arith.cmpi ne, %92, %arg14 : i32
            %94 = arith.andi %91, %93 : i1
            %95 = arith.select %94, %88, %89 : i32
            %96 = arith.bitcast %95 : i32 to f32
            memref.store %96, %arg15[%arg16, %arg17] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %74, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<64x128xi32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%81 : memref<64x128xf32, #map1>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c48 = arith.constant 48 : index
        %c56 = arith.constant 56 : index
        scf.for %arg16 = %c48 to %c56 step %c1_31 {
          scf.for %arg17 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg16, %arg17] : memref<64x128xi32, #map1>
            %87 = memref.load %arg10[%arg16, %arg17] : memref<64x128xf32, #map1>
            %88 = arith.ori %86, %arg11 : i32
            %89 = arith.bitcast %87 : f32 to i32
            %90 = arith.andi %86, %arg12 : i32
            %91 = arith.cmpi eq, %90, %arg12 : i32
            %92 = arith.andi %86, %arg13 : i32
            %93 = arith.cmpi ne, %92, %arg14 : i32
            %94 = arith.andi %91, %93 : i1
            %95 = arith.select %94, %88, %89 : i32
            %96 = arith.bitcast %95 : i32 to f32
            memref.store %96, %arg15[%arg16, %arg17] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%79, %74, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<64x128xi32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%81 : memref<64x128xf32, #map1>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xi32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c64_31 = arith.constant 64 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c56 = arith.constant 56 : index
        scf.for %arg16 = %c56 to %c64_31 step %c1_32 {
          scf.for %arg17 = %c0_30 to %c128_33 step %c1_32 {
            %86 = memref.load %arg9[%arg16, %arg17] : memref<64x128xi32, #map1>
            %87 = memref.load %arg10[%arg16, %arg17] : memref<64x128xf32, #map1>
            %88 = arith.ori %86, %arg11 : i32
            %89 = arith.bitcast %87 : f32 to i32
            %90 = arith.andi %86, %arg12 : i32
            %91 = arith.cmpi eq, %90, %arg12 : i32
            %92 = arith.andi %86, %arg13 : i32
            %93 = arith.cmpi ne, %92, %arg14 : i32
            %94 = arith.andi %91, %93 : i1
            %95 = arith.select %94, %88, %89 : i32
            %96 = arith.bitcast %95 : i32 to f32
            memref.store %96, %arg15[%arg16, %arg17] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 27)
      sdnn.core_arrive(3, 34)
      sdnn.core_arrive(3, 35)
      sdnn.ew linear %81 src0 %81 a %cst_2 c %cst_2 {sdnn.layout = "CR_RowMajor", wait = array<i32: 35>} : (memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, f32, f32) -> ()
      %alloc_25 = memref.alloc() {bufferNum = 3 : index, bufferSize = 32768 : index, init_signal = 39 : i64, processed, sram = "uni_sram"} : memref<64x128xf32, #map1>
      %82 = sdnn.get_fifo_buffer %alloc_25, %12, {bufferNum = 3 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map1> memref<1xi32, 6> to memref<64x128xf32, #map1>
      sdnn.ew mul %82 src0 %75 src1 %81 c %cst_0 {sdnn.layout = "CR_RowMajor", signal = array<i32: 15, 36, 38>, wait = array<i32: 16, 39>} : (memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, f32) -> ()
      sdnn.core_wait(3, 17)
      sdnn.core_wait(3, 27)
      sdnn.core_wait(3, 36)
      sdnn.core_wait(3, 38)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%76, %81, %82, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: memref<64x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        scf.for %arg17 = %c0_30 to %c8 step %c1_31 {
          scf.for %arg18 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map1>
            %87 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map1>
            %88 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map1>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.bitcast %87 : f32 to i32
            %91 = arith.andi %90, %arg12 : i32
            %92 = arith.bitcast %86 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.cmpi eq, %93, %arg13 : i32
            %95 = arith.cmpi eq, %91, %arg14 : i32
            %96 = arith.andi %94, %95 : i1
            %97 = arith.cmpi eq, %91, %arg13 : i32
            %98 = arith.cmpi eq, %93, %arg14 : i32
            %99 = arith.andi %97, %98 : i1
            %100 = arith.ori %96, %99 : i1
            %101 = arith.cmpi ugt, %93, %arg13 : i32
            %102 = arith.cmpi ugt, %91, %arg13 : i32
            %103 = arith.ori %101, %102 : i1
            %104 = arith.ori %100, %103 : i1
            %105 = arith.select %104, %arg15, %89 : i32
            %106 = arith.bitcast %105 : i32 to f32
            memref.store %106, %arg16[%arg17, %arg18] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%76, %81, %82, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: memref<64x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c8 = arith.constant 8 : index
        %c16 = arith.constant 16 : index
        scf.for %arg17 = %c8 to %c16 step %c1_31 {
          scf.for %arg18 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map1>
            %87 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map1>
            %88 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map1>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.bitcast %87 : f32 to i32
            %91 = arith.andi %90, %arg12 : i32
            %92 = arith.bitcast %86 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.cmpi eq, %93, %arg13 : i32
            %95 = arith.cmpi eq, %91, %arg14 : i32
            %96 = arith.andi %94, %95 : i1
            %97 = arith.cmpi eq, %91, %arg13 : i32
            %98 = arith.cmpi eq, %93, %arg14 : i32
            %99 = arith.andi %97, %98 : i1
            %100 = arith.ori %96, %99 : i1
            %101 = arith.cmpi ugt, %93, %arg13 : i32
            %102 = arith.cmpi ugt, %91, %arg13 : i32
            %103 = arith.ori %101, %102 : i1
            %104 = arith.ori %100, %103 : i1
            %105 = arith.select %104, %arg15, %89 : i32
            %106 = arith.bitcast %105 : i32 to f32
            memref.store %106, %arg16[%arg17, %arg18] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%76, %81, %82, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: memref<64x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c16 = arith.constant 16 : index
        %c24 = arith.constant 24 : index
        scf.for %arg17 = %c16 to %c24 step %c1_31 {
          scf.for %arg18 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map1>
            %87 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map1>
            %88 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map1>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.bitcast %87 : f32 to i32
            %91 = arith.andi %90, %arg12 : i32
            %92 = arith.bitcast %86 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.cmpi eq, %93, %arg13 : i32
            %95 = arith.cmpi eq, %91, %arg14 : i32
            %96 = arith.andi %94, %95 : i1
            %97 = arith.cmpi eq, %91, %arg13 : i32
            %98 = arith.cmpi eq, %93, %arg14 : i32
            %99 = arith.andi %97, %98 : i1
            %100 = arith.ori %96, %99 : i1
            %101 = arith.cmpi ugt, %93, %arg13 : i32
            %102 = arith.cmpi ugt, %91, %arg13 : i32
            %103 = arith.ori %101, %102 : i1
            %104 = arith.ori %100, %103 : i1
            %105 = arith.select %104, %arg15, %89 : i32
            %106 = arith.bitcast %105 : i32 to f32
            memref.store %106, %arg16[%arg17, %arg18] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%76, %81, %82, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: memref<64x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c24 = arith.constant 24 : index
        %c32 = arith.constant 32 : index
        scf.for %arg17 = %c24 to %c32 step %c1_31 {
          scf.for %arg18 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map1>
            %87 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map1>
            %88 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map1>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.bitcast %87 : f32 to i32
            %91 = arith.andi %90, %arg12 : i32
            %92 = arith.bitcast %86 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.cmpi eq, %93, %arg13 : i32
            %95 = arith.cmpi eq, %91, %arg14 : i32
            %96 = arith.andi %94, %95 : i1
            %97 = arith.cmpi eq, %91, %arg13 : i32
            %98 = arith.cmpi eq, %93, %arg14 : i32
            %99 = arith.andi %97, %98 : i1
            %100 = arith.ori %96, %99 : i1
            %101 = arith.cmpi ugt, %93, %arg13 : i32
            %102 = arith.cmpi ugt, %91, %arg13 : i32
            %103 = arith.ori %101, %102 : i1
            %104 = arith.ori %100, %103 : i1
            %105 = arith.select %104, %arg15, %89 : i32
            %106 = arith.bitcast %105 : i32 to f32
            memref.store %106, %arg16[%arg17, %arg18] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%76, %81, %82, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: memref<64x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c32 = arith.constant 32 : index
        %c40 = arith.constant 40 : index
        scf.for %arg17 = %c32 to %c40 step %c1_31 {
          scf.for %arg18 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map1>
            %87 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map1>
            %88 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map1>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.bitcast %87 : f32 to i32
            %91 = arith.andi %90, %arg12 : i32
            %92 = arith.bitcast %86 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.cmpi eq, %93, %arg13 : i32
            %95 = arith.cmpi eq, %91, %arg14 : i32
            %96 = arith.andi %94, %95 : i1
            %97 = arith.cmpi eq, %91, %arg13 : i32
            %98 = arith.cmpi eq, %93, %arg14 : i32
            %99 = arith.andi %97, %98 : i1
            %100 = arith.ori %96, %99 : i1
            %101 = arith.cmpi ugt, %93, %arg13 : i32
            %102 = arith.cmpi ugt, %91, %arg13 : i32
            %103 = arith.ori %101, %102 : i1
            %104 = arith.ori %100, %103 : i1
            %105 = arith.select %104, %arg15, %89 : i32
            %106 = arith.bitcast %105 : i32 to f32
            memref.store %106, %arg16[%arg17, %arg18] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%76, %81, %82, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: memref<64x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c40 = arith.constant 40 : index
        %c48 = arith.constant 48 : index
        scf.for %arg17 = %c40 to %c48 step %c1_31 {
          scf.for %arg18 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map1>
            %87 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map1>
            %88 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map1>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.bitcast %87 : f32 to i32
            %91 = arith.andi %90, %arg12 : i32
            %92 = arith.bitcast %86 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.cmpi eq, %93, %arg13 : i32
            %95 = arith.cmpi eq, %91, %arg14 : i32
            %96 = arith.andi %94, %95 : i1
            %97 = arith.cmpi eq, %91, %arg13 : i32
            %98 = arith.cmpi eq, %93, %arg14 : i32
            %99 = arith.andi %97, %98 : i1
            %100 = arith.ori %96, %99 : i1
            %101 = arith.cmpi ugt, %93, %arg13 : i32
            %102 = arith.cmpi ugt, %91, %arg13 : i32
            %103 = arith.ori %101, %102 : i1
            %104 = arith.ori %100, %103 : i1
            %105 = arith.select %104, %arg15, %89 : i32
            %106 = arith.bitcast %105 : i32 to f32
            memref.store %106, %arg16[%arg17, %arg18] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%76, %81, %82, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: memref<64x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c1_31 = arith.constant 1 : index
        %c128_32 = arith.constant 128 : index
        %c48 = arith.constant 48 : index
        %c56 = arith.constant 56 : index
        scf.for %arg17 = %c48 to %c56 step %c1_31 {
          scf.for %arg18 = %c0_30 to %c128_32 step %c1_31 {
            %86 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map1>
            %87 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map1>
            %88 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map1>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.bitcast %87 : f32 to i32
            %91 = arith.andi %90, %arg12 : i32
            %92 = arith.bitcast %86 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.cmpi eq, %93, %arg13 : i32
            %95 = arith.cmpi eq, %91, %arg14 : i32
            %96 = arith.andi %94, %95 : i1
            %97 = arith.cmpi eq, %91, %arg13 : i32
            %98 = arith.cmpi eq, %93, %arg14 : i32
            %99 = arith.andi %97, %98 : i1
            %100 = arith.ori %96, %99 : i1
            %101 = arith.cmpi ugt, %93, %arg13 : i32
            %102 = arith.cmpi ugt, %91, %arg13 : i32
            %103 = arith.ori %101, %102 : i1
            %104 = arith.ori %100, %103 : i1
            %105 = arith.select %104, %arg15, %89 : i32
            %106 = arith.bitcast %105 : i32 to f32
            memref.store %106, %arg16[%arg17, %arg18] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%76, %81, %82, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, memref<64x128xf32, #map1>, i32, i32, i32, i32) outs(%74 : memref<64x128xf32, #map1>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<64x128xf32, #map1>, %arg10: memref<64x128xf32, #map1>, %arg11: memref<64x128xf32, #map1>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<64x128xf32, #map1>):
        %c0_30 = arith.constant 0 : index
        %c64_31 = arith.constant 64 : index
        %c1_32 = arith.constant 1 : index
        %c128_33 = arith.constant 128 : index
        %c56 = arith.constant 56 : index
        scf.for %arg17 = %c56 to %c64_31 step %c1_32 {
          scf.for %arg18 = %c0_30 to %c128_33 step %c1_32 {
            %86 = memref.load %arg9[%arg17, %arg18] : memref<64x128xf32, #map1>
            %87 = memref.load %arg10[%arg17, %arg18] : memref<64x128xf32, #map1>
            %88 = memref.load %arg11[%arg17, %arg18] : memref<64x128xf32, #map1>
            %89 = arith.bitcast %88 : f32 to i32
            %90 = arith.bitcast %87 : f32 to i32
            %91 = arith.andi %90, %arg12 : i32
            %92 = arith.bitcast %86 : f32 to i32
            %93 = arith.andi %92, %arg12 : i32
            %94 = arith.cmpi eq, %93, %arg13 : i32
            %95 = arith.cmpi eq, %91, %arg14 : i32
            %96 = arith.andi %94, %95 : i1
            %97 = arith.cmpi eq, %91, %arg13 : i32
            %98 = arith.cmpi eq, %93, %arg14 : i32
            %99 = arith.andi %97, %98 : i1
            %100 = arith.ori %96, %99 : i1
            %101 = arith.cmpi ugt, %93, %arg13 : i32
            %102 = arith.cmpi ugt, %91, %arg13 : i32
            %103 = arith.ori %101, %102 : i1
            %104 = arith.ori %100, %103 : i1
            %105 = arith.select %104, %arg15, %89 : i32
            %106 = arith.bitcast %105 : i32 to f32
            memref.store %106, %arg16[%arg17, %arg18] : memref<64x128xf32, #map1>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 18)
      sdnn.core_arrive(3, 28)
      sdnn.core_arrive(3, 37)
      sdnn.core_arrive(3, 39)
      %83 = arith.muli %40, %c65536 : index
      %84 = arith.addi %83, %43 : index
      %reinterpret_cast_26 = memref.reinterpret_cast %arg3 to offset: [%84], sizes: [64, 128], strides: [1024, 1] : memref<*xf32, 1> to memref<64x128xf32, strided<[1024, 1], offset: ?>, 1>
      %85 = arith.minsi %66, %c64 : index
      %subview_27 = memref.subview %74[0, 0] [%85, %72] [1, 1] : memref<64x128xf32, #map1> to memref<?x?xf32, strided<[128, 1]>>
      %subview_28 = memref.subview %reinterpret_cast_26[0, 0] [%85, %72] [1, 1] : memref<64x128xf32, strided<[1024, 1], offset: ?>, 1> to memref<?x?xf32, strided<[1024, 1], offset: ?>, 1>
      %cast_29 = memref.cast %subview_28 : memref<?x?xf32, strided<[1024, 1], offset: ?>, 1> to memref<?x?xf32, strided<[?, 1], offset: ?>, 1>
      sdnn.dma out %subview_27, %cast_29 {signal = array<i32: 29>, wait = array<i32: 28>} : memref<?x?xf32, strided<[128, 1]>> memref<?x?xf32, strided<[?, 1], offset: ?>, 1> -> 
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
