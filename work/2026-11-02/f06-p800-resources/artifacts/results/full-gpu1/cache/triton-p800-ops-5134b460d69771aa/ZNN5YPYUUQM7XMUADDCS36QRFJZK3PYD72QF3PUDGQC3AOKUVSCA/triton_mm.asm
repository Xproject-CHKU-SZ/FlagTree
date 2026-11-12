	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/gn" "cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py"
	.loc	1 22 0                          # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1032
	addli r30, sp, 968
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:73:26
	core_id r2
	loadli.w r7,  32(r30)
	loadli.w r21,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -188(r30)
	storeli.w zero, -512(r30)
	storeli.w zero, -704(r30)
	storeli.w zero, -900(r30)
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
	sext_int2long r[16:17], r1
	lui r1, 7
	loadli.w r27,  -188(r30)
	loadli.w r6,  -704(r30)
	loadli.w r24,  -900(r30)
	loadli.w r26,  -512(r30)
	addli r9, zero, 128
	addli r10, zero, 8
	addli r11, zero, 6
	addli r14, zero, 5
	addli r13, zero, 4
	addli r15, zero, 1
	addli r5, zero, 48
	addli r20, zero, 7
	addli r19, zero, 256
	addli r12, zero, 2
	addli r18, zero, 47
	storeli.w zero, -920(r30)               # 4-byte Folded Spill
	store.d r[3:4], -944(r30)               # 8-byte Folded Spill
	ori r4, r1, 4095
	lui r1, 127
	lui r3, 1048448
	ori r1, r1, 4095
	store.d r[3:4], -968(r30)               # 8-byte Folded Spill
	storeli.w r1, -916(r30)                 # 4-byte Folded Spill
	j .LBB0_10
.LBB0_5:                                # %.split18.thread93
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 86 20 is_stmt 1               # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:86:20
	addli r6, r6, 8
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 101 67                        # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:101:67
	addli r27, r1, 1
	.loc	1 73 26                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:73:26
	addli r1, zero, 10
	loadli.w r25,  32(r30)
	.loc	1 101 67                        # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:101:67
	addli r26, r16, 1
	loadli.w r21,  28(r30)
	addli r24, r12, 1
	addli r5, zero, 48
	.loc	1 73 26                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:73:26
	xsignal r1, 0
	load.d r[16:17], -928(r30)              # 8-byte Folded Reload
	addli r7, r25, 0
.LBB0_7:                                # %.thread94
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 26 is_stmt 0                # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:0:26
	addli r12, zero, 2
.LBB0_8:                                # %.thread94
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r18, zero, 47
.LBB0_9:                                # %.thread94
                                        #   in Loop: Header=BB0_10 Depth=1
	load.d r[3:4], -944(r30)                # 8-byte Folded Reload
	addli.d r[16:17], r[16:17], 1
	setlt.sl r1, r[16:17], r[3:4]
	loadli.w r3,  -920(r30)                 # 4-byte Folded Reload
	addli r3, r3, 1
	storeli.w r3, -920(r30)                 # 4-byte Folded Spill
	beq r1, zero, .LBB0_39
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_19 Depth 2
	div.s r1, r16, r7
	addli r28, r21, 0
	addli r23, zero, 3
	lui r25, 20
	div.s r3, r1, r21
	.loc	1 53 22 is_stmt 1               # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:53:22
	div.s r7, r3, r9
	.loc	1 54 41                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:54:41
	slli r1, r7, 3
	.loc	1 54 30 is_stmt 0               # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:54:30
	sub.s r4, r10, r1
	.loc	1 54 50                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:54:50
	min.s r8, r4, r10
	.loc	1 55 40 is_stmt 1               # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:55:40
	mod.s r4, r3, r8
	.loc	1 55 34 is_stmt 0               # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:55:34
	add.s r1, r1, r4
	addli r4, zero, 448
	.loc	1 95 15 is_stmt 1               # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:95:15
	zext_int2long r[21:22], r1
	store.d r[21:22], -936(r30)             # 8-byte Folded Spill
	zext_int2long r[21:22], r4
	.loc	1 73 26                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:73:26
	store.d r[21:22], -912(r30)             # 8-byte Folded Spill
	bneq r2, r13, .LBB0_12
# %bb.11:                               # %.thread
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r4, zero, 11
	xwait r4, 0
	j .LBB0_17
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 26 is_stmt 0                # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:0:26
	beq r2, r15, .LBB0_30
# %bb.13:                               #   in Loop: Header=BB0_10 Depth=1
	bneq r2, r12, .LBB0_17
# %bb.14:                               # %.thread.us23.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r1, zero, 0
	lui r7, 20
	addli r8, zero, 3
	addli r21, zero, 64
.LBB0_15:                               # %.thread.us23
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:89:25
	add.s r3, r6, r1
	add.s r4, r24, r1
	xwait r12, 0
	xwait r14, 0
	lock zero, zero
	.loc	1 73 26                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:89:25
	ds_cfg r8, zero, 0
	.loc	1 81 20                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:81:20
	mod.s r3, r3, r18
	.loc	1 89 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:89:25
	mod.s r4, r4, r5
	ds_cfg r9, zero, 1
	ds_cfg r9, zero, 14
	ds_cfg r21, zero, 13
	.loc	1 81 20                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:81:20
	slli r3, r3, 14
	.loc	1 89 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:89:25
	slli r4, r4, 14
	.loc	1 81 20                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:81:20
	add.s r3, r3, r7
	.loc	1 89 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:89:25
	shuffle_batch r4, r3, r9, 1
	unlock zero
	xsignal r8, 0
	xsignal r13, 0
	bneq r1, r10, .LBB0_15
# %bb.16:                               # %.split18.split.us
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 25 is_stmt 0                # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:0:25
	loadli.w r7,  32(r30)
	.loc	1 73 26 is_stmt 1               # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:73:26
	addli r26, r26, 8
	addli r27, r27, 8
	.loc	1 89 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:89:25
	add.s r24, r24, r1
	add.s r6, r6, r1
	addli r21, r28, 0
	j .LBB0_9
.LBB0_17:                               # %.split.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 25 is_stmt 0                # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:0:25
	slli r4, r7, 7
	slli r1, r1, 6
	addli r21, zero, 2
	addli r25, zero, 0
	addli r22, zero, 3
	addli r23, zero, 64
	store.d r[16:17], -928(r30)             # 8-byte Folded Spill
	sub.s r3, r3, r4
	loadli.w r4,  -920(r30)                 # 4-byte Folded Reload
	storeli.w r1, -956(r30)                 # 4-byte Folded Spill
	div.s r3, r3, r8
	mod.s r4, r4, r14
	zext_int2long r[7:8], r3
	slli r1, r3, 6
	slli r18, r4, 14
	.loc	1 73 26 is_stmt 1               # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:73:26
	load.d r[3:4], 8(r30)
	sll.d r[7:8], r[7:8], r11
	storeli.w r1, -960(r30)                 # 4-byte Folded Spill
	sll.d r[7:8], r[7:8], r15
	store.d r[7:8], -952(r30)               # 8-byte Folded Spill
	add.ul r[7:8], r[3:4], r[7:8]
	addli r3, zero, 0
	j .LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:89:25
	addli r4, zero, 9
	xwait r11, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r22, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r9, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r17, r28, r9, 2
	unlock zero
	xsignal r20, 0
	xsignal r10, 0
	.loc	1 73 26                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:73:26
	addli r25, r25, 1
	bneq r25, r10, .LBB0_28
	j .LBB0_29
.LBB0_19:                               # %.split
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:89:25
	add.s r1, r27, r3
	.loc	1 86 20                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:86:20
	addli r4, zero, 46
	.loc	1 89 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:89:25
	add.s r16, r26, r3
	addli r5, zero, 80
	add.s r12, r24, r3
	.loc	1 86 20                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:86:20
	mod.s r4, r1, r4
	.loc	1 89 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:89:25
	mod.s r5, r16, r5
	slli r17, r5, 14
	.loc	1 86 20                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:86:20
	slli r4, r4, 14
	lui r5, 208
	add.s r28, r4, r5
	beq r2, r20, .LBB0_18
# %bb.20:                               # %.split
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 20 is_stmt 0                # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:0:20
	bneq r2, r11, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 86 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:86:25
	zext_int2long r[4:5], r25
	.loc	1 86 20                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:86:20
	addli r17, zero, 18
	xwait r20, 0
	lock zero, r13
	dma_cfg r15, r15, zero, 0
	sll.d r[4:5], r[4:5], r17
	add.ul r[4:5], r[7:8], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r28, r4, r9, 3
	addli r4, zero, 2048
	dma_cfg r9, r4, r9, 4
	dma_run zero
	unlock r13
	xsignal r11, 0
	.loc	1 73 26 is_stmt 1               # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:73:26
	addli r25, r25, 1
	bneq r25, r10, .LBB0_28
	j .LBB0_29
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:89:25
	bneq r2, r13, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 0 is_stmt 0                 # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:0:0
	addli r4, zero, 48
	.loc	1 89 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:89:25
	xwait r13, 0
	xwait r10, 0
	lock zero, r15
	mm_cfg r23, r9, r23, 0
	.loc	1 0 0                           # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:0:0
	mod.s r4, r12, r4
	.loc	1 89 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:89:25
	mm_cfg r13, r21, r15, 2
	.loc	1 0 0                           # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:0:0
	slli r4, r4, 14
	.loc	1 89 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:89:25
	beq r3, zero, .LBB0_26
# %bb.24:                               # %.preheader8
                                        #   in Loop: Header=BB0_19 Depth=2
	mm_acc r18, r4, r17, 5
	j .LBB0_27
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 73 26 is_stmt 1               # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:73:26
	addli r25, r25, 1
	bneq r25, r10, .LBB0_28
	j .LBB0_35
.LBB0_26:                               # %.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:89:25
	mm r18, r4, r17, 5
.LBB0_27:                               # %.thread6.thread91
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 73 26                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:73:26
	addli r25, r25, 1
	.loc	1 89 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:89:25
	addli r4, zero, 9
	unlock r15
	xsignal r14, 0
	xsignal r4, 0
	.loc	1 73 26                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:73:26
	beq r25, r10, .LBB0_5
.LBB0_28:                               # %.split.backedge
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:89:25
	addli r3, r3, 1
	j .LBB0_19
.LBB0_29:                               # %.split18
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 86 20                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:86:20
	addli r6, r6, 8
	.loc	1 73 26                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:73:26
	beq r2, r13, .LBB0_6
	j .LBB0_36
.LBB0_30:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 26 is_stmt 0                # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:0:26
	load.d r[3:4], -936(r30)                # 8-byte Folded Reload
	addli r1, zero, 16
	addli r28, zero, 47
	store.d r[16:17], -928(r30)             # 8-byte Folded Spill
	sll.d r[7:8], r[3:4], r1
	load.d r[3:4], -968(r30)                # 8-byte Folded Reload
	addli r1, zero, 0
	and.d r[3:4], r[7:8], r[3:4]
	j .LBB0_32
.LBB0_31:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	addli r5, zero, 1024
	.loc	1 81 25 is_stmt 1               # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:81:25
	sub.sl r[16:17], r[18:19], r[16:17]
	.loc	1 81 20 is_stmt 0               # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:81:20
	sll.d r[18:19], r[18:19], r15
	xwait r23, 0
	lock zero, r13
	dma_cfg r15, r15, zero, 0
	zext_int2long r[21:22], r5
	.loc	1 0 0                           # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:0:0
	add.s r5, r6, r1
	.loc	1 73 26 is_stmt 1               # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:73:26
	addli r1, r1, 1
	.loc	1 81 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:81:25
	div.sl r[16:17], r[16:17], r[21:22]
	.loc	1 81 20 is_stmt 0               # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:81:20
	load.d r[21:22], 0(r30)
	.loc	1 81 0                          # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:81:0
	mod.s r5, r5, r28
	.loc	1 81 20                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:81:20
	add.ul r[18:19], r[21:22], r[18:19]
	dma_cfg zero, r19, zero, 2
	.loc	1 81 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:81:25
	load.d r[21:22], -912(r30)              # 8-byte Folded Reload
	.loc	1 81 0                          # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:81:0
	slli r5, r5, 14
	add.s r5, r5, r25
	.loc	1 81 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:81:25
	min.sl r[21:22], r[16:17], r[21:22]
	sub.sl r[16:17], r[21:22], r[16:17]
	.loc	1 81 20                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:81:20
	addli r12, r16, 64
	addli r16, zero, 256
	dma_cfg r5, r18, r16, 3
	addli r5, zero, 2048
	addli r19, zero, 256
	dma_cfg r16, r5, r12, 4
	addli r12, zero, 2
	dma_run zero
	unlock r13
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:73:26
	beq r1, r10, .LBB0_34
.LBB0_32:                               # %.thread.us
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:86:25
	zext_int2long r[16:17], r1
	loadli.w r5,  -916(r30)                 # 4-byte Folded Reload
	sll.d r[16:17], r[16:17], r20
	.loc	1 81 25                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:81:25
	add.ul r[18:19], r[16:17], r[7:8]
	zext_int2long r[16:17], r5
	setlt.ul r5, r[16:17], r[18:19]
	addli.d r[16:17], r[3:4], 0
	bneq r5, zero, .LBB0_31
# %bb.33:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 0 25 is_stmt 0                # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:0:25
	zext_int2long r[16:17], zero
	j .LBB0_31
.LBB0_34:                               # %.split18.us
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 89 25 is_stmt 1               # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:89:25
	add.s r6, r6, r1
	loadli.w r1,  32(r30)
	loadli.w r21,  28(r30)
	load.d r[16:17], -928(r30)              # 8-byte Folded Reload
	.loc	1 73 26                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:73:26
	addli r24, r24, 8
	addli r26, r26, 8
	addli r27, r27, 8
	addli r14, zero, 5
	addli r5, zero, 48
	addli r7, r1, 0
	j .LBB0_8
.LBB0_35:                               # %.split18.thread90
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 86 20                         # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:86:20
	addli r6, r6, 8
.LBB0_36:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 20 is_stmt 0                # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:0:20
	loadli.w r25,  32(r30)
	.loc	1 101 67 is_stmt 1              # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:101:67
	addli r24, r12, 1
	addli r26, r16, 1
	addli r27, r1, 1
	addli r7, r25, 0
	beq r2, zero, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 67 is_stmt 0                # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:0:67
	load.d r[16:17], -928(r30)              # 8-byte Folded Reload
	loadli.w r21,  28(r30)
	addli r5, zero, 48
	j .LBB0_7
.LBB0_38:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 101 67                        # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:101:67
	loadli.w r1,  -960(r30)                 # 4-byte Folded Reload
	addli r5, r7, 0
	load.d r[21:22], -912(r30)              # 8-byte Folded Reload
	addli r14, zero, 5
	zext_int2long r[3:4], r1
	addli r1, zero, 960
	zext_int2long r[7:8], r1
	loadli.w r1,  -956(r30)                 # 4-byte Folded Reload
	min.ul r[7:8], r[3:4], r[7:8]
	sext_int2long r[16:17], r1
	addli r1, zero, 17
	addli.d r[7:8], r[7:8], 64
	min.sl r[21:22], r[16:17], r[21:22]
	max.ul r[7:8], r[7:8], r[3:4]
	addli.d r[21:22], r[21:22], 64
	sub.sl r[3:4], r[7:8], r[3:4]
	zext_int2long r[7:8], r23
	max.sl r[21:22], r[21:22], r[16:17]
	min.ul r[3:4], r[3:4], r[7:8]
	sub.sl r[16:17], r[21:22], r[16:17]
	loadli.w r21,  28(r30)
	store.d r[3:4], -912(r30)               # 8-byte Folded Spill
	load.d r[3:4], -936(r30)                # 8-byte Folded Reload
	min.sl r[7:8], r[16:17], r[7:8]
	load.d r[16:17], -952(r30)              # 8-byte Folded Reload
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 10
	store.d r[3:4], -936(r30)               # 8-byte Folded Spill
	load.d r[3:4], 16(r30)
	load.d r[22:23], -936(r30)              # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r14
	dma_cfg r15, zero, zero, 0
	dma_cfg zero, r15, zero, 1
	add.ul r[3:4], r[3:4], r[22:23]
	add.ul r[3:4], r[3:4], r[16:17]
	load.d r[16:17], -912(r30)              # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r1, r16, 2
	dma_cfg r3, r18, r1, 3
	addli r1, zero, 2048
	dma_cfg r1, r19, r7, 4
	addli r1, zero, 11
	dma_run zero
	unlock r14
	addli r7, r5, 0
	addli r5, zero, 48
	xsignal r1, 0
	load.d r[16:17], -928(r30)              # 8-byte Folded Reload
	j .LBB0_7
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py:22:0
	addli sp, sp, 968
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
	.long	1032                            # 0x408
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
.asciz	"cgnwphejhwdbzpgahooyah64pqvgdu4v7myogswgluq4ol6uwdfd.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/gn" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
