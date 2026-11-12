	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/native-activation-fy9ua6v8" "ieee-multiply.mlir"
	.loc	1 2 0                           # ieee-multiply.mlir:2:0
	.cfi_startproc
# %bb.0:
	addli sp, sp, -192
	addli r1, zero, 1
.Ltmp0:
	.loc	1 26 11 prologue_end            # ieee-multiply.mlir:26:11
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
	addli r2, zero, 7
	csr_set csr3, r1
	addli r1, zero, 3
	sync_group
	xsignal r1, 0
	addli r1, zero, 4
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 10
	addli r2, zero, 14
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 25
	addli r2, zero, 17
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
	addli r1, zero, 44
	addli r2, zero, 48
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 50
	addli r2, zero, 52
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
	mul.s r1, r1, r3
	addli r3, zero, 1
	addli r2, r2, -1
	div.s r2, r2, r4
	load_param_i r4, 0
	mul.s r17, r2, r4
	fmac.s r2, r2, r4
	min.s r16, r2, r1
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	bneq r20, r3, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r15, zero, 3
	addli r7, zero, 5
	storeli.w zero, -116(r30)               # 4-byte Folded Spill
	addli r1, zero, 2
	addli r8, zero, 4
	addli r2, zero, 7
	addli r18, zero, 16
	addli r19, zero, 17
	addli r20, zero, 18
	addli r21, zero, 19
	addli r22, zero, 20
	addli r23, zero, 21
	addli r24, zero, 22
	addli r25, zero, 23
	addli r26, zero, 24
	addli r27, zero, 25
	addli r28, zero, 26
	addli r14, zero, 27
	addli r13, zero, 28
	addli r11, zero, 29
	addli r10, zero, 30
	addli r9, zero, 31
	addli r12, zero, 64
	addli r6, zero, 32
	addli r5, zero, 128
	addli r4, zero, 4096
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	xwait r15, 0
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 6
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r2, 10
	load.d r[1:2], 8(r30)
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg r3, r3, zero, 0
	dma_cfg r3, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg zero, zero, r12, 3
	dma_cfg r5, zero, r6, 4
	dma_cfg r4, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	lock zero, r8
	dma_cfg r3, r3, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r12, r1, r12, 3
	addli r1, zero, 2048
	addli r2, zero, 6
	dma_cfg r5, r12, r6, 4
	dma_cfg r4, r1, r3, 5
	addli r1, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 7
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r20, 10
	core_id r20
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r27, 10
	loadli.w r27,  -116(r30)                # 4-byte Folded Reload
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg r3, r3, zero, 0
	dma_cfg r3, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg zero, zero, r12, 3
	dma_cfg r5, zero, r6, 4
	dma_cfg r4, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	xsignal r1, 0
	ble.s r16, r17, .LBB0_164
	j .LBB0_8
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r1, zero, 5
	bneq r20, r1, .LBB0_7
# %bb.6:
	addli r1, zero, 2
	addli r27, zero, 1
	xwait r1, 0
	ble.s r16, r17, .LBB0_164
	j .LBB0_8
.LBB0_7:
	addli r27, zero, 0
	ble.s r16, r17, .LBB0_164
.LBB0_8:                                # %.lr.ph
	sext_int2long r[1:2], r17
	addli r3, zero, 1023
	addli r21, zero, 2
	addli r9, zero, 1
	addli r10, zero, 4096
	addli r11, zero, 10
	addli r12, zero, 3
	lui r28, 1024
	lui r17, 522240
	addli r5, zero, 6
	storeli.w r27, -116(r30)                # 4-byte Folded Spill
	store.d r[1:2], -64(r30)                # 8-byte Folded Spill
	sext_int2long r[1:2], r16
	store.d r[1:2], -96(r30)                # 8-byte Folded Spill
	addli r1, zero, 63
	zext_int2long r[1:2], r1
	store.d r[1:2], -104(r30)               # 8-byte Folded Spill
	lui r1, 524287
	lui r2, 7
	ori r24, r1, 4095
	ori r22, r2, 4095
	lui r1, 522239
	lui r2, 5
	ori r23, r1, 4095
	ori r1, r2, 1152
	lui r2, 70
	storeli.w r24, -48(r30)                 # 4-byte Folded Spill
	storeli.w r22, -16(r30)                 # 4-byte Folded Spill
	storeli.w r1, -72(r30)                  # 4-byte Folded Spill
	lui r1, 69
	storeli.w r23, -12(r30)                 # 4-byte Folded Spill
	ori r1, r1, 1536
	storeli.w r1, -44(r30)                  # 4-byte Folded Spill
	ori r1, r2, 1536
	lui r2, 71
	storeli.w r1, -52(r30)                  # 4-byte Folded Spill
	lui r1, 239665
	ori r1, r1, 623
	storeli.w r1, -120(r30)                 # 4-byte Folded Spill
	ori r1, r2, 1536
	storeli.w r1, -56(r30)                  # 4-byte Folded Spill
	zext_int2long r[1:2], zero
	store.d r[1:2], -112(r30)               # 8-byte Folded Spill
	lui r1, 37
	zext_int2long r[2:3], r3
	ori r1, r1, 1152
	store.d r[2:3], -128(r30)               # 8-byte Folded Spill
	storeli.w r1, -68(r30)                  # 4-byte Folded Spill
	j .LBB0_12
.LBB0_9:                                # %.thread34
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 79 11 is_stmt 1               # ieee-multiply.mlir:79:11
	addli r1, zero, 24
	mfence { sm }
	addli r9, zero, 1
	addli r10, zero, 4096
	addli r11, zero, 10
	addli r12, zero, 3
	addli r5, zero, 6
	xsignal r1, 0
	addli r1, zero, 44
	xsignal r1, 0
	addli r1, zero, 48
	xsignal r1, 0
	addli r1, zero, 52
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 0 is_stmt 0                 # ieee-multiply.mlir:0:0
	xsignal r1, 0
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=1
	load.d r[1:2], -64(r30)                 # 8-byte Folded Reload
	load.d r[3:4], -96(r30)                 # 8-byte Folded Reload
	addli.d r[1:2], r[1:2], 1
	store.d r[1:2], -64(r30)                # 8-byte Folded Spill
	setlt.sl r1, r[1:2], r[3:4]
	beq r1, zero, .LBB0_164
.LBB0_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_91 Depth 2
                                        #     Child Loop BB0_75 Depth 2
                                        #     Child Loop BB0_113 Depth 2
                                        #     Child Loop BB0_135 Depth 2
	.loc	1 5 14 is_stmt 1                # ieee-multiply.mlir:5:14
	beq r27, zero, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 4
	xwait r1, 0
	lock zero, r21
	lui r1, 280576
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 31
	ew_cfg zero, r1, zero, 2
	.loc	1 6 14                          # ieee-multiply.mlir:6:14
	addli r1, zero, 7
	.loc	1 5 14                          # ieee-multiply.mlir:5:14
	ew_cfg r9, zero, zero, 3
	ssaux r10, 0
	unlock r21
	.loc	1 6 14                          # ieee-multiply.mlir:6:14
	xwait r1, 0
	lock zero, r21
	addli r1, zero, 1023
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 4224
	ew_cfg r9, zero, zero, 3
	ssaux r1, 0
	addli r1, zero, 5
	unlock r21
	xsignal r1, 0
.LBB0_14:                               # %.critedge2
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 14 is_stmt 0                # ieee-multiply.mlir:0:14
	loadli.w r1,  40(r30)
	load.d r[2:3], -64(r30)                 # 8-byte Folded Reload
	div.s r1, r2, r1
	loadli.w r2,  36(r30)
	div.s r3, r1, r2
	.loc	1 78 11 is_stmt 1               # ieee-multiply.mlir:78:11
	sext_int2long r[1:2], r3
	.loc	1 17 10                         # ieee-multiply.mlir:17:10
	sll.d r[6:7], r[1:2], r11
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	store.d r[6:7], -80(r30)                # 8-byte Folded Spill
	bneq r20, r12, .LBB0_19
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=1
	xwait r11, 0
	xfence
	setlti r4, r3, 64
	mfence { lm, sm, gm }
	load.d r[5:6], -112(r30)                # 8-byte Folded Reload
	load.d r[13:14], -128(r30)              # 8-byte Folded Reload
.LBB0_16:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	setlt.ul r7, r[5:6], r[13:14]
	addli r8, r5, 8320
	addli.d r[5:6], r[5:6], 1
	stores.b r4, 0(r8)
	bneq r7, zero, .LBB0_16
# %bb.17:                               # %.thread32
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	load.d r[4:5], -104(r30)                # 8-byte Folded Reload
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	mfence { sm }
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	min.sl r[4:5], r[1:2], r[4:5]
	addli.d r[4:5], r[4:5], 1
	max.sl r[1:2], r[4:5], r[1:2]
	sub.s r1, r1, r3
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	store.d r[1:2], -88(r30)                # 8-byte Folded Spill
	addli r1, zero, 8
.LBB0_18:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r5, zero, 6
	j .LBB0_23
.LBB0_19:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 23 11 is_stmt 1               # ieee-multiply.mlir:23:11
	load.d r[3:4], -104(r30)                # 8-byte Folded Reload
	min.sl r[3:4], r[1:2], r[3:4]
	addli.d r[3:4], r[3:4], 1
	max.sl r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	store.d r[1:2], -88(r30)                # 8-byte Folded Spill
	bneq r20, r9, .LBB0_162
# %bb.20:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli.d r[3:4], r[1:2], 0
	zext_int2long r[1:2], zero
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	setlt.sl r1, r[1:2], r[3:4]
	addli r2, zero, 14
	xwait r2, 0
	bneq r1, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_12 Depth=1
	lock zero, r21
	addli r1, zero, 1023
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 9344
	ew_cfg r9, zero, zero, 3
	ssaux r1, 0
	unlock r21
.LBB0_22:                               # %.thread25
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 11
.LBB0_23:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 0                           # ieee-multiply.mlir:0:0
	xsignal r1, 0
.LBB0_24:                               #   in Loop: Header=BB0_12 Depth=1
	beq r27, zero, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 29 11 is_stmt 1               # ieee-multiply.mlir:29:11
	addli r1, zero, 12
	xwait r1, 0
	lock zero, r21
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 1023
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 9344
	ew_cfg r9, zero, zero, 3
	dsmadd r1, r1, zero, 0
	addli r1, zero, 13
	unlock r21
	xsignal r1, 0
.LBB0_26:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r1, 4
	ori r7, r1, 1152
	addli r1, zero, 1024
	zext_int2long r[1:2], r1
	.loc	1 30 11 is_stmt 1               # ieee-multiply.mlir:30:11
	store.d r[1:2], -8(r30)                 # 8-byte Folded Spill
	bneq r20, r12, .LBB0_69
# %bb.27:                               # %vector.ph54
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 13
	storeli.w r7, -36(r30)                  # 4-byte Folded Spill
	xwait r1, 0
	addli r1, zero, 17
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	load.d r[2:3], -112(r30)                # 8-byte Folded Reload
	j .LBB0_29
.LBB0_28:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r11, 4
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	add.s r1, r4, r6
	addli.d r[2:3], r[2:3], 8
	ori r5, r11, 1164
	ori r7, r11, 1160
	ori r8, r11, 1156
	stores.w r19, 0(r1)
	load.d r[18:19], -8(r30)                # 8-byte Folded Reload
	ori r6, r11, 1168
	add.s r10, r4, r5
	add.s r14, r4, r6
	stores.w r22, 0(r10)
	add.s r10, r4, r7
	stores.w r17, 0(r14)
	stores.w r9, 0(r10)
	loadli.w r10,  -20(r30)                 # 4-byte Folded Reload
	add.s r9, r4, r8
	stores.w r10, 0(r9)
	ori r9, r11, 1180
	ori r10, r11, 1176
	ori r11, r11, 1172
	add.s r1, r4, r9
	stores.w r12, 0(r1)
	setneq.d r1, r[2:3], r[18:19]
	add.s r12, r4, r10
	add.s r4, r4, r11
	stores.w r13, 0(r12)
	stores.w r15, 0(r4)
	beq r1, zero, .LBB0_89
.LBB0_29:                               # %vector.body55
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r4, r2, 2
	lui r15, 522240
	addli r6, r4, 9356
	addli r1, r4, 9344
	addli r5, r4, 9360
	loads.w r16, 0(r6)
	loads.w r11, 0(r1)
	addli r1, r4, 9348
	addli r6, r4, 9352
	loads.w r14, 0(r5)
	addli r5, r4, 9372
	loads.w r10, 0(r1)
	addli r1, r4, 9364
	loads.w r18, 0(r6)
	loads.w r5, 0(r5)
	loads.w r7, 0(r1)
	addli r1, r4, 9368
	loads.w r6, 0(r1)
	and r20, r16, r24
	setlt.u r1, r15, r20
	bneq r1, zero, .LBB0_31
# %bb.30:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r22, r16, 0
	j .LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_29 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	or r22, r16, r28
.LBB0_32:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	and r25, r18, r24
	setlt.u r1, r15, r25
	bneq r1, zero, .LBB0_34
# %bb.33:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r9, r18, 0
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_29 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	or r9, r18, r28
.LBB0_35:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	and r21, r10, r24
	setlt.u r1, r15, r21
	bneq r1, zero, .LBB0_37
# %bb.36:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	storeli.w r10, -20(r30)                 # 4-byte Folded Spill
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_29 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	or r1, r10, r28
	storeli.w r1, -20(r30)                  # 4-byte Folded Spill
.LBB0_38:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	and r23, r11, r24
	setlt.u r1, r15, r23
	bneq r1, zero, .LBB0_40
# %bb.39:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r19, r11, 0
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_29 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	or r19, r11, r28
.LBB0_41:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	and r26, r5, r24
	lui r8, 1024
	setlt.u r1, r15, r26
	bneq r1, zero, .LBB0_43
# %bb.42:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r12, r5, 0
	j .LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_29 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	or r12, r5, r28
.LBB0_44:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	and r28, r6, r24
	setlt.u r1, r15, r28
	bneq r1, zero, .LBB0_46
# %bb.45:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r13, r6, 0
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_29 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	or r13, r6, r8
.LBB0_47:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	and r1, r7, r24
	setlt.u r15, r15, r1
	bneq r15, zero, .LBB0_49
# %bb.48:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r15, r7, 0
	j .LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_29 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	or r15, r7, r8
.LBB0_50:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	and r27, r14, r24
	lui r17, 522240
	setlt.u r17, r17, r27
	bneq r17, zero, .LBB0_52
# %bb.51:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r17, r14, 0
	j .LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_29 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	or r17, r14, r8
.LBB0_53:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	loadli.w r8,  -12(r30)                  # 4-byte Folded Reload
	setlt.u r23, r8, r23
	bneq r23, zero, .LBB0_55
# %bb.54:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r19, r11, 16
	lui r8, 1048560
	andi r19, r19, 1
	add.s r11, r11, r19
	loadli.w r19,  -16(r30)                 # 4-byte Folded Reload
	add.s r11, r11, r19
	and r19, r11, r8
.LBB0_55:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	loadli.w r23,  -12(r30)                 # 4-byte Folded Reload
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	setlt.u r11, r23, r21
	loadli.w r21,  -16(r30)                 # 4-byte Folded Reload
	bneq r11, zero, .LBB0_61
# %bb.56:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r11, r10, 16
	lui r8, 1048560
	andi r11, r11, 1
	add.s r10, r10, r11
	add.s r10, r10, r21
	and r8, r10, r8
	storeli.w r8, -20(r30)                  # 4-byte Folded Spill
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	setlt.u r10, r23, r25
	beq r10, zero, .LBB0_62
.LBB0_57:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	setlt.u r10, r23, r20
	bneq r10, zero, .LBB0_63
.LBB0_58:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r8, r16, 16
	lui r10, 1048560
	andi r8, r8, 1
	add.s r8, r16, r8
	add.s r8, r8, r21
	and r22, r8, r10
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	setlt.u r10, r23, r27
	beq r10, zero, .LBB0_64
.LBB0_59:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	setlt.u r1, r23, r1
	bneq r1, zero, .LBB0_65
.LBB0_60:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	lui r7, 1048560
	add.s r1, r1, r21
	and r15, r1, r7
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	setlt.u r1, r23, r28
	beq r1, zero, .LBB0_66
	j .LBB0_67
.LBB0_61:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	setlt.u r10, r23, r25
	bneq r10, zero, .LBB0_57
.LBB0_62:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r9, r18, 16
	lui r8, 1048560
	andi r9, r9, 1
	add.s r9, r18, r9
	add.s r9, r9, r21
	and r9, r9, r8
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	setlt.u r10, r23, r20
	beq r10, zero, .LBB0_58
.LBB0_63:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	setlt.u r10, r23, r27
	bneq r10, zero, .LBB0_59
.LBB0_64:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r10, r14, 16
	lui r8, 1048560
	andi r10, r10, 1
	add.s r10, r14, r10
	add.s r10, r10, r21
	and r17, r10, r8
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	setlt.u r1, r23, r1
	beq r1, zero, .LBB0_60
.LBB0_65:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	setlt.u r1, r23, r28
	bneq r1, zero, .LBB0_67
.LBB0_66:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r1, r6, 16
	andi r1, r1, 1
	add.s r1, r6, r1
	lui r6, 1048560
	add.s r1, r1, r21
	and r13, r1, r6
.LBB0_67:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	setlt.u r1, r23, r26
	loadli.w r6,  -36(r30)                  # 4-byte Folded Reload
	lui r28, 1024
	bneq r1, zero, .LBB0_28
# %bb.68:                               # %vector.body55
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r1, r5, 16
	andi r1, r1, 1
	add.s r1, r5, r1
	lui r5, 1048560
	add.s r1, r1, r21
	and r12, r1, r5
	j .LBB0_28
.LBB0_69:                               # %.critedge4
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 33 11 is_stmt 1               # ieee-multiply.mlir:33:11
	bneq r20, r21, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 18
	addli r2, zero, 1024
	addli r3, zero, 13440
	xwait r1, 0
	addli r1, zero, 31
	xwait r1, 0
	lock zero, zero
	ds_cfg r21, zero, 0
	ds_cfg r9, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r9, zero, 13
	loadli.w r1,  -72(r30)                  # 4-byte Folded Reload
	shuffle_coa r1, r3, r2, 4
	addli r1, zero, 19
	unlock zero
	xsignal r1, 0
	addli r1, zero, 26
	xsignal r1, 0
	beq r27, zero, .LBB0_108
	j .LBB0_72
.LBB0_71:                               #   in Loop: Header=BB0_12 Depth=1
	beq r27, zero, .LBB0_108
.LBB0_72:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 26
	addli r2, zero, 1024
	xwait r1, 0
	addli r1, zero, 37
	xwait r1, 0
	lock zero, r21
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r2, zero, zero, 3
	loadli.w r2,  -72(r30)                  # 4-byte Folded Reload
	loadli.w r3,  -68(r30)                  # 4-byte Folded Reload
	ssreduce r3, r2, 0
	addli r2, zero, 27
	unlock r21
	xsignal r2, 0
	.loc	1 39 11                         # ieee-multiply.mlir:39:11
	lock zero, r21
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	ew_cfg r9, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 32
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r10, 4
	hp_ssmul r3, r3, r3, 0
	unlock r21
	xsignal r1, 0
	.loc	1 40 11                         # ieee-multiply.mlir:40:11
	beq r20, r21, .LBB0_109
.LBB0_73:                               #   in Loop: Header=BB0_12 Depth=1
	bneq r20, r12, .LBB0_77
# %bb.74:                               #   in Loop: Header=BB0_12 Depth=1
	addli r2, zero, 38
	lui r4, 37
	addli r6, zero, 40
	addli r1, zero, 0
	xwait r2, 0
	addli r2, zero, 41
	ori r3, r4, 1408
	xwait r2, 0
	lock zero, r12
	ori r2, r4, 1280
	rs_cfg zero, r9, r9, 1
	rs_cfg zero, r9, zero, 3
	rs_col r2, r3, r9, 0
	ori r3, r4, 1536
	addli r4, zero, 39
	unlock r12
	xsignal r4, 0
	addli r4, zero, 16
	xsignal r6, 0
	xwait r4, 0
	addli r4, zero, 44
	xwait r6, 0
	lui r6, 784384
	xwait r4, 0
	lock zero, r21
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r6, zero, 0
	ew_cfg zero, zero, zero, 2
	ew_cfg r9, zero, zero, 3
.LBB0_75:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r1, r7
	addli r1, r1, 4
	dsmadd r3, r4, r2, 0
	addli r3, r3, 128
	bneq r1, r10, .LBB0_75
# %bb.76:                               # %.critedge8
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 17
	unlock r21
	.loc	1 42 11                         # ieee-multiply.mlir:42:11
	addli r2, zero, 32
	.loc	1 40 11                         # ieee-multiply.mlir:40:11
	xsignal r1, 0
	addli r1, zero, 41
	xsignal r1, 0
	addli r1, zero, 42
	xsignal r1, 0
	.loc	1 42 11                         # ieee-multiply.mlir:42:11
	addli r1, zero, 28
	xwait r1, 0
	addli r1, zero, 48
	xwait r1, 0
	addli r1, zero, 1024
	lock zero, r12
	rs_cfg zero, r1, r2, 1
	rs_cfg zero, r1, zero, 3
	loadli.w r1,  -72(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -44(r30)                  # 4-byte Folded Reload
	rs_col r2, r1, r9, 0
	addli r1, zero, 29
	unlock r12
	xsignal r1, 0
	addli r1, zero, 47
	xsignal r1, 0
	addli r1, zero, 45
	xsignal r1, 0
	beq r27, zero, .LBB0_110
	j .LBB0_78
.LBB0_77:                               # %.thread28
                                        #   in Loop: Header=BB0_12 Depth=1
	beq r27, zero, .LBB0_110
.LBB0_78:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 45
	xwait r1, 0
	addli r1, zero, 50
	xwait r1, 0
	lock zero, r21
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 1023
	ew_cfg zero, r1, zero, 2
	ew_cfg r9, zero, zero, 3
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -52(r30)                  # 4-byte Folded Reload
	dsmul r2, r1, r1, 0
	addli r1, zero, 49
	unlock r21
	xsignal r1, 0
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	beq r20, r12, .LBB0_111
.LBB0_79:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 44 11                         # ieee-multiply.mlir:44:11
	bneq r20, r21, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 20
	addli r2, zero, 1024
	addli r3, zero, 13440
	xwait r1, 0
	addli r1, zero, 29
	xwait r1, 0
	lock zero, zero
	ds_cfg r21, zero, 0
	ds_cfg r9, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r9, zero, 13
	loadli.w r1,  -72(r30)                  # 4-byte Folded Reload
	shuffle_coa r1, r3, r2, 4
	addli r1, zero, 21
	unlock zero
	xsignal r1, 0
	addli r1, zero, 30
	xsignal r1, 0
	beq r27, zero, .LBB0_130
	j .LBB0_82
.LBB0_81:                               #   in Loop: Header=BB0_12 Depth=1
	beq r27, zero, .LBB0_130
.LBB0_82:                               # %.critedge10
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 30
	addli r2, zero, 1024
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	addli r4, zero, 1
	addli r5, zero, 1
	addli r6, zero, 1
	.loc	1 44 11                         # ieee-multiply.mlir:44:11
	xwait r1, 0
	addli r1, zero, 33
	xwait r1, 0
	lock zero, r21
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r2, zero, zero, 3
	loadli.w r2,  -72(r30)                  # 4-byte Folded Reload
	loadli.w r3,  -68(r30)                  # 4-byte Folded Reload
	ssreduce r3, r2, 0
	lui r2, 260096
	unlock r21
	xsignal r1, 0
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	lock zero, r21
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	ew_cfg r9, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 4
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r10, 4
	hp_ssmul r3, r3, r3, 0
	unlock r21
	xsignal r1, 0
	.loc	1 51 11                         # ieee-multiply.mlir:51:11
	lock zero, r21
	ew_cfg zero, zero, zero, 1
	loadli.w r1,  -120(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r2, zero, r1, 0
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	addli r2, r3, 0
	addli r1, zero, 34
	.loc	1 51 11                         # ieee-multiply.mlir:51:11
	ew_cfg zero, zero, zero, 2
	ew_cfg r9, zero, zero, 3
	dsmadd r3, r3, r3, 0
	unlock r21
	xsignal r1, 0
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	xwait r1, 0
	xfence
	jal _ZN3xpu10math_rsqrtEPU3AS2fS1_iii
	addli r1, zero, 35
	lui r17, 522240
	addli r12, zero, 3
	addli r11, zero, 10
	addli r10, zero, 4096
	addli r9, zero, 1
	xsignal r1, 0
	.loc	1 53 11                         # ieee-multiply.mlir:53:11
	beq r20, r21, .LBB0_131
.LBB0_83:                               #   in Loop: Header=BB0_12 Depth=1
	bneq r20, r12, .LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 22
	addli r2, zero, 1024
	addli r3, zero, 13440
	xwait r1, 0
	addli r1, zero, 52
	xwait r1, 0
	addli r1, zero, 32
	lock zero, r12
	rs_cfg zero, r9, r1, 0
	rs_cfg zero, r9, zero, 2
	loadli.w r1,  -56(r30)                  # 4-byte Folded Reload
	rs_row r1, r3, r2, 0
	addli r1, zero, 23
	unlock r12
	xsignal r1, 0
	addli r1, zero, 51
	xsignal r1, 0
	.loc	1 54 23                         # ieee-multiply.mlir:54:23
	beq r27, zero, .LBB0_132
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_12 Depth=1
	beq r27, zero, .LBB0_132
.LBB0_86:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 36
	xwait r1, 0
	addli r1, zero, 47
	xwait r1, 0
	xfence
	lui r1, 260096
	mfence { lm, sm, gm }
	lock zero, r21
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 1023
	ew_cfg zero, r1, zero, 2
	ew_cfg r9, zero, zero, 3
	loadli.w r1,  -68(r30)                  # 4-byte Folded Reload
	loads.w r1, 0(r1)
	ewcoeff_cfg r1, zero, zero, 0
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	hp_ssmul r1, r1, r1, 0
	addli r1, zero, 37
	unlock r21
	xsignal r1, 0
	addli r1, zero, 46
	xsignal r1, 0
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	beq r20, r12, .LBB0_133
.LBB0_87:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r5, zero, 6
	.loc	1 80 5 is_stmt 1                # ieee-multiply.mlir:80:5
	bneq r20, zero, .LBB0_11
# %bb.88:                               #   in Loop: Header=BB0_12 Depth=1
	load.d r[1:2], -80(r30)                 # 8-byte Folded Reload
	addli r3, zero, 24
	addli r6, zero, 13504
	xwait r3, 0
	load.d r[3:4], 16(r30)
	sll.d r[1:2], r[1:2], r9
	add.ul r[1:2], r[3:4], r[1:2]
	addli r3, zero, 5
	addli r4, zero, 64
	lock zero, r3
	dma_cfg r9, r9, zero, 0
	dma_cfg zero, r9, zero, 1
	dma_cfg r2, zero, zero, 2
	dma_cfg r1, r6, r4, 3
	addli r1, zero, 32
	addli r2, zero, 128
	dma_cfg r4, r2, r1, 4
	addli r1, zero, 2048
	load.d r[6:7], -88(r30)                 # 8-byte Folded Reload
	dma_cfg r1, r10, r6, 5
	addli r1, zero, 25
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	j .LBB0_10
.LBB0_89:                               # %middle.block60
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	addli r1, zero, 14
	mfence { sm }
	addli r2, zero, 15
	xsignal r1, 0
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	addli r1, zero, 5
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	xsignal r2, 0
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	xwait r1, 0
	addli r1, zero, 8
	xwait r1, 0
	addli r1, zero, 25
	xwait r2, 0
	zext_int2long r[2:3], zero
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	j .LBB0_91
.LBB0_90:                               # %vector.body46
                                        #   in Loop: Header=BB0_91 Depth=2
	addli r16, r4, 13444
	addli r13, r4, 13452
	addli.d r[2:3], r[2:3], 8
	addli r12, r4, 13440
	addli r14, r4, 13456
	stores.w r20, 0(r16)
	load.d r[16:17], -8(r30)                # 8-byte Folded Reload
	stores.w r24, 0(r13)
	addli r13, r4, 13448
	stores.w r22, 0(r12)
	stores.w r18, 0(r14)
	stores.w r1, 0(r13)
	addli r1, r4, 13468
	setneq.d r13, r[2:3], r[16:17]
	stores.w r15, 0(r1)
	addli r1, r4, 13464
	addli r4, r4, 13460
	stores.w r19, 0(r1)
	stores.w r21, 0(r4)
	beq r13, zero, .LBB0_107
.LBB0_91:                               # %vector.body46
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addli r1, r2, 8320
	addli r14, r2, 8324
	addli r15, r2, 8325
	addli r16, r2, 8326
	addli r17, r2, 8327
	addli r4, r2, 8321
	addli r12, r2, 8322
	addli r13, r2, 8323
	loads.bu r22, 0(r1)
	loads.bu r1, 0(r14)
	loads.bu r28, 0(r4)
	slli r4, r2, 2
	loads.bu r26, 0(r12)
	loads.bu r25, 0(r13)
	add.s r12, r4, r7
	addli r23, r4, 4252
	add.s r14, r4, r9
	add.s r13, r4, r6
	loads.w r18, 0(r13)
	addli r13, r4, 4240
	loads.w r13, 0(r13)
	storeli.w r1, -32(r30)                  # 4-byte Folded Spill
	loads.bu r1, 0(r15)
	loads.w r15, 0(r14)
	add.s r14, r4, r10
	loads.w r19, 0(r14)
	addli r14, r4, 4236
	loads.w r27, 0(r14)
	addli r14, r4, 4228
	storeli.w r1, -28(r30)                  # 4-byte Folded Spill
	loads.bu r1, 0(r16)
	add.s r16, r4, r11
	loads.w r21, 0(r16)
	addli r16, r4, 4232
	loads.w r16, 0(r16)
	storeli.w r1, -24(r30)                  # 4-byte Folded Spill
	loads.bu r1, 0(r17)
	loads.w r17, 0(r14)
	addli r14, r4, 4248
	storeli.w r1, -20(r30)                  # 4-byte Folded Spill
	add.s r1, r4, r5
	loads.w r24, 0(r1)
	loads.w r1, 0(r12)
	add.s r12, r4, r8
	loads.w r20, 0(r12)
	loads.w r12, 0(r23)
	loads.w r23, 0(r14)
	storeli.w r12, -40(r30)                 # 4-byte Folded Spill
	addli r12, r4, 4244
	loads.w r14, 0(r12)
	bneq r22, zero, .LBB0_93
# %bb.92:                               # %vector.body46
                                        #   in Loop: Header=BB0_91 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r12, r4, 4224
	loads.w r22, 0(r12)
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	beq r28, zero, .LBB0_94
	j .LBB0_95
.LBB0_93:                               #   in Loop: Header=BB0_91 Depth=2
	loadli.w r12,  -36(r30)                 # 4-byte Folded Reload
	add.s r12, r4, r12
	loads.w r22, 0(r12)
	bneq r28, zero, .LBB0_95
.LBB0_94:                               # %vector.body46
                                        #   in Loop: Header=BB0_91 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r20, r17, 0
.LBB0_95:                               # %vector.body46
                                        #   in Loop: Header=BB0_91 Depth=2
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	bneq r26, zero, .LBB0_101
# %bb.96:                               # %vector.body46
                                        #   in Loop: Header=BB0_91 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r1, r16, 0
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	beq r25, zero, .LBB0_102
.LBB0_97:                               # %vector.body46
                                        #   in Loop: Header=BB0_91 Depth=2
	loadli.w r12,  -32(r30)                 # 4-byte Folded Reload
	bneq r12, zero, .LBB0_103
.LBB0_98:                               # %vector.body46
                                        #   in Loop: Header=BB0_91 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r18, r13, 0
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	loadli.w r12,  -28(r30)                 # 4-byte Folded Reload
	beq r12, zero, .LBB0_104
.LBB0_99:                               # %vector.body46
                                        #   in Loop: Header=BB0_91 Depth=2
	loadli.w r12,  -24(r30)                 # 4-byte Folded Reload
	bneq r12, zero, .LBB0_105
.LBB0_100:                              # %vector.body46
                                        #   in Loop: Header=BB0_91 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r19, r23, 0
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	loadli.w r12,  -20(r30)                 # 4-byte Folded Reload
	bneq r12, zero, .LBB0_90
	j .LBB0_106
.LBB0_101:                              # %vector.body46
                                        #   in Loop: Header=BB0_91 Depth=2
	bneq r25, zero, .LBB0_97
.LBB0_102:                              # %vector.body46
                                        #   in Loop: Header=BB0_91 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r24, r27, 0
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	loadli.w r12,  -32(r30)                 # 4-byte Folded Reload
	beq r12, zero, .LBB0_98
.LBB0_103:                              # %vector.body46
                                        #   in Loop: Header=BB0_91 Depth=2
	loadli.w r12,  -28(r30)                 # 4-byte Folded Reload
	bneq r12, zero, .LBB0_99
.LBB0_104:                              # %vector.body46
                                        #   in Loop: Header=BB0_91 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r21, r14, 0
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	loadli.w r12,  -24(r30)                 # 4-byte Folded Reload
	beq r12, zero, .LBB0_100
.LBB0_105:                              # %vector.body46
                                        #   in Loop: Header=BB0_91 Depth=2
	loadli.w r12,  -20(r30)                 # 4-byte Folded Reload
	bneq r12, zero, .LBB0_90
.LBB0_106:                              # %vector.body46
                                        #   in Loop: Header=BB0_91 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	loadli.w r15,  -40(r30)                 # 4-byte Folded Reload
	j .LBB0_90
.LBB0_107:                              # %.critedge4.thread
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r5, zero, 6
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	addli r1, zero, 9
	mfence { sm }
	.loc	1 26 11 is_stmt 1               # ieee-multiply.mlir:26:11
	core_id r20
	addli r21, zero, 2
	addli r9, zero, 1
	addli r10, zero, 4096
	addli r11, zero, 10
	addli r12, zero, 3
	lui r28, 1024
	lui r17, 522240
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	xsignal r5, 0
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	loadli.w r27,  -116(r30)                # 4-byte Folded Reload
	loadli.w r24,  -48(r30)                 # 4-byte Folded Reload
	loadli.w r22,  -16(r30)                 # 4-byte Folded Reload
	loadli.w r23,  -12(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -36(r30)                  # 4-byte Folded Reload
	.loc	1 33 11                         # ieee-multiply.mlir:33:11
	bneq r27, zero, .LBB0_72
.LBB0_108:                              # %.critedge6
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 40 11                         # ieee-multiply.mlir:40:11
	bneq r20, r21, .LBB0_73
.LBB0_109:                              # %.critedge8.thread
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r4, zero, 32
	.loc	1 40 11                         # ieee-multiply.mlir:40:11
	addli r1, zero, 39
	lui r2, 37
	xwait r4, 0
	xwait r1, 0
	lock zero, zero
	ori r1, r2, 1408
	ds_cfg r21, zero, 0
	ds_cfg r9, zero, 1
	ds_cfg r9, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r9, zero, 13
	loadli.w r3,  -68(r30)                  # 4-byte Folded Reload
	shuffle_coa r1, r3, r9, 4
	addli r1, zero, 33
	addli r3, zero, 1024
	unlock zero
	xsignal r1, 0
	addli r1, zero, 38
	xsignal r1, 0
	.loc	1 42 11 is_stmt 1               # ieee-multiply.mlir:42:11
	addli r1, zero, 27
	xwait r1, 0
	addli r1, zero, 42
	xwait r1, 0
	lock zero, zero
	ori r1, r2, 1536
	ds_cfg r21, zero, 0
	ds_cfg r4, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r9, zero, 13
	loadli.w r2,  -72(r30)                  # 4-byte Folded Reload
	shuffle_coa r2, r1, r3, 4
	addli r1, zero, 28
	unlock zero
	xsignal r1, 0
	addli r1, zero, 43
	xsignal r1, 0
	bneq r27, zero, .LBB0_78
.LBB0_110:                              #   in Loop: Header=BB0_12 Depth=1
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	bneq r20, r12, .LBB0_79
.LBB0_111:                              # %vector.ph36
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 9
	xwait r5, 0
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	addli r1, zero, 49
	xwait r1, 0
	xfence
	zext_int2long r[1:2], zero
	mfence { lm, sm, gm }
	j .LBB0_113
.LBB0_112:                              # %vector.body37
                                        #   in Loop: Header=BB0_113 Depth=2
	addli r13, r3, 13452
	addli.d r[1:2], r[1:2], 8
	addli r11, r3, 13440
	addli r14, r3, 13456
	stores.w r10, 0(r13)
	addli r10, r3, 13448
	addli r13, r3, 13444
	stores.w r12, 0(r11)
	stores.w r4, 0(r14)
	stores.w r9, 0(r10)
	load.d r[9:10], -8(r30)                 # 8-byte Folded Reload
	stores.w r8, 0(r13)
	addli r8, r3, 13468
	stores.w r7, 0(r8)
	addli r7, r3, 13464
	addli r3, r3, 13460
	setneq.d r9, r[1:2], r[9:10]
	stores.w r6, 0(r7)
	stores.w r5, 0(r3)
	beq r9, zero, .LBB0_129
.LBB0_113:                              # %vector.body37
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addli r3, r1, 8320
	addli r4, r1, 8321
	addli r5, r1, 8322
	addli r6, r1, 8323
	addli r7, r1, 8324
	addli r8, r1, 8325
	addli r9, r1, 8326
	addli r10, r1, 8327
	loads.bu r26, 0(r3)
	slli r3, r1, 2
	loads.bu r19, 0(r4)
	loadli.w r4,  -52(r30)                  # 4-byte Folded Reload
	loads.bu r18, 0(r5)
	loads.bu r16, 0(r6)
	loads.bu r15, 0(r7)
	loads.bu r14, 0(r8)
	loads.bu r13, 0(r9)
	loads.bu r11, 0(r10)
	addli r17, r3, 4236
	addli r20, r3, 4232
	addli r23, r3, 4240
	addli r21, r3, 4244
	add.s r12, r3, r4
	loads.w r22, 0(r17)
	loads.w r24, 0(r20)
	addli r17, r3, 4228
	addli r20, r3, 4252
	loads.w r21, 0(r21)
	loads.w r23, 0(r23)
	loads.w r10, 12(r12)
	loads.w r9, 8(r12)
	loads.w r8, 4(r12)
	loads.w r7, 28(r12)
	loads.w r6, 24(r12)
	loads.w r5, 20(r12)
	loads.w r4, 16(r12)
	loads.w r25, 0(r17)
	loads.w r17, 0(r20)
	addli r20, r3, 4248
	loads.w r20, 0(r20)
	bneq r26, zero, .LBB0_119
# %bb.114:                              # %vector.body37
                                        #   in Loop: Header=BB0_113 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r12, r3, 4224
	loads.w r12, 0(r12)
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	beq r19, zero, .LBB0_120
.LBB0_115:                              # %vector.body37
                                        #   in Loop: Header=BB0_113 Depth=2
	bneq r18, zero, .LBB0_121
.LBB0_116:                              # %vector.body37
                                        #   in Loop: Header=BB0_113 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r9, r24, 0
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	beq r16, zero, .LBB0_122
.LBB0_117:                              # %vector.body37
                                        #   in Loop: Header=BB0_113 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	loadli.w r24,  -48(r30)                 # 4-byte Folded Reload
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	bneq r15, zero, .LBB0_123
.LBB0_118:                              # %vector.body37
                                        #   in Loop: Header=BB0_113 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r4, r23, 0
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	beq r14, zero, .LBB0_124
	j .LBB0_125
.LBB0_119:                              # %vector.body37
                                        #   in Loop: Header=BB0_113 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	loads.w r12, 0(r12)
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	bneq r19, zero, .LBB0_115
.LBB0_120:                              # %vector.body37
                                        #   in Loop: Header=BB0_113 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r8, r25, 0
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	beq r18, zero, .LBB0_116
.LBB0_121:                              # %vector.body37
                                        #   in Loop: Header=BB0_113 Depth=2
	bneq r16, zero, .LBB0_117
.LBB0_122:                              # %vector.body37
                                        #   in Loop: Header=BB0_113 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r10, r22, 0
	loadli.w r24,  -48(r30)                 # 4-byte Folded Reload
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	beq r15, zero, .LBB0_118
.LBB0_123:                              # %vector.body37
                                        #   in Loop: Header=BB0_113 Depth=2
	bneq r14, zero, .LBB0_125
.LBB0_124:                              # %vector.body37
                                        #   in Loop: Header=BB0_113 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r5, r21, 0
.LBB0_125:                              # %vector.body37
                                        #   in Loop: Header=BB0_113 Depth=2
	loadli.w r22,  -16(r30)                 # 4-byte Folded Reload
	loadli.w r23,  -12(r30)                 # 4-byte Folded Reload
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	bneq r13, zero, .LBB0_127
# %bb.126:                              # %vector.body37
                                        #   in Loop: Header=BB0_113 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, r20, 0
.LBB0_127:                              # %vector.body37
                                        #   in Loop: Header=BB0_113 Depth=2
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	bneq r11, zero, .LBB0_112
# %bb.128:                              # %vector.body37
                                        #   in Loop: Header=BB0_113 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r7, r17, 0
	j .LBB0_112
.LBB0_129:                              # %.thread33
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	addli r1, zero, 7
	mfence { sm }
	addli r11, zero, 10
	.loc	1 26 11 is_stmt 1               # ieee-multiply.mlir:26:11
	core_id r20
	addli r21, zero, 2
	addli r9, zero, 1
	addli r10, zero, 4096
	addli r12, zero, 3
	lui r17, 522240
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r11, 0
	xsignal r1, 0
	addli r1, zero, 50
	xsignal r1, 0
	.loc	1 44 11                         # ieee-multiply.mlir:44:11
	bneq r27, zero, .LBB0_82
.LBB0_130:                              # %.critedge12
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 53 11                         # ieee-multiply.mlir:53:11
	bneq r20, r21, .LBB0_83
.LBB0_131:                              # %.thread29
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 21
	addli r2, zero, 13440
	xwait r1, 0
	addli r1, zero, 35
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 1024
	ds_cfg r21, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r1, zero, 13
	ds_cfg r9, zero, 14
	loadli.w r1,  -68(r30)                  # 4-byte Folded Reload
	shuffle_batch r2, r1, r9, 4
	addli r1, zero, 22
	unlock zero
	xsignal r1, 0
	addli r1, zero, 36
	xsignal r1, 0
	.loc	1 54 23                         # ieee-multiply.mlir:54:23
	bneq r27, zero, .LBB0_86
.LBB0_132:                              #   in Loop: Header=BB0_12 Depth=1
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	bneq r20, r12, .LBB0_87
.LBB0_133:                              # %vector.ph
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 23
	xwait r1, 0
	addli r1, zero, 43
	xwait r1, 0
	addli r1, zero, 46
	xwait r1, 0
	addli r1, zero, 51
	xwait r1, 0
	xfence
	zext_int2long r[1:2], zero
	mfence { lm, sm, gm }
	j .LBB0_135
.LBB0_134:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	addli.d r[1:2], r[1:2], 4
	addli r4, r3, 13452
	stores.w r8, 0(r4)
	addli r4, r3, 13448
	setneq.d r5, r[1:2], r[5:6]
	addli r6, r3, 13440
	addli r3, r3, 13444
	stores.w r9, 0(r4)
	stores.w r11, 0(r3)
	stores.w r12, 0(r6)
	beq r5, zero, .LBB0_9
.LBB0_135:                              # %vector.body
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r3, 37
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	slli r4, r1, 7
	loadli.w r6,  -44(r30)                  # 4-byte Folded Reload
	lui r25, 522240
	ori r5, r3, 1536
	slli r3, r1, 2
	add.s r4, r4, r5
	loadli.w r5,  -56(r30)                  # 4-byte Folded Reload
	add.s r14, r3, r6
	loads.w r11, 0(r4)
	loads.w r6, 128(r4)
	loads.w r7, 256(r4)
	loads.w r9, 384(r4)
	loads.w r8, 12(r14)
	add.s r5, r3, r5
	loads.w r15, 0(r5)
	loads.w r13, 4(r5)
	loads.w r12, 8(r5)
	loads.w r10, 12(r5)
	.loc	1 61 24 is_stmt 1               # ieee-multiply.mlir:61:24
	and r4, r11, r24
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	loads.w r11, 8(r14)
	.loc	1 65 24                         # ieee-multiply.mlir:65:24
	seteq r16, r4, r17
	.loc	1 67 25                         # ieee-multiply.mlir:67:25
	seteq r19, r4, zero
	.loc	1 62 24                         # ieee-multiply.mlir:62:24
	and r5, r15, r24
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	loads.w r15, 4(r14)
	.loc	1 68 25                         # ieee-multiply.mlir:68:25
	seteq r17, r5, zero
	.loc	1 66 24                         # ieee-multiply.mlir:66:24
	seteq r18, r5, r25
	.loc	1 72 27                         # ieee-multiply.mlir:72:27
	max.u r4, r4, r5
	setlt.u r4, r25, r4
	.loc	1 69 29                         # ieee-multiply.mlir:69:29
	and r5, r16, r17
	.loc	1 70 29                         # ieee-multiply.mlir:70:29
	and r16, r19, r18
	.loc	1 71 27                         # ieee-multiply.mlir:71:27
	or r5, r5, r16
	.loc	1 73 23                         # ieee-multiply.mlir:73:23
	or r16, r4, r5
	lui r4, 523264
	lui r5, 523264
	.loc	1 75 25                         # ieee-multiply.mlir:75:25
	bneq r16, zero, .LBB0_137
# %bb.136:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	loads.w r5, 0(r14)
.LBB0_137:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	and r6, r6, r24
	and r13, r13, r24
	lui r19, 522240
	seteq r14, r6, r19
	seteq r18, r6, zero
	seteq r16, r13, zero
	seteq r17, r13, r19
	max.u r6, r6, r13
	setlt.u r6, r19, r6
	and r13, r14, r16
	and r14, r18, r17
	or r13, r13, r14
	or r13, r6, r13
	lui r6, 523264
	.loc	1 75 25                         # ieee-multiply.mlir:75:25
	bneq r13, zero, .LBB0_139
# %bb.138:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r6, r15, 0
.LBB0_139:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	and r7, r7, r24
	and r12, r12, r24
	lui r17, 522240
	seteq r13, r7, r17
	seteq r16, r7, zero
	seteq r14, r12, zero
	seteq r15, r12, r17
	max.u r7, r7, r12
	setlt.u r7, r17, r7
	and r12, r13, r14
	and r13, r16, r15
	or r12, r12, r13
	or r12, r7, r12
	lui r7, 523264
	.loc	1 75 25                         # ieee-multiply.mlir:75:25
	bneq r12, zero, .LBB0_141
# %bb.140:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r7, r11, 0
.LBB0_141:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	and r9, r9, r24
	and r10, r10, r24
	seteq r11, r9, r17
	seteq r14, r9, zero
	seteq r12, r10, zero
	seteq r13, r10, r17
	max.u r9, r9, r10
	setlt.u r9, r17, r9
	and r10, r11, r12
	and r11, r14, r13
	or r10, r10, r11
	or r9, r9, r10
	.loc	1 75 25                         # ieee-multiply.mlir:75:25
	bneq r9, zero, .LBB0_143
# %bb.142:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r4, r8, 0
.LBB0_143:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 79 11 is_stmt 1               # ieee-multiply.mlir:79:11
	and r10, r4, r24
	setlt.u r8, r17, r10
	bneq r8, zero, .LBB0_145
# %bb.144:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r8, r4, 0
	j .LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_135 Depth=2
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	or r8, r4, r28
.LBB0_146:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	and r13, r7, r24
	setlt.u r9, r17, r13
	bneq r9, zero, .LBB0_148
# %bb.147:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r9, r7, 0
	j .LBB0_149
.LBB0_148:                              #   in Loop: Header=BB0_135 Depth=2
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	or r9, r7, r28
.LBB0_149:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	and r14, r6, r24
	setlt.u r11, r17, r14
	bneq r11, zero, .LBB0_151
# %bb.150:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r11, r6, 0
	j .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_135 Depth=2
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	or r11, r6, r28
.LBB0_152:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	and r15, r5, r24
	setlt.u r12, r17, r15
	bneq r12, zero, .LBB0_154
# %bb.153:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r12, r5, 0
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	setlt.u r15, r23, r15
	beq r15, zero, .LBB0_155
	j .LBB0_156
.LBB0_154:                              #   in Loop: Header=BB0_135 Depth=2
	or r12, r5, r28
	setlt.u r15, r23, r15
	bneq r15, zero, .LBB0_156
.LBB0_155:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r12, r5, 16
	andi r12, r12, 1
	add.s r5, r5, r12
	lui r12, 1048560
	add.s r5, r5, r22
	and r12, r5, r12
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	setlt.u r5, r23, r14
	bneq r5, zero, .LBB0_159
# %bb.157:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	lui r6, 1048560
	add.s r5, r5, r22
	and r11, r5, r6
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	setlt.u r5, r23, r13
	beq r5, zero, .LBB0_160
.LBB0_158:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	setlt.u r5, r23, r10
	bneq r5, zero, .LBB0_134
	j .LBB0_161
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	setlt.u r5, r23, r13
	bneq r5, zero, .LBB0_158
.LBB0_160:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r5, r7, 16
	lui r6, 1048560
	andi r5, r5, 1
	add.s r5, r7, r5
	add.s r5, r5, r22
	and r9, r5, r6
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	setlt.u r5, r23, r10
	bneq r5, zero, .LBB0_134
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	lui r5, 1048560
	add.s r4, r4, r22
	and r8, r4, r5
	j .LBB0_134
.LBB0_162:                              #   in Loop: Header=BB0_12 Depth=1
	.loc	1 23 11 is_stmt 1               # ieee-multiply.mlir:23:11
	bneq r20, r5, .LBB0_24
# %bb.163:                              #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r14, zero, 11
	addli r7, zero, 5
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	load.d r[1:2], -80(r30)                 # 8-byte Folded Reload
	load.d r[3:4], 0(r30)
	addli r6, zero, 4
	addli r26, zero, 9
	addli r16, zero, 14
	addli r18, zero, 15
	addli r15, zero, 17
	addli r25, zero, 18
	addli r19, zero, 25
	addli r8, zero, 32
	addli r13, zero, 9408
	xwait r14, 0
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	sll.d r[1:2], r[1:2], r9
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r21, 10
	add.ul r[1:2], r[3:4], r[1:2]
	addli r3, zero, 7
	addli r4, zero, 64
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 128
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 13
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 16
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 19
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 20
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 21
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 22
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 23
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 24
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 26
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 27
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 28
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 29
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 30
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 31
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9344
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r4, 3
	dma_cfg r5, zero, r8, 4
	dma_cfg r10, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	lock zero, r6
	dma_cfg r9, r9, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r13, r1, r4, 3
	addli r1, zero, 2048
	dma_cfg r5, r4, r8, 4
	load.d r[2:3], -88(r30)                 # 8-byte Folded Reload
	dma_cfg r10, r1, r2, 5
	addli r1, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 13
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 7
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 16
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 19
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 20
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 21
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 22
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 23
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 24
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 26
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 27
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 28
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 29
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 30
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 31
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 9344
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r4, 3
	dma_cfg r5, zero, r8, 4
	dma_cfg r10, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	j .LBB0_18
.LBB0_164:                              # %._crit_edge
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	beq r27, zero, .LBB0_166
# %bb.165:
	addli r1, zero, 3
	xsignal r1, 0
.LBB0_166:
	.loc	1 2 3 is_stmt 1                 # ieee-multiply.mlir:2:3
	xsignal zero, 0
	bneq r20, zero, .LBB0_168
# %bb.167:
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
.LBB0_168:
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/native-activation-fy9ua6v8" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
