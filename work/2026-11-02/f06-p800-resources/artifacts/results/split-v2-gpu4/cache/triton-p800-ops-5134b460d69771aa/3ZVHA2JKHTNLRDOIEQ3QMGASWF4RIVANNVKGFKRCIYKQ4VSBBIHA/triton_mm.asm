	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu4/cache/inductor/uc" "cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py"
	.loc	1 22 0                          # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2136
	addli r30, sp, 2072
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:73:26
	core_id r12
	loadli.w r15,  32(r30)
	xsignal_mode_cfg r1
	beq r12, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:0:26
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
	ble.s r2, r1, .LBB0_38
# %bb.4:                                # %.lr.ph
	lui r4, 31
	sext_int2long r[2:3], r2
	sext_int2long r[10:11], r1
	loadli.w r28,  -300(r30)
	loadli.w r26,  -1324(r30)
	loadli.w r1,  -2008(r30)
	addli r27, zero, 6
	addli r13, zero, 3
	addli r14, zero, 4
	addli r16, zero, 1
	addli r22, zero, 96
	lui r25, 316
	addli r21, zero, 7
	addli r23, zero, 64
	addli r24, zero, 32
	addli r7, r30, -2072
	addli r20, zero, 5
	addli r17, zero, 2
	addli r18, zero, 73
	lui r19, 24
	storeli.w zero, -2024(r30)              # 4-byte Folded Spill
	ori r6, r4, 4095
	lui r4, 1023
	store.d r[2:3], -2048(r30)              # 8-byte Folded Spill
	loadli.w r2,  -1620(r30)
	addli r3, zero, 128
	lui r5, 1047552
	ori r4, r4, 4095
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	storeli.w r4, -2020(r30)                # 4-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split17.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:86:20
	addli r2, r2, 64
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:73:26
	addli r4, zero, 10
	.loc	1 101 67                        # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:101:67
	addli r1, r15, 1
	loadli.w r15,  32(r30)
	addli r26, r22, 1
	addli r28, r17, 1
	addli r22, zero, 96
	addli r20, zero, 5
	.loc	1 73 26                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:73:26
	xsignal r4, 0
	load.d r[10:11], -2032(r30)             # 8-byte Folded Reload
.LBB0_7:                                # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:0:26
	addli r17, zero, 2
	addli r18, zero, 73
	lui r19, 24
.LBB0_8:                                # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[4:5], -2048(r30)               # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 1
	setlt.sl r4, r[10:11], r[4:5]
	loadli.w r5,  -2024(r30)                # 4-byte Folded Reload
	addli r5, r5, 1
	storeli.w r5, -2024(r30)                # 4-byte Folded Spill
	beq r4, zero, .LBB0_38
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	div.s r4, r10, r15
	loadli.w r5,  28(r30)
	.loc	1 54 30 is_stmt 1               # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:54:30
	addli r7, zero, 16
	.loc	1 54 50 is_stmt 0               # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:54:50
	addli r9, zero, 8
	div.s r5, r4, r5
	.loc	1 53 22 is_stmt 1               # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:53:22
	addli r4, zero, 256
	div.s r6, r5, r4
	.loc	1 54 41                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:54:41
	slli r4, r6, 3
	.loc	1 54 30 is_stmt 0               # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:54:30
	sub.s r7, r7, r4
	.loc	1 54 50                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:54:50
	min.s r7, r7, r9
	.loc	1 55 40 is_stmt 1               # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:55:40
	mod.s r9, r5, r7
	.loc	1 55 34 is_stmt 0               # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:55:34
	add.s r4, r4, r9
	.loc	1 95 15 is_stmt 1               # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:95:15
	zext_int2long r[8:9], r4
	store.d r[8:9], -2040(r30)              # 8-byte Folded Spill
	addli r9, zero, 1920
	zext_int2long r[8:9], r9
	.loc	1 73 26                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:73:26
	store.d r[8:9], -2016(r30)              # 8-byte Folded Spill
	bneq r12, r14, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r9, zero, 11
	addli r8, zero, 74
	xwait r9, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:0:26
	addli r8, zero, 74
	beq r12, r16, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r12, r17, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r4, zero, 0
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:89:25
	add.s r5, r2, r4
	add.s r6, r1, r4
	xwait r17, 0
	xwait r20, 0
	lock zero, zero
	.loc	1 73 26                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:73:26
	addli r4, r4, 1
	.loc	1 89 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:89:25
	ds_cfg r13, zero, 0
	.loc	1 81 20                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:81:20
	mod.s r5, r5, r18
	.loc	1 89 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:89:25
	mod.s r6, r6, r22
	ds_cfg r23, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r3, zero, 13
	.loc	1 81 20                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:81:20
	slli r5, r5, 14
	.loc	1 89 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:89:25
	slli r6, r6, 13
	.loc	1 81 20                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:81:20
	add.s r5, r5, r19
	.loc	1 89 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:89:25
	shuffle_batch r6, r5, r24, 1
	unlock zero
	xsignal r13, 0
	xsignal r14, 0
	bneq r4, r23, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:73:26
	addli r26, r26, 64
	addli r28, r28, 64
	.loc	1 89 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:89:25
	add.s r1, r1, r4
	add.s r2, r2, r4
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:0:25
	slli r6, r6, 8
	slli r4, r4, 7
	store.d r[10:11], -2032(r30)            # 8-byte Folded Spill
	addli r20, zero, 2
	addli r11, zero, 0
	sub.s r5, r5, r6
	loadli.w r6,  -2024(r30)                # 4-byte Folded Reload
	storeli.w r4, -2060(r30)                # 4-byte Folded Spill
	div.s r5, r5, r7
	mod.s r6, r6, r13
	zext_int2long r[9:10], r5
	slli r4, r5, 6
	slli r19, r6, 15
	addli r6, r30, -2056
	sll.d r[9:10], r[9:10], r27
	.loc	1 73 26 is_stmt 1               # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:73:26
	storeli.w r4, -2064(r30)                # 4-byte Folded Spill
	load.d r[4:5], 8(r30)
	sll.d r[9:10], r[9:10], r16
	store.d r[9:10], 0(r6)                  # 8-byte Folded Spill
	add.ul r[6:7], r[4:5], r[9:10]
	addli r4, zero, 0
	addli r10, zero, 255
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:89:25
	addli r9, zero, 9
	xwait r27, 0
	xwait r9, 0
	lock zero, zero
	ds_cfg r13, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r18, r5, r24, 2
	addli r5, zero, 8
	unlock zero
	xsignal r21, 0
	xsignal r5, 0
	.loc	1 73 26                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:73:26
	addli r11, r11, 1
	bneq r11, r23, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:89:25
	add.s r17, r28, r4
	add.s r22, r26, r4
	add.s r15, r1, r4
	.loc	1 86 20                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:86:20
	mod.s r5, r17, r8
	.loc	1 89 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:89:25
	mod.s r9, r22, r10
	.loc	1 86 20                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:86:20
	slli r5, r5, 12
	.loc	1 89 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:89:25
	slli r18, r9, 12
	.loc	1 86 20                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:86:20
	add.s r5, r5, r25
	beq r12, r21, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:0:20
	bneq r12, r27, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:86:25
	zext_int2long r[9:10], r11
	.loc	1 86 20                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:86:20
	addli r18, zero, 17
	xwait r21, 0
	lock zero, r14
	dma_cfg r16, r16, zero, 0
	sll.d r[9:10], r[9:10], r18
	add.ul r[9:10], r[6:7], r[9:10]
	dma_cfg zero, r10, zero, 2
	dma_cfg r5, r9, r3, 3
	addli r5, zero, 4096
	addli r10, zero, 255
	dma_cfg r3, r5, r24, 4
	dma_run zero
	unlock r14
	xsignal r27, 0
	.loc	1 73 26 is_stmt 1               # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:73:26
	addli r11, r11, 1
	bneq r11, r23, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:89:25
	bneq r12, r14, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:0:0
	addli r5, zero, 96
	.loc	1 89 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:89:25
	addli r9, zero, 8
	xwait r14, 0
	.loc	1 0 0                           # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:0:0
	mod.s r5, r15, r5
	.loc	1 89 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:89:25
	xwait r9, 0
	lock zero, r16
	mm_cfg r23, r24, r3, 0
	mm_cfg r16, r20, r16, 2
	.loc	1 0 0                           # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:0:0
	slli r5, r5, 13
	.loc	1 89 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:89:25
	beq r4, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r19, r5, r18, 5
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:73:26
	addli r11, r11, 1
	bneq r11, r23, .LBB0_27
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:89:25
	mm r19, r5, r18, 5
.LBB0_26:                               # %.thread6.thread93
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r5, zero, 5
	unlock r16
	.loc	1 73 26                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:73:26
	addli r11, r11, 1
	.loc	1 89 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:89:25
	xsignal r5, 0
	addli r5, zero, 9
	xsignal r5, 0
	.loc	1 73 26                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:73:26
	beq r11, r23, .LBB0_5
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:89:25
	addli r4, r4, 1
	j .LBB0_18
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:86:20
	addli r2, r2, 64
	.loc	1 73 26                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:73:26
	beq r12, r14, .LBB0_6
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:0:26
	load.d r[5:6], -2040(r30)               # 8-byte Folded Reload
	addli r4, zero, 18
	addli r8, r30, -2072
	addli r15, zero, 73
	store.d r[10:11], -2032(r30)            # 8-byte Folded Spill
	sll.d r[6:7], r[5:6], r4
	load.d r[4:5], 0(r8)                    # 8-byte Folded Reload
	and.d r[9:10], r[6:7], r[4:5]
	addli r4, zero, 0
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	addli r5, zero, 2048
	.loc	1 81 25 is_stmt 1               # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:81:25
	sub.sl r[17:18], r[19:20], r[17:18]
	.loc	1 81 20 is_stmt 0               # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:81:20
	xwait r13, 0
	lock zero, r14
	dma_cfg r16, r16, zero, 0
	zext_int2long r[11:12], r5
	.loc	1 0 0                           # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:0:0
	add.s r5, r2, r4
	.loc	1 73 26 is_stmt 1               # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:73:26
	addli r4, r4, 1
	.loc	1 81 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:81:25
	div.sl r[11:12], r[17:18], r[11:12]
	.loc	1 81 20 is_stmt 0               # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:81:20
	sll.d r[17:18], r[19:20], r16
	load.d r[19:20], 0(r30)
	.loc	1 81 0                          # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:81:0
	mod.s r5, r5, r15
	.loc	1 81 20                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:81:20
	add.ul r[17:18], r[19:20], r[17:18]
	dma_cfg zero, r18, zero, 2
	.loc	1 81 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:81:25
	load.d r[19:20], -2016(r30)             # 8-byte Folded Reload
	.loc	1 81 0                          # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:81:0
	slli r5, r5, 14
	.loc	1 81 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:81:25
	min.sl r[19:20], r[11:12], r[19:20]
	sub.sl r[11:12], r[19:20], r[11:12]
	lui r19, 24
	addli r20, zero, 5
	.loc	1 81 0                          # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:81:0
	add.s r5, r5, r19
	.loc	1 81 20                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:81:20
	addli r11, r11, 128
	dma_cfg r5, r17, r23, 3
	addli r5, zero, 4096
	addli r17, zero, 2
	dma_cfg r3, r5, r11, 4
	dma_run zero
	unlock r14
	xsignal r17, 0
	.loc	1 73 26 is_stmt 1               # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:73:26
	beq r4, r23, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:86:25
	zext_int2long r[17:18], r4
	loadli.w r5,  -2020(r30)                # 4-byte Folded Reload
	sll.d r[17:18], r[17:18], r20
	.loc	1 81 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:81:25
	add.ul r[19:20], r[17:18], r[6:7]
	zext_int2long r[17:18], r5
	setlt.ul r5, r[17:18], r[19:20]
	addli.d r[17:18], r[9:10], 0
	bneq r5, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:0:25
	zext_int2long r[17:18], zero
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r15,  32(r30)
	load.d r[10:11], -2032(r30)             # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:73:26
	addli r1, r1, 64
	addli r26, r26, 64
	addli r28, r28, 64
	.loc	1 89 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:89:25
	add.s r2, r2, r4
	.loc	1 73 26                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:73:26
	core_id r12
	addli r18, zero, 73
	.loc	1 89 25                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:89:25
	j .LBB0_8
.LBB0_34:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:86:20
	addli r2, r2, 64
.LBB0_35:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:101:67
	addli r1, r15, 1
	addli r26, r22, 1
	addli r28, r17, 1
	addli r20, zero, 5
	bneq r12, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_9 Depth=1
	loadli.w r4,  -2064(r30)                # 4-byte Folded Reload
	addli r6, zero, 1984
	loadli.w r8,  -2060(r30)                # 4-byte Folded Reload
	load.d r[11:12], -2016(r30)             # 8-byte Folded Reload
	load.d r[17:18], 16(r30)
	zext_int2long r[6:7], r6
	zext_int2long r[4:5], r4
	sext_int2long r[9:10], r8
	addli r8, r30, -2056
	min.ul r[6:7], r[4:5], r[6:7]
	min.sl r[11:12], r[9:10], r[11:12]
	addli.d r[6:7], r[6:7], 64
	addli.d r[11:12], r[11:12], 128
	max.ul r[6:7], r[6:7], r[4:5]
	max.sl r[11:12], r[11:12], r[9:10]
	sub.sl r[4:5], r[6:7], r[4:5]
	zext_int2long r[6:7], r23
	min.ul r[4:5], r[4:5], r[6:7]
	sub.sl r[6:7], r[11:12], r[9:10]
	load.d r[10:11], -2040(r30)             # 8-byte Folded Reload
	addli r9, zero, 19
	slli r4, r4, 2
	addli r5, zero, 4096
	sll.d r[9:10], r[10:11], r9
	zext_int2long r[11:12], r3
	min.sl r[6:7], r[6:7], r[11:12]
	add.ul r[9:10], r[17:18], r[9:10]
	load.d r[17:18], 0(r8)                  # 8-byte Folded Reload
	addli r11, zero, 10
	.loc	1 73 26                         # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:73:26
	core_id r12
	.loc	1 101 67                        # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:101:67
	xwait r11, 0
	lock zero, r20
	dma_cfg r16, zero, zero, 0
	add.ul r[9:10], r[9:10], r[17:18]
	dma_cfg zero, r16, zero, 1
	dma_cfg r10, zero, zero, 2
	dma_cfg r9, r19, r4, 3
	addli r4, zero, 256
	dma_cfg r5, r4, r6, 4
	addli r4, zero, 11
	dma_run zero
	unlock r20
	xsignal r4, 0
.LBB0_37:                               # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:0:67
	load.d r[10:11], -2032(r30)             # 8-byte Folded Reload
	loadli.w r15,  32(r30)
	addli r22, zero, 96
	j .LBB0_7
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:22:0
	xsignal zero, 0
	bneq r12, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py:22:0
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
.asciz	"cucuxzs5okxyybkgxvu2tzyn5ptxb2qcvv4ghlhdmvft3n6p2rin.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu4/cache/inductor/uc" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
