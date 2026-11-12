	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/native-activation-d4by27nn" "ieee-multiply.mlir"
	.loc	1 2 0                           # ieee-multiply.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -136
	addli r30, sp, 72
	addli r1, zero, 1
.Ltmp0:
	.loc	1 25 11 prologue_end            # ieee-multiply.mlir:25:11
	core_id r8
	loadli.w r24,  40(r30)
	loadli.w r25,  36(r30)
	xsignal_mode_cfg r1
	beq r8, zero, .LBB0_2
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
	addli r1, zero, 7
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
	bneq r8, r3, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, zero, 3
	addli r7, zero, 4
	load.d r[4:5], 8(r30)
	addli r11, zero, 0
	.loc	1 25 11                         # ieee-multiply.mlir:25:11
	xwait r6, 0
	lock zero, r7
	addli r6, zero, 8192
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r5, zero, 2
	dma_cfg zero, r4, r6, 3
	dma_cfg r6, r6, r3, 4
	addli r3, zero, 2
	dma_run zero
	unlock r7
	xsignal r3, 0
	ble.s r2, r1, .LBB0_46
	j .LBB0_8
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r3, zero, 5
	bneq r8, r3, .LBB0_7
# %bb.6:
	addli r3, zero, 2
	addli r11, zero, 1
	xwait r3, 0
	ble.s r2, r1, .LBB0_46
	j .LBB0_8
.LBB0_7:
	addli r11, zero, 0
	ble.s r2, r1, .LBB0_46
.LBB0_8:                                # %.lr.ph
	sext_int2long r[12:13], r1
	lui r1, 524287
	addli r18, zero, 2047
	sext_int2long r[14:15], r2
	addli r19, zero, 1
	addli r16, zero, 5
	addli r17, zero, 2
	addli r20, zero, 8192
	addli r21, zero, 4
	addli r7, zero, 7
	addli r26, zero, 6
	addli r6, zero, 2048
	lui r23, 10
	lui r22, 522240
	storeli.w r11, -52(r30)                 # 4-byte Folded Spill
	ori r3, r1, 4095
	zext_int2long r[1:2], r18
	store.d r[14:15], -64(r30)              # 8-byte Folded Spill
	store.d r[1:2], -16(r30)                # 8-byte Folded Spill
	zext_int2long r[1:2], r19
	store.d r[1:2], -72(r30)                # 8-byte Folded Spill
	zext_int2long r[1:2], zero
	store.d r[1:2], -24(r30)                # 8-byte Folded Spill
	j .LBB0_11
.LBB0_9:                                #   in Loop: Header=BB0_11 Depth=1
	.loc	1 59 5 is_stmt 1                # ieee-multiply.mlir:59:5
	beq r8, zero, .LBB0_42
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	addli.d r[12:13], r[12:13], 1
	setlt.sl r1, r[12:13], r[14:15]
	beq r1, zero, .LBB0_46
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
	.loc	1 4 14 is_stmt 1                # ieee-multiply.mlir:4:14
	beq r11, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	xwait r16, 0
	lock zero, r17
	.loc	1 12 10                         # ieee-multiply.mlir:12:10
	addli r1, zero, 64
	lui r2, 260096
	.loc	1 4 14                          # ieee-multiply.mlir:4:14
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r18, zero, 2
	ew_cfg r19, zero, zero, 3
	ssaux r20, 0
	unlock r17
	xsignal r21, 0
	.loc	1 12 10                         # ieee-multiply.mlir:12:10
	xwait r7, 0
	lock zero, r17
	ew_cfg zero, zero, zero, 1
	ew_cfg r1, zero, zero, 3
	addli r1, zero, 31
	ew_cfg zero, r1, zero, 2
	lui r1, 270336
	ewcoeff_cfg zero, r1, zero, 0
	lui r1, 4
	ssaux r1, 2
	ewcoeff_cfg r2, r2, zero, 0
	dsmadd r1, r1, r1, 8
	unlock r17
	xsignal r26, 0
.LBB0_13:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 10 is_stmt 0                # ieee-multiply.mlir:0:10
	div.s r1, r12, r24
	.loc	1 22 11 is_stmt 1               # ieee-multiply.mlir:22:11
	load.d r[4:5], -16(r30)                 # 8-byte Folded Reload
	div.s r1, r1, r25
	.loc	1 58 11                         # ieee-multiply.mlir:58:11
	sext_int2long r[27:28], r1
	.loc	1 22 11                         # ieee-multiply.mlir:22:11
	min.sl r[4:5], r[27:28], r[4:5]
	addli.d r[4:5], r[4:5], 1
	max.sl r[4:5], r[4:5], r[27:28]
	sub.sl r[9:10], r[4:5], r[27:28]
	bneq r8, r19, .LBB0_37
# %bb.14:                               #   in Loop: Header=BB0_11 Depth=1
	load.d r[4:5], -24(r30)                 # 8-byte Folded Reload
	setlt.sl r2, r[4:5], r[9:10]
	addli r4, zero, 11
	xwait r4, 0
	bneq r2, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_11 Depth=1
	lock zero, r17
	lui r2, 6
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r18, zero, 2
	ew_cfg r19, zero, zero, 3
	ssaux r2, 0
	unlock r17
.LBB0_16:                               # %.thread5
                                        #   in Loop: Header=BB0_11 Depth=1
	addli r2, zero, 8
	xsignal r2, 0
	.loc	1 26 23                         # ieee-multiply.mlir:26:23
	bneq r11, zero, .LBB0_40
.LBB0_17:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	beq r8, r17, .LBB0_41
.LBB0_18:                               #   in Loop: Header=BB0_11 Depth=1
	addli r2, zero, 3
	bneq r8, r2, .LBB0_44
# %bb.19:                               # %vector.ph
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	store.d r[27:28], -48(r30)              # 8-byte Folded Spill
	setlt.s r28, r1, r6
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	addli r1, zero, 10
	store.d r[9:10], -40(r30)               # 8-byte Folded Spill
	store.d r[12:13], -32(r30)              # 8-byte Folded Spill
	xwait r21, 0
	xwait r26, 0
	xwait r1, 0
	addli r1, zero, 12
	xwait r1, 0
	addli r1, zero, 15
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	load.d r[7:8], -24(r30)                 # 8-byte Folded Reload
	j .LBB0_21
.LBB0_20:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	lui r11, 10
	zext_int2long r[9:10], r6
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	addli.d r[7:8], r[7:8], 4
	lui r23, 10
	ori r1, r11, 12
	setneq.d r4, r[7:8], r[9:10]
	ori r6, r11, 4
	add.s r1, r2, r1
	add.s r6, r2, r6
	stores.w r16, 0(r1)
	ori r1, r11, 8
	stores.w r5, 0(r6)
	add.s r1, r2, r1
	add.s r2, r2, r11
	stores.w r21, 0(r1)
	stores.w r15, 0(r2)
	beq r4, zero, .LBB0_43
.LBB0_21:                               # %vector.body
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	lui r5, 4
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	slli r2, r7, 2
	lui r6, 6
	lui r15, 8
	ori r1, r5, 12
	ori r14, r15, 4
	loads.w r10, 12(r2)
	add.s r4, r2, r5
	add.s r12, r2, r15
	ori r15, r15, 8
	addli r16, r2, 8200
	addli r17, r2, 8196
	loads.w r19, 8(r2)
	add.s r1, r2, r1
	add.s r14, r2, r14
	loads.w r9, 0(r4)
	add.s r4, r2, r6
	add.s r15, r2, r15
	loads.w r12, 0(r12)
	loads.w r1, 0(r1)
	loads.w r18, 0(r14)
	addli r14, r2, 8204
	loads.w r27, 0(r15)
	addli r15, r2, 8192
	loads.w r20, 0(r4)
	loads.w r4, 0(r2)
	loads.w r14, 0(r14)
	.loc	1 34 24 is_stmt 1               # ieee-multiply.mlir:34:24
	and r10, r10, r3
	.loc	1 40 25                         # ieee-multiply.mlir:40:25
	seteq r25, r10, zero
	.loc	1 38 24                         # ieee-multiply.mlir:38:24
	seteq r24, r10, r22
	storeli.w r1, -4(r30)                   # 4-byte Folded Spill
	ori r1, r5, 8
	ori r5, r5, 4
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	add.s r1, r2, r1
	add.s r5, r2, r5
	storeli.w r14, -8(r30)                  # 4-byte Folded Spill
	loads.w r11, 0(r1)
	ori r1, r6, 12
	loads.w r13, 0(r5)
	ori r5, r6, 8
	ori r6, r6, 4
	add.s r1, r2, r1
	add.s r5, r2, r5
	add.s r6, r2, r6
	loads.w r1, 0(r1)
	loads.w r21, 0(r5)
	loads.w r5, 0(r6)
	loads.w r6, 4(r2)
	.loc	1 33 24                         # ieee-multiply.mlir:33:24
	and r1, r1, r3
	.loc	1 37 24                         # ieee-multiply.mlir:37:24
	seteq r23, r1, r22
	.loc	1 39 25                         # ieee-multiply.mlir:39:25
	seteq r26, r1, zero
	.loc	1 44 27                         # ieee-multiply.mlir:44:27
	max.u r14, r1, r10
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	loads.w r1, 0(r16)
	loads.w r10, 0(r17)
	loads.w r17, 0(r15)
	.loc	1 44 27                         # ieee-multiply.mlir:44:27
	setlt.u r14, r22, r14
	.loc	1 41 29                         # ieee-multiply.mlir:41:29
	and r15, r23, r25
	.loc	1 42 29                         # ieee-multiply.mlir:42:29
	and r16, r26, r24
	.loc	1 43 27                         # ieee-multiply.mlir:43:27
	or r15, r15, r16
	lui r16, 523264
	.loc	1 45 23                         # ieee-multiply.mlir:45:23
	or r14, r14, r15
	lui r15, 523264
	.loc	1 47 25                         # ieee-multiply.mlir:47:25
	bneq r14, zero, .LBB0_23
# %bb.22:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25 is_stmt 0                # ieee-multiply.mlir:0:25
	lui r14, 8
	ori r14, r14, 12
	add.s r14, r2, r14
	loads.w r16, 0(r14)
.LBB0_23:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	and r14, r21, r3
	and r19, r19, r3
	seteq r21, r14, r22
	seteq r25, r14, zero
	seteq r23, r19, zero
	seteq r24, r19, r22
	max.u r14, r14, r19
	setlt.u r14, r22, r14
	and r19, r21, r23
	and r21, r25, r24
	or r19, r19, r21
	lui r21, 523264
	or r14, r14, r19
	.loc	1 47 25                         # ieee-multiply.mlir:47:25
	bneq r14, zero, .LBB0_25
# %bb.24:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r21, r27, 0
.LBB0_25:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	and r5, r5, r3
	and r6, r6, r3
	seteq r14, r5, r22
	seteq r24, r5, zero
	seteq r19, r6, zero
	seteq r23, r6, r22
	max.u r5, r5, r6
	setlt.u r5, r22, r5
	and r6, r14, r19
	and r14, r24, r23
	or r6, r6, r14
	or r6, r5, r6
	lui r5, 523264
	.loc	1 47 25                         # ieee-multiply.mlir:47:25
	bneq r6, zero, .LBB0_27
# %bb.26:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r5, r18, 0
.LBB0_27:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	and r6, r20, r3
	and r4, r4, r3
	seteq r14, r6, r22
	seteq r18, r4, zero
	seteq r19, r4, r22
	seteq r20, r6, zero
	max.u r4, r6, r4
	setlt.u r4, r22, r4
	and r6, r14, r18
	and r14, r20, r19
	or r6, r6, r14
	or r4, r4, r6
	.loc	1 47 25                         # ieee-multiply.mlir:47:25
	bneq r4, zero, .LBB0_29
# %bb.28:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 25                          # ieee-multiply.mlir:0:25
	addli r15, r12, 0
.LBB0_29:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	addli r6, zero, 2048
	.loc	1 14 10 is_stmt 1               # ieee-multiply.mlir:14:10
	setlt.s r4, r9, r6
	.loc	1 21 11                         # ieee-multiply.mlir:21:11
	and r4, r28, r4
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	bneq r4, zero, .LBB0_31
# %bb.30:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r15, r17, 0
.LBB0_31:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	setlt.s r4, r13, r6
	and r4, r28, r4
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	bneq r4, zero, .LBB0_33
# %bb.32:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r5, r10, 0
.LBB0_33:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	setlt.s r4, r11, r6
	and r4, r28, r4
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	bneq r4, zero, .LBB0_35
# %bb.34:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r21, r1, 0
.LBB0_35:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	loadli.w r1,  -4(r30)                   # 4-byte Folded Reload
	setlt.s r1, r1, r6
	and r1, r28, r1
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	bneq r1, zero, .LBB0_20
# %bb.36:                               # %vector.body
                                        #   in Loop: Header=BB0_21 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	loadli.w r16,  -8(r30)                  # 4-byte Folded Reload
	j .LBB0_20
.LBB0_37:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 22 11 is_stmt 1               # ieee-multiply.mlir:22:11
	bneq r8, r26, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_11 Depth=1
	load.d r[6:7], -72(r30)                 # 8-byte Folded Reload
	addli r2, zero, 13
	addli r20, r25, 0
	sll.d r[4:5], r[27:28], r2
	addli r2, r24, 0
	addli.d r[24:25], r[27:28], 0
	addli.d r[27:28], r[9:10], 0
	min.sl r[6:7], r[9:10], r[6:7]
	load.d r[9:10], 0(r30)
	add.ul r[4:5], r[9:10], r[4:5]
	addli.d r[9:10], r[27:28], 0
	addli.d r[27:28], r[24:25], 0
	addli r24, r2, 0
	addli r2, zero, 8
	addli r25, r20, 0
	addli r20, zero, 8192
	xwait r2, 0
	lock zero, r21
	lui r2, 6
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r5, zero, 2
	dma_cfg r2, r4, r20, 3
	addli r2, zero, 9
	dma_cfg r20, r20, r6, 4
	addli r7, zero, 7
	addli r6, zero, 2048
	dma_run zero
	unlock r21
	xsignal r2, 0
	.loc	1 26 23                         # ieee-multiply.mlir:26:23
	beq r11, zero, .LBB0_17
	j .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_11 Depth=1
	beq r11, zero, .LBB0_17
.LBB0_40:                               #   in Loop: Header=BB0_11 Depth=1
	addli r2, zero, 9
	lui r4, 8
	xwait r2, 0
	addli r2, zero, 13
	xwait r2, 0
	lock zero, r17
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r2, 0
	lui r2, 6
	ew_cfg zero, r18, zero, 2
	ew_cfg r19, zero, zero, 3
	dsmul r4, r2, zero, 0
	addli r2, zero, 10
	unlock r17
	xsignal r2, 0
	addli r2, zero, 12
	xsignal r2, 0
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	bneq r8, r17, .LBB0_18
.LBB0_41:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 51 11                         # ieee-multiply.mlir:51:11
	addli r1, zero, 14
	xwait r1, 0
	addli r1, zero, 17
	xwait r1, 0
	lock zero, zero
	lui r1, 12
	ds_cfg r17, zero, 0
	ds_cfg r19, zero, 1
	ds_cfg r6, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r19, zero, 13
	shuffle_coa r1, r23, r6, 4
	addli r1, zero, 15
	unlock zero
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	beq r11, zero, .LBB0_9
	j .LBB0_45
.LBB0_42:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 59 5                          # ieee-multiply.mlir:59:5
	addli r4, zero, 18
	sll.d r[1:2], r[27:28], r17
	xwait r4, 0
	load.d r[4:5], 16(r30)
	lock zero, r16
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r19, zero, 1
	add.ul r[1:2], r[4:5], r[1:2]
	lui r4, 76
	dma_cfg r2, zero, zero, 2
	dma_cfg r1, r4, r21, 3
	addli r1, zero, 19
	dma_cfg r21, r21, r9, 4
	dma_run zero
	unlock r16
	xsignal r1, 0
	j .LBB0_10
.LBB0_43:                               # %middle.block
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	addli r16, zero, 5
	addli r7, zero, 7
	addli r1, zero, 11
	.loc	1 50 11 is_stmt 1               # ieee-multiply.mlir:50:11
	mfence { sm }
	loadli.w r9,  40(r30)
	loadli.w r10,  36(r30)
	.loc	1 25 11                         # ieee-multiply.mlir:25:11
	core_id r8
	addli r17, zero, 2
	addli r18, zero, 2047
	addli r19, zero, 1
	addli r20, zero, 8192
	addli r21, zero, 4
	addli r26, zero, 6
	addli r6, zero, 2048
	.loc	1 50 11                         # ieee-multiply.mlir:50:11
	xsignal r16, 0
	xsignal r7, 0
	xsignal r1, 0
	addli r1, zero, 13
	addli r24, r9, 0
	addli r25, r10, 0
	xsignal r1, 0
	addli r1, zero, 14
	xsignal r1, 0
	loadli.w r11,  -52(r30)                 # 4-byte Folded Reload
	load.d r[12:13], -32(r30)               # 8-byte Folded Reload
	load.d r[14:15], -64(r30)               # 8-byte Folded Reload
	load.d r[9:10], -40(r30)                # 8-byte Folded Reload
	load.d r[27:28], -48(r30)               # 8-byte Folded Reload
.LBB0_44:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 51 11                         # ieee-multiply.mlir:51:11
	beq r11, zero, .LBB0_9
.LBB0_45:                               #   in Loop: Header=BB0_11 Depth=1
	addli r1, zero, 16
	lui r2, 76
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	lock zero, r17
	addli r1, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	lui r1, 12
	ew_cfg r6, zero, zero, 3
	ssreduce r2, r1, 0
	addli r1, zero, 17
	unlock r17
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	j .LBB0_9
.LBB0_46:                               # %._crit_edge
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r1, zero, 3
	bneq r8, r1, .LBB0_48
# %bb.47:                               # %.thread6
	xsignal r1, 0
	.loc	1 2 3 is_stmt 1                 # ieee-multiply.mlir:2:3
	xsignal zero, 0
	j .LBB0_50
.LBB0_48:
	xsignal zero, 0
	bneq r8, zero, .LBB0_50
# %bb.49:
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
.LBB0_50:
	.loc	1 2 3 epilogue_begin            # ieee-multiply.mlir:2:3
	addli sp, sp, 72
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
	.long	136                             # 0x88
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/native-activation-d4by27nn" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
