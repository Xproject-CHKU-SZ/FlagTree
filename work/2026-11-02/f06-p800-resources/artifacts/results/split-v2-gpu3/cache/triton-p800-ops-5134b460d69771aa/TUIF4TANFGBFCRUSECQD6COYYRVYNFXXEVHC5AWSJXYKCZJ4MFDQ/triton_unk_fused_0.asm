	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu3/cache/inductor/im" "cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py"
	.loc	1 23 0                          # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:23:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -72
	addli r30, sp, 8
	addli r1, zero, 1
.Ltmp0:
	.loc	1 82 20 prologue_end            # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:82:20
	core_id r2
	loadli.w r15,  40(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 20 is_stmt 0                # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:0:20
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
	addli r1, zero, 12
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r1, zero, 3
	addli r3, zero, 9
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r1, zero, 7
	addli r3, zero, 14
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	ble.s r3, r1, .LBB0_28
# %bb.4:                                # %.lr.ph
	sext_int2long r[10:11], r1
	lui r1, 19
	load.d r[12:13], 0(r30)
	sext_int2long r[19:20], r3
	addli r22, zero, 3
	addli r14, zero, 1
	addli r18, zero, 4
	addli r21, zero, 2
	addli r4, zero, 8192
	addli r5, zero, 64
	addli r28, zero, 0
	ori r1, r1, 2048
	storeli.w r1, -4(r30)                   # 4-byte Folded Spill
	lui r1, 7
	ori r1, r1, 2048
	storeli.w r1, -8(r30)                   # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 102 66 is_stmt 1              # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:102:66
	load.d r[8:9], 16(r30)
	sll.d r[6:7], r[24:25], r14
	addli r1, zero, 14
	xwait r1, 0
	lock zero, r18
	slli r1, r26, 1
	add.ul r[6:7], r[8:9], r[6:7]
	dma_cfg zero, r14, zero, 0
	dma_cfg zero, r7, zero, 2
	dma_cfg r3, r6, r1, 3
	addli r1, zero, 256
	addli r3, zero, 512
	dma_cfg r3, r1, r14, 4
	addli r1, zero, 13
	dma_run zero
	unlock r18
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli.d r[10:11], r[10:11], 1
	addli r28, r28, 1
	addli r22, zero, 3
	setlt.sl r1, r[10:11], r[19:20]
	beq r1, zero, .LBB0_28
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_16 Depth 2
	div.s r1, r10, r15
	loadli.w r3,  36(r30)
	addli r6, zero, 8
	mod.s r26, r28, r22
	.loc	1 97 15 is_stmt 1               # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:97:15
	addli r24, zero, 7
	addli r9, zero, 8
	div.s r1, r1, r3
	.loc	1 90 25                         # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:90:25
	slli r23, r26, 11
	.loc	1 54 22                         # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:54:22
	div.s r3, r1, r6
	slli r7, r3, 3
	.loc	1 55 30                         # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:55:30
	sub.s r3, r14, r7
	.loc	1 55 50 is_stmt 0               # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:55:50
	min.s r3, r3, r6
	.loc	1 54 22 is_stmt 1               # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:54:22
	sub.s r6, r1, r7
	.loc	1 56 40                         # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:56:40
	mod.s r1, r1, r3
	.loc	1 57 30                         # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:57:30
	div.s r3, r6, r3
	slli r6, r26, 13
	.loc	1 56 34                         # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:56:34
	add.s r1, r1, r7
	.loc	1 97 15                         # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:97:15
	zext_int2long r[7:8], r3
	sll.d r[24:25], r[7:8], r24
	.loc	1 82 20                         # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:82:20
	lui r7, 6
	.loc	1 96 15                         # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:96:15
	zext_int2long r[16:17], r1
	.loc	1 82 20                         # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:82:20
	add.s r7, r23, r7
	bneq r2, r14, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r8, zero, 11
	xwait r22, 0
	lock zero, r18
	addli r22, zero, 128
	dma_cfg r14, r14, zero, 0
	sll.d r[8:9], r[16:17], r8
	add.ul r[8:9], r[12:13], r[8:9]
	dma_cfg zero, r9, zero, 2
	dma_cfg r7, r8, r22, 3
	addli r7, zero, 16
	dma_cfg r22, r22, r7, 4
	dma_run zero
	unlock r18
	xsignal r21, 0
	.loc	1 90 25                         # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:90:25
	j .LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r21, .LBB0_18
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	addli r8, zero, 5
	xwait r21, 0
	xwait r8, 0
	lock zero, zero
	addli r8, zero, 16
	ds_cfg r22, zero, 0
	ds_cfg r5, zero, 1
	ds_cfg r5, zero, 14
	ds_cfg r8, zero, 13
	shuffle_batch r23, r7, r5, 1
	unlock zero
	xsignal r22, 0
	xsignal r18, 0
.LBB0_12:                               # %.thread5
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:0:25
	addli r22, zero, 128
.LBB0_13:                               # %.thread5
                                        #   in Loop: Header=BB0_8 Depth=1
	slli r3, r3, 7
	zext_int2long r[7:8], r22
	.loc	1 102 66 is_stmt 1              # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:102:66
	zext_int2long r[22:23], r3
	slli r3, r26, 9
	max.ul r[7:8], r[22:23], r[7:8]
	sub.sl r[26:27], r[7:8], r[22:23]
	loadli.w r7,  -4(r30)                   # 4-byte Folded Reload
	add.s r3, r3, r7
	beq r2, r14, .LBB0_5
# %bb.14:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 107 18                        # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:107:18
	addli r7, zero, 5
	bneq r2, r7, .LBB0_22
# %bb.15:                               #   in Loop: Header=BB0_8 Depth=1
	addli r7, zero, 10
	addli r1, zero, 0
	xwait r7, 0
	addli r7, zero, 13
	xwait r7, 0
	lock zero, r21
	lui r7, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r7, r7, zero, 0
	addli r7, zero, 127
	ew_cfg zero, r7, zero, 2
	ew_cfg r14, zero, zero, 3
.LBB0_16:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r7, r6, r1
	addli r1, r1, 512
	dsmadd r7, r7, r3, 0
	bneq r1, r4, .LBB0_16
# %bb.17:                               # %.thread31
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	unlock r21
	xsignal r1, 0
	addli r1, zero, 14
	j .LBB0_6
.LBB0_18:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 18 is_stmt 0                # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:0:18
	addli r8, zero, 3
	.loc	1 90 25 is_stmt 1               # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:90:25
	slli r27, r26, 14
	.loc	1 87 20                         # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:87:20
	beq r2, r18, .LBB0_25
# %bb.19:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r7,  -8(r30)                   # 4-byte Folded Reload
	addli r22, zero, 7
	add.s r7, r27, r7
	beq r2, r22, .LBB0_24
# %bb.20:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:0:20
	addli r22, zero, 128
	.loc	1 87 20                         # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:87:20
	addli r8, zero, 6
	bneq r2, r8, .LBB0_13
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	load.d r[12:13], 8(r30)
	sll.d r[8:9], r[24:25], r14
	addli r22, zero, 7
	addli r23, zero, 256
	xwait r22, 0
	lock zero, r18
	addli r22, zero, 128
	add.ul r[8:9], r[12:13], r[8:9]
	dma_cfg r14, r14, zero, 0
	load.d r[12:13], 0(r30)
	dma_cfg zero, r9, zero, 2
	dma_cfg r7, r8, r23, 3
	addli r7, zero, 6
	dma_cfg r23, r23, r5, 4
	dma_run zero
	unlock r18
	xsignal r7, 0
	.loc	1 90 25 is_stmt 1               # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:90:25
	j .LBB0_13
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 110 79                        # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:110:79
	bneq r2, zero, .LBB0_7
# %bb.23:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 79 is_stmt 0                # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:0:79
	slli r1, r1, 4
	zext_int2long r[7:8], zero
	.loc	1 110 79                        # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:110:79
	load.d r[12:13], 24(r30)
	addli r9, zero, 5
	sll.d r[24:25], r[24:25], r14
	.loc	1 82 20 is_stmt 1               # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:82:20
	core_id r2
	.loc	1 110 79                        # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:110:79
	addli r3, zero, 512
	sext_int2long r[22:23], r1
	addli r1, zero, 12
	min.sl r[7:8], r[22:23], r[7:8]
	sll.d r[15:16], r[16:17], r1
	addli r1, zero, 16
	addli r17, zero, 12
	addli.d r[7:8], r[7:8], 16
	add.ul r[15:16], r[12:13], r[15:16]
	load.d r[12:13], 0(r30)
	max.sl r[7:8], r[7:8], r[22:23]
	add.ul r[15:16], r[15:16], r[24:25]
	sub.sl r[7:8], r[7:8], r[22:23]
	zext_int2long r[22:23], r1
	addli r1, zero, 11
	xwait r1, 0
	lock zero, r9
	slli r1, r26, 2
	min.sl r[7:8], r[7:8], r[22:23]
	dma_cfg r14, zero, zero, 0
	dma_cfg zero, r14, zero, 1
	dma_cfg r16, zero, zero, 2
	dma_cfg r15, r6, r1, 3
	loadli.w r15,  40(r30)
	addli r1, zero, 256
	dma_cfg r1, r3, r7, 4
	dma_run zero
	unlock r9
	xsignal r17, 0
	j .LBB0_7
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 90 25                         # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:90:25
	addli r22, zero, 6
	xwait r22, 0
	addli r22, zero, 9
	xwait r22, 0
	lock zero, zero
	addli r22, zero, 128
	ds_cfg r8, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r5, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r27, r7, r5, 2
	addli r7, zero, 7
	unlock zero
	xsignal r7, 0
	xsignal r9, 0
	j .LBB0_13
.LBB0_25:                               #   in Loop: Header=BB0_8 Depth=1
	xwait r18, 0
	xwait r9, 0
	addli r9, zero, 12
	addli r8, zero, 0
	addli r7, zero, 1
	addli r15, zero, 1
	addli r22, zero, 16
	xwait r9, 0
.LBB0_26:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r9, r8, 13
	slli r8, r8, 8
	lock zero, r7
	mm_cfg r5, r5, r22, 0
	or r9, r9, r27
	or r8, r8, r6
	mm_cfg r21, r18, r7, 2
	mm r8, r23, r9, 5
	andi r9, r15, 1
	addli r8, zero, 1
	addli r15, zero, 0
	unlock r7
	bneq r9, zero, .LBB0_26
# %bb.27:                               #   in Loop: Header=BB0_8 Depth=1
	addli r7, zero, 5
	loadli.w r15,  40(r30)
	xsignal r7, 0
	addli r7, zero, 9
	xsignal r7, 0
	addli r7, zero, 10
	xsignal r7, 0
	j .LBB0_12
.LBB0_28:                               # %._crit_edge
	.loc	1 23 0                          # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:23:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_30
# %bb.29:
	.loc	1 0 0 is_stmt 0                 # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:0:0
	addli r1, zero, 2
	.loc	1 23 0                          # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:23:0
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
.LBB0_30:
	.loc	1 23 0 epilogue_begin           # cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py:23:0
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
.asciz	"cimmslniz2f3pv2kq3usd2fa2uzz4336mhjofjjc5cdu5lijwpor.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu3/cache/inductor/im" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
