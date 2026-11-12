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
    %cst = arith.constant 4.471500e-02 : f32
    %c64_i32 = arith.constant 64 : i32
    %c8_i32 = arith.constant 8 : i32
    %cst_0 = arith.constant 5.000000e-01 : f32
    %cst_1 = arith.constant 0.797884583 : f32
    %cst_2 = arith.constant 1.000000e+00 : f32
    %c2_i32 = arith.constant 2 : i32
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
    %c2048 = arith.constant 2048 : index
    %c4096 = arith.constant 4096 : index
    %c1024 = arith.constant 1024 : index
    %c32 = arith.constant 32 : index
    %c64 = arith.constant 64 : index
    %c128 = arith.constant 128 : index
    %c16 = arith.constant 16 : index
    %c-65536_i32 = arith.constant -65536 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %reinterpret_cast = memref.reinterpret_cast %arg4 to offset: [0], sizes: [1024], strides: [1] : memref<*xf32, 1> to memref<1024xf32, 1>
    "sdnn.init"(%reinterpret_cast) {signal = [array<i32: 21, 11, 5, 3, 9, 7, 23, 41, 29, 32, 34, 36, 38, 44, 46>], signal_num = array<i64: 5, 5, 255, 137, 160, 136, 5, 5, 5, 5, 5, 5, 5, 5, 5>} : (memref<1024xf32, 1>) -> ()
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
    %21 = sdnn.counter {bufferNum = 136 : i32} : memref<1xi32, 6>
    %22 = sdnn.counter {bufferNum = 160 : i32} : memref<1xi32, 6>
    %23 = sdnn.counter {bufferNum = 137 : i32} : memref<1xi32, 6>
    %24 = sdnn.counter {bufferNum = 255 : i32} : memref<1xi32, 6>
    %25 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    %26 = sdnn.counter {bufferNum = 5 : i32} : memref<1xi32, 6>
    scf.for %arg8 = %10 to %11 step %c1 {
      %27 = arith.index_cast %arg8 : index to i32
      %28 = arith.divsi %27, %arg7 : i32
      %29 = arith.divsi %28, %arg6 : i32
      %30 = arith.divsi %29, %c16_i32 : i32
      %31 = arith.muli %30, %c8_i32 : i32
      %32 = arith.subi %c1_i32, %31 : i32
      %33 = arith.minsi %32, %c8_i32 : i32
      %34 = arith.remsi %29, %33 : i32
      %35 = arith.addi %31, %34 : i32
      %36 = arith.remsi %29, %c16_i32 : i32
      %37 = arith.divsi %36, %33 : i32
      %38 = arith.cmpi sge, %35, %c0_i32 : i32
      llvm.intr.assume %38 : i1
      %39 = arith.cmpi sge, %37, %c0_i32 : i32
      llvm.intr.assume %39 : i1
      %40 = arith.muli %35, %c16_i32 : i32
      %41 = arith.index_cast %35 : i32 to index
      %42 = arith.muli %37, %c64_i32 : i32
      %43 = arith.index_cast %37 : i32 to index
      %44 = arith.muli %43, %c64 : index
      %alloca = memref.alloca() : memref<1xi32>
      memref.store %c0_i32, %alloca[%c0] : memref<1xi32>
      %alloc = memref.alloc() {bufferNum = 5 : index, bufferSize = 4096 : index, init_signal = 21 : i64, processed, sram = "uni_sram"} : memref<16x64xf32, #map>
      %45 = sdnn.get_fifo_buffer %alloc, %26, {bufferNum = 5 : i32, bufferSize = 4096 : i32} : memref<16x64xf32, #map> memref<1xi32, 6> to memref<16x64xf32, #map>
      %alloc_3 = memref.alloc() {bufferNum = 5 : index, bufferSize = 4096 : index, init_signal = 11 : i64, pingpong_single, processed, sram = "uni_sram"} : memref<16x64xf32, #map>
      %46 = sdnn.get_fifo_buffer %alloc_3, %25, {bufferNum = 5 : i32, bufferSize = 4096 : i32} : memref<16x64xf32, #map> memref<1xi32, 6> to memref<16x64xf32, #map>
      sdnn.core_wait(4, 11) {core_name = "mma"}
      scf.for %arg9 = %c0_i32 to %c2_i32 step %c1_i32  : i32 {
        %70 = arith.index_cast %arg9 : i32 to index
        %71 = arith.muli %70, %c32 : index
        %72 = arith.muli %41, %c1024 : index
        %73 = arith.addi %72, %71 : index
        %74 = arith.cmpi sge, %73, %c1024 : index
        %75 = arith.divsi %73, %c1024 : index
        %76 = arith.muli %75, %c1024 : index
        %77 = arith.subi %73, %76 : index
        %78 = arith.select %74, %77, %73 : index
        %79 = arith.divsi %78, %c64 : index
        %80 = arith.addi %79, %c16 : index
        %81 = arith.minsi %80, %c16 : index
        %82 = arith.subi %81, %79 : index
        %reinterpret_cast_18 = memref.reinterpret_cast %arg0 to offset: [%73], sizes: [%82, 32], strides: [64, 1] : memref<*xbf16, 1> to memref<?x32xbf16, strided<[64, 1], offset: ?>, 1>
        %cast_19 = memref.cast %reinterpret_cast_18 : memref<?x32xbf16, strided<[64, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
        %alloc_20 = memref.alloc() {bufferNum = 255 : index, bufferSize = 2048 : index, init_signal = 5 : i64, processed, sram = "l1d"} : memref<16x32xf32, #map1, 3>
        %83 = sdnn.get_fifo_buffer %alloc_20, %24, {bufferNum = 255 : i32, bufferSize = 2048 : i32} : memref<16x32xf32, #map1, 3> memref<1xi32, 6> to memref<16x32xf32, #map1, 3>
        %alloc_21 = memref.alloc() {bufferNum = 137 : index, bufferSize = 2048 : index, init_signal = 3 : i64, processed, sram = "uni_sram", trans = false} : memref<16x32xf32, #map1>
        %84 = sdnn.get_fifo_buffer %alloc_21, %23, {bufferNum = 137 : i32, bufferSize = 2048 : i32} : memref<16x32xf32, #map1> memref<1xi32, 6> to memref<16x32xf32, #map1>
        %dim = memref.dim %reinterpret_cast_18, %c0 : memref<?x32xbf16, strided<[64, 1], offset: ?>, 1>
        %subview_22 = memref.subview %84[0, 0] [%dim, 32] [1, 1] : memref<16x32xf32, #map1> to memref<?x32xf32, strided<[32, 1]>>
        %cast_23 = memref.cast %subview_22 : memref<?x32xf32, strided<[32, 1]>> to memref<?x?xf32, strided<[32, 1]>>
        sdnn.dma in %cast_19, %cast_23 {core_id = 1 : i32, signal = array<i32: 2>, wait = array<i32: 3>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[32, 1]>> -> 
        sdnn.ds %84, %83 mask_dims[%c16, %c32] {sdnn.layout = "CR_RowMajor", signal = array<i32: 3, 4>, signal_cached = array<i32: 4>, wait = array<i32: 2, 5>, wait_cached = array<i32: 5>} : memref<16x32xf32, #map1> memref<16x32xf32, #map1, 3> -> 
        %85 = arith.muli %70, %c4096 : index
        %86 = arith.addi %85, %44 : index
        %87 = arith.remsi %86, %c128 : index
        %88 = arith.addi %87, %c64 : index
        %89 = arith.minsi %88, %c128 : index
        %90 = arith.subi %89, %87 : index
        %reinterpret_cast_24 = memref.reinterpret_cast %arg1 to offset: [%86], sizes: [32, %90], strides: [128, 1] : memref<*xbf16, 1> to memref<32x?xbf16, strided<[128, 1], offset: ?>, 1>
        %cast_25 = memref.cast %reinterpret_cast_24 : memref<32x?xbf16, strided<[128, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
        %alloc_26 = memref.alloc() {bufferNum = 160 : index, bufferSize = 8192 : index, init_signal = 9 : i64, processed, sram = "l1w"} : memref<32x64xf32, #map, 4>
        %91 = sdnn.get_fifo_buffer %alloc_26, %22, {bufferNum = 160 : i32, bufferSize = 8192 : i32} : memref<32x64xf32, #map, 4> memref<1xi32, 6> to memref<32x64xf32, #map, 4>
        %alloc_27 = memref.alloc() {bufferNum = 136 : index, bufferSize = 8192 : index, init_signal = 7 : i64, processed, sram = "uni_sram", trans = false} : memref<32x64xf32, #map>
        %92 = sdnn.get_fifo_buffer %alloc_27, %21, {bufferNum = 136 : i32, bufferSize = 8192 : i32} : memref<32x64xf32, #map> memref<1xi32, 6> to memref<32x64xf32, #map>
        %dim_28 = memref.dim %reinterpret_cast_24, %c1 : memref<32x?xbf16, strided<[128, 1], offset: ?>, 1>
        %subview_29 = memref.subview %92[0, 0] [32, %dim_28] [1, 1] : memref<32x64xf32, #map> to memref<32x?xf32, strided<[64, 1]>>
        %cast_30 = memref.cast %subview_29 : memref<32x?xf32, strided<[64, 1]>> to memref<?x?xf32, strided<[64, 1]>>
        sdnn.dma in %cast_25, %cast_30 {core_id = 6 : i32, signal = array<i32: 6>, wait = array<i32: 7>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[64, 1]>> -> 
        sdnn.ds %92, %91 mask_dims[%c32, %c64] {sdnn.layout = "CR_RowMajor", signal = array<i32: 7, 8>, signal_cached = array<i32: 8>, wait = array<i32: 6, 9>, wait_cached = array<i32: 9>} : memref<32x64xf32, #map> memref<32x64xf32, #map, 4> -> 
        %93 = memref.load %alloca[%c0] : memref<1xi32>
        sdnn.mma %83, %91, %46 acc %93 mask_dims[%c16, %c64, %c32] {indexing_maps = [#map2, #map3, #map4], rcOut = false, sdnn.layout = "CR_RowMajor", signal = array<i32: 5, 9>, wait = array<i32: 4, 8>} : (memref<16x32xf32, #map1, 3>, memref<32x64xf32, #map, 4>, memref<16x64xf32, #map>, i32, index, index, index) -> ()
        %94 = arith.addi %93, %c1_i32 : i32
        memref.store %94, %alloca[%c0] : memref<1xi32>
      } {mac_acc = true, sdnn.arg_layout.1 = "CR_RowMajor", sdnn.layout = "CR_RowMajor"}
      sdnn.core_arrive(4, 10) {core_name = "mma"}
      %reinterpret_cast_4 = memref.reinterpret_cast %arg2 to offset: [%44], sizes: [1, 64], strides: [64, 1] : memref<*xbf16, 1> to memref<1x64xbf16, strided<[64, 1], offset: ?>, 1>
      %47 = arith.index_cast %40 : i32 to index
      %48 = arith.addi %47, %c16 : index
      %49 = arith.minsi %48, %c16 : index
      %50 = arith.maxsi %49, %47 : index
      %51 = arith.subi %50, %47 : index
      %52 = arith.index_cast %42 : i32 to index
      %53 = arith.addi %52, %c64 : index
      %54 = arith.minsi %53, %c128 : index
      %55 = arith.maxsi %54, %52 : index
      %56 = arith.subi %55, %52 : index
      %57 = arith.minsi %56, %c64 : index
      %alloc_5 = memref.alloc() {bufferNum = 5 : index, bufferSize = 256 : index, init_signal = 23 : i64, processed, sram = "uni_sram", trans = false} : memref<1x64xf32, #map>
      %58 = sdnn.get_fifo_buffer %alloc_5, %20, {bufferNum = 5 : i32, bufferSize = 256 : i32} : memref<1x64xf32, #map> memref<1xi32, 6> to memref<1x64xf32, #map>
      %subview = memref.subview %reinterpret_cast_4[0, 0] [1, %57] [1, 1] : memref<1x64xbf16, strided<[64, 1], offset: ?>, 1> to memref<1x?xbf16, strided<[64, 1], offset: ?>, 1>
      %alloc_6 = memref.alloc() {bufferNum = 5 : index, bufferSize = 4096 : index, init_signal = 41 : i64, processed, sram = "uni_sram"} : memref<16x64xi32, #map>
      %59 = sdnn.get_fifo_buffer %alloc_6, %19, {bufferNum = 5 : i32, bufferSize = 4096 : i32} : memref<16x64xi32, #map> memref<1xi32, 6> to memref<16x64xi32, #map>
      sdnn.core_wait(3, 10)
      sdnn.core_wait(3, 21)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%46, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        scf.for %arg18 = %c0_18 to %c2 step %c1_19 {
          scf.for %arg19 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg10 : i32
            %73 = arith.ori %71, %arg11 : i32
            %74 = arith.cmpi ugt, %72, %arg12 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg13 : i32
            %77 = arith.shrui %71, %arg14 : i32
            %78 = arith.andi %77, %arg15 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg16 : i32
            %81 = arith.cmpi uge, %72, %arg12 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%46, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        %c4 = arith.constant 4 : index
        scf.for %arg18 = %c2 to %c4 step %c1_19 {
          scf.for %arg19 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg10 : i32
            %73 = arith.ori %71, %arg11 : i32
            %74 = arith.cmpi ugt, %72, %arg12 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg13 : i32
            %77 = arith.shrui %71, %arg14 : i32
            %78 = arith.andi %77, %arg15 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg16 : i32
            %81 = arith.cmpi uge, %72, %arg12 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%46, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c4 = arith.constant 4 : index
        %c6 = arith.constant 6 : index
        scf.for %arg18 = %c4 to %c6 step %c1_19 {
          scf.for %arg19 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg10 : i32
            %73 = arith.ori %71, %arg11 : i32
            %74 = arith.cmpi ugt, %72, %arg12 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg13 : i32
            %77 = arith.shrui %71, %arg14 : i32
            %78 = arith.andi %77, %arg15 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg16 : i32
            %81 = arith.cmpi uge, %72, %arg12 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%46, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c6 = arith.constant 6 : index
        %c8 = arith.constant 8 : index
        scf.for %arg18 = %c6 to %c8 step %c1_19 {
          scf.for %arg19 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg10 : i32
            %73 = arith.ori %71, %arg11 : i32
            %74 = arith.cmpi ugt, %72, %arg12 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg13 : i32
            %77 = arith.shrui %71, %arg14 : i32
            %78 = arith.andi %77, %arg15 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg16 : i32
            %81 = arith.cmpi uge, %72, %arg12 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%46, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c8 = arith.constant 8 : index
        %c10 = arith.constant 10 : index
        scf.for %arg18 = %c8 to %c10 step %c1_19 {
          scf.for %arg19 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg10 : i32
            %73 = arith.ori %71, %arg11 : i32
            %74 = arith.cmpi ugt, %72, %arg12 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg13 : i32
            %77 = arith.shrui %71, %arg14 : i32
            %78 = arith.andi %77, %arg15 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg16 : i32
            %81 = arith.cmpi uge, %72, %arg12 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%46, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c10 = arith.constant 10 : index
        %c12 = arith.constant 12 : index
        scf.for %arg18 = %c10 to %c12 step %c1_19 {
          scf.for %arg19 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg10 : i32
            %73 = arith.ori %71, %arg11 : i32
            %74 = arith.cmpi ugt, %72, %arg12 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg13 : i32
            %77 = arith.shrui %71, %arg14 : i32
            %78 = arith.andi %77, %arg15 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg16 : i32
            %81 = arith.cmpi uge, %72, %arg12 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%46, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c12 = arith.constant 12 : index
        %c14 = arith.constant 14 : index
        scf.for %arg18 = %c12 to %c14 step %c1_19 {
          scf.for %arg19 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg10 : i32
            %73 = arith.ori %71, %arg11 : i32
            %74 = arith.cmpi ugt, %72, %arg12 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg13 : i32
            %77 = arith.shrui %71, %arg14 : i32
            %78 = arith.andi %77, %arg15 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg16 : i32
            %81 = arith.cmpi uge, %72, %arg12 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%46, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c16_19 = arith.constant 16 : index
        %c1_20 = arith.constant 1 : index
        %c64_21 = arith.constant 64 : index
        %c14 = arith.constant 14 : index
        scf.for %arg18 = %c14 to %c16_19 step %c1_20 {
          scf.for %arg19 = %c0_18 to %c64_21 step %c1_20 {
            %70 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg10 : i32
            %73 = arith.ori %71, %arg11 : i32
            %74 = arith.cmpi ugt, %72, %arg12 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg13 : i32
            %77 = arith.shrui %71, %arg14 : i32
            %78 = arith.andi %77, %arg15 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg16 : i32
            %81 = arith.cmpi uge, %72, %arg12 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 11)
      sdnn.core_arrive(3, 12)
      %subview_7 = memref.subview %58[0, 0] [1, %57] [1, 1] : memref<1x64xf32, #map> to memref<1x?xf32, strided<[64, 1]>>
      sdnn.dma in %subview, %subview_7 {core_id = 1 : i32, signal = array<i32: 22>, wait = array<i32: 23>} : memref<1x?xbf16, strided<[64, 1], offset: ?>, 1> memref<1x?xf32, strided<[64, 1]>> -> 
      sdnn.ew linear %45 src0 %45 src1 %58 a %cst_2 b %cst_2 {sdnn.layout = "CR_RowMajor", signal = array<i32: 13, 23>, wait = array<i32: 12, 22>} : (memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<1x64xf32, #map>, f32, f32) -> ()
      %alloc_8 = memref.alloc() {bufferNum = 5 : index, bufferSize = 4096 : index, init_signal = 29 : i64, processed, sram = "uni_sram"} : memref<16x64xf32, #map>
      %60 = sdnn.get_fifo_buffer %alloc_8, %18, {bufferNum = 5 : i32, bufferSize = 4096 : i32} : memref<16x64xf32, #map> memref<1xi32, 6> to memref<16x64xf32, #map>
      sdnn.core_wait(3, 13)
      sdnn.core_wait(3, 29)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%45, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%60 : memref<16x64xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        scf.for %arg18 = %c0_18 to %c2 step %c1_19 {
          scf.for %arg19 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg10 : i32
            %73 = arith.ori %71, %arg11 : i32
            %74 = arith.cmpi ugt, %72, %arg12 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg13 : i32
            %77 = arith.shrui %71, %arg14 : i32
            %78 = arith.andi %77, %arg15 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg16 : i32
            %81 = arith.cmpi uge, %72, %arg12 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%45, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%60 : memref<16x64xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        %c4 = arith.constant 4 : index
        scf.for %arg18 = %c2 to %c4 step %c1_19 {
          scf.for %arg19 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg10 : i32
            %73 = arith.ori %71, %arg11 : i32
            %74 = arith.cmpi ugt, %72, %arg12 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg13 : i32
            %77 = arith.shrui %71, %arg14 : i32
            %78 = arith.andi %77, %arg15 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg16 : i32
            %81 = arith.cmpi uge, %72, %arg12 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%45, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%60 : memref<16x64xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c4 = arith.constant 4 : index
        %c6 = arith.constant 6 : index
        scf.for %arg18 = %c4 to %c6 step %c1_19 {
          scf.for %arg19 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg10 : i32
            %73 = arith.ori %71, %arg11 : i32
            %74 = arith.cmpi ugt, %72, %arg12 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg13 : i32
            %77 = arith.shrui %71, %arg14 : i32
            %78 = arith.andi %77, %arg15 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg16 : i32
            %81 = arith.cmpi uge, %72, %arg12 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%45, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%60 : memref<16x64xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c6 = arith.constant 6 : index
        %c8 = arith.constant 8 : index
        scf.for %arg18 = %c6 to %c8 step %c1_19 {
          scf.for %arg19 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg10 : i32
            %73 = arith.ori %71, %arg11 : i32
            %74 = arith.cmpi ugt, %72, %arg12 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg13 : i32
            %77 = arith.shrui %71, %arg14 : i32
            %78 = arith.andi %77, %arg15 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg16 : i32
            %81 = arith.cmpi uge, %72, %arg12 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%45, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%60 : memref<16x64xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c8 = arith.constant 8 : index
        %c10 = arith.constant 10 : index
        scf.for %arg18 = %c8 to %c10 step %c1_19 {
          scf.for %arg19 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg10 : i32
            %73 = arith.ori %71, %arg11 : i32
            %74 = arith.cmpi ugt, %72, %arg12 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg13 : i32
            %77 = arith.shrui %71, %arg14 : i32
            %78 = arith.andi %77, %arg15 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg16 : i32
            %81 = arith.cmpi uge, %72, %arg12 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%45, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%60 : memref<16x64xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c10 = arith.constant 10 : index
        %c12 = arith.constant 12 : index
        scf.for %arg18 = %c10 to %c12 step %c1_19 {
          scf.for %arg19 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg10 : i32
            %73 = arith.ori %71, %arg11 : i32
            %74 = arith.cmpi ugt, %72, %arg12 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg13 : i32
            %77 = arith.shrui %71, %arg14 : i32
            %78 = arith.andi %77, %arg15 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg16 : i32
            %81 = arith.cmpi uge, %72, %arg12 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%45, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%60 : memref<16x64xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c12 = arith.constant 12 : index
        %c14 = arith.constant 14 : index
        scf.for %arg18 = %c12 to %c14 step %c1_19 {
          scf.for %arg19 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg10 : i32
            %73 = arith.ori %71, %arg11 : i32
            %74 = arith.cmpi ugt, %72, %arg12 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg13 : i32
            %77 = arith.shrui %71, %arg14 : i32
            %78 = arith.andi %77, %arg15 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg16 : i32
            %81 = arith.cmpi uge, %72, %arg12 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%45, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%60 : memref<16x64xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c16_19 = arith.constant 16 : index
        %c1_20 = arith.constant 1 : index
        %c64_21 = arith.constant 64 : index
        %c14 = arith.constant 14 : index
        scf.for %arg18 = %c14 to %c16_19 step %c1_20 {
          scf.for %arg19 = %c0_18 to %c64_21 step %c1_20 {
            %70 = memref.load %arg9[%arg18, %arg19] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            %72 = arith.andi %71, %arg10 : i32
            %73 = arith.ori %71, %arg11 : i32
            %74 = arith.cmpi ugt, %72, %arg12 : i32
            %75 = arith.select %74, %73, %71 : i32
            %76 = arith.addi %71, %arg13 : i32
            %77 = arith.shrui %71, %arg14 : i32
            %78 = arith.andi %77, %arg15 : i32
            %79 = arith.addi %76, %78 : i32
            %80 = arith.andi %79, %arg16 : i32
            %81 = arith.cmpi uge, %72, %arg12 : i32
            %82 = arith.select %81, %75, %80 : i32
            %83 = arith.bitcast %82 : i32 to f32
            memref.store %83, %arg17[%arg18, %arg19] : memref<16x64xf32, #map>
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
      %alloc_9 = memref.alloc() {bufferNum = 5 : index, bufferSize = 4096 : index, init_signal = 32 : i64, processed, sram = "uni_sram"} : memref<16x64xf32, #map>
      %61 = sdnn.get_fifo_buffer %alloc_9, %17, {bufferNum = 5 : i32, bufferSize = 4096 : i32} : memref<16x64xf32, #map> memref<1xi32, 6> to memref<16x64xf32, #map>
      sdnn.ew mul %61 src0 %60 c %cst_0 {sdnn.layout = "CR_RowMajor", signal = array<i32: 31>, wait = array<i32: 24, 32>} : (memref<16x64xf32, #map>, memref<16x64xf32, #map>, f32) -> ()
      %alloc_10 = memref.alloc() {bufferNum = 5 : index, bufferSize = 4096 : index, init_signal = 34 : i64, processed, sram = "uni_sram"} : memref<16x64xf32, #map>
      %62 = sdnn.get_fifo_buffer %alloc_10, %16, {bufferNum = 5 : i32, bufferSize = 4096 : i32} : memref<16x64xf32, #map> memref<1xi32, 6> to memref<16x64xf32, #map>
      sdnn.ew mul %62 src0 %60 src1 %60 {sdnn.layout = "CR_RowMajor", wait = array<i32: 26, 34>} : (memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>) -> ()
      %alloc_11 = memref.alloc() {bufferNum = 5 : index, bufferSize = 4096 : index, init_signal = 36 : i64, processed, sram = "uni_sram"} : memref<16x64xf32, #map>
      %63 = sdnn.get_fifo_buffer %alloc_11, %15, {bufferNum = 5 : i32, bufferSize = 4096 : i32} : memref<16x64xf32, #map> memref<1xi32, 6> to memref<16x64xf32, #map>
      sdnn.ew mul %63 src0 %62 src1 %60 {sdnn.layout = "CR_RowMajor", signal = array<i32: 25, 33, 35>, wait = array<i32: 27, 36>} : (memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>) -> ()
      sdnn.core_wait(3, 14)
      sdnn.core_wait(3, 25)
      sdnn.core_wait(3, 33)
      sdnn.core_wait(3, 35)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%62, %60, %63, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: memref<16x64xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        scf.for %arg17 = %c0_18 to %c2 step %c1_19 {
          scf.for %arg18 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg17, %arg18] : memref<16x64xf32, #map>
            %71 = memref.load %arg10[%arg17, %arg18] : memref<16x64xf32, #map>
            %72 = memref.load %arg11[%arg17, %arg18] : memref<16x64xf32, #map>
            %73 = arith.bitcast %72 : f32 to i32
            %74 = arith.bitcast %71 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.bitcast %70 : f32 to i32
            %77 = arith.andi %76, %arg12 : i32
            %78 = arith.cmpi eq, %77, %arg13 : i32
            %79 = arith.cmpi eq, %75, %arg14 : i32
            %80 = arith.andi %78, %79 : i1
            %81 = arith.cmpi eq, %75, %arg13 : i32
            %82 = arith.cmpi eq, %77, %arg14 : i32
            %83 = arith.andi %81, %82 : i1
            %84 = arith.ori %80, %83 : i1
            %85 = arith.cmpi ugt, %77, %arg13 : i32
            %86 = arith.cmpi ugt, %75, %arg13 : i32
            %87 = arith.ori %85, %86 : i1
            %88 = arith.ori %84, %87 : i1
            %89 = arith.select %88, %arg15, %73 : i32
            %90 = arith.bitcast %89 : i32 to f32
            memref.store %90, %arg16[%arg17, %arg18] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%62, %60, %63, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: memref<16x64xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        %c4 = arith.constant 4 : index
        scf.for %arg17 = %c2 to %c4 step %c1_19 {
          scf.for %arg18 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg17, %arg18] : memref<16x64xf32, #map>
            %71 = memref.load %arg10[%arg17, %arg18] : memref<16x64xf32, #map>
            %72 = memref.load %arg11[%arg17, %arg18] : memref<16x64xf32, #map>
            %73 = arith.bitcast %72 : f32 to i32
            %74 = arith.bitcast %71 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.bitcast %70 : f32 to i32
            %77 = arith.andi %76, %arg12 : i32
            %78 = arith.cmpi eq, %77, %arg13 : i32
            %79 = arith.cmpi eq, %75, %arg14 : i32
            %80 = arith.andi %78, %79 : i1
            %81 = arith.cmpi eq, %75, %arg13 : i32
            %82 = arith.cmpi eq, %77, %arg14 : i32
            %83 = arith.andi %81, %82 : i1
            %84 = arith.ori %80, %83 : i1
            %85 = arith.cmpi ugt, %77, %arg13 : i32
            %86 = arith.cmpi ugt, %75, %arg13 : i32
            %87 = arith.ori %85, %86 : i1
            %88 = arith.ori %84, %87 : i1
            %89 = arith.select %88, %arg15, %73 : i32
            %90 = arith.bitcast %89 : i32 to f32
            memref.store %90, %arg16[%arg17, %arg18] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%62, %60, %63, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: memref<16x64xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c4 = arith.constant 4 : index
        %c6 = arith.constant 6 : index
        scf.for %arg17 = %c4 to %c6 step %c1_19 {
          scf.for %arg18 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg17, %arg18] : memref<16x64xf32, #map>
            %71 = memref.load %arg10[%arg17, %arg18] : memref<16x64xf32, #map>
            %72 = memref.load %arg11[%arg17, %arg18] : memref<16x64xf32, #map>
            %73 = arith.bitcast %72 : f32 to i32
            %74 = arith.bitcast %71 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.bitcast %70 : f32 to i32
            %77 = arith.andi %76, %arg12 : i32
            %78 = arith.cmpi eq, %77, %arg13 : i32
            %79 = arith.cmpi eq, %75, %arg14 : i32
            %80 = arith.andi %78, %79 : i1
            %81 = arith.cmpi eq, %75, %arg13 : i32
            %82 = arith.cmpi eq, %77, %arg14 : i32
            %83 = arith.andi %81, %82 : i1
            %84 = arith.ori %80, %83 : i1
            %85 = arith.cmpi ugt, %77, %arg13 : i32
            %86 = arith.cmpi ugt, %75, %arg13 : i32
            %87 = arith.ori %85, %86 : i1
            %88 = arith.ori %84, %87 : i1
            %89 = arith.select %88, %arg15, %73 : i32
            %90 = arith.bitcast %89 : i32 to f32
            memref.store %90, %arg16[%arg17, %arg18] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%62, %60, %63, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: memref<16x64xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c6 = arith.constant 6 : index
        %c8 = arith.constant 8 : index
        scf.for %arg17 = %c6 to %c8 step %c1_19 {
          scf.for %arg18 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg17, %arg18] : memref<16x64xf32, #map>
            %71 = memref.load %arg10[%arg17, %arg18] : memref<16x64xf32, #map>
            %72 = memref.load %arg11[%arg17, %arg18] : memref<16x64xf32, #map>
            %73 = arith.bitcast %72 : f32 to i32
            %74 = arith.bitcast %71 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.bitcast %70 : f32 to i32
            %77 = arith.andi %76, %arg12 : i32
            %78 = arith.cmpi eq, %77, %arg13 : i32
            %79 = arith.cmpi eq, %75, %arg14 : i32
            %80 = arith.andi %78, %79 : i1
            %81 = arith.cmpi eq, %75, %arg13 : i32
            %82 = arith.cmpi eq, %77, %arg14 : i32
            %83 = arith.andi %81, %82 : i1
            %84 = arith.ori %80, %83 : i1
            %85 = arith.cmpi ugt, %77, %arg13 : i32
            %86 = arith.cmpi ugt, %75, %arg13 : i32
            %87 = arith.ori %85, %86 : i1
            %88 = arith.ori %84, %87 : i1
            %89 = arith.select %88, %arg15, %73 : i32
            %90 = arith.bitcast %89 : i32 to f32
            memref.store %90, %arg16[%arg17, %arg18] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%62, %60, %63, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: memref<16x64xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c8 = arith.constant 8 : index
        %c10 = arith.constant 10 : index
        scf.for %arg17 = %c8 to %c10 step %c1_19 {
          scf.for %arg18 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg17, %arg18] : memref<16x64xf32, #map>
            %71 = memref.load %arg10[%arg17, %arg18] : memref<16x64xf32, #map>
            %72 = memref.load %arg11[%arg17, %arg18] : memref<16x64xf32, #map>
            %73 = arith.bitcast %72 : f32 to i32
            %74 = arith.bitcast %71 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.bitcast %70 : f32 to i32
            %77 = arith.andi %76, %arg12 : i32
            %78 = arith.cmpi eq, %77, %arg13 : i32
            %79 = arith.cmpi eq, %75, %arg14 : i32
            %80 = arith.andi %78, %79 : i1
            %81 = arith.cmpi eq, %75, %arg13 : i32
            %82 = arith.cmpi eq, %77, %arg14 : i32
            %83 = arith.andi %81, %82 : i1
            %84 = arith.ori %80, %83 : i1
            %85 = arith.cmpi ugt, %77, %arg13 : i32
            %86 = arith.cmpi ugt, %75, %arg13 : i32
            %87 = arith.ori %85, %86 : i1
            %88 = arith.ori %84, %87 : i1
            %89 = arith.select %88, %arg15, %73 : i32
            %90 = arith.bitcast %89 : i32 to f32
            memref.store %90, %arg16[%arg17, %arg18] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%62, %60, %63, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: memref<16x64xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c10 = arith.constant 10 : index
        %c12 = arith.constant 12 : index
        scf.for %arg17 = %c10 to %c12 step %c1_19 {
          scf.for %arg18 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg17, %arg18] : memref<16x64xf32, #map>
            %71 = memref.load %arg10[%arg17, %arg18] : memref<16x64xf32, #map>
            %72 = memref.load %arg11[%arg17, %arg18] : memref<16x64xf32, #map>
            %73 = arith.bitcast %72 : f32 to i32
            %74 = arith.bitcast %71 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.bitcast %70 : f32 to i32
            %77 = arith.andi %76, %arg12 : i32
            %78 = arith.cmpi eq, %77, %arg13 : i32
            %79 = arith.cmpi eq, %75, %arg14 : i32
            %80 = arith.andi %78, %79 : i1
            %81 = arith.cmpi eq, %75, %arg13 : i32
            %82 = arith.cmpi eq, %77, %arg14 : i32
            %83 = arith.andi %81, %82 : i1
            %84 = arith.ori %80, %83 : i1
            %85 = arith.cmpi ugt, %77, %arg13 : i32
            %86 = arith.cmpi ugt, %75, %arg13 : i32
            %87 = arith.ori %85, %86 : i1
            %88 = arith.ori %84, %87 : i1
            %89 = arith.select %88, %arg15, %73 : i32
            %90 = arith.bitcast %89 : i32 to f32
            memref.store %90, %arg16[%arg17, %arg18] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%62, %60, %63, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: memref<16x64xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c12 = arith.constant 12 : index
        %c14 = arith.constant 14 : index
        scf.for %arg17 = %c12 to %c14 step %c1_19 {
          scf.for %arg18 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg17, %arg18] : memref<16x64xf32, #map>
            %71 = memref.load %arg10[%arg17, %arg18] : memref<16x64xf32, #map>
            %72 = memref.load %arg11[%arg17, %arg18] : memref<16x64xf32, #map>
            %73 = arith.bitcast %72 : f32 to i32
            %74 = arith.bitcast %71 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.bitcast %70 : f32 to i32
            %77 = arith.andi %76, %arg12 : i32
            %78 = arith.cmpi eq, %77, %arg13 : i32
            %79 = arith.cmpi eq, %75, %arg14 : i32
            %80 = arith.andi %78, %79 : i1
            %81 = arith.cmpi eq, %75, %arg13 : i32
            %82 = arith.cmpi eq, %77, %arg14 : i32
            %83 = arith.andi %81, %82 : i1
            %84 = arith.ori %80, %83 : i1
            %85 = arith.cmpi ugt, %77, %arg13 : i32
            %86 = arith.cmpi ugt, %75, %arg13 : i32
            %87 = arith.ori %85, %86 : i1
            %88 = arith.ori %84, %87 : i1
            %89 = arith.select %88, %arg15, %73 : i32
            %90 = arith.bitcast %89 : i32 to f32
            memref.store %90, %arg16[%arg17, %arg18] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%62, %60, %63, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: memref<16x64xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c16_19 = arith.constant 16 : index
        %c1_20 = arith.constant 1 : index
        %c64_21 = arith.constant 64 : index
        %c14 = arith.constant 14 : index
        scf.for %arg17 = %c14 to %c16_19 step %c1_20 {
          scf.for %arg18 = %c0_18 to %c64_21 step %c1_20 {
            %70 = memref.load %arg9[%arg17, %arg18] : memref<16x64xf32, #map>
            %71 = memref.load %arg10[%arg17, %arg18] : memref<16x64xf32, #map>
            %72 = memref.load %arg11[%arg17, %arg18] : memref<16x64xf32, #map>
            %73 = arith.bitcast %72 : f32 to i32
            %74 = arith.bitcast %71 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.bitcast %70 : f32 to i32
            %77 = arith.andi %76, %arg12 : i32
            %78 = arith.cmpi eq, %77, %arg13 : i32
            %79 = arith.cmpi eq, %75, %arg14 : i32
            %80 = arith.andi %78, %79 : i1
            %81 = arith.cmpi eq, %75, %arg13 : i32
            %82 = arith.cmpi eq, %77, %arg14 : i32
            %83 = arith.andi %81, %82 : i1
            %84 = arith.ori %80, %83 : i1
            %85 = arith.cmpi ugt, %77, %arg13 : i32
            %86 = arith.cmpi ugt, %75, %arg13 : i32
            %87 = arith.ori %85, %86 : i1
            %88 = arith.ori %84, %87 : i1
            %89 = arith.select %88, %arg15, %73 : i32
            %90 = arith.bitcast %89 : i32 to f32
            memref.store %90, %arg16[%arg17, %arg18] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 15)
      sdnn.core_arrive(3, 28)
      sdnn.core_arrive(3, 34)
      sdnn.core_arrive(3, 36)
      %alloc_12 = memref.alloc() {bufferNum = 5 : index, bufferSize = 4096 : index, init_signal = 38 : i64, processed, sram = "uni_sram"} : memref<16x64xf32, #map>
      %64 = sdnn.get_fifo_buffer %alloc_12, %14, {bufferNum = 5 : i32, bufferSize = 4096 : i32} : memref<16x64xf32, #map> memref<1xi32, 6> to memref<16x64xf32, #map>
      sdnn.ew linear %64 src0 %60 src1 %45 a %cst_2 b %cst {sdnn.layout = "CR_RowMajor", signal = array<i32: 16>, wait = array<i32: 15, 28, 38>} : (memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, f32, f32) -> ()
      sdnn.ew mul %64 src0 %64 c %cst_1 {sdnn.layout = "CR_RowMajor", signal = array<i32: 37>} : (memref<16x64xf32, #map>, memref<16x64xf32, #map>, f32) -> ()
      sdnn.core_wait(3, 37)
      sdnn.core_wait(3, 41)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%64 : memref<16x64xf32, #map>) outs(%59 : memref<16x64xi32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xi32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        scf.for %arg11 = %c0_18 to %c2 step %c1_19 {
          scf.for %arg12 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg11, %arg12] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            memref.store %71, %arg10[%arg11, %arg12] : memref<16x64xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%64 : memref<16x64xf32, #map>) outs(%59 : memref<16x64xi32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xi32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        %c4 = arith.constant 4 : index
        scf.for %arg11 = %c2 to %c4 step %c1_19 {
          scf.for %arg12 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg11, %arg12] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            memref.store %71, %arg10[%arg11, %arg12] : memref<16x64xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%64 : memref<16x64xf32, #map>) outs(%59 : memref<16x64xi32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xi32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c4 = arith.constant 4 : index
        %c6 = arith.constant 6 : index
        scf.for %arg11 = %c4 to %c6 step %c1_19 {
          scf.for %arg12 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg11, %arg12] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            memref.store %71, %arg10[%arg11, %arg12] : memref<16x64xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%64 : memref<16x64xf32, #map>) outs(%59 : memref<16x64xi32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xi32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c6 = arith.constant 6 : index
        %c8 = arith.constant 8 : index
        scf.for %arg11 = %c6 to %c8 step %c1_19 {
          scf.for %arg12 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg11, %arg12] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            memref.store %71, %arg10[%arg11, %arg12] : memref<16x64xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%64 : memref<16x64xf32, #map>) outs(%59 : memref<16x64xi32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xi32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c8 = arith.constant 8 : index
        %c10 = arith.constant 10 : index
        scf.for %arg11 = %c8 to %c10 step %c1_19 {
          scf.for %arg12 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg11, %arg12] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            memref.store %71, %arg10[%arg11, %arg12] : memref<16x64xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%64 : memref<16x64xf32, #map>) outs(%59 : memref<16x64xi32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xi32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c10 = arith.constant 10 : index
        %c12 = arith.constant 12 : index
        scf.for %arg11 = %c10 to %c12 step %c1_19 {
          scf.for %arg12 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg11, %arg12] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            memref.store %71, %arg10[%arg11, %arg12] : memref<16x64xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%64 : memref<16x64xf32, #map>) outs(%59 : memref<16x64xi32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xi32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c12 = arith.constant 12 : index
        %c14 = arith.constant 14 : index
        scf.for %arg11 = %c12 to %c14 step %c1_19 {
          scf.for %arg12 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg11, %arg12] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            memref.store %71, %arg10[%arg11, %arg12] : memref<16x64xi32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%64 : memref<16x64xf32, #map>) outs(%59 : memref<16x64xi32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xi32, #map>):
        %c0_18 = arith.constant 0 : index
        %c16_19 = arith.constant 16 : index
        %c1_20 = arith.constant 1 : index
        %c64_21 = arith.constant 64 : index
        %c14 = arith.constant 14 : index
        scf.for %arg11 = %c14 to %c16_19 step %c1_20 {
          scf.for %arg12 = %c0_18 to %c64_21 step %c1_20 {
            %70 = memref.load %arg9[%arg11, %arg12] : memref<16x64xf32, #map>
            %71 = arith.bitcast %70 : f32 to i32
            memref.store %71, %arg10[%arg11, %arg12] : memref<16x64xi32, #map>
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
      sdnn.core_specialize ins(%59, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<16x64xi32, #map>, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        scf.for %arg14 = %c0_18 to %c2 step %c1_19 {
          scf.for %arg15 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg14, %arg15] : memref<16x64xi32, #map>
            %71 = arith.andi %70, %arg10 : i32
            %72 = arith.ori %71, %arg11 : i32
            %73 = arith.andi %70, %arg12 : i32
            %74 = arith.cmpi ugt, %73, %arg11 : i32
            %75 = arith.select %74, %72, %70 : i32
            %76 = arith.bitcast %75 : i32 to f32
            memref.store %76, %arg13[%arg14, %arg15] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<16x64xi32, #map>, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        %c4 = arith.constant 4 : index
        scf.for %arg14 = %c2 to %c4 step %c1_19 {
          scf.for %arg15 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg14, %arg15] : memref<16x64xi32, #map>
            %71 = arith.andi %70, %arg10 : i32
            %72 = arith.ori %71, %arg11 : i32
            %73 = arith.andi %70, %arg12 : i32
            %74 = arith.cmpi ugt, %73, %arg11 : i32
            %75 = arith.select %74, %72, %70 : i32
            %76 = arith.bitcast %75 : i32 to f32
            memref.store %76, %arg13[%arg14, %arg15] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<16x64xi32, #map>, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c4 = arith.constant 4 : index
        %c6 = arith.constant 6 : index
        scf.for %arg14 = %c4 to %c6 step %c1_19 {
          scf.for %arg15 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg14, %arg15] : memref<16x64xi32, #map>
            %71 = arith.andi %70, %arg10 : i32
            %72 = arith.ori %71, %arg11 : i32
            %73 = arith.andi %70, %arg12 : i32
            %74 = arith.cmpi ugt, %73, %arg11 : i32
            %75 = arith.select %74, %72, %70 : i32
            %76 = arith.bitcast %75 : i32 to f32
            memref.store %76, %arg13[%arg14, %arg15] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<16x64xi32, #map>, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c6 = arith.constant 6 : index
        %c8 = arith.constant 8 : index
        scf.for %arg14 = %c6 to %c8 step %c1_19 {
          scf.for %arg15 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg14, %arg15] : memref<16x64xi32, #map>
            %71 = arith.andi %70, %arg10 : i32
            %72 = arith.ori %71, %arg11 : i32
            %73 = arith.andi %70, %arg12 : i32
            %74 = arith.cmpi ugt, %73, %arg11 : i32
            %75 = arith.select %74, %72, %70 : i32
            %76 = arith.bitcast %75 : i32 to f32
            memref.store %76, %arg13[%arg14, %arg15] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<16x64xi32, #map>, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c8 = arith.constant 8 : index
        %c10 = arith.constant 10 : index
        scf.for %arg14 = %c8 to %c10 step %c1_19 {
          scf.for %arg15 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg14, %arg15] : memref<16x64xi32, #map>
            %71 = arith.andi %70, %arg10 : i32
            %72 = arith.ori %71, %arg11 : i32
            %73 = arith.andi %70, %arg12 : i32
            %74 = arith.cmpi ugt, %73, %arg11 : i32
            %75 = arith.select %74, %72, %70 : i32
            %76 = arith.bitcast %75 : i32 to f32
            memref.store %76, %arg13[%arg14, %arg15] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<16x64xi32, #map>, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c10 = arith.constant 10 : index
        %c12 = arith.constant 12 : index
        scf.for %arg14 = %c10 to %c12 step %c1_19 {
          scf.for %arg15 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg14, %arg15] : memref<16x64xi32, #map>
            %71 = arith.andi %70, %arg10 : i32
            %72 = arith.ori %71, %arg11 : i32
            %73 = arith.andi %70, %arg12 : i32
            %74 = arith.cmpi ugt, %73, %arg11 : i32
            %75 = arith.select %74, %72, %70 : i32
            %76 = arith.bitcast %75 : i32 to f32
            memref.store %76, %arg13[%arg14, %arg15] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<16x64xi32, #map>, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c12 = arith.constant 12 : index
        %c14 = arith.constant 14 : index
        scf.for %arg14 = %c12 to %c14 step %c1_19 {
          scf.for %arg15 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg14, %arg15] : memref<16x64xi32, #map>
            %71 = arith.andi %70, %arg10 : i32
            %72 = arith.ori %71, %arg11 : i32
            %73 = arith.andi %70, %arg12 : i32
            %74 = arith.cmpi ugt, %73, %arg11 : i32
            %75 = arith.select %74, %72, %70 : i32
            %76 = arith.bitcast %75 : i32 to f32
            memref.store %76, %arg13[%arg14, %arg15] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %c-2147483648_i32, %c1098907648_i32, %c2147483647_i32 : memref<16x64xi32, #map>, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xi32, #map>, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c16_19 = arith.constant 16 : index
        %c1_20 = arith.constant 1 : index
        %c64_21 = arith.constant 64 : index
        %c14 = arith.constant 14 : index
        scf.for %arg14 = %c14 to %c16_19 step %c1_20 {
          scf.for %arg15 = %c0_18 to %c64_21 step %c1_20 {
            %70 = memref.load %arg9[%arg14, %arg15] : memref<16x64xi32, #map>
            %71 = arith.andi %70, %arg10 : i32
            %72 = arith.ori %71, %arg11 : i32
            %73 = arith.andi %70, %arg12 : i32
            %74 = arith.cmpi ugt, %73, %arg11 : i32
            %75 = arith.select %74, %72, %70 : i32
            %76 = arith.bitcast %75 : i32 to f32
            memref.store %76, %arg13[%arg14, %arg15] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 17)
      sdnn.core_arrive(3, 40)
      sdnn.ew lut %45 src0 %45 lut_func tanh {kOverflow = 0.000000e+00 : f32, kUnderflow = 0.000000e+00 : f32, lut_max = 15.984375 : f32, lut_min = 0.000000e+00 : f32, packedid = 231491 : ui32, sdnn.layout = "CR_RowMajor", signal = array<i32: 18>, wait = array<i32: 17>} : (memref<16x64xf32, #map>, memref<16x64xf32, #map>) -> ()
      %alloc_13 = memref.alloc() {bufferNum = 5 : index, bufferSize = 4096 : index, init_signal = 44 : i64, processed, sram = "uni_sram"} : memref<16x64xf32, #map>
      %65 = sdnn.get_fifo_buffer %alloc_13, %13, {bufferNum = 5 : i32, bufferSize = 4096 : i32} : memref<16x64xf32, #map> memref<1xi32, 6> to memref<16x64xf32, #map>
      sdnn.core_wait(3, 18)
      sdnn.core_wait(3, 40)
      sdnn.core_wait(3, 44)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%59, %45, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<16x64xi32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32) outs(%65 : memref<16x64xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xi32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        scf.for %arg16 = %c0_18 to %c2 step %c1_19 {
          scf.for %arg17 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg16, %arg17] : memref<16x64xi32, #map>
            %71 = memref.load %arg10[%arg16, %arg17] : memref<16x64xf32, #map>
            %72 = arith.ori %70, %arg11 : i32
            %73 = arith.bitcast %71 : f32 to i32
            %74 = arith.andi %70, %arg12 : i32
            %75 = arith.cmpi eq, %74, %arg12 : i32
            %76 = arith.andi %70, %arg13 : i32
            %77 = arith.cmpi ne, %76, %arg14 : i32
            %78 = arith.andi %75, %77 : i1
            %79 = arith.select %78, %72, %73 : i32
            %80 = arith.bitcast %79 : i32 to f32
            memref.store %80, %arg15[%arg16, %arg17] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %45, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<16x64xi32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32) outs(%65 : memref<16x64xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xi32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        %c4 = arith.constant 4 : index
        scf.for %arg16 = %c2 to %c4 step %c1_19 {
          scf.for %arg17 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg16, %arg17] : memref<16x64xi32, #map>
            %71 = memref.load %arg10[%arg16, %arg17] : memref<16x64xf32, #map>
            %72 = arith.ori %70, %arg11 : i32
            %73 = arith.bitcast %71 : f32 to i32
            %74 = arith.andi %70, %arg12 : i32
            %75 = arith.cmpi eq, %74, %arg12 : i32
            %76 = arith.andi %70, %arg13 : i32
            %77 = arith.cmpi ne, %76, %arg14 : i32
            %78 = arith.andi %75, %77 : i1
            %79 = arith.select %78, %72, %73 : i32
            %80 = arith.bitcast %79 : i32 to f32
            memref.store %80, %arg15[%arg16, %arg17] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %45, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<16x64xi32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32) outs(%65 : memref<16x64xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xi32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c4 = arith.constant 4 : index
        %c6 = arith.constant 6 : index
        scf.for %arg16 = %c4 to %c6 step %c1_19 {
          scf.for %arg17 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg16, %arg17] : memref<16x64xi32, #map>
            %71 = memref.load %arg10[%arg16, %arg17] : memref<16x64xf32, #map>
            %72 = arith.ori %70, %arg11 : i32
            %73 = arith.bitcast %71 : f32 to i32
            %74 = arith.andi %70, %arg12 : i32
            %75 = arith.cmpi eq, %74, %arg12 : i32
            %76 = arith.andi %70, %arg13 : i32
            %77 = arith.cmpi ne, %76, %arg14 : i32
            %78 = arith.andi %75, %77 : i1
            %79 = arith.select %78, %72, %73 : i32
            %80 = arith.bitcast %79 : i32 to f32
            memref.store %80, %arg15[%arg16, %arg17] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %45, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<16x64xi32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32) outs(%65 : memref<16x64xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xi32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c6 = arith.constant 6 : index
        %c8 = arith.constant 8 : index
        scf.for %arg16 = %c6 to %c8 step %c1_19 {
          scf.for %arg17 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg16, %arg17] : memref<16x64xi32, #map>
            %71 = memref.load %arg10[%arg16, %arg17] : memref<16x64xf32, #map>
            %72 = arith.ori %70, %arg11 : i32
            %73 = arith.bitcast %71 : f32 to i32
            %74 = arith.andi %70, %arg12 : i32
            %75 = arith.cmpi eq, %74, %arg12 : i32
            %76 = arith.andi %70, %arg13 : i32
            %77 = arith.cmpi ne, %76, %arg14 : i32
            %78 = arith.andi %75, %77 : i1
            %79 = arith.select %78, %72, %73 : i32
            %80 = arith.bitcast %79 : i32 to f32
            memref.store %80, %arg15[%arg16, %arg17] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %45, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<16x64xi32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32) outs(%65 : memref<16x64xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xi32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c8 = arith.constant 8 : index
        %c10 = arith.constant 10 : index
        scf.for %arg16 = %c8 to %c10 step %c1_19 {
          scf.for %arg17 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg16, %arg17] : memref<16x64xi32, #map>
            %71 = memref.load %arg10[%arg16, %arg17] : memref<16x64xf32, #map>
            %72 = arith.ori %70, %arg11 : i32
            %73 = arith.bitcast %71 : f32 to i32
            %74 = arith.andi %70, %arg12 : i32
            %75 = arith.cmpi eq, %74, %arg12 : i32
            %76 = arith.andi %70, %arg13 : i32
            %77 = arith.cmpi ne, %76, %arg14 : i32
            %78 = arith.andi %75, %77 : i1
            %79 = arith.select %78, %72, %73 : i32
            %80 = arith.bitcast %79 : i32 to f32
            memref.store %80, %arg15[%arg16, %arg17] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %45, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<16x64xi32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32) outs(%65 : memref<16x64xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xi32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c10 = arith.constant 10 : index
        %c12 = arith.constant 12 : index
        scf.for %arg16 = %c10 to %c12 step %c1_19 {
          scf.for %arg17 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg16, %arg17] : memref<16x64xi32, #map>
            %71 = memref.load %arg10[%arg16, %arg17] : memref<16x64xf32, #map>
            %72 = arith.ori %70, %arg11 : i32
            %73 = arith.bitcast %71 : f32 to i32
            %74 = arith.andi %70, %arg12 : i32
            %75 = arith.cmpi eq, %74, %arg12 : i32
            %76 = arith.andi %70, %arg13 : i32
            %77 = arith.cmpi ne, %76, %arg14 : i32
            %78 = arith.andi %75, %77 : i1
            %79 = arith.select %78, %72, %73 : i32
            %80 = arith.bitcast %79 : i32 to f32
            memref.store %80, %arg15[%arg16, %arg17] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %45, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<16x64xi32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32) outs(%65 : memref<16x64xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xi32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c12 = arith.constant 12 : index
        %c14 = arith.constant 14 : index
        scf.for %arg16 = %c12 to %c14 step %c1_19 {
          scf.for %arg17 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg16, %arg17] : memref<16x64xi32, #map>
            %71 = memref.load %arg10[%arg16, %arg17] : memref<16x64xf32, #map>
            %72 = arith.ori %70, %arg11 : i32
            %73 = arith.bitcast %71 : f32 to i32
            %74 = arith.andi %70, %arg12 : i32
            %75 = arith.cmpi eq, %74, %arg12 : i32
            %76 = arith.andi %70, %arg13 : i32
            %77 = arith.cmpi ne, %76, %arg14 : i32
            %78 = arith.andi %75, %77 : i1
            %79 = arith.select %78, %72, %73 : i32
            %80 = arith.bitcast %79 : i32 to f32
            memref.store %80, %arg15[%arg16, %arg17] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%59, %45, %c4194304_i32, %c2139095040_i32, %c8388607_i32, %c0_i32 : memref<16x64xi32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32) outs(%65 : memref<16x64xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xi32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c16_19 = arith.constant 16 : index
        %c1_20 = arith.constant 1 : index
        %c64_21 = arith.constant 64 : index
        %c14 = arith.constant 14 : index
        scf.for %arg16 = %c14 to %c16_19 step %c1_20 {
          scf.for %arg17 = %c0_18 to %c64_21 step %c1_20 {
            %70 = memref.load %arg9[%arg16, %arg17] : memref<16x64xi32, #map>
            %71 = memref.load %arg10[%arg16, %arg17] : memref<16x64xf32, #map>
            %72 = arith.ori %70, %arg11 : i32
            %73 = arith.bitcast %71 : f32 to i32
            %74 = arith.andi %70, %arg12 : i32
            %75 = arith.cmpi eq, %74, %arg12 : i32
            %76 = arith.andi %70, %arg13 : i32
            %77 = arith.cmpi ne, %76, %arg14 : i32
            %78 = arith.andi %75, %77 : i1
            %79 = arith.select %78, %72, %73 : i32
            %80 = arith.bitcast %79 : i32 to f32
            memref.store %80, %arg15[%arg16, %arg17] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 19)
      sdnn.core_arrive(3, 41)
      sdnn.core_arrive(3, 42)
      sdnn.ew linear %65 src0 %65 a %cst_2 c %cst_2 {sdnn.layout = "CR_RowMajor", wait = array<i32: 42>} : (memref<16x64xf32, #map>, memref<16x64xf32, #map>, f32, f32) -> ()
      %alloc_14 = memref.alloc() {bufferNum = 5 : index, bufferSize = 4096 : index, init_signal = 46 : i64, processed, sram = "uni_sram"} : memref<16x64xf32, #map>
      %66 = sdnn.get_fifo_buffer %alloc_14, %12, {bufferNum = 5 : i32, bufferSize = 4096 : i32} : memref<16x64xf32, #map> memref<1xi32, 6> to memref<16x64xf32, #map>
      sdnn.ew mul %66 src0 %60 src1 %65 c %cst_0 {sdnn.layout = "CR_RowMajor", signal = array<i32: 29, 43, 45>, wait = array<i32: 30, 46>} : (memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, f32) -> ()
      sdnn.core_wait(3, 19)
      sdnn.core_wait(3, 31)
      sdnn.core_wait(3, 43)
      sdnn.core_wait(3, 45)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%61, %65, %66, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: memref<16x64xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        scf.for %arg22 = %c0_18 to %c2 step %c1_19 {
          scf.for %arg23 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg22, %arg23] : memref<16x64xf32, #map>
            %71 = memref.load %arg10[%arg22, %arg23] : memref<16x64xf32, #map>
            %72 = memref.load %arg11[%arg22, %arg23] : memref<16x64xf32, #map>
            %73 = arith.bitcast %72 : f32 to i32
            %74 = arith.bitcast %71 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.bitcast %70 : f32 to i32
            %77 = arith.andi %76, %arg12 : i32
            %78 = arith.cmpi eq, %77, %arg13 : i32
            %79 = arith.cmpi eq, %75, %arg14 : i32
            %80 = arith.andi %78, %79 : i1
            %81 = arith.cmpi eq, %75, %arg13 : i32
            %82 = arith.cmpi eq, %77, %arg14 : i32
            %83 = arith.andi %81, %82 : i1
            %84 = arith.ori %80, %83 : i1
            %85 = arith.cmpi ugt, %77, %arg13 : i32
            %86 = arith.cmpi ugt, %75, %arg13 : i32
            %87 = arith.ori %85, %86 : i1
            %88 = arith.ori %84, %87 : i1
            %89 = arith.select %88, %arg15, %73 : i32
            %90 = arith.andi %89, %arg12 : i32
            %91 = arith.ori %89, %arg16 : i32
            %92 = arith.cmpi ugt, %90, %arg13 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg17 : i32
            %95 = arith.shrui %89, %arg18 : i32
            %96 = arith.andi %95, %arg19 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg20 : i32
            %99 = arith.cmpi uge, %90, %arg13 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg21[%arg22, %arg23] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %65, %66, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: memref<16x64xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        %c4 = arith.constant 4 : index
        scf.for %arg22 = %c2 to %c4 step %c1_19 {
          scf.for %arg23 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg22, %arg23] : memref<16x64xf32, #map>
            %71 = memref.load %arg10[%arg22, %arg23] : memref<16x64xf32, #map>
            %72 = memref.load %arg11[%arg22, %arg23] : memref<16x64xf32, #map>
            %73 = arith.bitcast %72 : f32 to i32
            %74 = arith.bitcast %71 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.bitcast %70 : f32 to i32
            %77 = arith.andi %76, %arg12 : i32
            %78 = arith.cmpi eq, %77, %arg13 : i32
            %79 = arith.cmpi eq, %75, %arg14 : i32
            %80 = arith.andi %78, %79 : i1
            %81 = arith.cmpi eq, %75, %arg13 : i32
            %82 = arith.cmpi eq, %77, %arg14 : i32
            %83 = arith.andi %81, %82 : i1
            %84 = arith.ori %80, %83 : i1
            %85 = arith.cmpi ugt, %77, %arg13 : i32
            %86 = arith.cmpi ugt, %75, %arg13 : i32
            %87 = arith.ori %85, %86 : i1
            %88 = arith.ori %84, %87 : i1
            %89 = arith.select %88, %arg15, %73 : i32
            %90 = arith.andi %89, %arg12 : i32
            %91 = arith.ori %89, %arg16 : i32
            %92 = arith.cmpi ugt, %90, %arg13 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg17 : i32
            %95 = arith.shrui %89, %arg18 : i32
            %96 = arith.andi %95, %arg19 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg20 : i32
            %99 = arith.cmpi uge, %90, %arg13 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg21[%arg22, %arg23] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %65, %66, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: memref<16x64xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c4 = arith.constant 4 : index
        %c6 = arith.constant 6 : index
        scf.for %arg22 = %c4 to %c6 step %c1_19 {
          scf.for %arg23 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg22, %arg23] : memref<16x64xf32, #map>
            %71 = memref.load %arg10[%arg22, %arg23] : memref<16x64xf32, #map>
            %72 = memref.load %arg11[%arg22, %arg23] : memref<16x64xf32, #map>
            %73 = arith.bitcast %72 : f32 to i32
            %74 = arith.bitcast %71 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.bitcast %70 : f32 to i32
            %77 = arith.andi %76, %arg12 : i32
            %78 = arith.cmpi eq, %77, %arg13 : i32
            %79 = arith.cmpi eq, %75, %arg14 : i32
            %80 = arith.andi %78, %79 : i1
            %81 = arith.cmpi eq, %75, %arg13 : i32
            %82 = arith.cmpi eq, %77, %arg14 : i32
            %83 = arith.andi %81, %82 : i1
            %84 = arith.ori %80, %83 : i1
            %85 = arith.cmpi ugt, %77, %arg13 : i32
            %86 = arith.cmpi ugt, %75, %arg13 : i32
            %87 = arith.ori %85, %86 : i1
            %88 = arith.ori %84, %87 : i1
            %89 = arith.select %88, %arg15, %73 : i32
            %90 = arith.andi %89, %arg12 : i32
            %91 = arith.ori %89, %arg16 : i32
            %92 = arith.cmpi ugt, %90, %arg13 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg17 : i32
            %95 = arith.shrui %89, %arg18 : i32
            %96 = arith.andi %95, %arg19 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg20 : i32
            %99 = arith.cmpi uge, %90, %arg13 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg21[%arg22, %arg23] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %65, %66, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: memref<16x64xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c6 = arith.constant 6 : index
        %c8 = arith.constant 8 : index
        scf.for %arg22 = %c6 to %c8 step %c1_19 {
          scf.for %arg23 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg22, %arg23] : memref<16x64xf32, #map>
            %71 = memref.load %arg10[%arg22, %arg23] : memref<16x64xf32, #map>
            %72 = memref.load %arg11[%arg22, %arg23] : memref<16x64xf32, #map>
            %73 = arith.bitcast %72 : f32 to i32
            %74 = arith.bitcast %71 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.bitcast %70 : f32 to i32
            %77 = arith.andi %76, %arg12 : i32
            %78 = arith.cmpi eq, %77, %arg13 : i32
            %79 = arith.cmpi eq, %75, %arg14 : i32
            %80 = arith.andi %78, %79 : i1
            %81 = arith.cmpi eq, %75, %arg13 : i32
            %82 = arith.cmpi eq, %77, %arg14 : i32
            %83 = arith.andi %81, %82 : i1
            %84 = arith.ori %80, %83 : i1
            %85 = arith.cmpi ugt, %77, %arg13 : i32
            %86 = arith.cmpi ugt, %75, %arg13 : i32
            %87 = arith.ori %85, %86 : i1
            %88 = arith.ori %84, %87 : i1
            %89 = arith.select %88, %arg15, %73 : i32
            %90 = arith.andi %89, %arg12 : i32
            %91 = arith.ori %89, %arg16 : i32
            %92 = arith.cmpi ugt, %90, %arg13 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg17 : i32
            %95 = arith.shrui %89, %arg18 : i32
            %96 = arith.andi %95, %arg19 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg20 : i32
            %99 = arith.cmpi uge, %90, %arg13 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg21[%arg22, %arg23] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %65, %66, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: memref<16x64xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c8 = arith.constant 8 : index
        %c10 = arith.constant 10 : index
        scf.for %arg22 = %c8 to %c10 step %c1_19 {
          scf.for %arg23 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg22, %arg23] : memref<16x64xf32, #map>
            %71 = memref.load %arg10[%arg22, %arg23] : memref<16x64xf32, #map>
            %72 = memref.load %arg11[%arg22, %arg23] : memref<16x64xf32, #map>
            %73 = arith.bitcast %72 : f32 to i32
            %74 = arith.bitcast %71 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.bitcast %70 : f32 to i32
            %77 = arith.andi %76, %arg12 : i32
            %78 = arith.cmpi eq, %77, %arg13 : i32
            %79 = arith.cmpi eq, %75, %arg14 : i32
            %80 = arith.andi %78, %79 : i1
            %81 = arith.cmpi eq, %75, %arg13 : i32
            %82 = arith.cmpi eq, %77, %arg14 : i32
            %83 = arith.andi %81, %82 : i1
            %84 = arith.ori %80, %83 : i1
            %85 = arith.cmpi ugt, %77, %arg13 : i32
            %86 = arith.cmpi ugt, %75, %arg13 : i32
            %87 = arith.ori %85, %86 : i1
            %88 = arith.ori %84, %87 : i1
            %89 = arith.select %88, %arg15, %73 : i32
            %90 = arith.andi %89, %arg12 : i32
            %91 = arith.ori %89, %arg16 : i32
            %92 = arith.cmpi ugt, %90, %arg13 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg17 : i32
            %95 = arith.shrui %89, %arg18 : i32
            %96 = arith.andi %95, %arg19 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg20 : i32
            %99 = arith.cmpi uge, %90, %arg13 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg21[%arg22, %arg23] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %65, %66, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: memref<16x64xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c10 = arith.constant 10 : index
        %c12 = arith.constant 12 : index
        scf.for %arg22 = %c10 to %c12 step %c1_19 {
          scf.for %arg23 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg22, %arg23] : memref<16x64xf32, #map>
            %71 = memref.load %arg10[%arg22, %arg23] : memref<16x64xf32, #map>
            %72 = memref.load %arg11[%arg22, %arg23] : memref<16x64xf32, #map>
            %73 = arith.bitcast %72 : f32 to i32
            %74 = arith.bitcast %71 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.bitcast %70 : f32 to i32
            %77 = arith.andi %76, %arg12 : i32
            %78 = arith.cmpi eq, %77, %arg13 : i32
            %79 = arith.cmpi eq, %75, %arg14 : i32
            %80 = arith.andi %78, %79 : i1
            %81 = arith.cmpi eq, %75, %arg13 : i32
            %82 = arith.cmpi eq, %77, %arg14 : i32
            %83 = arith.andi %81, %82 : i1
            %84 = arith.ori %80, %83 : i1
            %85 = arith.cmpi ugt, %77, %arg13 : i32
            %86 = arith.cmpi ugt, %75, %arg13 : i32
            %87 = arith.ori %85, %86 : i1
            %88 = arith.ori %84, %87 : i1
            %89 = arith.select %88, %arg15, %73 : i32
            %90 = arith.andi %89, %arg12 : i32
            %91 = arith.ori %89, %arg16 : i32
            %92 = arith.cmpi ugt, %90, %arg13 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg17 : i32
            %95 = arith.shrui %89, %arg18 : i32
            %96 = arith.andi %95, %arg19 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg20 : i32
            %99 = arith.cmpi uge, %90, %arg13 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg21[%arg22, %arg23] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %65, %66, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: memref<16x64xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c1_19 = arith.constant 1 : index
        %c64_20 = arith.constant 64 : index
        %c12 = arith.constant 12 : index
        %c14 = arith.constant 14 : index
        scf.for %arg22 = %c12 to %c14 step %c1_19 {
          scf.for %arg23 = %c0_18 to %c64_20 step %c1_19 {
            %70 = memref.load %arg9[%arg22, %arg23] : memref<16x64xf32, #map>
            %71 = memref.load %arg10[%arg22, %arg23] : memref<16x64xf32, #map>
            %72 = memref.load %arg11[%arg22, %arg23] : memref<16x64xf32, #map>
            %73 = arith.bitcast %72 : f32 to i32
            %74 = arith.bitcast %71 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.bitcast %70 : f32 to i32
            %77 = arith.andi %76, %arg12 : i32
            %78 = arith.cmpi eq, %77, %arg13 : i32
            %79 = arith.cmpi eq, %75, %arg14 : i32
            %80 = arith.andi %78, %79 : i1
            %81 = arith.cmpi eq, %75, %arg13 : i32
            %82 = arith.cmpi eq, %77, %arg14 : i32
            %83 = arith.andi %81, %82 : i1
            %84 = arith.ori %80, %83 : i1
            %85 = arith.cmpi ugt, %77, %arg13 : i32
            %86 = arith.cmpi ugt, %75, %arg13 : i32
            %87 = arith.ori %85, %86 : i1
            %88 = arith.ori %84, %87 : i1
            %89 = arith.select %88, %arg15, %73 : i32
            %90 = arith.andi %89, %arg12 : i32
            %91 = arith.ori %89, %arg16 : i32
            %92 = arith.cmpi ugt, %90, %arg13 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg17 : i32
            %95 = arith.shrui %89, %arg18 : i32
            %96 = arith.andi %95, %arg19 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg20 : i32
            %99 = arith.cmpi uge, %90, %arg13 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg21[%arg22, %arg23] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%61, %65, %66, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<16x64xf32, #map>, memref<16x64xf32, #map>, memref<16x64xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%45 : memref<16x64xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<16x64xf32, #map>, %arg10: memref<16x64xf32, #map>, %arg11: memref<16x64xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: memref<16x64xf32, #map>):
        %c0_18 = arith.constant 0 : index
        %c16_19 = arith.constant 16 : index
        %c1_20 = arith.constant 1 : index
        %c64_21 = arith.constant 64 : index
        %c14 = arith.constant 14 : index
        scf.for %arg22 = %c14 to %c16_19 step %c1_20 {
          scf.for %arg23 = %c0_18 to %c64_21 step %c1_20 {
            %70 = memref.load %arg9[%arg22, %arg23] : memref<16x64xf32, #map>
            %71 = memref.load %arg10[%arg22, %arg23] : memref<16x64xf32, #map>
            %72 = memref.load %arg11[%arg22, %arg23] : memref<16x64xf32, #map>
            %73 = arith.bitcast %72 : f32 to i32
            %74 = arith.bitcast %71 : f32 to i32
            %75 = arith.andi %74, %arg12 : i32
            %76 = arith.bitcast %70 : f32 to i32
            %77 = arith.andi %76, %arg12 : i32
            %78 = arith.cmpi eq, %77, %arg13 : i32
            %79 = arith.cmpi eq, %75, %arg14 : i32
            %80 = arith.andi %78, %79 : i1
            %81 = arith.cmpi eq, %75, %arg13 : i32
            %82 = arith.cmpi eq, %77, %arg14 : i32
            %83 = arith.andi %81, %82 : i1
            %84 = arith.ori %80, %83 : i1
            %85 = arith.cmpi ugt, %77, %arg13 : i32
            %86 = arith.cmpi ugt, %75, %arg13 : i32
            %87 = arith.ori %85, %86 : i1
            %88 = arith.ori %84, %87 : i1
            %89 = arith.select %88, %arg15, %73 : i32
            %90 = arith.andi %89, %arg12 : i32
            %91 = arith.ori %89, %arg16 : i32
            %92 = arith.cmpi ugt, %90, %arg13 : i32
            %93 = arith.select %92, %91, %89 : i32
            %94 = arith.addi %89, %arg17 : i32
            %95 = arith.shrui %89, %arg18 : i32
            %96 = arith.andi %95, %arg19 : i32
            %97 = arith.addi %94, %96 : i32
            %98 = arith.andi %97, %arg20 : i32
            %99 = arith.cmpi uge, %90, %arg13 : i32
            %100 = arith.select %99, %93, %98 : i32
            %101 = arith.bitcast %100 : i32 to f32
            memref.store %101, %arg21[%arg22, %arg23] : memref<16x64xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 20)
      sdnn.core_arrive(3, 32)
      sdnn.core_arrive(3, 44)
      sdnn.core_arrive(3, 46)
      %67 = arith.muli %41, %c2048 : index
      %68 = arith.addi %67, %44 : index
      %reinterpret_cast_15 = memref.reinterpret_cast %arg3 to offset: [%68], sizes: [16, 64], strides: [128, 1] : memref<*xbf16, 1> to memref<16x64xbf16, strided<[128, 1], offset: ?>, 1>
      %69 = arith.minsi %51, %c16 : index
      %subview_16 = memref.subview %reinterpret_cast_15[0, 0] [%69, %57] [1, 1] : memref<16x64xbf16, strided<[128, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[128, 1], offset: ?>, 1>
      %cast = memref.cast %subview_16 : memref<?x?xbf16, strided<[128, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, 1], offset: ?>, 1>
      %subview_17 = memref.subview %45[0, 0] [%69, %57] [1, 1] : memref<16x64xf32, #map> to memref<?x?xf32, strided<[64, 1]>>
      sdnn.dma out %subview_17, %cast {signal = array<i32: 21>, wait = array<i32: 20>} : memref<?x?xf32, strided<[64, 1]>> memref<?x?xbf16, strided<[?, 1], offset: ?>, 1> -> 
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
