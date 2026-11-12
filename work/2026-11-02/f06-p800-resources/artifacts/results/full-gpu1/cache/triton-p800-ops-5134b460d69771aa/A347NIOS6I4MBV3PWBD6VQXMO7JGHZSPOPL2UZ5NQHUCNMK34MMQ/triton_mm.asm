	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/fj" "cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py"
	.loc	1 22 0                          # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -464
	addli r30, sp, 400
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:73:26
	core_id r2
	loadli.w r6,  32(r30)
	loadli.w r10,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:0:26
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -80(r30)
	storeli.w zero, -244(r30)
	storeli.w zero, -328(r30)
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
	loadli.w r7,  -80(r30)
	loadli.w r8,  -244(r30)
	loadli.w r17,  -328(r30)
	sext_int2long r[19:20], r1
	addli r14, zero, 0
	addli r12, zero, 64
	addli r13, zero, 4
	addli r15, zero, 7
	addli r11, zero, 5
	addli r9, zero, 2
	addli r1, zero, 40
	addli r21, zero, 19
	lui r22, 240
	addli r23, zero, 6
	addli r25, zero, 128
	addli r26, zero, 16
	addli r27, zero, 20
	lui r28, 80
	addli r16, zero, 3
	addli r24, zero, 0
	store.d r[3:4], -376(r30)               # 8-byte Folded Spill
	lui r3, 15
	ori r5, r3, 4095
	lui r3, 127
	lui r4, 1048448
	ori r3, r3, 4095
	store.d r[4:5], -400(r30)               # 8-byte Folded Spill
	storeli.w r3, -348(r30)                 # 4-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split19.us.thread94
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r17,  -336(r30)                # 4-byte Folded Reload
	.loc	1 86 20 is_stmt 1               # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:86:20
	addli r17, r17, 16
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:73:26
	addli r3, zero, 10
	loadli.w r27,  32(r30)
	loadli.w r28,  28(r30)
	addli r11, zero, 5
	xsignal r3, 0
	loadli.w r14,  -352(r30)                # 4-byte Folded Reload
	load.d r[19:20], -360(r30)              # 8-byte Folded Reload
	addli r6, r27, 0
	addli r10, r28, 0
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:0:26
	addli r27, zero, 20
	lui r28, 80
.LBB0_8:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[3:4], -376(r30)                # 8-byte Folded Reload
	addli.d r[19:20], r[19:20], 1
	addli r24, r16, 0
	addli r14, r14, 1
	addli r16, zero, 3
	setlt.sl r3, r[19:20], r[3:4]
	beq r3, zero, .LBB0_39
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	div.s r3, r19, r6
	storeli.w r17, -336(r30)                # 4-byte Folded Spill
	div.s r4, r3, r10
	.loc	1 54 50 is_stmt 1               # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:54:50
	addli r10, zero, 8
	.loc	1 53 22                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:53:22
	div.s r6, r4, r12
	.loc	1 54 41                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:54:41
	slli r3, r6, 3
	.loc	1 54 30 is_stmt 0               # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:54:30
	sub.s r5, r13, r3
	.loc	1 54 50                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:54:50
	min.s r10, r5, r10
	.loc	1 55 40 is_stmt 1               # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:55:40
	mod.s r5, r4, r10
	.loc	1 55 34 is_stmt 0               # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:55:34
	add.s r3, r3, r5
	addli r5, zero, 384
	.loc	1 95 15 is_stmt 1               # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:95:15
	zext_int2long r[17:18], r3
	store.d r[17:18], -368(r30)             # 8-byte Folded Spill
	zext_int2long r[17:18], r5
	.loc	1 73 26                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:73:26
	store.d r[17:18], -344(r30)             # 8-byte Folded Spill
	bneq r2, r13, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r5, zero, 11
	xwait r5, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:0:26
	addli r5, zero, 1
	beq r2, r5, .LBB0_32
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r2, r9, .LBB0_16
# %bb.13:                               # %.thread.us25.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r17,  -336(r30)                # 4-byte Folded Reload
	addli r3, zero, 0
	addli r6, zero, 24
.LBB0_14:                               # %.thread.us25
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:89:25
	add.s r4, r17, r3
	add.s r5, r24, r3
	xwait r9, 0
	xwait r11, 0
	lock zero, zero
	.loc	1 73 26                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:89:25
	ds_cfg r9, zero, 0
	.loc	1 81 20                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:81:20
	mod.s r4, r4, r27
	.loc	1 89 25                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:89:25
	mod.s r5, r5, r6
	ds_cfg r12, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg r25, zero, 13
	.loc	1 81 20                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:81:20
	slli r4, r4, 15
	.loc	1 89 25                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:89:25
	slli r5, r5, 15
	.loc	1 81 20                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:81:20
	add.s r4, r4, r28
	.loc	1 89 25                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:89:25
	shuffle_batch r5, r4, r12, 1
	unlock zero
	xsignal r16, 0
	xsignal r13, 0
	.loc	1 73 26                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:73:26
	bneq r3, r26, .LBB0_14
# %bb.15:                               # %.split19.us.loopexit56
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:0:26
	loadli.w r6,  32(r30)
	loadli.w r10,  28(r30)
	.loc	1 73 26                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:73:26
	addli r8, r8, 16
	addli r7, r7, 16
	.loc	1 89 25 is_stmt 1               # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:89:25
	add.s r16, r24, r3
	add.s r17, r17, r3
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:0:25
	slli r6, r6, 6
	slli r18, r3, 7
	store.d r[19:20], -360(r30)             # 8-byte Folded Spill
	addli r27, zero, 24
	addli r5, zero, 0
	storeli.w r14, -352(r30)                # 4-byte Folded Spill
	addli r28, zero, 5
	addli r20, zero, 8
	sub.s r4, r4, r6
	mod.s r6, r14, r11
	addli r14, zero, 0
	div.s r4, r4, r10
	slli r19, r6, 16
	zext_int2long r[10:11], r4
	slli r3, r4, 7
	sll.d r[10:11], r[10:11], r15
	.loc	1 73 26 is_stmt 1               # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:73:26
	storeli.w r3, -388(r30)                 # 4-byte Folded Spill
	load.d r[3:4], 8(r30)
	sll.d r[10:11], r[10:11], r9
	add.ul r[3:4], r[3:4], r[10:11]
	store.d r[10:11], -384(r30)             # 8-byte Folded Spill
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:89:25
	addli r10, zero, 9
	xwait r23, 0
	xwait r10, 0
	lock zero, zero
	ds_cfg r9, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg r25, zero, 13
	shuffle_coa r6, r17, r12, 2
	unlock zero
	xsignal r15, 0
	xsignal r20, 0
	.loc	1 73 26                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:73:26
	addli r5, r5, 1
	beq r5, r26, .LBB0_29
.LBB0_18:                               # %.split.backedge
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:89:25
	addli r14, r14, 1
	addli r24, r16, 0
.LBB0_19:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 86 20                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:86:20
	mod.s r6, r7, r21
	.loc	1 89 25                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:89:25
	mod.s r10, r8, r1
	addli r16, r24, 1
	addli r8, r8, 1
	.loc	1 86 20                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:86:20
	addli r7, r7, 1
	slli r11, r6, 15
	.loc	1 89 25                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:89:25
	slli r6, r10, 15
	.loc	1 86 20                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:86:20
	add.s r17, r11, r22
	beq r2, r15, .LBB0_17
# %bb.20:                               # %.split
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 20 is_stmt 0                # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:0:20
	bneq r2, r23, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 86 25                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:86:25
	zext_int2long r[10:11], r5
	.loc	1 86 20                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:86:20
	addli r6, zero, 18
	xwait r15, 0
	lock zero, r13
	dma_cfg zero, zero, zero, 0
	sll.d r[10:11], r[10:11], r6
	addli r6, zero, 512
	add.ul r[10:11], r[3:4], r[10:11]
	dma_cfg zero, r11, zero, 2
	dma_cfg r17, r10, r6, 3
	addli r10, zero, 4096
	dma_cfg r6, r10, r12, 4
	dma_run zero
	unlock r13
	xsignal r23, 0
	.loc	1 73 26 is_stmt 1               # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:73:26
	addli r5, r5, 1
	bneq r5, r26, .LBB0_18
	j .LBB0_29
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:89:25
	bneq r2, r13, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 0 is_stmt 0                 # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:0:0
	mod.s r10, r24, r27
	addli r24, zero, 1
	addli r11, zero, 0
	.loc	1 89 25                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:89:25
	xwait r13, 0
	xwait r20, 0
	.loc	1 0 0                           # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:0:0
	slli r17, r10, 15
	addli r10, zero, 1
	.loc	1 89 25                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:89:25
	beq r14, zero, .LBB0_25
.LBB0_24:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r20, r11, 14
	slli r11, r11, 8
	lock zero, r24
	mm_cfg r12, r12, r25, 0
	or r20, r20, r6
	or r11, r11, r19
	mm_cfg r13, r13, r24, 2
	mm_acc r11, r17, r20, 8
	andi r20, r10, 1
	addli r11, zero, 1
	addli r10, zero, 0
	unlock r24
	bneq r20, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r20, r11, 14
	slli r11, r11, 8
	lock zero, r24
	mm_cfg r12, r12, r25, 0
	or r20, r20, r6
	or r11, r11, r19
	mm_cfg r13, r13, r24, 2
	mm r11, r17, r20, 8
	andi r20, r10, 1
	addli r11, zero, 1
	addli r10, zero, 0
	unlock r24
	bneq r20, zero, .LBB0_25
.LBB0_26:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 73 26 is_stmt 1               # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:73:26
	addli r5, r5, 1
	addli r20, zero, 8
	.loc	1 89 25                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:89:25
	addli r6, zero, 9
	xsignal r28, 0
	xsignal r6, 0
	bneq r5, r26, .LBB0_18
	j .LBB0_5
.LBB0_27:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 73 26                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:73:26
	addli r5, r5, 1
	bneq r5, r26, .LBB0_18
# %bb.28:                               # %.split19.us.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:0:26
	loadli.w r17,  -336(r30)                # 4-byte Folded Reload
	.loc	1 86 20 is_stmt 1               # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:86:20
	addli r17, r17, 16
	j .LBB0_30
.LBB0_29:                               # %.split19.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:0:20
	loadli.w r17,  -336(r30)                # 4-byte Folded Reload
	.loc	1 86 20                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:86:20
	addli r17, r17, 16
	.loc	1 73 26 is_stmt 1               # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:73:26
	beq r2, r13, .LBB0_6
.LBB0_30:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:0:26
	loadli.w r14,  -352(r30)                # 4-byte Folded Reload
	addli r11, zero, 5
	beq r2, zero, .LBB0_37
# %bb.31:                               #   in Loop: Header=BB0_9 Depth=1
	loadli.w r27,  32(r30)
	loadli.w r28,  28(r30)
	addli r6, r27, 0
	addli r10, r28, 0
	j .LBB0_38
.LBB0_32:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[4:5], -368(r30)                # 8-byte Folded Reload
	addli r3, zero, 17
	addli r21, zero, 3
	lui r22, 80
	addli r1, zero, 20
	store.d r[19:20], -360(r30)             # 8-byte Folded Spill
	storeli.w r14, -352(r30)                # 4-byte Folded Spill
	sll.d r[3:4], r[4:5], r3
	load.d r[5:6], -400(r30)                # 8-byte Folded Reload
	and.d r[27:28], r[3:4], r[5:6]
	addli r5, zero, 0
	j .LBB0_34
.LBB0_33:                               # %.thread.us
                                        #   in Loop: Header=BB0_34 Depth=2
	addli r6, zero, 1024
	.loc	1 81 25 is_stmt 1               # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:81:25
	sub.sl r[16:17], r[10:11], r[16:17]
	.loc	1 81 20 is_stmt 0               # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:81:20
	sll.d r[10:11], r[10:11], r9
	zext_int2long r[19:20], r6
	.loc	1 0 0                           # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:0:0
	loadli.w r6,  -336(r30)                 # 4-byte Folded Reload
	.loc	1 81 20                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:81:20
	xwait r21, 0
	lock zero, r13
	dma_cfg zero, zero, zero, 0
	.loc	1 81 25                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:81:25
	div.sl r[16:17], r[16:17], r[19:20]
	.loc	1 81 20                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:81:20
	load.d r[19:20], 0(r30)
	.loc	1 0 0                           # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:0:0
	add.s r6, r6, r5
	.loc	1 73 26 is_stmt 1               # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:73:26
	addli r5, r5, 1
	.loc	1 81 20                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:81:20
	add.ul r[10:11], r[19:20], r[10:11]
	.loc	1 81 0 is_stmt 0                # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:81:0
	mod.s r6, r6, r1
	.loc	1 81 20                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:81:20
	dma_cfg zero, r11, zero, 2
	.loc	1 81 25                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:81:25
	load.d r[18:19], -344(r30)              # 8-byte Folded Reload
	.loc	1 81 0                          # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:81:0
	slli r6, r6, 15
	add.s r6, r6, r22
	.loc	1 81 25                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:81:25
	min.sl r[19:20], r[16:17], r[18:19]
	sub.sl r[16:17], r[19:20], r[16:17]
	.loc	1 81 20                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:81:20
	addli r14, r16, 128
	addli r16, zero, 256
	dma_cfg r6, r10, r16, 3
	addli r6, zero, 4096
	dma_cfg r16, r6, r14, 4
	dma_run zero
	unlock r13
	xsignal r9, 0
	.loc	1 73 26 is_stmt 1               # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:73:26
	beq r5, r26, .LBB0_36
.LBB0_34:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:86:25
	zext_int2long r[10:11], r5
	loadli.w r6,  -348(r30)                 # 4-byte Folded Reload
	sll.d r[10:11], r[10:11], r23
	zext_int2long r[16:17], r6
	.loc	1 81 25                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:81:25
	add.ul r[10:11], r[10:11], r[3:4]
	setlt.ul r6, r[16:17], r[10:11]
	addli.d r[16:17], r[27:28], 0
	bneq r6, zero, .LBB0_33
# %bb.35:                               # %.thread.us
                                        #   in Loop: Header=BB0_34 Depth=2
	.loc	1 0 25 is_stmt 0                # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:0:25
	zext_int2long r[16:17], zero
	j .LBB0_33
.LBB0_36:                               # %.split19.us.loopexit55
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r17,  -336(r30)                # 4-byte Folded Reload
	loadli.w r27,  32(r30)
	loadli.w r28,  28(r30)
	loadli.w r14,  -352(r30)                # 4-byte Folded Reload
	load.d r[19:20], -360(r30)              # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:73:26
	addli r16, r24, 16
	addli r8, r8, 16
	addli r7, r7, 16
	addli r11, zero, 5
	addli r1, zero, 40
	lui r22, 240
	addli r21, zero, 19
	addli r6, r27, 0
	addli r10, r28, 0
	.loc	1 89 25                         # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:89:25
	add.s r17, r17, r5
	j .LBB0_7
.LBB0_37:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:101:67
	loadli.w r3,  -388(r30)                 # 4-byte Folded Reload
	addli r5, zero, 896
	load.d r[27:28], -344(r30)              # 8-byte Folded Reload
	sext_int2long r[10:11], r18
	zext_int2long r[5:6], r5
	zext_int2long r[3:4], r3
	min.sl r[27:28], r[10:11], r[27:28]
	min.ul r[5:6], r[3:4], r[5:6]
	addli.d r[27:28], r[27:28], 128
	addli.d r[5:6], r[5:6], 128
	max.sl r[27:28], r[27:28], r[10:11]
	max.ul r[5:6], r[5:6], r[3:4]
	sub.sl r[10:11], r[27:28], r[10:11]
	loadli.w r28,  28(r30)
	loadli.w r27,  32(r30)
	sub.sl r[3:4], r[5:6], r[3:4]
	zext_int2long r[5:6], r25
	addli r24, r28, 0
	addli r20, r27, 0
	load.d r[27:28], 16(r30)
	min.ul r[3:4], r[3:4], r[5:6]
	min.sl r[5:6], r[10:11], r[5:6]
	addli r11, zero, 5
	addli r10, zero, 10
	store.d r[3:4], -336(r30)               # 8-byte Folded Spill
	load.d r[3:4], -368(r30)                # 8-byte Folded Reload
	sll.d r[3:4], r[3:4], r21
	add.ul r[3:4], r[27:28], r[3:4]
	load.d r[27:28], -384(r30)              # 8-byte Folded Reload
	xwait r10, 0
	lock zero, r11
	addli r10, zero, 1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r10, zero, 1
	add.ul r[3:4], r[3:4], r[27:28]
	load.d r[27:28], -336(r30)              # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r10, r27, 2
	dma_cfg r3, r19, r10, 3
	addli r3, zero, 512
	addli r4, zero, 4096
	addli r10, r24, 0
	dma_cfg r4, r3, r5, 4
	addli r6, r20, 0
	addli r3, zero, 11
	dma_run zero
	unlock r11
	xsignal r3, 0
.LBB0_38:                               # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:0:67
	load.d r[19:20], -360(r30)              # 8-byte Folded Reload
	j .LBB0_7
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py:22:0
	addli sp, sp, 400
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
	.long	464                             # 0x1d0
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
.asciz	"cfjyhkr57ir3i4dqc4qpvdorux2tc2rwoy5t6fye4htoq7ioye4v.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/fj" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
