#map = affine_map<(d0, d1) -> (d0 * 32 + d1)>
#map1 = affine_map<(d0, d1) -> (d0 * 16 + d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1)>
module {
  llvm.func @llvm.xpu.sync_core(i32) attributes {passthrough = ["convergent", "noduplicate"]}
  llvm.func @llvm.xpu.xfence()
  llvm.func @llvm.xpu.mfence.v2(i32)
  func.func @triton_mm(%arg0: memref<*xbf16, 1> {tt.divisibility = 16 : i32}, %arg1: memref<*xbf16, 1> {tt.divisibility = 16 : i32}, %arg2: memref<*xbf16, 1> {tt.divisibility = 16 : i32}, %arg3: i32, %arg4: i32, %arg5: i32) {
    %c7_i32 = arith.constant 7 : i32
    %c255_i32 = arith.constant 255 : i32
    %c0_i32 = arith.constant 0 : i32
    %c32_i32 = arith.constant 32 : i32
    %c8_i32 = arith.constant 8 : i32
    %c4_i32 = arith.constant 4 : i32
    %c256_i32 = arith.constant 256 : i32
    %c16_i32 = arith.constant 16 : i32
    %c1_i32 = arith.constant 1 : i32
    %c32767_i32 = arith.constant 32767 : i32
    %c-65536_i32 = arith.constant -65536 : i32
    %c2147483647_i32 = arith.constant 2147483647 : i32
    %c2139095040_i32 = arith.constant 2139095040 : i32
    %c32768 = arith.constant 32768 : index
    %c16384 = arith.constant 16384 : index
    %c4096 = arith.constant 4096 : index
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    %c1024 = arith.constant 1024 : index
    %c128 = arith.constant 128 : index
    %c4194304_i32 = arith.constant 4194304 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    "sdnn.init"() {signal = [array<i32: 13, 11, 5, 3, 9, 7>], signal_num = array<i64: 1, 1, 255, 255, 255, 255>} : () -> ()
    %0 = sdnn.get_sdnn_id : i32
    %1 = sdnn.get_num_sdnn : i32
    %2 = arith.muli %arg3, %arg4 : i32
    %3 = arith.muli %2, %arg5 : i32
    %4 = arith.subi %1, %c1_i32 : i32
    %5 = arith.addi %3, %4 : i32
    %6 = arith.divsi %5, %1 : i32
    %7 = arith.muli %0, %6 : i32
    %8 = arith.addi %7, %6 : i32
    %9 = arith.minsi %8, %3 : i32
    %10 = arith.index_cast %7 : i32 to index
    %11 = arith.index_cast %9 : i32 to index
    %12 = sdnn.counter {bufferNum = 255 : i32} : memref<1xi32, 6>
    %13 = sdnn.counter {bufferNum = 255 : i32} : memref<1xi32, 6>
    %14 = sdnn.counter {bufferNum = 255 : i32} : memref<1xi32, 6>
    %15 = sdnn.counter {bufferNum = 255 : i32} : memref<1xi32, 6>
    scf.for %arg6 = %10 to %11 step %c1 {
      %16 = arith.index_cast %arg6 : index to i32
      %17 = arith.divsi %16, %arg5 : i32
      %18 = arith.divsi %17, %arg4 : i32
      %19 = arith.divsi %18, %c256_i32 : i32
      %20 = arith.muli %19, %c8_i32 : i32
      %21 = arith.subi %c4_i32, %20 : i32
      %22 = arith.minsi %21, %c8_i32 : i32
      %23 = arith.remsi %18, %22 : i32
      %24 = arith.addi %20, %23 : i32
      %25 = arith.remsi %18, %c256_i32 : i32
      %26 = arith.divsi %25, %22 : i32
      %27 = arith.cmpi sge, %24, %c0_i32 : i32
      llvm.intr.assume %27 : i1
      %28 = arith.cmpi sge, %26, %c0_i32 : i32
      llvm.intr.assume %28 : i1
      %29 = arith.muli %24, %c32_i32 : i32
      %30 = arith.index_cast %24 : i32 to index
      %31 = arith.muli %26, %c32_i32 : i32
      %32 = arith.index_cast %26 : i32 to index
      %33 = arith.muli %32, %c32 : index
      %alloca = memref.alloca() : memref<1xi32>
      memref.store %c0_i32, %alloca[%c0] : memref<1xi32>
      %alloc = memref.alloc() {bufferNum = 1 : index, bufferSize = 4096 : index, init_signal = 13 : i64, sram = "uni_sram"} : memref<32x32xf32, #map>
      %alloc_0 = memref.alloc() {bufferNum = 1 : index, bufferSize = 4096 : index, init_signal = 11 : i64, pingpong_single, sram = "uni_sram"} : memref<32x32xf32, #map>
      sdnn.core_wait(4, 11) {core_name = "mma"}
      scf.for %arg7 = %c0_i32 to %c8_i32 step %c1_i32  : i32 {
        %48 = arith.index_cast %arg7 : i32 to index
        %49 = arith.muli %48, %c16 : index
        %50 = arith.muli %30, %c4096 : index
        %51 = arith.addi %50, %49 : index
        %52 = arith.cmpi sge, %51, %c16384 : index
        %53 = arith.divsi %51, %c16384 : index
        %54 = arith.muli %53, %c16384 : index
        %55 = arith.subi %51, %54 : index
        %56 = arith.select %52, %55, %51 : index
        %57 = arith.divsi %56, %c128 : index
        %58 = arith.addi %57, %c32 : index
        %59 = arith.minsi %58, %c128 : index
        %60 = arith.subi %59, %57 : index
        %reinterpret_cast_2 = memref.reinterpret_cast %arg0 to offset: [%51], sizes: [%60, 16], strides: [128, 1] : memref<*xbf16, 1> to memref<?x16xbf16, strided<[128, 1], offset: ?>, 1>
        %cast_3 = memref.cast %reinterpret_cast_2 : memref<?x16xbf16, strided<[128, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
        %alloc_4 = memref.alloc() {bufferNum = 255 : index, bufferSize = 2048 : index, init_signal = 5 : i64, processed, sram = "l1d"} : memref<32x16xf32, #map1, 3>
        %61 = sdnn.get_fifo_buffer %alloc_4, %15, {bufferNum = 255 : i32, bufferSize = 2048 : i32} : memref<32x16xf32, #map1, 3> memref<1xi32, 6> to memref<32x16xf32, #map1, 3>
        %alloc_5 = memref.alloc() {bufferNum = 255 : index, bufferSize = 4096 : index, init_signal = 3 : i64, processed, sram = "uni_sram", trans = false} : memref<32x16xf32, #map>
        %62 = sdnn.get_fifo_buffer %alloc_5, %14, {bufferNum = 255 : i32, bufferSize = 4096 : i32} : memref<32x16xf32, #map> memref<1xi32, 6> to memref<32x16xf32, #map>
        %dim = memref.dim %reinterpret_cast_2, %c0 : memref<?x16xbf16, strided<[128, 1], offset: ?>, 1>
        %subview_6 = memref.subview %62[0, 0] [%dim, 16] [1, 1] : memref<32x16xf32, #map> to memref<?x16xf32, strided<[32, 1]>>
        %cast_7 = memref.cast %subview_6 : memref<?x16xf32, strided<[32, 1]>> to memref<?x?xf32, strided<[32, 1]>>
        sdnn.dma in %cast_3, %cast_7 {core_id = 1 : i32, signal = array<i32: 2>, wait = array<i32: 3>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[32, 1]>> -> 
        sdnn.ds %62, %61 mask_dims[%c32, %c16] {sdnn.layout = "CR_RowMajor", signal = array<i32: 3, 4>, signal_cached = array<i32: 4>, wait = array<i32: 2, 5>, wait_cached = array<i32: 5>} : memref<32x16xf32, #map> memref<32x16xf32, #map1, 3> -> 
        %63 = arith.muli %48, %c16384 : index
        %64 = arith.addi %63, %33 : index
        %65 = arith.remsi %64, %c1024 : index
        %66 = arith.addi %65, %c32 : index
        %67 = arith.minsi %66, %c1024 : index
        %68 = arith.subi %67, %65 : index
        %reinterpret_cast_8 = memref.reinterpret_cast %arg1 to offset: [%64], sizes: [16, %68], strides: [1024, 1] : memref<*xbf16, 1> to memref<16x?xbf16, strided<[1024, 1], offset: ?>, 1>
        %cast_9 = memref.cast %reinterpret_cast_8 : memref<16x?xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
        %alloc_10 = memref.alloc() {bufferNum = 255 : index, bufferSize = 2048 : index, init_signal = 9 : i64, processed, sram = "l1w"} : memref<16x32xf32, #map, 4>
        %69 = sdnn.get_fifo_buffer %alloc_10, %13, {bufferNum = 255 : i32, bufferSize = 2048 : i32} : memref<16x32xf32, #map, 4> memref<1xi32, 6> to memref<16x32xf32, #map, 4>
        %alloc_11 = memref.alloc() {bufferNum = 255 : index, bufferSize = 2048 : index, init_signal = 7 : i64, processed, sram = "uni_sram", trans = false} : memref<16x32xf32, #map>
        %70 = sdnn.get_fifo_buffer %alloc_11, %12, {bufferNum = 255 : i32, bufferSize = 2048 : i32} : memref<16x32xf32, #map> memref<1xi32, 6> to memref<16x32xf32, #map>
        %dim_12 = memref.dim %reinterpret_cast_8, %c1 : memref<16x?xbf16, strided<[1024, 1], offset: ?>, 1>
        %subview_13 = memref.subview %70[0, 0] [16, %dim_12] [1, 1] : memref<16x32xf32, #map> to memref<16x?xf32, strided<[32, 1]>>
        %cast_14 = memref.cast %subview_13 : memref<16x?xf32, strided<[32, 1]>> to memref<?x?xf32, strided<[32, 1]>>
        sdnn.dma in %cast_9, %cast_14 {core_id = 6 : i32, signal = array<i32: 6>, wait = array<i32: 7>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[32, 1]>> -> 
        sdnn.ds %70, %69 mask_dims[%c16, %c32] {sdnn.layout = "CR_RowMajor", signal = array<i32: 7, 8>, signal_cached = array<i32: 8>, wait = array<i32: 6, 9>, wait_cached = array<i32: 9>} : memref<16x32xf32, #map> memref<16x32xf32, #map, 4> -> 
        %71 = memref.load %alloca[%c0] : memref<1xi32>
        sdnn.mma %61, %69, %alloc_0 acc %71 mask_dims[%c32, %c32, %c16] {indexing_maps = [#map2, #map3, #map4], rcOut = false, sdnn.layout = "CR_RowMajor", signal = array<i32: 5, 9>, wait = array<i32: 4, 8>} : (memref<32x16xf32, #map1, 3>, memref<16x32xf32, #map, 4>, memref<32x32xf32, #map>, i32, index, index, index) -> ()
        %72 = arith.addi %71, %c1_i32 : i32
        memref.store %72, %alloca[%c0] : memref<1xi32>
      } {mac_acc = true, sdnn.arg_layout.1 = "CR_RowMajor", sdnn.layout = "CR_RowMajor"}
      sdnn.core_arrive(4, 10) {core_name = "mma"}
      %34 = arith.muli %30, %c32768 : index
      %35 = arith.addi %34, %33 : index
      %reinterpret_cast = memref.reinterpret_cast %arg2 to offset: [%35], sizes: [32, 32], strides: [1024, 1] : memref<*xbf16, 1> to memref<32x32xbf16, strided<[1024, 1], offset: ?>, 1>
      sdnn.core_wait(3, 10)
      sdnn.core_wait(3, 13)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%alloc_0, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<32x32xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<32x32xf32, #map>):
        %c0_2 = arith.constant 0 : index
        %c32_3 = arith.constant 32 : index
        %c1_4 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        scf.for %arg16 = %c0_2 to %c4 step %c1_4 {
          scf.for %arg17 = %c0_2 to %c32_3 step %c1_4 {
            %48 = memref.load %arg7[%arg16, %arg17] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg8 : i32
            %51 = arith.ori %49, %arg9 : i32
            %52 = arith.cmpi ugt, %50, %arg10 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg11 : i32
            %55 = arith.shrui %49, %arg12 : i32
            %56 = arith.andi %55, %arg13 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg14 : i32
            %59 = arith.cmpi uge, %50, %arg10 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg15[%arg16, %arg17] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_0, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<32x32xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<32x32xf32, #map>):
        %c0_2 = arith.constant 0 : index
        %c32_3 = arith.constant 32 : index
        %c1_4 = arith.constant 1 : index
        %c4 = arith.constant 4 : index
        %c8 = arith.constant 8 : index
        scf.for %arg16 = %c4 to %c8 step %c1_4 {
          scf.for %arg17 = %c0_2 to %c32_3 step %c1_4 {
            %48 = memref.load %arg7[%arg16, %arg17] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg8 : i32
            %51 = arith.ori %49, %arg9 : i32
            %52 = arith.cmpi ugt, %50, %arg10 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg11 : i32
            %55 = arith.shrui %49, %arg12 : i32
            %56 = arith.andi %55, %arg13 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg14 : i32
            %59 = arith.cmpi uge, %50, %arg10 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg15[%arg16, %arg17] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_0, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<32x32xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<32x32xf32, #map>):
        %c0_2 = arith.constant 0 : index
        %c32_3 = arith.constant 32 : index
        %c1_4 = arith.constant 1 : index
        %c8 = arith.constant 8 : index
        %c12 = arith.constant 12 : index
        scf.for %arg16 = %c8 to %c12 step %c1_4 {
          scf.for %arg17 = %c0_2 to %c32_3 step %c1_4 {
            %48 = memref.load %arg7[%arg16, %arg17] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg8 : i32
            %51 = arith.ori %49, %arg9 : i32
            %52 = arith.cmpi ugt, %50, %arg10 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg11 : i32
            %55 = arith.shrui %49, %arg12 : i32
            %56 = arith.andi %55, %arg13 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg14 : i32
            %59 = arith.cmpi uge, %50, %arg10 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg15[%arg16, %arg17] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_0, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<32x32xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<32x32xf32, #map>):
        %c0_2 = arith.constant 0 : index
        %c32_3 = arith.constant 32 : index
        %c1_4 = arith.constant 1 : index
        %c12 = arith.constant 12 : index
        %c16_5 = arith.constant 16 : index
        scf.for %arg16 = %c12 to %c16_5 step %c1_4 {
          scf.for %arg17 = %c0_2 to %c32_3 step %c1_4 {
            %48 = memref.load %arg7[%arg16, %arg17] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg8 : i32
            %51 = arith.ori %49, %arg9 : i32
            %52 = arith.cmpi ugt, %50, %arg10 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg11 : i32
            %55 = arith.shrui %49, %arg12 : i32
            %56 = arith.andi %55, %arg13 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg14 : i32
            %59 = arith.cmpi uge, %50, %arg10 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg15[%arg16, %arg17] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_0, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<32x32xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<32x32xf32, #map>):
        %c0_2 = arith.constant 0 : index
        %c32_3 = arith.constant 32 : index
        %c1_4 = arith.constant 1 : index
        %c16_5 = arith.constant 16 : index
        %c20 = arith.constant 20 : index
        scf.for %arg16 = %c16_5 to %c20 step %c1_4 {
          scf.for %arg17 = %c0_2 to %c32_3 step %c1_4 {
            %48 = memref.load %arg7[%arg16, %arg17] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg8 : i32
            %51 = arith.ori %49, %arg9 : i32
            %52 = arith.cmpi ugt, %50, %arg10 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg11 : i32
            %55 = arith.shrui %49, %arg12 : i32
            %56 = arith.andi %55, %arg13 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg14 : i32
            %59 = arith.cmpi uge, %50, %arg10 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg15[%arg16, %arg17] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_0, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<32x32xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<32x32xf32, #map>):
        %c0_2 = arith.constant 0 : index
        %c32_3 = arith.constant 32 : index
        %c1_4 = arith.constant 1 : index
        %c20 = arith.constant 20 : index
        %c24 = arith.constant 24 : index
        scf.for %arg16 = %c20 to %c24 step %c1_4 {
          scf.for %arg17 = %c0_2 to %c32_3 step %c1_4 {
            %48 = memref.load %arg7[%arg16, %arg17] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg8 : i32
            %51 = arith.ori %49, %arg9 : i32
            %52 = arith.cmpi ugt, %50, %arg10 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg11 : i32
            %55 = arith.shrui %49, %arg12 : i32
            %56 = arith.andi %55, %arg13 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg14 : i32
            %59 = arith.cmpi uge, %50, %arg10 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg15[%arg16, %arg17] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_0, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<32x32xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<32x32xf32, #map>):
        %c0_2 = arith.constant 0 : index
        %c32_3 = arith.constant 32 : index
        %c1_4 = arith.constant 1 : index
        %c24 = arith.constant 24 : index
        %c28 = arith.constant 28 : index
        scf.for %arg16 = %c24 to %c28 step %c1_4 {
          scf.for %arg17 = %c0_2 to %c32_3 step %c1_4 {
            %48 = memref.load %arg7[%arg16, %arg17] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg8 : i32
            %51 = arith.ori %49, %arg9 : i32
            %52 = arith.cmpi ugt, %50, %arg10 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg11 : i32
            %55 = arith.shrui %49, %arg12 : i32
            %56 = arith.andi %55, %arg13 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg14 : i32
            %59 = arith.cmpi uge, %50, %arg10 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg15[%arg16, %arg17] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_0, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<32x32xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%alloc : memref<32x32xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<32x32xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<32x32xf32, #map>):
        %c0_2 = arith.constant 0 : index
        %c32_3 = arith.constant 32 : index
        %c1_4 = arith.constant 1 : index
        %c28 = arith.constant 28 : index
        scf.for %arg16 = %c28 to %c32_3 step %c1_4 {
          scf.for %arg17 = %c0_2 to %c32_3 step %c1_4 {
            %48 = memref.load %arg7[%arg16, %arg17] : memref<32x32xf32, #map>
            %49 = arith.bitcast %48 : f32 to i32
            %50 = arith.andi %49, %arg8 : i32
            %51 = arith.ori %49, %arg9 : i32
            %52 = arith.cmpi ugt, %50, %arg10 : i32
            %53 = arith.select %52, %51, %49 : i32
            %54 = arith.addi %49, %arg11 : i32
            %55 = arith.shrui %49, %arg12 : i32
            %56 = arith.andi %55, %arg13 : i32
            %57 = arith.addi %54, %56 : i32
            %58 = arith.andi %57, %arg14 : i32
            %59 = arith.cmpi uge, %50, %arg10 : i32
            %60 = arith.select %59, %53, %58 : i32
            %61 = arith.bitcast %60 : i32 to f32
            memref.store %61, %arg15[%arg16, %arg17] : memref<32x32xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 11)
      sdnn.core_arrive(3, 12)
      %36 = arith.index_cast %29 : i32 to index
      %37 = arith.addi %36, %c32 : index
      %38 = arith.minsi %37, %c128 : index
      %39 = arith.maxsi %38, %36 : index
      %40 = arith.subi %39, %36 : index
      %41 = arith.index_cast %31 : i32 to index
      %42 = arith.addi %41, %c32 : index
      %43 = arith.minsi %42, %c1024 : index
      %44 = arith.maxsi %43, %41 : index
      %45 = arith.subi %44, %41 : index
      %46 = arith.minsi %40, %c32 : index
      %47 = arith.minsi %45, %c32 : index
      %subview = memref.subview %reinterpret_cast[0, 0] [%46, %47] [1, 1] : memref<32x32xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[1024, 1], offset: ?>, 1>
      %cast = memref.cast %subview : memref<?x?xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, 1], offset: ?>, 1>
      %subview_1 = memref.subview %alloc[0, 0] [%46, %47] [1, 1] : memref<32x32xf32, #map> to memref<?x?xf32, strided<[32, 1]>>
      sdnn.dma out %subview_1, %cast {signal = array<i32: 13>, wait = array<i32: 12>} : memref<?x?xf32, strided<[32, 1]>> memref<?x?xbf16, strided<[?, 1], offset: ?>, 1> -> 
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
