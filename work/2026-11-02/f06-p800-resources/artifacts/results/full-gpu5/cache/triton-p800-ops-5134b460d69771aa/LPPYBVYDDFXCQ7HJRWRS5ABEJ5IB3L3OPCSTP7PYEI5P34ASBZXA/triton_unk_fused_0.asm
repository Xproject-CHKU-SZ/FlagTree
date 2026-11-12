	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/native-activation-8614judm" "relu-candidate.mlir"
	.loc	1 2 0                           # relu-candidate.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1456
	addli r1, zero, 1
.Ltmp0:
	.loc	1 50 11 prologue_end            # relu-candidate.mlir:50:11
	core_id r2
	addli r30, sp, 1392
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	lui r1, 1048575
	ori r1, r1, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	addli r3, zero, 2
	uni_sram_cfg r1, r1
	lui r4, 1048575
	lock zero, r3
	ew_cfg r1, zero, zero, 16
	ori r1, r4, 4095
	addli r4, zero, 5
	unlock r3
	addli r3, zero, 3
	csr_set csr3, r1
	addli r1, zero, 11
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r1, zero, 9
	addli r3, zero, 7
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r1, zero, 13
	addli r3, zero, 15
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
.LBB0_3:
	loadli.w r1,  32(r30)
	loadli.w r3,  36(r30)
	load_param_i r5, 1
	loadli.w r4,  40(r30)
	storeli.w zero, -20(r30)
	storeli.w zero, -40(r30)
	storeli.w zero, -264(r30)
	storeli.w zero, -908(r30)
	storeli.w zero, -1128(r30)
	storeli.w zero, -1324(r30)
	mul.s r1, r3, r1
	addli r3, r5, 0
	fmac.s r3, r1, r4
	mul.s r4, r1, r4
	addli r3, r3, -1
	div.s r3, r3, r5
	load_param_i r5, 0
	mul.s r1, r3, r5
	fmac.s r3, r3, r5
	min.s r3, r3, r4
	ble.s r3, r1, .LBB0_39
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	loadli.w r9,  -20(r30)
	loadli.w r17,  -40(r30)
	loadli.w r10,  -264(r30)
	loadli.w r11,  -908(r30)
	loadli.w r28,  -1128(r30)
	sext_int2long r[7:8], r1
	addli r12, zero, 128
	addli r21, zero, 1
	addli r22, zero, 6
	addli r16, zero, 4
	addli r18, zero, 2
	addli r25, zero, 48
	addli r23, zero, 54
	lui r13, 32
	addli r24, zero, 32
	addli r15, zero, 0
	store.d r[3:4], -1392(r30)              # 8-byte Folded Spill
	loadli.w r3,  -1324(r30)
	addli r4, zero, 5
	j .LBB0_7
.LBB0_5:                                # %.thread54
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 78 11 is_stmt 1               # relu-candidate.mlir:78:11
	load.d r[8:9], 16(r30)
	load.d r[14:15], -1368(r30)             # 8-byte Folded Reload
	addli r1, zero, 13
	xwait r1, 0
	lock zero, r16
	slli r1, r5, 2
	add.ul r[8:9], r[8:9], r[14:15]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r9, zero, 2
	dma_cfg r7, r8, r1, 3
	addli r1, zero, 256
	dma_cfg r1, r1, r21, 4
	addli r1, zero, 12
	dma_run zero
	unlock r16
	xsignal r1, 0
	loadli.w r9,  -1340(r30)                # 4-byte Folded Reload
.LBB0_6:                                # %.thread56
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	load.d r[7:8], -1352(r30)               # 8-byte Folded Reload
	load.d r[5:6], -1392(r30)               # 8-byte Folded Reload
	loadli.w r15,  -1356(r30)               # 4-byte Folded Reload
	addli r17, r17, 1
	addli r3, r27, 1
	addli r28, r26, 1
	.loc	1 79 11 is_stmt 1               # relu-candidate.mlir:79:11
	addli r9, r9, 1
	addli.d r[7:8], r[7:8], 1
	setlt.sl r1, r[7:8], r[5:6]
	beq r1, zero, .LBB0_39
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_34 Depth 2
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	storeli.w r17, -1344(r30)               # 4-byte Folded Spill
	storeli.w r9, -1340(r30)                # 4-byte Folded Spill
	.loc	1 50 11 is_stmt 1               # relu-candidate.mlir:50:11
	bneq r2, r16, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r1,  40(r30)
	loadli.w r6,  36(r30)
	store.d r[7:8], -1352(r30)              # 8-byte Folded Spill
	addli r14, zero, 8
	addli r5, zero, 0
	addli r17, zero, 0
	div.s r1, r7, r1
	mod.s r8, r15, r16
	addli r15, r15, 1
	storeli.w r15, -1356(r30)               # 4-byte Folded Spill
	div.s r1, r1, r6
	div.s r6, r1, r12
	slli r7, r6, 3
	slli r6, r6, 7
	sub.s r9, r21, r7
	sub.s r6, r1, r6
	min.s r9, r9, r14
	mod.s r14, r1, r9
	div.s r6, r6, r9
	slli r1, r8, 15
	zext_int2long r[8:9], r6
	add.s r7, r7, r14
	slli r6, r6, 6
	storeli.w r6, -1360(r30)                # 4-byte Folded Spill
	slli r6, r7, 7
	sll.d r[8:9], r[8:9], r22
	zext_int2long r[14:15], r7
	.loc	1 50 11                         # relu-candidate.mlir:50:11
	storeli.w r6, -1380(r30)                # 4-byte Folded Spill
	load.d r[6:7], 8(r30)
	sll.d r[8:9], r[8:9], r18
	store.d r[14:15], -1376(r30)            # 8-byte Folded Spill
	store.d r[8:9], -1368(r30)              # 8-byte Folded Spill
	add.ul r[6:7], r[6:7], r[8:9]
	store.d r[6:7], -1336(r30)              # 8-byte Folded Spill
	addli r6, zero, 14
	sll.d r[14:15], r[14:15], r6
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 58 13 is_stmt 1               # relu-candidate.mlir:58:13
	addli r9, zero, 7
	.loc	1 59 13                         # relu-candidate.mlir:59:13
	load.d r[21:22], 0(r30)
	sll.d r[19:20], r[19:20], r18
	.loc	1 58 13                         # relu-candidate.mlir:58:13
	srl.d r[6:7], r[6:7], r9
	.loc	1 59 13                         # relu-candidate.mlir:59:13
	add.ul r[19:20], r[21:22], r[19:20]
	addli r21, zero, 1
	addli r22, zero, 6
	sub.s r6, r12, r6
	addli r7, zero, 3
	xwait r7, 0
	lock zero, r16
	addli r7, zero, 512
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r20, zero, 2
	dma_cfg r8, r19, r12, 3
	dma_cfg r12, r7, r6, 4
	dma_run zero
	unlock r16
	xsignal r18, 0
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	addli r11, r11, 1
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	addli r10, r10, 1
.LBB0_12:                               # %.thread7
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 50 11                         # relu-candidate.mlir:50:11
	addli r5, r5, 1
	beq r5, r16, .LBB0_29
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	addli r17, r17, 1
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	add.s r26, r28, r17
	add.s r27, r3, r17
	.loc	1 59 13                         # relu-candidate.mlir:59:13
	mod.s r6, r26, r23
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	mod.s r7, r27, r25
	.loc	1 59 13                         # relu-candidate.mlir:59:13
	slli r6, r6, 14
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	slli r19, r7, 14
	.loc	1 59 13                         # relu-candidate.mlir:59:13
	add.s r8, r6, r13
	beq r2, r18, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	zext_int2long r[6:7], r5
	.loc	1 59 13                         # relu-candidate.mlir:59:13
	bneq r2, r21, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 63 13 is_stmt 1               # relu-candidate.mlir:63:13
	sll.d r[6:7], r[6:7], r4
	addli r9, zero, 16383
	.loc	1 58 13                         # relu-candidate.mlir:58:13
	add.ul r[19:20], r[6:7], r[14:15]
	zext_int2long r[21:22], r9
	setlt.ul r9, r[21:22], r[19:20]
	bneq r9, zero, .LBB0_10
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 13 is_stmt 0                # relu-candidate.mlir:0:13
	addli.d r[6:7], r[19:20], 0
	j .LBB0_10
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 65 13 is_stmt 1               # relu-candidate.mlir:65:13
	xwait r18, 0
	xwait r4, 0
	lock zero, zero
	addli r6, zero, 3
	ds_cfg r18, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r12, zero, 13
	shuffle_batch r19, r8, r24, 1
	unlock zero
	xsignal r6, 0
	xsignal r16, 0
	j .LBB0_11
.LBB0_19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	addli r8, zero, 55
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	addli r9, zero, 160
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	mod.s r8, r10, r8
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	mod.s r9, r11, r9
	addli r11, r11, 1
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	addli r10, r10, 1
	slli r20, r8, 13
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	slli r8, r9, 13
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	lui r9, 248
	add.s r9, r20, r9
	addli r20, zero, 7
	beq r2, r20, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r2, r22, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=2
	addli r8, zero, 17
	sll.d r[6:7], r[6:7], r8
	addli r8, zero, 7
	xwait r8, 0
	load.d r[19:20], -1336(r30)             # 8-byte Folded Reload
	lock zero, r16
	addli r8, zero, 256
	dma_cfg zero, zero, zero, 0
	add.ul r[6:7], r[19:20], r[6:7]
	dma_cfg zero, r7, zero, 2
	dma_cfg r9, r6, r8, 3
	addli r6, zero, 4096
	dma_cfg r8, r6, r24, 4
	dma_run zero
	unlock r16
	xsignal r22, 0
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r6, zero, 9
	xwait r22, 0
	xwait r6, 0
	lock zero, zero
	addli r6, zero, 64
	ds_cfg r18, zero, 0
	ds_cfg r6, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r6, zero, 13
	addli r6, zero, 7
	shuffle_coa r8, r9, r24, 2
	unlock zero
	xsignal r6, 0
	addli r6, zero, 8
	xsignal r6, 0
	j .LBB0_12
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r2, r16, .LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	addli r6, zero, 8
	xwait r16, 0
	xwait r6, 0
	addli r6, zero, 64
	lock zero, r21
	mm_cfg r6, r24, r12, 0
	mm_cfg r18, r18, r21, 2
	beq r17, zero, .LBB0_27
# %bb.25:                               # %.preheader8
                                        #   in Loop: Header=BB0_14 Depth=2
	mm_acc r1, r19, r8, 8
	j .LBB0_28
.LBB0_26:                               # %.thread7.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 50 11                         # relu-candidate.mlir:50:11
	addli r5, r5, 1
	bneq r5, r16, .LBB0_13
	j .LBB0_31
.LBB0_27:                               # %.preheader
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	mm r1, r19, r8, 8
.LBB0_28:                               # %.thread7.thread51
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 50 11                         # relu-candidate.mlir:50:11
	addli r5, r5, 1
	.loc	1 65 13                         # relu-candidate.mlir:65:13
	addli r6, zero, 9
	unlock r21
	xsignal r4, 0
	xsignal r6, 0
	bneq r5, r16, .LBB0_13
	j .LBB0_30
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 50 11                         # relu-candidate.mlir:50:11
	bneq r2, r16, .LBB0_31
.LBB0_30:                               # %.thread53
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 10
	xsignal r3, 0
.LBB0_31:                               # %.thread50
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 78 11                         # relu-candidate.mlir:78:11
	loadli.w r3,  -1360(r30)                # 4-byte Folded Reload
	loadli.w r17,  -1344(r30)               # 4-byte Folded Reload
	addli r9, zero, 64
	zext_int2long r[14:15], r9
	zext_int2long r[5:6], r3
	addli r3, zero, 960
	zext_int2long r[7:8], r3
	mod.s r3, r17, r16
	min.ul r[7:8], r[5:6], r[7:8]
	addli.d r[7:8], r[7:8], 64
	max.ul r[7:8], r[7:8], r[5:6]
	slli r3, r3, 8
	sub.sl r[5:6], r[7:8], r[5:6]
	lui r7, 358
	min.ul r[5:6], r[5:6], r[14:15]
	add.s r7, r3, r7
	beq r2, r21, .LBB0_5
# %bb.32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r9,  -1340(r30)                # 4-byte Folded Reload
	lui r8, 358
	ori r8, r8, 1024
	.loc	1 79 11 is_stmt 1               # relu-candidate.mlir:79:11
	mod.s r3, r9, r16
	slli r3, r3, 15
	add.s r3, r3, r8
	bneq r2, r4, .LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	addli r6, zero, 10
	addli r5, zero, 0
	lui r14, 8
	xwait r6, 0
	addli r6, zero, 12
	xwait r6, 0
	addli r6, zero, 15
	xwait r6, 0
	lock zero, r18
	lui r6, 260096
	ew_cfg r21, zero, zero, 10
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r6, r6, zero, 0
	addli r6, zero, 63
	ew_cfg zero, r6, zero, 2
	ew_cfg r21, zero, zero, 3
.LBB0_34:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r3, r5
	add.s r8, r1, r5
	addli r5, r5, 256
	dsmadd r6, r8, r7, 0
	bneq r5, r14, .LBB0_34
# %bb.35:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	ew_cfg zero, zero, zero, 10
	unlock r18
	xsignal r1, 0
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 14
	j .LBB0_38
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 88 5                          # relu-candidate.mlir:88:5
	bneq r2, zero, .LBB0_6
# %bb.37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # relu-candidate.mlir:0:5
	loadli.w r1,  -1380(r30)                # 4-byte Folded Reload
	zext_int2long r[14:15], zero
	.loc	1 88 5                          # relu-candidate.mlir:88:5
	load.d r[19:20], -1376(r30)             # 8-byte Folded Reload
	addli r4, zero, 5
	sext_int2long r[7:8], r1
	addli r1, zero, 19
	min.sl r[14:15], r[7:8], r[14:15]
	sll.d r[19:20], r[19:20], r1
	addli r1, zero, 14
	addli.d r[14:15], r[14:15], 128
	max.sl r[14:15], r[14:15], r[7:8]
	store.d r[14:15], -1336(r30)            # 8-byte Folded Spill
	load.d r[14:15], 24(r30)
	add.ul r[19:20], r[14:15], r[19:20]
	load.d r[14:15], -1336(r30)             # 8-byte Folded Reload
	sub.sl r[7:8], r[14:15], r[7:8]
	zext_int2long r[14:15], r12
	store.d r[7:8], -1336(r30)              # 8-byte Folded Spill
	load.d r[7:8], -1368(r30)               # 8-byte Folded Reload
	add.ul r[19:20], r[19:20], r[7:8]
	load.d r[7:8], -1336(r30)               # 8-byte Folded Reload
	xwait r1, 0
	slli r1, r5, 2
	min.sl r[7:8], r[7:8], r[14:15]
	addli r14, zero, 5
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r21, zero, 1
	dma_cfg r20, zero, zero, 2
	dma_cfg r19, r3, r1, 3
	addli r1, zero, 256
	addli r3, zero, 4096
	dma_cfg r3, r1, r7, 4
	addli r1, zero, 15
	dma_run zero
	unlock r14
.LBB0_38:                               # %.thread56
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	xsignal r1, 0
	j .LBB0_6
.LBB0_39:                               # %._crit_edge
	.loc	1 2 3 is_stmt 1                 # relu-candidate.mlir:2:3
	xsignal zero, 0
	bneq r2, zero, .LBB0_41
# %bb.40:
	.loc	1 0 3 is_stmt 0                 # relu-candidate.mlir:0:3
	addli r1, zero, 2
	.loc	1 2 3                           # relu-candidate.mlir:2:3
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
.LBB0_41:
	.loc	1 2 3 epilogue_begin            # relu-candidate.mlir:2:3
	addli sp, sp, 1392
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
	.long	1456                            # 0x5b0
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
.asciz	"relu-candidate.mlir"           # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/native-activation-8614judm" # string offset=27
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
