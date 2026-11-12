#cluster = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 256], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1, 16], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [2], coresPerGroup = [1], groupsPerCluster = [16], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [256], coresPerGroup = [4], groupsPerCluster = [1], order = [0]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster6 = #triton_xpu.cluster<{sizePerCore = [1, 4], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
#cluster7 = #triton_xpu.cluster<{sizePerCore = [1, 64], coresPerGroup = [1, 4], groupsPerCluster = [16, 1], order = [0, 1]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 16 : i32, "ttg.threads-per-warp" = 4 : i32} {
  tt.func public @triton_per_fused_mul_sum_0(%arg0: !tt.ptr<bf16> {tt.divisibility = 16 : i32}, %arg1: !tt.ptr<bf16> {tt.divisibility = 16 : i32}, %arg2: !tt.ptr<bf16> {tt.divisibility = 16 : i32}, %arg3: i32 {tt.divisibility = 16 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32, %arg6: i32, %arg7: i32) attributes {noinline = false} {
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
    %c32_i32 = arith.constant 32 : i32
    %cst = arith.constant dense<512> : tensor<16x1xi32, #cluster>
    %cst_0 = arith.constant dense<1024> : tensor<16x1xi32, #cluster>
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 16 : si64}> : () -> tensor<16x1x!tt.ptr<bf16, 0>, #cluster>
      %13 = "triton_xpu.alloca"() <{size = 1024 : si64}> : () -> tensor<1x1024x!tt.ptr<bf16, 0>, #cluster1>
      %14 = "triton_xpu.alloca"() <{size = 16384 : si64}> : () -> tensor<16x1024x!tt.ptr<bf16, 0>, #cluster1>
      %15 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<16x1024xf32, #cluster1>}> : () -> tensor<16x64xvector<16xf32>, #cluster2>
      %16 = arith.muli %11, %c32_i32 : i32
      %17 = tt.splat %16 : i32 -> tensor<16x1xi32, #cluster>
      scf.for %arg9 = %c0 to %c2 step %c1 {
        %18 = arith.index_cast %arg9 : index to i32
        %19 = "triton_xpu.out_range"(%18) <{groupsize = 4 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<16xi32, #cluster3>
        %20 = triton_xpu.convert_layout %19 : tensor<16xi32, #cluster3> -> tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster}>>
        %21 = tt.expand_dims %20 {axis = 1 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<16x1xi32, #cluster>
        %22 = arith.addi %17, %21 : tensor<16x1xi32, #cluster>
        %23 = arith.subi %cst, %22 : tensor<16x1xi32, #cluster>
        %24 = arith.cmpi slt, %22, %cst : tensor<16x1xi32, #cluster>
        %25 = "triton_xpu.extract"(%24) <{index = 0 : i32}> : (tensor<16x1xi1, #cluster>) -> i1
        scf.if %25 {
          %26 = triton_xpu.make_range   {end = 1024 : i32, realSize = 1024 : i32, start = 0 : i32} :   -> tensor<1024xi32, #cluster4>
          %27 = "triton_xpu.out_range"(%18) <{groupsize = 4 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<512xi32, #cluster4>
          %28 = triton_xpu.convert_layout %26 : tensor<1024xi32, #cluster4> -> tensor<1024xi32, #ttg.slice<{dim = 0, parent = #cluster1}>>
          %29 = tt.expand_dims %28 {axis = 0 : i32} : tensor<1024xi32, #ttg.slice<{dim = 0, parent = #cluster1}>> -> tensor<1x1024xi32, #cluster1>
          %30 = arith.muli %22, %cst_0 : tensor<16x1xi32, #cluster>
          %31 = triton_xpu.broadcast %29 : tensor<1x1024xi32, #cluster1> -> tensor<16x1024xi32, #cluster1>
          %32 = triton_xpu.broadcast %30 : tensor<16x1xi32, #cluster> -> tensor<16x1024xi32, #cluster1>
          %33 = arith.addi %31, %32 : tensor<16x1024xi32, #cluster1>
          %34 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<16x1024x!tt.ptr<bf16>, #cluster1>
          %35 = tt.addptr %34, %33 : tensor<16x1024x!tt.ptr<bf16>, #cluster1>, tensor<16x1024xi32, #cluster1>
          %36 = triton_xpu.broadcast %24 : tensor<16x1xi1, #cluster> -> tensor<16x1024xi1, #cluster1>
          %37 = "triton_xpu.extract_slice"(%15) : (tensor<16x64xvector<16xf32>, #cluster2>) -> tensor<16x8xvector<16xf32>, #cluster5>
          %c8 = arith.constant 8 : index
          scf.for %arg10 = %c0 to %c8 step %c1 {
            %60 = arith.index_cast %arg10 : index to i32
            "triton_xpu.store"(%14, %37, %60) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1024x!tt.ptr<bf16, 0>, #cluster1>, tensor<16x8xvector<16xf32>, #cluster5>, i32) -> ()
          }
          %38 = "triton_xpu.gm2lm"(%35, %36, %15, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<16x1024x!tt.ptr<bf16>, #cluster1>, tensor<16x1024xi1, #cluster1>, tensor<16x64xvector<16xf32>, #cluster2>, tensor<16x1024x!tt.ptr<bf16, 0>, #cluster1>) -> tensor<16x1024x!tt.ptr<bf16, 0>, #cluster1>
          %39 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x1024x!tt.ptr<bf16>, #cluster1>
          %40 = tt.addptr %39, %29 : tensor<1x1024x!tt.ptr<bf16>, #cluster1>, tensor<1x1024xi32, #cluster1>
          %41 = "triton_xpu.gm2lm"(%40, %13) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 0, 0, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<bf16>, #cluster1>, tensor<1x1024x!tt.ptr<bf16, 0>, #cluster1>) -> tensor<1x1024x!tt.ptr<bf16, 0>, #cluster1>
          llvm_xpu.mfence %c1_i32
          %42 = "triton_xpu.load"(%38, %36, %15) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1024x!tt.ptr<bf16, 0>, #cluster1>, tensor<16x1024xi1, #cluster1>, tensor<16x64xvector<16xf32>, #cluster2>) -> tensor<16x64xvector<16xf32>, #cluster2>
          %43 = "triton_xpu.load"(%41) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<bf16, 0>, #cluster1>) -> tensor<1x1024xf32, #cluster1>
          %44 = triton_xpu.broadcast %43 : tensor<1x1024xf32, #cluster1> -> tensor<16x64xvector<16xf32>, #cluster2>
          %45 = triton_xpu.vvmulf %42, %44 : tensor<16x64xvector<16xf32>, #cluster2>
          %46 = "triton_xpu.vselect"(%36, %45, %15) : (tensor<16x1024xi1, #cluster1>, tensor<16x64xvector<16xf32>, #cluster2>, tensor<16x64xvector<16xf32>, #cluster2>) -> tensor<16x64xvector<16xf32>, #cluster2>
          %47 = "triton_xpu.extract_slice"(%46) : (tensor<16x64xvector<16xf32>, #cluster2>) -> tensor<16x16xvector<16xf32>, #cluster6>
          %c4 = arith.constant 4 : index
          %48 = scf.for %arg10 = %c1 to %c4 step %c1 iter_args(%arg11 = %47) -> (tensor<16x16xvector<16xf32>, #cluster6>) {
            %60 = arith.index_cast %arg10 : index to i32
            %61 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<16x1024xf32, #cluster1>}> : () -> tensor<16x16xvector<16xf32>, #cluster6>
            %62 = "triton_xpu.out_range"(%18) <{groupsize = 4 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<16xi32, #cluster3>
            %63 = triton_xpu.convert_layout %62 : tensor<16xi32, #cluster3> -> tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster}>>
            %64 = tt.expand_dims %63 {axis = 1 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<16x1xi32, #cluster>
            %65 = arith.addi %17, %64 : tensor<16x1xi32, #cluster>
            %66 = arith.cmpi slt, %65, %cst : tensor<16x1xi32, #cluster>
            %67 = triton_xpu.broadcast %66 : tensor<16x1xi1, #cluster> -> tensor<16x256xi1, #cluster7>
            %68 = "triton_xpu.load"(%38, %67, %61, %60) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1024x!tt.ptr<bf16, 0>, #cluster1>, tensor<16x256xi1, #cluster7>, tensor<16x16xvector<16xf32>, #cluster6>, i32) -> tensor<16x16xvector<16xf32>, #cluster6>
            %69 = "triton_xpu.load"(%41, %60) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 1>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x1024x!tt.ptr<bf16, 0>, #cluster1>, i32) -> tensor<1x256xf32, #cluster7>
            %70 = triton_xpu.broadcast %69 : tensor<1x256xf32, #cluster7> -> tensor<16x16xvector<16xf32>, #cluster6>
            %71 = triton_xpu.vvmulf %68, %70 : tensor<16x16xvector<16xf32>, #cluster6>
            %72 = "triton_xpu.vselect"(%67, %71, %61) : (tensor<16x256xi1, #cluster7>, tensor<16x16xvector<16xf32>, #cluster6>, tensor<16x16xvector<16xf32>, #cluster6>) -> tensor<16x16xvector<16xf32>, #cluster6>
            %73 = triton_xpu.vvaddf %arg11, %72 : tensor<16x16xvector<16xf32>, #cluster6>
            scf.yield %73 : tensor<16x16xvector<16xf32>, #cluster6>
          }
          %49 = "triton_xpu.reduce"(%48, %18) <{axis = 1 : i32, loopNum = 2 : i32}> ({
          ^bb0(%arg10: vector<16xf32>, %arg11: vector<16xf32>):
            %60 = arith.addf %arg10, %arg11 : vector<16xf32>
            triton_xpu.reduce.return %60 : vector<16xf32>
          }) : (tensor<16x16xvector<16xf32>, #cluster6>, i32) -> tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster6}>>
          %50 = triton_xpu.convert_layout %49 : tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster6}>> -> tensor<16xf32, #cluster3>
          %51 = triton_xpu.convert_layout %50 : tensor<16xf32, #cluster3> -> tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster}>>
          %52 = tt.expand_dims %51 {axis = 1 : i32} : tensor<16xf32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<16x1xf32, #cluster>
          %53 = tt.splat %arg2 : !tt.ptr<bf16> -> tensor<16x1x!tt.ptr<bf16>, #cluster>
          %54 = tt.addptr %53, %22 : tensor<16x1x!tt.ptr<bf16>, #cluster>, tensor<16x1xi32, #cluster>
          %55 = "triton_xpu.get_core_id"() : () -> i32
          %c4_i32 = arith.constant 4 : i32
          %56 = arith.remsi %55, %c4_i32 : i32
          %c0_i32 = arith.constant 0 : i32
          %57 = arith.cmpi eq, %56, %c0_i32 : i32
          %c64_i32 = arith.constant 64 : i32
          %58 = arith.cmpi slt, %55, %c64_i32 : i32
          %59 = arith.andi %57, %58 : i1
          scf.if %59 {
            "triton_xpu.store"(%12, %52, %24) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1x!tt.ptr<bf16, 0>, #cluster>, tensor<16x1xf32, #cluster>, tensor<16x1xi1, #cluster>) -> ()
            "triton_xpu.lm2gm"(%54, %23, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<16x1x!tt.ptr<bf16>, #cluster>, tensor<16x1xi32, #cluster>, tensor<16x1x!tt.ptr<bf16, 0>, #cluster>) -> ()
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
