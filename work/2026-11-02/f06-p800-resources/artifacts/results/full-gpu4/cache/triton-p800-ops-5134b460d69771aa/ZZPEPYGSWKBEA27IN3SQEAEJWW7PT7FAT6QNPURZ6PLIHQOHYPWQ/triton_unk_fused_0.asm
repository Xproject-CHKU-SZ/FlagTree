	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/zt" "czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py"
	.loc	1 22 0                          # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -504
	addli r30, sp, 440
	lui r2, :hi20:global_smem
	core_id r1
	lui r5, 15
	loadli.w r7,  52(r30)
	loadli.w r4,  48(r30)
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r6,  56(r30)
	ori r27, r5, 4095
	load_param_i r5, 0
	add.s r8, r3, r2
	mul.s r4, r7, r4
	stores.w zero, 1040(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r27
	sync_group
	storeli.w r8, -324(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mul.s r4, r4, r6
	mfence { lm, sm, gm }
	csr_set csr3, r27
	sync_group
	storeli.w r4, -328(r30)                 # 4-byte Folded Spill
	ble.s r4, r5, .LBB0_26
# %bb.1:                                # %.lr.ph
	addli r7, zero, 64
	loadli.w r6,  -324(r30)                 # 4-byte Folded Reload
	addli r23, zero, 1
	load.d r[8:9], 24(r30)
	load.d r[10:11], 16(r30)
	load.d r[12:13], 8(r30)
	andi r28, r1, 63
	load.d r[20:21], 32(r30)
	addli r17, r30, -256
	addli r18, zero, 32
	addli r19, r30, -192
	addli r22, r30, -128
	addli r24, r30, -64
	addli r26, zero, 2
	div.s r4, r1, r7
	storeli.w r28, -436(r30)                # 4-byte Folded Spill
	addli r6, r6, 1040
	storeli.w r6, -336(r30)                 # 4-byte Folded Spill
	storeli.w r4, -332(r30)                 # 4-byte Folded Spill
	slli r4, r4, 6
	sub.s r4, r1, r4
	lui r1, 239665
	slli r6, r4, 4
	load_param_i r4, 1
	ori r1, r1, 623
	storeli.w r4, -344(r30)                 # 4-byte Folded Spill
	ori r4, r6, 1
	sext_int2long r[14:15], r6
	storeli.w r6, -340(r30)                 # 4-byte Folded Spill
	storeli.w r1, -440(r30)                 # 4-byte Folded Spill
	storeli.w r4, -348(r30)                 # 4-byte Folded Spill
	ori r4, r6, 2
	sll.d r[14:15], r[14:15], r23
	storeli.w r4, -352(r30)                 # 4-byte Folded Spill
	ori r4, r6, 3
	add.ul r[8:9], r[8:9], r[14:15]
	add.ul r[12:13], r[12:13], r[14:15]
	add.ul r[10:11], r[10:11], r[14:15]
	storeli.w r4, -356(r30)                 # 4-byte Folded Spill
	ori r4, r6, 4
	store.d r[8:9], -424(r30)               # 8-byte Folded Spill
	ori r8, r6, 14
	store.d r[12:13], -408(r30)             # 8-byte Folded Spill
	store.d r[10:11], -416(r30)             # 8-byte Folded Spill
	storeli.w r4, -360(r30)                 # 4-byte Folded Spill
	ori r4, r6, 5
	storeli.w r8, -428(r30)                 # 4-byte Folded Spill
	addli r8, zero, 28
	storeli.w r4, -364(r30)                 # 4-byte Folded Spill
	ori r4, r6, 6
	storeli.w r4, -368(r30)                 # 4-byte Folded Spill
	ori r4, r6, 7
	storeli.w r4, -372(r30)                 # 4-byte Folded Spill
	ori r4, r6, 8
	storeli.w r4, -376(r30)                 # 4-byte Folded Spill
	ori r4, r6, 9
	storeli.w r4, -380(r30)                 # 4-byte Folded Spill
	ori r4, r6, 10
	storeli.w r4, -384(r30)                 # 4-byte Folded Spill
	ori r4, r6, 11
	storeli.w r4, -388(r30)                 # 4-byte Folded Spill
	ori r4, r6, 12
	storeli.w r4, -392(r30)                 # 4-byte Folded Spill
	ori r4, r6, 13
	ori r6, r6, 15
	storeli.w r4, -396(r30)                 # 4-byte Folded Spill
	lui r4, 1048575
	storeli.w r6, -432(r30)                 # 4-byte Folded Spill
	ori r4, r4, 3840
	and r3, r3, r4
	add.s r14, r3, r2
	addli r15, r14, 1040
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_24 Depth 2
	addli r1, zero, 0
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp0:
	.loc	1 38 47 prologue_end            # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:38:47
	add.s r2, r17, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r18, .LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 47 is_stmt 0                # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:0:47
	loadli.w r1,  56(r30)
	loadli.w r2,  52(r30)
	.loc	1 38 47                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:38:47
	lui r3, 983040
	.loc	1 39 37 is_stmt 1               # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:39:37
	lui r4, 983040
	div.s r1, r5, r1
	div.s r1, r1, r2
	.loc	1 29 23                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:29:23
	loadli.w r2,  -332(r30)                 # 4-byte Folded Reload
	add.s r11, r1, r2
	.loc	1 38 37                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:38:37
	loadli.w r1,  -340(r30)                 # 4-byte Folded Reload
	.loc	1 38 42 is_stmt 0               # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:38:42
	slli r25, r11, 10
	.loc	1 38 37                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:38:37
	add.s r1, r25, r1
	.loc	1 38 30                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:38:30
	sext_int2long r[1:2], r1
	sll.d r[9:10], r[1:2], r23
	.loc	1 38 47                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:38:47
	or r1, r18, r3
	.loc	1 38 30                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:38:30
	load.d r[2:3], 0(r30)
	store.d r[9:10], -264(r30)              # 8-byte Folded Spill
	add.ul r[2:3], r[2:3], r[9:10]
	.loc	1 39 37 is_stmt 1               # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:39:37
	load.d r[9:10], -408(r30)               # 8-byte Folded Reload
	.loc	1 38 47                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:38:47
	l_gm2lm r1, r17, 0(r[2:3])
	.loc	1 39 37                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:39:37
	or r3, r18, r4
	.loc	1 40 38                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:40:38
	lui r1, 983040
	.loc	1 41 38                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:41:38
	lui r2, 983040
	.loc	1 39 37                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:39:37
	l_gm2lm r3, r19, 0(r[9:10])
	.loc	1 40 38                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:40:38
	load.d r[3:4], -416(r30)                # 8-byte Folded Reload
	or r1, r18, r1
	.loc	1 41 38                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:41:38
	or r2, r18, r2
	.loc	1 40 38                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:40:38
	l_gm2lm r1, r22, 0(r[3:4])
	.loc	1 41 38                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:41:38
	load.d r[3:4], -424(r30)                # 8-byte Folded Reload
	l_gm2lm r2, r24, 0(r[3:4])
	.loc	1 40 38                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:40:38
	mfence { lm }
	.loc	1 38 47                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:38:47
	load.hu r1, -256(r30)
	.loc	1 39 37                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:39:37
	load.hu r3, -192(r30)
	.loc	1 38 47                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:38:47
	load.hu r2, -254(r30)
	.loc	1 39 37                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:39:37
	load.hu r4, -190(r30)
	.loc	1 47 19                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:47:19
	add.hf.rn r1, r1, r3
	add.hf.rn r2, r2, r4
	.loc	1 48 19                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:48:19
	hfloat2float.rn r1, r1
	hfloat2float.rn r2, r2
	addli r3, r1, 0
	addli r4, r2, 0
	.loc	1 53 35                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:53:35
	blt.s r11, r7, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:0:35
	addli r3, zero, 0
	addli r4, zero, 0
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	addli r6, r19, 2
	storeli.w r6, -268(r30)                 # 4-byte Folded Spill
	addli r6, zero, 0
	j .LBB0_9
.LBB0_7:                                #   in Loop: Header=BB0_9 Depth=2
	addli r9, zero, 0
	addli r10, zero, 0
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=2
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r3, r3, r9
	add.f.rn r4, r4, r10
	addli r6, r6, 4
	beq r6, r8, .LBB0_11
.Ltmp2:
.LBB0_9:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 53 35                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:53:35
	blt.s r11, r7, .LBB0_10
	j .LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=2
	.loc	1 0 0 is_stmt 0                 # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:0:0
	add.s r9, r17, r6
	add.s r10, r19, r6
	load.hu r12, 4(r9)
	load.hu r13, 4(r10)
	load.hu r9, 6(r9)
	load.hu r10, 6(r10)
	add.hf.rn r10, r9, r10
	add.hf.rn r12, r12, r13
	hfloat2float.rn r9, r12
	hfloat2float.rn r10, r10
	.loc	1 53 35                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:53:35
	j .LBB0_8
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
.Ltmp3:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r3, r3, r4
	loadli.w r4,  -324(r30)                 # 4-byte Folded Reload
	stores.w r3, 0(r4)
	mfence { lm, sm, gm }
	csr_set csr3, r27
	sync_group
	bneq r28, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r3, 0(r14)
	loads.w r6, 4(r14)
	loads.w r4, 8(r14)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r3, r3, r6
	loads.w r6, 12(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 16(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 20(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 24(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 28(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 32(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 36(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 40(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 44(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 48(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 52(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 56(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 60(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 64(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 68(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 72(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 76(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 80(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 84(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 88(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 92(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 96(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 100(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 104(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 108(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 112(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 116(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 120(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 124(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 128(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 132(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 136(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 140(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 144(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 148(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 152(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 156(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 160(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 164(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 168(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 172(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 176(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 180(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 184(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 188(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 192(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 196(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 200(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 204(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 208(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 212(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 216(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 220(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 224(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 228(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 232(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 236(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 240(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 244(r14)
	add.f.rn r3, r3, r4
	loads.w r4, 248(r14)
	add.f.rn r3, r3, r6
	loads.w r6, 252(r14)
	add.f.rn r3, r3, r4
	add.f.rn r3, r3, r6
	stores.w r3, 0(r14)
.Ltmp4:
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r27
	sync_group
	loads.w r3, 0(r14)
	.loc	1 57 21 is_stmt 1               # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:57:21
	lui r4, 239616
	mul.f.rn r12, r3, r4
	.loc	1 61 35                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:61:35
	blt.s r11, r7, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:0:35
	addli r16, zero, 0
	addli r4, zero, 0
	j .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_2 Depth=1
	sub.f.rn r1, r1, r12
	sub.f.rn r2, r2, r12
	mul.f.rn r16, r1, r1
	mul.f.rn r4, r2, r2
.LBB0_16:                               #   in Loop: Header=BB0_2 Depth=1
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	add.s r9, r1, r25
	loadli.w r1,  -352(r30)                 # 4-byte Folded Reload
	add.s r2, r1, r25
	loadli.w r1,  -356(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r25
	storeli.w r1, -320(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -360(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r25
	storeli.w r1, -316(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -364(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r25
	storeli.w r1, -312(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -368(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r25
	storeli.w r1, -308(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -372(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r25
	storeli.w r1, -304(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -376(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r25
	storeli.w r1, -300(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -380(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r25
	storeli.w r1, -296(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -384(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r25
	storeli.w r1, -292(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -388(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r25
	storeli.w r1, -288(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -392(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r25
	storeli.w r1, -284(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -396(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r25
	storeli.w r1, -280(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -428(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r25
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -432(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r25
	addli r25, zero, 0
	storeli.w r1, -272(r30)                 # 4-byte Folded Spill
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	addli r6, zero, 0
	addli r3, zero, 0
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=2
.Ltmp5:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r16, r16, r6
	add.f.rn r4, r4, r3
	addli r25, r25, 4
	beq r25, r8, .LBB0_21
.Ltmp6:
.LBB0_19:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 61 35                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:61:35
	blt.s r11, r7, .LBB0_20
	j .LBB0_17
.LBB0_20:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 0 is_stmt 0                 # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:0:0
	add.s r3, r17, r25
	add.s r6, r19, r25
	load.hu r10, 4(r3)
	load.hu r13, 4(r6)
	load.hu r3, 6(r3)
	load.hu r6, 6(r6)
	add.hf.rn r3, r3, r6
	add.hf.rn r10, r10, r13
	hfloat2float.rn r6, r10
	hfloat2float.rn r3, r3
	sub.f.rn r6, r6, r12
	sub.f.rn r3, r3, r12
	mul.f.rn r6, r6, r6
	mul.f.rn r3, r3, r3
	.loc	1 61 35                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:61:35
	j .LBB0_18
.LBB0_21:                               #   in Loop: Header=BB0_2 Depth=1
.Ltmp7:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r3, r16, r4
	loadli.w r1,  -336(r30)                 # 4-byte Folded Reload
	stores.w r3, 0(r1)
	mfence { lm, sm, gm }
	csr_set csr3, r27
	sync_group
	bneq r28, zero, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r4, 0(r15)
	loads.w r16, 4(r15)
	loads.w r11, 8(r15)
	loads.w r6, 16(r15)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r3, r4, r16
	loads.w r4, 12(r15)
	add.f.rn r3, r3, r11
	add.f.rn r3, r3, r4
	loads.w r4, 20(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 24(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 28(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 32(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 36(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 40(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 44(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 48(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 52(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 56(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 60(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 64(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 68(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 72(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 76(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 80(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 84(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 88(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 92(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 96(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 100(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 104(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 108(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 112(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 116(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 120(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 124(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 128(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 132(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 136(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 140(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 144(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 148(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 152(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 156(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 160(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 164(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 168(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 172(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 176(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 180(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 184(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 188(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 192(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 196(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 200(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 204(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 208(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 212(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 216(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 220(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 224(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 228(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 232(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 236(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 240(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 244(r15)
	add.f.rn r3, r3, r6
	loads.w r6, 248(r15)
	add.f.rn r3, r3, r4
	loads.w r4, 252(r15)
	add.f.rn r3, r3, r6
	add.f.rn r3, r3, r4
	stores.w r3, 0(r15)
.Ltmp8:
.LBB0_23:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r27
	sync_group
	loads.w r3, 0(r15)
	.loc	1 65 21 is_stmt 1               # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:65:21
	lui r1, 239616
	addli r28, r27, 0
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	addli r11, r22, 2
	addli r16, zero, 0
	.loc	1 65 21                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:65:21
	mul.f.rn r3, r3, r1
	.loc	1 67 20                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:67:20
	loadli.w r1,  -440(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r1
	.loc	1 68 28                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:68:28
	lui r1, 260096
	sqrt.f.rn r3, r3
	div.f.rn r4, r1, r3
.LBB0_24:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 39 37                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:39:37
	add.s r6, r19, r16
	.loc	1 38 47                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:38:47
	add.s r3, r17, r16
	.loc	1 41 38                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:41:38
	add.s r27, r24, r16
	.loc	1 38 47                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:38:47
	load.hu r10, 0(r3)
	.loc	1 39 37                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:39:37
	load.hu r13, 0(r6)
	.loc	1 38 47                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:38:47
	load.hu r3, 2(r3)
	.loc	1 39 37                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:39:37
	load.hu r25, 2(r6)
	.loc	1 41 38                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:41:38
	load.hu r1, 0(r27)
	.loc	1 47 19                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:47:19
	add.hf.rn r10, r10, r13
	add.hf.rn r3, r3, r25
	.loc	1 40 38                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:40:38
	add.s r13, r22, r16
	add.s r25, r11, r16
	.loc	1 41 77                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:41:77
	hfloat2float.rn r1, r1
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	addli r16, r16, 4
	.loc	1 40 38                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:40:38
	load.hu r13, 0(r13)
	load.hu r25, 0(r25)
	.loc	1 40 77 is_stmt 0               # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:40:77
	hfloat2float.rn r13, r13
	hfloat2float.rn r25, r25
	.loc	1 48 19 is_stmt 1               # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:48:19
	hfloat2float.rn r10, r10
	hfloat2float.rn r3, r3
	.loc	1 58 20                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:58:20
	sub.f.rn r10, r10, r12
	sub.f.rn r3, r3, r12
	.loc	1 69 20                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:69:20
	mul.f.rn r10, r4, r10
	mul.f.rn r3, r4, r3
	.loc	1 71 20                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:71:20
	mul.f.rn r10, r10, r13
	mul.f.rn r3, r3, r25
	.loc	1 41 38                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:41:38
	load.hu r13, 2(r27)
	.loc	1 41 77 is_stmt 0               # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:41:77
	hfloat2float.rn r13, r13
	.loc	1 73 20 is_stmt 1               # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:73:20
	add.f.rn r1, r10, r1
	add.f.rn r3, r3, r13
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	float2hfloat.rn r1, r1
	float2hfloat.rn r3, r3
	store.h r1, 0(r6)
	store.h r3, 2(r6)
	mfence { lm }
	bneq r16, r18, .LBB0_24
# %bb.25:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 75 25 is_stmt 0               # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	sext_int2long r[3:4], r9
	sext_int2long r[9:10], r2
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	lui r1, 983040
	loadli.w r2,  -268(r30)                 # 4-byte Folded Reload
	lui r6, 983040
	addli r11, r19, 22
	addli r27, r28, 0
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	sll.d r[3:4], r[3:4], r23
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	or r1, r26, r1
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	sll.d r[9:10], r[9:10], r23
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	or r6, r26, r6
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	add.ul r[3:4], r[20:21], r[3:4]
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	s_lm2gm r1, r2, 0(r[3:4])
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	loadli.w r1,  -320(r30)                 # 4-byte Folded Reload
	add.ul r[3:4], r[20:21], r[9:10]
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	addli r9, r19, 4
	s_lm2gm r6, r9, 0(r[3:4])
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	loadli.w r3,  -316(r30)                 # 4-byte Folded Reload
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	lui r6, 983040
	addli r9, r19, 6
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	sext_int2long r[1:2], r1
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	or r6, r26, r6
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	sll.d r[1:2], r[1:2], r23
	sext_int2long r[3:4], r3
	add.ul r[1:2], r[20:21], r[1:2]
	sll.d r[3:4], r[3:4], r23
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	s_lm2gm r6, r9, 0(r[1:2])
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	add.ul r[1:2], r[20:21], r[3:4]
	loadli.w r3,  -312(r30)                 # 4-byte Folded Reload
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	lui r6, 983040
	addli r9, r19, 8
	or r6, r26, r6
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	sext_int2long r[3:4], r3
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	s_lm2gm r6, r9, 0(r[1:2])
	lui r6, 983040
	addli r9, r19, 10
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	sll.d r[3:4], r[3:4], r23
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	or r6, r26, r6
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	add.ul r[1:2], r[20:21], r[3:4]
	loadli.w r3,  -308(r30)                 # 4-byte Folded Reload
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	s_lm2gm r6, r9, 0(r[1:2])
	lui r6, 983040
	addli r9, r19, 12
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	sext_int2long r[3:4], r3
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	or r6, r26, r6
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	sll.d r[3:4], r[3:4], r23
	add.ul r[1:2], r[20:21], r[3:4]
	loadli.w r3,  -304(r30)                 # 4-byte Folded Reload
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	s_lm2gm r6, r9, 0(r[1:2])
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	loadli.w r6,  -300(r30)                 # 4-byte Folded Reload
	sext_int2long r[3:4], r3
	sll.d r[3:4], r[3:4], r23
	sext_int2long r[9:10], r6
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	lui r6, 983040
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	add.ul r[1:2], r[20:21], r[3:4]
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	lui r3, 983040
	addli r4, r19, 14
	or r6, r26, r6
	or r3, r26, r3
	s_lm2gm r3, r4, 0(r[1:2])
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	loadli.w r3,  -296(r30)                 # 4-byte Folded Reload
	sll.d r[1:2], r[9:10], r23
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	addli r9, r19, 16
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	add.ul r[1:2], r[20:21], r[1:2]
	sext_int2long r[3:4], r3
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	s_lm2gm r6, r9, 0(r[1:2])
	lui r1, 983040
	addli r2, r19, 18
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	loadli.w r6,  -292(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[3:4], r23
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	or r1, r26, r1
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	add.ul r[3:4], r[20:21], r[3:4]
	sext_int2long r[9:10], r6
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	lui r6, 983040
	s_lm2gm r1, r2, 0(r[3:4])
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[9:10], r23
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	lui r10, 983040
	addli r9, r19, 20
	or r6, r26, r6
	or r10, r26, r10
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	add.ul r[3:4], r[20:21], r[3:4]
	sext_int2long r[1:2], r1
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	s_lm2gm r6, r9, 0(r[3:4])
	lui r3, 983040
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	loadli.w r4,  -284(r30)                 # 4-byte Folded Reload
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	lui r6, 983040
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	sll.d r[1:2], r[1:2], r23
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	or r3, r26, r3
	or r6, r26, r6
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	add.ul r[1:2], r[20:21], r[1:2]
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	s_lm2gm r10, r11, 0(r[1:2])
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	load.d r[1:2], -264(r30)                # 8-byte Folded Reload
	sext_int2long r[9:10], r4
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	addli r11, r19, 30
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	sll.d r[9:10], r[9:10], r23
	add.ul r[1:2], r[20:21], r[1:2]
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	s_lm2gm r3, r19, 0(r[1:2])
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	add.ul r[3:4], r[20:21], r[9:10]
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	addli r9, r19, 24
	s_lm2gm r6, r9, 0(r[3:4])
	lui r3, 983040
	addli r4, r19, 26
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	loadli.w r6,  -276(r30)                 # 4-byte Folded Reload
	sext_int2long r[1:2], r1
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	or r3, r26, r3
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	sll.d r[1:2], r[1:2], r23
	sext_int2long r[9:10], r6
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	lui r6, 983040
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	add.ul r[1:2], r[20:21], r[1:2]
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	or r6, r26, r6
	s_lm2gm r3, r4, 0(r[1:2])
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	loadli.w r1,  -272(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[9:10], r23
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	lui r10, 983040
	addli r9, r19, 28
	or r10, r26, r10
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	add.ul r[3:4], r[20:21], r[3:4]
	sext_int2long r[1:2], r1
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	s_lm2gm r6, r9, 0(r[3:4])
	.loc	1 75 25                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:25
	sll.d r[1:2], r[1:2], r23
	add.ul r[1:2], r[20:21], r[1:2]
	.loc	1 75 49                         # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:49
	s_lm2gm r10, r11, 0(r[1:2])
	loadli.w r1,  -344(r30)                 # 4-byte Folded Reload
	mfence { lm }
	loadli.w r28,  -436(r30)                # 4-byte Folded Reload
	add.s r5, r5, r1
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	blt.s r5, r1, .LBB0_2
.LBB0_26:                               # %._crit_edge
	.loc	1 75 4 epilogue_begin           # czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py:75:4
	addli sp, sp, 440
	mfence { lm, sm, gm }
	exit
.Ltmp9:
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
.asciz	"czthie3elslhiuvhsc7i6yxquf3ehx7ol7fgue2toi7wmxrqbet5.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/zt" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
