#cluster = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 16], groupsPerCluster = [4, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 64], coresPerGroup = [1, 16], groupsPerCluster = [4, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1, 4], coresPerGroup = [1, 16], groupsPerCluster = [4, 1], order = [0, 1]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [1], groupsPerCluster = [4], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [64], coresPerGroup = [16], groupsPerCluster = [1], order = [0]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 16], groupsPerCluster = [4, 1], order = [0, 1]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 16 : i32} {
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
    %c4_i32 = arith.constant 4 : i32
    %cst = arith.constant dense<128> : tensor<4x1xi32, #cluster>
    %cst_0 = arith.constant dense<1024> : tensor<4x1xi32, #cluster>
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 4 : si64}> : () -> tensor<4x1x!tt.ptr<bf16, 0>, #cluster>
      %13 = "triton_xpu.alloca"() <{size = 1024 : si64}> : () -> tensor<1x1024x!tt.ptr<bf16, 0>, #cluster1>
      %14 = "triton_xpu.alloca"() <{size = 4096 : si64}> : () -> tensor<4x1024x!tt.ptr<bf16, 0>, #cluster1>
      %15 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<4x1024xf32, #cluster1>}> : () -> tensor<4x64xvector<16xf32>, #cluster2>
      %16 = arith.muli %11, %c4_i32 : i32
      %17 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 16 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<4xi32, #cluster3>
      %18 = triton_xpu.convert_layout %17 : tensor<4xi32, #cluster3> -> tensor<4xi32, #ttg.slice<{dim = 1, parent = #cluster}>>
      %19 = tt.expand_dims %18 {axis = 1 : i32} : tensor<4xi32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<4x1xi32, #cluster>
      %20 = tt.splat %16 : i32 -> tensor<4x1xi32, #cluster>
      %21 = arith.addi %20, %19 : tensor<4x1xi32, #cluster>
      %22 = arith.subi %cst, %21 : tensor<4x1xi32, #cluster>
      %23 = arith.cmpi slt, %21, %cst : tensor<4x1xi32, #cluster>
      %24 = "triton_xpu.extract"(%23) <{index = 0 : i32}> : (tensor<4x1xi1, #cluster>) -> i1
      scf.if %24 {
        %25 = triton_xpu.make_range   {end = 1024 : i32, realSize = 1024 : i32, start = 0 : i32} :   -> tensor<1024xi32, #cluster4>
        %26 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 16 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<1024xi32, #cluster4>
        %27 = triton_xpu.convert_layout %25 : tensor<1024xi32, #cluster4> -> tensor<1024xi32, #ttg.slice<{dim = 0, parent = #cluster1}>>
        %28 = tt.expand_dims %27 {axis = 0 : i32} : tensor<1024xi32, #ttg.slice<{dim = 0, parent = #cluster1}>> -> tensor<1x1024xi32, #cluster1>
        %29 = arith.muli %21, %cst_0 : tensor<4x1xi32, #cluster>
        %30 = triton_xpu.broadcast %28 : tensor<1x1024xi32, #cluster1> -> tensor<4x1024xi32, #cluster1>
        %31 = triton_xpu.broadcast %29 : tensor<4x1xi32, #cluster> -> tensor<4x1024xi32, #cluster1>
        %32 = arith.addi %30, %31 : tensor<4x1024xi32, #cluster1>
        %33 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<4x1024x!tt.ptr<bf16>, #cluster1>
        %34 = tt.addptr %33, %32 : tensor<4x1024x!tt.ptr<bf16>, #cluster1>, tensor<4x1024xi32, #cluster1>
        %35 = triton_xpu.broadcast %23 : tensor<4x1xi1, #cluster> -> tensor<4x1024xi1, #cluster1>
        %36 = "triton_xpu.extract_slice"(%15) : (tensor<4x64xvector<16xf32>, #cluster2>) -> tensor<4x32xvector<16xf32>, #cluster5>
        %c0 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1 = arith.constant 1 : index
        scf.for %arg9 = %c0 to %c2 step %c1 {
          %57 = arith.index_cast %arg9 : index to i32
          "triton_xpu.store"(%14, %36, %57) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<4x1024x!tt.ptr<bf16, 0>, #cluster1>, tensor<4x32xvector<16xf32>, #cluster5>, i32) -> ()
        }
        %37 = "triton_xpu.gm2lm"(%34, %35, %15, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<4x1024x!tt.ptr<bf16>, #cluster1>, tensor<4x1024xi1, #cluster1>, tensor<4x64xvector<16xf32>, #cluster2>, tensor<4x1024x!tt.ptr<bf16, 0>, #cluster1>) -> tensor<4x1024x!tt.ptr<bf16, 0>, #cluster1>
        %38 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x1024x!tt.ptr<bf16>, #cluster1>
        %39 = tt.addptr %38, %28 : tensor<1x1024x!tt.ptr<bf16>, #cluster1>, tensor<1x1024xi32, #cluster1>
        %40 = "triton_xpu.gm2lm"(%39, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 0, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<bf16>, #cluster1>, tensor<1x1024x!tt.ptr<bf16, 0>, #cluster1>) -> tensor<1x1024x!tt.ptr<bf16, 0>, #cluster1>
        llvm_xpu.mfence %c1_i32
        %41 = "triton_xpu.load"(%37, %35, %15) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<4x1024x!tt.ptr<bf16, 0>, #cluster1>, tensor<4x1024xi1, #cluster1>, tensor<4x64xvector<16xf32>, #cluster2>) -> tensor<4x64xvector<16xf32>, #cluster2>
        %42 = "triton_xpu.load"(%40) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<bf16, 0>, #cluster1>) -> tensor<1x1024xf32, #cluster1>
        %43 = triton_xpu.broadcast %42 : tensor<1x1024xf32, #cluster1> -> tensor<4x64xvector<16xf32>, #cluster2>
        %44 = triton_xpu.vvmulf %41, %43 : tensor<4x64xvector<16xf32>, #cluster2>
        %45 = "triton_xpu.vselect"(%35, %44, %15) : (tensor<4x1024xi1, #cluster1>, tensor<4x64xvector<16xf32>, #cluster2>, tensor<4x64xvector<16xf32>, #cluster2>) -> tensor<4x64xvector<16xf32>, #cluster2>
        %46 = "triton_xpu.reduce"(%45, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
        ^bb0(%arg9: vector<16xf32>, %arg10: vector<16xf32>):
          %57 = arith.addf %arg9, %arg10 : vector<16xf32>
          triton_xpu.reduce.return %57 : vector<16xf32>
        }) : (tensor<4x64xvector<16xf32>, #cluster2>, i32) -> tensor<4xf32, #ttg.slice<{dim = 1, parent = #cluster2}>>
        %47 = triton_xpu.convert_layout %46 : tensor<4xf32, #ttg.slice<{dim = 1, parent = #cluster2}>> -> tensor<4xf32, #cluster3>
        %48 = triton_xpu.convert_layout %47 : tensor<4xf32, #cluster3> -> tensor<4xf32, #ttg.slice<{dim = 1, parent = #cluster}>>
        %49 = tt.expand_dims %48 {axis = 1 : i32} : tensor<4xf32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<4x1xf32, #cluster>
        %50 = tt.splat %arg2 : !tt.ptr<bf16> -> tensor<4x1x!tt.ptr<bf16>, #cluster>
        %51 = tt.addptr %50, %21 : tensor<4x1x!tt.ptr<bf16>, #cluster>, tensor<4x1xi32, #cluster>
        %52 = "triton_xpu.get_core_id"() : () -> i32
        %c16_i32 = arith.constant 16 : i32
        %53 = arith.remsi %52, %c16_i32 : i32
        %54 = arith.cmpi eq, %53, %c0_i32 : i32
        %c64_i32 = arith.constant 64 : i32
        %55 = arith.cmpi slt, %52, %c64_i32 : i32
        %56 = arith.andi %54, %55 : i1
        scf.if %56 {
          "triton_xpu.store"(%12, %49, %23) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<4x1x!tt.ptr<bf16, 0>, #cluster>, tensor<4x1xf32, #cluster>, tensor<4x1xi1, #cluster>) -> ()
          "triton_xpu.lm2gm"(%51, %22, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<4x1x!tt.ptr<bf16>, #cluster>, tensor<4x1xi32, #cluster>, tensor<4x1x!tt.ptr<bf16, 0>, #cluster>) -> ()
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
