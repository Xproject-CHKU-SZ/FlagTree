	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/xm" "cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py"
	.loc	1 23 0                          # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:23:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -72
	addli r1, zero, 1
.Ltmp0:
	.loc	1 82 20 prologue_end            # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:82:20
	core_id r2
	addli r30, sp, 8
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 20 is_stmt 0                # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:0:20
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
	addli r3, zero, 3
	csr_set csr3, r1
	addli r1, zero, 5
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r1, zero, 9
	addli r3, zero, 7
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r1, zero, 11
	addli r3, zero, 14
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	addli r11, zero, 1
	addli r14, zero, 4
	addli r18, zero, 32
	addli r19, zero, 2
	addli r17, zero, 128
	lui r27, 40
	addli r26, zero, 64
	addli r10, zero, 5
	lui r5, 4
	addli r28, zero, 0
	store.d r[3:4], -8(r30)                 # 8-byte Folded Spill
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
                                        #     Child Loop BB0_17 Depth 2
	loadli.w r1,  40(r30)
	loadli.w r3,  36(r30)
	.loc	1 55 50 is_stmt 1               # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:55:50
	addli r6, zero, 8
	.loc	1 90 25                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:90:25
	mod.s r24, r28, r14
	div.s r1, r8, r1
	slli r25, r24, 13
	div.s r1, r1, r3
	.loc	1 54 22                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:54:22
	addli r3, zero, 16
	div.s r3, r1, r3
	.loc	1 55 41                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:55:41
	slli r4, r3, 3
	.loc	1 54 22                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:54:22
	slli r3, r3, 4
	.loc	1 55 30                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:55:30
	sub.s r12, r11, r4
	.loc	1 54 22                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:54:22
	sub.s r3, r1, r3
	.loc	1 55 50                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:55:50
	min.s r12, r12, r6
	.loc	1 56 40                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:56:40
	mod.s r1, r1, r12
	.loc	1 57 30                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:57:30
	div.s r3, r3, r12
	.loc	1 56 34                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:56:34
	add.s r4, r4, r1
	.loc	1 97 15                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:97:15
	zext_int2long r[12:13], r3
	addli r1, zero, 7
	.loc	1 96 15                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:96:15
	zext_int2long r[15:16], r4
	.loc	1 97 15                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:97:15
	sll.d r[22:23], r[12:13], r1
	.loc	1 82 20                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:82:20
	bneq r2, r11, .LBB0_7
# %bb.6:                                # %.thread
                                        #   in Loop: Header=BB0_5 Depth=1
	addli r1, zero, 13
	load.d r[6:7], 0(r30)
	sll.d r[12:13], r[15:16], r1
	addli r1, zero, 3
	xwait r1, 0
	lock zero, r14
	add.ul r[12:13], r[6:7], r[12:13]
	addli r1, zero, 256
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r13, zero, 2
	dma_cfg r25, r12, r1, 3
	dma_cfg r1, r1, r18, 4
	dma_run zero
	unlock r14
	xsignal r19, 0
	.loc	1 90 25                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:90:25
	slli r1, r24, 15
	.loc	1 87 20                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:87:20
	j .LBB0_13
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	1 90 25                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:90:25
	bneq r2, r19, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	xwait r19, 0
	xwait r10, 0
	lock zero, zero
	addli r1, zero, 3
	ds_cfg r19, zero, 0
	ds_cfg r26, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r18, zero, 13
	shuffle_batch r25, r25, r26, 1
	unlock zero
	xsignal r1, 0
	xsignal r14, 0
	slli r1, r24, 15
	.loc	1 87 20                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:87:20
	j .LBB0_13
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	1 90 25                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:90:25
	slli r1, r24, 15
	.loc	1 87 20                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:87:20
	lui r6, 8
	add.s r12, r1, r6
	addli r6, zero, 7
	beq r2, r6, .LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 20 is_stmt 0                # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:0:20
	addli r13, zero, 6
	.loc	1 87 20                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:87:20
	bneq r2, r13, .LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=1
	addli r6, zero, 7
	sll.d r[20:21], r[22:23], r19
	xwait r6, 0
	load.d r[6:7], 8(r30)
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	add.ul r[20:21], r[6:7], r[20:21]
	addli r6, zero, 512
	addli r7, zero, 1024
	dma_cfg zero, r21, zero, 2
	dma_cfg r12, r20, r6, 3
	dma_cfg r6, r7, r26, 4
	dma_run zero
	unlock r14
	xsignal r13, 0
	.loc	1 90 25 is_stmt 1               # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:90:25
	j .LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=1
	addli r6, zero, 6
	addli r17, zero, 128
	xwait r6, 0
	addli r6, zero, 9
	xwait r6, 0
	lock zero, zero
	addli r6, zero, 128
	ds_cfg r19, zero, 0
	ds_cfg r6, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r6, zero, 13
	addli r6, zero, 7
	shuffle_coa r1, r12, r26, 2
	unlock zero
	xsignal r6, 0
	addli r6, zero, 8
	xsignal r6, 0
.LBB0_13:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 0 is_stmt 0                 # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:0:0
	slli r3, r3, 7
	zext_int2long r[12:13], r17
	.loc	1 102 66 is_stmt 1              # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:102:66
	zext_int2long r[20:21], r3
	slli r3, r24, 9
	min.ul r[6:7], r[20:21], r[12:13]
	add.s r3, r3, r27
	addli.d r[6:7], r[6:7], 128
	max.ul r[6:7], r[6:7], r[20:21]
	sub.sl r[6:7], r[6:7], r[20:21]
	min.ul r[12:13], r[6:7], r[12:13]
	bneq r2, r11, .LBB0_15
# %bb.14:                               # %.thread29
                                        #   in Loop: Header=BB0_5 Depth=1
	load.d r[15:16], 16(r30)
	sll.d r[6:7], r[22:23], r19
	addli r1, zero, 11
	xwait r1, 0
	lock zero, r14
	slli r1, r12, 2
	add.ul r[6:7], r[15:16], r[6:7]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r7, zero, 2
	dma_cfg r3, r6, r1, 3
	addli r1, zero, 512
	dma_cfg r1, r1, r11, 4
	dma_run zero
	unlock r14
	addli r1, zero, 10
	j .LBB0_25
.LBB0_15:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 90 25                         # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:90:25
	slli r6, r24, 14
	ori r7, r27, 2048
	add.s r24, r6, r7
	bneq r2, r14, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_5 Depth=1
	addli r3, zero, 8
	xwait r14, 0
	addli r12, zero, 0
	addli r4, zero, 1
	addli r6, zero, 14
	xwait r3, 0
	addli r3, zero, 1
	xwait r6, 0
.LBB0_17:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r6, r12, 14
	slli r7, r12, 8
	lock zero, r3
	addli r12, zero, 1
	mm_cfg r26, r26, r18, 0
	or r6, r6, r1
	or r7, r7, r24
	mm_cfg r14, r14, r3, 2
	mm r7, r25, r6, 8
	andi r6, r4, 1
	addli r4, zero, 0
	unlock r3
	bneq r6, zero, .LBB0_17
# %bb.18:                               #   in Loop: Header=BB0_5 Depth=1
	addli r1, zero, 9
	xsignal r10, 0
	xsignal r1, 0
	addli r1, zero, 12
	j .LBB0_25
.LBB0_19:                               #   in Loop: Header=BB0_5 Depth=1
	bneq r2, r10, .LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_5 Depth=1
	addli r4, zero, 10
	addli r1, zero, 0
	xwait r4, 0
	addli r4, zero, 12
	xwait r4, 0
	lock zero, r19
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 127
	ew_cfg zero, r4, zero, 2
	ew_cfg r11, zero, zero, 3
.LBB0_21:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r24, r1
	addli r1, r1, 512
	dsmadd r4, r4, r3, 0
	bneq r1, r5, .LBB0_21
# %bb.22:                               #   in Loop: Header=BB0_5 Depth=1
	addli r1, zero, 11
	unlock r19
	xsignal r1, 0
	addli r1, zero, 13
	j .LBB0_25
.LBB0_23:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 104 79                        # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:104:79
	bneq r2, zero, .LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 79 is_stmt 0                # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:0:79
	slli r1, r4, 5
	zext_int2long r[3:4], zero
	.loc	1 104 79                        # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:104:79
	sll.d r[20:21], r[22:23], r19
	load.d r[22:23], 24(r30)
	addli r10, zero, 5
	sext_int2long r[6:7], r1
	addli r1, zero, 15
	min.sl r[3:4], r[6:7], r[3:4]
	sll.d r[15:16], r[15:16], r1
	addli r1, zero, 13
	addli.d r[3:4], r[3:4], 32
	add.ul r[15:16], r[22:23], r[15:16]
	xwait r1, 0
	slli r1, r12, 2
	max.sl r[3:4], r[3:4], r[6:7]
	add.ul r[15:16], r[15:16], r[20:21]
	sub.sl r[3:4], r[3:4], r[6:7]
	zext_int2long r[6:7], r18
	min.sl r[3:4], r[3:4], r[6:7]
	addli r6, zero, 5
	addli r7, zero, 1024
	lock zero, r6
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r11, zero, 1
	dma_cfg r16, zero, zero, 2
	dma_cfg r15, r24, r1, 3
	addli r1, zero, 512
	dma_cfg r7, r1, r3, 4
	addli r1, zero, 14
	dma_run zero
	unlock r6
.LBB0_25:                               # %.thread36
                                        #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 0                           # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:0:0
	xsignal r1, 0
.LBB0_26:                               # %.thread36
                                        #   in Loop: Header=BB0_5 Depth=1
	load.d r[3:4], -8(r30)                  # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 1
	addli r28, r28, 1
	setlt.sl r1, r[8:9], r[3:4]
	bneq r1, zero, .LBB0_5
.LBB0_27:                               # %._crit_edge
	.loc	1 23 0 is_stmt 1                # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:23:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_29
# %bb.28:
	.loc	1 0 0 is_stmt 0                 # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:0:0
	addli r1, zero, 2
	.loc	1 23 0                          # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:23:0
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
	.loc	1 23 0 epilogue_begin           # cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py:23:0
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
.asciz	"cxm7qnog7wzblvhrr7dvx6cv57n36tz6thx7trtfpu7s5uf23tdx.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/xm" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
