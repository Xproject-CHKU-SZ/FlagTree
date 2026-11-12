#cluster = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 1 : i32, "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @triton_unk_fused_0(%arg0: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg1: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg2: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg3: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg4: !tt.ptr<bf16> {tt.divisibility = 16 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32, %arg7: i32, %arg8: i32) attributes {noinline = false} {
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
    %c64_i32 = arith.constant 64 : i32
    %cst = arith.constant dense<64> : tensor<64xi32, #cluster>
    %cst_0 = arith.constant dense<16> : tensor<64xi32, #cluster>
    %cst_1 = arith.constant dense<1> : tensor<64xi32, #cluster>
    %cst_2 = arith.constant dense<32767> : tensor<64xi32, #cluster>
    %cst_3 = arith.constant dense<-65536> : tensor<64xi32, #cluster>
    %cst_4 = arith.constant dense<2147483647> : tensor<64xi32, #cluster>
    %cst_5 = arith.constant dense<2139095040> : tensor<64xi32, #cluster>
    %cst_6 = arith.constant dense<4194304> : tensor<64xi32, #cluster>
    %c0_i32 = arith.constant 0 : i32
    %9 = triton_xpu.make_range %c0_i32  {end = 64 : i32, realSize = 64 : i32, start = 0 : i32} : i32  -> tensor<64xi32, #cluster>
    scf.for %arg9 = %6 to %7 step %8 {
      %10 = arith.index_cast %arg9 : index to i32
      %11 = arith.divsi %10, %arg8 : i32
      %12 = arith.divsi %11, %arg7 : i32
      %13 = "triton_xpu.alloca"() <{size = 64 : si64}> : () -> tensor<64x!tt.ptr<bf16, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 64 : si64}> : () -> tensor<64x!tt.ptr<f32, 0>, #cluster>
      %15 = "triton_xpu.alloca"() <{size = 64 : si64}> : () -> tensor<64x!tt.ptr<f32, 0>, #cluster>
      %16 = "triton_xpu.alloca"() <{size = 64 : si64}> : () -> tensor<64x!tt.ptr<f32, 0>, #cluster>
      %17 = "triton_xpu.alloca"() <{size = 64 : si64}> : () -> tensor<64x!tt.ptr<f32, 0>, #cluster>
      %18 = arith.muli %12, %c64_i32 : i32
      %19 = tt.splat %18 : i32 -> tensor<64xi32, #cluster>
      %20 = arith.addi %19, %9 : tensor<64xi32, #cluster>
      %21 = arith.subi %cst, %20 : tensor<64xi32, #cluster>
      %22 = arith.cmpi slt, %20, %cst : tensor<64xi32, #cluster>
      %23 = "triton_xpu.extract"(%22) <{index = 0 : i32}> : (tensor<64xi1, #cluster>) -> i1
      scf.if %23 {
        %24 = tt.splat %arg0 : !tt.ptr<f32> -> tensor<64x!tt.ptr<f32>, #cluster>
        %25 = tt.addptr %24, %20 : tensor<64x!tt.ptr<f32>, #cluster>, tensor<64xi32, #cluster>
        %26 = "triton_xpu.gm2lm"(%25, %21, %17) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<64x!tt.ptr<f32>, #cluster>, tensor<64xi32, #cluster>, tensor<64x!tt.ptr<f32, 0>, #cluster>) -> tensor<64x!tt.ptr<f32, 0>, #cluster>
        %27 = tt.splat %arg1 : !tt.ptr<f32> -> tensor<64x!tt.ptr<f32>, #cluster>
        %28 = tt.addptr %27, %20 : tensor<64x!tt.ptr<f32>, #cluster>, tensor<64xi32, #cluster>
        %29 = "triton_xpu.gm2lm"(%28, %21, %16) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<64x!tt.ptr<f32>, #cluster>, tensor<64xi32, #cluster>, tensor<64x!tt.ptr<f32, 0>, #cluster>) -> tensor<64x!tt.ptr<f32, 0>, #cluster>
        %30 = tt.splat %arg2 : !tt.ptr<f32> -> tensor<64x!tt.ptr<f32>, #cluster>
        %31 = tt.addptr %30, %20 : tensor<64x!tt.ptr<f32>, #cluster>, tensor<64xi32, #cluster>
        %32 = "triton_xpu.gm2lm"(%31, %21, %15) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<64x!tt.ptr<f32>, #cluster>, tensor<64xi32, #cluster>, tensor<64x!tt.ptr<f32, 0>, #cluster>) -> tensor<64x!tt.ptr<f32, 0>, #cluster>
        %33 = tt.splat %arg3 : !tt.ptr<f32> -> tensor<64x!tt.ptr<f32>, #cluster>
        %34 = tt.addptr %33, %20 : tensor<64x!tt.ptr<f32>, #cluster>, tensor<64xi32, #cluster>
        %35 = "triton_xpu.gm2lm"(%34, %21, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = true, lrie = 1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<64x!tt.ptr<f32>, #cluster>, tensor<64xi32, #cluster>, tensor<64x!tt.ptr<f32, 0>, #cluster>) -> tensor<64x!tt.ptr<f32, 0>, #cluster>
        llvm_xpu.mfence %c1_i32
        %36 = "triton_xpu.load"(%26, %22) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x!tt.ptr<f32, 0>, #cluster>, tensor<64xi1, #cluster>) -> tensor<64xf32, #cluster>
        %37 = "triton_xpu.load"(%29, %22) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x!tt.ptr<f32, 0>, #cluster>, tensor<64xi1, #cluster>) -> tensor<64xf32, #cluster>
        %38 = arith.addf %36, %37 : tensor<64xf32, #cluster>
        %39 = "triton_xpu.load"(%32, %22) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x!tt.ptr<f32, 0>, #cluster>, tensor<64xi1, #cluster>) -> tensor<64xf32, #cluster>
        %40 = arith.addf %38, %39 : tensor<64xf32, #cluster>
        %41 = "triton_xpu.load"(%35, %22) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x!tt.ptr<f32, 0>, #cluster>, tensor<64xi1, #cluster>) -> tensor<64xf32, #cluster>
        %42 = arith.addf %40, %41 : tensor<64xf32, #cluster>
        %43 = tt.splat %arg4 : !tt.ptr<bf16> -> tensor<64x!tt.ptr<bf16>, #cluster>
        %44 = tt.addptr %43, %20 : tensor<64x!tt.ptr<bf16>, #cluster>, tensor<64xi32, #cluster>
        %45 = tt.bitcast %42 : tensor<64xf32, #cluster> -> tensor<64xi32, #cluster>
        %46 = arith.shrui %45, %cst_0 : tensor<64xi32, #cluster>
        %47 = arith.andi %46, %cst_1 : tensor<64xi32, #cluster>
        %48 = arith.addi %45, %cst_2 : tensor<64xi32, #cluster>
        %49 = arith.addi %48, %47 : tensor<64xi32, #cluster>
        %50 = arith.andi %49, %cst_3 : tensor<64xi32, #cluster>
        %51 = arith.andi %45, %cst_4 : tensor<64xi32, #cluster>
        %52 = arith.cmpi uge, %51, %cst_5 : tensor<64xi32, #cluster>
        %53 = arith.cmpi ugt, %51, %cst_5 : tensor<64xi32, #cluster>
        %54 = arith.ori %45, %cst_6 : tensor<64xi32, #cluster>
        %55 = arith.select %53, %54, %45 : tensor<64xi1, #cluster>, tensor<64xi32, #cluster>
        %56 = arith.select %52, %55, %50 : tensor<64xi1, #cluster>, tensor<64xi32, #cluster>
        %57 = tt.bitcast %56 : tensor<64xi32, #cluster> -> tensor<64xf32, #cluster>
        "triton_xpu.store"(%13, %57, %22) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x!tt.ptr<bf16, 0>, #cluster>, tensor<64xf32, #cluster>, tensor<64xi1, #cluster>) -> ()
        "triton_xpu.lm2gm"(%44, %21, %13) <{atomicSim = false, handwrittenOffsetState = true, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x!tt.ptr<bf16>, #cluster>, tensor<64xi32, #cluster>, tensor<64x!tt.ptr<bf16, 0>, #cluster>) -> ()
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
