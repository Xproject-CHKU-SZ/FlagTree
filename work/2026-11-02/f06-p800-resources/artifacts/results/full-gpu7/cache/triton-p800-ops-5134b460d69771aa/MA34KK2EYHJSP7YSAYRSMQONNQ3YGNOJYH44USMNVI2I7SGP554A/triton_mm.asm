	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/sn" "csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py"
	.loc	1 22 0                          # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2560
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:73:26
	core_id r2
	addli r30, sp, 2496
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -516(r30)
	storeli.w zero, -1540(r30)
	storeli.w zero, -2052(r30)
	storeli.w zero, -2440(r30)
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
	loadli.w r28,  -516(r30)
	loadli.w r26,  -1540(r30)
	loadli.w r8,  -2052(r30)
	loadli.w r25,  -2440(r30)
	sext_int2long r[3:4], r3
	addli r5, r30, -2472
	sext_int2long r[11:12], r1
	addli r14, zero, 256
	addli r16, zero, 1
	addli r22, zero, 5
	addli r13, zero, 4
	addli r15, zero, 2
	addli r17, zero, 255
	addli r18, zero, 128
	lui r19, 264
	addli r20, zero, 7
	addli r21, zero, 6
	addli r23, zero, 32
	addli r27, zero, 64
	addli r24, zero, 127
	storeli.w zero, -2444(r30)              # 4-byte Folded Spill
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split17.thread88
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:86:20
	addli r8, r8, 2
.LBB0_6:                                #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:0:20
	addli r1, r30, -2456
	.loc	1 101 67 is_stmt 1              # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:101:67
	addli r26, r16, 1
	addli r25, r3, 1
	addli r28, r9, 1
	addli r16, zero, 1
	addli r22, zero, 5
	addli r24, zero, 127
	load.d r[11:12], 0(r1)                  # 8-byte Folded Reload
	beq r2, zero, .LBB0_35
.LBB0_7:                                # %.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:0:67
	addli r14, zero, 256
.LBB0_8:                                # %.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, r30, -2472
	addli.d r[11:12], r[11:12], 1
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	setlt.sl r1, r[11:12], r[3:4]
	loadli.w r3,  -2444(r30)                # 4-byte Folded Reload
	addli r3, r3, 1
	storeli.w r3, -2444(r30)                # 4-byte Folded Spill
	beq r1, zero, .LBB0_36
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_19 Depth 2
	loadli.w r1,  32(r30)
	loadli.w r3,  28(r30)
	.loc	1 54 50 is_stmt 1               # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:54:50
	addli r4, zero, 8
	div.s r1, r11, r1
	div.s r3, r1, r3
	.loc	1 53 22                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:53:22
	div.s r5, r3, r14
	.loc	1 54 41                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:54:41
	slli r1, r5, 3
	.loc	1 54 30 is_stmt 0               # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:54:30
	sub.s r9, r16, r1
	.loc	1 54 50                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:54:50
	min.s r9, r9, r4
	.loc	1 73 26 is_stmt 1               # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:73:26
	addli r4, r30, -2464
	.loc	1 55 40                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:55:40
	mod.s r10, r3, r9
	.loc	1 55 34 is_stmt 0               # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:55:34
	add.s r1, r1, r10
	.loc	1 95 15 is_stmt 1               # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:95:15
	zext_int2long r[6:7], r1
	.loc	1 73 26                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:73:26
	store.d r[6:7], 0(r4)                   # 8-byte Folded Spill
	bneq r2, r13, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r4, zero, 11
	xwait r4, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:0:26
	beq r2, r16, .LBB0_31
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r2, r15, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 1
	addli r4, zero, 96
	lui r6, 10
	addli r7, zero, 3
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:81:20
	mod.s r1, r8, r24
	.loc	1 89 25                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:89:25
	mod.s r5, r25, r4
	xwait r15, 0
	xwait r22, 0
	lock zero, zero
	addli r25, r25, 1
	.loc	1 81 20                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:81:20
	addli r8, r8, 1
	.loc	1 89 25                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:89:25
	ds_cfg r15, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r27, zero, 13
	.loc	1 81 20                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:81:20
	slli r1, r1, 13
	.loc	1 89 25                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:89:25
	slli r5, r5, 13
	.loc	1 81 20                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:81:20
	add.s r1, r1, r6
	.loc	1 89 25                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:89:25
	shuffle_batch r5, r1, r23, 1
	.loc	1 73 26                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:73:26
	andi r1, r3, 1
	addli r3, zero, 0
	.loc	1 89 25                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:89:25
	unlock zero
	xsignal r7, 0
	xsignal r13, 0
	bneq r1, zero, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:73:26
	addli r26, r26, 2
	addli r28, r28, 2
	.loc	1 89 25                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:89:25
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:0:25
	slli r5, r5, 8
	addli r4, r30, -2456
	slli r1, r1, 6
	addli r14, zero, 0
	addli r24, zero, 1
	sub.s r3, r3, r5
	store.d r[11:12], 0(r4)                 # 8-byte Folded Spill
	loadli.w r4,  -2444(r30)                # 4-byte Folded Reload
	storeli.w r1, -2488(r30)                # 4-byte Folded Spill
	div.s r3, r3, r9
	mod.s r5, r4, r22
	zext_int2long r[9:10], r3
	slli r1, r3, 5
	.loc	1 73 26 is_stmt 1               # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:73:26
	load.d r[3:4], 8(r30)
	slli r5, r5, 13
	sll.d r[9:10], r[9:10], r22
	storeli.w r1, -2492(r30)                # 4-byte Folded Spill
	addli r1, r30, -2480
	addli r22, zero, 0
	sll.d r[6:7], r[9:10], r15
	add.ul r[11:12], r[3:4], r[6:7]
	store.d r[6:7], 0(r1)                   # 8-byte Folded Spill
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:89:25
	addli r4, zero, 9
	xwait r21, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r15, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r1, r10, r23, 2
	addli r1, zero, 8
	unlock zero
	xsignal r20, 0
	xsignal r1, 0
	.loc	1 73 26                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:73:26
	andi r1, r24, 1
	beq r1, zero, .LBB0_29
.LBB0_18:                               # %.split.backedge
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:89:25
	addli r22, r22, 1
	lui r14, 32
	addli r24, zero, 0
.LBB0_19:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r9, r28, r22
	add.s r16, r26, r22
	add.s r3, r25, r22
	.loc	1 86 20                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:86:20
	mod.s r1, r9, r18
	.loc	1 89 25                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:89:25
	mod.s r10, r16, r17
	.loc	1 86 20                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:86:20
	slli r4, r1, 12
	.loc	1 89 25                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:89:25
	slli r1, r10, 12
	.loc	1 86 20                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:86:20
	add.s r10, r4, r19
	beq r2, r20, .LBB0_17
# %bb.20:                               # %.split
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 20 is_stmt 0                # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:0:20
	bneq r2, r21, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 86 20                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:86:20
	zext_int2long r[6:7], r14
	xwait r20, 0
	lock zero, r13
	addli r1, zero, 4096
	dma_cfg zero, zero, zero, 0
	add.ul r[6:7], r[11:12], r[6:7]
	dma_cfg zero, r7, zero, 2
	dma_cfg r10, r6, r18, 3
	dma_cfg r18, r1, r23, 4
	dma_run zero
	unlock r13
	xsignal r21, 0
	.loc	1 73 26 is_stmt 1               # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:73:26
	andi r1, r24, 1
	bneq r1, zero, .LBB0_18
	j .LBB0_29
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 26 is_stmt 0                # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:0:26
	andi r14, r24, 1
	.loc	1 89 25 is_stmt 1               # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:89:25
	bneq r2, r13, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 25 is_stmt 0                # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:0:25
	addli r4, zero, 96
	.loc	1 89 25                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:89:25
	addli r6, zero, 8
	xwait r13, 0
	mod.s r4, r3, r4
	xwait r6, 0
	addli r6, zero, 1
	lock zero, r6
	mm_cfg r23, r23, r27, 0
	mm_cfg r15, r6, r6, 2
	slli r10, r4, 13
	beq r22, zero, .LBB0_26
# %bb.24:                               # %.preheader8
                                        #   in Loop: Header=BB0_19 Depth=2
	mm_acc r5, r10, r1, 8
	j .LBB0_27
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 73 26 is_stmt 1               # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:73:26
	bneq r14, zero, .LBB0_18
	j .LBB0_5
.LBB0_26:                               # %.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:89:25
	mm r5, r10, r1, 8
.LBB0_27:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_19 Depth=2
	addli r1, zero, 5
	unlock r6
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	.loc	1 73 26                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:73:26
	bneq r14, zero, .LBB0_18
# %bb.28:                               # %.split17.thread90
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:86:20
	addli r8, r8, 2
	j .LBB0_30
.LBB0_29:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r8, r8, 2
	.loc	1 73 26                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:73:26
	bneq r2, r13, .LBB0_6
.LBB0_30:                               # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, zero, 10
	.loc	1 101 67                        # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:101:67
	addli r26, r16, 1
	addli r25, r3, 1
	addli r28, r9, 1
	addli r14, zero, 256
	addli r16, zero, 1
	addli r22, zero, 5
	addli r24, zero, 127
	.loc	1 73 26                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:73:26
	xsignal r1, 0
	addli r1, r30, -2456
	j .LBB0_34
.LBB0_31:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:0:26
	addli r5, r30, -2464
	addli r1, r30, -2456
	addli r6, zero, 3
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	store.d r[11:12], 0(r1)                 # 8-byte Folded Spill
	addli r1, zero, 14
	sll.d r[9:10], r[3:4], r1
	load.d r[3:4], 0(r30)
	addli r1, zero, 0
	add.ul r[11:12], r[3:4], r[9:10]
	addli r3, zero, 1
	lui r4, 10
.LBB0_32:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:81:20
	mod.s r5, r8, r24
	.loc	1 86 25                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:86:25
	zext_int2long r[9:10], r1
	.loc	1 81 20                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:81:20
	xwait r6, 0
	lock zero, r13
	addli r8, r8, 1
	dma_cfg zero, zero, zero, 0
	sll.d r[9:10], r[9:10], r15
	add.ul r[9:10], r[11:12], r[9:10]
	slli r1, r5, 13
	dma_cfg zero, r10, zero, 2
	.loc	1 73 26                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:73:26
	andi r5, r3, 1
	addli r3, zero, 0
	.loc	1 81 20                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:81:20
	add.s r1, r1, r4
	dma_cfg r1, r9, r18, 3
	addli r1, zero, 32
	dma_cfg r18, r14, r27, 4
	dma_run zero
	unlock r13
	xsignal r15, 0
	.loc	1 73 26                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:73:26
	bneq r5, zero, .LBB0_32
# %bb.33:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:0:26
	addli r1, r30, -2456
	.loc	1 73 26                         # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:73:26
	addli r25, r25, 2
	addli r26, r26, 2
	addli r28, r28, 2
.LBB0_34:                               # %.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26                          # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:0:26
	load.d r[11:12], 0(r1)                  # 8-byte Folded Reload
	j .LBB0_8
.LBB0_35:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67 is_stmt 1              # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:101:67
	loadli.w r1,  -2492(r30)                # 4-byte Folded Reload
	zext_int2long r[11:12], zero
	zext_int2long r[3:4], r1
	addli r1, zero, 992
	zext_int2long r[6:7], r1
	loadli.w r1,  -2488(r30)                # 4-byte Folded Reload
	min.ul r[6:7], r[3:4], r[6:7]
	sext_int2long r[9:10], r1
	addli r1, r30, -2488
	addli.d r[6:7], r[6:7], 32
	min.sl r[11:12], r[9:10], r[11:12]
	max.ul r[6:7], r[6:7], r[3:4]
	sub.sl r[3:4], r[6:7], r[3:4]
	addli.d r[6:7], r[11:12], 64
	zext_int2long r[11:12], r23
	max.sl r[6:7], r[6:7], r[9:10]
	min.ul r[3:4], r[3:4], r[11:12]
	zext_int2long r[11:12], r27
	sub.sl r[6:7], r[6:7], r[9:10]
	addli r9, r30, -2464
	store.d r[3:4], 0(r1)                   # 8-byte Folded Spill
	addli r1, zero, 18
	load.d r[3:4], 0(r9)                    # 8-byte Folded Reload
	min.sl r[6:7], r[6:7], r[11:12]
	sll.d r[9:10], r[3:4], r1
	addli r1, r30, -2456
	load.d r[3:4], 16(r30)
	load.d r[11:12], 0(r1)                  # 8-byte Folded Reload
	addli r1, r30, -2480
	add.ul r[9:10], r[3:4], r[9:10]
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	addli r1, zero, 10
	xwait r1, 0
	lock zero, r22
	addli r1, r30, -2488
	dma_cfg zero, zero, zero, 0
	add.ul r[9:10], r[9:10], r[3:4]
	dma_cfg zero, r16, zero, 1
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	dma_cfg r10, zero, zero, 2
	slli r1, r3, 2
	dma_cfg r9, r5, r1, 3
	addli r1, zero, 4096
	dma_cfg r1, r18, r6, 4
	addli r1, zero, 11
	dma_run zero
	unlock r22
	xsignal r1, 0
	j .LBB0_7
.LBB0_36:                               # %._crit_edge
	.loc	1 22 0                          # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_38
# %bb.37:
	.loc	1 0 0 is_stmt 0                 # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:22:0
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
	.loc	1 22 0 epilogue_begin           # csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py:22:0
	addli sp, sp, 2496
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
	.long	2560                            # 0xa00
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
.asciz	"csnq6f6c446df3ozipcmjkffzomlbwuwaeurhkp3or7arf4iejt4.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/sn" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
