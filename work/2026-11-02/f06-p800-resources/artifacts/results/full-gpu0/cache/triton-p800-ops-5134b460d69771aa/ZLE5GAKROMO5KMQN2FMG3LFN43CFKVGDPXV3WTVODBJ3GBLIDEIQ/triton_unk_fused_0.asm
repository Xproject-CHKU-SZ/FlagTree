	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/yd" "cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py"
	.loc	1 23 0                          # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:23:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -776
	addli r1, zero, 1
.Ltmp0:
	.loc	1 74 26 prologue_end            # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:74:26
	core_id r2
	addli r30, sp, 712
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
.LBB0_3:
	loadli.w r1,  32(r30)
	loadli.w r3,  36(r30)
	load_param_i r5, 1
	loadli.w r4,  40(r30)
	storeli.w zero, -20(r30)
	storeli.w zero, -144(r30)
	storeli.w zero, -308(r30)
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
	sext_int2long r[11:12], r1
	lui r1, 7
	loadli.w r6,  -20(r30)
	loadli.w r7,  -144(r30)
	loadli.w r8,  -308(r30)
	loadli.w r9,  -428(r30)
	loadli.w r10,  -624(r30)
	addli r13, zero, 64
	addli r19, zero, 7
	addli r16, zero, 4
	addli r18, zero, 1
	addli r27, zero, 48
	addli r25, zero, 2
	addli r24, zero, 3
	addli r28, zero, 128
	addli r14, zero, 6
	addli r15, zero, 0
	store.d r[3:4], -704(r30)               # 8-byte Folded Spill
	ori r5, r1, 4095
	lui r1, 127
	addli r3, zero, 8
	lui r4, 1048448
	ori r1, r1, 4095
	store.d r[4:5], -712(r30)               # 8-byte Folded Spill
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread10
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 102 66 is_stmt 1              # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:102:66
	load.d r[11:12], 16(r30)
	load.d r[14:15], -680(r30)              # 8-byte Folded Reload
	slli r4, r4, 1
	add.ul r[11:12], r[11:12], r[14:15]
	addli r14, zero, 14
	xwait r14, 0
	lock zero, r16
	addli r14, zero, 6
	dma_cfg zero, r18, zero, 0
	dma_cfg zero, r12, zero, 2
	dma_cfg r1, r11, r4, 3
	addli r1, zero, 256
	addli r4, zero, 512
	dma_cfg r4, r1, r18, 4
	addli r1, zero, 13
	dma_run zero
	unlock r16
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[11:12], -664(r30)              # 8-byte Folded Reload
	load.d r[4:5], -704(r30)                # 8-byte Folded Reload
	loadli.w r15,  -668(r30)                # 4-byte Folded Reload
	addli r6, r6, 1
	addli.d r[11:12], r[11:12], 1
	setlt.sl r1, r[11:12], r[4:5]
	beq r1, zero, .LBB0_38
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
                                        #     Child Loop BB0_34 Depth 2
	storeli.w r6, -652(r30)                 # 4-byte Folded Spill
	.loc	1 74 26 is_stmt 1               # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:74:26
	bneq r2, r16, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 12
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:0:26
	loadli.w r1,  40(r30)
	loadli.w r4,  36(r30)
	store.d r[11:12], -664(r30)             # 8-byte Folded Spill
	mod.s r6, r15, r16
	addli r15, r15, 1
	addli r17, zero, 0
	storeli.w r15, -668(r30)                # 4-byte Folded Spill
	div.s r1, r11, r1
	slli r21, r6, 15
	div.s r1, r1, r4
	div.s r4, r1, r13
	slli r5, r4, 3
	slli r4, r4, 6
	sub.s r11, r3, r5
	sub.s r4, r1, r4
	min.s r11, r11, r3
	mod.s r1, r1, r11
	div.s r4, r4, r11
	add.s r1, r5, r1
	slli r5, r4, 7
	storeli.w r5, -672(r30)                 # 4-byte Folded Spill
	zext_int2long r[4:5], r4
	slli r6, r1, 6
	zext_int2long r[11:12], r1
	addli r1, zero, 16
	sll.d r[4:5], r[4:5], r19
	store.d r[11:12], -688(r30)             # 8-byte Folded Spill
	storeli.w r6, -692(r30)                 # 4-byte Folded Spill
	.loc	1 74 26                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:74:26
	sll.d r[22:23], r[4:5], r18
	sll.d r[4:5], r[11:12], r1
	load.d r[11:12], 8(r30)
	addli r1, zero, 0
	store.d r[22:23], -680(r30)             # 8-byte Folded Spill
	add.ul r[11:12], r[11:12], r[22:23]
	store.d r[11:12], -648(r30)             # 8-byte Folded Spill
	load.d r[11:12], -712(r30)              # 8-byte Folded Reload
	and.d r[11:12], r[4:5], r[11:12]
	store.d r[11:12], -632(r30)             # 8-byte Folded Spill
	j .LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 26                          # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:0:26
	addli r6, zero, 1024
	.loc	1 82 25 is_stmt 1               # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:82:25
	sub.sl r[11:12], r[22:23], r[11:12]
	.loc	1 82 20 is_stmt 0               # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:82:20
	load.d r[14:15], 0(r30)
	sll.d r[22:23], r[22:23], r18
	xwait r24, 0
	lock zero, r16
	dma_cfg r18, r18, zero, 0
	zext_int2long r[26:27], r6
	addli r6, zero, 448
	add.ul r[22:23], r[14:15], r[22:23]
	addli r14, zero, 6
	.loc	1 82 25                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:82:25
	div.sl r[11:12], r[11:12], r[26:27]
	zext_int2long r[26:27], r6
	.loc	1 82 20                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:82:20
	dma_cfg zero, r23, zero, 2
	.loc	1 82 25                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:82:25
	min.sl r[26:27], r[11:12], r[26:27]
	sub.sl r[11:12], r[26:27], r[11:12]
	addli r27, zero, 48
	.loc	1 82 20                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:82:20
	addli r6, r11, 64
	addli r11, zero, 256
	addli r12, zero, 2048
	dma_cfg r20, r22, r11, 3
	dma_cfg r11, r12, r6, 4
	dma_run zero
	unlock r16
	xsignal r25, 0
.LBB0_12:                               # %.thread8
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 90 25 is_stmt 1               # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:90:25
	addli r8, r8, 1
	.loc	1 74 26                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:74:26
	addli r17, r17, 1
	.loc	1 87 20                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:87:20
	addli r7, r7, 1
	.loc	1 74 26                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:74:26
	beq r17, r3, .LBB0_29
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 90 25                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:90:25
	addli r1, r1, 1
.LBB0_14:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	.loc	1 82 20                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:82:20
	addli r6, zero, 29
	.loc	1 90 25                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:90:25
	mod.s r11, r10, r27
	addli r10, r10, 1
	.loc	1 82 20                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:82:20
	mod.s r6, r9, r6
	addli r9, r9, 1
	slli r12, r6, 14
	.loc	1 90 25                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:90:25
	slli r6, r11, 14
	.loc	1 82 20                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:82:20
	lui r11, 32
	add.s r20, r12, r11
	beq r2, r25, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:0:0
	zext_int2long r[22:23], r17
	.loc	1 82 20                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:82:20
	bneq r2, r18, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 20                          # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:0:20
	loadli.w r6,  -636(r30)                 # 4-byte Folded Reload
	.loc	1 87 25 is_stmt 1               # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:87:25
	sll.d r[11:12], r[22:23], r19
	.loc	1 82 25                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:82:25
	add.ul r[22:23], r[11:12], r[4:5]
	zext_int2long r[11:12], r6
	setlt.ul r6, r[11:12], r[22:23]
	load.d r[11:12], -632(r30)              # 8-byte Folded Reload
	bneq r6, zero, .LBB0_11
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 25 is_stmt 0                # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:0:25
	zext_int2long r[11:12], zero
	j .LBB0_11
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 90 25 is_stmt 1               # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:90:25
	addli r11, zero, 5
	xwait r25, 0
	xwait r11, 0
	lock zero, zero
	ds_cfg r24, zero, 0
	ds_cfg r28, zero, 1
	ds_cfg r28, zero, 14
	ds_cfg r13, zero, 13
	shuffle_batch r6, r20, r28, 1
	unlock zero
	xsignal r24, 0
	xsignal r16, 0
	j .LBB0_12
.LBB0_19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 87 20                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:87:20
	addli r11, zero, 30
	.loc	1 90 25                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:90:25
	addli r12, zero, 40
	.loc	1 87 20                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:87:20
	mod.s r11, r7, r11
	.loc	1 90 25                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:90:25
	mod.s r12, r8, r12
	slli r20, r12, 15
	.loc	1 87 20                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:87:20
	slli r11, r11, 15
	lui r12, 148
	add.s r26, r11, r12
	beq r2, r19, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r2, r14, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=2
	addli r6, zero, 18
	xwait r19, 0
	sll.d r[11:12], r[22:23], r6
	load.d r[22:23], -648(r30)              # 8-byte Folded Reload
	lock zero, r16
	addli r6, zero, 256
	dma_cfg r18, r18, zero, 0
	add.ul r[11:12], r[22:23], r[11:12]
	dma_cfg zero, r12, zero, 2
	dma_cfg r26, r11, r6, 3
	addli r11, zero, 2048
	dma_cfg r6, r11, r28, 4
	dma_run zero
	unlock r16
	xsignal r14, 0
	.loc	1 90 25                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:90:25
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r6, zero, 9
	xwait r14, 0
	xwait r6, 0
	lock zero, zero
	ds_cfg r24, zero, 0
	ds_cfg r28, zero, 1
	ds_cfg r28, zero, 14
	ds_cfg r28, zero, 13
	shuffle_coa r20, r26, r28, 2
	unlock zero
	xsignal r19, 0
	xsignal r3, 0
	j .LBB0_12
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r2, r16, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 25 is_stmt 0                # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:0:25
	addli r26, zero, 1
	addli r19, zero, 1
	addli r22, zero, 0
	.loc	1 90 25                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:90:25
	xwait r16, 0
	xwait r3, 0
	beq r1, zero, .LBB0_26
.LBB0_25:                               # %.preheader11
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r11, r22, 14
	slli r12, r22, 8
	lock zero, r26
	addli r22, zero, 1
	mm_cfg r13, r28, r13, 0
	or r11, r11, r20
	or r12, r12, r21
	mm_cfg r16, r16, r26, 2
	mm_acc r12, r6, r11, 5
	andi r11, r19, 1
	addli r19, zero, 0
	unlock r26
	bneq r11, zero, .LBB0_25
	j .LBB0_27
.LBB0_26:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r11, r22, 14
	slli r12, r22, 8
	lock zero, r26
	addli r22, zero, 1
	mm_cfg r13, r28, r13, 0
	or r11, r11, r20
	or r12, r12, r21
	mm_cfg r16, r16, r26, 2
	mm r12, r6, r11, 5
	andi r11, r19, 1
	addli r19, zero, 0
	unlock r26
	bneq r11, zero, .LBB0_26
.LBB0_27:                               # %.thread8.thread53
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r6, zero, 5
	addli r8, r8, 1
	.loc	1 74 26 is_stmt 1               # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:74:26
	addli r17, r17, 1
	.loc	1 87 20                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:87:20
	addli r7, r7, 1
	addli r19, zero, 7
	.loc	1 90 25                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:90:25
	xsignal r6, 0
	addli r6, zero, 9
	xsignal r6, 0
	bneq r17, r3, .LBB0_13
	j .LBB0_30
.LBB0_28:                               # %.thread8.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r8, r8, 1
	.loc	1 74 26                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:74:26
	addli r17, r17, 1
	.loc	1 87 20                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:87:20
	addli r7, r7, 1
	bneq r17, r3, .LBB0_13
	j .LBB0_31
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 74 26                         # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:74:26
	bneq r2, r16, .LBB0_31
.LBB0_30:                               # %.thread55
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_31:                               # %.thread52
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 102 66                        # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:102:66
	loadli.w r1,  -672(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -652(r30)                 # 4-byte Folded Reload
	zext_int2long r[14:15], r28
	zext_int2long r[4:5], r1
	addli r1, zero, 896
	zext_int2long r[11:12], r1
	mod.s r1, r6, r16
	min.ul r[11:12], r[4:5], r[11:12]
	addli.d r[11:12], r[11:12], 128
	max.ul r[11:12], r[11:12], r[4:5]
	slli r1, r1, 9
	sub.sl r[4:5], r[11:12], r[4:5]
	lui r11, 388
	min.ul r[4:5], r[4:5], r[14:15]
	add.s r1, r1, r11
	beq r2, r18, .LBB0_5
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 107 18                        # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:107:18
	addli r11, zero, 5
	bneq r2, r11, .LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_8 Depth=1
	addli r5, zero, 10
	addli r4, zero, 0
	lui r11, 8
	addli r14, zero, 6
	xwait r5, 0
	addli r5, zero, 13
	xwait r5, 0
	lock zero, r25
	lui r5, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r5, r5, zero, 0
	addli r5, zero, 127
	ew_cfg zero, r5, zero, 2
	ew_cfg r18, zero, zero, 3
.LBB0_34:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r21, r4
	addli r4, r4, 512
	dsmadd r5, r5, r1, 0
	bneq r4, r11, .LBB0_34
# %bb.35:                               # %.thread56
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	unlock r25
	xsignal r1, 0
	addli r1, zero, 14
	j .LBB0_6
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 18 is_stmt 0                # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:0:18
	addli r14, zero, 6
	.loc	1 110 80 is_stmt 1              # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:110:80
	bneq r2, zero, .LBB0_7
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 80 is_stmt 0                # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:0:80
	loadli.w r1,  -692(r30)                 # 4-byte Folded Reload
	.loc	1 110 80                        # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:110:80
	load.d r[19:20], -688(r30)              # 8-byte Folded Reload
	load.d r[22:23], 24(r30)
	sext_int2long r[11:12], r1
	addli r1, zero, 448
	zext_int2long r[14:15], r1
	addli r1, zero, 17
	min.sl r[14:15], r[11:12], r[14:15]
	sll.d r[19:20], r[19:20], r1
	addli r1, zero, 11
	addli.d r[14:15], r[14:15], 64
	add.ul r[19:20], r[22:23], r[19:20]
	load.d r[22:23], -680(r30)              # 8-byte Folded Reload
	xwait r1, 0
	slli r1, r4, 2
	addli r4, zero, 2048
	max.sl r[14:15], r[14:15], r[11:12]
	add.ul r[19:20], r[19:20], r[22:23]
	sub.sl r[11:12], r[14:15], r[11:12]
	zext_int2long r[14:15], r13
	min.sl r[11:12], r[11:12], r[14:15]
	addli r14, zero, 5
	lock zero, r14
	dma_cfg r18, zero, zero, 0
	dma_cfg zero, r18, zero, 1
	dma_cfg r20, zero, zero, 2
	dma_cfg r19, r21, r1, 3
	addli r1, zero, 512
	addli r19, zero, 7
	dma_cfg r4, r1, r11, 4
	dma_run zero
	unlock r14
	addli r14, zero, 6
	addli r1, zero, 12
	j .LBB0_6
.LBB0_38:                               # %._crit_edge
	.loc	1 23 0 is_stmt 1                # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:23:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:0:0
	addli r1, zero, 2
	.loc	1 23 0                          # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:23:0
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
	.loc	1 23 0 epilogue_begin           # cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py:23:0
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
.asciz	"cydkv6si7bkuas7l2hin7tbl77mfpkzf4gvpfu2p5lr3slh63viy.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/yd" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
