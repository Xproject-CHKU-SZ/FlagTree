	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/native-activation-b7icq4qg" "ieee-multiply.mlir"
	.loc	1 2 0                           # ieee-multiply.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -120
	addli r30, sp, 56
	addli r1, zero, 1
.Ltmp0:
	.loc	1 23 11 prologue_end            # ieee-multiply.mlir:23:11
	core_id r8
	loadli.w r6,  40(r30)
	loadli.w r10,  36(r30)
	xsignal_mode_cfg r1
	beq r8, zero, .LBB0_2
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
	bneq r8, r3, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r9, zero, 3
	addli r7, zero, 4
	load.d r[4:5], 8(r30)
	addli r11, zero, 0
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	xwait r9, 0
	lock zero, r7
	addli r9, zero, 4096
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r5, zero, 2
	dma_cfg zero, r4, r9, 3
	dma_cfg r9, r9, r3, 4
	addli r3, zero, 2
	dma_run zero
	unlock r7
	xsignal r3, 0
	ble.s r2, r1, .LBB0_41
	j .LBB0_8
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r3, zero, 5
	bneq r8, r3, .LBB0_7
# %bb.6:
	addli r3, zero, 2
	addli r11, zero, 1
	xwait r3, 0
	ble.s r2, r1, .LBB0_41
	j .LBB0_8
.LBB0_7:
	addli r11, zero, 0
	ble.s r2, r1, .LBB0_41
.LBB0_8:                                # %.lr.ph
	sext_int2long r[3:4], r1
	addli r1, zero, 511
	sext_int2long r[12:13], r2
	addli r7, zero, 2
	addli r14, zero, 1023
	addli r15, zero, 1
	addli r16, zero, 4096
	addli r17, zero, 4
	addli r28, zero, 8192
	addli r23, zero, 6
	addli r5, zero, 1024
	lui r22, 4
	lui r27, 522240
	storeli.w r11, -36(r30)                 # 4-byte Folded Spill
	zext_int2long r[18:19], r1
	lui r1, 524287
	store.d r[3:4], -8(r30)                 # 8-byte Folded Spill
	addli r4, zero, 5
	store.d r[12:13], -48(r30)              # 8-byte Folded Spill
	ori r3, r1, 4095
	zext_int2long r[1:2], zero
	store.d r[18:19], -56(r30)              # 8-byte Folded Spill
	store.d r[1:2], -32(r30)                # 8-byte Folded Spill
	j .LBB0_11
.LBB0_9:                                #   in Loop: Header=BB0_11 Depth=1
	.loc	1 56 5 is_stmt 1                # ieee-multiply.mlir:56:5
	beq r8, zero, .LBB0_36
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	load.d r[1:2], -8(r30)                  # 8-byte Folded Reload
	addli.d r[1:2], r[1:2], 1
	store.d r[1:2], -8(r30)                 # 8-byte Folded Spill
	setlt.sl r1, r[1:2], r[12:13]
	beq r1, zero, .LBB0_41
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
	.loc	1 3 12 is_stmt 1                # ieee-multiply.mlir:3:12
	beq r11, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	xwait r4, 0
	lock zero, r7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r14, zero, 2
	ew_cfg r15, zero, zero, 3
	ssaux r16, 0
	unlock r7
	xsignal r17, 0
.LBB0_13:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 12 is_stmt 0                # ieee-multiply.mlir:0:12
	load.d r[1:2], -8(r30)                  # 8-byte Folded Reload
	div.s r1, r1, r6
	div.s r26, r1, r10
	.loc	1 55 11 is_stmt 1               # ieee-multiply.mlir:55:11
	sext_int2long r[20:21], r26
	.loc	1 20 11                         # ieee-multiply.mlir:20:11
	min.sl r[1:2], r[20:21], r[18:19]
	store.d r[20:21], -24(r30)              # 8-byte Folded Spill
	addli.d r[1:2], r[1:2], 1
	max.sl r[1:2], r[1:2], r[20:21]
	sub.sl r[20:21], r[1:2], r[20:21]
	bneq r8, r15, .LBB0_31
# %bb.14:                               #   in Loop: Header=BB0_11 Depth=1
	load.d r[1:2], -32(r30)                 # 8-byte Folded Reload
	addli.d r[24:25], r[20:21], 0
	setlt.sl r1, r[1:2], r[20:21]
	addli r2, zero, 9
	xwait r2, 0
	bneq r1, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_11 Depth=1
	lock zero, r7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r14, zero, 2
	ew_cfg r15, zero, zero, 3
	ssaux r28, 0
	unlock r7
.LBB0_16:                               # %.thread4
                                        #   in Loop: Header=BB0_11 Depth=1
	xsignal r23, 0
	addli.d r[20:21], r[24:25], 0
	store.d r[20:21], -16(r30)              # 8-byte Folded Spill
	.loc	1 24 23                         # ieee-multiply.mlir:24:23
	bneq r11, zero, .LBB0_34
.LBB0_17:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r8, r7, .LBB0_35
.LBB0_18:                               #   in Loop: Header=BB0_11 Depth=1
	addli r9, zero, 3
	bneq r8, r9, .LBB0_39
# %bb.19:                               # %vector.ph
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 8
	xwait r17, 0
	addli r6, zero, 512
	xwait r1, 0
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 13
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	load.d r[24:25], -32(r30)               # 8-byte Folded Reload
	j .LBB0_21
.LBB0_20:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	addli.d r[24:25], r[24:25], 4
	zext_int2long r[7:8], r5
	ori r1, r22, 12
	setneq.d r4, r[24:25], r[7:8]
	add.s r1, r2, r1
	ori r7, r22, 4
	stores.w r13, 0(r1)
	ori r1, r22, 8
	add.s r7, r2, r7
	add.s r1, r2, r1
	add.s r2, r2, r22
	stores.w r10, 0(r7)
	stores.w r15, 0(r1)
	stores.w r11, 0(r2)
	beq r4, zero, .LBB0_37
.LBB0_21:                               # %vector.body
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r2, r24, 2
	addli r1, r2, 8192
	addli r4, r2, 8204
	addli r7, r2, 8200
	addli r13, r2, 12296
	addli r16, r2, 4100
	addli r14, r2, 4104
	loads.w r20, 4(r2)
	loads.w r8, 0(r2)
	loads.w r11, 0(r4)
	loads.w r9, 0(r1)
	loads.w r1, 12(r2)
	loads.w r15, 0(r7)
	addli r7, r2, 12288
	addli r4, r2, 8196
	loads.w r21, 0(r13)
	addli r13, r2, 4096
	loads.w r16, 0(r16)
	loads.w r19, 0(r7)
	addli r7, r2, 12292
	loads.w r10, 0(r4)
	loads.w r4, 8(r2)
	loads.w r12, 0(r7)
	addli r7, r2, 4108
	loads.w r7, 0(r7)
	.loc	1 32 24                         # ieee-multiply.mlir:32:24
	and r1, r1, r3
	.loc	1 31 24                         # ieee-multiply.mlir:31:24
	and r11, r11, r3
	.loc	1 35 24                         # ieee-multiply.mlir:35:24
	seteq r17, r11, r27
	.loc	1 38 25                         # ieee-multiply.mlir:38:25
	seteq r18, r1, zero
	.loc	1 42 27                         # ieee-multiply.mlir:42:27
	max.u r28, r11, r1
	.loc	1 36 24                         # ieee-multiply.mlir:36:24
	seteq r23, r1, r27
	.loc	1 37 25                         # ieee-multiply.mlir:37:25
	seteq r11, r11, zero
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	loads.w r1, 0(r14)
	loads.w r14, 0(r13)
	.loc	1 42 27                         # ieee-multiply.mlir:42:27
	setlt.u r13, r27, r28
	.loc	1 39 29                         # ieee-multiply.mlir:39:29
	and r17, r17, r18
	.loc	1 40 29                         # ieee-multiply.mlir:40:29
	and r11, r11, r23
	.loc	1 41 27                         # ieee-multiply.mlir:41:27
	or r11, r17, r11
	.loc	1 43 23                         # ieee-multiply.mlir:43:23
	or r17, r13, r11
	lui r11, 523264
	lui r13, 523264
	.loc	1 45 25                         # ieee-multiply.mlir:45:25
	bneq r17, zero, .LBB0_23
# %bb.22:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	addli r13, r2, 12300
	loads.w r13, 0(r13)
.LBB0_23:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	and r15, r15, r3
	and r4, r4, r3
	seteq r17, r15, r27
	seteq r18, r4, zero
	seteq r23, r4, r27
	seteq r28, r15, zero
	max.u r4, r15, r4
	setlt.u r4, r27, r4
	and r15, r17, r18
	and r17, r28, r23
	or r15, r15, r17
	or r4, r4, r15
	lui r15, 523264
	.loc	1 45 25                         # ieee-multiply.mlir:45:25
	bneq r4, zero, .LBB0_25
# %bb.24:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r15, r21, 0
.LBB0_25:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	and r4, r10, r3
	and r10, r20, r3
	seteq r17, r4, r27
	seteq r21, r4, zero
	seteq r18, r10, zero
	seteq r20, r10, r27
	max.u r4, r4, r10
	setlt.u r4, r27, r4
	and r10, r17, r18
	and r17, r21, r20
	or r10, r10, r17
	or r4, r4, r10
	lui r10, 523264
	.loc	1 45 25                         # ieee-multiply.mlir:45:25
	bneq r4, zero, .LBB0_27
# %bb.26:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r10, r12, 0
.LBB0_27:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	and r4, r9, r3
	and r8, r8, r3
	seteq r9, r4, r27
	seteq r18, r4, zero
	seteq r12, r8, zero
	seteq r17, r8, r27
	max.u r4, r4, r8
	setlt.u r4, r27, r4
	and r8, r9, r12
	and r9, r18, r17
	or r8, r8, r9
	or r4, r4, r8
	.loc	1 45 25                         # ieee-multiply.mlir:45:25
	bneq r4, zero, .LBB0_29
# %bb.28:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r11, r19, 0
.LBB0_29:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 47 11 is_stmt 1               # ieee-multiply.mlir:47:11
	blt.s r26, r6, .LBB0_20
# %bb.30:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r11, r14, 0
	addli r10, r16, 0
	addli r15, r1, 0
	addli r13, r7, 0
	j .LBB0_20
.LBB0_31:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 20 11 is_stmt 1               # ieee-multiply.mlir:20:11
	bneq r8, r23, .LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_11 Depth=1
	load.d r[24:25], -24(r30)               # 8-byte Folded Reload
	addli r1, zero, 12
	xwait r23, 0
	lock zero, r17
	dma_cfg zero, zero, zero, 0
	sll.d r[1:2], r[24:25], r1
	addli r24, r6, 0
	addli r6, r10, 0
	load.d r[9:10], 0(r30)
	add.ul r[1:2], r[9:10], r[1:2]
	addli r10, r6, 0
	addli r6, r24, 0
	addli r9, zero, 7
	dma_cfg zero, r2, zero, 2
	dma_cfg r28, r1, r16, 3
	dma_cfg r16, r16, r20, 4
	dma_run zero
	unlock r17
	xsignal r9, 0
	store.d r[20:21], -16(r30)              # 8-byte Folded Spill
	.loc	1 24 23                         # ieee-multiply.mlir:24:23
	beq r11, zero, .LBB0_17
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 23 is_stmt 0                # ieee-multiply.mlir:0:23
	store.d r[20:21], -16(r30)              # 8-byte Folded Spill
	.loc	1 24 23                         # ieee-multiply.mlir:24:23
	beq r11, zero, .LBB0_17
.LBB0_34:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 7
	xwait r1, 0
	addli r1, zero, 11
	xwait r1, 0
	lock zero, r7
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 12288
	ew_cfg zero, r14, zero, 2
	ew_cfg r15, zero, zero, 3
	dsmul r1, r28, zero, 0
	addli r1, zero, 8
	unlock r7
	xsignal r1, 0
	addli r1, zero, 10
	xsignal r1, 0
	load.d r[20:21], -16(r30)               # 8-byte Folded Reload
	.loc	1 47 11 is_stmt 1               # ieee-multiply.mlir:47:11
	bneq r8, r7, .LBB0_18
.LBB0_35:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	addli r1, zero, 12
	lui r2, 5
	addli r5, zero, 1024
	xwait r1, 0
	addli r1, zero, 15
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 1024
	ds_cfg r7, zero, 0
	ds_cfg r15, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r15, zero, 13
	shuffle_coa r2, r22, r1, 4
	addli r1, zero, 13
	unlock zero
	xsignal r1, 0
	addli r1, zero, 14
	xsignal r1, 0
	j .LBB0_38
.LBB0_36:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 56 5                          # ieee-multiply.mlir:56:5
	load.d r[1:2], -24(r30)                 # 8-byte Folded Reload
	addli r26, zero, 16
	addli r24, r6, 0
	addli r6, r10, 0
	load.d r[9:10], 16(r30)
	xwait r26, 0
	lock zero, r4
	lui r26, 37
	sll.d r[1:2], r[1:2], r7
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r15, zero, 1
	add.ul r[1:2], r[9:10], r[1:2]
	addli r10, r6, 0
	addli r6, r24, 0
	dma_cfg r2, zero, zero, 2
	dma_cfg r1, r26, r17, 3
	addli r1, zero, 17
	dma_cfg r17, r17, r20, 4
	dma_run zero
	unlock r4
	xsignal r1, 0
	j .LBB0_10
.LBB0_37:                               # %middle.block
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	addli r4, zero, 5
	addli r1, zero, 9
	.loc	1 47 11 is_stmt 1               # ieee-multiply.mlir:47:11
	mfence { sm }
	loadli.w r9,  40(r30)
	loadli.w r10,  36(r30)
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	core_id r8
	addli r7, zero, 2
	addli r14, zero, 1023
	addli r15, zero, 1
	addli r16, zero, 4096
	addli r17, zero, 4
	addli r28, zero, 8192
	addli r23, zero, 6
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	xsignal r4, 0
	xsignal r1, 0
	addli r1, zero, 11
	addli r6, r9, 0
	xsignal r1, 0
	addli r1, zero, 12
	xsignal r1, 0
	loadli.w r11,  -36(r30)                 # 4-byte Folded Reload
	load.d r[12:13], -48(r30)               # 8-byte Folded Reload
	load.d r[18:19], -56(r30)               # 8-byte Folded Reload
.LBB0_38:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	load.d r[20:21], -16(r30)               # 8-byte Folded Reload
.LBB0_39:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 48 11 is_stmt 1               # ieee-multiply.mlir:48:11
	beq r11, zero, .LBB0_9
# %bb.40:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 14
	lui r2, 5
	xwait r1, 0
	addli r1, zero, 17
	xwait r1, 0
	lock zero, r7
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	lui r1, 37
	ew_cfg r5, zero, zero, 3
	ssreduce r1, r2, 0
	addli r1, zero, 15
	unlock r7
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	load.d r[20:21], -16(r30)               # 8-byte Folded Reload
	j .LBB0_9
.LBB0_41:                               # %._crit_edge
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r1, zero, 3
	bneq r8, r1, .LBB0_43
# %bb.42:                               # %.thread5
	xsignal r1, 0
	.loc	1 2 3 is_stmt 1                 # ieee-multiply.mlir:2:3
	xsignal zero, 0
	j .LBB0_45
.LBB0_43:
	xsignal zero, 0
	bneq r8, zero, .LBB0_45
# %bb.44:
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
.LBB0_45:
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/native-activation-b7icq4qg" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
