	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/hz" "chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py"
	.loc	1 22 0                          # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2568
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:73:26
	core_id r2
	addli r30, sp, 2504
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:0:26
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
	ble.s r3, r1, .LBB0_39
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	addli r5, r30, -2480
	loadli.w r28,  -516(r30)
	loadli.w r26,  -1540(r30)
	loadli.w r18,  -2052(r30)
	loadli.w r27,  -2440(r30)
	sext_int2long r[11:12], r1
	addli r10, zero, 2
	addli r9, zero, 5
	addli r13, zero, 4
	addli r21, zero, 96
	addli r16, zero, 255
	addli r17, zero, 128
	addli r19, zero, 7
	addli r20, zero, 6
	addli r22, zero, 32
	addli r25, zero, 64
	addli r1, r30, -2504
	addli r14, zero, 127
	addli r15, zero, 3
	addli r23, zero, 0
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	addli r4, zero, 4095
	lui r3, 1048572
	store.d r[3:4], 0(r1)                   # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 89 25 is_stmt 1               # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:89:25
	add.s r18, r18, r1
	addli r1, r30, -2456
	.loc	1 73 26                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:73:26
	addli r27, r27, 4
	addli r26, r26, 4
	addli r28, r28, 4
	addli r14, zero, 127
	core_id r2
	addli r15, zero, 3
	addli r16, zero, 255
	load.d r[11:12], 0(r1)                  # 8-byte Folded Reload
.LBB0_6:                                # %.thread96
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:0:26
	loadli.w r23,  -2460(r30)               # 4-byte Folded Reload
.LBB0_7:                                # %.thread96
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -2480
	addli.d r[11:12], r[11:12], 1
	addli r23, r23, 1
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	setlt.sl r1, r[11:12], r[3:4]
	beq r1, zero, .LBB0_39
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	loadli.w r1,  32(r30)
	loadli.w r3,  28(r30)
	.loc	1 54 50 is_stmt 1               # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:54:50
	addli r6, zero, 8
	div.s r1, r11, r1
	div.s r3, r1, r3
	.loc	1 53 22                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:53:22
	addli r1, zero, 256
	div.s r4, r3, r1
	.loc	1 54 41                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:54:41
	slli r1, r4, 3
	.loc	1 54 30 is_stmt 0               # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:54:30
	sub.s r5, r10, r1
	.loc	1 54 50                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:54:50
	min.s r6, r5, r6
	.loc	1 55 40 is_stmt 1               # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:55:40
	mod.s r5, r3, r6
	.loc	1 55 34 is_stmt 0               # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:55:34
	add.s r1, r1, r5
	addli r5, r30, -2472
	.loc	1 95 15 is_stmt 1               # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:95:15
	zext_int2long r[7:8], r1
	store.d r[7:8], 0(r5)                   # 8-byte Folded Spill
	zext_int2long r[7:8], r25
	.loc	1 73 26                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:73:26
	addli r5, r30, -2448
	store.d r[7:8], 0(r5)                   # 8-byte Folded Spill
	bneq r2, r13, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r5, zero, 11
	lui r7, 264
	xwait r5, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:0:26
	addli r5, zero, 1
	lui r7, 264
	beq r2, r5, .LBB0_30
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r10, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 0
	lui r5, 10
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:89:25
	add.s r3, r18, r1
	add.s r4, r27, r1
	xwait r10, 0
	xwait r9, 0
	lock zero, zero
	.loc	1 73 26                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:89:25
	ds_cfg r10, zero, 0
	.loc	1 81 20                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:81:20
	mod.s r3, r3, r14
	.loc	1 89 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:89:25
	mod.s r4, r4, r21
	ds_cfg r22, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r25, zero, 13
	.loc	1 81 20                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:81:20
	slli r3, r3, 13
	.loc	1 89 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:89:25
	slli r4, r4, 13
	.loc	1 81 20                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:81:20
	add.s r3, r3, r5
	.loc	1 89 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:89:25
	shuffle_batch r4, r3, r22, 1
	unlock zero
	xsignal r15, 0
	xsignal r13, 0
	bneq r1, r13, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:73:26
	addli r26, r26, 4
	addli r28, r28, 4
	.loc	1 89 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:89:25
	add.s r27, r27, r1
	add.s r18, r18, r1
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:0:25
	slli r4, r4, 8
	addli r5, r30, -2456
	slli r1, r1, 6
	storeli.w r23, -2460(r30)               # 4-byte Folded Spill
	sub.s r3, r3, r4
	mod.s r4, r23, r9
	store.d r[11:12], 0(r5)                 # 8-byte Folded Spill
	storeli.w r1, -2492(r30)                # 4-byte Folded Spill
	addli r5, zero, 0
	div.s r3, r3, r6
	addli r6, r30, -2488
	zext_int2long r[11:12], r3
	slli r1, r3, 5
	sll.d r[11:12], r[11:12], r9
	.loc	1 73 26 is_stmt 1               # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:73:26
	storeli.w r1, -2496(r30)                # 4-byte Folded Spill
	slli r1, r4, 13
	load.d r[3:4], 8(r30)
	sll.d r[8:9], r[11:12], r10
	addli r11, zero, 0
	addli r12, zero, 8
	add.ul r[3:4], r[3:4], r[8:9]
	store.d r[8:9], 0(r6)                   # 8-byte Folded Spill
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:89:25
	addli r6, zero, 9
	xwait r20, 0
	xwait r6, 0
	lock zero, zero
	ds_cfg r10, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r24, r9, r22, 2
	unlock zero
	xsignal r19, 0
	xsignal r12, 0
	.loc	1 73 26                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:73:26
	addli r5, r5, 1
	beq r5, r13, .LBB0_28
.LBB0_17:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:89:25
	addli r11, r11, 1
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r25, r28, r11
	add.s r21, r26, r11
	add.s r23, r27, r11
	.loc	1 86 20                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:86:20
	mod.s r6, r25, r17
	.loc	1 89 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:89:25
	mod.s r9, r21, r16
	.loc	1 86 20                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:86:20
	slli r6, r6, 12
	.loc	1 89 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:89:25
	slli r24, r9, 12
	.loc	1 86 20                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:86:20
	add.s r9, r6, r7
	beq r2, r19, .LBB0_16
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:0:20
	bneq r2, r20, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:86:25
	zext_int2long r[14:15], r5
	.loc	1 86 20                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:86:20
	addli r6, zero, 17
	xwait r19, 0
	lock zero, r13
	dma_cfg zero, zero, zero, 0
	sll.d r[14:15], r[14:15], r6
	addli r6, zero, 4096
	add.ul r[14:15], r[3:4], r[14:15]
	dma_cfg zero, r15, zero, 2
	dma_cfg r9, r14, r17, 3
	dma_cfg r17, r6, r22, 4
	dma_run zero
	unlock r13
	xsignal r20, 0
	.loc	1 73 26 is_stmt 1               # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:73:26
	addli r5, r5, 1
	bneq r5, r13, .LBB0_17
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:89:25
	bneq r2, r13, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:0:0
	addli r6, zero, 96
	addli r14, zero, 1
	.loc	1 89 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:89:25
	addli r9, zero, 64
	xwait r13, 0
	xwait r12, 0
	.loc	1 0 0                           # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:0:0
	mod.s r6, r23, r6
	.loc	1 89 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:89:25
	lock zero, r14
	mm_cfg r22, r22, r9, 0
	mm_cfg r10, r14, r14, 2
	.loc	1 0 0                           # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:0:0
	slli r6, r6, 13
	.loc	1 89 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:89:25
	beq r11, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r1, r6, r24, 8
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:73:26
	addli r5, r5, 1
	bneq r5, r13, .LBB0_17
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:89:25
	mm r1, r6, r24, 8
.LBB0_26:                               # %.thread6.thread93
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r6, zero, 1
	.loc	1 73 26                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:73:26
	addli r5, r5, 1
	.loc	1 89 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:89:25
	unlock r6
	addli r6, zero, 5
	xsignal r6, 0
	addli r6, zero, 9
	xsignal r6, 0
	.loc	1 73 26                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:73:26
	bneq r5, r13, .LBB0_17
# %bb.27:                               # %.split17.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:86:20
	addli r18, r18, 4
	j .LBB0_29
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r18, r18, 4
	.loc	1 73 26                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:73:26
	bneq r2, r13, .LBB0_35
.LBB0_29:                               # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	.loc	1 101 67                        # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:101:67
	addli r27, r23, 1
	addli r26, r21, 1
	addli r28, r25, 1
	.loc	1 73 26                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:73:26
	xsignal r1, 0
	j .LBB0_36
.LBB0_30:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:0:26
	addli r5, r30, -2472
	addli r1, r30, -2456
	addli r16, zero, 3
	lui r2, 10
	addli r7, zero, 127
	storeli.w r23, -2460(r30)               # 4-byte Folded Spill
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	store.d r[11:12], 0(r1)                 # 8-byte Folded Spill
	addli r1, zero, 13
	sll.d r[3:4], r[3:4], r1
	addli r1, r30, -2504
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	addli r1, zero, 0
	and.d r[11:12], r[3:4], r[5:6]
	j .LBB0_32
.LBB0_31:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 81 25 is_stmt 1               # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:81:25
	sub.sl r[23:24], r[5:6], r[23:24]
	zext_int2long r[14:15], r17
	.loc	1 0 0 is_stmt 0                 # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:0:0
	add.s r9, r18, r1
	.loc	1 81 20                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:81:20
	sll.d r[5:6], r[5:6], r10
	xwait r16, 0
	lock zero, r13
	.loc	1 81 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:81:25
	addli r8, r30, -2448
	.loc	1 73 26 is_stmt 1               # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:73:26
	addli r1, r1, 1
	.loc	1 81 20                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:81:20
	dma_cfg zero, zero, zero, 0
	.loc	1 81 25 is_stmt 0               # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:81:25
	div.sl r[14:15], r[23:24], r[14:15]
	.loc	1 81 20                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:81:20
	load.d r[23:24], 0(r30)
	.loc	1 81 0                          # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:81:0
	mod.s r9, r9, r7
	.loc	1 81 20                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:81:20
	add.ul r[5:6], r[23:24], r[5:6]
	dma_cfg zero, r6, zero, 2
	.loc	1 81 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:81:25
	load.d r[23:24], 0(r8)                  # 8-byte Folded Reload
	.loc	1 81 0                          # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:81:0
	slli r9, r9, 13
	add.s r9, r9, r2
	.loc	1 81 20                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:81:20
	dma_cfg r9, r5, r17, 3
	addli r9, zero, 5
	addli r5, zero, 512
	.loc	1 81 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:81:25
	min.sl r[23:24], r[14:15], r[23:24]
	sub.sl r[14:15], r[23:24], r[14:15]
	.loc	1 81 20                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:81:20
	addli r14, r14, 64
	dma_cfg r17, r5, r14, 4
	dma_run zero
	unlock r13
	xsignal r10, 0
	.loc	1 73 26 is_stmt 1               # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:73:26
	beq r1, r13, .LBB0_5
.LBB0_32:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:86:25
	zext_int2long r[5:6], r1
	sll.d r[5:6], r[5:6], r9
	addli r9, zero, 16383
	.loc	1 81 25                         # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:81:25
	add.ul r[5:6], r[5:6], r[3:4]
	zext_int2long r[23:24], r9
	setlt.ul r9, r[23:24], r[5:6]
	addli.d r[23:24], r[11:12], 0
	bneq r9, zero, .LBB0_31
# %bb.33:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 0 25 is_stmt 0                # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:0:25
	zext_int2long r[23:24], zero
	j .LBB0_31
.LBB0_34:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:86:20
	addli r18, r18, 4
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:101:67
	addli r27, r23, 1
	addli r26, r21, 1
	addli r28, r25, 1
	beq r2, zero, .LBB0_38
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:0:67
	addli r1, r30, -2456
	addli r21, zero, 96
	addli r25, zero, 64
	addli r9, zero, 5
.LBB0_37:                               # %.thread96
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[11:12], 0(r1)                  # 8-byte Folded Reload
	addli r14, zero, 127
	addli r15, zero, 3
	j .LBB0_6
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:101:67
	loadli.w r3,  -2496(r30)                # 4-byte Folded Reload
	addli r5, zero, 992
	loadli.w r7,  -2492(r30)                # 4-byte Folded Reload
	addli r9, r30, -2448
	addli r21, r30, -2472
	addli r25, zero, 64
	zext_int2long r[5:6], r5
	zext_int2long r[3:4], r3
	sext_int2long r[11:12], r7
	load.d r[7:8], 0(r9)                    # 8-byte Folded Reload
	addli r9, zero, 18
	min.ul r[5:6], r[3:4], r[5:6]
	min.sl r[14:15], r[11:12], r[7:8]
	addli.d r[5:6], r[5:6], 32
	addli.d r[14:15], r[14:15], 64
	max.ul r[5:6], r[5:6], r[3:4]
	sub.sl r[3:4], r[5:6], r[3:4]
	zext_int2long r[5:6], r22
	min.ul r[3:4], r[3:4], r[5:6]
	max.sl r[5:6], r[14:15], r[11:12]
	load.d r[14:15], 0(r21)                 # 8-byte Folded Reload
	addli r21, zero, 96
	sub.sl r[5:6], r[5:6], r[11:12]
	load.d r[11:12], 16(r30)
	slli r3, r3, 2
	sll.d r[14:15], r[14:15], r9
	addli r9, r30, -2488
	min.sl r[5:6], r[5:6], r[7:8]
	load.d r[7:8], 0(r9)                    # 8-byte Folded Reload
	addli r9, zero, 10
	add.ul r[11:12], r[11:12], r[14:15]
	xwait r9, 0
	addli r9, zero, 5
	add.ul r[11:12], r[11:12], r[7:8]
	addli r7, zero, 1
	lock zero, r9
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r7, zero, 1
	dma_cfg r12, zero, zero, 2
	dma_cfg r11, r1, r3, 3
	addli r1, zero, 4096
	dma_cfg r1, r17, r5, 4
	addli r1, zero, 11
	dma_run zero
	unlock r9
	xsignal r1, 0
	addli r1, r30, -2456
	j .LBB0_37
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:22:0
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
	.loc	1 22 0 epilogue_begin           # chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py:22:0
	addli sp, sp, 2504
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
	.long	2568                            # 0xa08
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
.asciz	"chzsyifshgasynliiq6nyvyc2cphvmfypirj7ykd2zgy65myixyp.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/hz" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
