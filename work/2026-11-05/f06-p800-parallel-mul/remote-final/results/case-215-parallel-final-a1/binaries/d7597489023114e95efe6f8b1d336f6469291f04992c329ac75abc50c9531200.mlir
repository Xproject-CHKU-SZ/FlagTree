#cluster = #triton_xpu.cluster<{sizePerCore = [1, 1], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster1 = #triton_xpu.cluster<{sizePerCore = [1, 64], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster2 = #triton_xpu.cluster<{sizePerCore = [1, 4], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
#cluster3 = #triton_xpu.cluster<{sizePerCore = [1], coresPerGroup = [1], groupsPerCluster = [32], order = [0]}>
#cluster4 = #triton_xpu.cluster<{sizePerCore = [64], coresPerGroup = [2], groupsPerCluster = [1], order = [0]}>
#cluster5 = #triton_xpu.cluster<{sizePerCore = [1, 2], coresPerGroup = [1, 2], groupsPerCluster = [32, 1], order = [0, 1]}>
module attributes {triton_xpu.target = "xpu:3", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 32 : i32, "ttg.threads-per-warp" = 2 : i32} {
  tt.func public @triton_red_fused_mul_sum_0(%arg0: !tt.ptr<bf16> {tt.divisibility = 16 : i32}, %arg1: !tt.ptr<bf16> {tt.divisibility = 16 : i32}, %arg2: !tt.ptr<bf16> {tt.divisibility = 16 : i32}, %arg3: i32 {tt.divisibility = 16 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32, %arg6: i32, %arg7: i32) attributes {noinline = false} {
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
    %c32_i32 = arith.constant 32 : i32
    %cst = arith.constant dense<2048> : tensor<32x1xi32, #cluster>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1x128xf32, #cluster1>
    %c128_i32 = arith.constant 128 : i32
    %c2048_i32 = arith.constant 2048 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst_1 = arith.constant dense<2048> : tensor<1x128xi32, #cluster1>
    scf.for %arg8 = %6 to %7 step %8 {
      %9 = arith.index_cast %arg8 : index to i32
      %10 = arith.divsi %9, %arg7 : i32
      %11 = arith.divsi %10, %arg6 : i32
      %12 = "triton_xpu.alloca"() <{size = 32 : si64}> : () -> tensor<32x1x!tt.ptr<bf16, 0>, #cluster>
      %13 = "triton_xpu.alloca"() <{size = 128 : si64}> : () -> tensor<1x128x!tt.ptr<bf16, 0>, #cluster1>
      %14 = "triton_xpu.alloca"() <{size = 4096 : si64}> : () -> tensor<32x128x!tt.ptr<bf16, 0>, #cluster1>
      %15 = "triton_xpu.vconst"() <{value = dense<0.000000e+00> : tensor<32x128xf32, #cluster1>}> : () -> tensor<32x8xvector<16xf32>, #cluster2>
      %16 = arith.muli %11, %c32_i32 : i32
      %17 = "triton_xpu.out_range"(%c0_i32) <{groupsize = 2 : i32, rowspercore = 1 : i32}> : (i32) -> tensor<32xi32, #cluster3>
      %18 = triton_xpu.convert_layout %17 : tensor<32xi32, #cluster3> -> tensor<32xi32, #ttg.slice<{dim = 1, parent = #cluster}>>
      %19 = tt.expand_dims %18 {axis = 1 : i32} : tensor<32xi32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<32x1xi32, #cluster>
      %20 = tt.splat %16 : i32 -> tensor<32x1xi32, #cluster>
      %21 = arith.addi %20, %19 : tensor<32x1xi32, #cluster>
      %22 = arith.subi %cst, %21 : tensor<32x1xi32, #cluster>
      %23 = arith.cmpi slt, %21, %cst : tensor<32x1xi32, #cluster>
      %24 = "triton_xpu.extract"(%23) <{index = 0 : i32}> : (tensor<32x1xi1, #cluster>) -> i1
      scf.if %24 {
        %25 = triton_xpu.make_range   {end = 128 : i32, realSize = 128 : i32, start = 0 : i32} :   -> tensor<128xi32, #cluster4>
        %26 = triton_xpu.convert_layout %25 : tensor<128xi32, #cluster4> -> tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster1}>>
        %27 = tt.expand_dims %26 {axis = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 0, parent = #cluster1}>> -> tensor<1x128xi32, #cluster1>
        %28 = arith.muli %21, %cst : tensor<32x1xi32, #cluster>
        %29 = triton_xpu.broadcast %28 : tensor<32x1xi32, #cluster> -> tensor<32x128xi32, #cluster1>
        %30 = tt.splat %arg0 : !tt.ptr<bf16> -> tensor<32x128x!tt.ptr<bf16>, #cluster1>
        %31 = triton_xpu.broadcast %23 : tensor<32x1xi1, #cluster> -> tensor<32x128xi1, #cluster1>
        %32 = tt.splat %arg1 : !tt.ptr<bf16> -> tensor<1x128x!tt.ptr<bf16>, #cluster1>
        %33 = "triton_xpu.alloca"() <{size = 4096 : si64}> : () -> tensor<32x128x!tt.ptr<f32, 0>, #cluster2>
        "triton_xpu.store"(%33, %15) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x128x!tt.ptr<f32, 0>, #cluster2>, tensor<32x8xvector<16xf32>, #cluster2>) -> ()
        %34 = scf.for %arg9 = %c0_i32 to %c2048_i32 step %c128_i32 iter_args(%arg10 = %15) -> (tensor<32x8xvector<16xf32>, #cluster2>)  : i32 {
          %47 = tt.splat %arg9 : i32 -> tensor<1x128xi32, #cluster1>
          %48 = arith.addi %47, %27 : tensor<1x128xi32, #cluster1>
          %49 = arith.subi %cst_1, %48 : tensor<1x128xi32, #cluster1>
          %50 = arith.cmpi slt, %48, %cst_1 : tensor<1x128xi32, #cluster1>
          %51 = "triton_xpu.extract"(%50) <{index = 0 : i32}> : (tensor<1x128xi1, #cluster1>) -> i1
          %52 = scf.if %51 -> (tensor<32x8xvector<16xf32>, #cluster2>) {
            %53 = "triton_xpu.load"(%33) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x128x!tt.ptr<f32, 0>, #cluster2>) -> tensor<32x8xvector<16xf32>, #cluster2>
            %54 = triton_xpu.broadcast %48 : tensor<1x128xi32, #cluster1> -> tensor<32x128xi32, #cluster1>
            %55 = arith.addi %54, %29 : tensor<32x128xi32, #cluster1>
            %56 = tt.addptr %30, %55 : tensor<32x128x!tt.ptr<bf16>, #cluster1>, tensor<32x128xi32, #cluster1>
            %57 = triton_xpu.broadcast %50 : tensor<1x128xi1, #cluster1> -> tensor<32x128xi1, #cluster1>
            %58 = arith.andi %57, %31 : tensor<32x128xi1, #cluster1>
            %59 = "triton_xpu.extract_slice"(%15) : (tensor<32x8xvector<16xf32>, #cluster2>) -> tensor<32x4xvector<16xf32>, #cluster5>
            %c0 = arith.constant 0 : index
            %c2 = arith.constant 2 : index
            %c1 = arith.constant 1 : index
            scf.for %arg11 = %c0 to %c2 step %c1 {
              %70 = arith.index_cast %arg11 : index to i32
              "triton_xpu.store"(%14, %59, %70) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x128x!tt.ptr<bf16, 0>, #cluster1>, tensor<32x4xvector<16xf32>, #cluster5>, i32) -> ()
            }
            %60 = "triton_xpu.gm2lm"(%56, %49, %15, %14) <{SVOpt = false, atomicSim = false, cache = false, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 2 : i32, tensorColSize = -1 : si32}> : (tensor<32x128x!tt.ptr<bf16>, #cluster1>, tensor<1x128xi32, #cluster1>, tensor<32x8xvector<16xf32>, #cluster2>, tensor<32x128x!tt.ptr<bf16, 0>, #cluster1>) -> tensor<32x128x!tt.ptr<bf16, 0>, #cluster1>
            %61 = tt.addptr %32, %48 : tensor<1x128x!tt.ptr<bf16>, #cluster1>, tensor<1x128xi32, #cluster1>
            %62 = "triton_xpu.extract_slice"(%cst_0) : (tensor<1x128xf32, #cluster1>) -> tensor<1x4xf32, #cluster5>
            %c32 = arith.constant 32 : index
            scf.for %arg11 = %c0 to %c32 step %c1 {
              %70 = arith.index_cast %arg11 : index to i32
              "triton_xpu.store"(%13, %62, %70) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<bf16, 0>, #cluster1>, tensor<1x4xf32, #cluster5>, i32) -> ()
            }
            %63 = "triton_xpu.gm2lm"(%61, %49, %cst_0, %13) <{SVOpt = false, atomicSim = false, cache = true, fixedStride = 1 : si32, handwrittenOffsetState = false, lrie = -1 : si32, offsetState = 1 : si32, operandSegmentSizes = array<i32: 1, 1, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<bf16>, #cluster1>, tensor<1x128xi32, #cluster1>, tensor<1x128xf32, #cluster1>, tensor<1x128x!tt.ptr<bf16, 0>, #cluster1>) -> tensor<1x128x!tt.ptr<bf16, 0>, #cluster1>
            %64 = "triton_xpu.load"(%63, %50, %cst_0) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<1x128x!tt.ptr<bf16, 0>, #cluster1>, tensor<1x128xi1, #cluster1>, tensor<1x128xf32, #cluster1>) -> tensor<1x128xf32, #cluster1>
            %65 = triton_xpu.broadcast %64 : tensor<1x128xf32, #cluster1> -> tensor<32x8xvector<16xf32>, #cluster2>
            llvm_xpu.mfence %c1_i32
            %66 = "triton_xpu.load"(%60, %58, %15) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 1, 1, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x128x!tt.ptr<bf16, 0>, #cluster1>, tensor<32x128xi1, #cluster1>, tensor<32x8xvector<16xf32>, #cluster2>) -> tensor<32x8xvector<16xf32>, #cluster2>
            %67 = triton_xpu.vvmulf %66, %65 : tensor<32x8xvector<16xf32>, #cluster2>
            %68 = triton_xpu.vmacf %66, %65, %53 : tensor<32x8xvector<16xf32>, #cluster2>
            %69 = "triton_xpu.vselect"(%58, %68, %53) : (tensor<32x128xi1, #cluster1>, tensor<32x8xvector<16xf32>, #cluster2>, tensor<32x8xvector<16xf32>, #cluster2>) -> tensor<32x8xvector<16xf32>, #cluster2>
            "triton_xpu.store"(%33, %69) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x128x!tt.ptr<f32, 0>, #cluster2>, tensor<32x8xvector<16xf32>, #cluster2>) -> ()
            scf.yield %15 : tensor<32x8xvector<16xf32>, #cluster2>
          } else {
            scf.yield %arg10 : tensor<32x8xvector<16xf32>, #cluster2>
          }
          scf.yield %52 : tensor<32x8xvector<16xf32>, #cluster2>
        }
        %35 = "triton_xpu.load"(%33) <{SVOpt = false, bf16Tofp32Unordered = false, isDiscrete = false, operandSegmentSizes = array<i32: 1, 0, 0, 0>, stride = 1 : si32, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x128x!tt.ptr<f32, 0>, #cluster2>) -> tensor<32x8xvector<16xf32>, #cluster2>
        %36 = "triton_xpu.reduce"(%35, %c0_i32) <{axis = 1 : i32, loopNum = 1 : i32}> ({
        ^bb0(%arg9: vector<16xf32>, %arg10: vector<16xf32>):
          %47 = arith.addf %arg9, %arg10 : vector<16xf32>
          triton_xpu.reduce.return %47 : vector<16xf32>
        }) : (tensor<32x8xvector<16xf32>, #cluster2>, i32) -> tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster2}>>
        %37 = triton_xpu.convert_layout %36 : tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster2}>> -> tensor<32xf32, #cluster3>
        %38 = triton_xpu.convert_layout %37 : tensor<32xf32, #cluster3> -> tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster}>>
        %39 = tt.expand_dims %38 {axis = 1 : i32} : tensor<32xf32, #ttg.slice<{dim = 1, parent = #cluster}>> -> tensor<32x1xf32, #cluster>
        %40 = tt.splat %arg2 : !tt.ptr<bf16> -> tensor<32x1x!tt.ptr<bf16>, #cluster>
        %41 = tt.addptr %40, %21 : tensor<32x1x!tt.ptr<bf16>, #cluster>, tensor<32x1xi32, #cluster>
        %42 = "triton_xpu.get_core_id"() : () -> i32
        %c2_i32 = arith.constant 2 : i32
        %43 = arith.remsi %42, %c2_i32 : i32
        %44 = arith.cmpi eq, %43, %c0_i32 : i32
        %c64_i32 = arith.constant 64 : i32
        %45 = arith.cmpi slt, %42, %c64_i32 : i32
        %46 = arith.andi %44, %45 : i1
        scf.if %46 {
          "triton_xpu.store"(%12, %39, %23) <{bf16Tofp32Unordered = false, dtype = 0 : i32, operandSegmentSizes = array<i32: 1, 1, 1, 0>, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x1x!tt.ptr<bf16, 0>, #cluster>, tensor<32x1xf32, #cluster>, tensor<32x1xi1, #cluster>) -> ()
          "triton_xpu.lm2gm"(%41, %22, %12) <{atomicSim = false, handwrittenOffsetState = false, offsetState = -1 : si32, operandSegmentSizes = array<i32: 1, 0, 1, 1>, rowLen = -1 : si64, rowStride = -1 : si64, syncMode = 1 : i32, tensorColSize = -1 : si32}> : (tensor<32x1x!tt.ptr<bf16>, #cluster>, tensor<32x1xi32, #cluster>, tensor<32x1x!tt.ptr<bf16, 0>, #cluster>) -> ()
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
