target triple = "nvptx64-nvidia-cuda"
; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-p3:32:32-p4:32:32-p5:32:32-p6:32:32-p7:32:32-i64:64-i128:128-i256:256-v16:16-v32:32-n16:32:64"

@global_smem = external addrspace(3) global [0 x i8], align 16

declare float @f06_tanh(float) local_unnamed_addr

define ptx_kernel void @f06_gelu_body(i8 addrspace(1)* %v0, i8 addrspace(1)* %v1, i8 addrspace(1)* %v2, i8 addrspace(1)* %v3, i8 addrspace(1)* readnone  %v4, i8 addrspace(1)* readnone  %v5) local_unnamed_addr #0 {
  %v7 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %v8 = lshr i32 %v7, 2
  %v9 = and i32 %v8, 536870904
  %v10 = sub nsw i32 1, %v9
  %v11 = srem i32 %v7, %v10
  %v12 = add nuw nsw i32 %v11, %v9
  %v13 = and i32 %v7, 31
  %v14 = sdiv i32 %v13, %v10
  %v15 = icmp sgt i32 %v14, -1
  tail call void @llvm.assume(i1 %v15)
  %v16 = shl i32 %v12, 4
  %v17 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %v18 = and i32 %v17, 56
  %v19 = lshr exact i32 %v18, 3
  %v20 = and i32 %v17, 60
  %v21 = lshr exact i32 %v20, 2
  %v22 = or  i32 %v16, %v19
  %v23 = or  i32 %v22, 8
  %v24 = or  i32 %v16, %v21
  %v25 = shl nuw nsw i32 %v14, 5
  %v26 = shl nuw nsw i32 %v17, 3
  %v27 = and i32 %v26, 24
  %v28 = or  i32 %v25, %v27
  %v29 = srem i32 %v22, 16
  %v30 = srem i32 %v23, 16
  %v31 = and i32 %v28, 120
  %v32 = and i32 %v17, 7
  %v33 = shl nuw nsw i32 %v32, 3
  %v34 = shl nsw i32 %v29, 6
  %v35 = shl nsw i32 %v30, 6
  %v36 = or  i32 %v34, %v33
  %v37 = or  i32 %v35, %v33
  %v38 = sext i32 %v36 to i64
  %bridge_in43 = bitcast i8 addrspace(1)* %v0 to half addrspace(1)*
  %bridge_gep43 = getelementptr half, half addrspace(1)* %bridge_in43, i64 %v38
  %v39 = bitcast half addrspace(1)* %bridge_gep43 to i8 addrspace(1)*
  %v40 = sext i32 %v37 to i64
  %bridge_in45 = bitcast i8 addrspace(1)* %v0 to half addrspace(1)*
  %bridge_gep45 = getelementptr half, half addrspace(1)* %bridge_in45, i64 %v40
  %v41 = bitcast half addrspace(1)* %bridge_gep45 to i8 addrspace(1)*
  %v42 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ];", "=r,=r,=r,=r,l"(i8 addrspace(1)* %v39) #5
  %v43 = extractvalue { i32, i32, i32, i32 } %v42, 0
  %v44 = extractvalue { i32, i32, i32, i32 } %v42, 1
  %v45 = extractvalue { i32, i32, i32, i32 } %v42, 2
  %v46 = extractvalue { i32, i32, i32, i32 } %v42, 3
  %v47 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ];", "=r,=r,=r,=r,l"(i8 addrspace(1)* %v41) #5
  %v48 = extractvalue { i32, i32, i32, i32 } %v47, 0
  %v49 = extractvalue { i32, i32, i32, i32 } %v47, 1
  %v50 = extractvalue { i32, i32, i32, i32 } %v47, 2
  %v51 = extractvalue { i32, i32, i32, i32 } %v47, 3
  %v52 = shl nuw nsw i32 %v17, 4
  %v53 = and i32 %v52, 1008
  %v54 = shl nuw nsw i32 %v18, 1
  %v55 = xor i32 %v53, %v54
  %v56 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 4096), i32 %v55
  %v57 = insertelement <4 x i32> undef, i32 %v43, i64 0
  %v58 = insertelement <4 x i32> %v57, i32 %v44, i64 1
  %v59 = insertelement <4 x i32> %v58, i32 %v45, i64 2
  %v60 = insertelement <4 x i32> %v59, i32 %v46, i64 3
  %bridge_ptr65 = bitcast i8 addrspace(3)* %v56 to <4 x i32> addrspace(3)*
  store <4 x i32> %v60, <4 x i32> addrspace(3)* %bridge_ptr65, align 16
  %v61 = getelementptr inbounds i8, i8 addrspace(3)* %v56, i32 1024
  %v62 = insertelement <4 x i32> undef, i32 %v48, i64 0
  %v63 = insertelement <4 x i32> %v62, i32 %v49, i64 1
  %v64 = insertelement <4 x i32> %v63, i32 %v50, i64 2
  %v65 = insertelement <4 x i32> %v64, i32 %v51, i64 3
  %bridge_ptr71 = bitcast i8 addrspace(3)* %v61 to <4 x i32> addrspace(3)*
  store <4 x i32> %v65, <4 x i32> addrspace(3)* %bridge_ptr71, align 16
  %v66 = shl nuw nsw i32 %v20, 5
  %v67 = or  i32 %v31, %v66
  %v68 = zext  i32 %v67 to i64
  %bridge_in75 = bitcast i8 addrspace(1)* %v1 to half addrspace(1)*
  %bridge_gep75 = getelementptr half, half addrspace(1)* %bridge_in75, i64 %v68
  %v69 = bitcast half addrspace(1)* %bridge_gep75 to i8 addrspace(1)*
  %v70 = getelementptr i8, i8 addrspace(1)* %v69, i64 4096
  %v71 = getelementptr i8, i8 addrspace(1)* %v69, i64 8192
  %v72 = getelementptr i8, i8 addrspace(1)* %v69, i64 12288
  %v73 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ];", "=r,=r,=r,=r,l"(i8 addrspace(1)* %v69) #5
  %v74 = extractvalue { i32, i32, i32, i32 } %v73, 0
  %v75 = extractvalue { i32, i32, i32, i32 } %v73, 1
  %v76 = extractvalue { i32, i32, i32, i32 } %v73, 2
  %v77 = extractvalue { i32, i32, i32, i32 } %v73, 3
  %v78 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ];", "=r,=r,=r,=r,l"(i8 addrspace(1)* %v70) #5
  %v79 = extractvalue { i32, i32, i32, i32 } %v78, 0
  %v80 = extractvalue { i32, i32, i32, i32 } %v78, 1
  %v81 = extractvalue { i32, i32, i32, i32 } %v78, 2
  %v82 = extractvalue { i32, i32, i32, i32 } %v78, 3
  %v83 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ];", "=r,=r,=r,=r,l"(i8 addrspace(1)* %v71) #5
  %v84 = extractvalue { i32, i32, i32, i32 } %v83, 0
  %v85 = extractvalue { i32, i32, i32, i32 } %v83, 1
  %v86 = extractvalue { i32, i32, i32, i32 } %v83, 2
  %v87 = extractvalue { i32, i32, i32, i32 } %v83, 3
  %v88 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ];", "=r,=r,=r,=r,l"(i8 addrspace(1)* %v72) #5
  %v89 = extractvalue { i32, i32, i32, i32 } %v88, 0
  %v90 = extractvalue { i32, i32, i32, i32 } %v88, 1
  %v91 = extractvalue { i32, i32, i32, i32 } %v88, 2
  %v92 = extractvalue { i32, i32, i32, i32 } %v88, 3
  %v93 = shl nuw nsw i32 %v17, 1
  %v94 = and i32 %v93, 48
  %v95 = xor i32 %v53, %v94
  %v96 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v95
  %v97 = insertelement <4 x i32> undef, i32 %v74, i64 0
  %v98 = insertelement <4 x i32> %v97, i32 %v75, i64 1
  %v99 = insertelement <4 x i32> %v98, i32 %v76, i64 2
  %v100 = insertelement <4 x i32> %v99, i32 %v77, i64 3
  %bridge_ptr107 = bitcast i8 addrspace(3)* %v96 to <4 x i32> addrspace(3)*
  store <4 x i32> %v100, <4 x i32> addrspace(3)* %bridge_ptr107, align 16
  %v101 = getelementptr inbounds i8, i8 addrspace(3)* %v96, i32 1024
  %v102 = insertelement <4 x i32> undef, i32 %v79, i64 0
  %v103 = insertelement <4 x i32> %v102, i32 %v80, i64 1
  %v104 = insertelement <4 x i32> %v103, i32 %v81, i64 2
  %v105 = insertelement <4 x i32> %v104, i32 %v82, i64 3
  %bridge_ptr113 = bitcast i8 addrspace(3)* %v101 to <4 x i32> addrspace(3)*
  store <4 x i32> %v105, <4 x i32> addrspace(3)* %bridge_ptr113, align 16
  %v106 = getelementptr inbounds i8, i8 addrspace(3)* %v96, i32 2048
  %v107 = insertelement <4 x i32> undef, i32 %v84, i64 0
  %v108 = insertelement <4 x i32> %v107, i32 %v85, i64 1
  %v109 = insertelement <4 x i32> %v108, i32 %v86, i64 2
  %v110 = insertelement <4 x i32> %v109, i32 %v87, i64 3
  %bridge_ptr119 = bitcast i8 addrspace(3)* %v106 to <4 x i32> addrspace(3)*
  store <4 x i32> %v110, <4 x i32> addrspace(3)* %bridge_ptr119, align 16
  %v111 = getelementptr inbounds i8, i8 addrspace(3)* %v96, i32 3072
  %v112 = insertelement <4 x i32> undef, i32 %v89, i64 0
  %v113 = insertelement <4 x i32> %v112, i32 %v90, i64 1
  %v114 = insertelement <4 x i32> %v113, i32 %v91, i64 2
  %v115 = insertelement <4 x i32> %v114, i32 %v92, i64 3
  %bridge_ptr125 = bitcast i8 addrspace(3)* %v111 to <4 x i32> addrspace(3)*
  store <4 x i32> %v115, <4 x i32> addrspace(3)* %bridge_ptr125, align 16
  tail call void @llvm.nvvm.barrier.cta.sync.aligned.all(i32 0)
  %v116 = and i32 %v17, 15
  %v117 = shl nuw nsw i32 %v116, 7
  %v118 = shl nuw nsw i32 %v32, 4
  %v119 = and i32 %v17, 16
  %v120 = xor i32 %v118, %v119
  %v121 = or  i32 %v120, %v117
  %v122 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 4096), i32 %v121
  %v123 = tail call { i32, i32, i32, i32 } @llvm.nvvm.ldmatrix.sync.aligned.m8n8.x4.b16.p3(i8 addrspace(3)* %v122)
  %v124 = extractvalue { i32, i32, i32, i32 } %v123, 0
  %v125 = extractvalue { i32, i32, i32, i32 } %v123, 1
  %v126 = extractvalue { i32, i32, i32, i32 } %v123, 2
  %v127 = extractvalue { i32, i32, i32, i32 } %v123, 3
  %v128 = xor i32 %v121, 32
  %v129 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 4096), i32 %v128
  %v130 = tail call { i32, i32, i32, i32 } @llvm.nvvm.ldmatrix.sync.aligned.m8n8.x4.b16.p3(i8 addrspace(3)* %v129)
  %v131 = extractvalue { i32, i32, i32, i32 } %v130, 0
  %v132 = extractvalue { i32, i32, i32, i32 } %v130, 1
  %v133 = extractvalue { i32, i32, i32, i32 } %v130, 2
  %v134 = extractvalue { i32, i32, i32, i32 } %v130, 3
  %v135 = xor i32 %v121, 64
  %v136 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 4096), i32 %v135
  %v137 = tail call { i32, i32, i32, i32 } @llvm.nvvm.ldmatrix.sync.aligned.m8n8.x4.b16.p3(i8 addrspace(3)* %v136)
  %v138 = extractvalue { i32, i32, i32, i32 } %v137, 0
  %v139 = extractvalue { i32, i32, i32, i32 } %v137, 1
  %v140 = extractvalue { i32, i32, i32, i32 } %v137, 2
  %v141 = extractvalue { i32, i32, i32, i32 } %v137, 3
  %v142 = xor i32 %v121, 96
  %v143 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 4096), i32 %v142
  %v144 = tail call { i32, i32, i32, i32 } @llvm.nvvm.ldmatrix.sync.aligned.m8n8.x4.b16.p3(i8 addrspace(3)* %v143)
  %v145 = extractvalue { i32, i32, i32, i32 } %v144, 0
  %v146 = extractvalue { i32, i32, i32, i32 } %v144, 1
  %v147 = extractvalue { i32, i32, i32, i32 } %v144, 2
  %v148 = extractvalue { i32, i32, i32, i32 } %v144, 3
  %v149 = shl nuw nsw i32 %v17, 6
  %v150 = and i32 %v149, 1984
  %v151 = and i32 %v17, 6
  %v152 = shl nuw nsw i32 %v151, 3
  %v153 = and i32 %v17, 32
  %v154 = lshr exact i32 %v153, 1
  %v155 = or  i32 %v150, %v152
  %v156 = xor i32 %v155, %v154
  %v157 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v156
  %v158 = tail call { i32, i32, i32, i32 } @llvm.nvvm.ldmatrix.sync.aligned.m8n8.x4.trans.b16.p3(i8 addrspace(3)* %v157)
  %v159 = extractvalue { i32, i32, i32, i32 } %v158, 0
  %v160 = extractvalue { i32, i32, i32, i32 } %v158, 1
  %v161 = extractvalue { i32, i32, i32, i32 } %v158, 2
  %v162 = extractvalue { i32, i32, i32, i32 } %v158, 3
  %v163 = getelementptr inbounds i8, i8 addrspace(3)* %v157, i32 2048
  %v164 = tail call { i32, i32, i32, i32 } @llvm.nvvm.ldmatrix.sync.aligned.m8n8.x4.trans.b16.p3(i8 addrspace(3)* nonnull %v163)
  %v165 = extractvalue { i32, i32, i32, i32 } %v164, 0
  %v166 = extractvalue { i32, i32, i32, i32 } %v164, 1
  %v167 = extractvalue { i32, i32, i32, i32 } %v164, 2
  %v168 = extractvalue { i32, i32, i32, i32 } %v164, 3
  %v169 = xor i32 %v156, 32
  %v170 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v169
  %v171 = tail call { i32, i32, i32, i32 } @llvm.nvvm.ldmatrix.sync.aligned.m8n8.x4.trans.b16.p3(i8 addrspace(3)* %v170)
  %v172 = extractvalue { i32, i32, i32, i32 } %v171, 0
  %v173 = extractvalue { i32, i32, i32, i32 } %v171, 1
  %v174 = extractvalue { i32, i32, i32, i32 } %v171, 2
  %v175 = extractvalue { i32, i32, i32, i32 } %v171, 3
  %v176 = getelementptr inbounds i8, i8 addrspace(3)* %v170, i32 2048
  %v177 = tail call { i32, i32, i32, i32 } @llvm.nvvm.ldmatrix.sync.aligned.m8n8.x4.trans.b16.p3(i8 addrspace(3)* nonnull %v176)
  %v178 = extractvalue { i32, i32, i32, i32 } %v177, 0
  %v179 = extractvalue { i32, i32, i32, i32 } %v177, 1
  %v180 = extractvalue { i32, i32, i32, i32 } %v177, 2
  %v181 = extractvalue { i32, i32, i32, i32 } %v177, 3
  %v182 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 %v124, i32 %v125, i32 %v126, i32 %v127, i32 %v159, i32 %v160) #5
  %v183 = extractvalue { float, float, float, float } %v182, 0
  %v184 = extractvalue { float, float, float, float } %v182, 1
  %v185 = extractvalue { float, float, float, float } %v182, 2
  %v186 = extractvalue { float, float, float, float } %v182, 3
  %v187 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 %v124, i32 %v125, i32 %v126, i32 %v127, i32 %v172, i32 %v173) #5
  %v188 = extractvalue { float, float, float, float } %v187, 0
  %v189 = extractvalue { float, float, float, float } %v187, 1
  %v190 = extractvalue { float, float, float, float } %v187, 2
  %v191 = extractvalue { float, float, float, float } %v187, 3
  %v192 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v183, float %v184, float %v185, float %v186, i32 %v131, i32 %v132, i32 %v133, i32 %v134, i32 %v161, i32 %v162) #5
  %v193 = extractvalue { float, float, float, float } %v192, 0
  %v194 = extractvalue { float, float, float, float } %v192, 1
  %v195 = extractvalue { float, float, float, float } %v192, 2
  %v196 = extractvalue { float, float, float, float } %v192, 3
  %v197 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v188, float %v189, float %v190, float %v191, i32 %v131, i32 %v132, i32 %v133, i32 %v134, i32 %v174, i32 %v175) #5
  %v198 = extractvalue { float, float, float, float } %v197, 0
  %v199 = extractvalue { float, float, float, float } %v197, 1
  %v200 = extractvalue { float, float, float, float } %v197, 2
  %v201 = extractvalue { float, float, float, float } %v197, 3
  %v202 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v193, float %v194, float %v195, float %v196, i32 %v138, i32 %v139, i32 %v140, i32 %v141, i32 %v165, i32 %v166) #5
  %v203 = extractvalue { float, float, float, float } %v202, 0
  %v204 = extractvalue { float, float, float, float } %v202, 1
  %v205 = extractvalue { float, float, float, float } %v202, 2
  %v206 = extractvalue { float, float, float, float } %v202, 3
  %v207 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v198, float %v199, float %v200, float %v201, i32 %v138, i32 %v139, i32 %v140, i32 %v141, i32 %v178, i32 %v179) #5
  %v208 = extractvalue { float, float, float, float } %v207, 0
  %v209 = extractvalue { float, float, float, float } %v207, 1
  %v210 = extractvalue { float, float, float, float } %v207, 2
  %v211 = extractvalue { float, float, float, float } %v207, 3
  %v212 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v203, float %v204, float %v205, float %v206, i32 %v145, i32 %v146, i32 %v147, i32 %v148, i32 %v167, i32 %v168) #5
  %v213 = extractvalue { float, float, float, float } %v212, 0
  %v214 = extractvalue { float, float, float, float } %v212, 1
  %v215 = extractvalue { float, float, float, float } %v212, 2
  %v216 = extractvalue { float, float, float, float } %v212, 3
  %v217 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v208, float %v209, float %v210, float %v211, i32 %v145, i32 %v146, i32 %v147, i32 %v148, i32 %v180, i32 %v181) #5
  %v218 = extractvalue { float, float, float, float } %v217, 0
  %v219 = extractvalue { float, float, float, float } %v217, 1
  %v220 = extractvalue { float, float, float, float } %v217, 2
  %v221 = extractvalue { float, float, float, float } %v217, 3
  %v222 = icmp slt i32 %v24, 16
  %v223 = icmp  ult i32 %v14, 4
  %v224 = and i1 %v223, %v222
  %v225 = zext  i32 %v28 to i64
  %bridge_in237 = bitcast i8 addrspace(1)* %v2 to half addrspace(1)*
  %bridge_gep237 = getelementptr half, half addrspace(1)* %bridge_in237, i64 %v225
  %v226 = bitcast half addrspace(1)* %bridge_gep237 to i8 addrspace(1)*
  %v227 = tail call i64 asm sideeffect "mov.u64 $0, 0x0;\0A\09createpolicy.fractional.L2::evict_last.b64 $0, 1.0;", "=l"() #5
  %v228 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09@$6 ld.global.L1::evict_last.L2::cache_hint.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ], $5;", "=r,=r,=r,=r,l,l,b"(i8 addrspace(1)* %v226, i64 %v227, i1 %v224) #5
  %v229 = extractvalue { i32, i32, i32, i32 } %v228, 0
  %v230 = extractvalue { i32, i32, i32, i32 } %v228, 1
  %v231 = extractvalue { i32, i32, i32, i32 } %v228, 2
  %v232 = extractvalue { i32, i32, i32, i32 } %v228, 3
  tail call void @llvm.nvvm.barrier.cta.sync.aligned.all(i32 0)
  %v233 = shl nuw nsw i32 %v17, 5
  %v234 = and i32 %v233, 864
  %v235 = shl nuw nsw i32 %v20, 2
  %v236 = xor i32 %v234, %v235
  %v237 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v236
  %v238 = insertelement <4 x i32> undef, i32 %v229, i64 0
  %v239 = insertelement <4 x i32> %v238, i32 %v230, i64 1
  %v240 = insertelement <4 x i32> %v239, i32 %v231, i64 2
  %v241 = insertelement <4 x i32> %v240, i32 %v232, i64 3
  %bridge_ptr254 = bitcast i8 addrspace(3)* %v237 to <4 x i32> addrspace(3)*
  store <4 x i32> %v241, <4 x i32> addrspace(3)* %bridge_ptr254, align 16
  tail call void @llvm.nvvm.barrier.cta.sync.aligned.all(i32 0)
  %v242 = shl nuw nsw i32 %v151, 7
  %v243 = shl nuw nsw i32 %v116, 4
  %v244 = shl nuw nsw i32 %v119, 2
  %v245 = or  i32 %v244, %v153
  %v246 = xor i32 %v245, %v243
  %v247 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v242
  %v248 = getelementptr inbounds i8, i8 addrspace(3)* %v247, i32 %v246
  %v249 = tail call { i32, i32, i32, i32 } @llvm.nvvm.ldmatrix.sync.aligned.m8n8.x4.b16.p3(i8 addrspace(3)* %v248)
  %v250 = extractvalue { i32, i32, i32, i32 } %v249, 0
  %v251 = bitcast i32 %v250 to <2 x half>
  %v252 = extractvalue { i32, i32, i32, i32 } %v249, 1
  %v253 = bitcast i32 %v252 to <2 x half>
  %v254 = extractvalue { i32, i32, i32, i32 } %v249, 2
  %v255 = bitcast i32 %v254 to <2 x half>
  %v256 = extractvalue { i32, i32, i32, i32 } %v249, 3
  %v257 = bitcast i32 %v256 to <2 x half>
  %v258 = insertelement <2 x float> undef, float %v213, i64 0
  %v259 = insertelement <2 x float> %v258, float %v214, i64 1
  %v260 = fptrunc <2 x float> %v259 to <2 x half>
  %v261 = fadd <2 x half> %v251, %v260
  %v262 = insertelement <2 x float> undef, float %v215, i64 0
  %v263 = insertelement <2 x float> %v262, float %v216, i64 1
  %v264 = fptrunc <2 x float> %v263 to <2 x half>
  %v265 = fadd <2 x half> %v253, %v264
  %v266 = insertelement <2 x float> undef, float %v218, i64 0
  %v267 = insertelement <2 x float> %v266, float %v219, i64 1
  %v268 = fptrunc <2 x float> %v267 to <2 x half>
  %v269 = fadd <2 x half> %v255, %v268
  %v270 = insertelement <2 x float> undef, float %v220, i64 0
  %v271 = insertelement <2 x float> %v270, float %v221, i64 1
  %v272 = fptrunc <2 x float> %v271 to <2 x half>
  %v273 = fadd <2 x half> %v257, %v272
  tail call void @llvm.nvvm.barrier.cta.sync.aligned.all(i32 0)
  %v274 = shl nuw nsw i32 %v20, 1
  %v275 = and i32 %v17, 1
  %v276 = icmp eq i32 %v275, 0
  %v277 = select i1 %v276, i32 0, i32 320
  %v278 = and i32 %v17, 2
  %v279 = icmp eq i32 %v278, 0
  %v280 = select i1 %v279, i32 0, i32 516
  %v281 = xor i32 %v277, %v274
  %v282 = or  i32 %v281, %v280
  %v283 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v282
  %bridge_ptr299 = bitcast i8 addrspace(3)* %v283 to <2 x half> addrspace(3)*
  store <2 x half> %v261, <2 x half> addrspace(3)* %bridge_ptr299, align 4
  %v284 = getelementptr inbounds i8, i8 addrspace(3)* %v283, i32 128
  %bridge_ptr301 = bitcast i8 addrspace(3)* %v284 to <2 x half> addrspace(3)*
  store <2 x half> %v265, <2 x half> addrspace(3)* %bridge_ptr301, align 4
  %v285 = xor i32 %v282, 4
  %v286 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v285
  %bridge_ptr304 = bitcast i8 addrspace(3)* %v286 to <2 x half> addrspace(3)*
  store <2 x half> %v269, <2 x half> addrspace(3)* %bridge_ptr304, align 4
  %v287 = getelementptr inbounds i8, i8 addrspace(3)* %v286, i32 128
  %bridge_ptr306 = bitcast i8 addrspace(3)* %v287 to <2 x half> addrspace(3)*
  store <2 x half> %v273, <2 x half> addrspace(3)* %bridge_ptr306, align 4
  tail call void @llvm.nvvm.barrier.cta.sync.aligned.all(i32 0)
  %v288 = and i32 %v93, 60
  %v289 = shl nuw nsw i32 %v275, 6
  %v290 = shl nuw nsw i32 %v153, 2
  %v291 = or  i32 %v289, %v290
  %v292 = or  i32 %v291, %v288
  %v293 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v292
  %v294 = xor i32 %v292, 320
  %v295 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v294
  %v296 = xor i32 %v292, 516
  %v297 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v296
  %v298 = xor i32 %v292, 836
  %v299 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v298
  %bridge_ptr320 = bitcast i8 addrspace(3)* %v299 to <2 x half> addrspace(3)*
  %v300 = load <2 x half>, <2 x half> addrspace(3)* %bridge_ptr320, align 4
  %v301 = fpext <2 x half> %v300 to <2 x float>
  %v302 = fmul <2 x float> %v301, <float 5.000000e-01, float 5.000000e-01>
  %v303 = extractelement <2 x float> %v301, i64 0
  %v304 = fmul float %v303, %v303
  %v305 = extractelement <2 x float> %v301, i64 1
  %v306 = fmul float %v305, %v305
  %v307 = fmul float %v304, %v303
  %v308 = fmul float %v306, %v305
  %v309 = fmul float %v307, 0x3FA6E4E260000000
  %v310 = fmul float %v308, 0x3FA6E4E260000000
  %v311 = fadd float %v309, %v303
  %v312 = fadd float %v310, %v305
  %v313 = fmul float %v311, 0x3FE9884540000000
  %v314 = fmul float %v312, 0x3FE9884540000000
  %bridge_ptr335 = bitcast i8 addrspace(3)* %v297 to <2 x half> addrspace(3)*
  %v315 = load <2 x half>, <2 x half> addrspace(3)* %bridge_ptr335, align 4
  %v316 = fpext <2 x half> %v315 to <2 x float>
  %v317 = fmul <2 x float> %v316, <float 5.000000e-01, float 5.000000e-01>
  %v318 = extractelement <2 x float> %v316, i64 0
  %v319 = fmul float %v318, %v318
  %v320 = extractelement <2 x float> %v316, i64 1
  %v321 = fmul float %v320, %v320
  %v322 = fmul float %v319, %v318
  %v323 = fmul float %v321, %v320
  %v324 = fmul float %v322, 0x3FA6E4E260000000
  %v325 = fmul float %v323, 0x3FA6E4E260000000
  %v326 = fadd float %v324, %v318
  %v327 = fadd float %v325, %v320
  %v328 = fmul float %v326, 0x3FE9884540000000
  %v329 = fmul float %v327, 0x3FE9884540000000
  %bridge_ptr350 = bitcast i8 addrspace(3)* %v295 to <2 x half> addrspace(3)*
  %v330 = load <2 x half>, <2 x half> addrspace(3)* %bridge_ptr350, align 4
  %v331 = fpext <2 x half> %v330 to <2 x float>
  %v332 = fmul <2 x float> %v331, <float 5.000000e-01, float 5.000000e-01>
  %v333 = extractelement <2 x float> %v331, i64 0
  %v334 = fmul float %v333, %v333
  %v335 = extractelement <2 x float> %v331, i64 1
  %v336 = fmul float %v335, %v335
  %v337 = fmul float %v334, %v333
  %v338 = fmul float %v336, %v335
  %v339 = fmul float %v337, 0x3FA6E4E260000000
  %v340 = fmul float %v338, 0x3FA6E4E260000000
  %v341 = fadd float %v339, %v333
  %v342 = fadd float %v340, %v335
  %v343 = fmul float %v341, 0x3FE9884540000000
  %v344 = fmul float %v342, 0x3FE9884540000000
  %bridge_ptr365 = bitcast i8 addrspace(3)* %v293 to <2 x half> addrspace(3)*
  %v345 = load <2 x half>, <2 x half> addrspace(3)* %bridge_ptr365, align 4
  %v346 = fpext <2 x half> %v345 to <2 x float>
  %v347 = fmul <2 x float> %v346, <float 5.000000e-01, float 5.000000e-01>
  %v348 = extractelement <2 x float> %v346, i64 0
  %v349 = fmul float %v348, %v348
  %v350 = extractelement <2 x float> %v346, i64 1
  %v351 = fmul float %v350, %v350
  %v352 = fmul float %v349, %v348
  %v353 = fmul float %v351, %v350
  %v354 = fmul float %v352, 0x3FA6E4E260000000
  %v355 = fmul float %v353, 0x3FA6E4E260000000
  %v356 = fadd float %v354, %v348
  %v357 = fadd float %v355, %v350
  %v358 = fmul float %v356, 0x3FE9884540000000
  %v359 = fmul float %v357, 0x3FE9884540000000
  %v360 = tail call float @f06_tanh(float %v358)
  %v361 = tail call float @f06_tanh(float %v359)
  %v362 = tail call float @f06_tanh(float %v343)
  %v363 = tail call float @f06_tanh(float %v344)
  %v364 = tail call float @f06_tanh(float %v328)
  %v365 = tail call float @f06_tanh(float %v329)
  %v366 = tail call float @f06_tanh(float %v313)
  %v367 = tail call float @f06_tanh(float %v314)
  %v368 = insertelement <2 x float> undef, float %v360, i64 0
  %v369 = insertelement <2 x float> %v368, float %v361, i64 1
  %v370 = fadd <2 x float> %v369, <float 1.000000e+00, float 1.000000e+00>
  %v371 = insertelement <2 x float> undef, float %v362, i64 0
  %v372 = insertelement <2 x float> %v371, float %v363, i64 1
  %v373 = fadd <2 x float> %v372, <float 1.000000e+00, float 1.000000e+00>
  %v374 = insertelement <2 x float> undef, float %v364, i64 0
  %v375 = insertelement <2 x float> %v374, float %v365, i64 1
  %v376 = fadd <2 x float> %v375, <float 1.000000e+00, float 1.000000e+00>
  %v377 = insertelement <2 x float> undef, float %v366, i64 0
  %v378 = insertelement <2 x float> %v377, float %v367, i64 1
  %v379 = fadd <2 x float> %v378, <float 1.000000e+00, float 1.000000e+00>
  %v380 = fmul <2 x float> %v347, %v370
  %v381 = fmul <2 x float> %v332, %v373
  %v382 = fmul <2 x float> %v317, %v376
  %v383 = fmul <2 x float> %v302, %v379
  %v384 = fptrunc <2 x float> %v380 to <2 x half>
  %v385 = fptrunc <2 x float> %v381 to <2 x half>
  %v386 = fptrunc <2 x float> %v382 to <2 x half>
  %v387 = fptrunc <2 x float> %v383 to <2 x half>
  %v388 = shl i32 %v24, 7
  %v389 = add i32 %v388, %v28
  %v390 = sext i32 %v389 to i64
  %bridge_in411 = bitcast i8 addrspace(1)* %v3 to half addrspace(1)*
  %bridge_gep411 = getelementptr half, half addrspace(1)* %bridge_in411, i64 %v390
  %v391 = bitcast half addrspace(1)* %bridge_gep411 to i8 addrspace(1)*
  %v392 = bitcast <2 x half> %v384 to i32
  %v393 = bitcast <2 x half> %v385 to i32
  %v394 = bitcast <2 x half> %v386 to i32
  %v395 = bitcast <2 x half> %v387 to i32
  tail call void asm sideeffect "@$5 st.global.v4.b32 [ $4 + 0 ], { $0, $1, $2, $3 };", "r,r,r,r,l,b"(i32 %v392, i32 %v393, i32 %v394, i32 %v395, i8 addrspace(1)* %v391, i1 %v224) #5
  ret void
}

; Function Attrs:     nounwind speculatable  
declare   i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #1

; Function Attrs:     nounwind  
declare void @llvm.assume(i1 ) #2

; Function Attrs:     nounwind speculatable  
declare   i32 @llvm.nvvm.read.ptx.sreg.tid.x() #1

; Function Attrs: convergent  nounwind
declare void @llvm.nvvm.barrier.cta.sync.aligned.all(i32) #3

; Function Attrs:   nounwind 
declare { i32, i32, i32, i32 } @llvm.nvvm.ldmatrix.sync.aligned.m8n8.x4.b16.p3(i8 addrspace(3)* readonly ) #4

; Function Attrs:   nounwind 
declare { i32, i32, i32, i32 } @llvm.nvvm.ldmatrix.sync.aligned.m8n8.x4.trans.b16.p3(i8 addrspace(3)* readonly ) #4

attributes #0 = { "nvvm.reqntid"="64" }
attributes #1 = {     nounwind speculatable   }
attributes #2 = {     nounwind   }
attributes #3 = { convergent  nounwind }
attributes #4 = {   nounwind  }
attributes #5 = { nounwind }
!nvvmir.version = !{!0}
!0 = !{i32 2, i32 0, i32 3, i32 1}
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body to i8*)], section "llvm.metadata"
!nvvm.annotations = !{!1, !2}
!1 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body, !"kernel", i32 1}
!2 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body, !"reqntidx", i32 64}
