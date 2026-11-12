#cluster = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 64], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 4], coresPerGroup = [1, 64], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [64, 1], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [4], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 64], groupsPerCluster = [1, 1], order = [0, 1]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 1 : i32, "ttg.threads-per-warp" = 64 : i32} {
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
    %cst = arith.constant dense<32> : tensor<1x1xi32, #cluster>
    %cst_0 = arith.constant dense<256> : tensor<1x1xi32, #cluster>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1x256xf32, #cluster1>
    %cst_2 = arith.constant dense<0.000000e+00> : tensor<1x256xf16, #cluster1>
    %c0_i32 = arith.constant 0 : i32
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 1 : si64}> : () -> tensor<1x1x!tt.ptr<f16, 0>, #cluster>
      %13 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<1x256x!tt.ptr<f16, 0>, #cluster1>
      %14 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<1x256x!tt.ptr<f16, 0>, #cluster1>
      %15 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 64 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<1xi32, #cluster2>
      %16 = triton_xpu.convert_layout %15 : tensor<1xi32, #cluster2> -> tensor<1xi32, #ttg.slice<{dim = 1, parent = #cluster3}>>
      %17 = tt.expand_dims %16 {axis = 1 : i32} : tensor<1xi32, #ttg.slice<{dim = 1, parent = #cluster3}>> -> tensor<1x1xi32, #cluster3>
      %18 = triton_xpu.convert_layout %17 : tensor<1x1xi32, #cluster3> -> tensor<1x1xi32, #cluster>
      %19 = tt.splat %11 : i32 -> tensor<1x1xi32, #cluster>
      %20 = arith.addi %19, %18 : tensor<1x1xi32, #cluster>
      %21 = arith.subi %cst, %20 : tensor<1x1xi32, #cluster>
      %22 = arith.cmpi slt, %20, %cst : tensor<1x1xi32, #cluster>
      %23 = "triton_xpu.extract"(%22) <{index = 0 : i32}> : (tensor<1x1xi1, #cluster>) -> i1
      scf.if %23 {
        %24 = triton_xpu.make_range   {end = 256 : i32, realSize = 256 : i32, start = 0 : i32} :   -> tensor<256xi32, #cluster4>
        %25 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 64 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<256xi32, #cluster4>
        %26 = triton_xpu.convert_layout %24 : tensor<256xi32, #cluster4> -> tensor<256xi32, #ttg.slice<{dim = 0, parent = #cluster1}>>
        %27 = tt.expand_dims %26 {axis = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #cluster1}>> -> tensor<1x256xi32, #cluster1>
        %28 = arith.muli %20, %cst_0 : tensor<1x1xi32, #cluster>
        %29 = triton_xpu.broadcast %28 : tensor<1x1xi32, #cluster> -> tensor<1x256xi32, #cluster>
        %30 = triton_xpu.convert_layout %29 : tensor<1x256xi32, #cluster> -> tensor<1x256xi32, #cluster1>
        %31 = arith.addi %27, %30 : tensor<1x256xi32, #cluster1>
        %32 = tt.splat %arg0 : !tt.ptr<f16> -> tensor<1x256x!tt.ptr<f16>, #cluster1>
        %33 = tt.addptr %32, %31 : tensor<1x256x!tt.ptr<f16>, #cluster1>, tensor<1x256xi32, #cluster1>
        %34 = triton_xpu.broadcast %22 : tensor<1x1xi1, #cluster> -> tensor<1x256xi1, #cluster>
        %35 = triton_xpu.convert_layout %34 : tensor<1x256xi1, #cluster> -> tensor<1x256xi1, #cluster1>
        %36 = "triton_xpu.extract_slice"(%cst_2) : (tensor<1x256xf16, #cluster1>) -> tensor<1x128xf16, #cluster5>
        %c0 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1 = arith.constant 1 : index
        scf.for %arg9 = %c0 to %c2 step %c1 {
          %64 = arith.index_cast %arg9 : index to i32
          "triton_xpu.store"(%14, %36, %64) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<f16, 0>, #cluster1>, tensor<1x128xf16, #cluster5>, i32) -> ()
        }
        %37 = "triton_xpu.gm2lm"(%33, %35, %cst_2, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<f16>, #cluster1>, tensor<1x256xi1, #cluster1>, tensor<1x256xf16, #cluster1>, tensor<1x256x!tt.ptr<f16, 0>, #cluster1>) -> tensor<1x256x!tt.ptr<f16, 0>, #cluster1>
        %38 = tt.splat %arg1 : !tt.ptr<f16> -> tensor<1x256x!tt.ptr<f16>, #cluster1>
        %39 = tt.addptr %38, %27 : tensor<1x256x!tt.ptr<f16>, #cluster1>, tensor<1x256xi32, #cluster1>
        %40 = "triton_xpu.gm2lm"(%39, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 0, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<f16>, #cluster1>, tensor<1x256x!tt.ptr<f16, 0>, #cluster1>) -> tensor<1x256x!tt.ptr<f16, 0>, #cluster1>
        llvm_xpu.mfence %c1_i32
        %41 = "triton_xpu.load"(%37, %35, %cst_2) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<f16, 0>, #cluster1>, tensor<1x256xi1, #cluster1>, tensor<1x256xf16, #cluster1>) -> tensor<1x256xf16, #cluster1>
        %42 = arith.extf %41 : tensor<1x256xf16, #cluster1> to tensor<1x256xf32, #cluster1>
        %43 = "triton_xpu.load"(%40) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<f16, 0>, #cluster1>) -> tensor<1x256xf16, #cluster1>
        %44 = arith.extf %43 : tensor<1x256xf16, #cluster1> to tensor<1x256xf32, #cluster1>
        %45 = arith.mulf %42, %44 : tensor<1x256xf32, #cluster1>
        %46 = arith.truncf %45 : tensor<1x256xf32, #cluster1> to tensor<1x256xf16, #cluster1>
        %47 = arith.extf %46 : tensor<1x256xf16, #cluster1> to tensor<1x256xf32, #cluster1>
        %48 = arith.select %35, %47, %cst_1 : tensor<1x256xi1, #cluster1>, tensor<1x256xf32, #cluster1>
        %49 = "triton_xpu.extract_slice"(%48) : (tensor<1x256xf32, #cluster1>) -> tensor<1x128xf32, #cluster5>
        %cst_3 = arith.constant dense<0.000000e+00> : tensor<1x128xf32, #cluster5>
        %50 = scf.for %arg9 = %c1 to %c2 step %c1 iter_args(%arg10 = %49) -> (tensor<1x128xf32, #cluster5>) {
          %64 = arith.index_cast %arg9 : index to i32
          %65 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 64 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<1xi32, #cluster2>
          %66 = triton_xpu.convert_layout %65 : tensor<1xi32, #cluster2> -> tensor<1xi32, #ttg.slice<{dim = 1, parent = #cluster3}>>
          %67 = tt.expand_dims %66 {axis = 1 : i32} : tensor<1xi32, #ttg.slice<{dim = 1, parent = #cluster3}>> -> tensor<1x1xi32, #cluster3>
          %68 = triton_xpu.convert_layout %67 : tensor<1x1xi32, #cluster3> -> tensor<1x1xi32, #cluster>
          %69 = arith.addi %19, %68 : tensor<1x1xi32, #cluster>
          %70 = arith.cmpi slt, %69, %cst : tensor<1x1xi32, #cluster>
          %71 = triton_xpu.broadcast %70 : tensor<1x1xi1, #cluster> -> tensor<1x128xi1, #cluster>
          %72 = triton_xpu.convert_layout %71 : tensor<1x128xi1, #cluster> -> tensor<1x128xi1, #cluster5>
          %73 = "triton_xpu.load"(%37, %72, %cst_2, %64) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<f16, 0>, #cluster1>, tensor<1x128xi1, #cluster5>, tensor<1x256xf16, #cluster1>, i32) -> tensor<1x128xf16, #cluster5>
          %74 = arith.extf %73 : tensor<1x128xf16, #cluster5> to tensor<1x128xf32, #cluster5>
          %75 = "triton_xpu.load"(%40, %64) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<f16, 0>, #cluster1>, i32) -> tensor<1x128xf16, #cluster5>
          %76 = arith.extf %75 : tensor<1x128xf16, #cluster5> to tensor<1x128xf32, #cluster5>
          %77 = arith.mulf %74, %76 : tensor<1x128xf32, #cluster5>
          %78 = arith.truncf %77 : tensor<1x128xf32, #cluster5> to tensor<1x128xf16, #cluster5>
          %79 = arith.extf %78 : tensor<1x128xf16, #cluster5> to tensor<1x128xf32, #cluster5>
          %80 = arith.select %72, %79, %cst_3 : tensor<1x128xi1, #cluster5>, tensor<1x128xf32, #cluster5>
          %81 = arith.addf %arg10, %80 : tensor<1x128xf32, #cluster5>
          scf.yield %81 : tensor<1x128xf32, #cluster5>
        }
        %51 = "triton_xpu.reduce"(%50, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
        ^bb0(%arg9: f32, %arg10: f32):
          %64 = arith.addf %arg9, %arg10 : f32
          triton_xpu.reduce.return %64 : f32
        }) : (tensor<1x128xf32, #cluster5>, i32) -> tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster5}>>
        %52 = triton_xpu.convert_layout %51 : tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster5}>> -> tensor<1xf32, #cluster2>
        %53 = triton_xpu.convert_layout %52 : tensor<1xf32, #cluster2> -> tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster3}>>
        %54 = tt.expand_dims %53 {axis = 1 : i32} : tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster3}>> -> tensor<1x1xf32, #cluster3>
        %55 = triton_xpu.convert_layout %54 : tensor<1x1xf32, #cluster3> -> tensor<1x1xf32, #cluster>
        %56 = tt.splat %arg2 : !tt.ptr<f16> -> tensor<1x1x!tt.ptr<f16>, #cluster>
        %57 = tt.addptr %56, %20 : tensor<1x1x!tt.ptr<f16>, #cluster>, tensor<1x1xi32, #cluster>
        %58 = arith.truncf %55 : tensor<1x1xf32, #cluster> to tensor<1x1xf16, #cluster>
        %59 = "triton_xpu.get_core_id"() : () -> i32
        %c64_i32 = arith.constant 64 : i32
        %60 = arith.remsi %59, %c64_i32 : i32
        %61 = arith.cmpi eq, %60, %c0_i32 : i32
        %62 = arith.cmpi slt, %59, %c64_i32 : i32
        %63 = arith.andi %61, %62 : i1
        scf.if %63 {
          "triton_xpu.store"(%12, %58, %22) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1x!tt.ptr<f16, 0>, #cluster>, tensor<1x1xf16, #cluster>, tensor<1x1xi1, #cluster>) -> ()
          "triton_xpu.lm2gm"(%57, %21, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1x!tt.ptr<f16>, #cluster>, tensor<1x1xi32, #cluster>, tensor<1x1x!tt.ptr<f16, 0>, #cluster>) -> ()
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
