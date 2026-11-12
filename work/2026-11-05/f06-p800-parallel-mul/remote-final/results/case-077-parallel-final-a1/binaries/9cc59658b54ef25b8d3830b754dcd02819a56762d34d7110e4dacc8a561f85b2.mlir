#cluster = #triton_xpu.cluster<{sizePerCore = [1, 128], coresPerGroup = [1, 8], groupsPerCluster = [8, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 8], groupsPerCluster = [8, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1, 8], coresPerGroup = [1, 8], groupsPerCluster = [8, 1], order = [0, 1]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [1], groupsPerCluster = [8], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [128], coresPerGroup = [8], groupsPerCluster = [1], order = [0]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 8], groupsPerCluster = [8, 1], order = [0, 1]}>
#cluster6 = #triton_xpu.cluster<{sizePerCore = [1, 4], coresPerGroup = [1, 8], groupsPerCluster = [8, 1], order = [0, 1]}>
#cluster7 = #triton_xpu.cluster<{sizePerCore = [1, 64], coresPerGroup = [1, 8], groupsPerCluster = [8, 1], order = [0, 1]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 8 : i32} {
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
    %c0_i32 = arith.constant 0 : i32
    %cst = arith.constant dense<0.000000e+00> : tensor<8x1024xf16, #cluster>
    %c8_i32 = arith.constant 8 : i32
    %cst_0 = arith.constant dense<64> : tensor<8x1xi32, #cluster1>
    %cst_1 = arith.constant dense<1024> : tensor<8x1xi32, #cluster1>
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 8 : si64}> : () -> tensor<8x1x!tt.ptr<f16, 0>, #cluster1>
      %13 = "triton_xpu.alloca"() <{size = 1024 : si64}> : () -> tensor<1x1024x!tt.ptr<f16, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 8192 : si64}> : () -> tensor<8x1024x!tt.ptr<f16, 0>, #cluster>
      %15 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<8x1024xf32, #cluster>}> : () -> tensor<8x64xvector<16xf32>, #cluster2>
      %16 = arith.muli %11, %c8_i32 : i32
      %17 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 8 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<8xi32, #cluster3>
      %18 = triton_xpu.convert_layout %17 : tensor<8xi32, #cluster3> -> tensor<8xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
      %19 = tt.expand_dims %18 {axis = 1 : i32} : tensor<8xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<8x1xi32, #cluster1>
      %20 = tt.splat %16 : i32 -> tensor<8x1xi32, #cluster1>
      %21 = arith.addi %20, %19 : tensor<8x1xi32, #cluster1>
      %22 = arith.subi %cst_0, %21 : tensor<8x1xi32, #cluster1>
      %23 = arith.cmpi slt, %21, %cst_0 : tensor<8x1xi32, #cluster1>
      %24 = "triton_xpu.extract"(%23) <{index = 0 : i32}> : (tensor<8x1xi1, #cluster1>) -> i1
      scf.if %24 {
        %25 = triton_xpu.make_range   {end = 1024 : i32, realSize = 1024 : i32, start = 0 : i32} :   -> tensor<1024xi32, #cluster4>
        %26 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 8 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<1024xi32, #cluster4>
        %27 = triton_xpu.convert_layout %25 : tensor<1024xi32, #cluster4> -> tensor<1024xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
        %28 = tt.expand_dims %27 {axis = 0 : i32} : tensor<1024xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x1024xi32, #cluster>
        %29 = arith.muli %21, %cst_1 : tensor<8x1xi32, #cluster1>
        %30 = triton_xpu.broadcast %28 : tensor<1x1024xi32, #cluster> -> tensor<8x1024xi32, #cluster>
        %31 = triton_xpu.broadcast %29 : tensor<8x1xi32, #cluster1> -> tensor<8x1024xi32, #cluster>
        %32 = arith.addi %30, %31 : tensor<8x1024xi32, #cluster>
        %33 = tt.splat %arg0 : !tt.ptr<f16> -> tensor<8x1024x!tt.ptr<f16>, #cluster>
        %34 = tt.addptr %33, %32 : tensor<8x1024x!tt.ptr<f16>, #cluster>, tensor<8x1024xi32, #cluster>
        %35 = triton_xpu.broadcast %23 : tensor<8x1xi1, #cluster1> -> tensor<8x1024xi1, #cluster>
        %36 = "triton_xpu.extract_slice"(%cst) : (tensor<8x1024xf16, #cluster>) -> tensor<8x16xf16, #cluster5>
        %c0 = arith.constant 0 : index
        %c64 = arith.constant 64 : index
        %c1 = arith.constant 1 : index
        scf.for %arg9 = %c0 to %c64 step %c1 {
          %64 = arith.index_cast %arg9 : index to i32
          "triton_xpu.store"(%14, %36, %64) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x1024x!tt.ptr<f16, 0>, #cluster>, tensor<8x16xf16, #cluster5>, i32) -> ()
        }
        %37 = "triton_xpu.gm2lm"(%34, %35, %cst, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<8x1024x!tt.ptr<f16>, #cluster>, tensor<8x1024xi1, #cluster>, tensor<8x1024xf16, #cluster>, tensor<8x1024x!tt.ptr<f16, 0>, #cluster>) -> tensor<8x1024x!tt.ptr<f16, 0>, #cluster>
        %38 = tt.splat %arg1 : !tt.ptr<f16> -> tensor<1x1024x!tt.ptr<f16>, #cluster>
        %39 = tt.addptr %38, %28 : tensor<1x1024x!tt.ptr<f16>, #cluster>, tensor<1x1024xi32, #cluster>
        %40 = "triton_xpu.gm2lm"(%39, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 0, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<f16>, #cluster>, tensor<1x1024x!tt.ptr<f16, 0>, #cluster>) -> tensor<1x1024x!tt.ptr<f16, 0>, #cluster>
        llvm_xpu.mfence %c1_i32
        %41 = "triton_xpu.load"(%37, %35, %cst) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x1024x!tt.ptr<f16, 0>, #cluster>, tensor<8x1024xi1, #cluster>, tensor<8x1024xf16, #cluster>) -> tensor<8x32xvector<32xf16>, #cluster6>
        %42 = "triton_xpu.load"(%40) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<f16, 0>, #cluster>) -> tensor<1x1024xf16, #cluster>
        %43 = "triton_xpu.vextf"(%41) : (tensor<8x32xvector<32xf16>, #cluster6>) -> tensor<8x64xvector<16xf32>, #cluster2>
        %44 = arith.extf %42 : tensor<1x1024xf16, #cluster> to tensor<1x1024xf32, #cluster>
        %45 = triton_xpu.broadcast %44 : tensor<1x1024xf32, #cluster> -> tensor<8x64xvector<16xf32>, #cluster2>
        %46 = triton_xpu.vvmulf %43, %45 : tensor<8x64xvector<16xf32>, #cluster2>
        %47 = "triton_xpu.vtruncf"(%46) : (tensor<8x64xvector<16xf32>, #cluster2>) -> tensor<8x32xvector<32xf16>, #cluster6>
        %48 = "triton_xpu.vextf"(%47) : (tensor<8x32xvector<32xf16>, #cluster6>) -> tensor<8x64xvector<16xf32>, #cluster2>
        %49 = "triton_xpu.vselect"(%35, %48, %15) : (tensor<8x1024xi1, #cluster>, tensor<8x64xvector<16xf32>, #cluster2>, tensor<8x64xvector<16xf32>, #cluster2>) -> tensor<8x64xvector<16xf32>, #cluster2>
        %50 = "triton_xpu.extract_slice"(%49) : (tensor<8x64xvector<16xf32>, #cluster2>) -> tensor<8x32xvector<16xf32>, #cluster6>
        %c2 = arith.constant 2 : index
        %51 = scf.for %arg9 = %c1 to %c2 step %c1 iter_args(%arg10 = %50) -> (tensor<8x32xvector<16xf32>, #cluster6>) {
          %64 = arith.index_cast %arg9 : index to i32
          %65 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<8x1024xf32, #cluster>}> : () -> tensor<8x32xvector<16xf32>, #cluster6>
          %66 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 8 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<8xi32, #cluster3>
          %67 = triton_xpu.convert_layout %66 : tensor<8xi32, #cluster3> -> tensor<8xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
          %68 = tt.expand_dims %67 {axis = 1 : i32} : tensor<8xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<8x1xi32, #cluster1>
          %69 = arith.addi %20, %68 : tensor<8x1xi32, #cluster1>
          %70 = arith.cmpi slt, %69, %cst_0 : tensor<8x1xi32, #cluster1>
          %71 = triton_xpu.broadcast %70 : tensor<8x1xi1, #cluster1> -> tensor<8x512xi1, #cluster7>
          %72 = "triton_xpu.load"(%37, %71, %cst, %64) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x1024x!tt.ptr<f16, 0>, #cluster>, tensor<8x512xi1, #cluster7>, tensor<8x1024xf16, #cluster>, i32) -> tensor<8x16xvector<32xf16>, #cluster5>
          %73 = "triton_xpu.load"(%40, %64) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<f16, 0>, #cluster>, i32) -> tensor<1x512xf16, #cluster7>
          %74 = "triton_xpu.vextf"(%72) : (tensor<8x16xvector<32xf16>, #cluster5>) -> tensor<8x32xvector<16xf32>, #cluster6>
          %75 = arith.extf %73 : tensor<1x512xf16, #cluster7> to tensor<1x512xf32, #cluster7>
          %76 = triton_xpu.broadcast %75 : tensor<1x512xf32, #cluster7> -> tensor<8x32xvector<16xf32>, #cluster6>
          %77 = triton_xpu.vvmulf %74, %76 : tensor<8x32xvector<16xf32>, #cluster6>
          %78 = "triton_xpu.vtruncf"(%77) : (tensor<8x32xvector<16xf32>, #cluster6>) -> tensor<8x16xvector<32xf16>, #cluster5>
          %79 = "triton_xpu.vextf"(%78) : (tensor<8x16xvector<32xf16>, #cluster5>) -> tensor<8x32xvector<16xf32>, #cluster6>
          %80 = "triton_xpu.vselect"(%71, %79, %65) : (tensor<8x512xi1, #cluster7>, tensor<8x32xvector<16xf32>, #cluster6>, tensor<8x32xvector<16xf32>, #cluster6>) -> tensor<8x32xvector<16xf32>, #cluster6>
          %81 = triton_xpu.vvaddf %arg10, %80 : tensor<8x32xvector<16xf32>, #cluster6>
          scf.yield %81 : tensor<8x32xvector<16xf32>, #cluster6>
        }
        %52 = "triton_xpu.reduce"(%51, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
        ^bb0(%arg9: vector<16xf32>, %arg10: vector<16xf32>):
          %64 = arith.addf %arg9, %arg10 : vector<16xf32>
          triton_xpu.reduce.return %64 : vector<16xf32>
        }) : (tensor<8x32xvector<16xf32>, #cluster6>, i32) -> tensor<8xf32, #ttg.slice<{dim = 1, parent = #cluster6}>>
        %53 = triton_xpu.convert_layout %52 : tensor<8xf32, #ttg.slice<{dim = 1, parent = #cluster6}>> -> tensor<8xf32, #cluster3>
        %54 = triton_xpu.convert_layout %53 : tensor<8xf32, #cluster3> -> tensor<8xf32, #ttg.slice<{dim = 1, parent = #cluster1}>>
        %55 = tt.expand_dims %54 {axis = 1 : i32} : tensor<8xf32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<8x1xf32, #cluster1>
        %56 = tt.splat %arg2 : !tt.ptr<f16> -> tensor<8x1x!tt.ptr<f16>, #cluster1>
        %57 = tt.addptr %56, %21 : tensor<8x1x!tt.ptr<f16>, #cluster1>, tensor<8x1xi32, #cluster1>
        %58 = arith.truncf %55 : tensor<8x1xf32, #cluster1> to tensor<8x1xf16, #cluster1>
        %59 = "triton_xpu.get_core_id"() : () -> i32
        %60 = arith.remsi %59, %c8_i32 : i32
        %61 = arith.cmpi eq, %60, %c0_i32 : i32
        %c64_i32 = arith.constant 64 : i32
        %62 = arith.cmpi slt, %59, %c64_i32 : i32
        %63 = arith.andi %61, %62 : i1
        scf.if %63 {
          "triton_xpu.store"(%12, %58, %23) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x1x!tt.ptr<f16, 0>, #cluster1>, tensor<8x1xf16, #cluster1>, tensor<8x1xi1, #cluster1>) -> ()
          "triton_xpu.lm2gm"(%57, %22, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x1x!tt.ptr<f16>, #cluster1>, tensor<8x1xi32, #cluster1>, tensor<8x1x!tt.ptr<f16, 0>, #cluster1>) -> ()
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
