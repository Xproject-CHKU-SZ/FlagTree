target triple = "nvptx64-nvidia-cuda"
; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-p3:32:32-p4:32:32-p5:32:32-p6:32:32-p7:32:32-i64:64-i128:128-i256:256-v16:16-v32:32-n16:32:64"

declare float @f06_tanh(float) local_unnamed_addr

define ptx_kernel void @f06_gelu_body(i8 addrspace(1)* %v0, i8 addrspace(1)* %v1, i8 addrspace(1)* %v2, i32 %v3, i8 addrspace(1)* readnone  %v4, i8 addrspace(1)* readnone  %v5) local_unnamed_addr #0 {
  %v7 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %v8 = shl i32 %v7, 8
  %v9 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %v10 = shl nuw nsw i32 %v9, 1
  %v11 = and i32 %v10, 254
  %v12 = or  i32 %v11, %v8
  %v13 = icmp slt i32 %v12, 2048
  %v14 = srem i32 %v12, 128
  %v15 = sext i32 %v12 to i64
  %bridge_in17 = bitcast i8 addrspace(1)* %v0 to i16 addrspace(1)*
  %bridge_gep17 = getelementptr i16, i16 addrspace(1)* %bridge_in17, i64 %v15
  %v16 = bitcast i16 addrspace(1)* %bridge_gep17 to i8 addrspace(1)*
  %v17 = tail call i32 asm sideeffect "mov.u32 $0, 0x0;\0A\09@$2 ld.global.b32 { $0 }, [ $1 + 0 ];", "=r,l,b"(i8 addrspace(1)* %v16, i1 %v13) #2
  %v18 = bitcast i32 %v17 to <2 x i16>
  %v19 = sext i32 %v14 to i64
  %bridge_in21 = bitcast i8 addrspace(1)* %v1 to i16 addrspace(1)*
  %bridge_gep21 = getelementptr i16, i16 addrspace(1)* %bridge_in21, i64 %v19
  %v20 = bitcast i16 addrspace(1)* %bridge_gep21 to i8 addrspace(1)*
  %v21 = tail call i64 asm sideeffect "mov.u64 $0, 0x0;\0A\09createpolicy.fractional.L2::evict_last.b64 $0, 1.0;", "=l"() #2
  %v22 = tail call i32 asm sideeffect "mov.u32 $0, 0x0;\0A\09@$3 ld.global.L1::evict_last.L2::cache_hint.b32 { $0 }, [ $1 + 0 ], $2;", "=r,l,l,b"(i8 addrspace(1)* %v20, i64 %v21, i1 %v13) #2
  %v23 = bitcast i32 %v22 to <2 x i16>
  %bf24_0_a0 = extractelement <2 x i16> %v18, i32 0
  %bf24_0_a1 = extractelement <2 x i16> %v23, i32 0
  %bf24_0_x = call float @bridge_bfext(i16 %bf24_0_a0)
  %bf24_0_y = call float @bridge_bfext(i16 %bf24_0_a1)
  %bf24_0_s = fadd float %bf24_0_x, %bf24_0_y
  %bf24_0_r = call i16 @bridge_bftrunc(float %bf24_0_s)
  %bf24_1_a0 = extractelement <2 x i16> %v18, i32 1
  %bf24_1_a1 = extractelement <2 x i16> %v23, i32 1
  %bf24_1_x = call float @bridge_bfext(i16 %bf24_1_a0)
  %bf24_1_y = call float @bridge_bfext(i16 %bf24_1_a1)
  %bf24_1_s = fadd float %bf24_1_x, %bf24_1_y
  %bf24_1_r = call i16 @bridge_bftrunc(float %bf24_1_s)
  %bf24_v0 = insertelement <2 x i16> undef, i16 %bf24_0_r, i32 0
  %v24 = insertelement <2 x i16> %bf24_v0, i16 %bf24_1_r, i32 1
  %bf25_0_a0 = extractelement <2 x i16> %v24, i32 0
  %bf25_0_r = call float @bridge_bfext(i16 %bf25_0_a0)
  %bf25_1_a0 = extractelement <2 x i16> %v24, i32 1
  %bf25_1_r = call float @bridge_bfext(i16 %bf25_1_a0)
  %bf25_v0 = insertelement <2 x float> undef, float %bf25_0_r, i32 0
  %v25 = insertelement <2 x float> %bf25_v0, float %bf25_1_r, i32 1
  %v26 = fmul <2 x float> %v25, <float 5.000000e-01, float 5.000000e-01>
  %v27 = extractelement <2 x float> %v25, i64 0
  %v28 = fmul float %v27, %v27
  %v29 = extractelement <2 x float> %v25, i64 1
  %v30 = fmul float %v29, %v29
  %v31 = fmul float %v28, %v27
  %v32 = fmul float %v30, %v29
  %v33 = fmul float %v31, 0x3FA6E4E260000000
  %v34 = fmul float %v32, 0x3FA6E4E260000000
  %v35 = fadd float %v33, %v27
  %v36 = fadd float %v34, %v29
  %v37 = fmul float %v35, 0x3FE9884540000000
  %v38 = fmul float %v36, 0x3FE9884540000000
  %v39 = tail call float @f06_tanh(float %v37)
  %v40 = tail call float @f06_tanh(float %v38)
  %v41 = insertelement <2 x float> undef, float %v39, i64 0
  %v42 = insertelement <2 x float> %v41, float %v40, i64 1
  %v43 = fadd <2 x float> %v42, <float 1.000000e+00, float 1.000000e+00>
  %v44 = fmul <2 x float> %v43, %v26
  %bf45_0_a0 = extractelement <2 x float> %v44, i32 0
  %bf45_0_r = call i16 @bridge_bftrunc(float %bf45_0_a0)
  %bf45_1_a0 = extractelement <2 x float> %v44, i32 1
  %bf45_1_r = call i16 @bridge_bftrunc(float %bf45_1_a0)
  %bf45_v0 = insertelement <2 x i16> undef, i16 %bf45_0_r, i32 0
  %v45 = insertelement <2 x i16> %bf45_v0, i16 %bf45_1_r, i32 1
  %bridge_in70 = bitcast i8 addrspace(1)* %v2 to i16 addrspace(1)*
  %bridge_gep70 = getelementptr i16, i16 addrspace(1)* %bridge_in70, i64 %v15
  %v46 = bitcast i16 addrspace(1)* %bridge_gep70 to i8 addrspace(1)*
  %v47 = bitcast <2 x i16> %v45 to i32
  tail call void asm sideeffect "@$2 st.global.b32 [ $1 + 0 ], { $0 };", "r,l,b"(i32 %v47, i8 addrspace(1)* %v46, i1 %v13) #2
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
