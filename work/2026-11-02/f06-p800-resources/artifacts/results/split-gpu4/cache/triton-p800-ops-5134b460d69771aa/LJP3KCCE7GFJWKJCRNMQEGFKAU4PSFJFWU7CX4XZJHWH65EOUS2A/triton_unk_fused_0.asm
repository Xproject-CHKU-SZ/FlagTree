	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-gpu4/cache/triton-p800-ops-5134b460d69771aa/native-activation-6p34zali" "relu-candidate.mlir"
	.loc	1 2 0                           # relu-candidate.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -72
	addli r30, sp, 8
	addli r1, zero, 1
.Ltmp0:
	.loc	1 49 11 prologue_end            # relu-candidate.mlir:49:11
	core_id r2
	loadli.w r18,  40(r30)
	loadli.w r27,  36(r30)
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
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 3
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 7
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 13
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 15
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	ble.s r3, r1, .LBB0_27
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[8:9], r1
	addli r10, zero, 4
	addli r17, zero, 8
	addli r12, zero, 1
	addli r16, zero, 128
	addli r11, zero, 16
	addli r20, zero, 2
	addli r5, zero, 8192
	addli r28, zero, 0
	store.d r[3:4], -8(r30)                 # 8-byte Folded Spill
	addli r4, zero, 64
	j .LBB0_8
.LBB0_5:                                # %.thread32
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 69 11 is_stmt 1               # relu-candidate.mlir:69:11
	load.d r[13:14], 16(r30)
	sll.d r[6:7], r[22:23], r12
	addli r1, zero, 13
	addli r3, zero, 512
	xwait r1, 0
	lock zero, r10
	slli r1, r24, 1
	add.ul r[6:7], r[13:14], r[6:7]
	dma_cfg zero, r12, zero, 0
	dma_cfg zero, r7, zero, 2
	dma_cfg r21, r6, r1, 3
	addli r1, zero, 256
	dma_cfg r3, r1, r12, 4
	dma_run zero
	unlock r10
	addli r1, zero, 12
.LBB0_6:                                # %.thread34
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                # %.thread34
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 1
	addli r28, r28, 1
	setlt.sl r1, r[8:9], r[6:7]
	beq r1, zero, .LBB0_27
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
                                        #     Child Loop BB0_15 Depth 2
	div.s r1, r8, r18
	.loc	1 7 14 is_stmt 1                # relu-candidate.mlir:7:14
	mod.s r21, r28, r10
	.loc	1 60 11                         # relu-candidate.mlir:60:11
	addli r6, zero, 7
	div.s r1, r1, r27
	.loc	1 58 11                         # relu-candidate.mlir:58:11
	slli r24, r21, 11
	.loc	1 7 14                          # relu-candidate.mlir:7:14
	slli r26, r21, 13
	.loc	1 17 10                         # relu-candidate.mlir:17:10
	div.s r3, r1, r17
	slli r3, r3, 3
	.loc	1 19 10                         # relu-candidate.mlir:19:10
	sub.s r13, r12, r3
	.loc	1 17 10                         # relu-candidate.mlir:17:10
	sub.s r14, r1, r3
	.loc	1 20 10                         # relu-candidate.mlir:20:10
	min.s r13, r13, r17
	.loc	1 21 10                         # relu-candidate.mlir:21:10
	mod.s r15, r1, r13
	.loc	1 24 10                         # relu-candidate.mlir:24:10
	div.s r1, r14, r13
	.loc	1 60 11                         # relu-candidate.mlir:60:11
	zext_int2long r[22:23], r1
	.loc	1 22 10                         # relu-candidate.mlir:22:10
	add.s r3, r15, r3
	.loc	1 60 11                         # relu-candidate.mlir:60:11
	sll.d r[22:23], r[22:23], r6
	.loc	1 49 11                         # relu-candidate.mlir:49:11
	lui r6, 8
	.loc	1 59 11                         # relu-candidate.mlir:59:11
	zext_int2long r[14:15], r3
	.loc	1 49 11                         # relu-candidate.mlir:49:11
	add.s r25, r24, r6
	bneq r2, r12, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 3
	addli r6, zero, 11
	xwait r13, 0
	addli r13, r18, 0
	load.d r[18:19], 0(r30)
	sll.d r[6:7], r[14:15], r6
	lock zero, r10
	dma_cfg r12, r12, zero, 0
	add.ul r[6:7], r[18:19], r[6:7]
	addli r18, r13, 0
	dma_cfg zero, r7, zero, 2
	dma_cfg r25, r6, r16, 3
	dma_cfg r16, r16, r11, 4
	dma_run zero
	unlock r10
	xsignal r20, 0
	.loc	1 58 11                         # relu-candidate.mlir:58:11
	j .LBB0_12
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r20, .LBB0_17
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	addli r6, zero, 5
	xwait r20, 0
	xwait r6, 0
	addli r6, zero, 3
	lock zero, zero
	ds_cfg r6, zero, 0
	ds_cfg r4, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r11, zero, 13
	shuffle_batch r24, r25, r4, 1
	unlock zero
	xsignal r6, 0
	xsignal r10, 0
.LBB0_12:                               # %.thread4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	slli r1, r1, 7
	zext_int2long r[6:7], r16
	.loc	1 69 11 is_stmt 1               # relu-candidate.mlir:69:11
	zext_int2long r[24:25], r1
	slli r1, r21, 9
	max.ul r[6:7], r[24:25], r[6:7]
	sub.sl r[24:25], r[6:7], r[24:25]
	lui r6, 26
	add.s r21, r1, r6
	beq r2, r12, .LBB0_5
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	lui r1, 26
	.loc	1 73 11 is_stmt 1               # relu-candidate.mlir:73:11
	addli r6, zero, 5
	ori r1, r1, 2048
	add.s r1, r26, r1
	bneq r2, r6, .LBB0_21
# %bb.14:                               #   in Loop: Header=BB0_8 Depth=1
	addli r6, zero, 10
	addli r3, zero, 0
	xwait r6, 0
	addli r6, zero, 12
	xwait r6, 0
	addli r6, zero, 15
	xwait r6, 0
	lock zero, r20
	lui r6, 260096
	ew_cfg r12, zero, zero, 10
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r6, r6, zero, 0
	addli r6, zero, 127
	ew_cfg zero, r6, zero, 2
	ew_cfg r12, zero, zero, 3
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r1, r3
	add.s r7, r26, r3
	addli r3, r3, 512
	dsmadd r6, r7, r21, 0
	bneq r3, r5, .LBB0_15
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	ew_cfg zero, zero, zero, 10
	unlock r20
	xsignal r1, 0
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 14
	j .LBB0_6
.LBB0_17:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 58 11                         # relu-candidate.mlir:58:11
	slli r25, r21, 14
	.loc	1 57 11                         # relu-candidate.mlir:57:11
	beq r2, r10, .LBB0_24
# %bb.18:                               #   in Loop: Header=BB0_8 Depth=1
	lui r6, 10
	add.s r24, r25, r6
	addli r6, zero, 7
	beq r2, r6, .LBB0_23
# %bb.19:                               #   in Loop: Header=BB0_8 Depth=1
	addli r6, zero, 6
	bneq r2, r6, .LBB0_12
# %bb.20:                               #   in Loop: Header=BB0_8 Depth=1
	load.d r[16:17], 8(r30)
	sll.d r[6:7], r[22:23], r12
	addli r13, zero, 7
	xwait r13, 0
	lock zero, r10
	addli r13, zero, 256
	add.ul r[6:7], r[16:17], r[6:7]
	dma_cfg r12, r12, zero, 0
	addli r16, zero, 128
	addli r17, zero, 8
	dma_cfg zero, r7, zero, 2
	dma_cfg r24, r6, r13, 3
	addli r6, zero, 6
	dma_cfg r13, r13, r4, 4
	dma_run zero
	unlock r10
	xsignal r6, 0
	j .LBB0_12
.LBB0_21:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 85 5                          # relu-candidate.mlir:85:5
	bneq r2, zero, .LBB0_7
# %bb.22:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # relu-candidate.mlir:0:5
	slli r3, r3, 4
	zext_int2long r[6:7], zero
	sext_int2long r[26:27], r3
	.loc	1 85 5                          # relu-candidate.mlir:85:5
	addli r3, zero, 12
	sll.d r[13:14], r[14:15], r3
	sll.d r[15:16], r[22:23], r12
	load.d r[21:22], 24(r30)
	min.sl r[6:7], r[26:27], r[6:7]
	addli r3, zero, 14
	addli.d r[6:7], r[6:7], 16
	xwait r3, 0
	slli r3, r24, 2
	add.ul r[13:14], r[21:22], r[13:14]
	zext_int2long r[21:22], r11
	max.sl r[6:7], r[6:7], r[26:27]
	add.ul r[13:14], r[13:14], r[15:16]
	addli r15, zero, 5
	loadli.w r16,  40(r30)
	sub.sl r[6:7], r[6:7], r[26:27]
	loadli.w r27,  36(r30)
	lock zero, r15
	dma_cfg r12, zero, zero, 0
	min.sl r[6:7], r[6:7], r[21:22]
	addli r18, r16, 0
	addli r16, zero, 128
	dma_cfg zero, r12, zero, 1
	dma_cfg r14, zero, zero, 2
	dma_cfg r13, r1, r3, 3
	addli r1, zero, 256
	addli r3, zero, 512
	dma_cfg r1, r3, r6, 4
	addli r1, zero, 15
	dma_run zero
	unlock r15
	j .LBB0_6
.LBB0_23:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 58 11 is_stmt 1               # relu-candidate.mlir:58:11
	addli r6, zero, 6
	xwait r6, 0
	addli r6, zero, 9
	xwait r6, 0
	addli r6, zero, 3
	lock zero, zero
	ds_cfg r6, zero, 0
	addli r6, zero, 7
	ds_cfg r16, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r16, zero, 13
	shuffle_coa r25, r24, r4, 2
	unlock zero
	xsignal r6, 0
	xsignal r17, 0
	j .LBB0_12
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	addli r13, zero, 0
	addli r27, zero, 1
	addli r16, zero, 1
	.loc	1 58 11                         # relu-candidate.mlir:58:11
	addli r6, zero, 11
	xwait r10, 0
	xwait r17, 0
	xwait r6, 0
.LBB0_25:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r6, r13, 13
	slli r7, r13, 8
	lock zero, r27
	addli r13, zero, 1
	mm_cfg r4, r4, r11, 0
	or r6, r6, r25
	or r7, r7, r26
	mm_cfg r20, r10, r27, 2
	mm r7, r24, r6, 5
	andi r6, r16, 1
	addli r16, zero, 0
	unlock r27
	bneq r6, zero, .LBB0_25
# %bb.26:                               #   in Loop: Header=BB0_8 Depth=1
	addli r6, zero, 5
	loadli.w r16,  40(r30)
	loadli.w r27,  36(r30)
	xsignal r6, 0
	addli r6, zero, 9
	addli r18, r16, 0
	addli r16, zero, 128
	xsignal r6, 0
	addli r6, zero, 10
	xsignal r6, 0
	j .LBB0_12
.LBB0_27:                               # %._crit_edge
	.loc	1 2 3 is_stmt 1                 # relu-candidate.mlir:2:3
	xsignal zero, 0
	bneq r2, zero, .LBB0_29
# %bb.28:
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
.LBB0_29:
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-gpu4/cache/triton-p800-ops-5134b460d69771aa/native-activation-6p34zali" # string offset=27
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
