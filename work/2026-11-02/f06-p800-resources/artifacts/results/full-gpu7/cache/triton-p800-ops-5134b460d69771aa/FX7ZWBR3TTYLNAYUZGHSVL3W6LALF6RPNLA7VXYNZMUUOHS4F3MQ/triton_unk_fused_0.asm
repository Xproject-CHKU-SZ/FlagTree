	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/native-activation-wfqdm_3a" "ieee-multiply.mlir"
	.loc	1 2 0                           # ieee-multiply.mlir:2:0
	.cfi_startproc
# %bb.0:
	addli sp, sp, -256
	addli r1, zero, 1
.Ltmp0:
	.loc	1 29 11 prologue_end            # ieee-multiply.mlir:29:11
	core_id r20
	addli r30, sp, 192
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
	bneq r20, r3, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, zero, 3
	addli r7, zero, 4
	load.d r[4:5], 16(r30)
	addli r8, zero, 4096
	addli r21, zero, 0
	.loc	1 29 11                         # ieee-multiply.mlir:29:11
	xwait r6, 0
	lock zero, r7
	addli r6, zero, 2048
	dma_cfg zero, r3, zero, 0
	dma_cfg zero, r5, zero, 2
	dma_cfg zero, r4, r6, 3
	dma_cfg r8, r6, r3, 4
	addli r3, zero, 2
	dma_run zero
	unlock r7
	xsignal r3, 0
	ble.s r2, r1, .LBB0_117
	j .LBB0_9
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r3, zero, 5
	.loc	1 26 11 is_stmt 1               # ieee-multiply.mlir:26:11
	beq r20, r3, .LBB0_116
# %bb.6:
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r21, zero, 0
	addli r3, zero, 6
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	bneq r20, r3, .LBB0_8
# %bb.7:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r3, zero, 5
	load.d r[4:5], 8(r30)
	addli r6, zero, 1
	addli r7, zero, 2048
	addli r8, zero, 4096
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
	ble.s r2, r1, .LBB0_117
.LBB0_9:                                # %.lr.ph
	sext_int2long r[22:23], r1
	sext_int2long r[1:2], r2
	addli r14, zero, 1023
	addli r24, zero, 2
	addli r25, zero, 1
	addli r9, zero, 3
	lui r15, 260096
	lui r6, 70
	lui r12, 32
	storeli.w r21, -108(r30)                # 4-byte Folded Spill
	store.d r[1:2], -120(r30)               # 8-byte Folded Spill
	addli r1, zero, 511
	zext_int2long r[10:11], r14
	zext_int2long r[1:2], r1
	store.d r[10:11], -64(r30)              # 8-byte Folded Spill
	store.d r[1:2], -128(r30)               # 8-byte Folded Spill
	lui r1, 5
	lui r2, 102
	ori r1, r1, 1152
	storeli.w r1, -84(r30)                  # 4-byte Folded Spill
	lui r1, 69
	ori r1, r1, 1280
	storeli.w r1, -144(r30)                 # 4-byte Folded Spill
	ori r1, r2, 1536
	lui r2, 239665
	storeli.w r1, -52(r30)                  # 4-byte Folded Spill
	lui r1, 103
	ori r1, r1, 1536
	storeli.w r1, -56(r30)                  # 4-byte Folded Spill
	ori r1, r2, 623
	lui r2, 524287
	storeli.w r1, -152(r30)                 # 4-byte Folded Spill
	lui r1, 104
	ori r26, r2, 4095
	lui r2, 106
	ori r1, r1, 1536
	storeli.w r1, -148(r30)                 # 4-byte Folded Spill
	lui r1, 105
	ori r13, r1, 1536
	ori r1, r2, 1536
	storeli.w r1, -48(r30)                  # 4-byte Folded Spill
	zext_int2long r[1:2], zero
	storeli.w r13, -28(r30)                 # 4-byte Folded Spill
	store.d r[1:2], -136(r30)               # 8-byte Folded Spill
	lui r1, 37
	ori r1, r1, 1152
	storeli.w r1, -68(r30)                  # 4-byte Folded Spill
	j .LBB0_12
.LBB0_10:                               # %.thread43
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 103 11 is_stmt 1              # ieee-multiply.mlir:103:11
	addli r1, zero, 24
	mfence { sm }
	addli r9, zero, 3
	lui r6, 70
	lui r12, 32
	addli r14, zero, 1023
	lui r15, 260096
	xsignal r1, 0
	addli r1, zero, 59
	xsignal r1, 0
	addli r1, zero, 62
	xsignal r1, 0
	load.d r[10:11], -64(r30)               # 8-byte Folded Reload
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	load.d r[1:2], -120(r30)                # 8-byte Folded Reload
	addli.d r[22:23], r[22:23], 1
	setlt.sl r1, r[22:23], r[1:2]
	beq r1, zero, .LBB0_117
.LBB0_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_50 Depth 2
                                        #     Child Loop BB0_72 Depth 2
                                        #     Child Loop BB0_94 Depth 2
                                        #     Child Loop BB0_103 Depth 2
                                        #     Child Loop BB0_108 Depth 2
	.loc	1 5 14 is_stmt 1                # ieee-multiply.mlir:5:14
	beq r21, zero, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 6
	xwait r1, 0
	lock zero, r24
	lui r1, 280576
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 31
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 8192
	ew_cfg r25, zero, zero, 3
	ssaux r1, 0
	.loc	1 6 14                          # ieee-multiply.mlir:6:14
	addli r1, zero, 9
	.loc	1 5 14                          # ieee-multiply.mlir:5:14
	unlock r24
	.loc	1 6 14                          # ieee-multiply.mlir:6:14
	xwait r1, 0
	lock zero, r24
	addli r1, zero, 8320
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r14, zero, 2
	ew_cfg r25, zero, zero, 3
	ssaux r1, 0
	addli r1, zero, 7
	unlock r24
	xsignal r1, 0
.LBB0_14:                               # %.critedge4
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 14 is_stmt 0                # ieee-multiply.mlir:0:14
	loadli.w r1,  48(r30)
	loadli.w r2,  44(r30)
	.loc	1 17 10 is_stmt 1               # ieee-multiply.mlir:17:10
	addli r4, zero, 10
	div.s r1, r22, r1
	div.s r3, r1, r2
	.loc	1 105 11                        # ieee-multiply.mlir:105:11
	sext_int2long r[1:2], r3
	.loc	1 17 10                         # ieee-multiply.mlir:17:10
	sll.d r[4:5], r[1:2], r4
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	store.d r[4:5], -96(r30)                # 8-byte Folded Spill
	bneq r20, r9, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=1
	addli r4, zero, 12
	xwait r4, 0
	xfence
	setlti r4, r3, 512
	mfence { lm, sm, gm }
	load.d r[5:6], -136(r30)                # 8-byte Folded Reload
.LBB0_16:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	setlt.ul r7, r[5:6], r[10:11]
	addli r8, r5, 12416
	addli.d r[5:6], r[5:6], 1
	stores.b r4, 0(r8)
	bneq r7, zero, .LBB0_16
# %bb.17:                               # %.thread40
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	load.d r[4:5], -128(r30)                # 8-byte Folded Reload
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	mfence { sm }
	lui r6, 70
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	min.sl r[4:5], r[1:2], r[4:5]
	addli.d r[4:5], r[4:5], 1
	max.sl r[1:2], r[4:5], r[1:2]
	sub.s r3, r1, r3
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	addli r1, zero, 10
	j .LBB0_22
.LBB0_18:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	load.d r[3:4], -128(r30)                # 8-byte Folded Reload
	min.sl r[3:4], r[1:2], r[3:4]
	addli.d r[3:4], r[3:4], 1
	max.sl r[3:4], r[3:4], r[1:2]
	sub.sl r[3:4], r[3:4], r[1:2]
	bneq r20, r25, .LBB0_23
# %bb.19:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	zext_int2long r[1:2], zero
	addli.d r[7:8], r[3:4], 0
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	setlt.sl r1, r[1:2], r[3:4]
	addli r2, zero, 17
	xwait r2, 0
	bneq r1, zero, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_12 Depth=1
	lock zero, r24
	addli r1, zero, 13440
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r14, zero, 2
	ew_cfg r25, zero, zero, 3
	ssaux r1, 0
	unlock r24
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=1
	load.d r[1:2], -96(r30)                 # 8-byte Folded Reload
	addli r5, zero, 13
	load.d r[3:4], 0(r30)
	xsignal r5, 0
	xwait r5, 0
	addli r5, zero, 4
	sll.d r[1:2], r[1:2], r25
	lock zero, r5
	add.ul r[1:2], r[3:4], r[1:2]
	dma_cfg zero, r25, zero, 0
	addli r3, zero, 13440
	addli r4, zero, 2048
	dma_cfg zero, r2, zero, 2
	dma_cfg r3, r1, r4, 3
	addli r1, zero, 4096
	dma_cfg r1, r4, r7, 4
	addli.d r[3:4], r[7:8], 0
	addli r1, zero, 14
	dma_run zero
	unlock r5
.LBB0_22:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 0                           # ieee-multiply.mlir:0:0
	xsignal r1, 0
.LBB0_23:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 33 11 is_stmt 1               # ieee-multiply.mlir:33:11
	beq r21, zero, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 14
	addli r2, zero, 13440
	xwait r1, 0
	lock zero, r24
	addli r1, zero, 4096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r15, r15, zero, 0
	ew_cfg zero, r14, zero, 2
	ew_cfg r25, zero, zero, 3
	dsmadd r2, r2, r1, 0
	addli r1, zero, 15
	unlock r24
	xsignal r1, 0
.LBB0_25:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r1, 4
	store.d r[22:23], -80(r30)              # 8-byte Folded Spill
	store.d r[3:4], -104(r30)               # 8-byte Folded Spill
	ori r2, r1, 1152
	storeli.w r2, -4(r30)                   # 4-byte Folded Spill
	ori r2, r1, 1168
	storeli.w r2, -32(r30)                  # 4-byte Folded Spill
	ori r2, r1, 1164
	storeli.w r2, -8(r30)                   # 4-byte Folded Spill
	ori r2, r1, 1160
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	ori r2, r1, 1156
	storeli.w r2, -16(r30)                  # 4-byte Folded Spill
	ori r2, r1, 1180
	storeli.w r2, -36(r30)                  # 4-byte Folded Spill
	ori r2, r1, 1176
	ori r1, r1, 1172
	storeli.w r1, -44(r30)                  # 4-byte Folded Spill
	addli r1, zero, 1024
	storeli.w r2, -40(r30)                  # 4-byte Folded Spill
	zext_int2long r[1:2], r1
	store.d r[1:2], -24(r30)                # 8-byte Folded Spill
	.loc	1 36 11 is_stmt 1               # ieee-multiply.mlir:36:11
	bneq r20, r9, .LBB0_44
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
	load.d r[5:6], -136(r30)                # 8-byte Folded Reload
	j .LBB0_28
.LBB0_27:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	loadli.w r9,  -8(r30)                   # 4-byte Folded Reload
	loadli.w r11,  -16(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -4(r30)                   # 4-byte Folded Reload
	addli.d r[5:6], r[5:6], 8
	loadli.w r10,  -32(r30)                 # 4-byte Folded Reload
	add.s r9, r7, r9
	add.s r11, r7, r11
	add.s r1, r7, r1
	add.s r10, r7, r10
	stores.w r19, 0(r9)
	loadli.w r9,  -12(r30)                  # 4-byte Folded Reload
	stores.w r28, 0(r11)
	setneq.d r11, r[5:6], r[12:13]
	stores.w r27, 0(r1)
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	stores.w r4, 0(r10)
	add.s r9, r7, r9
	add.s r1, r7, r1
	stores.w r23, 0(r9)
	loadli.w r9,  -36(r30)                  # 4-byte Folded Reload
	stores.w r2, 0(r1)
	add.s r9, r7, r9
	stores.w r8, 0(r9)
	loadli.w r8,  -44(r30)                  # 4-byte Folded Reload
	add.s r7, r7, r8
	stores.w r3, 0(r7)
	beq r11, zero, .LBB0_66
.LBB0_28:                               # %vector.body71
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addli r7, r5, 12420
	addli r1, r5, 12416
	addli r3, r5, 12418
	addli r10, r5, 12423
	addli r2, r5, 12417
	addli r4, r5, 12419
	addli r8, r5, 12421
	addli r9, r5, 12422
	loads.bu r18, 0(r7)
	slli r7, r5, 2
	loads.bu r27, 0(r1)
	loads.bu r1, 0(r2)
	loads.bu r24, 0(r3)
	loads.bu r15, 0(r10)
	loads.bu r22, 0(r4)
	loads.bu r16, 0(r9)
	loads.bu r17, 0(r8)
	addli r2, r7, 13452
	addli r3, r7, 13448
	addli r10, r7, 8332
	addli r11, r7, 8328
	addli r4, r7, 13456
	addli r9, r7, 8336
	addli r25, r7, 8340
	loads.w r19, 0(r2)
	loads.w r23, 0(r3)
	addli r2, r7, 13444
	addli r3, r7, 13468
	loads.w r14, 0(r10)
	addli r10, r7, 8324
	loads.w r12, 0(r11)
	addli r11, r7, 8348
	loads.w r4, 0(r4)
	loads.w r9, 0(r9)
	loads.w r28, 0(r2)
	addli r2, r7, 13464
	loads.w r8, 0(r3)
	addli r3, r7, 13460
	loads.w r13, 0(r10)
	addli r10, r7, 8344
	loads.w r21, 0(r11)
	loads.w r11, 0(r10)
	loads.w r2, 0(r2)
	loads.w r3, 0(r3)
	loads.w r10, 0(r25)
	bneq r27, zero, .LBB0_30
# %bb.29:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r25, r7, 8320
	loads.w r27, 0(r25)
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	beq r1, zero, .LBB0_31
	j .LBB0_32
.LBB0_30:                               #   in Loop: Header=BB0_28 Depth=2
	addli r25, r7, 13440
	loads.w r27, 0(r25)
	bneq r1, zero, .LBB0_32
.LBB0_31:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r28, r13, 0
.LBB0_32:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	bneq r24, zero, .LBB0_38
# %bb.33:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r23, r12, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	beq r22, zero, .LBB0_39
.LBB0_34:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	bneq r18, zero, .LBB0_40
.LBB0_35:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r4, r9, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	beq r17, zero, .LBB0_41
.LBB0_36:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	bneq r16, zero, .LBB0_42
.LBB0_37:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r2, r11, 0
	load.d r[12:13], -24(r30)               # 8-byte Folded Reload
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	bneq r15, zero, .LBB0_27
	j .LBB0_43
.LBB0_38:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	bneq r22, zero, .LBB0_34
.LBB0_39:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r19, r14, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	beq r18, zero, .LBB0_35
.LBB0_40:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	bneq r17, zero, .LBB0_36
.LBB0_41:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r3, r10, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	beq r16, zero, .LBB0_37
.LBB0_42:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	load.d r[12:13], -24(r30)               # 8-byte Folded Reload
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	bneq r15, zero, .LBB0_27
.LBB0_43:                               # %vector.body71
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r8, r21, 0
	j .LBB0_27
.LBB0_44:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 37 11 is_stmt 1               # ieee-multiply.mlir:37:11
	bneq r20, r24, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 18
	addli r2, zero, 1024
	xwait r1, 0
	addli r1, zero, 31
	xwait r1, 0
	lock zero, zero
	ds_cfg r24, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r25, zero, 13
	loadli.w r1,  -84(r30)                  # 4-byte Folded Reload
	loadli.w r3,  -4(r30)                   # 4-byte Folded Reload
	shuffle_coa r1, r3, r2, 4
	addli r1, zero, 19
	unlock zero
	xsignal r1, 0
	addli r1, zero, 26
	xsignal r1, 0
	beq r21, zero, .LBB0_67
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_12 Depth=1
	beq r21, zero, .LBB0_67
.LBB0_47:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 26
	addli r2, zero, 1024
	xwait r1, 0
	addli r1, zero, 37
	xwait r1, 0
	lock zero, r24
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r2, zero, zero, 3
	loadli.w r2,  -84(r30)                  # 4-byte Folded Reload
	loadli.w r3,  -68(r30)                  # 4-byte Folded Reload
	ssreduce r3, r2, 0
	addli r2, zero, 27
	unlock r24
	xsignal r2, 0
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	lock zero, r24
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r15, zero, zero, 0
	ew_cfg r25, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 8192
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r1, 4
	addli r1, zero, 32
	hp_ssmul r3, r3, r3, 0
	unlock r24
	xsignal r1, 0
	ori r19, r6, 1536
	.loc	1 44 11                         # ieee-multiply.mlir:44:11
	beq r20, r24, .LBB0_68
.LBB0_48:                               #   in Loop: Header=BB0_12 Depth=1
	bneq r20, r9, .LBB0_52
# %bb.49:                               #   in Loop: Header=BB0_12 Depth=1
	addli r2, zero, 38
	addli r4, zero, 1024
	addli r5, zero, 40
	addli r1, zero, 0
	xwait r2, 0
	addli r2, zero, 41
	xwait r2, 0
	lock zero, r9
	lui r2, 37
	rs_cfg zero, r25, r25, 1
	rs_cfg zero, r25, zero, 3
	ori r2, r2, 1280
	loadli.w r3,  -144(r30)                 # 4-byte Folded Reload
	rs_col r2, r3, r4, 0
	addli r3, zero, 39
	ori r4, r6, 1408
	unlock r9
	xsignal r3, 0
	addli r3, zero, 42
	xsignal r5, 0
	xwait r3, 0
	addli r3, zero, 45
	xwait r3, 0
	lock zero, r9
	ori r3, r6, 1280
	rs_cfg zero, r25, r25, 1
	rs_cfg zero, r25, zero, 3
	rs_col r3, r4, r25, 0
	addli r4, zero, 43
	unlock r9
	xsignal r4, 0
	addli r4, zero, 44
	xsignal r4, 0
	xwait r5, 0
	xwait r4, 0
	addli r4, zero, 48
	xwait r4, 0
	lock zero, r24
	lui r4, 784384
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r15, r4, zero, 0
	ew_cfg zero, zero, zero, 2
	ew_cfg r25, zero, zero, 3
.LBB0_50:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r1, r19
	add.s r5, r1, r2
	addli r1, r1, 128
	dsmadd r4, r5, r3, 0
	bneq r1, r12, .LBB0_50
# %bb.51:                               # %.critedge8
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 41
	unlock r24
	.loc	1 46 11                         # ieee-multiply.mlir:46:11
	addli r2, zero, 32
	.loc	1 44 11                         # ieee-multiply.mlir:44:11
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
	addli r1, zero, 1024
	lock zero, r9
	rs_cfg zero, r1, r2, 1
	rs_cfg zero, r1, zero, 3
	loadli.w r1,  -84(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -52(r30)                  # 4-byte Folded Reload
	rs_col r2, r1, r25, 0
	addli r1, zero, 29
	unlock r9
	xsignal r1, 0
	addli r1, zero, 51
	xsignal r1, 0
	addli r1, zero, 49
	xsignal r1, 0
	beq r21, zero, .LBB0_69
	j .LBB0_53
.LBB0_52:                               # %.thread37
                                        #   in Loop: Header=BB0_12 Depth=1
	beq r21, zero, .LBB0_69
.LBB0_53:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 49
	xwait r1, 0
	addli r1, zero, 54
	xwait r1, 0
	lock zero, r24
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r15, 0
	ew_cfg zero, r14, zero, 2
	ew_cfg r25, zero, zero, 3
	loadli.w r1,  -52(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -56(r30)                  # 4-byte Folded Reload
	dsmul r2, r1, r1, 0
	addli r1, zero, 53
	unlock r24
	xsignal r1, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r20, r9, .LBB0_70
.LBB0_54:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	bneq r20, r24, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 20
	addli r2, zero, 1024
	xwait r1, 0
	addli r1, zero, 29
	xwait r1, 0
	lock zero, zero
	ds_cfg r24, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r25, zero, 13
	loadli.w r1,  -84(r30)                  # 4-byte Folded Reload
	loadli.w r3,  -4(r30)                   # 4-byte Folded Reload
	shuffle_coa r1, r3, r2, 4
	addli r1, zero, 21
	unlock zero
	xsignal r1, 0
	addli r1, zero, 30
	xsignal r1, 0
	beq r21, zero, .LBB0_89
	j .LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_12 Depth=1
	beq r21, zero, .LBB0_89
.LBB0_57:                               # %.critedge10
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 30
	addli r2, zero, 1024
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	addli r4, zero, 1
	addli r5, zero, 1
	addli r6, zero, 1
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	xwait r1, 0
	addli r1, zero, 33
	xwait r1, 0
	lock zero, r24
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r2, zero, zero, 3
	loadli.w r2,  -84(r30)                  # 4-byte Folded Reload
	loadli.w r3,  -68(r30)                  # 4-byte Folded Reload
	ssreduce r3, r2, 0
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	addli r2, r3, 0
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	unlock r24
	xsignal r1, 0
	.loc	1 54 11                         # ieee-multiply.mlir:54:11
	lock zero, r24
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r15, zero, zero, 0
	ew_cfg r25, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 8192
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r1, 4
	addli r1, zero, 6
	hp_ssmul r3, r3, r3, 0
	unlock r24
	xsignal r1, 0
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	lock zero, r24
	ew_cfg zero, zero, zero, 1
	loadli.w r1,  -152(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r15, zero, r1, 0
	addli r1, zero, 34
	ew_cfg zero, zero, zero, 2
	ew_cfg r25, zero, zero, 3
	dsmadd r3, r3, r3, 0
	unlock r24
	xsignal r1, 0
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	xwait r1, 0
	xfence
	jal _ZN3xpu10math_rsqrtEPU3AS2fS1_iii
	load.d r[10:11], -64(r30)               # 8-byte Folded Reload
	loadli.w r13,  -28(r30)                 # 4-byte Folded Reload
	load.d r[22:23], -80(r30)               # 8-byte Folded Reload
	addli r1, zero, 35
	lui r15, 260096
	addli r14, zero, 1023
	lui r12, 32
	lui r6, 70
	addli r9, zero, 3
	xsignal r1, 0
	.loc	1 57 11                         # ieee-multiply.mlir:57:11
	beq r20, r24, .LBB0_90
.LBB0_58:                               #   in Loop: Header=BB0_12 Depth=1
	bneq r20, r9, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 21
	addli r2, zero, 1024
	xwait r1, 0
	addli r1, zero, 55
	xwait r1, 0
	addli r1, zero, 32
	lock zero, r9
	rs_cfg zero, r25, r1, 0
	rs_cfg zero, r25, zero, 2
	loadli.w r1,  -148(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -4(r30)                   # 4-byte Folded Reload
	rs_row r3, r1, r2, 0
	addli r1, zero, 22
	unlock r9
	xsignal r1, 0
	addli r1, zero, 56
	xsignal r1, 0
	.loc	1 58 23                         # ieee-multiply.mlir:58:23
	beq r21, zero, .LBB0_91
	j .LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_12 Depth=1
	beq r21, zero, .LBB0_91
.LBB0_61:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 36
	xwait r1, 0
	addli r1, zero, 51
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	lock zero, r24
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r15, zero, zero, 0
	ew_cfg zero, r14, zero, 2
	ew_cfg r25, zero, zero, 3
	loadli.w r1,  -68(r30)                  # 4-byte Folded Reload
	loads.w r1, 0(r1)
	ewcoeff_cfg r1, zero, zero, 0
	loadli.w r1,  -52(r30)                  # 4-byte Folded Reload
	hp_ssmul r1, r1, r1, 0
	addli r1, zero, 37
	unlock r24
	xsignal r1, 0
	addli r1, zero, 50
	xsignal r1, 0
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	beq r20, r9, .LBB0_92
.LBB0_62:                               # %.critedge14
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	loadli.w r1,  -48(r30)                  # 4-byte Folded Reload
	.loc	1 81 23 is_stmt 1               # ieee-multiply.mlir:81:23
	beq r21, zero, .LBB0_105
.LBB0_63:                               #   in Loop: Header=BB0_12 Depth=1
	addli r2, zero, 60
	xwait r2, 0
	lock zero, r24
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r15, 0
	ew_cfg zero, r14, zero, 2
	ew_cfg r25, zero, zero, 3
	dsmul r1, r1, zero, 0
	addli r1, zero, 61
	unlock r24
	xsignal r1, 0
	.loc	1 103 11                        # ieee-multiply.mlir:103:11
	beq r20, r9, .LBB0_106
.LBB0_64:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 107 5                         # ieee-multiply.mlir:107:5
	bneq r20, zero, .LBB0_11
# %bb.65:                               #   in Loop: Header=BB0_12 Depth=1
	load.d r[1:2], -96(r30)                 # 8-byte Folded Reload
	addli r3, zero, 24
	xwait r3, 0
	load.d r[3:4], 24(r30)
	sll.d r[1:2], r[1:2], r25
	add.ul r[1:2], r[3:4], r[1:2]
	addli r4, zero, 5
	addli r3, zero, 4096
	lock zero, r4
	dma_cfg r25, zero, zero, 0
	dma_cfg zero, r25, zero, 1
	dma_cfg r2, zero, zero, 2
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	dma_cfg r1, r5, r3, 3
	addli r1, zero, 2048
	load.d r[7:8], -104(r30)                # 8-byte Folded Reload
	dma_cfg r1, r3, r7, 4
	addli r1, zero, 25
	dma_run zero
	unlock r4
	xsignal r1, 0
	j .LBB0_11
.LBB0_66:                               # %.thread41
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	addli r1, zero, 8
	mfence { sm }
	addli r24, zero, 2
	addli r25, zero, 1
	addli r14, zero, 1023
	addli r9, zero, 3
	lui r15, 260096
	lui r6, 70
	lui r12, 32
	xsignal r1, 0
	addli r1, zero, 11
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	loadli.w r21,  -108(r30)                # 4-byte Folded Reload
	load.d r[22:23], -80(r30)               # 8-byte Folded Reload
	loadli.w r13,  -28(r30)                 # 4-byte Folded Reload
	load.d r[10:11], -64(r30)               # 8-byte Folded Reload
	.loc	1 37 11                         # ieee-multiply.mlir:37:11
	bneq r21, zero, .LBB0_47
.LBB0_67:                               # %.critedge6
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	ori r19, r6, 1536
	.loc	1 44 11 is_stmt 1               # ieee-multiply.mlir:44:11
	bneq r20, r24, .LBB0_48
.LBB0_68:                               # %.critedge8.thread
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 16
	addli r3, zero, 1024
	addli r2, zero, 13440
	addli r4, zero, 32
	xwait r1, 0
	addli r1, zero, 39
	xwait r1, 0
	lock zero, zero
	ds_cfg r24, zero, 0
	ds_cfg r3, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r3, zero, 13
	loadli.w r1,  -144(r30)                 # 4-byte Folded Reload
	shuffle_coa r1, r2, r25, 4
	addli r1, zero, 17
	unlock zero
	xsignal r1, 0
	addli r1, zero, 38
	xsignal r1, 0
	addli r1, zero, 43
	xwait r4, 0
	xwait r1, 0
	lock zero, zero
	ori r1, r6, 1408
	ds_cfg r24, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r25, zero, 13
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	shuffle_coa r1, r2, r25, 4
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
	ds_cfg r24, zero, 0
	ds_cfg r4, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r25, zero, 13
	loadli.w r1,  -84(r30)                  # 4-byte Folded Reload
	shuffle_coa r1, r19, r3, 4
	addli r1, zero, 28
	unlock zero
	xsignal r1, 0
	addli r1, zero, 47
	xsignal r1, 0
	bneq r21, zero, .LBB0_53
.LBB0_69:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r20, r9, .LBB0_54
.LBB0_70:                               # %vector.ph61
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 8
	storeli.w r19, -140(r30)                # 4-byte Folded Spill
	zext_int2long r[5:6], zero
	xwait r1, 0
	addli r1, zero, 11
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	addli r1, zero, 53
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	j .LBB0_72
.LBB0_71:                               # %vector.body62
                                        #   in Loop: Header=BB0_72 Depth=2
	loadli.w r2,  -8(r30)                   # 4-byte Folded Reload
	loadli.w r4,  -16(r30)                  # 4-byte Folded Reload
	loadli.w r1,  -4(r30)                   # 4-byte Folded Reload
	addli.d r[5:6], r[5:6], 8
	loadli.w r3,  -32(r30)                  # 4-byte Folded Reload
	add.s r2, r7, r2
	add.s r4, r7, r4
	add.s r1, r7, r1
	add.s r3, r7, r3
	stores.w r14, 0(r2)
	loadli.w r2,  -12(r30)                  # 4-byte Folded Reload
	stores.w r12, 0(r4)
	stores.w r16, 0(r1)
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	stores.w r8, 0(r3)
	add.s r2, r7, r2
	add.s r1, r7, r1
	stores.w r13, 0(r2)
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	load.d r[12:13], -24(r30)               # 8-byte Folded Reload
	stores.w r27, 0(r1)
	add.s r2, r7, r2
	setneq.d r4, r[5:6], r[12:13]
	stores.w r11, 0(r2)
	loadli.w r2,  -44(r30)                  # 4-byte Folded Reload
	add.s r2, r7, r2
	stores.w r9, 0(r2)
	beq r4, zero, .LBB0_88
.LBB0_72:                               # %vector.body62
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addli r1, r5, 12416
	addli r3, r5, 12418
	addli r7, r5, 12420
	addli r10, r5, 12423
	addli r4, r5, 12419
	addli r2, r5, 12417
	addli r8, r5, 12421
	addli r9, r5, 12422
	loads.bu r25, 0(r1)
	loads.bu r1, 0(r3)
	loadli.w r3,  -56(r30)                  # 4-byte Folded Reload
	loads.bu r22, 0(r7)
	slli r7, r5, 2
	loads.bu r15, 0(r10)
	loads.bu r21, 0(r4)
	loads.bu r2, 0(r2)
	loads.bu r18, 0(r8)
	loads.bu r17, 0(r9)
	addli r10, r7, 8328
	addli r4, r7, 8336
	addli r20, r7, 8340
	add.s r16, r7, r3
	addli r3, r7, 8332
	loads.w r23, 0(r10)
	addli r10, r7, 8348
	loads.w r4, 0(r4)
	loads.w r19, 0(r3)
	addli r3, r7, 8324
	loads.w r14, 12(r16)
	loads.w r13, 8(r16)
	loads.w r12, 4(r16)
	loads.w r11, 28(r16)
	loads.w r27, 24(r16)
	loads.w r9, 20(r16)
	loads.w r8, 16(r16)
	loads.w r24, 0(r10)
	loads.w r28, 0(r3)
	addli r3, r7, 8344
	loads.w r10, 0(r3)
	loads.w r3, 0(r20)
	bneq r25, zero, .LBB0_80
# %bb.73:                               # %vector.body62
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r16, r7, 8320
	loads.w r16, 0(r16)
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r2, zero, .LBB0_81
.LBB0_74:                               # %vector.body62
                                        #   in Loop: Header=BB0_72 Depth=2
	bneq r1, zero, .LBB0_82
.LBB0_75:                               # %vector.body62
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r13, r23, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r21, zero, .LBB0_83
.LBB0_76:                               # %vector.body62
                                        #   in Loop: Header=BB0_72 Depth=2
	bneq r22, zero, .LBB0_84
.LBB0_77:                               # %vector.body62
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r8, r4, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r18, zero, .LBB0_85
.LBB0_78:                               # %vector.body62
                                        #   in Loop: Header=BB0_72 Depth=2
	bneq r17, zero, .LBB0_86
.LBB0_79:                               # %vector.body62
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r27, r10, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r15, zero, .LBB0_71
	j .LBB0_87
.LBB0_80:                               # %vector.body62
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	loads.w r16, 0(r16)
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r2, zero, .LBB0_74
.LBB0_81:                               # %vector.body62
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r12, r28, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r1, zero, .LBB0_75
.LBB0_82:                               # %vector.body62
                                        #   in Loop: Header=BB0_72 Depth=2
	bneq r21, zero, .LBB0_76
.LBB0_83:                               # %vector.body62
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r14, r19, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r22, zero, .LBB0_77
.LBB0_84:                               # %vector.body62
                                        #   in Loop: Header=BB0_72 Depth=2
	bneq r18, zero, .LBB0_78
.LBB0_85:                               # %vector.body62
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r9, r3, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r17, zero, .LBB0_79
.LBB0_86:                               # %vector.body62
                                        #   in Loop: Header=BB0_72 Depth=2
	bneq r15, zero, .LBB0_71
.LBB0_87:                               # %vector.body62
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r11, r24, 0
	j .LBB0_71
.LBB0_88:                               # %.thread42
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	addli r1, zero, 9
	mfence { sm }
	.loc	1 29 11 is_stmt 1               # ieee-multiply.mlir:29:11
	core_id r20
	addli r24, zero, 2
	addli r25, zero, 1
	addli r14, zero, 1023
	addli r9, zero, 3
	lui r15, 260096
	lui r6, 70
	lui r12, 32
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	xsignal r1, 0
	addli r1, zero, 12
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r1, 0
	addli r1, zero, 54
	xsignal r1, 0
	loadli.w r21,  -108(r30)                # 4-byte Folded Reload
	load.d r[22:23], -80(r30)               # 8-byte Folded Reload
	loadli.w r13,  -28(r30)                 # 4-byte Folded Reload
	load.d r[10:11], -64(r30)               # 8-byte Folded Reload
	loadli.w r19,  -140(r30)                # 4-byte Folded Reload
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	bneq r21, zero, .LBB0_57
.LBB0_89:                               # %.critedge12
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 57 11                         # ieee-multiply.mlir:57:11
	bneq r20, r24, .LBB0_58
.LBB0_90:                               # %.thread38
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 35
	xwait r1, 0
	addli r1, zero, 56
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 1024
	ds_cfg r24, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r1, zero, 13
	ds_cfg r25, zero, 14
	loadli.w r1,  -148(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	shuffle_batch r1, r2, r25, 4
	addli r1, zero, 36
	unlock zero
	xsignal r1, 0
	addli r1, zero, 55
	xsignal r1, 0
	.loc	1 58 23                         # ieee-multiply.mlir:58:23
	bneq r21, zero, .LBB0_61
.LBB0_91:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r20, r9, .LBB0_62
.LBB0_92:                               # %vector.ph54
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 22
	xwait r1, 0
	addli r1, zero, 47
	xwait r1, 0
	addli r1, zero, 50
	xwait r1, 0
	addli r1, zero, 59
	xwait r1, 0
	xfence
	zext_int2long r[1:2], zero
	mfence { lm, sm, gm }
	j .LBB0_94
.LBB0_93:                               # %vector.body55
                                        #   in Loop: Header=BB0_94 Depth=2
	addli.d r[1:2], r[1:2], 4
	add.s r3, r3, r13
	setneq.d r4, r[1:2], r[15:16]
	stores.w r7, 12(r3)
	stores.w r9, 8(r3)
	stores.w r12, 4(r3)
	stores.w r6, 0(r3)
	beq r4, zero, .LBB0_102
.LBB0_94:                               # %vector.body55
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r3, r1, 7
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	loadli.w r8,  -12(r30)                  # 4-byte Folded Reload
	lui r27, 522240
	addli r28, r19, 0
	add.s r4, r3, r19
	slli r3, r1, 2
	add.s r5, r3, r5
	loads.w r6, 0(r4)
	loads.w r12, 128(r4)
	loads.w r9, 256(r4)
	add.s r8, r3, r8
	loads.w r7, 0(r5)
	loads.w r5, 384(r4)
	loadli.w r4,  -16(r30)                  # 4-byte Folded Reload
	loads.w r10, 0(r8)
	loadli.w r8,  -52(r30)                  # 4-byte Folded Reload
	add.s r4, r3, r4
	add.s r15, r3, r8
	loads.w r13, 0(r4)
	loadli.w r4,  -8(r30)                   # 4-byte Folded Reload
	loads.w r11, 8(r15)
	loads.w r14, 4(r15)
	add.s r4, r3, r4
	.loc	1 65 24                         # ieee-multiply.mlir:65:24
	and r6, r6, r26
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	loads.w r8, 0(r4)
	loads.w r4, 12(r15)
	.loc	1 66 24                         # ieee-multiply.mlir:66:24
	and r7, r7, r26
	.loc	1 69 24                         # ieee-multiply.mlir:69:24
	seteq r16, r6, r27
	.loc	1 71 25                         # ieee-multiply.mlir:71:25
	seteq r19, r6, zero
	.loc	1 72 25                         # ieee-multiply.mlir:72:25
	seteq r17, r7, zero
	.loc	1 70 24                         # ieee-multiply.mlir:70:24
	seteq r18, r7, r27
	.loc	1 76 27                         # ieee-multiply.mlir:76:27
	max.u r6, r6, r7
	setlt.u r6, r27, r6
	.loc	1 73 29                         # ieee-multiply.mlir:73:29
	and r7, r16, r17
	.loc	1 74 29                         # ieee-multiply.mlir:74:29
	and r16, r19, r18
	.loc	1 75 27                         # ieee-multiply.mlir:75:27
	or r7, r7, r16
	.loc	1 77 23                         # ieee-multiply.mlir:77:23
	or r16, r6, r7
	lui r7, 523264
	lui r6, 523264
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r16, zero, .LBB0_96
# %bb.95:                               # %vector.body55
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	loads.w r6, 0(r15)
.LBB0_96:                               # %vector.body55
                                        #   in Loop: Header=BB0_94 Depth=2
	and r12, r12, r26
	and r13, r13, r26
	lui r19, 522240
	seteq r15, r12, r19
	seteq r18, r12, zero
	seteq r16, r13, zero
	seteq r17, r13, r19
	max.u r12, r12, r13
	setlt.u r12, r19, r12
	and r13, r15, r16
	and r15, r18, r17
	or r13, r13, r15
	or r13, r12, r13
	lui r12, 523264
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r13, zero, .LBB0_98
# %bb.97:                               # %vector.body55
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r12, r14, 0
.LBB0_98:                               # %vector.body55
                                        #   in Loop: Header=BB0_94 Depth=2
	and r9, r9, r26
	and r10, r10, r26
	lui r17, 522240
	addli r19, r28, 0
	seteq r13, r9, r17
	seteq r16, r9, zero
	seteq r14, r10, zero
	seteq r15, r10, r17
	max.u r9, r9, r10
	setlt.u r9, r17, r9
	and r10, r13, r14
	and r13, r16, r15
	or r10, r10, r13
	or r10, r9, r10
	lui r9, 523264
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r10, zero, .LBB0_100
# %bb.99:                               # %vector.body55
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r9, r11, 0
.LBB0_100:                              # %vector.body55
                                        #   in Loop: Header=BB0_94 Depth=2
	and r5, r5, r26
	and r8, r8, r26
	lui r15, 522240
	seteq r10, r5, r15
	seteq r14, r5, zero
	seteq r11, r8, zero
	seteq r13, r8, r15
	max.u r5, r5, r8
	setlt.u r5, r15, r5
	load.d r[15:16], -24(r30)               # 8-byte Folded Reload
	and r8, r10, r11
	and r10, r14, r13
	loadli.w r13,  -28(r30)                 # 4-byte Folded Reload
	or r8, r8, r10
	or r5, r5, r8
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r5, zero, .LBB0_93
# %bb.101:                              # %vector.body55
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r7, r4, 0
	j .LBB0_93
.LBB0_102:                              # %middle.block60
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	addli r1, zero, 23
	mfence { sm }
	xsignal r1, 0
	addli r1, zero, 48
	xsignal r1, 0
	addli r1, zero, 52
	xsignal r1, 0
	addli r1, zero, 57
	xsignal r1, 0
	.loc	1 80 11 is_stmt 1               # ieee-multiply.mlir:80:11
	xwait r1, 0
	addli r1, zero, 62
	xwait r1, 0
	xfence
	zext_int2long r[1:2], zero
	mfence { lm, sm, gm }
	loadli.w r14,  -48(r30)                 # 4-byte Folded Reload
.LBB0_103:                              # %vector.body48
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r3, r1, 2
	addli.d r[1:2], r[1:2], 8
	add.s r4, r3, r13
	add.s r3, r3, r14
	loads.d r[5:6], 8(r4)
	loads.d r[7:8], 0(r4)
	loads.d r[9:10], 24(r4)
	loads.d r[11:12], 16(r4)
	setneq.d r4, r[1:2], r[15:16]
	stores.d r[5:6], 8(r3)
	stores.d r[7:8], 0(r3)
	stores.d r[9:10], 24(r3)
	stores.d r[11:12], 16(r3)
	bneq r4, zero, .LBB0_103
# %bb.104:                              # %middle.block53
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 58
	mfence { sm }
	addli r9, zero, 3
	lui r6, 70
	lui r12, 32
	addli r14, zero, 1023
	lui r15, 260096
	xsignal r1, 0
	addli r1, zero, 60
	xsignal r1, 0
	load.d r[10:11], -64(r30)               # 8-byte Folded Reload
	loadli.w r1,  -48(r30)                  # 4-byte Folded Reload
	.loc	1 81 23                         # ieee-multiply.mlir:81:23
	bneq r21, zero, .LBB0_63
.LBB0_105:                              #   in Loop: Header=BB0_12 Depth=1
	.loc	1 103 11                        # ieee-multiply.mlir:103:11
	bneq r20, r9, .LBB0_64
.LBB0_106:                              # %vector.ph
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 23
	xwait r1, 0
	addli r1, zero, 58
	xwait r1, 0
	addli r1, zero, 61
	xwait r1, 0
	xfence
	zext_int2long r[1:2], zero
	mfence { lm, sm, gm }
	j .LBB0_108
.LBB0_107:                              # %vector.body
                                        #   in Loop: Header=BB0_108 Depth=2
	loadli.w r4,  -8(r30)                   # 4-byte Folded Reload
	addli.d r[1:2], r[1:2], 4
	loadli.w r8,  -4(r30)                   # 4-byte Folded Reload
	setneq.d r7, r[1:2], r[11:12]
	add.s r4, r3, r4
	add.s r8, r3, r8
	stores.w r6, 0(r4)
	loadli.w r4,  -12(r30)                  # 4-byte Folded Reload
	loadli.w r6,  -16(r30)                  # 4-byte Folded Reload
	stores.w r5, 0(r8)
	add.s r4, r3, r4
	add.s r3, r3, r6
	stores.w r10, 0(r4)
	stores.w r9, 0(r3)
	beq r7, zero, .LBB0_10
.LBB0_108:                              # %vector.body
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r3, r1, 2
	loadli.w r8,  -48(r30)                  # 4-byte Folded Reload
	lui r27, 522240
	add.s r4, r3, r13
	loads.w r5, 0(r3)
	loads.w r9, 4(r3)
	loads.w r10, 8(r3)
	loads.w r7, 12(r3)
	add.s r15, r3, r8
	loads.w r6, 0(r4)
	loads.w r13, 4(r4)
	loads.w r12, 8(r4)
	loads.w r8, 12(r4)
	loads.w r4, 12(r15)
	loads.w r11, 8(r15)
	loads.w r14, 4(r15)
	.loc	1 89 24                         # ieee-multiply.mlir:89:24
	and r5, r5, r26
	.loc	1 88 24                         # ieee-multiply.mlir:88:24
	and r6, r6, r26
	.loc	1 95 25                         # ieee-multiply.mlir:95:25
	seteq r16, r5, zero
	.loc	1 93 24                         # ieee-multiply.mlir:93:24
	seteq r17, r5, r27
	.loc	1 92 24                         # ieee-multiply.mlir:92:24
	seteq r18, r6, r27
	.loc	1 94 25                         # ieee-multiply.mlir:94:25
	seteq r19, r6, zero
	.loc	1 99 27                         # ieee-multiply.mlir:99:27
	max.u r5, r6, r5
	setlt.u r5, r27, r5
	.loc	1 96 29                         # ieee-multiply.mlir:96:29
	and r6, r18, r16
	.loc	1 97 29                         # ieee-multiply.mlir:97:29
	and r16, r19, r17
	.loc	1 98 27                         # ieee-multiply.mlir:98:27
	or r6, r6, r16
	.loc	1 100 23                        # ieee-multiply.mlir:100:23
	or r16, r5, r6
	lui r6, 523264
	lui r5, 523264
	.loc	1 102 25                        # ieee-multiply.mlir:102:25
	bneq r16, zero, .LBB0_110
# %bb.109:                              # %vector.body
                                        #   in Loop: Header=BB0_108 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	loads.w r5, 0(r15)
.LBB0_110:                              # %vector.body
                                        #   in Loop: Header=BB0_108 Depth=2
	and r13, r13, r26
	and r9, r9, r26
	lui r19, 522240
	seteq r15, r13, r19
	seteq r16, r9, zero
	seteq r17, r9, r19
	seteq r18, r13, zero
	max.u r9, r13, r9
	setlt.u r9, r19, r9
	and r13, r15, r16
	and r15, r18, r17
	or r13, r13, r15
	or r13, r9, r13
	lui r9, 523264
	.loc	1 102 25                        # ieee-multiply.mlir:102:25
	bneq r13, zero, .LBB0_112
# %bb.111:                              # %vector.body
                                        #   in Loop: Header=BB0_108 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r9, r14, 0
.LBB0_112:                              # %vector.body
                                        #   in Loop: Header=BB0_108 Depth=2
	and r12, r12, r26
	and r10, r10, r26
	lui r17, 522240
	seteq r13, r12, r17
	seteq r14, r10, zero
	seteq r15, r10, r17
	seteq r16, r12, zero
	max.u r10, r12, r10
	setlt.u r10, r17, r10
	and r12, r13, r14
	and r13, r16, r15
	or r12, r12, r13
	or r12, r10, r12
	lui r10, 523264
	.loc	1 102 25                        # ieee-multiply.mlir:102:25
	bneq r12, zero, .LBB0_114
# %bb.113:                              # %vector.body
                                        #   in Loop: Header=BB0_108 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r10, r11, 0
.LBB0_114:                              # %vector.body
                                        #   in Loop: Header=BB0_108 Depth=2
	and r8, r8, r26
	and r7, r7, r26
	lui r15, 522240
	seteq r11, r8, r15
	seteq r12, r7, zero
	seteq r13, r7, r15
	seteq r14, r8, zero
	max.u r7, r8, r7
	setlt.u r7, r15, r7
	and r8, r11, r12
	and r11, r14, r13
	loadli.w r13,  -28(r30)                 # 4-byte Folded Reload
	or r8, r8, r11
	load.d r[11:12], -24(r30)               # 8-byte Folded Reload
	or r7, r7, r8
	.loc	1 102 25                        # ieee-multiply.mlir:102:25
	bneq r7, zero, .LBB0_107
# %bb.115:                              # %vector.body
                                        #   in Loop: Header=BB0_108 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r6, r4, 0
	j .LBB0_107
.LBB0_116:
	addli r3, zero, 2
	addli r21, zero, 1
	addli r4, zero, 4
	xwait r3, 0
	xwait r4, 0
	ble.s r2, r1, .LBB0_117
	j .LBB0_9
.LBB0_117:                              # %._crit_edge
	addli r1, zero, 3
	bneq r20, r1, .LBB0_121
# %bb.118:
	xsignal r1, 0
	bneq r21, zero, .LBB0_122
.LBB0_119:
	.loc	1 2 3 is_stmt 1                 # ieee-multiply.mlir:2:3
	xsignal zero, 0
	beq r20, zero, .LBB0_123
.LBB0_120:
	.loc	1 2 3 epilogue_begin is_stmt 0  # ieee-multiply.mlir:2:3
	addli sp, sp, 192
	mfence { lm, sm, gm }
	exit
.LBB0_121:
	.loc	1 0 3                           # ieee-multiply.mlir:0:3
	beq r21, zero, .LBB0_119
.LBB0_122:
	addli r1, zero, 5
	xsignal r1, 0
	.loc	1 2 3                           # ieee-multiply.mlir:2:3
	xsignal zero, 0
	bneq r20, zero, .LBB0_120
.LBB0_123:
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
	j .LBB0_120
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
	.long	256                             # 0x100
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/native-activation-wfqdm_3a" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
