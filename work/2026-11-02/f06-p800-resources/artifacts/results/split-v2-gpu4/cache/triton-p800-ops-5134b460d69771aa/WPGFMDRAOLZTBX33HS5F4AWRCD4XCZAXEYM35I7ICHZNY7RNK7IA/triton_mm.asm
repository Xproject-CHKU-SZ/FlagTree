	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu4/cache/inductor/cu" "ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py"
	.loc	1 22 0                          # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -80
	addli r30, sp, 16
	addli r4, zero, 1
.Ltmp0:
	.loc	1 81 20 prologue_end            # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:81:20
	core_id r2
	loadli.w r17,  32(r30)
	loadli.w r18,  28(r30)
	xsignal_mode_cfg r4
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 20 is_stmt 0                # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:0:20
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
	ble.s r5, r4, .LBB0_21
# %bb.4:                                # %.lr.ph.preheader
	sext_int2long r[10:11], r5
	sext_int2long r[12:13], r4
	addli r14, zero, 4
	addli r15, zero, 8
	addli r16, zero, 1
	addli r25, zero, 7
	addli r19, zero, 2
	addli r1, zero, 5
	addli r21, zero, 3
	addli r22, zero, 64
	addli r23, zero, 16
	addli r6, zero, 0
	j .LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 89 25 is_stmt 1               # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:89:25
	xwait r19, 0
	xwait r1, 0
	lock zero, zero
	ds_cfg r21, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r23, zero, 13
	shuffle_batch r28, r7, r22, 1
	unlock zero
	xsignal r21, 0
	xsignal r14, 0
.LBB0_6:                                # %.thread4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:0:25
	addli.d r[12:13], r[12:13], 1
	addli r6, r6, 1
	setlt.sl r3, r[12:13], r[10:11]
	beq r3, zero, .LBB0_21
.LBB0_7:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	mod.s r5, r6, r14
	.loc	1 81 20 is_stmt 1               # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:81:20
	lui r3, 8
	.loc	1 89 25                         # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:89:25
	slli r28, r5, 11
	.loc	1 81 20                         # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:81:20
	add.s r7, r28, r3
	beq r2, r19, .LBB0_5
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:0:20
	div.s r4, r12, r17
	div.s r4, r4, r18
	div.s r8, r4, r15
	slli r24, r8, 3
	sub.s r8, r16, r24
	min.s r20, r8, r15
	mod.s r8, r4, r20
	add.s r26, r8, r24
	zext_int2long r[8:9], r26
	.loc	1 81 20                         # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:81:20
	bneq r2, r16, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	xwait r21, 0
	lock zero, r14
	dma_cfg r16, r16, zero, 0
	sll.d r[4:5], r[8:9], r3
	load.d r[8:9], 0(r30)
	addli r3, zero, 128
	add.ul r[4:5], r[8:9], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r7, r4, r3, 3
	dma_cfg r3, r3, r23, 4
	dma_run zero
	unlock r14
	xsignal r19, 0
	.loc	1 89 25 is_stmt 1               # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:89:25
	j .LBB0_6
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:0:25
	slli r7, r5, 13
	.loc	1 89 25                         # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:89:25
	slli r27, r5, 14
	.loc	1 86 20 is_stmt 1               # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:86:20
	beq r2, r14, .LBB0_15
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=1
	lui r3, 10
	add.s r5, r27, r3
	beq r2, r25, .LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:0:0
	sub.s r4, r4, r24
	div.s r4, r4, r20
	addli r20, zero, 6
	zext_int2long r[27:28], r4
	sll.d r[27:28], r[27:28], r25
	.loc	1 86 20                         # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:86:20
	bneq r2, r20, .LBB0_18
# %bb.13:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[3:4], 8(r30)
	sll.d r[7:8], r[27:28], r16
	xwait r25, 0
	lock zero, r14
	dma_cfg r16, r16, zero, 0
	add.ul r[7:8], r[3:4], r[7:8]
	addli r3, zero, 256
	dma_cfg zero, r8, zero, 2
	dma_cfg r5, r7, r3, 3
	dma_cfg r3, r3, r22, 4
	dma_run zero
	unlock r14
	xsignal r20, 0
	.loc	1 89 25 is_stmt 1               # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:89:25
	j .LBB0_6
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:0:25
	addli r3, zero, 6
	.loc	1 89 25                         # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:89:25
	xwait r3, 0
	addli r3, zero, 9
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 128
	ds_cfg r21, zero, 0
	ds_cfg r3, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r3, zero, 13
	shuffle_coa r27, r5, r22, 2
	unlock zero
	xsignal r25, 0
	xsignal r15, 0
	j .LBB0_6
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25                          # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:0:25
	addli r8, zero, 0
	addli r5, zero, 1
	addli r4, zero, 1
	.loc	1 89 25                         # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:89:25
	addli r3, zero, 11
	xwait r14, 0
	xwait r15, 0
	xwait r3, 0
.LBB0_16:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r9, r8, 13
	slli r8, r8, 8
	lock zero, r5
	mm_cfg r22, r22, r23, 0
	or r9, r9, r27
	or r8, r8, r7
	mm_cfg r19, r14, r5, 2
	mm r8, r28, r9, 5
	andi r9, r4, 1
	addli r8, zero, 1
	addli r4, zero, 0
	unlock r5
	bneq r9, zero, .LBB0_16
# %bb.17:                               # %.thread22
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 9
	xsignal r1, 0
	xsignal r3, 0
	addli r3, zero, 10
	j .LBB0_20
.LBB0_18:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 101 67 is_stmt 1              # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:101:67
	bneq r2, zero, .LBB0_6
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:0:0
	slli r5, r26, 4
	slli r20, r4, 7
	zext_int2long r[24:25], zero
	addli r1, zero, 128
	.loc	1 101 67                        # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:101:67
	sll.d r[26:27], r[27:28], r16
	sext_int2long r[3:4], r5
	zext_int2long r[17:18], r20
	addli r20, zero, 5
	min.sl r[24:25], r[3:4], r[24:25]
	store.d r[24:25], -16(r30)              # 8-byte Folded Spill
	zext_int2long r[24:25], r1
	addli r1, zero, 12
	store.d r[24:25], -8(r30)               # 8-byte Folded Spill
	load.d r[24:25], -16(r30)               # 8-byte Folded Reload
	sll.d r[8:9], r[8:9], r1
	addli r1, zero, 10
	addli.d r[24:25], r[24:25], 16
	store.d r[24:25], -16(r30)              # 8-byte Folded Spill
	load.d r[24:25], -8(r30)                # 8-byte Folded Reload
	max.ul r[24:25], r[17:18], r[24:25]
	store.d r[24:25], -8(r30)               # 8-byte Folded Spill
	load.d r[24:25], -16(r30)               # 8-byte Folded Reload
	max.sl r[24:25], r[24:25], r[3:4]
	store.d r[24:25], -16(r30)              # 8-byte Folded Spill
	load.d r[24:25], -8(r30)                # 8-byte Folded Reload
	sub.sl r[17:18], r[24:25], r[17:18]
	zext_int2long r[24:25], r23
	store.d r[17:18], -8(r30)               # 8-byte Folded Spill
	load.d r[17:18], -16(r30)               # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r20
	addli r1, zero, 256
	dma_cfg r16, zero, zero, 0
	dma_cfg zero, r16, zero, 1
	sub.sl r[3:4], r[17:18], r[3:4]
	load.d r[17:18], 16(r30)
	min.sl r[3:4], r[3:4], r[24:25]
	addli r25, zero, 7
	add.ul r[8:9], r[17:18], r[8:9]
	load.d r[17:18], -8(r30)                # 8-byte Folded Reload
	add.ul r[8:9], r[8:9], r[26:27]
	slli r5, r17, 2
	loadli.w r18,  28(r30)
	loadli.w r17,  32(r30)
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r7, r5, 3
	addli r5, zero, 512
	dma_cfg r1, r5, r3, 4
	addli r1, zero, 5
	addli r3, zero, 11
	dma_run zero
	unlock r20
.LBB0_20:                               # %.thread4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:0:0
	xsignal r3, 0
	j .LBB0_6
.LBB0_21:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_23
# %bb.22:
	.loc	1 0 0 is_stmt 0                 # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:22:0
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
	.loc	1 22 0 epilogue_begin           # ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py:22:0
	addli sp, sp, 16
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
	.long	80                              # 0x50
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
.asciz	"ccur3ymtt4wixbwzen6xyvhaz6sql3n63w7aja4xfvdidzyofkv7.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu4/cache/inductor/cu" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
