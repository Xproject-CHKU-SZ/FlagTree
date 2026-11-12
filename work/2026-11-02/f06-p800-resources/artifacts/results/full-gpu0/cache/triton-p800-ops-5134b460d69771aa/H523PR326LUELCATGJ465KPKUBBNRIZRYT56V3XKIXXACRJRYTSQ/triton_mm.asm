	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/gc" "cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py"
	.loc	1 22 0                          # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2272
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:73:26
	core_id r2
	addli r30, sp, 2208
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -364(r30)
	storeli.w zero, -1008(r30)
	storeli.w zero, -1372(r30)
	storeli.w zero, -2144(r30)
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
	ble.s r3, r1, .LBB0_36
# %bb.4:                                # %.lr.ph
	loadli.w r8,  -364(r30)
	loadli.w r9,  -1008(r30)
	loadli.w r10,  -1372(r30)
	loadli.w r5,  -2144(r30)
	sext_int2long r[3:4], r3
	addli r2, r30, -2176
	sext_int2long r[26:27], r1
	addli r11, zero, 64
	addli r12, zero, 1
	addli r14, zero, 7
	addli r15, zero, 4
	addli r22, zero, 192
	addli r18, zero, 160
	addli r19, zero, 90
	lui r20, 212
	addli r21, zero, 6
	addli r23, zero, 3
	addli r24, zero, 128
	addli r25, zero, 32
	addli r7, zero, 5
	lui r28, 32
	addli r13, zero, 2
	storeli.w zero, -2148(r30)              # 4-byte Folded Spill
	store.d r[3:4], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split17.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:86:20
	addli r10, r10, 2
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:73:26
	addli r1, zero, 10
	addli r22, zero, 192
	addli r7, zero, 5
	lui r28, 32
	addli r13, zero, 2
	xsignal r1, 0
	addli r1, r30, -2160
.LBB0_7:                                # %.thread92
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:0:26
	load.d r[26:27], 0(r1)                  # 8-byte Folded Reload
.LBB0_8:                                # %.thread92
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, r30, -2176
	addli.d r[26:27], r[26:27], 1
	loadli.w r3,  -2148(r30)                # 4-byte Folded Reload
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	addli r3, r3, 1
	setlt.sl r1, r[26:27], r[5:6]
	addli r5, r4, 0
	storeli.w r3, -2148(r30)                # 4-byte Folded Spill
	beq r1, zero, .LBB0_36
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	loadli.w r1,  32(r30)
	loadli.w r3,  28(r30)
	.loc	1 54 50 is_stmt 1               # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:54:50
	addli r6, zero, 8
	div.s r1, r26, r1
	div.s r4, r1, r3
	.loc	1 53 22                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:53:22
	div.s r16, r4, r11
	.loc	1 54 41                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:54:41
	slli r1, r16, 3
	.loc	1 54 30 is_stmt 0               # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:54:30
	sub.s r3, r12, r1
	.loc	1 54 50                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:54:50
	min.s r17, r3, r6
	.loc	1 73 26 is_stmt 1               # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:73:26
	addli r6, r30, -2168
	.loc	1 55 40                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:55:40
	mod.s r3, r4, r17
	.loc	1 55 34 is_stmt 0               # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:55:34
	add.s r3, r1, r3
	.loc	1 95 15 is_stmt 1               # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:95:15
	zext_int2long r[1:2], r3
	.loc	1 73 26                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:73:26
	store.d r[1:2], 0(r6)                   # 8-byte Folded Spill
	core_id r2
	bneq r2, r15, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, zero, 11
	xwait r1, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:0:26
	beq r2, r12, .LBB0_33
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r2, r13, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 1
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:81:20
	mod.s r1, r10, r19
	.loc	1 89 25                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:89:25
	mod.s r4, r5, r22
	xwait r13, 0
	xwait r7, 0
	lock zero, zero
	addli r5, r5, 1
	.loc	1 81 20                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:81:20
	addli r10, r10, 1
	.loc	1 89 25                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:89:25
	ds_cfg r23, zero, 0
	ds_cfg r11, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r11, zero, 13
	.loc	1 81 20                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:81:20
	slli r1, r1, 13
	.loc	1 89 25                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:89:25
	slli r4, r4, 12
	.loc	1 81 20                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:81:20
	add.s r1, r1, r28
	.loc	1 89 25                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:89:25
	shuffle_batch r4, r1, r25, 1
	.loc	1 73 26                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:73:26
	andi r1, r3, 1
	addli r3, zero, 0
	.loc	1 89 25                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:89:25
	unlock zero
	xsignal r23, 0
	xsignal r15, 0
	bneq r1, zero, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:73:26
	addli r9, r9, 2
	addli r8, r8, 2
	addli r4, r5, 0
	.loc	1 89 25                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:89:25
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:0:25
	addli r1, r30, -2160
	slli r3, r3, 6
	addli r22, zero, 1
	addli r7, zero, 5
	addli r13, zero, 0
	store.d r[26:27], 0(r1)                 # 8-byte Folded Spill
	slli r1, r16, 6
	storeli.w r3, -2192(r30)                # 4-byte Folded Spill
	sub.s r1, r4, r1
	loadli.w r4,  -2148(r30)                # 4-byte Folded Reload
	div.s r1, r1, r17
	mod.s r4, r4, r15
	zext_int2long r[16:17], r1
	slli r1, r1, 7
	slli r28, r4, 15
	.loc	1 73 26 is_stmt 1               # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:73:26
	load.d r[3:4], 8(r30)
	storeli.w r1, -2200(r30)                # 4-byte Folded Spill
	sll.d r[16:17], r[16:17], r14
	addli r1, r30, -2184
	store.d r[16:17], 0(r1)                 # 8-byte Folded Spill
	sll.d r[16:17], r[16:17], r22
	add.ul r[26:27], r[3:4], r[16:17]
	addli r17, zero, 0
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:89:25
	addli r1, zero, 9
	xwait r21, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 8
	ds_cfg r23, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r3, r16, r25, 2
	unlock zero
	xsignal r14, 0
	xsignal r1, 0
	.loc	1 73 26                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:73:26
	andi r1, r22, 1
	beq r1, zero, .LBB0_29
.LBB0_18:                               # %.split.backedge
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 26 is_stmt 0                # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:0:26
	addli r22, zero, 0
	.loc	1 89 25 is_stmt 1               # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:89:25
	addli r17, r17, 1
	lui r13, 16
	addli r5, r4, 0
.LBB0_19:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 86 20                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:86:20
	mod.s r1, r8, r19
	.loc	1 89 25                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:89:25
	mod.s r3, r9, r18
	addli r4, r5, 1
	addli r9, r9, 1
	.loc	1 86 20                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:86:20
	addli r8, r8, 1
	slli r1, r1, 13
	.loc	1 89 25                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:89:25
	slli r3, r3, 13
	.loc	1 86 20                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:86:20
	add.s r16, r1, r20
	beq r2, r14, .LBB0_17
# %bb.20:                               # %.split
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 20 is_stmt 0                # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:0:20
	bneq r2, r21, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 86 20                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:86:20
	zext_int2long r[5:6], r13
	xwait r14, 0
	lock zero, r15
	addli r3, zero, 256
	addli r1, zero, 2048
	dma_cfg r12, r12, zero, 0
	add.ul r[5:6], r[26:27], r[5:6]
	dma_cfg zero, r6, zero, 2
	dma_cfg r16, r5, r3, 3
	dma_cfg r3, r1, r25, 4
	dma_run zero
	unlock r15
	xsignal r21, 0
	.loc	1 73 26 is_stmt 1               # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:73:26
	andi r1, r22, 1
	bneq r1, zero, .LBB0_18
	j .LBB0_29
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 26 is_stmt 0                # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:0:26
	andi r22, r22, 1
	.loc	1 89 25 is_stmt 1               # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:89:25
	bneq r2, r15, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 25 is_stmt 0                # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:0:25
	addli r1, zero, 192
	.loc	1 89 25                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:89:25
	xwait r15, 0
	addli r13, zero, 1
	addli r16, zero, 1
	mod.s r1, r5, r1
	slli r5, r1, 12
	addli r1, zero, 8
	xwait r1, 0
	addli r1, zero, 0
	beq r17, zero, .LBB0_25
.LBB0_24:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r6, r1, 12
	slli r1, r1, 8
	lock zero, r13
	mm_cfg r11, r25, r11, 0
	or r6, r6, r3
	or r1, r1, r28
	mm_cfg r13, r15, r13, 2
	mm_acc r1, r5, r6, 5
	andi r6, r16, 1
	addli r1, zero, 1
	addli r16, zero, 0
	unlock r13
	bneq r6, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r6, r1, 12
	slli r1, r1, 8
	lock zero, r13
	mm_cfg r11, r25, r11, 0
	or r6, r6, r3
	or r1, r1, r28
	mm_cfg r13, r15, r13, 2
	mm r1, r5, r6, 5
	andi r6, r16, 1
	addli r1, zero, 1
	addli r16, zero, 0
	unlock r13
	bneq r6, zero, .LBB0_25
.LBB0_26:                               # %.thread6.thread90
                                        #   in Loop: Header=BB0_19 Depth=2
	addli r1, zero, 9
	xsignal r7, 0
	xsignal r1, 0
	bneq r22, zero, .LBB0_18
	j .LBB0_5
.LBB0_27:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 73 26 is_stmt 1               # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:73:26
	bneq r22, zero, .LBB0_18
# %bb.28:                               # %.split17.thread89
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:86:20
	addli r10, r10, 2
	j .LBB0_30
.LBB0_29:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r10, r10, 2
	.loc	1 73 26                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:73:26
	beq r2, r15, .LBB0_6
.LBB0_30:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:0:26
	addli r22, zero, 192
	addli r7, zero, 5
	addli r13, zero, 2
	bneq r2, zero, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67 is_stmt 1              # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:101:67
	loadli.w r1,  -2200(r30)                # 4-byte Folded Reload
	addli r3, r30, -2168
	zext_int2long r[5:6], r1
	addli r1, zero, 896
	zext_int2long r[16:17], r1
	loadli.w r1,  -2192(r30)                # 4-byte Folded Reload
	min.ul r[16:17], r[5:6], r[16:17]
	sext_int2long r[26:27], r1
	addli r1, r30, -2200
	addli.d r[16:17], r[16:17], 128
	store.d r[16:17], 0(r1)                 # 8-byte Folded Spill
	zext_int2long r[16:17], zero
	addli r1, r30, -2192
	store.d r[16:17], 0(r1)                 # 8-byte Folded Spill
	addli r1, r30, -2200
	load.d r[16:17], 0(r1)                  # 8-byte Folded Reload
	max.ul r[16:17], r[16:17], r[5:6]
	store.d r[16:17], 0(r1)                 # 8-byte Folded Spill
	addli r1, r30, -2192
	load.d r[16:17], 0(r1)                  # 8-byte Folded Reload
	addli r1, r30, -2208
	min.sl r[16:17], r[26:27], r[16:17]
	store.d r[16:17], 0(r1)                 # 8-byte Folded Spill
	addli r1, r30, -2200
	load.d r[16:17], 0(r1)                  # 8-byte Folded Reload
	addli r1, r30, -2192
	sub.sl r[5:6], r[16:17], r[5:6]
	store.d r[5:6], 0(r1)                   # 8-byte Folded Spill
	addli r1, r30, -2208
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2200
	addli.d r[16:17], r[5:6], 64
	zext_int2long r[5:6], r24
	store.d r[5:6], 0(r1)                   # 8-byte Folded Spill
	max.sl r[5:6], r[16:17], r[26:27]
	addli r1, r30, -2208
	store.d r[5:6], 0(r1)                   # 8-byte Folded Spill
	addli r1, r30, -2192
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2200
	load.d r[16:17], 0(r1)                  # 8-byte Folded Reload
	addli r1, r30, -2192
	min.ul r[5:6], r[5:6], r[16:17]
	store.d r[5:6], 0(r1)                   # 8-byte Folded Spill
	addli r1, r30, -2208
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2200
	sub.sl r[5:6], r[5:6], r[26:27]
	store.d r[5:6], 0(r1)                   # 8-byte Folded Spill
	load.d r[5:6], 0(r3)                    # 8-byte Folded Reload
	addli r1, zero, 17
	addli r3, zero, 2048
	sll.d r[26:27], r[5:6], r1
	zext_int2long r[5:6], r11
	addli r1, r30, -2168
	store.d r[5:6], 0(r1)                   # 8-byte Folded Spill
	load.d r[5:6], 16(r30)
	addli r1, r30, -2208
	add.ul r[5:6], r[5:6], r[26:27]
	store.d r[5:6], 0(r1)                   # 8-byte Folded Spill
	addli r1, r30, -2184
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2200
	load.d r[16:17], 0(r1)                  # 8-byte Folded Reload
	addli r1, r30, -2168
	sll.d r[5:6], r[5:6], r12
	load.d r[26:27], 0(r1)                  # 8-byte Folded Reload
	addli r1, r30, -2208
	min.sl r[16:17], r[16:17], r[26:27]
	load.d r[26:27], 0(r1)                  # 8-byte Folded Reload
	addli r1, zero, 10
	xwait r1, 0
	lock zero, r7
	addli r1, r30, -2192
	dma_cfg r12, zero, zero, 0
	add.ul r[5:6], r[26:27], r[5:6]
	dma_cfg zero, r12, zero, 1
	load.d r[26:27], 0(r1)                  # 8-byte Folded Reload
	dma_cfg r6, zero, zero, 2
	slli r1, r26, 2
	dma_cfg r5, r28, r1, 3
	addli r1, zero, 512
	dma_cfg r3, r1, r16, 4
	addli r1, zero, 11
	dma_run zero
	unlock r7
	xsignal r1, 0
.LBB0_32:                               # %.thread92
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:0:67
	addli r1, r30, -2160
	lui r28, 32
	j .LBB0_7
.LBB0_33:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r4, r30, -2168
	addli r1, zero, 13
	load.d r[16:17], 0(r30)
	addli r6, zero, 2
	addli r13, zero, 1
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	sll.d r[3:4], r[2:3], r1
	add.ul r[3:4], r[16:17], r[3:4]
	addli r16, zero, 0
.LBB0_34:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:81:20
	mod.s r1, r10, r19
	.loc	1 86 25                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:86:25
	zext_int2long r[16:17], r16
	.loc	1 81 20                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:81:20
	xwait r23, 0
	lock zero, r15
	addli r10, r10, 1
	dma_cfg r12, r12, zero, 0
	sll.d r[16:17], r[16:17], r12
	add.ul r[16:17], r[3:4], r[16:17]
	slli r1, r1, 13
	dma_cfg zero, r17, zero, 2
	add.s r1, r1, r28
	dma_cfg r1, r16, r11, 3
	.loc	1 73 26                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:73:26
	andi r1, r13, 1
	addli r16, zero, 32
	addli r13, zero, 0
	.loc	1 81 20                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:81:20
	dma_cfg r24, r24, r11, 4
	dma_run zero
	unlock r15
	xsignal r6, 0
	.loc	1 73 26                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:73:26
	bneq r1, zero, .LBB0_34
# %bb.35:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r4, r5, 2
	addli r9, r9, 2
	addli r8, r8, 2
	addli r13, zero, 2
	core_id r2
	.loc	1 89 25                         # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:89:25
	j .LBB0_8
.LBB0_36:                               # %._crit_edge
	.loc	1 22 0                          # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_38
# %bb.37:
	.loc	1 0 0 is_stmt 0                 # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:22:0
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
.LBB0_38:
	.loc	1 22 0 epilogue_begin           # cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py:22:0
	addli sp, sp, 2208
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
	.long	2272                            # 0x8e0
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
.asciz	"cgcqx4dcu3iv5niy3zucnml2znz22gtuprgiymtd7gdwckmsqwe4.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/gc" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
