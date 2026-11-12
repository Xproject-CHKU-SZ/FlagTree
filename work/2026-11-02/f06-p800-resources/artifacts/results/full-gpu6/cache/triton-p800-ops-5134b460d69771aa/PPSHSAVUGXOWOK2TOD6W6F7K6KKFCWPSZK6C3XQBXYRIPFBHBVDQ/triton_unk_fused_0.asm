	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/native-activation-7e855n0g" "ieee-multiply.mlir"
	.loc	1 2 0                           # ieee-multiply.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -176
	addli r1, zero, 1
.Ltmp0:
	.loc	1 27 11 prologue_end            # ieee-multiply.mlir:27:11
	core_id r8
	addli r30, sp, 112
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
	addli r1, zero, 15
	addli r2, zero, 17
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 19
	addli r2, zero, 21
	xsignal r1, 0
	xsignal r2, 0
	addli r1, zero, 23
	addli r2, zero, 25
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
	mul.s r12, r2, r4
	fmac.s r2, r2, r4
	min.s r15, r2, r1
	.loc	1 27 11                         # ieee-multiply.mlir:27:11
	bneq r8, r3, .LBB0_5
# %bb.4:                                # %.thread
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r16, zero, 3
	addli r8, zero, 5
	storeli.w zero, -108(r30)               # 4-byte Folded Spill
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
	addli r13, zero, 28
	addli r11, zero, 29
	addli r10, zero, 30
	addli r9, zero, 31
	addli r4, zero, 64
	addli r7, zero, 128
	addli r5, zero, 512
	.loc	1 27 11                         # ieee-multiply.mlir:27:11
	xwait r16, 0
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 6
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r6, 10
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
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg r3, r3, zero, 0
	dma_cfg r3, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg zero, zero, r4, 3
	dma_cfg r7, zero, r6, 4
	dma_cfg r5, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	lock zero, r6
	dma_cfg r3, r3, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r4, r1, r4, 3
	addli r1, zero, 256
	addli r2, zero, 6
	dma_cfg r7, r4, r6, 4
	dma_cfg r5, r1, r3, 5
	addli r1, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r6, 10
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
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	loadli.w r9,  -108(r30)                 # 4-byte Folded Reload
	dma_cfg r3, r3, zero, 0
	dma_cfg r3, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg zero, zero, r4, 3
	dma_cfg r7, zero, r6, 4
	dma_cfg r5, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	core_id r8
	xsignal r1, 0
	ble.s r15, r12, .LBB0_74
	j .LBB0_8
.LBB0_5:
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r1, zero, 2
	bneq r8, r1, .LBB0_7
# %bb.6:
	addli r9, zero, 1
	xwait r1, 0
	ble.s r15, r12, .LBB0_74
	j .LBB0_8
.LBB0_7:
	addli r9, zero, 0
	ble.s r15, r12, .LBB0_74
.LBB0_8:                                # %.lr.ph
	sext_int2long r[1:2], r15
	addli r18, zero, 8
	addli r4, zero, 7
	sext_int2long r[10:11], r12
	addli r12, zero, 5
	addli r16, zero, 2
	addli r15, zero, 127
	addli r19, zero, 4
	addli r20, zero, 1
	addli r21, zero, 31
	addli r22, zero, 6
	addli r24, zero, 11
	addli r25, zero, 15
	addli r26, zero, 8832
	addli r27, zero, 12
	lui r13, 522240
	addli r14, zero, 4096
	storeli.w r9, -108(r30)                 # 4-byte Folded Spill
	store.d r[1:2], -72(r30)                # 8-byte Folded Spill
	lui r1, 524287
	lui r2, 7
	ori r28, r2, 4095
	ori r3, r1, 4095
	lui r1, 522239
	lui r2, 5
	ori r23, r1, 4095
	ori r1, r2, 640
	storeli.w r28, -12(r30)                 # 4-byte Folded Spill
	storeli.w r1, -76(r30)                  # 4-byte Folded Spill
	zext_int2long r[1:2], r18
	store.d r[1:2], -88(r30)                # 8-byte Folded Spill
	zext_int2long r[1:2], r4
	store.d r[1:2], -32(r30)                # 8-byte Folded Spill
	lui r1, 9
	ori r1, r1, 640
	storeli.w r1, -52(r30)                  # 4-byte Folded Spill
	j .LBB0_12
.LBB0_9:                                # %.thread12
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 57 11 is_stmt 1               # ieee-multiply.mlir:57:11
	addli r1, zero, 20
	xwait r1, 0
	addli r1, zero, 23
	xwait r1, 0
	lock zero, r16
	addli r1, zero, 128
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r21, zero, 2
	ew_cfg r1, zero, zero, 3
	loadli.w r1,  -76(r30)                  # 4-byte Folded Reload
	loadli.w r2,  -52(r30)                  # 4-byte Folded Reload
	ssreduce r2, r1, 0
	addli r1, zero, 21
	unlock r16
	xsignal r1, 0
	addli r1, zero, 22
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 0 is_stmt 0                 # ieee-multiply.mlir:0:0
	xsignal r1, 0
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=1
	load.d r[1:2], -72(r30)                 # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 1
	setlt.sl r1, r[10:11], r[1:2]
	beq r1, zero, .LBB0_74
.LBB0_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_57 Depth 2
                                        #     Child Loop BB0_22 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #     Child Loop BB0_67 Depth 2
	.loc	1 4 14 is_stmt 1                # ieee-multiply.mlir:4:14
	bneq r8, r12, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	xwait r12, 0
	lock zero, r16
	addli r1, zero, 512
	.loc	1 10 10                         # ieee-multiply.mlir:10:10
	lui r2, 260096
	.loc	1 4 14                          # ieee-multiply.mlir:4:14
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r15, zero, 2
	ew_cfg r18, zero, zero, 3
	ssaux r1, 0
	.loc	1 10 10                         # ieee-multiply.mlir:10:10
	addli r1, zero, 7
	.loc	1 4 14                          # ieee-multiply.mlir:4:14
	unlock r16
	xsignal r19, 0
	.loc	1 10 10                         # ieee-multiply.mlir:10:10
	xwait r1, 0
	lock zero, r16
	lui r1, 270336
	ew_cfg zero, zero, zero, 1
	ew_cfg r20, zero, zero, 3
	ew_cfg zero, r21, zero, 2
	ewcoeff_cfg zero, r1, zero, 0
	addli r1, zero, 4608
	ssaux r1, 0
	ewcoeff_cfg r2, r2, zero, 0
	dsmadd r1, r1, r1, 8
	unlock r16
	xsignal r22, 0
.LBB0_14:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 10 is_stmt 0                # ieee-multiply.mlir:0:10
	loadli.w r1,  40(r30)
	loadli.w r2,  36(r30)
	.loc	1 24 11 is_stmt 1               # ieee-multiply.mlir:24:11
	load.d r[6:7], -88(r30)                 # 8-byte Folded Reload
	div.s r1, r10, r1
	div.s r1, r1, r2
	.loc	1 9 10                          # ieee-multiply.mlir:9:10
	slli r2, r1, 3
	.loc	1 24 11                         # ieee-multiply.mlir:24:11
	sext_int2long r[4:5], r2
	storeli.w r2, -36(r30)                  # 4-byte Folded Spill
	.loc	1 64 11                         # ieee-multiply.mlir:64:11
	sext_int2long r[1:2], r1
	.loc	1 24 11                         # ieee-multiply.mlir:24:11
	min.sl r[6:7], r[4:5], r[6:7]
	store.d r[1:2], -64(r30)                # 8-byte Folded Spill
	addli.d r[6:7], r[6:7], 8
	max.sl r[6:7], r[6:7], r[4:5]
	sub.sl r[6:7], r[6:7], r[4:5]
	bneq r8, r20, .LBB0_53
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=1
	load.d r[1:2], -32(r30)                 # 8-byte Folded Reload
	xwait r24, 0
	setlt.sl r1, r[1:2], r[6:7]
	addli r2, zero, 3
	bneq r1, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=1
	lock zero, r16
	addli r1, zero, 4736
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, zero, 0
	ew_cfg zero, r15, zero, 2
	ew_cfg r18, zero, zero, 3
	ssaux r1, 0
	unlock r16
.LBB0_17:                               # %.thread7
                                        #   in Loop: Header=BB0_12 Depth=1
	xsignal r18, 0
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	beq r9, zero, .LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_12 Depth=1
	xwait r25, 0
	lock zero, zero
	addli r1, zero, 128
	ds_cfg r16, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r1, zero, 13
	ds_cfg r18, zero, 14
	shuffle_batch r26, zero, r18, 4
	unlock zero
	xsignal r27, 0
.LBB0_19:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	lui r1, 4
	ori r17, r1, 640
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	bneq r8, r2, .LBB0_55
# %bb.20:                               # %.thread9
                                        #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 17
	store.d r[6:7], -104(r30)               # 8-byte Folded Spill
	store.d r[10:11], -96(r30)              # 8-byte Folded Spill
	xwait r27, 0
	addli r4, zero, 12928
	xwait r1, 0
	lock zero, r2
	addli r1, zero, 128
	rs_cfg zero, r18, r19, 1
	rs_cfg zero, r18, zero, 3
	rs_col r4, r26, r1, 0
	addli r1, zero, 13
	.loc	1 56 11 is_stmt 1               # ieee-multiply.mlir:56:11
	addli r4, zero, 10
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	unlock r2
	addli r2, zero, 16
	xsignal r1, 0
	xsignal r2, 0
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	xwait r19, 0
	xwait r22, 0
	xwait r4, 0
	xwait r1, 0
	addli r1, zero, 18
	xwait r2, 0
	xwait r1, 0
	zext_int2long r[1:2], zero
	xfence
	mfence { lm, sm, gm }
	addli.d r[4:5], r[1:2], 0
	store.d r[1:2], -48(r30)                # 8-byte Folded Spill
	j .LBB0_22
.LBB0_21:                               # %middle.block
                                        #   in Loop: Header=BB0_22 Depth=2
	load.d r[1:2], -32(r30)                 # 8-byte Folded Reload
	load.d r[4:5], -24(r30)                 # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_61
.LBB0_22:                               # %.preheader
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	slli r1, r4, 2
	addli r2, zero, 7
	store.d r[4:5], -24(r30)                # 8-byte Folded Spill
	load.d r[9:10], -48(r30)                # 8-byte Folded Reload
	addli r1, r1, 4608
	sll.d r[4:5], r[4:5], r2
	.loc	1 13 10 is_stmt 1               # ieee-multiply.mlir:13:10
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	loads.w r1, 0(r1)
	.loc	1 13 10                         # ieee-multiply.mlir:13:10
	store.d r[4:5], -8(r30)                 # 8-byte Folded Spill
	add.s r16, r1, r2
	j .LBB0_24
.LBB0_23:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	.loc	1 0 10 is_stmt 0                # ieee-multiply.mlir:0:10
	addli r2, zero, 128
	.loc	1 56 11 is_stmt 1               # ieee-multiply.mlir:56:11
	addli.d r[9:10], r[9:10], 4
	addli r8, r1, 8832
	zext_int2long r[11:12], r2
	addli r2, r1, 8844
	stores.w r18, 0(r8)
	setneq.d r6, r[9:10], r[11:12]
	stores.w r14, 0(r2)
	addli r2, r1, 8840
	addli r1, r1, 8836
	stores.w r25, 0(r2)
	stores.w r7, 0(r1)
	beq r6, zero, .LBB0_21
.LBB0_24:                               # %vector.body
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	load.d r[1:2], -8(r30)                  # 8-byte Folded Reload
	addli r4, r17, 0
	add.ul r[1:2], r[9:10], r[1:2]
	slli r1, r1, 2
	addli r7, r1, 4744
	addli r2, r1, 4736
	addli r6, r1, 4748
	add.s r17, r1, r17
	addli r8, r1, 4740
	addli r14, r1, 12932
	loads.w r26, 524(r1)
	loads.w r21, 520(r1)
	loads.w r11, 0(r7)
	loads.w r7, 0(r2)
	addli r2, r1, 12940
	loads.w r12, 0(r6)
	loads.w r6, 0(r8)
	addli r8, r1, 12928
	loads.w r18, 0(r17)
	lui r17, 4
	loads.w r14, 0(r14)
	loads.w r15, 0(r2)
	loads.w r25, 0(r8)
	ori r8, r17, 644
	ori r17, r17, 648
	addli r2, r1, 12936
	add.s r8, r1, r8
	add.s r17, r1, r17
	loads.w r2, 0(r2)
	loads.w r19, 0(r8)
	loads.w r27, 0(r17)
	.loc	1 38 24                         # ieee-multiply.mlir:38:24
	and r8, r12, r3
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	loads.w r12, 516(r1)
	.loc	1 39 24                         # ieee-multiply.mlir:39:24
	and r15, r15, r3
	.loc	1 42 24                         # ieee-multiply.mlir:42:24
	seteq r17, r8, r13
	.loc	1 44 25                         # ieee-multiply.mlir:44:25
	seteq r20, r8, zero
	.loc	1 45 25                         # ieee-multiply.mlir:45:25
	seteq r22, r15, zero
	.loc	1 43 24                         # ieee-multiply.mlir:43:24
	seteq r24, r15, r13
	.loc	1 49 27                         # ieee-multiply.mlir:49:27
	max.u r8, r8, r15
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	loads.w r15, 512(r1)
	.loc	1 49 27                         # ieee-multiply.mlir:49:27
	setlt.u r8, r13, r8
	.loc	1 46 29                         # ieee-multiply.mlir:46:29
	and r17, r17, r22
	.loc	1 47 29                         # ieee-multiply.mlir:47:29
	and r20, r20, r24
	.loc	1 48 27                         # ieee-multiply.mlir:48:27
	or r17, r17, r20
	.loc	1 50 23                         # ieee-multiply.mlir:50:23
	or r20, r8, r17
	lui r8, 523264
	lui r17, 523264
	bneq r20, zero, .LBB0_26
# %bb.25:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	.loc	1 0 23 is_stmt 0                # ieee-multiply.mlir:0:23
	lui r17, 4
	ori r17, r17, 652
	add.s r17, r1, r17
	loads.w r17, 0(r17)
.LBB0_26:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	and r11, r11, r3
	and r2, r2, r3
	seteq r20, r11, r13
	seteq r22, r2, zero
	seteq r24, r2, r13
	seteq r28, r11, zero
	max.u r2, r11, r2
	setlt.u r2, r13, r2
	and r11, r20, r22
	and r20, r28, r24
	or r11, r11, r20
	or r2, r2, r11
	lui r11, 523264
	bneq r2, zero, .LBB0_28
# %bb.27:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	addli r11, r27, 0
.LBB0_28:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	and r2, r6, r3
	and r6, r14, r3
	seteq r14, r2, r13
	seteq r24, r2, zero
	seteq r20, r6, zero
	seteq r22, r6, r13
	max.u r2, r2, r6
	setlt.u r2, r13, r2
	and r6, r14, r20
	and r14, r24, r22
	or r6, r6, r14
	or r2, r2, r6
	lui r6, 523264
	bneq r2, zero, .LBB0_30
# %bb.29:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	addli r6, r19, 0
.LBB0_30:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	and r2, r7, r3
	and r7, r25, r3
	loadli.w r28,  -12(r30)                 # 4-byte Folded Reload
	seteq r14, r2, r13
	seteq r22, r2, zero
	seteq r19, r7, zero
	seteq r20, r7, r13
	max.u r2, r2, r7
	setlt.u r2, r13, r2
	and r7, r14, r19
	and r14, r22, r20
	or r7, r7, r14
	or r2, r2, r7
	bneq r2, zero, .LBB0_32
# %bb.31:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	addli r8, r18, 0
.LBB0_32:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	.loc	1 54 11 is_stmt 1               # ieee-multiply.mlir:54:11
	and r19, r8, r3
	setlt.u r2, r13, r19
	bneq r2, zero, .LBB0_34
# %bb.33:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r18, r8, 0
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_24 Depth=3
	.loc	1 54 11                         # ieee-multiply.mlir:54:11
	lui r2, 1024
	or r18, r8, r2
.LBB0_35:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	and r27, r6, r3
	setlt.u r2, r13, r27
	bneq r2, zero, .LBB0_37
# %bb.36:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r7, r6, 0
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_24 Depth=3
	.loc	1 54 11                         # ieee-multiply.mlir:54:11
	lui r2, 1024
	or r7, r6, r2
.LBB0_38:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	and r2, r11, r3
	setlt.u r14, r13, r2
	bneq r14, zero, .LBB0_40
# %bb.39:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r25, r11, 0
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_24 Depth=3
	.loc	1 54 11                         # ieee-multiply.mlir:54:11
	lui r14, 1024
	or r25, r11, r14
.LBB0_41:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	and r22, r17, r3
	setlt.u r14, r13, r22
	bneq r14, zero, .LBB0_43
# %bb.42:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r14, r17, 0
	.loc	1 54 11                         # ieee-multiply.mlir:54:11
	setlt.u r20, r23, r22
	beq r20, zero, .LBB0_44
	j .LBB0_45
.LBB0_43:                               #   in Loop: Header=BB0_24 Depth=3
	lui r14, 1024
	or r14, r17, r14
	setlt.u r20, r23, r22
	bneq r20, zero, .LBB0_45
.LBB0_44:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r14, r17, 16
	andi r14, r14, 1
	add.s r14, r17, r14
	lui r17, 1048560
	add.s r14, r14, r28
	and r14, r14, r17
.LBB0_45:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	.loc	1 54 11                         # ieee-multiply.mlir:54:11
	setlt.u r2, r23, r2
	bneq r2, zero, .LBB0_47
# %bb.46:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	lui r11, 1048560
	add.s r2, r2, r28
	and r25, r2, r11
.LBB0_47:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	.loc	1 54 11                         # ieee-multiply.mlir:54:11
	setlt.u r2, r23, r27
	addli r17, r4, 0
	bneq r2, zero, .LBB0_50
# %bb.48:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	lui r6, 1048560
	add.s r2, r2, r28
	and r7, r2, r6
	.loc	1 54 11                         # ieee-multiply.mlir:54:11
	setlt.u r2, r23, r19
	beq r2, zero, .LBB0_51
.LBB0_49:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	.loc	1 56 11 is_stmt 1               # ieee-multiply.mlir:56:11
	addli r2, zero, 16
	blt.s r16, r2, .LBB0_23
	j .LBB0_52
.LBB0_50:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	.loc	1 54 11                         # ieee-multiply.mlir:54:11
	setlt.u r2, r23, r19
	bneq r2, zero, .LBB0_49
.LBB0_51:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	srli r2, r8, 16
	lui r6, 1048560
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r28
	and r18, r2, r6
	.loc	1 56 11 is_stmt 1               # ieee-multiply.mlir:56:11
	addli r2, zero, 16
	blt.s r16, r2, .LBB0_23
.LBB0_52:                               # %vector.body
                                        #   in Loop: Header=BB0_24 Depth=3
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r18, r15, 0
	addli r7, r12, 0
	addli r25, r21, 0
	addli r14, r26, 0
	j .LBB0_23
.LBB0_53:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 24 11 is_stmt 1               # ieee-multiply.mlir:24:11
	bneq r8, r22, .LBB0_70
# %bb.54:                               #   in Loop: Header=BB0_12 Depth=1
	load.d r[4:5], 0(r30)
	sll.d r[1:2], r[1:2], r24
	xwait r18, 0
	lock zero, r12
	addli r17, zero, 13
	addli r28, zero, 17
	addli r14, zero, 64
	addli r15, zero, 128
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r20, 10
	add.ul r[1:2], r[4:5], r[1:2]
	addli r4, zero, 3
	dma_cfg zero, zero, r16, 10
	addli r5, zero, 4800
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 7
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 16
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 18
	dma_cfg zero, zero, r28, 10
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
	addli r4, zero, 4736
	dma_cfg zero, zero, r21, 10
	dma_cfg r20, r20, zero, 0
	dma_cfg r20, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r4, zero, r14, 3
	addli r4, zero, 512
	dma_cfg r15, zero, r19, 4
	dma_cfg r4, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r19
	dma_cfg r20, r20, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r5, r1, r14, 3
	addli r1, zero, 256
	addli r2, zero, 3
	addli r5, zero, 10
	dma_cfg r15, r14, r19, 4
	dma_cfg r4, r1, r6, 5
	addli r1, zero, 7
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r19
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 14
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 16
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 18
	dma_cfg zero, zero, r28, 10
	loadli.w r28,  -12(r30)                 # 4-byte Folded Reload
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 19
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 20
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 21
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 22
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 23
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 24
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 25
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 26
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 27
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 28
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 29
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 30
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 4736
	dma_cfg zero, zero, r21, 10
	dma_cfg r20, r20, zero, 0
	dma_cfg r20, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r14, 3
	addli r14, zero, 4096
	dma_cfg r15, zero, r19, 4
	addli r15, zero, 127
	dma_cfg r4, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r1, 0
	.loc	1 30 11                         # ieee-multiply.mlir:30:11
	bneq r9, zero, .LBB0_18
	j .LBB0_19
.LBB0_55:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 31 23                         # ieee-multiply.mlir:31:23
	bneq r8, r12, .LBB0_59
# %bb.56:                               #   in Loop: Header=BB0_12 Depth=1
	addli r2, zero, 9
	addli r1, zero, 0
	xwait r2, 0
	addli r2, zero, 19
	xwait r2, 0
	lock zero, r16
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r2, 0
	ew_cfg zero, r15, zero, 2
	ew_cfg r20, zero, zero, 3
.LBB0_57:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r2, r1, r17
	addli r4, r1, 4736
	addli r1, r1, 512
	dsmul r2, r4, zero, 0
	bneq r1, r14, .LBB0_57
# %bb.58:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 10
	unlock r16
	addli r2, zero, 3
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	.loc	1 57 11                         # ieee-multiply.mlir:57:11
	beq r9, zero, .LBB0_62
	j .LBB0_60
.LBB0_59:                               # %.thread10
                                        #   in Loop: Header=BB0_12 Depth=1
	beq r9, zero, .LBB0_62
.LBB0_60:                               #   in Loop: Header=BB0_12 Depth=1
	addli r1, zero, 14
	xwait r1, 0
	addli r1, zero, 21
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 128
	ds_cfg r16, zero, 0
	ds_cfg r20, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg zero, zero, 11
	ds_cfg r18, zero, 13
	loadli.w r4,  -76(r30)                  # 4-byte Folded Reload
	shuffle_coa r4, r26, r1, 4
	addli r1, zero, 20
	unlock zero
	xsignal r25, 0
	xsignal r1, 0
	beq r8, r12, .LBB0_9
	j .LBB0_63
.LBB0_61:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r12, zero, 5
	.loc	1 56 11 is_stmt 1               # ieee-multiply.mlir:56:11
	addli r1, zero, 7
	mfence { sm }
	addli r24, zero, 11
	.loc	1 27 11                         # ieee-multiply.mlir:27:11
	core_id r8
	addli r16, zero, 2
	addli r15, zero, 127
	addli r18, zero, 8
	addli r19, zero, 4
	addli r20, zero, 1
	addli r21, zero, 31
	addli r22, zero, 6
	addli r25, zero, 15
	addli r26, zero, 8832
	addli r27, zero, 12
	addli r2, zero, 3
	addli r14, zero, 4096
	.loc	1 56 11                         # ieee-multiply.mlir:56:11
	xsignal r12, 0
	xsignal r1, 0
	addli r1, zero, 14
	xsignal r24, 0
	xsignal r1, 0
	addli r1, zero, 17
	xsignal r1, 0
	addli r1, zero, 19
	xsignal r1, 0
	loadli.w r9,  -108(r30)                 # 4-byte Folded Reload
	load.d r[10:11], -96(r30)               # 8-byte Folded Reload
	load.d r[6:7], -104(r30)                # 8-byte Folded Reload
	.loc	1 57 11                         # ieee-multiply.mlir:57:11
	bneq r9, zero, .LBB0_60
.LBB0_62:                               #   in Loop: Header=BB0_12 Depth=1
	beq r8, r12, .LBB0_9
.LBB0_63:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 65 11                         # ieee-multiply.mlir:65:11
	bneq r8, r2, .LBB0_71
# %bb.64:                               #   in Loop: Header=BB0_12 Depth=1
	addli r4, zero, 22
	zext_int2long r[1:2], zero
	xwait r4, 0
	addli r4, zero, 25
	xwait r4, 0
	xfence
	mfence { lm, sm, gm }
	j .LBB0_67
.LBB0_65:                               #   in Loop: Header=BB0_67 Depth=2
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	lui r5, 1048560
	add.s r4, r4, r28
	and r4, r4, r5
.LBB0_66:                               #   in Loop: Header=BB0_67 Depth=2
	.loc	1 65 11                         # ieee-multiply.mlir:65:11
	load.d r[5:6], -32(r30)                 # 8-byte Folded Reload
	lui r7, 9
	ori r7, r7, 768
	setlt.ul r5, r[1:2], r[5:6]
	slli r6, r1, 7
	addli.d r[1:2], r[1:2], 1
	add.s r6, r6, r7
	stores.w r4, 0(r6)
	beq r5, zero, .LBB0_73
.LBB0_67:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	loadli.w r5,  -52(r30)                  # 4-byte Folded Reload
	slli r4, r1, 2
	add.s r4, r4, r5
	loads.w r5, 0(r4)
	and r6, r5, r3
	setlt.u r4, r13, r6
	bneq r4, zero, .LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_67 Depth=2
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r4, r5, 0
	.loc	1 65 11                         # ieee-multiply.mlir:65:11
	setlt.u r6, r23, r6
	bneq r6, zero, .LBB0_66
	j .LBB0_65
.LBB0_69:                               #   in Loop: Header=BB0_67 Depth=2
	lui r4, 1024
	or r4, r5, r4
	setlt.u r6, r23, r6
	bneq r6, zero, .LBB0_66
	j .LBB0_65
.LBB0_70:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 0 11                          # ieee-multiply.mlir:0:11
	addli r2, zero, 3
	.loc	1 30 11 is_stmt 1               # ieee-multiply.mlir:30:11
	beq r9, zero, .LBB0_19
	j .LBB0_18
.LBB0_71:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 66 5                          # ieee-multiply.mlir:66:5
	bneq r8, zero, .LBB0_11
# %bb.72:                               #   in Loop: Header=BB0_12 Depth=1
	load.d r[1:2], -64(r30)                 # 8-byte Folded Reload
	addli r4, zero, 24
	xwait r4, 0
	load.d r[4:5], 16(r30)
	lock zero, r12
	sll.d r[1:2], r[1:2], r19
	dma_cfg r20, r20, zero, 0
	dma_cfg zero, r20, zero, 1
	add.ul r[1:2], r[4:5], r[1:2]
	lui r4, 9
	addli r5, zero, 64
	ori r4, r4, 832
	dma_cfg r2, zero, zero, 2
	dma_cfg r1, r4, r5, 3
	addli r1, zero, 128
	dma_cfg r5, r1, r20, 4
	dma_cfg r16, r1, r6, 5
	addli r1, zero, 25
	dma_cfg zero, zero, r16, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	j .LBB0_10
.LBB0_73:                               # %.thread16
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	1 65 11                         # ieee-multiply.mlir:65:11
	addli r1, zero, 23
	mfence { sm }
	xsignal r1, 0
	addli r1, zero, 24
	j .LBB0_10
.LBB0_74:                               # %._crit_edge
	.loc	1 0 11 is_stmt 0                # ieee-multiply.mlir:0:11
	addli r1, zero, 5
	bneq r8, r1, .LBB0_76
# %bb.75:                               # %.thread13
	addli r1, zero, 3
	xsignal r1, 0
	.loc	1 2 3 is_stmt 1                 # ieee-multiply.mlir:2:3
	xsignal zero, 0
	j .LBB0_78
.LBB0_76:
	xsignal zero, 0
	bneq r8, zero, .LBB0_78
# %bb.77:
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
.LBB0_78:
	.loc	1 2 3 epilogue_begin            # ieee-multiply.mlir:2:3
	addli sp, sp, 112
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
	.long	176                             # 0xb0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/native-activation-7e855n0g" # string offset=26
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
