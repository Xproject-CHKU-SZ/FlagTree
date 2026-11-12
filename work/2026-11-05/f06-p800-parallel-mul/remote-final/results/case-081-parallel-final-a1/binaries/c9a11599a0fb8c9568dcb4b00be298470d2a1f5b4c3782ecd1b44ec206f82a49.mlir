#cluster = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [32], coresPerGroup = [4], groupsPerCluster = [1], order = [0]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1, 32], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [1], groupsPerCluster = [16], order = [0]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 16 : i32, "ttg.threads-per-warp" = 4 : i32} {
  tt.func public @triton_per_fused_mul_sum_0(%arg0: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg1: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg2: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg3: i32 {tt.divisibility = 16 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32, %arg6: i32, %arg7: i32) attributes {noinline = false} {
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
    %c16_i32 = arith.constant 16 : i32
    %cst = arith.constant dense<16> : tensor<16x1xi32, #cluster>
    %cst_0 = arith.constant dense<128> : tensor<16x1xi32, #cluster>
    %9 = triton_xpu.make_range   {end = 128 : i32, realSize = 128 : i32, start = 0 : i32} :   -> tensor<128xi32, #cluster1>
    %10 = tt.splat %arg1 : !tt.ptr<f32> -> tensor<1x128x!tt.ptr<f32>, #cluster2>
    scf.for %arg8 = %6 to %7 step %8 {
      %11 = arith.index_cast %arg8 : index to i32
      %12 = arith.divsi %11, %arg7 : i32
      %13 = arith.divsi %12, %arg6 : i32
      %14 = "triton_xpu.alloca"() <{size = 16 : si64}> : () -> tensor<16x1x!tt.ptr<f32, 0>, #cluster>
      %15 = "triton_xpu.alloca"() <{size = 128 : si64}> : () -> tensor<1x128x!tt.ptr<f32, 0>, #cluster2>
      %16 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<16x128x!tt.ptr<f32, 0>, #cluster2>
      %17 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<16x128xf32, #cluster2>}> : () -> tensor<16x8xvector<16xf32>, #cluster3>
      %18 = arith.muli %13, %c16_i32 : i32
      %19 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 4 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<16xi32, #cluster4>
      %20 = triton_xpu.convert_layout %19 : tensor<16xi32, #cluster4> -> tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster}>>
      %21 = tt.expand_dims %20 {axis = 1 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<16x1xi32, #cluster>
      %22 = tt.splat %18 : i32 -> tensor<16x1xi32, #cluster>
      %23 = arith.addi %22, %21 : tensor<16x1xi32, #cluster>
      %24 = arith.subi %cst, %23 : tensor<16x1xi32, #cluster>
      %25 = arith.cmpi slt, %23, %cst : tensor<16x1xi32, #cluster>
      %26 = "triton_xpu.extract"(%25) <{index = 0 : i32}> : (tensor<16x1xi1, #cluster>) -> i1
      scf.if %26 {
        %27 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 4 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<128xi32, #cluster1>
        %28 = triton_xpu.convert_layout %9 : tensor<128xi32, #cluster1> -> tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster2}>>
        %29 = tt.expand_dims %28 {axis = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster2}>> -> tensor<1x128xi32, #cluster2>
        %30 = arith.muli %23, %cst_0 : tensor<16x1xi32, #cluster>
        %31 = triton_xpu.broadcast %29 : tensor<1x128xi32, #cluster2> -> tensor<16x128xi32, #cluster2>
        %32 = triton_xpu.broadcast %30 : tensor<16x1xi32, #cluster> -> tensor<16x128xi32, #cluster2>
        %33 = arith.addi %31, %32 : tensor<16x128xi32, #cluster2>
        %34 = tt.splat %arg0 : !tt.ptr<f32> -> tensor<16x128x!tt.ptr<f32>, #cluster2>
        %35 = tt.addptr %34, %33 : tensor<16x128x!tt.ptr<f32>, #cluster2>, tensor<16x128xi32, #cluster2>
        %36 = triton_xpu.broadcast %25 : tensor<16x1xi1, #cluster> -> tensor<16x128xi1, #cluster2>
        %37 = "triton_xpu.extract_slice"(%17) : (tensor<16x8xvector<16xf32>, #cluster3>) -> tensor<16x8xvector<16xf32>, #cluster3>
        %c0 = arith.constant 0 : index
        %c1 = arith.constant 1 : index
        scf.for %arg9 = %c0 to %c1 step %c1 {
          %57 = arith.index_cast %arg9 : index to i32
          "triton_xpu.store"(%16, %37, %57) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x128x!tt.ptr<f32, 0>, #cluster2>, tensor<16x8xvector<16xf32>, #cluster3>, i32) -> ()
        }
        %38 = "triton_xpu.gm2lm"(%35, %36, %17, %16) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<16x128x!tt.ptr<f32>, #cluster2>, tensor<16x128xi1, #cluster2>, tensor<16x8xvector<16xf32>, #cluster3>, tensor<16x128x!tt.ptr<f32, 0>, #cluster2>) -> tensor<16x128x!tt.ptr<f32, 0>, #cluster2>
        %39 = tt.addptr %10, %29 : tensor<1x128x!tt.ptr<f32>, #cluster2>, tensor<1x128xi32, #cluster2>
        %40 = "triton_xpu.gm2lm"(%39, %15) <{SVOpt = false, atomicSim = false, cache = true, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 0, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<f32>, #cluster2>, tensor<1x128x!tt.ptr<f32, 0>, #cluster2>) -> tensor<1x128x!tt.ptr<f32, 0>, #cluster2>
        llvm_xpu.mfence %c1_i32
        %41 = "triton_xpu.load"(%38, %36, %17) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x128x!tt.ptr<f32, 0>, #cluster2>, tensor<16x128xi1, #cluster2>, tensor<16x8xvector<16xf32>, #cluster3>) -> tensor<16x8xvector<16xf32>, #cluster3>
        %42 = "triton_xpu.load"(%40) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<f32, 0>, #cluster2>) -> tensor<1x128xf32, #cluster2>
        %43 = triton_xpu.broadcast %42 : tensor<1x128xf32, #cluster2> -> tensor<16x8xvector<16xf32>, #cluster3>
        %44 = triton_xpu.vvmulf %41, %43 : tensor<16x8xvector<16xf32>, #cluster3>
        %45 = "triton_xpu.vselect"(%36, %44, %17) : (tensor<16x128xi1, #cluster2>, tensor<16x8xvector<16xf32>, #cluster3>, tensor<16x8xvector<16xf32>, #cluster3>) -> tensor<16x8xvector<16xf32>, #cluster3>
        %46 = "triton_xpu.reduce"(%45, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
        ^bb0(%arg9: vector<16xf32>, %arg10: vector<16xf32>):
          %57 = arith.addf %arg9, %arg10 : vector<16xf32>
          triton_xpu.reduce.return %57 : vector<16xf32>
        }) : (tensor<16x8xvector<16xf32>, #cluster3>, i32) -> tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster3}>>
        %47 = triton_xpu.convert_layout %46 : tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster3}>> -> tensor<16xf32, #cluster4>
        %48 = triton_xpu.convert_layout %47 : tensor<16xf32, #cluster4> -> tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster}>>
        %49 = tt.expand_dims %48 {axis = 1 : i32} : tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<16x1xf32, #cluster>
        %50 = tt.splat %arg2 : !tt.ptr<f32> -> tensor<16x1x!tt.ptr<f32>, #cluster>
        %51 = tt.addptr %50, %23 : tensor<16x1x!tt.ptr<f32>, #cluster>, tensor<16x1xi32, #cluster>
        %52 = "triton_xpu.get_core_id"() : () -> i32
        %c4_i32 = arith.constant 4 : i32
        %53 = arith.remsi %52, %c4_i32 : i32
        %54 = arith.cmpi eq, %53, %c0_i32 : i32
        %c64_i32 = arith.constant 64 : i32
        %55 = arith.cmpi slt, %52, %c64_i32 : i32
        %56 = arith.andi %54, %55 : i1
        scf.if %56 {
          "triton_xpu.store"(%14, %49, %25) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1x!tt.ptr<f32, 0>, #cluster>, tensor<16x1xf32, #cluster>, tensor<16x1xi1, #cluster>) -> ()
          "triton_xpu.lm2gm"(%51, %24, %14) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1x!tt.ptr<f32>, #cluster>, tensor<16x1xi32, #cluster>, tensor<16x1x!tt.ptr<f32, 0>, #cluster>) -> ()
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
