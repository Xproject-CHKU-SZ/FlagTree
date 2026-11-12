	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/native-activation-oxsqdhs0" "ieee-multiply.mlir"
	.loc	1 2 0                           # ieee-multiply.mlir:2:0
	.cfi_startproc
# %bb.0:
	addli sp, sp, -192
	addli r1, zero, 1
.Ltmp0:
	.loc	1 29 11 prologue_end            # ieee-multiply.mlir:29:11
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
	addli r2, zero, 5
	csr_set csr3, r1
	addli r1, zero, 3
	sync_group
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 6
	addli r2, zero, 9
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 12
	addli r2, zero, 16
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 27
	addli r2, zero, 19
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 33
	addli r2, zero, 39
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
	addli r1, zero, 57
	addli r2, zero, 60
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
	mul.s r1, r1, r3
	addli r3, zero, 1
	addli r2, r2, -1
	div.s r2, r2, r4
	load_param_i r4, 0
	mul.s r5, r2, r4
	fmac.s r2, r2, r4
	min.s r16, r2, r1
	.loc	1 29 11                         # ieee-multiply.mlir:29:11
	bneq r9, r3, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r17, zero, 3
	addli r4, zero, 5
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	addli r1, zero, 2
	addli r8, zero, 4
	addli r2, zero, 7
	addli r6, zero, 8
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
	addli r15, zero, 27
	addli r7, zero, 28
	addli r9, zero, 29
	addli r10, zero, 30
	addli r11, zero, 31
	addli r12, zero, 64
	addli r13, zero, 128
	addli r14, zero, 1024
	.loc	1 29 11                         # ieee-multiply.mlir:29:11
	xwait r17, 0
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 6
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r6, 10
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
	load.d r[1:2], 16(r30)
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
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg r3, r3, zero, 0
	dma_cfg r3, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg zero, zero, r12, 3
	dma_cfg r13, zero, r6, 4
	dma_cfg r14, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	lock zero, r8
	dma_cfg r3, r3, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r12, r1, r12, 3
	addli r1, zero, 512
	addli r2, zero, 6
	dma_cfg r13, r12, r6, 4
	dma_cfg r14, r1, r3, 5
	addli r1, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 7
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r6, 10
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
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r9, 10
	core_id r9
	dma_cfg zero, zero, r10, 10
	loadli.w r10,  -40(r30)                 # 4-byte Folded Reload
	dma_cfg zero, zero, r11, 10
	dma_cfg r3, r3, zero, 0
	dma_cfg r3, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg zero, zero, r12, 3
	dma_cfg r13, zero, r6, 4
	dma_cfg r14, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	xsignal r1, 0
	ble.s r16, r5, .LBB0_179
	j .LBB0_10
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r1, zero, 5
	.loc	1 26 11 is_stmt 1               # ieee-multiply.mlir:26:11
	beq r9, r1, .LBB0_8
# %bb.6:
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r15, zero, 6
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	bneq r9, r15, .LBB0_9
# %bb.7:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r3, zero, 5
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	addli r4, zero, 1
	addli r1, zero, 2
	addli r6, zero, 8
	addli r2, zero, 11
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
	addli r12, zero, 27
	addli r11, zero, 28
	addli r10, zero, 29
	addli r9, zero, 30
	addli r8, zero, 31
	addli r7, zero, 64
	addli r13, zero, 128
	load.d r[17:18], 8(r30)
	addli r14, zero, 1088
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	xwait r3, 0
	lock zero, r3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 3
	storeli.w r5, -4(r30)                   # 4-byte Folded Spill
	addli r5, zero, 4
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 7
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r6, 10
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
	addli r1, zero, 1024
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
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
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg r4, r4, zero, 0
	dma_cfg r4, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r7, 3
	dma_cfg r13, zero, r6, 4
	dma_cfg r1, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	lock zero, r5
	dma_cfg r4, r4, zero, 0
	dma_cfg zero, r18, zero, 2
	dma_cfg r14, r17, r7, 3
	addli r14, zero, 512
	dma_cfg r13, r7, r6, 4
	dma_cfg r1, r14, r4, 5
	addli r14, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
	lock zero, r3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 3
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 7
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 9
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 11
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 12
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 13
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 14
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 15
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r2, 10
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
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	loadli.w r10,  -40(r30)                 # 4-byte Folded Reload
	dma_cfg zero, zero, r9, 10
	.loc	1 29 11 is_stmt 1               # ieee-multiply.mlir:29:11
	core_id r9
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	dma_cfg zero, zero, r8, 10
	dma_cfg r4, r4, zero, 0
	dma_cfg r4, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r7, 3
	dma_cfg r13, zero, r6, 4
	dma_cfg r1, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	xsignal r5, 0
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	ble.s r16, r5, .LBB0_179
	j .LBB0_10
.LBB0_8:
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r1, zero, 2
	addli r10, zero, 1
	addli r2, zero, 4
	xwait r1, 0
	xwait r2, 0
	ble.s r16, r5, .LBB0_179
	j .LBB0_10
.LBB0_9:
	addli r10, zero, 0
	ble.s r16, r5, .LBB0_179
.LBB0_10:                               # %.lr.ph
	sext_int2long r[1:2], r16
	sext_int2long r[3:4], r5
	addli r5, zero, 31
	zext_int2long r[15:16], zero
	addli r6, zero, 255
	addli r11, zero, 2
	addli r12, zero, 1
	addli r8, zero, 3
	addli r14, zero, 1024
	lui r22, 1024
	lui r23, 522240
	storeli.w r10, -40(r30)                 # 4-byte Folded Spill
	store.d r[1:2], -80(r30)                # 8-byte Folded Spill
	lui r1, 524287
	lui r2, 239665
	store.d r[15:16], -88(r30)              # 8-byte Folded Spill
	zext_int2long r[15:16], r6
	ori r25, r1, 4095
	lui r1, 7
	store.d r[15:16], -32(r30)              # 8-byte Folded Spill
	ori r26, r1, 4095
	lui r1, 522239
	storeli.w r25, -4(r30)                  # 4-byte Folded Spill
	ori r24, r1, 4095
	ori r1, r2, 623
	addli.d r[2:3], r[3:4], 0
	zext_int2long r[4:5], r5
	storeli.w r26, -24(r30)                 # 4-byte Folded Spill
	storeli.w r1, -104(r30)                 # 4-byte Folded Spill
	lui r1, 9
	store.d r[4:5], -96(r30)                # 8-byte Folded Spill
	addli r5, zero, 16
	storeli.w r24, -20(r30)                 # 4-byte Folded Spill
	ori r1, r1, 2432
	storeli.w r1, -44(r30)                  # 4-byte Folded Spill
	lui r1, 18
	ori r1, r1, 768
	storeli.w r1, -100(r30)                 # 4-byte Folded Spill
	j .LBB0_13
.LBB0_11:                               # %.thread42
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 106 11 is_stmt 1              # ieee-multiply.mlir:106:11
	addli r1, zero, 26
	mfence { sm }
	.loc	1 29 11                         # ieee-multiply.mlir:29:11
	core_id r9
	addli r11, zero, 2
	addli r12, zero, 1
	addli r8, zero, 3
	addli r14, zero, 1024
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	xsignal r1, 0
	addli r1, zero, 57
	xsignal r1, 0
	addli r1, zero, 60
	xsignal r1, 0
	loadli.w r10,  -40(r30)                 # 4-byte Folded Reload
.LBB0_12:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	load.d r[2:3], -56(r30)                 # 8-byte Folded Reload
	load.d r[4:5], -80(r30)                 # 8-byte Folded Reload
	addli.d r[2:3], r[2:3], 1
	setlt.sl r1, r[2:3], r[4:5]
	addli r5, zero, 16
	beq r1, zero, .LBB0_179
.LBB0_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_72 Depth 2
                                        #     Child Loop BB0_95 Depth 2
                                        #     Child Loop BB0_103 Depth 2
                                        #     Child Loop BB0_165 Depth 2
                                        #     Child Loop BB0_174 Depth 2
                                        #     Child Loop BB0_136 Depth 2
	.loc	1 5 14 is_stmt 1                # ieee-multiply.mlir:5:14
	beq r10, zero, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 6
	xwait r1, 0
	lock zero, r11
	lui r1, 276480
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 31
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 2048
	ew_cfg r12, zero, zero, 3
	ssaux r1, 0
	.loc	1 6 14                          # ieee-multiply.mlir:6:14
	addli r1, zero, 9
	.loc	1 5 14                          # ieee-multiply.mlir:5:14
	unlock r11
	.loc	1 6 14                          # ieee-multiply.mlir:6:14
	xwait r1, 0
	lock zero, r11
	addli r1, zero, 255
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 2176
	ew_cfg r12, zero, zero, 3
	ssaux r1, 0
	addli r1, zero, 7
	unlock r11
	xsignal r1, 0
.LBB0_15:                               # %.critedge4
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 14 is_stmt 0                # ieee-multiply.mlir:0:14
	loadli.w r1,  48(r30)
	store.d r[2:3], -56(r30)                # 8-byte Folded Spill
	.loc	1 17 10 is_stmt 1               # ieee-multiply.mlir:17:10
	addli r4, zero, 8
	div.s r1, r2, r1
	loadli.w r2,  44(r30)
	div.s r3, r1, r2
	.loc	1 105 11                        # ieee-multiply.mlir:105:11
	sext_int2long r[1:2], r3
	.loc	1 17 10                         # ieee-multiply.mlir:17:10
	sll.d r[6:7], r[1:2], r4
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	store.d r[6:7], -64(r30)                # 8-byte Folded Spill
	bneq r9, r8, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=1
	addli r4, zero, 12
	xwait r4, 0
	xfence
	setlti r4, r3, 32
	mfence { lm, sm, gm }
	load.d r[5:6], -88(r30)                 # 8-byte Folded Reload
.LBB0_17:                               #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	setlt.ul r7, r[5:6], r[15:16]
	addli r8, r5, 3200
	addli.d r[5:6], r[5:6], 1
	stores.b r4, 0(r8)
	bneq r7, zero, .LBB0_17
# %bb.18:                               # %.thread40
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	load.d r[4:5], -96(r30)                 # 8-byte Folded Reload
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	mfence { sm }
	addli r8, zero, 3
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	min.sl r[4:5], r[1:2], r[4:5]
	addli.d r[4:5], r[4:5], 1
	max.sl r[1:2], r[4:5], r[1:2]
	sub.s r17, r1, r3
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	addli r1, zero, 10
	xsignal r1, 0
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	j .LBB0_23
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	load.d r[3:4], -96(r30)                 # 8-byte Folded Reload
	min.sl r[3:4], r[1:2], r[3:4]
	addli.d r[3:4], r[3:4], 1
	max.sl r[3:4], r[3:4], r[1:2]
	sub.sl r[17:18], r[3:4], r[1:2]
	bneq r9, r12, .LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	zext_int2long r[1:2], zero
	addli r13, zero, 16
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	xwait r5, 0
	setlt.sl r1, r[1:2], r[17:18]
	bneq r1, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_13 Depth=1
	lock zero, r11
	addli r1, zero, 255
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 3456
	ew_cfg r12, zero, zero, 3
	ssaux r1, 0
	unlock r11
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=1
	load.d r[1:2], -64(r30)                 # 8-byte Folded Reload
	addli r6, zero, 13
	addli r5, zero, 5
	load.d r[3:4], 0(r30)
	addli r7, zero, 8
	addli r28, zero, 11
	addli r21, zero, 17
	addli r20, zero, 18
	addli r19, zero, 19
	addli r15, zero, 20
	addli r25, zero, 27
	addli r16, zero, 1024
	addli r14, zero, 3520
	addli r27, zero, 16
	xsignal r6, 0
	xwait r6, 0
	lock zero, r5
	sll.d r[1:2], r[1:2], r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	add.ul r[1:2], r[3:4], r[1:2]
	dma_cfg zero, zero, r11, 10
	addli r4, zero, 4
	addli r3, zero, 6
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 7
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 21
	dma_cfg zero, zero, r13, 10
	addli r13, zero, 3456
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 22
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 23
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 24
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 25
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 26
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 28
	dma_cfg zero, zero, r25, 10
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
	dma_cfg r13, zero, r3, 3
	addli r13, zero, 128
	dma_cfg r13, zero, r7, 4
	dma_cfg r16, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
	lock zero, r4
	dma_cfg r12, r12, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r14, r1, r3, 3
	addli r1, zero, 512
	addli r2, zero, 15
	addli r14, zero, 1024
	dma_cfg r13, r3, r7, 4
	dma_cfg r16, r1, r17, 5
	addli r1, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	lock zero, r5
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 7
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 21
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 22
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 23
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 24
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 25
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 26
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 28
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 29
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 3456
	dma_cfg r12, r12, zero, 0
	dma_cfg r12, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r3, 3
	dma_cfg r13, zero, r7, 4
	dma_cfg r14, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
	xsignal r1, 0
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
	loadli.w r25,  -4(r30)                  # 4-byte Folded Reload
.LBB0_23:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	store.d r[17:18], -72(r30)              # 8-byte Folded Spill
	.loc	1 33 11 is_stmt 1               # ieee-multiply.mlir:33:11
	beq r10, zero, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 14
	xwait r1, 0
	lock zero, r11
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 255
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 3456
	ew_cfg r12, zero, zero, 3
	dsmadd r1, r1, r14, 0
	addli r1, zero, 15
	unlock r11
	xsignal r1, 0
.LBB0_25:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r1, zero, 256
	zext_int2long r[1:2], r1
	store.d r[1:2], -16(r30)                # 8-byte Folded Spill
	.loc	1 34 11 is_stmt 1               # ieee-multiply.mlir:34:11
	bneq r9, r8, .LBB0_68
# %bb.26:                               # %vector.ph78
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 15
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	load.d r[1:2], -88(r30)                 # 8-byte Folded Reload
	j .LBB0_28
.LBB0_27:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	addli r7, r3, 5516
	addli.d r[1:2], r[1:2], 8
	addli r4, r3, 5504
	addli r5, r3, 5512
	addli r8, r3, 5520
	stores.w r28, 0(r7)
	addli r7, r3, 5508
	stores.w r27, 0(r5)
	addli r5, r3, 5532
	stores.w r25, 0(r4)
	addli r4, r3, 5528
	addli r3, r3, 5524
	stores.w r23, 0(r8)
	stores.w r21, 0(r7)
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	stores.w r11, 0(r5)
	stores.w r13, 0(r4)
	stores.w r15, 0(r3)
	setneq.d r6, r[1:2], r[6:7]
	beq r6, zero, .LBB0_70
.LBB0_28:                               # %vector.body79
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r3, r1, 2
	loadli.w r13,  -4(r30)                  # 4-byte Folded Reload
	lui r15, 522240
	addli r6, r3, 3468
	addli r4, r3, 3456
	addli r5, r3, 3472
	loads.w r14, 0(r6)
	loads.w r8, 0(r4)
	addli r4, r3, 3460
	addli r6, r3, 3464
	loads.w r12, 0(r5)
	addli r5, r3, 3484
	loads.w r9, 0(r4)
	addli r4, r3, 3476
	loads.w r16, 0(r6)
	loads.w r10, 0(r4)
	addli r4, r3, 3480
	loads.w r7, 0(r4)
	loads.w r4, 0(r5)
	and r18, r14, r13
	setlt.u r5, r15, r18
	bneq r5, zero, .LBB0_30
# %bb.29:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r28, r14, 0
	j .LBB0_31
.LBB0_30:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r28, r14, r22
.LBB0_31:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	and r24, r16, r13
	setlt.u r6, r15, r24
	bneq r6, zero, .LBB0_33
# %bb.32:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r27, r16, 0
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r27, r16, r22
.LBB0_34:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	and r21, r9, r13
	setlt.u r11, r15, r21
	bneq r11, zero, .LBB0_36
# %bb.35:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, r9, 0
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r6, r9, r22
.LBB0_37:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	and r26, r8, r13
	setlt.u r11, r15, r26
	bneq r11, zero, .LBB0_39
# %bb.38:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r25, r8, 0
	j .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r25, r8, r22
.LBB0_40:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	and r17, r4, r5
	setlt.u r11, r15, r17
	bneq r11, zero, .LBB0_42
# %bb.41:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r11, r4, 0
	j .LBB0_43
.LBB0_42:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r11, r4, r22
.LBB0_43:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	and r19, r7, r5
	setlt.u r13, r15, r19
	bneq r13, zero, .LBB0_45
# %bb.44:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r13, r7, 0
	j .LBB0_46
.LBB0_45:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r13, r7, r22
.LBB0_46:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	and r20, r10, r5
	lui r5, 1024
	setlt.u r15, r15, r20
	bneq r15, zero, .LBB0_48
# %bb.47:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r15, r10, 0
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r15, r10, r22
.LBB0_49:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	loadli.w r22,  -4(r30)                  # 4-byte Folded Reload
	lui r23, 522240
	and r22, r12, r22
	setlt.u r23, r23, r22
	bneq r23, zero, .LBB0_51
# %bb.50:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r23, r12, 0
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r23, r12, r5
.LBB0_52:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	loadli.w r5,  -20(r30)                  # 4-byte Folded Reload
	setlt.u r26, r5, r26
	bneq r26, zero, .LBB0_54
# %bb.53:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r25, r8, 16
	loadli.w r5,  -24(r30)                  # 4-byte Folded Reload
	andi r25, r25, 1
	add.s r8, r8, r25
	add.s r8, r8, r5
	lui r5, 1048560
	and r25, r8, r5
.LBB0_54:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	loadli.w r5,  -20(r30)                  # 4-byte Folded Reload
	loadli.w r26,  -24(r30)                 # 4-byte Folded Reload
	setlt.u r8, r5, r21
	addli r21, r6, 0
	bneq r8, zero, .LBB0_56
# %bb.55:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r8, r9, 16
	lui r5, 1048560
	andi r8, r8, 1
	add.s r8, r9, r8
	add.s r8, r8, r26
	and r21, r8, r5
.LBB0_56:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	loadli.w r9,  -20(r30)                  # 4-byte Folded Reload
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r8, r9, r24
	beq r8, zero, .LBB0_63
# %bb.57:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	setlt.u r8, r9, r18
	beq r8, zero, .LBB0_64
.LBB0_58:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	setlt.u r8, r9, r22
	bneq r8, zero, .LBB0_60
.LBB0_59:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r8, r12, 16
	lui r5, 1048560
	andi r8, r8, 1
	add.s r8, r12, r8
	add.s r8, r8, r26
	and r23, r8, r5
.LBB0_60:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r8, r9, r20
	lui r22, 1024
	beq r8, zero, .LBB0_65
# %bb.61:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	setlt.u r8, r9, r19
	beq r8, zero, .LBB0_66
.LBB0_62:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	setlt.u r7, r9, r17
	bneq r7, zero, .LBB0_27
	j .LBB0_67
.LBB0_63:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r6, r16, 16
	lui r5, 1048560
	andi r6, r6, 1
	add.s r6, r16, r6
	add.s r6, r6, r26
	and r27, r6, r5
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r8, r9, r18
	bneq r8, zero, .LBB0_58
.LBB0_64:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r5, r14, 16
	lui r8, 1048560
	andi r5, r5, 1
	add.s r5, r14, r5
	add.s r5, r5, r26
	and r28, r5, r8
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r8, r9, r22
	beq r8, zero, .LBB0_59
	j .LBB0_60
.LBB0_65:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r8, r10, 16
	lui r5, 1048560
	andi r8, r8, 1
	add.s r8, r10, r8
	add.s r8, r8, r26
	and r15, r8, r5
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r8, r9, r19
	bneq r8, zero, .LBB0_62
.LBB0_66:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r8, r7, 16
	lui r5, 1048560
	andi r8, r8, 1
	add.s r7, r7, r8
	add.s r7, r7, r26
	and r13, r7, r5
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r7, r9, r17
	bneq r7, zero, .LBB0_27
.LBB0_67:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r7, r4, 16
	lui r5, 1048560
	andi r7, r7, 1
	add.s r4, r4, r7
	add.s r4, r4, r26
	and r11, r4, r5
	j .LBB0_27
.LBB0_68:                               # %.critedge6
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 37 11 is_stmt 1               # ieee-multiply.mlir:37:11
	bneq r9, r11, .LBB0_89
# %bb.69:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 20
	addli r2, zero, 6528
	addli r3, zero, 4480
	xwait r1, 0
	addli r1, zero, 33
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
	addli r1, zero, 28
	xsignal r1, 0
	j .LBB0_89
.LBB0_70:                               # %middle.block84
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	addli r1, zero, 16
	mfence { sm }
	addli r2, zero, 17
	xsignal r1, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	addli r1, zero, 7
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	xsignal r2, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	xwait r1, 0
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 27
	xwait r2, 0
	xwait r1, 0
	xfence
	zext_int2long r[1:2], zero
	mfence { lm, sm, gm }
	j .LBB0_72
.LBB0_71:                               # %vector.body70
                                        #   in Loop: Header=BB0_72 Depth=2
	addli r12, r3, 4492
	addli.d r[1:2], r[1:2], 8
	addli r11, r3, 4480
	addli r13, r3, 4496
	stores.w r10, 0(r12)
	addli r10, r3, 4488
	addli r12, r3, 4484
	stores.w r15, 0(r11)
	stores.w r5, 0(r13)
	stores.w r8, 0(r10)
	stores.w r9, 0(r12)
	load.d r[9:10], -16(r30)                # 8-byte Folded Reload
	addli r8, r3, 4508
	stores.w r4, 0(r8)
	addli r4, r3, 4504
	addli r3, r3, 4500
	setneq.d r9, r[1:2], r[9:10]
	stores.w r7, 0(r4)
	stores.w r6, 0(r3)
	beq r9, zero, .LBB0_88
.LBB0_72:                               # %vector.body70
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addli r3, r1, 3200
	addli r4, r1, 3201
	addli r6, r1, 3203
	addli r8, r1, 3205
	addli r10, r1, 3207
	addli r9, r1, 3206
	addli r7, r1, 3204
	addli r5, r1, 3202
	loads.bu r15, 0(r3)
	slli r3, r1, 2
	loads.bu r19, 0(r4)
	loads.bu r16, 0(r6)
	loads.bu r13, 0(r8)
	loads.bu r11, 0(r10)
	loads.bu r12, 0(r9)
	loads.bu r14, 0(r7)
	loads.bu r17, 0(r5)
	addli r4, r3, 5516
	addli r6, r3, 5512
	addli r18, r3, 5524
	addli r20, r3, 2184
	addli r5, r3, 5520
	addli r23, r3, 2192
	addli r21, r3, 2196
	loads.w r10, 0(r4)
	loads.w r8, 0(r6)
	addli r4, r3, 5508
	addli r6, r3, 5532
	loads.w r24, 0(r20)
	addli r20, r3, 2204
	loads.w r5, 0(r5)
	loads.w r21, 0(r21)
	loads.w r23, 0(r23)
	loads.w r9, 0(r4)
	loads.w r4, 0(r6)
	addli r6, r3, 5528
	loads.w r7, 0(r6)
	loads.w r6, 0(r18)
	addli r18, r3, 2188
	loads.w r22, 0(r18)
	addli r18, r3, 2180
	loads.w r25, 0(r18)
	loads.w r18, 0(r20)
	addli r20, r3, 2200
	loads.w r20, 0(r20)
	bneq r15, zero, .LBB0_74
# %bb.73:                               # %vector.body70
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r15, r3, 2176
	loads.w r15, 0(r15)
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	beq r19, zero, .LBB0_75
	j .LBB0_76
.LBB0_74:                               #   in Loop: Header=BB0_72 Depth=2
	addli r15, r3, 5504
	loads.w r15, 0(r15)
	bneq r19, zero, .LBB0_76
.LBB0_75:                               # %vector.body70
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r9, r25, 0
.LBB0_76:                               # %vector.body70
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	beq r17, zero, .LBB0_82
# %bb.77:                               # %vector.body70
                                        #   in Loop: Header=BB0_72 Depth=2
	beq r16, zero, .LBB0_83
.LBB0_78:                               # %vector.body70
                                        #   in Loop: Header=BB0_72 Depth=2
	beq r14, zero, .LBB0_84
.LBB0_79:                               # %vector.body70
                                        #   in Loop: Header=BB0_72 Depth=2
	beq r13, zero, .LBB0_85
.LBB0_80:                               # %vector.body70
                                        #   in Loop: Header=BB0_72 Depth=2
	beq r12, zero, .LBB0_86
.LBB0_81:                               # %vector.body70
                                        #   in Loop: Header=BB0_72 Depth=2
	bneq r11, zero, .LBB0_71
	j .LBB0_87
.LBB0_82:                               # %vector.body70
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r8, r24, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	bneq r16, zero, .LBB0_78
.LBB0_83:                               # %vector.body70
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r10, r22, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	bneq r14, zero, .LBB0_79
.LBB0_84:                               # %vector.body70
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r5, r23, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	bneq r13, zero, .LBB0_80
.LBB0_85:                               # %vector.body70
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, r21, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	bneq r12, zero, .LBB0_81
.LBB0_86:                               # %vector.body70
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r7, r20, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	bneq r11, zero, .LBB0_71
.LBB0_87:                               # %vector.body70
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r4, r18, 0
	j .LBB0_71
.LBB0_88:                               # %.critedge6.thread
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	addli r1, zero, 8
	mfence { sm }
	.loc	1 29 11 is_stmt 1               # ieee-multiply.mlir:29:11
	core_id r9
	addli r11, zero, 2
	addli r12, zero, 1
	addli r8, zero, 3
	addli r14, zero, 1024
	lui r22, 1024
	lui r23, 522240
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	xsignal r1, 0
	addli r1, zero, 11
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r1, 0
	loadli.w r10,  -40(r30)                 # 4-byte Folded Reload
	loadli.w r24,  -20(r30)                 # 4-byte Folded Reload
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
	loadli.w r25,  -4(r30)                  # 4-byte Folded Reload
.LBB0_89:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 37 11                         # ieee-multiply.mlir:37:11
	beq r10, zero, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 28
	addli r2, zero, 256
	xwait r1, 0
	addli r1, zero, 39
	xwait r1, 0
	lock zero, r11
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r2, zero, zero, 3
	addli r2, zero, 6528
	loadli.w r3,  -44(r30)                  # 4-byte Folded Reload
	ssreduce r3, r2, 0
	addli r2, zero, 29
	unlock r11
	xsignal r2, 0
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	lock zero, r11
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	ew_cfg r12, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 2048
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r1, 4
	addli r1, zero, 34
	hp_ssmul r3, r3, r3, 0
	unlock r11
	xsignal r1, 0
.LBB0_91:                               # %.critedge8
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r1, 17
	ori r1, r1, 2816
	.loc	1 44 11 is_stmt 1               # ieee-multiply.mlir:44:11
	storeli.w r1, -36(r30)                  # 4-byte Folded Spill
	bneq r9, r11, .LBB0_93
# %bb.92:                               # %.critedge10.thread
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 34
	lui r3, 9
	xwait r1, 0
	addli r1, zero, 41
	xwait r1, 0
	lock zero, zero
	ori r1, r3, 2688
	ds_cfg r11, zero, 0
	ds_cfg r12, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r12, zero, 13
	loadli.w r2,  -44(r30)                  # 4-byte Folded Reload
	shuffle_coa r1, r2, r12, 4
	addli r1, zero, 35
	addli r2, zero, 256
	unlock zero
	xsignal r1, 0
	addli r1, zero, 40
	xsignal r1, 0
	.loc	1 46 11                         # ieee-multiply.mlir:46:11
	addli r1, zero, 29
	xwait r1, 0
	addli r1, zero, 44
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 32
	ds_cfg r11, zero, 0
	ds_cfg r1, zero, 1
	ori r1, r3, 2816
	addli r3, zero, 6528
	ds_cfg r2, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r12, zero, 13
	shuffle_coa r3, r1, r2, 4
	addli r1, zero, 30
	unlock zero
	xsignal r1, 0
	addli r1, zero, 45
	j .LBB0_97
.LBB0_93:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 44 11                         # ieee-multiply.mlir:44:11
	bneq r9, r8, .LBB0_98
# %bb.94:                               #   in Loop: Header=BB0_13 Depth=1
	addli r2, zero, 40
	lui r4, 9
	addli r5, zero, 42
	addli r1, zero, 0
	xwait r2, 0
	addli r2, zero, 43
	ori r3, r4, 2688
	xwait r2, 0
	lock zero, r8
	ori r2, r4, 2560
	rs_cfg zero, r12, r12, 1
	rs_cfg zero, r12, zero, 3
	rs_col r2, r3, r12, 0
	ori r3, r4, 2816
	addli r4, zero, 41
	unlock r8
	xsignal r4, 0
	addli r4, zero, 18
	xsignal r5, 0
	xwait r4, 0
	addli r4, zero, 46
	xwait r5, 0
	lui r5, 784384
	xwait r4, 0
	lock zero, r11
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r5, zero, 0
	ew_cfg zero, zero, zero, 2
	ew_cfg r12, zero, zero, 3
.LBB0_95:                               #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addli r4, r1, 5504
	addli r1, r1, 4
	dsmadd r3, r4, r2, 0
	addli r3, r3, 128
	bneq r1, r14, .LBB0_95
# %bb.96:                               # %.critedge10
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 19
	unlock r11
	addli r2, zero, 256
	xsignal r1, 0
	addli r1, zero, 43
	xsignal r1, 0
	addli r1, zero, 44
	xsignal r1, 0
	.loc	1 46 11                         # ieee-multiply.mlir:46:11
	addli r1, zero, 30
	xwait r1, 0
	addli r1, zero, 50
	xwait r1, 0
	addli r1, zero, 8
	lock zero, r8
	rs_cfg zero, r2, r1, 1
	addli r1, zero, 6528
	rs_cfg zero, r2, zero, 3
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	rs_col r2, r1, r12, 0
	addli r1, zero, 31
	unlock r8
	xsignal r1, 0
	addli r1, zero, 49
	xsignal r1, 0
	addli r1, zero, 47
.LBB0_97:                               # %.thread37
                                        #   in Loop: Header=BB0_13 Depth=1
	xsignal r1, 0
.LBB0_98:                               # %.thread37
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r1, 17
	ori r1, r1, 3840
	.loc	1 46 11                         # ieee-multiply.mlir:46:11
	beq r10, zero, .LBB0_100
# %bb.99:                               #   in Loop: Header=BB0_13 Depth=1
	addli r2, zero, 47
	xwait r2, 0
	addli r2, zero, 52
	xwait r2, 0
	lock zero, r11
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r2, 0
	addli r2, zero, 255
	ew_cfg zero, r2, zero, 2
	ew_cfg r12, zero, zero, 3
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	dsmul r1, r2, r2, 0
	addli r2, zero, 51
	unlock r11
	xsignal r2, 0
.LBB0_100:                              #   in Loop: Header=BB0_13 Depth=1
	.loc	1 47 11 is_stmt 1               # ieee-multiply.mlir:47:11
	bneq r9, r8, .LBB0_119
# %bb.101:                              # %vector.ph60
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r2, zero, 8
	xwait r2, 0
	addli r2, zero, 11
	xwait r2, 0
	addli r2, zero, 21
	xwait r2, 0
	addli r2, zero, 51
	xwait r2, 0
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_103
.LBB0_102:                              # %vector.body61
                                        #   in Loop: Header=BB0_103 Depth=2
	addli r14, r4, 4492
	addli.d r[2:3], r[2:3], 8
	addli r12, r4, 4480
	addli r15, r4, 4496
	stores.w r11, 0(r14)
	addli r11, r4, 4488
	addli r14, r4, 4484
	stores.w r13, 0(r12)
	stores.w r5, 0(r15)
	stores.w r10, 0(r11)
	load.d r[10:11], -16(r30)               # 8-byte Folded Reload
	stores.w r9, 0(r14)
	addli r9, r4, 4508
	stores.w r8, 0(r9)
	addli r8, r4, 4504
	addli r4, r4, 4500
	setneq.d r10, r[2:3], r[10:11]
	stores.w r7, 0(r8)
	stores.w r6, 0(r4)
	beq r10, zero, .LBB0_123
.LBB0_103:                              # %vector.body61
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addli r4, r2, 3200
	addli r5, r2, 3201
	addli r6, r2, 3202
	addli r7, r2, 3203
	addli r8, r2, 3204
	addli r9, r2, 3205
	addli r10, r2, 3206
	addli r11, r2, 3207
	loads.bu r23, 0(r4)
	slli r4, r2, 2
	loads.bu r20, 0(r5)
	loads.bu r19, 0(r6)
	loads.bu r17, 0(r7)
	loads.bu r16, 0(r8)
	loads.bu r15, 0(r9)
	loads.bu r14, 0(r10)
	loads.bu r12, 0(r11)
	addli r18, r4, 2188
	addli r21, r4, 2184
	add.s r13, r4, r1
	addli r25, r4, 2192
	addli r22, r4, 2196
	loads.w r24, 0(r18)
	loads.w r26, 0(r21)
	addli r18, r4, 2180
	addli r21, r4, 2204
	loads.w r11, 12(r13)
	loads.w r10, 8(r13)
	loads.w r9, 4(r13)
	loads.w r8, 28(r13)
	loads.w r7, 24(r13)
	loads.w r6, 20(r13)
	loads.w r5, 16(r13)
	loads.w r22, 0(r22)
	loads.w r25, 0(r25)
	loads.w r28, 0(r18)
	loads.w r18, 0(r21)
	addli r21, r4, 2200
	loads.w r21, 0(r21)
	bneq r23, zero, .LBB0_105
# %bb.104:                              # %vector.body61
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r13, r4, 2176
.LBB0_105:                              # %vector.body61
                                        #   in Loop: Header=BB0_103 Depth=2
	loads.w r13, 0(r13)
	lui r23, 522240
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r20, zero, .LBB0_112
# %bb.106:                              # %vector.body61
                                        #   in Loop: Header=BB0_103 Depth=2
	beq r19, zero, .LBB0_113
.LBB0_107:                              # %vector.body61
                                        #   in Loop: Header=BB0_103 Depth=2
	beq r17, zero, .LBB0_114
.LBB0_108:                              # %vector.body61
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	loadli.w r26,  -24(r30)                 # 4-byte Folded Reload
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r16, zero, .LBB0_115
.LBB0_109:                              # %vector.body61
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	loadli.w r24,  -20(r30)                 # 4-byte Folded Reload
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r15, zero, .LBB0_116
.LBB0_110:                              # %vector.body61
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	loadli.w r25,  -4(r30)                  # 4-byte Folded Reload
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r14, zero, .LBB0_117
.LBB0_111:                              # %vector.body61
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	lui r22, 1024
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r12, zero, .LBB0_102
	j .LBB0_118
.LBB0_112:                              # %vector.body61
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r9, r28, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r19, zero, .LBB0_107
.LBB0_113:                              # %vector.body61
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r10, r26, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r17, zero, .LBB0_108
.LBB0_114:                              # %vector.body61
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r11, r24, 0
	loadli.w r26,  -24(r30)                 # 4-byte Folded Reload
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r16, zero, .LBB0_109
.LBB0_115:                              # %vector.body61
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r5, r25, 0
	loadli.w r24,  -20(r30)                 # 4-byte Folded Reload
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r15, zero, .LBB0_110
.LBB0_116:                              # %vector.body61
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, r22, 0
	loadli.w r25,  -4(r30)                  # 4-byte Folded Reload
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r14, zero, .LBB0_111
.LBB0_117:                              # %vector.body61
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r7, r21, 0
	lui r22, 1024
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r12, zero, .LBB0_102
.LBB0_118:                              # %vector.body61
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r8, r18, 0
	j .LBB0_102
.LBB0_119:                              #   in Loop: Header=BB0_13 Depth=1
	.loc	1 48 11 is_stmt 1               # ieee-multiply.mlir:48:11
	beq r9, r11, .LBB0_124
# %bb.120:                              #   in Loop: Header=BB0_13 Depth=1
	bneq r10, zero, .LBB0_125
.LBB0_121:                              # %.critedge14
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 57 11                         # ieee-multiply.mlir:57:11
	bneq r9, r11, .LBB0_126
.LBB0_122:                              # %.thread38
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 37
	xwait r1, 0
	addli r1, zero, 54
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 256
	ds_cfg r11, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r1, zero, 13
	ds_cfg r12, zero, 14
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -100(r30)                 # 4-byte Folded Reload
	shuffle_batch r2, r1, r12, 4
	addli r1, zero, 38
	unlock zero
	xsignal r1, 0
	addli r1, zero, 53
	j .LBB0_128
.LBB0_123:                              # %.thread41
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	addli r1, zero, 9
	mfence { sm }
	.loc	1 29 11                         # ieee-multiply.mlir:29:11
	core_id r9
	addli r11, zero, 2
	addli r12, zero, 1
	addli r8, zero, 3
	addli r14, zero, 1024
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	xsignal r1, 0
	addli r1, zero, 12
	xsignal r1, 0
	addli r1, zero, 22
	xsignal r1, 0
	addli r1, zero, 52
	xsignal r1, 0
	loadli.w r10,  -40(r30)                 # 4-byte Folded Reload
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	beq r10, zero, .LBB0_121
	j .LBB0_125
.LBB0_124:                              #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 22
	addli r2, zero, 6528
	addli r3, zero, 4480
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
	shuffle_coa r2, r3, r1, 4
	addli r1, zero, 23
	unlock zero
	xsignal r1, 0
	addli r1, zero, 32
	xsignal r1, 0
	beq r10, zero, .LBB0_121
.LBB0_125:                              # %.critedge12
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 32
	addli r2, zero, 256
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	addli r4, zero, 1
	addli r5, zero, 1
	addli r6, zero, 1
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	xwait r1, 0
	addli r1, zero, 35
	xwait r1, 0
	lock zero, r11
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r2, zero, zero, 3
	addli r2, zero, 6528
	loadli.w r3,  -44(r30)                  # 4-byte Folded Reload
	ssreduce r3, r2, 0
	addli r2, zero, 33
	unlock r11
	xsignal r2, 0
	.loc	1 54 11                         # ieee-multiply.mlir:54:11
	lock zero, r11
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	ew_cfg r12, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 2048
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r1, 4
	addli r1, zero, 6
	hp_ssmul r3, r3, r3, 0
	unlock r11
	xsignal r1, 0
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	lock zero, r11
	ew_cfg zero, zero, zero, 1
	loadli.w r1,  -104(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r2, zero, r1, 0
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	addli r2, r3, 0
	addli r1, zero, 36
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	ew_cfg zero, zero, zero, 2
	ew_cfg r12, zero, zero, 3
	dsmadd r3, r3, r3, 0
	unlock r11
	xsignal r1, 0
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	xwait r1, 0
	xfence
	jal _ZN3xpu10math_rsqrtEPU3AS2fS1_iii
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
	loadli.w r10,  -40(r30)                 # 4-byte Folded Reload
	addli r1, zero, 37
	addli r14, zero, 1024
	addli r8, zero, 3
	addli r12, zero, 1
	addli r11, zero, 2
	.loc	1 29 11                         # ieee-multiply.mlir:29:11
	core_id r9
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	xsignal r1, 0
	.loc	1 57 11                         # ieee-multiply.mlir:57:11
	beq r9, r11, .LBB0_122
.LBB0_126:                              #   in Loop: Header=BB0_13 Depth=1
	bneq r9, r8, .LBB0_129
# %bb.127:                              #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 23
	addli r3, zero, 4480
	xwait r1, 0
	addli r1, zero, 53
	xwait r1, 0
	addli r1, zero, 8
	lock zero, r8
	rs_cfg zero, r12, r1, 0
	addli r1, zero, 256
	rs_cfg zero, r12, zero, 2
	loadli.w r2,  -100(r30)                 # 4-byte Folded Reload
	rs_row r3, r2, r1, 0
	addli r1, zero, 24
	unlock r8
	xsignal r1, 0
	addli r1, zero, 54
.LBB0_128:                              #   in Loop: Header=BB0_13 Depth=1
	xsignal r1, 0
.LBB0_129:                              #   in Loop: Header=BB0_13 Depth=1
	.loc	1 58 23                         # ieee-multiply.mlir:58:23
	beq r10, zero, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 38
	xwait r1, 0
	addli r1, zero, 49
	xwait r1, 0
	xfence
	lui r1, 260096
	mfence { lm, sm, gm }
	lock zero, r11
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 255
	ew_cfg zero, r1, zero, 2
	ew_cfg r12, zero, zero, 3
	loadli.w r1,  -44(r30)                  # 4-byte Folded Reload
	loads.w r1, 0(r1)
	ewcoeff_cfg r1, zero, zero, 0
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	hp_ssmul r1, r1, r1, 0
	addli r1, zero, 39
	unlock r11
	xsignal r1, 0
	addli r1, zero, 48
	xsignal r1, 0
.LBB0_131:                              #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 23 is_stmt 0                # ieee-multiply.mlir:0:23
	lui r2, 18
	ori r1, r2, 1792
	ori r2, r2, 2816
	.loc	1 79 25 is_stmt 1               # ieee-multiply.mlir:79:25
	beq r9, r8, .LBB0_163
# %bb.132:                              # %.critedge16
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 81 23                         # ieee-multiply.mlir:81:23
	bneq r10, zero, .LBB0_176
.LBB0_133:                              #   in Loop: Header=BB0_13 Depth=1
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	bneq r9, r8, .LBB0_177
.LBB0_134:                              # %vector.ph
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r3, zero, 25
	xwait r3, 0
	addli r3, zero, 56
	xwait r3, 0
	addli r3, zero, 59
	xwait r3, 0
	xfence
	zext_int2long r[3:4], zero
	mfence { lm, sm, gm }
	j .LBB0_136
.LBB0_135:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	addli.d r[3:4], r[3:4], 4
	addli r6, r5, 4492
	addli r8, r5, 4480
	setneq.d r7, r[3:4], r[17:18]
	stores.w r10, 0(r6)
	addli r6, r5, 4488
	addli r5, r5, 4484
	stores.w r14, 0(r8)
	stores.w r11, 0(r6)
	stores.w r13, 0(r5)
	beq r7, zero, .LBB0_11
.LBB0_136:                              # %vector.body
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r5, r3, 2
	add.s r6, r5, r1
	loads.w r7, 0(r5)
	add.s r17, r5, r2
	loads.w r8, 4(r5)
	loads.w r9, 8(r5)
	loads.w r11, 12(r5)
	loads.w r13, 0(r6)
	loads.w r15, 4(r6)
	loads.w r14, 8(r6)
	loads.w r12, 12(r6)
	loads.w r10, 12(r17)
	loads.w r16, 4(r17)
	.loc	1 89 24                         # ieee-multiply.mlir:89:24
	and r6, r7, r25
	.loc	1 88 24                         # ieee-multiply.mlir:88:24
	and r7, r13, r25
	.loc	1 95 25                         # ieee-multiply.mlir:95:25
	seteq r18, r6, zero
	.loc	1 93 24                         # ieee-multiply.mlir:93:24
	seteq r19, r6, r23
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	loads.w r13, 8(r17)
	.loc	1 92 24                         # ieee-multiply.mlir:92:24
	seteq r20, r7, r23
	.loc	1 94 25                         # ieee-multiply.mlir:94:25
	seteq r21, r7, zero
	.loc	1 99 27                         # ieee-multiply.mlir:99:27
	max.u r6, r7, r6
	setlt.u r6, r23, r6
	.loc	1 96 29                         # ieee-multiply.mlir:96:29
	and r7, r20, r18
	.loc	1 97 29                         # ieee-multiply.mlir:97:29
	and r18, r21, r19
	.loc	1 98 27                         # ieee-multiply.mlir:98:27
	or r7, r7, r18
	.loc	1 100 23                        # ieee-multiply.mlir:100:23
	or r18, r6, r7
	lui r6, 523264
	lui r7, 523264
	.loc	1 102 25                        # ieee-multiply.mlir:102:25
	bneq r18, zero, .LBB0_138
# %bb.137:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	loads.w r7, 0(r17)
.LBB0_138:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	and r15, r15, r25
	and r8, r8, r25
	seteq r17, r15, r23
	seteq r18, r8, zero
	seteq r19, r8, r23
	seteq r20, r15, zero
	max.u r8, r15, r8
	setlt.u r8, r23, r8
	and r15, r17, r18
	and r17, r20, r19
	or r15, r15, r17
	or r15, r8, r15
	lui r8, 523264
	.loc	1 102 25                        # ieee-multiply.mlir:102:25
	bneq r15, zero, .LBB0_140
# %bb.139:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r8, r16, 0
.LBB0_140:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	and r14, r14, r25
	and r9, r9, r25
	seteq r15, r14, r23
	seteq r16, r9, zero
	seteq r17, r9, r23
	seteq r18, r14, zero
	max.u r9, r14, r9
	setlt.u r9, r23, r9
	and r14, r15, r16
	and r15, r18, r17
	or r14, r14, r15
	or r14, r9, r14
	lui r9, 523264
	.loc	1 102 25                        # ieee-multiply.mlir:102:25
	bneq r14, zero, .LBB0_142
# %bb.141:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r9, r13, 0
.LBB0_142:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	and r12, r12, r25
	and r11, r11, r25
	seteq r13, r12, r23
	seteq r14, r11, zero
	seteq r15, r11, r23
	seteq r16, r12, zero
	max.u r11, r12, r11
	setlt.u r11, r23, r11
	and r12, r13, r14
	and r13, r16, r15
	or r12, r12, r13
	or r11, r11, r12
	.loc	1 102 25                        # ieee-multiply.mlir:102:25
	bneq r11, zero, .LBB0_144
# %bb.143:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r6, r10, 0
.LBB0_144:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 106 11 is_stmt 1              # ieee-multiply.mlir:106:11
	and r12, r6, r25
	setlt.u r10, r23, r12
	bneq r10, zero, .LBB0_146
# %bb.145:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r10, r6, 0
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_136 Depth=2
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	or r10, r6, r22
.LBB0_147:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	and r15, r9, r25
	setlt.u r11, r23, r15
	bneq r11, zero, .LBB0_149
# %bb.148:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r11, r9, 0
	j .LBB0_150
.LBB0_149:                              #   in Loop: Header=BB0_136 Depth=2
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	or r11, r9, r22
.LBB0_150:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	and r16, r8, r25
	setlt.u r13, r23, r16
	bneq r13, zero, .LBB0_152
# %bb.151:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r13, r8, 0
	j .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_136 Depth=2
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	or r13, r8, r22
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	and r17, r7, r25
	setlt.u r14, r23, r17
	bneq r14, zero, .LBB0_155
# %bb.154:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r14, r7, 0
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	setlt.u r17, r24, r17
	beq r17, zero, .LBB0_156
	j .LBB0_157
.LBB0_155:                              #   in Loop: Header=BB0_136 Depth=2
	or r14, r7, r22
	setlt.u r17, r24, r17
	bneq r17, zero, .LBB0_157
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r14, r7, 16
	andi r14, r14, 1
	add.s r7, r7, r14
	lui r14, 1048560
	add.s r7, r7, r26
	and r14, r7, r14
.LBB0_157:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	setlt.u r7, r24, r16
	bneq r7, zero, .LBB0_159
# %bb.158:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	lui r8, 1048560
	add.s r7, r7, r26
	and r13, r7, r8
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	setlt.u r7, r24, r15
	load.d r[17:18], -16(r30)               # 8-byte Folded Reload
	bneq r7, zero, .LBB0_161
# %bb.160:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r7, r9, 16
	lui r8, 1048560
	andi r7, r7, 1
	add.s r7, r9, r7
	add.s r7, r7, r26
	and r11, r7, r8
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	setlt.u r7, r24, r12
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
	bneq r7, zero, .LBB0_135
# %bb.162:                              # %vector.body
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r7, r6, 16
	andi r7, r7, 1
	add.s r6, r6, r7
	lui r7, 1048560
	add.s r6, r6, r26
	and r10, r6, r7
	j .LBB0_135
.LBB0_163:                              # %vector.ph53
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 79 25 is_stmt 1               # ieee-multiply.mlir:79:25
	addli r3, zero, 24
	xwait r3, 0
	addli r3, zero, 45
	xwait r3, 0
	addli r3, zero, 48
	xwait r3, 0
	addli r3, zero, 57
	xwait r3, 0
	xfence
	zext_int2long r[3:4], zero
	mfence { lm, sm, gm }
	j .LBB0_165
.LBB0_164:                              # %vector.body54
                                        #   in Loop: Header=BB0_165 Depth=2
	addli.d r[3:4], r[3:4], 4
	add.s r5, r5, r1
	setneq.d r6, r[3:4], r[15:16]
	stores.w r9, 12(r5)
	stores.w r11, 8(r5)
	stores.w r14, 4(r5)
	stores.w r8, 0(r5)
	beq r6, zero, .LBB0_173
.LBB0_165:                              # %vector.body54
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	lui r9, 9
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	slli r5, r3, 7
	ori r6, r9, 2816
	ori r7, r9, 2944
	ori r8, r9, 3072
	ori r9, r9, 3200
	add.s r6, r5, r6
	add.s r7, r5, r7
	add.s r8, r5, r8
	add.s r9, r5, r9
	slli r5, r3, 2
	loads.w r13, 0(r6)
	addli r6, r5, 4480
	loads.w r11, 0(r8)
	loads.w r14, 0(r7)
	loads.w r7, 0(r9)
	addli r9, r5, 4488
	loads.w r8, 0(r6)
	loads.w r12, 0(r9)
	loadli.w r9,  -36(r30)                  # 4-byte Folded Reload
	addli r6, r5, 4484
	loads.w r15, 0(r6)
	addli r6, r5, 4492
	add.s r17, r5, r9
	loads.w r10, 0(r6)
	loads.w r6, 12(r17)
	loads.w r16, 4(r17)
	.loc	1 65 24 is_stmt 1               # ieee-multiply.mlir:65:24
	and r9, r13, r25
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	loads.w r13, 8(r17)
	.loc	1 66 24                         # ieee-multiply.mlir:66:24
	and r8, r8, r25
	.loc	1 69 24                         # ieee-multiply.mlir:69:24
	seteq r18, r9, r23
	.loc	1 71 25                         # ieee-multiply.mlir:71:25
	seteq r21, r9, zero
	.loc	1 72 25                         # ieee-multiply.mlir:72:25
	seteq r19, r8, zero
	.loc	1 70 24                         # ieee-multiply.mlir:70:24
	seteq r20, r8, r23
	.loc	1 76 27                         # ieee-multiply.mlir:76:27
	max.u r8, r9, r8
	setlt.u r8, r23, r8
	.loc	1 73 29                         # ieee-multiply.mlir:73:29
	and r9, r18, r19
	.loc	1 74 29                         # ieee-multiply.mlir:74:29
	and r18, r21, r20
	.loc	1 75 27                         # ieee-multiply.mlir:75:27
	or r9, r9, r18
	.loc	1 77 23                         # ieee-multiply.mlir:77:23
	or r18, r8, r9
	lui r9, 523264
	lui r8, 523264
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r18, zero, .LBB0_167
# %bb.166:                              # %vector.body54
                                        #   in Loop: Header=BB0_165 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	loads.w r8, 0(r17)
.LBB0_167:                              # %vector.body54
                                        #   in Loop: Header=BB0_165 Depth=2
	and r14, r14, r25
	and r15, r15, r25
	seteq r17, r14, r23
	seteq r20, r14, zero
	seteq r18, r15, zero
	seteq r19, r15, r23
	max.u r14, r14, r15
	setlt.u r14, r23, r14
	and r15, r17, r18
	and r17, r20, r19
	or r15, r15, r17
	or r15, r14, r15
	lui r14, 523264
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r15, zero, .LBB0_169
# %bb.168:                              # %vector.body54
                                        #   in Loop: Header=BB0_165 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r14, r16, 0
.LBB0_169:                              # %vector.body54
                                        #   in Loop: Header=BB0_165 Depth=2
	and r11, r11, r25
	and r12, r12, r25
	seteq r15, r11, r23
	seteq r18, r11, zero
	seteq r16, r12, zero
	seteq r17, r12, r23
	max.u r11, r11, r12
	setlt.u r11, r23, r11
	and r12, r15, r16
	and r15, r18, r17
	or r12, r12, r15
	or r12, r11, r12
	lui r11, 523264
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r12, zero, .LBB0_171
# %bb.170:                              # %vector.body54
                                        #   in Loop: Header=BB0_165 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r11, r13, 0
.LBB0_171:                              # %vector.body54
                                        #   in Loop: Header=BB0_165 Depth=2
	and r7, r7, r25
	and r10, r10, r25
	seteq r12, r7, r23
	seteq r16, r7, zero
	seteq r13, r10, zero
	seteq r15, r10, r23
	max.u r7, r7, r10
	setlt.u r7, r23, r7
	and r10, r12, r13
	and r12, r16, r15
	load.d r[15:16], -16(r30)               # 8-byte Folded Reload
	or r10, r10, r12
	or r7, r7, r10
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r7, zero, .LBB0_164
# %bb.172:                              # %vector.body54
                                        #   in Loop: Header=BB0_165 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r9, r6, 0
	j .LBB0_164
.LBB0_173:                              # %middle.block59
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	addli r3, zero, 25
	mfence { sm }
	xsignal r3, 0
	addli r3, zero, 46
	xsignal r3, 0
	addli r3, zero, 50
	xsignal r3, 0
	addli r3, zero, 55
	xsignal r3, 0
	.loc	1 80 11 is_stmt 1               # ieee-multiply.mlir:80:11
	xwait r3, 0
	addli r3, zero, 60
	xwait r3, 0
	xfence
	zext_int2long r[3:4], zero
	mfence { lm, sm, gm }
.LBB0_174:                              # %vector.body47
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r5, r3, 2
	addli.d r[3:4], r[3:4], 8
	add.s r6, r5, r1
	add.s r5, r5, r2
	loads.d r[7:8], 8(r6)
	loads.d r[9:10], 0(r6)
	loads.d r[11:12], 24(r6)
	loads.d r[13:14], 16(r6)
	setneq.d r6, r[3:4], r[15:16]
	stores.d r[7:8], 8(r5)
	stores.d r[9:10], 0(r5)
	stores.d r[11:12], 24(r5)
	stores.d r[13:14], 16(r5)
	bneq r6, zero, .LBB0_174
# %bb.175:                              # %middle.block52
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r3, zero, 56
	mfence { sm }
	.loc	1 29 11                         # ieee-multiply.mlir:29:11
	core_id r9
	addli r11, zero, 2
	addli r12, zero, 1
	addli r8, zero, 3
	addli r14, zero, 1024
	.loc	1 80 11                         # ieee-multiply.mlir:80:11
	xsignal r3, 0
	addli r3, zero, 58
	xsignal r3, 0
	loadli.w r10,  -40(r30)                 # 4-byte Folded Reload
	load.d r[15:16], -32(r30)               # 8-byte Folded Reload
	.loc	1 81 23                         # ieee-multiply.mlir:81:23
	beq r10, zero, .LBB0_133
.LBB0_176:                              #   in Loop: Header=BB0_13 Depth=1
	addli r3, zero, 58
	xwait r3, 0
	lock zero, r11
	lui r3, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r3, 0
	addli r3, zero, 255
	ew_cfg zero, r3, zero, 2
	addli r3, zero, 59
	ew_cfg r12, zero, zero, 3
	dsmul r2, r2, zero, 0
	unlock r11
	xsignal r3, 0
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	beq r9, r8, .LBB0_134
.LBB0_177:                              #   in Loop: Header=BB0_13 Depth=1
	.loc	1 107 5                         # ieee-multiply.mlir:107:5
	bneq r9, zero, .LBB0_12
# %bb.178:                              #   in Loop: Header=BB0_13 Depth=1
	load.d r[1:2], -64(r30)                 # 8-byte Folded Reload
	addli r3, zero, 26
	addli r5, zero, 4544
	xwait r3, 0
	load.d r[3:4], 24(r30)
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
	dma_cfg r1, r14, r4, 5
	addli r1, zero, 27
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	xsignal r1, 0
	j .LBB0_12
.LBB0_179:                              # %._crit_edge
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	addli r1, zero, 3
	beq r9, r1, .LBB0_183
# %bb.180:
	bneq r10, zero, .LBB0_184
.LBB0_181:
	.loc	1 2 3 is_stmt 1                 # ieee-multiply.mlir:2:3
	xsignal zero, 0
	beq r9, zero, .LBB0_185
.LBB0_182:
	.loc	1 2 3 epilogue_begin is_stmt 0  # ieee-multiply.mlir:2:3
	addli sp, sp, 128
	mfence { lm, sm, gm }
	exit
.LBB0_183:
	.loc	1 0 3                           # ieee-multiply.mlir:0:3
	xsignal r1, 0
	beq r10, zero, .LBB0_181
.LBB0_184:
	addli r1, zero, 5
	xsignal r1, 0
	.loc	1 2 3                           # ieee-multiply.mlir:2:3
	xsignal zero, 0
	bneq r9, zero, .LBB0_182
.LBB0_185:
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
	j .LBB0_182
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/native-activation-oxsqdhs0" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
