#cluster = #triton_xpu.cluster<{sizePerCore = [1, 256], coresPerGroup = [1, 8], groupsPerCluster = [8, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 8], groupsPerCluster = [8, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [1], groupsPerCluster = [8], order = [0]}>
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
    %c16_i32 = arith.constant 16 : i32
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 8 : si64}> : () -> tensor<8x1x!tt.ptr<bf16, 0>, #cluster1>
      %13 = "triton_xpu.alloca"() <{size = 2048 : si64}> : () -> tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 16384 : si64}> : () -> tensor<8x2048x!tt.ptr<bf16, 0>, #cluster>
      %15 = arith.muli %11, %c16_i32 : i32
      %16 = tt.splat %15 : i32 -> tensor<8x1xi32, #cluster1>
      scf.for %arg9 = %c0 to %c2 step %c1 {
        %17 = arith.index_cast %arg9 : index to i32
        %18 = "triton_xpu.out_range"(%17) <{groupsize = 8 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<8xi32, #cluster2>
        %19 = triton_xpu.convert_layout %18 : tensor<8xi32, #cluster2> -> tensor<8xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
        %20 = tt.expand_dims %19 {axis = 1 : i32} : tensor<8xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<8x1xi32, #cluster1>
        %21 = arith.addi %16, %20 : tensor<8x1xi32, #cluster1>
        %22 = arith.subi %cst_16, %21 : tensor<8x1xi32, #cluster1>
        %23 = arith.cmpi slt, %21, %cst_16 : tensor<8x1xi32, #cluster1>
        %24 = "triton_xpu.extract"(%23) <{index = 0 : i32}> : (tensor<8x1xi1, #cluster1>) -> i1
        scf.if %24 {
          %25 = triton_xpu.make_range   {end = 2048 : i32, realSize = 2048 : i32, start = 0 : i32} :   -> tensor<2048xi32, #cluster3>
          %26 = "triton_xpu.out_range"(%17) <{groupsize = 8 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<1024xi32, #cluster3>
          %27 = triton_xpu.convert_layout %25 : tensor<2048xi32, #cluster3> -> tensor<2048xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
          %28 = tt.expand_dims %27 {axis = 0 : i32} : tensor<2048xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x2048xi32, #cluster>
          %29 = arith.subi %cst_14, %28 : tensor<1x2048xi32, #cluster>
          %30 = arith.cmpi slt, %28, %cst_14 : tensor<1x2048xi32, #cluster>
          %31 = "triton_xpu.extract"(%30) <{index = 0 : i32}> : (tensor<1x2048xi1, #cluster>) -> i1
          scf.if %31 {
            %32 = arith.muli %21, %cst_16 : tensor<8x1xi32, #cluster1>
            %33 = triton_xpu.broadcast %28 : tensor<1x2048xi32, #cluster> -> tensor<8x2048xi32, #cluster>
            %34 = triton_xpu.broadcast %32 : tensor<8x1xi32, #cluster1> -> tensor<8x2048xi32, #cluster>
            %35 = arith.addi %33, %34 : tensor<8x2048xi32, #cluster>
            %36 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<8x2048x!tt.ptr<bf16>, #cluster>
            %37 = tt.addptr %36, %35 : tensor<8x2048x!tt.ptr<bf16>, #cluster>, tensor<8x2048xi32, #cluster>
            %38 = triton_xpu.broadcast %30 : tensor<1x2048xi1, #cluster> -> tensor<8x2048xi1, #cluster>
            %39 = triton_xpu.broadcast %23 : tensor<8x1xi1, #cluster1> -> tensor<8x2048xi1, #cluster>
            %40 = arith.andi %38, %39 : tensor<8x2048xi1, #cluster>
            %41 = "triton_xpu.extract_slice"(%cst_15) : (tensor<8x2048xf32, #cluster>) -> tensor<8x16xf32, #cluster4>
            %c128 = arith.constant 128 : index
            scf.for %arg10 = %c0 to %c128 step %c1 {
              %92 = arith.index_cast %arg10 : index to i32
              "triton_xpu.store"(%14, %41, %92) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x2048x!tt.ptr<bf16, 0>, #cluster>, tensor<8x16xf32, #cluster4>, i32) -> ()
            }
            %42 = "triton_xpu.gm2lm"(%37, %29, %cst_15, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<8x2048x!tt.ptr<bf16>, #cluster>, tensor<1x2048xi32, #cluster>, tensor<8x2048xf32, #cluster>, tensor<8x2048x!tt.ptr<bf16, 0>, #cluster>) -> tensor<8x2048x!tt.ptr<bf16, 0>, #cluster>
            %43 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x2048x!tt.ptr<bf16>, #cluster>
            %44 = tt.addptr %43, %28 : tensor<1x2048x!tt.ptr<bf16>, #cluster>, tensor<1x2048xi32, #cluster>
            %45 = "triton_xpu.extract_slice"(%cst) : (tensor<1x2048xf32, #cluster>) -> tensor<1x16xf32, #cluster4>
            scf.for %arg10 = %c0 to %c128 step %c1 {
              %92 = arith.index_cast %arg10 : index to i32
              "triton_xpu.store"(%13, %45, %92) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>, tensor<1x16xf32, #cluster4>, i32) -> ()
            }
            %46 = "triton_xpu.gm2lm"(%44, %29, %cst, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<bf16>, #cluster>, tensor<1x2048xi32, #cluster>, tensor<1x2048xf32, #cluster>, tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>) -> tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>
            llvm_xpu.mfence %c1_i32
            %47 = "triton_xpu.load"(%42, %40, %cst_15) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x2048x!tt.ptr<bf16, 0>, #cluster>, tensor<8x2048xi1, #cluster>, tensor<8x2048xf32, #cluster>) -> tensor<8x2048xf32, #cluster>
            %48 = "triton_xpu.load"(%46, %30, %cst) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>, tensor<1x2048xi1, #cluster>, tensor<1x2048xf32, #cluster>) -> tensor<1x2048xf32, #cluster>
            %49 = triton_xpu.broadcast %48 : tensor<1x2048xf32, #cluster> -> tensor<8x2048xf32, #cluster>
            %50 = arith.mulf %47, %49 : tensor<8x2048xf32, #cluster>
            %51 = tt.bitcast %50 : tensor<8x2048xf32, #cluster> -> tensor<8x2048xi32, #cluster>
            %52 = arith.shrui %51, %cst_0 : tensor<8x2048xi32, #cluster>
            %53 = arith.andi %52, %cst_1 : tensor<8x2048xi32, #cluster>
            %54 = arith.addi %51, %cst_2 : tensor<8x2048xi32, #cluster>
            %55 = arith.addi %54, %53 : tensor<8x2048xi32, #cluster>
            %56 = arith.andi %55, %cst_3 : tensor<8x2048xi32, #cluster>
            %57 = arith.andi %51, %cst_4 : tensor<8x2048xi32, #cluster>
            %58 = arith.cmpi uge, %57, %cst_5 : tensor<8x2048xi32, #cluster>
            %59 = arith.cmpi ugt, %57, %cst_5 : tensor<8x2048xi32, #cluster>
            %60 = arith.ori %51, %cst_6 : tensor<8x2048xi32, #cluster>
            %61 = arith.select %59, %60, %51 : tensor<8x2048xi1, #cluster>, tensor<8x2048xi32, #cluster>
            %62 = arith.select %58, %61, %56 : tensor<8x2048xi1, #cluster>, tensor<8x2048xi32, #cluster>
            %63 = tt.bitcast %62 : tensor<8x2048xi32, #cluster> -> tensor<8x2048xf32, #cluster>
            %64 = arith.addf %63, %cst_15 : tensor<8x2048xf32, #cluster>
            %65 = arith.select %40, %64, %cst_15 : tensor<8x2048xi1, #cluster>, tensor<8x2048xf32, #cluster>
            %66 = "triton_xpu.extract_slice"(%65) : (tensor<8x2048xf32, #cluster>) -> tensor<8x16xf32, #cluster4>
            %cst_17 = arith.constant dense<16> : tensor<8x16xi32, #cluster4>
            %cst_18 = arith.constant dense<1> : tensor<8x16xi32, #cluster4>
            %cst_19 = arith.constant dense<32767> : tensor<8x16xi32, #cluster4>
            %cst_20 = arith.constant dense<-65536> : tensor<8x16xi32, #cluster4>
            %cst_21 = arith.constant dense<2147483647> : tensor<8x16xi32, #cluster4>
            %cst_22 = arith.constant dense<2139095040> : tensor<8x16xi32, #cluster4>
            %cst_23 = arith.constant dense<4194304> : tensor<8x16xi32, #cluster4>
            %cst_24 = arith.constant dense<2048> : tensor<1x16xi32, #cluster4>
            %cst_25 = arith.constant dense<0.000000e+00> : tensor<8x16xf32, #cluster4>
            %67 = scf.for %arg10 = %c1 to %c128 step %c1 iter_args(%arg11 = %66) -> (tensor<8x16xf32, #cluster4>) {
              %92 = arith.index_cast %arg10 : index to i32
              %93 = "triton_xpu.out_range"(%17) <{groupsize = 8 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<8xi32, #cluster2>
              %94 = triton_xpu.convert_layout %93 : tensor<8xi32, #cluster2> -> tensor<8xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
              %95 = tt.expand_dims %94 {axis = 1 : i32} : tensor<8xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<8x1xi32, #cluster1>
              %96 = arith.addi %16, %95 : tensor<8x1xi32, #cluster1>
              %97 = arith.cmpi slt, %96, %cst_16 : tensor<8x1xi32, #cluster1>
              %98 = triton_xpu.make_range  %92 {end = 2048 : i32, realSize = 2048 : i32, start = 0 : i32} :  i32 -> tensor<16xi32, #cluster5>
              %99 = triton_xpu.convert_layout %98 : tensor<16xi32, #cluster5> -> tensor<16xi32, #ttg.slice<{dim = 0, parent = #cluster4}>>
              %100 = tt.expand_dims %99 {axis = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 0, parent = #cluster4}>> -> tensor<1x16xi32, #cluster4>
              %101 = arith.cmpi slt, %100, %cst_24 : tensor<1x16xi32, #cluster4>
              %102 = triton_xpu.broadcast %101 : tensor<1x16xi1, #cluster4> -> tensor<8x16xi1, #cluster4>
              %103 = triton_xpu.broadcast %97 : tensor<8x1xi1, #cluster1> -> tensor<8x16xi1, #cluster4>
              %104 = arith.andi %102, %103 : tensor<8x16xi1, #cluster4>
              %105 = "triton_xpu.load"(%42, %104, %cst_25, %92) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x2048x!tt.ptr<bf16, 0>, #cluster>, tensor<8x16xi1, #cluster4>, tensor<8x16xf32, #cluster4>, i32) -> tensor<8x16xf32, #cluster4>
              %106 = "triton_xpu.load"(%46, %101, %cst, %92) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x2048x!tt.ptr<bf16, 0>, #cluster>, tensor<1x16xi1, #cluster4>, tensor<1x2048xf32, #cluster>, i32) -> tensor<1x16xf32, #cluster4>
              %107 = triton_xpu.broadcast %106 : tensor<1x16xf32, #cluster4> -> tensor<8x16xf32, #cluster4>
              %108 = arith.mulf %105, %107 : tensor<8x16xf32, #cluster4>
              %109 = tt.bitcast %108 : tensor<8x16xf32, #cluster4> -> tensor<8x16xi32, #cluster4>
              %110 = arith.shrui %109, %cst_17 : tensor<8x16xi32, #cluster4>
              %111 = arith.andi %110, %cst_18 : tensor<8x16xi32, #cluster4>
              %112 = arith.addi %109, %cst_19 : tensor<8x16xi32, #cluster4>
              %113 = arith.addi %112, %111 : tensor<8x16xi32, #cluster4>
              %114 = arith.andi %113, %cst_20 : tensor<8x16xi32, #cluster4>
              %115 = arith.andi %109, %cst_21 : tensor<8x16xi32, #cluster4>
              %116 = arith.cmpi uge, %115, %cst_22 : tensor<8x16xi32, #cluster4>
              %117 = arith.cmpi ugt, %115, %cst_22 : tensor<8x16xi32, #cluster4>
              %118 = arith.ori %109, %cst_23 : tensor<8x16xi32, #cluster4>
              %119 = arith.select %117, %118, %109 : tensor<8x16xi1, #cluster4>, tensor<8x16xi32, #cluster4>
              %120 = arith.select %116, %119, %114 : tensor<8x16xi1, #cluster4>, tensor<8x16xi32, #cluster4>
              %121 = tt.bitcast %120 : tensor<8x16xi32, #cluster4> -> tensor<8x16xf32, #cluster4>
              %122 = arith.addf %121, %cst_25 : tensor<8x16xf32, #cluster4>
              %123 = arith.select %104, %122, %cst_25 : tensor<8x16xi1, #cluster4>, tensor<8x16xf32, #cluster4>
              %124 = arith.addf %arg11, %123 : tensor<8x16xf32, #cluster4>
              scf.yield %124 : tensor<8x16xf32, #cluster4>
            }
            %68 = "triton_xpu.reduce"(%67, %17) <{axis = 1 : i32, loopNum = 2 : i32}> ({
            ^bb0(%arg10: f32, %arg11: f32):
              %92 = arith.addf %arg10, %arg11 : f32
              triton_xpu.reduce.return %92 : f32
            }) : (tensor<8x16xf32, #cluster4>, i32) -> tensor<8xf32, #ttg.slice<{dim = 1, parent = #cluster4}>>
            %69 = triton_xpu.convert_layout %68 : tensor<8xf32, #ttg.slice<{dim = 1, parent = #cluster4}>> -> tensor<8xf32, #cluster2>
            %70 = triton_xpu.convert_layout %69 : tensor<8xf32, #cluster2> -> tensor<8xf32, #ttg.slice<{dim = 1, parent = #cluster1}>>
            %71 = tt.expand_dims %70 {axis = 1 : i32} : tensor<8xf32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<8x1xf32, #cluster1>
            %72 = tt.splat %arg2 : !tt.ptr<bf16> -> tensor<8x1x!tt.ptr<bf16>, #cluster1>
            %73 = tt.addptr %72, %21 : tensor<8x1x!tt.ptr<bf16>, #cluster1>, tensor<8x1xi32, #cluster1>
            %74 = tt.bitcast %71 : tensor<8x1xf32, #cluster1> -> tensor<8x1xi32, #cluster1>
            %75 = arith.shrui %74, %cst_7 : tensor<8x1xi32, #cluster1>
            %76 = arith.andi %75, %cst_8 : tensor<8x1xi32, #cluster1>
            %77 = arith.addi %74, %cst_9 : tensor<8x1xi32, #cluster1>
            %78 = arith.addi %77, %76 : tensor<8x1xi32, #cluster1>
            %79 = arith.andi %78, %cst_10 : tensor<8x1xi32, #cluster1>
            %80 = arith.andi %74, %cst_11 : tensor<8x1xi32, #cluster1>
            %81 = arith.cmpi uge, %80, %cst_12 : tensor<8x1xi32, #cluster1>
            %82 = arith.cmpi ugt, %80, %cst_12 : tensor<8x1xi32, #cluster1>
            %83 = arith.ori %74, %cst_13 : tensor<8x1xi32, #cluster1>
            %84 = arith.select %82, %83, %74 : tensor<8x1xi1, #cluster1>, tensor<8x1xi32, #cluster1>
            %85 = arith.select %81, %84, %79 : tensor<8x1xi1, #cluster1>, tensor<8x1xi32, #cluster1>
            %86 = tt.bitcast %85 : tensor<8x1xi32, #cluster1> -> tensor<8x1xf32, #cluster1>
            %87 = "triton_xpu.get_core_id"() : () -> i32
            %c8_i32 = arith.constant 8 : i32
            %88 = arith.remsi %87, %c8_i32 : i32
            %c0_i32 = arith.constant 0 : i32
            %89 = arith.cmpi eq, %88, %c0_i32 : i32
            %c64_i32 = arith.constant 64 : i32
            %90 = arith.cmpi slt, %87, %c64_i32 : i32
            %91 = arith.andi %89, %90 : i1
            scf.if %91 {
              "triton_xpu.store"(%12, %86, %23) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x1x!tt.ptr<bf16, 0>, #cluster1>, tensor<8x1xf32, #cluster1>, tensor<8x1xi1, #cluster1>) -> ()
              "triton_xpu.lm2gm"(%73, %22, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<8x1x!tt.ptr<bf16>, #cluster1>, tensor<8x1xi32, #cluster1>, tensor<8x1x!tt.ptr<bf16, 0>, #cluster1>) -> ()
            }
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
