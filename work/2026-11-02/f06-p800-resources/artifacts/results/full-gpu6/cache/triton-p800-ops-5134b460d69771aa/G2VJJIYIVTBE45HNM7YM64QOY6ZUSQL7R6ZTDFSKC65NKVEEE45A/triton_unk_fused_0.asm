	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/native-activation-17gawve6" "relu-candidate.mlir"
	.loc	1 2 0                           # relu-candidate.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -432
	addli r1, zero, 1
.Ltmp0:
	.loc	1 49 11 prologue_end            # relu-candidate.mlir:49:11
	core_id r2
	addli r30, sp, 368
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
	addli r1, zero, 15
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	loadli.w r1,  32(r30)
	loadli.w r3,  36(r30)
	load_param_i r5, 1
	loadli.w r4,  40(r30)
	storeli.w zero, -16(r30)
	storeli.w zero, -32(r30)
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
	ble.s r3, r1, .LBB0_38
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[8:9], r1
	lui r1, 15
	loadli.w r19,  -16(r30)
	loadli.w r10,  -108(r30)
	loadli.w r11,  -272(r30)
	addli r12, zero, 0
	addli r5, zero, 0
	addli r14, zero, 64
	addli r15, zero, 4
	addli r16, zero, 3
	addli r20, zero, 2
	addli r26, zero, 24
	addli r25, zero, 18
	lui r18, 48
	addli r21, zero, 5
	addli r28, zero, 128
	addli r7, zero, 0
	store.d r[3:4], -360(r30)               # 8-byte Folded Spill
	loadli.w r3,  -32(r30)
	storeli.w r3, -300(r30)                 # 4-byte Folded Spill
	ori r4, r1, 4095
	addli r1, zero, 16
	lui r3, 1048448
	store.d r[3:4], -368(r30)               # 8-byte Folded Spill
	lui r3, 127
	ori r3, r3, 4095
	storeli.w r3, -284(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.thread57
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 77 11 is_stmt 1               # relu-candidate.mlir:77:11
	load.d r[3:4], 16(r30)
	load.d r[12:13], -336(r30)              # 8-byte Folded Reload
	slli r8, r8, 2
	add.ul r[3:4], r[3:4], r[12:13]
	addli r12, zero, 13
	xwait r12, 0
	lock zero, r15
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r4, zero, 2
	dma_cfg r6, r3, r8, 3
	addli r3, zero, 512
	dma_cfg r3, r3, r17, 4
	addli r3, zero, 12
	dma_run zero
	unlock r15
	xsignal r3, 0
	loadli.w r19,  -308(r30)                # 4-byte Folded Reload
.LBB0_6:                                # %.thread59
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	load.d r[8:9], -320(r30)                # 8-byte Folded Reload
	load.d r[3:4], -360(r30)                # 8-byte Folded Reload
	loadli.w r12,  -304(r30)                # 4-byte Folded Reload
	.loc	1 78 11 is_stmt 1               # relu-candidate.mlir:78:11
	addli r19, r19, 1
	addli.d r[8:9], r[8:9], 1
	setlt.sl r3, r[8:9], r[3:4]
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	loadli.w r4,  -300(r30)                 # 4-byte Folded Reload
	addli r4, r4, 1
	.loc	1 78 11                         # relu-candidate.mlir:78:11
	storeli.w r4, -300(r30)                 # 4-byte Folded Spill
	beq r3, zero, .LBB0_38
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #     Child Loop BB0_33 Depth 2
	.loc	1 0 11                          # relu-candidate.mlir:0:11
	storeli.w r19, -308(r30)                # 4-byte Folded Spill
	.loc	1 49 11 is_stmt 1               # relu-candidate.mlir:49:11
	bneq r2, r15, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	xwait r3, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r3,  40(r30)
	loadli.w r4,  36(r30)
	store.d r[8:9], -320(r30)               # 8-byte Folded Spill
	addli r13, zero, 8
	addli r19, zero, 0
	div.s r3, r8, r3
	mod.s r8, r12, r16
	addli r12, r12, 1
	storeli.w r12, -304(r30)                # 4-byte Folded Spill
	div.s r3, r3, r4
	slli r22, r8, 16
	div.s r4, r3, r14
	slli r6, r4, 3
	slli r4, r4, 6
	sub.s r9, r15, r6
	sub.s r4, r3, r4
	min.s r9, r9, r13
	mod.s r3, r3, r9
	div.s r4, r4, r9
	add.s r3, r6, r3
	slli r6, r4, 7
	zext_int2long r[8:9], r4
	slli r4, r3, 7
	zext_int2long r[23:24], r3
	addli r3, zero, 17
	storeli.w r6, -324(r30)                 # 4-byte Folded Spill
	addli r6, zero, 0
	storeli.w r4, -348(r30)                 # 4-byte Folded Spill
	addli r4, zero, 7
	store.d r[23:24], -344(r30)             # 8-byte Folded Spill
	sll.d r[8:9], r[8:9], r4
	.loc	1 49 11                         # relu-candidate.mlir:49:11
	sll.d r[12:13], r[8:9], r20
	sll.d r[8:9], r[23:24], r3
	load.d r[3:4], 8(r30)
	store.d r[12:13], -336(r30)             # 8-byte Folded Spill
	add.ul r[3:4], r[3:4], r[12:13]
	addli r13, zero, 1
	addli r12, zero, 6
	store.d r[3:4], -296(r30)               # 8-byte Folded Spill
	load.d r[3:4], -368(r30)                # 8-byte Folded Reload
	and.d r[3:4], r[8:9], r[3:4]
	store.d r[3:4], -280(r30)               # 8-byte Folded Spill
	j .LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 11                          # relu-candidate.mlir:0:11
	addli r3, zero, 1024
	.loc	1 57 13 is_stmt 1               # relu-candidate.mlir:57:13
	sub.sl r[12:13], r[23:24], r[12:13]
	.loc	1 58 13                         # relu-candidate.mlir:58:13
	load.d r[26:27], 0(r30)
	sll.d r[23:24], r[23:24], r20
	zext_int2long r[16:17], r3
	addli r3, zero, 384
	add.ul r[23:24], r[26:27], r[23:24]
	addli r26, zero, 24
	.loc	1 57 13                         # relu-candidate.mlir:57:13
	div.sl r[12:13], r[12:13], r[16:17]
	zext_int2long r[16:17], r3
	addli r3, zero, 3
	.loc	1 58 13                         # relu-candidate.mlir:58:13
	xwait r3, 0
	lock zero, r15
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r24, zero, 2
	.loc	1 57 13                         # relu-candidate.mlir:57:13
	min.sl r[16:17], r[12:13], r[16:17]
	sub.sl r[12:13], r[16:17], r[12:13]
	addli r16, zero, 3
	.loc	1 58 13                         # relu-candidate.mlir:58:13
	addli r3, r12, 128
	addli r12, zero, 256
	addli r13, zero, 1
	dma_cfg r4, r23, r12, 3
	addli r4, zero, 4096
	dma_cfg r12, r4, r3, 4
	dma_run zero
	unlock r15
	xsignal r20, 0
	addli r12, zero, 6
.LBB0_11:                               # %.thread7
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	addli r11, r11, 1
	.loc	1 49 11                         # relu-candidate.mlir:49:11
	addli r19, r19, 1
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	addli r10, r10, 1
	.loc	1 49 11                         # relu-candidate.mlir:49:11
	beq r19, r1, .LBB0_28
.LBB0_12:                               # %.backedge
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	addli r6, r6, 1
.LBB0_13:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 58 13                         # relu-candidate.mlir:58:13
	mod.s r3, r7, r25
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	mod.s r4, r5, r26
	addli r5, r5, 1
	.loc	1 58 13                         # relu-candidate.mlir:58:13
	addli r7, r7, 1
	slli r3, r3, 15
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	slli r27, r4, 15
	.loc	1 58 13                         # relu-candidate.mlir:58:13
	add.s r4, r3, r18
	beq r2, r20, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	zext_int2long r[23:24], r19
	.loc	1 58 13                         # relu-candidate.mlir:58:13
	bneq r2, r13, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 13                          # relu-candidate.mlir:0:13
	addli r3, zero, 6
	.loc	1 62 13 is_stmt 1               # relu-candidate.mlir:62:13
	sll.d r[12:13], r[23:24], r3
	loadli.w r3,  -284(r30)                 # 4-byte Folded Reload
	.loc	1 57 13                         # relu-candidate.mlir:57:13
	add.ul r[23:24], r[12:13], r[8:9]
	zext_int2long r[12:13], r3
	setlt.ul r3, r[12:13], r[23:24]
	load.d r[12:13], -280(r30)              # 8-byte Folded Reload
	bneq r3, zero, .LBB0_10
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 13 is_stmt 0                # relu-candidate.mlir:0:13
	zext_int2long r[12:13], zero
	j .LBB0_10
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 64 13 is_stmt 1               # relu-candidate.mlir:64:13
	xwait r20, 0
	xwait r21, 0
	lock zero, zero
	ds_cfg r20, zero, 0
	ds_cfg r14, zero, 1
	ds_cfg r14, zero, 14
	ds_cfg r28, zero, 13
	shuffle_batch r27, r4, r14, 1
	unlock zero
	xsignal r16, 0
	xsignal r15, 0
	j .LBB0_11
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	mod.s r3, r10, r25
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	addli r4, zero, 40
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	lui r17, 192
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	mod.s r4, r11, r4
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	slli r3, r3, 15
	add.s r17, r3, r17
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	slli r4, r4, 15
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	addli r3, zero, 7
	beq r2, r3, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_13 Depth=2
	bneq r2, r12, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=2
	addli r12, zero, 7
	sll.d r[3:4], r[23:24], r25
	xwait r12, 0
	load.d r[23:24], -296(r30)              # 8-byte Folded Reload
	lock zero, r15
	addli r12, zero, 512
	dma_cfg zero, zero, zero, 0
	add.ul r[3:4], r[23:24], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r17, r3, r12, 3
	addli r3, zero, 4096
	dma_cfg r12, r3, r14, 4
	addli r12, zero, 6
	dma_run zero
	unlock r15
	xsignal r12, 0
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=2
	addli r3, zero, 9
	xwait r12, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 7
	ds_cfg r20, zero, 0
	ds_cfg r28, zero, 1
	ds_cfg r14, zero, 14
	ds_cfg r28, zero, 13
	shuffle_coa r4, r17, r14, 2
	unlock zero
	xsignal r3, 0
	addli r3, zero, 8
	xsignal r3, 0
	j .LBB0_11
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=2
	bneq r2, r15, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_13 Depth=2
	addli r3, zero, 8
	xwait r15, 0
	addli r17, zero, 1
	addli r23, zero, 0
	xwait r3, 0
	addli r3, zero, 1
	beq r6, zero, .LBB0_25
.LBB0_24:                               # %.preheader8
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r23, 14
	slli r13, r23, 8
	lock zero, r17
	addli r23, zero, 1
	mm_cfg r14, r14, r28, 0
	or r12, r12, r4
	or r13, r13, r22
	mm_cfg r15, r15, r17, 2
	mm_acc r13, r27, r12, 8
	andi r12, r3, 1
	addli r3, zero, 0
	unlock r17
	bneq r12, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r23, 14
	slli r13, r23, 8
	lock zero, r17
	addli r23, zero, 1
	mm_cfg r14, r14, r28, 0
	or r12, r12, r4
	or r13, r13, r22
	mm_cfg r15, r15, r17, 2
	mm r13, r27, r12, 8
	andi r12, r3, 1
	addli r3, zero, 0
	unlock r17
	bneq r12, zero, .LBB0_25
.LBB0_26:                               # %.thread7.thread54
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r11, r11, 1
	.loc	1 49 11                         # relu-candidate.mlir:49:11
	addli r19, r19, 1
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	addli r10, r10, 1
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	addli r3, zero, 9
	addli r13, zero, 1
	addli r12, zero, 6
	xsignal r21, 0
	xsignal r3, 0
	bneq r19, r1, .LBB0_12
	j .LBB0_29
.LBB0_27:                               # %.thread7.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r11, r11, 1
	.loc	1 49 11                         # relu-candidate.mlir:49:11
	addli r19, r19, 1
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	addli r10, r10, 1
	bneq r19, r1, .LBB0_12
	j .LBB0_30
.LBB0_28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 49 11                         # relu-candidate.mlir:49:11
	bneq r2, r15, .LBB0_30
.LBB0_29:                               # %.thread56
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 10
	xsignal r3, 0
.LBB0_30:                               # %.thread53
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 77 11                         # relu-candidate.mlir:77:11
	loadli.w r3,  -324(r30)                 # 4-byte Folded Reload
	addli r6, zero, 896
	zext_int2long r[12:13], r28
	addli r17, zero, 1
	zext_int2long r[8:9], r6
	loadli.w r6,  -300(r30)                 # 4-byte Folded Reload
	zext_int2long r[3:4], r3
	min.ul r[8:9], r[3:4], r[8:9]
	mod.s r6, r6, r16
	addli.d r[8:9], r[8:9], 128
	max.ul r[8:9], r[8:9], r[3:4]
	sub.sl r[3:4], r[8:9], r[3:4]
	slli r6, r6, 9
	min.ul r[8:9], r[3:4], r[12:13]
	lui r3, 336
	add.s r6, r6, r3
	beq r2, r17, .LBB0_5
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r19,  -308(r30)                # 4-byte Folded Reload
	lui r4, 336
	addli r27, zero, 1
	ori r4, r4, 1536
	.loc	1 78 11 is_stmt 1               # relu-candidate.mlir:78:11
	mod.s r3, r19, r16
	slli r3, r3, 16
	add.s r4, r3, r4
	bneq r2, r21, .LBB0_35
# %bb.32:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 10
	lui r9, 260096
	addli r8, zero, 0
	lui r12, 16
	xwait r3, 0
	addli r3, zero, 12
	xwait r3, 0
	addli r3, zero, 15
	xwait r3, 0
	addli r3, zero, 1
	lock zero, r20
	ew_cfg r3, zero, zero, 10
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r9, r9, zero, 0
	addli r9, zero, 127
	ew_cfg zero, r9, zero, 2
	ew_cfg r3, zero, zero, 3
.LBB0_33:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r3, r4, r8
	add.s r9, r22, r8
	addli r8, r8, 512
	dsmadd r3, r9, r6, 0
	bneq r8, r12, .LBB0_33
# %bb.34:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	ew_cfg zero, zero, zero, 10
	unlock r20
	xsignal r3, 0
	addli r3, zero, 13
	xsignal r3, 0
	addli r3, zero, 14
	j .LBB0_37
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 87 5                          # relu-candidate.mlir:87:5
	bneq r2, zero, .LBB0_6
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # relu-candidate.mlir:0:5
	loadli.w r3,  -348(r30)                 # 4-byte Folded Reload
	addli r6, zero, 5
	sext_int2long r[16:17], r3
	addli r3, zero, 384
	zext_int2long r[22:23], r3
	.loc	1 87 5                          # relu-candidate.mlir:87:5
	addli r3, zero, 19
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	min.sl r[23:24], r[16:17], r[22:23]
	.loc	1 87 5                          # relu-candidate.mlir:87:5
	load.d r[21:22], -344(r30)              # 8-byte Folded Reload
	sll.d r[21:22], r[21:22], r3
	addli r3, zero, 14
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	store.d r[21:22], -280(r30)             # 8-byte Folded Spill
	addli.d r[22:23], r[23:24], 128
	.loc	1 87 5                          # relu-candidate.mlir:87:5
	xwait r3, 0
	slli r3, r8, 2
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	max.sl r[21:22], r[22:23], r[16:17]
	.loc	1 87 5                          # relu-candidate.mlir:87:5
	load.d r[23:24], -280(r30)              # 8-byte Folded Reload
	store.d r[21:22], -296(r30)             # 8-byte Folded Spill
	load.d r[21:22], 24(r30)
	add.ul r[23:24], r[21:22], r[23:24]
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	load.d r[21:22], -296(r30)              # 8-byte Folded Reload
	sub.sl r[16:17], r[21:22], r[16:17]
	.loc	1 87 5                          # relu-candidate.mlir:87:5
	load.d r[21:22], -336(r30)              # 8-byte Folded Reload
	lock zero, r6
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r27, zero, 1
	min.sl r[12:13], r[16:17], r[12:13]
	addli r16, zero, 3
	add.ul r[22:23], r[23:24], r[21:22]
	addli r21, zero, 5
	dma_cfg r23, zero, zero, 2
	dma_cfg r22, r4, r3, 3
	addli r3, zero, 512
	addli r4, zero, 4096
	dma_cfg r4, r3, r12, 4
	addli r3, zero, 15
	dma_run zero
	unlock r6
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
	addli sp, sp, 368
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
	.long	432                             # 0x1b0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/native-activation-17gawve6" # string offset=27
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
