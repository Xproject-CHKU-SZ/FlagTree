#cluster = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 8], groupsPerCluster = [8, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 128], coresPerGroup = [1, 8], groupsPerCluster = [8, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1, 8], coresPerGroup = [1, 8], groupsPerCluster = [8, 1], order = [0, 1]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [1], groupsPerCluster = [8], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [128], coresPerGroup = [8], groupsPerCluster = [1], order = [0]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 8], groupsPerCluster = [8, 1], order = [0, 1]}>
#cluster6 = #triton_xpu.cluster<{sizePerCore = [1, 4], coresPerGroup = [1, 8], groupsPerCluster = [8, 1], order = [0, 1]}>
#cluster7 = #triton_xpu.cluster<{sizePerCore = [1, 64], coresPerGroup = [1, 8], groupsPerCluster = [8, 1], order = [0, 1]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 8 : i32} {
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
    %c8_i32 = arith.constant 8 : i32
    %cst = arith.constant dense<512> : tensor<8x1xi32, #cluster>
    %cst_0 = arith.constant dense<1024> : tensor<8x1xi32, #cluster>
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 8 : si64}> : () -> tensor<8x1x!tt.ptr<bf16, 0>, #cluster>
      %13 = "triton_xpu.alloca"() <{size = 1024 : si64}> : () -> tensor<1x1024x!tt.ptr<bf16, 0>, #cluster1>
      %14 = "triton_xpu.alloca"() <{size = 8192 : si64}> : () -> tensor<8x1024x!tt.ptr<bf16, 0>, #cluster1>
      %15 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<8x1024xf32, #cluster1>}> : () -> tensor<8x64xvector<16xf32>, #cluster2>
      %16 = arith.muli %11, %c8_i32 : i32
      %17 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 8 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<8xi32, #cluster3>
      %18 = triton_xpu.convert_layout %17 : tensor<8xi32, #cluster3> -> tensor<8xi32, #ttg.slice<{dim = 1, parent = #cluster}>>
      %19 = tt.expand_dims %18 {axis = 1 : i32} : tensor<8xi32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<8x1xi32, #cluster>
      %20 = tt.splat %16 : i32 -> tensor<8x1xi32, #cluster>
      %21 = arith.addi %20, %19 : tensor<8x1xi32, #cluster>
      %22 = arith.subi %cst, %21 : tensor<8x1xi32, #cluster>
      %23 = arith.cmpi slt, %21, %cst : tensor<8x1xi32, #cluster>
      %24 = "triton_xpu.extract"(%23) <{index = 0 : i32}> : (tensor<8x1xi1, #cluster>) -> i1
      scf.if %24 {
        %25 = triton_xpu.make_range   {end = 1024 : i32, realSize = 1024 : i32, start = 0 : i32} :   -> tensor<1024xi32, #cluster4>
        %26 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 8 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<1024xi32, #cluster4>
        %27 = triton_xpu.convert_layout %25 : tensor<1024xi32, #cluster4> -> tensor<1024xi32, #ttg.slice<{dim = 0, parent = #cluster1}>>
        %28 = tt.expand_dims %27 {axis = 0 : i32} : tensor<1024xi32, #ttg.slice<{dim = 0, parent = #cluster1}>> -> tensor<1x1024xi32, #cluster1>
        %29 = arith.muli %21, %cst_0 : tensor<8x1xi32, #cluster>
        %30 = triton_xpu.broadcast %28 : tensor<1x1024xi32, #cluster1> -> tensor<8x1024xi32, #cluster1>
        %31 = triton_xpu.broadcast %29 : tensor<8x1xi32, #cluster> -> tensor<8x1024xi32, #cluster1>
        %32 = arith.addi %30, %31 : tensor<8x1024xi32, #cluster1>
        %33 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<8x1024x!tt.ptr<bf16>, #cluster1>
        %34 = tt.addptr %33, %32 : tensor<8x1024x!tt.ptr<bf16>, #cluster1>, tensor<8x1024xi32, #cluster1>
        %35 = triton_xpu.broadcast %23 : tensor<8x1xi1, #cluster> -> tensor<8x1024xi1, #cluster1>
        %36 = "triton_xpu.extract_slice"(%15) : (tensor<8x64xvector<16xf32>, #cluster2>) -> tensor<8x16xvector<16xf32>, #cluster5>
        %c0 = arith.constant 0 : index
        %c4 = arith.constant 4 : index
        %c1 = arith.constant 1 : index
        scf.for %arg9 = %c0 to %c4 step %c1 {
          %59 = arith.index_cast %arg9 : index to i32
          "triton_xpu.store"(%14, %36, %59) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x1024x!tt.ptr<bf16, 0>, #cluster1>, tensor<8x16xvector<16xf32>, #cluster5>, i32) -> ()
        }
        %37 = "triton_xpu.gm2lm"(%34, %35, %15, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<8x1024x!tt.ptr<bf16>, #cluster1>, tensor<8x1024xi1, #cluster1>, tensor<8x64xvector<16xf32>, #cluster2>, tensor<8x1024x!tt.ptr<bf16, 0>, #cluster1>) -> tensor<8x1024x!tt.ptr<bf16, 0>, #cluster1>
        %38 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x1024x!tt.ptr<bf16>, #cluster1>
        %39 = tt.addptr %38, %28 : tensor<1x1024x!tt.ptr<bf16>, #cluster1>, tensor<1x1024xi32, #cluster1>
        %40 = "triton_xpu.gm2lm"(%39, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 0, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<bf16>, #cluster1>, tensor<1x1024x!tt.ptr<bf16, 0>, #cluster1>) -> tensor<1x1024x!tt.ptr<bf16, 0>, #cluster1>
        llvm_xpu.mfence %c1_i32
        %41 = "triton_xpu.load"(%37, %35, %15) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x1024x!tt.ptr<bf16, 0>, #cluster1>, tensor<8x1024xi1, #cluster1>, tensor<8x64xvector<16xf32>, #cluster2>) -> tensor<8x64xvector<16xf32>, #cluster2>
        %42 = "triton_xpu.load"(%40) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<bf16, 0>, #cluster1>) -> tensor<1x1024xf32, #cluster1>
        %43 = triton_xpu.broadcast %42 : tensor<1x1024xf32, #cluster1> -> tensor<8x64xvector<16xf32>, #cluster2>
        %44 = triton_xpu.vvmulf %41, %43 : tensor<8x64xvector<16xf32>, #cluster2>
        %45 = "triton_xpu.vselect"(%35, %44, %15) : (tensor<8x1024xi1, #cluster1>, tensor<8x64xvector<16xf32>, #cluster2>, tensor<8x64xvector<16xf32>, #cluster2>) -> tensor<8x64xvector<16xf32>, #cluster2>
        %46 = "triton_xpu.extract_slice"(%45) : (tensor<8x64xvector<16xf32>, #cluster2>) -> tensor<8x32xvector<16xf32>, #cluster6>
        %c2 = arith.constant 2 : index
        %47 = scf.for %arg9 = %c1 to %c2 step %c1 iter_args(%arg10 = %46) -> (tensor<8x32xvector<16xf32>, #cluster6>) {
          %59 = arith.index_cast %arg9 : index to i32
          %60 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<8x1024xf32, #cluster1>}> : () -> tensor<8x32xvector<16xf32>, #cluster6>
          %61 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 8 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<8xi32, #cluster3>
          %62 = triton_xpu.convert_layout %61 : tensor<8xi32, #cluster3> -> tensor<8xi32, #ttg.slice<{dim = 1, parent = #cluster}>>
          %63 = tt.expand_dims %62 {axis = 1 : i32} : tensor<8xi32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<8x1xi32, #cluster>
          %64 = arith.addi %20, %63 : tensor<8x1xi32, #cluster>
          %65 = arith.cmpi slt, %64, %cst : tensor<8x1xi32, #cluster>
          %66 = triton_xpu.broadcast %65 : tensor<8x1xi1, #cluster> -> tensor<8x512xi1, #cluster7>
          %67 = "triton_xpu.load"(%37, %66, %60, %59) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x1024x!tt.ptr<bf16, 0>, #cluster1>, tensor<8x512xi1, #cluster7>, tensor<8x32xvector<16xf32>, #cluster6>, i32) -> tensor<8x32xvector<16xf32>, #cluster6>
          %68 = "triton_xpu.load"(%40, %59) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<bf16, 0>, #cluster1>, i32) -> tensor<1x512xf32, #cluster7>
          %69 = triton_xpu.broadcast %68 : tensor<1x512xf32, #cluster7> -> tensor<8x32xvector<16xf32>, #cluster6>
          %70 = triton_xpu.vvmulf %67, %69 : tensor<8x32xvector<16xf32>, #cluster6>
          %71 = "triton_xpu.vselect"(%66, %70, %60) : (tensor<8x512xi1, #cluster7>, tensor<8x32xvector<16xf32>, #cluster6>, tensor<8x32xvector<16xf32>, #cluster6>) -> tensor<8x32xvector<16xf32>, #cluster6>
          %72 = triton_xpu.vvaddf %arg10, %71 : tensor<8x32xvector<16xf32>, #cluster6>
          scf.yield %72 : tensor<8x32xvector<16xf32>, #cluster6>
        }
        %48 = "triton_xpu.reduce"(%47, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
        ^bb0(%arg9: vector<16xf32>, %arg10: vector<16xf32>):
          %59 = arith.addf %arg9, %arg10 : vector<16xf32>
          triton_xpu.reduce.return %59 : vector<16xf32>
        }) : (tensor<8x32xvector<16xf32>, #cluster6>, i32) -> tensor<8xf32, #ttg.slice<{dim = 1, parent = #cluster6}>>
        %49 = triton_xpu.convert_layout %48 : tensor<8xf32, #ttg.slice<{dim = 1, parent = #cluster6}>> -> tensor<8xf32, #cluster3>
        %50 = triton_xpu.convert_layout %49 : tensor<8xf32, #cluster3> -> tensor<8xf32, #ttg.slice<{dim = 1, parent = #cluster}>>
        %51 = tt.expand_dims %50 {axis = 1 : i32} : tensor<8xf32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<8x1xf32, #cluster>
        %52 = tt.splat %arg2 : !tt.ptr<bf16> -> tensor<8x1x!tt.ptr<bf16>, #cluster>
        %53 = tt.addptr %52, %21 : tensor<8x1x!tt.ptr<bf16>, #cluster>, tensor<8x1xi32, #cluster>
        %54 = "triton_xpu.get_core_id"() : () -> i32
        %55 = arith.remsi %54, %c8_i32 : i32
        %56 = arith.cmpi eq, %55, %c0_i32 : i32
        %c64_i32 = arith.constant 64 : i32
        %57 = arith.cmpi slt, %54, %c64_i32 : i32
        %58 = arith.andi %56, %57 : i1
        scf.if %58 {
          "triton_xpu.store"(%12, %51, %23) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x1x!tt.ptr<bf16, 0>, #cluster>, tensor<8x1xf32, #cluster>, tensor<8x1xi1, #cluster>) -> ()
          "triton_xpu.lm2gm"(%53, %22, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x1x!tt.ptr<bf16>, #cluster>, tensor<8x1xi32, #cluster>, tensor<8x1x!tt.ptr<bf16, 0>, #cluster>) -> ()
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
