	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/i4" "ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py"
	.loc	1 23 0                          # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:23:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -72
	addli r1, zero, 1
.Ltmp0:
	.loc	1 82 20 prologue_end            # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:82:20
	core_id r2
	addli r30, sp, 8
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 20 is_stmt 0                # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:0:20
	lui r1, 1048575
	ori r1, r1, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	addli r3, zero, 2
	uni_sram_cfg r1, r1
	lui r4, 1048575
	lock zero, r3
	ew_cfg r1, zero, zero, 16
	ori r1, r4, 4095
	unlock r3
	addli r3, zero, 3
	csr_set csr3, r1
	addli r1, zero, 5
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r1, zero, 9
	addli r3, zero, 7
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r1, zero, 11
	addli r3, zero, 14
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
.LBB0_3:
	loadli.w r1,  32(r30)
	loadli.w r3,  36(r30)
	load_param_i r5, 1
	loadli.w r4,  40(r30)
	mul.s r1, r3, r1
	addli r3, r5, 0
	fmac.s r3, r1, r4
	mul.s r4, r1, r4
	addli r3, r3, -1
	div.s r3, r3, r5
	load_param_i r5, 0
	mul.s r1, r3, r5
	fmac.s r3, r3, r5
	min.s r3, r3, r4
	ble.s r3, r1, .LBB0_28
# %bb.4:                                # %.lr.ph
	sext_int2long r[8:9], r3
	sext_int2long r[10:11], r1
	addli r18, zero, 8
	addli r28, zero, 1
	addli r14, zero, 3
	addli r17, zero, 4
	addli r19, zero, 16
	addli r20, zero, 2
	addli r27, zero, 64
	addli r5, zero, 8192
	addli r13, zero, 6
	addli r4, zero, 0
	j .LBB0_8
.LBB0_5:                                # %.thread29
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 102 66 is_stmt 1              # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:102:66
	load.d r[14:15], 16(r30)
	sll.d r[6:7], r[6:7], r20
	addli r1, zero, 11
	xwait r1, 0
	lock zero, r17
	slli r1, r21, 2
	add.ul r[6:7], r[14:15], r[6:7]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r7, zero, 2
	dma_cfg r16, r6, r1, 3
	addli r1, zero, 512
	dma_cfg r1, r1, r28, 4
	dma_run zero
	unlock r17
	addli r1, zero, 10
.LBB0_6:                                # %.thread36
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:0:0
	xsignal r1, 0
	addli r14, zero, 3
.LBB0_7:                                # %.thread36
                                        #   in Loop: Header=BB0_8 Depth=1
	addli.d r[10:11], r[10:11], 1
	addli r4, r4, 1
	setlt.sl r1, r[10:11], r[8:9]
	beq r1, zero, .LBB0_28
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_19 Depth 2
	loadli.w r1,  40(r30)
	loadli.w r3,  36(r30)
	div.s r1, r10, r1
	div.s r1, r1, r3
	.loc	1 54 22 is_stmt 1               # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:54:22
	div.s r3, r1, r18
	slli r3, r3, 3
	.loc	1 55 30                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:55:30
	sub.s r6, r28, r3
	.loc	1 54 22                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:54:22
	sub.s r7, r1, r3
	.loc	1 55 50                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:55:50
	min.s r6, r6, r18
	.loc	1 56 40                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:56:40
	mod.s r21, r1, r6
	.loc	1 57 30                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:57:30
	div.s r16, r7, r6
	.loc	1 90 25                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:90:25
	mod.s r1, r4, r14
	.loc	1 56 34                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:56:34
	add.s r25, r3, r21
	.loc	1 97 15                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:97:15
	zext_int2long r[6:7], r16
	addli r3, zero, 7
	.loc	1 90 25                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:90:25
	slli r26, r1, 12
	.loc	1 96 15                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:96:15
	zext_int2long r[23:24], r25
	.loc	1 97 15                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:97:15
	sll.d r[6:7], r[6:7], r3
	.loc	1 82 20                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:82:20
	bneq r2, r28, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 12
	load.d r[12:13], 0(r30)
	xwait r14, 0
	lock zero, r17
	dma_cfg zero, zero, zero, 0
	sll.d r[21:22], r[23:24], r3
	addli r3, zero, 256
	add.ul r[21:22], r[12:13], r[21:22]
	addli r13, zero, 6
	dma_cfg zero, r22, zero, 2
	dma_cfg r26, r21, r3, 3
	dma_cfg r3, r3, r19, 4
	dma_run zero
	unlock r17
	xsignal r20, 0
	.loc	1 90 25                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:90:25
	slli r3, r1, 15
	.loc	1 87 20                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:87:20
	j .LBB0_16
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 90 25                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:90:25
	bneq r2, r20, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 5
	xwait r20, 0
	xwait r3, 0
	lock zero, zero
	slli r3, r1, 15
	ds_cfg r20, zero, 0
	ds_cfg r27, zero, 1
	ds_cfg r27, zero, 14
	ds_cfg r19, zero, 13
	shuffle_batch r26, r26, r27, 1
	unlock zero
	xsignal r14, 0
	xsignal r17, 0
	.loc	1 87 20                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:87:20
	j .LBB0_16
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 90 25                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:90:25
	slli r3, r1, 15
	.loc	1 87 20                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:87:20
	addli r14, zero, 12288
	or r21, r3, r14
	addli r14, zero, 7
	beq r2, r14, .LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r13, .LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:0:20
	addli.d r[12:13], r[8:9], 0
	.loc	1 87 20                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:87:20
	load.d r[8:9], 8(r30)
	sll.d r[14:15], r[6:7], r20
	addli r22, zero, 7
	xwait r22, 0
	lock zero, r17
	addli r22, zero, 512
	add.ul r[14:15], r[8:9], r[14:15]
	dma_cfg zero, zero, zero, 0
	addli.d r[8:9], r[12:13], 0
	addli r13, zero, 6
	dma_cfg zero, r15, zero, 2
	dma_cfg r21, r14, r22, 3
	dma_cfg r22, r22, r27, 4
	dma_run zero
	unlock r17
	xsignal r13, 0
	.loc	1 90 25 is_stmt 1               # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:90:25
	j .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	addli r14, zero, 9
	xwait r13, 0
	xwait r14, 0
	lock zero, zero
	addli r14, zero, 128
	ds_cfg r20, zero, 0
	ds_cfg r14, zero, 1
	ds_cfg r27, zero, 14
	ds_cfg r14, zero, 13
	addli r14, zero, 7
	shuffle_coa r3, r21, r27, 2
	unlock zero
	xsignal r14, 0
	xsignal r18, 0
.LBB0_16:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:0:0
	slli r14, r16, 7
	addli r12, zero, 128
	zext_int2long r[15:16], r12
	.loc	1 102 66 is_stmt 1              # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:102:66
	zext_int2long r[21:22], r14
	max.ul r[14:15], r[21:22], r[15:16]
	slli r16, r1, 9
	sub.sl r[21:22], r[14:15], r[21:22]
	lui r14, 27
	add.s r16, r16, r14
	beq r2, r28, .LBB0_5
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 90 25                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:90:25
	slli r1, r1, 13
	ori r14, r14, 1536
	add.s r1, r1, r14
	bneq r2, r17, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:0:25
	addli r16, zero, 0
	addli r6, zero, 1
	addli r7, zero, 1
	.loc	1 90 25                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:90:25
	addli r14, zero, 14
	xwait r17, 0
	xwait r18, 0
	xwait r14, 0
.LBB0_19:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r14, r16, 14
	slli r15, r16, 8
	lock zero, r6
	addli r16, zero, 1
	mm_cfg r27, r27, r19, 0
	or r14, r14, r3
	or r15, r15, r1
	mm_cfg r17, r17, r6, 2
	mm r15, r26, r14, 8
	andi r14, r7, 1
	addli r7, zero, 0
	unlock r6
	bneq r14, zero, .LBB0_19
# %bb.20:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 5
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	addli r1, zero, 12
	j .LBB0_6
.LBB0_21:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25                          # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:0:25
	addli r14, zero, 3
	.loc	1 90 25                         # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:90:25
	addli r3, zero, 5
	bneq r2, r3, .LBB0_25
# %bb.22:                               #   in Loop: Header=BB0_8 Depth=1
	addli r6, zero, 10
	addli r3, zero, 0
	xwait r6, 0
	addli r6, zero, 12
	xwait r6, 0
	lock zero, r20
	lui r6, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r6, r6, zero, 0
	addli r6, zero, 127
	ew_cfg zero, r6, zero, 2
	ew_cfg r28, zero, zero, 3
.LBB0_23:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r1, r3
	addli r3, r3, 512
	dsmadd r6, r6, r16, 0
	bneq r3, r5, .LBB0_23
# %bb.24:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	unlock r20
	xsignal r1, 0
	addli r1, zero, 13
	j .LBB0_27
.LBB0_25:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 104 79 is_stmt 1              # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:104:79
	bneq r2, zero, .LBB0_7
# %bb.26:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 79 is_stmt 0                # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:0:79
	slli r3, r25, 4
	.loc	1 104 79                        # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:104:79
	sll.d r[6:7], r[6:7], r20
	zext_int2long r[14:15], zero
	addli r16, zero, 5
	sext_int2long r[25:26], r3
	addli r3, zero, 13
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	load.d r[6:7], 24(r30)
	min.sl r[14:15], r[25:26], r[14:15]
	sll.d r[23:24], r[23:24], r3
	addli.d r[14:15], r[14:15], 16
	add.ul r[23:24], r[6:7], r[23:24]
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	xwait r3, 0
	lock zero, r16
	slli r3, r21, 2
	dma_cfg zero, zero, zero, 0
	max.sl r[14:15], r[14:15], r[25:26]
	dma_cfg zero, r28, zero, 1
	add.ul r[6:7], r[23:24], r[6:7]
	sub.sl r[14:15], r[14:15], r[25:26]
	zext_int2long r[25:26], r19
	dma_cfg r7, zero, zero, 2
	dma_cfg r6, r1, r3, 3
	min.sl r[14:15], r[14:15], r[25:26]
	addli r1, zero, 512
	dma_cfg r1, r1, r14, 4
	addli r14, zero, 3
	addli r1, zero, 14
	dma_run zero
	unlock r16
.LBB0_27:                               # %.thread36
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:0:0
	xsignal r1, 0
	j .LBB0_7
.LBB0_28:                               # %._crit_edge
	.loc	1 23 0 is_stmt 1                # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:23:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_30
# %bb.29:
	.loc	1 0 0 is_stmt 0                 # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:0:0
	addli r1, zero, 2
	.loc	1 23 0                          # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:23:0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	lock zero, r1
	ew_cfg zero, zero, zero, 16
	unlock r1
	xsignal_mode_cfg zero
.LBB0_30:
	.loc	1 23 0 epilogue_begin           # ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py:23:0
	addli sp, sp, 8
	mfence { lm, sm, gm }
	exit
.Ltmp1:
.Lfunc_end0:
	.size	triton_unk_fused_0, .Lfunc_end0-triton_unk_fused_0
	.cfi_endproc
                                        # -- End function
	.type	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_PARAM_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0:
	.long	44                              # 0x2c
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	72                              # 0x48
	.size	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0,@object # @XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0
	.section	.XPU.KERNEL_DYNAMIC_LM.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0, 4

	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	0                               # DW_CHILDREN_no
	.byte	37                              # DW_AT_producer
	.byte	14                              # DW_FORM_strp
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	14                              # DW_FORM_strp
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	4                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x1b DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	2                               # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"ci4rkltys7ct5i32h767w3ymfliirf4vuppxgtrsxccqf3ol7gth.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/i4" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
