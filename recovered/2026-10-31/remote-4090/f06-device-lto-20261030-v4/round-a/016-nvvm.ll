target triple = "nvptx64-nvidia-cuda"
; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-p3:32:32-p4:32:32-p5:32:32-p6:32:32-p7:32:32-i64:64-i128:128-i256:256-v16:16-v32:32-n16:32:64"

declare float @f06_tanh(float) local_unnamed_addr

define ptx_kernel void @f06_gelu_body(i8 addrspace(1)* %v0, i8 addrspace(1)* %v1, i8 addrspace(1)* %v2, i32 %v3, i8 addrspace(1)* readnone  %v4, i8 addrspace(1)* readnone  %v5) local_unnamed_addr #0 {
  %v7 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %v8 = shl i32 %v7, 10
  %v9 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %v10 = shl nuw nsw i32 %v9, 3
  %v11 = and i32 %v10, 1016
  %v12 = or  i32 %v11, %v8
  %v13 = srem i32 %v12, 1024
  %v14 = sext i32 %v12 to i64
  %bridge_in16 = bitcast i8 addrspace(1)* %v0 to i16 addrspace(1)*
  %bridge_gep16 = getelementptr i16, i16 addrspace(1)* %bridge_in16, i64 %v14
  %v15 = bitcast i16 addrspace(1)* %bridge_gep16 to i8 addrspace(1)*
  %v16 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ];", "=r,=r,=r,=r,l"(i8 addrspace(1)* %v15) #2
  %v17 = extractvalue { i32, i32, i32, i32 } %v16, 0
  %v18 = bitcast i32 %v17 to <2 x i16>
  %v19 = extractvalue { i32, i32, i32, i32 } %v16, 1
  %v20 = bitcast i32 %v19 to <2 x i16>
  %v21 = extractvalue { i32, i32, i32, i32 } %v16, 2
  %v22 = bitcast i32 %v21 to <2 x i16>
  %v23 = extractvalue { i32, i32, i32, i32 } %v16, 3
  %v24 = bitcast i32 %v23 to <2 x i16>
  %v25 = sext i32 %v13 to i64
  %bridge_in27 = bitcast i8 addrspace(1)* %v1 to i16 addrspace(1)*
  %bridge_gep27 = getelementptr i16, i16 addrspace(1)* %bridge_in27, i64 %v25
  %v26 = bitcast i16 addrspace(1)* %bridge_gep27 to i8 addrspace(1)*
  %v27 = tail call i64 asm sideeffect "mov.u64 $0, 0x0;\0A\09createpolicy.fractional.L2::evict_last.b64 $0, 1.0;", "=l"() #2
  %v28 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.L1::evict_last.L2::cache_hint.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ], $5;", "=r,=r,=r,=r,l,l"(i8 addrspace(1)* %v26, i64 %v27) #2
  %v29 = extractvalue { i32, i32, i32, i32 } %v28, 0
  %v30 = bitcast i32 %v29 to <2 x i16>
  %v31 = extractvalue { i32, i32, i32, i32 } %v28, 1
  %v32 = bitcast i32 %v31 to <2 x i16>
  %v33 = extractvalue { i32, i32, i32, i32 } %v28, 2
  %v34 = bitcast i32 %v33 to <2 x i16>
  %v35 = extractvalue { i32, i32, i32, i32 } %v28, 3
  %v36 = bitcast i32 %v35 to <2 x i16>
  %bf37_0_a0 = extractelement <2 x i16> %v18, i32 0
  %bf37_0_a1 = extractelement <2 x i16> %v30, i32 0
  %bf37_0_x = call float @bridge_halfext(i16 %bf37_0_a0)
  %bf37_0_y = call float @bridge_halfext(i16 %bf37_0_a1)
  %bf37_0_s = fadd float %bf37_0_x, %bf37_0_y
  %bf37_0_r = call i16 @bridge_halftrunc(float %bf37_0_s)
  %bf37_1_a0 = extractelement <2 x i16> %v18, i32 1
  %bf37_1_a1 = extractelement <2 x i16> %v30, i32 1
  %bf37_1_x = call float @bridge_halfext(i16 %bf37_1_a0)
  %bf37_1_y = call float @bridge_halfext(i16 %bf37_1_a1)
  %bf37_1_s = fadd float %bf37_1_x, %bf37_1_y
  %bf37_1_r = call i16 @bridge_halftrunc(float %bf37_1_s)
  %bf37_v0 = insertelement <2 x i16> undef, i16 %bf37_0_r, i32 0
  %v37 = insertelement <2 x i16> %bf37_v0, i16 %bf37_1_r, i32 1
  %bf38_0_a0 = extractelement <2 x i16> %v37, i32 0
  %bf38_0_r = call float @bridge_halfext(i16 %bf38_0_a0)
  %bf38_1_a0 = extractelement <2 x i16> %v37, i32 1
  %bf38_1_r = call float @bridge_halfext(i16 %bf38_1_a0)
  %bf38_v0 = insertelement <2 x float> undef, float %bf38_0_r, i32 0
  %v38 = insertelement <2 x float> %bf38_v0, float %bf38_1_r, i32 1
  %v39 = fmul <2 x float> %v38, <float 5.000000e-01, float 5.000000e-01>
  %v40 = extractelement <2 x float> %v38, i64 0
  %v41 = fmul float %v40, %v40
  %v42 = extractelement <2 x float> %v38, i64 1
  %v43 = fmul float %v42, %v42
  %v44 = fmul float %v41, %v40
  %v45 = fmul float %v43, %v42
  %v46 = fmul float %v44, 0x3FA6E4E260000000
  %v47 = fmul float %v45, 0x3FA6E4E260000000
  %v48 = fadd float %v46, %v40
  %v49 = fadd float %v47, %v42
  %v50 = fmul float %v48, 0x3FE9884540000000
  %v51 = fmul float %v49, 0x3FE9884540000000
  %v52 = tail call float @f06_tanh(float %v50)
  %v53 = tail call float @f06_tanh(float %v51)
  %v54 = insertelement <2 x float> undef, float %v52, i64 0
  %v55 = insertelement <2 x float> %v54, float %v53, i64 1
  %v56 = fadd <2 x float> %v55, <float 1.000000e+00, float 1.000000e+00>
  %v57 = fmul <2 x float> %v56, %v39
  %bf58_0_a0 = extractelement <2 x float> %v57, i32 0
  %bf58_0_r = call i16 @bridge_halftrunc(float %bf58_0_a0)
  %bf58_1_a0 = extractelement <2 x float> %v57, i32 1
  %bf58_1_r = call i16 @bridge_halftrunc(float %bf58_1_a0)
  %bf58_v0 = insertelement <2 x i16> undef, i16 %bf58_0_r, i32 0
  %v58 = insertelement <2 x i16> %bf58_v0, i16 %bf58_1_r, i32 1
  %bf59_0_a0 = extractelement <2 x i16> %v20, i32 0
  %bf59_0_a1 = extractelement <2 x i16> %v32, i32 0
  %bf59_0_x = call float @bridge_halfext(i16 %bf59_0_a0)
  %bf59_0_y = call float @bridge_halfext(i16 %bf59_0_a1)
  %bf59_0_s = fadd float %bf59_0_x, %bf59_0_y
  %bf59_0_r = call i16 @bridge_halftrunc(float %bf59_0_s)
  %bf59_1_a0 = extractelement <2 x i16> %v20, i32 1
  %bf59_1_a1 = extractelement <2 x i16> %v32, i32 1
  %bf59_1_x = call float @bridge_halfext(i16 %bf59_1_a0)
  %bf59_1_y = call float @bridge_halfext(i16 %bf59_1_a1)
  %bf59_1_s = fadd float %bf59_1_x, %bf59_1_y
  %bf59_1_r = call i16 @bridge_halftrunc(float %bf59_1_s)
  %bf59_v0 = insertelement <2 x i16> undef, i16 %bf59_0_r, i32 0
  %v59 = insertelement <2 x i16> %bf59_v0, i16 %bf59_1_r, i32 1
  %bf60_0_a0 = extractelement <2 x i16> %v59, i32 0
  %bf60_0_r = call float @bridge_halfext(i16 %bf60_0_a0)
  %bf60_1_a0 = extractelement <2 x i16> %v59, i32 1
  %bf60_1_r = call float @bridge_halfext(i16 %bf60_1_a0)
  %bf60_v0 = insertelement <2 x float> undef, float %bf60_0_r, i32 0
  %v60 = insertelement <2 x float> %bf60_v0, float %bf60_1_r, i32 1
  %v61 = fmul <2 x float> %v60, <float 5.000000e-01, float 5.000000e-01>
  %v62 = extractelement <2 x float> %v60, i64 0
  %v63 = fmul float %v62, %v62
  %v64 = extractelement <2 x float> %v60, i64 1
  %v65 = fmul float %v64, %v64
  %v66 = fmul float %v63, %v62
  %v67 = fmul float %v65, %v64
  %v68 = fmul float %v66, 0x3FA6E4E260000000
  %v69 = fmul float %v67, 0x3FA6E4E260000000
  %v70 = fadd float %v68, %v62
  %v71 = fadd float %v69, %v64
  %v72 = fmul float %v70, 0x3FE9884540000000
  %v73 = fmul float %v71, 0x3FE9884540000000
  %v74 = tail call float @f06_tanh(float %v72)
  %v75 = tail call float @f06_tanh(float %v73)
  %v76 = insertelement <2 x float> undef, float %v74, i64 0
  %v77 = insertelement <2 x float> %v76, float %v75, i64 1
  %v78 = fadd <2 x float> %v77, <float 1.000000e+00, float 1.000000e+00>
  %v79 = fmul <2 x float> %v78, %v61
  %bf80_0_a0 = extractelement <2 x float> %v79, i32 0
  %bf80_0_r = call i16 @bridge_halftrunc(float %bf80_0_a0)
  %bf80_1_a0 = extractelement <2 x float> %v79, i32 1
  %bf80_1_r = call i16 @bridge_halftrunc(float %bf80_1_a0)
  %bf80_v0 = insertelement <2 x i16> undef, i16 %bf80_0_r, i32 0
  %v80 = insertelement <2 x i16> %bf80_v0, i16 %bf80_1_r, i32 1
  %bf81_0_a0 = extractelement <2 x i16> %v22, i32 0
  %bf81_0_a1 = extractelement <2 x i16> %v34, i32 0
  %bf81_0_x = call float @bridge_halfext(i16 %bf81_0_a0)
  %bf81_0_y = call float @bridge_halfext(i16 %bf81_0_a1)
  %bf81_0_s = fadd float %bf81_0_x, %bf81_0_y
  %bf81_0_r = call i16 @bridge_halftrunc(float %bf81_0_s)
  %bf81_1_a0 = extractelement <2 x i16> %v22, i32 1
  %bf81_1_a1 = extractelement <2 x i16> %v34, i32 1
  %bf81_1_x = call float @bridge_halfext(i16 %bf81_1_a0)
  %bf81_1_y = call float @bridge_halfext(i16 %bf81_1_a1)
  %bf81_1_s = fadd float %bf81_1_x, %bf81_1_y
  %bf81_1_r = call i16 @bridge_halftrunc(float %bf81_1_s)
  %bf81_v0 = insertelement <2 x i16> undef, i16 %bf81_0_r, i32 0
  %v81 = insertelement <2 x i16> %bf81_v0, i16 %bf81_1_r, i32 1
  %bf82_0_a0 = extractelement <2 x i16> %v81, i32 0
  %bf82_0_r = call float @bridge_halfext(i16 %bf82_0_a0)
  %bf82_1_a0 = extractelement <2 x i16> %v81, i32 1
  %bf82_1_r = call float @bridge_halfext(i16 %bf82_1_a0)
  %bf82_v0 = insertelement <2 x float> undef, float %bf82_0_r, i32 0
  %v82 = insertelement <2 x float> %bf82_v0, float %bf82_1_r, i32 1
  %v83 = fmul <2 x float> %v82, <float 5.000000e-01, float 5.000000e-01>
  %v84 = extractelement <2 x float> %v82, i64 0
  %v85 = fmul float %v84, %v84
  %v86 = extractelement <2 x float> %v82, i64 1
  %v87 = fmul float %v86, %v86
  %v88 = fmul float %v85, %v84
  %v89 = fmul float %v87, %v86
  %v90 = fmul float %v88, 0x3FA6E4E260000000
  %v91 = fmul float %v89, 0x3FA6E4E260000000
  %v92 = fadd float %v90, %v84
  %v93 = fadd float %v91, %v86
  %v94 = fmul float %v92, 0x3FE9884540000000
  %v95 = fmul float %v93, 0x3FE9884540000000
  %v96 = tail call float @f06_tanh(float %v94)
  %v97 = tail call float @f06_tanh(float %v95)
  %v98 = insertelement <2 x float> undef, float %v96, i64 0
  %v99 = insertelement <2 x float> %v98, float %v97, i64 1
  %v100 = fadd <2 x float> %v99, <float 1.000000e+00, float 1.000000e+00>
  %v101 = fmul <2 x float> %v83, %v100
  %bf102_0_a0 = extractelement <2 x float> %v101, i32 0
  %bf102_0_r = call i16 @bridge_halftrunc(float %bf102_0_a0)
  %bf102_1_a0 = extractelement <2 x float> %v101, i32 1
  %bf102_1_r = call i16 @bridge_halftrunc(float %bf102_1_a0)
  %bf102_v0 = insertelement <2 x i16> undef, i16 %bf102_0_r, i32 0
  %v102 = insertelement <2 x i16> %bf102_v0, i16 %bf102_1_r, i32 1
  %bf103_0_a0 = extractelement <2 x i16> %v24, i32 0
  %bf103_0_a1 = extractelement <2 x i16> %v36, i32 0
  %bf103_0_x = call float @bridge_halfext(i16 %bf103_0_a0)
  %bf103_0_y = call float @bridge_halfext(i16 %bf103_0_a1)
  %bf103_0_s = fadd float %bf103_0_x, %bf103_0_y
  %bf103_0_r = call i16 @bridge_halftrunc(float %bf103_0_s)
  %bf103_1_a0 = extractelement <2 x i16> %v24, i32 1
  %bf103_1_a1 = extractelement <2 x i16> %v36, i32 1
  %bf103_1_x = call float @bridge_halfext(i16 %bf103_1_a0)
  %bf103_1_y = call float @bridge_halfext(i16 %bf103_1_a1)
  %bf103_1_s = fadd float %bf103_1_x, %bf103_1_y
  %bf103_1_r = call i16 @bridge_halftrunc(float %bf103_1_s)
  %bf103_v0 = insertelement <2 x i16> undef, i16 %bf103_0_r, i32 0
  %v103 = insertelement <2 x i16> %bf103_v0, i16 %bf103_1_r, i32 1
  %bf104_0_a0 = extractelement <2 x i16> %v103, i32 0
  %bf104_0_r = call float @bridge_halfext(i16 %bf104_0_a0)
  %bf104_1_a0 = extractelement <2 x i16> %v103, i32 1
  %bf104_1_r = call float @bridge_halfext(i16 %bf104_1_a0)
  %bf104_v0 = insertelement <2 x float> undef, float %bf104_0_r, i32 0
  %v104 = insertelement <2 x float> %bf104_v0, float %bf104_1_r, i32 1
  %v105 = fmul <2 x float> %v104, <float 5.000000e-01, float 5.000000e-01>
  %v106 = extractelement <2 x float> %v104, i64 0
  %v107 = fmul float %v106, %v106
  %v108 = extractelement <2 x float> %v104, i64 1
  %v109 = fmul float %v108, %v108
  %v110 = fmul float %v107, %v106
  %v111 = fmul float %v109, %v108
  %v112 = fmul float %v110, 0x3FA6E4E260000000
  %v113 = fmul float %v111, 0x3FA6E4E260000000
  %v114 = fadd float %v112, %v106
  %v115 = fadd float %v113, %v108
  %v116 = fmul float %v114, 0x3FE9884540000000
  %v117 = fmul float %v115, 0x3FE9884540000000
  %v118 = tail call float @f06_tanh(float %v116)
  %v119 = tail call float @f06_tanh(float %v117)
  %v120 = insertelement <2 x float> undef, float %v118, i64 0
  %v121 = insertelement <2 x float> %v120, float %v119, i64 1
  %v122 = fadd <2 x float> %v121, <float 1.000000e+00, float 1.000000e+00>
  %v123 = fmul <2 x float> %v105, %v122
  %bf124_0_a0 = extractelement <2 x float> %v123, i32 0
  %bf124_0_r = call i16 @bridge_halftrunc(float %bf124_0_a0)
  %bf124_1_a0 = extractelement <2 x float> %v123, i32 1
  %bf124_1_r = call i16 @bridge_halftrunc(float %bf124_1_a0)
  %bf124_v0 = insertelement <2 x i16> undef, i16 %bf124_0_r, i32 0
  %v124 = insertelement <2 x i16> %bf124_v0, i16 %bf124_1_r, i32 1
  %bridge_in218 = bitcast i8 addrspace(1)* %v2 to i16 addrspace(1)*
  %bridge_gep218 = getelementptr i16, i16 addrspace(1)* %bridge_in218, i64 %v14
  %v125 = bitcast i16 addrspace(1)* %bridge_gep218 to i8 addrspace(1)*
  %v126 = bitcast <2 x i16> %v58 to i32
  %v127 = bitcast <2 x i16> %v80 to i32
  %v128 = bitcast <2 x i16> %v102 to i32
  %v129 = bitcast <2 x i16> %v124 to i32
  tail call void asm sideeffect "st.global.v4.b32 [ $4 + 0 ], { $0, $1, $2, $3 };", "r,r,r,r,l"(i32 %v126, i32 %v127, i32 %v128, i32 %v129, i8 addrspace(1)* %v125) #2
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
