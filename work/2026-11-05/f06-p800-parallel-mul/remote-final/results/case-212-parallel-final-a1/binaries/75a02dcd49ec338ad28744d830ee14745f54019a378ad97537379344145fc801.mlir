#cluster = #triton_xpu.cluster<{sizePerCore = [1, 128], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1, 8], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [1], groupsPerCluster = [64], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [128], coresPerGroup = [1], groupsPerCluster = [1], order = [0]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster6 = #triton_xpu.cluster<{sizePerCore = [1, 64], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster7 = #triton_xpu.cluster<{sizePerCore = [64], coresPerGroup = [1], groupsPerCluster = [1], order = [0]}>
#cluster8 = #triton_xpu.cluster<{sizePerCore = [1, 4], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 64 : i32, "ttg.threads-per-warp" = 1 : i32} {
  tt.func public @triton_red_fused_mul_sum_0(%arg0: !tt.ptr<f16> {tt.divisibility = 16 : i32}, %arg1: !tt.ptr<f16> {tt.divisibility = 16 : i32}, %arg2: !tt.ptr<f16> {tt.divisibility = 16 : i32}, %arg3: i32 {tt.divisibility = 16 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32, %arg6: i32, %arg7: i32) attributes {noinline = false} {
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
    %cst = arith.constant dense<0.000000e+00> : tensor<1x128xf16, #cluster>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<64x128xf16, #cluster>
    %c128_i32 = arith.constant 128 : i32
    %c2048_i32 = arith.constant 2048 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst_1 = arith.constant dense<2048> : tensor<1x128xi32, #cluster>
    %c64_i32 = arith.constant 64 : i32
    %cst_2 = arith.constant dense<2048> : tensor<64x1xi32, #cluster1>
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 64 : si64}> : () -> tensor<64x1x!tt.ptr<f16, 0>, #cluster1>
      %13 = "triton_xpu.alloca"() <{size = 128 : si64}> : () -> tensor<1x128x!tt.ptr<f16, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 8192 : si64}> : () -> tensor<64x128x!tt.ptr<f16, 0>, #cluster>
      %15 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<64x128xf32, #cluster>}> : () -> tensor<64x8xvector<16xf32>, #cluster2>
      %16 = arith.muli %11, %c64_i32 : i32
      %17 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 1 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<64xi32, #cluster3>
      %18 = triton_xpu.convert_layout %17 : tensor<64xi32, #cluster3> -> tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
      %19 = tt.expand_dims %18 {axis = 1 : i32} : tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<64x1xi32, #cluster1>
      %20 = tt.splat %16 : i32 -> tensor<64x1xi32, #cluster1>
      %21 = arith.addi %20, %19 : tensor<64x1xi32, #cluster1>
      %22 = arith.subi %cst_2, %21 : tensor<64x1xi32, #cluster1>
      %23 = arith.cmpi slt, %21, %cst_2 : tensor<64x1xi32, #cluster1>
      %24 = "triton_xpu.extract"(%23) <{index = 0 : i32}> : (tensor<64x1xi1, #cluster1>) -> i1
      scf.if %24 {
        %25 = triton_xpu.make_range   {end = 128 : i32, realSize = 128 : i32, start = 0 : i32} :   -> tensor<128xi32, #cluster4>
        %26 = triton_xpu.convert_layout %25 : tensor<128xi32, #cluster4> -> tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
        %27 = tt.expand_dims %26 {axis = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x128xi32, #cluster>
        %28 = arith.muli %21, %cst_2 : tensor<64x1xi32, #cluster1>
        %29 = triton_xpu.broadcast %28 : tensor<64x1xi32, #cluster1> -> tensor<64x128xi32, #cluster>
        %30 = tt.splat %arg0 : !tt.ptr<f16> -> tensor<64x128x!tt.ptr<f16>, #cluster>
        %31 = tt.splat %arg1 : !tt.ptr<f16> -> tensor<1x128x!tt.ptr<f16>, #cluster>
        %32 = "triton_xpu.alloca"() <{size = 8192 : si64}> : () -> tensor<64x128x!tt.ptr<f32, 0>, #cluster2>
        "triton_xpu.store"(%32, %15) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x128x!tt.ptr<f32, 0>, #cluster2>, tensor<64x8xvector<16xf32>, #cluster2>) -> ()
        %33 = scf.for %arg9 = %c0_i32 to %c2048_i32 step %c128_i32 iter_args(%arg10 = %15) -> (tensor<64x8xvector<16xf32>, #cluster2>)  : i32 {
          %47 = tt.splat %arg9 : i32 -> tensor<1x128xi32, #cluster>
          %48 = arith.addi %47, %27 : tensor<1x128xi32, #cluster>
          %49 = arith.subi %cst_1, %48 : tensor<1x128xi32, #cluster>
          %50 = arith.cmpi slt, %48, %cst_1 : tensor<1x128xi32, #cluster>
          %51 = "triton_xpu.extract"(%50) <{index = 0 : i32}> : (tensor<1x128xi1, #cluster>) -> i1
          %52 = scf.if %51 -> (tensor<64x8xvector<16xf32>, #cluster2>) {
            %53 = triton_xpu.broadcast %48 : tensor<1x128xi32, #cluster> -> tensor<64x128xi32, #cluster>
            %54 = arith.addi %53, %29 : tensor<64x128xi32, #cluster>
            %55 = tt.addptr %30, %54 : tensor<64x128x!tt.ptr<f16>, #cluster>, tensor<64x128xi32, #cluster>
            %56 = "triton_xpu.extract_slice"(%cst_0) : (tensor<64x128xf16, #cluster>) -> tensor<64x2xf16, #cluster5>
            %c0 = arith.constant 0 : index
            %c64 = arith.constant 64 : index
            %c1 = arith.constant 1 : index
            scf.for %arg11 = %c0 to %c64 step %c1 {
              %64 = arith.index_cast %arg11 : index to i32
              "triton_xpu.store"(%14, %56, %64) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x128x!tt.ptr<f16, 0>, #cluster>, tensor<64x2xf16, #cluster5>, i32) -> ()
            }
            %57 = "triton_xpu.gm2lm"(%55, %49, %cst_0, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<64x128x!tt.ptr<f16>, #cluster>, tensor<1x128xi32, #cluster>, tensor<64x128xf16, #cluster>, tensor<64x128x!tt.ptr<f16, 0>, #cluster>) -> tensor<64x128x!tt.ptr<f16, 0>, #cluster>
            %58 = tt.addptr %31, %48 : tensor<1x128x!tt.ptr<f16>, #cluster>, tensor<1x128xi32, #cluster>
            %59 = "triton_xpu.extract_slice"(%cst) : (tensor<1x128xf16, #cluster>) -> tensor<1x2xf16, #cluster5>
            scf.for %arg11 = %c0 to %c64 step %c1 {
              %64 = arith.index_cast %arg11 : index to i32
              "triton_xpu.store"(%13, %59, %64) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<f16, 0>, #cluster>, tensor<1x2xf16, #cluster5>, i32) -> ()
            }
            %60 = "triton_xpu.gm2lm"(%58, %49, %cst, %13) <{SVOpt = false, atomicSim = false, cache = true, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<f16>, #cluster>, tensor<1x128xi32, #cluster>, tensor<1x128xf16, #cluster>, tensor<1x128x!tt.ptr<f16, 0>, #cluster>) -> tensor<1x128x!tt.ptr<f16, 0>, #cluster>
            %c2 = arith.constant 2 : index
            %cst_3 = arith.constant dense<2048> : tensor<1x64xi32, #cluster6>
            %61 = tt.splat %arg0 : !tt.ptr<f16> -> tensor<64x64x!tt.ptr<f16>, #cluster6>
            %62 = tt.splat %arg1 : !tt.ptr<f16> -> tensor<1x64x!tt.ptr<f16>, #cluster6>
            %63 = tt.splat %arg9 : i32 -> tensor<1x64xi32, #cluster6>
            scf.for %arg11 = %c0 to %c2 step %c1 {
              %64 = arith.index_cast %arg11 : index to i32
              %65 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 1 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<64xi32, #cluster3>
              %66 = triton_xpu.convert_layout %65 : tensor<64xi32, #cluster3> -> tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
              %67 = tt.expand_dims %66 {axis = 1 : i32} : tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<64x1xi32, #cluster1>
              %68 = arith.addi %20, %67 : tensor<64x1xi32, #cluster1>
              %69 = arith.cmpi slt, %68, %cst_2 : tensor<64x1xi32, #cluster1>
              %70 = triton_xpu.make_range  %64 {end = 128 : i32, realSize = 128 : i32, start = 0 : i32} :  i32 -> tensor<64xi32, #cluster7>
              %71 = triton_xpu.convert_layout %70 : tensor<64xi32, #cluster7> -> tensor<64xi32, #ttg.slice<{dim = 0, parent = #cluster6}>>
              %72 = tt.expand_dims %71 {axis = 0 : i32} : tensor<64xi32, #ttg.slice<{dim = 0, parent = #cluster6}>> -> tensor<1x64xi32, #cluster6>
              %73 = arith.muli %68, %cst_2 : tensor<64x1xi32, #cluster1>
              %74 = triton_xpu.broadcast %73 : tensor<64x1xi32, #cluster1> -> tensor<64x64xi32, #cluster6>
              %75 = triton_xpu.broadcast %69 : tensor<64x1xi1, #cluster1> -> tensor<64x64xi1, #cluster6>
              %76 = arith.addi %63, %72 : tensor<1x64xi32, #cluster6>
              %77 = arith.cmpi slt, %76, %cst_3 : tensor<1x64xi32, #cluster6>
              %78 = "triton_xpu.extract"(%77) <{index = 0 : i32}> : (tensor<1x64xi1, #cluster6>) -> i1
              %79 = "triton_xpu.load"(%32, %64) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x128x!tt.ptr<f32, 0>, #cluster2>, i32) -> tensor<64x4xvector<16xf32>, #cluster8>
              %80 = triton_xpu.broadcast %76 : tensor<1x64xi32, #cluster6> -> tensor<64x64xi32, #cluster6>
              %81 = arith.addi %80, %74 : tensor<64x64xi32, #cluster6>
              %82 = triton_xpu.broadcast %77 : tensor<1x64xi1, #cluster6> -> tensor<64x64xi1, #cluster6>
              %83 = arith.andi %82, %75 : tensor<64x64xi1, #cluster6>
              llvm_xpu.mfence %c1_i32
              %84 = "triton_xpu.load"(%57, %83, %cst_0, %64) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x128x!tt.ptr<f16, 0>, #cluster>, tensor<64x64xi1, #cluster6>, tensor<64x128xf16, #cluster>, i32) -> tensor<64x2xvector<32xf16>, #cluster5>
              %85 = "triton_xpu.load"(%60, %77, %cst, %64) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<f16, 0>, #cluster>, tensor<1x64xi1, #cluster6>, tensor<1x128xf16, #cluster>, i32) -> tensor<1x64xf16, #cluster6>
              %86 = "triton_xpu.vextf"(%84) : (tensor<64x2xvector<32xf16>, #cluster5>) -> tensor<64x4xvector<16xf32>, #cluster8>
              %87 = arith.extf %85 : tensor<1x64xf16, #cluster6> to tensor<1x64xf32, #cluster6>
              %88 = triton_xpu.broadcast %87 : tensor<1x64xf32, #cluster6> -> tensor<64x4xvector<16xf32>, #cluster8>
              %89 = triton_xpu.vvmulf %86, %88 : tensor<64x4xvector<16xf32>, #cluster8>
              %90 = "triton_xpu.vtruncf"(%89) : (tensor<64x4xvector<16xf32>, #cluster8>) -> tensor<64x2xvector<32xf16>, #cluster5>
              %91 = "triton_xpu.vextf"(%90) : (tensor<64x2xvector<32xf16>, #cluster5>) -> tensor<64x4xvector<16xf32>, #cluster8>
              %92 = triton_xpu.vvaddf %79, %91 : tensor<64x4xvector<16xf32>, #cluster8>
              %93 = "triton_xpu.vselect"(%83, %92, %79) : (tensor<64x64xi1, #cluster6>, tensor<64x4xvector<16xf32>, #cluster8>, tensor<64x4xvector<16xf32>, #cluster8>) -> tensor<64x4xvector<16xf32>, #cluster8>
              "triton_xpu.store"(%32, %93, %64) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x128x!tt.ptr<f32, 0>, #cluster2>, tensor<64x4xvector<16xf32>, #cluster8>, i32) -> ()
            }
            scf.yield %15 : tensor<64x8xvector<16xf32>, #cluster2>
          } else {
            scf.yield %arg10 : tensor<64x8xvector<16xf32>, #cluster2>
          }
          scf.yield %52 : tensor<64x8xvector<16xf32>, #cluster2>
        }
        %34 = "triton_xpu.load"(%32) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x128x!tt.ptr<f32, 0>, #cluster2>) -> tensor<64x8xvector<16xf32>, #cluster2>
        %35 = "triton_xpu.reduce"(%34, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
        ^bb0(%arg9: vector<16xf32>, %arg10: vector<16xf32>):
          %47 = arith.addf %arg9, %arg10 : vector<16xf32>
          triton_xpu.reduce.return %47 : vector<16xf32>
        }) : (tensor<64x8xvector<16xf32>, #cluster2>, i32) -> tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster2}>>
        %36 = triton_xpu.convert_layout %35 : tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster2}>> -> tensor<64xf32, #cluster3>
        %37 = triton_xpu.convert_layout %36 : tensor<64xf32, #cluster3> -> tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster1}>>
        %38 = tt.expand_dims %37 {axis = 1 : i32} : tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<64x1xf32, #cluster1>
        %39 = tt.splat %arg2 : !tt.ptr<f16> -> tensor<64x1x!tt.ptr<f16>, #cluster1>
        %40 = tt.addptr %39, %21 : tensor<64x1x!tt.ptr<f16>, #cluster1>, tensor<64x1xi32, #cluster1>
        %41 = arith.truncf %38 : tensor<64x1xf32, #cluster1> to tensor<64x1xf16, #cluster1>
        %42 = "triton_xpu.get_core_id"() : () -> i32
        %43 = arith.remsi %42, %c1_i32 : i32
        %44 = arith.cmpi eq, %43, %c0_i32 : i32
        %45 = arith.cmpi slt, %42, %c64_i32 : i32
        %46 = arith.andi %44, %45 : i1
        scf.if %46 {
          "triton_xpu.store"(%12, %41, %23) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x1x!tt.ptr<f16, 0>, #cluster1>, tensor<64x1xf16, #cluster1>, tensor<64x1xi1, #cluster1>) -> ()
          "triton_xpu.lm2gm"(%40, %22, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x1x!tt.ptr<f16>, #cluster1>, tensor<64x1xi32, #cluster1>, tensor<64x1x!tt.ptr<f16, 0>, #cluster1>) -> ()
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
