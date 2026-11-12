	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/x6" "cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py"
	.loc	1 23 0                          # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:23:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -512
	addli r1, zero, 1
.Ltmp0:
	.loc	1 74 26 prologue_end            # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:74:26
	core_id r2
	addli r30, sp, 448
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:0:26
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
	ble.s r3, r1, .LBB0_38
# %bb.4:                                # %.lr.ph
	sext_int2long r[5:6], r3
	sext_int2long r[11:12], r1
	lui r1, 15
	loadli.w r7,  -16(r30)
	loadli.w r8,  -104(r30)
	loadli.w r9,  -268(r30)
	loadli.w r10,  -356(r30)
	addli r4, zero, 0
	addli r13, zero, 64
	addli r14, zero, 4
	addli r19, zero, 2
	addli r20, zero, 21
	lui r25, 48
	addli r27, zero, 128
	addli r28, zero, 16
	addli r24, zero, 6
	store.d r[5:6], -440(r30)               # 8-byte Folded Spill
	ori r6, r1, 4095
	lui r1, 127
	lui r5, 1048448
	ori r1, r1, 4095
	store.d r[5:6], -448(r30)               # 8-byte Folded Spill
	addli r5, zero, 0
	storeli.w r1, -372(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread10
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 102 66 is_stmt 1              # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:102:66
	load.d r[3:4], 16(r30)
	load.d r[16:17], -416(r30)              # 8-byte Folded Reload
	addli r6, zero, 14
	xwait r6, 0
	lock zero, r14
	slli r6, r11, 2
	add.ul r[3:4], r[3:4], r[16:17]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r4, zero, 2
	dma_cfg r1, r3, r6, 3
	addli r1, zero, 512
	dma_cfg r1, r1, r15, 4
	dma_run zero
	unlock r14
	addli r1, zero, 13
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[11:12], -400(r30)              # 8-byte Folded Reload
	load.d r[3:4], -440(r30)                # 8-byte Folded Reload
	addli r7, r7, 1
	addli.d r[11:12], r[11:12], 1
	setlt.sl r1, r[11:12], r[3:4]
	loadli.w r4,  -388(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_38
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
                                        #     Child Loop BB0_34 Depth 2
	storeli.w r7, -392(r30)                 # 4-byte Folded Spill
	.loc	1 74 26 is_stmt 1               # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:74:26
	bneq r2, r14, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 12
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:0:26
	loadli.w r1,  40(r30)
	loadli.w r3,  36(r30)
	store.d r[11:12], -400(r30)             # 8-byte Folded Spill
	addli r6, zero, 3
	addli r15, zero, 0
	addli r26, zero, 0
	mod.s r6, r4, r6
	addli r4, r4, 1
	div.s r1, r11, r1
	addli r12, zero, 8
	storeli.w r4, -388(r30)                 # 4-byte Folded Spill
	slli r6, r6, 16
	div.s r1, r1, r3
	div.s r3, r1, r13
	slli r7, r3, 3
	slli r3, r3, 6
	sub.s r11, r14, r7
	sub.s r3, r1, r3
	min.s r11, r11, r12
	mod.s r1, r1, r11
	div.s r3, r3, r11
	add.s r1, r7, r1
	slli r4, r3, 7
	zext_int2long r[11:12], r3
	slli r3, r1, 7
	storeli.w r4, -404(r30)                 # 4-byte Folded Spill
	storeli.w r3, -428(r30)                 # 4-byte Folded Spill
	addli r3, zero, 7
	sll.d r[11:12], r[11:12], r3
	zext_int2long r[3:4], r1
	addli r1, zero, 17
	store.d r[3:4], -424(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[3:4], r1
	.loc	1 74 26                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:74:26
	load.d r[3:4], 8(r30)
	sll.d r[11:12], r[11:12], r19
	store.d r[11:12], -416(r30)             # 8-byte Folded Spill
	add.ul r[3:4], r[3:4], r[11:12]
	addli r12, zero, 24
	addli r11, zero, 1
	store.d r[3:4], -384(r30)               # 8-byte Folded Spill
	load.d r[3:4], -448(r30)                # 8-byte Folded Reload
	and.d r[3:4], r[21:22], r[3:4]
	store.d r[3:4], -368(r30)               # 8-byte Folded Spill
	j .LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 26                          # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:0:26
	addli r3, zero, 1024
	.loc	1 82 25 is_stmt 1               # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:82:25
	sub.sl r[11:12], r[16:17], r[11:12]
	addli r7, zero, 384
	.loc	1 82 20 is_stmt 0               # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:82:20
	load.d r[23:24], 0(r30)
	sll.d r[16:17], r[16:17], r19
	zext_int2long r[3:4], r3
	add.ul r[16:17], r[23:24], r[16:17]
	addli r24, zero, 6
	.loc	1 82 25                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:82:25
	div.sl r[3:4], r[11:12], r[3:4]
	zext_int2long r[11:12], r7
	.loc	1 82 20                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:82:20
	addli r7, zero, 3
	xwait r7, 0
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r17, zero, 2
	.loc	1 82 25                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:82:25
	min.sl r[11:12], r[3:4], r[11:12]
	sub.sl r[3:4], r[11:12], r[3:4]
	addli r12, zero, 24
	addli r11, zero, 1
	.loc	1 82 20                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:82:20
	addli r3, r3, 128
	addli r4, zero, 256
	dma_cfg r1, r16, r4, 3
	addli r1, zero, 4096
	dma_cfg r4, r1, r3, 4
	dma_run zero
	unlock r14
	xsignal r19, 0
.LBB0_12:                               # %.thread8
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 90 25 is_stmt 1               # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:90:25
	addli r9, r9, 1
	.loc	1 74 26                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:74:26
	addli r15, r15, 1
	.loc	1 87 20                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:87:20
	addli r8, r8, 1
	.loc	1 74 26                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:74:26
	beq r15, r28, .LBB0_29
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 90 25                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:90:25
	addli r26, r26, 1
.LBB0_14:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	.loc	1 82 20                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:82:20
	mod.s r1, r10, r20
	.loc	1 90 25                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:90:25
	mod.s r3, r5, r12
	addli r5, r5, 1
	.loc	1 82 20                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:82:20
	addli r10, r10, 1
	slli r1, r1, 15
	.loc	1 90 25                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:90:25
	slli r7, r3, 15
	.loc	1 82 20                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:82:20
	add.s r1, r1, r25
	beq r2, r19, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:0:0
	zext_int2long r[17:18], r15
	.loc	1 82 20                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:82:20
	bneq r2, r11, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 20                          # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:0:20
	loadli.w r3,  -372(r30)                 # 4-byte Folded Reload
	.loc	1 87 25 is_stmt 1               # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:87:25
	sll.d r[11:12], r[17:18], r24
	.loc	1 82 25                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:82:25
	add.ul r[16:17], r[11:12], r[21:22]
	zext_int2long r[11:12], r3
	setlt.ul r3, r[11:12], r[16:17]
	load.d r[11:12], -368(r30)              # 8-byte Folded Reload
	bneq r3, zero, .LBB0_11
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 25 is_stmt 0                # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:0:25
	zext_int2long r[11:12], zero
	j .LBB0_11
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 90 25 is_stmt 1               # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:90:25
	addli r3, zero, 5
	xwait r19, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r19, zero, 0
	ds_cfg r13, zero, 1
	ds_cfg r13, zero, 14
	ds_cfg r27, zero, 13
	shuffle_batch r7, r1, r13, 1
	addli r1, zero, 3
	unlock zero
	xsignal r1, 0
	xsignal r14, 0
	j .LBB0_12
.LBB0_19:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 40
	.loc	1 87 20                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:87:20
	mod.s r1, r8, r20
	.loc	1 90 25                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:90:25
	mod.s r3, r9, r3
	.loc	1 87 20                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:87:20
	slli r4, r1, 15
	.loc	1 90 25                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:90:25
	slli r1, r3, 15
	.loc	1 87 20                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:87:20
	lui r3, 216
	add.s r16, r4, r3
	addli r3, zero, 7
	beq r2, r3, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r2, r24, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 18
	sll.d r[3:4], r[17:18], r1
	addli r1, zero, 7
	xwait r1, 0
	load.d r[17:18], -384(r30)              # 8-byte Folded Reload
	lock zero, r14
	addli r1, zero, 512
	dma_cfg zero, zero, zero, 0
	add.ul r[3:4], r[17:18], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r16, r3, r1, 3
	addli r3, zero, 4096
	dma_cfg r1, r3, r13, 4
	dma_run zero
	unlock r14
	xsignal r24, 0
	.loc	1 90 25                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:90:25
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 9
	xwait r24, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r19, zero, 0
	ds_cfg r27, zero, 1
	ds_cfg r13, zero, 14
	ds_cfg r27, zero, 13
	shuffle_coa r1, r16, r13, 2
	addli r1, zero, 7
	unlock zero
	xsignal r1, 0
	addli r1, zero, 8
	xsignal r1, 0
	j .LBB0_12
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r2, r14, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 8
	xwait r14, 0
	addli r16, zero, 1
	addli r17, zero, 0
	xwait r3, 0
	addli r3, zero, 1
	beq r26, zero, .LBB0_26
.LBB0_25:                               # %.preheader11
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r4, r17, 14
	slli r11, r17, 8
	lock zero, r16
	addli r17, zero, 1
	mm_cfg r13, r13, r27, 0
	or r4, r4, r1
	or r11, r11, r6
	mm_cfg r14, r14, r16, 2
	mm_acc r11, r7, r4, 8
	andi r4, r3, 1
	addli r3, zero, 0
	unlock r16
	bneq r4, zero, .LBB0_25
	j .LBB0_27
.LBB0_26:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r4, r17, 14
	slli r11, r17, 8
	lock zero, r16
	addli r17, zero, 1
	mm_cfg r13, r13, r27, 0
	or r4, r4, r1
	or r11, r11, r6
	mm_cfg r14, r14, r16, 2
	mm r11, r7, r4, 8
	andi r4, r3, 1
	addli r3, zero, 0
	unlock r16
	bneq r4, zero, .LBB0_26
.LBB0_27:                               # %.thread8.thread53
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 5
	addli r9, r9, 1
	.loc	1 74 26                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:74:26
	addli r15, r15, 1
	.loc	1 87 20                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:87:20
	addli r8, r8, 1
	addli r11, zero, 1
	.loc	1 90 25                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:90:25
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r15, r28, .LBB0_13
	j .LBB0_30
.LBB0_28:                               # %.thread8.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r9, r9, 1
	.loc	1 74 26                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:74:26
	addli r15, r15, 1
	.loc	1 87 20                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:87:20
	addli r8, r8, 1
	bneq r15, r28, .LBB0_13
	j .LBB0_31
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 74 26                         # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:74:26
	bneq r2, r14, .LBB0_31
.LBB0_30:                               # %.thread55
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_31:                               # %.thread52
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 102 66                        # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:102:66
	loadli.w r1,  -404(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -392(r30)                 # 4-byte Folded Reload
	zext_int2long r[21:22], r27
	addli r15, zero, 1
	zext_int2long r[3:4], r1
	addli r1, zero, 896
	zext_int2long r[11:12], r1
	addli r1, zero, 3
	min.ul r[11:12], r[3:4], r[11:12]
	mod.s r1, r7, r1
	addli.d r[11:12], r[11:12], 128
	max.ul r[11:12], r[11:12], r[3:4]
	sub.sl r[3:4], r[11:12], r[3:4]
	slli r1, r1, 9
	min.ul r[11:12], r[3:4], r[21:22]
	lui r3, 384
	add.s r1, r1, r3
	beq r2, r15, .LBB0_5
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 66 is_stmt 0                # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:0:66
	addli r23, zero, 1
	.loc	1 103 17 is_stmt 1              # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:103:17
	addli r3, zero, 5
	bneq r2, r3, .LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 10
	addli r3, zero, 0
	lui r11, 16
	xwait r4, 0
	addli r4, zero, 13
	xwait r4, 0
	lock zero, r19
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 127
	ew_cfg zero, r4, zero, 2
	ew_cfg r23, zero, zero, 3
.LBB0_34:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r6, r3
	addli r3, r3, 512
	dsmadd r4, r4, r1, 0
	bneq r3, r11, .LBB0_34
# %bb.35:                               # %.thread56
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	unlock r19
	xsignal r1, 0
	addli r1, zero, 14
	j .LBB0_6
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 104 80                        # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:104:80
	bneq r2, zero, .LBB0_7
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 80 is_stmt 0                # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:0:80
	loadli.w r1,  -428(r30)                 # 4-byte Folded Reload
	.loc	1 104 80                        # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:104:80
	load.d r[17:18], -424(r30)              # 8-byte Folded Reload
	sext_int2long r[3:4], r1
	addli r1, zero, 384
	zext_int2long r[15:16], r1
	addli r1, zero, 19
	.loc	1 0 0                           # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:0:0
	min.sl r[15:16], r[3:4], r[15:16]
	.loc	1 104 80                        # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:104:80
	sll.d r[17:18], r[17:18], r1
	addli r1, zero, 11
	.loc	1 0 0                           # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:0:0
	addli.d r[15:16], r[15:16], 128
	store.d r[17:18], -368(r30)             # 8-byte Folded Spill
	.loc	1 104 80                        # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:104:80
	xwait r1, 0
	load.d r[17:18], 24(r30)
	slli r1, r11, 2
	.loc	1 0 0                           # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:0:0
	max.sl r[15:16], r[15:16], r[3:4]
	.loc	1 104 80                        # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:104:80
	store.d r[15:16], -384(r30)             # 8-byte Folded Spill
	load.d r[15:16], -368(r30)              # 8-byte Folded Reload
	add.ul r[17:18], r[17:18], r[15:16]
	.loc	1 0 0                           # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:0:0
	load.d r[15:16], -384(r30)              # 8-byte Folded Reload
	sub.sl r[3:4], r[15:16], r[3:4]
	.loc	1 104 80                        # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:104:80
	load.d r[15:16], -416(r30)              # 8-byte Folded Reload
	min.sl r[3:4], r[3:4], r[21:22]
	add.ul r[15:16], r[17:18], r[15:16]
	addli r17, zero, 5
	lock zero, r17
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r23, zero, 1
	dma_cfg r16, zero, zero, 2
	dma_cfg r15, r6, r1, 3
	addli r1, zero, 512
	addli r6, zero, 4096
	dma_cfg r6, r1, r3, 4
	addli r1, zero, 12
	dma_run zero
	unlock r17
	j .LBB0_6
.LBB0_38:                               # %._crit_edge
	.loc	1 23 0 is_stmt 1                # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:23:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:0:0
	addli r1, zero, 2
	.loc	1 23 0                          # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:23:0
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
	.loc	1 23 0 epilogue_begin           # cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py:23:0
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
.asciz	"cx66avwytscft6idu6xt2evr6ocvcbsu22pw7bd2taew4jete5ra.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/x6" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
