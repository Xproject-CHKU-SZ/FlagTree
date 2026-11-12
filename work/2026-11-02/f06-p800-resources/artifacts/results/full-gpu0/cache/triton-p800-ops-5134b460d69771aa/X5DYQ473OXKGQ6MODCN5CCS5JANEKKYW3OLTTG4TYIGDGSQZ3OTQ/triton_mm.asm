	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/ab" "cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py"
	.loc	1 22 0                          # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1696
	addli r30, sp, 1632
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:73:26
	core_id r20
	loadli.w r12,  32(r30)
	loadli.w r25,  28(r30)
	xsignal_mode_cfg r1
	beq r20, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:0:26
	lui r1, 1048575
	ori r1, r1, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	addli r2, zero, 2
	uni_sram_cfg r1, r1
	lui r3, 1048575
	lock zero, r2
	ew_cfg r1, zero, zero, 16
	ori r1, r3, 4095
	addli r3, zero, 3
	unlock r2
	addli r2, zero, 11
	csr_set csr3, r1
	addli r1, zero, 5
	sync_group
	xsignal r2, 0
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r1, zero, 9
	addli r3, zero, 7
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -264(r30)
	storeli.w zero, -908(r30)
	storeli.w zero, -1172(r30)
	storeli.w zero, -1560(r30)
	mul.s r1, r2, r1
	addli r2, r4, 0
	fmac.s r2, r1, r3
	mul.s r3, r1, r3
	addli r2, r2, -1
	div.s r2, r2, r4
	load_param_i r4, 0
	mul.s r1, r2, r4
	fmac.s r2, r2, r4
	min.s r3, r2, r3
	ble.s r3, r1, .LBB0_40
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r3
	sext_int2long r[9:10], r1
	lui r1, 127
	addli r5, zero, 16383
	loadli.w r28,  -264(r30)
	loadli.w r26,  -908(r30)
	loadli.w r8,  -1172(r30)
	addli r15, zero, 256
	addli r11, zero, 8
	addli r17, zero, 5
	addli r23, zero, 2
	addli r14, zero, 4
	addli r16, zero, 1
	addli r18, zero, 96
	addli r19, zero, 65
	addli r21, zero, 7
	addli r22, zero, 6
	addli r24, zero, 3
	addli r27, zero, 128
	storeli.w zero, -1572(r30)              # 4-byte Folded Spill
	lui r4, 1048448
	store.d r[2:3], -1600(r30)              # 8-byte Folded Spill
	loadli.w r3,  -1560(r30)
	ori r1, r1, 4095
	store.d r[4:5], -1624(r30)              # 8-byte Folded Spill
	storeli.w r1, -1628(r30)                # 4-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:73:26
	addli r1, zero, 10
	loadli.w r13,  28(r30)
	.loc	1 101 67 is_stmt 1              # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:101:67
	addli r26, r9, 1
	loadli.w r12,  32(r30)
	addli r3, r17, 1
	addli r28, r15, 1
	addli r15, zero, 256
	addli r17, zero, 5
	addli r23, zero, 2
	.loc	1 73 26                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:73:26
	xsignal r1, 0
	load.d r[9:10], -1584(r30)              # 8-byte Folded Reload
.LBB0_6:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:0:26
	addli r25, r13, 0
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r18, zero, 96
.LBB0_8:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[1:2], -1600(r30)               # 8-byte Folded Reload
	addli.d r[9:10], r[9:10], 1
	setlt.sl r1, r[9:10], r[1:2]
	loadli.w r2,  -1572(r30)                # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -1572(r30)                # 4-byte Folded Spill
	beq r1, zero, .LBB0_40
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_19 Depth 2
	div.s r1, r9, r12
	.loc	1 54 30 is_stmt 1               # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:54:30
	addli r2, zero, 16
	addli r13, zero, 32
	div.s r5, r1, r25
	.loc	1 53 22                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:53:22
	div.s r6, r5, r15
	.loc	1 54 41                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:54:41
	slli r1, r6, 3
	.loc	1 54 30 is_stmt 0               # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:54:30
	sub.s r2, r2, r1
	.loc	1 54 50                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:54:50
	min.s r7, r2, r11
	.loc	1 55 40 is_stmt 1               # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:55:40
	mod.s r2, r5, r7
	.loc	1 55 34 is_stmt 0               # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:55:34
	add.s r4, r1, r2
	.loc	1 95 15 is_stmt 1               # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:95:15
	zext_int2long r[1:2], r4
	store.d r[1:2], -1592(r30)              # 8-byte Folded Spill
	addli r1, zero, 480
	zext_int2long r[1:2], r1
	.loc	1 73 26                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:73:26
	store.d r[1:2], -1568(r30)              # 8-byte Folded Spill
	bneq r20, r14, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, zero, 11
	xwait r1, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:0:26
	beq r20, r16, .LBB0_30
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r20, r23, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r4, zero, 0
	addli r5, zero, 32
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:89:25
	add.s r1, r8, r4
	add.s r2, r3, r4
	xwait r23, 0
	xwait r17, 0
	lock zero, zero
	.loc	1 73 26                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:73:26
	addli r4, r4, 1
	.loc	1 89 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:89:25
	ds_cfg r24, zero, 0
	.loc	1 81 20                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:81:20
	mod.s r1, r1, r19
	.loc	1 89 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:89:25
	mod.s r2, r2, r18
	ds_cfg r27, zero, 1
	ds_cfg r27, zero, 14
	ds_cfg r5, zero, 13
	.loc	1 81 20                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:81:20
	slli r1, r1, 13
	.loc	1 89 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:89:25
	slli r2, r2, 13
	.loc	1 81 20                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:81:20
	addli r1, r1, 8192
	.loc	1 89 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:89:25
	shuffle_batch r2, r1, r27, 1
	unlock zero
	xsignal r24, 0
	xsignal r14, 0
	bneq r4, r11, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:73:26
	addli r26, r26, 8
	addli r28, r28, 8
	.loc	1 89 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:89:25
	add.s r3, r3, r4
	add.s r8, r8, r4
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:0:25
	slli r1, r6, 8
	addli r2, zero, 2
	slli r4, r4, 5
	store.d r[9:10], -1584(r30)             # 8-byte Folded Spill
	addli r18, zero, 96
	addli r23, zero, 0
	addli r12, zero, 5
	addli r10, zero, 0
	sub.s r1, r5, r1
	loadli.w r5,  -1572(r30)                # 4-byte Folded Reload
	storeli.w r4, -1612(r30)                # 4-byte Folded Spill
	div.s r1, r1, r7
	mod.s r2, r5, r2
	zext_int2long r[5:6], r1
	slli r1, r1, 5
	sll.d r[4:5], r[5:6], r17
	.loc	1 73 26 is_stmt 1               # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:73:26
	storeli.w r1, -1616(r30)                # 4-byte Folded Spill
	sll.d r[5:6], r[4:5], r16
	slli r4, r2, 12
	load.d r[1:2], 8(r30)
	store.d r[5:6], -1608(r30)              # 8-byte Folded Spill
	add.ul r[5:6], r[1:2], r[5:6]
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:89:25
	addli r1, zero, 9
	xwait r22, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 64
	ds_cfg r24, zero, 0
	ds_cfg r1, zero, 1
	ds_cfg r27, zero, 14
	ds_cfg r13, zero, 13
	shuffle_coa r7, r25, r27, 2
	unlock zero
	xsignal r21, 0
	xsignal r11, 0
	.loc	1 73 26                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:73:26
	addli r23, r23, 1
	beq r23, r11, .LBB0_29
.LBB0_18:                               # %.split.backedge
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:89:25
	addli r10, r10, 1
.LBB0_19:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r15, r28, r10
	add.s r9, r26, r10
	addli r2, zero, 160
	add.s r17, r3, r10
	.loc	1 86 20                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:86:20
	mod.s r1, r15, r19
	.loc	1 89 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:89:25
	mod.s r2, r9, r2
	slli r7, r2, 13
	.loc	1 86 20                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:86:20
	slli r1, r1, 14
	lui r2, 132
	add.s r25, r1, r2
	beq r20, r21, .LBB0_17
# %bb.20:                               # %.split
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 20 is_stmt 0                # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:0:20
	bneq r20, r22, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 86 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:86:25
	zext_int2long r[1:2], r23
	.loc	1 86 20                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:86:20
	addli r7, zero, 18
	xwait r21, 0
	lock zero, r14
	dma_cfg r16, r16, zero, 0
	sll.d r[1:2], r[1:2], r7
	addli r7, zero, 64
	add.ul r[1:2], r[5:6], r[1:2]
	dma_cfg zero, r2, zero, 2
	dma_cfg r25, r1, r7, 3
	addli r1, zero, 2048
	dma_cfg r27, r1, r27, 4
	dma_run zero
	unlock r14
	xsignal r22, 0
	.loc	1 73 26 is_stmt 1               # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:73:26
	addli r23, r23, 1
	bneq r23, r11, .LBB0_18
	j .LBB0_29
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:89:25
	bneq r20, r14, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 0 is_stmt 0                 # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:0:0
	mod.s r1, r17, r18
	.loc	1 89 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:89:25
	xwait r14, 0
	xwait r11, 0
	lock zero, r16
	mm_cfg r13, r27, r13, 0
	mm_cfg r14, r16, r16, 2
	.loc	1 0 0                           # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:0:0
	slli r1, r1, 13
	.loc	1 89 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:89:25
	beq r10, zero, .LBB0_26
# %bb.24:                               # %.preheader8
                                        #   in Loop: Header=BB0_19 Depth=2
	mm_acc r4, r1, r7, 5
	j .LBB0_27
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 73 26 is_stmt 1               # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:73:26
	addli r23, r23, 1
	bneq r23, r11, .LBB0_18
	j .LBB0_35
.LBB0_26:                               # %.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:89:25
	mm r4, r1, r7, 5
.LBB0_27:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 73 26                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:73:26
	addli r23, r23, 1
	.loc	1 89 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:89:25
	addli r1, zero, 9
	unlock r16
	xsignal r12, 0
	xsignal r1, 0
	.loc	1 73 26                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:73:26
	bneq r23, r11, .LBB0_18
# %bb.28:                               # %.split17.thread94
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:86:20
	addli r8, r8, 8
	j .LBB0_5
.LBB0_29:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r8, r8, 8
	.loc	1 73 26                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:73:26
	beq r20, r14, .LBB0_5
	j .LBB0_36
.LBB0_30:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:0:26
	load.d r[4:5], -1592(r30)               # 8-byte Folded Reload
	addli r1, zero, 15
	loadli.w r25,  -1628(r30)               # 4-byte Folded Reload
	addli r6, zero, 0
	store.d r[9:10], -1584(r30)             # 8-byte Folded Spill
	sll.d r[4:5], r[4:5], r1
	load.d r[1:2], -1624(r30)               # 8-byte Folded Reload
	and.d r[1:2], r[4:5], r[1:2]
	j .LBB0_32
.LBB0_31:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	addli r7, zero, 1024
	.loc	1 81 25 is_stmt 1               # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:81:25
	sub.sl r[9:10], r[17:18], r[9:10]
	.loc	1 81 20 is_stmt 0               # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:81:20
	xwait r24, 0
	lock zero, r14
	dma_cfg r16, r16, zero, 0
	zext_int2long r[12:13], r7
	.loc	1 0 0                           # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:0:0
	add.s r7, r8, r6
	.loc	1 73 26 is_stmt 1               # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:73:26
	addli r6, r6, 1
	.loc	1 81 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:81:25
	div.sl r[9:10], r[9:10], r[12:13]
	.loc	1 81 20 is_stmt 0               # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:81:20
	sll.d r[12:13], r[17:18], r16
	load.d r[17:18], 0(r30)
	.loc	1 81 0                          # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:81:0
	mod.s r7, r7, r19
	.loc	1 81 20                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:81:20
	add.ul r[12:13], r[17:18], r[12:13]
	dma_cfg zero, r13, zero, 2
	.loc	1 81 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:81:25
	load.d r[17:18], -1568(r30)             # 8-byte Folded Reload
	.loc	1 81 0                          # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:81:0
	slli r7, r7, 13
	addli r7, r7, 8192
	.loc	1 81 20                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:81:20
	dma_cfg r7, r12, r15, 3
	addli r7, zero, 2048
	.loc	1 81 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:81:25
	min.sl r[17:18], r[9:10], r[17:18]
	sub.sl r[9:10], r[17:18], r[9:10]
	.loc	1 81 20                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:81:20
	addli r9, r9, 32
	dma_cfg r15, r7, r9, 4
	dma_run zero
	unlock r14
	xsignal r23, 0
	.loc	1 73 26 is_stmt 1               # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:73:26
	beq r6, r11, .LBB0_34
.LBB0_32:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:86:25
	zext_int2long r[9:10], r6
	sll.d r[9:10], r[9:10], r21
	.loc	1 81 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:81:25
	add.ul r[17:18], r[9:10], r[4:5]
	zext_int2long r[9:10], r25
	setlt.ul r7, r[9:10], r[17:18]
	addli.d r[9:10], r[1:2], 0
	bneq r7, zero, .LBB0_31
# %bb.33:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 0 25 is_stmt 0                # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:0:25
	zext_int2long r[9:10], zero
	j .LBB0_31
.LBB0_34:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r13,  28(r30)
	loadli.w r12,  32(r30)
	load.d r[9:10], -1584(r30)              # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:73:26
	addli r3, r3, 8
	addli r26, r26, 8
	addli r28, r28, 8
	.loc	1 89 25                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:89:25
	add.s r8, r8, r6
	j .LBB0_38
.LBB0_35:                               # %.split17.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:86:20
	addli r8, r8, 8
.LBB0_36:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:0:20
	loadli.w r12,  32(r30)
	.loc	1 101 67 is_stmt 1              # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:101:67
	addli r3, r17, 1
	addli r26, r9, 1
	addli r28, r15, 1
	addli r23, zero, 2
	addli r7, zero, 32
	beq r20, zero, .LBB0_39
# %bb.37:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:0:67
	loadli.w r13,  28(r30)
	load.d r[9:10], -1584(r30)              # 8-byte Folded Reload
	addli r15, zero, 256
.LBB0_38:                               # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r17, zero, 5
	j .LBB0_6
.LBB0_39:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:101:67
	loadli.w r1,  -1616(r30)                # 4-byte Folded Reload
	addli r5, zero, 992
	loadli.w r9,  -1612(r30)                # 4-byte Folded Reload
	load.d r[12:13], -1568(r30)             # 8-byte Folded Reload
	load.d r[17:18], -1592(r30)             # 8-byte Folded Reload
	addli r15, zero, 256
	zext_int2long r[5:6], r5
	zext_int2long r[1:2], r1
	sext_int2long r[9:10], r9
	min.ul r[5:6], r[1:2], r[5:6]
	min.sl r[12:13], r[9:10], r[12:13]
	addli.d r[5:6], r[5:6], 32
	addli.d r[12:13], r[12:13], 32
	max.ul r[5:6], r[5:6], r[1:2]
	max.sl r[12:13], r[12:13], r[9:10]
	sub.sl r[1:2], r[5:6], r[1:2]
	zext_int2long r[5:6], r7
	addli r7, zero, 16
	sub.sl r[9:10], r[12:13], r[9:10]
	load.d r[12:13], 16(r30)
	sll.d r[17:18], r[17:18], r7
	min.ul r[1:2], r[1:2], r[5:6]
	min.sl r[5:6], r[9:10], r[5:6]
	load.d r[9:10], -1608(r30)              # 8-byte Folded Reload
	addli r7, zero, 10
	add.ul r[12:13], r[12:13], r[17:18]
	addli r17, zero, 5
	xwait r7, 0
	slli r1, r1, 2
	lock zero, r17
	add.ul r[9:10], r[12:13], r[9:10]
	loadli.w r13,  28(r30)
	loadli.w r12,  32(r30)
	dma_cfg r16, zero, zero, 0
	dma_cfg zero, r16, zero, 1
	dma_cfg r10, zero, zero, 2
	addli r25, r13, 0
	dma_cfg r9, r4, r1, 3
	addli r1, zero, 2048
	dma_cfg r1, r27, r5, 4
	addli r1, zero, 11
	dma_run zero
	unlock r17
	xsignal r1, 0
	load.d r[9:10], -1584(r30)              # 8-byte Folded Reload
	j .LBB0_7
.LBB0_40:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:22:0
	xsignal zero, 0
	bneq r20, zero, .LBB0_42
# %bb.41:
	.loc	1 0 0 is_stmt 0                 # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:22:0
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
.LBB0_42:
	.loc	1 22 0 epilogue_begin           # cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py:22:0
	addli sp, sp, 1632
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
	.long	1696                            # 0x6a0
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
.asciz	"cablfmw26f5k5zp5bh2xpecv6tuj7f254kidc4ed76ddwbu5zyuu.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/ab" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
