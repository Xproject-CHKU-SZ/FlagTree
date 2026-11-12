	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/native-activation-5q_pw57x" "ieee-multiply.mlir"
	.loc	1 2 0                           # ieee-multiply.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -128
	addli r1, zero, 1
.Ltmp0:
	.loc	1 24 11 prologue_end            # ieee-multiply.mlir:24:11
	core_id r6
	addli r30, sp, 64
	xsignal_mode_cfg r1
	beq r6, zero, .LBB0_2
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
	addli r1, zero, 9
	addli r2, zero, 11
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 13
	addli r2, zero, 15
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 17
	addli r2, zero, 19
	xsignal r1, 0
	xsignal r2, 0
.LBB0_3:
	loadli.w r1,  32(r30)
	loadli.w r2,  36(r30)
	load_param_i r4, 1
	loadli.w r3,  40(r30)
	addli r5, zero, 1
	mul.s r1, r2, r1
	addli r2, r4, 0
	fmac.s r2, r1, r3
	mul.s r1, r1, r3
	addli r2, r2, -1
	div.s r2, r2, r4
	load_param_i r4, 0
	mul.s r16, r2, r4
	fmac.s r2, r2, r4
	min.s r3, r2, r1
	.loc	1 24 11                         # ieee-multiply.mlir:24:11
	bneq r6, r5, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r17, zero, 3
	addli r8, zero, 5
	storeli.w zero, -60(r30)                # 4-byte Folded Spill
	addli r1, zero, 2
	addli r9, zero, 4
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
	addli r12, zero, 29
	addli r11, zero, 30
	addli r10, zero, 31
	addli r15, zero, 64
	addli r7, zero, 32
	addli r6, zero, 128
	addli r4, zero, 4096
	.loc	1 24 11                         # ieee-multiply.mlir:24:11
	xwait r17, 0
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 6
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
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
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg r5, r5, zero, 0
	dma_cfg r5, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg zero, zero, r15, 3
	dma_cfg r6, zero, r7, 4
	dma_cfg r4, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	lock zero, r9
	dma_cfg r5, r5, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r15, r1, r15, 3
	addli r1, zero, 2048
	addli r2, zero, 6
	dma_cfg r6, r15, r7, 4
	dma_cfg r4, r1, r5, 5
	addli r1, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
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
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg r5, r5, zero, 0
	dma_cfg r5, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg zero, zero, r15, 3
	dma_cfg r6, zero, r7, 4
	core_id r6
	loadli.w r7,  -60(r30)                  # 4-byte Folded Reload
	dma_cfg r4, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	xsignal r1, 0
	ble.s r3, r16, .LBB0_66
	j .LBB0_8
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r1, zero, 5
	bneq r6, r1, .LBB0_7
# %bb.6:
	addli r1, zero, 2
	addli r7, zero, 1
	xwait r1, 0
	ble.s r3, r16, .LBB0_66
	j .LBB0_8
.LBB0_7:
	addli r7, zero, 0
	ble.s r3, r16, .LBB0_66
.LBB0_8:                                # %.lr.ph
	addli r1, zero, 511
	sext_int2long r[19:20], r3
	sext_int2long r[8:9], r16
	zext_int2long r[3:4], zero
	addli r10, zero, 5
	addli r12, zero, 2
	addli r26, zero, 1023
	addli r17, zero, 1
	addli r18, zero, 4
	addli r16, zero, 9
	addli r23, zero, 6
	addli r25, zero, 11
	addli r21, zero, 8
	addli r24, zero, 3
	lui r22, 522240
	lui r13, 4
	storeli.w r7, -60(r30)                  # 4-byte Folded Spill
	zext_int2long r[1:2], r1
	store.d r[3:4], -32(r30)                # 8-byte Folded Spill
	store.d r[19:20], -56(r30)              # 8-byte Folded Spill
	store.d r[1:2], -24(r30)                # 8-byte Folded Spill
	lui r1, 524287
	ori r28, r1, 4095
	lui r1, 7
	ori r2, r1, 4095
	lui r1, 522239
	ori r11, r1, 4095
	j .LBB0_13
.LBB0_9:                                # %.thread4
                                        #   in Loop: Header=BB0_13 Depth=1
	srli r3, r1, 16
	andi r3, r3, 1
	add.s r1, r1, r3
	lui r3, 1048560
	add.s r1, r1, r2
	and r4, r1, r3
.LBB0_10:                               # %.thread4
                                        #   in Loop: Header=BB0_13 Depth=1
	lui r1, 37
	ori r1, r1, 128
	.loc	1 61 11 is_stmt 1               # ieee-multiply.mlir:61:11
	stores.w r4, 0(r1)
	addli r1, zero, 17
	mfence { sm }
	xsignal r1, 0
	addli r1, zero, 18
.LBB0_11:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 0 is_stmt 0                 # ieee-multiply.mlir:0:0
	xsignal r1, 0
.LBB0_12:                               #   in Loop: Header=BB0_13 Depth=1
	addli.d r[8:9], r[8:9], 1
	setlt.sl r1, r[8:9], r[19:20]
	beq r1, zero, .LBB0_66
.LBB0_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	.loc	1 4 14 is_stmt 1                # ieee-multiply.mlir:4:14
	beq r7, zero, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	xwait r10, 0
	lock zero, r12
	addli r1, zero, 4096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r26, zero, 2
	ew_cfg r17, zero, zero, 3
	ssaux r1, 0
	unlock r12
	xsignal r18, 0
.LBB0_15:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 14 is_stmt 0                # ieee-multiply.mlir:0:14
	loadli.w r1,  40(r30)
	loadli.w r3,  36(r30)
	div.s r1, r8, r1
	div.s r1, r1, r3
	.loc	1 21 11 is_stmt 1               # ieee-multiply.mlir:21:11
	load.d r[3:4], -24(r30)                 # 8-byte Folded Reload
	.loc	1 60 11                         # ieee-multiply.mlir:60:11
	sext_int2long r[14:15], r1
	storeli.w r1, -4(r30)                   # 4-byte Folded Spill
	.loc	1 21 11                         # ieee-multiply.mlir:21:11
	min.sl r[4:5], r[14:15], r[3:4]
	store.d r[14:15], -16(r30)              # 8-byte Folded Spill
	addli.d r[4:5], r[4:5], 1
	max.sl r[4:5], r[4:5], r[14:15]
	sub.sl r[14:15], r[4:5], r[14:15]
	bneq r6, r17, .LBB0_51
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=1
	load.d r[3:4], -32(r30)                 # 8-byte Folded Reload
	xwait r16, 0
	setlt.sl r1, r[3:4], r[14:15]
	bneq r1, zero, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_13 Depth=1
	lock zero, r12
	addli r1, zero, 8192
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r26, zero, 2
	ew_cfg r17, zero, zero, 3
	ssaux r1, 0
	unlock r12
.LBB0_18:                               # %.thread3
                                        #   in Loop: Header=BB0_13 Depth=1
	xsignal r23, 0
	.loc	1 27 23                         # ieee-multiply.mlir:27:23
	bneq r7, zero, .LBB0_54
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	bneq r6, r24, .LBB0_55
.LBB0_20:                               # %vector.ph
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 10
	store.d r[14:15], -48(r30)              # 8-byte Folded Spill
	store.d r[8:9], -40(r30)                # 8-byte Folded Spill
	xwait r18, 0
	xwait r21, 0
	xwait r1, 0
	addli r1, zero, 13
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	load.d r[24:25], -32(r30)               # 8-byte Folded Reload
	j .LBB0_22
.LBB0_21:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	ori r1, r13, 12
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	addli.d r[24:25], r[24:25], 4
	add.s r5, r21, r13
	add.s r1, r21, r1
	stores.w r26, 0(r5)
	stores.w r15, 0(r1)
	addli r1, zero, 1024
	zext_int2long r[3:4], r1
	ori r1, r13, 8
	setneq.d r3, r[24:25], r[3:4]
	ori r4, r13, 4
	add.s r1, r21, r1
	add.s r4, r21, r4
	stores.w r16, 0(r1)
	stores.w r17, 0(r4)
	beq r3, zero, .LBB0_61
.LBB0_22:                               # %vector.body
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r21, r24, 2
	addli r4, r21, 8204
	addli r1, r21, 8192
	addli r5, r21, 8200
	addli r7, r21, 8196
	addli r9, r21, 4096
	addli r18, r21, 4100
	loads.w r10, 8(r21)
	loads.w r15, 4(r21)
	loads.w r16, 0(r21)
	loads.w r4, 0(r4)
	loads.w r17, 0(r1)
	loads.w r1, 12(r21)
	loads.w r6, 0(r5)
	addli r5, r21, 12288
	loads.w r8, 0(r7)
	addli r7, r21, 12296
	loads.w r26, 0(r5)
	addli r5, r21, 12292
	loads.w r14, 0(r5)
	loads.w r5, 0(r7)
	addli r7, r21, 4108
	loads.w r19, 0(r7)
	addli r7, r21, 4104
	loads.w r12, 0(r7)
	loads.w r7, 0(r18)
	.loc	1 34 24 is_stmt 1               # ieee-multiply.mlir:34:24
	and r4, r4, r28
	.loc	1 35 24                         # ieee-multiply.mlir:35:24
	and r1, r1, r28
	.loc	1 38 24                         # ieee-multiply.mlir:38:24
	seteq r20, r4, r22
	.loc	1 41 25                         # ieee-multiply.mlir:41:25
	seteq r23, r1, zero
	.loc	1 39 24                         # ieee-multiply.mlir:39:24
	seteq r3, r1, r22
	.loc	1 40 25                         # ieee-multiply.mlir:40:25
	seteq r27, r4, zero
	.loc	1 45 27                         # ieee-multiply.mlir:45:27
	max.u r1, r4, r1
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	loads.w r4, 0(r9)
	.loc	1 45 27                         # ieee-multiply.mlir:45:27
	setlt.u r1, r22, r1
	.loc	1 42 29                         # ieee-multiply.mlir:42:29
	and r9, r20, r23
	.loc	1 43 29                         # ieee-multiply.mlir:43:29
	and r3, r27, r3
	.loc	1 44 27                         # ieee-multiply.mlir:44:27
	or r3, r9, r3
	lui r9, 523264
	.loc	1 46 23                         # ieee-multiply.mlir:46:23
	or r3, r1, r3
	lui r1, 523264
	.loc	1 48 25                         # ieee-multiply.mlir:48:25
	bneq r3, zero, .LBB0_24
# %bb.23:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	addli r1, r21, 12300
	loads.w r1, 0(r1)
.LBB0_24:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	and r3, r6, r28
	and r6, r10, r28
	seteq r10, r3, r22
	seteq r23, r3, zero
	seteq r18, r6, zero
	seteq r20, r6, r22
	max.u r3, r3, r6
	setlt.u r3, r22, r3
	and r6, r10, r18
	and r10, r23, r20
	or r6, r6, r10
	lui r10, 523264
	or r3, r3, r6
	.loc	1 48 25                         # ieee-multiply.mlir:48:25
	bneq r3, zero, .LBB0_26
# %bb.25:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r10, r5, 0
.LBB0_26:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	and r3, r8, r28
	and r5, r15, r28
	seteq r6, r3, r22
	seteq r18, r3, zero
	seteq r8, r5, zero
	seteq r15, r5, r22
	max.u r3, r3, r5
	setlt.u r3, r22, r3
	and r5, r6, r8
	and r6, r18, r15
	lui r8, 523264
	or r5, r5, r6
	or r3, r3, r5
	.loc	1 48 25                         # ieee-multiply.mlir:48:25
	bneq r3, zero, .LBB0_28
# %bb.27:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r8, r14, 0
.LBB0_28:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	and r5, r16, r28
	and r3, r17, r28
	seteq r6, r3, r22
	seteq r16, r3, zero
	seteq r14, r5, zero
	seteq r15, r5, r22
	max.u r3, r3, r5
	setlt.u r3, r22, r3
	and r5, r6, r14
	and r6, r16, r15
	or r5, r5, r6
	or r3, r3, r5
	.loc	1 48 25                         # ieee-multiply.mlir:48:25
	bneq r3, zero, .LBB0_30
# %bb.29:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r9, r26, 0
.LBB0_30:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 50 11 is_stmt 1               # ieee-multiply.mlir:50:11
	and r14, r9, r28
	setlt.u r3, r22, r14
	bneq r3, zero, .LBB0_32
# %bb.31:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r26, r9, 0
	j .LBB0_33
.LBB0_32:                               #   in Loop: Header=BB0_22 Depth=2
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	lui r3, 1024
	or r26, r9, r3
.LBB0_33:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	and r5, r8, r28
	setlt.u r3, r22, r5
	bneq r3, zero, .LBB0_35
# %bb.34:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r17, r8, 0
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_22 Depth=2
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	lui r3, 1024
	or r17, r8, r3
.LBB0_36:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	and r6, r10, r28
	setlt.u r3, r22, r6
	bneq r3, zero, .LBB0_38
# %bb.37:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r16, r10, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_22 Depth=2
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	lui r3, 1024
	or r16, r10, r3
.LBB0_39:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	and r18, r1, r28
	setlt.u r3, r22, r18
	bneq r3, zero, .LBB0_41
# %bb.40:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r15, r1, 0
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	setlt.u r3, r11, r18
	beq r3, zero, .LBB0_42
	j .LBB0_43
.LBB0_41:                               #   in Loop: Header=BB0_22 Depth=2
	lui r3, 1024
	or r15, r1, r3
	setlt.u r3, r11, r18
	bneq r3, zero, .LBB0_43
.LBB0_42:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r3, r1, 16
	andi r3, r3, 1
	add.s r1, r1, r3
	lui r3, 1048560
	add.s r1, r1, r2
	and r15, r1, r3
.LBB0_43:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	setlt.u r1, r11, r6
	bneq r1, zero, .LBB0_49
# %bb.44:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r1, r10, 16
	lui r3, 1048560
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r2
	and r16, r1, r3
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	setlt.u r1, r11, r5
	beq r1, zero, .LBB0_50
.LBB0_45:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	setlt.u r1, r11, r14
	bneq r1, zero, .LBB0_47
.LBB0_46:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r1, r9, 16
	lui r3, 1048560
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r2
	and r26, r1, r3
.LBB0_47:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 52 11 is_stmt 1               # ieee-multiply.mlir:52:11
	loadli.w r3,  -4(r30)                   # 4-byte Folded Reload
	addli r1, zero, 512
	blt.s r3, r1, .LBB0_21
# %bb.48:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r26, r4, 0
	addli r17, r7, 0
	addli r16, r12, 0
	addli r15, r19, 0
	j .LBB0_21
.LBB0_49:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 50 11 is_stmt 1               # ieee-multiply.mlir:50:11
	setlt.u r1, r11, r5
	bneq r1, zero, .LBB0_45
.LBB0_50:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	srli r1, r8, 16
	lui r3, 1048560
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r2
	and r17, r1, r3
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	setlt.u r1, r11, r14
	beq r1, zero, .LBB0_46
	j .LBB0_47
.LBB0_51:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 21 11 is_stmt 1               # ieee-multiply.mlir:21:11
	bneq r6, r23, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_13 Depth=1
	load.d r[3:4], -16(r30)                 # 8-byte Folded Reload
	xwait r23, 0
	lock zero, r10
	addli r1, zero, 7
	addli.d r[19:20], r[14:15], 0
	load.d r[14:15], 0(r30)
	addli r27, zero, 32
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r12, 10
	sll.d r[4:5], r[3:4], r25
	addli r3, zero, 128
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 13
	dma_cfg zero, zero, r18, 10
	add.ul r[4:5], r[14:15], r[4:5]
	addli r15, zero, 31
	addli r14, zero, 8256
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 64
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 18
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
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
	addli r1, zero, 25
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 26
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 27
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 28
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 29
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 30
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8192
	dma_cfg zero, zero, r15, 10
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r16, 3
	addli r1, zero, 4096
	dma_cfg r3, zero, r27, 4
	dma_cfg r1, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r18
	dma_cfg r17, r17, zero, 0
	dma_cfg zero, r5, zero, 2
	dma_cfg r14, r4, r16, 3
	addli r4, zero, 2048
	addli r5, zero, 7
	dma_cfg r3, r16, r27, 4
	dma_cfg r1, r4, r19, 5
	addli r4, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 12
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 3
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 15
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 16
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 17
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 18
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 19
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 20
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 21
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
	addli r4, zero, 27
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 28
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 29
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 30
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8192
	dma_cfg zero, zero, r15, 10
	addli.d r[14:15], r[19:20], 0
	load.d r[19:20], -56(r30)               # 8-byte Folded Reload
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r4, zero, r16, 3
	addli r16, zero, 9
	dma_cfg r3, zero, r27, 4
	dma_cfg r1, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r5, 0
	.loc	1 27 23                         # ieee-multiply.mlir:27:23
	beq r7, zero, .LBB0_19
	j .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_13 Depth=1
	beq r7, zero, .LBB0_19
.LBB0_54:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 7
	addli r3, zero, 12288
	xwait r1, 0
	xwait r25, 0
	lock zero, r12
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 8192
	ew_cfg zero, r26, zero, 2
	ew_cfg r17, zero, zero, 3
	dsmul r3, r1, zero, 0
	addli r1, zero, 10
	unlock r12
	xsignal r21, 0
	xsignal r1, 0
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	beq r6, r24, .LBB0_20
.LBB0_55:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 53 11                         # ieee-multiply.mlir:53:11
	bneq r6, r12, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 12
	lui r3, 5
	xwait r1, 0
	addli r1, zero, 15
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 1024
	ds_cfg r12, zero, 0
	ds_cfg r17, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r17, zero, 13
	shuffle_coa r3, r13, r1, 4
	addli r1, zero, 13
	unlock zero
	xsignal r1, 0
	addli r1, zero, 14
	xsignal r1, 0
	beq r7, zero, .LBB0_62
	j .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_13 Depth=1
	beq r7, zero, .LBB0_62
.LBB0_58:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 14
	lui r3, 37
	xwait r1, 0
	addli r1, zero, 17
	xwait r1, 0
	lock zero, r12
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 1024
	ew_cfg r1, zero, zero, 3
	lui r1, 5
	ssreduce r3, r1, 0
	addli r1, zero, 15
	unlock r12
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	.loc	1 61 11                         # ieee-multiply.mlir:61:11
	beq r6, r24, .LBB0_63
.LBB0_59:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 62 5                          # ieee-multiply.mlir:62:5
	bneq r6, zero, .LBB0_12
# %bb.60:                               #   in Loop: Header=BB0_13 Depth=1
	load.d r[3:4], -16(r30)                 # 8-byte Folded Reload
	addli r1, zero, 18
	addli.d r[26:27], r[19:20], 0
	addli.d r[19:20], r[14:15], 0
	load.d r[14:15], 16(r30)
	addli r5, zero, 64
	xwait r1, 0
	lui r1, 37
	lock zero, r10
	sll.d r[3:4], r[3:4], r17
	dma_cfg r17, r17, zero, 0
	dma_cfg zero, r17, zero, 1
	ori r1, r1, 192
	add.ul r[3:4], r[14:15], r[3:4]
	dma_cfg r4, zero, zero, 2
	dma_cfg r3, r1, r5, 3
	addli r1, zero, 128
	dma_cfg r5, r1, r17, 4
	dma_cfg r12, r1, r19, 5
	addli.d r[19:20], r[26:27], 0
	addli r26, zero, 1023
	addli r1, zero, 19
	dma_cfg zero, zero, r12, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	j .LBB0_11
.LBB0_61:                               # %.thread7
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	addli r10, zero, 5
	addli r16, zero, 9
	addli r25, zero, 11
	.loc	1 52 11 is_stmt 1               # ieee-multiply.mlir:52:11
	addli r1, zero, 12
	mfence { sm }
	.loc	1 24 11                         # ieee-multiply.mlir:24:11
	core_id r6
	addli r12, zero, 2
	addli r26, zero, 1023
	addli r17, zero, 1
	addli r18, zero, 4
	addli r23, zero, 6
	addli r21, zero, 8
	addli r24, zero, 3
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	xsignal r10, 0
	xsignal r16, 0
	xsignal r25, 0
	xsignal r1, 0
	loadli.w r7,  -60(r30)                  # 4-byte Folded Reload
	load.d r[8:9], -40(r30)                 # 8-byte Folded Reload
	load.d r[19:20], -56(r30)               # 8-byte Folded Reload
	load.d r[14:15], -48(r30)               # 8-byte Folded Reload
	.loc	1 53 11                         # ieee-multiply.mlir:53:11
	bneq r7, zero, .LBB0_58
.LBB0_62:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 61 11                         # ieee-multiply.mlir:61:11
	bneq r6, r24, .LBB0_59
.LBB0_63:                               # %.thread4
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 16
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	xfence
	lui r1, 37
	mfence { lm, sm, gm }
	loads.w r1, 0(r1)
	and r5, r1, r28
	setlt.u r3, r22, r5
	bneq r3, zero, .LBB0_65
# %bb.64:                               # %.thread4
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r4, r1, 0
	.loc	1 61 11                         # ieee-multiply.mlir:61:11
	setlt.u r3, r11, r5
	bneq r3, zero, .LBB0_10
	j .LBB0_9
.LBB0_65:                               #   in Loop: Header=BB0_13 Depth=1
	lui r3, 1024
	or r4, r1, r3
	setlt.u r3, r11, r5
	bneq r3, zero, .LBB0_10
	j .LBB0_9
.LBB0_66:                               # %._crit_edge
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r1, zero, 3
	bneq r6, r1, .LBB0_68
# %bb.67:                               # %.thread5
	xsignal r1, 0
	.loc	1 2 3 is_stmt 1                 # ieee-multiply.mlir:2:3
	xsignal zero, 0
	j .LBB0_70
.LBB0_68:
	xsignal zero, 0
	bneq r6, zero, .LBB0_70
# %bb.69:
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
.LBB0_70:
	.loc	1 2 3 epilogue_begin            # ieee-multiply.mlir:2:3
	addli sp, sp, 64
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
	.long	128                             # 0x80
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/native-activation-5q_pw57x" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
