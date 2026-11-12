#map = affine_map<(d0, d1) -> (d0 * 128 + d1)>
#map1 = affine_map<(d0, d1) -> (d0 * 64 + d1)>
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
    %c128_i32 = arith.constant 128 : i32
    %c8_i32 = arith.constant 8 : i32
    %c32_i32 = arith.constant 32 : i32
    %c16_i32 = arith.constant 16 : i32
    %c1_i32 = arith.constant 1 : i32
    %c32767_i32 = arith.constant 32767 : i32
    %c-65536_i32 = arith.constant -65536 : i32
    %c2147483647_i32 = arith.constant 2147483647 : i32
    %c2139095040_i32 = arith.constant 2139095040 : i32
    %c131072 = arith.constant 131072 : index
    %c4194304 = arith.constant 4194304 : index
    %c262144 = arith.constant 262144 : index
    %c64 = arith.constant 64 : index
    %c128 = arith.constant 128 : index
    %c2048 = arith.constant 2048 : index
    %c4194304_i32 = arith.constant 4194304 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    "sdnn.init"() {signal = [array<i32: 13, 11, 5, 3, 9, 7>], signal_num = array<i64: 3, 3, 24, 19, 40, 18>} : () -> ()
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
    %12 = sdnn.counter {bufferNum = 18 : i32} : memref<1xi32, 6>
    %13 = sdnn.counter {bufferNum = 40 : i32} : memref<1xi32, 6>
    %14 = sdnn.counter {bufferNum = 19 : i32} : memref<1xi32, 6>
    %15 = sdnn.counter {bufferNum = 24 : i32} : memref<1xi32, 6>
    %16 = sdnn.counter {bufferNum = 3 : i32} : memref<1xi32, 6>
    %17 = sdnn.counter {bufferNum = 3 : i32} : memref<1xi32, 6>
    scf.for %arg6 = %10 to %11 step %c1 {
      %18 = arith.index_cast %arg6 : index to i32
      %19 = arith.divsi %18, %arg5 : i32
      %20 = arith.divsi %19, %arg4 : i32
      %21 = arith.divsi %20, %c128_i32 : i32
      %22 = arith.muli %21, %c8_i32 : i32
      %23 = arith.subi %c16_i32, %22 : i32
      %24 = arith.minsi %23, %c8_i32 : i32
      %25 = arith.remsi %20, %24 : i32
      %26 = arith.addi %22, %25 : i32
      %27 = arith.remsi %20, %c128_i32 : i32
      %28 = arith.divsi %27, %24 : i32
      %29 = arith.cmpi sge, %26, %c0_i32 : i32
      llvm.intr.assume %29 : i1
      %30 = arith.cmpi sge, %28, %c0_i32 : i32
      llvm.intr.assume %30 : i1
      %31 = arith.muli %26, %c128_i32 : i32
      %32 = arith.index_cast %26 : i32 to index
      %33 = arith.muli %28, %c128_i32 : i32
      %34 = arith.index_cast %28 : i32 to index
      %35 = arith.muli %34, %c128 : index
      %alloca = memref.alloca() : memref<1xi32>
      memref.store %c0_i32, %alloca[%c0] : memref<1xi32>
      %alloc = memref.alloc() {bufferNum = 3 : index, bufferSize = 65536 : index, init_signal = 13 : i64, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %36 = sdnn.get_fifo_buffer %alloc, %17, {bufferNum = 3 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      %alloc_0 = memref.alloc() {bufferNum = 3 : index, bufferSize = 65536 : index, init_signal = 11 : i64, pingpong_single, processed, sram = "uni_sram"} : memref<128x128xf32, #map>
      %37 = sdnn.get_fifo_buffer %alloc_0, %16, {bufferNum = 3 : i32, bufferSize = 65536 : i32} : memref<128x128xf32, #map> memref<1xi32, 6> to memref<128x128xf32, #map>
      sdnn.core_wait(4, 11) {core_name = "mma"}
      scf.for %arg7 = %c0_i32 to %c32_i32 step %c1_i32  : i32 {
        %52 = arith.index_cast %arg7 : i32 to index
        %53 = arith.muli %52, %c64 : index
        %54 = arith.muli %32, %c262144 : index
        %55 = arith.addi %54, %53 : index
        %56 = arith.cmpi sge, %55, %c4194304 : index
        %57 = arith.divsi %55, %c4194304 : index
        %58 = arith.muli %57, %c4194304 : index
        %59 = arith.subi %55, %58 : index
        %60 = arith.select %56, %59, %55 : index
        %61 = arith.divsi %60, %c2048 : index
        %62 = arith.addi %61, %c128 : index
        %63 = arith.minsi %62, %c2048 : index
        %64 = arith.subi %63, %61 : index
        %reinterpret_cast_2 = memref.reinterpret_cast %arg0 to offset: [%55], sizes: [%64, 64], strides: [2048, 1] : memref<*xbf16, 1> to memref<?x64xbf16, strided<[2048, 1], offset: ?>, 1>
        %cast_3 = memref.cast %reinterpret_cast_2 : memref<?x64xbf16, strided<[2048, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
        %alloc_4 = memref.alloc() {bufferNum = 24 : index, bufferSize = 32768 : index, init_signal = 5 : i64, processed, sram = "l1d"} : memref<128x64xf32, #map1, 3>
        %65 = sdnn.get_fifo_buffer %alloc_4, %15, {bufferNum = 24 : i32, bufferSize = 32768 : i32} : memref<128x64xf32, #map1, 3> memref<1xi32, 6> to memref<128x64xf32, #map1, 3>
        %alloc_5 = memref.alloc() {bufferNum = 19 : index, bufferSize = 32768 : index, init_signal = 3 : i64, processed, sram = "uni_sram", trans = false} : memref<128x64xf32, #map1>
        %66 = sdnn.get_fifo_buffer %alloc_5, %14, {bufferNum = 19 : i32, bufferSize = 32768 : i32} : memref<128x64xf32, #map1> memref<1xi32, 6> to memref<128x64xf32, #map1>
        %dim = memref.dim %reinterpret_cast_2, %c0 : memref<?x64xbf16, strided<[2048, 1], offset: ?>, 1>
        %subview_6 = memref.subview %66[0, 0] [%dim, 64] [1, 1] : memref<128x64xf32, #map1> to memref<?x64xf32, strided<[64, 1]>>
        %cast_7 = memref.cast %subview_6 : memref<?x64xf32, strided<[64, 1]>> to memref<?x?xf32, strided<[64, 1]>>
        sdnn.dma in %cast_3, %cast_7 {core_id = 1 : i32, signal = array<i32: 2>, wait = array<i32: 3>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[64, 1]>> -> 
        sdnn.ds %66, %65 mask_dims[%c128, %c64] {sdnn.layout = "CR_RowMajor", signal = array<i32: 3, 4>, signal_cached = array<i32: 4>, wait = array<i32: 2, 5>, wait_cached = array<i32: 5>} : memref<128x64xf32, #map1> memref<128x64xf32, #map1, 3> -> 
        %67 = arith.muli %52, %c131072 : index
        %68 = arith.addi %67, %35 : index
        %69 = arith.remsi %68, %c2048 : index
        %70 = arith.addi %69, %c128 : index
        %71 = arith.minsi %70, %c2048 : index
        %72 = arith.subi %71, %69 : index
        %reinterpret_cast_8 = memref.reinterpret_cast %arg1 to offset: [%68], sizes: [64, %72], strides: [2048, 1] : memref<*xbf16, 1> to memref<64x?xbf16, strided<[2048, 1], offset: ?>, 1>
        %cast_9 = memref.cast %reinterpret_cast_8 : memref<64x?xbf16, strided<[2048, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, ?], offset: ?>, 1>
        %alloc_10 = memref.alloc() {bufferNum = 40 : index, bufferSize = 32768 : index, init_signal = 9 : i64, processed, sram = "l1w"} : memref<64x128xf32, #map, 4>
        %73 = sdnn.get_fifo_buffer %alloc_10, %13, {bufferNum = 40 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map, 4> memref<1xi32, 6> to memref<64x128xf32, #map, 4>
        %alloc_11 = memref.alloc() {bufferNum = 18 : index, bufferSize = 32768 : index, init_signal = 7 : i64, processed, sram = "uni_sram", trans = false} : memref<64x128xf32, #map>
        %74 = sdnn.get_fifo_buffer %alloc_11, %12, {bufferNum = 18 : i32, bufferSize = 32768 : i32} : memref<64x128xf32, #map> memref<1xi32, 6> to memref<64x128xf32, #map>
        %dim_12 = memref.dim %reinterpret_cast_8, %c1 : memref<64x?xbf16, strided<[2048, 1], offset: ?>, 1>
        %subview_13 = memref.subview %74[0, 0] [64, %dim_12] [1, 1] : memref<64x128xf32, #map> to memref<64x?xf32, strided<[128, 1]>>
        %cast_14 = memref.cast %subview_13 : memref<64x?xf32, strided<[128, 1]>> to memref<?x?xf32, strided<[128, 1]>>
        sdnn.dma in %cast_9, %cast_14 {core_id = 6 : i32, signal = array<i32: 6>, wait = array<i32: 7>} : memref<?x?xbf16, strided<[?, ?], offset: ?>, 1> memref<?x?xf32, strided<[128, 1]>> -> 
        sdnn.ds %74, %73 mask_dims[%c64, %c128] {sdnn.layout = "CR_RowMajor", signal = array<i32: 7, 8>, signal_cached = array<i32: 8>, wait = array<i32: 6, 9>, wait_cached = array<i32: 9>} : memref<64x128xf32, #map> memref<64x128xf32, #map, 4> -> 
        %75 = memref.load %alloca[%c0] : memref<1xi32>
        sdnn.mma %65, %73, %37 acc %75 mask_dims[%c128, %c128, %c64] {indexing_maps = [#map2, #map3, #map4], rcOut = false, sdnn.layout = "CR_RowMajor", signal = array<i32: 5, 9>, wait = array<i32: 4, 8>} : (memref<128x64xf32, #map1, 3>, memref<64x128xf32, #map, 4>, memref<128x128xf32, #map>, i32, index, index, index) -> ()
        %76 = arith.addi %75, %c1_i32 : i32
        memref.store %76, %alloca[%c0] : memref<1xi32>
      } {mac_acc = true, sdnn.arg_layout.1 = "CR_RowMajor", sdnn.layout = "CR_RowMajor"}
      sdnn.core_arrive(4, 10) {core_name = "mma"}
      %38 = arith.muli %32, %c262144 : index
      %39 = arith.addi %38, %35 : index
      %reinterpret_cast = memref.reinterpret_cast %arg2 to offset: [%39], sizes: [128, 128], strides: [2048, 1] : memref<*xbf16, 1> to memref<128x128xbf16, strided<[2048, 1], offset: ?>, 1>
      sdnn.core_wait(3, 10)
      sdnn.core_wait(3, 13)
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%c7_i32) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_specialize ins(%37, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%36 : memref<128x128xf32, #map>) attributes {core_id = 0 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<128x128xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<128x128xf32, #map>):
        %c0_2 = arith.constant 0 : index
        %c128_3 = arith.constant 128 : index
        %c1_4 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        scf.for %arg16 = %c0_2 to %c16 step %c1_4 {
          scf.for %arg17 = %c0_2 to %c128_3 step %c1_4 {
            %52 = memref.load %arg7[%arg16, %arg17] : memref<128x128xf32, #map>
            %53 = arith.bitcast %52 : f32 to i32
            %54 = arith.andi %53, %arg8 : i32
            %55 = arith.ori %53, %arg9 : i32
            %56 = arith.cmpi ugt, %54, %arg10 : i32
            %57 = arith.select %56, %55, %53 : i32
            %58 = arith.addi %53, %arg11 : i32
            %59 = arith.shrui %53, %arg12 : i32
            %60 = arith.andi %59, %arg13 : i32
            %61 = arith.addi %58, %60 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.cmpi uge, %54, %arg10 : i32
            %64 = arith.select %63, %57, %62 : i32
            %65 = arith.bitcast %64 : i32 to f32
            memref.store %65, %arg15[%arg16, %arg17] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%37, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%36 : memref<128x128xf32, #map>) attributes {core_id = 1 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<128x128xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<128x128xf32, #map>):
        %c0_2 = arith.constant 0 : index
        %c128_3 = arith.constant 128 : index
        %c1_4 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        %c32 = arith.constant 32 : index
        scf.for %arg16 = %c16 to %c32 step %c1_4 {
          scf.for %arg17 = %c0_2 to %c128_3 step %c1_4 {
            %52 = memref.load %arg7[%arg16, %arg17] : memref<128x128xf32, #map>
            %53 = arith.bitcast %52 : f32 to i32
            %54 = arith.andi %53, %arg8 : i32
            %55 = arith.ori %53, %arg9 : i32
            %56 = arith.cmpi ugt, %54, %arg10 : i32
            %57 = arith.select %56, %55, %53 : i32
            %58 = arith.addi %53, %arg11 : i32
            %59 = arith.shrui %53, %arg12 : i32
            %60 = arith.andi %59, %arg13 : i32
            %61 = arith.addi %58, %60 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.cmpi uge, %54, %arg10 : i32
            %64 = arith.select %63, %57, %62 : i32
            %65 = arith.bitcast %64 : i32 to f32
            memref.store %65, %arg15[%arg16, %arg17] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%37, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%36 : memref<128x128xf32, #map>) attributes {core_id = 2 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<128x128xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<128x128xf32, #map>):
        %c0_2 = arith.constant 0 : index
        %c128_3 = arith.constant 128 : index
        %c1_4 = arith.constant 1 : index
        %c32 = arith.constant 32 : index
        %c48 = arith.constant 48 : index
        scf.for %arg16 = %c32 to %c48 step %c1_4 {
          scf.for %arg17 = %c0_2 to %c128_3 step %c1_4 {
            %52 = memref.load %arg7[%arg16, %arg17] : memref<128x128xf32, #map>
            %53 = arith.bitcast %52 : f32 to i32
            %54 = arith.andi %53, %arg8 : i32
            %55 = arith.ori %53, %arg9 : i32
            %56 = arith.cmpi ugt, %54, %arg10 : i32
            %57 = arith.select %56, %55, %53 : i32
            %58 = arith.addi %53, %arg11 : i32
            %59 = arith.shrui %53, %arg12 : i32
            %60 = arith.andi %59, %arg13 : i32
            %61 = arith.addi %58, %60 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.cmpi uge, %54, %arg10 : i32
            %64 = arith.select %63, %57, %62 : i32
            %65 = arith.bitcast %64 : i32 to f32
            memref.store %65, %arg15[%arg16, %arg17] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%37, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%36 : memref<128x128xf32, #map>) attributes {core_id = 3 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<128x128xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<128x128xf32, #map>):
        %c0_2 = arith.constant 0 : index
        %c128_3 = arith.constant 128 : index
        %c1_4 = arith.constant 1 : index
        %c48 = arith.constant 48 : index
        %c64_5 = arith.constant 64 : index
        scf.for %arg16 = %c48 to %c64_5 step %c1_4 {
          scf.for %arg17 = %c0_2 to %c128_3 step %c1_4 {
            %52 = memref.load %arg7[%arg16, %arg17] : memref<128x128xf32, #map>
            %53 = arith.bitcast %52 : f32 to i32
            %54 = arith.andi %53, %arg8 : i32
            %55 = arith.ori %53, %arg9 : i32
            %56 = arith.cmpi ugt, %54, %arg10 : i32
            %57 = arith.select %56, %55, %53 : i32
            %58 = arith.addi %53, %arg11 : i32
            %59 = arith.shrui %53, %arg12 : i32
            %60 = arith.andi %59, %arg13 : i32
            %61 = arith.addi %58, %60 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.cmpi uge, %54, %arg10 : i32
            %64 = arith.select %63, %57, %62 : i32
            %65 = arith.bitcast %64 : i32 to f32
            memref.store %65, %arg15[%arg16, %arg17] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%37, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%36 : memref<128x128xf32, #map>) attributes {core_id = 4 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<128x128xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<128x128xf32, #map>):
        %c0_2 = arith.constant 0 : index
        %c128_3 = arith.constant 128 : index
        %c1_4 = arith.constant 1 : index
        %c64_5 = arith.constant 64 : index
        %c80 = arith.constant 80 : index
        scf.for %arg16 = %c64_5 to %c80 step %c1_4 {
          scf.for %arg17 = %c0_2 to %c128_3 step %c1_4 {
            %52 = memref.load %arg7[%arg16, %arg17] : memref<128x128xf32, #map>
            %53 = arith.bitcast %52 : f32 to i32
            %54 = arith.andi %53, %arg8 : i32
            %55 = arith.ori %53, %arg9 : i32
            %56 = arith.cmpi ugt, %54, %arg10 : i32
            %57 = arith.select %56, %55, %53 : i32
            %58 = arith.addi %53, %arg11 : i32
            %59 = arith.shrui %53, %arg12 : i32
            %60 = arith.andi %59, %arg13 : i32
            %61 = arith.addi %58, %60 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.cmpi uge, %54, %arg10 : i32
            %64 = arith.select %63, %57, %62 : i32
            %65 = arith.bitcast %64 : i32 to f32
            memref.store %65, %arg15[%arg16, %arg17] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%37, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%36 : memref<128x128xf32, #map>) attributes {core_id = 5 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<128x128xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<128x128xf32, #map>):
        %c0_2 = arith.constant 0 : index
        %c128_3 = arith.constant 128 : index
        %c1_4 = arith.constant 1 : index
        %c80 = arith.constant 80 : index
        %c96 = arith.constant 96 : index
        scf.for %arg16 = %c80 to %c96 step %c1_4 {
          scf.for %arg17 = %c0_2 to %c128_3 step %c1_4 {
            %52 = memref.load %arg7[%arg16, %arg17] : memref<128x128xf32, #map>
            %53 = arith.bitcast %52 : f32 to i32
            %54 = arith.andi %53, %arg8 : i32
            %55 = arith.ori %53, %arg9 : i32
            %56 = arith.cmpi ugt, %54, %arg10 : i32
            %57 = arith.select %56, %55, %53 : i32
            %58 = arith.addi %53, %arg11 : i32
            %59 = arith.shrui %53, %arg12 : i32
            %60 = arith.andi %59, %arg13 : i32
            %61 = arith.addi %58, %60 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.cmpi uge, %54, %arg10 : i32
            %64 = arith.select %63, %57, %62 : i32
            %65 = arith.bitcast %64 : i32 to f32
            memref.store %65, %arg15[%arg16, %arg17] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%37, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%36 : memref<128x128xf32, #map>) attributes {core_id = 6 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<128x128xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<128x128xf32, #map>):
        %c0_2 = arith.constant 0 : index
        %c128_3 = arith.constant 128 : index
        %c1_4 = arith.constant 1 : index
        %c96 = arith.constant 96 : index
        %c112 = arith.constant 112 : index
        scf.for %arg16 = %c96 to %c112 step %c1_4 {
          scf.for %arg17 = %c0_2 to %c128_3 step %c1_4 {
            %52 = memref.load %arg7[%arg16, %arg17] : memref<128x128xf32, #map>
            %53 = arith.bitcast %52 : f32 to i32
            %54 = arith.andi %53, %arg8 : i32
            %55 = arith.ori %53, %arg9 : i32
            %56 = arith.cmpi ugt, %54, %arg10 : i32
            %57 = arith.select %56, %55, %53 : i32
            %58 = arith.addi %53, %arg11 : i32
            %59 = arith.shrui %53, %arg12 : i32
            %60 = arith.andi %59, %arg13 : i32
            %61 = arith.addi %58, %60 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.cmpi uge, %54, %arg10 : i32
            %64 = arith.select %63, %57, %62 : i32
            %65 = arith.bitcast %64 : i32 to f32
            memref.store %65, %arg15[%arg16, %arg17] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%37, %c2147483647_i32, %c4194304_i32, %c2139095040_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32 : memref<128x128xf32, #map>, i32, i32, i32, i32, i32, i32, i32) outs(%36 : memref<128x128xf32, #map>) attributes {core_id = 7 : i32, little_core, sdnn.layout = "CR_RowMajor"} {
      ^bb0(%arg7: memref<128x128xf32, #map>, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<128x128xf32, #map>):
        %c0_2 = arith.constant 0 : index
        %c128_3 = arith.constant 128 : index
        %c1_4 = arith.constant 1 : index
        %c112 = arith.constant 112 : index
        scf.for %arg16 = %c112 to %c128_3 step %c1_4 {
          scf.for %arg17 = %c0_2 to %c128_3 step %c1_4 {
            %52 = memref.load %arg7[%arg16, %arg17] : memref<128x128xf32, #map>
            %53 = arith.bitcast %52 : f32 to i32
            %54 = arith.andi %53, %arg8 : i32
            %55 = arith.ori %53, %arg9 : i32
            %56 = arith.cmpi ugt, %54, %arg10 : i32
            %57 = arith.select %56, %55, %53 : i32
            %58 = arith.addi %53, %arg11 : i32
            %59 = arith.shrui %53, %arg12 : i32
            %60 = arith.andi %59, %arg13 : i32
            %61 = arith.addi %58, %60 : i32
            %62 = arith.andi %61, %arg14 : i32
            %63 = arith.cmpi uge, %54, %arg10 : i32
            %64 = arith.select %63, %57, %62 : i32
            %65 = arith.bitcast %64 : i32 to f32
            memref.store %65, %arg15[%arg16, %arg17] : memref<128x128xf32, #map>
          }
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%c255_i32) : (i32) -> ()
      sdnn.core_arrive(3, 11)
      sdnn.core_arrive(3, 12)
      %40 = arith.index_cast %31 : i32 to index
      %41 = arith.addi %40, %c128 : index
      %42 = arith.minsi %41, %c2048 : index
      %43 = arith.maxsi %42, %40 : index
      %44 = arith.subi %43, %40 : index
      %45 = arith.index_cast %33 : i32 to index
      %46 = arith.addi %45, %c128 : index
      %47 = arith.minsi %46, %c2048 : index
      %48 = arith.maxsi %47, %45 : index
      %49 = arith.subi %48, %45 : index
      %50 = arith.minsi %44, %c128 : index
      %51 = arith.minsi %49, %c128 : index
      %subview = memref.subview %reinterpret_cast[0, 0] [%50, %51] [1, 1] : memref<128x128xbf16, strided<[2048, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[2048, 1], offset: ?>, 1>
      %cast = memref.cast %subview : memref<?x?xbf16, strided<[2048, 1], offset: ?>, 1> to memref<?x?xbf16, strided<[?, 1], offset: ?>, 1>
      %subview_1 = memref.subview %36[0, 0] [%50, %51] [1, 1] : memref<128x128xf32, #map> to memref<?x?xf32, strided<[128, 1]>>
      sdnn.dma out %subview_1, %cast {signal = array<i32: 13>, wait = array<i32: 12>} : memref<?x?xf32, strided<[128, 1]>> memref<?x?xbf16, strided<[?, 1], offset: ?>, 1> -> 
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
