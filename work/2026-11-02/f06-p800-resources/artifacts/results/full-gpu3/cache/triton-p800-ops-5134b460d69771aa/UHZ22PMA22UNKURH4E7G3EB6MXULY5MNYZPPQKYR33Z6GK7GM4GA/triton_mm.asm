	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/km" "ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py"
	.loc	1 22 0                          # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1912
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:73:26
	core_id r2
	addli r30, sp, 1848
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -380(r30)
	storeli.w zero, -1024(r30)
	storeli.w zero, -1404(r30)
	storeli.w zero, -1792(r30)
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
	loadli.w r28,  -380(r30)
	loadli.w r26,  -1024(r30)
	loadli.w r8,  -1404(r30)
	loadli.w r27,  -1792(r30)
	sext_int2long r[3:4], r3
	sext_int2long r[24:25], r1
	addli r11, zero, 128
	addli r12, zero, 6
	addli r13, zero, 4
	addli r15, zero, 2
	addli r14, zero, 96
	addli r17, zero, 160
	addli r18, zero, 94
	lui r19, 204
	addli r20, zero, 7
	addli r22, zero, 64
	addli r23, zero, 32
	addli r16, zero, 5
	lui r21, 16
	storeli.w zero, -1796(r30)              # 4-byte Folded Spill
	store.d r[3:4], -1824(r30)              # 8-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 101 67 is_stmt 1              # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:101:67
	addli r28, r3, 1
	.loc	1 73 26                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:73:26
	addli r3, zero, 10
	.loc	1 101 67                        # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:101:67
	addli r27, r14, 1
	addli r26, r16, 1
	addli r11, zero, 128
	addli r14, zero, 96
	addli r16, zero, 5
	lui r21, 16
	.loc	1 73 26                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:73:26
	xsignal r3, 0
	load.d r[24:25], -1808(r30)             # 8-byte Folded Reload
.LBB0_6:                                # %.thread91
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:0:26
	load.d r[3:4], -1824(r30)               # 8-byte Folded Reload
	addli.d r[24:25], r[24:25], 1
	setlt.sl r3, r[24:25], r[3:4]
	loadli.w r4,  -1796(r30)                # 4-byte Folded Reload
	addli r4, r4, 1
	storeli.w r4, -1796(r30)                # 4-byte Folded Spill
	beq r3, zero, .LBB0_35
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_16 Depth 2
	loadli.w r3,  32(r30)
	loadli.w r4,  28(r30)
	addli r7, zero, 1
	addli r6, zero, 8
	div.s r3, r24, r3
	div.s r4, r3, r4
	.loc	1 53 22 is_stmt 1               # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:53:22
	div.s r5, r4, r11
	.loc	1 54 41                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:54:41
	slli r3, r5, 3
	.loc	1 54 30 is_stmt 0               # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:54:30
	sub.s r9, r7, r3
	.loc	1 54 50                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:54:50
	min.s r9, r9, r6
	addli r6, zero, 1
	.loc	1 55 40 is_stmt 1               # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:55:40
	mod.s r10, r4, r9
	.loc	1 55 34 is_stmt 0               # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:55:34
	add.s r3, r3, r10
	.loc	1 95 15 is_stmt 1               # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:95:15
	zext_int2long r[1:2], r3
	.loc	1 73 26                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:73:26
	store.d r[1:2], -1816(r30)              # 8-byte Folded Spill
	core_id r1
	bneq r1, r13, .LBB0_9
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r7, zero, 11
	xwait r7, 0
	j .LBB0_13
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:0:26
	beq r1, r7, .LBB0_27
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r1, r15, .LBB0_13
# %bb.11:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 1
	addli r6, zero, 3
.LBB0_12:                               # %.thread.us21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:81:20
	mod.s r4, r8, r18
	.loc	1 89 25                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:89:25
	mod.s r5, r27, r14
	xwait r15, 0
	xwait r16, 0
	lock zero, zero
	addli r27, r27, 1
	.loc	1 81 20                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:81:20
	addli r8, r8, 1
	.loc	1 89 25                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:89:25
	ds_cfg r15, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r22, zero, 13
	.loc	1 81 20                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:81:20
	slli r4, r4, 13
	.loc	1 89 25                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:89:25
	slli r5, r5, 13
	.loc	1 81 20                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:81:20
	add.s r4, r4, r21
	.loc	1 89 25                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:89:25
	shuffle_batch r5, r4, r23, 1
	.loc	1 73 26                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:73:26
	andi r4, r3, 1
	addli r3, zero, 0
	.loc	1 89 25                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:89:25
	unlock zero
	xsignal r6, 0
	xsignal r13, 0
	bneq r4, zero, .LBB0_12
	j .LBB0_30
.LBB0_13:                               # %.split.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:0:25
	slli r5, r5, 7
	slli r2, r3, 6
	store.d r[24:25], -1808(r30)            # 8-byte Folded Spill
	addli r11, zero, 0
	addli r21, zero, 0
	addli r7, zero, 8
	sub.s r4, r4, r5
	loadli.w r5,  -1796(r30)                # 4-byte Folded Reload
	storeli.w r2, -1840(r30)                # 4-byte Folded Spill
	div.s r4, r4, r9
	mod.s r5, r5, r13
	zext_int2long r[9:10], r4
	slli r2, r4, 6
	.loc	1 73 26 is_stmt 1               # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:73:26
	load.d r[3:4], 8(r30)
	slli r5, r5, 14
	sll.d r[9:10], r[9:10], r12
	storeli.w r2, -1848(r30)                # 4-byte Folded Spill
	addli r2, zero, 256
	sll.d r[9:10], r[9:10], r15
	store.d r[9:10], -1832(r30)             # 8-byte Folded Spill
	add.ul r[24:25], r[3:4], r[9:10]
	addli r9, zero, 1
	j .LBB0_16
.LBB0_14:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:89:25
	addli r11, zero, 9
	xwait r12, 0
	xwait r11, 0
	lock zero, zero
	ds_cfg r15, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r10, r4, r23, 2
	unlock zero
	xsignal r20, 0
	xsignal r7, 0
	.loc	1 73 26                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:73:26
	andi r4, r9, 1
	beq r4, zero, .LBB0_26
.LBB0_15:                               # %.split.backedge
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:89:25
	addli r21, r21, 1
	lui r11, 32
	addli r9, zero, 0
.LBB0_16:                               # %.split
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r3, r28, r21
	add.s r16, r26, r21
	add.s r14, r27, r21
	.loc	1 86 20                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:86:20
	mod.s r4, r3, r18
	.loc	1 89 25                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:89:25
	mod.s r10, r16, r17
	.loc	1 86 20                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:86:20
	slli r4, r4, 13
	.loc	1 89 25                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:89:25
	slli r10, r10, 13
	.loc	1 86 20                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:86:20
	add.s r4, r4, r19
	beq r1, r20, .LBB0_14
# %bb.17:                               # %.split
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 20 is_stmt 0                # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:0:20
	bneq r1, r12, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 86 20                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:86:20
	zext_int2long r[10:11], r11
	xwait r20, 0
	lock zero, r13
	dma_cfg zero, zero, zero, 0
	add.ul r[10:11], r[24:25], r[10:11]
	dma_cfg zero, r11, zero, 2
	dma_cfg r4, r10, r2, 3
	addli r4, zero, 4096
	dma_cfg r2, r4, r23, 4
	dma_run zero
	unlock r13
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:73:26
	andi r4, r9, 1
	bneq r4, zero, .LBB0_15
	j .LBB0_26
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 26 is_stmt 0                # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:0:26
	andi r9, r9, 1
	.loc	1 89 25 is_stmt 1               # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:89:25
	bneq r1, r13, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 25 is_stmt 0                # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:0:25
	addli r4, zero, 96
	.loc	1 89 25                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:89:25
	xwait r13, 0
	xwait r7, 0
	addli r7, zero, 1
	mod.s r4, r14, r4
	lock zero, r7
	mm_cfg r22, r23, r22, 0
	mm_cfg r15, r15, r7, 2
	slli r4, r4, 13
	beq r21, zero, .LBB0_23
# %bb.21:                               # %.preheader8
                                        #   in Loop: Header=BB0_16 Depth=2
	mm_acc r5, r4, r10, 8
	j .LBB0_24
.LBB0_22:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 73 26 is_stmt 1               # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:73:26
	bneq r9, zero, .LBB0_15
	j .LBB0_31
.LBB0_23:                               # %.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:89:25
	mm r5, r4, r10, 8
.LBB0_24:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_16 Depth=2
	addli r4, zero, 5
	unlock r7
	addli r6, zero, 1
	addli r7, zero, 8
	xsignal r4, 0
	addli r4, zero, 9
	xsignal r4, 0
	.loc	1 73 26                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:73:26
	bneq r9, zero, .LBB0_15
# %bb.25:                               # %.split17.thread90
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:86:20
	addli r8, r8, 2
	j .LBB0_5
.LBB0_26:                               # %.split17
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r8, r8, 2
	.loc	1 73 26                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:73:26
	beq r1, r13, .LBB0_5
	j .LBB0_32
.LBB0_27:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:0:26
	load.d r[1:2], -1816(r30)               # 8-byte Folded Reload
	addli r3, zero, 14
	load.d r[9:10], 0(r30)
	store.d r[24:25], -1808(r30)            # 8-byte Folded Spill
	addli r6, zero, 3
	sll.d r[3:4], r[1:2], r3
	addli r1, zero, 256
	add.ul r[24:25], r[9:10], r[3:4]
	addli r3, zero, 1
	addli r4, zero, 0
.LBB0_28:                               # %.thread.us
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:81:20
	mod.s r5, r8, r18
	.loc	1 86 25                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:86:25
	zext_int2long r[9:10], r4
	.loc	1 81 20                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:81:20
	xwait r6, 0
	lock zero, r13
	addli r8, r8, 1
	dma_cfg zero, zero, zero, 0
	sll.d r[9:10], r[9:10], r15
	add.ul r[9:10], r[24:25], r[9:10]
	slli r4, r5, 13
	dma_cfg zero, r10, zero, 2
	.loc	1 73 26                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:73:26
	andi r5, r3, 1
	addli r3, zero, 0
	.loc	1 81 20                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:81:20
	add.s r4, r4, r21
	dma_cfg r4, r9, r11, 3
	addli r4, zero, 32
	dma_cfg r11, r1, r22, 4
	dma_run zero
	unlock r13
	xsignal r15, 0
	.loc	1 73 26                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:73:26
	bneq r5, zero, .LBB0_28
# %bb.29:                               # %.split17.us
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:0:26
	load.d r[24:25], -1808(r30)             # 8-byte Folded Reload
	.loc	1 73 26                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:73:26
	addli r27, r27, 2
.LBB0_30:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r26, r26, 2
	addli r28, r28, 2
	.loc	1 89 25 is_stmt 1               # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:89:25
	j .LBB0_6
.LBB0_31:                               # %.split17.thread88
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:86:20
	addli r8, r8, 2
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:0:20
	load.d r[24:25], -1808(r30)             # 8-byte Folded Reload
	.loc	1 101 67 is_stmt 1              # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:101:67
	addli r27, r14, 1
	addli r26, r16, 1
	addli r28, r3, 1
	lui r21, 16
	beq r1, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 67 is_stmt 0                # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:0:67
	addli r11, zero, 128
	addli r14, zero, 96
	addli r16, zero, 5
	.loc	1 101 67                        # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:101:67
	j .LBB0_6
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r1,  -1848(r30)                # 4-byte Folded Reload
	addli r7, zero, 960
	addli r16, zero, 5
	addli r14, zero, 256
	zext_int2long r[9:10], r7
	addli r7, zero, 10
	zext_int2long r[3:4], r1
	loadli.w r1,  -1840(r30)                # 4-byte Folded Reload
	min.ul r[9:10], r[3:4], r[9:10]
	sext_int2long r[24:25], r1
	zext_int2long r[1:2], zero
	addli.d r[9:10], r[9:10], 64
	min.sl r[1:2], r[24:25], r[1:2]
	max.ul r[9:10], r[9:10], r[3:4]
	store.d r[1:2], -1840(r30)              # 8-byte Folded Spill
	zext_int2long r[1:2], r22
	sub.sl r[9:10], r[9:10], r[3:4]
	load.d r[3:4], -1840(r30)               # 8-byte Folded Reload
	min.ul r[9:10], r[9:10], r[1:2]
	addli.d r[3:4], r[3:4], 64
	store.d r[9:10], -1840(r30)             # 8-byte Folded Spill
	load.d r[9:10], -1816(r30)              # 8-byte Folded Reload
	max.sl r[3:4], r[3:4], r[24:25]
	store.d r[3:4], -1848(r30)              # 8-byte Folded Spill
	addli r3, zero, 18
	sll.d r[9:10], r[9:10], r3
	load.d r[3:4], -1848(r30)               # 8-byte Folded Reload
	sub.sl r[24:25], r[3:4], r[24:25]
	load.d r[3:4], 16(r30)
	add.ul r[3:4], r[3:4], r[9:10]
	min.sl r[9:10], r[24:25], r[1:2]
	load.d r[1:2], -1832(r30)               # 8-byte Folded Reload
	load.d r[24:25], -1808(r30)             # 8-byte Folded Reload
	xwait r7, 0
	lock zero, r16
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r6, zero, 1
	add.ul r[3:4], r[3:4], r[1:2]
	load.d r[1:2], -1840(r30)               # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r11, r1, 2
	dma_cfg r3, r5, r11, 3
	addli r3, zero, 4096
	addli r11, zero, 128
	dma_cfg r3, r14, r9, 4
	addli r14, zero, 96
	addli r3, zero, 11
	dma_run zero
	unlock r16
	xsignal r3, 0
	j .LBB0_6
.LBB0_35:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:22:0
	core_id r1
	xsignal zero, 0
	bneq r1, zero, .LBB0_37
# %bb.36:
	.loc	1 0 0 is_stmt 0                 # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:22:0
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
	.loc	1 22 0 epilogue_begin           # ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py:22:0
	addli sp, sp, 1848
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
	.long	1912                            # 0x778
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
.asciz	"ckmwvoryluxbetv524aat73s3e4csky3qgb7btjjs56xyegnklhn.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/km" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
