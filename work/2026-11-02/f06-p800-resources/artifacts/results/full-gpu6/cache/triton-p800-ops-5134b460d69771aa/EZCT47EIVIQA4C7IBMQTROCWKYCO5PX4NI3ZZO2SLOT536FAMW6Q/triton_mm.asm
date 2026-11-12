	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/cs" "ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py"
	.loc	1 22 0                          # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -480
	addli r30, sp, 416
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:73:26
	core_id r2
	loadli.w r22,  32(r30)
	loadli.w r23,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:0:26
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -88(r30)
	storeli.w zero, -252(r30)
	storeli.w zero, -344(r30)
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
	sext_int2long r[13:14], r1
	lui r1, 31
	loadli.w r7,  -88(r30)
	loadli.w r8,  -252(r30)
	loadli.w r9,  -344(r30)
	addli r16, zero, 0
	addli r12, zero, 128
	addli r21, zero, 8
	addli r15, zero, 7
	addli r18, zero, 3
	addli r17, zero, 4
	addli r19, zero, 2
	addli r20, zero, 24
	addli r24, zero, 6
	addli r26, zero, 64
	addli r27, zero, 32
	addli r11, zero, 5
	addli r25, zero, 0
	store.d r[3:4], -392(r30)               # 8-byte Folded Spill
	ori r5, r1, 4095
	lui r1, 1023
	lui r4, 1047552
	ori r1, r1, 4095
	store.d r[4:5], -416(r30)               # 8-byte Folded Spill
	storeli.w r1, -356(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split19.us.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:86:20
	addli r9, r9, 32
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:73:26
	addli r4, zero, 10
	loadli.w r22,  32(r30)
	loadli.w r23,  28(r30)
	addli r18, zero, 3
	addli r20, zero, 24
	addli r11, zero, 5
	xsignal r4, 0
	loadli.w r16,  -372(r30)                # 4-byte Folded Reload
	load.d r[13:14], -368(r30)              # 8-byte Folded Reload
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:0:26
	load.d r[4:5], -392(r30)                # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 1
	addli r16, r16, 1
	addli r25, r1, 0
	setlt.sl r4, r[13:14], r[4:5]
	beq r4, zero, .LBB0_37
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	div.s r1, r13, r22
	.loc	1 54 30 is_stmt 1               # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:54:30
	addli r6, zero, 16
	lui r28, 48
	addli r3, zero, 22
	div.s r4, r1, r23
	.loc	1 53 22                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:53:22
	div.s r5, r4, r12
	.loc	1 54 41                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:54:41
	slli r1, r5, 3
	.loc	1 54 30 is_stmt 0               # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:54:30
	sub.s r6, r6, r1
	.loc	1 54 50                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:54:50
	min.s r6, r6, r21
	.loc	1 55 40 is_stmt 1               # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:55:40
	mod.s r10, r4, r6
	.loc	1 55 34 is_stmt 0               # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:55:34
	add.s r1, r1, r10
	addli r10, zero, 1920
	.loc	1 95 15 is_stmt 1               # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:95:15
	zext_int2long r[22:23], r1
	store.d r[22:23], -384(r30)             # 8-byte Folded Spill
	zext_int2long r[22:23], r10
	.loc	1 73 26                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:73:26
	store.d r[22:23], -352(r30)             # 8-byte Folded Spill
	bneq r2, r17, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r10, zero, 11
	xwait r10, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:0:26
	addli r10, zero, 1
	beq r2, r10, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r19, .LBB0_15
# %bb.12:                               # %.thread.us25.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 0
	addli r3, zero, 22
	lui r6, 48
.LBB0_13:                               # %.thread.us25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:89:25
	add.s r1, r9, r4
	add.s r5, r25, r4
	xwait r19, 0
	xwait r11, 0
	lock zero, zero
	.loc	1 73 26                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:73:26
	addli r4, r4, 1
	.loc	1 89 25                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:89:25
	ds_cfg r19, zero, 0
	.loc	1 81 20                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:81:20
	mod.s r1, r1, r3
	.loc	1 89 25                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:89:25
	mod.s r5, r5, r20
	ds_cfg r26, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r12, zero, 13
	.loc	1 81 20                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:81:20
	slli r1, r1, 15
	.loc	1 89 25                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:89:25
	slli r5, r5, 15
	.loc	1 81 20                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:81:20
	add.s r1, r1, r6
	.loc	1 89 25                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:89:25
	shuffle_batch r5, r1, r26, 1
	unlock zero
	xsignal r18, 0
	xsignal r17, 0
	.loc	1 73 26                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:73:26
	bneq r4, r27, .LBB0_13
# %bb.14:                               # %.split19.us.loopexit56
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:0:26
	loadli.w r22,  32(r30)
	loadli.w r23,  28(r30)
	.loc	1 73 26                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:73:26
	addli r8, r8, 32
	addli r7, r7, 32
	.loc	1 89 25 is_stmt 1               # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:89:25
	add.s r1, r25, r4
	add.s r9, r9, r4
	.loc	1 101 67                        # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:101:67
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:0:67
	slli r5, r5, 7
	slli r1, r1, 7
	storeli.w r16, -372(r30)                # 4-byte Folded Spill
	store.d r[13:14], -368(r30)             # 8-byte Folded Spill
	addli r23, zero, 5
	addli r22, zero, 24
	addli r20, zero, 0
	addli r3, zero, 21
	lui r28, 224
	sub.s r4, r4, r5
	mod.s r5, r16, r18
	storeli.w r1, -404(r30)                 # 4-byte Folded Spill
	addli r18, zero, 0
	div.s r4, r4, r6
	slli r16, r5, 16
	zext_int2long r[10:11], r4
	slli r1, r4, 7
	.loc	1 73 26 is_stmt 1               # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:73:26
	load.d r[4:5], 8(r30)
	sll.d r[10:11], r[10:11], r15
	storeli.w r1, -408(r30)                 # 4-byte Folded Spill
	sll.d r[13:14], r[10:11], r19
	addli r11, zero, 40
	store.d r[13:14], -400(r30)             # 8-byte Folded Spill
	add.ul r[13:14], r[4:5], r[13:14]
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:89:25
	addli r5, zero, 9
	xwait r24, 0
	xwait r5, 0
	lock zero, zero
	ds_cfg r19, zero, 0
	ds_cfg r12, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r12, zero, 13
	shuffle_coa r4, r10, r26, 2
	unlock zero
	xsignal r15, 0
	xsignal r21, 0
	.loc	1 73 26                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:73:26
	addli r20, r20, 1
	bneq r20, r27, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	.loc	1 86 20                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:86:20
	mod.s r4, r7, r3
	.loc	1 89 25                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:89:25
	mod.s r5, r8, r11
	addli r1, r25, 1
	addli r8, r8, 1
	.loc	1 86 20                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:86:20
	addli r7, r7, 1
	slli r6, r4, 15
	.loc	1 89 25                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:89:25
	slli r4, r5, 15
	.loc	1 86 20                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:86:20
	add.s r10, r6, r28
	beq r2, r15, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:0:20
	bneq r2, r24, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 25                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:86:25
	zext_int2long r[4:5], r20
	.loc	1 86 20                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:86:20
	addli r6, zero, 19
	xwait r15, 0
	lock zero, r17
	dma_cfg zero, zero, zero, 0
	sll.d r[4:5], r[4:5], r6
	addli r6, zero, 512
	add.ul r[4:5], r[13:14], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r10, r4, r6, 3
	addli r4, zero, 8192
	dma_cfg r6, r4, r26, 4
	dma_run zero
	unlock r17
	xsignal r24, 0
	.loc	1 73 26 is_stmt 1               # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:73:26
	addli r20, r20, 1
	bneq r20, r27, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:89:25
	bneq r2, r17, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 0 is_stmt 0                 # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:0:0
	mod.s r5, r25, r22
	addli r11, zero, 1
	addli r6, zero, 0
	.loc	1 89 25                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:89:25
	xwait r17, 0
	xwait r21, 0
	.loc	1 0 0                           # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:0:0
	slli r10, r5, 15
	addli r5, zero, 1
	.loc	1 89 25                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:89:25
	beq r18, zero, .LBB0_23
.LBB0_22:                               # %.preheader8
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r21, r6, 14
	slli r6, r6, 8
	lock zero, r11
	mm_cfg r26, r26, r12, 0
	or r21, r21, r4
	or r6, r6, r16
	mm_cfg r17, r17, r11, 2
	mm_acc r6, r10, r21, 8
	andi r21, r5, 1
	addli r6, zero, 1
	addli r5, zero, 0
	unlock r11
	bneq r21, zero, .LBB0_22
	j .LBB0_24
.LBB0_23:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r21, r6, 14
	slli r6, r6, 8
	lock zero, r11
	mm_cfg r26, r26, r12, 0
	or r21, r21, r4
	or r6, r6, r16
	mm_cfg r17, r17, r11, 2
	mm r6, r10, r21, 8
	andi r21, r5, 1
	addli r6, zero, 1
	addli r5, zero, 0
	unlock r11
	bneq r21, zero, .LBB0_23
.LBB0_24:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:73:26
	addli r20, r20, 1
	.loc	1 89 25                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:89:25
	addli r4, zero, 9
	addli r21, zero, 8
	addli r11, zero, 40
	xsignal r23, 0
	xsignal r4, 0
	bneq r20, r27, .LBB0_26
	j .LBB0_5
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:73:26
	addli r20, r20, 1
	beq r20, r27, .LBB0_33
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:89:25
	addli r18, r18, 1
	addli r25, r1, 0
	j .LBB0_17
.LBB0_27:                               # %.split19.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:86:20
	addli r9, r9, 32
	.loc	1 73 26                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:73:26
	beq r2, r17, .LBB0_6
	j .LBB0_34
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:0:26
	load.d r[4:5], -384(r30)                # 8-byte Folded Reload
	addli r1, zero, 18
	store.d r[13:14], -368(r30)             # 8-byte Folded Spill
	sll.d r[13:14], r[4:5], r1
	load.d r[4:5], -416(r30)                # 8-byte Folded Reload
	and.d r[20:21], r[13:14], r[4:5]
	addli r4, zero, 0
	j .LBB0_30
.LBB0_29:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	addli r1, zero, 2048
	.loc	1 81 25 is_stmt 1               # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:81:25
	sub.sl r[10:11], r[5:6], r[10:11]
	.loc	1 81 20 is_stmt 0               # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:81:20
	sll.d r[5:6], r[5:6], r19
	xwait r18, 0
	lock zero, r17
	dma_cfg zero, zero, zero, 0
	zext_int2long r[22:23], r1
	.loc	1 0 0                           # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:0:0
	add.s r1, r9, r4
	.loc	1 73 26 is_stmt 1               # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:73:26
	addli r4, r4, 1
	.loc	1 81 25                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:81:25
	div.sl r[10:11], r[10:11], r[22:23]
	.loc	1 81 20 is_stmt 0               # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:81:20
	load.d r[22:23], 0(r30)
	.loc	1 81 0                          # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:81:0
	mod.s r1, r1, r3
	.loc	1 81 20                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:81:20
	add.ul r[5:6], r[22:23], r[5:6]
	dma_cfg zero, r6, zero, 2
	.loc	1 81 25                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:81:25
	load.d r[22:23], -352(r30)              # 8-byte Folded Reload
	.loc	1 81 0                          # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:81:0
	slli r1, r1, 15
	add.s r1, r1, r28
	.loc	1 81 25                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:81:25
	min.sl r[22:23], r[10:11], r[22:23]
	sub.sl r[10:11], r[22:23], r[10:11]
	.loc	1 81 20                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:81:20
	addli r10, r10, 128
	addli r11, zero, 256
	dma_cfg r1, r5, r11, 3
	addli r1, zero, 8192
	dma_cfg r11, r1, r10, 4
	dma_run zero
	unlock r17
	xsignal r19, 0
	.loc	1 73 26 is_stmt 1               # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:73:26
	beq r4, r27, .LBB0_32
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:86:25
	zext_int2long r[5:6], r4
	loadli.w r1,  -356(r30)                 # 4-byte Folded Reload
	sll.d r[5:6], r[5:6], r24
	zext_int2long r[10:11], r1
	.loc	1 81 25                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:81:25
	add.ul r[5:6], r[5:6], r[13:14]
	setlt.ul r1, r[10:11], r[5:6]
	addli.d r[10:11], r[20:21], 0
	bneq r1, zero, .LBB0_29
# %bb.31:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	.loc	1 0 25 is_stmt 0                # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:0:25
	zext_int2long r[10:11], zero
	j .LBB0_29
.LBB0_32:                               # %.split19.us.loopexit55
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r22,  32(r30)
	loadli.w r23,  28(r30)
	load.d r[13:14], -368(r30)              # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:73:26
	addli r1, r25, 32
	addli r8, r8, 32
	addli r7, r7, 32
	.loc	1 89 25                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:89:25
	add.s r9, r9, r4
	addli r21, zero, 8
	addli r20, zero, 24
	addli r11, zero, 5
	.loc	1 101 67                        # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:101:67
	j .LBB0_7
.LBB0_33:                               # %.split19.us.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:86:20
	addli r9, r9, 32
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:0:20
	load.d r[13:14], -368(r30)              # 8-byte Folded Reload
	loadli.w r22,  32(r30)
	addli r18, zero, 3
	addli r20, zero, 24
	addli r11, zero, 5
	beq r2, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r16,  -372(r30)                # 4-byte Folded Reload
	loadli.w r23,  28(r30)
	.loc	1 101 67 is_stmt 1              # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:101:67
	j .LBB0_7
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r3,  -408(r30)                 # 4-byte Folded Reload
	load.d r[20:21], -352(r30)              # 8-byte Folded Reload
	load.d r[22:23], -384(r30)              # 8-byte Folded Reload
	addli r6, zero, 20
	addli r25, zero, 5
	zext_int2long r[4:5], r3
	loadli.w r3,  -404(r30)                 # 4-byte Folded Reload
	sll.d r[22:23], r[22:23], r6
	addli r6, zero, 10
	min.ul r[10:11], r[4:5], r[20:21]
	sext_int2long r[13:14], r3
	addli.d r[10:11], r[10:11], 128
	min.sl r[20:21], r[13:14], r[20:21]
	max.ul r[10:11], r[10:11], r[4:5]
	addli.d r[20:21], r[20:21], 128
	sub.sl r[4:5], r[10:11], r[4:5]
	zext_int2long r[10:11], r12
	max.sl r[20:21], r[20:21], r[13:14]
	min.ul r[4:5], r[4:5], r[10:11]
	sub.sl r[13:14], r[20:21], r[13:14]
	load.d r[20:21], 16(r30)
	slli r4, r4, 2
	addli r5, zero, 8192
	min.sl r[10:11], r[13:14], r[10:11]
	load.d r[13:14], -400(r30)              # 8-byte Folded Reload
	xwait r6, 0
	lock zero, r25
	addli r6, zero, 1
	add.ul r[20:21], r[20:21], r[22:23]
	dma_cfg zero, zero, zero, 0
	loadli.w r23,  28(r30)
	loadli.w r22,  32(r30)
	dma_cfg zero, r6, zero, 1
	add.ul r[13:14], r[20:21], r[13:14]
	addli r20, zero, 24
	addli r21, zero, 8
	dma_cfg r14, zero, zero, 2
	dma_cfg r13, r16, r4, 3
	addli r4, zero, 512
	load.d r[13:14], -368(r30)              # 8-byte Folded Reload
	dma_cfg r5, r4, r10, 4
	addli r11, zero, 5
	addli r4, zero, 11
	dma_run zero
	unlock r11
	xsignal r4, 0
	loadli.w r16,  -372(r30)                # 4-byte Folded Reload
	j .LBB0_7
.LBB0_37:                               # %._crit_edge
	.loc	1 22 0                          # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_39
# %bb.38:
	.loc	1 0 0 is_stmt 0                 # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:22:0
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
	.loc	1 22 0 epilogue_begin           # ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py:22:0
	addli sp, sp, 416
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
	.long	480                             # 0x1e0
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
.asciz	"ccsu5q7zq57jnxhj7x3xyyyr444tz2m663f4vidcrqipktpni6m3.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/cs" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
