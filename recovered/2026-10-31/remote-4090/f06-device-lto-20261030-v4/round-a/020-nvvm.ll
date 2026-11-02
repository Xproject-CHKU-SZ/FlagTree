target triple = "nvptx64-nvidia-cuda"
; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-p3:32:32-p4:32:32-p5:32:32-p6:32:32-p7:32:32-i64:64-i128:128-i256:256-v16:16-v32:32-n16:32:64"

declare float @f06_tanh(float) local_unnamed_addr

define ptx_kernel void @f06_gelu_body(i8 addrspace(1)* %v0, i8 addrspace(1)* %v1, i8 addrspace(1)* %v2, i32 %v3, i8 addrspace(1)* readnone  %v4, i8 addrspace(1)* readnone  %v5) local_unnamed_addr #0 {
  %v7 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %v8 = shl i32 %v7, 9
  %v9 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %v10 = shl nuw nsw i32 %v9, 1
  %v11 = and i32 %v10, 510
  %v12 = or  i32 %v11, %v8
  %v13 = srem i32 %v12, 1024
  %v14 = sext i32 %v12 to i64
  %bridge_in16 = bitcast i8 addrspace(1)* %v0 to i16 addrspace(1)*
  %bridge_gep16 = getelementptr i16, i16 addrspace(1)* %bridge_in16, i64 %v14
  %v15 = bitcast i16 addrspace(1)* %bridge_gep16 to i8 addrspace(1)*
  %v16 = tail call i32 asm sideeffect "mov.u32 $0, 0x0;\0A\09ld.global.b32 { $0 }, [ $1 + 0 ];", "=r,l"(i8 addrspace(1)* %v15) #2
  %v17 = bitcast i32 %v16 to <2 x i16>
  %v18 = sext i32 %v13 to i64
  %bridge_in20 = bitcast i8 addrspace(1)* %v1 to i16 addrspace(1)*
  %bridge_gep20 = getelementptr i16, i16 addrspace(1)* %bridge_in20, i64 %v18
  %v19 = bitcast i16 addrspace(1)* %bridge_gep20 to i8 addrspace(1)*
  %v20 = tail call i64 asm sideeffect "mov.u64 $0, 0x0;\0A\09createpolicy.fractional.L2::evict_last.b64 $0, 1.0;", "=l"() #2
  %v21 = tail call i32 asm sideeffect "mov.u32 $0, 0x0;\0A\09ld.global.L1::evict_last.L2::cache_hint.b32 { $0 }, [ $1 + 0 ], $2;", "=r,l,l"(i8 addrspace(1)* %v19, i64 %v20) #2
  %v22 = bitcast i32 %v21 to <2 x i16>
  %bf23_0_a0 = extractelement <2 x i16> %v17, i32 0
  %bf23_0_a1 = extractelement <2 x i16> %v22, i32 0
  %bf23_0_x = call float @bridge_bfext(i16 %bf23_0_a0)
  %bf23_0_y = call float @bridge_bfext(i16 %bf23_0_a1)
  %bf23_0_s = fadd float %bf23_0_x, %bf23_0_y
  %bf23_0_r = call i16 @bridge_bftrunc(float %bf23_0_s)
  %bf23_1_a0 = extractelement <2 x i16> %v17, i32 1
  %bf23_1_a1 = extractelement <2 x i16> %v22, i32 1
  %bf23_1_x = call float @bridge_bfext(i16 %bf23_1_a0)
  %bf23_1_y = call float @bridge_bfext(i16 %bf23_1_a1)
  %bf23_1_s = fadd float %bf23_1_x, %bf23_1_y
  %bf23_1_r = call i16 @bridge_bftrunc(float %bf23_1_s)
  %bf23_v0 = insertelement <2 x i16> undef, i16 %bf23_0_r, i32 0
  %v23 = insertelement <2 x i16> %bf23_v0, i16 %bf23_1_r, i32 1
  %bf24_0_a0 = extractelement <2 x i16> %v23, i32 0
  %bf24_0_r = call float @bridge_bfext(i16 %bf24_0_a0)
  %bf24_1_a0 = extractelement <2 x i16> %v23, i32 1
  %bf24_1_r = call float @bridge_bfext(i16 %bf24_1_a0)
  %bf24_v0 = insertelement <2 x float> undef, float %bf24_0_r, i32 0
  %v24 = insertelement <2 x float> %bf24_v0, float %bf24_1_r, i32 1
  %v25 = fmul <2 x float> %v24, <float 5.000000e-01, float 5.000000e-01>
  %v26 = extractelement <2 x float> %v24, i64 0
  %v27 = fmul float %v26, %v26
  %v28 = extractelement <2 x float> %v24, i64 1
  %v29 = fmul float %v28, %v28
  %v30 = fmul float %v27, %v26
  %v31 = fmul float %v29, %v28
  %v32 = fmul float %v30, 0x3FA6E4E260000000
  %v33 = fmul float %v31, 0x3FA6E4E260000000
  %v34 = fadd float %v32, %v26
  %v35 = fadd float %v33, %v28
  %v36 = fmul float %v34, 0x3FE9884540000000
  %v37 = fmul float %v35, 0x3FE9884540000000
  %v38 = tail call float @f06_tanh(float %v36)
  %v39 = tail call float @f06_tanh(float %v37)
  %v40 = insertelement <2 x float> undef, float %v38, i64 0
  %v41 = insertelement <2 x float> %v40, float %v39, i64 1
  %v42 = fadd <2 x float> %v41, <float 1.000000e+00, float 1.000000e+00>
  %v43 = fmul <2 x float> %v42, %v25
  %bf44_0_a0 = extractelement <2 x float> %v43, i32 0
  %bf44_0_r = call i16 @bridge_bftrunc(float %bf44_0_a0)
  %bf44_1_a0 = extractelement <2 x float> %v43, i32 1
  %bf44_1_r = call i16 @bridge_bftrunc(float %bf44_1_a0)
  %bf44_v0 = insertelement <2 x i16> undef, i16 %bf44_0_r, i32 0
  %v44 = insertelement <2 x i16> %bf44_v0, i16 %bf44_1_r, i32 1
  %bridge_in69 = bitcast i8 addrspace(1)* %v2 to i16 addrspace(1)*
  %bridge_gep69 = getelementptr i16, i16 addrspace(1)* %bridge_in69, i64 %v14
  %v45 = bitcast i16 addrspace(1)* %bridge_gep69 to i8 addrspace(1)*
  %v46 = bitcast <2 x i16> %v44 to i32
  tail call void asm sideeffect "st.global.b32 [ $1 + 0 ], { $0 };", "r,l"(i32 %v46, i8 addrspace(1)* %v45) #2
  ret void
}

; Function Attrs:     nounwind speculatable  
declare   i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #1

; Function Attrs:     nounwind speculatable  
declare   i32 @llvm.nvvm.read.ptx.sreg.tid.x() #1

attributes #0 = { "nvvm.reqntid"="256" }
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
!2 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body, !"reqntidx", i32 256}
