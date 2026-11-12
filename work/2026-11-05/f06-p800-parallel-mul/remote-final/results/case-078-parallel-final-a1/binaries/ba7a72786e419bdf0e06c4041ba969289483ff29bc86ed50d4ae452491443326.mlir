#cluster = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 64], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 64], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [64, 1], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 1 : i32, "ttg.threads-per-warp" = 64 : i32} {
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
    %cst = arith.constant dense<0.000000e+00> : tensor<1x128xf32, #cluster>
    %cst_0 = arith.constant dense<128> : tensor<1x1xi32, #cluster1>
    %cst_1 = arith.constant dense<16> : tensor<1x1xi32, #cluster1>
    %c0_i32 = arith.constant 0 : i32
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 1 : si64}> : () -> tensor<1x1x!tt.ptr<bf16, 0>, #cluster1>
      %13 = "triton_xpu.alloca"() <{size = 128 : si64}> : () -> tensor<1x128x!tt.ptr<bf16, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 128 : si64}> : () -> tensor<1x128x!tt.ptr<bf16, 0>, #cluster>
      %15 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 64 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<1xi32, #cluster2>
      %16 = triton_xpu.convert_layout %15 : tensor<1xi32, #cluster2> -> tensor<1xi32, #ttg.slice<{dim = 1, parent = #cluster3}>>
      %17 = tt.expand_dims %16 {axis = 1 : i32} : tensor<1xi32, #ttg.slice<{dim = 1, parent = #cluster3}>> -> tensor<1x1xi32, #cluster3>
      %18 = triton_xpu.convert_layout %17 : tensor<1x1xi32, #cluster3> -> tensor<1x1xi32, #cluster1>
      %19 = tt.splat %11 : i32 -> tensor<1x1xi32, #cluster1>
      %20 = arith.addi %19, %18 : tensor<1x1xi32, #cluster1>
      %21 = arith.subi %cst_1, %20 : tensor<1x1xi32, #cluster1>
      %22 = arith.cmpi slt, %20, %cst_1 : tensor<1x1xi32, #cluster1>
      %23 = "triton_xpu.extract"(%22) <{index = 0 : i32}> : (tensor<1x1xi1, #cluster1>) -> i1
      scf.if %23 {
        %24 = triton_xpu.make_range   {end = 128 : i32, realSize = 128 : i32, start = 0 : i32} :   -> tensor<128xi32, #cluster4>
        %25 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 64 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<128xi32, #cluster4>
        %26 = triton_xpu.convert_layout %24 : tensor<128xi32, #cluster4> -> tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
        %27 = tt.expand_dims %26 {axis = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x128xi32, #cluster>
        %28 = arith.muli %20, %cst_0 : tensor<1x1xi32, #cluster1>
        %29 = triton_xpu.broadcast %28 : tensor<1x1xi32, #cluster1> -> tensor<1x128xi32, #cluster1>
        %30 = triton_xpu.convert_layout %29 : tensor<1x128xi32, #cluster1> -> tensor<1x128xi32, #cluster>
        %31 = arith.addi %27, %30 : tensor<1x128xi32, #cluster>
        %32 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<1x128x!tt.ptr<bf16>, #cluster>
        %33 = tt.addptr %32, %31 : tensor<1x128x!tt.ptr<bf16>, #cluster>, tensor<1x128xi32, #cluster>
        %34 = triton_xpu.broadcast %22 : tensor<1x1xi1, #cluster1> -> tensor<1x128xi1, #cluster1>
        %35 = triton_xpu.convert_layout %34 : tensor<1x128xi1, #cluster1> -> tensor<1x128xi1, #cluster>
        %36 = "triton_xpu.extract_slice"(%cst) : (tensor<1x128xf32, #cluster>) -> tensor<1x128xf32, #cluster>
        %c0 = arith.constant 0 : index
        %c1 = arith.constant 1 : index
        scf.for %arg9 = %c0 to %c1 step %c1 {
          %57 = arith.index_cast %arg9 : index to i32
          "triton_xpu.store"(%14, %36, %57) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<bf16, 0>, #cluster>, tensor<1x128xf32, #cluster>, i32) -> ()
        }
        %37 = "triton_xpu.gm2lm"(%33, %35, %cst, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<bf16>, #cluster>, tensor<1x128xi1, #cluster>, tensor<1x128xf32, #cluster>, tensor<1x128x!tt.ptr<bf16, 0>, #cluster>) -> tensor<1x128x!tt.ptr<bf16, 0>, #cluster>
        %38 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x128x!tt.ptr<bf16>, #cluster>
        %39 = tt.addptr %38, %27 : tensor<1x128x!tt.ptr<bf16>, #cluster>, tensor<1x128xi32, #cluster>
        %40 = "triton_xpu.gm2lm"(%39, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 0, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<bf16>, #cluster>, tensor<1x128x!tt.ptr<bf16, 0>, #cluster>) -> tensor<1x128x!tt.ptr<bf16, 0>, #cluster>
        llvm_xpu.mfence %c1_i32
        %41 = "triton_xpu.load"(%37, %35, %cst) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<bf16, 0>, #cluster>, tensor<1x128xi1, #cluster>, tensor<1x128xf32, #cluster>) -> tensor<1x128xf32, #cluster>
        %42 = "triton_xpu.load"(%40) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<bf16, 0>, #cluster>) -> tensor<1x128xf32, #cluster>
        %43 = arith.mulf %41, %42 : tensor<1x128xf32, #cluster>
        %44 = arith.select %35, %43, %cst : tensor<1x128xi1, #cluster>, tensor<1x128xf32, #cluster>
        %45 = "triton_xpu.reduce"(%44, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
        ^bb0(%arg9: f32, %arg10: f32):
          %57 = arith.addf %arg9, %arg10 : f32
          triton_xpu.reduce.return %57 : f32
        }) : (tensor<1x128xf32, #cluster>, i32) -> tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster}>>
        %46 = triton_xpu.convert_layout %45 : tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<1xf32, #cluster2>
        %47 = triton_xpu.convert_layout %46 : tensor<1xf32, #cluster2> -> tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster3}>>
        %48 = tt.expand_dims %47 {axis = 1 : i32} : tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster3}>> -> tensor<1x1xf32, #cluster3>
        %49 = triton_xpu.convert_layout %48 : tensor<1x1xf32, #cluster3> -> tensor<1x1xf32, #cluster1>
        %50 = tt.splat %arg2 : !tt.ptr<bf16> -> tensor<1x1x!tt.ptr<bf16>, #cluster1>
        %51 = tt.addptr %50, %20 : tensor<1x1x!tt.ptr<bf16>, #cluster1>, tensor<1x1xi32, #cluster1>
        %52 = "triton_xpu.get_core_id"() : () -> i32
        %c64_i32 = arith.constant 64 : i32
        %53 = arith.remsi %52, %c64_i32 : i32
        %54 = arith.cmpi eq, %53, %c0_i32 : i32
        %55 = arith.cmpi slt, %52, %c64_i32 : i32
        %56 = arith.andi %54, %55 : i1
        scf.if %56 {
          "triton_xpu.store"(%12, %49, %22) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1x!tt.ptr<bf16, 0>, #cluster1>, tensor<1x1xf32, #cluster1>, tensor<1x1xi1, #cluster1>) -> ()
          "triton_xpu.lm2gm"(%51, %21, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1x!tt.ptr<bf16>, #cluster1>, tensor<1x1xi32, #cluster1>, tensor<1x1x!tt.ptr<bf16, 0>, #cluster1>) -> ()
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
