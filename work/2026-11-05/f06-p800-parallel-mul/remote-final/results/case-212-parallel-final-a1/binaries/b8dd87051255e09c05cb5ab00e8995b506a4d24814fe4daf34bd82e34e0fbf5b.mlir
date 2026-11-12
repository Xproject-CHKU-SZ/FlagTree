#cluster = #triton_xpu.cluster<{sizePerCore = [1, 256], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1, 16], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [1], groupsPerCluster = [64], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [256], coresPerGroup = [1], groupsPerCluster = [1], order = [0]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [1, 4], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster6 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster7 = #triton_xpu.cluster<{sizePerCore = [1, 64], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster8 = #triton_xpu.cluster<{sizePerCore = [64], coresPerGroup = [1], groupsPerCluster = [1], order = [0]}>
#cluster9 = #triton_xpu.cluster<{sizePerCore = [1, 8], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
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
    %cst = arith.constant dense<0.000000e+00> : tensor<1x256xf16, #cluster>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<64x256xf16, #cluster>
    %c256_i32 = arith.constant 256 : i32
    %c2048_i32 = arith.constant 2048 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst_1 = arith.constant dense<2048> : tensor<1x256xi32, #cluster>
    %c64_i32 = arith.constant 64 : i32
    %cst_2 = arith.constant dense<2048> : tensor<64x1xi32, #cluster1>
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 64 : si64}> : () -> tensor<64x1x!tt.ptr<f16, 0>, #cluster1>
      %13 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<1x256x!tt.ptr<f16, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 16384 : si64}> : () -> tensor<64x256x!tt.ptr<f16, 0>, #cluster>
      %15 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<64x256xf32, #cluster>}> : () -> tensor<64x16xvector<16xf32>, #cluster2>
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
        %25 = triton_xpu.make_range   {end = 256 : i32, realSize = 256 : i32, start = 0 : i32} :   -> tensor<256xi32, #cluster4>
        %26 = triton_xpu.convert_layout %25 : tensor<256xi32, #cluster4> -> tensor<256xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
        %27 = tt.expand_dims %26 {axis = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x256xi32, #cluster>
        %28 = arith.muli %21, %cst_2 : tensor<64x1xi32, #cluster1>
        %29 = triton_xpu.broadcast %28 : tensor<64x1xi32, #cluster1> -> tensor<64x256xi32, #cluster>
        %30 = tt.splat %arg0 : !tt.ptr<f16> -> tensor<64x256x!tt.ptr<f16>, #cluster>
        %31 = tt.splat %arg1 : !tt.ptr<f16> -> tensor<1x256x!tt.ptr<f16>, #cluster>
        %32 = "triton_xpu.alloca"() <{size = 16384 : si64}> : () -> tensor<64x256x!tt.ptr<f32, 0>, #cluster2>
        %c0 = arith.constant 0 : index
        %c4 = arith.constant 4 : index
        %c1 = arith.constant 1 : index
        scf.for %arg9 = %c0 to %c4 step %c1 {
          %49 = arith.index_cast %arg9 : index to i32
          %50 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<64x256xf32, #cluster>}> : () -> tensor<64x4xvector<16xf32>, #cluster5>
          "triton_xpu.store"(%32, %50, %49) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f32, 0>, #cluster2>, tensor<64x4xvector<16xf32>, #cluster5>, i32) -> ()
        }
        %33 = scf.for %arg9 = %c0_i32 to %c2048_i32 step %c256_i32 iter_args(%arg10 = %15) -> (tensor<64x16xvector<16xf32>, #cluster2>)  : i32 {
          %49 = tt.splat %arg9 : i32 -> tensor<1x256xi32, #cluster>
          %50 = arith.addi %49, %27 : tensor<1x256xi32, #cluster>
          %51 = arith.subi %cst_1, %50 : tensor<1x256xi32, #cluster>
          %52 = arith.cmpi slt, %50, %cst_1 : tensor<1x256xi32, #cluster>
          %53 = "triton_xpu.extract"(%52) <{index = 0 : i32}> : (tensor<1x256xi1, #cluster>) -> i1
          %54 = scf.if %53 -> (tensor<64x16xvector<16xf32>, #cluster2>) {
            %55 = triton_xpu.broadcast %50 : tensor<1x256xi32, #cluster> -> tensor<64x256xi32, #cluster>
            %56 = arith.addi %55, %29 : tensor<64x256xi32, #cluster>
            %57 = tt.addptr %30, %56 : tensor<64x256x!tt.ptr<f16>, #cluster>, tensor<64x256xi32, #cluster>
            %58 = "triton_xpu.extract_slice"(%cst_0) : (tensor<64x256xf16, #cluster>) -> tensor<64x2xf16, #cluster6>
            %c128 = arith.constant 128 : index
            scf.for %arg11 = %c0 to %c128 step %c1 {
              %66 = arith.index_cast %arg11 : index to i32
              "triton_xpu.store"(%14, %58, %66) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f16, 0>, #cluster>, tensor<64x2xf16, #cluster6>, i32) -> ()
            }
            %59 = "triton_xpu.gm2lm"(%57, %51, %cst_0, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f16>, #cluster>, tensor<1x256xi32, #cluster>, tensor<64x256xf16, #cluster>, tensor<64x256x!tt.ptr<f16, 0>, #cluster>) -> tensor<64x256x!tt.ptr<f16, 0>, #cluster>
            %60 = tt.addptr %31, %50 : tensor<1x256x!tt.ptr<f16>, #cluster>, tensor<1x256xi32, #cluster>
            %61 = "triton_xpu.extract_slice"(%cst) : (tensor<1x256xf16, #cluster>) -> tensor<1x2xf16, #cluster6>
            scf.for %arg11 = %c0 to %c128 step %c1 {
              %66 = arith.index_cast %arg11 : index to i32
              "triton_xpu.store"(%13, %61, %66) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<f16, 0>, #cluster>, tensor<1x2xf16, #cluster6>, i32) -> ()
            }
            %62 = "triton_xpu.gm2lm"(%60, %51, %cst, %13) <{SVOpt = false, atomicSim = false, cache = true, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<f16>, #cluster>, tensor<1x256xi32, #cluster>, tensor<1x256xf16, #cluster>, tensor<1x256x!tt.ptr<f16, 0>, #cluster>) -> tensor<1x256x!tt.ptr<f16, 0>, #cluster>
            %cst_3 = arith.constant dense<2048> : tensor<1x64xi32, #cluster7>
            %63 = tt.splat %arg0 : !tt.ptr<f16> -> tensor<64x64x!tt.ptr<f16>, #cluster7>
            %64 = tt.splat %arg1 : !tt.ptr<f16> -> tensor<1x64x!tt.ptr<f16>, #cluster7>
            %65 = tt.splat %arg9 : i32 -> tensor<1x64xi32, #cluster7>
            scf.for %arg11 = %c0 to %c4 step %c1 {
              %66 = arith.index_cast %arg11 : index to i32
              %67 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 1 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<64xi32, #cluster3>
              %68 = triton_xpu.convert_layout %67 : tensor<64xi32, #cluster3> -> tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
              %69 = tt.expand_dims %68 {axis = 1 : i32} : tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<64x1xi32, #cluster1>
              %70 = arith.addi %20, %69 : tensor<64x1xi32, #cluster1>
              %71 = arith.cmpi slt, %70, %cst_2 : tensor<64x1xi32, #cluster1>
              %72 = triton_xpu.make_range  %66 {end = 256 : i32, realSize = 256 : i32, start = 0 : i32} :  i32 -> tensor<64xi32, #cluster8>
              %73 = triton_xpu.convert_layout %72 : tensor<64xi32, #cluster8> -> tensor<64xi32, #ttg.slice<{dim = 0, parent = #cluster7}>>
              %74 = tt.expand_dims %73 {axis = 0 : i32} : tensor<64xi32, #ttg.slice<{dim = 0, parent = #cluster7}>> -> tensor<1x64xi32, #cluster7>
              %75 = arith.muli %70, %cst_2 : tensor<64x1xi32, #cluster1>
              %76 = triton_xpu.broadcast %75 : tensor<64x1xi32, #cluster1> -> tensor<64x64xi32, #cluster7>
              %77 = triton_xpu.broadcast %71 : tensor<64x1xi1, #cluster1> -> tensor<64x64xi1, #cluster7>
              %78 = arith.addi %65, %74 : tensor<1x64xi32, #cluster7>
              %79 = arith.cmpi slt, %78, %cst_3 : tensor<1x64xi32, #cluster7>
              %80 = "triton_xpu.extract"(%79) <{index = 0 : i32}> : (tensor<1x64xi1, #cluster7>) -> i1
              %81 = "triton_xpu.load"(%32, %66) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f32, 0>, #cluster2>, i32) -> tensor<64x4xvector<16xf32>, #cluster5>
              %82 = triton_xpu.broadcast %78 : tensor<1x64xi32, #cluster7> -> tensor<64x64xi32, #cluster7>
              %83 = arith.addi %82, %76 : tensor<64x64xi32, #cluster7>
              %84 = triton_xpu.broadcast %79 : tensor<1x64xi1, #cluster7> -> tensor<64x64xi1, #cluster7>
              %85 = arith.andi %84, %77 : tensor<64x64xi1, #cluster7>
              llvm_xpu.mfence %c1_i32
              %86 = "triton_xpu.load"(%59, %85, %cst_0, %66) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f16, 0>, #cluster>, tensor<64x64xi1, #cluster7>, tensor<64x256xf16, #cluster>, i32) -> tensor<64x2xvector<32xf16>, #cluster6>
              %87 = "triton_xpu.load"(%62, %79, %cst, %66) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<f16, 0>, #cluster>, tensor<1x64xi1, #cluster7>, tensor<1x256xf16, #cluster>, i32) -> tensor<1x64xf16, #cluster7>
              %88 = "triton_xpu.vextf"(%86) : (tensor<64x2xvector<32xf16>, #cluster6>) -> tensor<64x4xvector<16xf32>, #cluster5>
              %89 = arith.extf %87 : tensor<1x64xf16, #cluster7> to tensor<1x64xf32, #cluster7>
              %90 = triton_xpu.broadcast %89 : tensor<1x64xf32, #cluster7> -> tensor<64x4xvector<16xf32>, #cluster5>
              %91 = triton_xpu.vvmulf %88, %90 : tensor<64x4xvector<16xf32>, #cluster5>
              %92 = "triton_xpu.vtruncf"(%91) : (tensor<64x4xvector<16xf32>, #cluster5>) -> tensor<64x2xvector<32xf16>, #cluster6>
              %93 = "triton_xpu.vextf"(%92) : (tensor<64x2xvector<32xf16>, #cluster6>) -> tensor<64x4xvector<16xf32>, #cluster5>
              %94 = triton_xpu.vvaddf %81, %93 : tensor<64x4xvector<16xf32>, #cluster5>
              %95 = "triton_xpu.vselect"(%85, %94, %81) : (tensor<64x64xi1, #cluster7>, tensor<64x4xvector<16xf32>, #cluster5>, tensor<64x4xvector<16xf32>, #cluster5>) -> tensor<64x4xvector<16xf32>, #cluster5>
              "triton_xpu.store"(%32, %95, %66) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f32, 0>, #cluster2>, tensor<64x4xvector<16xf32>, #cluster5>, i32) -> ()
            }
            scf.yield %15 : tensor<64x16xvector<16xf32>, #cluster2>
          } else {
            scf.yield %arg10 : tensor<64x16xvector<16xf32>, #cluster2>
          }
          scf.yield %54 : tensor<64x16xvector<16xf32>, #cluster2>
        }
        %34 = "triton_xpu.load"(%32) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f32, 0>, #cluster2>) -> tensor<64x16xvector<16xf32>, #cluster2>
        %35 = "triton_xpu.extract_slice"(%34) : (tensor<64x16xvector<16xf32>, #cluster2>) -> tensor<64x8xvector<16xf32>, #cluster9>
        %c2 = arith.constant 2 : index
        %36 = scf.for %arg9 = %c1 to %c2 step %c1 iter_args(%arg10 = %35) -> (tensor<64x8xvector<16xf32>, #cluster9>) {
          %49 = arith.index_cast %arg9 : index to i32
          %50 = "triton_xpu.load"(%32, %49) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f32, 0>, #cluster2>, i32) -> tensor<64x8xvector<16xf32>, #cluster9>
          %51 = triton_xpu.vvaddf %arg10, %50 : tensor<64x8xvector<16xf32>, #cluster9>
          scf.yield %51 : tensor<64x8xvector<16xf32>, #cluster9>
        }
        %37 = "triton_xpu.reduce"(%36, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
        ^bb0(%arg9: vector<16xf32>, %arg10: vector<16xf32>):
          %49 = arith.addf %arg9, %arg10 : vector<16xf32>
          triton_xpu.reduce.return %49 : vector<16xf32>
        }) : (tensor<64x8xvector<16xf32>, #cluster9>, i32) -> tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster9}>>
        %38 = triton_xpu.convert_layout %37 : tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster9}>> -> tensor<64xf32, #cluster3>
        %39 = triton_xpu.convert_layout %38 : tensor<64xf32, #cluster3> -> tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster1}>>
        %40 = tt.expand_dims %39 {axis = 1 : i32} : tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<64x1xf32, #cluster1>
        %41 = tt.splat %arg2 : !tt.ptr<f16> -> tensor<64x1x!tt.ptr<f16>, #cluster1>
        %42 = tt.addptr %41, %21 : tensor<64x1x!tt.ptr<f16>, #cluster1>, tensor<64x1xi32, #cluster1>
        %43 = arith.truncf %40 : tensor<64x1xf32, #cluster1> to tensor<64x1xf16, #cluster1>
        %44 = "triton_xpu.get_core_id"() : () -> i32
        %45 = arith.remsi %44, %c1_i32 : i32
        %46 = arith.cmpi eq, %45, %c0_i32 : i32
        %47 = arith.cmpi slt, %44, %c64_i32 : i32
        %48 = arith.andi %46, %47 : i1
        scf.if %48 {
          "triton_xpu.store"(%12, %43, %23) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x1x!tt.ptr<f16, 0>, #cluster1>, tensor<64x1xf16, #cluster1>, tensor<64x1xi1, #cluster1>) -> ()
          "triton_xpu.lm2gm"(%42, %22, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x1x!tt.ptr<f16>, #cluster1>, tensor<64x1xi32, #cluster1>, tensor<64x1x!tt.ptr<f16, 0>, #cluster1>) -> ()
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
