	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/el" "celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py"
	.loc	1 22 0                          # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -208
	addli r30, sp, 144
	lui r2, :hi20:global_smem
	core_id r1
	lui r4, 15
	loadli.w r6,  36(r30)
	loadli.w r5,  32(r30)
	slli r7, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r8,  40(r30)
	ori r4, r4, 4095
	add.s r3, r7, r2
	mul.s r6, r6, r5
	load_param_i r5, 0
	stores.w zero, 1040(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	stores.w zero, 0(r3)
	mul.s r6, r6, r8
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	ble.s r6, r5, .LBB0_13
# %bb.1:                                # %.lr.ph
	addli r8, zero, 64
	lui r12, 1048575
	addli r14, zero, 2
	load.d r[10:11], 8(r30)
	addli r9, r3, 1040
	andi r20, r1, 63
	addli r24, r30, -64
	addli r25, zero, 16
	lui r26, 245760
	div.s r8, r1, r8
	ori r12, r12, 3840
	storeli.w r9, -136(r30)                 # 4-byte Folded Spill
	load_param_i r9, 1
	and r7, r7, r12
	storeli.w r9, -140(r30)                 # 4-byte Folded Spill
	add.s r16, r7, r2
	storeli.w r8, -132(r30)                 # 4-byte Folded Spill
	slli r8, r8, 6
	addli r21, r16, 1040
	sub.s r8, r1, r8
	lui r1, 239665
	slli r15, r8, 1
	ori r27, r1, 623
	sext_int2long r[12:13], r15
	ori r17, r15, 1
	sll.d r[7:8], r[12:13], r14
	add.ul r[18:19], r[10:11], r[7:8]
	addli r10, zero, 4
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r8, 0(r21)
.Ltmp0:
	.loc	1 59 28 prologue_end            # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:59:28
	lui r9, 260096
	add.s r11, r17, r11
	load.d r[22:23], 16(r30)
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	lui r13, 983040
	addli r14, zero, 2
	addli r12, r24, 4
	.loc	1 61 25 is_stmt 0               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	add.ul r[1:2], r[22:23], r[1:2]
	.loc	1 56 21 is_stmt 1               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:56:21
	mul.f.rn r8, r8, r26
	.loc	1 58 20                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:58:20
	add.f.rn r8, r8, r27
	.loc	1 59 28                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:59:28
	sqrt.f.rn r8, r8
	div.f.rn r8, r9, r8
	.loc	1 60 20                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:60:20
	mul.f.rn r7, r7, r8
	mul.f.rn r8, r28, r8
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	storeli.w r8, -60(r30)
	.loc	1 61 25 is_stmt 0               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sext_int2long r[8:9], r11
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	storeli.w r7, -64(r30)
	lui r7, 983040
	or r11, r10, r13
	mfence { lm }
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sll.d r[8:9], r[8:9], r14
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	s_lm2gm r11, r24, 0(r[1:2])
	loadli.w r1,  -140(r30)                 # 4-byte Folded Reload
	or r7, r10, r7
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	add.ul r[8:9], r[22:23], r[8:9]
	add.s r5, r5, r1
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	s_lm2gm r7, r12, 0(r[8:9])
	mfence { lm }
	blt.s r5, r6, .LBB0_3
	j .LBB0_13
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 48                          # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:0:48
	loadli.w r1,  40(r30)
	loadli.w r2,  36(r30)
	.loc	1 38 46 is_stmt 1               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:46
	storeli.w zero, -128(r30)
	storeli.w zero, -124(r30)
	lui r7, 983040
	addli r9, zero, 8
	.loc	1 39 37                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:39:37
	lui r8, 983040
	.loc	1 38 46                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:46
	or r7, r9, r7
	.loc	1 39 37                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:39:37
	or r8, r9, r8
	.loc	1 38 46                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:46
	addli r9, r30, -128
	div.s r1, r5, r1
	div.s r1, r1, r2
	.loc	1 29 23                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:29:23
	loadli.w r2,  -132(r30)                 # 4-byte Folded Reload
	.loc	1 38 46                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:46
	mfence { lm }
	.loc	1 38 30 is_stmt 0               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:30
	load.d r[12:13], 0(r30)
	.loc	1 29 23 is_stmt 1               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:29:23
	add.s r22, r1, r2
	.loc	1 38 41                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:41
	slli r11, r22, 7
	.loc	1 38 37 is_stmt 0               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:37
	add.s r1, r11, r15
	.loc	1 38 30                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:30
	sext_int2long r[1:2], r1
	sll.d r[1:2], r[1:2], r14
	add.ul r[12:13], r[12:13], r[1:2]
	.loc	1 38 46                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:46
	l_gm2lm r7, r9, 0(r[12:13])
	.loc	1 39 37 is_stmt 1               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:39:37
	l_gm2lm r8, r24, 0(r[18:19])
	.loc	1 38 46                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:46
	mfence { lm }
	loadli.w r7,  -128(r30)
	.loc	1 39 37                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:39:37
	loadli.w r12,  -64(r30)
	.loc	1 38 46                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:46
	loadli.w r8,  -124(r30)
	.loc	1 39 37                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:39:37
	loadli.w r13,  -60(r30)
	.loc	1 40 18                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:40:18
	add.f.rn r7, r7, r12
	add.f.rn r8, r8, r13
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15                        # standard.py:263:15
	blt.s r22, r25, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r12, zero, 0
	j .LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r7, r8
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	stores.w r12, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r20, zero, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	loads.w r28, 0(r16)
	loads.w r13, 4(r16)
	loads.w r12, 8(r16)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r13, r28, r13
	loads.w r28, 12(r16)
	add.f.rn r12, r13, r12
	loads.w r13, 16(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 20(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 24(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 28(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 32(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 36(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 40(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 44(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 48(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 52(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 56(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 60(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 64(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 68(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 72(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 76(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 80(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 84(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 88(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 92(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 96(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 100(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 104(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 108(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 112(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 116(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 120(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 124(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 128(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 132(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 136(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 140(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 144(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 148(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 152(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 156(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 160(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 164(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 168(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 172(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 176(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 180(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 184(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 188(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 192(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 196(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 200(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 204(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 208(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 212(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 216(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 220(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 224(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 228(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 232(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 236(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 240(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 244(r16)
	add.f.rn r12, r12, r13
	loads.w r13, 248(r16)
	add.f.rn r12, r12, r28
	loads.w r28, 252(r16)
	add.f.rn r12, r12, r13
	add.f.rn r12, r12, r28
	stores.w r12, 0(r16)
.Ltmp2:
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r12, 0(r16)
	.loc	1 48 20 is_stmt 1               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:48:20
	mul.f.rn r12, r12, r26
	.loc	1 49 19                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:49:19
	sub.f.rn r7, r7, r12
	sub.f.rn r28, r8, r12
.Ltmp3:
	.loc	2 263 15                        # standard.py:263:15
	blt.s r22, r25, .LBB0_10
.Ltmp4:
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r8, zero, 0
	j .LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	mul.f.rn r8, r7, r7
	mul.f.rn r12, r28, r28
.Ltmp5:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r8, r8, r12
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r9,  -136(r30)                 # 4-byte Folded Reload
	stores.w r8, 0(r9)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r20, zero, .LBB0_2
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r8, 0(r21)
	loads.w r13, 4(r21)
	loads.w r12, 8(r21)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r8, r8, r13
	loads.w r13, 12(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 16(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 20(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 24(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 28(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 32(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 36(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 40(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 44(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 48(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 52(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 56(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 60(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 64(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 68(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 72(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 76(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 80(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 84(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 88(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 92(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 96(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 100(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 104(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 108(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 112(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 116(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 120(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 124(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 128(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 132(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 136(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 140(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 144(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 148(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 152(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 156(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 160(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 164(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 168(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 172(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 176(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 180(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 184(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 188(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 192(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 196(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 200(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 204(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 208(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 212(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 216(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 220(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 224(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 228(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 232(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 236(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 240(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 244(r21)
	add.f.rn r8, r8, r12
	loads.w r12, 248(r21)
	add.f.rn r8, r8, r13
	loads.w r13, 252(r21)
	add.f.rn r8, r8, r12
	add.f.rn r8, r8, r13
	stores.w r8, 0(r21)
	j .LBB0_2
.Ltmp6:
.LBB0_13:                               # %._crit_edge
	.loc	1 61 4 epilogue_begin is_stmt 1 # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:4
	addli sp, sp, 144
	mfence { lm, sm, gm }
	exit
.Ltmp7:
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
	.long	208                             # 0xd0
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
	.byte	5                               # Abbreviation Code
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x2c:0x4a DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0x22 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	45                              # DW_AT_call_line
	.byte	24                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x49:0x11 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.short	296                             # DW_AT_call_line
	.byte	36                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	53                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	7                               # Abbrev [7] 0x67:0xd DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.short	296                             # DW_AT_call_line
	.byte	36                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/el" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
