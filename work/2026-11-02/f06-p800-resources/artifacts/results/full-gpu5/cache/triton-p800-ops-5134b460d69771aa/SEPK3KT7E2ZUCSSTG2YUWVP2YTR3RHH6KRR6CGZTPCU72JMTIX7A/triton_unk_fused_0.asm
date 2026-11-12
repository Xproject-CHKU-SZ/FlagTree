	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/native-activation-izm0mgd7" "relu-candidate.mlir"
	.loc	1 2 0                           # relu-candidate.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -72
	addli r30, sp, 8
	addli r1, zero, 1
.Ltmp0:
	.loc	1 48 11 prologue_end            # relu-candidate.mlir:48:11
	core_id r2
	loadli.w r8,  40(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
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
	addli r3, zero, 5
	csr_set csr3, r1
	addli r1, zero, 11
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 3
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 7
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 13
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 15
	xsignal r3, 0
	xsignal r3, 0
	xsignal r1, 0
	xsignal r1, 0
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
	ble.s r3, r1, .LBB0_26
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[10:11], r1
	addli r12, zero, 2
	addli r13, zero, 64
	addli r14, zero, 1
	addli r9, zero, 5
	addli r15, zero, 12
	addli r19, zero, 4
	addli r16, zero, 128
	addli r20, zero, 32
	addli r28, zero, 0
	store.d r[3:4], -8(r30)                 # 8-byte Folded Spill
	addli r3, zero, 8
	addli r4, zero, 4096
	j .LBB0_7
.LBB0_5:                                # %.thread25
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 68 11 is_stmt 1               # relu-candidate.mlir:68:11
	load.d r[20:21], 16(r30)
	sll.d r[5:6], r[6:7], r14
	addli r1, zero, 13
	xwait r1, 0
	lock zero, r19
	slli r1, r17, 1
	add.ul r[5:6], r[20:21], r[5:6]
	dma_cfg zero, r14, zero, 0
	dma_cfg zero, r6, zero, 2
	dma_cfg r24, r5, r1, 3
	dma_cfg r16, r13, r14, 4
	dma_run zero
	unlock r19
	xsignal r15, 0
.LBB0_6:                                # %.thread26
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 1
	addli r28, r28, 1
	addli r20, zero, 32
	setlt.sl r1, r[10:11], r[5:6]
	beq r1, zero, .LBB0_26
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
	div.s r1, r10, r8
	loadli.w r5,  36(r30)
	.loc	1 7 14 is_stmt 1                # relu-candidate.mlir:7:14
	mod.s r24, r28, r12
	div.s r1, r1, r5
	.loc	1 17 10                         # relu-candidate.mlir:17:10
	div.s r5, r1, r13
	.loc	1 18 10                         # relu-candidate.mlir:18:10
	slli r6, r5, 3
	.loc	1 17 10                         # relu-candidate.mlir:17:10
	slli r5, r5, 6
	.loc	1 19 10                         # relu-candidate.mlir:19:10
	sub.s r7, r14, r6
	.loc	1 17 10                         # relu-candidate.mlir:17:10
	sub.s r5, r1, r5
	.loc	1 20 10                         # relu-candidate.mlir:20:10
	min.s r7, r7, r3
	.loc	1 21 10                         # relu-candidate.mlir:21:10
	mod.s r17, r1, r7
	.loc	1 24 10                         # relu-candidate.mlir:24:10
	div.s r1, r5, r7
	.loc	1 7 14                          # relu-candidate.mlir:7:14
	slli r5, r24, 12
	.loc	1 22 10                         # relu-candidate.mlir:22:10
	add.s r27, r17, r6
	.loc	1 59 11                         # relu-candidate.mlir:59:11
	zext_int2long r[6:7], r1
	.loc	1 48 11                         # relu-candidate.mlir:48:11
	addli r17, r5, 8192
	.loc	1 58 11                         # relu-candidate.mlir:58:11
	zext_int2long r[25:26], r27
	.loc	1 59 11                         # relu-candidate.mlir:59:11
	sll.d r[6:7], r[6:7], r9
	.loc	1 48 11                         # relu-candidate.mlir:48:11
	bneq r2, r14, .LBB0_9
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	load.d r[20:21], 0(r30)
	sll.d r[22:23], r[25:26], r15
	addli r18, zero, 3
	addli r16, zero, 128
	xwait r18, 0
	lock zero, r19
	addli r18, zero, 128
	add.ul r[22:23], r[20:21], r[22:23]
	dma_cfg r14, r14, zero, 0
	dma_cfg zero, r23, zero, 2
	dma_cfg r17, r22, r18, 3
	addli r17, zero, 32
	dma_cfg r18, r18, r17, 4
	dma_run zero
	unlock r19
	xsignal r12, 0
	.loc	1 57 11                         # relu-candidate.mlir:57:11
	j .LBB0_18
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	bneq r2, r12, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	addli r18, zero, 3
	.loc	1 57 11                         # relu-candidate.mlir:57:11
	xwait r12, 0
	xwait r9, 0
	lock zero, zero
	ds_cfg r18, zero, 0
	ds_cfg r13, zero, 1
	ds_cfg r13, zero, 14
	ds_cfg r20, zero, 13
	shuffle_batch r5, r17, r13, 1
	unlock zero
	xsignal r18, 0
	xsignal r19, 0
	j .LBB0_18
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 56 11 is_stmt 1               # relu-candidate.mlir:56:11
	beq r2, r19, .LBB0_16
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	slli r17, r24, 13
	lui r18, 4
	add.s r17, r17, r18
	addli r18, zero, 7
	beq r2, r18, .LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_7 Depth=1
	addli r18, zero, 6
	bneq r2, r18, .LBB0_18
# %bb.14:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[20:21], 8(r30)
	sll.d r[22:23], r[6:7], r14
	addli r18, zero, 7
	xwait r18, 0
	lock zero, r19
	add.ul r[22:23], r[20:21], r[22:23]
	dma_cfg r14, r14, zero, 0
	dma_cfg zero, r23, zero, 2
	dma_cfg r17, r22, r13, 3
	addli r17, zero, 512
	dma_cfg r16, r17, r13, 4
	dma_run zero
	unlock r19
	addli r17, zero, 6
	j .LBB0_17
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 57 11                         # relu-candidate.mlir:57:11
	addli r18, zero, 6
	xwait r18, 0
	addli r18, zero, 9
	xwait r18, 0
	addli r18, zero, 3
	lock zero, zero
	ds_cfg r18, zero, 0
	ds_cfg r13, zero, 1
	ds_cfg r13, zero, 14
	ds_cfg r20, zero, 13
	shuffle_coa r5, r17, r13, 2
	addli r17, zero, 7
	unlock zero
	xsignal r17, 0
	xsignal r3, 0
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=1
	addli r17, zero, 11
	xwait r19, 0
	xwait r3, 0
	xwait r17, 0
	lock zero, r14
	addli r17, zero, 9
	mm_cfg r20, r13, r20, 0
	mm_cfg r12, r14, r14, 2
	mm r5, r5, r5, 5
	unlock r14
	xsignal r9, 0
	xsignal r17, 0
	addli r17, zero, 10
.LBB0_17:                               # %.thread4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	xsignal r17, 0
.LBB0_18:                               # %.thread4
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r17, zero, 224
	slli r1, r1, 5
	.loc	1 68 11 is_stmt 1               # relu-candidate.mlir:68:11
	zext_int2long r[20:21], r1
	zext_int2long r[17:18], r17
	addli r1, zero, 32
	min.ul r[17:18], r[20:21], r[17:18]
	zext_int2long r[22:23], r1
	slli r1, r24, 7
	addli.d r[17:18], r[17:18], 32
	max.ul r[17:18], r[17:18], r[20:21]
	sub.sl r[17:18], r[17:18], r[20:21]
	lui r20, 8
	min.ul r[17:18], r[17:18], r[22:23]
	add.s r24, r1, r20
	beq r2, r14, .LBB0_5
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	lui r1, 8
	ori r1, r1, 256
	.loc	1 72 11 is_stmt 1               # relu-candidate.mlir:72:11
	add.s r1, r5, r1
	bneq r2, r9, .LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	addli r7, zero, 10
	addli r6, zero, 0
	xwait r7, 0
	addli r7, zero, 15
	xwait r15, 0
	xwait r7, 0
	lock zero, r12
	lui r7, 260096
	ew_cfg r14, zero, zero, 10
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r7, r7, zero, 0
	addli r7, zero, 31
	ew_cfg zero, r7, zero, 2
	ew_cfg r14, zero, zero, 3
.LBB0_21:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r7, r1, r6
	add.s r17, r5, r6
	addli r6, r6, 128
	dsmadd r7, r17, r24, 0
	bneq r6, r4, .LBB0_21
# %bb.22:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	ew_cfg zero, zero, zero, 10
	unlock r12
	xsignal r1, 0
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 14
	j .LBB0_25
.LBB0_23:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 84 5                          # relu-candidate.mlir:84:5
	bneq r2, zero, .LBB0_6
# %bb.24:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # relu-candidate.mlir:0:5
	slli r5, r27, 5
	addli r15, r8, 0
	zext_int2long r[20:21], zero
	addli r3, zero, 14
	sext_int2long r[8:9], r5
	.loc	1 84 5                          # relu-candidate.mlir:84:5
	sll.d r[24:25], r[25:26], r3
	load.d r[26:27], 24(r30)
	sll.d r[5:6], r[6:7], r14
	xwait r3, 0
	addli r3, zero, 8
	min.sl r[20:21], r[8:9], r[20:21]
	add.ul r[24:25], r[26:27], r[24:25]
	addli.d r[20:21], r[20:21], 32
	add.ul r[5:6], r[24:25], r[5:6]
	max.sl r[20:21], r[20:21], r[8:9]
	sub.sl r[7:8], r[20:21], r[8:9]
	addli r20, zero, 5
	slli r9, r17, 2
	lock zero, r20
	min.sl r[7:8], r[7:8], r[22:23]
	dma_cfg r14, zero, zero, 0
	dma_cfg zero, r14, zero, 1
	dma_cfg r6, zero, zero, 2
	dma_cfg r5, r1, r9, 3
	addli r1, zero, 512
	addli r9, zero, 5
	dma_cfg r1, r16, r7, 4
	addli r8, r15, 0
	addli r15, zero, 12
	addli r1, zero, 15
	dma_run zero
	unlock r20
.LBB0_25:                               # %.thread26
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	xsignal r1, 0
	j .LBB0_6
.LBB0_26:                               # %._crit_edge
	.loc	1 2 3 is_stmt 1                 # relu-candidate.mlir:2:3
	xsignal zero, 0
	bneq r2, zero, .LBB0_28
# %bb.27:
	.loc	1 0 3 is_stmt 0                 # relu-candidate.mlir:0:3
	addli r1, zero, 2
	.loc	1 2 3                           # relu-candidate.mlir:2:3
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
.LBB0_28:
	.loc	1 2 3 epilogue_begin            # relu-candidate.mlir:2:3
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
.asciz	"relu-candidate.mlir"           # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/native-activation-izm0mgd7" # string offset=27
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
