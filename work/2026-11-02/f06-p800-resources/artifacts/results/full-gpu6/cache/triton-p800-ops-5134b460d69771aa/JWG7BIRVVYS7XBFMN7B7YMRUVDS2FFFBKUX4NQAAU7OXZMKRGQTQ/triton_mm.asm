	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/oz" "cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py"
	.loc	1 22 0                          # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -848
	addli r30, sp, 784
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:73:26
	core_id r16
	loadli.w r18,  32(r30)
	xsignal_mode_cfg r1
	beq r16, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -196(r30)
	storeli.w zero, -520(r30)
	storeli.w zero, -720(r30)
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
	lui r1, 7
	loadli.w r26,  -196(r30)
	loadli.w r28,  -520(r30)
	loadli.w r9,  -720(r30)
	addli r8, zero, 0
	addli r22, zero, 512
	addli r12, zero, 5
	addli r14, zero, 2
	addli r15, zero, 4
	addli r17, zero, 48
	addli r20, zero, 7
	addli r21, zero, 6
	addli r23, zero, 32
	addli r24, zero, 128
	addli r25, zero, 16
	addli r13, zero, 49
	addli r19, zero, 3
	addli r5, zero, 0
	store.d r[3:4], -760(r30)               # 8-byte Folded Spill
	ori r4, r1, 4095
	lui r1, 1023
	lui r3, 1047552
	ori r1, r1, 4095
	store.d r[3:4], -784(r30)               # 8-byte Folded Spill
	storeli.w r1, -732(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.split19.us
                                        #   in Loop: Header=BB0_7 Depth=1
	loadli.w r18,  32(r30)
	loadli.w r8,  -736(r30)                 # 4-byte Folded Reload
	load.d r[10:11], -744(r30)              # 8-byte Folded Reload
	.loc	1 73 26                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:73:26
	addli r5, r5, 16
	addli r28, r28, 16
	addli r26, r26, 16
	.loc	1 89 25 is_stmt 1               # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:89:25
	add.s r9, r9, r1
	addli r12, zero, 5
	addli r13, zero, 49
	addli r19, zero, 3
	addli r23, zero, 32
.LBB0_6:                                # %.thread94
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:0:25
	load.d r[3:4], -760(r30)                # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 1
	addli r8, r8, 1
	setlt.sl r1, r[10:11], r[3:4]
	beq r1, zero, .LBB0_38
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_16 Depth 2
	div.s r1, r10, r18
	loadli.w r3,  28(r30)
	.loc	1 54 50 is_stmt 1               # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:54:50
	addli r7, zero, 8
	div.s r4, r1, r3
	.loc	1 54 30 is_stmt 0               # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:54:30
	addli r3, zero, 64
	.loc	1 53 22 is_stmt 1               # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:53:22
	div.s r6, r4, r22
	.loc	1 54 41                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:54:41
	slli r1, r6, 3
	.loc	1 54 30 is_stmt 0               # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:54:30
	sub.s r3, r3, r1
	.loc	1 54 50                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:54:50
	min.s r7, r3, r7
	.loc	1 55 40 is_stmt 1               # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:55:40
	mod.s r3, r4, r7
	.loc	1 55 34 is_stmt 0               # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:55:34
	add.s r1, r1, r3
	.loc	1 95 15 is_stmt 1               # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:95:15
	zext_int2long r[2:3], r1
	store.d r[2:3], -752(r30)               # 8-byte Folded Spill
	addli r3, zero, 2016
	zext_int2long r[2:3], r3
	.loc	1 73 26                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:73:26
	store.d r[2:3], -728(r30)               # 8-byte Folded Spill
	bneq r16, r15, .LBB0_9
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	xwait r3, 0
	j .LBB0_14
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:0:26
	addli r3, zero, 1
	beq r16, r3, .LBB0_27
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r16, r14, .LBB0_14
# %bb.11:                               # %.thread.us24.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 0
	addli r2, zero, 8192
.LBB0_12:                               # %.thread.us24
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:89:25
	add.s r3, r9, r1
	add.s r4, r5, r1
	xwait r14, 0
	xwait r12, 0
	lock zero, zero
	.loc	1 73 26                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:89:25
	ds_cfg r14, zero, 0
	.loc	1 81 20                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:81:20
	mod.s r3, r3, r13
	.loc	1 89 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:89:25
	mod.s r4, r4, r17
	ds_cfg r24, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r23, zero, 13
	.loc	1 81 20                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:81:20
	slli r3, r3, 14
	.loc	1 89 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:89:25
	slli r4, r4, 14
	.loc	1 81 20                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:81:20
	or r3, r3, r2
	.loc	1 89 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:89:25
	shuffle_batch r4, r3, r24, 1
	unlock zero
	xsignal r19, 0
	xsignal r15, 0
	bneq r1, r25, .LBB0_12
# %bb.13:                               # %.split19.split.us
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:73:26
	addli r28, r28, 16
	addli r26, r26, 16
	.loc	1 89 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:89:25
	add.s r5, r5, r1
	add.s r9, r9, r1
	j .LBB0_6
.LBB0_14:                               # %.split.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:0:25
	slli r6, r6, 9
	slli r1, r1, 5
	storeli.w r8, -736(r30)                 # 4-byte Folded Spill
	store.d r[10:11], -744(r30)             # 8-byte Folded Spill
	addli r3, zero, 0
	addli r11, zero, 80
	sub.s r4, r4, r6
	mod.s r6, r8, r14
	storeli.w r1, -772(r30)                 # 4-byte Folded Spill
	div.s r4, r4, r7
	slli r18, r6, 12
	zext_int2long r[7:8], r4
	slli r1, r4, 5
	sll.d r[7:8], r[7:8], r12
	.loc	1 73 26 is_stmt 1               # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:73:26
	storeli.w r1, -776(r30)                 # 4-byte Folded Spill
	sll.d r[1:2], r[7:8], r14
	load.d r[6:7], 8(r30)
	store.d r[1:2], -768(r30)               # 8-byte Folded Spill
	add.ul r[12:13], r[6:7], r[1:2]
	addli r1, zero, 0
	addli r2, zero, 8192
	j .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:89:25
	addli r10, zero, 9
	xwait r21, 0
	xwait r10, 0
	lock zero, zero
	ds_cfg r14, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r7, r8, r24, 2
	addli r7, zero, 8
	unlock zero
	xsignal r20, 0
	xsignal r7, 0
	.loc	1 73 26                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:73:26
	addli r3, r3, 1
	bneq r3, r25, .LBB0_25
	j .LBB0_26
.LBB0_16:                               # %.split
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:89:25
	add.s r27, r26, r1
	add.s r6, r28, r1
	add.s r4, r5, r1
	.loc	1 86 20                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:86:20
	mod.s r7, r27, r17
	.loc	1 89 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:89:25
	mod.s r8, r6, r11
	.loc	1 86 20                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:86:20
	slli r10, r7, 14
	.loc	1 89 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:89:25
	slli r7, r8, 14
	.loc	1 86 20                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:86:20
	lui r8, 198
	add.s r8, r10, r8
	beq r16, r20, .LBB0_15
# %bb.17:                               # %.split
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 20 is_stmt 0                # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:0:20
	bneq r16, r21, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 86 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:86:25
	zext_int2long r[10:11], r3
	.loc	1 86 20                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:86:20
	addli r7, zero, 20
	xwait r20, 0
	lock zero, r15
	dma_cfg zero, zero, zero, 0
	sll.d r[10:11], r[10:11], r7
	add.ul r[10:11], r[12:13], r[10:11]
	dma_cfg zero, r11, zero, 2
	dma_cfg r8, r10, r24, 3
	addli r11, zero, 80
	dma_cfg r24, r2, r24, 4
	dma_run zero
	unlock r15
	xsignal r21, 0
	.loc	1 73 26 is_stmt 1               # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:73:26
	addli r3, r3, 1
	bneq r3, r25, .LBB0_25
	j .LBB0_26
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:89:25
	bneq r16, r15, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 0 is_stmt 0                 # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:0:0
	mod.s r8, r4, r17
	addli r10, zero, 8
	addli r19, zero, 1
	.loc	1 89 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:89:25
	xwait r15, 0
	xwait r10, 0
	lock zero, r19
	mm_cfg r23, r24, r23, 0
	mm_cfg r10, r19, r19, 2
	.loc	1 0 0                           # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:0:0
	slli r8, r8, 14
	.loc	1 89 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:89:25
	beq r1, zero, .LBB0_23
# %bb.21:                               # %.preheader8
                                        #   in Loop: Header=BB0_16 Depth=2
	mm_acc r18, r8, r7, 8
	j .LBB0_24
.LBB0_22:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 73 26 is_stmt 1               # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:73:26
	addli r3, r3, 1
	bneq r3, r25, .LBB0_25
	j .LBB0_31
.LBB0_23:                               # %.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:89:25
	mm r18, r8, r7, 8
.LBB0_24:                               # %.thread6.thread91
                                        #   in Loop: Header=BB0_16 Depth=2
	addli r7, zero, 1
	.loc	1 73 26                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:89:25
	unlock r7
	addli r7, zero, 5
	xsignal r7, 0
	addli r7, zero, 9
	xsignal r7, 0
	.loc	1 73 26                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:73:26
	beq r3, r25, .LBB0_34
.LBB0_25:                               # %.split.backedge
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:89:25
	addli r1, r1, 1
	j .LBB0_16
.LBB0_26:                               # %.split19
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:86:20
	addli r9, r9, 16
	.loc	1 73 26                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:73:26
	bneq r16, r15, .LBB0_32
	j .LBB0_35
.LBB0_27:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:0:26
	load.d r[1:2], -752(r30)                # 8-byte Folded Reload
	load.d r[6:7], -784(r30)                # 8-byte Folded Reload
	addli r23, zero, 3
	addli r27, zero, 49
	store.d r[10:11], -744(r30)             # 8-byte Folded Spill
	storeli.w r8, -736(r30)                 # 4-byte Folded Spill
	sll.d r[3:4], r[1:2], r25
	addli r1, zero, 0
	addli r2, zero, 8192
	and.d r[18:19], r[3:4], r[6:7]
	j .LBB0_29
.LBB0_28:                               # %.thread.us
                                        #   in Loop: Header=BB0_29 Depth=2
	addli r8, zero, 2048
	.loc	1 81 25 is_stmt 1               # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:81:25
	sub.sl r[12:13], r[6:7], r[12:13]
	.loc	1 81 20 is_stmt 0               # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:81:20
	sll.d r[6:7], r[6:7], r14
	xwait r23, 0
	lock zero, r15
	addli r22, zero, 512
	dma_cfg zero, zero, zero, 0
	zext_int2long r[10:11], r8
	.loc	1 0 0                           # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:0:0
	add.s r8, r9, r1
	.loc	1 73 26 is_stmt 1               # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:73:26
	addli r1, r1, 1
	.loc	1 81 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:81:25
	div.sl r[10:11], r[12:13], r[10:11]
	.loc	1 81 20 is_stmt 0               # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:81:20
	load.d r[12:13], 0(r30)
	.loc	1 81 0                          # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:81:0
	mod.s r8, r8, r27
	.loc	1 81 20                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:81:20
	add.ul r[6:7], r[12:13], r[6:7]
	dma_cfg zero, r7, zero, 2
	.loc	1 81 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:81:25
	load.d r[12:13], -728(r30)              # 8-byte Folded Reload
	.loc	1 81 0                          # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:81:0
	slli r8, r8, 14
	or r8, r8, r2
	.loc	1 81 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:81:25
	min.sl r[12:13], r[10:11], r[12:13]
	sub.sl r[10:11], r[12:13], r[10:11]
	.loc	1 81 20                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:81:20
	addli r10, r10, 32
	addli r11, zero, 512
	dma_cfg r8, r6, r11, 3
	dma_cfg r11, r2, r10, 4
	dma_run zero
	unlock r15
	xsignal r14, 0
	.loc	1 73 26 is_stmt 1               # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:73:26
	beq r1, r25, .LBB0_5
.LBB0_29:                               # %.thread.us
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:86:25
	zext_int2long r[6:7], r1
	loadli.w r8,  -732(r30)                 # 4-byte Folded Reload
	sll.d r[6:7], r[6:7], r20
	zext_int2long r[12:13], r8
	.loc	1 81 25                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:81:25
	add.ul r[6:7], r[6:7], r[3:4]
	setlt.ul r8, r[12:13], r[6:7]
	addli.d r[12:13], r[18:19], 0
	bneq r8, zero, .LBB0_28
# %bb.30:                               # %.thread.us
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 25 is_stmt 0                # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:0:25
	zext_int2long r[12:13], zero
	j .LBB0_28
.LBB0_31:                               # %.split19.thread90
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20 is_stmt 1               # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:86:20
	addli r9, r9, 16
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:0:20
	loadli.w r8,  -736(r30)                 # 4-byte Folded Reload
	.loc	1 101 67 is_stmt 1              # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:101:67
	addli r5, r4, 1
	addli r28, r6, 1
	addli r26, r27, 1
	bneq r16, zero, .LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r1,  -776(r30)                 # 4-byte Folded Reload
	loadli.w r10,  -772(r30)                # 4-byte Folded Reload
	loadli.w r27,  32(r30)
	zext_int2long r[3:4], r1
	load.d r[1:2], -728(r30)                # 8-byte Folded Reload
	zext_int2long r[10:11], r10
	min.ul r[6:7], r[3:4], r[1:2]
	min.ul r[12:13], r[10:11], r[1:2]
	addli r1, zero, 18
	addli r2, zero, 8192
	addli.d r[6:7], r[6:7], 32
	addli.d r[12:13], r[12:13], 32
	max.ul r[6:7], r[6:7], r[3:4]
	max.ul r[12:13], r[12:13], r[10:11]
	sub.sl r[3:4], r[6:7], r[3:4]
	zext_int2long r[6:7], r23
	sub.sl r[10:11], r[12:13], r[10:11]
	load.d r[12:13], 16(r30)
	min.ul r[3:4], r[3:4], r[6:7]
	min.ul r[6:7], r[10:11], r[6:7]
	load.d r[10:11], -768(r30)              # 8-byte Folded Reload
	store.d r[3:4], -728(r30)               # 8-byte Folded Spill
	load.d r[3:4], -752(r30)                # 8-byte Folded Reload
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 5
	add.ul r[3:4], r[12:13], r[3:4]
	addli r12, zero, 5
	lock zero, r1
	addli r1, zero, 1
	add.ul r[3:4], r[3:4], r[10:11]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r1, zero, 1
	load.d r[10:11], -728(r30)              # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r1, r10, 2
	dma_cfg r3, r18, r1, 3
	addli r1, zero, 11
	addli r18, r27, 0
	dma_cfg r2, r24, r6, 4
	dma_run zero
	unlock r12
	xsignal r1, 0
	load.d r[10:11], -744(r30)              # 8-byte Folded Reload
	j .LBB0_37
.LBB0_34:                               # %.split19.thread93
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:86:20
	addli r9, r9, 16
.LBB0_35:                               # %.thread7
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:73:26
	addli r1, zero, 10
	.loc	1 101 67                        # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:101:67
	addli r5, r4, 1
	addli r28, r6, 1
	addli r26, r27, 1
	.loc	1 73 26                         # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:73:26
	xsignal r1, 0
	loadli.w r8,  -736(r30)                 # 4-byte Folded Reload
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:0:26
	loadli.w r27,  32(r30)
	load.d r[10:11], -744(r30)              # 8-byte Folded Reload
	addli r12, zero, 5
	addli r18, r27, 0
.LBB0_37:                               # %.thread94
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r13, zero, 49
	addli r19, zero, 3
	j .LBB0_6
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:22:0
	xsignal zero, 0
	bneq r16, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py:22:0
	addli sp, sp, 784
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
	.long	848                             # 0x350
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
.asciz	"cozo4tzrscb3hwx27uamyzwwdkimykfrtsci4vbjypjwootzl2w2.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/oz" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
