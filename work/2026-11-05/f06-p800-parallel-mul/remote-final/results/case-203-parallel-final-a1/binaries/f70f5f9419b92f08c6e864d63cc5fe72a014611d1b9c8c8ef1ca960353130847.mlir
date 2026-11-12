#cluster = #triton_xpu.cluster<{sizePerCore = [1, 64], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1, 4], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [1], groupsPerCluster = [64], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [64], coresPerGroup = [1], groupsPerCluster = [1], order = [0]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 64 : i32, "ttg.threads-per-warp" = 1 : i32} {
  tt.func public @triton_unk_fused_0(%arg0: !tt.ptr<f16> {tt.divisibility = 16 : i32}, %arg1: !tt.ptr<f16> {tt.divisibility = 16 : i32}, %arg2: !tt.ptr<f16> {tt.divisibility = 16 : i32}, %arg3: i32 {tt.divisibility = 16 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32, %arg6: i32, %arg7: i32) attributes {noinline = false} {
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
    %cst = arith.constant dense<0.000000e+00> : tensor<1x64xf16, #cluster>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<64x64xf16, #cluster>
    %c64_i32 = arith.constant 64 : i32
    %c2048_i32 = arith.constant 2048 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst_1 = arith.constant dense<2048> : tensor<1x64xi32, #cluster>
    %c128_i32 = arith.constant 128 : i32
    %cst_2 = arith.constant dense<2048> : tensor<64x1xi32, #cluster1>
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 64 : si64}> : () -> tensor<64x1x!tt.ptr<f16, 0>, #cluster1>
      %13 = "triton_xpu.alloca"() <{size = 64 : si64}> : () -> tensor<1x64x!tt.ptr<f16, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 4096 : si64}> : () -> tensor<64x64x!tt.ptr<f16, 0>, #cluster>
      %15 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<64x64xf32, #cluster>}> : () -> tensor<64x4xvector<16xf32>, #cluster2>
      %16 = arith.muli %11, %c128_i32 : i32
      %17 = tt.splat %16 : i32 -> tensor<64x1xi32, #cluster1>
      scf.for %arg9 = %c0 to %c2 step %c1 {
        %18 = arith.index_cast %arg9 : index to i32
        %19 = "triton_xpu.out_range"(%18) <{groupsize = 1 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<64xi32, #cluster3>
        %20 = triton_xpu.convert_layout %19 : tensor<64xi32, #cluster3> -> tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
        %21 = tt.expand_dims %20 {axis = 1 : i32} : tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<64x1xi32, #cluster1>
        %22 = arith.addi %17, %21 : tensor<64x1xi32, #cluster1>
        %23 = arith.subi %cst_2, %22 : tensor<64x1xi32, #cluster1>
        %24 = arith.cmpi slt, %22, %cst_2 : tensor<64x1xi32, #cluster1>
        %25 = "triton_xpu.extract"(%24) <{index = 0 : i32}> : (tensor<64x1xi1, #cluster1>) -> i1
        scf.if %25 {
          %26 = triton_xpu.make_range   {end = 64 : i32, realSize = 64 : i32, start = 0 : i32} :   -> tensor<64xi32, #cluster4>
          %27 = triton_xpu.convert_layout %26 : tensor<64xi32, #cluster4> -> tensor<64xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
          %28 = tt.expand_dims %27 {axis = 0 : i32} : tensor<64xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x64xi32, #cluster>
          %29 = arith.muli %22, %cst_2 : tensor<64x1xi32, #cluster1>
          %30 = triton_xpu.broadcast %29 : tensor<64x1xi32, #cluster1> -> tensor<64x64xi32, #cluster>
          %31 = tt.splat %arg0 : !tt.ptr<f16> -> tensor<64x64x!tt.ptr<f16>, #cluster>
          %32 = triton_xpu.broadcast %24 : tensor<64x1xi1, #cluster1> -> tensor<64x64xi1, #cluster>
          %33 = tt.splat %arg1 : !tt.ptr<f16> -> tensor<1x64x!tt.ptr<f16>, #cluster>
          %34 = "triton_xpu.alloca"() <{size = 4096 : si64}> : () -> tensor<64x64x!tt.ptr<f32, 0>, #cluster2>
          "triton_xpu.store"(%34, %15) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x64x!tt.ptr<f32, 0>, #cluster2>, tensor<64x4xvector<16xf32>, #cluster2>) -> ()
          %35 = scf.for %arg10 = %c0_i32 to %c2048_i32 step %c64_i32 iter_args(%arg11 = %15) -> (tensor<64x4xvector<16xf32>, #cluster2>)  : i32 {
            %49 = tt.splat %arg10 : i32 -> tensor<1x64xi32, #cluster>
            %50 = arith.addi %49, %28 : tensor<1x64xi32, #cluster>
            %51 = arith.subi %cst_1, %50 : tensor<1x64xi32, #cluster>
            %52 = arith.cmpi slt, %50, %cst_1 : tensor<1x64xi32, #cluster>
            %53 = "triton_xpu.extract"(%52) <{index = 0 : i32}> : (tensor<1x64xi1, #cluster>) -> i1
            %54 = scf.if %53 -> (tensor<64x4xvector<16xf32>, #cluster2>) {
              %55 = "triton_xpu.load"(%34) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x64x!tt.ptr<f32, 0>, #cluster2>) -> tensor<64x4xvector<16xf32>, #cluster2>
              %56 = triton_xpu.broadcast %50 : tensor<1x64xi32, #cluster> -> tensor<64x64xi32, #cluster>
              %57 = arith.addi %56, %30 : tensor<64x64xi32, #cluster>
              %58 = tt.addptr %31, %57 : tensor<64x64x!tt.ptr<f16>, #cluster>, tensor<64x64xi32, #cluster>
              %59 = triton_xpu.broadcast %52 : tensor<1x64xi1, #cluster> -> tensor<64x64xi1, #cluster>
              %60 = arith.andi %59, %32 : tensor<64x64xi1, #cluster>
              %61 = "triton_xpu.extract_slice"(%cst_0) : (tensor<64x64xf16, #cluster>) -> tensor<64x2xf16, #cluster5>
              %c32 = arith.constant 32 : index
              scf.for %arg12 = %c0 to %c32 step %c1 {
                %76 = arith.index_cast %arg12 : index to i32
                "triton_xpu.store"(%14, %61, %76) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x64x!tt.ptr<f16, 0>, #cluster>, tensor<64x2xf16, #cluster5>, i32) -> ()
              }
              %62 = "triton_xpu.gm2lm"(%58, %51, %cst_0, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<64x64x!tt.ptr<f16>, #cluster>, tensor<1x64xi32, #cluster>, tensor<64x64xf16, #cluster>, tensor<64x64x!tt.ptr<f16, 0>, #cluster>) -> tensor<64x64x!tt.ptr<f16, 0>, #cluster>
              %63 = tt.addptr %33, %50 : tensor<1x64x!tt.ptr<f16>, #cluster>, tensor<1x64xi32, #cluster>
              %64 = "triton_xpu.extract_slice"(%cst) : (tensor<1x64xf16, #cluster>) -> tensor<1x2xf16, #cluster5>
              scf.for %arg12 = %c0 to %c32 step %c1 {
                %76 = arith.index_cast %arg12 : index to i32
                "triton_xpu.store"(%13, %64, %76) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x64x!tt.ptr<f16, 0>, #cluster>, tensor<1x2xf16, #cluster5>, i32) -> ()
              }
              %65 = "triton_xpu.gm2lm"(%63, %51, %cst, %13) <{SVOpt = false, atomicSim = false, cache = true, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x64x!tt.ptr<f16>, #cluster>, tensor<1x64xi32, #cluster>, tensor<1x64xf16, #cluster>, tensor<1x64x!tt.ptr<f16, 0>, #cluster>) -> tensor<1x64x!tt.ptr<f16, 0>, #cluster>
              llvm_xpu.mfence %c1_i32
              %66 = "triton_xpu.load"(%62, %60, %cst_0) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x64x!tt.ptr<f16, 0>, #cluster>, tensor<64x64xi1, #cluster>, tensor<64x64xf16, #cluster>) -> tensor<64x2xvector<32xf16>, #cluster5>
              %67 = "triton_xpu.load"(%65, %52, %cst) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x64x!tt.ptr<f16, 0>, #cluster>, tensor<1x64xi1, #cluster>, tensor<1x64xf16, #cluster>) -> tensor<1x64xf16, #cluster>
              %68 = "triton_xpu.vextf"(%66) : (tensor<64x2xvector<32xf16>, #cluster5>) -> tensor<64x4xvector<16xf32>, #cluster2>
              %69 = arith.extf %67 : tensor<1x64xf16, #cluster> to tensor<1x64xf32, #cluster>
              %70 = triton_xpu.broadcast %69 : tensor<1x64xf32, #cluster> -> tensor<64x4xvector<16xf32>, #cluster2>
              %71 = triton_xpu.vvmulf %68, %70 : tensor<64x4xvector<16xf32>, #cluster2>
              %72 = "triton_xpu.vtruncf"(%71) : (tensor<64x4xvector<16xf32>, #cluster2>) -> tensor<64x2xvector<32xf16>, #cluster5>
              %73 = "triton_xpu.vextf"(%72) : (tensor<64x2xvector<32xf16>, #cluster5>) -> tensor<64x4xvector<16xf32>, #cluster2>
              %74 = triton_xpu.vvaddf %55, %73 : tensor<64x4xvector<16xf32>, #cluster2>
              %75 = "triton_xpu.vselect"(%60, %74, %55) : (tensor<64x64xi1, #cluster>, tensor<64x4xvector<16xf32>, #cluster2>, tensor<64x4xvector<16xf32>, #cluster2>) -> tensor<64x4xvector<16xf32>, #cluster2>
              "triton_xpu.store"(%34, %75) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x64x!tt.ptr<f32, 0>, #cluster2>, tensor<64x4xvector<16xf32>, #cluster2>) -> ()
              scf.yield %15 : tensor<64x4xvector<16xf32>, #cluster2>
            } else {
              scf.yield %arg11 : tensor<64x4xvector<16xf32>, #cluster2>
            }
            scf.yield %54 : tensor<64x4xvector<16xf32>, #cluster2>
          }
          %36 = "triton_xpu.load"(%34) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x64x!tt.ptr<f32, 0>, #cluster2>) -> tensor<64x4xvector<16xf32>, #cluster2>
          %37 = "triton_xpu.reduce"(%36, %18) <{axis = 1 : i32, loopNum = 2 : i32}> ({
          ^bb0(%arg10: vector<16xf32>, %arg11: vector<16xf32>):
            %49 = arith.addf %arg10, %arg11 : vector<16xf32>
            triton_xpu.reduce.return %49 : vector<16xf32>
          }) : (tensor<64x4xvector<16xf32>, #cluster2>, i32) -> tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster2}>>
          %38 = triton_xpu.convert_layout %37 : tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster2}>> -> tensor<64xf32, #cluster3>
          %39 = triton_xpu.convert_layout %38 : tensor<64xf32, #cluster3> -> tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster1}>>
          %40 = tt.expand_dims %39 {axis = 1 : i32} : tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<64x1xf32, #cluster1>
          %41 = tt.splat %arg2 : !tt.ptr<f16> -> tensor<64x1x!tt.ptr<f16>, #cluster1>
          %42 = tt.addptr %41, %22 : tensor<64x1x!tt.ptr<f16>, #cluster1>, tensor<64x1xi32, #cluster1>
          %43 = arith.truncf %40 : tensor<64x1xf32, #cluster1> to tensor<64x1xf16, #cluster1>
          %44 = "triton_xpu.get_core_id"() : () -> i32
          %45 = arith.remsi %44, %c1_i32 : i32
          %46 = arith.cmpi eq, %45, %c0_i32 : i32
          %47 = arith.cmpi slt, %44, %c64_i32 : i32
          %48 = arith.andi %46, %47 : i1
          scf.if %48 {
            "triton_xpu.store"(%12, %43, %24) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x1x!tt.ptr<f16, 0>, #cluster1>, tensor<64x1xf16, #cluster1>, tensor<64x1xi1, #cluster1>) -> ()
            "triton_xpu.lm2gm"(%42, %23, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x1x!tt.ptr<f16>, #cluster1>, tensor<64x1xi32, #cluster1>, tensor<64x1x!tt.ptr<f16, 0>, #cluster1>) -> ()
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
