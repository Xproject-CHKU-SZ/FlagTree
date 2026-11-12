#cluster = #triton_xpu.cluster<{sizePerCore = [32], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 1 : i32, "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @triton_unk_fused_0(%arg0: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg1: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg2: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg3: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg4: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg5: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg6: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg7: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg8: !tt.ptr<f16> {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: i32, %arg11: i32, %arg12: i32) attributes {noinline = false} {
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
    %c2048_i32 = arith.constant 2048 : i32
    %cst = arith.constant dense<2048> : tensor<2048xi32, #cluster>
    %c0_i32 = arith.constant 0 : i32
    %9 = triton_xpu.make_range %c0_i32  {end = 2048 : i32, realSize = 2048 : i32, start = 0 : i32} : i32  -> tensor<2048xi32, #cluster>
    scf.for %arg13 = %6 to %7 step %8 {
      %10 = arith.index_cast %arg13 : index to i32
      %11 = arith.divsi %10, %arg12 : i32
      %12 = arith.divsi %11, %arg11 : i32
      %13 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<2048x!tt.ptr<f16, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<2048x!tt.ptr<f32, 0>, #cluster>
      %15 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<2048x!tt.ptr<f32, 0>, #cluster>
      %16 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<2048x!tt.ptr<f32, 0>, #cluster>
      %17 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<2048x!tt.ptr<f32, 0>, #cluster>
      %18 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<2048x!tt.ptr<f32, 0>, #cluster>
      %19 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<2048x!tt.ptr<f32, 0>, #cluster>
      %20 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<2048x!tt.ptr<f32, 0>, #cluster>
      %21 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<2048x!tt.ptr<f32, 0>, #cluster>
      %22 = arith.muli %12, %c2048_i32 : i32
      %23 = tt.splat %22 : i32 -> tensor<2048xi32, #cluster>
      %24 = arith.addi %23, %9 : tensor<2048xi32, #cluster>
      %25 = arith.subi %cst, %24 : tensor<2048xi32, #cluster>
      %26 = arith.cmpi slt, %24, %cst : tensor<2048xi32, #cluster>
      %27 = "triton_xpu.extract"(%26) <{index = 0 : i32}> : (tensor<2048xi1, #cluster>) -> i1
      scf.if %27 {
        %28 = tt.splat %arg0 : !tt.ptr<f32> -> tensor<2048x!tt.ptr<f32>, #cluster>
        %29 = tt.addptr %28, %24 : tensor<2048x!tt.ptr<f32>, #cluster>, tensor<2048xi32, #cluster>
        %30 = "triton_xpu.gm2lm"(%29, %25, %21) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<2048x!tt.ptr<f32>, #cluster>, tensor<2048xi32, #cluster>, tensor<2048x!tt.ptr<f32, 0>, #cluster>) -> tensor<2048x!tt.ptr<f32, 0>, #cluster>
        %31 = tt.splat %arg1 : !tt.ptr<f32> -> tensor<2048x!tt.ptr<f32>, #cluster>
        %32 = tt.addptr %31, %24 : tensor<2048x!tt.ptr<f32>, #cluster>, tensor<2048xi32, #cluster>
        %33 = "triton_xpu.gm2lm"(%32, %25, %20) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<2048x!tt.ptr<f32>, #cluster>, tensor<2048xi32, #cluster>, tensor<2048x!tt.ptr<f32, 0>, #cluster>) -> tensor<2048x!tt.ptr<f32, 0>, #cluster>
        %34 = tt.splat %arg2 : !tt.ptr<f32> -> tensor<2048x!tt.ptr<f32>, #cluster>
        %35 = tt.addptr %34, %24 : tensor<2048x!tt.ptr<f32>, #cluster>, tensor<2048xi32, #cluster>
        %36 = "triton_xpu.gm2lm"(%35, %25, %19) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<2048x!tt.ptr<f32>, #cluster>, tensor<2048xi32, #cluster>, tensor<2048x!tt.ptr<f32, 0>, #cluster>) -> tensor<2048x!tt.ptr<f32, 0>, #cluster>
        %37 = tt.splat %arg3 : !tt.ptr<f32> -> tensor<2048x!tt.ptr<f32>, #cluster>
        %38 = tt.addptr %37, %24 : tensor<2048x!tt.ptr<f32>, #cluster>, tensor<2048xi32, #cluster>
        %39 = "triton_xpu.gm2lm"(%38, %25, %18) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<2048x!tt.ptr<f32>, #cluster>, tensor<2048xi32, #cluster>, tensor<2048x!tt.ptr<f32, 0>, #cluster>) -> tensor<2048x!tt.ptr<f32, 0>, #cluster>
        %40 = tt.splat %arg4 : !tt.ptr<f32> -> tensor<2048x!tt.ptr<f32>, #cluster>
        %41 = tt.addptr %40, %24 : tensor<2048x!tt.ptr<f32>, #cluster>, tensor<2048xi32, #cluster>
        %42 = "triton_xpu.gm2lm"(%41, %25, %17) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<2048x!tt.ptr<f32>, #cluster>, tensor<2048xi32, #cluster>, tensor<2048x!tt.ptr<f32, 0>, #cluster>) -> tensor<2048x!tt.ptr<f32, 0>, #cluster>
        %43 = tt.splat %arg5 : !tt.ptr<f32> -> tensor<2048x!tt.ptr<f32>, #cluster>
        %44 = tt.addptr %43, %24 : tensor<2048x!tt.ptr<f32>, #cluster>, tensor<2048xi32, #cluster>
        %45 = "triton_xpu.gm2lm"(%44, %25, %16) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<2048x!tt.ptr<f32>, #cluster>, tensor<2048xi32, #cluster>, tensor<2048x!tt.ptr<f32, 0>, #cluster>) -> tensor<2048x!tt.ptr<f32, 0>, #cluster>
        %46 = tt.splat %arg6 : !tt.ptr<f32> -> tensor<2048x!tt.ptr<f32>, #cluster>
        %47 = tt.addptr %46, %24 : tensor<2048x!tt.ptr<f32>, #cluster>, tensor<2048xi32, #cluster>
        %48 = "triton_xpu.gm2lm"(%47, %25, %15) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<2048x!tt.ptr<f32>, #cluster>, tensor<2048xi32, #cluster>, tensor<2048x!tt.ptr<f32, 0>, #cluster>) -> tensor<2048x!tt.ptr<f32, 0>, #cluster>
        %49 = tt.splat %arg7 : !tt.ptr<f32> -> tensor<2048x!tt.ptr<f32>, #cluster>
        %50 = tt.addptr %49, %24 : tensor<2048x!tt.ptr<f32>, #cluster>, tensor<2048xi32, #cluster>
        %51 = "triton_xpu.gm2lm"(%50, %25, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<2048x!tt.ptr<f32>, #cluster>, tensor<2048xi32, #cluster>, tensor<2048x!tt.ptr<f32, 0>, #cluster>) -> tensor<2048x!tt.ptr<f32, 0>, #cluster>
        llvm_xpu.mfence %c1_i32
        %52 = "triton_xpu.load"(%30, %26) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2048x!tt.ptr<f32, 0>, #cluster>, tensor<2048xi1, #cluster>) -> tensor<128xvector<16xf32>, #cluster1>
        %53 = "triton_xpu.load"(%33, %26) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2048x!tt.ptr<f32, 0>, #cluster>, tensor<2048xi1, #cluster>) -> tensor<128xvector<16xf32>, #cluster1>
        %54 = "triton_xpu.load"(%36, %26) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2048x!tt.ptr<f32, 0>, #cluster>, tensor<2048xi1, #cluster>) -> tensor<128xvector<16xf32>, #cluster1>
        %55 = "triton_xpu.load"(%39, %26) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2048x!tt.ptr<f32, 0>, #cluster>, tensor<2048xi1, #cluster>) -> tensor<128xvector<16xf32>, #cluster1>
        %56 = "triton_xpu.load"(%42, %26) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2048x!tt.ptr<f32, 0>, #cluster>, tensor<2048xi1, #cluster>) -> tensor<128xvector<16xf32>, #cluster1>
        %57 = "triton_xpu.load"(%45, %26) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2048x!tt.ptr<f32, 0>, #cluster>, tensor<2048xi1, #cluster>) -> tensor<128xvector<16xf32>, #cluster1>
        %58 = "triton_xpu.load"(%48, %26) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2048x!tt.ptr<f32, 0>, #cluster>, tensor<2048xi1, #cluster>) -> tensor<128xvector<16xf32>, #cluster1>
        %59 = "triton_xpu.load"(%51, %26) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2048x!tt.ptr<f32, 0>, #cluster>, tensor<2048xi1, #cluster>) -> tensor<128xvector<16xf32>, #cluster1>
        %60 = triton_xpu.vvaddf %52, %53 : tensor<128xvector<16xf32>, #cluster1>
        %61 = triton_xpu.vvaddf %60, %54 : tensor<128xvector<16xf32>, #cluster1>
        %62 = triton_xpu.vvaddf %61, %55 : tensor<128xvector<16xf32>, #cluster1>
        %63 = triton_xpu.vvaddf %62, %56 : tensor<128xvector<16xf32>, #cluster1>
        %64 = triton_xpu.vvaddf %63, %57 : tensor<128xvector<16xf32>, #cluster1>
        %65 = triton_xpu.vvaddf %64, %58 : tensor<128xvector<16xf32>, #cluster1>
        %66 = triton_xpu.vvaddf %65, %59 : tensor<128xvector<16xf32>, #cluster1>
        %67 = tt.splat %arg8 : !tt.ptr<f16> -> tensor<2048x!tt.ptr<f16>, #cluster>
        %68 = tt.addptr %67, %24 : tensor<2048x!tt.ptr<f16>, #cluster>, tensor<2048xi32, #cluster>
        %69 = "triton_xpu.vtruncf"(%66) : (tensor<128xvector<16xf32>, #cluster1>) -> tensor<64xvector<32xf16>, #cluster2>
        "triton_xpu.store"(%13, %69, %26) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2048x!tt.ptr<f16, 0>, #cluster>, tensor<64xvector<32xf16>, #cluster2>, tensor<2048xi1, #cluster>) -> ()
        "triton_xpu.lm2gm"(%68, %25, %13) <{atomicSim = false, handwrittenOffsetState = true, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2048x!tt.ptr<f16>, #cluster>, tensor<2048xi32, #cluster>, tensor<2048x!tt.ptr<f16, 0>, #cluster>) -> ()
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
