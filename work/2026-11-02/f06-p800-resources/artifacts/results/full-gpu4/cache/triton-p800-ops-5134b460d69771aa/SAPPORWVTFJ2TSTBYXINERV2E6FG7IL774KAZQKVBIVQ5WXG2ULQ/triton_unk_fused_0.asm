	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/native-activation-ttmyrs97" "ieee-multiply.mlir"
	.loc	1 2 0                           # ieee-multiply.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -120
	addli r30, sp, 56
	addli r1, zero, 1
.Ltmp0:
	.loc	1 24 11 prologue_end            # ieee-multiply.mlir:24:11
	core_id r10
	loadli.w r11,  40(r30)
	loadli.w r18,  36(r30)
	xsignal_mode_cfg r1
	beq r10, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r1, 1048575
	ori r1, r1, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	addli r2, zero, 2
	uni_sram_cfg r1, r1
	lui r3, 1048575
	lock zero, r2
	ew_cfg r1, zero, zero, 16
	ori r1, r3, 4095
	unlock r2
	addli r2, zero, 9
	csr_set csr3, r1
	addli r1, zero, 3
	sync_group
	xsignal r1, 0
	addli r1, zero, 5
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 11
	addli r2, zero, 13
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 15
	addli r2, zero, 17
	xsignal r1, 0
	xsignal r2, 0
.LBB0_3:
	loadli.w r1,  32(r30)
	loadli.w r2,  36(r30)
	load_param_i r4, 1
	loadli.w r3,  40(r30)
	mul.s r1, r2, r1
	addli r2, r4, 0
	fmac.s r2, r1, r3
	mul.s r5, r1, r3
	addli r3, zero, 1
	addli r2, r2, -1
	div.s r2, r2, r4
	load_param_i r4, 0
	mul.s r1, r2, r4
	fmac.s r2, r2, r4
	min.s r2, r2, r5
	.loc	1 24 11                         # ieee-multiply.mlir:24:11
	bneq r10, r3, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r7, zero, 3
	addli r8, zero, 4
	load.d r[5:6], 8(r30)
	addli r9, zero, 512
	addli r4, zero, 0
	.loc	1 24 11                         # ieee-multiply.mlir:24:11
	xwait r7, 0
	lock zero, r8
	addli r7, zero, 256
	dma_cfg zero, r3, zero, 0
	dma_cfg zero, r6, zero, 2
	dma_cfg zero, r5, r7, 3
	dma_cfg r9, r7, r3, 4
	addli r3, zero, 2
	dma_run zero
	unlock r8
	xsignal r3, 0
	ble.s r2, r1, .LBB0_40
	j .LBB0_8
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r3, zero, 5
	bneq r10, r3, .LBB0_7
# %bb.6:
	addli r3, zero, 2
	addli r4, zero, 1
	xwait r3, 0
	ble.s r2, r1, .LBB0_40
	j .LBB0_8
.LBB0_7:
	addli r4, zero, 0
	ble.s r2, r1, .LBB0_40
.LBB0_8:                                # %.lr.ph
	sext_int2long r[5:6], r1
	lui r1, 4
	addli r28, zero, 15
	sext_int2long r[7:8], r2
	addli r3, zero, 5
	addli r9, zero, 2
	addli r14, zero, 127
	addli r17, zero, 1
	addli r25, zero, 512
	addli r19, zero, 4
	addli r22, zero, 1024
	addli r23, zero, 6
	addli r26, zero, 8
	addli r27, zero, 128
	lui r16, 522240
	storeli.w r4, -44(r30)                  # 4-byte Folded Spill
	ori r1, r1, 2560
	store.d r[7:8], -56(r30)                # 8-byte Folded Spill
	storeli.w r1, -28(r30)                  # 4-byte Folded Spill
	lui r1, 524287
	ori r13, r1, 4095
	zext_int2long r[1:2], r28
	store.d r[1:2], -24(r30)                # 8-byte Folded Spill
	zext_int2long r[1:2], zero
	store.d r[1:2], -40(r30)                # 8-byte Folded Spill
	j .LBB0_11
.LBB0_9:                                #   in Loop: Header=BB0_11 Depth=1
	.loc	1 62 5 is_stmt 1                # ieee-multiply.mlir:62:5
	beq r10, zero, .LBB0_36
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	addli.d r[5:6], r[5:6], 1
	setlt.sl r1, r[5:6], r[7:8]
	beq r1, zero, .LBB0_40
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
	.loc	1 4 14 is_stmt 1                # ieee-multiply.mlir:4:14
	beq r4, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	xwait r3, 0
	lock zero, r9
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r14, zero, 2
	ew_cfg r17, zero, zero, 3
	ssaux r25, 0
	unlock r9
	xsignal r19, 0
.LBB0_13:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 14 is_stmt 0                # ieee-multiply.mlir:0:14
	div.s r1, r5, r11
	div.s r15, r1, r18
	.loc	1 21 11 is_stmt 1               # ieee-multiply.mlir:21:11
	load.d r[1:2], -24(r30)                 # 8-byte Folded Reload
	.loc	1 60 11                         # ieee-multiply.mlir:60:11
	sext_int2long r[20:21], r15
	.loc	1 21 11                         # ieee-multiply.mlir:21:11
	min.sl r[1:2], r[20:21], r[1:2]
	store.d r[20:21], -8(r30)               # 8-byte Folded Spill
	addli.d r[1:2], r[1:2], 1
	max.sl r[1:2], r[1:2], r[20:21]
	sub.sl r[20:21], r[1:2], r[20:21]
	store.d r[20:21], -16(r30)              # 8-byte Folded Spill
	bneq r10, r17, .LBB0_31
# %bb.14:                               #   in Loop: Header=BB0_11 Depth=1
	load.d r[1:2], -40(r30)                 # 8-byte Folded Reload
	setlt.sl r1, r[1:2], r[20:21]
	addli r2, zero, 9
	xwait r2, 0
	bneq r1, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_11 Depth=1
	lock zero, r9
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r14, zero, 2
	ew_cfg r17, zero, zero, 3
	ssaux r22, 0
	unlock r9
.LBB0_16:                               # %.thread4
                                        #   in Loop: Header=BB0_11 Depth=1
	xsignal r23, 0
	addli r25, zero, 512
	.loc	1 27 23                         # ieee-multiply.mlir:27:23
	bneq r4, zero, .LBB0_34
.LBB0_17:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	beq r10, r9, .LBB0_35
.LBB0_18:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 3
	bneq r10, r1, .LBB0_38
# %bb.19:                               # %vector.ph
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 10
	xwait r19, 0
	xwait r26, 0
	xwait r1, 0
	addli r1, zero, 13
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	load.d r[19:20], -40(r30)               # 8-byte Folded Reload
	j .LBB0_21
.LBB0_20:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	addli.d r[19:20], r[19:20], 4
	zext_int2long r[1:2], r27
	addli r4, r11, 2060
	addli r7, r11, 2052
	setneq.d r1, r[19:20], r[1:2]
	addli r2, r11, 2048
	stores.w r28, 0(r4)
	addli r4, r11, 2056
	stores.w r10, 0(r7)
	stores.w r3, 0(r4)
	stores.w r9, 0(r2)
	beq r1, zero, .LBB0_37
.LBB0_21:                               # %vector.body
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r11, r19, 2
	loads.w r8, 12(r11)
	loads.w r7, 1036(r11)
	loads.w r3, 1032(r11)
	loads.w r12, 1028(r11)
	loads.w r14, 1024(r11)
	loads.w r22, 8(r11)
	loads.w r10, 4(r11)
	loads.w r2, 0(r11)
	loads.w r18, 1536(r11)
	loads.w r1, 1540(r11)
	loads.w r21, 1544(r11)
	loads.w r25, 524(r11)
	loads.w r17, 520(r11)
	.loc	1 34 24                         # ieee-multiply.mlir:34:24
	and r9, r7, r13
	.loc	1 35 24                         # ieee-multiply.mlir:35:24
	and r8, r8, r13
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	loads.w r7, 516(r11)
	.loc	1 38 24                         # ieee-multiply.mlir:38:24
	seteq r28, r9, r16
	.loc	1 41 25                         # ieee-multiply.mlir:41:25
	seteq r4, r8, zero
	.loc	1 40 25                         # ieee-multiply.mlir:40:25
	seteq r24, r9, zero
	.loc	1 39 24                         # ieee-multiply.mlir:39:24
	seteq r23, r8, r16
	.loc	1 45 27                         # ieee-multiply.mlir:45:27
	max.u r9, r9, r8
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	loads.w r8, 512(r11)
	.loc	1 45 27                         # ieee-multiply.mlir:45:27
	setlt.u r9, r16, r9
	.loc	1 42 29                         # ieee-multiply.mlir:42:29
	and r4, r28, r4
	.loc	1 43 29                         # ieee-multiply.mlir:43:29
	and r23, r24, r23
	lui r28, 523264
	.loc	1 44 27                         # ieee-multiply.mlir:44:27
	or r4, r4, r23
	.loc	1 46 23                         # ieee-multiply.mlir:46:23
	or r4, r9, r4
	lui r9, 523264
	.loc	1 48 25                         # ieee-multiply.mlir:48:25
	bneq r4, zero, .LBB0_23
# %bb.22:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	loads.w r28, 1548(r11)
.LBB0_23:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	and r4, r22, r13
	and r3, r3, r13
	seteq r22, r3, r16
	seteq r26, r3, zero
	seteq r23, r4, zero
	seteq r24, r4, r16
	max.u r3, r3, r4
	setlt.u r3, r16, r3
	and r4, r22, r23
	and r22, r26, r24
	or r4, r4, r22
	or r4, r3, r4
	lui r3, 523264
	.loc	1 48 25                         # ieee-multiply.mlir:48:25
	bneq r4, zero, .LBB0_25
# %bb.24:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r3, r21, 0
.LBB0_25:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	and r4, r12, r13
	and r10, r10, r13
	seteq r12, r4, r16
	seteq r23, r4, zero
	seteq r21, r10, zero
	seteq r22, r10, r16
	max.u r4, r4, r10
	setlt.u r4, r16, r4
	and r10, r12, r21
	and r12, r23, r22
	or r10, r10, r12
	or r4, r4, r10
	lui r10, 523264
	.loc	1 48 25                         # ieee-multiply.mlir:48:25
	bneq r4, zero, .LBB0_27
# %bb.26:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r10, r1, 0
.LBB0_27:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	and r1, r14, r13
	and r2, r2, r13
	seteq r4, r1, r16
	seteq r21, r1, zero
	seteq r12, r2, zero
	seteq r14, r2, r16
	max.u r1, r1, r2
	setlt.u r1, r16, r1
	and r2, r4, r12
	and r4, r21, r14
	or r2, r2, r4
	or r1, r1, r2
	.loc	1 48 25                         # ieee-multiply.mlir:48:25
	bneq r1, zero, .LBB0_29
# %bb.28:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r9, r18, 0
.LBB0_29:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 52 11 is_stmt 1               # ieee-multiply.mlir:52:11
	addli r1, zero, 16
	blt.s r15, r1, .LBB0_20
# %bb.30:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r9, r8, 0
	addli r10, r7, 0
	addli r3, r17, 0
	addli r28, r25, 0
	j .LBB0_20
.LBB0_31:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 21 11 is_stmt 1               # ieee-multiply.mlir:21:11
	bneq r10, r23, .LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_11 Depth=1
	load.d r[1:2], -8(r30)                  # 8-byte Folded Reload
	addli r24, r18, 0
	addli r18, r11, 0
	load.d r[11:12], 0(r30)
	xwait r23, 0
	lock zero, r19
	dma_cfg zero, r17, zero, 0
	sll.d r[1:2], r[1:2], r26
	add.ul r[1:2], r[11:12], r[1:2]
	addli r11, zero, 256
	dma_cfg zero, r2, zero, 2
	dma_cfg r22, r1, r11, 3
	addli r1, zero, 7
	dma_cfg r25, r11, r20, 4
	addli r11, r18, 0
	addli r18, r24, 0
	dma_run zero
	unlock r19
	xsignal r1, 0
	.loc	1 27 23                         # ieee-multiply.mlir:27:23
	beq r4, zero, .LBB0_17
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_11 Depth=1
	beq r4, zero, .LBB0_17
.LBB0_34:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 7
	xwait r1, 0
	addli r1, zero, 11
	xwait r1, 0
	lock zero, r9
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 1536
	ew_cfg zero, r14, zero, 2
	ew_cfg r17, zero, zero, 3
	dsmul r1, r22, zero, 0
	addli r1, zero, 10
	unlock r9
	xsignal r26, 0
	xsignal r1, 0
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	bneq r10, r9, .LBB0_18
.LBB0_35:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 53 11                         # ieee-multiply.mlir:53:11
	addli r1, zero, 12
	addli r2, zero, 2048
	addli r15, zero, 2560
	addli r27, zero, 128
	xwait r1, 0
	xwait r28, 0
	lock zero, zero
	addli r1, zero, 128
	ds_cfg r9, zero, 0
	ds_cfg r17, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r17, zero, 13
	shuffle_coa r15, r2, r1, 4
	addli r1, zero, 13
	unlock zero
	xsignal r1, 0
	addli r1, zero, 14
	xsignal r1, 0
	beq r4, zero, .LBB0_9
	j .LBB0_39
.LBB0_36:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 62 5                          # ieee-multiply.mlir:62:5
	load.d r[1:2], -8(r30)                  # 8-byte Folded Reload
	addli r15, zero, 16
	xwait r15, 0
	addli r15, r11, 0
	load.d r[11:12], 16(r30)
	lock zero, r3
	sll.d r[1:2], r[1:2], r17
	dma_cfg r17, zero, zero, 0
	dma_cfg zero, r17, zero, 1
	add.ul r[1:2], r[11:12], r[1:2]
	addli r11, r15, 0
	dma_cfg r2, zero, zero, 2
	loadli.w r15,  -28(r30)                 # 4-byte Folded Reload
	dma_cfg r1, r15, r19, 3
	load.d r[1:2], -16(r30)                 # 8-byte Folded Reload
	dma_cfg r9, r19, r1, 4
	addli r1, zero, 17
	dma_run zero
	unlock r3
	xsignal r1, 0
	j .LBB0_10
.LBB0_37:                               # %middle.block
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	addli r3, zero, 5
	addli r1, zero, 9
	.loc	1 52 11 is_stmt 1               # ieee-multiply.mlir:52:11
	mfence { sm }
	loadli.w r12,  36(r30)
	loadli.w r11,  40(r30)
	.loc	1 24 11                         # ieee-multiply.mlir:24:11
	core_id r10
	addli r9, zero, 2
	addli r14, zero, 127
	addli r17, zero, 1
	addli r25, zero, 512
	addli r19, zero, 4
	addli r28, zero, 15
	addli r22, zero, 1024
	addli r23, zero, 6
	addli r26, zero, 8
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	xsignal r3, 0
	xsignal r1, 0
	addli r1, zero, 11
	addli r18, r12, 0
	xsignal r1, 0
	addli r1, zero, 12
	xsignal r1, 0
	loadli.w r4,  -44(r30)                  # 4-byte Folded Reload
	load.d r[7:8], -56(r30)                 # 8-byte Folded Reload
.LBB0_38:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 53 11                         # ieee-multiply.mlir:53:11
	beq r4, zero, .LBB0_9
.LBB0_39:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 14
	xwait r1, 0
	addli r1, zero, 17
	xwait r1, 0
	lock zero, r9
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 2560
	ew_cfg r27, zero, zero, 3
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	ssreduce r2, r1, 0
	addli r1, zero, 16
	unlock r9
	xsignal r28, 0
	xsignal r1, 0
	j .LBB0_9
.LBB0_40:                               # %._crit_edge
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r1, zero, 3
	bneq r10, r1, .LBB0_42
# %bb.41:                               # %.thread5
	xsignal r1, 0
	.loc	1 2 3 is_stmt 1                 # ieee-multiply.mlir:2:3
	xsignal zero, 0
	j .LBB0_44
.LBB0_42:
	xsignal zero, 0
	bneq r10, zero, .LBB0_44
# %bb.43:
	.loc	1 0 3 is_stmt 0                 # ieee-multiply.mlir:0:3
	addli r1, zero, 2
	.loc	1 2 3                           # ieee-multiply.mlir:2:3
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
.LBB0_44:
	.loc	1 2 3 epilogue_begin            # ieee-multiply.mlir:2:3
	addli sp, sp, 56
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
	.long	120                             # 0x78
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
.asciz	"ieee-multiply.mlir"            # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/native-activation-ttmyrs97" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
