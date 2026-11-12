#cluster = #triton_xpu.cluster<{sizePerCore = [1, 32], coresPerGroup = [1, 32], groupsPerCluster = [2, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 32], groupsPerCluster = [2, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [1], groupsPerCluster = [2], order = [0]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [32], coresPerGroup = [32], groupsPerCluster = [1], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 32], groupsPerCluster = [2, 1], order = [0, 1]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 2 : i32, "ttg.threads-per-warp" = 32 : i32} {
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
    %cst = arith.constant dense<16> : tensor<2x1024xi32, #cluster>
    %cst_0 = arith.constant dense<1> : tensor<2x1024xi32, #cluster>
    %cst_1 = arith.constant dense<32767> : tensor<2x1024xi32, #cluster>
    %cst_2 = arith.constant dense<-65536> : tensor<2x1024xi32, #cluster>
    %cst_3 = arith.constant dense<2147483647> : tensor<2x1024xi32, #cluster>
    %cst_4 = arith.constant dense<2139095040> : tensor<2x1024xi32, #cluster>
    %cst_5 = arith.constant dense<4194304> : tensor<2x1024xi32, #cluster>
    %cst_6 = arith.constant dense<16> : tensor<2x1xi32, #cluster1>
    %cst_7 = arith.constant dense<1> : tensor<2x1xi32, #cluster1>
    %cst_8 = arith.constant dense<32767> : tensor<2x1xi32, #cluster1>
    %cst_9 = arith.constant dense<-65536> : tensor<2x1xi32, #cluster1>
    %cst_10 = arith.constant dense<2147483647> : tensor<2x1xi32, #cluster1>
    %cst_11 = arith.constant dense<2139095040> : tensor<2x1xi32, #cluster1>
    %cst_12 = arith.constant dense<4194304> : tensor<2x1xi32, #cluster1>
    %cst_13 = arith.constant dense<0.000000e+00> : tensor<2x1024xf32, #cluster>
    %cst_14 = arith.constant dense<1024> : tensor<2x1xi32, #cluster1>
    %cst_15 = arith.constant dense<128> : tensor<2x1xi32, #cluster1>
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 2 : si64}> : () -> tensor<2x1x!tt.ptr<bf16, 0>, #cluster1>
      %13 = "triton_xpu.alloca"() <{size = 1024 : si64}> : () -> tensor<1x1024x!tt.ptr<bf16, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<2x1024x!tt.ptr<bf16, 0>, #cluster>
      %15 = arith.muli %11, %c2_i32 : i32
      %16 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 32 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<2xi32, #cluster2>
      %17 = triton_xpu.convert_layout %16 : tensor<2xi32, #cluster2> -> tensor<2xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
      %18 = tt.expand_dims %17 {axis = 1 : i32} : tensor<2xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<2x1xi32, #cluster1>
      %19 = tt.splat %15 : i32 -> tensor<2x1xi32, #cluster1>
      %20 = arith.addi %19, %18 : tensor<2x1xi32, #cluster1>
      %21 = arith.subi %cst_15, %20 : tensor<2x1xi32, #cluster1>
      %22 = arith.cmpi slt, %20, %cst_15 : tensor<2x1xi32, #cluster1>
      %23 = "triton_xpu.extract"(%22) <{index = 0 : i32}> : (tensor<2x1xi1, #cluster1>) -> i1
      scf.if %23 {
        %24 = triton_xpu.make_range   {end = 1024 : i32, realSize = 1024 : i32, start = 0 : i32} :   -> tensor<1024xi32, #cluster3>
        %25 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 32 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<1024xi32, #cluster3>
        %26 = triton_xpu.convert_layout %24 : tensor<1024xi32, #cluster3> -> tensor<1024xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
        %27 = tt.expand_dims %26 {axis = 0 : i32} : tensor<1024xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x1024xi32, #cluster>
        %28 = arith.muli %20, %cst_14 : tensor<2x1xi32, #cluster1>
        %29 = triton_xpu.broadcast %27 : tensor<1x1024xi32, #cluster> -> tensor<2x1024xi32, #cluster>
        %30 = triton_xpu.broadcast %28 : tensor<2x1xi32, #cluster1> -> tensor<2x1024xi32, #cluster>
        %31 = arith.addi %29, %30 : tensor<2x1024xi32, #cluster>
        %32 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<2x1024x!tt.ptr<bf16>, #cluster>
        %33 = tt.addptr %32, %31 : tensor<2x1024x!tt.ptr<bf16>, #cluster>, tensor<2x1024xi32, #cluster>
        %34 = triton_xpu.broadcast %22 : tensor<2x1xi1, #cluster1> -> tensor<2x1024xi1, #cluster>
        %35 = "triton_xpu.extract_slice"(%cst_13) : (tensor<2x1024xf32, #cluster>) -> tensor<2x64xf32, #cluster4>
        %c0 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %84 = arith.index_cast %arg9 : index to i32
          "triton_xpu.store"(%14, %35, %84) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2x1024x!tt.ptr<bf16, 0>, #cluster>, tensor<2x64xf32, #cluster4>, i32) -> ()
        }
        %36 = "triton_xpu.gm2lm"(%33, %34, %cst_13, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<2x1024x!tt.ptr<bf16>, #cluster>, tensor<2x1024xi1, #cluster>, tensor<2x1024xf32, #cluster>, tensor<2x1024x!tt.ptr<bf16, 0>, #cluster>) -> tensor<2x1024x!tt.ptr<bf16, 0>, #cluster>
        %37 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x1024x!tt.ptr<bf16>, #cluster>
        %38 = tt.addptr %37, %27 : tensor<1x1024x!tt.ptr<bf16>, #cluster>, tensor<1x1024xi32, #cluster>
        %39 = "triton_xpu.gm2lm"(%38, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 0, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<bf16>, #cluster>, tensor<1x1024x!tt.ptr<bf16, 0>, #cluster>) -> tensor<1x1024x!tt.ptr<bf16, 0>, #cluster>
        llvm_xpu.mfence %c1_i32
        %40 = "triton_xpu.load"(%36, %34, %cst_13) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2x1024x!tt.ptr<bf16, 0>, #cluster>, tensor<2x1024xi1, #cluster>, tensor<2x1024xf32, #cluster>) -> tensor<2x1024xf32, #cluster>
        %41 = "triton_xpu.load"(%39) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<bf16, 0>, #cluster>) -> tensor<1x1024xf32, #cluster>
        %42 = triton_xpu.broadcast %41 : tensor<1x1024xf32, #cluster> -> tensor<2x1024xf32, #cluster>
        %43 = arith.mulf %40, %42 : tensor<2x1024xf32, #cluster>
        %44 = tt.bitcast %43 : tensor<2x1024xf32, #cluster> -> tensor<2x1024xi32, #cluster>
        %45 = arith.shrui %44, %cst : tensor<2x1024xi32, #cluster>
        %46 = arith.andi %45, %cst_0 : tensor<2x1024xi32, #cluster>
        %47 = arith.addi %44, %cst_1 : tensor<2x1024xi32, #cluster>
        %48 = arith.addi %47, %46 : tensor<2x1024xi32, #cluster>
        %49 = arith.andi %48, %cst_2 : tensor<2x1024xi32, #cluster>
        %50 = arith.andi %44, %cst_3 : tensor<2x1024xi32, #cluster>
        %51 = arith.cmpi uge, %50, %cst_4 : tensor<2x1024xi32, #cluster>
        %52 = arith.cmpi ugt, %50, %cst_4 : tensor<2x1024xi32, #cluster>
        %53 = arith.ori %44, %cst_5 : tensor<2x1024xi32, #cluster>
        %54 = arith.select %52, %53, %44 : tensor<2x1024xi1, #cluster>, tensor<2x1024xi32, #cluster>
        %55 = arith.select %51, %54, %49 : tensor<2x1024xi1, #cluster>, tensor<2x1024xi32, #cluster>
        %56 = tt.bitcast %55 : tensor<2x1024xi32, #cluster> -> tensor<2x1024xf32, #cluster>
        %57 = arith.select %34, %56, %cst_13 : tensor<2x1024xi1, #cluster>, tensor<2x1024xf32, #cluster>
        %58 = "triton_xpu.extract_slice"(%57) : (tensor<2x1024xf32, #cluster>) -> tensor<2x64xf32, #cluster4>
        %cst_16 = arith.constant dense<16> : tensor<2x64xi32, #cluster4>
        %cst_17 = arith.constant dense<1> : tensor<2x64xi32, #cluster4>
        %cst_18 = arith.constant dense<32767> : tensor<2x64xi32, #cluster4>
        %cst_19 = arith.constant dense<-65536> : tensor<2x64xi32, #cluster4>
        %cst_20 = arith.constant dense<2147483647> : tensor<2x64xi32, #cluster4>
        %cst_21 = arith.constant dense<2139095040> : tensor<2x64xi32, #cluster4>
        %cst_22 = arith.constant dense<4194304> : tensor<2x64xi32, #cluster4>
        %cst_23 = arith.constant dense<0.000000e+00> : tensor<2x64xf32, #cluster4>
        %59 = scf.for %arg9 = %c1 to %c16 step %c1 iter_args(%arg10 = %58) -> (tensor<2x64xf32, #cluster4>) {
          %84 = arith.index_cast %arg9 : index to i32
          %85 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 32 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<2xi32, #cluster2>
          %86 = triton_xpu.convert_layout %85 : tensor<2xi32, #cluster2> -> tensor<2xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
          %87 = tt.expand_dims %86 {axis = 1 : i32} : tensor<2xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<2x1xi32, #cluster1>
          %88 = arith.addi %19, %87 : tensor<2x1xi32, #cluster1>
          %89 = arith.cmpi slt, %88, %cst_15 : tensor<2x1xi32, #cluster1>
          %90 = triton_xpu.broadcast %89 : tensor<2x1xi1, #cluster1> -> tensor<2x64xi1, #cluster4>
          %91 = "triton_xpu.load"(%36, %90, %cst_23, %84) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2x1024x!tt.ptr<bf16, 0>, #cluster>, tensor<2x64xi1, #cluster4>, tensor<2x64xf32, #cluster4>, i32) -> tensor<2x64xf32, #cluster4>
          %92 = "triton_xpu.load"(%39, %84) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<bf16, 0>, #cluster>, i32) -> tensor<1x64xf32, #cluster4>
          %93 = triton_xpu.broadcast %92 : tensor<1x64xf32, #cluster4> -> tensor<2x64xf32, #cluster4>
          %94 = arith.mulf %91, %93 : tensor<2x64xf32, #cluster4>
          %95 = tt.bitcast %94 : tensor<2x64xf32, #cluster4> -> tensor<2x64xi32, #cluster4>
          %96 = arith.shrui %95, %cst_16 : tensor<2x64xi32, #cluster4>
          %97 = arith.andi %96, %cst_17 : tensor<2x64xi32, #cluster4>
          %98 = arith.addi %95, %cst_18 : tensor<2x64xi32, #cluster4>
          %99 = arith.addi %98, %97 : tensor<2x64xi32, #cluster4>
          %100 = arith.andi %99, %cst_19 : tensor<2x64xi32, #cluster4>
          %101 = arith.andi %95, %cst_20 : tensor<2x64xi32, #cluster4>
          %102 = arith.cmpi uge, %101, %cst_21 : tensor<2x64xi32, #cluster4>
          %103 = arith.cmpi ugt, %101, %cst_21 : tensor<2x64xi32, #cluster4>
          %104 = arith.ori %95, %cst_22 : tensor<2x64xi32, #cluster4>
          %105 = arith.select %103, %104, %95 : tensor<2x64xi1, #cluster4>, tensor<2x64xi32, #cluster4>
          %106 = arith.select %102, %105, %100 : tensor<2x64xi1, #cluster4>, tensor<2x64xi32, #cluster4>
          %107 = tt.bitcast %106 : tensor<2x64xi32, #cluster4> -> tensor<2x64xf32, #cluster4>
          %108 = arith.select %90, %107, %cst_23 : tensor<2x64xi1, #cluster4>, tensor<2x64xf32, #cluster4>
          %109 = arith.addf %arg10, %108 : tensor<2x64xf32, #cluster4>
          scf.yield %109 : tensor<2x64xf32, #cluster4>
        }
        %60 = "triton_xpu.reduce"(%59, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
        ^bb0(%arg9: f32, %arg10: f32):
          %84 = arith.addf %arg9, %arg10 : f32
          triton_xpu.reduce.return %84 : f32
        }) : (tensor<2x64xf32, #cluster4>, i32) -> tensor<2xf32, #ttg.slice<{dim = 1, parent = #cluster4}>>
        %61 = triton_xpu.convert_layout %60 : tensor<2xf32, #ttg.slice<{dim = 1, parent = #cluster4}>> -> tensor<2xf32, #cluster2>
        %62 = triton_xpu.convert_layout %61 : tensor<2xf32, #cluster2> -> tensor<2xf32, #ttg.slice<{dim = 1, parent = #cluster1}>>
        %63 = tt.expand_dims %62 {axis = 1 : i32} : tensor<2xf32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<2x1xf32, #cluster1>
        %64 = tt.splat %arg2 : !tt.ptr<bf16> -> tensor<2x1x!tt.ptr<bf16>, #cluster1>
        %65 = tt.addptr %64, %20 : tensor<2x1x!tt.ptr<bf16>, #cluster1>, tensor<2x1xi32, #cluster1>
        %66 = tt.bitcast %63 : tensor<2x1xf32, #cluster1> -> tensor<2x1xi32, #cluster1>
        %67 = arith.shrui %66, %cst_6 : tensor<2x1xi32, #cluster1>
        %68 = arith.andi %67, %cst_7 : tensor<2x1xi32, #cluster1>
        %69 = arith.addi %66, %cst_8 : tensor<2x1xi32, #cluster1>
        %70 = arith.addi %69, %68 : tensor<2x1xi32, #cluster1>
        %71 = arith.andi %70, %cst_9 : tensor<2x1xi32, #cluster1>
        %72 = arith.andi %66, %cst_10 : tensor<2x1xi32, #cluster1>
        %73 = arith.cmpi uge, %72, %cst_11 : tensor<2x1xi32, #cluster1>
        %74 = arith.cmpi ugt, %72, %cst_11 : tensor<2x1xi32, #cluster1>
        %75 = arith.ori %66, %cst_12 : tensor<2x1xi32, #cluster1>
        %76 = arith.select %74, %75, %66 : tensor<2x1xi1, #cluster1>, tensor<2x1xi32, #cluster1>
        %77 = arith.select %73, %76, %71 : tensor<2x1xi1, #cluster1>, tensor<2x1xi32, #cluster1>
        %78 = tt.bitcast %77 : tensor<2x1xi32, #cluster1> -> tensor<2x1xf32, #cluster1>
        %79 = "triton_xpu.get_core_id"() : () -> i32
        %c32_i32 = arith.constant 32 : i32
        %80 = arith.remsi %79, %c32_i32 : i32
        %81 = arith.cmpi eq, %80, %c0_i32 : i32
        %c64_i32 = arith.constant 64 : i32
        %82 = arith.cmpi slt, %79, %c64_i32 : i32
        %83 = arith.andi %81, %82 : i1
        scf.if %83 {
          "triton_xpu.store"(%12, %78, %22) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2x1x!tt.ptr<bf16, 0>, #cluster1>, tensor<2x1xf32, #cluster1>, tensor<2x1xi1, #cluster1>) -> ()
          "triton_xpu.lm2gm"(%65, %21, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<2x1x!tt.ptr<bf16>, #cluster1>, tensor<2x1xi32, #cluster1>, tensor<2x1x!tt.ptr<bf16, 0>, #cluster1>) -> ()
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
