	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/ui" "cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py"
	.loc	1 22 0                          # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -488
	addli r30, sp, 424
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:73:26
	core_id r2
	loadli.w r8,  32(r30)
	loadli.w r6,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:0:26
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -96(r30)
	storeli.w zero, -260(r30)
	storeli.w zero, -356(r30)
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
	ble.s r3, r1, .LBB0_39
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[17:18], r1
	lui r1, 7
	loadli.w r25,  -96(r30)
	loadli.w r27,  -260(r30)
	loadli.w r20,  -356(r30)
	addli r7, zero, 0
	addli r10, zero, 128
	addli r11, zero, 8
	addli r12, zero, 6
	addli r28, zero, 5
	addli r14, zero, 4
	addli r16, zero, 2
	addli r13, zero, 24
	addli r19, zero, 23
	addli r21, zero, 7
	addli r24, zero, 64
	lui r22, 20
	addli r23, zero, 3
	store.d r[3:4], -400(r30)               # 8-byte Folded Spill
	ori r4, r1, 4095
	lui r1, 127
	lui r3, 1048448
	ori r1, r1, 4095
	store.d r[3:4], -424(r30)               # 8-byte Folded Spill
	addli r3, zero, 0
	storeli.w r1, -372(r30)                 # 4-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split19.us.thread93
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:86:20
	addli r20, r20, 8
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:73:26
	addli r1, zero, 10
	loadli.w r15,  32(r30)
	.loc	1 101 67                        # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:101:67
	addli r27, r17, 1
	loadli.w r6,  28(r30)
	addli r3, r13, 1
	addli r25, r26, 1
	addli r28, zero, 5
	.loc	1 73 26                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:73:26
	xsignal r1, 0
	load.d r[17:18], -384(r30)              # 8-byte Folded Reload
	addli r8, r15, 0
.LBB0_7:                                # %.thread94
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:0:26
	addli r13, zero, 24
	lui r22, 20
	addli r23, zero, 3
.LBB0_8:                                # %.thread94
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[4:5], -400(r30)                # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 1
	addli r7, r7, 1
	setlt.sl r1, r[17:18], r[4:5]
	beq r1, zero, .LBB0_39
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	div.s r1, r17, r8
	addli r15, r7, 0
	addli r26, r6, 0
	div.s r8, r1, r6
	.loc	1 53 22 is_stmt 1               # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:53:22
	div.s r4, r8, r10
	.loc	1 54 41                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:54:41
	slli r1, r4, 3
	.loc	1 54 30 is_stmt 0               # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:54:30
	sub.s r5, r11, r1
	.loc	1 54 50                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:54:50
	min.s r5, r5, r11
	.loc	1 55 40 is_stmt 1               # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:55:40
	mod.s r9, r8, r5
	.loc	1 55 34 is_stmt 0               # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:55:34
	add.s r1, r1, r9
	addli r9, zero, 448
	.loc	1 95 15 is_stmt 1               # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:95:15
	zext_int2long r[6:7], r1
	store.d r[6:7], -392(r30)               # 8-byte Folded Spill
	zext_int2long r[6:7], r9
	.loc	1 73 26                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:73:26
	store.d r[6:7], -368(r30)               # 8-byte Folded Spill
	bneq r2, r14, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r6, zero, 11
	addli r7, r15, 0
	xwait r6, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:0:26
	addli r9, zero, 1
	addli r7, r15, 0
	beq r2, r9, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r2, r16, .LBB0_16
# %bb.13:                               # %.thread.us25.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r5, zero, 0
.LBB0_14:                               # %.thread.us25
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:89:25
	add.s r1, r20, r5
	add.s r4, r3, r5
	xwait r16, 0
	xwait r28, 0
	lock zero, zero
	.loc	1 73 26                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:73:26
	addli r5, r5, 1
	.loc	1 89 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:89:25
	ds_cfg r16, zero, 0
	.loc	1 81 20                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:81:20
	mod.s r1, r1, r19
	.loc	1 89 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:89:25
	mod.s r4, r4, r13
	ds_cfg r10, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg r24, zero, 13
	.loc	1 81 20                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:81:20
	slli r1, r1, 15
	.loc	1 89 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:89:25
	slli r4, r4, 15
	.loc	1 81 20                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:81:20
	add.s r1, r1, r22
	.loc	1 89 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:89:25
	shuffle_batch r4, r1, r10, 1
	unlock zero
	xsignal r23, 0
	xsignal r14, 0
	.loc	1 73 26                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:73:26
	bneq r5, r11, .LBB0_14
# %bb.15:                               # %.split19.us.loopexit55
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:0:26
	loadli.w r8,  32(r30)
	.loc	1 73 26                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:73:26
	addli r27, r27, 8
	addli r25, r25, 8
	.loc	1 89 25 is_stmt 1               # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:89:25
	add.s r3, r3, r5
	add.s r20, r20, r5
	addli r6, r26, 0
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:0:25
	slli r4, r4, 7
	slli r1, r1, 6
	addli r6, zero, 24
	addli r15, zero, 0
	addli r23, zero, 5
	store.d r[17:18], -384(r30)             # 8-byte Folded Spill
	sub.s r4, r8, r4
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	div.s r4, r4, r5
	mod.s r5, r7, r28
	addli r28, zero, 0
	zext_int2long r[8:9], r4
	slli r1, r4, 6
	slli r22, r5, 14
	.loc	1 73 26 is_stmt 1               # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:73:26
	load.d r[4:5], 8(r30)
	sll.d r[8:9], r[8:9], r12
	storeli.w r1, -416(r30)                 # 4-byte Folded Spill
	sll.d r[8:9], r[8:9], r16
	store.d r[8:9], -408(r30)               # 8-byte Folded Spill
	add.ul r[8:9], r[4:5], r[8:9]
	addli r5, zero, 40
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:89:25
	addli r4, zero, 9
	xwait r12, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r16, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r18, r1, r10, 2
	unlock zero
	xsignal r21, 0
	xsignal r11, 0
	.loc	1 73 26                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:73:26
	addli r15, r15, 1
	bneq r15, r11, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:89:25
	add.s r26, r25, r28
	add.s r17, r27, r28
	add.s r13, r3, r28
	.loc	1 86 20                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:86:20
	mod.s r1, r26, r19
	.loc	1 89 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:89:25
	mod.s r4, r17, r5
	slli r18, r4, 15
	.loc	1 86 20                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:86:20
	slli r1, r1, 15
	lui r4, 204
	add.s r1, r1, r4
	beq r2, r21, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:0:20
	bneq r2, r12, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:86:25
	zext_int2long r[4:5], r15
	.loc	1 86 20                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:86:20
	addli r18, zero, 19
	xwait r21, 0
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	sll.d r[4:5], r[4:5], r18
	addli r18, zero, 256
	add.ul r[4:5], r[8:9], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r1, r4, r18, 3
	addli r1, zero, 4096
	addli r5, zero, 40
	dma_cfg r18, r1, r10, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:73:26
	addli r15, r15, 1
	bneq r15, r11, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:89:25
	bneq r2, r14, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:0:0
	mod.s r1, r13, r6
	addli r4, zero, 1
	.loc	1 89 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:89:25
	xwait r14, 0
	xwait r11, 0
	lock zero, r4
	mm_cfg r24, r10, r24, 0
	mm_cfg r11, r16, r4, 2
	.loc	1 0 0                           # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:0:0
	slli r1, r1, 15
	.loc	1 89 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:89:25
	beq r28, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r22, r1, r18, 8
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:73:26
	addli r15, r15, 1
	bneq r15, r11, .LBB0_27
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:89:25
	mm r22, r1, r18, 8
.LBB0_26:                               # %.thread6.thread91
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r1, zero, 1
	.loc	1 73 26                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:73:26
	addli r15, r15, 1
	.loc	1 89 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:89:25
	unlock r1
	addli r1, zero, 9
	xsignal r23, 0
	xsignal r1, 0
	.loc	1 73 26                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:73:26
	beq r15, r11, .LBB0_5
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:89:25
	addli r28, r28, 1
	j .LBB0_18
.LBB0_28:                               # %.split19.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:86:20
	addli r20, r20, 8
	.loc	1 73 26                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:73:26
	beq r2, r14, .LBB0_6
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:0:26
	load.d r[4:5], -392(r30)                # 8-byte Folded Reload
	addli r1, zero, 16
	addli r15, zero, 3
	lui r26, 20
	addli r13, zero, 0
	store.d r[17:18], -384(r30)             # 8-byte Folded Spill
	storeli.w r7, -408(r30)                 # 4-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	load.d r[4:5], -424(r30)                # 8-byte Folded Reload
	and.d r[22:23], r[8:9], r[4:5]
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	addli r1, zero, 1024
	.loc	1 81 25 is_stmt 1               # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:81:25
	sub.sl r[17:18], r[4:5], r[17:18]
	.loc	1 81 20 is_stmt 0               # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:81:20
	sll.d r[4:5], r[4:5], r16
	xwait r15, 0
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	zext_int2long r[6:7], r1
	.loc	1 0 0                           # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:0:0
	add.s r1, r20, r13
	.loc	1 73 26 is_stmt 1               # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:73:26
	addli r13, r13, 1
	.loc	1 81 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:81:25
	div.sl r[6:7], r[17:18], r[6:7]
	.loc	1 81 20 is_stmt 0               # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:81:20
	load.d r[17:18], 0(r30)
	.loc	1 81 0                          # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:81:0
	mod.s r1, r1, r19
	.loc	1 81 20                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:81:20
	add.ul r[4:5], r[17:18], r[4:5]
	dma_cfg zero, r5, zero, 2
	.loc	1 81 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:81:25
	load.d r[17:18], -368(r30)              # 8-byte Folded Reload
	.loc	1 81 0                          # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:81:0
	slli r1, r1, 15
	add.s r1, r1, r26
	.loc	1 81 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:81:25
	min.sl r[17:18], r[6:7], r[17:18]
	sub.sl r[6:7], r[17:18], r[6:7]
	.loc	1 81 20                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:81:20
	addli r6, r6, 64
	addli r7, zero, 512
	dma_cfg r1, r4, r7, 3
	addli r1, zero, 4096
	dma_cfg r7, r1, r6, 4
	dma_run zero
	unlock r14
	xsignal r16, 0
	.loc	1 73 26 is_stmt 1               # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:73:26
	beq r13, r11, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:86:25
	zext_int2long r[4:5], r13
	loadli.w r1,  -372(r30)                 # 4-byte Folded Reload
	sll.d r[4:5], r[4:5], r21
	zext_int2long r[17:18], r1
	.loc	1 81 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:81:25
	add.ul r[4:5], r[4:5], r[8:9]
	setlt.ul r1, r[17:18], r[4:5]
	addli.d r[17:18], r[22:23], 0
	bneq r1, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:0:25
	zext_int2long r[17:18], zero
	j .LBB0_30
.LBB0_33:                               # %.split19.us.loopexit54
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r1,  32(r30)
	loadli.w r6,  28(r30)
	loadli.w r7,  -408(r30)                 # 4-byte Folded Reload
	load.d r[17:18], -384(r30)              # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:73:26
	addli r3, r3, 8
	addli r27, r27, 8
	addli r25, r25, 8
	.loc	1 89 25                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:89:25
	add.s r20, r20, r13
	addli r8, r1, 0
	j .LBB0_7
.LBB0_34:                               # %.split19.us.thread90
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:86:20
	addli r20, r20, 8
.LBB0_35:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:0:20
	loadli.w r15,  32(r30)
	.loc	1 101 67 is_stmt 1              # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:101:67
	addli r3, r13, 1
	addli r27, r17, 1
	addli r25, r26, 1
	addli r28, zero, 5
	addli r23, zero, 3
	addli r8, r15, 0
	beq r2, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:0:67
	load.d r[17:18], -384(r30)              # 8-byte Folded Reload
	loadli.w r6,  28(r30)
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:101:67
	loadli.w r1,  -416(r30)                 # 4-byte Folded Reload
	addli r13, r7, 0
	load.d r[17:18], -368(r30)              # 8-byte Folded Reload
	addli r15, r8, 0
	zext_int2long r[4:5], r1
	addli r1, zero, 960
	zext_int2long r[6:7], r1
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	min.ul r[6:7], r[4:5], r[6:7]
	sext_int2long r[8:9], r1
	addli r1, zero, 18
	addli.d r[6:7], r[6:7], 64
	min.sl r[17:18], r[8:9], r[17:18]
	max.ul r[6:7], r[6:7], r[4:5]
	addli.d r[17:18], r[17:18], 64
	sub.sl r[4:5], r[6:7], r[4:5]
	zext_int2long r[6:7], r24
	max.sl r[17:18], r[17:18], r[8:9]
	min.ul r[4:5], r[4:5], r[6:7]
	sub.sl r[8:9], r[17:18], r[8:9]
	load.d r[17:18], 16(r30)
	store.d r[4:5], -368(r30)               # 8-byte Folded Spill
	load.d r[4:5], -392(r30)                # 8-byte Folded Reload
	min.sl r[6:7], r[8:9], r[6:7]
	addli r8, r15, 0
	sll.d r[4:5], r[4:5], r1
	addli r1, zero, 10
	add.ul r[4:5], r[17:18], r[4:5]
	load.d r[17:18], -408(r30)              # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r28
	addli r1, zero, 1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r1, zero, 1
	add.ul r[4:5], r[4:5], r[17:18]
	load.d r[17:18], -368(r30)              # 8-byte Folded Reload
	dma_cfg r5, zero, zero, 2
	slli r1, r17, 2
	dma_cfg r4, r22, r1, 3
	addli r1, zero, 256
	addli r4, zero, 4096
	dma_cfg r4, r1, r6, 4
	addli r1, zero, 11
	dma_run zero
	unlock r28
	loadli.w r6,  28(r30)
	addli r7, r13, 0
	xsignal r1, 0
	load.d r[17:18], -384(r30)              # 8-byte Folded Reload
.LBB0_38:                               # %.thread94
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67                          # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:0:67
	addli r13, zero, 24
	lui r22, 20
	j .LBB0_8
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py:22:0
	addli sp, sp, 424
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
	.long	488                             # 0x1e8
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
.asciz	"cuiadfvfoahf3mi5o7qvdmkvszriawuul22rbqi5blybweyhnxiw.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/ui" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
