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
  %v13 = srem i32 %v12, 1024
  %v14 = sext i32 %v12 to i64
  %bridge_in16 = bitcast i8 addrspace(1)* %v0 to float addrspace(1)*
  %bridge_gep16 = getelementptr float, float addrspace(1)* %bridge_in16, i64 %v14
  %v15 = bitcast float addrspace(1)* %bridge_gep16 to i8 addrspace(1)*
  %v16 = tail call { i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09ld.global.v2.b32 { $0, $1 }, [ $2 + 0 ];", "=r,=r,l"(i8 addrspace(1)* %v15) #2
  %v17 = extractvalue { i32, i32 } %v16, 0
  %v18 = extractvalue { i32, i32 } %v16, 1
  %v19 = bitcast i32 %v17 to float
  %v20 = bitcast i32 %v18 to float
  %v21 = sext i32 %v13 to i64
  %bridge_in23 = bitcast i8 addrspace(1)* %v1 to float addrspace(1)*
  %bridge_gep23 = getelementptr float, float addrspace(1)* %bridge_in23, i64 %v21
  %v22 = bitcast float addrspace(1)* %bridge_gep23 to i8 addrspace(1)*
  %v23 = tail call i64 asm sideeffect "mov.u64 $0, 0x0;\0A\09createpolicy.fractional.L2::evict_last.b64 $0, 1.0;", "=l"() #2
  %v24 = tail call { i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09ld.global.L1::evict_last.L2::cache_hint.v2.b32 { $0, $1 }, [ $2 + 0 ], $3;", "=r,=r,l,l"(i8 addrspace(1)* %v22, i64 %v23) #2
  %v25 = extractvalue { i32, i32 } %v24, 0
  %v26 = extractvalue { i32, i32 } %v24, 1
  %v27 = bitcast i32 %v25 to float
  %v28 = bitcast i32 %v26 to float
  %v29 = fadd float %v19, %v27
  %v30 = fadd float %v20, %v28
  %v31 = fmul float %v29, 5.000000e-01
  %v32 = fmul float %v30, 5.000000e-01
  %v33 = fmul float %v29, %v29
  %v34 = fmul float %v30, %v30
  %v35 = fmul float %v29, %v33
  %v36 = fmul float %v30, %v34
  %v37 = fmul float %v35, 0x3FA6E4E260000000
  %v38 = fmul float %v36, 0x3FA6E4E260000000
  %v39 = fadd float %v29, %v37
  %v40 = fadd float %v30, %v38
  %v41 = fmul float %v39, 0x3FE9884540000000
  %v42 = fmul float %v40, 0x3FE9884540000000
  %v43 = tail call float @f06_tanh(float %v41)
  %v44 = tail call float @f06_tanh(float %v42)
  %v45 = fadd float %v43, 1.000000e+00
  %v46 = fadd float %v44, 1.000000e+00
  %v47 = fmul float %v45, %v31
  %v48 = fmul float %v46, %v32
  %bridge_in50 = bitcast i8 addrspace(1)* %v2 to float addrspace(1)*
  %bridge_gep50 = getelementptr float, float addrspace(1)* %bridge_in50, i64 %v14
  %v49 = bitcast float addrspace(1)* %bridge_gep50 to i8 addrspace(1)*
  %v50 = bitcast float %v47 to i32
  %v51 = bitcast float %v48 to i32
  tail call void asm sideeffect "st.global.v2.b32 [ $2 + 0 ], { $0, $1 };", "r,r,l"(i32 %v50, i32 %v51, i8 addrspace(1)* %v49) #2
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
