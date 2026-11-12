	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/em" "cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py"
	.loc	1 22 0                          # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -832
	addli r30, sp, 768
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:73:26
	core_id r2
	loadli.w r22,  32(r30)
	loadli.w r23,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:0:26
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
	addli r4, zero, 3
	unlock r3
	addli r3, zero, 5
	csr_set csr3, r1
	addli r1, zero, 11
	sync_group
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
	addli r1, zero, 9
	addli r3, zero, 7
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -184(r30)
	storeli.w zero, -508(r30)
	storeli.w zero, -692(r30)
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
	sext_int2long r[27:28], r1
	lui r1, 31
	loadli.w r7,  -184(r30)
	loadli.w r10,  -692(r30)
	loadli.w r11,  -508(r30)
	addli r24, zero, 0
	addli r12, zero, 128
	addli r18, zero, 8
	addli r15, zero, 7
	addli r16, zero, 2
	addli r17, zero, 4
	addli r21, zero, 45
	lui r20, 212
	addli r8, zero, 6
	addli r25, zero, 32
	addli r26, zero, 64
	addli r9, zero, 5
	lui r14, 32
	addli r19, zero, 0
	store.d r[3:4], -744(r30)               # 8-byte Folded Spill
	ori r4, r1, 4095
	lui r1, 1023
	lui r3, 1047552
	ori r1, r1, 4095
	store.d r[3:4], -768(r30)               # 8-byte Folded Spill
	storeli.w r1, -708(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split18.thread93
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:86:20
	addli r10, r10, 64
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:73:26
	addli r1, zero, 10
	loadli.w r22,  32(r30)
	loadli.w r23,  28(r30)
	addli r9, zero, 5
	lui r14, 32
	xsignal r1, 0
	loadli.w r24,  -724(r30)                # 4-byte Folded Reload
	load.d r[27:28], -720(r30)              # 8-byte Folded Reload
.LBB0_7:                                # %.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:0:26
	load.d r[4:5], -744(r30)                # 8-byte Folded Reload
	addli.d r[27:28], r[27:28], 1
	addli r24, r24, 1
	addli r19, r3, 0
	setlt.sl r1, r[27:28], r[4:5]
	beq r1, zero, .LBB0_37
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	div.s r1, r27, r22
	.loc	1 54 30 is_stmt 1               # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:54:30
	addli r5, zero, 16
	div.s r3, r1, r23
	.loc	1 53 22                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:53:22
	div.s r4, r3, r12
	.loc	1 54 41                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:54:41
	slli r1, r4, 3
	.loc	1 54 30 is_stmt 0               # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:54:30
	sub.s r5, r5, r1
	.loc	1 54 50                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:54:50
	min.s r13, r5, r18
	.loc	1 55 40 is_stmt 1               # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:55:40
	mod.s r5, r3, r13
	.loc	1 55 34 is_stmt 0               # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:55:34
	add.s r1, r1, r5
	.loc	1 95 15 is_stmt 1               # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:95:15
	zext_int2long r[5:6], r1
	store.d r[5:6], -736(r30)               # 8-byte Folded Spill
	addli r5, zero, 1920
	zext_int2long r[5:6], r5
	.loc	1 73 26                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:73:26
	store.d r[5:6], -704(r30)               # 8-byte Folded Spill
	bneq r2, r17, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r5, zero, 11
	xwait r5, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:0:26
	addli r5, zero, 1
	beq r2, r5, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r16, .LBB0_15
# %bb.12:                               # %.thread.us23.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 0
	addli r5, zero, 48
	addli r6, zero, 3
.LBB0_13:                               # %.thread.us23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:89:25
	add.s r3, r10, r1
	add.s r4, r19, r1
	xwait r16, 0
	xwait r9, 0
	lock zero, zero
	.loc	1 73 26                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:89:25
	ds_cfg r16, zero, 0
	.loc	1 81 20                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:81:20
	mod.s r3, r3, r21
	.loc	1 89 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:89:25
	mod.s r4, r4, r5
	ds_cfg r25, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r12, zero, 13
	.loc	1 81 20                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:81:20
	slli r3, r3, 14
	.loc	1 89 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:89:25
	slli r4, r4, 14
	.loc	1 81 20                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:81:20
	add.s r3, r3, r14
	.loc	1 89 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:89:25
	shuffle_batch r4, r3, r25, 1
	unlock zero
	xsignal r6, 0
	xsignal r17, 0
	bneq r1, r26, .LBB0_13
# %bb.14:                               # %.split18.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:73:26
	addli r11, r11, 64
	addli r7, r7, 64
	.loc	1 89 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:89:25
	add.s r3, r19, r1
	add.s r10, r10, r1
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:0:25
	slli r4, r4, 7
	addli r5, r10, 0
	slli r1, r1, 7
	storeli.w r24, -724(r30)                # 4-byte Folded Spill
	store.d r[27:28], -720(r30)             # 8-byte Folded Spill
	addli r22, zero, 5
	addli r28, zero, 0
	addli r23, zero, 512
	sub.s r3, r3, r4
	mod.s r4, r24, r16
	storeli.w r1, -756(r30)                 # 4-byte Folded Spill
	div.s r3, r3, r13
	slli r24, r4, 16
	zext_int2long r[9:10], r3
	slli r1, r3, 7
	.loc	1 73 26 is_stmt 1               # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:73:26
	load.d r[3:4], 8(r30)
	sll.d r[9:10], r[9:10], r15
	storeli.w r1, -760(r30)                 # 4-byte Folded Spill
	sll.d r[13:14], r[9:10], r16
	addli r9, zero, 80
	addli r10, r5, 0
	store.d r[13:14], -752(r30)             # 8-byte Folded Spill
	add.ul r[13:14], r[3:4], r[13:14]
	addli r4, zero, 0
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:89:25
	addli r5, zero, 9
	xwait r8, 0
	xwait r5, 0
	lock zero, zero
	ds_cfg r16, zero, 0
	ds_cfg r12, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r12, zero, 13
	shuffle_coa r1, r27, r25, 2
	unlock zero
	xsignal r15, 0
	xsignal r18, 0
	.loc	1 73 26                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:73:26
	addli r28, r28, 1
	bneq r28, r26, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	.loc	1 86 20                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:86:20
	mod.s r1, r7, r21
	.loc	1 89 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:89:25
	mod.s r5, r11, r9
	addli r3, r19, 1
	addli r11, r11, 1
	.loc	1 86 20                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:86:20
	addli r7, r7, 1
	slli r6, r1, 14
	.loc	1 89 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:89:25
	slli r1, r5, 14
	.loc	1 86 20                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:86:20
	add.s r27, r6, r20
	beq r2, r15, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:0:20
	bneq r2, r8, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:86:25
	zext_int2long r[5:6], r28
	.loc	1 86 20                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:86:20
	addli r1, zero, 18
	xwait r15, 0
	lock zero, r17
	dma_cfg zero, zero, zero, 0
	sll.d r[5:6], r[5:6], r1
	addli r1, zero, 8192
	add.ul r[5:6], r[13:14], r[5:6]
	dma_cfg zero, r6, zero, 2
	dma_cfg r27, r5, r23, 3
	dma_cfg r23, r1, r25, 4
	dma_run zero
	unlock r17
	xsignal r8, 0
	.loc	1 73 26 is_stmt 1               # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:73:26
	addli r28, r28, 1
	bneq r28, r26, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:89:25
	bneq r2, r17, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 0 is_stmt 0                 # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:0:0
	addli r5, zero, 48
	.loc	1 89 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:89:25
	xwait r17, 0
	xwait r18, 0
	addli r27, zero, 1
	addli r18, zero, 1
	addli r9, zero, 0
	.loc	1 0 0                           # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:0:0
	mod.s r5, r19, r5
	slli r19, r5, 14
	.loc	1 89 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:89:25
	beq r4, zero, .LBB0_23
.LBB0_22:                               # %.preheader8
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r5, r9, 13
	slli r6, r9, 8
	lock zero, r27
	addli r9, zero, 1
	mm_cfg r26, r25, r12, 0
	or r5, r5, r1
	or r6, r6, r24
	mm_cfg r16, r17, r27, 2
	mm_acc r6, r19, r5, 8
	andi r5, r18, 1
	addli r18, zero, 0
	unlock r27
	bneq r5, zero, .LBB0_22
	j .LBB0_24
.LBB0_23:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r5, r9, 13
	slli r6, r9, 8
	lock zero, r27
	addli r9, zero, 1
	mm_cfg r26, r25, r12, 0
	or r5, r5, r1
	or r6, r6, r24
	mm_cfg r16, r17, r27, 2
	mm r6, r19, r5, 8
	andi r5, r18, 1
	addli r18, zero, 0
	unlock r27
	bneq r5, zero, .LBB0_23
.LBB0_24:                               # %.thread6.thread91
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:73:26
	addli r28, r28, 1
	.loc	1 89 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:89:25
	addli r1, zero, 9
	addli r18, zero, 8
	addli r9, zero, 80
	xsignal r22, 0
	xsignal r1, 0
	bneq r28, r26, .LBB0_26
	j .LBB0_5
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:73:26
	addli r28, r28, 1
	beq r28, r26, .LBB0_33
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:89:25
	addli r4, r4, 1
	addli r19, r3, 0
	j .LBB0_17
.LBB0_27:                               # %.split18
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:86:20
	addli r10, r10, 64
	.loc	1 73 26                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:73:26
	beq r2, r17, .LBB0_6
	j .LBB0_34
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:0:26
	load.d r[3:4], -736(r30)                # 8-byte Folded Reload
	addli r1, zero, 18
	load.d r[5:6], -768(r30)                # 8-byte Folded Reload
	lui r2, 32
	addli r20, zero, 5
	store.d r[27:28], -720(r30)             # 8-byte Folded Spill
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 0
	and.d r[13:14], r[3:4], r[5:6]
	j .LBB0_30
.LBB0_29:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	addli r5, zero, 2048
	.loc	1 81 25 is_stmt 1               # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:81:25
	sub.sl r[9:10], r[27:28], r[9:10]
	.loc	1 81 20 is_stmt 0               # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:81:20
	addli r18, zero, 3
	sll.d r[27:28], r[27:28], r16
	zext_int2long r[5:6], r5
	xwait r18, 0
	lock zero, r17
	dma_cfg zero, zero, zero, 0
	.loc	1 81 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:81:25
	div.sl r[5:6], r[9:10], r[5:6]
	addli r10, r22, 0
	.loc	1 81 20                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:81:20
	load.d r[22:23], 0(r30)
	.loc	1 0 0                           # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:0:0
	add.s r9, r10, r1
	.loc	1 73 26 is_stmt 1               # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:73:26
	addli r1, r1, 1
	.loc	1 81 20                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:81:20
	add.ul r[27:28], r[22:23], r[27:28]
	.loc	1 81 0 is_stmt 0                # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:81:0
	mod.s r9, r9, r21
	.loc	1 81 20                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:81:20
	dma_cfg zero, r28, zero, 2
	.loc	1 81 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:81:25
	load.d r[22:23], -704(r30)              # 8-byte Folded Reload
	.loc	1 81 0                          # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:81:0
	slli r9, r9, 14
	add.s r9, r9, r2
	.loc	1 81 20                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:81:20
	dma_cfg r9, r27, r12, 3
	.loc	1 81 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:81:25
	min.sl r[22:23], r[5:6], r[22:23]
	sub.sl r[5:6], r[22:23], r[5:6]
	.loc	1 81 20                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:81:20
	addli r5, r5, 128
	addli r6, zero, 8192
	dma_cfg r12, r6, r5, 4
	dma_run zero
	unlock r17
	xsignal r16, 0
	.loc	1 73 26 is_stmt 1               # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:73:26
	beq r1, r26, .LBB0_32
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 0 26 is_stmt 0                # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:0:26
	addli r22, r10, 0
	.loc	1 86 25 is_stmt 1               # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:86:25
	zext_int2long r[9:10], r1
	loadli.w r5,  -708(r30)                 # 4-byte Folded Reload
	sll.d r[9:10], r[9:10], r20
	.loc	1 81 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:81:25
	add.ul r[27:28], r[9:10], r[3:4]
	zext_int2long r[9:10], r5
	setlt.ul r18, r[9:10], r[27:28]
	addli.d r[9:10], r[13:14], 0
	bneq r18, zero, .LBB0_29
# %bb.31:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	.loc	1 0 25 is_stmt 0                # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:0:25
	zext_int2long r[9:10], zero
	j .LBB0_29
.LBB0_32:                               # %.split18.us
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r22,  32(r30)
	loadli.w r23,  28(r30)
	load.d r[27:28], -720(r30)              # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:73:26
	addli r3, r19, 64
	addli r11, r11, 64
	addli r7, r7, 64
	.loc	1 89 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:89:25
	add.s r10, r10, r1
	addli r18, zero, 8
	addli r9, zero, 5
	lui r20, 212
	lui r14, 32
	.loc	1 73 26                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:73:26
	core_id r2
	.loc	1 89 25                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:89:25
	j .LBB0_7
.LBB0_33:                               # %.split18.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:86:20
	addli r10, r10, 64
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:0:20
	load.d r[27:28], -720(r30)              # 8-byte Folded Reload
	addli r9, zero, 5
	lui r14, 32
	beq r2, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r24,  -724(r30)                # 4-byte Folded Reload
	loadli.w r22,  32(r30)
	loadli.w r23,  28(r30)
	.loc	1 101 67 is_stmt 1              # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:101:67
	j .LBB0_7
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -760(r30)                 # 4-byte Folded Reload
	load.d r[18:19], -704(r30)              # 8-byte Folded Reload
	addli r6, r10, 0
	load.d r[22:23], -736(r30)              # 8-byte Folded Reload
	addli r20, zero, 5
	zext_int2long r[4:5], r1
	loadli.w r1,  -756(r30)                 # 4-byte Folded Reload
	min.ul r[9:10], r[4:5], r[18:19]
	sext_int2long r[13:14], r1
	addli r1, zero, 20
	addli.d r[9:10], r[9:10], 128
	min.sl r[18:19], r[13:14], r[18:19]
	sll.d r[22:23], r[22:23], r1
	addli r1, zero, 10
	max.ul r[9:10], r[9:10], r[4:5]
	addli.d r[18:19], r[18:19], 128
	sub.sl r[4:5], r[9:10], r[4:5]
	zext_int2long r[9:10], r12
	max.sl r[18:19], r[18:19], r[13:14]
	min.ul r[4:5], r[4:5], r[9:10]
	sub.sl r[13:14], r[18:19], r[13:14]
	load.d r[18:19], 16(r30)
	min.sl r[9:10], r[13:14], r[9:10]
	load.d r[13:14], -752(r30)              # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r20
	addli r1, zero, 1
	lui r20, 212
	add.ul r[18:19], r[18:19], r[22:23]
	dma_cfg zero, zero, zero, 0
	loadli.w r23,  28(r30)
	loadli.w r22,  32(r30)
	dma_cfg zero, r1, zero, 1
	slli r1, r4, 2
	addli r4, zero, 8192
	add.ul r[13:14], r[18:19], r[13:14]
	addli r18, zero, 8
	dma_cfg r14, zero, zero, 2
	dma_cfg r13, r24, r1, 3
	addli r1, zero, 512
	lui r14, 32
	dma_cfg r4, r1, r9, 4
	addli r9, zero, 5
	addli r1, zero, 11
	dma_run zero
	addli r10, r6, 0
	unlock r9
	xsignal r1, 0
	loadli.w r24,  -724(r30)                # 4-byte Folded Reload
	j .LBB0_7
.LBB0_37:                               # %._crit_edge
	.loc	1 22 0                          # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_39
# %bb.38:
	.loc	1 0 0 is_stmt 0                 # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py:22:0
	addli sp, sp, 768
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
	.long	832                             # 0x340
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
.asciz	"cemet2wmcdt26tzjdyaqeb656py3qaen6vnace7knhfc6hpu672r.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/em" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
