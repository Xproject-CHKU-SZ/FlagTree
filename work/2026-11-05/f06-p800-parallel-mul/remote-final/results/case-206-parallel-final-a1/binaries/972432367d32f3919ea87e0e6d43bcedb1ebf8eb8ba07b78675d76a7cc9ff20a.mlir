#cluster = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 128], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1, 8], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [1], groupsPerCluster = [32], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [128], coresPerGroup = [2], groupsPerCluster = [1], order = [0]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster6 = #triton_xpu.cluster<{sizePerCore = [1, 64], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster7 = #triton_xpu.cluster<{sizePerCore = [64], coresPerGroup = [2], groupsPerCluster = [1], order = [0]}>
#cluster8 = #triton_xpu.cluster<{sizePerCore = [1, 4], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
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
    %c32_i32 = arith.constant 32 : i32
    %cst = arith.constant dense<2048> : tensor<32x1xi32, #cluster>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1x256xf32, #cluster1>
    %c256_i32 = arith.constant 256 : i32
    %c2048_i32 = arith.constant 2048 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst_1 = arith.constant dense<2048> : tensor<1x256xi32, #cluster1>
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 32 : si64}> : () -> tensor<32x1x!tt.ptr<bf16, 0>, #cluster>
      %13 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<1x256x!tt.ptr<bf16, 0>, #cluster1>
      %14 = "triton_xpu.alloca"() <{size = 8192 : si64}> : () -> tensor<32x256x!tt.ptr<bf16, 0>, #cluster1>
      %15 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<32x256xf32, #cluster1>}> : () -> tensor<32x16xvector<16xf32>, #cluster2>
      %16 = arith.muli %11, %c32_i32 : i32
      %17 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 2 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<32xi32, #cluster3>
      %18 = triton_xpu.convert_layout %17 : tensor<32xi32, #cluster3> -> tensor<32xi32, #ttg.slice<{dim = 1, parent = #cluster}>>
      %19 = tt.expand_dims %18 {axis = 1 : i32} : tensor<32xi32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<32x1xi32, #cluster>
      %20 = tt.splat %16 : i32 -> tensor<32x1xi32, #cluster>
      %21 = arith.addi %20, %19 : tensor<32x1xi32, #cluster>
      %22 = arith.subi %cst, %21 : tensor<32x1xi32, #cluster>
      %23 = arith.cmpi slt, %21, %cst : tensor<32x1xi32, #cluster>
      %24 = "triton_xpu.extract"(%23) <{index = 0 : i32}> : (tensor<32x1xi1, #cluster>) -> i1
      scf.if %24 {
        %25 = triton_xpu.make_range   {end = 256 : i32, realSize = 256 : i32, start = 0 : i32} :   -> tensor<256xi32, #cluster4>
        %26 = triton_xpu.convert_layout %25 : tensor<256xi32, #cluster4> -> tensor<256xi32, #ttg.slice<{dim = 0, parent = #cluster1}>>
        %27 = tt.expand_dims %26 {axis = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #cluster1}>> -> tensor<1x256xi32, #cluster1>
        %28 = arith.muli %21, %cst : tensor<32x1xi32, #cluster>
        %29 = triton_xpu.broadcast %28 : tensor<32x1xi32, #cluster> -> tensor<32x256xi32, #cluster1>
        %30 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<32x256x!tt.ptr<bf16>, #cluster1>
        %31 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x256x!tt.ptr<bf16>, #cluster1>
        %32 = "triton_xpu.alloca"() <{size = 8192 : si64}> : () -> tensor<32x256x!tt.ptr<f32, 0>, #cluster2>
        "triton_xpu.store"(%32, %15) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x256x!tt.ptr<f32, 0>, #cluster2>, tensor<32x16xvector<16xf32>, #cluster2>) -> ()
        %33 = scf.for %arg9 = %c0_i32 to %c2048_i32 step %c256_i32 iter_args(%arg10 = %15) -> (tensor<32x16xvector<16xf32>, #cluster2>)  : i32 {
          %46 = tt.splat %arg9 : i32 -> tensor<1x256xi32, #cluster1>
          %47 = arith.addi %46, %27 : tensor<1x256xi32, #cluster1>
          %48 = arith.subi %cst_1, %47 : tensor<1x256xi32, #cluster1>
          %49 = arith.cmpi slt, %47, %cst_1 : tensor<1x256xi32, #cluster1>
          %50 = "triton_xpu.extract"(%49) <{index = 0 : i32}> : (tensor<1x256xi1, #cluster1>) -> i1
          %51 = scf.if %50 -> (tensor<32x16xvector<16xf32>, #cluster2>) {
            %52 = triton_xpu.broadcast %47 : tensor<1x256xi32, #cluster1> -> tensor<32x256xi32, #cluster1>
            %53 = arith.addi %52, %29 : tensor<32x256xi32, #cluster1>
            %54 = tt.addptr %30, %53 : tensor<32x256x!tt.ptr<bf16>, #cluster1>, tensor<32x256xi32, #cluster1>
            %55 = "triton_xpu.extract_slice"(%15) : (tensor<32x16xvector<16xf32>, #cluster2>) -> tensor<32x4xvector<16xf32>, #cluster5>
            %c0 = arith.constant 0 : index
            %c4 = arith.constant 4 : index
            %c1 = arith.constant 1 : index
            scf.for %arg11 = %c0 to %c4 step %c1 {
              %63 = arith.index_cast %arg11 : index to i32
              "triton_xpu.store"(%14, %55, %63) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x256x!tt.ptr<bf16, 0>, #cluster1>, tensor<32x4xvector<16xf32>, #cluster5>, i32) -> ()
            }
            %56 = "triton_xpu.gm2lm"(%54, %48, %15, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<32x256x!tt.ptr<bf16>, #cluster1>, tensor<1x256xi32, #cluster1>, tensor<32x16xvector<16xf32>, #cluster2>, tensor<32x256x!tt.ptr<bf16, 0>, #cluster1>) -> tensor<32x256x!tt.ptr<bf16, 0>, #cluster1>
            %57 = tt.addptr %31, %47 : tensor<1x256x!tt.ptr<bf16>, #cluster1>, tensor<1x256xi32, #cluster1>
            %58 = "triton_xpu.extract_slice"(%cst_0) : (tensor<1x256xf32, #cluster1>) -> tensor<1x4xf32, #cluster5>
            %c64 = arith.constant 64 : index
            scf.for %arg11 = %c0 to %c64 step %c1 {
              %63 = arith.index_cast %arg11 : index to i32
              "triton_xpu.store"(%13, %58, %63) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<bf16, 0>, #cluster1>, tensor<1x4xf32, #cluster5>, i32) -> ()
            }
            %59 = "triton_xpu.gm2lm"(%57, %48, %cst_0, %13) <{SVOpt = false, atomicSim = false, cache = true, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<bf16>, #cluster1>, tensor<1x256xi32, #cluster1>, tensor<1x256xf32, #cluster1>, tensor<1x256x!tt.ptr<bf16, 0>, #cluster1>) -> tensor<1x256x!tt.ptr<bf16, 0>, #cluster1>
            %c2 = arith.constant 2 : index
            %cst_2 = arith.constant dense<2048> : tensor<1x128xi32, #cluster6>
            %60 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<32x128x!tt.ptr<bf16>, #cluster6>
            %61 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x128x!tt.ptr<bf16>, #cluster6>
            %62 = tt.splat %arg9 : i32 -> tensor<1x128xi32, #cluster6>
            scf.for %arg11 = %c0 to %c2 step %c1 {
              %63 = arith.index_cast %arg11 : index to i32
              %64 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 2 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<32xi32, #cluster3>
              %65 = triton_xpu.convert_layout %64 : tensor<32xi32, #cluster3> -> tensor<32xi32, #ttg.slice<{dim = 1, parent = #cluster}>>
              %66 = tt.expand_dims %65 {axis = 1 : i32} : tensor<32xi32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<32x1xi32, #cluster>
              %67 = arith.addi %20, %66 : tensor<32x1xi32, #cluster>
              %68 = arith.cmpi slt, %67, %cst : tensor<32x1xi32, #cluster>
              %69 = triton_xpu.make_range  %63 {end = 256 : i32, realSize = 256 : i32, start = 0 : i32} :  i32 -> tensor<128xi32, #cluster7>
              %70 = triton_xpu.convert_layout %69 : tensor<128xi32, #cluster7> -> tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster6}>>
              %71 = tt.expand_dims %70 {axis = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster6}>> -> tensor<1x128xi32, #cluster6>
              %72 = arith.muli %67, %cst : tensor<32x1xi32, #cluster>
              %73 = triton_xpu.broadcast %72 : tensor<32x1xi32, #cluster> -> tensor<32x128xi32, #cluster6>
              %74 = triton_xpu.broadcast %68 : tensor<32x1xi1, #cluster> -> tensor<32x128xi1, #cluster6>
              %75 = arith.addi %62, %71 : tensor<1x128xi32, #cluster6>
              %76 = arith.cmpi slt, %75, %cst_2 : tensor<1x128xi32, #cluster6>
              %77 = "triton_xpu.extract"(%76) <{index = 0 : i32}> : (tensor<1x128xi1, #cluster6>) -> i1
              %78 = "triton_xpu.load"(%32, %63) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x256x!tt.ptr<f32, 0>, #cluster2>, i32) -> tensor<32x8xvector<16xf32>, #cluster8>
              %79 = triton_xpu.broadcast %75 : tensor<1x128xi32, #cluster6> -> tensor<32x128xi32, #cluster6>
              %80 = arith.addi %79, %73 : tensor<32x128xi32, #cluster6>
              %81 = triton_xpu.broadcast %76 : tensor<1x128xi1, #cluster6> -> tensor<32x128xi1, #cluster6>
              %82 = arith.andi %81, %74 : tensor<32x128xi1, #cluster6>
              %83 = "triton_xpu.load"(%59, %76, %cst_0, %63) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<bf16, 0>, #cluster1>, tensor<1x128xi1, #cluster6>, tensor<1x256xf32, #cluster1>, i32) -> tensor<1x128xf32, #cluster6>
              %84 = triton_xpu.broadcast %83 : tensor<1x128xf32, #cluster6> -> tensor<32x8xvector<16xf32>, #cluster8>
              llvm_xpu.mfence %c1_i32
              %85 = "triton_xpu.load"(%56, %82, %15, %63) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x256x!tt.ptr<bf16, 0>, #cluster1>, tensor<32x128xi1, #cluster6>, tensor<32x16xvector<16xf32>, #cluster2>, i32) -> tensor<32x8xvector<16xf32>, #cluster8>
              %86 = triton_xpu.vvmulf %85, %84 : tensor<32x8xvector<16xf32>, #cluster8>
              %87 = triton_xpu.vmacf %85, %84, %78 : tensor<32x8xvector<16xf32>, #cluster8>
              %88 = "triton_xpu.vselect"(%82, %87, %78) : (tensor<32x128xi1, #cluster6>, tensor<32x8xvector<16xf32>, #cluster8>, tensor<32x8xvector<16xf32>, #cluster8>) -> tensor<32x8xvector<16xf32>, #cluster8>
              "triton_xpu.store"(%32, %88, %63) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x256x!tt.ptr<f32, 0>, #cluster2>, tensor<32x8xvector<16xf32>, #cluster8>, i32) -> ()
            }
            scf.yield %15 : tensor<32x16xvector<16xf32>, #cluster2>
          } else {
            scf.yield %arg10 : tensor<32x16xvector<16xf32>, #cluster2>
          }
          scf.yield %51 : tensor<32x16xvector<16xf32>, #cluster2>
        }
        %34 = "triton_xpu.load"(%32) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x256x!tt.ptr<f32, 0>, #cluster2>) -> tensor<32x16xvector<16xf32>, #cluster2>
        %35 = "triton_xpu.reduce"(%34, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
        ^bb0(%arg9: vector<16xf32>, %arg10: vector<16xf32>):
          %46 = arith.addf %arg9, %arg10 : vector<16xf32>
          triton_xpu.reduce.return %46 : vector<16xf32>
        }) : (tensor<32x16xvector<16xf32>, #cluster2>, i32) -> tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster2}>>
        %36 = triton_xpu.convert_layout %35 : tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster2}>> -> tensor<32xf32, #cluster3>
        %37 = triton_xpu.convert_layout %36 : tensor<32xf32, #cluster3> -> tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster}>>
        %38 = tt.expand_dims %37 {axis = 1 : i32} : tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<32x1xf32, #cluster>
        %39 = tt.splat %arg2 : !tt.ptr<bf16> -> tensor<32x1x!tt.ptr<bf16>, #cluster>
        %40 = tt.addptr %39, %21 : tensor<32x1x!tt.ptr<bf16>, #cluster>, tensor<32x1xi32, #cluster>
        %41 = "triton_xpu.get_core_id"() : () -> i32
        %c2_i32 = arith.constant 2 : i32
        %42 = arith.remsi %41, %c2_i32 : i32
        %43 = arith.cmpi eq, %42, %c0_i32 : i32
        %c64_i32 = arith.constant 64 : i32
        %44 = arith.cmpi slt, %41, %c64_i32 : i32
        %45 = arith.andi %43, %44 : i1
        scf.if %45 {
          "triton_xpu.store"(%12, %38, %23) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x1x!tt.ptr<bf16, 0>, #cluster>, tensor<32x1xf32, #cluster>, tensor<32x1xi1, #cluster>) -> ()
          "triton_xpu.lm2gm"(%40, %22, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x1x!tt.ptr<bf16>, #cluster>, tensor<32x1xi32, #cluster>, tensor<32x1x!tt.ptr<bf16, 0>, #cluster>) -> ()
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
