#map = affine_map<(d0, d1) -> (d0 * 256 + d1)>
#map1 = affine_map<(d0, d1) -> (d0 * 32 + d1)>
module {
  llvm.func @llvm.xpu.sync_core(i32) attributes {passthrough = ["convergent", "noduplicate"]}
  llvm.func @llvm.xpu.xfence()
  llvm.func @llvm.xpu.mfence.v2(i32)
  func.func @triton_unk_fused_0(%arg0: memref<*xbf16, 1> {tt.divisibility = 16 : i32}, %arg1: memref<*xbf16, 1> {tt.divisibility = 16 : i32}, %arg2: memref<*xf32, 1> {tt.divisibility = 16 : i32}, %arg3: i32 {tt.divisibility = 16 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32, %arg6: i32, %arg7: i32) {
    %c0 = arith.constant 0 : index
    %c128_i32 = arith.constant 128 : i32
    %cst = arith.constant 0.000000e+00 : f32
    %c2147483647_i32 = arith.constant 2147483647 : i32
    %c2139095040_i32 = arith.constant 2139095040 : i32
    %c2143289344_i32 = arith.constant 2143289344 : i32
    %c-2147483648_i32 = arith.constant -2147483648 : i32
    %c0_i32 = arith.constant 0 : i32
    %c16_i32 = arith.constant 16 : i32
    %c1_i32 = arith.constant 1 : i32
    %c32767_i32 = arith.constant 32767 : i32
    %c-65536_i32 = arith.constant -65536 : i32
    %c128 = arith.constant 128 : index
    %c1 = arith.constant 1 : index
    %c1024 = arith.constant 1024 : index
    %c4194304_i32 = arith.constant 4194304 : i32
    "sdnn.init"() {signal = [array<i32: 3, 5, 9, 11, 13, 15, 17>], signal_num = array<i64: 1, 1, 1, 1, 1, 1, 1>} : () -> ()
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
    %reinterpret_cast = memref.reinterpret_cast %arg1 to offset: [0], sizes: [1, 256], strides: [256, 1] : memref<*xbf16, 1> to memref<1x256xbf16, strided<[256, 1]>, 1>
    %alloc = memref.alloc() {bufferNum = 1 : index, bufferSize = 1024 : index, init_signal = 3 : i64, sram = "uni_sram", trans = false} : memref<1x256xf32, #map>
    sdnn.dma in %reinterpret_cast, %alloc {core_id = 1 : i32, signal = array<i32: 2>, wait = array<i32: 3>} : memref<1x256xbf16, strided<[256, 1]>, 1> memref<1x256xf32, #map> -> 
    sdnn.core_wait(5, 2) {core_name = "ew"}
    scf.for %arg8 = %10 to %11 step %c1 {
      %12 = arith.index_cast %arg8 : index to i32
      %13 = arith.divsi %12, %arg7 : i32
      %14 = arith.divsi %13, %arg6 : i32
      %alloc_0 = memref.alloc() {bufferNum = 1 : index, bufferSize = 1024 : index, init_signal = 5 : i64, sram = "uni_sram"} : memref<1x256xf32, #map>
      sdnn.ew fill %alloc_0 c %cst {sdnn.layout = "CR_RowMajor", signal = array<i32: 4>, wait = array<i32: 5>} : (memref<1x256xf32, #map>, f32) -> ()
      %15 = arith.index_cast %14 : i32 to index
      %16 = arith.muli %15, %c1024 : index
      %reinterpret_cast_1 = memref.reinterpret_cast %arg0 to offset: [%16], sizes: [1, 256], strides: [1024, 1] : memref<*xbf16, 1> to memref<1x256xbf16, strided<[1024, 1], offset: ?>, 1>
      %17 = arith.addi %15, %c1 : index
      %18 = arith.minsi %17, %c128 : index
      %19 = arith.maxsi %18, %15 : index
      %20 = arith.subi %19, %15 : index
      %alloc_2 = memref.alloc() {bufferNum = 1 : index, bufferSize = 1024 : index, init_signal = 9 : i64, sram = "uni_sram", trans = false} : memref<1x256xf32, #map>
      %21 = arith.cmpi slt, %20, %c1 : index
      sdnn.ew fill %alloc_2 c %cst pred %21 {core_id = 1 : i32, signal = array<i32: 6>, wait = array<i32: 9>} : (memref<1x256xf32, #map>, f32, i1) -> ()
      %subview = memref.subview %reinterpret_cast_1[0, 0] [%20, 256] [1, 1] : memref<1x256xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x256xbf16, strided<[1024, 1], offset: ?>, 1>
      %cast = memref.cast %subview : memref<?x256xbf16, strided<[1024, 1], offset: ?>, 1> to memref<?x256xbf16, strided<[?, 1], offset: ?>, 1>
      %subview_3 = memref.subview %alloc_2[0, 0] [%20, 256] [1, 1] : memref<1x256xf32, #map> to memref<?x256xf32, strided<[256, 1]>>
      sdnn.dma in %cast, %subview_3 {core_id = 6 : i32, signal = array<i32: 7>, wait = array<i32: 6>} : memref<?x256xbf16, strided<[?, 1], offset: ?>, 1> memref<?x256xf32, strided<[256, 1]>> -> 
      %alloc_4 = memref.alloc() {bufferNum = 1 : index, bufferSize = 1024 : index, init_signal = 11 : i64, sram = "uni_sram"} : memref<1x256xf32, #map>
      sdnn.ew mul %alloc_4 src0 %alloc_2 src1 %alloc {sdnn.layout = "CR_RowMajor", signal = array<i32: 8, 10>, wait = array<i32: 7, 11>} : (memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>) -> ()
      %alloc_5 = memref.alloc() {bufferNum = 1 : index, bufferSize = 1024 : index, init_signal = 13 : i64, sram = "uni_sram"} : memref<1x256xf32, #map>
      %f06_mul_sync_0 = arith.constant 255 : i32
      sdnn.core_wait(3, 4)
      sdnn.core_wait(3, 8)
      sdnn.core_wait(3, 10)
      sdnn.core_wait(3, 13)
      %f06_mul_fence_0 = arith.constant 7 : i32
      llvm.call @llvm.xpu.xfence() : () -> ()
      llvm.call @llvm.xpu.mfence.v2(%f06_mul_fence_0) : (i32) -> ()
      llvm.call @llvm.xpu.sync_core(%f06_mul_sync_0) : (i32) -> ()
      sdnn.core_specialize ins(%alloc_2, %alloc, %alloc_4, %alloc_0, %c2147483647_i32, %c2139095040_i32, %c-2147483648_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32, %14, %c128_i32 : memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%alloc_5 : memref<1x256xf32, #map>) attributes {little_core, core_id = 0 : i32, sdnn.layout = "CR_ColMajor"} {
      ^bb0(%arg9: memref<1x256xf32, #map>, %arg10: memref<1x256xf32, #map>, %arg11: memref<1x256xf32, #map>, %arg12: memref<1x256xf32, #map>, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32, %arg22: i32, %arg23: i32, %arg24: i32, %arg25: memref<1x256xf32, #map>):
        %c0_13 = arith.constant 0 : index
        %c1_14 = arith.constant 1 : index
        %c256 = arith.constant 256 : index
        %f06_col_begin = arith.constant 0 : index
        %f06_col_end = arith.constant 32 : index
        scf.for %arg26 = %f06_col_begin to %f06_col_end step %c1_14 {
          %22 = memref.load %arg9[%c0_13, %arg26] : memref<1x256xf32, #map>
          %23 = memref.load %arg10[%c0_13, %arg26] : memref<1x256xf32, #map>
          %24 = memref.load %arg11[%c0_13, %arg26] : memref<1x256xf32, #map>
          %25 = memref.load %arg12[%c0_13, %arg26] : memref<1x256xf32, #map>
          %26 = arith.bitcast %23 : f32 to i32
          %27 = arith.bitcast %22 : f32 to i32
          %28 = arith.andi %26, %arg13 : i32
          %29 = arith.andi %27, %arg13 : i32
          %30 = arith.cmpi eq, %28, %arg14 : i32
          %31 = arith.cmpi eq, %29, %arg14 : i32
          %32 = arith.cmpi ugt, %29, %arg14 : i32
          %33 = arith.cmpi ugt, %28, %arg14 : i32
          %34 = arith.ori %32, %33 : i1
          %35 = arith.xori %27, %26 : i32
          %36 = arith.andi %35, %arg15 : i32
          %37 = arith.ori %36, %arg14 : i32
          %38 = arith.cmpi eq, %29, %arg16 : i32
          %39 = arith.andi %38, %30 : i1
          %40 = arith.cmpi eq, %28, %arg16 : i32
          %41 = arith.andi %40, %31 : i1
          %42 = arith.ori %39, %41 : i1
          %43 = arith.ori %34, %42 : i1
          %44 = arith.select %43, %arg17, %37 : i32
          %45 = arith.bitcast %24 : f32 to i32
          %46 = arith.ori %31, %30 : i1
          %47 = arith.ori %34, %46 : i1
          %48 = arith.select %47, %44, %45 : i32
          %49 = arith.andi %48, %arg13 : i32
          %50 = arith.ori %48, %arg18 : i32
          %51 = arith.cmpi ugt, %49, %arg14 : i32
          %52 = arith.select %51, %50, %48 : i32
          %53 = arith.addi %48, %arg19 : i32
          %54 = arith.shrui %48, %arg20 : i32
          %55 = arith.andi %54, %arg21 : i32
          %56 = arith.addi %53, %55 : i32
          %57 = arith.andi %56, %arg22 : i32
          %58 = arith.cmpi uge, %49, %arg14 : i32
          %59 = arith.select %58, %52, %57 : i32
          %60 = arith.bitcast %59 : i32 to f32
          %61 = arith.cmpi slt, %arg23, %arg24 : i32
          %62 = arith.select %61, %60, %25 : f32
          memref.store %62, %arg25[%c0_13, %arg26] : memref<1x256xf32, #map>
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_2, %alloc, %alloc_4, %alloc_0, %c2147483647_i32, %c2139095040_i32, %c-2147483648_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32, %14, %c128_i32 : memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%alloc_5 : memref<1x256xf32, #map>) attributes {little_core, core_id = 1 : i32, sdnn.layout = "CR_ColMajor"} {
      ^bb0(%arg9: memref<1x256xf32, #map>, %arg10: memref<1x256xf32, #map>, %arg11: memref<1x256xf32, #map>, %arg12: memref<1x256xf32, #map>, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32, %arg22: i32, %arg23: i32, %arg24: i32, %arg25: memref<1x256xf32, #map>):
        %c0_13 = arith.constant 0 : index
        %c1_14 = arith.constant 1 : index
        %c256 = arith.constant 256 : index
        %f06_col_begin = arith.constant 32 : index
        %f06_col_end = arith.constant 64 : index
        scf.for %arg26 = %f06_col_begin to %f06_col_end step %c1_14 {
          %22 = memref.load %arg9[%c0_13, %arg26] : memref<1x256xf32, #map>
          %23 = memref.load %arg10[%c0_13, %arg26] : memref<1x256xf32, #map>
          %24 = memref.load %arg11[%c0_13, %arg26] : memref<1x256xf32, #map>
          %25 = memref.load %arg12[%c0_13, %arg26] : memref<1x256xf32, #map>
          %26 = arith.bitcast %23 : f32 to i32
          %27 = arith.bitcast %22 : f32 to i32
          %28 = arith.andi %26, %arg13 : i32
          %29 = arith.andi %27, %arg13 : i32
          %30 = arith.cmpi eq, %28, %arg14 : i32
          %31 = arith.cmpi eq, %29, %arg14 : i32
          %32 = arith.cmpi ugt, %29, %arg14 : i32
          %33 = arith.cmpi ugt, %28, %arg14 : i32
          %34 = arith.ori %32, %33 : i1
          %35 = arith.xori %27, %26 : i32
          %36 = arith.andi %35, %arg15 : i32
          %37 = arith.ori %36, %arg14 : i32
          %38 = arith.cmpi eq, %29, %arg16 : i32
          %39 = arith.andi %38, %30 : i1
          %40 = arith.cmpi eq, %28, %arg16 : i32
          %41 = arith.andi %40, %31 : i1
          %42 = arith.ori %39, %41 : i1
          %43 = arith.ori %34, %42 : i1
          %44 = arith.select %43, %arg17, %37 : i32
          %45 = arith.bitcast %24 : f32 to i32
          %46 = arith.ori %31, %30 : i1
          %47 = arith.ori %34, %46 : i1
          %48 = arith.select %47, %44, %45 : i32
          %49 = arith.andi %48, %arg13 : i32
          %50 = arith.ori %48, %arg18 : i32
          %51 = arith.cmpi ugt, %49, %arg14 : i32
          %52 = arith.select %51, %50, %48 : i32
          %53 = arith.addi %48, %arg19 : i32
          %54 = arith.shrui %48, %arg20 : i32
          %55 = arith.andi %54, %arg21 : i32
          %56 = arith.addi %53, %55 : i32
          %57 = arith.andi %56, %arg22 : i32
          %58 = arith.cmpi uge, %49, %arg14 : i32
          %59 = arith.select %58, %52, %57 : i32
          %60 = arith.bitcast %59 : i32 to f32
          %61 = arith.cmpi slt, %arg23, %arg24 : i32
          %62 = arith.select %61, %60, %25 : f32
          memref.store %62, %arg25[%c0_13, %arg26] : memref<1x256xf32, #map>
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_2, %alloc, %alloc_4, %alloc_0, %c2147483647_i32, %c2139095040_i32, %c-2147483648_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32, %14, %c128_i32 : memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%alloc_5 : memref<1x256xf32, #map>) attributes {little_core, core_id = 2 : i32, sdnn.layout = "CR_ColMajor"} {
      ^bb0(%arg9: memref<1x256xf32, #map>, %arg10: memref<1x256xf32, #map>, %arg11: memref<1x256xf32, #map>, %arg12: memref<1x256xf32, #map>, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32, %arg22: i32, %arg23: i32, %arg24: i32, %arg25: memref<1x256xf32, #map>):
        %c0_13 = arith.constant 0 : index
        %c1_14 = arith.constant 1 : index
        %c256 = arith.constant 256 : index
        %f06_col_begin = arith.constant 64 : index
        %f06_col_end = arith.constant 96 : index
        scf.for %arg26 = %f06_col_begin to %f06_col_end step %c1_14 {
          %22 = memref.load %arg9[%c0_13, %arg26] : memref<1x256xf32, #map>
          %23 = memref.load %arg10[%c0_13, %arg26] : memref<1x256xf32, #map>
          %24 = memref.load %arg11[%c0_13, %arg26] : memref<1x256xf32, #map>
          %25 = memref.load %arg12[%c0_13, %arg26] : memref<1x256xf32, #map>
          %26 = arith.bitcast %23 : f32 to i32
          %27 = arith.bitcast %22 : f32 to i32
          %28 = arith.andi %26, %arg13 : i32
          %29 = arith.andi %27, %arg13 : i32
          %30 = arith.cmpi eq, %28, %arg14 : i32
          %31 = arith.cmpi eq, %29, %arg14 : i32
          %32 = arith.cmpi ugt, %29, %arg14 : i32
          %33 = arith.cmpi ugt, %28, %arg14 : i32
          %34 = arith.ori %32, %33 : i1
          %35 = arith.xori %27, %26 : i32
          %36 = arith.andi %35, %arg15 : i32
          %37 = arith.ori %36, %arg14 : i32
          %38 = arith.cmpi eq, %29, %arg16 : i32
          %39 = arith.andi %38, %30 : i1
          %40 = arith.cmpi eq, %28, %arg16 : i32
          %41 = arith.andi %40, %31 : i1
          %42 = arith.ori %39, %41 : i1
          %43 = arith.ori %34, %42 : i1
          %44 = arith.select %43, %arg17, %37 : i32
          %45 = arith.bitcast %24 : f32 to i32
          %46 = arith.ori %31, %30 : i1
          %47 = arith.ori %34, %46 : i1
          %48 = arith.select %47, %44, %45 : i32
          %49 = arith.andi %48, %arg13 : i32
          %50 = arith.ori %48, %arg18 : i32
          %51 = arith.cmpi ugt, %49, %arg14 : i32
          %52 = arith.select %51, %50, %48 : i32
          %53 = arith.addi %48, %arg19 : i32
          %54 = arith.shrui %48, %arg20 : i32
          %55 = arith.andi %54, %arg21 : i32
          %56 = arith.addi %53, %55 : i32
          %57 = arith.andi %56, %arg22 : i32
          %58 = arith.cmpi uge, %49, %arg14 : i32
          %59 = arith.select %58, %52, %57 : i32
          %60 = arith.bitcast %59 : i32 to f32
          %61 = arith.cmpi slt, %arg23, %arg24 : i32
          %62 = arith.select %61, %60, %25 : f32
          memref.store %62, %arg25[%c0_13, %arg26] : memref<1x256xf32, #map>
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_2, %alloc, %alloc_4, %alloc_0, %c2147483647_i32, %c2139095040_i32, %c-2147483648_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32, %14, %c128_i32 : memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%alloc_5 : memref<1x256xf32, #map>) attributes {little_core, core_id = 3 : i32, sdnn.layout = "CR_ColMajor"} {
      ^bb0(%arg9: memref<1x256xf32, #map>, %arg10: memref<1x256xf32, #map>, %arg11: memref<1x256xf32, #map>, %arg12: memref<1x256xf32, #map>, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32, %arg22: i32, %arg23: i32, %arg24: i32, %arg25: memref<1x256xf32, #map>):
        %c0_13 = arith.constant 0 : index
        %c1_14 = arith.constant 1 : index
        %c256 = arith.constant 256 : index
        %f06_col_begin = arith.constant 96 : index
        %f06_col_end = arith.constant 128 : index
        scf.for %arg26 = %f06_col_begin to %f06_col_end step %c1_14 {
          %22 = memref.load %arg9[%c0_13, %arg26] : memref<1x256xf32, #map>
          %23 = memref.load %arg10[%c0_13, %arg26] : memref<1x256xf32, #map>
          %24 = memref.load %arg11[%c0_13, %arg26] : memref<1x256xf32, #map>
          %25 = memref.load %arg12[%c0_13, %arg26] : memref<1x256xf32, #map>
          %26 = arith.bitcast %23 : f32 to i32
          %27 = arith.bitcast %22 : f32 to i32
          %28 = arith.andi %26, %arg13 : i32
          %29 = arith.andi %27, %arg13 : i32
          %30 = arith.cmpi eq, %28, %arg14 : i32
          %31 = arith.cmpi eq, %29, %arg14 : i32
          %32 = arith.cmpi ugt, %29, %arg14 : i32
          %33 = arith.cmpi ugt, %28, %arg14 : i32
          %34 = arith.ori %32, %33 : i1
          %35 = arith.xori %27, %26 : i32
          %36 = arith.andi %35, %arg15 : i32
          %37 = arith.ori %36, %arg14 : i32
          %38 = arith.cmpi eq, %29, %arg16 : i32
          %39 = arith.andi %38, %30 : i1
          %40 = arith.cmpi eq, %28, %arg16 : i32
          %41 = arith.andi %40, %31 : i1
          %42 = arith.ori %39, %41 : i1
          %43 = arith.ori %34, %42 : i1
          %44 = arith.select %43, %arg17, %37 : i32
          %45 = arith.bitcast %24 : f32 to i32
          %46 = arith.ori %31, %30 : i1
          %47 = arith.ori %34, %46 : i1
          %48 = arith.select %47, %44, %45 : i32
          %49 = arith.andi %48, %arg13 : i32
          %50 = arith.ori %48, %arg18 : i32
          %51 = arith.cmpi ugt, %49, %arg14 : i32
          %52 = arith.select %51, %50, %48 : i32
          %53 = arith.addi %48, %arg19 : i32
          %54 = arith.shrui %48, %arg20 : i32
          %55 = arith.andi %54, %arg21 : i32
          %56 = arith.addi %53, %55 : i32
          %57 = arith.andi %56, %arg22 : i32
          %58 = arith.cmpi uge, %49, %arg14 : i32
          %59 = arith.select %58, %52, %57 : i32
          %60 = arith.bitcast %59 : i32 to f32
          %61 = arith.cmpi slt, %arg23, %arg24 : i32
          %62 = arith.select %61, %60, %25 : f32
          memref.store %62, %arg25[%c0_13, %arg26] : memref<1x256xf32, #map>
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_2, %alloc, %alloc_4, %alloc_0, %c2147483647_i32, %c2139095040_i32, %c-2147483648_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32, %14, %c128_i32 : memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%alloc_5 : memref<1x256xf32, #map>) attributes {little_core, core_id = 4 : i32, sdnn.layout = "CR_ColMajor"} {
      ^bb0(%arg9: memref<1x256xf32, #map>, %arg10: memref<1x256xf32, #map>, %arg11: memref<1x256xf32, #map>, %arg12: memref<1x256xf32, #map>, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32, %arg22: i32, %arg23: i32, %arg24: i32, %arg25: memref<1x256xf32, #map>):
        %c0_13 = arith.constant 0 : index
        %c1_14 = arith.constant 1 : index
        %c256 = arith.constant 256 : index
        %f06_col_begin = arith.constant 128 : index
        %f06_col_end = arith.constant 160 : index
        scf.for %arg26 = %f06_col_begin to %f06_col_end step %c1_14 {
          %22 = memref.load %arg9[%c0_13, %arg26] : memref<1x256xf32, #map>
          %23 = memref.load %arg10[%c0_13, %arg26] : memref<1x256xf32, #map>
          %24 = memref.load %arg11[%c0_13, %arg26] : memref<1x256xf32, #map>
          %25 = memref.load %arg12[%c0_13, %arg26] : memref<1x256xf32, #map>
          %26 = arith.bitcast %23 : f32 to i32
          %27 = arith.bitcast %22 : f32 to i32
          %28 = arith.andi %26, %arg13 : i32
          %29 = arith.andi %27, %arg13 : i32
          %30 = arith.cmpi eq, %28, %arg14 : i32
          %31 = arith.cmpi eq, %29, %arg14 : i32
          %32 = arith.cmpi ugt, %29, %arg14 : i32
          %33 = arith.cmpi ugt, %28, %arg14 : i32
          %34 = arith.ori %32, %33 : i1
          %35 = arith.xori %27, %26 : i32
          %36 = arith.andi %35, %arg15 : i32
          %37 = arith.ori %36, %arg14 : i32
          %38 = arith.cmpi eq, %29, %arg16 : i32
          %39 = arith.andi %38, %30 : i1
          %40 = arith.cmpi eq, %28, %arg16 : i32
          %41 = arith.andi %40, %31 : i1
          %42 = arith.ori %39, %41 : i1
          %43 = arith.ori %34, %42 : i1
          %44 = arith.select %43, %arg17, %37 : i32
          %45 = arith.bitcast %24 : f32 to i32
          %46 = arith.ori %31, %30 : i1
          %47 = arith.ori %34, %46 : i1
          %48 = arith.select %47, %44, %45 : i32
          %49 = arith.andi %48, %arg13 : i32
          %50 = arith.ori %48, %arg18 : i32
          %51 = arith.cmpi ugt, %49, %arg14 : i32
          %52 = arith.select %51, %50, %48 : i32
          %53 = arith.addi %48, %arg19 : i32
          %54 = arith.shrui %48, %arg20 : i32
          %55 = arith.andi %54, %arg21 : i32
          %56 = arith.addi %53, %55 : i32
          %57 = arith.andi %56, %arg22 : i32
          %58 = arith.cmpi uge, %49, %arg14 : i32
          %59 = arith.select %58, %52, %57 : i32
          %60 = arith.bitcast %59 : i32 to f32
          %61 = arith.cmpi slt, %arg23, %arg24 : i32
          %62 = arith.select %61, %60, %25 : f32
          memref.store %62, %arg25[%c0_13, %arg26] : memref<1x256xf32, #map>
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_2, %alloc, %alloc_4, %alloc_0, %c2147483647_i32, %c2139095040_i32, %c-2147483648_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32, %14, %c128_i32 : memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%alloc_5 : memref<1x256xf32, #map>) attributes {little_core, core_id = 5 : i32, sdnn.layout = "CR_ColMajor"} {
      ^bb0(%arg9: memref<1x256xf32, #map>, %arg10: memref<1x256xf32, #map>, %arg11: memref<1x256xf32, #map>, %arg12: memref<1x256xf32, #map>, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32, %arg22: i32, %arg23: i32, %arg24: i32, %arg25: memref<1x256xf32, #map>):
        %c0_13 = arith.constant 0 : index
        %c1_14 = arith.constant 1 : index
        %c256 = arith.constant 256 : index
        %f06_col_begin = arith.constant 160 : index
        %f06_col_end = arith.constant 192 : index
        scf.for %arg26 = %f06_col_begin to %f06_col_end step %c1_14 {
          %22 = memref.load %arg9[%c0_13, %arg26] : memref<1x256xf32, #map>
          %23 = memref.load %arg10[%c0_13, %arg26] : memref<1x256xf32, #map>
          %24 = memref.load %arg11[%c0_13, %arg26] : memref<1x256xf32, #map>
          %25 = memref.load %arg12[%c0_13, %arg26] : memref<1x256xf32, #map>
          %26 = arith.bitcast %23 : f32 to i32
          %27 = arith.bitcast %22 : f32 to i32
          %28 = arith.andi %26, %arg13 : i32
          %29 = arith.andi %27, %arg13 : i32
          %30 = arith.cmpi eq, %28, %arg14 : i32
          %31 = arith.cmpi eq, %29, %arg14 : i32
          %32 = arith.cmpi ugt, %29, %arg14 : i32
          %33 = arith.cmpi ugt, %28, %arg14 : i32
          %34 = arith.ori %32, %33 : i1
          %35 = arith.xori %27, %26 : i32
          %36 = arith.andi %35, %arg15 : i32
          %37 = arith.ori %36, %arg14 : i32
          %38 = arith.cmpi eq, %29, %arg16 : i32
          %39 = arith.andi %38, %30 : i1
          %40 = arith.cmpi eq, %28, %arg16 : i32
          %41 = arith.andi %40, %31 : i1
          %42 = arith.ori %39, %41 : i1
          %43 = arith.ori %34, %42 : i1
          %44 = arith.select %43, %arg17, %37 : i32
          %45 = arith.bitcast %24 : f32 to i32
          %46 = arith.ori %31, %30 : i1
          %47 = arith.ori %34, %46 : i1
          %48 = arith.select %47, %44, %45 : i32
          %49 = arith.andi %48, %arg13 : i32
          %50 = arith.ori %48, %arg18 : i32
          %51 = arith.cmpi ugt, %49, %arg14 : i32
          %52 = arith.select %51, %50, %48 : i32
          %53 = arith.addi %48, %arg19 : i32
          %54 = arith.shrui %48, %arg20 : i32
          %55 = arith.andi %54, %arg21 : i32
          %56 = arith.addi %53, %55 : i32
          %57 = arith.andi %56, %arg22 : i32
          %58 = arith.cmpi uge, %49, %arg14 : i32
          %59 = arith.select %58, %52, %57 : i32
          %60 = arith.bitcast %59 : i32 to f32
          %61 = arith.cmpi slt, %arg23, %arg24 : i32
          %62 = arith.select %61, %60, %25 : f32
          memref.store %62, %arg25[%c0_13, %arg26] : memref<1x256xf32, #map>
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_2, %alloc, %alloc_4, %alloc_0, %c2147483647_i32, %c2139095040_i32, %c-2147483648_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32, %14, %c128_i32 : memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%alloc_5 : memref<1x256xf32, #map>) attributes {little_core, core_id = 6 : i32, sdnn.layout = "CR_ColMajor"} {
      ^bb0(%arg9: memref<1x256xf32, #map>, %arg10: memref<1x256xf32, #map>, %arg11: memref<1x256xf32, #map>, %arg12: memref<1x256xf32, #map>, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32, %arg22: i32, %arg23: i32, %arg24: i32, %arg25: memref<1x256xf32, #map>):
        %c0_13 = arith.constant 0 : index
        %c1_14 = arith.constant 1 : index
        %c256 = arith.constant 256 : index
        %f06_col_begin = arith.constant 192 : index
        %f06_col_end = arith.constant 224 : index
        scf.for %arg26 = %f06_col_begin to %f06_col_end step %c1_14 {
          %22 = memref.load %arg9[%c0_13, %arg26] : memref<1x256xf32, #map>
          %23 = memref.load %arg10[%c0_13, %arg26] : memref<1x256xf32, #map>
          %24 = memref.load %arg11[%c0_13, %arg26] : memref<1x256xf32, #map>
          %25 = memref.load %arg12[%c0_13, %arg26] : memref<1x256xf32, #map>
          %26 = arith.bitcast %23 : f32 to i32
          %27 = arith.bitcast %22 : f32 to i32
          %28 = arith.andi %26, %arg13 : i32
          %29 = arith.andi %27, %arg13 : i32
          %30 = arith.cmpi eq, %28, %arg14 : i32
          %31 = arith.cmpi eq, %29, %arg14 : i32
          %32 = arith.cmpi ugt, %29, %arg14 : i32
          %33 = arith.cmpi ugt, %28, %arg14 : i32
          %34 = arith.ori %32, %33 : i1
          %35 = arith.xori %27, %26 : i32
          %36 = arith.andi %35, %arg15 : i32
          %37 = arith.ori %36, %arg14 : i32
          %38 = arith.cmpi eq, %29, %arg16 : i32
          %39 = arith.andi %38, %30 : i1
          %40 = arith.cmpi eq, %28, %arg16 : i32
          %41 = arith.andi %40, %31 : i1
          %42 = arith.ori %39, %41 : i1
          %43 = arith.ori %34, %42 : i1
          %44 = arith.select %43, %arg17, %37 : i32
          %45 = arith.bitcast %24 : f32 to i32
          %46 = arith.ori %31, %30 : i1
          %47 = arith.ori %34, %46 : i1
          %48 = arith.select %47, %44, %45 : i32
          %49 = arith.andi %48, %arg13 : i32
          %50 = arith.ori %48, %arg18 : i32
          %51 = arith.cmpi ugt, %49, %arg14 : i32
          %52 = arith.select %51, %50, %48 : i32
          %53 = arith.addi %48, %arg19 : i32
          %54 = arith.shrui %48, %arg20 : i32
          %55 = arith.andi %54, %arg21 : i32
          %56 = arith.addi %53, %55 : i32
          %57 = arith.andi %56, %arg22 : i32
          %58 = arith.cmpi uge, %49, %arg14 : i32
          %59 = arith.select %58, %52, %57 : i32
          %60 = arith.bitcast %59 : i32 to f32
          %61 = arith.cmpi slt, %arg23, %arg24 : i32
          %62 = arith.select %61, %60, %25 : f32
          memref.store %62, %arg25[%c0_13, %arg26] : memref<1x256xf32, #map>
        }
        sdnn.core_specialize_return
      }
      sdnn.core_specialize ins(%alloc_2, %alloc, %alloc_4, %alloc_0, %c2147483647_i32, %c2139095040_i32, %c-2147483648_i32, %c0_i32, %c2143289344_i32, %c4194304_i32, %c32767_i32, %c16_i32, %c1_i32, %c-65536_i32, %14, %c128_i32 : memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>, memref<1x256xf32, #map>, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) outs(%alloc_5 : memref<1x256xf32, #map>) attributes {little_core, core_id = 7 : i32, sdnn.layout = "CR_ColMajor"} {
      ^bb0(%arg9: memref<1x256xf32, #map>, %arg10: memref<1x256xf32, #map>, %arg11: memref<1x256xf32, #map>, %arg12: memref<1x256xf32, #map>, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32, %arg22: i32, %arg23: i32, %arg24: i32, %arg25: memref<1x256xf32, #map>):
        %c0_13 = arith.constant 0 : index
        %c1_14 = arith.constant 1 : index
        %c256 = arith.constant 256 : index
        %f06_col_begin = arith.constant 224 : index
        %f06_col_end = arith.constant 256 : index
        scf.for %arg26 = %f06_col_begin to %f06_col_end step %c1_14 {
          %22 = memref.load %arg9[%c0_13, %arg26] : memref<1x256xf32, #map>
          %23 = memref.load %arg10[%c0_13, %arg26] : memref<1x256xf32, #map>
          %24 = memref.load %arg11[%c0_13, %arg26] : memref<1x256xf32, #map>
          %25 = memref.load %arg12[%c0_13, %arg26] : memref<1x256xf32, #map>
          %26 = arith.bitcast %23 : f32 to i32
          %27 = arith.bitcast %22 : f32 to i32
          %28 = arith.andi %26, %arg13 : i32
          %29 = arith.andi %27, %arg13 : i32
          %30 = arith.cmpi eq, %28, %arg14 : i32
          %31 = arith.cmpi eq, %29, %arg14 : i32
          %32 = arith.cmpi ugt, %29, %arg14 : i32
          %33 = arith.cmpi ugt, %28, %arg14 : i32
          %34 = arith.ori %32, %33 : i1
          %35 = arith.xori %27, %26 : i32
          %36 = arith.andi %35, %arg15 : i32
          %37 = arith.ori %36, %arg14 : i32
          %38 = arith.cmpi eq, %29, %arg16 : i32
          %39 = arith.andi %38, %30 : i1
          %40 = arith.cmpi eq, %28, %arg16 : i32
          %41 = arith.andi %40, %31 : i1
          %42 = arith.ori %39, %41 : i1
          %43 = arith.ori %34, %42 : i1
          %44 = arith.select %43, %arg17, %37 : i32
          %45 = arith.bitcast %24 : f32 to i32
          %46 = arith.ori %31, %30 : i1
          %47 = arith.ori %34, %46 : i1
          %48 = arith.select %47, %44, %45 : i32
          %49 = arith.andi %48, %arg13 : i32
          %50 = arith.ori %48, %arg18 : i32
          %51 = arith.cmpi ugt, %49, %arg14 : i32
          %52 = arith.select %51, %50, %48 : i32
          %53 = arith.addi %48, %arg19 : i32
          %54 = arith.shrui %48, %arg20 : i32
          %55 = arith.andi %54, %arg21 : i32
          %56 = arith.addi %53, %55 : i32
          %57 = arith.andi %56, %arg22 : i32
          %58 = arith.cmpi uge, %49, %arg14 : i32
          %59 = arith.select %58, %52, %57 : i32
          %60 = arith.bitcast %59 : i32 to f32
          %61 = arith.cmpi slt, %arg23, %arg24 : i32
          %62 = arith.select %61, %60, %25 : f32
          memref.store %62, %arg25[%c0_13, %arg26] : memref<1x256xf32, #map>
        }
        sdnn.core_specialize_return
      }
      llvm.call @llvm.xpu.sync_core(%f06_mul_sync_0) : (i32) -> ()
      sdnn.core_arrive(3, 5)
      sdnn.core_arrive(3, 9)
      sdnn.core_arrive(3, 11)
      sdnn.core_arrive(3, 12)
      %reinterpret_cast_6 = memref.reinterpret_cast %alloc_5 to offset: [0], sizes: [256, 1], strides: [1, 256] : memref<1x256xf32, #map> to memref<256x1xf32, strided<[1, 256]>>
      %alloc_7 = memref.alloc() {bufferNum = 1 : index, bufferSize = 32768 : index, init_signal = 15 : i64, sram = "uni_sram"} : memref<256x1xf32, #map1, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 256>>
      sdnn.ds %reinterpret_cast_6, %alloc_7 mask_dims[%c0, %c0] {signal = array<i32: 13, 14>, signal_cached = array<i32: 14>, wait = array<i32: 12, 15>, wait_cached = array<i32: 15>} : memref<256x1xf32, strided<[1, 256]>> memref<256x1xf32, #map1, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 256>> -> 
      %alloc_8 = memref.alloc() {bufferNum = 1 : index, bufferSize = 128 : index, init_signal = 17 : i64, sram = "uni_sram"} : memref<1xf32, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>>
      sdnn.ew reduce_sum %alloc_8 src0 %alloc_7 {sdnn.layout = "CR_RowMajor", signal = array<i32: 15, 16>, wait = array<i32: 14, 17>} : (memref<1xf32, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>>, memref<256x1xf32, #map1, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 256>>) -> ()
      %expand_shape = memref.expand_shape %alloc_8 [[0, 1]] output_shape [1, 1] : memref<1xf32, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>> into memref<1x1xf32, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>>
      %reinterpret_cast_9 = memref.reinterpret_cast %arg2 to offset: [%15], sizes: [1, 1], strides: [1, 1] : memref<*xf32, 1> to memref<1x1xf32, strided<[1, 1], offset: ?>, 1>
      %reinterpret_cast_10 = memref.reinterpret_cast %expand_shape to offset: [0], sizes: [%20, 1], strides: [1, 1] : memref<1x1xf32, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>> to memref<?x1xf32, strided<[1, 1]>, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>>
      %cast_11 = memref.cast %reinterpret_cast_10 : memref<?x1xf32, strided<[1, 1]>, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>> to memref<?x1xf32, strided<[1, 1], offset: ?>, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>>
      %subview_12 = memref.subview %reinterpret_cast_9[0, 0] [%20, 1] [1, 1] : memref<1x1xf32, strided<[1, 1], offset: ?>, 1> to memref<?x1xf32, strided<[1, 1], offset: ?>, 1>
      sdnn.dma out %cast_11, %subview_12 {signal = array<i32: 17>, wait = array<i32: 16>} : memref<?x1xf32, strided<[1, 1], offset: ?>, #sdnn.rc_space<memSpace = 0, layout = "RC", blockColHeight = 1>> memref<?x1xf32, strided<[1, 1], offset: ?>, 1> -> 
    } {loop_grid}
    sdnn.core_arrive(3, 3) {core_name = "rs/ew_lite"}
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
