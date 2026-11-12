#cluster = #triton_xpu.cluster<{sizePerCore = [4], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 1 : i32, "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @triton_unk_fused_0(%arg0: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg1: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg2: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg3: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg4: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg5: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg6: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg7: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg8: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: i32, %arg11: i32, %arg12: i32) attributes {noinline = false} {
    %0 = triton_xpu.get_cluster_id : i32
    %1 = triton_xpu.get_num_cluster : i32
    %2 = arith.muli %arg10, %arg11 : i32
    %3 = arith.muli %2, %arg12 : i32
    %c1_i32 = arith.constant 1 : i32
    %4 = arith.subi %1, %c1_i32 : i32
    %5 = arith.addi %3, %4 : i32
    %6 = arith.index_cast %0 : i32 to index
    %7 = arith.index_cast %3 : i32 to index
    %8 = arith.index_cast %1 : i32 to index
    %c256_i32 = arith.constant 256 : i32
    %cst = arith.constant dense<2048> : tensor<256xi32, #cluster>
    %c0_i32 = arith.constant 0 : i32
    %9 = triton_xpu.make_range %c0_i32  {end = 256 : i32, realSize = 256 : i32, start = 0 : i32} : i32  -> tensor<256xi32, #cluster>
    scf.for %arg13 = %6 to %7 step %8 {
      %10 = arith.index_cast %arg13 : index to i32
      %11 = arith.divsi %10, %arg12 : i32
      %12 = arith.divsi %11, %arg11 : i32
      %13 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<256x!tt.ptr<f32, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<256x!tt.ptr<f32, 0>, #cluster>
      %15 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<256x!tt.ptr<f32, 0>, #cluster>
      %16 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<256x!tt.ptr<f32, 0>, #cluster>
      %17 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<256x!tt.ptr<f32, 0>, #cluster>
      %18 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<256x!tt.ptr<f32, 0>, #cluster>
      %19 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<256x!tt.ptr<f32, 0>, #cluster>
      %20 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<256x!tt.ptr<f32, 0>, #cluster>
      %21 = arith.muli %12, %c256_i32 : i32
      %22 = tt.splat %21 : i32 -> tensor<256xi32, #cluster>
      %23 = arith.addi %22, %9 : tensor<256xi32, #cluster>
      %24 = arith.subi %cst, %23 : tensor<256xi32, #cluster>
      %25 = arith.cmpi slt, %23, %cst : tensor<256xi32, #cluster>
      %26 = "triton_xpu.extract"(%25) <{index = 0 : i32}> : (tensor<256xi1, #cluster>) -> i1
      scf.if %26 {
        %27 = tt.splat %arg0 : !tt.ptr<f32> -> tensor<256x!tt.ptr<f32>, #cluster>
        %28 = tt.addptr %27, %23 : tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>
        %29 = "triton_xpu.gm2lm"(%28, %24, %20) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>, tensor<256x!tt.ptr<f32, 0>, #cluster>) -> tensor<256x!tt.ptr<f32, 0>, #cluster>
        %30 = tt.splat %arg1 : !tt.ptr<f32> -> tensor<256x!tt.ptr<f32>, #cluster>
        %31 = tt.addptr %30, %23 : tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>
        %32 = "triton_xpu.gm2lm"(%31, %24, %19) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>, tensor<256x!tt.ptr<f32, 0>, #cluster>) -> tensor<256x!tt.ptr<f32, 0>, #cluster>
        %33 = tt.splat %arg2 : !tt.ptr<f32> -> tensor<256x!tt.ptr<f32>, #cluster>
        %34 = tt.addptr %33, %23 : tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>
        %35 = "triton_xpu.gm2lm"(%34, %24, %18) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>, tensor<256x!tt.ptr<f32, 0>, #cluster>) -> tensor<256x!tt.ptr<f32, 0>, #cluster>
        %36 = tt.splat %arg3 : !tt.ptr<f32> -> tensor<256x!tt.ptr<f32>, #cluster>
        %37 = tt.addptr %36, %23 : tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>
        %38 = "triton_xpu.gm2lm"(%37, %24, %17) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>, tensor<256x!tt.ptr<f32, 0>, #cluster>) -> tensor<256x!tt.ptr<f32, 0>, #cluster>
        %39 = tt.splat %arg4 : !tt.ptr<f32> -> tensor<256x!tt.ptr<f32>, #cluster>
        %40 = tt.addptr %39, %23 : tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>
        %41 = "triton_xpu.gm2lm"(%40, %24, %16) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>, tensor<256x!tt.ptr<f32, 0>, #cluster>) -> tensor<256x!tt.ptr<f32, 0>, #cluster>
        %42 = tt.splat %arg5 : !tt.ptr<f32> -> tensor<256x!tt.ptr<f32>, #cluster>
        %43 = tt.addptr %42, %23 : tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>
        %44 = "triton_xpu.gm2lm"(%43, %24, %15) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>, tensor<256x!tt.ptr<f32, 0>, #cluster>) -> tensor<256x!tt.ptr<f32, 0>, #cluster>
        %45 = tt.splat %arg6 : !tt.ptr<f32> -> tensor<256x!tt.ptr<f32>, #cluster>
        %46 = tt.addptr %45, %23 : tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>
        %47 = "triton_xpu.gm2lm"(%46, %24, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>, tensor<256x!tt.ptr<f32, 0>, #cluster>) -> tensor<256x!tt.ptr<f32, 0>, #cluster>
        %48 = tt.splat %arg7 : !tt.ptr<f32> -> tensor<256x!tt.ptr<f32>, #cluster>
        %49 = tt.addptr %48, %23 : tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>
        %50 = "triton_xpu.gm2lm"(%49, %24, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>, tensor<256x!tt.ptr<f32, 0>, #cluster>) -> tensor<256x!tt.ptr<f32, 0>, #cluster>
        llvm_xpu.mfence %c1_i32
        %51 = tt.splat %arg8 : !tt.ptr<f32> -> tensor<256x!tt.ptr<f32>, #cluster>
        %52 = tt.addptr %51, %23 : tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>
        %c0 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1 = arith.constant 1 : index
        scf.for %arg14 = %c0 to %c2 step %c1 {
          %53 = arith.index_cast %arg14 : index to i32
          %54 = "triton_xpu.load"(%29, %25, %53) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32, 0>, #cluster>, tensor<256xi1, #cluster>, i32) -> tensor<128xf32, #cluster1>
          %55 = "triton_xpu.load"(%32, %25, %53) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32, 0>, #cluster>, tensor<256xi1, #cluster>, i32) -> tensor<128xf32, #cluster1>
          %56 = arith.addf %54, %55 : tensor<128xf32, #cluster1>
          %57 = "triton_xpu.load"(%35, %25, %53) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32, 0>, #cluster>, tensor<256xi1, #cluster>, i32) -> tensor<128xf32, #cluster1>
          %58 = arith.addf %56, %57 : tensor<128xf32, #cluster1>
          %59 = "triton_xpu.load"(%38, %25, %53) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32, 0>, #cluster>, tensor<256xi1, #cluster>, i32) -> tensor<128xf32, #cluster1>
          %60 = arith.addf %58, %59 : tensor<128xf32, #cluster1>
          %61 = "triton_xpu.load"(%41, %25, %53) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32, 0>, #cluster>, tensor<256xi1, #cluster>, i32) -> tensor<128xf32, #cluster1>
          %62 = arith.addf %60, %61 : tensor<128xf32, #cluster1>
          %63 = "triton_xpu.load"(%44, %25, %53) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32, 0>, #cluster>, tensor<256xi1, #cluster>, i32) -> tensor<128xf32, #cluster1>
          %64 = arith.addf %62, %63 : tensor<128xf32, #cluster1>
          %65 = "triton_xpu.load"(%47, %25, %53) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32, 0>, #cluster>, tensor<256xi1, #cluster>, i32) -> tensor<128xf32, #cluster1>
          %66 = arith.addf %64, %65 : tensor<128xf32, #cluster1>
          %67 = "triton_xpu.load"(%50, %25, %53) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32, 0>, #cluster>, tensor<256xi1, #cluster>, i32) -> tensor<128xf32, #cluster1>
          %68 = arith.addf %66, %67 : tensor<128xf32, #cluster1>
          "triton_xpu.store"(%13, %68, %25, %53) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32, 0>, #cluster>, tensor<128xf32, #cluster1>, tensor<256xi1, #cluster>, i32) -> ()
        }
        "triton_xpu.lm2gm"(%52, %24, %13) <{atomicSim = false, handwrittenOffsetState = true, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>, tensor<256x!tt.ptr<f32, 0>, #cluster>) -> ()
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
