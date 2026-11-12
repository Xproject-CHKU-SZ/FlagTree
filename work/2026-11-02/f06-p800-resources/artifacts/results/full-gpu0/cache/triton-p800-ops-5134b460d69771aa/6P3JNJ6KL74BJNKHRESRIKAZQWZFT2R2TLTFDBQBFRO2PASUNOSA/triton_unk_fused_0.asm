	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/vn" "cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py"
	.loc	1 22 0                          # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:22:0
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
	ori r26, r5, 4095
	load_param_i r5, 0
	add.s r8, r3, r2
	mul.s r4, r7, r4
	stores.w zero, 1040(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r26
	sync_group
	storeli.w r8, -324(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mul.s r4, r4, r6
	mfence { lm, sm, gm }
	csr_set csr3, r26
	sync_group
	storeli.w r4, -328(r30)                 # 4-byte Folded Spill
	ble.s r4, r5, .LBB0_26
# %bb.1:                                # %.lr.ph
	addli r4, zero, 64
	loadli.w r12,  -324(r30)                # 4-byte Folded Reload
	addli r25, zero, 1
	load.d r[8:9], 16(r30)
	load.d r[6:7], 24(r30)
	load.d r[10:11], 8(r30)
	andi r27, r1, 63
	load.d r[19:20], 32(r30)
	addli r16, zero, 32
	addli r17, r30, -192
	addli r18, r30, -128
	addli r21, r30, -64
	addli r22, zero, 128
	addli r23, zero, 28
	lui r28, 239616
	div.s r4, r1, r4
	storeli.w r27, -436(r30)                # 4-byte Folded Spill
	addli r12, r12, 1040
	storeli.w r12, -336(r30)                # 4-byte Folded Spill
	storeli.w r4, -332(r30)                 # 4-byte Folded Spill
	slli r4, r4, 6
	sub.s r4, r1, r4
	lui r1, 239665
	slli r14, r4, 4
	load_param_i r4, 1
	ori r1, r1, 623
	storeli.w r4, -344(r30)                 # 4-byte Folded Spill
	ori r4, r14, 1
	sext_int2long r[12:13], r14
	storeli.w r14, -340(r30)                # 4-byte Folded Spill
	storeli.w r1, -440(r30)                 # 4-byte Folded Spill
	storeli.w r4, -348(r30)                 # 4-byte Folded Spill
	ori r4, r14, 2
	sll.d r[12:13], r[12:13], r25
	storeli.w r4, -352(r30)                 # 4-byte Folded Spill
	ori r4, r14, 3
	add.ul r[8:9], r[8:9], r[12:13]
	add.ul r[6:7], r[6:7], r[12:13]
	add.ul r[10:11], r[10:11], r[12:13]
	storeli.w r4, -356(r30)                 # 4-byte Folded Spill
	ori r4, r14, 4
	store.d r[8:9], -424(r30)               # 8-byte Folded Spill
	store.d r[6:7], -432(r30)               # 8-byte Folded Spill
	addli r7, zero, 2
	store.d r[10:11], -416(r30)             # 8-byte Folded Spill
	storeli.w r4, -360(r30)                 # 4-byte Folded Spill
	ori r4, r14, 5
	storeli.w r4, -364(r30)                 # 4-byte Folded Spill
	ori r4, r14, 6
	storeli.w r4, -368(r30)                 # 4-byte Folded Spill
	ori r4, r14, 7
	storeli.w r4, -372(r30)                 # 4-byte Folded Spill
	ori r4, r14, 8
	storeli.w r4, -376(r30)                 # 4-byte Folded Spill
	ori r4, r14, 9
	storeli.w r4, -380(r30)                 # 4-byte Folded Spill
	ori r4, r14, 10
	storeli.w r4, -384(r30)                 # 4-byte Folded Spill
	ori r4, r14, 11
	storeli.w r4, -388(r30)                 # 4-byte Folded Spill
	ori r4, r14, 12
	storeli.w r4, -392(r30)                 # 4-byte Folded Spill
	ori r4, r14, 13
	storeli.w r4, -396(r30)                 # 4-byte Folded Spill
	ori r4, r14, 14
	storeli.w r4, -400(r30)                 # 4-byte Folded Spill
	lui r4, 1048575
	ori r4, r4, 3840
	and r3, r3, r4
	ori r4, r14, 15
	addli r14, r30, -256
	add.s r8, r3, r2
	storeli.w r4, -404(r30)                 # 4-byte Folded Spill
	addli r13, r8, 1040
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_24 Depth 2
	addli r1, zero, 0
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp0:
	.loc	1 38 47 prologue_end            # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:38:47
	add.s r2, r14, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r16, .LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 47 is_stmt 0                # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:0:47
	loadli.w r1,  56(r30)
	loadli.w r2,  52(r30)
	.loc	1 38 47                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:38:47
	lui r4, 983040
	.loc	1 39 37 is_stmt 1               # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:39:37
	lui r6, 983040
	div.s r1, r5, r1
	div.s r1, r1, r2
	.loc	1 29 23                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:29:23
	loadli.w r2,  -332(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	.loc	1 38 37                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:38:37
	loadli.w r2,  -340(r30)                 # 4-byte Folded Reload
	.loc	1 38 42 is_stmt 0               # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:38:42
	slli r24, r1, 10
	.loc	1 38 37                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:38:37
	add.s r2, r24, r2
	.loc	1 38 30                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:38:30
	sext_int2long r[2:3], r2
	sll.d r[9:10], r[2:3], r25
	.loc	1 38 47                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:38:47
	or r2, r16, r4
	.loc	1 38 30                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:38:30
	load.d r[3:4], 0(r30)
	store.d r[9:10], -264(r30)              # 8-byte Folded Spill
	add.ul r[3:4], r[3:4], r[9:10]
	.loc	1 39 37 is_stmt 1               # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:39:37
	load.d r[9:10], -416(r30)               # 8-byte Folded Reload
	.loc	1 38 47                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:38:47
	l_gm2lm r2, r14, 0(r[3:4])
	.loc	1 39 37                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:39:37
	or r4, r16, r6
	.loc	1 40 38                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:40:38
	lui r2, 983040
	.loc	1 41 38                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:41:38
	lui r3, 983040
	.loc	1 39 37                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:39:37
	l_gm2lm r4, r17, 0(r[9:10])
	.loc	1 40 38                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:40:38
	load.d r[9:10], -424(r30)               # 8-byte Folded Reload
	or r2, r16, r2
	.loc	1 41 38                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:41:38
	or r3, r16, r3
	.loc	1 40 38                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:40:38
	l_gm2lm r2, r18, 0(r[9:10])
	.loc	1 41 38                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:41:38
	load.d r[9:10], -432(r30)               # 8-byte Folded Reload
	l_gm2lm r3, r21, 0(r[9:10])
	.loc	1 40 38                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:40:38
	mfence { lm }
	.loc	1 38 47                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:38:47
	load.hu r2, -256(r30)
	.loc	1 39 37                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:39:37
	load.hu r4, -192(r30)
	.loc	1 38 47                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:38:47
	load.hu r3, -254(r30)
	.loc	1 39 37                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:39:37
	load.hu r6, -190(r30)
	.loc	1 47 19                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:47:19
	add.hf.rn r2, r2, r4
	add.hf.rn r4, r3, r6
	.loc	1 48 19                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:48:19
	hfloat2float.rn r3, r2
	hfloat2float.rn r6, r4
	addli r2, r3, 0
	addli r4, r6, 0
	.loc	1 53 35                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:53:35
	blt.s r1, r22, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:0:35
	addli r2, zero, 0
	addli r4, zero, 0
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	addli r9, r17, 2
	storeli.w r9, -268(r30)                 # 4-byte Folded Spill
	addli r9, zero, 0
	j .LBB0_9
.LBB0_7:                                #   in Loop: Header=BB0_9 Depth=2
	addli r10, zero, 0
	addli r11, zero, 0
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=2
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r2, r2, r10
	add.f.rn r4, r4, r11
	addli r9, r9, 4
	beq r9, r23, .LBB0_11
.Ltmp2:
.LBB0_9:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 53 35                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:53:35
	blt.s r1, r22, .LBB0_10
	j .LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=2
	.loc	1 0 0 is_stmt 0                 # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:0:0
	add.s r10, r14, r9
	add.s r11, r17, r9
	load.hu r12, 4(r10)
	load.hu r15, 4(r11)
	load.hu r10, 6(r10)
	load.hu r11, 6(r11)
	add.hf.rn r11, r10, r11
	add.hf.rn r12, r12, r15
	hfloat2float.rn r10, r12
	hfloat2float.rn r11, r11
	.loc	1 53 35                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:53:35
	j .LBB0_8
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
.Ltmp3:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r2, r2, r4
	loadli.w r4,  -324(r30)                 # 4-byte Folded Reload
	stores.w r2, 0(r4)
	mfence { lm, sm, gm }
	csr_set csr3, r26
	sync_group
	bneq r27, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r2, 0(r8)
	loads.w r9, 4(r8)
	loads.w r4, 8(r8)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r2, r2, r9
	loads.w r9, 12(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 16(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 20(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 24(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 28(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 32(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 36(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 40(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 44(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 48(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 52(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 56(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 60(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 64(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 68(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 72(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 76(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 80(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 84(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 88(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 92(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 96(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 100(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 104(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 108(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 112(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 116(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 120(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 124(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 128(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 132(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 136(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 140(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 144(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 148(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 152(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 156(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 160(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 164(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 168(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 172(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 176(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 180(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 184(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 188(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 192(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 196(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 200(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 204(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 208(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 212(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 216(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 220(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 224(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 228(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 232(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 236(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 240(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 244(r8)
	add.f.rn r2, r2, r4
	loads.w r4, 248(r8)
	add.f.rn r2, r2, r9
	loads.w r9, 252(r8)
	add.f.rn r2, r2, r4
	add.f.rn r2, r2, r9
	stores.w r2, 0(r8)
.Ltmp4:
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r26
	sync_group
	loads.w r2, 0(r8)
	.loc	1 57 21 is_stmt 1               # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:57:21
	mul.f.rn r2, r2, r28
	.loc	1 61 35                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:61:35
	blt.s r1, r22, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 35 is_stmt 0                # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:0:35
	addli r15, zero, 0
	addli r4, zero, 0
	j .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_2 Depth=1
	sub.f.rn r4, r6, r2
	sub.f.rn r3, r3, r2
	mul.f.rn r15, r3, r3
	mul.f.rn r4, r4, r4
.LBB0_16:                               #   in Loop: Header=BB0_2 Depth=1
	loadli.w r3,  -348(r30)                 # 4-byte Folded Reload
	add.s r11, r3, r24
	loadli.w r3,  -352(r30)                 # 4-byte Folded Reload
	add.s r10, r3, r24
	loadli.w r3,  -356(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r24
	storeli.w r3, -320(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -360(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r24
	storeli.w r3, -316(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -364(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r24
	storeli.w r3, -312(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -368(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r24
	storeli.w r3, -308(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -372(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r24
	storeli.w r3, -304(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -376(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r24
	storeli.w r3, -300(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -380(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r24
	storeli.w r3, -296(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -384(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r24
	storeli.w r3, -292(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -388(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r24
	storeli.w r3, -288(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -392(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r24
	storeli.w r3, -284(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -396(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r24
	storeli.w r3, -280(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -400(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r24
	storeli.w r3, -276(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -404(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r24
	addli r24, zero, 0
	storeli.w r3, -272(r30)                 # 4-byte Folded Spill
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	addli r6, zero, 0
	addli r3, zero, 0
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=2
.Ltmp5:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r15, r15, r6
	add.f.rn r4, r4, r3
	addli r24, r24, 4
	beq r24, r23, .LBB0_21
.Ltmp6:
.LBB0_19:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 61 35                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:61:35
	blt.s r1, r22, .LBB0_20
	j .LBB0_17
.LBB0_20:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 0 is_stmt 0                 # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:0:0
	add.s r3, r14, r24
	add.s r6, r17, r24
	load.hu r9, 4(r3)
	load.hu r12, 4(r6)
	load.hu r3, 6(r3)
	load.hu r6, 6(r6)
	add.hf.rn r3, r3, r6
	add.hf.rn r9, r9, r12
	hfloat2float.rn r6, r9
	hfloat2float.rn r3, r3
	sub.f.rn r6, r6, r2
	sub.f.rn r3, r3, r2
	mul.f.rn r6, r6, r6
	mul.f.rn r3, r3, r3
	.loc	1 61 35                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:61:35
	j .LBB0_18
.LBB0_21:                               #   in Loop: Header=BB0_2 Depth=1
.Ltmp7:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r1, r15, r4
	loadli.w r3,  -336(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r26
	sync_group
	bneq r27, zero, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r1, 0(r13)
	loads.w r15, 4(r13)
	loads.w r4, 8(r13)
	loads.w r3, 12(r13)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r1, r15
	add.f.rn r1, r1, r4
	loads.w r4, 16(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 20(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 24(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 28(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 32(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 36(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 40(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 44(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 48(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 52(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 56(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 60(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 64(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 68(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 72(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 76(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 80(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 84(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 88(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 92(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 96(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 100(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 104(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 108(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 112(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 116(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 120(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 124(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 128(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 132(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 136(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 140(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 144(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 148(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 152(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 156(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 160(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 164(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 168(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 172(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 176(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 180(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 184(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 188(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 192(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 196(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 200(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 204(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 208(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 212(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 216(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 220(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 224(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 228(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 232(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 236(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 240(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 244(r13)
	add.f.rn r1, r1, r4
	loads.w r4, 248(r13)
	add.f.rn r1, r1, r3
	loads.w r3, 252(r13)
	add.f.rn r1, r1, r4
	add.f.rn r1, r1, r3
	stores.w r1, 0(r13)
.Ltmp8:
.LBB0_23:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r26
	sync_group
	loads.w r1, 0(r13)
	.loc	1 67 20 is_stmt 1               # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:67:20
	loadli.w r3,  -440(r30)                 # 4-byte Folded Reload
	addli r27, r26, 0
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	addli r4, r18, 2
	addli r15, zero, 0
	.loc	1 65 21                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:65:21
	mul.f.rn r1, r1, r28
	.loc	1 67 20                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:67:20
	add.f.rn r1, r1, r3
	.loc	1 68 28                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:68:28
	lui r3, 260096
	sqrt.f.rn r1, r1
	div.f.rn r1, r3, r1
.LBB0_24:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 39 37                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:39:37
	add.s r6, r17, r15
	.loc	1 38 47                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:38:47
	add.s r3, r14, r15
	.loc	1 41 38                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:41:38
	add.s r28, r21, r15
	.loc	1 38 47                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:38:47
	load.hu r9, 0(r3)
	.loc	1 39 37                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:39:37
	load.hu r12, 0(r6)
	.loc	1 38 47                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:38:47
	load.hu r3, 2(r3)
	.loc	1 39 37                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:39:37
	load.hu r24, 2(r6)
	.loc	1 41 38                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:41:38
	load.hu r26, 0(r28)
	.loc	1 47 19                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:47:19
	add.hf.rn r9, r9, r12
	add.hf.rn r3, r3, r24
	.loc	1 40 38                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:40:38
	add.s r12, r18, r15
	add.s r24, r4, r15
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	addli r15, r15, 4
	.loc	1 40 38                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:40:38
	load.hu r12, 0(r12)
	load.hu r24, 0(r24)
	.loc	1 40 77 is_stmt 0               # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:40:77
	hfloat2float.rn r12, r12
	hfloat2float.rn r24, r24
	.loc	1 48 19 is_stmt 1               # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:48:19
	hfloat2float.rn r9, r9
	hfloat2float.rn r3, r3
	.loc	1 58 20                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:58:20
	sub.f.rn r9, r9, r2
	sub.f.rn r3, r3, r2
	.loc	1 69 20                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:69:20
	mul.f.rn r9, r1, r9
	mul.f.rn r3, r1, r3
	.loc	1 71 20                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:71:20
	mul.f.rn r9, r9, r12
	mul.f.rn r3, r3, r24
	.loc	1 41 38                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:41:38
	load.hu r12, 2(r28)
	.loc	1 41 77 is_stmt 0               # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:41:77
	hfloat2float.rn r24, r26
	hfloat2float.rn r12, r12
	.loc	1 73 20 is_stmt 1               # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:73:20
	add.f.rn r9, r9, r24
	add.f.rn r3, r3, r12
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	float2hfloat.rn r9, r9
	float2hfloat.rn r3, r3
	store.h r9, 0(r6)
	store.h r3, 2(r6)
	mfence { lm }
	bneq r15, r16, .LBB0_24
# %bb.25:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 75 25 is_stmt 0               # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	sext_int2long r[1:2], r11
	sext_int2long r[3:4], r10
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	lui r6, 983040
	loadli.w r9,  -268(r30)                 # 4-byte Folded Reload
	addli r11, r17, 22
	addli r26, r27, 0
	lui r28, 239616
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	sll.d r[1:2], r[1:2], r25
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	or r6, r7, r6
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	sll.d r[3:4], r[3:4], r25
	add.ul r[1:2], r[19:20], r[1:2]
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	s_lm2gm r6, r9, 0(r[1:2])
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	add.ul r[1:2], r[19:20], r[3:4]
	loadli.w r3,  -320(r30)                 # 4-byte Folded Reload
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	lui r6, 983040
	addli r9, r17, 4
	or r6, r7, r6
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	sext_int2long r[3:4], r3
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	s_lm2gm r6, r9, 0(r[1:2])
	lui r6, 983040
	addli r9, r17, 6
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	sll.d r[3:4], r[3:4], r25
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	or r6, r7, r6
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	add.ul r[1:2], r[19:20], r[3:4]
	loadli.w r3,  -316(r30)                 # 4-byte Folded Reload
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	s_lm2gm r6, r9, 0(r[1:2])
	lui r6, 983040
	addli r9, r17, 8
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	sext_int2long r[3:4], r3
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	or r6, r7, r6
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	sll.d r[3:4], r[3:4], r25
	add.ul r[1:2], r[19:20], r[3:4]
	loadli.w r3,  -312(r30)                 # 4-byte Folded Reload
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	s_lm2gm r6, r9, 0(r[1:2])
	lui r6, 983040
	addli r9, r17, 10
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	sext_int2long r[3:4], r3
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	or r6, r7, r6
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	sll.d r[3:4], r[3:4], r25
	add.ul r[1:2], r[19:20], r[3:4]
	loadli.w r3,  -308(r30)                 # 4-byte Folded Reload
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	s_lm2gm r6, r9, 0(r[1:2])
	lui r6, 983040
	addli r9, r17, 12
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	sext_int2long r[3:4], r3
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	or r6, r7, r6
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	sll.d r[3:4], r[3:4], r25
	add.ul r[1:2], r[19:20], r[3:4]
	loadli.w r3,  -304(r30)                 # 4-byte Folded Reload
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	s_lm2gm r6, r9, 0(r[1:2])
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	loadli.w r6,  -300(r30)                 # 4-byte Folded Reload
	sext_int2long r[3:4], r3
	sll.d r[3:4], r[3:4], r25
	sext_int2long r[9:10], r6
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	lui r6, 983040
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	add.ul r[1:2], r[19:20], r[3:4]
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	lui r3, 983040
	addli r4, r17, 14
	or r6, r7, r6
	or r3, r7, r3
	s_lm2gm r3, r4, 0(r[1:2])
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	loadli.w r3,  -296(r30)                 # 4-byte Folded Reload
	sll.d r[1:2], r[9:10], r25
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	addli r9, r17, 16
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	add.ul r[1:2], r[19:20], r[1:2]
	sext_int2long r[3:4], r3
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	s_lm2gm r6, r9, 0(r[1:2])
	lui r1, 983040
	addli r2, r17, 18
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	loadli.w r6,  -292(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[3:4], r25
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	or r1, r7, r1
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	add.ul r[3:4], r[19:20], r[3:4]
	sext_int2long r[9:10], r6
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	lui r6, 983040
	s_lm2gm r1, r2, 0(r[3:4])
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[9:10], r25
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	lui r10, 983040
	addli r9, r17, 20
	or r6, r7, r6
	or r10, r7, r10
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	add.ul r[3:4], r[19:20], r[3:4]
	sext_int2long r[1:2], r1
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	s_lm2gm r6, r9, 0(r[3:4])
	lui r3, 983040
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	loadli.w r4,  -284(r30)                 # 4-byte Folded Reload
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	lui r6, 983040
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	sll.d r[1:2], r[1:2], r25
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	or r3, r7, r3
	or r6, r7, r6
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	add.ul r[1:2], r[19:20], r[1:2]
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	s_lm2gm r10, r11, 0(r[1:2])
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	load.d r[1:2], -264(r30)                # 8-byte Folded Reload
	sext_int2long r[9:10], r4
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	addli r11, r17, 30
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	sll.d r[9:10], r[9:10], r25
	add.ul r[1:2], r[19:20], r[1:2]
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	s_lm2gm r3, r17, 0(r[1:2])
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	add.ul r[3:4], r[19:20], r[9:10]
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	addli r9, r17, 24
	s_lm2gm r6, r9, 0(r[3:4])
	lui r3, 983040
	addli r4, r17, 26
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	loadli.w r6,  -276(r30)                 # 4-byte Folded Reload
	sext_int2long r[1:2], r1
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	or r3, r7, r3
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	sll.d r[1:2], r[1:2], r25
	sext_int2long r[9:10], r6
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	lui r6, 983040
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	add.ul r[1:2], r[19:20], r[1:2]
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	or r6, r7, r6
	s_lm2gm r3, r4, 0(r[1:2])
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	loadli.w r1,  -272(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[9:10], r25
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	lui r10, 983040
	addli r9, r17, 28
	or r10, r7, r10
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	add.ul r[3:4], r[19:20], r[3:4]
	sext_int2long r[1:2], r1
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	s_lm2gm r6, r9, 0(r[3:4])
	.loc	1 75 25                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:25
	sll.d r[1:2], r[1:2], r25
	add.ul r[1:2], r[19:20], r[1:2]
	.loc	1 75 49                         # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:49
	s_lm2gm r10, r11, 0(r[1:2])
	loadli.w r1,  -344(r30)                 # 4-byte Folded Reload
	mfence { lm }
	loadli.w r27,  -436(r30)                # 4-byte Folded Reload
	add.s r5, r5, r1
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	blt.s r5, r1, .LBB0_2
.LBB0_26:                               # %._crit_edge
	.loc	1 75 4 epilogue_begin           # cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py:75:4
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
.asciz	"cvnfcaix2spev2mxnuesma7vpejx3p2l2jp3csbahpjrkcaq45q4.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/vn" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
