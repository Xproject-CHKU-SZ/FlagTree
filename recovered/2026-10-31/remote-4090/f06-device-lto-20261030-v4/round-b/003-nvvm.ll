target triple = "nvptx64-nvidia-cuda"
; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-p3:32:32-p4:32:32-p5:32:32-p6:32:32-p7:32:32-i64:64-i128:128-i256:256-v16:16-v32:32-n16:32:64"

@global_smem = external addrspace(3) global [0 x i8], align 16

declare float @f06_tanh(float) local_unnamed_addr

define ptx_kernel void @f06_gelu_body(i8 addrspace(1)* %v0, i8 addrspace(1)* %v1, i8 addrspace(1)* %v2, i8 addrspace(1)* %v3, i8 addrspace(1)* readnone  %v4, i8 addrspace(1)* readnone  %v5) local_unnamed_addr #0 {
  %v7 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %v8 = lshr i32 %v7, 1
  %v9 = and i32 %v8, 1073741816
  %v10 = sub nsw i32 1, %v9
  %v11 = srem i32 %v7, %v10
  %v12 = add nuw nsw i32 %v11, %v9
  %v13 = and i32 %v7, 15
  %v14 = sdiv i32 %v13, %v10
  %v15 = icmp sgt i32 %v14, -1
  tail call void @llvm.assume(i1 %v15)
  %v16 = shl i32 %v12, 4
  %v17 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %v18 = and i32 %v17, 127
  %v19 = and i32 %v17, 120
  %v20 = lshr exact i32 %v19, 3
  %v21 = or  i32 %v16, %v20
  %v22 = shl nuw nsw i32 %v14, 6
  %v23 = and i32 %v17, 7
  %v24 = shl nuw nsw i32 %v23, 3
  %v25 = or  i32 %v22, %v24
  %v26 = srem i32 %v21, 16
  %v27 = and i32 %v25, 120
  %v28 = shl nuw nsw i32 %v23, 2
  %v29 = shl nsw i32 %v26, 6
  %v30 = or  i32 %v29, %v28
  %v31 = sext i32 %v30 to i64
  %bridge_in36 = bitcast i8 addrspace(1)* %v0 to i16 addrspace(1)*
  %bridge_gep36 = getelementptr i16, i16 addrspace(1)* %bridge_in36, i64 %v31
  %v32 = bitcast i16 addrspace(1)* %bridge_gep36 to i8 addrspace(1)*
  %v33 = shl nuw nsw i32 %v18, 3
  %v34 = and i32 %v17, 48
  %v35 = xor i32 %v33, %v34
  %v36 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 8192), i32 %v35
  tail call void asm sideeffect "cp.async.ca.shared.global [ $0 + 0 ], [ $1 + 0 ], 0x8, 0x8;", "r,l"(i8 addrspace(3)* %v36, i8 addrspace(1)* %v32) #3
  tail call void asm sideeffect "cp.async.commit_group;", "~{memory}"()
  %v37 = shl nuw nsw i32 %v19, 4
  %v38 = or  i32 %v27, %v37
  %v39 = zext  i32 %v38 to i64
  %bridge_in46 = bitcast i8 addrspace(1)* %v1 to i16 addrspace(1)*
  %bridge_gep46 = getelementptr i16, i16 addrspace(1)* %bridge_in46, i64 %v39
  %v40 = bitcast i16 addrspace(1)* %bridge_gep46 to i8 addrspace(1)*
  %v41 = getelementptr i8, i8 addrspace(1)* %v40, i64 4096
  %v42 = shl nuw nsw i32 %v18, 4
  %v43 = and i32 %v17, 56
  %v44 = shl nuw nsw i32 %v43, 1
  %v45 = xor i32 %v42, %v44
  %v46 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v45
  tail call void asm sideeffect "cp.async.cg.shared.global [ $0 + 0 ], [ $1 + 0 ], 0x10, 0x10;", "r,l"(i8 addrspace(3)* %v46, i8 addrspace(1)* %v40) #3
  %v47 = or  i32 %v45, 2048
  %v48 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v47
  tail call void asm sideeffect "cp.async.cg.shared.global [ $0 + 0 ], [ $1 + 0 ], 0x10, 0x10;", "r,l"(i8 addrspace(3)* nonnull %v48, i8 addrspace(1)* %v41) #3
  tail call void asm sideeffect "cp.async.commit_group;", "~{memory}"()
  %v49 = getelementptr i8, i8 addrspace(1)* %v32, i64 64
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v50 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 9216), i32 %v35
  tail call void asm sideeffect "cp.async.ca.shared.global [ $0 + 0 ], [ $1 + 0 ], 0x8, 0x8;", "r,l"(i8 addrspace(3)* %v50, i8 addrspace(1)* %v49) #3
  tail call void asm sideeffect "cp.async.commit_group;", "~{memory}"()
  %v51 = getelementptr i8, i8 addrspace(1)* %v40, i64 8192
  %v52 = getelementptr i8, i8 addrspace(1)* %v40, i64 12288
  %v53 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 4096), i32 %v45
  tail call void asm sideeffect "cp.async.cg.shared.global [ $0 + 0 ], [ $1 + 0 ], 0x10, 0x10;", "r,l"(i8 addrspace(3)* %v53, i8 addrspace(1)* %v51) #3
  %v54 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 4096), i32 %v47
  tail call void asm sideeffect "cp.async.cg.shared.global [ $0 + 0 ], [ $1 + 0 ], 0x10, 0x10;", "r,l"(i8 addrspace(3)* nonnull %v54, i8 addrspace(1)* %v52) #3
  tail call void asm sideeffect "cp.async.commit_group;", "~{memory}"()
  tail call void asm sideeffect "cp.async.wait_group 0;", "~{memory}"()
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v55 = and i32 %v17, 15
  %v56 = shl nuw nsw i32 %v55, 6
  %v57 = shl nuw nsw i32 %v17, 3
  %v58 = and i32 %v57, 48
  %v59 = and i32 %v17, 16
  %v60 = icmp eq i32 %v59, 0
  %v61 = xor i32 %v58, %v59
  %v62 = or  i32 %v61, %v56
  %v63 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 8192), i32 %v62
  %v64 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v63)
  %v65 = extractvalue { i32, i32, i32, i32 } %v64, 0
  %v66 = extractvalue { i32, i32, i32, i32 } %v64, 1
  %v67 = extractvalue { i32, i32, i32, i32 } %v64, 2
  %v68 = extractvalue { i32, i32, i32, i32 } %v64, 3
  %v69 = xor i32 %v62, 32
  %v70 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 8192), i32 %v69
  %v71 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v70)
  %v72 = extractvalue { i32, i32, i32, i32 } %v71, 0
  %v73 = extractvalue { i32, i32, i32, i32 } %v71, 1
  %v74 = extractvalue { i32, i32, i32, i32 } %v71, 2
  %v75 = extractvalue { i32, i32, i32, i32 } %v71, 3
  %v76 = shl nuw nsw i32 %v17, 7
  %v77 = and i32 %v76, 3968
  %v78 = shl nuw nsw i32 %v23, 4
  %v79 = and i32 %v17, 96
  %v80 = lshr exact i32 %v79, 1
  %v81 = xor i32 %v78, %v80
  %v82 = or  i32 %v81, %v77
  %v83 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v82
  %v84 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.trans.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v83)
  %v85 = extractvalue { i32, i32, i32, i32 } %v84, 0
  %v86 = extractvalue { i32, i32, i32, i32 } %v84, 1
  %v87 = extractvalue { i32, i32, i32, i32 } %v84, 2
  %v88 = extractvalue { i32, i32, i32, i32 } %v84, 3
  %v89 = xor i32 %v82, 64
  %v90 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v89
  %v91 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.trans.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v90)
  %v92 = extractvalue { i32, i32, i32, i32 } %v91, 0
  %v93 = extractvalue { i32, i32, i32, i32 } %v91, 1
  %v94 = extractvalue { i32, i32, i32, i32 } %v91, 2
  %v95 = extractvalue { i32, i32, i32, i32 } %v91, 3
  %v96 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 %v65, i32 %v66, i32 %v67, i32 %v68, i32 %v85, i32 %v86) #3
  %v97 = extractvalue { float, float, float, float } %v96, 0
  %v98 = extractvalue { float, float, float, float } %v96, 1
  %v99 = extractvalue { float, float, float, float } %v96, 2
  %v100 = extractvalue { float, float, float, float } %v96, 3
  %v101 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 %v65, i32 %v66, i32 %v67, i32 %v68, i32 %v92, i32 %v93) #3
  %v102 = extractvalue { float, float, float, float } %v101, 0
  %v103 = extractvalue { float, float, float, float } %v101, 1
  %v104 = extractvalue { float, float, float, float } %v101, 2
  %v105 = extractvalue { float, float, float, float } %v101, 3
  %v106 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v97, float %v98, float %v99, float %v100, i32 %v72, i32 %v73, i32 %v74, i32 %v75, i32 %v87, i32 %v88) #3
  %v107 = extractvalue { float, float, float, float } %v106, 0
  %v108 = extractvalue { float, float, float, float } %v106, 1
  %v109 = extractvalue { float, float, float, float } %v106, 2
  %v110 = extractvalue { float, float, float, float } %v106, 3
  %v111 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v102, float %v103, float %v104, float %v105, i32 %v72, i32 %v73, i32 %v74, i32 %v75, i32 %v94, i32 %v95) #3
  %v112 = extractvalue { float, float, float, float } %v111, 0
  %v113 = extractvalue { float, float, float, float } %v111, 1
  %v114 = extractvalue { float, float, float, float } %v111, 2
  %v115 = extractvalue { float, float, float, float } %v111, 3
  %v116 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 9216), i32 %v62
  %v117 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v116)
  %v118 = extractvalue { i32, i32, i32, i32 } %v117, 0
  %v119 = extractvalue { i32, i32, i32, i32 } %v117, 1
  %v120 = extractvalue { i32, i32, i32, i32 } %v117, 2
  %v121 = extractvalue { i32, i32, i32, i32 } %v117, 3
  %v122 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 9216), i32 %v69
  %v123 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v122)
  %v124 = extractvalue { i32, i32, i32, i32 } %v123, 0
  %v125 = extractvalue { i32, i32, i32, i32 } %v123, 1
  %v126 = extractvalue { i32, i32, i32, i32 } %v123, 2
  %v127 = extractvalue { i32, i32, i32, i32 } %v123, 3
  %v128 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 4096), i32 %v82
  %v129 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.trans.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v128)
  %v130 = extractvalue { i32, i32, i32, i32 } %v129, 0
  %v131 = extractvalue { i32, i32, i32, i32 } %v129, 1
  %v132 = extractvalue { i32, i32, i32, i32 } %v129, 2
  %v133 = extractvalue { i32, i32, i32, i32 } %v129, 3
  %v134 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 4096), i32 %v89
  %v135 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.trans.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v134)
  %v136 = extractvalue { i32, i32, i32, i32 } %v135, 0
  %v137 = extractvalue { i32, i32, i32, i32 } %v135, 1
  %v138 = extractvalue { i32, i32, i32, i32 } %v135, 2
  %v139 = extractvalue { i32, i32, i32, i32 } %v135, 3
  %v140 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v107, float %v108, float %v109, float %v110, i32 %v118, i32 %v119, i32 %v120, i32 %v121, i32 %v130, i32 %v131) #3
  %v141 = extractvalue { float, float, float, float } %v140, 0
  %v142 = extractvalue { float, float, float, float } %v140, 1
  %v143 = extractvalue { float, float, float, float } %v140, 2
  %v144 = extractvalue { float, float, float, float } %v140, 3
  %v145 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v112, float %v113, float %v114, float %v115, i32 %v118, i32 %v119, i32 %v120, i32 %v121, i32 %v136, i32 %v137) #3
  %v146 = extractvalue { float, float, float, float } %v145, 0
  %v147 = extractvalue { float, float, float, float } %v145, 1
  %v148 = extractvalue { float, float, float, float } %v145, 2
  %v149 = extractvalue { float, float, float, float } %v145, 3
  %v150 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v141, float %v142, float %v143, float %v144, i32 %v124, i32 %v125, i32 %v126, i32 %v127, i32 %v132, i32 %v133) #3
  %v151 = extractvalue { float, float, float, float } %v150, 0
  %v152 = extractvalue { float, float, float, float } %v150, 1
  %v153 = extractvalue { float, float, float, float } %v150, 2
  %v154 = extractvalue { float, float, float, float } %v150, 3
  %v155 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v146, float %v147, float %v148, float %v149, i32 %v124, i32 %v125, i32 %v126, i32 %v127, i32 %v138, i32 %v139) #3
  %v156 = extractvalue { float, float, float, float } %v155, 0
  %v157 = extractvalue { float, float, float, float } %v155, 1
  %v158 = extractvalue { float, float, float, float } %v155, 2
  %v159 = extractvalue { float, float, float, float } %v155, 3
  %v160 = icmp slt i32 %v21, 16
  %v161 = icmp  ult i32 %v14, 2
  %v162 = and i1 %v161, %v160
  %v163 = zext  i32 %v25 to i64
  %bridge_in181 = bitcast i8 addrspace(1)* %v2 to i16 addrspace(1)*
  %bridge_gep181 = getelementptr i16, i16 addrspace(1)* %bridge_in181, i64 %v163
  %v164 = bitcast i16 addrspace(1)* %bridge_gep181 to i8 addrspace(1)*
  %v165 = tail call i64 asm sideeffect "mov.u64 $0, 0x0;\0A\09createpolicy.fractional.L2::evict_last.b64 $0, 1.0;", "=l"() #3
  %v166 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09@$6 ld.global.L1::evict_last.L2::cache_hint.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ], $5;", "=r,=r,=r,=r,l,l,b"(i8 addrspace(1)* %v164, i64 %v165, i1 %v162) #3
  %v167 = extractvalue { i32, i32, i32, i32 } %v166, 0
  %v168 = extractvalue { i32, i32, i32, i32 } %v166, 1
  %v169 = extractvalue { i32, i32, i32, i32 } %v166, 2
  %v170 = extractvalue { i32, i32, i32, i32 } %v166, 3
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v171 = shl nuw nsw i32 %v43, 5
  %v172 = shl nuw nsw i32 %v19, 1
  %v173 = or  i32 %v171, %v78
  %v174 = xor i32 %v173, %v172
  %v175 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v174
  %v176 = insertelement <4 x i32> undef, i32 %v167, i64 0
  %v177 = insertelement <4 x i32> %v176, i32 %v168, i64 1
  %v178 = insertelement <4 x i32> %v177, i32 %v169, i64 2
  %v179 = insertelement <4 x i32> %v178, i32 %v170, i64 3
  %bridge_ptr198 = bitcast i8 addrspace(3)* %v175 to <4 x i32> addrspace(3)*
  store <4 x i32> %v179, <4 x i32> addrspace(3)* %bridge_ptr198, align 16
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v180 = shl nuw nsw i32 %v23, 8
  %v181 = shl nuw nsw i32 %v55, 4
  %v182 = shl nuw nsw i32 %v59, 2
  %v183 = xor i32 %v181, %v182
  %v184 = xor i32 %v183, %v80
  %v185 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v180
  %v186 = getelementptr inbounds i8, i8 addrspace(3)* %v185, i32 %v184
  %v187 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v186)
  %v188 = extractvalue { i32, i32, i32, i32 } %v187, 0
  %v189 = bitcast i32 %v188 to <2 x i16>
  %v190 = extractvalue { i32, i32, i32, i32 } %v187, 1
  %v191 = bitcast i32 %v190 to <2 x i16>
  %v192 = extractvalue { i32, i32, i32, i32 } %v187, 2
  %v193 = bitcast i32 %v192 to <2 x i16>
  %v194 = extractvalue { i32, i32, i32, i32 } %v187, 3
  %v195 = bitcast i32 %v194 to <2 x i16>
  %v196 = insertelement <2 x float> undef, float %v151, i64 0
  %v197 = insertelement <2 x float> %v196, float %v152, i64 1
  %bf217_0_a0 = extractelement <2 x float> %v197, i32 0
  %bf217_0_r = call i16 @bridge_halftrunc(float %bf217_0_a0)
  %bf217_1_a0 = extractelement <2 x float> %v197, i32 1
  %bf217_1_r = call i16 @bridge_halftrunc(float %bf217_1_a0)
  %bf217_v0 = insertelement <2 x i16> undef, i16 %bf217_0_r, i32 0
  %v198 = insertelement <2 x i16> %bf217_v0, i16 %bf217_1_r, i32 1
  %bf218_0_a0 = extractelement <2 x i16> %v189, i32 0
  %bf218_0_a1 = extractelement <2 x i16> %v198, i32 0
  %bf218_0_x = call float @bridge_halfext(i16 %bf218_0_a0)
  %bf218_0_y = call float @bridge_halfext(i16 %bf218_0_a1)
  %bf218_0_s = fadd float %bf218_0_x, %bf218_0_y
  %bf218_0_r = call i16 @bridge_halftrunc(float %bf218_0_s)
  %bf218_1_a0 = extractelement <2 x i16> %v189, i32 1
  %bf218_1_a1 = extractelement <2 x i16> %v198, i32 1
  %bf218_1_x = call float @bridge_halfext(i16 %bf218_1_a0)
  %bf218_1_y = call float @bridge_halfext(i16 %bf218_1_a1)
  %bf218_1_s = fadd float %bf218_1_x, %bf218_1_y
  %bf218_1_r = call i16 @bridge_halftrunc(float %bf218_1_s)
  %bf218_v0 = insertelement <2 x i16> undef, i16 %bf218_0_r, i32 0
  %v199 = insertelement <2 x i16> %bf218_v0, i16 %bf218_1_r, i32 1
  %v200 = insertelement <2 x float> undef, float %v153, i64 0
  %v201 = insertelement <2 x float> %v200, float %v154, i64 1
  %bf221_0_a0 = extractelement <2 x float> %v201, i32 0
  %bf221_0_r = call i16 @bridge_halftrunc(float %bf221_0_a0)
  %bf221_1_a0 = extractelement <2 x float> %v201, i32 1
  %bf221_1_r = call i16 @bridge_halftrunc(float %bf221_1_a0)
  %bf221_v0 = insertelement <2 x i16> undef, i16 %bf221_0_r, i32 0
  %v202 = insertelement <2 x i16> %bf221_v0, i16 %bf221_1_r, i32 1
  %bf222_0_a0 = extractelement <2 x i16> %v191, i32 0
  %bf222_0_a1 = extractelement <2 x i16> %v202, i32 0
  %bf222_0_x = call float @bridge_halfext(i16 %bf222_0_a0)
  %bf222_0_y = call float @bridge_halfext(i16 %bf222_0_a1)
  %bf222_0_s = fadd float %bf222_0_x, %bf222_0_y
  %bf222_0_r = call i16 @bridge_halftrunc(float %bf222_0_s)
  %bf222_1_a0 = extractelement <2 x i16> %v191, i32 1
  %bf222_1_a1 = extractelement <2 x i16> %v202, i32 1
  %bf222_1_x = call float @bridge_halfext(i16 %bf222_1_a0)
  %bf222_1_y = call float @bridge_halfext(i16 %bf222_1_a1)
  %bf222_1_s = fadd float %bf222_1_x, %bf222_1_y
  %bf222_1_r = call i16 @bridge_halftrunc(float %bf222_1_s)
  %bf222_v0 = insertelement <2 x i16> undef, i16 %bf222_0_r, i32 0
  %v203 = insertelement <2 x i16> %bf222_v0, i16 %bf222_1_r, i32 1
  %v204 = insertelement <2 x float> undef, float %v156, i64 0
  %v205 = insertelement <2 x float> %v204, float %v157, i64 1
  %bf225_0_a0 = extractelement <2 x float> %v205, i32 0
  %bf225_0_r = call i16 @bridge_halftrunc(float %bf225_0_a0)
  %bf225_1_a0 = extractelement <2 x float> %v205, i32 1
  %bf225_1_r = call i16 @bridge_halftrunc(float %bf225_1_a0)
  %bf225_v0 = insertelement <2 x i16> undef, i16 %bf225_0_r, i32 0
  %v206 = insertelement <2 x i16> %bf225_v0, i16 %bf225_1_r, i32 1
  %bf226_0_a0 = extractelement <2 x i16> %v193, i32 0
  %bf226_0_a1 = extractelement <2 x i16> %v206, i32 0
  %bf226_0_x = call float @bridge_halfext(i16 %bf226_0_a0)
  %bf226_0_y = call float @bridge_halfext(i16 %bf226_0_a1)
  %bf226_0_s = fadd float %bf226_0_x, %bf226_0_y
  %bf226_0_r = call i16 @bridge_halftrunc(float %bf226_0_s)
  %bf226_1_a0 = extractelement <2 x i16> %v193, i32 1
  %bf226_1_a1 = extractelement <2 x i16> %v206, i32 1
  %bf226_1_x = call float @bridge_halfext(i16 %bf226_1_a0)
  %bf226_1_y = call float @bridge_halfext(i16 %bf226_1_a1)
  %bf226_1_s = fadd float %bf226_1_x, %bf226_1_y
  %bf226_1_r = call i16 @bridge_halftrunc(float %bf226_1_s)
  %bf226_v0 = insertelement <2 x i16> undef, i16 %bf226_0_r, i32 0
  %v207 = insertelement <2 x i16> %bf226_v0, i16 %bf226_1_r, i32 1
  %v208 = insertelement <2 x float> undef, float %v158, i64 0
  %v209 = insertelement <2 x float> %v208, float %v159, i64 1
  %bf229_0_a0 = extractelement <2 x float> %v209, i32 0
  %bf229_0_r = call i16 @bridge_halftrunc(float %bf229_0_a0)
  %bf229_1_a0 = extractelement <2 x float> %v209, i32 1
  %bf229_1_r = call i16 @bridge_halftrunc(float %bf229_1_a0)
  %bf229_v0 = insertelement <2 x i16> undef, i16 %bf229_0_r, i32 0
  %v210 = insertelement <2 x i16> %bf229_v0, i16 %bf229_1_r, i32 1
  %bf230_0_a0 = extractelement <2 x i16> %v195, i32 0
  %bf230_0_a1 = extractelement <2 x i16> %v210, i32 0
  %bf230_0_x = call float @bridge_halfext(i16 %bf230_0_a0)
  %bf230_0_y = call float @bridge_halfext(i16 %bf230_0_a1)
  %bf230_0_s = fadd float %bf230_0_x, %bf230_0_y
  %bf230_0_r = call i16 @bridge_halftrunc(float %bf230_0_s)
  %bf230_1_a0 = extractelement <2 x i16> %v195, i32 1
  %bf230_1_a1 = extractelement <2 x i16> %v210, i32 1
  %bf230_1_x = call float @bridge_halfext(i16 %bf230_1_a0)
  %bf230_1_y = call float @bridge_halfext(i16 %bf230_1_a1)
  %bf230_1_s = fadd float %bf230_1_x, %bf230_1_y
  %bf230_1_r = call i16 @bridge_halftrunc(float %bf230_1_s)
  %bf230_v0 = insertelement <2 x i16> undef, i16 %bf230_0_r, i32 0
  %v211 = insertelement <2 x i16> %bf230_v0, i16 %bf230_1_r, i32 1
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v212 = shl nuw nsw i32 %v17, 1
  %v213 = and i32 %v212, 24
  %v214 = and i32 %v17, 1
  %v215 = icmp eq i32 %v214, 0
  %v216 = select i1 %v215, i32 0, i32 576
  %v217 = and i32 %v17, 2
  %v218 = icmp eq i32 %v217, 0
  %v219 = select i1 %v218, i32 0, i32 1028
  %v220 = select i1 %v60, i32 0, i32 288
  %v221 = or  i32 %v213, %v79
  %v222 = or  i32 %v216, %v220
  %v223 = xor i32 %v222, %v221
  %v224 = or  i32 %v223, %v219
  %v225 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v224
  %bridge_ptr319 = bitcast i8 addrspace(3)* %v225 to <2 x i16> addrspace(3)*
  store <2 x i16> %v199, <2 x i16> addrspace(3)* %bridge_ptr319, align 4
  %v226 = getelementptr inbounds i8, i8 addrspace(3)* %v225, i32 128
  %bridge_ptr321 = bitcast i8 addrspace(3)* %v226 to <2 x i16> addrspace(3)*
  store <2 x i16> %v203, <2 x i16> addrspace(3)* %bridge_ptr321, align 4
  %v227 = xor i32 %v224, 4
  %v228 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v227
  %bridge_ptr324 = bitcast i8 addrspace(3)* %v228 to <2 x i16> addrspace(3)*
  store <2 x i16> %v207, <2 x i16> addrspace(3)* %bridge_ptr324, align 4
  %v229 = getelementptr inbounds i8, i8 addrspace(3)* %v228, i32 128
  %bridge_ptr326 = bitcast i8 addrspace(3)* %v229 to <2 x i16> addrspace(3)*
  store <2 x i16> %v211, <2 x i16> addrspace(3)* %bridge_ptr326, align 4
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v230 = shl nuw nsw i32 %v17, 5
  %v231 = and i32 %v230, 96
  %v232 = and i32 %v17, 28
  %v233 = and i32 %v17, 32
  %v234 = icmp eq i32 %v233, 0
  %v235 = select i1 %v234, i32 0, i32 288
  %v236 = and i32 %v212, 128
  %v237 = or  i32 %v231, %v232
  %v238 = xor i32 %v237, %v235
  %v239 = or  i32 %v238, %v236
  %v240 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v239
  %v241 = xor i32 %v239, 576
  %v242 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v241
  %v243 = xor i32 %v239, 1028
  %v244 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v243
  %v245 = xor i32 %v239, 1604
  %v246 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v245
  %bridge_ptr345 = bitcast i8 addrspace(3)* %v246 to <2 x i16> addrspace(3)*
  %v247 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr345, align 4
  %bf273_0_a0 = extractelement <2 x i16> %v247, i32 0
  %bf273_0_r = call float @bridge_halfext(i16 %bf273_0_a0)
  %bf273_1_a0 = extractelement <2 x i16> %v247, i32 1
  %bf273_1_r = call float @bridge_halfext(i16 %bf273_1_a0)
  %bf273_v0 = insertelement <2 x float> undef, float %bf273_0_r, i32 0
  %v248 = insertelement <2 x float> %bf273_v0, float %bf273_1_r, i32 1
  %v249 = fmul <2 x float> %v248, <float 5.000000e-01, float 5.000000e-01>
  %v250 = extractelement <2 x float> %v248, i64 0
  %v251 = fmul float %v250, %v250
  %v252 = extractelement <2 x float> %v248, i64 1
  %v253 = fmul float %v252, %v252
  %v254 = fmul float %v251, %v250
  %v255 = fmul float %v253, %v252
  %v256 = fmul float %v254, 0x3FA6E4E260000000
  %v257 = fmul float %v255, 0x3FA6E4E260000000
  %v258 = fadd float %v256, %v250
  %v259 = fadd float %v257, %v252
  %v260 = fmul float %v258, 0x3FE9884540000000
  %v261 = fmul float %v259, 0x3FE9884540000000
  %bridge_ptr365 = bitcast i8 addrspace(3)* %v244 to <2 x i16> addrspace(3)*
  %v262 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr365, align 4
  %bf288_0_a0 = extractelement <2 x i16> %v262, i32 0
  %bf288_0_r = call float @bridge_halfext(i16 %bf288_0_a0)
  %bf288_1_a0 = extractelement <2 x i16> %v262, i32 1
  %bf288_1_r = call float @bridge_halfext(i16 %bf288_1_a0)
  %bf288_v0 = insertelement <2 x float> undef, float %bf288_0_r, i32 0
  %v263 = insertelement <2 x float> %bf288_v0, float %bf288_1_r, i32 1
  %v264 = fmul <2 x float> %v263, <float 5.000000e-01, float 5.000000e-01>
  %v265 = extractelement <2 x float> %v263, i64 0
  %v266 = fmul float %v265, %v265
  %v267 = extractelement <2 x float> %v263, i64 1
  %v268 = fmul float %v267, %v267
  %v269 = fmul float %v266, %v265
  %v270 = fmul float %v268, %v267
  %v271 = fmul float %v269, 0x3FA6E4E260000000
  %v272 = fmul float %v270, 0x3FA6E4E260000000
  %v273 = fadd float %v271, %v265
  %v274 = fadd float %v272, %v267
  %v275 = fmul float %v273, 0x3FE9884540000000
  %v276 = fmul float %v274, 0x3FE9884540000000
  %bridge_ptr385 = bitcast i8 addrspace(3)* %v242 to <2 x i16> addrspace(3)*
  %v277 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr385, align 4
  %bf303_0_a0 = extractelement <2 x i16> %v277, i32 0
  %bf303_0_r = call float @bridge_halfext(i16 %bf303_0_a0)
  %bf303_1_a0 = extractelement <2 x i16> %v277, i32 1
  %bf303_1_r = call float @bridge_halfext(i16 %bf303_1_a0)
  %bf303_v0 = insertelement <2 x float> undef, float %bf303_0_r, i32 0
  %v278 = insertelement <2 x float> %bf303_v0, float %bf303_1_r, i32 1
  %v279 = fmul <2 x float> %v278, <float 5.000000e-01, float 5.000000e-01>
  %v280 = extractelement <2 x float> %v278, i64 0
  %v281 = fmul float %v280, %v280
  %v282 = extractelement <2 x float> %v278, i64 1
  %v283 = fmul float %v282, %v282
  %v284 = fmul float %v281, %v280
  %v285 = fmul float %v283, %v282
  %v286 = fmul float %v284, 0x3FA6E4E260000000
  %v287 = fmul float %v285, 0x3FA6E4E260000000
  %v288 = fadd float %v286, %v280
  %v289 = fadd float %v287, %v282
  %v290 = fmul float %v288, 0x3FE9884540000000
  %v291 = fmul float %v289, 0x3FE9884540000000
  %bridge_ptr405 = bitcast i8 addrspace(3)* %v240 to <2 x i16> addrspace(3)*
  %v292 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr405, align 4
  %bf318_0_a0 = extractelement <2 x i16> %v292, i32 0
  %bf318_0_r = call float @bridge_halfext(i16 %bf318_0_a0)
  %bf318_1_a0 = extractelement <2 x i16> %v292, i32 1
  %bf318_1_r = call float @bridge_halfext(i16 %bf318_1_a0)
  %bf318_v0 = insertelement <2 x float> undef, float %bf318_0_r, i32 0
  %v293 = insertelement <2 x float> %bf318_v0, float %bf318_1_r, i32 1
  %v294 = fmul <2 x float> %v293, <float 5.000000e-01, float 5.000000e-01>
  %v295 = extractelement <2 x float> %v293, i64 0
  %v296 = fmul float %v295, %v295
  %v297 = extractelement <2 x float> %v293, i64 1
  %v298 = fmul float %v297, %v297
  %v299 = fmul float %v296, %v295
  %v300 = fmul float %v298, %v297
  %v301 = fmul float %v299, 0x3FA6E4E260000000
  %v302 = fmul float %v300, 0x3FA6E4E260000000
  %v303 = fadd float %v301, %v295
  %v304 = fadd float %v302, %v297
  %v305 = fmul float %v303, 0x3FE9884540000000
  %v306 = fmul float %v304, 0x3FE9884540000000
  %v307 = tail call float @f06_tanh(float %v305)
  %v308 = tail call float @f06_tanh(float %v306)
  %v309 = tail call float @f06_tanh(float %v290)
  %v310 = tail call float @f06_tanh(float %v291)
  %v311 = tail call float @f06_tanh(float %v275)
  %v312 = tail call float @f06_tanh(float %v276)
  %v313 = tail call float @f06_tanh(float %v260)
  %v314 = tail call float @f06_tanh(float %v261)
  %v315 = insertelement <2 x float> undef, float %v307, i64 0
  %v316 = insertelement <2 x float> %v315, float %v308, i64 1
  %v317 = fadd <2 x float> %v316, <float 1.000000e+00, float 1.000000e+00>
  %v318 = insertelement <2 x float> undef, float %v309, i64 0
  %v319 = insertelement <2 x float> %v318, float %v310, i64 1
  %v320 = fadd <2 x float> %v319, <float 1.000000e+00, float 1.000000e+00>
  %v321 = insertelement <2 x float> undef, float %v311, i64 0
  %v322 = insertelement <2 x float> %v321, float %v312, i64 1
  %v323 = fadd <2 x float> %v322, <float 1.000000e+00, float 1.000000e+00>
  %v324 = insertelement <2 x float> undef, float %v313, i64 0
  %v325 = insertelement <2 x float> %v324, float %v314, i64 1
  %v326 = fadd <2 x float> %v325, <float 1.000000e+00, float 1.000000e+00>
  %v327 = fmul <2 x float> %v294, %v317
  %v328 = fmul <2 x float> %v279, %v320
  %v329 = fmul <2 x float> %v264, %v323
  %v330 = fmul <2 x float> %v249, %v326
  %bf356_0_a0 = extractelement <2 x float> %v327, i32 0
  %bf356_0_r = call i16 @bridge_halftrunc(float %bf356_0_a0)
  %bf356_1_a0 = extractelement <2 x float> %v327, i32 1
  %bf356_1_r = call i16 @bridge_halftrunc(float %bf356_1_a0)
  %bf356_v0 = insertelement <2 x i16> undef, i16 %bf356_0_r, i32 0
  %v331 = insertelement <2 x i16> %bf356_v0, i16 %bf356_1_r, i32 1
  %bf357_0_a0 = extractelement <2 x float> %v328, i32 0
  %bf357_0_r = call i16 @bridge_halftrunc(float %bf357_0_a0)
  %bf357_1_a0 = extractelement <2 x float> %v328, i32 1
  %bf357_1_r = call i16 @bridge_halftrunc(float %bf357_1_a0)
  %bf357_v0 = insertelement <2 x i16> undef, i16 %bf357_0_r, i32 0
  %v332 = insertelement <2 x i16> %bf357_v0, i16 %bf357_1_r, i32 1
  %bf358_0_a0 = extractelement <2 x float> %v329, i32 0
  %bf358_0_r = call i16 @bridge_halftrunc(float %bf358_0_a0)
  %bf358_1_a0 = extractelement <2 x float> %v329, i32 1
  %bf358_1_r = call i16 @bridge_halftrunc(float %bf358_1_a0)
  %bf358_v0 = insertelement <2 x i16> undef, i16 %bf358_0_r, i32 0
  %v333 = insertelement <2 x i16> %bf358_v0, i16 %bf358_1_r, i32 1
  %bf359_0_a0 = extractelement <2 x float> %v330, i32 0
  %bf359_0_r = call i16 @bridge_halftrunc(float %bf359_0_a0)
  %bf359_1_a0 = extractelement <2 x float> %v330, i32 1
  %bf359_1_r = call i16 @bridge_halftrunc(float %bf359_1_a0)
  %bf359_v0 = insertelement <2 x i16> undef, i16 %bf359_0_r, i32 0
  %v334 = insertelement <2 x i16> %bf359_v0, i16 %bf359_1_r, i32 1
  %v335 = shl i32 %v21, 7
  %v336 = add i32 %v335, %v25
  %v337 = sext i32 %v336 to i64
  %bridge_in476 = bitcast i8 addrspace(1)* %v3 to i16 addrspace(1)*
  %bridge_gep476 = getelementptr i16, i16 addrspace(1)* %bridge_in476, i64 %v337
  %v338 = bitcast i16 addrspace(1)* %bridge_gep476 to i8 addrspace(1)*
  %v339 = bitcast <2 x i16> %v331 to i32
  %v340 = bitcast <2 x i16> %v332 to i32
  %v341 = bitcast <2 x i16> %v333 to i32
  %v342 = bitcast <2 x i16> %v334 to i32
  tail call void asm sideeffect "@$5 st.global.v4.b32 [ $4 + 0 ], { $0, $1, $2, $3 };", "r,r,r,r,l,b"(i32 %v339, i32 %v340, i32 %v341, i32 %v342, i8 addrspace(1)* %v338, i1 %v162) #3
  ret void
}

; Function Attrs:     nounwind speculatable  
declare   i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #1

; Function Attrs:     nounwind  
declare void @llvm.assume(i1 ) #2

; Function Attrs:     nounwind speculatable  
declare   i32 @llvm.nvvm.read.ptx.sreg.tid.x() #1

; Function Attrs: nounwind


; Function Attrs: convergent  nounwind


; Function Attrs: nounwind


; Function Attrs:   nounwind 


; Function Attrs:   nounwind 


attributes #0 = { "nvvm.reqntid"="128" }
attributes #1 = {     nounwind speculatable   }
attributes #2 = {     nounwind   }
attributes #3 = { nounwind }
attributes #4 = { convergent  nounwind }
attributes #5 = {   nounwind  }

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
