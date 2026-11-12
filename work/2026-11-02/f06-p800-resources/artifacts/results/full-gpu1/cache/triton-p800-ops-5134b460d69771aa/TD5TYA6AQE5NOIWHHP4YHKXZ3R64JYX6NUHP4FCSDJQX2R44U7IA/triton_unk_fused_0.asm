	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/native-activation-0nhb4k_i" "ieee-multiply.mlir"
	.loc	1 2 0                           # ieee-multiply.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -120
	addli r30, sp, 56
	addli r1, zero, 1
.Ltmp0:
	.loc	1 23 11 prologue_end            # ieee-multiply.mlir:23:11
	core_id r9
	loadli.w r26,  40(r30)
	loadli.w r11,  36(r30)
	xsignal_mode_cfg r1
	beq r9, zero, .LBB0_2
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
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	bneq r9, r3, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r7, zero, 3
	addli r8, zero, 4
	load.d r[5:6], 8(r30)
	addli r4, zero, 0
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	xwait r7, 0
	lock zero, r8
	addli r7, zero, 1024
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r6, zero, 2
	dma_cfg zero, r5, r7, 3
	dma_cfg r7, r7, r3, 4
	addli r3, zero, 2
	dma_run zero
	unlock r8
	xsignal r3, 0
	ble.s r2, r1, .LBB0_40
	j .LBB0_8
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r3, zero, 5
	bneq r9, r3, .LBB0_7
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
	lui r1, 9
	sext_int2long r[7:8], r2
	addli r2, zero, 31
	addli r3, zero, 5
	addli r12, zero, 2
	addli r13, zero, 255
	addli r14, zero, 1
	addli r15, zero, 1024
	addli r17, zero, 4
	addli r24, zero, 9
	addli r20, zero, 2048
	addli r21, zero, 6
	addli r18, zero, 8
	addli r25, zero, 10
	addli r27, zero, 256
	lui r16, 522240
	storeli.w r4, -44(r30)                  # 4-byte Folded Spill
	ori r1, r1, 1024
	store.d r[7:8], -56(r30)                # 8-byte Folded Spill
	storeli.w r1, -28(r30)                  # 4-byte Folded Spill
	lui r1, 524287
	ori r19, r1, 4095
	zext_int2long r[1:2], r2
	store.d r[1:2], -24(r30)                # 8-byte Folded Spill
	zext_int2long r[1:2], zero
	store.d r[1:2], -40(r30)                # 8-byte Folded Spill
	j .LBB0_11
.LBB0_9:                                #   in Loop: Header=BB0_11 Depth=1
	.loc	1 56 5 is_stmt 1                # ieee-multiply.mlir:56:5
	beq r9, zero, .LBB0_36
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	addli.d r[5:6], r[5:6], 1
	setlt.sl r1, r[5:6], r[7:8]
	beq r1, zero, .LBB0_40
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
	.loc	1 3 12 is_stmt 1                # ieee-multiply.mlir:3:12
	beq r4, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	xwait r3, 0
	lock zero, r12
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r13, zero, 2
	ew_cfg r14, zero, zero, 3
	ssaux r15, 0
	unlock r12
	xsignal r17, 0
.LBB0_13:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 12 is_stmt 0                # ieee-multiply.mlir:0:12
	div.s r1, r5, r26
	div.s r28, r1, r11
	.loc	1 20 11 is_stmt 1               # ieee-multiply.mlir:20:11
	load.d r[1:2], -24(r30)                 # 8-byte Folded Reload
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	sext_int2long r[22:23], r28
	.loc	1 20 11                         # ieee-multiply.mlir:20:11
	min.sl r[1:2], r[22:23], r[1:2]
	store.d r[22:23], -8(r30)               # 8-byte Folded Spill
	addli.d r[1:2], r[1:2], 1
	max.sl r[1:2], r[1:2], r[22:23]
	sub.sl r[22:23], r[1:2], r[22:23]
	store.d r[22:23], -16(r30)              # 8-byte Folded Spill
	bneq r9, r14, .LBB0_31
# %bb.14:                               #   in Loop: Header=BB0_11 Depth=1
	load.d r[1:2], -40(r30)                 # 8-byte Folded Reload
	xwait r24, 0
	setlt.sl r1, r[1:2], r[22:23]
	bneq r1, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_11 Depth=1
	lock zero, r12
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r13, zero, 2
	ew_cfg r14, zero, zero, 3
	ssaux r20, 0
	unlock r12
.LBB0_16:                               # %.thread4
                                        #   in Loop: Header=BB0_11 Depth=1
	xsignal r21, 0
	.loc	1 24 23                         # ieee-multiply.mlir:24:23
	bneq r4, zero, .LBB0_34
.LBB0_17:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r9, r12, .LBB0_35
.LBB0_18:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 3
	bneq r9, r1, .LBB0_38
# %bb.19:                               # %vector.ph
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 13
	xwait r17, 0
	xwait r18, 0
	xwait r25, 0
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	load.d r[22:23], -40(r30)               # 8-byte Folded Reload
	j .LBB0_21
.LBB0_20:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	addli.d r[22:23], r[22:23], 4
	zext_int2long r[7:8], r27
	addli r2, r13, 4108
	setneq.d r4, r[22:23], r[7:8]
	addli r7, r13, 4096
	stores.w r24, 0(r2)
	addli r2, r13, 4104
	addli r8, r13, 4100
	stores.w r3, 0(r2)
	stores.w r1, 0(r8)
	stores.w r11, 0(r7)
	beq r4, zero, .LBB0_37
.LBB0_21:                               # %vector.body
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r13, r22, 2
	addli r1, r13, 2060
	loads.w r11, 12(r13)
	addli r14, r13, 3080
	addli r3, r13, 2056
	addli r9, r13, 3072
	addli r12, r13, 3076
	addli r2, r13, 2048
	loads.w r21, 8(r13)
	loads.w r10, 4(r13)
	loads.w r25, 1036(r13)
	loads.w r15, 1032(r13)
	loads.w r7, 0(r1)
	loads.w r20, 0(r14)
	addli r1, r13, 2052
	loads.w r8, 0(r2)
	loads.w r3, 0(r3)
	loads.w r2, 0(r13)
	loads.w r9, 0(r9)
	loads.w r12, 0(r12)
	loads.w r1, 0(r1)
	.loc	1 32 24                         # ieee-multiply.mlir:32:24
	and r11, r11, r19
	.loc	1 31 24                         # ieee-multiply.mlir:31:24
	and r14, r7, r19
	.loc	1 38 25                         # ieee-multiply.mlir:38:25
	seteq r4, r11, zero
	.loc	1 36 24                         # ieee-multiply.mlir:36:24
	seteq r17, r11, r16
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	loads.w r7, 1028(r13)
	.loc	1 35 24                         # ieee-multiply.mlir:35:24
	seteq r24, r14, r16
	.loc	1 37 25                         # ieee-multiply.mlir:37:25
	seteq r18, r14, zero
	.loc	1 42 27                         # ieee-multiply.mlir:42:27
	max.u r11, r14, r11
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	loads.w r14, 1024(r13)
	.loc	1 42 27                         # ieee-multiply.mlir:42:27
	setlt.u r11, r16, r11
	.loc	1 39 29                         # ieee-multiply.mlir:39:29
	and r4, r24, r4
	.loc	1 40 29                         # ieee-multiply.mlir:40:29
	and r17, r18, r17
	lui r24, 523264
	.loc	1 41 27                         # ieee-multiply.mlir:41:27
	or r4, r4, r17
	.loc	1 43 23                         # ieee-multiply.mlir:43:23
	or r4, r11, r4
	lui r11, 523264
	.loc	1 45 25                         # ieee-multiply.mlir:45:25
	bneq r4, zero, .LBB0_23
# %bb.22:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	addli r4, r13, 3084
	loads.w r24, 0(r4)
.LBB0_23:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	and r4, r21, r19
	and r3, r3, r19
	seteq r17, r3, r16
	seteq r26, r3, zero
	seteq r18, r4, zero
	seteq r21, r4, r16
	max.u r3, r3, r4
	setlt.u r3, r16, r3
	and r4, r17, r18
	and r17, r26, r21
	or r4, r4, r17
	or r4, r3, r4
	lui r3, 523264
	.loc	1 45 25                         # ieee-multiply.mlir:45:25
	bneq r4, zero, .LBB0_25
# %bb.24:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r3, r20, 0
.LBB0_25:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	and r4, r10, r19
	and r1, r1, r19
	seteq r10, r1, r16
	seteq r20, r1, zero
	seteq r17, r4, zero
	seteq r18, r4, r16
	max.u r1, r1, r4
	setlt.u r1, r16, r1
	and r4, r10, r17
	and r10, r20, r18
	or r4, r4, r10
	or r4, r1, r4
	lui r1, 523264
	.loc	1 45 25                         # ieee-multiply.mlir:45:25
	bneq r4, zero, .LBB0_27
# %bb.26:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r1, r12, 0
.LBB0_27:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	and r4, r8, r19
	and r2, r2, r19
	seteq r8, r4, r16
	seteq r10, r2, zero
	seteq r12, r2, r16
	seteq r17, r4, zero
	max.u r2, r4, r2
	setlt.u r2, r16, r2
	and r4, r8, r10
	and r8, r17, r12
	or r4, r4, r8
	or r2, r2, r4
	.loc	1 45 25                         # ieee-multiply.mlir:45:25
	bneq r2, zero, .LBB0_29
# %bb.28:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r11, r9, 0
.LBB0_29:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 47 11 is_stmt 1               # ieee-multiply.mlir:47:11
	addli r2, zero, 32
	blt.s r28, r2, .LBB0_20
# %bb.30:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r11, r14, 0
	addli r1, r7, 0
	addli r3, r15, 0
	addli r24, r25, 0
	j .LBB0_20
.LBB0_31:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 20 11 is_stmt 1               # ieee-multiply.mlir:20:11
	bneq r9, r21, .LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_11 Depth=1
	load.d r[1:2], -8(r30)                  # 8-byte Folded Reload
	addli.d r[23:24], r[22:23], 0
	addli r22, r11, 0
	load.d r[10:11], 0(r30)
	xwait r21, 0
	lock zero, r17
	dma_cfg zero, zero, zero, 0
	sll.d r[1:2], r[1:2], r25
	add.ul r[1:2], r[10:11], r[1:2]
	addli r11, r22, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r20, r1, r15, 3
	addli r1, zero, 7
	dma_cfg r15, r15, r23, 4
	addli r24, zero, 9
	dma_run zero
	unlock r17
	xsignal r1, 0
	.loc	1 24 23                         # ieee-multiply.mlir:24:23
	beq r4, zero, .LBB0_17
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_11 Depth=1
	beq r4, zero, .LBB0_17
.LBB0_34:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 7
	xwait r1, 0
	addli r1, zero, 11
	xwait r1, 0
	lock zero, r12
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 3072
	ew_cfg zero, r13, zero, 2
	ew_cfg r14, zero, zero, 3
	dsmul r1, r20, zero, 0
	unlock r12
	xsignal r18, 0
	xsignal r25, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r9, r12, .LBB0_18
.LBB0_35:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	addli r1, zero, 12
	addli r2, zero, 5120
	xwait r1, 0
	addli r1, zero, 15
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 4096
	ds_cfg r12, zero, 0
	ds_cfg r14, zero, 1
	ds_cfg r27, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r14, zero, 13
	shuffle_coa r2, r1, r27, 4
	addli r1, zero, 13
	unlock zero
	xsignal r1, 0
	addli r1, zero, 14
	xsignal r1, 0
	beq r4, zero, .LBB0_9
	j .LBB0_39
.LBB0_36:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 56 5                          # ieee-multiply.mlir:56:5
	load.d r[1:2], -8(r30)                  # 8-byte Folded Reload
	addli r28, r26, 0
	addli r26, zero, 16
	addli r22, r11, 0
	load.d r[10:11], 16(r30)
	xwait r26, 0
	lock zero, r3
	sll.d r[1:2], r[1:2], r12
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r14, zero, 1
	add.ul r[1:2], r[10:11], r[1:2]
	addli r11, r22, 0
	dma_cfg r2, zero, zero, 2
	loadli.w r26,  -28(r30)                 # 4-byte Folded Reload
	dma_cfg r1, r26, r17, 3
	addli r26, r28, 0
	load.d r[1:2], -16(r30)                 # 8-byte Folded Reload
	dma_cfg r17, r17, r1, 4
	addli r1, zero, 17
	dma_run zero
	unlock r3
	xsignal r1, 0
	j .LBB0_10
.LBB0_37:                               # %middle.block
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	addli r3, zero, 5
	addli r24, zero, 9
	addli r1, zero, 11
	.loc	1 47 11 is_stmt 1               # ieee-multiply.mlir:47:11
	mfence { sm }
	loadli.w r10,  40(r30)
	loadli.w r11,  36(r30)
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	core_id r9
	addli r12, zero, 2
	addli r13, zero, 255
	addli r14, zero, 1
	addli r15, zero, 1024
	addli r17, zero, 4
	addli r20, zero, 2048
	addli r21, zero, 6
	addli r18, zero, 8
	addli r25, zero, 10
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	xsignal r3, 0
	xsignal r24, 0
	xsignal r1, 0
	addli r1, zero, 12
	addli r26, r10, 0
	xsignal r1, 0
	loadli.w r4,  -44(r30)                  # 4-byte Folded Reload
	load.d r[7:8], -56(r30)                 # 8-byte Folded Reload
.LBB0_38:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	beq r4, zero, .LBB0_9
.LBB0_39:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 14
	xwait r1, 0
	addli r1, zero, 17
	xwait r1, 0
	lock zero, r12
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 5120
	ew_cfg r27, zero, zero, 3
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	ssreduce r2, r1, 0
	addli r1, zero, 15
	unlock r12
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	j .LBB0_9
.LBB0_40:                               # %._crit_edge
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r1, zero, 3
	bneq r9, r1, .LBB0_42
# %bb.41:                               # %.thread5
	xsignal r1, 0
	.loc	1 2 3 is_stmt 1                 # ieee-multiply.mlir:2:3
	xsignal zero, 0
	j .LBB0_44
.LBB0_42:
	xsignal zero, 0
	bneq r9, zero, .LBB0_44
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/native-activation-0nhb4k_i" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
