	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/ze" "czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py"
	.loc	1 22 0                          # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1944
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:73:26
	core_id r2
	addli r30, sp, 1880
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:0:26
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
	addli r3, zero, 11
	csr_set csr3, r1
	sync_group
	addli r1, zero, 5
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 3
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -384(r30)
	storeli.w zero, -1028(r30)
	storeli.w zero, -1412(r30)
	storeli.w zero, -1800(r30)
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
	ble.s r3, r1, .LBB0_36
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	loadli.w r28,  -384(r30)
	loadli.w r26,  -1028(r30)
	loadli.w r8,  -1412(r30)
	loadli.w r27,  -1800(r30)
	sext_int2long r[9:10], r1
	addli r11, zero, 128
	addli r13, zero, 1
	addli r12, zero, 6
	addli r15, zero, 3
	addli r14, zero, 4
	addli r16, zero, 2
	addli r18, zero, 160
	addli r19, zero, 95
	lui r20, 202
	addli r21, zero, 7
	addli r23, zero, 64
	addli r24, zero, 32
	lui r17, 12
	addli r22, zero, 0
	store.d r[3:4], -1824(r30)              # 8-byte Folded Spill
	addli r3, zero, 256
	j .LBB0_9
.LBB0_5:                                # %.split17.thread90
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:86:20
	addli r8, r8, 2
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:73:26
	addli r1, zero, 10
	.loc	1 101 67                        # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:101:67
	addli r27, r13, 1
	addli r26, r22, 1
	addli r28, r25, 1
	addli r11, zero, 128
	addli r13, zero, 1
	.loc	1 73 26                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:73:26
	xsignal r1, 0
	load.d r[9:10], -1808(r30)              # 8-byte Folded Reload
.LBB0_7:                                # %.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:0:26
	loadli.w r22,  -1812(r30)               # 4-byte Folded Reload
	addli r15, zero, 3
	lui r17, 12
.LBB0_8:                                # %.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[4:5], -1824(r30)               # 8-byte Folded Reload
	addli.d r[9:10], r[9:10], 1
	addli r22, r22, 1
	setlt.sl r1, r[9:10], r[4:5]
	beq r1, zero, .LBB0_36
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_17 Depth 2
	loadli.w r1,  32(r30)
	loadli.w r4,  28(r30)
	store.d r[9:10], -1808(r30)             # 8-byte Folded Spill
	.loc	1 54 50 is_stmt 1               # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:54:50
	addli r6, zero, 8
	div.s r1, r9, r1
	div.s r4, r1, r4
	.loc	1 53 22                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:53:22
	div.s r5, r4, r11
	.loc	1 54 41                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:54:41
	slli r1, r5, 3
	.loc	1 54 30 is_stmt 0               # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:54:30
	sub.s r9, r13, r1
	.loc	1 54 50                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:54:50
	min.s r9, r9, r6
	.loc	1 55 40 is_stmt 1               # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:55:40
	mod.s r10, r4, r9
	.loc	1 55 34 is_stmt 0               # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:55:34
	add.s r1, r1, r10
	.loc	1 95 15 is_stmt 1               # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:95:15
	zext_int2long r[6:7], r1
	.loc	1 73 26                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:73:26
	bneq r2, r14, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:0:26
	store.d r[6:7], -1832(r30)              # 8-byte Folded Spill
	.loc	1 73 26                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:73:26
	addli r6, zero, 11
	xwait r6, 0
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26                          # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:0:26
	beq r2, r13, .LBB0_28
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	store.d r[6:7], -1832(r30)              # 8-byte Folded Spill
	bneq r2, r16, .LBB0_15
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r5, zero, 1
	addli r6, zero, 96
	addli r7, zero, 5
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:81:20
	mod.s r1, r8, r19
	.loc	1 89 25                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:89:25
	mod.s r4, r27, r6
	xwait r16, 0
	xwait r7, 0
	lock zero, zero
	addli r27, r27, 1
	.loc	1 81 20                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:81:20
	addli r8, r8, 1
	.loc	1 89 25                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:89:25
	ds_cfg r16, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r23, zero, 13
	.loc	1 81 20                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:81:20
	slli r1, r1, 13
	.loc	1 89 25                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:89:25
	slli r4, r4, 13
	.loc	1 81 20                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:81:20
	add.s r1, r1, r17
	.loc	1 89 25                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:89:25
	shuffle_batch r4, r1, r24, 1
	.loc	1 73 26                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:73:26
	andi r1, r5, 1
	addli r5, zero, 0
	.loc	1 89 25                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:89:25
	unlock zero
	xsignal r15, 0
	xsignal r14, 0
	bneq r1, zero, .LBB0_14
	j .LBB0_31
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:0:25
	slli r5, r5, 7
	.loc	1 73 26 is_stmt 1               # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:73:26
	load.d r[6:7], 8(r30)
	slli r1, r1, 6
	addli r11, zero, 0
	addli r17, zero, 1
	storeli.w r22, -1812(r30)               # 4-byte Folded Spill
	sub.s r4, r4, r5
	mod.s r5, r22, r15
	storeli.w r1, -1848(r30)                # 4-byte Folded Spill
	addli r15, zero, 0
	div.s r4, r4, r9
	slli r5, r5, 14
	zext_int2long r[9:10], r4
	slli r1, r4, 6
	sll.d r[9:10], r[9:10], r12
	storeli.w r1, -1856(r30)                # 4-byte Folded Spill
	sll.d r[9:10], r[9:10], r16
	store.d r[9:10], -1840(r30)             # 8-byte Folded Spill
	add.ul r[9:10], r[6:7], r[9:10]
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:89:25
	addli r6, zero, 9
	xwait r12, 0
	xwait r6, 0
	lock zero, zero
	ds_cfg r16, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r1, r4, r24, 2
	addli r1, zero, 8
	unlock zero
	xsignal r21, 0
	xsignal r1, 0
	.loc	1 73 26                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:73:26
	andi r1, r17, 1
	bneq r1, zero, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:89:25
	add.s r25, r28, r15
	add.s r22, r26, r15
	add.s r13, r27, r15
	.loc	1 86 20                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:86:20
	mod.s r1, r25, r19
	.loc	1 89 25                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:89:25
	mod.s r4, r22, r18
	.loc	1 86 20                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:86:20
	slli r6, r1, 13
	.loc	1 89 25                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:89:25
	slli r1, r4, 13
	.loc	1 86 20                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:86:20
	add.s r4, r6, r20
	beq r2, r21, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:0:20
	bneq r2, r12, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 20                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:86:20
	zext_int2long r[6:7], r11
	xwait r21, 0
	lock zero, r14
	addli r1, zero, 4096
	dma_cfg zero, zero, zero, 0
	add.ul r[6:7], r[9:10], r[6:7]
	dma_cfg zero, r7, zero, 2
	dma_cfg r4, r6, r3, 3
	dma_cfg r3, r1, r24, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:73:26
	andi r1, r17, 1
	bneq r1, zero, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:0:26
	andi r11, r17, 1
	.loc	1 89 25 is_stmt 1               # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:89:25
	bneq r2, r14, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 25 is_stmt 0                # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:0:25
	addli r4, zero, 96
	.loc	1 89 25                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:89:25
	addli r6, zero, 8
	xwait r14, 0
	mod.s r4, r13, r4
	xwait r6, 0
	addli r6, zero, 1
	lock zero, r6
	mm_cfg r23, r24, r23, 0
	mm_cfg r16, r16, r6, 2
	slli r4, r4, 13
	beq r15, zero, .LBB0_24
# %bb.22:                               # %.preheader8
                                        #   in Loop: Header=BB0_17 Depth=2
	mm_acc r5, r4, r1, 8
	j .LBB0_25
.LBB0_23:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 25                          # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:0:25
	bneq r11, zero, .LBB0_26
	j .LBB0_32
.LBB0_24:                               # %.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:89:25
	mm r5, r4, r1, 8
.LBB0_25:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r1, zero, 5
	unlock r6
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	.loc	1 73 26 is_stmt 1               # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:73:26
	beq r11, zero, .LBB0_5
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:89:25
	addli r15, r15, 1
	lui r11, 32
	addli r17, zero, 0
	j .LBB0_17
.LBB0_27:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:86:20
	addli r8, r8, 2
	.loc	1 73 26                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:73:26
	beq r2, r14, .LBB0_6
	j .LBB0_33
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:0:26
	addli r1, zero, 14
	sll.d r[4:5], r[6:7], r1
	load.d r[6:7], 0(r30)
	addli r1, zero, 0
	add.ul r[9:10], r[6:7], r[4:5]
	addli r5, zero, 1
.LBB0_29:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:81:20
	mod.s r4, r8, r19
	.loc	1 86 25                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:86:25
	zext_int2long r[6:7], r1
	.loc	1 81 20                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:81:20
	xwait r15, 0
	lock zero, r14
	addli r8, r8, 1
	dma_cfg zero, zero, zero, 0
	sll.d r[6:7], r[6:7], r16
	add.ul r[6:7], r[9:10], r[6:7]
	slli r1, r4, 13
	dma_cfg zero, r7, zero, 2
	.loc	1 73 26                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:73:26
	andi r4, r5, 1
	addli r5, zero, 0
	.loc	1 81 20                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:81:20
	add.s r1, r1, r17
	dma_cfg r1, r6, r11, 3
	addli r1, zero, 32
	dma_cfg r11, r3, r23, 4
	dma_run zero
	unlock r14
	xsignal r16, 0
	.loc	1 73 26                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:73:26
	bneq r4, zero, .LBB0_29
# %bb.30:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r27, r27, 2
.LBB0_31:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:0:26
	load.d r[9:10], -1808(r30)              # 8-byte Folded Reload
	.loc	1 73 26                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:73:26
	addli r26, r26, 2
	addli r28, r28, 2
	.loc	1 89 25 is_stmt 1               # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:89:25
	j .LBB0_8
.LBB0_32:                               # %.split17.thread88
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:86:20
	addli r8, r8, 2
.LBB0_33:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:0:20
	load.d r[9:10], -1808(r30)              # 8-byte Folded Reload
	.loc	1 101 67 is_stmt 1              # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:101:67
	addli r27, r13, 1
	addli r26, r22, 1
	addli r28, r25, 1
	addli r13, zero, 1
	bneq r2, zero, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_9 Depth=1
	loadli.w r1,  -1856(r30)                # 4-byte Folded Reload
	addli r4, zero, 5
	zext_int2long r[6:7], r1
	addli r1, zero, 960
	store.d r[6:7], -1856(r30)              # 8-byte Folded Spill
	zext_int2long r[9:10], r1
	loadli.w r1,  -1848(r30)                # 4-byte Folded Reload
	load.d r[6:7], -1856(r30)               # 8-byte Folded Reload
	min.ul r[6:7], r[6:7], r[9:10]
	store.d r[6:7], -1864(r30)              # 8-byte Folded Spill
	sext_int2long r[6:7], r1
	addli r1, zero, 18
	store.d r[6:7], -1848(r30)              # 8-byte Folded Spill
	load.d r[6:7], -1864(r30)               # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 64
	store.d r[6:7], -1864(r30)              # 8-byte Folded Spill
	zext_int2long r[6:7], zero
	load.d r[9:10], -1864(r30)              # 8-byte Folded Reload
	store.d r[6:7], -1872(r30)              # 8-byte Folded Spill
	load.d r[6:7], -1856(r30)               # 8-byte Folded Reload
	max.ul r[9:10], r[9:10], r[6:7]
	load.d r[6:7], -1872(r30)               # 8-byte Folded Reload
	store.d r[9:10], -1864(r30)             # 8-byte Folded Spill
	load.d r[9:10], -1848(r30)              # 8-byte Folded Reload
	min.sl r[9:10], r[9:10], r[6:7]
	load.d r[6:7], -1856(r30)               # 8-byte Folded Reload
	store.d r[9:10], -1872(r30)             # 8-byte Folded Spill
	load.d r[9:10], -1864(r30)              # 8-byte Folded Reload
	sub.sl r[6:7], r[9:10], r[6:7]
	zext_int2long r[9:10], r23
	store.d r[6:7], -1856(r30)              # 8-byte Folded Spill
	load.d r[6:7], -1872(r30)               # 8-byte Folded Reload
	store.d r[9:10], -1864(r30)             # 8-byte Folded Spill
	addli.d r[6:7], r[6:7], 64
	store.d r[6:7], -1872(r30)              # 8-byte Folded Spill
	load.d r[6:7], -1856(r30)               # 8-byte Folded Reload
	min.ul r[6:7], r[6:7], r[9:10]
	load.d r[9:10], -1848(r30)              # 8-byte Folded Reload
	store.d r[6:7], -1856(r30)              # 8-byte Folded Spill
	load.d r[6:7], -1872(r30)               # 8-byte Folded Reload
	max.sl r[6:7], r[6:7], r[9:10]
	store.d r[6:7], -1872(r30)              # 8-byte Folded Spill
	load.d r[6:7], -1832(r30)               # 8-byte Folded Reload
	sll.d r[6:7], r[6:7], r1
	addli r1, zero, 10
	store.d r[6:7], -1880(r30)              # 8-byte Folded Spill
	load.d r[6:7], -1872(r30)               # 8-byte Folded Reload
	sub.sl r[6:7], r[6:7], r[9:10]
	load.d r[9:10], 16(r30)
	store.d r[6:7], -1832(r30)              # 8-byte Folded Spill
	load.d r[6:7], -1880(r30)               # 8-byte Folded Reload
	add.ul r[6:7], r[9:10], r[6:7]
	load.d r[9:10], -1832(r30)              # 8-byte Folded Reload
	store.d r[6:7], -1848(r30)              # 8-byte Folded Spill
	load.d r[6:7], -1864(r30)               # 8-byte Folded Reload
	min.sl r[6:7], r[9:10], r[6:7]
	load.d r[9:10], -1840(r30)              # 8-byte Folded Reload
	store.d r[6:7], -1832(r30)              # 8-byte Folded Spill
	load.d r[6:7], -1848(r30)               # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r4
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r13, zero, 1
	add.ul r[9:10], r[6:7], r[9:10]
	load.d r[6:7], -1856(r30)               # 8-byte Folded Reload
	dma_cfg r10, zero, zero, 2
	slli r1, r6, 2
	dma_cfg r9, r5, r1, 3
	addli r1, zero, 4096
	load.d r[5:6], -1832(r30)               # 8-byte Folded Reload
	load.d r[9:10], -1808(r30)              # 8-byte Folded Reload
	dma_cfg r1, r3, r5, 4
	addli r1, zero, 11
	dma_run zero
	unlock r4
	xsignal r1, 0
.LBB0_35:                               # %.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:0:67
	addli r11, zero, 128
	j .LBB0_7
.LBB0_36:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_38
# %bb.37:
	.loc	1 0 0 is_stmt 0                 # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:22:0
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
.LBB0_38:
	.loc	1 22 0 epilogue_begin           # czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py:22:0
	addli sp, sp, 1880
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
	.long	1944                            # 0x798
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
.asciz	"czeuvcht3kar7afrwrkqti46ctxlszw53v23kkgybzoscrbjeuk2.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/ze" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
