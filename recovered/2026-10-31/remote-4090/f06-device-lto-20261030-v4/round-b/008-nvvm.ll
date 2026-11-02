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
  %v10 = sub nsw i32 1, %v9
  %v11 = srem i32 %v7, %v10
  %v12 = add nuw nsw i32 %v11, %v9
  %v13 = and i32 %v7, 255
  %v14 = sdiv i32 %v13, %v10
  %v15 = icmp sgt i32 %v14, -1
  tail call void @llvm.assume(i1 %v15)
  %v16 = shl i32 %v12, 6
  %v17 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %v18 = lshr i32 %v17, 3
  %v19 = and i32 %v18, 15
  %v20 = and i32 %v17, 124
  %v21 = lshr exact i32 %v20, 2
  %v22 = or  i32 %v21, 32
  %v23 = or  i32 %v16, %v19
  %v24 = or  i32 %v23, 16
  %v25 = or  i32 %v23, 32
  %v26 = or i32 %v18, %v16
  %v27 = or i32 %v26, 48
  %v28 = or  i32 %v16, %v21
  %v29 = or  i32 %v16, %v22
  %v30 = shl nuw nsw i32 %v14, 5
  %v31 = and i32 %v17, 3
  %v32 = shl nuw nsw i32 %v31, 3
  %v33 = or  i32 %v30, %v32
  %v34 = srem i32 %v23, 64
  %v35 = srem i32 %v24, 64
  %v36 = srem i32 %v25, 64
  %v37 = srem i32 %v27, 64
  %v38 = and i32 %v33, 1016
  %v39 = and i32 %v17, 7
  %v40 = shl nuw nsw i32 %v39, 3
  %v41 = shl nsw i32 %v34, 6
  %v42 = shl nsw i32 %v35, 6
  %v43 = shl nsw i32 %v36, 6
  %v44 = shl nsw i32 %v37, 6
  %v45 = or  i32 %v41, %v40
  %v46 = or  i32 %v42, %v40
  %v47 = or  i32 %v43, %v40
  %v48 = or  i32 %v44, %v40
  %v49 = sext i32 %v45 to i64
  %bridge_in54 = bitcast i8 addrspace(1)* %v0 to i16 addrspace(1)*
  %bridge_gep54 = getelementptr i16, i16 addrspace(1)* %bridge_in54, i64 %v49
  %v50 = bitcast i16 addrspace(1)* %bridge_gep54 to i8 addrspace(1)*
  %v51 = sext i32 %v46 to i64
  %bridge_in56 = bitcast i8 addrspace(1)* %v0 to i16 addrspace(1)*
  %bridge_gep56 = getelementptr i16, i16 addrspace(1)* %bridge_in56, i64 %v51
  %v52 = bitcast i16 addrspace(1)* %bridge_gep56 to i8 addrspace(1)*
  %v53 = sext i32 %v47 to i64
  %bridge_in58 = bitcast i8 addrspace(1)* %v0 to i16 addrspace(1)*
  %bridge_gep58 = getelementptr i16, i16 addrspace(1)* %bridge_in58, i64 %v53
  %v54 = bitcast i16 addrspace(1)* %bridge_gep58 to i8 addrspace(1)*
  %v55 = sext i32 %v48 to i64
  %bridge_in60 = bitcast i8 addrspace(1)* %v0 to i16 addrspace(1)*
  %bridge_gep60 = getelementptr i16, i16 addrspace(1)* %bridge_in60, i64 %v55
  %v56 = bitcast i16 addrspace(1)* %bridge_gep60 to i8 addrspace(1)*
  %v57 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ];", "=r,=r,=r,=r,l"(i8 addrspace(1)* %v50) #5
  %v58 = extractvalue { i32, i32, i32, i32 } %v57, 0
  %v59 = extractvalue { i32, i32, i32, i32 } %v57, 1
  %v60 = extractvalue { i32, i32, i32, i32 } %v57, 2
  %v61 = extractvalue { i32, i32, i32, i32 } %v57, 3
  %v62 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ];", "=r,=r,=r,=r,l"(i8 addrspace(1)* %v52) #5
  %v63 = extractvalue { i32, i32, i32, i32 } %v62, 0
  %v64 = extractvalue { i32, i32, i32, i32 } %v62, 1
  %v65 = extractvalue { i32, i32, i32, i32 } %v62, 2
  %v66 = extractvalue { i32, i32, i32, i32 } %v62, 3
  %v67 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ];", "=r,=r,=r,=r,l"(i8 addrspace(1)* %v54) #5
  %v68 = extractvalue { i32, i32, i32, i32 } %v67, 0
  %v69 = extractvalue { i32, i32, i32, i32 } %v67, 1
  %v70 = extractvalue { i32, i32, i32, i32 } %v67, 2
  %v71 = extractvalue { i32, i32, i32, i32 } %v67, 3
  %v72 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ];", "=r,=r,=r,=r,l"(i8 addrspace(1)* %v56) #5
  %v73 = extractvalue { i32, i32, i32, i32 } %v72, 0
  %v74 = extractvalue { i32, i32, i32, i32 } %v72, 1
  %v75 = extractvalue { i32, i32, i32, i32 } %v72, 2
  %v76 = extractvalue { i32, i32, i32, i32 } %v72, 3
  %v77 = shl nuw nsw i32 %v17, 4
  %v78 = and i32 %v77, 2032
  %v79 = shl nuw nsw i32 %v17, 1
  %v80 = and i32 %v79, 112
  %v81 = xor i32 %v78, %v80
  %v82 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v81
  %v83 = insertelement <4 x i32> undef, i32 %v58, i64 0
  %v84 = insertelement <4 x i32> %v83, i32 %v59, i64 1
  %v85 = insertelement <4 x i32> %v84, i32 %v60, i64 2
  %v86 = insertelement <4 x i32> %v85, i32 %v61, i64 3
  %bridge_ptr91 = bitcast i8 addrspace(3)* %v82 to <4 x i32> addrspace(3)*
  store <4 x i32> %v86, <4 x i32> addrspace(3)* %bridge_ptr91, align 16
  %v87 = getelementptr inbounds i8, i8 addrspace(3)* %v82, i32 2048
  %v88 = insertelement <4 x i32> undef, i32 %v63, i64 0
  %v89 = insertelement <4 x i32> %v88, i32 %v64, i64 1
  %v90 = insertelement <4 x i32> %v89, i32 %v65, i64 2
  %v91 = insertelement <4 x i32> %v90, i32 %v66, i64 3
  %bridge_ptr97 = bitcast i8 addrspace(3)* %v87 to <4 x i32> addrspace(3)*
  store <4 x i32> %v91, <4 x i32> addrspace(3)* %bridge_ptr97, align 16
  %v92 = getelementptr inbounds i8, i8 addrspace(3)* %v82, i32 4096
  %v93 = insertelement <4 x i32> undef, i32 %v68, i64 0
  %v94 = insertelement <4 x i32> %v93, i32 %v69, i64 1
  %v95 = insertelement <4 x i32> %v94, i32 %v70, i64 2
  %v96 = insertelement <4 x i32> %v95, i32 %v71, i64 3
  %bridge_ptr103 = bitcast i8 addrspace(3)* %v92 to <4 x i32> addrspace(3)*
  store <4 x i32> %v96, <4 x i32> addrspace(3)* %bridge_ptr103, align 16
  %v97 = getelementptr inbounds i8, i8 addrspace(3)* %v82, i32 6144
  %v98 = insertelement <4 x i32> undef, i32 %v73, i64 0
  %v99 = insertelement <4 x i32> %v98, i32 %v74, i64 1
  %v100 = insertelement <4 x i32> %v99, i32 %v75, i64 2
  %v101 = insertelement <4 x i32> %v100, i32 %v76, i64 3
  %bridge_ptr109 = bitcast i8 addrspace(3)* %v97 to <4 x i32> addrspace(3)*
  store <4 x i32> %v101, <4 x i32> addrspace(3)* %bridge_ptr109, align 16
  %v102 = shl nuw nsw i32 %v20, 8
  %v103 = shl nuw nsw i32 %v22, 10
  %v104 = or  i32 %v38, %v102
  %v105 = or  i32 %v38, %v103
  %v106 = zext  i32 %v104 to i64
  %bridge_in115 = bitcast i8 addrspace(1)* %v1 to i16 addrspace(1)*
  %bridge_gep115 = getelementptr i16, i16 addrspace(1)* %bridge_in115, i64 %v106
  %v107 = bitcast i16 addrspace(1)* %bridge_gep115 to i8 addrspace(1)*
  %v108 = zext  i32 %v105 to i64
  %bridge_in117 = bitcast i8 addrspace(1)* %v1 to i16 addrspace(1)*
  %bridge_gep117 = getelementptr i16, i16 addrspace(1)* %bridge_in117, i64 %v108
  %v109 = bitcast i16 addrspace(1)* %bridge_gep117 to i8 addrspace(1)*
  %v110 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ];", "=r,=r,=r,=r,l"(i8 addrspace(1)* %v107) #5
  %v111 = extractvalue { i32, i32, i32, i32 } %v110, 0
  %v112 = extractvalue { i32, i32, i32, i32 } %v110, 1
  %v113 = extractvalue { i32, i32, i32, i32 } %v110, 2
  %v114 = extractvalue { i32, i32, i32, i32 } %v110, 3
  %v115 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09ld.global.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ];", "=r,=r,=r,=r,l"(i8 addrspace(1)* %v109) #5
  %v116 = extractvalue { i32, i32, i32, i32 } %v115, 0
  %v117 = extractvalue { i32, i32, i32, i32 } %v115, 1
  %v118 = extractvalue { i32, i32, i32, i32 } %v115, 2
  %v119 = extractvalue { i32, i32, i32, i32 } %v115, 3
  %v120 = and i32 %v17, 24
  %v121 = shl nuw nsw i32 %v120, 1
  %v122 = xor i32 %v78, %v121
  %v123 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 8192), i32 %v122
  %v124 = insertelement <4 x i32> undef, i32 %v111, i64 0
  %v125 = insertelement <4 x i32> %v124, i32 %v112, i64 1
  %v126 = insertelement <4 x i32> %v125, i32 %v113, i64 2
  %v127 = insertelement <4 x i32> %v126, i32 %v114, i64 3
  %bridge_ptr136 = bitcast i8 addrspace(3)* %v123 to <4 x i32> addrspace(3)*
  store <4 x i32> %v127, <4 x i32> addrspace(3)* %bridge_ptr136, align 16
  %v128 = getelementptr inbounds i8, i8 addrspace(3)* %v123, i32 2048
  %v129 = insertelement <4 x i32> undef, i32 %v116, i64 0
  %v130 = insertelement <4 x i32> %v129, i32 %v117, i64 1
  %v131 = insertelement <4 x i32> %v130, i32 %v118, i64 2
  %v132 = insertelement <4 x i32> %v131, i32 %v119, i64 3
  %bridge_ptr142 = bitcast i8 addrspace(3)* %v128 to <4 x i32> addrspace(3)*
  store <4 x i32> %v132, <4 x i32> addrspace(3)* %bridge_ptr142, align 16
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v133 = and i32 %v17, 15
  %v134 = shl nuw nsw i32 %v133, 7
  %v135 = shl nuw nsw i32 %v39, 4
  %v136 = and i32 %v17, 16
  %v137 = shl nuw nsw i32 %v17, 5
  %v138 = and i32 %v137, 2048
  %v139 = or  i32 %v134, %v135
  %v140 = xor i32 %v139, %v136
  %v141 = or  i32 %v140, %v138
  %v142 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v141
  %v143 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v142)
  %v144 = extractvalue { i32, i32, i32, i32 } %v143, 0
  %v145 = extractvalue { i32, i32, i32, i32 } %v143, 1
  %v146 = extractvalue { i32, i32, i32, i32 } %v143, 2
  %v147 = extractvalue { i32, i32, i32, i32 } %v143, 3
  %v148 = getelementptr inbounds i8, i8 addrspace(3)* %v142, i32 4096
  %v149 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v148)
  %v150 = extractvalue { i32, i32, i32, i32 } %v149, 0
  %v151 = extractvalue { i32, i32, i32, i32 } %v149, 1
  %v152 = extractvalue { i32, i32, i32, i32 } %v149, 2
  %v153 = extractvalue { i32, i32, i32, i32 } %v149, 3
  %v154 = xor i32 %v141, 32
  %v155 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v154
  %v156 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v155)
  %v157 = extractvalue { i32, i32, i32, i32 } %v156, 0
  %v158 = extractvalue { i32, i32, i32, i32 } %v156, 1
  %v159 = extractvalue { i32, i32, i32, i32 } %v156, 2
  %v160 = extractvalue { i32, i32, i32, i32 } %v156, 3
  %v161 = getelementptr inbounds i8, i8 addrspace(3)* %v155, i32 4096
  %v162 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v161)
  %v163 = extractvalue { i32, i32, i32, i32 } %v162, 0
  %v164 = extractvalue { i32, i32, i32, i32 } %v162, 1
  %v165 = extractvalue { i32, i32, i32, i32 } %v162, 2
  %v166 = extractvalue { i32, i32, i32, i32 } %v162, 3
  %v167 = xor i32 %v141, 64
  %v168 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v167
  %v169 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v168)
  %v170 = extractvalue { i32, i32, i32, i32 } %v169, 0
  %v171 = extractvalue { i32, i32, i32, i32 } %v169, 1
  %v172 = extractvalue { i32, i32, i32, i32 } %v169, 2
  %v173 = extractvalue { i32, i32, i32, i32 } %v169, 3
  %v174 = getelementptr inbounds i8, i8 addrspace(3)* %v168, i32 4096
  %v175 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v174)
  %v176 = extractvalue { i32, i32, i32, i32 } %v175, 0
  %v177 = extractvalue { i32, i32, i32, i32 } %v175, 1
  %v178 = extractvalue { i32, i32, i32, i32 } %v175, 2
  %v179 = extractvalue { i32, i32, i32, i32 } %v175, 3
  %v180 = xor i32 %v141, 96
  %v181 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v180
  %v182 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v181)
  %v183 = extractvalue { i32, i32, i32, i32 } %v182, 0
  %v184 = extractvalue { i32, i32, i32, i32 } %v182, 1
  %v185 = extractvalue { i32, i32, i32, i32 } %v182, 2
  %v186 = extractvalue { i32, i32, i32, i32 } %v182, 3
  %v187 = getelementptr inbounds i8, i8 addrspace(3)* %v181, i32 4096
  %v188 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v187)
  %v189 = extractvalue { i32, i32, i32, i32 } %v188, 0
  %v190 = extractvalue { i32, i32, i32, i32 } %v188, 1
  %v191 = extractvalue { i32, i32, i32, i32 } %v188, 2
  %v192 = extractvalue { i32, i32, i32, i32 } %v188, 3
  %v193 = shl nuw nsw i32 %v17, 6
  %v194 = and i32 %v193, 1984
  %v195 = and i32 %v17, 6
  %v196 = shl nuw nsw i32 %v195, 3
  %v197 = and i32 %v17, 32
  %v198 = lshr exact i32 %v197, 1
  %v199 = or  i32 %v194, %v196
  %v200 = xor i32 %v199, %v198
  %v201 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 8192), i32 %v200
  %v202 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.trans.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v201)
  %v203 = extractvalue { i32, i32, i32, i32 } %v202, 0
  %v204 = extractvalue { i32, i32, i32, i32 } %v202, 1
  %v205 = extractvalue { i32, i32, i32, i32 } %v202, 2
  %v206 = extractvalue { i32, i32, i32, i32 } %v202, 3
  %v207 = getelementptr inbounds i8, i8 addrspace(3)* %v201, i32 2048
  %v208 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.trans.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v207)
  %v209 = extractvalue { i32, i32, i32, i32 } %v208, 0
  %v210 = extractvalue { i32, i32, i32, i32 } %v208, 1
  %v211 = extractvalue { i32, i32, i32, i32 } %v208, 2
  %v212 = extractvalue { i32, i32, i32, i32 } %v208, 3
  %v213 = xor i32 %v200, 32
  %v214 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 8192), i32 %v213
  %v215 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.trans.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v214)
  %v216 = extractvalue { i32, i32, i32, i32 } %v215, 0
  %v217 = extractvalue { i32, i32, i32, i32 } %v215, 1
  %v218 = extractvalue { i32, i32, i32, i32 } %v215, 2
  %v219 = extractvalue { i32, i32, i32, i32 } %v215, 3
  %v220 = getelementptr inbounds i8, i8 addrspace(3)* %v214, i32 2048
  %v221 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.trans.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v220)
  %v222 = extractvalue { i32, i32, i32, i32 } %v221, 0
  %v223 = extractvalue { i32, i32, i32, i32 } %v221, 1
  %v224 = extractvalue { i32, i32, i32, i32 } %v221, 2
  %v225 = extractvalue { i32, i32, i32, i32 } %v221, 3
  %v226 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 %v144, i32 %v145, i32 %v146, i32 %v147, i32 %v203, i32 %v204) #5
  %v227 = extractvalue { float, float, float, float } %v226, 0
  %v228 = extractvalue { float, float, float, float } %v226, 1
  %v229 = extractvalue { float, float, float, float } %v226, 2
  %v230 = extractvalue { float, float, float, float } %v226, 3
  %v231 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 %v144, i32 %v145, i32 %v146, i32 %v147, i32 %v216, i32 %v217) #5
  %v232 = extractvalue { float, float, float, float } %v231, 0
  %v233 = extractvalue { float, float, float, float } %v231, 1
  %v234 = extractvalue { float, float, float, float } %v231, 2
  %v235 = extractvalue { float, float, float, float } %v231, 3
  %v236 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 %v150, i32 %v151, i32 %v152, i32 %v153, i32 %v203, i32 %v204) #5
  %v237 = extractvalue { float, float, float, float } %v236, 0
  %v238 = extractvalue { float, float, float, float } %v236, 1
  %v239 = extractvalue { float, float, float, float } %v236, 2
  %v240 = extractvalue { float, float, float, float } %v236, 3
  %v241 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 %v150, i32 %v151, i32 %v152, i32 %v153, i32 %v216, i32 %v217) #5
  %v242 = extractvalue { float, float, float, float } %v241, 0
  %v243 = extractvalue { float, float, float, float } %v241, 1
  %v244 = extractvalue { float, float, float, float } %v241, 2
  %v245 = extractvalue { float, float, float, float } %v241, 3
  %v246 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v227, float %v228, float %v229, float %v230, i32 %v157, i32 %v158, i32 %v159, i32 %v160, i32 %v205, i32 %v206) #5
  %v247 = extractvalue { float, float, float, float } %v246, 0
  %v248 = extractvalue { float, float, float, float } %v246, 1
  %v249 = extractvalue { float, float, float, float } %v246, 2
  %v250 = extractvalue { float, float, float, float } %v246, 3
  %v251 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v232, float %v233, float %v234, float %v235, i32 %v157, i32 %v158, i32 %v159, i32 %v160, i32 %v218, i32 %v219) #5
  %v252 = extractvalue { float, float, float, float } %v251, 0
  %v253 = extractvalue { float, float, float, float } %v251, 1
  %v254 = extractvalue { float, float, float, float } %v251, 2
  %v255 = extractvalue { float, float, float, float } %v251, 3
  %v256 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v237, float %v238, float %v239, float %v240, i32 %v163, i32 %v164, i32 %v165, i32 %v166, i32 %v205, i32 %v206) #5
  %v257 = extractvalue { float, float, float, float } %v256, 0
  %v258 = extractvalue { float, float, float, float } %v256, 1
  %v259 = extractvalue { float, float, float, float } %v256, 2
  %v260 = extractvalue { float, float, float, float } %v256, 3
  %v261 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v242, float %v243, float %v244, float %v245, i32 %v163, i32 %v164, i32 %v165, i32 %v166, i32 %v218, i32 %v219) #5
  %v262 = extractvalue { float, float, float, float } %v261, 0
  %v263 = extractvalue { float, float, float, float } %v261, 1
  %v264 = extractvalue { float, float, float, float } %v261, 2
  %v265 = extractvalue { float, float, float, float } %v261, 3
  %v266 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v247, float %v248, float %v249, float %v250, i32 %v170, i32 %v171, i32 %v172, i32 %v173, i32 %v209, i32 %v210) #5
  %v267 = extractvalue { float, float, float, float } %v266, 0
  %v268 = extractvalue { float, float, float, float } %v266, 1
  %v269 = extractvalue { float, float, float, float } %v266, 2
  %v270 = extractvalue { float, float, float, float } %v266, 3
  %v271 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v252, float %v253, float %v254, float %v255, i32 %v170, i32 %v171, i32 %v172, i32 %v173, i32 %v222, i32 %v223) #5
  %v272 = extractvalue { float, float, float, float } %v271, 0
  %v273 = extractvalue { float, float, float, float } %v271, 1
  %v274 = extractvalue { float, float, float, float } %v271, 2
  %v275 = extractvalue { float, float, float, float } %v271, 3
  %v276 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v257, float %v258, float %v259, float %v260, i32 %v176, i32 %v177, i32 %v178, i32 %v179, i32 %v209, i32 %v210) #5
  %v277 = extractvalue { float, float, float, float } %v276, 0
  %v278 = extractvalue { float, float, float, float } %v276, 1
  %v279 = extractvalue { float, float, float, float } %v276, 2
  %v280 = extractvalue { float, float, float, float } %v276, 3
  %v281 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v262, float %v263, float %v264, float %v265, i32 %v176, i32 %v177, i32 %v178, i32 %v179, i32 %v222, i32 %v223) #5
  %v282 = extractvalue { float, float, float, float } %v281, 0
  %v283 = extractvalue { float, float, float, float } %v281, 1
  %v284 = extractvalue { float, float, float, float } %v281, 2
  %v285 = extractvalue { float, float, float, float } %v281, 3
  %v286 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v267, float %v268, float %v269, float %v270, i32 %v183, i32 %v184, i32 %v185, i32 %v186, i32 %v211, i32 %v212) #5
  %v287 = extractvalue { float, float, float, float } %v286, 0
  %v288 = extractvalue { float, float, float, float } %v286, 1
  %v289 = extractvalue { float, float, float, float } %v286, 2
  %v290 = extractvalue { float, float, float, float } %v286, 3
  %v291 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v272, float %v273, float %v274, float %v275, i32 %v183, i32 %v184, i32 %v185, i32 %v186, i32 %v224, i32 %v225) #5
  %v292 = extractvalue { float, float, float, float } %v291, 0
  %v293 = extractvalue { float, float, float, float } %v291, 1
  %v294 = extractvalue { float, float, float, float } %v291, 2
  %v295 = extractvalue { float, float, float, float } %v291, 3
  %v296 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v277, float %v278, float %v279, float %v280, i32 %v189, i32 %v190, i32 %v191, i32 %v192, i32 %v211, i32 %v212) #5
  %v297 = extractvalue { float, float, float, float } %v296, 0
  %v298 = extractvalue { float, float, float, float } %v296, 1
  %v299 = extractvalue { float, float, float, float } %v296, 2
  %v300 = extractvalue { float, float, float, float } %v296, 3
  %v301 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v282, float %v283, float %v284, float %v285, i32 %v189, i32 %v190, i32 %v191, i32 %v192, i32 %v224, i32 %v225) #5
  %v302 = extractvalue { float, float, float, float } %v301, 0
  %v303 = extractvalue { float, float, float, float } %v301, 1
  %v304 = extractvalue { float, float, float, float } %v301, 2
  %v305 = extractvalue { float, float, float, float } %v301, 3
  %v306 = icmp slt i32 %v28, 64
  %v307 = icmp  ult i32 %v14, 32
  %v308 = and i1 %v307, %v306
  %v309 = zext  i32 %v33 to i64
  %bridge_in321 = bitcast i8 addrspace(1)* %v2 to i16 addrspace(1)*
  %bridge_gep321 = getelementptr i16, i16 addrspace(1)* %bridge_in321, i64 %v309
  %v310 = bitcast i16 addrspace(1)* %bridge_gep321 to i8 addrspace(1)*
  %v311 = tail call i64 asm sideeffect "mov.u64 $0, 0x0;\0A\09createpolicy.fractional.L2::evict_last.b64 $0, 1.0;", "=l"() #5
  %v312 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09@$6 ld.global.L1::evict_last.L2::cache_hint.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ], $5;", "=r,=r,=r,=r,l,l,b"(i8 addrspace(1)* %v310, i64 %v311, i1 %v308) #5
  %v313 = extractvalue { i32, i32, i32, i32 } %v312, 0
  %v314 = extractvalue { i32, i32, i32, i32 } %v312, 1
  %v315 = extractvalue { i32, i32, i32, i32 } %v312, 2
  %v316 = extractvalue { i32, i32, i32, i32 } %v312, 3
  %v317 = tail call i64 asm sideeffect "mov.u64 $0, 0x0;\0A\09createpolicy.fractional.L2::evict_last.b64 $0, 1.0;", "=l"() #5
  %v318 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09@$6 ld.global.L1::evict_last.L2::cache_hint.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ], $5;", "=r,=r,=r,=r,l,l,b"(i8 addrspace(1)* %v310, i64 %v317, i1 %v308) #5
  %v319 = extractvalue { i32, i32, i32, i32 } %v318, 0
  %v320 = extractvalue { i32, i32, i32, i32 } %v318, 1
  %v321 = extractvalue { i32, i32, i32, i32 } %v318, 2
  %v322 = extractvalue { i32, i32, i32, i32 } %v318, 3
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v323 = shl nuw nsw i32 %v120, 6
  %v324 = shl nuw nsw i32 %v31, 5
  %v325 = shl nuw nsw i32 %v20, 2
  %v326 = or  i32 %v323, %v324
  %v327 = xor i32 %v326, %v325
  %v328 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v327
  %v329 = insertelement <4 x i32> undef, i32 %v313, i64 0
  %v330 = insertelement <4 x i32> %v329, i32 %v314, i64 1
  %v331 = insertelement <4 x i32> %v330, i32 %v315, i64 2
  %v332 = insertelement <4 x i32> %v331, i32 %v316, i64 3
  %bridge_ptr345 = bitcast i8 addrspace(3)* %v328 to <4 x i32> addrspace(3)*
  store <4 x i32> %v332, <4 x i32> addrspace(3)* %bridge_ptr345, align 16
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v333 = shl nuw nsw i32 %v195, 8
  %v334 = shl nuw nsw i32 %v133, 4
  %v335 = and i32 %v17, 80
  %v336 = shl nuw nsw i32 %v335, 2
  %v337 = or  i32 %v336, %v197
  %v338 = xor i32 %v337, %v334
  %v339 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v333
  %v340 = getelementptr inbounds i8, i8 addrspace(3)* %v339, i32 %v338
  %v341 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v340)
  %v342 = extractvalue { i32, i32, i32, i32 } %v341, 0
  %v343 = bitcast i32 %v342 to <2 x i16>
  %v344 = extractvalue { i32, i32, i32, i32 } %v341, 1
  %v345 = bitcast i32 %v344 to <2 x i16>
  %v346 = extractvalue { i32, i32, i32, i32 } %v341, 2
  %v347 = bitcast i32 %v346 to <2 x i16>
  %v348 = extractvalue { i32, i32, i32, i32 } %v341, 3
  %v349 = bitcast i32 %v348 to <2 x i16>
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v350 = insertelement <4 x i32> undef, i32 %v319, i64 0
  %v351 = insertelement <4 x i32> %v350, i32 %v320, i64 1
  %v352 = insertelement <4 x i32> %v351, i32 %v321, i64 2
  %v353 = insertelement <4 x i32> %v352, i32 %v322, i64 3
  %bridge_ptr369 = bitcast i8 addrspace(3)* %v328 to <4 x i32> addrspace(3)*
  store <4 x i32> %v353, <4 x i32> addrspace(3)* %bridge_ptr369, align 16
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v354 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v340)
  %v355 = extractvalue { i32, i32, i32, i32 } %v354, 0
  %v356 = bitcast i32 %v355 to <2 x i16>
  %v357 = extractvalue { i32, i32, i32, i32 } %v354, 1
  %v358 = bitcast i32 %v357 to <2 x i16>
  %v359 = extractvalue { i32, i32, i32, i32 } %v354, 2
  %v360 = bitcast i32 %v359 to <2 x i16>
  %v361 = extractvalue { i32, i32, i32, i32 } %v354, 3
  %v362 = bitcast i32 %v361 to <2 x i16>
  %v363 = insertelement <4 x float> undef, float %v287, i64 0
  %v364 = insertelement <4 x float> %v363, float %v288, i64 1
  %v365 = insertelement <4 x float> %v364, float %v297, i64 2
  %v366 = insertelement <4 x float> %v365, float %v298, i64 3
  %bf383_0_a0 = extractelement <4 x float> %v366, i32 0
  %bf383_0_r = call i16 @bridge_bftrunc(float %bf383_0_a0)
  %bf383_1_a0 = extractelement <4 x float> %v366, i32 1
  %bf383_1_r = call i16 @bridge_bftrunc(float %bf383_1_a0)
  %bf383_2_a0 = extractelement <4 x float> %v366, i32 2
  %bf383_2_r = call i16 @bridge_bftrunc(float %bf383_2_a0)
  %bf383_3_a0 = extractelement <4 x float> %v366, i32 3
  %bf383_3_r = call i16 @bridge_bftrunc(float %bf383_3_a0)
  %bf383_v0 = insertelement <4 x i16> undef, i16 %bf383_0_r, i32 0
  %bf383_v1 = insertelement <4 x i16> %bf383_v0, i16 %bf383_1_r, i32 1
  %bf383_v2 = insertelement <4 x i16> %bf383_v1, i16 %bf383_2_r, i32 2
  %v367 = insertelement <4 x i16> %bf383_v2, i16 %bf383_3_r, i32 3
  %v368 = shufflevector <2 x i16> %v343, <2 x i16> %v356, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %bf385_0_a0 = extractelement <4 x i16> %v368, i32 0
  %bf385_0_a1 = extractelement <4 x i16> %v367, i32 0
  %bf385_0_x = call float @bridge_bfext(i16 %bf385_0_a0)
  %bf385_0_y = call float @bridge_bfext(i16 %bf385_0_a1)
  %bf385_0_s = fadd float %bf385_0_x, %bf385_0_y
  %bf385_0_r = call i16 @bridge_bftrunc(float %bf385_0_s)
  %bf385_1_a0 = extractelement <4 x i16> %v368, i32 1
  %bf385_1_a1 = extractelement <4 x i16> %v367, i32 1
  %bf385_1_x = call float @bridge_bfext(i16 %bf385_1_a0)
  %bf385_1_y = call float @bridge_bfext(i16 %bf385_1_a1)
  %bf385_1_s = fadd float %bf385_1_x, %bf385_1_y
  %bf385_1_r = call i16 @bridge_bftrunc(float %bf385_1_s)
  %bf385_2_a0 = extractelement <4 x i16> %v368, i32 2
  %bf385_2_a1 = extractelement <4 x i16> %v367, i32 2
  %bf385_2_x = call float @bridge_bfext(i16 %bf385_2_a0)
  %bf385_2_y = call float @bridge_bfext(i16 %bf385_2_a1)
  %bf385_2_s = fadd float %bf385_2_x, %bf385_2_y
  %bf385_2_r = call i16 @bridge_bftrunc(float %bf385_2_s)
  %bf385_3_a0 = extractelement <4 x i16> %v368, i32 3
  %bf385_3_a1 = extractelement <4 x i16> %v367, i32 3
  %bf385_3_x = call float @bridge_bfext(i16 %bf385_3_a0)
  %bf385_3_y = call float @bridge_bfext(i16 %bf385_3_a1)
  %bf385_3_s = fadd float %bf385_3_x, %bf385_3_y
  %bf385_3_r = call i16 @bridge_bftrunc(float %bf385_3_s)
  %bf385_v0 = insertelement <4 x i16> undef, i16 %bf385_0_r, i32 0
  %bf385_v1 = insertelement <4 x i16> %bf385_v0, i16 %bf385_1_r, i32 1
  %bf385_v2 = insertelement <4 x i16> %bf385_v1, i16 %bf385_2_r, i32 2
  %v369 = insertelement <4 x i16> %bf385_v2, i16 %bf385_3_r, i32 3
  %v370 = insertelement <4 x float> undef, float %v289, i64 0
  %v371 = insertelement <4 x float> %v370, float %v290, i64 1
  %v372 = insertelement <4 x float> %v371, float %v299, i64 2
  %v373 = insertelement <4 x float> %v372, float %v300, i64 3
  %bf390_0_a0 = extractelement <4 x float> %v373, i32 0
  %bf390_0_r = call i16 @bridge_bftrunc(float %bf390_0_a0)
  %bf390_1_a0 = extractelement <4 x float> %v373, i32 1
  %bf390_1_r = call i16 @bridge_bftrunc(float %bf390_1_a0)
  %bf390_2_a0 = extractelement <4 x float> %v373, i32 2
  %bf390_2_r = call i16 @bridge_bftrunc(float %bf390_2_a0)
  %bf390_3_a0 = extractelement <4 x float> %v373, i32 3
  %bf390_3_r = call i16 @bridge_bftrunc(float %bf390_3_a0)
  %bf390_v0 = insertelement <4 x i16> undef, i16 %bf390_0_r, i32 0
  %bf390_v1 = insertelement <4 x i16> %bf390_v0, i16 %bf390_1_r, i32 1
  %bf390_v2 = insertelement <4 x i16> %bf390_v1, i16 %bf390_2_r, i32 2
  %v374 = insertelement <4 x i16> %bf390_v2, i16 %bf390_3_r, i32 3
  %v375 = shufflevector <2 x i16> %v345, <2 x i16> %v358, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %bf392_0_a0 = extractelement <4 x i16> %v375, i32 0
  %bf392_0_a1 = extractelement <4 x i16> %v374, i32 0
  %bf392_0_x = call float @bridge_bfext(i16 %bf392_0_a0)
  %bf392_0_y = call float @bridge_bfext(i16 %bf392_0_a1)
  %bf392_0_s = fadd float %bf392_0_x, %bf392_0_y
  %bf392_0_r = call i16 @bridge_bftrunc(float %bf392_0_s)
  %bf392_1_a0 = extractelement <4 x i16> %v375, i32 1
  %bf392_1_a1 = extractelement <4 x i16> %v374, i32 1
  %bf392_1_x = call float @bridge_bfext(i16 %bf392_1_a0)
  %bf392_1_y = call float @bridge_bfext(i16 %bf392_1_a1)
  %bf392_1_s = fadd float %bf392_1_x, %bf392_1_y
  %bf392_1_r = call i16 @bridge_bftrunc(float %bf392_1_s)
  %bf392_2_a0 = extractelement <4 x i16> %v375, i32 2
  %bf392_2_a1 = extractelement <4 x i16> %v374, i32 2
  %bf392_2_x = call float @bridge_bfext(i16 %bf392_2_a0)
  %bf392_2_y = call float @bridge_bfext(i16 %bf392_2_a1)
  %bf392_2_s = fadd float %bf392_2_x, %bf392_2_y
  %bf392_2_r = call i16 @bridge_bftrunc(float %bf392_2_s)
  %bf392_3_a0 = extractelement <4 x i16> %v375, i32 3
  %bf392_3_a1 = extractelement <4 x i16> %v374, i32 3
  %bf392_3_x = call float @bridge_bfext(i16 %bf392_3_a0)
  %bf392_3_y = call float @bridge_bfext(i16 %bf392_3_a1)
  %bf392_3_s = fadd float %bf392_3_x, %bf392_3_y
  %bf392_3_r = call i16 @bridge_bftrunc(float %bf392_3_s)
  %bf392_v0 = insertelement <4 x i16> undef, i16 %bf392_0_r, i32 0
  %bf392_v1 = insertelement <4 x i16> %bf392_v0, i16 %bf392_1_r, i32 1
  %bf392_v2 = insertelement <4 x i16> %bf392_v1, i16 %bf392_2_r, i32 2
  %v376 = insertelement <4 x i16> %bf392_v2, i16 %bf392_3_r, i32 3
  %v377 = insertelement <4 x float> undef, float %v292, i64 0
  %v378 = insertelement <4 x float> %v377, float %v293, i64 1
  %v379 = insertelement <4 x float> %v378, float %v302, i64 2
  %v380 = insertelement <4 x float> %v379, float %v303, i64 3
  %bf397_0_a0 = extractelement <4 x float> %v380, i32 0
  %bf397_0_r = call i16 @bridge_bftrunc(float %bf397_0_a0)
  %bf397_1_a0 = extractelement <4 x float> %v380, i32 1
  %bf397_1_r = call i16 @bridge_bftrunc(float %bf397_1_a0)
  %bf397_2_a0 = extractelement <4 x float> %v380, i32 2
  %bf397_2_r = call i16 @bridge_bftrunc(float %bf397_2_a0)
  %bf397_3_a0 = extractelement <4 x float> %v380, i32 3
  %bf397_3_r = call i16 @bridge_bftrunc(float %bf397_3_a0)
  %bf397_v0 = insertelement <4 x i16> undef, i16 %bf397_0_r, i32 0
  %bf397_v1 = insertelement <4 x i16> %bf397_v0, i16 %bf397_1_r, i32 1
  %bf397_v2 = insertelement <4 x i16> %bf397_v1, i16 %bf397_2_r, i32 2
  %v381 = insertelement <4 x i16> %bf397_v2, i16 %bf397_3_r, i32 3
  %v382 = shufflevector <2 x i16> %v347, <2 x i16> %v360, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %bf399_0_a0 = extractelement <4 x i16> %v382, i32 0
  %bf399_0_a1 = extractelement <4 x i16> %v381, i32 0
  %bf399_0_x = call float @bridge_bfext(i16 %bf399_0_a0)
  %bf399_0_y = call float @bridge_bfext(i16 %bf399_0_a1)
  %bf399_0_s = fadd float %bf399_0_x, %bf399_0_y
  %bf399_0_r = call i16 @bridge_bftrunc(float %bf399_0_s)
  %bf399_1_a0 = extractelement <4 x i16> %v382, i32 1
  %bf399_1_a1 = extractelement <4 x i16> %v381, i32 1
  %bf399_1_x = call float @bridge_bfext(i16 %bf399_1_a0)
  %bf399_1_y = call float @bridge_bfext(i16 %bf399_1_a1)
  %bf399_1_s = fadd float %bf399_1_x, %bf399_1_y
  %bf399_1_r = call i16 @bridge_bftrunc(float %bf399_1_s)
  %bf399_2_a0 = extractelement <4 x i16> %v382, i32 2
  %bf399_2_a1 = extractelement <4 x i16> %v381, i32 2
  %bf399_2_x = call float @bridge_bfext(i16 %bf399_2_a0)
  %bf399_2_y = call float @bridge_bfext(i16 %bf399_2_a1)
  %bf399_2_s = fadd float %bf399_2_x, %bf399_2_y
  %bf399_2_r = call i16 @bridge_bftrunc(float %bf399_2_s)
  %bf399_3_a0 = extractelement <4 x i16> %v382, i32 3
  %bf399_3_a1 = extractelement <4 x i16> %v381, i32 3
  %bf399_3_x = call float @bridge_bfext(i16 %bf399_3_a0)
  %bf399_3_y = call float @bridge_bfext(i16 %bf399_3_a1)
  %bf399_3_s = fadd float %bf399_3_x, %bf399_3_y
  %bf399_3_r = call i16 @bridge_bftrunc(float %bf399_3_s)
  %bf399_v0 = insertelement <4 x i16> undef, i16 %bf399_0_r, i32 0
  %bf399_v1 = insertelement <4 x i16> %bf399_v0, i16 %bf399_1_r, i32 1
  %bf399_v2 = insertelement <4 x i16> %bf399_v1, i16 %bf399_2_r, i32 2
  %v383 = insertelement <4 x i16> %bf399_v2, i16 %bf399_3_r, i32 3
  %v384 = insertelement <4 x float> undef, float %v294, i64 0
  %v385 = insertelement <4 x float> %v384, float %v295, i64 1
  %v386 = insertelement <4 x float> %v385, float %v304, i64 2
  %v387 = insertelement <4 x float> %v386, float %v305, i64 3
  %bf404_0_a0 = extractelement <4 x float> %v387, i32 0
  %bf404_0_r = call i16 @bridge_bftrunc(float %bf404_0_a0)
  %bf404_1_a0 = extractelement <4 x float> %v387, i32 1
  %bf404_1_r = call i16 @bridge_bftrunc(float %bf404_1_a0)
  %bf404_2_a0 = extractelement <4 x float> %v387, i32 2
  %bf404_2_r = call i16 @bridge_bftrunc(float %bf404_2_a0)
  %bf404_3_a0 = extractelement <4 x float> %v387, i32 3
  %bf404_3_r = call i16 @bridge_bftrunc(float %bf404_3_a0)
  %bf404_v0 = insertelement <4 x i16> undef, i16 %bf404_0_r, i32 0
  %bf404_v1 = insertelement <4 x i16> %bf404_v0, i16 %bf404_1_r, i32 1
  %bf404_v2 = insertelement <4 x i16> %bf404_v1, i16 %bf404_2_r, i32 2
  %v388 = insertelement <4 x i16> %bf404_v2, i16 %bf404_3_r, i32 3
  %v389 = shufflevector <2 x i16> %v349, <2 x i16> %v362, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %bf406_0_a0 = extractelement <4 x i16> %v389, i32 0
  %bf406_0_a1 = extractelement <4 x i16> %v388, i32 0
  %bf406_0_x = call float @bridge_bfext(i16 %bf406_0_a0)
  %bf406_0_y = call float @bridge_bfext(i16 %bf406_0_a1)
  %bf406_0_s = fadd float %bf406_0_x, %bf406_0_y
  %bf406_0_r = call i16 @bridge_bftrunc(float %bf406_0_s)
  %bf406_1_a0 = extractelement <4 x i16> %v389, i32 1
  %bf406_1_a1 = extractelement <4 x i16> %v388, i32 1
  %bf406_1_x = call float @bridge_bfext(i16 %bf406_1_a0)
  %bf406_1_y = call float @bridge_bfext(i16 %bf406_1_a1)
  %bf406_1_s = fadd float %bf406_1_x, %bf406_1_y
  %bf406_1_r = call i16 @bridge_bftrunc(float %bf406_1_s)
  %bf406_2_a0 = extractelement <4 x i16> %v389, i32 2
  %bf406_2_a1 = extractelement <4 x i16> %v388, i32 2
  %bf406_2_x = call float @bridge_bfext(i16 %bf406_2_a0)
  %bf406_2_y = call float @bridge_bfext(i16 %bf406_2_a1)
  %bf406_2_s = fadd float %bf406_2_x, %bf406_2_y
  %bf406_2_r = call i16 @bridge_bftrunc(float %bf406_2_s)
  %bf406_3_a0 = extractelement <4 x i16> %v389, i32 3
  %bf406_3_a1 = extractelement <4 x i16> %v388, i32 3
  %bf406_3_x = call float @bridge_bfext(i16 %bf406_3_a0)
  %bf406_3_y = call float @bridge_bfext(i16 %bf406_3_a1)
  %bf406_3_s = fadd float %bf406_3_x, %bf406_3_y
  %bf406_3_r = call i16 @bridge_bftrunc(float %bf406_3_s)
  %bf406_v0 = insertelement <4 x i16> undef, i16 %bf406_0_r, i32 0
  %bf406_v1 = insertelement <4 x i16> %bf406_v0, i16 %bf406_1_r, i32 1
  %bf406_v2 = insertelement <4 x i16> %bf406_v1, i16 %bf406_2_r, i32 2
  %v390 = insertelement <4 x i16> %bf406_v2, i16 %bf406_3_r, i32 3
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v391 = shl nuw nsw i32 %v335, 3
  %v392 = shl nuw nsw i32 %v17, 2
  %v393 = and i32 %v392, 48
  %v394 = and i32 %v17, 1
  %v395 = icmp eq i32 %v394, 0
  %v396 = select i1 %v395, i32 0, i32 1088
  %v397 = and i32 %v17, 2
  %v398 = icmp eq i32 %v397, 0
  %v399 = select i1 %v398, i32 0, i32 2056
  %v400 = shl nuw nsw i32 %v197, 1
  %v401 = or  i32 %v391, %v393
  %v402 = xor i32 %v396, %v400
  %v403 = or  i32 %v402, %v401
  %v404 = or  i32 %v403, %v399
  %v405 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v404
  %bridge_ptr576 = bitcast i8 addrspace(3)* %v405 to <4 x i16> addrspace(3)*
  store <4 x i16> %v369, <4 x i16> addrspace(3)* %bridge_ptr576, align 8
  %v406 = getelementptr inbounds i8, i8 addrspace(3)* %v405, i32 256
  %bridge_ptr578 = bitcast i8 addrspace(3)* %v406 to <4 x i16> addrspace(3)*
  store <4 x i16> %v376, <4 x i16> addrspace(3)* %bridge_ptr578, align 8
  %v407 = xor i32 %v404, 8
  %v408 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v407
  %bridge_ptr581 = bitcast i8 addrspace(3)* %v408 to <4 x i16> addrspace(3)*
  store <4 x i16> %v383, <4 x i16> addrspace(3)* %bridge_ptr581, align 8
  %v409 = getelementptr inbounds i8, i8 addrspace(3)* %v408, i32 256
  %bridge_ptr583 = bitcast i8 addrspace(3)* %v409 to <4 x i16> addrspace(3)*
  store <4 x i16> %v390, <4 x i16> addrspace(3)* %bridge_ptr583, align 8
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v410 = shl nuw nsw i32 %v17, 3
  %v411 = and i32 %v410, 896
  %v412 = and i32 %v392, 56
  %v413 = shl nuw nsw i32 %v394, 6
  %v414 = or  i32 %v411, %v413
  %v415 = or  i32 %v414, %v412
  %v416 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v415
  %v417 = getelementptr inbounds i8, i8 addrspace(3)* %v416, i32 4
  %v418 = xor i32 %v415, 1088
  %v419 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v418
  %v420 = getelementptr inbounds i8, i8 addrspace(3)* %v419, i32 4
  %v421 = xor i32 %v415, 2056
  %v422 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v421
  %v423 = getelementptr inbounds i8, i8 addrspace(3)* %v422, i32 4
  %v424 = xor i32 %v415, 3144
  %v425 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v424
  %v426 = getelementptr inbounds i8, i8 addrspace(3)* %v425, i32 4
  %bridge_ptr602 = bitcast i8 addrspace(3)* %v425 to <2 x i16> addrspace(3)*
  %v427 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr602, align 8
  %bf450_0_a0 = extractelement <2 x i16> %v427, i32 0
  %bf450_0_r = call float @bridge_bfext(i16 %bf450_0_a0)
  %bf450_1_a0 = extractelement <2 x i16> %v427, i32 1
  %bf450_1_r = call float @bridge_bfext(i16 %bf450_1_a0)
  %bf450_v0 = insertelement <2 x float> undef, float %bf450_0_r, i32 0
  %v428 = insertelement <2 x float> %bf450_v0, float %bf450_1_r, i32 1
  %v429 = fmul <2 x float> %v428, <float 5.000000e-01, float 5.000000e-01>
  %v430 = extractelement <2 x float> %v428, i64 0
  %v431 = fmul float %v430, %v430
  %v432 = extractelement <2 x float> %v428, i64 1
  %v433 = fmul float %v432, %v432
  %v434 = fmul float %v431, %v430
  %v435 = fmul float %v433, %v432
  %v436 = fmul float %v434, 0x3FA6E4E260000000
  %v437 = fmul float %v435, 0x3FA6E4E260000000
  %v438 = fadd float %v436, %v430
  %v439 = fadd float %v437, %v432
  %v440 = fmul float %v438, 0x3FE9884540000000
  %v441 = fmul float %v439, 0x3FE9884540000000
  %bridge_ptr622 = bitcast i8 addrspace(3)* %v422 to <2 x i16> addrspace(3)*
  %v442 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr622, align 8
  %bf465_0_a0 = extractelement <2 x i16> %v442, i32 0
  %bf465_0_r = call float @bridge_bfext(i16 %bf465_0_a0)
  %bf465_1_a0 = extractelement <2 x i16> %v442, i32 1
  %bf465_1_r = call float @bridge_bfext(i16 %bf465_1_a0)
  %bf465_v0 = insertelement <2 x float> undef, float %bf465_0_r, i32 0
  %v443 = insertelement <2 x float> %bf465_v0, float %bf465_1_r, i32 1
  %v444 = fmul <2 x float> %v443, <float 5.000000e-01, float 5.000000e-01>
  %v445 = extractelement <2 x float> %v443, i64 0
  %v446 = fmul float %v445, %v445
  %v447 = extractelement <2 x float> %v443, i64 1
  %v448 = fmul float %v447, %v447
  %v449 = fmul float %v446, %v445
  %v450 = fmul float %v448, %v447
  %v451 = fmul float %v449, 0x3FA6E4E260000000
  %v452 = fmul float %v450, 0x3FA6E4E260000000
  %v453 = fadd float %v451, %v445
  %v454 = fadd float %v452, %v447
  %v455 = fmul float %v453, 0x3FE9884540000000
  %v456 = fmul float %v454, 0x3FE9884540000000
  %bridge_ptr642 = bitcast i8 addrspace(3)* %v419 to <2 x i16> addrspace(3)*
  %v457 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr642, align 8
  %bf480_0_a0 = extractelement <2 x i16> %v457, i32 0
  %bf480_0_r = call float @bridge_bfext(i16 %bf480_0_a0)
  %bf480_1_a0 = extractelement <2 x i16> %v457, i32 1
  %bf480_1_r = call float @bridge_bfext(i16 %bf480_1_a0)
  %bf480_v0 = insertelement <2 x float> undef, float %bf480_0_r, i32 0
  %v458 = insertelement <2 x float> %bf480_v0, float %bf480_1_r, i32 1
  %v459 = fmul <2 x float> %v458, <float 5.000000e-01, float 5.000000e-01>
  %v460 = extractelement <2 x float> %v458, i64 0
  %v461 = fmul float %v460, %v460
  %v462 = extractelement <2 x float> %v458, i64 1
  %v463 = fmul float %v462, %v462
  %v464 = fmul float %v461, %v460
  %v465 = fmul float %v463, %v462
  %v466 = fmul float %v464, 0x3FA6E4E260000000
  %v467 = fmul float %v465, 0x3FA6E4E260000000
  %v468 = fadd float %v466, %v460
  %v469 = fadd float %v467, %v462
  %v470 = fmul float %v468, 0x3FE9884540000000
  %v471 = fmul float %v469, 0x3FE9884540000000
  %bridge_ptr662 = bitcast i8 addrspace(3)* %v416 to <2 x i16> addrspace(3)*
  %v472 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr662, align 8
  %bf495_0_a0 = extractelement <2 x i16> %v472, i32 0
  %bf495_0_r = call float @bridge_bfext(i16 %bf495_0_a0)
  %bf495_1_a0 = extractelement <2 x i16> %v472, i32 1
  %bf495_1_r = call float @bridge_bfext(i16 %bf495_1_a0)
  %bf495_v0 = insertelement <2 x float> undef, float %bf495_0_r, i32 0
  %v473 = insertelement <2 x float> %bf495_v0, float %bf495_1_r, i32 1
  %v474 = fmul <2 x float> %v473, <float 5.000000e-01, float 5.000000e-01>
  %v475 = extractelement <2 x float> %v473, i64 0
  %v476 = fmul float %v475, %v475
  %v477 = extractelement <2 x float> %v473, i64 1
  %v478 = fmul float %v477, %v477
  %v479 = fmul float %v476, %v475
  %v480 = fmul float %v478, %v477
  %v481 = fmul float %v479, 0x3FA6E4E260000000
  %v482 = fmul float %v480, 0x3FA6E4E260000000
  %v483 = fadd float %v481, %v475
  %v484 = fadd float %v482, %v477
  %v485 = fmul float %v483, 0x3FE9884540000000
  %v486 = fmul float %v484, 0x3FE9884540000000
  %bridge_ptr682 = bitcast i8 addrspace(3)* %v426 to <2 x i16> addrspace(3)*
  %v487 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr682, align 4
  %bf510_0_a0 = extractelement <2 x i16> %v487, i32 0
  %bf510_0_r = call float @bridge_bfext(i16 %bf510_0_a0)
  %bf510_1_a0 = extractelement <2 x i16> %v487, i32 1
  %bf510_1_r = call float @bridge_bfext(i16 %bf510_1_a0)
  %bf510_v0 = insertelement <2 x float> undef, float %bf510_0_r, i32 0
  %v488 = insertelement <2 x float> %bf510_v0, float %bf510_1_r, i32 1
  %v489 = fmul <2 x float> %v488, <float 5.000000e-01, float 5.000000e-01>
  %v490 = extractelement <2 x float> %v488, i64 0
  %v491 = fmul float %v490, %v490
  %v492 = extractelement <2 x float> %v488, i64 1
  %v493 = fmul float %v492, %v492
  %v494 = fmul float %v491, %v490
  %v495 = fmul float %v493, %v492
  %v496 = fmul float %v494, 0x3FA6E4E260000000
  %v497 = fmul float %v495, 0x3FA6E4E260000000
  %v498 = fadd float %v496, %v490
  %v499 = fadd float %v497, %v492
  %v500 = fmul float %v498, 0x3FE9884540000000
  %v501 = fmul float %v499, 0x3FE9884540000000
  %bridge_ptr702 = bitcast i8 addrspace(3)* %v423 to <2 x i16> addrspace(3)*
  %v502 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr702, align 4
  %bf525_0_a0 = extractelement <2 x i16> %v502, i32 0
  %bf525_0_r = call float @bridge_bfext(i16 %bf525_0_a0)
  %bf525_1_a0 = extractelement <2 x i16> %v502, i32 1
  %bf525_1_r = call float @bridge_bfext(i16 %bf525_1_a0)
  %bf525_v0 = insertelement <2 x float> undef, float %bf525_0_r, i32 0
  %v503 = insertelement <2 x float> %bf525_v0, float %bf525_1_r, i32 1
  %v504 = fmul <2 x float> %v503, <float 5.000000e-01, float 5.000000e-01>
  %v505 = extractelement <2 x float> %v503, i64 0
  %v506 = fmul float %v505, %v505
  %v507 = extractelement <2 x float> %v503, i64 1
  %v508 = fmul float %v507, %v507
  %v509 = fmul float %v506, %v505
  %v510 = fmul float %v508, %v507
  %v511 = fmul float %v509, 0x3FA6E4E260000000
  %v512 = fmul float %v510, 0x3FA6E4E260000000
  %v513 = fadd float %v511, %v505
  %v514 = fadd float %v512, %v507
  %v515 = fmul float %v513, 0x3FE9884540000000
  %v516 = fmul float %v514, 0x3FE9884540000000
  %bridge_ptr722 = bitcast i8 addrspace(3)* %v420 to <2 x i16> addrspace(3)*
  %v517 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr722, align 4
  %bf540_0_a0 = extractelement <2 x i16> %v517, i32 0
  %bf540_0_r = call float @bridge_bfext(i16 %bf540_0_a0)
  %bf540_1_a0 = extractelement <2 x i16> %v517, i32 1
  %bf540_1_r = call float @bridge_bfext(i16 %bf540_1_a0)
  %bf540_v0 = insertelement <2 x float> undef, float %bf540_0_r, i32 0
  %v518 = insertelement <2 x float> %bf540_v0, float %bf540_1_r, i32 1
  %v519 = fmul <2 x float> %v518, <float 5.000000e-01, float 5.000000e-01>
  %v520 = extractelement <2 x float> %v518, i64 0
  %v521 = fmul float %v520, %v520
  %v522 = extractelement <2 x float> %v518, i64 1
  %v523 = fmul float %v522, %v522
  %v524 = fmul float %v521, %v520
  %v525 = fmul float %v523, %v522
  %v526 = fmul float %v524, 0x3FA6E4E260000000
  %v527 = fmul float %v525, 0x3FA6E4E260000000
  %v528 = fadd float %v526, %v520
  %v529 = fadd float %v527, %v522
  %v530 = fmul float %v528, 0x3FE9884540000000
  %v531 = fmul float %v529, 0x3FE9884540000000
  %bridge_ptr742 = bitcast i8 addrspace(3)* %v417 to <2 x i16> addrspace(3)*
  %v532 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr742, align 4
  %bf555_0_a0 = extractelement <2 x i16> %v532, i32 0
  %bf555_0_r = call float @bridge_bfext(i16 %bf555_0_a0)
  %bf555_1_a0 = extractelement <2 x i16> %v532, i32 1
  %bf555_1_r = call float @bridge_bfext(i16 %bf555_1_a0)
  %bf555_v0 = insertelement <2 x float> undef, float %bf555_0_r, i32 0
  %v533 = insertelement <2 x float> %bf555_v0, float %bf555_1_r, i32 1
  %v534 = fmul <2 x float> %v533, <float 5.000000e-01, float 5.000000e-01>
  %v535 = extractelement <2 x float> %v533, i64 0
  %v536 = fmul float %v535, %v535
  %v537 = extractelement <2 x float> %v533, i64 1
  %v538 = fmul float %v537, %v537
  %v539 = fmul float %v536, %v535
  %v540 = fmul float %v538, %v537
  %v541 = fmul float %v539, 0x3FA6E4E260000000
  %v542 = fmul float %v540, 0x3FA6E4E260000000
  %v543 = fadd float %v541, %v535
  %v544 = fadd float %v542, %v537
  %v545 = fmul float %v543, 0x3FE9884540000000
  %v546 = fmul float %v544, 0x3FE9884540000000
  %v547 = tail call float @f06_tanh(float %v485)
  %v548 = tail call float @f06_tanh(float %v486)
  %v549 = tail call float @f06_tanh(float %v470)
  %v550 = tail call float @f06_tanh(float %v471)
  %v551 = tail call float @f06_tanh(float %v455)
  %v552 = tail call float @f06_tanh(float %v456)
  %v553 = tail call float @f06_tanh(float %v440)
  %v554 = tail call float @f06_tanh(float %v441)
  %v555 = tail call float @f06_tanh(float %v545)
  %v556 = tail call float @f06_tanh(float %v546)
  %v557 = tail call float @f06_tanh(float %v530)
  %v558 = tail call float @f06_tanh(float %v531)
  %v559 = tail call float @f06_tanh(float %v515)
  %v560 = tail call float @f06_tanh(float %v516)
  %v561 = tail call float @f06_tanh(float %v500)
  %v562 = tail call float @f06_tanh(float %v501)
  %v563 = insertelement <2 x float> undef, float %v547, i64 0
  %v564 = insertelement <2 x float> %v563, float %v548, i64 1
  %v565 = fadd <2 x float> %v564, <float 1.000000e+00, float 1.000000e+00>
  %v566 = insertelement <2 x float> undef, float %v549, i64 0
  %v567 = insertelement <2 x float> %v566, float %v550, i64 1
  %v568 = fadd <2 x float> %v567, <float 1.000000e+00, float 1.000000e+00>
  %v569 = insertelement <2 x float> undef, float %v551, i64 0
  %v570 = insertelement <2 x float> %v569, float %v552, i64 1
  %v571 = fadd <2 x float> %v570, <float 1.000000e+00, float 1.000000e+00>
  %v572 = insertelement <2 x float> undef, float %v553, i64 0
  %v573 = insertelement <2 x float> %v572, float %v554, i64 1
  %v574 = fadd <2 x float> %v573, <float 1.000000e+00, float 1.000000e+00>
  %v575 = insertelement <2 x float> undef, float %v555, i64 0
  %v576 = insertelement <2 x float> %v575, float %v556, i64 1
  %v577 = fadd <2 x float> %v576, <float 1.000000e+00, float 1.000000e+00>
  %v578 = insertelement <2 x float> undef, float %v557, i64 0
  %v579 = insertelement <2 x float> %v578, float %v558, i64 1
  %v580 = fadd <2 x float> %v579, <float 1.000000e+00, float 1.000000e+00>
  %v581 = insertelement <2 x float> undef, float %v559, i64 0
  %v582 = insertelement <2 x float> %v581, float %v560, i64 1
  %v583 = fadd <2 x float> %v582, <float 1.000000e+00, float 1.000000e+00>
  %v584 = insertelement <2 x float> undef, float %v561, i64 0
  %v585 = insertelement <2 x float> %v584, float %v562, i64 1
  %v586 = fadd <2 x float> %v585, <float 1.000000e+00, float 1.000000e+00>
  %v587 = fmul <2 x float> %v474, %v565
  %v588 = fmul <2 x float> %v459, %v568
  %v589 = fmul <2 x float> %v444, %v571
  %v590 = fmul <2 x float> %v429, %v574
  %v591 = fmul <2 x float> %v534, %v577
  %v592 = fmul <2 x float> %v519, %v580
  %v593 = fmul <2 x float> %v504, %v583
  %v594 = fmul <2 x float> %v489, %v586
  %bf617_0_a0 = extractelement <2 x float> %v587, i32 0
  %bf617_0_r = call i16 @bridge_bftrunc(float %bf617_0_a0)
  %bf617_1_a0 = extractelement <2 x float> %v587, i32 1
  %bf617_1_r = call i16 @bridge_bftrunc(float %bf617_1_a0)
  %bf617_v0 = insertelement <2 x i16> undef, i16 %bf617_0_r, i32 0
  %v595 = insertelement <2 x i16> %bf617_v0, i16 %bf617_1_r, i32 1
  %bf618_0_a0 = extractelement <2 x float> %v588, i32 0
  %bf618_0_r = call i16 @bridge_bftrunc(float %bf618_0_a0)
  %bf618_1_a0 = extractelement <2 x float> %v588, i32 1
  %bf618_1_r = call i16 @bridge_bftrunc(float %bf618_1_a0)
  %bf618_v0 = insertelement <2 x i16> undef, i16 %bf618_0_r, i32 0
  %v596 = insertelement <2 x i16> %bf618_v0, i16 %bf618_1_r, i32 1
  %bf619_0_a0 = extractelement <2 x float> %v589, i32 0
  %bf619_0_r = call i16 @bridge_bftrunc(float %bf619_0_a0)
  %bf619_1_a0 = extractelement <2 x float> %v589, i32 1
  %bf619_1_r = call i16 @bridge_bftrunc(float %bf619_1_a0)
  %bf619_v0 = insertelement <2 x i16> undef, i16 %bf619_0_r, i32 0
  %v597 = insertelement <2 x i16> %bf619_v0, i16 %bf619_1_r, i32 1
  %bf620_0_a0 = extractelement <2 x float> %v590, i32 0
  %bf620_0_r = call i16 @bridge_bftrunc(float %bf620_0_a0)
  %bf620_1_a0 = extractelement <2 x float> %v590, i32 1
  %bf620_1_r = call i16 @bridge_bftrunc(float %bf620_1_a0)
  %bf620_v0 = insertelement <2 x i16> undef, i16 %bf620_0_r, i32 0
  %v598 = insertelement <2 x i16> %bf620_v0, i16 %bf620_1_r, i32 1
  %bf621_0_a0 = extractelement <2 x float> %v591, i32 0
  %bf621_0_r = call i16 @bridge_bftrunc(float %bf621_0_a0)
  %bf621_1_a0 = extractelement <2 x float> %v591, i32 1
  %bf621_1_r = call i16 @bridge_bftrunc(float %bf621_1_a0)
  %bf621_v0 = insertelement <2 x i16> undef, i16 %bf621_0_r, i32 0
  %v599 = insertelement <2 x i16> %bf621_v0, i16 %bf621_1_r, i32 1
  %bf622_0_a0 = extractelement <2 x float> %v592, i32 0
  %bf622_0_r = call i16 @bridge_bftrunc(float %bf622_0_a0)
  %bf622_1_a0 = extractelement <2 x float> %v592, i32 1
  %bf622_1_r = call i16 @bridge_bftrunc(float %bf622_1_a0)
  %bf622_v0 = insertelement <2 x i16> undef, i16 %bf622_0_r, i32 0
  %v600 = insertelement <2 x i16> %bf622_v0, i16 %bf622_1_r, i32 1
  %bf623_0_a0 = extractelement <2 x float> %v593, i32 0
  %bf623_0_r = call i16 @bridge_bftrunc(float %bf623_0_a0)
  %bf623_1_a0 = extractelement <2 x float> %v593, i32 1
  %bf623_1_r = call i16 @bridge_bftrunc(float %bf623_1_a0)
  %bf623_v0 = insertelement <2 x i16> undef, i16 %bf623_0_r, i32 0
  %v601 = insertelement <2 x i16> %bf623_v0, i16 %bf623_1_r, i32 1
  %bf624_0_a0 = extractelement <2 x float> %v594, i32 0
  %bf624_0_r = call i16 @bridge_bftrunc(float %bf624_0_a0)
  %bf624_1_a0 = extractelement <2 x float> %v594, i32 1
  %bf624_1_r = call i16 @bridge_bftrunc(float %bf624_1_a0)
  %bf624_v0 = insertelement <2 x i16> undef, i16 %bf624_0_r, i32 0
  %v602 = insertelement <2 x i16> %bf624_v0, i16 %bf624_1_r, i32 1
  %v603 = shl i32 %v28, 10
  %v604 = shl i32 %v29, 10
  %v605 = add i32 %v603, %v33
  %v606 = add i32 %v604, %v33
  %v607 = sext i32 %v605 to i64
  %bridge_in863 = bitcast i8 addrspace(1)* %v3 to i16 addrspace(1)*
  %bridge_gep863 = getelementptr i16, i16 addrspace(1)* %bridge_in863, i64 %v607
  %v608 = bitcast i16 addrspace(1)* %bridge_gep863 to i8 addrspace(1)*
  %v609 = sext i32 %v606 to i64
  %bridge_in865 = bitcast i8 addrspace(1)* %v3 to i16 addrspace(1)*
  %bridge_gep865 = getelementptr i16, i16 addrspace(1)* %bridge_in865, i64 %v609
  %v610 = bitcast i16 addrspace(1)* %bridge_gep865 to i8 addrspace(1)*
  %v611 = bitcast <2 x i16> %v595 to i32
  %v612 = bitcast <2 x i16> %v596 to i32
  %v613 = bitcast <2 x i16> %v597 to i32
  %v614 = bitcast <2 x i16> %v598 to i32
  tail call void asm sideeffect "@$5 st.global.v4.b32 [ $4 + 0 ], { $0, $1, $2, $3 };", "r,r,r,r,l,b"(i32 %v611, i32 %v612, i32 %v613, i32 %v614, i8 addrspace(1)* %v608, i1 %v308) #5
  %v615 = bitcast <2 x i16> %v599 to i32
  %v616 = bitcast <2 x i16> %v600 to i32
  %v617 = bitcast <2 x i16> %v601 to i32
  %v618 = bitcast <2 x i16> %v602 to i32
  tail call void asm sideeffect "@$5 st.global.v4.b32 [ $4 + 0 ], { $0, $1, $2, $3 };", "r,r,r,r,l,b"(i32 %v615, i32 %v616, i32 %v617, i32 %v618, i8 addrspace(1)* %v610, i1 %v308) #5
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body to i8*)], section "llvm.metadata"
!nvvm.annotations = !{!1, !2}
!1 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body, !"kernel", i32 1}
!2 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body, !"reqntidx", i32 128}
