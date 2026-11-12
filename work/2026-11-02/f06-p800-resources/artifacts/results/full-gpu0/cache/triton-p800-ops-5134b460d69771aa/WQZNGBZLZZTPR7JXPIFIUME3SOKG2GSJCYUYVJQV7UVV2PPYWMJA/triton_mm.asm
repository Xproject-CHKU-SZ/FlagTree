	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/rw" "crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py"
	.loc	1 22 0                          # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -288
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:73:26
	core_id r2
	addli r30, sp, 224
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	storeli.w zero, -64(r30)
	storeli.w zero, -148(r30)
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
	sext_int2long r[5:6], r1
	lui r1, 7
	loadli.w r7,  -64(r30)
	loadli.w r8,  -148(r30)
	addli r9, zero, 0
	addli r26, zero, 0
	addli r11, zero, 64
	addli r12, zero, 8
	addli r13, zero, 7
	addli r14, zero, 4
	addli r16, zero, 2
	addli r18, zero, 24
	addli r10, zero, 20
	addli r19, zero, 15
	lui r20, 152
	addli r21, zero, 6
	addli r23, zero, 128
	addli r15, zero, 512
	addli r24, zero, 3
	addli r25, zero, 0
	store.d r[3:4], -200(r30)               # 8-byte Folded Spill
	ori r4, r1, 4095
	lui r1, 127
	lui r3, 1048448
	ori r1, r1, 4095
	store.d r[3:4], -224(r30)               # 8-byte Folded Spill
	storeli.w r1, -164(r30)                 # 4-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split19.us.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:86:20
	addli r25, r25, 8
.LBB0_6:                                #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:0:20
	load.d r[5:6], -176(r30)                # 8-byte Folded Reload
	addli r24, zero, 3
	beq r2, zero, .LBB0_34
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r9,  -180(r30)                 # 4-byte Folded Reload
.LBB0_8:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[3:4], -200(r30)                # 8-byte Folded Reload
	addli.d r[5:6], r[5:6], 1
	addli r9, r9, 1
	addli r26, r17, 0
	setlt.sl r1, r[5:6], r[3:4]
	beq r1, zero, .LBB0_38
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	loadli.w r1,  32(r30)
	loadli.w r3,  28(r30)
	store.d r[5:6], -176(r30)               # 8-byte Folded Spill
	div.s r1, r5, r1
	div.s r3, r1, r3
	.loc	1 53 22 is_stmt 1               # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:53:22
	div.s r4, r3, r11
	.loc	1 54 41                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:54:41
	slli r1, r4, 3
	.loc	1 54 30 is_stmt 0               # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:54:30
	sub.s r5, r12, r1
	.loc	1 54 50                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:54:50
	min.s r5, r5, r12
	.loc	1 55 40 is_stmt 1               # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:55:40
	mod.s r6, r3, r5
	.loc	1 55 34 is_stmt 0               # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:55:34
	add.s r1, r1, r6
	addli r6, zero, 448
	.loc	1 95 15 is_stmt 1               # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:95:15
	zext_int2long r[27:28], r1
	store.d r[27:28], -192(r30)             # 8-byte Folded Spill
	zext_int2long r[27:28], r6
	.loc	1 73 26                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:73:26
	store.d r[27:28], -160(r30)             # 8-byte Folded Spill
	bneq r2, r14, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r6, zero, 11
	xwait r6, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:0:26
	addli r6, zero, 1
	beq r2, r6, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r2, r16, .LBB0_16
# %bb.13:                               # %.thread.us25.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, zero, 0
	addli r5, zero, 5
	lui r6, 32
.LBB0_14:                               # %.thread.us25
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:89:25
	add.s r3, r25, r1
	add.s r4, r26, r1
	xwait r16, 0
	xwait r5, 0
	lock zero, zero
	.loc	1 73 26                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:89:25
	ds_cfg r16, zero, 0
	.loc	1 81 20                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:81:20
	mod.s r3, r3, r19
	.loc	1 89 25                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:89:25
	mod.s r4, r4, r18
	ds_cfg r23, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r11, zero, 13
	.loc	1 81 20                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:81:20
	slli r3, r3, 15
	.loc	1 89 25                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:89:25
	slli r4, r4, 15
	.loc	1 81 20                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:81:20
	add.s r3, r3, r6
	.loc	1 89 25                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:89:25
	shuffle_batch r4, r3, r23, 1
	unlock zero
	xsignal r24, 0
	xsignal r14, 0
	.loc	1 73 26                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:73:26
	bneq r1, r12, .LBB0_14
# %bb.15:                               # %.split19.us.loopexit56
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:0:26
	load.d r[5:6], -176(r30)                # 8-byte Folded Reload
	.loc	1 73 26                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:73:26
	addli r8, r8, 8
	addli r7, r7, 8
	.loc	1 89 25 is_stmt 1               # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:89:25
	add.s r17, r26, r1
	add.s r25, r25, r1
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:0:25
	slli r4, r4, 6
	slli r27, r1, 6
	addli r22, zero, 0
	storeli.w r9, -180(r30)                 # 4-byte Folded Spill
	sub.s r3, r3, r4
	mod.s r4, r9, r14
	div.s r3, r3, r5
	slli r28, r4, 15
	zext_int2long r[5:6], r3
	slli r1, r3, 7
	.loc	1 73 26 is_stmt 1               # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:73:26
	load.d r[3:4], 8(r30)
	sll.d r[5:6], r[5:6], r13
	storeli.w r1, -212(r30)                 # 4-byte Folded Spill
	addli r1, zero, 0
	sll.d r[5:6], r[5:6], r16
	add.ul r[3:4], r[3:4], r[5:6]
	store.d r[5:6], -208(r30)               # 8-byte Folded Spill
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:89:25
	addli r5, zero, 9
	xwait r21, 0
	xwait r5, 0
	lock zero, zero
	ds_cfg r16, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r24, r9, r23, 2
	unlock zero
	xsignal r13, 0
	xsignal r12, 0
	.loc	1 73 26                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:73:26
	addli r22, r22, 1
	bneq r22, r12, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	.loc	1 86 20                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:86:20
	mod.s r5, r7, r19
	.loc	1 89 25                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:89:25
	mod.s r6, r8, r10
	addli r17, r26, 1
	addli r8, r8, 1
	.loc	1 86 20                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:86:20
	addli r7, r7, 1
	slli r5, r5, 16
	.loc	1 89 25                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:89:25
	slli r24, r6, 16
	.loc	1 86 20                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:86:20
	add.s r9, r5, r20
	beq r2, r13, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:0:20
	bneq r2, r21, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:86:25
	zext_int2long r[5:6], r22
	.loc	1 86 20                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:86:20
	addli r24, zero, 19
	xwait r13, 0
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	sll.d r[5:6], r[5:6], r24
	add.ul r[5:6], r[3:4], r[5:6]
	dma_cfg zero, r6, zero, 2
	dma_cfg r9, r5, r15, 3
	addli r5, zero, 4096
	dma_cfg r15, r5, r23, 4
	dma_run zero
	unlock r14
	xsignal r21, 0
	.loc	1 73 26 is_stmt 1               # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:73:26
	addli r22, r22, 1
	bneq r22, r12, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:89:25
	bneq r2, r14, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:0:0
	mod.s r5, r26, r18
	addli r10, zero, 1
	addli r6, zero, 0
	.loc	1 89 25                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:89:25
	xwait r14, 0
	xwait r12, 0
	.loc	1 0 0                           # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:0:0
	slli r9, r5, 15
	addli r5, zero, 1
	.loc	1 89 25                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:89:25
	beq r1, zero, .LBB0_24
.LBB0_23:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r18, r6, 15
	slli r6, r6, 8
	lock zero, r10
	mm_cfg r11, r23, r11, 0
	or r18, r18, r24
	or r6, r6, r28
	mm_cfg r12, r14, r10, 2
	mm_acc r6, r9, r18, 8
	andi r18, r5, 1
	addli r6, zero, 1
	addli r5, zero, 0
	unlock r10
	bneq r18, zero, .LBB0_23
	j .LBB0_25
.LBB0_24:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r18, r6, 15
	slli r6, r6, 8
	lock zero, r10
	mm_cfg r11, r23, r11, 0
	or r18, r18, r24
	or r6, r6, r28
	mm_cfg r12, r14, r10, 2
	mm r6, r9, r18, 8
	andi r18, r5, 1
	addli r6, zero, 1
	addli r5, zero, 0
	unlock r10
	bneq r18, zero, .LBB0_24
.LBB0_25:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r5, zero, 5
	.loc	1 73 26 is_stmt 1               # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:73:26
	addli r22, r22, 1
	addli r18, zero, 24
	addli r10, zero, 20
	.loc	1 89 25                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:89:25
	xsignal r5, 0
	addli r5, zero, 9
	xsignal r5, 0
	bneq r22, r12, .LBB0_27
	j .LBB0_35
.LBB0_26:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:73:26
	addli r22, r22, 1
	beq r22, r12, .LBB0_5
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:89:25
	addli r1, r1, 1
	addli r26, r17, 0
	j .LBB0_18
.LBB0_28:                               # %.split19.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:86:20
	addli r25, r25, 8
	.loc	1 73 26                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:73:26
	bneq r2, r14, .LBB0_6
	j .LBB0_36
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:0:26
	load.d r[3:4], -192(r30)                # 8-byte Folded Reload
	addli r1, zero, 16
	load.d r[5:6], -224(r30)                # 8-byte Folded Reload
	addli r24, zero, 3
	storeli.w r9, -180(r30)                 # 4-byte Folded Spill
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 0
	and.d r[17:18], r[3:4], r[5:6]
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	addli r22, zero, 1024
	.loc	1 81 25 is_stmt 1               # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:81:25
	sub.sl r[9:10], r[5:6], r[9:10]
	.loc	1 81 20 is_stmt 0               # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:81:20
	sll.d r[5:6], r[5:6], r16
	xwait r24, 0
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	zext_int2long r[27:28], r22
	.loc	1 0 0                           # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:0:0
	add.s r22, r25, r1
	.loc	1 73 26 is_stmt 1               # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:73:26
	addli r1, r1, 1
	.loc	1 81 25                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:81:25
	div.sl r[9:10], r[9:10], r[27:28]
	.loc	1 81 20 is_stmt 0               # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:81:20
	load.d r[27:28], 0(r30)
	.loc	1 81 0                          # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:81:0
	mod.s r22, r22, r19
	.loc	1 81 20                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:81:20
	add.ul r[5:6], r[27:28], r[5:6]
	dma_cfg zero, r6, zero, 2
	.loc	1 81 25                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:81:25
	load.d r[27:28], -160(r30)              # 8-byte Folded Reload
	.loc	1 81 0                          # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:81:0
	slli r22, r22, 15
	.loc	1 81 25                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:81:25
	min.sl r[27:28], r[9:10], r[27:28]
	sub.sl r[9:10], r[27:28], r[9:10]
	.loc	1 81 0                          # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:81:0
	lui r27, 32
	add.s r22, r22, r27
	.loc	1 81 20                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:81:20
	addli r9, r9, 64
	dma_cfg r22, r5, r15, 3
	addli r5, zero, 4096
	dma_cfg r15, r5, r9, 4
	dma_run zero
	unlock r14
	xsignal r16, 0
	.loc	1 73 26 is_stmt 1               # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:73:26
	beq r1, r12, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:86:25
	zext_int2long r[5:6], r1
	loadli.w r9,  -164(r30)                 # 4-byte Folded Reload
	sll.d r[5:6], r[5:6], r13
	zext_int2long r[9:10], r9
	.loc	1 81 25                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:81:25
	add.ul r[5:6], r[5:6], r[3:4]
	setlt.ul r22, r[9:10], r[5:6]
	addli.d r[9:10], r[17:18], 0
	bneq r22, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:0:25
	zext_int2long r[9:10], zero
	j .LBB0_30
.LBB0_33:                               # %.split19.us.loopexit55
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r9,  -180(r30)                 # 4-byte Folded Reload
	load.d r[5:6], -176(r30)                # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:73:26
	addli r17, r26, 8
	addli r8, r8, 8
	addli r7, r7, 8
	.loc	1 89 25                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:89:25
	add.s r25, r25, r1
	addli r18, zero, 24
	addli r10, zero, 20
	j .LBB0_37
.LBB0_34:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:101:67
	loadli.w r1,  -212(r30)                 # 4-byte Folded Reload
	sext_int2long r[9:10], r27
	load.d r[26:27], -160(r30)              # 8-byte Folded Reload
	addli r22, zero, 5
	zext_int2long r[3:4], r1
	addli r1, zero, 896
	min.sl r[26:27], r[9:10], r[26:27]
	zext_int2long r[5:6], r1
	addli.d r[26:27], r[26:27], 64
	addli r1, zero, 18
	min.ul r[5:6], r[3:4], r[5:6]
	max.sl r[26:27], r[26:27], r[9:10]
	addli.d r[5:6], r[5:6], 128
	max.ul r[5:6], r[5:6], r[3:4]
	sub.sl r[3:4], r[5:6], r[3:4]
	zext_int2long r[5:6], r23
	min.ul r[3:4], r[3:4], r[5:6]
	sub.sl r[5:6], r[26:27], r[9:10]
	zext_int2long r[26:27], r11
	store.d r[3:4], -160(r30)               # 8-byte Folded Spill
	load.d r[3:4], -192(r30)                # 8-byte Folded Reload
	min.sl r[5:6], r[5:6], r[26:27]
	sll.d r[9:10], r[3:4], r1
	load.d r[3:4], 16(r30)
	addli r1, zero, 10
	add.ul r[9:10], r[3:4], r[9:10]
	load.d r[3:4], -208(r30)                # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r22
	addli r1, zero, 1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r1, zero, 1
	add.ul r[9:10], r[9:10], r[3:4]
	load.d r[3:4], -160(r30)                # 8-byte Folded Reload
	dma_cfg r10, zero, zero, 2
	slli r1, r3, 2
	dma_cfg r9, r28, r1, 3
	addli r1, zero, 4096
	addli r10, zero, 20
	dma_cfg r1, r15, r5, 4
	addli r1, zero, 11
	load.d r[5:6], -176(r30)                # 8-byte Folded Reload
	dma_run zero
	unlock r22
	xsignal r1, 0
	j .LBB0_7
.LBB0_35:                               # %.split19.us.thread94
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:86:20
	addli r25, r25, 8
.LBB0_36:                               # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:73:26
	addli r1, zero, 10
	xsignal r1, 0
	loadli.w r9,  -180(r30)                 # 4-byte Folded Reload
	load.d r[5:6], -176(r30)                # 8-byte Folded Reload
.LBB0_37:                               # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:0:26
	addli r24, zero, 3
	j .LBB0_8
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:22:0
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
	.loc	1 22 0 epilogue_begin           # crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py:22:0
	addli sp, sp, 224
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
	.long	288                             # 0x120
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
.asciz	"crwahypogzyeieipnbkqeoa7py5aoc2qxzhkd32njzkqyo6qln36.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/rw" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
