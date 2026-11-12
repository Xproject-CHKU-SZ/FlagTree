	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/fp" "cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py"
	.loc	1 22 0                          # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1456
	addli r30, sp, 1392
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:73:26
	core_id r2
	loadli.w r8,  32(r30)
	loadli.w r16,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:0:26
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
	addli r4, zero, 5
	unlock r3
	addli r3, zero, 3
	csr_set csr3, r1
	addli r1, zero, 11
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -244(r30)
	storeli.w zero, -888(r30)
	storeli.w zero, -1132(r30)
	storeli.w zero, -1328(r30)
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
	sext_int2long r[20:21], r1
	lui r1, 15
	loadli.w r22,  -1328(r30)
	loadli.w r27,  -244(r30)
	loadli.w r28,  -888(r30)
	loadli.w r9,  -1132(r30)
	addli r26, zero, 128
	addli r10, zero, 4
	addli r12, zero, 6
	addli r14, zero, 2
	addli r24, zero, 48
	addli r17, zero, 60
	lui r18, 272
	addli r19, zero, 7
	addli r23, zero, 32
	addli r25, zero, 5
	lui r13, 32
	addli r15, zero, 3
	addli r5, zero, 0
	store.d r[3:4], -1368(r30)              # 8-byte Folded Spill
	ori r4, r1, 4095
	lui r1, 127
	lui r3, 1048448
	ori r1, r1, 4095
	store.d r[3:4], -1392(r30)              # 8-byte Folded Spill
	storeli.w r1, -1340(r30)                # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.split17.us
                                        #   in Loop: Header=BB0_7 Depth=1
	loadli.w r8,  32(r30)
	loadli.w r16,  28(r30)
	load.d r[20:21], -1352(r30)             # 8-byte Folded Reload
	loadli.w r5,  -1376(r30)                # 4-byte Folded Reload
	.loc	1 73 26                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:73:26
	addli r22, r22, 32
	addli r28, r28, 32
	addli r27, r27, 32
	.loc	1 89 25 is_stmt 1               # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:89:25
	add.s r9, r9, r1
	addli r24, zero, 48
	addli r25, zero, 5
	lui r13, 32
	lui r18, 272
	addli r15, zero, 3
.LBB0_6:                                # %.thread96
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:0:25
	load.d r[3:4], -1368(r30)               # 8-byte Folded Reload
	addli.d r[20:21], r[20:21], 1
	addli r5, r5, 1
	setlt.sl r1, r[20:21], r[3:4]
	beq r1, zero, .LBB0_38
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_17 Depth 2
	div.s r1, r20, r8
	.loc	1 54 50 is_stmt 1               # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:54:50
	addli r3, zero, 8
	div.s r6, r1, r16
	.loc	1 53 22                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:53:22
	div.s r7, r6, r26
	.loc	1 54 41                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:54:41
	slli r1, r7, 3
	.loc	1 54 30 is_stmt 0               # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:54:30
	sub.s r4, r10, r1
	.loc	1 54 50                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:54:50
	min.s r11, r4, r3
	.loc	1 55 40 is_stmt 1               # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:55:40
	mod.s r4, r6, r11
	.loc	1 55 34 is_stmt 0               # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:55:34
	add.s r1, r1, r4
	.loc	1 95 15 is_stmt 1               # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:95:15
	zext_int2long r[3:4], r1
	store.d r[3:4], -1360(r30)              # 8-byte Folded Spill
	addli r3, zero, 384
	zext_int2long r[3:4], r3
	.loc	1 73 26                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:73:26
	store.d r[3:4], -1336(r30)              # 8-byte Folded Spill
	bneq r2, r10, .LBB0_9
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	xwait r3, 0
	j .LBB0_14
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:0:26
	addli r3, zero, 1
	beq r2, r3, .LBB0_29
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r2, r14, .LBB0_14
# %bb.11:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 0
.LBB0_12:                               # %.thread.us21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:89:25
	add.s r3, r9, r1
	add.s r4, r22, r1
	xwait r14, 0
	xwait r25, 0
	lock zero, zero
	.loc	1 73 26                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:89:25
	ds_cfg r14, zero, 0
	.loc	1 81 20                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:81:20
	mod.s r3, r3, r17
	.loc	1 89 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:89:25
	mod.s r4, r4, r24
	ds_cfg r23, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r26, zero, 13
	.loc	1 81 20                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:81:20
	slli r3, r3, 14
	.loc	1 89 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:89:25
	slli r4, r4, 14
	.loc	1 81 20                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:81:20
	add.s r3, r3, r13
	.loc	1 89 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:89:25
	shuffle_batch r4, r3, r23, 1
	unlock zero
	xsignal r15, 0
	xsignal r10, 0
	bneq r1, r23, .LBB0_12
# %bb.13:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:73:26
	addli r28, r28, 32
	addli r27, r27, 32
	.loc	1 89 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:89:25
	add.s r22, r22, r1
	add.s r9, r9, r1
	j .LBB0_6
.LBB0_14:                               # %.split.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:0:25
	slli r7, r7, 7
	store.d r[20:21], -1352(r30)            # 8-byte Folded Spill
	slli r1, r1, 7
	.loc	1 73 26 is_stmt 1               # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:73:26
	load.d r[3:4], 8(r30)
	addli r16, zero, 48
	addli r8, zero, 128
	addli r15, zero, 0
	addli r13, zero, 0
	sub.s r6, r6, r7
	mod.s r7, r5, r10
	storeli.w r1, -1380(r30)                # 4-byte Folded Spill
	div.s r6, r6, r11
	zext_int2long r[20:21], r6
	slli r1, r6, 6
	sll.d r[20:21], r[20:21], r12
	storeli.w r1, -1384(r30)                # 4-byte Folded Spill
	slli r1, r7, 15
	sll.d r[20:21], r[20:21], r14
	store.d r[20:21], -1376(r30)            # 8-byte Folded Spill
	add.ul r[24:25], r[3:4], r[20:21]
	addli r21, zero, 8
	j .LBB0_17
.LBB0_15:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:89:25
	addli r3, zero, 9
	xwait r12, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 64
	ds_cfg r14, zero, 0
	ds_cfg r3, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r3, zero, 13
	shuffle_coa r6, r7, r23, 2
	unlock zero
	xsignal r19, 0
	xsignal r21, 0
	.loc	1 73 26                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:73:26
	addli r15, r15, 1
	beq r15, r23, .LBB0_27
.LBB0_16:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:89:25
	addli r13, r13, 1
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r20, r27, r13
	add.s r11, r28, r13
	addli r4, zero, 160
	add.s r26, r22, r13
	.loc	1 86 20                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:86:20
	mod.s r3, r20, r17
	.loc	1 89 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:89:25
	mod.s r4, r11, r4
	.loc	1 86 20                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:86:20
	slli r3, r3, 13
	.loc	1 89 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:89:25
	slli r6, r4, 13
	.loc	1 86 20                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:86:20
	add.s r7, r3, r18
	beq r2, r19, .LBB0_15
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:0:20
	bneq r2, r12, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:86:25
	zext_int2long r[3:4], r15
	.loc	1 86 20                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:86:20
	addli r6, zero, 17
	xwait r19, 0
	lock zero, r10
	dma_cfg zero, zero, zero, 0
	sll.d r[3:4], r[3:4], r6
	addli r6, zero, 256
	add.ul r[3:4], r[24:25], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r7, r3, r6, 3
	addli r3, zero, 4096
	dma_cfg r6, r3, r23, 4
	dma_run zero
	unlock r10
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:73:26
	addli r15, r15, 1
	bneq r15, r23, .LBB0_16
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:89:25
	bneq r2, r10, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 0 is_stmt 0                 # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:0:0
	mod.s r3, r26, r16
	addli r4, zero, 1
	.loc	1 89 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:89:25
	xwait r10, 0
	xwait r21, 0
	lock zero, r4
	.loc	1 0 0                           # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:0:0
	slli r7, r3, 14
	.loc	1 89 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:89:25
	addli r3, zero, 64
	mm_cfg r3, r23, r8, 0
	mm_cfg r14, r14, r4, 2
	beq r13, zero, .LBB0_24
# %bb.22:                               # %.preheader8
                                        #   in Loop: Header=BB0_17 Depth=2
	mm_acc r1, r7, r6, 8
	j .LBB0_25
.LBB0_23:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:73:26
	addli r15, r15, 1
	bneq r15, r23, .LBB0_16
	j .LBB0_33
.LBB0_24:                               # %.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:89:25
	mm r1, r7, r6, 8
.LBB0_25:                               # %.thread6.thread93
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r3, zero, 1
	.loc	1 73 26                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:73:26
	addli r15, r15, 1
	.loc	1 89 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:89:25
	unlock r3
	addli r3, zero, 5
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	.loc	1 73 26                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:73:26
	bneq r15, r23, .LBB0_16
# %bb.26:                               # %.split17.thread95
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:86:20
	addli r9, r9, 32
	j .LBB0_28
.LBB0_27:                               # %.split17
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r9, r9, 32
	.loc	1 73 26                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:73:26
	bneq r2, r10, .LBB0_34
.LBB0_28:                               # %.thread7
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	.loc	1 101 67                        # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:101:67
	addli r27, r20, 1
	loadli.w r8,  32(r30)
	loadli.w r16,  28(r30)
	addli r22, r26, 1
	addli r28, r11, 1
	addli r26, zero, 128
	addli r24, zero, 48
	addli r25, zero, 5
	lui r13, 32
	addli r15, zero, 3
	j .LBB0_37
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 67 is_stmt 0                # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:0:67
	load.d r[3:4], -1360(r30)               # 8-byte Folded Reload
	addli r1, zero, 17
	storeli.w r5, -1376(r30)                # 4-byte Folded Spill
	addli r5, zero, 3
	lui r18, 32
	addli r13, zero, 5
	store.d r[20:21], -1352(r30)            # 8-byte Folded Spill
	sll.d r[24:25], r[3:4], r1
	load.d r[3:4], -1392(r30)               # 8-byte Folded Reload
	addli r1, zero, 0
	and.d r[15:16], r[24:25], r[3:4]
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	addli r3, zero, 1024
	.loc	1 81 25 is_stmt 1               # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:81:25
	sub.sl r[6:7], r[20:21], r[6:7]
	.loc	1 81 20 is_stmt 0               # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:81:20
	sll.d r[20:21], r[20:21], r14
	xwait r5, 0
	lock zero, r10
	dma_cfg zero, zero, zero, 0
	zext_int2long r[3:4], r3
	.loc	1 81 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:81:25
	div.sl r[3:4], r[6:7], r[3:4]
	.loc	1 81 20                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:81:20
	load.d r[7:8], 0(r30)
	.loc	1 0 0                           # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:0:0
	add.s r6, r9, r1
	.loc	1 73 26 is_stmt 1               # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:73:26
	addli r1, r1, 1
	.loc	1 81 0                          # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:81:0
	mod.s r6, r6, r17
	.loc	1 81 20 is_stmt 0               # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:81:20
	add.ul r[20:21], r[7:8], r[20:21]
	dma_cfg zero, r21, zero, 2
	.loc	1 81 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:81:25
	load.d r[7:8], -1336(r30)               # 8-byte Folded Reload
	.loc	1 81 0                          # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:81:0
	slli r6, r6, 14
	add.s r6, r6, r18
	.loc	1 81 20                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:81:20
	dma_cfg r6, r20, r26, 3
	.loc	1 81 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:81:25
	min.sl r[7:8], r[3:4], r[7:8]
	sub.sl r[3:4], r[7:8], r[3:4]
	.loc	1 81 20                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:81:20
	addli r3, r3, 128
	addli r4, zero, 4096
	dma_cfg r26, r4, r3, 4
	dma_run zero
	unlock r10
	xsignal r14, 0
	.loc	1 73 26 is_stmt 1               # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:73:26
	beq r1, r23, .LBB0_5
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:86:25
	zext_int2long r[6:7], r1
	loadli.w r3,  -1340(r30)                # 4-byte Folded Reload
	sll.d r[6:7], r[6:7], r13
	.loc	1 81 25                         # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:81:25
	add.ul r[20:21], r[6:7], r[24:25]
	zext_int2long r[6:7], r3
	setlt.ul r11, r[6:7], r[20:21]
	addli.d r[6:7], r[15:16], 0
	bneq r11, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:0:25
	zext_int2long r[6:7], zero
	j .LBB0_30
.LBB0_33:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20 is_stmt 1               # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:86:20
	addli r9, r9, 32
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:0:20
	loadli.w r8,  32(r30)
	.loc	1 101 67 is_stmt 1              # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:101:67
	addli r22, r26, 1
	addli r28, r11, 1
	addli r27, r20, 1
	addli r24, zero, 48
	addli r25, zero, 5
	lui r13, 32
	addli r15, zero, 3
	beq r2, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 67 is_stmt 0                # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:0:67
	load.d r[20:21], -1352(r30)             # 8-byte Folded Reload
	loadli.w r16,  28(r30)
	addli r26, zero, 128
	.loc	1 101 67                        # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:101:67
	j .LBB0_6
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r3,  -1384(r30)                # 4-byte Folded Reload
	addli r6, zero, 960
	loadli.w r11,  -1380(r30)               # 4-byte Folded Reload
	load.d r[20:21], -1336(r30)             # 8-byte Folded Reload
	addli r26, zero, 128
	zext_int2long r[6:7], r6
	zext_int2long r[3:4], r3
	sext_int2long r[15:16], r11
	addli r11, r5, 0
	addli r5, zero, 64
	min.ul r[6:7], r[3:4], r[6:7]
	min.sl r[20:21], r[15:16], r[20:21]
	addli.d r[6:7], r[6:7], 64
	addli.d r[20:21], r[20:21], 128
	max.ul r[6:7], r[6:7], r[3:4]
	max.sl r[20:21], r[20:21], r[15:16]
	sub.sl r[3:4], r[6:7], r[3:4]
	zext_int2long r[6:7], r5
	addli r5, r11, 0
	addli r11, zero, 19
	min.ul r[3:4], r[3:4], r[6:7]
	sub.sl r[6:7], r[20:21], r[15:16]
	zext_int2long r[20:21], r26
	store.d r[3:4], -1336(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1360(r30)               # 8-byte Folded Reload
	min.sl r[6:7], r[6:7], r[20:21]
	sll.d r[15:16], r[3:4], r11
	load.d r[3:4], 16(r30)
	addli r11, zero, 10
	add.ul r[15:16], r[3:4], r[15:16]
	load.d r[3:4], -1376(r30)               # 8-byte Folded Reload
	xwait r11, 0
	lock zero, r25
	addli r11, zero, 1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r11, zero, 1
	add.ul r[15:16], r[15:16], r[3:4]
	load.d r[3:4], -1336(r30)               # 8-byte Folded Reload
	dma_cfg r16, zero, zero, 2
	slli r3, r3, 2
	dma_cfg r15, r1, r3, 3
	addli r1, zero, 256
	addli r3, zero, 4096
	loadli.w r16,  28(r30)
	addli r15, zero, 3
	dma_cfg r3, r1, r6, 4
	addli r1, zero, 11
	dma_run zero
	unlock r25
.LBB0_37:                               # %.thread96
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:0:0
	xsignal r1, 0
	load.d r[20:21], -1352(r30)             # 8-byte Folded Reload
	j .LBB0_6
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py:22:0
	addli sp, sp, 1392
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
	.long	1456                            # 0x5b0
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
.asciz	"cfpq3ad3io3zbhcerrlpcpqvjywsf7iyefuszfcirlmha5fyopur.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/fp" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
