target triple = "nvptx64-nvidia-cuda"
; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-p3:32:32-p4:32:32-p5:32:32-p6:32:32-p7:32:32-i64:64-i128:128-i256:256-v16:16-v32:32-n16:32:64"

declare float @f06_tanh(float) local_unnamed_addr

define ptx_kernel void @f06_gelu_body(i8 addrspace(1)* %v0, i8 addrspace(1)* %v1, i8 addrspace(1)* %v2, i32 %v3, i8 addrspace(1)* readnone  %v4, i8 addrspace(1)* readnone  %v5) local_unnamed_addr #0 {
  %v7 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %v8 = shl i32 %v7, 10
  %v9 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %v10 = shl nuw nsw i32 %v9, 2
  %v11 = and i32 %v10, 508
  %v12 = or  i32 %v11, %v8
  %v13 = or  i32 %v12, 512
  %v14 = srem i32 %v12, 1024
  %v15 = srem i32 %v13, 1024
  %v16 = sext i32 %v12 to i64
  %bridge_in18 = bitcast i8 addrspace(1)* %v0 to float addrspace(1)*
  %bridge_gep18 = getelementptr float, float addrspace(1)* %bridge_in18, i64 %v16
  %v17 = bitcast float addrspace(1)* %bridge_gep18 to i8 addrspace(1)*
  %v18 = sext i32 %v13 to i64
  %bridge_in20 = bitcast i8 addrspace(1)* %v0 to float addrspace(1)*
  %bridge_gep20 = getelementptr float, float addrspace(1)* %bridge_in20, i64 %v18
  %v19 = bitcast float addrspace(1)* %bridge_gep20 to i8 addrspace(1)*
  %v20 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ];", "=r,=r,=r,=r,l"(i8 addrspace(1)* %v17) #2
  %v21 = extractvalue { i32, i32, i32, i32 } %v20, 0
  %v22 = extractvalue { i32, i32, i32, i32 } %v20, 1
  %v23 = extractvalue { i32, i32, i32, i32 } %v20, 2
  %v24 = extractvalue { i32, i32, i32, i32 } %v20, 3
  %v25 = bitcast i32 %v21 to float
  %v26 = bitcast i32 %v22 to float
  %v27 = bitcast i32 %v23 to float
  %v28 = bitcast i32 %v24 to float
  %v29 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ];", "=r,=r,=r,=r,l"(i8 addrspace(1)* %v19) #2
  %v30 = extractvalue { i32, i32, i32, i32 } %v29, 0
  %v31 = extractvalue { i32, i32, i32, i32 } %v29, 1
  %v32 = extractvalue { i32, i32, i32, i32 } %v29, 2
  %v33 = extractvalue { i32, i32, i32, i32 } %v29, 3
  %v34 = bitcast i32 %v30 to float
  %v35 = bitcast i32 %v31 to float
  %v36 = bitcast i32 %v32 to float
  %v37 = bitcast i32 %v33 to float
  %v38 = sext i32 %v14 to i64
  %bridge_in40 = bitcast i8 addrspace(1)* %v1 to float addrspace(1)*
  %bridge_gep40 = getelementptr float, float addrspace(1)* %bridge_in40, i64 %v38
  %v39 = bitcast float addrspace(1)* %bridge_gep40 to i8 addrspace(1)*
  %v40 = sext i32 %v15 to i64
  %bridge_in42 = bitcast i8 addrspace(1)* %v1 to float addrspace(1)*
  %bridge_gep42 = getelementptr float, float addrspace(1)* %bridge_in42, i64 %v40
  %v41 = bitcast float addrspace(1)* %bridge_gep42 to i8 addrspace(1)*
  %v42 = tail call i64 asm sideeffect "mov.u64 $0, 0x0;\0A\09createpolicy.fractional.L2::evict_last.b64 $0, 1.0;", "=l"() #2
  %v43 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.L1::evict_last.L2::cache_hint.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ], $5;", "=r,=r,=r,=r,l,l"(i8 addrspace(1)* %v39, i64 %v42) #2
  %v44 = extractvalue { i32, i32, i32, i32 } %v43, 0
  %v45 = extractvalue { i32, i32, i32, i32 } %v43, 1
  %v46 = extractvalue { i32, i32, i32, i32 } %v43, 2
  %v47 = extractvalue { i32, i32, i32, i32 } %v43, 3
  %v48 = bitcast i32 %v44 to float
  %v49 = bitcast i32 %v45 to float
  %v50 = bitcast i32 %v46 to float
  %v51 = bitcast i32 %v47 to float
  %v52 = tail call i64 asm sideeffect "mov.u64 $0, 0x0;\0A\09createpolicy.fractional.L2::evict_last.b64 $0, 1.0;", "=l"() #2
  %v53 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.L1::evict_last.L2::cache_hint.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ], $5;", "=r,=r,=r,=r,l,l"(i8 addrspace(1)* %v41, i64 %v52) #2
  %v54 = extractvalue { i32, i32, i32, i32 } %v53, 0
  %v55 = extractvalue { i32, i32, i32, i32 } %v53, 1
  %v56 = extractvalue { i32, i32, i32, i32 } %v53, 2
  %v57 = extractvalue { i32, i32, i32, i32 } %v53, 3
  %v58 = bitcast i32 %v54 to float
  %v59 = bitcast i32 %v55 to float
  %v60 = bitcast i32 %v56 to float
  %v61 = bitcast i32 %v57 to float
  %v62 = fadd float %v25, %v48
  %v63 = fadd float %v26, %v49
  %v64 = fadd float %v27, %v50
  %v65 = fadd float %v28, %v51
  %v66 = fadd float %v34, %v58
  %v67 = fadd float %v35, %v59
  %v68 = fadd float %v36, %v60
  %v69 = fadd float %v37, %v61
  %v70 = fmul float %v62, 5.000000e-01
  %v71 = fmul float %v63, 5.000000e-01
  %v72 = fmul float %v64, 5.000000e-01
  %v73 = fmul float %v65, 5.000000e-01
  %v74 = fmul float %v66, 5.000000e-01
  %v75 = fmul float %v67, 5.000000e-01
  %v76 = fmul float %v68, 5.000000e-01
  %v77 = fmul float %v69, 5.000000e-01
  %v78 = fmul float %v62, %v62
  %v79 = fmul float %v63, %v63
  %v80 = fmul float %v64, %v64
  %v81 = fmul float %v65, %v65
  %v82 = fmul float %v66, %v66
  %v83 = fmul float %v67, %v67
  %v84 = fmul float %v68, %v68
  %v85 = fmul float %v69, %v69
  %v86 = fmul float %v62, %v78
  %v87 = fmul float %v63, %v79
  %v88 = fmul float %v64, %v80
  %v89 = fmul float %v65, %v81
  %v90 = fmul float %v66, %v82
  %v91 = fmul float %v67, %v83
  %v92 = fmul float %v68, %v84
  %v93 = fmul float %v69, %v85
  %v94 = fmul float %v86, 0x3FA6E4E260000000
  %v95 = fmul float %v87, 0x3FA6E4E260000000
  %v96 = fmul float %v88, 0x3FA6E4E260000000
  %v97 = fmul float %v89, 0x3FA6E4E260000000
  %v98 = fmul float %v90, 0x3FA6E4E260000000
  %v99 = fmul float %v91, 0x3FA6E4E260000000
  %v100 = fmul float %v92, 0x3FA6E4E260000000
  %v101 = fmul float %v93, 0x3FA6E4E260000000
  %v102 = fadd float %v62, %v94
  %v103 = fadd float %v63, %v95
  %v104 = fadd float %v64, %v96
  %v105 = fadd float %v65, %v97
  %v106 = fadd float %v66, %v98
  %v107 = fadd float %v67, %v99
  %v108 = fadd float %v68, %v100
  %v109 = fadd float %v69, %v101
  %v110 = fmul float %v102, 0x3FE9884540000000
  %v111 = fmul float %v103, 0x3FE9884540000000
  %v112 = fmul float %v104, 0x3FE9884540000000
  %v113 = fmul float %v105, 0x3FE9884540000000
  %v114 = fmul float %v106, 0x3FE9884540000000
  %v115 = fmul float %v107, 0x3FE9884540000000
  %v116 = fmul float %v108, 0x3FE9884540000000
  %v117 = fmul float %v109, 0x3FE9884540000000
  %v118 = tail call float @f06_tanh(float %v110)
  %v119 = tail call float @f06_tanh(float %v111)
  %v120 = tail call float @f06_tanh(float %v112)
  %v121 = tail call float @f06_tanh(float %v113)
  %v122 = tail call float @f06_tanh(float %v114)
  %v123 = tail call float @f06_tanh(float %v115)
  %v124 = tail call float @f06_tanh(float %v116)
  %v125 = tail call float @f06_tanh(float %v117)
  %v126 = fadd float %v118, 1.000000e+00
  %v127 = fadd float %v119, 1.000000e+00
  %v128 = fadd float %v120, 1.000000e+00
  %v129 = fadd float %v121, 1.000000e+00
  %v130 = fadd float %v122, 1.000000e+00
  %v131 = fadd float %v123, 1.000000e+00
  %v132 = fadd float %v124, 1.000000e+00
  %v133 = fadd float %v125, 1.000000e+00
  %v134 = fmul float %v70, %v126
  %v135 = fmul float %v71, %v127
  %v136 = fmul float %v72, %v128
  %v137 = fmul float %v73, %v129
  %v138 = fmul float %v74, %v130
  %v139 = fmul float %v75, %v131
  %v140 = fmul float %v76, %v132
  %v141 = fmul float %v77, %v133
  %bridge_in143 = bitcast i8 addrspace(1)* %v2 to float addrspace(1)*
  %bridge_gep143 = getelementptr float, float addrspace(1)* %bridge_in143, i64 %v16
  %v142 = bitcast float addrspace(1)* %bridge_gep143 to i8 addrspace(1)*
  %bridge_in144 = bitcast i8 addrspace(1)* %v2 to float addrspace(1)*
  %bridge_gep144 = getelementptr float, float addrspace(1)* %bridge_in144, i64 %v18
  %v143 = bitcast float addrspace(1)* %bridge_gep144 to i8 addrspace(1)*
  %v144 = bitcast float %v134 to i32
  %v145 = bitcast float %v135 to i32
  %v146 = bitcast float %v136 to i32
  %v147 = bitcast float %v137 to i32
  tail call void asm sideeffect "st.global.v4.b32 [ $4 + 0 ], { $0, $1, $2, $3 };", "r,r,r,r,l"(i32 %v144, i32 %v145, i32 %v146, i32 %v147, i8 addrspace(1)* %v142) #2
  %v148 = bitcast float %v138 to i32
  %v149 = bitcast float %v139 to i32
  %v150 = bitcast float %v140 to i32
  %v151 = bitcast float %v141 to i32
  tail call void asm sideeffect "st.global.v4.b32 [ $4 + 0 ], { $0, $1, $2, $3 };", "r,r,r,r,l"(i32 %v148, i32 %v149, i32 %v150, i32 %v151, i8 addrspace(1)* %v143) #2
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
