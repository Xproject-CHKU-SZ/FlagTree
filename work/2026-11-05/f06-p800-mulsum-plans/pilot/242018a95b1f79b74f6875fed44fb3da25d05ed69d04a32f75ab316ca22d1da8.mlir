module {
  func.func @triton_unk_fused_0(%arg0: memref<*xf32, 1> {tt.divisibility = 16 : i32}, %arg1: memref<*xf32, 1> {tt.divisibility = 16 : i32}, %arg2: memref<*xf32, 1> {tt.divisibility = 16 : i32}, %arg3: i32 {tt.divisibility = 16 : i32}, %arg4: i32, %arg5: i32, %arg6: i32) {
    %c1 = arith.constant 1 : index
    %c1_i32 = arith.constant 1 : i32
    %c2147483647_i32 = arith.constant 2147483647 : i32
    %c2139095040_i32 = arith.constant 2139095040 : i32
    %c0_i32 = arith.constant 0 : i32
    %c512 = arith.constant 512 : index
    %c2143289344_i32 = arith.constant 2143289344 : i32
    "sdnn.init"() {signal = [array<i32: 4, 7, 9, 11>], signal_num = array<i64: 1, 1, 1, 1>} : () -> ()
    %0 = sdnn.get_sdnn_id : i32
    %1 = sdnn.get_num_sdnn : i32
    %2 = arith.muli %arg4, %arg5 : i32
    %3 = arith.muli %2, %arg6 : i32
    %4 = arith.subi %1, %c1_i32 : i32
    %5 = arith.addi %3, %4 : i32
    %6 = arith.divsi %5, %1 : i32
    %7 = arith.muli %0, %6 : i32
    %8 = arith.addi %7, %6 : i32
    %9 = arith.minsi %8, %3 : i32
    %10 = arith.index_cast %7 : i32 to index
    %11 = arith.index_cast %9 : i32 to index
    scf.for %arg7 = %10 to %11 step %c1 {
      %12 = arith.index_cast %arg7 : index to i32
      %13 = arith.divsi %12, %arg6 : i32
      %14 = arith.divsi %13, %arg5 : i32
      %15 = arith.index_cast %14 : i32 to index
      %16 = arith.muli %15, %c512 : index
      %reinterpret_cast = memref.reinterpret_cast %arg0 to offset: [%16], sizes: [512], strides: [1] : memref<*xf32, 1> to memref<512xf32, strided<[1], offset: ?>, 1>
      %alloc = memref.alloc() {bufferNum = 1 : index, bufferSize = 2048 : index, init_signal = 4 : i64, sram = "uni_sram", trans = false} : memref<512xf32>
      sdnn.dma in %reinterpret_cast, %alloc {core_id = 6 : i32, signal = array<i32: 2>, wait = array<i32: 4>} : memref<512xf32, strided<[1], offset: ?>, 1> memref<512xf32> -> 
      %reinterpret_cast_0 = memref.reinterpret_cast %arg1 to offset: [%16], sizes: [512], strides: [1] : memref<*xf32, 1> to memref<512xf32, strided<[1], offset: ?>, 1>
      %cast = memref.cast %reinterpret_cast_0 : memref<512xf32, strided<[1], offset: ?>, 1> to memref<?xf32, strided<[?], offset: ?>, 1>
      %alloc_1 = memref.alloc() {bufferNum = 1 : index, bufferSize = 2048 : index, init_signal = 7 : i64, sram = "uni_sram", trans = false} : memref<512xf32>
      sdnn.dma in %cast, %alloc_1 {core_id = 1 : i32, signal = array<i32: 5>, wait = array<i32: 7>} : memref<?xf32, strided<[?], offset: ?>, 1> memref<512xf32> -> 
      %alloc_2 = memref.alloc() {bufferNum = 1 : index, bufferSize = 2048 : index, init_signal = 9 : i64, sram = "uni_sram"} : memref<512xf32>
      sdnn.ew mul %alloc_2 src0 %alloc src1 %alloc_1 {sdnn.layout = "CR_RowMajor", signal = array<i32: 3, 6, 8>, wait = array<i32: 2, 5, 9>} : (memref<512xf32>, memref<512xf32>, memref<512xf32>) -> ()
      %alloc_3 = memref.alloc() {bufferNum = 1 : index, bufferSize = 2048 : index, init_signal = 11 : i64, sram = "uni_sram"} : memref<512xf32>
      sdnn.core_specialize ins(%alloc, %alloc_1, %alloc_2, %c2147483647_i32, %c2139095040_i32, %c0_i32, %c2143289344_i32 : memref<512xf32>, memref<512xf32>, memref<512xf32>, i32, i32, i32, i32) outs(%alloc_3 : memref<512xf32>) attributes {little_core, sdnn.layout = "CR_RowMajor", signal = array<i32: 4, 7, 9, 10>, wait = array<i32: 3, 6, 8, 11>} {
      ^bb0(%arg8: memref<512xf32>, %arg9: memref<512xf32>, %arg10: memref<512xf32>, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: memref<512xf32>):
        %c0 = arith.constant 0 : index
        %c512_5 = arith.constant 512 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg16 = %c0 to %c512_5 step %c1_6 {
          %17 = memref.load %arg8[%arg16] : memref<512xf32>
          %18 = memref.load %arg9[%arg16] : memref<512xf32>
          %19 = memref.load %arg10[%arg16] : memref<512xf32>
          %20 = arith.bitcast %19 : f32 to i32
          %21 = arith.bitcast %18 : f32 to i32
          %22 = arith.andi %21, %arg11 : i32
          %23 = arith.bitcast %17 : f32 to i32
          %24 = arith.andi %23, %arg11 : i32
          %25 = arith.cmpi eq, %24, %arg12 : i32
          %26 = arith.cmpi eq, %22, %arg13 : i32
          %27 = arith.andi %25, %26 : i1
          %28 = arith.cmpi eq, %22, %arg12 : i32
          %29 = arith.cmpi eq, %24, %arg13 : i32
          %30 = arith.andi %28, %29 : i1
          %31 = arith.ori %27, %30 : i1
          %32 = arith.cmpi ugt, %24, %arg12 : i32
          %33 = arith.cmpi ugt, %22, %arg12 : i32
          %34 = arith.ori %32, %33 : i1
          %35 = arith.ori %31, %34 : i1
          %36 = arith.select %35, %arg14, %20 : i32
          %37 = arith.bitcast %36 : i32 to f32
          memref.store %37, %arg15[%arg16] : memref<512xf32>
        }
        sdnn.core_specialize_return
      }
      %reinterpret_cast_4 = memref.reinterpret_cast %arg2 to offset: [%16], sizes: [512], strides: [1] : memref<*xf32, 1> to memref<512xf32, strided<[1], offset: ?>, 1>
      sdnn.dma out %alloc_3, %reinterpret_cast_4 {signal = array<i32: 11>, wait = array<i32: 10>} : memref<512xf32> memref<512xf32, strided<[1], offset: ?>, 1> -> 
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
