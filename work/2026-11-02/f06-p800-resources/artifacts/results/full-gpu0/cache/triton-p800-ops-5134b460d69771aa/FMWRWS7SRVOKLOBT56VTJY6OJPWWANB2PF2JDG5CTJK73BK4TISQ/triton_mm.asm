	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/qs" "cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py"
	.loc	1 22 0                          # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2128
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:73:26
	core_id r2
	addli r30, sp, 2064
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:0:26
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
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -300(r30)
	storeli.w zero, -1324(r30)
	storeli.w zero, -1620(r30)
	storeli.w zero, -2008(r30)
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
	loadli.w r28,  -300(r30)
	loadli.w r26,  -1324(r30)
	loadli.w r8,  -1620(r30)
	loadli.w r27,  -2008(r30)
	sext_int2long r[3:4], r3
	sext_int2long r[6:7], r1
	addli r9, zero, 128
	addli r10, zero, 1
	addli r12, zero, 6
	addli r13, zero, 3
	addli r14, zero, 4
	addli r21, zero, 96
	lui r19, 316
	addli r20, zero, 7
	addli r22, zero, 64
	addli r23, zero, 32
	addli r15, zero, 2
	addli r16, zero, 73
	lui r24, 24
	addli r25, zero, 0
	store.d r[3:4], -2040(r30)              # 8-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split17.thread92
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:86:20
	addli r8, r8, 4
.LBB0_6:                                #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:0:20
	loadli.w r25,  -2020(r30)               # 4-byte Folded Reload
	.loc	1 101 67 is_stmt 1              # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:101:67
	addli r27, r11, 1
	addli r26, r21, 1
	addli r28, r16, 1
	beq r2, zero, .LBB0_34
.LBB0_7:                                # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:0:67
	load.d r[6:7], -2016(r30)               # 8-byte Folded Reload
	addli r21, zero, 96
	addli r15, zero, 2
	addli r16, zero, 73
	lui r24, 24
.LBB0_8:                                # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[3:4], -2040(r30)               # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	addli r25, r25, 1
	setlt.sl r1, r[6:7], r[3:4]
	beq r1, zero, .LBB0_38
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	loadli.w r1,  32(r30)
	loadli.w r3,  28(r30)
	.loc	1 54 50 is_stmt 1               # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:54:50
	addli r11, zero, 8
	div.s r1, r6, r1
	div.s r4, r1, r3
	.loc	1 53 22                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:53:22
	div.s r5, r4, r9
	.loc	1 54 41                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:54:41
	slli r1, r5, 3
	.loc	1 54 30 is_stmt 0               # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:54:30
	sub.s r3, r10, r1
	.loc	1 54 50                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:54:50
	min.s r11, r3, r11
	.loc	1 55 40 is_stmt 1               # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:55:40
	mod.s r3, r4, r11
	.loc	1 55 34 is_stmt 0               # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:55:34
	add.s r1, r1, r3
	.loc	1 95 15 is_stmt 1               # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:95:15
	zext_int2long r[17:18], r1
	.loc	1 73 26                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:73:26
	store.d r[17:18], -2032(r30)            # 8-byte Folded Spill
	bneq r2, r14, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 11
	addli r17, zero, 255
	addli r18, zero, 74
	xwait r3, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:0:26
	addli r17, zero, 255
	addli r18, zero, 74
	beq r2, r10, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r2, r15, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, zero, 0
	addli r5, zero, 5
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:89:25
	add.s r3, r8, r1
	add.s r4, r27, r1
	xwait r15, 0
	xwait r5, 0
	lock zero, zero
	.loc	1 73 26                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:89:25
	ds_cfg r13, zero, 0
	.loc	1 81 20                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:81:20
	mod.s r3, r3, r16
	.loc	1 89 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:89:25
	mod.s r4, r4, r21
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r9, zero, 13
	.loc	1 81 20                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:81:20
	slli r3, r3, 14
	.loc	1 89 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:89:25
	slli r4, r4, 13
	.loc	1 81 20                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:81:20
	add.s r3, r3, r24
	.loc	1 89 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:89:25
	shuffle_batch r4, r3, r23, 1
	unlock zero
	xsignal r13, 0
	xsignal r14, 0
	bneq r1, r14, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:73:26
	addli r26, r26, 4
	addli r28, r28, 4
	.loc	1 89 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:89:25
	add.s r27, r27, r1
	add.s r8, r8, r1
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:0:25
	slli r5, r5, 7
	slli r1, r1, 7
	store.d r[6:7], -2016(r30)              # 8-byte Folded Spill
	addli r3, zero, 0
	storeli.w r25, -2020(r30)               # 4-byte Folded Spill
	sub.s r4, r4, r5
	mod.s r5, r25, r13
	storeli.w r1, -2056(r30)                # 4-byte Folded Spill
	div.s r4, r4, r11
	slli r24, r5, 15
	zext_int2long r[15:16], r4
	slli r1, r4, 6
	.loc	1 73 26 is_stmt 1               # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:73:26
	load.d r[4:5], 8(r30)
	sll.d r[15:16], r[15:16], r12
	storeli.w r1, -2060(r30)                # 4-byte Folded Spill
	addli r1, zero, 0
	sll.d r[6:7], r[15:16], r10
	add.ul r[4:5], r[4:5], r[6:7]
	store.d r[6:7], -2048(r30)              # 8-byte Folded Spill
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:89:25
	addli r6, zero, 9
	xwait r12, 0
	xwait r6, 0
	lock zero, zero
	addli r6, zero, 8
	ds_cfg r13, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r25, r15, r23, 2
	unlock zero
	xsignal r20, 0
	xsignal r6, 0
	.loc	1 73 26                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:73:26
	addli r3, r3, 1
	bneq r3, r14, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:89:25
	add.s r16, r28, r1
	add.s r21, r26, r1
	add.s r11, r27, r1
	.loc	1 86 20                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:86:20
	mod.s r6, r16, r18
	.loc	1 89 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:89:25
	mod.s r7, r21, r17
	.loc	1 86 20                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:86:20
	slli r6, r6, 12
	.loc	1 89 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:89:25
	slli r25, r7, 12
	.loc	1 86 20                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:86:20
	add.s r15, r6, r19
	beq r2, r20, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:0:20
	bneq r2, r12, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:86:25
	zext_int2long r[6:7], r3
	.loc	1 86 20                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:86:20
	addli r25, zero, 16
	xwait r20, 0
	lock zero, r14
	dma_cfg r10, r10, zero, 0
	sll.d r[6:7], r[6:7], r25
	add.ul r[6:7], r[4:5], r[6:7]
	dma_cfg zero, r7, zero, 2
	dma_cfg r15, r6, r9, 3
	addli r6, zero, 2048
	dma_cfg r9, r6, r23, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:73:26
	addli r3, r3, 1
	bneq r3, r14, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:89:25
	bneq r2, r14, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:0:0
	addli r6, zero, 96
	.loc	1 89 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:89:25
	addli r7, zero, 8
	xwait r14, 0
	.loc	1 0 0                           # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:0:0
	mod.s r6, r11, r6
	.loc	1 89 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:89:25
	xwait r7, 0
	lock zero, r10
	mm_cfg r22, r23, r9, 0
	.loc	1 0 0                           # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:0:0
	slli r15, r6, 13
	.loc	1 89 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:89:25
	addli r6, zero, 2
	mm_cfg r10, r6, r10, 2
	beq r1, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r24, r15, r25, 5
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:73:26
	addli r3, r3, 1
	bneq r3, r14, .LBB0_27
	j .LBB0_5
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:89:25
	mm r24, r15, r25, 5
.LBB0_26:                               # %.thread6.thread93
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r6, zero, 5
	unlock r10
	.loc	1 73 26                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:89:25
	xsignal r6, 0
	addli r6, zero, 9
	xsignal r6, 0
	.loc	1 73 26                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:73:26
	beq r3, r14, .LBB0_35
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:89:25
	addli r1, r1, 1
	j .LBB0_18
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:86:20
	addli r8, r8, 4
	.loc	1 73 26                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:73:26
	bneq r2, r14, .LBB0_6
	j .LBB0_36
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:0:26
	load.d r[3:4], -2032(r30)               # 8-byte Folded Reload
	addli r1, zero, 14
	addli r2, zero, 73
	addli r11, zero, 5
	storeli.w r25, -2020(r30)               # 4-byte Folded Spill
	store.d r[6:7], -2016(r30)              # 8-byte Folded Spill
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 0
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	add.s r5, r8, r1
	.loc	1 81 25 is_stmt 1               # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:81:25
	srl.d r[6:7], r[24:25], r20
	.loc	1 81 20 is_stmt 0               # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:81:20
	load.d r[24:25], 0(r30)
	sll.d r[15:16], r[15:16], r10
	xwait r13, 0
	lock zero, r14
	.loc	1 73 26 is_stmt 1               # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:73:26
	addli r1, r1, 1
	.loc	1 81 20                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:81:20
	dma_cfg r10, r10, zero, 0
	.loc	1 81 0 is_stmt 0                # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:81:0
	mod.s r5, r5, r2
	.loc	1 81 20                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:81:20
	sub.s r6, r9, r6
	add.ul r[15:16], r[24:25], r[15:16]
	lui r24, 24
	dma_cfg zero, r16, zero, 2
	.loc	1 81 0                          # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:81:0
	slli r5, r5, 14
	add.s r5, r5, r24
	.loc	1 81 20                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:81:20
	dma_cfg r5, r15, r22, 3
	addli r5, zero, 256
	addli r15, zero, 2
	dma_cfg r9, r5, r6, 4
	dma_run zero
	unlock r14
	xsignal r15, 0
	.loc	1 73 26 is_stmt 1               # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:73:26
	beq r1, r14, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:86:25
	zext_int2long r[15:16], r1
	addli r5, zero, 16383
	sll.d r[24:25], r[15:16], r11
	zext_int2long r[5:6], r5
	.loc	1 81 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:81:25
	add.ul r[15:16], r[24:25], r[3:4]
	setlt.ul r5, r[5:6], r[15:16]
	bneq r5, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:0:25
	addli.d r[24:25], r[15:16], 0
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[6:7], -2016(r30)               # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:73:26
	addli r27, r27, 4
	addli r26, r26, 4
	addli r28, r28, 4
	.loc	1 89 25                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:89:25
	add.s r8, r8, r1
	addli r16, zero, 73
	.loc	1 73 26                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:73:26
	core_id r2
	j .LBB0_37
.LBB0_34:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:101:67
	loadli.w r1,  -2060(r30)                # 4-byte Folded Reload
	zext_int2long r[17:18], zero
	addli r7, zero, 5
	zext_int2long r[3:4], r1
	addli r1, zero, 960
	zext_int2long r[5:6], r1
	loadli.w r1,  -2056(r30)                # 4-byte Folded Reload
	min.ul r[5:6], r[3:4], r[5:6]
	sext_int2long r[15:16], r1
	addli r1, r30, -2056
	addli.d r[5:6], r[5:6], 64
	min.sl r[17:18], r[15:16], r[17:18]
	max.ul r[5:6], r[5:6], r[3:4]
	store.d r[17:18], 0(r1)                 # 8-byte Folded Spill
	sub.sl r[17:18], r[5:6], r[3:4]
	load.d r[3:4], 0(r1)                    # 8-byte Folded Reload
	addli.d r[5:6], r[3:4], 128
	zext_int2long r[3:4], r22
	max.sl r[5:6], r[5:6], r[15:16]
	min.ul r[17:18], r[17:18], r[3:4]
	sub.sl r[3:4], r[5:6], r[15:16]
	load.d r[5:6], 16(r30)
	store.d r[3:4], 0(r1)                   # 8-byte Folded Spill
	load.d r[3:4], -2032(r30)               # 8-byte Folded Reload
	addli r1, zero, 18
	sll.d r[15:16], r[3:4], r1
	addli r1, r30, -2056
	zext_int2long r[3:4], r9
	add.ul r[15:16], r[5:6], r[15:16]
	load.d r[5:6], 0(r1)                    # 8-byte Folded Reload
	addli r1, zero, 10
	min.sl r[3:4], r[5:6], r[3:4]
	load.d r[5:6], -2048(r30)               # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r7
	slli r1, r17, 2
	dma_cfg r10, zero, zero, 0
	dma_cfg zero, r10, zero, 1
	add.ul r[5:6], r[15:16], r[5:6]
	dma_cfg r6, zero, zero, 2
	dma_cfg r5, r24, r1, 3
	addli r1, zero, 256
	addli r5, zero, 2048
	dma_cfg r5, r1, r3, 4
	addli r1, zero, 11
	dma_run zero
	unlock r7
	xsignal r1, 0
	j .LBB0_7
.LBB0_35:                               # %.split17.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:86:20
	addli r8, r8, 4
.LBB0_36:                               # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:73:26
	addli r1, zero, 10
	.loc	1 101 67                        # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:101:67
	addli r26, r21, 1
	addli r28, r16, 1
	addli r27, r11, 1
	addli r21, zero, 96
	addli r15, zero, 2
	addli r16, zero, 73
	lui r24, 24
	.loc	1 73 26                         # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:73:26
	xsignal r1, 0
	load.d r[6:7], -2016(r30)               # 8-byte Folded Reload
.LBB0_37:                               # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:0:26
	loadli.w r25,  -2020(r30)               # 4-byte Folded Reload
	j .LBB0_8
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py:22:0
	addli sp, sp, 2064
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
	.long	2128                            # 0x850
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
.asciz	"cqsbm62kll2344uduheeo6dbtrhcdccxyxkkgzqwfct4dmdyfleu.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/qs" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
