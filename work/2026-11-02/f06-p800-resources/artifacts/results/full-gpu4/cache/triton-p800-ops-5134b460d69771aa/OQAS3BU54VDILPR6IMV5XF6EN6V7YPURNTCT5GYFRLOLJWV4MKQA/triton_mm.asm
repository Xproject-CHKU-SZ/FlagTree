	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/s5" "cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py"
	.loc	1 22 0                          # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -744
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:73:26
	core_id r8
	addli r30, sp, 680
	xsignal_mode_cfg r1
	beq r8, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:0:26
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -124(r30)
	storeli.w zero, -288(r30)
	storeli.w zero, -412(r30)
	storeli.w zero, -608(r30)
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
	sext_int2long r[9:10], r1
	lui r1, 7
	loadli.w r6,  -124(r30)
	loadli.w r7,  -288(r30)
	loadli.w r27,  -412(r30)
	loadli.w r17,  -608(r30)
	addli r11, zero, 64
	addli r12, zero, 8
	addli r13, zero, 7
	addli r14, zero, 4
	addli r18, zero, 1
	addli r26, zero, 40
	addli r19, zero, 30
	lui r20, 152
	addli r23, zero, 6
	addli r21, zero, 3
	addli r24, zero, 128
	addli r28, zero, 5
	addli r16, zero, 2
	addli r22, zero, 0
	store.d r[3:4], -656(r30)               # 8-byte Folded Spill
	ori r4, r1, 4095
	lui r1, 127
	lui r3, 1048448
	ori r1, r1, 4095
	store.d r[3:4], -680(r30)               # 8-byte Folded Spill
	storeli.w r1, -620(r30)                 # 4-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split19.us.thread94
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r27, r1, 0
	.loc	1 86 20 is_stmt 1               # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:86:20
	addli r27, r27, 8
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:73:26
	addli r3, zero, 10
	addli r28, zero, 5
	xsignal r3, 0
	load.d r[9:10], -632(r30)               # 8-byte Folded Reload
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:0:26
	loadli.w r22,  -636(r30)                # 4-byte Folded Reload
	addli r16, zero, 2
.LBB0_8:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[3:4], -656(r30)                # 8-byte Folded Reload
	addli.d r[9:10], r[9:10], 1
	addli r22, r22, 1
	addli r17, r15, 0
	setlt.sl r3, r[9:10], r[3:4]
	beq r3, zero, .LBB0_37
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	loadli.w r3,  32(r30)
	loadli.w r4,  28(r30)
	store.d r[9:10], -632(r30)              # 8-byte Folded Spill
	div.s r3, r9, r3
	div.s r4, r3, r4
	.loc	1 53 22 is_stmt 1               # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:53:22
	div.s r5, r4, r11
	.loc	1 54 41                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:54:41
	slli r3, r5, 3
	.loc	1 54 30 is_stmt 0               # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:54:30
	sub.s r9, r12, r3
	.loc	1 54 50                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:54:50
	min.s r9, r9, r12
	.loc	1 55 40 is_stmt 1               # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:55:40
	mod.s r10, r4, r9
	.loc	1 55 34 is_stmt 0               # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:55:34
	add.s r3, r3, r10
	addli r10, zero, 448
	.loc	1 95 15 is_stmt 1               # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:95:15
	zext_int2long r[1:2], r3
	store.d r[1:2], -648(r30)               # 8-byte Folded Spill
	zext_int2long r[1:2], r10
	.loc	1 73 26                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:73:26
	store.d r[1:2], -616(r30)               # 8-byte Folded Spill
	bneq r8, r14, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r10, zero, 11
	xwait r10, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:0:26
	beq r8, r18, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r8, r16, .LBB0_16
# %bb.13:                               # %.thread.us25.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 0
	addli r9, zero, 48
	lui r10, 32
.LBB0_14:                               # %.thread.us25
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:89:25
	add.s r4, r27, r3
	add.s r5, r17, r3
	xwait r16, 0
	xwait r28, 0
	lock zero, zero
	.loc	1 73 26                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:89:25
	ds_cfg r21, zero, 0
	.loc	1 81 20                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:81:20
	mod.s r4, r4, r19
	.loc	1 89 25                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:89:25
	mod.s r5, r5, r9
	ds_cfg r24, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r11, zero, 13
	.loc	1 81 20                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:81:20
	slli r4, r4, 14
	.loc	1 89 25                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:89:25
	slli r5, r5, 14
	.loc	1 81 20                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:81:20
	add.s r4, r4, r10
	.loc	1 89 25                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:89:25
	shuffle_batch r5, r4, r24, 1
	unlock zero
	xsignal r21, 0
	xsignal r14, 0
	.loc	1 73 26                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:73:26
	bneq r3, r12, .LBB0_14
# %bb.15:                               # %.split19.us.loopexit56
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:0:26
	load.d r[9:10], -632(r30)               # 8-byte Folded Reload
	.loc	1 73 26                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:73:26
	addli r7, r7, 8
	addli r6, r6, 8
	.loc	1 89 25 is_stmt 1               # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:89:25
	add.s r15, r17, r3
	add.s r27, r27, r3
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:0:25
	slli r5, r5, 6
	slli r2, r3, 6
	addli r1, r27, 0
	addli r27, zero, 5
	addli r28, zero, 0
	storeli.w r22, -636(r30)                # 4-byte Folded Spill
	sub.s r4, r4, r5
	mod.s r5, r22, r14
	storeli.w r2, -668(r30)                 # 4-byte Folded Spill
	div.s r4, r4, r9
	slli r22, r5, 15
	addli r5, zero, 0
	zext_int2long r[9:10], r4
	slli r2, r4, 7
	.loc	1 73 26 is_stmt 1               # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:73:26
	load.d r[3:4], 8(r30)
	sll.d r[9:10], r[9:10], r13
	storeli.w r2, -672(r30)                 # 4-byte Folded Spill
	sll.d r[9:10], r[9:10], r18
	add.ul r[3:4], r[3:4], r[9:10]
	store.d r[9:10], -664(r30)              # 8-byte Folded Spill
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:89:25
	addli r10, zero, 9
	xwait r23, 0
	xwait r10, 0
	lock zero, zero
	ds_cfg r21, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r25, r9, r24, 2
	unlock zero
	xsignal r13, 0
	xsignal r12, 0
	.loc	1 73 26                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:73:26
	addli r28, r28, 1
	bneq r28, r12, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	.loc	1 86 20                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:86:20
	mod.s r9, r6, r19
	.loc	1 89 25                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:89:25
	mod.s r10, r7, r26
	addli r15, r17, 1
	addli r7, r7, 1
	.loc	1 86 20                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:86:20
	addli r6, r6, 1
	slli r9, r9, 15
	.loc	1 89 25                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:89:25
	slli r25, r10, 15
	.loc	1 86 20                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:86:20
	add.s r9, r9, r20
	beq r8, r13, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:0:20
	bneq r8, r23, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:86:25
	zext_int2long r[16:17], r28
	.loc	1 86 20                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:86:20
	addli r10, zero, 18
	xwait r13, 0
	lock zero, r14
	addli r2, zero, 256
	dma_cfg r18, r18, zero, 0
	sll.d r[16:17], r[16:17], r10
	add.ul r[16:17], r[3:4], r[16:17]
	dma_cfg zero, r17, zero, 2
	dma_cfg r9, r16, r2, 3
	addli r9, zero, 2048
	dma_cfg r2, r9, r24, 4
	dma_run zero
	unlock r14
	xsignal r23, 0
	.loc	1 73 26 is_stmt 1               # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:73:26
	addli r28, r28, 1
	bneq r28, r12, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:89:25
	bneq r8, r14, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:0:0
	addli r9, zero, 48
	addli r10, zero, 1
	addli r16, zero, 1
	.loc	1 89 25                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:89:25
	xwait r14, 0
	xwait r12, 0
	.loc	1 0 0                           # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:0:0
	mod.s r9, r17, r9
	addli r17, zero, 0
	slli r9, r9, 14
	.loc	1 89 25                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:89:25
	beq r5, zero, .LBB0_24
.LBB0_23:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r26, r17, 14
	slli r17, r17, 8
	lock zero, r10
	mm_cfg r11, r24, r11, 0
	or r26, r26, r25
	or r17, r17, r22
	mm_cfg r14, r14, r10, 2
	mm_acc r17, r9, r26, 5
	andi r26, r16, 1
	addli r17, zero, 1
	addli r16, zero, 0
	unlock r10
	bneq r26, zero, .LBB0_23
	j .LBB0_25
.LBB0_24:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r26, r17, 14
	slli r17, r17, 8
	lock zero, r10
	mm_cfg r11, r24, r11, 0
	or r26, r26, r25
	or r17, r17, r22
	mm_cfg r14, r14, r10, 2
	mm r17, r9, r26, 5
	andi r26, r16, 1
	addli r17, zero, 1
	addli r16, zero, 0
	unlock r10
	bneq r26, zero, .LBB0_24
.LBB0_25:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:73:26
	addli r28, r28, 1
	addli r26, zero, 40
	.loc	1 89 25                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:89:25
	addli r9, zero, 9
	xsignal r27, 0
	xsignal r9, 0
	bneq r28, r12, .LBB0_27
	j .LBB0_5
.LBB0_26:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:73:26
	addli r28, r28, 1
	beq r28, r12, .LBB0_34
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:89:25
	addli r5, r5, 1
	addli r17, r15, 0
	j .LBB0_18
.LBB0_28:                               # %.split19.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:0:25
	addli r27, r1, 0
	.loc	1 86 20 is_stmt 1               # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:86:20
	addli r27, r27, 8
	.loc	1 73 26                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:73:26
	beq r8, r14, .LBB0_6
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:0:26
	load.d r[1:2], -648(r30)                # 8-byte Folded Reload
	addli r3, zero, 16
	load.d r[9:10], -680(r30)               # 8-byte Folded Reload
	addli r23, r27, 0
	addli r5, zero, 0
	storeli.w r22, -636(r30)                # 4-byte Folded Spill
	sll.d r[3:4], r[1:2], r3
	and.d r[25:26], r[3:4], r[9:10]
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	addli r18, zero, 1024
	.loc	1 81 25 is_stmt 1               # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:81:25
	sub.sl r[9:10], r[15:16], r[9:10]
	.loc	1 81 20 is_stmt 0               # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:81:20
	xwait r21, 0
	load.d r[20:21], 0(r30)
	.loc	1 0 0                           # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:0:0
	add.s r22, r23, r5
	.loc	1 81 20                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:81:20
	lock zero, r14
	.loc	1 73 26 is_stmt 1               # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:73:26
	addli r5, r5, 1
	zext_int2long r[27:28], r18
	.loc	1 81 0                          # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:81:0
	mod.s r22, r22, r19
	addli r18, zero, 1
	.loc	1 81 25 is_stmt 0               # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:81:25
	div.sl r[9:10], r[9:10], r[27:28]
	addli r27, zero, 1
	.loc	1 81 20                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:81:20
	sll.d r[15:16], r[15:16], r27
	dma_cfg r27, r27, zero, 0
	add.ul r[15:16], r[20:21], r[15:16]
	.loc	1 81 0                          # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:81:0
	slli r22, r22, 14
	lui r20, 32
	addli r21, zero, 3
	.loc	1 81 20                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:81:20
	dma_cfg zero, r16, zero, 2
	.loc	1 81 0                          # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:81:0
	add.s r22, r22, r20
	.loc	1 81 25                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:81:25
	load.d r[1:2], -616(r30)                # 8-byte Folded Reload
	min.sl r[27:28], r[9:10], r[1:2]
	addli r1, zero, 256
	sub.sl r[9:10], r[27:28], r[9:10]
	.loc	1 81 20                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:81:20
	dma_cfg r22, r15, r1, 3
	addli r16, zero, 2
	addli r9, r9, 64
	addli r10, zero, 2048
	dma_cfg r1, r10, r9, 4
	dma_run zero
	unlock r14
	xsignal r16, 0
	.loc	1 73 26 is_stmt 1               # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:73:26
	beq r5, r12, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:86:25
	zext_int2long r[9:10], r5
	sll.d r[9:10], r[9:10], r13
	.loc	1 81 25                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:81:25
	add.ul r[15:16], r[9:10], r[3:4]
	loadli.w r9,  -620(r30)                 # 4-byte Folded Reload
	zext_int2long r[9:10], r9
	setlt.ul r22, r[9:10], r[15:16]
	addli.d r[9:10], r[25:26], 0
	bneq r22, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:0:25
	zext_int2long r[9:10], zero
	j .LBB0_30
.LBB0_33:                               # %.split19.us.loopexit55
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r27, r23, 0
	load.d r[9:10], -632(r30)               # 8-byte Folded Reload
	loadli.w r22,  -636(r30)                # 4-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:73:26
	addli r15, r17, 8
	addli r7, r7, 8
	addli r6, r6, 8
	addli r26, zero, 40
	addli r28, zero, 5
	lui r20, 152
	addli r23, zero, 6
	.loc	1 89 25                         # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:89:25
	add.s r27, r27, r5
	j .LBB0_8
.LBB0_34:                               # %.split19.us.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:0:25
	addli r27, r1, 0
	.loc	1 86 20 is_stmt 1               # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:86:20
	addli r27, r27, 8
.LBB0_35:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:0:20
	load.d r[9:10], -632(r30)               # 8-byte Folded Reload
	addli r28, zero, 5
	bneq r8, zero, .LBB0_7
# %bb.36:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67 is_stmt 1              # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:101:67
	loadli.w r1,  -672(r30)                 # 4-byte Folded Reload
	addli r5, zero, 896
	load.d r[25:26], -616(r30)              # 8-byte Folded Reload
	addli r18, zero, 1
	zext_int2long r[9:10], r5
	addli r5, zero, 17
	zext_int2long r[3:4], r1
	loadli.w r1,  -668(r30)                 # 4-byte Folded Reload
	min.ul r[9:10], r[3:4], r[9:10]
	sext_int2long r[16:17], r1
	addli.d r[9:10], r[9:10], 128
	min.sl r[25:26], r[16:17], r[25:26]
	max.ul r[9:10], r[9:10], r[3:4]
	addli.d r[25:26], r[25:26], 64
	sub.sl r[3:4], r[9:10], r[3:4]
	zext_int2long r[9:10], r24
	max.sl r[25:26], r[25:26], r[16:17]
	min.ul r[1:2], r[3:4], r[9:10]
	load.d r[3:4], 16(r30)
	sub.sl r[9:10], r[25:26], r[16:17]
	zext_int2long r[25:26], r11
	store.d r[1:2], -616(r30)               # 8-byte Folded Spill
	load.d r[1:2], -648(r30)                # 8-byte Folded Reload
	min.sl r[9:10], r[9:10], r[25:26]
	addli r26, zero, 40
	sll.d r[16:17], r[1:2], r5
	addli r5, zero, 10
	load.d r[1:2], -664(r30)                # 8-byte Folded Reload
	xwait r5, 0
	addli r5, zero, 1
	lock zero, r28
	add.ul r[16:17], r[3:4], r[16:17]
	addli r4, zero, 2048
	dma_cfg r5, zero, zero, 0
	add.ul r[16:17], r[16:17], r[1:2]
	dma_cfg zero, r5, zero, 1
	load.d r[1:2], -616(r30)                # 8-byte Folded Reload
	dma_cfg r17, zero, zero, 2
	slli r3, r1, 2
	dma_cfg r16, r22, r3, 3
	addli r3, zero, 512
	dma_cfg r4, r3, r9, 4
	addli r3, zero, 11
	load.d r[9:10], -632(r30)               # 8-byte Folded Reload
	dma_run zero
	unlock r28
	xsignal r3, 0
	j .LBB0_7
.LBB0_37:                               # %._crit_edge
	.loc	1 22 0                          # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:22:0
	xsignal zero, 0
	bneq r8, zero, .LBB0_39
# %bb.38:
	.loc	1 0 0 is_stmt 0                 # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py:22:0
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
.asciz	"cs54nj7llhtk7qjtzjteljfg2qnk36szod5dmyto27nja5gqpytc.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/s5" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
