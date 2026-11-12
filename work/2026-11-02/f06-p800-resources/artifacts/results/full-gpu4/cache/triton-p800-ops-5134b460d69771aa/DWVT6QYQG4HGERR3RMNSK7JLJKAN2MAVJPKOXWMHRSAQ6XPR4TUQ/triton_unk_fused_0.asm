	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/ty" "ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py"
	.loc	1 22 0                          # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -520
	addli r30, sp, 456
	lui r2, :hi20:global_smem
	core_id r1
	lui r5, 15
	load_param_i r10, 0
	loadli.w r7,  36(r30)
	loadli.w r4,  32(r30)
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	ori r28, r5, 4095
	lui r5, 1046527
	loadli.w r6,  40(r30)
	add.s r8, r3, r2
	ori r5, r5, 4095
	mul.s r4, r7, r4
	stores.w zero, 1040(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r28
	sync_group
	storeli.w r8, -224(r30)                 # 4-byte Folded Spill
	stores.w r5, 0(r8)
	mul.s r4, r4, r6
	mfence { lm, sm, gm }
	csr_set csr3, r28
	sync_group
	storeli.w r4, -228(r30)                 # 4-byte Folded Spill
	ble.s r4, r10, .LBB0_687
# %bb.1:                                # %.lr.ph
	addli r7, zero, 64
	loadli.w r8,  -224(r30)                 # 4-byte Folded Reload
	addli r12, zero, 2
	load.d r[5:6], 8(r30)
	addli r11, zero, 2
	addli r16, r30, -128
	addli r17, r30, -64
	addli r18, zero, 56
	storeli.w r28, -160(r30)                # 4-byte Folded Spill
	div.s r4, r1, r7
	addli r8, r8, 1040
	storeli.w r8, -236(r30)                 # 4-byte Folded Spill
	load_param_i r8, 1
	storeli.w r8, -244(r30)                 # 4-byte Folded Spill
	storeli.w r4, -232(r30)                 # 4-byte Folded Spill
	slli r4, r4, 6
	sub.s r4, r1, r4
	andi r1, r1, 63
	slli r4, r4, 4
	storeli.w r1, -132(r30)                 # 4-byte Folded Spill
	ori r8, r4, 1
	storeli.w r4, -240(r30)                 # 4-byte Folded Spill
	storeli.w r8, -248(r30)                 # 4-byte Folded Spill
	ori r8, r4, 2
	storeli.w r8, -252(r30)                 # 4-byte Folded Spill
	ori r8, r4, 3
	storeli.w r8, -256(r30)                 # 4-byte Folded Spill
	ori r8, r4, 4
	storeli.w r8, -260(r30)                 # 4-byte Folded Spill
	ori r8, r4, 5
	storeli.w r8, -264(r30)                 # 4-byte Folded Spill
	ori r8, r4, 6
	storeli.w r8, -268(r30)                 # 4-byte Folded Spill
	ori r8, r4, 7
	storeli.w r8, -272(r30)                 # 4-byte Folded Spill
	ori r8, r4, 8
	storeli.w r8, -276(r30)                 # 4-byte Folded Spill
	ori r8, r4, 9
	storeli.w r8, -280(r30)                 # 4-byte Folded Spill
	ori r8, r4, 10
	storeli.w r8, -284(r30)                 # 4-byte Folded Spill
	ori r8, r4, 11
	storeli.w r8, -288(r30)                 # 4-byte Folded Spill
	ori r8, r4, 12
	storeli.w r8, -292(r30)                 # 4-byte Folded Spill
	ori r8, r4, 13
	storeli.w r8, -296(r30)                 # 4-byte Folded Spill
	ori r8, r4, 14
	storeli.w r8, -300(r30)                 # 4-byte Folded Spill
	ori r8, r4, 15
	storeli.w r8, -304(r30)                 # 4-byte Folded Spill
	sext_int2long r[8:9], r4
	lui r4, 1048575
	ori r4, r4, 3840
	sll.d r[8:9], r[8:9], r12
	and r3, r3, r4
	add.ul r[4:5], r[5:6], r[8:9]
	add.s r2, r3, r2
	store.d r[4:5], -312(r30)               # 8-byte Folded Spill
	addli r15, r2, 1040
	storeli.w r15, -452(r30)                # 4-byte Folded Spill
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_568 Depth 2
                                        #     Child Loop BB0_573 Depth 2
	addli r1, zero, 0
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp0:
	.loc	1 38 47 prologue_end            # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:38:47
	add.s r3, r16, r1
	addli r1, r1, 8
	storeli.w zero, 0(r3)
	storeli.w zero, 4(r3)
	mfence { lm }
	bneq r1, r7, .LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 47 is_stmt 0                # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:0:47
	loadli.w r1,  40(r30)
	loadli.w r3,  36(r30)
	storeli.w r10, -136(r30)                # 4-byte Folded Spill
	div.s r1, r10, r1
	div.s r1, r1, r3
	.loc	1 29 23 is_stmt 1               # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:29:23
	loadli.w r3,  -232(r30)                 # 4-byte Folded Reload
	add.s r23, r1, r3
	.loc	1 38 37                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:38:37
	loadli.w r1,  -240(r30)                 # 4-byte Folded Reload
	.loc	1 38 47 is_stmt 0               # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:38:47
	lui r3, 983040
	.loc	1 38 42                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:38:42
	slli r24, r23, 10
	.loc	1 38 47                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:38:47
	or r3, r7, r3
	.loc	1 38 37                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:38:37
	add.s r1, r24, r1
	.loc	1 38 30                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:38:30
	sext_int2long r[4:5], r1
	.loc	1 39 37 is_stmt 1               # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:39:37
	lui r1, 983040
	.loc	1 38 30                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:38:30
	sll.d r[8:9], r[4:5], r11
	load.d r[4:5], 0(r30)
	.loc	1 39 37                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:39:37
	or r1, r7, r1
	store.d r[8:9], -144(r30)               # 8-byte Folded Spill
	.loc	1 38 30                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:38:30
	add.ul r[4:5], r[4:5], r[8:9]
	.loc	1 38 47 is_stmt 0               # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:38:47
	l_gm2lm r3, r16, 0(r[4:5])
	.loc	1 39 37 is_stmt 1               # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:39:37
	load.d r[3:4], -312(r30)                # 8-byte Folded Reload
	l_gm2lm r1, r17, 0(r[3:4])
	.loc	1 38 47                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:38:47
	mfence { lm }
	loadli.w r1,  -128(r30)
	.loc	1 39 37                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:39:37
	loadli.w r4,  -64(r30)
	.loc	1 38 47                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:38:47
	loadli.w r3,  -124(r30)
	.loc	1 39 37                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:39:37
	loadli.w r5,  -60(r30)
	.loc	1 40 18                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:40:18
	add.f.rn r19, r3, r5
	add.f.rn r14, r1, r4
	addli r6, r14, 0
	addli r3, r19, 0
	.loc	1 42 33                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:42:33
	blt.s r23, r7, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 33 is_stmt 0                # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:0:33
	lui r6, 1046528
	lui r3, 1046528
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	addli r1, r17, 4
	addli r4, zero, 0
	storeli.w r1, -148(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=2
	addli r4, r4, 8
	addli r3, r5, 0
	addli r6, r1, 0
	beq r4, r18, .LBB0_32
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 47 is_stmt 1               # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:38:47
	add.s r5, r16, r4
	.loc	1 39 37                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:39:37
	add.s r8, r17, r4
	.loc	1 38 47                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:38:47
	loadli.w r1,  8(r5)
	.loc	1 39 37                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:39:37
	loadli.w r9,  8(r8)
	.loc	1 38 47                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:38:47
	loadli.w r5,  12(r5)
	.loc	1 39 37                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:39:37
	loadli.w r8,  12(r8)
	.loc	1 40 18                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:40:18
	add.f.rn r1, r1, r9
	addli r9, r6, 0
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/torch/_inductor/runtime" "triton_helpers.py"
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r10, r1, r6
	bneq r10, zero, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=2
	slli r10, r1, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r11, r6, 9
.Ltmp2:
	.loc	1 0 0                           # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:0:0
	srli r12, r1, 23
.Ltmp3:
	.loc	2 113 29                        # triton_helpers.py:113:29
	srli r13, r6, 23
.Ltmp4:
	.loc	1 0 0                           # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:0:0
	seteq r10, r10, zero
.Ltmp5:
	.loc	2 113 29                        # triton_helpers.py:113:29
	seteq r11, r11, zero
.Ltmp6:
	.loc	1 0 0                           # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:0:0
	andi r12, r12, 255
.Ltmp7:
	.loc	2 113 29                        # triton_helpers.py:113:29
	andi r13, r13, 255
.Ltmp8:
	.loc	1 0 0                           # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:0:0
	setlti r12, r12, 255
.Ltmp9:
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlti r13, r13, 255
.Ltmp10:
	.loc	1 0 0                           # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:0:0
	or r10, r12, r10
.Ltmp11:
	.loc	2 113 29                        # triton_helpers.py:113:29
	or r11, r13, r11
	and r10, r11, r10
	beq r10, zero, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r6, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_29
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=2
	beq r1, zero, .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r10, zero, r9
	setle.f r11, r9, zero
	and r10, r11, r10
	bneq r10, zero, .LBB0_16
.Ltmp12:
# %bb.15:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r9, 0
.LBB0_16:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	1 42 33 is_stmt 1               # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:42:33
	blt.s r23, r7, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 33 is_stmt 0                # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:0:33
	addli r1, r6, 0
.LBB0_18:                               #   in Loop: Header=BB0_8 Depth=2
	add.f.rn r5, r5, r8
	addli r6, r3, 0
.Ltmp13:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	setlt.f r8, r5, r3
	bneq r8, zero, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r6, r5, 0
.LBB0_20:                               #   in Loop: Header=BB0_8 Depth=2
	slli r8, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r9, r3, 9
	srli r10, r5, 23
	srli r11, r3, 23
	seteq r8, r8, zero
	seteq r9, r9, zero
	andi r10, r10, 255
	andi r11, r11, 255
	setlti r10, r10, 255
	setlti r11, r11, 255
	or r8, r10, r8
	or r9, r11, r9
	and r8, r9, r8
	beq r8, zero, .LBB0_30
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_31
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=2
	beq r5, zero, .LBB0_24
.LBB0_23:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r8, 0
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r8, zero, r6
	setle.f r9, r6, zero
	and r8, r9, r8
	bneq r8, zero, .LBB0_26
.Ltmp14:
# %bb.25:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r6, 0
.LBB0_26:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	1 42 33 is_stmt 1               # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:42:33
	blt.s r23, r7, .LBB0_7
# %bb.27:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 33 is_stmt 0                # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:0:33
	addli r5, r3, 0
	j .LBB0_7
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=2
	lui r9, 523264
	addli r10, r6, 0
.Ltmp15:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r6, zero, .LBB0_12
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r10, r9, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_13
	j .LBB0_14
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r6, 523264
	addli r8, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r3, zero, .LBB0_22
.LBB0_31:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r6, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_23
	j .LBB0_24
.LBB0_32:                               #   in Loop: Header=BB0_2 Depth=1
	setlt.f r4, r5, r1
	addli r3, r1, 0
	bneq r4, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r5, 0
.LBB0_34:                               #   in Loop: Header=BB0_2 Depth=1
	slli r4, r5, 9
	slli r6, r1, 9
	srli r8, r5, 23
	srli r9, r1, 23
	seteq r4, r4, zero
	seteq r6, r6, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r4, r8, r4
	or r6, r9, r6
	and r4, r6, r4
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r4, zero, .LBB0_562
# %bb.35:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r1, zero, .LBB0_563
.LBB0_36:                               #   in Loop: Header=BB0_2 Depth=1
	beq r5, zero, .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_38:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r4, r3, zero
	and r1, r4, r1
	bneq r1, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r3, 0
.LBB0_40:                               #   in Loop: Header=BB0_2 Depth=1
	loadli.w r1,  -224(r30)                 # 4-byte Folded Reload
	stores.w r5, 0(r1)
	mfence { lm, sm, gm }
	csr_set csr3, r28
	sync_group
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_560
# %bb.41:                               #   in Loop: Header=BB0_2 Depth=1
	loads.w r4, 0(r2)
	loads.w r1, 4(r2)
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r1, r4
	addli r3, r4, 0
	bneq r5, zero, .LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
.LBB0_43:                               #   in Loop: Header=BB0_2 Depth=1
	slli r5, r4, 9
	slli r6, r1, 9
	srli r8, r4, 23
	srli r9, r1, 23
	seteq r5, r5, zero
	seteq r6, r6, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r5, r8, r5
	or r6, r9, r6
	and r5, r5, r6
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_575
# %bb.44:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r4, zero, .LBB0_576
.LBB0_45:                               #   in Loop: Header=BB0_2 Depth=1
	beq r1, zero, .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_47:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	storeli.w r19, -320(r30)                # 4-byte Folded Spill
	and r4, r5, r4
	bneq r4, zero, .LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_49:                               #   in Loop: Header=BB0_2 Depth=1
	loads.w r19, 8(r2)
	addli r3, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r19, r1
	bneq r4, zero, .LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r19, 0
.LBB0_51:                               #   in Loop: Header=BB0_2 Depth=1
	slli r4, r19, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r1, 9
	srli r6, r19, 23
	srli r8, r1, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r8, r8, 255
	setlti r6, r6, 255
	setlti r8, r8, 255
	or r4, r6, r4
	or r5, r8, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_577
# %bb.52:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r1, zero, .LBB0_578
.LBB0_53:                               #   in Loop: Header=BB0_2 Depth=1
	beq r19, zero, .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
.LBB0_55:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r4, r3, zero
	storeli.w r14, -316(r30)                # 4-byte Folded Spill
	and r1, r4, r1
	bneq r1, zero, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r3, 0
.LBB0_57:                               #   in Loop: Header=BB0_2 Depth=1
	loads.w r1, 60(r2)
	loads.w r5, 12(r2)
	loads.w r10, 16(r2)
	loads.w r21, 20(r2)
	loads.w r14, 24(r2)
	loads.w r27, 28(r2)
	loads.w r28, 32(r2)
	loads.w r13, 36(r2)
	loads.w r8, 40(r2)
	loads.w r6, 44(r2)
	loads.w r3, 48(r2)
	loads.w r12, 52(r2)
	loads.w r11, 56(r2)
	loads.w r15, 112(r2)
	loads.w r22, 200(r2)
	loads.w r26, 212(r2)
	loads.w r25, 228(r2)
	storeli.w r24, -356(r30)                # 4-byte Folded Spill
	storeli.w r1, -448(r30)                 # 4-byte Folded Spill
	loads.w r1, 64(r2)
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r9, r5, r19
	storeli.w r1, -444(r30)                 # 4-byte Folded Spill
	loads.w r1, 68(r2)
	storeli.w r1, -220(r30)                 # 4-byte Folded Spill
	loads.w r1, 72(r2)
	storeli.w r1, -440(r30)                 # 4-byte Folded Spill
	loads.w r1, 76(r2)
	storeli.w r1, -216(r30)                 # 4-byte Folded Spill
	loads.w r1, 80(r2)
	storeli.w r1, -436(r30)                 # 4-byte Folded Spill
	loads.w r1, 84(r2)
	storeli.w r1, -212(r30)                 # 4-byte Folded Spill
	loads.w r1, 88(r2)
	storeli.w r1, -432(r30)                 # 4-byte Folded Spill
	loads.w r1, 92(r2)
	storeli.w r1, -208(r30)                 # 4-byte Folded Spill
	loads.w r1, 96(r2)
	storeli.w r1, -428(r30)                 # 4-byte Folded Spill
	loads.w r1, 100(r2)
	storeli.w r1, -204(r30)                 # 4-byte Folded Spill
	loads.w r1, 104(r2)
	storeli.w r1, -424(r30)                 # 4-byte Folded Spill
	loads.w r1, 108(r2)
	storeli.w r1, -200(r30)                 # 4-byte Folded Spill
	loads.w r1, 116(r2)
	storeli.w r1, -196(r30)                 # 4-byte Folded Spill
	loads.w r1, 120(r2)
	storeli.w r1, -420(r30)                 # 4-byte Folded Spill
	loads.w r1, 124(r2)
	storeli.w r1, -192(r30)                 # 4-byte Folded Spill
	loads.w r1, 128(r2)
	storeli.w r1, -416(r30)                 # 4-byte Folded Spill
	loads.w r1, 132(r2)
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	loads.w r1, 136(r2)
	storeli.w r1, -188(r30)                 # 4-byte Folded Spill
	loads.w r1, 140(r2)
	storeli.w r1, -408(r30)                 # 4-byte Folded Spill
	loads.w r1, 144(r2)
	storeli.w r1, -184(r30)                 # 4-byte Folded Spill
	loads.w r1, 148(r2)
	storeli.w r1, -404(r30)                 # 4-byte Folded Spill
	loads.w r1, 152(r2)
	storeli.w r1, -180(r30)                 # 4-byte Folded Spill
	loads.w r1, 156(r2)
	storeli.w r1, -396(r30)                 # 4-byte Folded Spill
	loads.w r1, 160(r2)
	storeli.w r1, -176(r30)                 # 4-byte Folded Spill
	loads.w r1, 164(r2)
	storeli.w r1, -388(r30)                 # 4-byte Folded Spill
	loads.w r1, 168(r2)
	storeli.w r1, -172(r30)                 # 4-byte Folded Spill
	loads.w r1, 172(r2)
	storeli.w r1, -384(r30)                 # 4-byte Folded Spill
	loads.w r1, 176(r2)
	storeli.w r1, -168(r30)                 # 4-byte Folded Spill
	loads.w r1, 180(r2)
	storeli.w r1, -380(r30)                 # 4-byte Folded Spill
	loads.w r1, 184(r2)
	storeli.w r1, -164(r30)                 # 4-byte Folded Spill
	loads.w r1, 188(r2)
	storeli.w r1, -376(r30)                 # 4-byte Folded Spill
	loads.w r1, 192(r2)
	storeli.w r1, -156(r30)                 # 4-byte Folded Spill
	loads.w r1, 196(r2)
	storeli.w r1, -372(r30)                 # 4-byte Folded Spill
	loads.w r1, 204(r2)
	storeli.w r1, -152(r30)                 # 4-byte Folded Spill
	loads.w r1, 208(r2)
	storeli.w r1, -360(r30)                 # 4-byte Folded Spill
	loads.w r1, 216(r2)
	storeli.w r1, -368(r30)                 # 4-byte Folded Spill
	loads.w r1, 220(r2)
	storeli.w r1, -352(r30)                 # 4-byte Folded Spill
	loads.w r1, 224(r2)
	storeli.w r1, -348(r30)                 # 4-byte Folded Spill
	loads.w r1, 232(r2)
	storeli.w r1, -344(r30)                 # 4-byte Folded Spill
	loads.w r1, 236(r2)
	storeli.w r1, -340(r30)                 # 4-byte Folded Spill
	loads.w r1, 240(r2)
	storeli.w r1, -336(r30)                 # 4-byte Folded Spill
	loads.w r1, 244(r2)
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
	loads.w r1, 248(r2)
	storeli.w r1, -328(r30)                 # 4-byte Folded Spill
	loads.w r1, 252(r2)
	storeli.w r1, -324(r30)                 # 4-byte Folded Spill
	addli r1, r19, 0
	bneq r9, zero, .LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_59:                               #   in Loop: Header=BB0_2 Depth=1
	slli r9, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r24, r19, 9
	srli r4, r5, 23
	srli r20, r19, 23
	seteq r9, r9, zero
	seteq r24, r24, zero
	andi r4, r4, 255
	andi r20, r20, 255
	setlti r4, r4, 255
	setlti r20, r20, 255
	or r4, r4, r9
	or r9, r20, r24
	and r4, r9, r4
	beq r4, zero, .LBB0_579
# %bb.60:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r19, zero, .LBB0_580
.LBB0_61:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r24,  -356(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_63
.LBB0_62:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r19, 0
.LBB0_63:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r9, r1, zero
	storeli.w r26, -400(r30)                # 4-byte Folded Spill
	and r4, r9, r4
	bneq r4, zero, .LBB0_65
# %bb.64:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_65:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r10, r5
	addli r1, r5, 0
	addli r26, r15, 0
	bneq r4, zero, .LBB0_67
# %bb.66:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_67:                               #   in Loop: Header=BB0_2 Depth=1
	slli r4, r10, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r9, r5, 9
	srli r19, r10, 23
	srli r20, r5, 23
	loadli.w r15,  -452(r30)                # 4-byte Folded Reload
	seteq r4, r4, zero
	seteq r9, r9, zero
	andi r19, r19, 255
	andi r20, r20, 255
	setlti r19, r19, 255
	setlti r20, r20, 255
	or r4, r19, r4
	or r9, r20, r9
	and r4, r9, r4
	bneq r4, zero, .LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_69:                               #   in Loop: Header=BB0_2 Depth=1
	storeli.w r25, -364(r30)                # 4-byte Folded Spill
	storeli.w r22, -392(r30)                # 4-byte Folded Spill
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_71:                               #   in Loop: Header=BB0_2 Depth=1
	loadli.w r25,  -396(r30)                # 4-byte Folded Reload
	loadli.w r22,  -448(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r5, 0
.LBB0_73:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r5, r1, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_75:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r21, r10
	addli r1, r10, 0
	bneq r4, zero, .LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r21, 0
.LBB0_77:                               #   in Loop: Header=BB0_2 Depth=1
	slli r4, r21, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r10, 9
	srli r9, r21, 23
	srli r19, r10, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r9, r9, 255
	andi r19, r19, 255
	setlti r9, r9, 255
	setlti r19, r19, 255
	or r4, r9, r4
	or r5, r19, r5
	and r4, r5, r4
	bneq r4, zero, .LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_79:                               #   in Loop: Header=BB0_2 Depth=1
	loadli.w r20,  -412(r30)                # 4-byte Folded Reload
	loadli.w r19,  -416(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_81:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r21, zero, .LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r10, 0
.LBB0_83:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r5, r1, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r1, 0
.LBB0_85:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r14, r21
	addli r1, r21, 0
	bneq r4, zero, .LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
.LBB0_87:                               #   in Loop: Header=BB0_2 Depth=1
	slli r4, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r21, 9
	srli r9, r14, 23
	srli r10, r21, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r9, r9, 255
	andi r10, r10, 255
	setlti r9, r9, 255
	setlti r10, r10, 255
	or r4, r9, r4
	or r5, r10, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_581
# %bb.88:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r21, zero, .LBB0_582
.LBB0_89:                               #   in Loop: Header=BB0_2 Depth=1
	beq r14, zero, .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r21, 0
.LBB0_91:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r5, r1, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
.LBB0_93:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r27, r14
	loadli.w r21,  -420(r30)                # 4-byte Folded Reload
	addli r1, r14, 0
	bneq r4, zero, .LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r27, 0
.LBB0_95:                               #   in Loop: Header=BB0_2 Depth=1
	slli r4, r27, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r14, 9
	srli r9, r27, 23
	srli r10, r14, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r9, r9, 255
	andi r10, r10, 255
	setlti r9, r9, 255
	setlti r10, r10, 255
	or r4, r9, r4
	or r5, r10, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_583
# %bb.96:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r14, zero, .LBB0_584
.LBB0_97:                               #   in Loop: Header=BB0_2 Depth=1
	beq r27, zero, .LBB0_99
.LBB0_98:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r14, 0
.LBB0_99:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r5, r1, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_101
# %bb.100:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
.LBB0_101:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r28, r27
	loadli.w r14,  -440(r30)                # 4-byte Folded Reload
	addli r1, r27, 0
	bneq r4, zero, .LBB0_103
# %bb.102:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r28, 0
.LBB0_103:                              #   in Loop: Header=BB0_2 Depth=1
	slli r4, r28, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r27, 9
	srli r9, r28, 23
	srli r10, r27, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r9, r9, 255
	andi r10, r10, 255
	setlti r9, r9, 255
	setlti r10, r10, 255
	or r4, r9, r4
	or r5, r10, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_585
# %bb.104:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r27, zero, .LBB0_586
.LBB0_105:                              #   in Loop: Header=BB0_2 Depth=1
	beq r28, zero, .LBB0_107
.LBB0_106:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r27, 0
.LBB0_107:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r5, r1, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
.LBB0_109:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r13, r28
	loadli.w r27,  -444(r30)                # 4-byte Folded Reload
	addli r1, r28, 0
	bneq r4, zero, .LBB0_111
# %bb.110:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r13, 0
.LBB0_111:                              #   in Loop: Header=BB0_2 Depth=1
	slli r4, r13, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r28, 9
	srli r9, r13, 23
	srli r10, r28, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r9, r9, 255
	andi r10, r10, 255
	setlti r9, r9, 255
	setlti r10, r10, 255
	or r4, r9, r4
	or r5, r10, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_587
# %bb.112:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r28, zero, .LBB0_588
.LBB0_113:                              #   in Loop: Header=BB0_2 Depth=1
	beq r13, zero, .LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r28, 0
.LBB0_115:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r5, r1, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_117
# %bb.116:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
.LBB0_117:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r8, r13
	loadli.w r28,  -436(r30)                # 4-byte Folded Reload
	addli r1, r13, 0
	bneq r4, zero, .LBB0_119
# %bb.118:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_119:                              #   in Loop: Header=BB0_2 Depth=1
	slli r4, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r13, 9
	srli r9, r8, 23
	srli r10, r13, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r9, r9, 255
	andi r10, r10, 255
	setlti r9, r9, 255
	setlti r10, r10, 255
	or r4, r9, r4
	or r5, r10, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_589
# %bb.120:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r13, zero, .LBB0_590
.LBB0_121:                              #   in Loop: Header=BB0_2 Depth=1
	beq r8, zero, .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r13, 0
.LBB0_123:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r5, r1, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_125
# %bb.124:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
.LBB0_125:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r8
	loadli.w r13,  -424(r30)                # 4-byte Folded Reload
	addli r1, r8, 0
	bneq r4, zero, .LBB0_127
# %bb.126:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r6, 0
.LBB0_127:                              #   in Loop: Header=BB0_2 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r8, 9
	srli r9, r6, 23
	srli r10, r8, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r9, r9, 255
	andi r10, r10, 255
	setlti r9, r9, 255
	setlti r10, r10, 255
	or r4, r9, r4
	or r5, r10, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_591
# %bb.128:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r10,  -404(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_592
.LBB0_129:                              #   in Loop: Header=BB0_2 Depth=1
	beq r6, zero, .LBB0_131
.LBB0_130:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r8, 0
.LBB0_131:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r5, r1, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_133
# %bb.132:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_133:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r3, r6
	addli r1, r6, 0
	bneq r4, zero, .LBB0_135
# %bb.134:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_135:                              #   in Loop: Header=BB0_2 Depth=1
	slli r4, r3, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r6, 9
	srli r8, r3, 23
	srli r9, r6, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r4, r8, r4
	or r5, r9, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_593
# %bb.136:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r9,  -408(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_594
.LBB0_137:                              #   in Loop: Header=BB0_2 Depth=1
	beq r3, zero, .LBB0_139
.LBB0_138:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_139:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r1
	setle.f r5, r1, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_141
# %bb.140:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
.LBB0_141:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r12, r3
	addli r1, r3, 0
	bneq r4, zero, .LBB0_143
# %bb.142:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_143:                              #   in Loop: Header=BB0_2 Depth=1
	slli r4, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r3, 9
	srli r6, r12, 23
	srli r8, r3, 23
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
# %bb.144:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r8,  -388(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_596
.LBB0_145:                              #   in Loop: Header=BB0_2 Depth=1
	beq r12, zero, .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r3, 0
.LBB0_147:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_149
# %bb.148:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_149:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r11, r12
	addli r1, r12, 0
	bneq r3, zero, .LBB0_151
# %bb.150:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r11, 0
.LBB0_151:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r12, 9
	srli r5, r11, 23
	srli r6, r12, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_597
# %bb.152:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r12, zero, .LBB0_598
.LBB0_153:                              #   in Loop: Header=BB0_2 Depth=1
	beq r11, zero, .LBB0_155
.LBB0_154:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r12, 0
.LBB0_155:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_157
# %bb.156:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_157:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r22, r11
	loadli.w r12,  -428(r30)                # 4-byte Folded Reload
	addli r1, r11, 0
	bneq r3, zero, .LBB0_159
# %bb.158:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r22, 0
.LBB0_159:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r11, 9
	srli r5, r22, 23
	srli r6, r11, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_599
# %bb.160:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r11, zero, .LBB0_600
.LBB0_161:                              #   in Loop: Header=BB0_2 Depth=1
	beq r22, zero, .LBB0_163
.LBB0_162:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r11, 0
.LBB0_163:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_165
# %bb.164:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
.LBB0_165:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r27, r22
	loadli.w r11,  -432(r30)                # 4-byte Folded Reload
	addli r1, r22, 0
	bneq r3, zero, .LBB0_167
# %bb.166:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r27, 0
.LBB0_167:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r27, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r22, 9
	srli r5, r27, 23
	srli r6, r22, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_601
# %bb.168:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_602
.LBB0_169:                              #   in Loop: Header=BB0_2 Depth=1
	beq r27, zero, .LBB0_171
.LBB0_170:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r22, 0
.LBB0_171:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_173
# %bb.172:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
.LBB0_173:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r27
	loadli.w r22,  -352(r30)                # 4-byte Folded Reload
	addli r1, r27, 0
	bneq r3, zero, .LBB0_175
# %bb.174:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_175:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r27, 9
	srli r5, r5, 23
	srli r6, r27, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_603
# %bb.176:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r27, zero, .LBB0_604
.LBB0_177:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_179
.LBB0_178:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r27, 0
.LBB0_179:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_181
# %bb.180:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_181:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r14, r6
	addli r1, r6, 0
	bneq r3, zero, .LBB0_183
# %bb.182:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
.LBB0_183:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r6, 9
	srli r5, r14, 23
	addli r27, r6, 0
	srli r6, r6, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_605
# %bb.184:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_606
.LBB0_185:                              #   in Loop: Header=BB0_2 Depth=1
	beq r14, zero, .LBB0_187
.LBB0_186:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r27, 0
.LBB0_187:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_189
# %bb.188:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
.LBB0_189:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r14
	addli r1, r14, 0
	bneq r3, zero, .LBB0_191
# %bb.190:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_191:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r14, 9
	srli r5, r5, 23
	srli r6, r14, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_607
# %bb.192:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r14, zero, .LBB0_608
.LBB0_193:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_195
.LBB0_194:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r14, 0
.LBB0_195:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_197
# %bb.196:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_197:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r28, r6
	addli r1, r6, 0
	bneq r3, zero, .LBB0_199
# %bb.198:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r28, 0
.LBB0_199:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r28, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r6, 9
	srli r5, r28, 23
	addli r14, r6, 0
	srli r6, r6, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_609
# %bb.200:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_610
.LBB0_201:                              #   in Loop: Header=BB0_2 Depth=1
	beq r28, zero, .LBB0_203
.LBB0_202:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r14, 0
.LBB0_203:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_205
# %bb.204:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
.LBB0_205:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r28
	addli r1, r28, 0
	bneq r3, zero, .LBB0_207
# %bb.206:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_207:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r28, 9
	srli r5, r5, 23
	srli r6, r28, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	bneq r3, zero, .LBB0_209
# %bb.208:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_209:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_211
# %bb.210:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
.LBB0_211:                              #   in Loop: Header=BB0_2 Depth=1
	addli r3, r28, 0
	loadli.w r28,  -380(r30)                # 4-byte Folded Reload
	loadli.w r6,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_213
# %bb.212:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r3, 0
.LBB0_213:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	addli r14, r22, 0
	and r3, r4, r3
	bneq r3, zero, .LBB0_215
# %bb.214:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_215:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r11, r6
	loadli.w r22,  -360(r30)                # 4-byte Folded Reload
	addli r1, r6, 0
	bneq r3, zero, .LBB0_217
# %bb.216:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r11, 0
.LBB0_217:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r6, 9
	srli r5, r11, 23
	addli r27, r6, 0
	srli r6, r6, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_611
# %bb.218:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_612
.LBB0_219:                              #   in Loop: Header=BB0_2 Depth=1
	beq r11, zero, .LBB0_221
.LBB0_220:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r27, 0
.LBB0_221:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_223
# %bb.222:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_223:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r11
	addli r1, r11, 0
	addli r27, r22, 0
	bneq r3, zero, .LBB0_225
# %bb.224:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_225:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r11, 9
	srli r5, r5, 23
	srli r6, r11, 23
	addli r22, r14, 0
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_613
# %bb.226:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r28, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_614
.LBB0_227:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_229
.LBB0_228:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r11, 0
.LBB0_229:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_231
# %bb.230:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_231:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r12, r6
	addli r1, r6, 0
	bneq r3, zero, .LBB0_233
# %bb.232:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_233:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r6, 9
	srli r5, r12, 23
	addli r11, r6, 0
	srli r6, r6, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_615
# %bb.234:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_616
.LBB0_235:                              #   in Loop: Header=BB0_2 Depth=1
	beq r12, zero, .LBB0_237
.LBB0_236:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r11, 0
.LBB0_237:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_239
# %bb.238:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_239:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r12
	addli r1, r12, 0
	bneq r3, zero, .LBB0_241
# %bb.240:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_241:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r12, 9
	srli r5, r5, 23
	srli r6, r12, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_617
# %bb.242:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r12, zero, .LBB0_618
.LBB0_243:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_245
.LBB0_244:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r12, 0
.LBB0_245:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_247
# %bb.246:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_247:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r13, r6
	addli r1, r6, 0
	bneq r3, zero, .LBB0_249
# %bb.248:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r13, 0
.LBB0_249:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r13, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r6, 9
	srli r5, r13, 23
	addli r12, r6, 0
	srli r6, r6, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_619
# %bb.250:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_620
.LBB0_251:                              #   in Loop: Header=BB0_2 Depth=1
	beq r13, zero, .LBB0_253
.LBB0_252:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r12, 0
.LBB0_253:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_255
# %bb.254:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
.LBB0_255:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r13
	addli r1, r13, 0
	bneq r3, zero, .LBB0_257
# %bb.256:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_257:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r13, 9
	srli r5, r5, 23
	srli r6, r13, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_621
# %bb.258:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r13, zero, .LBB0_622
.LBB0_259:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_261
.LBB0_260:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r13, 0
.LBB0_261:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_263
# %bb.262:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_263:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r26, r6
	addli r1, r6, 0
	bneq r3, zero, .LBB0_265
# %bb.264:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r26, 0
.LBB0_265:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r26, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r6, 9
	srli r5, r26, 23
	addli r13, r6, 0
	srli r6, r6, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_623
# %bb.266:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_624
.LBB0_267:                              #   in Loop: Header=BB0_2 Depth=1
	beq r26, zero, .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r13, 0
.LBB0_269:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_271
# %bb.270:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
.LBB0_271:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r26
	addli r1, r26, 0
	bneq r3, zero, .LBB0_273
# %bb.272:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_273:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r26, 9
	srli r5, r5, 23
	srli r6, r26, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_625
# %bb.274:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r26, zero, .LBB0_626
.LBB0_275:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_277
.LBB0_276:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r26, 0
.LBB0_277:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_279
# %bb.278:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_279:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r21, r6
	addli r1, r6, 0
	bneq r3, zero, .LBB0_281
# %bb.280:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r21, 0
.LBB0_281:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r21, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r6, 9
	srli r5, r21, 23
	addli r26, r6, 0
	srli r6, r6, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_627
# %bb.282:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r26, zero, .LBB0_628
.LBB0_283:                              #   in Loop: Header=BB0_2 Depth=1
	beq r21, zero, .LBB0_285
.LBB0_284:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r26, 0
.LBB0_285:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_287
# %bb.286:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r1, 0
.LBB0_287:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r21
	addli r1, r21, 0
	bneq r3, zero, .LBB0_289
# %bb.288:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_289:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r21, 9
	srli r5, r5, 23
	srli r6, r21, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_629
# %bb.290:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r21, zero, .LBB0_630
.LBB0_291:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_293
.LBB0_292:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r21, 0
.LBB0_293:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_295
# %bb.294:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_295:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r19, r6
	addli r1, r6, 0
	bneq r3, zero, .LBB0_297
# %bb.296:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r19, 0
.LBB0_297:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r19, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r6, 9
	srli r5, r19, 23
	addli r21, r6, 0
	srli r6, r6, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_631
# %bb.298:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r21, zero, .LBB0_632
.LBB0_299:                              #   in Loop: Header=BB0_2 Depth=1
	beq r19, zero, .LBB0_301
.LBB0_300:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r21, 0
.LBB0_301:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_303
# %bb.302:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
.LBB0_303:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r20, r19
	addli r1, r19, 0
	bneq r3, zero, .LBB0_305
# %bb.304:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r20, 0
.LBB0_305:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r19, 9
	srli r5, r20, 23
	srli r6, r19, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_633
# %bb.306:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_634
.LBB0_307:                              #   in Loop: Header=BB0_2 Depth=1
	beq r20, zero, .LBB0_309
.LBB0_308:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r19, 0
.LBB0_309:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_311
# %bb.310:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
.LBB0_311:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r20
	addli r1, r20, 0
	bneq r3, zero, .LBB0_313
# %bb.312:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_313:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r20, 9
	srli r5, r5, 23
	srli r6, r20, 23
	addli r19, r20, 0
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	bneq r3, zero, .LBB0_315
# %bb.314:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_315:                              #   in Loop: Header=BB0_2 Depth=1
	loadli.w r20,  -340(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_317
# %bb.316:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
.LBB0_317:                              #   in Loop: Header=BB0_2 Depth=1
	loadli.w r12,  -336(r30)                # 4-byte Folded Reload
	loadli.w r6,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_319
# %bb.318:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r19, 0
.LBB0_319:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	loadli.w r11,  -344(r30)                # 4-byte Folded Reload
	and r3, r4, r3
	bneq r3, zero, .LBB0_321
# %bb.320:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_321:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r9, r6
	loadli.w r13,  -348(r30)                # 4-byte Folded Reload
	loadli.w r19,  -376(r30)                # 4-byte Folded Reload
	addli r1, r6, 0
	bneq r3, zero, .LBB0_323
# %bb.322:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r9, 0
.LBB0_323:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r6, 9
	srli r5, r9, 23
	addli r21, r6, 0
	srli r6, r6, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_635
# %bb.324:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r21, zero, .LBB0_636
.LBB0_325:                              #   in Loop: Header=BB0_2 Depth=1
	beq r9, zero, .LBB0_327
.LBB0_326:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r21, 0
.LBB0_327:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_329
# %bb.328:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_329:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r9
	addli r1, r9, 0
	addli r21, r13, 0
	bneq r3, zero, .LBB0_331
# %bb.330:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_331:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r9, 9
	srli r5, r5, 23
	srli r6, r9, 23
	addli r13, r11, 0
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	bneq r3, zero, .LBB0_333
# %bb.332:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_333:                              #   in Loop: Header=BB0_2 Depth=1
	addli r11, r12, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_335
# %bb.334:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_335:                              #   in Loop: Header=BB0_2 Depth=1
	loadli.w r6,  -184(r30)                 # 4-byte Folded Reload
	addli r12, r20, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_337
# %bb.336:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r9, 0
.LBB0_337:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	loadli.w r20,  -384(r30)                # 4-byte Folded Reload
	and r3, r4, r3
	bneq r3, zero, .LBB0_339
# %bb.338:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_339:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r10, r6
	addli r1, r6, 0
	bneq r3, zero, .LBB0_341
# %bb.340:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_341:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r10, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r6, 9
	srli r5, r10, 23
	addli r9, r6, 0
	srli r6, r6, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_637
# %bb.342:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_638
.LBB0_343:                              #   in Loop: Header=BB0_2 Depth=1
	beq r10, zero, .LBB0_345
.LBB0_344:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r9, 0
.LBB0_345:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_347
# %bb.346:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_347:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r10
	addli r1, r10, 0
	bneq r3, zero, .LBB0_349
# %bb.348:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_349:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r10, 9
	srli r5, r5, 23
	srli r6, r10, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_639
# %bb.350:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r10, zero, .LBB0_640
.LBB0_351:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_353
.LBB0_352:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r10, 0
.LBB0_353:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_355
# %bb.354:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_355:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r25, r6
	addli r1, r6, 0
	bneq r3, zero, .LBB0_357
# %bb.356:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r25, 0
.LBB0_357:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r25, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r6, 9
	srli r5, r25, 23
	addli r10, r6, 0
	srli r6, r6, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_641
# %bb.358:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_642
.LBB0_359:                              #   in Loop: Header=BB0_2 Depth=1
	beq r25, zero, .LBB0_361
.LBB0_360:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r10, 0
.LBB0_361:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_363
# %bb.362:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
.LBB0_363:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r25
	addli r1, r25, 0
	bneq r3, zero, .LBB0_365
# %bb.364:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_365:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r25, 9
	srli r5, r5, 23
	srli r6, r25, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	bneq r3, zero, .LBB0_367
# %bb.366:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_367:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_369
# %bb.368:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
.LBB0_369:                              #   in Loop: Header=BB0_2 Depth=1
	addli r3, r25, 0
	loadli.w r25,  -400(r30)                # 4-byte Folded Reload
	loadli.w r6,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_371
# %bb.370:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r3, 0
.LBB0_371:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	loadli.w r26,  -332(r30)                # 4-byte Folded Reload
	and r3, r4, r3
	bneq r3, zero, .LBB0_373
# %bb.372:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_373:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r8, r6
	loadli.w r10,  -328(r30)                # 4-byte Folded Reload
	addli r1, r6, 0
	bneq r3, zero, .LBB0_375
# %bb.374:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_375:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r6, 9
	srli r5, r8, 23
	addli r9, r6, 0
	srli r6, r6, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_643
# %bb.376:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_644
.LBB0_377:                              #   in Loop: Header=BB0_2 Depth=1
	beq r8, zero, .LBB0_379
.LBB0_378:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r9, 0
.LBB0_379:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_381
# %bb.380:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
.LBB0_381:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r8
	addli r1, r8, 0
	addli r9, r10, 0
	bneq r3, zero, .LBB0_383
# %bb.382:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_383:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r8, 9
	srli r5, r5, 23
	srli r6, r8, 23
	addli r10, r26, 0
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_645
# %bb.384:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r25, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_646
.LBB0_385:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_387
.LBB0_386:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r8, 0
.LBB0_387:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_389
# %bb.388:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_389:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r20, r6
	addli r1, r6, 0
	bneq r3, zero, .LBB0_391
# %bb.390:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r20, 0
.LBB0_391:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r6, 9
	srli r5, r20, 23
	addli r8, r6, 0
	srli r6, r6, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_647
# %bb.392:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_648
.LBB0_393:                              #   in Loop: Header=BB0_2 Depth=1
	beq r20, zero, .LBB0_395
.LBB0_394:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r8, 0
.LBB0_395:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_397
# %bb.396:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
.LBB0_397:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r20
	loadli.w r8,  -392(r30)                 # 4-byte Folded Reload
	addli r1, r20, 0
	bneq r3, zero, .LBB0_399
# %bb.398:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_399:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r20, 9
	srli r5, r5, 23
	srli r6, r20, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_649
# %bb.400:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r20, zero, .LBB0_650
.LBB0_401:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_403
.LBB0_402:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r20, 0
.LBB0_403:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_405
# %bb.404:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_405:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r14, r6
	addli r1, r6, 0
	bneq r3, zero, .LBB0_407
# %bb.406:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
.LBB0_407:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r6, 9
	srli r5, r14, 23
	addli r28, r6, 0
	srli r6, r6, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_651
# %bb.408:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_652
.LBB0_409:                              #   in Loop: Header=BB0_2 Depth=1
	beq r14, zero, .LBB0_411
.LBB0_410:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r28, 0
.LBB0_411:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_413
# %bb.412:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
.LBB0_413:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r14
	addli r1, r14, 0
	bneq r3, zero, .LBB0_415
# %bb.414:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_415:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r14, 9
	srli r5, r5, 23
	srli r6, r14, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_653
# %bb.416:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r14, zero, .LBB0_654
.LBB0_417:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_419
.LBB0_418:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r14, 0
.LBB0_419:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_421
# %bb.420:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_421:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r19, r6
	addli r1, r6, 0
	bneq r3, zero, .LBB0_423
# %bb.422:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r19, 0
.LBB0_423:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r19, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r6, 9
	srli r5, r19, 23
	addli r14, r6, 0
	srli r6, r6, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_655
# %bb.424:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_656
.LBB0_425:                              #   in Loop: Header=BB0_2 Depth=1
	beq r19, zero, .LBB0_427
.LBB0_426:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r14, 0
.LBB0_427:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_429
# %bb.428:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
.LBB0_429:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r19
	loadli.w r14,  -372(r30)                # 4-byte Folded Reload
	addli r1, r19, 0
	bneq r3, zero, .LBB0_431
# %bb.430:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_431:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r19, 9
	srli r5, r5, 23
	srli r6, r19, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_657
# %bb.432:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r19, zero, .LBB0_658
.LBB0_433:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_435
.LBB0_434:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r19, 0
.LBB0_435:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_437
# %bb.436:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_437:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r14, r6
	addli r1, r6, 0
	bneq r3, zero, .LBB0_439
# %bb.438:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
.LBB0_439:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r6, 9
	srli r5, r14, 23
	addli r20, r6, 0
	srli r6, r6, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_659
# %bb.440:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r20, zero, .LBB0_660
.LBB0_441:                              #   in Loop: Header=BB0_2 Depth=1
	beq r14, zero, .LBB0_443
.LBB0_442:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r20, 0
.LBB0_443:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_445
# %bb.444:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
.LBB0_445:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r8, r14
	addli r1, r14, 0
	bneq r3, zero, .LBB0_447
# %bb.446:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_447:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r14, 9
	srli r5, r8, 23
	srli r6, r14, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_661
# %bb.448:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -152(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_662
.LBB0_449:                              #   in Loop: Header=BB0_2 Depth=1
	beq r8, zero, .LBB0_451
.LBB0_450:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r14, 0
.LBB0_451:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_453
# %bb.452:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
.LBB0_453:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r8
	loadli.w r19,  -368(r30)                # 4-byte Folded Reload
	addli r1, r8, 0
	bneq r3, zero, .LBB0_455
# %bb.454:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_455:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r8, 9
	srli r5, r5, 23
	srli r6, r8, 23
	addli r20, r8, 0
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	bneq r3, zero, .LBB0_457
# %bb.456:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_457:                              #   in Loop: Header=BB0_2 Depth=1
	loadli.w r25,  -160(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_459
# %bb.458:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
.LBB0_459:                              #   in Loop: Header=BB0_2 Depth=1
	loadli.w r28,  -324(r30)                # 4-byte Folded Reload
	loadli.w r6,  -152(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_461
# %bb.460:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r20, 0
.LBB0_461:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	loadli.w r8,  -316(r30)                 # 4-byte Folded Reload
	and r3, r4, r3
	bneq r3, zero, .LBB0_463
# %bb.462:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_463:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r27, r6
	loadli.w r14,  -320(r30)                # 4-byte Folded Reload
	addli r1, r6, 0
	addli r20, r19, 0
	bneq r3, zero, .LBB0_465
# %bb.464:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r27, 0
.LBB0_465:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r27, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r6, 9
	srli r5, r27, 23
	addli r19, r6, 0
	srli r6, r6, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_663
# %bb.466:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r19, zero, .LBB0_664
.LBB0_467:                              #   in Loop: Header=BB0_2 Depth=1
	beq r27, zero, .LBB0_469
.LBB0_468:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r19, 0
.LBB0_469:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_471
# %bb.470:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
.LBB0_471:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r26, r27
	addli r1, r27, 0
	addli r19, r14, 0
	bneq r3, zero, .LBB0_473
# %bb.472:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r26, 0
.LBB0_473:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r26, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r27, 9
	srli r5, r26, 23
	srli r6, r27, 23
	addli r14, r8, 0
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_665
# %bb.474:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r28, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_666
.LBB0_475:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r25, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_477
.LBB0_476:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r27, 0
.LBB0_477:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_479
# %bb.478:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
.LBB0_479:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r20, r26
	addli r1, r26, 0
	bneq r3, zero, .LBB0_481
# %bb.480:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r20, 0
.LBB0_481:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r26, 9
	srli r5, r20, 23
	srli r6, r26, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_667
# %bb.482:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r26, zero, .LBB0_668
.LBB0_483:                              #   in Loop: Header=BB0_2 Depth=1
	beq r20, zero, .LBB0_485
.LBB0_484:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r26, 0
.LBB0_485:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_487
# %bb.486:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
.LBB0_487:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r22, r20
	addli r1, r20, 0
	bneq r3, zero, .LBB0_489
# %bb.488:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r22, 0
.LBB0_489:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r20, 9
	srli r5, r22, 23
	srli r6, r20, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_669
# %bb.490:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r20, zero, .LBB0_670
.LBB0_491:                              #   in Loop: Header=BB0_2 Depth=1
	beq r22, zero, .LBB0_493
.LBB0_492:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r20, 0
.LBB0_493:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_495
# %bb.494:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
.LBB0_495:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r21, r22
	loadli.w r20,  -364(r30)                # 4-byte Folded Reload
	addli r1, r22, 0
	bneq r3, zero, .LBB0_497
# %bb.496:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r21, 0
.LBB0_497:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r21, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r22, 9
	srli r5, r21, 23
	srli r6, r22, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_671
# %bb.498:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r22, zero, .LBB0_672
.LBB0_499:                              #   in Loop: Header=BB0_2 Depth=1
	beq r21, zero, .LBB0_501
.LBB0_500:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r22, 0
.LBB0_501:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_503
# %bb.502:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r1, 0
.LBB0_503:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r20, r21
	addli r1, r21, 0
	bneq r3, zero, .LBB0_505
# %bb.504:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r20, 0
.LBB0_505:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r21, 9
	srli r5, r20, 23
	srli r6, r21, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_673
# %bb.506:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r21, zero, .LBB0_674
.LBB0_507:                              #   in Loop: Header=BB0_2 Depth=1
	beq r20, zero, .LBB0_509
.LBB0_508:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r21, 0
.LBB0_509:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_511
# %bb.510:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
.LBB0_511:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r13, r20
	addli r1, r20, 0
	bneq r3, zero, .LBB0_513
# %bb.512:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r13, 0
.LBB0_513:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r13, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r20, 9
	srli r5, r13, 23
	srli r6, r20, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_675
# %bb.514:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r20, zero, .LBB0_676
.LBB0_515:                              #   in Loop: Header=BB0_2 Depth=1
	beq r13, zero, .LBB0_517
.LBB0_516:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r20, 0
.LBB0_517:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_519
# %bb.518:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
.LBB0_519:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r12, r13
	addli r1, r13, 0
	bneq r3, zero, .LBB0_521
# %bb.520:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_521:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r13, 9
	srli r5, r12, 23
	srli r6, r13, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_677
# %bb.522:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r13, zero, .LBB0_678
.LBB0_523:                              #   in Loop: Header=BB0_2 Depth=1
	beq r12, zero, .LBB0_525
.LBB0_524:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r13, 0
.LBB0_525:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_527
# %bb.526:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_527:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r11, r12
	addli r1, r12, 0
	bneq r3, zero, .LBB0_529
# %bb.528:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r11, 0
.LBB0_529:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r12, 9
	srli r5, r11, 23
	srli r6, r12, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_679
# %bb.530:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r12, zero, .LBB0_680
.LBB0_531:                              #   in Loop: Header=BB0_2 Depth=1
	beq r11, zero, .LBB0_533
.LBB0_532:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r12, 0
.LBB0_533:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_535
# %bb.534:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_535:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r10, r11
	addli r1, r11, 0
	bneq r3, zero, .LBB0_537
# %bb.536:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_537:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r10, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r11, 9
	srli r5, r10, 23
	srli r6, r11, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_681
# %bb.538:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r11, zero, .LBB0_682
.LBB0_539:                              #   in Loop: Header=BB0_2 Depth=1
	beq r10, zero, .LBB0_541
.LBB0_540:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r11, 0
.LBB0_541:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_543
# %bb.542:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_543:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r9, r10
	addli r1, r10, 0
	bneq r3, zero, .LBB0_545
# %bb.544:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r9, 0
.LBB0_545:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r10, 9
	srli r5, r9, 23
	srli r6, r10, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_683
# %bb.546:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r10, zero, .LBB0_684
.LBB0_547:                              #   in Loop: Header=BB0_2 Depth=1
	beq r9, zero, .LBB0_549
.LBB0_548:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r10, 0
.LBB0_549:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_551
# %bb.550:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_551:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r8, r9
	addli r1, r9, 0
	bneq r3, zero, .LBB0_553
# %bb.552:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_553:                              #   in Loop: Header=BB0_2 Depth=1
	slli r3, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r9, 9
	srli r5, r8, 23
	srli r6, r9, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_685
# %bb.554:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r9, zero, .LBB0_686
.LBB0_555:                              #   in Loop: Header=BB0_2 Depth=1
	beq r8, zero, .LBB0_557
.LBB0_556:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r9, 0
.LBB0_557:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_559
.Ltmp16:
# %bb.558:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
.LBB0_559:                              #   in Loop: Header=BB0_2 Depth=1
	stores.w r8, 0(r2)
.LBB0_560:                              #   in Loop: Header=BB0_2 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r28
	sync_group
	loads.w r20, 0(r2)
	.loc	1 47 34 is_stmt 1               # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:47:34
	blt.s r23, r7, .LBB0_564
# %bb.561:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 34 is_stmt 0                # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:0:34
	addli r25, zero, 0
	addli r26, zero, 0
	j .LBB0_565
.LBB0_562:                              #   in Loop: Header=BB0_2 Depth=1
	lui r3, 523264
.Ltmp17:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r1, zero, .LBB0_36
.LBB0_563:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r1, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_37
	j .LBB0_38
.Ltmp18:
.LBB0_564:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 0                           # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:0:0
	sub.f.rn r1, r14, r20
	sub.f.rn r3, r19, r20
	exp.f.rn r25, r1
	exp.f.rn r26, r3
.LBB0_565:                              #   in Loop: Header=BB0_2 Depth=1
	loadli.w r1,  -248(r30)                 # 4-byte Folded Reload
	add.s r22, r1, r24
	loadli.w r1,  -252(r30)                 # 4-byte Folded Reload
	add.s r21, r1, r24
	loadli.w r1,  -256(r30)                 # 4-byte Folded Reload
	add.s r19, r1, r24
	loadli.w r1,  -260(r30)                 # 4-byte Folded Reload
	add.s r14, r1, r24
	loadli.w r1,  -264(r30)                 # 4-byte Folded Reload
	add.s r13, r1, r24
	loadli.w r1,  -268(r30)                 # 4-byte Folded Reload
	add.s r12, r1, r24
	loadli.w r1,  -272(r30)                 # 4-byte Folded Reload
	add.s r11, r1, r24
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	add.s r10, r1, r24
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	add.s r9, r1, r24
	loadli.w r1,  -284(r30)                 # 4-byte Folded Reload
	add.s r8, r1, r24
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	add.s r6, r1, r24
	loadli.w r1,  -292(r30)                 # 4-byte Folded Reload
	add.s r5, r1, r24
	loadli.w r1,  -296(r30)                 # 4-byte Folded Reload
	add.s r4, r1, r24
	loadli.w r1,  -300(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r24
	storeli.w r1, -156(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r24
	addli r24, zero, 0
	storeli.w r1, -152(r30)                 # 4-byte Folded Spill
	j .LBB0_568
.LBB0_566:                              #   in Loop: Header=BB0_568 Depth=2
	addli r27, zero, 0
	addli r28, zero, 0
.LBB0_567:                              #   in Loop: Header=BB0_568 Depth=2
.Ltmp19:
	.file	3 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	3 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r25, r25, r27
	add.f.rn r26, r26, r28
	addli r24, r24, 8
	beq r24, r18, .LBB0_570
.Ltmp20:
.LBB0_568:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 47 34                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:47:34
	blt.s r23, r7, .LBB0_569
	j .LBB0_566
.LBB0_569:                              #   in Loop: Header=BB0_568 Depth=2
	.loc	1 0 0 is_stmt 0                 # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:0:0
	add.s r27, r16, r24
	add.s r28, r17, r24
	loadli.w r1,  8(r27)
	loadli.w r3,  8(r28)
	loadli.w r27,  12(r27)
	loadli.w r28,  12(r28)
	add.f.rn r1, r1, r3
	add.f.rn r3, r27, r28
	sub.f.rn r1, r1, r20
	sub.f.rn r3, r3, r20
	exp.f.rn r27, r1
	exp.f.rn r28, r3
	.loc	1 47 34                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:47:34
	j .LBB0_567
.LBB0_570:                              #   in Loop: Header=BB0_2 Depth=1
.Ltmp21:
	.loc	3 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r1, r25, r26
	loadli.w r3,  -236(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r3)
	mfence { lm, sm, gm }
	loadli.w r28,  -160(r30)                # 4-byte Folded Reload
	csr_set csr3, r28
	sync_group
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_572
# %bb.571:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	3 0 15 is_stmt 0                # standard.py:0:15
	loads.w r23, 0(r15)
	loads.w r25, 4(r15)
	loads.w r24, 8(r15)
	loads.w r3, 12(r15)
	.loc	3 263 15                        # standard.py:263:15
	add.f.rn r1, r23, r25
	loads.w r23, 16(r15)
	add.f.rn r1, r1, r24
	add.f.rn r1, r1, r3
	loads.w r3, 20(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 24(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 28(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 32(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 36(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 40(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 44(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 48(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 52(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 56(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 60(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 64(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 68(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 72(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 76(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 80(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 84(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 88(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 92(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 96(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 100(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 104(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 108(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 112(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 116(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 120(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 124(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 128(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 132(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 136(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 140(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 144(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 148(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 152(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 156(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 160(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 164(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 168(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 172(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 176(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 180(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 184(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 188(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 192(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 196(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 200(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 204(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 208(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 212(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 216(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 220(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 224(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 228(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 232(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 236(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 240(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 244(r15)
	add.f.rn r1, r1, r23
	loads.w r23, 248(r15)
	add.f.rn r1, r1, r3
	loads.w r3, 252(r15)
	add.f.rn r1, r1, r23
	add.f.rn r1, r1, r3
	stores.w r1, 0(r15)
.Ltmp22:
.LBB0_572:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	3 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r28
	sync_group
	loads.w r23, 0(r15)
	addli r24, zero, 0
.LBB0_573:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 39 37 is_stmt 1               # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:39:37
	add.s r3, r17, r24
	.loc	1 38 47                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:38:47
	add.s r1, r16, r24
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	addli r24, r24, 8
	.loc	1 38 47                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:38:47
	loadli.w r25,  0(r1)
	.loc	1 39 37                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:39:37
	loadli.w r26,  0(r3)
	.loc	1 38 47                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:38:47
	loadli.w r1,  4(r1)
	.loc	1 39 37                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:39:37
	loadli.w r27,  4(r3)
	.loc	1 40 18                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:40:18
	add.f.rn r25, r25, r26
	add.f.rn r1, r1, r27
	.loc	1 44 18                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:44:18
	sub.f.rn r25, r25, r20
	sub.f.rn r1, r1, r20
	.loc	1 45 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:45:25
	exp.f.rn r25, r25
	exp.f.rn r1, r1
	.loc	1 49 20                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:49:20
	div.f.rn r25, r25, r23
	div.f.rn r1, r1, r23
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	storeli.w r25, 0(r3)
	storeli.w r1, 4(r3)
	mfence { lm }
	bneq r24, r7, .LBB0_573
# %bb.574:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	1 50 25 is_stmt 0               # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sext_int2long r[22:23], r22
	addli r26, zero, 2
	load.d r[24:25], 16(r30)
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	lui r1, 983040
	addli r27, zero, 4
	loadli.w r3,  -148(r30)                 # 4-byte Folded Reload
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sext_int2long r[20:21], r21
	sll.d r[22:23], r[22:23], r26
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	or r1, r27, r1
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sll.d r[20:21], r[20:21], r26
	add.ul r[22:23], r[24:25], r[22:23]
	add.ul r[20:21], r[24:25], r[20:21]
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	s_lm2gm r1, r3, 0(r[22:23])
	lui r1, 983040
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sext_int2long r[22:23], r19
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	addli r3, r17, 8
	or r1, r27, r1
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sll.d r[22:23], r[22:23], r26
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	s_lm2gm r1, r3, 0(r[20:21])
	lui r1, 983040
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	add.ul r[19:20], r[24:25], r[22:23]
	sext_int2long r[21:22], r14
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	addli r3, r17, 12
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sext_int2long r[13:14], r13
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	or r1, r27, r1
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sll.d r[21:22], r[21:22], r26
	sll.d r[13:14], r[13:14], r26
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	s_lm2gm r1, r3, 0(r[19:20])
	lui r1, 983040
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	add.ul r[19:20], r[24:25], r[21:22]
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	addli r3, r17, 16
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	add.ul r[13:14], r[24:25], r[13:14]
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	or r1, r27, r1
	s_lm2gm r1, r3, 0(r[19:20])
	lui r1, 983040
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sext_int2long r[19:20], r12
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	addli r3, r17, 20
	or r1, r27, r1
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sll.d r[19:20], r[19:20], r26
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	s_lm2gm r1, r3, 0(r[13:14])
	lui r1, 983040
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	add.ul r[12:13], r[24:25], r[19:20]
	sext_int2long r[19:20], r11
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	addli r3, r17, 24
	or r1, r27, r1
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sll.d r[19:20], r[19:20], r26
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	s_lm2gm r1, r3, 0(r[12:13])
	lui r1, 983040
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	add.ul r[11:12], r[24:25], r[19:20]
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	addli r3, r17, 28
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sext_int2long r[13:14], r10
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	or r1, r27, r1
	s_lm2gm r1, r3, 0(r[11:12])
	lui r1, 983040
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sll.d r[10:11], r[13:14], r26
	sext_int2long r[12:13], r9
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	addli r3, r17, 32
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	add.ul r[9:10], r[24:25], r[10:11]
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	or r1, r27, r1
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sll.d r[11:12], r[12:13], r26
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	s_lm2gm r1, r3, 0(r[9:10])
	lui r1, 983040
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sext_int2long r[8:9], r8
	add.ul r[11:12], r[24:25], r[11:12]
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	addli r3, r17, 36
	or r1, r27, r1
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sll.d r[8:9], r[8:9], r26
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	s_lm2gm r1, r3, 0(r[11:12])
	lui r1, 983040
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sext_int2long r[10:11], r6
	add.ul r[8:9], r[24:25], r[8:9]
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	addli r3, r17, 40
	lui r6, 983040
	addli r12, r17, 44
	or r1, r27, r1
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sll.d r[10:11], r[10:11], r26
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	or r6, r27, r6
	s_lm2gm r1, r3, 0(r[8:9])
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	load.d r[8:9], -144(r30)                # 8-byte Folded Reload
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	lui r1, 983040
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	add.ul r[10:11], r[24:25], r[10:11]
	sext_int2long r[3:4], r4
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	s_lm2gm r6, r12, 0(r[10:11])
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sext_int2long r[5:6], r5
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	or r1, r27, r1
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sll.d r[3:4], r[3:4], r26
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	addli r10, r17, 60
	addli r11, zero, 2
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	add.ul r[8:9], r[24:25], r[8:9]
	sll.d r[5:6], r[5:6], r26
	add.ul r[3:4], r[24:25], r[3:4]
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	s_lm2gm r1, r17, 0(r[8:9])
	lui r1, 983040
	addli r8, r17, 48
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	add.ul r[5:6], r[24:25], r[5:6]
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	or r1, r27, r1
	s_lm2gm r1, r8, 0(r[5:6])
	lui r1, 983040
	addli r5, r17, 52
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	loadli.w r6,  -156(r30)                 # 4-byte Folded Reload
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	or r1, r27, r1
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sext_int2long r[8:9], r6
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	s_lm2gm r1, r5, 0(r[3:4])
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	loadli.w r1,  -152(r30)                 # 4-byte Folded Reload
	sll.d r[5:6], r[8:9], r26
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	lui r9, 983040
	addli r8, r17, 56
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sext_int2long r[3:4], r1
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	lui r1, 983040
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	add.ul r[5:6], r[24:25], r[5:6]
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	or r9, r27, r9
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	sll.d r[3:4], r[3:4], r26
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	or r1, r27, r1
	.loc	1 50 25                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:25
	add.ul r[3:4], r[24:25], r[3:4]
	.loc	1 50 49                         # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:49
	s_lm2gm r1, r8, 0(r[5:6])
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	s_lm2gm r9, r10, 0(r[3:4])
	loadli.w r10,  -136(r30)                # 4-byte Folded Reload
	mfence { lm }
	add.s r10, r10, r1
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	blt.s r10, r1, .LBB0_2
	j .LBB0_687
.LBB0_575:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 49                          # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:0:49
	lui r3, 523264
.Ltmp23:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r4, zero, .LBB0_45
.LBB0_576:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r4, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_46
	j .LBB0_47
.LBB0_577:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_53
.LBB0_578:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_54
	j .LBB0_55
.LBB0_579:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_61
.LBB0_580:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
	loadli.w r24,  -356(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_62
	j .LBB0_63
.LBB0_581:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r21, zero, .LBB0_89
.LBB0_582:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_90
	j .LBB0_91
.LBB0_583:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_97
.LBB0_584:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_98
	j .LBB0_99
.LBB0_585:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_105
.LBB0_586:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_106
	j .LBB0_107
.LBB0_587:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_113
.LBB0_588:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_114
	j .LBB0_115
.LBB0_589:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_121
.LBB0_590:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_122
	j .LBB0_123
.LBB0_591:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r10,  -404(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_129
.LBB0_592:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_130
	j .LBB0_131
.LBB0_593:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r9,  -408(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_137
.LBB0_594:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_138
	j .LBB0_139
.LBB0_595:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r8,  -388(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r3, zero, .LBB0_145
.LBB0_596:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_146
	j .LBB0_147
.LBB0_597:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_153
.LBB0_598:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_154
	j .LBB0_155
.LBB0_599:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_161
.LBB0_600:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_162
	j .LBB0_163
.LBB0_601:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r5,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_169
.LBB0_602:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_170
	j .LBB0_171
.LBB0_603:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_177
.LBB0_604:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
	loadli.w r6,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_178
	j .LBB0_179
.LBB0_605:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r5,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_185
.LBB0_606:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_186
	j .LBB0_187
.LBB0_607:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_193
.LBB0_608:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	loadli.w r6,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_194
	j .LBB0_195
.LBB0_609:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r5,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_201
.LBB0_610:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_202
	j .LBB0_203
.LBB0_611:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r5,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_219
.LBB0_612:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_220
	j .LBB0_221
.LBB0_613:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	addli r14, r28, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_227
.LBB0_614:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	loadli.w r6,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_228
	j .LBB0_229
.LBB0_615:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r5,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_235
.LBB0_616:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_236
	j .LBB0_237
.LBB0_617:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_243
.LBB0_618:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	loadli.w r6,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_244
	j .LBB0_245
.LBB0_619:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r5,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_251
.LBB0_620:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_252
	j .LBB0_253
.LBB0_621:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_259
.LBB0_622:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
	loadli.w r6,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_260
	j .LBB0_261
.LBB0_623:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_267
.LBB0_624:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r26, zero, .LBB0_268
	j .LBB0_269
.LBB0_625:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_275
.LBB0_626:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
	loadli.w r6,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_276
	j .LBB0_277
.LBB0_627:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r5,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_283
.LBB0_628:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r21, zero, .LBB0_284
	j .LBB0_285
.LBB0_629:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r21, zero, .LBB0_291
.LBB0_630:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r1, 0
	loadli.w r6,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_292
	j .LBB0_293
.LBB0_631:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r21, zero, .LBB0_299
.LBB0_632:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_300
	j .LBB0_301
.LBB0_633:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r5,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_307
.LBB0_634:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_308
	j .LBB0_309
.LBB0_635:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r5,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r21, zero, .LBB0_325
.LBB0_636:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_326
	j .LBB0_327
.LBB0_637:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r5,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_343
.LBB0_638:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_344
	j .LBB0_345
.LBB0_639:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_351
.LBB0_640:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	loadli.w r6,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_352
	j .LBB0_353
.LBB0_641:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r5,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_359
.LBB0_642:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_360
	j .LBB0_361
.LBB0_643:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r5,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_377
.LBB0_644:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_378
	j .LBB0_379
.LBB0_645:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	addli r26, r25, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_385
.LBB0_646:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
	loadli.w r6,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_386
	j .LBB0_387
.LBB0_647:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r5,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_393
.LBB0_648:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_394
	j .LBB0_395
.LBB0_649:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_401
.LBB0_650:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	loadli.w r6,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_402
	j .LBB0_403
.LBB0_651:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r5,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_409
.LBB0_652:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_410
	j .LBB0_411
.LBB0_653:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_417
.LBB0_654:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	loadli.w r6,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_418
	j .LBB0_419
.LBB0_655:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r5,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_425
.LBB0_656:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_426
	j .LBB0_427
.LBB0_657:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_433
.LBB0_658:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
	loadli.w r6,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_434
	j .LBB0_435
.LBB0_659:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_441
.LBB0_660:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_442
	j .LBB0_443
.LBB0_661:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r5,  -152(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_449
.LBB0_662:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_450
	j .LBB0_451
.LBB0_663:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_467
.LBB0_664:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_468
	j .LBB0_469
.LBB0_665:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	addli r8, r28, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_475
.LBB0_666:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
	addli r28, r25, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r26, zero, .LBB0_476
	j .LBB0_477
.LBB0_667:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_483
.LBB0_668:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_484
	j .LBB0_485
.LBB0_669:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_491
.LBB0_670:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_492
	j .LBB0_493
.LBB0_671:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_499
.LBB0_672:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r21, zero, .LBB0_500
	j .LBB0_501
.LBB0_673:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r21, zero, .LBB0_507
.LBB0_674:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_508
	j .LBB0_509
.LBB0_675:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_515
.LBB0_676:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_516
	j .LBB0_517
.LBB0_677:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_523
.LBB0_678:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_524
	j .LBB0_525
.LBB0_679:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_531
.LBB0_680:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_532
	j .LBB0_533
.LBB0_681:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_539
.LBB0_682:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_540
	j .LBB0_541
.LBB0_683:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_547
.LBB0_684:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_548
	j .LBB0_549
.LBB0_685:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_555
.LBB0_686:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_556
	j .LBB0_557
.Ltmp24:
.LBB0_687:                              # %._crit_edge
	.loc	1 50 4 epilogue_begin is_stmt 1 # ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py:50:4
	addli sp, sp, 456
	mfence { lm, sm, gm }
	exit
.Ltmp25:
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
	.long	520                             # 0x208
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
	.byte	43                              # DW_AT_call_line
	.byte	37                              # DW_AT_call_column
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
	.byte	48                              # DW_AT_call_line
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
	.long	.Ltmp15-.Lfunc_begin0
	.long	.Ltmp16-.Lfunc_begin0
	.long	.Ltmp17-.Lfunc_begin0
	.long	.Ltmp18-.Lfunc_begin0
	.long	.Ltmp23-.Lfunc_begin0
	.long	.Ltmp24-.Lfunc_begin0
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
	.long	.Ltmp15-.Lfunc_begin0
	.long	.Ltmp16-.Lfunc_begin0
	.long	.Ltmp17-.Lfunc_begin0
	.long	.Ltmp18-.Lfunc_begin0
	.long	.Ltmp23-.Lfunc_begin0
	.long	.Ltmp24-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges2:
	.long	.Ltmp19-.Lfunc_begin0
	.long	.Ltmp20-.Lfunc_begin0
	.long	.Ltmp21-.Lfunc_begin0
	.long	.Ltmp22-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges3:
	.long	.Ltmp19-.Lfunc_begin0
	.long	.Ltmp20-.Lfunc_begin0
	.long	.Ltmp21-.Lfunc_begin0
	.long	.Ltmp22-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"ctymt46k5gpj676hjezhjxzsqpvhjgqyhdfhocq2p7qkojuwitrk.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/ty" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
