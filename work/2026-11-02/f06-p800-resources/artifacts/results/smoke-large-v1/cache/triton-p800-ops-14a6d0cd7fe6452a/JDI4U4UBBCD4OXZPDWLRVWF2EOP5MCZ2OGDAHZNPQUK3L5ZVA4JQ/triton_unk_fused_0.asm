	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/smoke-large-v1/cache/inductor/op" "copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py"
	.loc	1 22 0                          # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -448
	addli r30, sp, 384
	lui r1, :hi20:global_smem
	core_id r3
	lui r5, 15
	load_param_i r17, 0
	loadli.w r22,  36(r30)
	loadli.w r4,  32(r30)
	slli r2, r3, 2
	addli r1, r1, :lo12:global_smem
	ori r16, r5, 4095
	lui r5, 1046527
	loadli.w r15,  40(r30)
	add.s r13, r2, r1
	ori r5, r5, 4095
	mul.s r4, r22, r4
	stores.w zero, 1040(r13)
	mfence { lm, sm, gm }
	csr_set csr3, r16
	sync_group
	stores.w r5, 0(r13)
	mul.s r14, r4, r15
	mfence { lm, sm, gm }
	csr_set csr3, r16
	sync_group
	ble.s r14, r17, .LBB0_679
# %bb.1:                                # %.lr.ph
	addli r7, zero, 64
	andi r8, r3, 63
	addli r10, zero, 1
	load.d r[4:5], 8(r30)
	load.d r[26:27], 16(r30)
	addli r20, r13, 1040
	load_param_i r28, 1
	addli r23, r30, -128
	addli r24, r30, -64
	addli r25, zero, 60
	storeli.w r13, -360(r30)                # 4-byte Folded Spill
	storeli.w r16, -364(r30)                # 4-byte Folded Spill
	storeli.w r14, -368(r30)                # 4-byte Folded Spill
	div.s r19, r3, r7
	storeli.w r8, -132(r30)                 # 4-byte Folded Spill
	storeli.w r20, -376(r30)                # 4-byte Folded Spill
	storeli.w r28, -380(r30)                # 4-byte Folded Spill
	slli r6, r19, 6
	storeli.w r19, -372(r30)                # 4-byte Folded Spill
	sub.s r3, r3, r6
	lui r6, 1048575
	slli r8, r3, 5
	ori r3, r6, 3840
	storeli.w r8, -232(r30)                 # 4-byte Folded Spill
	sext_int2long r[8:9], r8
	and r2, r2, r3
	sll.d r[8:9], r[8:9], r10
	add.s r18, r2, r1
	add.ul r[1:2], r[4:5], r[8:9]
	addli r21, r18, 1040
	store.d r[1:2], -240(r30)               # 8-byte Folded Spill
	addli r2, zero, 2047
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	add.s r17, r17, r28
	blt.s r17, r14, .LBB0_3
	j .LBB0_679
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_561 Depth 2
                                        #     Child Loop BB0_565 Depth 2
	div.s r1, r17, r15
	div.s r1, r1, r22
.Ltmp0:
	.loc	1 28 23 prologue_end            # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:28:23
	add.s r1, r1, r19
	blt.s r2, r1, .LBB0_2
# %bb.4:                                # %.preheader.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 23 is_stmt 0                # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:0:23
	addli r2, zero, 0
.LBB0_5:                                # %.preheader
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 40 51 is_stmt 1               # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:51
	add.s r3, r23, r2
	addli r2, r2, 4
	store.h zero, 0(r3)
	store.h zero, 2(r3)
	mfence { lm }
	bneq r2, r7, .LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 40 41 is_stmt 0               # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:41
	loadli.w r2,  -232(r30)                 # 4-byte Folded Reload
	.loc	1 40 46                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:46
	slli r1, r1, 11
	.loc	1 40 34                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:34
	addli r3, zero, 1
	.loc	1 40 41                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:41
	add.s r1, r1, r2
	.loc	1 40 34                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:34
	sext_int2long r[1:2], r1
	sll.d r[4:5], r[1:2], r3
	load.d r[2:3], 0(r30)
	.loc	1 40 51                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:51
	lui r1, 983040
	or r1, r7, r1
	store.d r[4:5], -144(r30)               # 8-byte Folded Spill
	.loc	1 40 34                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:34
	add.ul r[2:3], r[2:3], r[4:5]
	.loc	1 40 51                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:51
	l_gm2lm r1, r23, 0(r[2:3])
	addli r1, zero, 0
.LBB0_7:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 41 41 is_stmt 1               # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:41:41
	add.s r2, r24, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r7, .LBB0_7
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	lui r1, 983040
	load.d r[4:5], -240(r30)                # 8-byte Folded Reload
	addli r3, zero, 0
	or r1, r7, r1
	l_gm2lm r1, r24, 0(r[4:5])
	.loc	1 40 51                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:51
	mfence { lm }
	load.hu r1, -128(r30)
	.loc	1 41 41                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:41:41
	load.hu r4, -64(r30)
	.loc	1 40 51                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:51
	load.hu r2, -126(r30)
	.loc	1 41 41                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:41:41
	load.hu r5, -62(r30)
	.loc	1 47 23                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:47:23
	add.hf.rn r1, r1, r4
	add.hf.rn r2, r2, r5
	.loc	1 48 23                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:48:23
	hfloat2float.rn r4, r1
	hfloat2float.rn r1, r2
	addli r2, r4, 0
	storeli.w r1, -152(r30)                 # 4-byte Folded Spill
	storeli.w r4, -148(r30)                 # 4-byte Folded Spill
	j .LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_10 Depth=2
	.loc	1 0 23 is_stmt 0                # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:0:23
	addli r3, r3, 4
	beq r3, r25, .LBB0_30
.LBB0_10:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 40 51 is_stmt 1               # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:51
	add.s r4, r23, r3
	.loc	1 41 41                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:41:41
	add.s r5, r24, r3
	addli r9, r2, 0
	.loc	1 40 51                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:51
	load.hu r6, 4(r4)
	.loc	1 41 41                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:41:41
	load.hu r8, 4(r5)
	.loc	1 40 51                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:51
	load.hu r4, 6(r4)
	.loc	1 47 23                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:47:23
	add.hf.rn r6, r6, r8
	.loc	1 48 23                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:48:23
	hfloat2float.rn r8, r6
	.loc	1 41 41                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:41:41
	load.hu r6, 6(r5)
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/torch/_inductor/runtime" "triton_helpers.py"
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r10, r8, r2
	bneq r10, zero, .LBB0_12
.Ltmp2:
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r9, r8, 0
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=2
	slli r5, r8, 9
.Ltmp3:
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r10, r2, 9
.Ltmp4:
	.loc	1 0 0                           # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:0:0
	srli r11, r8, 23
.Ltmp5:
	.loc	2 113 29                        # triton_helpers.py:113:29
	srli r12, r2, 23
.Ltmp6:
	.loc	1 0 0                           # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:0:0
	seteq r5, r5, zero
.Ltmp7:
	.loc	2 113 29                        # triton_helpers.py:113:29
	seteq r10, r10, zero
.Ltmp8:
	.loc	1 0 0                           # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:0:0
	andi r11, r11, 255
.Ltmp9:
	.loc	2 113 29                        # triton_helpers.py:113:29
	andi r12, r12, 255
.Ltmp10:
	.loc	1 0 0                           # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:0:0
	setlti r11, r11, 255
.Ltmp11:
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlti r12, r12, 255
.Ltmp12:
	.loc	1 0 0                           # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:0:0
	or r5, r11, r5
.Ltmp13:
	.loc	2 113 29                        # triton_helpers.py:113:29
	or r10, r12, r10
	and r5, r10, r5
	beq r5, zero, .LBB0_26
# %bb.13:                               #   in Loop: Header=BB0_10 Depth=2
	bneq r2, zero, .LBB0_27
.LBB0_14:                               #   in Loop: Header=BB0_10 Depth=2
	beq r8, zero, .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_10 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r2, 0
.LBB0_16:                               #   in Loop: Header=BB0_10 Depth=2
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r9
	setle.f r5, r9, zero
	and r5, r5, r2
	addli r2, r8, 0
	bneq r5, zero, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_10 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r9, 0
.LBB0_18:                               #   in Loop: Header=BB0_10 Depth=2
	add.hf.rn r4, r4, r6
	addli r6, r1, 0
	hfloat2float.rn r4, r4
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r4, r1
	bneq r5, zero, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_10 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r4, 0
.LBB0_20:                               #   in Loop: Header=BB0_10 Depth=2
	slli r5, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r8, r1, 9
	srli r9, r4, 23
	srli r10, r1, 23
	seteq r5, r5, zero
	seteq r8, r8, zero
	andi r9, r9, 255
	andi r10, r10, 255
	setlti r9, r9, 255
	setlti r10, r10, 255
	or r5, r9, r5
	or r8, r10, r8
	and r5, r8, r5
	beq r5, zero, .LBB0_28
# %bb.21:                               #   in Loop: Header=BB0_10 Depth=2
	bneq r1, zero, .LBB0_29
.LBB0_22:                               #   in Loop: Header=BB0_10 Depth=2
	beq r4, zero, .LBB0_24
.LBB0_23:                               #   in Loop: Header=BB0_10 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r1, 0
.LBB0_24:                               #   in Loop: Header=BB0_10 Depth=2
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r6
	setle.f r5, r6, zero
	and r5, r5, r1
	addli r1, r4, 0
	bneq r5, zero, .LBB0_9
# %bb.25:                               #   in Loop: Header=BB0_10 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r6, 0
	j .LBB0_9
.LBB0_26:                               #   in Loop: Header=BB0_10 Depth=2
	lui r9, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_14
.LBB0_27:                               #   in Loop: Header=BB0_10 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r9, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_15
	j .LBB0_16
.LBB0_28:                               #   in Loop: Header=BB0_10 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r6, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_22
.LBB0_29:                               #   in Loop: Header=BB0_10 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r6, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r4, zero, .LBB0_23
	j .LBB0_24
.LBB0_30:                               #   in Loop: Header=BB0_3 Depth=1
	setlt.f r4, r1, r2
	addli r3, r2, 0
	bneq r4, zero, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=1
	slli r4, r1, 9
	slli r5, r2, 9
	srli r6, r1, 23
	srli r8, r2, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r8, r8, 255
	setlti r6, r6, 255
	setlti r8, r8, 255
	or r4, r6, r4
	or r5, r8, r5
	and r4, r5, r4
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r4, zero, .LBB0_567
# %bb.33:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r2, zero, .LBB0_568
.LBB0_34:                               #   in Loop: Header=BB0_3 Depth=1
	beq r1, zero, .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_36:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r3
	setle.f r4, r3, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=1
	stores.w r1, 0(r13)
	mfence { lm, sm, gm }
	csr_set csr3, r16
	sync_group
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_560
# %bb.39:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r3, 0(r18)
	loads.w r1, 4(r18)
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r1, r3
	addli r2, r3, 0
	bneq r4, zero, .LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_41:                               #   in Loop: Header=BB0_3 Depth=1
	slli r4, r3, 9
	slli r5, r1, 9
	srli r6, r3, 23
	srli r8, r1, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r8, r8, 255
	setlti r6, r6, 255
	setlti r8, r8, 255
	or r4, r6, r4
	or r5, r8, r5
	and r4, r4, r5
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r4, zero, .LBB0_569
# %bb.42:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r3, zero, .LBB0_570
.LBB0_43:                               #   in Loop: Header=BB0_3 Depth=1
	beq r1, zero, .LBB0_45
.LBB0_44:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_45:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r2
	setle.f r4, r2, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_47:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r28, 8(r18)
	addli r2, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r28, r1
	bneq r3, zero, .LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r28, 0
.LBB0_49:                               #   in Loop: Header=BB0_3 Depth=1
	slli r3, r28, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r1, 9
	srli r5, r28, 23
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
	beq r3, zero, .LBB0_571
# %bb.50:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_572
.LBB0_51:                               #   in Loop: Header=BB0_3 Depth=1
	beq r28, zero, .LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
.LBB0_53:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r2
	setle.f r3, r2, zero
	storeli.w r17, -244(r30)                # 4-byte Folded Spill
	and r1, r3, r1
	bneq r1, zero, .LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r2, 0
.LBB0_55:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r5, 88(r18)
	loads.w r3, 64(r18)
	loads.w r4, 12(r18)
	loads.w r27, 16(r18)
	loads.w r20, 20(r18)
	loads.w r12, 24(r18)
	loads.w r9, 28(r18)
	loads.w r11, 32(r18)
	loads.w r15, 36(r18)
	loads.w r22, 40(r18)
	loads.w r13, 44(r18)
	loads.w r19, 48(r18)
	loads.w r1, 52(r18)
	loads.w r2, 56(r18)
	loads.w r17, 60(r18)
	loads.w r14, 172(r18)
	loads.w r16, 188(r18)
	storeli.w r5, -220(r30)                 # 4-byte Folded Spill
	loads.w r5, 92(r18)
	storeli.w r3, -356(r30)                 # 4-byte Folded Spill
	loads.w r3, 68(r18)
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r8, r4, r28
	storeli.w r5, -336(r30)                 # 4-byte Folded Spill
	loads.w r5, 96(r18)
	storeli.w r3, -352(r30)                 # 4-byte Folded Spill
	loads.w r3, 72(r18)
	storeli.w r5, -332(r30)                 # 4-byte Folded Spill
	loads.w r5, 100(r18)
	storeli.w r3, -228(r30)                 # 4-byte Folded Spill
	loads.w r3, 76(r18)
	storeli.w r5, -216(r30)                 # 4-byte Folded Spill
	loads.w r5, 104(r18)
	storeli.w r3, -348(r30)                 # 4-byte Folded Spill
	loads.w r3, 80(r18)
	storeli.w r5, -212(r30)                 # 4-byte Folded Spill
	loads.w r5, 108(r18)
	storeli.w r3, -224(r30)                 # 4-byte Folded Spill
	loads.w r3, 84(r18)
	storeli.w r5, -328(r30)                 # 4-byte Folded Spill
	loads.w r5, 112(r18)
	storeli.w r5, -208(r30)                 # 4-byte Folded Spill
	loads.w r5, 116(r18)
	storeli.w r5, -324(r30)                 # 4-byte Folded Spill
	loads.w r5, 120(r18)
	storeli.w r5, -204(r30)                 # 4-byte Folded Spill
	loads.w r5, 124(r18)
	storeli.w r5, -320(r30)                 # 4-byte Folded Spill
	loads.w r5, 128(r18)
	storeli.w r5, -200(r30)                 # 4-byte Folded Spill
	loads.w r5, 132(r18)
	storeli.w r5, -316(r30)                 # 4-byte Folded Spill
	loads.w r5, 136(r18)
	storeli.w r5, -196(r30)                 # 4-byte Folded Spill
	loads.w r5, 140(r18)
	storeli.w r5, -312(r30)                 # 4-byte Folded Spill
	loads.w r5, 144(r18)
	storeli.w r5, -192(r30)                 # 4-byte Folded Spill
	loads.w r5, 148(r18)
	storeli.w r5, -308(r30)                 # 4-byte Folded Spill
	loads.w r5, 152(r18)
	storeli.w r5, -304(r30)                 # 4-byte Folded Spill
	loads.w r5, 156(r18)
	storeli.w r5, -188(r30)                 # 4-byte Folded Spill
	loads.w r5, 160(r18)
	storeli.w r5, -184(r30)                 # 4-byte Folded Spill
	loads.w r5, 164(r18)
	storeli.w r5, -300(r30)                 # 4-byte Folded Spill
	loads.w r5, 168(r18)
	storeli.w r5, -180(r30)                 # 4-byte Folded Spill
	loads.w r5, 176(r18)
	storeli.w r5, -176(r30)                 # 4-byte Folded Spill
	loads.w r5, 180(r18)
	storeli.w r5, -296(r30)                 # 4-byte Folded Spill
	loads.w r5, 184(r18)
	storeli.w r5, -172(r30)                 # 4-byte Folded Spill
	loads.w r5, 192(r18)
	storeli.w r5, -168(r30)                 # 4-byte Folded Spill
	loads.w r5, 196(r18)
	storeli.w r5, -292(r30)                 # 4-byte Folded Spill
	loads.w r5, 200(r18)
	storeli.w r5, -288(r30)                 # 4-byte Folded Spill
	loads.w r5, 204(r18)
	storeli.w r5, -164(r30)                 # 4-byte Folded Spill
	loads.w r5, 208(r18)
	storeli.w r5, -284(r30)                 # 4-byte Folded Spill
	loads.w r5, 212(r18)
	storeli.w r5, -160(r30)                 # 4-byte Folded Spill
	loads.w r5, 216(r18)
	storeli.w r5, -280(r30)                 # 4-byte Folded Spill
	loads.w r5, 220(r18)
	storeli.w r5, -276(r30)                 # 4-byte Folded Spill
	loads.w r5, 224(r18)
	storeli.w r5, -272(r30)                 # 4-byte Folded Spill
	loads.w r5, 228(r18)
	storeli.w r5, -156(r30)                 # 4-byte Folded Spill
	loads.w r5, 232(r18)
	storeli.w r5, -268(r30)                 # 4-byte Folded Spill
	loads.w r5, 236(r18)
	storeli.w r5, -264(r30)                 # 4-byte Folded Spill
	loads.w r5, 240(r18)
	storeli.w r5, -260(r30)                 # 4-byte Folded Spill
	loads.w r5, 244(r18)
	storeli.w r5, -256(r30)                 # 4-byte Folded Spill
	loads.w r5, 248(r18)
	storeli.w r5, -252(r30)                 # 4-byte Folded Spill
	loads.w r5, 252(r18)
	storeli.w r5, -248(r30)                 # 4-byte Folded Spill
	addli r5, r28, 0
	bneq r8, zero, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r4, 0
.LBB0_57:                               #   in Loop: Header=BB0_3 Depth=1
	slli r8, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r26, r28, 9
	srli r6, r4, 23
	srli r10, r28, 23
	seteq r8, r8, zero
	seteq r26, r26, zero
	andi r6, r6, 255
	andi r10, r10, 255
	setlti r6, r6, 255
	setlti r10, r10, 255
	or r6, r6, r8
	or r8, r10, r26
	and r6, r8, r6
	beq r6, zero, .LBB0_573
# %bb.58:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r28, zero, .LBB0_574
.LBB0_59:                               #   in Loop: Header=BB0_3 Depth=1
	beq r4, zero, .LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r28, 0
.LBB0_61:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r6, zero, r5
	setle.f r8, r5, zero
	and r6, r8, r6
	bneq r6, zero, .LBB0_63
# %bb.62:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r5, 0
.LBB0_63:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r6, r27, r4
	addli r5, r4, 0
	addli r28, r3, 0
	storeli.w r14, -344(r30)                # 4-byte Folded Spill
	bneq r6, zero, .LBB0_65
# %bb.64:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r27, 0
.LBB0_65:                               #   in Loop: Header=BB0_3 Depth=1
	slli r6, r27, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r8, r4, 9
	srli r10, r27, 23
	srli r26, r4, 23
	loadli.w r14,  -352(r30)                # 4-byte Folded Reload
	loadli.w r3,  -356(r30)                 # 4-byte Folded Reload
	seteq r6, r6, zero
	seteq r8, r8, zero
	andi r10, r10, 255
	andi r26, r26, 255
	setlti r10, r10, 255
	setlti r26, r26, 255
	or r6, r10, r6
	or r8, r26, r8
	and r6, r8, r6
	bneq r6, zero, .LBB0_67
# %bb.66:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
.LBB0_67:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r26,  -332(r30)                # 4-byte Folded Reload
	storeli.w r16, -340(r30)                # 4-byte Folded Spill
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r4, zero, .LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r5, 0
.LBB0_69:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r16,  -328(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r4, 0
.LBB0_71:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r5
	setle.f r6, r5, zero
	and r4, r6, r4
	bneq r4, zero, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r5, 0
.LBB0_73:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r20, r27
	addli r4, r27, 0
	bneq r5, zero, .LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r20, 0
.LBB0_75:                               #   in Loop: Header=BB0_3 Depth=1
	slli r5, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r27, 9
	srli r8, r20, 23
	srli r10, r27, 23
	seteq r5, r5, zero
	seteq r6, r6, zero
	andi r8, r8, 255
	andi r10, r10, 255
	setlti r8, r8, 255
	setlti r10, r10, 255
	or r5, r8, r5
	or r6, r10, r6
	and r5, r6, r5
	beq r5, zero, .LBB0_575
# %bb.76:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r27, zero, .LBB0_576
.LBB0_77:                               #   in Loop: Header=BB0_3 Depth=1
	beq r20, zero, .LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r27, 0
.LBB0_79:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r4
	setle.f r6, r4, zero
	and r5, r6, r5
	bneq r5, zero, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r4, 0
.LBB0_81:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r12, r20
	loadli.w r27,  -336(r30)                # 4-byte Folded Reload
	addli r4, r20, 0
	bneq r5, zero, .LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r12, 0
.LBB0_83:                               #   in Loop: Header=BB0_3 Depth=1
	slli r5, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r20, 9
	srli r8, r12, 23
	srli r10, r20, 23
	seteq r5, r5, zero
	seteq r6, r6, zero
	andi r8, r8, 255
	andi r10, r10, 255
	setlti r8, r8, 255
	setlti r10, r10, 255
	or r5, r8, r5
	or r6, r10, r6
	and r5, r6, r5
	beq r5, zero, .LBB0_577
# %bb.84:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r20, zero, .LBB0_578
.LBB0_85:                               #   in Loop: Header=BB0_3 Depth=1
	beq r12, zero, .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r20, 0
.LBB0_87:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r4
	setle.f r6, r4, zero
	and r5, r6, r5
	bneq r5, zero, .LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r4, 0
.LBB0_89:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r9, r12
	loadli.w r20,  -348(r30)                # 4-byte Folded Reload
	addli r4, r12, 0
	bneq r5, zero, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r9, 0
.LBB0_91:                               #   in Loop: Header=BB0_3 Depth=1
	slli r5, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r12, 9
	srli r8, r9, 23
	srli r10, r12, 23
	seteq r5, r5, zero
	seteq r6, r6, zero
	andi r8, r8, 255
	andi r10, r10, 255
	setlti r8, r8, 255
	setlti r10, r10, 255
	or r5, r8, r5
	or r6, r10, r6
	and r5, r6, r5
	beq r5, zero, .LBB0_579
# %bb.92:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r12, zero, .LBB0_580
.LBB0_93:                               #   in Loop: Header=BB0_3 Depth=1
	beq r9, zero, .LBB0_95
.LBB0_94:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r12, 0
.LBB0_95:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r4
	setle.f r6, r4, zero
	and r5, r6, r5
	bneq r5, zero, .LBB0_97
# %bb.96:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r4, 0
.LBB0_97:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r11, r9
	loadli.w r12,  -304(r30)                # 4-byte Folded Reload
	addli r4, r9, 0
	bneq r5, zero, .LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r11, 0
.LBB0_99:                               #   in Loop: Header=BB0_3 Depth=1
	slli r5, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r9, 9
	srli r8, r11, 23
	srli r10, r9, 23
	seteq r5, r5, zero
	seteq r6, r6, zero
	andi r8, r8, 255
	andi r10, r10, 255
	setlti r8, r8, 255
	setlti r10, r10, 255
	or r5, r8, r5
	or r6, r10, r6
	and r5, r6, r5
	beq r5, zero, .LBB0_581
# %bb.100:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r10,  -312(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_582
.LBB0_101:                              #   in Loop: Header=BB0_3 Depth=1
	beq r11, zero, .LBB0_103
.LBB0_102:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r9, 0
.LBB0_103:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r4
	setle.f r6, r4, zero
	and r5, r6, r5
	bneq r5, zero, .LBB0_105
# %bb.104:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r4, 0
.LBB0_105:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r15, r11
	addli r4, r11, 0
	bneq r5, zero, .LBB0_107
# %bb.106:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r15, 0
.LBB0_107:                              #   in Loop: Header=BB0_3 Depth=1
	slli r5, r15, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r11, 9
	srli r8, r15, 23
	srli r9, r11, 23
	seteq r5, r5, zero
	seteq r6, r6, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r5, r8, r5
	or r6, r9, r6
	and r5, r6, r5
	beq r5, zero, .LBB0_583
# %bb.108:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r11, zero, .LBB0_584
.LBB0_109:                              #   in Loop: Header=BB0_3 Depth=1
	beq r15, zero, .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r11, 0
.LBB0_111:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r4
	setle.f r6, r4, zero
	and r5, r6, r5
	bneq r5, zero, .LBB0_113
# %bb.112:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r4, 0
.LBB0_113:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r22, r15
	loadli.w r11,  -316(r30)                # 4-byte Folded Reload
	addli r4, r15, 0
	bneq r5, zero, .LBB0_115
# %bb.114:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r22, 0
.LBB0_115:                              #   in Loop: Header=BB0_3 Depth=1
	slli r5, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r15, 9
	srli r8, r22, 23
	srli r9, r15, 23
	seteq r5, r5, zero
	seteq r6, r6, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r5, r8, r5
	or r6, r9, r6
	and r5, r6, r5
	beq r5, zero, .LBB0_585
# %bb.116:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r15, zero, .LBB0_586
.LBB0_117:                              #   in Loop: Header=BB0_3 Depth=1
	beq r22, zero, .LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r15, 0
.LBB0_119:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r4
	setle.f r6, r4, zero
	and r5, r6, r5
	bneq r5, zero, .LBB0_121
# %bb.120:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r4, 0
.LBB0_121:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r13, r22
	addli r4, r22, 0
	bneq r5, zero, .LBB0_123
# %bb.122:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r13, 0
.LBB0_123:                              #   in Loop: Header=BB0_3 Depth=1
	slli r5, r13, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r22, 9
	srli r8, r13, 23
	srli r9, r22, 23
	seteq r5, r5, zero
	seteq r6, r6, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r5, r8, r5
	or r6, r9, r6
	and r5, r6, r5
	beq r5, zero, .LBB0_587
# %bb.124:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r22, zero, .LBB0_588
.LBB0_125:                              #   in Loop: Header=BB0_3 Depth=1
	beq r13, zero, .LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r22, 0
.LBB0_127:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r4
	setle.f r6, r4, zero
	and r5, r6, r5
	bneq r5, zero, .LBB0_129
# %bb.128:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r4, 0
.LBB0_129:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r19, r13
	loadli.w r22,  -296(r30)                # 4-byte Folded Reload
	addli r4, r13, 0
	bneq r5, zero, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r19, 0
.LBB0_131:                              #   in Loop: Header=BB0_3 Depth=1
	slli r5, r19, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r13, 9
	srli r8, r19, 23
	srli r9, r13, 23
	seteq r5, r5, zero
	seteq r6, r6, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r5, r8, r5
	or r6, r9, r6
	and r5, r6, r5
	beq r5, zero, .LBB0_589
# %bb.132:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r13, zero, .LBB0_590
.LBB0_133:                              #   in Loop: Header=BB0_3 Depth=1
	beq r19, zero, .LBB0_135
.LBB0_134:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r13, 0
.LBB0_135:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r4
	setle.f r6, r4, zero
	and r5, r6, r5
	bneq r5, zero, .LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r4, 0
.LBB0_137:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r1, r19
	addli r4, r19, 0
	bneq r5, zero, .LBB0_139
# %bb.138:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r1, 0
.LBB0_139:                              #   in Loop: Header=BB0_3 Depth=1
	slli r5, r1, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r19, 9
	srli r8, r1, 23
	srli r9, r19, 23
	loadli.w r13,  -272(r30)                # 4-byte Folded Reload
	seteq r5, r5, zero
	seteq r6, r6, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r5, r8, r5
	or r6, r9, r6
	and r5, r6, r5
	beq r5, zero, .LBB0_591
# %bb.140:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r19, zero, .LBB0_592
.LBB0_141:                              #   in Loop: Header=BB0_3 Depth=1
	beq r1, zero, .LBB0_143
.LBB0_142:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r19, 0
.LBB0_143:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r4
	setle.f r6, r4, zero
	and r5, r6, r5
	bneq r5, zero, .LBB0_145
# %bb.144:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_145:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r2, r1
	loadli.w r19,  -280(r30)                # 4-byte Folded Reload
	addli r4, r1, 0
	bneq r5, zero, .LBB0_147
# %bb.146:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r2, 0
.LBB0_147:                              #   in Loop: Header=BB0_3 Depth=1
	slli r5, r2, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r1, 9
	srli r8, r2, 23
	srli r9, r1, 23
	seteq r5, r5, zero
	seteq r6, r6, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r5, r8, r5
	or r6, r9, r6
	and r5, r6, r5
	beq r5, zero, .LBB0_593
# %bb.148:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r9,  -320(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_594
.LBB0_149:                              #   in Loop: Header=BB0_3 Depth=1
	beq r2, zero, .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_151:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r4
	setle.f r5, r4, zero
	and r1, r5, r1
	bneq r1, zero, .LBB0_153
# %bb.152:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r4, 0
.LBB0_153:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r17, r2
	addli r1, r2, 0
	bneq r4, zero, .LBB0_155
# %bb.154:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r17, 0
.LBB0_155:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r17, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r2, 9
	srli r6, r17, 23
	srli r8, r2, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r8, r8, 255
	setlti r6, r6, 255
	setlti r8, r8, 255
	or r4, r6, r4
	or r5, r8, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_595
# %bb.156:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r8,  -324(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r2, zero, .LBB0_596
.LBB0_157:                              #   in Loop: Header=BB0_3 Depth=1
	beq r17, zero, .LBB0_159
.LBB0_158:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r2, 0
.LBB0_159:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r4, r1, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_161
# %bb.160:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
.LBB0_161:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r3, r17
	addli r1, r17, 0
	bneq r2, zero, .LBB0_163
# %bb.162:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_163:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r3, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r17, 9
	srli r5, r3, 23
	srli r6, r17, 23
	seteq r2, r2, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r2, r5, r2
	or r4, r6, r4
	and r2, r4, r2
	beq r2, zero, .LBB0_597
# %bb.164:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r17, zero, .LBB0_598
.LBB0_165:                              #   in Loop: Header=BB0_3 Depth=1
	beq r3, zero, .LBB0_167
.LBB0_166:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r17, 0
.LBB0_167:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r4, r1, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_169
# %bb.168:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
.LBB0_169:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r14, r3
	loadli.w r17,  -244(r30)                # 4-byte Folded Reload
	addli r1, r3, 0
	bneq r2, zero, .LBB0_171
# %bb.170:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
.LBB0_171:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r3, 9
	srli r5, r14, 23
	srli r6, r3, 23
	seteq r2, r2, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r2, r5, r2
	or r4, r6, r4
	and r2, r4, r2
	bneq r2, zero, .LBB0_173
# %bb.172:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_173:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r6,  -284(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -228(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r3, zero, .LBB0_175
# %bb.174:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
.LBB0_175:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_177
# %bb.176:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r3, 0
.LBB0_177:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_179
# %bb.178:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
.LBB0_179:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r14
	addli r1, r14, 0
	bneq r2, zero, .LBB0_181
# %bb.180:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_181:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r14, 9
	srli r4, r4, 23
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
	beq r2, zero, .LBB0_599
# %bb.182:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r14, zero, .LBB0_600
.LBB0_183:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -228(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_185
.LBB0_184:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r14, 0
.LBB0_185:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_187
# %bb.186:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_187:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r20, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_189
# %bb.188:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r20, 0
.LBB0_189:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r20, 23
	addli r15, r5, 0
	srli r5, r5, 23
	loadli.w r14,  -276(r30)                # 4-byte Folded Reload
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_601
# %bb.190:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_602
.LBB0_191:                              #   in Loop: Header=BB0_3 Depth=1
	beq r20, zero, .LBB0_193
.LBB0_192:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r15, 0
.LBB0_193:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_195
# %bb.194:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
.LBB0_195:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r20
	addli r1, r20, 0
	bneq r2, zero, .LBB0_197
# %bb.196:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_197:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_603
# %bb.198:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r20, zero, .LBB0_604
.LBB0_199:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_201
.LBB0_200:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r20, 0
.LBB0_201:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_203
# %bb.202:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_203:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r28, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_205
# %bb.204:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r28, 0
.LBB0_205:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r28, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r28, 23
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
	beq r2, zero, .LBB0_605
# %bb.206:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_606
.LBB0_207:                              #   in Loop: Header=BB0_3 Depth=1
	beq r28, zero, .LBB0_209
.LBB0_208:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r20, 0
.LBB0_209:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_211
# %bb.210:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
.LBB0_211:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r28
	addli r1, r28, 0
	bneq r2, zero, .LBB0_213
# %bb.212:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_213:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_607
# %bb.214:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r28, zero, .LBB0_608
.LBB0_215:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r28, 0
.LBB0_217:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_219
# %bb.218:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_219:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r27, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_221
# %bb.220:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r27, 0
.LBB0_221:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r27, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r27, 23
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
	beq r2, zero, .LBB0_609
# %bb.222:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r28, zero, .LBB0_610
.LBB0_223:                              #   in Loop: Header=BB0_3 Depth=1
	beq r27, zero, .LBB0_225
.LBB0_224:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r28, 0
.LBB0_225:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_227
# %bb.226:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
.LBB0_227:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r26, r27
	addli r1, r27, 0
	bneq r2, zero, .LBB0_229
# %bb.228:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r26, 0
.LBB0_229:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r26, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r27, 9
	srli r4, r26, 23
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
	beq r2, zero, .LBB0_611
# %bb.230:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_612
.LBB0_231:                              #   in Loop: Header=BB0_3 Depth=1
	beq r26, zero, .LBB0_233
.LBB0_232:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r27, 0
.LBB0_233:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_235
# %bb.234:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
.LBB0_235:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r26
	addli r1, r26, 0
	bneq r2, zero, .LBB0_237
# %bb.236:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_237:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r26, 9
	srli r4, r4, 23
	srli r5, r26, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_239
# %bb.238:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_239:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r4,  -212(r30)                 # 4-byte Folded Reload
	addli r27, r22, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_241
# %bb.240:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
.LBB0_241:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r22,  -300(r30)                # 4-byte Folded Reload
	loadli.w r5,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_243
# %bb.242:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r26, 0
.LBB0_243:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	addli r20, r6, 0
	and r2, r3, r2
	bneq r2, zero, .LBB0_245
# %bb.244:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_245:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r5
	addli r6, r14, 0
	addli r1, r5, 0
	bneq r2, zero, .LBB0_247
# %bb.246:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_247:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r4, 23
	addli r26, r5, 0
	srli r5, r5, 23
	loadli.w r14,  -344(r30)                # 4-byte Folded Reload
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_249
# %bb.248:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_249:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r28,  -288(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_251
# %bb.250:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
.LBB0_251:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r5,  -212(r30)                 # 4-byte Folded Reload
	addli r15, r19, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_253
# %bb.252:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r26, 0
.LBB0_253:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r19,  -340(r30)                # 4-byte Folded Reload
	and r2, r3, r2
	bneq r2, zero, .LBB0_255
# %bb.254:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_255:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r16, r5
	addli r26, r13, 0
	addli r1, r5, 0
	bneq r2, zero, .LBB0_257
# %bb.256:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r16, 0
.LBB0_257:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r16, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r16, 23
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
	beq r2, zero, .LBB0_613
# %bb.258:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_614
.LBB0_259:                              #   in Loop: Header=BB0_3 Depth=1
	beq r16, zero, .LBB0_261
.LBB0_260:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r13, 0
.LBB0_261:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_263
# %bb.262:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r1, 0
.LBB0_263:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r16
	addli r1, r16, 0
	addli r13, r26, 0
	bneq r2, zero, .LBB0_265
# %bb.264:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_265:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r16, 9
	srli r4, r4, 23
	srli r5, r16, 23
	addli r26, r19, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_267
# %bb.266:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_267:                              #   in Loop: Header=BB0_3 Depth=1
	addli r19, r15, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r16, zero, .LBB0_269
# %bb.268:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r1, 0
.LBB0_269:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r5,  -208(r30)                 # 4-byte Folded Reload
	addli r15, r28, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_271
# %bb.270:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r16, 0
.LBB0_271:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	addli r28, r14, 0
	and r2, r3, r2
	bneq r2, zero, .LBB0_273
# %bb.272:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_273:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r8, r5
	addli r1, r5, 0
	addli r14, r6, 0
	bneq r2, zero, .LBB0_275
# %bb.274:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_275:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r8, 23
	addli r16, r5, 0
	srli r5, r5, 23
	addli r6, r20, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_277
# %bb.276:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_277:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r4,  -204(r30)                 # 4-byte Folded Reload
	addli r20, r22, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r16, zero, .LBB0_279
# %bb.278:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r1, 0
.LBB0_279:                              #   in Loop: Header=BB0_3 Depth=1
	addli r22, r27, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_281
# %bb.280:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r16, 0
.LBB0_281:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_283
# %bb.282:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
.LBB0_283:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r8
	addli r1, r8, 0
	bneq r2, zero, .LBB0_285
# %bb.284:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_285:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r8, 9
	srli r4, r4, 23
	srli r5, r8, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_615
# %bb.286:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r8, zero, .LBB0_616
.LBB0_287:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_289
.LBB0_288:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r8, 0
.LBB0_289:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_291
# %bb.290:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_291:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r9, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_293
# %bb.292:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r9, 0
.LBB0_293:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r9, 23
	addli r8, r5, 0
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
	beq r2, zero, .LBB0_617
# %bb.294:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_618
.LBB0_295:                              #   in Loop: Header=BB0_3 Depth=1
	beq r9, zero, .LBB0_297
.LBB0_296:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r8, 0
.LBB0_297:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_299
# %bb.298:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_299:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r9
	loadli.w r8,  -308(r30)                 # 4-byte Folded Reload
	addli r1, r9, 0
	bneq r2, zero, .LBB0_301
# %bb.300:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_301:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r9, 9
	srli r4, r4, 23
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
	beq r2, zero, .LBB0_619
# %bb.302:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r9, zero, .LBB0_620
.LBB0_303:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_305
.LBB0_304:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r9, 0
.LBB0_305:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_307
# %bb.306:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_307:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r11, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_309
# %bb.308:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r11, 0
.LBB0_309:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r11, 23
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
	beq r2, zero, .LBB0_621
# %bb.310:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_622
.LBB0_311:                              #   in Loop: Header=BB0_3 Depth=1
	beq r11, zero, .LBB0_313
.LBB0_312:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r9, 0
.LBB0_313:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_315
# %bb.314:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_315:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r11
	addli r1, r11, 0
	bneq r2, zero, .LBB0_317
# %bb.316:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_317:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_623
# %bb.318:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r11, zero, .LBB0_624
.LBB0_319:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_321
.LBB0_320:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r11, 0
.LBB0_321:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_323
# %bb.322:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_323:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r10, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_325
# %bb.324:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_325:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r10, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r10, 23
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
	beq r2, zero, .LBB0_625
# %bb.326:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_626
.LBB0_327:                              #   in Loop: Header=BB0_3 Depth=1
	beq r10, zero, .LBB0_329
.LBB0_328:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r11, 0
.LBB0_329:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_331
# %bb.330:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_331:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r10
	addli r1, r10, 0
	bneq r2, zero, .LBB0_333
# %bb.332:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_333:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r10, 9
	srli r4, r4, 23
	srli r5, r10, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_627
# %bb.334:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r10, zero, .LBB0_628
.LBB0_335:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_337
.LBB0_336:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r10, 0
.LBB0_337:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_339
# %bb.338:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_339:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r8, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_341
# %bb.340:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_341:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r8, 23
	addli r10, r5, 0
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
	beq r2, zero, .LBB0_629
# %bb.342:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r10, zero, .LBB0_630
.LBB0_343:                              #   in Loop: Header=BB0_3 Depth=1
	beq r8, zero, .LBB0_345
.LBB0_344:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r10, 0
.LBB0_345:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_347
# %bb.346:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
.LBB0_347:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r12, r8
	addli r1, r8, 0
	bneq r2, zero, .LBB0_349
# %bb.348:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_349:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r8, 9
	srli r4, r12, 23
	srli r5, r8, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_631
# %bb.350:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_632
.LBB0_351:                              #   in Loop: Header=BB0_3 Depth=1
	beq r12, zero, .LBB0_353
.LBB0_352:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r8, 0
.LBB0_353:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_355
# %bb.354:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_355:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r12
	addli r1, r12, 0
	bneq r2, zero, .LBB0_357
# %bb.356:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_357:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_633
# %bb.358:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_634
.LBB0_359:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_361
.LBB0_360:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r12, 0
.LBB0_361:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_363
# %bb.362:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_363:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r5
	loadli.w r27,  -256(r30)                # 4-byte Folded Reload
	addli r1, r5, 0
	bneq r2, zero, .LBB0_365
# %bb.364:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_365:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r4, 23
	addli r12, r5, 0
	srli r5, r5, 23
	loadli.w r9,  -252(r30)                 # 4-byte Folded Reload
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_367
# %bb.366:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_367:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r8,  -264(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_369
# %bb.368:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_369:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r11,  -268(r30)                # 4-byte Folded Reload
	loadli.w r5,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_371
# %bb.370:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r12, 0
.LBB0_371:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r12,  -364(r30)                # 4-byte Folded Reload
	and r2, r3, r2
	bneq r2, zero, .LBB0_373
# %bb.372:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_373:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r20, r5
	loadli.w r16,  -260(r30)                # 4-byte Folded Reload
	addli r1, r5, 0
	bneq r2, zero, .LBB0_375
# %bb.374:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r20, 0
.LBB0_375:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r20, 23
	addli r10, r5, 0
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
	beq r2, zero, .LBB0_635
# %bb.376:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_636
.LBB0_377:                              #   in Loop: Header=BB0_3 Depth=1
	beq r20, zero, .LBB0_379
.LBB0_378:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r10, 0
.LBB0_379:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_381
# %bb.380:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
.LBB0_381:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r20
	addli r1, r20, 0
	addli r10, r16, 0
	bneq r2, zero, .LBB0_383
# %bb.382:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_383:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r20, 9
	srli r4, r4, 23
	srli r5, r20, 23
	addli r16, r12, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_385
# %bb.384:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_385:                              #   in Loop: Header=BB0_3 Depth=1
	addli r12, r11, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_387
# %bb.386:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
.LBB0_387:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r5,  -180(r30)                 # 4-byte Folded Reload
	addli r11, r8, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_389
# %bb.388:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r20, 0
.LBB0_389:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	addli r8, r9, 0
	and r2, r3, r2
	bneq r2, zero, .LBB0_391
# %bb.390:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_391:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r28, r5
	addli r1, r5, 0
	addli r9, r27, 0
	bneq r2, zero, .LBB0_393
# %bb.392:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r28, 0
.LBB0_393:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r28, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r28, 23
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
	beq r2, zero, .LBB0_637
# %bb.394:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_638
.LBB0_395:                              #   in Loop: Header=BB0_3 Depth=1
	beq r28, zero, .LBB0_397
.LBB0_396:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r20, 0
.LBB0_397:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_399
# %bb.398:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
.LBB0_399:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r28
	loadli.w r20,  -292(r30)                # 4-byte Folded Reload
	addli r1, r28, 0
	bneq r2, zero, .LBB0_401
# %bb.400:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_401:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_639
# %bb.402:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r28, zero, .LBB0_640
.LBB0_403:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_405
.LBB0_404:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r28, 0
.LBB0_405:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_407
# %bb.406:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_407:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r22, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_409
# %bb.408:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r22, 0
.LBB0_409:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r22, 23
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
	beq r2, zero, .LBB0_641
# %bb.410:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_642
.LBB0_411:                              #   in Loop: Header=BB0_3 Depth=1
	beq r22, zero, .LBB0_413
.LBB0_412:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r28, 0
.LBB0_413:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_415
# %bb.414:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
.LBB0_415:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r22
	addli r1, r22, 0
	bneq r2, zero, .LBB0_417
# %bb.416:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_417:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_643
# %bb.418:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r22, zero, .LBB0_644
.LBB0_419:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_421
.LBB0_420:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r22, 0
.LBB0_421:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_423
# %bb.422:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_423:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r26, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_425
# %bb.424:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r26, 0
.LBB0_425:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r26, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r26, 23
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
	beq r2, zero, .LBB0_645
# %bb.426:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_646
.LBB0_427:                              #   in Loop: Header=BB0_3 Depth=1
	beq r26, zero, .LBB0_429
.LBB0_428:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r22, 0
.LBB0_429:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_431
# %bb.430:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
.LBB0_431:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r26
	addli r1, r26, 0
	bneq r2, zero, .LBB0_433
# %bb.432:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_433:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r26, 9
	srli r4, r4, 23
	srli r5, r26, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_647
# %bb.434:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r26, zero, .LBB0_648
.LBB0_435:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_437
.LBB0_436:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r26, 0
.LBB0_437:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_439
# %bb.438:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_439:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r20, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_441
# %bb.440:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r20, 0
.LBB0_441:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r20, 23
	addli r26, r5, 0
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
	beq r2, zero, .LBB0_649
# %bb.442:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r26, zero, .LBB0_650
.LBB0_443:                              #   in Loop: Header=BB0_3 Depth=1
	beq r20, zero, .LBB0_445
.LBB0_444:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r26, 0
.LBB0_445:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_447
# %bb.446:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
.LBB0_447:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r15, r20
	addli r1, r20, 0
	bneq r2, zero, .LBB0_449
# %bb.448:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r15, 0
.LBB0_449:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r15, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r20, 9
	srli r4, r15, 23
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
	beq r2, zero, .LBB0_651
# %bb.450:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_652
.LBB0_451:                              #   in Loop: Header=BB0_3 Depth=1
	beq r15, zero, .LBB0_453
.LBB0_452:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r20, 0
.LBB0_453:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_455
# %bb.454:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
.LBB0_455:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r15
	addli r1, r15, 0
	bneq r2, zero, .LBB0_457
# %bb.456:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_457:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_653
# %bb.458:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r15, zero, .LBB0_654
.LBB0_459:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_461
.LBB0_460:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r15, 0
.LBB0_461:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_463
# %bb.462:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_463:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r6, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_465
# %bb.464:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r6, 0
.LBB0_465:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r6, 23
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
	beq r2, zero, .LBB0_655
# %bb.466:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_656
.LBB0_467:                              #   in Loop: Header=BB0_3 Depth=1
	beq r6, zero, .LBB0_469
.LBB0_468:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r15, 0
.LBB0_469:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_471
# %bb.470:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_471:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r6
	addli r1, r6, 0
	bneq r2, zero, .LBB0_473
# %bb.472:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_473:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r6, 9
	srli r4, r4, 23
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
	beq r2, zero, .LBB0_657
# %bb.474:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r6, zero, .LBB0_658
.LBB0_475:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_477
.LBB0_476:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r6, 0
.LBB0_477:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r6,  36(r30)
	and r2, r3, r2
	bneq r2, zero, .LBB0_479
# %bb.478:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_479:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r19, r5
	loadli.w r22,  40(r30)
	addli r1, r5, 0
	bneq r2, zero, .LBB0_481
# %bb.480:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r19, 0
.LBB0_481:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r19, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r19, 23
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
	beq r2, zero, .LBB0_659
# %bb.482:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r15, zero, .LBB0_660
.LBB0_483:                              #   in Loop: Header=BB0_3 Depth=1
	beq r19, zero, .LBB0_485
.LBB0_484:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r15, 0
.LBB0_485:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_487
# %bb.486:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
.LBB0_487:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r14, r19
	addli r1, r19, 0
	addli r15, r22, 0
	bneq r2, zero, .LBB0_489
# %bb.488:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
.LBB0_489:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r19, 9
	srli r4, r14, 23
	srli r5, r19, 23
	addli r22, r6, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_661
# %bb.490:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -248(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_662
.LBB0_491:                              #   in Loop: Header=BB0_3 Depth=1
	beq r14, zero, .LBB0_493
.LBB0_492:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r19, 0
.LBB0_493:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_495
# %bb.494:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
.LBB0_495:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r13, r14
	addli r1, r14, 0
	bneq r2, zero, .LBB0_497
# %bb.496:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r13, 0
.LBB0_497:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r13, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r14, 9
	srli r4, r13, 23
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
	beq r2, zero, .LBB0_663
# %bb.498:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_664
.LBB0_499:                              #   in Loop: Header=BB0_3 Depth=1
	beq r13, zero, .LBB0_501
.LBB0_500:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r14, 0
.LBB0_501:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_503
# %bb.502:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
.LBB0_503:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r13
	addli r1, r13, 0
	bneq r2, zero, .LBB0_505
# %bb.504:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_505:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r13, 9
	srli r4, r4, 23
	srli r5, r13, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_665
# %bb.506:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r13, zero, .LBB0_666
.LBB0_507:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_509
.LBB0_508:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r13, 0
.LBB0_509:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r20,  -376(r30)                # 4-byte Folded Reload
	loadli.w r28,  -380(r30)                # 4-byte Folded Reload
	and r2, r3, r2
	bneq r2, zero, .LBB0_511
# %bb.510:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_511:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r12, r5
	load.d r[13:14], 16(r30)
	addli r1, r5, 0
	bneq r2, zero, .LBB0_513
# %bb.512:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_513:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r12, 23
	addli r26, r5, 0
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
	beq r2, zero, .LBB0_667
# %bb.514:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r26, zero, .LBB0_668
.LBB0_515:                              #   in Loop: Header=BB0_3 Depth=1
	beq r12, zero, .LBB0_517
.LBB0_516:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r26, 0
.LBB0_517:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_519
# %bb.518:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_519:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r11, r12
	addli r1, r12, 0
	addli.d r[26:27], r[13:14], 0
	bneq r2, zero, .LBB0_521
# %bb.520:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r11, 0
.LBB0_521:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r12, 9
	srli r4, r11, 23
	srli r5, r12, 23
	loadli.w r19,  -372(r30)                # 4-byte Folded Reload
	loadli.w r13,  -360(r30)                # 4-byte Folded Reload
	loadli.w r14,  -368(r30)                # 4-byte Folded Reload
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_669
# %bb.522:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r12, zero, .LBB0_670
.LBB0_523:                              #   in Loop: Header=BB0_3 Depth=1
	beq r11, zero, .LBB0_525
.LBB0_524:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r12, 0
.LBB0_525:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_527
# %bb.526:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_527:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r10, r11
	addli r1, r11, 0
	bneq r2, zero, .LBB0_529
# %bb.528:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_529:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r10, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r11, 9
	srli r4, r10, 23
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
	beq r2, zero, .LBB0_671
# %bb.530:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r11, zero, .LBB0_672
.LBB0_531:                              #   in Loop: Header=BB0_3 Depth=1
	beq r10, zero, .LBB0_533
.LBB0_532:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r11, 0
.LBB0_533:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_535
# %bb.534:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_535:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r9, r10
	addli r1, r10, 0
	bneq r2, zero, .LBB0_537
# %bb.536:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r9, 0
.LBB0_537:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r10, 9
	srli r4, r9, 23
	srli r5, r10, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_673
# %bb.538:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r10, zero, .LBB0_674
.LBB0_539:                              #   in Loop: Header=BB0_3 Depth=1
	beq r9, zero, .LBB0_541
.LBB0_540:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r10, 0
.LBB0_541:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_543
# %bb.542:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_543:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r8, r9
	addli r1, r9, 0
	bneq r2, zero, .LBB0_545
# %bb.544:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_545:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r9, 9
	srli r4, r8, 23
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
	beq r2, zero, .LBB0_675
# %bb.546:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r9, zero, .LBB0_676
.LBB0_547:                              #   in Loop: Header=BB0_3 Depth=1
	beq r8, zero, .LBB0_549
.LBB0_548:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r9, 0
.LBB0_549:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_551
# %bb.550:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
.LBB0_551:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r6, r8
	addli r1, r8, 0
	bneq r2, zero, .LBB0_553
# %bb.552:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r6, 0
.LBB0_553:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r8, 9
	srli r4, r6, 23
	srli r5, r8, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_677
# %bb.554:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r8, zero, .LBB0_678
.LBB0_555:                              #   in Loop: Header=BB0_3 Depth=1
	beq r6, zero, .LBB0_557
.LBB0_556:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r8, 0
.LBB0_557:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_559
.Ltmp14:
# %bb.558:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_559:                              #   in Loop: Header=BB0_3 Depth=1
	stores.w r6, 0(r18)
.LBB0_560:                              #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r16
	sync_group
	loads.w r1, 0(r18)
	.loc	1 71 24 is_stmt 1               # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:71:24
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -152(r30)                 # 4-byte Folded Reload
	addli r4, zero, 0
	sub.f.rn r2, r2, r1
	sub.f.rn r3, r3, r1
	.loc	1 72 30                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:72:30
	exp.f.rn r2, r2
	exp.f.rn r3, r3
.LBB0_561:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 40 51                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:51
	add.s r5, r23, r4
	.loc	1 41 41                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:41:41
	add.s r6, r24, r4
	addli r4, r4, 4
	.loc	1 40 51                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:51
	load.hu r8, 4(r5)
	.loc	1 41 41                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:41:41
	load.hu r9, 4(r6)
	.loc	1 40 51                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:51
	load.hu r5, 6(r5)
	.loc	1 41 41                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:41:41
	load.hu r6, 6(r6)
	.loc	1 47 23                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:47:23
	add.hf.rn r5, r5, r6
	add.hf.rn r8, r8, r9
	.loc	1 48 23                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:48:23
	hfloat2float.rn r6, r8
	hfloat2float.rn r5, r5
	.loc	1 71 24                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:71:24
	sub.f.rn r6, r6, r1
	sub.f.rn r5, r5, r1
	.loc	1 72 30                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:72:30
	exp.f.rn r6, r6
	exp.f.rn r5, r5
.Ltmp15:
	.file	3 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	3 263 15                        # standard.py:263:15
	add.f.rn r2, r2, r6
	add.f.rn r3, r3, r5
	bneq r4, r25, .LBB0_561
# %bb.562:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r2, r2, r3
	stores.w r2, 0(r20)
	mfence { lm, sm, gm }
	csr_set csr3, r16
	sync_group
	loadli.w r2,  -132(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_564
# %bb.563:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 0 15 is_stmt 0                # standard.py:0:15
	loads.w r2, 0(r21)
	loads.w r4, 4(r21)
	loads.w r3, 8(r21)
	.loc	3 263 15                        # standard.py:263:15
	add.f.rn r2, r2, r4
	loads.w r4, 12(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 16(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 20(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 24(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 28(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 32(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 36(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 40(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 44(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 48(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 52(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 56(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 60(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 64(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 68(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 72(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 76(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 80(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 84(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 88(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 92(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 96(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 100(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 104(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 108(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 112(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 116(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 120(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 124(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 128(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 132(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 136(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 140(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 144(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 148(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 152(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 156(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 160(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 164(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 168(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 172(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 176(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 180(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 184(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 188(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 192(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 196(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 200(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 204(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 208(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 212(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 216(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 220(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 224(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 228(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 232(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 236(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 240(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 244(r21)
	add.f.rn r2, r2, r3
	loads.w r3, 248(r21)
	add.f.rn r2, r2, r4
	loads.w r4, 252(r21)
	add.f.rn r2, r2, r3
	add.f.rn r2, r2, r4
	stores.w r2, 0(r21)
.Ltmp16:
.LBB0_564:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r16
	sync_group
	loads.w r2, 0(r21)
	addli r3, zero, 0
.LBB0_565:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 41 41 is_stmt 1               # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:41:41
	add.s r5, r24, r3
	.loc	1 40 51                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:51
	add.s r4, r23, r3
	.loc	1 97 53                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:97:53
	addli r3, r3, 4
	.loc	1 40 51                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:51
	load.hu r6, 0(r4)
	.loc	1 41 41                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:41:41
	load.hu r8, 0(r5)
	.loc	1 40 51                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:40:51
	load.hu r4, 2(r4)
	.loc	1 41 41                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:41:41
	load.hu r9, 2(r5)
	.loc	1 47 23                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:47:23
	add.hf.rn r6, r6, r8
	add.hf.rn r4, r4, r9
	.loc	1 48 23                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:48:23
	hfloat2float.rn r6, r6
	hfloat2float.rn r4, r4
	.loc	1 71 24                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:71:24
	sub.f.rn r6, r6, r1
	sub.f.rn r4, r4, r1
	.loc	1 72 30                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:72:30
	exp.f.rn r6, r6
	exp.f.rn r4, r4
	.loc	1 95 25                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:95:25
	div.f.rn r6, r6, r2
	div.f.rn r4, r4, r2
	.loc	1 97 53                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:97:53
	float2hfloat.rn r6, r6
	float2hfloat.rn r4, r4
	store.h r6, 0(r5)
	store.h r4, 2(r5)
	mfence { lm }
	bneq r3, r7, .LBB0_565
# %bb.566:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 97 29 is_stmt 0               # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:97:29
	load.d r[2:3], -144(r30)                # 8-byte Folded Reload
	.loc	1 97 53                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:97:53
	lui r1, 983040
	or r1, r7, r1
	.loc	1 97 29                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:97:29
	add.ul r[2:3], r[26:27], r[2:3]
	.loc	1 97 53                         # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:97:53
	s_lm2gm r1, r24, 0(r[2:3])
	addli r2, zero, 2047
	mfence { lm }
	j .LBB0_2
.LBB0_567:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 53                          # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:0:53
	lui r3, 523264
.Ltmp17:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r2, zero, .LBB0_34
.LBB0_568:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r2, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_35
	j .LBB0_36
.LBB0_569:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r3, zero, .LBB0_43
.LBB0_570:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_44
	j .LBB0_45
.LBB0_571:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_51
.LBB0_572:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_52
	j .LBB0_53
.LBB0_573:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_59
.LBB0_574:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r4, zero, .LBB0_60
	j .LBB0_61
.LBB0_575:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r4, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_77
.LBB0_576:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_78
	j .LBB0_79
.LBB0_577:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r4, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_85
.LBB0_578:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_86
	j .LBB0_87
.LBB0_579:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r4, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_93
.LBB0_580:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_94
	j .LBB0_95
.LBB0_581:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r4, 523264
	loadli.w r10,  -312(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_101
.LBB0_582:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_102
	j .LBB0_103
.LBB0_583:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r4, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_109
.LBB0_584:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_110
	j .LBB0_111
.LBB0_585:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r4, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_117
.LBB0_586:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_118
	j .LBB0_119
.LBB0_587:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r4, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_125
.LBB0_588:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_126
	j .LBB0_127
.LBB0_589:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r4, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_133
.LBB0_590:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_134
	j .LBB0_135
.LBB0_591:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r4, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_141
.LBB0_592:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_142
	j .LBB0_143
.LBB0_593:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r4, 523264
	loadli.w r9,  -320(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_149
.LBB0_594:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r2, zero, .LBB0_150
	j .LBB0_151
.LBB0_595:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r8,  -324(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_157
.LBB0_596:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_158
	j .LBB0_159
.LBB0_597:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_165
.LBB0_598:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_166
	j .LBB0_167
.LBB0_599:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_183
.LBB0_600:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	loadli.w r5,  -228(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_184
	j .LBB0_185
.LBB0_601:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_191
.LBB0_602:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_192
	j .LBB0_193
.LBB0_603:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_199
.LBB0_604:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	loadli.w r5,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_200
	j .LBB0_201
.LBB0_605:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_207
.LBB0_606:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_208
	j .LBB0_209
.LBB0_607:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_215
.LBB0_608:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
	loadli.w r5,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_216
	j .LBB0_217
.LBB0_609:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_223
.LBB0_610:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_224
	j .LBB0_225
.LBB0_611:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_231
.LBB0_612:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r26, zero, .LBB0_232
	j .LBB0_233
.LBB0_613:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_259
.LBB0_614:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_260
	j .LBB0_261
.LBB0_615:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_287
.LBB0_616:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
	loadli.w r5,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_288
	j .LBB0_289
.LBB0_617:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_295
.LBB0_618:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_296
	j .LBB0_297
.LBB0_619:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_303
.LBB0_620:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	loadli.w r5,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_304
	j .LBB0_305
.LBB0_621:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_311
.LBB0_622:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_312
	j .LBB0_313
.LBB0_623:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_319
.LBB0_624:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_320
	j .LBB0_321
.LBB0_625:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_327
.LBB0_626:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_328
	j .LBB0_329
.LBB0_627:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_335
.LBB0_628:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	loadli.w r5,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_336
	j .LBB0_337
.LBB0_629:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_343
.LBB0_630:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_344
	j .LBB0_345
.LBB0_631:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_351
.LBB0_632:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_352
	j .LBB0_353
.LBB0_633:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_359
.LBB0_634:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	loadli.w r5,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_360
	j .LBB0_361
.LBB0_635:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_377
.LBB0_636:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_378
	j .LBB0_379
.LBB0_637:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_395
.LBB0_638:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_396
	j .LBB0_397
.LBB0_639:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_403
.LBB0_640:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
	loadli.w r5,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_404
	j .LBB0_405
.LBB0_641:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_411
.LBB0_642:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_412
	j .LBB0_413
.LBB0_643:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_419
.LBB0_644:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	loadli.w r5,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_420
	j .LBB0_421
.LBB0_645:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_427
.LBB0_646:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r26, zero, .LBB0_428
	j .LBB0_429
.LBB0_647:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_435
.LBB0_648:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
	loadli.w r5,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_436
	j .LBB0_437
.LBB0_649:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_443
.LBB0_650:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_444
	j .LBB0_445
.LBB0_651:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_451
.LBB0_652:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_452
	j .LBB0_453
.LBB0_653:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_459
.LBB0_654:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
	loadli.w r5,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_460
	j .LBB0_461
.LBB0_655:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_467
.LBB0_656:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_468
	j .LBB0_469
.LBB0_657:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_475
.LBB0_658:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
	loadli.w r5,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_476
	j .LBB0_477
.LBB0_659:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_483
.LBB0_660:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_484
	j .LBB0_485
.LBB0_661:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r6,  -248(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_491
.LBB0_662:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_492
	j .LBB0_493
.LBB0_663:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_499
.LBB0_664:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_500
	j .LBB0_501
.LBB0_665:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_507
.LBB0_666:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
	loadli.w r5,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_508
	j .LBB0_509
.LBB0_667:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_515
.LBB0_668:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_516
	j .LBB0_517
.LBB0_669:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_523
.LBB0_670:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_524
	j .LBB0_525
.LBB0_671:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_531
.LBB0_672:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_532
	j .LBB0_533
.LBB0_673:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_539
.LBB0_674:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_540
	j .LBB0_541
.LBB0_675:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_547
.LBB0_676:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_548
	j .LBB0_549
.LBB0_677:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_555
.LBB0_678:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_556
	j .LBB0_557
.Ltmp18:
.LBB0_679:                              # %._crit_edge
	.loc	1 77 4 epilogue_begin is_stmt 1 # copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py:77:4
	addli sp, sp, 384
	mfence { lm, sm, gm }
	exit
.Ltmp19:
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
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
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
	.byte	1                               # Abbrev [1] 0xb:0x6b DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x2c:0x49 DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0x19 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	53                              # DW_AT_call_line
	.byte	40                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x45:0xc DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	123                             # DW_AT_call_line
	.byte	29                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x52:0x22 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp15                         # DW_AT_low_pc
	.long	.Ltmp16-.Ltmp15                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	76                              # DW_AT_call_line
	.byte	27                              # DW_AT_call_column
	.byte	7                               # Abbrev [7] 0x62:0x11 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp15                         # DW_AT_low_pc
	.long	.Ltmp16-.Ltmp15                 # DW_AT_high_pc
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
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	.Ltmp7-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.long	.Ltmp9-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.long	.Ltmp11-.Lfunc_begin0
	.long	.Ltmp12-.Lfunc_begin0
	.long	.Ltmp13-.Lfunc_begin0
	.long	.Ltmp14-.Lfunc_begin0
	.long	.Ltmp17-.Lfunc_begin0
	.long	.Ltmp18-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp1-.Lfunc_begin0
	.long	.Ltmp2-.Lfunc_begin0
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	.Ltmp7-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.long	.Ltmp9-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.long	.Ltmp11-.Lfunc_begin0
	.long	.Ltmp12-.Lfunc_begin0
	.long	.Ltmp13-.Lfunc_begin0
	.long	.Ltmp14-.Lfunc_begin0
	.long	.Ltmp17-.Lfunc_begin0
	.long	.Ltmp18-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"copxof4sux6pz5pc6d5o5yhtqffu7flm3mh5m5gcjcnjopswqjcr.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/smoke-large-v1/cache/inductor/op" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=145
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
