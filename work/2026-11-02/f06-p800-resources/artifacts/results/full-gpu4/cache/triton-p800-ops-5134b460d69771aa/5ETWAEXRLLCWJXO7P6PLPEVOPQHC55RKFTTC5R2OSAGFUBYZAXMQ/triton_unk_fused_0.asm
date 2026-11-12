	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/b5" "cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py"
	.loc	1 22 0                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -216
	addli r30, sp, 152
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
	ble.s r6, r5, .LBB0_31
# %bb.1:                                # %.lr.ph
	addli r8, zero, 64
	addli r11, r3, 1040
	addli r23, zero, 1
	andi r20, r1, 63
	addli r24, r30, -64
	div.s r10, r1, r8
	storeli.w r11, -136(r30)                # 4-byte Folded Spill
	load_param_i r11, 1
	load.d r[8:9], 8(r30)
	storeli.w r11, -140(r30)                # 4-byte Folded Spill
	lui r11, 1048575
	ori r11, r11, 3840
	storeli.w r10, -132(r30)                # 4-byte Folded Spill
	slli r10, r10, 6
	and r7, r7, r11
	sub.s r10, r1, r10
	add.s r16, r7, r2
	lui r1, 7
	slli r15, r10, 1
	ori r25, r1, 4095
	lui r1, 524287
	addli r21, r16, 1040
	sext_int2long r[10:11], r15
	ori r2, r15, 1
	ori r27, r1, 4095
	sll.d r[10:11], r[10:11], r23
	storeli.w r2, -144(r30)                 # 4-byte Folded Spill
	lui r2, 522239
	add.ul r[7:8], r[8:9], r[10:11]
	ori r28, r2, 4095
	lui r10, 522240
	addli r11, zero, 16
	store.d r[7:8], -152(r30)               # 8-byte Folded Spill
	lui r7, 239665
	ori r22, r7, 623
	addli r7, zero, 2
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	loadli.w r1,  -144(r30)                 # 4-byte Folded Reload
.Ltmp0:
	.loc	1 69 48 prologue_end            # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	float2bfloat.rn r9, r9
	addli r23, zero, 1
	addli r17, r24, 2
	store.h r9, -62(r30)
	lui r9, 983040
	add.s r8, r1, r8
	load.d r[1:2], 16(r30)
	or r9, r7, r9
	.loc	1 69 0 is_stmt 0                # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:0
	sext_int2long r[18:19], r8
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	float2bfloat.rn r8, r14
	.loc	1 69 0                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:0
	add.ul r[12:13], r[1:2], r[12:13]
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	store.h r8, -64(r30)
	.loc	1 69 0                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:0
	sll.d r[18:19], r[18:19], r23
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	lui r8, 983040
	mfence { lm }
	.loc	1 69 0                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:0
	add.ul r[18:19], r[1:2], r[18:19]
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	or r8, r7, r8
	loadli.w r1,  -140(r30)                 # 4-byte Folded Reload
	s_lm2gm r8, r24, 0(r[12:13])
	s_lm2gm r9, r17, 0(r[18:19])
	add.s r5, r5, r1
	mfence { lm }
	blt.s r5, r6, .LBB0_3
	j .LBB0_31
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	loadli.w r8,  40(r30)
	loadli.w r9,  36(r30)
	.loc	1 29 23 is_stmt 1               # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:29:23
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	.loc	1 38 46                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:46
	store.h zero, -128(r30)
	store.h zero, -126(r30)
	.loc	1 39 37                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:39:37
	lui r17, 983040
	.loc	1 38 46                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:46
	mfence { lm }
	div.s r8, r5, r8
	div.s r8, r8, r9
	lui r9, 983040
	.loc	1 29 23                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:29:23
	add.s r14, r8, r1
	.loc	1 38 30                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:30
	load.d r[1:2], 0(r30)
	.loc	1 38 41 is_stmt 0               # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:41
	slli r8, r14, 7
	.loc	1 38 37                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:37
	add.s r12, r8, r15
	.loc	1 38 30                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:30
	sext_int2long r[12:13], r12
	sll.d r[12:13], r[12:13], r23
	addli r23, zero, 4
	add.ul r[18:19], r[1:2], r[12:13]
	.loc	1 38 46                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:46
	or r9, r23, r9
	addli r1, r30, -128
	.loc	1 39 37 is_stmt 1               # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:39:37
	or r17, r23, r17
	.loc	1 38 46                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:46
	l_gm2lm r9, r1, 0(r[18:19])
	.loc	1 39 37                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:39:37
	load.d r[1:2], -152(r30)                # 8-byte Folded Reload
	l_gm2lm r17, r24, 0(r[1:2])
	.loc	1 38 46                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:46
	mfence { lm }
	load.hu r9, -128(r30)
	.loc	1 39 37                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:39:37
	load.hu r17, -64(r30)
	.loc	1 38 46                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:46
	bfloat2float.rn r9, r9
	.loc	1 39 37                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:39:37
	bfloat2float.rn r17, r17
	.loc	1 44 18                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:44:18
	add.f.rn r17, r9, r17
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	and r19, r17, r27
	setlt.u r9, r10, r19
	bneq r9, zero, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	addli r23, r17, 0
	j .LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	lui r1, 1024
	or r23, r17, r1
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	load.hu r9, -126(r30)
	load.hu r18, -62(r30)
	bfloat2float.rn r9, r9
	bfloat2float.rn r18, r18
	add.f.rn r18, r9, r18
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	and r26, r18, r27
	setlt.u r9, r10, r26
	bneq r9, zero, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	addli r9, r18, 0
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	setlt.u r19, r28, r19
	beq r19, zero, .LBB0_9
	j .LBB0_10
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	lui r1, 1024
	or r9, r18, r1
	setlt.u r19, r28, r19
	bneq r19, zero, .LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	srli r19, r17, 16
	lui r1, 1048560
	andi r19, r19, 1
	add.s r17, r17, r19
	add.s r17, r17, r25
	and r23, r17, r1
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	setlt.u r17, r28, r26
	bneq r17, zero, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	srli r9, r18, 16
	lui r1, 1048560
	andi r9, r9, 1
	add.s r9, r18, r9
	add.s r9, r9, r25
	and r9, r9, r1
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	lui r2, 245760
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	blt.s r14, r11, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r17, zero, 0
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r17, r23, r9
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	stores.w r17, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r20, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r17, 0(r16)
	loads.w r19, 4(r16)
	loads.w r18, 8(r16)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r17, r17, r19
	loads.w r19, 12(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 16(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 20(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 24(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 28(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 32(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 36(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 40(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 44(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 48(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 52(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 56(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 60(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 64(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 68(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 72(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 76(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 80(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 84(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 88(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 92(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 96(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 100(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 104(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 108(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 112(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 116(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 120(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 124(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 128(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 132(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 136(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 140(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 144(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 148(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 152(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 156(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 160(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 164(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 168(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 172(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 176(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 180(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 184(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 188(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 192(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 196(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 200(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 204(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 208(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 212(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 216(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 220(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 224(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 228(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 232(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 236(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 240(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 244(r16)
	add.f.rn r17, r17, r18
	loads.w r18, 248(r16)
	add.f.rn r17, r17, r19
	loads.w r19, 252(r16)
	add.f.rn r17, r17, r18
	add.f.rn r17, r17, r19
	stores.w r17, 0(r16)
.Ltmp2:
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r17, 0(r16)
	.loc	1 55 21 is_stmt 1               # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:55:21
	mul.f.rn r17, r17, r2
	.loc	1 56 20                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:56:20
	sub.f.rn r23, r23, r17
	sub.f.rn r9, r9, r17
.Ltmp3:
	.loc	2 263 15                        # standard.py:263:15
	blt.s r14, r11, .LBB0_19
.Ltmp4:
# %bb.18:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r14, zero, 0
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	mul.f.rn r14, r23, r23
	mul.f.rn r17, r9, r9
.Ltmp5:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r14, r14, r17
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r1,  -136(r30)                 # 4-byte Folded Reload
	stores.w r14, 0(r1)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r20, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r14, 0(r21)
	loads.w r18, 4(r21)
	loads.w r17, 8(r21)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r14, r14, r18
	loads.w r18, 12(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 16(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 20(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 24(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 28(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 32(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 36(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 40(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 44(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 48(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 52(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 56(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 60(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 64(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 68(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 72(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 76(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 80(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 84(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 88(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 92(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 96(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 100(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 104(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 108(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 112(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 116(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 120(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 124(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 128(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 132(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 136(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 140(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 144(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 148(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 152(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 156(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 160(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 164(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 168(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 172(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 176(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 180(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 184(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 188(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 192(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 196(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 200(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 204(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 208(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 212(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 216(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 220(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 224(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 228(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 232(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 236(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 240(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 244(r21)
	add.f.rn r14, r14, r17
	loads.w r17, 248(r21)
	add.f.rn r14, r14, r18
	loads.w r18, 252(r21)
	add.f.rn r14, r14, r17
	add.f.rn r14, r14, r18
	stores.w r14, 0(r21)
.Ltmp6:
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r14, 0(r21)
	.loc	1 66 28 is_stmt 1               # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:66:28
	lui r1, 260096
	.loc	1 63 21                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:63:21
	mul.f.rn r14, r14, r2
	.loc	1 65 20                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:65:20
	add.f.rn r14, r14, r22
	.loc	1 66 28                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:66:28
	sqrt.f.rn r14, r14
	div.f.rn r18, r1, r14
	.loc	1 67 20                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:67:20
	mul.f.rn r17, r23, r18
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	and r19, r17, r27
	setlt.u r14, r10, r19
	bneq r14, zero, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48 is_stmt 0                # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	addli r14, r17, 0
	j .LBB0_25
.LBB0_24:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	lui r1, 1024
	or r14, r17, r1
.LBB0_25:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r18, r9, r18
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	and r23, r18, r27
	setlt.u r9, r10, r23
	bneq r9, zero, .LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	addli r9, r18, 0
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	setlt.u r19, r28, r19
	beq r19, zero, .LBB0_28
	j .LBB0_29
.LBB0_27:                               #   in Loop: Header=BB0_3 Depth=1
	lui r1, 1024
	or r9, r18, r1
	setlt.u r19, r28, r19
	bneq r19, zero, .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	srli r14, r17, 16
	lui r1, 1048560
	andi r14, r14, 1
	add.s r14, r17, r14
	add.s r14, r14, r25
	and r14, r14, r1
.LBB0_29:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	setlt.u r17, r28, r23
	bneq r17, zero, .LBB0_2
# %bb.30:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	srli r9, r18, 16
	lui r1, 1048560
	andi r9, r9, 1
	add.s r9, r18, r9
	add.s r9, r9, r25
	and r9, r9, r1
	j .LBB0_2
.LBB0_31:                               # %._crit_edge
	.loc	1 69 4 epilogue_begin           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:4
	addli sp, sp, 152
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
	.long	216                             # 0xd8
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
	.byte	52                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
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
	.byte	60                              # DW_AT_call_line
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
.asciz	"cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/b5" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
