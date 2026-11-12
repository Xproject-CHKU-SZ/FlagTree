	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/ys" "cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py"
	.loc	1 22 0                          # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -280
	lui r7, :hi20:global_smem
.Ltmp0:
	.loc	1 50 37 prologue_end            # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:50:37
	core_id r1
	addli r30, sp, 216
	lui r4, 15
	load_param_i r5, 0
	slli r2, r1, 2
	addli r7, r7, :lo12:global_smem
	loadli.w r15,  36(r30)
	loadli.w r16,  40(r30)
	ori r4, r4, 4095
	add.s r3, r2, r7
	loadli.w r2,  32(r30)
	stores.w zero, 0(r3)
	mul.s r2, r15, r2
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	mul.s r6, r2, r16
	ble.s r6, r5, .LBB0_34
# %bb.1:                                # %.lr.ph
	.loc	1 0 37 is_stmt 0                # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:0:37
	addli r2, zero, 64
	lui r8, 262143
	addli r17, zero, 1
	load.d r[10:11], 8(r30)
	load_param_i r12, 1
	addli r21, r30, -192
	addli r22, zero, 32
	addli r23, r30, -128
	lui r25, 1048560
	lui r28, 522240
	div.s r9, r1, r2
	andi r2, r1, 63
	ori r8, r8, 4032
	storeli.w r2, -196(r30)                 # 4-byte Folded Spill
	and r8, r1, r8
	slli r8, r8, 2
	slli r2, r9, 6
	add.s r18, r8, r7
	lui r7, 1024
	addli r8, zero, 28
	sub.s r2, r1, r2
	setlti r1, r1, 64
	slli r13, r2, 4
	seteq r2, r2, zero
	storeli.w r13, -200(r30)                # 4-byte Folded Spill
	sext_int2long r[13:14], r13
	sll.d r[13:14], r[13:14], r17
	addli r17, zero, 63
	add.ul r[10:11], r[10:11], r[13:14]
	and r1, r1, r2
	lui r2, 522239
	store.d r[10:11], -208(r30)             # 8-byte Folded Spill
	storeli.w r1, -212(r30)                 # 4-byte Folded Spill
	lui r1, 7
	ori r27, r2, 4095
	ori r24, r1, 4095
	lui r1, 524287
	ori r26, r1, 4095
	j .LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 50 37                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:50:37
	float2bfloat.rn r1, r2
	.loc	1 50 25                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:50:25
	sext_int2long r[10:11], r10
	addli r2, zero, 1
	load.d r[13:14], 16(r30)
	sll.d r[10:11], r[10:11], r2
	.loc	1 50 37                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:50:37
	store.h r1, -64(r30)
	lui r2, 983040
	addli r1, zero, 2
	mfence { lm }
	or r1, r1, r2
	.loc	1 50 25                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:50:25
	add.ul r[10:11], r[13:14], r[10:11]
	.loc	1 50 37                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:50:37
	addli r2, r30, -64
	s_lm2gm r1, r2, 0(r[10:11])
	mfence { lm }
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 37                          # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:0:37
	add.s r5, r5, r12
	blt.s r5, r6, .LBB0_4
	j .LBB0_34
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	div.s r1, r5, r16
	div.s r1, r1, r15
	.loc	1 29 23 is_stmt 1               # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:29:23
	add.s r10, r1, r9
	blt.s r17, r10, .LBB0_3
# %bb.5:                                # %.preheader.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23 is_stmt 0                # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:0:23
	addli r1, zero, 0
.LBB0_6:                                # %.preheader
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 47 is_stmt 1               # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:38:47
	add.s r2, r21, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r22, .LBB0_6
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 38 37 is_stmt 0               # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:38:37
	loadli.w r2,  -200(r30)                 # 4-byte Folded Reload
	.loc	1 38 42                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:38:42
	slli r1, r10, 10
	.loc	1 38 30                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:38:30
	addli r11, zero, 1
	load.d r[16:17], 0(r30)
	.loc	1 38 37                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:38:37
	add.s r1, r1, r2
	.loc	1 38 47                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:38:47
	lui r2, 983040
	.loc	1 38 30                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:38:30
	sext_int2long r[13:14], r1
	.loc	1 38 47                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:38:47
	or r2, r22, r2
	.loc	1 39 37 is_stmt 1               # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:39:37
	lui r1, 983040
	.loc	1 38 30                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:38:30
	sll.d r[13:14], r[13:14], r11
	.loc	1 39 37                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:39:37
	or r1, r22, r1
	.loc	1 38 30                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:38:30
	add.ul r[13:14], r[16:17], r[13:14]
	.loc	1 38 47 is_stmt 0               # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:38:47
	l_gm2lm r2, r21, 0(r[13:14])
	.loc	1 39 37 is_stmt 1               # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:39:37
	load.d r[13:14], -208(r30)              # 8-byte Folded Reload
	l_gm2lm r1, r23, 0(r[13:14])
	.loc	1 38 47                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:38:47
	mfence { lm }
	load.hu r1, -192(r30)
	.loc	1 39 37                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:39:37
	load.hu r2, -128(r30)
	load.hu r13, -126(r30)
	.loc	1 38 47                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:38:47
	bfloat2float.rn r1, r1
	.loc	1 39 37                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:39:37
	bfloat2float.rn r2, r2
	.loc	1 44 18                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:44:18
	mul.f.rn r1, r1, r2
	.loc	1 38 47                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:38:47
	load.hu r2, -190(r30)
	.loc	1 45 19                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:45:19
	and r14, r1, r26
	setlt.u r11, r28, r14
	bneq r11, zero, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 19 is_stmt 0                # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:0:19
	addli r11, r1, 0
	j .LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 45 19                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:45:19
	or r11, r1, r7
.LBB0_10:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 0                           # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:0:0
	bfloat2float.rn r2, r2
	bfloat2float.rn r13, r13
	mul.f.rn r2, r2, r13
	.loc	1 45 19                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:45:19
	and r16, r2, r26
	setlt.u r13, r28, r16
	bneq r13, zero, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 19                          # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:0:19
	addli r13, r2, 0
	.loc	1 45 19                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:45:19
	setlt.u r14, r27, r14
	beq r14, zero, .LBB0_13
	j .LBB0_14
.LBB0_12:                               #   in Loop: Header=BB0_4 Depth=1
	or r13, r2, r7
	setlt.u r14, r27, r14
	bneq r14, zero, .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 19                          # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:0:19
	srli r11, r1, 16
	andi r11, r11, 1
	add.s r1, r1, r11
	add.s r1, r1, r24
	and r11, r1, r25
.LBB0_14:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 45 19                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:45:19
	setlt.u r1, r27, r16
	bneq r1, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 19                          # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:0:19
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r24
	and r13, r1, r25
.LBB0_16:                               #   in Loop: Header=BB0_4 Depth=1
	addli r1, zero, 0
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r11, r11, r14
	add.f.rn r13, r13, r17
	addli r1, r1, 4
	beq r1, r8, .LBB0_27
.Ltmp2:
.LBB0_18:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 47                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:38:47
	add.s r14, r21, r1
	.loc	1 39 37                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:39:37
	add.s r19, r23, r1
	load.hu r16, 4(r19)
	.loc	1 38 47                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:38:47
	load.hu r2, 4(r14)
	load.hu r17, 6(r14)
	.loc	1 39 37                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:39:37
	load.hu r19, 6(r19)
	.loc	1 38 47                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:38:47
	bfloat2float.rn r2, r2
	.loc	1 39 37                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:39:37
	bfloat2float.rn r16, r16
	.loc	1 44 18                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:44:18
	mul.f.rn r2, r2, r16
	.loc	1 45 19                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:45:19
	and r16, r2, r26
	setlt.u r20, r28, r16
	bneq r20, zero, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 19 is_stmt 0                # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:0:19
	addli r14, r2, 0
	j .LBB0_21
.LBB0_20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 45 19                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:45:19
	or r14, r2, r7
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0                           # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:0:0
	bfloat2float.rn r17, r17
	bfloat2float.rn r19, r19
	mul.f.rn r20, r17, r19
	.loc	1 45 19                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:45:19
	and r19, r20, r26
	setlt.u r17, r28, r19
	bneq r17, zero, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 19                          # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:0:19
	addli r17, r20, 0
	.loc	1 45 19                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:45:19
	setlt.u r16, r27, r16
	beq r16, zero, .LBB0_24
	j .LBB0_25
.LBB0_23:                               #   in Loop: Header=BB0_18 Depth=2
	or r17, r20, r7
	setlt.u r16, r27, r16
	bneq r16, zero, .LBB0_25
.LBB0_24:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 19                          # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:0:19
	srli r14, r2, 16
	andi r14, r14, 1
	add.s r2, r2, r14
	add.s r2, r2, r24
	and r14, r2, r25
.LBB0_25:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 45 19                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:45:19
	setlt.u r2, r27, r19
	bneq r2, zero, .LBB0_17
# %bb.26:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 19                          # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:0:19
	srli r2, r20, 16
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r24
	and r17, r2, r25
	j .LBB0_17
.LBB0_27:                               #   in Loop: Header=BB0_4 Depth=1
.Ltmp3:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r1, r11, r13
	stores.w r1, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loadli.w r1,  -196(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r1, 0(r18)
	loads.w r13, 4(r18)
	loads.w r11, 8(r18)
	loads.w r2, 12(r18)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r1, r13
	add.f.rn r1, r1, r11
	loads.w r11, 16(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 20(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 24(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 28(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 32(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 36(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 40(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 44(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 48(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 52(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 56(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 60(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 64(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 68(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 72(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 76(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 80(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 84(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 88(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 92(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 96(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 100(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 104(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 108(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 112(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 116(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 120(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 124(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 128(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 132(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 136(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 140(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 144(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 148(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 152(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 156(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 160(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 164(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 168(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 172(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 176(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 180(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 184(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 188(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 192(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 196(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 200(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 204(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 208(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 212(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 216(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 220(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 224(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 228(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 232(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 236(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 240(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 244(r18)
	add.f.rn r1, r1, r11
	loads.w r11, 248(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 252(r18)
	add.f.rn r1, r1, r11
	add.f.rn r1, r1, r2
	stores.w r1, 0(r18)
.Ltmp4:
.LBB0_29:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loadli.w r16,  40(r30)
	.loc	1 50 37 is_stmt 1               # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:50:37
	loadli.w r1,  -212(r30)                 # 4-byte Folded Reload
	addli r17, zero, 63
	beq r1, zero, .LBB0_3
# %bb.30:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 37 is_stmt 0                # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:0:37
	loads.w r1, 0(r18)
	.loc	1 50 37                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:50:37
	and r11, r1, r26
	setlt.u r2, r28, r11
	bneq r2, zero, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 37                          # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:0:37
	addli r2, r1, 0
	.loc	1 50 37                         # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:50:37
	setlt.u r11, r27, r11
	bneq r11, zero, .LBB0_2
	j .LBB0_33
.LBB0_32:                               #   in Loop: Header=BB0_4 Depth=1
	or r2, r1, r7
	setlt.u r11, r27, r11
	bneq r11, zero, .LBB0_2
.LBB0_33:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 37                          # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:0:37
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r24
	and r2, r1, r25
	j .LBB0_2
.LBB0_34:                               # %._crit_edge
	.loc	1 50 4 epilogue_begin           # cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py:50:4
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
	.byte	49                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
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
.asciz	"cysbdalbek42xgqdfhzrgwgw3gu3fwhrwl23zvd7qt6svcv6nacq.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/ys" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
