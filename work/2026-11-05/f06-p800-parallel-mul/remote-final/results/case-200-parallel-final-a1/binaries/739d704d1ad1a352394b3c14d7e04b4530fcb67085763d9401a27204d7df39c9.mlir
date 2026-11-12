#cluster = #triton_xpu.cluster<{sizePerCore = [1, 32], coresPerGroup = [1, 64], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 64], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 64], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [64, 1], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [32], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 1 : i32, "ttg.threads-per-warp" = 64 : i32} {
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
    %c0_i32 = arith.constant 0 : i32
    %cst = arith.constant dense<2048> : tensor<1x2048xi32, #cluster>
    %cst_0 = arith.constant dense<2048> : tensor<1x1xi32, #cluster1>
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 1 : si64}> : () -> tensor<1x1x!tt.ptr<f32, 0>, #cluster1>
      %13 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<1x2048x!tt.ptr<f32, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<1x2048x!tt.ptr<f32, 0>, #cluster>
      %15 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<1x2048xf32, #cluster>}> : () -> tensor<1x128xvector<16xf32>, #cluster2>
      %16 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 64 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<1xi32, #cluster3>
      %17 = triton_xpu.convert_layout %16 : tensor<1xi32, #cluster3> -> tensor<1xi32, #ttg.slice<{dim = 1, parent = #cluster4}>>
      %18 = tt.expand_dims %17 {axis = 1 : i32} : tensor<1xi32, #ttg.slice<{dim = 1, parent = #cluster4}>> -> tensor<1x1xi32, #cluster4>
      %19 = triton_xpu.convert_layout %18 : tensor<1x1xi32, #cluster4> -> tensor<1x1xi32, #cluster1>
      %20 = tt.splat %11 : i32 -> tensor<1x1xi32, #cluster1>
      %21 = arith.addi %20, %19 : tensor<1x1xi32, #cluster1>
      %22 = arith.subi %cst_0, %21 : tensor<1x1xi32, #cluster1>
      %23 = arith.cmpi slt, %21, %cst_0 : tensor<1x1xi32, #cluster1>
      %24 = "triton_xpu.extract"(%23) <{index = 0 : i32}> : (tensor<1x1xi1, #cluster1>) -> i1
      scf.if %24 {
        %25 = triton_xpu.make_range   {end = 2048 : i32, realSize = 2048 : i32, start = 0 : i32} :   -> tensor<2048xi32, #cluster5>
        %26 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 64 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<2048xi32, #cluster5>
        %27 = triton_xpu.convert_layout %25 : tensor<2048xi32, #cluster5> -> tensor<2048xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
        %28 = tt.expand_dims %27 {axis = 0 : i32} : tensor<2048xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x2048xi32, #cluster>
        %29 = arith.subi %cst, %28 : tensor<1x2048xi32, #cluster>
        %30 = arith.cmpi slt, %28, %cst : tensor<1x2048xi32, #cluster>
        %31 = "triton_xpu.extract"(%30) <{index = 0 : i32}> : (tensor<1x2048xi1, #cluster>) -> i1
        scf.if %31 {
          %32 = arith.muli %21, %cst_0 : tensor<1x1xi32, #cluster1>
          %33 = triton_xpu.broadcast %32 : tensor<1x1xi32, #cluster1> -> tensor<1x2048xi32, #cluster1>
          %34 = triton_xpu.convert_layout %33 : tensor<1x2048xi32, #cluster1> -> tensor<1x2048xi32, #cluster>
          %35 = arith.addi %28, %34 : tensor<1x2048xi32, #cluster>
          %36 = tt.splat %arg0 : !tt.ptr<f32> -> tensor<1x2048x!tt.ptr<f32>, #cluster>
          %37 = tt.addptr %36, %35 : tensor<1x2048x!tt.ptr<f32>, #cluster>, tensor<1x2048xi32, #cluster>
          %38 = triton_xpu.broadcast %23 : tensor<1x1xi1, #cluster1> -> tensor<1x2048xi1, #cluster1>
          %39 = triton_xpu.convert_layout %38 : tensor<1x2048xi1, #cluster1> -> tensor<1x2048xi1, #cluster>
          %40 = arith.andi %30, %39 : tensor<1x2048xi1, #cluster>
          %41 = "triton_xpu.extract_slice"(%15) : (tensor<1x128xvector<16xf32>, #cluster2>) -> tensor<1x128xvector<16xf32>, #cluster2>
          %c0 = arith.constant 0 : index
          %c1 = arith.constant 1 : index
          scf.for %arg9 = %c0 to %c1 step %c1 {
            %64 = arith.index_cast %arg9 : index to i32
            "triton_xpu.store"(%14, %41, %64) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<f32, 0>, #cluster>, tensor<1x128xvector<16xf32>, #cluster2>, i32) -> ()
          }
          %42 = "triton_xpu.gm2lm"(%37, %29, %15, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<f32>, #cluster>, tensor<1x2048xi32, #cluster>, tensor<1x128xvector<16xf32>, #cluster2>, tensor<1x2048x!tt.ptr<f32, 0>, #cluster>) -> tensor<1x2048x!tt.ptr<f32, 0>, #cluster>
          %43 = tt.splat %arg1 : !tt.ptr<f32> -> tensor<1x2048x!tt.ptr<f32>, #cluster>
          %44 = tt.addptr %43, %28 : tensor<1x2048x!tt.ptr<f32>, #cluster>, tensor<1x2048xi32, #cluster>
          %45 = "triton_xpu.extract_slice"(%15) : (tensor<1x128xvector<16xf32>, #cluster2>) -> tensor<1x128xvector<16xf32>, #cluster2>
          scf.for %arg9 = %c0 to %c1 step %c1 {
            %64 = arith.index_cast %arg9 : index to i32
            "triton_xpu.store"(%13, %45, %64) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<f32, 0>, #cluster>, tensor<1x128xvector<16xf32>, #cluster2>, i32) -> ()
          }
          %46 = "triton_xpu.gm2lm"(%44, %29, %15, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<f32>, #cluster>, tensor<1x2048xi32, #cluster>, tensor<1x128xvector<16xf32>, #cluster2>, tensor<1x2048x!tt.ptr<f32, 0>, #cluster>) -> tensor<1x2048x!tt.ptr<f32, 0>, #cluster>
          llvm_xpu.mfence %c1_i32
          %47 = "triton_xpu.load"(%42, %40, %15) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<f32, 0>, #cluster>, tensor<1x2048xi1, #cluster>, tensor<1x128xvector<16xf32>, #cluster2>) -> tensor<1x128xvector<16xf32>, #cluster2>
          %48 = "triton_xpu.load"(%46, %30, %15) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<f32, 0>, #cluster>, tensor<1x2048xi1, #cluster>, tensor<1x128xvector<16xf32>, #cluster2>) -> tensor<1x128xvector<16xf32>, #cluster2>
          %49 = triton_xpu.vvmulf %47, %48 : tensor<1x128xvector<16xf32>, #cluster2>
          %50 = triton_xpu.vmacf %47, %48, %15 : tensor<1x128xvector<16xf32>, #cluster2>
          %51 = "triton_xpu.vselect"(%40, %50, %15) : (tensor<1x2048xi1, #cluster>, tensor<1x128xvector<16xf32>, #cluster2>, tensor<1x128xvector<16xf32>, #cluster2>) -> tensor<1x128xvector<16xf32>, #cluster2>
          %52 = "triton_xpu.reduce"(%51, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
          ^bb0(%arg9: vector<16xf32>, %arg10: vector<16xf32>):
            %64 = arith.addf %arg9, %arg10 : vector<16xf32>
            triton_xpu.reduce.return %64 : vector<16xf32>
          }) : (tensor<1x128xvector<16xf32>, #cluster2>, i32) -> tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster2}>>
          %53 = triton_xpu.convert_layout %52 : tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster2}>> -> tensor<1xf32, #cluster3>
          %54 = triton_xpu.convert_layout %53 : tensor<1xf32, #cluster3> -> tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster4}>>
          %55 = tt.expand_dims %54 {axis = 1 : i32} : tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster4}>> -> tensor<1x1xf32, #cluster4>
          %56 = triton_xpu.convert_layout %55 : tensor<1x1xf32, #cluster4> -> tensor<1x1xf32, #cluster1>
          %57 = tt.splat %arg2 : !tt.ptr<f32> -> tensor<1x1x!tt.ptr<f32>, #cluster1>
          %58 = tt.addptr %57, %21 : tensor<1x1x!tt.ptr<f32>, #cluster1>, tensor<1x1xi32, #cluster1>
          %59 = "triton_xpu.get_core_id"() : () -> i32
          %c64_i32 = arith.constant 64 : i32
          %60 = arith.remsi %59, %c64_i32 : i32
          %61 = arith.cmpi eq, %60, %c0_i32 : i32
          %62 = arith.cmpi slt, %59, %c64_i32 : i32
          %63 = arith.andi %61, %62 : i1
          scf.if %63 {
            "triton_xpu.store"(%12, %56, %23) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1x!tt.ptr<f32, 0>, #cluster1>, tensor<1x1xf32, #cluster1>, tensor<1x1xi1, #cluster1>) -> ()
            "triton_xpu.lm2gm"(%58, %22, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1x!tt.ptr<f32>, #cluster1>, tensor<1x1xi32, #cluster1>, tensor<1x1x!tt.ptr<f32, 0>, #cluster1>) -> ()
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
