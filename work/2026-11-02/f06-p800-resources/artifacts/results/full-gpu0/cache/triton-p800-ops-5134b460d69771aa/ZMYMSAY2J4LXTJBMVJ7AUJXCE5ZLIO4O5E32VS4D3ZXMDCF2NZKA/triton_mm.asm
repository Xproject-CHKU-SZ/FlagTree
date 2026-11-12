	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/yo" "cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py"
	.loc	1 22 0                          # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -104
	addli r30, sp, 40
	addli r4, zero, 1
.Ltmp0:
	.loc	1 81 20 prologue_end            # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:81:20
	core_id r2
	loadli.w r17,  32(r30)
	loadli.w r18,  28(r30)
	xsignal_mode_cfg r4
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 20 is_stmt 0                # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:0:20
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
	addli r4, zero, 3
	xsignal r5, 0
	xsignal r5, 0
	xsignal r5, 0
	addli r5, zero, 9
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	addli r4, zero, 7
	xsignal r5, 0
	xsignal r5, 0
	xsignal r5, 0
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
	ble.s r5, r4, .LBB0_19
# %bb.4:                                # %.lr.ph.preheader
	sext_int2long r[10:11], r5
	sext_int2long r[12:13], r4
	addli r14, zero, 3
	addli r19, zero, 32
	addli r16, zero, 1
	addli r28, zero, 8
	addli r25, zero, 6
	lui r20, 6
	addli r15, zero, 2
	addli r1, zero, 5
	addli r3, zero, 64
	addli r23, zero, 4
	addli r22, zero, 128
	addli r7, zero, 0
	j .LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 89 25 is_stmt 1               # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:89:25
	xwait r15, 0
	xwait r1, 0
	lock zero, zero
	ds_cfg r14, zero, 0
	ds_cfg r3, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r19, zero, 13
	shuffle_batch r4, r5, r3, 1
	unlock zero
	xsignal r14, 0
	xsignal r23, 0
.LBB0_6:                                # %.thread4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:0:25
	addli.d r[12:13], r[12:13], 1
	addli r7, r7, 1
	setlt.sl r4, r[12:13], r[10:11]
	beq r4, zero, .LBB0_19
.LBB0_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	mod.s r27, r7, r14
	.loc	1 89 25                         # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:89:25
	slli r4, r27, 12
	.loc	1 81 20 is_stmt 1               # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:81:20
	add.s r5, r4, r20
	beq r2, r15, .LBB0_5
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:0:20
	div.s r6, r12, r17
	div.s r24, r6, r18
	div.s r6, r24, r19
	slli r8, r6, 3
	sub.s r9, r16, r8
	min.s r21, r9, r28
	mod.s r9, r24, r21
	add.s r26, r9, r8
	zext_int2long r[8:9], r26
	.loc	1 81 20                         # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:81:20
	bneq r2, r16, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 12
	load.d r[24:25], 0(r30)
	xwait r14, 0
	lock zero, r23
	dma_cfg r16, r16, zero, 0
	sll.d r[8:9], r[8:9], r4
	add.ul r[8:9], r[24:25], r[8:9]
	addli r25, zero, 6
	dma_cfg zero, r9, zero, 2
	dma_cfg r5, r8, r22, 3
	dma_cfg r22, r22, r19, 4
	dma_run zero
	unlock r23
	xsignal r15, 0
	.loc	1 89 25 is_stmt 1               # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:89:25
	j .LBB0_6
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:0:25
	slli r27, r27, 13
	.loc	1 86 20 is_stmt 1               # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:86:20
	beq r2, r23, .LBB0_15
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=1
	lui r4, 9
	add.s r28, r27, r4
	addli r4, zero, 7
	beq r2, r4, .LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:0:0
	slli r4, r6, 5
	sub.s r4, r24, r4
	div.s r6, r4, r21
	zext_int2long r[4:5], r6
	sll.d r[4:5], r[4:5], r25
	.loc	1 86 20                         # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:86:20
	bneq r2, r25, .LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[8:9], 8(r30)
	sll.d r[4:5], r[4:5], r16
	addli r6, zero, 7
	xwait r6, 0
	lock zero, r23
	add.ul r[4:5], r[8:9], r[4:5]
	dma_cfg r16, r16, zero, 0
	dma_cfg zero, r5, zero, 2
	dma_cfg r28, r4, r22, 3
	addli r4, zero, 512
	addli r28, zero, 8
	dma_cfg r22, r4, r3, 4
	dma_run zero
	unlock r23
	xsignal r25, 0
	.loc	1 89 25 is_stmt 1               # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:89:25
	j .LBB0_6
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 9
	xwait r25, 0
	xwait r4, 0
	lock zero, zero
	addli r4, zero, 7
	ds_cfg r14, zero, 0
	ds_cfg r3, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r3, zero, 13
	shuffle_coa r27, r28, r3, 2
	addli r28, zero, 8
	unlock zero
	xsignal r4, 0
	xsignal r28, 0
	j .LBB0_6
.LBB0_15:                               # %.thread22
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 11
	xwait r23, 0
	xwait r28, 0
	xwait r5, 0
	lock zero, r16
	mm_cfg r3, r3, r19, 0
	mm_cfg r15, r15, r16, 2
	mm r27, r4, r27, 5
	addli r4, zero, 9
	unlock r16
	xsignal r1, 0
	xsignal r4, 0
	addli r4, zero, 10
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:0:25
	addli r28, zero, 8
	.loc	1 101 67 is_stmt 1              # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:101:67
	bneq r2, zero, .LBB0_6
# %bb.17:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:0:0
	slli r6, r6, 6
	addli r1, zero, 192
	addli r28, r18, 0
	.loc	1 101 67                        # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:101:67
	sll.d r[4:5], r[4:5], r16
	zext_int2long r[24:25], r6
	zext_int2long r[17:18], r1
	.loc	1 0 0                           # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:0:0
	slli r6, r26, 5
	.loc	1 101 67                        # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:101:67
	addli r1, zero, 14
	min.ul r[17:18], r[24:25], r[17:18]
	store.d r[24:25], -40(r30)              # 8-byte Folded Spill
	sll.d r[8:9], r[8:9], r1
	addli r1, zero, 10
	load.d r[19:20], -40(r30)               # 8-byte Folded Reload
	store.d r[17:18], -16(r30)              # 8-byte Folded Spill
	zext_int2long r[17:18], zero
	store.d r[17:18], -8(r30)               # 8-byte Folded Spill
	load.d r[17:18], -16(r30)               # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 64
	store.d r[17:18], -16(r30)              # 8-byte Folded Spill
	sext_int2long r[17:18], r6
	load.d r[21:22], -16(r30)               # 8-byte Folded Reload
	store.d r[17:18], -24(r30)              # 8-byte Folded Spill
	max.ul r[21:22], r[21:22], r[24:25]
	load.d r[24:25], -8(r30)                # 8-byte Folded Reload
	store.d r[21:22], -16(r30)              # 8-byte Folded Spill
	addli r22, zero, 128
	min.sl r[24:25], r[17:18], r[24:25]
	store.d r[24:25], -32(r30)              # 8-byte Folded Spill
	load.d r[24:25], -16(r30)               # 8-byte Folded Reload
	sub.sl r[24:25], r[24:25], r[19:20]
	addli r19, zero, 32
	lui r20, 6
	store.d r[24:25], -8(r30)               # 8-byte Folded Spill
	load.d r[24:25], -32(r30)               # 8-byte Folded Reload
	addli.d r[24:25], r[24:25], 32
	store.d r[24:25], -32(r30)              # 8-byte Folded Spill
	zext_int2long r[24:25], r3
	store.d r[24:25], -16(r30)              # 8-byte Folded Spill
	load.d r[24:25], -32(r30)               # 8-byte Folded Reload
	max.sl r[17:18], r[24:25], r[17:18]
	load.d r[24:25], -8(r30)                # 8-byte Folded Reload
	store.d r[17:18], -32(r30)              # 8-byte Folded Spill
	load.d r[17:18], -16(r30)               # 8-byte Folded Reload
	min.ul r[24:25], r[24:25], r[17:18]
	load.d r[17:18], -24(r30)               # 8-byte Folded Reload
	store.d r[24:25], -8(r30)               # 8-byte Folded Spill
	load.d r[24:25], -32(r30)               # 8-byte Folded Reload
	sub.sl r[17:18], r[24:25], r[17:18]
	zext_int2long r[24:25], r19
	store.d r[17:18], -16(r30)              # 8-byte Folded Spill
	load.d r[17:18], 16(r30)
	add.ul r[8:9], r[17:18], r[8:9]
	load.d r[17:18], -16(r30)               # 8-byte Folded Reload
	xwait r1, 0
	addli r1, zero, 512
	add.ul r[4:5], r[8:9], r[4:5]
	min.sl r[17:18], r[17:18], r[24:25]
	addli r24, zero, 5
	addli r25, zero, 6
	lock zero, r24
	dma_cfg r16, zero, zero, 0
	dma_cfg zero, r16, zero, 1
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	dma_cfg r5, zero, zero, 2
	slli r6, r8, 2
	dma_cfg r4, r27, r6, 3
	addli r4, zero, 256
	dma_cfg r1, r4, r17, 4
	loadli.w r17,  32(r30)
	addli r18, r28, 0
	addli r28, zero, 8
	addli r1, zero, 5
	addli r4, zero, 11
	dma_run zero
	unlock r24
.LBB0_18:                               # %.thread4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:0:0
	xsignal r4, 0
	j .LBB0_6
.LBB0_19:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_21
# %bb.20:
	.loc	1 0 0 is_stmt 0                 # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:22:0
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
.LBB0_21:
	.loc	1 22 0 epilogue_begin           # cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py:22:0
	addli sp, sp, 40
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
	.long	104                             # 0x68
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
.asciz	"cyol7qpwngwqdfo2egwuodnstjqtd76go7bgs7sfuql4gkuvwlbi.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/yo" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
