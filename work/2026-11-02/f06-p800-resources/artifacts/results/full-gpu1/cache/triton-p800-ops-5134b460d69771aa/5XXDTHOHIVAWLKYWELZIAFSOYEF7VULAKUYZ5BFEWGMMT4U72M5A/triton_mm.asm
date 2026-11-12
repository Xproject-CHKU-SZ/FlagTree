	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/2n" "c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py"
	.loc	1 22 0                          # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1016
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:73:26
	core_id r7
	addli r30, sp, 952
	xsignal_mode_cfg r1
	beq r7, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	load_param_i r6, 0
	storeli.w zero, -176(r30)
	storeli.w zero, -500(r30)
	storeli.w zero, -676(r30)
	storeli.w zero, -872(r30)
	mul.s r1, r3, r1
	addli r3, r5, 0
	fmac.s r3, r1, r4
	mul.s r1, r1, r4
	addli r3, r3, -1
	div.s r5, r3, r5
	mul.s r3, r5, r6
	fmac.s r5, r5, r6
	min.s r1, r5, r1
	ble.s r1, r3, .LBB0_38
# %bb.4:                                # %.lr.ph
	sext_int2long r[4:5], r1
	sext_int2long r[16:17], r3
	lui r3, 15
	loadli.w r6,  -176(r30)
	loadli.w r2,  -676(r30)
	loadli.w r1,  -872(r30)
	loadli.w r10,  -500(r30)
	addli r11, zero, 64
	addli r12, zero, 4
	addli r19, zero, 8
	addli r14, zero, 7
	addli r20, zero, 3
	addli r21, zero, 1
	addli r13, zero, 48
	addli r15, zero, 43
	lui r26, 220
	addli r22, zero, 6
	addli r24, zero, 128
	addli r25, zero, 16
	addli r18, zero, 5
	addli r28, zero, 2
	storeli.w zero, -884(r30)               # 4-byte Folded Spill
	store.d r[4:5], -912(r30)               # 8-byte Folded Spill
	ori r5, r3, 4095
	lui r3, 127
	lui r4, 1048448
	ori r23, r3, 4095
	store.d r[4:5], -952(r30)               # 8-byte Folded Spill
	storeli.w r23, -916(r30)                # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.split18.us
                                        #   in Loop: Header=BB0_7 Depth=1
	load.d r[16:17], -896(r30)              # 8-byte Folded Reload
	.loc	1 73 26                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:73:26
	addli r23, r1, 16
	addli r10, r10, 16
	addli r6, r6, 16
	.loc	1 89 25 is_stmt 1               # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:89:25
	add.s r2, r2, r5
	addli r19, zero, 8
	addli r13, zero, 48
	lui r26, 220
	addli r18, zero, 5
.LBB0_6:                                # %.thread95
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:0:25
	load.d r[3:4], -912(r30)                # 8-byte Folded Reload
	addli.d r[16:17], r[16:17], 1
	loadli.w r1,  -884(r30)                 # 4-byte Folded Reload
	setlt.sl r3, r[16:17], r[3:4]
	addli r1, r1, 1
	storeli.w r1, -884(r30)                 # 4-byte Folded Spill
	addli r1, r23, 0
	loadli.w r23,  -916(r30)                # 4-byte Folded Reload
	beq r3, zero, .LBB0_38
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	loadli.w r3,  32(r30)
	loadli.w r4,  28(r30)
	addli r7, r2, 0
	.loc	1 73 26 is_stmt 1               # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:73:26
	core_id r27
	div.s r3, r16, r3
	div.s r5, r3, r4
	.loc	1 53 22                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:53:22
	div.s r8, r5, r11
	.loc	1 54 41                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:54:41
	slli r3, r8, 3
	.loc	1 54 30 is_stmt 0               # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:54:30
	sub.s r4, r12, r3
	.loc	1 54 50                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:54:50
	min.s r9, r4, r19
	.loc	1 55 40 is_stmt 1               # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:55:40
	mod.s r4, r5, r9
	.loc	1 55 34 is_stmt 0               # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:55:34
	add.s r4, r3, r4
	.loc	1 95 15 is_stmt 1               # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:95:15
	zext_int2long r[2:3], r4
	store.d r[2:3], -904(r30)               # 8-byte Folded Spill
	addli r3, zero, 384
	zext_int2long r[2:3], r3
	.loc	1 73 26                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:73:26
	store.d r[2:3], -880(r30)               # 8-byte Folded Spill
	bneq r27, r12, .LBB0_9
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	addli r2, r7, 0
	core_id r7
	xwait r3, 0
	j .LBB0_14
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:0:26
	beq r27, r21, .LBB0_31
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, r7, 0
	.loc	1 73 26                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:73:26
	core_id r7
	bneq r7, r28, .LBB0_14
# %bb.11:                               # %.thread.us23.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26                          # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:0:26
	addli r3, zero, 0
	lui r8, 48
.LBB0_12:                               # %.thread.us23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:89:25
	add.s r4, r2, r3
	add.s r5, r1, r3
	xwait r28, 0
	xwait r18, 0
	lock zero, zero
	.loc	1 73 26                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:89:25
	ds_cfg r20, zero, 0
	.loc	1 81 20                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:81:20
	mod.s r4, r4, r15
	.loc	1 89 25                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:89:25
	mod.s r5, r5, r13
	ds_cfg r11, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r24, zero, 13
	.loc	1 81 20                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:81:20
	slli r4, r4, 14
	.loc	1 89 25                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:89:25
	slli r5, r5, 14
	.loc	1 81 20                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:81:20
	add.s r4, r4, r8
	.loc	1 89 25                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:89:25
	shuffle_batch r5, r4, r11, 1
	unlock zero
	xsignal r20, 0
	xsignal r12, 0
	bneq r3, r25, .LBB0_12
# %bb.13:                               # %.split18.split.us
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:73:26
	addli r10, r10, 16
	addli r6, r6, 16
	.loc	1 89 25                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:89:25
	add.s r23, r1, r3
	add.s r2, r2, r3
	j .LBB0_6
.LBB0_14:                               # %.split.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:0:25
	slli r8, r8, 6
	slli r4, r4, 7
	store.d r[16:17], -896(r30)             # 8-byte Folded Spill
	addli r3, zero, 0
	sub.s r5, r5, r8
	loadli.w r8,  -884(r30)                 # 4-byte Folded Reload
	storeli.w r4, -936(r30)                 # 4-byte Folded Spill
	div.s r5, r5, r9
	mod.s r8, r8, r20
	zext_int2long r[16:17], r5
	slli r4, r5, 7
	slli r18, r8, 16
	sll.d r[16:17], r[16:17], r14
	.loc	1 73 26 is_stmt 1               # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:73:26
	storeli.w r4, -940(r30)                 # 4-byte Folded Spill
	load.d r[4:5], 8(r30)
	sll.d r[16:17], r[16:17], r21
	store.d r[16:17], -928(r30)             # 8-byte Folded Spill
	add.ul r[4:5], r[4:5], r[16:17]
	addli r16, zero, 0
	addli r17, zero, 80
	j .LBB0_17
.LBB0_15:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:89:25
	addli r1, zero, 9
	xwait r22, 0
	xwait r1, 0
	lock zero, zero
	ds_cfg r20, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r13, r8, r11, 2
	unlock zero
	xsignal r14, 0
	xsignal r19, 0
	.loc	1 73 26                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:73:26
	addli r3, r3, 1
	beq r3, r25, .LBB0_28
.LBB0_16:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:89:25
	addli r16, r16, 1
	addli r1, r23, 0
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	.loc	1 86 20                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:86:20
	mod.s r8, r6, r15
	.loc	1 89 25                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:89:25
	mod.s r9, r10, r17
	addli r23, r1, 1
	addli r10, r10, 1
	.loc	1 86 20                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:86:20
	addli r6, r6, 1
	slli r8, r8, 14
	.loc	1 89 25                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:89:25
	slli r13, r9, 14
	.loc	1 86 20                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:86:20
	add.s r8, r8, r26
	beq r7, r14, .LBB0_15
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:0:20
	bneq r7, r22, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 25                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:86:25
	zext_int2long r[26:27], r3
	.loc	1 86 20                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:86:20
	addli r1, zero, 17
	xwait r14, 0
	lock zero, r12
	addli r9, zero, 256
	dma_cfg r21, r21, zero, 0
	sll.d r[26:27], r[26:27], r1
	addli r1, zero, 2048
	add.ul r[26:27], r[4:5], r[26:27]
	dma_cfg zero, r27, zero, 2
	dma_cfg r8, r26, r9, 3
	lui r26, 220
	dma_cfg r9, r1, r11, 4
	dma_run zero
	unlock r12
	xsignal r22, 0
	.loc	1 73 26 is_stmt 1               # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:73:26
	addli r3, r3, 1
	bneq r3, r25, .LBB0_16
	j .LBB0_28
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:89:25
	bneq r7, r12, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 0 is_stmt 0                 # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:0:0
	addli r8, zero, 48
	addli r9, zero, 1
	addli r17, zero, 0
	.loc	1 89 25                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:89:25
	xwait r12, 0
	xwait r19, 0
	.loc	1 0 0                           # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:0:0
	mod.s r1, r1, r8
	addli r8, zero, 1
	slli r1, r1, 14
	.loc	1 89 25                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:89:25
	beq r16, zero, .LBB0_23
.LBB0_22:                               # %.preheader8
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r19, r17, 13
	slli r17, r17, 8
	lock zero, r8
	mm_cfg r11, r11, r24, 0
	or r19, r19, r13
	or r17, r17, r18
	mm_cfg r28, r12, r8, 2
	mm_acc r17, r1, r19, 5
	andi r19, r9, 1
	addli r17, zero, 1
	addli r9, zero, 0
	unlock r8
	bneq r19, zero, .LBB0_22
	j .LBB0_24
.LBB0_23:                               # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r19, r17, 13
	slli r17, r17, 8
	lock zero, r8
	mm_cfg r11, r11, r24, 0
	or r19, r19, r13
	or r17, r17, r18
	mm_cfg r28, r12, r8, 2
	mm r17, r1, r19, 5
	andi r19, r9, 1
	addli r17, zero, 1
	addli r9, zero, 0
	unlock r8
	bneq r19, zero, .LBB0_23
.LBB0_24:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r1, zero, 5
	.loc	1 73 26 is_stmt 1               # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:73:26
	addli r3, r3, 1
	addli r19, zero, 8
	addli r17, zero, 80
	.loc	1 89 25                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:89:25
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r3, r25, .LBB0_16
	j .LBB0_35
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:73:26
	addli r3, r3, 1
	bneq r3, r25, .LBB0_16
# %bb.26:                               # %.split18.thread91
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:86:20
	addli r2, r2, 16
	addli r13, zero, 48
	bneq r7, zero, .LBB0_30
.LBB0_27:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 101 67                        # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:101:67
	loadli.w r1,  -940(r30)                 # 4-byte Folded Reload
	load.d r[26:27], -880(r30)              # 8-byte Folded Reload
	addli r21, zero, 1
	zext_int2long r[3:4], r1
	addli r1, zero, 896
	zext_int2long r[8:9], r1
	loadli.w r1,  -936(r30)                 # 4-byte Folded Reload
	min.ul r[8:9], r[3:4], r[8:9]
	sext_int2long r[16:17], r1
	addli r1, zero, 18
	addli.d r[8:9], r[8:9], 128
	min.sl r[26:27], r[16:17], r[26:27]
	max.ul r[8:9], r[8:9], r[3:4]
	addli.d r[26:27], r[26:27], 128
	sub.sl r[3:4], r[8:9], r[3:4]
	zext_int2long r[8:9], r24
	max.sl r[26:27], r[26:27], r[16:17]
	min.ul r[3:4], r[3:4], r[8:9]
	store.d r[3:4], -880(r30)               # 8-byte Folded Spill
	load.d r[3:4], -904(r30)                # 8-byte Folded Reload
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 10
	store.d r[3:4], -904(r30)               # 8-byte Folded Spill
	sub.sl r[3:4], r[26:27], r[16:17]
	lui r26, 220
	load.d r[16:17], -904(r30)              # 8-byte Folded Reload
	store.d r[3:4], -936(r30)               # 8-byte Folded Spill
	load.d r[3:4], 16(r30)
	add.ul r[3:4], r[3:4], r[16:17]
	load.d r[16:17], -936(r30)              # 8-byte Folded Reload
	min.sl r[8:9], r[16:17], r[8:9]
	load.d r[16:17], -928(r30)              # 8-byte Folded Reload
	xwait r1, 0
	addli r1, zero, 5
	lock zero, r1
	addli r1, zero, 1
	add.ul r[3:4], r[3:4], r[16:17]
	dma_cfg r1, zero, zero, 0
	dma_cfg zero, r1, zero, 1
	load.d r[16:17], -880(r30)              # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r1, r16, 2
	dma_cfg r3, r18, r1, 3
	addli r1, zero, 512
	addli r3, zero, 2048
	addli r18, zero, 5
	dma_cfg r3, r1, r8, 4
	addli r1, zero, 11
	dma_run zero
	unlock r18
	j .LBB0_37
.LBB0_28:                               # %.split18
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:86:20
	addli r2, r2, 16
	.loc	1 73 26                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:73:26
	beq r7, r12, .LBB0_36
# %bb.29:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:0:26
	addli r13, zero, 48
	beq r7, zero, .LBB0_27
.LBB0_30:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[16:17], -896(r30)              # 8-byte Folded Reload
	addli r18, zero, 5
	.loc	1 101 67 is_stmt 1              # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:101:67
	j .LBB0_6
.LBB0_31:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 67 is_stmt 0                # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:0:67
	load.d r[4:5], -904(r30)                # 8-byte Folded Reload
	addli r3, zero, 17
	load.d r[8:9], -952(r30)                # 8-byte Folded Reload
	addli r2, r7, 0
	.loc	1 73 26 is_stmt 1               # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:73:26
	core_id r7
	store.d r[16:17], -896(r30)             # 8-byte Folded Spill
	sll.d r[3:4], r[4:5], r3
	addli r5, zero, 0
	and.d r[26:27], r[3:4], r[8:9]
	j .LBB0_33
.LBB0_32:                               # %.thread.us
                                        #   in Loop: Header=BB0_33 Depth=2
	.loc	1 0 26 is_stmt 0                # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:0:26
	addli r13, zero, 1024
	.loc	1 81 25 is_stmt 1               # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:81:25
	sub.sl r[8:9], r[16:17], r[8:9]
	.loc	1 81 20 is_stmt 0               # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:81:20
	xwait r20, 0
	lock zero, r12
	addli r21, zero, 1
	zext_int2long r[18:19], r13
	.loc	1 0 0                           # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:0:0
	add.s r13, r2, r5
	.loc	1 73 26 is_stmt 1               # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:73:26
	addli r5, r5, 1
	.loc	1 81 25                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:81:25
	div.sl r[8:9], r[8:9], r[18:19]
	addli r18, zero, 1
	.loc	1 81 20 is_stmt 0               # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:81:20
	load.d r[19:20], 0(r30)
	.loc	1 81 0                          # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:81:0
	mod.s r13, r13, r15
	.loc	1 81 20                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:81:20
	sll.d r[16:17], r[16:17], r18
	dma_cfg r18, r18, zero, 0
	add.ul r[16:17], r[19:20], r[16:17]
	addli r20, zero, 3
	dma_cfg zero, r17, zero, 2
	.loc	1 81 0                          # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:81:0
	slli r13, r13, 14
	.loc	1 81 25                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:81:25
	load.d r[18:19], -880(r30)              # 8-byte Folded Reload
	min.sl r[18:19], r[8:9], r[18:19]
	sub.sl r[8:9], r[18:19], r[8:9]
	.loc	1 81 0                          # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:81:0
	lui r18, 48
	add.s r13, r13, r18
	.loc	1 81 20                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:81:20
	addli r8, r8, 128
	addli r9, zero, 2048
	dma_cfg r13, r16, r24, 3
	dma_cfg r24, r9, r8, 4
	dma_run zero
	unlock r12
	xsignal r28, 0
	.loc	1 73 26 is_stmt 1               # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:73:26
	beq r5, r25, .LBB0_5
.LBB0_33:                               # %.thread.us
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:86:25
	zext_int2long r[8:9], r5
	sll.d r[8:9], r[8:9], r22
	.loc	1 81 25                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:81:25
	add.ul r[16:17], r[8:9], r[3:4]
	zext_int2long r[8:9], r23
	setlt.ul r13, r[8:9], r[16:17]
	addli.d r[8:9], r[26:27], 0
	bneq r13, zero, .LBB0_32
# %bb.34:                               # %.thread.us
                                        #   in Loop: Header=BB0_33 Depth=2
	.loc	1 0 25 is_stmt 0                # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:0:25
	zext_int2long r[8:9], zero
	j .LBB0_32
.LBB0_35:                               # %.split18.thread94
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20 is_stmt 1               # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:86:20
	addli r2, r2, 16
.LBB0_36:                               # %.thread7
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:73:26
	addli r1, zero, 10
	addli r13, zero, 48
	addli r18, zero, 5
.LBB0_37:                               # %.thread95
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:0:0
	xsignal r1, 0
	load.d r[16:17], -896(r30)              # 8-byte Folded Reload
	j .LBB0_6
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:22:0
	xsignal zero, 0
	bneq r7, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:22:0
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
	.loc	1 22 0 epilogue_begin           # c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py:22:0
	addli sp, sp, 952
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
	.long	1016                            # 0x3f8
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
.asciz	"c2nl5invp2pb6ywirncx7chwiy2cws2i2keegjv2mi5aqtzl4brr.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/2n" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
