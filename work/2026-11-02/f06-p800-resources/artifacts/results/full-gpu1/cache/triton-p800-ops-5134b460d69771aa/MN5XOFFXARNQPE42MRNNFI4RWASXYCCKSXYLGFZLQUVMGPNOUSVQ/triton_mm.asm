	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/ra" "cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py"
	.loc	1 22 0                          # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -744
	addli r30, sp, 680
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:73:26
	core_id r2
	loadli.w r21,  32(r30)
	loadli.w r22,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -128(r30)
	storeli.w zero, -292(r30)
	storeli.w zero, -416(r30)
	storeli.w zero, -612(r30)
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
	loadli.w r6,  -128(r30)
	loadli.w r7,  -292(r30)
	loadli.w r8,  -416(r30)
	loadli.w r24,  -612(r30)
	sext_int2long r[26:27], r1
	addli r20, zero, 128
	addli r12, zero, 32
	addli r10, zero, 8
	addli r14, zero, 7
	addli r17, zero, 3
	addli r16, zero, 4
	addli r18, zero, 2
	addli r13, zero, 40
	addli r11, zero, 31
	lui r1, 144
	addli r23, zero, 6
	addli r25, zero, 64
	addli r19, zero, 30
	lui r15, 24
	storeli.w zero, -628(r30)               # 4-byte Folded Spill
	store.d r[3:4], -648(r30)               # 8-byte Folded Spill
	lui r3, 15
	ori r5, r3, 4095
	lui r3, 1023
	lui r4, 1047552
	ori r28, r3, 4095
	store.d r[4:5], -680(r30)               # 8-byte Folded Spill
	storeli.w r28, -668(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split19.us.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:86:20
	addli r8, r8, 32
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:73:26
	addli r3, zero, 10
	addli.d r[26:27], r[21:22], 0
	loadli.w r21,  32(r30)
	loadli.w r22,  28(r30)
	addli r17, zero, 3
	addli r19, zero, 30
	xsignal r3, 0
	loadli.w r28,  -668(r30)                # 4-byte Folded Reload
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:0:26
	load.d r[3:4], -648(r30)                # 8-byte Folded Reload
	addli.d r[26:27], r[26:27], 1
	addli r24, r15, 0
	lui r15, 24
	setlt.sl r3, r[26:27], r[3:4]
	loadli.w r4,  -628(r30)                 # 4-byte Folded Reload
	addli r4, r4, 1
	storeli.w r4, -628(r30)                 # 4-byte Folded Spill
	beq r3, zero, .LBB0_38
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	div.s r3, r26, r21
	div.s r9, r3, r22
	.loc	1 53 22 is_stmt 1               # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:53:22
	div.s r3, r9, r20
	.loc	1 54 41                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:54:41
	slli r5, r3, 3
	.loc	1 54 30 is_stmt 0               # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:54:30
	sub.s r4, r12, r5
	.loc	1 54 50                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:54:50
	min.s r4, r4, r10
	.loc	1 55 40 is_stmt 1               # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:55:40
	mod.s r10, r9, r4
	.loc	1 55 34 is_stmt 0               # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:55:34
	add.s r5, r5, r10
	addli r10, zero, 1984
	.loc	1 95 15 is_stmt 1               # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:95:15
	zext_int2long r[21:22], r5
	store.d r[21:22], -640(r30)             # 8-byte Folded Spill
	zext_int2long r[21:22], r10
	.loc	1 73 26                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:73:26
	store.d r[21:22], -624(r30)             # 8-byte Folded Spill
	bneq r2, r16, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r10, zero, 11
	xwait r10, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:0:26
	addli r10, zero, 1
	beq r2, r10, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r18, .LBB0_15
# %bb.12:                               # %.thread.us25.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 0
	addli r9, zero, 48
	addli r10, zero, 5
.LBB0_13:                               # %.thread.us25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:89:25
	add.s r4, r8, r3
	add.s r5, r24, r3
	xwait r18, 0
	xwait r10, 0
	lock zero, zero
	.loc	1 73 26                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:89:25
	ds_cfg r18, zero, 0
	.loc	1 81 20                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:81:20
	mod.s r4, r4, r19
	.loc	1 89 25                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:89:25
	mod.s r5, r5, r9
	ds_cfg r25, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r25, zero, 13
	.loc	1 81 20                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:81:20
	slli r4, r4, 14
	.loc	1 89 25                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:89:25
	slli r5, r5, 14
	.loc	1 81 20                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:81:20
	add.s r4, r4, r15
	.loc	1 89 25                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:89:25
	shuffle_batch r5, r4, r25, 1
	unlock zero
	xsignal r17, 0
	xsignal r16, 0
	.loc	1 73 26                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:73:26
	bneq r3, r12, .LBB0_13
# %bb.14:                               # %.split19.us.loopexit56
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:0:26
	loadli.w r21,  32(r30)
	loadli.w r22,  28(r30)
	.loc	1 73 26                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:73:26
	addli r7, r7, 32
	addli r6, r6, 32
	.loc	1 89 25 is_stmt 1               # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:89:25
	add.s r15, r24, r3
	add.s r8, r8, r3
	addli r10, zero, 8
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:0:25
	slli r3, r3, 7
	slli r5, r5, 6
	addli.d r[21:22], r[26:27], 0
	addli r28, zero, 0
	addli r19, zero, 0
	sub.s r3, r9, r3
	storeli.w r5, -660(r30)                 # 4-byte Folded Spill
	div.s r3, r3, r4
	loadli.w r4,  -628(r30)                 # 4-byte Folded Reload
	mod.s r4, r4, r17
	zext_int2long r[9:10], r3
	slli r3, r3, 7
	sll.d r[9:10], r[9:10], r14
	.loc	1 73 26 is_stmt 1               # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:73:26
	storeli.w r3, -664(r30)                 # 4-byte Folded Spill
	slli r17, r4, 15
	load.d r[3:4], 8(r30)
	sll.d r[9:10], r[9:10], r18
	store.d r[9:10], -656(r30)              # 8-byte Folded Spill
	add.ul r[26:27], r[3:4], r[9:10]
	addli r10, zero, 8
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:89:25
	addli r3, zero, 9
	xwait r23, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r18, zero, 0
	ds_cfg r20, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r20, zero, 13
	shuffle_coa r5, r9, r25, 2
	unlock zero
	xsignal r14, 0
	xsignal r10, 0
	.loc	1 73 26                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:73:26
	addli r28, r28, 1
	bneq r28, r12, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	.loc	1 86 20                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:86:20
	mod.s r3, r6, r11
	.loc	1 89 25                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:89:25
	mod.s r4, r7, r13
	addli r15, r24, 1
	addli r7, r7, 1
	.loc	1 86 20                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:86:20
	addli r6, r6, 1
	slli r3, r3, 15
	.loc	1 89 25                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:89:25
	slli r5, r4, 15
	.loc	1 86 20                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:86:20
	add.s r9, r3, r1
	beq r2, r14, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:0:20
	bneq r2, r23, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 25                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:86:25
	zext_int2long r[3:4], r28
	.loc	1 86 20                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:86:20
	addli r5, zero, 19
	xwait r14, 0
	lock zero, r16
	dma_cfg zero, zero, zero, 0
	sll.d r[3:4], r[3:4], r5
	addli r5, zero, 512
	add.ul r[3:4], r[26:27], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r9, r3, r5, 3
	addli r3, zero, 8192
	dma_cfg r5, r3, r25, 4
	dma_run zero
	unlock r16
	xsignal r23, 0
	.loc	1 73 26 is_stmt 1               # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:73:26
	addli r28, r28, 1
	bneq r28, r12, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:89:25
	bneq r2, r16, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 0 is_stmt 0                 # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:0:0
	addli r3, zero, 48
	.loc	1 89 25                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:89:25
	xwait r16, 0
	xwait r10, 0
	addli r10, zero, 1
	addli r4, zero, 0
	.loc	1 0 0                           # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:0:0
	mod.s r3, r24, r3
	slli r9, r3, 14
	addli r3, zero, 1
	.loc	1 89 25                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:89:25
	beq r19, zero, .LBB0_23
.LBB0_22:                               # %.preheader8
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r20, r4, 14
	slli r4, r4, 8
	lock zero, r10
	mm_cfg r25, r25, r25, 0
	or r20, r20, r5
	or r4, r4, r17
	mm_cfg r16, r16, r10, 2
	mm_acc r4, r9, r20, 8
	andi r20, r3, 1
	addli r4, zero, 1
	addli r3, zero, 0
	unlock r10
	bneq r20, zero, .LBB0_22
	j .LBB0_24
.LBB0_23:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r20, r4, 14
	slli r4, r4, 8
	lock zero, r10
	mm_cfg r25, r25, r25, 0
	or r20, r20, r5
	or r4, r4, r17
	mm_cfg r16, r16, r10, 2
	mm r4, r9, r20, 8
	andi r20, r3, 1
	addli r4, zero, 1
	addli r3, zero, 0
	unlock r10
	bneq r20, zero, .LBB0_23
.LBB0_24:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r3, zero, 5
	.loc	1 73 26 is_stmt 1               # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:73:26
	addli r28, r28, 1
	addli r20, zero, 128
	addli r10, zero, 8
	.loc	1 89 25                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:89:25
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	bneq r28, r12, .LBB0_26
	j .LBB0_5
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:73:26
	addli r28, r28, 1
	beq r28, r12, .LBB0_33
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:89:25
	addli r19, r19, 1
	addli r24, r15, 0
	j .LBB0_17
.LBB0_27:                               # %.split19.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:86:20
	addli r8, r8, 32
	.loc	1 73 26                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:73:26
	beq r2, r16, .LBB0_6
	j .LBB0_34
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:0:26
	load.d r[4:5], -640(r30)                # 8-byte Folded Reload
	addli r3, zero, 17
	store.d r[26:27], -656(r30)             # 8-byte Folded Spill
	lui r11, 24
	addli r13, zero, 30
	sll.d r[26:27], r[4:5], r3
	load.d r[3:4], -680(r30)                # 8-byte Folded Reload
	addli r5, zero, 0
	and.d r[19:20], r[26:27], r[3:4]
	j .LBB0_30
.LBB0_29:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	addli r15, zero, 2048
	.loc	1 81 25 is_stmt 1               # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:81:25
	sub.sl r[9:10], r[3:4], r[9:10]
	.loc	1 81 20 is_stmt 0               # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:81:20
	sll.d r[3:4], r[3:4], r18
	xwait r17, 0
	lock zero, r16
	dma_cfg zero, zero, zero, 0
	zext_int2long r[21:22], r15
	.loc	1 0 0                           # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:0:0
	add.s r15, r8, r5
	.loc	1 73 26 is_stmt 1               # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:73:26
	addli r5, r5, 1
	.loc	1 81 25                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:81:25
	div.sl r[9:10], r[9:10], r[21:22]
	.loc	1 81 20 is_stmt 0               # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:81:20
	load.d r[21:22], 0(r30)
	.loc	1 81 0                          # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:81:0
	mod.s r15, r15, r13
	.loc	1 81 20                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:81:20
	add.ul r[3:4], r[21:22], r[3:4]
	dma_cfg zero, r4, zero, 2
	.loc	1 81 25                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:81:25
	load.d r[21:22], -624(r30)              # 8-byte Folded Reload
	.loc	1 81 0                          # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:81:0
	slli r15, r15, 14
	add.s r15, r15, r11
	.loc	1 81 25                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:81:25
	min.sl r[21:22], r[9:10], r[21:22]
	sub.sl r[9:10], r[21:22], r[9:10]
	.loc	1 81 20                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:81:20
	addli r9, r9, 64
	addli r10, zero, 256
	dma_cfg r15, r3, r10, 3
	addli r3, zero, 8192
	dma_cfg r10, r3, r9, 4
	dma_run zero
	unlock r16
	xsignal r18, 0
	.loc	1 73 26 is_stmt 1               # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:73:26
	beq r5, r12, .LBB0_32
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:86:25
	zext_int2long r[3:4], r5
	zext_int2long r[9:10], r28
	sll.d r[3:4], r[3:4], r23
	.loc	1 81 25                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:81:25
	add.ul r[3:4], r[3:4], r[26:27]
	setlt.ul r15, r[9:10], r[3:4]
	addli.d r[9:10], r[19:20], 0
	bneq r15, zero, .LBB0_29
# %bb.31:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	.loc	1 0 25 is_stmt 0                # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:0:25
	zext_int2long r[9:10], zero
	j .LBB0_29
.LBB0_32:                               # %.split19.us.loopexit55
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r21,  32(r30)
	loadli.w r22,  28(r30)
	load.d r[26:27], -656(r30)              # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:73:26
	addli r15, r24, 32
	addli r7, r7, 32
	addli r6, r6, 32
	.loc	1 89 25                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:89:25
	add.s r8, r8, r5
	addli r20, zero, 128
	addli r10, zero, 8
	addli r19, zero, 30
	addli r13, zero, 40
	addli r11, zero, 31
	j .LBB0_7
.LBB0_33:                               # %.split19.us.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:86:20
	addli r8, r8, 32
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:0:20
	loadli.w r28,  -668(r30)                # 4-byte Folded Reload
	addli.d r[26:27], r[21:22], 0
	addli r19, zero, 30
	beq r2, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r21,  32(r30)
	loadli.w r22,  28(r30)
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67 is_stmt 1              # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:101:67
	loadli.w r3,  -664(r30)                 # 4-byte Folded Reload
	addli r5, zero, 1920
	loadli.w r19,  -660(r30)                # 4-byte Folded Reload
	load.d r[21:22], -624(r30)              # 8-byte Folded Reload
	addli r24, zero, 1
	zext_int2long r[9:10], r5
	addli r5, zero, 128
	zext_int2long r[3:4], r3
	sext_int2long r[19:20], r19
	min.ul r[9:10], r[3:4], r[9:10]
	min.sl r[21:22], r[19:20], r[21:22]
	addli.d r[9:10], r[9:10], 128
	addli.d r[21:22], r[21:22], 64
	max.ul r[9:10], r[9:10], r[3:4]
	max.sl r[21:22], r[21:22], r[19:20]
	sub.sl r[3:4], r[9:10], r[3:4]
	zext_int2long r[9:10], r5
	addli r5, zero, 19
	min.ul r[3:4], r[3:4], r[9:10]
	sub.sl r[9:10], r[21:22], r[19:20]
	zext_int2long r[21:22], r25
	store.d r[3:4], -624(r30)               # 8-byte Folded Spill
	load.d r[3:4], -640(r30)                # 8-byte Folded Reload
	min.sl r[9:10], r[9:10], r[21:22]
	loadli.w r22,  28(r30)
	loadli.w r21,  32(r30)
	sll.d r[19:20], r[3:4], r5
	load.d r[3:4], 16(r30)
	addli r5, zero, 10
	add.ul r[19:20], r[3:4], r[19:20]
	load.d r[3:4], -656(r30)                # 8-byte Folded Reload
	xwait r5, 0
	addli r5, zero, 5
	lock zero, r5
	dma_cfg zero, zero, zero, 0
	add.ul r[19:20], r[19:20], r[3:4]
	dma_cfg zero, r24, zero, 1
	load.d r[3:4], -624(r30)                # 8-byte Folded Reload
	dma_cfg r20, zero, zero, 2
	slli r3, r3, 2
	addli r4, zero, 8192
	dma_cfg r19, r17, r3, 3
	addli r3, zero, 512
	addli r19, zero, 30
	addli r20, zero, 128
	dma_cfg r4, r3, r9, 4
	addli r10, zero, 8
	addli r3, zero, 11
	dma_run zero
	unlock r5
	xsignal r3, 0
.LBB0_37:                               # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:0:67
	addli r17, zero, 3
	j .LBB0_7
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py:22:0
	addli sp, sp, 680
	mfence { lm, sm, gm }
	exit
.Ltmp1:
.Lfunc_end0:
	.size	triton_mm, .Lfunc_end0-triton_mm
	.cfi_endproc
                                        # -- End function
	.type	XPU_KERNEL_PARAM_SIZE_triton_mm,@object # @XPU_KERNEL_PARAM_SIZE_triton_mm
	.section	.XPU.KERNEL_PARAM_SIZE.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE_triton_mm:
	.long	36                              # 0x24
	.size	XPU_KERNEL_PARAM_SIZE_triton_mm, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_mm,@object # @XPU_KERNEL_STACK_SIZE_triton_mm
	.section	.XPU.KERNEL_STACK_SIZE.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_mm:
	.long	744                             # 0x2e8
	.size	XPU_KERNEL_STACK_SIZE_triton_mm, 4

	.type	XPU_KERNEL_DYNAMIC_LM_triton_mm,@object # @XPU_KERNEL_DYNAMIC_LM_triton_mm
	.section	.XPU.KERNEL_DYNAMIC_LM.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM_triton_mm:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM_triton_mm, 4

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
.asciz	"cracilsz2bkgmpzy5pqgdutkwbhmh35dqqo3bbt7v2jn5l62sx6p.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/ra" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
