#cluster = #triton_xpu.cluster<{sizePerCore = [1, 128], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1, 8], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [1], groupsPerCluster = [32], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [128], coresPerGroup = [2], groupsPerCluster = [1], order = [0]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster6 = #triton_xpu.cluster<{sizePerCore = [1, 64], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster7 = #triton_xpu.cluster<{sizePerCore = [64], coresPerGroup = [2], groupsPerCluster = [1], order = [0]}>
#cluster8 = #triton_xpu.cluster<{sizePerCore = [1, 4], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 32 : i32, "ttg.threads-per-warp" = 2 : i32} {
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
    %c256_i32 = arith.constant 256 : i32
    %c2048_i32 = arith.constant 2048 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst = arith.constant dense<0.000000e+00> : tensor<1x256xf32, #cluster>
    %cst_0 = arith.constant dense<2048> : tensor<1x256xi32, #cluster>
    %c64_i32 = arith.constant 64 : i32
    %cst_1 = arith.constant dense<2048> : tensor<32x1xi32, #cluster1>
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 32 : si64}> : () -> tensor<32x1x!tt.ptr<f32, 0>, #cluster1>
      %13 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<1x256x!tt.ptr<f32, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 8192 : si64}> : () -> tensor<32x256x!tt.ptr<f32, 0>, #cluster>
      %15 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<32x256xf32, #cluster>}> : () -> tensor<32x16xvector<16xf32>, #cluster2>
      %16 = arith.muli %11, %c64_i32 : i32
      %17 = tt.splat %16 : i32 -> tensor<32x1xi32, #cluster1>
      scf.for %arg9 = %c0 to %c2 step %c1 {
        %18 = arith.index_cast %arg9 : index to i32
        %19 = "triton_xpu.out_range"(%18) <{groupsize = 2 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<32xi32, #cluster3>
        %20 = triton_xpu.convert_layout %19 : tensor<32xi32, #cluster3> -> tensor<32xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
        %21 = tt.expand_dims %20 {axis = 1 : i32} : tensor<32xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<32x1xi32, #cluster1>
        %22 = arith.addi %17, %21 : tensor<32x1xi32, #cluster1>
        %23 = arith.subi %cst_1, %22 : tensor<32x1xi32, #cluster1>
        %24 = arith.cmpi slt, %22, %cst_1 : tensor<32x1xi32, #cluster1>
        %25 = "triton_xpu.extract"(%24) <{index = 0 : i32}> : (tensor<32x1xi1, #cluster1>) -> i1
        scf.if %25 {
          %26 = triton_xpu.make_range   {end = 256 : i32, realSize = 256 : i32, start = 0 : i32} :   -> tensor<256xi32, #cluster4>
          %27 = triton_xpu.convert_layout %26 : tensor<256xi32, #cluster4> -> tensor<256xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
          %28 = tt.expand_dims %27 {axis = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x256xi32, #cluster>
          %29 = arith.muli %22, %cst_1 : tensor<32x1xi32, #cluster1>
          %30 = triton_xpu.broadcast %29 : tensor<32x1xi32, #cluster1> -> tensor<32x256xi32, #cluster>
          %31 = tt.splat %arg0 : !tt.ptr<f32> -> tensor<32x256x!tt.ptr<f32>, #cluster>
          %32 = tt.splat %arg1 : !tt.ptr<f32> -> tensor<1x256x!tt.ptr<f32>, #cluster>
          %33 = "triton_xpu.alloca"() <{size = 8192 : si64}> : () -> tensor<32x256x!tt.ptr<f32, 0>, #cluster2>
          "triton_xpu.store"(%33, %15) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x256x!tt.ptr<f32, 0>, #cluster2>, tensor<32x16xvector<16xf32>, #cluster2>) -> ()
          %34 = scf.for %arg10 = %c0_i32 to %c2048_i32 step %c256_i32 iter_args(%arg11 = %15) -> (tensor<32x16xvector<16xf32>, #cluster2>)  : i32 {
            %47 = tt.splat %arg10 : i32 -> tensor<1x256xi32, #cluster>
            %48 = arith.addi %47, %28 : tensor<1x256xi32, #cluster>
            %49 = arith.subi %cst_0, %48 : tensor<1x256xi32, #cluster>
            %50 = arith.cmpi slt, %48, %cst_0 : tensor<1x256xi32, #cluster>
            %51 = "triton_xpu.extract"(%50) <{index = 0 : i32}> : (tensor<1x256xi1, #cluster>) -> i1
            %52 = scf.if %51 -> (tensor<32x16xvector<16xf32>, #cluster2>) {
              %53 = triton_xpu.broadcast %48 : tensor<1x256xi32, #cluster> -> tensor<32x256xi32, #cluster>
              %54 = arith.addi %53, %30 : tensor<32x256xi32, #cluster>
              %55 = tt.addptr %31, %54 : tensor<32x256x!tt.ptr<f32>, #cluster>, tensor<32x256xi32, #cluster>
              %56 = "triton_xpu.extract_slice"(%15) : (tensor<32x16xvector<16xf32>, #cluster2>) -> tensor<32x4xvector<16xf32>, #cluster5>
              %c4 = arith.constant 4 : index
              scf.for %arg12 = %c0 to %c4 step %c1 {
                %64 = arith.index_cast %arg12 : index to i32
                "triton_xpu.store"(%14, %56, %64) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x256x!tt.ptr<f32, 0>, #cluster>, tensor<32x4xvector<16xf32>, #cluster5>, i32) -> ()
              }
              %57 = "triton_xpu.gm2lm"(%55, %49, %15, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<32x256x!tt.ptr<f32>, #cluster>, tensor<1x256xi32, #cluster>, tensor<32x16xvector<16xf32>, #cluster2>, tensor<32x256x!tt.ptr<f32, 0>, #cluster>) -> tensor<32x256x!tt.ptr<f32, 0>, #cluster>
              %58 = tt.addptr %32, %48 : tensor<1x256x!tt.ptr<f32>, #cluster>, tensor<1x256xi32, #cluster>
              %59 = "triton_xpu.extract_slice"(%cst) : (tensor<1x256xf32, #cluster>) -> tensor<1x4xf32, #cluster5>
              %c64 = arith.constant 64 : index
              scf.for %arg12 = %c0 to %c64 step %c1 {
                %64 = arith.index_cast %arg12 : index to i32
                "triton_xpu.store"(%13, %59, %64) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<f32, 0>, #cluster>, tensor<1x4xf32, #cluster5>, i32) -> ()
              }
              %60 = "triton_xpu.gm2lm"(%58, %49, %cst, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<f32>, #cluster>, tensor<1x256xi32, #cluster>, tensor<1x256xf32, #cluster>, tensor<1x256x!tt.ptr<f32, 0>, #cluster>) -> tensor<1x256x!tt.ptr<f32, 0>, #cluster>
              %cst_2 = arith.constant dense<2048> : tensor<1x128xi32, #cluster6>
              %61 = tt.splat %arg0 : !tt.ptr<f32> -> tensor<32x128x!tt.ptr<f32>, #cluster6>
              %62 = tt.splat %arg1 : !tt.ptr<f32> -> tensor<1x128x!tt.ptr<f32>, #cluster6>
              %63 = tt.splat %arg10 : i32 -> tensor<1x128xi32, #cluster6>
              scf.for %arg12 = %c0 to %c2 step %c1 {
                %64 = arith.index_cast %arg12 : index to i32
                %65 = "triton_xpu.out_range"(%18) <{groupsize = 2 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<32xi32, #cluster3>
                %66 = triton_xpu.convert_layout %65 : tensor<32xi32, #cluster3> -> tensor<32xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
                %67 = tt.expand_dims %66 {axis = 1 : i32} : tensor<32xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<32x1xi32, #cluster1>
                %68 = arith.addi %17, %67 : tensor<32x1xi32, #cluster1>
                %69 = arith.cmpi slt, %68, %cst_1 : tensor<32x1xi32, #cluster1>
                %70 = triton_xpu.make_range  %64 {end = 256 : i32, realSize = 256 : i32, start = 0 : i32} :  i32 -> tensor<128xi32, #cluster7>
                %71 = triton_xpu.convert_layout %70 : tensor<128xi32, #cluster7> -> tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster6}>>
                %72 = tt.expand_dims %71 {axis = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster6}>> -> tensor<1x128xi32, #cluster6>
                %73 = arith.muli %68, %cst_1 : tensor<32x1xi32, #cluster1>
                %74 = triton_xpu.broadcast %73 : tensor<32x1xi32, #cluster1> -> tensor<32x128xi32, #cluster6>
                %75 = triton_xpu.broadcast %69 : tensor<32x1xi1, #cluster1> -> tensor<32x128xi1, #cluster6>
                %76 = arith.addi %63, %72 : tensor<1x128xi32, #cluster6>
                %77 = arith.cmpi slt, %76, %cst_2 : tensor<1x128xi32, #cluster6>
                %78 = "triton_xpu.extract"(%77) <{index = 0 : i32}> : (tensor<1x128xi1, #cluster6>) -> i1
                %79 = "triton_xpu.load"(%33, %64) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x256x!tt.ptr<f32, 0>, #cluster2>, i32) -> tensor<32x8xvector<16xf32>, #cluster8>
                %80 = triton_xpu.broadcast %76 : tensor<1x128xi32, #cluster6> -> tensor<32x128xi32, #cluster6>
                %81 = arith.addi %80, %74 : tensor<32x128xi32, #cluster6>
                %82 = triton_xpu.broadcast %77 : tensor<1x128xi1, #cluster6> -> tensor<32x128xi1, #cluster6>
                %83 = arith.andi %82, %75 : tensor<32x128xi1, #cluster6>
                %84 = "triton_xpu.load"(%60, %77, %cst, %64) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<f32, 0>, #cluster>, tensor<1x128xi1, #cluster6>, tensor<1x256xf32, #cluster>, i32) -> tensor<1x128xf32, #cluster6>
                %85 = triton_xpu.broadcast %84 : tensor<1x128xf32, #cluster6> -> tensor<32x8xvector<16xf32>, #cluster8>
                llvm_xpu.mfence %c1_i32
                %86 = "triton_xpu.load"(%57, %83, %15, %64) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x256x!tt.ptr<f32, 0>, #cluster>, tensor<32x128xi1, #cluster6>, tensor<32x16xvector<16xf32>, #cluster2>, i32) -> tensor<32x8xvector<16xf32>, #cluster8>
                %87 = triton_xpu.vvmulf %86, %85 : tensor<32x8xvector<16xf32>, #cluster8>
                %88 = triton_xpu.vmacf %86, %85, %79 : tensor<32x8xvector<16xf32>, #cluster8>
                %89 = "triton_xpu.vselect"(%83, %88, %79) : (tensor<32x128xi1, #cluster6>, tensor<32x8xvector<16xf32>, #cluster8>, tensor<32x8xvector<16xf32>, #cluster8>) -> tensor<32x8xvector<16xf32>, #cluster8>
                "triton_xpu.store"(%33, %89, %64) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x256x!tt.ptr<f32, 0>, #cluster2>, tensor<32x8xvector<16xf32>, #cluster8>, i32) -> ()
              }
              scf.yield %15 : tensor<32x16xvector<16xf32>, #cluster2>
            } else {
              scf.yield %arg11 : tensor<32x16xvector<16xf32>, #cluster2>
            }
            scf.yield %52 : tensor<32x16xvector<16xf32>, #cluster2>
          }
          %35 = "triton_xpu.load"(%33) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x256x!tt.ptr<f32, 0>, #cluster2>) -> tensor<32x16xvector<16xf32>, #cluster2>
          %36 = "triton_xpu.reduce"(%35, %18) <{axis = 1 : i32, loopNum = 2 : i32}> ({
          ^bb0(%arg10: vector<16xf32>, %arg11: vector<16xf32>):
            %47 = arith.addf %arg10, %arg11 : vector<16xf32>
            triton_xpu.reduce.return %47 : vector<16xf32>
          }) : (tensor<32x16xvector<16xf32>, #cluster2>, i32) -> tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster2}>>
          %37 = triton_xpu.convert_layout %36 : tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster2}>> -> tensor<32xf32, #cluster3>
          %38 = triton_xpu.convert_layout %37 : tensor<32xf32, #cluster3> -> tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster1}>>
          %39 = tt.expand_dims %38 {axis = 1 : i32} : tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<32x1xf32, #cluster1>
          %40 = tt.splat %arg2 : !tt.ptr<f32> -> tensor<32x1x!tt.ptr<f32>, #cluster1>
          %41 = tt.addptr %40, %22 : tensor<32x1x!tt.ptr<f32>, #cluster1>, tensor<32x1xi32, #cluster1>
          %42 = "triton_xpu.get_core_id"() : () -> i32
          %c2_i32 = arith.constant 2 : i32
          %43 = arith.remsi %42, %c2_i32 : i32
          %44 = arith.cmpi eq, %43, %c0_i32 : i32
          %45 = arith.cmpi slt, %42, %c64_i32 : i32
          %46 = arith.andi %44, %45 : i1
          scf.if %46 {
            "triton_xpu.store"(%12, %39, %24) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x1x!tt.ptr<f32, 0>, #cluster1>, tensor<32x1xf32, #cluster1>, tensor<32x1xi1, #cluster1>) -> ()
            "triton_xpu.lm2gm"(%41, %23, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x1x!tt.ptr<f32>, #cluster1>, tensor<32x1xi32, #cluster1>, tensor<32x1x!tt.ptr<f32, 0>, #cluster1>) -> ()
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
