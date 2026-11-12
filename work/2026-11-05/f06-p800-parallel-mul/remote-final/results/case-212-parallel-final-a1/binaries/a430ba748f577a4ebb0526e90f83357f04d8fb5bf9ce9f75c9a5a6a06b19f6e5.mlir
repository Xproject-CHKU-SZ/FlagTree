#cluster = #triton_xpu.cluster<{sizePerCore = [1, 128], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [128], coresPerGroup = [1], groupsPerCluster = [1], order = [0]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [1, 8], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [1], groupsPerCluster = [64], order = [0]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster6 = #triton_xpu.cluster<{sizePerCore = [1, 64], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
#cluster7 = #triton_xpu.cluster<{sizePerCore = [64], coresPerGroup = [1], groupsPerCluster = [1], order = [0]}>
#cluster8 = #triton_xpu.cluster<{sizePerCore = [1, 4], coresPerGroup = [1, 1], groupsPerCluster = [64, 1], order = [0, 1]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 64 : i32, "ttg.threads-per-warp" = 1 : i32} {
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
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant dense<0.000000e+00> : tensor<1x128xf16, #cluster>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<64x128xf16, #cluster>
    %c2048_i32 = arith.constant 2048 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst_1 = arith.constant dense<2048> : tensor<1x128xi32, #cluster>
    %c128_i32 = arith.constant 128 : i32
    %cst_2 = arith.constant dense<2048> : tensor<64x1xi32, #cluster1>
    %9 = triton_xpu.make_range   {end = 128 : i32, realSize = 128 : i32, start = 0 : i32} :   -> tensor<128xi32, #cluster2>
    scf.for %arg8 = %6 to %7 step %8 {
      %10 = arith.index_cast %arg8 : index to i32
      %11 = arith.divsi %10, %arg7 : i32
      %12 = arith.divsi %11, %arg6 : i32
      %13 = "triton_xpu.alloca"() <{size = 64 : si64}> : () -> tensor<64x1x!tt.ptr<f16, 0>, #cluster1>
      %14 = "triton_xpu.alloca"() <{size = 128 : si64}> : () -> tensor<1x128x!tt.ptr<f16, 0>, #cluster>
      %15 = "triton_xpu.alloca"() <{size = 8192 : si64}> : () -> tensor<64x128x!tt.ptr<f16, 0>, #cluster>
      %16 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<64x128xf32, #cluster>}> : () -> tensor<64x8xvector<16xf32>, #cluster3>
      %17 = arith.muli %12, %c128_i32 : i32
      %18 = tt.splat %17 : i32 -> tensor<64x1xi32, #cluster1>
      scf.for %arg9 = %c0 to %c2 step %c1 {
        %19 = arith.index_cast %arg9 : index to i32
        %20 = "triton_xpu.out_range"(%19) <{groupsize = 1 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<64xi32, #cluster4>
        %21 = triton_xpu.convert_layout %20 : tensor<64xi32, #cluster4> -> tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
        %22 = tt.expand_dims %21 {axis = 1 : i32} : tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<64x1xi32, #cluster1>
        %23 = arith.addi %18, %22 : tensor<64x1xi32, #cluster1>
        %24 = arith.subi %cst_2, %23 : tensor<64x1xi32, #cluster1>
        %25 = arith.cmpi slt, %23, %cst_2 : tensor<64x1xi32, #cluster1>
        %26 = "triton_xpu.extract"(%25) <{index = 0 : i32}> : (tensor<64x1xi1, #cluster1>) -> i1
        scf.if %26 {
          %27 = triton_xpu.convert_layout %9 : tensor<128xi32, #cluster2> -> tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
          %28 = tt.expand_dims %27 {axis = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x128xi32, #cluster>
          %29 = arith.muli %23, %cst_2 : tensor<64x1xi32, #cluster1>
          %30 = triton_xpu.broadcast %29 : tensor<64x1xi32, #cluster1> -> tensor<64x128xi32, #cluster>
          %31 = tt.splat %arg0 : !tt.ptr<f16> -> tensor<64x128x!tt.ptr<f16>, #cluster>
          %32 = tt.splat %arg1 : !tt.ptr<f16> -> tensor<1x128x!tt.ptr<f16>, #cluster>
          %33 = "triton_xpu.alloca"() <{size = 8192 : si64}> : () -> tensor<64x128x!tt.ptr<f32, 0>, #cluster3>
          "triton_xpu.store"(%33, %16) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x128x!tt.ptr<f32, 0>, #cluster3>, tensor<64x8xvector<16xf32>, #cluster3>) -> ()
          %34 = scf.for %arg10 = %c0_i32 to %c2048_i32 step %c128_i32 iter_args(%arg11 = %16) -> (tensor<64x8xvector<16xf32>, #cluster3>)  : i32 {
            %48 = tt.splat %arg10 : i32 -> tensor<1x128xi32, #cluster>
            %49 = arith.addi %48, %28 : tensor<1x128xi32, #cluster>
            %50 = arith.subi %cst_1, %49 : tensor<1x128xi32, #cluster>
            %51 = arith.cmpi slt, %49, %cst_1 : tensor<1x128xi32, #cluster>
            %52 = "triton_xpu.extract"(%51) <{index = 0 : i32}> : (tensor<1x128xi1, #cluster>) -> i1
            %53 = scf.if %52 -> (tensor<64x8xvector<16xf32>, #cluster3>) {
              %54 = triton_xpu.broadcast %49 : tensor<1x128xi32, #cluster> -> tensor<64x128xi32, #cluster>
              %55 = arith.addi %54, %30 : tensor<64x128xi32, #cluster>
              %56 = tt.addptr %31, %55 : tensor<64x128x!tt.ptr<f16>, #cluster>, tensor<64x128xi32, #cluster>
              %57 = "triton_xpu.extract_slice"(%cst_0) : (tensor<64x128xf16, #cluster>) -> tensor<64x2xf16, #cluster5>
              %c64 = arith.constant 64 : index
              scf.for %arg12 = %c0 to %c64 step %c1 {
                %65 = arith.index_cast %arg12 : index to i32
                "triton_xpu.store"(%15, %57, %65) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x128x!tt.ptr<f16, 0>, #cluster>, tensor<64x2xf16, #cluster5>, i32) -> ()
              }
              %58 = "triton_xpu.gm2lm"(%56, %50, %cst_0, %15) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<64x128x!tt.ptr<f16>, #cluster>, tensor<1x128xi32, #cluster>, tensor<64x128xf16, #cluster>, tensor<64x128x!tt.ptr<f16, 0>, #cluster>) -> tensor<64x128x!tt.ptr<f16, 0>, #cluster>
              %59 = tt.addptr %32, %49 : tensor<1x128x!tt.ptr<f16>, #cluster>, tensor<1x128xi32, #cluster>
              %60 = "triton_xpu.extract_slice"(%cst) : (tensor<1x128xf16, #cluster>) -> tensor<1x2xf16, #cluster5>
              scf.for %arg12 = %c0 to %c64 step %c1 {
                %65 = arith.index_cast %arg12 : index to i32
                "triton_xpu.store"(%14, %60, %65) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<f16, 0>, #cluster>, tensor<1x2xf16, #cluster5>, i32) -> ()
              }
              %61 = "triton_xpu.gm2lm"(%59, %50, %cst, %14) <{SVOpt = false, atomicSim = false, cache = true, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<f16>, #cluster>, tensor<1x128xi32, #cluster>, tensor<1x128xf16, #cluster>, tensor<1x128x!tt.ptr<f16, 0>, #cluster>) -> tensor<1x128x!tt.ptr<f16, 0>, #cluster>
              %cst_3 = arith.constant dense<2048> : tensor<1x64xi32, #cluster6>
              %62 = tt.splat %arg0 : !tt.ptr<f16> -> tensor<64x64x!tt.ptr<f16>, #cluster6>
              %63 = tt.splat %arg1 : !tt.ptr<f16> -> tensor<1x64x!tt.ptr<f16>, #cluster6>
              %64 = tt.splat %arg10 : i32 -> tensor<1x64xi32, #cluster6>
              scf.for %arg12 = %c0 to %c2 step %c1 {
                %65 = arith.index_cast %arg12 : index to i32
                %66 = triton_xpu.make_range  %65 {end = 128 : i32, realSize = 128 : i32, start = 0 : i32} :  i32 -> tensor<64xi32, #cluster7>
                %67 = "triton_xpu.out_range"(%19) <{groupsize = 1 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<64xi32, #cluster4>
                %68 = triton_xpu.convert_layout %67 : tensor<64xi32, #cluster4> -> tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
                %69 = tt.expand_dims %68 {axis = 1 : i32} : tensor<64xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<64x1xi32, #cluster1>
                %70 = arith.addi %18, %69 : tensor<64x1xi32, #cluster1>
                %71 = arith.cmpi slt, %70, %cst_2 : tensor<64x1xi32, #cluster1>
                %72 = triton_xpu.convert_layout %66 : tensor<64xi32, #cluster7> -> tensor<64xi32, #ttg.slice<{dim = 0, parent = #cluster6}>>
                %73 = tt.expand_dims %72 {axis = 0 : i32} : tensor<64xi32, #ttg.slice<{dim = 0, parent = #cluster6}>> -> tensor<1x64xi32, #cluster6>
                %74 = arith.muli %70, %cst_2 : tensor<64x1xi32, #cluster1>
                %75 = triton_xpu.broadcast %74 : tensor<64x1xi32, #cluster1> -> tensor<64x64xi32, #cluster6>
                %76 = triton_xpu.broadcast %71 : tensor<64x1xi1, #cluster1> -> tensor<64x64xi1, #cluster6>
                %77 = arith.addi %64, %73 : tensor<1x64xi32, #cluster6>
                %78 = arith.cmpi slt, %77, %cst_3 : tensor<1x64xi32, #cluster6>
                %79 = "triton_xpu.extract"(%78) <{index = 0 : i32}> : (tensor<1x64xi1, #cluster6>) -> i1
                %80 = "triton_xpu.load"(%33, %65) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x128x!tt.ptr<f32, 0>, #cluster3>, i32) -> tensor<64x4xvector<16xf32>, #cluster8>
                %81 = triton_xpu.broadcast %77 : tensor<1x64xi32, #cluster6> -> tensor<64x64xi32, #cluster6>
                %82 = arith.addi %81, %75 : tensor<64x64xi32, #cluster6>
                %83 = triton_xpu.broadcast %78 : tensor<1x64xi1, #cluster6> -> tensor<64x64xi1, #cluster6>
                %84 = arith.andi %83, %76 : tensor<64x64xi1, #cluster6>
                llvm_xpu.mfence %c1_i32
                %85 = "triton_xpu.load"(%58, %84, %cst_0, %65) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x128x!tt.ptr<f16, 0>, #cluster>, tensor<64x64xi1, #cluster6>, tensor<64x128xf16, #cluster>, i32) -> tensor<64x2xvector<32xf16>, #cluster5>
                %86 = "triton_xpu.load"(%61, %78, %cst, %65) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<f16, 0>, #cluster>, tensor<1x64xi1, #cluster6>, tensor<1x128xf16, #cluster>, i32) -> tensor<1x64xf16, #cluster6>
                %87 = "triton_xpu.vextf"(%85) : (tensor<64x2xvector<32xf16>, #cluster5>) -> tensor<64x4xvector<16xf32>, #cluster8>
                %88 = arith.extf %86 : tensor<1x64xf16, #cluster6> to tensor<1x64xf32, #cluster6>
                %89 = triton_xpu.broadcast %88 : tensor<1x64xf32, #cluster6> -> tensor<64x4xvector<16xf32>, #cluster8>
                %90 = triton_xpu.vvmulf %87, %89 : tensor<64x4xvector<16xf32>, #cluster8>
                %91 = "triton_xpu.vtruncf"(%90) : (tensor<64x4xvector<16xf32>, #cluster8>) -> tensor<64x2xvector<32xf16>, #cluster5>
                %92 = "triton_xpu.vextf"(%91) : (tensor<64x2xvector<32xf16>, #cluster5>) -> tensor<64x4xvector<16xf32>, #cluster8>
                %93 = triton_xpu.vvaddf %80, %92 : tensor<64x4xvector<16xf32>, #cluster8>
                %94 = "triton_xpu.vselect"(%84, %93, %80) : (tensor<64x64xi1, #cluster6>, tensor<64x4xvector<16xf32>, #cluster8>, tensor<64x4xvector<16xf32>, #cluster8>) -> tensor<64x4xvector<16xf32>, #cluster8>
                "triton_xpu.store"(%33, %94, %65) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x128x!tt.ptr<f32, 0>, #cluster3>, tensor<64x4xvector<16xf32>, #cluster8>, i32) -> ()
              }
              scf.yield %16 : tensor<64x8xvector<16xf32>, #cluster3>
            } else {
              scf.yield %arg11 : tensor<64x8xvector<16xf32>, #cluster3>
            }
            scf.yield %53 : tensor<64x8xvector<16xf32>, #cluster3>
          }
          %35 = "triton_xpu.load"(%33) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x128x!tt.ptr<f32, 0>, #cluster3>) -> tensor<64x8xvector<16xf32>, #cluster3>
          %36 = "triton_xpu.reduce"(%35, %19) <{axis = 1 : i32, loopNum = 2 : i32}> ({
          ^bb0(%arg10: vector<16xf32>, %arg11: vector<16xf32>):
            %48 = arith.addf %arg10, %arg11 : vector<16xf32>
            triton_xpu.reduce.return %48 : vector<16xf32>
          }) : (tensor<64x8xvector<16xf32>, #cluster3>, i32) -> tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster3}>>
          %37 = triton_xpu.convert_layout %36 : tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster3}>> -> tensor<64xf32, #cluster4>
          %38 = triton_xpu.convert_layout %37 : tensor<64xf32, #cluster4> -> tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster1}>>
          %39 = tt.expand_dims %38 {axis = 1 : i32} : tensor<64xf32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<64x1xf32, #cluster1>
          %40 = tt.splat %arg2 : !tt.ptr<f16> -> tensor<64x1x!tt.ptr<f16>, #cluster1>
          %41 = tt.addptr %40, %23 : tensor<64x1x!tt.ptr<f16>, #cluster1>, tensor<64x1xi32, #cluster1>
          %42 = arith.truncf %39 : tensor<64x1xf32, #cluster1> to tensor<64x1xf16, #cluster1>
          %43 = "triton_xpu.get_core_id"() : () -> i32
          %44 = arith.remsi %43, %c1_i32 : i32
          %45 = arith.cmpi eq, %44, %c0_i32 : i32
          %c64_i32 = arith.constant 64 : i32
          %46 = arith.cmpi slt, %43, %c64_i32 : i32
          %47 = arith.andi %45, %46 : i1
          scf.if %47 {
            "triton_xpu.store"(%13, %42, %25) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x1x!tt.ptr<f16, 0>, #cluster1>, tensor<64x1xf16, #cluster1>, tensor<64x1xi1, #cluster1>) -> ()
            "triton_xpu.lm2gm"(%41, %24, %13) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<64x1x!tt.ptr<f16>, #cluster1>, tensor<64x1xi32, #cluster1>, tensor<64x1x!tt.ptr<f16, 0>, #cluster1>) -> ()
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
