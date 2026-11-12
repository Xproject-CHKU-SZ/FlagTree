	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/native-activation-ehamh09o" "ieee-multiply.mlir"
	.loc	1 2 0                           # ieee-multiply.mlir:2:0
	.cfi_startproc
# %bb.0:
	addli sp, sp, -192
	addli r1, zero, 1
.Ltmp0:
	.loc	1 26 11 prologue_end            # ieee-multiply.mlir:26:11
	core_id r9
	addli r30, sp, 128
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
	bneq r9, r3, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r15, zero, 3
	addli r6, zero, 5
	storeli.w zero, -56(r30)                # 4-byte Folded Spill
	addli r1, zero, 2
	addli r8, zero, 4
	addli r2, zero, 7
	addli r7, zero, 8
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
	addli r12, zero, 28
	addli r11, zero, 29
	addli r10, zero, 30
	addli r9, zero, 31
	addli r13, zero, 64
	addli r5, zero, 128
	addli r4, zero, 1024
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	xwait r15, 0
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 6
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
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
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg r3, r3, zero, 0
	dma_cfg r3, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg zero, zero, r13, 3
	dma_cfg r5, zero, r7, 4
	dma_cfg r4, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	lock zero, r8
	dma_cfg r3, r3, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r13, r1, r13, 3
	addli r1, zero, 512
	addli r2, zero, 6
	dma_cfg r5, r13, r7, 4
	dma_cfg r4, r1, r3, 5
	addli r1, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 7
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r7, 10
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
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	loadli.w r10,  -56(r30)                 # 4-byte Folded Reload
	dma_cfg zero, zero, r9, 10
	core_id r9
	dma_cfg r3, r3, zero, 0
	dma_cfg r3, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg zero, zero, r13, 3
	dma_cfg r5, zero, r7, 4
	dma_cfg r4, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	xsignal r1, 0
	ble.s r16, r17, .LBB0_163
	j .LBB0_8
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r1, zero, 5
	bneq r9, r1, .LBB0_7
# %bb.6:
	addli r1, zero, 2
	addli r10, zero, 1
	xwait r1, 0
	ble.s r16, r17, .LBB0_163
	j .LBB0_8
.LBB0_7:
	addli r10, zero, 0
	ble.s r16, r17, .LBB0_163
.LBB0_8:                                # %.lr.ph
	sext_int2long r[1:2], r17
	addli r3, zero, 255
	zext_int2long r[4:5], zero
	addli r11, zero, 2
	addli r12, zero, 1
	addli r13, zero, 1024
	addli r14, zero, 3
	lui r27, 1024
	lui r23, 522240
	lui r24, 1048560
	storeli.w r10, -56(r30)                 # 4-byte Folded Spill
	store.d r[1:2], -48(r30)                # 8-byte Folded Spill
	sext_int2long r[1:2], r16
	zext_int2long r[15:16], r3
	store.d r[4:5], -88(r30)                # 8-byte Folded Spill
	store.d r[1:2], -80(r30)                # 8-byte Folded Spill
	lui r1, 524287
	addli r2, zero, 31
	store.d r[15:16], -40(r30)              # 8-byte Folded Spill
	ori r20, r1, 4095
	lui r1, 7
	ori r22, r1, 4095
	lui r1, 522239
	storeli.w r20, -20(r30)                 # 4-byte Folded Spill
	ori r1, r1, 4095
	storeli.w r22, -24(r30)                 # 4-byte Folded Spill
	storeli.w r1, -4(r30)                   # 4-byte Folded Spill
	lui r1, 239665
	ori r1, r1, 623
	storeli.w r1, -100(r30)                 # 4-byte Folded Spill
	zext_int2long r[1:2], r2
	store.d r[1:2], -96(r30)                # 8-byte Folded Spill
	lui r1, 9
	ori r1, r1, 1408
	storeli.w r1, -52(r30)                  # 4-byte Folded Spill
	j .LBB0_11
.LBB0_9:                                # %.thread34
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 79 11 is_stmt 1               # ieee-multiply.mlir:79:11
	addli r1, zero, 24
	mfence { sm }
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	core_id r9
	addli r11, zero, 2
	addli r12, zero, 1
	addli r13, zero, 1024
	addli r14, zero, 3
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	xsignal r1, 0
	addli r1, zero, 44
	xsignal r1, 0
	addli r1, zero, 48
	xsignal r1, 0
	addli r1, zero, 52
	xsignal r1, 0
	loadli.w r10,  -56(r30)                 # 4-byte Folded Reload
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	load.d r[1:2], -48(r30)                 # 8-byte Folded Reload
	load.d r[3:4], -80(r30)                 # 8-byte Folded Reload
	addli.d r[1:2], r[1:2], 1
	store.d r[1:2], -48(r30)                # 8-byte Folded Spill
	setlt.sl r1, r[1:2], r[3:4]
	beq r1, zero, .LBB0_163
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_72 Depth 2
                                        #     Child Loop BB0_95 Depth 2
                                        #     Child Loop BB0_103 Depth 2
                                        #     Child Loop BB0_129 Depth 2
	.loc	1 5 14 is_stmt 1                # ieee-multiply.mlir:5:14
	beq r10, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 4
	xwait r1, 0
	lock zero, r11
	lui r1, 276480
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 31
	ew_cfg zero, r1, zero, 2
	.loc	1 6 14                          # ieee-multiply.mlir:6:14
	addli r1, zero, 7
	.loc	1 5 14                          # ieee-multiply.mlir:5:14
	ew_cfg r12, zero, zero, 3
	ssaux r13, 0
	unlock r11
	.loc	1 6 14                          # ieee-multiply.mlir:6:14
	xwait r1, 0
	lock zero, r11
	addli r1, zero, 255
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1152
	ew_cfg r12, zero, zero, 3
	ssaux r1, 0
	addli r1, zero, 5
	unlock r11
	xsignal r1, 0
.LBB0_13:                               # %.critedge2
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 14 is_stmt 0                # ieee-multiply.mlir:0:14
	loadli.w r1,  40(r30)
	load.d r[2:3], -48(r30)                 # 8-byte Folded Reload
	.loc	1 17 10 is_stmt 1               # ieee-multiply.mlir:17:10
	addli r4, zero, 8
	div.s r1, r2, r1
	loadli.w r2,  36(r30)
	div.s r3, r1, r2
	.loc	1 78 11                         # ieee-multiply.mlir:78:11
	sext_int2long r[1:2], r3
	.loc	1 17 10                         # ieee-multiply.mlir:17:10
	sll.d r[4:5], r[1:2], r4
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	store.d r[4:5], -64(r30)                # 8-byte Folded Spill
	bneq r9, r14, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_11 Depth=1
	addli r4, zero, 10
	xwait r4, 0
	xfence
	setlti r4, r3, 32
	mfence { lm, sm, gm }
	load.d r[5:6], -88(r30)                 # 8-byte Folded Reload
.LBB0_15:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	setlt.ul r7, r[5:6], r[15:16]
	addli r8, r5, 2176
	addli.d r[5:6], r[5:6], 1
	stores.b r4, 0(r8)
	bneq r7, zero, .LBB0_15
# %bb.16:                               # %.thread32
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	load.d r[4:5], -96(r30)                 # 8-byte Folded Reload
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	mfence { sm }
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	min.sl r[4:5], r[1:2], r[4:5]
	addli.d r[4:5], r[4:5], 1
	max.sl r[1:2], r[4:5], r[1:2]
	sub.s r3, r1, r3
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	addli r1, zero, 8
	xsignal r1, 0
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	j .LBB0_23
.LBB0_17:                               #   in Loop: Header=BB0_11 Depth=1
	load.d r[3:4], -96(r30)                 # 8-byte Folded Reload
	min.sl r[3:4], r[1:2], r[3:4]
	addli.d r[3:4], r[3:4], 1
	max.sl r[3:4], r[3:4], r[1:2]
	sub.sl r[3:4], r[3:4], r[1:2]
	bneq r9, r12, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	zext_int2long r[1:2], zero
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	setlt.sl r1, r[1:2], r[3:4]
	addli r2, zero, 14
	xwait r2, 0
	bneq r1, zero, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_11 Depth=1
	lock zero, r11
	addli r1, zero, 255
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 2432
	ew_cfg r12, zero, zero, 3
	ssaux r1, 0
	unlock r11
.LBB0_20:                               # %.thread25
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 11
	xsignal r1, 0
	j .LBB0_23
.LBB0_21:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r1, zero, 6
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	bneq r9, r1, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_11 Depth=1
	load.d r[1:2], -64(r30)                 # 8-byte Folded Reload
	addli r8, zero, 11
	addli r6, zero, 5
	addli.d r[16:17], r[3:4], 0
	load.d r[3:4], 0(r30)
	addli r5, zero, 6
	addli r7, zero, 8
	addli r28, zero, 9
	addli r21, zero, 12
	addli r19, zero, 14
	addli r20, zero, 15
	addli r18, zero, 17
	addli r26, zero, 18
	addli r25, zero, 25
	addli r15, zero, 2496
	xwait r8, 0
	lock zero, r6
	sll.d r[1:2], r[1:2], r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	add.ul r[1:2], r[3:4], r[1:2]
	dma_cfg zero, zero, r11, 10
	addli r4, zero, 4
	addli r3, zero, 7
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 2432
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 13
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 16
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 19
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r26, 10
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
	dma_cfg zero, zero, r25, 10
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
	addli r3, zero, 64
	dma_cfg r12, r12, zero, 0
	dma_cfg r12, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r3, 3
	addli r5, zero, 128
	dma_cfg r5, zero, r7, 4
	dma_cfg r13, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	lock zero, r4
	dma_cfg r12, r12, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r15, r1, r3, 3
	addli r1, zero, 512
	dma_cfg r5, r3, r7, 4
	dma_cfg r13, r1, r16, 5
	addli r1, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 7
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r20, 10
	loadli.w r20,  -20(r30)                 # 4-byte Folded Reload
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 21
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 22
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 23
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 24
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 26
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 27
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 28
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 29
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 30
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 31
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 2432
	dma_cfg r12, r12, zero, 0
	dma_cfg r12, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r3, 3
	addli.d r[3:4], r[16:17], 0
	dma_cfg r5, zero, r7, 4
	dma_cfg r13, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	xsignal r21, 0
	load.d r[15:16], -40(r30)               # 8-byte Folded Reload
.LBB0_23:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 29 11 is_stmt 1               # ieee-multiply.mlir:29:11
	beq r10, zero, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 12
	xwait r1, 0
	lock zero, r11
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 255
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 2432
	ew_cfg r12, zero, zero, 3
	dsmadd r1, r1, zero, 0
	addli r1, zero, 13
	unlock r11
	xsignal r1, 0
.LBB0_25:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r1, zero, 256
	store.d r[3:4], -72(r30)                # 8-byte Folded Spill
	zext_int2long r[1:2], r1
	.loc	1 30 11 is_stmt 1               # ieee-multiply.mlir:30:11
	store.d r[1:2], -16(r30)                # 8-byte Folded Spill
	bneq r9, r14, .LBB0_68
# %bb.26:                               # %vector.ph54
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 13
	xwait r1, 0
	addli r1, zero, 17
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	load.d r[1:2], -88(r30)                 # 8-byte Folded Reload
	j .LBB0_28
.LBB0_27:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	addli r5, r3, 4488
	addli r7, r3, 4492
	addli.d r[1:2], r[1:2], 8
	addli r4, r3, 4480
	addli r8, r3, 4496
	stores.w r21, 0(r5)
	loadli.w r5,  -28(r30)                  # 4-byte Folded Reload
	stores.w r28, 0(r7)
	addli r7, r3, 4484
	stores.w r25, 0(r4)
	addli r4, r3, 4504
	stores.w r23, 0(r8)
	stores.w r13, 0(r4)
	stores.w r5, 0(r7)
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli r5, r3, 4508
	addli r3, r3, 4500
	stores.w r11, 0(r5)
	stores.w r15, 0(r3)
	setneq.d r6, r[1:2], r[6:7]
	beq r6, zero, .LBB0_70
.LBB0_28:                               # %vector.body55
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r3, r1, 2
	lui r15, 522240
	addli r6, r3, 2444
	addli r4, r3, 2432
	addli r5, r3, 2448
	loads.w r14, 0(r6)
	loads.w r8, 0(r4)
	addli r4, r3, 2436
	addli r6, r3, 2440
	loads.w r12, 0(r5)
	addli r5, r3, 2460
	loads.w r9, 0(r4)
	addli r4, r3, 2452
	loads.w r16, 0(r6)
	loads.w r10, 0(r4)
	addli r4, r3, 2456
	loads.w r7, 0(r4)
	loads.w r4, 0(r5)
	and r18, r14, r20
	setlt.u r5, r15, r18
	bneq r5, zero, .LBB0_30
# %bb.29:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r28, r14, 0
	j .LBB0_31
.LBB0_30:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	or r28, r14, r27
.LBB0_31:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	and r24, r16, r20
	setlt.u r6, r15, r24
	bneq r6, zero, .LBB0_33
# %bb.32:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r21, r16, 0
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	or r21, r16, r27
.LBB0_34:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	and r22, r9, r20
	lui r6, 1048560
	setlt.u r11, r15, r22
	bneq r11, zero, .LBB0_36
# %bb.35:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	storeli.w r9, -28(r30)                  # 4-byte Folded Spill
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	or r5, r9, r27
	storeli.w r5, -28(r30)                  # 4-byte Folded Spill
.LBB0_37:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	and r26, r8, r20
	setlt.u r11, r15, r26
	bneq r11, zero, .LBB0_39
# %bb.38:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r25, r8, 0
	j .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	or r25, r8, r27
.LBB0_40:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	and r17, r4, r20
	setlt.u r11, r15, r17
	bneq r11, zero, .LBB0_42
# %bb.41:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r11, r4, 0
	j .LBB0_43
.LBB0_42:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	or r11, r4, r27
.LBB0_43:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	and r19, r7, r20
	setlt.u r13, r15, r19
	bneq r13, zero, .LBB0_45
# %bb.44:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r13, r7, 0
	j .LBB0_46
.LBB0_45:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	or r13, r7, r27
.LBB0_46:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	and r20, r10, r20
	lui r5, 1024
	setlt.u r15, r15, r20
	bneq r15, zero, .LBB0_48
# %bb.47:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r15, r10, 0
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	or r15, r10, r27
.LBB0_49:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	loadli.w r23,  -20(r30)                 # 4-byte Folded Reload
	and r27, r12, r23
	lui r23, 522240
	setlt.u r23, r23, r27
	bneq r23, zero, .LBB0_51
# %bb.50:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r23, r12, 0
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	or r23, r12, r5
.LBB0_52:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	setlt.u r26, r5, r26
	bneq r26, zero, .LBB0_54
# %bb.53:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r25, r8, 16
	loadli.w r5,  -24(r30)                  # 4-byte Folded Reload
	andi r25, r25, 1
	add.s r8, r8, r25
	add.s r8, r8, r5
	and r25, r8, r6
.LBB0_54:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	lui r26, 1048560
	setlt.u r8, r5, r22
	loadli.w r22,  -24(r30)                 # 4-byte Folded Reload
	bneq r8, zero, .LBB0_56
# %bb.55:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r8, r9, 16
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r22
	and r5, r8, r26
	storeli.w r5, -28(r30)                  # 4-byte Folded Spill
.LBB0_56:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	setlt.u r8, r5, r24
	bneq r8, zero, .LBB0_58
# %bb.57:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r6, r16, 16
	andi r6, r6, 1
	add.s r6, r16, r6
	add.s r6, r6, r22
	and r21, r6, r26
.LBB0_58:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	setlt.u r8, r5, r18
	bneq r8, zero, .LBB0_60
# %bb.59:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r5, r14, 16
	andi r5, r5, 1
	add.s r5, r14, r5
	add.s r5, r5, r22
	and r28, r5, r26
.LBB0_60:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	setlt.u r8, r5, r27
	bneq r8, zero, .LBB0_62
# %bb.61:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r8, r12, 16
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r22
	and r23, r8, r26
.LBB0_62:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	lui r27, 1024
	setlt.u r8, r5, r20
	bneq r8, zero, .LBB0_64
# %bb.63:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r8, r10, 16
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r22
	and r15, r8, r26
.LBB0_64:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	loadli.w r20,  -20(r30)                 # 4-byte Folded Reload
	setlt.u r8, r5, r19
	bneq r8, zero, .LBB0_66
# %bb.65:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r8, r7, 16
	andi r8, r8, 1
	add.s r7, r7, r8
	add.s r7, r7, r22
	and r13, r7, r26
.LBB0_66:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	setlt.u r7, r5, r17
	bneq r7, zero, .LBB0_27
# %bb.67:                               # %vector.body55
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r7, r4, 16
	andi r7, r7, 1
	add.s r4, r4, r7
	add.s r4, r4, r22
	and r11, r4, r26
	j .LBB0_27
.LBB0_68:                               # %.critedge4
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r3, zero, 6
	.loc	1 33 11 is_stmt 1               # ieee-multiply.mlir:33:11
	bneq r9, r11, .LBB0_89
# %bb.69:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 18
	addli r2, zero, 5504
	addli r4, zero, 3456
	xwait r1, 0
	addli r1, zero, 31
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 256
	ds_cfg r11, zero, 0
	ds_cfg r12, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r12, zero, 13
	shuffle_coa r2, r4, r1, 4
	addli r1, zero, 19
	unlock zero
	xsignal r1, 0
	addli r1, zero, 26
	xsignal r1, 0
	j .LBB0_89
.LBB0_70:                               # %middle.block60
                                        #   in Loop: Header=BB0_11 Depth=1
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
	xwait r1, 0
	xfence
	zext_int2long r[1:2], zero
	mfence { lm, sm, gm }
	j .LBB0_72
.LBB0_71:                               # %vector.body46
                                        #   in Loop: Header=BB0_72 Depth=2
	addli r12, r3, 3468
	addli.d r[1:2], r[1:2], 8
	addli r11, r3, 3456
	addli r14, r3, 3472
	stores.w r10, 0(r12)
	addli r10, r3, 3464
	addli r12, r3, 3460
	stores.w r13, 0(r11)
	stores.w r5, 0(r14)
	stores.w r8, 0(r10)
	stores.w r9, 0(r12)
	load.d r[9:10], -16(r30)                # 8-byte Folded Reload
	addli r8, r3, 3484
	stores.w r4, 0(r8)
	addli r4, r3, 3480
	addli r3, r3, 3476
	setneq.d r9, r[1:2], r[9:10]
	stores.w r7, 0(r4)
	stores.w r6, 0(r3)
	beq r9, zero, .LBB0_88
.LBB0_72:                               # %vector.body46
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addli r3, r1, 2176
	addli r4, r1, 2177
	addli r6, r1, 2179
	addli r8, r1, 2181
	addli r10, r1, 2183
	addli r5, r1, 2178
	addli r9, r1, 2182
	addli r7, r1, 2180
	loads.bu r13, 0(r3)
	slli r3, r1, 2
	loads.bu r20, 0(r4)
	loads.bu r16, 0(r6)
	loads.bu r14, 0(r8)
	loads.bu r11, 0(r10)
	loads.bu r18, 0(r5)
	loads.bu r12, 0(r9)
	loads.bu r15, 0(r7)
	addli r4, r3, 4492
	addli r6, r3, 4488
	addli r5, r3, 4496
	addli r17, r3, 4500
	loads.w r23, 1164(r3)
	loads.w r25, 1160(r3)
	loads.w r26, 1156(r3)
	loads.w r19, 1176(r3)
	loads.w r22, 1172(r3)
	loads.w r24, 1168(r3)
	loads.w r10, 0(r4)
	loads.w r8, 0(r6)
	addli r4, r3, 4484
	addli r6, r3, 4508
	loads.w r5, 0(r5)
	loads.w r9, 0(r4)
	loads.w r4, 0(r6)
	addli r6, r3, 4504
	loads.w r7, 0(r6)
	loads.w r6, 0(r17)
	loads.w r17, 1180(r3)
	bneq r13, zero, .LBB0_74
# %bb.73:                               # %vector.body46
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	loads.w r13, 1152(r3)
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	beq r20, zero, .LBB0_75
	j .LBB0_76
.LBB0_74:                               #   in Loop: Header=BB0_72 Depth=2
	addli r13, r3, 4480
	loads.w r13, 0(r13)
	bneq r20, zero, .LBB0_76
.LBB0_75:                               # %vector.body46
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r9, r26, 0
.LBB0_76:                               # %vector.body46
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	bneq r18, zero, .LBB0_82
# %bb.77:                               # %vector.body46
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r8, r25, 0
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	beq r16, zero, .LBB0_83
.LBB0_78:                               # %vector.body46
                                        #   in Loop: Header=BB0_72 Depth=2
	bneq r15, zero, .LBB0_84
.LBB0_79:                               # %vector.body46
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r5, r24, 0
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	beq r14, zero, .LBB0_85
.LBB0_80:                               # %vector.body46
                                        #   in Loop: Header=BB0_72 Depth=2
	bneq r12, zero, .LBB0_86
.LBB0_81:                               # %vector.body46
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r7, r19, 0
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	bneq r11, zero, .LBB0_71
	j .LBB0_87
.LBB0_82:                               # %vector.body46
                                        #   in Loop: Header=BB0_72 Depth=2
	bneq r16, zero, .LBB0_78
.LBB0_83:                               # %vector.body46
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r10, r23, 0
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	beq r15, zero, .LBB0_79
.LBB0_84:                               # %vector.body46
                                        #   in Loop: Header=BB0_72 Depth=2
	bneq r14, zero, .LBB0_80
.LBB0_85:                               # %vector.body46
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, r22, 0
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	beq r12, zero, .LBB0_81
.LBB0_86:                               # %vector.body46
                                        #   in Loop: Header=BB0_72 Depth=2
	bneq r11, zero, .LBB0_71
.LBB0_87:                               # %vector.body46
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r4, r17, 0
	j .LBB0_71
.LBB0_88:                               # %.critedge4.thread
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r3, zero, 6
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	addli r1, zero, 9
	mfence { sm }
	.loc	1 26 11 is_stmt 1               # ieee-multiply.mlir:26:11
	core_id r9
	addli r11, zero, 2
	addli r12, zero, 1
	addli r13, zero, 1024
	addli r14, zero, 3
	lui r23, 522240
	lui r24, 1048560
	.loc	1 32 11                         # ieee-multiply.mlir:32:11
	xsignal r3, 0
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	loadli.w r10,  -56(r30)                 # 4-byte Folded Reload
	loadli.w r22,  -24(r30)                 # 4-byte Folded Reload
	load.d r[15:16], -40(r30)               # 8-byte Folded Reload
	loadli.w r20,  -20(r30)                 # 4-byte Folded Reload
.LBB0_89:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 33 11                         # ieee-multiply.mlir:33:11
	beq r10, zero, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 26
	addli r2, zero, 256
	xwait r1, 0
	addli r1, zero, 37
	xwait r1, 0
	lock zero, r11
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r2, zero, zero, 3
	addli r2, zero, 5504
	loadli.w r4,  -52(r30)                  # 4-byte Folded Reload
	ssreduce r4, r2, 0
	addli r2, zero, 27
	unlock r11
	xsignal r2, 0
	.loc	1 39 11                         # ieee-multiply.mlir:39:11
	lock zero, r11
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	ew_cfg r12, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 32
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r13, 4
	hp_ssmul r4, r4, r4, 0
	unlock r11
	xsignal r1, 0
.LBB0_91:                               # %.critedge6
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r1, 17
	ori r1, r1, 1792
	.loc	1 40 11 is_stmt 1               # ieee-multiply.mlir:40:11
	storeli.w r1, -28(r30)                  # 4-byte Folded Spill
	bneq r9, r11, .LBB0_93
# %bb.92:                               # %.critedge8.thread
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r5, zero, 32
	.loc	1 40 11                         # ieee-multiply.mlir:40:11
	addli r1, zero, 39
	lui r4, 9
	xwait r5, 0
	xwait r1, 0
	lock zero, zero
	ori r1, r4, 1664
	ds_cfg r11, zero, 0
	ds_cfg r12, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r12, zero, 13
	loadli.w r2,  -52(r30)                  # 4-byte Folded Reload
	shuffle_coa r1, r2, r12, 4
	addli r1, zero, 33
	addli r2, zero, 256
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
	ori r1, r4, 1792
	addli r4, zero, 5504
	ds_cfg r11, zero, 0
	ds_cfg r5, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r12, zero, 13
	shuffle_coa r4, r1, r2, 4
	addli r1, zero, 28
	unlock zero
	xsignal r1, 0
	addli r1, zero, 43
	j .LBB0_97
.LBB0_93:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 40 11                         # ieee-multiply.mlir:40:11
	bneq r9, r14, .LBB0_98
# %bb.94:                               #   in Loop: Header=BB0_11 Depth=1
	addli r2, zero, 38
	lui r4, 9
	addli r5, zero, 40
	addli r1, zero, 0
	xwait r2, 0
	addli r2, zero, 41
	ori r3, r4, 1664
	xwait r2, 0
	lock zero, r14
	ori r2, r4, 1536
	rs_cfg zero, r12, r12, 1
	rs_cfg zero, r12, zero, 3
	rs_col r2, r3, r12, 0
	ori r3, r4, 1792
	addli r4, zero, 39
	unlock r14
	xsignal r4, 0
	addli r4, zero, 16
	xsignal r5, 0
	xwait r4, 0
	addli r4, zero, 44
	xwait r5, 0
	lui r5, 784384
	xwait r4, 0
	lock zero, r11
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r5, zero, 0
	ew_cfg zero, zero, zero, 2
	ew_cfg r12, zero, zero, 3
.LBB0_95:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addli r4, r1, 4480
	addli r1, r1, 4
	dsmadd r3, r4, r2, 0
	addli r3, r3, 128
	bneq r1, r13, .LBB0_95
# %bb.96:                               # %.critedge8
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 17
	unlock r11
	addli r2, zero, 256
	addli r3, zero, 6
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
	addli r1, zero, 8
	lock zero, r14
	rs_cfg zero, r2, r1, 1
	addli r1, zero, 5504
	rs_cfg zero, r2, zero, 3
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	rs_col r2, r1, r12, 0
	addli r1, zero, 29
	unlock r14
	xsignal r1, 0
	addli r1, zero, 47
	xsignal r1, 0
	addli r1, zero, 45
.LBB0_97:                               # %.thread28
                                        #   in Loop: Header=BB0_11 Depth=1
	xsignal r1, 0
.LBB0_98:                               # %.thread28
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r1, 17
	ori r1, r1, 2816
	.loc	1 42 11                         # ieee-multiply.mlir:42:11
	beq r10, zero, .LBB0_100
# %bb.99:                               #   in Loop: Header=BB0_11 Depth=1
	addli r2, zero, 45
	xwait r2, 0
	addli r2, zero, 50
	xwait r2, 0
	lock zero, r11
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r2, 0
	addli r2, zero, 255
	ew_cfg zero, r2, zero, 2
	ew_cfg r12, zero, zero, 3
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	dsmul r1, r2, r2, 0
	addli r2, zero, 49
	unlock r11
	xsignal r2, 0
.LBB0_100:                              #   in Loop: Header=BB0_11 Depth=1
	.loc	1 43 11 is_stmt 1               # ieee-multiply.mlir:43:11
	bneq r9, r14, .LBB0_119
# %bb.101:                              # %vector.ph36
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r2, zero, 9
	xwait r3, 0
	xwait r2, 0
	addli r2, zero, 19
	xwait r2, 0
	addli r2, zero, 49
	xwait r2, 0
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_103
.LBB0_102:                              # %vector.body37
                                        #   in Loop: Header=BB0_103 Depth=2
	addli r14, r4, 3468
	load.d r[16:17], -16(r30)               # 8-byte Folded Reload
	addli.d r[2:3], r[2:3], 8
	addli r13, r4, 3456
	addli r15, r4, 3472
	stores.w r12, 0(r14)
	addli r12, r4, 3464
	addli r14, r4, 3460
	stores.w r11, 0(r13)
	stores.w r5, 0(r15)
	stores.w r10, 0(r12)
	setneq.d r10, r[2:3], r[16:17]
	stores.w r9, 0(r14)
	addli r9, r4, 3484
	stores.w r8, 0(r9)
	addli r8, r4, 3480
	addli r4, r4, 3476
	stores.w r7, 0(r8)
	stores.w r6, 0(r4)
	beq r10, zero, .LBB0_121
.LBB0_103:                              # %vector.body37
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addli r4, r2, 2176
	addli r5, r2, 2177
	addli r6, r2, 2178
	addli r7, r2, 2179
	addli r8, r2, 2180
	addli r9, r2, 2181
	addli r10, r2, 2182
	addli r12, r2, 2183
	loads.bu r23, 0(r4)
	slli r4, r2, 2
	loads.bu r24, 0(r5)
	loads.bu r20, 0(r6)
	loads.bu r18, 0(r7)
	loads.bu r17, 0(r8)
	loads.bu r15, 0(r9)
	loads.bu r14, 0(r10)
	loads.bu r13, 0(r12)
	add.s r11, r4, r1
	loads.w r25, 1164(r4)
	loads.w r27, 1160(r4)
	loads.w r28, 1156(r4)
	loads.w r16, 1180(r4)
	loads.w r19, 1176(r4)
	loads.w r22, 1172(r4)
	loads.w r26, 1168(r4)
	loads.w r12, 12(r11)
	loads.w r10, 8(r11)
	loads.w r9, 4(r11)
	loads.w r8, 28(r11)
	loads.w r7, 24(r11)
	loads.w r6, 20(r11)
	loads.w r5, 16(r11)
	bneq r23, zero, .LBB0_105
# %bb.104:                              # %vector.body37
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	loads.w r11, 1152(r4)
	lui r23, 522240
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	beq r24, zero, .LBB0_106
	j .LBB0_107
.LBB0_105:                              #   in Loop: Header=BB0_103 Depth=2
	loads.w r11, 0(r11)
	lui r23, 522240
	bneq r24, zero, .LBB0_107
.LBB0_106:                              # %vector.body37
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r9, r28, 0
.LBB0_107:                              # %vector.body37
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	bneq r20, zero, .LBB0_109
# %bb.108:                              # %vector.body37
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r10, r27, 0
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	beq r18, zero, .LBB0_110
	j .LBB0_111
.LBB0_109:                              # %vector.body37
                                        #   in Loop: Header=BB0_103 Depth=2
	bneq r18, zero, .LBB0_111
.LBB0_110:                              # %vector.body37
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r12, r25, 0
.LBB0_111:                              # %vector.body37
                                        #   in Loop: Header=BB0_103 Depth=2
	loadli.w r20,  -20(r30)                 # 4-byte Folded Reload
	lui r27, 1024
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	bneq r17, zero, .LBB0_115
# %bb.112:                              # %vector.body37
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r5, r26, 0
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	beq r15, zero, .LBB0_116
.LBB0_113:                              # %vector.body37
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	lui r24, 1048560
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	bneq r14, zero, .LBB0_117
.LBB0_114:                              # %vector.body37
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r7, r19, 0
	loadli.w r22,  -24(r30)                 # 4-byte Folded Reload
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	bneq r13, zero, .LBB0_102
	j .LBB0_118
.LBB0_115:                              # %vector.body37
                                        #   in Loop: Header=BB0_103 Depth=2
	bneq r15, zero, .LBB0_113
.LBB0_116:                              # %vector.body37
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, r22, 0
	lui r24, 1048560
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	beq r14, zero, .LBB0_114
.LBB0_117:                              # %vector.body37
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	loadli.w r22,  -24(r30)                 # 4-byte Folded Reload
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	bneq r13, zero, .LBB0_102
.LBB0_118:                              # %vector.body37
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r8, r16, 0
	j .LBB0_102
.LBB0_119:                              #   in Loop: Header=BB0_11 Depth=1
	.loc	1 44 11 is_stmt 1               # ieee-multiply.mlir:44:11
	bneq r9, r11, .LBB0_122
# %bb.120:                              #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 20
	addli r2, zero, 5504
	addli r3, zero, 3456
	xwait r1, 0
	addli r1, zero, 29
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 256
	ds_cfg r11, zero, 0
	ds_cfg r12, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r12, zero, 13
	shuffle_coa r2, r3, r1, 4
	addli r1, zero, 21
	unlock zero
	xsignal r1, 0
	addli r1, zero, 30
	xsignal r1, 0
	j .LBB0_122
.LBB0_121:                              # %.thread33
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	addli r1, zero, 7
	mfence { sm }
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	core_id r9
	addli r11, zero, 2
	addli r12, zero, 1
	addli r13, zero, 1024
	addli r14, zero, 3
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	xsignal r1, 0
	addli r1, zero, 10
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r1, 0
	addli r1, zero, 50
	xsignal r1, 0
	loadli.w r10,  -56(r30)                 # 4-byte Folded Reload
	load.d r[15:16], -40(r30)               # 8-byte Folded Reload
.LBB0_122:                              #   in Loop: Header=BB0_11 Depth=1
	.loc	1 44 11                         # ieee-multiply.mlir:44:11
	beq r10, zero, .LBB0_124
# %bb.123:                              # %.critedge10
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 30
	addli r2, zero, 256
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	addli r4, zero, 1
	addli r5, zero, 1
	addli r6, zero, 1
	.loc	1 44 11                         # ieee-multiply.mlir:44:11
	xwait r1, 0
	addli r1, zero, 33
	xwait r1, 0
	lock zero, r11
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r2, zero, zero, 3
	addli r2, zero, 5504
	loadli.w r3,  -52(r30)                  # 4-byte Folded Reload
	ssreduce r3, r2, 0
	lui r2, 260096
	unlock r11
	xsignal r1, 0
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	lock zero, r11
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	ew_cfg r12, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 4
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r13, 4
	hp_ssmul r3, r3, r3, 0
	unlock r11
	xsignal r1, 0
	.loc	1 51 11                         # ieee-multiply.mlir:51:11
	lock zero, r11
	ew_cfg zero, zero, zero, 1
	loadli.w r1,  -100(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r2, zero, r1, 0
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	addli r2, r3, 0
	addli r1, zero, 34
	.loc	1 51 11                         # ieee-multiply.mlir:51:11
	ew_cfg zero, zero, zero, 2
	ew_cfg r12, zero, zero, 3
	dsmadd r3, r3, r3, 0
	unlock r11
	xsignal r1, 0
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	xwait r1, 0
	xfence
	jal _ZN3xpu10math_rsqrtEPU3AS2fS1_iii
	load.d r[15:16], -40(r30)               # 8-byte Folded Reload
	loadli.w r10,  -56(r30)                 # 4-byte Folded Reload
	addli r1, zero, 35
	addli r14, zero, 3
	addli r13, zero, 1024
	addli r12, zero, 1
	addli r11, zero, 2
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	core_id r9
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	xsignal r1, 0
.LBB0_124:                              # %.critedge12
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r1, 17
	ori r1, r1, 3840
	.loc	1 53 11 is_stmt 1               # ieee-multiply.mlir:53:11
	bneq r9, r11, .LBB0_157
# %bb.125:                              # %.thread29
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r2, zero, 21
	addli r3, zero, 3456
	xwait r2, 0
	addli r2, zero, 35
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 256
	ds_cfg r11, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r2, zero, 13
	ds_cfg r12, zero, 14
	loadli.w r2,  -52(r30)                  # 4-byte Folded Reload
	shuffle_batch r3, r2, r12, 4
	addli r2, zero, 22
	unlock zero
	xsignal r2, 0
	addli r2, zero, 36
	xsignal r2, 0
	.loc	1 54 23                         # ieee-multiply.mlir:54:23
	bneq r10, zero, .LBB0_160
.LBB0_126:                              #   in Loop: Header=BB0_11 Depth=1
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	bneq r9, r14, .LBB0_161
.LBB0_127:                              # %vector.ph
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r2, zero, 23
	xwait r2, 0
	addli r2, zero, 43
	xwait r2, 0
	addli r2, zero, 46
	xwait r2, 0
	addli r2, zero, 51
	xwait r2, 0
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_129
.LBB0_128:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	addli.d r[2:3], r[2:3], 4
	addli r5, r4, 3468
	stores.w r9, 0(r5)
	addli r5, r4, 3464
	setneq.d r6, r[2:3], r[6:7]
	addli r7, r4, 3456
	addli r4, r4, 3460
	stores.w r10, 0(r5)
	stores.w r12, 0(r4)
	stores.w r13, 0(r7)
	beq r6, zero, .LBB0_9
.LBB0_129:                              # %vector.body
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r10, 9
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	slli r5, r2, 7
	ori r4, r10, 1792
	ori r7, r10, 2048
	add.s r6, r5, r4
	ori r4, r10, 1920
	add.s r9, r5, r7
	ori r7, r10, 2176
	add.s r8, r5, r4
	slli r4, r2, 2
	loads.w r6, 0(r6)
	add.s r5, r5, r7
	add.s r11, r4, r1
	loads.w r10, 0(r5)
	loadli.w r5,  -28(r30)                  # 4-byte Folded Reload
	loads.w r7, 0(r8)
	loads.w r8, 0(r9)
	loads.w r12, 0(r11)
	loads.w r14, 4(r11)
	loads.w r13, 8(r11)
	loads.w r11, 12(r11)
	add.s r16, r4, r5
	loads.w r9, 12(r16)
	loads.w r15, 4(r16)
	.loc	1 61 24 is_stmt 1               # ieee-multiply.mlir:61:24
	and r5, r6, r20
	.loc	1 65 24                         # ieee-multiply.mlir:65:24
	seteq r17, r5, r23
	.loc	1 62 24                         # ieee-multiply.mlir:62:24
	and r6, r12, r20
	.loc	1 67 25                         # ieee-multiply.mlir:67:25
	seteq r20, r5, zero
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	loads.w r12, 8(r16)
	.loc	1 68 25                         # ieee-multiply.mlir:68:25
	seteq r18, r6, zero
	.loc	1 66 24                         # ieee-multiply.mlir:66:24
	seteq r19, r6, r23
	.loc	1 72 27                         # ieee-multiply.mlir:72:27
	max.u r5, r5, r6
	setlt.u r5, r23, r5
	.loc	1 69 29                         # ieee-multiply.mlir:69:29
	and r6, r17, r18
	.loc	1 70 29                         # ieee-multiply.mlir:70:29
	and r17, r20, r19
	.loc	1 71 27                         # ieee-multiply.mlir:71:27
	or r6, r6, r17
	.loc	1 73 23                         # ieee-multiply.mlir:73:23
	or r17, r5, r6
	lui r5, 523264
	lui r6, 523264
	.loc	1 75 25                         # ieee-multiply.mlir:75:25
	bneq r17, zero, .LBB0_131
# %bb.130:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	loads.w r6, 0(r16)
.LBB0_131:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	loadli.w r20,  -20(r30)                 # 4-byte Folded Reload
	and r7, r7, r20
	and r14, r14, r20
	seteq r16, r7, r23
	seteq r19, r7, zero
	seteq r17, r14, zero
	seteq r18, r14, r23
	max.u r7, r7, r14
	setlt.u r7, r23, r7
	and r14, r16, r17
	and r16, r19, r18
	or r14, r14, r16
	or r14, r7, r14
	lui r7, 523264
	.loc	1 75 25                         # ieee-multiply.mlir:75:25
	bneq r14, zero, .LBB0_133
# %bb.132:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r7, r15, 0
.LBB0_133:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	and r8, r8, r20
	and r13, r13, r20
	seteq r14, r8, r23
	seteq r17, r8, zero
	seteq r15, r13, zero
	seteq r16, r13, r23
	max.u r8, r8, r13
	setlt.u r8, r23, r8
	and r13, r14, r15
	and r14, r17, r16
	or r13, r13, r14
	or r13, r8, r13
	lui r8, 523264
	.loc	1 75 25                         # ieee-multiply.mlir:75:25
	bneq r13, zero, .LBB0_135
# %bb.134:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r8, r12, 0
.LBB0_135:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	and r10, r10, r20
	and r11, r11, r20
	seteq r12, r10, r23
	seteq r15, r10, zero
	seteq r13, r11, zero
	seteq r14, r11, r23
	max.u r10, r10, r11
	setlt.u r10, r23, r10
	and r11, r12, r13
	and r12, r15, r14
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 75 25                         # ieee-multiply.mlir:75:25
	bneq r10, zero, .LBB0_137
# %bb.136:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r5, r9, 0
.LBB0_137:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 79 11 is_stmt 1               # ieee-multiply.mlir:79:11
	and r11, r5, r20
	setlt.u r9, r23, r11
	bneq r9, zero, .LBB0_139
# %bb.138:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r9, r5, 0
	j .LBB0_140
.LBB0_139:                              #   in Loop: Header=BB0_129 Depth=2
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	or r9, r5, r27
.LBB0_140:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	and r14, r8, r20
	setlt.u r10, r23, r14
	bneq r10, zero, .LBB0_142
# %bb.141:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r10, r8, 0
	j .LBB0_143
.LBB0_142:                              #   in Loop: Header=BB0_129 Depth=2
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	or r10, r8, r27
.LBB0_143:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	and r15, r7, r20
	setlt.u r12, r23, r15
	bneq r12, zero, .LBB0_145
# %bb.144:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r12, r7, 0
	j .LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_129 Depth=2
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	or r12, r7, r27
.LBB0_146:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	and r16, r6, r20
	setlt.u r13, r23, r16
	bneq r13, zero, .LBB0_148
# %bb.147:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r13, r6, 0
	j .LBB0_149
.LBB0_148:                              #   in Loop: Header=BB0_129 Depth=2
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	or r13, r6, r27
.LBB0_149:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	loadli.w r17,  -4(r30)                  # 4-byte Folded Reload
	setlt.u r16, r17, r16
	bneq r16, zero, .LBB0_151
# %bb.150:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r13, r6, 16
	andi r13, r13, 1
	add.s r6, r6, r13
	add.s r6, r6, r22
	and r13, r6, r24
.LBB0_151:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	loadli.w r6,  -4(r30)                   # 4-byte Folded Reload
	setlt.u r6, r6, r15
	bneq r6, zero, .LBB0_153
# %bb.152:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r22
	and r12, r6, r24
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	loadli.w r6,  -4(r30)                   # 4-byte Folded Reload
	load.d r[15:16], -40(r30)               # 8-byte Folded Reload
	setlt.u r6, r6, r14
	bneq r6, zero, .LBB0_155
# %bb.154:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r22
	and r10, r6, r24
.LBB0_155:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	loadli.w r6,  -4(r30)                   # 4-byte Folded Reload
	setlt.u r6, r6, r11
	bneq r6, zero, .LBB0_128
# %bb.156:                              # %vector.body
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r6, r5, 16
	andi r6, r6, 1
	add.s r5, r5, r6
	add.s r5, r5, r22
	and r9, r5, r24
	j .LBB0_128
.LBB0_157:                              #   in Loop: Header=BB0_11 Depth=1
	.loc	1 53 11 is_stmt 1               # ieee-multiply.mlir:53:11
	bneq r9, r14, .LBB0_159
# %bb.158:                              #   in Loop: Header=BB0_11 Depth=1
	addli r2, zero, 22
	addli r3, zero, 3456
	xwait r2, 0
	addli r2, zero, 52
	xwait r2, 0
	addli r2, zero, 8
	lock zero, r14
	rs_cfg zero, r12, r2, 0
	addli r2, zero, 256
	rs_cfg zero, r12, zero, 2
	rs_row r1, r3, r2, 0
	addli r2, zero, 23
	unlock r14
	xsignal r2, 0
	addli r2, zero, 51
	xsignal r2, 0
	.loc	1 54 23                         # ieee-multiply.mlir:54:23
	beq r10, zero, .LBB0_126
	j .LBB0_160
.LBB0_159:                              #   in Loop: Header=BB0_11 Depth=1
	beq r10, zero, .LBB0_126
.LBB0_160:                              #   in Loop: Header=BB0_11 Depth=1
	addli r2, zero, 36
	xwait r2, 0
	addli r2, zero, 47
	xwait r2, 0
	xfence
	lui r2, 260096
	mfence { lm, sm, gm }
	lock zero, r11
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	addli r2, zero, 255
	ew_cfg zero, r2, zero, 2
	ew_cfg r12, zero, zero, 3
	loadli.w r2,  -52(r30)                  # 4-byte Folded Reload
	loads.w r2, 0(r2)
	ewcoeff_cfg r2, zero, zero, 0
	loadli.w r2,  -28(r30)                  # 4-byte Folded Reload
	hp_ssmul r2, r2, r2, 0
	addli r2, zero, 37
	unlock r11
	xsignal r2, 0
	addli r2, zero, 46
	xsignal r2, 0
	.loc	1 79 11                         # ieee-multiply.mlir:79:11
	beq r9, r14, .LBB0_127
.LBB0_161:                              #   in Loop: Header=BB0_11 Depth=1
	.loc	1 80 5                          # ieee-multiply.mlir:80:5
	bneq r9, zero, .LBB0_10
# %bb.162:                              #   in Loop: Header=BB0_11 Depth=1
	load.d r[1:2], -64(r30)                 # 8-byte Folded Reload
	addli r3, zero, 24
	addli r5, zero, 3520
	xwait r3, 0
	load.d r[3:4], 16(r30)
	sll.d r[1:2], r[1:2], r12
	add.ul r[1:2], r[3:4], r[1:2]
	addli r3, zero, 5
	addli r4, zero, 64
	lock zero, r3
	dma_cfg r12, r12, zero, 0
	dma_cfg zero, r12, zero, 1
	dma_cfg r2, zero, zero, 2
	dma_cfg r1, r5, r4, 3
	addli r1, zero, 8
	addli r2, zero, 128
	dma_cfg r4, r2, r1, 4
	addli r1, zero, 512
	load.d r[4:5], -72(r30)                 # 8-byte Folded Reload
	dma_cfg r1, r13, r4, 5
	addli r1, zero, 25
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	xsignal r1, 0
	j .LBB0_10
.LBB0_163:                              # %._crit_edge
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	beq r10, zero, .LBB0_165
# %bb.164:
	addli r1, zero, 3
	xsignal r1, 0
.LBB0_165:
	.loc	1 2 3 is_stmt 1                 # ieee-multiply.mlir:2:3
	xsignal zero, 0
	bneq r9, zero, .LBB0_167
# %bb.166:
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
.LBB0_167:
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/native-activation-ehamh09o" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
