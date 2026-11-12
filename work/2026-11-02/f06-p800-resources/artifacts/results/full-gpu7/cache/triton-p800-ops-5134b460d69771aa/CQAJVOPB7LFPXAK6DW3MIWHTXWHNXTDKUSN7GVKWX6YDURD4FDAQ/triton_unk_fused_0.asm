	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/sf" "csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py"
	.loc	1 22 0                          # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -280
	lui r8, :hi20:global_smem
.Ltmp0:
	.loc	1 53 37 prologue_end            # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:53:37
	core_id r1
	addli r30, sp, 216
	lui r4, 15
	load_param_i r5, 0
	slli r2, r1, 2
	addli r8, r8, :lo12:global_smem
	loadli.w r16,  36(r30)
	loadli.w r17,  40(r30)
	ori r4, r4, 4095
	add.s r3, r2, r8
	loadli.w r2,  32(r30)
	stores.w zero, 0(r3)
	mul.s r2, r16, r2
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	mul.s r6, r2, r17
	ble.s r6, r5, .LBB0_36
# %bb.1:                                # %.lr.ph
	.loc	1 0 37 is_stmt 0                # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:0:37
	addli r7, zero, 64
	andi r2, r1, 63
	lui r9, 262143
	addli r18, zero, 1
	load.d r[11:12], 8(r30)
	load_param_i r13, 1
	addli r22, r30, -192
	addli r23, r30, -128
	lui r25, 1048560
	lui r28, 522240
	div.s r10, r1, r7
	storeli.w r2, -196(r30)                 # 4-byte Folded Spill
	ori r9, r9, 4032
	and r9, r1, r9
	slli r9, r9, 2
	slli r2, r10, 6
	add.s r19, r9, r8
	lui r8, 1024
	addli r9, zero, 60
	sub.s r2, r1, r2
	setlti r1, r1, 64
	slli r14, r2, 5
	seteq r2, r2, zero
	storeli.w r14, -200(r30)                # 4-byte Folded Spill
	sext_int2long r[14:15], r14
	sll.d r[14:15], r[14:15], r18
	addli r18, zero, 2047
	add.ul r[11:12], r[11:12], r[14:15]
	and r1, r1, r2
	lui r2, 522239
	store.d r[11:12], -208(r30)             # 8-byte Folded Spill
	storeli.w r1, -212(r30)                 # 4-byte Folded Spill
	lui r1, 7
	ori r27, r2, 4095
	ori r24, r1, 4095
	lui r1, 524287
	ori r26, r1, 4095
	j .LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 53 37                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:53:37
	float2bfloat.rn r1, r2
	.loc	1 53 25                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:53:25
	sext_int2long r[11:12], r11
	addli r2, zero, 1
	load.d r[14:15], 16(r30)
	sll.d r[11:12], r[11:12], r2
	.loc	1 53 37                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:53:37
	store.h r1, -64(r30)
	lui r2, 983040
	addli r1, zero, 2
	mfence { lm }
	or r1, r1, r2
	.loc	1 53 25                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:53:25
	add.ul r[11:12], r[14:15], r[11:12]
	.loc	1 53 37                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:53:37
	addli r2, r30, -64
	s_lm2gm r1, r2, 0(r[11:12])
	mfence { lm }
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 37                          # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:0:37
	add.s r5, r5, r13
	blt.s r5, r6, .LBB0_4
	j .LBB0_36
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_20 Depth 2
	div.s r1, r5, r17
	div.s r1, r1, r16
	.loc	1 28 23 is_stmt 1               # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:28:23
	add.s r11, r1, r10
	blt.s r18, r11, .LBB0_3
# %bb.5:                                # %.preheader.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23 is_stmt 0                # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:0:23
	addli r1, zero, 0
.LBB0_6:                                # %.preheader
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 40 51 is_stmt 1               # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:40:51
	add.s r2, r22, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r7, .LBB0_6
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 40 41 is_stmt 0               # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:40:41
	loadli.w r2,  -200(r30)                 # 4-byte Folded Reload
	.loc	1 40 46                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:40:46
	slli r1, r11, 11
	.loc	1 40 34                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:40:34
	addli r12, zero, 1
	load.d r[14:15], 0(r30)
	.loc	1 40 41                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:40:41
	add.s r1, r1, r2
	.loc	1 40 34                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:40:34
	sext_int2long r[1:2], r1
	sll.d r[1:2], r[1:2], r12
	.loc	1 40 51                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:40:51
	lui r12, 983040
	.loc	1 40 34                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:40:34
	add.ul r[1:2], r[14:15], r[1:2]
	.loc	1 40 51                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:40:51
	or r12, r7, r12
	l_gm2lm r12, r22, 0(r[1:2])
	addli r1, zero, 0
.LBB0_8:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 41 41 is_stmt 1               # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:41:41
	add.s r2, r23, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r7, .LBB0_8
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	lui r1, 983040
	load.d r[14:15], -208(r30)              # 8-byte Folded Reload
	or r1, r7, r1
	l_gm2lm r1, r23, 0(r[14:15])
	.loc	1 40 51                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:40:51
	mfence { lm }
	load.hu r1, -192(r30)
	.loc	1 41 41                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:41:41
	load.hu r2, -128(r30)
	.loc	1 40 51                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:40:51
	load.hu r12, -190(r30)
	.loc	1 41 41                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:41:41
	load.hu r15, -126(r30)
	.loc	1 40 51                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:40:51
	bfloat2float.rn r1, r1
	.loc	1 41 41                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:41:41
	bfloat2float.rn r2, r2
	.loc	1 46 22                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:46:22
	mul.f.rn r2, r1, r2
	.loc	1 47 23                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:47:23
	and r14, r2, r26
	setlt.u r1, r28, r14
	bneq r1, zero, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23 is_stmt 0                # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:0:23
	addli r1, r2, 0
	j .LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 47 23                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:47:23
	or r1, r2, r8
.LBB0_12:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 0                           # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:0:0
	bfloat2float.rn r12, r12
	bfloat2float.rn r15, r15
	mul.f.rn r12, r12, r15
	.loc	1 47 23                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:47:23
	and r17, r12, r26
	setlt.u r15, r28, r17
	bneq r15, zero, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:0:23
	addli r15, r12, 0
	.loc	1 47 23                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:47:23
	setlt.u r14, r27, r14
	beq r14, zero, .LBB0_15
	j .LBB0_16
.LBB0_14:                               #   in Loop: Header=BB0_4 Depth=1
	or r15, r12, r8
	setlt.u r14, r27, r14
	bneq r14, zero, .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:0:23
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r24
	and r1, r1, r25
.LBB0_16:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 47 23                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:47:23
	setlt.u r2, r27, r17
	bneq r2, zero, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:0:23
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r24
	and r15, r2, r25
.LBB0_18:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 50 25 is_stmt 1               # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:50:25
	add.f.rn r12, r1, zero
	add.f.rn r14, r15, zero
	addli r1, zero, 0
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_20 Depth=2
	add.f.rn r2, r15, zero
	add.f.rn r15, r18, zero
	addli r1, r1, 4
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r12, r12, r2
	add.f.rn r14, r14, r15
	beq r1, r9, .LBB0_29
.Ltmp2:
.LBB0_20:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 40 51                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:40:51
	add.s r15, r22, r1
	.loc	1 41 41                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:41:41
	add.s r20, r23, r1
	load.hu r17, 4(r20)
	.loc	1 40 51                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:40:51
	load.hu r2, 4(r15)
	load.hu r18, 6(r15)
	.loc	1 41 41                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:41:41
	load.hu r20, 6(r20)
	.loc	1 40 51                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:40:51
	bfloat2float.rn r2, r2
	.loc	1 41 41                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:41:41
	bfloat2float.rn r17, r17
	.loc	1 46 22                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:46:22
	mul.f.rn r2, r2, r17
	.loc	1 47 23                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:47:23
	and r17, r2, r26
	setlt.u r21, r28, r17
	bneq r21, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 23 is_stmt 0                # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:0:23
	addli r15, r2, 0
	j .LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 47 23                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:47:23
	or r15, r2, r8
.LBB0_23:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 0                           # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:0:0
	bfloat2float.rn r18, r18
	bfloat2float.rn r20, r20
	mul.f.rn r21, r18, r20
	.loc	1 47 23                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:47:23
	and r20, r21, r26
	setlt.u r18, r28, r20
	bneq r18, zero, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 23                          # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:0:23
	addli r18, r21, 0
	.loc	1 47 23                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:47:23
	setlt.u r17, r27, r17
	beq r17, zero, .LBB0_26
	j .LBB0_27
.LBB0_25:                               #   in Loop: Header=BB0_20 Depth=2
	or r18, r21, r8
	setlt.u r17, r27, r17
	bneq r17, zero, .LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 23                          # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:0:23
	srli r15, r2, 16
	andi r15, r15, 1
	add.s r2, r2, r15
	add.s r2, r2, r24
	and r15, r2, r25
.LBB0_27:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 47 23                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:47:23
	setlt.u r2, r27, r20
	bneq r2, zero, .LBB0_19
# %bb.28:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 23                          # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:0:23
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r24
	and r18, r2, r25
	j .LBB0_19
.LBB0_29:                               #   in Loop: Header=BB0_4 Depth=1
.Ltmp3:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r1, r12, r14
	stores.w r1, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loadli.w r1,  -196(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r1, 0(r19)
	loads.w r14, 4(r19)
	loads.w r12, 8(r19)
	loads.w r2, 12(r19)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r1, r14
	add.f.rn r1, r1, r12
	loads.w r12, 16(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 20(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 24(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 28(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 32(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 36(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 40(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 44(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 48(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 52(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 56(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 60(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 64(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 68(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 72(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 76(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 80(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 84(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 88(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 92(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 96(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 100(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 104(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 108(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 112(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 116(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 120(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 124(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 128(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 132(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 136(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 140(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 144(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 148(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 152(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 156(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 160(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 164(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 168(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 172(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 176(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 180(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 184(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 188(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 192(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 196(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 200(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 204(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 208(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 212(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 216(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 220(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 224(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 228(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 232(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 236(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 240(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 244(r19)
	add.f.rn r1, r1, r12
	loads.w r12, 248(r19)
	add.f.rn r1, r1, r2
	loads.w r2, 252(r19)
	add.f.rn r1, r1, r12
	add.f.rn r1, r1, r2
	stores.w r1, 0(r19)
.Ltmp4:
.LBB0_31:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loadli.w r17,  40(r30)
	.loc	1 53 37 is_stmt 1               # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:53:37
	loadli.w r1,  -212(r30)                 # 4-byte Folded Reload
	addli r18, zero, 2047
	beq r1, zero, .LBB0_3
# %bb.32:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 37 is_stmt 0                # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:0:37
	loads.w r1, 0(r19)
	.loc	1 53 37                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:53:37
	and r12, r1, r26
	setlt.u r2, r28, r12
	bneq r2, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 37                          # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:0:37
	addli r2, r1, 0
	.loc	1 53 37                         # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:53:37
	setlt.u r12, r27, r12
	bneq r12, zero, .LBB0_2
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_4 Depth=1
	or r2, r1, r8
	setlt.u r12, r27, r12
	bneq r12, zero, .LBB0_2
.LBB0_35:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 37                          # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:0:37
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r24
	and r2, r1, r25
	j .LBB0_2
.LBB0_36:                               # %._crit_edge
	.loc	1 53 4 epilogue_begin           # csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py:53:4
	addli sp, sp, 216
	mfence { lm, sm, gm }
	exit
.Ltmp5:
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
	.long	280                             # 0x118
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
	.byte	1                               # Abbrev [1] 0xb:0x4a DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x2c:0x28 DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0x1a DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	52                              # DW_AT_call_line
	.byte	27                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x45:0xd DW_TAG_inlined_subroutine
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"csftvitlocpf2uol4rhmqneq6tuxqmraixlmmxzamrki3ikfn5xn.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/sf" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
