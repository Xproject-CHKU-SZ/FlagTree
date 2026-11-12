	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/s5" "cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py"
	.loc	1 22 0                          # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -88
	addli r30, sp, 24
	addli r1, zero, 1
.Ltmp0:
	.loc	1 81 20 prologue_end            # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:81:20
	core_id r2
	loadli.w r15,  32(r30)
	loadli.w r16,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 20 is_stmt 0                # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:0:20
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
	sext_int2long r[10:11], r3
	sext_int2long r[12:13], r1
	addli r14, zero, 5
	addli r26, zero, 16
	addli r23, zero, 1
	lui r19, 20
	addli r20, zero, 2
	addli r21, zero, 64
	addli r22, zero, 32
	addli r18, zero, 3
	addli r24, zero, 4
	addli r17, zero, 6
	addli r5, zero, 0
	j .LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 89 25 is_stmt 1               # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:89:25
	xwait r20, 0
	xwait r14, 0
	lock zero, zero
	ds_cfg r20, zero, 0
	ds_cfg r21, zero, 1
	ds_cfg r21, zero, 14
	ds_cfg r22, zero, 13
	shuffle_batch r7, r4, r21, 1
	unlock zero
	xsignal r18, 0
	xsignal r24, 0
.LBB0_6:                                # %.thread4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:0:25
	addli.d r[12:13], r[12:13], 1
	addli r5, r5, 1
	setlt.sl r1, r[12:13], r[10:11]
	beq r1, zero, .LBB0_21
.LBB0_7:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	mod.s r8, r5, r14
	.loc	1 89 25                         # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:89:25
	slli r7, r8, 13
	.loc	1 81 20 is_stmt 1               # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:81:20
	add.s r4, r7, r19
	beq r2, r20, .LBB0_5
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:0:20
	div.s r1, r12, r15
	addli r25, zero, 8
	div.s r6, r1, r16
	div.s r1, r6, r26
	slli r9, r1, 3
	sub.s r3, r23, r9
	min.s r3, r3, r25
	mod.s r25, r6, r3
	add.s r9, r25, r9
	zext_int2long r[27:28], r9
	.loc	1 81 20                         # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:81:20
	bneq r2, r23, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 13
	load.d r[8:9], 0(r30)
	xwait r18, 0
	lock zero, r24
	dma_cfg zero, zero, zero, 0
	sll.d r[6:7], r[27:28], r1
	addli r1, zero, 256
	add.ul r[6:7], r[8:9], r[6:7]
	dma_cfg zero, r7, zero, 2
	dma_cfg r4, r6, r1, 3
	dma_cfg r1, r1, r22, 4
	dma_run zero
	unlock r24
	xsignal r20, 0
	.loc	1 89 25 is_stmt 1               # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:89:25
	j .LBB0_6
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:0:25
	slli r4, r8, 14
	.loc	1 89 25                         # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:89:25
	slli r8, r8, 15
	.loc	1 86 20 is_stmt 1               # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:86:20
	beq r2, r24, .LBB0_15
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=1
	lui r7, 30
	add.s r25, r8, r7
	addli r7, zero, 7
	beq r2, r7, .LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:0:0
	slli r1, r1, 4
	addli r17, zero, 7
	addli r19, zero, 6
	sub.s r1, r6, r1
	div.s r1, r1, r3
	zext_int2long r[6:7], r1
	sll.d r[7:8], r[6:7], r17
	.loc	1 86 20                         # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:86:20
	bneq r2, r19, .LBB0_18
# %bb.13:                               #   in Loop: Header=BB0_7 Depth=1
	sll.d r[3:4], r[7:8], r20
	load.d r[6:7], 8(r30)
	xwait r17, 0
	lock zero, r24
	addli r1, zero, 512
	addli r17, zero, 6
	dma_cfg zero, zero, zero, 0
	add.ul r[3:4], r[6:7], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r25, r3, r1, 3
	addli r3, zero, 1024
	dma_cfg r1, r3, r21, 4
	dma_run zero
	unlock r24
	xsignal r19, 0
	lui r19, 20
	.loc	1 89 25 is_stmt 1               # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:89:25
	j .LBB0_6
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 9
	xwait r17, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 128
	ds_cfg r20, zero, 0
	ds_cfg r1, zero, 1
	ds_cfg r21, zero, 14
	ds_cfg r1, zero, 13
	addli r1, zero, 8
	shuffle_coa r8, r25, r21, 2
	unlock zero
	xsignal r7, 0
	j .LBB0_20
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 8
	xwait r24, 0
	addli r1, zero, 0
	addli r9, zero, 1
	addli r6, zero, 1
	xwait r3, 0
	addli r3, zero, 11
	xwait r3, 0
.LBB0_16:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r3, r1, 14
	slli r1, r1, 8
	lock zero, r9
	mm_cfg r21, r21, r22, 0
	or r3, r3, r8
	or r1, r1, r4
	mm_cfg r24, r24, r9, 2
	mm r1, r7, r3, 8
	andi r3, r6, 1
	addli r1, zero, 1
	addli r6, zero, 0
	unlock r9
	bneq r3, zero, .LBB0_16
# %bb.17:                               # %.thread22
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 9
	xsignal r14, 0
	xsignal r1, 0
	addli r1, zero, 10
	j .LBB0_20
.LBB0_18:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:0:25
	addli r17, zero, 6
	lui r19, 20
	.loc	1 101 67 is_stmt 1              # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:101:67
	bneq r2, zero, .LBB0_6
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:0:0
	slli r1, r1, 7
	addli r3, zero, 128
	.loc	1 101 67                        # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:101:67
	sll.d r[6:7], r[7:8], r20
	zext_int2long r[25:26], r3
	zext_int2long r[17:18], r1
	.loc	1 0 0                           # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:0:0
	slli r1, r9, 5
	addli r3, r16, 0
	.loc	1 101 67                        # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:101:67
	store.d r[25:26], -8(r30)               # 8-byte Folded Spill
	min.ul r[25:26], r[17:18], r[25:26]
	sext_int2long r[15:16], r1
	addli r1, zero, 15
	store.d r[25:26], -16(r30)              # 8-byte Folded Spill
	zext_int2long r[25:26], zero
	store.d r[25:26], -24(r30)              # 8-byte Folded Spill
	load.d r[25:26], -16(r30)               # 8-byte Folded Reload
	addli.d r[25:26], r[25:26], 128
	store.d r[25:26], -16(r30)              # 8-byte Folded Spill
	load.d r[25:26], -24(r30)               # 8-byte Folded Reload
	min.sl r[25:26], r[15:16], r[25:26]
	store.d r[25:26], -24(r30)              # 8-byte Folded Spill
	load.d r[25:26], -16(r30)               # 8-byte Folded Reload
	max.ul r[25:26], r[25:26], r[17:18]
	store.d r[25:26], -16(r30)              # 8-byte Folded Spill
	load.d r[25:26], -24(r30)               # 8-byte Folded Reload
	addli.d r[25:26], r[25:26], 32
	store.d r[25:26], -24(r30)              # 8-byte Folded Spill
	load.d r[25:26], -16(r30)               # 8-byte Folded Reload
	sub.sl r[17:18], r[25:26], r[17:18]
	store.d r[17:18], -16(r30)              # 8-byte Folded Spill
	load.d r[17:18], -24(r30)               # 8-byte Folded Reload
	load.d r[25:26], -16(r30)               # 8-byte Folded Reload
	max.sl r[17:18], r[17:18], r[15:16]
	store.d r[17:18], -24(r30)              # 8-byte Folded Spill
	load.d r[17:18], -8(r30)                # 8-byte Folded Reload
	min.ul r[17:18], r[25:26], r[17:18]
	sll.d r[25:26], r[27:28], r1
	addli r1, zero, 10
	zext_int2long r[27:28], r22
	store.d r[17:18], -8(r30)               # 8-byte Folded Spill
	load.d r[17:18], -24(r30)               # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r23, zero, 1
	sub.sl r[15:16], r[17:18], r[15:16]
	load.d r[17:18], 16(r30)
	min.sl r[8:9], r[15:16], r[27:28]
	load.d r[27:28], -8(r30)                # 8-byte Folded Reload
	addli r16, r3, 0
	addli r3, zero, 1024
	loadli.w r15,  32(r30)
	add.ul r[25:26], r[17:18], r[25:26]
	addli r17, zero, 6
	addli r18, zero, 3
	add.ul r[6:7], r[25:26], r[6:7]
	slli r1, r27, 2
	addli r26, zero, 16
	dma_cfg r7, zero, zero, 2
	dma_cfg r6, r4, r1, 3
	addli r1, zero, 512
	dma_cfg r3, r1, r8, 4
	addli r1, zero, 11
	dma_run zero
	unlock r14
.LBB0_20:                               # %.thread4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:0:0
	xsignal r1, 0
	j .LBB0_6
.LBB0_21:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_23
# %bb.22:
	.loc	1 0 0 is_stmt 0                 # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py:22:0
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
.asciz	"cs56b7c6iynb3s4bzyycflhwo4tbtmbxur3drxwf3bgdo7wdgnhk.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/s5" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
