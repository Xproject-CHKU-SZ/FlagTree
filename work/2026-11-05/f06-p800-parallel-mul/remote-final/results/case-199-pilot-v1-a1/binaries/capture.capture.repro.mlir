#cluster = #triton_xpu.cluster<{sizePerCore = [4], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 1 : i32, "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @triton_unk_fused_0(%arg0: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg1: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg2: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg3: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg4: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32, %arg7: i32, %arg8: i32) attributes {noinline = false} {
    %0 = triton_xpu.get_cluster_id : i32
    %1 = triton_xpu.get_num_cluster : i32
    %2 = arith.muli %arg6, %arg7 : i32
    %3 = arith.muli %2, %arg8 : i32
    %c1_i32 = arith.constant 1 : i32
    %4 = arith.subi %1, %c1_i32 : i32
    %5 = arith.addi %3, %4 : i32
    %6 = arith.index_cast %0 : i32 to index
    %7 = arith.index_cast %3 : i32 to index
    %8 = arith.index_cast %1 : i32 to index
    %c256_i32 = arith.constant 256 : i32
    %cst = arith.constant dense<512> : tensor<256xi32, #cluster>
    %c0_i32 = arith.constant 0 : i32
    %9 = triton_xpu.make_range %c0_i32  {end = 256 : i32, realSize = 256 : i32, start = 0 : i32} : i32  -> tensor<256xi32, #cluster>
    scf.for %arg9 = %6 to %7 step %8 {
      %10 = arith.index_cast %arg9 : index to i32
      %11 = arith.divsi %10, %arg8 : i32
      %12 = arith.divsi %11, %arg7 : i32
      %13 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<256x!tt.ptr<f32, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<256x!tt.ptr<f32, 0>, #cluster>
      %15 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<256x!tt.ptr<f32, 0>, #cluster>
      %16 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<256x!tt.ptr<f32, 0>, #cluster>
      %17 = arith.muli %12, %c256_i32 : i32
      %18 = tt.splat %17 : i32 -> tensor<256xi32, #cluster>
      %19 = arith.addi %18, %9 : tensor<256xi32, #cluster>
      %20 = arith.subi %cst, %19 : tensor<256xi32, #cluster>
      %21 = arith.cmpi slt, %19, %cst : tensor<256xi32, #cluster>
      %22 = "triton_xpu.extract"(%21) <{index = 0 : i32}> : (tensor<256xi1, #cluster>) -> i1
      scf.if %22 {
        %23 = tt.splat %arg0 : !tt.ptr<f32> -> tensor<256x!tt.ptr<f32>, #cluster>
        %24 = tt.addptr %23, %19 : tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>
        %25 = "triton_xpu.gm2lm"(%24, %20, %16) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>, tensor<256x!tt.ptr<f32, 0>, #cluster>) -> tensor<256x!tt.ptr<f32, 0>, #cluster>
        %26 = tt.splat %arg1 : !tt.ptr<f32> -> tensor<256x!tt.ptr<f32>, #cluster>
        %27 = tt.addptr %26, %19 : tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>
        %28 = "triton_xpu.gm2lm"(%27, %20, %15) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>, tensor<256x!tt.ptr<f32, 0>, #cluster>) -> tensor<256x!tt.ptr<f32, 0>, #cluster>
        %29 = tt.splat %arg2 : !tt.ptr<f32> -> tensor<256x!tt.ptr<f32>, #cluster>
        %30 = tt.addptr %29, %19 : tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>
        %31 = "triton_xpu.gm2lm"(%30, %20, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>, tensor<256x!tt.ptr<f32, 0>, #cluster>) -> tensor<256x!tt.ptr<f32, 0>, #cluster>
        %32 = tt.splat %arg3 : !tt.ptr<f32> -> tensor<256x!tt.ptr<f32>, #cluster>
        %33 = tt.addptr %32, %19 : tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>
        %34 = "triton_xpu.gm2lm"(%33, %20, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>, tensor<256x!tt.ptr<f32, 0>, #cluster>) -> tensor<256x!tt.ptr<f32, 0>, #cluster>
        llvm_xpu.mfence %c1_i32
        %35 = tt.splat %arg4 : !tt.ptr<f32> -> tensor<256x!tt.ptr<f32>, #cluster>
        %36 = tt.addptr %35, %19 : tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>
        %c0 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1 = arith.constant 1 : index
        scf.for %arg10 = %c0 to %c2 step %c1 {
          %37 = arith.index_cast %arg10 : index to i32
          %38 = "triton_xpu.load"(%25, %21, %37) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32, 0>, #cluster>, tensor<256xi1, #cluster>, i32) -> tensor<128xf32, #cluster1>
          %39 = "triton_xpu.load"(%28, %21, %37) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32, 0>, #cluster>, tensor<256xi1, #cluster>, i32) -> tensor<128xf32, #cluster1>
          %40 = arith.addf %38, %39 : tensor<128xf32, #cluster1>
          %41 = "triton_xpu.load"(%31, %21, %37) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32, 0>, #cluster>, tensor<256xi1, #cluster>, i32) -> tensor<128xf32, #cluster1>
          %42 = arith.addf %40, %41 : tensor<128xf32, #cluster1>
          %43 = "triton_xpu.load"(%34, %21, %37) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32, 0>, #cluster>, tensor<256xi1, #cluster>, i32) -> tensor<128xf32, #cluster1>
          %44 = arith.addf %42, %43 : tensor<128xf32, #cluster1>
          "triton_xpu.store"(%13, %44, %21, %37) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32, 0>, #cluster>, tensor<128xf32, #cluster1>, tensor<256xi1, #cluster>, i32) -> ()
        }
        "triton_xpu.lm2gm"(%36, %20, %13) <{atomicSim = false, handwrittenOffsetState = true, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>, tensor<256x!tt.ptr<f32, 0>, #cluster>) -> ()
      }
    }
    tt.return
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
