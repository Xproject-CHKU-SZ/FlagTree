#cluster = #triton_xpu.cluster<{sizePerCore = [4], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 1 : i32, "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @triton_unk_fused_0(%arg0: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg1: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg2: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg3: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg4: !tt.ptr<f16> {tt.divisibility = 16 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32, %arg7: i32, %arg8: i32) attributes {noinline = false} {
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
      %13 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<256x!tt.ptr<f16, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<256x!tt.ptr<f32, 0>, #cluster>
      %15 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<256x!tt.ptr<f32, 0>, #cluster>
      %16 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<256x!tt.ptr<f32, 0>, #cluster>
      %17 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<256x!tt.ptr<f32, 0>, #cluster>
      %18 = arith.muli %12, %c256_i32 : i32
      %19 = tt.splat %18 : i32 -> tensor<256xi32, #cluster>
      %20 = arith.addi %19, %9 : tensor<256xi32, #cluster>
      %21 = arith.subi %cst, %20 : tensor<256xi32, #cluster>
      %22 = arith.cmpi slt, %20, %cst : tensor<256xi32, #cluster>
      %23 = "triton_xpu.extract"(%22) <{index = 0 : i32}> : (tensor<256xi1, #cluster>) -> i1
      scf.if %23 {
        %24 = tt.splat %arg0 : !tt.ptr<f32> -> tensor<256x!tt.ptr<f32>, #cluster>
        %25 = tt.addptr %24, %20 : tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>
        %26 = "triton_xpu.gm2lm"(%25, %21, %17) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>, tensor<256x!tt.ptr<f32, 0>, #cluster>) -> tensor<256x!tt.ptr<f32, 0>, #cluster>
        %27 = tt.splat %arg1 : !tt.ptr<f32> -> tensor<256x!tt.ptr<f32>, #cluster>
        %28 = tt.addptr %27, %20 : tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>
        %29 = "triton_xpu.gm2lm"(%28, %21, %16) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>, tensor<256x!tt.ptr<f32, 0>, #cluster>) -> tensor<256x!tt.ptr<f32, 0>, #cluster>
        %30 = tt.splat %arg2 : !tt.ptr<f32> -> tensor<256x!tt.ptr<f32>, #cluster>
        %31 = tt.addptr %30, %20 : tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>
        %32 = "triton_xpu.gm2lm"(%31, %21, %15) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>, tensor<256x!tt.ptr<f32, 0>, #cluster>) -> tensor<256x!tt.ptr<f32, 0>, #cluster>
        %33 = tt.splat %arg3 : !tt.ptr<f32> -> tensor<256x!tt.ptr<f32>, #cluster>
        %34 = tt.addptr %33, %20 : tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>
        %35 = "triton_xpu.gm2lm"(%34, %21, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32>, #cluster>, tensor<256xi32, #cluster>, tensor<256x!tt.ptr<f32, 0>, #cluster>) -> tensor<256x!tt.ptr<f32, 0>, #cluster>
        llvm_xpu.mfence %c1_i32
        %36 = tt.splat %arg4 : !tt.ptr<f16> -> tensor<256x!tt.ptr<f16>, #cluster>
        %37 = tt.addptr %36, %20 : tensor<256x!tt.ptr<f16>, #cluster>, tensor<256xi32, #cluster>
        %c0 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1 = arith.constant 1 : index
        scf.for %arg10 = %c0 to %c2 step %c1 {
          %38 = arith.index_cast %arg10 : index to i32
          %39 = "triton_xpu.load"(%26, %22, %38) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32, 0>, #cluster>, tensor<256xi1, #cluster>, i32) -> tensor<128xf32, #cluster1>
          %40 = "triton_xpu.load"(%29, %22, %38) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32, 0>, #cluster>, tensor<256xi1, #cluster>, i32) -> tensor<128xf32, #cluster1>
          %41 = arith.addf %39, %40 : tensor<128xf32, #cluster1>
          %42 = "triton_xpu.load"(%32, %22, %38) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32, 0>, #cluster>, tensor<256xi1, #cluster>, i32) -> tensor<128xf32, #cluster1>
          %43 = arith.addf %41, %42 : tensor<128xf32, #cluster1>
          %44 = "triton_xpu.load"(%35, %22, %38) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f32, 0>, #cluster>, tensor<256xi1, #cluster>, i32) -> tensor<128xf32, #cluster1>
          %45 = arith.addf %43, %44 : tensor<128xf32, #cluster1>
          %46 = arith.truncf %45 : tensor<128xf32, #cluster1> to tensor<128xf16, #cluster1>
          "triton_xpu.store"(%13, %46, %22, %38) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f16, 0>, #cluster>, tensor<128xf16, #cluster1>, tensor<256xi1, #cluster>, i32) -> ()
        }
        "triton_xpu.lm2gm"(%37, %21, %13) <{atomicSim = false, handwrittenOffsetState = true, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<256x!tt.ptr<f16>, #cluster>, tensor<256xi32, #cluster>, tensor<256x!tt.ptr<f16, 0>, #cluster>) -> ()
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
