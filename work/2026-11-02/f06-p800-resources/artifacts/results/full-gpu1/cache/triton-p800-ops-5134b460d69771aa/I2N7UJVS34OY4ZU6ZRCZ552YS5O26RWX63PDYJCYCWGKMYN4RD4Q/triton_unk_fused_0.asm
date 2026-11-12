	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/7r" "c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py"
	.loc	1 22 0                          # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -472
	addli r30, sp, 408
	lui r1, :hi20:global_smem
	core_id r3
	lui r5, 15
	load_param_i r19, 0
	loadli.w r17,  36(r30)
	loadli.w r4,  32(r30)
	slli r2, r3, 2
	addli r1, r1, :lo12:global_smem
	ori r18, r5, 4095
	lui r5, 1046527
	loadli.w r20,  40(r30)
	add.s r16, r2, r1
	ori r5, r5, 4095
	mul.s r4, r17, r4
	stores.w zero, 1040(r16)
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	stores.w r5, 0(r16)
	mul.s r15, r4, r20
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	ble.s r15, r19, .LBB0_724
# %bb.1:                                # %.lr.ph
	addli r7, zero, 64
	addli r8, r16, 1040
	addli r10, zero, 1
	load.d r[4:5], 8(r30)
	load.d r[21:22], 16(r30)
	addli r23, r30, -128
	addli r24, r30, -64
	lui r26, 1048560
	addli r11, zero, 60
	storeli.w r16, -400(r30)                # 4-byte Folded Spill
	storeli.w r18, -404(r30)                # 4-byte Folded Spill
	storeli.w r15, -408(r30)                # 4-byte Folded Spill
	div.s r6, r3, r7
	storeli.w r8, -256(r30)                 # 4-byte Folded Spill
	load_param_i r8, 1
	storeli.w r8, -148(r30)                 # 4-byte Folded Spill
	andi r8, r3, 63
	storeli.w r8, -152(r30)                 # 4-byte Folded Spill
	storeli.w r6, -144(r30)                 # 4-byte Folded Spill
	slli r6, r6, 6
	sub.s r3, r3, r6
	lui r6, 1048575
	slli r8, r3, 5
	ori r3, r6, 3840
	and r2, r2, r3
	storeli.w r8, -260(r30)                 # 4-byte Folded Spill
	sext_int2long r[8:9], r8
	add.s r1, r2, r1
	sll.d r[8:9], r[8:9], r10
	storeli.w r1, -132(r30)                 # 4-byte Folded Spill
	addli r1, r1, 1040
	add.ul r[2:3], r[4:5], r[8:9]
	lui r8, 522240
	lui r9, 1024
	storeli.w r1, -164(r30)                 # 4-byte Folded Spill
	lui r1, 7
	store.d r[2:3], -272(r30)               # 8-byte Folded Spill
	lui r2, 522239
	addli r3, zero, 2047
	ori r25, r1, 4095
	lui r1, 524287
	ori r28, r2, 4095
	ori r27, r1, 4095
	j .LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
.Ltmp0:
	.loc	1 97 29 prologue_end            # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:97:29
	load.d r[2:3], -160(r30)                # 8-byte Folded Reload
	.loc	1 97 53 is_stmt 0               # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:97:53
	lui r1, 983040
	or r1, r7, r1
	.loc	1 97 29                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:97:29
	add.ul r[2:3], r[21:22], r[2:3]
	.loc	1 97 53                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:97:53
	s_lm2gm r1, r24, 0(r[2:3])
	addli r3, zero, 2047
	mfence { lm }
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 53                          # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:53
	loadli.w r1,  -148(r30)                 # 4-byte Folded Reload
	add.s r19, r19, r1
	blt.s r19, r15, .LBB0_4
	j .LBB0_724
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_585 Depth 2
                                        #     Child Loop BB0_598 Depth 2
	div.s r1, r19, r20
	.loc	1 28 23 is_stmt 1               # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:28:23
	loadli.w r2,  -144(r30)                 # 4-byte Folded Reload
	div.s r1, r1, r17
	add.s r1, r1, r2
	blt.s r3, r1, .LBB0_3
# %bb.5:                                # %.preheader.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23 is_stmt 0                # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:23
	addli r2, zero, 0
.LBB0_6:                                # %.preheader
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 40 51 is_stmt 1               # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:51
	add.s r3, r23, r2
	addli r2, r2, 4
	store.h zero, 0(r3)
	store.h zero, 2(r3)
	mfence { lm }
	bneq r2, r7, .LBB0_6
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 40 41 is_stmt 0               # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:41
	loadli.w r2,  -260(r30)                 # 4-byte Folded Reload
	.loc	1 40 46                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:46
	slli r1, r1, 11
	.loc	1 40 34                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:34
	addli r3, zero, 1
	.loc	1 40 41                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:41
	add.s r1, r1, r2
	.loc	1 40 34                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:34
	sext_int2long r[1:2], r1
	sll.d r[4:5], r[1:2], r3
	load.d r[2:3], 0(r30)
	.loc	1 40 51                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:51
	lui r1, 983040
	or r1, r7, r1
	store.d r[4:5], -160(r30)               # 8-byte Folded Spill
	.loc	1 40 34                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:34
	add.ul r[2:3], r[2:3], r[4:5]
	.loc	1 40 51                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:51
	l_gm2lm r1, r23, 0(r[2:3])
	addli r1, zero, 0
.LBB0_8:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 41 41 is_stmt 1               # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:41:41
	add.s r2, r24, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r7, .LBB0_8
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	lui r1, 983040
	load.d r[2:3], -272(r30)                # 8-byte Folded Reload
	or r1, r7, r1
	l_gm2lm r1, r24, 0(r[2:3])
	.loc	1 40 51                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:51
	mfence { lm }
	load.hu r1, -128(r30)
	.loc	1 41 41                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:41:41
	load.hu r2, -64(r30)
	load.hu r4, -62(r30)
	.loc	1 40 51                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:51
	bfloat2float.rn r1, r1
	.loc	1 41 41                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:41:41
	bfloat2float.rn r2, r2
	.loc	1 46 22                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:46:22
	add.f.rn r1, r1, r2
	.loc	1 40 51                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:51
	load.hu r2, -126(r30)
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	and r3, r1, r27
	setlt.u r5, r8, r3
	bneq r5, zero, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23 is_stmt 0                # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:23
	addli r6, r1, 0
	j .LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	or r6, r1, r9
.LBB0_12:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 0                           # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:0
	bfloat2float.rn r2, r2
	bfloat2float.rn r4, r4
	add.f.rn r2, r2, r4
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	and r4, r2, r27
	setlt.u r5, r8, r4
	bneq r5, zero, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:23
	addli r5, r2, 0
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	setlt.u r3, r28, r3
	beq r3, zero, .LBB0_15
	j .LBB0_16
.LBB0_14:                               #   in Loop: Header=BB0_4 Depth=1
	or r5, r2, r9
	setlt.u r3, r28, r3
	bneq r3, zero, .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:23
	srli r3, r1, 16
	andi r3, r3, 1
	add.s r1, r1, r3
	add.s r1, r1, r25
	and r6, r1, r26
.LBB0_16:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	setlt.u r1, r28, r4
	bneq r1, zero, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 23                          # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:23
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r25
	and r5, r1, r26
.LBB0_18:                               #   in Loop: Header=BB0_4 Depth=1
	addli r3, zero, 0
	addli r1, r5, 0
	addli r2, r6, 0
	storeli.w r5, -140(r30)                 # 4-byte Folded Spill
	storeli.w r6, -136(r30)                 # 4-byte Folded Spill
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_20 Depth=2
	addli r3, r3, 4
	beq r3, r11, .LBB0_49
.LBB0_20:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 40 51 is_stmt 1               # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:51
	add.s r4, r23, r3
	.loc	1 41 41                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:41:41
	add.s r5, r24, r3
	.loc	1 40 51                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:51
	load.hu r6, 4(r4)
	.loc	1 41 41                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:41:41
	load.hu r10, 4(r5)
	.loc	1 40 51                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:51
	load.hu r4, 6(r4)
	bfloat2float.rn r6, r6
	.loc	1 41 41                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:41:41
	bfloat2float.rn r10, r10
	.loc	1 46 22                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:46:22
	add.f.rn r6, r6, r10
	.loc	1 41 41                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:41:41
	load.hu r10, 6(r5)
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	and r12, r6, r27
	setlt.u r13, r8, r12
	bneq r13, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 23 is_stmt 0                # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:23
	addli r5, r6, 0
	j .LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	or r5, r6, r9
.LBB0_23:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 0                           # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:0
	bfloat2float.rn r4, r4
	bfloat2float.rn r10, r10
	add.f.rn r10, r4, r10
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	and r13, r10, r27
	setlt.u r4, r8, r13
	bneq r4, zero, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 23                          # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:23
	addli r4, r10, 0
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	setlt.u r12, r28, r12
	beq r12, zero, .LBB0_26
	j .LBB0_27
.LBB0_25:                               #   in Loop: Header=BB0_20 Depth=2
	or r4, r10, r9
	setlt.u r12, r28, r12
	bneq r12, zero, .LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 23                          # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:23
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r25
	and r5, r5, r26
.LBB0_27:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	setlt.u r6, r28, r13
	bneq r6, zero, .LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 23                          # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:23
	srli r4, r10, 16
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r25
	and r4, r4, r26
.LBB0_29:                               #   in Loop: Header=BB0_20 Depth=2
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/torch/_inductor/runtime" "triton_helpers.py"
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	setlt.f r10, r5, r2
	addli r6, r2, 0
	bneq r10, zero, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r6, r5, 0
.LBB0_31:                               #   in Loop: Header=BB0_20 Depth=2
	slli r10, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r12, r2, 9
.Ltmp2:
	.loc	1 0 0                           # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:0
	srli r13, r5, 23
.Ltmp3:
	.loc	2 113 29                        # triton_helpers.py:113:29
	srli r14, r2, 23
.Ltmp4:
	.loc	1 0 0                           # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:0
	seteq r10, r10, zero
.Ltmp5:
	.loc	2 113 29                        # triton_helpers.py:113:29
	seteq r12, r12, zero
.Ltmp6:
	.loc	1 0 0                           # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:0
	andi r13, r13, 255
.Ltmp7:
	.loc	2 113 29                        # triton_helpers.py:113:29
	andi r14, r14, 255
.Ltmp8:
	.loc	1 0 0                           # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:0
	setlti r13, r13, 255
.Ltmp9:
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlti r14, r14, 255
.Ltmp10:
	.loc	1 0 0                           # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:0
	or r10, r13, r10
.Ltmp11:
	.loc	2 113 29                        # triton_helpers.py:113:29
	or r12, r14, r12
	and r10, r12, r10
	beq r10, zero, .LBB0_45
# %bb.32:                               #   in Loop: Header=BB0_20 Depth=2
	bneq r2, zero, .LBB0_46
.LBB0_33:                               #   in Loop: Header=BB0_20 Depth=2
	beq r5, zero, .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r2, 0
.LBB0_35:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r6
	setle.f r10, r6, zero
	and r10, r10, r2
	addli r2, r5, 0
	bneq r10, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r6, 0
.LBB0_37:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r6, r4, r1
	addli r5, r1, 0
	bneq r6, zero, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r4, 0
.LBB0_39:                               #   in Loop: Header=BB0_20 Depth=2
	slli r6, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r10, r1, 9
	srli r12, r4, 23
	srli r13, r1, 23
	seteq r6, r6, zero
	seteq r10, r10, zero
	andi r12, r12, 255
	andi r13, r13, 255
	setlti r12, r12, 255
	setlti r13, r13, 255
	or r6, r12, r6
	or r10, r13, r10
	and r6, r10, r6
	beq r6, zero, .LBB0_47
# %bb.40:                               #   in Loop: Header=BB0_20 Depth=2
	bneq r1, zero, .LBB0_48
.LBB0_41:                               #   in Loop: Header=BB0_20 Depth=2
	beq r4, zero, .LBB0_43
.LBB0_42:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r1, 0
.LBB0_43:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r5
	setle.f r6, r5, zero
	and r6, r6, r1
	addli r1, r4, 0
	bneq r6, zero, .LBB0_19
# %bb.44:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
	j .LBB0_19
.LBB0_45:                               #   in Loop: Header=BB0_20 Depth=2
	lui r6, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_33
.LBB0_46:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r6, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_34
	j .LBB0_35
.LBB0_47:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r5, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_41
.LBB0_48:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r4, zero, .LBB0_42
	j .LBB0_43
.LBB0_49:                               #   in Loop: Header=BB0_4 Depth=1
	setlt.f r4, r1, r2
	addli r3, r2, 0
	bneq r4, zero, .LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
.LBB0_51:                               #   in Loop: Header=BB0_4 Depth=1
	slli r4, r1, 9
	slli r5, r2, 9
	srli r6, r1, 23
	srli r10, r2, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r10, r10, 255
	setlti r6, r6, 255
	setlti r10, r10, 255
	or r4, r6, r4
	or r5, r10, r5
	and r4, r5, r4
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r4, zero, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
.LBB0_53:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r3, 0
.LBB0_55:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r6,  -136(r30)                 # 4-byte Folded Reload
	loadli.w r5,  -140(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_57:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r3
	setle.f r4, r3, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_59:                               #   in Loop: Header=BB0_4 Depth=1
	stores.w r1, 0(r16)
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	loadli.w r1,  -152(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_583
# %bb.60:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	loads.w r3, 0(r1)
	loads.w r1, 4(r1)
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r1, r3
	addli r2, r3, 0
	bneq r4, zero, .LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_62:                               #   in Loop: Header=BB0_4 Depth=1
	slli r4, r3, 9
	slli r5, r1, 9
	srli r6, r3, 23
	srli r10, r1, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r10, r10, 255
	setlti r6, r6, 255
	setlti r10, r10, 255
	or r4, r6, r4
	or r5, r10, r5
	and r4, r4, r5
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r4, zero, .LBB0_616
# %bb.63:                               #   in Loop: Header=BB0_4 Depth=1
	bneq r3, zero, .LBB0_617
.LBB0_64:                               #   in Loop: Header=BB0_4 Depth=1
	beq r1, zero, .LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_66:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r2
	setle.f r4, r2, zero
	and r3, r4, r3
	bneq r3, zero, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
.LBB0_68:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r2,  -132(r30)                 # 4-byte Folded Reload
	loads.w r4, 8(r2)
	addli r2, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r3, r4, r1
	bneq r3, zero, .LBB0_70
# %bb.69:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r4, 0
.LBB0_70:                               #   in Loop: Header=BB0_4 Depth=1
	slli r3, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r1, 9
	srli r6, r4, 23
	srli r10, r1, 23
	seteq r3, r3, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r10, r10, 255
	setlti r6, r6, 255
	setlti r10, r10, 255
	or r3, r6, r3
	or r5, r10, r5
	and r3, r5, r3
	beq r3, zero, .LBB0_618
# %bb.71:                               #   in Loop: Header=BB0_4 Depth=1
	bneq r1, zero, .LBB0_619
.LBB0_72:                               #   in Loop: Header=BB0_4 Depth=1
	beq r4, zero, .LBB0_74
.LBB0_73:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r1, 0
.LBB0_74:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r2
	setle.f r3, r2, zero
	storeli.w r19, -276(r30)                # 4-byte Folded Spill
	and r1, r3, r1
	bneq r1, zero, .LBB0_76
# %bb.75:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r2, 0
.LBB0_76:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r12,  -132(r30)                # 4-byte Folded Reload
	loads.w r6, 48(r12)
	loads.w r15, 212(r12)
	loads.w r5, 12(r12)
	loads.w r13, 16(r12)
	loads.w r20, 20(r12)
	loads.w r19, 24(r12)
	loads.w r1, 28(r12)
	loads.w r2, 32(r12)
	loads.w r17, 36(r12)
	loads.w r3, 40(r12)
	loads.w r14, 44(r12)
	loads.w r11, 136(r12)
	loads.w r16, 144(r12)
	loads.w r10, 176(r12)
	storeli.w r6, -392(r30)                 # 4-byte Folded Spill
	loads.w r6, 52(r12)
	storeli.w r15, -308(r30)                # 4-byte Folded Spill
	loads.w r15, 216(r12)
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r22, r5, r4
	storeli.w r6, -388(r30)                 # 4-byte Folded Spill
	loads.w r6, 56(r12)
	storeli.w r15, -176(r30)                # 4-byte Folded Spill
	loads.w r15, 220(r12)
	storeli.w r6, -252(r30)                 # 4-byte Folded Spill
	loads.w r6, 60(r12)
	storeli.w r15, -304(r30)                # 4-byte Folded Spill
	loads.w r15, 224(r12)
	storeli.w r6, -384(r30)                 # 4-byte Folded Spill
	loads.w r6, 64(r12)
	storeli.w r15, -172(r30)                # 4-byte Folded Spill
	loads.w r15, 228(r12)
	storeli.w r6, -248(r30)                 # 4-byte Folded Spill
	loads.w r6, 68(r12)
	storeli.w r15, -300(r30)                # 4-byte Folded Spill
	loads.w r15, 232(r12)
	storeli.w r6, -380(r30)                 # 4-byte Folded Spill
	loads.w r6, 72(r12)
	storeli.w r15, -296(r30)                # 4-byte Folded Spill
	loads.w r15, 236(r12)
	storeli.w r6, -244(r30)                 # 4-byte Folded Spill
	loads.w r6, 76(r12)
	storeli.w r15, -168(r30)                # 4-byte Folded Spill
	loads.w r15, 240(r12)
	storeli.w r6, -376(r30)                 # 4-byte Folded Spill
	loads.w r6, 80(r12)
	storeli.w r15, -292(r30)                # 4-byte Folded Spill
	loads.w r15, 244(r12)
	storeli.w r6, -240(r30)                 # 4-byte Folded Spill
	loads.w r6, 84(r12)
	storeli.w r15, -288(r30)                # 4-byte Folded Spill
	loads.w r15, 248(r12)
	storeli.w r6, -372(r30)                 # 4-byte Folded Spill
	loads.w r6, 88(r12)
	storeli.w r15, -284(r30)                # 4-byte Folded Spill
	addli r15, r4, 0
	storeli.w r6, -236(r30)                 # 4-byte Folded Spill
	loads.w r6, 92(r12)
	storeli.w r6, -364(r30)                 # 4-byte Folded Spill
	loads.w r6, 96(r12)
	storeli.w r6, -232(r30)                 # 4-byte Folded Spill
	loads.w r6, 100(r12)
	storeli.w r6, -360(r30)                 # 4-byte Folded Spill
	loads.w r6, 104(r12)
	storeli.w r6, -228(r30)                 # 4-byte Folded Spill
	loads.w r6, 108(r12)
	storeli.w r6, -356(r30)                 # 4-byte Folded Spill
	loads.w r6, 112(r12)
	storeli.w r6, -224(r30)                 # 4-byte Folded Spill
	loads.w r6, 116(r12)
	storeli.w r6, -352(r30)                 # 4-byte Folded Spill
	loads.w r6, 120(r12)
	storeli.w r6, -220(r30)                 # 4-byte Folded Spill
	loads.w r6, 124(r12)
	storeli.w r6, -348(r30)                 # 4-byte Folded Spill
	loads.w r6, 128(r12)
	storeli.w r6, -216(r30)                 # 4-byte Folded Spill
	loads.w r6, 132(r12)
	storeli.w r6, -344(r30)                 # 4-byte Folded Spill
	loads.w r6, 140(r12)
	storeli.w r6, -212(r30)                 # 4-byte Folded Spill
	loads.w r6, 148(r12)
	storeli.w r6, -208(r30)                 # 4-byte Folded Spill
	loads.w r6, 152(r12)
	storeli.w r6, -336(r30)                 # 4-byte Folded Spill
	loads.w r6, 156(r12)
	storeli.w r6, -204(r30)                 # 4-byte Folded Spill
	loads.w r6, 160(r12)
	storeli.w r6, -332(r30)                 # 4-byte Folded Spill
	loads.w r6, 164(r12)
	storeli.w r6, -200(r30)                 # 4-byte Folded Spill
	loads.w r6, 168(r12)
	storeli.w r6, -328(r30)                 # 4-byte Folded Spill
	loads.w r6, 172(r12)
	storeli.w r6, -196(r30)                 # 4-byte Folded Spill
	loads.w r6, 180(r12)
	storeli.w r6, -324(r30)                 # 4-byte Folded Spill
	loads.w r6, 184(r12)
	storeli.w r6, -192(r30)                 # 4-byte Folded Spill
	loads.w r6, 188(r12)
	storeli.w r6, -188(r30)                 # 4-byte Folded Spill
	loads.w r6, 192(r12)
	storeli.w r6, -316(r30)                 # 4-byte Folded Spill
	loads.w r6, 196(r12)
	storeli.w r6, -184(r30)                 # 4-byte Folded Spill
	loads.w r6, 200(r12)
	storeli.w r6, -312(r30)                 # 4-byte Folded Spill
	loads.w r6, 204(r12)
	storeli.w r6, -180(r30)                 # 4-byte Folded Spill
	loads.w r6, 208(r12)
	loads.w r12, 252(r12)
	storeli.w r12, -280(r30)                # 4-byte Folded Spill
	bneq r22, zero, .LBB0_78
# %bb.77:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r5, 0
.LBB0_78:                               #   in Loop: Header=BB0_4 Depth=1
	slli r22, r5, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r12, r4, 9
	srli r21, r5, 23
	srli r18, r4, 23
	seteq r22, r22, zero
	seteq r12, r12, zero
	andi r21, r21, 255
	andi r18, r18, 255
	setlti r21, r21, 255
	setlti r18, r18, 255
	or r21, r21, r22
	or r12, r18, r12
	and r12, r12, r21
	bneq r12, zero, .LBB0_80
# %bb.79:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r15, 523264
.LBB0_80:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r22,  -372(r30)                # 4-byte Folded Reload
	storeli.w r6, -320(r30)                 # 4-byte Folded Spill
	storeli.w r10, -340(r30)                # 4-byte Folded Spill
	storeli.w r11, -368(r30)                # 4-byte Folded Spill
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r4, zero, .LBB0_82
# %bb.81:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r15, 0
.LBB0_82:                               #   in Loop: Header=BB0_4 Depth=1
	loadli.w r11,  -344(r30)                # 4-byte Folded Reload
	loadli.w r6,  -384(r30)                 # 4-byte Folded Reload
	storeli.w r16, -396(r30)                # 4-byte Folded Spill
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_84
# %bb.83:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r4, 0
.LBB0_84:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r15
	setle.f r12, r15, zero
	loadli.w r16,  -360(r30)                # 4-byte Folded Reload
	and r4, r12, r4
	bneq r4, zero, .LBB0_86
# %bb.85:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r15, 0
.LBB0_86:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r12, r13, r5
	addli r4, r5, 0
	bneq r12, zero, .LBB0_88
# %bb.87:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r13, 0
.LBB0_88:                               #   in Loop: Header=BB0_4 Depth=1
	slli r12, r13, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r15, r5, 9
	srli r18, r13, 23
	srli r21, r5, 23
	seteq r12, r12, zero
	seteq r15, r15, zero
	andi r18, r18, 255
	andi r21, r21, 255
	setlti r18, r18, 255
	setlti r21, r21, 255
	or r12, r18, r12
	or r15, r21, r15
	and r12, r15, r12
	beq r12, zero, .LBB0_620
# %bb.89:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r10,  -388(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_621
.LBB0_90:                               #   in Loop: Header=BB0_4 Depth=1
	beq r13, zero, .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r5, 0
.LBB0_92:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r4
	setle.f r12, r4, zero
	and r5, r12, r5
	bneq r5, zero, .LBB0_94
# %bb.93:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r4, 0
.LBB0_94:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r20, r13
	addli r4, r13, 0
	bneq r5, zero, .LBB0_96
# %bb.95:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r20, 0
.LBB0_96:                               #   in Loop: Header=BB0_4 Depth=1
	slli r5, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r12, r13, 9
	srli r15, r20, 23
	srli r18, r13, 23
	seteq r5, r5, zero
	seteq r12, r12, zero
	andi r15, r15, 255
	andi r18, r18, 255
	setlti r15, r15, 255
	setlti r18, r18, 255
	or r5, r15, r5
	or r12, r18, r12
	and r5, r12, r5
	beq r5, zero, .LBB0_622
# %bb.97:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r18,  -364(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_623
.LBB0_98:                               #   in Loop: Header=BB0_4 Depth=1
	beq r20, zero, .LBB0_100
.LBB0_99:                               #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r13, 0
.LBB0_100:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r4
	setle.f r12, r4, zero
	and r5, r12, r5
	bneq r5, zero, .LBB0_102
# %bb.101:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r4, 0
.LBB0_102:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r19, r20
	addli r4, r20, 0
	bneq r5, zero, .LBB0_104
# %bb.103:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r19, 0
.LBB0_104:                              #   in Loop: Header=BB0_4 Depth=1
	slli r5, r19, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r12, r20, 9
	srli r13, r19, 23
	srli r15, r20, 23
	seteq r5, r5, zero
	seteq r12, r12, zero
	andi r13, r13, 255
	andi r15, r15, 255
	setlti r13, r13, 255
	setlti r15, r15, 255
	or r5, r13, r5
	or r12, r15, r12
	and r5, r12, r5
	beq r5, zero, .LBB0_624
# %bb.105:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r20, zero, .LBB0_625
.LBB0_106:                              #   in Loop: Header=BB0_4 Depth=1
	beq r19, zero, .LBB0_108
.LBB0_107:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r20, 0
.LBB0_108:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r4
	setle.f r12, r4, zero
	and r5, r12, r5
	bneq r5, zero, .LBB0_110
# %bb.109:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r4, 0
.LBB0_110:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r1, r19
	loadli.w r20,  -392(r30)                # 4-byte Folded Reload
	addli r4, r19, 0
	bneq r5, zero, .LBB0_112
# %bb.111:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r1, 0
.LBB0_112:                              #   in Loop: Header=BB0_4 Depth=1
	slli r5, r1, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r12, r19, 9
	srli r13, r1, 23
	srli r15, r19, 23
	seteq r5, r5, zero
	seteq r12, r12, zero
	andi r13, r13, 255
	andi r15, r15, 255
	setlti r13, r13, 255
	setlti r15, r15, 255
	or r5, r13, r5
	or r12, r15, r12
	and r5, r12, r5
	beq r5, zero, .LBB0_626
# %bb.113:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r19, zero, .LBB0_627
.LBB0_114:                              #   in Loop: Header=BB0_4 Depth=1
	beq r1, zero, .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r19, 0
.LBB0_116:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r4
	setle.f r12, r4, zero
	and r5, r12, r5
	bneq r5, zero, .LBB0_118
# %bb.117:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_118:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r2, r1
	loadli.w r19,  -276(r30)                # 4-byte Folded Reload
	addli r4, r1, 0
	bneq r5, zero, .LBB0_120
# %bb.119:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r2, 0
.LBB0_120:                              #   in Loop: Header=BB0_4 Depth=1
	slli r5, r2, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r12, r1, 9
	srli r13, r2, 23
	srli r15, r1, 23
	seteq r5, r5, zero
	seteq r12, r12, zero
	andi r13, r13, 255
	andi r15, r15, 255
	setlti r13, r13, 255
	setlti r15, r15, 255
	or r5, r13, r5
	or r12, r15, r12
	and r5, r12, r5
	beq r5, zero, .LBB0_628
# %bb.121:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r15,  -376(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_629
.LBB0_122:                              #   in Loop: Header=BB0_4 Depth=1
	beq r2, zero, .LBB0_124
.LBB0_123:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
.LBB0_124:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r1, zero, r4
	setle.f r5, r4, zero
	and r1, r5, r1
	bneq r1, zero, .LBB0_126
# %bb.125:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r4, 0
.LBB0_126:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r17, r2
	addli r1, r2, 0
	bneq r4, zero, .LBB0_128
# %bb.127:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r17, 0
.LBB0_128:                              #   in Loop: Header=BB0_4 Depth=1
	slli r4, r17, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r2, 9
	srli r12, r17, 23
	srli r13, r2, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r12, r12, 255
	andi r13, r13, 255
	setlti r12, r12, 255
	setlti r13, r13, 255
	or r4, r12, r4
	or r5, r13, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_630
# %bb.129:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r13,  -332(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r2, zero, .LBB0_631
.LBB0_130:                              #   in Loop: Header=BB0_4 Depth=1
	beq r17, zero, .LBB0_132
.LBB0_131:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r2, 0
.LBB0_132:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r4, r1, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_134
# %bb.133:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
.LBB0_134:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r3, r17
	addli r1, r17, 0
	bneq r2, zero, .LBB0_136
# %bb.135:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r3, 0
.LBB0_136:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r3, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r17, 9
	srli r5, r3, 23
	srli r12, r17, 23
	seteq r2, r2, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r12, r12, 255
	setlti r5, r5, 255
	setlti r12, r12, 255
	or r2, r5, r2
	or r4, r12, r4
	and r2, r4, r2
	beq r2, zero, .LBB0_632
# %bb.137:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r17, zero, .LBB0_633
.LBB0_138:                              #   in Loop: Header=BB0_4 Depth=1
	beq r3, zero, .LBB0_140
.LBB0_139:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r17, 0
.LBB0_140:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r4, r1, zero
	and r2, r4, r2
	bneq r2, zero, .LBB0_142
# %bb.141:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
.LBB0_142:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r14, r3
	loadli.w r17,  -380(r30)                # 4-byte Folded Reload
	addli r1, r3, 0
	bneq r2, zero, .LBB0_144
# %bb.143:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
.LBB0_144:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r4, r3, 9
	srli r5, r14, 23
	srli r12, r3, 23
	seteq r2, r2, zero
	seteq r4, r4, zero
	andi r5, r5, 255
	andi r12, r12, 255
	setlti r5, r5, 255
	setlti r12, r12, 255
	or r2, r5, r2
	or r4, r12, r4
	and r2, r4, r2
	beq r2, zero, .LBB0_634
# %bb.145:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r12,  -336(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_635
.LBB0_146:                              #   in Loop: Header=BB0_4 Depth=1
	beq r14, zero, .LBB0_148
.LBB0_147:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r3, 0
.LBB0_148:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_150
# %bb.149:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
.LBB0_150:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r20, r14
	addli r1, r14, 0
	bneq r2, zero, .LBB0_152
# %bb.151:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r20, 0
.LBB0_152:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r14, 9
	srli r4, r20, 23
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
	beq r2, zero, .LBB0_636
# %bb.153:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r14, zero, .LBB0_637
.LBB0_154:                              #   in Loop: Header=BB0_4 Depth=1
	beq r20, zero, .LBB0_156
.LBB0_155:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r14, 0
.LBB0_156:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_158
# %bb.157:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
.LBB0_158:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r10, r20
	loadli.w r14,  -356(r30)                # 4-byte Folded Reload
	addli r1, r20, 0
	bneq r2, zero, .LBB0_160
# %bb.159:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_160:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r10, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r20, 9
	srli r4, r10, 23
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
	beq r2, zero, .LBB0_638
# %bb.161:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -252(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_639
.LBB0_162:                              #   in Loop: Header=BB0_4 Depth=1
	beq r10, zero, .LBB0_164
.LBB0_163:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r20, 0
.LBB0_164:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_166
# %bb.165:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_166:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r10
	addli r1, r10, 0
	bneq r2, zero, .LBB0_168
# %bb.167:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_168:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r10, 9
	srli r4, r4, 23
	srli r5, r10, 23
	addli r21, r10, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_170
# %bb.169:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_170:                              #   in Loop: Header=BB0_4 Depth=1
	addli r20, r12, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r21, zero, .LBB0_172
# %bb.171:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r1, 0
.LBB0_172:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
	addli r12, r11, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_174
# %bb.173:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r21, 0
.LBB0_174:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	addli r11, r13, 0
	and r2, r3, r2
	bneq r2, zero, .LBB0_176
# %bb.175:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_176:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r6, r5
	loadli.w r13,  -396(r30)                # 4-byte Folded Reload
	addli r1, r5, 0
	bneq r2, zero, .LBB0_178
# %bb.177:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r6, 0
.LBB0_178:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r6, 23
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
	beq r2, zero, .LBB0_640
# %bb.179:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -248(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_641
.LBB0_180:                              #   in Loop: Header=BB0_4 Depth=1
	beq r6, zero, .LBB0_182
.LBB0_181:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r10, 0
.LBB0_182:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_184
# %bb.183:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_184:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r6
	loadli.w r21,  -304(r30)                # 4-byte Folded Reload
	addli r1, r6, 0
	addli r10, r13, 0
	bneq r2, zero, .LBB0_186
# %bb.185:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_186:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r6, 9
	srli r4, r4, 23
	srli r5, r6, 23
	addli r13, r11, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_188
# %bb.187:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_188:                              #   in Loop: Header=BB0_4 Depth=1
	addli r11, r12, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_190
# %bb.189:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_190:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r5,  -248(r30)                 # 4-byte Folded Reload
	addli r12, r20, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_192
# %bb.191:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r6, 0
.LBB0_192:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_194
# %bb.193:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_194:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r17, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_196
# %bb.195:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r17, 0
.LBB0_196:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r17, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r17, 23
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
	beq r2, zero, .LBB0_642
# %bb.197:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -244(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_643
.LBB0_198:                              #   in Loop: Header=BB0_4 Depth=1
	beq r17, zero, .LBB0_200
.LBB0_199:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r6, 0
.LBB0_200:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_202
# %bb.201:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
.LBB0_202:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r17
	addli r1, r17, 0
	bneq r2, zero, .LBB0_204
# %bb.203:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_204:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r17, 9
	srli r4, r4, 23
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
	beq r2, zero, .LBB0_644
# %bb.205:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r17, zero, .LBB0_645
.LBB0_206:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -244(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r17, 0
.LBB0_208:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_210
# %bb.209:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_210:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r15, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_212
# %bb.211:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r15, 0
.LBB0_212:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r15, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r15, 23
	addli r17, r5, 0
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
	beq r2, zero, .LBB0_646
# %bb.213:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -240(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_647
.LBB0_214:                              #   in Loop: Header=BB0_4 Depth=1
	beq r15, zero, .LBB0_216
.LBB0_215:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r17, 0
.LBB0_216:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_218
# %bb.217:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
.LBB0_218:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r15
	addli r1, r15, 0
	bneq r2, zero, .LBB0_220
# %bb.219:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_220:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r15, 9
	srli r4, r4, 23
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
	beq r2, zero, .LBB0_648
# %bb.221:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r15, zero, .LBB0_649
.LBB0_222:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -240(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_224
.LBB0_223:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r15, 0
.LBB0_224:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_226
# %bb.225:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_226:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r22, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_228
# %bb.227:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r22, 0
.LBB0_228:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r22, 23
	addli r15, r5, 0
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
	beq r2, zero, .LBB0_650
# %bb.229:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -236(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_651
.LBB0_230:                              #   in Loop: Header=BB0_4 Depth=1
	beq r22, zero, .LBB0_232
.LBB0_231:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r15, 0
.LBB0_232:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_234
# %bb.233:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
.LBB0_234:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r22
	addli r1, r22, 0
	bneq r2, zero, .LBB0_236
# %bb.235:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_236:                              #   in Loop: Header=BB0_4 Depth=1
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
	bneq r2, zero, .LBB0_238
# %bb.237:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_238:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_240
# %bb.239:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
.LBB0_240:                              #   in Loop: Header=BB0_4 Depth=1
	addli r2, r22, 0
	loadli.w r22,  -328(r30)                # 4-byte Folded Reload
	loadli.w r5,  -236(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_242
# %bb.241:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r2, 0
.LBB0_242:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r15,  -316(r30)                # 4-byte Folded Reload
	and r2, r3, r2
	bneq r2, zero, .LBB0_244
# %bb.243:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_244:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r18, r5
	addli r17, r21, 0
	addli r1, r5, 0
	bneq r2, zero, .LBB0_246
# %bb.245:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r18, 0
.LBB0_246:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r18, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r18, 23
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
	beq r2, zero, .LBB0_652
# %bb.247:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -232(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_653
.LBB0_248:                              #   in Loop: Header=BB0_4 Depth=1
	beq r18, zero, .LBB0_250
.LBB0_249:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r6, 0
.LBB0_250:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_252
# %bb.251:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
.LBB0_252:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r18
	addli r1, r18, 0
	addli r6, r17, 0
	bneq r2, zero, .LBB0_254
# %bb.253:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_254:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r18, 9
	srli r4, r4, 23
	srli r5, r18, 23
	addli r17, r15, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_654
# %bb.255:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r22, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r18, zero, .LBB0_655
.LBB0_256:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -232(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_258
.LBB0_257:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r18, 0
.LBB0_258:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_260
# %bb.259:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_260:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r16, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_262
# %bb.261:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r16, 0
.LBB0_262:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r16, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r16, 23
	addli r18, r5, 0
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
	beq r2, zero, .LBB0_656
# %bb.263:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -228(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r18, zero, .LBB0_657
.LBB0_264:                              #   in Loop: Header=BB0_4 Depth=1
	beq r16, zero, .LBB0_266
.LBB0_265:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r18, 0
.LBB0_266:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_268
# %bb.267:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r1, 0
.LBB0_268:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r16
	loadli.w r18,  -352(r30)                # 4-byte Folded Reload
	addli r1, r16, 0
	bneq r2, zero, .LBB0_270
# %bb.269:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_270:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r16, 9
	srli r4, r4, 23
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
	beq r2, zero, .LBB0_658
# %bb.271:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r16, zero, .LBB0_659
.LBB0_272:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -228(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_274
.LBB0_273:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r16, 0
.LBB0_274:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_276
# %bb.275:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_276:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r14, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_278
# %bb.277:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
.LBB0_278:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r14, 23
	addli r16, r5, 0
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
	beq r2, zero, .LBB0_660
# %bb.279:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_661
.LBB0_280:                              #   in Loop: Header=BB0_4 Depth=1
	beq r14, zero, .LBB0_282
.LBB0_281:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r16, 0
.LBB0_282:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_284
# %bb.283:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
.LBB0_284:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r14
	loadli.w r16,  -348(r30)                # 4-byte Folded Reload
	addli r1, r14, 0
	bneq r2, zero, .LBB0_286
# %bb.285:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_286:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r14, 9
	srli r4, r4, 23
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
	beq r2, zero, .LBB0_662
# %bb.287:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r14, zero, .LBB0_663
.LBB0_288:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_290
.LBB0_289:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r14, 0
.LBB0_290:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_292
# %bb.291:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_292:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r18, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_294
# %bb.293:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r18, 0
.LBB0_294:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r18, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r18, 23
	addli r14, r5, 0
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
	beq r2, zero, .LBB0_664
# %bb.295:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_665
.LBB0_296:                              #   in Loop: Header=BB0_4 Depth=1
	beq r18, zero, .LBB0_298
.LBB0_297:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r14, 0
.LBB0_298:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_300
# %bb.299:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
.LBB0_300:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r18
	loadli.w r14,  -368(r30)                # 4-byte Folded Reload
	addli r1, r18, 0
	bneq r2, zero, .LBB0_302
# %bb.301:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_302:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r18, 9
	srli r4, r4, 23
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
	beq r2, zero, .LBB0_666
# %bb.303:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r18, zero, .LBB0_667
.LBB0_304:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_306
.LBB0_305:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r18, 0
.LBB0_306:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_308
# %bb.307:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_308:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r16, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_310
# %bb.309:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r16, 0
.LBB0_310:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r16, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r16, 23
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
	beq r2, zero, .LBB0_668
# %bb.311:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_669
.LBB0_312:                              #   in Loop: Header=BB0_4 Depth=1
	beq r16, zero, .LBB0_314
.LBB0_313:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r20, 0
.LBB0_314:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_316
# %bb.315:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r1, 0
.LBB0_316:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r16
	addli r1, r16, 0
	bneq r2, zero, .LBB0_318
# %bb.317:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_318:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r16, 9
	srli r4, r4, 23
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
	beq r2, zero, .LBB0_670
# %bb.319:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r16, zero, .LBB0_671
.LBB0_320:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_322
.LBB0_321:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r16, 0
.LBB0_322:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_324
# %bb.323:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_324:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r11, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_326
# %bb.325:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r11, 0
.LBB0_326:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r11, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r11, 23
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
	beq r2, zero, .LBB0_672
# %bb.327:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r21, zero, .LBB0_673
.LBB0_328:                              #   in Loop: Header=BB0_4 Depth=1
	beq r11, zero, .LBB0_330
.LBB0_329:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r21, 0
.LBB0_330:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_332
# %bb.331:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_332:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r14, r11
	addli r1, r11, 0
	bneq r2, zero, .LBB0_334
# %bb.333:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
.LBB0_334:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r11, 9
	srli r4, r14, 23
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
	beq r2, zero, .LBB0_674
# %bb.335:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_675
.LBB0_336:                              #   in Loop: Header=BB0_4 Depth=1
	beq r14, zero, .LBB0_338
.LBB0_337:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r11, 0
.LBB0_338:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_340
# %bb.339:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
.LBB0_340:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r14
	addli r1, r14, 0
	bneq r2, zero, .LBB0_342
# %bb.341:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_342:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r14, 9
	srli r4, r4, 23
	srli r5, r14, 23
	addli r11, r14, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_344
# %bb.343:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_344:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r22,  -300(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_346
# %bb.345:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
.LBB0_346:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r16,  -312(r30)                # 4-byte Folded Reload
	loadli.w r5,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_348
# %bb.347:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r11, 0
.LBB0_348:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r21,  -308(r30)                # 4-byte Folded Reload
	and r2, r3, r2
	bneq r2, zero, .LBB0_350
# %bb.349:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_350:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r10, r5
	loadli.w r20,  -292(r30)                # 4-byte Folded Reload
	addli r1, r5, 0
	addli r11, zero, 60
	bneq r2, zero, .LBB0_352
# %bb.351:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_352:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r10, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r10, 23
	addli r14, r5, 0
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
	beq r2, zero, .LBB0_676
# %bb.353:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_677
.LBB0_354:                              #   in Loop: Header=BB0_4 Depth=1
	beq r10, zero, .LBB0_356
.LBB0_355:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r14, 0
.LBB0_356:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_358
# %bb.357:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_358:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r10
	addli r1, r10, 0
	addli r14, r20, 0
	bneq r2, zero, .LBB0_360
# %bb.359:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_360:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r10, 9
	srli r4, r4, 23
	srli r5, r10, 23
	addli r20, r21, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_362
# %bb.361:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_362:                              #   in Loop: Header=BB0_4 Depth=1
	addli r21, r16, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_364
# %bb.363:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_364:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r5,  -208(r30)                 # 4-byte Folded Reload
	addli r16, r22, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_366
# %bb.365:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r10, 0
.LBB0_366:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_368
# %bb.367:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_368:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r12, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_370
# %bb.369:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_370:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r12, 23
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
	beq r2, zero, .LBB0_678
# %bb.371:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_679
.LBB0_372:                              #   in Loop: Header=BB0_4 Depth=1
	beq r12, zero, .LBB0_374
.LBB0_373:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r10, 0
.LBB0_374:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_376
# %bb.375:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_376:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r12
	loadli.w r10,  -340(r30)                # 4-byte Folded Reload
	addli r1, r12, 0
	bneq r2, zero, .LBB0_378
# %bb.377:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_378:                              #   in Loop: Header=BB0_4 Depth=1
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
	beq r2, zero, .LBB0_680
# %bb.379:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r12, zero, .LBB0_681
.LBB0_380:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_382
.LBB0_381:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r12, 0
.LBB0_382:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_384
# %bb.383:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_384:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r13, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_386
# %bb.385:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r13, 0
.LBB0_386:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r13, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r13, 23
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
	beq r2, zero, .LBB0_682
# %bb.387:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_683
.LBB0_388:                              #   in Loop: Header=BB0_4 Depth=1
	beq r13, zero, .LBB0_390
.LBB0_389:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r12, 0
.LBB0_390:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_392
# %bb.391:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
.LBB0_392:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r13
	loadli.w r12,  -324(r30)                # 4-byte Folded Reload
	addli r1, r13, 0
	bneq r2, zero, .LBB0_394
# %bb.393:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_394:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r13, 9
	srli r4, r4, 23
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
	beq r2, zero, .LBB0_684
# %bb.395:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r13, zero, .LBB0_685
.LBB0_396:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_398
.LBB0_397:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r13, 0
.LBB0_398:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_400
# %bb.399:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_400:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r15, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_402
# %bb.401:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r15, 0
.LBB0_402:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r15, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r15, 23
	addli r13, r5, 0
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
	beq r2, zero, .LBB0_686
# %bb.403:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_687
.LBB0_404:                              #   in Loop: Header=BB0_4 Depth=1
	beq r15, zero, .LBB0_406
.LBB0_405:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r13, 0
.LBB0_406:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_408
# %bb.407:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
.LBB0_408:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r15
	addli r1, r15, 0
	bneq r2, zero, .LBB0_410
# %bb.409:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_410:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r15, 9
	srli r4, r4, 23
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
	beq r2, zero, .LBB0_688
# %bb.411:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r15, zero, .LBB0_689
.LBB0_412:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_414
.LBB0_413:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r15, 0
.LBB0_414:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_416
# %bb.415:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_416:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r10, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_418
# %bb.417:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_418:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r10, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r10, 23
	addli r15, r5, 0
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
	beq r2, zero, .LBB0_690
# %bb.419:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r15, zero, .LBB0_691
.LBB0_420:                              #   in Loop: Header=BB0_4 Depth=1
	beq r10, zero, .LBB0_422
.LBB0_421:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r15, 0
.LBB0_422:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_424
# %bb.423:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_424:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r12, r10
	addli r1, r10, 0
	bneq r2, zero, .LBB0_426
# %bb.425:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_426:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r10, 9
	srli r4, r12, 23
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
	beq r2, zero, .LBB0_692
# %bb.427:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_693
.LBB0_428:                              #   in Loop: Header=BB0_4 Depth=1
	beq r12, zero, .LBB0_430
.LBB0_429:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r10, 0
.LBB0_430:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_432
# %bb.431:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_432:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r12
	addli r1, r12, 0
	bneq r2, zero, .LBB0_434
# %bb.433:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_434:                              #   in Loop: Header=BB0_4 Depth=1
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
	beq r2, zero, .LBB0_694
# %bb.435:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_695
.LBB0_436:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_438
.LBB0_437:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r12, 0
.LBB0_438:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_440
# %bb.439:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_440:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_442
# %bb.441:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_442:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r4, 23
	addli r18, r5, 0
	srli r5, r5, 23
	loadli.w r22,  -296(r30)                # 4-byte Folded Reload
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_444
# %bb.443:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_444:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r15,  -284(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_446
# %bb.445:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
.LBB0_446:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r12,  -288(r30)                # 4-byte Folded Reload
	loadli.w r5,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_448
# %bb.447:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r18, 0
.LBB0_448:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r13,  -404(r30)                # 4-byte Folded Reload
	and r2, r3, r2
	bneq r2, zero, .LBB0_450
# %bb.449:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_450:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r17, r5
	loadli.w r18,  -280(r30)                # 4-byte Folded Reload
	addli r1, r5, 0
	bneq r2, zero, .LBB0_452
# %bb.451:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r17, 0
.LBB0_452:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r17, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r17, 23
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
	beq r2, zero, .LBB0_696
# %bb.453:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_697
.LBB0_454:                              #   in Loop: Header=BB0_4 Depth=1
	beq r17, zero, .LBB0_456
.LBB0_455:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r10, 0
.LBB0_456:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_458
# %bb.457:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
.LBB0_458:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r17
	addli r1, r17, 0
	addli r10, r18, 0
	bneq r2, zero, .LBB0_460
# %bb.459:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_460:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r17, 9
	srli r4, r4, 23
	srli r5, r17, 23
	addli r18, r13, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_462
# %bb.461:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_462:                              #   in Loop: Header=BB0_4 Depth=1
	addli r13, r12, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_464
# %bb.463:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
.LBB0_464:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r5,  -184(r30)                 # 4-byte Folded Reload
	addli r12, r15, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_466
# %bb.465:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r17, 0
.LBB0_466:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_468
# %bb.467:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_468:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r21, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_470
# %bb.469:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r21, 0
.LBB0_470:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r21, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r21, 23
	addli r17, r5, 0
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
	beq r2, zero, .LBB0_698
# %bb.471:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_699
.LBB0_472:                              #   in Loop: Header=BB0_4 Depth=1
	beq r21, zero, .LBB0_474
.LBB0_473:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r17, 0
.LBB0_474:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_476
# %bb.475:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r1, 0
.LBB0_476:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r21
	loadli.w r17,  -320(r30)                # 4-byte Folded Reload
	addli r1, r21, 0
	bneq r2, zero, .LBB0_478
# %bb.477:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_478:                              #   in Loop: Header=BB0_4 Depth=1
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
	beq r2, zero, .LBB0_700
# %bb.479:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r21, zero, .LBB0_701
.LBB0_480:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_482
.LBB0_481:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r21, 0
.LBB0_482:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_484
# %bb.483:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_484:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r17, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_486
# %bb.485:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r17, 0
.LBB0_486:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r17, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r17, 23
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
	beq r2, zero, .LBB0_702
# %bb.487:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r21, zero, .LBB0_703
.LBB0_488:                              #   in Loop: Header=BB0_4 Depth=1
	beq r17, zero, .LBB0_490
.LBB0_489:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r21, 0
.LBB0_490:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_492
# %bb.491:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
.LBB0_492:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r20, r17
	addli r1, r17, 0
	bneq r2, zero, .LBB0_494
# %bb.493:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r20, 0
.LBB0_494:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r17, 9
	srli r4, r20, 23
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
	beq r2, zero, .LBB0_704
# %bb.495:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_705
.LBB0_496:                              #   in Loop: Header=BB0_4 Depth=1
	beq r20, zero, .LBB0_498
.LBB0_497:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r17, 0
.LBB0_498:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_500
# %bb.499:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
.LBB0_500:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r20
	addli r1, r20, 0
	bneq r2, zero, .LBB0_502
# %bb.501:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_502:                              #   in Loop: Header=BB0_4 Depth=1
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
	beq r2, zero, .LBB0_706
# %bb.503:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r20, zero, .LBB0_707
.LBB0_504:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_506
.LBB0_505:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r20, 0
.LBB0_506:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_508
# %bb.507:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_508:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r6, r5
	addli r1, r5, 0
	bneq r2, zero, .LBB0_510
# %bb.509:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r6, 0
.LBB0_510:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r6, 23
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
	beq r2, zero, .LBB0_708
# %bb.511:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r4,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_709
.LBB0_512:                              #   in Loop: Header=BB0_4 Depth=1
	beq r6, zero, .LBB0_514
.LBB0_513:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r20, 0
.LBB0_514:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_516
# %bb.515:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
.LBB0_516:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r6
	addli r1, r6, 0
	bneq r2, zero, .LBB0_518
# %bb.517:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_518:                              #   in Loop: Header=BB0_4 Depth=1
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
	beq r2, zero, .LBB0_710
# %bb.519:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r6, zero, .LBB0_711
.LBB0_520:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_522
.LBB0_521:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r6, 0
.LBB0_522:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	loadli.w r6,  36(r30)
	and r2, r3, r2
	bneq r2, zero, .LBB0_524
# %bb.523:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_524:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r16, r5
	loadli.w r17,  40(r30)
	addli r1, r5, 0
	bneq r2, zero, .LBB0_526
# %bb.525:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r16, 0
.LBB0_526:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r16, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r16, 23
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
	beq r2, zero, .LBB0_712
# %bb.527:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r20, zero, .LBB0_713
.LBB0_528:                              #   in Loop: Header=BB0_4 Depth=1
	beq r16, zero, .LBB0_530
.LBB0_529:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r20, 0
.LBB0_530:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_532
# %bb.531:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r1, 0
.LBB0_532:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r22, r16
	addli r1, r16, 0
	addli r20, r17, 0
	bneq r2, zero, .LBB0_534
# %bb.533:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r22, 0
.LBB0_534:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r16, 9
	srli r4, r22, 23
	srli r5, r16, 23
	addli r17, r6, 0
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	bneq r2, zero, .LBB0_536
# %bb.535:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
.LBB0_536:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r4,  -168(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -136(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r16, zero, .LBB0_538
# %bb.537:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r1, 0
.LBB0_538:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_540
# %bb.539:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r16, 0
.LBB0_540:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_542
# %bb.541:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
.LBB0_542:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r4, r22
	addli r1, r22, 0
	bneq r2, zero, .LBB0_544
# %bb.543:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
.LBB0_544:                              #   in Loop: Header=BB0_4 Depth=1
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
	beq r2, zero, .LBB0_714
# %bb.545:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r22, zero, .LBB0_715
.LBB0_546:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_548
.LBB0_547:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r22, 0
.LBB0_548:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_550
# %bb.549:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r1, 0
.LBB0_550:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r14, r5
	load.d r[15:16], 16(r30)
	addli r1, r5, 0
	bneq r2, zero, .LBB0_552
# %bb.551:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r14, 0
.LBB0_552:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r5, 9
	srli r4, r14, 23
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
	beq r2, zero, .LBB0_716
# %bb.553:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r21, zero, .LBB0_717
.LBB0_554:                              #   in Loop: Header=BB0_4 Depth=1
	beq r14, zero, .LBB0_556
.LBB0_555:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r21, 0
.LBB0_556:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_558
# %bb.557:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
.LBB0_558:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r13, r14
	addli r1, r14, 0
	addli.d r[21:22], r[15:16], 0
	bneq r2, zero, .LBB0_560
# %bb.559:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r13, 0
.LBB0_560:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r13, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r14, 9
	srli r4, r13, 23
	srli r5, r14, 23
	loadli.w r15,  -408(r30)                # 4-byte Folded Reload
	loadli.w r16,  -400(r30)                # 4-byte Folded Reload
	seteq r2, r2, zero
	seteq r3, r3, zero
	andi r4, r4, 255
	andi r5, r5, 255
	setlti r4, r4, 255
	setlti r5, r5, 255
	or r2, r4, r2
	or r3, r5, r3
	and r2, r3, r2
	beq r2, zero, .LBB0_718
# %bb.561:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r14, zero, .LBB0_719
.LBB0_562:                              #   in Loop: Header=BB0_4 Depth=1
	beq r13, zero, .LBB0_564
.LBB0_563:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r14, 0
.LBB0_564:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_566
# %bb.565:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
.LBB0_566:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r12, r13
	addli r1, r13, 0
	bneq r2, zero, .LBB0_568
# %bb.567:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r12, 0
.LBB0_568:                              #   in Loop: Header=BB0_4 Depth=1
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
	beq r2, zero, .LBB0_720
# %bb.569:                              #   in Loop: Header=BB0_4 Depth=1
	bneq r13, zero, .LBB0_721
.LBB0_570:                              #   in Loop: Header=BB0_4 Depth=1
	beq r12, zero, .LBB0_572
.LBB0_571:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r13, 0
.LBB0_572:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_574
# %bb.573:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
.LBB0_574:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r2, r10, r12
	addli r1, r12, 0
	bneq r2, zero, .LBB0_576
# %bb.575:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r10, 0
.LBB0_576:                              #   in Loop: Header=BB0_4 Depth=1
	slli r2, r10, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r3, r12, 9
	srli r4, r10, 23
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
	beq r2, zero, .LBB0_722
# %bb.577:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r5,  -140(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_723
.LBB0_578:                              #   in Loop: Header=BB0_4 Depth=1
	beq r10, zero, .LBB0_580
.LBB0_579:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r12, 0
.LBB0_580:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r2, zero, r1
	setle.f r3, r1, zero
	and r2, r3, r2
	bneq r2, zero, .LBB0_582
.Ltmp12:
# %bb.581:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
.LBB0_582:                              #   in Loop: Header=BB0_4 Depth=1
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	stores.w r10, 0(r1)
.LBB0_583:                              #   in Loop: Header=BB0_4 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	addli r4, zero, 0
	loads.w r1, 0(r1)
	.loc	1 71 24 is_stmt 1               # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:71:24
	sub.f.rn r2, r6, r1
	sub.f.rn r3, r5, r1
	.loc	1 72 30                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:72:30
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	j .LBB0_585
.LBB0_584:                              #   in Loop: Header=BB0_585 Depth=2
	.loc	1 71 24                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:71:24
	sub.f.rn r5, r5, r1
	sub.f.rn r6, r13, r1
	addli r4, r4, 4
	.loc	1 72 30                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:72:30
	exp.f.rn r5, r5
	exp.f.rn r6, r6
.Ltmp13:
	.file	3 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	3 263 15                        # standard.py:263:15
	add.f.rn r2, r2, r5
	add.f.rn r3, r3, r6
	beq r4, r11, .LBB0_594
.Ltmp14:
.LBB0_585:                              #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 40 51                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:51
	add.s r5, r23, r4
	.loc	1 41 41                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:41:41
	add.s r13, r24, r4
	load.hu r10, 4(r13)
	.loc	1 40 51                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:51
	load.hu r6, 4(r5)
	.loc	1 41 41                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:41:41
	load.hu r13, 6(r13)
	.loc	1 40 51                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:51
	bfloat2float.rn r6, r6
	.loc	1 41 41                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:41:41
	bfloat2float.rn r10, r10
	.loc	1 46 22                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:46:22
	add.f.rn r6, r6, r10
	.loc	1 40 51                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:51
	load.hu r10, 6(r5)
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	and r12, r6, r27
	setlt.u r14, r8, r12
	bneq r14, zero, .LBB0_587
# %bb.586:                              #   in Loop: Header=BB0_585 Depth=2
	.loc	1 0 23 is_stmt 0                # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:23
	addli r5, r6, 0
	j .LBB0_588
.LBB0_587:                              #   in Loop: Header=BB0_585 Depth=2
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	or r5, r6, r9
.LBB0_588:                              #   in Loop: Header=BB0_585 Depth=2
	.loc	1 0 0                           # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:0
	bfloat2float.rn r10, r10
	bfloat2float.rn r13, r13
	add.f.rn r10, r10, r13
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	and r14, r10, r27
	setlt.u r13, r8, r14
	bneq r13, zero, .LBB0_590
# %bb.589:                              #   in Loop: Header=BB0_585 Depth=2
	.loc	1 0 23                          # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:23
	addli r13, r10, 0
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	setlt.u r12, r28, r12
	beq r12, zero, .LBB0_591
	j .LBB0_592
.LBB0_590:                              #   in Loop: Header=BB0_585 Depth=2
	or r13, r10, r9
	setlt.u r12, r28, r12
	bneq r12, zero, .LBB0_592
.LBB0_591:                              #   in Loop: Header=BB0_585 Depth=2
	.loc	1 0 23                          # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:23
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	add.s r5, r5, r25
	and r5, r5, r26
.LBB0_592:                              #   in Loop: Header=BB0_585 Depth=2
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	setlt.u r6, r28, r14
	bneq r6, zero, .LBB0_584
# %bb.593:                              #   in Loop: Header=BB0_585 Depth=2
	.loc	1 0 23                          # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:23
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r25
	and r13, r6, r26
	j .LBB0_584
.LBB0_594:                              #   in Loop: Header=BB0_4 Depth=1
.Ltmp15:
	.loc	3 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r2, r2, r3
	loadli.w r3,  -256(r30)                 # 4-byte Folded Reload
	stores.w r2, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	loadli.w r2,  -152(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_596
# %bb.595:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	3 0 15 is_stmt 0                # standard.py:0:15
	loadli.w r5,  -164(r30)                 # 4-byte Folded Reload
	loads.w r2, 0(r5)
	loads.w r4, 4(r5)
	loads.w r3, 8(r5)
	.loc	3 263 15                        # standard.py:263:15
	add.f.rn r2, r2, r4
	loads.w r4, 12(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 16(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 20(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 24(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 28(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 32(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 36(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 40(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 44(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 48(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 52(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 56(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 60(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 64(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 68(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 72(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 76(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 80(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 84(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 88(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 92(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 96(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 100(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 104(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 108(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 112(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 116(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 120(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 124(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 128(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 132(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 136(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 140(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 144(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 148(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 152(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 156(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 160(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 164(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 168(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 172(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 176(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 180(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 184(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 188(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 192(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 196(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 200(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 204(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 208(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 212(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 216(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 220(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 224(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 228(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 232(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 236(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 240(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 244(r5)
	add.f.rn r2, r2, r3
	loads.w r3, 248(r5)
	add.f.rn r2, r2, r4
	loads.w r4, 252(r5)
	add.f.rn r2, r2, r3
	add.f.rn r2, r2, r4
	stores.w r2, 0(r5)
.Ltmp16:
.LBB0_596:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	3 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	loadli.w r2,  -164(r30)                 # 4-byte Folded Reload
	addli r3, zero, 0
	loads.w r2, 0(r2)
	j .LBB0_598
.LBB0_597:                              #   in Loop: Header=BB0_598 Depth=2
	.loc	1 97 53 is_stmt 1               # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:97:53
	float2bfloat.rn r5, r5
	float2bfloat.rn r6, r12
	addli r3, r3, 4
	store.h r5, 0(r4)
	store.h r6, 2(r4)
	mfence { lm }
	beq r3, r7, .LBB0_2
.LBB0_598:                              #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 41 41                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:41:41
	add.s r4, r24, r3
	.loc	1 40 51                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:51
	add.s r5, r23, r3
	load.hu r6, 0(r5)
	.loc	1 41 41                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:41:41
	load.hu r10, 0(r4)
	load.hu r12, 2(r4)
	.loc	1 40 51                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:51
	bfloat2float.rn r6, r6
	.loc	1 41 41                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:41:41
	bfloat2float.rn r10, r10
	.loc	1 46 22                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:46:22
	add.f.rn r10, r6, r10
	.loc	1 40 51                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:40:51
	load.hu r6, 2(r5)
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	and r13, r10, r27
	setlt.u r14, r8, r13
	bneq r14, zero, .LBB0_600
# %bb.599:                              #   in Loop: Header=BB0_598 Depth=2
	.loc	1 0 23 is_stmt 0                # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:23
	addli r5, r10, 0
	j .LBB0_601
.LBB0_600:                              #   in Loop: Header=BB0_598 Depth=2
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	or r5, r10, r9
.LBB0_601:                              #   in Loop: Header=BB0_598 Depth=2
	.loc	1 0 0                           # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:0
	bfloat2float.rn r6, r6
	bfloat2float.rn r12, r12
	add.f.rn r12, r6, r12
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	and r14, r12, r27
	setlt.u r6, r8, r14
	bneq r6, zero, .LBB0_603
# %bb.602:                              #   in Loop: Header=BB0_598 Depth=2
	.loc	1 0 23                          # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:23
	addli r6, r12, 0
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	setlt.u r13, r28, r13
	beq r13, zero, .LBB0_604
	j .LBB0_605
.LBB0_603:                              #   in Loop: Header=BB0_598 Depth=2
	or r6, r12, r9
	setlt.u r13, r28, r13
	bneq r13, zero, .LBB0_605
.LBB0_604:                              #   in Loop: Header=BB0_598 Depth=2
	.loc	1 0 23                          # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:23
	srli r5, r10, 16
	andi r5, r5, 1
	add.s r5, r10, r5
	add.s r5, r5, r25
	and r5, r5, r26
.LBB0_605:                              #   in Loop: Header=BB0_598 Depth=2
	.loc	1 47 23                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:47:23
	setlt.u r10, r28, r14
	bneq r10, zero, .LBB0_607
# %bb.606:                              #   in Loop: Header=BB0_598 Depth=2
	.loc	1 0 23                          # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:23
	srli r6, r12, 16
	andi r6, r6, 1
	add.s r6, r12, r6
	add.s r6, r6, r25
	and r6, r6, r26
.LBB0_607:                              #   in Loop: Header=BB0_598 Depth=2
	.loc	1 71 24 is_stmt 1               # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:71:24
	sub.f.rn r5, r5, r1
	.loc	1 72 30                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:72:30
	exp.f.rn r5, r5
	.loc	1 95 25                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:95:25
	div.f.rn r10, r5, r2
	.loc	1 97 53                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:97:53
	and r13, r10, r27
	setlt.u r5, r8, r13
	bneq r5, zero, .LBB0_609
# %bb.608:                              #   in Loop: Header=BB0_598 Depth=2
	.loc	1 0 53 is_stmt 0                # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:53
	addli r5, r10, 0
	j .LBB0_610
.LBB0_609:                              #   in Loop: Header=BB0_598 Depth=2
	.loc	1 97 53                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:97:53
	or r5, r10, r9
.LBB0_610:                              #   in Loop: Header=BB0_598 Depth=2
	.loc	1 0 0                           # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:0
	sub.f.rn r6, r6, r1
	exp.f.rn r6, r6
	div.f.rn r6, r6, r2
	.loc	1 97 53                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:97:53
	and r14, r6, r27
	setlt.u r12, r8, r14
	bneq r12, zero, .LBB0_612
# %bb.611:                              #   in Loop: Header=BB0_598 Depth=2
	.loc	1 0 53                          # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:53
	addli r12, r6, 0
	.loc	1 97 53                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:97:53
	setlt.u r13, r28, r13
	beq r13, zero, .LBB0_613
	j .LBB0_614
.LBB0_612:                              #   in Loop: Header=BB0_598 Depth=2
	or r12, r6, r9
	setlt.u r13, r28, r13
	bneq r13, zero, .LBB0_614
.LBB0_613:                              #   in Loop: Header=BB0_598 Depth=2
	.loc	1 0 53                          # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:53
	srli r5, r10, 16
	andi r5, r5, 1
	add.s r5, r10, r5
	add.s r5, r5, r25
	and r5, r5, r26
.LBB0_614:                              #   in Loop: Header=BB0_598 Depth=2
	.loc	1 97 53                         # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:97:53
	setlt.u r10, r28, r14
	bneq r10, zero, .LBB0_597
# %bb.615:                              #   in Loop: Header=BB0_598 Depth=2
	.loc	1 0 53                          # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:0:53
	srli r10, r6, 16
	andi r10, r10, 1
	add.s r6, r6, r10
	add.s r6, r6, r25
	and r12, r6, r26
	j .LBB0_597
.LBB0_616:                              #   in Loop: Header=BB0_4 Depth=1
	lui r2, 523264
.Ltmp17:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r3, zero, .LBB0_64
.LBB0_617:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r3, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_65
	j .LBB0_66
.LBB0_618:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r2, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_72
.LBB0_619:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r2, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r4, zero, .LBB0_73
	j .LBB0_74
.LBB0_620:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r4, 523264
	loadli.w r10,  -388(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r5, zero, .LBB0_90
.LBB0_621:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r5, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_91
	j .LBB0_92
.LBB0_622:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r4, 523264
	loadli.w r18,  -364(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_98
.LBB0_623:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_99
	j .LBB0_100
.LBB0_624:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r4, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_106
.LBB0_625:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_107
	j .LBB0_108
.LBB0_626:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r4, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_114
.LBB0_627:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r1, zero, .LBB0_115
	j .LBB0_116
.LBB0_628:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r4, 523264
	loadli.w r15,  -376(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r1, zero, .LBB0_122
.LBB0_629:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r1, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r2, zero, .LBB0_123
	j .LBB0_124
.LBB0_630:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r13,  -332(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r2, zero, .LBB0_130
.LBB0_631:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r2, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_131
	j .LBB0_132
.LBB0_632:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_138
.LBB0_633:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_139
	j .LBB0_140
.LBB0_634:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r12,  -336(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r3, zero, .LBB0_146
.LBB0_635:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_147
	j .LBB0_148
.LBB0_636:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_154
.LBB0_637:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_155
	j .LBB0_156
.LBB0_638:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -252(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_162
.LBB0_639:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_163
	j .LBB0_164
.LBB0_640:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -248(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_180
.LBB0_641:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_181
	j .LBB0_182
.LBB0_642:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -244(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_198
.LBB0_643:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_199
	j .LBB0_200
.LBB0_644:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_206
.LBB0_645:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
	loadli.w r5,  -244(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_207
	j .LBB0_208
.LBB0_646:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -240(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_214
.LBB0_647:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_215
	j .LBB0_216
.LBB0_648:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_222
.LBB0_649:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
	loadli.w r5,  -240(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_223
	j .LBB0_224
.LBB0_650:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -236(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_230
.LBB0_651:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_231
	j .LBB0_232
.LBB0_652:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -232(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_248
.LBB0_653:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r18, zero, .LBB0_249
	j .LBB0_250
.LBB0_654:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	addli r15, r22, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_256
.LBB0_655:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
	loadli.w r5,  -232(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_257
	j .LBB0_258
.LBB0_656:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -228(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_264
.LBB0_657:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_265
	j .LBB0_266
.LBB0_658:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r16, zero, .LBB0_272
.LBB0_659:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r1, 0
	loadli.w r5,  -228(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_273
	j .LBB0_274
.LBB0_660:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r16, zero, .LBB0_280
.LBB0_661:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_281
	j .LBB0_282
.LBB0_662:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_288
.LBB0_663:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	loadli.w r5,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_289
	j .LBB0_290
.LBB0_664:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_296
.LBB0_665:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r18, zero, .LBB0_297
	j .LBB0_298
.LBB0_666:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_304
.LBB0_667:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r1, 0
	loadli.w r5,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_305
	j .LBB0_306
.LBB0_668:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_312
.LBB0_669:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_313
	j .LBB0_314
.LBB0_670:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r16, zero, .LBB0_320
.LBB0_671:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r1, 0
	loadli.w r5,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_321
	j .LBB0_322
.LBB0_672:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r21, zero, .LBB0_328
.LBB0_673:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r11, zero, .LBB0_329
	j .LBB0_330
.LBB0_674:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r11, zero, .LBB0_336
.LBB0_675:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r11, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_337
	j .LBB0_338
.LBB0_676:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_354
.LBB0_677:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_355
	j .LBB0_356
.LBB0_678:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_372
.LBB0_679:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_373
	j .LBB0_374
.LBB0_680:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_380
.LBB0_681:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	loadli.w r5,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_381
	j .LBB0_382
.LBB0_682:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_388
.LBB0_683:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_389
	j .LBB0_390
.LBB0_684:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_396
.LBB0_685:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
	loadli.w r5,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_397
	j .LBB0_398
.LBB0_686:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_404
.LBB0_687:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r15, zero, .LBB0_405
	j .LBB0_406
.LBB0_688:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_412
.LBB0_689:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_413
	j .LBB0_414
.LBB0_690:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r15, zero, .LBB0_420
.LBB0_691:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r15, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_421
	j .LBB0_422
.LBB0_692:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_428
.LBB0_693:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_429
	j .LBB0_430
.LBB0_694:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_436
.LBB0_695:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	loadli.w r5,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_437
	j .LBB0_438
.LBB0_696:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r10, zero, .LBB0_454
.LBB0_697:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r10, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_455
	j .LBB0_456
.LBB0_698:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_472
.LBB0_699:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r21, zero, .LBB0_473
	j .LBB0_474
.LBB0_700:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r21, zero, .LBB0_480
.LBB0_701:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r1, 0
	loadli.w r5,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_481
	j .LBB0_482
.LBB0_702:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r21, zero, .LBB0_488
.LBB0_703:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_489
	j .LBB0_490
.LBB0_704:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_496
.LBB0_705:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_497
	j .LBB0_498
.LBB0_706:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_504
.LBB0_707:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	loadli.w r5,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_505
	j .LBB0_506
.LBB0_708:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r4,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_512
.LBB0_709:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_513
	j .LBB0_514
.LBB0_710:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_520
.LBB0_711:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r1, 0
	loadli.w r5,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_521
	j .LBB0_522
.LBB0_712:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_528
.LBB0_713:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_529
	j .LBB0_530
.LBB0_714:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_546
.LBB0_715:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r1, 0
	loadli.w r5,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r5, zero, .LBB0_547
	j .LBB0_548
.LBB0_716:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r21, zero, .LBB0_554
.LBB0_717:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r21, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_555
	j .LBB0_556
.LBB0_718:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_562
.LBB0_719:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_563
	j .LBB0_564
.LBB0_720:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_570
.LBB0_721:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_571
	j .LBB0_572
.LBB0_722:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r1, 523264
	loadli.w r5,  -140(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_578
.LBB0_723:                              #   in Loop: Header=BB0_4 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r1, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r10, zero, .LBB0_579
	j .LBB0_580
.Ltmp18:
.LBB0_724:                              # %._crit_edge
	.loc	1 77 4 epilogue_begin is_stmt 1 # c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py:77:4
	addli sp, sp, 408
	mfence { lm, sm, gm }
	exit
.Ltmp19:
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
	.long	472                             # 0x1d8
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
	.byte	53                              # DW_AT_call_line
	.byte	40                              # DW_AT_call_column
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
	.byte	76                              # DW_AT_call_line
	.byte	27                              # DW_AT_call_column
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
	.long	.Ltmp17-.Lfunc_begin0
	.long	.Ltmp18-.Lfunc_begin0
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
	.long	.Ltmp17-.Lfunc_begin0
	.long	.Ltmp18-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges2:
	.long	.Ltmp13-.Lfunc_begin0
	.long	.Ltmp14-.Lfunc_begin0
	.long	.Ltmp15-.Lfunc_begin0
	.long	.Ltmp16-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges3:
	.long	.Ltmp13-.Lfunc_begin0
	.long	.Ltmp14-.Lfunc_begin0
	.long	.Ltmp15-.Lfunc_begin0
	.long	.Ltmp16-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"c7rjrcloobkj5roaahtxrzjbx5c6r5ymltvur5xmymjy4ciejijz.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/7r" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
