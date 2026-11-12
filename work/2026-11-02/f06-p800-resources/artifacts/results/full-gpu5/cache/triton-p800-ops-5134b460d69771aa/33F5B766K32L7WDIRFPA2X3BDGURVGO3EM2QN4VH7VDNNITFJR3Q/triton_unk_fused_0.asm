	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/ys" "cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py"
	.loc	1 22 0                          # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -520
	addli r30, sp, 456
	lui r2, :hi20:global_smem
	core_id r1
	lui r5, 15
	load_param_i r9, 0
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
	storeli.w r8, -228(r30)                 # 4-byte Folded Spill
	stores.w r5, 0(r8)
	mul.s r4, r4, r6
	mfence { lm, sm, gm }
	csr_set csr3, r28
	sync_group
	storeli.w r4, -232(r30)                 # 4-byte Folded Spill
	ble.s r4, r9, .LBB0_687
# %bb.1:                                # %.lr.ph
	addli r4, zero, 64
	loadli.w r7,  -228(r30)                 # 4-byte Folded Reload
	addli r10, zero, 1
	load.d r[5:6], 8(r30)
	addli r11, zero, 1
	addli r14, r30, -128
	addli r15, zero, 32
	addli r16, r30, -64
	addli r17, zero, 512
	addli r18, zero, 28
	storeli.w r28, -164(r30)                # 4-byte Folded Spill
	div.s r4, r1, r4
	addli r7, r7, 1040
	storeli.w r7, -240(r30)                 # 4-byte Folded Spill
	load_param_i r7, 1
	storeli.w r7, -248(r30)                 # 4-byte Folded Spill
	storeli.w r4, -236(r30)                 # 4-byte Folded Spill
	slli r4, r4, 6
	sub.s r4, r1, r4
	andi r1, r1, 63
	slli r4, r4, 4
	storeli.w r1, -132(r30)                 # 4-byte Folded Spill
	ori r7, r4, 1
	storeli.w r4, -244(r30)                 # 4-byte Folded Spill
	storeli.w r7, -252(r30)                 # 4-byte Folded Spill
	ori r7, r4, 2
	storeli.w r7, -256(r30)                 # 4-byte Folded Spill
	ori r7, r4, 3
	storeli.w r7, -260(r30)                 # 4-byte Folded Spill
	ori r7, r4, 4
	storeli.w r7, -264(r30)                 # 4-byte Folded Spill
	ori r7, r4, 5
	storeli.w r7, -268(r30)                 # 4-byte Folded Spill
	ori r7, r4, 6
	storeli.w r7, -272(r30)                 # 4-byte Folded Spill
	ori r7, r4, 7
	storeli.w r7, -276(r30)                 # 4-byte Folded Spill
	ori r7, r4, 8
	storeli.w r7, -280(r30)                 # 4-byte Folded Spill
	ori r7, r4, 9
	storeli.w r7, -284(r30)                 # 4-byte Folded Spill
	ori r7, r4, 10
	storeli.w r7, -288(r30)                 # 4-byte Folded Spill
	ori r7, r4, 11
	storeli.w r7, -292(r30)                 # 4-byte Folded Spill
	ori r7, r4, 12
	storeli.w r7, -296(r30)                 # 4-byte Folded Spill
	ori r7, r4, 13
	storeli.w r7, -300(r30)                 # 4-byte Folded Spill
	ori r7, r4, 14
	storeli.w r7, -304(r30)                 # 4-byte Folded Spill
	ori r7, r4, 15
	storeli.w r7, -308(r30)                 # 4-byte Folded Spill
	sext_int2long r[7:8], r4
	lui r4, 1048575
	ori r4, r4, 3840
	sll.d r[7:8], r[7:8], r10
	and r3, r3, r4
	add.ul r[4:5], r[5:6], r[7:8]
	add.s r10, r3, r2
	store.d r[4:5], -320(r30)               # 8-byte Folded Spill
	addli r13, r10, 1040
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_560 Depth 2
                                        #     Child Loop BB0_565 Depth 2
	addli r1, zero, 0
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp0:
	.loc	1 38 47 prologue_end            # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:38:47
	add.s r2, r14, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r15, .LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 47 is_stmt 0                # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:0:47
	loadli.w r1,  40(r30)
	loadli.w r2,  36(r30)
	storeli.w r9, -136(r30)                 # 4-byte Folded Spill
	div.s r1, r9, r1
	div.s r1, r1, r2
	.loc	1 29 23 is_stmt 1               # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:29:23
	loadli.w r2,  -236(r30)                 # 4-byte Folded Reload
	add.s r23, r1, r2
	.loc	1 38 37                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:38:37
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	.loc	1 38 47 is_stmt 0               # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:38:47
	lui r2, 983040
	.loc	1 38 42                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:38:42
	slli r24, r23, 10
	.loc	1 38 47                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:38:47
	or r2, r15, r2
	.loc	1 38 37                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:38:37
	add.s r1, r24, r1
	.loc	1 38 30                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:38:30
	sext_int2long r[3:4], r1
	.loc	1 39 37 is_stmt 1               # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:39:37
	lui r1, 983040
	.loc	1 38 30                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:38:30
	sll.d r[5:6], r[3:4], r11
	load.d r[3:4], 0(r30)
	.loc	1 39 37                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:39:37
	or r1, r15, r1
	store.d r[5:6], -144(r30)               # 8-byte Folded Spill
	.loc	1 38 30                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:38:30
	add.ul r[3:4], r[3:4], r[5:6]
	.loc	1 38 47 is_stmt 0               # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:38:47
	l_gm2lm r2, r14, 0(r[3:4])
	.loc	1 39 37 is_stmt 1               # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:39:37
	load.d r[2:3], -320(r30)                # 8-byte Folded Reload
	l_gm2lm r1, r16, 0(r[2:3])
	.loc	1 38 47                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:38:47
	mfence { lm }
	load.hu r1, -128(r30)
	.loc	1 39 37                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:39:37
	load.hu r3, -64(r30)
	.loc	1 38 47                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:38:47
	load.hu r2, -126(r30)
	.loc	1 39 37                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:39:37
	load.hu r4, -62(r30)
	.loc	1 45 19                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:45:19
	add.hf.rn r1, r1, r3
	add.hf.rn r2, r2, r4
	.loc	1 46 19                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:46:19
	hfloat2float.rn r20, r2
	hfloat2float.rn r19, r1
	addli r5, r19, 0
	addli r2, r20, 0
	.loc	1 49 35                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:49:35
	blt.s r23, r17, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:0:35
	lui r5, 1046528
	lui r2, 1046528
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	addli r1, r16, 2
	addli r3, zero, 0
	storeli.w r1, -148(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=2
	addli r3, r3, 4
	addli r2, r4, 0
	addli r5, r1, 0
	beq r3, r18, .LBB0_32
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 47 is_stmt 1               # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:38:47
	add.s r4, r14, r3
	.loc	1 39 37                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:39:37
	add.s r6, r16, r3
	.loc	1 38 47                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:38:47
	load.hu r1, 4(r4)
	.loc	1 39 37                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:39:37
	load.hu r7, 4(r6)
	.loc	1 38 47                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:38:47
	load.hu r4, 6(r4)
	.loc	1 39 37                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:39:37
	load.hu r6, 6(r6)
	.loc	1 45 19                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:45:19
	add.hf.rn r1, r1, r7
	addli r7, r5, 0
	.loc	1 46 19                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:46:19
	hfloat2float.rn r1, r1
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/torch/_inductor/runtime" "triton_helpers.py"
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r8, r1, r5
	bneq r8, zero, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r7, r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=2
	slli r8, r1, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r9, r5, 9
.Ltmp2:
	.loc	1 0 0                           # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:0:0
	srli r11, r1, 23
.Ltmp3:
	.loc	2 113 29                        # triton_helpers.py:113:29
	srli r12, r5, 23
.Ltmp4:
	.loc	1 0 0                           # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:0:0
	seteq r8, r8, zero
.Ltmp5:
	.loc	2 113 29                        # triton_helpers.py:113:29
	seteq r9, r9, zero
.Ltmp6:
	.loc	1 0 0                           # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:0:0
	andi r11, r11, 255
.Ltmp7:
	.loc	2 113 29                        # triton_helpers.py:113:29
	andi r12, r12, 255
.Ltmp8:
	.loc	1 0 0                           # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:0:0
	setlti r11, r11, 255
.Ltmp9:
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlti r12, r12, 255
.Ltmp10:
	.loc	1 0 0                           # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:0:0
	or r8, r11, r8
.Ltmp11:
	.loc	2 113 29                        # triton_helpers.py:113:29
	or r9, r12, r9
	and r8, r9, r8
	beq r8, zero, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_29
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=2
	beq r1, zero, .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r8, zero, r7
	setle.f r9, r7, zero
	and r8, r9, r8
	bneq r8, zero, .LBB0_16
.Ltmp12:
# %bb.15:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r7, 0
.LBB0_16:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	1 49 35 is_stmt 1               # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:49:35
	blt.s r23, r17, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 35 is_stmt 0                # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:0:35
	addli r1, r5, 0
.LBB0_18:                               #   in Loop: Header=BB0_8 Depth=2
	add.hf.rn r4, r4, r6
	addli r5, r2, 0
	hfloat2float.rn r4, r4
.Ltmp13:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	setlt.f r6, r4, r2
	bneq r6, zero, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r5, r4, 0
.LBB0_20:                               #   in Loop: Header=BB0_8 Depth=2
	slli r6, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r7, r2, 9
	srli r8, r4, 23
	srli r9, r2, 23
	seteq r6, r6, zero
	seteq r7, r7, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r6, r8, r6
	or r7, r9, r7
	and r6, r7, r6
	beq r6, zero, .LBB0_30
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r2, zero, .LBB0_31
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=2
	beq r4, zero, .LBB0_24
.LBB0_23:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r6, 0
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r6, zero, r5
	setle.f r7, r5, zero
	and r6, r7, r6
	bneq r6, zero, .LBB0_26
.Ltmp14:
# %bb.25:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r5, 0
.LBB0_26:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	1 49 35 is_stmt 1               # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:49:35
	blt.s r23, r17, .LBB0_7
# %bb.27:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 35 is_stmt 0                # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:0:35
	addli r4, r2, 0
	j .LBB0_7
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=2
	lui r7, 523264
	addli r8, r5, 0
.Ltmp15:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r5, zero, .LBB0_12
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r8, r7, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_13
	j .LBB0_14
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	addli r6, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_22
.LBB0_31:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r4, zero, .LBB0_23
	j .LBB0_24
.LBB0_32:                               #   in Loop: Header=BB0_2 Depth=1
	setlt.f r3, r4, r1
	addli r2, r1, 0
	bneq r3, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r4, 0
.LBB0_34:                               #   in Loop: Header=BB0_2 Depth=1
	slli r3, r4, 9
	slli r5, r1, 9
	srli r6, r4, 23
	srli r7, r1, 23
	seteq r3, r3, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r3, r6, r3
	or r5, r7, r5
	and r3, r5, r3
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r3, zero, .LBB0_554
# %bb.35:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r1, zero, .LBB0_555
.LBB0_36:                               #   in Loop: Header=BB0_2 Depth=1
	beq r4, zero, .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r1, 0
.LBB0_38:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r2
	setle.f r3, r2, zero
	and r1, r3, r1
	bneq r1, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r2, 0
.LBB0_40:                               #   in Loop: Header=BB0_2 Depth=1
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	stores.w r4, 0(r1)
	mfence { lm, sm, gm }
	csr_set csr3, r28
	sync_group
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_552
# %bb.41:                               #   in Loop: Header=BB0_2 Depth=1
	loads.w r3, 0(r10)
	loads.w r1, 4(r10)
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r1, r3
	addli r2, r3, 0
	bneq r4, zero, .LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_43:                               #   in Loop: Header=BB0_2 Depth=1
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
	beq r4, zero, .LBB0_567
# %bb.44:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r3, zero, .LBB0_568
.LBB0_45:                               #   in Loop: Header=BB0_2 Depth=1
	beq r1, zero, .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_47:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r2
	setle.f r4, r2, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_49:                               #   in Loop: Header=BB0_2 Depth=1
	loads.w r5, 8(r10)
	addli r2, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r1
	bneq r3, zero, .LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r5, 0
.LBB0_51:                               #   in Loop: Header=BB0_2 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r1, 9
	srli r6, r5, 23
	srli r7, r1, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r3, r6, r3
	or r4, r7, r4
	and r3, r4, r3
	beq r3, zero, .LBB0_569
# %bb.52:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r1, zero, .LBB0_570
.LBB0_53:                               #   in Loop: Header=BB0_2 Depth=1
	beq r5, zero, .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_55:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r2
	setle.f r3, r2, zero
	storeli.w r19, -328(r30)                # 4-byte Folded Spill
	storeli.w r24, -324(r30)                # 4-byte Folded Spill
	and r1, r3, r1
	bneq r1, zero, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r2, 0
.LBB0_57:                               #   in Loop: Header=BB0_2 Depth=1
	loads.w r4, 64(r10)
	loads.w r19, 12(r10)
	loads.w r9, 16(r10)
	loads.w r21, 20(r10)
	loads.w r2, 24(r10)
	loads.w r27, 28(r10)
	loads.w r1, 32(r10)
	loads.w r7, 36(r10)
	loads.w r6, 40(r10)
	loads.w r3, 44(r10)
	loads.w r11, 48(r10)
	loads.w r12, 52(r10)
	loads.w r22, 56(r10)
	loads.w r25, 60(r10)
	loads.w r26, 200(r10)
	addli r28, r5, 0
	storeli.w r20, -332(r30)                # 4-byte Folded Spill
	storeli.w r4, -452(r30)                 # 4-byte Folded Spill
	loads.w r4, 68(r10)
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r24, r19, r5
	storeli.w r4, -448(r30)                 # 4-byte Folded Spill
	loads.w r4, 72(r10)
	storeli.w r4, -224(r30)                 # 4-byte Folded Spill
	loads.w r4, 76(r10)
	storeli.w r4, -444(r30)                 # 4-byte Folded Spill
	loads.w r4, 80(r10)
	storeli.w r4, -220(r30)                 # 4-byte Folded Spill
	loads.w r4, 84(r10)
	storeli.w r4, -440(r30)                 # 4-byte Folded Spill
	loads.w r4, 88(r10)
	storeli.w r4, -216(r30)                 # 4-byte Folded Spill
	loads.w r4, 92(r10)
	storeli.w r4, -436(r30)                 # 4-byte Folded Spill
	loads.w r4, 96(r10)
	storeli.w r4, -212(r30)                 # 4-byte Folded Spill
	loads.w r4, 100(r10)
	storeli.w r4, -432(r30)                 # 4-byte Folded Spill
	loads.w r4, 104(r10)
	storeli.w r4, -208(r30)                 # 4-byte Folded Spill
	loads.w r4, 108(r10)
	storeli.w r4, -428(r30)                 # 4-byte Folded Spill
	loads.w r4, 112(r10)
	storeli.w r4, -204(r30)                 # 4-byte Folded Spill
	loads.w r4, 116(r10)
	storeli.w r4, -424(r30)                 # 4-byte Folded Spill
	loads.w r4, 120(r10)
	storeli.w r4, -200(r30)                 # 4-byte Folded Spill
	loads.w r4, 124(r10)
	storeli.w r4, -420(r30)                 # 4-byte Folded Spill
	loads.w r4, 128(r10)
	storeli.w r4, -196(r30)                 # 4-byte Folded Spill
	loads.w r4, 132(r10)
	storeli.w r4, -416(r30)                 # 4-byte Folded Spill
	loads.w r4, 136(r10)
	storeli.w r4, -192(r30)                 # 4-byte Folded Spill
	loads.w r4, 140(r10)
	storeli.w r4, -408(r30)                 # 4-byte Folded Spill
	loads.w r4, 144(r10)
	storeli.w r4, -188(r30)                 # 4-byte Folded Spill
	loads.w r4, 148(r10)
	storeli.w r4, -404(r30)                 # 4-byte Folded Spill
	loads.w r4, 152(r10)
	storeli.w r4, -184(r30)                 # 4-byte Folded Spill
	loads.w r4, 156(r10)
	storeli.w r4, -400(r30)                 # 4-byte Folded Spill
	loads.w r4, 160(r10)
	storeli.w r4, -180(r30)                 # 4-byte Folded Spill
	loads.w r4, 164(r10)
	storeli.w r4, -396(r30)                 # 4-byte Folded Spill
	loads.w r4, 168(r10)
	storeli.w r4, -176(r30)                 # 4-byte Folded Spill
	loads.w r4, 172(r10)
	storeli.w r4, -392(r30)                 # 4-byte Folded Spill
	loads.w r4, 176(r10)
	storeli.w r4, -172(r30)                 # 4-byte Folded Spill
	loads.w r4, 180(r10)
	storeli.w r4, -388(r30)                 # 4-byte Folded Spill
	loads.w r4, 184(r10)
	storeli.w r4, -168(r30)                 # 4-byte Folded Spill
	loads.w r4, 188(r10)
	storeli.w r4, -384(r30)                 # 4-byte Folded Spill
	loads.w r4, 192(r10)
	storeli.w r4, -160(r30)                 # 4-byte Folded Spill
	loads.w r4, 196(r10)
	storeli.w r4, -380(r30)                 # 4-byte Folded Spill
	loads.w r4, 204(r10)
	storeli.w r4, -156(r30)                 # 4-byte Folded Spill
	loads.w r4, 208(r10)
	storeli.w r4, -152(r30)                 # 4-byte Folded Spill
	loads.w r4, 212(r10)
	storeli.w r4, -376(r30)                 # 4-byte Folded Spill
	loads.w r4, 216(r10)
	storeli.w r4, -372(r30)                 # 4-byte Folded Spill
	loads.w r4, 220(r10)
	storeli.w r4, -368(r30)                 # 4-byte Folded Spill
	loads.w r4, 224(r10)
	storeli.w r4, -364(r30)                 # 4-byte Folded Spill
	loads.w r4, 228(r10)
	storeli.w r4, -360(r30)                 # 4-byte Folded Spill
	loads.w r4, 232(r10)
	storeli.w r4, -356(r30)                 # 4-byte Folded Spill
	loads.w r4, 236(r10)
	storeli.w r4, -352(r30)                 # 4-byte Folded Spill
	loads.w r4, 240(r10)
	storeli.w r4, -348(r30)                 # 4-byte Folded Spill
	loads.w r4, 244(r10)
	storeli.w r4, -344(r30)                 # 4-byte Folded Spill
	loads.w r4, 248(r10)
	storeli.w r4, -340(r30)                 # 4-byte Folded Spill
	loads.w r4, 252(r10)
	storeli.w r4, -336(r30)                 # 4-byte Folded Spill
	bneq r24, zero, .LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r19, 0
.LBB0_59:                               #   in Loop: Header=BB0_2 Depth=1
	slli r24, r19, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r8, r5, 9
	srli r4, r19, 23
	srli r20, r5, 23
	seteq r24, r24, zero
	seteq r8, r8, zero
	andi r4, r4, 255
	andi r20, r20, 255
	setlti r4, r4, 255
	setlti r20, r20, 255
	or r4, r4, r24
	or r8, r20, r8
	and r4, r8, r4
	beq r4, zero, .LBB0_571
# %bb.60:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r5, zero, .LBB0_572
.LBB0_61:                               #   in Loop: Header=BB0_2 Depth=1
	beq r19, zero, .LBB0_63
.LBB0_62:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r5, 0
.LBB0_63:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r28
	setle.f r5, r28, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_65
# %bb.64:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r28, 0
.LBB0_65:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r9, r19
	addli r5, r19, 0
	bneq r4, zero, .LBB0_67
# %bb.66:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r9, 0
.LBB0_67:                               #   in Loop: Header=BB0_2 Depth=1
	slli r4, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r8, r19, 9
	srli r20, r9, 23
	srli r24, r19, 23
	loadli.w r28,  -416(r30)                # 4-byte Folded Reload
	storeli.w r26, -412(r30)                # 4-byte Folded Spill
	seteq r4, r4, zero
	seteq r8, r8, zero
	andi r20, r20, 255
	andi r24, r24, 255
	setlti r20, r20, 255
	setlti r24, r24, 255
	or r4, r20, r4
	or r8, r24, r8
	and r4, r8, r4
	bneq r4, zero, .LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
.LBB0_69:                               #   in Loop: Header=BB0_2 Depth=1
	loadli.w r24,  -324(r30)                # 4-byte Folded Reload
	loadli.w r26,  -452(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r5, 0
.LBB0_71:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r19, 0
.LBB0_73:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r5
	setle.f r8, r5, zero
	and r4, r8, r4
	bneq r4, zero, .LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r5, 0
.LBB0_75:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r21, r9
	addli r5, r9, 0
	bneq r4, zero, .LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r21, 0
.LBB0_77:                               #   in Loop: Header=BB0_2 Depth=1
	slli r4, r21, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r8, r9, 9
	srli r19, r21, 23
	srli r20, r9, 23
	seteq r4, r4, zero
	seteq r8, r8, zero
	andi r19, r19, 255
	andi r20, r20, 255
	setlti r19, r19, 255
	setlti r20, r20, 255
	or r4, r19, r4
	or r8, r20, r8
	and r4, r8, r4
	beq r4, zero, .LBB0_573
# %bb.78:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r20,  -420(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_574
.LBB0_79:                               #   in Loop: Header=BB0_2 Depth=1
	beq r21, zero, .LBB0_81
.LBB0_80:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r9, 0
.LBB0_81:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r5
	setle.f r8, r5, zero
	and r4, r8, r4
	bneq r4, zero, .LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r5, 0
.LBB0_83:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r2, r21
	addli r5, r21, 0
	bneq r4, zero, .LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r2, 0
.LBB0_85:                               #   in Loop: Header=BB0_2 Depth=1
	slli r4, r2, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r8, r21, 9
	srli r9, r2, 23
	srli r19, r21, 23
	seteq r4, r4, zero
	seteq r8, r8, zero
	andi r9, r9, 255
	andi r19, r19, 255
	setlti r9, r9, 255
	setlti r19, r19, 255
	or r4, r9, r4
	or r8, r19, r8
	and r4, r8, r4
	beq r4, zero, .LBB0_575
# %bb.86:                               #   in Loop: Header=BB0_2 Depth=1
	bneq r21, zero, .LBB0_576
.LBB0_87:                               #   in Loop: Header=BB0_2 Depth=1
	beq r2, zero, .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r21, 0
.LBB0_89:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r5
	setle.f r8, r5, zero
	and r4, r8, r4
	bneq r4, zero, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r5, 0
.LBB0_91:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r27, r2
	loadli.w r21,  -444(r30)                # 4-byte Folded Reload
	addli r5, r2, 0
	bneq r4, zero, .LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r27, 0
.LBB0_93:                               #   in Loop: Header=BB0_2 Depth=1
	slli r4, r27, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r8, r2, 9
	srli r9, r27, 23
	srli r19, r2, 23
	seteq r4, r4, zero
	seteq r8, r8, zero
	andi r9, r9, 255
	andi r19, r19, 255
	setlti r9, r9, 255
	setlti r19, r19, 255
	or r4, r9, r4
	or r8, r19, r8
	and r4, r8, r4
	beq r4, zero, .LBB0_577
# %bb.94:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r19,  -432(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r2, zero, .LBB0_578
.LBB0_95:                               #   in Loop: Header=BB0_2 Depth=1
	beq r27, zero, .LBB0_97
.LBB0_96:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r2, 0
.LBB0_97:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r5
	setle.f r4, r5, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r5, 0
.LBB0_99:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r1, r27
	addli r2, r27, 0
	bneq r4, zero, .LBB0_101
# %bb.100:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_101:                              #   in Loop: Header=BB0_2 Depth=1
	slli r4, r1, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r27, 9
	srli r8, r1, 23
	srli r9, r27, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r4, r8, r4
	or r5, r9, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_579
# %bb.102:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r27, zero, .LBB0_580
.LBB0_103:                              #   in Loop: Header=BB0_2 Depth=1
	beq r1, zero, .LBB0_105
.LBB0_104:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r27, 0
.LBB0_105:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r2
	setle.f r5, r2, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_107
# %bb.106:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_107:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r7, r1
	loadli.w r27,  -424(r30)                # 4-byte Folded Reload
	addli r2, r1, 0
	bneq r4, zero, .LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r7, 0
.LBB0_109:                              #   in Loop: Header=BB0_2 Depth=1
	slli r4, r7, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r1, 9
	srli r8, r7, 23
	srli r9, r1, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r4, r8, r4
	or r5, r9, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_581
# %bb.110:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r9,  -396(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_582
.LBB0_111:                              #   in Loop: Header=BB0_2 Depth=1
	beq r7, zero, .LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
.LBB0_113:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r2
	setle.f r4, r2, zero
	and r1, r4, r1
	bneq r1, zero, .LBB0_115
# %bb.114:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r2, 0
.LBB0_115:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r6, r7
	addli r1, r7, 0
	bneq r2, zero, .LBB0_117
# %bb.116:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r6, 0
.LBB0_117:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r7, 9
	srli r5, r6, 23
	srli r8, r7, 23
	seteq r2, r2, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r8, r8, 255
	setlti r5, r5, 255
	setlti r8, r8, 255
	or r2, r5, r2
	or r4, r8, r4
	and r2, r4, r2
	beq r2, zero, .LBB0_583
# %bb.118:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r8,  -400(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_584
.LBB0_119:                              #   in Loop: Header=BB0_2 Depth=1
	beq r6, zero, .LBB0_121
.LBB0_120:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r7, 0
.LBB0_121:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r4, r1, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_123
# %bb.122:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_123:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r3, r6
	addli r1, r6, 0
	bneq r2, zero, .LBB0_125
# %bb.124:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_125:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r3, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r6, 9
	srli r5, r3, 23
	srli r7, r6, 23
	seteq r2, r2, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r7, r7, 255
	setlti r5, r5, 255
	setlti r7, r7, 255
	or r2, r5, r2
	or r4, r7, r4
	and r2, r4, r2
	beq r2, zero, .LBB0_585
# %bb.126:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -404(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_586
.LBB0_127:                              #   in Loop: Header=BB0_2 Depth=1
	beq r3, zero, .LBB0_129
.LBB0_128:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_129:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r4, r1, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
.LBB0_131:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r11, r3
	addli r1, r3, 0
	bneq r2, zero, .LBB0_133
# %bb.132:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r11, 0
.LBB0_133:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r3, 9
	srli r5, r11, 23
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
	beq r2, zero, .LBB0_587
# %bb.134:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -408(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_588
.LBB0_135:                              #   in Loop: Header=BB0_2 Depth=1
	beq r11, zero, .LBB0_137
.LBB0_136:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r3, 0
.LBB0_137:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_139
# %bb.138:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_139:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r12, r11
	addli r1, r11, 0
	bneq r2, zero, .LBB0_141
# %bb.140:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_141:                              #   in Loop: Header=BB0_2 Depth=1
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
	beq r2, zero, .LBB0_589
# %bb.142:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r11, zero, .LBB0_590
.LBB0_143:                              #   in Loop: Header=BB0_2 Depth=1
	beq r12, zero, .LBB0_145
.LBB0_144:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r11, 0
.LBB0_145:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_147
# %bb.146:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_147:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r22, r12
	loadli.w r11,  -448(r30)                # 4-byte Folded Reload
	addli r1, r12, 0
	bneq r2, zero, .LBB0_149
# %bb.148:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r22, 0
.LBB0_149:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r12, 9
	srli r4, r22, 23
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
	beq r2, zero, .LBB0_591
# %bb.150:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r12, zero, .LBB0_592
.LBB0_151:                              #   in Loop: Header=BB0_2 Depth=1
	beq r22, zero, .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r12, 0
.LBB0_153:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_155
# %bb.154:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
.LBB0_155:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r25, r22
	loadli.w r12,  -428(r30)                # 4-byte Folded Reload
	addli r1, r22, 0
	bneq r2, zero, .LBB0_157
# %bb.156:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r25, 0
.LBB0_157:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r25, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r22, 9
	srli r4, r25, 23
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
	beq r2, zero, .LBB0_593
# %bb.158:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r22, zero, .LBB0_594
.LBB0_159:                              #   in Loop: Header=BB0_2 Depth=1
	beq r25, zero, .LBB0_161
.LBB0_160:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r22, 0
.LBB0_161:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_163
# %bb.162:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
.LBB0_163:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r26, r25
	loadli.w r22,  -436(r30)                # 4-byte Folded Reload
	addli r1, r25, 0
	bneq r2, zero, .LBB0_165
# %bb.164:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r26, 0
.LBB0_165:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r26, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r25, 9
	srli r4, r26, 23
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
	beq r2, zero, .LBB0_595
# %bb.166:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r25, zero, .LBB0_596
.LBB0_167:                              #   in Loop: Header=BB0_2 Depth=1
	beq r26, zero, .LBB0_169
.LBB0_168:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r25, 0
.LBB0_169:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_171
# %bb.170:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
.LBB0_171:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r11, r26
	loadli.w r25,  -440(r30)                # 4-byte Folded Reload
	addli r1, r26, 0
	bneq r2, zero, .LBB0_173
# %bb.172:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r11, 0
.LBB0_173:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r26, 9
	srli r4, r11, 23
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
	beq r2, zero, .LBB0_597
# %bb.174:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r26, zero, .LBB0_598
.LBB0_175:                              #   in Loop: Header=BB0_2 Depth=1
	beq r11, zero, .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r26, 0
.LBB0_177:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_179
# %bb.178:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_179:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r11
	loadli.w r26,  -372(r30)                # 4-byte Folded Reload
	addli r1, r11, 0
	bneq r2, zero, .LBB0_181
# %bb.180:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_181:                              #   in Loop: Header=BB0_2 Depth=1
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
	beq r2, zero, .LBB0_599
# %bb.182:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r11, zero, .LBB0_600
.LBB0_183:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_185
.LBB0_184:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r11, 0
.LBB0_185:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_187
# %bb.186:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_187:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r21, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_189
# %bb.188:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r21, 0
.LBB0_189:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r21, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r21, 23
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
	beq r2, zero, .LBB0_601
# %bb.190:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_602
.LBB0_191:                              #   in Loop: Header=BB0_2 Depth=1
	beq r21, zero, .LBB0_193
.LBB0_192:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r11, 0
.LBB0_193:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_195
# %bb.194:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r1, 0
.LBB0_195:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r21
	addli r1, r21, 0
	bneq r2, zero, .LBB0_197
# %bb.196:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_197:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r21, 9
	srli r4, r4, 23
	srli r5, r21, 23
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
# %bb.198:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r21, zero, .LBB0_604
.LBB0_199:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_201
.LBB0_200:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r21, 0
.LBB0_201:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_203
# %bb.202:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_203:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r25, r5
	addli r21, r26, 0
	addli r1, r5, 0
	bneq r2, zero, .LBB0_205
# %bb.204:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r25, 0
.LBB0_205:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r25, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r25, 23
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
	beq r2, zero, .LBB0_605
# %bb.206:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r26, zero, .LBB0_606
.LBB0_207:                              #   in Loop: Header=BB0_2 Depth=1
	beq r25, zero, .LBB0_209
.LBB0_208:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r26, 0
.LBB0_209:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_211
# %bb.210:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
.LBB0_211:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r25
	addli r1, r25, 0
	addli r26, r21, 0
	bneq r2, zero, .LBB0_213
# %bb.212:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_213:                              #   in Loop: Header=BB0_2 Depth=1
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
	beq r2, zero, .LBB0_607
# %bb.214:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r25, zero, .LBB0_608
.LBB0_215:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r25, 0
.LBB0_217:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_219
# %bb.218:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_219:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r22, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_221
# %bb.220:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r22, 0
.LBB0_221:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r22, 23
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
	beq r2, zero, .LBB0_609
# %bb.222:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_610
.LBB0_223:                              #   in Loop: Header=BB0_2 Depth=1
	beq r22, zero, .LBB0_225
.LBB0_224:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r25, 0
.LBB0_225:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_227
# %bb.226:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
.LBB0_227:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r22
	addli r1, r22, 0
	bneq r2, zero, .LBB0_229
# %bb.228:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_229:                              #   in Loop: Header=BB0_2 Depth=1
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
	beq r2, zero, .LBB0_611
# %bb.230:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r22, zero, .LBB0_612
.LBB0_231:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_233
.LBB0_232:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r22, 0
.LBB0_233:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_235
# %bb.234:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_235:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r19, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_237
# %bb.236:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r19, 0
.LBB0_237:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r19, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r19, 23
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
	beq r2, zero, .LBB0_613
# %bb.238:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_614
.LBB0_239:                              #   in Loop: Header=BB0_2 Depth=1
	beq r19, zero, .LBB0_241
.LBB0_240:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r22, 0
.LBB0_241:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_243
# %bb.242:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
.LBB0_243:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r19
	addli r1, r19, 0
	bneq r2, zero, .LBB0_245
# %bb.244:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_245:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r19, 9
	srli r4, r4, 23
	srli r5, r19, 23
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
# %bb.246:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r19, zero, .LBB0_616
.LBB0_247:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_249
.LBB0_248:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r19, 0
.LBB0_249:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r19,  -368(r30)                # 4-byte Folded Reload
	and r2, r3, r2
	bneq r2, zero, .LBB0_251
# %bb.250:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_251:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r12, r5
	loadli.w r25,  -364(r30)                # 4-byte Folded Reload
	addli r1, r5, 0
	bneq r2, zero, .LBB0_253
# %bb.252:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_253:                              #   in Loop: Header=BB0_2 Depth=1
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
	beq r2, zero, .LBB0_617
# %bb.254:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_618
.LBB0_255:                              #   in Loop: Header=BB0_2 Depth=1
	beq r12, zero, .LBB0_257
.LBB0_256:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r22, 0
.LBB0_257:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_259
# %bb.258:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_259:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r12
	addli r1, r12, 0
	addli r22, r25, 0
	bneq r2, zero, .LBB0_261
# %bb.260:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_261:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r12, 9
	srli r4, r4, 23
	srli r5, r12, 23
	addli r25, r19, 0
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
# %bb.262:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r19,  -392(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_620
.LBB0_263:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_265
.LBB0_264:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r12, 0
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
	setlt.f r2, r27, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_269
# %bb.268:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r27, 0
.LBB0_269:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r27, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r27, 23
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
	beq r2, zero, .LBB0_621
# %bb.270:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_622
.LBB0_271:                              #   in Loop: Header=BB0_2 Depth=1
	beq r27, zero, .LBB0_273
.LBB0_272:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r12, 0
.LBB0_273:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_275
# %bb.274:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
.LBB0_275:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r27
	addli r1, r27, 0
	bneq r2, zero, .LBB0_277
# %bb.276:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_277:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r27, 9
	srli r4, r4, 23
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
	beq r2, zero, .LBB0_623
# %bb.278:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r27, zero, .LBB0_624
.LBB0_279:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_281
.LBB0_280:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r27, 0
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
	setlt.f r2, r20, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_285
# %bb.284:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r20, 0
.LBB0_285:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r20, 23
	addli r27, r5, 0
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
# %bb.286:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_626
.LBB0_287:                              #   in Loop: Header=BB0_2 Depth=1
	beq r20, zero, .LBB0_289
.LBB0_288:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r27, 0
.LBB0_289:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_291
# %bb.290:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
.LBB0_291:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r20
	addli r1, r20, 0
	bneq r2, zero, .LBB0_293
# %bb.292:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_293:                              #   in Loop: Header=BB0_2 Depth=1
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
	beq r2, zero, .LBB0_627
# %bb.294:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r20, zero, .LBB0_628
.LBB0_295:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_297
.LBB0_296:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r20, 0
.LBB0_297:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r20,  -356(r30)                # 4-byte Folded Reload
	and r2, r3, r2
	bneq r2, zero, .LBB0_299
# %bb.298:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_299:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r28, r5
	loadli.w r12,  -376(r30)                # 4-byte Folded Reload
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
	addli r27, r5, 0
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
# %bb.302:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_630
.LBB0_303:                              #   in Loop: Header=BB0_2 Depth=1
	beq r28, zero, .LBB0_305
.LBB0_304:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r27, 0
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
	addli r27, r12, 0
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
	addli r12, r20, 0
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
# %bb.310:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r28, zero, .LBB0_632
.LBB0_311:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -192(r30)                 # 4-byte Folded Reload
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
	setlt.f r2, r6, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_317
# %bb.316:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r6, 0
.LBB0_317:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r6, 23
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
	beq r2, zero, .LBB0_633
# %bb.318:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_634
.LBB0_319:                              #   in Loop: Header=BB0_2 Depth=1
	beq r6, zero, .LBB0_321
.LBB0_320:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r28, 0
.LBB0_321:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_323
# %bb.322:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_323:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r6
	addli r1, r6, 0
	bneq r2, zero, .LBB0_325
# %bb.324:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_325:                              #   in Loop: Header=BB0_2 Depth=1
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
	beq r2, zero, .LBB0_635
# %bb.326:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r6, zero, .LBB0_636
.LBB0_327:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_329
.LBB0_328:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r6, 0
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
	setlt.f r2, r7, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_333
# %bb.332:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r7, 0
.LBB0_333:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r7, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r7, 23
	addli r6, r5, 0
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
# %bb.334:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_638
.LBB0_335:                              #   in Loop: Header=BB0_2 Depth=1
	beq r7, zero, .LBB0_337
.LBB0_336:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r6, 0
.LBB0_337:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_339
# %bb.338:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
.LBB0_339:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r7
	loadli.w r6,  -412(r30)                 # 4-byte Folded Reload
	addli r1, r7, 0
	bneq r2, zero, .LBB0_341
# %bb.340:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_341:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r7, 9
	srli r4, r4, 23
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
	beq r2, zero, .LBB0_639
# %bb.342:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r7, zero, .LBB0_640
.LBB0_343:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_345
.LBB0_344:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r7, 0
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
	setlt.f r2, r8, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_349
# %bb.348:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_349:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r8, 23
	addli r7, r5, 0
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
# %bb.350:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_642
.LBB0_351:                              #   in Loop: Header=BB0_2 Depth=1
	beq r8, zero, .LBB0_353
.LBB0_352:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r7, 0
.LBB0_353:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_355
# %bb.354:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
.LBB0_355:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r8
	loadli.w r7,  -384(r30)                 # 4-byte Folded Reload
	addli r1, r8, 0
	bneq r2, zero, .LBB0_357
# %bb.356:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_357:                              #   in Loop: Header=BB0_2 Depth=1
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
	beq r2, zero, .LBB0_643
# %bb.358:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r8, zero, .LBB0_644
.LBB0_359:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_361
.LBB0_360:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r8, 0
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
	setlt.f r2, r9, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_365
# %bb.364:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r9, 0
.LBB0_365:                              #   in Loop: Header=BB0_2 Depth=1
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
	beq r2, zero, .LBB0_645
# %bb.366:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_646
.LBB0_367:                              #   in Loop: Header=BB0_2 Depth=1
	beq r9, zero, .LBB0_369
.LBB0_368:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r8, 0
.LBB0_369:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_371
# %bb.370:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_371:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r9
	loadli.w r8,  -388(r30)                 # 4-byte Folded Reload
	addli r1, r9, 0
	bneq r2, zero, .LBB0_373
# %bb.372:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_373:                              #   in Loop: Header=BB0_2 Depth=1
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
	beq r2, zero, .LBB0_647
# %bb.374:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r9, zero, .LBB0_648
.LBB0_375:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_377
.LBB0_376:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r9, 0
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
	setlt.f r2, r19, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_381
# %bb.380:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r19, 0
.LBB0_381:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r19, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r19, 23
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
	beq r2, zero, .LBB0_649
# %bb.382:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_650
.LBB0_383:                              #   in Loop: Header=BB0_2 Depth=1
	beq r19, zero, .LBB0_385
.LBB0_384:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r9, 0
.LBB0_385:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_387
# %bb.386:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
.LBB0_387:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r19
	addli r1, r19, 0
	bneq r2, zero, .LBB0_389
# %bb.388:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_389:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r19, 9
	srli r4, r4, 23
	srli r5, r19, 23
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
# %bb.390:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r19, zero, .LBB0_652
.LBB0_391:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_393
.LBB0_392:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r19, 0
.LBB0_393:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_395
# %bb.394:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_395:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r8, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_397
# %bb.396:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_397:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r8, 23
	addli r21, r5, 0
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
	beq r2, zero, .LBB0_653
# %bb.398:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r21, zero, .LBB0_654
.LBB0_399:                              #   in Loop: Header=BB0_2 Depth=1
	beq r8, zero, .LBB0_401
.LBB0_400:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r21, 0
.LBB0_401:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_403
# %bb.402:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
.LBB0_403:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r8
	addli r1, r8, 0
	bneq r2, zero, .LBB0_405
# %bb.404:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_405:                              #   in Loop: Header=BB0_2 Depth=1
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
	beq r2, zero, .LBB0_655
# %bb.406:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r8, zero, .LBB0_656
.LBB0_407:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_409
.LBB0_408:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r8, 0
.LBB0_409:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_411
# %bb.410:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_411:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r7, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_413
# %bb.412:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r7, 0
.LBB0_413:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r7, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r7, 23
	addli r19, r5, 0
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
	beq r2, zero, .LBB0_657
# %bb.414:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_658
.LBB0_415:                              #   in Loop: Header=BB0_2 Depth=1
	beq r7, zero, .LBB0_417
.LBB0_416:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r19, 0
.LBB0_417:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_419
# %bb.418:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
.LBB0_419:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r7
	addli r1, r7, 0
	bneq r2, zero, .LBB0_421
# %bb.420:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_421:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r7, 9
	srli r4, r4, 23
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
	beq r2, zero, .LBB0_659
# %bb.422:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r7, zero, .LBB0_660
.LBB0_423:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_425
.LBB0_424:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r7, 0
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
	loadli.w r7,  -380(r30)                 # 4-byte Folded Reload
	addli r1, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r7, r5
	bneq r2, zero, .LBB0_429
# %bb.428:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r7, 0
.LBB0_429:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r7, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r7, 23
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
	beq r2, zero, .LBB0_661
# %bb.430:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r20, zero, .LBB0_662
.LBB0_431:                              #   in Loop: Header=BB0_2 Depth=1
	beq r7, zero, .LBB0_433
.LBB0_432:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r20, 0
.LBB0_433:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_435
# %bb.434:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
.LBB0_435:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r6, r7
	addli r1, r7, 0
	bneq r2, zero, .LBB0_437
# %bb.436:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r6, 0
.LBB0_437:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r7, 9
	srli r4, r6, 23
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
	beq r2, zero, .LBB0_663
# %bb.438:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_664
.LBB0_439:                              #   in Loop: Header=BB0_2 Depth=1
	beq r6, zero, .LBB0_441
.LBB0_440:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r7, 0
.LBB0_441:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_443
# %bb.442:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_443:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r6
	addli r1, r6, 0
	bneq r2, zero, .LBB0_445
# %bb.444:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_445:                              #   in Loop: Header=BB0_2 Depth=1
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
	bneq r2, zero, .LBB0_447
# %bb.446:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_447:                              #   in Loop: Header=BB0_2 Depth=1
	loadli.w r4,  -152(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_449
# %bb.448:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_449:                              #   in Loop: Header=BB0_2 Depth=1
	loadli.w r11,  -360(r30)                # 4-byte Folded Reload
	loadli.w r5,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_451
# %bb.450:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r6, 0
.LBB0_451:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r21,  -348(r30)                # 4-byte Folded Reload
	and r2, r3, r2
	bneq r2, zero, .LBB0_453
# %bb.452:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_453:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r5
	loadli.w r9,  -344(r30)                 # 4-byte Folded Reload
	addli r1, r5, 0
	bneq r2, zero, .LBB0_455
# %bb.454:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_455:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r4, 23
	addli r28, r5, 0
	srli r5, r5, 23
	loadli.w r8,  -340(r30)                 # 4-byte Folded Reload
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_457
# %bb.456:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_457:                              #   in Loop: Header=BB0_2 Depth=1
	loadli.w r7,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_459
# %bb.458:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
.LBB0_459:                              #   in Loop: Header=BB0_2 Depth=1
	addli r2, r28, 0
	loadli.w r28,  -336(r30)                # 4-byte Folded Reload
	loadli.w r5,  -152(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_461
# %bb.460:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r2, 0
.LBB0_461:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r6,  -328(r30)                 # 4-byte Folded Reload
	and r2, r3, r2
	bneq r2, zero, .LBB0_463
# %bb.462:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_463:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r27, r5
	loadli.w r19,  -332(r30)                # 4-byte Folded Reload
	addli r1, r5, 0
	bneq r2, zero, .LBB0_465
# %bb.464:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r27, 0
.LBB0_465:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r27, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r27, 23
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
	beq r2, zero, .LBB0_665
# %bb.466:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r20, zero, .LBB0_666
.LBB0_467:                              #   in Loop: Header=BB0_2 Depth=1
	beq r27, zero, .LBB0_469
.LBB0_468:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r20, 0
.LBB0_469:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_471
# %bb.470:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
.LBB0_471:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r26, r27
	addli r1, r27, 0
	addli r20, r19, 0
	bneq r2, zero, .LBB0_473
# %bb.472:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r26, 0
.LBB0_473:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r26, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r27, 9
	srli r4, r26, 23
	srli r5, r27, 23
	addli r19, r6, 0
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
# %bb.474:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r28, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_668
.LBB0_475:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r7, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_477
.LBB0_476:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r27, 0
.LBB0_477:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	addli r7, r8, 0
	and r2, r3, r2
	bneq r2, zero, .LBB0_479
# %bb.478:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
.LBB0_479:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r25, r26
	addli r1, r26, 0
	addli r8, r9, 0
	bneq r2, zero, .LBB0_481
# %bb.480:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r25, 0
.LBB0_481:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r25, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r26, 9
	srli r4, r25, 23
	srli r5, r26, 23
	addli r9, r21, 0
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
# %bb.482:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r11, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r26, zero, .LBB0_670
.LBB0_483:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r11,  -352(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_485
.LBB0_484:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r26, 0
.LBB0_485:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_487
# %bb.486:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
.LBB0_487:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r22, r25
	addli r1, r25, 0
	bneq r2, zero, .LBB0_489
# %bb.488:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r22, 0
.LBB0_489:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r25, 9
	srli r4, r22, 23
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
	beq r2, zero, .LBB0_671
# %bb.490:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r25, zero, .LBB0_672
.LBB0_491:                              #   in Loop: Header=BB0_2 Depth=1
	beq r22, zero, .LBB0_493
.LBB0_492:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r25, 0
.LBB0_493:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_495
# %bb.494:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
.LBB0_495:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r21, r22
	addli r1, r22, 0
	bneq r2, zero, .LBB0_497
# %bb.496:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r21, 0
.LBB0_497:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r21, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r22, 9
	srli r4, r21, 23
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
	beq r2, zero, .LBB0_673
# %bb.498:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r22, zero, .LBB0_674
.LBB0_499:                              #   in Loop: Header=BB0_2 Depth=1
	beq r21, zero, .LBB0_501
.LBB0_500:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r22, 0
.LBB0_501:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_503
# %bb.502:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r1, 0
.LBB0_503:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r12, r21
	addli r1, r21, 0
	bneq r2, zero, .LBB0_505
# %bb.504:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_505:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r21, 9
	srli r4, r12, 23
	srli r5, r21, 23
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
# %bb.506:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r21, zero, .LBB0_676
.LBB0_507:                              #   in Loop: Header=BB0_2 Depth=1
	beq r12, zero, .LBB0_509
.LBB0_508:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r21, 0
.LBB0_509:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_511
# %bb.510:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_511:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r11, r12
	addli r1, r12, 0
	bneq r2, zero, .LBB0_513
# %bb.512:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r11, 0
.LBB0_513:                              #   in Loop: Header=BB0_2 Depth=1
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
	beq r2, zero, .LBB0_677
# %bb.514:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r12, zero, .LBB0_678
.LBB0_515:                              #   in Loop: Header=BB0_2 Depth=1
	beq r11, zero, .LBB0_517
.LBB0_516:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r12, 0
.LBB0_517:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_519
# %bb.518:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_519:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r9, r11
	addli r1, r11, 0
	bneq r2, zero, .LBB0_521
# %bb.520:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r9, 0
.LBB0_521:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r11, 9
	srli r4, r9, 23
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
	beq r2, zero, .LBB0_679
# %bb.522:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r11, zero, .LBB0_680
.LBB0_523:                              #   in Loop: Header=BB0_2 Depth=1
	beq r9, zero, .LBB0_525
.LBB0_524:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r11, 0
.LBB0_525:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_527
# %bb.526:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_527:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r8, r9
	addli r1, r9, 0
	bneq r2, zero, .LBB0_529
# %bb.528:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_529:                              #   in Loop: Header=BB0_2 Depth=1
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
	beq r2, zero, .LBB0_681
# %bb.530:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r9, zero, .LBB0_682
.LBB0_531:                              #   in Loop: Header=BB0_2 Depth=1
	beq r8, zero, .LBB0_533
.LBB0_532:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r9, 0
.LBB0_533:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_535
# %bb.534:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
.LBB0_535:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r7, r8
	addli r1, r8, 0
	bneq r2, zero, .LBB0_537
# %bb.536:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r7, 0
.LBB0_537:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r7, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r8, 9
	srli r4, r7, 23
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
	beq r2, zero, .LBB0_683
# %bb.538:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r8, zero, .LBB0_684
.LBB0_539:                              #   in Loop: Header=BB0_2 Depth=1
	beq r7, zero, .LBB0_541
.LBB0_540:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r8, 0
.LBB0_541:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_543
# %bb.542:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
.LBB0_543:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r6, r7
	addli r1, r7, 0
	bneq r2, zero, .LBB0_545
# %bb.544:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r6, 0
.LBB0_545:                              #   in Loop: Header=BB0_2 Depth=1
	slli r2, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r7, 9
	srli r4, r6, 23
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
	beq r2, zero, .LBB0_685
# %bb.546:                              #   in Loop: Header=BB0_2 Depth=1
	bneq r7, zero, .LBB0_686
.LBB0_547:                              #   in Loop: Header=BB0_2 Depth=1
	beq r6, zero, .LBB0_549
.LBB0_548:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r7, 0
.LBB0_549:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_551
.Ltmp16:
# %bb.550:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_551:                              #   in Loop: Header=BB0_2 Depth=1
	stores.w r6, 0(r10)
.LBB0_552:                              #   in Loop: Header=BB0_2 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r28
	sync_group
	loads.w r21, 0(r10)
	.loc	1 54 35 is_stmt 1               # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:54:35
	blt.s r23, r17, .LBB0_556
# %bb.553:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:0:35
	addli r26, zero, 0
	addli r27, zero, 0
	j .LBB0_557
.LBB0_554:                              #   in Loop: Header=BB0_2 Depth=1
	lui r2, 523264
.Ltmp17:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r1, zero, .LBB0_36
.LBB0_555:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r1, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r4, zero, .LBB0_37
	j .LBB0_38
.Ltmp18:
.LBB0_556:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 0                           # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:0:0
	sub.f.rn r1, r19, r21
	sub.f.rn r2, r20, r21
	exp.f.rn r26, r1
	exp.f.rn r27, r2
.LBB0_557:                              #   in Loop: Header=BB0_2 Depth=1
	loadli.w r1,  -252(r30)                 # 4-byte Folded Reload
	add.s r25, r1, r24
	loadli.w r1,  -256(r30)                 # 4-byte Folded Reload
	add.s r22, r1, r24
	loadli.w r1,  -260(r30)                 # 4-byte Folded Reload
	add.s r20, r1, r24
	loadli.w r1,  -264(r30)                 # 4-byte Folded Reload
	add.s r19, r1, r24
	loadli.w r1,  -268(r30)                 # 4-byte Folded Reload
	add.s r12, r1, r24
	loadli.w r1,  -272(r30)                 # 4-byte Folded Reload
	add.s r11, r1, r24
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	add.s r9, r1, r24
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	add.s r8, r1, r24
	loadli.w r1,  -284(r30)                 # 4-byte Folded Reload
	add.s r7, r1, r24
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	add.s r6, r1, r24
	loadli.w r1,  -292(r30)                 # 4-byte Folded Reload
	add.s r5, r1, r24
	loadli.w r1,  -296(r30)                 # 4-byte Folded Reload
	add.s r4, r1, r24
	loadli.w r1,  -300(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r24
	storeli.w r1, -160(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r24
	storeli.w r1, -156(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -308(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r24
	addli r24, zero, 0
	storeli.w r1, -152(r30)                 # 4-byte Folded Spill
	j .LBB0_560
.LBB0_558:                              #   in Loop: Header=BB0_560 Depth=2
	addli r28, zero, 0
	addli r1, zero, 0
.LBB0_559:                              #   in Loop: Header=BB0_560 Depth=2
.Ltmp19:
	.file	3 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	3 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r26, r26, r28
	add.f.rn r27, r27, r1
	addli r24, r24, 4
	beq r24, r18, .LBB0_562
.Ltmp20:
.LBB0_560:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 54 35                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:54:35
	blt.s r23, r17, .LBB0_561
	j .LBB0_558
.LBB0_561:                              #   in Loop: Header=BB0_560 Depth=2
	.loc	1 0 0 is_stmt 0                 # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:0:0
	add.s r1, r14, r24
	add.s r28, r16, r24
	load.hu r2, 4(r1)
	load.hu r3, 4(r28)
	load.hu r1, 6(r1)
	load.hu r28, 6(r28)
	add.hf.rn r2, r2, r3
	add.hf.rn r1, r1, r28
	hfloat2float.rn r2, r2
	hfloat2float.rn r1, r1
	sub.f.rn r1, r1, r21
	sub.f.rn r2, r2, r21
	exp.f.rn r28, r2
	exp.f.rn r1, r1
	.loc	1 54 35                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:54:35
	j .LBB0_559
.LBB0_562:                              #   in Loop: Header=BB0_2 Depth=1
.Ltmp21:
	.loc	3 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r1, r26, r27
	loadli.w r2,  -240(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	loadli.w r28,  -164(r30)                # 4-byte Folded Reload
	csr_set csr3, r28
	sync_group
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_564
# %bb.563:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	3 0 15 is_stmt 0                # standard.py:0:15
	loads.w r23, 0(r13)
	loads.w r26, 4(r13)
	loads.w r24, 8(r13)
	loads.w r2, 12(r13)
	loads.w r3, 16(r13)
	.loc	3 263 15                        # standard.py:263:15
	add.f.rn r1, r23, r26
	add.f.rn r1, r1, r24
	add.f.rn r1, r1, r2
	loads.w r2, 20(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 24(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 28(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 32(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 36(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 40(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 44(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 48(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 52(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 56(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 60(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 64(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 68(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 72(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 76(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 80(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 84(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 88(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 92(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 96(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 100(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 104(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 108(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 112(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 116(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 120(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 124(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 128(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 132(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 136(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 140(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 144(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 148(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 152(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 156(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 160(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 164(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 168(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 172(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 176(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 180(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 184(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 188(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 192(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 196(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 200(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 204(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 208(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 212(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 216(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 220(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 224(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 228(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 232(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 236(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 240(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 244(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 248(r13)
	add.f.rn r1, r1, r2
	loads.w r2, 252(r13)
	add.f.rn r1, r1, r3
	add.f.rn r1, r1, r2
	stores.w r1, 0(r13)
.Ltmp22:
.LBB0_564:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	3 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r28
	sync_group
	loads.w r23, 0(r13)
	addli r24, zero, 0
.LBB0_565:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 39 37 is_stmt 1               # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:39:37
	add.s r2, r16, r24
	.loc	1 38 47                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:38:47
	add.s r1, r14, r24
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	addli r24, r24, 4
	.loc	1 38 47                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:38:47
	load.hu r3, 0(r1)
	.loc	1 39 37                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:39:37
	load.hu r26, 0(r2)
	.loc	1 38 47                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:38:47
	load.hu r1, 2(r1)
	.loc	1 39 37                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:39:37
	load.hu r27, 2(r2)
	.loc	1 45 19                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:45:19
	add.hf.rn r3, r3, r26
	add.hf.rn r1, r1, r27
	.loc	1 46 19                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:46:19
	hfloat2float.rn r3, r3
	hfloat2float.rn r1, r1
	.loc	1 51 19                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:51:19
	sub.f.rn r3, r3, r21
	sub.f.rn r1, r1, r21
	.loc	1 52 26                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:52:26
	exp.f.rn r3, r3
	exp.f.rn r1, r1
	.loc	1 56 21                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:56:21
	div.f.rn r3, r3, r23
	div.f.rn r1, r1, r23
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	float2hfloat.rn r3, r3
	float2hfloat.rn r1, r1
	store.h r3, 0(r2)
	store.h r1, 2(r2)
	mfence { lm }
	bneq r24, r15, .LBB0_565
# %bb.566:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	1 58 25 is_stmt 0               # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sext_int2long r[1:2], r25
	addli r25, zero, 1
	load.d r[23:24], 16(r30)
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	lui r3, 983040
	addli r26, zero, 2
	loadli.w r27,  -148(r30)                # 4-byte Folded Reload
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sext_int2long r[21:22], r22
	sll.d r[1:2], r[1:2], r25
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	or r3, r26, r3
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sll.d r[21:22], r[21:22], r25
	add.ul r[1:2], r[23:24], r[1:2]
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	s_lm2gm r3, r27, 0(r[1:2])
	lui r3, 983040
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	add.ul r[1:2], r[23:24], r[21:22]
	sext_int2long r[20:21], r20
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	addli r22, r16, 4
	or r3, r26, r3
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sll.d r[20:21], r[20:21], r25
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	s_lm2gm r3, r22, 0(r[1:2])
	lui r3, 983040
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	add.ul r[1:2], r[23:24], r[20:21]
	sext_int2long r[19:20], r19
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	addli r21, r16, 6
	or r3, r26, r3
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sll.d r[19:20], r[19:20], r25
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	s_lm2gm r3, r21, 0(r[1:2])
	lui r3, 983040
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	add.ul r[1:2], r[23:24], r[19:20]
	sext_int2long r[19:20], r12
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	addli r12, r16, 8
	or r3, r26, r3
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sll.d r[19:20], r[19:20], r25
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	s_lm2gm r3, r12, 0(r[1:2])
	lui r3, 983040
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sext_int2long r[11:12], r11
	add.ul r[1:2], r[23:24], r[19:20]
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	addli r19, r16, 10
	or r3, r26, r3
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sll.d r[11:12], r[11:12], r25
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	s_lm2gm r3, r19, 0(r[1:2])
	lui r3, 983040
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	add.ul r[1:2], r[23:24], r[11:12]
	sext_int2long r[11:12], r9
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	addli r9, r16, 12
	or r3, r26, r3
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sll.d r[11:12], r[11:12], r25
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	s_lm2gm r3, r9, 0(r[1:2])
	lui r3, 983040
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	add.ul r[1:2], r[23:24], r[11:12]
	sext_int2long r[11:12], r8
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	addli r9, r16, 14
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sext_int2long r[7:8], r7
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	or r3, r26, r3
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sll.d r[7:8], r[7:8], r25
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	s_lm2gm r3, r9, 0(r[1:2])
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sll.d r[1:2], r[11:12], r25
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	lui r3, 983040
	addli r9, r16, 16
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	add.ul r[7:8], r[23:24], r[7:8]
	sext_int2long r[11:12], r6
	add.ul r[1:2], r[23:24], r[1:2]
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	or r3, r26, r3
	s_lm2gm r3, r9, 0(r[1:2])
	lui r1, 983040
	addli r2, r16, 18
	lui r3, 983040
	addli r9, r16, 22
	or r1, r26, r1
	or r3, r26, r3
	s_lm2gm r1, r2, 0(r[7:8])
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sext_int2long r[1:2], r5
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	lui r8, 983040
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sll.d r[5:6], r[11:12], r25
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	addli r7, r16, 20
	addli r11, zero, 1
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sll.d r[1:2], r[1:2], r25
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	or r8, r26, r8
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	add.ul r[5:6], r[23:24], r[5:6]
	add.ul r[1:2], r[23:24], r[1:2]
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	s_lm2gm r3, r7, 0(r[5:6])
	lui r3, 983040
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sext_int2long r[4:5], r4
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	addli r6, r16, 24
	lui r7, 983040
	s_lm2gm r8, r9, 0(r[1:2])
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	load.d r[1:2], -144(r30)                # 8-byte Folded Reload
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	or r3, r26, r3
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sll.d r[4:5], r[4:5], r25
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	addli r8, r16, 30
	or r7, r26, r7
	loadli.w r9,  -136(r30)                 # 4-byte Folded Reload
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	add.ul r[1:2], r[23:24], r[1:2]
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	s_lm2gm r3, r16, 0(r[1:2])
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	loadli.w r1,  -160(r30)                 # 4-byte Folded Reload
	add.ul r[3:4], r[23:24], r[4:5]
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	lui r5, 983040
	or r5, r26, r5
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sext_int2long r[1:2], r1
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	s_lm2gm r5, r6, 0(r[3:4])
	lui r3, 983040
	addli r4, r16, 26
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	loadli.w r5,  -156(r30)                 # 4-byte Folded Reload
	sll.d r[1:2], r[1:2], r25
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	or r3, r26, r3
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	add.ul r[1:2], r[23:24], r[1:2]
	sext_int2long r[5:6], r5
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	s_lm2gm r3, r4, 0(r[1:2])
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	loadli.w r1,  -152(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[5:6], r25
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	lui r5, 983040
	addli r6, r16, 28
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	add.ul r[3:4], r[23:24], r[3:4]
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	or r5, r26, r5
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sext_int2long r[1:2], r1
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	s_lm2gm r5, r6, 0(r[3:4])
	.loc	1 58 25                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:25
	sll.d r[1:2], r[1:2], r25
	add.ul r[1:2], r[23:24], r[1:2]
	.loc	1 58 49                         # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:49
	s_lm2gm r7, r8, 0(r[1:2])
	loadli.w r1,  -248(r30)                 # 4-byte Folded Reload
	mfence { lm }
	add.s r9, r9, r1
	loadli.w r1,  -232(r30)                 # 4-byte Folded Reload
	blt.s r9, r1, .LBB0_2
	j .LBB0_687
.LBB0_567:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 49                          # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:0:49
	lui r2, 523264
.Ltmp23:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r3, zero, .LBB0_45
.LBB0_568:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r3, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_46
	j .LBB0_47
.LBB0_569:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_53
.LBB0_570:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_54
	j .LBB0_55
.LBB0_571:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r28, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_61
.LBB0_572:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r28, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_62
	j .LBB0_63
.LBB0_573:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	loadli.w r20,  -420(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_79
.LBB0_574:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r21, zero, .LBB0_80
	j .LBB0_81
.LBB0_575:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r21, zero, .LBB0_87
.LBB0_576:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r2, zero, .LBB0_88
	j .LBB0_89
.LBB0_577:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	loadli.w r19,  -432(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_95
.LBB0_578:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_96
	j .LBB0_97
.LBB0_579:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_103
.LBB0_580:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_104
	j .LBB0_105
.LBB0_581:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 523264
	loadli.w r9,  -396(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_111
.LBB0_582:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_112
	j .LBB0_113
.LBB0_583:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r8,  -400(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_119
.LBB0_584:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_120
	j .LBB0_121
.LBB0_585:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r7,  -404(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_127
.LBB0_586:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_128
	j .LBB0_129
.LBB0_587:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r6,  -408(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r3, zero, .LBB0_135
.LBB0_588:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_136
	j .LBB0_137
.LBB0_589:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_143
.LBB0_590:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_144
	j .LBB0_145
.LBB0_591:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_151
.LBB0_592:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_152
	j .LBB0_153
.LBB0_593:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_159
.LBB0_594:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_160
	j .LBB0_161
.LBB0_595:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_167
.LBB0_596:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r26, zero, .LBB0_168
	j .LBB0_169
.LBB0_597:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_175
.LBB0_598:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_176
	j .LBB0_177
.LBB0_599:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_183
.LBB0_600:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	loadli.w r5,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_184
	j .LBB0_185
.LBB0_601:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_191
.LBB0_602:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r21, zero, .LBB0_192
	j .LBB0_193
.LBB0_603:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r21, zero, .LBB0_199
.LBB0_604:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r1, 0
	loadli.w r5,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_200
	j .LBB0_201
.LBB0_605:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_207
.LBB0_606:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_208
	j .LBB0_209
.LBB0_607:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_215
.LBB0_608:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
	loadli.w r5,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_216
	j .LBB0_217
.LBB0_609:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_223
.LBB0_610:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_224
	j .LBB0_225
.LBB0_611:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_231
.LBB0_612:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	loadli.w r5,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_232
	j .LBB0_233
.LBB0_613:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_239
.LBB0_614:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_240
	j .LBB0_241
.LBB0_615:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_247
.LBB0_616:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
	loadli.w r5,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_248
	j .LBB0_249
.LBB0_617:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_255
.LBB0_618:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_256
	j .LBB0_257
.LBB0_619:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r19,  -392(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_263
.LBB0_620:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	loadli.w r5,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_264
	j .LBB0_265
.LBB0_621:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_271
.LBB0_622:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_272
	j .LBB0_273
.LBB0_623:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_279
.LBB0_624:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
	loadli.w r5,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_280
	j .LBB0_281
.LBB0_625:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_287
.LBB0_626:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_288
	j .LBB0_289
.LBB0_627:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_295
.LBB0_628:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_296
	j .LBB0_297
.LBB0_629:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_303
.LBB0_630:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_304
	j .LBB0_305
.LBB0_631:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_311
.LBB0_632:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
	loadli.w r5,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_312
	j .LBB0_313
.LBB0_633:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_319
.LBB0_634:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_320
	j .LBB0_321
.LBB0_635:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_327
.LBB0_636:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
	loadli.w r5,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_328
	j .LBB0_329
.LBB0_637:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_335
.LBB0_638:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_336
	j .LBB0_337
.LBB0_639:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_343
.LBB0_640:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
	loadli.w r5,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_344
	j .LBB0_345
.LBB0_641:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_351
.LBB0_642:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_352
	j .LBB0_353
.LBB0_643:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_359
.LBB0_644:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
	loadli.w r5,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_360
	j .LBB0_361
.LBB0_645:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_367
.LBB0_646:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_368
	j .LBB0_369
.LBB0_647:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_375
.LBB0_648:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	loadli.w r5,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_376
	j .LBB0_377
.LBB0_649:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_383
.LBB0_650:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_384
	j .LBB0_385
.LBB0_651:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_391
.LBB0_652:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
	loadli.w r5,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_392
	j .LBB0_393
.LBB0_653:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r21, zero, .LBB0_399
.LBB0_654:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_400
	j .LBB0_401
.LBB0_655:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_407
.LBB0_656:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
	loadli.w r5,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_408
	j .LBB0_409
.LBB0_657:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_415
.LBB0_658:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_416
	j .LBB0_417
.LBB0_659:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_423
.LBB0_660:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
	loadli.w r5,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_424
	j .LBB0_425
.LBB0_661:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_431
.LBB0_662:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_432
	j .LBB0_433
.LBB0_663:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_439
.LBB0_664:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_440
	j .LBB0_441
.LBB0_665:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_467
.LBB0_666:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r27, zero, .LBB0_468
	j .LBB0_469
.LBB0_667:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	addli r6, r28, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r27, zero, .LBB0_475
.LBB0_668:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r27, r1, 0
	addli r28, r7, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r26, zero, .LBB0_476
	j .LBB0_477
.LBB0_669:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	addli r21, r11, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_483
.LBB0_670:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
	loadli.w r11,  -352(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_484
	j .LBB0_485
.LBB0_671:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_491
.LBB0_672:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_492
	j .LBB0_493
.LBB0_673:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_499
.LBB0_674:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r21, zero, .LBB0_500
	j .LBB0_501
.LBB0_675:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r21, zero, .LBB0_507
.LBB0_676:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_508
	j .LBB0_509
.LBB0_677:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_515
.LBB0_678:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_516
	j .LBB0_517
.LBB0_679:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_523
.LBB0_680:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_524
	j .LBB0_525
.LBB0_681:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_531
.LBB0_682:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_532
	j .LBB0_533
.LBB0_683:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_539
.LBB0_684:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_540
	j .LBB0_541
.LBB0_685:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_547
.LBB0_686:                              #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_548
	j .LBB0_549
.Ltmp24:
.LBB0_687:                              # %._crit_edge
	.loc	1 58 4 epilogue_begin is_stmt 1 # cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py:58:4
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
.asciz	"cysbevsr6oivymavg2g2jdtryqwrvicdhhaavrbzwrttujhgmune.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/ys" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
