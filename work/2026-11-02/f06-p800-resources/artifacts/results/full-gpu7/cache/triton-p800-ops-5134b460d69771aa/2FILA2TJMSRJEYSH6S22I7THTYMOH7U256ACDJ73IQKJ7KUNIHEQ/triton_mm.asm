	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/bp" "cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py"
	.loc	1 22 0                          # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -88
	addli r30, sp, 24
	addli r4, zero, 1
.Ltmp0:
	.loc	1 81 20 prologue_end            # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:81:20
	core_id r2
	loadli.w r15,  32(r30)
	loadli.w r16,  28(r30)
	xsignal_mode_cfg r4
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 20 is_stmt 0                # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:0:20
	lui r4, 1048575
	ori r4, r4, 4095
	csr_set csr3, r4
	sync_group
	j .LBB0_3
.LBB0_2:
	addli r5, zero, 2
	uni_sram_cfg r4, r4
	lui r6, 1048575
	lock zero, r5
	ew_cfg r4, zero, zero, 16
	ori r4, r6, 4095
	unlock r5
	addli r5, zero, 5
	csr_set csr3, r4
	addli r4, zero, 11
	sync_group
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	addli r4, zero, 3
	xsignal r5, 0
	xsignal r5, 0
	xsignal r5, 0
	xsignal r5, 0
	addli r5, zero, 9
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	addli r4, zero, 7
	xsignal r5, 0
	xsignal r5, 0
	xsignal r5, 0
	xsignal r5, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
.LBB0_3:
	loadli.w r4,  24(r30)
	loadli.w r5,  28(r30)
	load_param_i r7, 1
	loadli.w r6,  32(r30)
	mul.s r4, r5, r4
	addli r5, r7, 0
	fmac.s r5, r4, r6
	mul.s r6, r4, r6
	addli r5, r5, -1
	div.s r5, r5, r7
	load_param_i r7, 0
	mul.s r4, r5, r7
	fmac.s r5, r5, r7
	min.s r5, r5, r6
	ble.s r5, r4, .LBB0_24
# %bb.4:                                # %.lr.ph.preheader
	sext_int2long r[8:9], r5
	sext_int2long r[10:11], r4
	addli r5, zero, 4095
	addli r12, zero, 4
	addli r13, zero, 64
	addli r14, zero, 2
	addli r26, zero, 8
	addli r3, zero, 7
	lui r1, 32
	addli r17, zero, 5
	addli r19, zero, 3
	addli r20, zero, 128
	addli r21, zero, 1
	addli r18, zero, 13
	addli r7, zero, 0
	lui r4, 1048572
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 89 25 is_stmt 1               # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:89:25
	xwait r14, 0
	xwait r17, 0
	lock zero, zero
	ds_cfg r19, zero, 0
	ds_cfg r20, zero, 1
	ds_cfg r20, zero, 14
	ds_cfg r13, zero, 13
	shuffle_batch r27, r28, r20, 1
	unlock zero
	xsignal r19, 0
	xsignal r12, 0
.LBB0_6:                                # %.thread3
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:0:25
	addli.d r[10:11], r[10:11], 1
	addli r7, r7, 1
	setlt.sl r4, r[10:11], r[8:9]
	beq r4, zero, .LBB0_24
.LBB0_7:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
	mod.s r23, r7, r12
	.loc	1 89 25                         # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:89:25
	slli r27, r23, 14
	.loc	1 81 20 is_stmt 1               # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:81:20
	add.s r28, r27, r1
	beq r2, r14, .LBB0_5
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:0:20
	div.s r4, r10, r15
	div.s r22, r4, r16
	div.s r25, r22, r13
	slli r4, r25, 3
	sub.s r5, r14, r4
	min.s r6, r5, r26
	mod.s r5, r22, r6
	add.s r24, r5, r4
	zext_int2long r[4:5], r24
	.loc	1 81 20                         # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:81:20
	bneq r2, r21, .LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 81 25                         # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:81:25
	setlt.u r6, r21, r24
	.loc	1 0 0                           # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:0:0
	sll.d r[22:23], r[4:5], r18
	.loc	1 81 25                         # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:81:25
	bneq r6, zero, .LBB0_15
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25                          # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:0:25
	zext_int2long r[24:25], zero
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	slli r28, r23, 15
	.loc	1 86 20 is_stmt 1               # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:86:20
	beq r2, r12, .LBB0_18
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	lui r23, 48
	add.s r27, r28, r23
	beq r2, r3, .LBB0_17
# %bb.13:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:0:0
	slli r23, r25, 6
	addli r25, zero, 6
	sub.s r22, r22, r23
	div.s r6, r22, r6
	zext_int2long r[22:23], r6
	sll.d r[22:23], r[22:23], r3
	.loc	1 86 20                         # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:86:20
	bneq r2, r25, .LBB0_21
# %bb.14:                               #   in Loop: Header=BB0_7 Depth=1
	sll.d r[4:5], r[22:23], r21
	load.d r[22:23], 8(r30)
	xwait r3, 0
	lock zero, r12
	addli r6, zero, 256
	dma_cfg r21, r21, zero, 0
	add.ul r[4:5], r[22:23], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r27, r4, r6, 3
	addli r4, zero, 2048
	dma_cfg r6, r4, r20, 4
	dma_run zero
	unlock r12
	xsignal r25, 0
	.loc	1 89 25 is_stmt 1               # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:89:25
	j .LBB0_6
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 81 25                         # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:81:25
	load.d r[24:25], -8(r30)                # 8-byte Folded Reload
	and.d r[24:25], r[22:23], r[24:25]
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=1
	sub.sl r[22:23], r[22:23], r[24:25]
	zext_int2long r[24:25], r13
	.loc	1 81 20 is_stmt 0               # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:81:20
	addli r6, zero, 14
	xwait r19, 0
	lock zero, r12
	dma_cfg r21, r21, zero, 0
	.loc	1 81 25                         # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:81:25
	sra.d r[22:23], r[22:23], r3
	.loc	1 81 20                         # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:81:20
	sll.d r[4:5], r[4:5], r6
	.loc	1 81 25                         # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:81:25
	min.sl r[24:25], r[22:23], r[24:25]
	sub.sl r[22:23], r[24:25], r[22:23]
	.loc	1 81 20                         # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:81:20
	load.d r[24:25], 0(r30)
	addli r6, r22, 64
	addli r22, zero, 256
	add.ul r[4:5], r[24:25], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r28, r4, r22, 3
	dma_cfg r22, r22, r6, 4
	dma_run zero
	unlock r12
	xsignal r14, 0
	.loc	1 89 25 is_stmt 1               # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:89:25
	j .LBB0_6
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:0:25
	addli r4, zero, 6
	.loc	1 89 25                         # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:89:25
	xwait r4, 0
	addli r4, zero, 9
	xwait r4, 0
	lock zero, zero
	ds_cfg r19, zero, 0
	ds_cfg r20, zero, 1
	ds_cfg r20, zero, 14
	ds_cfg r20, zero, 13
	shuffle_coa r28, r27, r20, 2
	unlock zero
	xsignal r3, 0
	xsignal r26, 0
	j .LBB0_6
.LBB0_18:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25                          # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:0:25
	addli r22, zero, 0
	addli r4, zero, 1
	addli r5, zero, 1
	.loc	1 89 25                         # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:89:25
	addli r6, zero, 11
	xwait r12, 0
	xwait r26, 0
	xwait r6, 0
.LBB0_19:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r6, r22, 14
	slli r22, r22, 8
	lock zero, r4
	mm_cfg r13, r20, r13, 0
	or r6, r6, r28
	or r22, r22, r28
	mm_cfg r12, r12, r4, 2
	mm r22, r27, r6, 5
	andi r6, r5, 1
	addli r22, zero, 1
	addli r5, zero, 0
	unlock r4
	bneq r6, zero, .LBB0_19
# %bb.20:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 9
	xsignal r17, 0
	xsignal r4, 0
	addli r4, zero, 10
	j .LBB0_23
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 101 67 is_stmt 1              # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:101:67
	bneq r2, zero, .LBB0_6
# %bb.22:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 67 is_stmt 0                # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:0:67
	addli r15, zero, 896
	slli r6, r6, 7
	zext_int2long r[25:26], r15
	.loc	1 101 67                        # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:101:67
	zext_int2long r[15:16], r6
	.loc	1 0 0                           # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:0:0
	slli r6, r24, 6
	.loc	1 101 67                        # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:101:67
	min.ul r[24:25], r[15:16], r[25:26]
	zext_int2long r[26:27], r13
	sext_int2long r[17:18], r6
	addli r6, zero, 17
	addli.d r[24:25], r[24:25], 128
	store.d r[26:27], -24(r30)              # 8-byte Folded Spill
	min.sl r[26:27], r[17:18], r[26:27]
	sll.d r[4:5], r[4:5], r6
	addli r6, zero, 10
	max.ul r[24:25], r[24:25], r[15:16]
	sub.sl r[15:16], r[24:25], r[15:16]
	zext_int2long r[24:25], r20
	store.d r[15:16], -16(r30)              # 8-byte Folded Spill
	addli.d r[15:16], r[26:27], 64
	load.d r[26:27], -16(r30)               # 8-byte Folded Reload
	max.sl r[15:16], r[15:16], r[17:18]
	sub.sl r[15:16], r[15:16], r[17:18]
	load.d r[17:18], 16(r30)
	min.ul r[24:25], r[26:27], r[24:25]
	addli r26, zero, 8
	add.ul r[4:5], r[17:18], r[4:5]
	sll.d r[17:18], r[22:23], r21
	load.d r[22:23], -24(r30)               # 8-byte Folded Reload
	xwait r6, 0
	slli r6, r24, 2
	add.ul r[4:5], r[4:5], r[17:18]
	addli r18, zero, 5
	addli r17, zero, 5
	min.sl r[15:16], r[15:16], r[22:23]
	lock zero, r18
	dma_cfg r21, zero, zero, 0
	dma_cfg zero, r21, zero, 1
	dma_cfg r5, zero, zero, 2
	dma_cfg r4, r28, r6, 3
	addli r4, zero, 2048
	addli r5, zero, 512
	dma_cfg r4, r5, r15, 4
	loadli.w r16,  28(r30)
	loadli.w r15,  32(r30)
	dma_run zero
	unlock r18
	addli r18, zero, 13
	addli r4, zero, 11
.LBB0_23:                               # %.thread3
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:0:0
	xsignal r4, 0
	j .LBB0_6
.LBB0_24:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_26
# %bb.25:
	.loc	1 0 0 is_stmt 0                 # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:22:0
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
.LBB0_26:
	.loc	1 22 0 epilogue_begin           # cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py:22:0
	addli sp, sp, 24
	mfence { lm, sm, gm }
	exit
.Ltmp1:
.Lfunc_end0:
	.size	triton_mm, .Lfunc_end0-triton_mm
	.cfi_endproc
                                        # -- End function
	.type	XPU_KERNEL_PARAM_SIZE_triton_mm,@object # @XPU_KERNEL_PARAM_SIZE_triton_mm
	.section	.XPU.KERNEL_PARAM_SIZE.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE_triton_mm:
	.long	36                              # 0x24
	.size	XPU_KERNEL_PARAM_SIZE_triton_mm, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_mm,@object # @XPU_KERNEL_STACK_SIZE_triton_mm
	.section	.XPU.KERNEL_STACK_SIZE.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_mm:
	.long	88                              # 0x58
	.size	XPU_KERNEL_STACK_SIZE_triton_mm, 4

	.type	XPU_KERNEL_DYNAMIC_LM_triton_mm,@object # @XPU_KERNEL_DYNAMIC_LM_triton_mm
	.section	.XPU.KERNEL_DYNAMIC_LM.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM_triton_mm:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM_triton_mm, 4

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
.asciz	"cbpik7l2plbwshuxablzccmfbkxrt34ayxozi2xp6xqw3sziuc54.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/bp" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
