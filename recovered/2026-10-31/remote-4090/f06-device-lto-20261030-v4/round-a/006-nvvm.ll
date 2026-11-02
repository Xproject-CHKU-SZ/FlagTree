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
  %v18 = and i32 %v17, 60
  %v19 = lshr exact i32 %v18, 2
  %v20 = or  i32 %v16, %v19
  %v21 = shl nuw nsw i32 %v14, 5
  %v22 = shl nuw nsw i32 %v17, 3
  %v23 = and i32 %v22, 24
  %v24 = or  i32 %v21, %v23
  %v25 = srem i32 %v20, 16
  %v26 = and i32 %v24, 120
  %v27 = shl nsw i32 %v25, 6
  %v28 = or  i32 %v27, %v23
  %v29 = sext i32 %v28 to i64
  %bridge_in34 = bitcast i8 addrspace(1)* %v0 to i16 addrspace(1)*
  %bridge_gep34 = getelementptr i16, i16 addrspace(1)* %bridge_in34, i64 %v29
  %v30 = bitcast i16 addrspace(1)* %bridge_gep34 to i8 addrspace(1)*
  %v31 = shl nuw nsw i32 %v17, 4
  %v32 = and i32 %v31, 1008
  %v33 = shl nuw nsw i32 %v17, 1
  %v34 = and i32 %v33, 48
  %v35 = xor i32 %v32, %v34
  %v36 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 8192), i32 %v35
  tail call void asm sideeffect "cp.async.cg.shared.global [ $0 + 0 ], [ $1 + 0 ], 0x10, $2;", "r,l,r"(i8 addrspace(3)* %v36, i8 addrspace(1)* %v30, i32 16) #3
  tail call void asm sideeffect "cp.async.commit_group;", "~{memory}"()
  %v37 = shl nuw nsw i32 %v18, 5
  %v38 = or  i32 %v26, %v37
  %v39 = zext  i32 %v38 to i64
  %bridge_in46 = bitcast i8 addrspace(1)* %v1 to i16 addrspace(1)*
  %bridge_gep46 = getelementptr i16, i16 addrspace(1)* %bridge_in46, i64 %v39
  %v40 = bitcast i16 addrspace(1)* %bridge_gep46 to i8 addrspace(1)*
  %v41 = getelementptr i8, i8 addrspace(1)* %v40, i64 4096
  %v42 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v35
  tail call void asm sideeffect "cp.async.cg.shared.global [ $0 + 0 ], [ $1 + 0 ], 0x10, $2;", "r,l,r"(i8 addrspace(3)* %v42, i8 addrspace(1)* %v40, i32 16) #3
  %v43 = or  i32 %v35, 1024
  %v44 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v43
  tail call void asm sideeffect "cp.async.cg.shared.global [ $0 + 0 ], [ $1 + 0 ], 0x10, $2;", "r,l,r"(i8 addrspace(3)* nonnull %v44, i8 addrspace(1)* %v41, i32 16) #3
  tail call void asm sideeffect "cp.async.commit_group;", "~{memory}"()
  %v45 = getelementptr i8, i8 addrspace(1)* %v30, i64 64
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v46 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 9216), i32 %v35
  tail call void asm sideeffect "cp.async.cg.shared.global [ $0 + 0 ], [ $1 + 0 ], 0x10, $2;", "r,l,r"(i8 addrspace(3)* %v46, i8 addrspace(1)* %v45, i32 16) #3
  tail call void asm sideeffect "cp.async.commit_group;", "~{memory}"()
  %v47 = getelementptr i8, i8 addrspace(1)* %v40, i64 8192
  %v48 = getelementptr i8, i8 addrspace(1)* %v40, i64 12288
  %v49 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 2048), i32 %v35
  tail call void asm sideeffect "cp.async.cg.shared.global [ $0 + 0 ], [ $1 + 0 ], 0x10, $2;", "r,l,r"(i8 addrspace(3)* %v49, i8 addrspace(1)* %v47, i32 16) #3
  %v50 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 2048), i32 %v43
  tail call void asm sideeffect "cp.async.cg.shared.global [ $0 + 0 ], [ $1 + 0 ], 0x10, $2;", "r,l,r"(i8 addrspace(3)* nonnull %v50, i8 addrspace(1)* %v48, i32 16) #3
  tail call void asm sideeffect "cp.async.commit_group;", "~{memory}"()
  %v51 = or  i32 %v23, 64
  %v52 = add nsw i32 %v51, %v27
  %v53 = sext i32 %v52 to i64
  %bridge_in69 = bitcast i8 addrspace(1)* %v0 to i16 addrspace(1)*
  %bridge_gep69 = getelementptr i16, i16 addrspace(1)* %bridge_in69, i64 %v53
  %v54 = bitcast i16 addrspace(1)* %bridge_gep69 to i8 addrspace(1)*
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v55 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 10240), i32 %v35
  tail call void asm sideeffect "cp.async.cg.shared.global [ $0 + 0 ], [ $1 + 0 ], 0x10, $2;", "r,l,r"(i8 addrspace(3)* %v55, i8 addrspace(1)* %v54, i32 0) #3
  tail call void asm sideeffect "cp.async.commit_group;", "~{memory}"()
  %v56 = getelementptr i8, i8 addrspace(1)* %v40, i64 16384
  %v57 = getelementptr i8, i8 addrspace(1)* %v40, i64 20480
  %v58 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 4096), i32 %v35
  tail call void asm sideeffect "cp.async.cg.shared.global [ $0 + 0 ], [ $1 + 0 ], 0x10, $2;", "r,l,r"(i8 addrspace(3)* %v58, i8 addrspace(1)* %v56, i32 0) #3
  %v59 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 4096), i32 %v43
  tail call void asm sideeffect "cp.async.cg.shared.global [ $0 + 0 ], [ $1 + 0 ], 0x10, $2;", "r,l,r"(i8 addrspace(3)* nonnull %v59, i8 addrspace(1)* %v57, i32 0) #3
  tail call void asm sideeffect "cp.async.commit_group;", "~{memory}"()
  %v60 = or  i32 %v23, 96
  %v61 = add nsw i32 %v60, %v27
  %v62 = sext i32 %v61 to i64
  %bridge_in84 = bitcast i8 addrspace(1)* %v0 to i16 addrspace(1)*
  %bridge_gep84 = getelementptr i16, i16 addrspace(1)* %bridge_in84, i64 %v62
  %v63 = bitcast i16 addrspace(1)* %bridge_gep84 to i8 addrspace(1)*
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v64 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 11264), i32 %v35
  tail call void asm sideeffect "cp.async.cg.shared.global [ $0 + 0 ], [ $1 + 0 ], 0x10, $2;", "r,l,r"(i8 addrspace(3)* %v64, i8 addrspace(1)* %v63, i32 0) #3
  tail call void asm sideeffect "cp.async.commit_group;", "~{memory}"()
  %v65 = getelementptr i8, i8 addrspace(1)* %v40, i64 24576
  %v66 = getelementptr i8, i8 addrspace(1)* %v40, i64 28672
  %v67 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 6144), i32 %v35
  tail call void asm sideeffect "cp.async.cg.shared.global [ $0 + 0 ], [ $1 + 0 ], 0x10, $2;", "r,l,r"(i8 addrspace(3)* %v67, i8 addrspace(1)* %v65, i32 0) #3
  %v68 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 6144), i32 %v43
  tail call void asm sideeffect "cp.async.cg.shared.global [ $0 + 0 ], [ $1 + 0 ], 0x10, $2;", "r,l,r"(i8 addrspace(3)* nonnull %v68, i8 addrspace(1)* %v66, i32 0) #3
  tail call void asm sideeffect "cp.async.commit_group;", "~{memory}"()
  tail call void asm sideeffect "cp.async.wait_group 0;", "~{memory}"()
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v69 = and i32 %v17, 15
  %v70 = shl nuw nsw i32 %v69, 6
  %v71 = and i32 %v17, 6
  %v72 = shl nuw nsw i32 %v71, 3
  %v73 = and i32 %v17, 16
  %v74 = xor i32 %v72, %v73
  %v75 = or  i32 %v74, %v70
  %v76 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 8192), i32 %v75
  %v77 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v76)
  %v78 = extractvalue { i32, i32, i32, i32 } %v77, 0
  %v79 = extractvalue { i32, i32, i32, i32 } %v77, 1
  %v80 = extractvalue { i32, i32, i32, i32 } %v77, 2
  %v81 = extractvalue { i32, i32, i32, i32 } %v77, 3
  %v82 = xor i32 %v75, 32
  %v83 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 8192), i32 %v82
  %v84 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v83)
  %v85 = extractvalue { i32, i32, i32, i32 } %v84, 0
  %v86 = extractvalue { i32, i32, i32, i32 } %v84, 1
  %v87 = extractvalue { i32, i32, i32, i32 } %v84, 2
  %v88 = extractvalue { i32, i32, i32, i32 } %v84, 3
  %v89 = shl nuw nsw i32 %v17, 6
  %v90 = and i32 %v89, 1984
  %v91 = and i32 %v17, 32
  %v92 = lshr exact i32 %v91, 1
  %v93 = xor i32 %v72, %v92
  %v94 = or  i32 %v93, %v90
  %v95 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v94
  %v96 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.trans.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v95)
  %v97 = extractvalue { i32, i32, i32, i32 } %v96, 0
  %v98 = extractvalue { i32, i32, i32, i32 } %v96, 1
  %v99 = extractvalue { i32, i32, i32, i32 } %v96, 2
  %v100 = extractvalue { i32, i32, i32, i32 } %v96, 3
  %v101 = xor i32 %v94, 32
  %v102 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v101
  %v103 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.trans.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v102)
  %v104 = extractvalue { i32, i32, i32, i32 } %v103, 0
  %v105 = extractvalue { i32, i32, i32, i32 } %v103, 1
  %v106 = extractvalue { i32, i32, i32, i32 } %v103, 2
  %v107 = extractvalue { i32, i32, i32, i32 } %v103, 3
  %v108 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 %v78, i32 %v79, i32 %v80, i32 %v81, i32 %v97, i32 %v98) #3
  %v109 = extractvalue { float, float, float, float } %v108, 0
  %v110 = extractvalue { float, float, float, float } %v108, 1
  %v111 = extractvalue { float, float, float, float } %v108, 2
  %v112 = extractvalue { float, float, float, float } %v108, 3
  %v113 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 %v78, i32 %v79, i32 %v80, i32 %v81, i32 %v104, i32 %v105) #3
  %v114 = extractvalue { float, float, float, float } %v113, 0
  %v115 = extractvalue { float, float, float, float } %v113, 1
  %v116 = extractvalue { float, float, float, float } %v113, 2
  %v117 = extractvalue { float, float, float, float } %v113, 3
  %v118 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v109, float %v110, float %v111, float %v112, i32 %v85, i32 %v86, i32 %v87, i32 %v88, i32 %v99, i32 %v100) #3
  %v119 = extractvalue { float, float, float, float } %v118, 0
  %v120 = extractvalue { float, float, float, float } %v118, 1
  %v121 = extractvalue { float, float, float, float } %v118, 2
  %v122 = extractvalue { float, float, float, float } %v118, 3
  %v123 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v114, float %v115, float %v116, float %v117, i32 %v85, i32 %v86, i32 %v87, i32 %v88, i32 %v106, i32 %v107) #3
  %v124 = extractvalue { float, float, float, float } %v123, 0
  %v125 = extractvalue { float, float, float, float } %v123, 1
  %v126 = extractvalue { float, float, float, float } %v123, 2
  %v127 = extractvalue { float, float, float, float } %v123, 3
  %v128 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 9216), i32 %v75
  %v129 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v128)
  %v130 = extractvalue { i32, i32, i32, i32 } %v129, 0
  %v131 = extractvalue { i32, i32, i32, i32 } %v129, 1
  %v132 = extractvalue { i32, i32, i32, i32 } %v129, 2
  %v133 = extractvalue { i32, i32, i32, i32 } %v129, 3
  %v134 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 9216), i32 %v82
  %v135 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v134)
  %v136 = extractvalue { i32, i32, i32, i32 } %v135, 0
  %v137 = extractvalue { i32, i32, i32, i32 } %v135, 1
  %v138 = extractvalue { i32, i32, i32, i32 } %v135, 2
  %v139 = extractvalue { i32, i32, i32, i32 } %v135, 3
  %v140 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 2048), i32 %v94
  %v141 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.trans.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v140)
  %v142 = extractvalue { i32, i32, i32, i32 } %v141, 0
  %v143 = extractvalue { i32, i32, i32, i32 } %v141, 1
  %v144 = extractvalue { i32, i32, i32, i32 } %v141, 2
  %v145 = extractvalue { i32, i32, i32, i32 } %v141, 3
  %v146 = getelementptr inbounds i8, i8 addrspace(3)* getelementptr (i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 2048), i32 %v101
  %v147 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.trans.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v146)
  %v148 = extractvalue { i32, i32, i32, i32 } %v147, 0
  %v149 = extractvalue { i32, i32, i32, i32 } %v147, 1
  %v150 = extractvalue { i32, i32, i32, i32 } %v147, 2
  %v151 = extractvalue { i32, i32, i32, i32 } %v147, 3
  %v152 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v119, float %v120, float %v121, float %v122, i32 %v130, i32 %v131, i32 %v132, i32 %v133, i32 %v142, i32 %v143) #3
  %v153 = extractvalue { float, float, float, float } %v152, 0
  %v154 = extractvalue { float, float, float, float } %v152, 1
  %v155 = extractvalue { float, float, float, float } %v152, 2
  %v156 = extractvalue { float, float, float, float } %v152, 3
  %v157 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v124, float %v125, float %v126, float %v127, i32 %v130, i32 %v131, i32 %v132, i32 %v133, i32 %v148, i32 %v149) #3
  %v158 = extractvalue { float, float, float, float } %v157, 0
  %v159 = extractvalue { float, float, float, float } %v157, 1
  %v160 = extractvalue { float, float, float, float } %v157, 2
  %v161 = extractvalue { float, float, float, float } %v157, 3
  %v162 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v153, float %v154, float %v155, float %v156, i32 %v136, i32 %v137, i32 %v138, i32 %v139, i32 %v144, i32 %v145) #3
  %v163 = extractvalue { float, float, float, float } %v162, 0
  %v164 = extractvalue { float, float, float, float } %v162, 1
  %v165 = extractvalue { float, float, float, float } %v162, 2
  %v166 = extractvalue { float, float, float, float } %v162, 3
  %v167 = tail call { float, float, float, float } asm sideeffect "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32 { $0, $1, $2, $3 }, { $8, $9, $10, $11 }, { $12, $13 }, { $4, $5, $6, $7 };", "=f,=f,=f,=f,0,1,2,3,r,r,r,r,r,r"(float %v158, float %v159, float %v160, float %v161, i32 %v136, i32 %v137, i32 %v138, i32 %v139, i32 %v150, i32 %v151) #3
  %v168 = extractvalue { float, float, float, float } %v167, 0
  %v169 = extractvalue { float, float, float, float } %v167, 1
  %v170 = extractvalue { float, float, float, float } %v167, 2
  %v171 = extractvalue { float, float, float, float } %v167, 3
  %v172 = icmp slt i32 %v20, 16
  %v173 = icmp  ult i32 %v14, 4
  %v174 = and i1 %v173, %v172
  %v175 = zext  i32 %v24 to i64
  %bridge_in205 = bitcast i8 addrspace(1)* %v2 to i16 addrspace(1)*
  %bridge_gep205 = getelementptr i16, i16 addrspace(1)* %bridge_in205, i64 %v175
  %v176 = bitcast i16 addrspace(1)* %bridge_gep205 to i8 addrspace(1)*
  %v177 = tail call i64 asm sideeffect "mov.u64 $0, 0x0;\0A\09createpolicy.fractional.L2::evict_last.b64 $0, 1.0;", "=l"() #3
  %v178 = tail call { i32, i32, i32, i32 } asm sideeffect "mov.u32 $0, 0x0;\0A\09mov.u32 $1, 0x0;\0A\09mov.u32 $2, 0x0;\0A\09mov.u32 $3, 0x0;\0A\09@$6 ld.global.L1::evict_last.L2::cache_hint.v4.b32 { $0, $1, $2, $3 }, [ $4 + 0 ], $5;", "=r,=r,=r,=r,l,l,b"(i8 addrspace(1)* %v176, i64 %v177, i1 %v174) #3
  %v179 = extractvalue { i32, i32, i32, i32 } %v178, 0
  %v180 = extractvalue { i32, i32, i32, i32 } %v178, 1
  %v181 = extractvalue { i32, i32, i32, i32 } %v178, 2
  %v182 = extractvalue { i32, i32, i32, i32 } %v178, 3
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v183 = shl nuw nsw i32 %v17, 5
  %v184 = and i32 %v183, 864
  %v185 = shl nuw nsw i32 %v18, 2
  %v186 = xor i32 %v184, %v185
  %v187 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v186
  %v188 = insertelement <4 x i32> undef, i32 %v179, i64 0
  %v189 = insertelement <4 x i32> %v188, i32 %v180, i64 1
  %v190 = insertelement <4 x i32> %v189, i32 %v181, i64 2
  %v191 = insertelement <4 x i32> %v190, i32 %v182, i64 3
  %bridge_ptr222 = bitcast i8 addrspace(3)* %v187 to <4 x i32> addrspace(3)*
  store <4 x i32> %v191, <4 x i32> addrspace(3)* %bridge_ptr222, align 16
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v192 = shl nuw nsw i32 %v71, 7
  %v193 = shl nuw nsw i32 %v69, 4
  %v194 = shl nuw nsw i32 %v73, 2
  %v195 = or  i32 %v194, %v91
  %v196 = xor i32 %v195, %v193
  %v197 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v192
  %v198 = getelementptr inbounds i8, i8 addrspace(3)* %v197, i32 %v196
  %v199 = tail call { i32, i32, i32, i32 } asm sideeffect "ldmatrix.sync.aligned.m8n8.x4.shared.b16 {$0, $1, $2, $3}, [$4];", "=r,=r,=r,=r,r,~{memory}"(i8 addrspace(3)* %v198)
  %v200 = extractvalue { i32, i32, i32, i32 } %v199, 0
  %v201 = bitcast i32 %v200 to <2 x i16>
  %v202 = extractvalue { i32, i32, i32, i32 } %v199, 1
  %v203 = bitcast i32 %v202 to <2 x i16>
  %v204 = extractvalue { i32, i32, i32, i32 } %v199, 2
  %v205 = bitcast i32 %v204 to <2 x i16>
  %v206 = extractvalue { i32, i32, i32, i32 } %v199, 3
  %v207 = bitcast i32 %v206 to <2 x i16>
  %v208 = insertelement <2 x float> undef, float %v163, i64 0
  %v209 = insertelement <2 x float> %v208, float %v164, i64 1
  %bf241_0_a0 = extractelement <2 x float> %v209, i32 0
  %bf241_0_r = call i16 @bridge_bftrunc(float %bf241_0_a0)
  %bf241_1_a0 = extractelement <2 x float> %v209, i32 1
  %bf241_1_r = call i16 @bridge_bftrunc(float %bf241_1_a0)
  %bf241_v0 = insertelement <2 x i16> undef, i16 %bf241_0_r, i32 0
  %v210 = insertelement <2 x i16> %bf241_v0, i16 %bf241_1_r, i32 1
  %bf242_0_a0 = extractelement <2 x i16> %v201, i32 0
  %bf242_0_a1 = extractelement <2 x i16> %v210, i32 0
  %bf242_0_x = call float @bridge_bfext(i16 %bf242_0_a0)
  %bf242_0_y = call float @bridge_bfext(i16 %bf242_0_a1)
  %bf242_0_s = fadd float %bf242_0_x, %bf242_0_y
  %bf242_0_r = call i16 @bridge_bftrunc(float %bf242_0_s)
  %bf242_1_a0 = extractelement <2 x i16> %v201, i32 1
  %bf242_1_a1 = extractelement <2 x i16> %v210, i32 1
  %bf242_1_x = call float @bridge_bfext(i16 %bf242_1_a0)
  %bf242_1_y = call float @bridge_bfext(i16 %bf242_1_a1)
  %bf242_1_s = fadd float %bf242_1_x, %bf242_1_y
  %bf242_1_r = call i16 @bridge_bftrunc(float %bf242_1_s)
  %bf242_v0 = insertelement <2 x i16> undef, i16 %bf242_0_r, i32 0
  %v211 = insertelement <2 x i16> %bf242_v0, i16 %bf242_1_r, i32 1
  %v212 = insertelement <2 x float> undef, float %v165, i64 0
  %v213 = insertelement <2 x float> %v212, float %v166, i64 1
  %bf245_0_a0 = extractelement <2 x float> %v213, i32 0
  %bf245_0_r = call i16 @bridge_bftrunc(float %bf245_0_a0)
  %bf245_1_a0 = extractelement <2 x float> %v213, i32 1
  %bf245_1_r = call i16 @bridge_bftrunc(float %bf245_1_a0)
  %bf245_v0 = insertelement <2 x i16> undef, i16 %bf245_0_r, i32 0
  %v214 = insertelement <2 x i16> %bf245_v0, i16 %bf245_1_r, i32 1
  %bf246_0_a0 = extractelement <2 x i16> %v203, i32 0
  %bf246_0_a1 = extractelement <2 x i16> %v214, i32 0
  %bf246_0_x = call float @bridge_bfext(i16 %bf246_0_a0)
  %bf246_0_y = call float @bridge_bfext(i16 %bf246_0_a1)
  %bf246_0_s = fadd float %bf246_0_x, %bf246_0_y
  %bf246_0_r = call i16 @bridge_bftrunc(float %bf246_0_s)
  %bf246_1_a0 = extractelement <2 x i16> %v203, i32 1
  %bf246_1_a1 = extractelement <2 x i16> %v214, i32 1
  %bf246_1_x = call float @bridge_bfext(i16 %bf246_1_a0)
  %bf246_1_y = call float @bridge_bfext(i16 %bf246_1_a1)
  %bf246_1_s = fadd float %bf246_1_x, %bf246_1_y
  %bf246_1_r = call i16 @bridge_bftrunc(float %bf246_1_s)
  %bf246_v0 = insertelement <2 x i16> undef, i16 %bf246_0_r, i32 0
  %v215 = insertelement <2 x i16> %bf246_v0, i16 %bf246_1_r, i32 1
  %v216 = insertelement <2 x float> undef, float %v168, i64 0
  %v217 = insertelement <2 x float> %v216, float %v169, i64 1
  %bf249_0_a0 = extractelement <2 x float> %v217, i32 0
  %bf249_0_r = call i16 @bridge_bftrunc(float %bf249_0_a0)
  %bf249_1_a0 = extractelement <2 x float> %v217, i32 1
  %bf249_1_r = call i16 @bridge_bftrunc(float %bf249_1_a0)
  %bf249_v0 = insertelement <2 x i16> undef, i16 %bf249_0_r, i32 0
  %v218 = insertelement <2 x i16> %bf249_v0, i16 %bf249_1_r, i32 1
  %bf250_0_a0 = extractelement <2 x i16> %v205, i32 0
  %bf250_0_a1 = extractelement <2 x i16> %v218, i32 0
  %bf250_0_x = call float @bridge_bfext(i16 %bf250_0_a0)
  %bf250_0_y = call float @bridge_bfext(i16 %bf250_0_a1)
  %bf250_0_s = fadd float %bf250_0_x, %bf250_0_y
  %bf250_0_r = call i16 @bridge_bftrunc(float %bf250_0_s)
  %bf250_1_a0 = extractelement <2 x i16> %v205, i32 1
  %bf250_1_a1 = extractelement <2 x i16> %v218, i32 1
  %bf250_1_x = call float @bridge_bfext(i16 %bf250_1_a0)
  %bf250_1_y = call float @bridge_bfext(i16 %bf250_1_a1)
  %bf250_1_s = fadd float %bf250_1_x, %bf250_1_y
  %bf250_1_r = call i16 @bridge_bftrunc(float %bf250_1_s)
  %bf250_v0 = insertelement <2 x i16> undef, i16 %bf250_0_r, i32 0
  %v219 = insertelement <2 x i16> %bf250_v0, i16 %bf250_1_r, i32 1
  %v220 = insertelement <2 x float> undef, float %v170, i64 0
  %v221 = insertelement <2 x float> %v220, float %v171, i64 1
  %bf253_0_a0 = extractelement <2 x float> %v221, i32 0
  %bf253_0_r = call i16 @bridge_bftrunc(float %bf253_0_a0)
  %bf253_1_a0 = extractelement <2 x float> %v221, i32 1
  %bf253_1_r = call i16 @bridge_bftrunc(float %bf253_1_a0)
  %bf253_v0 = insertelement <2 x i16> undef, i16 %bf253_0_r, i32 0
  %v222 = insertelement <2 x i16> %bf253_v0, i16 %bf253_1_r, i32 1
  %bf254_0_a0 = extractelement <2 x i16> %v207, i32 0
  %bf254_0_a1 = extractelement <2 x i16> %v222, i32 0
  %bf254_0_x = call float @bridge_bfext(i16 %bf254_0_a0)
  %bf254_0_y = call float @bridge_bfext(i16 %bf254_0_a1)
  %bf254_0_s = fadd float %bf254_0_x, %bf254_0_y
  %bf254_0_r = call i16 @bridge_bftrunc(float %bf254_0_s)
  %bf254_1_a0 = extractelement <2 x i16> %v207, i32 1
  %bf254_1_a1 = extractelement <2 x i16> %v222, i32 1
  %bf254_1_x = call float @bridge_bfext(i16 %bf254_1_a0)
  %bf254_1_y = call float @bridge_bfext(i16 %bf254_1_a1)
  %bf254_1_s = fadd float %bf254_1_x, %bf254_1_y
  %bf254_1_r = call i16 @bridge_bftrunc(float %bf254_1_s)
  %bf254_v0 = insertelement <2 x i16> undef, i16 %bf254_0_r, i32 0
  %v223 = insertelement <2 x i16> %bf254_v0, i16 %bf254_1_r, i32 1
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v224 = shl nuw nsw i32 %v18, 1
  %v225 = and i32 %v17, 1
  %v226 = icmp eq i32 %v225, 0
  %v227 = select i1 %v226, i32 0, i32 320
  %v228 = and i32 %v17, 2
  %v229 = icmp eq i32 %v228, 0
  %v230 = select i1 %v229, i32 0, i32 516
  %v231 = xor i32 %v227, %v224
  %v232 = or  i32 %v231, %v230
  %v233 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v232
  %bridge_ptr339 = bitcast i8 addrspace(3)* %v233 to <2 x i16> addrspace(3)*
  store <2 x i16> %v211, <2 x i16> addrspace(3)* %bridge_ptr339, align 4
  %v234 = getelementptr inbounds i8, i8 addrspace(3)* %v233, i32 128
  %bridge_ptr341 = bitcast i8 addrspace(3)* %v234 to <2 x i16> addrspace(3)*
  store <2 x i16> %v215, <2 x i16> addrspace(3)* %bridge_ptr341, align 4
  %v235 = xor i32 %v232, 4
  %v236 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v235
  %bridge_ptr344 = bitcast i8 addrspace(3)* %v236 to <2 x i16> addrspace(3)*
  store <2 x i16> %v219, <2 x i16> addrspace(3)* %bridge_ptr344, align 4
  %v237 = getelementptr inbounds i8, i8 addrspace(3)* %v236, i32 128
  %bridge_ptr346 = bitcast i8 addrspace(3)* %v237 to <2 x i16> addrspace(3)*
  store <2 x i16> %v223, <2 x i16> addrspace(3)* %bridge_ptr346, align 4
  tail call void asm sideeffect "bar.sync 0;", "~{memory}"()
  %v238 = and i32 %v33, 60
  %v239 = shl nuw nsw i32 %v225, 6
  %v240 = shl nuw nsw i32 %v91, 2
  %v241 = or  i32 %v239, %v240
  %v242 = or  i32 %v241, %v238
  %v243 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v242
  %v244 = xor i32 %v242, 320
  %v245 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v244
  %v246 = xor i32 %v242, 516
  %v247 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v246
  %v248 = xor i32 %v242, 836
  %v249 = getelementptr inbounds i8, i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*), i32 %v248
  %bridge_ptr360 = bitcast i8 addrspace(3)* %v249 to <2 x i16> addrspace(3)*
  %v250 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr360, align 4
  %bf288_0_a0 = extractelement <2 x i16> %v250, i32 0
  %bf288_0_r = call float @bridge_bfext(i16 %bf288_0_a0)
  %bf288_1_a0 = extractelement <2 x i16> %v250, i32 1
  %bf288_1_r = call float @bridge_bfext(i16 %bf288_1_a0)
  %bf288_v0 = insertelement <2 x float> undef, float %bf288_0_r, i32 0
  %v251 = insertelement <2 x float> %bf288_v0, float %bf288_1_r, i32 1
  %v252 = fmul <2 x float> %v251, <float 5.000000e-01, float 5.000000e-01>
  %v253 = extractelement <2 x float> %v251, i64 0
  %v254 = fmul float %v253, %v253
  %v255 = extractelement <2 x float> %v251, i64 1
  %v256 = fmul float %v255, %v255
  %v257 = fmul float %v254, %v253
  %v258 = fmul float %v256, %v255
  %v259 = fmul float %v257, 0x3FA6E4E260000000
  %v260 = fmul float %v258, 0x3FA6E4E260000000
  %v261 = fadd float %v259, %v253
  %v262 = fadd float %v260, %v255
  %v263 = fmul float %v261, 0x3FE9884540000000
  %v264 = fmul float %v262, 0x3FE9884540000000
  %bridge_ptr380 = bitcast i8 addrspace(3)* %v247 to <2 x i16> addrspace(3)*
  %v265 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr380, align 4
  %bf303_0_a0 = extractelement <2 x i16> %v265, i32 0
  %bf303_0_r = call float @bridge_bfext(i16 %bf303_0_a0)
  %bf303_1_a0 = extractelement <2 x i16> %v265, i32 1
  %bf303_1_r = call float @bridge_bfext(i16 %bf303_1_a0)
  %bf303_v0 = insertelement <2 x float> undef, float %bf303_0_r, i32 0
  %v266 = insertelement <2 x float> %bf303_v0, float %bf303_1_r, i32 1
  %v267 = fmul <2 x float> %v266, <float 5.000000e-01, float 5.000000e-01>
  %v268 = extractelement <2 x float> %v266, i64 0
  %v269 = fmul float %v268, %v268
  %v270 = extractelement <2 x float> %v266, i64 1
  %v271 = fmul float %v270, %v270
  %v272 = fmul float %v269, %v268
  %v273 = fmul float %v271, %v270
  %v274 = fmul float %v272, 0x3FA6E4E260000000
  %v275 = fmul float %v273, 0x3FA6E4E260000000
  %v276 = fadd float %v274, %v268
  %v277 = fadd float %v275, %v270
  %v278 = fmul float %v276, 0x3FE9884540000000
  %v279 = fmul float %v277, 0x3FE9884540000000
  %bridge_ptr400 = bitcast i8 addrspace(3)* %v245 to <2 x i16> addrspace(3)*
  %v280 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr400, align 4
  %bf318_0_a0 = extractelement <2 x i16> %v280, i32 0
  %bf318_0_r = call float @bridge_bfext(i16 %bf318_0_a0)
  %bf318_1_a0 = extractelement <2 x i16> %v280, i32 1
  %bf318_1_r = call float @bridge_bfext(i16 %bf318_1_a0)
  %bf318_v0 = insertelement <2 x float> undef, float %bf318_0_r, i32 0
  %v281 = insertelement <2 x float> %bf318_v0, float %bf318_1_r, i32 1
  %v282 = fmul <2 x float> %v281, <float 5.000000e-01, float 5.000000e-01>
  %v283 = extractelement <2 x float> %v281, i64 0
  %v284 = fmul float %v283, %v283
  %v285 = extractelement <2 x float> %v281, i64 1
  %v286 = fmul float %v285, %v285
  %v287 = fmul float %v284, %v283
  %v288 = fmul float %v286, %v285
  %v289 = fmul float %v287, 0x3FA6E4E260000000
  %v290 = fmul float %v288, 0x3FA6E4E260000000
  %v291 = fadd float %v289, %v283
  %v292 = fadd float %v290, %v285
  %v293 = fmul float %v291, 0x3FE9884540000000
  %v294 = fmul float %v292, 0x3FE9884540000000
  %bridge_ptr420 = bitcast i8 addrspace(3)* %v243 to <2 x i16> addrspace(3)*
  %v295 = load <2 x i16>, <2 x i16> addrspace(3)* %bridge_ptr420, align 4
  %bf333_0_a0 = extractelement <2 x i16> %v295, i32 0
  %bf333_0_r = call float @bridge_bfext(i16 %bf333_0_a0)
  %bf333_1_a0 = extractelement <2 x i16> %v295, i32 1
  %bf333_1_r = call float @bridge_bfext(i16 %bf333_1_a0)
  %bf333_v0 = insertelement <2 x float> undef, float %bf333_0_r, i32 0
  %v296 = insertelement <2 x float> %bf333_v0, float %bf333_1_r, i32 1
  %v297 = fmul <2 x float> %v296, <float 5.000000e-01, float 5.000000e-01>
  %v298 = extractelement <2 x float> %v296, i64 0
  %v299 = fmul float %v298, %v298
  %v300 = extractelement <2 x float> %v296, i64 1
  %v301 = fmul float %v300, %v300
  %v302 = fmul float %v299, %v298
  %v303 = fmul float %v301, %v300
  %v304 = fmul float %v302, 0x3FA6E4E260000000
  %v305 = fmul float %v303, 0x3FA6E4E260000000
  %v306 = fadd float %v304, %v298
  %v307 = fadd float %v305, %v300
  %v308 = fmul float %v306, 0x3FE9884540000000
  %v309 = fmul float %v307, 0x3FE9884540000000
  %v310 = tail call float @f06_tanh(float %v308)
  %v311 = tail call float @f06_tanh(float %v309)
  %v312 = tail call float @f06_tanh(float %v293)
  %v313 = tail call float @f06_tanh(float %v294)
  %v314 = tail call float @f06_tanh(float %v278)
  %v315 = tail call float @f06_tanh(float %v279)
  %v316 = tail call float @f06_tanh(float %v263)
  %v317 = tail call float @f06_tanh(float %v264)
  %v318 = insertelement <2 x float> undef, float %v310, i64 0
  %v319 = insertelement <2 x float> %v318, float %v311, i64 1
  %v320 = fadd <2 x float> %v319, <float 1.000000e+00, float 1.000000e+00>
  %v321 = insertelement <2 x float> undef, float %v312, i64 0
  %v322 = insertelement <2 x float> %v321, float %v313, i64 1
  %v323 = fadd <2 x float> %v322, <float 1.000000e+00, float 1.000000e+00>
  %v324 = insertelement <2 x float> undef, float %v314, i64 0
  %v325 = insertelement <2 x float> %v324, float %v315, i64 1
  %v326 = fadd <2 x float> %v325, <float 1.000000e+00, float 1.000000e+00>
  %v327 = insertelement <2 x float> undef, float %v316, i64 0
  %v328 = insertelement <2 x float> %v327, float %v317, i64 1
  %v329 = fadd <2 x float> %v328, <float 1.000000e+00, float 1.000000e+00>
  %v330 = fmul <2 x float> %v297, %v320
  %v331 = fmul <2 x float> %v282, %v323
  %v332 = fmul <2 x float> %v267, %v326
  %v333 = fmul <2 x float> %v252, %v329
  %bf371_0_a0 = extractelement <2 x float> %v330, i32 0
  %bf371_0_r = call i16 @bridge_bftrunc(float %bf371_0_a0)
  %bf371_1_a0 = extractelement <2 x float> %v330, i32 1
  %bf371_1_r = call i16 @bridge_bftrunc(float %bf371_1_a0)
  %bf371_v0 = insertelement <2 x i16> undef, i16 %bf371_0_r, i32 0
  %v334 = insertelement <2 x i16> %bf371_v0, i16 %bf371_1_r, i32 1
  %bf372_0_a0 = extractelement <2 x float> %v331, i32 0
  %bf372_0_r = call i16 @bridge_bftrunc(float %bf372_0_a0)
  %bf372_1_a0 = extractelement <2 x float> %v331, i32 1
  %bf372_1_r = call i16 @bridge_bftrunc(float %bf372_1_a0)
  %bf372_v0 = insertelement <2 x i16> undef, i16 %bf372_0_r, i32 0
  %v335 = insertelement <2 x i16> %bf372_v0, i16 %bf372_1_r, i32 1
  %bf373_0_a0 = extractelement <2 x float> %v332, i32 0
  %bf373_0_r = call i16 @bridge_bftrunc(float %bf373_0_a0)
  %bf373_1_a0 = extractelement <2 x float> %v332, i32 1
  %bf373_1_r = call i16 @bridge_bftrunc(float %bf373_1_a0)
  %bf373_v0 = insertelement <2 x i16> undef, i16 %bf373_0_r, i32 0
  %v336 = insertelement <2 x i16> %bf373_v0, i16 %bf373_1_r, i32 1
  %bf374_0_a0 = extractelement <2 x float> %v333, i32 0
  %bf374_0_r = call i16 @bridge_bftrunc(float %bf374_0_a0)
  %bf374_1_a0 = extractelement <2 x float> %v333, i32 1
  %bf374_1_r = call i16 @bridge_bftrunc(float %bf374_1_a0)
  %bf374_v0 = insertelement <2 x i16> undef, i16 %bf374_0_r, i32 0
  %v337 = insertelement <2 x i16> %bf374_v0, i16 %bf374_1_r, i32 1
  %v338 = shl i32 %v20, 7
  %v339 = add i32 %v338, %v24
  %v340 = sext i32 %v339 to i64
  %bridge_in491 = bitcast i8 addrspace(1)* %v3 to i16 addrspace(1)*
  %bridge_gep491 = getelementptr i16, i16 addrspace(1)* %bridge_in491, i64 %v340
  %v341 = bitcast i16 addrspace(1)* %bridge_gep491 to i8 addrspace(1)*
  %v342 = bitcast <2 x i16> %v334 to i32
  %v343 = bitcast <2 x i16> %v335 to i32
  %v344 = bitcast <2 x i16> %v336 to i32
  %v345 = bitcast <2 x i16> %v337 to i32
  tail call void asm sideeffect "@$5 st.global.v4.b32 [ $4 + 0 ], { $0, $1, $2, $3 };", "r,r,r,r,l,b"(i32 %v342, i32 %v343, i32 %v344, i32 %v345, i8 addrspace(1)* %v341, i1 %v174) #3
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


attributes #0 = { "nvvm.reqntid"="64" }
attributes #1 = {     nounwind speculatable   }
attributes #2 = {     nounwind   }
attributes #3 = { nounwind }
attributes #4 = { convergent  nounwind }
attributes #5 = {   nounwind  }

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
!2 = !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)* @f06_gelu_body, !"reqntidx", i32 64}
