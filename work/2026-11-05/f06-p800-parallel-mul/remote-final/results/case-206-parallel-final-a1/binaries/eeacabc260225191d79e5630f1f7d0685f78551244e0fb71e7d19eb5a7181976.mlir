#cluster = #triton_xpu.cluster<{sizePerCore = [16], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 1 : i32, "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @triton_unk_fused_0(%arg0: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg1: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg2: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg3: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg4: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg5: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg6: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg7: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg8: !tt.ptr<bf16> {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: i32, %arg11: i32, %arg12: i32) attributes {noinline = false} {
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
    %c1024_i32 = arith.constant 1024 : i32
    %cst = arith.constant dense<2048> : tensor<1024xi32, #cluster>
    %cst_0 = arith.constant dense<16> : tensor<1024xi32, #cluster>
    %cst_1 = arith.constant dense<1> : tensor<1024xi32, #cluster>
    %cst_2 = arith.constant dense<32767> : tensor<1024xi32, #cluster>
    %cst_3 = arith.constant dense<-65536> : tensor<1024xi32, #cluster>
    %cst_4 = arith.constant dense<2147483647> : tensor<1024xi32, #cluster>
    %cst_5 = arith.constant dense<2139095040> : tensor<1024xi32, #cluster>
    %cst_6 = arith.constant dense<4194304> : tensor<1024xi32, #cluster>
    %c0_i32 = arith.constant 0 : i32
    %9 = triton_xpu.make_range %c0_i32  {end = 1024 : i32, realSize = 1024 : i32, start = 0 : i32} : i32  -> tensor<1024xi32, #cluster>
    scf.for %arg13 = %6 to %7 step %8 {
      %10 = arith.index_cast %arg13 : index to i32
      %11 = arith.divsi %10, %arg12 : i32
      %12 = arith.divsi %11, %arg11 : i32
      %13 = "triton_xpu.alloca"() <{size = 1024 : si64}> : () -> tensor<1024x!tt.ptr<bf16, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 1024 : si64}> : () -> tensor<1024x!tt.ptr<f32, 0>, #cluster>
      %15 = "triton_xpu.alloca"() <{size = 1024 : si64}> : () -> tensor<1024x!tt.ptr<f32, 0>, #cluster>
      %16 = "triton_xpu.alloca"() <{size = 1024 : si64}> : () -> tensor<1024x!tt.ptr<f32, 0>, #cluster>
      %17 = "triton_xpu.alloca"() <{size = 1024 : si64}> : () -> tensor<1024x!tt.ptr<f32, 0>, #cluster>
      %18 = "triton_xpu.alloca"() <{size = 1024 : si64}> : () -> tensor<1024x!tt.ptr<f32, 0>, #cluster>
      %19 = "triton_xpu.alloca"() <{size = 1024 : si64}> : () -> tensor<1024x!tt.ptr<f32, 0>, #cluster>
      %20 = "triton_xpu.alloca"() <{size = 1024 : si64}> : () -> tensor<1024x!tt.ptr<f32, 0>, #cluster>
      %21 = "triton_xpu.alloca"() <{size = 1024 : si64}> : () -> tensor<1024x!tt.ptr<f32, 0>, #cluster>
      %22 = "triton_xpu.alloca"() <{size = 1024 : si64}> : () -> tensor<1024x!tt.ptr<f32, 0>, #cluster>
      %23 = arith.muli %12, %c1024_i32 : i32
      %24 = tt.splat %23 : i32 -> tensor<1024xi32, #cluster>
      %25 = arith.addi %24, %9 : tensor<1024xi32, #cluster>
      %26 = arith.subi %cst, %25 : tensor<1024xi32, #cluster>
      %27 = arith.cmpi slt, %25, %cst : tensor<1024xi32, #cluster>
      %28 = "triton_xpu.extract"(%27) <{index = 0 : i32}> : (tensor<1024xi1, #cluster>) -> i1
      scf.if %28 {
        %29 = tt.splat %arg0 : !tt.ptr<f32> -> tensor<1024x!tt.ptr<f32>, #cluster>
        %30 = tt.addptr %29, %25 : tensor<1024x!tt.ptr<f32>, #cluster>, tensor<1024xi32, #cluster>
        %31 = "triton_xpu.gm2lm"(%30, %26, %22) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1024x!tt.ptr<f32>, #cluster>, tensor<1024xi32, #cluster>, tensor<1024x!tt.ptr<f32, 0>, #cluster>) -> tensor<1024x!tt.ptr<f32, 0>, #cluster>
        %32 = tt.splat %arg1 : !tt.ptr<f32> -> tensor<1024x!tt.ptr<f32>, #cluster>
        %33 = tt.addptr %32, %25 : tensor<1024x!tt.ptr<f32>, #cluster>, tensor<1024xi32, #cluster>
        %34 = "triton_xpu.gm2lm"(%33, %26, %21) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1024x!tt.ptr<f32>, #cluster>, tensor<1024xi32, #cluster>, tensor<1024x!tt.ptr<f32, 0>, #cluster>) -> tensor<1024x!tt.ptr<f32, 0>, #cluster>
        %35 = tt.splat %arg2 : !tt.ptr<f32> -> tensor<1024x!tt.ptr<f32>, #cluster>
        %36 = tt.addptr %35, %25 : tensor<1024x!tt.ptr<f32>, #cluster>, tensor<1024xi32, #cluster>
        %37 = "triton_xpu.gm2lm"(%36, %26, %20) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1024x!tt.ptr<f32>, #cluster>, tensor<1024xi32, #cluster>, tensor<1024x!tt.ptr<f32, 0>, #cluster>) -> tensor<1024x!tt.ptr<f32, 0>, #cluster>
        %38 = tt.splat %arg3 : !tt.ptr<f32> -> tensor<1024x!tt.ptr<f32>, #cluster>
        %39 = tt.addptr %38, %25 : tensor<1024x!tt.ptr<f32>, #cluster>, tensor<1024xi32, #cluster>
        %40 = "triton_xpu.gm2lm"(%39, %26, %19) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1024x!tt.ptr<f32>, #cluster>, tensor<1024xi32, #cluster>, tensor<1024x!tt.ptr<f32, 0>, #cluster>) -> tensor<1024x!tt.ptr<f32, 0>, #cluster>
        %41 = tt.splat %arg4 : !tt.ptr<f32> -> tensor<1024x!tt.ptr<f32>, #cluster>
        %42 = tt.addptr %41, %25 : tensor<1024x!tt.ptr<f32>, #cluster>, tensor<1024xi32, #cluster>
        %43 = "triton_xpu.gm2lm"(%42, %26, %18) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1024x!tt.ptr<f32>, #cluster>, tensor<1024xi32, #cluster>, tensor<1024x!tt.ptr<f32, 0>, #cluster>) -> tensor<1024x!tt.ptr<f32, 0>, #cluster>
        %44 = tt.splat %arg5 : !tt.ptr<f32> -> tensor<1024x!tt.ptr<f32>, #cluster>
        %45 = tt.addptr %44, %25 : tensor<1024x!tt.ptr<f32>, #cluster>, tensor<1024xi32, #cluster>
        %46 = "triton_xpu.gm2lm"(%45, %26, %17) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1024x!tt.ptr<f32>, #cluster>, tensor<1024xi32, #cluster>, tensor<1024x!tt.ptr<f32, 0>, #cluster>) -> tensor<1024x!tt.ptr<f32, 0>, #cluster>
        %47 = tt.splat %arg6 : !tt.ptr<f32> -> tensor<1024x!tt.ptr<f32>, #cluster>
        %48 = tt.addptr %47, %25 : tensor<1024x!tt.ptr<f32>, #cluster>, tensor<1024xi32, #cluster>
        %49 = "triton_xpu.gm2lm"(%48, %26, %16) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1024x!tt.ptr<f32>, #cluster>, tensor<1024xi32, #cluster>, tensor<1024x!tt.ptr<f32, 0>, #cluster>) -> tensor<1024x!tt.ptr<f32, 0>, #cluster>
        %50 = tt.splat %arg7 : !tt.ptr<f32> -> tensor<1024x!tt.ptr<f32>, #cluster>
        %51 = tt.addptr %50, %25 : tensor<1024x!tt.ptr<f32>, #cluster>, tensor<1024xi32, #cluster>
        %52 = "triton_xpu.gm2lm"(%51, %26, %15) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1024x!tt.ptr<f32>, #cluster>, tensor<1024xi32, #cluster>, tensor<1024x!tt.ptr<f32, 0>, #cluster>) -> tensor<1024x!tt.ptr<f32, 0>, #cluster>
        llvm_xpu.mfence %c1_i32
        %53 = "triton_xpu.load"(%31, %27) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1024x!tt.ptr<f32, 0>, #cluster>, tensor<1024xi1, #cluster>) -> tensor<64xvector<16xf32>, #cluster1>
        %54 = "triton_xpu.load"(%34, %27) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1024x!tt.ptr<f32, 0>, #cluster>, tensor<1024xi1, #cluster>) -> tensor<64xvector<16xf32>, #cluster1>
        %55 = "triton_xpu.load"(%37, %27) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1024x!tt.ptr<f32, 0>, #cluster>, tensor<1024xi1, #cluster>) -> tensor<64xvector<16xf32>, #cluster1>
        %56 = "triton_xpu.load"(%40, %27) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1024x!tt.ptr<f32, 0>, #cluster>, tensor<1024xi1, #cluster>) -> tensor<64xvector<16xf32>, #cluster1>
        %57 = "triton_xpu.load"(%43, %27) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1024x!tt.ptr<f32, 0>, #cluster>, tensor<1024xi1, #cluster>) -> tensor<64xvector<16xf32>, #cluster1>
        %58 = "triton_xpu.load"(%46, %27) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1024x!tt.ptr<f32, 0>, #cluster>, tensor<1024xi1, #cluster>) -> tensor<64xvector<16xf32>, #cluster1>
        %59 = "triton_xpu.load"(%49, %27) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1024x!tt.ptr<f32, 0>, #cluster>, tensor<1024xi1, #cluster>) -> tensor<64xvector<16xf32>, #cluster1>
        %60 = "triton_xpu.load"(%52, %27) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1024x!tt.ptr<f32, 0>, #cluster>, tensor<1024xi1, #cluster>) -> tensor<64xvector<16xf32>, #cluster1>
        %61 = triton_xpu.vvaddf %53, %54 : tensor<64xvector<16xf32>, #cluster1>
        %62 = triton_xpu.vvaddf %61, %55 : tensor<64xvector<16xf32>, #cluster1>
        %63 = triton_xpu.vvaddf %62, %56 : tensor<64xvector<16xf32>, #cluster1>
        %64 = triton_xpu.vvaddf %63, %57 : tensor<64xvector<16xf32>, #cluster1>
        %65 = triton_xpu.vvaddf %64, %58 : tensor<64xvector<16xf32>, #cluster1>
        %66 = triton_xpu.vvaddf %65, %59 : tensor<64xvector<16xf32>, #cluster1>
        %67 = triton_xpu.vvaddf %66, %60 : tensor<64xvector<16xf32>, #cluster1>
        %68 = tt.splat %arg8 : !tt.ptr<bf16> -> tensor<1024x!tt.ptr<bf16>, #cluster>
        %69 = tt.addptr %68, %25 : tensor<1024x!tt.ptr<bf16>, #cluster>, tensor<1024xi32, #cluster>
        %70 = "triton_xpu.unpack"(%67, %14) : (tensor<64xvector<16xf32>, #cluster1>, tensor<1024x!tt.ptr<f32, 0>, #cluster>) -> tensor<1024xf32, #cluster>
        %71 = tt.bitcast %70 : tensor<1024xf32, #cluster> -> tensor<1024xi32, #cluster>
        %72 = arith.shrui %71, %cst_0 : tensor<1024xi32, #cluster>
        %73 = arith.andi %72, %cst_1 : tensor<1024xi32, #cluster>
        %74 = arith.addi %71, %cst_2 : tensor<1024xi32, #cluster>
        %75 = arith.addi %74, %73 : tensor<1024xi32, #cluster>
        %76 = arith.andi %75, %cst_3 : tensor<1024xi32, #cluster>
        %77 = arith.andi %71, %cst_4 : tensor<1024xi32, #cluster>
        %78 = arith.cmpi uge, %77, %cst_5 : tensor<1024xi32, #cluster>
        %79 = arith.cmpi ugt, %77, %cst_5 : tensor<1024xi32, #cluster>
        %80 = arith.ori %71, %cst_6 : tensor<1024xi32, #cluster>
        %81 = arith.select %79, %80, %71 : tensor<1024xi1, #cluster>, tensor<1024xi32, #cluster>
        %82 = arith.select %78, %81, %76 : tensor<1024xi1, #cluster>, tensor<1024xi32, #cluster>
        %83 = tt.bitcast %82 : tensor<1024xi32, #cluster> -> tensor<1024xf32, #cluster>
        "triton_xpu.store"(%13, %83, %27) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1024x!tt.ptr<bf16, 0>, #cluster>, tensor<1024xf32, #cluster>, tensor<1024xi1, #cluster>) -> ()
        "triton_xpu.lm2gm"(%69, %26, %13) <{atomicSim = false, handwrittenOffsetState = true, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1024x!tt.ptr<bf16>, #cluster>, tensor<1024xi32, #cluster>, tensor<1024x!tt.ptr<bf16, 0>, #cluster>) -> ()
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
