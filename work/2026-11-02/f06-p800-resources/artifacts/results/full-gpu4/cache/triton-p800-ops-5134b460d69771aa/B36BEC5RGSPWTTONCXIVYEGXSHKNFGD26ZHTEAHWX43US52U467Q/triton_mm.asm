	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/si" "csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py"
	.loc	1 22 0                          # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2168
	addli r30, sp, 2104
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:73:26
	core_id r11
	loadli.w r16,  32(r30)
	xsignal_mode_cfg r1
	beq r11, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:0:26
	lui r1, 1048575
	ori r1, r1, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	addli r3, zero, 2
	uni_sram_cfg r1, r1
	lui r2, 1048575
	lock zero, r3
	ew_cfg r1, zero, zero, 16
	ori r1, r2, 4095
	addli r2, zero, 9
	unlock r3
	addli r3, zero, 11
	csr_set csr3, r1
	addli r1, zero, 5
	sync_group
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	loadli.w r2,  32(r30)
	storeli.w zero, -344(r30)
	storeli.w zero, -668(r30)
	storeli.w zero, -1016(r30)
	storeli.w zero, -2040(r30)
	mul.s r1, r3, r1
	addli r3, r5, 0
	fmac.s r3, r1, r2
	mul.s r2, r1, r2
	addli r3, r3, -1
	div.s r3, r3, r5
	load_param_i r5, 0
	mul.s r1, r3, r5
	fmac.s r3, r3, r5
	min.s r3, r3, r2
	ble.s r3, r1, .LBB0_35
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r3
	addli r4, r30, -2072
	loadli.w r8,  -344(r30)
	loadli.w r9,  -668(r30)
	loadli.w r10,  -1016(r30)
	loadli.w r5,  -2040(r30)
	sext_int2long r[6:7], r1
	addli r23, zero, 1
	addli r13, zero, 7
	addli r26, zero, 3
	addli r15, zero, 4
	addli r17, zero, 2
	addli r22, zero, 6
	addli r24, zero, 128
	addli r25, zero, 32
	addli r27, zero, 16
	addli r28, zero, 86
	addli r18, zero, 0
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r4, zero, 85
	addli r3, zero, 64
	j .LBB0_9
.LBB0_5:                                # %.split17.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:86:20
	addli r10, r10, 2
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:73:26
	addli r1, zero, 10
	loadli.w r16,  32(r30)
	addli r23, zero, 1
	addli r26, zero, 3
	addli r28, zero, 86
	xsignal r1, 0
	load.d r[6:7], -2048(r30)               # 8-byte Folded Reload
.LBB0_7:                                # %.thread92
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:0:26
	loadli.w r18,  -2052(r30)               # 4-byte Folded Reload
.LBB0_8:                                # %.thread92
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r5, r30, -2072
	addli.d r[6:7], r[6:7], 1
	addli r18, r18, 1
	load.d r[1:2], 0(r5)                    # 8-byte Folded Reload
	addli r5, r12, 0
	setlt.sl r1, r[6:7], r[1:2]
	beq r1, zero, .LBB0_35
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	store.d r[6:7], -2048(r30)              # 8-byte Folded Spill
	div.s r6, r6, r16
	loadli.w r1,  28(r30)
	addli r19, zero, 8
	.loc	1 73 26                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:73:26
	addli r20, r30, -2064
	div.s r7, r6, r1
	addli r1, zero, 8
	.loc	1 53 22 is_stmt 1               # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:53:22
	div.s r6, r7, r1
	slli r12, r6, 3
	.loc	1 54 30                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:54:30
	sub.s r6, r23, r12
	.loc	1 54 50 is_stmt 0               # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:54:50
	min.s r14, r6, r1
	.loc	1 55 40 is_stmt 1               # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:55:40
	mod.s r6, r7, r14
	.loc	1 55 34 is_stmt 0               # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:55:34
	add.s r6, r12, r6
	.loc	1 95 15 is_stmt 1               # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:95:15
	zext_int2long r[1:2], r6
	.loc	1 73 26                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:73:26
	store.d r[1:2], 0(r20)                  # 8-byte Folded Spill
	bneq r11, r15, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, zero, 11
	xwait r1, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:0:26
	beq r11, r23, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r11, r17, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r6, zero, 1
	addli r7, zero, 255
	addli r12, zero, 5
	lui r14, 6
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:81:20
	mod.s r1, r10, r28
	.loc	1 89 25                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:89:25
	mod.s r2, r5, r7
	xwait r17, 0
	xwait r12, 0
	lock zero, zero
	addli r5, r5, 1
	.loc	1 81 20                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:81:20
	addli r10, r10, 1
	.loc	1 89 25                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:89:25
	ds_cfg r17, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r27, zero, 13
	.loc	1 81 20                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:81:20
	slli r1, r1, 11
	.loc	1 89 25                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:89:25
	slli r2, r2, 11
	.loc	1 81 20                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:81:20
	add.s r1, r1, r14
	.loc	1 89 25                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:89:25
	shuffle_batch r2, r1, r25, 1
	.loc	1 73 26                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:73:26
	andi r1, r6, 1
	addli r6, zero, 0
	.loc	1 89 25                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:89:25
	unlock zero
	xsignal r26, 0
	xsignal r15, 0
	bneq r1, zero, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:0:25
	load.d r[6:7], -2048(r30)               # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:73:26
	addli r9, r9, 2
	addli r8, r8, 2
	addli r12, r5, 0
	.loc	1 89 25                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:89:25
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:0:25
	sub.s r7, r7, r12
	mod.s r11, r18, r26
	slli r6, r6, 4
	storeli.w r18, -2052(r30)               # 4-byte Folded Spill
	addli r16, zero, 0
	addli r26, zero, 1
	addli r28, zero, 0
	div.s r7, r7, r14
	storeli.w r6, -2088(r30)                # 4-byte Folded Spill
	addli r6, r30, -2080
	slli r18, r11, 13
	.loc	1 73 26 is_stmt 1               # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:73:26
	core_id r11
	zext_int2long r[1:2], r7
	sll.d r[1:2], r[1:2], r13
	sll.d r[20:21], r[1:2], r17
	slli r1, r7, 7
	storeli.w r1, -2096(r30)                # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	store.d r[20:21], 0(r6)                 # 8-byte Folded Spill
	add.ul r[6:7], r[1:2], r[20:21]
	lui r21, 49
	addli r20, zero, 80
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:89:25
	addli r1, zero, 9
	xwait r22, 0
	xwait r1, 0
	lock zero, zero
	ds_cfg r17, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r23, r14, r25, 2
	unlock zero
	xsignal r13, 0
	xsignal r19, 0
	.loc	1 73 26                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:73:26
	andi r1, r26, 1
	bneq r1, zero, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	.loc	1 86 20                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:86:20
	mod.s r1, r8, r4
	.loc	1 89 25                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:89:25
	mod.s r2, r9, r20
	addli r12, r5, 1
	addli r9, r9, 1
	.loc	1 86 20                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:86:20
	addli r8, r8, 1
	slli r1, r1, 14
	.loc	1 89 25                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:89:25
	slli r23, r2, 14
	.loc	1 86 20                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:86:20
	add.s r14, r1, r21
	beq r11, r13, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:0:20
	bneq r11, r22, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 20                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:86:20
	zext_int2long r[1:2], r16
	xwait r13, 0
	lock zero, r15
	addli r5, zero, 512
	dma_cfg zero, zero, zero, 0
	add.ul r[1:2], r[6:7], r[1:2]
	dma_cfg zero, r2, zero, 2
	dma_cfg r14, r1, r5, 3
	dma_cfg r5, r5, r25, 4
	dma_run zero
	unlock r15
	xsignal r22, 0
	.loc	1 73 26 is_stmt 1               # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:73:26
	andi r1, r26, 1
	bneq r1, zero, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:0:26
	andi r26, r26, 1
	.loc	1 89 25 is_stmt 1               # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:89:25
	bneq r11, r15, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 25 is_stmt 0                # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:0:25
	addli r1, zero, 255
	addli r14, zero, 1
	addli r16, zero, 1
	addli r11, zero, 0
	.loc	1 89 25                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:89:25
	xwait r15, 0
	xwait r19, 0
	mod.s r1, r5, r1
	slli r5, r1, 11
	beq r28, zero, .LBB0_24
.LBB0_23:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r1, r11, 13
	slli r2, r11, 8
	lock zero, r14
	addli r11, zero, 1
	mm_cfg r3, r25, r27, 0
	or r1, r1, r23
	or r2, r2, r18
	mm_cfg r17, r15, r14, 2
	mm_acc r2, r5, r1, 8
	andi r1, r16, 1
	addli r16, zero, 0
	unlock r14
	bneq r1, zero, .LBB0_23
	j .LBB0_25
.LBB0_24:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r1, r11, 13
	slli r2, r11, 8
	lock zero, r14
	addli r11, zero, 1
	mm_cfg r3, r25, r27, 0
	or r1, r1, r23
	or r2, r2, r18
	mm_cfg r17, r15, r14, 2
	mm r2, r5, r1, 8
	andi r1, r16, 1
	addli r16, zero, 0
	unlock r14
	bneq r1, zero, .LBB0_24
.LBB0_25:                               # %.thread6.thread90
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r1, zero, 5
	.loc	1 73 26 is_stmt 1               # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:73:26
	core_id r11
	.loc	1 89 25                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:89:25
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r26, zero, .LBB0_27
	j .LBB0_5
.LBB0_26:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:73:26
	beq r26, zero, .LBB0_32
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:0:26
	addli r26, zero, 0
	.loc	1 89 25 is_stmt 1               # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:89:25
	addli r28, r28, 1
	lui r16, 4
	addli r5, r12, 0
	j .LBB0_18
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:86:20
	addli r10, r10, 2
	.loc	1 73 26                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:73:26
	beq r11, r15, .LBB0_6
	j .LBB0_33
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:0:26
	addli r2, r30, -2064
	addli r1, zero, 12
	storeli.w r18, -2052(r30)               # 4-byte Folded Spill
	load.d r[18:19], 0(r30)
	addli r12, zero, 1
	addli r14, zero, 0
	lui r16, 6
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	addli r2, zero, 256
	sll.d r[6:7], r[6:7], r1
	add.ul r[6:7], r[18:19], r[6:7]
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:81:20
	mod.s r1, r10, r28
	.loc	1 86 25                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:86:25
	zext_int2long r[18:19], r14
	.loc	1 81 20                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:81:20
	xwait r26, 0
	lock zero, r15
	addli r10, r10, 1
	addli r14, zero, 32
	dma_cfg zero, zero, zero, 0
	sll.d r[18:19], r[18:19], r17
	add.ul r[18:19], r[6:7], r[18:19]
	slli r1, r1, 11
	dma_cfg zero, r19, zero, 2
	add.s r1, r1, r16
	dma_cfg r1, r18, r24, 3
	.loc	1 73 26                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:73:26
	andi r1, r12, 1
	addli r12, zero, 0
	.loc	1 81 20                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:81:20
	dma_cfg r24, r2, r27, 4
	dma_run zero
	unlock r15
	xsignal r17, 0
	.loc	1 73 26                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:73:26
	bneq r1, zero, .LBB0_30
# %bb.31:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:0:26
	loadli.w r16,  32(r30)
	load.d r[6:7], -2048(r30)               # 8-byte Folded Reload
	.loc	1 73 26                         # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:73:26
	addli r12, r5, 2
	addli r9, r9, 2
	addli r8, r8, 2
	j .LBB0_7
.LBB0_32:                               # %.split17.thread89
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:86:20
	addli r10, r10, 2
.LBB0_33:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:0:20
	load.d r[6:7], -2048(r30)               # 8-byte Folded Reload
	loadli.w r16,  32(r30)
	addli r23, zero, 1
	addli r26, zero, 3
	addli r28, zero, 86
	bneq r11, zero, .LBB0_7
# %bb.34:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67 is_stmt 1              # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:101:67
	loadli.w r1,  -2088(r30)                # 4-byte Folded Reload
	zext_int2long r[19:20], zero
	addli r7, r30, -2088
	loadli.w r5,  -2096(r30)                # 4-byte Folded Reload
	addli r14, zero, 5
	sext_int2long r[1:2], r1
	zext_int2long r[5:6], r5
	min.sl r[19:20], r[1:2], r[19:20]
	store.d r[19:20], 0(r7)                 # 8-byte Folded Spill
	zext_int2long r[19:20], r24
	addli r7, r30, -2096
	store.d r[19:20], 0(r7)                 # 8-byte Folded Spill
	addli r7, r30, -2088
	load.d r[19:20], 0(r7)                  # 8-byte Folded Reload
	addli.d r[19:20], r[19:20], 16
	store.d r[19:20], 0(r7)                 # 8-byte Folded Spill
	addli r7, r30, -2096
	load.d r[19:20], 0(r7)                  # 8-byte Folded Reload
	max.ul r[19:20], r[5:6], r[19:20]
	store.d r[19:20], 0(r7)                 # 8-byte Folded Spill
	addli r7, r30, -2088
	load.d r[19:20], 0(r7)                  # 8-byte Folded Reload
	addli r7, r30, -2104
	max.sl r[19:20], r[19:20], r[1:2]
	store.d r[19:20], 0(r7)                 # 8-byte Folded Spill
	addli r7, r30, -2096
	load.d r[19:20], 0(r7)                  # 8-byte Folded Reload
	addli r7, r30, -2088
	sub.sl r[5:6], r[19:20], r[5:6]
	store.d r[5:6], 0(r7)                   # 8-byte Folded Spill
	addli r7, r30, -2104
	load.d r[5:6], 0(r7)                    # 8-byte Folded Reload
	addli r7, r30, -2064
	sub.sl r[1:2], r[5:6], r[1:2]
	addli r5, r30, -2096
	store.d r[1:2], 0(r5)                   # 8-byte Folded Spill
	addli r2, r30, -2064
	addli r1, zero, 13
	load.d r[5:6], 0(r2)                    # 8-byte Folded Reload
	sll.d r[1:2], r[5:6], r1
	addli r5, r30, -2064
	store.d r[1:2], 0(r5)                   # 8-byte Folded Spill
	load.d r[1:2], 16(r30)
	zext_int2long r[5:6], r27
	load.d r[19:20], 0(r7)                  # 8-byte Folded Reload
	addli r7, r30, -2096
	add.ul r[1:2], r[1:2], r[19:20]
	load.d r[19:20], 0(r7)                  # 8-byte Folded Reload
	addli r7, r30, -2080
	min.sl r[19:20], r[19:20], r[5:6]
	load.d r[5:6], 0(r7)                    # 8-byte Folded Reload
	addli r7, zero, 10
	xwait r7, 0
	lock zero, r14
	addli r7, r30, -2088
	dma_cfg zero, zero, zero, 0
	add.ul r[1:2], r[1:2], r[5:6]
	dma_cfg zero, r23, zero, 1
	load.d r[5:6], 0(r7)                    # 8-byte Folded Reload
	dma_cfg r2, zero, zero, 2
	slli r7, r5, 2
	dma_cfg r1, r18, r7, 3
	addli r1, zero, 512
	dma_cfg r1, r1, r19, 4
	addli r1, zero, 11
	load.d r[6:7], -2048(r30)               # 8-byte Folded Reload
	dma_run zero
	unlock r14
	xsignal r1, 0
	j .LBB0_7
.LBB0_35:                               # %._crit_edge
	.loc	1 22 0                          # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:22:0
	xsignal zero, 0
	bneq r11, zero, .LBB0_37
# %bb.36:
	.loc	1 0 0 is_stmt 0                 # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:22:0
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
	.loc	1 22 0 epilogue_begin           # csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py:22:0
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
.asciz	"csion76pbjpugbec6nqyfykebgt33gluldu2rb7s22vlobmx5pl2.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/si" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
