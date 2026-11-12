#cluster = #triton_xpu.cluster<{sizePerCore = [1, 128], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [1], groupsPerCluster = [16], order = [0]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [128], coresPerGroup = [4], groupsPerCluster = [1], order = [0]}>
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
    %cst = arith.constant dense<0.000000e+00> : tensor<1x512xf32, #cluster>
    %cst_0 = arith.constant dense<16> : tensor<16x1xi32, #cluster1>
    %cst_1 = arith.constant dense<1> : tensor<16x1xi32, #cluster1>
    %cst_2 = arith.constant dense<32767> : tensor<16x1xi32, #cluster1>
    %cst_3 = arith.constant dense<-65536> : tensor<16x1xi32, #cluster1>
    %cst_4 = arith.constant dense<2147483647> : tensor<16x1xi32, #cluster1>
    %cst_5 = arith.constant dense<2139095040> : tensor<16x1xi32, #cluster1>
    %cst_6 = arith.constant dense<4194304> : tensor<16x1xi32, #cluster1>
    %c512_i32 = arith.constant 512 : i32
    %c2048_i32 = arith.constant 2048 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst_7 = arith.constant dense<2048> : tensor<1x512xi32, #cluster>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<16x512xf32, #cluster>
    %cst_9 = arith.constant dense<2048> : tensor<16x1xi32, #cluster1>
    %c16_i32 = arith.constant 16 : i32
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 16 : si64}> : () -> tensor<16x1x!tt.ptr<bf16, 0>, #cluster1>
      %13 = "triton_xpu.alloca"() <{size = 512 : si64}> : () -> tensor<1x512x!tt.ptr<bf16, 0>, #cluster>
      %14 = "triton_xpu.alloca"() <{size = 8192 : si64}> : () -> tensor<16x512x!tt.ptr<bf16, 0>, #cluster>
      %15 = arith.muli %11, %c16_i32 : i32
      %16 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 4 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<16xi32, #cluster2>
      %17 = triton_xpu.convert_layout %16 : tensor<16xi32, #cluster2> -> tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
      %18 = tt.expand_dims %17 {axis = 1 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<16x1xi32, #cluster1>
      %19 = tt.splat %15 : i32 -> tensor<16x1xi32, #cluster1>
      %20 = arith.addi %19, %18 : tensor<16x1xi32, #cluster1>
      %21 = arith.subi %cst_9, %20 : tensor<16x1xi32, #cluster1>
      %22 = arith.cmpi slt, %20, %cst_9 : tensor<16x1xi32, #cluster1>
      %23 = "triton_xpu.extract"(%22) <{index = 0 : i32}> : (tensor<16x1xi1, #cluster1>) -> i1
      scf.if %23 {
        %24 = triton_xpu.make_range   {end = 512 : i32, realSize = 512 : i32, start = 0 : i32} :   -> tensor<512xi32, #cluster3>
        %25 = triton_xpu.convert_layout %24 : tensor<512xi32, #cluster3> -> tensor<512xi32, #ttg.slice<{dim = 0, parent = #cluster}>>
        %26 = tt.expand_dims %25 {axis = 0 : i32} : tensor<512xi32, #ttg.slice<{dim = 0, parent = #cluster}>> -> tensor<1x512xi32, #cluster>
        %27 = arith.muli %20, %cst_9 : tensor<16x1xi32, #cluster1>
        %28 = triton_xpu.broadcast %27 : tensor<16x1xi32, #cluster1> -> tensor<16x512xi32, #cluster>
        %29 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<16x512x!tt.ptr<bf16>, #cluster>
        %30 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x512x!tt.ptr<bf16>, #cluster>
        %31 = "triton_xpu.alloca"() <{size = 8192 : si64}> : () -> tensor<16x512x!tt.ptr<f32, 0>, #cluster>
        %c0 = arith.constant 0 : index
        %c64 = arith.constant 64 : index
        %c1 = arith.constant 1 : index
        %cst_10 = arith.constant dense<0.000000e+00> : tensor<16x8xf32, #cluster4>
        scf.for %arg9 = %c0 to %c64 step %c1 {
          %60 = arith.index_cast %arg9 : index to i32
          "triton_xpu.store"(%31, %cst_10, %60) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x512x!tt.ptr<f32, 0>, #cluster>, tensor<16x8xf32, #cluster4>, i32) -> ()
        }
        %32 = scf.for %arg9 = %c0_i32 to %c2048_i32 step %c512_i32 iter_args(%arg10 = %cst_8) -> (tensor<16x512xf32, #cluster>)  : i32 {
          %60 = tt.splat %arg9 : i32 -> tensor<1x512xi32, #cluster>
          %61 = arith.addi %60, %26 : tensor<1x512xi32, #cluster>
          %62 = arith.subi %cst_7, %61 : tensor<1x512xi32, #cluster>
          %63 = arith.cmpi slt, %61, %cst_7 : tensor<1x512xi32, #cluster>
          %64 = "triton_xpu.extract"(%63) <{index = 0 : i32}> : (tensor<1x512xi1, #cluster>) -> i1
          %65 = scf.if %64 -> (tensor<16x512xf32, #cluster>) {
            %66 = triton_xpu.broadcast %61 : tensor<1x512xi32, #cluster> -> tensor<16x512xi32, #cluster>
            %67 = arith.addi %66, %28 : tensor<16x512xi32, #cluster>
            %68 = tt.addptr %29, %67 : tensor<16x512x!tt.ptr<bf16>, #cluster>, tensor<16x512xi32, #cluster>
            %69 = "triton_xpu.extract_slice"(%cst_8) : (tensor<16x512xf32, #cluster>) -> tensor<16x8xf32, #cluster4>
            scf.for %arg11 = %c0 to %c64 step %c1 {
              %77 = arith.index_cast %arg11 : index to i32
              "triton_xpu.store"(%14, %69, %77) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x512x!tt.ptr<bf16, 0>, #cluster>, tensor<16x8xf32, #cluster4>, i32) -> ()
            }
            %70 = "triton_xpu.gm2lm"(%68, %62, %cst_8, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<16x512x!tt.ptr<bf16>, #cluster>, tensor<1x512xi32, #cluster>, tensor<16x512xf32, #cluster>, tensor<16x512x!tt.ptr<bf16, 0>, #cluster>) -> tensor<16x512x!tt.ptr<bf16, 0>, #cluster>
            %71 = tt.addptr %30, %61 : tensor<1x512x!tt.ptr<bf16>, #cluster>, tensor<1x512xi32, #cluster>
            %72 = "triton_xpu.extract_slice"(%cst) : (tensor<1x512xf32, #cluster>) -> tensor<1x8xf32, #cluster4>
            scf.for %arg11 = %c0 to %c64 step %c1 {
              %77 = arith.index_cast %arg11 : index to i32
              "triton_xpu.store"(%13, %72, %77) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x512x!tt.ptr<bf16, 0>, #cluster>, tensor<1x8xf32, #cluster4>, i32) -> ()
            }
            %73 = "triton_xpu.gm2lm"(%71, %62, %cst, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x512x!tt.ptr<bf16>, #cluster>, tensor<1x512xi32, #cluster>, tensor<1x512xf32, #cluster>, tensor<1x512x!tt.ptr<bf16, 0>, #cluster>) -> tensor<1x512x!tt.ptr<bf16, 0>, #cluster>
            %cst_11 = arith.constant dense<16> : tensor<16x8xi32, #cluster4>
            %cst_12 = arith.constant dense<1> : tensor<16x8xi32, #cluster4>
            %cst_13 = arith.constant dense<32767> : tensor<16x8xi32, #cluster4>
            %cst_14 = arith.constant dense<-65536> : tensor<16x8xi32, #cluster4>
            %cst_15 = arith.constant dense<2147483647> : tensor<16x8xi32, #cluster4>
            %cst_16 = arith.constant dense<2139095040> : tensor<16x8xi32, #cluster4>
            %cst_17 = arith.constant dense<4194304> : tensor<16x8xi32, #cluster4>
            %cst_18 = arith.constant dense<2048> : tensor<1x8xi32, #cluster4>
            %74 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<16x8x!tt.ptr<bf16>, #cluster4>
            %75 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x8x!tt.ptr<bf16>, #cluster4>
            %76 = tt.splat %arg9 : i32 -> tensor<1x8xi32, #cluster4>
            scf.for %arg11 = %c0 to %c64 step %c1 {
              %77 = arith.index_cast %arg11 : index to i32
              %78 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 4 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<16xi32, #cluster2>
              %79 = triton_xpu.convert_layout %78 : tensor<16xi32, #cluster2> -> tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster1}>>
              %80 = tt.expand_dims %79 {axis = 1 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<16x1xi32, #cluster1>
              %81 = arith.addi %19, %80 : tensor<16x1xi32, #cluster1>
              %82 = arith.cmpi slt, %81, %cst_9 : tensor<16x1xi32, #cluster1>
              %83 = triton_xpu.make_range  %77 {end = 512 : i32, realSize = 512 : i32, start = 0 : i32} :  i32 -> tensor<8xi32, #cluster5>
              %84 = triton_xpu.convert_layout %83 : tensor<8xi32, #cluster5> -> tensor<8xi32, #ttg.slice<{dim = 0, parent = #cluster4}>>
              %85 = tt.expand_dims %84 {axis = 0 : i32} : tensor<8xi32, #ttg.slice<{dim = 0, parent = #cluster4}>> -> tensor<1x8xi32, #cluster4>
              %86 = arith.muli %81, %cst_9 : tensor<16x1xi32, #cluster1>
              %87 = triton_xpu.broadcast %86 : tensor<16x1xi32, #cluster1> -> tensor<16x8xi32, #cluster4>
              %88 = triton_xpu.broadcast %82 : tensor<16x1xi1, #cluster1> -> tensor<16x8xi1, #cluster4>
              %89 = arith.addi %76, %85 : tensor<1x8xi32, #cluster4>
              %90 = arith.cmpi slt, %89, %cst_18 : tensor<1x8xi32, #cluster4>
              %91 = "triton_xpu.extract"(%90) <{index = 0 : i32}> : (tensor<1x8xi1, #cluster4>) -> i1
              %92 = "triton_xpu.load"(%31, %77) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x512x!tt.ptr<f32, 0>, #cluster>, i32) -> tensor<16x8xf32, #cluster4>
              %93 = triton_xpu.broadcast %89 : tensor<1x8xi32, #cluster4> -> tensor<16x8xi32, #cluster4>
              %94 = arith.addi %93, %87 : tensor<16x8xi32, #cluster4>
              %95 = triton_xpu.broadcast %90 : tensor<1x8xi1, #cluster4> -> tensor<16x8xi1, #cluster4>
              %96 = arith.andi %95, %88 : tensor<16x8xi1, #cluster4>
              llvm_xpu.mfence %c1_i32
              %97 = "triton_xpu.load"(%70, %96, %cst_8, %77) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x512x!tt.ptr<bf16, 0>, #cluster>, tensor<16x8xi1, #cluster4>, tensor<16x512xf32, #cluster>, i32) -> tensor<16x8xf32, #cluster4>
              %98 = "triton_xpu.load"(%73, %90, %cst, %77) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x512x!tt.ptr<bf16, 0>, #cluster>, tensor<1x8xi1, #cluster4>, tensor<1x512xf32, #cluster>, i32) -> tensor<1x8xf32, #cluster4>
              %99 = triton_xpu.broadcast %98 : tensor<1x8xf32, #cluster4> -> tensor<16x8xf32, #cluster4>
              %100 = arith.mulf %97, %99 : tensor<16x8xf32, #cluster4>
              %101 = tt.bitcast %100 : tensor<16x8xf32, #cluster4> -> tensor<16x8xi32, #cluster4>
              %102 = arith.shrui %101, %cst_11 : tensor<16x8xi32, #cluster4>
              %103 = arith.andi %102, %cst_12 : tensor<16x8xi32, #cluster4>
              %104 = arith.addi %101, %cst_13 : tensor<16x8xi32, #cluster4>
              %105 = arith.addi %104, %103 : tensor<16x8xi32, #cluster4>
              %106 = arith.andi %105, %cst_14 : tensor<16x8xi32, #cluster4>
              %107 = arith.andi %101, %cst_15 : tensor<16x8xi32, #cluster4>
              %108 = arith.cmpi uge, %107, %cst_16 : tensor<16x8xi32, #cluster4>
              %109 = arith.cmpi ugt, %107, %cst_16 : tensor<16x8xi32, #cluster4>
              %110 = arith.ori %101, %cst_17 : tensor<16x8xi32, #cluster4>
              %111 = arith.select %109, %110, %101 : tensor<16x8xi1, #cluster4>, tensor<16x8xi32, #cluster4>
              %112 = arith.select %108, %111, %106 : tensor<16x8xi1, #cluster4>, tensor<16x8xi32, #cluster4>
              %113 = tt.bitcast %112 : tensor<16x8xi32, #cluster4> -> tensor<16x8xf32, #cluster4>
              %114 = arith.addf %92, %113 : tensor<16x8xf32, #cluster4>
              %115 = arith.select %96, %114, %92 : tensor<16x8xi1, #cluster4>, tensor<16x8xf32, #cluster4>
              "triton_xpu.store"(%31, %115, %77) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x512x!tt.ptr<f32, 0>, #cluster>, tensor<16x8xf32, #cluster4>, i32) -> ()
            }
            scf.yield %cst_8 : tensor<16x512xf32, #cluster>
          } else {
            scf.yield %arg10 : tensor<16x512xf32, #cluster>
          }
          scf.yield %65 : tensor<16x512xf32, #cluster>
        }
        %33 = "triton_xpu.load"(%31) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x512x!tt.ptr<f32, 0>, #cluster>) -> tensor<16x512xf32, #cluster>
        %34 = "triton_xpu.extract_slice"(%33) : (tensor<16x512xf32, #cluster>) -> tensor<16x8xf32, #cluster4>
        %35 = scf.for %arg9 = %c1 to %c64 step %c1 iter_args(%arg10 = %34) -> (tensor<16x8xf32, #cluster4>) {
          %60 = arith.index_cast %arg9 : index to i32
          %61 = "triton_xpu.load"(%31, %60) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x512x!tt.ptr<f32, 0>, #cluster>, i32) -> tensor<16x8xf32, #cluster4>
          %62 = arith.addf %arg10, %61 : tensor<16x8xf32, #cluster4>
          scf.yield %62 : tensor<16x8xf32, #cluster4>
        }
        %36 = "triton_xpu.reduce"(%35, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
        ^bb0(%arg9: f32, %arg10: f32):
          %60 = arith.addf %arg9, %arg10 : f32
          triton_xpu.reduce.return %60 : f32
        }) : (tensor<16x8xf32, #cluster4>, i32) -> tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster4}>>
        %37 = triton_xpu.convert_layout %36 : tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster4}>> -> tensor<16xf32, #cluster2>
        %38 = triton_xpu.convert_layout %37 : tensor<16xf32, #cluster2> -> tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster1}>>
        %39 = tt.expand_dims %38 {axis = 1 : i32} : tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster1}>> -> tensor<16x1xf32, #cluster1>
        %40 = tt.splat %arg2 : !tt.ptr<bf16> -> tensor<16x1x!tt.ptr<bf16>, #cluster1>
        %41 = tt.addptr %40, %20 : tensor<16x1x!tt.ptr<bf16>, #cluster1>, tensor<16x1xi32, #cluster1>
        %42 = tt.bitcast %39 : tensor<16x1xf32, #cluster1> -> tensor<16x1xi32, #cluster1>
        %43 = arith.shrui %42, %cst_0 : tensor<16x1xi32, #cluster1>
        %44 = arith.andi %43, %cst_1 : tensor<16x1xi32, #cluster1>
        %45 = arith.addi %42, %cst_2 : tensor<16x1xi32, #cluster1>
        %46 = arith.addi %45, %44 : tensor<16x1xi32, #cluster1>
        %47 = arith.andi %46, %cst_3 : tensor<16x1xi32, #cluster1>
        %48 = arith.andi %42, %cst_4 : tensor<16x1xi32, #cluster1>
        %49 = arith.cmpi uge, %48, %cst_5 : tensor<16x1xi32, #cluster1>
        %50 = arith.cmpi ugt, %48, %cst_5 : tensor<16x1xi32, #cluster1>
        %51 = arith.ori %42, %cst_6 : tensor<16x1xi32, #cluster1>
        %52 = arith.select %50, %51, %42 : tensor<16x1xi1, #cluster1>, tensor<16x1xi32, #cluster1>
        %53 = arith.select %49, %52, %47 : tensor<16x1xi1, #cluster1>, tensor<16x1xi32, #cluster1>
        %54 = tt.bitcast %53 : tensor<16x1xi32, #cluster1> -> tensor<16x1xf32, #cluster1>
        %55 = "triton_xpu.get_core_id"() : () -> i32
        %c4_i32 = arith.constant 4 : i32
        %56 = arith.remsi %55, %c4_i32 : i32
        %57 = arith.cmpi eq, %56, %c0_i32 : i32
        %c64_i32 = arith.constant 64 : i32
        %58 = arith.cmpi slt, %55, %c64_i32 : i32
        %59 = arith.andi %57, %58 : i1
        scf.if %59 {
          "triton_xpu.store"(%12, %54, %22) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1x!tt.ptr<bf16, 0>, #cluster1>, tensor<16x1xf32, #cluster1>, tensor<16x1xi1, #cluster1>) -> ()
          "triton_xpu.lm2gm"(%41, %21, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1x!tt.ptr<bf16>, #cluster1>, tensor<16x1xi32, #cluster1>, tensor<16x1x!tt.ptr<bf16, 0>, #cluster1>) -> ()
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
