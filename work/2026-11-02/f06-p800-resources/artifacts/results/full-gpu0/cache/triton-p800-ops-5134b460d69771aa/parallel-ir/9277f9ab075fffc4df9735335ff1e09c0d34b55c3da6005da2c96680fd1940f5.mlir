#map = affine_map<(d0, d1) -> (d0 * 128 + d1)>
#map1 = affine_map<(d0, d1) -> (d0 * 64 + d1)>
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
    %c128_i32 = arith.constant 128 : i32
    %c8_i32 = arith.constant 8 : i32
    %c64_i32 = arith.constant 64 : i32
    %cst_0 = arith.constant 5.000000e-01 : f32
    %cst_1 = arith.constant 0.797884583 : f32
    %cst_2 = arith.constant 1.000000e+00 : f32
    %c4_i32 = arith.constant 4 : i32
    %c1_i32 = arith.constant 1 : i32
    %c16_i32 = arith.constant 16 : i32
    %c2147483647_i32 = arith.constant 2147483647 : i32
    %c-2147483648_i32 = arith.constant -2147483648 : i32
    %c1098907648_i32 = arith.constant 1098907648 : i32
    %c2139095040_i32 = arith.constant 2139095040 : i32
    %c4194304_i32 = arith.constant 4194304 : i32
    %c8388607_i32 = arith.constant 8388607 : i32
    %c0_i32 = arith.constant 0 : i32
    %c65536 = arith.constant 65536 : index
    %c524288 = arith.constant 524288 : index
    %c131072 = arith.constant 131072 : index
    %c64 = arith.constant 64 : index
    %c128 = arith.constant 128 : index
    %c1024 = arith.constant 1024 : index
    %c512 = arith.constant 512 : index
    %c2143289344_i32 = arith.constant 2143289344 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %reinterpret_cast = memref.reinterpret_cast %arg4 to offset: [0], sizes: [1024], strides: [1] : memref<*xf32, 1> to memref<1024xf32, 1>
    "sdnn.init"(%reinterpret_cast) {signal = [array<i32: 18, 5, 3, 9, 7, 20, 23, 26, 28, 30, 35, 32, 38, 40>], signal_num = array<i64: 2, 24, 6, 40, 6, 2, 2, 2, 2, 2, 2, 2, 2, 2>} : (memref<1024xf32, 1>) -> ()
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
    %21 = sdnn.counter {bufferNum = 6 : i32} : memref<1xi32, 6>
    %22 = sdnn.counter {bufferNum = 40 : i32} : memref<1xi32, 6>
    %23 = sdnn.counter {bufferNum = 6 : i32} : memref<1xi32, 6>
    %24 = sdnn.counter {bufferNum = 24 : i32} : memref<1xi32, 6>
    %25 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    scf.for %arg8 = %10 to %11 step %c1 {
      %26 = arith.index_cast %arg8 : index to i32
      %27 = arith.divsi %26, %arg7 : i32
      %28 = arith.divsi %27, %arg6 : i32
      %29 = arith.divsi %28, %c64_i32 : i32
      %30 = arith.muli %29, %c8_i32 : i32
      %31 = arith.subi %c4_i32, %30 : i32
      %32 = arith.minsi %31, %c8_i32 : i32
      %33 = arith.remsi %28, %32 : i32
      %34 = arith.addi %30, %33 : i32
      %35 = arith.remsi %28, %c64_i32 : i32
      %36 = arith.divsi %35, %32 : i32
      %37 = arith.cmpi sge, %34, %c0_i32 : i32
      llvm.intr.assume %37 : i1
      %38 = arith.cmpi sge, %36, %c0_i32 : i32
      llvm.intr.assume %38 : i1
      %39 = arith.muli %34, %c128_i32 : i32
      %40 = arith.index_cast %34 : i32 to index
      %41 = arith.muli %36, %c128_i32 : i32
      %42 = arith.index_cast %36 : i32 to index
      %43 = arith.muli %42, %c128 : index
      %alloca = memref.alloca() : memref<1xi32>
      memref.store %c0_i32, %alloca[%c0] : memref<1xi32>
      %alloc = memref.alloc() {bufferNum = 2 : index, bufferSize = 65536 : index, init_signal = 18 : i64, pingpong_single, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %44 = sdnn.get_fifo_buffer %alloc, %25, {bufferNum = 2 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      sdnn.core_wait(4, 18) {core_name = "mma"}
      scf.for %arg9 = %c0_i32 to %c16_i32 step %c1_i32  : i32 {
        %68 = arith.index_cast %arg9 : i32 to index
        %69 = arith.muli %68, %c64 : index
        %70 = arith.muli %40, %c131072 : index
        %71 = arith.addi %70, %69 : index
        %72 = arith.cmpi sge, %71, %c524288 : index
        %73 = arith.divsi %71, %c524288 : index
        %74 = arith.muli %73, %c524288 : index
        %75 = arith.subi %71, %74 : index
        %76 = arith.select %72, %75, %71 : index
        %77 = arith.divsi %76, %c1024 : index
        %78 = arith.addi %77, %c128 : index
        %79 = arith.minsi %78, %c512 : index
        %80 = arith.subi %79, %77 : index
        %reinterpret_cast_17 = memref.reinterpret_cast %arg0 to offset: [%71], sizes: [%80, 64], strides: [1024, 1] : memref<*xf32, 1> to memref<?x64xf32, strided<[1024, 1], offset: ?>, 1>
        %cast_18 = memref.cast %reinterpret_cast_17 : memref<?x64xf32, strided<[1024, 1], offset: ?>, 1> to memref<?x?xf32, strided<[?, ?], offset: ?>, 1>
        %alloc_19 = memref.alloc() {bufferNum = 24 : index, bufferSize = 32768 : index, init_signal = 5 : i64, processed, sram = "l1d"} : memref<128x64xf32, #map1, 3>
        %81 = sdnn.get_fifo_buffer %alloc_19, %24, {bufferNum = 24 : i32, bufferSize = 32768 : i32} : memref<128x64xf32, #map1, 3> memref<1xi32, 6> to memref<128x64xf32, #map1, 3>
        %alloc_20 = memref.alloc() {bufferNum = 6 : index, bufferSize = 32768 : index, init_signal = 3 : i64, processed, sram = "uni_sram", trans = false} : memref<128x64xf32, #map1>
        %82 = sdnn.get_fifo_buffer %alloc_20, %23, {bufferNum = 6 : i32, bufferSize = 32768 : i32} : memref<128x64xf32, #map1> memref<1xi32, 6> to memref<128x64xf32, #map1>
        %dim = memref.dim %reinterpret_cast_17, %c0 : memref<?x64xf32, strided<[1024, 1], offset: ?>, 1>
        %subview_21 = memref.subview %82[0, 0] [%dim, 64] [1, 1] : memref<128x64xf32, #map1> to memref<?x64xf32, strided<[64, 1]>>
        %cast_22 = memref.cast %subview_21 : memref<?x64xf32, strided<[64, 1]>> to memref<?x?xf32, strided<[?, ?], offset: ?>>
        sdnn.dma in %cast_18, %cast_22 {core_id = 1 : i32, signal = array<i32: 2>, wait = array<i32: 3>} : memref<?x?xf32, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[?, ?], offset: ?>> -> 
        sdnn.ds %82, %81 mask_dims[%c128, %c64] {sdnn.layout = "CR_RowMajor", signal = array<i32: 3, 4>, signal_cached = array<i32: 4>, wait = array<i32: 2, 5>, wait_cached = array<i32: 5>} : memref<128x64xf32, #map1> memref<128x64xf32, #map1, 3> -> 
        %83 = arith.muli %68, %c65536 : index
        %84 = arith.addi %83, %43 : index
        %85 = arith.remsi %84, %c1024 : index
        %86 = arith.addi %85, %c128 : index
        %87 = arith.minsi %86, %c1024 : index
        %88 = arith.subi %87, %85 : index
        %reinterpret_cast_23 = memref.reinterpret_cast %arg1 to offset: [%84], sizes: [64, %88], strides: [1024, 1] : memref<*xf32, 1> to memref<64x?xf32, strided<[1024, 1], offset: ?>, 1>
        %cast_24 = memref.cast %reinterpret_cast_23 : memref<64x?xf32, strided<[1024, 1], offset: ?>, 1> to memref<?x?xf32, strided<[?, ?], offset: ?>, 1>
        %alloc_25 = memref.alloc() {bufferNum = 40 : index, bufferSize = 32768 : index, init_signal = 9 : i64, processed, sram = "l1w"} : memref<64x128xf32, #map, 4>
        %89 = sdnn.get_fifo_buffer %alloc_25, %22, {bufferNum = 40 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map, 4> memref<1xi32, 6> to memref<64x128xf32, #map, 4>
        %alloc_26 = memref.alloc() {bufferNum = 6 : index, bufferSize = 32768 : index, init_signal = 7 : i64, processed, sram = "uni_sram", trans = false} : memref<64x128xf32, #map>
        %90 = sdnn.get_fifo_buffer %alloc_26, %21, {bufferNum = 6 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
        %dim_27 = memref.dim %reinterpret_cast_23, %c1 : memref<64x?xf32, strided<[1024, 1], offset: ?>, 1>
        %subview_28 = memref.subview %90[0, 0] [64, %dim_27] [1, 1] : memref<64x128xf32, #map> to memref<64x?xf32, strided<[128, 1]>>
        %cast_29 = memref.cast %subview_28 : memref<64x?xf32, strided<[128, 1]>> to memref<?x?xf32, strided<[?, ?], offset: ?>>
        sdnn.dma in %cast_24, %cast_29 {core_id = 6 : i32, signal = array<i32: 6>, wait = array<i32: 7>} : memref<?x?xf32, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[?, ?], offset: ?>> -> 
        sdnn.ds %90, %89 mask_dims[%c64, %c128] {sdnn.layout = "CR_RowMajor", signal = array<i32: 7, 8>, signal_cached = array<i32: 8>, wait = array<i32: 6, 9>, wait_cached = array<i32: 9>} : memref<64x128xf32, #map> memref<64x128xf32, #map, 4> -> 
        %91 = memref.load %alloca[%c0] : memref<1xi32>
        sdnn.mma %81, %89, %44 acc %91 mask_dims[%c128, %c128, %c64] {indexing_maps = [#map2, #map3, #map4], rcOut = false, sdnn.layout = "CR_RowMajor", signal = array<i32: 5, 9>, wait = array<i32: 4, 8>} : (memref<128x64xf32, #map1, 3>, memref<64x128xf32, #map, 4>, memref<128x128xf32, #map>, i32, index, index, index) -> ()
        %92 = arith.addi %91, %c1_i32 : i32
        memref.store %92, %alloca[%c0] : memref<1xi32>
      } {mac_acc = true, sdnn.arg_layout.1 = "CR_RowMajor", sdnn.layout = "CR_RowMajor"}
      sdnn.core_arrive(4, 10) {core_name = "mma"}
      %reinterpret_cast_3 = memref.reinterpret_cast %arg2 to offset: [%43], sizes: [1, 128], strides: [128, 1] : memref<*xf32, 1> to memref<1x128xf32, strided<[128, 1], offset: ?>, 1>
      %45 = arith.index_cast %39 : i32 to index
      %46 = arith.addi %45, %c128 : index
      %47 = arith.minsi %46, %c512 : index
      %48 = arith.maxsi %47, %45 : index
      %49 = arith.subi %48, %45 : index
      %50 = arith.index_cast %41 : i32 to index
      %51 = arith.addi %50, %c128 : index
      %52 = arith.minsi %51, %c1024 : index
      %53 = arith.maxsi %52, %50 : index
      %54 = arith.subi %53, %50 : index
      %55 = arith.minsi %54, %c128 : index
      %alloc_4 = memref.alloc() {bufferNum = 2 : index, bufferSize = 512 : index, init_signal = 20 : i64, processed, sram = "uni_sram", trans = false} : memref<1x128xf32, #map>
      %56 = sdnn.get_fifo_buffer %alloc_4, %20, {bufferNum = 2 : i32, bufferSize = 512 : i32} : memref<1x128xf32, #map> memref<1xi32, 6> to memref<1x128xf32, #map>
      %subview = memref.subview %reinterpret_cast_3[0, 0] [1, %55] [1, 1] : memref<1x128xf32, strided<[128, 1], offset: ?>, 1> to memref<1x?xf32, strided<[128, 1], offset: ?>, 1>
      %subview_5 = memref.subview %56[0, 0] [1, %55] [1, 1] : memref<1x128xf32, #map> to memref<1x?xf32, strided<[128, 1]>>
      sdnn.dma in %subview, %subview_5 {core_id = 1 : i32, signal = array<i32: 19>, wait = array<i32: 20>} : memref<1x?xf32, strided<[128, 1], offset: ?>, 1> memref<1x?xf32, strided<[128, 1]>> -> 
      %alloc_6 = memref.alloc() {bufferNum = 2 : index, bufferSize = 65536 : index, init_signal = 23 : i64, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %57 = sdnn.get_fifo_buffer %alloc_6, %19, {bufferNum = 2 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      sdnn.ew linear %57 src0 %44 src1 %56 a %cst_2 b %cst_2 {sdnn.layout = "CR_RowMajor", signal = array<i32: 11, 20, 24>, wait = array<i32: 10, 19, 23>} : (memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<1x128xf32, #map>, f32, f32) -> ()
      %alloc_7 = memref.alloc() {bufferNum = 2 : index, bufferSize = 65536 : index, init_signal = 26 : i64, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %58 = sdnn.get_fifo_buffer %alloc_7, %18, {bufferNum = 2 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      sdnn.ew mul %58 src0 %57 c %cst_0 {sdnn.layout = "CR_RowMajor", signal = array<i32: 25>, wait = array<i32: 26>} : (memref<128x128xf32, #map>, memref<128x128xf32, #map>, f32) -> ()
      %alloc_8 = memref.alloc() {bufferNum = 2 : index, bufferSize = 65536 : index, init_signal = 28 : i64, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %59 = sdnn.get_fifo_buffer %alloc_8, %17, {bufferNum = 2 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      sdnn.ew mul %59 src0 %57 src1 %57 {sdnn.layout = "CR_RowMajor", wait = array<i32: 28>} : (memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>) -> ()
      %alloc_9 = memref.alloc() {bufferNum = 2 : index, bufferSize = 65536 : index, init_signal = 30 : i64, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %60 = sdnn.get_fifo_buffer %alloc_9, %16, {bufferNum = 2 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      sdnn.ew mul %60 src0 %59 src1 %57 {sdnn.layout = "CR_RowMajor", signal = array<i32: 21, 27, 29>, wait = array<i32: 30>} : (memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>) -> ()
      %alloc_10 = memref.alloc() {bufferNum = 2 : index, bufferSize = 65536 : index, init_signal = 35 : i64, processed, sram = "uni_sram"} : memref<128x128xi32, #map>
      %61 = sdnn.get_fifo_buffer %alloc_10, %15, {bufferNum = 2 : i32, bufferSize = 65536 : i32} : memref<128x128xi32, #map> memref<1xi32, 6> to memref<128x128xi32, #map>
      sdnn.core_wait(3, 11)
      sdnn.core_wait(3, 21)
      sdnn.core_wait(3, 27)
      sdnn.core_wait(3, 29)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%59, %57, %60, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        scf.for %arg17 = %c0_17 to %c16 step %c1_19 {
          scf.for %arg18 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %69 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %70 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.bitcast %69 : f32 to i32
            %73 = arith.andi %72, %arg12 : i32
            %74 = arith.bitcast %68 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.cmpi eq, %75, %arg13 : i32
            %77 = arith.cmpi eq, %73, %arg14 : i32
            %78 = arith.andi %76, %77 : i1
            %79 = arith.cmpi eq, %73, %arg13 : i32
            %80 = arith.cmpi eq, %75, %arg14 : i32
            %81 = arith.andi %79, %80 : i1
            %82 = arith.ori %78, %81 : i1
            %83 = arith.cmpi ugt, %75, %arg13 : i32
            %84 = arith.cmpi ugt, %73, %arg13 : i32
            %85 = arith.ori %83, %84 : i1
            %86 = arith.ori %82, %85 : i1
            %87 = arith.select %86, %arg15, %71 : i32
            %88 = arith.bitcast %87 : i32 to f32
            memref.store %88, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %57, %60, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        %c32 = arith.constant 32 : index
        scf.for %arg17 = %c16 to %c32 step %c1_19 {
          scf.for %arg18 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %69 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %70 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.bitcast %69 : f32 to i32
            %73 = arith.andi %72, %arg12 : i32
            %74 = arith.bitcast %68 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.cmpi eq, %75, %arg13 : i32
            %77 = arith.cmpi eq, %73, %arg14 : i32
            %78 = arith.andi %76, %77 : i1
            %79 = arith.cmpi eq, %73, %arg13 : i32
            %80 = arith.cmpi eq, %75, %arg14 : i32
            %81 = arith.andi %79, %80 : i1
            %82 = arith.ori %78, %81 : i1
            %83 = arith.cmpi ugt, %75, %arg13 : i32
            %84 = arith.cmpi ugt, %73, %arg13 : i32
            %85 = arith.ori %83, %84 : i1
            %86 = arith.ori %82, %85 : i1
            %87 = arith.select %86, %arg15, %71 : i32
            %88 = arith.bitcast %87 : i32 to f32
            memref.store %88, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %57, %60, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c32 = arith.constant 32 : index
        %c48 = arith.constant 48 : index
        scf.for %arg17 = %c32 to %c48 step %c1_19 {
          scf.for %arg18 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %69 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %70 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.bitcast %69 : f32 to i32
            %73 = arith.andi %72, %arg12 : i32
            %74 = arith.bitcast %68 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.cmpi eq, %75, %arg13 : i32
            %77 = arith.cmpi eq, %73, %arg14 : i32
            %78 = arith.andi %76, %77 : i1
            %79 = arith.cmpi eq, %73, %arg13 : i32
            %80 = arith.cmpi eq, %75, %arg14 : i32
            %81 = arith.andi %79, %80 : i1
            %82 = arith.ori %78, %81 : i1
            %83 = arith.cmpi ugt, %75, %arg13 : i32
            %84 = arith.cmpi ugt, %73, %arg13 : i32
            %85 = arith.ori %83, %84 : i1
            %86 = arith.ori %82, %85 : i1
            %87 = arith.select %86, %arg15, %71 : i32
            %88 = arith.bitcast %87 : i32 to f32
            memref.store %88, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %57, %60, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c48 = arith.constant 48 : index
        %c64_20 = arith.constant 64 : index
        scf.for %arg17 = %c48 to %c64_20 step %c1_19 {
          scf.for %arg18 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %69 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %70 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.bitcast %69 : f32 to i32
            %73 = arith.andi %72, %arg12 : i32
            %74 = arith.bitcast %68 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.cmpi eq, %75, %arg13 : i32
            %77 = arith.cmpi eq, %73, %arg14 : i32
            %78 = arith.andi %76, %77 : i1
            %79 = arith.cmpi eq, %73, %arg13 : i32
            %80 = arith.cmpi eq, %75, %arg14 : i32
            %81 = arith.andi %79, %80 : i1
            %82 = arith.ori %78, %81 : i1
            %83 = arith.cmpi ugt, %75, %arg13 : i32
            %84 = arith.cmpi ugt, %73, %arg13 : i32
            %85 = arith.ori %83, %84 : i1
            %86 = arith.ori %82, %85 : i1
            %87 = arith.select %86, %arg15, %71 : i32
            %88 = arith.bitcast %87 : i32 to f32
            memref.store %88, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %57, %60, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c80 = arith.constant 80 : index
        scf.for %arg17 = %c64_20 to %c80 step %c1_19 {
          scf.for %arg18 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %69 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %70 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.bitcast %69 : f32 to i32
            %73 = arith.andi %72, %arg12 : i32
            %74 = arith.bitcast %68 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.cmpi eq, %75, %arg13 : i32
            %77 = arith.cmpi eq, %73, %arg14 : i32
            %78 = arith.andi %76, %77 : i1
            %79 = arith.cmpi eq, %73, %arg13 : i32
            %80 = arith.cmpi eq, %75, %arg14 : i32
            %81 = arith.andi %79, %80 : i1
            %82 = arith.ori %78, %81 : i1
            %83 = arith.cmpi ugt, %75, %arg13 : i32
            %84 = arith.cmpi ugt, %73, %arg13 : i32
            %85 = arith.ori %83, %84 : i1
            %86 = arith.ori %82, %85 : i1
            %87 = arith.select %86, %arg15, %71 : i32
            %88 = arith.bitcast %87 : i32 to f32
            memref.store %88, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %57, %60, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c80 = arith.constant 80 : index
        %c96 = arith.constant 96 : index
        scf.for %arg17 = %c80 to %c96 step %c1_19 {
          scf.for %arg18 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %69 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %70 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.bitcast %69 : f32 to i32
            %73 = arith.andi %72, %arg12 : i32
            %74 = arith.bitcast %68 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.cmpi eq, %75, %arg13 : i32
            %77 = arith.cmpi eq, %73, %arg14 : i32
            %78 = arith.andi %76, %77 : i1
            %79 = arith.cmpi eq, %73, %arg13 : i32
            %80 = arith.cmpi eq, %75, %arg14 : i32
            %81 = arith.andi %79, %80 : i1
            %82 = arith.ori %78, %81 : i1
            %83 = arith.cmpi ugt, %75, %arg13 : i32
            %84 = arith.cmpi ugt, %73, %arg13 : i32
            %85 = arith.ori %83, %84 : i1
            %86 = arith.ori %82, %85 : i1
            %87 = arith.select %86, %arg15, %71 : i32
            %88 = arith.bitcast %87 : i32 to f32
            memref.store %88, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %57, %60, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c96 = arith.constant 96 : index
        %c112 = arith.constant 112 : index
        scf.for %arg17 = %c96 to %c112 step %c1_19 {
          scf.for %arg18 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %69 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %70 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.bitcast %69 : f32 to i32
            %73 = arith.andi %72, %arg12 : i32
            %74 = arith.bitcast %68 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.cmpi eq, %75, %arg13 : i32
            %77 = arith.cmpi eq, %73, %arg14 : i32
            %78 = arith.andi %76, %77 : i1
            %79 = arith.cmpi eq, %73, %arg13 : i32
            %80 = arith.cmpi eq, %75, %arg14 : i32
            %81 = arith.andi %79, %80 : i1
            %82 = arith.ori %78, %81 : i1
            %83 = arith.cmpi ugt, %75, %arg13 : i32
            %84 = arith.cmpi ugt, %73, %arg13 : i32
            %85 = arith.ori %83, %84 : i1
            %86 = arith.ori %82, %85 : i1
            %87 = arith.select %86, %arg15, %71 : i32
            %88 = arith.bitcast %87 : i32 to f32
            memref.store %88, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %57, %60, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c112 = arith.constant 112 : index
        scf.for %arg17 = %c112 to %c128_18 step %c1_19 {
          scf.for %arg18 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %69 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %70 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.bitcast %69 : f32 to i32
            %73 = arith.andi %72, %arg12 : i32
            %74 = arith.bitcast %68 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.cmpi eq, %75, %arg13 : i32
            %77 = arith.cmpi eq, %73, %arg14 : i32
            %78 = arith.andi %76, %77 : i1
            %79 = arith.cmpi eq, %73, %arg13 : i32
            %80 = arith.cmpi eq, %75, %arg14 : i32
            %81 = arith.andi %79, %80 : i1
            %82 = arith.ori %78, %81 : i1
            %83 = arith.cmpi ugt, %75, %arg13 : i32
            %84 = arith.cmpi ugt, %73, %arg13 : i32
            %85 = arith.ori %83, %84 : i1
            %86 = arith.ori %82, %85 : i1
            %87 = arith.select %86, %arg15, %71 : i32
            %88 = arith.bitcast %87 : i32 to f32
            memref.store %88, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 12)
      sdnn.core_arrive(3, 22)
      sdnn.core_arrive(3, 28)
      sdnn.core_arrive(3, 30)
      %alloc_11 = memref.alloc() {bufferNum = 2 : index, bufferSize = 65536 : index, init_signal = 32 : i64, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %62 = sdnn.get_fifo_buffer %alloc_11, %14, {bufferNum = 2 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      sdnn.ew linear %62 src0 %57 src1 %44 a %cst_2 b %cst {sdnn.layout = "CR_RowMajor", signal = array<i32: 13>, wait = array<i32: 12, 22, 32>} : (memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, f32, f32) -> ()
      sdnn.ew mul %62 src0 %62 c %cst_1 {sdnn.layout = "CR_RowMajor", signal = array<i32: 31>} : (memref<128x128xf32, #map>, memref<128x128xf32, #map>, f32) -> ()
      sdnn.core_wait(3, 31)
      sdnn.core_wait(3, 35)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%62 : memref<128x128xf32, #map>) outs(%61 : memref<128x128xi32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xi32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        scf.for %arg11 = %c0_17 to %c16 step %c1_19 {
          scf.for %arg12 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg11, %arg12] : memref<128x128xf32, #map>
            %69 = arith.bitcast %68 : f32 to i32
            memref.store %69, %arg10[%arg11, %arg12] : memref<128x128xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%62 : memref<128x128xf32, #map>) outs(%61 : memref<128x128xi32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xi32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        %c32 = arith.constant 32 : index
        scf.for %arg11 = %c16 to %c32 step %c1_19 {
          scf.for %arg12 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg11, %arg12] : memref<128x128xf32, #map>
            %69 = arith.bitcast %68 : f32 to i32
            memref.store %69, %arg10[%arg11, %arg12] : memref<128x128xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%62 : memref<128x128xf32, #map>) outs(%61 : memref<128x128xi32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xi32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c32 = arith.constant 32 : index
        %c48 = arith.constant 48 : index
        scf.for %arg11 = %c32 to %c48 step %c1_19 {
          scf.for %arg12 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg11, %arg12] : memref<128x128xf32, #map>
            %69 = arith.bitcast %68 : f32 to i32
            memref.store %69, %arg10[%arg11, %arg12] : memref<128x128xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%62 : memref<128x128xf32, #map>) outs(%61 : memref<128x128xi32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xi32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c48 = arith.constant 48 : index
        %c64_20 = arith.constant 64 : index
        scf.for %arg11 = %c48 to %c64_20 step %c1_19 {
          scf.for %arg12 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg11, %arg12] : memref<128x128xf32, #map>
            %69 = arith.bitcast %68 : f32 to i32
            memref.store %69, %arg10[%arg11, %arg12] : memref<128x128xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%62 : memref<128x128xf32, #map>) outs(%61 : memref<128x128xi32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xi32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c80 = arith.constant 80 : index
        scf.for %arg11 = %c64_20 to %c80 step %c1_19 {
          scf.for %arg12 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg11, %arg12] : memref<128x128xf32, #map>
            %69 = arith.bitcast %68 : f32 to i32
            memref.store %69, %arg10[%arg11, %arg12] : memref<128x128xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%62 : memref<128x128xf32, #map>) outs(%61 : memref<128x128xi32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xi32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c80 = arith.constant 80 : index
        %c96 = arith.constant 96 : index
        scf.for %arg11 = %c80 to %c96 step %c1_19 {
          scf.for %arg12 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg11, %arg12] : memref<128x128xf32, #map>
            %69 = arith.bitcast %68 : f32 to i32
            memref.store %69, %arg10[%arg11, %arg12] : memref<128x128xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%62 : memref<128x128xf32, #map>) outs(%61 : memref<128x128xi32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xi32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c96 = arith.constant 96 : index
        %c112 = arith.constant 112 : index
        scf.for %arg11 = %c96 to %c112 step %c1_19 {
          scf.for %arg12 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg11, %arg12] : memref<128x128xf32, #map>
            %69 = arith.bitcast %68 : f32 to i32
            memref.store %69, %arg10[%arg11, %arg12] : memref<128x128xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%62 : memref<128x128xf32, #map>) outs(%61 : memref<128x128xi32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xi32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c112 = arith.constant 112 : index
        scf.for %arg11 = %c112 to %c128_18 step %c1_19 {
          scf.for %arg12 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg11, %arg12] : memref<128x128xf32, #map>
            %69 = arith.bitcast %68 : f32 to i32
            memref.store %69, %arg10[%arg11, %arg12] : memref<128x128xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 32)
      sdnn.core_arrive(3, 33)
      sdnn.core_wait(3, 13)
      sdnn.core_wait(3, 33)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%61, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<128x128xi32, #map>, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        scf.for %arg14 = %c0_17 to %c16 step %c1_19 {
          scf.for %arg15 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg14, %arg15] : memref<128x128xi32, #map>
            %69 = arith.andi %68, %arg10 : i32
            %70 = arith.ori %69, %arg11 : i32
            %71 = arith.andi %68, %arg12 : i32
            %72 = arith.cmpi ugt, %71, %arg11 : i32
            %73 = arith.select %72, %70, %68 : i32
            %74 = arith.bitcast %73 : i32 to f32
            memref.store %74, %arg13[%arg14, %arg15] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<128x128xi32, #map>, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        %c32 = arith.constant 32 : index
        scf.for %arg14 = %c16 to %c32 step %c1_19 {
          scf.for %arg15 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg14, %arg15] : memref<128x128xi32, #map>
            %69 = arith.andi %68, %arg10 : i32
            %70 = arith.ori %69, %arg11 : i32
            %71 = arith.andi %68, %arg12 : i32
            %72 = arith.cmpi ugt, %71, %arg11 : i32
            %73 = arith.select %72, %70, %68 : i32
            %74 = arith.bitcast %73 : i32 to f32
            memref.store %74, %arg13[%arg14, %arg15] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<128x128xi32, #map>, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c32 = arith.constant 32 : index
        %c48 = arith.constant 48 : index
        scf.for %arg14 = %c32 to %c48 step %c1_19 {
          scf.for %arg15 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg14, %arg15] : memref<128x128xi32, #map>
            %69 = arith.andi %68, %arg10 : i32
            %70 = arith.ori %69, %arg11 : i32
            %71 = arith.andi %68, %arg12 : i32
            %72 = arith.cmpi ugt, %71, %arg11 : i32
            %73 = arith.select %72, %70, %68 : i32
            %74 = arith.bitcast %73 : i32 to f32
            memref.store %74, %arg13[%arg14, %arg15] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<128x128xi32, #map>, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c48 = arith.constant 48 : index
        %c64_20 = arith.constant 64 : index
        scf.for %arg14 = %c48 to %c64_20 step %c1_19 {
          scf.for %arg15 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg14, %arg15] : memref<128x128xi32, #map>
            %69 = arith.andi %68, %arg10 : i32
            %70 = arith.ori %69, %arg11 : i32
            %71 = arith.andi %68, %arg12 : i32
            %72 = arith.cmpi ugt, %71, %arg11 : i32
            %73 = arith.select %72, %70, %68 : i32
            %74 = arith.bitcast %73 : i32 to f32
            memref.store %74, %arg13[%arg14, %arg15] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<128x128xi32, #map>, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c80 = arith.constant 80 : index
        scf.for %arg14 = %c64_20 to %c80 step %c1_19 {
          scf.for %arg15 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg14, %arg15] : memref<128x128xi32, #map>
            %69 = arith.andi %68, %arg10 : i32
            %70 = arith.ori %69, %arg11 : i32
            %71 = arith.andi %68, %arg12 : i32
            %72 = arith.cmpi ugt, %71, %arg11 : i32
            %73 = arith.select %72, %70, %68 : i32
            %74 = arith.bitcast %73 : i32 to f32
            memref.store %74, %arg13[%arg14, %arg15] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<128x128xi32, #map>, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c80 = arith.constant 80 : index
        %c96 = arith.constant 96 : index
        scf.for %arg14 = %c80 to %c96 step %c1_19 {
          scf.for %arg15 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg14, %arg15] : memref<128x128xi32, #map>
            %69 = arith.andi %68, %arg10 : i32
            %70 = arith.ori %69, %arg11 : i32
            %71 = arith.andi %68, %arg12 : i32
            %72 = arith.cmpi ugt, %71, %arg11 : i32
            %73 = arith.select %72, %70, %68 : i32
            %74 = arith.bitcast %73 : i32 to f32
            memref.store %74, %arg13[%arg14, %arg15] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<128x128xi32, #map>, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c96 = arith.constant 96 : index
        %c112 = arith.constant 112 : index
        scf.for %arg14 = %c96 to %c112 step %c1_19 {
          scf.for %arg15 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg14, %arg15] : memref<128x128xi32, #map>
            %69 = arith.andi %68, %arg10 : i32
            %70 = arith.ori %69, %arg11 : i32
            %71 = arith.andi %68, %arg12 : i32
            %72 = arith.cmpi ugt, %71, %arg11 : i32
            %73 = arith.select %72, %70, %68 : i32
            %74 = arith.bitcast %73 : i32 to f32
            memref.store %74, %arg13[%arg14, %arg15] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<128x128xi32, #map>, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c112 = arith.constant 112 : index
        scf.for %arg14 = %c112 to %c128_18 step %c1_19 {
          scf.for %arg15 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg14, %arg15] : memref<128x128xi32, #map>
            %69 = arith.andi %68, %arg10 : i32
            %70 = arith.ori %69, %arg11 : i32
            %71 = arith.andi %68, %arg12 : i32
            %72 = arith.cmpi ugt, %71, %arg11 : i32
            %73 = arith.select %72, %70, %68 : i32
            %74 = arith.bitcast %73 : i32 to f32
            memref.store %74, %arg13[%arg14, %arg15] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 14)
      sdnn.core_arrive(3, 34)
      sdnn.ew lut %44 src0 %44 lut_func tanh {kOverflow = 0.000000e+00 : f32, kUnderflow = 0.000000e+00 : f32, lut_max = 15.984375 : f32, lut_min = 0.000000e+00 : f32, packedid = 231491 : ui32, sdnn.layout = "CR_RowMajor", signal = array<i32: 15>, wait = array<i32: 14>} : (memref<128x128xf32, #map>, memref<128x128xf32, #map>) -> ()
      %alloc_12 = memref.alloc() {bufferNum = 2 : index, bufferSize = 65536 : index, init_signal = 38 : i64, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %63 = sdnn.get_fifo_buffer %alloc_12, %13, {bufferNum = 2 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      sdnn.core_wait(3, 15)
      sdnn.core_wait(3, 34)
      sdnn.core_wait(3, 38)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%61, %44, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<128x128xi32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%63 : memref<128x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xi32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        scf.for %arg16 = %c0_17 to %c16 step %c1_19 {
          scf.for %arg17 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg16, %arg17] : memref<128x128xi32, #map>
            %69 = memref.load %arg10[%arg16, %arg17] : memref<128x128xf32, #map>
            %70 = arith.ori %68, %arg11 : i32
            %71 = arith.bitcast %69 : f32 to i32
            %72 = arith.andi %68, %arg12 : i32
            %73 = arith.cmpi eq, %72, %arg12 : i32
            %74 = arith.andi %68, %arg13 : i32
            %75 = arith.cmpi ne, %74, %arg14 : i32
            %76 = arith.andi %73, %75 : i1
            %77 = arith.select %76, %70, %71 : i32
            %78 = arith.bitcast %77 : i32 to f32
            memref.store %78, %arg15[%arg16, %arg17] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %44, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<128x128xi32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%63 : memref<128x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xi32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        %c32 = arith.constant 32 : index
        scf.for %arg16 = %c16 to %c32 step %c1_19 {
          scf.for %arg17 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg16, %arg17] : memref<128x128xi32, #map>
            %69 = memref.load %arg10[%arg16, %arg17] : memref<128x128xf32, #map>
            %70 = arith.ori %68, %arg11 : i32
            %71 = arith.bitcast %69 : f32 to i32
            %72 = arith.andi %68, %arg12 : i32
            %73 = arith.cmpi eq, %72, %arg12 : i32
            %74 = arith.andi %68, %arg13 : i32
            %75 = arith.cmpi ne, %74, %arg14 : i32
            %76 = arith.andi %73, %75 : i1
            %77 = arith.select %76, %70, %71 : i32
            %78 = arith.bitcast %77 : i32 to f32
            memref.store %78, %arg15[%arg16, %arg17] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %44, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<128x128xi32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%63 : memref<128x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xi32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c32 = arith.constant 32 : index
        %c48 = arith.constant 48 : index
        scf.for %arg16 = %c32 to %c48 step %c1_19 {
          scf.for %arg17 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg16, %arg17] : memref<128x128xi32, #map>
            %69 = memref.load %arg10[%arg16, %arg17] : memref<128x128xf32, #map>
            %70 = arith.ori %68, %arg11 : i32
            %71 = arith.bitcast %69 : f32 to i32
            %72 = arith.andi %68, %arg12 : i32
            %73 = arith.cmpi eq, %72, %arg12 : i32
            %74 = arith.andi %68, %arg13 : i32
            %75 = arith.cmpi ne, %74, %arg14 : i32
            %76 = arith.andi %73, %75 : i1
            %77 = arith.select %76, %70, %71 : i32
            %78 = arith.bitcast %77 : i32 to f32
            memref.store %78, %arg15[%arg16, %arg17] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %44, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<128x128xi32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%63 : memref<128x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xi32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c48 = arith.constant 48 : index
        %c64_20 = arith.constant 64 : index
        scf.for %arg16 = %c48 to %c64_20 step %c1_19 {
          scf.for %arg17 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg16, %arg17] : memref<128x128xi32, #map>
            %69 = memref.load %arg10[%arg16, %arg17] : memref<128x128xf32, #map>
            %70 = arith.ori %68, %arg11 : i32
            %71 = arith.bitcast %69 : f32 to i32
            %72 = arith.andi %68, %arg12 : i32
            %73 = arith.cmpi eq, %72, %arg12 : i32
            %74 = arith.andi %68, %arg13 : i32
            %75 = arith.cmpi ne, %74, %arg14 : i32
            %76 = arith.andi %73, %75 : i1
            %77 = arith.select %76, %70, %71 : i32
            %78 = arith.bitcast %77 : i32 to f32
            memref.store %78, %arg15[%arg16, %arg17] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %44, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<128x128xi32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%63 : memref<128x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xi32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c80 = arith.constant 80 : index
        scf.for %arg16 = %c64_20 to %c80 step %c1_19 {
          scf.for %arg17 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg16, %arg17] : memref<128x128xi32, #map>
            %69 = memref.load %arg10[%arg16, %arg17] : memref<128x128xf32, #map>
            %70 = arith.ori %68, %arg11 : i32
            %71 = arith.bitcast %69 : f32 to i32
            %72 = arith.andi %68, %arg12 : i32
            %73 = arith.cmpi eq, %72, %arg12 : i32
            %74 = arith.andi %68, %arg13 : i32
            %75 = arith.cmpi ne, %74, %arg14 : i32
            %76 = arith.andi %73, %75 : i1
            %77 = arith.select %76, %70, %71 : i32
            %78 = arith.bitcast %77 : i32 to f32
            memref.store %78, %arg15[%arg16, %arg17] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %44, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<128x128xi32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%63 : memref<128x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xi32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c80 = arith.constant 80 : index
        %c96 = arith.constant 96 : index
        scf.for %arg16 = %c80 to %c96 step %c1_19 {
          scf.for %arg17 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg16, %arg17] : memref<128x128xi32, #map>
            %69 = memref.load %arg10[%arg16, %arg17] : memref<128x128xf32, #map>
            %70 = arith.ori %68, %arg11 : i32
            %71 = arith.bitcast %69 : f32 to i32
            %72 = arith.andi %68, %arg12 : i32
            %73 = arith.cmpi eq, %72, %arg12 : i32
            %74 = arith.andi %68, %arg13 : i32
            %75 = arith.cmpi ne, %74, %arg14 : i32
            %76 = arith.andi %73, %75 : i1
            %77 = arith.select %76, %70, %71 : i32
            %78 = arith.bitcast %77 : i32 to f32
            memref.store %78, %arg15[%arg16, %arg17] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %44, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<128x128xi32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%63 : memref<128x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xi32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c96 = arith.constant 96 : index
        %c112 = arith.constant 112 : index
        scf.for %arg16 = %c96 to %c112 step %c1_19 {
          scf.for %arg17 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg16, %arg17] : memref<128x128xi32, #map>
            %69 = memref.load %arg10[%arg16, %arg17] : memref<128x128xf32, #map>
            %70 = arith.ori %68, %arg11 : i32
            %71 = arith.bitcast %69 : f32 to i32
            %72 = arith.andi %68, %arg12 : i32
            %73 = arith.cmpi eq, %72, %arg12 : i32
            %74 = arith.andi %68, %arg13 : i32
            %75 = arith.cmpi ne, %74, %arg14 : i32
            %76 = arith.andi %73, %75 : i1
            %77 = arith.select %76, %70, %71 : i32
            %78 = arith.bitcast %77 : i32 to f32
            memref.store %78, %arg15[%arg16, %arg17] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %44, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<128x128xi32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%63 : memref<128x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xi32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c112 = arith.constant 112 : index
        scf.for %arg16 = %c112 to %c128_18 step %c1_19 {
          scf.for %arg17 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg16, %arg17] : memref<128x128xi32, #map>
            %69 = memref.load %arg10[%arg16, %arg17] : memref<128x128xf32, #map>
            %70 = arith.ori %68, %arg11 : i32
            %71 = arith.bitcast %69 : f32 to i32
            %72 = arith.andi %68, %arg12 : i32
            %73 = arith.cmpi eq, %72, %arg12 : i32
            %74 = arith.andi %68, %arg13 : i32
            %75 = arith.cmpi ne, %74, %arg14 : i32
            %76 = arith.andi %73, %75 : i1
            %77 = arith.select %76, %70, %71 : i32
            %78 = arith.bitcast %77 : i32 to f32
            memref.store %78, %arg15[%arg16, %arg17] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 16)
      sdnn.core_arrive(3, 35)
      sdnn.core_arrive(3, 36)
      sdnn.ew linear %63 src0 %63 a %cst_2 c %cst_2 {sdnn.layout = "CR_RowMajor", wait = array<i32: 36>} : (memref<128x128xf32, #map>, memref<128x128xf32, #map>, f32, f32) -> ()
      %alloc_13 = memref.alloc() {bufferNum = 2 : index, bufferSize = 65536 : index, init_signal = 40 : i64, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %64 = sdnn.get_fifo_buffer %alloc_13, %12, {bufferNum = 2 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      sdnn.ew mul %64 src0 %57 src1 %63 c %cst_0 {sdnn.layout = "CR_RowMajor", signal = array<i32: 23, 37, 39>, wait = array<i32: 24, 40>} : (memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, f32) -> ()
      sdnn.core_wait(3, 16)
      sdnn.core_wait(3, 25)
      sdnn.core_wait(3, 37)
      sdnn.core_wait(3, 39)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%58, %63, %64, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        scf.for %arg17 = %c0_17 to %c16 step %c1_19 {
          scf.for %arg18 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %69 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %70 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.bitcast %69 : f32 to i32
            %73 = arith.andi %72, %arg12 : i32
            %74 = arith.bitcast %68 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.cmpi eq, %75, %arg13 : i32
            %77 = arith.cmpi eq, %73, %arg14 : i32
            %78 = arith.andi %76, %77 : i1
            %79 = arith.cmpi eq, %73, %arg13 : i32
            %80 = arith.cmpi eq, %75, %arg14 : i32
            %81 = arith.andi %79, %80 : i1
            %82 = arith.ori %78, %81 : i1
            %83 = arith.cmpi ugt, %75, %arg13 : i32
            %84 = arith.cmpi ugt, %73, %arg13 : i32
            %85 = arith.ori %83, %84 : i1
            %86 = arith.ori %82, %85 : i1
            %87 = arith.select %86, %arg15, %71 : i32
            %88 = arith.bitcast %87 : i32 to f32
            memref.store %88, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%58, %63, %64, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        %c32 = arith.constant 32 : index
        scf.for %arg17 = %c16 to %c32 step %c1_19 {
          scf.for %arg18 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %69 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %70 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.bitcast %69 : f32 to i32
            %73 = arith.andi %72, %arg12 : i32
            %74 = arith.bitcast %68 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.cmpi eq, %75, %arg13 : i32
            %77 = arith.cmpi eq, %73, %arg14 : i32
            %78 = arith.andi %76, %77 : i1
            %79 = arith.cmpi eq, %73, %arg13 : i32
            %80 = arith.cmpi eq, %75, %arg14 : i32
            %81 = arith.andi %79, %80 : i1
            %82 = arith.ori %78, %81 : i1
            %83 = arith.cmpi ugt, %75, %arg13 : i32
            %84 = arith.cmpi ugt, %73, %arg13 : i32
            %85 = arith.ori %83, %84 : i1
            %86 = arith.ori %82, %85 : i1
            %87 = arith.select %86, %arg15, %71 : i32
            %88 = arith.bitcast %87 : i32 to f32
            memref.store %88, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%58, %63, %64, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c32 = arith.constant 32 : index
        %c48 = arith.constant 48 : index
        scf.for %arg17 = %c32 to %c48 step %c1_19 {
          scf.for %arg18 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %69 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %70 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.bitcast %69 : f32 to i32
            %73 = arith.andi %72, %arg12 : i32
            %74 = arith.bitcast %68 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.cmpi eq, %75, %arg13 : i32
            %77 = arith.cmpi eq, %73, %arg14 : i32
            %78 = arith.andi %76, %77 : i1
            %79 = arith.cmpi eq, %73, %arg13 : i32
            %80 = arith.cmpi eq, %75, %arg14 : i32
            %81 = arith.andi %79, %80 : i1
            %82 = arith.ori %78, %81 : i1
            %83 = arith.cmpi ugt, %75, %arg13 : i32
            %84 = arith.cmpi ugt, %73, %arg13 : i32
            %85 = arith.ori %83, %84 : i1
            %86 = arith.ori %82, %85 : i1
            %87 = arith.select %86, %arg15, %71 : i32
            %88 = arith.bitcast %87 : i32 to f32
            memref.store %88, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%58, %63, %64, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c48 = arith.constant 48 : index
        %c64_20 = arith.constant 64 : index
        scf.for %arg17 = %c48 to %c64_20 step %c1_19 {
          scf.for %arg18 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %69 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %70 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.bitcast %69 : f32 to i32
            %73 = arith.andi %72, %arg12 : i32
            %74 = arith.bitcast %68 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.cmpi eq, %75, %arg13 : i32
            %77 = arith.cmpi eq, %73, %arg14 : i32
            %78 = arith.andi %76, %77 : i1
            %79 = arith.cmpi eq, %73, %arg13 : i32
            %80 = arith.cmpi eq, %75, %arg14 : i32
            %81 = arith.andi %79, %80 : i1
            %82 = arith.ori %78, %81 : i1
            %83 = arith.cmpi ugt, %75, %arg13 : i32
            %84 = arith.cmpi ugt, %73, %arg13 : i32
            %85 = arith.ori %83, %84 : i1
            %86 = arith.ori %82, %85 : i1
            %87 = arith.select %86, %arg15, %71 : i32
            %88 = arith.bitcast %87 : i32 to f32
            memref.store %88, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%58, %63, %64, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c80 = arith.constant 80 : index
        scf.for %arg17 = %c64_20 to %c80 step %c1_19 {
          scf.for %arg18 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %69 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %70 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.bitcast %69 : f32 to i32
            %73 = arith.andi %72, %arg12 : i32
            %74 = arith.bitcast %68 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.cmpi eq, %75, %arg13 : i32
            %77 = arith.cmpi eq, %73, %arg14 : i32
            %78 = arith.andi %76, %77 : i1
            %79 = arith.cmpi eq, %73, %arg13 : i32
            %80 = arith.cmpi eq, %75, %arg14 : i32
            %81 = arith.andi %79, %80 : i1
            %82 = arith.ori %78, %81 : i1
            %83 = arith.cmpi ugt, %75, %arg13 : i32
            %84 = arith.cmpi ugt, %73, %arg13 : i32
            %85 = arith.ori %83, %84 : i1
            %86 = arith.ori %82, %85 : i1
            %87 = arith.select %86, %arg15, %71 : i32
            %88 = arith.bitcast %87 : i32 to f32
            memref.store %88, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%58, %63, %64, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c80 = arith.constant 80 : index
        %c96 = arith.constant 96 : index
        scf.for %arg17 = %c80 to %c96 step %c1_19 {
          scf.for %arg18 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %69 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %70 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.bitcast %69 : f32 to i32
            %73 = arith.andi %72, %arg12 : i32
            %74 = arith.bitcast %68 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.cmpi eq, %75, %arg13 : i32
            %77 = arith.cmpi eq, %73, %arg14 : i32
            %78 = arith.andi %76, %77 : i1
            %79 = arith.cmpi eq, %73, %arg13 : i32
            %80 = arith.cmpi eq, %75, %arg14 : i32
            %81 = arith.andi %79, %80 : i1
            %82 = arith.ori %78, %81 : i1
            %83 = arith.cmpi ugt, %75, %arg13 : i32
            %84 = arith.cmpi ugt, %73, %arg13 : i32
            %85 = arith.ori %83, %84 : i1
            %86 = arith.ori %82, %85 : i1
            %87 = arith.select %86, %arg15, %71 : i32
            %88 = arith.bitcast %87 : i32 to f32
            memref.store %88, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%58, %63, %64, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c96 = arith.constant 96 : index
        %c112 = arith.constant 112 : index
        scf.for %arg17 = %c96 to %c112 step %c1_19 {
          scf.for %arg18 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %69 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %70 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.bitcast %69 : f32 to i32
            %73 = arith.andi %72, %arg12 : i32
            %74 = arith.bitcast %68 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.cmpi eq, %75, %arg13 : i32
            %77 = arith.cmpi eq, %73, %arg14 : i32
            %78 = arith.andi %76, %77 : i1
            %79 = arith.cmpi eq, %73, %arg13 : i32
            %80 = arith.cmpi eq, %75, %arg14 : i32
            %81 = arith.andi %79, %80 : i1
            %82 = arith.ori %78, %81 : i1
            %83 = arith.cmpi ugt, %75, %arg13 : i32
            %84 = arith.cmpi ugt, %73, %arg13 : i32
            %85 = arith.ori %83, %84 : i1
            %86 = arith.ori %82, %85 : i1
            %87 = arith.select %86, %arg15, %71 : i32
            %88 = arith.bitcast %87 : i32 to f32
            memref.store %88, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%58, %63, %64, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%44 : memref<128x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_17 = arith.constant 0 : index
        %c128_18 = arith.constant 128 : index
        %c1_19 = arith.constant 1 : index
        %c112 = arith.constant 112 : index
        scf.for %arg17 = %c112 to %c128_18 step %c1_19 {
          scf.for %arg18 = %c0_17 to %c128_18 step %c1_19 {
            %68 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %69 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %70 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.bitcast %69 : f32 to i32
            %73 = arith.andi %72, %arg12 : i32
            %74 = arith.bitcast %68 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.cmpi eq, %75, %arg13 : i32
            %77 = arith.cmpi eq, %73, %arg14 : i32
            %78 = arith.andi %76, %77 : i1
            %79 = arith.cmpi eq, %73, %arg13 : i32
            %80 = arith.cmpi eq, %75, %arg14 : i32
            %81 = arith.andi %79, %80 : i1
            %82 = arith.ori %78, %81 : i1
            %83 = arith.cmpi ugt, %75, %arg13 : i32
            %84 = arith.cmpi ugt, %73, %arg13 : i32
            %85 = arith.ori %83, %84 : i1
            %86 = arith.ori %82, %85 : i1
            %87 = arith.select %86, %arg15, %71 : i32
            %88 = arith.bitcast %87 : i32 to f32
            memref.store %88, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 17)
      sdnn.core_arrive(3, 26)
      sdnn.core_arrive(3, 38)
      sdnn.core_arrive(3, 40)
      %65 = arith.muli %40, %c131072 : index
      %66 = arith.addi %65, %43 : index
      %reinterpret_cast_14 = memref.reinterpret_cast %arg3 to offset: [%66], sizes: [128, 128], strides: [1024, 1] : memref<*xf32, 1> to memref<128x128xf32, strided<[1024, 1], offset: ?>, 1>
      %67 = arith.minsi %49, %c128 : index
      %subview_15 = memref.subview %44[0, 0] [%67, %55] [1, 1] : memref<128x128xf32, #map> to memref<?x?xf32, strided<[128, 1]>>
      %subview_16 = memref.subview %reinterpret_cast_14[0, 0] [%67, %55] [1, 1] : memref<128x128xf32, strided<[1024, 1], offset: ?>, 1> to memref<?x?xf32, strided<[1024, 1], offset: ?>, 1>
      %cast = memref.cast %subview_16 : memref<?x?xf32, strided<[1024, 1], offset: ?>, 1> to memref<?x?xf32, strided<[?, 1], offset: ?>, 1>
      sdnn.dma out %subview_15, %cast {signal = array<i32: 18>, wait = array<i32: 17>} : memref<?x?xf32, strided<[128, 1]>> memref<?x?xf32, strided<[?, 1], offset: ?>, 1> -> 
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
