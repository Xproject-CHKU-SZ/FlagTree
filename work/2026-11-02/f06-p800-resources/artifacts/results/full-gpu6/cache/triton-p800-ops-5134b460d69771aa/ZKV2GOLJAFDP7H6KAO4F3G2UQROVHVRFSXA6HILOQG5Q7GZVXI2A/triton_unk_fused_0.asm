	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/ou" "couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py"
	.loc	1 22 0                          # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -424
	addli r30, sp, 360
	lui r2, :hi20:global_smem
	core_id r1
	lui r5, 15
	loadli.w r7,  44(r30)
	loadli.w r4,  40(r30)
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r6,  48(r30)
	ori r21, r5, 4095
	load_param_i r5, 0
	add.s r8, r3, r2
	mul.s r4, r7, r4
	stores.w zero, 1040(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r21
	sync_group
	storeli.w r8, -256(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mul.s r4, r4, r6
	mfence { lm, sm, gm }
	csr_set csr3, r21
	sync_group
	storeli.w r4, -260(r30)                 # 4-byte Folded Spill
	ble.s r4, r5, .LBB0_26
# %bb.1:                                # %.lr.ph
	addli r4, zero, 64
	loadli.w r10,  -256(r30)                # 4-byte Folded Reload
	addli r26, zero, 1
	load.d r[8:9], 8(r30)
	load.d r[6:7], 16(r30)
	load.d r[17:18], 24(r30)
	addli r12, r30, -192
	addli r13, zero, 32
	addli r14, r30, -128
	addli r16, r30, -64
	addli r19, zero, 128
	addli r20, zero, 28
	addli r22, zero, 2
	div.s r4, r1, r4
	addli r10, r10, 1040
	storeli.w r10, -268(r30)                # 4-byte Folded Spill
	load_param_i r10, 1
	storeli.w r10, -276(r30)                # 4-byte Folded Spill
	storeli.w r4, -264(r30)                 # 4-byte Folded Spill
	slli r4, r4, 6
	sub.s r4, r1, r4
	andi r1, r1, 63
	slli r4, r4, 4
	storeli.w r1, -196(r30)                 # 4-byte Folded Spill
	lui r1, 239665
	ori r10, r4, 1
	storeli.w r4, -272(r30)                 # 4-byte Folded Spill
	ori r1, r1, 623
	storeli.w r10, -280(r30)                # 4-byte Folded Spill
	ori r10, r4, 2
	storeli.w r1, -356(r30)                 # 4-byte Folded Spill
	storeli.w r10, -284(r30)                # 4-byte Folded Spill
	ori r10, r4, 3
	storeli.w r10, -288(r30)                # 4-byte Folded Spill
	ori r10, r4, 4
	storeli.w r10, -292(r30)                # 4-byte Folded Spill
	ori r10, r4, 5
	storeli.w r10, -296(r30)                # 4-byte Folded Spill
	ori r10, r4, 6
	storeli.w r10, -300(r30)                # 4-byte Folded Spill
	ori r10, r4, 7
	storeli.w r10, -304(r30)                # 4-byte Folded Spill
	ori r10, r4, 8
	storeli.w r10, -308(r30)                # 4-byte Folded Spill
	ori r10, r4, 9
	storeli.w r10, -312(r30)                # 4-byte Folded Spill
	ori r10, r4, 10
	storeli.w r10, -316(r30)                # 4-byte Folded Spill
	ori r10, r4, 11
	storeli.w r10, -320(r30)                # 4-byte Folded Spill
	ori r10, r4, 12
	storeli.w r10, -324(r30)                # 4-byte Folded Spill
	ori r10, r4, 13
	storeli.w r10, -328(r30)                # 4-byte Folded Spill
	ori r10, r4, 14
	storeli.w r10, -332(r30)                # 4-byte Folded Spill
	ori r10, r4, 15
	storeli.w r10, -336(r30)                # 4-byte Folded Spill
	sext_int2long r[10:11], r4
	lui r4, 1048575
	sll.d r[10:11], r[10:11], r26
	ori r4, r4, 3840
	add.ul r[8:9], r[8:9], r[10:11]
	and r3, r3, r4
	add.ul r[6:7], r[6:7], r[10:11]
	store.d r[8:9], -344(r30)               # 8-byte Folded Spill
	add.s r8, r3, r2
	store.d r[6:7], -352(r30)               # 8-byte Folded Spill
	addli r11, r8, 1040
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_24 Depth 2
	addli r1, zero, 0
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp0:
	.loc	1 38 47 prologue_end            # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:38:47
	add.s r2, r12, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r13, .LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 47 is_stmt 0                # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:0:47
	loadli.w r1,  48(r30)
	loadli.w r2,  44(r30)
	.loc	1 38 47                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:38:47
	lui r3, 983040
	.loc	1 39 37 is_stmt 1               # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:39:37
	lui r4, 983040
	div.s r1, r5, r1
	div.s r1, r1, r2
	.loc	1 29 23                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:29:23
	loadli.w r2,  -264(r30)                 # 4-byte Folded Reload
	add.s r24, r1, r2
	.loc	1 38 37                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:38:37
	loadli.w r1,  -272(r30)                 # 4-byte Folded Reload
	.loc	1 38 42 is_stmt 0               # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:38:42
	slli r28, r24, 10
	.loc	1 38 37                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:38:37
	add.s r1, r28, r1
	.loc	1 38 30                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:38:30
	sext_int2long r[1:2], r1
	sll.d r[6:7], r[1:2], r26
	.loc	1 38 47                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:38:47
	or r1, r13, r3
	.loc	1 38 30                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:38:30
	load.d r[2:3], 0(r30)
	store.d r[6:7], -208(r30)               # 8-byte Folded Spill
	add.ul r[2:3], r[2:3], r[6:7]
	.loc	1 38 47                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:38:47
	l_gm2lm r1, r12, 0(r[2:3])
	.loc	1 39 37 is_stmt 1               # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:39:37
	or r2, r13, r4
	load.d r[3:4], -344(r30)                # 8-byte Folded Reload
	.loc	1 40 38                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:40:38
	lui r1, 983040
	or r1, r13, r1
	.loc	1 39 37                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:39:37
	l_gm2lm r2, r14, 0(r[3:4])
	.loc	1 40 38                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:40:38
	load.d r[2:3], -352(r30)                # 8-byte Folded Reload
	l_gm2lm r1, r16, 0(r[2:3])
	mfence { lm }
	.loc	1 38 47                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:38:47
	load.hu r1, -192(r30)
	.loc	1 39 37                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:39:37
	load.hu r3, -128(r30)
	.loc	1 38 47                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:38:47
	load.hu r2, -190(r30)
	.loc	1 39 37                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:39:37
	load.hu r4, -126(r30)
	.loc	1 46 19                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:46:19
	add.hf.rn r1, r1, r3
	add.hf.rn r2, r2, r4
	.loc	1 47 19                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:47:19
	hfloat2float.rn r1, r1
	hfloat2float.rn r2, r2
	addli r3, r1, 0
	addli r6, r2, 0
	.loc	1 52 35                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:52:35
	blt.s r24, r19, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:0:35
	addli r3, zero, 0
	addli r6, zero, 0
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	addli r4, r14, 2
	addli r7, zero, 0
	storeli.w r4, -212(r30)                 # 4-byte Folded Spill
	j .LBB0_9
.LBB0_7:                                #   in Loop: Header=BB0_9 Depth=2
	addli r9, zero, 0
	addli r4, zero, 0
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=2
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r3, r3, r9
	add.f.rn r6, r6, r4
	addli r7, r7, 4
	beq r7, r20, .LBB0_11
.Ltmp2:
.LBB0_9:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 52 35                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:52:35
	blt.s r24, r19, .LBB0_10
	j .LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=2
	.loc	1 0 0 is_stmt 0                 # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:0:0
	add.s r4, r12, r7
	add.s r9, r14, r7
	load.hu r10, 4(r4)
	load.hu r15, 4(r9)
	load.hu r4, 6(r4)
	load.hu r9, 6(r9)
	add.hf.rn r4, r4, r9
	add.hf.rn r10, r10, r15
	hfloat2float.rn r9, r10
	hfloat2float.rn r4, r4
	.loc	1 52 35                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:52:35
	j .LBB0_8
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
.Ltmp3:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r3, r3, r6
	loadli.w r4,  -256(r30)                 # 4-byte Folded Reload
	stores.w r3, 0(r4)
	mfence { lm, sm, gm }
	csr_set csr3, r21
	sync_group
	loadli.w r3,  -196(r30)                 # 4-byte Folded Reload
	bneq r3, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r3, 0(r8)
	loads.w r7, 4(r8)
	loads.w r6, 8(r8)
	loads.w r4, 12(r8)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r3, r3, r7
	add.f.rn r3, r3, r6
	loads.w r6, 16(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 20(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 24(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 28(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 32(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 36(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 40(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 44(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 48(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 52(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 56(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 60(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 64(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 68(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 72(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 76(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 80(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 84(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 88(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 92(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 96(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 100(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 104(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 108(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 112(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 116(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 120(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 124(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 128(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 132(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 136(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 140(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 144(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 148(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 152(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 156(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 160(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 164(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 168(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 172(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 176(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 180(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 184(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 188(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 192(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 196(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 200(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 204(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 208(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 212(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 216(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 220(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 224(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 228(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 232(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 236(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 240(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 244(r8)
	add.f.rn r3, r3, r6
	loads.w r6, 248(r8)
	add.f.rn r3, r3, r4
	loads.w r4, 252(r8)
	add.f.rn r3, r3, r6
	add.f.rn r3, r3, r4
	stores.w r3, 0(r8)
.Ltmp4:
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r21
	sync_group
	loads.w r3, 0(r8)
	.loc	1 56 21 is_stmt 1               # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:56:21
	lui r4, 239616
	addli r25, r21, 0
	mul.f.rn r7, r3, r4
	.loc	1 60 35                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:60:35
	blt.s r24, r19, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:0:35
	addli r2, zero, 0
	addli r21, zero, 0
	j .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_2 Depth=1
	sub.f.rn r3, r2, r7
	sub.f.rn r1, r1, r7
	mul.f.rn r2, r1, r1
	mul.f.rn r21, r3, r3
.LBB0_16:                               #   in Loop: Header=BB0_2 Depth=1
	loadli.w r3,  -284(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	add.s r27, r3, r28
	loadli.w r3,  -288(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r28
	add.s r23, r3, r28
	loadli.w r3,  -292(r30)                 # 4-byte Folded Reload
	add.s r9, r3, r28
	loadli.w r3,  -296(r30)                 # 4-byte Folded Reload
	add.s r10, r3, r28
	loadli.w r3,  -300(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r28
	storeli.w r3, -252(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -304(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r28
	storeli.w r3, -248(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -308(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r28
	storeli.w r3, -244(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -312(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r28
	storeli.w r3, -240(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -316(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r28
	storeli.w r3, -236(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -320(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r28
	storeli.w r3, -232(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -324(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r28
	storeli.w r3, -228(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -328(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r28
	storeli.w r3, -224(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -332(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r28
	storeli.w r3, -220(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -336(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r28
	addli r28, zero, 0
	storeli.w r3, -216(r30)                 # 4-byte Folded Spill
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	addli r4, zero, 0
	addli r15, zero, 0
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=2
.Ltmp5:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r2, r2, r4
	add.f.rn r21, r21, r15
	addli r28, r28, 4
	beq r28, r20, .LBB0_21
.Ltmp6:
.LBB0_19:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 60 35                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:60:35
	blt.s r24, r19, .LBB0_20
	j .LBB0_17
.LBB0_20:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 0 is_stmt 0                 # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:0:0
	add.s r4, r12, r28
	add.s r15, r14, r28
	load.hu r6, 4(r4)
	load.hu r3, 4(r15)
	load.hu r4, 6(r4)
	load.hu r15, 6(r15)
	add.hf.rn r3, r6, r3
	add.hf.rn r4, r4, r15
	hfloat2float.rn r3, r3
	hfloat2float.rn r4, r4
	sub.f.rn r6, r4, r7
	sub.f.rn r3, r3, r7
	mul.f.rn r4, r3, r3
	mul.f.rn r15, r6, r6
	.loc	1 60 35                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:60:35
	j .LBB0_18
.LBB0_21:                               #   in Loop: Header=BB0_2 Depth=1
.Ltmp7:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r2, r2, r21
	loadli.w r3,  -268(r30)                 # 4-byte Folded Reload
	addli r6, r25, 0
	stores.w r2, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r6
	sync_group
	loadli.w r2,  -196(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r2, 0(r11)
	loads.w r24, 4(r11)
	loads.w r21, 8(r11)
	loads.w r3, 12(r11)
	loads.w r4, 16(r11)
	addli r6, r25, 0
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r2, r2, r24
	add.f.rn r2, r2, r21
	add.f.rn r2, r2, r3
	loads.w r3, 20(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 24(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 28(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 32(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 36(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 40(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 44(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 48(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 52(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 56(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 60(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 64(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 68(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 72(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 76(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 80(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 84(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 88(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 92(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 96(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 100(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 104(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 108(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 112(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 116(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 120(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 124(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 128(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 132(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 136(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 140(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 144(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 148(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 152(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 156(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 160(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 164(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 168(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 172(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 176(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 180(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 184(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 188(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 192(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 196(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 200(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 204(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 208(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 212(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 216(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 220(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 224(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 228(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 232(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 236(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 240(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 244(r11)
	add.f.rn r2, r2, r4
	loads.w r4, 248(r11)
	add.f.rn r2, r2, r3
	loads.w r3, 252(r11)
	add.f.rn r2, r2, r4
	add.f.rn r2, r2, r3
	stores.w r2, 0(r11)
.Ltmp8:
.LBB0_23:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r6
	sync_group
	loads.w r2, 0(r11)
	.loc	1 64 21 is_stmt 1               # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:64:21
	lui r3, 239616
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	addli r21, r16, 2
	addli r24, zero, 0
	.loc	1 64 21                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:64:21
	mul.f.rn r2, r2, r3
	.loc	1 66 20                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:66:20
	loadli.w r3,  -356(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r3
	.loc	1 67 28                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:67:28
	lui r3, 260096
	sqrt.f.rn r2, r2
	div.f.rn r2, r3, r2
.LBB0_24:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 39 37                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:39:37
	add.s r4, r14, r24
	.loc	1 38 47                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:38:47
	add.s r3, r12, r24
	load.hu r6, 0(r3)
	.loc	1 39 37                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:39:37
	load.hu r15, 0(r4)
	.loc	1 38 47                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:38:47
	load.hu r3, 2(r3)
	.loc	1 39 37                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:39:37
	load.hu r28, 2(r4)
	.loc	1 46 19                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:46:19
	add.hf.rn r6, r6, r15
	add.hf.rn r3, r3, r28
	.loc	1 40 38                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:40:38
	add.s r15, r16, r24
	add.s r28, r21, r24
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	addli r24, r24, 4
	.loc	1 40 38                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:40:38
	load.hu r15, 0(r15)
	load.hu r28, 0(r28)
	.loc	1 40 77 is_stmt 0               # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:40:77
	hfloat2float.rn r15, r15
	hfloat2float.rn r28, r28
	.loc	1 47 19 is_stmt 1               # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:47:19
	hfloat2float.rn r6, r6
	hfloat2float.rn r3, r3
	.loc	1 57 20                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:57:20
	sub.f.rn r6, r6, r7
	sub.f.rn r3, r3, r7
	.loc	1 68 20                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:68:20
	mul.f.rn r6, r2, r6
	mul.f.rn r3, r2, r3
	.loc	1 70 20                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:70:20
	mul.f.rn r6, r6, r15
	mul.f.rn r3, r3, r28
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	float2hfloat.rn r6, r6
	float2hfloat.rn r3, r3
	store.h r6, 0(r4)
	store.h r3, 2(r4)
	mfence { lm }
	bneq r24, r13, .LBB0_24
# %bb.25:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 72 25 is_stmt 0               # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	sext_int2long r[1:2], r1
	sext_int2long r[3:4], r27
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	lui r6, 983040
	loadli.w r7,  -212(r30)                 # 4-byte Folded Reload
	addli r21, r25, 0
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	sll.d r[1:2], r[1:2], r26
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	or r6, r22, r6
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	sll.d r[3:4], r[3:4], r26
	add.ul r[1:2], r[17:18], r[1:2]
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	s_lm2gm r6, r7, 0(r[1:2])
	lui r6, 983040
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	add.ul r[1:2], r[17:18], r[3:4]
	sext_int2long r[3:4], r23
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	addli r7, r14, 4
	or r6, r22, r6
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	sll.d r[3:4], r[3:4], r26
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	s_lm2gm r6, r7, 0(r[1:2])
	lui r6, 983040
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	add.ul r[1:2], r[17:18], r[3:4]
	sext_int2long r[3:4], r9
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	addli r7, r14, 6
	lui r9, 983040
	or r6, r22, r6
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	sll.d r[3:4], r[3:4], r26
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	or r9, r22, r9
	s_lm2gm r6, r7, 0(r[1:2])
	lui r6, 983040
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	add.ul r[1:2], r[17:18], r[3:4]
	sext_int2long r[3:4], r10
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	addli r7, r14, 8
	addli r10, r14, 22
	or r6, r22, r6
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	sll.d r[3:4], r[3:4], r26
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	s_lm2gm r6, r7, 0(r[1:2])
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	add.ul r[1:2], r[17:18], r[3:4]
	loadli.w r3,  -252(r30)                 # 4-byte Folded Reload
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	lui r6, 983040
	addli r7, r14, 10
	or r6, r22, r6
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	sext_int2long r[3:4], r3
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	s_lm2gm r6, r7, 0(r[1:2])
	lui r6, 983040
	addli r7, r14, 12
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	sll.d r[3:4], r[3:4], r26
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	or r6, r22, r6
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	add.ul r[1:2], r[17:18], r[3:4]
	loadli.w r3,  -248(r30)                 # 4-byte Folded Reload
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	s_lm2gm r6, r7, 0(r[1:2])
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	loadli.w r6,  -244(r30)                 # 4-byte Folded Reload
	sext_int2long r[3:4], r3
	sll.d r[3:4], r[3:4], r26
	sext_int2long r[6:7], r6
	add.ul r[1:2], r[17:18], r[3:4]
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	lui r3, 983040
	addli r4, r14, 14
	or r3, r22, r3
	s_lm2gm r3, r4, 0(r[1:2])
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	loadli.w r3,  -240(r30)                 # 4-byte Folded Reload
	sll.d r[1:2], r[6:7], r26
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	lui r6, 983040
	addli r7, r14, 16
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	add.ul r[1:2], r[17:18], r[1:2]
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	or r6, r22, r6
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	sext_int2long r[3:4], r3
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	s_lm2gm r6, r7, 0(r[1:2])
	lui r1, 983040
	addli r2, r14, 18
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	loadli.w r6,  -236(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[3:4], r26
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	or r1, r22, r1
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	add.ul r[3:4], r[17:18], r[3:4]
	sext_int2long r[6:7], r6
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	s_lm2gm r1, r2, 0(r[3:4])
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	loadli.w r1,  -232(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[6:7], r26
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	lui r6, 983040
	addli r7, r14, 20
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	add.ul r[3:4], r[17:18], r[3:4]
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	or r6, r22, r6
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	sext_int2long r[1:2], r1
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	s_lm2gm r6, r7, 0(r[3:4])
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	loadli.w r4,  -228(r30)                 # 4-byte Folded Reload
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	lui r3, 983040
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	sll.d r[1:2], r[1:2], r26
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	or r3, r22, r3
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	add.ul r[1:2], r[17:18], r[1:2]
	sext_int2long r[6:7], r4
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	s_lm2gm r9, r10, 0(r[1:2])
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	load.d r[1:2], -208(r30)                # 8-byte Folded Reload
	sll.d r[6:7], r[6:7], r26
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	lui r9, 983040
	addli r10, r14, 30
	or r9, r22, r9
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	add.ul r[1:2], r[17:18], r[1:2]
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	s_lm2gm r3, r14, 0(r[1:2])
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	loadli.w r1,  -224(r30)                 # 4-byte Folded Reload
	add.ul r[3:4], r[17:18], r[6:7]
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	lui r6, 983040
	addli r7, r14, 24
	or r6, r22, r6
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	sext_int2long r[1:2], r1
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	s_lm2gm r6, r7, 0(r[3:4])
	lui r3, 983040
	addli r4, r14, 26
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	loadli.w r6,  -220(r30)                 # 4-byte Folded Reload
	sll.d r[1:2], r[1:2], r26
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	or r3, r22, r3
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	add.ul r[1:2], r[17:18], r[1:2]
	sext_int2long r[6:7], r6
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	s_lm2gm r3, r4, 0(r[1:2])
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[6:7], r26
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	lui r6, 983040
	addli r7, r14, 28
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	add.ul r[3:4], r[17:18], r[3:4]
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	or r6, r22, r6
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	sext_int2long r[1:2], r1
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	s_lm2gm r6, r7, 0(r[3:4])
	.loc	1 72 25                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:25
	sll.d r[1:2], r[1:2], r26
	add.ul r[1:2], r[17:18], r[1:2]
	.loc	1 72 49                         # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:49
	s_lm2gm r9, r10, 0(r[1:2])
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	mfence { lm }
	add.s r5, r5, r1
	loadli.w r1,  -260(r30)                 # 4-byte Folded Reload
	blt.s r5, r1, .LBB0_2
.LBB0_26:                               # %._crit_edge
	.loc	1 72 4 epilogue_begin           # couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py:72:4
	addli sp, sp, 360
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
	.long	52                              # 0x34
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	424                             # 0x1a8
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
	.byte	53                              # DW_AT_call_line
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
	.byte	61                              # DW_AT_call_line
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
.asciz	"couffwd2enmbe6xse6xl757xhhv263pg4l43jac2zpo2jqtnk5sa.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/ou" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
