	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/v6" "cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py"
	.loc	1 22 0                          # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2592
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:73:26
	core_id r13
	addli r30, sp, 2528
	xsignal_mode_cfg r1
	beq r13, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:0:26
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
	ble.s r3, r1, .LBB0_33
# %bb.4:                                # %.lr.ph
	addli r18, zero, 2047
	sext_int2long r[3:4], r3
	addli r2, r30, -2520
	sext_int2long r[5:6], r1
	addli r1, r30, -2528
	loadli.w r8,  -512(r30)
	loadli.w r9,  -1156(r30)
	loadli.w r12,  -1672(r30)
	addli r10, zero, 128
	addli r11, zero, 4
	addli r14, zero, 6
	addli r16, zero, 2
	lui r23, 10
	addli r22, zero, 32
	addli r28, zero, 1
	addli r21, zero, 160
	core_id r25
	lui r17, 1048572
	store.d r[3:4], 0(r2)                   # 8-byte Folded Spill
	loadli.w r3,  -2444(r30)
	addli r2, zero, 5
	store.d r[17:18], 0(r1)                 # 8-byte Folded Spill
	addli r17, zero, 0
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:73:26
	addli r3, zero, 10
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:0:0
	xsignal r3, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r3, r30, -2480
	addli r7, r30, -2520
	loadli.w r17,  -2484(r30)               # 4-byte Folded Reload
	addli r12, r1, 1
	load.d r[5:6], 0(r3)                    # 8-byte Folded Reload
	load.d r[3:4], 0(r7)                    # 8-byte Folded Reload
	addli.d r[5:6], r[5:6], 1
	setlt.sl r4, r[5:6], r[3:4]
	addli r3, r26, 1
	beq r4, zero, .LBB0_33
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	.loc	1 73 26                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:73:26
	bneq r13, r11, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:0:26
	loadli.w r1,  32(r30)
	addli r4, r30, -2480
	addli r13, zero, 8
	addli r15, zero, 0
	addli r24, zero, 0
	store.d r[5:6], 0(r4)                   # 8-byte Folded Spill
	loadli.w r4,  28(r30)
	div.s r1, r5, r1
	mod.s r6, r17, r2
	addli r17, r17, 1
	storeli.w r17, -2484(r30)               # 4-byte Folded Spill
	div.s r1, r1, r4
	slli r6, r6, 13
	storeli.w r6, -2468(r30)                # 4-byte Folded Spill
	div.s r4, r1, r10
	slli r5, r4, 3
	slli r4, r4, 7
	sub.s r7, r11, r5
	sub.s r4, r1, r4
	min.s r7, r7, r13
	.loc	1 73 26                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:73:26
	core_id r13
	mod.s r1, r1, r7
	div.s r4, r4, r7
	add.s r1, r5, r1
	slli r5, r4, 6
	storeli.w r5, -2512(r30)                # 4-byte Folded Spill
	zext_int2long r[4:5], r4
	slli r6, r1, 5
	sll.d r[4:5], r[4:5], r14
	storeli.w r6, -2508(r30)                # 4-byte Folded Spill
	zext_int2long r[6:7], r1
	addli r1, zero, 12
	sll.d r[17:18], r[4:5], r16
	addli r4, r30, -2504
	store.d r[6:7], 0(r4)                   # 8-byte Folded Spill
	sll.d r[4:5], r[6:7], r1
	load.d r[6:7], 8(r30)
	addli r1, r30, -2496
	store.d r[17:18], 0(r1)                 # 8-byte Folded Spill
	addli r1, r30, -2464
	add.ul r[6:7], r[6:7], r[17:18]
	store.d r[6:7], 0(r1)                   # 8-byte Folded Spill
	addli r1, r30, -2528
	load.d r[6:7], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2456
	and.d r[6:7], r[4:5], r[6:7]
	store.d r[6:7], 0(r1)                   # 8-byte Folded Spill
	j .LBB0_13
.LBB0_11:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 81 25 is_stmt 1               # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:81:25
	sub.sl r[6:7], r[17:18], r[6:7]
	zext_int2long r[13:14], r10
	.loc	1 81 20 is_stmt 0               # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:81:20
	addli r19, zero, 3
	sll.d r[17:18], r[17:18], r16
	.loc	1 81 25                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:81:25
	div.sl r[6:7], r[6:7], r[13:14]
	addli r13, zero, 96
	.loc	1 81 20                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:81:20
	xwait r19, 0
	load.d r[19:20], 0(r30)
	lock zero, r11
	dma_cfg zero, zero, zero, 0
	zext_int2long r[13:14], r13
	add.ul r[17:18], r[19:20], r[17:18]
	dma_cfg zero, r18, zero, 2
	dma_cfg r27, r17, r10, 3
	.loc	1 81 25                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:81:25
	min.sl r[13:14], r[6:7], r[13:14]
	sub.sl r[6:7], r[13:14], r[6:7]
	addli r14, zero, 6
	.loc	1 73 26 is_stmt 1               # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:73:26
	core_id r13
	.loc	1 81 20                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:81:20
	addli r6, r6, 32
	addli r7, zero, 512
	dma_cfg r10, r7, r6, 4
	dma_run zero
	unlock r11
	xsignal r16, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 89 25                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:89:25
	addli r9, r9, 1
	.loc	1 86 20                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:86:20
	addli r8, r8, 1
	.loc	1 73 26                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:73:26
	addli r15, r15, 1
	bneq r15, r11, .LBB0_23
	j .LBB0_30
.LBB0_13:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:86:25
	add.s r1, r12, r24
	add.s r26, r3, r24
	.loc	1 89 25                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:89:25
	addli r7, zero, 192
	.loc	1 81 20                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:81:20
	mod.s r6, r1, r10
	.loc	1 89 25                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:89:25
	mod.s r7, r26, r7
	.loc	1 81 20                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:81:20
	slli r6, r6, 12
	.loc	1 89 25                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:89:25
	slli r19, r7, 12
	.loc	1 81 20                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:81:20
	add.s r27, r6, r23
	beq r13, r16, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:0:0
	zext_int2long r[17:18], r15
	.loc	1 81 20                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:81:20
	bneq r25, r28, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 86 25 is_stmt 1               # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:86:25
	sll.d r[6:7], r[17:18], r2
	addli r14, r30, -2456
	.loc	1 81 25                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:81:25
	add.ul r[17:18], r[6:7], r[4:5]
	addli r6, zero, 16383
	zext_int2long r[6:7], r6
	setlt.ul r13, r[6:7], r[17:18]
	load.d r[6:7], 0(r14)                   # 8-byte Folded Reload
	bneq r13, zero, .LBB0_11
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 25 is_stmt 0                # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:0:25
	zext_int2long r[6:7], zero
	j .LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 89 25 is_stmt 1               # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:89:25
	xwait r16, 0
	xwait r2, 0
	lock zero, zero
	addli r6, zero, 3
	ds_cfg r16, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r22, zero, 13
	shuffle_batch r19, r27, r22, 1
	unlock zero
	xsignal r6, 0
	xsignal r11, 0
	j .LBB0_12
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 86 20                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:86:20
	addli r6, zero, 127
	.loc	1 89 25                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:89:25
	mod.s r7, r9, r21
	addli r9, r9, 1
	.loc	1 86 20                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:86:20
	mod.s r6, r8, r6
	addli r8, r8, 1
	.loc	1 89 25                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:89:25
	slli r27, r7, 13
	.loc	1 86 20                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:86:20
	lui r7, 138
	slli r6, r6, 13
	add.s r13, r6, r7
	addli r6, zero, 7
	beq r25, r6, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_13 Depth=2
	bneq r25, r14, .LBB0_24
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=2
	addli r6, zero, 17
	addli r19, r30, -2464
	sll.d r[6:7], r[17:18], r6
	addli r17, zero, 7
	xwait r17, 0
	load.d r[17:18], 0(r19)                 # 8-byte Folded Reload
	lock zero, r11
	dma_cfg zero, zero, zero, 0
	add.ul r[6:7], r[17:18], r[6:7]
	addli r17, zero, 256
	dma_cfg zero, r7, zero, 2
	dma_cfg r13, r6, r17, 3
	addli r6, zero, 4096
	dma_cfg r17, r6, r22, 4
	dma_run zero
	unlock r11
	xsignal r14, 0
	.loc	1 73 26                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:73:26
	j .LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 89 25                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:89:25
	addli r6, zero, 9
	xwait r14, 0
	xwait r6, 0
	lock zero, zero
	addli r6, zero, 64
	ds_cfg r16, zero, 0
	ds_cfg r6, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r6, zero, 13
	addli r6, zero, 7
	shuffle_coa r27, r13, r22, 2
	unlock zero
	xsignal r6, 0
	addli r6, zero, 8
	xsignal r6, 0
.LBB0_22:                               # %.thread6
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 73 26                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:73:26
	core_id r13
	addli r15, r15, 1
	beq r15, r11, .LBB0_30
.LBB0_23:                               # %.backedge
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 89 25                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:89:25
	addli r24, r24, 1
	.loc	1 86 25                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:86:25
	j .LBB0_13
.LBB0_24:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 73 26                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:73:26
	core_id r13
	.loc	1 89 25                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:89:25
	bneq r13, r11, .LBB0_27
# %bb.25:                               #   in Loop: Header=BB0_13 Depth=2
	addli r6, zero, 8
	addli r7, zero, 1
	xwait r11, 0
	addli r28, zero, 1
	xwait r6, 0
	addli r6, zero, 64
	lock zero, r7
	mm_cfg r6, r22, r22, 0
	mm_cfg r16, r16, r7, 2
	beq r24, zero, .LBB0_28
# %bb.26:                               # %.preheader8
                                        #   in Loop: Header=BB0_13 Depth=2
	loadli.w r6,  -2468(r30)                # 4-byte Folded Reload
	mm_acc r6, r19, r27, 8
	j .LBB0_29
.LBB0_27:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 73 26                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:73:26
	addli r15, r15, 1
	bneq r15, r11, .LBB0_23
	j .LBB0_31
.LBB0_28:                               # %.preheader
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 89 25                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:89:25
	loadli.w r6,  -2468(r30)                # 4-byte Folded Reload
	mm r6, r19, r27, 8
.LBB0_29:                               # %.thread6.thread42
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 73 26                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:73:26
	addli r15, r15, 1
	.loc	1 89 25                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:89:25
	addli r6, zero, 9
	unlock r28
	xsignal r2, 0
	xsignal r6, 0
	bneq r15, r11, .LBB0_23
	j .LBB0_5
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:73:26
	beq r13, r11, .LBB0_5
.LBB0_31:                               # %.thread41
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:101:67
	bneq r13, zero, .LBB0_7
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r2,  -2512(r30)                # 4-byte Folded Reload
	addli r7, r30, -2504
	load.d r[17:18], 16(r30)
	zext_int2long r[3:4], r2
	addli r2, zero, 960
	zext_int2long r[5:6], r2
	loadli.w r2,  -2508(r30)                # 4-byte Folded Reload
	min.ul r[5:6], r[3:4], r[5:6]
	sext_int2long r[12:13], r2
	addli r2, zero, 96
	addli.d r[5:6], r[5:6], 64
	zext_int2long r[14:15], r2
	addli r2, zero, 64
	max.ul r[5:6], r[5:6], r[3:4]
	min.sl r[14:15], r[12:13], r[14:15]
	sub.sl r[3:4], r[5:6], r[3:4]
	addli.d r[5:6], r[14:15], 32
	zext_int2long r[14:15], r2
	addli r2, zero, 17
	max.sl r[5:6], r[5:6], r[12:13]
	min.ul r[3:4], r[3:4], r[14:15]
	zext_int2long r[14:15], r22
	sub.sl r[5:6], r[5:6], r[12:13]
	load.d r[12:13], 0(r7)                  # 8-byte Folded Reload
	addli r7, zero, 5
	slli r3, r3, 2
	min.sl r[5:6], r[5:6], r[14:15]
	addli r14, zero, 6
	sll.d r[12:13], r[12:13], r2
	addli r2, r30, -2496
	add.ul r[12:13], r[17:18], r[12:13]
	load.d r[17:18], 0(r2)                  # 8-byte Folded Reload
	addli r2, zero, 10
	xwait r2, 0
	lock zero, r7
	dma_cfg zero, zero, zero, 0
	add.ul r[12:13], r[12:13], r[17:18]
	dma_cfg zero, r28, zero, 1
	dma_cfg r13, zero, zero, 2
	loadli.w r2,  -2468(r30)                # 4-byte Folded Reload
	dma_cfg r12, r2, r3, 3
	addli r2, zero, 256
	addli r3, zero, 4096
	.loc	1 73 26                         # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:73:26
	core_id r13
	.loc	1 101 67                        # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:101:67
	dma_cfg r3, r2, r5, 4
	addli r2, zero, 5
	addli r3, zero, 11
	dma_run zero
	unlock r7
	j .LBB0_6
.LBB0_33:                               # %._crit_edge
	.loc	1 22 0                          # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:22:0
	xsignal zero, 0
	bneq r13, zero, .LBB0_35
# %bb.34:
	.loc	1 0 0 is_stmt 0                 # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:22:0
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
.LBB0_35:
	.loc	1 22 0 epilogue_begin           # cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py:22:0
	addli sp, sp, 2528
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
	.long	2592                            # 0xa20
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
.asciz	"cv6osmqfy7yzbafrclrwnx62bqoykoyy4fcjcxzaejg6tr3i7fjr.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/v6" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
