	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/3i" "c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py"
	.loc	1 22 0                          # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2584
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:73:26
	core_id r20
	addli r30, sp, 2520
	xsignal_mode_cfg r1
	beq r20, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:0:26
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -512(r30)
	storeli.w zero, -1156(r30)
	storeli.w zero, -1672(r30)
	storeli.w zero, -2444(r30)
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
	ble.s r3, r1, .LBB0_34
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	addli r2, r30, -2512
	loadli.w r8,  -512(r30)
	loadli.w r9,  -1156(r30)
	loadli.w r26,  -1672(r30)
	loadli.w r24,  -2444(r30)
	sext_int2long r[5:6], r1
	addli r10, zero, 128
	addli r11, zero, 2
	addli r22, zero, 6
	addli r15, zero, 4
	addli r1, r30, -2520
	lui r14, 10
	addli r21, zero, 32
	addli r17, zero, 64
	addli r25, zero, 1
	storeli.w zero, -2472(r30)              # 4-byte Folded Spill
	store.d r[3:4], 0(r2)                   # 8-byte Folded Spill
	addli r4, zero, 1023
	addli r2, zero, 5
	lui r3, 1048575
	store.d r[3:4], 0(r1)                   # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:73:26
	addli r1, zero, 10
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -2480
	addli r24, r16, 1
	addli r26, r12, 1
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2512
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	addli.d r[5:6], r[5:6], 1
	setlt.sl r1, r[5:6], r[3:4]
	beq r1, zero, .LBB0_34
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
	.loc	1 73 26                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:73:26
	bneq r20, r15, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:0:26
	loadli.w r1,  32(r30)
	addli r3, r30, -2480
	addli r4, zero, 8
	addli r18, zero, 1
	store.d r[5:6], 0(r3)                   # 8-byte Folded Spill
	loadli.w r3,  28(r30)
	div.s r1, r5, r1
	div.s r12, r1, r3
	div.s r13, r12, r10
	slli r1, r13, 3
	sub.s r3, r11, r1
	min.s r16, r3, r4
	addli r4, r30, -2488
	mod.s r3, r12, r16
	add.s r1, r1, r3
	addli r3, zero, 11
	setlt.u r5, r18, r1
	zext_int2long r[6:7], r1
	store.d r[6:7], 0(r4)                   # 8-byte Folded Spill
	sll.d r[3:4], r[6:7], r3
	bneq r5, zero, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	zext_int2long r[5:6], zero
	j .LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	addli r7, r30, -2520
	load.d r[5:6], 0(r7)                    # 8-byte Folded Reload
	and.d r[5:6], r[3:4], r[5:6]
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=1
	slli r13, r13, 7
	addli r7, r30, -2456
	slli r1, r1, 5
	sub.s r12, r12, r13
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	loadli.w r5,  -2472(r30)                # 4-byte Folded Reload
	storeli.w r1, -2500(r30)                # 4-byte Folded Spill
	addli r7, zero, 0
	div.s r12, r12, r16
	mod.s r13, r5, r2
	addli r5, r5, 1
	storeli.w r5, -2472(r30)                # 4-byte Folded Spill
	zext_int2long r[27:28], r12
	slli r1, r12, 6
	sll.d r[27:28], r[27:28], r22
	storeli.w r1, -2504(r30)                # 4-byte Folded Spill
	slli r1, r13, 13
	load.d r[12:13], 8(r30)
	storeli.w r1, -2468(r30)                # 4-byte Folded Spill
	sll.d r[27:28], r[27:28], r11
	addli r1, r30, -2496
	store.d r[27:28], 0(r1)                 # 8-byte Folded Spill
	add.ul r[5:6], r[12:13], r[27:28]
	addli r1, r30, -2464
	store.d r[5:6], 0(r1)                   # 8-byte Folded Spill
	addli r1, zero, 0
	j .LBB0_18
.LBB0_14:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25 is_stmt 1               # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:89:25
	xwait r11, 0
	xwait r2, 0
	lock zero, zero
	addli r7, zero, 3
	ds_cfg r11, zero, 0
	ds_cfg r21, zero, 1
	ds_cfg r21, zero, 14
	ds_cfg r21, zero, 13
	shuffle_batch r23, r13, r21, 1
	unlock zero
	xsignal r7, 0
	xsignal r15, 0
.LBB0_15:                               # %.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r9, r9, 1
	.loc	1 86 20                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:86:20
	addli r8, r8, 1
.LBB0_16:                               # %.thread6
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:73:26
	andi r7, r18, 1
	beq r7, zero, .LBB0_31
.LBB0_17:                               # %.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:89:25
	addli r1, r1, 1
	addli r7, zero, 1
	addli r18, zero, 0
.LBB0_18:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:86:25
	add.s r12, r26, r1
	add.s r16, r24, r1
	.loc	1 89 25                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:89:25
	addli r19, zero, 192
	.loc	1 81 20                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:81:20
	mod.s r13, r12, r10
	.loc	1 89 25                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:89:25
	mod.s r23, r16, r19
	.loc	1 81 20                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:81:20
	slli r13, r13, 12
	.loc	1 89 25                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:89:25
	slli r23, r23, 12
	.loc	1 81 20                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:81:20
	add.s r13, r13, r14
	beq r20, r11, .LBB0_14
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:0:0
	zext_int2long r[27:28], r7
	.loc	1 81 20                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:81:20
	bneq r20, r25, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 81 25                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:81:25
	addli r7, r30, -2456
	.loc	1 86 25 is_stmt 1               # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:86:25
	sll.d r[27:28], r[27:28], r2
	zext_int2long r[22:23], r17
	.loc	1 81 25                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:81:25
	load.d r[5:6], 0(r7)                    # 8-byte Folded Reload
	or.d r[27:28], r[27:28], r[3:4]
	.loc	1 81 20 is_stmt 0               # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:81:20
	addli r7, zero, 3
	xwait r7, 0
	lock zero, r15
	.loc	1 81 25                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:81:25
	sub.sl r[19:20], r[27:28], r[5:6]
	.loc	1 81 20                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:81:20
	load.d r[5:6], 0(r30)
	sll.d r[27:28], r[27:28], r11
	dma_cfg zero, zero, zero, 0
	.loc	1 81 25                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:81:25
	div.sl r[19:20], r[19:20], r[22:23]
	zext_int2long r[22:23], r21
	.loc	1 81 20                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:81:20
	add.ul r[27:28], r[5:6], r[27:28]
	dma_cfg zero, r28, zero, 2
	dma_cfg r13, r27, r10, 3
	addli r13, zero, 256
	.loc	1 81 25                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:81:25
	min.sl r[22:23], r[19:20], r[22:23]
	sub.sl r[19:20], r[22:23], r[19:20]
	addli r22, zero, 6
	.loc	1 81 20                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:81:20
	addli r7, r19, 32
	.loc	1 73 26 is_stmt 1               # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:73:26
	core_id r20
	.loc	1 81 20                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:81:20
	dma_cfg r10, r13, r7, 4
	dma_run zero
	unlock r15
	xsignal r11, 0
	.loc	1 89 25                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:89:25
	j .LBB0_15
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 20                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:86:20
	addli r7, zero, 127
	.loc	1 89 25                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:89:25
	addli r13, zero, 160
	.loc	1 86 20                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:86:20
	mod.s r7, r8, r7
	.loc	1 89 25                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:89:25
	mod.s r13, r9, r13
	addli r9, r9, 1
	.loc	1 86 20                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:86:20
	addli r8, r8, 1
	slli r19, r7, 13
	.loc	1 89 25                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:89:25
	slli r7, r13, 13
	.loc	1 86 20                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:86:20
	lui r13, 138
	add.s r13, r19, r13
	addli r19, zero, 7
	beq r20, r19, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	bneq r20, r22, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_18 Depth=2
	addli r7, zero, 17
	sll.d r[19:20], r[27:28], r7
	addli r7, zero, 7
	xwait r7, 0
	addli r7, r30, -2464
	load.d r[5:6], 0(r7)                    # 8-byte Folded Reload
	lock zero, r15
	addli r7, zero, 256
	dma_cfg zero, zero, zero, 0
	add.ul r[19:20], r[5:6], r[19:20]
	dma_cfg zero, r20, zero, 2
	dma_cfg r13, r19, r7, 3
	addli r13, zero, 4096
	.loc	1 73 26                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:73:26
	core_id r20
	.loc	1 86 20                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:86:20
	dma_cfg r7, r13, r21, 4
	dma_run zero
	unlock r15
	xsignal r22, 0
	.loc	1 89 25                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:89:25
	j .LBB0_16
.LBB0_24:                               #   in Loop: Header=BB0_18 Depth=2
	addli r5, zero, 9
	xwait r22, 0
	addli r19, zero, 64
	addli r17, zero, 64
	xwait r5, 0
	lock zero, zero
	ds_cfg r11, zero, 0
	ds_cfg r19, zero, 1
	ds_cfg r21, zero, 14
	ds_cfg r19, zero, 13
	shuffle_coa r7, r13, r21, 2
	addli r7, zero, 7
	unlock zero
	xsignal r7, 0
	addli r7, zero, 8
	xsignal r7, 0
	j .LBB0_16
.LBB0_25:                               #   in Loop: Header=BB0_18 Depth=2
	bneq r20, r15, .LBB0_28
# %bb.26:                               #   in Loop: Header=BB0_18 Depth=2
	addli r13, zero, 8
	xwait r15, 0
	addli r25, zero, 1
	xwait r13, 0
	addli r13, zero, 1
	lock zero, r13
	mm_cfg r17, r21, r21, 0
	mm_cfg r11, r11, r13, 2
	beq r1, zero, .LBB0_29
# %bb.27:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	loadli.w r5,  -2468(r30)                # 4-byte Folded Reload
	mm_acc r5, r23, r7, 8
	j .LBB0_30
.LBB0_28:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:73:26
	andi r7, r18, 1
	bneq r7, zero, .LBB0_17
	j .LBB0_32
.LBB0_29:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:89:25
	loadli.w r5,  -2468(r30)                # 4-byte Folded Reload
	mm r5, r23, r7, 8
.LBB0_30:                               # %.thread6.thread40
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:73:26
	andi r7, r18, 1
	.loc	1 89 25                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:89:25
	addli r5, zero, 9
	unlock r25
	xsignal r2, 0
	xsignal r5, 0
	bneq r7, zero, .LBB0_17
	j .LBB0_5
.LBB0_31:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:73:26
	beq r20, r15, .LBB0_5
.LBB0_32:                               # %.thread39
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:101:67
	bneq r20, zero, .LBB0_7
# %bb.33:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -2504(r30)                # 4-byte Folded Reload
	zext_int2long r[22:23], r21
	addli r2, r30, -2488
	addli r7, r30, -2496
	zext_int2long r[3:4], r1
	addli r1, zero, 960
	zext_int2long r[5:6], r1
	loadli.w r1,  -2500(r30)                # 4-byte Folded Reload
	min.ul r[5:6], r[3:4], r[5:6]
	sext_int2long r[18:19], r1
	addli r1, zero, 17
	addli.d r[5:6], r[5:6], 64
	min.sl r[26:27], r[18:19], r[22:23]
	max.ul r[5:6], r[5:6], r[3:4]
	addli.d r[26:27], r[26:27], 32
	sub.sl r[3:4], r[5:6], r[3:4]
	zext_int2long r[5:6], r17
	min.ul r[3:4], r[3:4], r[5:6]
	max.sl r[5:6], r[26:27], r[18:19]
	load.d r[26:27], 0(r2)                  # 8-byte Folded Reload
	sub.sl r[5:6], r[5:6], r[18:19]
	sll.d r[26:27], r[26:27], r1
	load.d r[1:2], 16(r30)
	min.sl r[5:6], r[5:6], r[22:23]
	addli r22, zero, 6
	add.ul r[18:19], r[1:2], r[26:27]
	load.d r[1:2], 0(r7)                    # 8-byte Folded Reload
	addli r7, zero, 5
	add.ul r[18:19], r[18:19], r[1:2]
	addli r1, zero, 10
	xwait r1, 0
	lock zero, r7
	slli r1, r3, 2
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r25, zero, 1
	dma_cfg r19, zero, zero, 2
	loadli.w r2,  -2468(r30)                # 4-byte Folded Reload
	dma_cfg r18, r2, r1, 3
	addli r1, zero, 256
	addli r2, zero, 4096
	dma_cfg r2, r1, r5, 4
	addli r2, zero, 5
	addli r1, zero, 11
	dma_run zero
	unlock r7
	j .LBB0_6
.LBB0_34:                               # %._crit_edge
	.loc	1 22 0                          # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:22:0
	xsignal zero, 0
	bneq r20, zero, .LBB0_36
# %bb.35:
	.loc	1 0 0 is_stmt 0                 # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:22:0
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
.LBB0_36:
	.loc	1 22 0 epilogue_begin           # c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py:22:0
	addli sp, sp, 2520
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
	.long	2584                            # 0xa18
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
.asciz	"c3isicjubqrnrunykiqevtmezbrt4zuljzvestpnt4qdsz4juk7i.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/3i" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
