	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/ip" "cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py"
	.loc	1 22 0                          # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -856
	addli r30, sp, 792
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:73:26
	core_id r2
	loadli.w r16,  32(r30)
	loadli.w r22,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:0:26
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
	ble.s r3, r1, .LBB0_37
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[7:8], r1
	lui r1, 127
	loadli.w r26,  -196(r30)
	loadli.w r28,  -520(r30)
	loadli.w r9,  -720(r30)
	addli r23, zero, 0
	addli r12, zero, 8
	addli r27, zero, 5
	addli r14, zero, 2
	addli r15, zero, 4
	addli r17, zero, 48
	addli r11, zero, 80
	addli r20, zero, 7
	addli r21, zero, 6
	addli r13, zero, 32
	addli r24, zero, 128
	addli r6, zero, 0
	store.d r[3:4], -760(r30)               # 8-byte Folded Spill
	addli r4, zero, 16383
	ori r1, r1, 4095
	lui r3, 1048448
	storeli.w r1, -732(r30)                 # 4-byte Folded Spill
	store.d r[3:4], -792(r30)               # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split19.thread93
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:86:20
	addli r9, r9, 8
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:73:26
	addli r1, zero, 10
	addli r16, r22, 0
	loadli.w r22,  28(r30)
	.loc	1 101 67                        # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:101:67
	addli r26, r27, 1
	addli r6, r25, 1
	addli r28, r5, 1
	addli r27, zero, 5
	.loc	1 73 26                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:73:26
	xsignal r1, 0
	load.d r[7:8], -744(r30)                # 8-byte Folded Reload
.LBB0_7:                                # %.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:0:26
	load.d r[3:4], -760(r30)                # 8-byte Folded Reload
	addli.d r[7:8], r[7:8], 1
	addli r23, r23, 1
	setlt.sl r1, r[7:8], r[3:4]
	beq r1, zero, .LBB0_37
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_17 Depth 2
	div.s r1, r7, r16
	.loc	1 54 30 is_stmt 1               # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:54:30
	addli r3, zero, 16
	store.d r[7:8], -744(r30)               # 8-byte Folded Spill
	div.s r4, r1, r22
	.loc	1 53 22                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:53:22
	addli r1, zero, 256
	div.s r5, r4, r1
	.loc	1 54 41                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:54:41
	slli r1, r5, 3
	.loc	1 54 30 is_stmt 0               # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:54:30
	sub.s r3, r3, r1
	.loc	1 54 50                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:54:50
	min.s r7, r3, r12
	.loc	1 55 40 is_stmt 1               # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:55:40
	mod.s r3, r4, r7
	.loc	1 55 34 is_stmt 0               # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:55:34
	add.s r3, r1, r3
	addli r1, zero, 480
	.loc	1 95 15 is_stmt 1               # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:95:15
	zext_int2long r[18:19], r3
	store.d r[18:19], -752(r30)             # 8-byte Folded Spill
	zext_int2long r[18:19], r1
	.loc	1 73 26                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:73:26
	store.d r[18:19], -728(r30)             # 8-byte Folded Spill
	bneq r2, r15, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:0:26
	addli r1, zero, 1
	beq r2, r1, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r14, .LBB0_15
# %bb.12:                               # %.thread.us24.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 0
	addli r5, zero, 32
	addli r7, zero, 49
	addli r8, zero, 8192
	addli r10, zero, 3
.LBB0_13:                               # %.thread.us24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:89:25
	add.s r3, r9, r1
	add.s r4, r6, r1
	xwait r14, 0
	xwait r27, 0
	lock zero, zero
	.loc	1 73 26                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:89:25
	ds_cfg r14, zero, 0
	.loc	1 81 20                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:81:20
	mod.s r3, r3, r7
	.loc	1 89 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:89:25
	mod.s r4, r4, r17
	ds_cfg r24, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r5, zero, 13
	.loc	1 81 20                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:81:20
	slli r3, r3, 14
	.loc	1 89 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:89:25
	slli r4, r4, 14
	.loc	1 81 20                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:81:20
	or r3, r3, r8
	.loc	1 89 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:89:25
	shuffle_batch r4, r3, r24, 1
	unlock zero
	xsignal r10, 0
	xsignal r15, 0
	bneq r1, r12, .LBB0_13
# %bb.14:                               # %.split19.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:0:25
	load.d r[7:8], -744(r30)                # 8-byte Folded Reload
	addli r13, zero, 32
	.loc	1 73 26 is_stmt 1               # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:73:26
	addli r28, r28, 8
	addli r26, r26, 8
	.loc	1 89 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:89:25
	add.s r6, r6, r1
	add.s r9, r9, r1
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:0:25
	slli r5, r5, 8
	slli r3, r3, 5
	addli r22, r16, 0
	addli r1, zero, 0
	addli r19, zero, 5
	addli r16, zero, 0
	sub.s r4, r4, r5
	mod.s r5, r23, r14
	storeli.w r3, -776(r30)                 # 4-byte Folded Spill
	div.s r4, r4, r7
	slli r18, r5, 12
	zext_int2long r[7:8], r4
	slli r3, r4, 5
	sll.d r[7:8], r[7:8], r27
	.loc	1 73 26 is_stmt 1               # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:73:26
	storeli.w r3, -780(r30)                 # 4-byte Folded Spill
	load.d r[3:4], 8(r30)
	sll.d r[7:8], r[7:8], r14
	add.ul r[3:4], r[3:4], r[7:8]
	store.d r[7:8], -768(r30)               # 8-byte Folded Spill
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:89:25
	addli r10, zero, 9
	xwait r21, 0
	addli r13, zero, 32
	xwait r10, 0
	lock zero, zero
	addli r10, zero, 32
	ds_cfg r14, zero, 0
	ds_cfg r10, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r10, zero, 13
	shuffle_coa r7, r8, r24, 2
	unlock zero
	xsignal r20, 0
	xsignal r12, 0
	.loc	1 73 26                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:73:26
	addli r1, r1, 1
	bneq r1, r12, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:89:25
	add.s r27, r26, r16
	add.s r5, r28, r16
	add.s r25, r6, r16
	.loc	1 86 20                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:86:20
	mod.s r7, r27, r17
	.loc	1 89 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:89:25
	mod.s r8, r5, r11
	.loc	1 86 20                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:86:20
	slli r10, r7, 14
	.loc	1 89 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:89:25
	slli r7, r8, 14
	.loc	1 86 20                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:86:20
	lui r8, 198
	add.s r8, r10, r8
	beq r2, r20, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:0:20
	bneq r2, r21, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:86:25
	zext_int2long r[10:11], r1
	.loc	1 86 20                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:86:20
	addli r7, zero, 19
	xwait r20, 0
	lock zero, r15
	dma_cfg zero, zero, zero, 0
	sll.d r[10:11], r[10:11], r7
	addli r7, zero, 4096
	add.ul r[10:11], r[3:4], r[10:11]
	dma_cfg zero, r11, zero, 2
	dma_cfg r8, r10, r24, 3
	addli r11, zero, 80
	dma_cfg r24, r7, r24, 4
	dma_run zero
	unlock r15
	xsignal r21, 0
	.loc	1 73 26 is_stmt 1               # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:73:26
	addli r1, r1, 1
	bneq r1, r12, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:89:25
	bneq r2, r15, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 0 is_stmt 0                 # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:0:0
	mod.s r8, r25, r17
	addli r10, zero, 1
	.loc	1 89 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:89:25
	xwait r15, 0
	xwait r12, 0
	lock zero, r10
	mm_cfg r13, r24, r13, 0
	mm_cfg r12, r10, r10, 2
	.loc	1 0 0                           # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:0:0
	slli r8, r8, 14
	.loc	1 89 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:89:25
	beq r16, zero, .LBB0_24
# %bb.22:                               # %.preheader8
                                        #   in Loop: Header=BB0_17 Depth=2
	mm_acc r18, r8, r7, 8
	j .LBB0_25
.LBB0_23:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:73:26
	addli r1, r1, 1
	bneq r1, r12, .LBB0_26
	j .LBB0_33
.LBB0_24:                               # %.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:89:25
	mm r18, r8, r7, 8
.LBB0_25:                               # %.thread6.thread91
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r7, zero, 1
	.loc	1 73 26                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:89:25
	unlock r7
	addli r7, zero, 9
	xsignal r19, 0
	xsignal r7, 0
	.loc	1 73 26                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:73:26
	beq r1, r12, .LBB0_5
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:89:25
	addli r16, r16, 1
	j .LBB0_17
.LBB0_27:                               # %.split19
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:86:20
	addli r9, r9, 8
	.loc	1 73 26                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:73:26
	beq r2, r15, .LBB0_6
	j .LBB0_34
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:0:26
	load.d r[3:4], -752(r30)                # 8-byte Folded Reload
	addli r1, zero, 15
	load.d r[7:8], -792(r30)                # 8-byte Folded Reload
	addli r25, r23, 0
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 0
	and.d r[10:11], r[3:4], r[7:8]
	j .LBB0_30
.LBB0_29:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	addli r5, zero, 1024
	.loc	1 81 25 is_stmt 1               # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:81:25
	sub.sl r[7:8], r[18:19], r[7:8]
	.loc	1 81 20 is_stmt 0               # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:81:20
	sll.d r[18:19], r[18:19], r14
	zext_int2long r[22:23], r5
	.loc	1 0 0                           # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:0:0
	add.s r5, r9, r1
	.loc	1 73 26 is_stmt 1               # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:73:26
	addli r1, r1, 1
	.loc	1 81 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:81:25
	div.sl r[7:8], r[7:8], r[22:23]
	.loc	1 81 20 is_stmt 0               # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:81:20
	addli r22, zero, 3
	xwait r22, 0
	.loc	1 81 0                          # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:81:0
	addli r22, zero, 49
	.loc	1 81 20                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:81:20
	lock zero, r15
	dma_cfg zero, zero, zero, 0
	.loc	1 81 0                          # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:81:0
	mod.s r5, r5, r22
	.loc	1 81 20                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:81:20
	load.d r[22:23], 0(r30)
	add.ul r[18:19], r[22:23], r[18:19]
	dma_cfg zero, r19, zero, 2
	.loc	1 81 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:81:25
	load.d r[22:23], -728(r30)              # 8-byte Folded Reload
	.loc	1 81 0                          # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:81:0
	slli r5, r5, 14
	.loc	1 81 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:81:25
	min.sl r[22:23], r[7:8], r[22:23]
	sub.sl r[7:8], r[22:23], r[7:8]
	.loc	1 81 0                          # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:81:0
	addli r22, zero, 8192
	.loc	1 81 20                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:81:20
	addli r7, r7, 32
	.loc	1 81 0                          # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:81:0
	or r5, r5, r22
	addli r8, zero, 512
	.loc	1 81 20                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:81:20
	dma_cfg r5, r18, r8, 3
	addli r5, zero, 4096
	dma_cfg r8, r5, r7, 4
	dma_run zero
	unlock r15
	xsignal r14, 0
	.loc	1 73 26 is_stmt 1               # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:73:26
	beq r1, r12, .LBB0_32
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:86:25
	zext_int2long r[7:8], r1
	loadli.w r5,  -732(r30)                 # 4-byte Folded Reload
	sll.d r[7:8], r[7:8], r20
	.loc	1 81 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:81:25
	add.ul r[18:19], r[7:8], r[3:4]
	zext_int2long r[7:8], r5
	setlt.ul r5, r[7:8], r[18:19]
	addli.d r[7:8], r[10:11], 0
	bneq r5, zero, .LBB0_29
# %bb.31:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	.loc	1 0 25 is_stmt 0                # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:0:25
	zext_int2long r[7:8], zero
	j .LBB0_29
.LBB0_32:                               # %.split19.us
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r22,  28(r30)
	load.d r[7:8], -744(r30)                # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:73:26
	addli r6, r6, 8
	addli r28, r28, 8
	addli r26, r26, 8
	.loc	1 89 25                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:89:25
	add.s r9, r9, r1
	addli r23, r25, 0
	addli r11, zero, 80
	j .LBB0_7
.LBB0_33:                               # %.split19.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:86:20
	addli r9, r9, 8
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:0:20
	load.d r[7:8], -744(r30)                # 8-byte Folded Reload
	.loc	1 101 67 is_stmt 1              # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:101:67
	addli r6, r25, 1
	addli r28, r5, 1
	addli r26, r27, 1
	addli r16, r22, 0
	beq r2, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:0:67
	loadli.w r22,  28(r30)
	addli r27, zero, 5
	.loc	1 101 67                        # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:101:67
	j .LBB0_7
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -780(r30)                 # 4-byte Folded Reload
	addli r27, zero, 5
	zext_int2long r[3:4], r1
	addli r1, zero, 992
	zext_int2long r[7:8], r1
	loadli.w r1,  -776(r30)                 # 4-byte Folded Reload
	min.ul r[7:8], r[3:4], r[7:8]
	sext_int2long r[10:11], r1
	addli r1, r23, 0
	load.d r[22:23], -728(r30)              # 8-byte Folded Reload
	addli.d r[7:8], r[7:8], 32
	max.ul r[7:8], r[7:8], r[3:4]
	min.sl r[22:23], r[10:11], r[22:23]
	sub.sl r[3:4], r[7:8], r[3:4]
	zext_int2long r[7:8], r13
	addli.d r[22:23], r[22:23], 32
	min.ul r[3:4], r[3:4], r[7:8]
	max.sl r[22:23], r[22:23], r[10:11]
	store.d r[3:4], -728(r30)               # 8-byte Folded Spill
	load.d r[4:5], -752(r30)                # 8-byte Folded Reload
	addli r3, zero, 17
	sll.d r[3:4], r[4:5], r3
	store.d r[3:4], -752(r30)               # 8-byte Folded Spill
	sub.sl r[3:4], r[22:23], r[10:11]
	addli r23, r1, 0
	addli r1, zero, 10
	loadli.w r22,  28(r30)
	load.d r[10:11], -752(r30)              # 8-byte Folded Reload
	store.d r[3:4], -776(r30)               # 8-byte Folded Spill
	load.d r[3:4], 16(r30)
	add.ul r[3:4], r[3:4], r[10:11]
	load.d r[10:11], -776(r30)              # 8-byte Folded Reload
	min.sl r[7:8], r[10:11], r[7:8]
	addli r11, zero, 80
	store.d r[7:8], -752(r30)               # 8-byte Folded Spill
	load.d r[7:8], -768(r30)                # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r27
	addli r1, zero, 1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r1, zero, 1
	add.ul r[3:4], r[3:4], r[7:8]
	load.d r[7:8], -728(r30)                # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r1, r7, 2
	dma_cfg r3, r18, r1, 3
	addli r1, zero, 4096
	load.d r[3:4], -752(r30)                # 8-byte Folded Reload
	dma_cfg r1, r24, r3, 4
	addli r1, zero, 11
	load.d r[7:8], -744(r30)                # 8-byte Folded Reload
	dma_run zero
	unlock r27
	xsignal r1, 0
	j .LBB0_7
.LBB0_37:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_39
# %bb.38:
	.loc	1 0 0 is_stmt 0                 # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py:22:0
	addli sp, sp, 792
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
	.long	856                             # 0x358
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
.asciz	"cipoz72sczirzaswqd6py5i4dexqabowlnyyo7qzxmqf5hceau6d.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/ip" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
