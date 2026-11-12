	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/native-activation-2tc3bv6n" "ieee-multiply.mlir"
	.loc	1 2 0                           # ieee-multiply.mlir:2:0
	.cfi_startproc
# %bb.0:
	addli sp, sp, -192
	addli r1, zero, 1
.Ltmp0:
	.loc	1 29 11 prologue_end            # ieee-multiply.mlir:29:11
	core_id r15
	addli r30, sp, 128
	xsignal_mode_cfg r1
	beq r15, zero, .LBB0_2
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
	addli r2, zero, 6
	csr_set csr3, r1
	addli r1, zero, 3
	sync_group
	xsignal r1, 0
	addli r1, zero, 5
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 9
	addli r2, zero, 12
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 17
	addli r2, zero, 25
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 31
	addli r2, zero, 37
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 41
	addli r2, zero, 39
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 45
	addli r2, zero, 43
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 48
	addli r2, zero, 52
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 54
	addli r2, zero, 56
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 59
	addli r2, zero, 62
	xsignal r1, 0
	xsignal r2, 0
.LBB0_3:
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	load_param_i r4, 1
	loadli.w r3,  48(r30)
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
	.loc	1 29 11                         # ieee-multiply.mlir:29:11
	bneq r15, r3, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, zero, 3
	addli r7, zero, 4
	load.d r[4:5], 16(r30)
	addli r8, zero, 512
	addli r9, zero, 0
	.loc	1 29 11                         # ieee-multiply.mlir:29:11
	xwait r6, 0
	lock zero, r7
	addli r6, zero, 256
	dma_cfg zero, r3, zero, 0
	dma_cfg zero, r5, zero, 2
	dma_cfg zero, r4, r6, 3
	dma_cfg r8, r6, r3, 4
	addli r3, zero, 2
	dma_run zero
	unlock r7
	xsignal r3, 0
	ble.s r2, r1, .LBB0_119
	j .LBB0_9
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r3, zero, 5
	.loc	1 26 11 is_stmt 1               # ieee-multiply.mlir:26:11
	beq r15, r3, .LBB0_118
# %bb.6:
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r9, zero, 0
	addli r3, zero, 6
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	bneq r15, r3, .LBB0_8
# %bb.7:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r3, zero, 5
	load.d r[4:5], 8(r30)
	addli r6, zero, 1
	addli r7, zero, 256
	addli r8, zero, 512
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	xwait r3, 0
	addli r3, zero, 4
	lock zero, r3
	dma_cfg zero, r6, zero, 0
	dma_cfg zero, r5, zero, 2
	dma_cfg r8, r4, r7, 3
	dma_cfg r8, r7, r6, 4
	dma_run zero
	unlock r3
	xsignal r3, 0
.LBB0_8:                                # %.critedge2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	ble.s r2, r1, .LBB0_119
.LBB0_9:                                # %.lr.ph
	sext_int2long r[3:4], r1
	sext_int2long r[1:2], r2
	addli r6, zero, 15
	lui r12, 4
	addli r5, zero, 127
	lui r21, 13
	addli r19, zero, 2
	addli r10, zero, 1
	addli r11, zero, 3
	addli r20, zero, 128
	lui r23, 522240
	storeli.w r9, -20(r30)                  # 4-byte Folded Spill
	store.d r[1:2], -72(r30)                # 8-byte Folded Spill
	lui r1, 239665
	lui r2, 524287
	zext_int2long r[13:14], r5
	ori r1, r1, 623
	ori r22, r2, 4095
	store.d r[13:14], -32(r30)              # 8-byte Folded Spill
	storeli.w r1, -96(r30)                  # 4-byte Folded Spill
	zext_int2long r[1:2], zero
	store.d r[1:2], -80(r30)                # 8-byte Folded Spill
	zext_int2long r[1:2], r6
	store.d r[1:2], -88(r30)                # 8-byte Folded Spill
	ori r1, r12, 2816
	storeli.w r1, -36(r30)                  # 4-byte Folded Spill
	lui r1, 12
	ori r1, r1, 3712
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	ori r1, r21, 128
	storeli.w r1, -16(r30)                  # 4-byte Folded Spill
	j .LBB0_12
.LBB0_10:                               # %.thread43
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 103 11 is_stmt 1              # ieee-multiply.mlir:103:11
	addli r1, zero, 24
	mfence { sm }
	addli r19, zero, 2
	addli r10, zero, 1
	addli r11, zero, 3
	addli r20, zero, 128
	lui r12, 4
	.loc	1 29 11                         # ieee-multiply.mlir:29:11
	core_id r15
	.loc	1 103 11                        # ieee-multiply.mlir:103:11
	xsignal r1, 0
	addli r1, zero, 59
	xsignal r1, 0
	addli r1, zero, 62
	xsignal r1, 0
	loadli.w r9,  -20(r30)                  # 4-byte Folded Reload
	load.d r[13:14], -32(r30)               # 8-byte Folded Reload
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	load.d r[3:4], -48(r30)                 # 8-byte Folded Reload
	load.d r[1:2], -72(r30)                 # 8-byte Folded Reload
	addli.d r[3:4], r[3:4], 1
	setlt.sl r1, r[3:4], r[1:2]
	beq r1, zero, .LBB0_119
.LBB0_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_74 Depth 2
                                        #     Child Loop BB0_56 Depth 2
                                        #     Child Loop BB0_104 Depth 2
                                        #     Child Loop BB0_113 Depth 2
                                        #     Child Loop BB0_94 Depth 2
	.loc	1 5 14 is_stmt 1                # ieee-multiply.mlir:5:14
	beq r9, zero, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 6
	xwait r1, 0
	lock zero, r19
	lui r1, 274432
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 31
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1024
	ew_cfg r10, zero, zero, 3
	ssaux r1, 0
	.loc	1 6 14                          # ieee-multiply.mlir:6:14
	addli r1, zero, 9
	.loc	1 5 14                          # ieee-multiply.mlir:5:14
	unlock r19
	.loc	1 6 14                          # ieee-multiply.mlir:6:14
	xwait r1, 0
	lock zero, r19
	addli r1, zero, 127
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1152
	ew_cfg r10, zero, zero, 3
	ssaux r1, 0
	addli r1, zero, 7
	unlock r19
	xsignal r1, 0
.LBB0_14:                               # %.critedge4
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 14 is_stmt 0                # ieee-multiply.mlir:0:14
	loadli.w r1,  48(r30)
	loadli.w r2,  44(r30)
	store.d r[3:4], -48(r30)                # 8-byte Folded Spill
	div.s r1, r3, r1
	.loc	1 17 10 is_stmt 1               # ieee-multiply.mlir:17:10
	addli r4, zero, 7
	div.s r3, r1, r2
	.loc	1 105 11                        # ieee-multiply.mlir:105:11
	sext_int2long r[1:2], r3
	.loc	1 17 10                         # ieee-multiply.mlir:17:10
	sll.d r[4:5], r[1:2], r4
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	store.d r[4:5], -56(r30)                # 8-byte Folded Spill
	bneq r15, r11, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=1
	addli r4, zero, 12
	xwait r4, 0
	xfence
	setlti r4, r3, 16
	mfence { lm, sm, gm }
	load.d r[5:6], -80(r30)                 # 8-byte Folded Reload
.LBB0_16:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	setlt.ul r7, r[5:6], r[13:14]
	addli r8, r5, 1664
	addli.d r[5:6], r[5:6], 1
	stores.b r4, 0(r8)
	bneq r7, zero, .LBB0_16
# %bb.17:                               # %.thread40
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	load.d r[4:5], -88(r30)                 # 8-byte Folded Reload
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	mfence { sm }
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	min.sl r[4:5], r[1:2], r[4:5]
	addli.d r[4:5], r[4:5], 1
	max.sl r[1:2], r[4:5], r[1:2]
	sub.s r6, r1, r3
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	addli r1, zero, 10
	j .LBB0_22
.LBB0_18:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	load.d r[3:4], -88(r30)                 # 8-byte Folded Reload
	min.sl r[3:4], r[1:2], r[3:4]
	addli.d r[3:4], r[3:4], 1
	max.sl r[3:4], r[3:4], r[1:2]
	sub.sl r[6:7], r[3:4], r[1:2]
	bneq r15, r10, .LBB0_23
# %bb.19:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	zext_int2long r[1:2], zero
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	setlt.sl r1, r[1:2], r[6:7]
	addli r2, zero, 17
	xwait r2, 0
	bneq r1, zero, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_12 Depth=1
	lock zero, r19
	addli r1, zero, 127
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1792
	ew_cfg r10, zero, zero, 3
	ssaux r1, 0
	unlock r19
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=1
	load.d r[1:2], -56(r30)                 # 8-byte Folded Reload
	addli r5, zero, 13
	load.d r[3:4], 0(r30)
	xsignal r5, 0
	xwait r5, 0
	addli r5, zero, 4
	sll.d r[1:2], r[1:2], r10
	lock zero, r5
	add.ul r[1:2], r[3:4], r[1:2]
	dma_cfg zero, r10, zero, 0
	addli r3, zero, 1792
	addli r4, zero, 256
	dma_cfg zero, r2, zero, 2
	dma_cfg r3, r1, r4, 3
	addli r1, zero, 512
	dma_cfg r1, r4, r6, 4
	addli r1, zero, 14
	dma_run zero
	unlock r5
.LBB0_22:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 0                           # ieee-multiply.mlir:0:0
	xsignal r1, 0
.LBB0_23:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 33 11 is_stmt 1               # ieee-multiply.mlir:33:11
	beq r9, zero, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 14
	addli r2, zero, 1792
	xwait r1, 0
	lock zero, r19
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 127
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 512
	ew_cfg r10, zero, zero, 3
	dsmadd r2, r2, r1, 0
	addli r1, zero, 15
	unlock r19
	xsignal r1, 0
.LBB0_25:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	zext_int2long r[1:2], r20
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	store.d r[1:2], -8(r30)                 # 8-byte Folded Spill
	.loc	1 36 11 is_stmt 1               # ieee-multiply.mlir:36:11
	bneq r15, r11, .LBB0_44
# %bb.26:                               # %vector.ph70
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 7
	xwait r1, 0
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 15
	xwait r1, 0
	addli r1, zero, 25
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	load.d r[1:2], -80(r30)                 # 8-byte Folded Reload
	j .LBB0_28
.LBB0_27:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	addli r13, r3, 2316
	addli.d r[1:2], r[1:2], 8
	addli r12, r3, 2304
	addli r14, r3, 2320
	stores.w r11, 0(r13)
	addli r11, r3, 2312
	addli r13, r3, 2308
	stores.w r10, 0(r12)
	stores.w r4, 0(r14)
	stores.w r9, 0(r11)
	setneq.d r9, r[1:2], r[18:19]
	stores.w r8, 0(r13)
	addli r8, r3, 2332
	stores.w r7, 0(r8)
	addli r7, r3, 2328
	addli r3, r3, 2324
	stores.w r6, 0(r7)
	stores.w r5, 0(r3)
	beq r9, zero, .LBB0_46
.LBB0_28:                               # %vector.body71
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r3, r1, 2
	loads.bu r10, 1664(r1)
	loads.bu r25, 1665(r1)
	loads.bu r19, 1666(r1)
	loads.bu r18, 1667(r1)
	loads.bu r16, 1668(r1)
	loads.bu r14, 1669(r1)
	loads.bu r13, 1670(r1)
	loads.bu r12, 1671(r1)
	loads.w r11, 1804(r3)
	loads.w r9, 1800(r3)
	loads.w r8, 1796(r3)
	loads.w r7, 1820(r3)
	loads.w r6, 1816(r3)
	loads.w r5, 1812(r3)
	loads.w r4, 1808(r3)
	loads.w r26, 1164(r3)
	loads.w r24, 1160(r3)
	loads.w r28, 1156(r3)
	loads.w r15, 1180(r3)
	loads.w r17, 1176(r3)
	loads.w r20, 1172(r3)
	loads.w r27, 1168(r3)
	bneq r10, zero, .LBB0_30
# %bb.29:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	loads.w r10, 1152(r3)
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	beq r25, zero, .LBB0_31
	j .LBB0_32
.LBB0_30:                               #   in Loop: Header=BB0_28 Depth=2
	loads.w r10, 1792(r3)
	bneq r25, zero, .LBB0_32
.LBB0_31:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r8, r28, 0
.LBB0_32:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	beq r19, zero, .LBB0_38
# %bb.33:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	beq r18, zero, .LBB0_39
.LBB0_34:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	load.d r[18:19], -8(r30)                # 8-byte Folded Reload
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	beq r16, zero, .LBB0_40
.LBB0_35:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	beq r14, zero, .LBB0_41
.LBB0_36:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	beq r13, zero, .LBB0_42
.LBB0_37:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	bneq r12, zero, .LBB0_27
	j .LBB0_43
.LBB0_38:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r9, r24, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	bneq r18, zero, .LBB0_34
.LBB0_39:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r11, r26, 0
	load.d r[18:19], -8(r30)                # 8-byte Folded Reload
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	bneq r16, zero, .LBB0_35
.LBB0_40:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r4, r27, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	bneq r14, zero, .LBB0_36
.LBB0_41:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r5, r20, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	bneq r13, zero, .LBB0_37
.LBB0_42:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, r17, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	bneq r12, zero, .LBB0_27
.LBB0_43:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r7, r15, 0
	j .LBB0_27
.LBB0_44:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 37 11 is_stmt 1               # ieee-multiply.mlir:37:11
	bneq r15, r19, .LBB0_47
# %bb.45:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 18
	addli r2, zero, 2304
	xwait r1, 0
	addli r1, zero, 31
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 2816
	ds_cfg r19, zero, 0
	ds_cfg r10, zero, 1
	ds_cfg r20, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r10, zero, 13
	shuffle_coa r1, r2, r20, 4
	addli r1, zero, 19
	unlock zero
	xsignal r1, 0
	addli r1, zero, 26
	xsignal r1, 0
	j .LBB0_47
.LBB0_46:                               # %.thread41
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	addli r1, zero, 8
	mfence { sm }
	.loc	1 29 11                         # ieee-multiply.mlir:29:11
	core_id r15
	addli r19, zero, 2
	addli r10, zero, 1
	addli r11, zero, 3
	addli r20, zero, 128
	lui r12, 4
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	xsignal r1, 0
	addli r1, zero, 11
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	loadli.w r9,  -20(r30)                  # 4-byte Folded Reload
	load.d r[13:14], -32(r30)               # 8-byte Folded Reload
.LBB0_47:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 37 11                         # ieee-multiply.mlir:37:11
	beq r9, zero, .LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 26
	addli r2, zero, 2816
	xwait r1, 0
	addli r1, zero, 37
	xwait r1, 0
	lock zero, r19
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r20, zero, zero, 3
	loadli.w r3,  -36(r30)                  # 4-byte Folded Reload
	ssreduce r3, r2, 0
	addli r2, zero, 27
	unlock r19
	xsignal r2, 0
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	lock zero, r19
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	ew_cfg r10, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1024
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r1, 4
	addli r1, zero, 32
	hp_ssmul r3, r3, r3, 0
	unlock r19
	xsignal r1, 0
.LBB0_49:                               # %.critedge6
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r4, 8
	ori r26, r4, 3712
	.loc	1 44 11 is_stmt 1               # ieee-multiply.mlir:44:11
	bneq r15, r19, .LBB0_51
# %bb.50:                               # %.critedge8.thread
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 16
	addli r2, zero, 1792
	addli r3, zero, 32
	xwait r1, 0
	addli r1, zero, 39
	xwait r1, 0
	lock zero, zero
	ori r1, r4, 2944
	ds_cfg r19, zero, 0
	ds_cfg r20, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r20, zero, 13
	shuffle_coa r1, r2, r10, 4
	addli r1, zero, 17
	unlock zero
	xsignal r1, 0
	addli r1, zero, 38
	xsignal r1, 0
	addli r1, zero, 43
	xwait r3, 0
	xwait r1, 0
	lock zero, zero
	ori r1, r4, 3584
	ds_cfg r19, zero, 0
	ds_cfg r10, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r10, zero, 13
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	shuffle_coa r1, r2, r10, 4
	addli r1, zero, 33
	unlock zero
	xsignal r1, 0
	addli r1, zero, 42
	xsignal r1, 0
	.loc	1 46 11                         # ieee-multiply.mlir:46:11
	addli r1, zero, 27
	xwait r1, 0
	addli r1, zero, 46
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 2816
	ds_cfg r19, zero, 0
	ds_cfg r3, zero, 1
	ds_cfg r20, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r10, zero, 13
	shuffle_coa r1, r26, r20, 4
	addli r1, zero, 28
	unlock zero
	xsignal r1, 0
	addli r1, zero, 47
	j .LBB0_76
.LBB0_51:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 44 11                         # ieee-multiply.mlir:44:11
	beq r15, r11, .LBB0_73
# %bb.52:                               # %.thread37
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 46 11                         # ieee-multiply.mlir:46:11
	bneq r9, zero, .LBB0_77
.LBB0_53:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r15, r11, .LBB0_78
.LBB0_54:                               # %vector.ph61
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 8
	storeli.w r26, -92(r30)                 # 4-byte Folded Spill
	xwait r1, 0
	addli r1, zero, 11
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	addli r1, zero, 53
	xwait r1, 0
	xfence
	zext_int2long r[1:2], zero
	mfence { lm, sm, gm }
	j .LBB0_56
.LBB0_55:                               # %vector.body62
                                        #   in Loop: Header=BB0_56 Depth=2
	addli r9, r3, 2308
	addli.d r[1:2], r[1:2], 8
	addli r6, r3, 2316
	addli r5, r3, 2304
	addli r8, r3, 2320
	stores.w r28, 0(r9)
	load.d r[9:10], -8(r30)                 # 8-byte Folded Reload
	stores.w r27, 0(r6)
	addli r6, r3, 2312
	stores.w r15, 0(r5)
	stores.w r26, 0(r8)
	stores.w r24, 0(r6)
	addli r6, r3, 2332
	setneq.d r9, r[1:2], r[9:10]
	stores.w r4, 0(r6)
	addli r4, r3, 2328
	addli r3, r3, 2324
	stores.w r7, 0(r4)
	stores.w r20, 0(r3)
	beq r9, zero, .LBB0_72
.LBB0_56:                               # %vector.body62
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r3, r1, 2
	ori r4, r21, 144
	ori r6, r21, 136
	ori r7, r21, 148
	loads.bu r15, 1664(r1)
	loads.bu r18, 1665(r1)
	loads.bu r17, 1666(r1)
	loads.bu r16, 1667(r1)
	loads.bu r14, 1668(r1)
	loads.bu r13, 1669(r1)
	loads.bu r11, 1670(r1)
	loads.bu r9, 1671(r1)
	add.s r5, r3, r4
	ori r4, r21, 140
	add.s r6, r3, r6
	add.s r8, r3, r7
	loads.w r10, 1164(r3)
	loads.w r12, 1156(r3)
	loads.w r25, 1180(r3)
	loads.w r19, 1176(r3)
	add.s r4, r3, r4
	loads.w r24, 0(r6)
	ori r6, r21, 156
	loads.w r20, 0(r8)
	loads.w r26, 0(r5)
	loads.w r8, 1160(r3)
	loads.w r5, 1168(r3)
	loads.w r27, 0(r4)
	ori r4, r21, 132
	add.s r6, r3, r6
	add.s r4, r3, r4
	loads.w r28, 0(r4)
	loads.w r4, 0(r6)
	ori r6, r21, 152
	add.s r6, r3, r6
	loads.w r7, 0(r6)
	loads.w r6, 1172(r3)
	bneq r15, zero, .LBB0_58
# %bb.57:                               # %vector.body62
                                        #   in Loop: Header=BB0_56 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	loads.w r15, 1152(r3)
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r18, zero, .LBB0_59
	j .LBB0_60
.LBB0_58:                               #   in Loop: Header=BB0_56 Depth=2
	loadli.w r15,  -16(r30)                 # 4-byte Folded Reload
	add.s r15, r3, r15
	loads.w r15, 0(r15)
	bneq r18, zero, .LBB0_60
.LBB0_59:                               # %vector.body62
                                        #   in Loop: Header=BB0_56 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r28, r12, 0
.LBB0_60:                               # %vector.body62
                                        #   in Loop: Header=BB0_56 Depth=2
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r17, zero, .LBB0_66
# %bb.61:                               # %vector.body62
                                        #   in Loop: Header=BB0_56 Depth=2
	beq r16, zero, .LBB0_67
.LBB0_62:                               # %vector.body62
                                        #   in Loop: Header=BB0_56 Depth=2
	beq r14, zero, .LBB0_68
.LBB0_63:                               # %vector.body62
                                        #   in Loop: Header=BB0_56 Depth=2
	beq r13, zero, .LBB0_69
.LBB0_64:                               # %vector.body62
                                        #   in Loop: Header=BB0_56 Depth=2
	beq r11, zero, .LBB0_70
.LBB0_65:                               # %vector.body62
                                        #   in Loop: Header=BB0_56 Depth=2
	bneq r9, zero, .LBB0_55
	j .LBB0_71
.LBB0_66:                               # %vector.body62
                                        #   in Loop: Header=BB0_56 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r24, r8, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r16, zero, .LBB0_62
.LBB0_67:                               # %vector.body62
                                        #   in Loop: Header=BB0_56 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r27, r10, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r14, zero, .LBB0_63
.LBB0_68:                               # %vector.body62
                                        #   in Loop: Header=BB0_56 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r26, r5, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r13, zero, .LBB0_64
.LBB0_69:                               # %vector.body62
                                        #   in Loop: Header=BB0_56 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r20, r6, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r11, zero, .LBB0_65
.LBB0_70:                               # %vector.body62
                                        #   in Loop: Header=BB0_56 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r7, r19, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r9, zero, .LBB0_55
.LBB0_71:                               # %vector.body62
                                        #   in Loop: Header=BB0_56 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r4, r25, 0
	j .LBB0_55
.LBB0_72:                               # %.thread42
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	addli r1, zero, 9
	mfence { sm }
	.loc	1 29 11 is_stmt 1               # ieee-multiply.mlir:29:11
	core_id r15
	addli r19, zero, 2
	addli r10, zero, 1
	addli r11, zero, 3
	addli r20, zero, 128
	lui r12, 4
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	xsignal r1, 0
	addli r1, zero, 12
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r1, 0
	addli r1, zero, 54
	xsignal r1, 0
	loadli.w r9,  -20(r30)                  # 4-byte Folded Reload
	load.d r[13:14], -32(r30)               # 8-byte Folded Reload
	loadli.w r26,  -92(r30)                 # 4-byte Folded Reload
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	beq r9, zero, .LBB0_80
	j .LBB0_83
.LBB0_73:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 44 11                         # ieee-multiply.mlir:44:11
	addli r2, zero, 38
	lui r5, 8
	addli r6, zero, 40
	addli r1, zero, 0
	xwait r2, 0
	addli r2, zero, 41
	ori r3, r5, 2944
	ori r4, r5, 3584
	xwait r2, 0
	lock zero, r11
	ori r2, r12, 2944
	rs_cfg zero, r10, r10, 1
	rs_cfg zero, r10, zero, 3
	rs_col r2, r3, r20, 0
	addli r3, zero, 39
	unlock r11
	xsignal r3, 0
	addli r3, zero, 42
	xsignal r6, 0
	xwait r3, 0
	addli r3, zero, 45
	xwait r3, 0
	lock zero, r11
	ori r3, r5, 3456
	lui r5, 784384
	rs_cfg zero, r10, r10, 1
	rs_cfg zero, r10, zero, 3
	rs_col r3, r4, r10, 0
	addli r4, zero, 43
	unlock r11
	xsignal r4, 0
	addli r4, zero, 44
	xsignal r4, 0
	xwait r6, 0
	xwait r4, 0
	addli r4, zero, 48
	xwait r4, 0
	lock zero, r19
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r5, zero, 0
	ew_cfg zero, zero, zero, 2
	ew_cfg r10, zero, zero, 3
.LBB0_74:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r1, r26
	add.s r5, r1, r2
	addli r1, r1, 128
	dsmadd r4, r5, r3, 0
	bneq r1, r12, .LBB0_74
# %bb.75:                               # %.critedge8
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 41
	unlock r19
	xsignal r1, 0
	addli r1, zero, 45
	xsignal r1, 0
	addli r1, zero, 46
	xsignal r1, 0
	.loc	1 46 11                         # ieee-multiply.mlir:46:11
	addli r1, zero, 28
	xwait r1, 0
	addli r1, zero, 52
	xwait r1, 0
	addli r1, zero, 4
	lock zero, r11
	rs_cfg zero, r20, r1, 1
	addli r1, zero, 2816
	rs_cfg zero, r20, zero, 3
	loadli.w r2,  -12(r30)                  # 4-byte Folded Reload
	rs_col r2, r1, r10, 0
	addli r1, zero, 29
	unlock r11
	xsignal r1, 0
	addli r1, zero, 51
	xsignal r1, 0
	addli r1, zero, 49
.LBB0_76:                               # %.thread37
                                        #   in Loop: Header=BB0_12 Depth=1
	xsignal r1, 0
	beq r9, zero, .LBB0_53
.LBB0_77:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 49
	xwait r1, 0
	addli r1, zero, 54
	xwait r1, 0
	lock zero, r19
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 127
	ew_cfg zero, r1, zero, 2
	ew_cfg r10, zero, zero, 3
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -16(r30)                  # 4-byte Folded Reload
	dsmul r2, r1, r1, 0
	addli r1, zero, 53
	unlock r19
	xsignal r1, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r15, r11, .LBB0_54
.LBB0_78:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	beq r15, r19, .LBB0_82
# %bb.79:                               #   in Loop: Header=BB0_12 Depth=1
	bneq r9, zero, .LBB0_83
.LBB0_80:                               # %.critedge12
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 57 11                         # ieee-multiply.mlir:57:11
	bneq r15, r19, .LBB0_84
.LBB0_81:                               # %.thread38
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 35
	xwait r1, 0
	addli r1, zero, 56
	xwait r1, 0
	lock zero, zero
	ori r1, r21, 640
	ds_cfg r19, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r20, zero, 13
	ds_cfg r10, zero, 14
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	shuffle_batch r1, r2, r10, 4
	addli r1, zero, 36
	unlock zero
	xsignal r1, 0
	addli r1, zero, 55
	j .LBB0_86
.LBB0_82:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	addli r1, zero, 20
	addli r2, zero, 2304
	xwait r1, 0
	addli r1, zero, 29
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 2816
	ds_cfg r19, zero, 0
	ds_cfg r10, zero, 1
	ds_cfg r20, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r10, zero, 13
	shuffle_coa r1, r2, r20, 4
	addli r1, zero, 21
	unlock zero
	xsignal r1, 0
	addli r1, zero, 30
	xsignal r1, 0
	beq r9, zero, .LBB0_80
.LBB0_83:                               # %.critedge10
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 30
	addli r2, zero, 2816
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	addli r4, zero, 1
	addli r5, zero, 1
	addli r6, zero, 1
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	xwait r1, 0
	addli r1, zero, 33
	xwait r1, 0
	lock zero, r19
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r20, zero, zero, 3
	loadli.w r3,  -36(r30)                  # 4-byte Folded Reload
	ssreduce r3, r2, 0
	lui r2, 260096
	unlock r19
	xsignal r1, 0
	.loc	1 54 11                         # ieee-multiply.mlir:54:11
	lock zero, r19
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	ew_cfg r10, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1024
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r1, 4
	addli r1, zero, 6
	hp_ssmul r3, r3, r3, 0
	unlock r19
	xsignal r1, 0
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	lock zero, r19
	ew_cfg zero, zero, zero, 1
	loadli.w r1,  -96(r30)                  # 4-byte Folded Reload
	ewcoeff_cfg r2, zero, r1, 0
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	addli r2, r3, 0
	addli r1, zero, 34
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	ew_cfg zero, zero, zero, 2
	ew_cfg r10, zero, zero, 3
	dsmadd r3, r3, r3, 0
	unlock r19
	xsignal r1, 0
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	xwait r1, 0
	xfence
	jal _ZN3xpu10math_rsqrtEPU3AS2fS1_iii
	load.d r[13:14], -32(r30)               # 8-byte Folded Reload
	loadli.w r9,  -20(r30)                  # 4-byte Folded Reload
	addli r1, zero, 35
	.loc	1 29 11                         # ieee-multiply.mlir:29:11
	core_id r15
	lui r12, 4
	addli r11, zero, 3
	addli r10, zero, 1
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	xsignal r1, 0
	.loc	1 57 11                         # ieee-multiply.mlir:57:11
	beq r15, r19, .LBB0_81
.LBB0_84:                               #   in Loop: Header=BB0_12 Depth=1
	bneq r15, r11, .LBB0_87
# %bb.85:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 21
	addli r2, zero, 2304
	xwait r1, 0
	addli r1, zero, 55
	xwait r1, 0
	addli r1, zero, 4
	lock zero, r11
	rs_cfg zero, r10, r1, 0
	ori r1, r21, 640
	rs_cfg zero, r10, zero, 2
	rs_row r2, r1, r20, 0
	addli r1, zero, 22
	unlock r11
	xsignal r1, 0
	addli r1, zero, 56
.LBB0_86:                               #   in Loop: Header=BB0_12 Depth=1
	xsignal r1, 0
.LBB0_87:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 58 23                         # ieee-multiply.mlir:58:23
	beq r9, zero, .LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 36
	xwait r1, 0
	addli r1, zero, 51
	xwait r1, 0
	xfence
	lui r1, 260096
	mfence { lm, sm, gm }
	lock zero, r19
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 127
	ew_cfg zero, r1, zero, 2
	ew_cfg r10, zero, zero, 3
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	loads.w r1, 0(r1)
	ewcoeff_cfg r1, zero, zero, 0
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	hp_ssmul r1, r1, r1, 0
	addli r1, zero, 37
	unlock r19
	xsignal r1, 0
	addli r1, zero, 50
	xsignal r1, 0
.LBB0_89:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 23 is_stmt 0                # ieee-multiply.mlir:0:23
	ori r1, r21, 1152
	ori r2, r21, 1164
	ori r3, r21, 1160
	ori r4, r21, 1156
	ori r5, r21, 1664
	ori r6, r21, 1672
	.loc	1 79 25 is_stmt 1               # ieee-multiply.mlir:79:25
	beq r15, r11, .LBB0_102
# %bb.90:                               # %.critedge14
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 81 23                         # ieee-multiply.mlir:81:23
	bneq r9, zero, .LBB0_115
.LBB0_91:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 103 11                        # ieee-multiply.mlir:103:11
	bneq r15, r11, .LBB0_116
.LBB0_92:                               # %vector.ph
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r7, zero, 23
	xwait r7, 0
	addli r7, zero, 58
	xwait r7, 0
	addli r7, zero, 61
	xwait r7, 0
	xfence
	zext_int2long r[7:8], zero
	mfence { lm, sm, gm }
	j .LBB0_94
.LBB0_93:                               # %vector.body
                                        #   in Loop: Header=BB0_94 Depth=2
	addli.d r[7:8], r[7:8], 4
	addli r10, r9, 2316
	addli r14, r9, 2304
	setneq.d r11, r[7:8], r[17:18]
	stores.w r13, 0(r10)
	addli r10, r9, 2312
	addli r9, r9, 2308
	stores.w r12, 0(r14)
	stores.w r15, 0(r10)
	stores.w r16, 0(r9)
	beq r11, zero, .LBB0_10
.LBB0_94:                               # %vector.body
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r9, r7, 2
	ori r20, r21, 1668
	add.s r10, r9, r1
	add.s r12, r9, r3
	add.s r11, r9, r4
	add.s r18, r9, r6
	add.s r20, r9, r20
	loads.w r19, 4(r9)
	loads.w r17, 8(r9)
	loads.w r14, 12(r9)
	loads.w r13, 0(r10)
	loads.w r15, 0(r12)
	loads.w r12, 0(r9)
	add.s r10, r9, r2
	loads.w r16, 0(r11)
	loads.w r18, 0(r18)
	loads.w r20, 0(r20)
	loads.w r11, 0(r10)
	ori r10, r21, 1676
	add.s r10, r9, r10
	loads.w r10, 0(r10)
	.loc	1 89 24                         # ieee-multiply.mlir:89:24
	and r12, r12, r22
	.loc	1 88 24                         # ieee-multiply.mlir:88:24
	and r13, r13, r22
	.loc	1 92 24                         # ieee-multiply.mlir:92:24
	seteq r24, r13, r23
	.loc	1 95 25                         # ieee-multiply.mlir:95:25
	seteq r25, r12, zero
	.loc	1 93 24                         # ieee-multiply.mlir:93:24
	seteq r26, r12, r23
	.loc	1 99 27                         # ieee-multiply.mlir:99:27
	max.u r12, r13, r12
	.loc	1 94 25                         # ieee-multiply.mlir:94:25
	seteq r13, r13, zero
	.loc	1 99 27                         # ieee-multiply.mlir:99:27
	setlt.u r12, r23, r12
	.loc	1 96 29                         # ieee-multiply.mlir:96:29
	and r24, r24, r25
	.loc	1 97 29                         # ieee-multiply.mlir:97:29
	and r13, r13, r26
	.loc	1 98 27                         # ieee-multiply.mlir:98:27
	or r13, r24, r13
	.loc	1 100 23                        # ieee-multiply.mlir:100:23
	or r24, r12, r13
	lui r13, 523264
	lui r12, 523264
	.loc	1 102 25                        # ieee-multiply.mlir:102:25
	bneq r24, zero, .LBB0_96
# %bb.95:                               # %vector.body
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	add.s r12, r9, r5
	loads.w r12, 0(r12)
.LBB0_96:                               # %vector.body
                                        #   in Loop: Header=BB0_94 Depth=2
	and r16, r16, r22
	and r19, r19, r22
	seteq r24, r16, r23
	seteq r27, r16, zero
	seteq r25, r19, zero
	seteq r26, r19, r23
	max.u r16, r16, r19
	setlt.u r16, r23, r16
	and r19, r24, r25
	and r24, r27, r26
	or r19, r19, r24
	or r19, r16, r19
	lui r16, 523264
	.loc	1 102 25                        # ieee-multiply.mlir:102:25
	bneq r19, zero, .LBB0_98
# %bb.97:                               # %vector.body
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r16, r20, 0
.LBB0_98:                               # %vector.body
                                        #   in Loop: Header=BB0_94 Depth=2
	and r15, r15, r22
	and r17, r17, r22
	seteq r19, r15, r23
	seteq r25, r15, zero
	seteq r20, r17, zero
	seteq r24, r17, r23
	max.u r15, r15, r17
	setlt.u r15, r23, r15
	and r17, r19, r20
	and r19, r25, r24
	or r17, r17, r19
	or r17, r15, r17
	lui r15, 523264
	.loc	1 102 25                        # ieee-multiply.mlir:102:25
	bneq r17, zero, .LBB0_100
# %bb.99:                               # %vector.body
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r15, r18, 0
.LBB0_100:                              # %vector.body
                                        #   in Loop: Header=BB0_94 Depth=2
	and r11, r11, r22
	and r14, r14, r22
	seteq r17, r11, r23
	seteq r20, r11, zero
	seteq r18, r14, zero
	seteq r19, r14, r23
	max.u r11, r11, r14
	setlt.u r11, r23, r11
	and r14, r17, r18
	and r17, r20, r19
	or r14, r14, r17
	load.d r[17:18], -8(r30)                # 8-byte Folded Reload
	or r11, r11, r14
	.loc	1 102 25                        # ieee-multiply.mlir:102:25
	bneq r11, zero, .LBB0_93
# %bb.101:                              # %vector.body
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r13, r10, 0
	j .LBB0_93
.LBB0_102:                              # %vector.ph54
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 79 25 is_stmt 1               # ieee-multiply.mlir:79:25
	addli r7, zero, 22
	lui r12, 8
	xwait r7, 0
	addli r7, zero, 47
	xwait r7, 0
	addli r7, zero, 50
	xwait r7, 0
	addli r7, zero, 59
	xwait r7, 0
	xfence
	zext_int2long r[7:8], zero
	mfence { lm, sm, gm }
	j .LBB0_104
.LBB0_103:                              # %vector.body55
                                        #   in Loop: Header=BB0_104 Depth=2
	addli.d r[7:8], r[7:8], 4
	add.s r10, r9, r2
	add.s r13, r9, r1
	setneq.d r11, r[7:8], r[24:25]
	stores.w r14, 0(r10)
	add.s r10, r9, r3
	add.s r9, r9, r4
	stores.w r12, 0(r13)
	lui r12, 8
	stores.w r15, 0(r10)
	stores.w r17, 0(r9)
	beq r11, zero, .LBB0_112
.LBB0_104:                              # %vector.body55
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r9, r7, 7
	ori r10, r12, 3840
	ori r12, r12, 3968
	lui r13, 9
	lui r20, 12
	addli r28, r26, 0
	add.s r11, r9, r26
	add.s r10, r9, r10
	add.s r12, r9, r12
	add.s r13, r9, r13
	slli r9, r7, 2
	ori r18, r20, 3724
	loads.w r17, 0(r10)
	addli r10, r9, 2304
	loads.w r14, 0(r11)
	loads.w r15, 0(r12)
	loads.w r11, 0(r13)
	addli r13, r9, 2312
	loads.w r12, 0(r10)
	addli r10, r9, 2308
	loads.w r16, 0(r13)
	loads.w r19, 0(r10)
	addli r10, r9, 2316
	loads.w r13, 0(r10)
	add.s r10, r9, r18
	ori r18, r20, 3720
	ori r20, r20, 3716
	add.s r18, r9, r18
	add.s r20, r9, r20
	loads.w r10, 0(r10)
	loads.w r18, 0(r18)
	loads.w r20, 0(r20)
	.loc	1 65 24                         # ieee-multiply.mlir:65:24
	and r14, r14, r22
	.loc	1 66 24                         # ieee-multiply.mlir:66:24
	and r12, r12, r22
	.loc	1 69 24                         # ieee-multiply.mlir:69:24
	seteq r24, r14, r23
	.loc	1 72 25                         # ieee-multiply.mlir:72:25
	seteq r25, r12, zero
	.loc	1 70 24                         # ieee-multiply.mlir:70:24
	seteq r26, r12, r23
	.loc	1 76 27                         # ieee-multiply.mlir:76:27
	max.u r12, r14, r12
	.loc	1 71 25                         # ieee-multiply.mlir:71:25
	seteq r14, r14, zero
	.loc	1 76 27                         # ieee-multiply.mlir:76:27
	setlt.u r12, r23, r12
	.loc	1 73 29                         # ieee-multiply.mlir:73:29
	and r24, r24, r25
	.loc	1 74 29                         # ieee-multiply.mlir:74:29
	and r14, r14, r26
	.loc	1 75 27                         # ieee-multiply.mlir:75:27
	or r14, r24, r14
	.loc	1 77 23                         # ieee-multiply.mlir:77:23
	or r24, r12, r14
	lui r14, 523264
	lui r12, 523264
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r24, zero, .LBB0_106
# %bb.105:                              # %vector.body55
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	loadli.w r12,  -12(r30)                 # 4-byte Folded Reload
	add.s r12, r9, r12
	loads.w r12, 0(r12)
.LBB0_106:                              # %vector.body55
                                        #   in Loop: Header=BB0_104 Depth=2
	and r17, r17, r22
	and r19, r19, r22
	seteq r24, r17, r23
	seteq r27, r17, zero
	seteq r25, r19, zero
	seteq r26, r19, r23
	max.u r17, r17, r19
	setlt.u r17, r23, r17
	and r19, r24, r25
	and r24, r27, r26
	or r19, r19, r24
	or r19, r17, r19
	lui r17, 523264
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r19, zero, .LBB0_108
# %bb.107:                              # %vector.body55
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r17, r20, 0
.LBB0_108:                              # %vector.body55
                                        #   in Loop: Header=BB0_104 Depth=2
	and r15, r15, r22
	and r16, r16, r22
	addli r26, r28, 0
	seteq r19, r15, r23
	seteq r25, r15, zero
	seteq r20, r16, zero
	seteq r24, r16, r23
	max.u r15, r15, r16
	setlt.u r15, r23, r15
	and r16, r19, r20
	and r19, r25, r24
	or r16, r16, r19
	or r16, r15, r16
	lui r15, 523264
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r16, zero, .LBB0_110
# %bb.109:                              # %vector.body55
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r15, r18, 0
.LBB0_110:                              # %vector.body55
                                        #   in Loop: Header=BB0_104 Depth=2
	and r11, r11, r22
	and r13, r13, r22
	load.d r[24:25], -8(r30)                # 8-byte Folded Reload
	seteq r16, r11, r23
	seteq r20, r11, zero
	seteq r18, r13, zero
	seteq r19, r13, r23
	max.u r11, r11, r13
	setlt.u r11, r23, r11
	and r13, r16, r18
	and r16, r20, r19
	or r13, r13, r16
	or r11, r11, r13
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r11, zero, .LBB0_103
# %bb.111:                              # %vector.body55
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r14, r10, 0
	j .LBB0_103
.LBB0_112:                              # %middle.block60
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	addli r7, zero, 23
	mfence { sm }
	xsignal r7, 0
	addli r7, zero, 48
	xsignal r7, 0
	addli r7, zero, 52
	xsignal r7, 0
	addli r7, zero, 57
	xsignal r7, 0
	.loc	1 80 11 is_stmt 1               # ieee-multiply.mlir:80:11
	xwait r7, 0
	addli r7, zero, 62
	xwait r7, 0
	xfence
	zext_int2long r[7:8], zero
	mfence { lm, sm, gm }
.LBB0_113:                              # %vector.body48
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r9, r7, 2
	ori r10, r21, 1168
	ori r12, r21, 1176
	addli.d r[7:8], r[7:8], 8
	add.s r11, r9, r3
	add.s r10, r9, r10
	add.s r12, r9, r12
	setneq.d r20, r[7:8], r[24:25]
	add.s r19, r9, r6
	loads.d r[13:14], 0(r11)
	add.s r11, r9, r1
	loads.d r[17:18], 0(r10)
	add.s r10, r9, r5
	loads.d r[15:16], 0(r11)
	loads.d r[11:12], 0(r12)
	stores.d r[13:14], 0(r19)
	ori r13, r21, 1680
	ori r14, r21, 1688
	add.s r13, r9, r13
	add.s r9, r9, r14
	stores.d r[15:16], 0(r10)
	stores.d r[11:12], 0(r9)
	stores.d r[17:18], 0(r13)
	bneq r20, zero, .LBB0_113
# %bb.114:                              # %middle.block53
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r7, zero, 58
	mfence { sm }
	addli r19, zero, 2
	addli r10, zero, 1
	addli r11, zero, 3
	addli r20, zero, 128
	lui r12, 4
	.loc	1 29 11                         # ieee-multiply.mlir:29:11
	core_id r15
	.loc	1 80 11                         # ieee-multiply.mlir:80:11
	xsignal r7, 0
	addli r7, zero, 60
	xsignal r7, 0
	loadli.w r9,  -20(r30)                  # 4-byte Folded Reload
	load.d r[13:14], -32(r30)               # 8-byte Folded Reload
	.loc	1 81 23                         # ieee-multiply.mlir:81:23
	beq r9, zero, .LBB0_91
.LBB0_115:                              #   in Loop: Header=BB0_12 Depth=1
	addli r7, zero, 60
	xwait r7, 0
	lock zero, r19
	lui r7, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r7, 0
	addli r7, zero, 127
	ew_cfg zero, r7, zero, 2
	addli r7, zero, 61
	ew_cfg r10, zero, zero, 3
	dsmul r5, r5, zero, 0
	unlock r19
	xsignal r7, 0
	.loc	1 103 11                        # ieee-multiply.mlir:103:11
	beq r15, r11, .LBB0_92
.LBB0_116:                              #   in Loop: Header=BB0_12 Depth=1
	.loc	1 107 5                         # ieee-multiply.mlir:107:5
	bneq r15, zero, .LBB0_11
# %bb.117:                              #   in Loop: Header=BB0_12 Depth=1
	load.d r[1:2], -56(r30)                 # 8-byte Folded Reload
	addli r3, zero, 24
	addli r5, zero, 2304
	xwait r3, 0
	load.d r[3:4], 24(r30)
	sll.d r[1:2], r[1:2], r10
	add.ul r[1:2], r[3:4], r[1:2]
	addli r4, zero, 5
	addli r3, zero, 512
	lock zero, r4
	dma_cfg r10, zero, zero, 0
	dma_cfg zero, r10, zero, 1
	dma_cfg r2, zero, zero, 2
	dma_cfg r1, r5, r3, 3
	addli r1, zero, 256
	load.d r[5:6], -64(r30)                 # 8-byte Folded Reload
	dma_cfg r1, r3, r5, 4
	addli r1, zero, 25
	dma_run zero
	unlock r4
	xsignal r1, 0
	j .LBB0_11
.LBB0_118:
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	addli r3, zero, 2
	addli r9, zero, 1
	addli r4, zero, 4
	xwait r3, 0
	xwait r4, 0
	ble.s r2, r1, .LBB0_119
	j .LBB0_9
.LBB0_119:                              # %._crit_edge
	addli r1, zero, 3
	beq r15, r1, .LBB0_123
# %bb.120:
	bneq r9, zero, .LBB0_124
.LBB0_121:
	.loc	1 2 3 is_stmt 1                 # ieee-multiply.mlir:2:3
	xsignal zero, 0
	beq r15, zero, .LBB0_125
.LBB0_122:
	.loc	1 2 3 epilogue_begin is_stmt 0  # ieee-multiply.mlir:2:3
	addli sp, sp, 128
	mfence { lm, sm, gm }
	exit
.LBB0_123:
	.loc	1 0 3                           # ieee-multiply.mlir:0:3
	xsignal r1, 0
	beq r9, zero, .LBB0_121
.LBB0_124:
	addli r1, zero, 5
	xsignal r1, 0
	.loc	1 2 3                           # ieee-multiply.mlir:2:3
	xsignal zero, 0
	bneq r15, zero, .LBB0_122
.LBB0_125:
	.loc	1 0 3                           # ieee-multiply.mlir:0:3
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
	j .LBB0_122
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
	.long	52                              # 0x34
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	192                             # 0xc0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/native-activation-2tc3bv6n" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
