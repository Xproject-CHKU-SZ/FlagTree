#cluster = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 256], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1, 16], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [1], groupsPerCluster = [64], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [256], coresPerGroup = [1], groupsPerCluster = [1], order = [0]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [1, 4], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster6 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster7 = #triton_xpu.cluster<{sizePerCore = [1, 64], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster8 = #triton_xpu.cluster<{sizePerCore = [64], coresPerGroup = [1], groupsPerCluster = [1], order = [0]}>
#cluster9 = #triton_xpu.cluster<{sizePerCore = [1, 8], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 64 : i32, "ttg.threads-per-warp" = 1 : i32} {
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
    %c64_i32 = arith.constant 64 : i32
    %cst = arith.constant dense<2048> : tensor<64x1xi32, #cluster>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1x256xf32, #cluster1>
    %c256_i32 = arith.constant 256 : i32
    %c2048_i32 = arith.constant 2048 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst_1 = arith.constant dense<2048> : tensor<1x256xi32, #cluster1>
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 64 : si64}> : () -> tensor<64x1x!tt.ptr<bf16, 0>, #cluster>
      %13 = "triton_xpu.alloca"() <{size = 256 : si64}> : () -> tensor<1x256x!tt.ptr<bf16, 0>, #cluster1>
      %14 = "triton_xpu.alloca"() <{size = 16384 : si64}> : () -> tensor<64x256x!tt.ptr<bf16, 0>, #cluster1>
      %15 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<64x256xf32, #cluster1>}> : () -> tensor<64x16xvector<16xf32>, #cluster2>
      %16 = arith.muli %11, %c64_i32 : i32
      %17 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 1 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<64xi32, #cluster3>
      %18 = triton_xpu.convert_layout %17 : tensor<64xi32, #cluster3> -> tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster}>>
      %19 = tt.expand_dims %18 {axis = 1 : i32} : tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<64x1xi32, #cluster>
      %20 = tt.splat %16 : i32 -> tensor<64x1xi32, #cluster>
      %21 = arith.addi %20, %19 : tensor<64x1xi32, #cluster>
      %22 = arith.subi %cst, %21 : tensor<64x1xi32, #cluster>
      %23 = arith.cmpi slt, %21, %cst : tensor<64x1xi32, #cluster>
      %24 = "triton_xpu.extract"(%23) <{index = 0 : i32}> : (tensor<64x1xi1, #cluster>) -> i1
      scf.if %24 {
        %25 = triton_xpu.make_range   {end = 256 : i32, realSize = 256 : i32, start = 0 : i32} :   -> tensor<256xi32, #cluster4>
        %26 = triton_xpu.convert_layout %25 : tensor<256xi32, #cluster4> -> tensor<256xi32, #ttg.slice<{dim = 0, parent = #cluster1}>>
        %27 = tt.expand_dims %26 {axis = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #cluster1}>> -> tensor<1x256xi32, #cluster1>
        %28 = arith.muli %21, %cst : tensor<64x1xi32, #cluster>
        %29 = triton_xpu.broadcast %28 : tensor<64x1xi32, #cluster> -> tensor<64x256xi32, #cluster1>
        %30 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<64x256x!tt.ptr<bf16>, #cluster1>
        %31 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x256x!tt.ptr<bf16>, #cluster1>
        %32 = "triton_xpu.alloca"() <{size = 16384 : si64}> : () -> tensor<64x256x!tt.ptr<f32, 0>, #cluster2>
        %c0 = arith.constant 0 : index
        %c4 = arith.constant 4 : index
        %c1 = arith.constant 1 : index
        scf.for %arg9 = %c0 to %c4 step %c1 {
          %48 = arith.index_cast %arg9 : index to i32
          %49 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<64x256xf32, #cluster1>}> : () -> tensor<64x4xvector<16xf32>, #cluster5>
          "triton_xpu.store"(%32, %49, %48) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f32, 0>, #cluster2>, tensor<64x4xvector<16xf32>, #cluster5>, i32) -> ()
        }
        %33 = scf.for %arg9 = %c0_i32 to %c2048_i32 step %c256_i32 iter_args(%arg10 = %15) -> (tensor<64x16xvector<16xf32>, #cluster2>)  : i32 {
          %48 = tt.splat %arg9 : i32 -> tensor<1x256xi32, #cluster1>
          %49 = arith.addi %48, %27 : tensor<1x256xi32, #cluster1>
          %50 = arith.subi %cst_1, %49 : tensor<1x256xi32, #cluster1>
          %51 = arith.cmpi slt, %49, %cst_1 : tensor<1x256xi32, #cluster1>
          %52 = "triton_xpu.extract"(%51) <{index = 0 : i32}> : (tensor<1x256xi1, #cluster1>) -> i1
          %53 = scf.if %52 -> (tensor<64x16xvector<16xf32>, #cluster2>) {
            %54 = triton_xpu.broadcast %49 : tensor<1x256xi32, #cluster1> -> tensor<64x256xi32, #cluster1>
            %55 = arith.addi %54, %29 : tensor<64x256xi32, #cluster1>
            %56 = tt.addptr %30, %55 : tensor<64x256x!tt.ptr<bf16>, #cluster1>, tensor<64x256xi32, #cluster1>
            %57 = "triton_xpu.extract_slice"(%15) : (tensor<64x16xvector<16xf32>, #cluster2>) -> tensor<64x2xvector<16xf32>, #cluster6>
            %c8 = arith.constant 8 : index
            scf.for %arg11 = %c0 to %c8 step %c1 {
              %65 = arith.index_cast %arg11 : index to i32
              "triton_xpu.store"(%14, %57, %65) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<bf16, 0>, #cluster1>, tensor<64x2xvector<16xf32>, #cluster6>, i32) -> ()
            }
            %58 = "triton_xpu.gm2lm"(%56, %50, %15, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<bf16>, #cluster1>, tensor<1x256xi32, #cluster1>, tensor<64x16xvector<16xf32>, #cluster2>, tensor<64x256x!tt.ptr<bf16, 0>, #cluster1>) -> tensor<64x256x!tt.ptr<bf16, 0>, #cluster1>
            %59 = tt.addptr %31, %49 : tensor<1x256x!tt.ptr<bf16>, #cluster1>, tensor<1x256xi32, #cluster1>
            %60 = "triton_xpu.extract_slice"(%cst_0) : (tensor<1x256xf32, #cluster1>) -> tensor<1x2xf32, #cluster6>
            %c128 = arith.constant 128 : index
            scf.for %arg11 = %c0 to %c128 step %c1 {
              %65 = arith.index_cast %arg11 : index to i32
              "triton_xpu.store"(%13, %60, %65) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<bf16, 0>, #cluster1>, tensor<1x2xf32, #cluster6>, i32) -> ()
            }
            %61 = "triton_xpu.gm2lm"(%59, %50, %cst_0, %13) <{SVOpt = false, atomicSim = false, cache = true, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<bf16>, #cluster1>, tensor<1x256xi32, #cluster1>, tensor<1x256xf32, #cluster1>, tensor<1x256x!tt.ptr<bf16, 0>, #cluster1>) -> tensor<1x256x!tt.ptr<bf16, 0>, #cluster1>
            %cst_2 = arith.constant dense<2048> : tensor<1x64xi32, #cluster7>
            %62 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<64x64x!tt.ptr<bf16>, #cluster7>
            %63 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x64x!tt.ptr<bf16>, #cluster7>
            %64 = tt.splat %arg9 : i32 -> tensor<1x64xi32, #cluster7>
            scf.for %arg11 = %c0 to %c4 step %c1 {
              %65 = arith.index_cast %arg11 : index to i32
              %66 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 1 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<64xi32, #cluster3>
              %67 = triton_xpu.convert_layout %66 : tensor<64xi32, #cluster3> -> tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster}>>
              %68 = tt.expand_dims %67 {axis = 1 : i32} : tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<64x1xi32, #cluster>
              %69 = arith.addi %20, %68 : tensor<64x1xi32, #cluster>
              %70 = arith.cmpi slt, %69, %cst : tensor<64x1xi32, #cluster>
              %71 = triton_xpu.make_range  %65 {end = 256 : i32, realSize = 256 : i32, start = 0 : i32} :  i32 -> tensor<64xi32, #cluster8>
              %72 = triton_xpu.convert_layout %71 : tensor<64xi32, #cluster8> -> tensor<64xi32, #ttg.slice<{dim = 0, parent = #cluster7}>>
              %73 = tt.expand_dims %72 {axis = 0 : i32} : tensor<64xi32, #ttg.slice<{dim = 0, parent = #cluster7}>> -> tensor<1x64xi32, #cluster7>
              %74 = arith.muli %69, %cst : tensor<64x1xi32, #cluster>
              %75 = triton_xpu.broadcast %74 : tensor<64x1xi32, #cluster> -> tensor<64x64xi32, #cluster7>
              %76 = triton_xpu.broadcast %70 : tensor<64x1xi1, #cluster> -> tensor<64x64xi1, #cluster7>
              %77 = arith.addi %64, %73 : tensor<1x64xi32, #cluster7>
              %78 = arith.cmpi slt, %77, %cst_2 : tensor<1x64xi32, #cluster7>
              %79 = "triton_xpu.extract"(%78) <{index = 0 : i32}> : (tensor<1x64xi1, #cluster7>) -> i1
              %80 = "triton_xpu.load"(%32, %65) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f32, 0>, #cluster2>, i32) -> tensor<64x4xvector<16xf32>, #cluster5>
              %81 = triton_xpu.broadcast %77 : tensor<1x64xi32, #cluster7> -> tensor<64x64xi32, #cluster7>
              %82 = arith.addi %81, %75 : tensor<64x64xi32, #cluster7>
              %83 = triton_xpu.broadcast %78 : tensor<1x64xi1, #cluster7> -> tensor<64x64xi1, #cluster7>
              %84 = arith.andi %83, %76 : tensor<64x64xi1, #cluster7>
              %85 = "triton_xpu.load"(%61, %78, %cst_0, %65) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x256x!tt.ptr<bf16, 0>, #cluster1>, tensor<1x64xi1, #cluster7>, tensor<1x256xf32, #cluster1>, i32) -> tensor<1x64xf32, #cluster7>
              %86 = triton_xpu.broadcast %85 : tensor<1x64xf32, #cluster7> -> tensor<64x4xvector<16xf32>, #cluster5>
              llvm_xpu.mfence %c1_i32
              %87 = "triton_xpu.load"(%58, %84, %15, %65) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<bf16, 0>, #cluster1>, tensor<64x64xi1, #cluster7>, tensor<64x16xvector<16xf32>, #cluster2>, i32) -> tensor<64x4xvector<16xf32>, #cluster5>
              %88 = triton_xpu.vvmulf %87, %86 : tensor<64x4xvector<16xf32>, #cluster5>
              %89 = triton_xpu.vmacf %87, %86, %80 : tensor<64x4xvector<16xf32>, #cluster5>
              %90 = "triton_xpu.vselect"(%84, %89, %80) : (tensor<64x64xi1, #cluster7>, tensor<64x4xvector<16xf32>, #cluster5>, tensor<64x4xvector<16xf32>, #cluster5>) -> tensor<64x4xvector<16xf32>, #cluster5>
              "triton_xpu.store"(%32, %90, %65) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f32, 0>, #cluster2>, tensor<64x4xvector<16xf32>, #cluster5>, i32) -> ()
            }
            scf.yield %15 : tensor<64x16xvector<16xf32>, #cluster2>
          } else {
            scf.yield %arg10 : tensor<64x16xvector<16xf32>, #cluster2>
          }
          scf.yield %53 : tensor<64x16xvector<16xf32>, #cluster2>
        }
        %34 = "triton_xpu.load"(%32) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f32, 0>, #cluster2>) -> tensor<64x16xvector<16xf32>, #cluster2>
        %35 = "triton_xpu.extract_slice"(%34) : (tensor<64x16xvector<16xf32>, #cluster2>) -> tensor<64x8xvector<16xf32>, #cluster9>
        %c2 = arith.constant 2 : index
        %36 = scf.for %arg9 = %c1 to %c2 step %c1 iter_args(%arg10 = %35) -> (tensor<64x8xvector<16xf32>, #cluster9>) {
          %48 = arith.index_cast %arg9 : index to i32
          %49 = "triton_xpu.load"(%32, %48) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x256x!tt.ptr<f32, 0>, #cluster2>, i32) -> tensor<64x8xvector<16xf32>, #cluster9>
          %50 = triton_xpu.vvaddf %arg10, %49 : tensor<64x8xvector<16xf32>, #cluster9>
          scf.yield %50 : tensor<64x8xvector<16xf32>, #cluster9>
        }
        %37 = "triton_xpu.reduce"(%36, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
        ^bb0(%arg9: vector<16xf32>, %arg10: vector<16xf32>):
          %48 = arith.addf %arg9, %arg10 : vector<16xf32>
          triton_xpu.reduce.return %48 : vector<16xf32>
        }) : (tensor<64x8xvector<16xf32>, #cluster9>, i32) -> tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster9}>>
        %38 = triton_xpu.convert_layout %37 : tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster9}>> -> tensor<64xf32, #cluster3>
        %39 = triton_xpu.convert_layout %38 : tensor<64xf32, #cluster3> -> tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster}>>
        %40 = tt.expand_dims %39 {axis = 1 : i32} : tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<64x1xf32, #cluster>
        %41 = tt.splat %arg2 : !tt.ptr<bf16> -> tensor<64x1x!tt.ptr<bf16>, #cluster>
        %42 = tt.addptr %41, %21 : tensor<64x1x!tt.ptr<bf16>, #cluster>, tensor<64x1xi32, #cluster>
        %43 = "triton_xpu.get_core_id"() : () -> i32
        %44 = arith.remsi %43, %c1_i32 : i32
        %45 = arith.cmpi eq, %44, %c0_i32 : i32
        %46 = arith.cmpi slt, %43, %c64_i32 : i32
        %47 = arith.andi %45, %46 : i1
        scf.if %47 {
          "triton_xpu.store"(%12, %40, %23) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x1x!tt.ptr<bf16, 0>, #cluster>, tensor<64x1xf32, #cluster>, tensor<64x1xi1, #cluster>) -> ()
          "triton_xpu.lm2gm"(%42, %22, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x1x!tt.ptr<bf16>, #cluster>, tensor<64x1xi32, #cluster>, tensor<64x1x!tt.ptr<bf16, 0>, #cluster>) -> ()
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
