	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/yr" "cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py"
	.loc	1 22 0                          # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -96
	addli r30, sp, 32
	addli r1, zero, 1
.Ltmp0:
	.loc	1 81 20 prologue_end            # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:81:20
	core_id r2
	loadli.w r15,  32(r30)
	loadli.w r16,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 20 is_stmt 0                # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:0:20
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
	ble.s r3, r1, .LBB0_22
# %bb.4:                                # %.lr.ph.preheader
	sext_int2long r[8:9], r3
	addli r4, zero, 4095
	load.d r[17:18], 8(r30)
	sext_int2long r[10:11], r1
	addli r12, zero, 5
	addli r13, zero, 256
	addli r14, zero, 2
	addli r25, zero, 8
	addli r24, zero, 3
	addli r19, zero, 128
	addli r20, zero, 4
	addli r21, zero, 1
	addli r28, zero, 0
	lui r3, 1048572
	store.d r[3:4], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 89 25 is_stmt 1               # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:89:25
	xwait r14, 0
	xwait r12, 0
	lock zero, zero
	addli r1, zero, 64
	ds_cfg r24, zero, 0
	ds_cfg r19, zero, 1
	ds_cfg r19, zero, 14
	ds_cfg r1, zero, 13
	shuffle_batch r5, r4, r19, 1
	unlock zero
	xsignal r24, 0
	xsignal r20, 0
.LBB0_6:                                # %.thread3
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:0:25
	addli.d r[10:11], r[10:11], 1
	addli r28, r28, 1
	setlt.sl r1, r[10:11], r[8:9]
	beq r1, zero, .LBB0_22
.LBB0_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	mod.s r7, r28, r12
	.loc	1 81 20 is_stmt 1               # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:81:20
	lui r1, 10
	.loc	1 89 25                         # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:89:25
	slli r5, r7, 14
	.loc	1 81 20                         # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:81:20
	add.s r4, r5, r1
	beq r2, r14, .LBB0_5
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:0:20
	div.s r1, r10, r15
	div.s r6, r1, r16
	div.s r1, r6, r13
	slli r22, r1, 3
	sub.s r3, r14, r22
	min.s r3, r3, r25
	mod.s r23, r6, r3
	add.s r22, r23, r22
	zext_int2long r[26:27], r22
	.loc	1 81 20                         # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:81:20
	bneq r2, r21, .LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 81 25                         # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:81:25
	setlt.u r1, r21, r22
	.loc	1 0 0                           # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:0:0
	addli r3, zero, 13
	sll.d r[5:6], r[26:27], r3
	.loc	1 81 25                         # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:81:25
	bneq r1, zero, .LBB0_15
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25                          # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:0:25
	zext_int2long r[22:23], zero
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	slli r4, r7, 13
	addli r23, zero, 6
	.loc	1 86 20 is_stmt 1               # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:86:20
	beq r2, r20, .LBB0_18
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	lui r7, 30
	add.s r7, r5, r7
	addli r5, zero, 7
	beq r2, r5, .LBB0_17
# %bb.13:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:0:0
	slli r1, r1, 8
	sub.s r1, r6, r1
	div.s r1, r1, r3
	zext_int2long r[5:6], r1
	sll.d r[5:6], r[5:6], r12
	.loc	1 86 20                         # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:86:20
	bneq r2, r23, .LBB0_19
# %bb.14:                               #   in Loop: Header=BB0_7 Depth=1
	sll.d r[3:4], r[5:6], r21
	addli r1, zero, 7
	xwait r1, 0
	lock zero, r20
	add.ul r[3:4], r[17:18], r[3:4]
	addli r1, zero, 64
	dma_cfg r21, r21, zero, 0
	dma_cfg zero, r4, zero, 2
	dma_cfg r7, r3, r1, 3
	addli r1, zero, 2048
	dma_cfg r19, r1, r19, 4
	dma_run zero
	unlock r20
	xsignal r23, 0
	.loc	1 89 25 is_stmt 1               # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:89:25
	j .LBB0_6
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 81 25                         # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:81:25
	load.d r[22:23], -8(r30)                # 8-byte Folded Reload
	and.d r[22:23], r[5:6], r[22:23]
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:0:25
	addli r1, zero, 64
	.loc	1 81 25                         # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:81:25
	sub.sl r[5:6], r[5:6], r[22:23]
	.loc	1 81 20                         # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:81:20
	xwait r24, 0
	lock zero, r20
	dma_cfg r21, r21, zero, 0
	zext_int2long r[22:23], r1
	.loc	1 81 25                         # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:81:25
	addli r1, zero, 7
	sra.d r[5:6], r[5:6], r1
	.loc	1 81 20                         # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:81:20
	addli r1, zero, 14
	.loc	1 81 25                         # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:81:25
	min.sl r[22:23], r[5:6], r[22:23]
	.loc	1 81 20                         # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:81:20
	sll.d r[26:27], r[26:27], r1
	.loc	1 81 25                         # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:81:25
	sub.sl r[5:6], r[22:23], r[5:6]
	.loc	1 81 20                         # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:81:20
	load.d r[22:23], 0(r30)
	addli r1, r5, 64
	add.ul r[22:23], r[22:23], r[26:27]
	dma_cfg zero, r23, zero, 2
	dma_cfg r4, r22, r13, 3
	dma_cfg r13, r13, r1, 4
	dma_run zero
	unlock r20
	xsignal r14, 0
	.loc	1 89 25 is_stmt 1               # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:89:25
	j .LBB0_6
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 9
	xwait r23, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 64
	ds_cfg r24, zero, 0
	ds_cfg r1, zero, 1
	addli r1, zero, 32
	ds_cfg r19, zero, 14
	ds_cfg r1, zero, 13
	addli r1, zero, 7
	shuffle_coa r4, r7, r19, 2
	unlock zero
	xsignal r1, 0
	xsignal r25, 0
	j .LBB0_6
.LBB0_18:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r20, 0
	xwait r25, 0
	addli r3, zero, 32
	xwait r1, 0
	addli r1, zero, 64
	lock zero, r21
	mm_cfg r3, r19, r1, 0
	addli r1, zero, 9
	mm_cfg r20, r21, r21, 2
	mm r4, r5, r4, 5
	unlock r21
	xsignal r12, 0
	xsignal r1, 0
	addli r1, zero, 10
	j .LBB0_21
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 101 67                        # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:101:67
	bneq r2, zero, .LBB0_6
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 67 is_stmt 0                # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:0:67
	addli r3, zero, 992
	slli r1, r1, 5
	addli r7, r16, 0
	.loc	1 101 67                        # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:101:67
	sll.d r[5:6], r[5:6], r21
	zext_int2long r[17:18], r3
	addli r3, r15, 0
	zext_int2long r[15:16], r1
	.loc	1 0 0                           # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:0:0
	slli r1, r22, 6
	.loc	1 101 67                        # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:101:67
	min.ul r[22:23], r[15:16], r[17:18]
	addli r17, zero, 64
	addli.d r[22:23], r[22:23], 32
	zext_int2long r[24:25], r17
	sext_int2long r[17:18], r1
	addli r1, zero, 32
	max.ul r[22:23], r[22:23], r[15:16]
	store.d r[24:25], -16(r30)              # 8-byte Folded Spill
	min.sl r[24:25], r[17:18], r[24:25]
	sub.sl r[15:16], r[22:23], r[15:16]
	store.d r[24:25], -32(r30)              # 8-byte Folded Spill
	zext_int2long r[22:23], r1
	addli r1, zero, 17
	addli r24, zero, 3
	store.d r[15:16], -24(r30)              # 8-byte Folded Spill
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
	sll.d r[25:26], r[26:27], r1
	addli r1, zero, 10
	addli.d r[15:16], r[15:16], 64
	store.d r[15:16], -32(r30)              # 8-byte Folded Spill
	load.d r[15:16], -24(r30)               # 8-byte Folded Reload
	min.ul r[22:23], r[15:16], r[22:23]
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
	max.sl r[15:16], r[15:16], r[17:18]
	sub.sl r[15:16], r[15:16], r[17:18]
	load.d r[17:18], 16(r30)
	add.ul r[17:18], r[17:18], r[25:26]
	load.d r[26:27], -16(r30)               # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r12
	slli r1, r22, 2
	addli r25, zero, 8
	dma_cfg r21, zero, zero, 0
	add.ul r[5:6], r[17:18], r[5:6]
	dma_cfg zero, r21, zero, 1
	load.d r[17:18], 8(r30)
	min.sl r[15:16], r[15:16], r[26:27]
	dma_cfg r6, zero, zero, 2
	dma_cfg r5, r4, r1, 3
	addli r1, zero, 2048
	dma_cfg r1, r19, r15, 4
	addli r16, r7, 0
	addli r15, r3, 0
	addli r1, zero, 11
	dma_run zero
	unlock r12
.LBB0_21:                               # %.thread3
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:0:0
	xsignal r1, 0
	j .LBB0_6
.LBB0_22:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_24
# %bb.23:
	.loc	1 0 0 is_stmt 0                 # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py:22:0
	addli sp, sp, 32
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
	.long	96                              # 0x60
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
.asciz	"cyrr6r7ps7oltyo76mqja45f3geefx6plq6x6shbwopj2vdcduc6.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/yr" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
