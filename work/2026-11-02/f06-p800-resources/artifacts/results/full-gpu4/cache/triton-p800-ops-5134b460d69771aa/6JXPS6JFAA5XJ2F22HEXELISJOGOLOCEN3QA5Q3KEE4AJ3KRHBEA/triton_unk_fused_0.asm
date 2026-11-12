	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/js" "cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py"
	.loc	1 23 0                          # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:23:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -488
	addli r1, zero, 1
.Ltmp0:
	.loc	1 74 26 prologue_end            # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:74:26
	core_id r2
	addli r30, sp, 424
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:0:26
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
	addli r1, zero, 12
	sync_group
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
	addli r1, zero, 3
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r1, zero, 7
	addli r3, zero, 14
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
.LBB0_3:
	loadli.w r1,  32(r30)
	loadli.w r3,  36(r30)
	load_param_i r5, 1
	loadli.w r4,  40(r30)
	storeli.w zero, -16(r30)
	storeli.w zero, -104(r30)
	storeli.w zero, -268(r30)
	storeli.w zero, -356(r30)
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
	ble.s r3, r1, .LBB0_36
# %bb.4:                                # %.lr.ph
	loadli.w r15,  -16(r30)
	loadli.w r8,  -104(r30)
	loadli.w r9,  -268(r30)
	loadli.w r10,  -356(r30)
	sext_int2long r[3:4], r3
	addli r12, zero, 0
	sext_int2long r[6:7], r1
	addli r13, zero, 64
	addli r16, zero, 1
	addli r14, zero, 3
	addli r18, zero, 4
	addli r20, zero, 2
	addli r22, zero, 24
	addli r23, zero, 21
	lui r24, 48
	addli r26, zero, 128
	addli r19, zero, 512
	addli r21, zero, 0
	store.d r[3:4], -424(r30)               # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread10
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 102 66 is_stmt 1              # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:102:66
	load.d r[6:7], 16(r30)
	load.d r[11:12], -400(r30)              # 8-byte Folded Reload
	slli r4, r4, 2
	add.ul r[6:7], r[6:7], r[11:12]
	addli r11, zero, 14
	xwait r11, 0
	lock zero, r18
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r7, zero, 2
	dma_cfg r1, r6, r4, 3
	addli r1, zero, 13
	dma_cfg r19, r19, r16, 4
	dma_run zero
	unlock r18
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], -384(r30)                # 8-byte Folded Reload
	load.d r[4:5], -424(r30)                # 8-byte Folded Reload
	loadli.w r12,  -372(r30)                # 4-byte Folded Reload
	addli r15, r15, 1
	addli.d r[6:7], r[6:7], 1
	setlt.sl r1, r[6:7], r[4:5]
	beq r1, zero, .LBB0_36
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
                                        #     Child Loop BB0_32 Depth 2
	addli r3, zero, 6
	storeli.w r15, -376(r30)                # 4-byte Folded Spill
	.loc	1 74 26 is_stmt 1               # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:74:26
	bneq r2, r18, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 12
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:0:26
	loadli.w r1,  40(r30)
	loadli.w r4,  36(r30)
	store.d r[6:7], -384(r30)               # 8-byte Folded Spill
	addli r15, zero, 8
	addli r11, zero, 0
	addli r25, zero, 0
	div.s r1, r6, r1
	mod.s r6, r12, r14
	addli r12, r12, 1
	storeli.w r12, -372(r30)                # 4-byte Folded Spill
	div.s r1, r1, r4
	slli r6, r6, 16
	div.s r4, r1, r13
	slli r5, r4, 3
	slli r4, r4, 6
	sub.s r7, r16, r5
	sub.s r4, r1, r4
	min.s r7, r7, r15
	mod.s r1, r1, r7
	div.s r4, r4, r7
	add.s r1, r5, r1
	slli r5, r4, 7
	slli r7, r1, 7
	storeli.w r5, -392(r30)                 # 4-byte Folded Spill
	zext_int2long r[4:5], r4
	zext_int2long r[27:28], r1
	addli r1, zero, 16
	storeli.w r7, -416(r30)                 # 4-byte Folded Spill
	addli r7, zero, 7
	store.d r[27:28], -408(r30)             # 8-byte Folded Spill
	sll.d r[4:5], r[4:5], r7
	addli r7, zero, 1
	.loc	1 74 26                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:74:26
	sll.d r[14:15], r[4:5], r20
	sll.d r[4:5], r[27:28], r1
	load.d r[27:28], 8(r30)
	store.d r[14:15], -400(r30)             # 8-byte Folded Spill
	add.ul r[14:15], r[27:28], r[14:15]
	load.d r[27:28], 0(r30)
	store.d r[14:15], -368(r30)             # 8-byte Folded Spill
	addli r14, zero, 3
	add.ul r[4:5], r[27:28], r[4:5]
	j .LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 90 25 is_stmt 1               # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:90:25
	addli r11, zero, 5
	xwait r20, 0
	xwait r11, 0
	lock zero, zero
	ds_cfg r20, zero, 0
	ds_cfg r13, zero, 1
	ds_cfg r13, zero, 14
	ds_cfg r26, zero, 13
	shuffle_batch r1, r12, r13, 1
	unlock zero
	xsignal r14, 0
	xsignal r18, 0
.LBB0_12:                               # %.thread8
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r9, r9, 1
	.loc	1 87 20                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:87:20
	addli r8, r8, 1
	.loc	1 74 26                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:74:26
	beq r7, zero, .LBB0_27
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 90 25                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:90:25
	addli r25, r25, 1
	addli r11, zero, 1
	addli r7, zero, 0
.LBB0_14:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	.loc	1 82 20                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:82:20
	mod.s r1, r10, r23
	.loc	1 90 25                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:90:25
	mod.s r12, r21, r22
	addli r21, r21, 1
	.loc	1 82 20                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:82:20
	addli r10, r10, 1
	andi r7, r7, 1
	slli r15, r1, 15
	.loc	1 90 25                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:90:25
	slli r1, r12, 15
	.loc	1 82 20                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:82:20
	add.s r12, r15, r24
	beq r2, r20, .LBB0_11
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:0:0
	zext_int2long r[27:28], r11
	.loc	1 82 20                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:82:20
	bneq r2, r16, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 8
	xwait r14, 0
	lock zero, r18
	dma_cfg zero, zero, zero, 0
	sll.d r[27:28], r[27:28], r1
	addli r1, zero, 256
	add.ul r[27:28], r[4:5], r[27:28]
	dma_cfg zero, r28, zero, 2
	dma_cfg r12, r27, r1, 3
	dma_cfg r1, r19, r26, 4
	dma_run zero
	unlock r18
	xsignal r20, 0
	.loc	1 90 25 is_stmt 1               # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:90:25
	j .LBB0_12
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=2
	addli r12, zero, 40
	.loc	1 87 20                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:87:20
	mod.s r11, r8, r23
	.loc	1 90 25                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:90:25
	mod.s r12, r9, r12
	.loc	1 87 20                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:87:20
	slli r15, r11, 15
	.loc	1 90 25                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:90:25
	slli r11, r12, 15
	.loc	1 87 20                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:87:20
	lui r12, 216
	add.s r12, r15, r12
	addli r15, zero, 7
	beq r2, r15, .LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 20 is_stmt 0                # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:0:20
	addli r15, zero, 6
	.loc	1 87 20                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:87:20
	bneq r2, r15, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 18
	addli r3, zero, 512
	addli r19, zero, 512
	sll.d r[27:28], r[27:28], r1
	addli r1, zero, 7
	xwait r1, 0
	load.d r[16:17], -368(r30)              # 8-byte Folded Reload
	lock zero, r18
	addli r1, zero, 4096
	dma_cfg zero, zero, zero, 0
	add.ul r[27:28], r[16:17], r[27:28]
	addli r16, zero, 1
	dma_cfg zero, r28, zero, 2
	dma_cfg r12, r27, r3, 3
	dma_cfg r3, r1, r13, 4
	dma_run zero
	unlock r18
	addli r3, zero, 6
	xsignal r15, 0
	.loc	1 90 25 is_stmt 1               # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:90:25
	j .LBB0_12
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 9
	xwait r3, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 7
	ds_cfg r20, zero, 0
	ds_cfg r26, zero, 1
	ds_cfg r13, zero, 14
	ds_cfg r26, zero, 13
	shuffle_coa r11, r12, r13, 2
	unlock zero
	xsignal r1, 0
	addli r1, zero, 8
	xsignal r1, 0
	j .LBB0_12
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 25 is_stmt 0                # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:0:25
	addli r3, zero, 6
	.loc	1 90 25                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:90:25
	bneq r2, r18, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r12, zero, 8
	xwait r18, 0
	addli r15, zero, 1
	addli r27, zero, 0
	xwait r12, 0
	addli r12, zero, 1
	beq r25, zero, .LBB0_24
.LBB0_23:                               # %.preheader11
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r28, r27, 14
	slli r27, r27, 8
	lock zero, r12
	mm_cfg r13, r13, r26, 0
	or r28, r28, r11
	or r27, r27, r6
	mm_cfg r18, r18, r12, 2
	mm_acc r27, r1, r28, 8
	andi r28, r15, 1
	addli r27, zero, 1
	addli r15, zero, 0
	unlock r12
	bneq r28, zero, .LBB0_23
	j .LBB0_25
.LBB0_24:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r28, r27, 14
	slli r27, r27, 8
	lock zero, r12
	mm_cfg r13, r13, r26, 0
	or r28, r28, r11
	or r27, r27, r6
	mm_cfg r18, r18, r12, 2
	mm r27, r1, r28, 8
	andi r28, r15, 1
	addli r27, zero, 1
	addli r15, zero, 0
	unlock r12
	bneq r28, zero, .LBB0_24
.LBB0_25:                               # %.thread8.thread50
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 5
	addli r9, r9, 1
	.loc	1 87 20 is_stmt 1               # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:87:20
	addli r8, r8, 1
	.loc	1 90 25                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:90:25
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r7, zero, .LBB0_13
	j .LBB0_28
.LBB0_26:                               # %.thread8.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r9, r9, 1
	.loc	1 87 20                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:87:20
	addli r8, r8, 1
	bneq r7, zero, .LBB0_13
	j .LBB0_29
.LBB0_27:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 74 26                         # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:74:26
	bneq r2, r18, .LBB0_29
.LBB0_28:                               # %.thread51
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_29:                               # %.thread49
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 102 66                        # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:102:66
	loadli.w r1,  -392(r30)                 # 4-byte Folded Reload
	loadli.w r15,  -376(r30)                # 4-byte Folded Reload
	lui r7, 384
	zext_int2long r[4:5], r1
	addli r1, zero, 896
	zext_int2long r[11:12], r1
	mod.s r1, r15, r14
	min.ul r[11:12], r[4:5], r[11:12]
	addli.d r[11:12], r[11:12], 128
	max.ul r[27:28], r[11:12], r[4:5]
	slli r1, r1, 9
	zext_int2long r[11:12], r26
	sub.sl r[4:5], r[27:28], r[4:5]
	add.s r1, r1, r7
	min.ul r[4:5], r[4:5], r[11:12]
	beq r2, r16, .LBB0_5
# %bb.30:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 103 17                        # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:103:17
	addli r3, zero, 5
	bneq r2, r3, .LBB0_34
# %bb.31:                               #   in Loop: Header=BB0_8 Depth=1
	addli r5, zero, 10
	addli r4, zero, 0
	lui r7, 16
	xwait r5, 0
	addli r5, zero, 13
	xwait r5, 0
	lock zero, r20
	lui r5, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r5, r5, zero, 0
	addli r5, zero, 127
	ew_cfg zero, r5, zero, 2
	ew_cfg r16, zero, zero, 3
.LBB0_32:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r6, r4
	addli r4, r4, 512
	dsmadd r5, r5, r1, 0
	bneq r4, r7, .LBB0_32
# %bb.33:                               # %.thread52
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	unlock r20
	xsignal r1, 0
	addli r1, zero, 14
	j .LBB0_6
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 104 80                        # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:104:80
	bneq r2, zero, .LBB0_7
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 80 is_stmt 0                # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:0:80
	loadli.w r1,  -416(r30)                 # 4-byte Folded Reload
	store.d r[4:5], -392(r30)               # 8-byte Folded Spill
	addli r7, zero, 5
	sext_int2long r[27:28], r1
	.loc	1 104 80                        # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:104:80
	addli r1, zero, 19
	store.d r[27:28], -368(r30)             # 8-byte Folded Spill
	zext_int2long r[27:28], zero
	.loc	1 0 0                           # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:0:0
	load.d r[3:4], -368(r30)                # 8-byte Folded Reload
	min.sl r[3:4], r[3:4], r[27:28]
	.loc	1 104 80                        # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:104:80
	load.d r[27:28], -408(r30)              # 8-byte Folded Reload
	sll.d r[27:28], r[27:28], r1
	addli r1, zero, 11
	.loc	1 0 0                           # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:0:0
	store.d r[27:28], -408(r30)             # 8-byte Folded Spill
	addli.d r[27:28], r[3:4], 128
	.loc	1 104 80                        # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:104:80
	xwait r1, 0
	.loc	1 0 0                           # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:0:0
	load.d r[3:4], -368(r30)                # 8-byte Folded Reload
	max.sl r[3:4], r[27:28], r[3:4]
	.loc	1 104 80                        # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:104:80
	load.d r[27:28], 24(r30)
	store.d r[3:4], -416(r30)               # 8-byte Folded Spill
	load.d r[3:4], -408(r30)                # 8-byte Folded Reload
	add.ul r[3:4], r[27:28], r[3:4]
	.loc	1 0 0                           # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:0:0
	load.d r[27:28], -416(r30)              # 8-byte Folded Reload
	store.d r[3:4], -408(r30)               # 8-byte Folded Spill
	load.d r[3:4], -368(r30)                # 8-byte Folded Reload
	sub.sl r[3:4], r[27:28], r[3:4]
	.loc	1 104 80                        # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:104:80
	load.d r[27:28], -400(r30)              # 8-byte Folded Reload
	store.d r[3:4], -368(r30)               # 8-byte Folded Spill
	load.d r[3:4], -408(r30)                # 8-byte Folded Reload
	add.ul r[27:28], r[3:4], r[27:28]
	load.d r[3:4], -368(r30)                # 8-byte Folded Reload
	lock zero, r7
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r16, zero, 1
	min.sl r[11:12], r[3:4], r[11:12]
	load.d r[3:4], -392(r30)                # 8-byte Folded Reload
	dma_cfg r28, zero, zero, 2
	slli r1, r3, 2
	dma_cfg r27, r6, r1, 3
	addli r1, zero, 4096
	dma_cfg r1, r19, r11, 4
	addli r1, zero, 12
	dma_run zero
	unlock r7
	j .LBB0_6
.LBB0_36:                               # %._crit_edge
	.loc	1 23 0 is_stmt 1                # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:23:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_38
# %bb.37:
	.loc	1 0 0 is_stmt 0                 # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:0:0
	addli r1, zero, 2
	.loc	1 23 0                          # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:23:0
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
.LBB0_38:
	.loc	1 23 0 epilogue_begin           # cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py:23:0
	addli sp, sp, 424
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
	.long	488                             # 0x1e8
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
.asciz	"cjsuebmtpudv2yt7nhfhhbgtd7lq2rxs6d5yyvloyrezy4e675dz.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/js" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
