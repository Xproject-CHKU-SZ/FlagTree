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
  %bridge_in17 = bitcast i8 addrspace(1)* %v0 to float addrspace(1)*
  %bridge_gep17 = getelementptr float, float addrspace(1)* %bridge_in17, i64 %v15
  %v16 = bitcast float addrspace(1)* %bridge_gep17 to i8 addrspace(1)*
  %v17 = tail call { i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09@$3 ld.global.v2.b32 { $0, $1 }, [ $2 + 0 ];", "=r,=r,l,b"(i8 addrspace(1)* %v16, i1 %v13) #2
  %v18 = extractvalue { i32, i32 } %v17, 0
  %v19 = extractvalue { i32, i32 } %v17, 1
  %v20 = bitcast i32 %v18 to float
  %v21 = bitcast i32 %v19 to float
  %v22 = sext i32 %v14 to i64
  %bridge_in24 = bitcast i8 addrspace(1)* %v1 to float addrspace(1)*
  %bridge_gep24 = getelementptr float, float addrspace(1)* %bridge_in24, i64 %v22
  %v23 = bitcast float addrspace(1)* %bridge_gep24 to i8 addrspace(1)*
  %v24 = tail call i64 asm sideeffect "mov.u64 $0, 0x0;\0A\09createpolicy.fractional.L2::evict_last.b64 $0, 1.0;", "=l"() #2
  %v25 = tail call { i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09@$4 ld.global.L1::evict_last.L2::cache_hint.v2.b32 { $0, $1 }, [ $2 + 0 ], $3;", "=r,=r,l,l,b"(i8 addrspace(1)* %v23, i64 %v24, i1 %v13) #2
  %v26 = extractvalue { i32, i32 } %v25, 0
  %v27 = extractvalue { i32, i32 } %v25, 1
  %v28 = bitcast i32 %v26 to float
  %v29 = bitcast i32 %v27 to float
  %v30 = fadd float %v20, %v28
  %v31 = fadd float %v21, %v29
  %v32 = fmul float %v30, 5.000000e-01
  %v33 = fmul float %v31, 5.000000e-01
  %v34 = fmul float %v30, %v30
  %v35 = fmul float %v31, %v31
  %v36 = fmul float %v30, %v34
  %v37 = fmul float %v31, %v35
  %v38 = fmul float %v36, 0x3FA6E4E260000000
  %v39 = fmul float %v37, 0x3FA6E4E260000000
  %v40 = fadd float %v30, %v38
  %v41 = fadd float %v31, %v39
  %v42 = fmul float %v40, 0x3FE9884540000000
  %v43 = fmul float %v41, 0x3FE9884540000000
  %v44 = tail call float @f06_tanh(float %v42)
  %v45 = tail call float @f06_tanh(float %v43)
  %v46 = fadd float %v44, 1.000000e+00
  %v47 = fadd float %v45, 1.000000e+00
  %v48 = fmul float %v46, %v32
  %v49 = fmul float %v47, %v33
  %bridge_in51 = bitcast i8 addrspace(1)* %v2 to float addrspace(1)*
  %bridge_gep51 = getelementptr float, float addrspace(1)* %bridge_in51, i64 %v15
  %v50 = bitcast float addrspace(1)* %bridge_gep51 to i8 addrspace(1)*
  %v51 = bitcast float %v48 to i32
  %v52 = bitcast float %v49 to i32
  tail call void asm sideeffect "@$3 st.global.v2.b32 [ $2 + 0 ], { $0, $1 };", "r,r,l,b"(i32 %v51, i32 %v52, i8 addrspace(1)* %v50, i1 %v13) #2
  ret void
}

; Function Attrs:     nounwind speculatable  
declare   i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #1

; Function Attrs:     nounwind speculatable  
declare   i32 @llvm.nvvm.read.ptx.sreg.tid.x() #1

attributes #0 = { "nvvm.reqntid"="128" }
attributes #1 = {     nounwind speculatable   }
attributes #2 = { nounwind }
!nvvmir.version = !{!0}
!0 = !{i32 2, i32 0, i32 3, i32 1}
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body to i8*)], section "llvm.metadata"
!nvvm.annotations = !{!1, !2}
!1 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body, !"kernel", i32 1}
!2 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i32, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body, !"reqntidx", i32 128}
