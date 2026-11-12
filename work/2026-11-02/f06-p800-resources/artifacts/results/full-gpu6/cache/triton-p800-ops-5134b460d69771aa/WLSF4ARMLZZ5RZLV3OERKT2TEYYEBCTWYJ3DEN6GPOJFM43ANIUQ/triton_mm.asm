	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/tb" "ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py"
	.loc	1 22 0                          # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1832
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:73:26
	core_id r19
	addli r30, sp, 1768
	xsignal_mode_cfg r1
	beq r19, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -312(r30)
	storeli.w zero, -636(r30)
	storeli.w zero, -944(r30)
	storeli.w zero, -1716(r30)
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
	loadli.w r8,  -312(r30)
	loadli.w r9,  -636(r30)
	loadli.w r10,  -944(r30)
	loadli.w r5,  -1716(r30)
	sext_int2long r[3:4], r3
	sext_int2long r[6:7], r1
	addli r17, zero, 1
	addli r27, zero, 8
	addli r14, zero, 7
	addli r15, zero, 2
	addli r16, zero, 4
	addli r2, zero, 77
	lui r21, 84
	addli r22, zero, 6
	addli r24, zero, 128
	addli r25, zero, 32
	addli r26, zero, 5
	addli r1, zero, 64
	addli r28, zero, 76
	addli r18, zero, 3
	addli r23, zero, 0
	store.d r[3:4], -1736(r30)              # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split17.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:86:20
	addli r10, r10, 2
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:73:26
	addli r3, zero, 10
	addli r17, zero, 1
	addli r26, zero, 5
	addli r28, zero, 76
	addli r18, zero, 3
	xsignal r3, 0
	loadli.w r23,  -1720(r30)               # 4-byte Folded Reload
.LBB0_7:                                # %.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:0:26
	load.d r[3:4], -1736(r30)               # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	addli r23, r23, 1
	addli r5, r12, 0
	setlt.sl r3, r[6:7], r[3:4]
	beq r3, zero, .LBB0_35
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	loadli.w r3,  32(r30)
	loadli.w r4,  28(r30)
	.loc	1 73 26                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:73:26
	core_id r11
	addli.d r[19:20], r[6:7], 0
	div.s r3, r6, r3
	div.s r12, r3, r4
	.loc	1 53 22 is_stmt 1               # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:53:22
	addli r3, zero, 16
	div.s r13, r12, r3
	.loc	1 54 41                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:54:41
	slli r3, r13, 3
	.loc	1 54 30 is_stmt 0               # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:54:30
	sub.s r4, r17, r3
	.loc	1 54 50                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:54:50
	min.s r17, r4, r27
	.loc	1 55 40 is_stmt 1               # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:55:40
	mod.s r4, r12, r17
	.loc	1 55 34 is_stmt 0               # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:55:34
	add.s r3, r3, r4
	.loc	1 95 15 is_stmt 1               # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:95:15
	zext_int2long r[6:7], r3
	.loc	1 73 26                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:73:26
	store.d r[6:7], -1728(r30)              # 8-byte Folded Spill
	bneq r11, r16, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 11
	addli.d r[6:7], r[19:20], 0
	core_id r19
	xwait r4, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:0:26
	addli r4, zero, 1
	beq r11, r4, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	addli.d r[6:7], r[19:20], 0
	.loc	1 73 26                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:73:26
	core_id r19
	bneq r19, r15, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:0:26
	addli r3, zero, 1
	addli r12, zero, 192
	lui r13, 8
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:81:20
	mod.s r4, r10, r28
	.loc	1 89 25                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:89:25
	mod.s r11, r5, r12
	xwait r15, 0
	xwait r26, 0
	lock zero, zero
	addli r5, r5, 1
	.loc	1 81 20                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:81:20
	addli r10, r10, 1
	.loc	1 89 25                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:89:25
	ds_cfg r15, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r25, zero, 13
	.loc	1 81 20                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:81:20
	slli r4, r4, 12
	.loc	1 89 25                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:89:25
	slli r11, r11, 12
	.loc	1 81 20                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:81:20
	add.s r4, r4, r13
	.loc	1 89 25                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:89:25
	shuffle_batch r11, r4, r25, 1
	.loc	1 73 26                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:73:26
	andi r4, r3, 1
	addli r3, zero, 0
	.loc	1 89 25                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:89:25
	unlock zero
	xsignal r18, 0
	xsignal r16, 0
	bneq r4, zero, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:73:26
	addli r9, r9, 2
	addli r8, r8, 2
	addli r12, r5, 0
	addli r17, zero, 1
	.loc	1 89 25                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:89:25
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:0:25
	slli r4, r13, 4
	slli r3, r3, 5
	addli r11, zero, 0
	storeli.w r23, -1720(r30)               # 4-byte Folded Spill
	addli r28, zero, 1
	addli r20, zero, 80
	sub.s r4, r12, r4
	mod.s r12, r23, r15
	storeli.w r3, -1752(r30)                # 4-byte Folded Spill
	addli r23, zero, 0
	div.s r4, r4, r17
	slli r26, r12, 14
	zext_int2long r[17:18], r4
	slli r3, r4, 7
	sll.d r[17:18], r[17:18], r14
	.loc	1 73 26 is_stmt 1               # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:73:26
	storeli.w r3, -1760(r30)                # 4-byte Folded Spill
	load.d r[3:4], 8(r30)
	sll.d r[12:13], r[17:18], r15
	add.ul r[17:18], r[3:4], r[12:13]
	store.d r[12:13], -1744(r30)            # 8-byte Folded Spill
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:89:25
	addli r4, zero, 9
	xwait r22, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r15, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r3, r13, r25, 2
	unlock zero
	xsignal r14, 0
	xsignal r27, 0
	.loc	1 73 26                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:73:26
	andi r3, r28, 1
	bneq r3, zero, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	.loc	1 86 20                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:86:20
	mod.s r3, r8, r2
	.loc	1 89 25                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:89:25
	mod.s r4, r9, r20
	addli r12, r5, 1
	addli r9, r9, 1
	.loc	1 86 20                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:86:20
	addli r8, r8, 1
	slli r13, r3, 14
	.loc	1 89 25                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:89:25
	slli r3, r4, 14
	.loc	1 86 20                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:86:20
	add.s r13, r13, r21
	beq r19, r14, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:0:20
	bneq r19, r22, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 20                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:86:20
	zext_int2long r[3:4], r11
	xwait r14, 0
	lock zero, r16
	addli r5, zero, 512
	dma_cfg zero, zero, zero, 0
	add.ul r[3:4], r[17:18], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r13, r3, r5, 3
	addli r3, zero, 1024
	dma_cfg r5, r3, r25, 4
	dma_run zero
	unlock r16
	xsignal r22, 0
	.loc	1 73 26 is_stmt 1               # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:73:26
	andi r3, r28, 1
	bneq r3, zero, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:0:26
	andi r28, r28, 1
	.loc	1 89 25 is_stmt 1               # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:89:25
	bneq r19, r16, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 25 is_stmt 0                # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:0:25
	addli r4, zero, 192
	addli r11, zero, 1
	addli r13, zero, 1
	.loc	1 89 25                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:89:25
	xwait r16, 0
	xwait r27, 0
	mod.s r4, r5, r4
	slli r5, r4, 12
	addli r4, zero, 0
	beq r23, zero, .LBB0_23
.LBB0_22:                               # %.preheader8
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r27, r4, 13
	slli r4, r4, 8
	lock zero, r11
	mm_cfg r1, r25, r25, 0
	or r27, r27, r3
	or r4, r4, r26
	mm_cfg r15, r16, r11, 2
	mm_acc r4, r5, r27, 8
	andi r27, r13, 1
	addli r4, zero, 1
	addli r13, zero, 0
	unlock r11
	bneq r27, zero, .LBB0_22
	j .LBB0_24
.LBB0_23:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r27, r4, 13
	slli r4, r4, 8
	lock zero, r11
	mm_cfg r1, r25, r25, 0
	or r27, r27, r3
	or r4, r4, r26
	mm_cfg r15, r16, r11, 2
	mm r4, r5, r27, 8
	andi r27, r13, 1
	addli r4, zero, 1
	addli r13, zero, 0
	unlock r11
	bneq r27, zero, .LBB0_23
.LBB0_24:                               # %.thread6.thread89
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r3, zero, 5
	addli r27, zero, 8
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	bneq r28, zero, .LBB0_26
	j .LBB0_5
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:73:26
	beq r28, zero, .LBB0_31
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:0:26
	addli r28, zero, 0
	.loc	1 89 25 is_stmt 1               # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:89:25
	addli r23, r23, 1
	lui r11, 8
	addli r5, r12, 0
	j .LBB0_17
.LBB0_27:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:86:20
	addli r10, r10, 2
	.loc	1 73 26                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:73:26
	beq r19, r16, .LBB0_6
	j .LBB0_32
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:0:26
	load.d r[6:7], -1728(r30)               # 8-byte Folded Reload
	addli r3, zero, 13
	load.d r[11:12], 0(r30)
	storeli.w r23, -1720(r30)               # 4-byte Folded Spill
	addli r17, zero, 0
	lui r13, 8
	addli r23, zero, 3
	store.d r[19:20], -1744(r30)            # 8-byte Folded Spill
	sll.d r[3:4], r[6:7], r3
	addli r6, zero, 256
	add.ul r[11:12], r[11:12], r[3:4]
	addli r3, zero, 1
.LBB0_29:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:81:20
	mod.s r4, r10, r28
	.loc	1 86 25                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:86:25
	zext_int2long r[17:18], r17
	.loc	1 81 20                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:81:20
	xwait r23, 0
	lock zero, r16
	addli r10, r10, 1
	dma_cfg zero, zero, zero, 0
	sll.d r[17:18], r[17:18], r15
	add.ul r[17:18], r[11:12], r[17:18]
	slli r4, r4, 12
	dma_cfg zero, r18, zero, 2
	add.s r4, r4, r13
	dma_cfg r4, r17, r24, 3
	addli r17, zero, 32
	.loc	1 73 26                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:73:26
	andi r4, r3, 1
	addli r3, zero, 0
	.loc	1 81 20                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:81:20
	dma_cfg r24, r6, r17, 4
	dma_run zero
	unlock r16
	xsignal r15, 0
	.loc	1 73 26                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:73:26
	bneq r4, zero, .LBB0_29
# %bb.30:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:0:26
	load.d r[6:7], -1744(r30)               # 8-byte Folded Reload
	loadli.w r23,  -1720(r30)               # 4-byte Folded Reload
	.loc	1 73 26                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:73:26
	addli r12, r5, 2
	addli r9, r9, 2
	addli r8, r8, 2
	addli r18, zero, 3
	addli r17, zero, 1
	core_id r19
	.loc	1 89 25 is_stmt 1               # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:89:25
	j .LBB0_7
.LBB0_31:                               # %.split17.thread88
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:86:20
	addli r10, r10, 2
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:0:20
	loadli.w r23,  -1720(r30)               # 4-byte Folded Reload
	addli r17, zero, 1
	addli r28, zero, 76
	addli r18, zero, 3
	beq r19, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_8 Depth=1
	addli r26, zero, 5
	.loc	1 101 67 is_stmt 1              # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:101:67
	j .LBB0_7
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r3,  -1760(r30)                # 4-byte Folded Reload
	zext_int2long r[27:28], zero
	addli r11, zero, 1
	zext_int2long r[17:18], r3
	zext_int2long r[3:4], r24
	store.d r[3:4], -1768(r30)              # 8-byte Folded Spill
	min.ul r[3:4], r[17:18], r[3:4]
	store.d r[3:4], -1760(r30)              # 8-byte Folded Spill
	loadli.w r3,  -1752(r30)                # 4-byte Folded Reload
	store.d r[27:28], -1752(r30)            # 8-byte Folded Spill
	load.d r[27:28], -1760(r30)             # 8-byte Folded Reload
	sext_int2long r[3:4], r3
	addli.d r[27:28], r[27:28], 128
	store.d r[27:28], -1760(r30)            # 8-byte Folded Spill
	load.d r[27:28], -1752(r30)             # 8-byte Folded Reload
	min.sl r[27:28], r[3:4], r[27:28]
	store.d r[27:28], -1752(r30)            # 8-byte Folded Spill
	load.d r[27:28], -1760(r30)             # 8-byte Folded Reload
	max.ul r[27:28], r[27:28], r[17:18]
	store.d r[27:28], -1760(r30)            # 8-byte Folded Spill
	load.d r[27:28], -1752(r30)             # 8-byte Folded Reload
	addli.d r[27:28], r[27:28], 32
	store.d r[27:28], -1752(r30)            # 8-byte Folded Spill
	load.d r[27:28], -1760(r30)             # 8-byte Folded Reload
	sub.sl r[17:18], r[27:28], r[17:18]
	load.d r[27:28], -1752(r30)             # 8-byte Folded Reload
	max.sl r[27:28], r[27:28], r[3:4]
	store.d r[27:28], -1760(r30)            # 8-byte Folded Spill
	load.d r[27:28], -1768(r30)             # 8-byte Folded Reload
	min.ul r[17:18], r[17:18], r[27:28]
	store.d r[17:18], -1752(r30)            # 8-byte Folded Spill
	load.d r[17:18], -1760(r30)             # 8-byte Folded Reload
	sub.sl r[3:4], r[17:18], r[3:4]
	load.d r[17:18], 16(r30)
	store.d r[3:4], -1760(r30)              # 8-byte Folded Spill
	load.d r[4:5], -1728(r30)               # 8-byte Folded Reload
	addli r3, zero, 15
	sll.d r[27:28], r[4:5], r3
	zext_int2long r[3:4], r25
	addli r5, zero, 10
	add.ul r[27:28], r[17:18], r[27:28]
	load.d r[17:18], -1760(r30)             # 8-byte Folded Reload
	min.sl r[3:4], r[17:18], r[3:4]
	load.d r[17:18], -1744(r30)             # 8-byte Folded Reload
	store.d r[3:4], -1728(r30)              # 8-byte Folded Spill
	xwait r5, 0
	addli r5, zero, 5
	add.ul r[17:18], r[27:28], r[17:18]
	addli r28, zero, 76
	addli r27, zero, 8
	lock zero, r5
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r11, zero, 1
	addli r11, zero, 1024
	load.d r[3:4], -1752(r30)               # 8-byte Folded Reload
	dma_cfg r18, zero, zero, 2
	slli r5, r3, 2
	dma_cfg r17, r26, r5, 3
	addli r5, zero, 512
	addli r18, zero, 3
	addli r26, zero, 5
	addli r17, zero, 1
	load.d r[3:4], -1728(r30)               # 8-byte Folded Reload
	dma_cfg r11, r5, r3, 4
	addli r3, zero, 11
	dma_run zero
	unlock r26
	xsignal r3, 0
	j .LBB0_7
.LBB0_35:                               # %._crit_edge
	.loc	1 22 0                          # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:22:0
	xsignal zero, 0
	bneq r19, zero, .LBB0_37
# %bb.36:
	.loc	1 0 0 is_stmt 0                 # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:22:0
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
	.loc	1 22 0 epilogue_begin           # ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py:22:0
	addli sp, sp, 1768
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
	.long	1832                            # 0x728
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
.asciz	"ctb56rmuf2xnvi5h5g4fngqjko2dgloghudrcoeiflrqv6nbnpfx.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/tb" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
