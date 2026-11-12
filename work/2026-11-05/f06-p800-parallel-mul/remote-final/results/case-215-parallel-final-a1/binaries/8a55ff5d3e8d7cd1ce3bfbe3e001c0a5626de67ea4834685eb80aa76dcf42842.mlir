#cluster = #triton_xpu.cluster<{sizePerCore = [1, 32], coresPerGroup = [1, 64], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 64], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [64, 1], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [32], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 64], groupsPerCluster = [1, 1], order = [0, 1]}>
#cluster6 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [64], groupsPerCluster = [1], order = [0]}>
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
    %cst = arith.constant dense<16> : tensor<1x2048xi32, #cluster>
    %cst_0 = arith.constant dense<1> : tensor<1x2048xi32, #cluster>
    %cst_1 = arith.constant dense<32767> : tensor<1x2048xi32, #cluster>
    %cst_2 = arith.constant dense<-65536> : tensor<1x2048xi32, #cluster>
    %cst_3 = arith.constant dense<2147483647> : tensor<1x2048xi32, #cluster>
    %cst_4 = arith.constant dense<2139095040> : tensor<1x2048xi32, #cluster>
    %cst_5 = arith.constant dense<4194304> : tensor<1x2048xi32, #cluster>
    %cst_6 = arith.constant dense<16> : tensor<1x1xi32, #cluster1>
    %cst_7 = arith.constant dense<1> : tensor<1x1xi32, #cluster1>
    %cst_8 = arith.constant dense<32767> : tensor<1x1xi32, #cluster1>
    %cst_9 = arith.constant dense<-65536> : tensor<1x1xi32, #cluster1>
    %cst_10 = arith.constant dense<2147483647> : tensor<1x1xi32, #cluster1>
    %cst_11 = arith.constant dense<2139095040> : tensor<1x1xi32, #cluster1>
    %cst_12 = arith.constant dense<4194304> : tensor<1x1xi32, #cluster1>
    %cst_13 = arith.constant dense<2048> : tensor<1x2048xi32, #cluster>
    %cst_14 = arith.constant dense<0.000000e+00> : tensor<1x2048xf32, #cluster>
    %cst_15 = arith.constant dense<2048> : tensor<1x1xi32, #cluster1>
    %c0_i32 = arith.constant 0 : i32
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 1 : si64}> : () -> tensor<1x1x!tt.ptr<bf16, 0>, #cluster1>
      %13 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>
      %15 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 64 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<1xi32, #cluster2>
      %16 = triton_xpu.convert_layout %15 : tensor<1xi32, #cluster2> -> tensor<1xi32, #ttg.slice<{dim = 1, parent = #cluster3}>>
      %17 = tt.expand_dims %16 {axis = 1 : i32} : tensor<1xi32, #ttg.slice<{dim = 1, parent = #cluster3}>> -> tensor<1x1xi32, #cluster3>
      %18 = triton_xpu.convert_layout %17 : tensor<1x1xi32, #cluster3> -> tensor<1x1xi32, #cluster1>
      %19 = tt.splat %11 : i32 -> tensor<1x1xi32, #cluster1>
      %20 = arith.addi %19, %18 : tensor<1x1xi32, #cluster1>
      %21 = arith.subi %cst_15, %20 : tensor<1x1xi32, #cluster1>
      %22 = arith.cmpi slt, %20, %cst_15 : tensor<1x1xi32, #cluster1>
      %23 = "triton_xpu.extract"(%22) <{index = 0 : i32}> : (tensor<1x1xi1, #cluster1>) -> i1
      scf.if %23 {
        %24 = triton_xpu.make_range   {end = 2048 : i32, realSize = 2048 : i32, start = 0 : i32} :   -> tensor<2048xi32, #cluster4>
        %25 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 64 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<2048xi32, #cluster4>
        %26 = triton_xpu.convert_layout %24 : tensor<2048xi32, #cluster4> -> tensor<2048xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
        %27 = tt.expand_dims %26 {axis = 0 : i32} : tensor<2048xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x2048xi32, #cluster>
        %28 = arith.subi %cst_13, %27 : tensor<1x2048xi32, #cluster>
        %29 = arith.cmpi slt, %27, %cst_13 : tensor<1x2048xi32, #cluster>
        %30 = "triton_xpu.extract"(%29) <{index = 0 : i32}> : (tensor<1x2048xi1, #cluster>) -> i1
        scf.if %30 {
          %31 = arith.muli %20, %cst_15 : tensor<1x1xi32, #cluster1>
          %32 = triton_xpu.broadcast %31 : tensor<1x1xi32, #cluster1> -> tensor<1x2048xi32, #cluster1>
          %33 = triton_xpu.convert_layout %32 : tensor<1x2048xi32, #cluster1> -> tensor<1x2048xi32, #cluster>
          %34 = arith.addi %27, %33 : tensor<1x2048xi32, #cluster>
          %35 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<1x2048x!tt.ptr<bf16>, #cluster>
          %36 = tt.addptr %35, %34 : tensor<1x2048x!tt.ptr<bf16>, #cluster>, tensor<1x2048xi32, #cluster>
          %37 = triton_xpu.broadcast %22 : tensor<1x1xi1, #cluster1> -> tensor<1x2048xi1, #cluster1>
          %38 = triton_xpu.convert_layout %37 : tensor<1x2048xi1, #cluster1> -> tensor<1x2048xi1, #cluster>
          %39 = arith.andi %29, %38 : tensor<1x2048xi1, #cluster>
          %40 = "triton_xpu.extract_slice"(%cst_14) : (tensor<1x2048xf32, #cluster>) -> tensor<1x128xf32, #cluster5>
          %c0 = arith.constant 0 : index
          %c16 = arith.constant 16 : index
          %c1 = arith.constant 1 : index
          scf.for %arg9 = %c0 to %c16 step %c1 {
            %91 = arith.index_cast %arg9 : index to i32
            "triton_xpu.store"(%14, %40, %91) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>, tensor<1x128xf32, #cluster5>, i32) -> ()
          }
          %41 = "triton_xpu.gm2lm"(%36, %28, %cst_14, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<bf16>, #cluster>, tensor<1x2048xi32, #cluster>, tensor<1x2048xf32, #cluster>, tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>) -> tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>
          %42 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x2048x!tt.ptr<bf16>, #cluster>
          %43 = tt.addptr %42, %27 : tensor<1x2048x!tt.ptr<bf16>, #cluster>, tensor<1x2048xi32, #cluster>
          %44 = "triton_xpu.extract_slice"(%cst_14) : (tensor<1x2048xf32, #cluster>) -> tensor<1x128xf32, #cluster5>
          scf.for %arg9 = %c0 to %c16 step %c1 {
            %91 = arith.index_cast %arg9 : index to i32
            "triton_xpu.store"(%13, %44, %91) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>, tensor<1x128xf32, #cluster5>, i32) -> ()
          }
          %45 = "triton_xpu.gm2lm"(%43, %28, %cst_14, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<bf16>, #cluster>, tensor<1x2048xi32, #cluster>, tensor<1x2048xf32, #cluster>, tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>) -> tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>
          llvm_xpu.mfence %c1_i32
          %46 = "triton_xpu.load"(%41, %39, %cst_14) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>, tensor<1x2048xi1, #cluster>, tensor<1x2048xf32, #cluster>) -> tensor<1x2048xf32, #cluster>
          %47 = "triton_xpu.load"(%45, %29, %cst_14) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>, tensor<1x2048xi1, #cluster>, tensor<1x2048xf32, #cluster>) -> tensor<1x2048xf32, #cluster>
          %48 = arith.mulf %46, %47 : tensor<1x2048xf32, #cluster>
          %49 = tt.bitcast %48 : tensor<1x2048xf32, #cluster> -> tensor<1x2048xi32, #cluster>
          %50 = arith.shrui %49, %cst : tensor<1x2048xi32, #cluster>
          %51 = arith.andi %50, %cst_0 : tensor<1x2048xi32, #cluster>
          %52 = arith.addi %49, %cst_1 : tensor<1x2048xi32, #cluster>
          %53 = arith.addi %52, %51 : tensor<1x2048xi32, #cluster>
          %54 = arith.andi %53, %cst_2 : tensor<1x2048xi32, #cluster>
          %55 = arith.andi %49, %cst_3 : tensor<1x2048xi32, #cluster>
          %56 = arith.cmpi uge, %55, %cst_4 : tensor<1x2048xi32, #cluster>
          %57 = arith.cmpi ugt, %55, %cst_4 : tensor<1x2048xi32, #cluster>
          %58 = arith.ori %49, %cst_5 : tensor<1x2048xi32, #cluster>
          %59 = arith.select %57, %58, %49 : tensor<1x2048xi1, #cluster>, tensor<1x2048xi32, #cluster>
          %60 = arith.select %56, %59, %54 : tensor<1x2048xi1, #cluster>, tensor<1x2048xi32, #cluster>
          %61 = tt.bitcast %60 : tensor<1x2048xi32, #cluster> -> tensor<1x2048xf32, #cluster>
          %62 = arith.addf %61, %cst_14 : tensor<1x2048xf32, #cluster>
          %63 = arith.select %39, %62, %cst_14 : tensor<1x2048xi1, #cluster>, tensor<1x2048xf32, #cluster>
          %64 = "triton_xpu.extract_slice"(%63) : (tensor<1x2048xf32, #cluster>) -> tensor<1x128xf32, #cluster5>
          %cst_16 = arith.constant dense<16> : tensor<1x128xi32, #cluster5>
          %cst_17 = arith.constant dense<1> : tensor<1x128xi32, #cluster5>
          %cst_18 = arith.constant dense<32767> : tensor<1x128xi32, #cluster5>
          %cst_19 = arith.constant dense<-65536> : tensor<1x128xi32, #cluster5>
          %cst_20 = arith.constant dense<2147483647> : tensor<1x128xi32, #cluster5>
          %cst_21 = arith.constant dense<2139095040> : tensor<1x128xi32, #cluster5>
          %cst_22 = arith.constant dense<4194304> : tensor<1x128xi32, #cluster5>
          %cst_23 = arith.constant dense<2048> : tensor<1x128xi32, #cluster5>
          %cst_24 = arith.constant dense<0.000000e+00> : tensor<1x128xf32, #cluster5>
          %65 = scf.for %arg9 = %c1 to %c16 step %c1 iter_args(%arg10 = %64) -> (tensor<1x128xf32, #cluster5>) {
            %91 = arith.index_cast %arg9 : index to i32
            %92 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 64 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<1xi32, #cluster2>
            %93 = triton_xpu.convert_layout %92 : tensor<1xi32, #cluster2> -> tensor<1xi32, #ttg.slice<{dim = 1, parent = #cluster3}>>
            %94 = tt.expand_dims %93 {axis = 1 : i32} : tensor<1xi32, #ttg.slice<{dim = 1, parent = #cluster3}>> -> tensor<1x1xi32, #cluster3>
            %95 = triton_xpu.convert_layout %94 : tensor<1x1xi32, #cluster3> -> tensor<1x1xi32, #cluster1>
            %96 = arith.addi %19, %95 : tensor<1x1xi32, #cluster1>
            %97 = arith.cmpi slt, %96, %cst_15 : tensor<1x1xi32, #cluster1>
            %98 = triton_xpu.make_range  %91 {end = 2048 : i32, realSize = 2048 : i32, start = 0 : i32} :  i32 -> tensor<128xi32, #cluster6>
            %99 = triton_xpu.convert_layout %98 : tensor<128xi32, #cluster6> -> tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster5}>>
            %100 = tt.expand_dims %99 {axis = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster5}>> -> tensor<1x128xi32, #cluster5>
            %101 = arith.cmpi slt, %100, %cst_23 : tensor<1x128xi32, #cluster5>
            %102 = triton_xpu.broadcast %97 : tensor<1x1xi1, #cluster1> -> tensor<1x128xi1, #cluster1>
            %103 = triton_xpu.convert_layout %102 : tensor<1x128xi1, #cluster1> -> tensor<1x128xi1, #cluster5>
            %104 = arith.andi %101, %103 : tensor<1x128xi1, #cluster5>
            %105 = "triton_xpu.load"(%41, %104, %cst_24, %91) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>, tensor<1x128xi1, #cluster5>, tensor<1x128xf32, #cluster5>, i32) -> tensor<1x128xf32, #cluster5>
            %106 = "triton_xpu.load"(%45, %101, %cst_24, %91) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>, tensor<1x128xi1, #cluster5>, tensor<1x128xf32, #cluster5>, i32) -> tensor<1x128xf32, #cluster5>
            %107 = arith.mulf %105, %106 : tensor<1x128xf32, #cluster5>
            %108 = tt.bitcast %107 : tensor<1x128xf32, #cluster5> -> tensor<1x128xi32, #cluster5>
            %109 = arith.shrui %108, %cst_16 : tensor<1x128xi32, #cluster5>
            %110 = arith.andi %109, %cst_17 : tensor<1x128xi32, #cluster5>
            %111 = arith.addi %108, %cst_18 : tensor<1x128xi32, #cluster5>
            %112 = arith.addi %111, %110 : tensor<1x128xi32, #cluster5>
            %113 = arith.andi %112, %cst_19 : tensor<1x128xi32, #cluster5>
            %114 = arith.andi %108, %cst_20 : tensor<1x128xi32, #cluster5>
            %115 = arith.cmpi uge, %114, %cst_21 : tensor<1x128xi32, #cluster5>
            %116 = arith.cmpi ugt, %114, %cst_21 : tensor<1x128xi32, #cluster5>
            %117 = arith.ori %108, %cst_22 : tensor<1x128xi32, #cluster5>
            %118 = arith.select %116, %117, %108 : tensor<1x128xi1, #cluster5>, tensor<1x128xi32, #cluster5>
            %119 = arith.select %115, %118, %113 : tensor<1x128xi1, #cluster5>, tensor<1x128xi32, #cluster5>
            %120 = tt.bitcast %119 : tensor<1x128xi32, #cluster5> -> tensor<1x128xf32, #cluster5>
            %121 = arith.addf %120, %cst_24 : tensor<1x128xf32, #cluster5>
            %122 = arith.select %104, %121, %cst_24 : tensor<1x128xi1, #cluster5>, tensor<1x128xf32, #cluster5>
            %123 = arith.addf %arg10, %122 : tensor<1x128xf32, #cluster5>
            scf.yield %123 : tensor<1x128xf32, #cluster5>
          }
          %66 = "triton_xpu.reduce"(%65, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
          ^bb0(%arg9: f32, %arg10: f32):
            %91 = arith.addf %arg9, %arg10 : f32
            triton_xpu.reduce.return %91 : f32
          }) : (tensor<1x128xf32, #cluster5>, i32) -> tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster5}>>
          %67 = triton_xpu.convert_layout %66 : tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster5}>> -> tensor<1xf32, #cluster2>
          %68 = triton_xpu.convert_layout %67 : tensor<1xf32, #cluster2> -> tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster3}>>
          %69 = tt.expand_dims %68 {axis = 1 : i32} : tensor<1xf32, #ttg.slice<{dim = 1, parent = #cluster3}>> -> tensor<1x1xf32, #cluster3>
          %70 = triton_xpu.convert_layout %69 : tensor<1x1xf32, #cluster3> -> tensor<1x1xf32, #cluster1>
          %71 = tt.splat %arg2 : !tt.ptr<bf16> -> tensor<1x1x!tt.ptr<bf16>, #cluster1>
          %72 = tt.addptr %71, %20 : tensor<1x1x!tt.ptr<bf16>, #cluster1>, tensor<1x1xi32, #cluster1>
          %73 = tt.bitcast %70 : tensor<1x1xf32, #cluster1> -> tensor<1x1xi32, #cluster1>
          %74 = arith.shrui %73, %cst_6 : tensor<1x1xi32, #cluster1>
          %75 = arith.andi %74, %cst_7 : tensor<1x1xi32, #cluster1>
          %76 = arith.addi %73, %cst_8 : tensor<1x1xi32, #cluster1>
          %77 = arith.addi %76, %75 : tensor<1x1xi32, #cluster1>
          %78 = arith.andi %77, %cst_9 : tensor<1x1xi32, #cluster1>
          %79 = arith.andi %73, %cst_10 : tensor<1x1xi32, #cluster1>
          %80 = arith.cmpi uge, %79, %cst_11 : tensor<1x1xi32, #cluster1>
          %81 = arith.cmpi ugt, %79, %cst_11 : tensor<1x1xi32, #cluster1>
          %82 = arith.ori %73, %cst_12 : tensor<1x1xi32, #cluster1>
          %83 = arith.select %81, %82, %73 : tensor<1x1xi1, #cluster1>, tensor<1x1xi32, #cluster1>
          %84 = arith.select %80, %83, %78 : tensor<1x1xi1, #cluster1>, tensor<1x1xi32, #cluster1>
          %85 = tt.bitcast %84 : tensor<1x1xi32, #cluster1> -> tensor<1x1xf32, #cluster1>
          %86 = "triton_xpu.get_core_id"() : () -> i32
          %c64_i32 = arith.constant 64 : i32
          %87 = arith.remsi %86, %c64_i32 : i32
          %88 = arith.cmpi eq, %87, %c0_i32 : i32
          %89 = arith.cmpi slt, %86, %c64_i32 : i32
          %90 = arith.andi %88, %89 : i1
          scf.if %90 {
            "triton_xpu.store"(%12, %85, %22) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1x!tt.ptr<bf16, 0>, #cluster1>, tensor<1x1xf32, #cluster1>, tensor<1x1xi1, #cluster1>) -> ()
            "triton_xpu.lm2gm"(%72, %21, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1x!tt.ptr<bf16>, #cluster1>, tensor<1x1xi32, #cluster1>, tensor<1x1x!tt.ptr<bf16, 0>, #cluster1>) -> ()
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
