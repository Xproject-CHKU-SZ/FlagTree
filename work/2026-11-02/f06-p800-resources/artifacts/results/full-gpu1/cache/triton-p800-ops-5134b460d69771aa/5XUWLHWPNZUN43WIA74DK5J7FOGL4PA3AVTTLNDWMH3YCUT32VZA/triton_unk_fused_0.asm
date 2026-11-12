	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/native-activation-h4t4n246" "relu-candidate.mlir"
	.loc	1 2 0                           # relu-candidate.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -776
	addli r1, zero, 1
.Ltmp0:
	.loc	1 47 11 prologue_end            # relu-candidate.mlir:47:11
	core_id r2
	addli r30, sp, 712
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
	unlock r3
	addli r3, zero, 5
	csr_set csr3, r1
	addli r1, zero, 11
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 3
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
	addli r3, zero, 9
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
	addli r1, zero, 7
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
	addli r3, zero, 13
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
	addli r1, zero, 15
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	loadli.w r1,  32(r30)
	loadli.w r3,  36(r30)
	load_param_i r5, 1
	loadli.w r4,  40(r30)
	storeli.w zero, -20(r30)
	storeli.w zero, -40(r30)
	storeli.w zero, -152(r30)
	storeli.w zero, -316(r30)
	storeli.w zero, -428(r30)
	storeli.w zero, -624(r30)
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
	ble.s r3, r1, .LBB0_38
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[5:6], r1
	lui r1, 7
	loadli.w r18,  -20(r30)
	loadli.w r23,  -40(r30)
	loadli.w r8,  -152(r30)
	loadli.w r9,  -316(r30)
	loadli.w r10,  -428(r30)
	loadli.w r11,  -624(r30)
	addli r14, zero, 64
	addli r13, zero, 8
	addli r28, zero, 7
	addli r17, zero, 4
	addli r19, zero, 1
	addli r25, zero, 27
	lui r12, 32
	addli r26, zero, 2
	addli r20, zero, 3
	addli r24, zero, 256
	addli r15, zero, 0
	store.d r[3:4], -704(r30)               # 8-byte Folded Spill
	ori r4, r1, 4095
	addli r1, zero, 128
	lui r3, 1048448
	store.d r[3:4], -712(r30)               # 8-byte Folded Spill
	lui r3, 127
	ori r3, r3, 4095
	storeli.w r3, -636(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.thread57
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 75 11 is_stmt 1               # relu-candidate.mlir:75:11
	load.d r[3:4], 16(r30)
	load.d r[12:13], -680(r30)              # 8-byte Folded Reload
	slli r5, r5, 1
	add.ul r[3:4], r[3:4], r[12:13]
	addli r12, zero, 13
	addli r13, zero, 8
	xwait r12, 0
	lock zero, r17
	lui r12, 32
	dma_cfg zero, r19, zero, 0
	dma_cfg zero, r4, zero, 2
	dma_cfg r7, r3, r5, 3
	addli r3, zero, 512
	dma_cfg r3, r24, r19, 4
	addli r3, zero, 12
	dma_run zero
	unlock r17
	xsignal r3, 0
	loadli.w r18,  -652(r30)                # 4-byte Folded Reload
.LBB0_6:                                # %.thread59
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	load.d r[5:6], -664(r30)                # 8-byte Folded Reload
	load.d r[3:4], -704(r30)                # 8-byte Folded Reload
	loadli.w r15,  -668(r30)                # 4-byte Folded Reload
	addli r23, r23, 1
	.loc	1 79 11 is_stmt 1               # relu-candidate.mlir:79:11
	addli r18, r18, 1
	addli.d r[5:6], r[5:6], 1
	setlt.sl r3, r[5:6], r[3:4]
	beq r3, zero, .LBB0_38
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #     Child Loop BB0_33 Depth 2
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	storeli.w r23, -656(r30)                # 4-byte Folded Spill
	storeli.w r18, -652(r30)                # 4-byte Folded Spill
	.loc	1 47 11 is_stmt 1               # relu-candidate.mlir:47:11
	bneq r2, r17, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	xwait r3, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r3,  40(r30)
	loadli.w r4,  36(r30)
	store.d r[5:6], -664(r30)               # 8-byte Folded Spill
	addli r18, zero, 0
	addli r22, zero, 0
	addli r23, zero, 6
	div.s r3, r5, r3
	mod.s r6, r15, r17
	addli r15, r15, 1
	storeli.w r15, -668(r30)                # 4-byte Folded Spill
	div.s r3, r3, r4
	slli r21, r6, 15
	div.s r4, r3, r14
	slli r5, r4, 3
	slli r4, r4, 6
	sub.s r7, r13, r5
	sub.s r4, r3, r4
	min.s r7, r7, r13
	mod.s r3, r3, r7
	div.s r4, r4, r7
	add.s r3, r5, r3
	slli r5, r4, 7
	storeli.w r5, -672(r30)                 # 4-byte Folded Spill
	zext_int2long r[4:5], r4
	slli r6, r3, 6
	storeli.w r6, -692(r30)                 # 4-byte Folded Spill
	zext_int2long r[6:7], r3
	sll.d r[4:5], r[4:5], r28
	addli r3, zero, 16
	.loc	1 47 11                         # relu-candidate.mlir:47:11
	sll.d r[15:16], r[4:5], r19
	store.d r[6:7], -688(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r3
	load.d r[3:4], 8(r30)
	addli r5, zero, 48
	store.d r[15:16], -680(r30)             # 8-byte Folded Spill
	add.ul r[3:4], r[3:4], r[15:16]
	store.d r[3:4], -648(r30)               # 8-byte Folded Spill
	load.d r[3:4], -712(r30)                # 8-byte Folded Reload
	and.d r[3:4], r[6:7], r[3:4]
	store.d r[3:4], -632(r30)               # 8-byte Folded Spill
	j .LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 11                          # relu-candidate.mlir:0:11
	addli r3, zero, 1024
	.loc	1 55 13 is_stmt 1               # relu-candidate.mlir:55:13
	sub.sl r[12:13], r[15:16], r[12:13]
	.loc	1 56 13                         # relu-candidate.mlir:56:13
	load.d r[23:24], 0(r30)
	sll.d r[15:16], r[15:16], r19
	xwait r20, 0
	lock zero, r17
	dma_cfg r19, r19, zero, 0
	zext_int2long r[27:28], r3
	addli r3, zero, 448
	add.ul r[15:16], r[23:24], r[15:16]
	addli r24, zero, 256
	addli r23, zero, 6
	.loc	1 55 13                         # relu-candidate.mlir:55:13
	div.sl r[12:13], r[12:13], r[27:28]
	zext_int2long r[27:28], r3
	.loc	1 56 13                         # relu-candidate.mlir:56:13
	dma_cfg zero, r16, zero, 2
	.loc	1 55 13                         # relu-candidate.mlir:55:13
	min.sl r[27:28], r[12:13], r[27:28]
	sub.sl r[12:13], r[27:28], r[12:13]
	addli r28, zero, 7
	.loc	1 56 13                         # relu-candidate.mlir:56:13
	addli r3, r12, 64
	addli r12, zero, 256
	addli r13, zero, 8
	dma_cfg r4, r15, r12, 3
	addli r4, zero, 2048
	dma_cfg r12, r4, r3, 4
	dma_run zero
	unlock r17
	xsignal r26, 0
	lui r12, 32
.LBB0_11:                               # %.thread7
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	addli r9, r9, 1
	.loc	1 47 11                         # relu-candidate.mlir:47:11
	addli r18, r18, 1
	.loc	1 61 13                         # relu-candidate.mlir:61:13
	addli r8, r8, 1
	.loc	1 47 11                         # relu-candidate.mlir:47:11
	beq r18, r13, .LBB0_28
.LBB0_12:                               # %.backedge
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	addli r22, r22, 1
.LBB0_13:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 56 13                         # relu-candidate.mlir:56:13
	mod.s r3, r10, r25
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	mod.s r4, r11, r5
	addli r11, r11, 1
	.loc	1 56 13                         # relu-candidate.mlir:56:13
	addli r10, r10, 1
	slli r3, r3, 14
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	slli r27, r4, 14
	.loc	1 56 13                         # relu-candidate.mlir:56:13
	add.s r4, r3, r12
	beq r2, r26, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	zext_int2long r[15:16], r18
	.loc	1 56 13                         # relu-candidate.mlir:56:13
	bneq r2, r19, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 13                          # relu-candidate.mlir:0:13
	loadli.w r3,  -636(r30)                 # 4-byte Folded Reload
	.loc	1 60 13 is_stmt 1               # relu-candidate.mlir:60:13
	sll.d r[12:13], r[15:16], r28
	.loc	1 55 13                         # relu-candidate.mlir:55:13
	add.ul r[15:16], r[12:13], r[6:7]
	zext_int2long r[12:13], r3
	setlt.ul r3, r[12:13], r[15:16]
	load.d r[12:13], -632(r30)              # 8-byte Folded Reload
	bneq r3, zero, .LBB0_10
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 13 is_stmt 0                # relu-candidate.mlir:0:13
	zext_int2long r[12:13], zero
	j .LBB0_10
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 62 13 is_stmt 1               # relu-candidate.mlir:62:13
	addli r3, zero, 5
	xwait r26, 0
	addli r20, zero, 3
	xwait r3, 0
	addli r3, zero, 3
	lock zero, zero
	ds_cfg r3, zero, 0
	ds_cfg r1, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r14, zero, 13
	shuffle_batch r27, r4, r1, 1
	unlock zero
	xsignal r3, 0
	xsignal r17, 0
	j .LBB0_11
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 61 13                         # relu-candidate.mlir:61:13
	mod.s r3, r8, r25
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	addli r4, zero, 40
	.loc	1 61 13                         # relu-candidate.mlir:61:13
	lui r5, 140
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	mod.s r4, r9, r4
	.loc	1 61 13                         # relu-candidate.mlir:61:13
	slli r3, r3, 15
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	slli r4, r4, 15
	.loc	1 61 13                         # relu-candidate.mlir:61:13
	add.s r5, r3, r5
	beq r2, r28, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_13 Depth=2
	bneq r2, r23, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=2
	addli r3, zero, 18
	xwait r28, 0
	addli r24, zero, 256
	sll.d r[3:4], r[15:16], r3
	load.d r[15:16], -648(r30)              # 8-byte Folded Reload
	lock zero, r17
	dma_cfg r19, r19, zero, 0
	add.ul r[3:4], r[15:16], r[3:4]
	addli r15, zero, 256
	dma_cfg zero, r4, zero, 2
	dma_cfg r5, r3, r15, 3
	addli r3, zero, 2048
	addli r5, zero, 48
	dma_cfg r15, r3, r1, 4
	dma_run zero
	unlock r17
	xsignal r23, 0
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=2
	addli r3, zero, 9
	xwait r23, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r20, zero, 0
	ds_cfg r1, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r1, zero, 13
	shuffle_coa r4, r5, r1, 2
	addli r5, zero, 48
	unlock zero
	xsignal r28, 0
	xsignal r13, 0
	j .LBB0_11
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=2
	bneq r2, r17, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 13 is_stmt 0                # relu-candidate.mlir:0:13
	addli r5, zero, 1
	addli r3, zero, 1
	addli r15, zero, 0
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	xwait r17, 0
	xwait r13, 0
	beq r22, zero, .LBB0_25
.LBB0_24:                               # %.preheader8
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r15, 14
	slli r13, r15, 8
	lock zero, r5
	addli r15, zero, 1
	mm_cfg r14, r1, r14, 0
	or r12, r12, r4
	or r13, r13, r21
	mm_cfg r17, r17, r5, 2
	mm_acc r13, r27, r12, 5
	andi r12, r3, 1
	addli r3, zero, 0
	unlock r5
	bneq r12, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r15, 14
	slli r13, r15, 8
	lock zero, r5
	addli r15, zero, 1
	mm_cfg r14, r1, r14, 0
	or r12, r12, r4
	or r13, r13, r21
	mm_cfg r17, r17, r5, 2
	mm r13, r27, r12, 5
	andi r12, r3, 1
	addli r3, zero, 0
	unlock r5
	bneq r12, zero, .LBB0_25
.LBB0_26:                               # %.thread7.thread54
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r3, zero, 5
	addli r9, r9, 1
	.loc	1 47 11 is_stmt 1               # relu-candidate.mlir:47:11
	addli r18, r18, 1
	.loc	1 61 13                         # relu-candidate.mlir:61:13
	addli r8, r8, 1
	addli r5, zero, 48
	lui r12, 32
	addli r13, zero, 8
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	bneq r18, r13, .LBB0_12
	j .LBB0_29
.LBB0_27:                               # %.thread7.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r9, r9, 1
	.loc	1 47 11                         # relu-candidate.mlir:47:11
	addli r18, r18, 1
	.loc	1 61 13                         # relu-candidate.mlir:61:13
	addli r8, r8, 1
	addli r5, zero, 48
	bneq r18, r13, .LBB0_12
	j .LBB0_30
.LBB0_28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 47 11                         # relu-candidate.mlir:47:11
	bneq r2, r17, .LBB0_30
.LBB0_29:                               # %.thread56
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 10
	xsignal r3, 0
.LBB0_30:                               # %.thread53
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 75 11                         # relu-candidate.mlir:75:11
	loadli.w r3,  -672(r30)                 # 4-byte Folded Reload
	addli r5, zero, 896
	loadli.w r23,  -656(r30)                # 4-byte Folded Reload
	zext_int2long r[12:13], r1
	zext_int2long r[5:6], r5
	zext_int2long r[3:4], r3
	mod.s r7, r23, r17
	min.ul r[5:6], r[3:4], r[5:6]
	addli.d r[5:6], r[5:6], 128
	max.ul r[5:6], r[5:6], r[3:4]
	slli r7, r7, 9
	sub.sl r[3:4], r[5:6], r[3:4]
	min.ul r[5:6], r[3:4], r[12:13]
	lui r4, 356
	add.s r7, r7, r4
	beq r2, r19, .LBB0_5
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r18,  -652(r30)                # 4-byte Folded Reload
	ori r4, r4, 2048
	lui r15, 8
	.loc	1 79 11 is_stmt 1               # relu-candidate.mlir:79:11
	mod.s r3, r18, r17
	slli r3, r3, 15
	add.s r4, r3, r4
	addli r3, zero, 5
	bneq r2, r3, .LBB0_35
# %bb.32:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 10
	addli r5, zero, 0
	lui r12, 32
	addli r13, zero, 8
	xwait r3, 0
	addli r3, zero, 12
	xwait r3, 0
	addli r3, zero, 15
	xwait r3, 0
	lock zero, r26
	lui r3, 260096
	ew_cfg r19, zero, zero, 10
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r3, r3, zero, 0
	addli r3, zero, 127
	ew_cfg zero, r3, zero, 2
	ew_cfg r19, zero, zero, 3
.LBB0_33:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r3, r4, r5
	add.s r6, r21, r5
	addli r5, r5, 512
	dsmadd r3, r6, r7, 0
	bneq r5, r15, .LBB0_33
# %bb.34:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	ew_cfg zero, zero, zero, 10
	unlock r26
	xsignal r3, 0
	addli r3, zero, 13
	xsignal r3, 0
	addli r3, zero, 14
	j .LBB0_37
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	lui r12, 32
	addli r13, zero, 8
	.loc	1 91 5 is_stmt 1                # relu-candidate.mlir:91:5
	bneq r2, zero, .LBB0_6
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # relu-candidate.mlir:0:5
	loadli.w r3,  -692(r30)                 # 4-byte Folded Reload
	.loc	1 91 5                          # relu-candidate.mlir:91:5
	load.d r[21:22], -688(r30)              # 8-byte Folded Reload
	addli r7, zero, 5
	sext_int2long r[12:13], r3
	addli r3, zero, 448
	zext_int2long r[15:16], r3
	addli r3, zero, 17
	min.sl r[15:16], r[12:13], r[15:16]
	sll.d r[21:22], r[21:22], r3
	addli r3, zero, 14
	addli.d r[15:16], r[15:16], 64
	max.sl r[15:16], r[15:16], r[12:13]
	store.d r[15:16], -632(r30)             # 8-byte Folded Spill
	load.d r[15:16], 24(r30)
	add.ul r[21:22], r[15:16], r[21:22]
	load.d r[15:16], -632(r30)              # 8-byte Folded Reload
	sub.sl r[12:13], r[15:16], r[12:13]
	zext_int2long r[15:16], r14
	store.d r[12:13], -632(r30)             # 8-byte Folded Spill
	load.d r[12:13], -680(r30)              # 8-byte Folded Reload
	add.ul r[21:22], r[21:22], r[12:13]
	load.d r[12:13], -632(r30)              # 8-byte Folded Reload
	xwait r3, 0
	lock zero, r7
	slli r3, r5, 2
	dma_cfg r19, zero, zero, 0
	dma_cfg zero, r19, zero, 1
	dma_cfg r22, zero, zero, 2
	min.sl r[12:13], r[12:13], r[15:16]
	dma_cfg r21, r4, r3, 3
	addli r3, zero, 512
	addli r4, zero, 2048
	dma_cfg r4, r3, r12, 4
	addli r13, zero, 8
	lui r12, 32
	addli r3, zero, 15
	dma_run zero
	unlock r7
.LBB0_37:                               # %.thread59
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	xsignal r3, 0
	j .LBB0_6
.LBB0_38:                               # %._crit_edge
	.loc	1 2 3 is_stmt 1                 # relu-candidate.mlir:2:3
	xsignal zero, 0
	bneq r2, zero, .LBB0_40
# %bb.39:
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
.LBB0_40:
	.loc	1 2 3 epilogue_begin            # relu-candidate.mlir:2:3
	addli sp, sp, 712
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
	.long	776                             # 0x308
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/native-activation-h4t4n246" # string offset=27
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
