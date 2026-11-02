target triple = "nvptx64-nvidia-cuda"
; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-p3:32:32-p4:32:32-p5:32:32-p6:32:32-p7:32:32-i64:64-i128:128-i256:256-v16:16-v32:32-n16:32:64"

@global_smem = external addrspace(3) global [0 x i8], align 16

declare float @f06_tanh(float) local_unnamed_addr

define ptx_kernel void @f06_gelu_body(i8 addrspace(1)* %v0, i8 addrspace(1)* %v1, i8 addrspace(1)* %v2, i8 addrspace(1)* %v3, i8 addrspace(1)* readnone  %v4, i8 addrspace(1)* readnone  %v5) local_unnamed_addr #0 {
  %v7 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %v8 = lshr i32 %v7, 5
  %v9 = and i32 %v8, 67108856
  %v10 = sub nsw i32 2, %v9
  %v11 = srem i32 %v7, %v10
  %v12 = add nuw nsw i32 %v11, %v9
  %v13 = and i32 %v7, 255
  %v14 = sdiv i32 %v13, %v10
  %v15 = icmp sgt i32 %v14, -1
  tail call void @llvm.assume(i1 %v15)
  %v16 = shl nuw i32 %v12, 5
  %v17 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %v18 = lshr i32 %v17, 3
  %v19 = and i32 %v18, 15
  %v20 = and i32 %v17, 124
  %v21 = lshr exact i32 %v20, 2
  %v22 = and i32 %v17, 3
  %v23 = shl nuw nsw i32 %v22, 3
  %v24 = or  i32 %v16, %v19
  %v25 = or  i32 %v24, 16
  %v26 = or  i32 %v16, %v21
  %v27 = shl nuw nsw i32 %v14, 5
  %v28 = or  i32 %v27, %v23
  %v29 = srem i32 %v24, 64
  %v30 = srem i32 %v25, 64
  %v31 = and i32 %v28, 1016
  %v32 = and i32 %v17, 7
  %v33 = shl nuw nsw i32 %v32, 3
  %v34 = shl nsw i32 %v29, 6
  %v35 = shl nsw i32 %v30, 6
  %v36 = or  i32 %v34, %v33
  %v37 = or  i32 %v35, %v33
  %v38 = sext i32 %v36 to i64
  %bridge_in43 = bitcast i8 addrspace(1)* %v0 to i16 addrspace(1)*
  %bridge_gep43 = getelementptr i16, i16 addrspace(1)* %bridge_in43, i64 %v38
  %v39 = bitcast i16 addrspace(1)* %bridge_gep43 to i8 addrspace(1)*
  %v40 = sext i32 %v37 to i64
  %bridge_in45 = bitcast i8 addrspace(1)* %v0 to i16 addrspace(1)*
  %bridge_gep45 = getelementptr i16, i16 addrspace(1)* %bridge_in45, i64 %v40
  %v41 = bitcast i16 addrspace(1)* %bridge_gep45 to i8 addrspace(1)*
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
  %v53 = and i32 %v52, 2032
  %v54 = shl nuw nsw i32 %v17, 1
  %v55 = and i32 %v54, 112
  %v56 = xor i32 %v53, %v55
  %v57 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v56
  %v58 = insertelement <4 x i32> undef, i32 %v43, i64 0
  %v59 = insertelement <4 x i32> %v58, i32 %v44, i64 1
  %v60 = insertelement <4 x i32> %v59, i32 %v45, i64 2
  %v61 = insertelement <4 x i32> %v60, i32 %v46, i64 3
  %bridge_ptr66 = bitcast i8 addrspace(3)* %v57 to <4 x i32> addrspace(3)*
  store <4 x i32> %v61, <4 x i32> addrspace(3)* %bridge_ptr66, align 16
  %v62 = getelementptr inbounds i8, i8 addrspace(3)* %v57, i32 2048
  %v63 = insertelement <4 x i32> undef, i32 %v48, i64 0
  %v64 = insertelement <4 x i32> %v63, i32 %v49, i64 1
  %v65 = insertelement <4 x i32> %v64, i32 %v50, i64 2
  %v66 = insertelement <4 x i32> %v65, i32 %v51, i64 3
  %bridge_ptr72 = bitcast i8 addrspace(3)* %v62 to <4 x i32> addrspace(3)*
  store <4 x i32> %v66, <4 x i32> addrspace(3)* %bridge_ptr72, align 16
  %v67 = shl nuw nsw i32 %v20, 8
  %v68 = or  i32 %v31, %v67
  %v69 = zext  i32 %v68 to i64
  %bridge_in76 = bitcast i8 addrspace(1)* %v1 to i16 addrspace(1)*
  %bridge_gep76 = getelementptr i16, i16 addrspace(1)* %bridge_in76, i64 %v69
  %v70 = bitcast i16 addrspace(1)* %bridge_gep76 to i8 addrspace(1)*
  %v71 = getelementptr i8, i8 addrspace(1)* %v70, i64 65536
  %v72 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ];", "=r,=r,=r,=r,l"(i8 addrspace(1)* %v70) #5
  %v73 = extractvalue { i32, i32, i32, i32 } %v72, 0
  %v74 = extractvalue { i32, i32, i32, i32 } %v72, 1
  %v75 = extractvalue { i32, i32, i32, i32 } %v72, 2
  %v76 = extractvalue { i32, i32, i32, i32 } %v72, 3
  %v77 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ];", "=r,=r,=r,=r,l"(i8 addrspace(1)* %v71) #5
  %v78 = extractvalue { i32, i32, i32, i32 } %v77, 0
  %v79 = extractvalue { i32, i32, i32, i32 } %v77, 1
  %v80 = extractvalue { i32, i32, i32, i32 } %v77, 2
  %v81 = extractvalue { i32, i32, i32, i32 } %v77, 3
  %v82 = and i32 %v17, 24
  %v83 = shl nuw nsw i32 %v82, 1
  %v84 = xor i32 %v53, %v83
  %v85 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 4096), i32 %v84
  %v86 = insertelement <4 x i32> undef, i32 %v73, i64 0
  %v87 = insertelement <4 x i32> %v86, i32 %v74, i64 1
  %v88 = insertelement <4 x i32> %v87, i32 %v75, i64 2
  %v89 = insertelement <4 x i32> %v88, i32 %v76, i64 3
  %bridge_ptr96 = bitcast i8 addrspace(3)* %v85 to <4 x i32> addrspace(3)*
  store <4 x i32> %v89, <4 x i32> addrspace(3)* %bridge_ptr96, align 16
  %v90 = getelementptr inbounds i8, i8 addrspace(3)* %v85, i32 2048
  %v91 = insertelement <4 x i32> undef, i32 %v78, i64 0
  %v92 = insertelement <4 x i32> %v91, i32 %v79, i64 1
  %v93 = insertelement <4 x i32> %v92, i32 %v80, i64 2
  %v94 = insertelement <4 x i32> %v93, i32 %v81, i64 3
  %bridge_ptr102 = bitcast i8 addrspace(3)* %v90 to <4 x i32> addrspace(3)*
  store <4 x i32> %v94, <4 x i32> addrspace(3)* %bridge_ptr102, align 16
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v95 = and i32 %v17, 15
  %v96 = shl nuw nsw i32 %v95, 7
  %v97 = shl nuw nsw i32 %v32, 4
  %v98 = and i32 %v17, 16
  %v99 = and i32 %v17, 64
  %v100 = shl nuw nsw i32 %v99, 5
  %v101 = or  i32 %v96, %v100
  %v102 = xor i32 %v97, %v98
  %v103 = or  i32 %v101, %v102
  %v104 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v103
  %v105 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v104)
  %v106 = extractvalue { i32, i32, i32, i32 } %v105, 0
  %v107 = extractvalue { i32, i32, i32, i32 } %v105, 1
  %v108 = extractvalue { i32, i32, i32, i32 } %v105, 2
  %v109 = extractvalue { i32, i32, i32, i32 } %v105, 3
  %v110 = xor i32 %v103, 32
  %v111 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v110
  %v112 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v111)
  %v113 = extractvalue { i32, i32, i32, i32 } %v112, 0
  %v114 = extractvalue { i32, i32, i32, i32 } %v112, 1
  %v115 = extractvalue { i32, i32, i32, i32 } %v112, 2
  %v116 = extractvalue { i32, i32, i32, i32 } %v112, 3
  %v117 = xor i32 %v103, 64
  %v118 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v117
  %v119 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v118)
  %v120 = extractvalue { i32, i32, i32, i32 } %v119, 0
  %v121 = extractvalue { i32, i32, i32, i32 } %v119, 1
  %v122 = extractvalue { i32, i32, i32, i32 } %v119, 2
  %v123 = extractvalue { i32, i32, i32, i32 } %v119, 3
  %v124 = xor i32 %v103, 96
  %v125 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v124
  %v126 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v125)
  %v127 = extractvalue { i32, i32, i32, i32 } %v126, 0
  %v128 = extractvalue { i32, i32, i32, i32 } %v126, 1
  %v129 = extractvalue { i32, i32, i32, i32 } %v126, 2
  %v130 = extractvalue { i32, i32, i32, i32 } %v126, 3
  %v131 = shl nuw nsw i32 %v17, 6
  %v132 = and i32 %v131, 1984
  %v133 = and i32 %v17, 6
  %v134 = shl nuw nsw i32 %v133, 3
  %v135 = and i32 %v17, 32
  %v136 = lshr exact i32 %v135, 1
  %v137 = or  i32 %v132, %v134
  %v138 = xor i32 %v137, %v136
  %v139 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 4096), i32 %v138
  %v140 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.trans.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v139)
  %v141 = extractvalue { i32, i32, i32, i32 } %v140, 0
  %v142 = extractvalue { i32, i32, i32, i32 } %v140, 1
  %v143 = extractvalue { i32, i32, i32, i32 } %v140, 2
  %v144 = extractvalue { i32, i32, i32, i32 } %v140, 3
  %v145 = getelementptr inbounds i8, i8 addrspace(3)* %v139, i32 2048
  %v146 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.trans.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v145)
  %v147 = extractvalue { i32, i32, i32, i32 } %v146, 0
  %v148 = extractvalue { i32, i32, i32, i32 } %v146, 1
  %v149 = extractvalue { i32, i32, i32, i32 } %v146, 2
  %v150 = extractvalue { i32, i32, i32, i32 } %v146, 3
  %v151 = xor i32 %v138, 32
  %v152 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 4096), i32 %v151
  %v153 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.trans.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v152)
  %v154 = extractvalue { i32, i32, i32, i32 } %v153, 0
  %v155 = extractvalue { i32, i32, i32, i32 } %v153, 1
  %v156 = extractvalue { i32, i32, i32, i32 } %v153, 2
  %v157 = extractvalue { i32, i32, i32, i32 } %v153, 3
  %v158 = getelementptr inbounds i8, i8 addrspace(3)* %v152, i32 2048
  %v159 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.trans.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v158)
  %v160 = extractvalue { i32, i32, i32, i32 } %v159, 0
  %v161 = extractvalue { i32, i32, i32, i32 } %v159, 1
  %v162 = extractvalue { i32, i32, i32, i32 } %v159, 2
  %v163 = extractvalue { i32, i32, i32, i32 } %v159, 3
  %v164 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 %v106, i32 %v107, i32 %v108, i32 %v109, i32 %v141, i32 %v142) #5
  %v165 = extractvalue { float, float, float, float } %v164, 0
  %v166 = extractvalue { float, float, float, float } %v164, 1
  %v167 = extractvalue { float, float, float, float } %v164, 2
  %v168 = extractvalue { float, float, float, float } %v164, 3
  %v169 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 %v106, i32 %v107, i32 %v108, i32 %v109, i32 %v154, i32 %v155) #5
  %v170 = extractvalue { float, float, float, float } %v169, 0
  %v171 = extractvalue { float, float, float, float } %v169, 1
  %v172 = extractvalue { float, float, float, float } %v169, 2
  %v173 = extractvalue { float, float, float, float } %v169, 3
  %v174 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v165, float %v166, float %v167, float %v168, i32 %v113, i32 %v114, i32 %v115, i32 %v116, i32 %v143, i32 %v144) #5
  %v175 = extractvalue { float, float, float, float } %v174, 0
  %v176 = extractvalue { float, float, float, float } %v174, 1
  %v177 = extractvalue { float, float, float, float } %v174, 2
  %v178 = extractvalue { float, float, float, float } %v174, 3
  %v179 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v170, float %v171, float %v172, float %v173, i32 %v113, i32 %v114, i32 %v115, i32 %v116, i32 %v156, i32 %v157) #5
  %v180 = extractvalue { float, float, float, float } %v179, 0
  %v181 = extractvalue { float, float, float, float } %v179, 1
  %v182 = extractvalue { float, float, float, float } %v179, 2
  %v183 = extractvalue { float, float, float, float } %v179, 3
  %v184 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v175, float %v176, float %v177, float %v178, i32 %v120, i32 %v121, i32 %v122, i32 %v123, i32 %v147, i32 %v148) #5
  %v185 = extractvalue { float, float, float, float } %v184, 0
  %v186 = extractvalue { float, float, float, float } %v184, 1
  %v187 = extractvalue { float, float, float, float } %v184, 2
  %v188 = extractvalue { float, float, float, float } %v184, 3
  %v189 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v180, float %v181, float %v182, float %v183, i32 %v120, i32 %v121, i32 %v122, i32 %v123, i32 %v160, i32 %v161) #5
  %v190 = extractvalue { float, float, float, float } %v189, 0
  %v191 = extractvalue { float, float, float, float } %v189, 1
  %v192 = extractvalue { float, float, float, float } %v189, 2
  %v193 = extractvalue { float, float, float, float } %v189, 3
  %v194 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v185, float %v186, float %v187, float %v188, i32 %v127, i32 %v128, i32 %v129, i32 %v130, i32 %v149, i32 %v150) #5
  %v195 = extractvalue { float, float, float, float } %v194, 0
  %v196 = extractvalue { float, float, float, float } %v194, 1
  %v197 = extractvalue { float, float, float, float } %v194, 2
  %v198 = extractvalue { float, float, float, float } %v194, 3
  %v199 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v190, float %v191, float %v192, float %v193, i32 %v127, i32 %v128, i32 %v129, i32 %v130, i32 %v162, i32 %v163) #5
  %v200 = extractvalue { float, float, float, float } %v199, 0
  %v201 = extractvalue { float, float, float, float } %v199, 1
  %v202 = extractvalue { float, float, float, float } %v199, 2
  %v203 = extractvalue { float, float, float, float } %v199, 3
  %v204 = icmp slt i32 %v26, 64
  %v205 = icmp  ult i32 %v14, 32
  %v206 = and i1 %v205, %v204
  %v207 = zext  i32 %v28 to i64
  %bridge_in217 = bitcast i8 addrspace(1)* %v2 to i16 addrspace(1)*
  %bridge_gep217 = getelementptr i16, i16 addrspace(1)* %bridge_in217, i64 %v207
  %v208 = bitcast i16 addrspace(1)* %bridge_gep217 to i8 addrspace(1)*
  %v209 = tail call i64 asm sideeffect "mov.u64 $0, 0x0;\0A\09createpolicy.fractional.L2::evict_last.b64 $0, 1.0;", "=l"() #5
  %v210 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09@$6 ld.global.L1::evict_last.L2::cache_hint.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ], $5;", "=r,=r,=r,=r,l,l,b"(i8 addrspace(1)* %v208, i64 %v209, i1 %v206) #5
  %v211 = extractvalue { i32, i32, i32, i32 } %v210, 0
  %v212 = extractvalue { i32, i32, i32, i32 } %v210, 1
  %v213 = extractvalue { i32, i32, i32, i32 } %v210, 2
  %v214 = extractvalue { i32, i32, i32, i32 } %v210, 3
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v215 = shl nuw nsw i32 %v82, 6
  %v216 = shl nuw nsw i32 %v22, 5
  %v217 = shl nuw nsw i32 %v20, 2
  %v218 = or  i32 %v215, %v216
  %v219 = xor i32 %v218, %v217
  %v220 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v219
  %v221 = insertelement <4 x i32> undef, i32 %v211, i64 0
  %v222 = insertelement <4 x i32> %v221, i32 %v212, i64 1
  %v223 = insertelement <4 x i32> %v222, i32 %v213, i64 2
  %v224 = insertelement <4 x i32> %v223, i32 %v214, i64 3
  %bridge_ptr235 = bitcast i8 addrspace(3)* %v220 to <4 x i32> addrspace(3)*
  store <4 x i32> %v224, <4 x i32> addrspace(3)* %bridge_ptr235, align 16
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v225 = shl nuw nsw i32 %v133, 8
  %v226 = shl nuw nsw i32 %v95, 4
  %v227 = shl nuw nsw i32 %v17, 2
  %v228 = and i32 %v227, 320
  %v229 = or  i32 %v228, %v135
  %v230 = xor i32 %v229, %v226
  %v231 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v225
  %v232 = getelementptr inbounds i8, i8 addrspace(3)* %v231, i32 %v230
  %v233 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v232)
  %v234 = extractvalue { i32, i32, i32, i32 } %v233, 0
  %v235 = bitcast i32 %v234 to <2 x i16>
  %v236 = extractvalue { i32, i32, i32, i32 } %v233, 1
  %v237 = bitcast i32 %v236 to <2 x i16>
  %v238 = extractvalue { i32, i32, i32, i32 } %v233, 2
  %v239 = bitcast i32 %v238 to <2 x i16>
  %v240 = extractvalue { i32, i32, i32, i32 } %v233, 3
  %v241 = bitcast i32 %v240 to <2 x i16>
  %v242 = insertelement <2 x float> undef, float %v195, i64 0
  %v243 = insertelement <2 x float> %v242, float %v196, i64 1
  %bf255_0_a0 = extractelement <2 x float> %v243, i32 0
  %bf255_0_r = call i16 @bridge_halftrunc(float %bf255_0_a0)
  %bf255_1_a0 = extractelement <2 x float> %v243, i32 1
  %bf255_1_r = call i16 @bridge_halftrunc(float %bf255_1_a0)
  %bf255_v0 = insertelement <2 x i16> undef, i16 %bf255_0_r, i32 0
  %v244 = insertelement <2 x i16> %bf255_v0, i16 %bf255_1_r, i32 1
  %bf256_0_a0 = extractelement <2 x i16> %v235, i32 0
  %bf256_0_a1 = extractelement <2 x i16> %v244, i32 0
  %bf256_0_x = call float @bridge_halfext(i16 %bf256_0_a0)
  %bf256_0_y = call float @bridge_halfext(i16 %bf256_0_a1)
  %bf256_0_s = fadd float %bf256_0_x, %bf256_0_y
  %bf256_0_r = call i16 @bridge_halftrunc(float %bf256_0_s)
  %bf256_1_a0 = extractelement <2 x i16> %v235, i32 1
  %bf256_1_a1 = extractelement <2 x i16> %v244, i32 1
  %bf256_1_x = call float @bridge_halfext(i16 %bf256_1_a0)
  %bf256_1_y = call float @bridge_halfext(i16 %bf256_1_a1)
  %bf256_1_s = fadd float %bf256_1_x, %bf256_1_y
  %bf256_1_r = call i16 @bridge_halftrunc(float %bf256_1_s)
  %bf256_v0 = insertelement <2 x i16> undef, i16 %bf256_0_r, i32 0
  %v245 = insertelement <2 x i16> %bf256_v0, i16 %bf256_1_r, i32 1
  %v246 = insertelement <2 x float> undef, float %v197, i64 0
  %v247 = insertelement <2 x float> %v246, float %v198, i64 1
  %bf259_0_a0 = extractelement <2 x float> %v247, i32 0
  %bf259_0_r = call i16 @bridge_halftrunc(float %bf259_0_a0)
  %bf259_1_a0 = extractelement <2 x float> %v247, i32 1
  %bf259_1_r = call i16 @bridge_halftrunc(float %bf259_1_a0)
  %bf259_v0 = insertelement <2 x i16> undef, i16 %bf259_0_r, i32 0
  %v248 = insertelement <2 x i16> %bf259_v0, i16 %bf259_1_r, i32 1
  %bf260_0_a0 = extractelement <2 x i16> %v237, i32 0
  %bf260_0_a1 = extractelement <2 x i16> %v248, i32 0
  %bf260_0_x = call float @bridge_halfext(i16 %bf260_0_a0)
  %bf260_0_y = call float @bridge_halfext(i16 %bf260_0_a1)
  %bf260_0_s = fadd float %bf260_0_x, %bf260_0_y
  %bf260_0_r = call i16 @bridge_halftrunc(float %bf260_0_s)
  %bf260_1_a0 = extractelement <2 x i16> %v237, i32 1
  %bf260_1_a1 = extractelement <2 x i16> %v248, i32 1
  %bf260_1_x = call float @bridge_halfext(i16 %bf260_1_a0)
  %bf260_1_y = call float @bridge_halfext(i16 %bf260_1_a1)
  %bf260_1_s = fadd float %bf260_1_x, %bf260_1_y
  %bf260_1_r = call i16 @bridge_halftrunc(float %bf260_1_s)
  %bf260_v0 = insertelement <2 x i16> undef, i16 %bf260_0_r, i32 0
  %v249 = insertelement <2 x i16> %bf260_v0, i16 %bf260_1_r, i32 1
  %v250 = insertelement <2 x float> undef, float %v200, i64 0
  %v251 = insertelement <2 x float> %v250, float %v201, i64 1
  %bf263_0_a0 = extractelement <2 x float> %v251, i32 0
  %bf263_0_r = call i16 @bridge_halftrunc(float %bf263_0_a0)
  %bf263_1_a0 = extractelement <2 x float> %v251, i32 1
  %bf263_1_r = call i16 @bridge_halftrunc(float %bf263_1_a0)
  %bf263_v0 = insertelement <2 x i16> undef, i16 %bf263_0_r, i32 0
  %v252 = insertelement <2 x i16> %bf263_v0, i16 %bf263_1_r, i32 1
  %bf264_0_a0 = extractelement <2 x i16> %v239, i32 0
  %bf264_0_a1 = extractelement <2 x i16> %v252, i32 0
  %bf264_0_x = call float @bridge_halfext(i16 %bf264_0_a0)
  %bf264_0_y = call float @bridge_halfext(i16 %bf264_0_a1)
  %bf264_0_s = fadd float %bf264_0_x, %bf264_0_y
  %bf264_0_r = call i16 @bridge_halftrunc(float %bf264_0_s)
  %bf264_1_a0 = extractelement <2 x i16> %v239, i32 1
  %bf264_1_a1 = extractelement <2 x i16> %v252, i32 1
  %bf264_1_x = call float @bridge_halfext(i16 %bf264_1_a0)
  %bf264_1_y = call float @bridge_halfext(i16 %bf264_1_a1)
  %bf264_1_s = fadd float %bf264_1_x, %bf264_1_y
  %bf264_1_r = call i16 @bridge_halftrunc(float %bf264_1_s)
  %bf264_v0 = insertelement <2 x i16> undef, i16 %bf264_0_r, i32 0
  %v253 = insertelement <2 x i16> %bf264_v0, i16 %bf264_1_r, i32 1
  %v254 = insertelement <2 x float> undef, float %v202, i64 0
  %v255 = insertelement <2 x float> %v254, float %v203, i64 1
  %bf267_0_a0 = extractelement <2 x float> %v255, i32 0
  %bf267_0_r = call i16 @bridge_halftrunc(float %bf267_0_a0)
  %bf267_1_a0 = extractelement <2 x float> %v255, i32 1
  %bf267_1_r = call i16 @bridge_halftrunc(float %bf267_1_a0)
  %bf267_v0 = insertelement <2 x i16> undef, i16 %bf267_0_r, i32 0
  %v256 = insertelement <2 x i16> %bf267_v0, i16 %bf267_1_r, i32 1
  %bf268_0_a0 = extractelement <2 x i16> %v241, i32 0
  %bf268_0_a1 = extractelement <2 x i16> %v256, i32 0
  %bf268_0_x = call float @bridge_halfext(i16 %bf268_0_a0)
  %bf268_0_y = call float @bridge_halfext(i16 %bf268_0_a1)
  %bf268_0_s = fadd float %bf268_0_x, %bf268_0_y
  %bf268_0_r = call i16 @bridge_halftrunc(float %bf268_0_s)
  %bf268_1_a0 = extractelement <2 x i16> %v241, i32 1
  %bf268_1_a1 = extractelement <2 x i16> %v256, i32 1
  %bf268_1_x = call float @bridge_halfext(i16 %bf268_1_a0)
  %bf268_1_y = call float @bridge_halfext(i16 %bf268_1_a1)
  %bf268_1_s = fadd float %bf268_1_x, %bf268_1_y
  %bf268_1_r = call i16 @bridge_halftrunc(float %bf268_1_s)
  %bf268_v0 = insertelement <2 x i16> undef, i16 %bf268_0_r, i32 0
  %v257 = insertelement <2 x i16> %bf268_v0, i16 %bf268_1_r, i32 1
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v258 = and i32 %v54, 120
  %v259 = and i32 %v17, 1
  %v260 = icmp eq i32 %v259, 0
  %v261 = select i1 %v260, i32 0, i32 576
  %v262 = and i32 %v17, 2
  %v263 = icmp eq i32 %v262, 0
  %v264 = select i1 %v263, i32 0, i32 1028
  %v265 = shl nuw nsw i32 %v99, 2
  %v266 = or  i32 %v264, %v265
  %v267 = xor i32 %v261, %v258
  %v268 = or  i32 %v266, %v267
  %v269 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v268
  %bridge_ptr355 = bitcast i8 addrspace(3)* %v269 to <2 x i16> addrspace(3)*
  store <2 x i16> %v245, <2 x i16> addrspace(3)* %bridge_ptr355, align 4
  %v270 = getelementptr inbounds i8, i8 addrspace(3)* %v269, i32 128
  %bridge_ptr357 = bitcast i8 addrspace(3)* %v270 to <2 x i16> addrspace(3)*
  store <2 x i16> %v249, <2 x i16> addrspace(3)* %bridge_ptr357, align 4
  %v271 = xor i32 %v268, 4
  %v272 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v271
  %bridge_ptr360 = bitcast i8 addrspace(3)* %v272 to <2 x i16> addrspace(3)*
  store <2 x i16> %v253, <2 x i16> addrspace(3)* %bridge_ptr360, align 4
  %v273 = getelementptr inbounds i8, i8 addrspace(3)* %v272, i32 128
  %bridge_ptr362 = bitcast i8 addrspace(3)* %v273 to <2 x i16> addrspace(3)*
  store <2 x i16> %v257, <2 x i16> addrspace(3)* %bridge_ptr362, align 4
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v274 = and i32 %v227, 384
  %v275 = and i32 %v54, 60
  %v276 = shl nuw nsw i32 %v259, 6
  %v277 = or  i32 %v274, %v276
  %v278 = or  i32 %v277, %v275
  %v279 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v278
  %v280 = xor i32 %v278, 576
  %v281 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v280
  %v282 = xor i32 %v278, 1028
  %v283 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v282
  %v284 = xor i32 %v278, 1604
  %v285 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v284
  %bridge_ptr376 = bitcast i8 addrspace(3)* %v285 to <2 x i16> addrspace(3)*
  %v286 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr376, align 4
  %bf304_0_a0 = extractelement <2 x i16> %v286, i32 0
  %bf304_0_r = call float @bridge_halfext(i16 %bf304_0_a0)
  %bf304_1_a0 = extractelement <2 x i16> %v286, i32 1
  %bf304_1_r = call float @bridge_halfext(i16 %bf304_1_a0)
  %bf304_v0 = insertelement <2 x float> undef, float %bf304_0_r, i32 0
  %v287 = insertelement <2 x float> %bf304_v0, float %bf304_1_r, i32 1
  %v288 = fmul <2 x float> %v287, <float 5.000000e-01, float 5.000000e-01>
  %v289 = extractelement <2 x float> %v287, i64 0
  %v290 = fmul float %v289, %v289
  %v291 = extractelement <2 x float> %v287, i64 1
  %v292 = fmul float %v291, %v291
  %v293 = fmul float %v290, %v289
  %v294 = fmul float %v292, %v291
  %v295 = fmul float %v293, 0x3FA6E4E260000000
  %v296 = fmul float %v294, 0x3FA6E4E260000000
  %v297 = fadd float %v295, %v289
  %v298 = fadd float %v296, %v291
  %v299 = fmul float %v297, 0x3FE9884540000000
  %v300 = fmul float %v298, 0x3FE9884540000000
  %bridge_ptr396 = bitcast i8 addrspace(3)* %v283 to <2 x i16> addrspace(3)*
  %v301 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr396, align 4
  %bf319_0_a0 = extractelement <2 x i16> %v301, i32 0
  %bf319_0_r = call float @bridge_halfext(i16 %bf319_0_a0)
  %bf319_1_a0 = extractelement <2 x i16> %v301, i32 1
  %bf319_1_r = call float @bridge_halfext(i16 %bf319_1_a0)
  %bf319_v0 = insertelement <2 x float> undef, float %bf319_0_r, i32 0
  %v302 = insertelement <2 x float> %bf319_v0, float %bf319_1_r, i32 1
  %v303 = fmul <2 x float> %v302, <float 5.000000e-01, float 5.000000e-01>
  %v304 = extractelement <2 x float> %v302, i64 0
  %v305 = fmul float %v304, %v304
  %v306 = extractelement <2 x float> %v302, i64 1
  %v307 = fmul float %v306, %v306
  %v308 = fmul float %v305, %v304
  %v309 = fmul float %v307, %v306
  %v310 = fmul float %v308, 0x3FA6E4E260000000
  %v311 = fmul float %v309, 0x3FA6E4E260000000
  %v312 = fadd float %v310, %v304
  %v313 = fadd float %v311, %v306
  %v314 = fmul float %v312, 0x3FE9884540000000
  %v315 = fmul float %v313, 0x3FE9884540000000
  %bridge_ptr416 = bitcast i8 addrspace(3)* %v281 to <2 x i16> addrspace(3)*
  %v316 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr416, align 4
  %bf334_0_a0 = extractelement <2 x i16> %v316, i32 0
  %bf334_0_r = call float @bridge_halfext(i16 %bf334_0_a0)
  %bf334_1_a0 = extractelement <2 x i16> %v316, i32 1
  %bf334_1_r = call float @bridge_halfext(i16 %bf334_1_a0)
  %bf334_v0 = insertelement <2 x float> undef, float %bf334_0_r, i32 0
  %v317 = insertelement <2 x float> %bf334_v0, float %bf334_1_r, i32 1
  %v318 = fmul <2 x float> %v317, <float 5.000000e-01, float 5.000000e-01>
  %v319 = extractelement <2 x float> %v317, i64 0
  %v320 = fmul float %v319, %v319
  %v321 = extractelement <2 x float> %v317, i64 1
  %v322 = fmul float %v321, %v321
  %v323 = fmul float %v320, %v319
  %v324 = fmul float %v322, %v321
  %v325 = fmul float %v323, 0x3FA6E4E260000000
  %v326 = fmul float %v324, 0x3FA6E4E260000000
  %v327 = fadd float %v325, %v319
  %v328 = fadd float %v326, %v321
  %v329 = fmul float %v327, 0x3FE9884540000000
  %v330 = fmul float %v328, 0x3FE9884540000000
  %bridge_ptr436 = bitcast i8 addrspace(3)* %v279 to <2 x i16> addrspace(3)*
  %v331 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr436, align 4
  %bf349_0_a0 = extractelement <2 x i16> %v331, i32 0
  %bf349_0_r = call float @bridge_halfext(i16 %bf349_0_a0)
  %bf349_1_a0 = extractelement <2 x i16> %v331, i32 1
  %bf349_1_r = call float @bridge_halfext(i16 %bf349_1_a0)
  %bf349_v0 = insertelement <2 x float> undef, float %bf349_0_r, i32 0
  %v332 = insertelement <2 x float> %bf349_v0, float %bf349_1_r, i32 1
  %v333 = fmul <2 x float> %v332, <float 5.000000e-01, float 5.000000e-01>
  %v334 = extractelement <2 x float> %v332, i64 0
  %v335 = fmul float %v334, %v334
  %v336 = extractelement <2 x float> %v332, i64 1
  %v337 = fmul float %v336, %v336
  %v338 = fmul float %v335, %v334
  %v339 = fmul float %v337, %v336
  %v340 = fmul float %v338, 0x3FA6E4E260000000
  %v341 = fmul float %v339, 0x3FA6E4E260000000
  %v342 = fadd float %v340, %v334
  %v343 = fadd float %v341, %v336
  %v344 = fmul float %v342, 0x3FE9884540000000
  %v345 = fmul float %v343, 0x3FE9884540000000
  %v346 = tail call float @f06_tanh(float %v344)
  %v347 = tail call float @f06_tanh(float %v345)
  %v348 = tail call float @f06_tanh(float %v329)
  %v349 = tail call float @f06_tanh(float %v330)
  %v350 = tail call float @f06_tanh(float %v314)
  %v351 = tail call float @f06_tanh(float %v315)
  %v352 = tail call float @f06_tanh(float %v299)
  %v353 = tail call float @f06_tanh(float %v300)
  %v354 = insertelement <2 x float> undef, float %v346, i64 0
  %v355 = insertelement <2 x float> %v354, float %v347, i64 1
  %v356 = fadd <2 x float> %v355, <float 1.000000e+00, float 1.000000e+00>
  %v357 = insertelement <2 x float> undef, float %v348, i64 0
  %v358 = insertelement <2 x float> %v357, float %v349, i64 1
  %v359 = fadd <2 x float> %v358, <float 1.000000e+00, float 1.000000e+00>
  %v360 = insertelement <2 x float> undef, float %v350, i64 0
  %v361 = insertelement <2 x float> %v360, float %v351, i64 1
  %v362 = fadd <2 x float> %v361, <float 1.000000e+00, float 1.000000e+00>
  %v363 = insertelement <2 x float> undef, float %v352, i64 0
  %v364 = insertelement <2 x float> %v363, float %v353, i64 1
  %v365 = fadd <2 x float> %v364, <float 1.000000e+00, float 1.000000e+00>
  %v366 = fmul <2 x float> %v333, %v356
  %v367 = fmul <2 x float> %v318, %v359
  %v368 = fmul <2 x float> %v303, %v362
  %v369 = fmul <2 x float> %v288, %v365
  %bf387_0_a0 = extractelement <2 x float> %v366, i32 0
  %bf387_0_r = call i16 @bridge_halftrunc(float %bf387_0_a0)
  %bf387_1_a0 = extractelement <2 x float> %v366, i32 1
  %bf387_1_r = call i16 @bridge_halftrunc(float %bf387_1_a0)
  %bf387_v0 = insertelement <2 x i16> undef, i16 %bf387_0_r, i32 0
  %v370 = insertelement <2 x i16> %bf387_v0, i16 %bf387_1_r, i32 1
  %bf388_0_a0 = extractelement <2 x float> %v367, i32 0
  %bf388_0_r = call i16 @bridge_halftrunc(float %bf388_0_a0)
  %bf388_1_a0 = extractelement <2 x float> %v367, i32 1
  %bf388_1_r = call i16 @bridge_halftrunc(float %bf388_1_a0)
  %bf388_v0 = insertelement <2 x i16> undef, i16 %bf388_0_r, i32 0
  %v371 = insertelement <2 x i16> %bf388_v0, i16 %bf388_1_r, i32 1
  %bf389_0_a0 = extractelement <2 x float> %v368, i32 0
  %bf389_0_r = call i16 @bridge_halftrunc(float %bf389_0_a0)
  %bf389_1_a0 = extractelement <2 x float> %v368, i32 1
  %bf389_1_r = call i16 @bridge_halftrunc(float %bf389_1_a0)
  %bf389_v0 = insertelement <2 x i16> undef, i16 %bf389_0_r, i32 0
  %v372 = insertelement <2 x i16> %bf389_v0, i16 %bf389_1_r, i32 1
  %bf390_0_a0 = extractelement <2 x float> %v369, i32 0
  %bf390_0_r = call i16 @bridge_halftrunc(float %bf390_0_a0)
  %bf390_1_a0 = extractelement <2 x float> %v369, i32 1
  %bf390_1_r = call i16 @bridge_halftrunc(float %bf390_1_a0)
  %bf390_v0 = insertelement <2 x i16> undef, i16 %bf390_0_r, i32 0
  %v373 = insertelement <2 x i16> %bf390_v0, i16 %bf390_1_r, i32 1
  %v374 = shl i32 %v26, 10
  %v375 = add i32 %v374, %v28
  %v376 = sext i32 %v375 to i64
  %bridge_in507 = bitcast i8 addrspace(1)* %v3 to i16 addrspace(1)*
  %bridge_gep507 = getelementptr i16, i16 addrspace(1)* %bridge_in507, i64 %v376
  %v377 = bitcast i16 addrspace(1)* %bridge_gep507 to i8 addrspace(1)*
  %v378 = bitcast <2 x i16> %v370 to i32
  %v379 = bitcast <2 x i16> %v371 to i32
  %v380 = bitcast <2 x i16> %v372 to i32
  %v381 = bitcast <2 x i16> %v373 to i32
  tail call void asm sideeffect "@$5 st.global.v4.b32 [ $4 + 0 ], { $0, $1, $2, $3 };", "r,r,r,r,l,b"(i32 %v378, i32 %v379, i32 %v380, i32 %v381, i8 addrspace(1)* %v377, i1 %v206) #5
  ret void
}

; Function Attrs:     nounwind speculatable  
declare   i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #1

; Function Attrs:     nounwind  
declare void @llvm.assume(i1 ) #2

; Function Attrs:     nounwind speculatable  
declare   i32 @llvm.nvvm.read.ptx.sreg.tid.x() #1

; Function Attrs: convergent  nounwind


; Function Attrs:   nounwind 


; Function Attrs:   nounwind 


attributes #0 = { "nvvm.reqntid"="128" }
attributes #1 = {     nounwind speculatable   }
attributes #2 = {     nounwind   }
attributes #3 = { convergent  nounwind }
attributes #4 = {   nounwind  }
attributes #5 = { nounwind }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body to i8*)], section "llvm.metadata"
!nvvm.annotations = !{!1, !2}
!1 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body, !"kernel", i32 1}
!2 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body, !"reqntidx", i32 128}
