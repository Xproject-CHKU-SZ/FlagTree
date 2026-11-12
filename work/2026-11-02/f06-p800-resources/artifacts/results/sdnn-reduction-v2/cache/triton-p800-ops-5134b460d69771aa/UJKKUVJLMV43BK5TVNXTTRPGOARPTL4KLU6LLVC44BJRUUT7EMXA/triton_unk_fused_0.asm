	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/sdnn-reduction-v2/cache/triton-p800-ops-5134b460d69771aa/native-activation-wnp8mk7x" "ieee-multiply.mlir"
	.loc	1 2 0                           # ieee-multiply.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -152
	addli r1, zero, 1
.Ltmp0:
	.loc	1 27 11 prologue_end            # ieee-multiply.mlir:27:11
	core_id r9
	addli r30, sp, 88
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
	addli r1, zero, 5
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 11
	addli r2, zero, 15
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 17
	addli r2, zero, 19
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 21
	addli r2, zero, 23
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
	.loc	1 27 11                         # ieee-multiply.mlir:27:11
	bneq r9, r3, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, zero, 3
	addli r7, zero, 4
	load.d r[4:5], 8(r30)
	addli r8, zero, 512
	addli r12, zero, 0
	.loc	1 27 11                         # ieee-multiply.mlir:27:11
	xwait r6, 0
	lock zero, r7
	addli r6, zero, 256
	dma_cfg zero, r3, zero, 0
	dma_cfg zero, r5, zero, 2
	dma_cfg zero, r4, r6, 3
	dma_cfg r8, r6, r3, 4
	addli r3, zero, 2
	dma_run zero
	unlock r7
	xsignal r3, 0
	ble.s r2, r1, .LBB0_47
	j .LBB0_8
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r3, zero, 2
	bneq r9, r3, .LBB0_7
# %bb.6:
	addli r12, zero, 1
	xwait r3, 0
	ble.s r2, r1, .LBB0_47
	j .LBB0_8
.LBB0_7:
	addli r12, zero, 0
	ble.s r2, r1, .LBB0_47
.LBB0_8:                                # %.lr.ph
	sext_int2long r[6:7], r1
	lui r1, 524287
	sext_int2long r[13:14], r2
	lui r2, 9
	addli r17, zero, 8
	addli r3, zero, 7
	addli r8, zero, 5
	addli r15, zero, 2
	addli r16, zero, 127
	addli r18, zero, 4
	addli r21, zero, 1
	addli r22, zero, 31
	addli r23, zero, 6
	addli r24, zero, 11
	addli r25, zero, 15
	addli r27, zero, 8832
	addli r28, zero, 12
	lui r19, 522240
	storeli.w r12, -80(r30)                 # 4-byte Folded Spill
	ori r20, r1, 4095
	lui r1, 5
	store.d r[13:14], -88(r30)              # 8-byte Folded Spill
	ori r1, r1, 640
	storeli.w r1, -52(r30)                  # 4-byte Folded Spill
	ori r1, r2, 640
	storeli.w r1, -76(r30)                  # 4-byte Folded Spill
	zext_int2long r[1:2], r17
	store.d r[1:2], -64(r30)                # 8-byte Folded Spill
	zext_int2long r[1:2], r3
	store.d r[1:2], -24(r30)                # 8-byte Folded Spill
	j .LBB0_12
.LBB0_9:                                # %.thread9
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 57 11 is_stmt 1               # ieee-multiply.mlir:57:11
	addli r1, zero, 20
	xwait r1, 0
	addli r1, zero, 23
	xwait r1, 0
	lock zero, r15
	addli r1, zero, 128
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r22, zero, 2
	ew_cfg r1, zero, zero, 3
	loadli.w r1,  -52(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -76(r30)                  # 4-byte Folded Reload
	ssreduce r2, r1, 0
	addli r1, zero, 21
	unlock r15
	xsignal r1, 0
	addli r1, zero, 22
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 0 is_stmt 0                 # ieee-multiply.mlir:0:0
	xsignal r1, 0
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=1
	addli.d r[6:7], r[6:7], 1
	setlt.sl r1, r[6:7], r[13:14]
	beq r1, zero, .LBB0_47
.LBB0_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_39 Depth 2
                                        #     Child Loop BB0_25 Depth 2
                                        #       Child Loop BB0_27 Depth 3
	.loc	1 4 14 is_stmt 1                # ieee-multiply.mlir:4:14
	bneq r9, r8, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	xwait r8, 0
	lock zero, r15
	addli r1, zero, 512
	.loc	1 10 10                         # ieee-multiply.mlir:10:10
	lui r2, 260096
	.loc	1 4 14                          # ieee-multiply.mlir:4:14
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r16, zero, 2
	ew_cfg r17, zero, zero, 3
	ssaux r1, 0
	.loc	1 10 10                         # ieee-multiply.mlir:10:10
	addli r1, zero, 7
	.loc	1 4 14                          # ieee-multiply.mlir:4:14
	unlock r15
	xsignal r18, 0
	.loc	1 10 10                         # ieee-multiply.mlir:10:10
	xwait r1, 0
	lock zero, r15
	lui r1, 270336
	ew_cfg zero, zero, zero, 1
	ew_cfg r21, zero, zero, 3
	ew_cfg zero, r22, zero, 2
	ewcoeff_cfg zero, r1, zero, 0
	addli r1, zero, 4608
	ssaux r1, 0
	ewcoeff_cfg r2, r2, zero, 0
	dsmadd r1, r1, r1, 8
	unlock r15
	xsignal r23, 0
.LBB0_14:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 10 is_stmt 0                # ieee-multiply.mlir:0:10
	loadli.w r1,  40(r30)
	loadli.w r2,  36(r30)
	.loc	1 24 11 is_stmt 1               # ieee-multiply.mlir:24:11
	load.d r[4:5], -64(r30)                 # 8-byte Folded Reload
	div.s r1, r6, r1
	div.s r1, r1, r2
	.loc	1 9 10                          # ieee-multiply.mlir:9:10
	slli r2, r1, 3
	.loc	1 64 11                         # ieee-multiply.mlir:64:11
	sext_int2long r[10:11], r1
	storeli.w r2, -12(r30)                  # 4-byte Folded Spill
	.loc	1 24 11                         # ieee-multiply.mlir:24:11
	sext_int2long r[2:3], r2
	store.d r[10:11], -48(r30)              # 8-byte Folded Spill
	min.sl r[4:5], r[2:3], r[4:5]
	addli.d r[4:5], r[4:5], 8
	max.sl r[4:5], r[4:5], r[2:3]
	sub.sl r[3:4], r[4:5], r[2:3]
	store.d r[3:4], -40(r30)                # 8-byte Folded Spill
	bneq r9, r21, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=1
	load.d r[1:2], -24(r30)                 # 8-byte Folded Reload
	xwait r24, 0
	setlt.sl r1, r[1:2], r[3:4]
	addli r2, zero, 3
	bneq r1, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=1
	lock zero, r15
	addli r1, zero, 4736
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r16, zero, 2
	ew_cfg r17, zero, zero, 3
	ssaux r1, 0
	unlock r15
.LBB0_17:                               # %.thread5
                                        #   in Loop: Header=BB0_12 Depth=1
	xsignal r17, 0
	addli r4, zero, 4096
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	bneq r12, zero, .LBB0_21
	j .LBB0_22
.LBB0_18:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 24 11                         # ieee-multiply.mlir:24:11
	bneq r9, r23, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_12 Depth=1
	load.d r[1:2], -48(r30)                 # 8-byte Folded Reload
	load.d r[3:4], 0(r30)
	xwait r17, 0
	lock zero, r18
	dma_cfg zero, r21, zero, 0
	sll.d r[1:2], r[1:2], r24
	add.ul r[1:2], r[3:4], r[1:2]
	addli r3, zero, 4736
	addli r4, zero, 256
	dma_cfg zero, r2, zero, 2
	dma_cfg r3, r1, r4, 3
	addli r1, zero, 512
	load.d r[2:3], -40(r30)                 # 8-byte Folded Reload
	dma_cfg r1, r4, r2, 4
	addli r1, zero, 9
	dma_run zero
	unlock r18
	xsignal r1, 0
.LBB0_20:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r2, zero, 3
	addli r4, zero, 4096
	.loc	1 30 11 is_stmt 1               # ieee-multiply.mlir:30:11
	beq r12, zero, .LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=1
	xwait r25, 0
	lock zero, zero
	addli r1, zero, 128
	ds_cfg r15, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r1, zero, 13
	ds_cfg r17, zero, 14
	shuffle_batch r27, zero, r17, 4
	unlock zero
	xsignal r28, 0
.LBB0_22:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r1, 4
	ori r11, r1, 640
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	bneq r9, r2, .LBB0_37
# %bb.23:                               # %.thread7
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 17
	store.d r[6:7], -72(r30)                # 8-byte Folded Spill
	xwait r28, 0
	addli r3, zero, 12928
	xwait r1, 0
	lock zero, r2
	addli r1, zero, 128
	rs_cfg zero, r17, r18, 1
	rs_cfg zero, r17, zero, 3
	rs_col r3, r27, r1, 0
	addli r1, zero, 13
	.loc	1 56 11 is_stmt 1               # ieee-multiply.mlir:56:11
	addli r3, zero, 10
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	unlock r2
	addli r2, zero, 16
	xsignal r1, 0
	xsignal r2, 0
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	xwait r18, 0
	xwait r23, 0
	xwait r3, 0
	xwait r1, 0
	addli r1, zero, 18
	xwait r2, 0
	xwait r1, 0
	zext_int2long r[1:2], zero
	xfence
	mfence { lm, sm, gm }
	addli.d r[4:5], r[1:2], 0
	store.d r[1:2], -32(r30)                # 8-byte Folded Spill
	j .LBB0_25
.LBB0_24:                               # %middle.block
                                        #   in Loop: Header=BB0_25 Depth=2
	load.d r[1:2], -24(r30)                 # 8-byte Folded Reload
	load.d r[3:4], -8(r30)                  # 8-byte Folded Reload
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	addli.d r[4:5], r[2:3], 0
	beq r1, zero, .LBB0_43
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_27 Depth 3
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	slli r1, r4, 2
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	load.d r[7:8], -32(r30)                 # 8-byte Folded Reload
	addli r1, r1, 4608
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	loads.w r3, 0(r1)
	addli r1, zero, 7
	sll.d r[1:2], r[4:5], r1
	.loc	1 13 10 is_stmt 1               # ieee-multiply.mlir:13:10
	loadli.w r4,  -12(r30)                  # 4-byte Folded Reload
	add.s r14, r3, r4
	j .LBB0_27
.LBB0_26:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	.loc	1 0 10 is_stmt 0                # ieee-multiply.mlir:0:10
	addli r3, zero, 128
	.loc	1 56 11 is_stmt 1               # ieee-multiply.mlir:56:11
	addli.d r[7:8], r[7:8], 4
	zext_int2long r[5:6], r3
	addli r3, r16, 8844
	setneq.d r5, r[7:8], r[5:6]
	stores.w r4, 0(r3)
	addli r6, r16, 8832
	addli r3, r16, 8840
	addli r4, r16, 8836
	stores.w r24, 0(r3)
	stores.w r21, 0(r4)
	stores.w r9, 0(r6)
	beq r5, zero, .LBB0_24
.LBB0_27:                               # %vector.body
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.ul r[3:4], r[7:8], r[1:2]
	addli r26, r11, 0
	slli r16, r3, 2
	addli r3, r16, 4736
	addli r4, r16, 4748
	addli r5, r16, 4744
	addli r6, r16, 4740
	loads.w r27, 524(r16)
	loads.w r12, 520(r16)
	loads.w r15, 512(r16)
	loads.w r10, 0(r3)
	addli r3, r16, 12940
	loads.w r4, 0(r4)
	loads.w r22, 0(r5)
	loads.w r23, 0(r6)
	addli r6, r16, 12932
	addli r5, r16, 12928
	loads.w r9, 0(r3)
	addli r3, r16, 12936
	loads.w r21, 0(r6)
	loads.w r6, 0(r5)
	lui r5, 4
	loads.w r18, 0(r3)
	add.s r3, r16, r11
	loads.w r28, 0(r3)
	ori r3, r5, 644
	ori r5, r5, 648
	add.s r3, r16, r3
	add.s r5, r16, r5
	loads.w r17, 0(r5)
	loads.w r3, 0(r3)
	loads.w r5, 516(r16)
	.loc	1 38 24                         # ieee-multiply.mlir:38:24
	and r4, r4, r20
	.loc	1 39 24                         # ieee-multiply.mlir:39:24
	and r9, r9, r20
	.loc	1 42 24                         # ieee-multiply.mlir:42:24
	seteq r24, r4, r19
	.loc	1 44 25                         # ieee-multiply.mlir:44:25
	seteq r11, r4, zero
	.loc	1 43 24                         # ieee-multiply.mlir:43:24
	seteq r13, r9, r19
	.loc	1 45 25                         # ieee-multiply.mlir:45:25
	seteq r25, r9, zero
	.loc	1 49 27                         # ieee-multiply.mlir:49:27
	max.u r4, r4, r9
	setlt.u r4, r19, r4
	.loc	1 46 29                         # ieee-multiply.mlir:46:29
	and r9, r24, r25
	.loc	1 47 29                         # ieee-multiply.mlir:47:29
	and r11, r11, r13
	.loc	1 48 27                         # ieee-multiply.mlir:48:27
	or r9, r9, r11
	.loc	1 50 23                         # ieee-multiply.mlir:50:23
	or r11, r4, r9
	lui r9, 523264
	lui r4, 523264
	bneq r11, zero, .LBB0_29
# %bb.28:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	.loc	1 0 23 is_stmt 0                # ieee-multiply.mlir:0:23
	lui r4, 4
	ori r4, r4, 652
	add.s r4, r16, r4
	loads.w r4, 0(r4)
.LBB0_29:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	and r11, r22, r20
	and r13, r18, r20
	seteq r18, r11, r19
	seteq r25, r11, zero
	seteq r22, r13, zero
	seteq r24, r13, r19
	max.u r11, r11, r13
	setlt.u r11, r19, r11
	and r13, r18, r22
	and r18, r25, r24
	lui r24, 523264
	or r13, r13, r18
	or r11, r11, r13
	bneq r11, zero, .LBB0_31
# %bb.30:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	addli r24, r17, 0
.LBB0_31:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	and r13, r21, r20
	and r11, r23, r20
	seteq r17, r11, r19
	seteq r22, r11, zero
	seteq r18, r13, zero
	seteq r21, r13, r19
	max.u r11, r11, r13
	setlt.u r11, r19, r11
	and r13, r17, r18
	and r17, r22, r21
	lui r21, 523264
	or r13, r13, r17
	or r11, r11, r13
	bneq r11, zero, .LBB0_33
# %bb.32:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	addli r21, r3, 0
.LBB0_33:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	and r3, r10, r20
	and r6, r6, r20
	seteq r10, r3, r19
	seteq r17, r3, zero
	seteq r11, r6, zero
	seteq r13, r6, r19
	max.u r3, r3, r6
	setlt.u r3, r19, r3
	and r6, r10, r11
	and r10, r17, r13
	or r6, r6, r10
	or r3, r3, r6
	bneq r3, zero, .LBB0_35
# %bb.34:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	addli r9, r28, 0
.LBB0_35:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	.loc	1 56 11 is_stmt 1               # ieee-multiply.mlir:56:11
	addli r3, zero, 16
	addli r11, r26, 0
	blt.s r14, r3, .LBB0_26
# %bb.36:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r9, r15, 0
	addli r21, r5, 0
	addli r24, r12, 0
	addli r4, r27, 0
	j .LBB0_26
.LBB0_37:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 31 23 is_stmt 1               # ieee-multiply.mlir:31:23
	bneq r9, r8, .LBB0_41
# %bb.38:                               #   in Loop: Header=BB0_12 Depth=1
	addli r2, zero, 9
	addli r1, zero, 0
	xwait r2, 0
	addli r2, zero, 19
	xwait r2, 0
	lock zero, r15
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r2, 0
	ew_cfg zero, r16, zero, 2
	ew_cfg r21, zero, zero, 3
.LBB0_39:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r2, r1, r11
	addli r3, r1, 4736
	addli r1, r1, 512
	dsmul r2, r3, zero, 0
	bneq r1, r4, .LBB0_39
# %bb.40:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 10
	unlock r15
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	.loc	1 57 11                         # ieee-multiply.mlir:57:11
	beq r12, zero, .LBB0_44
	j .LBB0_42
.LBB0_41:                               # %.thread8
                                        #   in Loop: Header=BB0_12 Depth=1
	beq r12, zero, .LBB0_44
.LBB0_42:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 14
	xwait r1, 0
	addli r1, zero, 21
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 128
	ds_cfg r15, zero, 0
	ds_cfg r21, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r17, zero, 13
	loadli.w r2,  -52(r30)                  # 4-byte Folded Reload
	shuffle_coa r2, r27, r1, 4
	addli r1, zero, 20
	unlock zero
	xsignal r25, 0
	xsignal r1, 0
	beq r9, r8, .LBB0_9
	j .LBB0_45
.LBB0_43:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r8, zero, 5
	.loc	1 56 11 is_stmt 1               # ieee-multiply.mlir:56:11
	addli r1, zero, 7
	mfence { sm }
	addli r24, zero, 11
	.loc	1 27 11                         # ieee-multiply.mlir:27:11
	core_id r9
	addli r15, zero, 2
	addli r16, zero, 127
	addli r17, zero, 8
	addli r18, zero, 4
	addli r21, zero, 1
	addli r22, zero, 31
	addli r23, zero, 6
	addli r25, zero, 15
	addli r27, zero, 8832
	addli r28, zero, 12
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	xsignal r8, 0
	xsignal r1, 0
	addli r1, zero, 14
	xsignal r24, 0
	xsignal r1, 0
	addli r1, zero, 17
	xsignal r1, 0
	addli r1, zero, 19
	xsignal r1, 0
	loadli.w r12,  -80(r30)                 # 4-byte Folded Reload
	load.d r[6:7], -72(r30)                 # 8-byte Folded Reload
	load.d r[13:14], -88(r30)               # 8-byte Folded Reload
	.loc	1 57 11                         # ieee-multiply.mlir:57:11
	bneq r12, zero, .LBB0_42
.LBB0_44:                               #   in Loop: Header=BB0_12 Depth=1
	beq r9, r8, .LBB0_9
.LBB0_45:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 66 5                          # ieee-multiply.mlir:66:5
	bneq r9, zero, .LBB0_11
# %bb.46:                               #   in Loop: Header=BB0_12 Depth=1
	load.d r[1:2], -48(r30)                 # 8-byte Folded Reload
	addli r3, zero, 22
	xwait r3, 0
	load.d r[3:4], 16(r30)
	lock zero, r8
	sll.d r[1:2], r[1:2], r18
	dma_cfg r21, zero, zero, 0
	dma_cfg zero, r21, zero, 1
	add.ul r[1:2], r[3:4], r[1:2]
	dma_cfg r2, zero, zero, 2
	loadli.w r3,  -76(r30)                  # 4-byte Folded Reload
	dma_cfg r1, r3, r18, 3
	load.d r[1:2], -40(r30)                 # 8-byte Folded Reload
	dma_cfg r15, r18, r1, 4
	addli r1, zero, 23
	dma_run zero
	unlock r8
	j .LBB0_10
.LBB0_47:                               # %._crit_edge
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	addli r1, zero, 5
	bneq r9, r1, .LBB0_49
# %bb.48:                               # %.thread10
	addli r1, zero, 3
	xsignal r1, 0
	.loc	1 2 3 is_stmt 1                 # ieee-multiply.mlir:2:3
	xsignal zero, 0
	j .LBB0_51
.LBB0_49:
	xsignal zero, 0
	bneq r9, zero, .LBB0_51
# %bb.50:
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
.LBB0_51:
	.loc	1 2 3 epilogue_begin            # ieee-multiply.mlir:2:3
	addli sp, sp, 88
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
	.long	152                             # 0x98
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/sdnn-reduction-v2/cache/triton-p800-ops-5134b460d69771aa/native-activation-wnp8mk7x" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
