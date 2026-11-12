	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/bu" "cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py"
	.loc	1 22 0                          # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -472
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:73:26
	core_id r2
	addli r30, sp, 408
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:0:26
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -88(r30)
	storeli.w zero, -252(r30)
	storeli.w zero, -344(r30)
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
	loadli.w r7,  -88(r30)
	loadli.w r8,  -252(r30)
	loadli.w r9,  -344(r30)
	sext_int2long r[3:4], r3
	addli r16, zero, 0
	sext_int2long r[10:11], r1
	addli r12, zero, 64
	addli r20, zero, 1
	addli r15, zero, 7
	addli r18, zero, 3
	addli r17, zero, 4
	addli r19, zero, 2
	addli r28, zero, 24
	addli r21, zero, 40
	addli r22, zero, 21
	lui r23, 224
	addli r24, zero, 6
	addli r26, zero, 128
	addli r27, zero, 512
	lui r25, 48
	addli r5, zero, 0
	store.d r[3:4], -376(r30)               # 8-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split19.us.thread87
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:86:20
	addli r9, r9, 2
.LBB0_6:                                #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:0:20
	store.d r[10:11], -400(r30)             # 8-byte Folded Spill
	loadli.w r16,  -356(r30)                # 4-byte Folded Reload
	load.d r[10:11], -352(r30)              # 8-byte Folded Reload
	addli r20, zero, 1
	lui r25, 48
	beq r2, zero, .LBB0_32
.LBB0_7:                                # %.thread90
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r28, zero, 24
.LBB0_8:                                # %.thread90
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[3:4], -376(r30)                # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 1
	addli r5, r18, 0
	addli r16, r16, 1
	addli r18, zero, 3
	setlt.sl r1, r[10:11], r[3:4]
	beq r1, zero, .LBB0_36
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	loadli.w r1,  32(r30)
	loadli.w r3,  28(r30)
	.loc	1 54 50 is_stmt 1               # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:54:50
	addli r4, zero, 8
	store.d r[10:11], -352(r30)             # 8-byte Folded Spill
	div.s r1, r10, r1
	div.s r3, r1, r3
	.loc	1 53 22                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:53:22
	div.s r6, r3, r12
	.loc	1 54 41                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:54:41
	slli r1, r6, 3
	.loc	1 54 30 is_stmt 0               # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:54:30
	sub.s r13, r20, r1
	.loc	1 54 50                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:54:50
	min.s r13, r13, r4
	.loc	1 55 40 is_stmt 1               # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:55:40
	mod.s r14, r3, r13
	.loc	1 55 34 is_stmt 0               # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:55:34
	add.s r1, r1, r14
	.loc	1 95 15 is_stmt 1               # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:95:15
	zext_int2long r[10:11], r1
	.loc	1 73 26                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:73:26
	store.d r[10:11], -368(r30)             # 8-byte Folded Spill
	bneq r2, r17, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r4, zero, 11
	xwait r4, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:0:26
	beq r2, r20, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r2, r19, .LBB0_16
# %bb.13:                               # %.thread.us25.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, zero, 1
	addli r6, zero, 5
	addli r13, zero, 22
.LBB0_14:                               # %.thread.us25
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:81:20
	mod.s r3, r9, r13
	.loc	1 89 25                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:89:25
	mod.s r4, r5, r28
	xwait r19, 0
	xwait r6, 0
	lock zero, zero
	addli r5, r5, 1
	.loc	1 81 20                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:81:20
	addli r9, r9, 1
	.loc	1 89 25                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:89:25
	ds_cfg r19, zero, 0
	ds_cfg r12, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg r26, zero, 13
	.loc	1 81 20                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:81:20
	slli r3, r3, 15
	.loc	1 89 25                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:89:25
	slli r4, r4, 15
	.loc	1 81 20                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:81:20
	add.s r3, r3, r25
	.loc	1 89 25                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:89:25
	shuffle_batch r4, r3, r12, 1
	.loc	1 73 26                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:73:26
	andi r3, r1, 1
	addli r1, zero, 0
	.loc	1 89 25                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:89:25
	unlock zero
	xsignal r18, 0
	xsignal r17, 0
	.loc	1 73 26                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:73:26
	bneq r3, zero, .LBB0_14
# %bb.15:                               # %.split19.us.loopexit56
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r8, r8, 2
	addli r7, r7, 2
	addli r18, r5, 0
	j .LBB0_35
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:0:26
	slli r6, r6, 6
	slli r1, r1, 7
	addli r28, zero, 0
	addli r25, zero, 0
	addli r20, zero, 8
	storeli.w r16, -356(r30)                # 4-byte Folded Spill
	sub.s r3, r3, r6
	mod.s r6, r16, r18
	storeli.w r1, -384(r30)                 # 4-byte Folded Spill
	div.s r3, r3, r13
	slli r6, r6, 16
	zext_int2long r[13:14], r3
	slli r1, r3, 7
	.loc	1 73 26                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:73:26
	load.d r[3:4], 8(r30)
	sll.d r[13:14], r[13:14], r15
	storeli.w r1, -392(r30)                 # 4-byte Folded Spill
	sll.d r[10:11], r[13:14], r19
	add.ul r[13:14], r[3:4], r[10:11]
	addli r3, zero, 1
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25 is_stmt 1               # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:89:25
	addli r4, zero, 9
	xwait r24, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r19, zero, 0
	ds_cfg r26, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg r26, zero, 13
	shuffle_coa r1, r16, r12, 2
	unlock zero
	xsignal r15, 0
	xsignal r20, 0
	.loc	1 73 26                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:73:26
	andi r1, r3, 1
	bneq r1, zero, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	.loc	1 86 20                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:86:20
	mod.s r1, r7, r22
	.loc	1 89 25                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:89:25
	mod.s r4, r8, r21
	addli r18, r5, 1
	addli r8, r8, 1
	.loc	1 86 20                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:86:20
	addli r7, r7, 1
	slli r16, r1, 15
	.loc	1 89 25                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:89:25
	slli r1, r4, 15
	.loc	1 86 20                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:86:20
	add.s r16, r16, r23
	beq r2, r15, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:0:20
	bneq r2, r24, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 20                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:86:20
	zext_int2long r[4:5], r28
	xwait r15, 0
	lock zero, r17
	addli r1, zero, 4096
	dma_cfg zero, zero, zero, 0
	add.ul r[4:5], r[13:14], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r16, r4, r27, 3
	dma_cfg r27, r1, r12, 4
	dma_run zero
	unlock r17
	xsignal r24, 0
	.loc	1 73 26 is_stmt 1               # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:73:26
	andi r1, r3, 1
	bneq r1, zero, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:0:26
	andi r3, r3, 1
	.loc	1 89 25 is_stmt 1               # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:89:25
	bneq r2, r17, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 25 is_stmt 0                # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:0:25
	addli r4, zero, 24
	.loc	1 89 25                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:89:25
	xwait r17, 0
	xwait r20, 0
	addli r16, zero, 1
	addli r28, zero, 1
	addli r20, zero, 0
	mod.s r4, r5, r4
	slli r5, r4, 15
	beq r25, zero, .LBB0_24
.LBB0_23:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r4, r20, 14
	slli r20, r20, 8
	lock zero, r16
	mm_cfg r12, r12, r26, 0
	or r4, r4, r1
	or r20, r20, r6
	mm_cfg r17, r17, r16, 2
	mm_acc r20, r5, r4, 8
	andi r4, r28, 1
	addli r20, zero, 1
	addli r28, zero, 0
	unlock r16
	bneq r4, zero, .LBB0_23
	j .LBB0_25
.LBB0_24:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r4, r20, 14
	slli r20, r20, 8
	lock zero, r16
	mm_cfg r12, r12, r26, 0
	or r4, r4, r1
	or r20, r20, r6
	mm_cfg r17, r17, r16, 2
	mm r20, r5, r4, 8
	andi r4, r28, 1
	addli r20, zero, 1
	addli r28, zero, 0
	unlock r16
	bneq r4, zero, .LBB0_24
.LBB0_25:                               # %.thread6.thread88
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r1, zero, 5
	addli r20, zero, 8
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r3, zero, .LBB0_27
	j .LBB0_33
.LBB0_26:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:73:26
	beq r3, zero, .LBB0_5
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:0:26
	addli r3, zero, 0
	.loc	1 89 25 is_stmt 1               # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:89:25
	addli r25, r25, 1
	lui r28, 64
	addli r5, r18, 0
	j .LBB0_18
.LBB0_28:                               # %.split19.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:86:20
	addli r9, r9, 2
	.loc	1 73 26                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:73:26
	bneq r2, r17, .LBB0_6
	j .LBB0_34
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:0:26
	load.d r[3:4], -368(r30)                # 8-byte Folded Reload
	addli r1, zero, 16
	addli r10, zero, 256
	lui r20, 48
	addli r25, zero, 22
	sll.d r[13:14], r[3:4], r1
	load.d r[3:4], 0(r30)
	addli r1, zero, 1
	add.ul r[13:14], r[3:4], r[13:14]
	addli r3, zero, 0
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:81:20
	mod.s r6, r9, r25
	.loc	1 86 25                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:86:25
	zext_int2long r[3:4], r3
	.loc	1 81 20                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:81:20
	xwait r18, 0
	lock zero, r17
	addli r9, r9, 1
	dma_cfg zero, zero, zero, 0
	sll.d r[3:4], r[3:4], r19
	add.ul r[3:4], r[13:14], r[3:4]
	slli r6, r6, 15
	dma_cfg zero, r4, zero, 2
	add.s r6, r6, r20
	dma_cfg r6, r3, r10, 3
	.loc	1 73 26                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:73:26
	andi r4, r1, 1
	addli r3, zero, 64
	addli r1, zero, 0
	.loc	1 81 20                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:81:20
	dma_cfg r10, r27, r26, 4
	dma_run zero
	unlock r17
	xsignal r19, 0
	.loc	1 73 26                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:73:26
	bneq r4, zero, .LBB0_30
# %bb.31:                               # %.split19.us.loopexit55
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:0:26
	load.d r[10:11], -352(r30)              # 8-byte Folded Reload
	.loc	1 73 26                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:73:26
	addli r18, r5, 2
	addli r8, r8, 2
	addli r7, r7, 2
	lui r25, 48
	addli r20, zero, 1
	.loc	1 89 25 is_stmt 1               # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:89:25
	j .LBB0_8
.LBB0_32:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:101:67
	loadli.w r1,  -392(r30)                 # 4-byte Folded Reload
	addli r5, zero, 4096
	zext_int2long r[3:4], r1
	addli r1, zero, 896
	zext_int2long r[13:14], r1
	loadli.w r1,  -384(r30)                 # 4-byte Folded Reload
	min.ul r[10:11], r[3:4], r[13:14]
	sext_int2long r[13:14], r1
	addli r1, zero, 19
	addli.d r[10:11], r[10:11], 128
	store.d r[10:11], -392(r30)             # 8-byte Folded Spill
	zext_int2long r[10:11], zero
	store.d r[10:11], -384(r30)             # 8-byte Folded Spill
	load.d r[10:11], -392(r30)              # 8-byte Folded Reload
	max.ul r[10:11], r[10:11], r[3:4]
	store.d r[10:11], -392(r30)             # 8-byte Folded Spill
	load.d r[10:11], -384(r30)              # 8-byte Folded Reload
	min.sl r[10:11], r[13:14], r[10:11]
	store.d r[10:11], -384(r30)             # 8-byte Folded Spill
	load.d r[10:11], -392(r30)              # 8-byte Folded Reload
	sub.sl r[3:4], r[10:11], r[3:4]
	zext_int2long r[10:11], r26
	store.d r[3:4], -392(r30)               # 8-byte Folded Spill
	load.d r[3:4], -384(r30)                # 8-byte Folded Reload
	addli.d r[3:4], r[3:4], 128
	store.d r[3:4], -408(r30)               # 8-byte Folded Spill
	load.d r[3:4], -392(r30)                # 8-byte Folded Reload
	min.ul r[3:4], r[3:4], r[10:11]
	store.d r[3:4], -384(r30)               # 8-byte Folded Spill
	load.d r[3:4], -408(r30)                # 8-byte Folded Reload
	max.sl r[3:4], r[3:4], r[13:14]
	store.d r[3:4], -392(r30)               # 8-byte Folded Spill
	load.d r[3:4], -368(r30)                # 8-byte Folded Reload
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 10
	store.d r[3:4], -368(r30)               # 8-byte Folded Spill
	load.d r[3:4], -392(r30)                # 8-byte Folded Reload
	sub.sl r[3:4], r[3:4], r[13:14]
	load.d r[13:14], 16(r30)
	store.d r[3:4], -392(r30)               # 8-byte Folded Spill
	load.d r[3:4], -368(r30)                # 8-byte Folded Reload
	add.ul r[13:14], r[13:14], r[3:4]
	load.d r[3:4], -392(r30)                # 8-byte Folded Reload
	min.sl r[3:4], r[3:4], r[10:11]
	load.d r[10:11], -400(r30)              # 8-byte Folded Reload
	xwait r1, 0
	addli r1, zero, 5
	lock zero, r1
	dma_cfg zero, zero, zero, 0
	add.ul r[13:14], r[13:14], r[10:11]
	dma_cfg zero, r20, zero, 1
	load.d r[10:11], -384(r30)              # 8-byte Folded Reload
	dma_cfg r14, zero, zero, 2
	slli r1, r10, 2
	dma_cfg r13, r6, r1, 3
	addli r1, zero, 5
	load.d r[10:11], -352(r30)              # 8-byte Folded Reload
	dma_cfg r5, r27, r3, 4
	dma_run zero
	unlock r1
	addli r1, zero, 11
	xsignal r1, 0
	j .LBB0_7
.LBB0_33:                               # %.split19.us.thread89
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:86:20
	addli r9, r9, 2
.LBB0_34:                               # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:73:26
	addli r1, zero, 10
	addli r20, zero, 1
	addli r28, zero, 24
	lui r25, 48
	xsignal r1, 0
	loadli.w r16,  -356(r30)                # 4-byte Folded Reload
.LBB0_35:                               # %.thread90
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:0:26
	load.d r[10:11], -352(r30)              # 8-byte Folded Reload
	j .LBB0_8
.LBB0_36:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_38
# %bb.37:
	.loc	1 0 0 is_stmt 0                 # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py:22:0
	addli sp, sp, 408
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
	.long	472                             # 0x1d8
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
.asciz	"cbu4s3gyaw3fyyejdnrikpyerd7fyojcpla54f2p6a65ifh56d4o.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/bu" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
