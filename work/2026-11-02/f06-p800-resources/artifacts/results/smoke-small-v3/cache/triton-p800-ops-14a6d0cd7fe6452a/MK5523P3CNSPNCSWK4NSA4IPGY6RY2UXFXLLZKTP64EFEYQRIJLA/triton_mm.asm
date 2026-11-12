	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/smoke-small-v3/cache/inductor/pm" "cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py"
	.loc	1 22 0                          # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -96
	addli r30, sp, 32
	addli r1, zero, 1
.Ltmp0:
	.loc	1 81 20 prologue_end            # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:81:20
	core_id r2
	loadli.w r3,  32(r30)
	loadli.w r17,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 20 is_stmt 0                # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:0:20
	lui r1, 1048575
	ori r1, r1, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	addli r4, zero, 2
	uni_sram_cfg r1, r1
	lui r5, 1048575
	lock zero, r4
	ew_cfg r1, zero, zero, 16
	ori r1, r5, 4095
	unlock r4
	addli r4, zero, 5
	csr_set csr3, r1
	addli r1, zero, 11
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 3
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	addli r4, zero, 9
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 7
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r4,  28(r30)
	load_param_i r6, 1
	loadli.w r5,  32(r30)
	mul.s r1, r4, r1
	addli r4, r6, 0
	fmac.s r4, r1, r5
	mul.s r5, r1, r5
	addli r4, r4, -1
	div.s r4, r4, r6
	load_param_i r6, 0
	mul.s r1, r4, r6
	fmac.s r4, r4, r6
	min.s r4, r4, r5
	ble.s r4, r1, .LBB0_19
# %bb.4:                                # %.lr.ph.preheader
	sext_int2long r[12:13], r1
	lui r1, 7
	sext_int2long r[10:11], r4
	addli r14, zero, 5
	addli r15, zero, 16
	addli r16, zero, 1
	addli r18, zero, 8
	addli r25, zero, 6
	lui r19, 5
	addli r20, zero, 2
	addli r21, zero, 3
	addli r22, zero, 64
	addli r23, zero, 4
	addli r6, zero, 0
	ori r1, r1, 2048
	storeli.w r1, -4(r30)                   # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 89 25 is_stmt 1               # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:89:25
	xwait r20, 0
	xwait r14, 0
	lock zero, zero
	ds_cfg r21, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r15, zero, 13
	shuffle_batch r5, r7, r22, 1
	unlock zero
	xsignal r21, 0
	xsignal r23, 0
.LBB0_6:                                # %.thread4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:0:25
	addli.d r[12:13], r[12:13], 1
	addli r6, r6, 1
	setlt.sl r1, r[12:13], r[10:11]
	beq r1, zero, .LBB0_19
.LBB0_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	mod.s r8, r6, r14
	.loc	1 89 25                         # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:89:25
	slli r5, r8, 11
	.loc	1 81 20 is_stmt 1               # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:81:20
	add.s r7, r5, r19
	beq r2, r20, .LBB0_5
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:0:20
	div.s r1, r12, r3
	div.s r9, r1, r17
	div.s r24, r9, r15
	slli r4, r24, 3
	sub.s r1, r16, r4
	min.s r1, r1, r18
	mod.s r27, r9, r1
	add.s r4, r27, r4
	zext_int2long r[27:28], r4
	.loc	1 81 20                         # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:81:20
	bneq r2, r16, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	load.d r[8:9], 0(r30)
	xwait r21, 0
	lock zero, r23
	dma_cfg r16, r16, zero, 0
	sll.d r[4:5], r[27:28], r1
	addli r1, zero, 128
	add.ul r[4:5], r[8:9], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r7, r4, r1, 3
	dma_cfg r1, r1, r15, 4
	dma_run zero
	unlock r23
	xsignal r20, 0
	.loc	1 89 25 is_stmt 1               # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:89:25
	j .LBB0_6
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:0:25
	slli r7, r8, 12
	.loc	1 89 25                         # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:89:25
	slli r8, r8, 13
	.loc	1 86 20 is_stmt 1               # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:86:20
	beq r2, r23, .LBB0_15
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	addli r26, zero, 7
	add.s r5, r8, r5
	beq r2, r26, .LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:0:0
	slli r8, r24, 4
	sub.s r8, r9, r8
	div.s r1, r8, r1
	zext_int2long r[8:9], r1
	sll.d r[8:9], r[8:9], r25
	.loc	1 86 20                         # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:86:20
	bneq r2, r25, .LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[24:25], 8(r30)
	sll.d r[7:8], r[8:9], r16
	addli r1, zero, 7
	addli r4, zero, 256
	xwait r1, 0
	lock zero, r23
	addli r1, zero, 128
	add.ul r[7:8], r[24:25], r[7:8]
	dma_cfg r16, r16, zero, 0
	addli r25, zero, 6
	dma_cfg zero, r8, zero, 2
	dma_cfg r5, r7, r1, 3
	dma_cfg r1, r4, r22, 4
	dma_run zero
	unlock r23
	xsignal r25, 0
	.loc	1 89 25 is_stmt 1               # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:89:25
	j .LBB0_6
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 9
	xwait r25, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 7
	ds_cfg r21, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r8, r5, r22, 2
	unlock zero
	xsignal r1, 0
	xsignal r18, 0
	j .LBB0_6
.LBB0_15:                               # %.thread22
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r23, 0
	xwait r18, 0
	xwait r1, 0
	lock zero, r16
	addli r1, zero, 9
	mm_cfg r22, r22, r15, 0
	mm_cfg r20, r20, r16, 2
	mm r7, r5, r8, 5
	unlock r16
	xsignal r14, 0
	xsignal r1, 0
	addli r1, zero, 10
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 101 67                        # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:101:67
	bneq r2, zero, .LBB0_6
# %bb.17:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:0:0
	slli r1, r1, 6
	zext_int2long r[18:19], r22
	.loc	1 101 67                        # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:101:67
	sll.d r[8:9], r[8:9], r16
	zext_int2long r[24:25], r1
	.loc	1 0 0                           # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:0:0
	slli r1, r4, 4
	.loc	1 101 67                        # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:101:67
	store.d r[18:19], -16(r30)              # 8-byte Folded Spill
	min.ul r[4:5], r[24:25], r[18:19]
	lui r19, 5
	store.d r[4:5], -24(r30)                # 8-byte Folded Spill
	addli r5, r3, 0
	sext_int2long r[3:4], r1
	addli r1, r17, 0
	zext_int2long r[17:18], zero
	store.d r[17:18], -32(r30)              # 8-byte Folded Spill
	load.d r[17:18], -24(r30)               # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 64
	store.d r[17:18], -24(r30)              # 8-byte Folded Spill
	load.d r[17:18], -32(r30)               # 8-byte Folded Reload
	min.sl r[17:18], r[3:4], r[17:18]
	store.d r[17:18], -32(r30)              # 8-byte Folded Spill
	load.d r[17:18], -24(r30)               # 8-byte Folded Reload
	max.ul r[17:18], r[17:18], r[24:25]
	store.d r[17:18], -24(r30)              # 8-byte Folded Spill
	load.d r[17:18], -32(r30)               # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 16
	store.d r[17:18], -32(r30)              # 8-byte Folded Spill
	load.d r[17:18], -24(r30)               # 8-byte Folded Reload
	sub.sl r[24:25], r[17:18], r[24:25]
	load.d r[17:18], -32(r30)               # 8-byte Folded Reload
	max.sl r[17:18], r[17:18], r[3:4]
	store.d r[17:18], -24(r30)              # 8-byte Folded Spill
	load.d r[17:18], -16(r30)               # 8-byte Folded Reload
	min.ul r[24:25], r[24:25], r[17:18]
	load.d r[17:18], -24(r30)               # 8-byte Folded Reload
	store.d r[24:25], -16(r30)              # 8-byte Folded Spill
	load.d r[24:25], 16(r30)
	sub.sl r[3:4], r[17:18], r[3:4]
	addli r17, zero, 12
	sll.d r[17:18], r[27:28], r17
	zext_int2long r[27:28], r15
	add.ul r[17:18], r[24:25], r[17:18]
	min.sl r[3:4], r[3:4], r[27:28]
	addli r25, zero, 6
	add.ul r[8:9], r[17:18], r[8:9]
	addli r17, r1, 0
	addli r1, zero, 10
	addli r18, zero, 8
	xwait r1, 0
	lock zero, r14
	dma_cfg r16, zero, zero, 0
	dma_cfg zero, r16, zero, 1
	load.d r[26:27], -16(r30)               # 8-byte Folded Reload
	dma_cfg r9, zero, zero, 2
	slli r1, r26, 2
	dma_cfg r8, r7, r1, 3
	addli r1, zero, 256
	dma_cfg r1, r1, r3, 4
	addli r3, r5, 0
	addli r1, zero, 11
	dma_run zero
	unlock r14
.LBB0_18:                               # %.thread4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:0:0
	xsignal r1, 0
	j .LBB0_6
.LBB0_19:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_21
# %bb.20:
	.loc	1 0 0 is_stmt 0                 # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py:22:0
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
.asciz	"cpmeelq3xy6ay4uv76f3tyfm3rwhynvkex6a2f6nyzfcxi5l2h5c.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/smoke-small-v3/cache/inductor/pm" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
