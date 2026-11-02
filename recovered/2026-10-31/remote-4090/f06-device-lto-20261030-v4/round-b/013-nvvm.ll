target triple = "nvptx64-nvidia-cuda"
; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-p3:32:32-p4:32:32-p5:32:32-p6:32:32-p7:32:32-i64:64-i128:128-i256:256-v16:16-v32:32-n16:32:64"

declare float @f06_tanh(float) local_unnamed_addr

define ptx_kernel void @f06_gelu_body(i8 addrspace(1)* %v0, i8 addrspace(1)* %v1, i8 addrspace(1)* %v2, i32 %v3, i8 addrspace(1)* readnone  %v4, i8 addrspace(1)* readnone  %v5) local_unnamed_addr #0 {
  %v7 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %v8 = shl i32 %v7, 7
  %v9 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %v10 = and i32 %v9, 127
  %v11 = or  i32 %v8, %v10
  %v12 = icmp slt i32 %v11, 2048
  %v13 = srem i32 %v11, 128
  %v14 = sext i32 %v11 to i64
  %bridge_in16 = bitcast i8 addrspace(1)* %v0 to i16 addrspace(1)*
  %bridge_gep16 = getelementptr i16, i16 addrspace(1)* %bridge_in16, i64 %v14
  %v15 = bitcast i16 addrspace(1)* %bridge_gep16 to i8 addrspace(1)*
  %v16 = tail call i16 asm sideeffect "mov.u16 $0, 0x0;\0A\09@$2 ld.global.b16 { $0 }, [ $1 + 0 ];", "=c,l,b"(i8 addrspace(1)* %v15, i1 %v12) #2
  %v17 = bitcast i16 %v16 to i16
  %v18 = sext i32 %v13 to i64
  %bridge_in20 = bitcast i8 addrspace(1)* %v1 to i16 addrspace(1)*
  %bridge_gep20 = getelementptr i16, i16 addrspace(1)* %bridge_in20, i64 %v18
  %v19 = bitcast i16 addrspace(1)* %bridge_gep20 to i8 addrspace(1)*
  %v20 = tail call i64 asm sideeffect "mov.u64 $0, 0x0;\0A\09createpolicy.fractional.L2::evict_last.b64 $0, 1.0;", "=l"() #2
  %v21 = tail call i16 asm sideeffect "mov.u16 $0, 0x0;\0A\09@$3 ld.global.L1::evict_last.L2::cache_hint.b16 { $0 }, [ $1 + 0 ], $2;", "=c,l,l,b"(i8 addrspace(1)* %v19, i64 %v20, i1 %v12) #2
  %v22 = bitcast i16 %v21 to i16
  %bf23_0_x = call float @bridge_halfext(i16 %v17)
  %bf23_0_y = call float @bridge_halfext(i16 %v22)
  %bf23_0_s = fadd float %bf23_0_x, %bf23_0_y
  %v23 = call i16 @bridge_halftrunc(float %bf23_0_s)
  %v24 = call float @bridge_halfext(i16 %v23)
  %v25 = fmul float %v24, 5.000000e-01
  %v26 = fmul float %v24, %v24
  %v27 = fmul float %v26, %v24
  %v28 = fmul float %v27, 0x3FA6E4E260000000
  %v29 = fadd float %v28, %v24
  %v30 = fmul float %v29, 0x3FE9884540000000
  %v31 = tail call float @f06_tanh(float %v30)
  %v32 = fadd float %v31, 1.000000e+00
  %v33 = fmul float %v32, %v25
  %v34 = call i16 @bridge_halftrunc(float %v33)
  %bridge_in39 = bitcast i8 addrspace(1)* %v2 to i16 addrspace(1)*
  %bridge_gep39 = getelementptr i16, i16 addrspace(1)* %bridge_in39, i64 %v14
  %v35 = bitcast i16 addrspace(1)* %bridge_gep39 to i8 addrspace(1)*
  %v36 = bitcast i16 %v34 to i16
  tail call void asm sideeffect "@$2 st.global.b16 [ $1 + 0 ], { $0 };", "c,l,b"(i16 %v36, i8 addrspace(1)* %v35, i1 %v12) #2
  ret void
}

; Function Attrs:     nounwind speculatable  
declare   i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #1

; Function Attrs:     nounwind speculatable  
declare   i32 @llvm.nvvm.read.ptx.sreg.tid.x() #1

attributes #0 = { "nvvm.reqntid"="128" }
attributes #1 = {     nounwind speculatable   }
attributes #2 = { nounwind }

define internal float @bridge_halfext(i16 %x) alwaysinline {
 %c = call float asm "cvt.f32.f16 $0, $1;", "=f,h"(i16 %x)
 ret float %c
}
define internal i16 @bridge_halftrunc(float %x) alwaysinline {
 %a = call i16 asm "cvt.rn.f16.f32 $0, $1;", "=h,f"(float %x)
 ret i16 %a
}
!nvvmir.version = !{!0}
!0 = !{i32 2, i32 0, i32 3, i32 1}
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body to i8*)], section "llvm.metadata"
!nvvm.annotations = !{!1, !2}
!1 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body, !"kernel", i32 1}
!2 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body, !"reqntidx", i32 128}
