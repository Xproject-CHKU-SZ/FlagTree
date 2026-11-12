	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/native-activation-ygb406i_" "relu-candidate.mlir"
	.loc	1 2 0                           # relu-candidate.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -64
	addli r1, zero, 1
.Ltmp0:
	.loc	1 46 11 prologue_end            # relu-candidate.mlir:46:11
	core_id r8
	addli r30, sp, 0
	xsignal_mode_cfg r1
	beq r8, zero, .LBB0_2
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 3
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 7
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 13
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 15
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	ble.s r3, r1, .LBB0_28
# %bb.4:                                # %.lr.ph
	sext_int2long r[4:5], r3
	sext_int2long r[6:7], r1
	addli r2, zero, 5
	addli r9, zero, 64
	addli r10, zero, 1
	addli r16, zero, 4
	addli r17, zero, 128
	addli r18, zero, 2
	lui r28, 8
	addli r24, zero, 0
	j .LBB0_8
.LBB0_5:                                # %.thread32
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 66 11 is_stmt 1               # relu-candidate.mlir:66:11
	load.d r[19:20], 16(r30)
	sll.d r[11:12], r[26:27], r10
	addli r1, zero, 13
	addli r3, zero, 512
	xwait r1, 0
	lock zero, r16
	slli r1, r13, 1
	add.ul r[11:12], r[19:20], r[11:12]
	dma_cfg zero, r10, zero, 0
	dma_cfg zero, r12, zero, 2
	dma_cfg r23, r11, r1, 3
	addli r1, zero, 256
	dma_cfg r3, r1, r10, 4
	dma_run zero
	unlock r16
	addli r1, zero, 12
.LBB0_6:                                # %.thread34
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                # %.thread34
                                        #   in Loop: Header=BB0_8 Depth=1
	addli.d r[6:7], r[6:7], 1
	addli r24, r24, 1
	setlt.sl r1, r[6:7], r[4:5]
	beq r1, zero, .LBB0_28
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_24 Depth 2
	loadli.w r1,  40(r30)
	loadli.w r3,  36(r30)
	.loc	1 18 10 is_stmt 1               # relu-candidate.mlir:18:10
	addli r12, zero, 8
	div.s r1, r6, r1
	div.s r1, r1, r3
	.loc	1 5 14                          # relu-candidate.mlir:5:14
	mod.s r3, r24, r2
	.loc	1 15 10                         # relu-candidate.mlir:15:10
	div.s r11, r1, r9
	.loc	1 5 14                          # relu-candidate.mlir:5:14
	slli r25, r3, 15
	.loc	1 16 10                         # relu-candidate.mlir:16:10
	slli r14, r11, 3
	.loc	1 15 10                         # relu-candidate.mlir:15:10
	slli r11, r11, 6
	.loc	1 17 10                         # relu-candidate.mlir:17:10
	sub.s r13, r10, r14
	.loc	1 15 10                         # relu-candidate.mlir:15:10
	sub.s r11, r1, r11
	.loc	1 18 10                         # relu-candidate.mlir:18:10
	min.s r13, r13, r12
	.loc	1 19 10                         # relu-candidate.mlir:19:10
	mod.s r1, r1, r13
	.loc	1 22 10                         # relu-candidate.mlir:22:10
	div.s r23, r11, r13
	.loc	1 57 11                         # relu-candidate.mlir:57:11
	addli r11, zero, 7
	.loc	1 55 11                         # relu-candidate.mlir:55:11
	slli r13, r3, 13
	.loc	1 20 10                         # relu-candidate.mlir:20:10
	add.s r1, r1, r14
	.loc	1 57 11                         # relu-candidate.mlir:57:11
	zext_int2long r[14:15], r23
	sll.d r[26:27], r[14:15], r11
	.loc	1 46 11                         # relu-candidate.mlir:46:11
	lui r11, 40
	.loc	1 56 11                         # relu-candidate.mlir:56:11
	zext_int2long r[21:22], r1
	.loc	1 46 11                         # relu-candidate.mlir:46:11
	add.s r14, r13, r11
	bneq r8, r10, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r11, zero, 13
	load.d r[19:20], 0(r30)
	addli r13, zero, 3
	sll.d r[11:12], r[21:22], r11
	xwait r13, 0
	lock zero, r16
	dma_cfg r10, r10, zero, 0
	add.ul r[11:12], r[19:20], r[11:12]
	dma_cfg zero, r12, zero, 2
	dma_cfg r14, r11, r17, 3
	dma_cfg r17, r17, r9, 4
	dma_run zero
	unlock r16
	xsignal r18, 0
	.loc	1 55 11                         # relu-candidate.mlir:55:11
	j .LBB0_21
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r8, r18, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	addli r11, zero, 3
	.loc	1 55 11                         # relu-candidate.mlir:55:11
	xwait r18, 0
	xwait r2, 0
	lock zero, zero
	ds_cfg r11, zero, 0
	ds_cfg r9, zero, 1
	ds_cfg r9, zero, 14
	ds_cfg r9, zero, 13
	shuffle_batch r13, r14, r9, 1
	unlock zero
	xsignal r11, 0
	xsignal r16, 0
	j .LBB0_21
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	slli r14, r3, 14
	.loc	1 54 11 is_stmt 1               # relu-candidate.mlir:54:11
	beq r8, r16, .LBB0_17
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	lui r11, 50
	add.s r13, r14, r11
	addli r11, zero, 7
	beq r8, r11, .LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_8 Depth=1
	addli r11, zero, 6
	bneq r8, r11, .LBB0_21
# %bb.15:                               #   in Loop: Header=BB0_8 Depth=1
	addli r14, zero, 7
	sll.d r[11:12], r[26:27], r10
	xwait r14, 0
	load.d r[14:15], 8(r30)
	lock zero, r16
	dma_cfg r10, r10, zero, 0
	add.ul r[11:12], r[14:15], r[11:12]
	addli r14, zero, 256
	dma_cfg zero, r12, zero, 2
	dma_cfg r13, r11, r14, 3
	addli r11, zero, 2048
	dma_cfg r14, r11, r9, 4
	dma_run zero
	unlock r16
	addli r11, zero, 6
	j .LBB0_20
.LBB0_16:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 55 11                         # relu-candidate.mlir:55:11
	addli r11, zero, 6
	xwait r11, 0
	addli r11, zero, 9
	xwait r11, 0
	addli r11, zero, 3
	lock zero, zero
	ds_cfg r11, zero, 0
	addli r11, zero, 7
	ds_cfg r17, zero, 1
	ds_cfg r9, zero, 14
	ds_cfg r17, zero, 13
	shuffle_coa r14, r13, r9, 2
	unlock zero
	xsignal r11, 0
	addli r11, zero, 8
	j .LBB0_20
.LBB0_17:                               #   in Loop: Header=BB0_8 Depth=1
	addli r11, zero, 8
	xwait r16, 0
	addli r19, zero, 0
	addli r15, zero, 1
	addli r12, zero, 11
	xwait r11, 0
	addli r11, zero, 1
	xwait r12, 0
.LBB0_18:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r12, r19, 13
	slli r19, r19, 8
	lock zero, r15
	mm_cfg r9, r9, r9, 0
	or r12, r12, r14
	or r19, r19, r25
	mm_cfg r18, r16, r15, 2
	mm r19, r13, r12, 5
	andi r12, r11, 1
	addli r19, zero, 1
	addli r11, zero, 0
	unlock r15
	bneq r12, zero, .LBB0_18
# %bb.19:                               #   in Loop: Header=BB0_8 Depth=1
	addli r11, zero, 9
	xsignal r2, 0
	xsignal r11, 0
	addli r11, zero, 10
.LBB0_20:                               # %.thread4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	xsignal r11, 0
.LBB0_21:                               # %.thread4
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r12, zero, 896
	slli r11, r23, 7
	zext_int2long r[19:20], r17
	.loc	1 66 11 is_stmt 1               # relu-candidate.mlir:66:11
	slli r3, r3, 9
	zext_int2long r[12:13], r12
	zext_int2long r[14:15], r11
	min.ul r[11:12], r[14:15], r[12:13]
	addli.d r[11:12], r[11:12], 128
	max.ul r[11:12], r[11:12], r[14:15]
	sub.sl r[11:12], r[11:12], r[14:15]
	min.ul r[13:14], r[11:12], r[19:20]
	lui r11, 70
	add.s r23, r3, r11
	beq r8, r10, .LBB0_5
# %bb.22:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	ori r3, r11, 2560
	.loc	1 70 11 is_stmt 1               # relu-candidate.mlir:70:11
	add.s r3, r25, r3
	bneq r8, r2, .LBB0_26
# %bb.23:                               #   in Loop: Header=BB0_8 Depth=1
	addli r11, zero, 10
	addli r1, zero, 0
	xwait r11, 0
	addli r11, zero, 12
	xwait r11, 0
	addli r11, zero, 15
	xwait r11, 0
	lock zero, r18
	lui r11, 260096
	ew_cfg r10, zero, zero, 10
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r11, r11, zero, 0
	addli r11, zero, 127
	ew_cfg zero, r11, zero, 2
	ew_cfg r10, zero, zero, 3
.LBB0_24:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r11, r3, r1
	add.s r12, r25, r1
	addli r1, r1, 512
	dsmadd r11, r12, r23, 0
	bneq r1, r28, .LBB0_24
# %bb.25:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	ew_cfg zero, zero, zero, 10
	unlock r18
	xsignal r1, 0
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 14
	j .LBB0_6
.LBB0_26:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 82 5                          # relu-candidate.mlir:82:5
	bneq r8, zero, .LBB0_7
# %bb.27:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # relu-candidate.mlir:0:5
	slli r1, r1, 6
	zext_int2long r[11:12], zero
	.loc	1 82 5                          # relu-candidate.mlir:82:5
	sll.d r[25:26], r[26:27], r10
	sext_int2long r[19:20], r1
	addli r1, zero, 17
	sll.d r[21:22], r[21:22], r1
	addli.d r[1:2], r[4:5], 0
	load.d r[4:5], 24(r30)
	min.sl r[11:12], r[19:20], r[11:12]
	addli.d r[11:12], r[11:12], 64
	add.ul r[21:22], r[4:5], r[21:22]
	addli.d r[4:5], r[1:2], 0
	addli r1, zero, 14
	addli r2, zero, 5
	max.sl r[11:12], r[11:12], r[19:20]
	xwait r1, 0
	lock zero, r2
	add.ul r[21:22], r[21:22], r[25:26]
	slli r1, r13, 2
	dma_cfg r10, zero, zero, 0
	sub.sl r[11:12], r[11:12], r[19:20]
	zext_int2long r[19:20], r9
	dma_cfg zero, r10, zero, 1
	dma_cfg r22, zero, zero, 2
	min.sl r[11:12], r[11:12], r[19:20]
	dma_cfg r21, r3, r1, 3
	addli r1, zero, 512
	addli r3, zero, 2048
	dma_cfg r3, r1, r11, 4
	addli r1, zero, 15
	dma_run zero
	unlock r2
	j .LBB0_6
.LBB0_28:                               # %._crit_edge
	.loc	1 2 3 is_stmt 1                 # relu-candidate.mlir:2:3
	xsignal zero, 0
	beq r8, zero, .LBB0_30
# %bb.29:
	mfence { lm, sm, gm }
	exit
.LBB0_30:
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
	.long	64                              # 0x40
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/native-activation-ygb406i_" # string offset=27
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
