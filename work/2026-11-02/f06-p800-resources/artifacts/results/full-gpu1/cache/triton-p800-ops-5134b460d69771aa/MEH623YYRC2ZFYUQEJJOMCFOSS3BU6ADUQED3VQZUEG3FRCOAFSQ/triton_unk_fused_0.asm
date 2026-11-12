	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/native-activation-3s4z2dg1" "ieee-multiply.mlir"
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
	addli r1, zero, 16
	addli r2, zero, 27
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 19
	addli r2, zero, 33
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 39
	addli r2, zero, 43
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 41
	addli r2, zero, 46
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 50
	addli r2, zero, 52
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 54
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
	mul.s r1, r1, r3
	addli r3, zero, 1
	addli r2, r2, -1
	div.s r2, r2, r4
	load_param_i r4, 0
	mul.s r16, r2, r4
	fmac.s r2, r2, r4
	min.s r15, r2, r1
	.loc	1 29 11                         # ieee-multiply.mlir:29:11
	bneq r9, r3, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r7, zero, 3
	addli r4, zero, 5
	storeli.w zero, -76(r30)                # 4-byte Folded Spill
	addli r1, zero, 2
	addli r6, zero, 4
	addli r2, zero, 7
	addli r17, zero, 15
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
	addli r5, zero, 28
	addli r8, zero, 29
	addli r9, zero, 30
	addli r10, zero, 31
	addli r11, zero, 64
	addli r12, zero, 128
	addli r13, zero, 512
	.loc	1 29 11                         # ieee-multiply.mlir:29:11
	xwait r7, 0
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 6
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r4, 10
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
	dma_cfg zero, zero, r1, 10
	load.d r[1:2], 16(r30)
	dma_cfg zero, zero, r17, 10
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
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg r3, r3, zero, 0
	dma_cfg r3, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg zero, zero, r11, 3
	dma_cfg r12, zero, r6, 4
	dma_cfg r13, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	lock zero, r6
	dma_cfg r3, r3, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r11, r1, r11, 3
	addli r1, zero, 256
	addli r2, zero, 6
	dma_cfg r12, r11, r6, 4
	dma_cfg r13, r1, r3, 5
	addli r1, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r4, 10
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
	dma_cfg zero, zero, r17, 10
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
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r9, 10
	core_id r9
	dma_cfg zero, zero, r10, 10
	dma_cfg r3, r3, zero, 0
	dma_cfg r3, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg zero, zero, r11, 3
	loadli.w r10,  -76(r30)                 # 4-byte Folded Reload
	dma_cfg r12, zero, r6, 4
	dma_cfg r13, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	xsignal r1, 0
	ble.s r15, r16, .LBB0_190
	j .LBB0_10
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r1, zero, 5
	.loc	1 26 11 is_stmt 1               # ieee-multiply.mlir:26:11
	beq r9, r1, .LBB0_8
# %bb.6:
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r17, zero, 6
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	bneq r9, r17, .LBB0_9
# %bb.7:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r3, zero, 5
	storeli.w zero, -76(r30)                # 4-byte Folded Spill
	addli r4, zero, 1
	addli r1, zero, 2
	addli r13, zero, 4
	addli r2, zero, 9
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
	addli r10, zero, 27
	addli r9, zero, 28
	addli r8, zero, 29
	addli r7, zero, 30
	addli r5, zero, 31
	addli r11, zero, 64
	addli r6, zero, 512
	addli r12, zero, 128
	addli r14, zero, 576
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	xwait r3, 0
	lock zero, r3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 3
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 7
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
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
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg r4, r4, zero, 0
	dma_cfg r4, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r11, 3
	dma_cfg r12, zero, r13, 4
	dma_cfg r6, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	lock zero, r13
	dma_cfg r4, r4, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r14, r1, r11, 3
	addli r1, zero, 256
	dma_cfg r12, r11, r13, 4
	dma_cfg r6, r1, r4, 5
	addli r1, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	lock zero, r3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 3
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 7
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r1, 10
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
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	.loc	1 29 11 is_stmt 1               # ieee-multiply.mlir:29:11
	core_id r9
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg r4, r4, zero, 0
	dma_cfg r4, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r11, 3
	loadli.w r10,  -76(r30)                 # 4-byte Folded Reload
	dma_cfg r12, zero, r13, 4
	dma_cfg r6, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	xsignal r13, 0
	ble.s r15, r16, .LBB0_190
	j .LBB0_10
.LBB0_8:
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r1, zero, 2
	addli r10, zero, 1
	addli r2, zero, 4
	xwait r1, 0
	xwait r2, 0
	ble.s r15, r16, .LBB0_190
	j .LBB0_10
.LBB0_9:
	addli r10, zero, 0
	ble.s r15, r16, .LBB0_190
.LBB0_10:                               # %.lr.ph
	sext_int2long r[1:2], r16
	addli r3, zero, 15
	zext_int2long r[7:8], zero
	addli r11, zero, 2
	addli r5, zero, 1
	addli r12, zero, 3
	addli r6, zero, 512
	lui r28, 1024
	lui r21, 522240
	storeli.w r10, -76(r30)                 # 4-byte Folded Spill
	store.d r[1:2], -72(r30)                # 8-byte Folded Spill
	sext_int2long r[1:2], r15
	store.d r[7:8], -96(r30)                # 8-byte Folded Spill
	store.d r[1:2], -88(r30)                # 8-byte Folded Spill
	lui r1, 524287
	addli r2, zero, 127
	ori r22, r1, 4095
	lui r1, 7
	zext_int2long r[25:26], r2
	ori r1, r1, 4095
	store.d r[25:26], -32(r30)              # 8-byte Folded Spill
	storeli.w r1, -4(r30)                   # 4-byte Folded Spill
	lui r1, 522239
	ori r1, r1, 4095
	storeli.w r1, -20(r30)                  # 4-byte Folded Spill
	lui r1, 239665
	ori r1, r1, 623
	storeli.w r1, -108(r30)                 # 4-byte Folded Spill
	zext_int2long r[1:2], r3
	store.d r[1:2], -104(r30)               # 8-byte Folded Spill
	lui r1, 4
	lui r2, 9
	ori r1, r1, 3328
	storeli.w r1, -80(r30)                  # 4-byte Folded Spill
	lui r1, 8
	ori r1, r1, 3712
	storeli.w r1, -60(r30)                  # 4-byte Folded Spill
	ori r1, r2, 128
	storeli.w r1, -64(r30)                  # 4-byte Folded Spill
	j .LBB0_13
.LBB0_11:                               # %.thread41
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 84 11 is_stmt 1               # ieee-multiply.mlir:84:11
	addli r1, zero, 26
	mfence { sm }
	.loc	1 29 11                         # ieee-multiply.mlir:29:11
	core_id r9
	addli r11, zero, 2
	addli r5, zero, 1
	addli r12, zero, 3
	addli r6, zero, 512
	.loc	1 84 11                         # ieee-multiply.mlir:84:11
	xsignal r1, 0
	addli r1, zero, 57
	xsignal r1, 0
	loadli.w r10,  -76(r30)                 # 4-byte Folded Reload
	load.d r[25:26], -32(r30)               # 8-byte Folded Reload
.LBB0_12:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	load.d r[1:2], -72(r30)                 # 8-byte Folded Reload
	load.d r[3:4], -88(r30)                 # 8-byte Folded Reload
	addli.d r[1:2], r[1:2], 1
	store.d r[1:2], -72(r30)                # 8-byte Folded Spill
	setlt.sl r1, r[1:2], r[3:4]
	beq r1, zero, .LBB0_190
.LBB0_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_87 Depth 2
                                        #     Child Loop BB0_75 Depth 2
                                        #     Child Loop BB0_109 Depth 2
                                        #     Child Loop BB0_134 Depth 2
                                        #     Child Loop BB0_150 Depth 2
	.loc	1 5 14 is_stmt 1                # ieee-multiply.mlir:5:14
	beq r10, zero, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 6
	xwait r1, 0
	lock zero, r11
	lui r1, 274432
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 31
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1024
	ew_cfg r5, zero, zero, 3
	ssaux r1, 0
	.loc	1 6 14                          # ieee-multiply.mlir:6:14
	addli r1, zero, 9
	.loc	1 5 14                          # ieee-multiply.mlir:5:14
	unlock r11
	.loc	1 6 14                          # ieee-multiply.mlir:6:14
	xwait r1, 0
	lock zero, r11
	addli r1, zero, 127
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1152
	ew_cfg r5, zero, zero, 3
	ssaux r1, 0
	addli r1, zero, 7
	unlock r11
	xsignal r1, 0
.LBB0_15:                               # %.critedge4
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 14 is_stmt 0                # ieee-multiply.mlir:0:14
	loadli.w r1,  48(r30)
	load.d r[2:3], -72(r30)                 # 8-byte Folded Reload
	.loc	1 17 10 is_stmt 1               # ieee-multiply.mlir:17:10
	addli r4, zero, 7
	div.s r1, r2, r1
	loadli.w r2,  44(r30)
	div.s r3, r1, r2
	.loc	1 83 11                         # ieee-multiply.mlir:83:11
	sext_int2long r[1:2], r3
	.loc	1 17 10                         # ieee-multiply.mlir:17:10
	sll.d r[7:8], r[1:2], r4
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	store.d r[7:8], -40(r30)                # 8-byte Folded Spill
	bneq r9, r12, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=1
	addli r4, zero, 12
	xwait r4, 0
	xfence
	setlti r4, r3, 16
	mfence { lm, sm, gm }
	load.d r[5:6], -96(r30)                 # 8-byte Folded Reload
.LBB0_17:                               #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	setlt.ul r7, r[5:6], r[25:26]
	addli r8, r5, 1664
	addli.d r[5:6], r[5:6], 1
	stores.b r4, 0(r8)
	bneq r7, zero, .LBB0_17
# %bb.18:                               # %.thread39
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	load.d r[4:5], -104(r30)                # 8-byte Folded Reload
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	mfence { sm }
	addli r6, zero, 512
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	min.sl r[4:5], r[1:2], r[4:5]
	addli.d r[4:5], r[4:5], 1
	max.sl r[1:2], r[4:5], r[1:2]
	addli r5, zero, 1
	sub.s r13, r1, r3
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	addli r1, zero, 10
	j .LBB0_23
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	load.d r[3:4], -104(r30)                # 8-byte Folded Reload
	min.sl r[3:4], r[1:2], r[3:4]
	addli.d r[3:4], r[3:4], 1
	max.sl r[3:4], r[3:4], r[1:2]
	sub.sl r[13:14], r[3:4], r[1:2]
	bneq r9, r5, .LBB0_24
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	zext_int2long r[1:2], zero
	addli r4, zero, 16
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	setlt.sl r1, r[1:2], r[13:14]
	xwait r4, 0
	bneq r1, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_13 Depth=1
	lock zero, r11
	addli r1, zero, 127
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1792
	ew_cfg r5, zero, zero, 3
	ssaux r1, 0
	unlock r11
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=1
	load.d r[1:2], -40(r30)                 # 8-byte Folded Reload
	load.d r[6:7], 0(r30)
	addli r8, zero, 13
	addli r3, zero, 4
	addli r27, zero, 8
	addli r28, zero, 11
	addli r23, zero, 17
	addli r15, zero, 18
	addli r18, zero, 19
	addli r20, zero, 20
	addli r24, zero, 27
	addli r17, zero, 1792
	addli r19, zero, 128
	addli r16, zero, 512
	xsignal r8, 0
	xwait r8, 0
	sll.d r[1:2], r[1:2], r5
	add.ul r[1:2], r[6:7], r[1:2]
	addli r7, zero, 5
	addli r6, zero, 6
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 7
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 9
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 12
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 14
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 15
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 1856
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 21
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 22
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 23
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 24
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 25
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 26
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 28
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 29
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 30
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 31
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 64
	dma_cfg r5, r5, zero, 0
	dma_cfg r5, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r17, zero, r4, 3
	dma_cfg r19, zero, r3, 4
	dma_cfg r16, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	lock zero, r3
	dma_cfg r5, r5, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r6, r1, r4, 3
	addli r1, zero, 256
	addli r2, zero, 15
	addli r6, zero, 512
	dma_cfg r19, r4, r3, 4
	dma_cfg r16, r1, r13, 5
	addli r1, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 7
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r28, 10
	lui r28, 1024
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 21
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r20, 10
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
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 29
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	dma_cfg r5, r5, zero, 0
	dma_cfg r5, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r17, zero, r4, 3
	dma_cfg r19, zero, r3, 4
	dma_cfg r6, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
.LBB0_23:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 0                           # ieee-multiply.mlir:0:0
	xsignal r1, 0
.LBB0_24:                               #   in Loop: Header=BB0_13 Depth=1
	store.d r[13:14], -48(r30)              # 8-byte Folded Spill
	.loc	1 33 11 is_stmt 1               # ieee-multiply.mlir:33:11
	beq r10, zero, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 14
	xwait r1, 0
	lock zero, r11
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 127
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1792
	ew_cfg r5, zero, zero, 3
	dsmadd r1, r1, r6, 0
	addli r1, zero, 15
	unlock r11
	xsignal r1, 0
.LBB0_26:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r1, zero, 128
	zext_int2long r[1:2], r1
	.loc	1 34 11 is_stmt 1               # ieee-multiply.mlir:34:11
	store.d r[1:2], -16(r30)                # 8-byte Folded Spill
	bneq r9, r12, .LBB0_69
# %bb.27:                               # %vector.ph69
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 15
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	load.d r[1:2], -96(r30)                 # 8-byte Folded Reload
	j .LBB0_29
.LBB0_28:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	addli r7, r3, 2828
	addli r5, r3, 2824
	addli.d r[1:2], r[1:2], 8
	addli r4, r3, 2816
	addli r10, r3, 2832
	stores.w r19, 0(r7)
	addli r7, r3, 2820
	stores.w r6, 0(r5)
	addli r5, r3, 2844
	stores.w r8, 0(r4)
	addli r4, r3, 2840
	addli r3, r3, 2836
	stores.w r18, 0(r10)
	stores.w r9, 0(r7)
	load.d r[6:7], -16(r30)                 # 8-byte Folded Reload
	stores.w r11, 0(r5)
	stores.w r13, 0(r4)
	stores.w r15, 0(r3)
	setneq.d r6, r[1:2], r[6:7]
	beq r6, zero, .LBB0_85
.LBB0_29:                               # %vector.body70
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r3, r1, 2
	loads.w r14, 1804(r3)
	loads.w r26, 1792(r3)
	loads.w r23, 1796(r3)
	loads.w r19, 1800(r3)
	loads.w r12, 1808(r3)
	loads.w r10, 1812(r3)
	loads.w r7, 1816(r3)
	loads.w r4, 1820(r3)
	and r17, r14, r22
	setlt.u r5, r21, r17
	bneq r5, zero, .LBB0_31
# %bb.30:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	storeli.w r14, -24(r30)                 # 4-byte Folded Spill
	j .LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_29 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r5, r14, r28
	storeli.w r5, -24(r30)                  # 4-byte Folded Spill
.LBB0_32:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	and r27, r19, r22
	setlt.u r6, r21, r27
	bneq r6, zero, .LBB0_34
# %bb.33:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, r19, 0
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_29 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r6, r19, r28
.LBB0_35:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	and r20, r23, r22
	setlt.u r8, r21, r20
	bneq r8, zero, .LBB0_37
# %bb.36:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r9, r23, 0
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_29 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r9, r23, r28
.LBB0_38:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	and r24, r26, r22
	setlt.u r8, r21, r24
	bneq r8, zero, .LBB0_40
# %bb.39:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r8, r26, 0
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_29 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r8, r26, r28
.LBB0_41:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	and r16, r4, r22
	setlt.u r11, r21, r16
	bneq r11, zero, .LBB0_43
# %bb.42:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r11, r4, 0
	j .LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_29 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r11, r4, r28
.LBB0_44:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	and r25, r7, r22
	lui r5, 1024
	setlt.u r13, r21, r25
	bneq r13, zero, .LBB0_46
# %bb.45:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r13, r7, 0
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_29 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r13, r7, r28
.LBB0_47:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	and r28, r10, r22
	lui r18, 522240
	setlt.u r15, r21, r28
	bneq r15, zero, .LBB0_49
# %bb.48:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r15, r10, 0
	j .LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_29 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r15, r10, r5
.LBB0_50:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	and r21, r12, r22
	setlt.u r18, r18, r21
	bneq r18, zero, .LBB0_52
# %bb.51:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r18, r12, 0
	j .LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_29 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r18, r12, r5
.LBB0_53:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	loadli.w r5,  -20(r30)                  # 4-byte Folded Reload
	setlt.u r24, r5, r24
	bneq r24, zero, .LBB0_55
# %bb.54:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r8, r26, 16
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	andi r8, r8, 1
	add.s r8, r26, r8
	add.s r8, r8, r5
	lui r5, 1048560
	and r8, r8, r5
.LBB0_55:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	loadli.w r24,  -20(r30)                 # 4-byte Folded Reload
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r20, r24, r20
	bneq r20, zero, .LBB0_57
# %bb.56:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r9, r23, 16
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	andi r9, r9, 1
	add.s r9, r23, r9
	add.s r9, r9, r5
	lui r5, 1048560
	and r9, r9, r5
.LBB0_57:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r20, r24, r27
	bneq r20, zero, .LBB0_59
# %bb.58:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r6, r19, 16
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r5
	lui r5, 1048560
	and r6, r6, r5
.LBB0_59:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r17, r24, r17
	loadli.w r19,  -24(r30)                 # 4-byte Folded Reload
	bneq r17, zero, .LBB0_61
# %bb.60:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r5, r14, 16
	andi r5, r5, 1
	add.s r5, r14, r5
	loadli.w r14,  -4(r30)                  # 4-byte Folded Reload
	add.s r5, r5, r14
	lui r14, 1048560
	and r19, r5, r14
.LBB0_61:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r14, r24, r21
	bneq r14, zero, .LBB0_63
# %bb.62:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r14, r12, 16
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	andi r14, r14, 1
	add.s r12, r12, r14
	add.s r12, r12, r5
	lui r5, 1048560
	and r18, r12, r5
.LBB0_63:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r12, r24, r28
	lui r21, 522240
	bneq r12, zero, .LBB0_65
# %bb.64:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r12, r10, 16
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	andi r12, r12, 1
	add.s r10, r10, r12
	add.s r10, r10, r5
	lui r5, 1048560
	and r15, r10, r5
.LBB0_65:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r10, r24, r25
	lui r28, 1024
	bneq r10, zero, .LBB0_67
# %bb.66:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r10, r7, 16
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	andi r10, r10, 1
	add.s r7, r7, r10
	add.s r7, r7, r5
	lui r5, 1048560
	and r13, r7, r5
.LBB0_67:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r7, r24, r16
	bneq r7, zero, .LBB0_28
# %bb.68:                               # %vector.body70
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r7, r4, 16
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	andi r7, r7, 1
	add.s r4, r4, r7
	add.s r4, r4, r5
	lui r5, 1048560
	and r11, r4, r5
	j .LBB0_28
.LBB0_69:                               # %.critedge6
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 37 11 is_stmt 1               # ieee-multiply.mlir:37:11
	bneq r9, r11, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 20
	addli r2, zero, 3328
	addli r3, zero, 2304
	xwait r1, 0
	addli r1, zero, 33
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 128
	ds_cfg r11, zero, 0
	ds_cfg r5, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r5, zero, 13
	shuffle_coa r2, r3, r1, 4
	addli r1, zero, 21
	unlock zero
	xsignal r1, 0
	addli r1, zero, 28
	xsignal r1, 0
	beq r10, zero, .LBB0_104
	j .LBB0_72
.LBB0_71:                               #   in Loop: Header=BB0_13 Depth=1
	beq r10, zero, .LBB0_104
.LBB0_72:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 28
	addli r2, zero, 128
	xwait r1, 0
	addli r1, zero, 39
	xwait r1, 0
	lock zero, r11
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r2, zero, zero, 3
	addli r2, zero, 3328
	loadli.w r3,  -80(r30)                  # 4-byte Folded Reload
	ssreduce r3, r2, 0
	addli r2, zero, 29
	unlock r11
	xsignal r2, 0
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	lock zero, r11
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	ew_cfg r5, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1024
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r1, 4
	addli r1, zero, 34
	hp_ssmul r3, r3, r3, 0
	unlock r11
	xsignal r1, 0
	.loc	1 44 11                         # ieee-multiply.mlir:44:11
	beq r9, r11, .LBB0_105
.LBB0_73:                               #   in Loop: Header=BB0_13 Depth=1
	bneq r9, r12, .LBB0_77
# %bb.74:                               #   in Loop: Header=BB0_13 Depth=1
	addli r2, zero, 40
	lui r4, 4
	addli r7, zero, 42
	addli r1, zero, 0
	xwait r2, 0
	addli r2, zero, 43
	ori r3, r4, 3584
	xwait r2, 0
	lock zero, r12
	ori r2, r4, 3456
	rs_cfg zero, r5, r5, 1
	rs_cfg zero, r5, zero, 3
	rs_col r2, r3, r5, 0
	ori r3, r4, 3712
	addli r4, zero, 41
	unlock r12
	xsignal r4, 0
	addli r4, zero, 18
	xsignal r7, 0
	xwait r4, 0
	addli r4, zero, 46
	xwait r7, 0
	lui r7, 784384
	xwait r4, 0
	lock zero, r11
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r7, zero, 0
	ew_cfg zero, zero, zero, 2
	ew_cfg r5, zero, zero, 3
.LBB0_75:                               #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addli r4, r1, 2816
	addli r1, r1, 4
	dsmadd r3, r4, r2, 0
	addli r3, r3, 128
	bneq r1, r6, .LBB0_75
# %bb.76:                               # %.critedge10
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 19
	unlock r11
	.loc	1 46 11                         # ieee-multiply.mlir:46:11
	addli r2, zero, 4
	.loc	1 44 11                         # ieee-multiply.mlir:44:11
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
	addli r1, zero, 128
	lock zero, r12
	rs_cfg zero, r1, r2, 1
	rs_cfg zero, r1, zero, 3
	addli r1, zero, 3328
	loadli.w r2,  -60(r30)                  # 4-byte Folded Reload
	rs_col r2, r1, r5, 0
	addli r1, zero, 31
	unlock r12
	xsignal r1, 0
	addli r1, zero, 49
	xsignal r1, 0
	addli r1, zero, 47
	xsignal r1, 0
	beq r10, zero, .LBB0_106
	j .LBB0_78
.LBB0_77:                               # %.thread36
                                        #   in Loop: Header=BB0_13 Depth=1
	beq r10, zero, .LBB0_106
.LBB0_78:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 47
	xwait r1, 0
	addli r1, zero, 52
	xwait r1, 0
	lock zero, r11
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 127
	ew_cfg zero, r1, zero, 2
	ew_cfg r5, zero, zero, 3
	loadli.w r1,  -60(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -64(r30)                  # 4-byte Folded Reload
	dsmul r2, r1, r1, 0
	addli r1, zero, 51
	unlock r11
	xsignal r1, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r9, r12, .LBB0_107
.LBB0_79:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	bneq r9, r11, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 22
	addli r2, zero, 3328
	addli r3, zero, 2304
	xwait r1, 0
	addli r1, zero, 31
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 128
	ds_cfg r11, zero, 0
	ds_cfg r5, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r5, zero, 13
	shuffle_coa r2, r3, r1, 4
	addli r1, zero, 23
	unlock zero
	xsignal r1, 0
	addli r1, zero, 32
	xsignal r1, 0
	beq r10, zero, .LBB0_126
	j .LBB0_82
.LBB0_81:                               #   in Loop: Header=BB0_13 Depth=1
	beq r10, zero, .LBB0_126
.LBB0_82:                               # %.critedge12
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 32
	addli r2, zero, 128
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	addli r4, zero, 1
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
	addli r2, zero, 3328
	loadli.w r3,  -80(r30)                  # 4-byte Folded Reload
	ssreduce r3, r2, 0
	addli r2, zero, 33
	unlock r11
	xsignal r2, 0
	.loc	1 54 11                         # ieee-multiply.mlir:54:11
	lock zero, r11
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	ew_cfg r5, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1024
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r1, 4
	addli r1, zero, 6
	hp_ssmul r3, r3, r3, 0
	unlock r11
	xsignal r1, 0
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	lock zero, r11
	ew_cfg zero, zero, zero, 1
	loadli.w r1,  -108(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r2, zero, r1, 0
	addli r1, zero, 36
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	addli r2, r3, 0
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	ew_cfg zero, zero, zero, 2
	ew_cfg r5, zero, zero, 3
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	addli r5, zero, 1
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	dsmadd r3, r3, r3, 0
	unlock r11
	xsignal r1, 0
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	xwait r1, 0
	xfence
	jal _ZN3xpu10math_rsqrtEPU3AS2fS1_iii
	load.d r[25:26], -32(r30)               # 8-byte Folded Reload
	loadli.w r10,  -76(r30)                 # 4-byte Folded Reload
	addli r1, zero, 37
	addli r6, zero, 512
	addli r12, zero, 3
	addli r5, zero, 1
	addli r11, zero, 2
	.loc	1 29 11                         # ieee-multiply.mlir:29:11
	core_id r9
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	xsignal r1, 0
	.loc	1 57 11                         # ieee-multiply.mlir:57:11
	beq r9, r11, .LBB0_127
.LBB0_83:                               #   in Loop: Header=BB0_13 Depth=1
	bneq r9, r12, .LBB0_129
# %bb.84:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 23
	addli r2, zero, 128
	addli r3, zero, 2304
	xwait r1, 0
	addli r1, zero, 53
	xwait r1, 0
	addli r1, zero, 4
	lock zero, r12
	rs_cfg zero, r5, r1, 0
	lui r1, 9
	rs_cfg zero, r5, zero, 2
	ori r1, r1, 640
	rs_row r3, r1, r2, 0
	addli r1, zero, 24
	unlock r12
	xsignal r1, 0
	addli r1, zero, 54
	j .LBB0_128
.LBB0_85:                               # %middle.block75
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
	j .LBB0_87
.LBB0_86:                               # %vector.body61
                                        #   in Loop: Header=BB0_87 Depth=2
	addli r12, r3, 2316
	addli.d r[1:2], r[1:2], 8
	addli r11, r3, 2304
	addli r14, r3, 2320
	stores.w r10, 0(r12)
	addli r10, r3, 2312
	addli r12, r3, 2308
	stores.w r13, 0(r11)
	stores.w r5, 0(r14)
	stores.w r8, 0(r10)
	stores.w r9, 0(r12)
	load.d r[9:10], -16(r30)                # 8-byte Folded Reload
	addli r8, r3, 2332
	stores.w r4, 0(r8)
	addli r4, r3, 2328
	addli r3, r3, 2324
	setneq.d r9, r[1:2], r[9:10]
	stores.w r7, 0(r4)
	stores.w r6, 0(r3)
	beq r9, zero, .LBB0_103
.LBB0_87:                               # %vector.body61
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r3, r1, 2
	loads.bu r13, 1664(r1)
	loads.bu r20, 1665(r1)
	loads.bu r18, 1666(r1)
	loads.bu r16, 1667(r1)
	loads.bu r15, 1668(r1)
	loads.bu r14, 1669(r1)
	loads.bu r12, 1670(r1)
	loads.bu r11, 1671(r1)
	addli r4, r3, 2828
	addli r6, r3, 2824
	addli r5, r3, 2832
	addli r17, r3, 2836
	loads.w r23, 1164(r3)
	loads.w r25, 1160(r3)
	loads.w r26, 1156(r3)
	loads.w r19, 1176(r3)
	loads.w r21, 1172(r3)
	loads.w r24, 1168(r3)
	loads.w r10, 0(r4)
	loads.w r8, 0(r6)
	addli r4, r3, 2820
	addli r6, r3, 2844
	loads.w r5, 0(r5)
	loads.w r9, 0(r4)
	loads.w r4, 0(r6)
	addli r6, r3, 2840
	loads.w r7, 0(r6)
	loads.w r6, 0(r17)
	loads.w r17, 1180(r3)
	bneq r13, zero, .LBB0_89
# %bb.88:                               # %vector.body61
                                        #   in Loop: Header=BB0_87 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	loads.w r13, 1152(r3)
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	beq r20, zero, .LBB0_90
	j .LBB0_91
.LBB0_89:                               #   in Loop: Header=BB0_87 Depth=2
	addli r13, r3, 2816
	loads.w r13, 0(r13)
	bneq r20, zero, .LBB0_91
.LBB0_90:                               # %vector.body61
                                        #   in Loop: Header=BB0_87 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r9, r26, 0
.LBB0_91:                               # %vector.body61
                                        #   in Loop: Header=BB0_87 Depth=2
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	bneq r18, zero, .LBB0_97
# %bb.92:                               # %vector.body61
                                        #   in Loop: Header=BB0_87 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r8, r25, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	beq r16, zero, .LBB0_98
.LBB0_93:                               # %vector.body61
                                        #   in Loop: Header=BB0_87 Depth=2
	bneq r15, zero, .LBB0_99
.LBB0_94:                               # %vector.body61
                                        #   in Loop: Header=BB0_87 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r5, r24, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	beq r14, zero, .LBB0_100
.LBB0_95:                               # %vector.body61
                                        #   in Loop: Header=BB0_87 Depth=2
	bneq r12, zero, .LBB0_101
.LBB0_96:                               # %vector.body61
                                        #   in Loop: Header=BB0_87 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r7, r19, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	bneq r11, zero, .LBB0_86
	j .LBB0_102
.LBB0_97:                               # %vector.body61
                                        #   in Loop: Header=BB0_87 Depth=2
	bneq r16, zero, .LBB0_93
.LBB0_98:                               # %vector.body61
                                        #   in Loop: Header=BB0_87 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r10, r23, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	beq r15, zero, .LBB0_94
.LBB0_99:                               # %vector.body61
                                        #   in Loop: Header=BB0_87 Depth=2
	bneq r14, zero, .LBB0_95
.LBB0_100:                              # %vector.body61
                                        #   in Loop: Header=BB0_87 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, r21, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	beq r12, zero, .LBB0_96
.LBB0_101:                              # %vector.body61
                                        #   in Loop: Header=BB0_87 Depth=2
	bneq r11, zero, .LBB0_86
.LBB0_102:                              # %vector.body61
                                        #   in Loop: Header=BB0_87 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r4, r17, 0
	j .LBB0_86
.LBB0_103:                              # %.critedge6.thread
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	addli r1, zero, 8
	mfence { sm }
	.loc	1 29 11 is_stmt 1               # ieee-multiply.mlir:29:11
	core_id r9
	addli r11, zero, 2
	addli r5, zero, 1
	addli r12, zero, 3
	addli r6, zero, 512
	lui r21, 522240
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	xsignal r1, 0
	addli r1, zero, 11
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r1, 0
	loadli.w r10,  -76(r30)                 # 4-byte Folded Reload
	load.d r[25:26], -32(r30)               # 8-byte Folded Reload
	.loc	1 37 11                         # ieee-multiply.mlir:37:11
	bneq r10, zero, .LBB0_72
.LBB0_104:                              # %.critedge8
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 44 11                         # ieee-multiply.mlir:44:11
	bneq r9, r11, .LBB0_73
.LBB0_105:                              # %.critedge10.thread
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 34
	lui r3, 4
	xwait r1, 0
	addli r1, zero, 41
	xwait r1, 0
	lock zero, zero
	ori r1, r3, 3584
	ds_cfg r11, zero, 0
	ds_cfg r5, zero, 1
	ds_cfg r5, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r5, zero, 13
	loadli.w r2,  -80(r30)                  # 4-byte Folded Reload
	shuffle_coa r1, r2, r5, 4
	addli r1, zero, 35
	addli r2, zero, 128
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
	ori r1, r3, 3712
	addli r3, zero, 3328
	ds_cfg r2, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r5, zero, 13
	shuffle_coa r3, r1, r2, 4
	addli r1, zero, 30
	unlock zero
	xsignal r1, 0
	addli r1, zero, 45
	xsignal r1, 0
	bneq r10, zero, .LBB0_78
.LBB0_106:                              #   in Loop: Header=BB0_13 Depth=1
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r9, r12, .LBB0_79
.LBB0_107:                              # %vector.ph51
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 8
	xwait r1, 0
	addli r1, zero, 11
	xwait r1, 0
	addli r1, zero, 21
	xwait r1, 0
	addli r1, zero, 51
	xwait r1, 0
	xfence
	zext_int2long r[1:2], zero
	mfence { lm, sm, gm }
	j .LBB0_109
.LBB0_108:                              # %vector.body52
                                        #   in Loop: Header=BB0_109 Depth=2
	addli r11, r3, 2316
	addli.d r[1:2], r[1:2], 8
	addli r9, r3, 2304
	addli r13, r3, 2320
	stores.w r10, 0(r11)
	addli r10, r3, 2312
	addli r11, r3, 2308
	stores.w r15, 0(r9)
	stores.w r5, 0(r13)
	stores.w r8, 0(r10)
	stores.w r12, 0(r11)
	load.d r[10:11], -16(r30)               # 8-byte Folded Reload
	addli r8, r3, 2332
	stores.w r4, 0(r8)
	addli r4, r3, 2328
	addli r3, r3, 2324
	setneq.d r10, r[1:2], r[10:11]
	stores.w r7, 0(r4)
	stores.w r6, 0(r3)
	beq r10, zero, .LBB0_125
.LBB0_109:                              # %vector.body52
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r7, 9
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	slli r3, r1, 2
	loads.bu r15, 1664(r1)
	loads.bu r18, 1665(r1)
	loads.bu r17, 1666(r1)
	loads.bu r16, 1667(r1)
	loads.bu r14, 1668(r1)
	loads.bu r13, 1669(r1)
	loads.bu r11, 1670(r1)
	loads.bu r9, 1671(r1)
	ori r4, r7, 144
	ori r6, r7, 136
	loads.w r23, 1164(r3)
	loads.w r25, 1160(r3)
	loads.w r26, 1156(r3)
	loads.w r20, 1176(r3)
	loads.w r21, 1172(r3)
	loads.w r24, 1168(r3)
	add.s r5, r3, r4
	ori r4, r7, 140
	add.s r6, r3, r6
	add.s r4, r3, r4
	loads.w r8, 0(r6)
	ori r6, r7, 156
	loads.w r5, 0(r5)
	loads.w r10, 0(r4)
	ori r4, r7, 132
	add.s r6, r3, r6
	add.s r4, r3, r4
	loads.w r12, 0(r4)
	loads.w r4, 0(r6)
	ori r6, r7, 152
	ori r7, r7, 148
	add.s r6, r3, r6
	add.s r19, r3, r7
	loads.w r7, 0(r6)
	loads.w r6, 0(r19)
	loads.w r19, 1180(r3)
	bneq r15, zero, .LBB0_111
# %bb.110:                              # %vector.body52
                                        #   in Loop: Header=BB0_109 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	loads.w r15, 1152(r3)
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r18, zero, .LBB0_112
	j .LBB0_113
.LBB0_111:                              #   in Loop: Header=BB0_109 Depth=2
	loadli.w r15,  -64(r30)                 # 4-byte Folded Reload
	add.s r15, r3, r15
	loads.w r15, 0(r15)
	bneq r18, zero, .LBB0_113
.LBB0_112:                              # %vector.body52
                                        #   in Loop: Header=BB0_109 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r12, r26, 0
.LBB0_113:                              # %vector.body52
                                        #   in Loop: Header=BB0_109 Depth=2
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r17, zero, .LBB0_119
# %bb.114:                              # %vector.body52
                                        #   in Loop: Header=BB0_109 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r8, r25, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r16, zero, .LBB0_120
.LBB0_115:                              # %vector.body52
                                        #   in Loop: Header=BB0_109 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	load.d r[25:26], -32(r30)               # 8-byte Folded Reload
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r14, zero, .LBB0_121
.LBB0_116:                              # %vector.body52
                                        #   in Loop: Header=BB0_109 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r5, r24, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r13, zero, .LBB0_122
.LBB0_117:                              # %vector.body52
                                        #   in Loop: Header=BB0_109 Depth=2
	bneq r11, zero, .LBB0_123
.LBB0_118:                              # %vector.body52
                                        #   in Loop: Header=BB0_109 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r7, r20, 0
	lui r21, 522240
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r9, zero, .LBB0_108
	j .LBB0_124
.LBB0_119:                              # %vector.body52
                                        #   in Loop: Header=BB0_109 Depth=2
	bneq r16, zero, .LBB0_115
.LBB0_120:                              # %vector.body52
                                        #   in Loop: Header=BB0_109 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r10, r23, 0
	load.d r[25:26], -32(r30)               # 8-byte Folded Reload
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r14, zero, .LBB0_116
.LBB0_121:                              # %vector.body52
                                        #   in Loop: Header=BB0_109 Depth=2
	bneq r13, zero, .LBB0_117
.LBB0_122:                              # %vector.body52
                                        #   in Loop: Header=BB0_109 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, r21, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r11, zero, .LBB0_118
.LBB0_123:                              # %vector.body52
                                        #   in Loop: Header=BB0_109 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	lui r21, 522240
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r9, zero, .LBB0_108
.LBB0_124:                              # %vector.body52
                                        #   in Loop: Header=BB0_109 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r4, r19, 0
	j .LBB0_108
.LBB0_125:                              # %.thread40
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	addli r1, zero, 9
	mfence { sm }
	.loc	1 29 11 is_stmt 1               # ieee-multiply.mlir:29:11
	core_id r9
	addli r11, zero, 2
	addli r5, zero, 1
	addli r12, zero, 3
	addli r6, zero, 512
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	xsignal r1, 0
	addli r1, zero, 12
	xsignal r1, 0
	addli r1, zero, 22
	xsignal r1, 0
	addli r1, zero, 52
	xsignal r1, 0
	loadli.w r10,  -76(r30)                 # 4-byte Folded Reload
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	bneq r10, zero, .LBB0_82
.LBB0_126:                              # %.critedge14
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 57 11                         # ieee-multiply.mlir:57:11
	bneq r9, r11, .LBB0_83
.LBB0_127:                              # %.thread37
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 37
	xwait r1, 0
	addli r1, zero, 54
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 128
	ds_cfg r11, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r1, zero, 13
	lui r1, 9
	ds_cfg r5, zero, 14
	loadli.w r2,  -80(r30)                  # 4-byte Folded Reload
	ori r1, r1, 640
	shuffle_batch r1, r2, r5, 4
	addli r1, zero, 38
	unlock zero
	xsignal r1, 0
	addli r1, zero, 53
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
	addli r1, zero, 127
	ew_cfg zero, r1, zero, 2
	ew_cfg r5, zero, zero, 3
	loadli.w r1,  -80(r30)                  # 4-byte Folded Reload
	loads.w r1, 0(r1)
	ewcoeff_cfg r1, zero, zero, 0
	loadli.w r1,  -60(r30)                  # 4-byte Folded Reload
	hp_ssmul r1, r1, r1, 0
	addli r1, zero, 39
	unlock r11
	xsignal r1, 0
	addli r1, zero, 48
	xsignal r1, 0
.LBB0_131:                              #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 23 is_stmt 0                # ieee-multiply.mlir:0:23
	lui r1, 9
	ori r19, r1, 1152
	ori r20, r1, 1164
	ori r23, r1, 1160
	ori r24, r1, 1156
	.loc	1 80 11 is_stmt 1               # ieee-multiply.mlir:80:11
	bneq r9, r12, .LBB0_142
# %bb.132:                              # %vector.ph44
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 24
	zext_int2long r[5:6], zero
	xwait r1, 0
	addli r1, zero, 45
	xwait r1, 0
	addli r1, zero, 48
	xwait r1, 0
	addli r1, zero, 57
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	j .LBB0_134
.LBB0_133:                              # %vector.body45
                                        #   in Loop: Header=BB0_134 Depth=2
	load.d r[12:13], -16(r30)               # 8-byte Folded Reload
	addli.d r[5:6], r[5:6], 4
	add.s r2, r7, r20
	add.s r8, r7, r19
	stores.w r9, 0(r2)
	add.s r2, r7, r23
	add.s r7, r7, r24
	stores.w r4, 0(r8)
	setneq.d r3, r[5:6], r[12:13]
	stores.w r1, 0(r2)
	stores.w r11, 0(r7)
	beq r3, zero, .LBB0_146
.LBB0_134:                              # %vector.body45
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r4, 4
	.loc	1 80 11                         # ieee-multiply.mlir:80:11
	slli r1, r5, 7
	lui r7, 5
	lui r14, 8
	ori r2, r4, 3712
	ori r3, r4, 3840
	ori r4, r4, 3968
	add.s r8, r1, r7
	slli r7, r5, 2
	ori r12, r14, 3724
	add.s r2, r1, r2
	add.s r4, r1, r4
	add.s r3, r1, r3
	loads.w r9, 0(r2)
	addli r2, r7, 2304
	loads.w r1, 0(r4)
	loads.w r11, 0(r3)
	loads.w r3, 0(r8)
	addli r8, r7, 2312
	loads.w r4, 0(r2)
	addli r2, r7, 2308
	loads.w r10, 0(r8)
	loads.w r13, 0(r2)
	addli r2, r7, 2316
	loads.w r8, 0(r2)
	add.s r2, r7, r12
	ori r12, r14, 3720
	ori r14, r14, 3716
	add.s r12, r7, r12
	add.s r14, r7, r14
	loads.w r2, 0(r2)
	loads.w r12, 0(r12)
	loads.w r14, 0(r14)
	.loc	1 65 24 is_stmt 1               # ieee-multiply.mlir:65:24
	and r9, r9, r22
	.loc	1 66 24                         # ieee-multiply.mlir:66:24
	and r4, r4, r22
	.loc	1 69 24                         # ieee-multiply.mlir:69:24
	seteq r15, r9, r21
	.loc	1 72 25                         # ieee-multiply.mlir:72:25
	seteq r16, r4, zero
	.loc	1 70 24                         # ieee-multiply.mlir:70:24
	seteq r17, r4, r21
	.loc	1 76 27                         # ieee-multiply.mlir:76:27
	max.u r4, r9, r4
	.loc	1 71 25                         # ieee-multiply.mlir:71:25
	seteq r9, r9, zero
	.loc	1 76 27                         # ieee-multiply.mlir:76:27
	setlt.u r4, r21, r4
	.loc	1 73 29                         # ieee-multiply.mlir:73:29
	and r15, r15, r16
	.loc	1 74 29                         # ieee-multiply.mlir:74:29
	and r9, r9, r17
	.loc	1 75 27                         # ieee-multiply.mlir:75:27
	or r9, r15, r9
	.loc	1 77 23                         # ieee-multiply.mlir:77:23
	or r15, r4, r9
	lui r9, 523264
	lui r4, 523264
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r15, zero, .LBB0_136
# %bb.135:                              # %vector.body45
                                        #   in Loop: Header=BB0_134 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	loadli.w r4,  -60(r30)                  # 4-byte Folded Reload
	add.s r4, r7, r4
	loads.w r4, 0(r4)
.LBB0_136:                              # %vector.body45
                                        #   in Loop: Header=BB0_134 Depth=2
	and r11, r11, r22
	and r13, r13, r22
	seteq r15, r11, r21
	seteq r18, r11, zero
	seteq r16, r13, zero
	seteq r17, r13, r21
	max.u r11, r11, r13
	setlt.u r11, r21, r11
	and r13, r15, r16
	and r15, r18, r17
	or r13, r13, r15
	or r13, r11, r13
	lui r11, 523264
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r13, zero, .LBB0_138
# %bb.137:                              # %vector.body45
                                        #   in Loop: Header=BB0_134 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r11, r14, 0
.LBB0_138:                              # %vector.body45
                                        #   in Loop: Header=BB0_134 Depth=2
	and r1, r1, r22
	and r10, r10, r22
	seteq r13, r1, r21
	seteq r16, r1, zero
	seteq r14, r10, zero
	seteq r15, r10, r21
	max.u r1, r1, r10
	setlt.u r1, r21, r1
	and r10, r13, r14
	and r13, r16, r15
	or r10, r10, r13
	or r10, r1, r10
	lui r1, 523264
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r10, zero, .LBB0_140
# %bb.139:                              # %vector.body45
                                        #   in Loop: Header=BB0_134 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r1, r12, 0
.LBB0_140:                              # %vector.body45
                                        #   in Loop: Header=BB0_134 Depth=2
	and r3, r3, r22
	and r8, r8, r22
	seteq r10, r3, r21
	seteq r14, r3, zero
	seteq r12, r8, zero
	seteq r13, r8, r21
	max.u r3, r3, r8
	setlt.u r3, r21, r3
	and r8, r10, r12
	and r10, r14, r13
	or r8, r8, r10
	or r3, r3, r8
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r3, zero, .LBB0_133
# %bb.141:                              # %vector.body45
                                        #   in Loop: Header=BB0_134 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r9, r2, 0
	j .LBB0_133
.LBB0_142:                              #   in Loop: Header=BB0_13 Depth=1
	.loc	1 81 11 is_stmt 1               # ieee-multiply.mlir:81:11
	beq r10, zero, .LBB0_147
.LBB0_143:                              #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 55
	xwait r1, 0
	lock zero, r11
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 127
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 56
	ew_cfg r5, zero, zero, 3
	dsmadd r19, r19, zero, 0
	unlock r11
	xsignal r1, 0
	.loc	1 84 11                         # ieee-multiply.mlir:84:11
	beq r9, r12, .LBB0_148
.LBB0_144:                              #   in Loop: Header=BB0_13 Depth=1
	.loc	1 85 5                          # ieee-multiply.mlir:85:5
	bneq r9, zero, .LBB0_12
# %bb.145:                              #   in Loop: Header=BB0_13 Depth=1
	load.d r[1:2], -40(r30)                 # 8-byte Folded Reload
	addli r3, zero, 26
	addli r7, zero, 2368
	xwait r3, 0
	load.d r[3:4], 24(r30)
	sll.d r[1:2], r[1:2], r5
	add.ul r[1:2], r[3:4], r[1:2]
	addli r3, zero, 5
	addli r4, zero, 64
	lock zero, r3
	dma_cfg r5, r5, zero, 0
	dma_cfg zero, r5, zero, 1
	dma_cfg r2, zero, zero, 2
	dma_cfg r1, r7, r4, 3
	addli r1, zero, 128
	addli r2, zero, 4
	dma_cfg r4, r1, r2, 4
	addli r1, zero, 256
	load.d r[7:8], -48(r30)                 # 8-byte Folded Reload
	dma_cfg r1, r6, r7, 5
	addli r1, zero, 27
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	xsignal r1, 0
	j .LBB0_12
.LBB0_146:                              # %middle.block50
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 80 11                         # ieee-multiply.mlir:80:11
	addli r1, zero, 25
	mfence { sm }
	.loc	1 29 11                         # ieee-multiply.mlir:29:11
	core_id r9
	addli r11, zero, 2
	addli r5, zero, 1
	addli r12, zero, 3
	addli r6, zero, 512
	.loc	1 80 11                         # ieee-multiply.mlir:80:11
	xsignal r1, 0
	addli r1, zero, 46
	xsignal r1, 0
	addli r1, zero, 50
	xsignal r1, 0
	addli r1, zero, 55
	xsignal r1, 0
	loadli.w r10,  -76(r30)                 # 4-byte Folded Reload
	.loc	1 81 11                         # ieee-multiply.mlir:81:11
	bneq r10, zero, .LBB0_143
.LBB0_147:                              #   in Loop: Header=BB0_13 Depth=1
	.loc	1 84 11                         # ieee-multiply.mlir:84:11
	bneq r9, r12, .LBB0_144
.LBB0_148:                              # %vector.ph
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 25
	zext_int2long r[5:6], zero
	xwait r1, 0
	addli r1, zero, 56
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	storeli.w r19, -40(r30)                 # 4-byte Folded Spill
	storeli.w r20, -48(r30)                 # 4-byte Folded Spill
	storeli.w r24, -56(r30)                 # 4-byte Folded Spill
	storeli.w r23, -52(r30)                 # 4-byte Folded Spill
	j .LBB0_150
.LBB0_149:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	addli r3, r7, 2316
	addli r8, r7, 2308
	addli.d r[5:6], r[5:6], 8
	addli r1, r7, 2304
	addli r4, r7, 2320
	loadli.w r19,  -40(r30)                 # 4-byte Folded Reload
	loadli.w r24,  -56(r30)                 # 4-byte Folded Reload
	stores.w r27, 0(r3)
	addli r3, r7, 2312
	stores.w r2, 0(r1)
	addli r1, r7, 2328
	addli r2, r7, 2324
	stores.w r28, 0(r4)
	lui r28, 1024
	stores.w r23, 0(r3)
	loadli.w r3,  -24(r30)                  # 4-byte Folded Reload
	loadli.w r23,  -52(r30)                 # 4-byte Folded Reload
	stores.w r18, 0(r1)
	stores.w r25, 0(r2)
	stores.w r3, 0(r8)
	load.d r[8:9], -16(r30)                 # 8-byte Folded Reload
	addli r3, r7, 2332
	stores.w r16, 0(r3)
	setneq.d r8, r[5:6], r[8:9]
	beq r8, zero, .LBB0_11
.LBB0_150:                              # %vector.body
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r7, r5, 2
	lui r4, 9
	add.s r2, r7, r19
	ori r1, r4, 1168
	add.s r3, r7, r24
	loads.w r13, 0(r2)
	add.s r2, r7, r20
	add.s r1, r7, r1
	loads.w r14, 0(r3)
	add.s r3, r7, r23
	loads.w r17, 0(r2)
	ori r2, r4, 1172
	loads.w r15, 0(r1)
	ori r1, r4, 1176
	loads.w r10, 0(r3)
	add.s r2, r7, r2
	add.s r1, r7, r1
	loads.w r12, 0(r2)
	ori r2, r4, 1180
	loads.w r11, 0(r1)
	add.s r2, r7, r2
	loads.w r8, 0(r2)
	and r26, r17, r22
	setlt.u r1, r21, r26
	bneq r1, zero, .LBB0_152
# %bb.151:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r27, r17, 0
	j .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_150 Depth=2
	.loc	1 84 11                         # ieee-multiply.mlir:84:11
	or r27, r17, r28
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	and r4, r10, r22
	setlt.u r1, r21, r4
	bneq r1, zero, .LBB0_155
# %bb.154:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r23, r10, 0
	j .LBB0_156
.LBB0_155:                              #   in Loop: Header=BB0_150 Depth=2
	.loc	1 84 11                         # ieee-multiply.mlir:84:11
	or r23, r10, r28
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	and r20, r14, r22
	setlt.u r1, r21, r20
	bneq r1, zero, .LBB0_158
# %bb.157:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	storeli.w r14, -24(r30)                 # 4-byte Folded Spill
	j .LBB0_159
.LBB0_158:                              #   in Loop: Header=BB0_150 Depth=2
	.loc	1 84 11                         # ieee-multiply.mlir:84:11
	or r1, r14, r28
	storeli.w r1, -24(r30)                  # 4-byte Folded Spill
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	and r24, r13, r22
	setlt.u r1, r21, r24
	bneq r1, zero, .LBB0_161
# %bb.160:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r2, r13, 0
	j .LBB0_162
.LBB0_161:                              #   in Loop: Header=BB0_150 Depth=2
	.loc	1 84 11                         # ieee-multiply.mlir:84:11
	or r2, r13, r28
.LBB0_162:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	and r19, r8, r22
	setlt.u r1, r21, r19
	bneq r1, zero, .LBB0_164
# %bb.163:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r16, r8, 0
	j .LBB0_165
.LBB0_164:                              #   in Loop: Header=BB0_150 Depth=2
	.loc	1 84 11                         # ieee-multiply.mlir:84:11
	or r16, r8, r28
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	and r3, r11, r22
	lui r25, 1024
	setlt.u r1, r21, r3
	bneq r1, zero, .LBB0_167
# %bb.166:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r18, r11, 0
	j .LBB0_168
.LBB0_167:                              #   in Loop: Header=BB0_150 Depth=2
	.loc	1 84 11                         # ieee-multiply.mlir:84:11
	or r18, r11, r28
.LBB0_168:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	and r1, r12, r22
	lui r9, 522240
	lui r28, 522240
	setlt.u r21, r9, r1
	bneq r21, zero, .LBB0_170
# %bb.169:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	lui r9, 1024
	addli r25, r12, 0
	j .LBB0_171
.LBB0_170:                              #   in Loop: Header=BB0_150 Depth=2
	lui r9, 1024
	.loc	1 84 11                         # ieee-multiply.mlir:84:11
	or r25, r12, r25
.LBB0_171:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	and r21, r15, r22
	setlt.u r28, r28, r21
	bneq r28, zero, .LBB0_173
# %bb.172:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r28, r15, 0
	j .LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_150 Depth=2
	.loc	1 84 11                         # ieee-multiply.mlir:84:11
	or r28, r15, r9
.LBB0_174:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	loadli.w r9,  -20(r30)                  # 4-byte Folded Reload
	setlt.u r24, r9, r24
	bneq r24, zero, .LBB0_176
# %bb.175:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r2, r13, 16
	loadli.w r9,  -4(r30)                   # 4-byte Folded Reload
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r9
	lui r9, 1048560
	and r2, r2, r9
.LBB0_176:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	loadli.w r24,  -20(r30)                 # 4-byte Folded Reload
	.loc	1 84 11                         # ieee-multiply.mlir:84:11
	setlt.u r13, r24, r20
	bneq r13, zero, .LBB0_178
# %bb.177:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r13, r14, 16
	loadli.w r9,  -4(r30)                   # 4-byte Folded Reload
	andi r13, r13, 1
	add.s r13, r14, r13
	add.s r13, r13, r9
	lui r9, 1048560
	and r9, r13, r9
	storeli.w r9, -24(r30)                  # 4-byte Folded Spill
.LBB0_178:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	.loc	1 84 11                         # ieee-multiply.mlir:84:11
	setlt.u r4, r24, r4
	loadli.w r20,  -48(r30)                 # 4-byte Folded Reload
	bneq r4, zero, .LBB0_185
# %bb.179:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r4, r10, 16
	loadli.w r9,  -4(r30)                   # 4-byte Folded Reload
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r9
	lui r9, 1048560
	and r23, r4, r9
	.loc	1 84 11                         # ieee-multiply.mlir:84:11
	setlt.u r4, r24, r26
	beq r4, zero, .LBB0_186
.LBB0_180:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	setlt.u r4, r24, r21
	bneq r4, zero, .LBB0_182
.LBB0_181:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r4, r15, 16
	loadli.w r9,  -4(r30)                   # 4-byte Folded Reload
	andi r4, r4, 1
	add.s r4, r15, r4
	add.s r4, r4, r9
	lui r9, 1048560
	and r28, r4, r9
.LBB0_182:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	.loc	1 84 11                         # ieee-multiply.mlir:84:11
	setlt.u r1, r24, r1
	lui r21, 522240
	bneq r1, zero, .LBB0_187
# %bb.183:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r1, r12, 16
	loadli.w r4,  -4(r30)                   # 4-byte Folded Reload
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r4
	lui r4, 1048560
	and r25, r1, r4
	.loc	1 84 11                         # ieee-multiply.mlir:84:11
	setlt.u r1, r24, r3
	beq r1, zero, .LBB0_188
.LBB0_184:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	setlt.u r1, r24, r19
	bneq r1, zero, .LBB0_149
	j .LBB0_189
.LBB0_185:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	setlt.u r4, r24, r26
	bneq r4, zero, .LBB0_180
.LBB0_186:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r4, r17, 16
	loadli.w r9,  -4(r30)                   # 4-byte Folded Reload
	andi r4, r4, 1
	add.s r4, r17, r4
	add.s r4, r4, r9
	lui r9, 1048560
	and r27, r4, r9
	.loc	1 84 11                         # ieee-multiply.mlir:84:11
	setlt.u r4, r24, r21
	beq r4, zero, .LBB0_181
	j .LBB0_182
.LBB0_187:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	setlt.u r1, r24, r3
	bneq r1, zero, .LBB0_184
.LBB0_188:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r1, r11, 16
	loadli.w r3,  -4(r30)                   # 4-byte Folded Reload
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r3
	lui r3, 1048560
	and r18, r1, r3
	.loc	1 84 11                         # ieee-multiply.mlir:84:11
	setlt.u r1, r24, r19
	bneq r1, zero, .LBB0_149
.LBB0_189:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r1, r8, 16
	loadli.w r3,  -4(r30)                   # 4-byte Folded Reload
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r3
	lui r3, 1048560
	and r16, r1, r3
	j .LBB0_149
.LBB0_190:                              # %._crit_edge
	beq r10, zero, .LBB0_192
# %bb.191:
	addli r1, zero, 3
	addli r2, zero, 5
	xsignal r1, 0
	xsignal r2, 0
.LBB0_192:                              # %.critedge16
	.loc	1 2 3 is_stmt 1                 # ieee-multiply.mlir:2:3
	xsignal zero, 0
	bneq r9, zero, .LBB0_194
# %bb.193:
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
.LBB0_194:
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/native-activation-3s4z2dg1" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
