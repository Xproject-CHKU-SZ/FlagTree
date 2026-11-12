#cluster = #triton_xpu.cluster<{sizePerCore = [1, 64], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1, 4], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [1], groupsPerCluster = [64], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [64], coresPerGroup = [1], groupsPerCluster = [1], order = [0]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 64 : i32, "ttg.threads-per-warp" = 1 : i32} {
  tt.func public @triton_red_fused_mul_sum_0(%arg0: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg1: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg2: !tt.ptr<f32> {tt.divisibility = 16 : i32}, %arg3: i32 {tt.divisibility = 16 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32, %arg6: i32, %arg7: i32) attributes {noinline = false} {
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
    %c64_i32 = arith.constant 64 : i32
    %c2048_i32 = arith.constant 2048 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst = arith.constant dense<0.000000e+00> : tensor<1x64xf32, #cluster>
    %cst_0 = arith.constant dense<2048> : tensor<1x64xi32, #cluster>
    %c128_i32 = arith.constant 128 : i32
    %cst_1 = arith.constant dense<2048> : tensor<64x1xi32, #cluster1>
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 64 : si64}> : () -> tensor<64x1x!tt.ptr<f32, 0>, #cluster1>
      %13 = "triton_xpu.alloca"() <{size = 64 : si64}> : () -> tensor<1x64x!tt.ptr<f32, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 4096 : si64}> : () -> tensor<64x64x!tt.ptr<f32, 0>, #cluster>
      %15 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<64x64xf32, #cluster>}> : () -> tensor<64x4xvector<16xf32>, #cluster2>
      %16 = arith.muli %11, %c128_i32 : i32
      %17 = tt.splat %16 : i32 -> tensor<64x1xi32, #cluster1>
      scf.for %arg9 = %c0 to %c2 step %c1 {
        %18 = arith.index_cast %arg9 : index to i32
        %19 = "triton_xpu.out_range"(%18) <{groupsize = 1 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<64xi32, #cluster3>
        %20 = triton_xpu.convert_layout %19 : tensor<64xi32, #cluster3> -> tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
        %21 = tt.expand_dims %20 {axis = 1 : i32} : tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<64x1xi32, #cluster1>
        %22 = arith.addi %17, %21 : tensor<64x1xi32, #cluster1>
        %23 = arith.subi %cst_1, %22 : tensor<64x1xi32, #cluster1>
        %24 = arith.cmpi slt, %22, %cst_1 : tensor<64x1xi32, #cluster1>
        %25 = "triton_xpu.extract"(%24) <{index = 0 : i32}> : (tensor<64x1xi1, #cluster1>) -> i1
        scf.if %25 {
          %26 = triton_xpu.make_range   {end = 64 : i32, realSize = 64 : i32, start = 0 : i32} :   -> tensor<64xi32, #cluster4>
          %27 = triton_xpu.convert_layout %26 : tensor<64xi32, #cluster4> -> tensor<64xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
          %28 = tt.expand_dims %27 {axis = 0 : i32} : tensor<64xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x64xi32, #cluster>
          %29 = arith.muli %22, %cst_1 : tensor<64x1xi32, #cluster1>
          %30 = triton_xpu.broadcast %29 : tensor<64x1xi32, #cluster1> -> tensor<64x64xi32, #cluster>
          %31 = tt.splat %arg0 : !tt.ptr<f32> -> tensor<64x64x!tt.ptr<f32>, #cluster>
          %32 = triton_xpu.broadcast %24 : tensor<64x1xi1, #cluster1> -> tensor<64x64xi1, #cluster>
          %33 = tt.splat %arg1 : !tt.ptr<f32> -> tensor<1x64x!tt.ptr<f32>, #cluster>
          %34 = "triton_xpu.alloca"() <{size = 4096 : si64}> : () -> tensor<64x64x!tt.ptr<f32, 0>, #cluster2>
          "triton_xpu.store"(%34, %15) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x64x!tt.ptr<f32, 0>, #cluster2>, tensor<64x4xvector<16xf32>, #cluster2>) -> ()
          %35 = scf.for %arg10 = %c0_i32 to %c2048_i32 step %c64_i32 iter_args(%arg11 = %15) -> (tensor<64x4xvector<16xf32>, #cluster2>)  : i32 {
            %48 = tt.splat %arg10 : i32 -> tensor<1x64xi32, #cluster>
            %49 = arith.addi %48, %28 : tensor<1x64xi32, #cluster>
            %50 = arith.subi %cst_0, %49 : tensor<1x64xi32, #cluster>
            %51 = arith.cmpi slt, %49, %cst_0 : tensor<1x64xi32, #cluster>
            %52 = "triton_xpu.extract"(%51) <{index = 0 : i32}> : (tensor<1x64xi1, #cluster>) -> i1
            %53 = scf.if %52 -> (tensor<64x4xvector<16xf32>, #cluster2>) {
              %54 = "triton_xpu.load"(%34) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x64x!tt.ptr<f32, 0>, #cluster2>) -> tensor<64x4xvector<16xf32>, #cluster2>
              %55 = triton_xpu.broadcast %49 : tensor<1x64xi32, #cluster> -> tensor<64x64xi32, #cluster>
              %56 = arith.addi %55, %30 : tensor<64x64xi32, #cluster>
              %57 = tt.addptr %31, %56 : tensor<64x64x!tt.ptr<f32>, #cluster>, tensor<64x64xi32, #cluster>
              %58 = triton_xpu.broadcast %51 : tensor<1x64xi1, #cluster> -> tensor<64x64xi1, #cluster>
              %59 = arith.andi %58, %32 : tensor<64x64xi1, #cluster>
              %60 = "triton_xpu.extract_slice"(%15) : (tensor<64x4xvector<16xf32>, #cluster2>) -> tensor<64x2xvector<16xf32>, #cluster5>
              scf.for %arg12 = %c0 to %c2 step %c1 {
                %71 = arith.index_cast %arg12 : index to i32
                "triton_xpu.store"(%14, %60, %71) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x64x!tt.ptr<f32, 0>, #cluster>, tensor<64x2xvector<16xf32>, #cluster5>, i32) -> ()
              }
              %61 = "triton_xpu.gm2lm"(%57, %50, %15, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<64x64x!tt.ptr<f32>, #cluster>, tensor<1x64xi32, #cluster>, tensor<64x4xvector<16xf32>, #cluster2>, tensor<64x64x!tt.ptr<f32, 0>, #cluster>) -> tensor<64x64x!tt.ptr<f32, 0>, #cluster>
              %62 = tt.addptr %33, %49 : tensor<1x64x!tt.ptr<f32>, #cluster>, tensor<1x64xi32, #cluster>
              %63 = "triton_xpu.extract_slice"(%cst) : (tensor<1x64xf32, #cluster>) -> tensor<1x2xf32, #cluster5>
              %c32 = arith.constant 32 : index
              scf.for %arg12 = %c0 to %c32 step %c1 {
                %71 = arith.index_cast %arg12 : index to i32
                "triton_xpu.store"(%13, %63, %71) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x64x!tt.ptr<f32, 0>, #cluster>, tensor<1x2xf32, #cluster5>, i32) -> ()
              }
              %64 = "triton_xpu.gm2lm"(%62, %50, %cst, %13) <{SVOpt = false, atomicSim = false, cache = true, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x64x!tt.ptr<f32>, #cluster>, tensor<1x64xi32, #cluster>, tensor<1x64xf32, #cluster>, tensor<1x64x!tt.ptr<f32, 0>, #cluster>) -> tensor<1x64x!tt.ptr<f32, 0>, #cluster>
              %65 = "triton_xpu.load"(%64, %51, %cst) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x64x!tt.ptr<f32, 0>, #cluster>, tensor<1x64xi1, #cluster>, tensor<1x64xf32, #cluster>) -> tensor<1x64xf32, #cluster>
              %66 = triton_xpu.broadcast %65 : tensor<1x64xf32, #cluster> -> tensor<64x4xvector<16xf32>, #cluster2>
              llvm_xpu.mfence %c1_i32
              %67 = "triton_xpu.load"(%61, %59, %15) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x64x!tt.ptr<f32, 0>, #cluster>, tensor<64x64xi1, #cluster>, tensor<64x4xvector<16xf32>, #cluster2>) -> tensor<64x4xvector<16xf32>, #cluster2>
              %68 = triton_xpu.vvmulf %67, %66 : tensor<64x4xvector<16xf32>, #cluster2>
              %69 = triton_xpu.vmacf %67, %66, %54 : tensor<64x4xvector<16xf32>, #cluster2>
              %70 = "triton_xpu.vselect"(%59, %69, %54) : (tensor<64x64xi1, #cluster>, tensor<64x4xvector<16xf32>, #cluster2>, tensor<64x4xvector<16xf32>, #cluster2>) -> tensor<64x4xvector<16xf32>, #cluster2>
              "triton_xpu.store"(%34, %70) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x64x!tt.ptr<f32, 0>, #cluster2>, tensor<64x4xvector<16xf32>, #cluster2>) -> ()
              scf.yield %15 : tensor<64x4xvector<16xf32>, #cluster2>
            } else {
              scf.yield %arg11 : tensor<64x4xvector<16xf32>, #cluster2>
            }
            scf.yield %53 : tensor<64x4xvector<16xf32>, #cluster2>
          }
          %36 = "triton_xpu.load"(%34) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x64x!tt.ptr<f32, 0>, #cluster2>) -> tensor<64x4xvector<16xf32>, #cluster2>
          %37 = "triton_xpu.reduce"(%36, %18) <{axis = 1 : i32, loopNum = 2 : i32}> ({
          ^bb0(%arg10: vector<16xf32>, %arg11: vector<16xf32>):
            %48 = arith.addf %arg10, %arg11 : vector<16xf32>
            triton_xpu.reduce.return %48 : vector<16xf32>
          }) : (tensor<64x4xvector<16xf32>, #cluster2>, i32) -> tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster2}>>
          %38 = triton_xpu.convert_layout %37 : tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster2}>> -> tensor<64xf32, #cluster3>
          %39 = triton_xpu.convert_layout %38 : tensor<64xf32, #cluster3> -> tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster1}>>
          %40 = tt.expand_dims %39 {axis = 1 : i32} : tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<64x1xf32, #cluster1>
          %41 = tt.splat %arg2 : !tt.ptr<f32> -> tensor<64x1x!tt.ptr<f32>, #cluster1>
          %42 = tt.addptr %41, %22 : tensor<64x1x!tt.ptr<f32>, #cluster1>, tensor<64x1xi32, #cluster1>
          %43 = "triton_xpu.get_core_id"() : () -> i32
          %44 = arith.remsi %43, %c1_i32 : i32
          %45 = arith.cmpi eq, %44, %c0_i32 : i32
          %46 = arith.cmpi slt, %43, %c64_i32 : i32
          %47 = arith.andi %45, %46 : i1
          scf.if %47 {
            "triton_xpu.store"(%12, %40, %24) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x1x!tt.ptr<f32, 0>, #cluster1>, tensor<64x1xf32, #cluster1>, tensor<64x1xi1, #cluster1>) -> ()
            "triton_xpu.lm2gm"(%42, %23, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x1x!tt.ptr<f32>, #cluster1>, tensor<64x1xi32, #cluster1>, tensor<64x1x!tt.ptr<f32, 0>, #cluster1>) -> ()
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
