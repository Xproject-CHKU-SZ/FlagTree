	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/wz" "cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py"
	.loc	1 23 0                          # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:23:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -72
	addli r30, sp, 8
	addli r1, zero, 1
.Ltmp0:
	.loc	1 82 20 prologue_end            # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:82:20
	core_id r2
	loadli.w r25,  40(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 20 is_stmt 0                # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:0:20
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
	ble.s r3, r1, .LBB0_27
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[8:9], r1
	addli r10, zero, 3
	addli r11, zero, 64
	addli r12, zero, 1
	addli r17, zero, 4
	addli r18, zero, 128
	addli r19, zero, 2
	addli r6, zero, 5
	addli r7, zero, 10
	addli r28, zero, 0
	store.d r[3:4], -8(r30)                 # 8-byte Folded Spill
	lui r4, 8
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 102 66 is_stmt 1              # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:102:66
	load.d r[15:16], 16(r30)
	sll.d r[13:14], r[26:27], r12
	addli r1, zero, 14
	xwait r1, 0
	lock zero, r17
	slli r1, r20, 1
	add.ul r[13:14], r[15:16], r[13:14]
	dma_cfg zero, r12, zero, 0
	dma_cfg zero, r14, zero, 2
	dma_cfg r3, r13, r1, 3
	addli r1, zero, 256
	addli r3, zero, 512
	dma_cfg r3, r1, r12, 4
	dma_run zero
	unlock r17
	addli r1, zero, 13
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[13:14], -8(r30)                # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 1
	addli r28, r28, 1
	setlt.sl r1, r[8:9], r[13:14]
	beq r1, zero, .LBB0_27
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
                                        #     Child Loop BB0_15 Depth 2
	div.s r1, r8, r25
	loadli.w r3,  36(r30)
	.loc	1 55 50 is_stmt 1               # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:55:50
	addli r14, zero, 8
	mod.s r22, r28, r10
	div.s r1, r1, r3
	.loc	1 90 25                         # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:90:25
	slli r15, r22, 13
	.loc	1 54 22                         # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:54:22
	div.s r3, r1, r11
	.loc	1 55 41                         # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:55:41
	slli r13, r3, 3
	.loc	1 54 22                         # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:54:22
	slli r3, r3, 6
	.loc	1 55 30                         # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:55:30
	sub.s r5, r12, r13
	.loc	1 54 22                         # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:54:22
	sub.s r3, r1, r3
	.loc	1 55 50                         # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:55:50
	min.s r5, r5, r14
	.loc	1 56 40                         # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:56:40
	mod.s r1, r1, r5
	.loc	1 57 30                         # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:57:30
	div.s r3, r3, r5
	slli r5, r22, 15
	.loc	1 56 34                         # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:56:34
	add.s r1, r1, r13
	.loc	1 97 15                         # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:97:15
	zext_int2long r[20:21], r3
	addli r13, zero, 7
	sll.d r[26:27], r[20:21], r13
	.loc	1 82 20                         # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:82:20
	lui r13, 24
	.loc	1 96 15                         # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:96:15
	zext_int2long r[23:24], r1
	.loc	1 82 20                         # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:82:20
	add.s r20, r15, r13
	bneq r2, r12, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 13
	xwait r10, 0
	lock zero, r17
	dma_cfg r12, r12, zero, 0
	sll.d r[15:16], r[23:24], r13
	load.d r[13:14], 0(r30)
	add.ul r[15:16], r[13:14], r[15:16]
	dma_cfg zero, r16, zero, 2
	dma_cfg r20, r15, r18, 3
	dma_cfg r18, r18, r11, 4
	dma_run zero
	unlock r17
	xsignal r19, 0
	.loc	1 90 25                         # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:90:25
	j .LBB0_12
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r19, .LBB0_17
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	xwait r19, 0
	xwait r6, 0
	lock zero, zero
	ds_cfg r10, zero, 0
	ds_cfg r11, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r11, zero, 13
	shuffle_batch r15, r20, r11, 1
	unlock zero
	xsignal r10, 0
	xsignal r17, 0
.LBB0_12:                               # %.thread5
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:0:0
	slli r3, r3, 7
	addli r13, zero, 896
	zext_int2long r[15:16], r13
	.loc	1 102 66 is_stmt 1              # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:102:66
	zext_int2long r[20:21], r3
	zext_int2long r[13:14], r18
	slli r3, r22, 9
	min.ul r[15:16], r[20:21], r[15:16]
	addli.d r[15:16], r[15:16], 128
	max.ul r[15:16], r[15:16], r[20:21]
	sub.sl r[15:16], r[15:16], r[20:21]
	min.ul r[20:21], r[15:16], r[13:14]
	lui r13, 42
	add.s r3, r3, r13
	beq r2, r12, .LBB0_5
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 107 18                        # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:107:18
	bneq r2, r6, .LBB0_21
# %bb.14:                               #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 13
	xwait r7, 0
	addli r1, zero, 0
	xwait r13, 0
	lock zero, r19
	lui r13, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r13, r13, zero, 0
	addli r13, zero, 127
	ew_cfg zero, r13, zero, 2
	ew_cfg r12, zero, zero, 3
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r13, r5, r1
	addli r1, r1, 512
	dsmadd r13, r13, r3, 0
	bneq r1, r4, .LBB0_15
# %bb.16:                               # %.thread31
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	unlock r19
	xsignal r1, 0
	addli r1, zero, 14
	j .LBB0_6
.LBB0_17:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 90 25                         # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:90:25
	slli r20, r22, 14
	.loc	1 87 20                         # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:87:20
	beq r2, r17, .LBB0_24
# %bb.18:                               #   in Loop: Header=BB0_8 Depth=1
	lui r13, 30
	add.s r15, r20, r13
	addli r13, zero, 7
	beq r2, r13, .LBB0_23
# %bb.19:                               #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 6
	bneq r2, r13, .LBB0_12
# %bb.20:                               #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 7
	sll.d r[20:21], r[26:27], r12
	xwait r13, 0
	load.d r[13:14], 8(r30)
	lock zero, r17
	dma_cfg r12, r12, zero, 0
	add.ul r[20:21], r[13:14], r[20:21]
	addli r13, zero, 256
	addli r14, zero, 2048
	dma_cfg zero, r21, zero, 2
	dma_cfg r15, r20, r13, 3
	dma_cfg r13, r14, r11, 4
	addli r13, zero, 6
	dma_run zero
	unlock r17
	xsignal r13, 0
	.loc	1 90 25                         # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:90:25
	j .LBB0_12
.LBB0_21:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 110 80                        # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:110:80
	bneq r2, zero, .LBB0_7
# %bb.22:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 80 is_stmt 0                # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:0:80
	slli r1, r1, 6
	zext_int2long r[13:14], zero
	addli r3, zero, 5
	addli r6, zero, 5
	sext_int2long r[15:16], r1
	.loc	1 110 80                        # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:110:80
	addli r1, zero, 17
	min.sl r[13:14], r[15:16], r[13:14]
	sll.d r[22:23], r[23:24], r1
	sll.d r[24:25], r[26:27], r12
	load.d r[26:27], 24(r30)
	addli r1, zero, 11
	addli.d r[13:14], r[13:14], 64
	xwait r1, 0
	lock zero, r3
	slli r1, r20, 2
	add.ul r[22:23], r[26:27], r[22:23]
	dma_cfg r12, zero, zero, 0
	max.sl r[13:14], r[13:14], r[15:16]
	dma_cfg zero, r12, zero, 1
	add.ul r[22:23], r[22:23], r[24:25]
	loadli.w r25,  40(r30)
	sub.sl r[13:14], r[13:14], r[15:16]
	zext_int2long r[15:16], r11
	dma_cfg r23, zero, zero, 2
	dma_cfg r22, r5, r1, 3
	min.sl r[13:14], r[13:14], r[15:16]
	addli r1, zero, 512
	addli r5, zero, 2048
	dma_cfg r5, r1, r13, 4
	addli r1, zero, 12
	dma_run zero
	unlock r3
	j .LBB0_6
.LBB0_23:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 90 25 is_stmt 1               # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:90:25
	addli r13, zero, 6
	xwait r13, 0
	addli r13, zero, 9
	xwait r13, 0
	lock zero, zero
	addli r13, zero, 7
	ds_cfg r10, zero, 0
	ds_cfg r18, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r18, zero, 13
	shuffle_coa r20, r15, r11, 2
	unlock zero
	xsignal r13, 0
	addli r13, zero, 8
	xsignal r13, 0
	j .LBB0_12
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=1
	addli r14, zero, 8
	xwait r17, 0
	addli r13, zero, 0
	addli r21, zero, 1
	addli r25, zero, 1
	xwait r14, 0
	addli r14, zero, 12
	xwait r14, 0
.LBB0_25:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r16, r13, 13
	slli r13, r13, 8
	lock zero, r21
	mm_cfg r11, r11, r11, 0
	or r16, r16, r20
	or r13, r13, r5
	mm_cfg r19, r17, r21, 2
	mm r13, r15, r16, 5
	andi r16, r25, 1
	addli r13, zero, 1
	addli r25, zero, 0
	unlock r21
	bneq r16, zero, .LBB0_25
# %bb.26:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:0:25
	loadli.w r25,  40(r30)
	.loc	1 90 25                         # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:90:25
	addli r13, zero, 9
	xsignal r6, 0
	xsignal r13, 0
	xsignal r7, 0
	j .LBB0_12
.LBB0_27:                               # %._crit_edge
	.loc	1 23 0 is_stmt 1                # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:23:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_29
# %bb.28:
	.loc	1 0 0 is_stmt 0                 # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:0:0
	addli r1, zero, 2
	.loc	1 23 0                          # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:23:0
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
	.loc	1 23 0 epilogue_begin           # cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py:23:0
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
.asciz	"cwzg6uuznylisy64gjvd5h5gdplkyiwc7bf7ozmn2psd3yzxx25c.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/wz" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
