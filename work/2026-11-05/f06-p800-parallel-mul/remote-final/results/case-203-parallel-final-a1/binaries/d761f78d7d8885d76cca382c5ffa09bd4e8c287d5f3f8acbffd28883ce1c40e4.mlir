#cluster = #triton_xpu.cluster<{sizePerCore = [1, 32], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [1], groupsPerCluster = [32], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [32], coresPerGroup = [2], groupsPerCluster = [1], order = [0]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 32 : i32, "ttg.threads-per-warp" = 2 : i32} {
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
    %cst = arith.constant dense<0.000000e+00> : tensor<1x64xf16, #cluster>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<32x64xf16, #cluster>
    %c64_i32 = arith.constant 64 : i32
    %c2048_i32 = arith.constant 2048 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst_1 = arith.constant dense<2048> : tensor<1x64xi32, #cluster>
    %c32_i32 = arith.constant 32 : i32
    %cst_2 = arith.constant dense<2048> : tensor<32x1xi32, #cluster1>
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 32 : si64}> : () -> tensor<32x1x!tt.ptr<f16, 0>, #cluster1>
      %13 = "triton_xpu.alloca"() <{size = 64 : si64}> : () -> tensor<1x64x!tt.ptr<f16, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<32x64x!tt.ptr<f16, 0>, #cluster>
      %15 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<32x64xf32, #cluster>}> : () -> tensor<32x4xvector<16xf32>, #cluster2>
      %16 = arith.muli %11, %c32_i32 : i32
      %17 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 2 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<32xi32, #cluster3>
      %18 = triton_xpu.convert_layout %17 : tensor<32xi32, #cluster3> -> tensor<32xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
      %19 = tt.expand_dims %18 {axis = 1 : i32} : tensor<32xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<32x1xi32, #cluster1>
      %20 = tt.splat %16 : i32 -> tensor<32x1xi32, #cluster1>
      %21 = arith.addi %20, %19 : tensor<32x1xi32, #cluster1>
      %22 = arith.subi %cst_2, %21 : tensor<32x1xi32, #cluster1>
      %23 = arith.cmpi slt, %21, %cst_2 : tensor<32x1xi32, #cluster1>
      %24 = "triton_xpu.extract"(%23) <{index = 0 : i32}> : (tensor<32x1xi1, #cluster1>) -> i1
      scf.if %24 {
        %25 = triton_xpu.make_range   {end = 64 : i32, realSize = 64 : i32, start = 0 : i32} :   -> tensor<64xi32, #cluster4>
        %26 = triton_xpu.convert_layout %25 : tensor<64xi32, #cluster4> -> tensor<64xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
        %27 = tt.expand_dims %26 {axis = 0 : i32} : tensor<64xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x64xi32, #cluster>
        %28 = arith.muli %21, %cst_2 : tensor<32x1xi32, #cluster1>
        %29 = triton_xpu.broadcast %28 : tensor<32x1xi32, #cluster1> -> tensor<32x64xi32, #cluster>
        %30 = tt.splat %arg0 : !tt.ptr<f16> -> tensor<32x64x!tt.ptr<f16>, #cluster>
        %31 = triton_xpu.broadcast %23 : tensor<32x1xi1, #cluster1> -> tensor<32x64xi1, #cluster>
        %32 = tt.splat %arg1 : !tt.ptr<f16> -> tensor<1x64x!tt.ptr<f16>, #cluster>
        %33 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<32x64x!tt.ptr<f32, 0>, #cluster2>
        "triton_xpu.store"(%33, %15) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x64x!tt.ptr<f32, 0>, #cluster2>, tensor<32x4xvector<16xf32>, #cluster2>) -> ()
        %34 = scf.for %arg9 = %c0_i32 to %c2048_i32 step %c64_i32 iter_args(%arg10 = %15) -> (tensor<32x4xvector<16xf32>, #cluster2>)  : i32 {
          %48 = tt.splat %arg9 : i32 -> tensor<1x64xi32, #cluster>
          %49 = arith.addi %48, %27 : tensor<1x64xi32, #cluster>
          %50 = arith.subi %cst_1, %49 : tensor<1x64xi32, #cluster>
          %51 = arith.cmpi slt, %49, %cst_1 : tensor<1x64xi32, #cluster>
          %52 = "triton_xpu.extract"(%51) <{index = 0 : i32}> : (tensor<1x64xi1, #cluster>) -> i1
          %53 = scf.if %52 -> (tensor<32x4xvector<16xf32>, #cluster2>) {
            %54 = "triton_xpu.load"(%33) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x64x!tt.ptr<f32, 0>, #cluster2>) -> tensor<32x4xvector<16xf32>, #cluster2>
            %55 = triton_xpu.broadcast %49 : tensor<1x64xi32, #cluster> -> tensor<32x64xi32, #cluster>
            %56 = arith.addi %55, %29 : tensor<32x64xi32, #cluster>
            %57 = tt.addptr %30, %56 : tensor<32x64x!tt.ptr<f16>, #cluster>, tensor<32x64xi32, #cluster>
            %58 = triton_xpu.broadcast %51 : tensor<1x64xi1, #cluster> -> tensor<32x64xi1, #cluster>
            %59 = arith.andi %58, %31 : tensor<32x64xi1, #cluster>
            %60 = "triton_xpu.extract_slice"(%cst_0) : (tensor<32x64xf16, #cluster>) -> tensor<32x4xf16, #cluster2>
            %c0 = arith.constant 0 : index
            %c16 = arith.constant 16 : index
            %c1 = arith.constant 1 : index
            scf.for %arg11 = %c0 to %c16 step %c1 {
              %75 = arith.index_cast %arg11 : index to i32
              "triton_xpu.store"(%14, %60, %75) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x64x!tt.ptr<f16, 0>, #cluster>, tensor<32x4xf16, #cluster2>, i32) -> ()
            }
            %61 = "triton_xpu.gm2lm"(%57, %50, %cst_0, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<32x64x!tt.ptr<f16>, #cluster>, tensor<1x64xi32, #cluster>, tensor<32x64xf16, #cluster>, tensor<32x64x!tt.ptr<f16, 0>, #cluster>) -> tensor<32x64x!tt.ptr<f16, 0>, #cluster>
            %62 = tt.addptr %32, %49 : tensor<1x64x!tt.ptr<f16>, #cluster>, tensor<1x64xi32, #cluster>
            %63 = "triton_xpu.extract_slice"(%cst) : (tensor<1x64xf16, #cluster>) -> tensor<1x4xf16, #cluster2>
            scf.for %arg11 = %c0 to %c16 step %c1 {
              %75 = arith.index_cast %arg11 : index to i32
              "triton_xpu.store"(%13, %63, %75) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x64x!tt.ptr<f16, 0>, #cluster>, tensor<1x4xf16, #cluster2>, i32) -> ()
            }
            %64 = "triton_xpu.gm2lm"(%62, %50, %cst, %13) <{SVOpt = false, atomicSim = false, cache = true, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x64x!tt.ptr<f16>, #cluster>, tensor<1x64xi32, #cluster>, tensor<1x64xf16, #cluster>, tensor<1x64x!tt.ptr<f16, 0>, #cluster>) -> tensor<1x64x!tt.ptr<f16, 0>, #cluster>
            llvm_xpu.mfence %c1_i32
            %65 = "triton_xpu.load"(%61, %59, %cst_0) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x64x!tt.ptr<f16, 0>, #cluster>, tensor<32x64xi1, #cluster>, tensor<32x64xf16, #cluster>) -> tensor<32x2xvector<32xf16>, #cluster1>
            %66 = "triton_xpu.load"(%64, %51, %cst) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x64x!tt.ptr<f16, 0>, #cluster>, tensor<1x64xi1, #cluster>, tensor<1x64xf16, #cluster>) -> tensor<1x64xf16, #cluster>
            %67 = "triton_xpu.vextf"(%65) : (tensor<32x2xvector<32xf16>, #cluster1>) -> tensor<32x4xvector<16xf32>, #cluster2>
            %68 = arith.extf %66 : tensor<1x64xf16, #cluster> to tensor<1x64xf32, #cluster>
            %69 = triton_xpu.broadcast %68 : tensor<1x64xf32, #cluster> -> tensor<32x4xvector<16xf32>, #cluster2>
            %70 = triton_xpu.vvmulf %67, %69 : tensor<32x4xvector<16xf32>, #cluster2>
            %71 = "triton_xpu.vtruncf"(%70) : (tensor<32x4xvector<16xf32>, #cluster2>) -> tensor<32x2xvector<32xf16>, #cluster1>
            %72 = "triton_xpu.vextf"(%71) : (tensor<32x2xvector<32xf16>, #cluster1>) -> tensor<32x4xvector<16xf32>, #cluster2>
            %73 = triton_xpu.vvaddf %54, %72 : tensor<32x4xvector<16xf32>, #cluster2>
            %74 = "triton_xpu.vselect"(%59, %73, %54) : (tensor<32x64xi1, #cluster>, tensor<32x4xvector<16xf32>, #cluster2>, tensor<32x4xvector<16xf32>, #cluster2>) -> tensor<32x4xvector<16xf32>, #cluster2>
            "triton_xpu.store"(%33, %74) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x64x!tt.ptr<f32, 0>, #cluster2>, tensor<32x4xvector<16xf32>, #cluster2>) -> ()
            scf.yield %15 : tensor<32x4xvector<16xf32>, #cluster2>
          } else {
            scf.yield %arg10 : tensor<32x4xvector<16xf32>, #cluster2>
          }
          scf.yield %53 : tensor<32x4xvector<16xf32>, #cluster2>
        }
        %35 = "triton_xpu.load"(%33) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x64x!tt.ptr<f32, 0>, #cluster2>) -> tensor<32x4xvector<16xf32>, #cluster2>
        %36 = "triton_xpu.reduce"(%35, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
        ^bb0(%arg9: vector<16xf32>, %arg10: vector<16xf32>):
          %48 = arith.addf %arg9, %arg10 : vector<16xf32>
          triton_xpu.reduce.return %48 : vector<16xf32>
        }) : (tensor<32x4xvector<16xf32>, #cluster2>, i32) -> tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster2}>>
        %37 = triton_xpu.convert_layout %36 : tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster2}>> -> tensor<32xf32, #cluster3>
        %38 = triton_xpu.convert_layout %37 : tensor<32xf32, #cluster3> -> tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster1}>>
        %39 = tt.expand_dims %38 {axis = 1 : i32} : tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<32x1xf32, #cluster1>
        %40 = tt.splat %arg2 : !tt.ptr<f16> -> tensor<32x1x!tt.ptr<f16>, #cluster1>
        %41 = tt.addptr %40, %21 : tensor<32x1x!tt.ptr<f16>, #cluster1>, tensor<32x1xi32, #cluster1>
        %42 = arith.truncf %39 : tensor<32x1xf32, #cluster1> to tensor<32x1xf16, #cluster1>
        %43 = "triton_xpu.get_core_id"() : () -> i32
        %c2_i32 = arith.constant 2 : i32
        %44 = arith.remsi %43, %c2_i32 : i32
        %45 = arith.cmpi eq, %44, %c0_i32 : i32
        %46 = arith.cmpi slt, %43, %c64_i32 : i32
        %47 = arith.andi %45, %46 : i1
        scf.if %47 {
          "triton_xpu.store"(%12, %42, %23) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x1x!tt.ptr<f16, 0>, #cluster1>, tensor<32x1xf16, #cluster1>, tensor<32x1xi1, #cluster1>) -> ()
          "triton_xpu.lm2gm"(%41, %22, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x1x!tt.ptr<f16>, #cluster1>, tensor<32x1xi32, #cluster1>, tensor<32x1x!tt.ptr<f16, 0>, #cluster1>) -> ()
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
