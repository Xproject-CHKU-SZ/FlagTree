	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/native-activation-m6u_u1xw" "ieee-multiply.mlir"
	.loc	1 2 0                           # ieee-multiply.mlir:2:0
	.cfi_startproc
# %bb.0:
	addli sp, sp, -192
	addli r1, zero, 1
.Ltmp0:
	.loc	1 25 11 prologue_end            # ieee-multiply.mlir:25:11
	core_id r20
	addli r30, sp, 128
	xsignal_mode_cfg r1
	beq r20, zero, .LBB0_2
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
	addli r2, zero, 26
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 32
	addli r2, zero, 38
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 42
	addli r2, zero, 40
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 46
	addli r2, zero, 44
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 49
	addli r2, zero, 53
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 55
	addli r2, zero, 57
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
	.loc	1 25 11                         # ieee-multiply.mlir:25:11
	bneq r20, r3, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, zero, 3
	addli r7, zero, 4
	load.d r[4:5], 8(r30)
	addli r9, zero, 0
	.loc	1 25 11                         # ieee-multiply.mlir:25:11
	xwait r6, 0
	lock zero, r7
	addli r6, zero, 512
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r5, zero, 2
	dma_cfg zero, r4, r6, 3
	dma_cfg r6, r6, r3, 4
	addli r3, zero, 2
	dma_run zero
	unlock r7
	xsignal r3, 0
	ble.s r2, r1, .LBB0_105
	j .LBB0_9
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r3, zero, 5
	.loc	1 28 11 is_stmt 1               # ieee-multiply.mlir:28:11
	beq r20, r3, .LBB0_104
# %bb.6:
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r9, zero, 0
	addli r3, zero, 6
	.loc	1 28 11                         # ieee-multiply.mlir:28:11
	bneq r20, r3, .LBB0_8
# %bb.7:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r5, zero, 5
	addli r6, zero, 4
	load.d r[3:4], 16(r30)
	addli r7, zero, 1
	.loc	1 28 11                         # ieee-multiply.mlir:28:11
	xwait r5, 0
	lock zero, r6
	addli r5, zero, 512
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r4, zero, 2
	dma_cfg r5, r3, r5, 3
	dma_cfg r5, r5, r7, 4
	dma_run zero
	unlock r6
	xsignal r6, 0
.LBB0_8:                                # %.critedge2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	ble.s r2, r1, .LBB0_105
.LBB0_9:                                # %.lr.ph
	sext_int2long r[3:4], r1
	sext_int2long r[1:2], r2
	lui r13, 4
	lui r21, 13
	addli r10, zero, 2
	addli r11, zero, 1
	addli r12, zero, 3
	addli r23, zero, 128
	lui r24, 8
	lui r28, 522240
	storeli.w r9, -40(r30)                  # 4-byte Folded Spill
	store.d r[1:2], -64(r30)                # 8-byte Folded Spill
	lui r1, 239665
	lui r2, 524287
	store.d r[3:4], -24(r30)                # 8-byte Folded Spill
	addli r4, zero, 15
	addli r3, zero, 127
	ori r1, r1, 623
	ori r22, r2, 4095
	zext_int2long r[14:15], r3
	storeli.w r1, -88(r30)                  # 4-byte Folded Spill
	zext_int2long r[1:2], zero
	store.d r[14:15], -48(r30)              # 8-byte Folded Spill
	store.d r[1:2], -72(r30)                # 8-byte Folded Spill
	zext_int2long r[1:2], r4
	store.d r[1:2], -80(r30)                # 8-byte Folded Spill
	ori r1, r13, 2816
	storeli.w r1, -36(r30)                  # 4-byte Folded Spill
	lui r1, 12
	ori r1, r1, 3712
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	ori r1, r21, 128
	storeli.w r1, -16(r30)                  # 4-byte Folded Spill
	j .LBB0_12
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 78 5 is_stmt 1                # ieee-multiply.mlir:78:5
	beq r20, zero, .LBB0_49
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	load.d r[1:2], -24(r30)                 # 8-byte Folded Reload
	load.d r[3:4], -64(r30)                 # 8-byte Folded Reload
	addli.d r[1:2], r[1:2], 1
	store.d r[1:2], -24(r30)                # 8-byte Folded Spill
	setlt.sl r1, r[1:2], r[3:4]
	beq r1, zero, .LBB0_105
.LBB0_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_75 Depth 2
                                        #     Child Loop BB0_57 Depth 2
                                        #     Child Loop BB0_94 Depth 2
	.loc	1 4 14 is_stmt 1                # ieee-multiply.mlir:4:14
	beq r9, zero, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 6
	xwait r1, 0
	lock zero, r10
	lui r1, 274432
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 31
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1024
	ew_cfg r11, zero, zero, 3
	ssaux r1, 0
	.loc	1 5 14                          # ieee-multiply.mlir:5:14
	addli r1, zero, 9
	.loc	1 4 14                          # ieee-multiply.mlir:4:14
	unlock r10
	.loc	1 5 14                          # ieee-multiply.mlir:5:14
	xwait r1, 0
	lock zero, r10
	addli r1, zero, 127
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1152
	ew_cfg r11, zero, zero, 3
	ssaux r1, 0
	addli r1, zero, 7
	unlock r10
	xsignal r1, 0
.LBB0_14:                               # %.critedge4
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 14 is_stmt 0                # ieee-multiply.mlir:0:14
	loadli.w r1,  48(r30)
	load.d r[2:3], -24(r30)                 # 8-byte Folded Reload
	.loc	1 16 10 is_stmt 1               # ieee-multiply.mlir:16:10
	addli r4, zero, 7
	div.s r1, r2, r1
	loadli.w r2,  44(r30)
	div.s r3, r1, r2
	.loc	1 77 11                         # ieee-multiply.mlir:77:11
	sext_int2long r[1:2], r3
	.loc	1 16 10                         # ieee-multiply.mlir:16:10
	sll.d r[4:5], r[1:2], r4
	.loc	1 21 11                         # ieee-multiply.mlir:21:11
	store.d r[4:5], -56(r30)                # 8-byte Folded Spill
	bneq r20, r12, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=1
	addli r4, zero, 12
	xwait r4, 0
	xfence
	setlti r4, r3, 16
	mfence { lm, sm, gm }
	load.d r[5:6], -72(r30)                 # 8-byte Folded Reload
.LBB0_16:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	setlt.ul r7, r[5:6], r[14:15]
	addli r8, r5, 1664
	addli.d r[5:6], r[5:6], 1
	stores.b r4, 0(r8)
	bneq r7, zero, .LBB0_16
# %bb.17:                               # %.thread38
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	load.d r[4:5], -80(r30)                 # 8-byte Folded Reload
	.loc	1 21 11                         # ieee-multiply.mlir:21:11
	mfence { sm }
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	min.sl r[4:5], r[1:2], r[4:5]
	addli.d r[4:5], r[4:5], 1
	max.sl r[1:2], r[4:5], r[1:2]
	sub.s r6, r1, r3
	.loc	1 21 11                         # ieee-multiply.mlir:21:11
	addli r1, zero, 10
	j .LBB0_22
.LBB0_18:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	load.d r[3:4], -80(r30)                 # 8-byte Folded Reload
	min.sl r[3:4], r[1:2], r[3:4]
	addli.d r[3:4], r[3:4], 1
	max.sl r[3:4], r[3:4], r[1:2]
	sub.sl r[6:7], r[3:4], r[1:2]
	bneq r20, r11, .LBB0_23
# %bb.19:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	zext_int2long r[1:2], zero
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	setlt.sl r1, r[1:2], r[6:7]
	addli r2, zero, 17
	xwait r2, 0
	bneq r1, zero, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_12 Depth=1
	lock zero, r10
	addli r1, zero, 127
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1792
	ew_cfg r11, zero, zero, 3
	ssaux r1, 0
	unlock r10
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
	dma_cfg zero, zero, zero, 0
	addli r3, zero, 1792
	addli r4, zero, 512
	dma_cfg zero, r2, zero, 2
	dma_cfg r3, r1, r4, 3
	addli r1, zero, 14
	dma_cfg r4, r4, r6, 4
	dma_run zero
	unlock r5
.LBB0_22:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 0                           # ieee-multiply.mlir:0:0
	xsignal r1, 0
.LBB0_23:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 29 11 is_stmt 1               # ieee-multiply.mlir:29:11
	beq r9, zero, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 14
	xwait r1, 0
	lock zero, r10
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 127
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1792
	ew_cfg r11, zero, zero, 3
	dsmadd r1, r1, zero, 0
	addli r1, zero, 15
	unlock r10
	xsignal r1, 0
.LBB0_25:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	zext_int2long r[1:2], r23
	store.d r[6:7], -32(r30)                # 8-byte Folded Spill
	store.d r[1:2], -8(r30)                 # 8-byte Folded Spill
	.loc	1 30 11 is_stmt 1               # ieee-multiply.mlir:30:11
	bneq r20, r12, .LBB0_44
# %bb.26:                               # %vector.ph52
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 7
	xwait r1, 0
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 15
	xwait r1, 0
	addli r1, zero, 26
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	load.d r[1:2], -72(r30)                 # 8-byte Folded Reload
	j .LBB0_28
.LBB0_27:                               # %vector.body53
                                        #   in Loop: Header=BB0_28 Depth=2
	addli r13, r3, 2316
	load.d r[15:16], -8(r30)                # 8-byte Folded Reload
	addli.d r[1:2], r[1:2], 8
	addli r12, r3, 2304
	addli r14, r3, 2320
	stores.w r11, 0(r13)
	addli r11, r3, 2312
	addli r13, r3, 2308
	stores.w r10, 0(r12)
	stores.w r4, 0(r14)
	stores.w r9, 0(r11)
	setneq.d r9, r[1:2], r[15:16]
	stores.w r8, 0(r13)
	addli r8, r3, 2332
	stores.w r7, 0(r8)
	addli r7, r3, 2328
	addli r3, r3, 2324
	stores.w r6, 0(r7)
	stores.w r5, 0(r3)
	beq r9, zero, .LBB0_48
.LBB0_28:                               # %vector.body53
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
	loads.w r20, 1164(r3)
	loads.w r24, 1160(r3)
	loads.w r27, 1156(r3)
	loads.w r15, 1180(r3)
	loads.w r17, 1176(r3)
	loads.w r23, 1172(r3)
	loads.w r26, 1168(r3)
	bneq r10, zero, .LBB0_30
# %bb.29:                               # %vector.body53
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	loads.w r10, 1152(r3)
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	beq r25, zero, .LBB0_31
	j .LBB0_32
.LBB0_30:                               #   in Loop: Header=BB0_28 Depth=2
	loads.w r10, 1792(r3)
	bneq r25, zero, .LBB0_32
.LBB0_31:                               # %vector.body53
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r8, r27, 0
.LBB0_32:                               # %vector.body53
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	beq r19, zero, .LBB0_38
# %bb.33:                               # %vector.body53
                                        #   in Loop: Header=BB0_28 Depth=2
	beq r18, zero, .LBB0_39
.LBB0_34:                               # %vector.body53
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	lui r24, 8
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	beq r16, zero, .LBB0_40
.LBB0_35:                               # %vector.body53
                                        #   in Loop: Header=BB0_28 Depth=2
	beq r14, zero, .LBB0_41
.LBB0_36:                               # %vector.body53
                                        #   in Loop: Header=BB0_28 Depth=2
	beq r13, zero, .LBB0_42
.LBB0_37:                               # %vector.body53
                                        #   in Loop: Header=BB0_28 Depth=2
	bneq r12, zero, .LBB0_27
	j .LBB0_43
.LBB0_38:                               # %vector.body53
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r9, r24, 0
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	bneq r18, zero, .LBB0_34
.LBB0_39:                               # %vector.body53
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r11, r20, 0
	lui r24, 8
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	bneq r16, zero, .LBB0_35
.LBB0_40:                               # %vector.body53
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r4, r26, 0
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	bneq r14, zero, .LBB0_36
.LBB0_41:                               # %vector.body53
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r5, r23, 0
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	bneq r13, zero, .LBB0_37
.LBB0_42:                               # %vector.body53
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, r17, 0
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	bneq r12, zero, .LBB0_27
.LBB0_43:                               # %vector.body53
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r7, r15, 0
	j .LBB0_27
.LBB0_44:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 31 11 is_stmt 1               # ieee-multiply.mlir:31:11
	beq r20, r10, .LBB0_50
# %bb.45:                               #   in Loop: Header=BB0_12 Depth=1
	bneq r9, zero, .LBB0_51
.LBB0_46:                               # %.critedge6
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	ori r25, r24, 3712
	.loc	1 38 11 is_stmt 1               # ieee-multiply.mlir:38:11
	bneq r20, r10, .LBB0_52
.LBB0_47:                               # %.critedge8.thread
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 16
	addli r2, zero, 1792
	xwait r1, 0
	addli r1, zero, 40
	xwait r1, 0
	lock zero, zero
	ori r1, r24, 2944
	ds_cfg r10, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r23, zero, 13
	shuffle_coa r1, r2, r11, 4
	addli r1, zero, 17
	unlock zero
	xsignal r1, 0
	addli r1, zero, 39
	xsignal r1, 0
	addli r1, zero, 33
	xwait r1, 0
	addli r1, zero, 44
	xwait r1, 0
	lock zero, zero
	ori r1, r24, 3584
	ds_cfg r10, zero, 0
	ds_cfg r11, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r11, zero, 13
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	shuffle_coa r1, r2, r11, 4
	addli r1, zero, 34
	unlock zero
	xsignal r1, 0
	addli r1, zero, 43
	xsignal r1, 0
	.loc	1 40 11                         # ieee-multiply.mlir:40:11
	addli r1, zero, 28
	xwait r1, 0
	addli r1, zero, 47
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 32
	ds_cfg r10, zero, 0
	ds_cfg r1, zero, 1
	addli r1, zero, 2816
	ds_cfg r23, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r11, zero, 13
	shuffle_coa r1, r25, r23, 4
	addli r1, zero, 29
	unlock zero
	xsignal r1, 0
	addli r1, zero, 48
	j .LBB0_77
.LBB0_48:                               # %.thread39
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	addli r1, zero, 8
	mfence { sm }
	.loc	1 25 11                         # ieee-multiply.mlir:25:11
	core_id r20
	addli r10, zero, 2
	addli r11, zero, 1
	addli r12, zero, 3
	addli r23, zero, 128
	lui r13, 4
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	xsignal r1, 0
	addli r1, zero, 11
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	loadli.w r9,  -40(r30)                  # 4-byte Folded Reload
	load.d r[14:15], -48(r30)               # 8-byte Folded Reload
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	.loc	1 31 11                         # ieee-multiply.mlir:31:11
	beq r9, zero, .LBB0_46
	j .LBB0_51
.LBB0_49:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 78 5                          # ieee-multiply.mlir:78:5
	load.d r[1:2], -56(r30)                 # 8-byte Folded Reload
	addli r3, zero, 25
	addli r5, zero, 5
	xwait r3, 0
	load.d r[3:4], 24(r30)
	lock zero, r5
	sll.d r[1:2], r[1:2], r10
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r11, zero, 1
	add.ul r[1:2], r[3:4], r[1:2]
	addli r3, zero, 2304
	addli r4, zero, 512
	dma_cfg r2, zero, zero, 2
	dma_cfg r1, r3, r4, 3
	addli r1, zero, 26
	dma_cfg r4, r4, r6, 4
	dma_run zero
	unlock r5
	xsignal r1, 0
	j .LBB0_11
.LBB0_50:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 31 11                         # ieee-multiply.mlir:31:11
	addli r1, zero, 18
	addli r2, zero, 2304
	xwait r1, 0
	addli r1, zero, 32
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 2816
	ds_cfg r10, zero, 0
	ds_cfg r11, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r11, zero, 13
	shuffle_coa r1, r2, r23, 4
	addli r1, zero, 19
	unlock zero
	xsignal r1, 0
	addli r1, zero, 27
	xsignal r1, 0
	beq r9, zero, .LBB0_46
.LBB0_51:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 27
	addli r2, zero, 2816
	xwait r1, 0
	addli r1, zero, 38
	xwait r1, 0
	lock zero, r10
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r23, zero, zero, 3
	loadli.w r3,  -36(r30)                  # 4-byte Folded Reload
	ssreduce r3, r2, 0
	addli r2, zero, 28
	unlock r10
	xsignal r2, 0
	.loc	1 37 11                         # ieee-multiply.mlir:37:11
	lock zero, r10
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	ew_cfg r11, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1024
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r1, 4
	addli r1, zero, 33
	hp_ssmul r3, r3, r3, 0
	unlock r10
	xsignal r1, 0
	ori r25, r24, 3712
	.loc	1 38 11                         # ieee-multiply.mlir:38:11
	beq r20, r10, .LBB0_47
.LBB0_52:                               #   in Loop: Header=BB0_12 Depth=1
	beq r20, r12, .LBB0_74
# %bb.53:                               # %.thread35
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 40 11                         # ieee-multiply.mlir:40:11
	bneq r9, zero, .LBB0_78
.LBB0_54:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 41 11                         # ieee-multiply.mlir:41:11
	bneq r20, r12, .LBB0_79
.LBB0_55:                               # %vector.ph43
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 8
	storeli.w r25, -84(r30)                 # 4-byte Folded Spill
	xwait r1, 0
	addli r1, zero, 11
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	addli r1, zero, 54
	xwait r1, 0
	xfence
	zext_int2long r[1:2], zero
	mfence { lm, sm, gm }
	j .LBB0_57
.LBB0_56:                               # %vector.body44
                                        #   in Loop: Header=BB0_57 Depth=2
	addli r9, r3, 2308
	addli.d r[1:2], r[1:2], 8
	addli r6, r3, 2316
	addli r5, r3, 2304
	addli r8, r3, 2320
	stores.w r23, 0(r9)
	load.d r[9:10], -8(r30)                 # 8-byte Folded Reload
	stores.w r20, 0(r6)
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
	stores.w r27, 0(r3)
	beq r9, zero, .LBB0_73
.LBB0_57:                               # %vector.body44
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
	loads.w r27, 0(r8)
	loads.w r26, 0(r5)
	loads.w r8, 1160(r3)
	loads.w r5, 1168(r3)
	loads.w r20, 0(r4)
	ori r4, r21, 132
	add.s r6, r3, r6
	add.s r4, r3, r4
	loads.w r23, 0(r4)
	loads.w r4, 0(r6)
	ori r6, r21, 152
	add.s r6, r3, r6
	loads.w r7, 0(r6)
	loads.w r6, 1172(r3)
	bneq r15, zero, .LBB0_59
# %bb.58:                               # %vector.body44
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	loads.w r15, 1152(r3)
	.loc	1 41 11                         # ieee-multiply.mlir:41:11
	beq r18, zero, .LBB0_60
	j .LBB0_61
.LBB0_59:                               #   in Loop: Header=BB0_57 Depth=2
	loadli.w r15,  -16(r30)                 # 4-byte Folded Reload
	add.s r15, r3, r15
	loads.w r15, 0(r15)
	bneq r18, zero, .LBB0_61
.LBB0_60:                               # %vector.body44
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r23, r12, 0
.LBB0_61:                               # %vector.body44
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 41 11                         # ieee-multiply.mlir:41:11
	beq r17, zero, .LBB0_67
# %bb.62:                               # %vector.body44
                                        #   in Loop: Header=BB0_57 Depth=2
	beq r16, zero, .LBB0_68
.LBB0_63:                               # %vector.body44
                                        #   in Loop: Header=BB0_57 Depth=2
	beq r14, zero, .LBB0_69
.LBB0_64:                               # %vector.body44
                                        #   in Loop: Header=BB0_57 Depth=2
	beq r13, zero, .LBB0_70
.LBB0_65:                               # %vector.body44
                                        #   in Loop: Header=BB0_57 Depth=2
	beq r11, zero, .LBB0_71
.LBB0_66:                               # %vector.body44
                                        #   in Loop: Header=BB0_57 Depth=2
	bneq r9, zero, .LBB0_56
	j .LBB0_72
.LBB0_67:                               # %vector.body44
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r24, r8, 0
	.loc	1 41 11                         # ieee-multiply.mlir:41:11
	bneq r16, zero, .LBB0_63
.LBB0_68:                               # %vector.body44
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r20, r10, 0
	.loc	1 41 11                         # ieee-multiply.mlir:41:11
	bneq r14, zero, .LBB0_64
.LBB0_69:                               # %vector.body44
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r26, r5, 0
	.loc	1 41 11                         # ieee-multiply.mlir:41:11
	bneq r13, zero, .LBB0_65
.LBB0_70:                               # %vector.body44
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r27, r6, 0
	.loc	1 41 11                         # ieee-multiply.mlir:41:11
	bneq r11, zero, .LBB0_66
.LBB0_71:                               # %vector.body44
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r7, r19, 0
	.loc	1 41 11                         # ieee-multiply.mlir:41:11
	bneq r9, zero, .LBB0_56
.LBB0_72:                               # %vector.body44
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r4, r25, 0
	j .LBB0_56
.LBB0_73:                               # %.thread40
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 41 11                         # ieee-multiply.mlir:41:11
	addli r1, zero, 9
	mfence { sm }
	.loc	1 25 11 is_stmt 1               # ieee-multiply.mlir:25:11
	core_id r20
	addli r10, zero, 2
	addli r11, zero, 1
	addli r12, zero, 3
	addli r23, zero, 128
	lui r13, 4
	lui r24, 8
	.loc	1 41 11                         # ieee-multiply.mlir:41:11
	xsignal r1, 0
	addli r1, zero, 12
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r1, 0
	addli r1, zero, 55
	xsignal r1, 0
	loadli.w r9,  -40(r30)                  # 4-byte Folded Reload
	load.d r[14:15], -48(r30)               # 8-byte Folded Reload
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	loadli.w r25,  -84(r30)                 # 4-byte Folded Reload
	.loc	1 42 11                         # ieee-multiply.mlir:42:11
	beq r9, zero, .LBB0_81
	j .LBB0_84
.LBB0_74:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 38 11                         # ieee-multiply.mlir:38:11
	addli r2, zero, 39
	ori r3, r24, 2944
	addli r5, zero, 41
	ori r4, r24, 3584
	addli r1, zero, 0
	xwait r2, 0
	addli r2, zero, 42
	xwait r2, 0
	lock zero, r12
	ori r2, r13, 2944
	rs_cfg zero, r11, r11, 1
	rs_cfg zero, r11, zero, 3
	rs_col r2, r3, r23, 0
	addli r3, zero, 40
	unlock r12
	xsignal r3, 0
	addli r3, zero, 43
	xsignal r5, 0
	xwait r3, 0
	addli r3, zero, 46
	xwait r3, 0
	lock zero, r12
	ori r3, r24, 3456
	rs_cfg zero, r11, r11, 1
	rs_cfg zero, r11, zero, 3
	rs_col r3, r4, r11, 0
	addli r4, zero, 44
	unlock r12
	xsignal r4, 0
	addli r4, zero, 45
	xsignal r4, 0
	xwait r5, 0
	xwait r4, 0
	addli r4, zero, 49
	lui r5, 784384
	xwait r4, 0
	lock zero, r10
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r5, zero, 0
	ew_cfg zero, zero, zero, 2
	ew_cfg r11, zero, zero, 3
.LBB0_75:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r1, r25
	add.s r5, r1, r2
	addli r1, r1, 128
	dsmadd r4, r5, r3, 0
	bneq r1, r13, .LBB0_75
# %bb.76:                               # %.critedge8
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 42
	unlock r10
	xsignal r1, 0
	addli r1, zero, 46
	xsignal r1, 0
	addli r1, zero, 47
	xsignal r1, 0
	.loc	1 40 11                         # ieee-multiply.mlir:40:11
	addli r1, zero, 29
	xwait r1, 0
	addli r1, zero, 53
	xwait r1, 0
	addli r1, zero, 4
	lock zero, r12
	rs_cfg zero, r23, r1, 1
	addli r1, zero, 2816
	rs_cfg zero, r23, zero, 3
	loadli.w r2,  -12(r30)                  # 4-byte Folded Reload
	rs_col r2, r1, r11, 0
	addli r1, zero, 30
	unlock r12
	xsignal r1, 0
	addli r1, zero, 52
	xsignal r1, 0
	addli r1, zero, 50
.LBB0_77:                               # %.thread35
                                        #   in Loop: Header=BB0_12 Depth=1
	xsignal r1, 0
	beq r9, zero, .LBB0_54
.LBB0_78:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 50
	xwait r1, 0
	addli r1, zero, 55
	xwait r1, 0
	lock zero, r10
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 127
	ew_cfg zero, r1, zero, 2
	ew_cfg r11, zero, zero, 3
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -16(r30)                  # 4-byte Folded Reload
	dsmul r2, r1, r1, 0
	addli r1, zero, 54
	unlock r10
	xsignal r1, 0
	.loc	1 41 11                         # ieee-multiply.mlir:41:11
	beq r20, r12, .LBB0_55
.LBB0_79:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 42 11                         # ieee-multiply.mlir:42:11
	beq r20, r10, .LBB0_83
# %bb.80:                               #   in Loop: Header=BB0_12 Depth=1
	bneq r9, zero, .LBB0_84
.LBB0_81:                               # %.critedge12
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	ori r1, r21, 640
	.loc	1 51 11 is_stmt 1               # ieee-multiply.mlir:51:11
	bneq r20, r10, .LBB0_85
.LBB0_82:                               # %.thread36
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r2, zero, 21
	addli r3, zero, 2304
	xwait r2, 0
	addli r2, zero, 36
	xwait r2, 0
	lock zero, zero
	ds_cfg r10, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r23, zero, 13
	ds_cfg r11, zero, 14
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	shuffle_batch r3, r2, r11, 4
	addli r2, zero, 22
	unlock zero
	xsignal r2, 0
	addli r2, zero, 37
	j .LBB0_90
.LBB0_83:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 42 11                         # ieee-multiply.mlir:42:11
	addli r1, zero, 20
	addli r2, zero, 2304
	xwait r1, 0
	addli r1, zero, 30
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 2816
	ds_cfg r10, zero, 0
	ds_cfg r11, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r11, zero, 13
	shuffle_coa r1, r2, r23, 4
	addli r1, zero, 21
	unlock zero
	xsignal r1, 0
	addli r1, zero, 31
	xsignal r1, 0
	beq r9, zero, .LBB0_81
.LBB0_84:                               # %.critedge10
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r1, zero, 31
	.loc	1 42 11                         # ieee-multiply.mlir:42:11
	addli r2, zero, 34
	.loc	1 50 11 is_stmt 1               # ieee-multiply.mlir:50:11
	addli r4, zero, 1
	addli r5, zero, 1
	addli r6, zero, 1
	.loc	1 42 11                         # ieee-multiply.mlir:42:11
	xwait r1, 0
	xwait r2, 0
	lock zero, r10
	addli r2, zero, 2816
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r23, zero, zero, 3
	loadli.w r3,  -36(r30)                  # 4-byte Folded Reload
	ssreduce r3, r2, 0
	addli r2, zero, 32
	unlock r10
	xsignal r2, 0
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	lock zero, r10
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	ew_cfg r11, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1024
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r1, 4
	addli r1, zero, 6
	hp_ssmul r3, r3, r3, 0
	unlock r10
	xsignal r1, 0
	.loc	1 49 11                         # ieee-multiply.mlir:49:11
	lock zero, r10
	ew_cfg zero, zero, zero, 1
	loadli.w r1,  -88(r30)                  # 4-byte Folded Reload
	ewcoeff_cfg r2, zero, r1, 0
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	addli r2, r3, 0
	addli r1, zero, 35
	.loc	1 49 11                         # ieee-multiply.mlir:49:11
	ew_cfg zero, zero, zero, 2
	ew_cfg r11, zero, zero, 3
	dsmadd r3, r3, r3, 0
	unlock r10
	xsignal r1, 0
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	xwait r1, 0
	xfence
	jal _ZN3xpu10math_rsqrtEPU3AS2fS1_iii
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	load.d r[14:15], -48(r30)               # 8-byte Folded Reload
	loadli.w r9,  -40(r30)                  # 4-byte Folded Reload
	addli r1, zero, 36
	lui r13, 4
	addli r12, zero, 3
	addli r11, zero, 1
	addli r10, zero, 2
	xsignal r1, 0
	ori r1, r21, 640
	.loc	1 51 11                         # ieee-multiply.mlir:51:11
	beq r20, r10, .LBB0_82
.LBB0_85:                               #   in Loop: Header=BB0_12 Depth=1
	beq r20, r12, .LBB0_89
# %bb.86:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 52 23                         # ieee-multiply.mlir:52:23
	bneq r9, zero, .LBB0_91
.LBB0_87:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 74 11                         # ieee-multiply.mlir:74:11
	beq r20, r12, .LBB0_92
.LBB0_88:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 75 11                         # ieee-multiply.mlir:75:11
	beq r9, zero, .LBB0_10
	j .LBB0_103
.LBB0_89:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 51 11                         # ieee-multiply.mlir:51:11
	addli r2, zero, 22
	xwait r2, 0
	addli r2, zero, 57
	xwait r2, 0
	addli r2, zero, 4
	lock zero, r12
	rs_cfg zero, r11, r2, 0
	addli r2, zero, 2304
	rs_cfg zero, r11, zero, 2
	rs_row r1, r2, r23, 0
	addli r2, zero, 23
	unlock r12
	xsignal r2, 0
	addli r2, zero, 56
.LBB0_90:                               #   in Loop: Header=BB0_12 Depth=1
	xsignal r2, 0
	.loc	1 52 23                         # ieee-multiply.mlir:52:23
	beq r9, zero, .LBB0_87
.LBB0_91:                               #   in Loop: Header=BB0_12 Depth=1
	addli r2, zero, 37
	xwait r2, 0
	addli r2, zero, 52
	xwait r2, 0
	xfence
	lui r2, 260096
	mfence { lm, sm, gm }
	lock zero, r10
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	addli r2, zero, 127
	ew_cfg zero, r2, zero, 2
	ew_cfg r11, zero, zero, 3
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	loads.w r2, 0(r2)
	ewcoeff_cfg r2, zero, zero, 0
	loadli.w r2,  -12(r30)                  # 4-byte Folded Reload
	hp_ssmul r2, r2, r2, 0
	addli r2, zero, 38
	unlock r10
	xsignal r2, 0
	addli r2, zero, 51
	xsignal r2, 0
	.loc	1 74 11                         # ieee-multiply.mlir:74:11
	bneq r20, r12, .LBB0_88
.LBB0_92:                               # %vector.ph
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r2, zero, 23
	xwait r2, 0
	addli r2, zero, 48
	xwait r2, 0
	addli r2, zero, 51
	xwait r2, 0
	addli r2, zero, 56
	xwait r2, 0
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_94
.LBB0_93:                               # %vector.body
                                        #   in Loop: Header=BB0_94 Depth=2
	load.d r[13:14], -8(r30)                # 8-byte Folded Reload
	addli.d r[2:3], r[2:3], 4
	addli r5, r4, 2316
	addli r8, r4, 2304
	stores.w r9, 0(r5)
	addli r5, r4, 2312
	addli r4, r4, 2308
	stores.w r7, 0(r8)
	setneq.d r6, r[2:3], r[13:14]
	stores.w r10, 0(r5)
	stores.w r12, 0(r4)
	beq r6, zero, .LBB0_102
.LBB0_94:                               # %vector.body
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r4, r2, 7
	ori r5, r24, 3840
	ori r7, r24, 3968
	lui r8, 9
	lui r15, 12
	add.s r6, r4, r25
	add.s r5, r4, r5
	add.s r7, r4, r7
	add.s r8, r4, r8
	slli r4, r2, 2
	loads.w r9, 0(r6)
	add.s r6, r4, r1
	loads.w r10, 0(r7)
	ori r7, r21, 644
	loads.w r12, 0(r5)
	loads.w r5, 0(r8)
	loads.w r13, 0(r6)
	add.s r6, r4, r7
	ori r7, r21, 648
	loads.w r14, 0(r6)
	add.s r6, r4, r7
	ori r7, r21, 652
	loads.w r11, 0(r6)
	add.s r6, r4, r7
	ori r7, r15, 3724
	loads.w r8, 0(r6)
	add.s r6, r4, r7
	ori r7, r15, 3720
	ori r15, r15, 3716
	add.s r15, r4, r15
	add.s r7, r4, r7
	loads.w r6, 0(r6)
	.loc	1 59 24                         # ieee-multiply.mlir:59:24
	and r9, r9, r22
	.loc	1 74 11                         # ieee-multiply.mlir:74:11
	loads.w r15, 0(r15)
	.loc	1 60 24                         # ieee-multiply.mlir:60:24
	and r13, r13, r22
	.loc	1 63 24                         # ieee-multiply.mlir:63:24
	seteq r16, r9, r28
	.loc	1 66 25                         # ieee-multiply.mlir:66:25
	seteq r17, r13, zero
	.loc	1 70 27                         # ieee-multiply.mlir:70:27
	max.u r19, r9, r13
	.loc	1 64 24                         # ieee-multiply.mlir:64:24
	seteq r18, r13, r28
	.loc	1 65 25                         # ieee-multiply.mlir:65:25
	seteq r9, r9, zero
	.loc	1 74 11                         # ieee-multiply.mlir:74:11
	loads.w r13, 0(r7)
	.loc	1 70 27                         # ieee-multiply.mlir:70:27
	setlt.u r7, r28, r19
	.loc	1 67 29                         # ieee-multiply.mlir:67:29
	and r16, r16, r17
	.loc	1 68 29                         # ieee-multiply.mlir:68:29
	and r9, r9, r18
	.loc	1 69 27                         # ieee-multiply.mlir:69:27
	or r9, r16, r9
	.loc	1 71 23                         # ieee-multiply.mlir:71:23
	or r16, r7, r9
	lui r9, 523264
	lui r7, 523264
	.loc	1 73 25                         # ieee-multiply.mlir:73:25
	bneq r16, zero, .LBB0_96
# %bb.95:                               # %vector.body
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	loadli.w r7,  -12(r30)                  # 4-byte Folded Reload
	add.s r7, r4, r7
	loads.w r7, 0(r7)
.LBB0_96:                               # %vector.body
                                        #   in Loop: Header=BB0_94 Depth=2
	and r12, r12, r22
	and r14, r14, r22
	seteq r16, r12, r28
	seteq r19, r12, zero
	seteq r17, r14, zero
	seteq r18, r14, r28
	max.u r12, r12, r14
	setlt.u r12, r28, r12
	and r14, r16, r17
	and r16, r19, r18
	or r14, r14, r16
	or r14, r12, r14
	lui r12, 523264
	.loc	1 73 25                         # ieee-multiply.mlir:73:25
	bneq r14, zero, .LBB0_98
# %bb.97:                               # %vector.body
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r12, r15, 0
.LBB0_98:                               # %vector.body
                                        #   in Loop: Header=BB0_94 Depth=2
	and r10, r10, r22
	and r11, r11, r22
	seteq r14, r10, r28
	seteq r17, r10, zero
	seteq r15, r11, zero
	seteq r16, r11, r28
	max.u r10, r10, r11
	setlt.u r10, r28, r10
	and r11, r14, r15
	and r14, r17, r16
	or r11, r11, r14
	or r11, r10, r11
	lui r10, 523264
	.loc	1 73 25                         # ieee-multiply.mlir:73:25
	bneq r11, zero, .LBB0_100
# %bb.99:                               # %vector.body
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r10, r13, 0
.LBB0_100:                              # %vector.body
                                        #   in Loop: Header=BB0_94 Depth=2
	and r5, r5, r22
	and r8, r8, r22
	seteq r11, r5, r28
	seteq r15, r5, zero
	seteq r13, r8, zero
	seteq r14, r8, r28
	max.u r5, r5, r8
	setlt.u r5, r28, r5
	and r8, r11, r13
	and r11, r15, r14
	or r8, r8, r11
	or r5, r5, r8
	.loc	1 73 25                         # ieee-multiply.mlir:73:25
	bneq r5, zero, .LBB0_93
# %bb.101:                              # %vector.body
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r9, r6, 0
	j .LBB0_93
.LBB0_102:                              # %middle.block
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 74 11 is_stmt 1               # ieee-multiply.mlir:74:11
	addli r1, zero, 24
	mfence { sm }
	addli r10, zero, 2
	addli r11, zero, 1
	addli r12, zero, 3
	lui r13, 4
	xsignal r1, 0
	addli r1, zero, 49
	xsignal r1, 0
	addli r1, zero, 53
	xsignal r1, 0
	addli r1, zero, 57
	xsignal r1, 0
	loadli.w r9,  -40(r30)                  # 4-byte Folded Reload
	load.d r[14:15], -48(r30)               # 8-byte Folded Reload
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	.loc	1 75 11                         # ieee-multiply.mlir:75:11
	beq r9, zero, .LBB0_10
.LBB0_103:                              #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 24
	addli r2, zero, 512
	xwait r1, 0
	lock zero, r10
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 127
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 2304
	ew_cfg r11, zero, zero, 3
	dsmadd r1, r1, r2, 0
	addli r1, zero, 25
	unlock r10
	xsignal r1, 0
	j .LBB0_10
.LBB0_104:
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r3, zero, 2
	addli r9, zero, 1
	addli r4, zero, 4
	xwait r3, 0
	xwait r4, 0
	ble.s r2, r1, .LBB0_105
	j .LBB0_9
.LBB0_105:                              # %._crit_edge
	beq r9, zero, .LBB0_107
# %bb.106:
	addli r1, zero, 3
	addli r2, zero, 5
	xsignal r1, 0
	xsignal r2, 0
.LBB0_107:                              # %.critedge14
	.loc	1 2 3 is_stmt 1                 # ieee-multiply.mlir:2:3
	xsignal zero, 0
	bneq r20, zero, .LBB0_109
# %bb.108:
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
.LBB0_109:
	.loc	1 2 3 epilogue_begin            # ieee-multiply.mlir:2:3
	addli sp, sp, 128
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/native-activation-m6u_u1xw" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
