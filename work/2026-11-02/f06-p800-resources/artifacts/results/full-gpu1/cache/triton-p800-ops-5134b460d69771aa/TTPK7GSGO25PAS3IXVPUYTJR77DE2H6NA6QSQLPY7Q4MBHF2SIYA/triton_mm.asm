	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/wm" "cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py"
	.loc	1 22 0                          # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1000
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:73:26
	core_id r22
	addli r30, sp, 936
	xsignal_mode_cfg r1
	beq r22, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:0:26
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
	addli r4, zero, 3
	unlock r3
	addli r3, zero, 5
	csr_set csr3, r1
	addli r1, zero, 11
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -176(r30)
	storeli.w zero, -500(r30)
	storeli.w zero, -676(r30)
	storeli.w zero, -872(r30)
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
	sext_int2long r[2:3], r3
	sext_int2long r[15:16], r1
	lui r1, 15
	loadli.w r6,  -176(r30)
	loadli.w r21,  -676(r30)
	loadli.w r18,  -872(r30)
	loadli.w r10,  -500(r30)
	addli r11, zero, 64
	addli r12, zero, 4
	addli r14, zero, 7
	addli r28, zero, 3
	addli r17, zero, 2
	addli r13, zero, 48
	addli r20, zero, 43
	addli r7, zero, 6
	addli r24, zero, 128
	addli r25, zero, 32
	addli r23, zero, 5
	lui r26, 48
	store.d r[2:3], -912(r30)               # 8-byte Folded Spill
	ori r3, r1, 4095
	lui r1, 127
	lui r2, 1048448
	ori r1, r1, 4095
	store.d r[2:3], -936(r30)               # 8-byte Folded Spill
	addli r2, zero, 0
	storeli.w r1, -884(r30)                 # 4-byte Folded Spill
	j .LBB0_10
.LBB0_5:                                # %.split18.thread94
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 86 20 is_stmt 1               # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:86:20
	addli r21, r21, 32
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 73 26                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:73:26
	addli r1, zero, 10
	addli r28, zero, 3
	addli r13, zero, 48
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 0 is_stmt 0                 # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:0:0
	xsignal r1, 0
.LBB0_8:                                # %.thread95
                                        #   in Loop: Header=BB0_10 Depth=1
	load.d r[15:16], -896(r30)              # 8-byte Folded Reload
	lui r26, 48
.LBB0_9:                                # %.thread95
                                        #   in Loop: Header=BB0_10 Depth=1
	load.d r[1:2], -912(r30)                # 8-byte Folded Reload
	addli.d r[15:16], r[15:16], 1
	addli r18, r23, 0
	addli r23, zero, 5
	setlt.sl r1, r[15:16], r[1:2]
	loadli.w r2,  -888(r30)                 # 4-byte Folded Reload
	addli r2, r2, 1
	beq r1, zero, .LBB0_38
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_20 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	loadli.w r1,  32(r30)
	addli r19, r21, 0
	.loc	1 73 26                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:73:26
	storeli.w r2, -888(r30)                 # 4-byte Folded Spill
	div.s r3, r15, r1
	loadli.w r1,  28(r30)
	div.s r5, r3, r1
	.loc	1 54 50 is_stmt 1               # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:54:50
	addli r1, zero, 8
	.loc	1 53 22                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:53:22
	div.s r8, r5, r11
	.loc	1 54 41                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:54:41
	slli r3, r8, 3
	.loc	1 54 30 is_stmt 0               # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:54:30
	sub.s r4, r12, r3
	.loc	1 54 50                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:54:50
	min.s r9, r4, r1
	addli r1, zero, 384
	.loc	1 55 40 is_stmt 1               # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:55:40
	mod.s r4, r5, r9
	.loc	1 55 34 is_stmt 0               # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:55:34
	add.s r4, r3, r4
	.loc	1 95 15 is_stmt 1               # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:95:15
	zext_int2long r[21:22], r4
	store.d r[21:22], -904(r30)             # 8-byte Folded Spill
	zext_int2long r[21:22], r1
	.loc	1 73 26                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:73:26
	store.d r[21:22], -880(r30)             # 8-byte Folded Spill
	core_id r22
	bneq r22, r12, .LBB0_12
# %bb.11:                               # %.thread
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r1, zero, 11
	addli r21, r19, 0
	xwait r1, 0
	j .LBB0_17
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 26 is_stmt 0                # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:0:26
	addli r1, zero, 1
	beq r22, r1, .LBB0_33
# %bb.13:                               #   in Loop: Header=BB0_10 Depth=1
	addli r21, r19, 0
	bneq r22, r17, .LBB0_17
# %bb.14:                               # %.thread.us23.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r3, zero, 0
.LBB0_15:                               # %.thread.us23
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:89:25
	add.s r1, r21, r3
	add.s r2, r18, r3
	xwait r17, 0
	xwait r23, 0
	lock zero, zero
	.loc	1 73 26                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:89:25
	ds_cfg r17, zero, 0
	.loc	1 81 20                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:81:20
	mod.s r1, r1, r20
	.loc	1 89 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:89:25
	mod.s r2, r2, r13
	ds_cfg r25, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r24, zero, 13
	.loc	1 81 20                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:81:20
	slli r1, r1, 14
	.loc	1 89 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:89:25
	slli r2, r2, 14
	.loc	1 81 20                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:81:20
	add.s r1, r1, r26
	.loc	1 89 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:89:25
	shuffle_batch r2, r1, r25, 1
	unlock zero
	xsignal r28, 0
	xsignal r12, 0
	bneq r3, r25, .LBB0_15
# %bb.16:                               # %.split18.split.us
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 73 26                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:73:26
	addli r10, r10, 32
	addli r6, r6, 32
	.loc	1 89 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:89:25
	add.s r23, r18, r3
	add.s r21, r21, r3
	j .LBB0_9
.LBB0_17:                               # %.split.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 25 is_stmt 0                # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:0:25
	slli r8, r8, 6
	slli r1, r4, 7
	store.d r[15:16], -896(r30)             # 8-byte Folded Spill
	addli r3, zero, 0
	lui r19, 220
	sub.s r5, r5, r8
	mod.s r8, r2, r28
	storeli.w r1, -924(r30)                 # 4-byte Folded Spill
	addli r28, zero, 0
	div.s r5, r5, r9
	slli r26, r8, 16
	addli r8, zero, 9
	zext_int2long r[15:16], r5
	slli r1, r5, 7
	sll.d r[15:16], r[15:16], r14
	.loc	1 73 26 is_stmt 1               # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:73:26
	storeli.w r1, -928(r30)                 # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	sll.d r[4:5], r[15:16], r17
	addli r15, zero, 8
	addli r16, zero, 80
	store.d r[4:5], -920(r30)               # 8-byte Folded Spill
	add.ul r[4:5], r[1:2], r[4:5]
	j .LBB0_20
.LBB0_18:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 89 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:89:25
	xwait r7, 0
	xwait r8, 0
	lock zero, zero
	ds_cfg r17, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r13, r27, r25, 2
	unlock zero
	xsignal r14, 0
	xsignal r15, 0
	.loc	1 73 26                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:73:26
	addli r3, r3, 1
	beq r3, r25, .LBB0_30
.LBB0_19:                               # %.split.backedge
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 89 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:89:25
	addli r28, r28, 1
	addli r18, r23, 0
.LBB0_20:                               # %.split
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	.loc	1 86 20                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:86:20
	mod.s r1, r6, r20
	.loc	1 89 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:89:25
	mod.s r2, r10, r16
	addli r23, r18, 1
	addli r10, r10, 1
	.loc	1 86 20                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:86:20
	addli r6, r6, 1
	slli r1, r1, 14
	.loc	1 89 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:89:25
	slli r13, r2, 14
	.loc	1 86 20                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:86:20
	add.s r27, r1, r19
	beq r22, r14, .LBB0_18
# %bb.21:                               # %.split
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 20 is_stmt 0                # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:0:20
	bneq r22, r7, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 86 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:86:25
	zext_int2long r[1:2], r3
	.loc	1 86 20                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:86:20
	addli r9, zero, 17
	xwait r14, 0
	lock zero, r12
	dma_cfg zero, zero, zero, 0
	sll.d r[1:2], r[1:2], r9
	addli r9, zero, 512
	add.ul r[1:2], r[4:5], r[1:2]
	dma_cfg zero, r2, zero, 2
	dma_cfg r27, r1, r9, 3
	addli r1, zero, 4096
	dma_cfg r9, r1, r25, 4
	dma_run zero
	unlock r12
	xsignal r7, 0
	.loc	1 73 26 is_stmt 1               # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:73:26
	addli r3, r3, 1
	bneq r3, r25, .LBB0_19
	j .LBB0_30
.LBB0_23:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 89 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:89:25
	bneq r22, r12, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 0 is_stmt 0                 # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:0:0
	addli r1, zero, 48
	addli r27, zero, 1
	addli r8, zero, 1
	addli r9, zero, 0
	.loc	1 89 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:89:25
	xwait r12, 0
	xwait r15, 0
	.loc	1 0 0                           # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:0:0
	mod.s r1, r18, r1
	slli r18, r1, 14
	.loc	1 89 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:89:25
	beq r28, zero, .LBB0_26
.LBB0_25:                               # %.preheader8
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r1, r9, 13
	slli r2, r9, 8
	lock zero, r27
	addli r9, zero, 1
	mm_cfg r11, r25, r24, 0
	or r1, r1, r13
	or r2, r2, r26
	mm_cfg r17, r12, r27, 2
	mm_acc r2, r18, r1, 8
	andi r1, r8, 1
	addli r8, zero, 0
	unlock r27
	bneq r1, zero, .LBB0_25
	j .LBB0_27
.LBB0_26:                               # %.preheader
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r1, r9, 13
	slli r2, r9, 8
	lock zero, r27
	addli r9, zero, 1
	mm_cfg r11, r25, r24, 0
	or r1, r1, r13
	or r2, r2, r26
	mm_cfg r17, r12, r27, 2
	mm r2, r18, r1, 8
	andi r1, r8, 1
	addli r8, zero, 0
	unlock r27
	bneq r1, zero, .LBB0_26
.LBB0_27:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_20 Depth=2
	addli r1, zero, 5
	.loc	1 73 26 is_stmt 1               # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:73:26
	addli r3, r3, 1
	addli r8, zero, 9
	.loc	1 89 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:89:25
	xsignal r1, 0
	xsignal r8, 0
	bneq r3, r25, .LBB0_19
	j .LBB0_5
.LBB0_28:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 73 26                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:73:26
	addli r3, r3, 1
	bneq r3, r25, .LBB0_19
# %bb.29:                               # %.split18.thread91
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 86 20                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:86:20
	addli r21, r21, 32
	j .LBB0_31
.LBB0_30:                               # %.split18
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r21, r21, 32
	.loc	1 73 26                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:73:26
	beq r22, r12, .LBB0_6
.LBB0_31:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 26 is_stmt 0                # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:0:26
	addli r28, zero, 3
	addli r13, zero, 48
	bneq r22, zero, .LBB0_8
# %bb.32:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 101 67 is_stmt 1              # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:101:67
	loadli.w r1,  -928(r30)                 # 4-byte Folded Reload
	loadli.w r5,  -924(r30)                 # 4-byte Folded Reload
	addli r3, zero, 896
	load.d r[15:16], -880(r30)              # 8-byte Folded Reload
	load.d r[18:19], -904(r30)              # 8-byte Folded Reload
	zext_int2long r[3:4], r3
	sext_int2long r[8:9], r5
	zext_int2long r[1:2], r1
	addli r5, zero, 19
	min.ul r[3:4], r[1:2], r[3:4]
	min.sl r[15:16], r[8:9], r[15:16]
	sll.d r[27:28], r[18:19], r5
	addli r5, zero, 10
	addli.d r[3:4], r[3:4], 128
	addli.d r[15:16], r[15:16], 128
	max.ul r[3:4], r[3:4], r[1:2]
	max.sl r[15:16], r[15:16], r[8:9]
	sub.sl r[1:2], r[3:4], r[1:2]
	zext_int2long r[3:4], r24
	sub.sl r[8:9], r[15:16], r[8:9]
	load.d r[15:16], 16(r30)
	min.ul r[1:2], r[1:2], r[3:4]
	min.sl r[3:4], r[8:9], r[3:4]
	load.d r[8:9], -920(r30)                # 8-byte Folded Reload
	xwait r5, 0
	addli r5, zero, 5
	add.ul r[15:16], r[15:16], r[27:28]
	addli r28, zero, 3
	lock zero, r5
	slli r1, r1, 2
	addli r2, zero, 4096
	add.ul r[8:9], r[15:16], r[8:9]
	addli r15, zero, 1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r15, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r26, r1, 3
	addli r1, zero, 512
	dma_cfg r2, r1, r3, 4
	addli r1, zero, 11
	dma_run zero
	unlock r5
	j .LBB0_7
.LBB0_33:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 67 is_stmt 0                # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:0:67
	load.d r[2:3], -904(r30)                # 8-byte Folded Reload
	addli r1, zero, 17
	store.d r[15:16], -896(r30)             # 8-byte Folded Spill
	addli r5, zero, 0
	addli r21, r19, 0
	sll.d r[3:4], r[2:3], r1
	load.d r[1:2], -936(r30)                # 8-byte Folded Reload
	and.d r[15:16], r[3:4], r[1:2]
	j .LBB0_35
.LBB0_34:                               # %.thread.us
                                        #   in Loop: Header=BB0_35 Depth=2
	addli r1, zero, 1024
	.loc	1 81 25 is_stmt 1               # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:81:25
	sub.sl r[26:27], r[8:9], r[26:27]
	.loc	1 81 20 is_stmt 0               # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:81:20
	sll.d r[8:9], r[8:9], r17
	.loc	1 0 0                           # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:0:0
	add.s r13, r21, r5
	.loc	1 81 20                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:81:20
	xwait r28, 0
	lock zero, r12
	.loc	1 73 26 is_stmt 1               # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:73:26
	addli r5, r5, 1
	.loc	1 81 20                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:81:20
	dma_cfg zero, zero, zero, 0
	zext_int2long r[1:2], r1
	.loc	1 81 0 is_stmt 0                # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:81:0
	mod.s r13, r13, r20
	.loc	1 81 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:81:25
	div.sl r[1:2], r[26:27], r[1:2]
	.loc	1 81 20                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:81:20
	load.d r[26:27], 0(r30)
	add.ul r[8:9], r[26:27], r[8:9]
	.loc	1 81 0                          # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:81:0
	slli r13, r13, 14
	.loc	1 81 20                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:81:20
	dma_cfg zero, r9, zero, 2
	.loc	1 81 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:81:25
	load.d r[21:22], -880(r30)              # 8-byte Folded Reload
	min.sl r[26:27], r[1:2], r[21:22]
	addli r21, r19, 0
	sub.sl r[1:2], r[26:27], r[1:2]
	lui r26, 48
	.loc	1 81 0                          # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:81:0
	add.s r13, r13, r26
	.loc	1 81 20                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:81:20
	addli r1, r1, 128
	addli r2, zero, 4096
	dma_cfg r13, r8, r24, 3
	dma_cfg r24, r2, r1, 4
	dma_run zero
	unlock r12
	xsignal r17, 0
	.loc	1 73 26 is_stmt 1               # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:73:26
	beq r5, r25, .LBB0_37
.LBB0_35:                               # %.thread.us
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:86:25
	zext_int2long r[8:9], r5
	loadli.w r1,  -884(r30)                 # 4-byte Folded Reload
	sll.d r[8:9], r[8:9], r23
	zext_int2long r[26:27], r1
	.loc	1 81 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:81:25
	add.ul r[8:9], r[8:9], r[3:4]
	setlt.ul r13, r[26:27], r[8:9]
	addli.d r[26:27], r[15:16], 0
	bneq r13, zero, .LBB0_34
# %bb.36:                               # %.thread.us
                                        #   in Loop: Header=BB0_35 Depth=2
	.loc	1 0 25 is_stmt 0                # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:0:25
	zext_int2long r[26:27], zero
	j .LBB0_34
.LBB0_37:                               # %.split18.us
                                        #   in Loop: Header=BB0_10 Depth=1
	load.d r[15:16], -896(r30)              # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:73:26
	addli r23, r18, 32
	addli r10, r10, 32
	addli r6, r6, 32
	.loc	1 89 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:89:25
	add.s r21, r21, r5
	addli r13, zero, 48
	.loc	1 73 26                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:73:26
	core_id r22
	.loc	1 89 25                         # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:89:25
	j .LBB0_9
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0                          # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:22:0
	xsignal zero, 0
	bneq r22, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py:22:0
	addli sp, sp, 936
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
	.long	1000                            # 0x3e8
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
.asciz	"cwmdsgujywwpxp4yqyhirziwawksk4ofeqyllk5wqt53cxnwa4xp.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/wm" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
