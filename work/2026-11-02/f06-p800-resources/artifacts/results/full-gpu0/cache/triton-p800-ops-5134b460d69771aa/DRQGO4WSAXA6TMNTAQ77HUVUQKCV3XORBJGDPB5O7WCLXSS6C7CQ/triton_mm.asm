	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/jr" "cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py"
	.loc	1 22 0                          # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -832
	addli r30, sp, 768
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:73:26
	core_id r14
	loadli.w r22,  28(r30)
	xsignal_mode_cfg r1
	beq r14, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:0:26
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
	addli r2, zero, 5
	csr_set csr3, r1
	addli r1, zero, 11
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 9
	addli r2, zero, 7
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -184(r30)
	storeli.w zero, -508(r30)
	storeli.w zero, -692(r30)
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
	ble.s r3, r1, .LBB0_39
# %bb.4:                                # %.lr.ph
	sext_int2long r[9:10], r1
	lui r1, 15
	sext_int2long r[2:3], r3
	loadli.w r7,  -184(r30)
	loadli.w r8,  -692(r30)
	loadli.w r11,  -508(r30)
	addli r23, zero, 0
	addli r12, zero, 64
	addli r13, zero, 4
	addli r15, zero, 7
	addli r16, zero, 2
	addli r20, zero, 45
	addli r19, zero, 6
	addli r24, zero, 128
	addli r25, zero, 32
	addli r26, zero, 5
	lui r28, 32
	addli r27, zero, 3
	addli r18, zero, 0
	ori r5, r1, 4095
	lui r1, 127
	store.d r[2:3], -744(r30)               # 8-byte Folded Spill
	lui r3, 212
	lui r4, 1048448
	ori r1, r1, 4095
	store.d r[4:5], -768(r30)               # 8-byte Folded Spill
	storeli.w r1, -708(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split18.thread93
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:86:20
	addli r8, r8, 32
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:73:26
	addli r2, zero, 10
	loadli.w r22,  28(r30)
	addli r26, zero, 5
	lui r28, 32
	addli r27, zero, 3
	xsignal r2, 0
	loadli.w r23,  -724(r30)                # 4-byte Folded Reload
	load.d r[9:10], -720(r30)               # 8-byte Folded Reload
.LBB0_7:                                # %.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:0:26
	load.d r[4:5], -744(r30)                # 8-byte Folded Reload
	addli.d r[9:10], r[9:10], 1
	addli r23, r23, 1
	addli r18, r1, 0
	setlt.sl r2, r[9:10], r[4:5]
	beq r2, zero, .LBB0_39
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	loadli.w r1,  32(r30)
	.loc	1 54 50 is_stmt 1               # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:54:50
	addli r6, zero, 8
	addli r17, r22, 0
	div.s r1, r9, r1
	div.s r4, r1, r22
	.loc	1 53 22                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:53:22
	div.s r5, r4, r12
	.loc	1 54 41                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:54:41
	slli r1, r5, 3
	.loc	1 54 30 is_stmt 0               # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:54:30
	sub.s r2, r13, r1
	.loc	1 54 50                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:54:50
	min.s r6, r2, r6
	.loc	1 55 40 is_stmt 1               # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:55:40
	mod.s r2, r4, r6
	.loc	1 55 34 is_stmt 0               # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:55:34
	add.s r1, r1, r2
	addli r2, zero, 384
	.loc	1 95 15 is_stmt 1               # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:95:15
	zext_int2long r[21:22], r1
	store.d r[21:22], -736(r30)             # 8-byte Folded Spill
	zext_int2long r[21:22], r2
	.loc	1 73 26                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:73:26
	store.d r[21:22], -704(r30)             # 8-byte Folded Spill
	bneq r14, r13, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:0:26
	addli r2, zero, 1
	beq r14, r2, .LBB0_30
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r14, r16, .LBB0_15
# %bb.12:                               # %.thread.us23.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 0
	addli r5, zero, 48
.LBB0_13:                               # %.thread.us23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:89:25
	add.s r1, r8, r4
	add.s r2, r18, r4
	xwait r16, 0
	xwait r26, 0
	lock zero, zero
	.loc	1 73 26                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:73:26
	addli r4, r4, 1
	.loc	1 89 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:89:25
	ds_cfg r16, zero, 0
	.loc	1 81 20                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:81:20
	mod.s r1, r1, r20
	.loc	1 89 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:89:25
	mod.s r2, r2, r5
	ds_cfg r25, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r24, zero, 13
	.loc	1 81 20                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:81:20
	slli r1, r1, 14
	.loc	1 89 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:89:25
	slli r2, r2, 14
	.loc	1 81 20                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:81:20
	add.s r1, r1, r28
	.loc	1 89 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:89:25
	shuffle_batch r2, r1, r25, 1
	unlock zero
	xsignal r27, 0
	xsignal r13, 0
	bneq r4, r25, .LBB0_13
# %bb.14:                               # %.split18.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:73:26
	addli r11, r11, 32
	addli r7, r7, 32
	.loc	1 89 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:89:25
	add.s r1, r18, r4
	add.s r8, r8, r4
	addli r22, r17, 0
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:0:25
	slli r2, r5, 6
	slli r22, r1, 7
	store.d r[9:10], -720(r30)              # 8-byte Folded Spill
	addli r21, zero, 5
	addli r28, zero, 0
	storeli.w r23, -724(r30)                # 4-byte Folded Spill
	addli r10, zero, 8
	sub.s r2, r4, r2
	mod.s r4, r23, r16
	div.s r2, r2, r6
	slli r23, r4, 16
	addli r4, zero, 0
	zext_int2long r[5:6], r2
	slli r1, r2, 7
	sll.d r[5:6], r[5:6], r15
	.loc	1 73 26 is_stmt 1               # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:73:26
	storeli.w r1, -756(r30)                 # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	sll.d r[5:6], r[5:6], r16
	add.ul r[26:27], r[1:2], r[5:6]
	store.d r[5:6], -752(r30)               # 8-byte Folded Spill
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:89:25
	addli r2, zero, 9
	xwait r19, 0
	xwait r2, 0
	lock zero, zero
	ds_cfg r16, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r17, r9, r25, 2
	unlock zero
	xsignal r15, 0
	xsignal r10, 0
	.loc	1 73 26                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:73:26
	addli r28, r28, 1
	bneq r28, r25, .LBB0_28
	j .LBB0_29
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	.loc	1 86 20                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:86:20
	mod.s r2, r7, r20
	.loc	1 89 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:89:25
	addli r1, zero, 80
	.loc	1 86 20                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:86:20
	addli r7, r7, 1
	.loc	1 89 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:89:25
	mod.s r5, r11, r1
	addli r1, r18, 1
	addli r11, r11, 1
	.loc	1 86 20                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:86:20
	slli r2, r2, 14
	.loc	1 89 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:89:25
	slli r17, r5, 14
	.loc	1 86 20                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:86:20
	add.s r9, r2, r3
	beq r14, r15, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:0:20
	bneq r14, r19, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:86:25
	zext_int2long r[5:6], r28
	.loc	1 86 20                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:86:20
	addli r2, zero, 17
	xwait r15, 0
	lock zero, r13
	dma_cfg zero, zero, zero, 0
	sll.d r[5:6], r[5:6], r2
	addli r2, zero, 512
	add.ul r[5:6], r[26:27], r[5:6]
	dma_cfg zero, r6, zero, 2
	dma_cfg r9, r5, r2, 3
	addli r5, zero, 4096
	dma_cfg r2, r5, r25, 4
	dma_run zero
	unlock r13
	xsignal r19, 0
	.loc	1 73 26 is_stmt 1               # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:73:26
	addli r28, r28, 1
	bneq r28, r25, .LBB0_28
	j .LBB0_29
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:89:25
	bneq r14, r13, .LBB0_24
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 0 is_stmt 0                 # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:0:0
	addli r2, zero, 48
	.loc	1 89 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:89:25
	xwait r13, 0
	xwait r10, 0
	addli r10, zero, 1
	addli r5, zero, 1
	.loc	1 0 0                           # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:0:0
	mod.s r2, r18, r2
	slli r9, r2, 14
	.loc	1 89 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:89:25
	beq r4, zero, .LBB0_25
# %bb.22:                               # %.preheader8.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 25                          # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:0:25
	addli r6, zero, 0
.LBB0_23:                               # %.preheader8
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:89:25
	slli r2, r6, 13
	slli r6, r6, 8
	lock zero, r10
	mm_cfg r12, r25, r24, 0
	or r2, r2, r17
	or r6, r6, r23
	mm_cfg r16, r13, r10, 2
	mm_acc r6, r9, r2, 8
	andi r2, r5, 1
	addli r6, zero, 1
	addli r5, zero, 0
	unlock r10
	bneq r2, zero, .LBB0_23
	j .LBB0_27
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:73:26
	addli r28, r28, 1
	bneq r28, r25, .LBB0_28
	j .LBB0_35
.LBB0_25:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:0:26
	addli r2, zero, 0
.LBB0_26:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25 is_stmt 1               # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:89:25
	slli r6, r2, 13
	slli r2, r2, 8
	lock zero, r10
	mm_cfg r12, r25, r24, 0
	or r6, r6, r17
	or r2, r2, r23
	mm_cfg r16, r13, r10, 2
	mm r2, r9, r6, 8
	andi r6, r5, 1
	addli r2, zero, 1
	addli r5, zero, 0
	unlock r10
	bneq r6, zero, .LBB0_26
.LBB0_27:                               # %.thread6.thread91
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:73:26
	addli r28, r28, 1
	addli r10, zero, 8
	.loc	1 89 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:89:25
	addli r2, zero, 9
	xsignal r21, 0
	xsignal r2, 0
	beq r28, r25, .LBB0_5
.LBB0_28:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r4, r4, 1
	addli r18, r1, 0
	j .LBB0_17
.LBB0_29:                               # %.split18
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:86:20
	addli r8, r8, 32
	.loc	1 73 26                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:73:26
	beq r14, r13, .LBB0_6
	j .LBB0_36
.LBB0_30:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:0:26
	load.d r[4:5], -736(r30)                # 8-byte Folded Reload
	addli r1, zero, 17
	addli r14, zero, 3
	lui r3, 32
	addli r28, zero, 5
	store.d r[9:10], -720(r30)              # 8-byte Folded Spill
	sll.d r[26:27], r[4:5], r1
	load.d r[1:2], -768(r30)                # 8-byte Folded Reload
	addli r4, zero, 0
	and.d r[1:2], r[26:27], r[1:2]
	j .LBB0_32
.LBB0_31:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	addli r17, zero, 1024
	.loc	1 81 25 is_stmt 1               # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:81:25
	sub.sl r[9:10], r[5:6], r[9:10]
	.loc	1 81 20 is_stmt 0               # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:81:20
	sll.d r[5:6], r[5:6], r16
	xwait r14, 0
	lock zero, r13
	dma_cfg zero, zero, zero, 0
	zext_int2long r[21:22], r17
	.loc	1 0 0                           # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:0:0
	add.s r17, r8, r4
	.loc	1 73 26 is_stmt 1               # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:73:26
	addli r4, r4, 1
	.loc	1 81 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:81:25
	div.sl r[9:10], r[9:10], r[21:22]
	.loc	1 81 20 is_stmt 0               # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:81:20
	load.d r[21:22], 0(r30)
	.loc	1 81 0                          # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:81:0
	mod.s r17, r17, r20
	.loc	1 81 20                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:81:20
	add.ul r[5:6], r[21:22], r[5:6]
	dma_cfg zero, r6, zero, 2
	.loc	1 81 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:81:25
	load.d r[21:22], -704(r30)              # 8-byte Folded Reload
	.loc	1 81 0                          # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:81:0
	slli r17, r17, 14
	add.s r17, r17, r3
	.loc	1 81 20                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:81:20
	dma_cfg r17, r5, r24, 3
	addli r5, zero, 4096
	.loc	1 81 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:81:25
	min.sl r[21:22], r[9:10], r[21:22]
	sub.sl r[9:10], r[21:22], r[9:10]
	.loc	1 81 20                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:81:20
	addli r9, r9, 128
	dma_cfg r24, r5, r9, 4
	dma_run zero
	unlock r13
	xsignal r16, 0
	.loc	1 73 26 is_stmt 1               # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:73:26
	beq r4, r25, .LBB0_34
.LBB0_32:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:86:25
	zext_int2long r[5:6], r4
	loadli.w r9,  -708(r30)                 # 4-byte Folded Reload
	sll.d r[5:6], r[5:6], r28
	zext_int2long r[9:10], r9
	.loc	1 81 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:81:25
	add.ul r[5:6], r[5:6], r[26:27]
	setlt.ul r17, r[9:10], r[5:6]
	addli.d r[9:10], r[1:2], 0
	bneq r17, zero, .LBB0_31
# %bb.33:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 0 25 is_stmt 0                # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:0:25
	zext_int2long r[9:10], zero
	j .LBB0_31
.LBB0_34:                               # %.split18.us
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r22,  28(r30)
	load.d r[9:10], -720(r30)               # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:73:26
	addli r1, r18, 32
	addli r11, r11, 32
	addli r7, r7, 32
	.loc	1 89 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:89:25
	add.s r8, r8, r4
	addli r26, zero, 5
	lui r28, 32
	lui r3, 212
	addli r27, zero, 3
	.loc	1 73 26                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:73:26
	core_id r14
	.loc	1 89 25                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:89:25
	j .LBB0_7
.LBB0_35:                               # %.split18.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:86:20
	addli r8, r8, 32
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:0:20
	load.d r[9:10], -720(r30)               # 8-byte Folded Reload
	addli r26, zero, 5
	lui r28, 32
	addli r27, zero, 3
	beq r14, zero, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r23,  -724(r30)                # 4-byte Folded Reload
	loadli.w r22,  28(r30)
	.loc	1 101 67 is_stmt 1              # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:101:67
	j .LBB0_7
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r2,  -756(r30)                 # 4-byte Folded Reload
	sext_int2long r[17:18], r22
	load.d r[21:22], -704(r30)              # 8-byte Folded Reload
	load.d r[26:27], -736(r30)              # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	addli r2, zero, 896
	min.sl r[21:22], r[17:18], r[21:22]
	zext_int2long r[9:10], r2
	addli.d r[21:22], r[21:22], 128
	addli r2, zero, 19
	min.ul r[9:10], r[4:5], r[9:10]
	max.sl r[21:22], r[21:22], r[17:18]
	sll.d r[26:27], r[26:27], r2
	addli r2, zero, 10
	addli.d r[9:10], r[9:10], 128
	sub.sl r[17:18], r[21:22], r[17:18]
	load.d r[21:22], 16(r30)
	max.ul r[9:10], r[9:10], r[4:5]
	add.ul r[21:22], r[21:22], r[26:27]
	addli r26, zero, 5
	addli r27, zero, 3
	sub.sl r[4:5], r[9:10], r[4:5]
	zext_int2long r[9:10], r24
	min.ul r[4:5], r[4:5], r[9:10]
	min.sl r[9:10], r[17:18], r[9:10]
	load.d r[17:18], -752(r30)              # 8-byte Folded Reload
	xwait r2, 0
	lock zero, r26
	addli r2, zero, 1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r2, zero, 1
	slli r2, r4, 2
	addli r4, zero, 4096
	add.ul r[17:18], r[21:22], r[17:18]
	loadli.w r22,  28(r30)
	dma_cfg r18, zero, zero, 2
	dma_cfg r17, r23, r2, 3
	addli r2, zero, 512
	dma_cfg r4, r2, r9, 4
	addli r2, zero, 11
	load.d r[9:10], -720(r30)               # 8-byte Folded Reload
	dma_run zero
	unlock r26
	xsignal r2, 0
	loadli.w r23,  -724(r30)                # 4-byte Folded Reload
	j .LBB0_7
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0                          # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:22:0
	xsignal zero, 0
	bneq r14, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:22:0
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
.LBB0_41:
	.loc	1 22 0 epilogue_begin           # cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py:22:0
	addli sp, sp, 768
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
	.long	832                             # 0x340
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
.asciz	"cjrkltkmxhli6ynah2dffcvoqhh5ft25o5toy2kh5zzwxupnfd3c.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/jr" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
