	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/native-activation-m7a78f9j" "ieee-multiply.mlir"
	.loc	1 2 0                           # ieee-multiply.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -144
	addli r1, zero, 1
.Ltmp0:
	.loc	1 26 11 prologue_end            # ieee-multiply.mlir:26:11
	core_id r5
	addli r30, sp, 80
	xsignal_mode_cfg r1
	beq r5, zero, .LBB0_2
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
	addli r1, zero, 5
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 11
	addli r2, zero, 13
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 15
	addli r2, zero, 17
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 19
	addli r2, zero, 21
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
	mul.s r16, r2, r4
	fmac.s r2, r2, r4
	min.s r15, r2, r1
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	bneq r5, r3, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r14, zero, 3
	addli r6, zero, 5
	storeli.w zero, -60(r30)                # 4-byte Folded Spill
	addli r1, zero, 2
	addli r7, zero, 4
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
	addli r13, zero, 27
	addli r11, zero, 28
	addli r10, zero, 29
	addli r9, zero, 30
	addli r8, zero, 31
	addli r12, zero, 64
	addli r5, zero, 128
	addli r4, zero, 8192
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	xwait r14, 0
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 6
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r6, 10
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
	load.d r[1:2], 8(r30)
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
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg r3, r3, zero, 0
	dma_cfg r3, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg zero, zero, r12, 3
	dma_cfg r5, zero, r12, 4
	dma_cfg r4, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	lock zero, r7
	dma_cfg r3, r3, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r12, r1, r12, 3
	addli r1, zero, 4096
	addli r2, zero, 6
	dma_cfg r5, r12, r12, 4
	dma_cfg r4, r1, r3, 5
	addli r1, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r6, 10
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
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg r3, r3, zero, 0
	dma_cfg r3, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg zero, zero, r12, 3
	dma_cfg r5, zero, r12, 4
	core_id r5
	dma_cfg r4, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	loadli.w r6,  -60(r30)                  # 4-byte Folded Reload
	xsignal r1, 0
	ble.s r15, r16, .LBB0_73
	j .LBB0_8
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r1, zero, 5
	bneq r5, r1, .LBB0_7
# %bb.6:
	addli r1, zero, 2
	addli r6, zero, 1
	xwait r1, 0
	ble.s r15, r16, .LBB0_73
	j .LBB0_8
.LBB0_7:
	addli r6, zero, 0
	ble.s r15, r16, .LBB0_73
.LBB0_8:                                # %.lr.ph
	lui r1, 524287
	lui r2, 522239
	addli r14, zero, 2047
	sext_int2long r[9:10], r15
	addli r15, zero, 1
	sext_int2long r[7:8], r16
	addli r12, zero, 5
	addli r13, zero, 2
	addli r17, zero, 4
	addli r18, zero, 7
	addli r20, zero, 31
	lui r26, 260096
	addli r16, zero, 6
	addli r21, zero, 3
	addli r19, zero, 2048
	lui r25, 522240
	lui r28, 10
	storeli.w r6, -60(r30)                  # 4-byte Folded Spill
	ori r11, r1, 4095
	lui r1, 7
	ori r22, r2, 4095
	store.d r[9:10], -72(r30)               # 8-byte Folded Spill
	ori r1, r1, 4095
	storeli.w r22, -16(r30)                 # 4-byte Folded Spill
	storeli.w r1, -4(r30)                   # 4-byte Folded Spill
	zext_int2long r[1:2], r14
	store.d r[1:2], -40(r30)                # 8-byte Folded Spill
	zext_int2long r[1:2], r15
	store.d r[1:2], -80(r30)                # 8-byte Folded Spill
	zext_int2long r[1:2], zero
	store.d r[1:2], -48(r30)                # 8-byte Folded Spill
	j .LBB0_13
.LBB0_9:                                # %.thread5
                                        #   in Loop: Header=BB0_13 Depth=1
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	loadli.w r2,  -4(r30)                   # 4-byte Folded Reload
	add.s r1, r1, r2
	lui r2, 1048560
	and r2, r1, r2
.LBB0_10:                               # %.thread5
                                        #   in Loop: Header=BB0_13 Depth=1
	lui r1, 76
	ori r1, r1, 128
	.loc	1 64 11 is_stmt 1               # ieee-multiply.mlir:64:11
	stores.w r2, 0(r1)
	addli r1, zero, 19
	mfence { sm }
	xsignal r1, 0
	addli r1, zero, 20
.LBB0_11:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 0 is_stmt 0                 # ieee-multiply.mlir:0:0
	xsignal r1, 0
.LBB0_12:                               #   in Loop: Header=BB0_13 Depth=1
	addli.d r[7:8], r[7:8], 1
	setlt.sl r1, r[7:8], r[9:10]
	beq r1, zero, .LBB0_73
.LBB0_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	.loc	1 5 14 is_stmt 1                # ieee-multiply.mlir:5:14
	beq r6, zero, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	xwait r12, 0
	lock zero, r13
	addli r1, zero, 8192
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r14, zero, 2
	ew_cfg r15, zero, zero, 3
	ssaux r1, 0
	.loc	1 13 10                         # ieee-multiply.mlir:13:10
	addli r1, zero, 64
	.loc	1 5 14                          # ieee-multiply.mlir:5:14
	unlock r13
	xsignal r17, 0
	.loc	1 13 10                         # ieee-multiply.mlir:13:10
	xwait r18, 0
	lock zero, r13
	ew_cfg zero, zero, zero, 1
	ew_cfg r1, zero, zero, 3
	lui r1, 270336
	ew_cfg zero, r20, zero, 2
	ewcoeff_cfg zero, r1, zero, 0
	lui r1, 4
	ssaux r1, 2
	ewcoeff_cfg r26, r26, zero, 0
	dsmadd r1, r1, r1, 8
	unlock r13
	xsignal r16, 0
.LBB0_15:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 10 is_stmt 0                # ieee-multiply.mlir:0:10
	loadli.w r1,  40(r30)
	loadli.w r2,  36(r30)
	div.s r1, r7, r1
	div.s r1, r1, r2
	.loc	1 23 11 is_stmt 1               # ieee-multiply.mlir:23:11
	load.d r[2:3], -40(r30)                 # 8-byte Folded Reload
	.loc	1 63 11                         # ieee-multiply.mlir:63:11
	sext_int2long r[23:24], r1
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	min.sl r[2:3], r[23:24], r[2:3]
	store.d r[23:24], -32(r30)              # 8-byte Folded Spill
	addli.d r[2:3], r[2:3], 1
	max.sl r[2:3], r[2:3], r[23:24]
	sub.sl r[2:3], r[2:3], r[23:24]
	store.d r[2:3], -24(r30)                # 8-byte Folded Spill
	bneq r5, r15, .LBB0_58
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli.d r[23:24], r[2:3], 0
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	load.d r[2:3], -48(r30)                 # 8-byte Folded Reload
	setlt.sl r2, r[2:3], r[23:24]
	addli r3, zero, 11
	xwait r3, 0
	bneq r2, zero, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_13 Depth=1
	lock zero, r13
	lui r2, 6
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r14, zero, 2
	ew_cfg r15, zero, zero, 3
	ssaux r2, 0
	unlock r13
.LBB0_18:                               # %.thread4
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r2, zero, 8
	xsignal r2, 0
	.loc	1 29 23 is_stmt 1               # ieee-multiply.mlir:29:23
	bneq r6, zero, .LBB0_61
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	bneq r5, r21, .LBB0_62
.LBB0_20:                               # %vector.ph
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	setlt.s r3, r1, r19
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	addli r1, zero, 10
	store.d r[7:8], -56(r30)                # 8-byte Folded Spill
	xwait r17, 0
	xwait r16, 0
	xwait r1, 0
	addli r1, zero, 12
	xwait r1, 0
	addli r1, zero, 15
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	load.d r[14:15], -48(r30)               # 8-byte Folded Reload
	j .LBB0_22
.LBB0_21:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	lui r5, 10
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	addli.d r[14:15], r[14:15], 4
	lui r28, 10
	ori r1, r5, 12
	add.s r1, r21, r1
	stores.w r4, 0(r1)
	zext_int2long r[1:2], r19
	ori r4, r5, 8
	setneq.d r1, r[14:15], r[1:2]
	ori r2, r5, 4
	add.s r4, r21, r4
	add.s r5, r21, r5
	add.s r2, r21, r2
	stores.w r6, 0(r4)
	stores.w r10, 0(r5)
	stores.w r8, 0(r2)
	beq r1, zero, .LBB0_68
.LBB0_22:                               # %vector.body
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	lui r2, 4
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	slli r21, r14, 2
	lui r6, 6
	lui r12, 8
	ori r1, r2, 12
	add.s r4, r21, r2
	addli r17, r21, 8192
	addli r22, r21, 8196
	loads.w r13, 8(r21)
	loads.w r19, 4(r21)
	loads.w r8, 0(r21)
	add.s r1, r21, r1
	loads.w r28, 0(r22)
	loads.w r17, 0(r17)
	loads.w r16, 0(r1)
	ori r1, r2, 8
	ori r2, r2, 4
	add.s r5, r21, r2
	add.s r1, r21, r1
	loads.w r9, 0(r5)
	ori r5, r6, 12
	loads.w r2, 0(r1)
	loads.w r1, 0(r4)
	add.s r4, r21, r5
	add.s r5, r21, r6
	loads.w r7, 0(r4)
	ori r4, r6, 8
	ori r6, r6, 4
	loads.w r10, 0(r5)
	loads.w r5, 12(r21)
	add.s r4, r21, r4
	add.s r6, r21, r6
	loads.w r26, 0(r4)
	add.s r4, r21, r12
	loads.w r18, 0(r6)
	loads.w r6, 0(r4)
	ori r4, r12, 4
	ori r12, r12, 8
	add.s r12, r21, r12
	add.s r4, r21, r4
	loads.w r23, 0(r12)
	addli r12, r21, 8204
	loads.w r4, 0(r4)
	.loc	1 37 24 is_stmt 1               # ieee-multiply.mlir:37:24
	and r5, r5, r11
	.loc	1 36 24                         # ieee-multiply.mlir:36:24
	and r7, r7, r11
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	loads.w r12, 0(r12)
	.loc	1 40 24                         # ieee-multiply.mlir:40:24
	seteq r20, r7, r25
	.loc	1 43 25                         # ieee-multiply.mlir:43:25
	seteq r24, r5, zero
	.loc	1 41 24                         # ieee-multiply.mlir:41:24
	seteq r27, r5, r25
	.loc	1 47 27                         # ieee-multiply.mlir:47:27
	max.u r5, r7, r5
	.loc	1 42 25                         # ieee-multiply.mlir:42:25
	seteq r7, r7, zero
	.loc	1 47 27                         # ieee-multiply.mlir:47:27
	setlt.u r5, r25, r5
	.loc	1 45 29                         # ieee-multiply.mlir:45:29
	and r7, r7, r27
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	storeli.w r12, -8(r30)                  # 4-byte Folded Spill
	addli r12, r21, 8200
	loads.w r12, 0(r12)
	storeli.w r12, -12(r30)                 # 4-byte Folded Spill
	.loc	1 44 29                         # ieee-multiply.mlir:44:29
	and r12, r20, r24
	.loc	1 46 27                         # ieee-multiply.mlir:46:27
	or r7, r12, r7
	lui r12, 523264
	.loc	1 48 23                         # ieee-multiply.mlir:48:23
	or r7, r5, r7
	lui r5, 523264
	.loc	1 50 25                         # ieee-multiply.mlir:50:25
	bneq r7, zero, .LBB0_24
# %bb.23:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	lui r5, 8
	ori r5, r5, 12
	add.s r5, r21, r5
	loads.w r5, 0(r5)
.LBB0_24:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	and r7, r26, r11
	and r13, r13, r11
	seteq r20, r7, r25
	seteq r26, r7, zero
	seteq r22, r13, zero
	seteq r24, r13, r25
	max.u r7, r7, r13
	setlt.u r7, r25, r7
	and r13, r20, r22
	and r20, r26, r24
	lui r26, 523264
	or r13, r13, r20
	or r7, r7, r13
	.loc	1 50 25                         # ieee-multiply.mlir:50:25
	bneq r7, zero, .LBB0_26
# %bb.25:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r26, r23, 0
.LBB0_26:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	and r7, r18, r11
	and r13, r19, r11
	seteq r18, r7, r25
	seteq r22, r7, zero
	seteq r19, r13, zero
	seteq r20, r13, r25
	max.u r7, r7, r13
	setlt.u r7, r25, r7
	and r13, r18, r19
	and r18, r22, r20
	or r13, r13, r18
	lui r18, 523264
	or r7, r7, r13
	.loc	1 50 25                         # ieee-multiply.mlir:50:25
	bneq r7, zero, .LBB0_28
# %bb.27:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r18, r4, 0
.LBB0_28:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	and r4, r10, r11
	and r7, r8, r11
	seteq r8, r4, r25
	seteq r19, r4, zero
	seteq r10, r7, zero
	seteq r13, r7, r25
	max.u r4, r4, r7
	setlt.u r4, r25, r4
	and r7, r8, r10
	and r8, r19, r13
	or r7, r7, r8
	or r4, r4, r7
	.loc	1 50 25                         # ieee-multiply.mlir:50:25
	bneq r4, zero, .LBB0_30
# %bb.29:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r12, r6, 0
.LBB0_30:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 52 11 is_stmt 1               # ieee-multiply.mlir:52:11
	and r19, r12, r11
	setlt.u r4, r25, r19
	bneq r4, zero, .LBB0_32
# %bb.31:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r10, r12, 0
	j .LBB0_33
.LBB0_32:                               #   in Loop: Header=BB0_22 Depth=2
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	lui r4, 1024
	or r10, r12, r4
.LBB0_33:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	and r23, r18, r11
	setlt.u r4, r25, r23
	bneq r4, zero, .LBB0_35
# %bb.34:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r8, r18, 0
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_22 Depth=2
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	lui r4, 1024
	or r8, r18, r4
.LBB0_36:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	and r13, r26, r11
	setlt.u r4, r25, r13
	bneq r4, zero, .LBB0_38
# %bb.37:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, r26, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_22 Depth=2
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	lui r4, 1024
	or r6, r26, r4
.LBB0_39:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	and r22, r5, r11
	setlt.u r4, r25, r22
	bneq r4, zero, .LBB0_41
# %bb.40:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r4, r5, 0
	j .LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_22 Depth=2
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	lui r4, 1024
	or r4, r5, r4
.LBB0_42:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	loadli.w r20,  -16(r30)                 # 4-byte Folded Reload
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	setlt.u r7, r20, r22
	addli r22, r20, 0
	bneq r7, zero, .LBB0_46
# %bb.43:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	loadli.w r5,  -4(r30)                   # 4-byte Folded Reload
	add.s r4, r4, r5
	lui r5, 1048560
	and r4, r4, r5
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	setlt.u r5, r22, r13
	beq r5, zero, .LBB0_47
.LBB0_44:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	setlt.u r5, r22, r23
	bneq r5, zero, .LBB0_48
.LBB0_45:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r5, r18, 16
	loadli.w r7,  -4(r30)                   # 4-byte Folded Reload
	andi r5, r5, 1
	add.s r5, r18, r5
	add.s r5, r5, r7
	lui r7, 1048560
	and r8, r5, r7
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	setlt.u r5, r22, r19
	beq r5, zero, .LBB0_49
	j .LBB0_50
.LBB0_46:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	setlt.u r5, r22, r13
	bneq r5, zero, .LBB0_44
.LBB0_47:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r5, r26, 16
	loadli.w r6,  -4(r30)                   # 4-byte Folded Reload
	andi r5, r5, 1
	add.s r5, r26, r5
	add.s r5, r5, r6
	lui r6, 1048560
	and r6, r5, r6
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	setlt.u r5, r22, r23
	beq r5, zero, .LBB0_45
.LBB0_48:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	setlt.u r5, r22, r19
	bneq r5, zero, .LBB0_50
.LBB0_49:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r5, r12, 16
	loadli.w r7,  -4(r30)                   # 4-byte Folded Reload
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r7
	lui r7, 1048560
	and r10, r5, r7
.LBB0_50:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	addli r19, zero, 2048
	.loc	1 15 10 is_stmt 1               # ieee-multiply.mlir:15:10
	setlt.s r1, r1, r19
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	and r1, r3, r1
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	bneq r1, zero, .LBB0_52
# %bb.51:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r10, r17, 0
.LBB0_52:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	setlt.s r1, r9, r19
	and r1, r3, r1
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	bneq r1, zero, .LBB0_54
# %bb.53:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r8, r28, 0
.LBB0_54:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	setlt.s r1, r2, r19
	and r1, r3, r1
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	bneq r1, zero, .LBB0_56
# %bb.55:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	loadli.w r6,  -12(r30)                  # 4-byte Folded Reload
.LBB0_56:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	setlt.s r1, r16, r19
	and r1, r3, r1
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	bneq r1, zero, .LBB0_21
# %bb.57:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	loadli.w r4,  -8(r30)                   # 4-byte Folded Reload
	j .LBB0_21
.LBB0_58:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 23 11 is_stmt 1               # ieee-multiply.mlir:23:11
	bneq r5, r16, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r26, zero, 8
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	load.d r[2:3], -32(r30)                 # 8-byte Folded Reload
	addli r4, zero, 9
	addli r27, zero, 12
	addli r19, zero, 64
	lui r24, 6
	addli r14, zero, 128
	load.d r[22:23], 0(r30)
	xwait r26, 0
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	sll.d r[2:3], r[2:3], r27
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r13, 10
	add.ul r[2:3], r[22:23], r[2:3]
	addli r23, zero, 6
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 8192
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 13
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
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
	ori r4, r24, 64
	dma_cfg zero, zero, r20, 10
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r24, zero, r19, 3
	dma_cfg r14, zero, r19, 4
	dma_cfg r16, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r17
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r3, zero, 2
	dma_cfg r4, r2, r19, 3
	addli r4, zero, 4096
	load.d r[2:3], -80(r30)                 # 8-byte Folded Reload
	load.d r[21:22], -24(r30)               # 8-byte Folded Reload
	dma_cfg r14, r19, r19, 4
	min.sl r[2:3], r[21:22], r[2:3]
	addli r21, zero, 10
	dma_cfg r16, r4, r2, 5
	addli r4, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 11
	loadli.w r22,  -16(r30)                 # 4-byte Folded Reload
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r26, 10
	lui r26, 260096
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r21, 10
	addli r21, zero, 3
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 13
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 14
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 15
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 16
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 17
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 18
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 19
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 20
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 21
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 22
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 23
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 24
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 25
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 26
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 27
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 28
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 29
	dma_cfg zero, zero, r23, 10
	addli r23, zero, 30
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r24, zero, r19, 3
	dma_cfg r14, zero, r19, 4
	addli r14, zero, 2047
	addli r19, zero, 2048
	dma_cfg r16, zero, r2, 5
	addli r16, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r4, 0
	.loc	1 29 23 is_stmt 1               # ieee-multiply.mlir:29:23
	beq r6, zero, .LBB0_19
	j .LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_13 Depth=1
	beq r6, zero, .LBB0_19
.LBB0_61:                               #   in Loop: Header=BB0_13 Depth=1
	addli r2, zero, 9
	lui r3, 8
	xwait r2, 0
	addli r2, zero, 13
	xwait r2, 0
	lock zero, r13
	lui r2, 6
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r26, 0
	ew_cfg zero, r14, zero, 2
	ew_cfg r15, zero, zero, 3
	dsmul r3, r2, zero, 0
	addli r2, zero, 10
	unlock r13
	xsignal r2, 0
	addli r2, zero, 12
	xsignal r2, 0
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	beq r5, r21, .LBB0_20
.LBB0_62:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	bneq r5, r13, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 14
	xwait r1, 0
	addli r1, zero, 17
	xwait r1, 0
	lock zero, zero
	lui r1, 12
	ds_cfg r13, zero, 0
	ds_cfg r15, zero, 1
	ds_cfg r19, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r15, zero, 13
	shuffle_coa r1, r28, r19, 4
	addli r1, zero, 15
	unlock zero
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	beq r6, zero, .LBB0_69
	j .LBB0_65
.LBB0_64:                               #   in Loop: Header=BB0_13 Depth=1
	beq r6, zero, .LBB0_69
.LBB0_65:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 16
	lui r2, 76
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	lock zero, r13
	lui r1, 12
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r20, zero, 2
	ew_cfg r19, zero, zero, 3
	ssreduce r2, r1, 0
	addli r1, zero, 17
	unlock r13
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	.loc	1 64 11                         # ieee-multiply.mlir:64:11
	beq r5, r21, .LBB0_70
.LBB0_66:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 65 5                          # ieee-multiply.mlir:65:5
	bneq r5, zero, .LBB0_12
# %bb.67:                               #   in Loop: Header=BB0_13 Depth=1
	load.d r[1:2], -32(r30)                 # 8-byte Folded Reload
	addli r3, zero, 20
	xwait r3, 0
	load.d r[3:4], 16(r30)
	lock zero, r12
	sll.d r[1:2], r[1:2], r15
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r15, zero, 1
	add.ul r[1:2], r[3:4], r[1:2]
	lui r3, 76
	addli r4, zero, 64
	ori r3, r3, 192
	dma_cfg r2, zero, zero, 2
	dma_cfg r1, r3, r4, 3
	addli r1, zero, 128
	dma_cfg r4, r1, r15, 4
	load.d r[2:3], -24(r30)                 # 8-byte Folded Reload
	dma_cfg r13, r1, r2, 5
	addli r1, zero, 21
	dma_cfg zero, zero, r13, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	j .LBB0_11
.LBB0_68:                               # %.thread8
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	addli r12, zero, 5
	addli r18, zero, 7
	.loc	1 55 11 is_stmt 1               # ieee-multiply.mlir:55:11
	addli r1, zero, 11
	mfence { sm }
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	core_id r5
	addli r13, zero, 2
	addli r14, zero, 2047
	addli r15, zero, 1
	addli r17, zero, 4
	addli r20, zero, 31
	lui r26, 260096
	addli r16, zero, 6
	addli r21, zero, 3
	.loc	1 55 11                         # ieee-multiply.mlir:55:11
	xsignal r12, 0
	xsignal r18, 0
	xsignal r1, 0
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 14
	xsignal r1, 0
	loadli.w r6,  -60(r30)                  # 4-byte Folded Reload
	load.d r[7:8], -56(r30)                 # 8-byte Folded Reload
	load.d r[9:10], -72(r30)                # 8-byte Folded Reload
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	bneq r6, zero, .LBB0_65
.LBB0_69:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 64 11                         # ieee-multiply.mlir:64:11
	bneq r5, r21, .LBB0_66
.LBB0_70:                               # %.thread5
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 18
	xwait r1, 0
	addli r1, zero, 21
	xwait r1, 0
	xfence
	lui r1, 76
	mfence { lm, sm, gm }
	loads.w r1, 0(r1)
	and r3, r1, r11
	setlt.u r2, r25, r3
	bneq r2, zero, .LBB0_72
# %bb.71:                               # %.thread5
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r2, r1, 0
	.loc	1 64 11                         # ieee-multiply.mlir:64:11
	setlt.u r3, r22, r3
	bneq r3, zero, .LBB0_10
	j .LBB0_9
.LBB0_72:                               #   in Loop: Header=BB0_13 Depth=1
	lui r2, 1024
	or r2, r1, r2
	setlt.u r3, r22, r3
	bneq r3, zero, .LBB0_10
	j .LBB0_9
.LBB0_73:                               # %._crit_edge
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r1, zero, 3
	bneq r5, r1, .LBB0_75
# %bb.74:                               # %.thread6
	xsignal r1, 0
	.loc	1 2 3 is_stmt 1                 # ieee-multiply.mlir:2:3
	xsignal zero, 0
	j .LBB0_77
.LBB0_75:
	xsignal zero, 0
	bneq r5, zero, .LBB0_77
# %bb.76:
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
.LBB0_77:
	.loc	1 2 3 epilogue_begin            # ieee-multiply.mlir:2:3
	addli sp, sp, 80
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
	.long	144                             # 0x90
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/native-activation-m7a78f9j" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
