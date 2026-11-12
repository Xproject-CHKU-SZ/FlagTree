	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/p2" "cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py"
	.loc	1 23 0                          # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:23:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -784
	addli r1, zero, 1
.Ltmp0:
	.loc	1 74 26 prologue_end            # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:74:26
	core_id r2
	addli r30, sp, 720
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:0:26
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
	sext_int2long r[5:6], r1
	lui r1, 15
	loadli.w r22,  -20(r30)
	loadli.w r7,  -144(r30)
	loadli.w r8,  -308(r30)
	loadli.w r9,  -428(r30)
	loadli.w r10,  -624(r30)
	addli r13, zero, 128
	addli r20, zero, 8
	addli r25, zero, 7
	addli r17, zero, 4
	addli r19, zero, 1
	addli r26, zero, 2
	addli r28, zero, 3
	addli r18, zero, 64
	addli r14, zero, 256
	addli r16, zero, 6
	addli r12, zero, 0
	store.d r[3:4], -712(r30)               # 8-byte Folded Spill
	ori r4, r1, 4095
	addli r1, zero, 16
	lui r3, 1047552
	store.d r[3:4], -720(r30)               # 8-byte Folded Spill
	lui r3, 1023
	ori r3, r3, 4095
	storeli.w r3, -644(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread10
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 102 66 is_stmt 1              # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:102:66
	load.d r[11:12], 16(r30)
	load.d r[20:21], -688(r30)              # 8-byte Folded Reload
	addli r6, zero, 14
	slli r3, r3, 1
	xwait r6, 0
	lock zero, r17
	add.ul r[11:12], r[11:12], r[20:21]
	dma_cfg zero, r19, zero, 0
	addli r20, zero, 8
	dma_cfg zero, r12, zero, 2
	dma_cfg r5, r11, r3, 3
	addli r3, zero, 512
	dma_cfg r3, r14, r19, 4
	addli r3, zero, 13
	dma_run zero
	unlock r17
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:0:0
	xsignal r3, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[5:6], -672(r30)                # 8-byte Folded Reload
	load.d r[3:4], -712(r30)                # 8-byte Folded Reload
	loadli.w r12,  -676(r30)                # 4-byte Folded Reload
	addli r22, r22, 1
	addli.d r[5:6], r[5:6], 1
	setlt.sl r3, r[5:6], r[3:4]
	beq r3, zero, .LBB0_38
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
                                        #     Child Loop BB0_34 Depth 2
	storeli.w r22, -660(r30)                # 4-byte Folded Spill
	.loc	1 74 26 is_stmt 1               # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:74:26
	bneq r2, r17, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 12
	xwait r3, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:0:26
	loadli.w r3,  40(r30)
	loadli.w r4,  36(r30)
	store.d r[5:6], -672(r30)               # 8-byte Folded Spill
	addli r11, zero, 32
	addli r21, zero, 0
	addli r27, zero, 0
	div.s r3, r5, r3
	mod.s r6, r12, r17
	addli r12, r12, 1
	storeli.w r12, -676(r30)                # 4-byte Folded Spill
	div.s r3, r3, r4
	slli r15, r6, 15
	div.s r4, r3, r13
	slli r5, r4, 3
	slli r4, r4, 7
	sub.s r11, r11, r5
	sub.s r4, r3, r4
	min.s r11, r11, r20
	mod.s r3, r3, r11
	div.s r4, r4, r11
	add.s r3, r5, r3
	slli r5, r4, 7
	storeli.w r5, -680(r30)                 # 4-byte Folded Spill
	zext_int2long r[4:5], r4
	slli r6, r3, 6
	zext_int2long r[22:23], r3
	addli r3, zero, 17
	sll.d r[4:5], r[4:5], r25
	storeli.w r6, -700(r30)                 # 4-byte Folded Spill
	store.d r[22:23], -696(r30)             # 8-byte Folded Spill
	.loc	1 74 26                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:74:26
	sll.d r[11:12], r[4:5], r19
	load.d r[5:6], 8(r30)
	sll.d r[3:4], r[22:23], r3
	store.d r[3:4], -632(r30)               # 8-byte Folded Spill
	store.d r[11:12], -688(r30)             # 8-byte Folded Spill
	add.ul r[5:6], r[5:6], r[11:12]
	store.d r[5:6], -656(r30)               # 8-byte Folded Spill
	load.d r[5:6], -720(r30)                # 8-byte Folded Reload
	and.d r[3:4], r[3:4], r[5:6]
	store.d r[3:4], -640(r30)               # 8-byte Folded Spill
	addli r4, zero, 29
	j .LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 26                          # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:0:26
	addli r3, zero, 2048
	.loc	1 82 25 is_stmt 1               # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:82:25
	sub.sl r[5:6], r[22:23], r[5:6]
	addli r12, zero, 1984
	.loc	1 82 20 is_stmt 0               # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:82:20
	sll.d r[22:23], r[22:23], r19
	xwait r28, 0
	lock zero, r17
	addli r14, zero, 256
	dma_cfg r19, r19, zero, 0
	zext_int2long r[24:25], r3
	load.d r[3:4], 0(r30)
	.loc	1 82 25                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:82:25
	div.sl r[5:6], r[5:6], r[24:25]
	zext_int2long r[24:25], r12
	.loc	1 82 20                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:82:20
	add.ul r[22:23], r[3:4], r[22:23]
	addli r3, zero, 256
	addli r4, zero, 4096
	dma_cfg zero, r23, zero, 2
	dma_cfg r11, r22, r3, 3
	.loc	1 82 25                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:82:25
	min.sl r[24:25], r[5:6], r[24:25]
	sub.sl r[5:6], r[24:25], r[5:6]
	addli r25, zero, 7
	.loc	1 82 20                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:82:20
	addli r5, r5, 64
	dma_cfg r3, r4, r5, 4
	dma_run zero
	unlock r17
	xsignal r26, 0
	addli r4, zero, 29
.LBB0_12:                               # %.thread8
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 90 25 is_stmt 1               # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:90:25
	addli r8, r8, 1
	.loc	1 74 26                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:74:26
	addli r21, r21, 1
	.loc	1 87 20                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:87:20
	addli r7, r7, 1
	.loc	1 74 26                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:74:26
	beq r21, r1, .LBB0_29
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 90 25                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:90:25
	addli r27, r27, 1
.LBB0_14:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	.loc	1 82 20                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:82:20
	mod.s r5, r9, r4
	.loc	1 90 25                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:90:25
	addli r6, zero, 48
	.loc	1 82 20                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:82:20
	lui r3, 32
	addli r9, r9, 1
	.loc	1 90 25                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:90:25
	mod.s r6, r10, r6
	addli r10, r10, 1
	.loc	1 82 20                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:82:20
	slli r5, r5, 14
	.loc	1 90 25                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:90:25
	slli r22, r6, 14
	.loc	1 82 20                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:82:20
	add.s r11, r5, r3
	beq r2, r26, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:0:0
	zext_int2long r[23:24], r21
	.loc	1 82 20                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:82:20
	bneq r2, r19, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 82 25                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:82:25
	load.d r[3:4], -632(r30)                # 8-byte Folded Reload
	.loc	1 87 25 is_stmt 1               # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:87:25
	sll.d r[5:6], r[23:24], r25
	.loc	1 82 25                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:82:25
	add.ul r[22:23], r[5:6], r[3:4]
	loadli.w r5,  -644(r30)                 # 4-byte Folded Reload
	zext_int2long r[5:6], r5
	setlt.ul r12, r[5:6], r[22:23]
	load.d r[5:6], -640(r30)                # 8-byte Folded Reload
	bneq r12, zero, .LBB0_11
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 25 is_stmt 0                # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:0:25
	zext_int2long r[5:6], zero
	j .LBB0_11
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 90 25 is_stmt 1               # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:90:25
	addli r5, zero, 5
	xwait r26, 0
	xwait r5, 0
	lock zero, zero
	ds_cfg r28, zero, 0
	ds_cfg r13, zero, 1
	ds_cfg r13, zero, 14
	ds_cfg r18, zero, 13
	shuffle_batch r22, r11, r13, 1
	unlock zero
	xsignal r28, 0
	xsignal r17, 0
	j .LBB0_12
.LBB0_19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 87 20                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:87:20
	addli r3, zero, 30
	mod.s r5, r7, r3
	.loc	1 90 25                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:90:25
	addli r3, zero, 40
	mod.s r6, r8, r3
	.loc	1 87 20                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:87:20
	lui r3, 148
	slli r5, r5, 15
	.loc	1 90 25                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:90:25
	slli r11, r6, 15
	.loc	1 87 20                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:87:20
	add.s r12, r5, r3
	beq r2, r25, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 20 is_stmt 0                # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:0:20
	addli r3, zero, 6
	.loc	1 87 20                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:87:20
	bneq r2, r3, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 19
	xwait r25, 0
	addli r11, zero, 6
	addli r14, zero, 256
	addli r16, zero, 6
	sll.d r[5:6], r[23:24], r3
	load.d r[22:23], -656(r30)              # 8-byte Folded Reload
	lock zero, r17
	addli r3, zero, 256
	dma_cfg r19, r19, zero, 0
	add.ul r[5:6], r[22:23], r[5:6]
	dma_cfg zero, r6, zero, 2
	dma_cfg r12, r5, r3, 3
	addli r5, zero, 4096
	dma_cfg r3, r5, r13, 4
	dma_run zero
	unlock r17
	xsignal r11, 0
	.loc	1 90 25 is_stmt 1               # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:90:25
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 9
	xwait r16, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r28, zero, 0
	ds_cfg r13, zero, 1
	ds_cfg r13, zero, 14
	ds_cfg r13, zero, 13
	shuffle_coa r11, r12, r13, 2
	unlock zero
	xsignal r25, 0
	xsignal r20, 0
	j .LBB0_12
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r2, r17, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	xwait r17, 0
	xwait r20, 0
	addli r16, zero, 6
	addli r12, zero, 1
	addli r20, zero, 1
	addli r23, zero, 0
	beq r27, zero, .LBB0_26
.LBB0_25:                               # %.preheader11
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r5, r23, 14
	slli r6, r23, 8
	lock zero, r12
	addli r23, zero, 1
	mm_cfg r18, r13, r18, 0
	or r5, r5, r11
	or r6, r6, r15
	mm_cfg r17, r17, r12, 2
	mm_acc r6, r22, r5, 5
	andi r5, r20, 1
	addli r20, zero, 0
	unlock r12
	bneq r5, zero, .LBB0_25
	j .LBB0_27
.LBB0_26:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r5, r23, 14
	slli r6, r23, 8
	lock zero, r12
	addli r23, zero, 1
	mm_cfg r18, r13, r18, 0
	or r5, r5, r11
	or r6, r6, r15
	mm_cfg r17, r17, r12, 2
	mm r6, r22, r5, 5
	andi r5, r20, 1
	addli r20, zero, 0
	unlock r12
	bneq r5, zero, .LBB0_26
.LBB0_27:                               # %.thread8.thread53
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r5, zero, 5
	addli r8, r8, 1
	.loc	1 74 26                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:74:26
	addli r21, r21, 1
	.loc	1 87 20                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:87:20
	addli r7, r7, 1
	addli r20, zero, 8
	.loc	1 90 25                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:90:25
	addli r3, zero, 9
	xsignal r5, 0
	xsignal r3, 0
	bneq r21, r1, .LBB0_13
	j .LBB0_30
.LBB0_28:                               # %.thread8.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 25 is_stmt 0                # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:0:25
	addli r16, zero, 6
	.loc	1 90 25                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:90:25
	addli r8, r8, 1
	.loc	1 74 26 is_stmt 1               # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:74:26
	addli r21, r21, 1
	.loc	1 87 20                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:87:20
	addli r7, r7, 1
	bneq r21, r1, .LBB0_13
	j .LBB0_31
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 74 26                         # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:74:26
	bneq r2, r17, .LBB0_31
.LBB0_30:                               # %.thread55
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 10
	xsignal r3, 0
.LBB0_31:                               # %.thread52
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 102 66                        # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:102:66
	loadli.w r3,  -680(r30)                 # 4-byte Folded Reload
	addli r5, zero, 1920
	loadli.w r22,  -660(r30)                # 4-byte Folded Reload
	zext_int2long r[20:21], r13
	zext_int2long r[5:6], r5
	zext_int2long r[3:4], r3
	mod.s r11, r22, r17
	min.ul r[5:6], r[3:4], r[5:6]
	addli.d r[5:6], r[5:6], 128
	max.ul r[5:6], r[5:6], r[3:4]
	sub.sl r[3:4], r[5:6], r[3:4]
	slli r5, r11, 9
	lui r6, 388
	min.ul r[3:4], r[3:4], r[20:21]
	add.s r5, r5, r6
	beq r2, r19, .LBB0_5
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 107 18                        # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:107:18
	addli r6, zero, 5
	bneq r2, r6, .LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 10
	addli r3, zero, 0
	addli r20, zero, 8
	lui r6, 8
	xwait r4, 0
	addli r4, zero, 13
	xwait r4, 0
	lock zero, r26
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 127
	ew_cfg zero, r4, zero, 2
	ew_cfg r19, zero, zero, 3
.LBB0_34:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r15, r3
	addli r3, r3, 512
	dsmadd r4, r4, r5, 0
	bneq r3, r6, .LBB0_34
# %bb.35:                               # %.thread56
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 11
	unlock r26
	xsignal r3, 0
	addli r3, zero, 14
	j .LBB0_6
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 18 is_stmt 0                # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:0:18
	addli r20, zero, 8
	.loc	1 110 80 is_stmt 1              # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:110:80
	bneq r2, zero, .LBB0_7
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 80 is_stmt 0                # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:0:80
	loadli.w r5,  -700(r30)                 # 4-byte Folded Reload
	addli r11, zero, 1984
	.loc	1 110 80                        # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:110:80
	load.d r[23:24], -696(r30)              # 8-byte Folded Reload
	addli r20, zero, 18
	slli r3, r3, 2
	addli r4, zero, 4096
	zext_int2long r[11:12], r11
	sext_int2long r[5:6], r5
	sll.d r[20:21], r[23:24], r20
	load.d r[23:24], 24(r30)
	min.sl r[11:12], r[5:6], r[11:12]
	add.ul r[20:21], r[23:24], r[20:21]
	load.d r[23:24], -688(r30)              # 8-byte Folded Reload
	addli.d r[11:12], r[11:12], 64
	max.sl r[11:12], r[11:12], r[5:6]
	add.ul r[20:21], r[20:21], r[23:24]
	sub.sl r[5:6], r[11:12], r[5:6]
	zext_int2long r[11:12], r18
	min.sl r[5:6], r[5:6], r[11:12]
	addli r11, zero, 11
	xwait r11, 0
	addli r11, zero, 5
	lock zero, r11
	dma_cfg r19, zero, zero, 0
	dma_cfg zero, r19, zero, 1
	dma_cfg r21, zero, zero, 2
	dma_cfg r20, r15, r3, 3
	addli r3, zero, 512
	addli r20, zero, 8
	dma_cfg r4, r3, r5, 4
	addli r3, zero, 12
	dma_run zero
	unlock r11
	j .LBB0_6
.LBB0_38:                               # %._crit_edge
	.loc	1 23 0 is_stmt 1                # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:23:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:0:0
	addli r1, zero, 2
	.loc	1 23 0                          # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:23:0
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
	.loc	1 23 0 epilogue_begin           # cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py:23:0
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
.asciz	"cp2fbxopphsc45mkq4qbdim3ag6zydf2zsy2lrrcya5rzr4jj65r.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/p2" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
