	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/native-activation-k44xkpbo" "ieee-multiply.mlir"
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
	addli r6, zero, 4096
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r5, zero, 2
	dma_cfg zero, r4, r6, 3
	dma_cfg r6, r6, r3, 4
	addli r3, zero, 2
	dma_run zero
	unlock r7
	xsignal r3, 0
	ble.s r2, r1, .LBB0_103
	j .LBB0_8
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r3, zero, 5
	bneq r20, r3, .LBB0_7
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
	addli r22, zero, 2
	addli r10, zero, 1
	addli r5, zero, 10
	addli r11, zero, 3
	lui r23, 260096
	addli r24, zero, 1024
	lui r21, 522240
	storeli.w r9, -44(r30)                  # 4-byte Folded Spill
	store.d r[1:2], -80(r30)                # 8-byte Folded Spill
	addli r1, zero, 127
	store.d r[3:4], -32(r30)                # 8-byte Folded Spill
	addli r3, zero, 1023
	zext_int2long r[1:2], r1
	zext_int2long r[12:13], r3
	store.d r[1:2], -88(r30)                # 8-byte Folded Spill
	lui r1, 4
	lui r2, 101
	store.d r[12:13], -56(r30)              # 8-byte Folded Spill
	ori r1, r1, 1152
	storeli.w r1, -40(r30)                  # 4-byte Folded Spill
	lui r1, 68
	ori r1, r1, 1280
	storeli.w r1, -100(r30)                 # 4-byte Folded Spill
	ori r1, r2, 1536
	lui r2, 239665
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	lui r1, 102
	ori r1, r1, 1536
	storeli.w r1, -16(r30)                  # 4-byte Folded Spill
	ori r1, r2, 623
	lui r2, 524287
	storeli.w r1, -104(r30)                 # 4-byte Folded Spill
	lui r1, 103
	ori r26, r2, 4095
	ori r1, r1, 1536
	storeli.w r1, -20(r30)                  # 4-byte Folded Spill
	zext_int2long r[1:2], zero
	store.d r[1:2], -96(r30)                # 8-byte Folded Spill
	lui r1, 36
	ori r1, r1, 1152
	storeli.w r1, -36(r30)                  # 4-byte Folded Spill
	j .LBB0_11
.LBB0_9:                                # %.thread35
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 71 11 is_stmt 1               # ieee-multiply.mlir:71:11
	addli r1, zero, 22
	mfence { sm }
	addli r10, zero, 1
	addli r5, zero, 10
	addli r11, zero, 3
	xsignal r1, 0
	addli r1, zero, 46
	xsignal r1, 0
	addli r1, zero, 50
	xsignal r1, 0
	addli r1, zero, 54
	xsignal r1, 0
	loadli.w r9,  -44(r30)                  # 4-byte Folded Reload
	load.d r[12:13], -56(r30)               # 8-byte Folded Reload
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	load.d r[1:2], -32(r30)                 # 8-byte Folded Reload
	load.d r[3:4], -80(r30)                 # 8-byte Folded Reload
	addli.d r[1:2], r[1:2], 1
	store.d r[1:2], -32(r30)                # 8-byte Folded Spill
	setlt.sl r1, r[1:2], r[3:4]
	beq r1, zero, .LBB0_103
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_75 Depth 2
                                        #     Child Loop BB0_57 Depth 2
                                        #     Child Loop BB0_90 Depth 2
	.loc	1 4 14 is_stmt 1                # ieee-multiply.mlir:4:14
	beq r9, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 4
	xwait r1, 0
	lock zero, r22
	lui r1, 280576
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 31
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 4096
	ew_cfg r10, zero, zero, 3
	ssaux r1, 0
	.loc	1 5 14                          # ieee-multiply.mlir:5:14
	addli r1, zero, 7
	.loc	1 4 14                          # ieee-multiply.mlir:4:14
	unlock r22
	.loc	1 5 14                          # ieee-multiply.mlir:5:14
	xwait r1, 0
	lock zero, r22
	addli r1, zero, 1023
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 4224
	ew_cfg r10, zero, zero, 3
	ssaux r1, 0
	addli r1, zero, 5
	unlock r22
	xsignal r1, 0
.LBB0_13:                               # %.critedge2
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 14 is_stmt 0                # ieee-multiply.mlir:0:14
	loadli.w r1,  40(r30)
	load.d r[2:3], -32(r30)                 # 8-byte Folded Reload
	div.s r1, r2, r1
	loadli.w r2,  36(r30)
	div.s r3, r1, r2
	.loc	1 73 11 is_stmt 1               # ieee-multiply.mlir:73:11
	sext_int2long r[1:2], r3
	.loc	1 16 10                         # ieee-multiply.mlir:16:10
	sll.d r[6:7], r[1:2], r5
	.loc	1 21 11                         # ieee-multiply.mlir:21:11
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	bneq r20, r11, .LBB0_39
# %bb.14:                               #   in Loop: Header=BB0_11 Depth=1
	xwait r5, 0
	xfence
	setlti r4, r3, 128
	mfence { lm, sm, gm }
	load.d r[5:6], -96(r30)                 # 8-byte Folded Reload
.LBB0_15:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	setlt.ul r7, r[5:6], r[12:13]
	addli r8, r5, 8320
	addli.d r[5:6], r[5:6], 1
	stores.b r4, 0(r8)
	bneq r7, zero, .LBB0_15
# %bb.16:                               # %.thread32
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	load.d r[4:5], -88(r30)                 # 8-byte Folded Reload
	.loc	1 21 11                         # ieee-multiply.mlir:21:11
	mfence { sm }
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	min.sl r[4:5], r[1:2], r[4:5]
	addli.d r[4:5], r[4:5], 1
	max.sl r[1:2], r[4:5], r[1:2]
	sub.s r6, r1, r3
	.loc	1 21 11                         # ieee-multiply.mlir:21:11
	addli r1, zero, 8
.LBB0_17:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 0 is_stmt 0                 # ieee-multiply.mlir:0:0
	xsignal r1, 0
.LBB0_18:                               #   in Loop: Header=BB0_11 Depth=1
	lui r5, 69
	.loc	1 26 11 is_stmt 1               # ieee-multiply.mlir:26:11
	beq r9, zero, .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 12
	xwait r1, 0
	lock zero, r22
	addli r1, zero, 1023
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r23, r23, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 9344
	ew_cfg r10, zero, zero, 3
	dsmadd r1, r1, zero, 0
	addli r1, zero, 13
	unlock r22
	xsignal r1, 0
.LBB0_20:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	zext_int2long r[1:2], r24
	store.d r[6:7], -72(r30)                # 8-byte Folded Spill
	.loc	1 27 11 is_stmt 1               # ieee-multiply.mlir:27:11
	store.d r[1:2], -8(r30)                 # 8-byte Folded Spill
	bneq r20, r11, .LBB0_43
# %bb.21:                               # %vector.ph46
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
	load.d r[1:2], -96(r30)                 # 8-byte Folded Reload
	j .LBB0_23
.LBB0_22:                               # %vector.body47
                                        #   in Loop: Header=BB0_23 Depth=2
	addli r11, r3, 13444
	addli.d r[1:2], r[1:2], 8
	addli r8, r3, 13452
	addli r7, r3, 13440
	addli r10, r3, 13456
	stores.w r9, 0(r11)
	load.d r[11:12], -8(r30)                # 8-byte Folded Reload
	stores.w r28, 0(r8)
	addli r8, r3, 13448
	stores.w r15, 0(r7)
	stores.w r5, 0(r10)
	stores.w r27, 0(r8)
	addli r8, r3, 13468
	setneq.d r9, r[1:2], r[11:12]
	stores.w r4, 0(r8)
	addli r4, r3, 13464
	addli r3, r3, 13460
	stores.w r19, 0(r4)
	stores.w r6, 0(r3)
	beq r9, zero, .LBB0_47
.LBB0_23:                               # %vector.body47
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addli r3, r1, 8320
	addli r4, r1, 8321
	addli r6, r1, 8323
	addli r7, r1, 8324
	addli r9, r1, 8326
	addli r10, r1, 8327
	addli r5, r1, 8322
	addli r8, r1, 8325
	loads.bu r15, 0(r3)
	slli r3, r1, 2
	loads.bu r20, 0(r4)
	loads.bu r16, 0(r6)
	loads.bu r14, 0(r7)
	loads.bu r12, 0(r9)
	loads.bu r11, 0(r10)
	loads.bu r17, 0(r5)
	loads.bu r13, 0(r8)
	addli r4, r3, 9356
	addli r6, r3, 9352
	addli r7, r3, 9364
	addli r5, r3, 9360
	addli r8, r3, 4232
	addli r18, r3, 4252
	addli r23, r3, 4244
	addli r22, r3, 4240
	loads.w r28, 0(r4)
	loads.w r27, 0(r6)
	addli r4, r3, 9348
	addli r6, r3, 9372
	loads.w r5, 0(r5)
	loads.w r8, 0(r8)
	loads.w r18, 0(r18)
	loads.w r23, 0(r23)
	loads.w r25, 0(r22)
	loads.w r9, 0(r4)
	loads.w r4, 0(r6)
	addli r6, r3, 9368
	loads.w r19, 0(r6)
	loads.w r6, 0(r7)
	addli r7, r3, 4236
	loads.w r10, 0(r7)
	addli r7, r3, 4228
	loads.w r24, 0(r7)
	addli r7, r3, 4248
	loads.w r7, 0(r7)
	bneq r15, zero, .LBB0_25
# %bb.24:                               # %vector.body47
                                        #   in Loop: Header=BB0_23 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r15, r3, 4224
	loads.w r15, 0(r15)
	.loc	1 27 11                         # ieee-multiply.mlir:27:11
	beq r20, zero, .LBB0_26
	j .LBB0_27
.LBB0_25:                               #   in Loop: Header=BB0_23 Depth=2
	addli r15, r3, 9344
	loads.w r15, 0(r15)
	bneq r20, zero, .LBB0_27
.LBB0_26:                               # %vector.body47
                                        #   in Loop: Header=BB0_23 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r9, r24, 0
.LBB0_27:                               # %vector.body47
                                        #   in Loop: Header=BB0_23 Depth=2
	.loc	1 27 11                         # ieee-multiply.mlir:27:11
	beq r17, zero, .LBB0_33
# %bb.28:                               # %vector.body47
                                        #   in Loop: Header=BB0_23 Depth=2
	beq r16, zero, .LBB0_34
.LBB0_29:                               # %vector.body47
                                        #   in Loop: Header=BB0_23 Depth=2
	beq r14, zero, .LBB0_35
.LBB0_30:                               # %vector.body47
                                        #   in Loop: Header=BB0_23 Depth=2
	beq r13, zero, .LBB0_36
.LBB0_31:                               # %vector.body47
                                        #   in Loop: Header=BB0_23 Depth=2
	beq r12, zero, .LBB0_37
.LBB0_32:                               # %vector.body47
                                        #   in Loop: Header=BB0_23 Depth=2
	bneq r11, zero, .LBB0_22
	j .LBB0_38
.LBB0_33:                               # %vector.body47
                                        #   in Loop: Header=BB0_23 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r27, r8, 0
	.loc	1 27 11                         # ieee-multiply.mlir:27:11
	bneq r16, zero, .LBB0_29
.LBB0_34:                               # %vector.body47
                                        #   in Loop: Header=BB0_23 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r28, r10, 0
	.loc	1 27 11                         # ieee-multiply.mlir:27:11
	bneq r14, zero, .LBB0_30
.LBB0_35:                               # %vector.body47
                                        #   in Loop: Header=BB0_23 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r5, r25, 0
	.loc	1 27 11                         # ieee-multiply.mlir:27:11
	bneq r13, zero, .LBB0_31
.LBB0_36:                               # %vector.body47
                                        #   in Loop: Header=BB0_23 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, r23, 0
	.loc	1 27 11                         # ieee-multiply.mlir:27:11
	bneq r12, zero, .LBB0_32
.LBB0_37:                               # %vector.body47
                                        #   in Loop: Header=BB0_23 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r19, r7, 0
	.loc	1 27 11                         # ieee-multiply.mlir:27:11
	bneq r11, zero, .LBB0_22
.LBB0_38:                               # %vector.body47
                                        #   in Loop: Header=BB0_23 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r4, r18, 0
	j .LBB0_22
.LBB0_39:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 22 11 is_stmt 1               # ieee-multiply.mlir:22:11
	load.d r[3:4], -88(r30)                 # 8-byte Folded Reload
	min.sl r[3:4], r[1:2], r[3:4]
	addli.d r[3:4], r[3:4], 1
	max.sl r[3:4], r[3:4], r[1:2]
	sub.sl r[6:7], r[3:4], r[1:2]
	bneq r20, r10, .LBB0_48
# %bb.40:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	zext_int2long r[1:2], zero
	lui r5, 69
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	setlt.sl r1, r[1:2], r[6:7]
	addli r2, zero, 15
	xwait r2, 0
	bneq r1, zero, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_11 Depth=1
	lock zero, r22
	addli r1, zero, 1023
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 9344
	ew_cfg r10, zero, zero, 3
	ssaux r1, 0
	unlock r22
.LBB0_42:                               # %.thread21
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 26 11 is_stmt 1               # ieee-multiply.mlir:26:11
	bneq r9, zero, .LBB0_19
	j .LBB0_20
.LBB0_43:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 28 11                         # ieee-multiply.mlir:28:11
	beq r20, r22, .LBB0_50
# %bb.44:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r7, 32
	.loc	1 28 11                         # ieee-multiply.mlir:28:11
	bneq r9, zero, .LBB0_51
.LBB0_45:                               # %.critedge4
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	ori r25, r5, 1536
	.loc	1 35 11 is_stmt 1               # ieee-multiply.mlir:35:11
	bneq r20, r22, .LBB0_52
.LBB0_46:                               # %.critedge6.thread
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 14
	xwait r1, 0
	addli r1, zero, 37
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 9344
	ds_cfg r22, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r24, zero, 13
	loadli.w r2,  -100(r30)                 # 4-byte Folded Reload
	shuffle_coa r2, r1, r10, 4
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
	ori r1, r5, 1408
	ds_cfg r22, zero, 0
	ds_cfg r10, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r10, zero, 13
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	shuffle_coa r1, r2, r10, 4
	addli r1, zero, 31
	unlock zero
	xsignal r1, 0
	addli r1, zero, 40
	xsignal r1, 0
	.loc	1 37 11                         # ieee-multiply.mlir:37:11
	addli r1, zero, 25
	xwait r1, 0
	addli r1, zero, 44
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 32
	ds_cfg r22, zero, 0
	ds_cfg r1, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r10, zero, 13
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	shuffle_coa r1, r25, r24, 4
	addli r1, zero, 26
	unlock zero
	xsignal r1, 0
	addli r1, zero, 45
	j .LBB0_77
.LBB0_47:                               # %.thread33
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 27 11                         # ieee-multiply.mlir:27:11
	addli r1, zero, 6
	mfence { sm }
	.loc	1 25 11                         # ieee-multiply.mlir:25:11
	core_id r20
	addli r22, zero, 2
	addli r10, zero, 1
	addli r11, zero, 3
	lui r23, 260096
	addli r24, zero, 1024
	lui r5, 69
	.loc	1 27 11                         # ieee-multiply.mlir:27:11
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	addli r1, zero, 14
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	loadli.w r9,  -44(r30)                  # 4-byte Folded Reload
	load.d r[12:13], -56(r30)               # 8-byte Folded Reload
	lui r7, 32
	.loc	1 28 11                         # ieee-multiply.mlir:28:11
	beq r9, zero, .LBB0_45
	j .LBB0_51
.LBB0_48:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	addli r1, zero, 6
	bneq r20, r1, .LBB0_18
# %bb.49:                               #   in Loop: Header=BB0_11 Depth=1
	load.d r[1:2], -64(r30)                 # 8-byte Folded Reload
	addli r3, zero, 11
	addli r5, zero, 9344
	xwait r3, 0
	load.d r[3:4], 0(r30)
	sll.d r[1:2], r[1:2], r22
	add.ul r[1:2], r[3:4], r[1:2]
	addli r3, zero, 4
	addli r4, zero, 4096
	lock zero, r3
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r5, r1, r4, 3
	addli r1, zero, 12
	dma_cfg r4, r4, r6, 4
	dma_run zero
	unlock r3
	j .LBB0_17
.LBB0_50:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 28 11                         # ieee-multiply.mlir:28:11
	addli r1, zero, 16
	addli r2, zero, 13440
	xwait r1, 0
	addli r1, zero, 29
	xwait r1, 0
	lock zero, zero
	ds_cfg r22, zero, 0
	ds_cfg r10, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r10, zero, 13
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	shuffle_coa r1, r2, r24, 4
	addli r1, zero, 17
	unlock zero
	xsignal r1, 0
	addli r1, zero, 24
	xsignal r1, 0
	lui r7, 32
	beq r9, zero, .LBB0_45
.LBB0_51:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 24
	xwait r1, 0
	addli r1, zero, 35
	xwait r1, 0
	lock zero, r22
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r24, zero, zero, 3
	loadli.w r2,  -40(r30)                  # 4-byte Folded Reload
	loadli.w r3,  -36(r30)                  # 4-byte Folded Reload
	ssreduce r3, r2, 0
	addli r2, zero, 25
	unlock r22
	xsignal r2, 0
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	lock zero, r22
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r23, zero, zero, 0
	ew_cfg r10, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 4096
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r1, 4
	addli r1, zero, 30
	hp_ssmul r3, r3, r3, 0
	unlock r22
	xsignal r1, 0
	ori r25, r5, 1536
	.loc	1 35 11                         # ieee-multiply.mlir:35:11
	beq r20, r22, .LBB0_46
.LBB0_52:                               #   in Loop: Header=BB0_11 Depth=1
	beq r20, r11, .LBB0_74
# %bb.53:                               # %.thread28
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 37 11                         # ieee-multiply.mlir:37:11
	bneq r9, zero, .LBB0_78
.LBB0_54:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 38 11                         # ieee-multiply.mlir:38:11
	bneq r20, r11, .LBB0_79
.LBB0_55:                               # %vector.ph37
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 6
	xwait r1, 0
	addli r1, zero, 9
	xwait r1, 0
	addli r1, zero, 17
	xwait r1, 0
	addli r1, zero, 51
	xwait r1, 0
	xfence
	zext_int2long r[1:2], zero
	mfence { lm, sm, gm }
	j .LBB0_57
.LBB0_56:                               # %vector.body38
                                        #   in Loop: Header=BB0_57 Depth=2
	addli r8, r3, 13452
	addli.d r[1:2], r[1:2], 8
	addli r6, r3, 13440
	addli r9, r3, 13456
	stores.w r10, 0(r8)
	addli r10, r3, 13444
	addli r8, r3, 13448
	stores.w r12, 0(r6)
	addli r6, r3, 13464
	stores.w r4, 0(r9)
	stores.w r22, 0(r10)
	load.d r[10:11], -8(r30)                # 8-byte Folded Reload
	stores.w r24, 0(r8)
	addli r8, r3, 13468
	addli r3, r3, 13460
	stores.w r23, 0(r6)
	stores.w r7, 0(r8)
	stores.w r5, 0(r3)
	setneq.d r10, r[1:2], r[10:11]
	beq r10, zero, .LBB0_73
.LBB0_57:                               # %vector.body38
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addli r3, r1, 8320
	addli r6, r1, 8323
	addli r4, r1, 8321
	addli r8, r1, 8325
	addli r9, r1, 8326
	addli r21, r25, 0
	addli r5, r1, 8322
	addli r7, r1, 8324
	addli r10, r1, 8327
	loads.bu r20, 0(r3)
	slli r3, r1, 2
	loads.bu r16, 0(r6)
	loads.bu r19, 0(r4)
	loadli.w r4,  -16(r30)                  # 4-byte Folded Reload
	loads.bu r14, 0(r8)
	loads.bu r13, 0(r9)
	loads.bu r18, 0(r5)
	loads.bu r15, 0(r7)
	loads.bu r11, 0(r10)
	addli r6, r3, 4236
	addli r8, r3, 4232
	addli r27, r3, 4240
	addli r17, r3, 4252
	addli r28, r3, 4244
	add.s r12, r3, r4
	loads.w r25, 0(r6)
	addli r6, r3, 4228
	loads.w r9, 0(r8)
	loads.w r17, 0(r17)
	loads.w r28, 0(r28)
	loads.w r27, 0(r27)
	loads.w r10, 12(r12)
	loads.w r24, 8(r12)
	loads.w r22, 4(r12)
	loads.w r7, 28(r12)
	loads.w r23, 24(r12)
	loads.w r5, 20(r12)
	loads.w r4, 16(r12)
	loads.w r8, 0(r6)
	addli r6, r3, 4248
	loads.w r6, 0(r6)
	beq r20, zero, .LBB0_65
# %bb.58:                               # %vector.body38
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	loads.w r12, 0(r12)
	.loc	1 38 11                         # ieee-multiply.mlir:38:11
	beq r19, zero, .LBB0_66
.LBB0_59:                               # %vector.body38
                                        #   in Loop: Header=BB0_57 Depth=2
	beq r18, zero, .LBB0_67
.LBB0_60:                               # %vector.body38
                                        #   in Loop: Header=BB0_57 Depth=2
	beq r16, zero, .LBB0_68
.LBB0_61:                               # %vector.body38
                                        #   in Loop: Header=BB0_57 Depth=2
	beq r15, zero, .LBB0_69
.LBB0_62:                               # %vector.body38
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r25, r21, 0
	.loc	1 38 11                         # ieee-multiply.mlir:38:11
	beq r14, zero, .LBB0_70
.LBB0_63:                               # %vector.body38
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	lui r21, 522240
	.loc	1 38 11                         # ieee-multiply.mlir:38:11
	beq r13, zero, .LBB0_71
.LBB0_64:                               # %vector.body38
                                        #   in Loop: Header=BB0_57 Depth=2
	bneq r11, zero, .LBB0_56
	j .LBB0_72
.LBB0_65:                               # %vector.body38
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r12, r3, 4224
	loads.w r12, 0(r12)
	.loc	1 38 11                         # ieee-multiply.mlir:38:11
	bneq r19, zero, .LBB0_59
.LBB0_66:                               # %vector.body38
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r22, r8, 0
	.loc	1 38 11                         # ieee-multiply.mlir:38:11
	bneq r18, zero, .LBB0_60
.LBB0_67:                               # %vector.body38
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r24, r9, 0
	.loc	1 38 11                         # ieee-multiply.mlir:38:11
	bneq r16, zero, .LBB0_61
.LBB0_68:                               # %vector.body38
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r10, r25, 0
	.loc	1 38 11                         # ieee-multiply.mlir:38:11
	bneq r15, zero, .LBB0_62
.LBB0_69:                               # %vector.body38
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r4, r27, 0
	addli r25, r21, 0
	.loc	1 38 11                         # ieee-multiply.mlir:38:11
	bneq r14, zero, .LBB0_63
.LBB0_70:                               # %vector.body38
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r5, r28, 0
	lui r21, 522240
	.loc	1 38 11                         # ieee-multiply.mlir:38:11
	bneq r13, zero, .LBB0_64
.LBB0_71:                               # %vector.body38
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r23, r6, 0
	.loc	1 38 11                         # ieee-multiply.mlir:38:11
	bneq r11, zero, .LBB0_56
.LBB0_72:                               # %vector.body38
                                        #   in Loop: Header=BB0_57 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r7, r17, 0
	j .LBB0_56
.LBB0_73:                               # %.thread34
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 38 11                         # ieee-multiply.mlir:38:11
	addli r1, zero, 7
	mfence { sm }
	addli r5, zero, 10
	.loc	1 25 11 is_stmt 1               # ieee-multiply.mlir:25:11
	core_id r20
	addli r22, zero, 2
	addli r10, zero, 1
	addli r11, zero, 3
	lui r23, 260096
	addli r24, zero, 1024
	.loc	1 38 11                         # ieee-multiply.mlir:38:11
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r5, 0
	xsignal r1, 0
	addli r1, zero, 52
	xsignal r1, 0
	loadli.w r9,  -44(r30)                  # 4-byte Folded Reload
	load.d r[12:13], -56(r30)               # 8-byte Folded Reload
	.loc	1 39 11                         # ieee-multiply.mlir:39:11
	beq r9, zero, .LBB0_81
	j .LBB0_84
.LBB0_74:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 35 11                         # ieee-multiply.mlir:35:11
	addli r2, zero, 36
	addli r6, zero, 38
	ori r4, r5, 1408
	addli r1, zero, 0
	xwait r2, 0
	addli r2, zero, 39
	xwait r2, 0
	lock zero, r11
	lui r2, 36
	rs_cfg zero, r10, r10, 1
	rs_cfg zero, r10, zero, 3
	ori r2, r2, 1280
	loadli.w r3,  -100(r30)                 # 4-byte Folded Reload
	rs_col r2, r3, r24, 0
	addli r3, zero, 37
	unlock r11
	xsignal r3, 0
	addli r3, zero, 40
	xsignal r6, 0
	xwait r3, 0
	addli r3, zero, 43
	xwait r3, 0
	lock zero, r11
	ori r3, r5, 1280
	rs_cfg zero, r10, r10, 1
	rs_cfg zero, r10, zero, 3
	rs_col r3, r4, r10, 0
	addli r4, zero, 41
	unlock r11
	xsignal r4, 0
	addli r4, zero, 42
	xsignal r4, 0
	xwait r6, 0
	xwait r4, 0
	addli r4, zero, 46
	xwait r4, 0
	lock zero, r22
	lui r4, 784384
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r23, r4, zero, 0
	ew_cfg zero, zero, zero, 2
	ew_cfg r10, zero, zero, 3
.LBB0_75:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r1, r25
	add.s r5, r1, r2
	addli r1, r1, 128
	dsmadd r4, r5, r3, 0
	bneq r1, r7, .LBB0_75
# %bb.76:                               # %.critedge6
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 39
	unlock r22
	xsignal r1, 0
	addli r1, zero, 43
	xsignal r1, 0
	addli r1, zero, 44
	xsignal r1, 0
	.loc	1 37 11                         # ieee-multiply.mlir:37:11
	addli r1, zero, 26
	xwait r1, 0
	addli r1, zero, 50
	xwait r1, 0
	addli r1, zero, 32
	lock zero, r11
	rs_cfg zero, r24, r1, 1
	rs_cfg zero, r24, zero, 3
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -12(r30)                  # 4-byte Folded Reload
	rs_col r2, r1, r10, 0
	addli r1, zero, 27
	unlock r11
	xsignal r1, 0
	addli r1, zero, 49
	xsignal r1, 0
	addli r1, zero, 47
.LBB0_77:                               # %.thread28
                                        #   in Loop: Header=BB0_11 Depth=1
	xsignal r1, 0
	beq r9, zero, .LBB0_54
.LBB0_78:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 47
	xwait r1, 0
	addli r1, zero, 52
	xwait r1, 0
	lock zero, r22
	addli r1, zero, 1023
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r23, 0
	ew_cfg zero, r1, zero, 2
	ew_cfg r10, zero, zero, 3
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -16(r30)                  # 4-byte Folded Reload
	dsmul r2, r1, r1, 0
	addli r1, zero, 51
	unlock r22
	xsignal r1, 0
	.loc	1 38 11                         # ieee-multiply.mlir:38:11
	beq r20, r11, .LBB0_55
.LBB0_79:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r5, zero, 10
	.loc	1 39 11 is_stmt 1               # ieee-multiply.mlir:39:11
	beq r20, r22, .LBB0_83
# %bb.80:                               #   in Loop: Header=BB0_11 Depth=1
	bneq r9, zero, .LBB0_84
.LBB0_81:                               # %.critedge10
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	bneq r20, r22, .LBB0_85
.LBB0_82:                               # %.thread29
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 19
	addli r2, zero, 13440
	xwait r1, 0
	addli r1, zero, 33
	xwait r1, 0
	lock zero, zero
	ds_cfg r22, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r24, zero, 13
	ds_cfg r10, zero, 14
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	shuffle_batch r2, r1, r10, 4
	addli r1, zero, 20
	unlock zero
	xsignal r1, 0
	addli r1, zero, 34
	j .LBB0_99
.LBB0_83:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 39 11                         # ieee-multiply.mlir:39:11
	addli r1, zero, 18
	addli r2, zero, 13440
	xwait r1, 0
	addli r1, zero, 27
	xwait r1, 0
	lock zero, zero
	ds_cfg r22, zero, 0
	ds_cfg r10, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r10, zero, 13
	loadli.w r1,  -40(r30)                  # 4-byte Folded Reload
	shuffle_coa r1, r2, r24, 4
	addli r1, zero, 19
	unlock zero
	xsignal r1, 0
	addli r1, zero, 28
	xsignal r1, 0
	beq r9, zero, .LBB0_81
.LBB0_84:                               # %.critedge8
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 28
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	addli r4, zero, 1
	addli r5, zero, 1
	addli r6, zero, 1
	.loc	1 39 11                         # ieee-multiply.mlir:39:11
	xwait r1, 0
	addli r1, zero, 31
	xwait r1, 0
	lock zero, r22
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r24, zero, zero, 3
	loadli.w r2,  -40(r30)                  # 4-byte Folded Reload
	loadli.w r3,  -36(r30)                  # 4-byte Folded Reload
	ssreduce r3, r2, 0
	addli r2, zero, 29
	unlock r22
	xsignal r2, 0
	.loc	1 45 11                         # ieee-multiply.mlir:45:11
	lock zero, r22
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	addli r2, r3, 0
	.loc	1 45 11                         # ieee-multiply.mlir:45:11
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r23, zero, zero, 0
	ew_cfg r10, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 4096
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r1, 4
	addli r1, zero, 4
	hp_ssmul r3, r3, r3, 0
	unlock r22
	xsignal r1, 0
	.loc	1 46 11                         # ieee-multiply.mlir:46:11
	lock zero, r22
	ew_cfg zero, zero, zero, 1
	loadli.w r1,  -104(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r23, zero, r1, 0
	addli r1, zero, 32
	ew_cfg zero, zero, zero, 2
	ew_cfg r10, zero, zero, 3
	dsmadd r3, r3, r3, 0
	unlock r22
	xsignal r1, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	xwait r1, 0
	xfence
	jal _ZN3xpu10math_rsqrtEPU3AS2fS1_iii
	load.d r[12:13], -56(r30)               # 8-byte Folded Reload
	loadli.w r9,  -44(r30)                  # 4-byte Folded Reload
	addli r1, zero, 33
	addli r11, zero, 3
	addli r5, zero, 10
	addli r10, zero, 1
	xsignal r1, 0
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	beq r20, r22, .LBB0_82
.LBB0_85:                               #   in Loop: Header=BB0_11 Depth=1
	beq r20, r11, .LBB0_98
# %bb.86:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 49 23                         # ieee-multiply.mlir:49:23
	bneq r9, zero, .LBB0_100
.LBB0_87:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 71 11                         # ieee-multiply.mlir:71:11
	bneq r20, r11, .LBB0_101
.LBB0_88:                               # %vector.ph
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 21
	xwait r1, 0
	addli r1, zero, 45
	xwait r1, 0
	addli r1, zero, 48
	xwait r1, 0
	addli r1, zero, 53
	xwait r1, 0
	xfence
	zext_int2long r[1:2], zero
	mfence { lm, sm, gm }
	j .LBB0_90
.LBB0_89:                               # %vector.body
                                        #   in Loop: Header=BB0_90 Depth=2
	load.d r[7:8], -8(r30)                  # 8-byte Folded Reload
	addli.d r[1:2], r[1:2], 4
	addli r4, r3, 13452
	stores.w r6, 0(r4)
	addli r4, r3, 13448
	setneq.d r7, r[1:2], r[7:8]
	addli r8, r3, 13440
	addli r3, r3, 13444
	stores.w r11, 0(r4)
	stores.w r9, 0(r3)
	stores.w r5, 0(r8)
	beq r7, zero, .LBB0_9
.LBB0_90:                               # %vector.body
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	loadli.w r5,  -20(r30)                  # 4-byte Folded Reload
	slli r4, r1, 7
	slli r3, r1, 2
	loadli.w r7,  -12(r30)                  # 4-byte Folded Reload
	add.s r4, r4, r25
	add.s r5, r3, r5
	add.s r14, r3, r7
	loads.w r6, 0(r4)
	loads.w r9, 128(r4)
	loads.w r11, 256(r4)
	loads.w r7, 384(r4)
	loads.w r10, 0(r5)
	loads.w r13, 4(r5)
	loads.w r12, 8(r5)
	loads.w r8, 12(r5)
	loads.w r4, 12(r14)
	loads.w r15, 4(r14)
	.loc	1 56 24                         # ieee-multiply.mlir:56:24
	and r5, r6, r26
	.loc	1 57 24                         # ieee-multiply.mlir:57:24
	and r6, r10, r26
	.loc	1 71 11                         # ieee-multiply.mlir:71:11
	loads.w r10, 8(r14)
	.loc	1 60 24                         # ieee-multiply.mlir:60:24
	seteq r16, r5, r21
	.loc	1 62 25                         # ieee-multiply.mlir:62:25
	seteq r19, r5, zero
	.loc	1 63 25                         # ieee-multiply.mlir:63:25
	seteq r17, r6, zero
	.loc	1 61 24                         # ieee-multiply.mlir:61:24
	seteq r18, r6, r21
	.loc	1 67 27                         # ieee-multiply.mlir:67:27
	max.u r5, r5, r6
	setlt.u r5, r21, r5
	.loc	1 64 29                         # ieee-multiply.mlir:64:29
	and r6, r16, r17
	.loc	1 65 29                         # ieee-multiply.mlir:65:29
	and r16, r19, r18
	.loc	1 66 27                         # ieee-multiply.mlir:66:27
	or r6, r6, r16
	.loc	1 68 23                         # ieee-multiply.mlir:68:23
	or r16, r5, r6
	lui r6, 523264
	lui r5, 523264
	.loc	1 70 25                         # ieee-multiply.mlir:70:25
	bneq r16, zero, .LBB0_92
# %bb.91:                               # %vector.body
                                        #   in Loop: Header=BB0_90 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	loads.w r5, 0(r14)
.LBB0_92:                               # %vector.body
                                        #   in Loop: Header=BB0_90 Depth=2
	and r9, r9, r26
	and r13, r13, r26
	seteq r14, r9, r21
	seteq r18, r9, zero
	seteq r16, r13, zero
	seteq r17, r13, r21
	max.u r9, r9, r13
	setlt.u r9, r21, r9
	and r13, r14, r16
	and r14, r18, r17
	or r13, r13, r14
	or r13, r9, r13
	lui r9, 523264
	.loc	1 70 25                         # ieee-multiply.mlir:70:25
	bneq r13, zero, .LBB0_94
# %bb.93:                               # %vector.body
                                        #   in Loop: Header=BB0_90 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r9, r15, 0
.LBB0_94:                               # %vector.body
                                        #   in Loop: Header=BB0_90 Depth=2
	and r11, r11, r26
	and r12, r12, r26
	seteq r13, r11, r21
	seteq r16, r11, zero
	seteq r14, r12, zero
	seteq r15, r12, r21
	max.u r11, r11, r12
	setlt.u r11, r21, r11
	and r12, r13, r14
	and r13, r16, r15
	or r12, r12, r13
	or r12, r11, r12
	lui r11, 523264
	.loc	1 70 25                         # ieee-multiply.mlir:70:25
	bneq r12, zero, .LBB0_96
# %bb.95:                               # %vector.body
                                        #   in Loop: Header=BB0_90 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r11, r10, 0
.LBB0_96:                               # %vector.body
                                        #   in Loop: Header=BB0_90 Depth=2
	and r7, r7, r26
	and r8, r8, r26
	seteq r10, r7, r21
	seteq r14, r7, zero
	seteq r12, r8, zero
	seteq r13, r8, r21
	max.u r7, r7, r8
	setlt.u r7, r21, r7
	and r8, r10, r12
	and r10, r14, r13
	or r8, r8, r10
	or r7, r7, r8
	.loc	1 70 25                         # ieee-multiply.mlir:70:25
	bneq r7, zero, .LBB0_89
# %bb.97:                               # %vector.body
                                        #   in Loop: Header=BB0_90 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r6, r4, 0
	j .LBB0_89
.LBB0_98:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 48 11 is_stmt 1               # ieee-multiply.mlir:48:11
	addli r1, zero, 20
	addli r2, zero, 13440
	xwait r1, 0
	addli r1, zero, 54
	xwait r1, 0
	addli r1, zero, 32
	lock zero, r11
	rs_cfg zero, r10, r1, 0
	rs_cfg zero, r10, zero, 2
	loadli.w r1,  -20(r30)                  # 4-byte Folded Reload
	rs_row r1, r2, r24, 0
	addli r1, zero, 21
	unlock r11
	xsignal r1, 0
	addli r1, zero, 53
.LBB0_99:                               #   in Loop: Header=BB0_11 Depth=1
	xsignal r1, 0
	.loc	1 49 23                         # ieee-multiply.mlir:49:23
	beq r9, zero, .LBB0_87
.LBB0_100:                              #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 34
	xwait r1, 0
	addli r1, zero, 49
	xwait r1, 0
	xfence
	addli r1, zero, 1023
	mfence { lm, sm, gm }
	lock zero, r22
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r23, zero, zero, 0
	ew_cfg zero, r1, zero, 2
	ew_cfg r10, zero, zero, 3
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	loads.w r1, 0(r1)
	ewcoeff_cfg r1, zero, zero, 0
	loadli.w r1,  -12(r30)                  # 4-byte Folded Reload
	hp_ssmul r1, r1, r1, 0
	addli r1, zero, 35
	unlock r22
	xsignal r1, 0
	addli r1, zero, 48
	xsignal r1, 0
	.loc	1 71 11                         # ieee-multiply.mlir:71:11
	beq r20, r11, .LBB0_88
.LBB0_101:                              #   in Loop: Header=BB0_11 Depth=1
	.loc	1 74 5                          # ieee-multiply.mlir:74:5
	bneq r20, zero, .LBB0_10
# %bb.102:                              #   in Loop: Header=BB0_11 Depth=1
	load.d r[1:2], -64(r30)                 # 8-byte Folded Reload
	addli r3, zero, 22
	addli r6, zero, 13440
	xwait r3, 0
	load.d r[3:4], 16(r30)
	sll.d r[1:2], r[1:2], r22
	add.ul r[1:2], r[3:4], r[1:2]
	addli r4, zero, 5
	addli r3, zero, 4096
	lock zero, r4
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r10, zero, 1
	dma_cfg r2, zero, zero, 2
	dma_cfg r1, r6, r3, 3
	load.d r[1:2], -72(r30)                 # 8-byte Folded Reload
	dma_cfg r3, r3, r1, 4
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
	bneq r20, zero, .LBB0_107
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/native-activation-k44xkpbo" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
