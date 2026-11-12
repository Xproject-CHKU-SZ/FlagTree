	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/r3" "cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py"
	.loc	1 22 0                          # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2168
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:73:26
	core_id r18
	addli r30, sp, 2104
	xsignal_mode_cfg r1
	beq r18, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:0:26
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
	addli r4, zero, 9
	unlock r3
	addli r3, zero, 11
	csr_set csr3, r1
	addli r1, zero, 5
	sync_group
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 7
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -348(r30)
	storeli.w zero, -672(r30)
	storeli.w zero, -1024(r30)
	storeli.w zero, -2048(r30)
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
	sext_int2long r[27:28], r1
	lui r1, 47
	sext_int2long r[3:4], r3
	addli r2, r30, -2080
	loadli.w r8,  -348(r30)
	loadli.w r9,  -672(r30)
	loadli.w r10,  -1024(r30)
	loadli.w r5,  -2048(r30)
	addli r7, zero, 8
	addli r6, zero, 1
	addli r13, zero, 7
	addli r14, zero, 2
	addli r15, zero, 4
	addli r21, zero, 6
	addli r23, zero, 128
	addli r24, zero, 32
	addli r26, zero, 16
	addli r17, zero, 5
	storeli.w zero, -2052(r30)              # 4-byte Folded Spill
	store.d r[3:4], 0(r2)                   # 8-byte Folded Spill
	ori r20, r1, 2048
	addli r2, zero, 80
	addli r1, zero, 64
	j .LBB0_10
.LBB0_5:                                # %.split17.thread90
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 86 20 is_stmt 1               # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:86:20
	addli r10, r10, 2
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 73 26                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:73:26
	addli r3, zero, 10
	xsignal r3, 0
	addli r3, r30, -2064
.LBB0_7:                                #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 26 is_stmt 0                # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:0:26
	load.d r[27:28], 0(r3)                  # 8-byte Folded Reload
.LBB0_8:                                #   in Loop: Header=BB0_10 Depth=1
	addli r6, zero, 1
	addli r17, zero, 5
.LBB0_9:                                # %.thread91
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r5, r30, -2080
	addli.d r[27:28], r[27:28], 1
	load.d r[3:4], 0(r5)                    # 8-byte Folded Reload
	addli r5, r12, 0
	setlt.sl r3, r[27:28], r[3:4]
	loadli.w r4,  -2052(r30)                # 4-byte Folded Reload
	addli r4, r4, 1
	storeli.w r4, -2052(r30)                # 4-byte Folded Spill
	beq r3, zero, .LBB0_36
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_20 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	loadli.w r3,  32(r30)
	loadli.w r4,  28(r30)
	.loc	1 73 26                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:73:26
	addli r11, r30, -2072
	div.s r3, r27, r3
	div.s r4, r3, r4
	.loc	1 53 22 is_stmt 1               # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:53:22
	div.s r3, r4, r7
	slli r12, r3, 3
	.loc	1 54 30                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:54:30
	sub.s r3, r6, r12
	.loc	1 54 50 is_stmt 0               # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:54:50
	min.s r16, r3, r7
	.loc	1 55 40 is_stmt 1               # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:55:40
	mod.s r3, r4, r16
	.loc	1 55 34 is_stmt 0               # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:55:34
	add.s r3, r12, r3
	.loc	1 95 15 is_stmt 1               # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:95:15
	zext_int2long r[18:19], r3
	.loc	1 73 26                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:73:26
	store.d r[18:19], 0(r11)                # 8-byte Folded Spill
	core_id r18
	bneq r18, r15, .LBB0_12
# %bb.11:                               # %.thread
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r6, zero, 11
	addli r19, zero, 86
	xwait r6, 0
	j .LBB0_17
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 26 is_stmt 0                # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:0:26
	addli r19, zero, 86
	beq r18, r6, .LBB0_33
# %bb.13:                               #   in Loop: Header=BB0_10 Depth=1
	bneq r18, r14, .LBB0_17
# %bb.14:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r3, zero, 1
	addli r12, zero, 255
	addli r16, zero, 87
	lui r22, 4
.LBB0_15:                               # %.thread.us21
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:81:20
	mod.s r4, r10, r16
	.loc	1 89 25                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:89:25
	mod.s r11, r5, r12
	xwait r14, 0
	xwait r17, 0
	lock zero, zero
	addli r5, r5, 1
	.loc	1 81 20                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:81:20
	addli r10, r10, 1
	.loc	1 89 25                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:89:25
	ds_cfg r14, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r26, zero, 13
	.loc	1 81 20                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:81:20
	slli r4, r4, 11
	.loc	1 89 25                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:89:25
	slli r11, r11, 11
	.loc	1 81 20                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:81:20
	add.s r4, r4, r22
	.loc	1 89 25                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:89:25
	shuffle_batch r11, r4, r24, 1
	.loc	1 73 26                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:73:26
	andi r4, r3, 1
	addli r3, zero, 0
	addli r11, zero, 3
	.loc	1 89 25                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:89:25
	unlock zero
	xsignal r11, 0
	xsignal r15, 0
	bneq r4, zero, .LBB0_15
# %bb.16:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 73 26                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:73:26
	addli r9, r9, 2
	addli r8, r8, 2
	addli r12, r5, 0
	.loc	1 89 25                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:89:25
	j .LBB0_9
.LBB0_17:                               # %.split.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 25 is_stmt 0                # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:0:25
	sub.s r4, r4, r12
	addli r6, r30, -2064
	slli r3, r3, 4
	addli r11, zero, 0
	div.s r4, r4, r16
	store.d r[27:28], 0(r6)                 # 8-byte Folded Spill
	loadli.w r6,  -2052(r30)                # 4-byte Folded Reload
	storeli.w r3, -2096(r30)                # 4-byte Folded Spill
	mod.s r12, r6, r14
	addli r6, r30, -2088
	zext_int2long r[16:17], r4
	slli r3, r4, 7
	sll.d r[27:28], r[16:17], r13
	.loc	1 73 26 is_stmt 1               # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:73:26
	storeli.w r3, -2104(r30)                # 4-byte Folded Spill
	load.d r[3:4], 8(r30)
	addli r16, zero, 1
	slli r17, r12, 13
	sll.d r[27:28], r[27:28], r14
	store.d r[27:28], 0(r6)                 # 8-byte Folded Spill
	add.ul r[3:4], r[3:4], r[27:28]
	addli r28, zero, 0
	addli r27, zero, 9
	j .LBB0_20
.LBB0_18:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 89 25                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:89:25
	xwait r21, 0
	xwait r27, 0
	lock zero, zero
	ds_cfg r14, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r25, r22, r24, 2
	unlock zero
	xsignal r13, 0
	xsignal r7, 0
	.loc	1 73 26                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:73:26
	andi r5, r16, 1
	beq r5, zero, .LBB0_30
.LBB0_19:                               # %.split.backedge
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 26 is_stmt 0                # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:0:26
	addli r16, zero, 0
	.loc	1 89 25 is_stmt 1               # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:89:25
	addli r28, r28, 1
	lui r11, 4
	addli r5, r12, 0
.LBB0_20:                               # %.split
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	.loc	1 86 20                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:86:20
	mod.s r22, r8, r19
	.loc	1 89 25                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:89:25
	mod.s r25, r9, r2
	addli r12, r5, 1
	addli r9, r9, 1
	.loc	1 86 20                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:86:20
	addli r8, r8, 1
	slli r22, r22, 14
	.loc	1 89 25                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:89:25
	slli r25, r25, 14
	.loc	1 86 20                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:86:20
	add.s r22, r22, r20
	beq r18, r13, .LBB0_18
# %bb.21:                               # %.split
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 20 is_stmt 0                # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:0:20
	bneq r18, r21, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 86 20                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:86:20
	zext_int2long r[5:6], r11
	xwait r13, 0
	lock zero, r15
	addli r11, zero, 512
	dma_cfg zero, zero, zero, 0
	add.ul r[5:6], r[3:4], r[5:6]
	dma_cfg zero, r6, zero, 2
	dma_cfg r22, r5, r11, 3
	dma_cfg r11, r11, r24, 4
	dma_run zero
	unlock r15
	xsignal r21, 0
	.loc	1 73 26 is_stmt 1               # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:73:26
	andi r5, r16, 1
	bneq r5, zero, .LBB0_19
	j .LBB0_30
.LBB0_23:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 26 is_stmt 0                # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:0:26
	andi r16, r16, 1
	.loc	1 89 25 is_stmt 1               # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:89:25
	bneq r18, r15, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 25 is_stmt 0                # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:0:25
	addli r6, zero, 255
	addli r11, zero, 1
	addli r22, zero, 1
	addli r27, zero, 0
	.loc	1 89 25                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:89:25
	xwait r15, 0
	xwait r7, 0
	mod.s r5, r5, r6
	slli r5, r5, 11
	beq r28, zero, .LBB0_26
.LBB0_25:                               # %.preheader8
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r6, r27, 13
	slli r7, r27, 8
	lock zero, r11
	addli r27, zero, 1
	mm_cfg r1, r24, r26, 0
	or r6, r6, r25
	or r7, r7, r17
	mm_cfg r14, r15, r11, 2
	mm_acc r7, r5, r6, 8
	andi r6, r22, 1
	addli r22, zero, 0
	unlock r11
	bneq r6, zero, .LBB0_25
	j .LBB0_27
.LBB0_26:                               # %.preheader
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r6, r27, 13
	slli r7, r27, 8
	lock zero, r11
	addli r27, zero, 1
	mm_cfg r1, r24, r26, 0
	or r6, r6, r25
	or r7, r7, r17
	mm_cfg r14, r15, r11, 2
	mm r7, r5, r6, 8
	andi r6, r22, 1
	addli r22, zero, 0
	unlock r11
	bneq r6, zero, .LBB0_26
.LBB0_27:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_20 Depth=2
	addli r5, zero, 5
	addli r27, zero, 9
	addli r7, zero, 8
	xsignal r5, 0
	xsignal r27, 0
	bneq r16, zero, .LBB0_19
	j .LBB0_5
.LBB0_28:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 73 26 is_stmt 1               # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:73:26
	bneq r16, zero, .LBB0_19
# %bb.29:                               # %.split17.thread88
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 86 20                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:86:20
	addli r10, r10, 2
	j .LBB0_31
.LBB0_30:                               # %.split17
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r10, r10, 2
	.loc	1 73 26                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:73:26
	beq r18, r15, .LBB0_6
.LBB0_31:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 26 is_stmt 0                # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:0:26
	addli r3, r30, -2064
	load.d r[27:28], 0(r3)                  # 8-byte Folded Reload
	bneq r18, zero, .LBB0_8
# %bb.32:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 101 67 is_stmt 1              # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:101:67
	loadli.w r3,  -2096(r30)                # 4-byte Folded Reload
	loadli.w r7,  -2104(r30)                # 4-byte Folded Reload
	zext_int2long r[5:6], zero
	addli r11, r30, -2072
	sext_int2long r[3:4], r3
	zext_int2long r[27:28], r7
	addli r7, r30, -2104
	min.sl r[5:6], r[3:4], r[5:6]
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	zext_int2long r[5:6], r23
	addli r7, r30, -2096
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	addli r7, r30, -2104
	load.d r[5:6], 0(r7)                    # 8-byte Folded Reload
	addli.d r[5:6], r[5:6], 16
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	addli r7, r30, -2096
	load.d r[5:6], 0(r7)                    # 8-byte Folded Reload
	max.ul r[5:6], r[27:28], r[5:6]
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	addli r7, r30, -2104
	load.d r[5:6], 0(r7)                    # 8-byte Folded Reload
	max.sl r[5:6], r[5:6], r[3:4]
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	addli r7, r30, -2096
	load.d r[5:6], 0(r7)                    # 8-byte Folded Reload
	addli r7, r30, -2104
	sub.sl r[27:28], r[5:6], r[27:28]
	addli r5, r30, -2096
	store.d r[27:28], 0(r5)                 # 8-byte Folded Spill
	load.d r[5:6], 0(r7)                    # 8-byte Folded Reload
	load.d r[27:28], 16(r30)
	sub.sl r[3:4], r[5:6], r[3:4]
	addli r5, r30, -2104
	addli r6, r30, -2072
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	load.d r[4:5], 0(r6)                    # 8-byte Folded Reload
	addli r3, zero, 13
	sll.d r[5:6], r[4:5], r3
	zext_int2long r[3:4], r26
	add.ul r[5:6], r[27:28], r[5:6]
	load.d r[27:28], 0(r7)                  # 8-byte Folded Reload
	addli r7, r30, -2072
	min.sl r[3:4], r[27:28], r[3:4]
	store.d r[3:4], 0(r7)                   # 8-byte Folded Spill
	addli r3, r30, -2064
	addli r7, r30, -2088
	load.d r[27:28], 0(r3)                  # 8-byte Folded Reload
	load.d r[3:4], 0(r7)                    # 8-byte Folded Reload
	addli r7, zero, 10
	xwait r7, 0
	addli r7, zero, 5
	add.ul r[5:6], r[5:6], r[3:4]
	lock zero, r7
	addli r7, zero, 1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r7, zero, 1
	addli r7, r30, -2096
	load.d r[3:4], 0(r7)                    # 8-byte Folded Reload
	dma_cfg r6, zero, zero, 2
	slli r7, r3, 2
	dma_cfg r5, r17, r7, 3
	addli r5, zero, 512
	addli r17, zero, 5
	addli r6, zero, 1
	addli r7, zero, 8
	load.d r[3:4], 0(r11)                   # 8-byte Folded Reload
	dma_cfg r5, r5, r3, 4
	addli r3, zero, 11
	dma_run zero
	unlock r17
	xsignal r3, 0
	j .LBB0_9
.LBB0_33:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 67 is_stmt 0                # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:0:67
	addli r4, r30, -2072
	addli r3, r30, -2064
	lui r25, 4
	addli r11, zero, 1
	addli r12, zero, 0
	addli r22, zero, 87
	load.d r[6:7], 0(r4)                    # 8-byte Folded Reload
	store.d r[27:28], 0(r3)                 # 8-byte Folded Spill
	addli r3, zero, 12
	sll.d r[3:4], r[6:7], r3
	load.d r[6:7], 0(r30)
	add.ul r[3:4], r[6:7], r[3:4]
	addli r6, zero, 3
	addli r7, zero, 256
.LBB0_34:                               # %.thread.us
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:81:20
	mod.s r16, r10, r22
	.loc	1 86 25                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:86:25
	zext_int2long r[27:28], r12
	.loc	1 81 20                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:81:20
	xwait r6, 0
	lock zero, r15
	addli r10, r10, 1
	dma_cfg zero, zero, zero, 0
	sll.d r[27:28], r[27:28], r14
	slli r12, r16, 11
	add.ul r[16:17], r[3:4], r[27:28]
	add.s r12, r12, r25
	dma_cfg zero, r17, zero, 2
	dma_cfg r12, r16, r23, 3
	.loc	1 73 26                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:73:26
	andi r16, r11, 1
	addli r12, zero, 32
	addli r11, zero, 0
	.loc	1 81 20                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:81:20
	dma_cfg r23, r7, r26, 4
	dma_run zero
	unlock r15
	xsignal r14, 0
	.loc	1 73 26                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:73:26
	bneq r16, zero, .LBB0_34
# %bb.35:                               # %.split17.us
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 26 is_stmt 0                # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:0:26
	addli r3, r30, -2064
	.loc	1 73 26                         # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:73:26
	addli r12, r5, 2
	addli r9, r9, 2
	addli r8, r8, 2
	addli r7, zero, 8
	j .LBB0_7
.LBB0_36:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:22:0
	xsignal zero, 0
	bneq r18, zero, .LBB0_38
# %bb.37:
	.loc	1 0 0 is_stmt 0                 # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py:22:0
	addli sp, sp, 2104
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
	.long	2168                            # 0x878
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
.asciz	"cr374nuad77k5fddtbc6o6wkszxess4unt6znqnsn6tx5ln25rxo.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/r3" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
