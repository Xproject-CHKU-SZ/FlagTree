	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/nq" "cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py"
	.loc	1 22 0                          # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -744
	addli r30, sp, 680
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:73:26
	core_id r2
	loadli.w r20,  32(r30)
	loadli.w r21,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:0:26
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
	loadli.w r23,  -612(r30)
	sext_int2long r[26:27], r1
	addli r11, zero, 64
	addli r19, zero, 8
	addli r13, zero, 7
	addli r16, zero, 3
	addli r15, zero, 4
	addli r17, zero, 2
	addli r12, zero, 40
	addli r24, zero, 31
	lui r1, 144
	addli r22, zero, 6
	addli r25, zero, 16
	addli r18, zero, 5
	addli r14, zero, 30
	lui r28, 24
	storeli.w zero, -632(r30)               # 4-byte Folded Spill
	store.d r[3:4], -656(r30)               # 8-byte Folded Spill
	lui r3, 7
	ori r5, r3, 4095
	lui r3, 127
	lui r4, 1048448
	ori r3, r3, 4095
	store.d r[4:5], -680(r30)               # 8-byte Folded Spill
	storeli.w r3, -628(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split19.us.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:86:20
	addli r8, r8, 16
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:73:26
	addli r3, zero, 10
	loadli.w r20,  32(r30)
	loadli.w r21,  28(r30)
	addli r16, zero, 3
	addli r18, zero, 5
	lui r28, 24
	xsignal r3, 0
	load.d r[26:27], -640(r30)              # 8-byte Folded Reload
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:0:26
	load.d r[3:4], -656(r30)                # 8-byte Folded Reload
	addli.d r[26:27], r[26:27], 1
	addli r23, r14, 0
	addli r14, zero, 30
	setlt.sl r3, r[26:27], r[3:4]
	loadli.w r4,  -632(r30)                 # 4-byte Folded Reload
	addli r4, r4, 1
	storeli.w r4, -632(r30)                 # 4-byte Folded Spill
	beq r3, zero, .LBB0_38
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	div.s r3, r26, r20
	div.s r9, r3, r21
	.loc	1 53 22 is_stmt 1               # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:53:22
	div.s r3, r9, r11
	.loc	1 54 41                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:54:41
	slli r5, r3, 3
	.loc	1 54 30 is_stmt 0               # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:54:30
	sub.s r4, r19, r5
	.loc	1 54 50                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:54:50
	min.s r4, r4, r19
	.loc	1 55 40 is_stmt 1               # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:55:40
	mod.s r10, r9, r4
	.loc	1 55 34 is_stmt 0               # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:55:34
	add.s r5, r5, r10
	addli r10, zero, 448
	.loc	1 95 15 is_stmt 1               # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:95:15
	zext_int2long r[20:21], r5
	store.d r[20:21], -648(r30)             # 8-byte Folded Spill
	zext_int2long r[20:21], r10
	.loc	1 73 26                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:73:26
	store.d r[20:21], -624(r30)             # 8-byte Folded Spill
	bneq r2, r15, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r10, zero, 11
	xwait r10, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:0:26
	addli r10, zero, 1
	beq r2, r10, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	addli r10, zero, 48
	bneq r2, r17, .LBB0_15
# %bb.12:                               # %.thread.us25.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 0
.LBB0_13:                               # %.thread.us25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:89:25
	add.s r4, r8, r3
	add.s r5, r23, r3
	xwait r17, 0
	xwait r18, 0
	lock zero, zero
	.loc	1 73 26                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:89:25
	ds_cfg r17, zero, 0
	.loc	1 81 20                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:81:20
	mod.s r4, r4, r14
	.loc	1 89 25                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:89:25
	mod.s r5, r5, r10
	ds_cfg r11, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r11, zero, 13
	.loc	1 81 20                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:81:20
	slli r4, r4, 14
	.loc	1 89 25                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:89:25
	slli r5, r5, 14
	.loc	1 81 20                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:81:20
	add.s r4, r4, r28
	.loc	1 89 25                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:89:25
	shuffle_batch r5, r4, r11, 1
	unlock zero
	xsignal r16, 0
	xsignal r15, 0
	.loc	1 73 26                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:73:26
	bneq r3, r25, .LBB0_13
# %bb.14:                               # %.split19.us.loopexit56
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:0:26
	loadli.w r20,  32(r30)
	loadli.w r21,  28(r30)
	.loc	1 73 26                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:73:26
	addli r7, r7, 16
	addli r6, r6, 16
	.loc	1 89 25 is_stmt 1               # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:89:25
	add.s r14, r23, r3
	add.s r8, r8, r3
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:0:25
	slli r3, r3, 6
	slli r5, r5, 6
	addli r20, zero, 5
	store.d r[26:27], -640(r30)             # 8-byte Folded Spill
	addli r28, zero, 0
	addli r18, zero, 0
	addli r21, zero, 9
	sub.s r3, r9, r3
	storeli.w r5, -668(r30)                 # 4-byte Folded Spill
	div.s r3, r3, r4
	loadli.w r4,  -632(r30)                 # 4-byte Folded Reload
	mod.s r4, r4, r16
	zext_int2long r[9:10], r3
	slli r3, r3, 7
	sll.d r[9:10], r[9:10], r13
	.loc	1 73 26 is_stmt 1               # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:73:26
	storeli.w r3, -672(r30)                 # 4-byte Folded Spill
	slli r16, r4, 15
	load.d r[3:4], 8(r30)
	sll.d r[9:10], r[9:10], r17
	add.ul r[26:27], r[3:4], r[9:10]
	store.d r[9:10], -664(r30)              # 8-byte Folded Spill
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:89:25
	xwait r22, 0
	xwait r21, 0
	lock zero, zero
	addli r3, zero, 128
	ds_cfg r17, zero, 0
	ds_cfg r3, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r3, zero, 13
	shuffle_coa r5, r9, r11, 2
	unlock zero
	xsignal r13, 0
	xsignal r19, 0
	.loc	1 73 26                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:73:26
	addli r28, r28, 1
	bneq r28, r25, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	.loc	1 86 20                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:86:20
	mod.s r3, r6, r24
	.loc	1 89 25                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:89:25
	mod.s r4, r7, r12
	addli r14, r23, 1
	addli r7, r7, 1
	.loc	1 86 20                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:86:20
	addli r6, r6, 1
	slli r3, r3, 15
	.loc	1 89 25                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:89:25
	slli r5, r4, 15
	.loc	1 86 20                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:86:20
	add.s r9, r3, r1
	beq r2, r13, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:0:20
	bneq r2, r22, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 25                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:86:25
	zext_int2long r[3:4], r28
	.loc	1 86 20                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:86:20
	addli r5, zero, 18
	xwait r13, 0
	lock zero, r15
	dma_cfg zero, zero, zero, 0
	sll.d r[3:4], r[3:4], r5
	addli r5, zero, 512
	add.ul r[3:4], r[26:27], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r9, r3, r5, 3
	addli r3, zero, 4096
	dma_cfg r5, r3, r11, 4
	dma_run zero
	unlock r15
	xsignal r22, 0
	.loc	1 73 26 is_stmt 1               # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:73:26
	addli r28, r28, 1
	bneq r28, r25, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:89:25
	bneq r2, r15, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 0 is_stmt 0                 # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:0:0
	addli r3, zero, 48
	addli r10, zero, 1
	addli r4, zero, 0
	.loc	1 89 25                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:89:25
	xwait r15, 0
	xwait r19, 0
	.loc	1 0 0                           # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:0:0
	mod.s r3, r23, r3
	slli r9, r3, 14
	addli r3, zero, 1
	.loc	1 89 25                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:89:25
	beq r18, zero, .LBB0_23
.LBB0_22:                               # %.preheader8
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r19, r4, 14
	slli r4, r4, 8
	lock zero, r10
	mm_cfg r11, r11, r11, 0
	or r19, r19, r5
	or r4, r4, r16
	mm_cfg r15, r15, r10, 2
	mm_acc r4, r9, r19, 8
	andi r19, r3, 1
	addli r4, zero, 1
	addli r3, zero, 0
	unlock r10
	bneq r19, zero, .LBB0_22
	j .LBB0_24
.LBB0_23:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r19, r4, 14
	slli r4, r4, 8
	lock zero, r10
	mm_cfg r11, r11, r11, 0
	or r19, r19, r5
	or r4, r4, r16
	mm_cfg r15, r15, r10, 2
	mm r4, r9, r19, 8
	andi r19, r3, 1
	addli r4, zero, 1
	addli r3, zero, 0
	unlock r10
	bneq r19, zero, .LBB0_23
.LBB0_24:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:73:26
	addli r28, r28, 1
	addli r19, zero, 8
	.loc	1 89 25                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:89:25
	xsignal r20, 0
	xsignal r21, 0
	bneq r28, r25, .LBB0_26
	j .LBB0_5
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:73:26
	addli r28, r28, 1
	beq r28, r25, .LBB0_33
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:89:25
	addli r18, r18, 1
	addli r23, r14, 0
	j .LBB0_17
.LBB0_27:                               # %.split19.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:86:20
	addli r8, r8, 16
	.loc	1 73 26                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:73:26
	beq r2, r15, .LBB0_6
	j .LBB0_34
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:0:26
	load.d r[3:4], -648(r30)                # 8-byte Folded Reload
	store.d r[26:27], -640(r30)             # 8-byte Folded Spill
	lui r12, 24
	addli r28, zero, 30
	addli r5, zero, 0
	sll.d r[26:27], r[3:4], r25
	load.d r[3:4], -680(r30)                # 8-byte Folded Reload
	and.d r[18:19], r[26:27], r[3:4]
	j .LBB0_30
.LBB0_29:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	addli r14, zero, 1024
	.loc	1 81 25 is_stmt 1               # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:81:25
	sub.sl r[9:10], r[3:4], r[9:10]
	.loc	1 81 20 is_stmt 0               # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:81:20
	sll.d r[3:4], r[3:4], r17
	xwait r16, 0
	lock zero, r15
	dma_cfg zero, zero, zero, 0
	zext_int2long r[20:21], r14
	.loc	1 0 0                           # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:0:0
	add.s r14, r8, r5
	.loc	1 73 26 is_stmt 1               # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:73:26
	addli r5, r5, 1
	.loc	1 81 25                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:81:25
	div.sl r[9:10], r[9:10], r[20:21]
	.loc	1 81 20 is_stmt 0               # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:81:20
	load.d r[20:21], 0(r30)
	.loc	1 81 0                          # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:81:0
	mod.s r14, r14, r28
	.loc	1 81 20                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:81:20
	add.ul r[3:4], r[20:21], r[3:4]
	dma_cfg zero, r4, zero, 2
	.loc	1 81 25                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:81:25
	load.d r[20:21], -624(r30)              # 8-byte Folded Reload
	.loc	1 81 0                          # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:81:0
	slli r14, r14, 14
	add.s r14, r14, r12
	.loc	1 81 25                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:81:25
	min.sl r[20:21], r[9:10], r[20:21]
	sub.sl r[9:10], r[20:21], r[9:10]
	.loc	1 81 20                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:81:20
	addli r9, r9, 64
	addli r10, zero, 256
	dma_cfg r14, r3, r10, 3
	addli r3, zero, 4096
	dma_cfg r10, r3, r9, 4
	dma_run zero
	unlock r15
	xsignal r17, 0
	.loc	1 73 26 is_stmt 1               # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:73:26
	beq r5, r25, .LBB0_32
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:86:25
	zext_int2long r[3:4], r5
	loadli.w r9,  -628(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[3:4], r22
	zext_int2long r[9:10], r9
	.loc	1 81 25                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:81:25
	add.ul r[3:4], r[3:4], r[26:27]
	setlt.ul r14, r[9:10], r[3:4]
	addli.d r[9:10], r[18:19], 0
	bneq r14, zero, .LBB0_29
# %bb.31:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	.loc	1 0 25 is_stmt 0                # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:0:25
	zext_int2long r[9:10], zero
	j .LBB0_29
.LBB0_32:                               # %.split19.us.loopexit55
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r20,  32(r30)
	loadli.w r21,  28(r30)
	load.d r[26:27], -640(r30)              # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:73:26
	addli r14, r23, 16
	addli r7, r7, 16
	addli r6, r6, 16
	.loc	1 89 25                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:89:25
	add.s r8, r8, r5
	addli r19, zero, 8
	addli r18, zero, 5
	lui r28, 24
	addli r12, zero, 40
	j .LBB0_7
.LBB0_33:                               # %.split19.us.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:86:20
	addli r8, r8, 16
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:0:20
	load.d r[26:27], -640(r30)              # 8-byte Folded Reload
	addli r18, zero, 5
	lui r28, 24
	beq r2, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r20,  32(r30)
	loadli.w r21,  28(r30)
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67 is_stmt 1              # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:101:67
	loadli.w r3,  -672(r30)                 # 4-byte Folded Reload
	addli r5, zero, 896
	load.d r[20:21], -624(r30)              # 8-byte Folded Reload
	addli r23, zero, 5
	zext_int2long r[9:10], r5
	loadli.w r5,  -668(r30)                 # 4-byte Folded Reload
	zext_int2long r[3:4], r3
	min.ul r[9:10], r[3:4], r[9:10]
	sext_int2long r[18:19], r5
	addli r5, zero, 128
	addli.d r[9:10], r[9:10], 128
	min.sl r[20:21], r[18:19], r[20:21]
	max.ul r[9:10], r[9:10], r[3:4]
	addli.d r[20:21], r[20:21], 64
	sub.sl r[3:4], r[9:10], r[3:4]
	zext_int2long r[9:10], r5
	max.sl r[20:21], r[20:21], r[18:19]
	addli r5, zero, 18
	min.ul r[3:4], r[3:4], r[9:10]
	sub.sl r[9:10], r[20:21], r[18:19]
	zext_int2long r[20:21], r11
	store.d r[3:4], -624(r30)               # 8-byte Folded Spill
	load.d r[3:4], -648(r30)                # 8-byte Folded Reload
	min.sl r[9:10], r[9:10], r[20:21]
	loadli.w r21,  28(r30)
	loadli.w r20,  32(r30)
	sll.d r[18:19], r[3:4], r5
	load.d r[3:4], 16(r30)
	addli r5, zero, 10
	add.ul r[18:19], r[3:4], r[18:19]
	load.d r[3:4], -664(r30)                # 8-byte Folded Reload
	xwait r5, 0
	lock zero, r23
	addli r5, zero, 1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r5, zero, 1
	add.ul r[18:19], r[18:19], r[3:4]
	load.d r[3:4], -624(r30)                # 8-byte Folded Reload
	dma_cfg r19, zero, zero, 2
	slli r3, r3, 2
	addli r4, zero, 4096
	dma_cfg r18, r16, r3, 3
	addli r3, zero, 512
	addli r18, zero, 5
	addli r19, zero, 8
	dma_cfg r4, r3, r9, 4
	addli r3, zero, 11
	dma_run zero
	unlock r18
	xsignal r3, 0
.LBB0_37:                               # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:0:67
	addli r16, zero, 3
	j .LBB0_7
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py:22:0
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
.asciz	"cnq7rbtjtr6ysqvmglcbced6dnq7yx6tjewge7t7wwmrvonx443l.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/nq" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
