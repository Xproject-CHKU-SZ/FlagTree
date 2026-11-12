#cluster = #triton_xpu.cluster<{sizePerCore = [1, 256], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [1], groupsPerCluster = [16], order = [0]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [256], coresPerGroup = [4], groupsPerCluster = [1], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [4], groupsPerCluster = [1], order = [0]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 16 : i32, "ttg.threads-per-warp" = 4 : i32} {
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
    %cst = arith.constant dense<0.000000e+00> : tensor<1x1024xf32, #cluster>
    %cst_0 = arith.constant dense<16> : tensor<16x1xi32, #cluster1>
    %cst_1 = arith.constant dense<1> : tensor<16x1xi32, #cluster1>
    %cst_2 = arith.constant dense<32767> : tensor<16x1xi32, #cluster1>
    %cst_3 = arith.constant dense<-65536> : tensor<16x1xi32, #cluster1>
    %cst_4 = arith.constant dense<2147483647> : tensor<16x1xi32, #cluster1>
    %cst_5 = arith.constant dense<2139095040> : tensor<16x1xi32, #cluster1>
    %cst_6 = arith.constant dense<4194304> : tensor<16x1xi32, #cluster1>
    %c1024_i32 = arith.constant 1024 : i32
    %c2048_i32 = arith.constant 2048 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst_7 = arith.constant dense<2048> : tensor<1x1024xi32, #cluster>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<16x1024xf32, #cluster>
    %cst_9 = arith.constant dense<2048> : tensor<16x1xi32, #cluster1>
    %c32_i32 = arith.constant 32 : i32
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 16 : si64}> : () -> tensor<16x1x!tt.ptr<bf16, 0>, #cluster1>
      %13 = "triton_xpu.alloca"() <{size = 1024 : si64}> : () -> tensor<1x1024x!tt.ptr<bf16, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 16384 : si64}> : () -> tensor<16x1024x!tt.ptr<bf16, 0>, #cluster>
      %15 = arith.muli %11, %c32_i32 : i32
      %16 = tt.splat %15 : i32 -> tensor<16x1xi32, #cluster1>
      scf.for %arg9 = %c0 to %c2 step %c1 {
        %17 = arith.index_cast %arg9 : index to i32
        %18 = "triton_xpu.out_range"(%17) <{groupsize = 4 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<16xi32, #cluster2>
        %19 = triton_xpu.convert_layout %18 : tensor<16xi32, #cluster2> -> tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
        %20 = tt.expand_dims %19 {axis = 1 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<16x1xi32, #cluster1>
        %21 = arith.addi %16, %20 : tensor<16x1xi32, #cluster1>
        %22 = arith.subi %cst_9, %21 : tensor<16x1xi32, #cluster1>
        %23 = arith.cmpi slt, %21, %cst_9 : tensor<16x1xi32, #cluster1>
        %24 = "triton_xpu.extract"(%23) <{index = 0 : i32}> : (tensor<16x1xi1, #cluster1>) -> i1
        scf.if %24 {
          %25 = triton_xpu.make_range   {end = 1024 : i32, realSize = 1024 : i32, start = 0 : i32} :   -> tensor<1024xi32, #cluster3>
          %26 = triton_xpu.convert_layout %25 : tensor<1024xi32, #cluster3> -> tensor<1024xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
          %27 = tt.expand_dims %26 {axis = 0 : i32} : tensor<1024xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x1024xi32, #cluster>
          %28 = arith.muli %21, %cst_9 : tensor<16x1xi32, #cluster1>
          %29 = triton_xpu.broadcast %28 : tensor<16x1xi32, #cluster1> -> tensor<16x1024xi32, #cluster>
          %30 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<16x1024x!tt.ptr<bf16>, #cluster>
          %31 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x1024x!tt.ptr<bf16>, #cluster>
          %32 = "triton_xpu.alloca"() <{size = 16384 : si64}> : () -> tensor<16x1024x!tt.ptr<f32, 0>, #cluster>
          %c128 = arith.constant 128 : index
          %cst_10 = arith.constant dense<0.000000e+00> : tensor<16x8xf32, #cluster4>
          scf.for %arg10 = %c0 to %c128 step %c1 {
            %61 = arith.index_cast %arg10 : index to i32
            "triton_xpu.store"(%32, %cst_10, %61) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1024x!tt.ptr<f32, 0>, #cluster>, tensor<16x8xf32, #cluster4>, i32) -> ()
          }
          %33 = scf.for %arg10 = %c0_i32 to %c2048_i32 step %c1024_i32 iter_args(%arg11 = %cst_8) -> (tensor<16x1024xf32, #cluster>)  : i32 {
            %61 = tt.splat %arg10 : i32 -> tensor<1x1024xi32, #cluster>
            %62 = arith.addi %61, %27 : tensor<1x1024xi32, #cluster>
            %63 = arith.subi %cst_7, %62 : tensor<1x1024xi32, #cluster>
            %64 = arith.cmpi slt, %62, %cst_7 : tensor<1x1024xi32, #cluster>
            %65 = "triton_xpu.extract"(%64) <{index = 0 : i32}> : (tensor<1x1024xi1, #cluster>) -> i1
            %66 = scf.if %65 -> (tensor<16x1024xf32, #cluster>) {
              %67 = triton_xpu.broadcast %62 : tensor<1x1024xi32, #cluster> -> tensor<16x1024xi32, #cluster>
              %68 = arith.addi %67, %29 : tensor<16x1024xi32, #cluster>
              %69 = tt.addptr %30, %68 : tensor<16x1024x!tt.ptr<bf16>, #cluster>, tensor<16x1024xi32, #cluster>
              %70 = "triton_xpu.extract_slice"(%cst_8) : (tensor<16x1024xf32, #cluster>) -> tensor<16x8xf32, #cluster4>
              scf.for %arg12 = %c0 to %c128 step %c1 {
                %78 = arith.index_cast %arg12 : index to i32
                "triton_xpu.store"(%14, %70, %78) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1024x!tt.ptr<bf16, 0>, #cluster>, tensor<16x8xf32, #cluster4>, i32) -> ()
              }
              %71 = "triton_xpu.gm2lm"(%69, %63, %cst_8, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<16x1024x!tt.ptr<bf16>, #cluster>, tensor<1x1024xi32, #cluster>, tensor<16x1024xf32, #cluster>, tensor<16x1024x!tt.ptr<bf16, 0>, #cluster>) -> tensor<16x1024x!tt.ptr<bf16, 0>, #cluster>
              %72 = tt.addptr %31, %62 : tensor<1x1024x!tt.ptr<bf16>, #cluster>, tensor<1x1024xi32, #cluster>
              %73 = "triton_xpu.extract_slice"(%cst) : (tensor<1x1024xf32, #cluster>) -> tensor<1x8xf32, #cluster4>
              scf.for %arg12 = %c0 to %c128 step %c1 {
                %78 = arith.index_cast %arg12 : index to i32
                "triton_xpu.store"(%13, %73, %78) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<bf16, 0>, #cluster>, tensor<1x8xf32, #cluster4>, i32) -> ()
              }
              %74 = "triton_xpu.gm2lm"(%72, %63, %cst, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<bf16>, #cluster>, tensor<1x1024xi32, #cluster>, tensor<1x1024xf32, #cluster>, tensor<1x1024x!tt.ptr<bf16, 0>, #cluster>) -> tensor<1x1024x!tt.ptr<bf16, 0>, #cluster>
              %cst_11 = arith.constant dense<16> : tensor<16x8xi32, #cluster4>
              %cst_12 = arith.constant dense<1> : tensor<16x8xi32, #cluster4>
              %cst_13 = arith.constant dense<32767> : tensor<16x8xi32, #cluster4>
              %cst_14 = arith.constant dense<-65536> : tensor<16x8xi32, #cluster4>
              %cst_15 = arith.constant dense<2147483647> : tensor<16x8xi32, #cluster4>
              %cst_16 = arith.constant dense<2139095040> : tensor<16x8xi32, #cluster4>
              %cst_17 = arith.constant dense<4194304> : tensor<16x8xi32, #cluster4>
              %cst_18 = arith.constant dense<2048> : tensor<1x8xi32, #cluster4>
              %75 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<16x8x!tt.ptr<bf16>, #cluster4>
              %76 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x8x!tt.ptr<bf16>, #cluster4>
              %77 = tt.splat %arg10 : i32 -> tensor<1x8xi32, #cluster4>
              scf.for %arg12 = %c0 to %c128 step %c1 {
                %78 = arith.index_cast %arg12 : index to i32
                %79 = "triton_xpu.out_range"(%17) <{groupsize = 4 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<16xi32, #cluster2>
                %80 = triton_xpu.convert_layout %79 : tensor<16xi32, #cluster2> -> tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
                %81 = tt.expand_dims %80 {axis = 1 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<16x1xi32, #cluster1>
                %82 = arith.addi %16, %81 : tensor<16x1xi32, #cluster1>
                %83 = arith.cmpi slt, %82, %cst_9 : tensor<16x1xi32, #cluster1>
                %84 = triton_xpu.make_range  %78 {end = 1024 : i32, realSize = 1024 : i32, start = 0 : i32} :  i32 -> tensor<8xi32, #cluster5>
                %85 = triton_xpu.convert_layout %84 : tensor<8xi32, #cluster5> -> tensor<8xi32, #ttg.slice<{dim = 0, parent = #cluster4}>>
                %86 = tt.expand_dims %85 {axis = 0 : i32} : tensor<8xi32, #ttg.slice<{dim = 0, parent = #cluster4}>> -> tensor<1x8xi32, #cluster4>
                %87 = arith.muli %82, %cst_9 : tensor<16x1xi32, #cluster1>
                %88 = triton_xpu.broadcast %87 : tensor<16x1xi32, #cluster1> -> tensor<16x8xi32, #cluster4>
                %89 = triton_xpu.broadcast %83 : tensor<16x1xi1, #cluster1> -> tensor<16x8xi1, #cluster4>
                %90 = arith.addi %77, %86 : tensor<1x8xi32, #cluster4>
                %91 = arith.cmpi slt, %90, %cst_18 : tensor<1x8xi32, #cluster4>
                %92 = "triton_xpu.extract"(%91) <{index = 0 : i32}> : (tensor<1x8xi1, #cluster4>) -> i1
                %93 = "triton_xpu.load"(%32, %78) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1024x!tt.ptr<f32, 0>, #cluster>, i32) -> tensor<16x8xf32, #cluster4>
                %94 = triton_xpu.broadcast %90 : tensor<1x8xi32, #cluster4> -> tensor<16x8xi32, #cluster4>
                %95 = arith.addi %94, %88 : tensor<16x8xi32, #cluster4>
                %96 = triton_xpu.broadcast %91 : tensor<1x8xi1, #cluster4> -> tensor<16x8xi1, #cluster4>
                %97 = arith.andi %96, %89 : tensor<16x8xi1, #cluster4>
                llvm_xpu.mfence %c1_i32
                %98 = "triton_xpu.load"(%71, %97, %cst_8, %78) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1024x!tt.ptr<bf16, 0>, #cluster>, tensor<16x8xi1, #cluster4>, tensor<16x1024xf32, #cluster>, i32) -> tensor<16x8xf32, #cluster4>
                %99 = "triton_xpu.load"(%74, %91, %cst, %78) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<bf16, 0>, #cluster>, tensor<1x8xi1, #cluster4>, tensor<1x1024xf32, #cluster>, i32) -> tensor<1x8xf32, #cluster4>
                %100 = triton_xpu.broadcast %99 : tensor<1x8xf32, #cluster4> -> tensor<16x8xf32, #cluster4>
                %101 = arith.mulf %98, %100 : tensor<16x8xf32, #cluster4>
                %102 = tt.bitcast %101 : tensor<16x8xf32, #cluster4> -> tensor<16x8xi32, #cluster4>
                %103 = arith.shrui %102, %cst_11 : tensor<16x8xi32, #cluster4>
                %104 = arith.andi %103, %cst_12 : tensor<16x8xi32, #cluster4>
                %105 = arith.addi %102, %cst_13 : tensor<16x8xi32, #cluster4>
                %106 = arith.addi %105, %104 : tensor<16x8xi32, #cluster4>
                %107 = arith.andi %106, %cst_14 : tensor<16x8xi32, #cluster4>
                %108 = arith.andi %102, %cst_15 : tensor<16x8xi32, #cluster4>
                %109 = arith.cmpi uge, %108, %cst_16 : tensor<16x8xi32, #cluster4>
                %110 = arith.cmpi ugt, %108, %cst_16 : tensor<16x8xi32, #cluster4>
                %111 = arith.ori %102, %cst_17 : tensor<16x8xi32, #cluster4>
                %112 = arith.select %110, %111, %102 : tensor<16x8xi1, #cluster4>, tensor<16x8xi32, #cluster4>
                %113 = arith.select %109, %112, %107 : tensor<16x8xi1, #cluster4>, tensor<16x8xi32, #cluster4>
                %114 = tt.bitcast %113 : tensor<16x8xi32, #cluster4> -> tensor<16x8xf32, #cluster4>
                %115 = arith.addf %93, %114 : tensor<16x8xf32, #cluster4>
                %116 = arith.select %97, %115, %93 : tensor<16x8xi1, #cluster4>, tensor<16x8xf32, #cluster4>
                "triton_xpu.store"(%32, %116, %78) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1024x!tt.ptr<f32, 0>, #cluster>, tensor<16x8xf32, #cluster4>, i32) -> ()
              }
              scf.yield %cst_8 : tensor<16x1024xf32, #cluster>
            } else {
              scf.yield %arg11 : tensor<16x1024xf32, #cluster>
            }
            scf.yield %66 : tensor<16x1024xf32, #cluster>
          }
          %34 = "triton_xpu.load"(%32) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1024x!tt.ptr<f32, 0>, #cluster>) -> tensor<16x1024xf32, #cluster>
          %35 = "triton_xpu.extract_slice"(%34) : (tensor<16x1024xf32, #cluster>) -> tensor<16x8xf32, #cluster4>
          %36 = scf.for %arg10 = %c1 to %c128 step %c1 iter_args(%arg11 = %35) -> (tensor<16x8xf32, #cluster4>) {
            %61 = arith.index_cast %arg10 : index to i32
            %62 = "triton_xpu.load"(%32, %61) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1024x!tt.ptr<f32, 0>, #cluster>, i32) -> tensor<16x8xf32, #cluster4>
            %63 = arith.addf %arg11, %62 : tensor<16x8xf32, #cluster4>
            scf.yield %63 : tensor<16x8xf32, #cluster4>
          }
          %37 = "triton_xpu.reduce"(%36, %17) <{axis = 1 : i32, loopNum = 2 : i32}> ({
          ^bb0(%arg10: f32, %arg11: f32):
            %61 = arith.addf %arg10, %arg11 : f32
            triton_xpu.reduce.return %61 : f32
          }) : (tensor<16x8xf32, #cluster4>, i32) -> tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster4}>>
          %38 = triton_xpu.convert_layout %37 : tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster4}>> -> tensor<16xf32, #cluster2>
          %39 = triton_xpu.convert_layout %38 : tensor<16xf32, #cluster2> -> tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster1}>>
          %40 = tt.expand_dims %39 {axis = 1 : i32} : tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<16x1xf32, #cluster1>
          %41 = tt.splat %arg2 : !tt.ptr<bf16> -> tensor<16x1x!tt.ptr<bf16>, #cluster1>
          %42 = tt.addptr %41, %21 : tensor<16x1x!tt.ptr<bf16>, #cluster1>, tensor<16x1xi32, #cluster1>
          %43 = tt.bitcast %40 : tensor<16x1xf32, #cluster1> -> tensor<16x1xi32, #cluster1>
          %44 = arith.shrui %43, %cst_0 : tensor<16x1xi32, #cluster1>
          %45 = arith.andi %44, %cst_1 : tensor<16x1xi32, #cluster1>
          %46 = arith.addi %43, %cst_2 : tensor<16x1xi32, #cluster1>
          %47 = arith.addi %46, %45 : tensor<16x1xi32, #cluster1>
          %48 = arith.andi %47, %cst_3 : tensor<16x1xi32, #cluster1>
          %49 = arith.andi %43, %cst_4 : tensor<16x1xi32, #cluster1>
          %50 = arith.cmpi uge, %49, %cst_5 : tensor<16x1xi32, #cluster1>
          %51 = arith.cmpi ugt, %49, %cst_5 : tensor<16x1xi32, #cluster1>
          %52 = arith.ori %43, %cst_6 : tensor<16x1xi32, #cluster1>
          %53 = arith.select %51, %52, %43 : tensor<16x1xi1, #cluster1>, tensor<16x1xi32, #cluster1>
          %54 = arith.select %50, %53, %48 : tensor<16x1xi1, #cluster1>, tensor<16x1xi32, #cluster1>
          %55 = tt.bitcast %54 : tensor<16x1xi32, #cluster1> -> tensor<16x1xf32, #cluster1>
          %56 = "triton_xpu.get_core_id"() : () -> i32
          %c4_i32 = arith.constant 4 : i32
          %57 = arith.remsi %56, %c4_i32 : i32
          %58 = arith.cmpi eq, %57, %c0_i32 : i32
          %c64_i32 = arith.constant 64 : i32
          %59 = arith.cmpi slt, %56, %c64_i32 : i32
          %60 = arith.andi %58, %59 : i1
          scf.if %60 {
            "triton_xpu.store"(%12, %55, %23) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1x!tt.ptr<bf16, 0>, #cluster1>, tensor<16x1xf32, #cluster1>, tensor<16x1xi1, #cluster1>) -> ()
            "triton_xpu.lm2gm"(%42, %22, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1x!tt.ptr<bf16>, #cluster1>, tensor<16x1xi32, #cluster1>, tensor<16x1x!tt.ptr<bf16, 0>, #cluster1>) -> ()
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
