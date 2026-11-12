	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/native-activation-jrt3e7ur" "ieee-multiply.mlir"
	.loc	1 2 0                           # ieee-multiply.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -136
	addli r30, sp, 72
	addli r1, zero, 1
.Ltmp0:
	.loc	1 26 11 prologue_end            # ieee-multiply.mlir:26:11
	core_id r18
	loadli.w r26,  40(r30)
	loadli.w r16,  36(r30)
	xsignal_mode_cfg r1
	beq r18, zero, .LBB0_2
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
	addli r2, zero, 5
	csr_set csr3, r1
	addli r1, zero, 3
	sync_group
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 7
	addli r2, zero, 11
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 13
	addli r2, zero, 15
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 17
	addli r2, zero, 19
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
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	bneq r18, r3, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, zero, 3
	addli r7, zero, 4
	load.d r[4:5], 8(r30)
	addli r8, zero, 8192
	addli r12, zero, 0
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	xwait r6, 0
	lock zero, r7
	addli r6, zero, 4096
	dma_cfg zero, r3, zero, 0
	dma_cfg zero, r5, zero, 2
	dma_cfg zero, r4, r6, 3
	dma_cfg r8, r6, r3, 4
	addli r3, zero, 2
	dma_run zero
	unlock r7
	xsignal r3, 0
	ble.s r2, r1, .LBB0_46
	j .LBB0_8
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r3, zero, 5
	bneq r18, r3, .LBB0_7
# %bb.6:
	addli r3, zero, 2
	addli r12, zero, 1
	xwait r3, 0
	ble.s r2, r1, .LBB0_46
	j .LBB0_8
.LBB0_7:
	addli r12, zero, 0
	ble.s r2, r1, .LBB0_46
.LBB0_8:                                # %.lr.ph
	addli r9, zero, 2047
	addli r19, zero, 1
	sext_int2long r[13:14], r1
	lui r1, 524287
	sext_int2long r[22:23], r2
	addli r15, zero, 5
	addli r17, zero, 2
	addli r27, zero, 8192
	addli r21, zero, 4
	addli r8, zero, 7
	addli r24, zero, 6
	addli r25, zero, 11
	addli r28, zero, 2048
	lui r20, 10
	storeli.w r12, -52(r30)                 # 4-byte Folded Spill
	zext_int2long r[3:4], r9
	ori r2, r1, 4095
	store.d r[22:23], -64(r30)              # 8-byte Folded Spill
	store.d r[3:4], -16(r30)                # 8-byte Folded Spill
	zext_int2long r[3:4], r19
	store.d r[3:4], -72(r30)                # 8-byte Folded Spill
	zext_int2long r[3:4], zero
	store.d r[3:4], -24(r30)                # 8-byte Folded Spill
	lui r3, 522240
	j .LBB0_11
.LBB0_9:                                #   in Loop: Header=BB0_11 Depth=1
	.loc	1 65 5 is_stmt 1                # ieee-multiply.mlir:65:5
	beq r18, zero, .LBB0_42
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	addli.d r[13:14], r[13:14], 1
	setlt.sl r1, r[13:14], r[22:23]
	beq r1, zero, .LBB0_46
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
	.loc	1 5 14 is_stmt 1                # ieee-multiply.mlir:5:14
	beq r12, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	xwait r15, 0
	lock zero, r17
	.loc	1 13 10                         # ieee-multiply.mlir:13:10
	addli r1, zero, 64
	lui r4, 260096
	.loc	1 5 14                          # ieee-multiply.mlir:5:14
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r9, zero, 2
	ew_cfg r19, zero, zero, 3
	ssaux r27, 0
	unlock r17
	xsignal r21, 0
	.loc	1 13 10                         # ieee-multiply.mlir:13:10
	xwait r8, 0
	lock zero, r17
	ew_cfg zero, zero, zero, 1
	ew_cfg r1, zero, zero, 3
	addli r1, zero, 31
	ew_cfg zero, r1, zero, 2
	lui r1, 270336
	ewcoeff_cfg zero, r1, zero, 0
	lui r1, 4
	ssaux r1, 2
	ewcoeff_cfg r4, r4, zero, 0
	dsmadd r1, r1, r1, 8
	unlock r17
	xsignal r24, 0
.LBB0_13:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 10 is_stmt 0                # ieee-multiply.mlir:0:10
	div.s r1, r13, r26
	.loc	1 23 11 is_stmt 1               # ieee-multiply.mlir:23:11
	load.d r[4:5], -16(r30)                 # 8-byte Folded Reload
	div.s r1, r1, r16
	.loc	1 63 11                         # ieee-multiply.mlir:63:11
	sext_int2long r[6:7], r1
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	min.sl r[4:5], r[6:7], r[4:5]
	addli.d r[4:5], r[4:5], 1
	max.sl r[4:5], r[4:5], r[6:7]
	sub.sl r[10:11], r[4:5], r[6:7]
	bneq r18, r19, .LBB0_37
# %bb.14:                               #   in Loop: Header=BB0_11 Depth=1
	load.d r[4:5], -24(r30)                 # 8-byte Folded Reload
	xwait r25, 0
	setlt.sl r4, r[4:5], r[10:11]
	bneq r4, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_11 Depth=1
	lock zero, r17
	lui r4, 6
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r9, zero, 2
	ew_cfg r19, zero, zero, 3
	ssaux r4, 0
	unlock r17
.LBB0_16:                               # %.thread5
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r4, zero, 8
	xsignal r4, 0
	.loc	1 29 23                         # ieee-multiply.mlir:29:23
	bneq r12, zero, .LBB0_40
.LBB0_17:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	beq r18, r17, .LBB0_41
.LBB0_18:                               #   in Loop: Header=BB0_11 Depth=1
	addli r4, zero, 3
	bneq r18, r4, .LBB0_44
# %bb.19:                               # %vector.ph
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	setlt.s r22, r1, r28
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	addli r1, zero, 10
	store.d r[6:7], -48(r30)                # 8-byte Folded Spill
	store.d r[10:11], -40(r30)              # 8-byte Folded Spill
	store.d r[13:14], -32(r30)              # 8-byte Folded Spill
	xwait r21, 0
	xwait r24, 0
	xwait r1, 0
	addli r1, zero, 12
	xwait r1, 0
	addli r1, zero, 15
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	load.d r[17:18], -24(r30)               # 8-byte Folded Reload
	j .LBB0_21
.LBB0_20:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	lui r8, 10
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	addli.d r[17:18], r[17:18], 4
	zext_int2long r[6:7], r28
	lui r20, 10
	ori r1, r8, 12
	setneq.d r4, r[17:18], r[6:7]
	ori r6, r8, 4
	add.s r7, r11, r8
	add.s r1, r11, r1
	add.s r6, r11, r6
	stores.w r25, 0(r7)
	stores.w r26, 0(r1)
	ori r1, r8, 8
	stores.w r5, 0(r6)
	add.s r1, r11, r1
	stores.w r16, 0(r1)
	beq r4, zero, .LBB0_43
.LBB0_21:                               # %vector.body
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	lui r5, 4
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	slli r11, r17, 2
	lui r13, 8
	ori r1, r5, 12
	add.s r4, r11, r5
	ori r14, r13, 4
	loads.w r12, 12(r11)
	ori r20, r13, 8
	addli r25, r11, 8200
	addli r26, r11, 8196
	loads.w r19, 8(r11)
	loads.w r6, 4(r11)
	add.s r1, r11, r1
	add.s r14, r11, r14
	add.s r20, r11, r20
	loads.w r8, 0(r4)
	loads.w r1, 0(r1)
	loads.w r21, 0(r14)
	addli r14, r11, 8204
	loads.w r27, 0(r20)
	addli r20, r11, 8192
	loads.w r20, 0(r20)
	.loc	1 37 24 is_stmt 1               # ieee-multiply.mlir:37:24
	and r12, r12, r2
	.loc	1 43 25                         # ieee-multiply.mlir:43:25
	seteq r24, r12, zero
	storeli.w r1, -4(r30)                   # 4-byte Folded Spill
	ori r1, r5, 8
	ori r5, r5, 4
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	add.s r5, r11, r5
	add.s r1, r11, r1
	loads.w r7, 0(r5)
	lui r5, 6
	loads.w r9, 0(r1)
	ori r1, r5, 12
	add.s r4, r11, r5
	add.s r1, r11, r1
	loads.w r15, 0(r4)
	loads.w r4, 0(r11)
	loads.w r10, 0(r1)
	ori r1, r5, 8
	ori r5, r5, 4
	add.s r1, r11, r1
	add.s r5, r11, r5
	loads.w r16, 0(r1)
	add.s r1, r11, r13
	loads.w r13, 0(r14)
	loads.w r5, 0(r5)
	loads.w r1, 0(r1)
	.loc	1 36 24                         # ieee-multiply.mlir:36:24
	and r10, r10, r2
	.loc	1 40 24                         # ieee-multiply.mlir:40:24
	seteq r23, r10, r3
	.loc	1 42 25                         # ieee-multiply.mlir:42:25
	seteq r28, r10, zero
	.loc	1 47 27                         # ieee-multiply.mlir:47:27
	max.u r14, r10, r12
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	loads.w r10, 0(r26)
	lui r26, 523264
	storeli.w r13, -8(r30)                  # 4-byte Folded Spill
	.loc	1 41 24                         # ieee-multiply.mlir:41:24
	seteq r13, r12, r3
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	loads.w r12, 0(r25)
	.loc	1 47 27                         # ieee-multiply.mlir:47:27
	setlt.u r14, r3, r14
	lui r25, 523264
	.loc	1 44 29                         # ieee-multiply.mlir:44:29
	and r23, r23, r24
	.loc	1 45 29                         # ieee-multiply.mlir:45:29
	and r13, r28, r13
	.loc	1 46 27                         # ieee-multiply.mlir:46:27
	or r13, r23, r13
	.loc	1 48 23                         # ieee-multiply.mlir:48:23
	or r13, r14, r13
	.loc	1 50 25                         # ieee-multiply.mlir:50:25
	bneq r13, zero, .LBB0_23
# %bb.22:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	lui r13, 8
	ori r13, r13, 12
	add.s r13, r11, r13
	loads.w r26, 0(r13)
.LBB0_23:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	and r13, r16, r2
	and r14, r19, r2
	seteq r16, r13, r3
	seteq r24, r13, zero
	seteq r19, r14, zero
	seteq r23, r14, r3
	max.u r13, r13, r14
	setlt.u r13, r3, r13
	and r14, r16, r19
	and r16, r24, r23
	or r14, r14, r16
	lui r16, 523264
	or r13, r13, r14
	.loc	1 50 25                         # ieee-multiply.mlir:50:25
	bneq r13, zero, .LBB0_25
# %bb.24:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r16, r27, 0
.LBB0_25:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	and r5, r5, r2
	and r6, r6, r2
	addli r28, zero, 2048
	seteq r13, r5, r3
	seteq r23, r5, zero
	seteq r14, r6, zero
	seteq r19, r6, r3
	max.u r5, r5, r6
	setlt.u r5, r3, r5
	and r6, r13, r14
	and r13, r23, r19
	or r6, r6, r13
	or r6, r5, r6
	lui r5, 523264
	.loc	1 50 25                         # ieee-multiply.mlir:50:25
	bneq r6, zero, .LBB0_27
# %bb.26:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r5, r21, 0
.LBB0_27:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	and r6, r15, r2
	and r4, r4, r2
	seteq r13, r6, r3
	seteq r14, r4, zero
	seteq r15, r4, r3
	seteq r19, r6, zero
	max.u r4, r6, r4
	setlt.u r4, r3, r4
	and r6, r13, r14
	and r13, r19, r15
	or r6, r6, r13
	or r4, r4, r6
	.loc	1 50 25                         # ieee-multiply.mlir:50:25
	bneq r4, zero, .LBB0_29
# %bb.28:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r25, r1, 0
.LBB0_29:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 15 10 is_stmt 1               # ieee-multiply.mlir:15:10
	setlt.s r1, r8, r28
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	and r1, r22, r1
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	bneq r1, zero, .LBB0_31
# %bb.30:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r25, r20, 0
.LBB0_31:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	setlt.s r1, r7, r28
	and r1, r22, r1
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	bneq r1, zero, .LBB0_33
# %bb.32:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r5, r10, 0
.LBB0_33:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	setlt.s r1, r9, r28
	and r1, r22, r1
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	bneq r1, zero, .LBB0_35
# %bb.34:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r16, r12, 0
.LBB0_35:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	loadli.w r1,  -4(r30)                   # 4-byte Folded Reload
	setlt.s r1, r1, r28
	and r1, r22, r1
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	bneq r1, zero, .LBB0_20
# %bb.36:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	loadli.w r26,  -8(r30)                  # 4-byte Folded Reload
	j .LBB0_20
.LBB0_37:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 23 11 is_stmt 1               # ieee-multiply.mlir:23:11
	bneq r18, r24, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_11 Depth=1
	addli r4, zero, 12
	addli.d r[24:25], r[6:7], 0
	addli.d r[8:9], r[22:23], 0
	addli.d r[22:23], r[10:11], 0
	addli r27, zero, 8
	sll.d r[4:5], r[6:7], r4
	load.d r[6:7], -72(r30)                 # 8-byte Folded Reload
	xwait r27, 0
	lock zero, r21
	lui r27, 6
	dma_cfg zero, r19, zero, 0
	min.sl r[6:7], r[10:11], r[6:7]
	load.d r[10:11], 0(r30)
	add.ul r[4:5], r[10:11], r[4:5]
	addli r10, zero, 4096
	dma_cfg zero, r5, zero, 2
	dma_cfg r27, r4, r10, 3
	addli r27, zero, 8192
	addli r4, zero, 9
	dma_cfg r27, r10, r6, 4
	addli.d r[6:7], r[24:25], 0
	addli.d r[10:11], r[22:23], 0
	addli.d r[22:23], r[8:9], 0
	addli r25, zero, 11
	addli r24, zero, 6
	addli r9, zero, 2047
	addli r8, zero, 7
	dma_run zero
	unlock r21
	xsignal r4, 0
	.loc	1 29 23                         # ieee-multiply.mlir:29:23
	beq r12, zero, .LBB0_17
	j .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_11 Depth=1
	beq r12, zero, .LBB0_17
.LBB0_40:                               #   in Loop: Header=BB0_11 Depth=1
	addli r4, zero, 9
	lui r5, 8
	xwait r4, 0
	addli r4, zero, 13
	xwait r4, 0
	lock zero, r17
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r4, 0
	lui r4, 6
	ew_cfg zero, r9, zero, 2
	ew_cfg r19, zero, zero, 3
	dsmul r5, r4, zero, 0
	addli r4, zero, 10
	unlock r17
	xsignal r4, 0
	addli r4, zero, 12
	xsignal r4, 0
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	bneq r18, r17, .LBB0_18
.LBB0_41:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	addli r1, zero, 14
	xwait r1, 0
	addli r1, zero, 17
	xwait r1, 0
	lock zero, zero
	lui r1, 12
	ds_cfg r17, zero, 0
	ds_cfg r19, zero, 1
	ds_cfg r28, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r19, zero, 13
	shuffle_coa r1, r20, r28, 4
	addli r1, zero, 15
	unlock zero
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	beq r12, zero, .LBB0_9
	j .LBB0_45
.LBB0_42:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 65 5                          # ieee-multiply.mlir:65:5
	sll.d r[4:5], r[6:7], r19
	addli r1, zero, 18
	load.d r[6:7], 16(r30)
	xwait r1, 0
	lock zero, r15
	lui r1, 76
	dma_cfg r19, zero, zero, 0
	add.ul r[4:5], r[6:7], r[4:5]
	dma_cfg zero, r19, zero, 1
	dma_cfg r5, zero, zero, 2
	dma_cfg r4, r1, r21, 3
	addli r1, zero, 19
	dma_cfg r17, r21, r10, 4
	dma_run zero
	unlock r15
	xsignal r1, 0
	j .LBB0_10
.LBB0_43:                               # %middle.block
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	addli r15, zero, 5
	addli r8, zero, 7
	addli r25, zero, 11
	.loc	1 55 11 is_stmt 1               # ieee-multiply.mlir:55:11
	addli r1, zero, 13
	mfence { sm }
	loadli.w r26,  40(r30)
	loadli.w r16,  36(r30)
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	core_id r18
	addli r17, zero, 2
	addli r9, zero, 2047
	addli r19, zero, 1
	addli r27, zero, 8192
	addli r21, zero, 4
	addli r24, zero, 6
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	xsignal r15, 0
	xsignal r8, 0
	xsignal r25, 0
	xsignal r1, 0
	addli r1, zero, 14
	xsignal r1, 0
	loadli.w r12,  -52(r30)                 # 4-byte Folded Reload
	load.d r[13:14], -32(r30)               # 8-byte Folded Reload
	load.d r[22:23], -64(r30)               # 8-byte Folded Reload
	load.d r[10:11], -40(r30)               # 8-byte Folded Reload
	load.d r[6:7], -48(r30)                 # 8-byte Folded Reload
.LBB0_44:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	beq r12, zero, .LBB0_9
.LBB0_45:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 16
	lui r4, 76
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	lock zero, r17
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	lui r1, 12
	ew_cfg r28, zero, zero, 3
	ssreduce r4, r1, 0
	addli r1, zero, 17
	unlock r17
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	j .LBB0_9
.LBB0_46:                               # %._crit_edge
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r1, zero, 3
	bneq r18, r1, .LBB0_48
# %bb.47:                               # %.thread6
	xsignal r1, 0
	.loc	1 2 3 is_stmt 1                 # ieee-multiply.mlir:2:3
	xsignal zero, 0
	j .LBB0_50
.LBB0_48:
	xsignal zero, 0
	bneq r18, zero, .LBB0_50
# %bb.49:
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
.LBB0_50:
	.loc	1 2 3 epilogue_begin            # ieee-multiply.mlir:2:3
	addli sp, sp, 72
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
	.long	136                             # 0x88
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/native-activation-jrt3e7ur" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
