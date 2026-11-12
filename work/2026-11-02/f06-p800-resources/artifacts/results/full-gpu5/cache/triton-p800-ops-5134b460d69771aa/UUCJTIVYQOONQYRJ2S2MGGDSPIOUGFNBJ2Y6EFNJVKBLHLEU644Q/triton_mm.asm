	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/c5" "cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py"
	.loc	1 22 0                          # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -64
	addli r30, sp, 0
	addli r4, zero, 1
.Ltmp0:
	.loc	1 81 20 prologue_end            # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:81:20
	core_id r2
	loadli.w r20,  32(r30)
	loadli.w r21,  28(r30)
	xsignal_mode_cfg r4
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 20 is_stmt 0                # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:0:20
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
	addli r4, zero, 3
	xsignal r5, 0
	xsignal r5, 0
	addli r5, zero, 9
	xsignal r4, 0
	xsignal r4, 0
	addli r4, zero, 7
	xsignal r5, 0
	xsignal r5, 0
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
	addli r14, zero, 2
	addli r15, zero, 32
	addli r16, zero, 1
	addli r17, zero, 8
	addli r24, zero, 5
	addli r19, zero, 64
	addli r18, zero, 16
	addli r22, zero, 4
	addli r1, zero, 256
	addli r7, zero, 0
	j .LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 89 25 is_stmt 1               # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:89:25
	xwait r14, 0
	xwait r24, 0
	lock zero, zero
	addli r3, zero, 3
	ds_cfg r14, zero, 0
	ds_cfg r19, zero, 1
	ds_cfg r19, zero, 14
	ds_cfg r18, zero, 13
	shuffle_batch r5, r6, r19, 1
	unlock zero
	xsignal r3, 0
	xsignal r22, 0
.LBB0_6:                                # %.thread4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:0:25
	addli.d r[12:13], r[12:13], 1
	addli r7, r7, 1
	setlt.sl r3, r[12:13], r[10:11]
	beq r3, zero, .LBB0_19
.LBB0_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	mod.s r9, r7, r14
	.loc	1 89 25                         # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:89:25
	slli r5, r9, 12
	.loc	1 81 20 is_stmt 1               # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:81:20
	addli r6, r5, 4096
	beq r2, r14, .LBB0_5
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:0:20
	div.s r4, r12, r20
	div.s r23, r4, r21
	div.s r4, r23, r15
	slli r8, r4, 3
	sub.s r25, r16, r8
	min.s r28, r25, r17
	mod.s r25, r23, r28
	add.s r8, r25, r8
	zext_int2long r[26:27], r8
	.loc	1 81 20                         # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:81:20
	bneq r2, r16, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 12
	load.d r[8:9], 0(r30)
	sll.d r[4:5], r[26:27], r3
	addli r3, zero, 3
	xwait r3, 0
	lock zero, r22
	add.ul r[4:5], r[8:9], r[4:5]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r5, zero, 2
	dma_cfg r6, r4, r1, 3
	dma_cfg r1, r1, r18, 4
	dma_run zero
	unlock r22
	xsignal r14, 0
	.loc	1 89 25 is_stmt 1               # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:89:25
	j .LBB0_6
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:0:25
	slli r25, r9, 11
	.loc	1 89 25                         # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:89:25
	slli r6, r9, 13
	.loc	1 86 20 is_stmt 1               # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:86:20
	beq r2, r22, .LBB0_15
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=1
	addli r9, r6, 12288
	addli r3, zero, 7
	beq r2, r3, .LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:0:0
	slli r4, r4, 5
	sub.s r4, r23, r4
	div.s r4, r4, r28
	addli r28, zero, 6
	zext_int2long r[5:6], r4
	sll.d r[5:6], r[5:6], r24
	.loc	1 86 20                         # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:86:20
	bneq r2, r28, .LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[23:24], 8(r30)
	sll.d r[4:5], r[5:6], r14
	addli r3, zero, 7
	xwait r3, 0
	lock zero, r22
	addli r3, zero, 128
	add.ul r[4:5], r[23:24], r[4:5]
	dma_cfg zero, zero, zero, 0
	addli r24, zero, 5
	dma_cfg zero, r5, zero, 2
	dma_cfg r9, r4, r3, 3
	addli r4, zero, 512
	dma_cfg r3, r4, r19, 4
	dma_run zero
	unlock r22
	xsignal r28, 0
	.loc	1 89 25 is_stmt 1               # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:89:25
	j .LBB0_6
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:0:25
	addli r3, zero, 6
	.loc	1 89 25                         # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:89:25
	xwait r3, 0
	addli r3, zero, 9
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 7
	ds_cfg r14, zero, 0
	ds_cfg r15, zero, 1
	ds_cfg r19, zero, 14
	ds_cfg r15, zero, 13
	shuffle_coa r6, r9, r19, 2
	unlock zero
	xsignal r3, 0
	xsignal r17, 0
	j .LBB0_6
.LBB0_15:                               # %.thread17
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	xwait r22, 0
	xwait r17, 0
	xwait r3, 0
	lock zero, r16
	addli r3, zero, 9
	mm_cfg r15, r19, r18, 0
	mm_cfg r22, r16, r16, 2
	mm r25, r5, r6, 8
	unlock r16
	xsignal r24, 0
	xsignal r3, 0
	addli r3, zero, 10
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 101 67 is_stmt 1              # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:101:67
	bneq r2, zero, .LBB0_6
# %bb.17:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:0:0
	slli r28, r8, 4
	addli r3, zero, 96
	slli r4, r4, 5
	zext_int2long r[8:9], zero
	.loc	1 101 67                        # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:101:67
	sll.d r[5:6], r[5:6], r14
	zext_int2long r[23:24], r3
	zext_int2long r[3:4], r4
	sext_int2long r[20:21], r28
	min.ul r[23:24], r[3:4], r[23:24]
	min.sl r[8:9], r[20:21], r[8:9]
	addli.d r[23:24], r[23:24], 32
	addli.d r[8:9], r[8:9], 16
	max.ul r[23:24], r[23:24], r[3:4]
	max.sl r[8:9], r[8:9], r[20:21]
	sub.sl r[3:4], r[23:24], r[3:4]
	zext_int2long r[23:24], r15
	sub.sl r[8:9], r[8:9], r[20:21]
	addli r20, zero, 13
	min.ul r[3:4], r[3:4], r[23:24]
	sll.d r[20:21], r[26:27], r20
	zext_int2long r[23:24], r18
	load.d r[26:27], 16(r30)
	min.sl r[8:9], r[8:9], r[23:24]
	addli r23, zero, 10
	addli r24, zero, 5
	slli r3, r3, 2
	addli r4, zero, 512
	add.ul r[20:21], r[26:27], r[20:21]
	xwait r23, 0
	lock zero, r24
	add.ul r[5:6], r[20:21], r[5:6]
	dma_cfg zero, zero, zero, 0
	loadli.w r21,  28(r30)
	loadli.w r20,  32(r30)
	dma_cfg zero, r16, zero, 1
	dma_cfg r6, zero, zero, 2
	dma_cfg r5, r25, r3, 3
	addli r3, zero, 128
	dma_cfg r4, r3, r8, 4
	addli r3, zero, 11
	dma_run zero
	unlock r24
.LBB0_18:                               # %.thread4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:0:0
	xsignal r3, 0
	j .LBB0_6
.LBB0_19:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:22:0
	xsignal zero, 0
	beq r2, zero, .LBB0_21
# %bb.20:
	mfence { lm, sm, gm }
	exit
.LBB0_21:
	.loc	1 0 0 is_stmt 0                 # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py:22:0
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
	.long	64                              # 0x40
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
.asciz	"cc5lwt6atbywu5uz53rnimi4ypyeizjcpss6v7m5yzgfy5de7b2k.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/c5" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
