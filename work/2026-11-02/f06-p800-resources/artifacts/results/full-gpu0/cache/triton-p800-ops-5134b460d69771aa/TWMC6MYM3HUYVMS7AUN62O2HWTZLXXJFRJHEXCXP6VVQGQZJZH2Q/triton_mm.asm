	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/yb" "cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py"
	.loc	1 22 0                          # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1928
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:73:26
	core_id r7
	addli r30, sp, 1864
	xsignal_mode_cfg r1
	beq r7, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r3, 0
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -384(r30)
	storeli.w zero, -1028(r30)
	storeli.w zero, -1412(r30)
	storeli.w zero, -1800(r30)
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
	sext_int2long r[2:3], r3
	sext_int2long r[15:16], r1
	loadli.w r28,  -384(r30)
	loadli.w r26,  -1028(r30)
	loadli.w r8,  -1412(r30)
	loadli.w r25,  -1800(r30)
	addli r9, zero, 128
	addli r21, zero, 2
	addli r17, zero, 6
	addli r19, zero, 3
	addli r14, zero, 4
	addli r6, zero, 96
	addli r12, zero, 160
	addli r18, zero, 95
	lui r13, 202
	addli r20, zero, 7
	addli r22, zero, 64
	addli r27, zero, 1
	addli r23, zero, 5
	lui r24, 12
	storeli.w zero, -1804(r30)              # 4-byte Folded Spill
	store.d r[2:3], -1824(r30)              # 8-byte Folded Spill
	addli r2, zero, 4095
	lui r1, 1048572
	store.d r[1:2], -1864(r30)              # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split17.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:86:20
	addli r8, r8, 2
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:73:26
	addli r1, zero, 10
	.loc	1 101 67                        # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:101:67
	addli r26, r16, 1
	addli r25, r21, 1
	addli r28, r4, 1
	addli r21, zero, 2
	addli r6, zero, 96
	addli r23, zero, 5
	lui r24, 12
	.loc	1 73 26                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:73:26
	xsignal r1, 0
	load.d r[15:16], -1816(r30)             # 8-byte Folded Reload
.LBB0_7:                                # %.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:0:26
	load.d r[1:2], -1824(r30)               # 8-byte Folded Reload
	addli.d r[15:16], r[15:16], 1
	setlt.sl r1, r[15:16], r[1:2]
	loadli.w r2,  -1804(r30)                # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -1804(r30)                # 4-byte Folded Spill
	beq r1, zero, .LBB0_38
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_36 Depth 2
                                        #     Child Loop BB0_17 Depth 2
	loadli.w r1,  32(r30)
	loadli.w r2,  28(r30)
	div.s r1, r15, r1
	div.s r1, r1, r2
	.loc	1 54 50 is_stmt 1               # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:54:50
	addli r2, zero, 8
	.loc	1 53 22                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:53:22
	div.s r4, r1, r9
	.loc	1 54 41                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:54:41
	slli r3, r4, 3
	.loc	1 54 30 is_stmt 0               # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:54:30
	sub.s r5, r21, r3
	.loc	1 54 50                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:54:50
	min.s r5, r5, r2
	.loc	1 55 40 is_stmt 1               # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:55:40
	mod.s r10, r1, r5
	.loc	1 55 34 is_stmt 0               # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:55:34
	add.s r3, r3, r10
	.loc	1 95 15 is_stmt 1               # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:95:15
	zext_int2long r[10:11], r3
	.loc	1 73 26                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:73:26
	bneq r7, r14, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:0:26
	beq r7, r27, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r7, r21, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:81:20
	mod.s r2, r8, r18
	.loc	1 89 25                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:89:25
	mod.s r3, r25, r6
	xwait r21, 0
	xwait r23, 0
	lock zero, zero
	addli r25, r25, 1
	.loc	1 81 20                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:81:20
	addli r8, r8, 1
	.loc	1 89 25                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:89:25
	ds_cfg r19, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r22, zero, 13
	.loc	1 81 20                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:81:20
	slli r2, r2, 13
	.loc	1 89 25                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:89:25
	slli r3, r3, 13
	.loc	1 81 20                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:81:20
	add.s r2, r2, r24
	.loc	1 89 25                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:89:25
	shuffle_batch r3, r2, r22, 1
	.loc	1 73 26                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:73:26
	andi r2, r1, 1
	addli r1, zero, 0
	.loc	1 89 25                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:89:25
	unlock zero
	xsignal r19, 0
	xsignal r14, 0
	bneq r2, zero, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:73:26
	addli r26, r26, 2
	addli r28, r28, 2
	.loc	1 89 25                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:89:25
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:0:25
	slli r4, r4, 7
	loadli.w r2,  -1804(r30)                # 4-byte Folded Reload
	store.d r[15:16], -1816(r30)            # 8-byte Folded Spill
	store.d r[10:11], -1832(r30)            # 8-byte Folded Spill
	addli r11, zero, 0
	sub.s r1, r1, r4
	mod.s r4, r2, r19
	slli r2, r3, 6
	addli r3, zero, 1
	div.s r1, r1, r5
	storeli.w r2, -1848(r30)                # 4-byte Folded Spill
	zext_int2long r[15:16], r1
	slli r1, r1, 6
	sll.d r[5:6], r[15:16], r17
	storeli.w r1, -1852(r30)                # 4-byte Folded Spill
	slli r1, r4, 14
	store.d r[5:6], -1840(r30)              # 8-byte Folded Spill
	.loc	1 73 26 is_stmt 1               # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:73:26
	sll.d r[15:16], r[5:6], r3
	load.d r[4:5], 8(r30)
	add.ul r[23:24], r[4:5], r[15:16]
	addli r5, zero, 0
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:89:25
	addli r2, zero, 9
	xwait r17, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 8
	ds_cfg r19, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r15, r10, r22, 2
	unlock zero
	xsignal r20, 0
	xsignal r2, 0
	.loc	1 73 26                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:73:26
	andi r2, r3, 1
	bneq r2, zero, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:89:25
	add.s r4, r28, r5
	add.s r16, r26, r5
	add.s r21, r25, r5
	.loc	1 86 20                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:86:20
	mod.s r2, r4, r18
	.loc	1 89 25                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:89:25
	mod.s r6, r16, r12
	.loc	1 86 20                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:86:20
	slli r2, r2, 13
	.loc	1 89 25                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:89:25
	slli r15, r6, 13
	.loc	1 86 20                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:86:20
	add.s r10, r2, r13
	beq r7, r20, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:0:20
	bneq r7, r17, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 20                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:86:20
	zext_int2long r[6:7], r11
	xwait r20, 0
	lock zero, r14
	addli r2, zero, 2048
	dma_cfg r27, r27, zero, 0
	add.ul r[6:7], r[23:24], r[6:7]
	dma_cfg zero, r7, zero, 2
	dma_cfg r10, r6, r9, 3
	.loc	1 73 26 is_stmt 1               # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:73:26
	core_id r7
	.loc	1 86 20                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:86:20
	dma_cfg r9, r2, r22, 4
	dma_run zero
	unlock r14
	xsignal r17, 0
	.loc	1 73 26                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:73:26
	andi r2, r3, 1
	bneq r2, zero, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:0:26
	andi r3, r3, 1
	.loc	1 89 25 is_stmt 1               # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:89:25
	bneq r7, r14, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 25 is_stmt 0                # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:0:25
	addli r2, zero, 96
	.loc	1 89 25                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:89:25
	addli r6, zero, 8
	xwait r14, 0
	mod.s r2, r21, r2
	xwait r6, 0
	lock zero, r27
	mm_cfg r22, r22, r22, 0
	slli r10, r2, 13
	addli r2, zero, 2
	mm_cfg r2, r2, r27, 2
	beq r5, zero, .LBB0_24
# %bb.22:                               # %.preheader8
                                        #   in Loop: Header=BB0_17 Depth=2
	mm_acc r1, r10, r15, 5
	j .LBB0_25
.LBB0_23:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 25                          # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:0:25
	bneq r3, zero, .LBB0_26
	j .LBB0_30
.LBB0_24:                               # %.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:89:25
	mm r1, r10, r15, 5
.LBB0_25:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r2, zero, 5
	unlock r27
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 73 26 is_stmt 1               # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:73:26
	beq r3, zero, .LBB0_5
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:89:25
	addli r5, r5, 1
	lui r11, 32
	addli r3, zero, 0
	j .LBB0_17
.LBB0_27:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:86:20
	addli r8, r8, 2
	.loc	1 73 26                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:73:26
	beq r7, r14, .LBB0_6
	j .LBB0_31
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:0:26
	addli r1, zero, 1
	addli r2, zero, 13
	store.d r[15:16], -1816(r30)            # 8-byte Folded Spill
	setlt.u r3, r1, r3
	sll.d r[4:5], r[10:11], r2
	bneq r3, zero, .LBB0_34
# %bb.29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	zext_int2long r[23:24], zero
	j .LBB0_35
.LBB0_30:                               # %.split17.thread88
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:86:20
	addli r8, r8, 2
.LBB0_31:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:101:67
	addli r25, r21, 1
	addli r26, r16, 1
	addli r28, r4, 1
	addli r23, zero, 5
	lui r24, 12
	bneq r7, zero, .LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r2,  -1852(r30)                # 4-byte Folded Reload
	addli r4, zero, 960
	loadli.w r10,  -1848(r30)               # 4-byte Folded Reload
	zext_int2long r[6:7], r22
	zext_int2long r[4:5], r4
	zext_int2long r[2:3], r2
	sext_int2long r[10:11], r10
	min.ul r[4:5], r[2:3], r[4:5]
	min.sl r[15:16], r[10:11], r[6:7]
	addli.d r[4:5], r[4:5], 64
	max.ul r[4:5], r[4:5], r[2:3]
	sub.sl r[2:3], r[4:5], r[2:3]
	addli.d r[4:5], r[15:16], 64
	addli r15, zero, 17
	min.ul r[2:3], r[2:3], r[6:7]
	max.sl r[4:5], r[4:5], r[10:11]
	store.d r[2:3], -1848(r30)              # 8-byte Folded Spill
	load.d r[2:3], -1832(r30)               # 8-byte Folded Reload
	sub.sl r[4:5], r[4:5], r[10:11]
	load.d r[10:11], 16(r30)
	min.sl r[4:5], r[4:5], r[6:7]
	sll.d r[15:16], r[2:3], r15
	load.d r[2:3], -1840(r30)               # 8-byte Folded Reload
	add.ul r[10:11], r[10:11], r[15:16]
	sll.d r[15:16], r[2:3], r27
	add.ul r[6:7], r[10:11], r[15:16]
	addli r10, zero, 10
	addli r11, zero, 256
	xwait r10, 0
	lock zero, r23
	dma_cfg r27, zero, zero, 0
	dma_cfg zero, r27, zero, 1
	load.d r[2:3], -1848(r30)               # 8-byte Folded Reload
	dma_cfg r7, zero, zero, 2
	slli r2, r2, 2
	dma_cfg r6, r1, r2, 3
	addli r1, zero, 2048
	.loc	1 73 26                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:73:26
	core_id r7
	.loc	1 101 67                        # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:101:67
	dma_cfg r1, r11, r4, 4
	addli r1, zero, 11
	dma_run zero
	unlock r23
	xsignal r1, 0
.LBB0_33:                               # %.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:0:67
	load.d r[15:16], -1816(r30)             # 8-byte Folded Reload
	addli r21, zero, 2
	addli r6, zero, 96
	j .LBB0_7
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	load.d r[2:3], -1864(r30)               # 8-byte Folded Reload
	and.d r[23:24], r[4:5], r[2:3]
.LBB0_35:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[12:13], 0(r30)
	addli r3, zero, 0
	addli r19, zero, 3
.LBB0_36:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25 is_stmt 1               # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:86:25
	zext_int2long r[10:11], r3
	zext_int2long r[15:16], r9
	addli r3, zero, 64
	.loc	1 81 20                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:81:20
	lui r17, 12
	xwait r19, 0
	lock zero, r14
	dma_cfg r27, r27, zero, 0
	.loc	1 81 25 is_stmt 0               # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:81:25
	or.d r[10:11], r[4:5], r[10:11]
	sub.sl r[6:7], r[10:11], r[23:24]
	.loc	1 81 20                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:81:20
	sll.d r[10:11], r[10:11], r27
	.loc	1 81 25                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:81:25
	div.sl r[6:7], r[6:7], r[15:16]
	.loc	1 81 20                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:81:20
	mod.s r15, r8, r18
	.loc	1 73 26 is_stmt 1               # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:73:26
	andi r16, r1, 1
	zext_int2long r[1:2], r3
	.loc	1 81 20                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:81:20
	add.ul r[10:11], r[12:13], r[10:11]
	addli r8, r8, 1
	dma_cfg zero, r11, zero, 2
	slli r15, r15, 13
	add.s r15, r15, r17
	dma_cfg r15, r10, r9, 3
	.loc	1 81 25 is_stmt 0               # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:81:25
	min.sl r[1:2], r[6:7], r[1:2]
	sub.sl r[1:2], r[1:2], r[6:7]
	.loc	1 81 20                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:81:20
	addli r1, r1, 64
	addli r2, zero, 256
	dma_cfg r9, r2, r1, 4
	addli r1, zero, 0
	dma_run zero
	unlock r14
	xsignal r21, 0
	.loc	1 73 26 is_stmt 1               # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:73:26
	bneq r16, zero, .LBB0_36
# %bb.37:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:0:26
	load.d r[15:16], -1816(r30)             # 8-byte Folded Reload
	.loc	1 73 26                         # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:73:26
	addli r25, r25, 2
	addli r26, r26, 2
	addli r28, r28, 2
	core_id r7
	addli r6, zero, 96
	addli r23, zero, 5
	addli r12, zero, 160
	lui r13, 202
	lui r24, 12
	addli r19, zero, 3
	addli r17, zero, 6
	.loc	1 89 25 is_stmt 1               # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:89:25
	j .LBB0_7
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0                          # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:22:0
	xsignal zero, 0
	bneq r7, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py:22:0
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
.asciz	"cybvt6p74vuf36xbtmhxl57xkvylletluedv4qrjvch54dplvw5a.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/yb" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
