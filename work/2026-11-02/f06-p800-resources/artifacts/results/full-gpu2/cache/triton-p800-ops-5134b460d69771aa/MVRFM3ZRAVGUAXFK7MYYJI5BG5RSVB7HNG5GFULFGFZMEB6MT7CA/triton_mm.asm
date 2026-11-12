	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/xw" "cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py"
	.loc	1 22 0                          # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -496
	addli r30, sp, 432
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:73:26
	core_id r2
	loadli.w r9,  32(r30)
	loadli.w r24,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:0:26
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
	ble.s r3, r1, .LBB0_38
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[10:11], r1
	lui r1, 15
	loadli.w r28,  -96(r30)
	loadli.w r27,  -260(r30)
	loadli.w r7,  -356(r30)
	addli r16, zero, 0
	addli r21, zero, 6
	addli r19, zero, 5
	addli r15, zero, 4
	addli r17, zero, 2
	addli r14, zero, 24
	addli r20, zero, 23
	addli r22, zero, 7
	addli r25, zero, 128
	addli r26, zero, 16
	lui r23, 20
	addli r6, zero, 3
	addli r18, zero, 0
	store.d r[3:4], -408(r30)               # 8-byte Folded Spill
	ori r4, r1, 4095
	lui r1, 1023
	lui r3, 1047552
	ori r1, r1, 4095
	store.d r[3:4], -432(r30)               # 8-byte Folded Spill
	storeli.w r1, -372(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split19.us.thread93
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:86:20
	addli r7, r7, 16
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:73:26
	addli r1, zero, 10
	.loc	1 101 67                        # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:101:67
	addli r18, r11, 1
	addli r27, r16, 1
	loadli.w r24,  28(r30)
	loadli.w r9,  32(r30)
	addli r28, r23, 1
	addli r19, zero, 5
	addli r14, zero, 24
	lui r23, 20
	addli r6, zero, 3
	.loc	1 73 26                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:73:26
	xsignal r1, 0
	loadli.w r16,  -388(r30)                # 4-byte Folded Reload
	load.d r[10:11], -384(r30)              # 8-byte Folded Reload
.LBB0_7:                                # %.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:0:26
	load.d r[3:4], -408(r30)                # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 1
	addli r16, r16, 1
	setlt.sl r1, r[10:11], r[3:4]
	beq r1, zero, .LBB0_38
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_17 Depth 2
	div.s r1, r10, r9
	.loc	1 54 30 is_stmt 1               # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:54:30
	addli r5, zero, 32
	.loc	1 54 50 is_stmt 0               # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:54:50
	addli r8, zero, 8
	div.s r3, r1, r24
	.loc	1 53 22 is_stmt 1               # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:53:22
	addli r1, zero, 256
	div.s r4, r3, r1
	.loc	1 54 41                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:54:41
	slli r1, r4, 3
	.loc	1 54 30 is_stmt 0               # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:54:30
	sub.s r5, r5, r1
	.loc	1 54 50                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:54:50
	min.s r8, r5, r8
	.loc	1 55 40 is_stmt 1               # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:55:40
	mod.s r5, r3, r8
	.loc	1 55 34 is_stmt 0               # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:55:34
	add.s r1, r1, r5
	addli r5, zero, 1984
	.loc	1 95 15 is_stmt 1               # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:95:15
	zext_int2long r[12:13], r1
	store.d r[12:13], -400(r30)             # 8-byte Folded Spill
	zext_int2long r[12:13], r5
	.loc	1 73 26                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:73:26
	store.d r[12:13], -368(r30)             # 8-byte Folded Spill
	bneq r2, r15, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r5, zero, 11
	addli r13, zero, 64
	xwait r5, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:0:26
	addli r5, zero, 1
	beq r2, r5, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	addli r13, zero, 64
	bneq r2, r17, .LBB0_15
# %bb.12:                               # %.thread.us25.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 0
.LBB0_13:                               # %.thread.us25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:89:25
	add.s r3, r7, r1
	add.s r4, r18, r1
	xwait r17, 0
	xwait r19, 0
	lock zero, zero
	.loc	1 73 26                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:89:25
	ds_cfg r17, zero, 0
	.loc	1 81 20                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:81:20
	mod.s r3, r3, r20
	.loc	1 89 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:89:25
	mod.s r4, r4, r14
	ds_cfg r25, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r13, zero, 13
	.loc	1 81 20                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:81:20
	slli r3, r3, 15
	.loc	1 89 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:89:25
	slli r4, r4, 15
	.loc	1 81 20                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:81:20
	add.s r3, r3, r23
	.loc	1 89 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:89:25
	shuffle_batch r4, r3, r25, 1
	unlock zero
	xsignal r6, 0
	xsignal r15, 0
	.loc	1 73 26                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:73:26
	bneq r1, r26, .LBB0_13
# %bb.14:                               # %.split19.us.loopexit55
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r27, r27, 16
	addli r28, r28, 16
	.loc	1 89 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:89:25
	add.s r18, r18, r1
	add.s r7, r7, r1
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:0:25
	slli r4, r4, 8
	addli r9, zero, 24
	addli r14, zero, 0
	addli r24, zero, 5
	addli r12, zero, 0
	store.d r[10:11], -384(r30)             # 8-byte Folded Spill
	storeli.w r16, -388(r30)                # 4-byte Folded Spill
	sub.s r3, r3, r4
	mod.s r4, r16, r19
	slli r19, r1, 6
	div.s r3, r3, r8
	zext_int2long r[5:6], r3
	slli r1, r3, 6
	sll.d r[5:6], r[5:6], r21
	.loc	1 73 26 is_stmt 1               # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:73:26
	storeli.w r1, -420(r30)                 # 4-byte Folded Spill
	slli r1, r4, 14
	load.d r[3:4], 8(r30)
	sll.d r[5:6], r[5:6], r17
	add.ul r[3:4], r[3:4], r[5:6]
	store.d r[5:6], -416(r30)               # 8-byte Folded Spill
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:89:25
	addli r5, zero, 9
	xwait r21, 0
	xwait r5, 0
	lock zero, zero
	addli r5, zero, 8
	ds_cfg r17, zero, 0
	ds_cfg r13, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r13, zero, 13
	shuffle_coa r10, r8, r25, 2
	unlock zero
	xsignal r22, 0
	xsignal r5, 0
	.loc	1 73 26                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:73:26
	addli r14, r14, 1
	bneq r14, r26, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:89:25
	add.s r23, r28, r12
	add.s r16, r27, r12
	addli r6, zero, 40
	add.s r11, r18, r12
	.loc	1 86 20                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:86:20
	mod.s r5, r23, r20
	.loc	1 89 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:89:25
	mod.s r6, r16, r6
	slli r10, r6, 15
	.loc	1 86 20                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:86:20
	slli r5, r5, 15
	lui r6, 204
	add.s r8, r5, r6
	beq r2, r22, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:0:20
	bneq r2, r21, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:86:25
	zext_int2long r[5:6], r14
	.loc	1 86 20                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:86:20
	addli r10, zero, 20
	xwait r22, 0
	lock zero, r15
	dma_cfg zero, zero, zero, 0
	sll.d r[5:6], r[5:6], r10
	addli r10, zero, 256
	add.ul r[5:6], r[3:4], r[5:6]
	dma_cfg zero, r6, zero, 2
	dma_cfg r8, r5, r10, 3
	addli r5, zero, 8192
	dma_cfg r10, r5, r25, 4
	dma_run zero
	unlock r15
	xsignal r21, 0
	.loc	1 73 26 is_stmt 1               # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:73:26
	addli r14, r14, 1
	bneq r14, r26, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:89:25
	bneq r2, r15, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 0 is_stmt 0                 # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:0:0
	mod.s r5, r11, r9
	addli r6, zero, 8
	addli r8, zero, 1
	.loc	1 89 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:89:25
	xwait r15, 0
	xwait r6, 0
	lock zero, r8
	mm_cfg r13, r25, r13, 0
	mm_cfg r6, r17, r8, 2
	.loc	1 0 0                           # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:0:0
	slli r5, r5, 15
	.loc	1 89 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:89:25
	beq r12, zero, .LBB0_24
# %bb.22:                               # %.preheader8
                                        #   in Loop: Header=BB0_17 Depth=2
	mm_acc r1, r5, r10, 8
	j .LBB0_25
.LBB0_23:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:73:26
	addli r14, r14, 1
	bneq r14, r26, .LBB0_26
	j .LBB0_33
.LBB0_24:                               # %.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:89:25
	mm r1, r5, r10, 8
.LBB0_25:                               # %.thread6.thread91
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r5, zero, 1
	.loc	1 73 26                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:73:26
	addli r14, r14, 1
	.loc	1 89 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:89:25
	unlock r5
	addli r5, zero, 9
	xsignal r24, 0
	xsignal r5, 0
	.loc	1 73 26                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:73:26
	beq r14, r26, .LBB0_5
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:89:25
	addli r12, r12, 1
	j .LBB0_17
.LBB0_27:                               # %.split19.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:86:20
	addli r7, r7, 16
	.loc	1 73 26                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:73:26
	beq r2, r15, .LBB0_6
	j .LBB0_34
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:0:26
	load.d r[3:4], -400(r30)                # 8-byte Folded Reload
	addli r1, zero, 17
	load.d r[5:6], -432(r30)                # 8-byte Folded Reload
	addli r14, zero, 3
	store.d r[10:11], -384(r30)             # 8-byte Folded Spill
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 0
	and.d r[5:6], r[3:4], r[5:6]
	j .LBB0_30
.LBB0_29:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	.loc	1 81 25 is_stmt 1               # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:81:25
	sub.sl r[10:11], r[8:9], r[11:12]
	addli r12, zero, 2048
	.loc	1 81 20 is_stmt 0               # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:81:20
	sll.d r[8:9], r[8:9], r17
	xwait r14, 0
	lock zero, r15
	dma_cfg zero, zero, zero, 0
	zext_int2long r[23:24], r12
	.loc	1 0 0                           # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:0:0
	add.s r12, r7, r1
	.loc	1 73 26 is_stmt 1               # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:73:26
	addli r1, r1, 1
	.loc	1 81 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:81:25
	div.sl r[10:11], r[10:11], r[23:24]
	.loc	1 81 20 is_stmt 0               # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:81:20
	load.d r[23:24], 0(r30)
	.loc	1 81 0                          # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:81:0
	mod.s r12, r12, r20
	.loc	1 81 20                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:81:20
	add.ul r[8:9], r[23:24], r[8:9]
	dma_cfg zero, r9, zero, 2
	.loc	1 81 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:81:25
	load.d r[23:24], -368(r30)              # 8-byte Folded Reload
	.loc	1 81 0                          # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:81:0
	slli r12, r12, 15
	.loc	1 81 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:81:25
	min.sl r[23:24], r[10:11], r[23:24]
	sub.sl r[10:11], r[23:24], r[10:11]
	lui r23, 20
	.loc	1 81 20                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:81:20
	addli r10, r10, 64
	.loc	1 81 0                          # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:81:0
	add.s r12, r12, r23
	addli r11, zero, 512
	.loc	1 81 20                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:81:20
	dma_cfg r12, r8, r11, 3
	addli r8, zero, 8192
	dma_cfg r11, r8, r10, 4
	dma_run zero
	unlock r15
	xsignal r17, 0
	.loc	1 73 26 is_stmt 1               # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:73:26
	beq r1, r26, .LBB0_32
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:86:25
	zext_int2long r[8:9], r1
	loadli.w r10,  -372(r30)                # 4-byte Folded Reload
	sll.d r[8:9], r[8:9], r22
	zext_int2long r[10:11], r10
	.loc	1 81 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:81:25
	add.ul r[8:9], r[8:9], r[3:4]
	setlt.ul r10, r[10:11], r[8:9]
	addli.d r[11:12], r[5:6], 0
	bneq r10, zero, .LBB0_29
# %bb.31:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	.loc	1 0 25 is_stmt 0                # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:0:25
	zext_int2long r[11:12], zero
	j .LBB0_29
.LBB0_32:                               # %.split19.us.loopexit54
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r9,  32(r30)
	loadli.w r24,  28(r30)
	load.d r[10:11], -384(r30)              # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:73:26
	addli r18, r18, 16
	addli r27, r27, 16
	addli r28, r28, 16
	.loc	1 89 25                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:89:25
	add.s r7, r7, r1
	addli r19, zero, 5
	addli r6, zero, 3
	addli r14, zero, 24
	j .LBB0_7
.LBB0_33:                               # %.split19.us.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:86:20
	addli r7, r7, 16
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:0:20
	addli r8, r19, 0
	.loc	1 101 67 is_stmt 1              # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:101:67
	addli r18, r11, 1
	addli r27, r16, 1
	addli r28, r23, 1
	addli r19, zero, 5
	addli r14, zero, 24
	addli r6, zero, 3
	beq r2, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:0:67
	loadli.w r16,  -388(r30)                # 4-byte Folded Reload
	load.d r[10:11], -384(r30)              # 8-byte Folded Reload
	loadli.w r24,  28(r30)
	loadli.w r9,  32(r30)
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:101:67
	loadli.w r3,  -420(r30)                 # 4-byte Folded Reload
	load.d r[10:11], -368(r30)              # 8-byte Folded Reload
	sext_int2long r[8:9], r8
	addli r16, zero, 19
	zext_int2long r[3:4], r3
	min.ul r[5:6], r[3:4], r[10:11]
	min.sl r[10:11], r[8:9], r[10:11]
	addli.d r[5:6], r[5:6], 64
	addli.d r[10:11], r[10:11], 64
	max.ul r[5:6], r[5:6], r[3:4]
	max.sl r[10:11], r[10:11], r[8:9]
	sub.sl r[3:4], r[5:6], r[3:4]
	zext_int2long r[5:6], r13
	load.d r[12:13], -400(r30)              # 8-byte Folded Reload
	sub.sl r[8:9], r[10:11], r[8:9]
	load.d r[10:11], 16(r30)
	min.ul r[3:4], r[3:4], r[5:6]
	min.sl r[5:6], r[8:9], r[5:6]
	load.d r[8:9], -416(r30)                # 8-byte Folded Reload
	sll.d r[23:24], r[12:13], r16
	slli r3, r3, 2
	add.ul r[10:11], r[10:11], r[23:24]
	loadli.w r24,  28(r30)
	add.ul r[8:9], r[10:11], r[8:9]
	addli r10, zero, 10
	xwait r10, 0
	lock zero, r19
	addli r10, zero, 1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r10, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r1, r3, 3
	addli r1, zero, 256
	addli r3, zero, 8192
	loadli.w r9,  32(r30)
	dma_cfg r3, r1, r5, 4
	addli r1, zero, 11
	dma_run zero
	unlock r19
	addli r6, zero, 3
	xsignal r1, 0
	loadli.w r16,  -388(r30)                # 4-byte Folded Reload
	load.d r[10:11], -384(r30)              # 8-byte Folded Reload
.LBB0_37:                               # %.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67                          # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:0:67
	lui r23, 20
	j .LBB0_7
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py:22:0
	addli sp, sp, 432
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
	.long	496                             # 0x1f0
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
.asciz	"cxw545s3hz5vqpuadszvicimvndveuwramaygv22rj3symugfumg.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/xw" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
