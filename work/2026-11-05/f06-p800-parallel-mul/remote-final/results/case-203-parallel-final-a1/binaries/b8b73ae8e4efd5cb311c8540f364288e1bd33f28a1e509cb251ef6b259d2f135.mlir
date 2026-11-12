#cluster = #triton_xpu.cluster<{sizePerCore = [1, 256], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1, 16], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [1], groupsPerCluster = [64], order = [0]}>
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
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant dense<0.000000e+00> : tensor<1x256xf16, #cluster>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<64x256xf16, #cluster>
    %c256_i32 = arith.constant 256 : i32
    %c2048_i32 = arith.constant 2048 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst_1 = arith.constant dense<2048> : tensor<1x256xi32, #cluster>
    %c128_i32 = arith.constant 128 : i32
    %cst_2 = arith.constant dense<2048> : tensor<64x1xi32, #cluster1>
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 64 : si64}> : () -> tensor<64x1x!tt.ptr<f16, 0>, #cluster1>
      %13 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<1x256x!tt.ptr<f16, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 16384 : si64}> : () -> tensor<64x256x!tt.ptr<f16, 0>, #cluster>
      %15 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<64x256xf32, #cluster>}> : () -> tensor<64x16xvector<16xf32>, #cluster2>
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
          %26 = triton_xpu.make_range   {end = 256 : i32, realSize = 256 : i32, start = 0 : i32} :   -> tensor<256xi32, #cluster4>
          %27 = triton_xpu.convert_layout %26 : tensor<256xi32, #cluster4> -> tensor<256xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
          %28 = tt.expand_dims %27 {axis = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x256xi32, #cluster>
          %29 = arith.muli %22, %cst_2 : tensor<64x1xi32, #cluster1>
          %30 = triton_xpu.broadcast %29 : tensor<64x1xi32, #cluster1> -> tensor<64x256xi32, #cluster>
          %31 = tt.splat %arg0 : !tt.ptr<f16> -> tensor<64x256x!tt.ptr<f16>, #cluster>
          %32 = tt.splat %arg1 : !tt.ptr<f16> -> tensor<1x256x!tt.ptr<f16>, #cluster>
          %33 = "triton_xpu.alloca"() <{size = 16384 : si64}> : () -> tensor<64x256x!tt.ptr<f32, 0>, #cluster2>
          %c4 = arith.constant 4 : index
          scf.for %arg10 = %c0 to %c4 step %c1 {
            %50 = arith.index_cast %arg10 : index to i32
            %51 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<64x256xf32, #cluster>}> : () -> tensor<64x4xvector<16xf32>, #cluster5>
            "triton_xpu.store"(%33, %51, %50) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f32, 0>, #cluster2>, tensor<64x4xvector<16xf32>, #cluster5>, i32) -> ()
          }
          %34 = scf.for %arg10 = %c0_i32 to %c2048_i32 step %c256_i32 iter_args(%arg11 = %15) -> (tensor<64x16xvector<16xf32>, #cluster2>)  : i32 {
            %50 = tt.splat %arg10 : i32 -> tensor<1x256xi32, #cluster>
            %51 = arith.addi %50, %28 : tensor<1x256xi32, #cluster>
            %52 = arith.subi %cst_1, %51 : tensor<1x256xi32, #cluster>
            %53 = arith.cmpi slt, %51, %cst_1 : tensor<1x256xi32, #cluster>
            %54 = "triton_xpu.extract"(%53) <{index = 0 : i32}> : (tensor<1x256xi1, #cluster>) -> i1
            %55 = scf.if %54 -> (tensor<64x16xvector<16xf32>, #cluster2>) {
              %56 = triton_xpu.broadcast %51 : tensor<1x256xi32, #cluster> -> tensor<64x256xi32, #cluster>
              %57 = arith.addi %56, %30 : tensor<64x256xi32, #cluster>
              %58 = tt.addptr %31, %57 : tensor<64x256x!tt.ptr<f16>, #cluster>, tensor<64x256xi32, #cluster>
              %59 = "triton_xpu.extract_slice"(%cst_0) : (tensor<64x256xf16, #cluster>) -> tensor<64x2xf16, #cluster6>
              %c128 = arith.constant 128 : index
              scf.for %arg12 = %c0 to %c128 step %c1 {
                %67 = arith.index_cast %arg12 : index to i32
                "triton_xpu.store"(%14, %59, %67) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f16, 0>, #cluster>, tensor<64x2xf16, #cluster6>, i32) -> ()
              }
              %60 = "triton_xpu.gm2lm"(%58, %52, %cst_0, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f16>, #cluster>, tensor<1x256xi32, #cluster>, tensor<64x256xf16, #cluster>, tensor<64x256x!tt.ptr<f16, 0>, #cluster>) -> tensor<64x256x!tt.ptr<f16, 0>, #cluster>
              %61 = tt.addptr %32, %51 : tensor<1x256x!tt.ptr<f16>, #cluster>, tensor<1x256xi32, #cluster>
              %62 = "triton_xpu.extract_slice"(%cst) : (tensor<1x256xf16, #cluster>) -> tensor<1x2xf16, #cluster6>
              scf.for %arg12 = %c0 to %c128 step %c1 {
                %67 = arith.index_cast %arg12 : index to i32
                "triton_xpu.store"(%13, %62, %67) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<f16, 0>, #cluster>, tensor<1x2xf16, #cluster6>, i32) -> ()
              }
              %63 = "triton_xpu.gm2lm"(%61, %52, %cst, %13) <{SVOpt = false, atomicSim = false, cache = true, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<f16>, #cluster>, tensor<1x256xi32, #cluster>, tensor<1x256xf16, #cluster>, tensor<1x256x!tt.ptr<f16, 0>, #cluster>) -> tensor<1x256x!tt.ptr<f16, 0>, #cluster>
              %cst_3 = arith.constant dense<2048> : tensor<1x64xi32, #cluster7>
              %64 = tt.splat %arg0 : !tt.ptr<f16> -> tensor<64x64x!tt.ptr<f16>, #cluster7>
              %65 = tt.splat %arg1 : !tt.ptr<f16> -> tensor<1x64x!tt.ptr<f16>, #cluster7>
              %66 = tt.splat %arg10 : i32 -> tensor<1x64xi32, #cluster7>
              scf.for %arg12 = %c0 to %c4 step %c1 {
                %67 = arith.index_cast %arg12 : index to i32
                %68 = "triton_xpu.out_range"(%18) <{groupsize = 1 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<64xi32, #cluster3>
                %69 = triton_xpu.convert_layout %68 : tensor<64xi32, #cluster3> -> tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
                %70 = tt.expand_dims %69 {axis = 1 : i32} : tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<64x1xi32, #cluster1>
                %71 = arith.addi %17, %70 : tensor<64x1xi32, #cluster1>
                %72 = arith.cmpi slt, %71, %cst_2 : tensor<64x1xi32, #cluster1>
                %73 = triton_xpu.make_range  %67 {end = 256 : i32, realSize = 256 : i32, start = 0 : i32} :  i32 -> tensor<64xi32, #cluster8>
                %74 = triton_xpu.convert_layout %73 : tensor<64xi32, #cluster8> -> tensor<64xi32, #ttg.slice<{dim = 0, parent = #cluster7}>>
                %75 = tt.expand_dims %74 {axis = 0 : i32} : tensor<64xi32, #ttg.slice<{dim = 0, parent = #cluster7}>> -> tensor<1x64xi32, #cluster7>
                %76 = arith.muli %71, %cst_2 : tensor<64x1xi32, #cluster1>
                %77 = triton_xpu.broadcast %76 : tensor<64x1xi32, #cluster1> -> tensor<64x64xi32, #cluster7>
                %78 = triton_xpu.broadcast %72 : tensor<64x1xi1, #cluster1> -> tensor<64x64xi1, #cluster7>
                %79 = arith.addi %66, %75 : tensor<1x64xi32, #cluster7>
                %80 = arith.cmpi slt, %79, %cst_3 : tensor<1x64xi32, #cluster7>
                %81 = "triton_xpu.extract"(%80) <{index = 0 : i32}> : (tensor<1x64xi1, #cluster7>) -> i1
                %82 = "triton_xpu.load"(%33, %67) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f32, 0>, #cluster2>, i32) -> tensor<64x4xvector<16xf32>, #cluster5>
                %83 = triton_xpu.broadcast %79 : tensor<1x64xi32, #cluster7> -> tensor<64x64xi32, #cluster7>
                %84 = arith.addi %83, %77 : tensor<64x64xi32, #cluster7>
                %85 = triton_xpu.broadcast %80 : tensor<1x64xi1, #cluster7> -> tensor<64x64xi1, #cluster7>
                %86 = arith.andi %85, %78 : tensor<64x64xi1, #cluster7>
                llvm_xpu.mfence %c1_i32
                %87 = "triton_xpu.load"(%60, %86, %cst_0, %67) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f16, 0>, #cluster>, tensor<64x64xi1, #cluster7>, tensor<64x256xf16, #cluster>, i32) -> tensor<64x2xvector<32xf16>, #cluster6>
                %88 = "triton_xpu.load"(%63, %80, %cst, %67) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<f16, 0>, #cluster>, tensor<1x64xi1, #cluster7>, tensor<1x256xf16, #cluster>, i32) -> tensor<1x64xf16, #cluster7>
                %89 = "triton_xpu.vextf"(%87) : (tensor<64x2xvector<32xf16>, #cluster6>) -> tensor<64x4xvector<16xf32>, #cluster5>
                %90 = arith.extf %88 : tensor<1x64xf16, #cluster7> to tensor<1x64xf32, #cluster7>
                %91 = triton_xpu.broadcast %90 : tensor<1x64xf32, #cluster7> -> tensor<64x4xvector<16xf32>, #cluster5>
                %92 = triton_xpu.vvmulf %89, %91 : tensor<64x4xvector<16xf32>, #cluster5>
                %93 = "triton_xpu.vtruncf"(%92) : (tensor<64x4xvector<16xf32>, #cluster5>) -> tensor<64x2xvector<32xf16>, #cluster6>
                %94 = "triton_xpu.vextf"(%93) : (tensor<64x2xvector<32xf16>, #cluster6>) -> tensor<64x4xvector<16xf32>, #cluster5>
                %95 = triton_xpu.vvaddf %82, %94 : tensor<64x4xvector<16xf32>, #cluster5>
                %96 = "triton_xpu.vselect"(%86, %95, %82) : (tensor<64x64xi1, #cluster7>, tensor<64x4xvector<16xf32>, #cluster5>, tensor<64x4xvector<16xf32>, #cluster5>) -> tensor<64x4xvector<16xf32>, #cluster5>
                "triton_xpu.store"(%33, %96, %67) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f32, 0>, #cluster2>, tensor<64x4xvector<16xf32>, #cluster5>, i32) -> ()
              }
              scf.yield %15 : tensor<64x16xvector<16xf32>, #cluster2>
            } else {
              scf.yield %arg11 : tensor<64x16xvector<16xf32>, #cluster2>
            }
            scf.yield %55 : tensor<64x16xvector<16xf32>, #cluster2>
          }
          %35 = "triton_xpu.load"(%33) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f32, 0>, #cluster2>) -> tensor<64x16xvector<16xf32>, #cluster2>
          %36 = "triton_xpu.extract_slice"(%35) : (tensor<64x16xvector<16xf32>, #cluster2>) -> tensor<64x8xvector<16xf32>, #cluster9>
          %37 = scf.for %arg10 = %c1 to %c2 step %c1 iter_args(%arg11 = %36) -> (tensor<64x8xvector<16xf32>, #cluster9>) {
            %50 = arith.index_cast %arg10 : index to i32
            %51 = "triton_xpu.load"(%33, %50) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f32, 0>, #cluster2>, i32) -> tensor<64x8xvector<16xf32>, #cluster9>
            %52 = triton_xpu.vvaddf %arg11, %51 : tensor<64x8xvector<16xf32>, #cluster9>
            scf.yield %52 : tensor<64x8xvector<16xf32>, #cluster9>
          }
          %38 = "triton_xpu.reduce"(%37, %18) <{axis = 1 : i32, loopNum = 2 : i32}> ({
          ^bb0(%arg10: vector<16xf32>, %arg11: vector<16xf32>):
            %50 = arith.addf %arg10, %arg11 : vector<16xf32>
            triton_xpu.reduce.return %50 : vector<16xf32>
          }) : (tensor<64x8xvector<16xf32>, #cluster9>, i32) -> tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster9}>>
          %39 = triton_xpu.convert_layout %38 : tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster9}>> -> tensor<64xf32, #cluster3>
          %40 = triton_xpu.convert_layout %39 : tensor<64xf32, #cluster3> -> tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster1}>>
          %41 = tt.expand_dims %40 {axis = 1 : i32} : tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<64x1xf32, #cluster1>
          %42 = tt.splat %arg2 : !tt.ptr<f16> -> tensor<64x1x!tt.ptr<f16>, #cluster1>
          %43 = tt.addptr %42, %22 : tensor<64x1x!tt.ptr<f16>, #cluster1>, tensor<64x1xi32, #cluster1>
          %44 = arith.truncf %41 : tensor<64x1xf32, #cluster1> to tensor<64x1xf16, #cluster1>
          %45 = "triton_xpu.get_core_id"() : () -> i32
          %46 = arith.remsi %45, %c1_i32 : i32
          %47 = arith.cmpi eq, %46, %c0_i32 : i32
          %c64_i32 = arith.constant 64 : i32
          %48 = arith.cmpi slt, %45, %c64_i32 : i32
          %49 = arith.andi %47, %48 : i1
          scf.if %49 {
            "triton_xpu.store"(%12, %44, %24) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x1x!tt.ptr<f16, 0>, #cluster1>, tensor<64x1xf16, #cluster1>, tensor<64x1xi1, #cluster1>) -> ()
            "triton_xpu.lm2gm"(%43, %23, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x1x!tt.ptr<f16>, #cluster1>, tensor<64x1xi32, #cluster1>, tensor<64x1x!tt.ptr<f16, 0>, #cluster1>) -> ()
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
