	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/dd" "cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py"
	.loc	1 22 0                          # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1352
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:73:26
	core_id r2
	addli r30, sp, 1288
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -256(r30)
	storeli.w zero, -580(r30)
	storeli.w zero, -832(r30)
	storeli.w zero, -1220(r30)
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
	ble.s r3, r1, .LBB0_35
# %bb.4:                                # %.lr.ph
	loadli.w r8,  -256(r30)
	loadli.w r9,  -580(r30)
	loadli.w r10,  -832(r30)
	loadli.w r5,  -1220(r30)
	sext_int2long r[3:4], r3
	sext_int2long r[6:7], r1
	addli r11, zero, 64
	addli r13, zero, 1
	addli r28, zero, 8
	addli r14, zero, 7
	addli r15, zero, 2
	addli r16, zero, 4
	addli r19, zero, 80
	addli r20, zero, 63
	lui r21, 140
	addli r22, zero, 6
	addli r24, zero, 128
	addli r25, zero, 32
	addli r26, zero, 5
	addli r27, zero, 62
	lui r17, 16
	addli r23, zero, 3
	addli r18, zero, 0
	store.d r[3:4], -1256(r30)              # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split17.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:86:20
	addli r10, r10, 2
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:73:26
	addli r1, zero, 10
	addli r13, zero, 1
	addli r26, zero, 5
	addli r27, zero, 62
	lui r17, 16
	addli r23, zero, 3
	xsignal r1, 0
	loadli.w r18,  -1236(r30)               # 4-byte Folded Reload
.LBB0_7:                                # %.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:0:26
	load.d r[3:4], -1256(r30)               # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	addli r18, r18, 1
	addli r5, r12, 0
	setlt.sl r1, r[6:7], r[3:4]
	beq r1, zero, .LBB0_35
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	loadli.w r1,  32(r30)
	loadli.w r3,  28(r30)
	store.d r[6:7], -1232(r30)              # 8-byte Folded Spill
	div.s r1, r6, r1
	div.s r3, r1, r3
	.loc	1 53 22 is_stmt 1               # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:53:22
	div.s r12, r3, r11
	.loc	1 54 41                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:54:41
	slli r1, r12, 3
	.loc	1 54 30 is_stmt 0               # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:54:30
	sub.s r4, r13, r1
	.loc	1 54 50                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:54:50
	min.s r13, r4, r28
	.loc	1 55 40 is_stmt 1               # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:55:40
	mod.s r4, r3, r13
	.loc	1 55 34 is_stmt 0               # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:55:34
	add.s r1, r1, r4
	.loc	1 95 15 is_stmt 1               # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:95:15
	zext_int2long r[6:7], r1
	.loc	1 73 26                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:73:26
	store.d r[6:7], -1248(r30)              # 8-byte Folded Spill
	bneq r2, r16, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 11
	xwait r4, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:0:26
	addli r4, zero, 1
	beq r2, r4, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r15, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
	addli r12, zero, 96
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:81:20
	mod.s r3, r10, r27
	.loc	1 89 25                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:89:25
	mod.s r4, r5, r12
	xwait r15, 0
	xwait r26, 0
	lock zero, zero
	addli r5, r5, 1
	.loc	1 81 20                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:81:20
	addli r10, r10, 1
	.loc	1 89 25                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:89:25
	ds_cfg r15, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r11, zero, 13
	.loc	1 81 20                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:81:20
	slli r3, r3, 13
	.loc	1 89 25                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:89:25
	slli r4, r4, 13
	.loc	1 81 20                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:81:20
	add.s r3, r3, r17
	.loc	1 89 25                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:89:25
	shuffle_batch r4, r3, r25, 1
	.loc	1 73 26                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:73:26
	andi r3, r1, 1
	addli r1, zero, 0
	.loc	1 89 25                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:89:25
	unlock zero
	xsignal r23, 0
	xsignal r16, 0
	bneq r3, zero, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:0:25
	load.d r[6:7], -1232(r30)               # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:73:26
	addli r9, r9, 2
	addli r8, r8, 2
	addli r12, r5, 0
	addli r13, zero, 1
	.loc	1 89 25                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:89:25
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:0:25
	slli r4, r12, 6
	slli r1, r1, 6
	storeli.w r18, -1236(r30)               # 4-byte Folded Spill
	addli r27, zero, 0
	addli r23, zero, 0
	sub.s r3, r3, r4
	mod.s r4, r18, r15
	storeli.w r1, -1272(r30)                # 4-byte Folded Spill
	div.s r3, r3, r13
	slli r26, r4, 15
	zext_int2long r[12:13], r3
	slli r1, r3, 7
	.loc	1 73 26 is_stmt 1               # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:73:26
	load.d r[3:4], 8(r30)
	sll.d r[12:13], r[12:13], r14
	storeli.w r1, -1280(r30)                # 4-byte Folded Spill
	sll.d r[6:7], r[12:13], r15
	add.ul r[17:18], r[3:4], r[6:7]
	store.d r[6:7], -1264(r30)              # 8-byte Folded Spill
	load.d r[6:7], -1232(r30)               # 8-byte Folded Reload
	addli r3, zero, 1
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:89:25
	addli r4, zero, 9
	xwait r22, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r15, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r1, r13, r25, 2
	unlock zero
	xsignal r14, 0
	xsignal r28, 0
	.loc	1 73 26                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:73:26
	andi r1, r3, 1
	bneq r1, zero, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	.loc	1 86 20                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:86:20
	mod.s r1, r8, r20
	.loc	1 89 25                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:89:25
	mod.s r4, r9, r19
	addli r12, r5, 1
	addli r9, r9, 1
	.loc	1 86 20                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:86:20
	addli r8, r8, 1
	slli r13, r1, 14
	.loc	1 89 25                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:89:25
	slli r1, r4, 14
	.loc	1 86 20                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:86:20
	add.s r13, r13, r21
	beq r2, r14, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:0:20
	bneq r2, r22, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 20                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:86:20
	zext_int2long r[4:5], r27
	xwait r14, 0
	lock zero, r16
	addli r1, zero, 512
	dma_cfg zero, zero, zero, 0
	add.ul r[4:5], r[17:18], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r13, r4, r1, 3
	addli r4, zero, 4096
	dma_cfg r1, r4, r25, 4
	dma_run zero
	unlock r16
	xsignal r22, 0
	.loc	1 73 26 is_stmt 1               # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:73:26
	andi r1, r3, 1
	bneq r1, zero, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:0:26
	andi r3, r3, 1
	.loc	1 89 25 is_stmt 1               # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:89:25
	bneq r2, r16, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 25 is_stmt 0                # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:0:25
	addli r4, zero, 96
	addli r13, zero, 1
	addli r27, zero, 1
	.loc	1 89 25                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:89:25
	xwait r16, 0
	xwait r28, 0
	mod.s r4, r5, r4
	slli r5, r4, 13
	addli r4, zero, 0
	beq r23, zero, .LBB0_23
.LBB0_22:                               # %.preheader8
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r28, r4, 13
	slli r4, r4, 8
	lock zero, r13
	mm_cfg r11, r25, r11, 0
	or r28, r28, r1
	or r4, r4, r26
	mm_cfg r15, r16, r13, 2
	mm_acc r4, r5, r28, 8
	andi r28, r27, 1
	addli r4, zero, 1
	addli r27, zero, 0
	unlock r13
	bneq r28, zero, .LBB0_22
	j .LBB0_24
.LBB0_23:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r28, r4, 13
	slli r4, r4, 8
	lock zero, r13
	mm_cfg r11, r25, r11, 0
	or r28, r28, r1
	or r4, r4, r26
	mm_cfg r15, r16, r13, 2
	mm r4, r5, r28, 8
	andi r28, r27, 1
	addli r4, zero, 1
	addli r27, zero, 0
	unlock r13
	bneq r28, zero, .LBB0_23
.LBB0_24:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r1, zero, 5
	addli r28, zero, 8
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r3, zero, .LBB0_26
	j .LBB0_5
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:73:26
	beq r3, zero, .LBB0_31
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:0:26
	addli r3, zero, 0
	.loc	1 89 25 is_stmt 1               # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:89:25
	addli r23, r23, 1
	lui r27, 32
	addli r5, r12, 0
	j .LBB0_17
.LBB0_27:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:86:20
	addli r10, r10, 2
	.loc	1 73 26                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:73:26
	beq r2, r16, .LBB0_6
	j .LBB0_32
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:0:26
	load.d r[3:4], -1248(r30)               # 8-byte Folded Reload
	addli r1, zero, 14
	load.d r[12:13], 0(r30)
	storeli.w r18, -1236(r30)               # 4-byte Folded Spill
	addli r6, zero, 3
	lui r23, 16
	addli r7, zero, 256
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 1
	add.ul r[17:18], r[12:13], r[3:4]
	addli r3, zero, 0
.LBB0_29:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:81:20
	mod.s r4, r10, r27
	.loc	1 86 25                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:86:25
	zext_int2long r[12:13], r3
	.loc	1 81 20                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:81:20
	xwait r6, 0
	lock zero, r16
	addli r10, r10, 1
	dma_cfg zero, zero, zero, 0
	sll.d r[12:13], r[12:13], r15
	add.ul r[12:13], r[17:18], r[12:13]
	slli r3, r4, 13
	dma_cfg zero, r13, zero, 2
	.loc	1 73 26                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:73:26
	andi r4, r1, 1
	addli r1, zero, 0
	.loc	1 81 20                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:81:20
	add.s r3, r3, r23
	dma_cfg r3, r12, r24, 3
	addli r3, zero, 32
	dma_cfg r24, r7, r11, 4
	dma_run zero
	unlock r16
	xsignal r15, 0
	.loc	1 73 26                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:73:26
	bneq r4, zero, .LBB0_29
# %bb.30:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:0:26
	load.d r[6:7], -1232(r30)               # 8-byte Folded Reload
	loadli.w r18,  -1236(r30)               # 4-byte Folded Reload
	.loc	1 73 26                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:73:26
	addli r12, r5, 2
	addli r9, r9, 2
	addli r8, r8, 2
	lui r17, 16
	addli r23, zero, 3
	addli r13, zero, 1
	.loc	1 89 25 is_stmt 1               # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:89:25
	j .LBB0_7
.LBB0_31:                               # %.split17.thread88
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:86:20
	addli r10, r10, 2
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:0:20
	loadli.w r18,  -1236(r30)               # 4-byte Folded Reload
	addli r13, zero, 1
	addli r27, zero, 62
	lui r17, 16
	addli r23, zero, 3
	beq r2, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_8 Depth=1
	addli r26, zero, 5
	.loc	1 101 67 is_stmt 1              # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:101:67
	j .LBB0_7
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -1280(r30)                # 4-byte Folded Reload
	addli r5, zero, 4096
	zext_int2long r[3:4], r1
	addli r1, zero, 896
	zext_int2long r[17:18], r1
	loadli.w r1,  -1272(r30)                # 4-byte Folded Reload
	min.ul r[17:18], r[3:4], r[17:18]
	sext_int2long r[27:28], r1
	addli r1, zero, 18
	addli.d r[17:18], r[17:18], 128
	store.d r[17:18], -1280(r30)            # 8-byte Folded Spill
	zext_int2long r[17:18], zero
	store.d r[17:18], -1272(r30)            # 8-byte Folded Spill
	load.d r[17:18], -1280(r30)             # 8-byte Folded Reload
	max.ul r[17:18], r[17:18], r[3:4]
	store.d r[17:18], -1280(r30)            # 8-byte Folded Spill
	load.d r[17:18], -1272(r30)             # 8-byte Folded Reload
	min.sl r[17:18], r[27:28], r[17:18]
	store.d r[17:18], -1288(r30)            # 8-byte Folded Spill
	load.d r[17:18], -1280(r30)             # 8-byte Folded Reload
	sub.sl r[3:4], r[17:18], r[3:4]
	store.d r[3:4], -1272(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1288(r30)               # 8-byte Folded Reload
	addli.d r[17:18], r[3:4], 64
	zext_int2long r[3:4], r24
	store.d r[3:4], -1280(r30)              # 8-byte Folded Spill
	max.sl r[3:4], r[17:18], r[27:28]
	load.d r[17:18], -1280(r30)             # 8-byte Folded Reload
	store.d r[3:4], -1288(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1272(r30)               # 8-byte Folded Reload
	min.ul r[3:4], r[3:4], r[17:18]
	load.d r[17:18], 16(r30)
	store.d r[3:4], -1272(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1288(r30)               # 8-byte Folded Reload
	sub.sl r[3:4], r[3:4], r[27:28]
	store.d r[3:4], -1280(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1248(r30)               # 8-byte Folded Reload
	sll.d r[27:28], r[3:4], r1
	zext_int2long r[3:4], r11
	addli r1, zero, 10
	add.ul r[27:28], r[17:18], r[27:28]
	load.d r[17:18], -1280(r30)             # 8-byte Folded Reload
	min.sl r[3:4], r[17:18], r[3:4]
	load.d r[17:18], -1264(r30)             # 8-byte Folded Reload
	store.d r[3:4], -1248(r30)              # 8-byte Folded Spill
	xwait r1, 0
	addli r1, zero, 5
	add.ul r[17:18], r[27:28], r[17:18]
	addli r27, zero, 62
	addli r28, zero, 8
	lock zero, r1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r13, zero, 1
	load.d r[3:4], -1272(r30)               # 8-byte Folded Reload
	dma_cfg r18, zero, zero, 2
	slli r1, r3, 2
	dma_cfg r17, r26, r1, 3
	addli r1, zero, 512
	lui r17, 16
	addli r26, zero, 5
	load.d r[3:4], -1248(r30)               # 8-byte Folded Reload
	loadli.w r18,  -1236(r30)               # 4-byte Folded Reload
	dma_cfg r5, r1, r3, 4
	addli r1, zero, 11
	dma_run zero
	unlock r26
	xsignal r1, 0
	j .LBB0_7
.LBB0_35:                               # %._crit_edge
	.loc	1 22 0                          # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_37
# %bb.36:
	.loc	1 0 0 is_stmt 0                 # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:22:0
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
.LBB0_37:
	.loc	1 22 0 epilogue_begin           # cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py:22:0
	addli sp, sp, 1288
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
	.long	1352                            # 0x548
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
.asciz	"cddoh6susissjsovdodtxywsaffzlhspm4op3wow56zqxfxnutbe.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/dd" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
