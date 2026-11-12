	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/native-activation-94yp4y0f" "ieee-multiply.mlir"
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
	bneq r20, r3, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r17, zero, 3
	addli r4, zero, 5
	storeli.w zero, -116(r30)               # 4-byte Folded Spill
	addli r1, zero, 2
	addli r7, zero, 4
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
	addli r15, zero, 27
	addli r6, zero, 28
	addli r8, zero, 29
	addli r9, zero, 30
	addli r10, zero, 31
	addli r11, zero, 64
	addli r12, zero, 32
	addli r13, zero, 128
	addli r14, zero, 4096
	.loc	1 29 11                         # ieee-multiply.mlir:29:11
	xwait r17, 0
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 6
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r7, 10
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
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg r3, r3, zero, 0
	dma_cfg r3, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg zero, zero, r11, 3
	dma_cfg r13, zero, r12, 4
	dma_cfg r14, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	lock zero, r7
	dma_cfg r3, r3, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r11, r1, r11, 3
	addli r1, zero, 2048
	addli r2, zero, 6
	dma_cfg r13, r11, r12, 4
	dma_cfg r14, r1, r3, 5
	addli r1, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r7, 10
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
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r9, 10
	loadli.w r9,  -116(r30)                 # 4-byte Folded Reload
	dma_cfg zero, zero, r10, 10
	dma_cfg r3, r3, zero, 0
	dma_cfg r3, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg zero, zero, r11, 3
	dma_cfg r13, zero, r12, 4
	dma_cfg r14, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	xsignal r1, 0
	ble.s r16, r5, .LBB0_180
	j .LBB0_10
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r1, zero, 5
	.loc	1 26 11 is_stmt 1               # ieee-multiply.mlir:26:11
	beq r20, r1, .LBB0_8
# %bb.6:
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r15, zero, 6
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	bneq r20, r15, .LBB0_9
# %bb.7:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r3, zero, 5
	storeli.w zero, -116(r30)               # 4-byte Folded Spill
	addli r4, zero, 1
	addli r1, zero, 2
	addli r2, zero, 9
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
	addli r11, zero, 27
	addli r10, zero, 28
	addli r9, zero, 29
	addli r8, zero, 30
	addli r7, zero, 31
	addli r6, zero, 64
	addli r12, zero, 32
	addli r13, zero, 128
	load.d r[17:18], 8(r30)
	addli r14, zero, 4160
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
	addli r1, zero, 4096
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
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg r4, r4, zero, 0
	dma_cfg r4, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r6, 3
	dma_cfg r13, zero, r12, 4
	dma_cfg r1, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	lock zero, r5
	dma_cfg r4, r4, zero, 0
	dma_cfg zero, r18, zero, 2
	dma_cfg r14, r17, r6, 3
	addli r14, zero, 2048
	dma_cfg r13, r6, r12, 4
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
	addli r14, zero, 8
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 9
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
	.loc	1 29 11 is_stmt 1               # ieee-multiply.mlir:29:11
	core_id r20
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	loadli.w r9,  -116(r30)                 # 4-byte Folded Reload
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg r4, r4, zero, 0
	dma_cfg r4, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r6, 3
	dma_cfg r13, zero, r12, 4
	dma_cfg r1, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	xsignal r5, 0
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	ble.s r16, r5, .LBB0_180
	j .LBB0_10
.LBB0_8:
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r1, zero, 2
	addli r9, zero, 1
	addli r2, zero, 4
	xwait r1, 0
	xwait r2, 0
	ble.s r16, r5, .LBB0_180
	j .LBB0_10
.LBB0_9:
	addli r9, zero, 0
	ble.s r16, r5, .LBB0_180
.LBB0_10:                               # %.lr.ph
	sext_int2long r[1:2], r5
	addli r3, zero, 1023
	addli r21, zero, 2
	addli r10, zero, 1
	addli r11, zero, 3
	addli r12, zero, 4096
	lui r25, 1024
	lui r26, 522240
	storeli.w r9, -116(r30)                 # 4-byte Folded Spill
	store.d r[1:2], -112(r30)               # 8-byte Folded Spill
	sext_int2long r[1:2], r16
	zext_int2long r[14:15], r3
	store.d r[1:2], -152(r30)               # 8-byte Folded Spill
	addli r1, zero, 511
	store.d r[14:15], -80(r30)              # 8-byte Folded Spill
	zext_int2long r[1:2], r1
	store.d r[1:2], -160(r30)               # 8-byte Folded Spill
	lui r1, 524287
	lui r2, 7
	ori r27, r1, 4095
	ori r28, r2, 4095
	lui r1, 522239
	lui r2, 6
	ori r4, r1, 4095
	ori r1, r2, 1152
	lui r2, 71
	storeli.w r28, -96(r30)                 # 4-byte Folded Spill
	storeli.w r27, -92(r30)                 # 4-byte Folded Spill
	storeli.w r1, -124(r30)                 # 4-byte Folded Spill
	lui r1, 70
	storeli.w r4, -4(r30)                   # 4-byte Folded Spill
	ori r1, r1, 1536
	storeli.w r1, -88(r30)                  # 4-byte Folded Spill
	ori r1, r2, 1536
	lui r2, 72
	storeli.w r1, -100(r30)                 # 4-byte Folded Spill
	lui r1, 239665
	ori r1, r1, 623
	storeli.w r1, -176(r30)                 # 4-byte Folded Spill
	ori r1, r2, 1536
	lui r2, 74
	storeli.w r1, -172(r30)                 # 4-byte Folded Spill
	lui r1, 73
	ori r13, r2, 1536
	ori r24, r1, 1536
	zext_int2long r[1:2], zero
	storeli.w r13, -84(r30)                 # 4-byte Folded Spill
	store.d r[1:2], -168(r30)               # 8-byte Folded Spill
	lui r1, 38
	storeli.w r24, -104(r30)                # 4-byte Folded Spill
	ori r1, r1, 1152
	storeli.w r1, -120(r30)                 # 4-byte Folded Spill
	j .LBB0_13
.LBB0_11:                               # %.thread42
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 106 11 is_stmt 1              # ieee-multiply.mlir:106:11
	addli r1, zero, 26
	mfence { sm }
	addli r10, zero, 1
	addli r11, zero, 3
	addli r12, zero, 4096
	xsignal r1, 0
	addli r1, zero, 57
	xsignal r1, 0
	addli r1, zero, 60
	xsignal r1, 0
	loadli.w r9,  -116(r30)                 # 4-byte Folded Reload
.LBB0_12:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	load.d r[1:2], -112(r30)                # 8-byte Folded Reload
	load.d r[3:4], -152(r30)                # 8-byte Folded Reload
	addli.d r[1:2], r[1:2], 1
	store.d r[1:2], -112(r30)               # 8-byte Folded Spill
	setlt.sl r1, r[1:2], r[3:4]
	beq r1, zero, .LBB0_180
.LBB0_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_74 Depth 2
                                        #     Child Loop BB0_116 Depth 2
                                        #     Child Loop BB0_98 Depth 2
                                        #     Child Loop BB0_166 Depth 2
                                        #     Child Loop BB0_175 Depth 2
                                        #     Child Loop BB0_133 Depth 2
	.loc	1 5 14 is_stmt 1                # ieee-multiply.mlir:5:14
	beq r9, zero, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 6
	xwait r1, 0
	lock zero, r21
	lui r1, 280576
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 31
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 8192
	ew_cfg r10, zero, zero, 3
	ssaux r1, 0
	.loc	1 6 14                          # ieee-multiply.mlir:6:14
	addli r1, zero, 9
	.loc	1 5 14                          # ieee-multiply.mlir:5:14
	unlock r21
	.loc	1 6 14                          # ieee-multiply.mlir:6:14
	xwait r1, 0
	lock zero, r21
	addli r1, zero, 1023
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 8320
	ew_cfg r10, zero, zero, 3
	ssaux r1, 0
	addli r1, zero, 7
	unlock r21
	xsignal r1, 0
.LBB0_15:                               # %.critedge4
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 14 is_stmt 0                # ieee-multiply.mlir:0:14
	loadli.w r1,  48(r30)
	load.d r[2:3], -112(r30)                # 8-byte Folded Reload
	.loc	1 17 10 is_stmt 1               # ieee-multiply.mlir:17:10
	addli r4, zero, 10
	div.s r1, r2, r1
	loadli.w r2,  44(r30)
	div.s r3, r1, r2
	.loc	1 105 11                        # ieee-multiply.mlir:105:11
	sext_int2long r[1:2], r3
	.loc	1 17 10                         # ieee-multiply.mlir:17:10
	sll.d r[4:5], r[1:2], r4
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	store.d r[4:5], -136(r30)               # 8-byte Folded Spill
	bneq r20, r11, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=1
	addli r4, zero, 12
	xwait r4, 0
	xfence
	setlti r4, r3, 512
	mfence { lm, sm, gm }
	load.d r[5:6], -168(r30)                # 8-byte Folded Reload
.LBB0_17:                               #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	setlt.ul r7, r[5:6], r[14:15]
	addli r8, r5, 12416
	addli.d r[5:6], r[5:6], 1
	stores.b r4, 0(r8)
	bneq r7, zero, .LBB0_17
# %bb.18:                               # %.thread40
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	load.d r[4:5], -160(r30)                # 8-byte Folded Reload
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	mfence { sm }
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	min.sl r[4:5], r[1:2], r[4:5]
	addli.d r[4:5], r[4:5], 1
	max.sl r[1:2], r[4:5], r[1:2]
	sub.s r16, r1, r3
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	addli r1, zero, 10
	xsignal r1, 0
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	j .LBB0_23
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	load.d r[3:4], -160(r30)                # 8-byte Folded Reload
	min.sl r[3:4], r[1:2], r[3:4]
	addli.d r[3:4], r[3:4], 1
	max.sl r[3:4], r[3:4], r[1:2]
	sub.sl r[16:17], r[3:4], r[1:2]
	bneq r20, r10, .LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	zext_int2long r[1:2], zero
	addli r14, zero, 16
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	setlt.sl r1, r[1:2], r[16:17]
	xwait r14, 0
	bneq r1, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_13 Depth=1
	lock zero, r21
	addli r1, zero, 1023
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 13440
	ew_cfg r10, zero, zero, 3
	ssaux r1, 0
	unlock r21
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=1
	load.d r[1:2], -136(r30)                # 8-byte Folded Reload
	addli r6, zero, 13
	addli r5, zero, 5
	load.d r[3:4], 0(r30)
	addli r22, zero, 8
	addli r19, zero, 17
	addli r18, zero, 18
	addli r23, zero, 27
	addli r15, zero, 13440
	addli r8, zero, 32
	addli r7, zero, 128
	addli r12, zero, 13504
	xsignal r6, 0
	xwait r6, 0
	lock zero, r5
	sll.d r[1:2], r[1:2], r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	add.ul r[1:2], r[3:4], r[1:2]
	dma_cfg zero, zero, r21, 10
	addli r4, zero, 4
	addli r3, zero, 6
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 7
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 11
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 19
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 4096
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r18, 10
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
	addli r3, zero, 25
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 26
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 28
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 29
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 30
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 31
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 64
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r15, zero, r3, 3
	dma_cfg r7, zero, r8, 4
	dma_cfg r14, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
	lock zero, r4
	dma_cfg r10, r10, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r12, r1, r3, 3
	addli r1, zero, 2048
	addli r2, zero, 15
	addli r12, zero, 4096
	dma_cfg r7, r3, r8, 4
	dma_cfg r14, r1, r16, 5
	addli r1, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	lock zero, r5
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 7
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 19
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 20
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 21
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
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 29
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r15, zero, r3, 3
	dma_cfg r7, zero, r8, 4
	dma_cfg r14, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
	xsignal r1, 0
	load.d r[14:15], -80(r30)               # 8-byte Folded Reload
.LBB0_23:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	store.d r[16:17], -144(r30)             # 8-byte Folded Spill
	.loc	1 33 11 is_stmt 1               # ieee-multiply.mlir:33:11
	beq r9, zero, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 14
	xwait r1, 0
	lock zero, r21
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 1023
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 13440
	ew_cfg r10, zero, zero, 3
	dsmadd r1, r1, r12, 0
	addli r1, zero, 15
	unlock r21
	xsignal r1, 0
.LBB0_25:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r2, 4
	ori r1, r2, 1152
	storeli.w r1, -8(r30)                   # 4-byte Folded Spill
	lui r1, 5
	ori r6, r1, 1152
	addli r1, zero, 1024
	zext_int2long r[22:23], r1
	ori r1, r2, 1168
	storeli.w r1, -36(r30)                  # 4-byte Folded Spill
	ori r1, r2, 1164
	store.d r[22:23], -32(r30)              # 8-byte Folded Spill
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	ori r1, r2, 1160
	storeli.w r1, -16(r30)                  # 4-byte Folded Spill
	ori r1, r2, 1156
	storeli.w r1, -20(r30)                  # 4-byte Folded Spill
	ori r1, r2, 1180
	storeli.w r1, -40(r30)                  # 4-byte Folded Spill
	ori r1, r2, 1176
	storeli.w r1, -44(r30)                  # 4-byte Folded Spill
	ori r1, r2, 1172
	storeli.w r1, -48(r30)                  # 4-byte Folded Spill
	.loc	1 34 11 is_stmt 1               # ieee-multiply.mlir:34:11
	bneq r20, r11, .LBB0_68
# %bb.26:                               # %vector.ph78
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 15
	storeli.w r6, -68(r30)                  # 4-byte Folded Spill
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	load.d r[6:7], -168(r30)                # 8-byte Folded Reload
	j .LBB0_28
.LBB0_27:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r5, 5
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	addli.d r[6:7], r[6:7], 8
	loadli.w r3,  -68(r30)                  # 4-byte Folded Reload
	ori r12, r5, 1156
	ori r13, r5, 1180
	ori r9, r5, 1164
	ori r11, r5, 1160
	ori r10, r5, 1168
	add.s r3, r8, r3
	add.s r2, r8, r12
	add.s r4, r8, r9
	stores.w r20, 0(r3)
	stores.w r21, 0(r2)
	add.s r2, r8, r13
	stores.w r19, 0(r4)
	add.s r4, r8, r11
	stores.w r18, 0(r2)
	setneq.d r2, r[6:7], r[14:15]
	ori r14, r5, 1176
	ori r15, r5, 1172
	stores.w r16, 0(r4)
	add.s r4, r8, r10
	add.s r3, r8, r14
	add.s r5, r8, r15
	stores.w r1, 0(r4)
	stores.w r17, 0(r3)
	stores.w r25, 0(r5)
	beq r2, zero, .LBB0_72
.LBB0_28:                               # %vector.body79
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r8, r6, 2
	lui r17, 1024
	addli r3, r8, 13452
	addli r1, r8, 13440
	addli r2, r8, 13456
	loads.w r12, 0(r3)
	loads.w r15, 0(r1)
	addli r1, r8, 13444
	addli r3, r8, 13448
	loads.w r18, 0(r2)
	addli r2, r8, 13468
	loads.w r14, 0(r1)
	addli r1, r8, 13460
	loads.w r13, 0(r3)
	loads.w r9, 0(r2)
	loads.w r11, 0(r1)
	addli r1, r8, 13464
	loads.w r10, 0(r1)
	and r4, r12, r27
	setlt.u r1, r26, r4
	bneq r1, zero, .LBB0_30
# %bb.29:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r19, r12, 0
	j .LBB0_31
.LBB0_30:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r19, r12, r17
.LBB0_31:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	and r24, r13, r27
	setlt.u r1, r26, r24
	bneq r1, zero, .LBB0_33
# %bb.32:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r16, r13, 0
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r16, r13, r17
.LBB0_34:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	and r5, r14, r27
	setlt.u r1, r26, r5
	bneq r1, zero, .LBB0_36
# %bb.35:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r2, r14, 0
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r2, r14, r17
.LBB0_37:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	and r28, r15, r27
	setlt.u r1, r26, r28
	bneq r1, zero, .LBB0_39
# %bb.38:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r20, r15, 0
	j .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r20, r15, r17
.LBB0_40:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	and r3, r9, r27
	setlt.u r1, r26, r3
	bneq r1, zero, .LBB0_42
# %bb.41:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	storeli.w r9, -52(r30)                  # 4-byte Folded Spill
	j .LBB0_43
.LBB0_42:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r1, r9, r17
	storeli.w r1, -52(r30)                  # 4-byte Folded Spill
.LBB0_43:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	and r23, r10, r27
	setlt.u r1, r26, r23
	bneq r1, zero, .LBB0_45
# %bb.44:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r17, r10, 0
	j .LBB0_46
.LBB0_45:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r17, r10, r17
.LBB0_46:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	and r22, r11, r27
	lui r21, 522240
	setlt.u r1, r26, r22
	bneq r1, zero, .LBB0_48
# %bb.47:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	lui r26, 1024
	addli r25, r11, 0
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_28 Depth=2
	lui r1, 1024
	lui r26, 1024
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r25, r11, r1
.LBB0_49:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	and r27, r18, r27
	setlt.u r1, r21, r27
	bneq r1, zero, .LBB0_51
# %bb.50:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r1, r18, 0
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	or r1, r18, r26
.LBB0_52:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	loadli.w r21,  -4(r30)                  # 4-byte Folded Reload
	setlt.u r26, r21, r28
	loadli.w r28,  -96(r30)                 # 4-byte Folded Reload
	bneq r26, zero, .LBB0_54
# %bb.53:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r20, r15, 16
	andi r20, r20, 1
	add.s r15, r15, r20
	lui r20, 1048560
	add.s r15, r15, r28
	and r20, r15, r20
.LBB0_54:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	loadli.w r15,  -4(r30)                  # 4-byte Folded Reload
	addli r21, r2, 0
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r5, r15, r5
	bneq r5, zero, .LBB0_56
# %bb.55:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r5, r14, 16
	andi r5, r5, 1
	add.s r5, r14, r5
	lui r14, 1048560
	add.s r5, r5, r28
	and r21, r5, r14
.LBB0_56:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r5, r15, r24
	lui r26, 522240
	beq r5, zero, .LBB0_66
# %bb.57:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	setlt.u r4, r15, r4
	beq r4, zero, .LBB0_67
.LBB0_58:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	setlt.u r4, r15, r27
	bneq r4, zero, .LBB0_60
.LBB0_59:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r1, r18, 16
	lui r4, 1048560
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r28
	and r1, r1, r4
.LBB0_60:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r4, r15, r22
	loadli.w r27,  -92(r30)                 # 4-byte Folded Reload
	bneq r4, zero, .LBB0_62
# %bb.61:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r4, r11, 16
	lui r5, 1048560
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r28
	and r25, r4, r5
.LBB0_62:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r4, r15, r23
	loadli.w r18,  -52(r30)                 # 4-byte Folded Reload
	bneq r4, zero, .LBB0_64
# %bb.63:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r4, r10, 16
	lui r5, 1048560
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r28
	and r17, r4, r5
.LBB0_64:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r3, r15, r3
	load.d r[14:15], -32(r30)               # 8-byte Folded Reload
	bneq r3, zero, .LBB0_27
# %bb.65:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r3, r9, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r9, r3
	add.s r3, r3, r28
	and r18, r3, r4
	j .LBB0_27
.LBB0_66:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	srli r2, r13, 16
	lui r5, 1048560
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r28
	and r16, r2, r5
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r4, r15, r4
	bneq r4, zero, .LBB0_58
.LBB0_67:                               # %vector.body79
                                        #   in Loop: Header=BB0_28 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r4, r12, 16
	lui r5, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r28
	and r19, r4, r5
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	setlt.u r4, r15, r27
	beq r4, zero, .LBB0_59
	j .LBB0_60
.LBB0_68:                               # %.critedge6
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 37 11 is_stmt 1               # ieee-multiply.mlir:37:11
	beq r20, r21, .LBB0_91
# %bb.69:                               #   in Loop: Header=BB0_13 Depth=1
	bneq r9, zero, .LBB0_92
.LBB0_70:                               # %.critedge8
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 44 11                         # ieee-multiply.mlir:44:11
	bneq r20, r21, .LBB0_93
.LBB0_71:                               # %.critedge10.thread
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 34
	lui r2, 38
	xwait r1, 0
	addli r1, zero, 41
	xwait r1, 0
	lock zero, zero
	ori r1, r2, 1408
	ds_cfg r21, zero, 0
	ds_cfg r10, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r10, zero, 13
	loadli.w r3,  -120(r30)                 # 4-byte Folded Reload
	shuffle_coa r1, r3, r10, 4
	addli r1, zero, 35
	addli r3, zero, 1024
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
	ds_cfg r21, zero, 0
	ds_cfg r1, zero, 1
	ori r1, r2, 1536
	ds_cfg r3, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r10, zero, 13
	loadli.w r2,  -124(r30)                 # 4-byte Folded Reload
	shuffle_coa r2, r1, r3, 4
	addli r1, zero, 30
	unlock zero
	xsignal r1, 0
	addli r1, zero, 45
	j .LBB0_118
.LBB0_72:                               # %middle.block84
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 34 11                         # ieee-multiply.mlir:34:11
	addli r1, zero, 16
	mfence { sm }
	addli r2, zero, 17
	zext_int2long r[6:7], zero
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
	mfence { lm, sm, gm }
	j .LBB0_74
.LBB0_73:                               # %vector.body70
                                        #   in Loop: Header=BB0_74 Depth=2
	loadli.w r3,  -12(r30)                  # 4-byte Folded Reload
	loadli.w r16,  -20(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -8(r30)                   # 4-byte Folded Reload
	addli.d r[6:7], r[6:7], 8
	loadli.w r4,  -36(r30)                  # 4-byte Folded Reload
	add.s r3, r1, r3
	add.s r16, r1, r16
	add.s r2, r1, r2
	add.s r4, r1, r4
	stores.w r26, 0(r3)
	loadli.w r3,  -16(r30)                  # 4-byte Folded Reload
	stores.w r5, 0(r16)
	load.d r[16:17], -32(r30)               # 8-byte Folded Reload
	stores.w r22, 0(r2)
	loadli.w r2,  -44(r30)                  # 4-byte Folded Reload
	stores.w r18, 0(r4)
	add.s r3, r1, r3
	setneq.d r5, r[6:7], r[16:17]
	add.s r2, r1, r2
	stores.w r20, 0(r3)
	loadli.w r3,  -40(r30)                  # 4-byte Folded Reload
	stores.w r19, 0(r2)
	add.s r3, r1, r3
	stores.w r8, 0(r3)
	loadli.w r3,  -48(r30)                  # 4-byte Folded Reload
	add.s r1, r1, r3
	stores.w r21, 0(r1)
	beq r5, zero, .LBB0_90
.LBB0_74:                               # %vector.body70
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addli r1, r6, 12416
	addli r5, r6, 12420
	addli r8, r6, 12421
	addli r16, r6, 12422
	addli r2, r6, 12417
	addli r17, r6, 12423
	addli r4, r6, 12419
	addli r3, r6, 12418
	loads.bu r22, 0(r1)
	loads.bu r1, 0(r5)
	loads.bu r27, 0(r2)
	loads.bu r2, 0(r17)
	loads.bu r23, 0(r4)
	loads.bu r24, 0(r3)
	storeli.w r1, -64(r30)                  # 4-byte Folded Spill
	loads.bu r1, 0(r8)
	storeli.w r2, -52(r30)                  # 4-byte Folded Spill
	storeli.w r1, -60(r30)                  # 4-byte Folded Spill
	loads.bu r1, 0(r16)
	storeli.w r1, -56(r30)                  # 4-byte Folded Spill
	slli r1, r6, 2
	add.s r2, r1, r9
	addli r28, r1, 8348
	add.s r4, r1, r11
	add.s r3, r1, r10
	add.s r16, r1, r15
	loads.w r26, 0(r2)
	add.s r2, r1, r12
	loads.w r20, 0(r4)
	add.s r4, r1, r13
	loads.w r21, 0(r16)
	addli r16, r1, 8328
	loads.w r18, 0(r3)
	addli r3, r1, 8336
	loads.w r5, 0(r2)
	loads.w r2, 0(r28)
	loads.w r8, 0(r4)
	add.s r4, r1, r14
	loads.w r16, 0(r16)
	loads.w r3, 0(r3)
	loads.w r19, 0(r4)
	addli r4, r1, 8332
	loads.w r25, 0(r4)
	addli r4, r1, 8324
	loads.w r17, 0(r4)
	addli r4, r1, 8344
	loads.w r28, 0(r4)
	storeli.w r2, -72(r30)                  # 4-byte Folded Spill
	addli r2, r1, 8340
	loads.w r4, 0(r2)
	bneq r22, zero, .LBB0_76
# %bb.75:                               # %vector.body70
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r2, r1, 8320
	loads.w r22, 0(r2)
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	beq r27, zero, .LBB0_77
	j .LBB0_78
.LBB0_76:                               #   in Loop: Header=BB0_74 Depth=2
	loadli.w r2,  -68(r30)                  # 4-byte Folded Reload
	add.s r2, r1, r2
	loads.w r22, 0(r2)
	bneq r27, zero, .LBB0_78
.LBB0_77:                               # %vector.body70
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r5, r17, 0
.LBB0_78:                               # %vector.body70
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	beq r24, zero, .LBB0_84
# %bb.79:                               # %vector.body70
                                        #   in Loop: Header=BB0_74 Depth=2
	beq r23, zero, .LBB0_85
.LBB0_80:                               # %vector.body70
                                        #   in Loop: Header=BB0_74 Depth=2
	loadli.w r2,  -64(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_86
.LBB0_81:                               # %vector.body70
                                        #   in Loop: Header=BB0_74 Depth=2
	loadli.w r2,  -60(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_87
.LBB0_82:                               # %vector.body70
                                        #   in Loop: Header=BB0_74 Depth=2
	loadli.w r2,  -56(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_88
.LBB0_83:                               # %vector.body70
                                        #   in Loop: Header=BB0_74 Depth=2
	loadli.w r2,  -52(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_73
	j .LBB0_89
.LBB0_84:                               # %vector.body70
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r20, r16, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	bneq r23, zero, .LBB0_80
.LBB0_85:                               # %vector.body70
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r26, r25, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	loadli.w r2,  -64(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_81
.LBB0_86:                               # %vector.body70
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r18, r3, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	loadli.w r2,  -60(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_82
.LBB0_87:                               # %vector.body70
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r21, r4, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	loadli.w r2,  -56(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_83
.LBB0_88:                               # %vector.body70
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r19, r28, 0
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	loadli.w r2,  -52(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_73
.LBB0_89:                               # %vector.body70
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	loadli.w r8,  -72(r30)                  # 4-byte Folded Reload
	j .LBB0_73
.LBB0_90:                               # %.critedge6.thread
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	addli r1, zero, 8
	mfence { sm }
	.loc	1 29 11 is_stmt 1               # ieee-multiply.mlir:29:11
	core_id r20
	addli r21, zero, 2
	addli r10, zero, 1
	addli r11, zero, 3
	addli r12, zero, 4096
	lui r25, 1024
	lui r26, 522240
	.loc	1 36 11                         # ieee-multiply.mlir:36:11
	xsignal r1, 0
	addli r1, zero, 11
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r1, 0
	loadli.w r9,  -116(r30)                 # 4-byte Folded Reload
	loadli.w r27,  -92(r30)                 # 4-byte Folded Reload
	loadli.w r28,  -96(r30)                 # 4-byte Folded Reload
	loadli.w r24,  -104(r30)                # 4-byte Folded Reload
	loadli.w r13,  -84(r30)                 # 4-byte Folded Reload
	load.d r[14:15], -80(r30)               # 8-byte Folded Reload
	load.d r[22:23], -32(r30)               # 8-byte Folded Reload
	loadli.w r6,  -68(r30)                  # 4-byte Folded Reload
	.loc	1 37 11                         # ieee-multiply.mlir:37:11
	beq r9, zero, .LBB0_70
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 20
	addli r2, zero, 1024
	xwait r1, 0
	addli r1, zero, 33
	xwait r1, 0
	lock zero, zero
	ds_cfg r21, zero, 0
	ds_cfg r10, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r10, zero, 13
	loadli.w r1,  -124(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -8(r30)                   # 4-byte Folded Reload
	shuffle_coa r1, r3, r2, 4
	addli r1, zero, 21
	unlock zero
	xsignal r1, 0
	addli r1, zero, 28
	xsignal r1, 0
	beq r9, zero, .LBB0_70
.LBB0_92:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 28
	addli r2, zero, 1024
	xwait r1, 0
	addli r1, zero, 39
	xwait r1, 0
	lock zero, r21
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r2, zero, zero, 3
	loadli.w r2,  -124(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -120(r30)                 # 4-byte Folded Reload
	ssreduce r3, r2, 0
	addli r2, zero, 29
	unlock r21
	xsignal r2, 0
	.loc	1 43 11                         # ieee-multiply.mlir:43:11
	lock zero, r21
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	ew_cfg r10, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 8192
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r1, 4
	addli r1, zero, 34
	hp_ssmul r3, r3, r3, 0
	unlock r21
	xsignal r1, 0
	.loc	1 44 11                         # ieee-multiply.mlir:44:11
	beq r20, r21, .LBB0_71
.LBB0_93:                               #   in Loop: Header=BB0_13 Depth=1
	beq r20, r11, .LBB0_115
# %bb.94:                               # %.thread37
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 46 11                         # ieee-multiply.mlir:46:11
	bneq r9, zero, .LBB0_119
.LBB0_95:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r20, r11, .LBB0_120
.LBB0_96:                               # %vector.ph60
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 8
	zext_int2long r[5:6], zero
	xwait r1, 0
	addli r1, zero, 11
	xwait r1, 0
	addli r1, zero, 21
	xwait r1, 0
	addli r1, zero, 51
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	j .LBB0_98
.LBB0_97:                               # %vector.body61
                                        #   in Loop: Header=BB0_98 Depth=2
	loadli.w r13,  -12(r30)                 # 4-byte Folded Reload
	addli.d r[5:6], r[5:6], 8
	loadli.w r11,  -8(r30)                  # 4-byte Folded Reload
	loadli.w r14,  -36(r30)                 # 4-byte Folded Reload
	add.s r13, r1, r13
	add.s r11, r1, r11
	add.s r14, r1, r14
	stores.w r10, 0(r13)
	loadli.w r13,  -20(r30)                 # 4-byte Folded Reload
	loadli.w r10,  -16(r30)                 # 4-byte Folded Reload
	stores.w r12, 0(r11)
	stores.w r2, 0(r14)
	add.s r13, r1, r13
	add.s r10, r1, r10
	stores.w r8, 0(r13)
	loadli.w r8,  -40(r30)                  # 4-byte Folded Reload
	stores.w r9, 0(r10)
	setneq.d r9, r[5:6], r[22:23]
	add.s r8, r1, r8
	stores.w r7, 0(r8)
	loadli.w r7,  -44(r30)                  # 4-byte Folded Reload
	loadli.w r8,  -48(r30)                  # 4-byte Folded Reload
	add.s r7, r1, r7
	add.s r1, r1, r8
	stores.w r4, 0(r7)
	stores.w r3, 0(r1)
	beq r9, zero, .LBB0_114
.LBB0_98:                               # %vector.body61
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addli r1, r5, 12416
	addli r2, r5, 12417
	addli r3, r5, 12418
	addli r4, r5, 12419
	addli r7, r5, 12420
	addli r8, r5, 12421
	addli r9, r5, 12422
	addli r10, r5, 12423
	loads.bu r26, 0(r1)
	slli r1, r5, 2
	loads.bu r19, 0(r2)
	loadli.w r2,  -100(r30)                 # 4-byte Folded Reload
	loads.bu r18, 0(r3)
	loads.bu r16, 0(r4)
	loads.bu r15, 0(r7)
	loads.bu r14, 0(r8)
	loads.bu r13, 0(r9)
	loads.bu r11, 0(r10)
	addli r17, r1, 8332
	addli r20, r1, 8328
	addli r23, r1, 8336
	addli r21, r1, 8340
	add.s r12, r1, r2
	loads.w r22, 0(r17)
	loads.w r24, 0(r20)
	addli r17, r1, 8324
	addli r20, r1, 8348
	loads.w r21, 0(r21)
	loads.w r23, 0(r23)
	loads.w r10, 12(r12)
	loads.w r9, 8(r12)
	loads.w r8, 4(r12)
	loads.w r7, 28(r12)
	loads.w r4, 24(r12)
	loads.w r3, 20(r12)
	loads.w r2, 16(r12)
	loads.w r25, 0(r17)
	loads.w r17, 0(r20)
	addli r20, r1, 8344
	loads.w r20, 0(r20)
	bneq r26, zero, .LBB0_100
# %bb.99:                               # %vector.body61
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r12, r1, 8320
.LBB0_100:                              # %vector.body61
                                        #   in Loop: Header=BB0_98 Depth=2
	loads.w r12, 0(r12)
	lui r26, 522240
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r19, zero, .LBB0_102
# %bb.101:                              # %vector.body61
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r8, r25, 0
.LBB0_102:                              # %vector.body61
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r18, zero, .LBB0_104
# %bb.103:                              # %vector.body61
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r9, r24, 0
.LBB0_104:                              # %vector.body61
                                        #   in Loop: Header=BB0_98 Depth=2
	loadli.w r24,  -104(r30)                # 4-byte Folded Reload
	lui r25, 1024
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r16, zero, .LBB0_109
# %bb.105:                              # %vector.body61
                                        #   in Loop: Header=BB0_98 Depth=2
	beq r15, zero, .LBB0_110
.LBB0_106:                              # %vector.body61
                                        #   in Loop: Header=BB0_98 Depth=2
	beq r14, zero, .LBB0_111
.LBB0_107:                              # %vector.body61
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	load.d r[22:23], -32(r30)               # 8-byte Folded Reload
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r13, zero, .LBB0_112
.LBB0_108:                              # %vector.body61
                                        #   in Loop: Header=BB0_98 Depth=2
	bneq r11, zero, .LBB0_97
	j .LBB0_113
.LBB0_109:                              # %vector.body61
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r10, r22, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r15, zero, .LBB0_106
.LBB0_110:                              # %vector.body61
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r2, r23, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r14, zero, .LBB0_107
.LBB0_111:                              # %vector.body61
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r3, r21, 0
	load.d r[22:23], -32(r30)               # 8-byte Folded Reload
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r13, zero, .LBB0_108
.LBB0_112:                              # %vector.body61
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r4, r20, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	bneq r11, zero, .LBB0_97
.LBB0_113:                              # %vector.body61
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r7, r17, 0
	j .LBB0_97
.LBB0_114:                              # %.thread41
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	addli r1, zero, 9
	mfence { sm }
	.loc	1 29 11 is_stmt 1               # ieee-multiply.mlir:29:11
	core_id r20
	addli r21, zero, 2
	addli r10, zero, 1
	addli r11, zero, 3
	addli r12, zero, 4096
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	xsignal r1, 0
	addli r1, zero, 12
	xsignal r1, 0
	addli r1, zero, 22
	xsignal r1, 0
	addli r1, zero, 52
	xsignal r1, 0
	loadli.w r9,  -116(r30)                 # 4-byte Folded Reload
	loadli.w r13,  -84(r30)                 # 4-byte Folded Reload
	load.d r[14:15], -80(r30)               # 8-byte Folded Reload
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	beq r9, zero, .LBB0_122
	j .LBB0_125
.LBB0_115:                              #   in Loop: Header=BB0_13 Depth=1
	.loc	1 44 11                         # ieee-multiply.mlir:44:11
	addli r2, zero, 40
	lui r4, 38
	addli r5, zero, 42
	addli r1, zero, 0
	xwait r2, 0
	addli r2, zero, 43
	ori r3, r4, 1408
	xwait r2, 0
	lock zero, r11
	ori r2, r4, 1280
	rs_cfg zero, r10, r10, 1
	rs_cfg zero, r10, zero, 3
	rs_col r2, r3, r10, 0
	ori r3, r4, 1536
	addli r4, zero, 41
	unlock r11
	xsignal r4, 0
	addli r4, zero, 18
	xsignal r5, 0
	xwait r4, 0
	addli r4, zero, 46
	xwait r5, 0
	lui r5, 260096
	xwait r4, 0
	lock zero, r21
	lui r4, 784384
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r5, r4, zero, 0
	ew_cfg zero, zero, zero, 2
	ew_cfg r10, zero, zero, 3
.LBB0_116:                              #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r1, r6
	addli r1, r1, 4
	dsmadd r3, r4, r2, 0
	addli r3, r3, 128
	bneq r1, r12, .LBB0_116
# %bb.117:                              # %.critedge10
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 19
	unlock r21
	.loc	1 46 11                         # ieee-multiply.mlir:46:11
	addli r2, zero, 32
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
	addli r1, zero, 1024
	lock zero, r11
	rs_cfg zero, r1, r2, 1
	rs_cfg zero, r1, zero, 3
	loadli.w r1,  -124(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -88(r30)                  # 4-byte Folded Reload
	rs_col r2, r1, r10, 0
	addli r1, zero, 31
	unlock r11
	xsignal r1, 0
	addli r1, zero, 49
	xsignal r1, 0
	addli r1, zero, 47
.LBB0_118:                              # %.thread37
                                        #   in Loop: Header=BB0_13 Depth=1
	xsignal r1, 0
	beq r9, zero, .LBB0_95
.LBB0_119:                              #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 47
	xwait r1, 0
	addli r1, zero, 52
	xwait r1, 0
	lock zero, r21
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 1023
	ew_cfg zero, r1, zero, 2
	ew_cfg r10, zero, zero, 3
	loadli.w r1,  -88(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -100(r30)                 # 4-byte Folded Reload
	dsmul r2, r1, r1, 0
	addli r1, zero, 51
	unlock r21
	xsignal r1, 0
	.loc	1 47 11                         # ieee-multiply.mlir:47:11
	beq r20, r11, .LBB0_96
.LBB0_120:                              #   in Loop: Header=BB0_13 Depth=1
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	beq r20, r21, .LBB0_124
# %bb.121:                              #   in Loop: Header=BB0_13 Depth=1
	bneq r9, zero, .LBB0_125
.LBB0_122:                              # %.critedge14
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 57 11                         # ieee-multiply.mlir:57:11
	bneq r20, r21, .LBB0_126
.LBB0_123:                              # %.thread38
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 37
	xwait r1, 0
	addli r1, zero, 54
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 1024
	ds_cfg r21, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r1, zero, 13
	ds_cfg r10, zero, 14
	loadli.w r1,  -172(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -120(r30)                 # 4-byte Folded Reload
	shuffle_batch r1, r2, r10, 4
	addli r1, zero, 38
	unlock zero
	xsignal r1, 0
	addli r1, zero, 53
	j .LBB0_162
.LBB0_124:                              #   in Loop: Header=BB0_13 Depth=1
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	addli r1, zero, 22
	addli r2, zero, 1024
	xwait r1, 0
	addli r1, zero, 31
	xwait r1, 0
	lock zero, zero
	ds_cfg r21, zero, 0
	ds_cfg r10, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r10, zero, 13
	loadli.w r1,  -124(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -8(r30)                   # 4-byte Folded Reload
	shuffle_coa r1, r3, r2, 4
	addli r1, zero, 23
	unlock zero
	xsignal r1, 0
	addli r1, zero, 32
	xsignal r1, 0
	beq r9, zero, .LBB0_122
.LBB0_125:                              # %.critedge12
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 32
	addli r2, zero, 1024
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	addli r4, zero, 1
	addli r5, zero, 1
	addli r6, zero, 1
	.loc	1 48 11                         # ieee-multiply.mlir:48:11
	xwait r1, 0
	addli r1, zero, 35
	xwait r1, 0
	lock zero, r21
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r2, zero, zero, 3
	loadli.w r2,  -124(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -120(r30)                 # 4-byte Folded Reload
	ssreduce r3, r2, 0
	addli r2, zero, 33
	unlock r21
	xsignal r2, 0
	.loc	1 54 11                         # ieee-multiply.mlir:54:11
	lock zero, r21
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	ew_cfg r10, zero, zero, 3
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 8192
	ewcoeff_cfg zero, zero, zero, 0
	ewcoeff_nlf_cfg r1, 4
	addli r1, zero, 6
	hp_ssmul r3, r3, r3, 0
	unlock r21
	xsignal r1, 0
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	lock zero, r21
	ew_cfg zero, zero, zero, 1
	loadli.w r1,  -176(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r2, zero, r1, 0
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	addli r2, r3, 0
	addli r1, zero, 36
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	ew_cfg zero, zero, zero, 2
	ew_cfg r10, zero, zero, 3
	dsmadd r3, r3, r3, 0
	unlock r21
	xsignal r1, 0
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	xwait r1, 0
	xfence
	jal _ZN3xpu10math_rsqrtEPU3AS2fS1_iii
	load.d r[22:23], -32(r30)               # 8-byte Folded Reload
	load.d r[14:15], -80(r30)               # 8-byte Folded Reload
	loadli.w r13,  -84(r30)                 # 4-byte Folded Reload
	loadli.w r9,  -116(r30)                 # 4-byte Folded Reload
	addli r1, zero, 37
	addli r12, zero, 4096
	addli r11, zero, 3
	addli r10, zero, 1
	xsignal r1, 0
	.loc	1 57 11                         # ieee-multiply.mlir:57:11
	beq r20, r21, .LBB0_123
.LBB0_126:                              #   in Loop: Header=BB0_13 Depth=1
	beq r20, r11, .LBB0_161
# %bb.127:                              #   in Loop: Header=BB0_13 Depth=1
	.loc	1 58 23                         # ieee-multiply.mlir:58:23
	bneq r9, zero, .LBB0_163
.LBB0_128:                              #   in Loop: Header=BB0_13 Depth=1
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	beq r20, r11, .LBB0_164
.LBB0_129:                              # %.critedge16
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 81 23                         # ieee-multiply.mlir:81:23
	bneq r9, zero, .LBB0_177
.LBB0_130:                              #   in Loop: Header=BB0_13 Depth=1
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	bneq r20, r11, .LBB0_178
.LBB0_131:                              # %vector.ph
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 25
	xwait r1, 0
	addli r1, zero, 56
	xwait r1, 0
	addli r1, zero, 59
	xwait r1, 0
	xfence
	zext_int2long r[1:2], zero
	mfence { lm, sm, gm }
	j .LBB0_133
.LBB0_132:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	loadli.w r4,  -12(r30)                  # 4-byte Folded Reload
	addli.d r[1:2], r[1:2], 4
	loadli.w r6,  -8(r30)                   # 4-byte Folded Reload
	loadli.w r7,  -20(r30)                  # 4-byte Folded Reload
	setneq.d r5, r[1:2], r[22:23]
	add.s r4, r3, r4
	add.s r6, r3, r6
	stores.w r8, 0(r4)
	loadli.w r4,  -16(r30)                  # 4-byte Folded Reload
	stores.w r12, 0(r6)
	add.s r4, r3, r4
	add.s r3, r3, r7
	stores.w r9, 0(r4)
	stores.w r11, 0(r3)
	beq r5, zero, .LBB0_11
.LBB0_133:                              # %vector.body
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r3, r1, 2
	add.s r4, r3, r24
	loads.w r5, 0(r3)
	add.s r15, r3, r13
	loads.w r6, 4(r3)
	loads.w r7, 8(r3)
	loads.w r9, 12(r3)
	loads.w r11, 0(r4)
	loads.w r13, 4(r4)
	loads.w r12, 8(r4)
	loads.w r10, 12(r4)
	loads.w r8, 12(r15)
	loads.w r14, 4(r15)
	.loc	1 89 24                         # ieee-multiply.mlir:89:24
	and r4, r5, r27
	.loc	1 88 24                         # ieee-multiply.mlir:88:24
	and r5, r11, r27
	.loc	1 95 25                         # ieee-multiply.mlir:95:25
	seteq r16, r4, zero
	.loc	1 93 24                         # ieee-multiply.mlir:93:24
	seteq r17, r4, r26
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	loads.w r11, 8(r15)
	.loc	1 92 24                         # ieee-multiply.mlir:92:24
	seteq r18, r5, r26
	.loc	1 94 25                         # ieee-multiply.mlir:94:25
	seteq r19, r5, zero
	.loc	1 99 27                         # ieee-multiply.mlir:99:27
	max.u r4, r5, r4
	setlt.u r4, r26, r4
	.loc	1 96 29                         # ieee-multiply.mlir:96:29
	and r5, r18, r16
	.loc	1 97 29                         # ieee-multiply.mlir:97:29
	and r16, r19, r17
	.loc	1 98 27                         # ieee-multiply.mlir:98:27
	or r5, r5, r16
	.loc	1 100 23                        # ieee-multiply.mlir:100:23
	or r16, r4, r5
	lui r4, 523264
	lui r5, 523264
	.loc	1 102 25                        # ieee-multiply.mlir:102:25
	bneq r16, zero, .LBB0_135
# %bb.134:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	loads.w r5, 0(r15)
.LBB0_135:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	and r13, r13, r27
	and r6, r6, r27
	seteq r15, r13, r26
	seteq r16, r6, zero
	seteq r17, r6, r26
	seteq r18, r13, zero
	max.u r6, r13, r6
	setlt.u r6, r26, r6
	and r13, r15, r16
	and r15, r18, r17
	or r13, r13, r15
	or r13, r6, r13
	lui r6, 523264
	.loc	1 102 25                        # ieee-multiply.mlir:102:25
	bneq r13, zero, .LBB0_137
# %bb.136:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r6, r14, 0
.LBB0_137:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	and r12, r12, r27
	and r7, r7, r27
	seteq r13, r12, r26
	seteq r14, r7, zero
	seteq r15, r7, r26
	seteq r16, r12, zero
	max.u r7, r12, r7
	setlt.u r7, r26, r7
	and r12, r13, r14
	and r13, r16, r15
	or r12, r12, r13
	or r12, r7, r12
	lui r7, 523264
	.loc	1 102 25                        # ieee-multiply.mlir:102:25
	bneq r12, zero, .LBB0_139
# %bb.138:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r7, r11, 0
.LBB0_139:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	and r10, r10, r27
	and r9, r9, r27
	seteq r11, r10, r26
	seteq r12, r9, zero
	seteq r13, r9, r26
	seteq r14, r10, zero
	max.u r9, r10, r9
	setlt.u r9, r26, r9
	and r10, r11, r12
	and r11, r14, r13
	or r10, r10, r11
	or r9, r9, r10
	.loc	1 102 25                        # ieee-multiply.mlir:102:25
	bneq r9, zero, .LBB0_141
# %bb.140:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r4, r8, 0
.LBB0_141:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	.loc	1 106 11 is_stmt 1              # ieee-multiply.mlir:106:11
	and r10, r4, r27
	setlt.u r8, r26, r10
	bneq r8, zero, .LBB0_143
# %bb.142:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r8, r4, 0
	j .LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_133 Depth=2
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	or r8, r4, r25
.LBB0_144:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	and r13, r7, r27
	setlt.u r9, r26, r13
	bneq r9, zero, .LBB0_146
# %bb.145:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r9, r7, 0
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_133 Depth=2
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	or r9, r7, r25
.LBB0_147:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	and r14, r6, r27
	setlt.u r11, r26, r14
	bneq r11, zero, .LBB0_149
# %bb.148:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r11, r6, 0
	j .LBB0_150
.LBB0_149:                              #   in Loop: Header=BB0_133 Depth=2
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	or r11, r6, r25
.LBB0_150:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	and r15, r5, r27
	setlt.u r12, r26, r15
	bneq r12, zero, .LBB0_152
# %bb.151:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r12, r5, 0
	j .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_133 Depth=2
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	or r12, r5, r25
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	loadli.w r16,  -4(r30)                  # 4-byte Folded Reload
	setlt.u r15, r16, r15
	bneq r15, zero, .LBB0_155
# %bb.154:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r12, r5, 16
	andi r12, r12, 1
	add.s r5, r5, r12
	lui r12, 1048560
	add.s r5, r5, r28
	and r12, r5, r12
.LBB0_155:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	loadli.w r15,  -4(r30)                  # 4-byte Folded Reload
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	setlt.u r5, r15, r14
	bneq r5, zero, .LBB0_157
# %bb.156:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	lui r6, 1048560
	add.s r5, r5, r28
	and r11, r5, r6
.LBB0_157:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	setlt.u r5, r15, r13
	load.d r[14:15], -80(r30)               # 8-byte Folded Reload
	bneq r5, zero, .LBB0_159
# %bb.158:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r5, r7, 16
	lui r6, 1048560
	andi r5, r5, 1
	add.s r5, r7, r5
	add.s r5, r5, r28
	and r9, r5, r6
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	loadli.w r13,  -84(r30)                 # 4-byte Folded Reload
	setlt.u r5, r5, r10
	bneq r5, zero, .LBB0_132
# %bb.160:                              # %vector.body
                                        #   in Loop: Header=BB0_133 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	lui r5, 1048560
	add.s r4, r4, r28
	and r8, r4, r5
	j .LBB0_132
.LBB0_161:                              #   in Loop: Header=BB0_13 Depth=1
	.loc	1 57 11 is_stmt 1               # ieee-multiply.mlir:57:11
	addli r1, zero, 23
	addli r2, zero, 1024
	xwait r1, 0
	addli r1, zero, 53
	xwait r1, 0
	addli r1, zero, 32
	lock zero, r11
	rs_cfg zero, r10, r1, 0
	rs_cfg zero, r10, zero, 2
	loadli.w r1,  -172(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -8(r30)                   # 4-byte Folded Reload
	rs_row r3, r1, r2, 0
	addli r1, zero, 24
	unlock r11
	xsignal r1, 0
	addli r1, zero, 54
.LBB0_162:                              #   in Loop: Header=BB0_13 Depth=1
	xsignal r1, 0
	.loc	1 58 23                         # ieee-multiply.mlir:58:23
	beq r9, zero, .LBB0_128
.LBB0_163:                              #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 38
	xwait r1, 0
	addli r1, zero, 49
	xwait r1, 0
	xfence
	lui r1, 260096
	mfence { lm, sm, gm }
	lock zero, r21
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 1023
	ew_cfg zero, r1, zero, 2
	ew_cfg r10, zero, zero, 3
	loadli.w r1,  -120(r30)                 # 4-byte Folded Reload
	loads.w r1, 0(r1)
	ewcoeff_cfg r1, zero, zero, 0
	loadli.w r1,  -88(r30)                  # 4-byte Folded Reload
	hp_ssmul r1, r1, r1, 0
	addli r1, zero, 39
	unlock r21
	xsignal r1, 0
	addli r1, zero, 48
	xsignal r1, 0
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r20, r11, .LBB0_129
.LBB0_164:                              # %vector.ph53
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 24
	xwait r1, 0
	addli r1, zero, 45
	xwait r1, 0
	addli r1, zero, 48
	xwait r1, 0
	addli r1, zero, 57
	xwait r1, 0
	xfence
	zext_int2long r[1:2], zero
	mfence { lm, sm, gm }
	j .LBB0_166
.LBB0_165:                              # %vector.body54
                                        #   in Loop: Header=BB0_166 Depth=2
	addli.d r[1:2], r[1:2], 4
	add.s r3, r3, r24
	setneq.d r4, r[1:2], r[22:23]
	stores.w r7, 12(r3)
	stores.w r9, 8(r3)
	stores.w r12, 4(r3)
	stores.w r6, 0(r3)
	beq r4, zero, .LBB0_174
.LBB0_166:                              # %vector.body54
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	lui r4, 38
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	slli r3, r1, 7
	loadli.w r5,  -8(r30)                   # 4-byte Folded Reload
	loadli.w r8,  -16(r30)                  # 4-byte Folded Reload
	ori r4, r4, 1536
	add.s r4, r3, r4
	slli r3, r1, 2
	add.s r5, r3, r5
	loads.w r6, 0(r4)
	loads.w r12, 128(r4)
	loads.w r9, 256(r4)
	add.s r8, r3, r8
	loads.w r7, 0(r5)
	loads.w r5, 384(r4)
	loadli.w r4,  -20(r30)                  # 4-byte Folded Reload
	loads.w r10, 0(r8)
	loadli.w r8,  -88(r30)                  # 4-byte Folded Reload
	add.s r4, r3, r4
	add.s r15, r3, r8
	loads.w r13, 0(r4)
	loadli.w r4,  -12(r30)                  # 4-byte Folded Reload
	loads.w r11, 8(r15)
	loads.w r14, 4(r15)
	add.s r4, r3, r4
	.loc	1 65 24 is_stmt 1               # ieee-multiply.mlir:65:24
	and r6, r6, r27
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	loads.w r8, 0(r4)
	loads.w r4, 12(r15)
	.loc	1 66 24                         # ieee-multiply.mlir:66:24
	and r7, r7, r27
	.loc	1 69 24                         # ieee-multiply.mlir:69:24
	seteq r16, r6, r26
	.loc	1 71 25                         # ieee-multiply.mlir:71:25
	seteq r19, r6, zero
	.loc	1 72 25                         # ieee-multiply.mlir:72:25
	seteq r17, r7, zero
	.loc	1 70 24                         # ieee-multiply.mlir:70:24
	seteq r18, r7, r26
	.loc	1 76 27                         # ieee-multiply.mlir:76:27
	max.u r6, r6, r7
	setlt.u r6, r26, r6
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
	bneq r16, zero, .LBB0_168
# %bb.167:                              # %vector.body54
                                        #   in Loop: Header=BB0_166 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	loads.w r6, 0(r15)
.LBB0_168:                              # %vector.body54
                                        #   in Loop: Header=BB0_166 Depth=2
	and r12, r12, r27
	and r13, r13, r27
	seteq r15, r12, r26
	seteq r18, r12, zero
	seteq r16, r13, zero
	seteq r17, r13, r26
	max.u r12, r12, r13
	setlt.u r12, r26, r12
	and r13, r15, r16
	and r15, r18, r17
	or r13, r13, r15
	or r13, r12, r13
	lui r12, 523264
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r13, zero, .LBB0_170
# %bb.169:                              # %vector.body54
                                        #   in Loop: Header=BB0_166 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r12, r14, 0
.LBB0_170:                              # %vector.body54
                                        #   in Loop: Header=BB0_166 Depth=2
	and r9, r9, r27
	and r10, r10, r27
	seteq r13, r9, r26
	seteq r16, r9, zero
	seteq r14, r10, zero
	seteq r15, r10, r26
	max.u r9, r9, r10
	setlt.u r9, r26, r9
	and r10, r13, r14
	and r13, r16, r15
	or r10, r10, r13
	or r10, r9, r10
	lui r9, 523264
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r10, zero, .LBB0_172
# %bb.171:                              # %vector.body54
                                        #   in Loop: Header=BB0_166 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r9, r11, 0
.LBB0_172:                              # %vector.body54
                                        #   in Loop: Header=BB0_166 Depth=2
	and r5, r5, r27
	and r8, r8, r27
	seteq r10, r5, r26
	seteq r14, r5, zero
	seteq r11, r8, zero
	seteq r13, r8, r26
	max.u r5, r5, r8
	setlt.u r5, r26, r5
	and r8, r10, r11
	and r10, r14, r13
	or r8, r8, r10
	or r5, r5, r8
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	bneq r5, zero, .LBB0_165
# %bb.173:                              # %vector.body54
                                        #   in Loop: Header=BB0_166 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r7, r4, 0
	j .LBB0_165
.LBB0_174:                              # %middle.block59
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 79 25                         # ieee-multiply.mlir:79:25
	addli r1, zero, 25
	mfence { sm }
	xsignal r1, 0
	addli r1, zero, 46
	xsignal r1, 0
	addli r1, zero, 50
	xsignal r1, 0
	addli r1, zero, 55
	xsignal r1, 0
	.loc	1 80 11 is_stmt 1               # ieee-multiply.mlir:80:11
	xwait r1, 0
	addli r1, zero, 60
	xwait r1, 0
	xfence
	zext_int2long r[1:2], zero
	mfence { lm, sm, gm }
	loadli.w r13,  -84(r30)                 # 4-byte Folded Reload
.LBB0_175:                              # %vector.body47
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r3, r1, 2
	addli.d r[1:2], r[1:2], 8
	add.s r4, r3, r24
	add.s r3, r3, r13
	loads.d r[5:6], 8(r4)
	loads.d r[7:8], 0(r4)
	loads.d r[9:10], 24(r4)
	loads.d r[11:12], 16(r4)
	setneq.d r4, r[1:2], r[22:23]
	stores.d r[5:6], 8(r3)
	stores.d r[7:8], 0(r3)
	stores.d r[9:10], 24(r3)
	stores.d r[11:12], 16(r3)
	bneq r4, zero, .LBB0_175
# %bb.176:                              # %middle.block52
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 56
	mfence { sm }
	addli r10, zero, 1
	addli r11, zero, 3
	addli r12, zero, 4096
	xsignal r1, 0
	addli r1, zero, 58
	xsignal r1, 0
	loadli.w r9,  -116(r30)                 # 4-byte Folded Reload
	load.d r[14:15], -80(r30)               # 8-byte Folded Reload
	.loc	1 81 23                         # ieee-multiply.mlir:81:23
	beq r9, zero, .LBB0_130
.LBB0_177:                              #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 58
	xwait r1, 0
	lock zero, r21
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 1023
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 59
	ew_cfg r10, zero, zero, 3
	dsmul r13, r13, zero, 0
	unlock r21
	xsignal r1, 0
	.loc	1 106 11                        # ieee-multiply.mlir:106:11
	beq r20, r11, .LBB0_131
.LBB0_178:                              #   in Loop: Header=BB0_13 Depth=1
	.loc	1 107 5                         # ieee-multiply.mlir:107:5
	bneq r20, zero, .LBB0_12
# %bb.179:                              #   in Loop: Header=BB0_13 Depth=1
	load.d r[1:2], -136(r30)                # 8-byte Folded Reload
	addli r3, zero, 26
	addli r5, zero, 64
	xwait r3, 0
	load.d r[3:4], 24(r30)
	sll.d r[1:2], r[1:2], r10
	add.ul r[1:2], r[3:4], r[1:2]
	addli r4, zero, 5
	lui r3, 4
	lock zero, r4
	ori r3, r3, 1216
	dma_cfg r10, r10, zero, 0
	dma_cfg zero, r10, zero, 1
	dma_cfg r2, zero, zero, 2
	dma_cfg r1, r3, r5, 3
	addli r1, zero, 32
	addli r2, zero, 128
	dma_cfg r5, r2, r1, 4
	addli r1, zero, 2048
	load.d r[2:3], -144(r30)                # 8-byte Folded Reload
	dma_cfg r1, r12, r2, 5
	addli r1, zero, 27
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	xsignal r1, 0
	j .LBB0_12
.LBB0_180:                              # %._crit_edge
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	addli r1, zero, 3
	beq r20, r1, .LBB0_184
# %bb.181:
	bneq r9, zero, .LBB0_185
.LBB0_182:
	.loc	1 2 3 is_stmt 1                 # ieee-multiply.mlir:2:3
	xsignal zero, 0
	beq r20, zero, .LBB0_186
.LBB0_183:
	.loc	1 2 3 epilogue_begin is_stmt 0  # ieee-multiply.mlir:2:3
	addli sp, sp, 192
	mfence { lm, sm, gm }
	exit
.LBB0_184:
	.loc	1 0 3                           # ieee-multiply.mlir:0:3
	xsignal r1, 0
	beq r9, zero, .LBB0_182
.LBB0_185:
	addli r1, zero, 5
	xsignal r1, 0
	.loc	1 2 3                           # ieee-multiply.mlir:2:3
	xsignal zero, 0
	bneq r20, zero, .LBB0_183
.LBB0_186:
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
	j .LBB0_183
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/native-activation-94yp4y0f" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
