#cluster = #triton_xpu.cluster<{sizePerCore = [1, 32], coresPerGroup = [1, 64], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 64], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 64], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [64, 1], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [32], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 1 : i32, "ttg.threads-per-warp" = 64 : i32} {
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
    %c0_i32 = arith.constant 0 : i32
    %cst = arith.constant dense<0.000000e+00> : tensor<1x2048xf16, #cluster>
    %cst_0 = arith.constant dense<2048> : tensor<1x2048xi32, #cluster>
    %cst_1 = arith.constant dense<2048> : tensor<1x1xi32, #cluster1>
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 1 : si64}> : () -> tensor<1x1x!tt.ptr<f16, 0>, #cluster1>
      %13 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<1x2048x!tt.ptr<f16, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<1x2048x!tt.ptr<f16, 0>, #cluster>
      %15 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<1x2048xf32, #cluster>}> : () -> tensor<1x128xvector<16xf32>, #cluster2>
      %16 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 64 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<1xi32, #cluster3>
      %17 = triton_xpu.convert_layout %16 : tensor<1xi32, #cluster3> -> tensor<1xi32, #ttg.slice<{dim = 1, parent = #cluster4}>>
      %18 = tt.expand_dims %17 {axis = 1 : i32} : tensor<1xi32, #ttg.slice<{dim = 1, parent = #cluster4}>> -> tensor<1x1xi32, #cluster4>
      %19 = triton_xpu.convert_layout %18 : tensor<1x1xi32, #cluster4> -> tensor<1x1xi32, #cluster1>
      %20 = tt.splat %11 : i32 -> tensor<1x1xi32, #cluster1>
      %21 = arith.addi %20, %19 : tensor<1x1xi32, #cluster1>
      %22 = arith.subi %cst_1, %21 : tensor<1x1xi32, #cluster1>
      %23 = arith.cmpi slt, %21, %cst_1 : tensor<1x1xi32, #cluster1>
      %24 = "triton_xpu.extract"(%23) <{index = 0 : i32}> : (tensor<1x1xi1, #cluster1>) -> i1
      scf.if %24 {
        %25 = triton_xpu.make_range   {end = 2048 : i32, realSize = 2048 : i32, start = 0 : i32} :   -> tensor<2048xi32, #cluster5>
        %26 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 64 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<2048xi32, #cluster5>
        %27 = triton_xpu.convert_layout %25 : tensor<2048xi32, #cluster5> -> tensor<2048xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
        %28 = tt.expand_dims %27 {axis = 0 : i32} : tensor<2048xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x2048xi32, #cluster>
        %29 = arith.subi %cst_0, %28 : tensor<1x2048xi32, #cluster>
        %30 = arith.cmpi slt, %28, %cst_0 : tensor<1x2048xi32, #cluster>
        %31 = "triton_xpu.extract"(%30) <{index = 0 : i32}> : (tensor<1x2048xi1, #cluster>) -> i1
        scf.if %31 {
          %32 = arith.muli %21, %cst_1 : tensor<1x1xi32, #cluster1>
          %33 = triton_xpu.broadcast %32 : tensor<1x1xi32, #cluster1> -> tensor<1x2048xi32, #cluster1>
          %34 = triton_xpu.convert_layout %33 : tensor<1x2048xi32, #cluster1> -> tensor<1x2048xi32, #cluster>
          %35 = arith.addi %28, %34 : tensor<1x2048xi32, #cluster>
          %36 = tt.splat %arg0 : !tt.ptr<f16> -> tensor<1x2048x!tt.ptr<f16>, #cluster>
          %37 = tt.addptr %36, %35 : tensor<1x2048x!tt.ptr<f16>, #cluster>, tensor<1x2048xi32, #cluster>
          %38 = triton_xpu.broadcast %23 : tensor<1x1xi1, #cluster1> -> tensor<1x2048xi1, #cluster1>
          %39 = triton_xpu.convert_layout %38 : tensor<1x2048xi1, #cluster1> -> tensor<1x2048xi1, #cluster>
          %40 = arith.andi %30, %39 : tensor<1x2048xi1, #cluster>
          %41 = "triton_xpu.extract_slice"(%cst) : (tensor<1x2048xf16, #cluster>) -> tensor<1x128xf16, #cluster2>
          %c0 = arith.constant 0 : index
          %c16 = arith.constant 16 : index
          %c1 = arith.constant 1 : index
          scf.for %arg9 = %c0 to %c16 step %c1 {
            %69 = arith.index_cast %arg9 : index to i32
            "triton_xpu.store"(%14, %41, %69) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<f16, 0>, #cluster>, tensor<1x128xf16, #cluster2>, i32) -> ()
          }
          %42 = "triton_xpu.gm2lm"(%37, %29, %cst, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<f16>, #cluster>, tensor<1x2048xi32, #cluster>, tensor<1x2048xf16, #cluster>, tensor<1x2048x!tt.ptr<f16, 0>, #cluster>) -> tensor<1x2048x!tt.ptr<f16, 0>, #cluster>
          %43 = tt.splat %arg1 : !tt.ptr<f16> -> tensor<1x2048x!tt.ptr<f16>, #cluster>
          %44 = tt.addptr %43, %28 : tensor<1x2048x!tt.ptr<f16>, #cluster>, tensor<1x2048xi32, #cluster>
          %45 = "triton_xpu.extract_slice"(%cst) : (tensor<1x2048xf16, #cluster>) -> tensor<1x128xf16, #cluster2>
          scf.for %arg9 = %c0 to %c16 step %c1 {
            %69 = arith.index_cast %arg9 : index to i32
            "triton_xpu.store"(%13, %45, %69) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<f16, 0>, #cluster>, tensor<1x128xf16, #cluster2>, i32) -> ()
          }
          %46 = "triton_xpu.gm2lm"(%44, %29, %cst, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<f16>, #cluster>, tensor<1x2048xi32, #cluster>, tensor<1x2048xf16, #cluster>, tensor<1x2048x!tt.ptr<f16, 0>, #cluster>) -> tensor<1x2048x!tt.ptr<f16, 0>, #cluster>
          llvm_xpu.mfence %c1_i32
          %47 = "triton_xpu.load"(%42, %40, %cst) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<f16, 0>, #cluster>, tensor<1x2048xi1, #cluster>, tensor<1x2048xf16, #cluster>) -> tensor<1x64xvector<32xf16>, #cluster1>
          %48 = "triton_xpu.load"(%46, %30, %cst) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<f16, 0>, #cluster>, tensor<1x2048xi1, #cluster>, tensor<1x2048xf16, #cluster>) -> tensor<1x64xvector<32xf16>, #cluster1>
          %49 = "triton_xpu.vextf"(%47) : (tensor<1x64xvector<32xf16>, #cluster1>) -> tensor<1x128xvector<16xf32>, #cluster2>
          %50 = "triton_xpu.vextf"(%48) : (tensor<1x64xvector<32xf16>, #cluster1>) -> tensor<1x128xvector<16xf32>, #cluster2>
          %51 = triton_xpu.vvmulf %49, %50 : tensor<1x128xvector<16xf32>, #cluster2>
          %52 = "triton_xpu.vtruncf"(%51) : (tensor<1x128xvector<16xf32>, #cluster2>) -> tensor<1x64xvector<32xf16>, #cluster1>
          %53 = "triton_xpu.vextf"(%52) : (tensor<1x64xvector<32xf16>, #cluster1>) -> tensor<1x128xvector<16xf32>, #cluster2>
          %54 = triton_xpu.vvaddf %53, %15 : tensor<1x128xvector<16xf32>, #cluster2>
          %55 = "triton_xpu.vselect"(%40, %54, %15) : (tensor<1x2048xi1, #cluster>, tensor<1x128xvector<16xf32>, #cluster2>, tensor<1x128xvector<16xf32>, #cluster2>) -> tensor<1x128xvector<16xf32>, #cluster2>
          %56 = "triton_xpu.reduce"(%55, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
          ^bb0(%arg9: vector<16xf32>, %arg10: vector<16xf32>):
            %69 = arith.addf %arg9, %arg10 : vector<16xf32>
            triton_xpu.reduce.return %69 : vector<16xf32>
          }) : (tensor<1x128xvector<16xf32>, #cluster2>, i32) -> tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster2}>>
          %57 = triton_xpu.convert_layout %56 : tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster2}>> -> tensor<1xf32, #cluster3>
          %58 = triton_xpu.convert_layout %57 : tensor<1xf32, #cluster3> -> tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster4}>>
          %59 = tt.expand_dims %58 {axis = 1 : i32} : tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster4}>> -> tensor<1x1xf32, #cluster4>
          %60 = triton_xpu.convert_layout %59 : tensor<1x1xf32, #cluster4> -> tensor<1x1xf32, #cluster1>
          %61 = tt.splat %arg2 : !tt.ptr<f16> -> tensor<1x1x!tt.ptr<f16>, #cluster1>
          %62 = tt.addptr %61, %21 : tensor<1x1x!tt.ptr<f16>, #cluster1>, tensor<1x1xi32, #cluster1>
          %63 = arith.truncf %60 : tensor<1x1xf32, #cluster1> to tensor<1x1xf16, #cluster1>
          %64 = "triton_xpu.get_core_id"() : () -> i32
          %c64_i32 = arith.constant 64 : i32
          %65 = arith.remsi %64, %c64_i32 : i32
          %66 = arith.cmpi eq, %65, %c0_i32 : i32
          %67 = arith.cmpi slt, %64, %c64_i32 : i32
          %68 = arith.andi %66, %67 : i1
          scf.if %68 {
            "triton_xpu.store"(%12, %63, %23) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1x!tt.ptr<f16, 0>, #cluster1>, tensor<1x1xf16, #cluster1>, tensor<1x1xi1, #cluster1>) -> ()
            "triton_xpu.lm2gm"(%62, %22, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1x!tt.ptr<f16>, #cluster1>, tensor<1x1xi32, #cluster1>, tensor<1x1x!tt.ptr<f16, 0>, #cluster1>) -> ()
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
