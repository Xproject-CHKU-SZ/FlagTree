#map = affine_map<(d0, d1) -> (d0 * 128 + d1)>
#map1 = affine_map<(d0, d1) -> (d0 * 32 + d1)>
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
    %c128_i32 = arith.constant 128 : i32
    %c8_i32 = arith.constant 8 : i32
    %c1_i32 = arith.constant 1 : i32
    %c64_i32 = arith.constant 64 : i32
    %cst = arith.constant 1.000000e+00 : f32
    %c4_i32 = arith.constant 4 : i32
    %c2147483647_i32 = arith.constant 2147483647 : i32
    %c2139095040_i32 = arith.constant 2139095040 : i32
    %c0_i32 = arith.constant 0 : i32
    %c131072 = arith.constant 131072 : index
    %c32768 = arith.constant 32768 : index
    %c16384 = arith.constant 16384 : index
    %c32 = arith.constant 32 : index
    %c1024 = arith.constant 1024 : index
    %c128 = arith.constant 128 : index
    %c2143289344_i32 = arith.constant 2143289344 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %reinterpret_cast = memref.reinterpret_cast %arg4 to offset: [0], sizes: [1024], strides: [1] : memref<*xf32, 1> to memref<1024xf32, 1>
    "sdnn.init"(%reinterpret_cast) {signal = [array<i32: 13, 5, 3, 9, 7, 15, 19, 17, 21>], signal_num = array<i64: 2, 48, 33, 80, 32, 2, 2, 2, 2>} : (memref<1024xf32, 1>) -> ()
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
    %16 = sdnn.counter {bufferNum = 32 : i32} : memref<1xi32, 6>
    %17 = sdnn.counter {bufferNum = 80 : i32} : memref<1xi32, 6>
    %18 = sdnn.counter {bufferNum = 33 : i32} : memref<1xi32, 6>
    %19 = sdnn.counter {bufferNum = 48 : i32} : memref<1xi32, 6>
    %20 = sdnn.counter {bufferNum = 2 : i32} : memref<1xi32, 6>
    scf.for %arg8 = %10 to %11 step %c1 {
      %21 = arith.index_cast %arg8 : index to i32
      %22 = arith.divsi %21, %arg7 : i32
      %23 = arith.divsi %22, %arg6 : i32
      %24 = arith.divsi %23, %c64_i32 : i32
      %25 = arith.muli %24, %c8_i32 : i32
      %26 = arith.subi %c1_i32, %25 : i32
      %27 = arith.minsi %26, %c8_i32 : i32
      %28 = arith.remsi %23, %27 : i32
      %29 = arith.addi %25, %28 : i32
      %30 = arith.remsi %23, %c64_i32 : i32
      %31 = arith.divsi %30, %27 : i32
      %32 = arith.cmpi sge, %29, %c0_i32 : i32
      llvm.intr.assume %32 : i1
      %33 = arith.cmpi sge, %31, %c0_i32 : i32
      llvm.intr.assume %33 : i1
      %34 = arith.muli %29, %c128_i32 : i32
      %35 = arith.index_cast %29 : i32 to index
      %36 = arith.muli %31, %c128_i32 : i32
      %37 = arith.index_cast %31 : i32 to index
      %38 = arith.muli %37, %c128 : index
      %alloca = memref.alloca() : memref<1xi32>
      memref.store %c0_i32, %alloca[%c0] : memref<1xi32>
      %alloc = memref.alloc() {bufferNum = 2 : index, bufferSize = 65536 : index, init_signal = 13 : i64, pingpong_single, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %39 = sdnn.get_fifo_buffer %alloc, %20, {bufferNum = 2 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      sdnn.core_wait(4, 13) {core_name = "mma"}
      scf.for %arg9 = %c0_i32 to %c4_i32 step %c1_i32  : i32 {
        %58 = arith.index_cast %arg9 : i32 to index
        %59 = arith.muli %58, %c32 : index
        %60 = arith.muli %35, %c16384 : index
        %61 = arith.addi %60, %59 : index
        %62 = arith.cmpi sge, %61, %c16384 : index
        %63 = arith.divsi %61, %c16384 : index
        %64 = arith.muli %63, %c16384 : index
        %65 = arith.subi %61, %64 : index
        %66 = arith.select %62, %65, %61 : index
        %67 = arith.divsi %66, %c128 : index
        %68 = arith.addi %67, %c128 : index
        %69 = arith.minsi %68, %c128 : index
        %70 = arith.subi %69, %67 : index
        %reinterpret_cast_9 = memref.reinterpret_cast %arg0 to offset: [%61], sizes: [%70, 32], strides: [128, 1] : memref<*xf32, 1> to memref<?x32xf32, strided<[128, 1], offset: ?>, 1>
        %cast_10 = memref.cast %reinterpret_cast_9 : memref<?x32xf32, strided<[128, 1], offset: ?>, 1> to memref<?x?xf32, strided<[?, ?], offset: ?>, 1>
        %alloc_11 = memref.alloc() {bufferNum = 48 : index, bufferSize = 16384 : index, init_signal = 5 : i64, processed, sram = "l1d"} : memref<128x32xf32, #map1, 3>
        %71 = sdnn.get_fifo_buffer %alloc_11, %19, {bufferNum = 48 : i32, bufferSize = 16384 : i32} : memref<128x32xf32, #map1, 3> memref<1xi32, 6> to memref<128x32xf32, #map1, 3>
        %alloc_12 = memref.alloc() {bufferNum = 33 : index, bufferSize = 16384 : index, init_signal = 3 : i64, processed, sram = "uni_sram", trans = false} : memref<128x32xf32, #map1>
        %72 = sdnn.get_fifo_buffer %alloc_12, %18, {bufferNum = 33 : i32, bufferSize = 16384 : i32} : memref<128x32xf32, #map1> memref<1xi32, 6> to memref<128x32xf32, #map1>
        %dim = memref.dim %reinterpret_cast_9, %c0 : memref<?x32xf32, strided<[128, 1], offset: ?>, 1>
        %subview_13 = memref.subview %72[0, 0] [%dim, 32] [1, 1] : memref<128x32xf32, #map1> to memref<?x32xf32, strided<[32, 1]>>
        %cast_14 = memref.cast %subview_13 : memref<?x32xf32, strided<[32, 1]>> to memref<?x?xf32, strided<[?, ?], offset: ?>>
        sdnn.dma in %cast_10, %cast_14 {core_id = 1 : i32, signal = array<i32: 2>, wait = array<i32: 3>} : memref<?x?xf32, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[?, ?], offset: ?>> -> 
        sdnn.ds %72, %71 mask_dims[%c128, %c32] {sdnn.layout = "CR_RowMajor", signal = array<i32: 3, 4>, signal_cached = array<i32: 4>, wait = array<i32: 2, 5>, wait_cached = array<i32: 5>} : memref<128x32xf32, #map1> memref<128x32xf32, #map1, 3> -> 
        %73 = arith.muli %58, %c32768 : index
        %74 = arith.addi %73, %38 : index
        %75 = arith.remsi %74, %c1024 : index
        %76 = arith.addi %75, %c128 : index
        %77 = arith.minsi %76, %c1024 : index
        %78 = arith.subi %77, %75 : index
        %reinterpret_cast_15 = memref.reinterpret_cast %arg1 to offset: [%74], sizes: [32, %78], strides: [1024, 1] : memref<*xf32, 1> to memref<32x?xf32, strided<[1024, 1], offset: ?>, 1>
        %cast_16 = memref.cast %reinterpret_cast_15 : memref<32x?xf32, strided<[1024, 1], offset: ?>, 1> to memref<?x?xf32, strided<[?, ?], offset: ?>, 1>
        %alloc_17 = memref.alloc() {bufferNum = 80 : index, bufferSize = 16384 : index, init_signal = 9 : i64, processed, sram = "l1w"} : memref<32x128xf32, #map, 4>
        %79 = sdnn.get_fifo_buffer %alloc_17, %17, {bufferNum = 80 : i32, bufferSize = 16384 : i32} : memref<32x128xf32, #map, 4> memref<1xi32, 6> to memref<32x128xf32, #map, 4>
        %alloc_18 = memref.alloc() {bufferNum = 32 : index, bufferSize = 16384 : index, init_signal = 7 : i64, processed, sram = "uni_sram", trans = false} : memref<32x128xf32, #map>
        %80 = sdnn.get_fifo_buffer %alloc_18, %16, {bufferNum = 32 : i32, bufferSize = 16384 : i32} : memref<32x128xf32, #map> memref<1xi32, 6> to memref<32x128xf32, #map>
        %dim_19 = memref.dim %reinterpret_cast_15, %c1 : memref<32x?xf32, strided<[1024, 1], offset: ?>, 1>
        %subview_20 = memref.subview %80[0, 0] [32, %dim_19] [1, 1] : memref<32x128xf32, #map> to memref<32x?xf32, strided<[128, 1]>>
        %cast_21 = memref.cast %subview_20 : memref<32x?xf32, strided<[128, 1]>> to memref<?x?xf32, strided<[?, ?], offset: ?>>
        sdnn.dma in %cast_16, %cast_21 {core_id = 6 : i32, signal = array<i32: 6>, wait = array<i32: 7>} : memref<?x?xf32, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[?, ?], offset: ?>> -> 
        sdnn.ds %80, %79 mask_dims[%c32, %c128] {sdnn.layout = "CR_RowMajor", signal = array<i32: 7, 8>, signal_cached = array<i32: 8>, wait = array<i32: 6, 9>, wait_cached = array<i32: 9>} : memref<32x128xf32, #map> memref<32x128xf32, #map, 4> -> 
        %81 = memref.load %alloca[%c0] : memref<1xi32>
        sdnn.mma %71, %79, %39 acc %81 mask_dims[%c128, %c128, %c32] {indexing_maps = [#map2, #map3, #map4], rcOut = false, sdnn.layout = "CR_RowMajor", signal = array<i32: 5, 9>, wait = array<i32: 4, 8>} : (memref<128x32xf32, #map1, 3>, memref<32x128xf32, #map, 4>, memref<128x128xf32, #map>, i32, index, index, index) -> ()
        %82 = arith.addi %81, %c1_i32 : i32
        memref.store %82, %alloca[%c0] : memref<1xi32>
      } {mac_acc = true, sdnn.arg_layout.1 = "CR_RowMajor", sdnn.layout = "CR_RowMajor"}
      sdnn.core_arrive(4, 10) {core_name = "mma"}
      %reinterpret_cast_0 = memref.reinterpret_cast %arg2 to offset: [%38], sizes: [1, 128], strides: [128, 1] : memref<*xf32, 1> to memref<1x128xf32, strided<[128, 1], offset: ?>, 1>
      %40 = arith.index_cast %34 : i32 to index
      %41 = arith.addi %40, %c128 : index
      %42 = arith.minsi %41, %c128 : index
      %43 = arith.maxsi %42, %40 : index
      %44 = arith.subi %43, %40 : index
      %45 = arith.index_cast %36 : i32 to index
      %46 = arith.addi %45, %c128 : index
      %47 = arith.minsi %46, %c1024 : index
      %48 = arith.maxsi %47, %45 : index
      %49 = arith.subi %48, %45 : index
      %50 = arith.minsi %49, %c128 : index
      %alloc_1 = memref.alloc() {bufferNum = 2 : index, bufferSize = 512 : index, init_signal = 15 : i64, processed, sram = "uni_sram", trans = false} : memref<1x128xf32, #map>
      %51 = sdnn.get_fifo_buffer %alloc_1, %15, {bufferNum = 2 : i32, bufferSize = 512 : i32} : memref<1x128xf32, #map> memref<1xi32, 6> to memref<1x128xf32, #map>
      %subview = memref.subview %reinterpret_cast_0[0, 0] [1, %50] [1, 1] : memref<1x128xf32, strided<[128, 1], offset: ?>, 1> to memref<1x?xf32, strided<[128, 1], offset: ?>, 1>
      %subview_2 = memref.subview %51[0, 0] [1, %50] [1, 1] : memref<1x128xf32, #map> to memref<1x?xf32, strided<[128, 1]>>
      sdnn.dma in %subview, %subview_2 {core_id = 1 : i32, signal = array<i32: 14>, wait = array<i32: 15>} : memref<1x?xf32, strided<[128, 1], offset: ?>, 1> memref<1x?xf32, strided<[128, 1]>> -> 
      %alloc_3 = memref.alloc() {bufferNum = 2 : index, bufferSize = 65536 : index, init_signal = 19 : i64, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %52 = sdnn.get_fifo_buffer %alloc_3, %14, {bufferNum = 2 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      %alloc_4 = memref.alloc() {bufferNum = 2 : index, bufferSize = 65536 : index, init_signal = 17 : i64, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %53 = sdnn.get_fifo_buffer %alloc_4, %13, {bufferNum = 2 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      sdnn.ew linear %53 src0 %39 src1 %51 a %cst b %cst {sdnn.layout = "CR_RowMajor", signal = array<i32: 11, 15>, wait = array<i32: 10, 14, 17>} : (memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<1x128xf32, #map>, f32, f32) -> ()
      sdnn.ew lut %52 src0 %53 lut_func sigmoid {kOverflow = 0.000000e+00 : f32, kUnderflow = 0.000000e+00 : f32, lut_max = 15.984375 : f32, lut_min = 0.000000e+00 : f32, packedid = 165954 : ui32, sdnn.layout = "CR_RowMajor", wait = array<i32: 19>} : (memref<128x128xf32, #map>, memref<128x128xf32, #map>) -> ()
      %alloc_5 = memref.alloc() {bufferNum = 2 : index, bufferSize = 65536 : index, init_signal = 21 : i64, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %54 = sdnn.get_fifo_buffer %alloc_5, %12, {bufferNum = 2 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      sdnn.ew mul %54 src0 %53 src1 %52 {sdnn.layout = "CR_RowMajor", signal = array<i32: 16, 18, 20>, wait = array<i32: 21>} : (memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>) -> ()
      sdnn.core_wait(3, 11)
      sdnn.core_wait(3, 16)
      sdnn.core_wait(3, 18)
      sdnn.core_wait(3, 20)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%53, %52, %54, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%39 : memref<128x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_9 = arith.constant 0 : index
        %c128_10 = arith.constant 128 : index
        %c1_11 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        scf.for %arg17 = %c0_9 to %c16 step %c1_11 {
          scf.for %arg18 = %c0_9 to %c128_10 step %c1_11 {
            %58 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %59 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %60 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.bitcast %59 : f32 to i32
            %63 = arith.andi %62, %arg12 : i32
            %64 = arith.bitcast %58 : f32 to i32
            %65 = arith.andi %64, %arg12 : i32
            %66 = arith.cmpi eq, %65, %arg13 : i32
            %67 = arith.cmpi eq, %63, %arg14 : i32
            %68 = arith.andi %66, %67 : i1
            %69 = arith.cmpi eq, %63, %arg13 : i32
            %70 = arith.cmpi eq, %65, %arg14 : i32
            %71 = arith.andi %69, %70 : i1
            %72 = arith.ori %68, %71 : i1
            %73 = arith.cmpi ugt, %65, %arg13 : i32
            %74 = arith.cmpi ugt, %63, %arg13 : i32
            %75 = arith.ori %73, %74 : i1
            %76 = arith.ori %72, %75 : i1
            %77 = arith.select %76, %arg15, %61 : i32
            %78 = arith.bitcast %77 : i32 to f32
            memref.store %78, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%53, %52, %54, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%39 : memref<128x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_9 = arith.constant 0 : index
        %c128_10 = arith.constant 128 : index
        %c1_11 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        %c32_12 = arith.constant 32 : index
        scf.for %arg17 = %c16 to %c32_12 step %c1_11 {
          scf.for %arg18 = %c0_9 to %c128_10 step %c1_11 {
            %58 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %59 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %60 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.bitcast %59 : f32 to i32
            %63 = arith.andi %62, %arg12 : i32
            %64 = arith.bitcast %58 : f32 to i32
            %65 = arith.andi %64, %arg12 : i32
            %66 = arith.cmpi eq, %65, %arg13 : i32
            %67 = arith.cmpi eq, %63, %arg14 : i32
            %68 = arith.andi %66, %67 : i1
            %69 = arith.cmpi eq, %63, %arg13 : i32
            %70 = arith.cmpi eq, %65, %arg14 : i32
            %71 = arith.andi %69, %70 : i1
            %72 = arith.ori %68, %71 : i1
            %73 = arith.cmpi ugt, %65, %arg13 : i32
            %74 = arith.cmpi ugt, %63, %arg13 : i32
            %75 = arith.ori %73, %74 : i1
            %76 = arith.ori %72, %75 : i1
            %77 = arith.select %76, %arg15, %61 : i32
            %78 = arith.bitcast %77 : i32 to f32
            memref.store %78, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%53, %52, %54, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%39 : memref<128x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_9 = arith.constant 0 : index
        %c128_10 = arith.constant 128 : index
        %c1_11 = arith.constant 1 : index
        %c32_12 = arith.constant 32 : index
        %c48 = arith.constant 48 : index
        scf.for %arg17 = %c32_12 to %c48 step %c1_11 {
          scf.for %arg18 = %c0_9 to %c128_10 step %c1_11 {
            %58 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %59 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %60 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.bitcast %59 : f32 to i32
            %63 = arith.andi %62, %arg12 : i32
            %64 = arith.bitcast %58 : f32 to i32
            %65 = arith.andi %64, %arg12 : i32
            %66 = arith.cmpi eq, %65, %arg13 : i32
            %67 = arith.cmpi eq, %63, %arg14 : i32
            %68 = arith.andi %66, %67 : i1
            %69 = arith.cmpi eq, %63, %arg13 : i32
            %70 = arith.cmpi eq, %65, %arg14 : i32
            %71 = arith.andi %69, %70 : i1
            %72 = arith.ori %68, %71 : i1
            %73 = arith.cmpi ugt, %65, %arg13 : i32
            %74 = arith.cmpi ugt, %63, %arg13 : i32
            %75 = arith.ori %73, %74 : i1
            %76 = arith.ori %72, %75 : i1
            %77 = arith.select %76, %arg15, %61 : i32
            %78 = arith.bitcast %77 : i32 to f32
            memref.store %78, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%53, %52, %54, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%39 : memref<128x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_9 = arith.constant 0 : index
        %c128_10 = arith.constant 128 : index
        %c1_11 = arith.constant 1 : index
        %c48 = arith.constant 48 : index
        %c64 = arith.constant 64 : index
        scf.for %arg17 = %c48 to %c64 step %c1_11 {
          scf.for %arg18 = %c0_9 to %c128_10 step %c1_11 {
            %58 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %59 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %60 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.bitcast %59 : f32 to i32
            %63 = arith.andi %62, %arg12 : i32
            %64 = arith.bitcast %58 : f32 to i32
            %65 = arith.andi %64, %arg12 : i32
            %66 = arith.cmpi eq, %65, %arg13 : i32
            %67 = arith.cmpi eq, %63, %arg14 : i32
            %68 = arith.andi %66, %67 : i1
            %69 = arith.cmpi eq, %63, %arg13 : i32
            %70 = arith.cmpi eq, %65, %arg14 : i32
            %71 = arith.andi %69, %70 : i1
            %72 = arith.ori %68, %71 : i1
            %73 = arith.cmpi ugt, %65, %arg13 : i32
            %74 = arith.cmpi ugt, %63, %arg13 : i32
            %75 = arith.ori %73, %74 : i1
            %76 = arith.ori %72, %75 : i1
            %77 = arith.select %76, %arg15, %61 : i32
            %78 = arith.bitcast %77 : i32 to f32
            memref.store %78, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%53, %52, %54, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%39 : memref<128x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_9 = arith.constant 0 : index
        %c128_10 = arith.constant 128 : index
        %c1_11 = arith.constant 1 : index
        %c64 = arith.constant 64 : index
        %c80 = arith.constant 80 : index
        scf.for %arg17 = %c64 to %c80 step %c1_11 {
          scf.for %arg18 = %c0_9 to %c128_10 step %c1_11 {
            %58 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %59 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %60 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.bitcast %59 : f32 to i32
            %63 = arith.andi %62, %arg12 : i32
            %64 = arith.bitcast %58 : f32 to i32
            %65 = arith.andi %64, %arg12 : i32
            %66 = arith.cmpi eq, %65, %arg13 : i32
            %67 = arith.cmpi eq, %63, %arg14 : i32
            %68 = arith.andi %66, %67 : i1
            %69 = arith.cmpi eq, %63, %arg13 : i32
            %70 = arith.cmpi eq, %65, %arg14 : i32
            %71 = arith.andi %69, %70 : i1
            %72 = arith.ori %68, %71 : i1
            %73 = arith.cmpi ugt, %65, %arg13 : i32
            %74 = arith.cmpi ugt, %63, %arg13 : i32
            %75 = arith.ori %73, %74 : i1
            %76 = arith.ori %72, %75 : i1
            %77 = arith.select %76, %arg15, %61 : i32
            %78 = arith.bitcast %77 : i32 to f32
            memref.store %78, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%53, %52, %54, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%39 : memref<128x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_9 = arith.constant 0 : index
        %c128_10 = arith.constant 128 : index
        %c1_11 = arith.constant 1 : index
        %c80 = arith.constant 80 : index
        %c96 = arith.constant 96 : index
        scf.for %arg17 = %c80 to %c96 step %c1_11 {
          scf.for %arg18 = %c0_9 to %c128_10 step %c1_11 {
            %58 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %59 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %60 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.bitcast %59 : f32 to i32
            %63 = arith.andi %62, %arg12 : i32
            %64 = arith.bitcast %58 : f32 to i32
            %65 = arith.andi %64, %arg12 : i32
            %66 = arith.cmpi eq, %65, %arg13 : i32
            %67 = arith.cmpi eq, %63, %arg14 : i32
            %68 = arith.andi %66, %67 : i1
            %69 = arith.cmpi eq, %63, %arg13 : i32
            %70 = arith.cmpi eq, %65, %arg14 : i32
            %71 = arith.andi %69, %70 : i1
            %72 = arith.ori %68, %71 : i1
            %73 = arith.cmpi ugt, %65, %arg13 : i32
            %74 = arith.cmpi ugt, %63, %arg13 : i32
            %75 = arith.ori %73, %74 : i1
            %76 = arith.ori %72, %75 : i1
            %77 = arith.select %76, %arg15, %61 : i32
            %78 = arith.bitcast %77 : i32 to f32
            memref.store %78, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%53, %52, %54, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%39 : memref<128x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_9 = arith.constant 0 : index
        %c128_10 = arith.constant 128 : index
        %c1_11 = arith.constant 1 : index
        %c96 = arith.constant 96 : index
        %c112 = arith.constant 112 : index
        scf.for %arg17 = %c96 to %c112 step %c1_11 {
          scf.for %arg18 = %c0_9 to %c128_10 step %c1_11 {
            %58 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %59 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %60 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.bitcast %59 : f32 to i32
            %63 = arith.andi %62, %arg12 : i32
            %64 = arith.bitcast %58 : f32 to i32
            %65 = arith.andi %64, %arg12 : i32
            %66 = arith.cmpi eq, %65, %arg13 : i32
            %67 = arith.cmpi eq, %63, %arg14 : i32
            %68 = arith.andi %66, %67 : i1
            %69 = arith.cmpi eq, %63, %arg13 : i32
            %70 = arith.cmpi eq, %65, %arg14 : i32
            %71 = arith.andi %69, %70 : i1
            %72 = arith.ori %68, %71 : i1
            %73 = arith.cmpi ugt, %65, %arg13 : i32
            %74 = arith.cmpi ugt, %63, %arg13 : i32
            %75 = arith.ori %73, %74 : i1
            %76 = arith.ori %72, %75 : i1
            %77 = arith.select %76, %arg15, %61 : i32
            %78 = arith.bitcast %77 : i32 to f32
            memref.store %78, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%53, %52, %54, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<128x128xf32, #map>, memref<128x128xf32, #map>, memref<128x128xf32, #map>, i32, i32, i32, i32) outs(%39 : memref<128x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg9: memref<128x128xf32, #map>, %arg10: memref<128x128xf32, #map>, %arg11: memref<128x128xf32, #map>, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: memref<128x128xf32, #map>):
        %c0_9 = arith.constant 0 : index
        %c128_10 = arith.constant 128 : index
        %c1_11 = arith.constant 1 : index
        %c112 = arith.constant 112 : index
        scf.for %arg17 = %c112 to %c128_10 step %c1_11 {
          scf.for %arg18 = %c0_9 to %c128_10 step %c1_11 {
            %58 = memref.load %arg9[%arg17, %arg18] : memref<128x128xf32, #map>
            %59 = memref.load %arg10[%arg17, %arg18] : memref<128x128xf32, #map>
            %60 = memref.load %arg11[%arg17, %arg18] : memref<128x128xf32, #map>
            %61 = arith.bitcast %60 : f32 to i32
            %62 = arith.bitcast %59 : f32 to i32
            %63 = arith.andi %62, %arg12 : i32
            %64 = arith.bitcast %58 : f32 to i32
            %65 = arith.andi %64, %arg12 : i32
            %66 = arith.cmpi eq, %65, %arg13 : i32
            %67 = arith.cmpi eq, %63, %arg14 : i32
            %68 = arith.andi %66, %67 : i1
            %69 = arith.cmpi eq, %63, %arg13 : i32
            %70 = arith.cmpi eq, %65, %arg14 : i32
            %71 = arith.andi %69, %70 : i1
            %72 = arith.ori %68, %71 : i1
            %73 = arith.cmpi ugt, %65, %arg13 : i32
            %74 = arith.cmpi ugt, %63, %arg13 : i32
            %75 = arith.ori %73, %74 : i1
            %76 = arith.ori %72, %75 : i1
            %77 = arith.select %76, %arg15, %61 : i32
            %78 = arith.bitcast %77 : i32 to f32
            memref.store %78, %arg16[%arg17, %arg18] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 12)
      sdnn.core_arrive(3, 17)
      sdnn.core_arrive(3, 19)
      sdnn.core_arrive(3, 21)
      %55 = arith.muli %35, %c131072 : index
      %56 = arith.addi %55, %38 : index
      %reinterpret_cast_6 = memref.reinterpret_cast %arg3 to offset: [%56], sizes: [128, 128], strides: [1024, 1] : memref<*xf32, 1> to memref<128x128xf32, strided<[1024, 1], offset: ?>, 1>
      %57 = arith.minsi %44, %c128 : index
      %subview_7 = memref.subview %39[0, 0] [%57, %50] [1, 1] : memref<128x128xf32, #map> to memref<?x?xf32, strided<[128, 1]>>
      %subview_8 = memref.subview %reinterpret_cast_6[0, 0] [%57, %50] [1, 1] : memref<128x128xf32, strided<[1024, 1], offset: ?>, 1> to memref<?x?xf32, strided<[1024, 1], offset: ?>, 1>
      %cast = memref.cast %subview_8 : memref<?x?xf32, strided<[1024, 1], offset: ?>, 1> to memref<?x?xf32, strided<[?, 1], offset: ?>, 1>
      sdnn.dma out %subview_7, %cast {signal = array<i32: 13>, wait = array<i32: 12>} : memref<?x?xf32, strided<[128, 1]>> memref<?x?xf32, strided<[?, 1], offset: ?>, 1> -> 
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
