	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/43" "c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py"
	.loc	1 22 0                          # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1448
	addli r30, sp, 1384
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:73:26
	core_id r2
	loadli.w r24,  32(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:0:26
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
	addli r4, zero, 5
	unlock r3
	addli r3, zero, 3
	csr_set csr3, r1
	addli r1, zero, 11
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -252(r30)
	storeli.w zero, -896(r30)
	storeli.w zero, -1144(r30)
	storeli.w zero, -1340(r30)
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
	loadli.w r22,  -1340(r30)
	loadli.w r27,  -252(r30)
	loadli.w r28,  -896(r30)
	loadli.w r8,  -1144(r30)
	sext_int2long r[3:4], r3
	sext_int2long r[10:11], r1
	addli r9, zero, 128
	addli r7, zero, 1
	addli r12, zero, 6
	addli r13, zero, 3
	addli r14, zero, 4
	addli r16, zero, 2
	lui r20, 268
	addli r21, zero, 7
	addli r26, zero, 64
	addli r25, zero, 32
	addli r17, zero, 5
	addli r23, zero, 61
	storeli.w zero, -1344(r30)              # 4-byte Folded Spill
	store.d r[3:4], -1368(r30)              # 8-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split17.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:86:20
	addli r8, r8, 4
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:73:26
	addli r1, zero, 10
	loadli.w r24,  32(r30)
	.loc	1 101 67                        # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:101:67
	addli r22, r13, 1
	addli r28, r4, 1
	addli r27, r23, 1
	addli r13, zero, 3
	addli r17, zero, 5
	.loc	1 73 26                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:73:26
	xsignal r1, 0
	load.d r[10:11], -1352(r30)             # 8-byte Folded Reload
.LBB0_7:                                # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:0:26
	addli r23, zero, 61
.LBB0_8:                                # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[3:4], -1368(r30)               # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 1
	setlt.sl r1, r[10:11], r[3:4]
	loadli.w r3,  -1344(r30)                # 4-byte Folded Reload
	addli r3, r3, 1
	storeli.w r3, -1344(r30)                # 4-byte Folded Spill
	beq r1, zero, .LBB0_38
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	div.s r1, r10, r24
	loadli.w r3,  28(r30)
	.loc	1 54 50 is_stmt 1               # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:54:50
	addli r6, zero, 8
	lui r15, 24
	div.s r3, r1, r3
	.loc	1 53 22                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:53:22
	div.s r4, r3, r9
	.loc	1 54 41                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:54:41
	slli r1, r4, 3
	.loc	1 54 30 is_stmt 0               # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:54:30
	sub.s r5, r7, r1
	.loc	1 54 50                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:54:50
	min.s r5, r5, r6
	.loc	1 55 40 is_stmt 1               # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:55:40
	mod.s r6, r3, r5
	.loc	1 55 34 is_stmt 0               # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:55:34
	add.s r1, r1, r6
	.loc	1 95 15 is_stmt 1               # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:95:15
	zext_int2long r[18:19], r1
	.loc	1 73 26                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:73:26
	store.d r[18:19], -1360(r30)            # 8-byte Folded Spill
	bneq r2, r14, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r6, zero, 11
	addli r18, zero, 160
	addli r19, zero, 62
	xwait r6, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:0:26
	addli r18, zero, 160
	addli r19, zero, 62
	beq r2, r7, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	addli r6, zero, 48
	bneq r2, r16, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 0
	lui r5, 24
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:89:25
	add.s r1, r8, r3
	add.s r4, r22, r3
	xwait r16, 0
	xwait r17, 0
	lock zero, zero
	.loc	1 73 26                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:89:25
	ds_cfg r16, zero, 0
	.loc	1 81 20                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:81:20
	mod.s r1, r1, r23
	.loc	1 89 25                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:89:25
	mod.s r4, r4, r6
	ds_cfg r25, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r9, zero, 13
	.loc	1 81 20                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:81:20
	slli r1, r1, 14
	.loc	1 89 25                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:89:25
	slli r4, r4, 14
	.loc	1 81 20                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:81:20
	add.s r1, r1, r5
	.loc	1 89 25                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:89:25
	shuffle_batch r4, r1, r25, 1
	unlock zero
	xsignal r13, 0
	xsignal r14, 0
	bneq r3, r14, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:73:26
	addli r28, r28, 4
	addli r27, r27, 4
	.loc	1 89 25                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:89:25
	add.s r22, r22, r3
	add.s r8, r8, r3
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:0:25
	slli r4, r4, 7
	slli r1, r1, 7
	store.d r[10:11], -1352(r30)            # 8-byte Folded Spill
	addli r24, zero, 48
	addli r17, zero, 0
	sub.s r3, r3, r4
	loadli.w r4,  -1344(r30)                # 4-byte Folded Reload
	storeli.w r1, -1380(r30)                # 4-byte Folded Spill
	div.s r3, r3, r5
	mod.s r4, r4, r13
	zext_int2long r[5:6], r3
	slli r1, r3, 6
	slli r3, r4, 15
	sll.d r[5:6], r[5:6], r12
	.loc	1 73 26 is_stmt 1               # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:73:26
	storeli.w r1, -1384(r30)                # 4-byte Folded Spill
	sll.d r[10:11], r[5:6], r16
	load.d r[4:5], 8(r30)
	store.d r[10:11], -1376(r30)            # 8-byte Folded Spill
	add.ul r[10:11], r[4:5], r[10:11]
	addli r5, zero, 0
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:89:25
	addli r6, zero, 9
	xwait r12, 0
	xwait r6, 0
	lock zero, zero
	ds_cfg r16, zero, 0
	ds_cfg r26, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r26, zero, 13
	shuffle_coa r15, r1, r25, 2
	addli r1, zero, 8
	unlock zero
	xsignal r21, 0
	xsignal r1, 0
	.loc	1 73 26                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:73:26
	addli r17, r17, 1
	bneq r17, r14, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:89:25
	add.s r23, r27, r5
	add.s r4, r28, r5
	add.s r13, r22, r5
	.loc	1 86 20                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:86:20
	mod.s r1, r23, r19
	.loc	1 89 25                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:89:25
	mod.s r6, r4, r18
	.loc	1 86 20                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:86:20
	slli r1, r1, 13
	.loc	1 89 25                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:89:25
	slli r15, r6, 13
	.loc	1 86 20                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:86:20
	add.s r1, r1, r20
	beq r2, r21, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:0:20
	bneq r2, r12, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:86:25
	zext_int2long r[6:7], r17
	.loc	1 86 20                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:86:20
	addli r15, zero, 17
	xwait r21, 0
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	sll.d r[6:7], r[6:7], r15
	addli r15, zero, 256
	add.ul r[6:7], r[10:11], r[6:7]
	dma_cfg zero, r7, zero, 2
	dma_cfg r1, r6, r15, 3
	addli r1, zero, 4096
	addli r7, zero, 1
	dma_cfg r15, r1, r25, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:73:26
	addli r17, r17, 1
	bneq r17, r14, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:89:25
	bneq r2, r14, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:0:0
	mod.s r1, r13, r24
	.loc	1 89 25                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:89:25
	addli r6, zero, 8
	xwait r14, 0
	xwait r6, 0
	lock zero, r7
	mm_cfg r26, r25, r9, 0
	mm_cfg r16, r16, r7, 2
	.loc	1 0 0                           # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:0:0
	slli r1, r1, 14
	.loc	1 89 25                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:89:25
	beq r5, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r3, r1, r15, 8
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:73:26
	addli r17, r17, 1
	bneq r17, r14, .LBB0_27
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:89:25
	mm r3, r1, r15, 8
.LBB0_26:                               # %.thread6.thread93
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r1, zero, 5
	unlock r7
	.loc	1 73 26                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:73:26
	addli r17, r17, 1
	.loc	1 89 25                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:89:25
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	.loc	1 73 26                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:73:26
	beq r17, r14, .LBB0_5
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:89:25
	addli r5, r5, 1
	j .LBB0_18
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:86:20
	addli r8, r8, 4
	.loc	1 73 26                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:73:26
	beq r2, r14, .LBB0_6
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:0:26
	load.d r[3:4], -1360(r30)               # 8-byte Folded Reload
	addli r1, zero, 14
	addli r26, zero, 61
	store.d r[10:11], -1352(r30)            # 8-byte Folded Spill
	sll.d r[4:5], r[3:4], r1
	addli r3, zero, 0
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	add.s r1, r8, r3
	.loc	1 81 20 is_stmt 1               # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:81:20
	load.d r[23:24], 0(r30)
	sll.d r[6:7], r[6:7], r16
	xwait r13, 0
	lock zero, r14
	.loc	1 81 25 is_stmt 0               # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:81:25
	srl.d r[10:11], r[10:11], r21
	.loc	1 73 26 is_stmt 1               # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:73:26
	addli r3, r3, 1
	.loc	1 81 20                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:81:20
	dma_cfg zero, zero, zero, 0
	.loc	1 81 0 is_stmt 0                # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:81:0
	mod.s r1, r1, r26
	.loc	1 81 20                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:81:20
	sub.s r10, r9, r10
	add.ul r[6:7], r[23:24], r[6:7]
	dma_cfg zero, r7, zero, 2
	.loc	1 81 0                          # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:81:0
	slli r1, r1, 14
	add.s r1, r1, r15
	.loc	1 81 20                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:81:20
	dma_cfg r1, r6, r9, 3
	addli r1, zero, 512
	dma_cfg r9, r1, r10, 4
	dma_run zero
	unlock r14
	xsignal r16, 0
	.loc	1 73 26 is_stmt 1               # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:73:26
	beq r3, r14, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:86:25
	zext_int2long r[6:7], r3
	addli r1, zero, 16383
	sll.d r[10:11], r[6:7], r17
	zext_int2long r[23:24], r1
	.loc	1 81 25                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:81:25
	add.ul r[6:7], r[10:11], r[4:5]
	setlt.ul r1, r[23:24], r[6:7]
	bneq r1, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:0:25
	addli.d r[10:11], r[6:7], 0
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r24,  32(r30)
	load.d r[10:11], -1352(r30)             # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:73:26
	addli r22, r22, 4
	addli r28, r28, 4
	addli r27, r27, 4
	.loc	1 89 25                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:89:25
	add.s r8, r8, r3
	addli r7, zero, 1
	addli r23, zero, 61
	addli r26, zero, 64
	j .LBB0_8
.LBB0_34:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:86:20
	addli r8, r8, 4
.LBB0_35:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:0:20
	load.d r[10:11], -1352(r30)             # 8-byte Folded Reload
	.loc	1 101 67 is_stmt 1              # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:101:67
	addli r22, r13, 1
	addli r28, r4, 1
	addli r27, r23, 1
	addli r17, zero, 5
	beq r2, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:0:67
	loadli.w r24,  32(r30)
	addli r13, zero, 3
	j .LBB0_7
.LBB0_37:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:101:67
	loadli.w r1,  -1384(r30)                # 4-byte Folded Reload
	addli r6, zero, 960
	loadli.w r10,  -1380(r30)               # 4-byte Folded Reload
	zext_int2long r[23:24], zero
	addli r13, zero, 10
	zext_int2long r[6:7], r6
	zext_int2long r[4:5], r1
	sext_int2long r[10:11], r10
	addli r1, zero, 1
	min.ul r[6:7], r[4:5], r[6:7]
	min.sl r[23:24], r[10:11], r[23:24]
	addli.d r[6:7], r[6:7], 64
	max.ul r[6:7], r[6:7], r[4:5]
	sub.sl r[4:5], r[6:7], r[4:5]
	addli.d r[6:7], r[23:24], 128
	zext_int2long r[23:24], r26
	max.sl r[6:7], r[6:7], r[10:11]
	min.ul r[18:19], r[4:5], r[23:24]
	load.d r[4:5], -1360(r30)               # 8-byte Folded Reload
	zext_int2long r[23:24], r9
	sub.sl r[6:7], r[6:7], r[10:11]
	addli r10, zero, 19
	sll.d r[10:11], r[4:5], r10
	load.d r[4:5], 16(r30)
	min.sl r[6:7], r[6:7], r[23:24]
	loadli.w r24,  32(r30)
	add.ul r[10:11], r[4:5], r[10:11]
	load.d r[4:5], -1376(r30)               # 8-byte Folded Reload
	xwait r13, 0
	lock zero, r17
	addli r13, zero, 3
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r1, zero, 1
	slli r1, r18, 2
	add.ul r[10:11], r[10:11], r[4:5]
	dma_cfg r11, zero, zero, 2
	dma_cfg r10, r3, r1, 3
	addli r1, zero, 256
	addli r3, zero, 4096
	load.d r[10:11], -1352(r30)             # 8-byte Folded Reload
	dma_cfg r3, r1, r6, 4
	addli r7, zero, 1
	addli r1, zero, 11
	dma_run zero
	unlock r17
	xsignal r1, 0
	j .LBB0_7
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:22:0
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
	.loc	1 22 0 epilogue_begin           # c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py:22:0
	addli sp, sp, 1384
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
	.long	1448                            # 0x5a8
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
.asciz	"c43z7aoeifrltcpqofrb2mufupp4u635jwruj7ga77o2z6yoyaqv.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/43" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
