#cluster = #triton_xpu.cluster<{sizePerCore = [1, 8], coresPerGroup = [1, 32], groupsPerCluster = [2, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 32], groupsPerCluster = [2, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [8], coresPerGroup = [32], groupsPerCluster = [1], order = [0]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [1], groupsPerCluster = [2], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 32], groupsPerCluster = [2, 1], order = [0, 1]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 2 : i32, "ttg.threads-per-warp" = 32 : i32} {
  tt.func public @triton_per_fused_mul_sum_0(%arg0: !tt.ptr<bf16> {tt.divisibility = 16 : i32}, %arg1: !tt.ptr<bf16> {tt.divisibility = 16 : i32}, %arg2: !tt.ptr<bf16> {tt.divisibility = 16 : i32}, %arg3: i32 {tt.divisibility = 16 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32, %arg6: i32, %arg7: i32) attributes {noinline = false} {
    %0 = triton_xpu.get_cluster_id : i32
    %1 = triton_xpu.get_num_cluster : i32
    %2 = arith.muli %arg5, %arg6 : i32
    %3 = arith.muli %2, %arg7 : i32
    %c1_i32 = arith.constant 1 : i32
    %4 = arith.subi %1, %c1_i32 : i32
    %5 = arith.addi %3, %4 : i32
    %6 = arith.index_cast %0 : i32 to index
    %7 = arith.index_cast %3 : i32 to index
    %8 = arith.index_cast %1 : i32 to index
    %c0_i32 = arith.constant 0 : i32
    %cst = arith.constant dense<0.000000e+00> : tensor<2x256xf32, #cluster>
    %cst_0 = arith.constant dense<256> : tensor<2x1xi32, #cluster1>
    %cst_1 = arith.constant dense<32> : tensor<2x1xi32, #cluster1>
    %c2_i32 = arith.constant 2 : i32
    %9 = triton_xpu.make_range   {end = 256 : i32, realSize = 256 : i32, start = 0 : i32} :   -> tensor<256xi32, #cluster2>
    %10 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x256x!tt.ptr<bf16>, #cluster>
    scf.for %arg8 = %6 to %7 step %8 {
      %11 = arith.index_cast %arg8 : index to i32
      %12 = arith.divsi %11, %arg7 : i32
      %13 = arith.divsi %12, %arg6 : i32
      %14 = "triton_xpu.alloca"() <{size = 2 : si64}> : () -> tensor<2x1x!tt.ptr<bf16, 0>, #cluster1>
      %15 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<1x256x!tt.ptr<bf16, 0>, #cluster>
      %16 = "triton_xpu.alloca"() <{size = 512 : si64}> : () -> tensor<2x256x!tt.ptr<bf16, 0>, #cluster>
      %17 = arith.muli %13, %c2_i32 : i32
      %18 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 32 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<2xi32, #cluster3>
      %19 = triton_xpu.convert_layout %18 : tensor<2xi32, #cluster3> -> tensor<2xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
      %20 = tt.expand_dims %19 {axis = 1 : i32} : tensor<2xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<2x1xi32, #cluster1>
      %21 = tt.splat %17 : i32 -> tensor<2x1xi32, #cluster1>
      %22 = arith.addi %21, %20 : tensor<2x1xi32, #cluster1>
      %23 = arith.subi %cst_1, %22 : tensor<2x1xi32, #cluster1>
      %24 = arith.cmpi slt, %22, %cst_1 : tensor<2x1xi32, #cluster1>
      %25 = "triton_xpu.extract"(%24) <{index = 0 : i32}> : (tensor<2x1xi1, #cluster1>) -> i1
      scf.if %25 {
        %26 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 32 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<256xi32, #cluster2>
        %27 = triton_xpu.convert_layout %9 : tensor<256xi32, #cluster2> -> tensor<256xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
        %28 = tt.expand_dims %27 {axis = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x256xi32, #cluster>
        %29 = arith.muli %22, %cst_0 : tensor<2x1xi32, #cluster1>
        %30 = triton_xpu.broadcast %28 : tensor<1x256xi32, #cluster> -> tensor<2x256xi32, #cluster>
        %31 = triton_xpu.broadcast %29 : tensor<2x1xi32, #cluster1> -> tensor<2x256xi32, #cluster>
        %32 = arith.addi %30, %31 : tensor<2x256xi32, #cluster>
        %33 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<2x256x!tt.ptr<bf16>, #cluster>
        %34 = tt.addptr %33, %32 : tensor<2x256x!tt.ptr<bf16>, #cluster>, tensor<2x256xi32, #cluster>
        %35 = triton_xpu.broadcast %24 : tensor<2x1xi1, #cluster1> -> tensor<2x256xi1, #cluster>
        %36 = "triton_xpu.extract_slice"(%cst) : (tensor<2x256xf32, #cluster>) -> tensor<2x64xf32, #cluster4>
        %c0 = arith.constant 0 : index
        %c4 = arith.constant 4 : index
        %c1 = arith.constant 1 : index
        scf.for %arg9 = %c0 to %c4 step %c1 {
          %58 = arith.index_cast %arg9 : index to i32
          "triton_xpu.store"(%16, %36, %58) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2x256x!tt.ptr<bf16, 0>, #cluster>, tensor<2x64xf32, #cluster4>, i32) -> ()
        }
        %37 = "triton_xpu.gm2lm"(%34, %35, %cst, %16) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<2x256x!tt.ptr<bf16>, #cluster>, tensor<2x256xi1, #cluster>, tensor<2x256xf32, #cluster>, tensor<2x256x!tt.ptr<bf16, 0>, #cluster>) -> tensor<2x256x!tt.ptr<bf16, 0>, #cluster>
        %38 = tt.addptr %10, %28 : tensor<1x256x!tt.ptr<bf16>, #cluster>, tensor<1x256xi32, #cluster>
        %39 = "triton_xpu.gm2lm"(%38, %15) <{SVOpt = false, atomicSim = false, cache = true, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 0, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<bf16>, #cluster>, tensor<1x256x!tt.ptr<bf16, 0>, #cluster>) -> tensor<1x256x!tt.ptr<bf16, 0>, #cluster>
        llvm_xpu.mfence %c1_i32
        %40 = "triton_xpu.load"(%37, %35, %cst) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2x256x!tt.ptr<bf16, 0>, #cluster>, tensor<2x256xi1, #cluster>, tensor<2x256xf32, #cluster>) -> tensor<2x256xf32, #cluster>
        %41 = "triton_xpu.load"(%39) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<bf16, 0>, #cluster>) -> tensor<1x256xf32, #cluster>
        %42 = triton_xpu.broadcast %41 : tensor<1x256xf32, #cluster> -> tensor<2x256xf32, #cluster>
        %43 = arith.mulf %40, %42 : tensor<2x256xf32, #cluster>
        %44 = arith.select %35, %43, %cst : tensor<2x256xi1, #cluster>, tensor<2x256xf32, #cluster>
        %45 = "triton_xpu.extract_slice"(%44) : (tensor<2x256xf32, #cluster>) -> tensor<2x64xf32, #cluster4>
        %cst_2 = arith.constant dense<0.000000e+00> : tensor<2x64xf32, #cluster4>
        %46 = scf.for %arg9 = %c1 to %c4 step %c1 iter_args(%arg10 = %45) -> (tensor<2x64xf32, #cluster4>) {
          %58 = arith.index_cast %arg9 : index to i32
          %59 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 32 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<2xi32, #cluster3>
          %60 = triton_xpu.convert_layout %59 : tensor<2xi32, #cluster3> -> tensor<2xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
          %61 = tt.expand_dims %60 {axis = 1 : i32} : tensor<2xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<2x1xi32, #cluster1>
          %62 = arith.addi %21, %61 : tensor<2x1xi32, #cluster1>
          %63 = arith.cmpi slt, %62, %cst_1 : tensor<2x1xi32, #cluster1>
          %64 = triton_xpu.broadcast %63 : tensor<2x1xi1, #cluster1> -> tensor<2x64xi1, #cluster4>
          %65 = "triton_xpu.load"(%37, %64, %cst_2, %58) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2x256x!tt.ptr<bf16, 0>, #cluster>, tensor<2x64xi1, #cluster4>, tensor<2x64xf32, #cluster4>, i32) -> tensor<2x64xf32, #cluster4>
          %66 = "triton_xpu.load"(%39, %58) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<bf16, 0>, #cluster>, i32) -> tensor<1x64xf32, #cluster4>
          %67 = triton_xpu.broadcast %66 : tensor<1x64xf32, #cluster4> -> tensor<2x64xf32, #cluster4>
          %68 = arith.mulf %65, %67 : tensor<2x64xf32, #cluster4>
          %69 = arith.select %64, %68, %cst_2 : tensor<2x64xi1, #cluster4>, tensor<2x64xf32, #cluster4>
          %70 = arith.addf %arg10, %69 : tensor<2x64xf32, #cluster4>
          scf.yield %70 : tensor<2x64xf32, #cluster4>
        }
        %47 = "triton_xpu.reduce"(%46, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
        ^bb0(%arg9: f32, %arg10: f32):
          %58 = arith.addf %arg9, %arg10 : f32
          triton_xpu.reduce.return %58 : f32
        }) : (tensor<2x64xf32, #cluster4>, i32) -> tensor<2xf32, #ttg.slice<{dim = 1, parent = #cluster4}>>
        %48 = triton_xpu.convert_layout %47 : tensor<2xf32, #ttg.slice<{dim = 1, parent = #cluster4}>> -> tensor<2xf32, #cluster3>
        %49 = triton_xpu.convert_layout %48 : tensor<2xf32, #cluster3> -> tensor<2xf32, #ttg.slice<{dim = 1, parent = #cluster1}>>
        %50 = tt.expand_dims %49 {axis = 1 : i32} : tensor<2xf32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<2x1xf32, #cluster1>
        %51 = tt.splat %arg2 : !tt.ptr<bf16> -> tensor<2x1x!tt.ptr<bf16>, #cluster1>
        %52 = tt.addptr %51, %22 : tensor<2x1x!tt.ptr<bf16>, #cluster1>, tensor<2x1xi32, #cluster1>
        %53 = "triton_xpu.get_core_id"() : () -> i32
        %c32_i32 = arith.constant 32 : i32
        %54 = arith.remsi %53, %c32_i32 : i32
        %55 = arith.cmpi eq, %54, %c0_i32 : i32
        %c64_i32 = arith.constant 64 : i32
        %56 = arith.cmpi slt, %53, %c64_i32 : i32
        %57 = arith.andi %55, %56 : i1
        scf.if %57 {
          "triton_xpu.store"(%14, %50, %24) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2x1x!tt.ptr<bf16, 0>, #cluster1>, tensor<2x1xf32, #cluster1>, tensor<2x1xi1, #cluster1>) -> ()
          "triton_xpu.lm2gm"(%52, %23, %14) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2x1x!tt.ptr<bf16>, #cluster1>, tensor<2x1xi32, #cluster1>, tensor<2x1x!tt.ptr<bf16, 0>, #cluster1>) -> ()
        }
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
