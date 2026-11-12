	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/zn" "cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py"
	.loc	1 22 0                          # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1448
	addli r30, sp, 1384
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:73:26
	core_id r2
	loadli.w r26,  32(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:0:26
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -244(r30)
	storeli.w zero, -888(r30)
	storeli.w zero, -1132(r30)
	storeli.w zero, -1328(r30)
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
	loadli.w r22,  -1328(r30)
	loadli.w r27,  -244(r30)
	loadli.w r28,  -888(r30)
	loadli.w r8,  -1132(r30)
	sext_int2long r[3:4], r3
	sext_int2long r[5:6], r1
	addli r9, zero, 128
	addli r25, zero, 1
	addli r12, zero, 6
	addli r13, zero, 4
	addli r15, zero, 2
	addli r17, zero, 160
	addli r18, zero, 60
	lui r19, 272
	addli r20, zero, 7
	addli r23, zero, 64
	addli r24, zero, 32
	addli r16, zero, 5
	lui r21, 32
	addli r11, zero, 3
	addli r14, zero, 0
	store.d r[3:4], -1352(r30)              # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split17.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:86:20
	addli r8, r8, 4
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:73:26
	addli r1, zero, 10
	.loc	1 101 67                        # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:101:67
	addli r22, r5, 1
	loadli.w r26,  32(r30)
	addli r28, r21, 1
	addli r27, r16, 1
	addli r25, zero, 1
	addli r16, zero, 5
	lui r21, 32
	addli r11, zero, 3
	.loc	1 73 26                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:73:26
	xsignal r1, 0
	load.d r[5:6], -1336(r30)               # 8-byte Folded Reload
	loadli.w r14,  -1340(r30)               # 4-byte Folded Reload
.LBB0_7:                                # %.thread96
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:0:26
	load.d r[3:4], -1352(r30)               # 8-byte Folded Reload
	addli.d r[5:6], r[5:6], 1
	addli r14, r14, 1
	setlt.sl r1, r[5:6], r[3:4]
	beq r1, zero, .LBB0_38
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_17 Depth 2
	div.s r1, r5, r26
	loadli.w r3,  28(r30)
	store.d r[5:6], -1336(r30)              # 8-byte Folded Spill
	.loc	1 54 50 is_stmt 1               # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:54:50
	addli r6, zero, 8
	div.s r4, r1, r3
	.loc	1 53 22                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:53:22
	div.s r5, r4, r9
	.loc	1 54 41                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:54:41
	slli r1, r5, 3
	.loc	1 54 30 is_stmt 0               # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:54:30
	sub.s r3, r25, r1
	.loc	1 54 50                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:54:50
	min.s r10, r3, r6
	.loc	1 55 40 is_stmt 1               # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:55:40
	mod.s r3, r4, r10
	.loc	1 55 34 is_stmt 0               # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:55:34
	add.s r3, r1, r3
	.loc	1 95 15 is_stmt 1               # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:95:15
	zext_int2long r[6:7], r3
	.loc	1 73 26                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:73:26
	bneq r2, r13, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:0:26
	beq r2, r25, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r15, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 0
	addli r5, zero, 48
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:89:25
	add.s r3, r8, r1
	add.s r4, r22, r1
	xwait r15, 0
	xwait r16, 0
	lock zero, zero
	.loc	1 73 26                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:89:25
	ds_cfg r15, zero, 0
	.loc	1 81 20                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:81:20
	mod.s r3, r3, r18
	.loc	1 89 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:89:25
	mod.s r4, r4, r5
	ds_cfg r24, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r9, zero, 13
	.loc	1 81 20                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:81:20
	slli r3, r3, 14
	.loc	1 89 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:89:25
	slli r4, r4, 14
	.loc	1 81 20                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:81:20
	add.s r3, r3, r21
	.loc	1 89 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:89:25
	shuffle_batch r4, r3, r24, 1
	unlock zero
	xsignal r11, 0
	xsignal r13, 0
	bneq r1, r13, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:0:25
	load.d r[5:6], -1336(r30)               # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:73:26
	addli r28, r28, 4
	addli r27, r27, 4
	.loc	1 89 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:89:25
	add.s r22, r22, r1
	add.s r8, r8, r1
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:0:25
	slli r5, r5, 7
	slli r3, r3, 7
	store.d r[6:7], -1360(r30)              # 8-byte Folded Spill
	addli r26, zero, 5
	addli r1, zero, 0
	storeli.w r14, -1340(r30)               # 4-byte Folded Spill
	sub.s r4, r4, r5
	mod.s r5, r14, r13
	storeli.w r3, -1376(r30)                # 4-byte Folded Spill
	addli r14, zero, 0
	div.s r4, r4, r10
	zext_int2long r[10:11], r4
	slli r3, r4, 6
	sll.d r[10:11], r[10:11], r12
	.loc	1 73 26 is_stmt 1               # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:73:26
	storeli.w r3, -1380(r30)                # 4-byte Folded Spill
	slli r3, r5, 15
	load.d r[4:5], 8(r30)
	sll.d r[6:7], r[10:11], r15
	add.ul r[10:11], r[4:5], r[6:7]
	store.d r[6:7], -1368(r30)              # 8-byte Folded Spill
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:89:25
	addli r6, zero, 9
	xwait r12, 0
	xwait r6, 0
	lock zero, zero
	ds_cfg r15, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r4, r25, r24, 2
	addli r4, zero, 8
	unlock zero
	xsignal r20, 0
	xsignal r4, 0
	.loc	1 73 26                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:73:26
	addli r1, r1, 1
	bneq r1, r13, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:89:25
	add.s r16, r27, r14
	add.s r21, r28, r14
	add.s r5, r22, r14
	.loc	1 86 20                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:86:20
	mod.s r4, r16, r18
	.loc	1 89 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:89:25
	mod.s r6, r21, r17
	.loc	1 86 20                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:86:20
	slli r7, r4, 13
	.loc	1 89 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:89:25
	slli r4, r6, 13
	.loc	1 86 20                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:86:20
	add.s r25, r7, r19
	beq r2, r20, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:0:20
	bneq r2, r12, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:86:25
	zext_int2long r[6:7], r1
	.loc	1 86 20                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:86:20
	addli r4, zero, 17
	xwait r20, 0
	lock zero, r13
	dma_cfg zero, zero, zero, 0
	sll.d r[6:7], r[6:7], r4
	addli r4, zero, 256
	add.ul r[6:7], r[10:11], r[6:7]
	dma_cfg zero, r7, zero, 2
	dma_cfg r25, r6, r4, 3
	addli r6, zero, 4096
	dma_cfg r4, r6, r24, 4
	dma_run zero
	unlock r13
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:73:26
	addli r1, r1, 1
	bneq r1, r13, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:89:25
	bneq r2, r13, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 0 is_stmt 0                 # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:0:0
	addli r6, zero, 48
	.loc	1 89 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:89:25
	addli r7, zero, 8
	xwait r13, 0
	.loc	1 0 0                           # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:0:0
	mod.s r6, r5, r6
	.loc	1 89 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:89:25
	xwait r7, 0
	addli r7, zero, 1
	lock zero, r7
	mm_cfg r23, r24, r9, 0
	mm_cfg r15, r15, r7, 2
	.loc	1 0 0                           # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:0:0
	slli r25, r6, 14
	addli r6, zero, 1
	.loc	1 89 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:89:25
	beq r14, zero, .LBB0_24
# %bb.22:                               # %.preheader8
                                        #   in Loop: Header=BB0_17 Depth=2
	mm_acc r3, r25, r4, 8
	j .LBB0_25
.LBB0_23:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:73:26
	addli r1, r1, 1
	bneq r1, r13, .LBB0_26
	j .LBB0_33
.LBB0_24:                               # %.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:89:25
	mm r3, r25, r4, 8
.LBB0_25:                               # %.thread6.thread93
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:89:25
	addli r4, zero, 9
	unlock r6
	xsignal r26, 0
	xsignal r4, 0
	.loc	1 73 26                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:73:26
	beq r1, r13, .LBB0_5
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:89:25
	addli r14, r14, 1
	j .LBB0_17
.LBB0_27:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:86:20
	addli r8, r8, 4
	.loc	1 73 26                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:73:26
	beq r2, r13, .LBB0_6
	j .LBB0_34
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:0:26
	addli r1, zero, 14
	storeli.w r14, -1340(r30)               # 4-byte Folded Spill
	addli r14, zero, 3
	sll.d r[10:11], r[6:7], r1
	addli r1, zero, 0
	j .LBB0_30
.LBB0_29:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	add.s r5, r8, r1
	.loc	1 81 25 is_stmt 1               # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:81:25
	srl.d r[3:4], r[3:4], r20
	.loc	1 81 20 is_stmt 0               # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:81:20
	sll.d r[6:7], r[25:26], r15
	load.d r[25:26], 0(r30)
	xwait r14, 0
	lock zero, r13
	.loc	1 73 26 is_stmt 1               # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:73:26
	addli r1, r1, 1
	.loc	1 81 20                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:81:20
	dma_cfg zero, zero, zero, 0
	.loc	1 81 0 is_stmt 0                # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:81:0
	mod.s r5, r5, r18
	.loc	1 81 20                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:81:20
	sub.s r3, r9, r3
	.loc	1 81 0                          # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:81:0
	slli r4, r5, 14
	.loc	1 81 20                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:81:20
	add.ul r[5:6], r[25:26], r[6:7]
	.loc	1 81 0                          # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:81:0
	add.s r4, r4, r21
	.loc	1 81 20                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:81:20
	dma_cfg zero, r6, zero, 2
	dma_cfg r4, r5, r9, 3
	addli r4, zero, 512
	dma_cfg r9, r4, r3, 4
	dma_run zero
	unlock r13
	xsignal r15, 0
	.loc	1 73 26 is_stmt 1               # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:73:26
	beq r1, r13, .LBB0_32
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:86:25
	zext_int2long r[3:4], r1
	addli r5, zero, 16383
	sll.d r[3:4], r[3:4], r16
	zext_int2long r[5:6], r5
	.loc	1 81 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:81:25
	add.ul r[25:26], r[3:4], r[10:11]
	setlt.ul r5, r[5:6], r[25:26]
	bneq r5, zero, .LBB0_29
# %bb.31:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	.loc	1 0 25 is_stmt 0                # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:0:25
	addli.d r[3:4], r[25:26], 0
	j .LBB0_29
.LBB0_32:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r26,  32(r30)
	load.d r[5:6], -1336(r30)               # 8-byte Folded Reload
	loadli.w r14,  -1340(r30)               # 4-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:73:26
	addli r22, r22, 4
	addli r28, r28, 4
	addli r27, r27, 4
	.loc	1 89 25                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:89:25
	add.s r8, r8, r1
	addli r11, zero, 3
	addli r25, zero, 1
	j .LBB0_7
.LBB0_33:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:86:20
	addli r8, r8, 4
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:0:20
	loadli.w r14,  -1340(r30)               # 4-byte Folded Reload
	.loc	1 101 67 is_stmt 1              # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:101:67
	addli r22, r5, 1
	addli r28, r21, 1
	addli r27, r16, 1
	addli r25, zero, 1
	addli r11, zero, 3
	beq r2, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:0:67
	load.d r[5:6], -1336(r30)               # 8-byte Folded Reload
	loadli.w r26,  32(r30)
	addli r16, zero, 5
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:101:67
	loadli.w r1,  -1380(r30)                # 4-byte Folded Reload
	zext_int2long r[25:26], zero
	addli r16, zero, 5
	zext_int2long r[4:5], r1
	addli r1, zero, 960
	zext_int2long r[6:7], r1
	loadli.w r1,  -1376(r30)                # 4-byte Folded Reload
	min.ul r[6:7], r[4:5], r[6:7]
	sext_int2long r[10:11], r1
	addli r1, zero, 19
	addli.d r[6:7], r[6:7], 64
	min.sl r[25:26], r[10:11], r[25:26]
	max.ul r[6:7], r[6:7], r[4:5]
	sub.sl r[4:5], r[6:7], r[4:5]
	addli.d r[6:7], r[25:26], 128
	zext_int2long r[25:26], r23
	min.ul r[4:5], r[4:5], r[25:26]
	max.sl r[6:7], r[6:7], r[10:11]
	zext_int2long r[25:26], r9
	store.d r[4:5], -1376(r30)              # 8-byte Folded Spill
	load.d r[4:5], -1360(r30)               # 8-byte Folded Reload
	sub.sl r[6:7], r[6:7], r[10:11]
	min.sl r[6:7], r[6:7], r[25:26]
	addli r25, zero, 1
	loadli.w r26,  32(r30)
	sll.d r[10:11], r[4:5], r1
	load.d r[4:5], 16(r30)
	addli r1, zero, 10
	add.ul r[10:11], r[4:5], r[10:11]
	load.d r[4:5], -1368(r30)               # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r16
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r25, zero, 1
	add.ul r[10:11], r[10:11], r[4:5]
	load.d r[4:5], -1376(r30)               # 8-byte Folded Reload
	dma_cfg r11, zero, zero, 2
	slli r1, r4, 2
	dma_cfg r10, r3, r1, 3
	addli r1, zero, 256
	addli r3, zero, 4096
	addli r11, zero, 3
	dma_cfg r3, r1, r6, 4
	addli r1, zero, 11
	dma_run zero
	unlock r16
	xsignal r1, 0
	load.d r[5:6], -1336(r30)               # 8-byte Folded Reload
.LBB0_37:                               # %.thread96
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67                          # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:0:67
	lui r21, 32
	j .LBB0_7
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py:22:0
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
.asciz	"cznigkl2jw7cn6e7lca52zyej7tp7cq4lmronfav6j4uh2c3a4rj.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/zn" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
