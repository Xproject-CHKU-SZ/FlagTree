	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/ez" "cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py"
	.loc	1 22 0                          # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1472
	addli r30, sp, 1408
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:73:26
	core_id r15
	loadli.w r13,  32(r30)
	loadli.w r11,  28(r30)
	xsignal_mode_cfg r1
	beq r15, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:0:26
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
	sext_int2long r[2:3], r3
	sext_int2long r[19:20], r1
	loadli.w r22,  -1340(r30)
	loadli.w r26,  -252(r30)
	loadli.w r28,  -896(r30)
	loadli.w r8,  -1144(r30)
	addli r4, zero, 256
	addli r12, zero, 6
	addli r10, zero, 3
	addli r14, zero, 4
	addli r16, zero, 2
	addli r17, zero, 48
	addli r21, zero, 7
	addli r24, zero, 64
	addli r25, zero, 32
	addli r18, zero, 128
	addli r27, zero, 5
	storeli.w zero, -1360(r30)              # 4-byte Folded Spill
	store.d r[2:3], -1384(r30)              # 8-byte Folded Spill
	lui r3, 31
	ori r2, r3, 4095
	lui r3, 1023
	lui r1, 1047552
	store.d r[1:2], -1408(r30)              # 8-byte Folded Spill
	ori r1, r3, 4095
	storeli.w r1, -1356(r30)                # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.split17.us
                                        #   in Loop: Header=BB0_7 Depth=1
	loadli.w r1,  32(r30)
	loadli.w r11,  28(r30)
	load.d r[19:20], -1368(r30)             # 8-byte Folded Reload
	.loc	1 73 26                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:73:26
	addli r22, r22, 64
	addli r28, r28, 64
	addli r26, r26, 64
	.loc	1 89 25 is_stmt 1               # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:89:25
	add.s r8, r8, r5
	addli r4, zero, 256
	addli r10, zero, 3
	addli r17, zero, 48
	addli r27, zero, 5
	.loc	1 73 26                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:73:26
	core_id r15
	addli r13, r1, 0
.LBB0_6:                                # %.thread96
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:0:26
	load.d r[1:2], -1384(r30)               # 8-byte Folded Reload
	addli.d r[19:20], r[19:20], 1
	setlt.sl r1, r[19:20], r[1:2]
	loadli.w r2,  -1360(r30)                # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -1360(r30)                # 4-byte Folded Spill
	beq r1, zero, .LBB0_38
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_17 Depth 2
	div.s r3, r19, r13
	.loc	1 54 30 is_stmt 1               # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:54:30
	addli r1, zero, 16
	.loc	1 73 26                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:73:26
	core_id r2
	lui r15, 24
	addli r23, zero, 61
	div.s r6, r3, r11
	.loc	1 53 22                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:53:22
	div.s r7, r6, r4
	.loc	1 54 41                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:54:41
	slli r3, r7, 3
	.loc	1 54 30 is_stmt 0               # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:54:30
	sub.s r4, r1, r3
	.loc	1 54 50                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:54:50
	addli r1, zero, 8
	min.s r9, r4, r1
	addli r1, zero, 1920
	.loc	1 55 40 is_stmt 1               # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:55:40
	mod.s r4, r6, r9
	.loc	1 55 34 is_stmt 0               # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:55:34
	add.s r5, r3, r4
	.loc	1 95 15 is_stmt 1               # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:95:15
	zext_int2long r[3:4], r5
	store.d r[3:4], -1376(r30)              # 8-byte Folded Spill
	zext_int2long r[3:4], r1
	.loc	1 73 26                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:73:26
	store.d r[3:4], -1352(r30)              # 8-byte Folded Spill
	bneq r2, r14, .LBB0_9
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	core_id r15
	xwait r1, 0
	j .LBB0_14
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:0:26
	addli r1, zero, 1
	beq r2, r1, .LBB0_29
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:73:26
	core_id r15
	bneq r15, r16, .LBB0_14
# %bb.11:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26                          # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:0:26
	addli r3, zero, 0
	addli r4, zero, 256
	addli r5, zero, 61
	lui r6, 24
.LBB0_12:                               # %.thread.us21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:89:25
	add.s r1, r8, r3
	add.s r2, r22, r3
	xwait r16, 0
	xwait r27, 0
	lock zero, zero
	.loc	1 73 26                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:89:25
	ds_cfg r16, zero, 0
	.loc	1 81 20                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:81:20
	mod.s r1, r1, r5
	.loc	1 89 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:89:25
	mod.s r2, r2, r17
	ds_cfg r25, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r18, zero, 13
	.loc	1 81 20                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:81:20
	slli r1, r1, 14
	.loc	1 89 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:89:25
	slli r2, r2, 14
	.loc	1 81 20                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:81:20
	add.s r1, r1, r6
	.loc	1 89 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:89:25
	shuffle_batch r2, r1, r25, 1
	unlock zero
	xsignal r10, 0
	xsignal r14, 0
	bneq r3, r24, .LBB0_12
# %bb.13:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:73:26
	addli r28, r28, 64
	addli r26, r26, 64
	.loc	1 89 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:89:25
	add.s r22, r22, r3
	add.s r8, r8, r3
	j .LBB0_6
.LBB0_14:                               # %.split.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:0:25
	slli r7, r7, 8
	loadli.w r1,  -1360(r30)                # 4-byte Folded Reload
	store.d r[19:20], -1368(r30)            # 8-byte Folded Spill
	addli r3, zero, 128
	addli r11, zero, 0
	addli r27, zero, 0
	addli r19, zero, 1
	addli r20, zero, 8192
	lui r23, 268
	sub.s r6, r6, r7
	mod.s r7, r1, r10
	slli r1, r5, 7
	div.s r6, r6, r9
	storeli.w r1, -1396(r30)                # 4-byte Folded Spill
	slli r18, r7, 15
	zext_int2long r[9:10], r6
	slli r1, r6, 6
	sll.d r[9:10], r[9:10], r12
	.loc	1 73 26 is_stmt 1               # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:73:26
	storeli.w r1, -1400(r30)                # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	sll.d r[4:5], r[9:10], r16
	store.d r[4:5], -1392(r30)              # 8-byte Folded Spill
	add.ul r[9:10], r[1:2], r[4:5]
	addli r4, zero, 256
	j .LBB0_17
.LBB0_15:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:89:25
	addli r1, zero, 9
	xwait r12, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 8
	ds_cfg r16, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r6, r7, r25, 2
	unlock zero
	xsignal r21, 0
	xsignal r1, 0
	.loc	1 73 26                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:73:26
	addli r11, r11, 1
	beq r11, r24, .LBB0_27
.LBB0_16:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:89:25
	addli r27, r27, 1
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r26, r27
	.loc	1 86 20                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:86:20
	addli r1, zero, 62
	.loc	1 89 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:89:25
	add.s r13, r28, r27
	addli r2, zero, 160
	add.s r17, r22, r27
	.loc	1 86 20                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:86:20
	mod.s r1, r5, r1
	.loc	1 89 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:89:25
	mod.s r2, r13, r2
	.loc	1 86 20                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:86:20
	slli r1, r1, 13
	.loc	1 89 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:89:25
	slli r6, r2, 13
	.loc	1 86 20                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:86:20
	add.s r7, r1, r23
	beq r15, r21, .LBB0_15
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:0:20
	bneq r15, r12, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:86:25
	zext_int2long r[1:2], r11
	.loc	1 86 20                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:86:20
	addli r6, zero, 18
	xwait r21, 0
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	sll.d r[1:2], r[1:2], r6
	add.ul r[1:2], r[9:10], r[1:2]
	dma_cfg zero, r2, zero, 2
	dma_cfg r7, r1, r4, 3
	dma_cfg r4, r20, r25, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:73:26
	addli r11, r11, 1
	bneq r11, r24, .LBB0_16
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:89:25
	bneq r15, r14, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 0 is_stmt 0                 # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:0:0
	addli r1, zero, 48
	.loc	1 89 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:89:25
	addli r2, zero, 8
	xwait r14, 0
	.loc	1 0 0                           # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:0:0
	mod.s r1, r17, r1
	.loc	1 89 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:89:25
	xwait r2, 0
	lock zero, r19
	mm_cfg r24, r25, r3, 0
	mm_cfg r16, r16, r19, 2
	.loc	1 0 0                           # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:0:0
	slli r7, r1, 14
	.loc	1 89 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:89:25
	beq r27, zero, .LBB0_24
# %bb.22:                               # %.preheader8
                                        #   in Loop: Header=BB0_17 Depth=2
	mm_acc r18, r7, r6, 8
	j .LBB0_25
.LBB0_23:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:73:26
	addli r11, r11, 1
	bneq r11, r24, .LBB0_16
	j .LBB0_33
.LBB0_24:                               # %.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:89:25
	mm r18, r7, r6, 8
.LBB0_25:                               # %.thread6.thread93
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r1, zero, 5
	unlock r19
	.loc	1 73 26                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:73:26
	addli r11, r11, 1
	.loc	1 89 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:89:25
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	.loc	1 73 26                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:73:26
	bneq r11, r24, .LBB0_16
# %bb.26:                               # %.split17.thread95
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:86:20
	addli r8, r8, 64
	j .LBB0_28
.LBB0_27:                               # %.split17
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r8, r8, 64
	.loc	1 73 26                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:73:26
	bneq r15, r14, .LBB0_34
.LBB0_28:                               # %.thread7
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	.loc	1 101 67                        # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:101:67
	addli r28, r13, 1
	loadli.w r13,  32(r30)
	loadli.w r11,  28(r30)
	addli r22, r17, 1
	addli r26, r5, 1
	addli r10, zero, 3
	addli r17, zero, 48
	addli r18, zero, 128
	addli r27, zero, 5
	j .LBB0_37
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 67 is_stmt 0                # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:0:67
	load.d r[2:3], -1376(r30)               # 8-byte Folded Reload
	addli r1, zero, 18
	addli r13, zero, 5
	addli r27, zero, 3
	store.d r[19:20], -1368(r30)            # 8-byte Folded Spill
	addli r5, zero, 0
	sll.d r[9:10], r[2:3], r1
	load.d r[1:2], -1408(r30)               # 8-byte Folded Reload
	and.d r[19:20], r[9:10], r[1:2]
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	addli r1, zero, 2048
	.loc	1 81 25 is_stmt 1               # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:81:25
	sub.sl r[6:7], r[17:18], r[6:7]
	.loc	1 81 20 is_stmt 0               # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:81:20
	sll.d r[17:18], r[17:18], r16
	xwait r27, 0
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	zext_int2long r[3:4], r1
	load.d r[1:2], 0(r30)
	.loc	1 81 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:81:25
	div.sl r[3:4], r[6:7], r[3:4]
	.loc	1 0 0                           # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:0:0
	add.s r6, r8, r5
	.loc	1 73 26 is_stmt 1               # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:73:26
	addli r5, r5, 1
	.loc	1 81 20                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:81:20
	add.ul r[17:18], r[1:2], r[17:18]
	.loc	1 81 0 is_stmt 0                # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:81:0
	mod.s r6, r6, r23
	.loc	1 81 20                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:81:20
	dma_cfg zero, r18, zero, 2
	.loc	1 81 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:81:25
	load.d r[1:2], -1352(r30)               # 8-byte Folded Reload
	.loc	1 81 0                          # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:81:0
	slli r6, r6, 14
	.loc	1 81 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:81:25
	min.sl r[1:2], r[3:4], r[1:2]
	sub.sl r[1:2], r[1:2], r[3:4]
	.loc	1 81 0                          # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:81:0
	add.s r3, r6, r15
	.loc	1 81 20                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:81:20
	addli r1, r1, 128
	addli r2, zero, 128
	dma_cfg r3, r17, r2, 3
	addli r18, zero, 128
	addli r2, zero, 8192
	dma_cfg r18, r2, r1, 4
	dma_run zero
	unlock r14
	xsignal r16, 0
	.loc	1 73 26 is_stmt 1               # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:73:26
	beq r5, r24, .LBB0_5
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:86:25
	zext_int2long r[6:7], r5
	loadli.w r1,  -1356(r30)                # 4-byte Folded Reload
	sll.d r[6:7], r[6:7], r13
	.loc	1 81 25                         # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:81:25
	add.ul r[17:18], r[6:7], r[9:10]
	zext_int2long r[6:7], r1
	setlt.ul r11, r[6:7], r[17:18]
	addli.d r[6:7], r[19:20], 0
	bneq r11, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:0:25
	zext_int2long r[6:7], zero
	j .LBB0_30
.LBB0_33:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20 is_stmt 1               # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:86:20
	addli r8, r8, 64
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:0:20
	loadli.w r11,  28(r30)
	.loc	1 101 67 is_stmt 1              # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:101:67
	addli r22, r17, 1
	addli r28, r13, 1
	addli r26, r5, 1
	addli r27, zero, 5
	beq r15, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 67 is_stmt 0                # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:0:67
	load.d r[19:20], -1368(r30)             # 8-byte Folded Reload
	loadli.w r13,  32(r30)
	addli r10, zero, 3
	addli r17, zero, 48
	addli r18, zero, 128
	.loc	1 101 67                        # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:101:67
	j .LBB0_6
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r1,  -1400(r30)                # 4-byte Folded Reload
	addli r3, zero, 1984
	loadli.w r5,  -1396(r30)                # 4-byte Folded Reload
	load.d r[9:10], -1352(r30)              # 8-byte Folded Reload
	addli r7, zero, 256
	loadli.w r13,  32(r30)
	addli r17, zero, 48
	zext_int2long r[3:4], r3
	zext_int2long r[1:2], r1
	sext_int2long r[5:6], r5
	min.ul r[3:4], r[1:2], r[3:4]
	min.sl r[9:10], r[5:6], r[9:10]
	addli.d r[3:4], r[3:4], 64
	addli.d r[9:10], r[9:10], 128
	max.ul r[3:4], r[3:4], r[1:2]
	max.sl r[9:10], r[9:10], r[5:6]
	sub.sl r[1:2], r[3:4], r[1:2]
	zext_int2long r[3:4], r24
	min.ul r[19:20], r[1:2], r[3:4]
	load.d r[1:2], -1376(r30)               # 8-byte Folded Reload
	sub.sl r[3:4], r[9:10], r[5:6]
	addli r5, zero, 20
	addli r9, zero, 128
	zext_int2long r[9:10], r9
	sll.d r[5:6], r[1:2], r5
	load.d r[1:2], 16(r30)
	min.sl r[3:4], r[3:4], r[9:10]
	addli r9, zero, 10
	addli r10, zero, 3
	add.ul r[5:6], r[1:2], r[5:6]
	load.d r[1:2], -1392(r30)               # 8-byte Folded Reload
	xwait r9, 0
	lock zero, r27
	dma_cfg zero, zero, zero, 0
	add.ul r[5:6], r[5:6], r[1:2]
	addli r1, zero, 1
	dma_cfg zero, r1, zero, 1
	slli r1, r19, 2
	dma_cfg r6, zero, zero, 2
	dma_cfg r5, r18, r1, 3
	addli r1, zero, 8192
	addli r18, zero, 128
	dma_cfg r1, r7, r3, 4
	addli r1, zero, 11
	dma_run zero
	unlock r27
	addli r4, zero, 256
.LBB0_37:                               # %.thread96
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:0:0
	xsignal r1, 0
	load.d r[19:20], -1368(r30)             # 8-byte Folded Reload
	j .LBB0_6
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:22:0
	xsignal zero, 0
	bneq r15, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py:22:0
	addli sp, sp, 1408
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
	.long	1472                            # 0x5c0
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
.asciz	"cezdxhdi6ober3fqlijdzz6lmtmbo5ykfmyukmwaac6a7rd53vrx.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/ez" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
