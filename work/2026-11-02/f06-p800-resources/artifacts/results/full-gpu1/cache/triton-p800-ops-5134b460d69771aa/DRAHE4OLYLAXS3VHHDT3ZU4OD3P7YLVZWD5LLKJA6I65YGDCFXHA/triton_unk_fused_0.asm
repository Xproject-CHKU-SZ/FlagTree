	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/native-activation-xyj61su7" "ieee-multiply.mlir"
	.loc	1 2 0                           # ieee-multiply.mlir:2:0
	.cfi_startproc
# %bb.0:
	addli sp, sp, -192
	addli r1, zero, 1
.Ltmp0:
	.loc	1 26 11 prologue_end            # ieee-multiply.mlir:26:11
	core_id r23
	addli r30, sp, 128
	xsignal_mode_cfg r1
	beq r23, zero, .LBB0_2
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
	addli r2, zero, 4
	csr_set csr3, r1
	addli r1, zero, 3
	sync_group
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 7
	addli r2, zero, 10
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 15
	addli r2, zero, 23
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 29
	addli r2, zero, 35
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 39
	addli r2, zero, 37
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 43
	addli r2, zero, 41
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 46
	addli r2, zero, 50
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 52
	addli r2, zero, 54
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
	bneq r23, r3, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, zero, 3
	addli r7, zero, 4
	load.d r[4:5], 8(r30)
	addli r8, zero, 512
	addli r9, zero, 0
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
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
	ble.s r2, r1, .LBB0_103
	j .LBB0_8
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r3, zero, 5
	bneq r23, r3, .LBB0_7
# %bb.6:
	addli r3, zero, 2
	addli r9, zero, 1
	xwait r3, 0
	ble.s r2, r1, .LBB0_103
	j .LBB0_8
.LBB0_7:
	addli r9, zero, 0
	ble.s r2, r1, .LBB0_103
.LBB0_8:                                # %.lr.ph
	sext_int2long r[3:4], r1
	sext_int2long r[1:2], r2
	lui r12, 4
	addli r24, zero, 2
	addli r10, zero, 1
	addli r11, zero, 3
	lui r25, 260096
	addli r26, zero, 128
	lui r27, 8
	lui r21, 12
	lui r20, 522240
	storeli.w r9, -32(r30)                  # 4-byte Folded Spill
	store.d r[1:2], -64(r30)                # 8-byte Folded Spill
	lui r1, 239665
	lui r2, 524287
	store.d r[3:4], -24(r30)                # 8-byte Folded Spill
	addli r4, zero, 15
	addli r3, zero, 127
	ori r1, r1, 623
	ori r22, r2, 4095
	zext_int2long r[13:14], r3
	storeli.w r1, -88(r30)                  # 4-byte Folded Spill
	zext_int2long r[1:2], zero
	store.d r[13:14], -40(r30)              # 8-byte Folded Spill
	store.d r[1:2], -72(r30)                # 8-byte Folded Spill
	zext_int2long r[1:2], r4
	store.d r[1:2], -80(r30)                # 8-byte Folded Spill
	ori r1, r12, 2304
	storeli.w r1, -28(r30)                  # 4-byte Folded Spill
	j .LBB0_11
.LBB0_9:                                # %.thread35
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 76 11 is_stmt 1               # ieee-multiply.mlir:76:11
	addli r1, zero, 22
	mfence { sm }
	addli r10, zero, 1
	addli r11, zero, 3
	lui r12, 4
	xsignal r1, 0
	addli r1, zero, 46
	xsignal r1, 0
	addli r1, zero, 50
	xsignal r1, 0
	addli r1, zero, 54
	xsignal r1, 0
	loadli.w r9,  -32(r30)                  # 4-byte Folded Reload
	load.d r[13:14], -40(r30)               # 8-byte Folded Reload
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	load.d r[1:2], -24(r30)                 # 8-byte Folded Reload
	load.d r[3:4], -64(r30)                 # 8-byte Folded Reload
	addli.d r[1:2], r[1:2], 1
	store.d r[1:2], -24(r30)                # 8-byte Folded Spill
	setlt.sl r1, r[1:2], r[3:4]
	beq r1, zero, .LBB0_103
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_54 Depth 2
                                        #     Child Loop BB0_62 Depth 2
                                        #     Child Loop BB0_90 Depth 2
	.loc	1 5 14 is_stmt 1                # ieee-multiply.mlir:5:14
	beq r9, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 4
	xwait r1, 0
	lock zero, r24
	lui r1, 274432
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 31
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 512
	ew_cfg r10, zero, zero, 3
	ssaux r1, 0
	.loc	1 6 14                          # ieee-multiply.mlir:6:14
	addli r1, zero, 7
	.loc	1 5 14                          # ieee-multiply.mlir:5:14
	unlock r24
	.loc	1 6 14                          # ieee-multiply.mlir:6:14
	xwait r1, 0
	lock zero, r24
	addli r1, zero, 127
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 640
	ew_cfg r10, zero, zero, 3
	ssaux r1, 0
	addli r1, zero, 5
	unlock r24
	xsignal r1, 0
.LBB0_13:                               # %.critedge2
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 14 is_stmt 0                # ieee-multiply.mlir:0:14
	loadli.w r1,  40(r30)
	load.d r[2:3], -24(r30)                 # 8-byte Folded Reload
	.loc	1 17 10 is_stmt 1               # ieee-multiply.mlir:17:10
	addli r4, zero, 7
	div.s r1, r2, r1
	loadli.w r2,  36(r30)
	div.s r3, r1, r2
	.loc	1 78 11                         # ieee-multiply.mlir:78:11
	sext_int2long r[1:2], r3
	.loc	1 17 10                         # ieee-multiply.mlir:17:10
	sll.d r[4:5], r[1:2], r4
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	store.d r[4:5], -48(r30)                # 8-byte Folded Spill
	bneq r23, r11, .LBB0_18
# %bb.14:                               #   in Loop: Header=BB0_11 Depth=1
	addli r4, zero, 10
	xwait r4, 0
	xfence
	setlti r4, r3, 16
	mfence { lm, sm, gm }
	load.d r[5:6], -72(r30)                 # 8-byte Folded Reload
.LBB0_15:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	setlt.ul r7, r[5:6], r[13:14]
	addli r8, r5, 1152
	addli.d r[5:6], r[5:6], 1
	stores.b r4, 0(r8)
	bneq r7, zero, .LBB0_15
# %bb.16:                               # %.thread32
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	load.d r[4:5], -80(r30)                 # 8-byte Folded Reload
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	mfence { sm }
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	min.sl r[4:5], r[1:2], r[4:5]
	addli.d r[4:5], r[4:5], 1
	max.sl r[1:2], r[4:5], r[1:2]
	sub.s r2, r1, r3
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	addli r1, zero, 8
.LBB0_17:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 0 is_stmt 0                 # ieee-multiply.mlir:0:0
	xsignal r1, 0
	j .LBB0_24
.LBB0_18:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 23 11 is_stmt 1               # ieee-multiply.mlir:23:11
	load.d r[3:4], -80(r30)                 # 8-byte Folded Reload
	min.sl r[3:4], r[1:2], r[3:4]
	addli.d r[3:4], r[3:4], 1
	max.sl r[3:4], r[3:4], r[1:2]
	sub.sl r[2:3], r[3:4], r[1:2]
	bneq r23, r10, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli.d r[5:6], r[2:3], 0
	zext_int2long r[1:2], zero
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	setlt.sl r1, r[1:2], r[5:6]
	addli.d r[3:4], r[5:6], 0
	addli r2, zero, 15
	xwait r2, 0
	bneq r1, zero, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_11 Depth=1
	lock zero, r24
	addli r1, zero, 127
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1280
	ew_cfg r10, zero, zero, 3
	ssaux r1, 0
	unlock r24
.LBB0_21:                               # %.thread21
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 11
	addli.d r[2:3], r[3:4], 0
	xsignal r1, 0
	j .LBB0_24
.LBB0_22:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 6
	bneq r23, r1, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli.d r[6:7], r[2:3], 0
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	load.d r[1:2], -48(r30)                 # 8-byte Folded Reload
	addli r3, zero, 11
	addli r5, zero, 256
	xwait r3, 0
	load.d r[3:4], 0(r30)
	sll.d r[1:2], r[1:2], r10
	add.ul r[1:2], r[3:4], r[1:2]
	addli r3, zero, 4
	addli r4, zero, 1280
	lock zero, r3
	dma_cfg zero, r10, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r4, r1, r5, 3
	addli r1, zero, 512
	dma_cfg r1, r5, r6, 4
	dma_run zero
	unlock r3
	addli.d r[2:3], r[6:7], 0
	addli r1, zero, 12
	j .LBB0_17
.LBB0_24:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	store.d r[2:3], -56(r30)                # 8-byte Folded Spill
	.loc	1 29 11 is_stmt 1               # ieee-multiply.mlir:29:11
	beq r9, zero, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 12
	xwait r1, 0
	lock zero, r24
	addli r1, zero, 127
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r25, r25, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1280
	ew_cfg r10, zero, zero, 3
	dsmadd r1, r1, zero, 0
	addli r1, zero, 13
	unlock r24
	xsignal r1, 0
.LBB0_26:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	zext_int2long r[1:2], r26
	.loc	1 32 11 is_stmt 1               # ieee-multiply.mlir:32:11
	store.d r[1:2], -8(r30)                 # 8-byte Folded Spill
	bneq r23, r11, .LBB0_45
# %bb.27:                               # %vector.ph46
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 5
	xwait r1, 0
	addli r1, zero, 8
	xwait r1, 0
	addli r1, zero, 13
	xwait r1, 0
	addli r1, zero, 23
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	load.d r[1:2], -72(r30)                 # 8-byte Folded Reload
	j .LBB0_29
.LBB0_28:                               # %vector.body47
                                        #   in Loop: Header=BB0_29 Depth=2
	stores.w r10, 1804(r3)
	load.d r[10:11], -8(r30)                # 8-byte Folded Reload
	addli.d r[1:2], r[1:2], 8
	stores.w r9, 1800(r3)
	stores.w r8, 1796(r3)
	stores.w r12, 1792(r3)
	stores.w r7, 1820(r3)
	stores.w r6, 1816(r3)
	stores.w r5, 1812(r3)
	stores.w r4, 1808(r3)
	setneq.d r10, r[1:2], r[10:11]
	beq r10, zero, .LBB0_47
.LBB0_29:                               # %vector.body47
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r3, r1, 2
	loads.bu r12, 1152(r1)
	loads.bu r25, 1153(r1)
	loads.bu r19, 1154(r1)
	loads.bu r18, 1155(r1)
	loads.bu r16, 1156(r1)
	loads.bu r14, 1157(r1)
	loads.bu r13, 1158(r1)
	loads.bu r11, 1159(r1)
	loads.w r10, 1292(r3)
	loads.w r9, 1288(r3)
	loads.w r8, 1284(r3)
	loads.w r7, 1308(r3)
	loads.w r6, 1304(r3)
	loads.w r5, 1300(r3)
	loads.w r4, 1296(r3)
	loads.w r24, 652(r3)
	loads.w r27, 648(r3)
	loads.w r28, 644(r3)
	loads.w r15, 668(r3)
	loads.w r17, 664(r3)
	loads.w r23, 660(r3)
	loads.w r26, 656(r3)
	bneq r12, zero, .LBB0_31
# %bb.30:                               # %vector.body47
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	loads.w r12, 640(r3)
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	beq r25, zero, .LBB0_32
	j .LBB0_33
.LBB0_31:                               #   in Loop: Header=BB0_29 Depth=2
	loads.w r12, 1280(r3)
	bneq r25, zero, .LBB0_33
.LBB0_32:                               # %vector.body47
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r8, r28, 0
.LBB0_33:                               # %vector.body47
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	beq r19, zero, .LBB0_39
# %bb.34:                               # %vector.body47
                                        #   in Loop: Header=BB0_29 Depth=2
	beq r18, zero, .LBB0_40
.LBB0_35:                               # %vector.body47
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	lui r27, 8
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	beq r16, zero, .LBB0_41
.LBB0_36:                               # %vector.body47
                                        #   in Loop: Header=BB0_29 Depth=2
	beq r14, zero, .LBB0_42
.LBB0_37:                               # %vector.body47
                                        #   in Loop: Header=BB0_29 Depth=2
	beq r13, zero, .LBB0_43
.LBB0_38:                               # %vector.body47
                                        #   in Loop: Header=BB0_29 Depth=2
	bneq r11, zero, .LBB0_28
	j .LBB0_44
.LBB0_39:                               # %vector.body47
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r9, r27, 0
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	bneq r18, zero, .LBB0_35
.LBB0_40:                               # %vector.body47
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r10, r24, 0
	lui r27, 8
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	bneq r16, zero, .LBB0_36
.LBB0_41:                               # %vector.body47
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r4, r26, 0
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	bneq r14, zero, .LBB0_37
.LBB0_42:                               # %vector.body47
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r5, r23, 0
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	bneq r13, zero, .LBB0_38
.LBB0_43:                               # %vector.body47
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, r17, 0
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	bneq r11, zero, .LBB0_28
.LBB0_44:                               # %vector.body47
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r7, r15, 0
	j .LBB0_28
.LBB0_45:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 33 11 is_stmt 1               # ieee-multiply.mlir:33:11
	bneq r23, r24, .LBB0_48
# %bb.46:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 16
	addli r2, zero, 1792
	xwait r1, 0
	addli r1, zero, 29
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 2304
	ds_cfg r24, zero, 0
	ds_cfg r10, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r10, zero, 13
	shuffle_coa r1, r2, r26, 4
	addli r1, zero, 17
	unlock zero
	xsignal r1, 0
	addli r1, zero, 24
	xsignal r1, 0
	j .LBB0_48
.LBB0_47:                               # %.thread33
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	addli r1, zero, 6
	mfence { sm }
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	core_id r23
	addli r24, zero, 2
	addli r10, zero, 1
	addli r11, zero, 3
	lui r25, 260096
	addli r26, zero, 128
	lui r12, 4
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	addli r1, zero, 14
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	loadli.w r9,  -32(r30)                  # 4-byte Folded Reload
	load.d r[13:14], -40(r30)               # 8-byte Folded Reload
.LBB0_48:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 33 11                         # ieee-multiply.mlir:33:11
	beq r9, zero, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 24
	addli r3, zero, 2304
	xwait r1, 0
	addli r1, zero, 35
	xwait r1, 0
	lock zero, r24
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r26, zero, zero, 3
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	ssreduce r2, r3, 0
	addli r3, zero, 25
	unlock r24
	xsignal r3, 0
	.loc	1 39 11                         # ieee-multiply.mlir:39:11
	lock zero, r24
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r25, zero, zero, 0
	ew_cfg r10, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 512
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r1, 4
	addli r1, zero, 30
	hp_ssmul r2, r2, r2, 0
	unlock r24
	xsignal r1, 0
.LBB0_50:                               # %.critedge4
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	ori r28, r27, 3200
	ori r1, r21, 3200
	.loc	1 40 11 is_stmt 1               # ieee-multiply.mlir:40:11
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	bneq r23, r24, .LBB0_52
# %bb.51:                               # %.critedge6.thread
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 14
	addli r2, zero, 1280
	xwait r1, 0
	addli r1, zero, 37
	xwait r1, 0
	lock zero, zero
	ori r1, r27, 2432
	ds_cfg r24, zero, 0
	ds_cfg r26, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r26, zero, 13
	shuffle_coa r1, r2, r10, 4
	addli r1, zero, 15
	unlock zero
	xsignal r1, 0
	addli r1, zero, 36
	xsignal r1, 0
	addli r1, zero, 30
	xwait r1, 0
	addli r1, zero, 41
	xwait r1, 0
	lock zero, zero
	ori r1, r27, 3072
	ds_cfg r24, zero, 0
	ds_cfg r10, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r10, zero, 13
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	shuffle_coa r1, r2, r10, 4
	addli r1, zero, 31
	unlock zero
	xsignal r1, 0
	addli r1, zero, 40
	xsignal r1, 0
	.loc	1 42 11                         # ieee-multiply.mlir:42:11
	addli r1, zero, 25
	xwait r1, 0
	addli r1, zero, 44
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 32
	ds_cfg r24, zero, 0
	ds_cfg r1, zero, 1
	addli r1, zero, 2304
	ds_cfg r26, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r10, zero, 13
	shuffle_coa r1, r28, r26, 4
	addli r1, zero, 26
	unlock zero
	xsignal r1, 0
	addli r1, zero, 45
	j .LBB0_56
.LBB0_52:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 40 11                         # ieee-multiply.mlir:40:11
	bneq r23, r11, .LBB0_57
# %bb.53:                               #   in Loop: Header=BB0_11 Depth=1
	addli r2, zero, 36
	ori r3, r27, 2432
	addli r5, zero, 38
	ori r4, r27, 3072
	addli r1, zero, 0
	xwait r2, 0
	addli r2, zero, 39
	xwait r2, 0
	lock zero, r11
	ori r2, r12, 2432
	rs_cfg zero, r10, r10, 1
	rs_cfg zero, r10, zero, 3
	rs_col r2, r3, r26, 0
	addli r3, zero, 37
	unlock r11
	xsignal r3, 0
	addli r3, zero, 40
	xsignal r5, 0
	xwait r3, 0
	addli r3, zero, 43
	xwait r3, 0
	lock zero, r11
	ori r3, r27, 2944
	rs_cfg zero, r10, r10, 1
	rs_cfg zero, r10, zero, 3
	rs_col r3, r4, r10, 0
	addli r4, zero, 41
	unlock r11
	xsignal r4, 0
	addli r4, zero, 42
	xsignal r4, 0
	xwait r5, 0
	xwait r4, 0
	addli r4, zero, 46
	xwait r4, 0
	lock zero, r24
	lui r4, 784384
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r25, r4, zero, 0
	ew_cfg zero, zero, zero, 2
	ew_cfg r10, zero, zero, 3
.LBB0_54:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r1, r28
	add.s r5, r1, r2
	addli r1, r1, 128
	dsmadd r4, r5, r3, 0
	bneq r1, r12, .LBB0_54
# %bb.55:                               # %.critedge6
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 39
	unlock r24
	xsignal r1, 0
	addli r1, zero, 43
	xsignal r1, 0
	addli r1, zero, 44
	xsignal r1, 0
	.loc	1 42 11                         # ieee-multiply.mlir:42:11
	addli r1, zero, 26
	xwait r1, 0
	addli r1, zero, 50
	xwait r1, 0
	addli r1, zero, 4
	lock zero, r11
	rs_cfg zero, r26, r1, 1
	addli r1, zero, 2304
	rs_cfg zero, r26, zero, 3
	loadli.w r2,  -12(r30)                  # 4-byte Folded Reload
	rs_col r2, r1, r10, 0
	addli r1, zero, 27
	unlock r11
	xsignal r1, 0
	addli r1, zero, 49
	xsignal r1, 0
	addli r1, zero, 47
.LBB0_56:                               # %.thread28
                                        #   in Loop: Header=BB0_11 Depth=1
	xsignal r1, 0
.LBB0_57:                               # %.thread28
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	ori r1, r21, 3712
	.loc	1 42 11                         # ieee-multiply.mlir:42:11
	storeli.w r1, -16(r30)                  # 4-byte Folded Spill
	beq r9, zero, .LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 47
	xwait r1, 0
	addli r1, zero, 52
	xwait r1, 0
	lock zero, r24
	addli r1, zero, 127
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r25, 0
	ew_cfg zero, r1, zero, 2
	ew_cfg r10, zero, zero, 3
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -16(r30)                  # 4-byte Folded Reload
	dsmul r2, r1, r1, 0
	addli r1, zero, 51
	unlock r24
	xsignal r1, 0
.LBB0_59:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 43 11 is_stmt 1               # ieee-multiply.mlir:43:11
	bneq r23, r11, .LBB0_78
# %bb.60:                               # %vector.ph37
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 6
	storeli.w r28, -84(r30)                 # 4-byte Folded Spill
	zext_int2long r[2:3], zero
	xwait r1, 0
	addli r1, zero, 9
	xwait r1, 0
	addli r1, zero, 17
	xwait r1, 0
	addli r1, zero, 51
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	j .LBB0_62
.LBB0_61:                               # %vector.body38
                                        #   in Loop: Header=BB0_62 Depth=2
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	addli.d r[2:3], r[2:3], 8
	stores.w r24, 1804(r4)
	stores.w r26, 1800(r4)
	stores.w r1, 1796(r4)
	stores.w r17, 1792(r4)
	stores.w r7, 1820(r4)
	stores.w r13, 1816(r4)
	stores.w r12, 1812(r4)
	stores.w r27, 1808(r4)
	setneq.d r5, r[2:3], r[5:6]
	beq r5, zero, .LBB0_80
.LBB0_62:                               # %vector.body38
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r4, r2, 2
	ori r6, r21, 3720
	ori r1, r21, 3728
	ori r9, r21, 3732
	loads.bu r17, 1152(r2)
	loads.bu r23, 1153(r2)
	loads.bu r18, 1154(r2)
	loads.bu r16, 1155(r2)
	loads.bu r15, 1156(r2)
	loads.bu r14, 1157(r2)
	loads.bu r10, 1158(r2)
	loads.bu r8, 1159(r2)
	add.s r6, r4, r6
	add.s r5, r4, r1
	ori r1, r21, 3724
	add.s r9, r4, r9
	loads.w r28, 668(r4)
	loads.w r25, 664(r4)
	loads.w r19, 660(r4)
	loads.w r11, 656(r4)
	loads.w r26, 0(r6)
	ori r6, r21, 3740
	add.s r1, r4, r1
	loads.w r12, 0(r9)
	loads.w r27, 0(r5)
	loads.w r5, 648(r4)
	loads.w r9, 644(r4)
	add.s r6, r4, r6
	loads.w r24, 0(r1)
	ori r1, r21, 3716
	loads.w r7, 0(r6)
	ori r6, r21, 3736
	add.s r1, r4, r1
	add.s r6, r4, r6
	loads.w r1, 0(r1)
	loads.w r13, 0(r6)
	loads.w r6, 652(r4)
	bneq r17, zero, .LBB0_64
# %bb.63:                               # %vector.body38
                                        #   in Loop: Header=BB0_62 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	loads.w r17, 640(r4)
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	beq r23, zero, .LBB0_65
	j .LBB0_66
.LBB0_64:                               #   in Loop: Header=BB0_62 Depth=2
	loadli.w r17,  -16(r30)                 # 4-byte Folded Reload
	add.s r17, r4, r17
	loads.w r17, 0(r17)
	bneq r23, zero, .LBB0_66
.LBB0_65:                               # %vector.body38
                                        #   in Loop: Header=BB0_62 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r1, r9, 0
.LBB0_66:                               # %vector.body38
                                        #   in Loop: Header=BB0_62 Depth=2
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	beq r18, zero, .LBB0_72
# %bb.67:                               # %vector.body38
                                        #   in Loop: Header=BB0_62 Depth=2
	beq r16, zero, .LBB0_73
.LBB0_68:                               # %vector.body38
                                        #   in Loop: Header=BB0_62 Depth=2
	beq r15, zero, .LBB0_74
.LBB0_69:                               # %vector.body38
                                        #   in Loop: Header=BB0_62 Depth=2
	beq r14, zero, .LBB0_75
.LBB0_70:                               # %vector.body38
                                        #   in Loop: Header=BB0_62 Depth=2
	beq r10, zero, .LBB0_76
.LBB0_71:                               # %vector.body38
                                        #   in Loop: Header=BB0_62 Depth=2
	bneq r8, zero, .LBB0_61
	j .LBB0_77
.LBB0_72:                               # %vector.body38
                                        #   in Loop: Header=BB0_62 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r26, r5, 0
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	bneq r16, zero, .LBB0_68
.LBB0_73:                               # %vector.body38
                                        #   in Loop: Header=BB0_62 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r24, r6, 0
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	bneq r15, zero, .LBB0_69
.LBB0_74:                               # %vector.body38
                                        #   in Loop: Header=BB0_62 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r27, r11, 0
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	bneq r14, zero, .LBB0_70
.LBB0_75:                               # %vector.body38
                                        #   in Loop: Header=BB0_62 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r12, r19, 0
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	bneq r10, zero, .LBB0_71
.LBB0_76:                               # %vector.body38
                                        #   in Loop: Header=BB0_62 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r13, r25, 0
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	bneq r8, zero, .LBB0_61
.LBB0_77:                               # %vector.body38
                                        #   in Loop: Header=BB0_62 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r7, r28, 0
	j .LBB0_61
.LBB0_78:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 44 11 is_stmt 1               # ieee-multiply.mlir:44:11
	bneq r23, r24, .LBB0_81
# %bb.79:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 18
	addli r2, zero, 1792
	xwait r1, 0
	addli r1, zero, 27
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 2304
	ds_cfg r24, zero, 0
	ds_cfg r10, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r10, zero, 13
	shuffle_coa r1, r2, r26, 4
	addli r1, zero, 19
	unlock zero
	xsignal r1, 0
	addli r1, zero, 28
	xsignal r1, 0
	j .LBB0_81
.LBB0_80:                               # %.thread34
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	addli r1, zero, 7
	mfence { sm }
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	core_id r23
	addli r24, zero, 2
	addli r10, zero, 1
	addli r11, zero, 3
	lui r25, 260096
	addli r26, zero, 128
	lui r12, 4
	lui r27, 8
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	xsignal r1, 0
	addli r1, zero, 10
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	addli r1, zero, 52
	xsignal r1, 0
	loadli.w r9,  -32(r30)                  # 4-byte Folded Reload
	load.d r[13:14], -40(r30)               # 8-byte Folded Reload
	loadli.w r28,  -84(r30)                 # 4-byte Folded Reload
.LBB0_81:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 44 11                         # ieee-multiply.mlir:44:11
	beq r9, zero, .LBB0_83
# %bb.82:                               # %.critedge8
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 28
	addli r3, zero, 2304
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	addli r4, zero, 1
	addli r5, zero, 1
	addli r6, zero, 1
	.loc	1 44 11                         # ieee-multiply.mlir:44:11
	xwait r1, 0
	addli r1, zero, 31
	xwait r1, 0
	lock zero, r24
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r26, zero, zero, 3
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	ssreduce r2, r3, 0
	addli r3, zero, 29
	unlock r24
	xsignal r3, 0
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	lock zero, r24
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	addli r3, r2, 0
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r25, zero, zero, 0
	ew_cfg r10, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 512
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r1, 4
	addli r1, zero, 4
	hp_ssmul r2, r2, r2, 0
	unlock r24
	xsignal r1, 0
	.loc	1 51 11                         # ieee-multiply.mlir:51:11
	lock zero, r24
	ew_cfg zero, zero, zero, 1
	loadli.w r1,  -88(r30)                  # 4-byte Folded Reload
	ewcoeff_cfg r25, zero, r1, 0
	addli r1, zero, 32
	ew_cfg zero, zero, zero, 2
	ew_cfg r10, zero, zero, 3
	dsmadd r2, r2, r2, 0
	unlock r24
	xsignal r1, 0
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	xwait r1, 0
	xfence
	jal _ZN3xpu10math_rsqrtEPU3AS2fS1_iii
	load.d r[13:14], -40(r30)               # 8-byte Folded Reload
	loadli.w r9,  -32(r30)                  # 4-byte Folded Reload
	addli r1, zero, 33
	lui r12, 4
	addli r11, zero, 3
	addli r10, zero, 1
	xsignal r1, 0
.LBB0_83:                               # %.critedge10
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r1, 13
	ori r1, r1, 128
	.loc	1 53 11 is_stmt 1               # ieee-multiply.mlir:53:11
	bneq r23, r24, .LBB0_85
# %bb.84:                               # %.thread29
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r2, zero, 19
	addli r3, zero, 1792
	xwait r2, 0
	addli r2, zero, 33
	xwait r2, 0
	lock zero, zero
	ds_cfg r24, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r26, zero, 13
	ds_cfg r10, zero, 14
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	shuffle_batch r3, r2, r10, 4
	addli r2, zero, 20
	unlock zero
	xsignal r2, 0
	addli r2, zero, 34
	j .LBB0_99
.LBB0_85:                               #   in Loop: Header=BB0_11 Depth=1
	beq r23, r11, .LBB0_98
# %bb.86:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 54 23                         # ieee-multiply.mlir:54:23
	bneq r9, zero, .LBB0_100
.LBB0_87:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 76 11                         # ieee-multiply.mlir:76:11
	bneq r23, r11, .LBB0_101
.LBB0_88:                               # %vector.ph
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r2, zero, 21
	xwait r2, 0
	addli r2, zero, 45
	xwait r2, 0
	addli r2, zero, 48
	xwait r2, 0
	addli r2, zero, 53
	xwait r2, 0
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_90
.LBB0_89:                               # %vector.body
                                        #   in Loop: Header=BB0_90 Depth=2
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	addli.d r[2:3], r[2:3], 4
	stores.w r10, 1804(r4)
	stores.w r8, 1800(r4)
	stores.w r12, 1796(r4)
	stores.w r9, 1792(r4)
	setneq.d r5, r[2:3], r[5:6]
	beq r5, zero, .LBB0_9
.LBB0_90:                               # %vector.body
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r4, r2, 7
	ori r5, r27, 3328
	ori r7, r27, 3456
	ori r8, r27, 3584
	lui r11, 13
	ori r13, r21, 3212
	ori r15, r21, 3204
	add.s r6, r4, r28
	add.s r5, r4, r5
	add.s r7, r4, r7
	add.s r9, r4, r8
	slli r4, r2, 2
	loads.w r10, 0(r6)
	add.s r6, r4, r1
	loads.w r12, 0(r5)
	loads.w r5, 0(r9)
	loads.w r8, 0(r7)
	ori r7, r11, 132
	add.s r15, r4, r15
	loads.w r9, 0(r6)
	add.s r6, r4, r7
	ori r7, r11, 136
	loads.w r15, 0(r15)
	loads.w r14, 0(r6)
	add.s r6, r4, r7
	ori r7, r11, 140
	loads.w r11, 0(r6)
	add.s r6, r4, r7
	loads.w r7, 0(r6)
	add.s r6, r4, r13
	ori r13, r21, 3208
	add.s r13, r4, r13
	loads.w r6, 0(r6)
	.loc	1 61 24                         # ieee-multiply.mlir:61:24
	and r10, r10, r22
	.loc	1 76 11                         # ieee-multiply.mlir:76:11
	loads.w r13, 0(r13)
	.loc	1 62 24                         # ieee-multiply.mlir:62:24
	and r9, r9, r22
	.loc	1 65 24                         # ieee-multiply.mlir:65:24
	seteq r16, r10, r20
	.loc	1 68 25                         # ieee-multiply.mlir:68:25
	seteq r17, r9, zero
	.loc	1 66 24                         # ieee-multiply.mlir:66:24
	seteq r18, r9, r20
	.loc	1 72 27                         # ieee-multiply.mlir:72:27
	max.u r9, r10, r9
	.loc	1 67 25                         # ieee-multiply.mlir:67:25
	seteq r10, r10, zero
	.loc	1 72 27                         # ieee-multiply.mlir:72:27
	setlt.u r9, r20, r9
	.loc	1 69 29                         # ieee-multiply.mlir:69:29
	and r16, r16, r17
	.loc	1 70 29                         # ieee-multiply.mlir:70:29
	and r10, r10, r18
	.loc	1 71 27                         # ieee-multiply.mlir:71:27
	or r10, r16, r10
	.loc	1 73 23                         # ieee-multiply.mlir:73:23
	or r16, r9, r10
	lui r10, 523264
	lui r9, 523264
	.loc	1 75 25                         # ieee-multiply.mlir:75:25
	bneq r16, zero, .LBB0_92
# %bb.91:                               # %vector.body
                                        #   in Loop: Header=BB0_90 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	loadli.w r9,  -12(r30)                  # 4-byte Folded Reload
	add.s r9, r4, r9
	loads.w r9, 0(r9)
.LBB0_92:                               # %vector.body
                                        #   in Loop: Header=BB0_90 Depth=2
	and r12, r12, r22
	and r14, r14, r22
	seteq r16, r12, r20
	seteq r19, r12, zero
	seteq r17, r14, zero
	seteq r18, r14, r20
	max.u r12, r12, r14
	setlt.u r12, r20, r12
	and r14, r16, r17
	and r16, r19, r18
	or r14, r14, r16
	or r14, r12, r14
	lui r12, 523264
	.loc	1 75 25                         # ieee-multiply.mlir:75:25
	bneq r14, zero, .LBB0_94
# %bb.93:                               # %vector.body
                                        #   in Loop: Header=BB0_90 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r12, r15, 0
.LBB0_94:                               # %vector.body
                                        #   in Loop: Header=BB0_90 Depth=2
	and r8, r8, r22
	and r11, r11, r22
	seteq r14, r8, r20
	seteq r17, r8, zero
	seteq r15, r11, zero
	seteq r16, r11, r20
	max.u r8, r8, r11
	setlt.u r8, r20, r8
	and r11, r14, r15
	and r14, r17, r16
	or r11, r11, r14
	or r11, r8, r11
	lui r8, 523264
	.loc	1 75 25                         # ieee-multiply.mlir:75:25
	bneq r11, zero, .LBB0_96
# %bb.95:                               # %vector.body
                                        #   in Loop: Header=BB0_90 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r8, r13, 0
.LBB0_96:                               # %vector.body
                                        #   in Loop: Header=BB0_90 Depth=2
	and r5, r5, r22
	and r7, r7, r22
	seteq r11, r5, r20
	seteq r15, r5, zero
	seteq r13, r7, zero
	seteq r14, r7, r20
	max.u r5, r5, r7
	setlt.u r5, r20, r5
	and r7, r11, r13
	and r11, r15, r14
	or r7, r7, r11
	or r5, r5, r7
	.loc	1 75 25                         # ieee-multiply.mlir:75:25
	bneq r5, zero, .LBB0_89
# %bb.97:                               # %vector.body
                                        #   in Loop: Header=BB0_90 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r10, r6, 0
	j .LBB0_89
.LBB0_98:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 53 11 is_stmt 1               # ieee-multiply.mlir:53:11
	addli r2, zero, 20
	xwait r2, 0
	addli r2, zero, 54
	xwait r2, 0
	addli r2, zero, 4
	lock zero, r11
	rs_cfg zero, r10, r2, 0
	addli r2, zero, 1792
	rs_cfg zero, r10, zero, 2
	rs_row r1, r2, r26, 0
	addli r2, zero, 21
	unlock r11
	xsignal r2, 0
	addli r2, zero, 53
.LBB0_99:                               #   in Loop: Header=BB0_11 Depth=1
	xsignal r2, 0
	.loc	1 54 23                         # ieee-multiply.mlir:54:23
	beq r9, zero, .LBB0_87
.LBB0_100:                              #   in Loop: Header=BB0_11 Depth=1
	addli r2, zero, 34
	xwait r2, 0
	addli r2, zero, 49
	xwait r2, 0
	xfence
	addli r2, zero, 127
	mfence { lm, sm, gm }
	lock zero, r24
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r25, zero, zero, 0
	ew_cfg zero, r2, zero, 2
	ew_cfg r10, zero, zero, 3
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	loads.w r2, 0(r2)
	ewcoeff_cfg r2, zero, zero, 0
	loadli.w r2,  -12(r30)                  # 4-byte Folded Reload
	hp_ssmul r2, r2, r2, 0
	addli r2, zero, 35
	unlock r24
	xsignal r2, 0
	addli r2, zero, 48
	xsignal r2, 0
	.loc	1 76 11                         # ieee-multiply.mlir:76:11
	beq r23, r11, .LBB0_88
.LBB0_101:                              #   in Loop: Header=BB0_11 Depth=1
	.loc	1 80 5                          # ieee-multiply.mlir:80:5
	bneq r23, zero, .LBB0_10
# %bb.102:                              #   in Loop: Header=BB0_11 Depth=1
	load.d r[1:2], -48(r30)                 # 8-byte Folded Reload
	addli r3, zero, 22
	addli r5, zero, 1792
	xwait r3, 0
	load.d r[3:4], 16(r30)
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
	load.d r[5:6], -56(r30)                 # 8-byte Folded Reload
	dma_cfg r1, r3, r5, 4
	addli r1, zero, 23
	dma_run zero
	unlock r4
	xsignal r1, 0
	j .LBB0_10
.LBB0_103:                              # %._crit_edge
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	beq r9, zero, .LBB0_105
# %bb.104:
	addli r1, zero, 3
	xsignal r1, 0
.LBB0_105:
	.loc	1 2 3 is_stmt 1                 # ieee-multiply.mlir:2:3
	xsignal zero, 0
	bneq r23, zero, .LBB0_107
# %bb.106:
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
.LBB0_107:
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
	.long	44                              # 0x2c
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/native-activation-xyj61su7" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
