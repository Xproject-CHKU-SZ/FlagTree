	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/native-activation-dttseaok" "ieee-multiply.mlir"
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
	mul.s r15, r2, r4
	fmac.s r2, r2, r4
	min.s r3, r2, r1
	.loc	1 24 11                         # ieee-multiply.mlir:24:11
	bneq r6, r5, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r16, zero, 3
	addli r7, zero, 5
	storeli.w zero, -52(r30)                # 4-byte Folded Spill
	addli r1, zero, 2
	addli r8, zero, 4
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
	addli r12, zero, 28
	addli r11, zero, 29
	addli r10, zero, 30
	addli r9, zero, 31
	addli r14, zero, 64
	addli r6, zero, 128
	addli r4, zero, 512
	.loc	1 24 11                         # ieee-multiply.mlir:24:11
	xwait r16, 0
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 6
	dma_cfg zero, zero, r16, 10
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
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg r5, r5, zero, 0
	dma_cfg r5, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg zero, zero, r14, 3
	dma_cfg r6, zero, r8, 4
	dma_cfg r4, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	lock zero, r8
	dma_cfg r5, r5, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r14, r1, r14, 3
	addli r1, zero, 256
	addli r2, zero, 6
	dma_cfg r6, r14, r8, 4
	dma_cfg r4, r1, r5, 5
	addli r1, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r16, 10
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
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg r5, r5, zero, 0
	dma_cfg r5, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg zero, zero, r14, 3
	dma_cfg r6, zero, r8, 4
	core_id r6
	dma_cfg r4, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r5, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	loadli.w r7,  -52(r30)                  # 4-byte Folded Reload
	xsignal r1, 0
	ble.s r3, r15, .LBB0_66
	j .LBB0_8
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r1, zero, 5
	bneq r6, r1, .LBB0_7
# %bb.6:
	addli r1, zero, 2
	addli r7, zero, 1
	xwait r1, 0
	ble.s r3, r15, .LBB0_66
	j .LBB0_8
.LBB0_7:
	addli r7, zero, 0
	ble.s r3, r15, .LBB0_66
.LBB0_8:                                # %.lr.ph
	lui r1, 524287
	addli r4, zero, 15
	sext_int2long r[23:24], r3
	sext_int2long r[8:9], r15
	addli r12, zero, 5
	addli r13, zero, 2
	addli r19, zero, 127
	addli r15, zero, 1
	addli r16, zero, 4
	addli r21, zero, 6
	addli r25, zero, 8
	addli r26, zero, 10
	addli r20, zero, 3
	lui r28, 522240
	addli r2, zero, 128
	addli r14, zero, 15
	storeli.w r7, -52(r30)                  # 4-byte Folded Spill
	ori r27, r1, 4095
	lui r1, 7
	zext_int2long r[4:5], r4
	store.d r[23:24], -64(r30)              # 8-byte Folded Spill
	ori r22, r1, 4095
	lui r1, 522239
	store.d r[4:5], -24(r30)                # 8-byte Folded Spill
	zext_int2long r[4:5], zero
	ori r3, r1, 4095
	lui r1, 4
	store.d r[4:5], -32(r30)                # 8-byte Folded Spill
	ori r1, r1, 2560
	storeli.w r1, -36(r30)                  # 4-byte Folded Spill
	j .LBB0_13
.LBB0_9:                                # %.thread4
                                        #   in Loop: Header=BB0_13 Depth=1
	srli r4, r1, 16
	andi r4, r4, 1
	add.s r1, r1, r4
	lui r4, 1048560
	add.s r1, r1, r22
	and r4, r1, r4
.LBB0_10:                               # %.thread4
                                        #   in Loop: Header=BB0_13 Depth=1
	lui r1, 4
	ori r1, r1, 2688
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
	setlt.sl r1, r[8:9], r[23:24]
	beq r1, zero, .LBB0_66
.LBB0_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	.loc	1 4 14 is_stmt 1                # ieee-multiply.mlir:4:14
	beq r7, zero, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	xwait r12, 0
	lock zero, r13
	addli r1, zero, 512
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r19, zero, 2
	ew_cfg r15, zero, zero, 3
	ssaux r1, 0
	unlock r13
	xsignal r16, 0
.LBB0_15:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 14 is_stmt 0                # ieee-multiply.mlir:0:14
	loadli.w r1,  40(r30)
	loadli.w r4,  36(r30)
	div.s r1, r8, r1
	div.s r18, r1, r4
	.loc	1 21 11 is_stmt 1               # ieee-multiply.mlir:21:11
	load.d r[4:5], -24(r30)                 # 8-byte Folded Reload
	.loc	1 60 11                         # ieee-multiply.mlir:60:11
	sext_int2long r[10:11], r18
	.loc	1 21 11                         # ieee-multiply.mlir:21:11
	min.sl r[4:5], r[10:11], r[4:5]
	store.d r[10:11], -16(r30)              # 8-byte Folded Spill
	addli.d r[4:5], r[4:5], 1
	max.sl r[4:5], r[4:5], r[10:11]
	sub.sl r[10:11], r[4:5], r[10:11]
	store.d r[10:11], -8(r30)               # 8-byte Folded Spill
	bneq r6, r15, .LBB0_51
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=1
	load.d r[4:5], -32(r30)                 # 8-byte Folded Reload
	setlt.sl r1, r[4:5], r[10:11]
	addli r4, zero, 9
	xwait r4, 0
	bneq r1, zero, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_13 Depth=1
	lock zero, r13
	addli r1, zero, 1024
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r19, zero, 2
	ew_cfg r15, zero, zero, 3
	ssaux r1, 0
	unlock r13
.LBB0_18:                               # %.thread3
                                        #   in Loop: Header=BB0_13 Depth=1
	xsignal r21, 0
	.loc	1 27 23                         # ieee-multiply.mlir:27:23
	bneq r7, zero, .LBB0_54
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	bneq r6, r20, .LBB0_55
.LBB0_20:                               # %vector.ph
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 13
	store.d r[8:9], -48(r30)                # 8-byte Folded Spill
	xwait r16, 0
	xwait r25, 0
	xwait r26, 0
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	load.d r[19:20], -32(r30)               # 8-byte Folded Reload
	j .LBB0_22
.LBB0_21:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	addli.d r[19:20], r[19:20], 4
	zext_int2long r[4:5], r2
	addli r1, r26, 2060
	addli r6, r26, 2052
	setneq.d r4, r[19:20], r[4:5]
	addli r5, r26, 2048
	stores.w r13, 0(r1)
	addli r1, r26, 2056
	stores.w r16, 0(r6)
	stores.w r24, 0(r1)
	stores.w r25, 0(r5)
	beq r4, zero, .LBB0_61
.LBB0_22:                               # %vector.body
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r26, r19, 2
	loads.w r1, 1036(r26)
	loads.w r6, 12(r26)
	loads.w r4, 1032(r26)
	loads.w r8, 1028(r26)
	loads.w r24, 1024(r26)
	loads.w r5, 8(r26)
	loads.w r10, 4(r26)
	loads.w r25, 0(r26)
	loads.w r16, 1536(r26)
	loads.w r12, 1540(r26)
	loads.w r13, 1544(r26)
	loads.w r7, 524(r26)
	loads.w r15, 520(r26)
	loads.w r23, 516(r26)
	.loc	1 34 24                         # ieee-multiply.mlir:34:24
	and r1, r1, r27
	.loc	1 35 24                         # ieee-multiply.mlir:35:24
	and r6, r6, r27
	.loc	1 38 24                         # ieee-multiply.mlir:38:24
	seteq r9, r1, r28
	.loc	1 41 25                         # ieee-multiply.mlir:41:25
	seteq r14, r6, zero
	.loc	1 39 24                         # ieee-multiply.mlir:39:24
	seteq r11, r6, r28
	.loc	1 40 25                         # ieee-multiply.mlir:40:25
	seteq r17, r1, zero
	.loc	1 45 27                         # ieee-multiply.mlir:45:27
	max.u r6, r1, r6
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	loads.w r1, 512(r26)
	.loc	1 45 27                         # ieee-multiply.mlir:45:27
	setlt.u r6, r28, r6
	.loc	1 42 29                         # ieee-multiply.mlir:42:29
	and r9, r9, r14
	.loc	1 43 29                         # ieee-multiply.mlir:43:29
	and r11, r17, r11
	lui r14, 523264
	.loc	1 44 27                         # ieee-multiply.mlir:44:27
	or r9, r9, r11
	.loc	1 46 23                         # ieee-multiply.mlir:46:23
	or r6, r6, r9
	lui r9, 523264
	.loc	1 48 25                         # ieee-multiply.mlir:48:25
	bneq r6, zero, .LBB0_24
# %bb.23:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	loads.w r9, 1548(r26)
.LBB0_24:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	and r4, r4, r27
	and r5, r5, r27
	seteq r6, r4, r28
	seteq r21, r4, zero
	seteq r11, r5, zero
	seteq r17, r5, r28
	max.u r4, r4, r5
	setlt.u r4, r28, r4
	and r5, r6, r11
	and r6, r21, r17
	or r5, r5, r6
	or r5, r4, r5
	lui r4, 523264
	.loc	1 48 25                         # ieee-multiply.mlir:48:25
	bneq r5, zero, .LBB0_26
# %bb.25:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r4, r13, 0
.LBB0_26:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	and r5, r8, r27
	and r6, r10, r27
	seteq r8, r5, r28
	seteq r13, r5, zero
	seteq r10, r6, zero
	seteq r11, r6, r28
	max.u r5, r5, r6
	setlt.u r5, r28, r5
	and r6, r8, r10
	and r8, r13, r11
	lui r10, 523264
	or r6, r6, r8
	or r5, r5, r6
	.loc	1 48 25                         # ieee-multiply.mlir:48:25
	bneq r5, zero, .LBB0_28
# %bb.27:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r10, r12, 0
.LBB0_28:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	and r5, r24, r27
	and r6, r25, r27
	seteq r8, r5, r28
	seteq r13, r5, zero
	seteq r11, r6, zero
	seteq r12, r6, r28
	max.u r5, r5, r6
	setlt.u r5, r28, r5
	and r6, r8, r11
	and r8, r13, r12
	or r6, r6, r8
	or r5, r5, r6
	.loc	1 48 25                         # ieee-multiply.mlir:48:25
	bneq r5, zero, .LBB0_30
# %bb.29:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r14, r16, 0
.LBB0_30:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 50 11 is_stmt 1               # ieee-multiply.mlir:50:11
	and r12, r14, r27
	setlt.u r5, r28, r12
	bneq r5, zero, .LBB0_32
# %bb.31:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r25, r14, 0
	j .LBB0_33
.LBB0_32:                               #   in Loop: Header=BB0_22 Depth=2
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	lui r5, 1024
	or r25, r14, r5
.LBB0_33:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	and r8, r10, r27
	setlt.u r5, r28, r8
	bneq r5, zero, .LBB0_35
# %bb.34:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r16, r10, 0
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_22 Depth=2
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	lui r5, 1024
	or r16, r10, r5
.LBB0_36:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	and r5, r4, r27
	setlt.u r6, r28, r5
	bneq r6, zero, .LBB0_38
# %bb.37:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r24, r4, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_22 Depth=2
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	lui r6, 1024
	or r24, r4, r6
.LBB0_39:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	and r6, r9, r27
	setlt.u r11, r28, r6
	bneq r11, zero, .LBB0_41
# %bb.40:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r13, r9, 0
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	setlt.u r6, r3, r6
	beq r6, zero, .LBB0_42
	j .LBB0_43
.LBB0_41:                               #   in Loop: Header=BB0_22 Depth=2
	lui r11, 1024
	or r13, r9, r11
	setlt.u r6, r3, r6
	bneq r6, zero, .LBB0_43
.LBB0_42:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	lui r9, 1048560
	add.s r6, r6, r22
	and r13, r6, r9
.LBB0_43:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	setlt.u r5, r3, r5
	bneq r5, zero, .LBB0_47
# %bb.44:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	lui r5, 1048560
	add.s r4, r4, r22
	and r24, r4, r5
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	setlt.u r4, r3, r8
	beq r4, zero, .LBB0_48
.LBB0_45:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	setlt.u r4, r3, r12
	bneq r4, zero, .LBB0_49
.LBB0_46:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r4, r14, 16
	lui r5, 1048560
	andi r4, r4, 1
	add.s r4, r14, r4
	add.s r4, r4, r22
	and r25, r4, r5
	.loc	1 52 11 is_stmt 1               # ieee-multiply.mlir:52:11
	addli r4, zero, 16
	blt.s r18, r4, .LBB0_21
	j .LBB0_50
.LBB0_47:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	setlt.u r4, r3, r8
	bneq r4, zero, .LBB0_45
.LBB0_48:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	srli r4, r10, 16
	lui r5, 1048560
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r22
	and r16, r4, r5
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	setlt.u r4, r3, r12
	beq r4, zero, .LBB0_46
.LBB0_49:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 52 11 is_stmt 1               # ieee-multiply.mlir:52:11
	addli r4, zero, 16
	blt.s r18, r4, .LBB0_21
.LBB0_50:                               # %vector.body
                                        #   in Loop: Header=BB0_22 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r25, r1, 0
	addli r16, r23, 0
	addli r24, r15, 0
	addli r13, r7, 0
	j .LBB0_21
.LBB0_51:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 21 11 is_stmt 1               # ieee-multiply.mlir:21:11
	bneq r6, r21, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_13 Depth=1
	load.d r[1:2], -16(r30)                 # 8-byte Folded Reload
	xwait r21, 0
	lock zero, r12
	addli r14, zero, 11
	addli r17, zero, 64
	addli r19, zero, 128
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	sll.d r[4:5], r[1:2], r25
	load.d r[1:2], 0(r30)
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r20, 10
	addli r20, zero, 1088
	dma_cfg zero, zero, r16, 10
	add.ul r[4:5], r[1:2], r[4:5]
	dma_cfg zero, zero, r12, 10
	addli r1, zero, 7
	addli r2, zero, 3
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
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
	addli r1, zero, 31
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 1024
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r17, 3
	addli r1, zero, 512
	dma_cfg r19, zero, r16, 4
	dma_cfg r1, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r16
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r5, zero, 2
	dma_cfg r20, r4, r17, 3
	addli r4, zero, 256
	addli r20, zero, 3
	dma_cfg r19, r17, r16, 4
	load.d r[10:11], -8(r30)                # 8-byte Folded Reload
	dma_cfg r1, r4, r10, 5
	addli r4, zero, 7
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r16
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 18
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 19
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
	addli r2, zero, 27
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 28
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 29
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 1024
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r17, 3
	addli r2, zero, 128
	dma_cfg r19, zero, r16, 4
	addli r19, zero, 127
	dma_cfg r1, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r4, 0
	.loc	1 27 23                         # ieee-multiply.mlir:27:23
	beq r7, zero, .LBB0_19
	j .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_13 Depth=1
	beq r7, zero, .LBB0_19
.LBB0_54:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 7
	addli r4, zero, 1536
	xwait r1, 0
	addli r1, zero, 11
	xwait r1, 0
	lock zero, r13
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 1024
	ew_cfg zero, r19, zero, 2
	ew_cfg r15, zero, zero, 3
	dsmul r4, r1, zero, 0
	unlock r13
	xsignal r25, 0
	xsignal r26, 0
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	beq r6, r20, .LBB0_20
.LBB0_55:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 53 11                         # ieee-multiply.mlir:53:11
	bneq r6, r13, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 12
	addli r4, zero, 2560
	addli r5, zero, 2048
	addli r2, zero, 128
	xwait r1, 0
	xwait r14, 0
	lock zero, zero
	addli r1, zero, 128
	ds_cfg r13, zero, 0
	ds_cfg r15, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r15, zero, 13
	shuffle_coa r4, r5, r1, 4
	addli r1, zero, 13
	unlock zero
	xsignal r1, 0
	addli r1, zero, 14
	xsignal r1, 0
	load.d r[17:18], -8(r30)                # 8-byte Folded Reload
	beq r7, zero, .LBB0_62
	j .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	load.d r[17:18], -8(r30)                # 8-byte Folded Reload
	.loc	1 53 11                         # ieee-multiply.mlir:53:11
	beq r7, zero, .LBB0_62
.LBB0_58:                               #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 14
	addli r4, zero, 2560
	xwait r1, 0
	addli r1, zero, 17
	xwait r1, 0
	lock zero, r13
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r2, zero, zero, 3
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	ssreduce r1, r4, 0
	addli r1, zero, 16
	unlock r13
	xsignal r14, 0
	xsignal r1, 0
	.loc	1 61 11 is_stmt 1               # ieee-multiply.mlir:61:11
	beq r6, r20, .LBB0_63
.LBB0_59:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 62 5                          # ieee-multiply.mlir:62:5
	bneq r6, zero, .LBB0_12
# %bb.60:                               #   in Loop: Header=BB0_13 Depth=1
	load.d r[1:2], -16(r30)                 # 8-byte Folded Reload
	sll.d r[4:5], r[1:2], r15
	addli r1, zero, 18
	xwait r1, 0
	load.d r[1:2], 16(r30)
	lock zero, r12
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r15, zero, 1
	add.ul r[4:5], r[1:2], r[4:5]
	lui r1, 4
	addli r2, zero, 64
	ori r1, r1, 2752
	dma_cfg r5, zero, zero, 2
	dma_cfg r4, r1, r2, 3
	addli r1, zero, 128
	dma_cfg r2, r1, r15, 4
	addli r2, zero, 128
	dma_cfg r13, r1, r17, 5
	addli r1, zero, 19
	dma_cfg zero, zero, r13, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	j .LBB0_11
.LBB0_61:                               # %.thread7
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	addli r12, zero, 5
	addli r1, zero, 9
	.loc	1 52 11 is_stmt 1               # ieee-multiply.mlir:52:11
	mfence { sm }
	.loc	1 24 11                         # ieee-multiply.mlir:24:11
	core_id r6
	addli r13, zero, 2
	addli r19, zero, 127
	addli r15, zero, 1
	addli r16, zero, 4
	addli r14, zero, 15
	addli r21, zero, 6
	addli r25, zero, 8
	addli r26, zero, 10
	addli r20, zero, 3
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	xsignal r12, 0
	xsignal r1, 0
	addli r1, zero, 11
	xsignal r1, 0
	addli r1, zero, 12
	xsignal r1, 0
	loadli.w r7,  -52(r30)                  # 4-byte Folded Reload
	load.d r[8:9], -48(r30)                 # 8-byte Folded Reload
	load.d r[23:24], -64(r30)               # 8-byte Folded Reload
	load.d r[17:18], -8(r30)                # 8-byte Folded Reload
	.loc	1 53 11                         # ieee-multiply.mlir:53:11
	bneq r7, zero, .LBB0_58
.LBB0_62:                               #   in Loop: Header=BB0_13 Depth=1
	.loc	1 61 11                         # ieee-multiply.mlir:61:11
	bneq r6, r20, .LBB0_59
.LBB0_63:                               # %.thread4
                                        #   in Loop: Header=BB0_13 Depth=1
	addli r1, zero, 16
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -36(r30)                  # 4-byte Folded Reload
	loads.w r1, 0(r1)
	and r5, r1, r27
	setlt.u r4, r28, r5
	bneq r4, zero, .LBB0_65
# %bb.64:                               # %.thread4
                                        #   in Loop: Header=BB0_13 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r4, r1, 0
	.loc	1 61 11                         # ieee-multiply.mlir:61:11
	setlt.u r5, r3, r5
	bneq r5, zero, .LBB0_10
	j .LBB0_9
.LBB0_65:                               #   in Loop: Header=BB0_13 Depth=1
	lui r4, 1024
	or r4, r1, r4
	setlt.u r5, r3, r5
	bneq r5, zero, .LBB0_10
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/native-activation-dttseaok" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
