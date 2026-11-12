	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/bi" "cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py"
	.loc	1 22 0                          # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2576
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:73:26
	core_id r22
	addli r30, sp, 2512
	xsignal_mode_cfg r1
	beq r22, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -520(r30)
	storeli.w zero, -1164(r30)
	storeli.w zero, -1688(r30)
	storeli.w zero, -2460(r30)
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
	sext_int2long r[6:7], r1
	loadli.w r28,  -520(r30)
	loadli.w r26,  -1164(r30)
	loadli.w r8,  -1688(r30)
	loadli.w r1,  -2460(r30)
	sext_int2long r[3:4], r3
	addli r2, r30, -2480
	addli r9, zero, 32
	addli r11, zero, 1
	addli r12, zero, 6
	addli r13, zero, 2
	addli r14, zero, 4
	addli r17, zero, 160
	addli r18, zero, 129
	lui r19, 134
	addli r20, zero, 7
	addli r25, zero, 5
	addli r27, zero, 256
	addli r24, zero, 130
	lui r15, 4
	addli r16, zero, 3
	addli r21, zero, 0
	store.d r[3:4], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split17.thread89
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:86:20
	addli r8, r8, 2
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:73:26
	addli r3, zero, 10
	.loc	1 101 67                        # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:101:67
	addli r1, r15, 1
	addli r26, r25, 1
	addli r28, r16, 1
	addli r11, zero, 1
	addli r25, zero, 5
	addli r24, zero, 130
	lui r15, 4
	addli r16, zero, 3
	.loc	1 73 26                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:73:26
	xsignal r3, 0
	loadli.w r21,  -2464(r30)               # 4-byte Folded Reload
.LBB0_7:                                # %.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:0:26
	addli r2, r30, -2480
	addli.d r[6:7], r[6:7], 1
	addli r21, r21, 1
	load.d r[3:4], 0(r2)                    # 8-byte Folded Reload
	setlt.sl r3, r[6:7], r[3:4]
	beq r3, zero, .LBB0_36
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_17 Depth 2
	loadli.w r3,  32(r30)
	loadli.w r4,  28(r30)
	.loc	1 73 26                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:73:26
	core_id r2
	addli.d r[22:23], r[6:7], 0
	div.s r3, r6, r3
	div.s r4, r3, r4
	.loc	1 53 22 is_stmt 1               # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:53:22
	div.s r5, r4, r9
	.loc	1 54 41                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:54:41
	slli r3, r5, 3
	.loc	1 54 30 is_stmt 0               # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:54:30
	sub.s r10, r11, r3
	.loc	1 54 50                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:54:50
	addli r11, zero, 8
	min.s r10, r10, r11
	.loc	1 55 40 is_stmt 1               # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:55:40
	mod.s r11, r4, r10
	.loc	1 55 34 is_stmt 0               # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:55:34
	add.s r3, r3, r11
	.loc	1 73 26 is_stmt 1               # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:73:26
	addli r11, r30, -2472
	.loc	1 95 15                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:95:15
	zext_int2long r[6:7], r3
	.loc	1 73 26                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:73:26
	store.d r[6:7], 0(r11)                  # 8-byte Folded Spill
	bneq r2, r14, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r11, zero, 11
	addli.d r[6:7], r[22:23], 0
	core_id r22
	xwait r11, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:0:26
	addli r11, zero, 1
	beq r2, r11, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	addli.d r[6:7], r[22:23], 0
	.loc	1 73 26                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:73:26
	core_id r22
	bneq r22, r13, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:0:26
	addli r3, zero, 1
	addli r2, zero, 192
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:81:20
	mod.s r4, r8, r24
	.loc	1 89 25                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:89:25
	mod.s r5, r1, r2
	xwait r13, 0
	xwait r25, 0
	lock zero, zero
	addli r1, r1, 1
	.loc	1 81 20                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:81:20
	addli r8, r8, 1
	.loc	1 89 25                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:89:25
	ds_cfg r13, zero, 0
	ds_cfg r9, zero, 1
	ds_cfg r9, zero, 14
	ds_cfg r9, zero, 13
	.loc	1 81 20                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:81:20
	slli r4, r4, 12
	.loc	1 89 25                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:89:25
	slli r5, r5, 12
	.loc	1 81 20                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:81:20
	add.s r4, r4, r15
	.loc	1 89 25                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:89:25
	shuffle_batch r5, r4, r9, 1
	.loc	1 73 26                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:73:26
	andi r4, r3, 1
	addli r3, zero, 0
	.loc	1 89 25                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:89:25
	unlock zero
	xsignal r16, 0
	xsignal r14, 0
	bneq r4, zero, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:73:26
	addli r26, r26, 2
	addli r28, r28, 2
	.loc	1 89 25                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:89:25
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:0:25
	slli r5, r5, 5
	slli r2, r3, 5
	addli r11, zero, 0
	storeli.w r21, -2464(r30)               # 4-byte Folded Spill
	addli r23, zero, 0
	sub.s r4, r4, r5
	mod.s r5, r21, r13
	storeli.w r2, -2496(r30)                # 4-byte Folded Spill
	addli r21, zero, 1
	div.s r4, r4, r10
	slli r24, r5, 13
	zext_int2long r[15:16], r4
	slli r2, r4, 6
	.loc	1 73 26 is_stmt 1               # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:73:26
	load.d r[3:4], 8(r30)
	sll.d r[15:16], r[15:16], r12
	storeli.w r2, -2504(r30)                # 4-byte Folded Spill
	addli r2, r30, -2488
	sll.d r[15:16], r[15:16], r13
	store.d r[15:16], 0(r2)                 # 8-byte Folded Spill
	add.ul r[3:4], r[3:4], r[15:16]
	addli r2, zero, 64
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:89:25
	addli r11, zero, 9
	xwait r12, 0
	xwait r11, 0
	lock zero, zero
	ds_cfg r13, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r9, zero, 14
	ds_cfg r2, zero, 13
	shuffle_coa r10, r5, r9, 2
	addli r5, zero, 8
	unlock zero
	xsignal r20, 0
	xsignal r5, 0
	.loc	1 73 26                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:73:26
	andi r5, r21, 1
	bneq r5, zero, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:89:25
	add.s r16, r28, r23
	add.s r25, r26, r23
	add.s r15, r1, r23
	.loc	1 86 20                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:86:20
	mod.s r5, r16, r18
	.loc	1 89 25                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:89:25
	mod.s r10, r25, r17
	.loc	1 86 20                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:86:20
	slli r5, r5, 13
	.loc	1 89 25                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:89:25
	slli r10, r10, 13
	.loc	1 86 20                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:86:20
	add.s r5, r5, r19
	beq r22, r20, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:0:20
	bneq r22, r12, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 20                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:86:20
	zext_int2long r[10:11], r11
	xwait r20, 0
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	add.ul r[10:11], r[3:4], r[10:11]
	dma_cfg zero, r11, zero, 2
	dma_cfg r5, r10, r27, 3
	addli r5, zero, 1024
	dma_cfg r27, r5, r9, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:73:26
	andi r5, r21, 1
	bneq r5, zero, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:0:26
	andi r11, r21, 1
	.loc	1 89 25 is_stmt 1               # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:89:25
	bneq r22, r14, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 25 is_stmt 0                # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:0:25
	addli r5, zero, 192
	.loc	1 89 25                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:89:25
	addli r21, zero, 8
	xwait r14, 0
	mod.s r5, r15, r5
	xwait r21, 0
	addli r21, zero, 1
	lock zero, r21
	mm_cfg r2, r9, r9, 0
	mm_cfg r13, r13, r21, 2
	slli r5, r5, 12
	beq r23, zero, .LBB0_24
# %bb.22:                               # %.preheader8
                                        #   in Loop: Header=BB0_17 Depth=2
	mm_acc r24, r5, r10, 8
	j .LBB0_25
.LBB0_23:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 25                          # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:0:25
	bneq r11, zero, .LBB0_26
	j .LBB0_31
.LBB0_24:                               # %.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:89:25
	mm r24, r5, r10, 8
.LBB0_25:                               # %.thread6.thread88
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r5, zero, 5
	unlock r21
	xsignal r5, 0
	addli r5, zero, 9
	xsignal r5, 0
	.loc	1 73 26 is_stmt 1               # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:73:26
	beq r11, zero, .LBB0_5
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:89:25
	addli r23, r23, 1
	lui r11, 8
	addli r21, zero, 0
	j .LBB0_17
.LBB0_27:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:86:20
	addli r8, r8, 2
	.loc	1 73 26                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:73:26
	beq r22, r14, .LBB0_6
	j .LBB0_32
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:0:26
	addli r2, r30, -2488
	addli r3, zero, 13
	storeli.w r21, -2464(r30)               # 4-byte Folded Spill
	addli r11, zero, 1
	addli r10, zero, 0
	lui r21, 4
	addli r7, zero, 128
	store.d r[22:23], 0(r2)                 # 8-byte Folded Spill
	addli r2, r30, -2472
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	sll.d r[3:4], r[4:5], r3
	load.d r[5:6], 0(r30)
	add.ul r[3:4], r[5:6], r[3:4]
	addli r6, zero, 3
.LBB0_29:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:81:20
	mod.s r5, r8, r24
	.loc	1 86 25                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:86:25
	zext_int2long r[15:16], r10
	.loc	1 81 20                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:81:20
	xwait r6, 0
	lock zero, r14
	addli r10, zero, 32
	addli r8, r8, 1
	dma_cfg zero, zero, zero, 0
	sll.d r[15:16], r[15:16], r13
	add.ul r[15:16], r[3:4], r[15:16]
	slli r5, r5, 12
	dma_cfg zero, r16, zero, 2
	add.s r5, r5, r21
	dma_cfg r5, r15, r7, 3
	.loc	1 73 26                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:73:26
	andi r5, r11, 1
	addli r11, zero, 0
	.loc	1 81 20                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:81:20
	dma_cfg r7, r27, r10, 4
	dma_run zero
	unlock r14
	xsignal r13, 0
	.loc	1 73 26                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:73:26
	bneq r5, zero, .LBB0_29
# %bb.30:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:0:26
	addli r2, r30, -2488
	loadli.w r21,  -2464(r30)               # 4-byte Folded Reload
	.loc	1 73 26                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:73:26
	addli r1, r1, 2
	addli r26, r26, 2
	addli r28, r28, 2
	lui r15, 4
	addli r16, zero, 3
	addli r11, zero, 1
	core_id r22
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	.loc	1 89 25 is_stmt 1               # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:89:25
	j .LBB0_7
.LBB0_31:                               # %.split17.thread87
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:86:20
	addli r8, r8, 2
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:0:20
	loadli.w r21,  -2464(r30)               # 4-byte Folded Reload
	.loc	1 101 67 is_stmt 1              # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:101:67
	addli r1, r15, 1
	addli r26, r25, 1
	addli r28, r16, 1
	addli r11, zero, 1
	beq r22, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:0:67
	addli r25, zero, 5
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:101:67
	loadli.w r3,  -2504(r30)                # 4-byte Folded Reload
	addli r5, zero, 192
	addli r23, r30, -2496
	addli r25, zero, 5
	zext_int2long r[10:11], r5
	loadli.w r5,  -2496(r30)                # 4-byte Folded Reload
	zext_int2long r[3:4], r3
	min.ul r[10:11], r[3:4], r[10:11]
	sext_int2long r[15:16], r5
	addli r5, r30, -2504
	addli.d r[10:11], r[10:11], 64
	store.d r[10:11], 0(r5)                 # 8-byte Folded Spill
	zext_int2long r[10:11], zero
	addli r5, r30, -2496
	store.d r[10:11], 0(r5)                 # 8-byte Folded Spill
	addli r5, r30, -2504
	load.d r[10:11], 0(r5)                  # 8-byte Folded Reload
	max.ul r[10:11], r[10:11], r[3:4]
	store.d r[10:11], 0(r5)                 # 8-byte Folded Spill
	addli r5, r30, -2496
	load.d r[10:11], 0(r5)                  # 8-byte Folded Reload
	addli r5, r30, -2512
	min.sl r[10:11], r[15:16], r[10:11]
	store.d r[10:11], 0(r5)                 # 8-byte Folded Spill
	addli r5, r30, -2504
	load.d r[10:11], 0(r5)                  # 8-byte Folded Reload
	addli r5, r30, -2496
	sub.sl r[3:4], r[10:11], r[3:4]
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	addli r5, r30, -2512
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	addli.d r[10:11], r[3:4], 32
	zext_int2long r[4:5], r2
	load.d r[2:3], 0(r23)                   # 8-byte Folded Reload
	max.sl r[10:11], r[10:11], r[15:16]
	min.ul r[2:3], r[2:3], r[4:5]
	addli r4, r30, -2496
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	sub.sl r[2:3], r[10:11], r[15:16]
	addli r4, r30, -2504
	load.d r[10:11], 16(r30)
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r2, r30, -2472
	addli r3, zero, 15
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	addli r2, r30, -2504
	sll.d r[15:16], r[4:5], r3
	zext_int2long r[3:4], r9
	addli r5, zero, 10
	add.ul r[15:16], r[10:11], r[15:16]
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	addli r2, r30, -2488
	min.sl r[3:4], r[10:11], r[3:4]
	load.d r[10:11], 0(r2)                  # 8-byte Folded Reload
	xwait r5, 0
	lock zero, r25
	addli r5, zero, 1
	addli r2, r30, -2496
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r5, zero, 1
	add.ul r[10:11], r[15:16], r[10:11]
	load.d r[15:16], 0(r2)                  # 8-byte Folded Reload
	dma_cfg r11, zero, zero, 2
	slli r5, r15, 2
	dma_cfg r10, r24, r5, 3
	addli r5, zero, 1024
	addli r11, zero, 1
	dma_cfg r5, r27, r3, 4
	addli r3, zero, 11
	dma_run zero
	unlock r25
	xsignal r3, 0
.LBB0_35:                               # %.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67                          # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:0:67
	addli r24, zero, 130
	lui r15, 4
	addli r16, zero, 3
	j .LBB0_7
.LBB0_36:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:22:0
	xsignal zero, 0
	bneq r22, zero, .LBB0_38
# %bb.37:
	.loc	1 0 0 is_stmt 0                 # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py:22:0
	addli sp, sp, 2512
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
	.long	2576                            # 0xa10
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
.asciz	"cbimsei7l53ljxngyr2asy4gs6ydbm4yi2w322f7ikcvxcoz3bfu.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/bi" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
