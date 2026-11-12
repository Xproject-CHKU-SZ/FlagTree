	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/5m" "c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py"
	.loc	1 23 0                          # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:23:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -512
	addli r1, zero, 1
.Ltmp0:
	.loc	1 74 26 prologue_end            # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:74:26
	core_id r2
	addli r30, sp, 448
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
.LBB0_3:
	loadli.w r1,  32(r30)
	loadli.w r3,  36(r30)
	load_param_i r5, 1
	loadli.w r4,  40(r30)
	storeli.w zero, -24(r30)
	storeli.w zero, -104(r30)
	storeli.w zero, -268(r30)
	storeli.w zero, -348(r30)
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
	sext_int2long r[15:16], r1
	lui r1, 31
	loadli.w r7,  -24(r30)
	loadli.w r8,  -104(r30)
	loadli.w r9,  -268(r30)
	loadli.w r10,  -348(r30)
	addli r12, zero, 0
	addli r13, zero, 128
	addli r28, zero, 8
	addli r24, zero, 5
	addli r18, zero, 4
	addli r20, zero, 2
	addli r14, zero, 19
	lui r26, 80
	addli r27, zero, 64
	addli r19, zero, 32
	addli r25, zero, 1
	addli r21, zero, 6
	addli r6, zero, 0
	store.d r[3:4], -440(r30)               # 8-byte Folded Spill
	ori r4, r1, 4095
	addli r1, zero, 24
	lui r3, 1047552
	store.d r[3:4], -448(r30)               # 8-byte Folded Spill
	lui r3, 1023
	ori r3, r3, 4095
	storeli.w r3, -372(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread10
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 102 66 is_stmt 1              # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:102:66
	load.d r[4:5], 16(r30)
	load.d r[15:16], -416(r30)              # 8-byte Folded Reload
	addli r7, zero, 14
	xwait r7, 0
	lock zero, r18
	slli r7, r11, 2
	add.ul r[4:5], r[4:5], r[15:16]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r5, zero, 2
	dma_cfg r3, r4, r7, 3
	addli r3, zero, 512
	loadli.w r7,  -388(r30)                 # 4-byte Folded Reload
	dma_cfg r3, r3, r25, 4
	dma_run zero
	unlock r18
	addli r3, zero, 13
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:0:0
	xsignal r3, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[15:16], -400(r30)              # 8-byte Folded Reload
	load.d r[3:4], -440(r30)                # 8-byte Folded Reload
	loadli.w r12,  -392(r30)                # 4-byte Folded Reload
	addli r7, r7, 1
	addli.d r[15:16], r[15:16], 1
	setlt.sl r3, r[15:16], r[3:4]
	beq r3, zero, .LBB0_38
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
                                        #     Child Loop BB0_34 Depth 2
	storeli.w r7, -388(r30)                 # 4-byte Folded Spill
	.loc	1 74 26 is_stmt 1               # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:74:26
	bneq r2, r18, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 12
	xwait r3, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:0:26
	loadli.w r3,  40(r30)
	loadli.w r4,  36(r30)
	addli r11, zero, 16
	mod.s r7, r12, r24
	store.d r[15:16], -400(r30)             # 8-byte Folded Spill
	addli r12, r12, 1
	addli r22, zero, 0
	storeli.w r12, -392(r30)                # 4-byte Folded Spill
	div.s r3, r15, r3
	slli r15, r7, 16
	div.s r3, r3, r4
	div.s r4, r3, r13
	slli r5, r4, 3
	slli r4, r4, 7
	sub.s r11, r11, r5
	sub.s r4, r3, r4
	min.s r11, r11, r28
	mod.s r3, r3, r11
	div.s r4, r4, r11
	add.s r3, r5, r3
	slli r5, r4, 7
	slli r7, r3, 7
	storeli.w r5, -404(r30)                 # 4-byte Folded Spill
	zext_int2long r[4:5], r4
	zext_int2long r[16:17], r3
	addli r3, zero, 18
	storeli.w r7, -428(r30)                 # 4-byte Folded Spill
	addli r7, zero, 7
	store.d r[16:17], -424(r30)             # 8-byte Folded Spill
	sll.d r[16:17], r[16:17], r3
	sll.d r[4:5], r[4:5], r7
	addli r7, zero, 0
	store.d r[16:17], -360(r30)             # 8-byte Folded Spill
	.loc	1 74 26                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:74:26
	sll.d r[11:12], r[4:5], r20
	load.d r[3:4], 8(r30)
	store.d r[11:12], -416(r30)             # 8-byte Folded Spill
	add.ul r[3:4], r[3:4], r[11:12]
	store.d r[3:4], -384(r30)               # 8-byte Folded Spill
	load.d r[3:4], -448(r30)                # 8-byte Folded Reload
	and.d r[3:4], r[16:17], r[3:4]
	store.d r[3:4], -368(r30)               # 8-byte Folded Spill
	j .LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 26                          # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:0:26
	addli r5, zero, 2048
	.loc	1 82 25 is_stmt 1               # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:82:25
	sub.sl r[3:4], r[16:17], r[3:4]
	.loc	1 82 20 is_stmt 0               # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:82:20
	load.d r[11:12], 0(r30)
	sll.d r[16:17], r[16:17], r20
	zext_int2long r[24:25], r5
	addli r5, zero, 1920
	add.ul r[16:17], r[11:12], r[16:17]
	.loc	1 82 25                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:82:25
	div.sl r[3:4], r[3:4], r[24:25]
	zext_int2long r[24:25], r5
	.loc	1 82 20                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:82:20
	addli r5, zero, 3
	xwait r5, 0
	lock zero, r18
	addli r5, zero, 256
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r17, zero, 2
	dma_cfg r23, r16, r5, 3
	.loc	1 82 25                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:82:25
	min.sl r[24:25], r[3:4], r[24:25]
	sub.sl r[3:4], r[24:25], r[3:4]
	addli r24, zero, 5
	addli r25, zero, 1
	.loc	1 82 20                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:82:20
	addli r3, r3, 128
	addli r4, zero, 8192
	dma_cfg r5, r4, r3, 4
	dma_run zero
	unlock r18
	xsignal r20, 0
.LBB0_12:                               # %.thread8
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 90 25 is_stmt 1               # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:90:25
	addli r9, r9, 1
	.loc	1 74 26                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:74:26
	addli r22, r22, 1
	.loc	1 87 20                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:87:20
	addli r8, r8, 1
	.loc	1 74 26                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:74:26
	beq r22, r19, .LBB0_29
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 90 25                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:90:25
	addli r7, r7, 1
.LBB0_14:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	.loc	1 82 20                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:82:20
	mod.s r3, r10, r14
	.loc	1 90 25                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:90:25
	mod.s r4, r6, r1
	addli r6, r6, 1
	.loc	1 82 20                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:82:20
	addli r10, r10, 1
	slli r5, r3, 15
	.loc	1 90 25                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:90:25
	slli r3, r4, 15
	.loc	1 82 20                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:82:20
	add.s r23, r5, r26
	beq r2, r20, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:0:0
	zext_int2long r[16:17], r22
	.loc	1 82 20                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:82:20
	bneq r2, r25, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 82 25                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:82:25
	load.d r[11:12], -360(r30)              # 8-byte Folded Reload
	.loc	1 87 25 is_stmt 1               # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:87:25
	sll.d r[3:4], r[16:17], r21
	.loc	1 82 25                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:82:25
	add.ul r[16:17], r[3:4], r[11:12]
	loadli.w r3,  -372(r30)                 # 4-byte Folded Reload
	zext_int2long r[3:4], r3
	setlt.ul r5, r[3:4], r[16:17]
	load.d r[3:4], -368(r30)                # 8-byte Folded Reload
	bneq r5, zero, .LBB0_11
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 25 is_stmt 0                # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:0:25
	zext_int2long r[3:4], zero
	j .LBB0_11
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 90 25 is_stmt 1               # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:90:25
	xwait r20, 0
	xwait r24, 0
	lock zero, zero
	ds_cfg r20, zero, 0
	ds_cfg r27, zero, 1
	ds_cfg r27, zero, 14
	ds_cfg r13, zero, 13
	shuffle_batch r3, r23, r27, 1
	addli r3, zero, 3
	unlock zero
	xsignal r3, 0
	xsignal r18, 0
	j .LBB0_12
.LBB0_19:                               #   in Loop: Header=BB0_14 Depth=2
	addli r5, zero, 40
	.loc	1 87 20                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:87:20
	mod.s r4, r8, r14
	.loc	1 90 25                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:90:25
	mod.s r5, r9, r5
	.loc	1 87 20                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:87:20
	slli r4, r4, 15
	.loc	1 90 25                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:90:25
	slli r23, r5, 15
	.loc	1 87 20                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:87:20
	lui r5, 232
	add.s r5, r4, r5
	addli r4, zero, 7
	beq r2, r4, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r2, r21, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=2
	sll.d r[3:4], r[16:17], r14
	addli r16, zero, 7
	xwait r16, 0
	load.d r[11:12], -384(r30)              # 8-byte Folded Reload
	lock zero, r18
	dma_cfg zero, zero, zero, 0
	add.ul r[3:4], r[11:12], r[3:4]
	addli r11, zero, 512
	dma_cfg zero, r4, zero, 2
	dma_cfg r5, r3, r11, 3
	addli r3, zero, 8192
	dma_cfg r11, r3, r27, 4
	dma_run zero
	unlock r18
	xsignal r21, 0
	.loc	1 90 25                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:90:25
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 9
	xwait r21, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 7
	ds_cfg r20, zero, 0
	ds_cfg r13, zero, 1
	ds_cfg r27, zero, 14
	ds_cfg r13, zero, 13
	shuffle_coa r23, r5, r27, 2
	unlock zero
	xsignal r3, 0
	xsignal r28, 0
	j .LBB0_12
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r2, r18, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	xwait r18, 0
	xwait r28, 0
	addli r5, zero, 1
	addli r28, zero, 1
	addli r16, zero, 0
	beq r7, zero, .LBB0_26
.LBB0_25:                               # %.preheader11
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r4, r16, 14
	slli r16, r16, 8
	lock zero, r5
	mm_cfg r27, r27, r13, 0
	or r4, r4, r23
	or r16, r16, r15
	mm_cfg r18, r18, r5, 2
	mm_acc r16, r3, r4, 8
	andi r4, r28, 1
	addli r16, zero, 1
	addli r28, zero, 0
	unlock r5
	bneq r4, zero, .LBB0_25
	j .LBB0_27
.LBB0_26:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r4, r16, 14
	slli r16, r16, 8
	lock zero, r5
	mm_cfg r27, r27, r13, 0
	or r4, r4, r23
	or r16, r16, r15
	mm_cfg r18, r18, r5, 2
	mm r16, r3, r4, 8
	andi r4, r28, 1
	addli r16, zero, 1
	addli r28, zero, 0
	unlock r5
	bneq r4, zero, .LBB0_26
.LBB0_27:                               # %.thread8.thread53
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r9, r9, 1
	.loc	1 74 26                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:74:26
	addli r22, r22, 1
	.loc	1 87 20                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:87:20
	addli r8, r8, 1
	addli r28, zero, 8
	.loc	1 90 25                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:90:25
	addli r3, zero, 9
	xsignal r24, 0
	xsignal r3, 0
	bneq r22, r19, .LBB0_13
	j .LBB0_30
.LBB0_28:                               # %.thread8.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r9, r9, 1
	.loc	1 74 26                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:74:26
	addli r22, r22, 1
	.loc	1 87 20                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:87:20
	addli r8, r8, 1
	bneq r22, r19, .LBB0_13
	j .LBB0_31
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 74 26                         # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:74:26
	bneq r2, r18, .LBB0_31
.LBB0_30:                               # %.thread55
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 10
	xsignal r3, 0
.LBB0_31:                               # %.thread52
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:0:26
	addli r3, zero, 1920
	loadli.w r7,  -388(r30)                 # 4-byte Folded Reload
	zext_int2long r[22:23], r13
	zext_int2long r[16:17], r3
	.loc	1 102 66 is_stmt 1              # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:102:66
	loadli.w r3,  -404(r30)                 # 4-byte Folded Reload
	mod.s r5, r7, r24
	zext_int2long r[3:4], r3
	min.ul r[11:12], r[3:4], r[16:17]
	addli.d r[11:12], r[11:12], 128
	slli r5, r5, 9
	max.ul r[11:12], r[11:12], r[3:4]
	sub.sl r[3:4], r[11:12], r[3:4]
	min.ul r[11:12], r[3:4], r[22:23]
	lui r3, 384
	add.s r3, r5, r3
	beq r2, r25, .LBB0_5
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 103 17                        # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:103:17
	bneq r2, r24, .LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 10
	addli r5, zero, 0
	lui r11, 16
	xwait r4, 0
	addli r4, zero, 13
	xwait r4, 0
	lock zero, r20
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 127
	ew_cfg zero, r4, zero, 2
	ew_cfg r25, zero, zero, 3
.LBB0_34:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r15, r5
	addli r5, r5, 512
	dsmadd r4, r4, r3, 0
	bneq r5, r11, .LBB0_34
# %bb.35:                               # %.thread56
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 11
	unlock r20
	xsignal r3, 0
	addli r3, zero, 14
	j .LBB0_6
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 104 80                        # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:104:80
	bneq r2, zero, .LBB0_7
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:0:0
	loadli.w r3,  -428(r30)                 # 4-byte Folded Reload
	.loc	1 104 80                        # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:104:80
	addli r24, zero, 20
	addli r5, zero, 5
	.loc	1 0 0                           # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:0:0
	sext_int2long r[3:4], r3
	store.d r[3:4], -368(r30)               # 8-byte Folded Spill
	.loc	1 104 80                        # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:104:80
	load.d r[3:4], -424(r30)                # 8-byte Folded Reload
	sll.d r[3:4], r[3:4], r24
	addli r24, zero, 11
	store.d r[3:4], -360(r30)               # 8-byte Folded Spill
	load.d r[3:4], -368(r30)                # 8-byte Folded Reload
	xwait r24, 0
	lock zero, r5
	load.d r[24:25], 24(r30)
	slli r5, r11, 2
	addli r11, zero, 8192
	.loc	1 0 0                           # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:0:0
	min.sl r[16:17], r[3:4], r[16:17]
	addli.d r[16:17], r[16:17], 128
	max.sl r[16:17], r[16:17], r[3:4]
	store.d r[16:17], -384(r30)             # 8-byte Folded Spill
	.loc	1 104 80                        # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:104:80
	load.d r[16:17], -360(r30)              # 8-byte Folded Reload
	add.ul r[24:25], r[24:25], r[16:17]
	.loc	1 0 0                           # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:0:0
	load.d r[16:17], -384(r30)              # 8-byte Folded Reload
	sub.sl r[3:4], r[16:17], r[3:4]
	.loc	1 104 80                        # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:104:80
	load.d r[16:17], -416(r30)              # 8-byte Folded Reload
	dma_cfg zero, zero, zero, 0
	min.sl r[3:4], r[3:4], r[22:23]
	add.ul r[16:17], r[24:25], r[16:17]
	addli r25, zero, 1
	addli r24, zero, 5
	dma_cfg zero, r25, zero, 1
	dma_cfg r17, zero, zero, 2
	dma_cfg r16, r15, r5, 3
	addli r5, zero, 512
	dma_cfg r11, r5, r3, 4
	addli r3, zero, 12
	dma_run zero
	unlock r24
	j .LBB0_6
.LBB0_38:                               # %._crit_edge
	.loc	1 23 0 is_stmt 1                # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:23:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:0:0
	addli r1, zero, 2
	.loc	1 23 0                          # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:23:0
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
	.loc	1 23 0 epilogue_begin           # c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py:23:0
	addli sp, sp, 448
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
	.long	512                             # 0x200
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
.asciz	"c5m3g623zp3suxotjpcgstezfjchubcnswm6silzq6ohtdj55tqn.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/5m" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
