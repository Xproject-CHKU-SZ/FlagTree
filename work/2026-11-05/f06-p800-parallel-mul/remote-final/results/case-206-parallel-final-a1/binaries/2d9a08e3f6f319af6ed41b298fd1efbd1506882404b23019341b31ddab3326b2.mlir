#cluster = #triton_xpu.cluster<{sizePerCore = [1, 256], coresPerGroup = [1, 8], groupsPerCluster = [8, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 8], groupsPerCluster = [8, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [1], groupsPerCluster = [8], order = [0]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [256], coresPerGroup = [8], groupsPerCluster = [1], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 8], groupsPerCluster = [8, 1], order = [0, 1]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [8], groupsPerCluster = [1], order = [0]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 8 : i32} {
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
    %cst = arith.constant dense<0.000000e+00> : tensor<1x2048xf32, #cluster>
    %cst_0 = arith.constant dense<16> : tensor<8x2048xi32, #cluster>
    %cst_1 = arith.constant dense<1> : tensor<8x2048xi32, #cluster>
    %cst_2 = arith.constant dense<32767> : tensor<8x2048xi32, #cluster>
    %cst_3 = arith.constant dense<-65536> : tensor<8x2048xi32, #cluster>
    %cst_4 = arith.constant dense<2147483647> : tensor<8x2048xi32, #cluster>
    %cst_5 = arith.constant dense<2139095040> : tensor<8x2048xi32, #cluster>
    %cst_6 = arith.constant dense<4194304> : tensor<8x2048xi32, #cluster>
    %cst_7 = arith.constant dense<16> : tensor<8x1xi32, #cluster1>
    %cst_8 = arith.constant dense<1> : tensor<8x1xi32, #cluster1>
    %cst_9 = arith.constant dense<32767> : tensor<8x1xi32, #cluster1>
    %cst_10 = arith.constant dense<-65536> : tensor<8x1xi32, #cluster1>
    %cst_11 = arith.constant dense<2147483647> : tensor<8x1xi32, #cluster1>
    %cst_12 = arith.constant dense<2139095040> : tensor<8x1xi32, #cluster1>
    %cst_13 = arith.constant dense<4194304> : tensor<8x1xi32, #cluster1>
    %cst_14 = arith.constant dense<2048> : tensor<1x2048xi32, #cluster>
    %cst_15 = arith.constant dense<0.000000e+00> : tensor<8x2048xf32, #cluster>
    %cst_16 = arith.constant dense<2048> : tensor<8x1xi32, #cluster1>
    %c8_i32 = arith.constant 8 : i32
    %c0_i32 = arith.constant 0 : i32
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 8 : si64}> : () -> tensor<8x1x!tt.ptr<bf16, 0>, #cluster1>
      %13 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 16384 : si64}> : () -> tensor<8x2048x!tt.ptr<bf16, 0>, #cluster>
      %15 = arith.muli %11, %c8_i32 : i32
      %16 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 8 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<8xi32, #cluster2>
      %17 = triton_xpu.convert_layout %16 : tensor<8xi32, #cluster2> -> tensor<8xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
      %18 = tt.expand_dims %17 {axis = 1 : i32} : tensor<8xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<8x1xi32, #cluster1>
      %19 = tt.splat %15 : i32 -> tensor<8x1xi32, #cluster1>
      %20 = arith.addi %19, %18 : tensor<8x1xi32, #cluster1>
      %21 = arith.subi %cst_16, %20 : tensor<8x1xi32, #cluster1>
      %22 = arith.cmpi slt, %20, %cst_16 : tensor<8x1xi32, #cluster1>
      %23 = "triton_xpu.extract"(%22) <{index = 0 : i32}> : (tensor<8x1xi1, #cluster1>) -> i1
      scf.if %23 {
        %24 = triton_xpu.make_range   {end = 2048 : i32, realSize = 2048 : i32, start = 0 : i32} :   -> tensor<2048xi32, #cluster3>
        %25 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 8 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<2048xi32, #cluster3>
        %26 = triton_xpu.convert_layout %24 : tensor<2048xi32, #cluster3> -> tensor<2048xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
        %27 = tt.expand_dims %26 {axis = 0 : i32} : tensor<2048xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x2048xi32, #cluster>
        %28 = arith.subi %cst_14, %27 : tensor<1x2048xi32, #cluster>
        %29 = arith.cmpi slt, %27, %cst_14 : tensor<1x2048xi32, #cluster>
        %30 = "triton_xpu.extract"(%29) <{index = 0 : i32}> : (tensor<1x2048xi1, #cluster>) -> i1
        scf.if %30 {
          %31 = arith.muli %20, %cst_16 : tensor<8x1xi32, #cluster1>
          %32 = triton_xpu.broadcast %27 : tensor<1x2048xi32, #cluster> -> tensor<8x2048xi32, #cluster>
          %33 = triton_xpu.broadcast %31 : tensor<8x1xi32, #cluster1> -> tensor<8x2048xi32, #cluster>
          %34 = arith.addi %32, %33 : tensor<8x2048xi32, #cluster>
          %35 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<8x2048x!tt.ptr<bf16>, #cluster>
          %36 = tt.addptr %35, %34 : tensor<8x2048x!tt.ptr<bf16>, #cluster>, tensor<8x2048xi32, #cluster>
          %37 = triton_xpu.broadcast %29 : tensor<1x2048xi1, #cluster> -> tensor<8x2048xi1, #cluster>
          %38 = triton_xpu.broadcast %22 : tensor<8x1xi1, #cluster1> -> tensor<8x2048xi1, #cluster>
          %39 = arith.andi %37, %38 : tensor<8x2048xi1, #cluster>
          %40 = "triton_xpu.extract_slice"(%cst_15) : (tensor<8x2048xf32, #cluster>) -> tensor<8x16xf32, #cluster4>
          %c0 = arith.constant 0 : index
          %c128 = arith.constant 128 : index
          %c1 = arith.constant 1 : index
          scf.for %arg9 = %c0 to %c128 step %c1 {
            %91 = arith.index_cast %arg9 : index to i32
            "triton_xpu.store"(%14, %40, %91) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x2048x!tt.ptr<bf16, 0>, #cluster>, tensor<8x16xf32, #cluster4>, i32) -> ()
          }
          %41 = "triton_xpu.gm2lm"(%36, %28, %cst_15, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<8x2048x!tt.ptr<bf16>, #cluster>, tensor<1x2048xi32, #cluster>, tensor<8x2048xf32, #cluster>, tensor<8x2048x!tt.ptr<bf16, 0>, #cluster>) -> tensor<8x2048x!tt.ptr<bf16, 0>, #cluster>
          %42 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x2048x!tt.ptr<bf16>, #cluster>
          %43 = tt.addptr %42, %27 : tensor<1x2048x!tt.ptr<bf16>, #cluster>, tensor<1x2048xi32, #cluster>
          %44 = "triton_xpu.extract_slice"(%cst) : (tensor<1x2048xf32, #cluster>) -> tensor<1x16xf32, #cluster4>
          scf.for %arg9 = %c0 to %c128 step %c1 {
            %91 = arith.index_cast %arg9 : index to i32
            "triton_xpu.store"(%13, %44, %91) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>, tensor<1x16xf32, #cluster4>, i32) -> ()
          }
          %45 = "triton_xpu.gm2lm"(%43, %28, %cst, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<bf16>, #cluster>, tensor<1x2048xi32, #cluster>, tensor<1x2048xf32, #cluster>, tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>) -> tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>
          llvm_xpu.mfence %c1_i32
          %46 = "triton_xpu.load"(%41, %39, %cst_15) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x2048x!tt.ptr<bf16, 0>, #cluster>, tensor<8x2048xi1, #cluster>, tensor<8x2048xf32, #cluster>) -> tensor<8x2048xf32, #cluster>
          %47 = "triton_xpu.load"(%45, %29, %cst) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>, tensor<1x2048xi1, #cluster>, tensor<1x2048xf32, #cluster>) -> tensor<1x2048xf32, #cluster>
          %48 = triton_xpu.broadcast %47 : tensor<1x2048xf32, #cluster> -> tensor<8x2048xf32, #cluster>
          %49 = arith.mulf %46, %48 : tensor<8x2048xf32, #cluster>
          %50 = tt.bitcast %49 : tensor<8x2048xf32, #cluster> -> tensor<8x2048xi32, #cluster>
          %51 = arith.shrui %50, %cst_0 : tensor<8x2048xi32, #cluster>
          %52 = arith.andi %51, %cst_1 : tensor<8x2048xi32, #cluster>
          %53 = arith.addi %50, %cst_2 : tensor<8x2048xi32, #cluster>
          %54 = arith.addi %53, %52 : tensor<8x2048xi32, #cluster>
          %55 = arith.andi %54, %cst_3 : tensor<8x2048xi32, #cluster>
          %56 = arith.andi %50, %cst_4 : tensor<8x2048xi32, #cluster>
          %57 = arith.cmpi uge, %56, %cst_5 : tensor<8x2048xi32, #cluster>
          %58 = arith.cmpi ugt, %56, %cst_5 : tensor<8x2048xi32, #cluster>
          %59 = arith.ori %50, %cst_6 : tensor<8x2048xi32, #cluster>
          %60 = arith.select %58, %59, %50 : tensor<8x2048xi1, #cluster>, tensor<8x2048xi32, #cluster>
          %61 = arith.select %57, %60, %55 : tensor<8x2048xi1, #cluster>, tensor<8x2048xi32, #cluster>
          %62 = tt.bitcast %61 : tensor<8x2048xi32, #cluster> -> tensor<8x2048xf32, #cluster>
          %63 = arith.addf %62, %cst_15 : tensor<8x2048xf32, #cluster>
          %64 = arith.select %39, %63, %cst_15 : tensor<8x2048xi1, #cluster>, tensor<8x2048xf32, #cluster>
          %65 = "triton_xpu.extract_slice"(%64) : (tensor<8x2048xf32, #cluster>) -> tensor<8x16xf32, #cluster4>
          %cst_17 = arith.constant dense<16> : tensor<8x16xi32, #cluster4>
          %cst_18 = arith.constant dense<1> : tensor<8x16xi32, #cluster4>
          %cst_19 = arith.constant dense<32767> : tensor<8x16xi32, #cluster4>
          %cst_20 = arith.constant dense<-65536> : tensor<8x16xi32, #cluster4>
          %cst_21 = arith.constant dense<2147483647> : tensor<8x16xi32, #cluster4>
          %cst_22 = arith.constant dense<2139095040> : tensor<8x16xi32, #cluster4>
          %cst_23 = arith.constant dense<4194304> : tensor<8x16xi32, #cluster4>
          %cst_24 = arith.constant dense<2048> : tensor<1x16xi32, #cluster4>
          %cst_25 = arith.constant dense<0.000000e+00> : tensor<8x16xf32, #cluster4>
          %66 = scf.for %arg9 = %c1 to %c128 step %c1 iter_args(%arg10 = %65) -> (tensor<8x16xf32, #cluster4>) {
            %91 = arith.index_cast %arg9 : index to i32
            %92 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 8 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<8xi32, #cluster2>
            %93 = triton_xpu.convert_layout %92 : tensor<8xi32, #cluster2> -> tensor<8xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
            %94 = tt.expand_dims %93 {axis = 1 : i32} : tensor<8xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<8x1xi32, #cluster1>
            %95 = arith.addi %19, %94 : tensor<8x1xi32, #cluster1>
            %96 = arith.cmpi slt, %95, %cst_16 : tensor<8x1xi32, #cluster1>
            %97 = triton_xpu.make_range  %91 {end = 2048 : i32, realSize = 2048 : i32, start = 0 : i32} :  i32 -> tensor<16xi32, #cluster5>
            %98 = triton_xpu.convert_layout %97 : tensor<16xi32, #cluster5> -> tensor<16xi32, #ttg.slice<{dim = 0, parent = #cluster4}>>
            %99 = tt.expand_dims %98 {axis = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 0, parent = #cluster4}>> -> tensor<1x16xi32, #cluster4>
            %100 = arith.cmpi slt, %99, %cst_24 : tensor<1x16xi32, #cluster4>
            %101 = triton_xpu.broadcast %100 : tensor<1x16xi1, #cluster4> -> tensor<8x16xi1, #cluster4>
            %102 = triton_xpu.broadcast %96 : tensor<8x1xi1, #cluster1> -> tensor<8x16xi1, #cluster4>
            %103 = arith.andi %101, %102 : tensor<8x16xi1, #cluster4>
            %104 = "triton_xpu.load"(%41, %103, %cst_25, %91) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x2048x!tt.ptr<bf16, 0>, #cluster>, tensor<8x16xi1, #cluster4>, tensor<8x16xf32, #cluster4>, i32) -> tensor<8x16xf32, #cluster4>
            %105 = "triton_xpu.load"(%45, %100, %cst, %91) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>, tensor<1x16xi1, #cluster4>, tensor<1x2048xf32, #cluster>, i32) -> tensor<1x16xf32, #cluster4>
            %106 = triton_xpu.broadcast %105 : tensor<1x16xf32, #cluster4> -> tensor<8x16xf32, #cluster4>
            %107 = arith.mulf %104, %106 : tensor<8x16xf32, #cluster4>
            %108 = tt.bitcast %107 : tensor<8x16xf32, #cluster4> -> tensor<8x16xi32, #cluster4>
            %109 = arith.shrui %108, %cst_17 : tensor<8x16xi32, #cluster4>
            %110 = arith.andi %109, %cst_18 : tensor<8x16xi32, #cluster4>
            %111 = arith.addi %108, %cst_19 : tensor<8x16xi32, #cluster4>
            %112 = arith.addi %111, %110 : tensor<8x16xi32, #cluster4>
            %113 = arith.andi %112, %cst_20 : tensor<8x16xi32, #cluster4>
            %114 = arith.andi %108, %cst_21 : tensor<8x16xi32, #cluster4>
            %115 = arith.cmpi uge, %114, %cst_22 : tensor<8x16xi32, #cluster4>
            %116 = arith.cmpi ugt, %114, %cst_22 : tensor<8x16xi32, #cluster4>
            %117 = arith.ori %108, %cst_23 : tensor<8x16xi32, #cluster4>
            %118 = arith.select %116, %117, %108 : tensor<8x16xi1, #cluster4>, tensor<8x16xi32, #cluster4>
            %119 = arith.select %115, %118, %113 : tensor<8x16xi1, #cluster4>, tensor<8x16xi32, #cluster4>
            %120 = tt.bitcast %119 : tensor<8x16xi32, #cluster4> -> tensor<8x16xf32, #cluster4>
            %121 = arith.addf %120, %cst_25 : tensor<8x16xf32, #cluster4>
            %122 = arith.select %103, %121, %cst_25 : tensor<8x16xi1, #cluster4>, tensor<8x16xf32, #cluster4>
            %123 = arith.addf %arg10, %122 : tensor<8x16xf32, #cluster4>
            scf.yield %123 : tensor<8x16xf32, #cluster4>
          }
          %67 = "triton_xpu.reduce"(%66, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
          ^bb0(%arg9: f32, %arg10: f32):
            %91 = arith.addf %arg9, %arg10 : f32
            triton_xpu.reduce.return %91 : f32
          }) : (tensor<8x16xf32, #cluster4>, i32) -> tensor<8xf32, #ttg.slice<{dim = 1, parent = #cluster4}>>
          %68 = triton_xpu.convert_layout %67 : tensor<8xf32, #ttg.slice<{dim = 1, parent = #cluster4}>> -> tensor<8xf32, #cluster2>
          %69 = triton_xpu.convert_layout %68 : tensor<8xf32, #cluster2> -> tensor<8xf32, #ttg.slice<{dim = 1, parent = #cluster1}>>
          %70 = tt.expand_dims %69 {axis = 1 : i32} : tensor<8xf32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<8x1xf32, #cluster1>
          %71 = tt.splat %arg2 : !tt.ptr<bf16> -> tensor<8x1x!tt.ptr<bf16>, #cluster1>
          %72 = tt.addptr %71, %20 : tensor<8x1x!tt.ptr<bf16>, #cluster1>, tensor<8x1xi32, #cluster1>
          %73 = tt.bitcast %70 : tensor<8x1xf32, #cluster1> -> tensor<8x1xi32, #cluster1>
          %74 = arith.shrui %73, %cst_7 : tensor<8x1xi32, #cluster1>
          %75 = arith.andi %74, %cst_8 : tensor<8x1xi32, #cluster1>
          %76 = arith.addi %73, %cst_9 : tensor<8x1xi32, #cluster1>
          %77 = arith.addi %76, %75 : tensor<8x1xi32, #cluster1>
          %78 = arith.andi %77, %cst_10 : tensor<8x1xi32, #cluster1>
          %79 = arith.andi %73, %cst_11 : tensor<8x1xi32, #cluster1>
          %80 = arith.cmpi uge, %79, %cst_12 : tensor<8x1xi32, #cluster1>
          %81 = arith.cmpi ugt, %79, %cst_12 : tensor<8x1xi32, #cluster1>
          %82 = arith.ori %73, %cst_13 : tensor<8x1xi32, #cluster1>
          %83 = arith.select %81, %82, %73 : tensor<8x1xi1, #cluster1>, tensor<8x1xi32, #cluster1>
          %84 = arith.select %80, %83, %78 : tensor<8x1xi1, #cluster1>, tensor<8x1xi32, #cluster1>
          %85 = tt.bitcast %84 : tensor<8x1xi32, #cluster1> -> tensor<8x1xf32, #cluster1>
          %86 = "triton_xpu.get_core_id"() : () -> i32
          %87 = arith.remsi %86, %c8_i32 : i32
          %88 = arith.cmpi eq, %87, %c0_i32 : i32
          %c64_i32 = arith.constant 64 : i32
          %89 = arith.cmpi slt, %86, %c64_i32 : i32
          %90 = arith.andi %88, %89 : i1
          scf.if %90 {
            "triton_xpu.store"(%12, %85, %22) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x1x!tt.ptr<bf16, 0>, #cluster1>, tensor<8x1xf32, #cluster1>, tensor<8x1xi1, #cluster1>) -> ()
            "triton_xpu.lm2gm"(%72, %21, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x1x!tt.ptr<bf16>, #cluster1>, tensor<8x1xi32, #cluster1>, tensor<8x1x!tt.ptr<bf16, 0>, #cluster1>) -> ()
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
