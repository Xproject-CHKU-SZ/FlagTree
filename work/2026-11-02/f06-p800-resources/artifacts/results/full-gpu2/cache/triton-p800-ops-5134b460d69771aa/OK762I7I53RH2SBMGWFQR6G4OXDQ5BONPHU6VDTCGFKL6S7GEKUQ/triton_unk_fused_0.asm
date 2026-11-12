	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/native-activation-zwvk7qp8" "relu-candidate.mlir"
	.loc	1 2 0                           # relu-candidate.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -784
	addli r1, zero, 1
.Ltmp0:
	.loc	1 48 11 prologue_end            # relu-candidate.mlir:48:11
	core_id r2
	addli r30, sp, 720
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
	sext_int2long r[6:7], r1
	lui r1, 15
	loadli.w r15,  -20(r30)
	loadli.w r8,  -152(r30)
	loadli.w r9,  -316(r30)
	loadli.w r10,  -428(r30)
	loadli.w r11,  -624(r30)
	addli r14, zero, 128
	addli r24, zero, 7
	addli r18, zero, 4
	addli r20, zero, 1
	addli r26, zero, 27
	lui r25, 32
	addli r27, zero, 2
	addli r19, zero, 16
	addli r17, zero, 256
	addli r16, zero, 0
	store.d r[3:4], -712(r30)               # 8-byte Folded Spill
	loadli.w r3,  -40(r30)
	storeli.w r3, -660(r30)                 # 4-byte Folded Spill
	ori r4, r1, 4095
	addli r1, zero, 3
	lui r3, 1047552
	store.d r[3:4], -720(r30)               # 8-byte Folded Spill
	lui r4, 1023
	addli r3, zero, 64
	ori r4, r4, 4095
	storeli.w r4, -644(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.thread57
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 76 11 is_stmt 1               # relu-candidate.mlir:76:11
	load.d r[12:13], 16(r30)
	load.d r[15:16], -688(r30)              # 8-byte Folded Reload
	addli r4, zero, 13
	xwait r4, 0
	lock zero, r18
	slli r4, r5, 1
	add.ul r[12:13], r[12:13], r[15:16]
	dma_cfg zero, r20, zero, 0
	dma_cfg zero, r13, zero, 2
	dma_cfg r7, r12, r4, 3
	addli r4, zero, 512
	dma_cfg r4, r17, r20, 4
	addli r4, zero, 12
	dma_run zero
	unlock r18
	xsignal r4, 0
	loadli.w r15,  -664(r30)                # 4-byte Folded Reload
.LBB0_6:                                # %.thread59
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	load.d r[6:7], -672(r30)                # 8-byte Folded Reload
	load.d r[4:5], -712(r30)                # 8-byte Folded Reload
	loadli.w r16,  -676(r30)                # 4-byte Folded Reload
	.loc	1 80 11 is_stmt 1               # relu-candidate.mlir:80:11
	addli r15, r15, 1
	addli.d r[6:7], r[6:7], 1
	setlt.sl r4, r[6:7], r[4:5]
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	loadli.w r5,  -660(r30)                 # 4-byte Folded Reload
	addli r5, r5, 1
	.loc	1 80 11                         # relu-candidate.mlir:80:11
	storeli.w r5, -660(r30)                 # 4-byte Folded Spill
	beq r4, zero, .LBB0_38
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #     Child Loop BB0_33 Depth 2
	.loc	1 0 11                          # relu-candidate.mlir:0:11
	storeli.w r15, -664(r30)                # 4-byte Folded Spill
	.loc	1 48 11 is_stmt 1               # relu-candidate.mlir:48:11
	bneq r2, r18, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 11
	xwait r4, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r4,  40(r30)
	loadli.w r5,  36(r30)
	store.d r[6:7], -672(r30)               # 8-byte Folded Spill
	addli r12, zero, 32
	addli r13, zero, 8
	addli r15, zero, 0
	div.s r4, r6, r4
	mod.s r7, r16, r18
	addli r16, r16, 1
	storeli.w r16, -676(r30)                # 4-byte Folded Spill
	addli r16, zero, 0
	div.s r4, r4, r5
	slli r23, r7, 15
	div.s r5, r4, r14
	slli r6, r5, 3
	slli r5, r5, 7
	sub.s r12, r12, r6
	sub.s r5, r4, r5
	min.s r12, r12, r13
	mod.s r4, r4, r12
	div.s r5, r5, r12
	add.s r4, r6, r4
	slli r6, r5, 7
	storeli.w r6, -680(r30)                 # 4-byte Folded Spill
	zext_int2long r[5:6], r5
	slli r7, r4, 6
	zext_int2long r[12:13], r4
	addli r4, zero, 17
	sll.d r[5:6], r[5:6], r24
	storeli.w r7, -700(r30)                 # 4-byte Folded Spill
	store.d r[12:13], -696(r30)             # 8-byte Folded Spill
	sll.d r[12:13], r[12:13], r4
	.loc	1 48 11                         # relu-candidate.mlir:48:11
	sll.d r[6:7], r[5:6], r20
	load.d r[4:5], 8(r30)
	store.d r[12:13], -632(r30)             # 8-byte Folded Spill
	store.d r[6:7], -688(r30)               # 8-byte Folded Spill
	add.ul r[4:5], r[4:5], r[6:7]
	addli r7, zero, 48
	store.d r[4:5], -656(r30)               # 8-byte Folded Spill
	load.d r[4:5], -720(r30)                # 8-byte Folded Reload
	and.d r[4:5], r[12:13], r[4:5]
	store.d r[4:5], -640(r30)               # 8-byte Folded Spill
	j .LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 11                          # relu-candidate.mlir:0:11
	addli r6, zero, 2048
	.loc	1 56 13 is_stmt 1               # relu-candidate.mlir:56:13
	sub.sl r[4:5], r[21:22], r[4:5]
	addli r13, zero, 1984
	.loc	1 57 13                         # relu-candidate.mlir:57:13
	sll.d r[21:22], r[21:22], r20
	xwait r1, 0
	lock zero, r18
	addli r17, zero, 256
	dma_cfg r20, r20, zero, 0
	zext_int2long r[24:25], r6
	load.d r[6:7], 0(r30)
	.loc	1 56 13                         # relu-candidate.mlir:56:13
	div.sl r[4:5], r[4:5], r[24:25]
	zext_int2long r[24:25], r13
	.loc	1 57 13                         # relu-candidate.mlir:57:13
	add.ul r[21:22], r[6:7], r[21:22]
	addli r6, zero, 4096
	addli r7, zero, 48
	dma_cfg zero, r22, zero, 2
	.loc	1 56 13                         # relu-candidate.mlir:56:13
	min.sl r[24:25], r[4:5], r[24:25]
	sub.sl r[4:5], r[24:25], r[4:5]
	addli r24, zero, 7
	lui r25, 32
	.loc	1 57 13                         # relu-candidate.mlir:57:13
	addli r4, r4, 64
	addli r5, zero, 256
	dma_cfg r12, r21, r5, 3
	dma_cfg r5, r6, r4, 4
	dma_run zero
	unlock r18
	xsignal r27, 0
.LBB0_11:                               # %.thread7
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	addli r9, r9, 1
	.loc	1 48 11                         # relu-candidate.mlir:48:11
	addli r15, r15, 1
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	addli r8, r8, 1
	.loc	1 48 11                         # relu-candidate.mlir:48:11
	beq r15, r19, .LBB0_28
.LBB0_12:                               # %.backedge
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	addli r16, r16, 1
.LBB0_13:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 57 13                         # relu-candidate.mlir:57:13
	mod.s r4, r10, r26
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	mod.s r5, r11, r7
	addli r11, r11, 1
	.loc	1 57 13                         # relu-candidate.mlir:57:13
	addli r10, r10, 1
	slli r4, r4, 14
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	slli r28, r5, 14
	.loc	1 57 13                         # relu-candidate.mlir:57:13
	add.s r12, r4, r25
	beq r2, r27, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	zext_int2long r[21:22], r15
	.loc	1 57 13                         # relu-candidate.mlir:57:13
	bneq r2, r20, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 56 13 is_stmt 1               # relu-candidate.mlir:56:13
	load.d r[6:7], -632(r30)                # 8-byte Folded Reload
	.loc	1 61 13                         # relu-candidate.mlir:61:13
	sll.d r[4:5], r[21:22], r24
	.loc	1 56 13                         # relu-candidate.mlir:56:13
	add.ul r[21:22], r[4:5], r[6:7]
	loadli.w r4,  -644(r30)                 # 4-byte Folded Reload
	zext_int2long r[4:5], r4
	setlt.ul r13, r[4:5], r[21:22]
	load.d r[4:5], -640(r30)                # 8-byte Folded Reload
	bneq r13, zero, .LBB0_10
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 13 is_stmt 0                # relu-candidate.mlir:0:13
	zext_int2long r[4:5], zero
	j .LBB0_10
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 63 13 is_stmt 1               # relu-candidate.mlir:63:13
	addli r4, zero, 5
	xwait r27, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r1, zero, 0
	ds_cfg r14, zero, 1
	ds_cfg r14, zero, 14
	ds_cfg r3, zero, 13
	shuffle_batch r28, r12, r14, 1
	unlock zero
	xsignal r1, 0
	xsignal r18, 0
	j .LBB0_11
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	addli r5, zero, 40
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	mod.s r4, r8, r26
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	mod.s r5, r9, r5
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	slli r4, r4, 15
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	slli r12, r5, 15
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	lui r5, 140
	add.s r13, r4, r5
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	addli r4, zero, 6
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	beq r2, r24, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_13 Depth=2
	bneq r2, r4, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=2
	addli r4, zero, 19
	xwait r24, 0
	addli r6, zero, 256
	addli r12, zero, 6
	addli r17, zero, 256
	sll.d r[4:5], r[21:22], r4
	load.d r[21:22], -656(r30)              # 8-byte Folded Reload
	lock zero, r18
	dma_cfg r20, r20, zero, 0
	add.ul r[4:5], r[21:22], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r13, r4, r6, 3
	addli r4, zero, 4096
	dma_cfg r6, r4, r14, 4
	dma_run zero
	unlock r18
	xsignal r12, 0
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=2
	xwait r4, 0
	addli r4, zero, 9
	xwait r4, 0
	lock zero, zero
	addli r4, zero, 8
	ds_cfg r1, zero, 0
	ds_cfg r14, zero, 1
	ds_cfg r14, zero, 14
	ds_cfg r14, zero, 13
	shuffle_coa r12, r13, r14, 2
	unlock zero
	xsignal r24, 0
	xsignal r4, 0
	j .LBB0_11
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=2
	bneq r2, r18, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_13 Depth=2
	addli r4, zero, 8
	addli r13, zero, 1
	addli r21, zero, 1
	addli r22, zero, 0
	xwait r18, 0
	xwait r4, 0
	beq r16, zero, .LBB0_25
.LBB0_24:                               # %.preheader8
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r4, r22, 14
	slli r5, r22, 8
	lock zero, r13
	addli r22, zero, 1
	mm_cfg r3, r14, r3, 0
	or r4, r4, r12
	or r5, r5, r23
	mm_cfg r18, r18, r13, 2
	mm_acc r5, r28, r4, 5
	andi r4, r21, 1
	addli r21, zero, 0
	unlock r13
	bneq r4, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r4, r22, 14
	slli r5, r22, 8
	lock zero, r13
	addli r22, zero, 1
	mm_cfg r3, r14, r3, 0
	or r4, r4, r12
	or r5, r5, r23
	mm_cfg r18, r18, r13, 2
	mm r5, r28, r4, 5
	andi r4, r21, 1
	addli r21, zero, 0
	unlock r13
	bneq r4, zero, .LBB0_25
.LBB0_26:                               # %.thread7.thread54
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r4, zero, 5
	addli r9, r9, 1
	.loc	1 48 11                         # relu-candidate.mlir:48:11
	addli r15, r15, 1
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	addli r8, r8, 1
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	xsignal r4, 0
	addli r4, zero, 9
	xsignal r4, 0
	bneq r15, r19, .LBB0_12
	j .LBB0_29
.LBB0_27:                               # %.thread7.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r9, r9, 1
	.loc	1 48 11                         # relu-candidate.mlir:48:11
	addli r15, r15, 1
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	addli r8, r8, 1
	bneq r15, r19, .LBB0_12
	j .LBB0_30
.LBB0_28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 48 11                         # relu-candidate.mlir:48:11
	bneq r2, r18, .LBB0_30
.LBB0_29:                               # %.thread56
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 10
	xsignal r4, 0
.LBB0_30:                               # %.thread53
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 76 11                         # relu-candidate.mlir:76:11
	loadli.w r4,  -680(r30)                 # 4-byte Folded Reload
	addli r6, zero, 1920
	loadli.w r12,  -660(r30)                # 4-byte Folded Reload
	zext_int2long r[15:16], r14
	zext_int2long r[6:7], r6
	zext_int2long r[4:5], r4
	mod.s r12, r12, r18
	min.ul r[6:7], r[4:5], r[6:7]
	addli.d r[6:7], r[6:7], 128
	max.ul r[6:7], r[6:7], r[4:5]
	sub.sl r[4:5], r[6:7], r[4:5]
	slli r7, r12, 9
	min.ul r[5:6], r[4:5], r[15:16]
	lui r4, 356
	add.s r7, r7, r4
	beq r2, r20, .LBB0_5
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r15,  -664(r30)                # 4-byte Folded Reload
	lui r12, 356
	lui r13, 8
	ori r12, r12, 2048
	.loc	1 80 11 is_stmt 1               # relu-candidate.mlir:80:11
	mod.s r4, r15, r18
	slli r4, r4, 15
	add.s r4, r4, r12
	addli r12, zero, 5
	bneq r2, r12, .LBB0_35
# %bb.32:                               #   in Loop: Header=BB0_7 Depth=1
	addli r6, zero, 10
	addli r5, zero, 0
	xwait r6, 0
	addli r6, zero, 12
	xwait r6, 0
	addli r6, zero, 15
	xwait r6, 0
	lock zero, r27
	lui r6, 260096
	ew_cfg r20, zero, zero, 10
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r6, r6, zero, 0
	addli r6, zero, 127
	ew_cfg zero, r6, zero, 2
	ew_cfg r20, zero, zero, 3
.LBB0_33:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r4, r5
	add.s r12, r23, r5
	addli r5, r5, 512
	dsmadd r6, r12, r7, 0
	bneq r5, r13, .LBB0_33
# %bb.34:                               #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 11
	ew_cfg zero, zero, zero, 10
	unlock r27
	xsignal r4, 0
	addli r4, zero, 13
	xsignal r4, 0
	addli r4, zero, 14
	j .LBB0_37
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 92 5                          # relu-candidate.mlir:92:5
	bneq r2, zero, .LBB0_6
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # relu-candidate.mlir:0:5
	loadli.w r7,  -700(r30)                 # 4-byte Folded Reload
	.loc	1 92 5                          # relu-candidate.mlir:92:5
	load.d r[21:22], -696(r30)              # 8-byte Folded Reload
	slli r5, r5, 2
	sext_int2long r[12:13], r7
	addli r7, zero, 1984
	zext_int2long r[15:16], r7
	addli r7, zero, 18
	min.sl r[15:16], r[12:13], r[15:16]
	sll.d r[21:22], r[21:22], r7
	addli r7, zero, 14
	addli.d r[15:16], r[15:16], 64
	max.sl r[15:16], r[15:16], r[12:13]
	store.d r[15:16], -632(r30)             # 8-byte Folded Spill
	load.d r[15:16], 24(r30)
	add.ul r[21:22], r[15:16], r[21:22]
	load.d r[15:16], -632(r30)              # 8-byte Folded Reload
	sub.sl r[12:13], r[15:16], r[12:13]
	zext_int2long r[15:16], r3
	store.d r[12:13], -632(r30)             # 8-byte Folded Spill
	load.d r[12:13], -688(r30)              # 8-byte Folded Reload
	add.ul r[21:22], r[21:22], r[12:13]
	load.d r[12:13], -632(r30)              # 8-byte Folded Reload
	min.sl r[12:13], r[12:13], r[15:16]
	loadli.w r15,  -664(r30)                # 4-byte Folded Reload
	xwait r7, 0
	addli r7, zero, 5
	lock zero, r7
	dma_cfg r20, zero, zero, 0
	dma_cfg zero, r20, zero, 1
	dma_cfg r22, zero, zero, 2
	dma_cfg r21, r4, r5, 3
	addli r4, zero, 512
	addli r5, zero, 4096
	dma_cfg r5, r4, r12, 4
	addli r4, zero, 15
	dma_run zero
	unlock r7
.LBB0_37:                               # %.thread59
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	xsignal r4, 0
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
	addli sp, sp, 720
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
	.long	784                             # 0x310
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/native-activation-zwvk7qp8" # string offset=27
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
