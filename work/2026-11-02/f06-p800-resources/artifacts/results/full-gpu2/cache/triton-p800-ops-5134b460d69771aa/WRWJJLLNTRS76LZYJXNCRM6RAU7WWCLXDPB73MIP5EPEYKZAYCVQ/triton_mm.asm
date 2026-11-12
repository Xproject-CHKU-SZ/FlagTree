	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/ff" "cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py"
	.loc	1 22 0                          # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2304
	addli r30, sp, 2240
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:73:26
	core_id r2
	loadli.w r7,  32(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	storeli.w zero, -2176(r30)
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
	sext_int2long r[3:4], r3
	addli r5, r30, -2208
	loadli.w r8,  -380(r30)
	loadli.w r9,  -1024(r30)
	loadli.w r10,  -1404(r30)
	sext_int2long r[27:28], r1
	addli r11, zero, 64
	addli r12, zero, 1
	addli r14, zero, 7
	addli r15, zero, 2
	addli r16, zero, 4
	addli r23, zero, 192
	addli r19, zero, 160
	addli r20, zero, 94
	lui r21, 204
	addli r22, zero, 6
	addli r24, zero, 3
	addli r25, zero, 128
	addli r26, zero, 32
	lui r18, 16
	storeli.w zero, -2180(r30)              # 4-byte Folded Spill
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	loadli.w r5,  -2176(r30)
	j .LBB0_9
.LBB0_5:                                # %.split17.thread90
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:86:20
	addli r10, r10, 2
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:73:26
	addli r1, zero, 10
	addli r15, zero, 2
	addli r23, zero, 192
	xsignal r1, 0
	addli r1, r30, -2192
	load.d r[27:28], 0(r1)                  # 8-byte Folded Reload
.LBB0_7:                                # %.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:0:26
	loadli.w r7,  32(r30)
	lui r18, 16
.LBB0_8:                                # %.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, r30, -2208
	addli.d r[27:28], r[27:28], 1
	loadli.w r3,  -2180(r30)                # 4-byte Folded Reload
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	addli r3, r3, 1
	setlt.sl r1, r[27:28], r[5:6]
	addli r5, r4, 0
	storeli.w r3, -2180(r30)                # 4-byte Folded Spill
	beq r1, zero, .LBB0_35
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	div.s r1, r27, r7
	loadli.w r3,  28(r30)
	.loc	1 54 50 is_stmt 1               # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:54:50
	addli r6, zero, 8
	div.s r4, r1, r3
	.loc	1 53 22                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:53:22
	div.s r13, r4, r11
	.loc	1 54 41                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:54:41
	slli r1, r13, 3
	.loc	1 54 30 is_stmt 0               # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:54:30
	sub.s r3, r12, r1
	.loc	1 54 50                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:54:50
	min.s r17, r3, r6
	.loc	1 55 40 is_stmt 1               # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:55:40
	mod.s r3, r4, r17
	.loc	1 55 34 is_stmt 0               # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:55:34
	add.s r1, r1, r3
	.loc	1 73 26 is_stmt 1               # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:73:26
	addli r3, r30, -2200
	.loc	1 95 15                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:95:15
	zext_int2long r[6:7], r1
	.loc	1 73 26                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:73:26
	store.d r[6:7], 0(r3)                   # 8-byte Folded Spill
	bneq r2, r16, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 11
	xwait r3, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:0:26
	beq r2, r12, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r2, r15, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, zero, 1
	addli r6, zero, 5
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:81:20
	mod.s r3, r10, r20
	.loc	1 89 25                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:89:25
	mod.s r4, r5, r23
	xwait r15, 0
	xwait r6, 0
	lock zero, zero
	addli r5, r5, 1
	.loc	1 81 20                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:81:20
	addli r10, r10, 1
	.loc	1 89 25                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:89:25
	ds_cfg r24, zero, 0
	ds_cfg r11, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r11, zero, 13
	.loc	1 81 20                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:81:20
	slli r3, r3, 13
	.loc	1 89 25                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:89:25
	slli r4, r4, 12
	.loc	1 81 20                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:81:20
	add.s r3, r3, r18
	.loc	1 89 25                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:89:25
	shuffle_batch r4, r3, r26, 1
	.loc	1 73 26                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:73:26
	andi r3, r1, 1
	addli r1, zero, 0
	.loc	1 89 25                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:89:25
	unlock zero
	xsignal r24, 0
	xsignal r16, 0
	bneq r3, zero, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:0:25
	loadli.w r7,  32(r30)
	.loc	1 73 26 is_stmt 1               # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:73:26
	addli r9, r9, 2
	addli r8, r8, 2
	addli r4, r5, 0
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:0:26
	addli r3, r30, -2192
	addli r6, zero, 2
	slli r1, r1, 6
	addli r7, zero, 192
	addli r15, zero, 0
	store.d r[27:28], 0(r3)                 # 8-byte Folded Spill
	slli r3, r13, 6
	storeli.w r1, -2224(r30)                # 4-byte Folded Spill
	addli r13, zero, 1
	sub.s r3, r4, r3
	loadli.w r4,  -2180(r30)                # 4-byte Folded Reload
	div.s r3, r3, r17
	mod.s r4, r4, r6
	zext_int2long r[17:18], r3
	slli r1, r3, 7
	storeli.w r1, -2232(r30)                # 4-byte Folded Spill
	sll.d r[17:18], r[17:18], r14
	addli r1, r30, -2216
	store.d r[17:18], 0(r1)                 # 8-byte Folded Spill
	slli r1, r4, 15
	.loc	1 73 26                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:73:26
	load.d r[3:4], 8(r30)
	sll.d r[17:18], r[17:18], r13
	add.ul r[27:28], r[3:4], r[17:18]
	addli r18, zero, 0
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25 is_stmt 1               # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:89:25
	addli r3, zero, 9
	xwait r22, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 8
	ds_cfg r24, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r25, zero, 13
	shuffle_coa r23, r17, r26, 2
	unlock zero
	xsignal r14, 0
	xsignal r3, 0
	.loc	1 73 26                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:73:26
	andi r3, r13, 1
	bneq r3, zero, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	.loc	1 86 20                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:86:20
	mod.s r3, r8, r20
	.loc	1 89 25                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:89:25
	mod.s r17, r9, r19
	addli r4, r5, 1
	addli r9, r9, 1
	.loc	1 86 20                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:86:20
	addli r8, r8, 1
	slli r3, r3, 13
	.loc	1 89 25                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:89:25
	slli r23, r17, 13
	.loc	1 86 20                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:86:20
	add.s r17, r3, r21
	beq r2, r14, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:0:20
	bneq r2, r22, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 20                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:86:20
	zext_int2long r[5:6], r15
	xwait r14, 0
	lock zero, r16
	addli r15, zero, 256
	addli r3, zero, 2048
	dma_cfg r12, r12, zero, 0
	add.ul r[5:6], r[27:28], r[5:6]
	dma_cfg zero, r6, zero, 2
	dma_cfg r17, r5, r15, 3
	dma_cfg r15, r3, r26, 4
	dma_run zero
	unlock r16
	xsignal r22, 0
	.loc	1 73 26 is_stmt 1               # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:73:26
	andi r3, r13, 1
	bneq r3, zero, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:0:26
	andi r13, r13, 1
	.loc	1 89 25 is_stmt 1               # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:89:25
	bneq r2, r16, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 25 is_stmt 0                # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:0:25
	mod.s r3, r5, r7
	.loc	1 89 25                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:89:25
	xwait r16, 0
	addli r15, zero, 1
	addli r17, zero, 1
	slli r5, r3, 12
	addli r3, zero, 8
	xwait r3, 0
	addli r3, zero, 0
	beq r18, zero, .LBB0_24
.LBB0_23:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r6, r3, 12
	slli r3, r3, 8
	lock zero, r15
	mm_cfg r11, r26, r11, 0
	or r6, r6, r23
	or r3, r3, r1
	mm_cfg r15, r16, r15, 2
	mm_acc r3, r5, r6, 5
	andi r6, r17, 1
	addli r3, zero, 1
	addli r17, zero, 0
	unlock r15
	bneq r6, zero, .LBB0_23
	j .LBB0_25
.LBB0_24:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r6, r3, 12
	slli r3, r3, 8
	lock zero, r15
	mm_cfg r11, r26, r11, 0
	or r6, r6, r23
	or r3, r3, r1
	mm_cfg r15, r16, r15, 2
	mm r3, r5, r6, 5
	andi r6, r17, 1
	addli r3, zero, 1
	addli r17, zero, 0
	unlock r15
	bneq r6, zero, .LBB0_24
.LBB0_25:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r3, zero, 5
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	bneq r13, zero, .LBB0_27
	j .LBB0_5
.LBB0_26:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:73:26
	beq r13, zero, .LBB0_32
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:0:26
	addli r13, zero, 0
	.loc	1 89 25 is_stmt 1               # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:89:25
	addli r18, r18, 1
	lui r15, 16
	addli r5, r4, 0
	j .LBB0_18
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:86:20
	addli r10, r10, 2
	.loc	1 73 26                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:73:26
	beq r2, r16, .LBB0_6
	j .LBB0_33
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:0:26
	addli r13, r30, -2200
	addli r1, zero, 13
	load.d r[17:18], 0(r30)
	addli.d r[6:7], r[27:28], 0
	load.d r[3:4], 0(r13)                   # 8-byte Folded Reload
	lui r13, 16
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 1
	add.ul r[27:28], r[17:18], r[3:4]
	addli r4, zero, 0
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:81:20
	mod.s r3, r10, r20
	.loc	1 86 25                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:86:25
	zext_int2long r[17:18], r4
	.loc	1 81 20                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:81:20
	xwait r24, 0
	lock zero, r16
	addli r10, r10, 1
	addli r4, zero, 32
	dma_cfg r12, r12, zero, 0
	sll.d r[17:18], r[17:18], r12
	add.ul r[17:18], r[27:28], r[17:18]
	slli r3, r3, 13
	dma_cfg zero, r18, zero, 2
	add.s r3, r3, r13
	dma_cfg r3, r17, r11, 3
	.loc	1 73 26                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:73:26
	andi r3, r1, 1
	addli r1, zero, 0
	.loc	1 81 20                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:81:20
	dma_cfg r25, r25, r11, 4
	dma_run zero
	unlock r16
	xsignal r15, 0
	.loc	1 73 26                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:73:26
	bneq r3, zero, .LBB0_30
# %bb.31:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r4, r5, 2
	addli r9, r9, 2
	addli r8, r8, 2
	addli.d r[27:28], r[6:7], 0
	j .LBB0_7
.LBB0_32:                               # %.split17.thread88
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:86:20
	addli r10, r10, 2
.LBB0_33:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:0:20
	addli r3, r30, -2192
	loadli.w r7,  32(r30)
	addli r15, zero, 2
	addli r23, zero, 192
	addli r13, zero, 5
	lui r18, 16
	load.d r[27:28], 0(r3)                  # 8-byte Folded Reload
	bneq r2, zero, .LBB0_8
# %bb.34:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67 is_stmt 1              # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:101:67
	loadli.w r3,  -2232(r30)                # 4-byte Folded Reload
	zext_int2long r[5:6], r3
	addli r3, zero, 896
	zext_int2long r[17:18], r3
	loadli.w r3,  -2224(r30)                # 4-byte Folded Reload
	min.ul r[17:18], r[5:6], r[17:18]
	sext_int2long r[27:28], r3
	addli r3, r30, -2232
	addli.d r[17:18], r[17:18], 128
	store.d r[17:18], 0(r3)                 # 8-byte Folded Spill
	zext_int2long r[17:18], zero
	addli r3, r30, -2224
	store.d r[17:18], 0(r3)                 # 8-byte Folded Spill
	addli r3, r30, -2232
	load.d r[17:18], 0(r3)                  # 8-byte Folded Reload
	max.ul r[17:18], r[17:18], r[5:6]
	store.d r[17:18], 0(r3)                 # 8-byte Folded Spill
	addli r3, r30, -2224
	load.d r[17:18], 0(r3)                  # 8-byte Folded Reload
	addli r3, r30, -2240
	min.sl r[17:18], r[27:28], r[17:18]
	store.d r[17:18], 0(r3)                 # 8-byte Folded Spill
	addli r3, r30, -2232
	load.d r[17:18], 0(r3)                  # 8-byte Folded Reload
	addli r3, r30, -2224
	sub.sl r[5:6], r[17:18], r[5:6]
	store.d r[5:6], 0(r3)                   # 8-byte Folded Spill
	addli r3, r30, -2240
	load.d r[5:6], 0(r3)                    # 8-byte Folded Reload
	addli r3, r30, -2232
	addli.d r[17:18], r[5:6], 64
	zext_int2long r[5:6], r25
	store.d r[5:6], 0(r3)                   # 8-byte Folded Spill
	max.sl r[5:6], r[17:18], r[27:28]
	addli r3, r30, -2240
	store.d r[5:6], 0(r3)                   # 8-byte Folded Spill
	addli r3, r30, -2224
	load.d r[5:6], 0(r3)                    # 8-byte Folded Reload
	addli r3, r30, -2232
	load.d r[17:18], 0(r3)                  # 8-byte Folded Reload
	addli r3, r30, -2224
	min.ul r[5:6], r[5:6], r[17:18]
	addli r17, r30, -2200
	store.d r[5:6], 0(r3)                   # 8-byte Folded Spill
	addli r3, r30, -2240
	load.d r[5:6], 0(r3)                    # 8-byte Folded Reload
	addli r3, r30, -2232
	sub.sl r[5:6], r[5:6], r[27:28]
	store.d r[5:6], 0(r3)                   # 8-byte Folded Spill
	load.d r[5:6], 0(r17)                   # 8-byte Folded Reload
	addli r3, zero, 17
	sll.d r[27:28], r[5:6], r3
	zext_int2long r[5:6], r11
	addli r3, r30, -2200
	store.d r[5:6], 0(r3)                   # 8-byte Folded Spill
	load.d r[5:6], 16(r30)
	addli r3, r30, -2240
	add.ul r[5:6], r[5:6], r[27:28]
	store.d r[5:6], 0(r3)                   # 8-byte Folded Spill
	addli r3, r30, -2216
	load.d r[5:6], 0(r3)                    # 8-byte Folded Reload
	addli r3, r30, -2232
	load.d r[17:18], 0(r3)                  # 8-byte Folded Reload
	addli r3, r30, -2200
	sll.d r[5:6], r[5:6], r12
	load.d r[27:28], 0(r3)                  # 8-byte Folded Reload
	min.sl r[17:18], r[17:18], r[27:28]
	store.d r[17:18], 0(r3)                 # 8-byte Folded Spill
	addli r3, r30, -2240
	load.d r[17:18], 0(r3)                  # 8-byte Folded Reload
	addli r3, r30, -2192
	load.d r[27:28], 0(r3)                  # 8-byte Folded Reload
	addli r3, zero, 10
	add.ul r[5:6], r[17:18], r[5:6]
	xwait r3, 0
	lock zero, r13
	addli r3, r30, -2224
	dma_cfg r12, zero, zero, 0
	dma_cfg zero, r12, zero, 1
	load.d r[17:18], 0(r3)                  # 8-byte Folded Reload
	dma_cfg r6, zero, zero, 2
	slli r3, r17, 2
	addli r17, r30, -2200
	lui r18, 16
	dma_cfg r5, r1, r3, 3
	addli r1, zero, 512
	addli r3, zero, 2048
	load.d r[5:6], 0(r17)                   # 8-byte Folded Reload
	dma_cfg r3, r1, r5, 4
	addli r1, zero, 11
	dma_run zero
	unlock r13
	xsignal r1, 0
	j .LBB0_8
.LBB0_35:                               # %._crit_edge
	.loc	1 22 0                          # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_37
# %bb.36:
	.loc	1 0 0 is_stmt 0                 # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py:22:0
	addli sp, sp, 2240
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
	.long	2304                            # 0x900
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
.asciz	"cffndmhdzak6y6ku4wm4en43qific5l7sfqz2qriwsqex34rog5k.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/ff" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
