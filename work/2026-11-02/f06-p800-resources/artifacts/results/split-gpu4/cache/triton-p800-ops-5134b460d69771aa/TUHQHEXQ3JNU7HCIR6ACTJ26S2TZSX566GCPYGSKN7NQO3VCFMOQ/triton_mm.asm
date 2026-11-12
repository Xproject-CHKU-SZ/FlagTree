	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-gpu4/cache/inductor/7v" "c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py"
	.loc	1 22 0                          # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1648
	addli r30, sp, 1584
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:73:26
	core_id r22
	loadli.w r20,  32(r30)
	xsignal_mode_cfg r1
	beq r22, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:0:26
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
	addli r3, zero, 11
	csr_set csr3, r1
	sync_group
	addli r1, zero, 5
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 3
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -1520(r30)
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
	sext_int2long r[17:18], r1
	lui r1, 31
	sext_int2long r[2:3], r3
	loadli.w r8,  -244(r30)
	loadli.w r9,  -888(r30)
	loadli.w r10,  -1132(r30)
	loadli.w r24,  -1520(r30)
	addli r11, zero, 128
	addli r14, zero, 7
	addli r15, zero, 2
	addli r16, zero, 4
	addli r28, zero, 1
	addli r21, zero, 60
	lui r23, 272
	addli r7, zero, 6
	addli r25, zero, 3
	addli r26, zero, 32
	addli r27, zero, 64
	addli r19, zero, 5
	storeli.w zero, -1536(r30)              # 4-byte Folded Spill
	ori r5, r1, 4095
	lui r1, 1023
	store.d r[2:3], -1560(r30)              # 8-byte Folded Spill
	lui r3, 32
	lui r4, 1047552
	ori r1, r1, 4095
	store.d r[4:5], -1584(r30)              # 8-byte Folded Spill
	storeli.w r1, -1532(r30)                # 4-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split17.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:86:20
	addli r10, r10, 64
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:73:26
	addli r2, zero, 10
	addli r15, zero, 2
	addli r19, zero, 5
	addli r20, r3, 0
	xsignal r2, 0
	load.d r[17:18], -1544(r30)             # 8-byte Folded Reload
.LBB0_7:                                # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:0:26
	lui r3, 32
.LBB0_8:                                # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[4:5], -1560(r30)               # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 1
	addli r24, r1, 0
	setlt.sl r2, r[17:18], r[4:5]
	loadli.w r4,  -1536(r30)                # 4-byte Folded Reload
	addli r4, r4, 1
	storeli.w r4, -1536(r30)                # 4-byte Folded Spill
	beq r2, zero, .LBB0_37
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	div.s r1, r17, r20
	loadli.w r2,  28(r30)
	div.s r4, r1, r2
	.loc	1 54 30 is_stmt 1               # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:54:30
	addli r2, zero, 16
	.loc	1 53 22                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:53:22
	div.s r5, r4, r11
	.loc	1 54 41                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:54:41
	slli r1, r5, 3
	.loc	1 54 30 is_stmt 0               # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:54:30
	sub.s r6, r2, r1
	.loc	1 54 50                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:54:50
	addli r2, zero, 8
	min.s r6, r6, r2
	addli r2, zero, 1920
	.loc	1 55 40 is_stmt 1               # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:55:40
	mod.s r12, r4, r6
	.loc	1 55 34 is_stmt 0               # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:55:34
	add.s r1, r1, r12
	.loc	1 95 15 is_stmt 1               # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:95:15
	zext_int2long r[12:13], r1
	store.d r[12:13], -1552(r30)            # 8-byte Folded Spill
	zext_int2long r[12:13], r2
	.loc	1 73 26                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:73:26
	store.d r[12:13], -1528(r30)            # 8-byte Folded Spill
	bneq r22, r16, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r2, zero, 11
	xwait r2, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:0:26
	beq r22, r28, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r22, r15, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r4, zero, 0
	addli r5, zero, 96
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:89:25
	add.s r1, r10, r4
	add.s r2, r24, r4
	xwait r15, 0
	xwait r19, 0
	lock zero, zero
	.loc	1 73 26                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:73:26
	addli r4, r4, 1
	.loc	1 89 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:89:25
	ds_cfg r25, zero, 0
	.loc	1 81 20                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:81:20
	mod.s r1, r1, r21
	.loc	1 89 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:89:25
	mod.s r2, r2, r5
	ds_cfg r27, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r11, zero, 13
	.loc	1 81 20                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:81:20
	slli r1, r1, 14
	.loc	1 89 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:89:25
	slli r2, r2, 13
	.loc	1 81 20                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:81:20
	add.s r1, r1, r3
	.loc	1 89 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:89:25
	shuffle_batch r2, r1, r26, 1
	unlock zero
	xsignal r25, 0
	xsignal r16, 0
	bneq r4, r27, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:73:26
	addli r9, r9, 64
	addli r8, r8, 64
	.loc	1 89 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:89:25
	add.s r1, r24, r4
	add.s r10, r10, r4
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:0:25
	slli r5, r5, 7
	loadli.w r2,  -1536(r30)                # 4-byte Folded Reload
	slli r1, r1, 7
	addli r3, r20, 0
	addli r20, zero, 5
	addli r19, zero, 0
	store.d r[17:18], -1544(r30)            # 8-byte Folded Spill
	sub.s r4, r4, r5
	storeli.w r1, -1572(r30)                # 4-byte Folded Spill
	mod.s r5, r2, r15
	addli r15, zero, 0
	div.s r4, r4, r6
	zext_int2long r[12:13], r4
	slli r1, r4, 7
	slli r4, r5, 16
	sll.d r[12:13], r[12:13], r14
	.loc	1 73 26 is_stmt 1               # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:73:26
	storeli.w r1, -1576(r30)                # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	sll.d r[12:13], r[12:13], r28
	add.ul r[5:6], r[1:2], r[12:13]
	store.d r[12:13], -1568(r30)            # 8-byte Folded Spill
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:89:25
	addli r2, zero, 9
	xwait r7, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 8
	ds_cfg r25, zero, 0
	ds_cfg r11, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r11, zero, 13
	shuffle_coa r17, r18, r26, 2
	unlock zero
	xsignal r14, 0
	xsignal r2, 0
	.loc	1 73 26                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:73:26
	addli r19, r19, 1
	bneq r19, r27, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	.loc	1 86 20                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:86:20
	mod.s r2, r8, r21
	.loc	1 89 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:89:25
	addli r1, zero, 160
	.loc	1 86 20                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:86:20
	addli r8, r8, 1
	.loc	1 89 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:89:25
	mod.s r12, r9, r1
	addli r1, r24, 1
	addli r9, r9, 1
	.loc	1 86 20                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:86:20
	slli r2, r2, 13
	.loc	1 89 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:89:25
	slli r17, r12, 13
	.loc	1 86 20                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:86:20
	add.s r18, r2, r23
	beq r22, r14, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:0:20
	bneq r22, r7, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:86:25
	zext_int2long r[12:13], r19
	.loc	1 86 20                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:86:20
	addli r2, zero, 17
	xwait r14, 0
	lock zero, r16
	addli r17, zero, 256
	dma_cfg r28, r28, zero, 0
	sll.d r[12:13], r[12:13], r2
	addli r2, zero, 4096
	add.ul r[12:13], r[5:6], r[12:13]
	dma_cfg zero, r13, zero, 2
	dma_cfg r18, r12, r17, 3
	dma_cfg r17, r2, r26, 4
	dma_run zero
	unlock r16
	xsignal r7, 0
	.loc	1 73 26 is_stmt 1               # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:73:26
	addli r19, r19, 1
	bneq r19, r27, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:89:25
	bneq r22, r16, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:0:0
	addli r2, zero, 96
	addli r12, zero, 1
	addli r13, zero, 0
	.loc	1 89 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:89:25
	xwait r16, 0
	.loc	1 0 0                           # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:0:0
	mod.s r2, r24, r2
	addli r24, zero, 1
	slli r18, r2, 13
	.loc	1 89 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:89:25
	addli r2, zero, 8
	xwait r2, 0
	beq r15, zero, .LBB0_24
.LBB0_23:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r2, r13, 12
	slli r13, r13, 8
	lock zero, r24
	mm_cfg r27, r26, r11, 0
	or r2, r2, r17
	or r13, r13, r4
	mm_cfg r24, r16, r24, 2
	mm_acc r13, r18, r2, 5
	andi r2, r12, 1
	addli r13, zero, 1
	addli r12, zero, 0
	unlock r24
	bneq r2, zero, .LBB0_23
	j .LBB0_25
.LBB0_24:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r2, r13, 12
	slli r13, r13, 8
	lock zero, r24
	mm_cfg r27, r26, r11, 0
	or r2, r2, r17
	or r13, r13, r4
	mm_cfg r24, r16, r24, 2
	mm r13, r18, r2, 5
	andi r2, r12, 1
	addli r13, zero, 1
	addli r12, zero, 0
	unlock r24
	bneq r2, zero, .LBB0_24
.LBB0_25:                               # %.thread6.thread93
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:73:26
	addli r19, r19, 1
	.loc	1 89 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:89:25
	addli r2, zero, 9
	xsignal r20, 0
	xsignal r2, 0
	bneq r19, r27, .LBB0_27
	j .LBB0_5
.LBB0_26:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:73:26
	addli r19, r19, 1
	beq r19, r27, .LBB0_34
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:89:25
	addli r15, r15, 1
	addli r24, r1, 0
	j .LBB0_18
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:86:20
	addli r10, r10, 64
	.loc	1 73 26                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:73:26
	beq r22, r16, .LBB0_6
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:0:26
	load.d r[4:5], -1552(r30)               # 8-byte Folded Reload
	addli r1, zero, 18
	addli r7, zero, 3
	lui r25, 32
	addli r3, zero, 5
	addli r6, zero, 0
	store.d r[17:18], -1544(r30)            # 8-byte Folded Spill
	sll.d r[4:5], r[4:5], r1
	load.d r[1:2], -1584(r30)               # 8-byte Folded Reload
	and.d r[19:20], r[4:5], r[1:2]
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	addli r1, zero, 2048
	.loc	1 81 25 is_stmt 1               # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:81:25
	sub.sl r[17:18], r[12:13], r[17:18]
	.loc	1 81 20 is_stmt 0               # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:81:20
	load.d r[22:23], 0(r30)
	.loc	1 0 0                           # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:0:0
	add.s r15, r10, r6
	.loc	1 81 20                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:81:20
	xwait r7, 0
	lock zero, r16
	.loc	1 73 26 is_stmt 1               # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:73:26
	addli r6, r6, 1
	addli r28, zero, 1
	zext_int2long r[1:2], r1
	.loc	1 81 0                          # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:81:0
	mod.s r15, r15, r21
	.loc	1 81 25 is_stmt 0               # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:81:25
	div.sl r[1:2], r[17:18], r[1:2]
	addli r17, zero, 1
	.loc	1 81 20                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:81:20
	sll.d r[12:13], r[12:13], r17
	dma_cfg r17, r17, zero, 0
	add.ul r[12:13], r[22:23], r[12:13]
	.loc	1 81 0                          # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:81:0
	slli r15, r15, 14
	.loc	1 81 20                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:81:20
	dma_cfg zero, r13, zero, 2
	.loc	1 81 0                          # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:81:0
	add.s r15, r15, r25
	.loc	1 81 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:81:25
	load.d r[17:18], -1528(r30)             # 8-byte Folded Reload
	.loc	1 81 20                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:81:20
	dma_cfg r15, r12, r27, 3
	addli r15, zero, 2
	.loc	1 81 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:81:25
	min.sl r[17:18], r[1:2], r[17:18]
	sub.sl r[1:2], r[17:18], r[1:2]
	.loc	1 81 20                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:81:20
	addli r1, r1, 128
	addli r2, zero, 4096
	dma_cfg r11, r2, r1, 4
	dma_run zero
	unlock r16
	xsignal r15, 0
	.loc	1 73 26 is_stmt 1               # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:73:26
	beq r6, r27, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:86:25
	zext_int2long r[12:13], r6
	loadli.w r1,  -1532(r30)                # 4-byte Folded Reload
	sll.d r[12:13], r[12:13], r3
	zext_int2long r[17:18], r1
	.loc	1 81 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:81:25
	add.ul r[12:13], r[12:13], r[4:5]
	setlt.ul r1, r[17:18], r[12:13]
	addli.d r[17:18], r[19:20], 0
	bneq r1, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:0:25
	zext_int2long r[17:18], zero
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r20,  32(r30)
	load.d r[17:18], -1544(r30)             # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:73:26
	addli r1, r24, 64
	addli r9, r9, 64
	addli r8, r8, 64
	.loc	1 89 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:89:25
	add.s r10, r10, r6
	addli r19, zero, 5
	.loc	1 73 26                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:73:26
	core_id r22
	lui r23, 272
	lui r3, 32
	addli r25, zero, 3
	addli r7, zero, 6
	.loc	1 89 25                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:89:25
	j .LBB0_8
.LBB0_34:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:86:20
	addli r10, r10, 64
.LBB0_35:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:0:20
	load.d r[17:18], -1544(r30)             # 8-byte Folded Reload
	addli r15, zero, 2
	addli r19, zero, 5
	addli r20, r3, 0
	bneq r22, zero, .LBB0_7
# %bb.36:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67 is_stmt 1              # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:101:67
	loadli.w r2,  -1576(r30)                # 4-byte Folded Reload
	loadli.w r17,  -1572(r30)               # 4-byte Folded Reload
	addli r28, zero, 1
	zext_int2long r[5:6], r2
	load.d r[2:3], -1528(r30)               # 8-byte Folded Reload
	sext_int2long r[17:18], r17
	min.ul r[12:13], r[5:6], r[2:3]
	min.sl r[19:20], r[17:18], r[2:3]
	addli.d r[12:13], r[12:13], 128
	addli.d r[19:20], r[19:20], 128
	max.ul r[12:13], r[12:13], r[5:6]
	max.sl r[19:20], r[19:20], r[17:18]
	sub.sl r[5:6], r[12:13], r[5:6]
	zext_int2long r[12:13], r11
	sub.sl r[17:18], r[19:20], r[17:18]
	addli r19, zero, 5
	loadli.w r20,  32(r30)
	min.ul r[2:3], r[5:6], r[12:13]
	load.d r[5:6], -1552(r30)               # 8-byte Folded Reload
	min.sl r[12:13], r[17:18], r[12:13]
	load.d r[17:18], -1544(r30)             # 8-byte Folded Reload
	store.d r[2:3], -1528(r30)              # 8-byte Folded Spill
	addli r2, zero, 19
	sll.d r[5:6], r[5:6], r2
	load.d r[2:3], 16(r30)
	add.ul r[5:6], r[2:3], r[5:6]
	load.d r[2:3], -1568(r30)               # 8-byte Folded Reload
	add.ul r[5:6], r[5:6], r[2:3]
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	lock zero, r19
	dma_cfg r2, zero, zero, 0
	dma_cfg zero, r2, zero, 1
	load.d r[2:3], -1528(r30)               # 8-byte Folded Reload
	dma_cfg r6, zero, zero, 2
	slli r2, r2, 2
	addli r3, zero, 4096
	dma_cfg r5, r4, r2, 3
	addli r2, zero, 512
	dma_cfg r3, r2, r12, 4
	addli r2, zero, 11
	dma_run zero
	unlock r19
	xsignal r2, 0
	j .LBB0_7
.LBB0_37:                               # %._crit_edge
	.loc	1 22 0                          # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:22:0
	xsignal zero, 0
	bneq r22, zero, .LBB0_39
# %bb.38:
	.loc	1 0 0 is_stmt 0                 # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:22:0
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
	.loc	1 22 0 epilogue_begin           # c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py:22:0
	addli sp, sp, 1584
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
	.long	1648                            # 0x670
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
.asciz	"c7vug5wvqruh2rdixt76xwu2sbcumn4fb7qhoriobgz3imfy67b3.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-gpu4/cache/inductor/7v" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
