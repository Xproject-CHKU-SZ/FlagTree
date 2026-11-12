#cluster = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 8], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [1], groupsPerCluster = [16], order = [0]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [8], coresPerGroup = [4], groupsPerCluster = [1], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [4], groupsPerCluster = [1], order = [0]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 16 : i32, "ttg.threads-per-warp" = 4 : i32} {
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
    %c16_i32 = arith.constant 16 : i32
    %cst = arith.constant dense<2048> : tensor<16x1xi32, #cluster>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<16x32xf32, #cluster1>
    %cst_1 = arith.constant dense<2048> : tensor<1x32xi32, #cluster1>
    %c0_i32 = arith.constant 0 : i32
    %c2048_i32 = arith.constant 2048 : i32
    %c32_i32 = arith.constant 32 : i32
    %cst_2 = arith.constant dense<0.000000e+00> : tensor<16x32xf16, #cluster1>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<1x32xf16, #cluster1>
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 16 : si64}> : () -> tensor<16x1x!tt.ptr<f16, 0>, #cluster>
      %13 = "triton_xpu.alloca"() <{size = 32 : si64}> : () -> tensor<1x32x!tt.ptr<f16, 0>, #cluster1>
      %14 = "triton_xpu.alloca"() <{size = 512 : si64}> : () -> tensor<16x32x!tt.ptr<f16, 0>, #cluster1>
      %15 = arith.muli %11, %c16_i32 : i32
      %16 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 4 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<16xi32, #cluster2>
      %17 = triton_xpu.convert_layout %16 : tensor<16xi32, #cluster2> -> tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster}>>
      %18 = tt.expand_dims %17 {axis = 1 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<16x1xi32, #cluster>
      %19 = tt.splat %15 : i32 -> tensor<16x1xi32, #cluster>
      %20 = arith.addi %19, %18 : tensor<16x1xi32, #cluster>
      %21 = arith.subi %cst, %20 : tensor<16x1xi32, #cluster>
      %22 = arith.cmpi slt, %20, %cst : tensor<16x1xi32, #cluster>
      %23 = "triton_xpu.extract"(%22) <{index = 0 : i32}> : (tensor<16x1xi1, #cluster>) -> i1
      scf.if %23 {
        %24 = triton_xpu.make_range   {end = 32 : i32, realSize = 32 : i32, start = 0 : i32} :   -> tensor<32xi32, #cluster3>
        %25 = triton_xpu.convert_layout %24 : tensor<32xi32, #cluster3> -> tensor<32xi32, #ttg.slice<{dim = 0, parent = #cluster1}>>
        %26 = tt.expand_dims %25 {axis = 0 : i32} : tensor<32xi32, #ttg.slice<{dim = 0, parent = #cluster1}>> -> tensor<1x32xi32, #cluster1>
        %27 = arith.muli %20, %cst : tensor<16x1xi32, #cluster>
        %28 = triton_xpu.broadcast %27 : tensor<16x1xi32, #cluster> -> tensor<16x32xi32, #cluster1>
        %29 = tt.splat %arg0 : !tt.ptr<f16> -> tensor<16x32x!tt.ptr<f16>, #cluster1>
        %30 = tt.splat %arg1 : !tt.ptr<f16> -> tensor<1x32x!tt.ptr<f16>, #cluster1>
        %31 = "triton_xpu.alloca"() <{size = 512 : si64}> : () -> tensor<16x32x!tt.ptr<f32, 0>, #cluster1>
        %c0 = arith.constant 0 : index
        %c4 = arith.constant 4 : index
        %c1 = arith.constant 1 : index
        %cst_4 = arith.constant dense<0.000000e+00> : tensor<16x8xf32, #cluster4>
        scf.for %arg9 = %c0 to %c4 step %c1 {
          %48 = arith.index_cast %arg9 : index to i32
          "triton_xpu.store"(%31, %cst_4, %48) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x32x!tt.ptr<f32, 0>, #cluster1>, tensor<16x8xf32, #cluster4>, i32) -> ()
        }
        %32 = scf.for %arg9 = %c0_i32 to %c2048_i32 step %c32_i32 iter_args(%arg10 = %cst_0) -> (tensor<16x32xf32, #cluster1>)  : i32 {
          %48 = tt.splat %arg9 : i32 -> tensor<1x32xi32, #cluster1>
          %49 = arith.addi %48, %26 : tensor<1x32xi32, #cluster1>
          %50 = arith.subi %cst_1, %49 : tensor<1x32xi32, #cluster1>
          %51 = arith.cmpi slt, %49, %cst_1 : tensor<1x32xi32, #cluster1>
          %52 = "triton_xpu.extract"(%51) <{index = 0 : i32}> : (tensor<1x32xi1, #cluster1>) -> i1
          %53 = scf.if %52 -> (tensor<16x32xf32, #cluster1>) {
            %54 = triton_xpu.broadcast %49 : tensor<1x32xi32, #cluster1> -> tensor<16x32xi32, #cluster1>
            %55 = arith.addi %54, %28 : tensor<16x32xi32, #cluster1>
            %56 = tt.addptr %29, %55 : tensor<16x32x!tt.ptr<f16>, #cluster1>, tensor<16x32xi32, #cluster1>
            %57 = "triton_xpu.extract_slice"(%cst_2) : (tensor<16x32xf16, #cluster1>) -> tensor<16x8xf16, #cluster4>
            scf.for %arg11 = %c0 to %c4 step %c1 {
              %65 = arith.index_cast %arg11 : index to i32
              "triton_xpu.store"(%14, %57, %65) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x32x!tt.ptr<f16, 0>, #cluster1>, tensor<16x8xf16, #cluster4>, i32) -> ()
            }
            %58 = "triton_xpu.gm2lm"(%56, %50, %cst_2, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<16x32x!tt.ptr<f16>, #cluster1>, tensor<1x32xi32, #cluster1>, tensor<16x32xf16, #cluster1>, tensor<16x32x!tt.ptr<f16, 0>, #cluster1>) -> tensor<16x32x!tt.ptr<f16, 0>, #cluster1>
            %59 = tt.addptr %30, %49 : tensor<1x32x!tt.ptr<f16>, #cluster1>, tensor<1x32xi32, #cluster1>
            %60 = "triton_xpu.extract_slice"(%cst_3) : (tensor<1x32xf16, #cluster1>) -> tensor<1x8xf16, #cluster4>
            scf.for %arg11 = %c0 to %c4 step %c1 {
              %65 = arith.index_cast %arg11 : index to i32
              "triton_xpu.store"(%13, %60, %65) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x32x!tt.ptr<f16, 0>, #cluster1>, tensor<1x8xf16, #cluster4>, i32) -> ()
            }
            %61 = "triton_xpu.gm2lm"(%59, %50, %cst_3, %13) <{SVOpt = false, atomicSim = false, cache = true, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x32x!tt.ptr<f16>, #cluster1>, tensor<1x32xi32, #cluster1>, tensor<1x32xf16, #cluster1>, tensor<1x32x!tt.ptr<f16, 0>, #cluster1>) -> tensor<1x32x!tt.ptr<f16, 0>, #cluster1>
            %cst_5 = arith.constant dense<2048> : tensor<1x8xi32, #cluster4>
            %62 = tt.splat %arg0 : !tt.ptr<f16> -> tensor<16x8x!tt.ptr<f16>, #cluster4>
            %63 = tt.splat %arg1 : !tt.ptr<f16> -> tensor<1x8x!tt.ptr<f16>, #cluster4>
            %64 = tt.splat %arg9 : i32 -> tensor<1x8xi32, #cluster4>
            scf.for %arg11 = %c0 to %c4 step %c1 {
              %65 = arith.index_cast %arg11 : index to i32
              %66 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 4 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<16xi32, #cluster2>
              %67 = triton_xpu.convert_layout %66 : tensor<16xi32, #cluster2> -> tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster}>>
              %68 = tt.expand_dims %67 {axis = 1 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<16x1xi32, #cluster>
              %69 = arith.addi %19, %68 : tensor<16x1xi32, #cluster>
              %70 = arith.cmpi slt, %69, %cst : tensor<16x1xi32, #cluster>
              %71 = triton_xpu.make_range  %65 {end = 32 : i32, realSize = 32 : i32, start = 0 : i32} :  i32 -> tensor<8xi32, #cluster5>
              %72 = triton_xpu.convert_layout %71 : tensor<8xi32, #cluster5> -> tensor<8xi32, #ttg.slice<{dim = 0, parent = #cluster4}>>
              %73 = tt.expand_dims %72 {axis = 0 : i32} : tensor<8xi32, #ttg.slice<{dim = 0, parent = #cluster4}>> -> tensor<1x8xi32, #cluster4>
              %74 = arith.muli %69, %cst : tensor<16x1xi32, #cluster>
              %75 = triton_xpu.broadcast %74 : tensor<16x1xi32, #cluster> -> tensor<16x8xi32, #cluster4>
              %76 = triton_xpu.broadcast %70 : tensor<16x1xi1, #cluster> -> tensor<16x8xi1, #cluster4>
              %77 = arith.addi %64, %73 : tensor<1x8xi32, #cluster4>
              %78 = arith.cmpi slt, %77, %cst_5 : tensor<1x8xi32, #cluster4>
              %79 = "triton_xpu.extract"(%78) <{index = 0 : i32}> : (tensor<1x8xi1, #cluster4>) -> i1
              %80 = "triton_xpu.load"(%31, %65) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x32x!tt.ptr<f32, 0>, #cluster1>, i32) -> tensor<16x8xf32, #cluster4>
              %81 = triton_xpu.broadcast %77 : tensor<1x8xi32, #cluster4> -> tensor<16x8xi32, #cluster4>
              %82 = arith.addi %81, %75 : tensor<16x8xi32, #cluster4>
              %83 = triton_xpu.broadcast %78 : tensor<1x8xi1, #cluster4> -> tensor<16x8xi1, #cluster4>
              %84 = arith.andi %83, %76 : tensor<16x8xi1, #cluster4>
              llvm_xpu.mfence %c1_i32
              %85 = "triton_xpu.load"(%58, %84, %cst_2, %65) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x32x!tt.ptr<f16, 0>, #cluster1>, tensor<16x8xi1, #cluster4>, tensor<16x32xf16, #cluster1>, i32) -> tensor<16x8xf16, #cluster4>
              %86 = arith.extf %85 : tensor<16x8xf16, #cluster4> to tensor<16x8xf32, #cluster4>
              %87 = "triton_xpu.load"(%61, %78, %cst_3, %65) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x32x!tt.ptr<f16, 0>, #cluster1>, tensor<1x8xi1, #cluster4>, tensor<1x32xf16, #cluster1>, i32) -> tensor<1x8xf16, #cluster4>
              %88 = arith.extf %87 : tensor<1x8xf16, #cluster4> to tensor<1x8xf32, #cluster4>
              %89 = triton_xpu.broadcast %88 : tensor<1x8xf32, #cluster4> -> tensor<16x8xf32, #cluster4>
              %90 = arith.mulf %86, %89 : tensor<16x8xf32, #cluster4>
              %91 = arith.truncf %90 : tensor<16x8xf32, #cluster4> to tensor<16x8xf16, #cluster4>
              %92 = arith.extf %91 : tensor<16x8xf16, #cluster4> to tensor<16x8xf32, #cluster4>
              %93 = arith.addf %80, %92 : tensor<16x8xf32, #cluster4>
              %94 = arith.select %84, %93, %80 : tensor<16x8xi1, #cluster4>, tensor<16x8xf32, #cluster4>
              "triton_xpu.store"(%31, %94, %65) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x32x!tt.ptr<f32, 0>, #cluster1>, tensor<16x8xf32, #cluster4>, i32) -> ()
            }
            scf.yield %cst_0 : tensor<16x32xf32, #cluster1>
          } else {
            scf.yield %arg10 : tensor<16x32xf32, #cluster1>
          }
          scf.yield %53 : tensor<16x32xf32, #cluster1>
        }
        %33 = "triton_xpu.load"(%31) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x32x!tt.ptr<f32, 0>, #cluster1>) -> tensor<16x32xf32, #cluster1>
        %34 = "triton_xpu.extract_slice"(%33) : (tensor<16x32xf32, #cluster1>) -> tensor<16x8xf32, #cluster4>
        %35 = scf.for %arg9 = %c1 to %c4 step %c1 iter_args(%arg10 = %34) -> (tensor<16x8xf32, #cluster4>) {
          %48 = arith.index_cast %arg9 : index to i32
          %49 = "triton_xpu.load"(%31, %48) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x32x!tt.ptr<f32, 0>, #cluster1>, i32) -> tensor<16x8xf32, #cluster4>
          %50 = arith.addf %arg10, %49 : tensor<16x8xf32, #cluster4>
          scf.yield %50 : tensor<16x8xf32, #cluster4>
        }
        %36 = "triton_xpu.reduce"(%35, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
        ^bb0(%arg9: f32, %arg10: f32):
          %48 = arith.addf %arg9, %arg10 : f32
          triton_xpu.reduce.return %48 : f32
        }) : (tensor<16x8xf32, #cluster4>, i32) -> tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster4}>>
        %37 = triton_xpu.convert_layout %36 : tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster4}>> -> tensor<16xf32, #cluster2>
        %38 = triton_xpu.convert_layout %37 : tensor<16xf32, #cluster2> -> tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster}>>
        %39 = tt.expand_dims %38 {axis = 1 : i32} : tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<16x1xf32, #cluster>
        %40 = tt.splat %arg2 : !tt.ptr<f16> -> tensor<16x1x!tt.ptr<f16>, #cluster>
        %41 = tt.addptr %40, %20 : tensor<16x1x!tt.ptr<f16>, #cluster>, tensor<16x1xi32, #cluster>
        %42 = arith.truncf %39 : tensor<16x1xf32, #cluster> to tensor<16x1xf16, #cluster>
        %43 = "triton_xpu.get_core_id"() : () -> i32
        %c4_i32 = arith.constant 4 : i32
        %44 = arith.remsi %43, %c4_i32 : i32
        %45 = arith.cmpi eq, %44, %c0_i32 : i32
        %c64_i32 = arith.constant 64 : i32
        %46 = arith.cmpi slt, %43, %c64_i32 : i32
        %47 = arith.andi %45, %46 : i1
        scf.if %47 {
          "triton_xpu.store"(%12, %42, %22) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1x!tt.ptr<f16, 0>, #cluster>, tensor<16x1xf16, #cluster>, tensor<16x1xi1, #cluster>) -> ()
          "triton_xpu.lm2gm"(%41, %21, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1x!tt.ptr<f16>, #cluster>, tensor<16x1xi32, #cluster>, tensor<16x1x!tt.ptr<f16, 0>, #cluster>) -> ()
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
