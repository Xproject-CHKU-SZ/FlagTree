#cluster = #triton_xpu.cluster<{sizePerCore = [1, 256], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1, 16], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [1], groupsPerCluster = [16], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [256], coresPerGroup = [4], groupsPerCluster = [1], order = [0]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster6 = #triton_xpu.cluster<{sizePerCore = [1, 8], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster7 = #triton_xpu.cluster<{sizePerCore = [1, 4], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster8 = #triton_xpu.cluster<{sizePerCore = [1, 64], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 16 : i32, "ttg.threads-per-warp" = 4 : i32} {
  tt.func public @triton_per_fused_mul_sum_0(%arg0: !tt.ptr<f16> {tt.divisibility = 16 : i32}, %arg1: !tt.ptr<f16> {tt.divisibility = 16 : i32}, %arg2: !tt.ptr<f16> {tt.divisibility = 16 : i32}, %arg3: i32 {tt.divisibility = 16 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32, %arg6: i32, %arg7: i32) attributes {noinline = false} {
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
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant dense<0.000000e+00> : tensor<16x1024xf16, #cluster>
    %c32_i32 = arith.constant 32 : i32
    %cst_0 = arith.constant dense<512> : tensor<16x1xi32, #cluster1>
    %cst_1 = arith.constant dense<1024> : tensor<16x1xi32, #cluster1>
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 16 : si64}> : () -> tensor<16x1x!tt.ptr<f16, 0>, #cluster1>
      %13 = "triton_xpu.alloca"() <{size = 1024 : si64}> : () -> tensor<1x1024x!tt.ptr<f16, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 16384 : si64}> : () -> tensor<16x1024x!tt.ptr<f16, 0>, #cluster>
      %15 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<16x1024xf32, #cluster>}> : () -> tensor<16x64xvector<16xf32>, #cluster2>
      %16 = arith.muli %11, %c32_i32 : i32
      %17 = tt.splat %16 : i32 -> tensor<16x1xi32, #cluster1>
      scf.for %arg9 = %c0 to %c2 step %c1 {
        %18 = arith.index_cast %arg9 : index to i32
        %19 = "triton_xpu.out_range"(%18) <{groupsize = 4 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<16xi32, #cluster3>
        %20 = triton_xpu.convert_layout %19 : tensor<16xi32, #cluster3> -> tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
        %21 = tt.expand_dims %20 {axis = 1 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<16x1xi32, #cluster1>
        %22 = arith.addi %17, %21 : tensor<16x1xi32, #cluster1>
        %23 = arith.subi %cst_0, %22 : tensor<16x1xi32, #cluster1>
        %24 = arith.cmpi slt, %22, %cst_0 : tensor<16x1xi32, #cluster1>
        %25 = "triton_xpu.extract"(%24) <{index = 0 : i32}> : (tensor<16x1xi1, #cluster1>) -> i1
        scf.if %25 {
          %26 = triton_xpu.make_range   {end = 1024 : i32, realSize = 1024 : i32, start = 0 : i32} :   -> tensor<1024xi32, #cluster4>
          %27 = "triton_xpu.out_range"(%18) <{groupsize = 4 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<512xi32, #cluster4>
          %28 = triton_xpu.convert_layout %26 : tensor<1024xi32, #cluster4> -> tensor<1024xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
          %29 = tt.expand_dims %28 {axis = 0 : i32} : tensor<1024xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x1024xi32, #cluster>
          %30 = arith.muli %22, %cst_1 : tensor<16x1xi32, #cluster1>
          %31 = triton_xpu.broadcast %29 : tensor<1x1024xi32, #cluster> -> tensor<16x1024xi32, #cluster>
          %32 = triton_xpu.broadcast %30 : tensor<16x1xi32, #cluster1> -> tensor<16x1024xi32, #cluster>
          %33 = arith.addi %31, %32 : tensor<16x1024xi32, #cluster>
          %34 = tt.splat %arg0 : !tt.ptr<f16> -> tensor<16x1024x!tt.ptr<f16>, #cluster>
          %35 = tt.addptr %34, %33 : tensor<16x1024x!tt.ptr<f16>, #cluster>, tensor<16x1024xi32, #cluster>
          %36 = triton_xpu.broadcast %24 : tensor<16x1xi1, #cluster1> -> tensor<16x1024xi1, #cluster>
          %37 = "triton_xpu.extract_slice"(%cst) : (tensor<16x1024xf16, #cluster>) -> tensor<16x8xf16, #cluster5>
          %c128 = arith.constant 128 : index
          scf.for %arg10 = %c0 to %c128 step %c1 {
            %65 = arith.index_cast %arg10 : index to i32
            "triton_xpu.store"(%14, %37, %65) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1024x!tt.ptr<f16, 0>, #cluster>, tensor<16x8xf16, #cluster5>, i32) -> ()
          }
          %38 = "triton_xpu.gm2lm"(%35, %36, %cst, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<16x1024x!tt.ptr<f16>, #cluster>, tensor<16x1024xi1, #cluster>, tensor<16x1024xf16, #cluster>, tensor<16x1024x!tt.ptr<f16, 0>, #cluster>) -> tensor<16x1024x!tt.ptr<f16, 0>, #cluster>
          %39 = tt.splat %arg1 : !tt.ptr<f16> -> tensor<1x1024x!tt.ptr<f16>, #cluster>
          %40 = tt.addptr %39, %29 : tensor<1x1024x!tt.ptr<f16>, #cluster>, tensor<1x1024xi32, #cluster>
          %41 = "triton_xpu.gm2lm"(%40, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 0, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<f16>, #cluster>, tensor<1x1024x!tt.ptr<f16, 0>, #cluster>) -> tensor<1x1024x!tt.ptr<f16, 0>, #cluster>
          llvm_xpu.mfence %c1_i32
          %42 = "triton_xpu.load"(%38, %36, %cst) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1024x!tt.ptr<f16, 0>, #cluster>, tensor<16x1024xi1, #cluster>, tensor<16x1024xf16, #cluster>) -> tensor<16x32xvector<32xf16>, #cluster6>
          %43 = "triton_xpu.load"(%41) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<f16, 0>, #cluster>) -> tensor<1x1024xf16, #cluster>
          %44 = "triton_xpu.vextf"(%42) : (tensor<16x32xvector<32xf16>, #cluster6>) -> tensor<16x64xvector<16xf32>, #cluster2>
          %45 = arith.extf %43 : tensor<1x1024xf16, #cluster> to tensor<1x1024xf32, #cluster>
          %46 = triton_xpu.broadcast %45 : tensor<1x1024xf32, #cluster> -> tensor<16x64xvector<16xf32>, #cluster2>
          %47 = triton_xpu.vvmulf %44, %46 : tensor<16x64xvector<16xf32>, #cluster2>
          %48 = "triton_xpu.vtruncf"(%47) : (tensor<16x64xvector<16xf32>, #cluster2>) -> tensor<16x32xvector<32xf16>, #cluster6>
          %49 = "triton_xpu.vextf"(%48) : (tensor<16x32xvector<32xf16>, #cluster6>) -> tensor<16x64xvector<16xf32>, #cluster2>
          %50 = "triton_xpu.vselect"(%36, %49, %15) : (tensor<16x1024xi1, #cluster>, tensor<16x64xvector<16xf32>, #cluster2>, tensor<16x64xvector<16xf32>, #cluster2>) -> tensor<16x64xvector<16xf32>, #cluster2>
          %51 = "triton_xpu.extract_slice"(%50) : (tensor<16x64xvector<16xf32>, #cluster2>) -> tensor<16x16xvector<16xf32>, #cluster7>
          %c4 = arith.constant 4 : index
          %52 = scf.for %arg10 = %c1 to %c4 step %c1 iter_args(%arg11 = %51) -> (tensor<16x16xvector<16xf32>, #cluster7>) {
            %65 = arith.index_cast %arg10 : index to i32
            %66 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<16x1024xf32, #cluster>}> : () -> tensor<16x16xvector<16xf32>, #cluster7>
            %67 = "triton_xpu.out_range"(%18) <{groupsize = 4 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<16xi32, #cluster3>
            %68 = triton_xpu.convert_layout %67 : tensor<16xi32, #cluster3> -> tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
            %69 = tt.expand_dims %68 {axis = 1 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<16x1xi32, #cluster1>
            %70 = arith.addi %17, %69 : tensor<16x1xi32, #cluster1>
            %71 = arith.cmpi slt, %70, %cst_0 : tensor<16x1xi32, #cluster1>
            %72 = triton_xpu.broadcast %71 : tensor<16x1xi1, #cluster1> -> tensor<16x256xi1, #cluster8>
            %73 = "triton_xpu.load"(%38, %72, %cst, %65) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1024x!tt.ptr<f16, 0>, #cluster>, tensor<16x256xi1, #cluster8>, tensor<16x1024xf16, #cluster>, i32) -> tensor<16x8xvector<32xf16>, #cluster5>
            %74 = "triton_xpu.load"(%41, %65) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<f16, 0>, #cluster>, i32) -> tensor<1x256xf16, #cluster8>
            %75 = "triton_xpu.vextf"(%73) : (tensor<16x8xvector<32xf16>, #cluster5>) -> tensor<16x16xvector<16xf32>, #cluster7>
            %76 = arith.extf %74 : tensor<1x256xf16, #cluster8> to tensor<1x256xf32, #cluster8>
            %77 = triton_xpu.broadcast %76 : tensor<1x256xf32, #cluster8> -> tensor<16x16xvector<16xf32>, #cluster7>
            %78 = triton_xpu.vvmulf %75, %77 : tensor<16x16xvector<16xf32>, #cluster7>
            %79 = "triton_xpu.vtruncf"(%78) : (tensor<16x16xvector<16xf32>, #cluster7>) -> tensor<16x8xvector<32xf16>, #cluster5>
            %80 = "triton_xpu.vextf"(%79) : (tensor<16x8xvector<32xf16>, #cluster5>) -> tensor<16x16xvector<16xf32>, #cluster7>
            %81 = "triton_xpu.vselect"(%72, %80, %66) : (tensor<16x256xi1, #cluster8>, tensor<16x16xvector<16xf32>, #cluster7>, tensor<16x16xvector<16xf32>, #cluster7>) -> tensor<16x16xvector<16xf32>, #cluster7>
            %82 = triton_xpu.vvaddf %arg11, %81 : tensor<16x16xvector<16xf32>, #cluster7>
            scf.yield %82 : tensor<16x16xvector<16xf32>, #cluster7>
          }
          %53 = "triton_xpu.reduce"(%52, %18) <{axis = 1 : i32, loopNum = 2 : i32}> ({
          ^bb0(%arg10: vector<16xf32>, %arg11: vector<16xf32>):
            %65 = arith.addf %arg10, %arg11 : vector<16xf32>
            triton_xpu.reduce.return %65 : vector<16xf32>
          }) : (tensor<16x16xvector<16xf32>, #cluster7>, i32) -> tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster7}>>
          %54 = triton_xpu.convert_layout %53 : tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster7}>> -> tensor<16xf32, #cluster3>
          %55 = triton_xpu.convert_layout %54 : tensor<16xf32, #cluster3> -> tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster1}>>
          %56 = tt.expand_dims %55 {axis = 1 : i32} : tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<16x1xf32, #cluster1>
          %57 = tt.splat %arg2 : !tt.ptr<f16> -> tensor<16x1x!tt.ptr<f16>, #cluster1>
          %58 = tt.addptr %57, %22 : tensor<16x1x!tt.ptr<f16>, #cluster1>, tensor<16x1xi32, #cluster1>
          %59 = arith.truncf %56 : tensor<16x1xf32, #cluster1> to tensor<16x1xf16, #cluster1>
          %60 = "triton_xpu.get_core_id"() : () -> i32
          %c4_i32 = arith.constant 4 : i32
          %61 = arith.remsi %60, %c4_i32 : i32
          %c0_i32 = arith.constant 0 : i32
          %62 = arith.cmpi eq, %61, %c0_i32 : i32
          %c64_i32 = arith.constant 64 : i32
          %63 = arith.cmpi slt, %60, %c64_i32 : i32
          %64 = arith.andi %62, %63 : i1
          scf.if %64 {
            "triton_xpu.store"(%12, %59, %24) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1x!tt.ptr<f16, 0>, #cluster1>, tensor<16x1xf16, #cluster1>, tensor<16x1xi1, #cluster1>) -> ()
            "triton_xpu.lm2gm"(%58, %23, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1x!tt.ptr<f16>, #cluster1>, tensor<16x1xi32, #cluster1>, tensor<16x1x!tt.ptr<f16, 0>, #cluster1>) -> ()
          }
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
