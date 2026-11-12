	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/55" "c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py"
	.loc	1 22 0                          # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -360
	addli r30, sp, 296
	lui r2, :hi20:global_smem
	core_id r1
	lui r4, 15
	loadli.w r21,  52(r30)
	loadli.w r5,  48(r30)
	slli r7, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r22,  56(r30)
	ori r4, r4, 4095
	add.s r3, r7, r2
	mul.s r6, r21, r5
	load_param_i r5, 0
	stores.w zero, 1040(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	stores.w zero, 0(r3)
	mul.s r6, r6, r22
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	ble.s r6, r5, .LBB0_13
# %bb.1:                                # %.lr.ph
	addli r8, zero, 64
	addli r15, r3, 1040
	addli r19, zero, 1
	load.d r[10:11], 16(r30)
	load.d r[12:13], 8(r30)
	andi r24, r1, 63
	addli r27, zero, 4
	addli r28, r30, -192
	div.s r14, r1, r8
	storeli.w r15, -264(r30)                # 4-byte Folded Spill
	load_param_i r15, 1
	load.d r[8:9], 24(r30)
	storeli.w r15, -268(r30)                # 4-byte Folded Spill
	storeli.w r14, -260(r30)                # 4-byte Folded Spill
	slli r14, r14, 6
	sub.s r14, r1, r14
	slli r15, r14, 1
	lui r14, 1048575
	sext_int2long r[16:17], r15
	ori r14, r14, 3840
	ori r18, r15, 1
	sll.d r[16:17], r[16:17], r19
	and r7, r7, r14
	storeli.w r18, -272(r30)                # 4-byte Folded Spill
	add.s r23, r7, r2
	add.ul r[10:11], r[10:11], r[16:17]
	lui r7, 239665
	add.ul r[12:13], r[12:13], r[16:17]
	add.ul r[8:9], r[8:9], r[16:17]
	store.d r[10:11], -288(r30)             # 8-byte Folded Spill
	addli r25, r23, 1040
	ori r26, r7, 623
	addli r11, zero, 2
	store.d r[12:13], -280(r30)             # 8-byte Folded Spill
	store.d r[8:9], -296(r30)               # 8-byte Folded Spill
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r16, 0(r25)
.Ltmp0:
	.loc	1 65 21 prologue_end            # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:65:21
	lui r1, 245760
	hfloat2float.rn r9, r9
	hfloat2float.rn r12, r12
	hfloat2float.rn r13, r13
	hfloat2float.rn r14, r14
	mul.f.rn r16, r16, r1
	.loc	1 68 28                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:68:28
	lui r1, 260096
	.loc	1 67 20                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:67:20
	add.f.rn r16, r16, r26
	.loc	1 68 28                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:68:28
	sqrt.f.rn r16, r16
	div.f.rn r16, r1, r16
	loadli.w r1,  -272(r30)                 # 4-byte Folded Reload
	add.s r10, r1, r10
	load.d r[1:2], 32(r30)
	.loc	1 75 25                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:75:25
	sext_int2long r[19:20], r10
	add.ul r[7:8], r[1:2], r[7:8]
	.loc	1 69 20                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:69:20
	mul.f.rn r17, r17, r16
	mul.f.rn r16, r18, r16
	addli r18, r28, 2
	.loc	1 71 20                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:71:20
	mul.f.rn r9, r17, r9
	mul.f.rn r12, r16, r12
	.loc	1 75 48                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:75:48
	lui r16, 983040
	lui r17, 983040
	.loc	1 73 20                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:73:20
	add.f.rn r9, r9, r13
	add.f.rn r10, r12, r14
	addli r13, zero, 1
	.loc	1 75 48                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:75:48
	or r12, r11, r16
	or r16, r11, r17
	.loc	1 75 25 is_stmt 0               # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:75:25
	sll.d r[13:14], r[19:20], r13
	addli r19, zero, 1
	add.ul r[13:14], r[1:2], r[13:14]
	.loc	1 75 48                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:75:48
	float2hfloat.rn r9, r9
	float2hfloat.rn r10, r10
	store.h r9, -192(r30)
	store.h r10, -190(r30)
	mfence { lm }
	loadli.w r1,  -268(r30)                 # 4-byte Folded Reload
	s_lm2gm r12, r28, 0(r[7:8])
	s_lm2gm r16, r18, 0(r[13:14])
	mfence { lm }
	add.s r5, r5, r1
	blt.s r5, r6, .LBB0_3
	j .LBB0_13
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 48                          # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:0:48
	div.s r7, r5, r22
	.loc	1 29 23 is_stmt 1               # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:29:23
	loadli.w r1,  -260(r30)                 # 4-byte Folded Reload
	.loc	1 38 46                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:38:46
	lui r9, 983040
	store.h zero, -256(r30)
	store.h zero, -254(r30)
	.loc	1 39 37                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:39:37
	lui r12, 983040
	.loc	1 38 46                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:38:46
	or r9, r27, r9
	.loc	1 39 37                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:39:37
	or r12, r27, r12
	div.s r7, r7, r21
	.loc	1 29 23                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:29:23
	add.s r16, r7, r1
	.loc	1 38 30                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:38:30
	load.d r[1:2], 0(r30)
	.loc	1 38 46 is_stmt 0               # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:38:46
	mfence { lm }
	.loc	1 38 41                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:38:41
	slli r10, r16, 7
	.loc	1 38 37                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:38:37
	add.s r7, r10, r15
	.loc	1 38 30                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:38:30
	sext_int2long r[7:8], r7
	sll.d r[7:8], r[7:8], r19
	add.ul r[13:14], r[1:2], r[7:8]
	.loc	1 38 46                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:38:46
	addli r1, r30, -256
	l_gm2lm r9, r1, 0(r[13:14])
	.loc	1 39 37 is_stmt 1               # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:39:37
	load.d r[1:2], -280(r30)                # 8-byte Folded Reload
	.loc	1 40 38                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:40:38
	lui r9, 983040
	.loc	1 41 38                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:41:38
	lui r13, 983040
	.loc	1 40 38                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:40:38
	or r9, r27, r9
	.loc	1 41 38                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:41:38
	or r13, r27, r13
	.loc	1 39 37                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:39:37
	l_gm2lm r12, r28, 0(r[1:2])
	.loc	1 40 38                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:40:38
	load.d r[1:2], -288(r30)                # 8-byte Folded Reload
	addli r12, r30, -128
	l_gm2lm r9, r12, 0(r[1:2])
	.loc	1 41 38                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:41:38
	load.d r[1:2], -296(r30)                # 8-byte Folded Reload
	addli r9, r30, -64
	l_gm2lm r13, r9, 0(r[1:2])
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15                        # standard.py:263:15
	addli r1, zero, 16
.Ltmp2:
	.loc	1 40 38                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:40:38
	mfence { lm }
	.loc	1 38 46                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:38:46
	load.hu r9, -256(r30)
	.loc	1 39 37                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:39:37
	load.hu r13, -192(r30)
	.loc	1 38 46                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:38:46
	load.hu r12, -254(r30)
	.loc	1 39 37                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:39:37
	load.hu r14, -190(r30)
	.loc	1 47 19                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:47:19
	add.hf.rn r9, r9, r13
	add.hf.rn r12, r12, r14
	.loc	1 48 19                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:48:19
	hfloat2float.rn r17, r9
	hfloat2float.rn r18, r12
.Ltmp3:
	.loc	2 263 15                        # standard.py:263:15
	blt.s r16, r1, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r19, zero, 0
	j .LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r19, r17, r18
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	load.hu r9, -128(r30)
	load.hu r12, -126(r30)
	load.hu r13, -64(r30)
	load.hu r14, -62(r30)
	stores.w r19, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r24, zero, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	addli r1, r22, 0
	addli r22, r21, 0
	loads.w r19, 0(r23)
	loads.w r21, 4(r23)
	loads.w r20, 8(r23)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r19, r19, r21
	loads.w r21, 12(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 16(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 20(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 24(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 28(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 32(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 36(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 40(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 44(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 48(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 52(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 56(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 60(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 64(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 68(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 72(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 76(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 80(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 84(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 88(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 92(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 96(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 100(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 104(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 108(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 112(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 116(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 120(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 124(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 128(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 132(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 136(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 140(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 144(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 148(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 152(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 156(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 160(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 164(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 168(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 172(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 176(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 180(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 184(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 188(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 192(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 196(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 200(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 204(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 208(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 212(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 216(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 220(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 224(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 228(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 232(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 236(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 240(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 244(r23)
	add.f.rn r19, r19, r20
	loads.w r20, 248(r23)
	add.f.rn r19, r19, r21
	loads.w r21, 252(r23)
	add.f.rn r19, r19, r20
	add.f.rn r19, r19, r21
	addli r21, r22, 0
	addli r22, r1, 0
	stores.w r19, 0(r23)
.Ltmp4:
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r19, 0(r23)
	.loc	1 57 21 is_stmt 1               # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:57:21
	lui r1, 245760
	mul.f.rn r19, r19, r1
.Ltmp5:
	.loc	2 263 15                        # standard.py:263:15
	addli r1, zero, 16
.Ltmp6:
	.loc	1 58 20                         # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:58:20
	sub.f.rn r17, r17, r19
	sub.f.rn r18, r18, r19
.Ltmp7:
	.loc	2 263 15                        # standard.py:263:15
	blt.s r16, r1, .LBB0_10
.Ltmp8:
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r16, zero, 0
	j .LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	mul.f.rn r16, r17, r17
	mul.f.rn r19, r18, r18
.Ltmp9:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r16, r16, r19
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r1,  -264(r30)                 # 4-byte Folded Reload
	stores.w r16, 0(r1)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r24, zero, .LBB0_2
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r16, 0(r25)
	loads.w r20, 4(r25)
	loads.w r19, 8(r25)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r16, r16, r20
	loads.w r20, 12(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 16(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 20(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 24(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 28(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 32(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 36(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 40(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 44(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 48(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 52(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 56(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 60(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 64(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 68(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 72(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 76(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 80(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 84(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 88(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 92(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 96(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 100(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 104(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 108(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 112(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 116(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 120(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 124(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 128(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 132(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 136(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 140(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 144(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 148(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 152(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 156(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 160(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 164(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 168(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 172(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 176(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 180(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 184(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 188(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 192(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 196(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 200(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 204(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 208(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 212(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 216(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 220(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 224(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 228(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 232(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 236(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 240(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 244(r25)
	add.f.rn r16, r16, r19
	loads.w r19, 248(r25)
	add.f.rn r16, r16, r20
	loads.w r20, 252(r25)
	add.f.rn r16, r16, r19
	add.f.rn r16, r16, r20
	stores.w r16, 0(r25)
	j .LBB0_2
.Ltmp10:
.LBB0_13:                               # %._crit_edge
	.loc	1 75 4 epilogue_begin is_stmt 1 # c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py:75:4
	addli sp, sp, 296
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
	.long	60                              # 0x3c
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	360                             # 0x168
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
	.long	.Ltmp9-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges3:
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	.Ltmp7-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.long	.Ltmp9-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"c55zvezaoyoxcsiclrlfx3yxgkmg37excefasyfctn3rn4qicvjt.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/55" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
