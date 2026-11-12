	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/5z" "c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py"
	.loc	1 22 0                          # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -288
	addli r30, sp, 224
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:73:26
	core_id r2
	loadli.w r26,  32(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:0:26
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
	ble.s r3, r1, .LBB0_40
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[9:10], r1
	lui r1, 15
	loadli.w r7,  -64(r30)
	loadli.w r8,  -148(r30)
	addli r5, zero, 0
	addli r18, zero, 0
	addli r11, zero, 128
	addli r13, zero, 8
	addli r14, zero, 7
	addli r15, zero, 4
	addli r19, zero, 20
	addli r20, zero, 15
	lui r25, 152
	addli r16, zero, 6
	addli r17, zero, 16
	addli r28, zero, 64
	addli r22, zero, 512
	lui r12, 32
	addli r21, zero, 3
	addli r27, zero, 0
	store.d r[3:4], -192(r30)               # 8-byte Folded Spill
	ori r4, r1, 4095
	lui r1, 1023
	lui r3, 1047552
	ori r1, r1, 4095
	store.d r[3:4], -224(r30)               # 8-byte Folded Spill
	storeli.w r1, -164(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split19.us.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r27, r26, 0
	.loc	1 86 20 is_stmt 1               # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:86:20
	addli r27, r27, 16
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:73:26
	addli r1, zero, 10
	loadli.w r26,  32(r30)
	lui r12, 32
	addli r21, zero, 3
	xsignal r1, 0
	loadli.w r5,  -168(r30)                 # 4-byte Folded Reload
	load.d r[9:10], -176(r30)               # 8-byte Folded Reload
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:0:26
	load.d r[3:4], -192(r30)                # 8-byte Folded Reload
	addli.d r[9:10], r[9:10], 1
	addli r5, r5, 1
	addli r18, r6, 0
	setlt.sl r1, r[9:10], r[3:4]
	beq r1, zero, .LBB0_40
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	div.s r1, r9, r26
	loadli.w r3,  28(r30)
	storeli.w r5, -168(r30)                 # 4-byte Folded Spill
	.loc	1 54 30 is_stmt 1               # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:54:30
	addli r5, zero, 32
	div.s r3, r1, r3
	.loc	1 53 22                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:53:22
	div.s r4, r3, r11
	.loc	1 54 41                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:54:41
	slli r1, r4, 3
	.loc	1 54 30 is_stmt 0               # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:54:30
	sub.s r5, r5, r1
	.loc	1 54 50                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:54:50
	min.s r6, r5, r13
	.loc	1 55 40 is_stmt 1               # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:55:40
	mod.s r5, r3, r6
	.loc	1 55 34 is_stmt 0               # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:55:34
	add.s r1, r1, r5
	addli r5, zero, 1984
	.loc	1 95 15 is_stmt 1               # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:95:15
	zext_int2long r[23:24], r1
	store.d r[23:24], -184(r30)             # 8-byte Folded Spill
	zext_int2long r[23:24], r5
	.loc	1 73 26                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:73:26
	store.d r[23:24], -160(r30)             # 8-byte Folded Spill
	bneq r2, r15, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r5, zero, 11
	addli r24, zero, 2
	xwait r5, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:0:26
	addli r5, zero, 1
	addli r24, zero, 2
	beq r2, r5, .LBB0_30
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r24, .LBB0_15
# %bb.12:                               # %.thread.us25.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 0
	addli r5, zero, 24
	addli r6, zero, 5
.LBB0_13:                               # %.thread.us25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:89:25
	add.s r3, r27, r1
	add.s r4, r18, r1
	xwait r24, 0
	xwait r6, 0
	lock zero, zero
	.loc	1 73 26                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:89:25
	ds_cfg r24, zero, 0
	.loc	1 81 20                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:81:20
	mod.s r3, r3, r20
	.loc	1 89 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:89:25
	mod.s r4, r4, r5
	ds_cfg r11, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r28, zero, 13
	.loc	1 81 20                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:81:20
	slli r3, r3, 15
	.loc	1 89 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:89:25
	slli r4, r4, 15
	.loc	1 81 20                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:81:20
	add.s r3, r3, r12
	.loc	1 89 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:89:25
	shuffle_batch r4, r3, r11, 1
	unlock zero
	xsignal r21, 0
	xsignal r15, 0
	.loc	1 73 26                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:73:26
	bneq r1, r17, .LBB0_13
# %bb.14:                               # %.split19.us.loopexit56
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r8, r8, 16
	addli r7, r7, 16
	.loc	1 89 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:89:25
	add.s r6, r18, r1
	add.s r27, r27, r1
	j .LBB0_39
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:0:25
	slli r4, r4, 7
	slli r1, r1, 6
	addli r26, r27, 0
	store.d r[9:10], -176(r30)              # 8-byte Folded Spill
	addli r12, zero, 0
	addli r27, zero, 0
	addli r10, zero, 9
	sub.s r3, r3, r4
	loadli.w r4,  -168(r30)                 # 4-byte Folded Reload
	storeli.w r1, -208(r30)                 # 4-byte Folded Spill
	div.s r3, r3, r6
	mod.s r4, r4, r15
	zext_int2long r[5:6], r3
	slli r1, r3, 7
	slli r23, r4, 15
	.loc	1 73 26 is_stmt 1               # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:73:26
	load.d r[3:4], 8(r30)
	sll.d r[5:6], r[5:6], r14
	storeli.w r1, -216(r30)                 # 4-byte Folded Spill
	sll.d r[5:6], r[5:6], r24
	add.ul r[3:4], r[3:4], r[5:6]
	store.d r[5:6], -200(r30)               # 8-byte Folded Spill
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:89:25
	xwait r16, 0
	xwait r10, 0
	lock zero, zero
	ds_cfg r24, zero, 0
	ds_cfg r11, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r11, zero, 13
	shuffle_coa r1, r9, r11, 2
	unlock zero
	xsignal r14, 0
	xsignal r13, 0
	.loc	1 73 26                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:73:26
	addli r12, r12, 1
	bneq r12, r17, .LBB0_28
	j .LBB0_29
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	.loc	1 86 20                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:86:20
	mod.s r1, r7, r20
	.loc	1 89 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:89:25
	mod.s r5, r8, r19
	addli r6, r18, 1
	addli r8, r8, 1
	.loc	1 86 20                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:86:20
	addli r7, r7, 1
	slli r9, r1, 16
	.loc	1 89 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:89:25
	slli r1, r5, 16
	.loc	1 86 20                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:86:20
	add.s r9, r9, r25
	beq r2, r14, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:0:20
	bneq r2, r16, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:86:25
	zext_int2long r[21:22], r12
	.loc	1 86 20                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:86:20
	xwait r14, 0
	lock zero, r15
	addli r1, zero, 512
	addli r5, zero, 8192
	dma_cfg zero, zero, zero, 0
	sll.d r[21:22], r[21:22], r19
	add.ul r[21:22], r[3:4], r[21:22]
	dma_cfg zero, r22, zero, 2
	dma_cfg r9, r21, r1, 3
	addli r22, zero, 512
	dma_cfg r1, r5, r11, 4
	dma_run zero
	unlock r15
	xsignal r16, 0
	.loc	1 73 26 is_stmt 1               # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:73:26
	addli r12, r12, 1
	bneq r12, r17, .LBB0_28
	j .LBB0_29
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:89:25
	bneq r2, r15, .LBB0_24
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 0 is_stmt 0                 # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:0:0
	addli r5, zero, 24
	addli r10, zero, 1
	.loc	1 89 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:89:25
	xwait r15, 0
	xwait r13, 0
	.loc	1 0 0                           # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:0:0
	mod.s r5, r18, r5
	addli r18, zero, 1
	slli r9, r5, 15
	.loc	1 89 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:89:25
	beq r27, zero, .LBB0_25
# %bb.22:                               # %.preheader8.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 25                          # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:0:25
	addli r25, zero, 0
.LBB0_23:                               # %.preheader8
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:89:25
	slli r5, r25, 15
	slli r21, r25, 8
	lock zero, r10
	addli r25, zero, 1
	mm_cfg r28, r11, r28, 0
	or r5, r5, r1
	or r21, r21, r23
	mm_cfg r13, r15, r10, 2
	mm_acc r21, r9, r5, 8
	andi r5, r18, 1
	addli r18, zero, 0
	unlock r10
	bneq r5, zero, .LBB0_23
	j .LBB0_27
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:73:26
	addli r12, r12, 1
	bneq r12, r17, .LBB0_28
	j .LBB0_35
.LBB0_25:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:0:26
	addli r5, zero, 0
.LBB0_26:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25 is_stmt 1               # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:89:25
	slli r21, r5, 15
	slli r5, r5, 8
	lock zero, r10
	mm_cfg r28, r11, r28, 0
	or r21, r21, r1
	or r5, r5, r23
	mm_cfg r13, r15, r10, 2
	mm r5, r9, r21, 8
	andi r21, r18, 1
	addli r5, zero, 1
	addli r18, zero, 0
	unlock r10
	bneq r21, zero, .LBB0_26
.LBB0_27:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r1, zero, 5
	.loc	1 73 26                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:73:26
	addli r12, r12, 1
	addli r10, zero, 9
	lui r25, 152
	.loc	1 89 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:89:25
	xsignal r1, 0
	xsignal r10, 0
	beq r12, r17, .LBB0_5
.LBB0_28:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r27, r27, 1
	addli r18, r6, 0
	j .LBB0_17
.LBB0_29:                               # %.split19.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:0:25
	addli r27, r26, 0
	.loc	1 86 20 is_stmt 1               # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:86:20
	addli r27, r27, 16
	.loc	1 73 26                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:73:26
	beq r2, r15, .LBB0_6
	j .LBB0_36
.LBB0_30:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:0:26
	load.d r[3:4], -184(r30)                # 8-byte Folded Reload
	addli r1, zero, 17
	load.d r[5:6], -224(r30)                # 8-byte Folded Reload
	addli r19, zero, 3
	lui r16, 32
	store.d r[9:10], -176(r30)              # 8-byte Folded Spill
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 0
	and.d r[5:6], r[3:4], r[5:6]
	j .LBB0_32
.LBB0_31:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	addli r12, zero, 2048
	.loc	1 81 25 is_stmt 1               # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:81:25
	sub.sl r[9:10], r[25:26], r[9:10]
	.loc	1 81 20 is_stmt 0               # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:81:20
	xwait r19, 0
	lock zero, r15
	dma_cfg zero, zero, zero, 0
	zext_int2long r[21:22], r12
	.loc	1 0 0                           # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:0:0
	add.s r12, r27, r1
	.loc	1 73 26 is_stmt 1               # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:73:26
	addli r1, r1, 1
	.loc	1 81 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:81:25
	div.sl r[9:10], r[9:10], r[21:22]
	.loc	1 81 20 is_stmt 0               # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:81:20
	sll.d r[21:22], r[25:26], r24
	load.d r[25:26], 0(r30)
	.loc	1 81 0                          # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:81:0
	mod.s r12, r12, r20
	.loc	1 81 20                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:81:20
	add.ul r[21:22], r[25:26], r[21:22]
	dma_cfg zero, r22, zero, 2
	.loc	1 81 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:81:25
	load.d r[23:24], -160(r30)              # 8-byte Folded Reload
	.loc	1 81 0                          # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:81:0
	slli r12, r12, 15
	add.s r12, r12, r16
	.loc	1 81 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:81:25
	min.sl r[25:26], r[9:10], r[23:24]
	addli r24, zero, 2
	sub.sl r[9:10], r[25:26], r[9:10]
	.loc	1 81 20                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:81:20
	addli r9, r9, 64
	addli r10, zero, 512
	dma_cfg r12, r21, r10, 3
	addli r22, zero, 512
	addli r12, zero, 8192
	dma_cfg r10, r12, r9, 4
	dma_run zero
	unlock r15
	xsignal r24, 0
	.loc	1 73 26 is_stmt 1               # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:73:26
	beq r1, r17, .LBB0_34
.LBB0_32:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:86:25
	zext_int2long r[9:10], r1
	sll.d r[9:10], r[9:10], r14
	.loc	1 81 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:81:25
	add.ul r[25:26], r[9:10], r[3:4]
	loadli.w r9,  -164(r30)                 # 4-byte Folded Reload
	zext_int2long r[9:10], r9
	setlt.ul r12, r[9:10], r[25:26]
	addli.d r[9:10], r[5:6], 0
	bneq r12, zero, .LBB0_31
# %bb.33:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 0 25 is_stmt 0                # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:0:25
	zext_int2long r[9:10], zero
	j .LBB0_31
.LBB0_34:                               # %.split19.us.loopexit55
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r26,  32(r30)
	load.d r[9:10], -176(r30)               # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:73:26
	addli r6, r18, 16
	addli r8, r8, 16
	addli r7, r7, 16
	.loc	1 89 25                         # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:89:25
	add.s r27, r27, r1
	lui r25, 152
	lui r12, 32
	addli r21, zero, 3
	addli r19, zero, 20
	addli r16, zero, 6
	j .LBB0_39
.LBB0_35:                               # %.split19.us.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:0:25
	addli r27, r26, 0
	.loc	1 86 20 is_stmt 1               # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:86:20
	addli r27, r27, 16
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:0:20
	load.d r[9:10], -176(r30)               # 8-byte Folded Reload
	lui r12, 32
	addli r21, zero, 3
	beq r2, zero, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r5,  -168(r30)                 # 4-byte Folded Reload
	loadli.w r26,  32(r30)
	.loc	1 101 67 is_stmt 1              # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:101:67
	j .LBB0_7
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	addli r5, zero, 5
	zext_int2long r[25:26], r1
	addli r1, zero, 1920
	zext_int2long r[9:10], r1
	loadli.w r1,  -208(r30)                 # 4-byte Folded Reload
	min.ul r[9:10], r[25:26], r[9:10]
	sext_int2long r[3:4], r1
	addli r1, zero, 19
	addli.d r[9:10], r[9:10], 128
	store.d r[9:10], -208(r30)              # 8-byte Folded Spill
	load.d r[9:10], -160(r30)               # 8-byte Folded Reload
	min.sl r[9:10], r[3:4], r[9:10]
	store.d r[9:10], -160(r30)              # 8-byte Folded Spill
	load.d r[9:10], -208(r30)               # 8-byte Folded Reload
	max.ul r[9:10], r[9:10], r[25:26]
	store.d r[9:10], -216(r30)              # 8-byte Folded Spill
	load.d r[9:10], -160(r30)               # 8-byte Folded Reload
	addli.d r[9:10], r[9:10], 64
	store.d r[9:10], -208(r30)              # 8-byte Folded Spill
	load.d r[9:10], -216(r30)               # 8-byte Folded Reload
	sub.sl r[9:10], r[9:10], r[25:26]
	store.d r[9:10], -160(r30)              # 8-byte Folded Spill
	zext_int2long r[9:10], r11
	store.d r[9:10], -216(r30)              # 8-byte Folded Spill
	load.d r[9:10], -208(r30)               # 8-byte Folded Reload
	load.d r[24:25], -216(r30)              # 8-byte Folded Reload
	max.sl r[9:10], r[9:10], r[3:4]
	store.d r[9:10], -208(r30)              # 8-byte Folded Spill
	load.d r[9:10], -160(r30)               # 8-byte Folded Reload
	min.ul r[9:10], r[9:10], r[24:25]
	zext_int2long r[25:26], r28
	store.d r[9:10], -160(r30)              # 8-byte Folded Spill
	load.d r[9:10], -208(r30)               # 8-byte Folded Reload
	sub.sl r[3:4], r[9:10], r[3:4]
	store.d r[3:4], -208(r30)               # 8-byte Folded Spill
	load.d r[3:4], -184(r30)                # 8-byte Folded Reload
	sll.d r[9:10], r[3:4], r1
	load.d r[3:4], 16(r30)
	addli r1, zero, 10
	add.ul r[3:4], r[3:4], r[9:10]
	load.d r[9:10], -208(r30)               # 8-byte Folded Reload
	min.sl r[9:10], r[9:10], r[25:26]
	loadli.w r26,  32(r30)
	lui r25, 152
	store.d r[9:10], -184(r30)              # 8-byte Folded Spill
	load.d r[9:10], -200(r30)               # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r5
	addli r1, zero, 1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r1, zero, 1
	add.ul r[3:4], r[3:4], r[9:10]
	load.d r[9:10], -160(r30)               # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r1, r9, 2
	dma_cfg r3, r23, r1, 3
	addli r1, zero, 8192
	load.d r[3:4], -184(r30)                # 8-byte Folded Reload
	dma_cfg r1, r22, r3, 4
	addli r1, zero, 11
	load.d r[9:10], -176(r30)               # 8-byte Folded Reload
	dma_run zero
	unlock r5
	xsignal r1, 0
.LBB0_39:                               # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:0:67
	loadli.w r5,  -168(r30)                 # 4-byte Folded Reload
	j .LBB0_7
.LBB0_40:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_42
# %bb.41:
	.loc	1 0 0 is_stmt 0                 # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:22:0
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
.LBB0_42:
	.loc	1 22 0 epilogue_begin           # c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py:22:0
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
.asciz	"c5zygu2qcqzlrqoo7ne7mtyl2xczeb4nwryg7xjk7czph6kmvrli.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/5z" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
