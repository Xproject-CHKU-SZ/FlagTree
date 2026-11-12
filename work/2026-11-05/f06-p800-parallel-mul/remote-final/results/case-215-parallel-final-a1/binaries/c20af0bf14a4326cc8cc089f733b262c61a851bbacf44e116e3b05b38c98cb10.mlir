#cluster = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 256], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1, 16], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [1], groupsPerCluster = [32], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [256], coresPerGroup = [2], groupsPerCluster = [1], order = [0]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [1, 4], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster6 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster7 = #triton_xpu.cluster<{sizePerCore = [1, 64], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster8 = #triton_xpu.cluster<{sizePerCore = [64], coresPerGroup = [2], groupsPerCluster = [1], order = [0]}>
#cluster9 = #triton_xpu.cluster<{sizePerCore = [1, 8], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 32 : i32, "ttg.threads-per-warp" = 2 : i32} {
  tt.func public @triton_red_fused_mul_sum_0(%arg0: !tt.ptr<bf16> {tt.divisibility = 16 : i32}, %arg1: !tt.ptr<bf16> {tt.divisibility = 16 : i32}, %arg2: !tt.ptr<bf16> {tt.divisibility = 16 : i32}, %arg3: i32 {tt.divisibility = 16 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32, %arg6: i32, %arg7: i32) attributes {noinline = false} {
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
    %cst = arith.constant dense<2048> : tensor<32x1xi32, #cluster>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1x512xf32, #cluster1>
    %c512_i32 = arith.constant 512 : i32
    %c2048_i32 = arith.constant 2048 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst_1 = arith.constant dense<2048> : tensor<1x512xi32, #cluster1>
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 32 : si64}> : () -> tensor<32x1x!tt.ptr<bf16, 0>, #cluster>
      %13 = "triton_xpu.alloca"() <{size = 512 : si64}> : () -> tensor<1x512x!tt.ptr<bf16, 0>, #cluster1>
      %14 = "triton_xpu.alloca"() <{size = 16384 : si64}> : () -> tensor<32x512x!tt.ptr<bf16, 0>, #cluster1>
      %15 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<32x512xf32, #cluster1>}> : () -> tensor<32x32xvector<16xf32>, #cluster2>
      %16 = arith.muli %11, %c64_i32 : i32
      %17 = tt.splat %16 : i32 -> tensor<32x1xi32, #cluster>
      scf.for %arg9 = %c0 to %c2 step %c1 {
        %18 = arith.index_cast %arg9 : index to i32
        %19 = "triton_xpu.out_range"(%18) <{groupsize = 2 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<32xi32, #cluster3>
        %20 = triton_xpu.convert_layout %19 : tensor<32xi32, #cluster3> -> tensor<32xi32, #ttg.slice<{dim = 1, parent = #cluster}>>
        %21 = tt.expand_dims %20 {axis = 1 : i32} : tensor<32xi32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<32x1xi32, #cluster>
        %22 = arith.addi %17, %21 : tensor<32x1xi32, #cluster>
        %23 = arith.subi %cst, %22 : tensor<32x1xi32, #cluster>
        %24 = arith.cmpi slt, %22, %cst : tensor<32x1xi32, #cluster>
        %25 = "triton_xpu.extract"(%24) <{index = 0 : i32}> : (tensor<32x1xi1, #cluster>) -> i1
        scf.if %25 {
          %26 = triton_xpu.make_range   {end = 512 : i32, realSize = 512 : i32, start = 0 : i32} :   -> tensor<512xi32, #cluster4>
          %27 = triton_xpu.convert_layout %26 : tensor<512xi32, #cluster4> -> tensor<512xi32, #ttg.slice<{dim = 0, parent = #cluster1}>>
          %28 = tt.expand_dims %27 {axis = 0 : i32} : tensor<512xi32, #ttg.slice<{dim = 0, parent = #cluster1}>> -> tensor<1x512xi32, #cluster1>
          %29 = arith.muli %22, %cst : tensor<32x1xi32, #cluster>
          %30 = triton_xpu.broadcast %29 : tensor<32x1xi32, #cluster> -> tensor<32x512xi32, #cluster1>
          %31 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<32x512x!tt.ptr<bf16>, #cluster1>
          %32 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x512x!tt.ptr<bf16>, #cluster1>
          %33 = "triton_xpu.alloca"() <{size = 16384 : si64}> : () -> tensor<32x512x!tt.ptr<f32, 0>, #cluster2>
          %c4 = arith.constant 4 : index
          scf.for %arg10 = %c0 to %c4 step %c1 {
            %49 = arith.index_cast %arg10 : index to i32
            %50 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<32x512xf32, #cluster1>}> : () -> tensor<32x8xvector<16xf32>, #cluster5>
            "triton_xpu.store"(%33, %50, %49) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x512x!tt.ptr<f32, 0>, #cluster2>, tensor<32x8xvector<16xf32>, #cluster5>, i32) -> ()
          }
          %34 = scf.for %arg10 = %c0_i32 to %c2048_i32 step %c512_i32 iter_args(%arg11 = %15) -> (tensor<32x32xvector<16xf32>, #cluster2>)  : i32 {
            %49 = tt.splat %arg10 : i32 -> tensor<1x512xi32, #cluster1>
            %50 = arith.addi %49, %28 : tensor<1x512xi32, #cluster1>
            %51 = arith.subi %cst_1, %50 : tensor<1x512xi32, #cluster1>
            %52 = arith.cmpi slt, %50, %cst_1 : tensor<1x512xi32, #cluster1>
            %53 = "triton_xpu.extract"(%52) <{index = 0 : i32}> : (tensor<1x512xi1, #cluster1>) -> i1
            %54 = scf.if %53 -> (tensor<32x32xvector<16xf32>, #cluster2>) {
              %55 = triton_xpu.broadcast %50 : tensor<1x512xi32, #cluster1> -> tensor<32x512xi32, #cluster1>
              %56 = arith.addi %55, %30 : tensor<32x512xi32, #cluster1>
              %57 = tt.addptr %31, %56 : tensor<32x512x!tt.ptr<bf16>, #cluster1>, tensor<32x512xi32, #cluster1>
              %58 = "triton_xpu.extract_slice"(%15) : (tensor<32x32xvector<16xf32>, #cluster2>) -> tensor<32x4xvector<16xf32>, #cluster6>
              %c8 = arith.constant 8 : index
              scf.for %arg12 = %c0 to %c8 step %c1 {
                %66 = arith.index_cast %arg12 : index to i32
                "triton_xpu.store"(%14, %58, %66) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x512x!tt.ptr<bf16, 0>, #cluster1>, tensor<32x4xvector<16xf32>, #cluster6>, i32) -> ()
              }
              %59 = "triton_xpu.gm2lm"(%57, %51, %15, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<32x512x!tt.ptr<bf16>, #cluster1>, tensor<1x512xi32, #cluster1>, tensor<32x32xvector<16xf32>, #cluster2>, tensor<32x512x!tt.ptr<bf16, 0>, #cluster1>) -> tensor<32x512x!tt.ptr<bf16, 0>, #cluster1>
              %60 = tt.addptr %32, %50 : tensor<1x512x!tt.ptr<bf16>, #cluster1>, tensor<1x512xi32, #cluster1>
              %61 = "triton_xpu.extract_slice"(%cst_0) : (tensor<1x512xf32, #cluster1>) -> tensor<1x4xf32, #cluster6>
              %c128 = arith.constant 128 : index
              scf.for %arg12 = %c0 to %c128 step %c1 {
                %66 = arith.index_cast %arg12 : index to i32
                "triton_xpu.store"(%13, %61, %66) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x512x!tt.ptr<bf16, 0>, #cluster1>, tensor<1x4xf32, #cluster6>, i32) -> ()
              }
              %62 = "triton_xpu.gm2lm"(%60, %51, %cst_0, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x512x!tt.ptr<bf16>, #cluster1>, tensor<1x512xi32, #cluster1>, tensor<1x512xf32, #cluster1>, tensor<1x512x!tt.ptr<bf16, 0>, #cluster1>) -> tensor<1x512x!tt.ptr<bf16, 0>, #cluster1>
              %cst_2 = arith.constant dense<2048> : tensor<1x128xi32, #cluster7>
              %63 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<32x128x!tt.ptr<bf16>, #cluster7>
              %64 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x128x!tt.ptr<bf16>, #cluster7>
              %65 = tt.splat %arg10 : i32 -> tensor<1x128xi32, #cluster7>
              scf.for %arg12 = %c0 to %c4 step %c1 {
                %66 = arith.index_cast %arg12 : index to i32
                %67 = "triton_xpu.out_range"(%18) <{groupsize = 2 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<32xi32, #cluster3>
                %68 = triton_xpu.convert_layout %67 : tensor<32xi32, #cluster3> -> tensor<32xi32, #ttg.slice<{dim = 1, parent = #cluster}>>
                %69 = tt.expand_dims %68 {axis = 1 : i32} : tensor<32xi32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<32x1xi32, #cluster>
                %70 = arith.addi %17, %69 : tensor<32x1xi32, #cluster>
                %71 = arith.cmpi slt, %70, %cst : tensor<32x1xi32, #cluster>
                %72 = triton_xpu.make_range  %66 {end = 512 : i32, realSize = 512 : i32, start = 0 : i32} :  i32 -> tensor<128xi32, #cluster8>
                %73 = triton_xpu.convert_layout %72 : tensor<128xi32, #cluster8> -> tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster7}>>
                %74 = tt.expand_dims %73 {axis = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster7}>> -> tensor<1x128xi32, #cluster7>
                %75 = arith.muli %70, %cst : tensor<32x1xi32, #cluster>
                %76 = triton_xpu.broadcast %75 : tensor<32x1xi32, #cluster> -> tensor<32x128xi32, #cluster7>
                %77 = triton_xpu.broadcast %71 : tensor<32x1xi1, #cluster> -> tensor<32x128xi1, #cluster7>
                %78 = arith.addi %65, %74 : tensor<1x128xi32, #cluster7>
                %79 = arith.cmpi slt, %78, %cst_2 : tensor<1x128xi32, #cluster7>
                %80 = "triton_xpu.extract"(%79) <{index = 0 : i32}> : (tensor<1x128xi1, #cluster7>) -> i1
                %81 = "triton_xpu.load"(%33, %66) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x512x!tt.ptr<f32, 0>, #cluster2>, i32) -> tensor<32x8xvector<16xf32>, #cluster5>
                %82 = triton_xpu.broadcast %78 : tensor<1x128xi32, #cluster7> -> tensor<32x128xi32, #cluster7>
                %83 = arith.addi %82, %76 : tensor<32x128xi32, #cluster7>
                %84 = triton_xpu.broadcast %79 : tensor<1x128xi1, #cluster7> -> tensor<32x128xi1, #cluster7>
                %85 = arith.andi %84, %77 : tensor<32x128xi1, #cluster7>
                %86 = "triton_xpu.load"(%62, %79, %cst_0, %66) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x512x!tt.ptr<bf16, 0>, #cluster1>, tensor<1x128xi1, #cluster7>, tensor<1x512xf32, #cluster1>, i32) -> tensor<1x128xf32, #cluster7>
                %87 = triton_xpu.broadcast %86 : tensor<1x128xf32, #cluster7> -> tensor<32x8xvector<16xf32>, #cluster5>
                llvm_xpu.mfence %c1_i32
                %88 = "triton_xpu.load"(%59, %85, %15, %66) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x512x!tt.ptr<bf16, 0>, #cluster1>, tensor<32x128xi1, #cluster7>, tensor<32x32xvector<16xf32>, #cluster2>, i32) -> tensor<32x8xvector<16xf32>, #cluster5>
                %89 = triton_xpu.vvmulf %88, %87 : tensor<32x8xvector<16xf32>, #cluster5>
                %90 = triton_xpu.vmacf %88, %87, %81 : tensor<32x8xvector<16xf32>, #cluster5>
                %91 = "triton_xpu.vselect"(%85, %90, %81) : (tensor<32x128xi1, #cluster7>, tensor<32x8xvector<16xf32>, #cluster5>, tensor<32x8xvector<16xf32>, #cluster5>) -> tensor<32x8xvector<16xf32>, #cluster5>
                "triton_xpu.store"(%33, %91, %66) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x512x!tt.ptr<f32, 0>, #cluster2>, tensor<32x8xvector<16xf32>, #cluster5>, i32) -> ()
              }
              scf.yield %15 : tensor<32x32xvector<16xf32>, #cluster2>
            } else {
              scf.yield %arg11 : tensor<32x32xvector<16xf32>, #cluster2>
            }
            scf.yield %54 : tensor<32x32xvector<16xf32>, #cluster2>
          }
          %35 = "triton_xpu.load"(%33) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x512x!tt.ptr<f32, 0>, #cluster2>) -> tensor<32x32xvector<16xf32>, #cluster2>
          %36 = "triton_xpu.extract_slice"(%35) : (tensor<32x32xvector<16xf32>, #cluster2>) -> tensor<32x16xvector<16xf32>, #cluster9>
          %37 = scf.for %arg10 = %c1 to %c2 step %c1 iter_args(%arg11 = %36) -> (tensor<32x16xvector<16xf32>, #cluster9>) {
            %49 = arith.index_cast %arg10 : index to i32
            %50 = "triton_xpu.load"(%33, %49) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x512x!tt.ptr<f32, 0>, #cluster2>, i32) -> tensor<32x16xvector<16xf32>, #cluster9>
            %51 = triton_xpu.vvaddf %arg11, %50 : tensor<32x16xvector<16xf32>, #cluster9>
            scf.yield %51 : tensor<32x16xvector<16xf32>, #cluster9>
          }
          %38 = "triton_xpu.reduce"(%37, %18) <{axis = 1 : i32, loopNum = 2 : i32}> ({
          ^bb0(%arg10: vector<16xf32>, %arg11: vector<16xf32>):
            %49 = arith.addf %arg10, %arg11 : vector<16xf32>
            triton_xpu.reduce.return %49 : vector<16xf32>
          }) : (tensor<32x16xvector<16xf32>, #cluster9>, i32) -> tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster9}>>
          %39 = triton_xpu.convert_layout %38 : tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster9}>> -> tensor<32xf32, #cluster3>
          %40 = triton_xpu.convert_layout %39 : tensor<32xf32, #cluster3> -> tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster}>>
          %41 = tt.expand_dims %40 {axis = 1 : i32} : tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<32x1xf32, #cluster>
          %42 = tt.splat %arg2 : !tt.ptr<bf16> -> tensor<32x1x!tt.ptr<bf16>, #cluster>
          %43 = tt.addptr %42, %22 : tensor<32x1x!tt.ptr<bf16>, #cluster>, tensor<32x1xi32, #cluster>
          %44 = "triton_xpu.get_core_id"() : () -> i32
          %c2_i32 = arith.constant 2 : i32
          %45 = arith.remsi %44, %c2_i32 : i32
          %46 = arith.cmpi eq, %45, %c0_i32 : i32
          %47 = arith.cmpi slt, %44, %c64_i32 : i32
          %48 = arith.andi %46, %47 : i1
          scf.if %48 {
            "triton_xpu.store"(%12, %41, %24) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x1x!tt.ptr<bf16, 0>, #cluster>, tensor<32x1xf32, #cluster>, tensor<32x1xi1, #cluster>) -> ()
            "triton_xpu.lm2gm"(%43, %23, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x1x!tt.ptr<bf16>, #cluster>, tensor<32x1xi32, #cluster>, tensor<32x1x!tt.ptr<bf16, 0>, #cluster>) -> ()
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
