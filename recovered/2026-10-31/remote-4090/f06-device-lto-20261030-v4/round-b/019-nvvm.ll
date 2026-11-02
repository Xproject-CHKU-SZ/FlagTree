target triple = "nvptx64-nvidia-cuda"
; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-p3:32:32-p4:32:32-p5:32:32-p6:32:32-p7:32:32-i64:64-i128:128-i256:256-v16:16-v32:32-n16:32:64"

declare float @f06_tanh(float) local_unnamed_addr

define ptx_kernel void @f06_gelu_body(i8 addrspace(1)* %v0, i8 addrspace(1)* %v1, i8 addrspace(1)* %v2, i32 %v3, i8 addrspace(1)* readnone  %v4, i8 addrspace(1)* readnone  %v5) local_unnamed_addr #0 {
  %v7 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %v8 = shl i32 %v7, 9
  %v9 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %v10 = shl nuw nsw i32 %v9, 2
  %v11 = and i32 %v10, 508
  %v12 = or  i32 %v11, %v8
  %v13 = srem i32 %v12, 1024
  %v14 = sext i32 %v12 to i64
  %bridge_in16 = bitcast i8 addrspace(1)* %v0 to i16 addrspace(1)*
  %bridge_gep16 = getelementptr i16, i16 addrspace(1)* %bridge_in16, i64 %v14
  %v15 = bitcast i16 addrspace(1)* %bridge_gep16 to i8 addrspace(1)*
  %v16 = tail call { i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09ld.global.v2.b32 { $0, $1 }, [ $2 + 0 ];", "=r,=r,l"(i8 addrspace(1)* %v15) #2
  %v17 = extractvalue { i32, i32 } %v16, 0
  %v18 = bitcast i32 %v17 to <2 x i16>
  %v19 = extractvalue { i32, i32 } %v16, 1
  %v20 = bitcast i32 %v19 to <2 x i16>
  %v21 = sext i32 %v13 to i64
  %bridge_in23 = bitcast i8 addrspace(1)* %v1 to i16 addrspace(1)*
  %bridge_gep23 = getelementptr i16, i16 addrspace(1)* %bridge_in23, i64 %v21
  %v22 = bitcast i16 addrspace(1)* %bridge_gep23 to i8 addrspace(1)*
  %v23 = tail call i64 asm sideeffect "mov.u64 $0, 0x0;\0A\09createpolicy.fractional.L2::evict_last.b64 $0, 1.0;", "=l"() #2
  %v24 = tail call { i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09ld.global.L1::evict_last.L2::cache_hint.v2.b32 { $0, $1 }, [ $2 + 0 ], $3;", "=r,=r,l,l"(i8 addrspace(1)* %v22, i64 %v23) #2
  %v25 = extractvalue { i32, i32 } %v24, 0
  %v26 = bitcast i32 %v25 to <2 x i16>
  %v27 = extractvalue { i32, i32 } %v24, 1
  %v28 = bitcast i32 %v27 to <2 x i16>
  %bf29_0_a0 = extractelement <2 x i16> %v18, i32 0
  %bf29_0_a1 = extractelement <2 x i16> %v26, i32 0
  %bf29_0_x = call float @bridge_bfext(i16 %bf29_0_a0)
  %bf29_0_y = call float @bridge_bfext(i16 %bf29_0_a1)
  %bf29_0_s = fadd float %bf29_0_x, %bf29_0_y
  %bf29_0_r = call i16 @bridge_bftrunc(float %bf29_0_s)
  %bf29_1_a0 = extractelement <2 x i16> %v18, i32 1
  %bf29_1_a1 = extractelement <2 x i16> %v26, i32 1
  %bf29_1_x = call float @bridge_bfext(i16 %bf29_1_a0)
  %bf29_1_y = call float @bridge_bfext(i16 %bf29_1_a1)
  %bf29_1_s = fadd float %bf29_1_x, %bf29_1_y
  %bf29_1_r = call i16 @bridge_bftrunc(float %bf29_1_s)
  %bf29_v0 = insertelement <2 x i16> undef, i16 %bf29_0_r, i32 0
  %v29 = insertelement <2 x i16> %bf29_v0, i16 %bf29_1_r, i32 1
  %bf30_0_a0 = extractelement <2 x i16> %v29, i32 0
  %bf30_0_r = call float @bridge_bfext(i16 %bf30_0_a0)
  %bf30_1_a0 = extractelement <2 x i16> %v29, i32 1
  %bf30_1_r = call float @bridge_bfext(i16 %bf30_1_a0)
  %bf30_v0 = insertelement <2 x float> undef, float %bf30_0_r, i32 0
  %v30 = insertelement <2 x float> %bf30_v0, float %bf30_1_r, i32 1
  %v31 = fmul <2 x float> %v30, <float 5.000000e-01, float 5.000000e-01>
  %v32 = extractelement <2 x float> %v30, i64 0
  %v33 = fmul float %v32, %v32
  %v34 = extractelement <2 x float> %v30, i64 1
  %v35 = fmul float %v34, %v34
  %v36 = fmul float %v33, %v32
  %v37 = fmul float %v35, %v34
  %v38 = fmul float %v36, 0x3FA6E4E260000000
  %v39 = fmul float %v37, 0x3FA6E4E260000000
  %v40 = fadd float %v38, %v32
  %v41 = fadd float %v39, %v34
  %v42 = fmul float %v40, 0x3FE9884540000000
  %v43 = fmul float %v41, 0x3FE9884540000000
  %v44 = tail call float @f06_tanh(float %v42)
  %v45 = tail call float @f06_tanh(float %v43)
  %v46 = insertelement <2 x float> undef, float %v44, i64 0
  %v47 = insertelement <2 x float> %v46, float %v45, i64 1
  %v48 = fadd <2 x float> %v47, <float 1.000000e+00, float 1.000000e+00>
  %v49 = fmul <2 x float> %v48, %v31
  %bf50_0_a0 = extractelement <2 x float> %v49, i32 0
  %bf50_0_r = call i16 @bridge_bftrunc(float %bf50_0_a0)
  %bf50_1_a0 = extractelement <2 x float> %v49, i32 1
  %bf50_1_r = call i16 @bridge_bftrunc(float %bf50_1_a0)
  %bf50_v0 = insertelement <2 x i16> undef, i16 %bf50_0_r, i32 0
  %v50 = insertelement <2 x i16> %bf50_v0, i16 %bf50_1_r, i32 1
  %bf51_0_a0 = extractelement <2 x i16> %v20, i32 0
  %bf51_0_a1 = extractelement <2 x i16> %v28, i32 0
  %bf51_0_x = call float @bridge_bfext(i16 %bf51_0_a0)
  %bf51_0_y = call float @bridge_bfext(i16 %bf51_0_a1)
  %bf51_0_s = fadd float %bf51_0_x, %bf51_0_y
  %bf51_0_r = call i16 @bridge_bftrunc(float %bf51_0_s)
  %bf51_1_a0 = extractelement <2 x i16> %v20, i32 1
  %bf51_1_a1 = extractelement <2 x i16> %v28, i32 1
  %bf51_1_x = call float @bridge_bfext(i16 %bf51_1_a0)
  %bf51_1_y = call float @bridge_bfext(i16 %bf51_1_a1)
  %bf51_1_s = fadd float %bf51_1_x, %bf51_1_y
  %bf51_1_r = call i16 @bridge_bftrunc(float %bf51_1_s)
  %bf51_v0 = insertelement <2 x i16> undef, i16 %bf51_0_r, i32 0
  %v51 = insertelement <2 x i16> %bf51_v0, i16 %bf51_1_r, i32 1
  %bf52_0_a0 = extractelement <2 x i16> %v51, i32 0
  %bf52_0_r = call float @bridge_bfext(i16 %bf52_0_a0)
  %bf52_1_a0 = extractelement <2 x i16> %v51, i32 1
  %bf52_1_r = call float @bridge_bfext(i16 %bf52_1_a0)
  %bf52_v0 = insertelement <2 x float> undef, float %bf52_0_r, i32 0
  %v52 = insertelement <2 x float> %bf52_v0, float %bf52_1_r, i32 1
  %v53 = fmul <2 x float> %v52, <float 5.000000e-01, float 5.000000e-01>
  %v54 = extractelement <2 x float> %v52, i64 0
  %v55 = fmul float %v54, %v54
  %v56 = extractelement <2 x float> %v52, i64 1
  %v57 = fmul float %v56, %v56
  %v58 = fmul float %v55, %v54
  %v59 = fmul float %v57, %v56
  %v60 = fmul float %v58, 0x3FA6E4E260000000
  %v61 = fmul float %v59, 0x3FA6E4E260000000
  %v62 = fadd float %v60, %v54
  %v63 = fadd float %v61, %v56
  %v64 = fmul float %v62, 0x3FE9884540000000
  %v65 = fmul float %v63, 0x3FE9884540000000
  %v66 = tail call float @f06_tanh(float %v64)
  %v67 = tail call float @f06_tanh(float %v65)
  %v68 = insertelement <2 x float> undef, float %v66, i64 0
  %v69 = insertelement <2 x float> %v68, float %v67, i64 1
  %v70 = fadd <2 x float> %v69, <float 1.000000e+00, float 1.000000e+00>
  %v71 = fmul <2 x float> %v70, %v53
  %bf72_0_a0 = extractelement <2 x float> %v71, i32 0
  %bf72_0_r = call i16 @bridge_bftrunc(float %bf72_0_a0)
  %bf72_1_a0 = extractelement <2 x float> %v71, i32 1
  %bf72_1_r = call i16 @bridge_bftrunc(float %bf72_1_a0)
  %bf72_v0 = insertelement <2 x i16> undef, i16 %bf72_0_r, i32 0
  %v72 = insertelement <2 x i16> %bf72_v0, i16 %bf72_1_r, i32 1
  %bridge_in120 = bitcast i8 addrspace(1)* %v2 to i16 addrspace(1)*
  %bridge_gep120 = getelementptr i16, i16 addrspace(1)* %bridge_in120, i64 %v14
  %v73 = bitcast i16 addrspace(1)* %bridge_gep120 to i8 addrspace(1)*
  %v74 = bitcast <2 x i16> %v50 to i32
  %v75 = bitcast <2 x i16> %v72 to i32
  tail call void asm sideeffect "st.global.v2.b32 [ $2 + 0 ], { $0, $1 };", "r,r,l"(i32 %v74, i32 %v75, i8 addrspace(1)* %v73) #2
  ret void
}

; Function Attrs:     nounwind speculatable  
declare   i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #1

; Function Attrs:     nounwind speculatable  
declare   i32 @llvm.nvvm.read.ptx.sreg.tid.x() #1

attributes #0 = { "nvvm.reqntid"="128" }
attributes #1 = {     nounwind speculatable   }
attributes #2 = { nounwind }

define internal float @bridge_bfext(i16 %x) alwaysinline {
 %a = zext i16 %x to i32
 %b = shl i32 %a, 16
 %c = bitcast i32 %b to float
 ret float %c
}
define internal i16 @bridge_bftrunc(float %x) alwaysinline {
 %a = call i16 asm "cvt.rn.bf16.f32 $0, $1;", "=h,f"(float %x)
 ret i16 %a
}
!nvvmir.version = !{!0}
!0 = !{i32 2, i32 0, i32 3, i32 1}
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body to i8*)], section "llvm.metadata"
!nvvm.annotations = !{!1, !2}
!1 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body, !"kernel", i32 1}
!2 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body, !"reqntidx", i32 128}
