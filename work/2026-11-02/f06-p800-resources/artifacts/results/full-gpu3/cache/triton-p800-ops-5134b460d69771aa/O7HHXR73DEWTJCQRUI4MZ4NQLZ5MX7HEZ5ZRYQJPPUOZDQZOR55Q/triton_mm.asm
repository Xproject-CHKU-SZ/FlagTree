	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/v5" "cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py"
	.loc	1 22 0                          # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -88
	addli r30, sp, 24
	addli r4, zero, 1
.Ltmp0:
	.loc	1 81 20 prologue_end            # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:81:20
	core_id r2
	loadli.w r17,  32(r30)
	loadli.w r18,  28(r30)
	xsignal_mode_cfg r4
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 20 is_stmt 0                # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:0:20
	lui r3, 1048575
	ori r3, r3, 4095
	csr_set csr3, r3
	sync_group
	j .LBB0_3
.LBB0_2:
	addli r3, zero, 2
	uni_sram_cfg r4, r4
	lui r5, 1048575
	lock zero, r3
	ew_cfg r4, zero, zero, 16
	ori r4, r5, 4095
	unlock r3
	addli r3, zero, 11
	csr_set csr3, r4
	sync_group
	addli r4, zero, 5
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 3
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	addli r4, zero, 9
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 7
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
.LBB0_3:
	loadli.w r3,  24(r30)
	loadli.w r4,  28(r30)
	load_param_i r6, 1
	loadli.w r5,  32(r30)
	load_param_i r7, 0
	mul.s r3, r4, r3
	addli r4, r6, 0
	fmac.s r4, r3, r5
	mul.s r3, r3, r5
	addli r4, r4, -1
	div.s r6, r4, r6
	mul.s r4, r6, r7
	fmac.s r6, r6, r7
	min.s r5, r6, r3
	ble.s r5, r4, .LBB0_22
# %bb.4:                                # %.lr.ph.preheader
	sext_int2long r[12:13], r4
	addli r4, zero, 4095
	sext_int2long r[10:11], r5
	addli r14, zero, 5
	addli r15, zero, 128
	addli r16, zero, 2
	addli r27, zero, 6
	lui r20, 20
	addli r1, zero, 3
	addli r19, zero, 64
	addli r22, zero, 4
	addli r23, zero, 1
	addli r6, zero, 0
	lui r3, 1048572
	store.d r[3:4], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 89 25 is_stmt 1               # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:89:25
	xwait r16, 0
	xwait r14, 0
	lock zero, zero
	ds_cfg r1, zero, 0
	ds_cfg r15, zero, 1
	ds_cfg r15, zero, 14
	ds_cfg r19, zero, 13
	shuffle_batch r7, r5, r15, 1
	unlock zero
	xsignal r1, 0
	xsignal r22, 0
.LBB0_6:                                # %.thread3
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:0:25
	addli.d r[12:13], r[12:13], 1
	addli r6, r6, 1
	setlt.sl r3, r[12:13], r[10:11]
	beq r3, zero, .LBB0_22
.LBB0_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	mod.s r3, r6, r14
	slli r7, r3, 14
	.loc	1 81 20 is_stmt 1               # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:81:20
	add.s r5, r7, r20
	beq r2, r16, .LBB0_5
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:0:20
	div.s r3, r12, r17
	addli r8, zero, 8
	div.s r24, r3, r18
	div.s r25, r24, r15
	slli r3, r25, 3
	sub.s r4, r16, r3
	min.s r28, r4, r8
	mod.s r4, r24, r28
	add.s r26, r4, r3
	zext_int2long r[8:9], r26
	.loc	1 81 20                         # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:81:20
	bneq r2, r23, .LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 81 25                         # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:81:25
	setlt.u r3, r23, r26
	.loc	1 0 0                           # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:0:0
	addli r4, zero, 13
	sll.d r[24:25], r[8:9], r4
	.loc	1 81 25                         # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:81:25
	bneq r3, zero, .LBB0_15
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25                          # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:0:25
	zext_int2long r[3:4], zero
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20 is_stmt 1               # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:86:20
	beq r2, r22, .LBB0_18
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	lui r3, 40
	add.s r5, r7, r3
	addli r3, zero, 7
	beq r2, r3, .LBB0_17
# %bb.13:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:0:0
	slli r3, r25, 7
	sub.s r3, r24, r3
	div.s r28, r3, r28
	zext_int2long r[3:4], r28
	sll.d r[24:25], r[3:4], r27
	.loc	1 86 20                         # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:86:20
	bneq r2, r27, .LBB0_19
# %bb.14:                               #   in Loop: Header=BB0_7 Depth=1
	addli r7, zero, 7
	sll.d r[3:4], r[24:25], r23
	xwait r7, 0
	load.d r[7:8], 8(r30)
	lock zero, r22
	dma_cfg r23, r23, zero, 0
	add.ul r[3:4], r[7:8], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r5, r3, r15, 3
	addli r3, zero, 2048
	dma_cfg r15, r3, r15, 4
	dma_run zero
	unlock r22
	xsignal r27, 0
	.loc	1 89 25 is_stmt 1               # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:89:25
	j .LBB0_6
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 81 25                         # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:81:25
	load.d r[3:4], -8(r30)                  # 8-byte Folded Reload
	and.d r[3:4], r[24:25], r[3:4]
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=1
	sub.sl r[3:4], r[24:25], r[3:4]
	addli r7, zero, 7
	zext_int2long r[24:25], r19
	.loc	1 81 20 is_stmt 0               # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:81:20
	xwait r1, 0
	lock zero, r22
	dma_cfg r23, r23, zero, 0
	.loc	1 81 25                         # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:81:25
	sra.d r[3:4], r[3:4], r7
	.loc	1 81 20                         # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:81:20
	addli r7, zero, 14
	.loc	1 81 25                         # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:81:25
	min.sl r[24:25], r[3:4], r[24:25]
	.loc	1 81 20                         # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:81:20
	sll.d r[7:8], r[8:9], r7
	.loc	1 81 25                         # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:81:25
	sub.sl r[3:4], r[24:25], r[3:4]
	.loc	1 81 20                         # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:81:20
	load.d r[24:25], 0(r30)
	addli r3, r3, 64
	addli r4, zero, 256
	add.ul r[7:8], r[24:25], r[7:8]
	dma_cfg zero, r8, zero, 2
	dma_cfg r5, r7, r4, 3
	dma_cfg r4, r4, r3, 4
	dma_run zero
	unlock r22
	xsignal r16, 0
	.loc	1 89 25 is_stmt 1               # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:89:25
	j .LBB0_6
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 9
	xwait r27, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 7
	ds_cfg r1, zero, 0
	ds_cfg r19, zero, 1
	ds_cfg r15, zero, 14
	ds_cfg r19, zero, 13
	shuffle_coa r7, r5, r15, 2
	unlock zero
	xsignal r3, 0
	addli r3, zero, 8
	j .LBB0_21
.LBB0_18:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 8
	xwait r22, 0
	xwait r3, 0
	addli r3, zero, 11
	xwait r3, 0
	lock zero, r23
	addli r3, zero, 9
	mm_cfg r19, r15, r19, 0
	mm_cfg r22, r16, r23, 2
	mm r7, r7, r7, 5
	unlock r23
	xsignal r14, 0
	xsignal r3, 0
	addli r3, zero, 10
	j .LBB0_21
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 101 67                        # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:101:67
	bneq r2, zero, .LBB0_6
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:0:0
	slli r3, r28, 6
	addli r4, zero, 960
	zext_int2long r[17:18], r19
	.loc	1 101 67                        # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:101:67
	sll.d r[24:25], r[24:25], r23
	zext_int2long r[27:28], r3
	zext_int2long r[4:5], r4
	.loc	1 0 0                           # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:0:0
	slli r3, r26, 6
	.loc	1 101 67                        # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:101:67
	min.ul r[4:5], r[27:28], r[4:5]
	addli.d r[4:5], r[4:5], 64
	store.d r[4:5], -16(r30)                # 8-byte Folded Spill
	sext_int2long r[3:4], r3
	addli r5, zero, 17
	load.d r[19:20], -16(r30)               # 8-byte Folded Reload
	sll.d r[8:9], r[8:9], r5
	addli r5, zero, 10
	max.ul r[19:20], r[19:20], r[27:28]
	store.d r[19:20], -16(r30)              # 8-byte Folded Spill
	min.sl r[20:21], r[3:4], r[17:18]
	addli r19, zero, 64
	store.d r[20:21], -24(r30)              # 8-byte Folded Spill
	load.d r[20:21], -16(r30)               # 8-byte Folded Reload
	sub.sl r[20:21], r[20:21], r[27:28]
	load.d r[26:27], -24(r30)               # 8-byte Folded Reload
	store.d r[20:21], -16(r30)              # 8-byte Folded Spill
	lui r20, 20
	addli.d r[26:27], r[26:27], 64
	store.d r[26:27], -24(r30)              # 8-byte Folded Spill
	load.d r[26:27], -16(r30)               # 8-byte Folded Reload
	min.ul r[26:27], r[26:27], r[17:18]
	store.d r[26:27], -16(r30)              # 8-byte Folded Spill
	load.d r[26:27], -24(r30)               # 8-byte Folded Reload
	xwait r5, 0
	lock zero, r14
	dma_cfg r23, zero, zero, 0
	dma_cfg zero, r23, zero, 1
	max.sl r[26:27], r[26:27], r[3:4]
	sub.sl r[3:4], r[26:27], r[3:4]
	load.d r[26:27], 16(r30)
	min.sl r[3:4], r[3:4], r[17:18]
	loadli.w r18,  28(r30)
	loadli.w r17,  32(r30)
	add.ul r[8:9], r[26:27], r[8:9]
	addli r27, zero, 6
	add.ul r[8:9], r[8:9], r[24:25]
	load.d r[24:25], -16(r30)               # 8-byte Folded Reload
	dma_cfg r9, zero, zero, 2
	slli r5, r24, 2
	dma_cfg r8, r7, r5, 3
	addli r5, zero, 2048
	addli r7, zero, 256
	dma_cfg r5, r7, r3, 4
	addli r3, zero, 11
	dma_run zero
	unlock r14
.LBB0_21:                               # %.thread3
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:0:0
	xsignal r3, 0
	j .LBB0_6
.LBB0_22:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_24
# %bb.23:
	.loc	1 0 0 is_stmt 0                 # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:22:0
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
.LBB0_24:
	.loc	1 22 0 epilogue_begin           # cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py:22:0
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
.asciz	"cv5xe3kwg6mdblb3sc5omzhelsas6v6z3xwtowrl6dnexyhqhhtv.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/v5" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
