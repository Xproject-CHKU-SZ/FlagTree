#cluster = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 64], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 64], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [64, 1], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 1 : i32, "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @triton_unk_fused_0(%arg0: !tt.ptr<bf16> {tt.divisibility = 16 : i32}, %arg1: !tt.ptr<bf16> {tt.divisibility = 16 : i32}, %arg2: !tt.ptr<bf16> {tt.divisibility = 16 : i32}, %arg3: i32 {tt.divisibility = 16 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32, %arg6: i32, %arg7: i32) attributes {noinline = false} {
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
    %cst = arith.constant dense<16> : tensor<1x128xi32, #cluster>
    %cst_0 = arith.constant dense<1> : tensor<1x128xi32, #cluster>
    %cst_1 = arith.constant dense<32767> : tensor<1x128xi32, #cluster>
    %cst_2 = arith.constant dense<-65536> : tensor<1x128xi32, #cluster>
    %cst_3 = arith.constant dense<2147483647> : tensor<1x128xi32, #cluster>
    %cst_4 = arith.constant dense<2139095040> : tensor<1x128xi32, #cluster>
    %cst_5 = arith.constant dense<4194304> : tensor<1x128xi32, #cluster>
    %cst_6 = arith.constant dense<1> : tensor<1x1xi32, #cluster1>
    %cst_7 = arith.constant dense<32767> : tensor<1x1xi32, #cluster1>
    %cst_8 = arith.constant dense<-65536> : tensor<1x1xi32, #cluster1>
    %cst_9 = arith.constant dense<2147483647> : tensor<1x1xi32, #cluster1>
    %cst_10 = arith.constant dense<2139095040> : tensor<1x1xi32, #cluster1>
    %cst_11 = arith.constant dense<4194304> : tensor<1x1xi32, #cluster1>
    %cst_12 = arith.constant dense<0.000000e+00> : tensor<1x128xf32, #cluster>
    %cst_13 = arith.constant dense<128> : tensor<1x1xi32, #cluster1>
    %cst_14 = arith.constant dense<16> : tensor<1x1xi32, #cluster1>
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
      %21 = arith.subi %cst_14, %20 : tensor<1x1xi32, #cluster1>
      %22 = arith.cmpi slt, %20, %cst_14 : tensor<1x1xi32, #cluster1>
      %23 = "triton_xpu.extract"(%22) <{index = 0 : i32}> : (tensor<1x1xi1, #cluster1>) -> i1
      scf.if %23 {
        %24 = triton_xpu.make_range   {end = 128 : i32, realSize = 128 : i32, start = 0 : i32} :   -> tensor<128xi32, #cluster4>
        %25 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 64 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<128xi32, #cluster4>
        %26 = triton_xpu.convert_layout %24 : tensor<128xi32, #cluster4> -> tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
        %27 = tt.expand_dims %26 {axis = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x128xi32, #cluster>
        %28 = arith.muli %20, %cst_13 : tensor<1x1xi32, #cluster1>
        %29 = triton_xpu.broadcast %28 : tensor<1x1xi32, #cluster1> -> tensor<1x128xi32, #cluster1>
        %30 = triton_xpu.convert_layout %29 : tensor<1x128xi32, #cluster1> -> tensor<1x128xi32, #cluster>
        %31 = arith.addi %27, %30 : tensor<1x128xi32, #cluster>
        %32 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<1x128x!tt.ptr<bf16>, #cluster>
        %33 = tt.addptr %32, %31 : tensor<1x128x!tt.ptr<bf16>, #cluster>, tensor<1x128xi32, #cluster>
        %34 = triton_xpu.broadcast %22 : tensor<1x1xi1, #cluster1> -> tensor<1x128xi1, #cluster1>
        %35 = triton_xpu.convert_layout %34 : tensor<1x128xi1, #cluster1> -> tensor<1x128xi1, #cluster>
        %36 = "triton_xpu.extract_slice"(%cst_12) : (tensor<1x128xf32, #cluster>) -> tensor<1x128xf32, #cluster>
        %c0 = arith.constant 0 : index
        %c1 = arith.constant 1 : index
        scf.for %arg9 = %c0 to %c1 step %c1 {
          %83 = arith.index_cast %arg9 : index to i32
          "triton_xpu.store"(%14, %36, %83) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<bf16, 0>, #cluster>, tensor<1x128xf32, #cluster>, i32) -> ()
        }
        %37 = "triton_xpu.gm2lm"(%33, %35, %cst_12, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<bf16>, #cluster>, tensor<1x128xi1, #cluster>, tensor<1x128xf32, #cluster>, tensor<1x128x!tt.ptr<bf16, 0>, #cluster>) -> tensor<1x128x!tt.ptr<bf16, 0>, #cluster>
        %38 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x128x!tt.ptr<bf16>, #cluster>
        %39 = tt.addptr %38, %27 : tensor<1x128x!tt.ptr<bf16>, #cluster>, tensor<1x128xi32, #cluster>
        %40 = "triton_xpu.gm2lm"(%39, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 0, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<bf16>, #cluster>, tensor<1x128x!tt.ptr<bf16, 0>, #cluster>) -> tensor<1x128x!tt.ptr<bf16, 0>, #cluster>
        llvm_xpu.mfence %c1_i32
        %41 = "triton_xpu.load"(%37, %35, %cst_12) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<bf16, 0>, #cluster>, tensor<1x128xi1, #cluster>, tensor<1x128xf32, #cluster>) -> tensor<1x128xf32, #cluster>
        %42 = "triton_xpu.load"(%40) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<bf16, 0>, #cluster>) -> tensor<1x128xf32, #cluster>
        %43 = arith.mulf %41, %42 : tensor<1x128xf32, #cluster>
        %44 = tt.bitcast %43 : tensor<1x128xf32, #cluster> -> tensor<1x128xi32, #cluster>
        %45 = arith.shrui %44, %cst : tensor<1x128xi32, #cluster>
        %46 = arith.andi %45, %cst_0 : tensor<1x128xi32, #cluster>
        %47 = arith.addi %44, %cst_1 : tensor<1x128xi32, #cluster>
        %48 = arith.addi %47, %46 : tensor<1x128xi32, #cluster>
        %49 = arith.andi %48, %cst_2 : tensor<1x128xi32, #cluster>
        %50 = arith.andi %44, %cst_3 : tensor<1x128xi32, #cluster>
        %51 = arith.cmpi uge, %50, %cst_4 : tensor<1x128xi32, #cluster>
        %52 = arith.cmpi ugt, %50, %cst_4 : tensor<1x128xi32, #cluster>
        %53 = arith.ori %44, %cst_5 : tensor<1x128xi32, #cluster>
        %54 = arith.select %52, %53, %44 : tensor<1x128xi1, #cluster>, tensor<1x128xi32, #cluster>
        %55 = arith.select %51, %54, %49 : tensor<1x128xi1, #cluster>, tensor<1x128xi32, #cluster>
        %56 = tt.bitcast %55 : tensor<1x128xi32, #cluster> -> tensor<1x128xf32, #cluster>
        %57 = arith.select %35, %56, %cst_12 : tensor<1x128xi1, #cluster>, tensor<1x128xf32, #cluster>
        %58 = "triton_xpu.reduce"(%57, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
        ^bb0(%arg9: f32, %arg10: f32):
          %83 = arith.addf %arg9, %arg10 : f32
          triton_xpu.reduce.return %83 : f32
        }) : (tensor<1x128xf32, #cluster>, i32) -> tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster}>>
        %59 = triton_xpu.convert_layout %58 : tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<1xf32, #cluster2>
        %60 = triton_xpu.convert_layout %59 : tensor<1xf32, #cluster2> -> tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster3}>>
        %61 = tt.expand_dims %60 {axis = 1 : i32} : tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster3}>> -> tensor<1x1xf32, #cluster3>
        %62 = triton_xpu.convert_layout %61 : tensor<1x1xf32, #cluster3> -> tensor<1x1xf32, #cluster1>
        %63 = tt.splat %arg2 : !tt.ptr<bf16> -> tensor<1x1x!tt.ptr<bf16>, #cluster1>
        %64 = tt.addptr %63, %20 : tensor<1x1x!tt.ptr<bf16>, #cluster1>, tensor<1x1xi32, #cluster1>
        %65 = tt.bitcast %62 : tensor<1x1xf32, #cluster1> -> tensor<1x1xi32, #cluster1>
        %66 = arith.shrui %65, %cst_14 : tensor<1x1xi32, #cluster1>
        %67 = arith.andi %66, %cst_6 : tensor<1x1xi32, #cluster1>
        %68 = arith.addi %65, %cst_7 : tensor<1x1xi32, #cluster1>
        %69 = arith.addi %68, %67 : tensor<1x1xi32, #cluster1>
        %70 = arith.andi %69, %cst_8 : tensor<1x1xi32, #cluster1>
        %71 = arith.andi %65, %cst_9 : tensor<1x1xi32, #cluster1>
        %72 = arith.cmpi uge, %71, %cst_10 : tensor<1x1xi32, #cluster1>
        %73 = arith.cmpi ugt, %71, %cst_10 : tensor<1x1xi32, #cluster1>
        %74 = arith.ori %65, %cst_11 : tensor<1x1xi32, #cluster1>
        %75 = arith.select %73, %74, %65 : tensor<1x1xi1, #cluster1>, tensor<1x1xi32, #cluster1>
        %76 = arith.select %72, %75, %70 : tensor<1x1xi1, #cluster1>, tensor<1x1xi32, #cluster1>
        %77 = tt.bitcast %76 : tensor<1x1xi32, #cluster1> -> tensor<1x1xf32, #cluster1>
        %78 = "triton_xpu.get_core_id"() : () -> i32
        %c64_i32 = arith.constant 64 : i32
        %79 = arith.remsi %78, %c64_i32 : i32
        %80 = arith.cmpi eq, %79, %c0_i32 : i32
        %81 = arith.cmpi slt, %78, %c64_i32 : i32
        %82 = arith.andi %80, %81 : i1
        scf.if %82 {
          "triton_xpu.store"(%12, %77, %22) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1x!tt.ptr<bf16, 0>, #cluster1>, tensor<1x1xf32, #cluster1>, tensor<1x1xi1, #cluster1>) -> ()
          "triton_xpu.lm2gm"(%64, %21, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1x!tt.ptr<bf16>, #cluster1>, tensor<1x1xi32, #cluster1>, tensor<1x1x!tt.ptr<bf16, 0>, #cluster1>) -> ()
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
