	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/sf" "csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py"
	.loc	1 22 0                          # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -744
	addli r30, sp, 680
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:73:26
	core_id r12
	loadli.w r9,  28(r30)
	xsignal_mode_cfg r1
	beq r12, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:0:26
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
	loadli.w r25,  -612(r30)
	sext_int2long r[23:24], r1
	addli r11, zero, 64
	addli r2, zero, 2
	addli r10, zero, 8
	addli r14, zero, 7
	addli r28, zero, 3
	addli r16, zero, 4
	addli r13, zero, 48
	addli r19, zero, 40
	addli r20, zero, 31
	lui r21, 144
	addli r22, zero, 6
	addli r26, zero, 0
	store.d r[3:4], -648(r30)               # 8-byte Folded Spill
	addli r4, zero, 4095
	lui r3, 1048572
	store.d r[3:4], -680(r30)               # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split19.us.thread89
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:86:20
	addli r8, r8, 2
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:73:26
	addli r1, zero, 10
	addli r28, zero, 3
	addli r26, r27, 0
	xsignal r1, 0
	load.d r[23:24], -624(r30)              # 8-byte Folded Reload
.LBB0_7:                                # %.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:0:26
	load.d r[3:4], -648(r30)                # 8-byte Folded Reload
	addli.d r[23:24], r[23:24], 1
	addli r26, r26, 1
	addli r25, r18, 0
	setlt.sl r1, r[23:24], r[3:4]
	beq r1, zero, .LBB0_38
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_36 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	loadli.w r1,  32(r30)
	div.s r1, r23, r1
	div.s r1, r1, r9
	.loc	1 53 22 is_stmt 1               # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:53:22
	div.s r5, r1, r11
	.loc	1 54 41                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:54:41
	slli r3, r5, 3
	.loc	1 54 30 is_stmt 0               # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:54:30
	sub.s r4, r2, r3
	.loc	1 54 50                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:54:50
	min.s r18, r4, r10
	.loc	1 55 40 is_stmt 1               # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:55:40
	mod.s r4, r1, r18
	.loc	1 55 34 is_stmt 0               # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:55:34
	add.s r15, r3, r4
	.loc	1 95 15 is_stmt 1               # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:95:15
	zext_int2long r[2:3], r15
	store.d r[2:3], -640(r30)               # 8-byte Folded Spill
	addli r3, zero, 128
	zext_int2long r[2:3], r3
	.loc	1 73 26                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:73:26
	store.d r[2:3], -632(r30)               # 8-byte Folded Spill
	bneq r12, r16, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 11
	addli r2, zero, 2
	xwait r3, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:0:26
	addli r3, zero, 1
	beq r12, r3, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 2
	bneq r12, r2, .LBB0_15
# %bb.12:                               # %.thread.us25.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
	addli r5, zero, 5
	addli r15, zero, 30
	lui r17, 24
.LBB0_13:                               # %.thread.us25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:81:20
	mod.s r3, r8, r15
	.loc	1 89 25                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:89:25
	mod.s r4, r25, r13
	xwait r2, 0
	xwait r5, 0
	lock zero, zero
	addli r25, r25, 1
	.loc	1 81 20                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:81:20
	addli r8, r8, 1
	.loc	1 89 25                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:89:25
	ds_cfg r2, zero, 0
	ds_cfg r11, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r11, zero, 13
	.loc	1 81 20                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:81:20
	slli r3, r3, 14
	.loc	1 89 25                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:89:25
	slli r4, r4, 14
	.loc	1 81 20                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:81:20
	add.s r3, r3, r17
	.loc	1 89 25                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:89:25
	shuffle_batch r4, r3, r11, 1
	.loc	1 73 26                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:73:26
	andi r3, r1, 1
	addli r1, zero, 0
	.loc	1 89 25                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:89:25
	unlock zero
	xsignal r28, 0
	xsignal r16, 0
	.loc	1 73 26                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:73:26
	bneq r3, zero, .LBB0_13
# %bb.14:                               # %.split19.us.loopexit56
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r7, r7, 2
	addli r6, r6, 2
	addli r18, r25, 0
	.loc	1 89 25                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:89:25
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:0:25
	slli r5, r5, 6
	store.d r[23:24], -624(r30)             # 8-byte Folded Spill
	slli r3, r15, 6
	addli r17, zero, 0
	addli r27, r26, 0
	addli r15, zero, 1
	sub.s r1, r1, r5
	mod.s r5, r26, r28
	storeli.w r3, -664(r30)                 # 4-byte Folded Spill
	.loc	1 73 26 is_stmt 1               # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:73:26
	load.d r[3:4], 8(r30)
	addli r26, zero, 0
	div.s r1, r1, r18
	slli r28, r5, 15
	zext_int2long r[23:24], r1
	slli r1, r1, 7
	sll.d r[23:24], r[23:24], r14
	storeli.w r1, -668(r30)                 # 4-byte Folded Spill
	sll.d r[23:24], r[23:24], r2
	store.d r[23:24], -656(r30)             # 8-byte Folded Spill
	add.ul r[23:24], r[3:4], r[23:24]
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:89:25
	addli r3, zero, 9
	xwait r22, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 128
	ds_cfg r2, zero, 0
	ds_cfg r3, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r3, zero, 13
	shuffle_coa r1, r5, r11, 2
	unlock zero
	xsignal r14, 0
	xsignal r10, 0
	.loc	1 73 26                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:73:26
	andi r1, r15, 1
	bneq r1, zero, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	.loc	1 86 20                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:86:20
	mod.s r1, r6, r20
	.loc	1 89 25                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:89:25
	mod.s r3, r7, r19
	addli r18, r25, 1
	addli r7, r7, 1
	.loc	1 86 20                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:86:20
	addli r6, r6, 1
	slli r4, r1, 15
	.loc	1 89 25                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:89:25
	slli r1, r3, 15
	.loc	1 86 20                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:86:20
	add.s r5, r4, r21
	beq r12, r14, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:0:20
	bneq r12, r22, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 20                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:86:20
	zext_int2long r[3:4], r17
	xwait r14, 0
	lock zero, r16
	addli r1, zero, 512
	dma_cfg zero, zero, zero, 0
	add.ul r[3:4], r[23:24], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r5, r3, r1, 3
	addli r3, zero, 4096
	dma_cfg r1, r3, r11, 4
	dma_run zero
	unlock r16
	xsignal r22, 0
	.loc	1 73 26 is_stmt 1               # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:73:26
	andi r1, r15, 1
	bneq r1, zero, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:0:26
	andi r15, r15, 1
	.loc	1 89 25 is_stmt 1               # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:89:25
	bneq r12, r16, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 25 is_stmt 0                # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:0:25
	mod.s r3, r25, r13
	addli r5, zero, 1
	addli r25, zero, 1
	addli r13, zero, 0
	.loc	1 89 25                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:89:25
	xwait r16, 0
	xwait r10, 0
	slli r17, r3, 14
	beq r26, zero, .LBB0_23
.LBB0_22:                               # %.preheader8
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r3, r13, 14
	slli r4, r13, 8
	lock zero, r5
	addli r13, zero, 1
	mm_cfg r11, r11, r11, 0
	or r3, r3, r1
	or r4, r4, r28
	mm_cfg r16, r16, r5, 2
	mm_acc r4, r17, r3, 8
	andi r3, r25, 1
	addli r25, zero, 0
	unlock r5
	bneq r3, zero, .LBB0_22
	j .LBB0_24
.LBB0_23:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r3, r13, 14
	slli r4, r13, 8
	lock zero, r5
	addli r13, zero, 1
	mm_cfg r11, r11, r11, 0
	or r3, r3, r1
	or r4, r4, r28
	mm_cfg r16, r16, r5, 2
	mm r4, r17, r3, 8
	andi r3, r25, 1
	addli r25, zero, 0
	unlock r5
	bneq r3, zero, .LBB0_23
.LBB0_24:                               # %.thread6.thread88
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r1, zero, 5
	addli r13, zero, 48
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r15, zero, .LBB0_26
	j .LBB0_5
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:73:26
	beq r15, zero, .LBB0_30
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:0:26
	addli r15, zero, 0
	.loc	1 89 25 is_stmt 1               # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:89:25
	addli r26, r26, 1
	lui r17, 64
	addli r25, r18, 0
	j .LBB0_17
.LBB0_27:                               # %.split19.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:86:20
	addli r8, r8, 2
	.loc	1 73 26                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:73:26
	beq r12, r16, .LBB0_6
	j .LBB0_31
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:0:26
	addli r1, zero, 1
	load.d r[9:10], -640(r30)               # 8-byte Folded Reload
	addli r3, zero, 13
	store.d r[23:24], -624(r30)             # 8-byte Folded Spill
	storeli.w r26, -672(r30)                # 4-byte Folded Spill
	setlt.u r5, r1, r15
	sll.d r[23:24], r[9:10], r3
	bneq r5, zero, .LBB0_34
# %bb.29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	zext_int2long r[17:18], zero
	j .LBB0_35
.LBB0_30:                               # %.split19.us.thread87
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:86:20
	addli r8, r8, 2
.LBB0_31:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:0:20
	load.d r[23:24], -624(r30)              # 8-byte Folded Reload
	addli r26, r27, 0
	bneq r12, zero, .LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67 is_stmt 1              # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:101:67
	loadli.w r1,  -668(r30)                 # 4-byte Folded Reload
	zext_int2long r[25:26], r11
	addli r5, zero, 5
	addli r15, zero, 512
	zext_int2long r[3:4], r1
	addli r1, zero, 896
	zext_int2long r[9:10], r1
	loadli.w r1,  -664(r30)                 # 4-byte Folded Reload
	min.ul r[9:10], r[3:4], r[9:10]
	sext_int2long r[23:24], r1
	addli.d r[9:10], r[9:10], 128
	min.sl r[1:2], r[23:24], r[25:26]
	max.ul r[9:10], r[9:10], r[3:4]
	sub.sl r[3:4], r[9:10], r[3:4]
	addli.d r[9:10], r[1:2], 64
	load.d r[1:2], -632(r30)                # 8-byte Folded Reload
	max.sl r[9:10], r[9:10], r[23:24]
	min.ul r[1:2], r[3:4], r[1:2]
	load.d r[3:4], -640(r30)                # 8-byte Folded Reload
	store.d r[1:2], -632(r30)               # 8-byte Folded Spill
	addli r1, zero, 18
	addli r2, zero, 2
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 10
	store.d r[3:4], -640(r30)               # 8-byte Folded Spill
	sub.sl r[3:4], r[9:10], r[23:24]
	load.d r[23:24], -624(r30)              # 8-byte Folded Reload
	load.d r[9:10], -640(r30)               # 8-byte Folded Reload
	store.d r[3:4], -664(r30)               # 8-byte Folded Spill
	load.d r[3:4], 16(r30)
	add.ul r[3:4], r[3:4], r[9:10]
	load.d r[9:10], -664(r30)               # 8-byte Folded Reload
	min.sl r[9:10], r[9:10], r[25:26]
	addli r26, r27, 0
	store.d r[9:10], -640(r30)              # 8-byte Folded Spill
	load.d r[9:10], -656(r30)               # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r5
	addli r1, zero, 1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r1, zero, 1
	add.ul r[3:4], r[3:4], r[9:10]
	load.d r[9:10], -632(r30)               # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r1, r9, 2
	loadli.w r9,  28(r30)
	addli r10, zero, 8
	dma_cfg r3, r28, r1, 3
	addli r1, zero, 4096
	load.d r[3:4], -640(r30)                # 8-byte Folded Reload
	dma_cfg r1, r15, r3, 4
	addli r1, zero, 11
	dma_run zero
	unlock r5
	xsignal r1, 0
.LBB0_33:                               # %.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:0:67
	addli r28, zero, 3
	j .LBB0_7
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	load.d r[3:4], -680(r30)                # 8-byte Folded Reload
	and.d r[17:18], r[23:24], r[3:4]
.LBB0_35:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[19:20], 0(r30)
	load.d r[21:22], -632(r30)              # 8-byte Folded Reload
	addli r15, zero, 0
	lui r2, 24
	addli r12, zero, 2
.LBB0_36:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25 is_stmt 1               # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:86:25
	zext_int2long r[9:10], r15
	.loc	1 81 20                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:81:20
	addli r5, zero, 30
	addli r15, zero, 64
	.loc	1 73 26                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:73:26
	andi r13, r1, 1
	.loc	1 81 20                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:81:20
	xwait r28, 0
	lock zero, r16
	dma_cfg zero, zero, zero, 0
	.loc	1 81 25 is_stmt 0               # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:81:25
	or.d r[9:10], r[23:24], r[9:10]
	.loc	1 81 20                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:81:20
	mod.s r5, r8, r5
	zext_int2long r[26:27], r15
	addli r8, r8, 1
	.loc	1 81 25                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:81:25
	sub.sl r[3:4], r[9:10], r[17:18]
	.loc	1 81 20                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:81:20
	sll.d r[9:10], r[9:10], r12
	.loc	1 81 25                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:81:25
	div.sl r[3:4], r[3:4], r[21:22]
	.loc	1 81 20                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:81:20
	add.ul r[9:10], r[19:20], r[9:10]
	slli r1, r5, 14
	dma_cfg zero, r10, zero, 2
	addli r5, zero, 512
	add.s r1, r1, r2
	.loc	1 81 25                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:81:25
	min.sl r[26:27], r[3:4], r[26:27]
	sub.sl r[3:4], r[26:27], r[3:4]
	addli r26, zero, 256
	.loc	1 81 20                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:81:20
	dma_cfg r1, r9, r26, 3
	addli r3, r3, 64
	addli r1, zero, 0
	dma_cfg r26, r5, r3, 4
	dma_run zero
	unlock r16
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:73:26
	bneq r13, zero, .LBB0_36
# %bb.37:                               # %.split19.us.loopexit55
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:0:26
	loadli.w r9,  28(r30)
	load.d r[23:24], -624(r30)              # 8-byte Folded Reload
	loadli.w r26,  -672(r30)                # 4-byte Folded Reload
	.loc	1 73 26                         # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:73:26
	addli r18, r25, 2
	addli r7, r7, 2
	addli r6, r6, 2
	addli r10, zero, 8
	addli r13, zero, 48
	addli r19, zero, 40
	addli r20, zero, 31
	lui r21, 144
	addli r22, zero, 6
	core_id r12
	addli r2, zero, 2
	.loc	1 89 25 is_stmt 1               # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:89:25
	j .LBB0_7
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0                          # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:22:0
	xsignal zero, 0
	bneq r12, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:22:0
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
	.loc	1 22 0 epilogue_begin           # csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py:22:0
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
.asciz	"csfmyqq5opziht52zrtdzjrhjycmsz4kpwwyqjxec2ljhuswsp22.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/sf" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
