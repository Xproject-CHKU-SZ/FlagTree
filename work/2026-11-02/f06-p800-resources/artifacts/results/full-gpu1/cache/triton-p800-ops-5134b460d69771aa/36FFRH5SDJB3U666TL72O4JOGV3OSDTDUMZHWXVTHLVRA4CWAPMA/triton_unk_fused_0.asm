	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/native-activation-056m8l5v" "ieee-multiply.mlir"
	.loc	1 2 0                           # ieee-multiply.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -152
	addli r1, zero, 1
.Ltmp0:
	.loc	1 26 11 prologue_end            # ieee-multiply.mlir:26:11
	core_id r8
	addli r30, sp, 88
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
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	bneq r8, r3, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r6, zero, 3
	addli r7, zero, 4
	load.d r[4:5], 8(r30)
	addli r11, zero, 0
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	xwait r6, 0
	lock zero, r7
	addli r6, zero, 512
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r5, zero, 2
	dma_cfg zero, r4, r6, 3
	dma_cfg r6, r6, r3, 4
	addli r3, zero, 2
	dma_run zero
	unlock r7
	xsignal r3, 0
	ble.s r2, r1, .LBB0_47
	j .LBB0_8
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r3, zero, 2
	bneq r8, r3, .LBB0_7
# %bb.6:
	addli r11, zero, 1
	xwait r3, 0
	ble.s r2, r1, .LBB0_47
	j .LBB0_8
.LBB0_7:
	addli r11, zero, 0
	ble.s r2, r1, .LBB0_47
.LBB0_8:                                # %.lr.ph
	sext_int2long r[12:13], r1
	lui r1, 524287
	sext_int2long r[14:15], r2
	addli r18, zero, 8
	addli r4, zero, 7
	lui r3, 9
	addli r7, zero, 5
	addli r16, zero, 2
	addli r17, zero, 127
	addli r20, zero, 4
	addli r22, zero, 1
	addli r23, zero, 31
	addli r24, zero, 6
	addli r25, zero, 11
	addli r26, zero, 15
	addli r27, zero, 8832
	addli r28, zero, 12
	lui r19, 522240
	storeli.w r11, -80(r30)                 # 4-byte Folded Spill
	ori r2, r1, 4095
	lui r1, 5
	zext_int2long r[5:6], r18
	store.d r[14:15], -88(r30)              # 8-byte Folded Spill
	ori r1, r1, 640
	store.d r[5:6], -64(r30)                # 8-byte Folded Spill
	storeli.w r1, -52(r30)                  # 4-byte Folded Spill
	ori r1, r3, 640
	zext_int2long r[3:4], r4
	storeli.w r1, -76(r30)                  # 4-byte Folded Spill
	store.d r[3:4], -24(r30)                # 8-byte Folded Spill
	j .LBB0_12
.LBB0_9:                                # %.thread9
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 52 11 is_stmt 1               # ieee-multiply.mlir:52:11
	addli r1, zero, 20
	xwait r1, 0
	addli r1, zero, 23
	xwait r1, 0
	lock zero, r16
	addli r1, zero, 128
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r23, zero, 2
	ew_cfg r1, zero, zero, 3
	loadli.w r1,  -52(r30)                  # 4-byte Folded Reload
	loadli.w r3,  -76(r30)                  # 4-byte Folded Reload
	ssreduce r3, r1, 0
	addli r1, zero, 21
	unlock r16
	xsignal r1, 0
	addli r1, zero, 22
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 0 is_stmt 0                 # ieee-multiply.mlir:0:0
	xsignal r1, 0
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=1
	addli.d r[12:13], r[12:13], 1
	setlt.sl r1, r[12:13], r[14:15]
	beq r1, zero, .LBB0_47
.LBB0_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_39 Depth 2
                                        #     Child Loop BB0_25 Depth 2
                                        #       Child Loop BB0_27 Depth 3
	.loc	1 3 12 is_stmt 1                # ieee-multiply.mlir:3:12
	bneq r8, r7, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	xwait r7, 0
	lock zero, r16
	addli r1, zero, 512
	.loc	1 9 10                          # ieee-multiply.mlir:9:10
	lui r3, 260096
	.loc	1 3 12                          # ieee-multiply.mlir:3:12
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r17, zero, 2
	ew_cfg r18, zero, zero, 3
	ssaux r1, 0
	.loc	1 9 10                          # ieee-multiply.mlir:9:10
	addli r1, zero, 7
	.loc	1 3 12                          # ieee-multiply.mlir:3:12
	unlock r16
	xsignal r20, 0
	.loc	1 9 10                          # ieee-multiply.mlir:9:10
	xwait r1, 0
	lock zero, r16
	lui r1, 270336
	ew_cfg zero, zero, zero, 1
	ew_cfg r22, zero, zero, 3
	ew_cfg zero, r23, zero, 2
	ewcoeff_cfg zero, r1, zero, 0
	addli r1, zero, 4608
	ssaux r1, 0
	ewcoeff_cfg r3, r3, zero, 0
	dsmadd r1, r1, r1, 8
	unlock r16
	xsignal r24, 0
.LBB0_14:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 10 is_stmt 0                # ieee-multiply.mlir:0:10
	loadli.w r1,  40(r30)
	loadli.w r3,  36(r30)
	.loc	1 23 11 is_stmt 1               # ieee-multiply.mlir:23:11
	load.d r[5:6], -64(r30)                 # 8-byte Folded Reload
	div.s r1, r12, r1
	div.s r1, r1, r3
	.loc	1 8 10                          # ieee-multiply.mlir:8:10
	slli r3, r1, 3
	.loc	1 59 11                         # ieee-multiply.mlir:59:11
	sext_int2long r[9:10], r1
	storeli.w r3, -12(r30)                  # 4-byte Folded Spill
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	sext_int2long r[3:4], r3
	store.d r[9:10], -48(r30)               # 8-byte Folded Spill
	min.sl r[5:6], r[3:4], r[5:6]
	addli.d r[5:6], r[5:6], 8
	max.sl r[5:6], r[5:6], r[3:4]
	sub.sl r[5:6], r[5:6], r[3:4]
	store.d r[5:6], -40(r30)                # 8-byte Folded Spill
	bneq r8, r22, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=1
	load.d r[3:4], -24(r30)                 # 8-byte Folded Reload
	xwait r25, 0
	setlt.sl r1, r[3:4], r[5:6]
	addli r3, zero, 3
	bneq r1, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=1
	lock zero, r16
	addli r1, zero, 4736
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r17, zero, 2
	ew_cfg r18, zero, zero, 3
	ssaux r1, 0
	unlock r16
.LBB0_17:                               # %.thread5
                                        #   in Loop: Header=BB0_12 Depth=1
	xsignal r18, 0
	addli r5, zero, 4096
	.loc	1 27 11                         # ieee-multiply.mlir:27:11
	bneq r11, zero, .LBB0_21
	j .LBB0_22
.LBB0_18:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 23 11                         # ieee-multiply.mlir:23:11
	bneq r8, r24, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_12 Depth=1
	load.d r[3:4], -48(r30)                 # 8-byte Folded Reload
	load.d r[5:6], 0(r30)
	xwait r18, 0
	lock zero, r20
	addli r1, zero, 512
	dma_cfg zero, zero, zero, 0
	sll.d r[3:4], r[3:4], r28
	add.ul r[3:4], r[5:6], r[3:4]
	addli r5, zero, 4736
	dma_cfg zero, r4, zero, 2
	dma_cfg r5, r3, r1, 3
	load.d r[3:4], -40(r30)                 # 8-byte Folded Reload
	dma_cfg r1, r1, r3, 4
	addli r1, zero, 9
	dma_run zero
	unlock r20
	xsignal r1, 0
.LBB0_20:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r3, zero, 3
	addli r5, zero, 4096
	.loc	1 27 11 is_stmt 1               # ieee-multiply.mlir:27:11
	beq r11, zero, .LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=1
	xwait r26, 0
	lock zero, zero
	addli r1, zero, 128
	ds_cfg r16, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r1, zero, 13
	ds_cfg r18, zero, 14
	shuffle_batch r27, zero, r18, 4
	unlock zero
	xsignal r28, 0
.LBB0_22:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r1, 4
	ori r21, r1, 640
	.loc	1 27 11                         # ieee-multiply.mlir:27:11
	bneq r8, r3, .LBB0_37
# %bb.23:                               # %.thread7
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 17
	store.d r[12:13], -72(r30)              # 8-byte Folded Spill
	xwait r28, 0
	addli r4, zero, 12928
	xwait r1, 0
	lock zero, r3
	addli r1, zero, 128
	rs_cfg zero, r18, r20, 1
	rs_cfg zero, r18, zero, 3
	rs_col r4, r27, r1, 0
	addli r1, zero, 13
	.loc	1 51 11 is_stmt 1               # ieee-multiply.mlir:51:11
	addli r4, zero, 10
	.loc	1 27 11                         # ieee-multiply.mlir:27:11
	unlock r3
	addli r3, zero, 16
	xsignal r1, 0
	xsignal r3, 0
	.loc	1 51 11                         # ieee-multiply.mlir:51:11
	xwait r20, 0
	xwait r24, 0
	xwait r4, 0
	xwait r1, 0
	addli r1, zero, 18
	xwait r3, 0
	zext_int2long r[3:4], zero
	xwait r1, 0
	xfence
	mfence { lm, sm, gm }
	store.d r[3:4], -32(r30)                # 8-byte Folded Spill
	addli.d r[4:5], r[3:4], 0
	j .LBB0_25
.LBB0_24:                               # %middle.block
                                        #   in Loop: Header=BB0_25 Depth=2
	load.d r[3:4], -24(r30)                 # 8-byte Folded Reload
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[3:4]
	addli.d r[3:4], r[5:6], 1
	addli.d r[4:5], r[3:4], 0
	beq r1, zero, .LBB0_43
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_27 Depth 3
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	slli r1, r4, 2
	addli r3, zero, 7
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	addli r1, r1, 4608
	sll.d r[7:8], r[4:5], r3
	.loc	1 12 10 is_stmt 1               # ieee-multiply.mlir:12:10
	loadli.w r3,  -12(r30)                  # 4-byte Folded Reload
	.loc	1 51 11                         # ieee-multiply.mlir:51:11
	loads.w r1, 0(r1)
	.loc	1 12 10                         # ieee-multiply.mlir:12:10
	add.s r14, r1, r3
	load.d r[3:4], -32(r30)                 # 8-byte Folded Reload
	j .LBB0_27
.LBB0_26:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	.loc	1 0 10 is_stmt 0                # ieee-multiply.mlir:0:10
	addli r5, zero, 128
	.loc	1 51 11 is_stmt 1               # ieee-multiply.mlir:51:11
	addli.d r[3:4], r[3:4], 4
	addli r10, r12, 8844
	addli r11, r12, 8836
	zext_int2long r[5:6], r5
	stores.w r16, 0(r10)
	addli r10, r12, 8840
	stores.w r9, 0(r11)
	setneq.d r5, r[3:4], r[5:6]
	addli r6, r12, 8832
	stores.w r23, 0(r10)
	stores.w r1, 0(r6)
	beq r5, zero, .LBB0_24
.LBB0_27:                               # %vector.body
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.ul r[5:6], r[3:4], r[7:8]
	lui r13, 4
	slli r12, r5, 2
	ori r15, r13, 648
	addli r1, r12, 4736
	addli r5, r12, 4748
	addli r9, r12, 4740
	addli r11, r12, 12932
	add.s r15, r12, r15
	addli r6, r12, 4744
	loads.w r24, 524(r12)
	loads.w r28, 520(r12)
	loads.w r27, 0(r1)
	addli r1, r12, 12940
	loads.w r5, 0(r5)
	loads.w r22, 0(r9)
	addli r9, r12, 12936
	loads.w r17, 0(r15)
	loads.w r10, 0(r6)
	addli r6, r12, 12928
	loads.w r1, 0(r1)
	loads.w r18, 0(r9)
	loads.w r9, 0(r11)
	add.s r11, r12, r21
	loads.w r6, 0(r6)
	loads.w r26, 0(r11)
	ori r11, r13, 644
	add.s r11, r12, r11
	loads.w r11, 0(r11)
	.loc	1 35 24                         # ieee-multiply.mlir:35:24
	and r15, r5, r2
	.loc	1 51 11                         # ieee-multiply.mlir:51:11
	loads.w r5, 516(r12)
	.loc	1 36 24                         # ieee-multiply.mlir:36:24
	and r1, r1, r2
	.loc	1 39 24                         # ieee-multiply.mlir:39:24
	seteq r16, r15, r19
	.loc	1 41 25                         # ieee-multiply.mlir:41:25
	seteq r20, r15, zero
	.loc	1 42 25                         # ieee-multiply.mlir:42:25
	seteq r23, r1, zero
	.loc	1 40 24                         # ieee-multiply.mlir:40:24
	seteq r25, r1, r19
	.loc	1 46 27                         # ieee-multiply.mlir:46:27
	max.u r1, r15, r1
	.loc	1 51 11                         # ieee-multiply.mlir:51:11
	loads.w r15, 512(r12)
	.loc	1 46 27                         # ieee-multiply.mlir:46:27
	setlt.u r1, r19, r1
	.loc	1 43 29                         # ieee-multiply.mlir:43:29
	and r16, r16, r23
	.loc	1 44 29                         # ieee-multiply.mlir:44:29
	and r20, r20, r25
	.loc	1 45 27                         # ieee-multiply.mlir:45:27
	or r16, r16, r20
	.loc	1 47 23                         # ieee-multiply.mlir:47:23
	or r20, r1, r16
	lui r1, 523264
	lui r16, 523264
	bneq r20, zero, .LBB0_29
# %bb.28:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	.loc	1 0 23 is_stmt 0                # ieee-multiply.mlir:0:23
	ori r16, r13, 652
	add.s r16, r12, r16
	loads.w r16, 0(r16)
.LBB0_29:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	and r10, r10, r2
	and r18, r18, r2
	seteq r20, r10, r19
	seteq r13, r10, zero
	seteq r25, r18, r19
	seteq r23, r18, zero
	max.u r10, r10, r18
	setlt.u r10, r19, r10
	and r18, r20, r23
	and r13, r13, r25
	lui r23, 523264
	or r13, r18, r13
	or r10, r10, r13
	bneq r10, zero, .LBB0_31
# %bb.30:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	addli r23, r17, 0
.LBB0_31:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	and r10, r22, r2
	and r9, r9, r2
	seteq r13, r10, r19
	seteq r17, r9, zero
	seteq r18, r9, r19
	seteq r20, r10, zero
	max.u r9, r10, r9
	setlt.u r9, r19, r9
	and r10, r13, r17
	and r13, r20, r18
	or r10, r10, r13
	or r10, r9, r10
	lui r9, 523264
	bneq r10, zero, .LBB0_33
# %bb.32:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	addli r9, r11, 0
.LBB0_33:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	and r10, r27, r2
	and r6, r6, r2
	seteq r11, r10, r19
	seteq r13, r6, zero
	seteq r17, r6, r19
	seteq r18, r10, zero
	max.u r6, r10, r6
	setlt.u r6, r19, r6
	and r10, r11, r13
	and r11, r18, r17
	or r10, r10, r11
	or r6, r6, r10
	bneq r6, zero, .LBB0_35
# %bb.34:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	addli r1, r26, 0
.LBB0_35:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	.loc	1 51 11 is_stmt 1               # ieee-multiply.mlir:51:11
	addli r6, zero, 16
	blt.s r14, r6, .LBB0_26
# %bb.36:                               # %vector.body
                                        #   in Loop: Header=BB0_27 Depth=3
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r1, r15, 0
	addli r9, r5, 0
	addli r23, r28, 0
	addli r16, r24, 0
	j .LBB0_26
.LBB0_37:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 28 23 is_stmt 1               # ieee-multiply.mlir:28:23
	bneq r8, r7, .LBB0_41
# %bb.38:                               #   in Loop: Header=BB0_12 Depth=1
	addli r3, zero, 9
	addli r1, zero, 0
	xwait r3, 0
	addli r3, zero, 19
	xwait r3, 0
	lock zero, r16
	lui r3, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r3, 0
	ew_cfg zero, r17, zero, 2
	ew_cfg r22, zero, zero, 3
.LBB0_39:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r3, r1, r21
	addli r4, r1, 4736
	addli r1, r1, 512
	dsmul r3, r4, zero, 0
	bneq r1, r5, .LBB0_39
# %bb.40:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 10
	unlock r16
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	beq r11, zero, .LBB0_44
	j .LBB0_42
.LBB0_41:                               # %.thread8
                                        #   in Loop: Header=BB0_12 Depth=1
	beq r11, zero, .LBB0_44
.LBB0_42:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 14
	xwait r1, 0
	addli r1, zero, 21
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 128
	ds_cfg r16, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r18, zero, 13
	loadli.w r3,  -52(r30)                  # 4-byte Folded Reload
	shuffle_coa r3, r27, r1, 4
	addli r1, zero, 20
	unlock zero
	xsignal r26, 0
	xsignal r1, 0
	beq r8, r7, .LBB0_9
	j .LBB0_45
.LBB0_43:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r7, zero, 5
	.loc	1 51 11 is_stmt 1               # ieee-multiply.mlir:51:11
	addli r1, zero, 7
	mfence { sm }
	addli r25, zero, 11
	.loc	1 26 11                         # ieee-multiply.mlir:26:11
	core_id r8
	addli r16, zero, 2
	addli r17, zero, 127
	addli r18, zero, 8
	addli r20, zero, 4
	addli r22, zero, 1
	addli r23, zero, 31
	addli r24, zero, 6
	addli r26, zero, 15
	addli r27, zero, 8832
	addli r28, zero, 12
	.loc	1 51 11                         # ieee-multiply.mlir:51:11
	xsignal r7, 0
	xsignal r1, 0
	addli r1, zero, 14
	xsignal r25, 0
	xsignal r1, 0
	addli r1, zero, 17
	xsignal r1, 0
	addli r1, zero, 19
	xsignal r1, 0
	loadli.w r11,  -80(r30)                 # 4-byte Folded Reload
	load.d r[12:13], -72(r30)               # 8-byte Folded Reload
	load.d r[14:15], -88(r30)               # 8-byte Folded Reload
	.loc	1 52 11                         # ieee-multiply.mlir:52:11
	bneq r11, zero, .LBB0_42
.LBB0_44:                               #   in Loop: Header=BB0_12 Depth=1
	beq r8, r7, .LBB0_9
.LBB0_45:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 60 5                          # ieee-multiply.mlir:60:5
	bneq r8, zero, .LBB0_11
# %bb.46:                               #   in Loop: Header=BB0_12 Depth=1
	load.d r[3:4], -48(r30)                 # 8-byte Folded Reload
	addli r1, zero, 22
	load.d r[5:6], 16(r30)
	xwait r1, 0
	lock zero, r7
	sll.d r[3:4], r[3:4], r7
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r22, zero, 1
	add.ul r[3:4], r[5:6], r[3:4]
	dma_cfg r4, zero, zero, 2
	loadli.w r1,  -76(r30)                  # 4-byte Folded Reload
	dma_cfg r3, r1, r20, 3
	addli r1, zero, 23
	load.d r[3:4], -40(r30)                 # 8-byte Folded Reload
	dma_cfg r20, r20, r3, 4
	dma_run zero
	unlock r7
	j .LBB0_10
.LBB0_47:                               # %._crit_edge
	.loc	1 0 5 is_stmt 0                 # ieee-multiply.mlir:0:5
	addli r1, zero, 5
	bneq r8, r1, .LBB0_49
# %bb.48:                               # %.thread10
	addli r1, zero, 3
	xsignal r1, 0
	.loc	1 2 3 is_stmt 1                 # ieee-multiply.mlir:2:3
	xsignal zero, 0
	j .LBB0_51
.LBB0_49:
	xsignal zero, 0
	bneq r8, zero, .LBB0_51
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/native-activation-056m8l5v" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
