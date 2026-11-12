	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/u2" "cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py"
	.loc	1 22 0                          # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -448
	addli r30, sp, 384
	lui r2, :hi20:global_smem
	core_id r1
	lui r5, 15
	load_param_i r19, 0
	loadli.w r16,  36(r30)
	loadli.w r4,  32(r30)
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	ori r18, r5, 4095
	lui r5, 1046527
	loadli.w r15,  40(r30)
	add.s r17, r3, r2
	ori r5, r5, 4095
	mul.s r4, r16, r4
	stores.w zero, 1040(r17)
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	stores.w r5, 0(r17)
	mul.s r4, r4, r15
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	storeli.w r4, -208(r30)                 # 4-byte Folded Spill
	ble.s r4, r19, .LBB0_674
# %bb.1:                                # %.lr.ph
	addli r4, zero, 64
	addli r7, r17, 1040
	addli r10, zero, 1
	load.d r[24:25], 16(r30)
	load.d r[27:28], 0(r30)
	addli r26, r30, -64
	storeli.w r17, -372(r30)                # 4-byte Folded Spill
	storeli.w r18, -376(r30)                # 4-byte Folded Spill
	div.s r22, r1, r4
	storeli.w r7, -212(r30)                 # 4-byte Folded Spill
	load_param_i r7, 1
	load.d r[4:5], 8(r30)
	storeli.w r7, -216(r30)                 # 4-byte Folded Spill
	slli r6, r22, 6
	storeli.w r22, -380(r30)                # 4-byte Folded Spill
	sub.s r6, r1, r6
	andi r1, r1, 63
	slli r7, r6, 2
	lui r6, 1048575
	storeli.w r1, -132(r30)                 # 4-byte Folded Spill
	ori r8, r7, 1
	ori r6, r6, 3840
	storeli.w r7, -220(r30)                 # 4-byte Folded Spill
	storeli.w r8, -224(r30)                 # 4-byte Folded Spill
	ori r8, r7, 2
	and r3, r3, r6
	addli r6, r30, -128
	storeli.w r8, -228(r30)                 # 4-byte Folded Spill
	ori r8, r7, 3
	add.s r21, r3, r2
	storeli.w r8, -232(r30)                 # 4-byte Folded Spill
	sext_int2long r[7:8], r7
	addli r23, r21, 1040
	sll.d r[7:8], r[7:8], r10
	add.ul r[4:5], r[4:5], r[7:8]
	store.d r[4:5], -240(r30)               # 8-byte Folded Spill
.LBB0_2:                                # %.split15.critedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_554 Depth 2
	div.s r1, r19, r15
.Ltmp0:
	.loc	1 38 46 prologue_end            # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:38:46
	store.h zero, -128(r30)
	store.h zero, -126(r30)
	lui r2, 983040
	addli r7, zero, 8
	.loc	1 39 37                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:39:37
	lui r3, 983040
	.loc	1 38 46                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:38:46
	mfence { lm }
	store.h zero, -124(r30)
	store.h zero, -122(r30)
	div.s r1, r1, r16
	.loc	1 29 23                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:29:23
	add.s r12, r1, r22
	.loc	1 38 37                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:38:37
	loadli.w r1,  -220(r30)                 # 4-byte Folded Reload
	.loc	1 38 46 is_stmt 0               # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:38:46
	mfence { lm }
	.loc	1 38 41                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:38:41
	slli r11, r12, 8
	.loc	1 38 37                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:38:37
	add.s r1, r11, r1
	.loc	1 38 30                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:38:30
	sext_int2long r[4:5], r1
	.loc	1 38 46                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:38:46
	or r1, r7, r2
	.loc	1 39 37 is_stmt 1               # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:39:37
	or r2, r7, r3
	.loc	1 38 30                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:38:30
	sll.d r[4:5], r[4:5], r10
	store.d r[4:5], -144(r30)               # 8-byte Folded Spill
	add.ul r[4:5], r[27:28], r[4:5]
	.loc	1 38 46 is_stmt 0               # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:38:46
	l_gm2lm r1, r6, 0(r[4:5])
	.loc	1 39 37 is_stmt 1               # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:39:37
	load.d r[3:4], -240(r30)                # 8-byte Folded Reload
	l_gm2lm r2, r26, 0(r[3:4])
	.loc	1 38 46                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:38:46
	mfence { lm }
	load.hu r1, -128(r30)
	.loc	1 39 37                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:39:37
	load.hu r2, -64(r30)
	load.hu r3, -124(r30)
	load.hu r4, -60(r30)
	.loc	1 45 19                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:45:19
	add.hf.rn r1, r1, r2
	add.hf.rn r2, r3, r4
	.loc	1 46 19                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:46:19
	hfloat2float.rn r10, r1
	hfloat2float.rn r1, r2
	setlt.f r3, r1, r10
	addli r2, r10, 0
	bneq r3, zero, .LBB0_4
# %bb.3:                                # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 19 is_stmt 0                # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:0:19
	addli r2, r1, 0
.LBB0_4:                                # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	slli r5, r10, 9
	slli r7, r1, 9
	srli r6, r10, 23
	srli r8, r1, 23
	load.hu r3, -126(r30)
	load.hu r4, -62(r30)
	seteq r5, r5, zero
	seteq r7, r7, zero
	andi r6, r6, 255
	andi r8, r8, 255
	setlti r6, r6, 255
	or r9, r6, r5
	setlti r6, r8, 255
	load.hu r5, -122(r30)
	or r7, r6, r7
	load.hu r6, -58(r30)
	and r7, r9, r7
	beq r7, zero, .LBB0_544
# %bb.5:                                # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	addli r7, r10, 0
	bneq r10, zero, .LBB0_545
.LBB0_6:                                # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	beq r1, zero, .LBB0_8
.LBB0_7:                                # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	addli r1, r7, 0
.LBB0_8:                                # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	setle.f r7, zero, r2
	setle.f r8, r2, zero
	and r7, r8, r7
	bneq r7, zero, .LBB0_10
# %bb.9:                                # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	addli r1, r2, 0
.LBB0_10:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	add.hf.rn r2, r3, r4
	add.hf.rn r3, r5, r6
	hfloat2float.rn r8, r2
	hfloat2float.rn r2, r3
	setlt.f r4, r2, r8
	addli r3, r8, 0
	bneq r4, zero, .LBB0_12
# %bb.11:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	addli r3, r2, 0
.LBB0_12:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	slli r4, r8, 9
	slli r5, r2, 9
	srli r6, r8, 23
	srli r7, r2, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r4, r5
	beq r4, zero, .LBB0_546
# %bb.13:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	addli r4, r8, 0
	bneq r8, zero, .LBB0_547
.LBB0_14:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	beq r2, zero, .LBB0_16
.LBB0_15:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	addli r2, r4, 0
.LBB0_16:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_18
# %bb.17:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	addli r2, r3, 0
.LBB0_18:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/torch/_inductor/runtime" "triton_helpers.py"
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	setlt.f r4, r2, r1
	addli r3, r1, 0
	bneq r4, zero, .LBB0_20
# %bb.19:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r3, r2, 0
.LBB0_20:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	slli r4, r1, 9
	slli r5, r2, 9
	srli r6, r1, 23
	srli r7, r2, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	.loc	2 113 29                        # triton_helpers.py:113:29
	and r4, r4, r5
	beq r4, zero, .LBB0_548
# %bb.21:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	bneq r1, zero, .LBB0_549
.LBB0_22:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	beq r2, zero, .LBB0_24
.LBB0_23:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_24:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r4, r3, zero
	and r1, r4, r1
	bneq r1, zero, .LBB0_26
# %bb.25:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_26:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	addli r1, zero, 32
	blt.s r12, r1, .LBB0_28
# %bb.27:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 1046528
.LBB0_28:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	stores.w r2, 0(r17)
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_542
# %bb.29:                               #   in Loop: Header=BB0_2 Depth=1
	loads.w r3, 0(r21)
	loads.w r1, 4(r21)
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r1, r3
	addli r2, r3, 0
	bneq r4, zero, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_31:                               #   in Loop: Header=BB0_2 Depth=1
	slli r4, r3, 9
	slli r5, r1, 9
	srli r6, r3, 23
	srli r7, r1, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r4, r5
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r4, zero, .LBB0_556
# %bb.32:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r3, zero, .LBB0_557
.LBB0_33:                               #   in Loop: Header=BB0_2 Depth=1
	beq r1, zero, .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_35:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r2
	setle.f r4, r2, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_37:                               #   in Loop: Header=BB0_2 Depth=1
	loads.w r25, 8(r21)
	addli r2, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r25, r1
	bneq r3, zero, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r25, 0
.LBB0_39:                               #   in Loop: Header=BB0_2 Depth=1
	slli r3, r25, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r1, 9
	srli r5, r25, 23
	srli r6, r1, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_558
# %bb.40:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r1, zero, .LBB0_559
.LBB0_41:                               #   in Loop: Header=BB0_2 Depth=1
	beq r25, zero, .LBB0_43
.LBB0_42:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
.LBB0_43:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r2
	setle.f r3, r2, zero
	storeli.w r8, -260(r30)                 # 4-byte Folded Spill
	storeli.w r10, -256(r30)                # 4-byte Folded Spill
	storeli.w r12, -252(r30)                # 4-byte Folded Spill
	storeli.w r11, -248(r30)                # 4-byte Folded Spill
	storeli.w r19, -244(r30)                # 4-byte Folded Spill
	and r1, r3, r1
	bneq r1, zero, .LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r2, 0
.LBB0_45:                               #   in Loop: Header=BB0_2 Depth=1
	loads.w r1, 76(r21)
	loads.w r27, 12(r21)
	loads.w r11, 16(r21)
	loads.w r9, 20(r21)
	loads.w r20, 24(r21)
	loads.w r12, 28(r21)
	loads.w r13, 32(r21)
	loads.w r15, 36(r21)
	loads.w r16, 40(r21)
	loads.w r17, 44(r21)
	loads.w r19, 48(r21)
	loads.w r7, 52(r21)
	loads.w r6, 56(r21)
	loads.w r14, 60(r21)
	loads.w r3, 64(r21)
	loads.w r8, 68(r21)
	loads.w r28, 72(r21)
	loads.w r18, 80(r21)
	loads.w r26, 84(r21)
	loads.w r22, 128(r21)
	loads.w r10, 208(r21)
	addli r5, r25, 0
	storeli.w r1, -368(r30)                 # 4-byte Folded Spill
	loads.w r1, 88(r21)
	storeli.w r1, -364(r30)                 # 4-byte Folded Spill
	loads.w r1, 92(r21)
	storeli.w r1, -204(r30)                 # 4-byte Folded Spill
	loads.w r1, 96(r21)
	storeli.w r1, -360(r30)                 # 4-byte Folded Spill
	loads.w r1, 100(r21)
	storeli.w r1, -200(r30)                 # 4-byte Folded Spill
	loads.w r1, 104(r21)
	storeli.w r1, -356(r30)                 # 4-byte Folded Spill
	loads.w r1, 108(r21)
	storeli.w r1, -196(r30)                 # 4-byte Folded Spill
	loads.w r1, 112(r21)
	storeli.w r1, -352(r30)                 # 4-byte Folded Spill
	loads.w r1, 116(r21)
	storeli.w r1, -192(r30)                 # 4-byte Folded Spill
	loads.w r1, 120(r21)
	storeli.w r1, -348(r30)                 # 4-byte Folded Spill
	loads.w r1, 124(r21)
	storeli.w r1, -188(r30)                 # 4-byte Folded Spill
	loads.w r1, 132(r21)
	storeli.w r1, -184(r30)                 # 4-byte Folded Spill
	loads.w r1, 136(r21)
	storeli.w r1, -340(r30)                 # 4-byte Folded Spill
	loads.w r1, 140(r21)
	storeli.w r1, -180(r30)                 # 4-byte Folded Spill
	loads.w r1, 144(r21)
	storeli.w r1, -336(r30)                 # 4-byte Folded Spill
	loads.w r1, 148(r21)
	storeli.w r1, -176(r30)                 # 4-byte Folded Spill
	loads.w r1, 152(r21)
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
	loads.w r1, 156(r21)
	storeli.w r1, -172(r30)                 # 4-byte Folded Spill
	loads.w r1, 160(r21)
	storeli.w r1, -328(r30)                 # 4-byte Folded Spill
	loads.w r1, 164(r21)
	storeli.w r1, -168(r30)                 # 4-byte Folded Spill
	loads.w r1, 168(r21)
	storeli.w r1, -324(r30)                 # 4-byte Folded Spill
	loads.w r1, 172(r21)
	storeli.w r1, -164(r30)                 # 4-byte Folded Spill
	loads.w r1, 176(r21)
	storeli.w r1, -320(r30)                 # 4-byte Folded Spill
	loads.w r1, 180(r21)
	storeli.w r1, -316(r30)                 # 4-byte Folded Spill
	loads.w r1, 184(r21)
	storeli.w r1, -160(r30)                 # 4-byte Folded Spill
	loads.w r1, 188(r21)
	storeli.w r1, -312(r30)                 # 4-byte Folded Spill
	loads.w r1, 192(r21)
	storeli.w r1, -308(r30)                 # 4-byte Folded Spill
	loads.w r1, 196(r21)
	storeli.w r1, -156(r30)                 # 4-byte Folded Spill
	loads.w r1, 200(r21)
	storeli.w r1, -304(r30)                 # 4-byte Folded Spill
	loads.w r1, 204(r21)
	storeli.w r1, -152(r30)                 # 4-byte Folded Spill
	loads.w r1, 212(r21)
	storeli.w r1, -300(r30)                 # 4-byte Folded Spill
	loads.w r1, 216(r21)
	storeli.w r1, -296(r30)                 # 4-byte Folded Spill
	loads.w r1, 220(r21)
	storeli.w r1, -292(r30)                 # 4-byte Folded Spill
	loads.w r1, 224(r21)
	storeli.w r1, -288(r30)                 # 4-byte Folded Spill
	loads.w r1, 228(r21)
	storeli.w r1, -148(r30)                 # 4-byte Folded Spill
	loads.w r1, 232(r21)
	storeli.w r1, -284(r30)                 # 4-byte Folded Spill
	loads.w r1, 236(r21)
	storeli.w r1, -280(r30)                 # 4-byte Folded Spill
	loads.w r1, 240(r21)
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	loads.w r1, 244(r21)
	storeli.w r1, -272(r30)                 # 4-byte Folded Spill
	loads.w r1, 248(r21)
	storeli.w r1, -268(r30)                 # 4-byte Folded Spill
	loads.w r1, 252(r21)
	.loc	2 113 29                        # triton_helpers.py:113:29
	storeli.w r1, -264(r30)                 # 4-byte Folded Spill
	setlt.f r1, r27, r25
	bneq r1, zero, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r27, 0
.LBB0_47:                               #   in Loop: Header=BB0_2 Depth=1
	slli r1, r27, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r25, 9
	srli r4, r27, 23
	srli r24, r25, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r24, r24, 255
	setlti r4, r4, 255
	setlti r24, r24, 255
	or r1, r4, r1
	or r2, r24, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_560
# %bb.48:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r25, zero, .LBB0_561
.LBB0_49:                               #   in Loop: Header=BB0_2 Depth=1
	beq r27, zero, .LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r25, 0
.LBB0_51:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r5
	setle.f r2, r5, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r5, 0
.LBB0_53:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r11, r27
	addli r5, r27, 0
	addli r25, r22, 0
	storeli.w r10, -344(r30)                # 4-byte Folded Spill
	bneq r1, zero, .LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r11, 0
.LBB0_55:                               #   in Loop: Header=BB0_2 Depth=1
	slli r1, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r27, 9
	srli r4, r11, 23
	srli r24, r27, 23
	addli r10, r26, 0
	addli r22, r18, 0
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r24, r24, 255
	setlti r4, r4, 255
	setlti r24, r24, 255
	or r1, r4, r1
	or r2, r24, r2
	and r1, r2, r1
	bneq r1, zero, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
.LBB0_57:                               #   in Loop: Header=BB0_2 Depth=1
	loadli.w r18,  -368(r30)                # 4-byte Folded Reload
	addli r26, r30, -64
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r5, 0
.LBB0_59:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r27, 0
.LBB0_61:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r5
	setle.f r2, r5, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_63
# %bb.62:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r5, 0
.LBB0_63:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r9, r11
	addli r5, r11, 0
	bneq r1, zero, .LBB0_65
# %bb.64:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r9, 0
.LBB0_65:                               #   in Loop: Header=BB0_2 Depth=1
	slli r1, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r11, 9
	srli r4, r9, 23
	srli r24, r11, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r24, r24, 255
	setlti r4, r4, 255
	setlti r24, r24, 255
	or r1, r4, r1
	or r2, r24, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_562
# %bb.66:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r24,  -352(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_563
.LBB0_67:                               #   in Loop: Header=BB0_2 Depth=1
	beq r9, zero, .LBB0_69
.LBB0_68:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r11, 0
.LBB0_69:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r5
	setle.f r2, r5, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r5, 0
.LBB0_71:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r20, r9
	addli r5, r9, 0
	bneq r1, zero, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r20, 0
.LBB0_73:                               #   in Loop: Header=BB0_2 Depth=1
	slli r1, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r9, 9
	srli r4, r20, 23
	srli r11, r9, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r11, r11, 255
	setlti r4, r4, 255
	setlti r11, r11, 255
	or r1, r4, r1
	or r2, r11, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_564
# %bb.74:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r11,  -328(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_565
.LBB0_75:                               #   in Loop: Header=BB0_2 Depth=1
	beq r20, zero, .LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r9, 0
.LBB0_77:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r5
	setle.f r2, r5, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r5, 0
.LBB0_79:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r12, r20
	addli r5, r20, 0
	bneq r1, zero, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r12, 0
.LBB0_81:                               #   in Loop: Header=BB0_2 Depth=1
	slli r1, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r20, 9
	srli r4, r12, 23
	srli r9, r20, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r9, r9, 255
	setlti r4, r4, 255
	setlti r9, r9, 255
	or r1, r4, r1
	or r2, r9, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_566
# %bb.82:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r20, zero, .LBB0_567
.LBB0_83:                               #   in Loop: Header=BB0_2 Depth=1
	beq r12, zero, .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r20, 0
.LBB0_85:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r5
	setle.f r2, r5, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r5, 0
.LBB0_87:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r13, r12
	loadli.w r20,  -348(r30)                # 4-byte Folded Reload
	addli r5, r12, 0
	bneq r1, zero, .LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r13, 0
.LBB0_89:                               #   in Loop: Header=BB0_2 Depth=1
	slli r1, r13, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r12, 9
	srli r4, r13, 23
	srli r9, r12, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r9, r9, 255
	setlti r4, r4, 255
	setlti r9, r9, 255
	or r1, r4, r1
	or r2, r9, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_568
# %bb.90:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r12, zero, .LBB0_569
.LBB0_91:                               #   in Loop: Header=BB0_2 Depth=1
	beq r13, zero, .LBB0_93
.LBB0_92:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r12, 0
.LBB0_93:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r5
	setle.f r2, r5, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r5, 0
.LBB0_95:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r15, r13
	loadli.w r12,  -332(r30)                # 4-byte Folded Reload
	addli r5, r13, 0
	bneq r1, zero, .LBB0_97
# %bb.96:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r15, 0
.LBB0_97:                               #   in Loop: Header=BB0_2 Depth=1
	slli r1, r15, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r13, 9
	srli r4, r15, 23
	srli r9, r13, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r9, r9, 255
	setlti r4, r4, 255
	setlti r9, r9, 255
	or r1, r4, r1
	or r2, r9, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_570
# %bb.98:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r13, zero, .LBB0_571
.LBB0_99:                               #   in Loop: Header=BB0_2 Depth=1
	beq r15, zero, .LBB0_101
.LBB0_100:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r13, 0
.LBB0_101:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r5
	setle.f r2, r5, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_103
# %bb.102:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r5, 0
.LBB0_103:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r16, r15
	loadli.w r13,  -356(r30)                # 4-byte Folded Reload
	addli r5, r15, 0
	bneq r1, zero, .LBB0_105
# %bb.104:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r16, 0
.LBB0_105:                              #   in Loop: Header=BB0_2 Depth=1
	slli r1, r16, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r15, 9
	srli r4, r16, 23
	srli r9, r15, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r9, r9, 255
	setlti r4, r4, 255
	setlti r9, r9, 255
	or r1, r4, r1
	or r2, r9, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_572
# %bb.106:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r15, zero, .LBB0_573
.LBB0_107:                              #   in Loop: Header=BB0_2 Depth=1
	beq r16, zero, .LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r15, 0
.LBB0_109:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r5
	setle.f r2, r5, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_111
# %bb.110:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r5, 0
.LBB0_111:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r17, r16
	loadli.w r15,  -316(r30)                # 4-byte Folded Reload
	addli r5, r16, 0
	bneq r1, zero, .LBB0_113
# %bb.112:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r17, 0
.LBB0_113:                              #   in Loop: Header=BB0_2 Depth=1
	slli r1, r17, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r16, 9
	srli r4, r17, 23
	srli r9, r16, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r9, r9, 255
	setlti r4, r4, 255
	setlti r9, r9, 255
	or r1, r4, r1
	or r2, r9, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_574
# %bb.114:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r16, zero, .LBB0_575
.LBB0_115:                              #   in Loop: Header=BB0_2 Depth=1
	beq r17, zero, .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r16, 0
.LBB0_117:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r5
	setle.f r2, r5, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_119
# %bb.118:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r5, 0
.LBB0_119:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r19, r17
	loadli.w r16,  -320(r30)                # 4-byte Folded Reload
	addli r5, r17, 0
	bneq r1, zero, .LBB0_121
# %bb.120:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r19, 0
.LBB0_121:                              #   in Loop: Header=BB0_2 Depth=1
	slli r1, r19, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r17, 9
	srli r4, r19, 23
	srli r9, r17, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r9, r9, 255
	setlti r4, r4, 255
	setlti r9, r9, 255
	or r1, r4, r1
	or r2, r9, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_576
# %bb.122:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r17, zero, .LBB0_577
.LBB0_123:                              #   in Loop: Header=BB0_2 Depth=1
	beq r19, zero, .LBB0_125
.LBB0_124:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r17, 0
.LBB0_125:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r5
	setle.f r2, r5, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_127
# %bb.126:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r5, 0
.LBB0_127:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r7, r19
	loadli.w r17,  -336(r30)                # 4-byte Folded Reload
	addli r5, r19, 0
	bneq r1, zero, .LBB0_129
# %bb.128:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r7, 0
.LBB0_129:                              #   in Loop: Header=BB0_2 Depth=1
	slli r1, r7, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r19, 9
	srli r4, r7, 23
	srli r9, r19, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r9, r9, 255
	setlti r4, r4, 255
	setlti r9, r9, 255
	or r1, r4, r1
	or r2, r9, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_578
# %bb.130:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r19, zero, .LBB0_579
.LBB0_131:                              #   in Loop: Header=BB0_2 Depth=1
	beq r7, zero, .LBB0_133
.LBB0_132:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r19, 0
.LBB0_133:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r5
	setle.f r2, r5, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_135
# %bb.134:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r5, 0
.LBB0_135:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r6, r7
	loadli.w r19,  -244(r30)                # 4-byte Folded Reload
	addli r5, r7, 0
	bneq r1, zero, .LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r6, 0
.LBB0_137:                              #   in Loop: Header=BB0_2 Depth=1
	slli r1, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r7, 9
	srli r4, r6, 23
	srli r9, r7, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r9, r9, 255
	setlti r4, r4, 255
	setlti r9, r9, 255
	or r1, r4, r1
	or r2, r9, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_580
# %bb.138:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r9,  -364(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_581
.LBB0_139:                              #   in Loop: Header=BB0_2 Depth=1
	beq r6, zero, .LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r7, 0
.LBB0_141:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r5
	setle.f r2, r5, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_143
# %bb.142:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r5, 0
.LBB0_143:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r14, r6
	addli r5, r6, 0
	bneq r1, zero, .LBB0_145
# %bb.144:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r14, 0
.LBB0_145:                              #   in Loop: Header=BB0_2 Depth=1
	slli r1, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r6, 9
	srli r4, r14, 23
	srli r7, r6, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r7, r7, 255
	setlti r4, r4, 255
	setlti r7, r7, 255
	or r1, r4, r1
	or r2, r7, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_582
# %bb.146:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r6, zero, .LBB0_583
.LBB0_147:                              #   in Loop: Header=BB0_2 Depth=1
	beq r14, zero, .LBB0_149
.LBB0_148:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r6, 0
.LBB0_149:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r5
	setle.f r2, r5, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_151
# %bb.150:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r5, 0
.LBB0_151:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r3, r14
	addli r5, r14, 0
	bneq r1, zero, .LBB0_153
# %bb.152:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r3, 0
.LBB0_153:                              #   in Loop: Header=BB0_2 Depth=1
	slli r1, r3, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r14, 9
	srli r4, r3, 23
	srli r6, r14, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r6, r6, 255
	setlti r4, r4, 255
	setlti r6, r6, 255
	or r1, r4, r1
	or r2, r6, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_584
# %bb.154:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r14, zero, .LBB0_585
.LBB0_155:                              #   in Loop: Header=BB0_2 Depth=1
	beq r3, zero, .LBB0_157
.LBB0_156:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r14, 0
.LBB0_157:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r5
	setle.f r2, r5, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_159
# %bb.158:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r5, 0
.LBB0_159:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r8, r3
	loadli.w r14,  -360(r30)                # 4-byte Folded Reload
	addli r5, r3, 0
	bneq r1, zero, .LBB0_161
# %bb.160:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r8, 0
.LBB0_161:                              #   in Loop: Header=BB0_2 Depth=1
	slli r1, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r3, 9
	srli r4, r8, 23
	srli r6, r3, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r6, r6, 255
	setlti r4, r4, 255
	setlti r6, r6, 255
	or r1, r4, r1
	or r2, r6, r2
	and r1, r2, r1
	bneq r1, zero, .LBB0_163
# %bb.162:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
.LBB0_163:                              #   in Loop: Header=BB0_2 Depth=1
	loadli.w r7,  -288(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -292(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r3, zero, .LBB0_165
# %bb.164:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r5, 0
.LBB0_165:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_167
# %bb.166:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r3, 0
.LBB0_167:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r5
	setle.f r2, r5, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_169
# %bb.168:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r5, 0
.LBB0_169:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r28, r8
	addli r3, r8, 0
	bneq r1, zero, .LBB0_171
# %bb.170:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r28, 0
.LBB0_171:                              #   in Loop: Header=BB0_2 Depth=1
	slli r1, r28, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r8, 9
	srli r4, r28, 23
	srli r5, r8, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r1, r4, r1
	or r2, r5, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_586
# %bb.172:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r8, zero, .LBB0_587
.LBB0_173:                              #   in Loop: Header=BB0_2 Depth=1
	beq r28, zero, .LBB0_175
.LBB0_174:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r8, 0
.LBB0_175:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r2, r3, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_177
# %bb.176:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r3, 0
.LBB0_177:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r18, r28
	loadli.w r8,  -260(r30)                 # 4-byte Folded Reload
	addli r3, r28, 0
	bneq r1, zero, .LBB0_179
# %bb.178:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r18, 0
.LBB0_179:                              #   in Loop: Header=BB0_2 Depth=1
	slli r1, r18, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r28, 9
	srli r4, r18, 23
	srli r5, r28, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r1, r4, r1
	or r2, r5, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_588
# %bb.180:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r28, zero, .LBB0_589
.LBB0_181:                              #   in Loop: Header=BB0_2 Depth=1
	beq r18, zero, .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r28, 0
.LBB0_183:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r2, r3, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_185
# %bb.184:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r3, 0
.LBB0_185:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r22, r18
	loadli.w r28,  -340(r30)                # 4-byte Folded Reload
	addli r3, r18, 0
	bneq r1, zero, .LBB0_187
# %bb.186:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r22, 0
.LBB0_187:                              #   in Loop: Header=BB0_2 Depth=1
	slli r1, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r18, 9
	srli r4, r22, 23
	srli r5, r18, 23
	loadli.w r27,  -312(r30)                # 4-byte Folded Reload
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r1, r4, r1
	or r2, r5, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_590
# %bb.188:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r18, zero, .LBB0_591
.LBB0_189:                              #   in Loop: Header=BB0_2 Depth=1
	beq r22, zero, .LBB0_191
.LBB0_190:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r18, 0
.LBB0_191:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r2, r3, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_193
# %bb.192:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r3, 0
.LBB0_193:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r10, r22
	loadli.w r18,  -308(r30)                # 4-byte Folded Reload
	addli r3, r22, 0
	bneq r1, zero, .LBB0_195
# %bb.194:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r10, 0
.LBB0_195:                              #   in Loop: Header=BB0_2 Depth=1
	slli r1, r10, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r22, 9
	srli r4, r10, 23
	srli r5, r22, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r1, r4, r1
	or r2, r5, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_592
# %bb.196:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r22, zero, .LBB0_593
.LBB0_197:                              #   in Loop: Header=BB0_2 Depth=1
	beq r10, zero, .LBB0_199
.LBB0_198:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r22, 0
.LBB0_199:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r2, r3, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_201
# %bb.200:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r3, 0
.LBB0_201:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r9, r10
	loadli.w r22,  -324(r30)                # 4-byte Folded Reload
	addli r3, r10, 0
	bneq r1, zero, .LBB0_203
# %bb.202:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r9, 0
.LBB0_203:                              #   in Loop: Header=BB0_2 Depth=1
	slli r1, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r10, 9
	srli r4, r9, 23
	srli r5, r10, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r1, r4, r1
	or r2, r5, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_594
# %bb.204:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_595
.LBB0_205:                              #   in Loop: Header=BB0_2 Depth=1
	beq r9, zero, .LBB0_207
.LBB0_206:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r10, 0
.LBB0_207:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r2, r3, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_209
# %bb.208:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r3, 0
.LBB0_209:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r4, r9
	loadli.w r10,  -256(r30)                # 4-byte Folded Reload
	addli r3, r9, 0
	bneq r1, zero, .LBB0_211
# %bb.210:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r4, 0
.LBB0_211:                              #   in Loop: Header=BB0_2 Depth=1
	slli r1, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r9, 9
	srli r4, r4, 23
	srli r5, r9, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r1, r4, r1
	or r2, r5, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_596
# %bb.212:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r9, zero, .LBB0_597
.LBB0_213:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_215
.LBB0_214:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r9, 0
.LBB0_215:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r2, r3, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_217
# %bb.216:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r3, 0
.LBB0_217:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r14, r5
	addli r3, r5, 0
	bneq r1, zero, .LBB0_219
# %bb.218:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r14, 0
.LBB0_219:                              #   in Loop: Header=BB0_2 Depth=1
	slli r1, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r2, r5, 9
	srli r4, r14, 23
	addli r9, r5, 0
	srli r5, r5, 23
	seteq r1, r1, zero
	seteq r2, r2, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r1, r4, r1
	or r2, r5, r2
	and r1, r2, r1
	beq r1, zero, .LBB0_598
# %bb.220:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_599
.LBB0_221:                              #   in Loop: Header=BB0_2 Depth=1
	beq r14, zero, .LBB0_223
.LBB0_222:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r9, 0
.LBB0_223:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r2, r3, zero
	and r1, r2, r1
	bneq r1, zero, .LBB0_225
# %bb.224:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r3, 0
.LBB0_225:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r1, r4, r14
	addli r2, r14, 0
	bneq r1, zero, .LBB0_227
# %bb.226:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r4, 0
.LBB0_227:                              #   in Loop: Header=BB0_2 Depth=1
	slli r1, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r14, 9
	srli r4, r4, 23
	srli r5, r14, 23
	seteq r1, r1, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r1, r4, r1
	or r3, r5, r3
	and r1, r3, r1
	bneq r1, zero, .LBB0_229
# %bb.228:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 523264
.LBB0_229:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_231
# %bb.230:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r2, 0
.LBB0_231:                              #   in Loop: Header=BB0_2 Depth=1
	loadli.w r5,  -200(r30)                 # 4-byte Folded Reload
	addli r1, r14, 0
	addli r14, r6, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_233
# %bb.232:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_233:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r2
	setle.f r3, r2, zero
	addli r6, r7, 0
	and r1, r3, r1
	bneq r1, zero, .LBB0_235
# %bb.234:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r2, 0
.LBB0_235:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r13, r5
	loadli.w r7,  -280(r30)                 # 4-byte Folded Reload
	addli r1, r5, 0
	bneq r2, zero, .LBB0_237
# %bb.236:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r13, 0
.LBB0_237:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r13, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r13, 23
	addli r9, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_600
# %bb.238:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_601
.LBB0_239:                              #   in Loop: Header=BB0_2 Depth=1
	beq r13, zero, .LBB0_241
.LBB0_240:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r9, 0
.LBB0_241:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_243
# %bb.242:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
.LBB0_243:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r13
	addli r1, r13, 0
	addli r9, r7, 0
	bneq r2, zero, .LBB0_245
# %bb.244:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_245:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r13, 9
	srli r4, r4, 23
	srli r5, r13, 23
	addli r7, r6, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_602
# %bb.246:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r13, zero, .LBB0_603
.LBB0_247:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_249
.LBB0_248:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r13, 0
.LBB0_249:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_251
# %bb.250:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_251:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r24, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_253
# %bb.252:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r24, 0
.LBB0_253:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r24, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r24, 23
	addli r13, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_604
# %bb.254:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_605
.LBB0_255:                              #   in Loop: Header=BB0_2 Depth=1
	beq r24, zero, .LBB0_257
.LBB0_256:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r13, 0
.LBB0_257:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_259
# %bb.258:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r1, 0
.LBB0_259:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r24
	addli r1, r24, 0
	bneq r2, zero, .LBB0_261
# %bb.260:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_261:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r24, 9
	srli r4, r4, 23
	srli r5, r24, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_606
# %bb.262:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r24, zero, .LBB0_607
.LBB0_263:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_265
.LBB0_264:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r24, 0
.LBB0_265:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_267
# %bb.266:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_267:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r20, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_269
# %bb.268:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r20, 0
.LBB0_269:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r20, 23
	addli r24, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_608
# %bb.270:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r24, zero, .LBB0_609
.LBB0_271:                              #   in Loop: Header=BB0_2 Depth=1
	beq r20, zero, .LBB0_273
.LBB0_272:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r24, 0
.LBB0_273:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_275
# %bb.274:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
.LBB0_275:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r20
	addli r1, r20, 0
	bneq r2, zero, .LBB0_277
# %bb.276:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_277:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r20, 9
	srli r4, r4, 23
	srli r5, r20, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_610
# %bb.278:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r20, zero, .LBB0_611
.LBB0_279:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_281
.LBB0_280:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r20, 0
.LBB0_281:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_283
# %bb.282:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_283:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r25, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_285
# %bb.284:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r25, 0
.LBB0_285:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r25, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r25, 23
	addli r20, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_612
# %bb.286:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_613
.LBB0_287:                              #   in Loop: Header=BB0_2 Depth=1
	beq r25, zero, .LBB0_289
.LBB0_288:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r20, 0
.LBB0_289:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_291
# %bb.290:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
.LBB0_291:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r25
	addli r1, r25, 0
	bneq r2, zero, .LBB0_293
# %bb.292:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_293:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r25, 9
	srli r4, r4, 23
	srli r5, r25, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_614
# %bb.294:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r25, zero, .LBB0_615
.LBB0_295:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_297
.LBB0_296:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r25, 0
.LBB0_297:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_299
# %bb.298:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_299:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r28, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_301
# %bb.300:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r28, 0
.LBB0_301:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r28, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r28, 23
	addli r25, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_616
# %bb.302:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_617
.LBB0_303:                              #   in Loop: Header=BB0_2 Depth=1
	beq r28, zero, .LBB0_305
.LBB0_304:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r25, 0
.LBB0_305:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_307
# %bb.306:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
.LBB0_307:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r28
	addli r1, r28, 0
	bneq r2, zero, .LBB0_309
# %bb.308:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_309:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r28, 9
	srli r4, r4, 23
	srli r5, r28, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_618
# %bb.310:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r28, zero, .LBB0_619
.LBB0_311:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_313
.LBB0_312:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r28, 0
.LBB0_313:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_315
# %bb.314:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_315:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r17, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_317
# %bb.316:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r17, 0
.LBB0_317:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r17, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r17, 23
	addli r28, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_620
# %bb.318:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_621
.LBB0_319:                              #   in Loop: Header=BB0_2 Depth=1
	beq r17, zero, .LBB0_321
.LBB0_320:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r28, 0
.LBB0_321:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_323
# %bb.322:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
.LBB0_323:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r17
	addli r1, r17, 0
	bneq r2, zero, .LBB0_325
# %bb.324:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_325:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r17, 9
	srli r4, r4, 23
	srli r5, r17, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_622
# %bb.326:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r17, zero, .LBB0_623
.LBB0_327:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_329
.LBB0_328:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r17, 0
.LBB0_329:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_331
# %bb.330:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_331:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r12, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_333
# %bb.332:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_333:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r12, 23
	addli r17, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_624
# %bb.334:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_625
.LBB0_335:                              #   in Loop: Header=BB0_2 Depth=1
	beq r12, zero, .LBB0_337
.LBB0_336:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r17, 0
.LBB0_337:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_339
# %bb.338:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_339:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r12
	addli r1, r12, 0
	bneq r2, zero, .LBB0_341
# %bb.340:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_341:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r12, 9
	srli r4, r4, 23
	srli r5, r12, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_626
# %bb.342:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r12, zero, .LBB0_627
.LBB0_343:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_345
.LBB0_344:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r12, 0
.LBB0_345:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_347
# %bb.346:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_347:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r11, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_349
# %bb.348:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r11, 0
.LBB0_349:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r11, 23
	addli r12, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_628
# %bb.350:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_629
.LBB0_351:                              #   in Loop: Header=BB0_2 Depth=1
	beq r11, zero, .LBB0_353
.LBB0_352:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r12, 0
.LBB0_353:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_355
# %bb.354:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_355:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r11
	loadli.w r12,  -304(r30)                # 4-byte Folded Reload
	addli r1, r11, 0
	bneq r2, zero, .LBB0_357
# %bb.356:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_357:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r11, 9
	srli r4, r4, 23
	srli r5, r11, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_630
# %bb.358:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r11, zero, .LBB0_631
.LBB0_359:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_361
.LBB0_360:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r11, 0
.LBB0_361:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_363
# %bb.362:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_363:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r22, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_365
# %bb.364:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r22, 0
.LBB0_365:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r22, 23
	addli r11, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_632
# %bb.366:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_633
.LBB0_367:                              #   in Loop: Header=BB0_2 Depth=1
	beq r22, zero, .LBB0_369
.LBB0_368:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r11, 0
.LBB0_369:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_371
# %bb.370:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
.LBB0_371:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r22
	loadli.w r11,  -344(r30)                # 4-byte Folded Reload
	addli r1, r22, 0
	bneq r2, zero, .LBB0_373
# %bb.372:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_373:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r22, 9
	srli r4, r4, 23
	srli r5, r22, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_634
# %bb.374:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r22, zero, .LBB0_635
.LBB0_375:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_377
.LBB0_376:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r22, 0
.LBB0_377:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_379
# %bb.378:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_379:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r16, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_381
# %bb.380:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r16, 0
.LBB0_381:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r16, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r16, 23
	addli r22, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_636
# %bb.382:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r22, zero, .LBB0_637
.LBB0_383:                              #   in Loop: Header=BB0_2 Depth=1
	beq r16, zero, .LBB0_385
.LBB0_384:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r22, 0
.LBB0_385:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_387
# %bb.386:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r1, 0
.LBB0_387:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r15, r16
	addli r1, r16, 0
	bneq r2, zero, .LBB0_389
# %bb.388:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r15, 0
.LBB0_389:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r15, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r16, 9
	srli r4, r15, 23
	srli r5, r16, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_638
# %bb.390:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_639
.LBB0_391:                              #   in Loop: Header=BB0_2 Depth=1
	beq r15, zero, .LBB0_393
.LBB0_392:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r16, 0
.LBB0_393:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_395
# %bb.394:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
.LBB0_395:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r15
	addli r1, r15, 0
	bneq r2, zero, .LBB0_397
# %bb.396:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_397:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r15, 9
	srli r4, r4, 23
	srli r5, r15, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_640
# %bb.398:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r15, zero, .LBB0_641
.LBB0_399:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_401
.LBB0_400:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r15, 0
.LBB0_401:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_403
# %bb.402:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_403:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r27, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_405
# %bb.404:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r27, 0
.LBB0_405:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r27, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r27, 23
	addli r15, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_642
# %bb.406:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r15, zero, .LBB0_643
.LBB0_407:                              #   in Loop: Header=BB0_2 Depth=1
	beq r27, zero, .LBB0_409
.LBB0_408:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r15, 0
.LBB0_409:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_411
# %bb.410:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
.LBB0_411:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r18, r27
	addli r1, r27, 0
	bneq r2, zero, .LBB0_413
# %bb.412:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r18, 0
.LBB0_413:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r18, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r27, 9
	srli r4, r18, 23
	srli r5, r27, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_644
# %bb.414:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_645
.LBB0_415:                              #   in Loop: Header=BB0_2 Depth=1
	beq r18, zero, .LBB0_417
.LBB0_416:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r27, 0
.LBB0_417:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_419
# %bb.418:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
.LBB0_419:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r18
	addli r1, r18, 0
	bneq r2, zero, .LBB0_421
# %bb.420:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_421:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r18, 9
	srli r4, r4, 23
	srli r5, r18, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_646
# %bb.422:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r18, zero, .LBB0_647
.LBB0_423:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_425
.LBB0_424:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r18, 0
.LBB0_425:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_427
# %bb.426:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_427:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r12, r5
	loadli.w r18,  -380(r30)                # 4-byte Folded Reload
	addli r1, r5, 0
	bneq r2, zero, .LBB0_429
# %bb.428:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_429:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r12, 23
	addli r22, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_648
# %bb.430:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -152(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_649
.LBB0_431:                              #   in Loop: Header=BB0_2 Depth=1
	beq r12, zero, .LBB0_433
.LBB0_432:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r22, 0
.LBB0_433:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_435
# %bb.434:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_435:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r12
	addli r1, r12, 0
	addli r22, r18, 0
	bneq r2, zero, .LBB0_437
# %bb.436:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_437:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r12, 9
	srli r4, r4, 23
	srli r5, r12, 23
	loadli.w r18,  -376(r30)                # 4-byte Folded Reload
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_650
# %bb.438:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r12, zero, .LBB0_651
.LBB0_439:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -152(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_441
.LBB0_440:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r12, 0
.LBB0_441:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_443
# %bb.442:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_443:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r11, r5
	loadli.w r12,  -300(r30)                # 4-byte Folded Reload
	addli r1, r5, 0
	bneq r2, zero, .LBB0_445
# %bb.444:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r11, 0
.LBB0_445:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r11, 23
	addli r24, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_652
# %bb.446:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r24, zero, .LBB0_653
.LBB0_447:                              #   in Loop: Header=BB0_2 Depth=1
	beq r11, zero, .LBB0_449
.LBB0_448:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r24, 0
.LBB0_449:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_451
# %bb.450:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_451:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r12, r11
	addli r1, r11, 0
	bneq r2, zero, .LBB0_453
# %bb.452:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_453:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r11, 9
	srli r4, r12, 23
	srli r5, r11, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_654
# %bb.454:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r11, zero, .LBB0_655
.LBB0_455:                              #   in Loop: Header=BB0_2 Depth=1
	beq r12, zero, .LBB0_457
.LBB0_456:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r11, 0
.LBB0_457:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_459
# %bb.458:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_459:                              #   in Loop: Header=BB0_2 Depth=1
	loadli.w r11,  -296(r30)                # 4-byte Folded Reload
	addli r1, r12, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r11, r12
	bneq r2, zero, .LBB0_461
# %bb.460:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r11, 0
.LBB0_461:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r12, 9
	srli r4, r11, 23
	srli r5, r12, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_656
# %bb.462:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r12, zero, .LBB0_657
.LBB0_463:                              #   in Loop: Header=BB0_2 Depth=1
	beq r11, zero, .LBB0_465
.LBB0_464:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r12, 0
.LBB0_465:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_467
# %bb.466:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_467:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r14, r11
	addli r1, r11, 0
	bneq r2, zero, .LBB0_469
# %bb.468:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
.LBB0_469:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r11, 9
	srli r4, r14, 23
	srli r5, r11, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_658
# %bb.470:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r11, zero, .LBB0_659
.LBB0_471:                              #   in Loop: Header=BB0_2 Depth=1
	beq r14, zero, .LBB0_473
.LBB0_472:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r11, 0
.LBB0_473:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_475
# %bb.474:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
.LBB0_475:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r7, r14
	addli r1, r14, 0
	bneq r2, zero, .LBB0_477
# %bb.476:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r7, 0
.LBB0_477:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r7, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r14, 9
	srli r4, r7, 23
	srli r5, r14, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_660
# %bb.478:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -148(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_661
.LBB0_479:                              #   in Loop: Header=BB0_2 Depth=1
	beq r7, zero, .LBB0_481
.LBB0_480:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r14, 0
.LBB0_481:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_483
# %bb.482:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
.LBB0_483:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r7
	addli r1, r7, 0
	bneq r2, zero, .LBB0_485
# %bb.484:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_485:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r7, 9
	srli r4, r4, 23
	srli r5, r7, 23
	loadli.w r12,  -252(r30)                # 4-byte Folded Reload
	loadli.w r11,  -248(r30)                # 4-byte Folded Reload
	addli r6, r7, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_487
# %bb.486:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_487:                              #   in Loop: Header=BB0_2 Depth=1
	load.d r[13:14], 16(r30)
	loadli.w r7,  -284(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_489
# %bb.488:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_489:                              #   in Loop: Header=BB0_2 Depth=1
	load.d r[24:25], 0(r30)
	loadli.w r17,  -372(r30)                # 4-byte Folded Reload
	loadli.w r5,  -148(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_491
# %bb.490:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r6, 0
.LBB0_491:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r27,  36(r30)
	and r2, r3, r2
	bneq r2, zero, .LBB0_493
# %bb.492:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_493:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r7, r5
	loadli.w r16,  40(r30)
	loadli.w r6,  -276(r30)                 # 4-byte Folded Reload
	addli r1, r5, 0
	bneq r2, zero, .LBB0_495
# %bb.494:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r7, 0
.LBB0_495:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r7, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r7, 23
	addli r15, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_662
# %bb.496:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r15, zero, .LBB0_663
.LBB0_497:                              #   in Loop: Header=BB0_2 Depth=1
	beq r7, zero, .LBB0_499
.LBB0_498:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r15, 0
.LBB0_499:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_501
# %bb.500:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
.LBB0_501:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r9, r7
	addli r1, r7, 0
	addli r15, r16, 0
	bneq r2, zero, .LBB0_503
# %bb.502:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r9, 0
.LBB0_503:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r7, 9
	srli r4, r9, 23
	srli r5, r7, 23
	addli r16, r27, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_664
# %bb.504:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli.d r[27:28], r[24:25], 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_665
.LBB0_505:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli.d r[24:25], r[13:14], 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_507
.LBB0_506:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r7, 0
.LBB0_507:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_509
# %bb.508:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_509:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r6, r9
	loadli.w r7,  -272(r30)                 # 4-byte Folded Reload
	addli r1, r9, 0
	bneq r2, zero, .LBB0_511
# %bb.510:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r6, 0
.LBB0_511:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r9, 9
	srli r4, r6, 23
	srli r5, r9, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_666
# %bb.512:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r9, zero, .LBB0_667
.LBB0_513:                              #   in Loop: Header=BB0_2 Depth=1
	beq r6, zero, .LBB0_515
.LBB0_514:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r9, 0
.LBB0_515:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_517
# %bb.516:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_517:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r7, r6
	loadli.w r9,  -268(r30)                 # 4-byte Folded Reload
	addli r1, r6, 0
	bneq r2, zero, .LBB0_519
# %bb.518:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r7, 0
.LBB0_519:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r7, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r6, 9
	srli r4, r7, 23
	srli r5, r6, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_668
# %bb.520:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r6, zero, .LBB0_669
.LBB0_521:                              #   in Loop: Header=BB0_2 Depth=1
	beq r7, zero, .LBB0_523
.LBB0_522:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r6, 0
.LBB0_523:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_525
# %bb.524:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
.LBB0_525:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r9, r7
	loadli.w r6,  -264(r30)                 # 4-byte Folded Reload
	addli r1, r7, 0
	bneq r2, zero, .LBB0_527
# %bb.526:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r9, 0
.LBB0_527:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r7, 9
	srli r4, r9, 23
	srli r5, r7, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_670
# %bb.528:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r7, zero, .LBB0_671
.LBB0_529:                              #   in Loop: Header=BB0_2 Depth=1
	beq r9, zero, .LBB0_531
.LBB0_530:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r7, 0
.LBB0_531:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_533
# %bb.532:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_533:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r6, r9
	addli r1, r9, 0
	bneq r2, zero, .LBB0_535
# %bb.534:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r6, 0
.LBB0_535:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r9, 9
	srli r4, r6, 23
	srli r5, r9, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_672
# %bb.536:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r9, zero, .LBB0_673
.LBB0_537:                              #   in Loop: Header=BB0_2 Depth=1
	beq r6, zero, .LBB0_539
.LBB0_538:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r9, 0
.LBB0_539:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_541
.Ltmp2:
# %bb.540:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_541:                              #   in Loop: Header=BB0_2 Depth=1
	stores.w r6, 0(r21)
.LBB0_542:                              #   in Loop: Header=BB0_2 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	loads.w r1, 0(r21)
.Ltmp3:
	.file	3 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	3 263 15 is_stmt 1              # standard.py:263:15
	addli r2, zero, 32
	blt.s r12, r2, .LBB0_550
.Ltmp4:
# %bb.543:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	3 0 15 is_stmt 0                # standard.py:0:15
	addli r2, zero, 0
	j .LBB0_551
.LBB0_544:                              # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	lui r2, 523264
	addli r7, r10, 0
	beq r10, zero, .LBB0_6
.LBB0_545:                              # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	addli r7, r2, 0
	bneq r1, zero, .LBB0_7
	j .LBB0_8
.LBB0_546:                              # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	lui r3, 523264
	addli r4, r8, 0
	beq r8, zero, .LBB0_14
.LBB0_547:                              # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	addli r4, r3, 0
	bneq r2, zero, .LBB0_15
	j .LBB0_16
.LBB0_548:                              # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	lui r3, 523264
.Ltmp5:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r1, zero, .LBB0_22
.LBB0_549:                              # %.split15.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r1, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r2, zero, .LBB0_23
	j .LBB0_24
.Ltmp6:
.LBB0_550:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	load.hu r2, -124(r30)
	load.hu r4, -60(r30)
	load.hu r3, -122(r30)
	load.hu r5, -58(r30)
	add.hf.rn r2, r2, r4
	add.hf.rn r3, r3, r5
	sub.f.rn r4, r10, r1
	sub.f.rn r5, r8, r1
	hfloat2float.rn r2, r2
	hfloat2float.rn r3, r3
	exp.f.rn r4, r4
	exp.f.rn r5, r5
	sub.f.rn r2, r2, r1
	sub.f.rn r3, r3, r1
	exp.f.rn r2, r2
	exp.f.rn r3, r3
.Ltmp7:
	.loc	3 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r2, r4, r2
	add.f.rn r3, r5, r3
	add.f.rn r2, r2, r3
.LBB0_551:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	3 0 15 is_stmt 0                # standard.py:0:15
	loadli.w r3,  -212(r30)                 # 4-byte Folded Reload
	stores.w r2, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	loadli.w r2,  -132(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_553
# %bb.552:                              #   in Loop: Header=BB0_2 Depth=1
	loads.w r2, 0(r23)
	loads.w r4, 4(r23)
	loads.w r3, 8(r23)
	.loc	3 263 15                        # standard.py:263:15
	add.f.rn r2, r2, r4
	loads.w r4, 12(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 16(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 20(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 24(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 28(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 32(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 36(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 40(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 44(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 48(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 52(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 56(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 60(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 64(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 68(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 72(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 76(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 80(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 84(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 88(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 92(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 96(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 100(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 104(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 108(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 112(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 116(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 120(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 124(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 128(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 132(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 136(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 140(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 144(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 148(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 152(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 156(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 160(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 164(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 168(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 172(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 176(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 180(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 184(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 188(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 192(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 196(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 200(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 204(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 208(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 212(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 216(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 220(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 224(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 228(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 232(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 236(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 240(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 244(r23)
	add.f.rn r2, r2, r3
	loads.w r3, 248(r23)
	add.f.rn r2, r2, r4
	loads.w r4, 252(r23)
	add.f.rn r2, r2, r3
	add.f.rn r2, r2, r4
	stores.w r2, 0(r23)
.Ltmp8:
.LBB0_553:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	3 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	loadli.w r2,  -224(r30)                 # 4-byte Folded Reload
	loads.w r8, 0(r23)
	addli r4, r26, 2
	addli r3, r26, 6
	addli r9, zero, 1
	addli r10, zero, 0
	addli r20, r30, -128
	add.s r7, r2, r11
	loadli.w r2,  -228(r30)                 # 4-byte Folded Reload
	add.s r6, r2, r11
	loadli.w r2,  -232(r30)                 # 4-byte Folded Reload
	add.s r5, r2, r11
	addli r2, r26, 4
.LBB0_554:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 46 is_stmt 1               # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:38:46
	slli r10, r10, 1
	add.s r11, r20, r10
	.loc	1 39 37                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:39:37
	add.s r10, r26, r10
	.loc	1 38 46                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:38:46
	load.hu r12, 0(r11)
	.loc	1 39 37                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:39:37
	load.hu r13, 0(r10)
	.loc	1 38 46                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:38:46
	load.hu r11, 2(r11)
	.loc	1 39 37                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:39:37
	load.hu r14, 2(r10)
	.loc	1 45 19                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:45:19
	add.hf.rn r12, r12, r13
	add.hf.rn r11, r11, r14
	.loc	1 58 48                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:58:48
	andi r13, r9, 1
	.loc	1 46 19                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:46:19
	hfloat2float.rn r12, r12
	hfloat2float.rn r11, r11
	.loc	1 51 19                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:51:19
	sub.f.rn r12, r12, r1
	sub.f.rn r11, r11, r1
	.loc	1 52 26                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:52:26
	exp.f.rn r12, r12
	exp.f.rn r11, r11
	.loc	1 56 21                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:56:21
	div.f.rn r11, r11, r8
	div.f.rn r12, r12, r8
	.loc	1 58 48                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:58:48
	float2hfloat.rn r9, r12
	float2hfloat.rn r11, r11
	store.h r9, 0(r10)
	store.h r11, 2(r10)
	addli r10, zero, 2
	addli r9, zero, 0
	mfence { lm }
	bneq r13, zero, .LBB0_554
# %bb.555:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	1 58 25 is_stmt 0               # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:58:25
	sext_int2long r[7:8], r7
	addli r1, zero, 1
	sext_int2long r[11:12], r6
	load.d r[9:10], -144(r30)               # 8-byte Folded Reload
	addli r20, zero, 2
	sext_int2long r[13:14], r5
	sll.d r[7:8], r[7:8], r1
	sll.d r[11:12], r[11:12], r1
	.loc	1 58 48                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:58:48
	lui r1, 983040
	.loc	1 58 25                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:58:25
	add.ul r[9:10], r[24:25], r[9:10]
	.loc	1 58 48                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:58:48
	or r1, r20, r1
	.loc	1 58 25                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:58:25
	add.ul r[6:7], r[24:25], r[7:8]
	add.ul r[11:12], r[24:25], r[11:12]
	.loc	1 58 48                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:58:48
	s_lm2gm r1, r26, 0(r[9:10])
	lui r1, 983040
	addli r10, zero, 1
	or r1, r20, r1
	.loc	1 58 25                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:58:25
	sll.d r[8:9], r[13:14], r10
	.loc	1 58 48                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:58:48
	s_lm2gm r1, r4, 0(r[6:7])
	lui r1, 983040
	lui r4, 983040
	.loc	1 58 25                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:58:25
	add.ul r[8:9], r[24:25], r[8:9]
	addli r6, r30, -128
	.loc	1 58 48                         # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:58:48
	or r1, r20, r1
	or r4, r20, r4
	s_lm2gm r1, r2, 0(r[11:12])
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	s_lm2gm r4, r3, 0(r[8:9])
	mfence { lm }
	add.s r19, r19, r1
	loadli.w r1,  -208(r30)                 # 4-byte Folded Reload
	blt.s r19, r1, .LBB0_2
	j .LBB0_674
.LBB0_556:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 48                          # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:0:48
	lui r2, 523264
.Ltmp9:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r3, zero, .LBB0_33
.LBB0_557:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r3, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_34
	j .LBB0_35
.LBB0_558:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_41
.LBB0_559:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_42
	j .LBB0_43
.LBB0_560:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_49
.LBB0_561:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_50
	j .LBB0_51
.LBB0_562:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	loadli.w r24,  -352(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_67
.LBB0_563:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_68
	j .LBB0_69
.LBB0_564:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	loadli.w r11,  -328(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_75
.LBB0_565:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_76
	j .LBB0_77
.LBB0_566:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_83
.LBB0_567:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_84
	j .LBB0_85
.LBB0_568:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_91
.LBB0_569:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_92
	j .LBB0_93
.LBB0_570:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_99
.LBB0_571:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_100
	j .LBB0_101
.LBB0_572:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_107
.LBB0_573:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_108
	j .LBB0_109
.LBB0_574:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r16, zero, .LBB0_115
.LBB0_575:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_116
	j .LBB0_117
.LBB0_576:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_123
.LBB0_577:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_124
	j .LBB0_125
.LBB0_578:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_131
.LBB0_579:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_132
	j .LBB0_133
.LBB0_580:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	loadli.w r9,  -364(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_139
.LBB0_581:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_140
	j .LBB0_141
.LBB0_582:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_147
.LBB0_583:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_148
	j .LBB0_149
.LBB0_584:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_155
.LBB0_585:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_156
	j .LBB0_157
.LBB0_586:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_173
.LBB0_587:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_174
	j .LBB0_175
.LBB0_588:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_181
.LBB0_589:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r18, zero, .LBB0_182
	j .LBB0_183
.LBB0_590:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_189
.LBB0_591:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_190
	j .LBB0_191
.LBB0_592:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_197
.LBB0_593:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_198
	j .LBB0_199
.LBB0_594:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r4,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_205
.LBB0_595:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_206
	j .LBB0_207
.LBB0_596:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_213
.LBB0_597:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r3, 0
	loadli.w r5,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_214
	j .LBB0_215
.LBB0_598:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r4,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_221
.LBB0_599:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_222
	j .LBB0_223
.LBB0_600:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_239
.LBB0_601:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_240
	j .LBB0_241
.LBB0_602:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_247
.LBB0_603:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_248
	j .LBB0_249
.LBB0_604:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_255
.LBB0_605:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r24, zero, .LBB0_256
	j .LBB0_257
.LBB0_606:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r24, zero, .LBB0_263
.LBB0_607:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r1, 0
	loadli.w r5,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_264
	j .LBB0_265
.LBB0_608:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r24, zero, .LBB0_271
.LBB0_609:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_272
	j .LBB0_273
.LBB0_610:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_279
.LBB0_611:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	loadli.w r5,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_280
	j .LBB0_281
.LBB0_612:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_287
.LBB0_613:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_288
	j .LBB0_289
.LBB0_614:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_295
.LBB0_615:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
	loadli.w r5,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_296
	j .LBB0_297
.LBB0_616:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_303
.LBB0_617:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_304
	j .LBB0_305
.LBB0_618:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_311
.LBB0_619:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
	loadli.w r5,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_312
	j .LBB0_313
.LBB0_620:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_319
.LBB0_621:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_320
	j .LBB0_321
.LBB0_622:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_327
.LBB0_623:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
	loadli.w r5,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_328
	j .LBB0_329
.LBB0_624:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_335
.LBB0_625:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_336
	j .LBB0_337
.LBB0_626:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_343
.LBB0_627:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	loadli.w r5,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_344
	j .LBB0_345
.LBB0_628:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_351
.LBB0_629:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_352
	j .LBB0_353
.LBB0_630:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_359
.LBB0_631:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	loadli.w r5,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_360
	j .LBB0_361
.LBB0_632:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_367
.LBB0_633:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_368
	j .LBB0_369
.LBB0_634:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_375
.LBB0_635:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	loadli.w r5,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_376
	j .LBB0_377
.LBB0_636:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_383
.LBB0_637:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_384
	j .LBB0_385
.LBB0_638:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r16, zero, .LBB0_391
.LBB0_639:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_392
	j .LBB0_393
.LBB0_640:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_399
.LBB0_641:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
	loadli.w r5,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_400
	j .LBB0_401
.LBB0_642:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_407
.LBB0_643:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_408
	j .LBB0_409
.LBB0_644:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_415
.LBB0_645:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r18, zero, .LBB0_416
	j .LBB0_417
.LBB0_646:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_423
.LBB0_647:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
	loadli.w r5,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_424
	j .LBB0_425
.LBB0_648:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -152(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_431
.LBB0_649:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_432
	j .LBB0_433
.LBB0_650:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_439
.LBB0_651:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	loadli.w r5,  -152(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_440
	j .LBB0_441
.LBB0_652:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r24, zero, .LBB0_447
.LBB0_653:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_448
	j .LBB0_449
.LBB0_654:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_455
.LBB0_655:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_456
	j .LBB0_457
.LBB0_656:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_463
.LBB0_657:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_464
	j .LBB0_465
.LBB0_658:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_471
.LBB0_659:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_472
	j .LBB0_473
.LBB0_660:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -148(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_479
.LBB0_661:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_480
	j .LBB0_481
.LBB0_662:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_497
.LBB0_663:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_498
	j .LBB0_499
.LBB0_664:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	addli.d r[27:28], r[24:25], 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_505
.LBB0_665:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
	addli.d r[24:25], r[13:14], 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_506
	j .LBB0_507
.LBB0_666:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_513
.LBB0_667:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_514
	j .LBB0_515
.LBB0_668:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_521
.LBB0_669:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_522
	j .LBB0_523
.LBB0_670:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_529
.LBB0_671:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_530
	j .LBB0_531
.LBB0_672:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_537
.LBB0_673:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_538
	j .LBB0_539
.Ltmp10:
.LBB0_674:                              # %._crit_edge
	.loc	1 58 4 epilogue_begin is_stmt 1 # cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py:58:4
	addli sp, sp, 384
	mfence { lm, sm, gm }
	exit
.Ltmp11:
.Lfunc_end0:
	.size	triton_unk_fused_0, .Lfunc_end0-triton_unk_fused_0
	.cfi_endproc
                                        # -- End function
	.type	global_smem,@object             # @global_smem
	.section	".sm.LLVMDialectModule;global_smem","a",@nobits
	.p2align	3, 0x0
global_smem:
	.size	global_smem, 0

	.type	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_PARAM_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0:
	.long	44                              # 0x2c
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	448                             # 0x1c0
	.size	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0,@object # @XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0
	.section	.XPU.KERNEL_DYNAMIC_LM.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0, 4

	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
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
	.byte	2                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	32                              # DW_AT_inline
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
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
	.byte	1                               # Abbrev [1] 0xb:0x63 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	2                               # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x26:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_inline
	.byte	3                               # Abbrev [3] 0x2c:0x41 DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0x19 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	50                              # DW_AT_call_line
	.byte	39                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x45:0xc DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	123                             # DW_AT_call_line
	.byte	29                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x52:0x1a DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	55                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	6                               # Abbrev [6] 0x5e:0xd DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 # DW_AT_ranges
	.byte	3                               # DW_AT_call_file
	.short	296                             # DW_AT_call_line
	.byte	36                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.Ltmp1-.Lfunc_begin0
	.long	.Ltmp2-.Lfunc_begin0
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	.Ltmp9-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp1-.Lfunc_begin0
	.long	.Ltmp2-.Lfunc_begin0
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	.Ltmp9-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges2:
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	.Ltmp7-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges3:
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	.Ltmp7-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"cu2cf64btp7hin3vljtlpx73eqqlgwewv6zl7l3ez67fuoadelwu.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/u2" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
