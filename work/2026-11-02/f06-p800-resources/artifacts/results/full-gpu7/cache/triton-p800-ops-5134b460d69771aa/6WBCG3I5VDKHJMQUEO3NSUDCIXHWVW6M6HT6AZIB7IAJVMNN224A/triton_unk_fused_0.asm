	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/native-activation-tnxm3tkf" "relu-candidate.mlir"
	.loc	1 2 0                           # relu-candidate.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -424
	addli r1, zero, 1
.Ltmp0:
	.loc	1 47 11 prologue_end            # relu-candidate.mlir:47:11
	core_id r2
	addli r30, sp, 360
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
	addli r1, zero, 15
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	loadli.w r1,  32(r30)
	loadli.w r3,  36(r30)
	load_param_i r5, 1
	loadli.w r4,  40(r30)
	storeli.w zero, -24(r30)
	storeli.w zero, -48(r30)
	storeli.w zero, -108(r30)
	storeli.w zero, -272(r30)
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
	ble.s r3, r1, .LBB0_37
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[8:9], r1
	lui r1, 31
	loadli.w r20,  -24(r30)
	loadli.w r10,  -108(r30)
	loadli.w r11,  -272(r30)
	addli r12, zero, 0
	addli r5, zero, 0
	addli r14, zero, 128
	addli r24, zero, 5
	addli r19, zero, 4
	addli r21, zero, 2
	addli r26, zero, 24
	addli r22, zero, 14
	lui r27, 80
	addli r28, zero, 64
	addli r25, zero, 1
	addli r23, zero, 0
	store.d r[3:4], -352(r30)               # 8-byte Folded Spill
	loadli.w r3,  -48(r30)
	storeli.w r3, -292(r30)                 # 4-byte Folded Spill
	ori r4, r1, 4095
	lui r1, 1023
	lui r3, 1047552
	ori r1, r1, 4095
	store.d r[3:4], -360(r30)               # 8-byte Folded Spill
	addli r3, zero, 6
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.thread57
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 75 11 is_stmt 1               # relu-candidate.mlir:75:11
	load.d r[12:13], 16(r30)
	load.d r[15:16], -328(r30)              # 8-byte Folded Reload
	addli r1, zero, 13
	xwait r1, 0
	lock zero, r19
	slli r1, r7, 2
	add.ul r[12:13], r[12:13], r[15:16]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r13, zero, 2
	dma_cfg r9, r12, r1, 3
	addli r1, zero, 512
	dma_cfg r1, r1, r25, 4
	addli r1, zero, 12
	dma_run zero
	unlock r19
	xsignal r1, 0
	loadli.w r20,  -300(r30)                # 4-byte Folded Reload
.LBB0_6:                                # %.thread59
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	load.d r[8:9], -312(r30)                # 8-byte Folded Reload
	load.d r[6:7], -352(r30)                # 8-byte Folded Reload
	loadli.w r4,  -292(r30)                 # 4-byte Folded Reload
	loadli.w r12,  -296(r30)                # 4-byte Folded Reload
	.loc	1 76 11 is_stmt 1               # relu-candidate.mlir:76:11
	addli r20, r20, 1
	addli.d r[8:9], r[8:9], 1
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	addli r4, r4, 1
	setlt.sl r1, r[8:9], r[6:7]
	.loc	1 76 11                         # relu-candidate.mlir:76:11
	storeli.w r4, -292(r30)                 # 4-byte Folded Spill
	beq r1, zero, .LBB0_37
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #     Child Loop BB0_33 Depth 2
	.loc	1 0 11                          # relu-candidate.mlir:0:11
	storeli.w r20, -300(r30)                # 4-byte Folded Spill
	.loc	1 47 11 is_stmt 1               # relu-candidate.mlir:47:11
	bneq r2, r19, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r1,  40(r30)
	loadli.w r4,  36(r30)
	store.d r[8:9], -312(r30)               # 8-byte Folded Spill
	addli r13, zero, 8
	mod.s r6, r12, r24
	addli r12, r12, 1
	addli r7, zero, 0
	addli r20, zero, 0
	storeli.w r12, -296(r30)                # 4-byte Folded Spill
	div.s r1, r8, r1
	addli r9, zero, 16
	slli r6, r6, 16
	div.s r1, r1, r4
	div.s r4, r1, r14
	slli r8, r4, 3
	slli r4, r4, 7
	sub.s r9, r9, r8
	sub.s r4, r1, r4
	min.s r9, r9, r13
	mod.s r1, r1, r9
	div.s r4, r4, r9
	add.s r1, r8, r1
	slli r8, r4, 7
	storeli.w r8, -320(r30)                 # 4-byte Folded Spill
	zext_int2long r[8:9], r4
	slli r4, r1, 7
	zext_int2long r[12:13], r1
	addli r1, zero, 18
	storeli.w r4, -340(r30)                 # 4-byte Folded Spill
	addli r4, zero, 7
	store.d r[12:13], -336(r30)             # 8-byte Folded Spill
	sll.d r[8:9], r[8:9], r4
	.loc	1 47 11                         # relu-candidate.mlir:47:11
	sll.d r[15:16], r[8:9], r21
	sll.d r[8:9], r[12:13], r1
	load.d r[12:13], 8(r30)
	store.d r[15:16], -328(r30)             # 8-byte Folded Spill
	add.ul r[12:13], r[12:13], r[15:16]
	store.d r[12:13], -288(r30)             # 8-byte Folded Spill
	load.d r[12:13], -360(r30)              # 8-byte Folded Reload
	and.d r[12:13], r[8:9], r[12:13]
	j .LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 11                          # relu-candidate.mlir:0:11
	addli r1, zero, 2048
	.loc	1 55 13 is_stmt 1               # relu-candidate.mlir:55:13
	sub.sl r[17:18], r[15:16], r[17:18]
	.loc	1 56 13                         # relu-candidate.mlir:56:13
	load.d r[26:27], 0(r30)
	sll.d r[15:16], r[15:16], r21
	zext_int2long r[24:25], r1
	addli r1, zero, 1920
	add.ul r[15:16], r[26:27], r[15:16]
	addli r26, zero, 24
	lui r27, 80
	.loc	1 55 13                         # relu-candidate.mlir:55:13
	div.sl r[17:18], r[17:18], r[24:25]
	zext_int2long r[24:25], r1
	.loc	1 56 13                         # relu-candidate.mlir:56:13
	addli r1, zero, 3
	xwait r1, 0
	lock zero, r19
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r16, zero, 2
	.loc	1 55 13                         # relu-candidate.mlir:55:13
	min.sl r[24:25], r[17:18], r[24:25]
	sub.sl r[17:18], r[24:25], r[17:18]
	addli r24, zero, 5
	addli r25, zero, 1
	.loc	1 56 13                         # relu-candidate.mlir:56:13
	addli r1, r17, 128
	addli r17, zero, 256
	dma_cfg r4, r15, r17, 3
	addli r4, zero, 8192
	dma_cfg r17, r4, r1, 4
	dma_run zero
	unlock r19
	xsignal r21, 0
.LBB0_11:                               # %.thread7
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	addli r11, r11, 1
	.loc	1 47 11                         # relu-candidate.mlir:47:11
	addli r7, r7, 1
	.loc	1 61 13                         # relu-candidate.mlir:61:13
	addli r10, r10, 1
	.loc	1 47 11                         # relu-candidate.mlir:47:11
	addli r1, zero, 32
	beq r7, r1, .LBB0_28
.LBB0_12:                               # %.backedge
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	addli r20, r20, 1
.LBB0_13:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 56 13                         # relu-candidate.mlir:56:13
	mod.s r1, r23, r22
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	mod.s r4, r5, r26
	addli r5, r5, 1
	.loc	1 56 13                         # relu-candidate.mlir:56:13
	addli r23, r23, 1
	slli r1, r1, 15
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	slli r18, r4, 15
	.loc	1 56 13                         # relu-candidate.mlir:56:13
	add.s r4, r1, r27
	beq r2, r21, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	zext_int2long r[15:16], r7
	.loc	1 56 13                         # relu-candidate.mlir:56:13
	bneq r2, r25, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 13                          # relu-candidate.mlir:0:13
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	.loc	1 60 13 is_stmt 1               # relu-candidate.mlir:60:13
	sll.d r[15:16], r[15:16], r3
	.loc	1 55 13                         # relu-candidate.mlir:55:13
	add.ul r[15:16], r[15:16], r[8:9]
	zext_int2long r[17:18], r1
	setlt.ul r1, r[17:18], r[15:16]
	addli.d r[17:18], r[12:13], 0
	bneq r1, zero, .LBB0_10
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 13 is_stmt 0                # relu-candidate.mlir:0:13
	zext_int2long r[17:18], zero
	j .LBB0_10
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 62 13 is_stmt 1               # relu-candidate.mlir:62:13
	xwait r21, 0
	xwait r24, 0
	lock zero, zero
	addli r1, zero, 3
	ds_cfg r21, zero, 0
	ds_cfg r28, zero, 1
	ds_cfg r28, zero, 14
	ds_cfg r14, zero, 13
	shuffle_batch r18, r4, r28, 1
	unlock zero
	xsignal r1, 0
	xsignal r19, 0
	j .LBB0_11
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 61 13                         # relu-candidate.mlir:61:13
	mod.s r1, r10, r22
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	addli r4, zero, 40
	.loc	1 61 13                         # relu-candidate.mlir:61:13
	lui r17, 192
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	mod.s r4, r11, r4
	.loc	1 61 13                         # relu-candidate.mlir:61:13
	slli r1, r1, 15
	add.s r17, r1, r17
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	slli r4, r4, 15
	.loc	1 61 13                         # relu-candidate.mlir:61:13
	addli r1, zero, 7
	beq r2, r1, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 13 is_stmt 0                # relu-candidate.mlir:0:13
	addli r1, zero, 6
	.loc	1 61 13                         # relu-candidate.mlir:61:13
	bneq r2, r1, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 19
	addli r18, zero, 6
	sll.d r[15:16], r[15:16], r1
	addli r1, zero, 7
	xwait r1, 0
	load.d r[3:4], -288(r30)                # 8-byte Folded Reload
	lock zero, r19
	addli r1, zero, 512
	dma_cfg zero, zero, zero, 0
	add.ul r[15:16], r[3:4], r[15:16]
	addli r4, zero, 8192
	addli r3, zero, 6
	dma_cfg zero, r16, zero, 2
	dma_cfg r17, r15, r1, 3
	dma_cfg r1, r4, r28, 4
	dma_run zero
	unlock r19
	xsignal r18, 0
	.loc	1 62 13 is_stmt 1               # relu-candidate.mlir:62:13
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 9
	xwait r3, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 7
	ds_cfg r21, zero, 0
	ds_cfg r14, zero, 1
	ds_cfg r28, zero, 14
	ds_cfg r14, zero, 13
	shuffle_coa r4, r17, r28, 2
	unlock zero
	xsignal r1, 0
	addli r1, zero, 8
	xsignal r1, 0
	j .LBB0_11
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 13 is_stmt 0                # relu-candidate.mlir:0:13
	addli r3, zero, 6
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	bneq r2, r19, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 8
	xwait r19, 0
	addli r17, zero, 1
	addli r15, zero, 0
	xwait r1, 0
	addli r1, zero, 1
	beq r20, zero, .LBB0_25
.LBB0_24:                               # %.preheader8
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r16, r15, 14
	slli r15, r15, 8
	lock zero, r17
	mm_cfg r28, r28, r14, 0
	or r16, r16, r4
	or r15, r15, r6
	mm_cfg r19, r19, r17, 2
	mm_acc r15, r18, r16, 8
	andi r16, r1, 1
	addli r15, zero, 1
	addli r1, zero, 0
	unlock r17
	bneq r16, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r16, r15, 14
	slli r15, r15, 8
	lock zero, r17
	mm_cfg r28, r28, r14, 0
	or r16, r16, r4
	or r15, r15, r6
	mm_cfg r19, r19, r17, 2
	mm r15, r18, r16, 8
	andi r16, r1, 1
	addli r15, zero, 1
	addli r1, zero, 0
	unlock r17
	bneq r16, zero, .LBB0_25
.LBB0_26:                               # %.thread7.thread54
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 9
	xsignal r24, 0
	addli r11, r11, 1
	.loc	1 47 11 is_stmt 1               # relu-candidate.mlir:47:11
	addli r7, r7, 1
	.loc	1 61 13                         # relu-candidate.mlir:61:13
	addli r10, r10, 1
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	xsignal r1, 0
	.loc	1 47 11                         # relu-candidate.mlir:47:11
	addli r1, zero, 32
	bneq r7, r1, .LBB0_12
	j .LBB0_29
.LBB0_27:                               # %.thread7.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	addli r11, r11, 1
	.loc	1 47 11                         # relu-candidate.mlir:47:11
	addli r7, r7, 1
	.loc	1 61 13                         # relu-candidate.mlir:61:13
	addli r10, r10, 1
	.loc	1 47 11                         # relu-candidate.mlir:47:11
	addli r1, zero, 32
	bneq r7, r1, .LBB0_12
	j .LBB0_30
.LBB0_28:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r2, r19, .LBB0_30
.LBB0_29:                               # %.thread56
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_30:                               # %.thread53
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	addli r1, zero, 1920
	zext_int2long r[17:18], r14
	lui r4, 304
	zext_int2long r[12:13], r1
	.loc	1 75 11 is_stmt 1               # relu-candidate.mlir:75:11
	loadli.w r1,  -320(r30)                 # 4-byte Folded Reload
	zext_int2long r[7:8], r1
	loadli.w r1,  -292(r30)                 # 4-byte Folded Reload
	min.ul r[15:16], r[7:8], r[12:13]
	mod.s r1, r1, r24
	addli.d r[15:16], r[15:16], 128
	max.ul r[15:16], r[15:16], r[7:8]
	sub.sl r[7:8], r[15:16], r[7:8]
	slli r1, r1, 9
	min.ul r[7:8], r[7:8], r[17:18]
	add.s r9, r1, r4
	beq r2, r25, .LBB0_5
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r20,  -300(r30)                # 4-byte Folded Reload
	ori r4, r4, 2560
	.loc	1 76 11 is_stmt 1               # relu-candidate.mlir:76:11
	mod.s r1, r20, r24
	slli r1, r1, 16
	add.s r4, r1, r4
	bneq r2, r24, .LBB0_35
# %bb.32:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	addli r7, zero, 0
	lui r12, 16
	xwait r1, 0
	addli r1, zero, 12
	xwait r1, 0
	addli r1, zero, 15
	xwait r1, 0
	lock zero, r21
	lui r1, 260096
	ew_cfg r25, zero, zero, 10
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 127
	ew_cfg zero, r1, zero, 2
	ew_cfg r25, zero, zero, 3
.LBB0_33:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r1, r4, r7
	add.s r8, r6, r7
	addli r7, r7, 512
	dsmadd r1, r8, r9, 0
	bneq r7, r12, .LBB0_33
# %bb.34:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	ew_cfg zero, zero, zero, 10
	unlock r21
	xsignal r1, 0
	addli r1, zero, 13
	xsignal r1, 0
	xsignal r22, 0
	j .LBB0_6
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 85 5                          # relu-candidate.mlir:85:5
	bneq r2, zero, .LBB0_6
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	loadli.w r1,  -340(r30)                 # 4-byte Folded Reload
	.loc	1 85 5                          # relu-candidate.mlir:85:5
	load.d r[24:25], -336(r30)              # 8-byte Folded Reload
	addli r6, zero, 20
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	sext_int2long r[15:16], r1
	.loc	1 85 5                          # relu-candidate.mlir:85:5
	sll.d r[24:25], r[24:25], r6
	addli r1, zero, 5
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	min.sl r[12:13], r[15:16], r[12:13]
	store.d r[24:25], -288(r30)             # 8-byte Folded Spill
	.loc	1 85 5                          # relu-candidate.mlir:85:5
	xwait r22, 0
	lock zero, r1
	load.d r[24:25], 24(r30)
	slli r1, r7, 2
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	addli.d r[12:13], r[12:13], 128
	max.sl r[12:13], r[12:13], r[15:16]
	.loc	1 85 5                          # relu-candidate.mlir:85:5
	store.d r[12:13], -320(r30)             # 8-byte Folded Spill
	load.d r[12:13], -288(r30)              # 8-byte Folded Reload
	add.ul r[24:25], r[24:25], r[12:13]
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	load.d r[12:13], -320(r30)              # 8-byte Folded Reload
	sub.sl r[12:13], r[12:13], r[15:16]
	.loc	1 85 5                          # relu-candidate.mlir:85:5
	load.d r[15:16], -328(r30)              # 8-byte Folded Reload
	dma_cfg zero, zero, zero, 0
	min.sl r[12:13], r[12:13], r[17:18]
	add.ul r[15:16], r[24:25], r[15:16]
	addli r25, zero, 1
	addli r24, zero, 5
	dma_cfg zero, r25, zero, 1
	dma_cfg r16, zero, zero, 2
	dma_cfg r15, r4, r1, 3
	addli r1, zero, 512
	addli r4, zero, 8192
	dma_cfg r4, r1, r12, 4
	addli r1, zero, 15
	dma_run zero
	unlock r24
	xsignal r1, 0
	j .LBB0_6
.LBB0_37:                               # %._crit_edge
	.loc	1 2 3 is_stmt 1                 # relu-candidate.mlir:2:3
	xsignal zero, 0
	bneq r2, zero, .LBB0_39
# %bb.38:
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
.LBB0_39:
	.loc	1 2 3 epilogue_begin            # relu-candidate.mlir:2:3
	addli sp, sp, 360
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
	.long	424                             # 0x1a8
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/native-activation-tnxm3tkf" # string offset=27
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
