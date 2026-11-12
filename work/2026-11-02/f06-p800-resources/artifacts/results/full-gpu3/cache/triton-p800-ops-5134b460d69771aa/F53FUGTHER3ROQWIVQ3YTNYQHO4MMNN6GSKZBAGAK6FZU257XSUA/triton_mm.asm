	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/up" "cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py"
	.loc	1 22 0                          # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2136
	addli r30, sp, 2072
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:73:26
	core_id r18
	loadli.w r19,  32(r30)
	loadli.w r21,  28(r30)
	xsignal_mode_cfg r1
	beq r18, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -300(r30)
	storeli.w zero, -1324(r30)
	storeli.w zero, -1620(r30)
	storeli.w zero, -2008(r30)
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
	sext_int2long r[13:14], r1
	lui r1, 15
	loadli.w r28,  -300(r30)
	loadli.w r26,  -1324(r30)
	loadli.w r8,  -1620(r30)
	loadli.w r25,  -2008(r30)
	addli r9, zero, 128
	addli r10, zero, 4
	addli r12, zero, 6
	addli r27, zero, 3
	addli r15, zero, 1
	addli r7, zero, 96
	addli r20, zero, 7
	addli r22, zero, 64
	addli r23, zero, 32
	addli r17, zero, 5
	addli r4, r30, -2072
	addli r11, zero, 2
	addli r16, zero, 73
	lui r24, 24
	storeli.w zero, -2024(r30)              # 4-byte Folded Spill
	store.d r[2:3], -2048(r30)              # 8-byte Folded Spill
	ori r3, r1, 4095
	lui r1, 127
	lui r2, 1048448
	ori r1, r1, 4095
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	storeli.w r1, -2020(r30)                # 4-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67 is_stmt 1              # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:101:67
	addli r25, r24, 1
	addli r28, r21, 1
	.loc	1 73 26                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:73:26
	addli r1, zero, 10
	loadli.w r21,  32(r30)
	loadli.w r24,  28(r30)
	.loc	1 101 67                        # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:101:67
	addli r26, r5, 1
	addli r7, zero, 96
	addli r17, zero, 5
	.loc	1 73 26                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:73:26
	xsignal r1, 0
	load.d r[13:14], -2032(r30)             # 8-byte Folded Reload
.LBB0_6:                                # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:0:26
	addli r19, r21, 0
	addli r21, r24, 0
	addli r11, zero, 2
.LBB0_7:                                # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r16, zero, 73
	lui r24, 24
.LBB0_8:                                # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[1:2], -2048(r30)               # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 1
	setlt.sl r1, r[13:14], r[1:2]
	loadli.w r2,  -2024(r30)                # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -2024(r30)                # 4-byte Folded Spill
	beq r1, zero, .LBB0_39
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_19 Depth 2
	div.s r1, r13, r19
	.loc	1 54 50 is_stmt 1               # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:54:50
	addli r4, zero, 8
	div.s r2, r1, r21
	.loc	1 53 22                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:53:22
	div.s r5, r2, r9
	.loc	1 54 41                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:54:41
	slli r1, r5, 3
	.loc	1 54 30 is_stmt 0               # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:54:30
	sub.s r3, r10, r1
	.loc	1 54 50                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:54:50
	min.s r6, r3, r4
	.loc	1 55 40 is_stmt 1               # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:55:40
	mod.s r3, r2, r6
	.loc	1 55 34 is_stmt 0               # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:55:34
	add.s r1, r1, r3
	.loc	1 95 15 is_stmt 1               # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:95:15
	zext_int2long r[3:4], r1
	store.d r[3:4], -2040(r30)              # 8-byte Folded Spill
	addli r3, zero, 384
	zext_int2long r[3:4], r3
	.loc	1 73 26                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:73:26
	store.d r[3:4], -2016(r30)              # 8-byte Folded Spill
	bneq r18, r10, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 11
	addli r4, zero, 255
	xwait r3, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:0:26
	addli r4, zero, 255
	beq r18, r15, .LBB0_30
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r18, r11, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, zero, 0
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:89:25
	add.s r2, r8, r1
	add.s r3, r25, r1
	xwait r11, 0
	xwait r17, 0
	lock zero, zero
	.loc	1 73 26                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:89:25
	ds_cfg r27, zero, 0
	.loc	1 81 20                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:81:20
	mod.s r2, r2, r16
	.loc	1 89 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:89:25
	mod.s r3, r3, r7
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r9, zero, 13
	.loc	1 81 20                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:81:20
	slli r2, r2, 14
	.loc	1 89 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:89:25
	slli r3, r3, 13
	.loc	1 81 20                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:81:20
	add.s r2, r2, r24
	.loc	1 89 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:89:25
	shuffle_batch r3, r2, r23, 1
	unlock zero
	xsignal r27, 0
	xsignal r10, 0
	bneq r1, r23, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:73:26
	addli r26, r26, 32
	addli r28, r28, 32
	.loc	1 89 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:89:25
	add.s r25, r25, r1
	add.s r8, r8, r1
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:0:25
	slli r5, r5, 7
	loadli.w r3,  -2024(r30)                # 4-byte Folded Reload
	slli r1, r1, 7
	store.d r[13:14], -2032(r30)            # 8-byte Folded Spill
	addli r19, zero, 5
	addli r17, zero, 96
	addli r11, zero, 0
	addli r14, zero, 0
	addli r13, zero, 8
	sub.s r2, r2, r5
	storeli.w r1, -2060(r30)                # 4-byte Folded Spill
	mod.s r5, r3, r27
	addli r3, r30, -2056
	div.s r2, r2, r6
	slli r16, r5, 15
	zext_int2long r[6:7], r2
	slli r1, r2, 6
	sll.d r[6:7], r[6:7], r12
	.loc	1 73 26 is_stmt 1               # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:73:26
	storeli.w r1, -2064(r30)                # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	sll.d r[6:7], r[6:7], r15
	store.d r[6:7], 0(r3)                   # 8-byte Folded Spill
	add.ul r[6:7], r[1:2], r[6:7]
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:89:25
	addli r3, zero, 9
	xwait r12, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r27, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r1, r2, r23, 2
	unlock zero
	xsignal r20, 0
	xsignal r13, 0
	.loc	1 73 26                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:73:26
	addli r11, r11, 1
	beq r11, r23, .LBB0_29
.LBB0_18:                               # %.split.backedge
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:89:25
	addli r14, r14, 1
.LBB0_19:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r26, r14
	add.s r21, r28, r14
	.loc	1 86 20                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:86:20
	addli r1, zero, 74
	.loc	1 89 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:89:25
	add.s r24, r25, r14
	.loc	1 86 20                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:86:20
	mod.s r1, r21, r1
	.loc	1 89 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:89:25
	mod.s r2, r5, r4
	.loc	1 86 20                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:86:20
	slli r3, r1, 12
	.loc	1 89 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:89:25
	slli r1, r2, 12
	.loc	1 86 20                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:86:20
	lui r2, 316
	add.s r2, r3, r2
	beq r18, r20, .LBB0_17
# %bb.20:                               # %.split
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 20 is_stmt 0                # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:0:20
	bneq r18, r12, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 86 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:86:25
	zext_int2long r[3:4], r11
	.loc	1 86 20                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:86:20
	addli r1, zero, 16
	xwait r20, 0
	lock zero, r10
	dma_cfg r15, r15, zero, 0
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 2048
	add.ul r[3:4], r[6:7], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r2, r3, r9, 3
	addli r4, zero, 255
	dma_cfg r9, r1, r23, 4
	dma_run zero
	unlock r10
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:73:26
	addli r11, r11, 1
	bneq r11, r23, .LBB0_18
	j .LBB0_29
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:89:25
	bneq r18, r10, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 0 is_stmt 0                 # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:0:0
	mod.s r2, r24, r17
	.loc	1 89 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:89:25
	xwait r10, 0
	xwait r13, 0
	lock zero, r15
	addli r3, zero, 2
	mm_cfg r22, r23, r9, 0
	mm_cfg r15, r3, r15, 2
	.loc	1 0 0                           # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:0:0
	slli r2, r2, 13
	.loc	1 89 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:89:25
	beq r14, zero, .LBB0_26
# %bb.24:                               # %.preheader8
                                        #   in Loop: Header=BB0_19 Depth=2
	mm_acc r16, r2, r1, 5
	j .LBB0_27
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 73 26 is_stmt 1               # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:73:26
	addli r11, r11, 1
	bneq r11, r23, .LBB0_18
	j .LBB0_35
.LBB0_26:                               # %.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:89:25
	mm r16, r2, r1, 5
.LBB0_27:                               # %.thread6.thread93
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 73 26                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:73:26
	addli r11, r11, 1
	.loc	1 89 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:89:25
	addli r1, zero, 9
	unlock r15
	xsignal r19, 0
	xsignal r1, 0
	.loc	1 73 26                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:73:26
	bneq r11, r23, .LBB0_18
# %bb.28:                               # %.split17.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:86:20
	addli r8, r8, 32
	j .LBB0_5
.LBB0_29:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r8, r8, 32
	.loc	1 73 26                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:73:26
	beq r18, r10, .LBB0_5
	j .LBB0_36
.LBB0_30:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:0:26
	load.d r[2:3], -2040(r30)               # 8-byte Folded Reload
	addli r1, zero, 17
	lui r24, 24
	addli r21, zero, 73
	addli r7, zero, 0
	store.d r[13:14], -2032(r30)            # 8-byte Folded Spill
	sll.d r[5:6], r[2:3], r1
	addli r3, r30, -2072
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	and.d r[18:19], r[5:6], r[1:2]
	j .LBB0_32
.LBB0_31:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	addli r3, zero, 1024
	.loc	1 81 25 is_stmt 1               # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:81:25
	sub.sl r[1:2], r[16:17], r[1:2]
	.loc	1 81 20 is_stmt 0               # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:81:20
	load.d r[13:14], 0(r30)
	sll.d r[16:17], r[16:17], r15
	xwait r27, 0
	lock zero, r10
	addli r11, zero, 2
	dma_cfg r15, r15, zero, 0
	zext_int2long r[3:4], r3
	add.ul r[16:17], r[13:14], r[16:17]
	.loc	1 81 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:81:25
	div.sl r[1:2], r[1:2], r[3:4]
	.loc	1 0 0                           # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:0:0
	add.s r3, r8, r7
	.loc	1 73 26 is_stmt 1               # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:73:26
	addli r7, r7, 1
	.loc	1 81 20                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:81:20
	dma_cfg zero, r17, zero, 2
	.loc	1 81 0 is_stmt 0                # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:81:0
	mod.s r3, r3, r21
	.loc	1 81 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:81:25
	load.d r[13:14], -2016(r30)             # 8-byte Folded Reload
	.loc	1 81 0                          # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:81:0
	slli r3, r3, 14
	add.s r3, r3, r24
	.loc	1 81 20                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:81:20
	dma_cfg r3, r16, r22, 3
	addli r17, zero, 5
	.loc	1 81 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:81:25
	min.sl r[13:14], r[1:2], r[13:14]
	sub.sl r[1:2], r[13:14], r[1:2]
	.loc	1 81 20                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:81:20
	addli r1, r1, 128
	addli r2, zero, 2048
	dma_cfg r9, r2, r1, 4
	dma_run zero
	unlock r10
	xsignal r11, 0
	.loc	1 73 26 is_stmt 1               # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:73:26
	beq r7, r23, .LBB0_34
.LBB0_32:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:86:25
	zext_int2long r[1:2], r7
	sll.d r[1:2], r[1:2], r17
	.loc	1 81 25                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:81:25
	add.ul r[16:17], r[1:2], r[5:6]
	loadli.w r1,  -2020(r30)                # 4-byte Folded Reload
	zext_int2long r[1:2], r1
	setlt.ul r11, r[1:2], r[16:17]
	addli.d r[1:2], r[18:19], 0
	bneq r11, zero, .LBB0_31
# %bb.33:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 0 25 is_stmt 0                # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:0:25
	zext_int2long r[1:2], zero
	j .LBB0_31
.LBB0_34:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r19,  32(r30)
	loadli.w r21,  28(r30)
	load.d r[13:14], -2032(r30)             # 8-byte Folded Reload
	.loc	1 89 25 is_stmt 1               # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:89:25
	add.s r8, r8, r7
	.loc	1 73 26                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:73:26
	addli r25, r25, 32
	addli r26, r26, 32
	addli r28, r28, 32
	core_id r18
	addli r7, zero, 96
	j .LBB0_7
.LBB0_35:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:86:20
	addli r8, r8, 32
.LBB0_36:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:0:20
	load.d r[13:14], -2032(r30)             # 8-byte Folded Reload
	.loc	1 101 67 is_stmt 1              # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:101:67
	addli r25, r24, 1
	addli r26, r5, 1
	addli r28, r21, 1
	addli r7, zero, 96
	addli r17, zero, 5
	bneq r18, zero, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_9 Depth=1
	loadli.w r1,  -2064(r30)                # 4-byte Folded Reload
	addli r3, zero, 960
	loadli.w r5,  -2060(r30)                # 4-byte Folded Reload
	load.d r[13:14], -2016(r30)             # 8-byte Folded Reload
	addli r11, r30, -2056
	zext_int2long r[3:4], r3
	zext_int2long r[1:2], r1
	sext_int2long r[5:6], r5
	min.ul r[3:4], r[1:2], r[3:4]
	min.sl r[13:14], r[5:6], r[13:14]
	addli.d r[3:4], r[3:4], 64
	addli.d r[13:14], r[13:14], 128
	max.ul r[3:4], r[3:4], r[1:2]
	max.sl r[13:14], r[13:14], r[5:6]
	sub.sl r[1:2], r[3:4], r[1:2]
	zext_int2long r[3:4], r22
	min.ul r[1:2], r[1:2], r[3:4]
	sub.sl r[3:4], r[13:14], r[5:6]
	addli r5, zero, 18
	zext_int2long r[13:14], r9
	store.d r[1:2], -2016(r30)              # 8-byte Folded Spill
	load.d r[1:2], -2040(r30)               # 8-byte Folded Reload
	min.sl r[3:4], r[3:4], r[13:14]
	load.d r[13:14], -2032(r30)             # 8-byte Folded Reload
	sll.d r[5:6], r[1:2], r5
	load.d r[1:2], 16(r30)
	add.ul r[5:6], r[1:2], r[5:6]
	load.d r[1:2], 0(r11)                   # 8-byte Folded Reload
	addli r11, zero, 10
	xwait r11, 0
	lock zero, r17
	dma_cfg r15, zero, zero, 0
	add.ul r[5:6], r[5:6], r[1:2]
	dma_cfg zero, r15, zero, 1
	load.d r[1:2], -2016(r30)               # 8-byte Folded Reload
	dma_cfg r6, zero, zero, 2
	slli r1, r1, 2
	addli r2, zero, 2048
	dma_cfg r5, r16, r1, 3
	addli r1, zero, 256
	dma_cfg r2, r1, r3, 4
	addli r1, zero, 11
	dma_run zero
	unlock r17
	xsignal r1, 0
.LBB0_38:                               # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:0:67
	loadli.w r21,  32(r30)
	loadli.w r24,  28(r30)
	j .LBB0_6
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:22:0
	xsignal zero, 0
	bneq r18, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py:22:0
	addli sp, sp, 2072
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
	.long	2136                            # 0x858
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
.asciz	"cup54tsymyqicyjdgo2pi5a3b66sk2nzdbyrqink7gz5oroivrwp.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/up" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
