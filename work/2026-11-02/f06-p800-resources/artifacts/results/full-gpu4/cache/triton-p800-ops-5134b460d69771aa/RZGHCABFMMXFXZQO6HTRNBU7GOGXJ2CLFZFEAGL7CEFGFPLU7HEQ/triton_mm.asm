	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/il" "cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py"
	.loc	1 22 0                          # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1928
	addli r30, sp, 1864
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:73:26
	core_id r25
	loadli.w r24,  32(r30)
	xsignal_mode_cfg r1
	beq r25, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:0:26
	lui r1, 1048575
	ori r1, r1, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	addli r2, zero, 2
	uni_sram_cfg r1, r1
	lui r3, 1048575
	lock zero, r2
	ew_cfg r1, zero, zero, 16
	ori r1, r3, 4095
	addli r3, zero, 3
	unlock r2
	addli r2, zero, 11
	csr_set csr3, r1
	addli r1, zero, 5
	sync_group
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	loadli.w r2,  28(r30)
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -384(r30)
	storeli.w zero, -1028(r30)
	storeli.w zero, -1412(r30)
	storeli.w zero, -1800(r30)
	mul.s r1, r2, r1
	addli r2, r4, 0
	fmac.s r2, r1, r3
	mul.s r3, r1, r3
	addli r2, r2, -1
	div.s r2, r2, r4
	load_param_i r4, 0
	mul.s r1, r2, r4
	fmac.s r2, r2, r4
	min.s r2, r2, r3
	ble.s r2, r1, .LBB0_39
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	sext_int2long r[8:9], r1
	loadli.w r28,  -384(r30)
	loadli.w r26,  -1028(r30)
	loadli.w r1,  -1800(r30)
	addli r19, zero, 128
	addli r17, zero, 8
	addli r11, zero, 6
	addli r13, zero, 4
	addli r12, zero, 1
	addli r27, zero, 96
	addli r18, zero, 95
	addli r20, zero, 7
	addli r22, zero, 64
	addli r23, zero, 16
	addli r21, zero, 5
	addli r10, zero, 2
	lui r16, 12
	storeli.w zero, -1816(r30)              # 4-byte Folded Spill
	store.d r[2:3], -1840(r30)              # 8-byte Folded Spill
	lui r3, 7
	loadli.w r2,  -1412(r30)
	ori r5, r3, 4095
	lui r3, 127
	lui r4, 1048448
	ori r3, r3, 4095
	store.d r[4:5], -1864(r30)              # 8-byte Folded Spill
	storeli.w r3, -1812(r30)                # 4-byte Folded Spill
	j .LBB0_10
.LBB0_5:                                # %.split17.thread92
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 86 20 is_stmt 1               # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:86:20
	addli r2, r2, 16
.LBB0_6:                                #   in Loop: Header=BB0_10 Depth=1
	.loc	1 101 67                        # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:101:67
	addli r1, r10, 1
	addli r26, r4, 1
	addli r28, r16, 1
	addli r27, zero, 96
	addli r21, zero, 5
	beq r25, zero, .LBB0_37
# %bb.7:                                #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 67 is_stmt 0                # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:0:67
	load.d r[8:9], -1824(r30)               # 8-byte Folded Reload
	loadli.w r24,  32(r30)
.LBB0_8:                                # %.thread96
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r10, zero, 2
	lui r16, 12
.LBB0_9:                                # %.thread96
                                        #   in Loop: Header=BB0_10 Depth=1
	load.d r[3:4], -1840(r30)               # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 1
	setlt.sl r3, r[8:9], r[3:4]
	loadli.w r4,  -1816(r30)                # 4-byte Folded Reload
	addli r4, r4, 1
	storeli.w r4, -1816(r30)                # 4-byte Folded Spill
	beq r3, zero, .LBB0_39
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_20 Depth 2
	div.s r3, r8, r24
	loadli.w r4,  28(r30)
	div.s r4, r3, r4
	.loc	1 53 22 is_stmt 1               # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:53:22
	div.s r5, r4, r19
	.loc	1 54 41                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:54:41
	slli r3, r5, 3
	.loc	1 54 30 is_stmt 0               # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:54:30
	sub.s r6, r17, r3
	.loc	1 54 50                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:54:50
	min.s r6, r6, r17
	.loc	1 55 40 is_stmt 1               # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:55:40
	mod.s r7, r4, r6
	.loc	1 55 34 is_stmt 0               # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:55:34
	add.s r3, r3, r7
	addli r7, zero, 448
	.loc	1 95 15 is_stmt 1               # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:95:15
	zext_int2long r[14:15], r3
	store.d r[14:15], -1832(r30)            # 8-byte Folded Spill
	zext_int2long r[14:15], r7
	.loc	1 73 26                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:73:26
	store.d r[14:15], -1808(r30)            # 8-byte Folded Spill
	bneq r25, r13, .LBB0_12
# %bb.11:                               # %.thread
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r7, zero, 11
	addli r15, zero, 3
	xwait r7, 0
	j .LBB0_17
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 26 is_stmt 0                # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:0:26
	beq r25, r12, .LBB0_32
# %bb.13:                               #   in Loop: Header=BB0_10 Depth=1
	addli r15, zero, 3
	bneq r25, r10, .LBB0_17
# %bb.14:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r3, zero, 0
.LBB0_15:                               # %.thread.us21
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:89:25
	add.s r4, r2, r3
	add.s r5, r1, r3
	xwait r10, 0
	xwait r21, 0
	lock zero, zero
	.loc	1 73 26                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:89:25
	ds_cfg r15, zero, 0
	.loc	1 81 20                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:81:20
	mod.s r4, r4, r18
	.loc	1 89 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:89:25
	mod.s r5, r5, r27
	ds_cfg r22, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r22, zero, 13
	.loc	1 81 20                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:81:20
	slli r4, r4, 13
	.loc	1 89 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:89:25
	slli r5, r5, 13
	.loc	1 81 20                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:81:20
	add.s r4, r4, r16
	.loc	1 89 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:89:25
	shuffle_batch r5, r4, r22, 1
	unlock zero
	xsignal r15, 0
	xsignal r13, 0
	bneq r3, r23, .LBB0_15
# %bb.16:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 73 26                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:73:26
	addli r26, r26, 16
	addli r28, r28, 16
	.loc	1 89 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:89:25
	add.s r1, r1, r3
	add.s r2, r2, r3
	j .LBB0_9
.LBB0_17:                               # %.split.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 25 is_stmt 0                # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:0:25
	slli r5, r5, 7
	slli r3, r3, 6
	addli r24, zero, 2
	addli r21, zero, 0
	addli r14, zero, 0
	store.d r[8:9], -1824(r30)              # 8-byte Folded Spill
	sub.s r4, r4, r5
	loadli.w r5,  -1816(r30)                # 4-byte Folded Reload
	storeli.w r3, -1852(r30)                # 4-byte Folded Spill
	div.s r4, r4, r6
	mod.s r5, r5, r15
	zext_int2long r[6:7], r4
	slli r3, r4, 6
	sll.d r[6:7], r[6:7], r11
	.loc	1 73 26 is_stmt 1               # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:73:26
	storeli.w r3, -1856(r30)                # 4-byte Folded Spill
	slli r3, r5, 14
	load.d r[4:5], 8(r30)
	sll.d r[6:7], r[6:7], r12
	store.d r[6:7], -1848(r30)              # 8-byte Folded Spill
	add.ul r[5:6], r[4:5], r[6:7]
	j .LBB0_20
.LBB0_18:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 89 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:89:25
	addli r8, zero, 9
	xwait r11, 0
	xwait r8, 0
	lock zero, zero
	ds_cfg r15, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r7, r27, r22, 2
	unlock zero
	xsignal r20, 0
	xsignal r17, 0
	.loc	1 73 26                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:73:26
	addli r21, r21, 1
	beq r21, r23, .LBB0_30
.LBB0_19:                               # %.split.backedge
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 89 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:89:25
	addli r14, r14, 1
.LBB0_20:                               # %.split
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r16, r28, r14
	add.s r4, r26, r14
	addli r8, zero, 160
	add.s r10, r1, r14
	.loc	1 86 20                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:86:20
	mod.s r7, r16, r18
	.loc	1 89 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:89:25
	mod.s r8, r4, r8
	.loc	1 86 20                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:86:20
	slli r9, r7, 13
	.loc	1 89 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:89:25
	slli r7, r8, 13
	.loc	1 86 20                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:86:20
	lui r8, 202
	add.s r27, r9, r8
	beq r25, r20, .LBB0_18
# %bb.21:                               # %.split
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 20 is_stmt 0                # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:0:20
	bneq r25, r11, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 86 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:86:25
	zext_int2long r[7:8], r21
	.loc	1 86 20                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:86:20
	addli r9, zero, 17
	xwait r20, 0
	lock zero, r13
	dma_cfg r12, r12, zero, 0
	sll.d r[7:8], r[7:8], r9
	add.ul r[7:8], r[5:6], r[7:8]
	dma_cfg zero, r8, zero, 2
	dma_cfg r27, r7, r19, 3
	addli r7, zero, 2048
	dma_cfg r19, r7, r22, 4
	dma_run zero
	unlock r13
	xsignal r11, 0
	.loc	1 73 26 is_stmt 1               # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:73:26
	addli r21, r21, 1
	bneq r21, r23, .LBB0_19
	j .LBB0_30
.LBB0_23:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 89 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:89:25
	bneq r25, r13, .LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 0 is_stmt 0                 # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:0:0
	addli r8, zero, 96
	.loc	1 89 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:89:25
	xwait r13, 0
	xwait r17, 0
	lock zero, r12
	mm_cfg r22, r22, r22, 0
	.loc	1 0 0                           # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:0:0
	mod.s r8, r10, r8
	.loc	1 89 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:89:25
	mm_cfg r24, r24, r12, 2
	.loc	1 0 0                           # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:0:0
	slli r17, r8, 13
	.loc	1 89 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:89:25
	beq r14, zero, .LBB0_27
# %bb.25:                               # %.preheader8
                                        #   in Loop: Header=BB0_20 Depth=2
	mm_acc r3, r17, r7, 5
	j .LBB0_28
.LBB0_26:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 73 26 is_stmt 1               # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:73:26
	addli r21, r21, 1
	bneq r21, r23, .LBB0_19
	j .LBB0_5
.LBB0_27:                               # %.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 89 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:89:25
	mm r3, r17, r7, 5
.LBB0_28:                               # %.thread6.thread93
                                        #   in Loop: Header=BB0_20 Depth=2
	addli r7, zero, 5
	unlock r12
	.loc	1 73 26                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:73:26
	addli r21, r21, 1
	addli r17, zero, 8
	.loc	1 89 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:89:25
	xsignal r7, 0
	addli r7, zero, 9
	xsignal r7, 0
	.loc	1 73 26                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:73:26
	bneq r21, r23, .LBB0_19
# %bb.29:                               # %.split17.thread95
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 86 20                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:86:20
	addli r2, r2, 16
	j .LBB0_31
.LBB0_30:                               # %.split17
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r2, r2, 16
	.loc	1 73 26                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:73:26
	bneq r25, r13, .LBB0_6
.LBB0_31:                               # %.thread7
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r3, zero, 10
	loadli.w r24,  32(r30)
	.loc	1 101 67                        # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:101:67
	addli r1, r10, 1
	addli r26, r4, 1
	addli r28, r16, 1
	addli r27, zero, 96
	addli r21, zero, 5
	j .LBB0_38
.LBB0_32:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 67 is_stmt 0                # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:0:67
	load.d r[3:4], -1832(r30)               # 8-byte Folded Reload
	load.d r[5:6], -1864(r30)               # 8-byte Folded Reload
	addli r14, zero, 3
	store.d r[8:9], -1824(r30)              # 8-byte Folded Spill
	sll.d r[3:4], r[3:4], r23
	and.d r[24:25], r[3:4], r[5:6]
	addli r5, zero, 0
	j .LBB0_34
.LBB0_33:                               # %.thread.us
                                        #   in Loop: Header=BB0_34 Depth=2
	addli r8, zero, 1024
	.loc	1 81 25 is_stmt 1               # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:81:25
	sub.sl r[6:7], r[16:17], r[6:7]
	.loc	1 81 20 is_stmt 0               # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:81:20
	xwait r14, 0
	lock zero, r13
	dma_cfg r12, r12, zero, 0
	zext_int2long r[8:9], r8
	.loc	1 81 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:81:25
	div.sl r[6:7], r[6:7], r[8:9]
	.loc	1 81 20                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:81:20
	sll.d r[9:10], r[16:17], r12
	load.d r[16:17], 0(r30)
	.loc	1 0 0                           # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:0:0
	add.s r8, r2, r5
	.loc	1 73 26 is_stmt 1               # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:73:26
	addli r5, r5, 1
	.loc	1 81 0                          # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:81:0
	mod.s r8, r8, r18
	.loc	1 81 20 is_stmt 0               # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:81:20
	add.ul r[9:10], r[16:17], r[9:10]
	dma_cfg zero, r10, zero, 2
	.loc	1 81 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:81:25
	load.d r[14:15], -1808(r30)             # 8-byte Folded Reload
	.loc	1 81 0                          # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:81:0
	slli r8, r8, 13
	.loc	1 81 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:81:25
	min.sl r[16:17], r[6:7], r[14:15]
	addli r14, zero, 3
	sub.sl r[6:7], r[16:17], r[6:7]
	lui r16, 12
	.loc	1 81 0                          # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:81:0
	add.s r8, r8, r16
	.loc	1 81 20                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:81:20
	addli r6, r6, 64
	addli r7, zero, 2048
	dma_cfg r8, r9, r19, 3
	addli r10, zero, 2
	dma_cfg r19, r7, r6, 4
	dma_run zero
	unlock r13
	xsignal r10, 0
	.loc	1 73 26 is_stmt 1               # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:73:26
	beq r5, r23, .LBB0_36
.LBB0_34:                               # %.thread.us
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:86:25
	zext_int2long r[6:7], r5
	sll.d r[6:7], r[6:7], r11
	.loc	1 81 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:81:25
	add.ul r[16:17], r[6:7], r[3:4]
	loadli.w r6,  -1812(r30)                # 4-byte Folded Reload
	zext_int2long r[6:7], r6
	setlt.ul r10, r[6:7], r[16:17]
	addli.d r[6:7], r[24:25], 0
	bneq r10, zero, .LBB0_33
# %bb.35:                               # %.thread.us
                                        #   in Loop: Header=BB0_34 Depth=2
	.loc	1 0 25 is_stmt 0                # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:0:25
	zext_int2long r[6:7], zero
	j .LBB0_33
.LBB0_36:                               # %.split17.us
                                        #   in Loop: Header=BB0_10 Depth=1
	loadli.w r24,  32(r30)
	load.d r[8:9], -1824(r30)               # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:73:26
	addli r1, r1, 16
	addli r26, r26, 16
	addli r28, r28, 16
	.loc	1 89 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:89:25
	add.s r2, r2, r5
	.loc	1 73 26                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:73:26
	core_id r25
	addli r17, zero, 8
	.loc	1 89 25                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:89:25
	j .LBB0_9
.LBB0_37:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 101 67                        # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:101:67
	loadli.w r4,  -1856(r30)                # 4-byte Folded Reload
	loadli.w r8,  -1852(r30)                # 4-byte Folded Reload
	addli r6, zero, 960
	load.d r[16:17], -1808(r30)             # 8-byte Folded Reload
	load.d r[14:15], -1832(r30)             # 8-byte Folded Reload
	addli r10, zero, 17
	zext_int2long r[6:7], r6
	zext_int2long r[4:5], r4
	sext_int2long r[8:9], r8
	sll.d r[24:25], r[14:15], r10
	addli r10, zero, 10
	min.ul r[6:7], r[4:5], r[6:7]
	min.sl r[16:17], r[8:9], r[16:17]
	addli.d r[6:7], r[6:7], 64
	addli.d r[16:17], r[16:17], 64
	max.ul r[6:7], r[6:7], r[4:5]
	max.sl r[16:17], r[16:17], r[8:9]
	sub.sl r[4:5], r[6:7], r[4:5]
	zext_int2long r[6:7], r22
	sub.sl r[8:9], r[16:17], r[8:9]
	load.d r[16:17], 16(r30)
	min.ul r[4:5], r[4:5], r[6:7]
	min.sl r[6:7], r[8:9], r[6:7]
	load.d r[8:9], -1848(r30)               # 8-byte Folded Reload
	xwait r10, 0
	lock zero, r21
	add.ul r[16:17], r[16:17], r[24:25]
	dma_cfg r12, zero, zero, 0
	loadli.w r24,  32(r30)
	.loc	1 73 26                         # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:73:26
	core_id r25
	.loc	1 101 67                        # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:101:67
	dma_cfg zero, r12, zero, 1
	slli r4, r4, 2
	add.ul r[8:9], r[16:17], r[8:9]
	addli r17, zero, 8
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r3, r4, 3
	addli r3, zero, 256
	addli r4, zero, 2048
	dma_cfg r4, r3, r6, 4
	addli r3, zero, 11
	dma_run zero
	unlock r21
.LBB0_38:                               # %.thread96
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 0 is_stmt 0                 # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:0:0
	xsignal r3, 0
	load.d r[8:9], -1824(r30)               # 8-byte Folded Reload
	j .LBB0_8
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:22:0
	xsignal zero, 0
	bneq r25, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py:22:0
	addli sp, sp, 1864
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
	.long	1928                            # 0x788
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
.asciz	"cilbrpjbzuastzw4hj5kuig6edodsyy4qmmdz2wru4gcygmye2su.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/il" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
