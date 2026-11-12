	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/o5" "co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py"
	.loc	1 22 0                          # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1640
	addli r30, sp, 1576
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:73:26
	core_id r2
	loadli.w r23,  32(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:0:26
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -236(r30)
	storeli.w zero, -880(r30)
	storeli.w zero, -1112(r30)
	storeli.w zero, -1500(r30)
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
	sext_int2long r[17:18], r1
	lui r1, 15
	loadli.w r8,  -236(r30)
	loadli.w r9,  -880(r30)
	loadli.w r10,  -1112(r30)
	loadli.w r26,  -1500(r30)
	addli r11, zero, 64
	addli r12, zero, 4
	addli r14, zero, 7
	addli r7, zero, 1
	addli r13, zero, 96
	addli r20, zero, 58
	lui r21, 276
	addli r22, zero, 6
	addli r24, zero, 128
	addli r25, zero, 32
	addli r19, zero, 5
	addli r27, zero, 57
	lui r28, 48
	storeli.w zero, -1528(r30)              # 4-byte Folded Spill
	store.d r[3:4], -1552(r30)              # 8-byte Folded Spill
	ori r4, r1, 4095
	lui r1, 127
	lui r3, 1048448
	ori r1, r1, 4095
	store.d r[3:4], -1576(r30)              # 8-byte Folded Spill
	storeli.w r1, -1524(r30)                # 4-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:73:26
	addli r1, zero, 10
	loadli.w r23,  32(r30)
	addli r13, zero, 96
	addli r19, zero, 5
.LBB0_6:                                # %.thread97
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 0                           # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:0:0
	xsignal r1, 0
.LBB0_7:                                # %.thread97
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[17:18], -1536(r30)             # 8-byte Folded Reload
.LBB0_8:                                # %.thread97
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[3:4], -1552(r30)               # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 1
	addli r26, r28, 0
	addli r27, zero, 57
	lui r28, 48
	setlt.sl r1, r[17:18], r[3:4]
	loadli.w r3,  -1528(r30)                # 4-byte Folded Reload
	addli r3, r3, 1
	storeli.w r3, -1528(r30)                # 4-byte Folded Spill
	beq r1, zero, .LBB0_40
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_28 Depth 3
	div.s r1, r17, r23
	loadli.w r3,  28(r30)
	addli r4, zero, 8
	storeli.w r10, -1512(r30)               # 4-byte Folded Spill
	addli r10, zero, 3
	addli r15, zero, 2
	div.s r5, r1, r3
	.loc	1 53 22 is_stmt 1               # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:53:22
	div.s r6, r5, r11
	.loc	1 54 41                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:54:41
	slli r1, r6, 3
	.loc	1 54 30 is_stmt 0               # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:54:30
	sub.s r3, r12, r1
	.loc	1 54 50                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:54:50
	min.s r16, r3, r4
	.loc	1 55 40 is_stmt 1               # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:55:40
	mod.s r3, r5, r16
	.loc	1 55 34 is_stmt 0               # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:55:34
	add.s r1, r1, r3
	.loc	1 95 15 is_stmt 1               # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:95:15
	zext_int2long r[3:4], r1
	store.d r[3:4], -1544(r30)              # 8-byte Folded Spill
	addli r3, zero, 384
	zext_int2long r[3:4], r3
	.loc	1 73 26                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:73:26
	store.d r[3:4], -1520(r30)              # 8-byte Folded Spill
	bneq r2, r12, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 11
	xwait r3, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:0:26
	beq r2, r7, .LBB0_32
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r2, r15, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r10,  -1512(r30)               # 4-byte Folded Reload
	addli r1, zero, 0
	addli r5, zero, 2
	addli r6, zero, 3
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:89:25
	add.s r3, r10, r1
	add.s r4, r26, r1
	xwait r5, 0
	xwait r19, 0
	lock zero, zero
	.loc	1 73 26                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:89:25
	ds_cfg r6, zero, 0
	.loc	1 81 20                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:81:20
	mod.s r3, r3, r27
	.loc	1 89 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:89:25
	mod.s r4, r4, r13
	ds_cfg r11, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r24, zero, 13
	.loc	1 81 20                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:81:20
	slli r3, r3, 14
	.loc	1 89 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:89:25
	slli r4, r4, 13
	.loc	1 81 20                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:81:20
	add.s r3, r3, r28
	.loc	1 89 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:89:25
	shuffle_batch r4, r3, r25, 1
	unlock zero
	xsignal r6, 0
	xsignal r12, 0
	bneq r1, r25, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:73:26
	addli r9, r9, 32
	addli r8, r8, 32
	.loc	1 89 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:89:25
	add.s r28, r26, r1
	add.s r10, r10, r1
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:0:25
	slli r3, r6, 6
	loadli.w r4,  -1528(r30)                # 4-byte Folded Reload
	addli r15, zero, 3
	store.d r[17:18], -1536(r30)            # 8-byte Folded Spill
	slli r10, r1, 7
	addli r19, zero, 96
	addli r13, zero, 0
	addli r23, zero, 0
	addli r17, zero, 160
	sub.s r3, r5, r3
	mod.s r4, r4, r15
	div.s r3, r3, r16
	addli r16, zero, 8
	slli r18, r4, 16
	zext_int2long r[5:6], r3
	slli r1, r3, 7
	.loc	1 73 26 is_stmt 1               # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:73:26
	load.d r[3:4], 8(r30)
	sll.d r[5:6], r[5:6], r14
	storeli.w r1, -1564(r30)                # 4-byte Folded Spill
	sll.d r[5:6], r[5:6], r7
	store.d r[5:6], -1560(r30)              # 8-byte Folded Spill
	add.ul r[5:6], r[3:4], r[5:6]
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:89:25
	addli r3, zero, 9
	xwait r22, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r15, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r1, r27, r25, 2
	unlock zero
	xsignal r14, 0
	xsignal r16, 0
	.loc	1 73 26                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:73:26
	addli r13, r13, 1
	beq r13, r25, .LBB0_31
.LBB0_18:                               # %.split.backedge
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:89:25
	addli r23, r23, 1
	addli r26, r28, 0
.LBB0_19:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_28 Depth 3
	.loc	1 86 20                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:86:20
	mod.s r1, r8, r20
	.loc	1 89 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:89:25
	mod.s r3, r9, r17
	addli r28, r26, 1
	addli r9, r9, 1
	.loc	1 86 20                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:86:20
	addli r8, r8, 1
	slli r4, r1, 13
	.loc	1 89 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:89:25
	slli r1, r3, 13
	.loc	1 86 20                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:86:20
	add.s r27, r4, r21
	beq r2, r14, .LBB0_17
# %bb.20:                               # %.split
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 20 is_stmt 0                # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:0:20
	bneq r2, r22, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 86 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:86:25
	zext_int2long r[3:4], r13
	.loc	1 86 20                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:86:20
	addli r1, zero, 16
	xwait r14, 0
	lock zero, r12
	addli r26, zero, 256
	dma_cfg r7, r7, zero, 0
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 2048
	add.ul r[3:4], r[5:6], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r27, r3, r26, 3
	dma_cfg r26, r1, r25, 4
	dma_run zero
	unlock r12
	xsignal r22, 0
	.loc	1 73 26 is_stmt 1               # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:73:26
	addli r13, r13, 1
	bneq r13, r25, .LBB0_18
	j .LBB0_31
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:89:25
	bneq r2, r12, .LBB0_26
# %bb.23:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 0 is_stmt 0                 # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:0:0
	mod.s r3, r26, r19
	.loc	1 89 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:89:25
	xwait r12, 0
	xwait r16, 0
	addli r27, zero, 1
	addli r16, zero, 1
	.loc	1 0 0                           # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:0:0
	slli r26, r3, 13
	.loc	1 89 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:89:25
	beq r23, zero, .LBB0_27
# %bb.24:                               # %.preheader8.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 25                          # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:0:25
	addli r17, zero, 0
.LBB0_25:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:89:25
	slli r3, r17, 12
	slli r4, r17, 8
	lock zero, r27
	addli r17, zero, 1
	mm_cfg r11, r25, r24, 0
	or r3, r3, r1
	or r4, r4, r18
	mm_cfg r27, r12, r27, 2
	mm_acc r4, r26, r3, 5
	andi r3, r16, 1
	addli r16, zero, 0
	unlock r27
	bneq r3, zero, .LBB0_25
	j .LBB0_29
.LBB0_26:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 73 26 is_stmt 1               # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:73:26
	addli r13, r13, 1
	bneq r13, r25, .LBB0_18
	j .LBB0_37
.LBB0_27:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 26 is_stmt 0                # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:0:26
	addli r3, zero, 0
.LBB0_28:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25 is_stmt 1               # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:89:25
	slli r4, r3, 12
	slli r3, r3, 8
	lock zero, r27
	mm_cfg r11, r25, r24, 0
	or r4, r4, r1
	or r3, r3, r18
	mm_cfg r27, r12, r27, 2
	mm r3, r26, r4, 5
	andi r4, r16, 1
	addli r3, zero, 1
	addli r16, zero, 0
	unlock r27
	bneq r4, zero, .LBB0_28
.LBB0_29:                               # %.thread6.thread94
                                        #   in Loop: Header=BB0_19 Depth=2
	addli r1, zero, 5
	.loc	1 73 26                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:73:26
	addli r13, r13, 1
	addli r16, zero, 8
	addli r17, zero, 160
	.loc	1 89 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:89:25
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r13, r25, .LBB0_18
# %bb.30:                               # %.split17.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:0:25
	loadli.w r10,  -1512(r30)               # 4-byte Folded Reload
	.loc	1 86 20 is_stmt 1               # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:86:20
	addli r10, r10, 32
	j .LBB0_5
.LBB0_31:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:0:20
	addli r15, r10, 0
	loadli.w r10,  -1512(r30)               # 4-byte Folded Reload
	.loc	1 86 20                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:86:20
	addli r10, r10, 32
	.loc	1 73 26 is_stmt 1               # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:73:26
	beq r2, r12, .LBB0_5
	j .LBB0_38
.LBB0_32:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:0:26
	load.d r[3:4], -1544(r30)               # 8-byte Folded Reload
	addli r1, zero, 17
	lui r2, 48
	addli r23, zero, 57
	store.d r[17:18], -1536(r30)            # 8-byte Folded Spill
	sll.d r[5:6], r[3:4], r1
	load.d r[3:4], -1576(r30)               # 8-byte Folded Reload
	addli r1, zero, 0
	and.d r[3:4], r[5:6], r[3:4]
	j .LBB0_34
.LBB0_33:                               # %.thread.us
                                        #   in Loop: Header=BB0_34 Depth=2
	addli r7, zero, 1024
	.loc	1 81 25 is_stmt 1               # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:81:25
	sub.sl r[27:28], r[16:17], r[27:28]
	.loc	1 81 20 is_stmt 0               # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:81:20
	load.d r[20:21], 0(r30)
	zext_int2long r[18:19], r7
	.loc	1 0 0                           # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:0:0
	loadli.w r7,  -1512(r30)                # 4-byte Folded Reload
	.loc	1 81 20                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:81:20
	xwait r10, 0
	lock zero, r12
	.loc	1 81 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:81:25
	div.sl r[18:19], r[27:28], r[18:19]
	addli r27, zero, 1
	.loc	1 0 0                           # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:0:0
	add.s r13, r7, r1
	.loc	1 73 26 is_stmt 1               # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:73:26
	addli r1, r1, 1
	addli r7, zero, 1
	.loc	1 81 20                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:81:20
	sll.d r[16:17], r[16:17], r27
	dma_cfg r27, r27, zero, 0
	.loc	1 81 0 is_stmt 0                # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:81:0
	mod.s r13, r13, r23
	.loc	1 81 20                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:81:20
	add.ul r[16:17], r[20:21], r[16:17]
	dma_cfg zero, r17, zero, 2
	.loc	1 81 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:81:25
	load.d r[20:21], -1520(r30)             # 8-byte Folded Reload
	.loc	1 81 0                          # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:81:0
	slli r13, r13, 14
	add.s r13, r13, r2
	.loc	1 81 20                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:81:20
	dma_cfg r13, r16, r11, 3
	addli r13, zero, 2048
	.loc	1 81 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:81:25
	min.sl r[27:28], r[18:19], r[20:21]
	sub.sl r[18:19], r[27:28], r[18:19]
	.loc	1 81 20                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:81:20
	addli r18, r18, 128
	addli r19, zero, 5
	dma_cfg r24, r13, r18, 4
	dma_run zero
	unlock r12
	xsignal r15, 0
	.loc	1 73 26 is_stmt 1               # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:73:26
	beq r1, r25, .LBB0_36
.LBB0_34:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:86:25
	zext_int2long r[16:17], r1
	loadli.w r7,  -1524(r30)                # 4-byte Folded Reload
	sll.d r[16:17], r[16:17], r19
	zext_int2long r[27:28], r7
	.loc	1 81 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:81:25
	add.ul r[16:17], r[16:17], r[5:6]
	setlt.ul r13, r[27:28], r[16:17]
	addli.d r[27:28], r[3:4], 0
	bneq r13, zero, .LBB0_33
# %bb.35:                               # %.thread.us
                                        #   in Loop: Header=BB0_34 Depth=2
	.loc	1 0 25 is_stmt 0                # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:0:25
	zext_int2long r[27:28], zero
	j .LBB0_33
.LBB0_36:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r10,  -1512(r30)               # 4-byte Folded Reload
	load.d r[17:18], -1536(r30)             # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:73:26
	addli r28, r26, 32
	addli r9, r9, 32
	addli r8, r8, 32
	addli r13, zero, 96
	addli r20, zero, 58
	lui r21, 276
	core_id r2
	.loc	1 89 25                         # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:89:25
	add.s r10, r10, r1
	loadli.w r1,  32(r30)
	addli r23, r1, 0
	j .LBB0_8
.LBB0_37:                               # %.split17.thread93
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:0:25
	addli r15, r10, 0
	loadli.w r10,  -1512(r30)               # 4-byte Folded Reload
	.loc	1 86 20 is_stmt 1               # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:86:20
	addli r10, r10, 32
.LBB0_38:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:0:20
	loadli.w r23,  32(r30)
	addli r13, zero, 96
	addli r19, zero, 5
	bneq r2, zero, .LBB0_7
# %bb.39:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67 is_stmt 1              # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:101:67
	loadli.w r1,  -1564(r30)                # 4-byte Folded Reload
	load.d r[26:27], -1520(r30)             # 8-byte Folded Reload
	sext_int2long r[16:17], r15
	addli r7, zero, 1
	zext_int2long r[3:4], r1
	addli r1, zero, 896
	min.sl r[26:27], r[16:17], r[26:27]
	zext_int2long r[5:6], r1
	addli.d r[26:27], r[26:27], 128
	addli r1, zero, 18
	min.ul r[5:6], r[3:4], r[5:6]
	max.sl r[26:27], r[26:27], r[16:17]
	addli.d r[5:6], r[5:6], 128
	sub.sl r[16:17], r[26:27], r[16:17]
	load.d r[26:27], 16(r30)
	max.ul r[5:6], r[5:6], r[3:4]
	sub.sl r[3:4], r[5:6], r[3:4]
	zext_int2long r[5:6], r24
	min.ul r[3:4], r[3:4], r[5:6]
	min.sl r[5:6], r[16:17], r[5:6]
	load.d r[15:16], -1560(r30)             # 8-byte Folded Reload
	store.d r[3:4], -1512(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1544(r30)               # 8-byte Folded Reload
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	lock zero, r19
	add.ul r[3:4], r[26:27], r[3:4]
	dma_cfg r1, zero, zero, 0
	add.ul r[3:4], r[3:4], r[15:16]
	dma_cfg zero, r1, zero, 1
	load.d r[15:16], -1512(r30)             # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r1, r15, 2
	dma_cfg r3, r18, r1, 3
	addli r1, zero, 512
	addli r3, zero, 2048
	dma_cfg r3, r1, r5, 4
	addli r1, zero, 11
	dma_run zero
	unlock r19
	j .LBB0_6
.LBB0_40:                               # %._crit_edge
	.loc	1 22 0                          # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_42
# %bb.41:
	.loc	1 0 0 is_stmt 0                 # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:22:0
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
	.loc	1 22 0 epilogue_begin           # co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py:22:0
	addli sp, sp, 1576
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
	.long	1640                            # 0x668
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
.asciz	"co5nmwvivvzy252yd2b6n2wiey4icf53szwjlxhkjcfgcnn5tncr.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/o5" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
