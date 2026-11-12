	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/smoke-small-v4/cache/inductor/ns" "cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py"
	.loc	1 22 0                          # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -504
	lui r2, :hi20:global_smem
	core_id r1
	addli r30, sp, 440
	lui r5, 15
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r6,  52(r30)
	loadli.w r4,  48(r30)
	loadli.w r7,  56(r30)
	ori r14, r5, 4095
	add.s r8, r3, r2
	mul.s r4, r6, r4
	load_param_i r6, 0
	addli r9, r8, 8208
	mul.s r4, r4, r7
	storeli.w r9, -324(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r9)
	mfence { lm, sm, gm }
	csr_set csr3, r14
	sync_group
	storeli.w r8, -320(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r14
	sync_group
	storeli.w r4, -328(r30)                 # 4-byte Folded Spill
	ble.s r4, r6, .LBB0_26
# %bb.1:                                # %.lr.ph
	addli r4, zero, 8
	load_param_i r12, 1
	addli r25, zero, 1
	load.d r[8:9], 16(r30)
	load.d r[10:11], 8(r30)
	andi r28, r1, 7
	load.d r[21:22], 32(r30)
	addli r15, r30, -256
	addli r16, zero, 32
	addli r18, r30, -192
	addli r19, r30, -128
	addli r20, r30, -64
	addli r23, zero, 28
	storeli.w r14, -332(r30)                # 4-byte Folded Spill
	div.s r7, r1, r4
	storeli.w r12, -344(r30)                # 4-byte Folded Spill
	load.d r[4:5], 24(r30)
	storeli.w r28, -436(r30)                # 4-byte Folded Spill
	storeli.w r7, -336(r30)                 # 4-byte Folded Spill
	slli r7, r7, 3
	sub.s r7, r1, r7
	slli r7, r7, 4
	ori r12, r7, 1
	storeli.w r7, -340(r30)                 # 4-byte Folded Spill
	storeli.w r12, -348(r30)                # 4-byte Folded Spill
	ori r12, r7, 2
	storeli.w r12, -352(r30)                # 4-byte Folded Spill
	ori r12, r7, 3
	storeli.w r12, -356(r30)                # 4-byte Folded Spill
	ori r12, r7, 4
	storeli.w r12, -360(r30)                # 4-byte Folded Spill
	ori r12, r7, 5
	storeli.w r12, -364(r30)                # 4-byte Folded Spill
	ori r12, r7, 6
	storeli.w r12, -368(r30)                # 4-byte Folded Spill
	ori r12, r7, 7
	storeli.w r12, -372(r30)                # 4-byte Folded Spill
	ori r12, r7, 8
	storeli.w r12, -376(r30)                # 4-byte Folded Spill
	ori r12, r7, 9
	storeli.w r12, -380(r30)                # 4-byte Folded Spill
	ori r12, r7, 10
	storeli.w r12, -384(r30)                # 4-byte Folded Spill
	ori r12, r7, 11
	storeli.w r12, -388(r30)                # 4-byte Folded Spill
	ori r12, r7, 12
	storeli.w r12, -392(r30)                # 4-byte Folded Spill
	ori r12, r7, 13
	storeli.w r12, -396(r30)                # 4-byte Folded Spill
	ori r12, r7, 14
	storeli.w r12, -400(r30)                # 4-byte Folded Spill
	sext_int2long r[12:13], r7
	ori r7, r7, 15
	storeli.w r7, -404(r30)                 # 4-byte Folded Spill
	lui r7, 1048575
	sll.d r[12:13], r[12:13], r25
	ori r7, r7, 4064
	add.ul r[10:11], r[10:11], r[12:13]
	add.ul r[8:9], r[8:9], r[12:13]
	add.ul r[4:5], r[4:5], r[12:13]
	and r3, r3, r7
	store.d r[8:9], -424(r30)               # 8-byte Folded Spill
	store.d r[4:5], -432(r30)               # 8-byte Folded Spill
	addli r8, zero, 16
	addli r4, zero, 2
	store.d r[10:11], -416(r30)             # 8-byte Folded Spill
	add.s r12, r3, r2
	addli r1, r12, 8208
	storeli.w r1, -316(r30)                 # 4-byte Folded Spill
	lui r1, 239665
	ori r1, r1, 623
	storeli.w r1, -440(r30)                 # 4-byte Folded Spill
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_24 Depth 2
	addli r1, zero, 0
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp0:
	.loc	1 38 46 prologue_end            # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:38:46
	add.s r2, r15, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r16, .LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 46 is_stmt 0                # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:0:46
	loadli.w r1,  56(r30)
	loadli.w r2,  52(r30)
	.loc	1 38 46                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:38:46
	lui r3, 983040
	.loc	1 39 37 is_stmt 1               # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:39:37
	lui r5, 983040
	div.s r1, r6, r1
	div.s r1, r1, r2
	.loc	1 29 23                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:29:23
	loadli.w r2,  -336(r30)                 # 4-byte Folded Reload
	.loc	1 28 33                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:28:33
	slli r1, r1, 3
	.loc	1 29 23                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:29:23
	add.s r10, r1, r2
	.loc	1 38 37                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:38:37
	loadli.w r1,  -340(r30)                 # 4-byte Folded Reload
	.loc	1 38 41 is_stmt 0               # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:38:41
	slli r7, r10, 7
	.loc	1 38 37                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:38:37
	add.s r1, r7, r1
	.loc	1 38 30                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:38:30
	sext_int2long r[1:2], r1
	sll.d r[26:27], r[1:2], r25
	.loc	1 38 46                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:38:46
	or r1, r16, r3
	.loc	1 38 30                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:38:30
	load.d r[2:3], 0(r30)
	store.d r[26:27], -264(r30)             # 8-byte Folded Spill
	add.ul r[2:3], r[2:3], r[26:27]
	.loc	1 39 37 is_stmt 1               # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:39:37
	load.d r[26:27], -416(r30)              # 8-byte Folded Reload
	.loc	1 38 46                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:38:46
	l_gm2lm r1, r15, 0(r[2:3])
	.loc	1 39 37                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:39:37
	or r3, r16, r5
	.loc	1 40 38                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:40:38
	lui r1, 983040
	.loc	1 41 38                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:41:38
	lui r2, 983040
	.loc	1 39 37                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:39:37
	l_gm2lm r3, r18, 0(r[26:27])
	.loc	1 40 38                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:40:38
	load.d r[26:27], -424(r30)              # 8-byte Folded Reload
	or r1, r16, r1
	.loc	1 41 38                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:41:38
	or r2, r16, r2
	.loc	1 40 38                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:40:38
	l_gm2lm r1, r19, 0(r[26:27])
	.loc	1 41 38                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:41:38
	load.d r[26:27], -432(r30)              # 8-byte Folded Reload
	l_gm2lm r2, r20, 0(r[26:27])
	.loc	1 40 38                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:40:38
	mfence { lm }
	.loc	1 38 46                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:38:46
	load.hu r1, -256(r30)
	.loc	1 39 37                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:39:37
	load.hu r3, -192(r30)
	.loc	1 38 46                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:38:46
	load.hu r2, -254(r30)
	.loc	1 39 37                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:39:37
	load.hu r5, -190(r30)
	.loc	1 47 19                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:47:19
	add.hf.rn r1, r1, r3
	add.hf.rn r2, r2, r5
	.loc	1 48 19                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:48:19
	hfloat2float.rn r1, r1
	hfloat2float.rn r2, r2
	addli r3, r1, 0
	addli r5, r2, 0
	.loc	1 53 35                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:53:35
	blt.s r10, r8, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:0:35
	addli r3, zero, 0
	addli r5, zero, 0
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	addli r9, r15, 2
	storeli.w r9, -268(r30)                 # 4-byte Folded Spill
	addli r9, zero, 0
	j .LBB0_9
.LBB0_7:                                #   in Loop: Header=BB0_9 Depth=2
	addli r11, zero, 0
	addli r13, zero, 0
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=2
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r3, r3, r11
	add.f.rn r5, r5, r13
	addli r9, r9, 4
	beq r9, r23, .LBB0_11
.Ltmp2:
.LBB0_9:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 53 35                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:53:35
	blt.s r10, r8, .LBB0_10
	j .LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=2
	.loc	1 0 0 is_stmt 0                 # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:0:0
	add.s r11, r15, r9
	add.s r13, r18, r9
	load.hu r17, 4(r11)
	load.hu r24, 4(r13)
	load.hu r11, 6(r11)
	load.hu r13, 6(r13)
	add.hf.rn r13, r11, r13
	add.hf.rn r17, r17, r24
	hfloat2float.rn r11, r17
	hfloat2float.rn r13, r13
	.loc	1 53 35                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:53:35
	j .LBB0_8
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
.Ltmp3:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r3, r3, r5
	loadli.w r5,  -320(r30)                 # 4-byte Folded Reload
	stores.w r3, 0(r5)
	mfence { lm, sm, gm }
	csr_set csr3, r14
	sync_group
	bneq r28, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r3, 0(r12)
	loads.w r5, 4(r12)
	loads.w r9, 8(r12)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r3, r3, r5
	loads.w r5, 12(r12)
	add.f.rn r3, r3, r9
	loads.w r9, 16(r12)
	add.f.rn r3, r3, r5
	loads.w r5, 20(r12)
	add.f.rn r3, r3, r9
	loads.w r9, 24(r12)
	add.f.rn r3, r3, r5
	loads.w r5, 28(r12)
	add.f.rn r3, r3, r9
	add.f.rn r3, r3, r5
	stores.w r3, 0(r12)
.Ltmp4:
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r14
	sync_group
	loads.w r3, 0(r12)
	.loc	1 57 21 is_stmt 1               # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:57:21
	lui r5, 245760
	mul.f.rn r11, r3, r5
	.loc	1 61 35                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:61:35
	blt.s r10, r8, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:0:35
	addli r5, zero, 0
	addli r3, zero, 0
	j .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_2 Depth=1
	sub.f.rn r1, r1, r11
	sub.f.rn r2, r2, r11
	mul.f.rn r5, r1, r1
	mul.f.rn r3, r2, r2
.LBB0_16:                               #   in Loop: Header=BB0_2 Depth=1
	loadli.w r9,  -364(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	add.s r9, r9, r7
	add.s r27, r1, r7
	loadli.w r1,  -352(r30)                 # 4-byte Folded Reload
	storeli.w r9, -312(r30)                 # 4-byte Folded Spill
	loadli.w r9,  -368(r30)                 # 4-byte Folded Reload
	add.s r26, r1, r7
	loadli.w r1,  -356(r30)                 # 4-byte Folded Reload
	add.s r9, r9, r7
	add.s r2, r1, r7
	loadli.w r1,  -360(r30)                 # 4-byte Folded Reload
	storeli.w r9, -308(r30)                 # 4-byte Folded Spill
	loadli.w r9,  -372(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r7
	add.s r9, r9, r7
	storeli.w r9, -304(r30)                 # 4-byte Folded Spill
	loadli.w r9,  -376(r30)                 # 4-byte Folded Reload
	add.s r9, r9, r7
	storeli.w r9, -300(r30)                 # 4-byte Folded Spill
	loadli.w r9,  -380(r30)                 # 4-byte Folded Reload
	add.s r9, r9, r7
	storeli.w r9, -296(r30)                 # 4-byte Folded Spill
	loadli.w r9,  -384(r30)                 # 4-byte Folded Reload
	add.s r9, r9, r7
	storeli.w r9, -292(r30)                 # 4-byte Folded Spill
	loadli.w r9,  -388(r30)                 # 4-byte Folded Reload
	add.s r9, r9, r7
	storeli.w r9, -288(r30)                 # 4-byte Folded Spill
	loadli.w r9,  -392(r30)                 # 4-byte Folded Reload
	add.s r9, r9, r7
	storeli.w r9, -284(r30)                 # 4-byte Folded Spill
	loadli.w r9,  -396(r30)                 # 4-byte Folded Reload
	add.s r9, r9, r7
	storeli.w r9, -280(r30)                 # 4-byte Folded Spill
	loadli.w r9,  -400(r30)                 # 4-byte Folded Reload
	add.s r9, r9, r7
	storeli.w r9, -276(r30)                 # 4-byte Folded Spill
	loadli.w r9,  -404(r30)                 # 4-byte Folded Reload
	add.s r7, r9, r7
	storeli.w r7, -272(r30)                 # 4-byte Folded Spill
	addli r7, zero, 0
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	addli r24, zero, 0
	addli r17, zero, 0
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=2
.Ltmp5:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r5, r5, r24
	add.f.rn r3, r3, r17
	addli r7, r7, 4
	beq r7, r23, .LBB0_21
.Ltmp6:
.LBB0_19:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 61 35                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:61:35
	blt.s r10, r8, .LBB0_20
	j .LBB0_17
.LBB0_20:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 0 is_stmt 0                 # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:0:0
	add.s r17, r15, r7
	add.s r24, r18, r7
	load.hu r9, 4(r17)
	load.hu r13, 4(r24)
	load.hu r17, 6(r17)
	load.hu r24, 6(r24)
	add.hf.rn r9, r9, r13
	add.hf.rn r13, r17, r24
	hfloat2float.rn r9, r9
	hfloat2float.rn r13, r13
	sub.f.rn r9, r9, r11
	sub.f.rn r13, r13, r11
	mul.f.rn r24, r9, r9
	mul.f.rn r17, r13, r13
	.loc	1 61 35                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:61:35
	j .LBB0_18
.LBB0_21:                               #   in Loop: Header=BB0_2 Depth=1
.Ltmp7:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r3, r5, r3
	loadli.w r5,  -324(r30)                 # 4-byte Folded Reload
	stores.w r3, 0(r5)
	mfence { lm, sm, gm }
	csr_set csr3, r14
	sync_group
	bneq r28, zero, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loadli.w r9,  -316(r30)                 # 4-byte Folded Reload
	loads.w r3, 0(r9)
	loads.w r5, 4(r9)
	loads.w r7, 8(r9)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r3, r3, r5
	loads.w r5, 12(r9)
	add.f.rn r3, r3, r7
	loads.w r7, 16(r9)
	add.f.rn r3, r3, r5
	loads.w r5, 20(r9)
	add.f.rn r3, r3, r7
	loads.w r7, 24(r9)
	add.f.rn r3, r3, r5
	loads.w r5, 28(r9)
	add.f.rn r3, r3, r7
	add.f.rn r3, r3, r5
	stores.w r3, 0(r9)
.Ltmp8:
.LBB0_23:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r14
	sync_group
	loadli.w r3,  -316(r30)                 # 4-byte Folded Reload
	.loc	1 65 21 is_stmt 1               # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:65:21
	lui r5, 245760
	addli r7, zero, 0
	loads.w r3, 0(r3)
	mul.f.rn r3, r3, r5
	.loc	1 67 20                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:67:20
	loadli.w r5,  -440(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r5
	.loc	1 68 28                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:68:28
	lui r5, 260096
	sqrt.f.rn r3, r3
	div.f.rn r3, r5, r3
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	addli r5, r19, 2
.LBB0_24:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 46                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:38:46
	add.s r9, r15, r7
	.loc	1 39 37                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:39:37
	add.s r10, r18, r7
	.loc	1 41 38                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:41:38
	add.s r28, r20, r7
	.loc	1 39 37                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:39:37
	load.hu r24, 0(r10)
	.loc	1 38 46                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:38:46
	load.hu r13, 0(r9)
	load.hu r17, 2(r9)
	.loc	1 39 37                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:39:37
	load.hu r10, 2(r10)
	.loc	1 41 38                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:41:38
	load.hu r14, 0(r28)
	.loc	1 47 19                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:47:19
	add.hf.rn r13, r13, r24
	add.hf.rn r10, r17, r10
	.loc	1 40 38                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:40:38
	add.s r17, r19, r7
	add.s r24, r5, r7
	.loc	1 41 77                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:41:77
	hfloat2float.rn r14, r14
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	addli r7, r7, 4
	.loc	1 40 38                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:40:38
	load.hu r17, 0(r17)
	load.hu r24, 0(r24)
	.loc	1 40 77 is_stmt 0               # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:40:77
	hfloat2float.rn r17, r17
	hfloat2float.rn r24, r24
	.loc	1 48 19 is_stmt 1               # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:48:19
	hfloat2float.rn r13, r13
	hfloat2float.rn r10, r10
	.loc	1 58 20                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:58:20
	sub.f.rn r13, r13, r11
	sub.f.rn r10, r10, r11
	.loc	1 69 20                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:69:20
	mul.f.rn r13, r3, r13
	mul.f.rn r10, r3, r10
	.loc	1 71 20                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:71:20
	mul.f.rn r13, r13, r17
	mul.f.rn r10, r10, r24
	.loc	1 41 38                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:41:38
	load.hu r17, 2(r28)
	.loc	1 41 77 is_stmt 0               # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:41:77
	hfloat2float.rn r17, r17
	.loc	1 73 20 is_stmt 1               # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:73:20
	add.f.rn r13, r13, r14
	add.f.rn r10, r10, r17
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	float2hfloat.rn r13, r13
	float2hfloat.rn r10, r10
	store.h r13, 0(r9)
	store.h r10, 2(r9)
	mfence { lm }
	bneq r7, r16, .LBB0_24
# %bb.25:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 75 25 is_stmt 0               # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sext_int2long r[9:10], r27
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	lui r3, 983040
	loadli.w r5,  -268(r30)                 # 4-byte Folded Reload
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sext_int2long r[13:14], r26
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	addli r7, r15, 4
	addli r11, r15, 22
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sll.d r[9:10], r[9:10], r25
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	or r3, r4, r3
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sll.d r[13:14], r[13:14], r25
	add.ul r[9:10], r[21:22], r[9:10]
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	s_lm2gm r3, r5, 0(r[9:10])
	lui r5, 983040
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sext_int2long r[2:3], r2
	add.ul r[9:10], r[21:22], r[13:14]
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	or r5, r4, r5
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sll.d r[2:3], r[2:3], r25
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	s_lm2gm r5, r7, 0(r[9:10])
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sext_int2long r[9:10], r1
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	lui r1, 983040
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	add.ul r[2:3], r[21:22], r[2:3]
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	addli r5, r15, 6
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	loadli.w r7,  -300(r30)                 # 4-byte Folded Reload
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	or r1, r4, r1
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sll.d r[9:10], r[9:10], r25
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	s_lm2gm r1, r5, 0(r[2:3])
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	loadli.w r3,  -312(r30)                 # 4-byte Folded Reload
	add.ul r[1:2], r[21:22], r[9:10]
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	addli r5, r15, 8
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sext_int2long r[9:10], r3
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	lui r3, 983040
	or r3, r4, r3
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sll.d r[9:10], r[9:10], r25
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	s_lm2gm r3, r5, 0(r[1:2])
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	loadli.w r3,  -308(r30)                 # 4-byte Folded Reload
	add.ul r[1:2], r[21:22], r[9:10]
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	addli r5, r15, 10
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sext_int2long r[9:10], r3
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	lui r3, 983040
	or r3, r4, r3
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sll.d r[9:10], r[9:10], r25
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	s_lm2gm r3, r5, 0(r[1:2])
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	loadli.w r3,  -304(r30)                 # 4-byte Folded Reload
	add.ul r[1:2], r[21:22], r[9:10]
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	addli r5, r15, 12
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sext_int2long r[9:10], r3
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	lui r3, 983040
	or r3, r4, r3
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sll.d r[9:10], r[9:10], r25
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	s_lm2gm r3, r5, 0(r[1:2])
	lui r3, 983040
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	add.ul r[1:2], r[21:22], r[9:10]
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	addli r5, r15, 14
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sext_int2long r[9:10], r7
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	lui r7, 983040
	or r3, r4, r3
	or r7, r4, r7
	s_lm2gm r3, r5, 0(r[1:2])
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	loadli.w r3,  -296(r30)                 # 4-byte Folded Reload
	sll.d r[1:2], r[9:10], r25
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	addli r5, r15, 16
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	add.ul r[1:2], r[21:22], r[1:2]
	sext_int2long r[9:10], r3
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	lui r3, 983040
	or r3, r4, r3
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sll.d r[9:10], r[9:10], r25
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	s_lm2gm r3, r5, 0(r[1:2])
	lui r1, 983040
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	add.ul r[9:10], r[21:22], r[9:10]
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	addli r2, r15, 18
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	loadli.w r3,  -292(r30)                 # 4-byte Folded Reload
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	addli r5, r15, 20
	or r1, r4, r1
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sext_int2long r[13:14], r3
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	lui r3, 983040
	s_lm2gm r1, r2, 0(r[9:10])
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	sll.d r[9:10], r[13:14], r25
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	or r3, r4, r3
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sext_int2long r[1:2], r1
	add.ul r[9:10], r[21:22], r[9:10]
	sll.d r[1:2], r[1:2], r25
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	s_lm2gm r3, r5, 0(r[9:10])
	lui r3, 983040
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	loadli.w r5,  -284(r30)                 # 4-byte Folded Reload
	add.ul r[1:2], r[21:22], r[1:2]
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	or r3, r4, r3
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sext_int2long r[9:10], r5
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	addli r5, r15, 24
	s_lm2gm r7, r11, 0(r[1:2])
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	load.d r[1:2], -264(r30)                # 8-byte Folded Reload
	loadli.w r7,  -276(r30)                 # 4-byte Folded Reload
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	addli r11, r15, 30
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sll.d r[9:10], r[9:10], r25
	add.ul r[1:2], r[21:22], r[1:2]
	add.ul r[9:10], r[21:22], r[9:10]
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	s_lm2gm r3, r15, 0(r[1:2])
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	lui r3, 983040
	or r3, r4, r3
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sext_int2long r[1:2], r1
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	s_lm2gm r3, r5, 0(r[9:10])
	lui r3, 983040
	addli r5, r15, 26
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sext_int2long r[9:10], r7
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	lui r7, 983040
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sll.d r[1:2], r[1:2], r25
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	or r3, r4, r3
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sll.d r[9:10], r[9:10], r25
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	or r7, r4, r7
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	add.ul r[1:2], r[21:22], r[1:2]
	add.ul r[9:10], r[21:22], r[9:10]
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	s_lm2gm r3, r5, 0(r[1:2])
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	loadli.w r1,  -272(r30)                 # 4-byte Folded Reload
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	lui r3, 983040
	addli r5, r15, 28
	or r3, r4, r3
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sext_int2long r[1:2], r1
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	s_lm2gm r3, r5, 0(r[9:10])
	.loc	1 75 25                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:25
	sll.d r[1:2], r[1:2], r25
	add.ul r[1:2], r[21:22], r[1:2]
	.loc	1 75 48                         # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:48
	s_lm2gm r7, r11, 0(r[1:2])
	loadli.w r1,  -344(r30)                 # 4-byte Folded Reload
	mfence { lm }
	loadli.w r14,  -332(r30)                # 4-byte Folded Reload
	loadli.w r28,  -436(r30)                # 4-byte Folded Reload
	add.s r6, r6, r1
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	blt.s r6, r1, .LBB0_2
.LBB0_26:                               # %._crit_edge
	.loc	1 75 4 epilogue_begin           # cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py:75:4
	addli sp, sp, 440
	mfence { lm, sm, gm }
	exit
.Ltmp9:
.Lfunc_end0:
	.size	triton_unk_fused_0, .Lfunc_end0-triton_unk_fused_0
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN3xpu10xtransLockEv,"ax",@progbits
	.type	_ZN3xpu10xtransLockEv,@function # -- Begin function _ZN3xpu10xtransLockEv
_ZN3xpu10xtransLockEv:                  # @_ZN3xpu10xtransLockEv
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	addli sp, sp, -8
	lui r5, :hi20:_ZN3xpu14XTransSpinLockE
	load_param_i r1, 6
	addli r2, zero, 32
	storeli.w r30, 4(sp)                    # 4-byte Folded Spill
	storeli.w r31, 0(sp)                    # 4-byte Folded Spill
	addli r30, sp, 8
	zext_int2long r[3:4], r1
	load_param_i r1, 5
	addli r5, r5, :lo12:_ZN3xpu14XTransSpinLockE
	add.s r1, r1, r5
	sll.d r[2:3], r[3:4], r2
	zext_int2long r[4:5], r1
	or.d r[1:2], r[4:5], r[2:3]
	addli r3, zero, 1
	amoadd r4, r3, r[1:2]
	beq r4, zero, .LBB1_5
# %bb.1:                                # %for.cond.preheader.preheader
	addli r4, zero, 5
.LBB1_2:                                # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	addli r5, r4, 0
.LBB1_3:                                # %for.body
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addli r5, r5, -1
	#APP
	nop
	#NO_APP
	bneq r5, zero, .LBB1_3
# %bb.4:                                # %for.cond.cleanup
                                        #   in Loop: Header=BB1_2 Depth=1
	amoadd r5, r3, r[1:2]
	addli r4, r4, 5
	bneq r5, zero, .LBB1_2
.LBB1_5:                                # %while.end
	loadli.w r31,  0(sp)                    # 4-byte Folded Reload
	loadli.w r30,  4(sp)                    # 4-byte Folded Reload
	addli sp, sp, 8
	jr r31, 0
.Lfunc_end1:
	.size	_ZN3xpu10xtransLockEv, .Lfunc_end1-_ZN3xpu10xtransLockEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN3xpu12xtransUnlockEv,"ax",@progbits
	.type	_ZN3xpu12xtransUnlockEv,@function # -- Begin function _ZN3xpu12xtransUnlockEv
_ZN3xpu12xtransUnlockEv:                # @_ZN3xpu12xtransUnlockEv
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	addli sp, sp, -8
	lui r5, :hi20:_ZN3xpu14XTransSpinLockE
	load_param_i r1, 6
	addli r2, zero, 32
	storeli.w r30, 4(sp)                    # 4-byte Folded Spill
	storeli.w r31, 0(sp)                    # 4-byte Folded Spill
	addli r30, sp, 8
	zext_int2long r[3:4], r1
	load_param_i r1, 5
	addli r5, r5, :lo12:_ZN3xpu14XTransSpinLockE
	add.s r1, r1, r5
	sll.d r[2:3], r[3:4], r2
	zext_int2long r[4:5], r1
	or.d r[1:2], r[4:5], r[2:3]
	amoswap r1, zero, r[1:2]
	loadli.w r31,  0(sp)                    # 4-byte Folded Reload
	loadli.w r30,  4(sp)                    # 4-byte Folded Reload
	addli sp, sp, 8
	jr r31, 0
.Lfunc_end2:
	.size	_ZN3xpu12xtransUnlockEv, .Lfunc_end2-_ZN3xpu12xtransUnlockEv
	.cfi_endproc
                                        # -- End function
	.type	global_smem,@object             # @global_smem
	.section	".sm.LLVMDialectModule;global_smem","a",@nobits
	.p2align	3, 0x0
global_smem:
	.size	global_smem, 0

	.hidden	_ZN3xpu14XTransSpinLockE        # @_ZN3xpu14XTransSpinLockE
	.type	_ZN3xpu14XTransSpinLockE,@object
	.section	.gm._ZN3xpu14XTransSpinLockE,"a",@progbits
	.weak	_ZN3xpu14XTransSpinLockE
	.p2align	2, 0x0
_ZN3xpu14XTransSpinLockE:
	.long	0                               # 0x0
	.size	_ZN3xpu14XTransSpinLockE, 4

	.type	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_PARAM_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0:
	.long	60                              # 0x3c
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	504                             # 0x1f8
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
	.byte	1                               # Abbrev [1] 0xb:0x64 DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x2c:0x42 DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0x1a DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	54                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x45:0xd DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.short	296                             # DW_AT_call_line
	.byte	36                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x53:0x1a DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	62                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x5f:0xd DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
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
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp1-.Lfunc_begin0
	.long	.Ltmp2-.Lfunc_begin0
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges2:
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	.Ltmp7-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges3:
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	.Ltmp7-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"cnst72kwskxobp76zlrr3cucwgn3rfqc6tga5wryydwwplphsrde.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/smoke-small-v4/cache/inductor/ns" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=145
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 19.1.7 (b526e9ed77e93b92ce71f434d0bfd2c7ad245c37)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
