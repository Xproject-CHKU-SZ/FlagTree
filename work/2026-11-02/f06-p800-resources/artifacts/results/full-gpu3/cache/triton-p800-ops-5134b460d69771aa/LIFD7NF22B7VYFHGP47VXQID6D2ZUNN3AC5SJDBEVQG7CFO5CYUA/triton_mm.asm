	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/mx" "cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py"
	.loc	1 22 0                          # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -88
	addli r30, sp, 24
	addli r1, zero, 1
.Ltmp0:
	.loc	1 81 20 prologue_end            # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:81:20
	core_id r2
	loadli.w r17,  32(r30)
	loadli.w r18,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 20 is_stmt 0                # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:0:20
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
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
	ble.s r3, r1, .LBB0_21
# %bb.4:                                # %.lr.ph.preheader
	sext_int2long r[12:13], r1
	lui r1, 12
	sext_int2long r[10:11], r3
	addli r14, zero, 5
	addli r15, zero, 8
	addli r16, zero, 1
	addli r25, zero, 7
	addli r19, zero, 2
	addli r20, zero, 3
	addli r21, zero, 64
	addli r22, zero, 16
	addli r23, zero, 4
	addli r26, zero, 128
	addli r6, zero, 0
	ori r1, r1, 2048
	storeli.w r1, -4(r30)                   # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 89 25 is_stmt 1               # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:89:25
	xwait r19, 0
	xwait r14, 0
	lock zero, zero
	ds_cfg r20, zero, 0
	ds_cfg r21, zero, 1
	ds_cfg r21, zero, 14
	ds_cfg r22, zero, 13
	shuffle_batch r28, r7, r21, 1
	unlock zero
	xsignal r20, 0
	xsignal r23, 0
.LBB0_6:                                # %.thread4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:0:25
	addli.d r[12:13], r[12:13], 1
	addli r6, r6, 1
	setlt.sl r1, r[12:13], r[10:11]
	beq r1, zero, .LBB0_21
.LBB0_7:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	mod.s r5, r6, r14
	.loc	1 81 20 is_stmt 1               # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:81:20
	lui r1, 10
	.loc	1 89 25                         # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:89:25
	slli r28, r5, 11
	.loc	1 81 20                         # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:81:20
	add.s r7, r28, r1
	beq r2, r19, .LBB0_5
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:0:20
	div.s r1, r12, r17
	div.s r24, r1, r18
	div.s r1, r24, r15
	slli r1, r1, 3
	sub.s r3, r16, r1
	min.s r3, r3, r15
	mod.s r4, r24, r3
	add.s r4, r4, r1
	zext_int2long r[8:9], r4
	.loc	1 81 20                         # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:81:20
	bneq r2, r16, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r20, 0
	lock zero, r23
	addli r26, zero, 128
	dma_cfg r16, r16, zero, 0
	sll.d r[3:4], r[8:9], r1
	load.d r[8:9], 0(r30)
	addli r1, zero, 128
	add.ul r[3:4], r[8:9], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r7, r3, r1, 3
	dma_cfg r1, r1, r22, 4
	dma_run zero
	unlock r23
	xsignal r19, 0
	.loc	1 89 25 is_stmt 1               # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:89:25
	j .LBB0_6
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:0:25
	slli r7, r5, 13
	.loc	1 89 25                         # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:89:25
	slli r27, r5, 14
	.loc	1 86 20 is_stmt 1               # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:86:20
	beq r2, r23, .LBB0_15
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	add.s r5, r27, r5
	beq r2, r25, .LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:0:0
	sub.s r1, r24, r1
	addli r24, zero, 6
	div.s r1, r1, r3
	zext_int2long r[27:28], r1
	sll.d r[27:28], r[27:28], r25
	.loc	1 86 20                         # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:86:20
	bneq r2, r24, .LBB0_18
# %bb.13:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[7:8], 8(r30)
	sll.d r[3:4], r[27:28], r16
	xwait r25, 0
	lock zero, r23
	addli r1, zero, 256
	dma_cfg r16, r16, zero, 0
	add.ul r[3:4], r[7:8], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r5, r3, r1, 3
	dma_cfg r1, r1, r21, 4
	dma_run zero
	unlock r23
	xsignal r24, 0
	.loc	1 89 25 is_stmt 1               # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:89:25
	j .LBB0_6
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:0:25
	addli r1, zero, 6
	addli r26, zero, 128
	.loc	1 89 25                         # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:89:25
	xwait r1, 0
	addli r1, zero, 9
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 128
	ds_cfg r20, zero, 0
	ds_cfg r1, zero, 1
	ds_cfg r21, zero, 14
	ds_cfg r1, zero, 13
	shuffle_coa r27, r5, r21, 2
	unlock zero
	xsignal r25, 0
	xsignal r15, 0
	j .LBB0_6
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25                          # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:0:25
	addli r8, zero, 0
	addli r5, zero, 1
	addli r4, zero, 1
	.loc	1 89 25                         # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:89:25
	addli r1, zero, 11
	xwait r23, 0
	xwait r15, 0
	xwait r1, 0
.LBB0_16:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r1, r8, 13
	slli r3, r8, 8
	lock zero, r5
	addli r8, zero, 1
	mm_cfg r21, r21, r22, 0
	or r1, r1, r27
	or r3, r3, r7
	mm_cfg r19, r23, r5, 2
	mm r3, r28, r1, 5
	andi r1, r4, 1
	addli r4, zero, 0
	unlock r5
	bneq r1, zero, .LBB0_16
# %bb.17:                               # %.thread22
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 9
	xsignal r14, 0
	xsignal r1, 0
	addli r1, zero, 10
	j .LBB0_20
.LBB0_18:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 101 67 is_stmt 1              # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:101:67
	bneq r2, zero, .LBB0_6
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:0:0
	slli r3, r4, 4
	zext_int2long r[24:25], zero
	slli r1, r1, 7
	addli r5, r18, 0
	.loc	1 101 67                        # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:101:67
	sll.d r[27:28], r[27:28], r16
	sext_int2long r[3:4], r3
	zext_int2long r[17:18], r1
	addli r1, zero, 12
	min.sl r[24:25], r[3:4], r[24:25]
	sll.d r[8:9], r[8:9], r1
	addli r1, zero, 10
	store.d r[24:25], -24(r30)              # 8-byte Folded Spill
	zext_int2long r[24:25], r26
	store.d r[24:25], -16(r30)              # 8-byte Folded Spill
	load.d r[24:25], -24(r30)               # 8-byte Folded Reload
	addli.d r[24:25], r[24:25], 16
	store.d r[24:25], -24(r30)              # 8-byte Folded Spill
	load.d r[24:25], -16(r30)               # 8-byte Folded Reload
	max.ul r[24:25], r[17:18], r[24:25]
	store.d r[24:25], -16(r30)              # 8-byte Folded Spill
	load.d r[24:25], -24(r30)               # 8-byte Folded Reload
	max.sl r[24:25], r[24:25], r[3:4]
	store.d r[24:25], -24(r30)              # 8-byte Folded Spill
	load.d r[24:25], -16(r30)               # 8-byte Folded Reload
	sub.sl r[17:18], r[24:25], r[17:18]
	zext_int2long r[24:25], r22
	store.d r[17:18], -16(r30)              # 8-byte Folded Spill
	load.d r[17:18], -24(r30)               # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r14
	dma_cfg r16, zero, zero, 0
	dma_cfg zero, r16, zero, 1
	sub.sl r[3:4], r[17:18], r[3:4]
	load.d r[17:18], 16(r30)
	min.sl r[3:4], r[3:4], r[24:25]
	addli r25, zero, 7
	add.ul r[8:9], r[17:18], r[8:9]
	load.d r[17:18], -16(r30)               # 8-byte Folded Reload
	add.ul r[8:9], r[8:9], r[27:28]
	slli r1, r17, 2
	addli r18, r5, 0
	addli r5, zero, 512
	loadli.w r17,  32(r30)
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r7, r1, 3
	addli r1, zero, 256
	dma_cfg r1, r5, r3, 4
	addli r1, zero, 11
	dma_run zero
	unlock r14
.LBB0_20:                               # %.thread4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:0:0
	xsignal r1, 0
	j .LBB0_6
.LBB0_21:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_23
# %bb.22:
	.loc	1 0 0 is_stmt 0                 # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:22:0
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
.LBB0_23:
	.loc	1 22 0 epilogue_begin           # cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py:22:0
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
.asciz	"cmxkd7fthz55dlzrce6o42uhax7vipgahhm4e6pugiatlkupbhct.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/mx" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
