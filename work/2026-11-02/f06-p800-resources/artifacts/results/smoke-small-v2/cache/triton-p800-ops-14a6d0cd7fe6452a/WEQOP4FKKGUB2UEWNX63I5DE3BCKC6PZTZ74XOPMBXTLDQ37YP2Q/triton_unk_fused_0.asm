	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/smoke-small-v2/cache/inductor/gy" "cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py"
	.loc	1 22 0                          # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:22:0
	.cfi_startproc
# %bb.0:
	addli sp, sp, -448
	addli r30, sp, 384
	lui r2, :hi20:global_smem
	core_id r1
	lui r5, 15
	load_param_i r26, 0
	loadli.w r23,  36(r30)
	loadli.w r4,  32(r30)
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	ori r25, r5, 4095
	lui r5, 1046527
	loadli.w r22,  40(r30)
	add.s r24, r3, r2
	ori r5, r5, 4095
	mul.s r4, r23, r4
	stores.w zero, 1040(r24)
	mfence { lm, sm, gm }
	csr_set csr3, r25
	sync_group
	stores.w r5, 0(r24)
	mul.s r28, r4, r22
	mfence { lm, sm, gm }
	csr_set csr3, r25
	sync_group
	ble.s r28, r26, .LBB0_652
# %bb.1:                                # %.lr.ph
	addli r4, zero, 64
	addli r7, r24, 1040
	addli r10, zero, 1
	addli r11, r30, -64
	addli r12, zero, 16
	storeli.w r24, -372(r30)                # 4-byte Folded Spill
	storeli.w r25, -376(r30)                # 4-byte Folded Spill
	storeli.w r28, -380(r30)                # 4-byte Folded Spill
	div.s r6, r1, r4
	storeli.w r7, -224(r30)                 # 4-byte Folded Spill
	load_param_i r7, 1
	load.d r[4:5], 8(r30)
	storeli.w r7, -228(r30)                 # 4-byte Folded Spill
	lui r7, 1048575
	ori r7, r7, 3840
	storeli.w r6, -220(r30)                 # 4-byte Folded Spill
	slli r6, r6, 6
	and r3, r3, r7
	sub.s r6, r1, r6
	add.s r21, r3, r2
	andi r1, r1, 63
	slli r8, r6, 1
	addli r27, r21, 1040
	storeli.w r1, -132(r30)                 # 4-byte Folded Spill
	sext_int2long r[6:7], r8
	storeli.w r8, -232(r30)                 # 4-byte Folded Spill
	sll.d r[2:3], r[6:7], r10
	ori r6, r8, 1
	add.ul r[2:3], r[4:5], r[2:3]
	storeli.w r6, -236(r30)                 # 4-byte Folded Spill
	store.d r[2:3], -248(r30)               # 8-byte Folded Spill
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r25
	sync_group
	loads.w r1, 0(r27)
	loadli.w r4,  -136(r30)                 # 4-byte Folded Reload
	load.d r[5:6], 16(r30)
	addli r13, zero, 2
.Ltmp0:
	.loc	1 58 48 prologue_end            # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:58:48
	lui r7, 983040
	or r7, r13, r7
	addli.d r[8:9], r[5:6], 0
	.loc	1 58 25 is_stmt 0               # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:58:25
	load.d r[5:6], -144(r30)                # 8-byte Folded Reload
	add.ul r[5:6], r[8:9], r[5:6]
	.loc	1 56 21 is_stmt 1               # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:56:21
	div.f.rn r3, r19, r1
	div.f.rn r1, r2, r1
	loadli.w r2,  -236(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r4
	addli r4, r11, 2
	.loc	1 58 48                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:58:48
	float2hfloat.rn r1, r1
	float2hfloat.rn r3, r3
	store.h r1, -62(r30)
	.loc	1 58 25 is_stmt 0               # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:58:25
	sext_int2long r[1:2], r2
	.loc	1 58 48                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:58:48
	store.h r3, -64(r30)
	lui r3, 983040
	mfence { lm }
	.loc	1 58 25                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:58:25
	sll.d r[1:2], r[1:2], r10
	.loc	1 58 48                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:58:48
	or r3, r13, r3
	s_lm2gm r7, r11, 0(r[5:6])
	.loc	1 58 25                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:58:25
	add.ul r[1:2], r[8:9], r[1:2]
	.loc	1 58 48                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:58:48
	s_lm2gm r3, r4, 0(r[1:2])
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	mfence { lm }
	add.s r26, r26, r1
	blt.s r26, r28, .LBB0_3
	j .LBB0_652
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 48                          # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:0:48
	div.s r1, r26, r22
	.loc	1 29 23 is_stmt 1               # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:29:23
	loadli.w r2,  -220(r30)                 # 4-byte Folded Reload
	.loc	1 38 46                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:38:46
	store.h zero, -128(r30)
	store.h zero, -126(r30)
	div.s r1, r1, r23
	.loc	1 29 23                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:29:23
	add.s r8, r1, r2
	.loc	1 38 37                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:38:37
	loadli.w r2,  -232(r30)                 # 4-byte Folded Reload
	.loc	1 38 46 is_stmt 0               # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:38:46
	lui r1, 983040
	.loc	1 38 41                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:38:41
	slli r3, r8, 7
	.loc	1 38 37                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:38:37
	add.s r2, r3, r2
	storeli.w r3, -136(r30)                 # 4-byte Folded Spill
	.loc	1 39 37 is_stmt 1               # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:39:37
	lui r3, 983040
	.loc	1 38 46                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:38:46
	mfence { lm }
	.loc	1 38 30 is_stmt 0               # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:38:30
	sext_int2long r[4:5], r2
	addli r2, zero, 4
	sll.d r[6:7], r[4:5], r10
	load.d r[4:5], 0(r30)
	.loc	1 38 46                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:38:46
	or r1, r2, r1
	.loc	1 39 37 is_stmt 1               # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:39:37
	or r2, r2, r3
	.loc	1 38 46                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:38:46
	addli r3, r30, -128
	store.d r[6:7], -144(r30)               # 8-byte Folded Spill
	.loc	1 38 30 is_stmt 0               # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:38:30
	add.ul r[4:5], r[4:5], r[6:7]
	.loc	1 38 46                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:38:46
	l_gm2lm r1, r3, 0(r[4:5])
	.loc	1 39 37 is_stmt 1               # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:39:37
	load.d r[3:4], -248(r30)                # 8-byte Folded Reload
	l_gm2lm r2, r11, 0(r[3:4])
	.loc	1 38 46                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:38:46
	mfence { lm }
	load.hu r1, -128(r30)
	.loc	1 39 37                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:39:37
	load.hu r3, -64(r30)
	.loc	1 38 46                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:38:46
	load.hu r2, -126(r30)
	.loc	1 39 37                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:39:37
	load.hu r4, -62(r30)
	.loc	1 45 19                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:45:19
	add.hf.rn r1, r1, r3
	add.hf.rn r2, r2, r4
	.loc	1 46 19                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:46:19
	hfloat2float.rn r6, r1
	hfloat2float.rn r7, r2
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/torch/_inductor/runtime" "triton_helpers.py"
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r7, r6
	addli r1, r6, 0
	bneq r2, zero, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r1, r7, 0
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	slli r2, r6, 9
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
	and r2, r2, r3
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_537
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_538
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r7, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_11
.Ltmp2:
# %bb.10:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 49 35 is_stmt 1               # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:49:35
	blt.s r8, r12, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 35 is_stmt 0                # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:0:35
	lui r2, 1046528
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	storeli.w r8, -148(r30)                 # 4-byte Folded Spill
	stores.w r2, 0(r24)
	mfence { lm, sm, gm }
	csr_set csr3, r25
	sync_group
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_535
# %bb.14:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r3, 0(r21)
	loads.w r1, 4(r21)
	storeli.w r7, -256(r30)                 # 4-byte Folded Spill
	storeli.w r6, -252(r30)                 # 4-byte Folded Spill
.Ltmp3:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	setlt.f r4, r1, r3
	addli r2, r3, 0
	bneq r4, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
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
	beq r4, zero, .LBB0_542
# %bb.17:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r3, zero, .LBB0_543
.LBB0_18:                               #   in Loop: Header=BB0_3 Depth=1
	beq r1, zero, .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r2
	setle.f r4, r2, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r3, 8(r21)
	addli r2, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r3, r1
	bneq r4, zero, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_24:                               #   in Loop: Header=BB0_3 Depth=1
	slli r4, r3, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
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
	and r4, r5, r4
	beq r4, zero, .LBB0_544
# %bb.25:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r1, zero, .LBB0_545
.LBB0_26:                               #   in Loop: Header=BB0_3 Depth=1
	beq r3, zero, .LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r2
	setle.f r4, r2, zero
	and r1, r4, r1
	bneq r1, zero, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r2, 0
.LBB0_30:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r4, 68(r21)
	loads.w r22, 184(r21)
	loads.w r1, 12(r21)
	loads.w r20, 16(r21)
	loads.w r19, 20(r21)
	loads.w r18, 24(r21)
	loads.w r17, 28(r21)
	loads.w r16, 32(r21)
	loads.w r15, 36(r21)
	loads.w r14, 40(r21)
	loads.w r13, 44(r21)
	loads.w r12, 48(r21)
	loads.w r11, 52(r21)
	loads.w r10, 56(r21)
	loads.w r9, 60(r21)
	loads.w r6, 64(r21)
	loads.w r8, 76(r21)
	loads.w r7, 84(r21)
	loads.w r5, 88(r21)
	loads.w r28, 188(r21)
	addli r2, r26, 0
	addli r25, r3, 0
	storeli.w r4, -368(r30)                 # 4-byte Folded Spill
	loads.w r4, 72(r21)
	storeli.w r22, -164(r30)                # 4-byte Folded Spill
	loads.w r22, 192(r21)
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r23, r1, r3
	storeli.w r4, -364(r30)                 # 4-byte Folded Spill
	loads.w r4, 80(r21)
	storeli.w r22, -160(r30)                # 4-byte Folded Spill
	loads.w r22, 196(r21)
	storeli.w r4, -360(r30)                 # 4-byte Folded Spill
	loads.w r4, 92(r21)
	storeli.w r22, -312(r30)                # 4-byte Folded Spill
	loads.w r22, 200(r21)
	storeli.w r4, -216(r30)                 # 4-byte Folded Spill
	loads.w r4, 96(r21)
	storeli.w r22, -156(r30)                # 4-byte Folded Spill
	loads.w r22, 204(r21)
	storeli.w r4, -352(r30)                 # 4-byte Folded Spill
	loads.w r4, 100(r21)
	storeli.w r22, -308(r30)                # 4-byte Folded Spill
	loads.w r22, 208(r21)
	storeli.w r4, -212(r30)                 # 4-byte Folded Spill
	loads.w r4, 104(r21)
	storeli.w r22, -304(r30)                # 4-byte Folded Spill
	loads.w r22, 212(r21)
	storeli.w r4, -348(r30)                 # 4-byte Folded Spill
	loads.w r4, 108(r21)
	storeli.w r22, -300(r30)                # 4-byte Folded Spill
	loads.w r22, 216(r21)
	storeli.w r4, -208(r30)                 # 4-byte Folded Spill
	loads.w r4, 112(r21)
	storeli.w r22, -296(r30)                # 4-byte Folded Spill
	loads.w r22, 220(r21)
	storeli.w r4, -340(r30)                 # 4-byte Folded Spill
	loads.w r4, 116(r21)
	storeli.w r22, -292(r30)                # 4-byte Folded Spill
	loads.w r22, 224(r21)
	storeli.w r4, -204(r30)                 # 4-byte Folded Spill
	loads.w r4, 120(r21)
	storeli.w r22, -288(r30)                # 4-byte Folded Spill
	loads.w r22, 228(r21)
	storeli.w r4, -336(r30)                 # 4-byte Folded Spill
	loads.w r4, 124(r21)
	storeli.w r22, -284(r30)                # 4-byte Folded Spill
	loads.w r22, 232(r21)
	storeli.w r4, -200(r30)                 # 4-byte Folded Spill
	loads.w r4, 128(r21)
	storeli.w r22, -280(r30)                # 4-byte Folded Spill
	loads.w r22, 236(r21)
	storeli.w r4, -332(r30)                 # 4-byte Folded Spill
	loads.w r4, 132(r21)
	storeli.w r22, -276(r30)                # 4-byte Folded Spill
	loads.w r22, 240(r21)
	storeli.w r4, -196(r30)                 # 4-byte Folded Spill
	loads.w r4, 136(r21)
	storeli.w r22, -272(r30)                # 4-byte Folded Spill
	loads.w r22, 244(r21)
	storeli.w r4, -328(r30)                 # 4-byte Folded Spill
	loads.w r4, 140(r21)
	storeli.w r22, -268(r30)                # 4-byte Folded Spill
	loads.w r22, 248(r21)
	storeli.w r4, -192(r30)                 # 4-byte Folded Spill
	loads.w r4, 144(r21)
	storeli.w r22, -264(r30)                # 4-byte Folded Spill
	loads.w r22, 252(r21)
	storeli.w r4, -324(r30)                 # 4-byte Folded Spill
	loads.w r4, 148(r21)
	storeli.w r22, -260(r30)                # 4-byte Folded Spill
	storeli.w r4, -188(r30)                 # 4-byte Folded Spill
	loads.w r4, 152(r21)
	storeli.w r4, -320(r30)                 # 4-byte Folded Spill
	loads.w r4, 156(r21)
	storeli.w r4, -184(r30)                 # 4-byte Folded Spill
	loads.w r4, 160(r21)
	storeli.w r4, -316(r30)                 # 4-byte Folded Spill
	loads.w r4, 164(r21)
	storeli.w r4, -180(r30)                 # 4-byte Folded Spill
	loads.w r4, 168(r21)
	storeli.w r4, -176(r30)                 # 4-byte Folded Spill
	loads.w r4, 172(r21)
	storeli.w r4, -344(r30)                 # 4-byte Folded Spill
	loads.w r4, 176(r21)
	storeli.w r4, -172(r30)                 # 4-byte Folded Spill
	loads.w r4, 180(r21)
	bneq r23, zero, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=1
	slli r23, r1, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r24, r3, 9
	srli r26, r1, 23
	srli r22, r3, 23
	seteq r23, r23, zero
	seteq r24, r24, zero
	andi r26, r26, 255
	andi r22, r22, 255
	setlti r22, r22, 255
	setlti r26, r26, 255
	or r23, r26, r23
	or r22, r22, r24
	and r22, r22, r23
	bneq r22, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r25, 523264
.LBB0_34:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r3, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r25, 0
.LBB0_36:                               #   in Loop: Header=BB0_3 Depth=1
	addli r26, r5, 0
	storeli.w r2, -356(r30)                 # 4-byte Folded Spill
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r25
	setle.f r22, r25, zero
	addli r5, r8, 0
	storeli.w r28, -168(r30)                # 4-byte Folded Spill
	and r3, r22, r3
	bneq r3, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r25, 0
.LBB0_40:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r22, r20, r1
	addli r3, r1, 0
	addli r2, r7, 0
	addli r8, r6, 0
	storeli.w r4, -152(r30)                 # 4-byte Folded Spill
	bneq r22, zero, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r20, 0
.LBB0_42:                               #   in Loop: Header=BB0_3 Depth=1
	slli r22, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r23, r1, 9
	srli r24, r20, 23
	srli r25, r1, 23
	loadli.w r4,  -360(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -368(r30)                 # 4-byte Folded Reload
	seteq r22, r22, zero
	seteq r23, r23, zero
	andi r24, r24, 255
	andi r25, r25, 255
	setlti r24, r24, 255
	setlti r25, r25, 255
	or r22, r24, r22
	or r23, r25, r23
	and r22, r23, r22
	beq r22, zero, .LBB0_546
# %bb.43:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r25,  -348(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_547
.LBB0_44:                               #   in Loop: Header=BB0_3 Depth=1
	beq r20, zero, .LBB0_46
.LBB0_45:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
.LBB0_46:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r3
	setle.f r22, r3, zero
	loadli.w r6,  -364(r30)                 # 4-byte Folded Reload
	and r1, r22, r1
	bneq r1, zero, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r3, 0
.LBB0_48:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r19, r20
	addli r1, r20, 0
	bneq r3, zero, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r19, 0
.LBB0_50:                               #   in Loop: Header=BB0_3 Depth=1
	slli r3, r19, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r22, r20, 9
	srli r23, r19, 23
	srli r24, r20, 23
	seteq r3, r3, zero
	seteq r22, r22, zero
	andi r23, r23, 255
	andi r24, r24, 255
	setlti r23, r23, 255
	setlti r24, r24, 255
	or r3, r23, r3
	or r22, r24, r22
	and r3, r22, r3
	beq r3, zero, .LBB0_548
# %bb.51:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r24,  -332(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_549
.LBB0_52:                               #   in Loop: Header=BB0_3 Depth=1
	beq r19, zero, .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r20, 0
.LBB0_54:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r20, r1, zero
	and r3, r20, r3
	bneq r3, zero, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
.LBB0_56:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r18, r19
	addli r1, r19, 0
	bneq r3, zero, .LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r18, 0
.LBB0_58:                               #   in Loop: Header=BB0_3 Depth=1
	slli r3, r18, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r20, r19, 9
	srli r22, r18, 23
	srli r23, r19, 23
	seteq r3, r3, zero
	seteq r20, r20, zero
	andi r22, r22, 255
	andi r23, r23, 255
	setlti r22, r22, 255
	setlti r23, r23, 255
	or r3, r22, r3
	or r20, r23, r20
	and r3, r20, r3
	bneq r3, zero, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_60:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r28,  -324(r30)                # 4-byte Folded Reload
	loadli.w r23,  -352(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
.LBB0_62:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r19, 0
.LBB0_64:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r19, r1, zero
	and r3, r19, r3
	bneq r3, zero, .LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
.LBB0_66:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r17, r18
	addli r1, r18, 0
	bneq r3, zero, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r17, 0
.LBB0_68:                               #   in Loop: Header=BB0_3 Depth=1
	slli r3, r17, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r19, r18, 9
	srli r20, r17, 23
	srli r22, r18, 23
	seteq r3, r3, zero
	seteq r19, r19, zero
	andi r20, r20, 255
	andi r22, r22, 255
	setlti r20, r20, 255
	setlti r22, r22, 255
	or r3, r20, r3
	or r19, r22, r19
	and r3, r19, r3
	beq r3, zero, .LBB0_550
# %bb.69:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r22,  -328(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r18, zero, .LBB0_551
.LBB0_70:                               #   in Loop: Header=BB0_3 Depth=1
	beq r17, zero, .LBB0_72
.LBB0_71:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r18, 0
.LBB0_72:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r18, r1, zero
	and r3, r18, r3
	bneq r3, zero, .LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
.LBB0_74:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r16, r17
	addli r1, r17, 0
	bneq r3, zero, .LBB0_76
# %bb.75:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r16, 0
.LBB0_76:                               #   in Loop: Header=BB0_3 Depth=1
	slli r3, r16, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r18, r17, 9
	srli r19, r16, 23
	srli r20, r17, 23
	seteq r3, r3, zero
	seteq r18, r18, zero
	andi r19, r19, 255
	andi r20, r20, 255
	setlti r19, r19, 255
	setlti r20, r20, 255
	or r3, r19, r3
	or r18, r20, r18
	and r3, r18, r3
	beq r3, zero, .LBB0_552
# %bb.77:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r17, zero, .LBB0_553
.LBB0_78:                               #   in Loop: Header=BB0_3 Depth=1
	beq r16, zero, .LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r17, 0
.LBB0_80:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r17, r1, zero
	and r3, r17, r3
	bneq r3, zero, .LBB0_82
# %bb.81:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r1, 0
.LBB0_82:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r15, r16
	addli r1, r16, 0
	bneq r3, zero, .LBB0_84
# %bb.83:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r15, 0
.LBB0_84:                               #   in Loop: Header=BB0_3 Depth=1
	slli r3, r15, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r17, r16, 9
	srli r18, r15, 23
	srli r19, r16, 23
	seteq r3, r3, zero
	seteq r17, r17, zero
	andi r18, r18, 255
	andi r19, r19, 255
	setlti r18, r18, 255
	setlti r19, r19, 255
	or r3, r18, r3
	or r17, r19, r17
	and r3, r17, r3
	beq r3, zero, .LBB0_554
# %bb.85:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r20,  -304(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_555
.LBB0_86:                               #   in Loop: Header=BB0_3 Depth=1
	beq r15, zero, .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r16, 0
.LBB0_88:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r16, r1, zero
	and r3, r16, r3
	bneq r3, zero, .LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
.LBB0_90:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r14, r15
	addli r1, r15, 0
	bneq r3, zero, .LBB0_92
# %bb.91:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
.LBB0_92:                               #   in Loop: Header=BB0_3 Depth=1
	slli r3, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r16, r15, 9
	srli r17, r14, 23
	srli r18, r15, 23
	seteq r3, r3, zero
	seteq r16, r16, zero
	andi r17, r17, 255
	andi r18, r18, 255
	setlti r17, r17, 255
	setlti r18, r18, 255
	or r3, r17, r3
	or r16, r18, r16
	and r3, r16, r3
	beq r3, zero, .LBB0_556
# %bb.93:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r19,  -300(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_557
.LBB0_94:                               #   in Loop: Header=BB0_3 Depth=1
	beq r14, zero, .LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r15, 0
.LBB0_96:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r15, r1, zero
	and r3, r15, r3
	bneq r3, zero, .LBB0_98
# %bb.97:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
.LBB0_98:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r13, r14
	addli r1, r14, 0
	bneq r3, zero, .LBB0_100
# %bb.99:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r13, 0
.LBB0_100:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r13, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r15, r14, 9
	srli r16, r13, 23
	srli r17, r14, 23
	seteq r3, r3, zero
	seteq r15, r15, zero
	andi r16, r16, 255
	andi r17, r17, 255
	setlti r16, r16, 255
	setlti r17, r17, 255
	or r3, r16, r3
	or r15, r17, r15
	and r3, r15, r3
	beq r3, zero, .LBB0_558
# %bb.101:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r18,  -296(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_559
.LBB0_102:                              #   in Loop: Header=BB0_3 Depth=1
	beq r13, zero, .LBB0_104
.LBB0_103:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r14, 0
.LBB0_104:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r14, r1, zero
	and r3, r14, r3
	bneq r3, zero, .LBB0_106
# %bb.105:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
.LBB0_106:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r12, r13
	addli r1, r13, 0
	bneq r3, zero, .LBB0_108
# %bb.107:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_108:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r14, r13, 9
	srli r15, r12, 23
	srli r16, r13, 23
	seteq r3, r3, zero
	seteq r14, r14, zero
	andi r15, r15, 255
	andi r16, r16, 255
	setlti r15, r15, 255
	setlti r16, r16, 255
	or r3, r15, r3
	or r14, r16, r14
	and r3, r14, r3
	beq r3, zero, .LBB0_560
# %bb.109:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r17,  -292(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_561
.LBB0_110:                              #   in Loop: Header=BB0_3 Depth=1
	beq r12, zero, .LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r13, 0
.LBB0_112:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r13, r1, zero
	and r3, r13, r3
	bneq r3, zero, .LBB0_114
# %bb.113:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_114:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r11, r12
	addli r1, r12, 0
	bneq r3, zero, .LBB0_116
# %bb.115:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r11, 0
.LBB0_116:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r13, r12, 9
	srli r14, r11, 23
	srli r15, r12, 23
	seteq r3, r3, zero
	seteq r13, r13, zero
	andi r14, r14, 255
	andi r15, r15, 255
	setlti r14, r14, 255
	setlti r15, r15, 255
	or r3, r14, r3
	or r13, r15, r13
	and r3, r13, r3
	beq r3, zero, .LBB0_562
# %bb.117:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r16,  -288(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_563
.LBB0_118:                              #   in Loop: Header=BB0_3 Depth=1
	beq r11, zero, .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r12, 0
.LBB0_120:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r12, r1, zero
	and r3, r12, r3
	bneq r3, zero, .LBB0_122
# %bb.121:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_122:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r10, r11
	addli r1, r11, 0
	bneq r3, zero, .LBB0_124
# %bb.123:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_124:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r10, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r12, r11, 9
	srli r13, r10, 23
	srli r14, r11, 23
	seteq r3, r3, zero
	seteq r12, r12, zero
	andi r13, r13, 255
	andi r14, r14, 255
	setlti r13, r13, 255
	setlti r14, r14, 255
	or r3, r13, r3
	or r12, r14, r12
	and r3, r12, r3
	beq r3, zero, .LBB0_564
# %bb.125:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r15,  -284(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_565
.LBB0_126:                              #   in Loop: Header=BB0_3 Depth=1
	beq r10, zero, .LBB0_128
.LBB0_127:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r11, 0
.LBB0_128:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r11, r1, zero
	and r3, r11, r3
	bneq r3, zero, .LBB0_130
# %bb.129:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_130:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r9, r10
	addli r1, r10, 0
	bneq r3, zero, .LBB0_132
# %bb.131:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r9, 0
.LBB0_132:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r11, r10, 9
	srli r12, r9, 23
	srli r13, r10, 23
	seteq r3, r3, zero
	seteq r11, r11, zero
	andi r12, r12, 255
	andi r13, r13, 255
	setlti r12, r12, 255
	setlti r13, r13, 255
	or r3, r12, r3
	or r11, r13, r11
	and r3, r11, r3
	beq r3, zero, .LBB0_566
# %bb.133:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r14,  -280(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_567
.LBB0_134:                              #   in Loop: Header=BB0_3 Depth=1
	beq r9, zero, .LBB0_136
.LBB0_135:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r10, 0
.LBB0_136:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r10, r1, zero
	and r3, r10, r3
	bneq r3, zero, .LBB0_138
# %bb.137:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_138:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r8, r9
	addli r1, r9, 0
	bneq r3, zero, .LBB0_140
# %bb.139:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_140:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r10, r9, 9
	srli r11, r8, 23
	srli r12, r9, 23
	seteq r3, r3, zero
	seteq r10, r10, zero
	andi r11, r11, 255
	andi r12, r12, 255
	setlti r11, r11, 255
	setlti r12, r12, 255
	or r3, r11, r3
	or r10, r12, r10
	and r3, r10, r3
	bneq r3, zero, .LBB0_142
# %bb.141:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_142:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r13,  -276(r30)                # 4-byte Folded Reload
	loadli.w r12,  -316(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_144
# %bb.143:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_144:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_146
# %bb.145:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r9, 0
.LBB0_146:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r9, r1, zero
	and r3, r9, r3
	bneq r3, zero, .LBB0_148
# %bb.147:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
.LBB0_148:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r7, r8
	addli r1, r8, 0
	bneq r3, zero, .LBB0_150
# %bb.149:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r7, 0
.LBB0_150:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r7, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r9, r8, 9
	srli r10, r7, 23
	srli r11, r8, 23
	seteq r3, r3, zero
	seteq r9, r9, zero
	andi r10, r10, 255
	andi r11, r11, 255
	setlti r10, r10, 255
	setlti r11, r11, 255
	or r3, r10, r3
	or r9, r11, r9
	and r3, r9, r3
	beq r3, zero, .LBB0_568
# %bb.151:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r11,  -320(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_569
.LBB0_152:                              #   in Loop: Header=BB0_3 Depth=1
	beq r7, zero, .LBB0_154
.LBB0_153:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r8, 0
.LBB0_154:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r8, r1, zero
	and r3, r8, r3
	bneq r3, zero, .LBB0_156
# %bb.155:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
.LBB0_156:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r6, r7
	addli r1, r7, 0
	bneq r3, zero, .LBB0_158
# %bb.157:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r6, 0
.LBB0_158:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r8, r7, 9
	srli r9, r6, 23
	srli r10, r7, 23
	seteq r3, r3, zero
	seteq r8, r8, zero
	andi r9, r9, 255
	andi r10, r10, 255
	setlti r9, r9, 255
	setlti r10, r10, 255
	or r3, r9, r3
	or r8, r10, r8
	and r3, r8, r3
	beq r3, zero, .LBB0_570
# %bb.159:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r10,  -336(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_571
.LBB0_160:                              #   in Loop: Header=BB0_3 Depth=1
	beq r6, zero, .LBB0_162
.LBB0_161:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r7, 0
.LBB0_162:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r7, r1, zero
	and r3, r7, r3
	bneq r3, zero, .LBB0_164
# %bb.163:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_164:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r5, r6
	addli r1, r6, 0
	bneq r3, zero, .LBB0_166
# %bb.165:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
.LBB0_166:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r7, r6, 9
	srli r8, r5, 23
	srli r9, r6, 23
	seteq r3, r3, zero
	seteq r7, r7, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r3, r8, r3
	or r7, r9, r7
	and r3, r7, r3
	beq r3, zero, .LBB0_572
# %bb.167:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r9,  -340(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_573
.LBB0_168:                              #   in Loop: Header=BB0_3 Depth=1
	beq r5, zero, .LBB0_170
.LBB0_169:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r6, 0
.LBB0_170:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r6, r1, zero
	and r3, r6, r3
	bneq r3, zero, .LBB0_172
# %bb.171:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_172:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r4, r5
	addli r1, r5, 0
	bneq r3, zero, .LBB0_174
# %bb.173:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_174:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r5, 9
	srli r7, r4, 23
	srli r8, r5, 23
	seteq r3, r3, zero
	seteq r6, r6, zero
	andi r7, r7, 255
	andi r8, r8, 255
	setlti r7, r7, 255
	setlti r8, r8, 255
	or r3, r7, r3
	or r6, r8, r6
	and r3, r6, r3
	beq r3, zero, .LBB0_574
# %bb.175:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r8,  -312(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_575
.LBB0_176:                              #   in Loop: Header=BB0_3 Depth=1
	beq r4, zero, .LBB0_178
.LBB0_177:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r5, 0
.LBB0_178:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r5, r1, zero
	and r3, r5, r3
	bneq r3, zero, .LBB0_180
# %bb.179:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r1, 0
.LBB0_180:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r2, r4
	addli r1, r4, 0
	bneq r3, zero, .LBB0_182
# %bb.181:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_182:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r2, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r4, 9
	srli r6, r2, 23
	srli r7, r4, 23
	seteq r3, r3, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r3, r6, r3
	or r5, r7, r5
	and r3, r5, r3
	beq r3, zero, .LBB0_576
# %bb.183:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -256(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r4, zero, .LBB0_577
.LBB0_184:                              #   in Loop: Header=BB0_3 Depth=1
	beq r2, zero, .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r4, 0
.LBB0_186:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r1
	setle.f r4, r1, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_188
# %bb.187:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_188:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r26, r2
	addli r1, r2, 0
	bneq r3, zero, .LBB0_190
# %bb.189:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r26, 0
.LBB0_190:                              #   in Loop: Header=BB0_3 Depth=1
	slli r3, r26, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r2, 9
	srli r5, r26, 23
	srli r6, r2, 23
	seteq r3, r3, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r6, r6, 255
	setlti r5, r5, 255
	setlti r6, r6, 255
	or r3, r5, r3
	or r4, r6, r4
	and r3, r4, r3
	bneq r3, zero, .LBB0_192
# %bb.191:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_192:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r6,  -252(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_194
# %bb.193:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_194:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_196
# %bb.195:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r2, 0
.LBB0_196:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_198
# %bb.197:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
.LBB0_198:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r26
	addli r1, r26, 0
	bneq r2, zero, .LBB0_200
# %bb.199:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_200:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_578
# %bb.201:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r26, zero, .LBB0_579
.LBB0_202:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_204
.LBB0_203:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r26, 0
.LBB0_204:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_206
# %bb.205:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_206:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r23, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_208
# %bb.207:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r23, 0
.LBB0_208:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r23, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r23, 23
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
	beq r2, zero, .LBB0_580
# %bb.209:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r26, zero, .LBB0_581
.LBB0_210:                              #   in Loop: Header=BB0_3 Depth=1
	beq r23, zero, .LBB0_212
.LBB0_211:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r23, r26, 0
.LBB0_212:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_214
# %bb.213:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r23, r1, 0
.LBB0_214:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r23
	addli r1, r23, 0
	bneq r2, zero, .LBB0_216
# %bb.215:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_216:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r23, 9
	srli r4, r4, 23
	srli r5, r23, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_582
# %bb.217:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r23, zero, .LBB0_583
.LBB0_218:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_220
.LBB0_219:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r23, 0
.LBB0_220:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_222
# %bb.221:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_222:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r25, r5
	loadli.w r23,  -356(r30)                # 4-byte Folded Reload
	addli r1, r5, 0
	bneq r2, zero, .LBB0_224
# %bb.223:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r25, 0
.LBB0_224:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_584
# %bb.225:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r26, zero, .LBB0_585
.LBB0_226:                              #   in Loop: Header=BB0_3 Depth=1
	beq r25, zero, .LBB0_228
.LBB0_227:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r26, 0
.LBB0_228:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_230
# %bb.229:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
.LBB0_230:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r25
	addli r1, r25, 0
	addli r26, r23, 0
	bneq r2, zero, .LBB0_232
# %bb.231:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_232:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_586
# %bb.233:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r25, zero, .LBB0_587
.LBB0_234:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_236
.LBB0_235:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r25, 0
.LBB0_236:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_238
# %bb.237:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_238:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r9, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_240
# %bb.239:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r9, 0
.LBB0_240:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r9, 23
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
	beq r2, zero, .LBB0_588
# %bb.241:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_589
.LBB0_242:                              #   in Loop: Header=BB0_3 Depth=1
	beq r9, zero, .LBB0_244
.LBB0_243:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r25, 0
.LBB0_244:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_246
# %bb.245:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_246:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r9
	addli r1, r9, 0
	bneq r2, zero, .LBB0_248
# %bb.247:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_248:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_590
# %bb.249:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r9, zero, .LBB0_591
.LBB0_250:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_252
.LBB0_251:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r9, 0
.LBB0_252:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_254
# %bb.253:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_254:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r10, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_256
# %bb.255:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_256:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r10, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r10, 23
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
	beq r2, zero, .LBB0_592
# %bb.257:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_593
.LBB0_258:                              #   in Loop: Header=BB0_3 Depth=1
	beq r10, zero, .LBB0_260
.LBB0_259:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r9, 0
.LBB0_260:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_262
# %bb.261:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_262:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r10
	addli r1, r10, 0
	bneq r2, zero, .LBB0_264
# %bb.263:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_264:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_594
# %bb.265:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r10, zero, .LBB0_595
.LBB0_266:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_268
.LBB0_267:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r10, 0
.LBB0_268:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_270
# %bb.269:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_270:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r24, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_272
# %bb.271:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r24, 0
.LBB0_272:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r24, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r24, 23
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
	beq r2, zero, .LBB0_596
# %bb.273:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_597
.LBB0_274:                              #   in Loop: Header=BB0_3 Depth=1
	beq r24, zero, .LBB0_276
.LBB0_275:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r10, 0
.LBB0_276:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_278
# %bb.277:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r1, 0
.LBB0_278:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r24
	addli r1, r24, 0
	bneq r2, zero, .LBB0_280
# %bb.279:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_280:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r24, 9
	srli r4, r4, 23
	srli r5, r24, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_598
# %bb.281:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r24, zero, .LBB0_599
.LBB0_282:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_284
.LBB0_283:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r24, 0
.LBB0_284:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_286
# %bb.285:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_286:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r22, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_288
# %bb.287:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r22, 0
.LBB0_288:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r22, 23
	addli r24, r5, 0
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
	beq r2, zero, .LBB0_600
# %bb.289:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r24, zero, .LBB0_601
.LBB0_290:                              #   in Loop: Header=BB0_3 Depth=1
	beq r22, zero, .LBB0_292
.LBB0_291:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r24, 0
.LBB0_292:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_294
# %bb.293:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
.LBB0_294:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r22
	addli r1, r22, 0
	bneq r2, zero, .LBB0_296
# %bb.295:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_296:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_602
# %bb.297:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r22, zero, .LBB0_603
.LBB0_298:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_300
.LBB0_299:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r22, 0
.LBB0_300:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_302
# %bb.301:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_302:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r28, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_304
# %bb.303:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r28, 0
.LBB0_304:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r28, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r28, 23
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
	beq r2, zero, .LBB0_604
# %bb.305:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_605
.LBB0_306:                              #   in Loop: Header=BB0_3 Depth=1
	beq r28, zero, .LBB0_308
.LBB0_307:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r22, 0
.LBB0_308:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_310
# %bb.309:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
.LBB0_310:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r28
	loadli.w r22,  -344(r30)                # 4-byte Folded Reload
	addli r1, r28, 0
	bneq r2, zero, .LBB0_312
# %bb.311:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_312:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_606
# %bb.313:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r28, zero, .LBB0_607
.LBB0_314:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_316
.LBB0_315:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r28, 0
.LBB0_316:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_318
# %bb.317:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_318:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r11, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_320
# %bb.319:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r11, 0
.LBB0_320:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r11, 23
	addli r23, r5, 0
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
	beq r2, zero, .LBB0_608
# %bb.321:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r23, zero, .LBB0_609
.LBB0_322:                              #   in Loop: Header=BB0_3 Depth=1
	beq r11, zero, .LBB0_324
.LBB0_323:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r23, 0
.LBB0_324:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_326
# %bb.325:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_326:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r11
	addli r1, r11, 0
	bneq r2, zero, .LBB0_328
# %bb.327:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_328:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_610
# %bb.329:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r11, zero, .LBB0_611
.LBB0_330:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_332
.LBB0_331:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r11, 0
.LBB0_332:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_334
# %bb.333:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_334:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r12, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_336
# %bb.335:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_336:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r12, 23
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
	beq r2, zero, .LBB0_612
# %bb.337:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_613
.LBB0_338:                              #   in Loop: Header=BB0_3 Depth=1
	beq r12, zero, .LBB0_340
.LBB0_339:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r11, 0
.LBB0_340:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r28,  -308(r30)                # 4-byte Folded Reload
	and r2, r3, r2
	bneq r2, zero, .LBB0_342
# %bb.341:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_342:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r12
	addli r1, r12, 0
	bneq r2, zero, .LBB0_344
# %bb.343:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_344:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_614
# %bb.345:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_615
.LBB0_346:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_348
.LBB0_347:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r12, 0
.LBB0_348:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_350
# %bb.349:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_350:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_352
# %bb.351:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_352:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r4, 23
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
	bneq r2, zero, .LBB0_354
# %bb.353:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_354:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_356
# %bb.355:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_356:                              #   in Loop: Header=BB0_3 Depth=1
	addli r2, r12, 0
	loadli.w r12,  -272(r30)                # 4-byte Folded Reload
	loadli.w r5,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_358
# %bb.357:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r2, 0
.LBB0_358:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r11,  -268(r30)                # 4-byte Folded Reload
	and r2, r3, r2
	bneq r2, zero, .LBB0_360
# %bb.359:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_360:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r22, r5
	loadli.w r10,  -264(r30)                # 4-byte Folded Reload
	addli r1, r5, 0
	bneq r2, zero, .LBB0_362
# %bb.361:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r22, 0
.LBB0_362:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r22, 23
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
	beq r2, zero, .LBB0_616
# %bb.363:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_617
.LBB0_364:                              #   in Loop: Header=BB0_3 Depth=1
	beq r22, zero, .LBB0_366
.LBB0_365:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r9, 0
.LBB0_366:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_368
# %bb.367:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
.LBB0_368:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r22
	addli r1, r22, 0
	addli r9, r10, 0
	bneq r2, zero, .LBB0_370
# %bb.369:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_370:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r22, 9
	srli r4, r4, 23
	srli r5, r22, 23
	addli r10, r11, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_372
# %bb.371:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_372:                              #   in Loop: Header=BB0_3 Depth=1
	addli r11, r12, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_374
# %bb.373:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
.LBB0_374:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r5,  -172(r30)                 # 4-byte Folded Reload
	addli r12, r13, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_376
# %bb.375:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r22, 0
.LBB0_376:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	addli r13, r14, 0
	and r2, r3, r2
	bneq r2, zero, .LBB0_378
# %bb.377:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_378:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r4,  -152(r30)                 # 4-byte Folded Reload
	addli r1, r5, 0
	addli r14, r15, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r5
	bneq r2, zero, .LBB0_380
# %bb.379:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_380:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r4, 23
	addli r25, r5, 0
	srli r5, r5, 23
	addli r15, r16, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_382
# %bb.381:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_382:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r4,  -164(r30)                 # 4-byte Folded Reload
	addli r16, r17, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_384
# %bb.383:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
.LBB0_384:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	loadli.w r2,  -152(r30)                 # 4-byte Folded Reload
	addli r17, r18, 0
	beq r2, zero, .LBB0_386
# %bb.385:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	storeli.w r25, -152(r30)                # 4-byte Folded Spill
.LBB0_386:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r25,  -152(r30)                # 4-byte Folded Reload
	addli r18, r19, 0
	and r2, r3, r2
	bneq r2, zero, .LBB0_388
# %bb.387:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
.LBB0_388:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r25
	addli r1, r25, 0
	addli r19, r20, 0
	bneq r2, zero, .LBB0_390
# %bb.389:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_390:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r25, 9
	srli r4, r4, 23
	srli r5, r25, 23
	addli r20, r28, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_618
# %bb.391:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r25, zero, .LBB0_619
.LBB0_392:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_394
.LBB0_393:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r25, 0
.LBB0_394:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_396
# %bb.395:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_396:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r3,  -168(r30)                 # 4-byte Folded Reload
	loadli.w r28,  -376(r30)                # 4-byte Folded Reload
	addli r1, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r3, r5
	bneq r2, zero, .LBB0_398
# %bb.397:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_398:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r3, 9
	addli r4, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	addli r25, r5, 0
	srli r5, r5, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	srli r4, r4, 23
	andi r5, r5, 255
	andi r4, r4, 255
	setlti r5, r5, 255
	setlti r4, r4, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_620
# %bb.399:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_621
.LBB0_400:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r3,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r3, zero, .LBB0_402
.LBB0_401:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r25, 0
.LBB0_402:                              #   in Loop: Header=BB0_3 Depth=1
	addli r5, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	addli r3, r5, 0
	bneq r2, zero, .LBB0_404
# %bb.403:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
.LBB0_404:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r3
	addli r1, r3, 0
	addli r25, r28, 0
	bneq r2, zero, .LBB0_406
# %bb.405:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_406:                              #   in Loop: Header=BB0_3 Depth=1
	addli r5, r3, 0
	slli r2, r4, 9
	srli r4, r4, 23
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	seteq r2, r2, zero
	addli r28, r5, 0
	srli r5, r5, 23
	andi r4, r4, 255
	seteq r3, r3, zero
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_622
# %bb.407:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r28, zero, .LBB0_623
.LBB0_408:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_410
.LBB0_409:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r28, 0
.LBB0_410:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_412
# %bb.411:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_412:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r8, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_414
# %bb.413:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_414:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r8, 23
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
	beq r2, zero, .LBB0_624
# %bb.415:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_625
.LBB0_416:                              #   in Loop: Header=BB0_3 Depth=1
	beq r8, zero, .LBB0_418
.LBB0_417:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r28, 0
.LBB0_418:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_420
# %bb.419:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
.LBB0_420:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r8
	addli r1, r8, 0
	bneq r2, zero, .LBB0_422
# %bb.421:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_422:                              #   in Loop: Header=BB0_3 Depth=1
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
	bneq r2, zero, .LBB0_424
# %bb.423:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_424:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r24,  -372(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_426
# %bb.425:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
.LBB0_426:                              #   in Loop: Header=BB0_3 Depth=1
	addli r2, r8, 0
	loadli.w r8,  40(r30)
	loadli.w r5,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_428
# %bb.427:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r2, 0
.LBB0_428:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r22,  36(r30)
	and r2, r3, r2
	bneq r2, zero, .LBB0_430
# %bb.429:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_430:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r20, r5
	loadli.w r23,  -380(r30)                # 4-byte Folded Reload
	addli r1, r5, 0
	bneq r2, zero, .LBB0_432
# %bb.431:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r20, 0
.LBB0_432:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r20, 23
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
	beq r2, zero, .LBB0_626
# %bb.433:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r28, zero, .LBB0_627
.LBB0_434:                              #   in Loop: Header=BB0_3 Depth=1
	beq r20, zero, .LBB0_436
.LBB0_435:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r28, 0
.LBB0_436:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_438
# %bb.437:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
.LBB0_438:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r19, r20
	addli r1, r20, 0
	addli r28, r23, 0
	bneq r2, zero, .LBB0_440
# %bb.439:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r19, 0
.LBB0_440:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r19, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r20, 9
	srli r4, r19, 23
	srli r5, r20, 23
	addli r23, r22, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_628
# %bb.441:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r8, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_629
.LBB0_442:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r8,  -260(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_444
.LBB0_443:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r20, 0
.LBB0_444:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_446
# %bb.445:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
.LBB0_446:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r18, r19
	addli r1, r19, 0
	bneq r2, zero, .LBB0_448
# %bb.447:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r18, 0
.LBB0_448:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r18, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r19, 9
	srli r4, r18, 23
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
	beq r2, zero, .LBB0_630
# %bb.449:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r19, zero, .LBB0_631
.LBB0_450:                              #   in Loop: Header=BB0_3 Depth=1
	beq r18, zero, .LBB0_452
.LBB0_451:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r19, 0
.LBB0_452:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_454
# %bb.453:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
.LBB0_454:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r17, r18
	addli r1, r18, 0
	bneq r2, zero, .LBB0_456
# %bb.455:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r17, 0
.LBB0_456:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r17, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r18, 9
	srli r4, r17, 23
	srli r5, r18, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_632
# %bb.457:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r18, zero, .LBB0_633
.LBB0_458:                              #   in Loop: Header=BB0_3 Depth=1
	beq r17, zero, .LBB0_460
.LBB0_459:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r18, 0
.LBB0_460:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_462
# %bb.461:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
.LBB0_462:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r16, r17
	addli r1, r17, 0
	bneq r2, zero, .LBB0_464
# %bb.463:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r16, 0
.LBB0_464:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r16, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r17, 9
	srli r4, r16, 23
	srli r5, r17, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_634
# %bb.465:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r17, zero, .LBB0_635
.LBB0_466:                              #   in Loop: Header=BB0_3 Depth=1
	beq r16, zero, .LBB0_468
.LBB0_467:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r17, 0
.LBB0_468:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_470
# %bb.469:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r1, 0
.LBB0_470:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r15, r16
	addli r1, r16, 0
	bneq r2, zero, .LBB0_472
# %bb.471:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r15, 0
.LBB0_472:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r15, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r16, 9
	srli r4, r15, 23
	srli r5, r16, 23
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_636
# %bb.473:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r16, zero, .LBB0_637
.LBB0_474:                              #   in Loop: Header=BB0_3 Depth=1
	beq r15, zero, .LBB0_476
.LBB0_475:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r16, 0
.LBB0_476:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_478
# %bb.477:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
.LBB0_478:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r14, r15
	addli r1, r15, 0
	bneq r2, zero, .LBB0_480
# %bb.479:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
.LBB0_480:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r15, 9
	srli r4, r14, 23
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
	beq r2, zero, .LBB0_638
# %bb.481:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r15, zero, .LBB0_639
.LBB0_482:                              #   in Loop: Header=BB0_3 Depth=1
	beq r14, zero, .LBB0_484
.LBB0_483:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r15, 0
.LBB0_484:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_486
# %bb.485:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
.LBB0_486:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r13, r14
	addli r1, r14, 0
	bneq r2, zero, .LBB0_488
# %bb.487:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r13, 0
.LBB0_488:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_640
# %bb.489:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r14, zero, .LBB0_641
.LBB0_490:                              #   in Loop: Header=BB0_3 Depth=1
	beq r13, zero, .LBB0_492
.LBB0_491:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r14, 0
.LBB0_492:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_494
# %bb.493:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
.LBB0_494:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r12, r13
	addli r1, r13, 0
	bneq r2, zero, .LBB0_496
# %bb.495:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_496:                              #   in Loop: Header=BB0_3 Depth=1
	slli r2, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r13, 9
	srli r4, r12, 23
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
	beq r2, zero, .LBB0_642
# %bb.497:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r13, zero, .LBB0_643
.LBB0_498:                              #   in Loop: Header=BB0_3 Depth=1
	beq r12, zero, .LBB0_500
.LBB0_499:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r13, 0
.LBB0_500:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_502
# %bb.501:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_502:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r11, r12
	addli r1, r12, 0
	bneq r2, zero, .LBB0_504
# %bb.503:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r11, 0
.LBB0_504:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_644
# %bb.505:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r12, zero, .LBB0_645
.LBB0_506:                              #   in Loop: Header=BB0_3 Depth=1
	beq r11, zero, .LBB0_508
.LBB0_507:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r12, 0
.LBB0_508:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_510
# %bb.509:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_510:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r10, r11
	addli r1, r11, 0
	bneq r2, zero, .LBB0_512
# %bb.511:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_512:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_646
# %bb.513:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r11, zero, .LBB0_647
.LBB0_514:                              #   in Loop: Header=BB0_3 Depth=1
	beq r10, zero, .LBB0_516
.LBB0_515:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r11, 0
.LBB0_516:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_518
# %bb.517:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_518:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r9, r10
	addli r1, r10, 0
	bneq r2, zero, .LBB0_520
# %bb.519:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r9, 0
.LBB0_520:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_648
# %bb.521:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r10, zero, .LBB0_649
.LBB0_522:                              #   in Loop: Header=BB0_3 Depth=1
	beq r9, zero, .LBB0_524
.LBB0_523:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r10, 0
.LBB0_524:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_526
# %bb.525:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
.LBB0_526:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r8, r9
	addli r1, r9, 0
	bneq r2, zero, .LBB0_528
# %bb.527:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r8, 0
.LBB0_528:                              #   in Loop: Header=BB0_3 Depth=1
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
	beq r2, zero, .LBB0_650
# %bb.529:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r9, zero, .LBB0_651
.LBB0_530:                              #   in Loop: Header=BB0_3 Depth=1
	beq r8, zero, .LBB0_532
.LBB0_531:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r9, 0
.LBB0_532:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_534
.Ltmp4:
# %bb.533:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
.LBB0_534:                              #   in Loop: Header=BB0_3 Depth=1
	stores.w r8, 0(r21)
.LBB0_535:                              #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r25
	sync_group
	loads.w r1, 0(r21)
	.loc	1 51 19 is_stmt 1               # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:51:19
	sub.f.rn r2, r6, r1
	sub.f.rn r20, r7, r1
	.loc	1 52 26                         # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:52:26
	jal Unsupported
	addli r19, r2, 0
	addli r2, r20, 0
	jal Unsupported
.Ltmp5:
	.file	3 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	3 263 15                        # standard.py:263:15
	loadli.w r1,  -148(r30)                 # 4-byte Folded Reload
	addli r12, zero, 16
	blt.s r1, r12, .LBB0_539
.Ltmp6:
# %bb.536:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 0 15 is_stmt 0                # standard.py:0:15
	addli r1, zero, 0
	j .LBB0_540
.LBB0_537:                              #   in Loop: Header=BB0_3 Depth=1
	lui r1, 523264
	addli r3, r6, 0
.Ltmp7:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r6, zero, .LBB0_7
.LBB0_538:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r3, r1, 0
	addli r2, r7, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_8
	j .LBB0_9
.Ltmp8:
.LBB0_539:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r1, r19, r2
.LBB0_540:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 0 15 is_stmt 0                # standard.py:0:15
	loadli.w r3,  -224(r30)                 # 4-byte Folded Reload
	addli r10, zero, 1
	addli r11, r30, -64
	stores.w r1, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r25
	sync_group
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_2
# %bb.541:                              #   in Loop: Header=BB0_3 Depth=1
	loads.w r1, 0(r27)
	loads.w r4, 4(r27)
	loads.w r3, 8(r27)
	.loc	3 263 15                        # standard.py:263:15
	add.f.rn r1, r1, r4
	loads.w r4, 12(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 16(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 20(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 24(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 28(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 32(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 36(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 40(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 44(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 48(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 52(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 56(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 60(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 64(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 68(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 72(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 76(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 80(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 84(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 88(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 92(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 96(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 100(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 104(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 108(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 112(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 116(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 120(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 124(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 128(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 132(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 136(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 140(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 144(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 148(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 152(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 156(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 160(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 164(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 168(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 172(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 176(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 180(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 184(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 188(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 192(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 196(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 200(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 204(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 208(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 212(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 216(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 220(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 224(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 228(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 232(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 236(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 240(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 244(r27)
	add.f.rn r1, r1, r3
	loads.w r3, 248(r27)
	add.f.rn r1, r1, r4
	loads.w r4, 252(r27)
	add.f.rn r1, r1, r3
	add.f.rn r1, r1, r4
	stores.w r1, 0(r27)
	j .LBB0_2
.Ltmp9:
.LBB0_542:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 0 15                          # standard.py:0:15
	lui r2, 523264
.Ltmp10:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r3, zero, .LBB0_18
.LBB0_543:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r3, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_19
	j .LBB0_20
.LBB0_544:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_26
.LBB0_545:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_27
	j .LBB0_28
.LBB0_546:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r25,  -348(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_44
.LBB0_547:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_45
	j .LBB0_46
.LBB0_548:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r24,  -332(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_52
.LBB0_549:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_53
	j .LBB0_54
.LBB0_550:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r22,  -328(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_70
.LBB0_551:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_71
	j .LBB0_72
.LBB0_552:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_78
.LBB0_553:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_79
	j .LBB0_80
.LBB0_554:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r20,  -304(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r16, zero, .LBB0_86
.LBB0_555:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_87
	j .LBB0_88
.LBB0_556:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r19,  -300(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_94
.LBB0_557:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_95
	j .LBB0_96
.LBB0_558:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r18,  -296(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_102
.LBB0_559:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_103
	j .LBB0_104
.LBB0_560:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r17,  -292(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_110
.LBB0_561:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_111
	j .LBB0_112
.LBB0_562:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r16,  -288(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_118
.LBB0_563:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_119
	j .LBB0_120
.LBB0_564:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r15,  -284(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_126
.LBB0_565:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_127
	j .LBB0_128
.LBB0_566:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r14,  -280(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_134
.LBB0_567:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_135
	j .LBB0_136
.LBB0_568:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r11,  -320(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_152
.LBB0_569:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_153
	j .LBB0_154
.LBB0_570:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r10,  -336(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_160
.LBB0_571:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_161
	j .LBB0_162
.LBB0_572:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r9,  -340(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_168
.LBB0_573:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_169
	j .LBB0_170
.LBB0_574:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r8,  -312(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_176
.LBB0_575:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r4, zero, .LBB0_177
	j .LBB0_178
.LBB0_576:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r7,  -256(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r4, zero, .LBB0_184
.LBB0_577:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r2, zero, .LBB0_185
	j .LBB0_186
.LBB0_578:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_202
.LBB0_579:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
	loadli.w r5,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_203
	j .LBB0_204
.LBB0_580:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_210
.LBB0_581:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r23, zero, .LBB0_211
	j .LBB0_212
.LBB0_582:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r23, zero, .LBB0_218
.LBB0_583:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r23, r1, 0
	loadli.w r5,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_219
	j .LBB0_220
.LBB0_584:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_226
.LBB0_585:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_227
	j .LBB0_228
.LBB0_586:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_234
.LBB0_587:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
	loadli.w r5,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_235
	j .LBB0_236
.LBB0_588:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_242
.LBB0_589:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_243
	j .LBB0_244
.LBB0_590:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_250
.LBB0_591:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	loadli.w r5,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_251
	j .LBB0_252
.LBB0_592:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_258
.LBB0_593:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_259
	j .LBB0_260
.LBB0_594:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_266
.LBB0_595:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	loadli.w r5,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_267
	j .LBB0_268
.LBB0_596:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_274
.LBB0_597:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r24, zero, .LBB0_275
	j .LBB0_276
.LBB0_598:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r24, zero, .LBB0_282
.LBB0_599:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r1, 0
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_283
	j .LBB0_284
.LBB0_600:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r24, zero, .LBB0_290
.LBB0_601:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_291
	j .LBB0_292
.LBB0_602:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_298
.LBB0_603:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	loadli.w r5,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_299
	j .LBB0_300
.LBB0_604:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_306
.LBB0_605:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r28, zero, .LBB0_307
	j .LBB0_308
.LBB0_606:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_314
.LBB0_607:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
	loadli.w r5,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_315
	j .LBB0_316
.LBB0_608:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r23, zero, .LBB0_322
.LBB0_609:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r23, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_323
	j .LBB0_324
.LBB0_610:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_330
.LBB0_611:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	loadli.w r5,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_331
	j .LBB0_332
.LBB0_612:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_338
.LBB0_613:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_339
	j .LBB0_340
.LBB0_614:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_346
.LBB0_615:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	loadli.w r5,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_347
	j .LBB0_348
.LBB0_616:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_364
.LBB0_617:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_365
	j .LBB0_366
.LBB0_618:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_392
.LBB0_619:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
	loadli.w r5,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_393
	j .LBB0_394
.LBB0_620:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_400
.LBB0_621:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r1, 0
	loadli.w r3,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_401
	j .LBB0_402
.LBB0_622:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_408
.LBB0_623:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
	loadli.w r5,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_409
	j .LBB0_410
.LBB0_624:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_416
.LBB0_625:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_417
	j .LBB0_418
.LBB0_626:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r28, zero, .LBB0_434
.LBB0_627:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r28, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_435
	j .LBB0_436
.LBB0_628:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	addli r22, r8, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_442
.LBB0_629:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	loadli.w r8,  -260(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_443
	j .LBB0_444
.LBB0_630:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_450
.LBB0_631:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r18, zero, .LBB0_451
	j .LBB0_452
.LBB0_632:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_458
.LBB0_633:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_459
	j .LBB0_460
.LBB0_634:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_466
.LBB0_635:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_467
	j .LBB0_468
.LBB0_636:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r16, zero, .LBB0_474
.LBB0_637:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_475
	j .LBB0_476
.LBB0_638:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_482
.LBB0_639:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_483
	j .LBB0_484
.LBB0_640:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_490
.LBB0_641:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_491
	j .LBB0_492
.LBB0_642:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_498
.LBB0_643:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_499
	j .LBB0_500
.LBB0_644:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_506
.LBB0_645:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_507
	j .LBB0_508
.LBB0_646:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_514
.LBB0_647:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_515
	j .LBB0_516
.LBB0_648:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_522
.LBB0_649:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_523
	j .LBB0_524
.LBB0_650:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_530
.LBB0_651:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_531
	j .LBB0_532
.Ltmp11:
.LBB0_652:                              # %._crit_edge
	.loc	1 58 4 epilogue_begin is_stmt 1 # cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py:58:4
	addli sp, sp, 384
	mfence { lm, sm, gm }
	exit
.Ltmp12:
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
	.long	.Ltmp7-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.long	.Ltmp11-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp1-.Lfunc_begin0
	.long	.Ltmp2-.Lfunc_begin0
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	.Ltmp7-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.long	.Ltmp11-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges2:
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.long	.Ltmp9-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges3:
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.long	.Ltmp9-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"cgyaskb7hzkibac23zzeujqy3znfslpozlhiz3xuhzcy34yu77x5.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/smoke-small-v2/cache/inductor/gy" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=145
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 19.1.7 (b526e9ed77e93b92ce71f434d0bfd2c7ad245c37)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
