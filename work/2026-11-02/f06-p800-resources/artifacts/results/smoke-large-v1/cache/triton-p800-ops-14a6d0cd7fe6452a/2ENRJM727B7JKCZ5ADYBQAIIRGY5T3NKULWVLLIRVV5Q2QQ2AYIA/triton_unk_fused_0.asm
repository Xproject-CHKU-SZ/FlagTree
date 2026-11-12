	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/smoke-large-v1/cache/inductor/gc" "cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py"
	.loc	1 22 0                          # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1312
	lui r2, :hi20:global_smem
	core_id r1
	addli r30, sp, 1248
	lui r6, 260096
	load_param_i r17, 0
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r15,  52(r30)
	loadli.w r4,  48(r30)
	loadli.w r14,  56(r30)
	add.s r5, r3, r2
	mul.s r4, r15, r4
	stores.w zero, 0(r5)
	stores.w zero, 256(r5)
	storeli.w r5, -216(r30)                 # 4-byte Folded Spill
	stores.w r6, 512(r5)
	lui r5, 15
	mul.s r18, r4, r14
	mfence { lm, sm, gm }
	ori r16, r5, 4095
	csr_set csr3, r16
	sync_group
	ble.s r18, r17, .LBB0_203
# %bb.1:                                # %.lr.ph
	addli r8, zero, 64
	loadli.w r12,  -216(r30)                # 4-byte Folded Reload
	lui r13, 1048575
	addli r21, zero, 1
	load.d r[4:5], 24(r30)
	vxor.u.mz vr0{mr1}, vr0, vr0
	#APP
	vxor.s.mz vr1{mr1}, vr1, vr1
	#NO_APP
	load.d r[9:10], 8(r30)
	load.d r[6:7], 16(r30)
	load_param_i r20, 1
	storeli.w r16, -212(r30)                # 4-byte Folded Spill
	storeli.w r18, -224(r30)                # 4-byte Folded Spill
	vadd.s.mz vr2{mr1}, zero, vr0
	div.s r19, r1, r8
	ori r13, r13, 3840
	storeli.w r20, -240(r30)                # 4-byte Folded Spill
	addli r11, r12, 256
	addli r12, r12, 512
	and r3, r3, r13
	storeli.w r11, -232(r30)                # 4-byte Folded Spill
	storeli.w r12, -236(r30)                # 4-byte Folded Spill
	add.s r2, r3, r2
	slli r11, r19, 6
	storeli.w r2, -204(r30)                 # 4-byte Folded Spill
	storeli.w r19, -228(r30)                # 4-byte Folded Spill
	sub.s r11, r1, r11
	andi r1, r1, 63
	slli r11, r11, 5
	storeli.w r1, -268(r30)                 # 4-byte Folded Spill
	addli r1, r2, 256
	storeli.w r11, -244(r30)                # 4-byte Folded Spill
	sext_int2long r[11:12], r11
	storeli.w r1, -208(r30)                 # 4-byte Folded Spill
	addli r1, r2, 512
	sll.d r[11:12], r[11:12], r21
	storeli.w r1, -288(r30)                 # 4-byte Folded Spill
	lui r1, 260096
	vor.f.mz vr3{mr1}, r1, vr0
	add.ul r[1:2], r[4:5], r[11:12]
	add.ul r[9:10], r[9:10], r[11:12]
	add.ul r[6:7], r[6:7], r[11:12]
	addli r4, r30, -128
	store.d r[1:2], -280(r30)               # 8-byte Folded Spill
	lui r1, 15
	store.d r[9:10], -256(r30)              # 8-byte Folded Spill
	addli r2, zero, 2047
	addli r9, r30, -64
	store.d r[6:7], -264(r30)               # 8-byte Folded Spill
	addli r1, r1, 4095
	vmmov mr0, r1
	lui r1, 239665
	vor.f.mh vr2{mr0}, vr1, vr3
	ori r1, r1, 623
	storeli.w r1, -284(r30)                 # 4-byte Folded Spill
	lui r1, 8
	vadd.f.mz.rn vr3{mr1}, vr2, vr2
	vmmov mr3, r1
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	add.s r17, r17, r20
	blt.s r17, r18, .LBB0_3
	j .LBB0_203
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_201 Depth 2
	div.s r1, r17, r14
	div.s r1, r1, r15
.Ltmp0:
	.loc	1 28 23 prologue_end            # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:28:23
	add.s r1, r1, r19
	blt.s r2, r1, .LBB0_2
# %bb.4:                                # %.preheader.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 23 is_stmt 0                # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:0:23
	addli r2, zero, 0
.LBB0_5:                                # %.preheader
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 42 51 is_stmt 1               # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:42:51
	add.s r3, r4, r2
	addli r2, r2, 4
	store.h zero, 0(r3)
	store.h zero, 2(r3)
	mfence { lm }
	bneq r2, r8, .LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 42 41 is_stmt 0               # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:42:41
	loadli.w r2,  -244(r30)                 # 4-byte Folded Reload
	.loc	1 42 46                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:42:46
	slli r1, r1, 11
	.loc	1 42 34                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:42:34
	addli r3, zero, 1
	.loc	1 42 41                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:42:41
	add.s r1, r1, r2
	.loc	1 42 34                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:42:34
	sext_int2long r[1:2], r1
	sll.d r[5:6], r[1:2], r3
	load.d r[2:3], 0(r30)
	.loc	1 42 51                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:42:51
	lui r1, 983040
	or r1, r8, r1
	store.d r[5:6], -144(r30)               # 8-byte Folded Spill
	.loc	1 42 34                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:42:34
	add.ul r[2:3], r[2:3], r[5:6]
	.loc	1 42 51                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:42:51
	l_gm2lm r1, r4, 0(r[2:3])
	addli r1, zero, 0
.LBB0_7:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 43 41 is_stmt 1               # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:43:41
	add.s r2, r9, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r8, .LBB0_7
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	lui r1, 983040
	load.d r[2:3], -256(r30)                # 8-byte Folded Reload
	or r1, r8, r1
	l_gm2lm r1, r9, 0(r[2:3])
	addli r1, zero, 0
	.loc	1 42 51                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:42:51
	mfence { lm }
	.loc	1 45 23                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:45:23
	vload_mask16.mz vr4{mr1}, -128(r30)
	.loc	1 47 23                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:47:23
	vload_mask16.mz vr5{mr1}, -64(r30)
	.loc	1 43 41                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:43:41
	mfence { lm }
	.loc	1 45 23                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:45:23
	#APP
	vfp162float_l.rn vr6, vr4
	#NO_APP
	#APP
	vfp162float_h.rn vr7, vr4
	#NO_APP
	.loc	1 47 23                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:47:23
	#APP
	vfp162float_h.rn vr8, vr5
	#NO_APP
	#APP
	vfp162float_l.rn vr4, vr5
	#NO_APP
	.loc	1 48 22                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:48:22
	vadd.f.mz.rn vr5{mr1}, vr7, vr8
	.loc	1 56 64                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:56:64
	vadd.s.mz vr7{mr1}, zero, vr0
	.loc	1 48 22                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:48:22
	vadd.f.mz.rn vr4{mr1}, vr6, vr4
	.loc	1 56 64                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:56:64
	vadd.s.mz vr6{mr1}, zero, vr0
	.loc	1 49 23                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:49:23
	#APP
	vfloat2fp16_l.rn vr8, vr4
	vfloat2fp16_h.rn vr8, vr5
	#NO_APP
	.loc	1 50 23                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:50:23
	#APP
	vfp162float_h.rn vr5, vr8
	#NO_APP
	#APP
	vfp162float_l.rn vr4, vr8
	#NO_APP
	.loc	1 56 64                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:56:64
	vor.f.mh vr7{mr0}, vr1, vr5
	vor.f.mh vr6{mr0}, vr1, vr4
.LBB0_9:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 71 42                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:71:42
	add.s r2, r9, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r8, .LBB0_9
# %bb.10:                               #   in Loop: Header=BB0_3 Depth=1
	lui r1, 983040
	load.d r[2:3], -264(r30)                # 8-byte Folded Reload
	veq.f.mz mr2{mr1}, vr3, vr0
	vextracti.f r28, 0(vr3)
	addli r7, zero, 0
	vmmov r13, mr2
	or r1, r8, r1
	l_gm2lm r1, r9, 0(r[2:3])
	andi r1, r13, 1
	bneq r1, zero, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 42 is_stmt 0                # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:0:42
	vextracti.f r1, 0(vr2)
	div.f.rn r7, r1, r28
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	srli r1, r13, 15
	vextracti.f r2, 15(vr3)
	addli r4, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_3 Depth=1
	vextracti.f r1, 15(vr2)
	div.f.rn r4, r1, r2
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	srli r1, r13, 14
	vextracti.f r3, 14(vr3)
	addli r6, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_3 Depth=1
	vextracti.f r1, 14(vr2)
	div.f.rn r6, r1, r3
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
	srli r1, r13, 13
	vextracti.f r5, 13(vr3)
	addli r11, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_3 Depth=1
	vextracti.f r1, 13(vr2)
	div.f.rn r11, r1, r5
.LBB0_18:                               #   in Loop: Header=BB0_3 Depth=1
	srli r1, r13, 12
	vextracti.f r9, 12(vr3)
	addli r14, zero, 0
	storeli.w r17, -132(r30)                # 4-byte Folded Spill
	andi r1, r1, 1
	bneq r1, zero, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_3 Depth=1
	vextracti.f r1, 12(vr2)
	div.f.rn r14, r1, r9
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	srli r1, r13, 11
	vextracti.f r10, 11(vr3)
	addli r17, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_3 Depth=1
	vextracti.f r1, 11(vr2)
	div.f.rn r17, r1, r10
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=1
	srli r1, r13, 10
	vextracti.f r15, 10(vr3)
	addli r18, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_3 Depth=1
	vextracti.f r1, 10(vr2)
	div.f.rn r18, r1, r15
.LBB0_24:                               #   in Loop: Header=BB0_3 Depth=1
	srli r1, r13, 9
	storeli.w r2, -148(r30)                 # 4-byte Folded Spill
	vextracti.f r2, 9(vr3)
	addli r20, zero, 0
	storeli.w r9, -160(r30)                 # 4-byte Folded Spill
	storeli.w r3, -152(r30)                 # 4-byte Folded Spill
	andi r1, r1, 1
	bneq r1, zero, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_3 Depth=1
	vextracti.f r1, 9(vr2)
	div.f.rn r20, r1, r2
.LBB0_26:                               #   in Loop: Header=BB0_3 Depth=1
	srli r1, r13, 8
	vextracti.f r12, 8(vr3)
	addli r21, zero, 0
	storeli.w r2, -192(r30)                 # 4-byte Folded Spill
	andi r1, r1, 1
	bneq r1, zero, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_3 Depth=1
	vextracti.f r1, 8(vr2)
	div.f.rn r21, r1, r12
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	srli r2, r13, 7
	vextracti.f r8, 7(vr3)
	addli r3, r10, 0
	addli r23, zero, 0
	andi r2, r2, 1
	bneq r2, zero, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_3 Depth=1
	vextracti.f r2, 7(vr2)
	div.f.rn r23, r2, r8
.LBB0_30:                               #   in Loop: Header=BB0_3 Depth=1
	storeli.w r5, -156(r30)                 # 4-byte Folded Spill
	srli r5, r13, 6
	vextracti.f r2, 6(vr3)
	addli r1, r15, 0
	addli r24, zero, 0
	andi r5, r5, 1
	bneq r5, zero, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_3 Depth=1
	vextracti.f r5, 6(vr2)
	div.f.rn r24, r5, r2
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=1
	srli r5, r13, 5
	vextracti.f r10, 5(vr3)
	addli r25, zero, 0
	andi r5, r5, 1
	bneq r5, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_3 Depth=1
	vextracti.f r5, 5(vr2)
	div.f.rn r25, r5, r10
.LBB0_34:                               #   in Loop: Header=BB0_3 Depth=1
	srli r5, r13, 4
	vextracti.f r15, 4(vr3)
	addli r26, zero, 0
	andi r5, r5, 1
	bneq r5, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_3 Depth=1
	vextracti.f r5, 4(vr2)
	div.f.rn r26, r5, r15
.LBB0_36:                               #   in Loop: Header=BB0_3 Depth=1
	srli r5, r13, 3
	vextracti.f r19, 3(vr3)
	addli r27, zero, 0
	andi r5, r5, 1
	bneq r5, zero, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_3 Depth=1
	vextracti.f r5, 3(vr2)
	div.f.rn r27, r5, r19
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=1
	srli r5, r13, 2
	vextracti.f r22, 2(vr3)
	andi r9, r5, 1
	addli r5, zero, 0
	bneq r9, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_3 Depth=1
	vextracti.f r5, 2(vr2)
	div.f.rn r5, r5, r22
.LBB0_40:                               #   in Loop: Header=BB0_3 Depth=1
	srli r9, r13, 1
	vextracti.f r13, 1(vr3)
	andi r16, r9, 1
	addli r9, zero, 0
	bneq r16, zero, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_3 Depth=1
	vextracti.f r9, 1(vr2)
	div.f.rn r9, r9, r13
.LBB0_42:                               #   in Loop: Header=BB0_3 Depth=1
	vadd.s.mz vr8{mr1}, zero, vr0
	addli r16, zero, 1
	vmmov mr2, r16
	addli r16, zero, 8192
	vor.u.mh vr8{mr2}, r7, vr8
	addli r7, zero, 2
	vmmov mr2, r7
	addli r7, zero, 4
	vor.u.mh vr8{mr2}, r9, vr8
	vmmov mr2, r7
	add.f.rn r7, r28, r13
	addli r9, zero, 4096
	vor.u.mh vr8{mr2}, r5, vr8
	addli r5, zero, 8
	vmmov mr2, r5
	addli r5, zero, 16
	vor.u.mh vr8{mr2}, r27, vr8
	vmmov mr2, r5
	addli r5, zero, 32
	vor.u.mh vr8{mr2}, r26, vr8
	vmmov mr2, r5
	addli r5, zero, 64
	addli r26, zero, 0
	vor.u.mh vr8{mr2}, r25, vr8
	vmmov mr2, r5
	addli r5, zero, 128
	vor.u.mh vr8{mr2}, r24, vr8
	vmmov mr2, r5
	addli r5, zero, 256
	vor.u.mh vr8{mr2}, r23, vr8
	vmmov mr2, r5
	addli r5, zero, 512
	vor.u.mh vr8{mr2}, r21, vr8
	vmmov mr2, r5
	addli r5, zero, 1024
	vor.u.mh vr8{mr2}, r20, vr8
	vmmov mr2, r5
	addli r5, zero, 2048
	vor.u.mh vr8{mr2}, r18, vr8
	vmmov mr2, r5
	storeli.w r28, -168(r30)                # 4-byte Folded Spill
	slli r5, r7, 9
	seteq r5, r5, zero
	vor.u.mh vr8{mr2}, r17, vr8
	vmmov mr2, r9
	srli r9, r7, 23
	andi r9, r9, 255
	vor.u.mh vr8{mr2}, r14, vr8
	vmmov mr2, r16
	setle.f r14, zero, r7
	lui r16, 4
	vor.u.mh vr8{mr2}, r11, vr8
	setle.f r11, r7, zero
	vmmov mr2, r16
	vor.u.mh vr8{mr2}, r6, vr8
	setlti r6, r9, 255
	or r5, r6, r5
	and r6, r11, r14
	vor.u.mh vr8{mr3}, r4, vr8
	and r4, r6, r5
	bneq r4, zero, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r26, r13, r7
.LBB0_44:                               #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r11, r22, r7
	loadli.w r21,  -160(r30)                # 4-byte Folded Reload
	addli r24, r3, 0
	addli r16, r1, 0
	slli r4, r11, 9
	setle.f r6, zero, r11
	setle.f r9, r11, zero
	srli r5, r11, 23
	seteq r4, r4, zero
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r9, r6
	and r4, r5, r4
	addli r5, zero, 0
	bneq r4, zero, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r5, r22, r11
.LBB0_46:                               #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r13, r19, r11
	storeli.w r5, -164(r30)                 # 4-byte Folded Spill
	addli r23, zero, 0
	slli r4, r13, 9
	setle.f r6, zero, r13
	setle.f r9, r13, zero
	srli r5, r13, 23
	seteq r4, r4, zero
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r9, r6
	and r4, r5, r4
	bneq r4, zero, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r23, r19, r13
.LBB0_48:                               #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r14, r15, r13
	addli r1, zero, 0
	slli r4, r14, 9
	setle.f r6, zero, r14
	setle.f r9, r14, zero
	srli r5, r14, 23
	seteq r4, r4, zero
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r9, r6
	and r4, r5, r4
	bneq r4, zero, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r1, r15, r14
.LBB0_50:                               #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r17, r10, r14
	addli r3, zero, 0
	slli r4, r17, 9
	setle.f r6, zero, r17
	setle.f r9, r17, zero
	srli r5, r17, 23
	seteq r4, r4, zero
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r9, r6
	and r4, r5, r4
	bneq r4, zero, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r10, r17
.LBB0_52:                               #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r20, r2, r17
	slli r4, r20, 9
	setle.f r6, zero, r20
	setle.f r9, r20, zero
	srli r5, r20, 23
	seteq r4, r4, zero
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r9, r6
	and r4, r5, r4
	addli r5, zero, 0
	bneq r4, zero, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r5, r2, r20
.LBB0_54:                               #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r22, r8, r20
	storeli.w r5, -180(r30)                 # 4-byte Folded Spill
	loadli.w r10,  -156(r30)                # 4-byte Folded Reload
	storeli.w r1, -172(r30)                 # 4-byte Folded Spill
	addli r1, zero, 0
	slli r2, r22, 9
	setle.f r5, zero, r22
	setle.f r6, r22, zero
	srli r4, r22, 23
	seteq r2, r2, zero
	andi r4, r4, 255
	setlti r4, r4, 255
	or r2, r4, r2
	and r4, r6, r5
	and r4, r4, r2
	bneq r4, zero, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r1, r8, r22
.LBB0_56:                               #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r27, r12, r22
	storeli.w r1, -184(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -192(r30)                 # 4-byte Folded Reload
	storeli.w r3, -176(r30)                 # 4-byte Folded Spill
	slli r1, r27, 9
	setle.f r5, zero, r27
	setle.f r6, r27, zero
	srli r4, r27, 23
	seteq r1, r1, zero
	andi r4, r4, 255
	setlti r4, r4, 255
	or r1, r4, r1
	and r4, r6, r5
	and r4, r4, r1
	addli r1, zero, 0
	bneq r4, zero, .LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r1, r12, r27
.LBB0_58:                               #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r6, r2, r27
	storeli.w r1, -188(r30)                 # 4-byte Folded Spill
	addli r1, zero, 0
	slli r3, r6, 9
	setle.f r5, zero, r6
	setle.f r9, r6, zero
	srli r4, r6, 23
	seteq r3, r3, zero
	andi r4, r4, 255
	setlti r4, r4, 255
	or r3, r4, r3
	and r4, r9, r5
	and r4, r4, r3
	bneq r4, zero, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r1, r2, r6
.LBB0_60:                               #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r28, r16, r6
	storeli.w r1, -192(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -148(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -152(r30)                 # 4-byte Folded Reload
	addli r3, zero, 0
	slli r4, r28, 9
	setle.f r9, zero, r28
	setle.f r15, r28, zero
	srli r5, r28, 23
	seteq r4, r4, zero
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r15, r9
	and r5, r5, r4
	bneq r5, zero, .LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r16, r28
.LBB0_62:                               #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r16, r24, r28
	addli r4, zero, 0
	slli r5, r16, 9
	setle.f r15, zero, r16
	setle.f r18, r16, zero
	srli r9, r16, 23
	seteq r5, r5, zero
	andi r9, r9, 255
	setlti r9, r9, 255
	or r5, r9, r5
	and r9, r18, r15
	and r5, r9, r5
	bneq r5, zero, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r4, r24, r16
.LBB0_64:                               #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r9, r21, r16
	addli r8, zero, 0
	slli r5, r9, 9
	setle.f r18, zero, r9
	setle.f r19, r9, zero
	srli r15, r9, 23
	seteq r5, r5, zero
	andi r15, r15, 255
	setlti r15, r15, 255
	or r5, r15, r5
	and r15, r19, r18
	and r5, r15, r5
	bneq r5, zero, .LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r8, r21, r9
.LBB0_66:                               #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r5, r10, r9
	addli r12, zero, 0
	slli r15, r5, 9
	setle.f r19, zero, r5
	setle.f r21, r5, zero
	srli r18, r5, 23
	seteq r15, r15, zero
	andi r18, r18, 255
	setlti r18, r18, 255
	or r15, r18, r15
	and r18, r21, r19
	and r18, r18, r15
	bneq r18, zero, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r12, r10, r5
.LBB0_68:                               #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r25, r2, r5
	addli r10, zero, 0
	slli r18, r25, 9
	setle.f r21, zero, r25
	setle.f r24, r25, zero
	srli r19, r25, 23
	seteq r18, r18, zero
	andi r19, r19, 255
	setlti r19, r19, 255
	or r18, r19, r18
	and r19, r24, r21
	and r19, r19, r18
	bneq r19, zero, .LBB0_70
# %bb.69:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r10, r2, r25
.LBB0_70:                               #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r21, r1, r25
	storeli.w r10, -200(r30)                # 4-byte Folded Spill
	storeli.w r3, -152(r30)                 # 4-byte Folded Spill
	addli r3, zero, 0
	storeli.w r12, -196(r30)                # 4-byte Folded Spill
	storeli.w r8, -160(r30)                 # 4-byte Folded Spill
	storeli.w r4, -156(r30)                 # 4-byte Folded Spill
	slli r19, r21, 9
	setle.f r10, zero, r21
	setle.f r2, r21, zero
	srli r24, r21, 23
	seteq r19, r19, zero
	andi r24, r24, 255
	setlti r24, r24, 255
	and r2, r2, r10
	or r19, r24, r19
	and r2, r2, r19
	bneq r2, zero, .LBB0_72
# %bb.71:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r1, r21
.LBB0_72:                               #   in Loop: Header=BB0_3 Depth=1
	vsub.f.mz.rn vr7{mr1}, vr7, vr6
	loadli.w r1,  -236(r30)                 # 4-byte Folded Reload
	loadli.w r18,  -164(r30)                # 4-byte Folded Reload
	addli r19, r23, 0
	storeli.w r3, -148(r30)                 # 4-byte Folded Spill
	loadli.w r12,  -172(r30)                # 4-byte Folded Reload
	loadli.w r8,  -176(r30)                 # 4-byte Folded Reload
	loadli.w r15,  -168(r30)                # 4-byte Folded Reload
	stores.w r21, 0(r1)
	vmul.f.mz.rn vr9{mr1}, vr7, vr8
	vmul.f.mz.rn vr7{mr1}, vr7, vr7
	vadd.f.mz.rn vr6{mr1}, vr6, vr9
	vmul.f.mz.rn vr7{mr1}, vr2, vr7
	vextracti.f r2, 0(vr6)
	vextracti.f r10, 1(vr6)
	vmul.f.mz.rn vr7{mr1}, vr7, vr8
	sub.f.rn r10, r10, r2
	vadd.f.mz.rn vr7{mr1}, zero, vr7
	vextracti.f r23, 1(vr7)
	mul.f.rn r21, r26, r10
	mul.f.rn r10, r10, r10
	add.f.rn r2, r2, r21
	vextracti.f r21, 2(vr6)
	mul.f.rn r10, r15, r10
	addli r15, r26, 0
	vextracti.f r26, 0(vr7)
	sub.f.rn r24, r21, r2
	mul.f.rn r10, r15, r10
	loadli.w r15,  -180(r30)                # 4-byte Folded Reload
	mul.f.rn r21, r18, r24
	mul.f.rn r24, r24, r24
	add.f.rn r2, r2, r21
	vextracti.f r21, 3(vr6)
	mul.f.rn r7, r7, r24
	sub.f.rn r1, r21, r2
	mul.f.rn r7, r18, r7
	loadli.w r18,  -184(r30)                # 4-byte Folded Reload
	mul.f.rn r21, r19, r1
	mul.f.rn r1, r1, r1
	add.f.rn r2, r2, r21
	vextracti.f r21, 4(vr6)
	mul.f.rn r1, r11, r1
	vextracti.f r11, 5(vr7)
	sub.f.rn r3, r21, r2
	mul.f.rn r1, r19, r1
	mul.f.rn r21, r12, r3
	mul.f.rn r3, r3, r3
	add.f.rn r2, r2, r21
	vextracti.f r21, 5(vr6)
	mul.f.rn r3, r13, r3
	sub.f.rn r21, r21, r2
	mul.f.rn r3, r12, r3
	loadli.w r12,  -188(r30)                # 4-byte Folded Reload
	mul.f.rn r4, r8, r21
	add.f.rn r2, r2, r4
	add.f.rn r4, r26, r23
	vextracti.f r23, 6(vr6)
	sub.f.rn r23, r23, r2
	add.f.rn r4, r4, r10
	vextracti.f r10, 2(vr7)
	mul.f.rn r24, r15, r23
	add.f.rn r4, r10, r4
	vextracti.f r10, 7(vr6)
	add.f.rn r2, r2, r24
	add.f.rn r4, r4, r7
	sub.f.rn r7, r10, r2
	vextracti.f r10, 3(vr7)
	add.f.rn r4, r10, r4
	mul.f.rn r10, r18, r7
	mul.f.rn r7, r7, r7
	add.f.rn r1, r4, r1
	vextracti.f r4, 4(vr7)
	add.f.rn r2, r2, r10
	vextracti.f r10, 8(vr6)
	add.f.rn r1, r4, r1
	sub.f.rn r4, r10, r2
	mul.f.rn r10, r21, r21
	add.f.rn r1, r1, r3
	mul.f.rn r3, r12, r4
	mul.f.rn r10, r14, r10
	mul.f.rn r4, r4, r4
	add.f.rn r1, r11, r1
	vextracti.f r11, 9(vr6)
	add.f.rn r2, r2, r3
	mul.f.rn r3, r8, r10
	mul.f.rn r10, r23, r23
	loadli.w r8,  -192(r30)                 # 4-byte Folded Reload
	sub.f.rn r11, r11, r2
	add.f.rn r1, r1, r3
	mul.f.rn r3, r17, r10
	vextracti.f r10, 6(vr7)
	mul.f.rn r13, r8, r11
	add.f.rn r1, r10, r1
	mul.f.rn r3, r15, r3
	vextracti.f r10, 10(vr6)
	add.f.rn r2, r2, r13
	add.f.rn r1, r1, r3
	mul.f.rn r3, r20, r7
	vextracti.f r7, 7(vr7)
	loadli.w r13,  -152(r30)                # 4-byte Folded Reload
	sub.f.rn r10, r10, r2
	add.f.rn r1, r7, r1
	mul.f.rn r3, r18, r3
	mul.f.rn r7, r13, r10
	add.f.rn r1, r1, r3
	mul.f.rn r3, r22, r4
	vextracti.f r4, 8(vr7)
	add.f.rn r2, r2, r7
	vextracti.f r7, 11(vr6)
	add.f.rn r1, r4, r1
	mul.f.rn r3, r12, r3
	mul.f.rn r4, r11, r11
	loadli.w r12,  -156(r30)                # 4-byte Folded Reload
	vextracti.f r11, 9(vr7)
	sub.f.rn r7, r7, r2
	add.f.rn r1, r1, r3
	mul.f.rn r3, r27, r4
	mul.f.rn r4, r12, r7
	mul.f.rn r3, r8, r3
	add.f.rn r1, r11, r1
	loadli.w r8,  -160(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r7, r7
	add.f.rn r2, r2, r4
	mul.f.rn r4, r10, r10
	vextracti.f r10, 12(vr6)
	add.f.rn r1, r1, r3
	sub.f.rn r3, r10, r2
	mul.f.rn r4, r6, r4
	vextracti.f r6, 10(vr7)
	loadli.w r10,  -196(r30)                # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	mul.f.rn r6, r8, r3
	mul.f.rn r4, r13, r4
	mul.f.rn r3, r3, r3
	add.f.rn r2, r2, r6
	vextracti.f r6, 13(vr6)
	add.f.rn r1, r1, r4
	mul.f.rn r4, r28, r7
	vextracti.f r7, 11(vr7)
	mul.f.rn r3, r16, r3
	sub.f.rn r6, r6, r2
	add.f.rn r1, r7, r1
	mul.f.rn r4, r12, r4
	mul.f.rn r3, r8, r3
	loadli.w r8,  -200(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r10, r6
	add.f.rn r1, r1, r4
	vextracti.f r4, 12(vr7)
	add.f.rn r2, r2, r7
	vextracti.f r7, 14(vr6)
	add.f.rn r1, r4, r1
	mul.f.rn r4, r6, r6
	sub.f.rn r6, r7, r2
	add.f.rn r1, r1, r3
	mul.f.rn r3, r9, r4
	vextracti.f r4, 13(vr7)
	mul.f.rn r7, r8, r6
	add.f.rn r1, r4, r1
	mul.f.rn r3, r10, r3
	mul.f.rn r4, r6, r6
	vextracti.f r6, 15(vr6)
	add.f.rn r2, r2, r7
	add.f.rn r1, r1, r3
	mul.f.rn r3, r5, r4
	vextracti.f r5, 14(vr7)
	sub.f.rn r4, r6, r2
	add.f.rn r1, r5, r1
	mul.f.rn r3, r8, r3
	loadli.w r6,  -148(r30)                 # 4-byte Folded Reload
	addli r8, zero, 64
	mul.f.rn r5, r4, r4
	add.f.rn r1, r1, r3
	mul.f.rn r4, r6, r4
	mul.f.rn r3, r25, r5
	vextracti.f r5, 15(vr7)
	add.f.rn r2, r2, r4
	add.f.rn r1, r5, r1
	mul.f.rn r3, r6, r3
	add.f.rn r1, r1, r3
	loadli.w r3,  -216(r30)                 # 4-byte Folded Reload
	stores.w r2, 0(r3)
	loadli.w r2,  -232(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	loadli.w r16,  -212(r30)                # 4-byte Folded Reload
	csr_set csr3, r16
	sync_group
	loadli.w r1,  -268(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_200
# %bb.73:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r7,  -288(r30)                 # 4-byte Folded Reload
	addli r9, zero, 0
	loads.w r2, 0(r7)
	loads.w r1, 4(r7)
	add.f.rn r6, r2, r1
	storeli.w r2, -416(r30)                 # 4-byte Folded Spill
	slli r2, r6, 9
	setle.f r4, r9, r6
	setle.f r5, r6, r9
	srli r3, r6, 23
	seteq r2, r2, r9
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r9, 0
	bneq r2, zero, .LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r1, r6
.LBB0_75:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r1, 8(r7)
	storeli.w r3, -436(r30)                 # 4-byte Folded Spill
	add.f.rn r10, r6, r1
	slli r2, r10, 9
	setle.f r4, r9, r10
	setle.f r5, r10, r9
	srli r3, r10, 23
	seteq r2, r2, r9
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r9, 0
	bneq r2, zero, .LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r1, r10
.LBB0_77:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r1, 12(r7)
	storeli.w r3, -452(r30)                 # 4-byte Folded Spill
	add.f.rn r11, r10, r1
	slli r2, r11, 9
	setle.f r4, r9, r11
	setle.f r5, r11, r9
	srli r3, r11, 23
	seteq r2, r2, r9
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r9, 0
	bneq r2, zero, .LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r1, r11
.LBB0_79:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r1, 16(r7)
	storeli.w r3, -464(r30)                 # 4-byte Folded Spill
	add.f.rn r13, r11, r1
	slli r2, r13, 9
	setle.f r4, r9, r13
	setle.f r5, r13, r9
	srli r3, r13, 23
	seteq r2, r2, r9
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r9, 0
	bneq r2, zero, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r1, r13
.LBB0_81:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r1, 20(r7)
	storeli.w r3, -480(r30)                 # 4-byte Folded Spill
	add.f.rn r14, r13, r1
	slli r2, r14, 9
	setle.f r4, r9, r14
	setle.f r5, r14, r9
	srli r3, r14, 23
	seteq r2, r2, r9
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r9, 0
	bneq r2, zero, .LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r1, r14
.LBB0_83:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r1, 24(r7)
	storeli.w r3, -496(r30)                 # 4-byte Folded Spill
	add.f.rn r15, r14, r1
	slli r2, r15, 9
	setle.f r4, r9, r15
	setle.f r5, r15, r9
	srli r3, r15, 23
	seteq r2, r2, r9
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r9, 0
	bneq r2, zero, .LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r1, r15
.LBB0_85:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r1, 28(r7)
	storeli.w r3, -512(r30)                 # 4-byte Folded Spill
	add.f.rn r16, r15, r1
	slli r2, r16, 9
	setle.f r4, r9, r16
	setle.f r5, r16, r9
	srli r3, r16, 23
	seteq r2, r2, r9
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r9, 0
	bneq r2, zero, .LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r1, r16
.LBB0_87:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r1, 32(r7)
	storeli.w r3, -532(r30)                 # 4-byte Folded Spill
	add.f.rn r17, r16, r1
	slli r2, r17, 9
	setle.f r4, r9, r17
	setle.f r5, r17, r9
	srli r3, r17, 23
	seteq r2, r2, r9
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r9, 0
	bneq r2, zero, .LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r1, r17
.LBB0_89:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r1, 36(r7)
	storeli.w r3, -148(r30)                 # 4-byte Folded Spill
	add.f.rn r18, r17, r1
	slli r2, r18, 9
	setle.f r4, r9, r18
	setle.f r5, r18, r9
	srli r3, r18, 23
	seteq r2, r2, r9
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r9, 0
	bneq r2, zero, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r1, r18
.LBB0_91:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r1, 40(r7)
	storeli.w r6, -404(r30)                 # 4-byte Folded Spill
	storeli.w r3, -152(r30)                 # 4-byte Folded Spill
	storeli.w r17, -516(r30)                # 4-byte Folded Spill
	storeli.w r16, -500(r30)                # 4-byte Folded Spill
	storeli.w r15, -492(r30)                # 4-byte Folded Spill
	storeli.w r14, -476(r30)                # 4-byte Folded Spill
	storeli.w r13, -456(r30)                # 4-byte Folded Spill
	storeli.w r11, -440(r30)                # 4-byte Folded Spill
	storeli.w r10, -420(r30)                # 4-byte Folded Spill
	storeli.w r18, -536(r30)                # 4-byte Folded Spill
	add.f.rn r6, r18, r1
	slli r2, r6, 9
	setle.f r4, r9, r6
	setle.f r5, r6, r9
	srli r3, r6, 23
	seteq r2, r2, r9
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r9, 0
	bneq r2, zero, .LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r1, r6
.LBB0_93:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r2,  -204(r30)                 # 4-byte Folded Reload
	loads.w r26, 44(r7)
	storeli.w r3, -156(r30)                 # 4-byte Folded Spill
	storeli.w r6, -548(r30)                 # 4-byte Folded Spill
	loads.w r24, 48(r7)
	loads.w r22, 52(r7)
	loads.w r21, 56(r7)
	loads.w r20, 60(r7)
	loads.w r18, 64(r7)
	loads.w r17, 68(r7)
	loads.w r16, 76(r7)
	loads.w r25, 80(r7)
	loads.w r23, 84(r7)
	loads.w r12, 88(r7)
	loads.w r10, 104(r7)
	loads.w r11, 112(r7)
	loads.w r15, 140(r7)
	loads.w r13, 168(r7)
	loads.w r14, 176(r7)
	loads.w r4, 208(r7)
	loads.w r1, 0(r2)
	loads.w r3, 96(r2)
	add.f.rn r5, r6, r26
	loads.w r6, 108(r7)
	storeli.w r1, -768(r30)                 # 4-byte Folded Spill
	loads.w r1, 4(r2)
	storeli.w r3, -740(r30)                 # 4-byte Folded Spill
	loads.w r3, 164(r7)
	setle.f r28, r9, r5
	srli r27, r5, 23
	andi r27, r27, 255
	setlti r27, r27, 255
	storeli.w r1, -772(r30)                 # 4-byte Folded Spill
	loads.w r1, 8(r2)
	storeli.w r3, -1064(r30)                # 4-byte Folded Spill
	loads.w r3, 172(r7)
	storeli.w r1, -764(r30)                 # 4-byte Folded Spill
	loads.w r1, 12(r2)
	storeli.w r3, -1080(r30)                # 4-byte Folded Spill
	loads.w r3, 180(r7)
	storeli.w r1, -752(r30)                 # 4-byte Folded Spill
	loads.w r1, 16(r2)
	storeli.w r3, -1096(r30)                # 4-byte Folded Spill
	loads.w r3, 184(r7)
	storeli.w r1, -744(r30)                 # 4-byte Folded Spill
	loads.w r1, 20(r2)
	storeli.w r3, -1112(r30)                # 4-byte Folded Spill
	loads.w r3, 188(r7)
	storeli.w r1, -736(r30)                 # 4-byte Folded Spill
	loads.w r1, 24(r2)
	storeli.w r3, -1032(r30)                # 4-byte Folded Spill
	loads.w r3, 192(r7)
	storeli.w r1, -728(r30)                 # 4-byte Folded Spill
	loads.w r1, 28(r2)
	storeli.w r3, -1120(r30)                # 4-byte Folded Spill
	loads.w r3, 196(r7)
	storeli.w r1, -716(r30)                 # 4-byte Folded Spill
	loads.w r1, 32(r2)
	storeli.w r3, -1128(r30)                # 4-byte Folded Spill
	loads.w r3, 200(r7)
	storeli.w r1, -708(r30)                 # 4-byte Folded Spill
	loads.w r1, 36(r2)
	storeli.w r3, -1016(r30)                # 4-byte Folded Spill
	loads.w r3, 204(r7)
	storeli.w r1, -856(r30)                 # 4-byte Folded Spill
	loads.w r1, 40(r2)
	storeli.w r3, -1004(r30)                # 4-byte Folded Spill
	loads.w r3, 212(r7)
	storeli.w r1, -848(r30)                 # 4-byte Folded Spill
	loads.w r1, 44(r2)
	storeli.w r3, -996(r30)                 # 4-byte Folded Spill
	loads.w r3, 216(r7)
	storeli.w r1, -844(r30)                 # 4-byte Folded Spill
	loads.w r1, 48(r2)
	storeli.w r3, -988(r30)                 # 4-byte Folded Spill
	loads.w r3, 220(r7)
	storeli.w r1, -832(r30)                 # 4-byte Folded Spill
	loads.w r1, 52(r2)
	storeli.w r3, -968(r30)                 # 4-byte Folded Spill
	loads.w r3, 224(r7)
	storeli.w r1, -824(r30)                 # 4-byte Folded Spill
	loads.w r1, 56(r2)
	storeli.w r3, -964(r30)                 # 4-byte Folded Spill
	loads.w r3, 228(r7)
	storeli.w r1, -816(r30)                 # 4-byte Folded Spill
	loads.w r1, 60(r2)
	storeli.w r3, -960(r30)                 # 4-byte Folded Spill
	loads.w r3, 232(r7)
	storeli.w r1, -808(r30)                 # 4-byte Folded Spill
	loads.w r1, 64(r2)
	storeli.w r3, -956(r30)                 # 4-byte Folded Spill
	loads.w r3, 236(r7)
	storeli.w r1, -800(r30)                 # 4-byte Folded Spill
	loads.w r1, 68(r2)
	storeli.w r3, -928(r30)                 # 4-byte Folded Spill
	loads.w r3, 240(r7)
	storeli.w r1, -788(r30)                 # 4-byte Folded Spill
	loads.w r1, 72(r2)
	storeli.w r3, -916(r30)                 # 4-byte Folded Spill
	loads.w r3, 244(r7)
	storeli.w r1, -776(r30)                 # 4-byte Folded Spill
	loads.w r1, 76(r2)
	storeli.w r3, -888(r30)                 # 4-byte Folded Spill
	loads.w r3, 248(r7)
	storeli.w r1, -828(r30)                 # 4-byte Folded Spill
	loads.w r1, 80(r2)
	storeli.w r3, -884(r30)                 # 4-byte Folded Spill
	setle.f r3, r5, r9
	and r3, r3, r28
	storeli.w r1, -812(r30)                 # 4-byte Folded Spill
	loads.w r1, 84(r2)
	storeli.w r1, -796(r30)                 # 4-byte Folded Spill
	loads.w r1, 88(r2)
	storeli.w r1, -780(r30)                 # 4-byte Folded Spill
	loads.w r1, 92(r2)
	storeli.w r1, -756(r30)                 # 4-byte Folded Spill
	slli r1, r5, 9
	seteq r19, r1, r9
	loads.w r1, 100(r2)
	or r19, r27, r19
	and r3, r3, r19
	storeli.w r1, -720(r30)                 # 4-byte Folded Spill
	loads.w r1, 104(r2)
	storeli.w r1, -704(r30)                 # 4-byte Folded Spill
	loads.w r1, 108(r2)
	storeli.w r1, -688(r30)                 # 4-byte Folded Spill
	loads.w r1, 112(r2)
	storeli.w r1, -680(r30)                 # 4-byte Folded Spill
	loads.w r1, 116(r2)
	storeli.w r1, -672(r30)                 # 4-byte Folded Spill
	loads.w r1, 120(r2)
	storeli.w r1, -660(r30)                 # 4-byte Folded Spill
	loads.w r1, 124(r2)
	storeli.w r1, -652(r30)                 # 4-byte Folded Spill
	loads.w r1, 128(r2)
	storeli.w r1, -644(r30)                 # 4-byte Folded Spill
	loads.w r1, 132(r2)
	storeli.w r1, -632(r30)                 # 4-byte Folded Spill
	loads.w r1, 136(r2)
	storeli.w r1, -624(r30)                 # 4-byte Folded Spill
	loads.w r1, 140(r2)
	storeli.w r1, -616(r30)                 # 4-byte Folded Spill
	loads.w r1, 144(r2)
	storeli.w r1, -604(r30)                 # 4-byte Folded Spill
	loads.w r1, 148(r2)
	storeli.w r1, -596(r30)                 # 4-byte Folded Spill
	loads.w r1, 152(r2)
	storeli.w r1, -584(r30)                 # 4-byte Folded Spill
	loads.w r1, 156(r2)
	storeli.w r1, -576(r30)                 # 4-byte Folded Spill
	loads.w r1, 160(r2)
	storeli.w r1, -564(r30)                 # 4-byte Folded Spill
	loads.w r1, 164(r2)
	storeli.w r1, -556(r30)                 # 4-byte Folded Spill
	loads.w r1, 168(r2)
	storeli.w r1, -544(r30)                 # 4-byte Folded Spill
	loads.w r1, 172(r2)
	storeli.w r1, -524(r30)                 # 4-byte Folded Spill
	loads.w r1, 176(r2)
	storeli.w r1, -508(r30)                 # 4-byte Folded Spill
	loads.w r1, 180(r2)
	storeli.w r1, -484(r30)                 # 4-byte Folded Spill
	loads.w r1, 184(r2)
	storeli.w r1, -468(r30)                 # 4-byte Folded Spill
	loads.w r1, 188(r2)
	storeli.w r1, -448(r30)                 # 4-byte Folded Spill
	loads.w r1, 192(r2)
	storeli.w r1, -428(r30)                 # 4-byte Folded Spill
	loads.w r1, 196(r2)
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	loads.w r1, 200(r2)
	storeli.w r1, -396(r30)                 # 4-byte Folded Spill
	loads.w r1, 204(r2)
	storeli.w r1, -388(r30)                 # 4-byte Folded Spill
	loads.w r1, 208(r2)
	storeli.w r1, -376(r30)                 # 4-byte Folded Spill
	loads.w r1, 212(r2)
	storeli.w r1, -368(r30)                 # 4-byte Folded Spill
	loads.w r1, 216(r2)
	storeli.w r1, -360(r30)                 # 4-byte Folded Spill
	loads.w r1, 220(r2)
	storeli.w r1, -348(r30)                 # 4-byte Folded Spill
	loads.w r1, 224(r2)
	storeli.w r1, -340(r30)                 # 4-byte Folded Spill
	loads.w r1, 228(r2)
	storeli.w r1, -328(r30)                 # 4-byte Folded Spill
	loads.w r1, 232(r2)
	storeli.w r1, -320(r30)                 # 4-byte Folded Spill
	loads.w r1, 236(r2)
	storeli.w r1, -308(r30)                 # 4-byte Folded Spill
	loads.w r1, 240(r2)
	storeli.w r1, -304(r30)                 # 4-byte Folded Spill
	loads.w r1, 244(r2)
	storeli.w r1, -300(r30)                 # 4-byte Folded Spill
	loads.w r1, 248(r2)
	storeli.w r1, -296(r30)                 # 4-byte Folded Spill
	loads.w r1, 252(r2)
	storeli.w r1, -292(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -208(r30)                 # 4-byte Folded Reload
	loads.w r2, 0(r1)
	storeli.w r2, -944(r30)                 # 4-byte Folded Spill
	loads.w r2, 4(r1)
	storeli.w r2, -952(r30)                 # 4-byte Folded Spill
	loads.w r2, 8(r1)
	storeli.w r2, -868(r30)                 # 4-byte Folded Spill
	loads.w r2, 12(r1)
	storeli.w r2, -864(r30)                 # 4-byte Folded Spill
	loads.w r2, 16(r1)
	storeli.w r2, -860(r30)                 # 4-byte Folded Spill
	loads.w r2, 20(r1)
	storeli.w r2, -852(r30)                 # 4-byte Folded Spill
	loads.w r2, 24(r1)
	storeli.w r2, -840(r30)                 # 4-byte Folded Spill
	loads.w r2, 28(r1)
	storeli.w r2, -836(r30)                 # 4-byte Folded Spill
	loads.w r2, 32(r1)
	storeli.w r2, -820(r30)                 # 4-byte Folded Spill
	loads.w r2, 36(r1)
	storeli.w r2, -804(r30)                 # 4-byte Folded Spill
	loads.w r2, 40(r1)
	storeli.w r2, -792(r30)                 # 4-byte Folded Spill
	loads.w r2, 44(r1)
	storeli.w r2, -784(r30)                 # 4-byte Folded Spill
	loads.w r2, 48(r1)
	storeli.w r2, -760(r30)                 # 4-byte Folded Spill
	loads.w r2, 52(r1)
	storeli.w r2, -748(r30)                 # 4-byte Folded Spill
	loads.w r2, 56(r1)
	storeli.w r2, -732(r30)                 # 4-byte Folded Spill
	loads.w r2, 60(r1)
	storeli.w r2, -724(r30)                 # 4-byte Folded Spill
	loads.w r2, 64(r1)
	storeli.w r2, -712(r30)                 # 4-byte Folded Spill
	loads.w r2, 68(r1)
	storeli.w r2, -700(r30)                 # 4-byte Folded Spill
	loads.w r2, 72(r1)
	storeli.w r2, -696(r30)                 # 4-byte Folded Spill
	loads.w r2, 76(r1)
	storeli.w r2, -684(r30)                 # 4-byte Folded Spill
	loads.w r2, 80(r1)
	storeli.w r2, -676(r30)                 # 4-byte Folded Spill
	loads.w r2, 84(r1)
	storeli.w r2, -668(r30)                 # 4-byte Folded Spill
	loads.w r2, 88(r1)
	storeli.w r2, -664(r30)                 # 4-byte Folded Spill
	loads.w r2, 92(r1)
	storeli.w r2, -656(r30)                 # 4-byte Folded Spill
	loads.w r2, 96(r1)
	storeli.w r2, -648(r30)                 # 4-byte Folded Spill
	loads.w r2, 100(r1)
	storeli.w r2, -640(r30)                 # 4-byte Folded Spill
	loads.w r2, 104(r1)
	storeli.w r2, -636(r30)                 # 4-byte Folded Spill
	loads.w r2, 108(r1)
	storeli.w r2, -628(r30)                 # 4-byte Folded Spill
	loads.w r2, 112(r1)
	storeli.w r2, -620(r30)                 # 4-byte Folded Spill
	loads.w r2, 116(r1)
	storeli.w r2, -612(r30)                 # 4-byte Folded Spill
	loads.w r2, 120(r1)
	storeli.w r2, -608(r30)                 # 4-byte Folded Spill
	loads.w r2, 124(r1)
	storeli.w r2, -600(r30)                 # 4-byte Folded Spill
	loads.w r2, 128(r1)
	storeli.w r2, -592(r30)                 # 4-byte Folded Spill
	loads.w r2, 132(r1)
	storeli.w r2, -588(r30)                 # 4-byte Folded Spill
	loads.w r2, 136(r1)
	storeli.w r2, -580(r30)                 # 4-byte Folded Spill
	loads.w r2, 140(r1)
	storeli.w r2, -572(r30)                 # 4-byte Folded Spill
	loads.w r2, 144(r1)
	storeli.w r2, -568(r30)                 # 4-byte Folded Spill
	loads.w r2, 148(r1)
	storeli.w r2, -560(r30)                 # 4-byte Folded Spill
	loads.w r2, 152(r1)
	storeli.w r2, -552(r30)                 # 4-byte Folded Spill
	loads.w r2, 156(r1)
	storeli.w r2, -540(r30)                 # 4-byte Folded Spill
	loads.w r2, 160(r1)
	storeli.w r2, -528(r30)                 # 4-byte Folded Spill
	loads.w r2, 164(r1)
	storeli.w r2, -520(r30)                 # 4-byte Folded Spill
	loads.w r2, 168(r1)
	storeli.w r2, -504(r30)                 # 4-byte Folded Spill
	loads.w r2, 172(r1)
	storeli.w r2, -488(r30)                 # 4-byte Folded Spill
	loads.w r2, 176(r1)
	storeli.w r2, -472(r30)                 # 4-byte Folded Spill
	loads.w r2, 180(r1)
	storeli.w r2, -460(r30)                 # 4-byte Folded Spill
	loads.w r2, 184(r1)
	storeli.w r2, -444(r30)                 # 4-byte Folded Spill
	loads.w r2, 188(r1)
	storeli.w r2, -432(r30)                 # 4-byte Folded Spill
	loads.w r2, 192(r1)
	storeli.w r2, -424(r30)                 # 4-byte Folded Spill
	loads.w r2, 196(r1)
	storeli.w r2, -408(r30)                 # 4-byte Folded Spill
	loads.w r2, 200(r1)
	storeli.w r2, -400(r30)                 # 4-byte Folded Spill
	loads.w r2, 204(r1)
	storeli.w r2, -392(r30)                 # 4-byte Folded Spill
	loads.w r2, 208(r1)
	storeli.w r2, -384(r30)                 # 4-byte Folded Spill
	loads.w r2, 212(r1)
	storeli.w r2, -380(r30)                 # 4-byte Folded Spill
	loads.w r2, 216(r1)
	storeli.w r2, -372(r30)                 # 4-byte Folded Spill
	loads.w r2, 220(r1)
	storeli.w r2, -364(r30)                 # 4-byte Folded Spill
	loads.w r2, 224(r1)
	storeli.w r2, -356(r30)                 # 4-byte Folded Spill
	loads.w r2, 228(r1)
	storeli.w r2, -352(r30)                 # 4-byte Folded Spill
	loads.w r2, 232(r1)
	storeli.w r2, -344(r30)                 # 4-byte Folded Spill
	loads.w r2, 236(r1)
	storeli.w r2, -336(r30)                 # 4-byte Folded Spill
	loads.w r2, 240(r1)
	storeli.w r2, -332(r30)                 # 4-byte Folded Spill
	loads.w r2, 244(r1)
	storeli.w r2, -324(r30)                 # 4-byte Folded Spill
	loads.w r2, 248(r1)
	loads.w r1, 252(r1)
	storeli.w r1, -312(r30)                 # 4-byte Folded Spill
	loads.w r1, 92(r7)
	storeli.w r2, -316(r30)                 # 4-byte Folded Spill
	loads.w r2, 72(r7)
	storeli.w r1, -184(r30)                 # 4-byte Folded Spill
	loads.w r1, 96(r7)
	storeli.w r1, -188(r30)                 # 4-byte Folded Spill
	loads.w r1, 100(r7)
	storeli.w r1, -192(r30)                 # 4-byte Folded Spill
	loads.w r1, 116(r7)
	storeli.w r1, -872(r30)                 # 4-byte Folded Spill
	loads.w r1, 120(r7)
	storeli.w r1, -976(r30)                 # 4-byte Folded Spill
	loads.w r1, 124(r7)
	storeli.w r1, -984(r30)                 # 4-byte Folded Spill
	loads.w r1, 128(r7)
	storeli.w r1, -1008(r30)                # 4-byte Folded Spill
	loads.w r1, 132(r7)
	storeli.w r1, -1012(r30)                # 4-byte Folded Spill
	loads.w r1, 136(r7)
	storeli.w r1, -1028(r30)                # 4-byte Folded Spill
	loads.w r1, 144(r7)
	storeli.w r1, -1024(r30)                # 4-byte Folded Spill
	loads.w r1, 148(r7)
	storeli.w r1, -1052(r30)                # 4-byte Folded Spill
	loads.w r1, 152(r7)
	storeli.w r1, -1040(r30)                # 4-byte Folded Spill
	loads.w r1, 156(r7)
	storeli.w r1, -1048(r30)                # 4-byte Folded Spill
	loads.w r1, 160(r7)
	loads.w r7, 252(r7)
	storeli.w r7, -1020(r30)                # 4-byte Folded Spill
	addli r7, r5, 0
	addli r5, r9, 0
	bneq r3, zero, .LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r5, r26, r7
.LBB0_95:                               #   in Loop: Header=BB0_3 Depth=1
	storeli.w r5, -160(r30)                 # 4-byte Folded Spill
	add.f.rn r5, r7, r24
	slli r3, r5, 9
	setle.f r26, r9, r5
	setle.f r27, r5, r9
	srli r19, r5, 23
	seteq r3, r3, r9
	andi r19, r19, 255
	setlti r19, r19, 255
	or r3, r19, r3
	and r19, r27, r26
	and r3, r19, r3
	addli r19, r9, 0
	bneq r3, zero, .LBB0_97
# %bb.96:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r19, r24, r5
.LBB0_97:                               #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r27, r5, r22
	storeli.w r19, -164(r30)                # 4-byte Folded Spill
	slli r3, r27, 9
	setle.f r24, r9, r27
	setle.f r26, r27, r9
	srli r19, r27, 23
	seteq r3, r3, r9
	andi r19, r19, 255
	setlti r19, r19, 255
	or r3, r19, r3
	and r19, r26, r24
	and r3, r19, r3
	addli r19, r9, 0
	bneq r3, zero, .LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r19, r22, r27
.LBB0_99:                               #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r28, r27, r21
	storeli.w r19, -168(r30)                # 4-byte Folded Spill
	addli r26, r11, 0
	storeli.w r4, -1108(r30)                # 4-byte Folded Spill
	storeli.w r14, -1088(r30)               # 4-byte Folded Spill
	storeli.w r13, -1072(r30)               # 4-byte Folded Spill
	storeli.w r1, -1056(r30)                # 4-byte Folded Spill
	slli r3, r28, 9
	setle.f r22, r9, r28
	setle.f r24, r28, r9
	srli r19, r28, 23
	seteq r3, r3, r9
	andi r19, r19, 255
	setlti r19, r19, 255
	or r3, r19, r3
	and r19, r24, r22
	and r3, r19, r3
	addli r19, r9, 0
	bneq r3, zero, .LBB0_101
# %bb.100:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r19, r21, r28
.LBB0_101:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r24, r28, r20
	storeli.w r19, -172(r30)                # 4-byte Folded Spill
	addli r13, r6, 0
	addli r14, r10, 0
	slli r3, r24, 9
	setle.f r21, r9, r24
	setle.f r22, r24, r9
	srli r19, r24, 23
	seteq r3, r3, r9
	andi r19, r19, 255
	setlti r19, r19, 255
	or r3, r19, r3
	and r19, r22, r21
	and r3, r19, r3
	addli r19, r9, 0
	bneq r3, zero, .LBB0_103
# %bb.102:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r19, r20, r24
.LBB0_103:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r22, r24, r18
	storeli.w r19, -176(r30)                # 4-byte Folded Spill
	slli r3, r22, 9
	setle.f r20, r9, r22
	setle.f r21, r22, r9
	srli r19, r22, 23
	seteq r3, r3, r9
	andi r19, r19, 255
	setlti r19, r19, 255
	or r3, r19, r3
	and r19, r21, r20
	and r3, r19, r3
	addli r19, r9, 0
	bneq r3, zero, .LBB0_105
# %bb.104:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r19, r18, r22
.LBB0_105:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r21, r22, r17
	storeli.w r19, -900(r30)                # 4-byte Folded Spill
	slli r3, r21, 9
	setle.f r19, r9, r21
	setle.f r20, r21, r9
	srli r18, r21, 23
	seteq r3, r3, r9
	andi r18, r18, 255
	setlti r18, r18, 255
	or r3, r18, r3
	and r18, r20, r19
	and r3, r18, r3
	addli r18, r9, 0
	bneq r3, zero, .LBB0_107
# %bb.106:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r18, r17, r21
.LBB0_107:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r20, r21, r2
	storeli.w r18, -908(r30)                # 4-byte Folded Spill
	slli r3, r20, 9
	setle.f r18, r9, r20
	setle.f r19, r20, r9
	srli r17, r20, 23
	seteq r3, r3, r9
	andi r17, r17, 255
	setlti r17, r17, 255
	or r3, r17, r3
	and r17, r19, r18
	and r3, r17, r3
	addli r17, r9, 0
	bneq r3, zero, .LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r17, r2, r20
.LBB0_109:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r19, r20, r16
	storeli.w r17, -912(r30)                # 4-byte Folded Spill
	slli r2, r19, 9
	setle.f r17, r9, r19
	setle.f r18, r19, r9
	srli r3, r19, 23
	seteq r2, r2, r9
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r18, r17
	and r2, r3, r2
	addli r3, r9, 0
	bneq r2, zero, .LBB0_111
# %bb.110:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r16, r19
.LBB0_111:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r18, r19, r25
	storeli.w r3, -924(r30)                 # 4-byte Folded Spill
	slli r2, r18, 9
	setle.f r16, r9, r18
	setle.f r17, r18, r9
	srli r3, r18, 23
	seteq r2, r2, r9
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r17, r16
	and r2, r3, r2
	addli r3, r9, 0
	bneq r2, zero, .LBB0_113
# %bb.112:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r25, r18
.LBB0_113:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r4, r18, r23
	storeli.w r3, -932(r30)                 # 4-byte Folded Spill
	slli r2, r4, 9
	setle.f r16, r9, r4
	setle.f r17, r4, r9
	srli r3, r4, 23
	seteq r2, r2, r9
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r17, r16
	and r2, r3, r2
	addli r3, r9, 0
	bneq r2, zero, .LBB0_115
# %bb.114:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r23, r4
.LBB0_115:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r23, r4, r12
	storeli.w r3, -940(r30)                 # 4-byte Folded Spill
	loadli.w r25,  -1040(r30)               # 4-byte Folded Reload
	slli r2, r23, 9
	setle.f r16, r9, r23
	setle.f r17, r23, r9
	srli r3, r23, 23
	seteq r2, r2, r9
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r17, r16
	and r2, r3, r2
	addli r3, r9, 0
	bneq r2, zero, .LBB0_117
# %bb.116:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r12, r23
.LBB0_117:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r1,  -184(r30)                 # 4-byte Folded Reload
	storeli.w r3, -180(r30)                 # 4-byte Folded Spill
	loadli.w r17,  -1120(r30)               # 4-byte Folded Reload
	add.f.rn r11, r23, r1
	slli r2, r11, 9
	setle.f r10, r9, r11
	setle.f r16, r11, r9
	srli r3, r11, 23
	seteq r2, r2, r9
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r16, r10
	and r2, r3, r2
	addli r3, r9, 0
	bneq r2, zero, .LBB0_119
# %bb.118:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r1, r11
.LBB0_119:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r12,  -188(r30)                # 4-byte Folded Reload
	storeli.w r3, -184(r30)                 # 4-byte Folded Spill
	addli r16, r15, 0
	add.f.rn r1, r11, r12
	slli r2, r1, 9
	setle.f r6, r9, r1
	setle.f r10, r1, r9
	srli r3, r1, 23
	seteq r2, r2, r9
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r10, r6
	and r2, r3, r2
	addli r3, r9, 0
	bneq r2, zero, .LBB0_121
# %bb.120:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r12, r1
.LBB0_121:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r2,  -192(r30)                 # 4-byte Folded Reload
	storeli.w r1, -948(r30)                 # 4-byte Folded Spill
	storeli.w r3, -188(r30)                 # 4-byte Folded Spill
	add.f.rn r15, r1, r2
	addli r1, r2, 0
	slli r2, r15, 9
	setle.f r6, r9, r15
	setle.f r10, r15, r9
	srli r3, r15, 23
	seteq r2, r2, r9
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r10, r6
	and r2, r3, r2
	addli r3, r9, 0
	bneq r2, zero, .LBB0_123
# %bb.122:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r1, r15
.LBB0_123:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r10, r15, r14
	storeli.w r3, -192(r30)                 # 4-byte Folded Spill
	slli r1, r10, 9
	setle.f r3, r9, r10
	setle.f r6, r10, r9
	srli r2, r10, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r6, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_125
# %bb.124:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r14, r10
.LBB0_125:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r14, r10, r13
	storeli.w r2, -196(r30)                 # 4-byte Folded Spill
	slli r1, r14, 9
	setle.f r3, r9, r14
	setle.f r6, r14, r9
	srli r2, r14, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r6, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_127
# %bb.126:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r13, r14
.LBB0_127:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r13, r14, r26
	storeli.w r2, -200(r30)                 # 4-byte Folded Spill
	slli r1, r13, 9
	setle.f r3, r9, r13
	setle.f r6, r13, r9
	srli r2, r13, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r6, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_129
# %bb.128:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r26, r13
.LBB0_129:                              #   in Loop: Header=BB0_3 Depth=1
	storeli.w r4, -920(r30)                 # 4-byte Folded Spill
	loadli.w r4,  -872(r30)                 # 4-byte Folded Reload
	storeli.w r7, -692(r30)                 # 4-byte Folded Spill
	storeli.w r2, -220(r30)                 # 4-byte Folded Spill
	add.f.rn r7, r13, r4
	slli r1, r7, 9
	setle.f r3, r9, r7
	setle.f r6, r7, r9
	srli r2, r7, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r6, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r4, r7
.LBB0_131:                              #   in Loop: Header=BB0_3 Depth=1
	storeli.w r5, -872(r30)                 # 4-byte Folded Spill
	loadli.w r5,  -976(r30)                 # 4-byte Folded Reload
	storeli.w r2, -980(r30)                 # 4-byte Folded Spill
	addli r26, r17, 0
	storeli.w r7, -972(r30)                 # 4-byte Folded Spill
	add.f.rn r4, r7, r5
	slli r1, r4, 9
	setle.f r3, r9, r4
	setle.f r6, r4, r9
	srli r2, r4, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r6, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_133
# %bb.132:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r5, r4
.LBB0_133:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r17,  -984(r30)                # 4-byte Folded Reload
	storeli.w r4, -976(r30)                 # 4-byte Folded Spill
	storeli.w r2, -992(r30)                 # 4-byte Folded Spill
	loadli.w r7,  -1024(r30)                # 4-byte Folded Reload
	loadli.w r6,  -1008(r30)                # 4-byte Folded Reload
	add.f.rn r4, r4, r17
	slli r1, r4, 9
	setle.f r3, r9, r4
	setle.f r5, r4, r9
	srli r2, r4, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r5, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_135
# %bb.134:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r17, r4
.LBB0_135:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r5, r4, r6
	storeli.w r4, -984(r30)                 # 4-byte Folded Spill
	storeli.w r2, -1000(r30)                # 4-byte Folded Spill
	slli r1, r5, 9
	setle.f r3, r9, r5
	setle.f r4, r5, r9
	srli r2, r5, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r6, r5
.LBB0_137:                              #   in Loop: Header=BB0_3 Depth=1
	storeli.w r11, -936(r30)                # 4-byte Folded Spill
	loadli.w r11,  -1012(r30)               # 4-byte Folded Reload
	storeli.w r2, -1008(r30)                # 4-byte Folded Spill
	addli r17, r26, 0
	add.f.rn r6, r5, r11
	slli r1, r6, 9
	setle.f r3, r9, r6
	setle.f r4, r6, r9
	srli r2, r6, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_139
# %bb.138:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r11, r6
.LBB0_139:                              #   in Loop: Header=BB0_3 Depth=1
	storeli.w r28, -880(r30)                # 4-byte Folded Spill
	loadli.w r28,  -1028(r30)               # 4-byte Folded Reload
	storeli.w r2, -1012(r30)                # 4-byte Folded Spill
	add.f.rn r11, r6, r28
	slli r1, r11, 9
	setle.f r3, r9, r11
	setle.f r4, r11, r9
	srli r2, r11, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_141
# %bb.140:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r28, r11
.LBB0_141:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r28, r11, r16
	storeli.w r2, -1028(r30)                # 4-byte Folded Spill
	slli r1, r28, 9
	setle.f r3, r9, r28
	setle.f r4, r28, r9
	srli r2, r28, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_143
# %bb.142:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r16, r28
.LBB0_143:                              #   in Loop: Header=BB0_3 Depth=1
	addli r26, r7, 0
	storeli.w r2, -1036(r30)                # 4-byte Folded Spill
	add.f.rn r7, r28, r26
	slli r1, r7, 9
	setle.f r3, r9, r7
	setle.f r4, r7, r9
	srli r2, r7, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r9, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_145
# %bb.144:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r26, r7
.LBB0_145:                              #   in Loop: Header=BB0_3 Depth=1
	storeli.w r27, -876(r30)                # 4-byte Folded Spill
	loadli.w r27,  -1052(r30)               # 4-byte Folded Reload
	storeli.w r7, -1024(r30)                # 4-byte Folded Spill
	storeli.w r3, -1044(r30)                # 4-byte Folded Spill
	add.f.rn r7, r7, r27
	slli r1, r7, 9
	setle.f r3, r9, r7
	setle.f r4, r7, r9
	srli r2, r7, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_147
# %bb.146:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r27, r7
.LBB0_147:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r27, r7, r25
	storeli.w r2, -1052(r30)                # 4-byte Folded Spill
	slli r1, r27, 9
	setle.f r3, r9, r27
	setle.f r4, r27, r9
	srli r2, r27, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r9, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_149
# %bb.148:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r25, r27
.LBB0_149:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r25,  -1048(r30)               # 4-byte Folded Reload
	storeli.w r27, -1040(r30)               # 4-byte Folded Spill
	storeli.w r3, -1060(r30)                # 4-byte Folded Spill
	add.f.rn r27, r27, r25
	slli r1, r27, 9
	setle.f r3, r9, r27
	setle.f r4, r27, r9
	srli r2, r27, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r9, 0
	and r1, r2, r1
	addli r2, r27, 0
	bneq r1, zero, .LBB0_151
# %bb.150:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r25, r2
.LBB0_151:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r25,  -1056(r30)               # 4-byte Folded Reload
	storeli.w r3, -1068(r30)                # 4-byte Folded Spill
	storeli.w r2, -1048(r30)                # 4-byte Folded Spill
	add.f.rn r27, r2, r25
	slli r1, r27, 9
	setle.f r3, r9, r27
	setle.f r4, r27, r9
	srli r2, r27, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r9, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_153
# %bb.152:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r25, r27
.LBB0_153:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r26,  -1064(r30)               # 4-byte Folded Reload
	storeli.w r27, -1056(r30)               # 4-byte Folded Spill
	storeli.w r3, -1076(r30)                # 4-byte Folded Spill
	loadli.w r16,  -916(r30)                # 4-byte Folded Reload
	loadli.w r25,  -1072(r30)               # 4-byte Folded Reload
	add.f.rn r27, r27, r26
	slli r1, r27, 9
	setle.f r3, r9, r27
	setle.f r4, r27, r9
	srli r2, r27, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r9, 0
	and r1, r2, r1
	addli r2, r27, 0
	bneq r1, zero, .LBB0_155
# %bb.154:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r26, r2
.LBB0_155:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r27, r2, r25
	storeli.w r3, -1084(r30)                # 4-byte Folded Spill
	storeli.w r2, -1064(r30)                # 4-byte Folded Spill
	slli r1, r27, 9
	setle.f r3, r9, r27
	setle.f r4, r27, r9
	srli r2, r27, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r9, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_157
# %bb.156:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r25, r27
.LBB0_157:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r26,  -1080(r30)               # 4-byte Folded Reload
	storeli.w r27, -1072(r30)               # 4-byte Folded Spill
	storeli.w r3, -1092(r30)                # 4-byte Folded Spill
	loadli.w r12,  -928(r30)                # 4-byte Folded Reload
	add.f.rn r27, r27, r26
	slli r1, r27, 9
	setle.f r3, r9, r27
	setle.f r4, r27, r9
	srli r2, r27, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r9, 0
	and r1, r2, r1
	addli r2, r27, 0
	bneq r1, zero, .LBB0_159
# %bb.158:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r26, r2
.LBB0_159:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r26,  -1088(r30)               # 4-byte Folded Reload
	storeli.w r3, -1100(r30)                # 4-byte Folded Spill
	storeli.w r2, -1080(r30)                # 4-byte Folded Spill
	add.f.rn r27, r2, r26
	slli r1, r27, 9
	setle.f r3, r9, r27
	setle.f r4, r27, r9
	srli r2, r27, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r9, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_161
# %bb.160:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r26, r27
.LBB0_161:                              #   in Loop: Header=BB0_3 Depth=1
	storeli.w r21, -892(r30)                # 4-byte Folded Spill
	loadli.w r21,  -1096(r30)               # 4-byte Folded Reload
	storeli.w r27, -1088(r30)               # 4-byte Folded Spill
	storeli.w r3, -1104(r30)                # 4-byte Folded Spill
	add.f.rn r27, r27, r21
	slli r1, r27, 9
	setle.f r3, r9, r27
	setle.f r4, r27, r9
	srli r2, r27, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r9, 0
	and r1, r2, r1
	addli r2, r27, 0
	loadli.w r27,  -956(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_163
# %bb.162:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r21, r2
.LBB0_163:                              #   in Loop: Header=BB0_3 Depth=1
	storeli.w r20, -896(r30)                # 4-byte Folded Spill
	loadli.w r20,  -1112(r30)               # 4-byte Folded Reload
	storeli.w r3, -1116(r30)                # 4-byte Folded Spill
	storeli.w r2, -1096(r30)                # 4-byte Folded Spill
	add.f.rn r21, r2, r20
	slli r1, r21, 9
	setle.f r3, r9, r21
	setle.f r4, r21, r9
	srli r2, r21, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_165
# %bb.164:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r20, r21
.LBB0_165:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r26,  -1032(r30)               # 4-byte Folded Reload
	storeli.w r2, -1124(r30)                # 4-byte Folded Spill
	add.f.rn r20, r21, r26
	slli r1, r20, 9
	setle.f r3, r9, r20
	setle.f r4, r20, r9
	srli r2, r20, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r9, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_167
# %bb.166:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r26, r20
.LBB0_167:                              #   in Loop: Header=BB0_3 Depth=1
	storeli.w r20, -1112(r30)               # 4-byte Folded Spill
	add.f.rn r20, r20, r17
	storeli.w r3, -1132(r30)                # 4-byte Folded Spill
	storeli.w r19, -904(r30)                # 4-byte Folded Spill
	slli r1, r20, 9
	setle.f r3, r9, r20
	setle.f r4, r20, r9
	srli r2, r20, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r9, 0
	and r1, r2, r1
	addli r2, r20, 0
	loadli.w r20,  -964(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_169
# %bb.168:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r17, r2
.LBB0_169:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r17,  -1128(r30)               # 4-byte Folded Reload
	storeli.w r3, -1136(r30)                # 4-byte Folded Spill
	storeli.w r2, -1120(r30)                # 4-byte Folded Spill
	add.f.rn r19, r2, r17
	slli r1, r19, 9
	setle.f r3, r9, r19
	setle.f r4, r19, r9
	srli r2, r19, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r9, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_171
# %bb.170:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r17, r19
.LBB0_171:                              #   in Loop: Header=BB0_3 Depth=1
	addli r25, r18, 0
	loadli.w r18,  -1016(r30)               # 4-byte Folded Reload
	storeli.w r19, -1128(r30)               # 4-byte Folded Spill
	storeli.w r3, -1148(r30)                # 4-byte Folded Spill
	loadli.w r17,  -1108(r30)               # 4-byte Folded Reload
	add.f.rn r19, r19, r18
	slli r1, r19, 9
	setle.f r3, r9, r19
	setle.f r4, r19, r9
	srli r2, r19, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r9, 0
	and r1, r2, r1
	addli r2, r19, 0
	loadli.w r19,  -968(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_173
# %bb.172:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r18, r2
.LBB0_173:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r26,  -1004(r30)               # 4-byte Folded Reload
	storeli.w r3, -1156(r30)                # 4-byte Folded Spill
	storeli.w r2, -1140(r30)                # 4-byte Folded Spill
	add.f.rn r18, r2, r26
	slli r1, r18, 9
	setle.f r3, r9, r18
	setle.f r4, r18, r9
	srli r2, r18, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r9, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_175
# %bb.174:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r26, r18
.LBB0_175:                              #   in Loop: Header=BB0_3 Depth=1
	storeli.w r18, -1144(r30)               # 4-byte Folded Spill
	add.f.rn r18, r18, r17
	storeli.w r3, -1164(r30)                # 4-byte Folded Spill
	slli r1, r18, 9
	setle.f r3, r9, r18
	setle.f r4, r18, r9
	srli r2, r18, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r9, 0
	and r1, r2, r1
	addli r2, r18, 0
	loadli.w r18,  -988(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_177
# %bb.176:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r17, r2
.LBB0_177:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r26,  -996(r30)                # 4-byte Folded Reload
	storeli.w r21, -1108(r30)               # 4-byte Folded Spill
	storeli.w r3, -1172(r30)                # 4-byte Folded Spill
	storeli.w r2, -1152(r30)                # 4-byte Folded Spill
	add.f.rn r21, r2, r26
	slli r1, r21, 9
	setle.f r3, r9, r21
	setle.f r4, r21, r9
	srli r2, r21, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r9, 0
	and r1, r2, r1
	addli r2, r21, 0
	bneq r1, zero, .LBB0_179
# %bb.178:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r26, r2
.LBB0_179:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r26, r2, r18
	storeli.w r3, -1180(r30)                # 4-byte Folded Spill
	storeli.w r2, -1160(r30)                # 4-byte Folded Spill
	addli r21, r22, 0
	slli r1, r26, 9
	setle.f r3, r9, r26
	setle.f r4, r26, r9
	srli r2, r26, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_181
# %bb.180:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r18, r26
.LBB0_181:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r18, r26, r19
	storeli.w r2, -1188(r30)                # 4-byte Folded Spill
	addli r22, r24, 0
	slli r1, r18, 9
	setle.f r3, r9, r18
	setle.f r4, r18, r9
	srli r2, r18, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_183
# %bb.182:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r19, r18
.LBB0_183:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r19, r18, r20
	storeli.w r2, -1196(r30)                # 4-byte Folded Spill
	storeli.w r26, -1168(r30)               # 4-byte Folded Spill
	slli r1, r19, 9
	setle.f r3, r9, r19
	setle.f r4, r19, r9
	srli r2, r19, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_185
# %bb.184:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r20, r19
.LBB0_185:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r26,  -960(r30)                # 4-byte Folded Reload
	storeli.w r19, -1184(r30)               # 4-byte Folded Spill
	storeli.w r2, -1204(r30)                # 4-byte Folded Spill
	add.f.rn r19, r19, r26
	slli r1, r19, 9
	setle.f r3, r9, r19
	setle.f r4, r19, r9
	srli r2, r19, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_187
# %bb.186:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r26, r19
.LBB0_187:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r20, r19, r27
	storeli.w r2, -1212(r30)                # 4-byte Folded Spill
	storeli.w r19, -1192(r30)               # 4-byte Folded Spill
	slli r1, r20, 9
	setle.f r3, r9, r20
	setle.f r4, r20, r9
	srli r2, r20, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_189
# %bb.188:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r27, r20
.LBB0_189:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r26, r20, r12
	storeli.w r2, -1216(r30)                # 4-byte Folded Spill
	slli r1, r26, 9
	setle.f r3, r9, r26
	setle.f r4, r26, r9
	srli r2, r26, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_191
# %bb.190:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r12, r26
.LBB0_191:                              #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r27, r26, r16
	storeli.w r2, -1224(r30)                # 4-byte Folded Spill
	addli r17, r23, 0
	slli r1, r27, 9
	setle.f r3, r9, r27
	setle.f r4, r27, r9
	srli r2, r27, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_193
# %bb.192:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r16, r27
.LBB0_193:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r16,  -888(r30)                # 4-byte Folded Reload
	storeli.w r2, -1236(r30)                # 4-byte Folded Spill
	add.f.rn r23, r27, r16
	slli r1, r23, 9
	setle.f r3, r9, r23
	setle.f r4, r23, r9
	srli r2, r23, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r9, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_195
# %bb.194:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r3, r16, r23
.LBB0_195:                              #   in Loop: Header=BB0_3 Depth=1
	storeli.w r6, -996(r30)                 # 4-byte Folded Spill
	loadli.w r6,  -884(r30)                 # 4-byte Folded Reload
	storeli.w r23, -1228(r30)               # 4-byte Folded Spill
	storeli.w r3, -1240(r30)                # 4-byte Folded Spill
	add.f.rn r23, r23, r6
	slli r1, r23, 9
	setle.f r3, r9, r23
	setle.f r4, r23, r9
	srli r2, r23, 23
	seteq r1, r1, r9
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r9, 0
	bneq r1, zero, .LBB0_197
# %bb.196:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r2, r6, r23
.LBB0_197:                              #   in Loop: Header=BB0_3 Depth=1
	storeli.w r5, -988(r30)                 # 4-byte Folded Spill
	loadli.w r5,  -1020(r30)                # 4-byte Folded Reload
	storeli.w r2, -1244(r30)                # 4-byte Folded Spill
	storeli.w r27, -1220(r30)               # 4-byte Folded Spill
	storeli.w r26, -1208(r30)               # 4-byte Folded Spill
	storeli.w r20, -1200(r30)               # 4-byte Folded Spill
	storeli.w r18, -1176(r30)               # 4-byte Folded Spill
	storeli.w r7, -1032(r30)                # 4-byte Folded Spill
	storeli.w r28, -1016(r30)               # 4-byte Folded Spill
	storeli.w r11, -1004(r30)               # 4-byte Folded Spill
	storeli.w r13, -968(r30)                # 4-byte Folded Spill
	storeli.w r14, -964(r30)                # 4-byte Folded Spill
	storeli.w r10, -960(r30)                # 4-byte Folded Spill
	storeli.w r15, -956(r30)                # 4-byte Folded Spill
	storeli.w r17, -928(r30)                # 4-byte Folded Spill
	storeli.w r25, -916(r30)                # 4-byte Folded Spill
	storeli.w r21, -888(r30)                # 4-byte Folded Spill
	storeli.w r22, -884(r30)                # 4-byte Folded Spill
	storeli.w r23, -1232(r30)               # 4-byte Folded Spill
	add.f.rn r2, r23, r5
	slli r1, r2, 9
	setle.f r4, r9, r2
	setle.f r6, r2, r9
	srli r3, r2, 23
	seteq r1, r1, r9
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	and r3, r6, r4
	and r1, r3, r1
	bneq r1, zero, .LBB0_199
# %bb.198:                              #   in Loop: Header=BB0_3 Depth=1
	div.f.rn r9, r5, r2
.LBB0_199:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r1,  -944(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -952(r30)                 # 4-byte Folded Reload
	loadli.w r5,  -436(r30)                 # 4-byte Folded Reload
	loadli.w r14,  -452(r30)                # 4-byte Folded Reload
	loadli.w r19,  -464(r30)                # 4-byte Folded Reload
	loadli.w r24,  -480(r30)                # 4-byte Folded Reload
	loadli.w r21,  -496(r30)                # 4-byte Folded Reload
	loadli.w r27,  -512(r30)                # 4-byte Folded Reload
	loadli.w r22,  -532(r30)                # 4-byte Folded Reload
	loadli.w r11,  -152(r30)                # 4-byte Folded Reload
	loadli.w r18,  -416(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -288(r30)                 # 4-byte Folded Reload
	stores.w r2, 0(r3)
	loadli.w r3,  -768(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -772(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r2, r3
	mul.f.rn r2, r6, r5
	add.f.rn r2, r3, r2
	loadli.w r3,  -764(r30)                 # 4-byte Folded Reload
	sub.f.rn r10, r3, r2
	mul.f.rn r3, r14, r10
	mul.f.rn r10, r10, r10
	add.f.rn r3, r2, r3
	loadli.w r2,  -752(r30)                 # 4-byte Folded Reload
	sub.f.rn r2, r2, r3
	mul.f.rn r4, r19, r2
	mul.f.rn r2, r2, r2
	add.f.rn r3, r3, r4
	loadli.w r4,  -744(r30)                 # 4-byte Folded Reload
	sub.f.rn r17, r4, r3
	mul.f.rn r4, r24, r17
	mul.f.rn r17, r17, r17
	add.f.rn r3, r3, r4
	loadli.w r4,  -736(r30)                 # 4-byte Folded Reload
	sub.f.rn r13, r4, r3
	mul.f.rn r4, r21, r13
	mul.f.rn r13, r13, r13
	add.f.rn r3, r3, r4
	loadli.w r4,  -728(r30)                 # 4-byte Folded Reload
	sub.f.rn r4, r4, r3
	mul.f.rn r7, r27, r4
	mul.f.rn r4, r4, r4
	add.f.rn r3, r3, r7
	loadli.w r7,  -716(r30)                 # 4-byte Folded Reload
	sub.f.rn r16, r7, r3
	mul.f.rn r7, r22, r16
	add.f.rn r3, r3, r7
	loadli.w r7,  -708(r30)                 # 4-byte Folded Reload
	sub.f.rn r28, r7, r3
	loadli.w r7,  -148(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r7, r28
	add.f.rn r7, r3, r7
	loadli.w r3,  -856(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r3, r7
	mul.f.rn r20, r11, r3
	loadli.w r11,  -848(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r3
	add.f.rn r7, r7, r20
	sub.f.rn r12, r11, r7
	loadli.w r11,  -156(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r11, r12
	loadli.w r11,  -844(r30)                # 4-byte Folded Reload
	storeli.w r12, -744(r30)                # 4-byte Folded Spill
	add.f.rn r7, r7, r20
	sub.f.rn r12, r11, r7
	loadli.w r11,  -160(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r11, r12
	loadli.w r11,  -164(r30)                # 4-byte Folded Reload
	storeli.w r12, -736(r30)                # 4-byte Folded Spill
	add.f.rn r20, r7, r20
	loadli.w r7,  -832(r30)                 # 4-byte Folded Reload
	sub.f.rn r7, r7, r20
	mul.f.rn r23, r11, r7
	loadli.w r11,  -824(r30)                # 4-byte Folded Reload
	mul.f.rn r7, r7, r7
	add.f.rn r20, r20, r23
	sub.f.rn r12, r11, r20
	loadli.w r11,  -168(r30)                # 4-byte Folded Reload
	mul.f.rn r23, r11, r12
	loadli.w r11,  -816(r30)                # 4-byte Folded Reload
	storeli.w r12, -728(r30)                # 4-byte Folded Spill
	add.f.rn r23, r20, r23
	sub.f.rn r20, r11, r23
	loadli.w r11,  -172(r30)                # 4-byte Folded Reload
	mul.f.rn r25, r11, r20
	loadli.w r11,  -808(r30)                # 4-byte Folded Reload
	add.f.rn r23, r23, r25
	loadli.w r25,  -900(r30)                # 4-byte Folded Reload
	sub.f.rn r12, r11, r23
	loadli.w r11,  -176(r30)                # 4-byte Folded Reload
	mul.f.rn r26, r11, r12
	loadli.w r11,  -800(r30)                # 4-byte Folded Reload
	storeli.w r12, -708(r30)                # 4-byte Folded Spill
	loadli.w r12,  -912(r30)                # 4-byte Folded Reload
	add.f.rn r23, r23, r26
	sub.f.rn r11, r11, r23
	mul.f.rn r15, r25, r11
	storeli.w r11, -716(r30)                # 4-byte Folded Spill
	loadli.w r11,  -788(r30)                # 4-byte Folded Reload
	add.f.rn r15, r23, r15
	loadli.w r23,  -908(r30)                # 4-byte Folded Reload
	sub.f.rn r26, r11, r15
	mul.f.rn r11, r23, r26
	add.f.rn r11, r15, r11
	mul.f.rn r15, r6, r6
	loadli.w r6,  -776(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r15, r18
	sub.f.rn r6, r6, r11
	mul.f.rn r18, r12, r6
	mul.f.rn r15, r15, r5
	loadli.w r5,  -828(r30)                 # 4-byte Folded Reload
	mul.f.rn r6, r6, r6
	add.f.rn r1, r1, r15
	loadli.w r15,  -404(r30)                # 4-byte Folded Reload
	add.f.rn r11, r11, r18
	mul.f.rn r15, r15, r10
	sub.f.rn r10, r5, r11
	loadli.w r5,  -868(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	mul.f.rn r15, r14, r15
	loadli.w r14,  -924(r30)                # 4-byte Folded Reload
	loadli.w r5,  -440(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r14, r10
	mul.f.rn r10, r10, r10
	add.f.rn r1, r1, r15
	loadli.w r15,  -420(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r15, r2
	loadli.w r2,  -864(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r18
	add.f.rn r1, r2, r1
	loadli.w r2,  -812(r30)                 # 4-byte Folded Reload
	sub.f.rn r2, r2, r11
	mul.f.rn r15, r19, r15
	loadli.w r19,  -932(r30)                # 4-byte Folded Reload
	mul.f.rn r18, r19, r2
	add.f.rn r1, r1, r15
	mul.f.rn r15, r5, r17
	loadli.w r5,  -860(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r18
	add.f.rn r1, r5, r1
	mul.f.rn r15, r24, r15
	loadli.w r5,  -796(r30)                 # 4-byte Folded Reload
	loadli.w r24,  -940(r30)                # 4-byte Folded Reload
	mul.f.rn r18, r20, r20
	sub.f.rn r17, r5, r11
	loadli.w r5,  -456(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r15
	mul.f.rn r13, r5, r13
	loadli.w r5,  -852(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r24, r17
	add.f.rn r1, r5, r1
	loadli.w r5,  -840(r30)                 # 4-byte Folded Reload
	mul.f.rn r17, r17, r17
	mul.f.rn r13, r21, r13
	add.f.rn r11, r11, r15
	mul.f.rn r15, r16, r16
	add.f.rn r13, r1, r13
	loadli.w r1,  -476(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r1, r4
	loadli.w r1,  -780(r30)                 # 4-byte Folded Reload
	sub.f.rn r1, r1, r11
	add.f.rn r13, r5, r13
	loadli.w r5,  -180(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r27, r4
	loadli.w r27,  -992(r30)                # 4-byte Folded Reload
	mul.f.rn r16, r5, r1
	loadli.w r5,  -492(r30)                 # 4-byte Folded Reload
	mul.f.rn r1, r1, r1
	add.f.rn r4, r13, r4
	mul.f.rn r13, r5, r15
	loadli.w r5,  -836(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r28, r28
	loadli.w r28,  -980(r30)                # 4-byte Folded Reload
	add.f.rn r11, r11, r16
	add.f.rn r4, r5, r4
	loadli.w r5,  -756(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r22, r13
	mul.f.rn r22, r26, r26
	loadli.w r26,  -1000(r30)               # 4-byte Folded Reload
	sub.f.rn r16, r5, r11
	loadli.w r5,  -184(r30)                 # 4-byte Folded Reload
	add.f.rn r4, r4, r13
	mul.f.rn r13, r5, r16
	loadli.w r5,  -500(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r16, r16
	mul.f.rn r15, r5, r15
	loadli.w r5,  -820(r30)                 # 4-byte Folded Reload
	add.f.rn r4, r5, r4
	add.f.rn r11, r11, r13
	loadli.w r5,  -148(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r5, r15
	loadli.w r5,  -740(r30)                 # 4-byte Folded Reload
	sub.f.rn r15, r5, r11
	loadli.w r5,  -516(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r5, r3
	add.f.rn r4, r4, r13
	loadli.w r5,  -188(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r5, r15
	loadli.w r5,  -804(r30)                 # 4-byte Folded Reload
	storeli.w r15, -148(r30)                # 4-byte Folded Spill
	add.f.rn r4, r5, r4
	loadli.w r5,  -152(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r5, r3
	loadli.w r5,  -744(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r13
	mul.f.rn r15, r5, r5
	loadli.w r5,  -720(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r4, r3
	loadli.w r4,  -536(r30)                 # 4-byte Folded Reload
	sub.f.rn r21, r5, r11
	loadli.w r5,  -792(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r4, r15
	add.f.rn r3, r5, r3
	loadli.w r5,  -156(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r5, r4
	loadli.w r5,  -736(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r5, r5
	loadli.w r5,  -192(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r5, r21
	add.f.rn r3, r3, r4
	loadli.w r4,  -548(r30)                 # 4-byte Folded Reload
	loadli.w r5,  -784(r30)                 # 4-byte Folded Reload
	mul.f.rn r21, r21, r21
	mul.f.rn r4, r4, r13
	add.f.rn r13, r5, r3
	loadli.w r3,  -160(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r15
	loadli.w r5,  -692(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r3, r4
	loadli.w r3,  -704(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r5, r7
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r3, r11
	add.f.rn r4, r13, r4
	mul.f.rn r13, r5, r3
	loadli.w r5,  -760(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r3, r3
	add.f.rn r4, r5, r4
	loadli.w r5,  -164(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r5, r7
	loadli.w r5,  -728(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r13
	mul.f.rn r13, r5, r5
	loadli.w r5,  -872(r30)                 # 4-byte Folded Reload
	add.f.rn r7, r4, r7
	loadli.w r4,  -688(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r5, r13
	loadli.w r5,  -748(r30)                 # 4-byte Folded Reload
	sub.f.rn r4, r4, r11
	add.f.rn r7, r5, r7
	loadli.w r5,  -200(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r5, r4
	loadli.w r5,  -168(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r4, r4
	mul.f.rn r13, r5, r13
	loadli.w r5,  -876(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r15
	mul.f.rn r15, r5, r18
	loadli.w r5,  -680(r30)                 # 4-byte Folded Reload
	add.f.rn r13, r7, r13
	sub.f.rn r7, r5, r11
	loadli.w r5,  -732(r30)                 # 4-byte Folded Reload
	add.f.rn r13, r5, r13
	loadli.w r5,  -172(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r5, r15
	loadli.w r5,  -708(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r5, r5
	loadli.w r5,  -220(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r5, r7
	add.f.rn r13, r13, r15
	loadli.w r5,  -880(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r7, r7
	mul.f.rn r15, r5, r18
	loadli.w r5,  -724(r30)                 # 4-byte Folded Reload
	add.f.rn r18, r5, r13
	loadli.w r5,  -176(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r20
	mul.f.rn r15, r5, r15
	loadli.w r5,  -716(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r5, r5
	loadli.w r5,  -672(r30)                 # 4-byte Folded Reload
	sub.f.rn r13, r5, r11
	loadli.w r5,  -884(r30)                 # 4-byte Folded Reload
	add.f.rn r15, r18, r15
	mul.f.rn r18, r5, r20
	loadli.w r5,  -712(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r28, r13
	add.f.rn r15, r5, r15
	loadli.w r5,  -888(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r13, r13
	mul.f.rn r18, r25, r18
	loadli.w r25,  -1008(r30)               # 4-byte Folded Reload
	add.f.rn r11, r11, r20
	add.f.rn r15, r15, r18
	mul.f.rn r18, r5, r22
	loadli.w r5,  -660(r30)                 # 4-byte Folded Reload
	sub.f.rn r20, r5, r11
	loadli.w r5,  -700(r30)                 # 4-byte Folded Reload
	add.f.rn r15, r5, r15
	mul.f.rn r18, r23, r18
	loadli.w r5,  -892(r30)                 # 4-byte Folded Reload
	loadli.w r23,  -1028(r30)               # 4-byte Folded Reload
	mul.f.rn r22, r27, r20
	add.f.rn r15, r15, r18
	mul.f.rn r18, r5, r6
	loadli.w r5,  -696(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r22
	add.f.rn r15, r5, r15
	loadli.w r5,  -652(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r12, r18
	sub.f.rn r6, r5, r11
	loadli.w r5,  -896(r30)                 # 4-byte Folded Reload
	mul.f.rn r10, r5, r10
	add.f.rn r15, r15, r18
	loadli.w r5,  -684(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r2, r2
	loadli.w r2,  -644(r30)                 # 4-byte Folded Reload
	mul.f.rn r22, r26, r6
	add.f.rn r15, r5, r15
	mul.f.rn r10, r14, r10
	loadli.w r5,  -904(r30)                 # 4-byte Folded Reload
	loadli.w r14,  -1060(r30)               # 4-byte Folded Reload
	add.f.rn r11, r11, r22
	loadli.w r22,  -1036(r30)               # 4-byte Folded Reload
	add.f.rn r10, r15, r10
	mul.f.rn r15, r5, r18
	loadli.w r5,  -676(r30)                 # 4-byte Folded Reload
	sub.f.rn r2, r2, r11
	add.f.rn r10, r5, r10
	mul.f.rn r15, r19, r15
	loadli.w r5,  -916(r30)                 # 4-byte Folded Reload
	loadli.w r19,  -1044(r30)               # 4-byte Folded Reload
	mul.f.rn r18, r25, r2
	mul.f.rn r17, r5, r17
	loadli.w r5,  -632(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r2, r2
	add.f.rn r15, r10, r15
	add.f.rn r11, r11, r18
	mul.f.rn r17, r24, r17
	loadli.w r24,  -1012(r30)               # 4-byte Folded Reload
	sub.f.rn r10, r5, r11
	loadli.w r5,  -668(r30)                 # 4-byte Folded Reload
	add.f.rn r15, r5, r15
	loadli.w r5,  -920(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r24, r10
	mul.f.rn r1, r5, r1
	loadli.w r5,  -664(r30)                 # 4-byte Folded Reload
	mul.f.rn r10, r10, r10
	add.f.rn r15, r15, r17
	add.f.rn r11, r11, r18
	add.f.rn r15, r5, r15
	loadli.w r5,  -180(r30)                 # 4-byte Folded Reload
	mul.f.rn r17, r5, r1
	loadli.w r1,  -624(r30)                 # 4-byte Folded Reload
	loadli.w r5,  -928(r30)                 # 4-byte Folded Reload
	sub.f.rn r1, r1, r11
	mul.f.rn r16, r5, r16
	loadli.w r5,  -656(r30)                 # 4-byte Folded Reload
	add.f.rn r15, r15, r17
	mul.f.rn r17, r23, r1
	mul.f.rn r1, r1, r1
	add.f.rn r15, r5, r15
	loadli.w r5,  -184(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r17
	mul.f.rn r17, r5, r16
	loadli.w r5,  -148(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r5, r5
	loadli.w r5,  -616(r30)                 # 4-byte Folded Reload
	sub.f.rn r16, r5, r11
	add.f.rn r15, r15, r17
	loadli.w r5,  -936(r30)                 # 4-byte Folded Reload
	mul.f.rn r17, r5, r18
	loadli.w r5,  -648(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r22, r16
	add.f.rn r15, r5, r15
	loadli.w r5,  -188(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r16, r16
	mul.f.rn r17, r5, r17
	loadli.w r5,  -948(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r18
	mul.f.rn r18, r5, r21
	loadli.w r5,  -604(r30)                 # 4-byte Folded Reload
	add.f.rn r15, r15, r17
	sub.f.rn r17, r5, r11
	loadli.w r5,  -640(r30)                 # 4-byte Folded Reload
	add.f.rn r15, r5, r15
	loadli.w r5,  -192(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r5, r18
	loadli.w r5,  -956(r30)                 # 4-byte Folded Reload
	mul.f.rn r21, r19, r17
	mul.f.rn r17, r17, r17
	mul.f.rn r3, r5, r3
	loadli.w r5,  -636(r30)                 # 4-byte Folded Reload
	add.f.rn r15, r15, r18
	add.f.rn r11, r11, r21
	loadli.w r21,  -1052(r30)               # 4-byte Folded Reload
	add.f.rn r15, r5, r15
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r5, r3
	loadli.w r3,  -596(r30)                 # 4-byte Folded Reload
	loadli.w r5,  -960(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r3, r11
	mul.f.rn r4, r5, r4
	loadli.w r5,  -628(r30)                 # 4-byte Folded Reload
	add.f.rn r15, r15, r18
	mul.f.rn r18, r21, r3
	mul.f.rn r3, r3, r3
	add.f.rn r15, r5, r15
	loadli.w r5,  -200(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r5, r4
	add.f.rn r11, r11, r18
	loadli.w r5,  -964(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r5, r7
	loadli.w r5,  -620(r30)                 # 4-byte Folded Reload
	add.f.rn r15, r15, r4
	loadli.w r4,  -584(r30)                 # 4-byte Folded Reload
	sub.f.rn r4, r4, r11
	add.f.rn r15, r5, r15
	loadli.w r5,  -220(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r14, r4
	mul.f.rn r7, r5, r7
	loadli.w r5,  -968(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r4, r4
	mul.f.rn r13, r5, r13
	loadli.w r5,  -576(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r18
	add.f.rn r15, r15, r7
	mul.f.rn r18, r20, r20
	mul.f.rn r13, r28, r13
	loadli.w r28,  -1068(r30)               # 4-byte Folded Reload
	sub.f.rn r7, r5, r11
	loadli.w r5,  -612(r30)                 # 4-byte Folded Reload
	add.f.rn r15, r5, r15
	loadli.w r5,  -972(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r28, r7
	mul.f.rn r7, r7, r7
	add.f.rn r13, r15, r13
	mul.f.rn r15, r5, r18
	loadli.w r5,  -608(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r6, r6
	add.f.rn r11, r11, r20
	loadli.w r20,  -1076(r30)               # 4-byte Folded Reload
	add.f.rn r13, r5, r13
	mul.f.rn r15, r27, r15
	loadli.w r5,  -564(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r5, r11
	loadli.w r5,  -976(r30)                 # 4-byte Folded Reload
	add.f.rn r13, r13, r15
	mul.f.rn r15, r5, r18
	loadli.w r5,  -600(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r20, r6
	mul.f.rn r6, r6, r6
	add.f.rn r13, r5, r13
	mul.f.rn r15, r26, r15
	loadli.w r5,  -984(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r18
	add.f.rn r13, r13, r15
	mul.f.rn r15, r5, r2
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r5,  -592(r30)                 # 4-byte Folded Reload
	sub.f.rn r2, r2, r11
	add.f.rn r13, r5, r13
	mul.f.rn r15, r25, r15
	loadli.w r25,  -1084(r30)               # 4-byte Folded Reload
	loadli.w r5,  -988(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r25, r2
	mul.f.rn r2, r2, r2
	add.f.rn r13, r13, r15
	mul.f.rn r15, r5, r10
	loadli.w r5,  -588(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r18
	add.f.rn r13, r5, r13
	loadli.w r5,  -544(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r24, r15
	loadli.w r24,  -1092(r30)               # 4-byte Folded Reload
	sub.f.rn r10, r5, r11
	loadli.w r5,  -996(r30)                 # 4-byte Folded Reload
	mul.f.rn r1, r5, r1
	add.f.rn r13, r13, r15
	loadli.w r5,  -580(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r24, r10
	mul.f.rn r10, r10, r10
	mul.f.rn r15, r23, r1
	loadli.w r1,  -524(r30)                 # 4-byte Folded Reload
	add.f.rn r13, r5, r13
	loadli.w r5,  -1004(r30)                # 4-byte Folded Reload
	add.f.rn r11, r11, r18
	loadli.w r18,  -1100(r30)               # 4-byte Folded Reload
	add.f.rn r13, r13, r15
	mul.f.rn r15, r5, r16
	loadli.w r5,  -572(r30)                 # 4-byte Folded Reload
	sub.f.rn r1, r1, r11
	add.f.rn r13, r5, r13
	mul.f.rn r15, r22, r15
	loadli.w r5,  -1016(r30)                # 4-byte Folded Reload
	mul.f.rn r16, r18, r1
	add.f.rn r15, r13, r15
	add.f.rn r11, r11, r16
	mul.f.rn r16, r5, r17
	loadli.w r5,  -508(r30)                 # 4-byte Folded Reload
	sub.f.rn r13, r5, r11
	loadli.w r5,  -568(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r19, r16
	loadli.w r19,  -1104(r30)               # 4-byte Folded Reload
	add.f.rn r15, r5, r15
	loadli.w r5,  -1024(r30)                # 4-byte Folded Reload
	mul.f.rn r17, r19, r13
	mul.f.rn r3, r5, r3
	loadli.w r5,  -560(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r13, r13
	add.f.rn r15, r15, r16
	add.f.rn r11, r11, r17
	mul.f.rn r16, r21, r3
	loadli.w r3,  -484(r30)                 # 4-byte Folded Reload
	loadli.w r17,  -1116(r30)               # 4-byte Folded Reload
	loadli.w r21,  -1148(r30)               # 4-byte Folded Reload
	add.f.rn r15, r5, r15
	loadli.w r5,  -1032(r30)                # 4-byte Folded Reload
	sub.f.rn r3, r3, r11
	mul.f.rn r4, r5, r4
	loadli.w r5,  -552(r30)                 # 4-byte Folded Reload
	add.f.rn r15, r15, r16
	mul.f.rn r16, r17, r3
	mul.f.rn r3, r3, r3
	add.f.rn r15, r5, r15
	loadli.w r5,  -1040(r30)                # 4-byte Folded Reload
	add.f.rn r11, r11, r16
	mul.f.rn r16, r14, r4
	loadli.w r4,  -468(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r5, r7
	loadli.w r14,  -1124(r30)               # 4-byte Folded Reload
	loadli.w r5,  -540(r30)                 # 4-byte Folded Reload
	sub.f.rn r4, r4, r11
	add.f.rn r15, r15, r16
	mul.f.rn r7, r28, r7
	mul.f.rn r16, r14, r4
	add.f.rn r15, r5, r15
	loadli.w r5,  -1048(r30)                # 4-byte Folded Reload
	mul.f.rn r4, r4, r4
	add.f.rn r11, r11, r16
	add.f.rn r7, r15, r7
	mul.f.rn r15, r5, r6
	loadli.w r5,  -448(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r5, r11
	loadli.w r5,  -528(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r20, r15
	loadli.w r20,  -1132(r30)               # 4-byte Folded Reload
	add.f.rn r7, r5, r7
	loadli.w r5,  -1056(r30)                # 4-byte Folded Reload
	mul.f.rn r16, r20, r6
	mul.f.rn r2, r5, r2
	loadli.w r5,  -520(r30)                 # 4-byte Folded Reload
	mul.f.rn r6, r6, r6
	add.f.rn r7, r7, r15
	add.f.rn r11, r11, r16
	mul.f.rn r15, r25, r2
	loadli.w r2,  -428(r30)                 # 4-byte Folded Reload
	loadli.w r16,  -1136(r30)               # 4-byte Folded Reload
	add.f.rn r7, r5, r7
	loadli.w r5,  -1064(r30)                # 4-byte Folded Reload
	sub.f.rn r2, r2, r11
	mul.f.rn r10, r5, r10
	loadli.w r5,  -504(r30)                 # 4-byte Folded Reload
	add.f.rn r7, r7, r15
	mul.f.rn r15, r16, r2
	mul.f.rn r10, r24, r10
	mul.f.rn r2, r2, r2
	add.f.rn r7, r5, r7
	loadli.w r5,  -1072(r30)                # 4-byte Folded Reload
	add.f.rn r11, r11, r15
	mul.f.rn r15, r1, r1
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	add.f.rn r7, r7, r10
	mul.f.rn r10, r5, r15
	sub.f.rn r1, r1, r11
	loadli.w r5,  -488(r30)                 # 4-byte Folded Reload
	add.f.rn r7, r5, r7
	loadli.w r5,  -1080(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r21, r1
	mul.f.rn r10, r18, r10
	loadli.w r18,  -1156(r30)               # 4-byte Folded Reload
	mul.f.rn r1, r1, r1
	add.f.rn r7, r7, r10
	mul.f.rn r10, r5, r13
	add.f.rn r11, r11, r15
	loadli.w r13,  -396(r30)                # 4-byte Folded Reload
	loadli.w r5,  -472(r30)                 # 4-byte Folded Reload
	sub.f.rn r13, r13, r11
	add.f.rn r7, r5, r7
	mul.f.rn r10, r19, r10
	loadli.w r5,  -1088(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r5, r3
	loadli.w r5,  -460(r30)                 # 4-byte Folded Reload
	add.f.rn r7, r7, r10
	mul.f.rn r15, r18, r13
	mul.f.rn r3, r17, r3
	loadli.w r17,  -1188(r30)               # 4-byte Folded Reload
	add.f.rn r10, r11, r15
	add.f.rn r7, r5, r7
	loadli.w r11,  -388(r30)                # 4-byte Folded Reload
	loadli.w r5,  -1096(r30)                # 4-byte Folded Reload
	loadli.w r15,  -1164(r30)               # 4-byte Folded Reload
	mul.f.rn r4, r5, r4
	loadli.w r5,  -444(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r7, r3
	sub.f.rn r11, r11, r10
	mul.f.rn r4, r14, r4
	loadli.w r14,  -1172(r30)               # 4-byte Folded Reload
	mul.f.rn r7, r15, r11
	add.f.rn r3, r5, r3
	loadli.w r5,  -1112(r30)                # 4-byte Folded Reload
	mul.f.rn r11, r11, r11
	mul.f.rn r2, r5, r2
	loadli.w r5,  -1152(r30)                # 4-byte Folded Reload
	add.f.rn r7, r10, r7
	add.f.rn r3, r3, r4
	loadli.w r4,  -1108(r30)                # 4-byte Folded Reload
	loadli.w r10,  -432(r30)                # 4-byte Folded Reload
	mul.f.rn r4, r4, r6
	loadli.w r6,  -376(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r16, r2
	loadli.w r16,  -1180(r30)               # 4-byte Folded Reload
	sub.f.rn r6, r6, r7
	add.f.rn r3, r10, r3
	mul.f.rn r4, r20, r4
	mul.f.rn r10, r14, r6
	mul.f.rn r6, r6, r6
	add.f.rn r3, r3, r4
	add.f.rn r4, r7, r10
	loadli.w r7,  -424(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r7, r3
	loadli.w r7,  -368(r30)                 # 4-byte Folded Reload
	sub.f.rn r7, r7, r4
	add.f.rn r2, r3, r2
	loadli.w r3,  -1120(r30)                # 4-byte Folded Reload
	mul.f.rn r10, r16, r7
	mul.f.rn r1, r3, r1
	mul.f.rn r7, r7, r7
	add.f.rn r3, r4, r10
	loadli.w r4,  -408(r30)                 # 4-byte Folded Reload
	mul.f.rn r1, r21, r1
	loadli.w r10,  -360(r30)                # 4-byte Folded Reload
	mul.f.rn r7, r5, r7
	loadli.w r5,  -1212(r30)                # 4-byte Folded Reload
	add.f.rn r2, r4, r2
	mul.f.rn r4, r13, r13
	loadli.w r13,  -400(r30)                # 4-byte Folded Reload
	sub.f.rn r10, r10, r3
	add.f.rn r1, r2, r1
	loadli.w r2,  -1128(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r2, r4
	mul.f.rn r4, r17, r10
	add.f.rn r1, r13, r1
	loadli.w r13,  -1196(r30)               # 4-byte Folded Reload
	mul.f.rn r2, r18, r2
	add.f.rn r3, r3, r4
	loadli.w r4,  -348(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -1140(r30)                # 4-byte Folded Reload
	sub.f.rn r4, r4, r3
	mul.f.rn r2, r2, r11
	loadli.w r11,  -392(r30)                # 4-byte Folded Reload
	add.f.rn r1, r11, r1
	mul.f.rn r11, r13, r4
	mul.f.rn r4, r4, r4
	mul.f.rn r2, r15, r2
	add.f.rn r3, r3, r11
	loadli.w r11,  -380(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -1144(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r2, r6
	loadli.w r6,  -384(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	loadli.w r6,  -340(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r14, r2
	sub.f.rn r6, r6, r3
	loadli.w r14,  -1204(r30)               # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	mul.f.rn r2, r14, r6
	mul.f.rn r6, r6, r6
	add.f.rn r1, r11, r1
	add.f.rn r2, r3, r2
	mul.f.rn r3, r16, r7
	mul.f.rn r7, r10, r10
	loadli.w r10,  -328(r30)                # 4-byte Folded Reload
	loadli.w r11,  -372(r30)                # 4-byte Folded Reload
	loadli.w r16,  -212(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1160(r30)                # 4-byte Folded Reload
	sub.f.rn r10, r10, r2
	mul.f.rn r3, r3, r7
	add.f.rn r1, r11, r1
	mul.f.rn r7, r5, r10
	loadli.w r11,  -1216(r30)               # 4-byte Folded Reload
	mul.f.rn r3, r17, r3
	add.f.rn r2, r2, r7
	loadli.w r7,  -364(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1168(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r4
	loadli.w r4,  -320(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r7, r1
	sub.f.rn r4, r4, r2
	mul.f.rn r3, r13, r3
	loadli.w r13,  -1224(r30)               # 4-byte Folded Reload
	mul.f.rn r7, r11, r4
	mul.f.rn r4, r4, r4
	add.f.rn r1, r1, r3
	loadli.w r3,  -1176(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r6
	loadli.w r6,  -356(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r7
	loadli.w r7,  -308(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	mul.f.rn r6, r10, r10
	loadli.w r10,  -352(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r14, r3
	sub.f.rn r7, r7, r2
	add.f.rn r1, r1, r3
	loadli.w r3,  -1184(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r6
	mul.f.rn r6, r13, r7
	mul.f.rn r7, r7, r7
	add.f.rn r1, r10, r1
	loadli.w r10,  -1240(r30)               # 4-byte Folded Reload
	mul.f.rn r3, r5, r3
	loadli.w r5,  -1192(r30)                # 4-byte Folded Reload
	add.f.rn r2, r2, r6
	loadli.w r6,  -344(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r5, r4
	loadli.w r5,  -1236(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -304(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r11, r4
	sub.f.rn r3, r3, r2
	add.f.rn r1, r6, r1
	mul.f.rn r6, r5, r3
	mul.f.rn r3, r3, r3
	add.f.rn r1, r1, r4
	loadli.w r4,  -1200(r30)                # 4-byte Folded Reload
	mul.f.rn r4, r4, r7
	loadli.w r7,  -336(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r6
	loadli.w r6,  -300(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r7, r1
	mul.f.rn r4, r13, r4
	sub.f.rn r6, r6, r2
	add.f.rn r1, r1, r4
	loadli.w r4,  -1208(r30)                # 4-byte Folded Reload
	mul.f.rn r7, r10, r6
	mul.f.rn r3, r4, r3
	loadli.w r4,  -332(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r4, r1
	add.f.rn r2, r2, r7
	mul.f.rn r4, r6, r6
	loadli.w r7,  -1244(r30)                # 4-byte Folded Reload
	loadli.w r6,  -324(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r5, r3
	loadli.w r5,  -296(r30)                 # 4-byte Folded Reload
	sub.f.rn r5, r5, r2
	add.f.rn r1, r1, r3
	loadli.w r3,  -1220(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r4
	mul.f.rn r4, r7, r5
	mul.f.rn r5, r5, r5
	add.f.rn r1, r6, r1
	mul.f.rn r3, r10, r3
	add.f.rn r2, r2, r4
	loadli.w r4,  -292(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1228(r30)                # 4-byte Folded Reload
	sub.f.rn r4, r4, r2
	mul.f.rn r3, r3, r5
	loadli.w r5,  -316(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	mul.f.rn r5, r4, r4
	mul.f.rn r4, r9, r4
	mul.f.rn r3, r7, r3
	add.f.rn r2, r2, r4
	add.f.rn r1, r1, r3
	loadli.w r3,  -1232(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r5
	loadli.w r5,  -312(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	mul.f.rn r3, r9, r3
	add.f.rn r1, r1, r3
	loadli.w r3,  -204(r30)                 # 4-byte Folded Reload
	stores.w r2, 0(r3)
	loadli.w r2,  -208(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
.LBB0_200:                              #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r16
	sync_group
	loadli.w r1,  -204(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -208(r30)                 # 4-byte Folded Reload
	addli r3, zero, 0
	addli r9, r30, -64
	loads.w r1, 0(r1)
	loads.w r2, 0(r2)
	.loc	1 71 42                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:71:42
	mfence { lm }
	.loc	1 71 95                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:71:95
	vload_mask16.mz vr8{mr1}, -64(r30)
	.loc	1 71 42                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:71:42
	mfence { lm }
	loadli.w r14,  56(r30)
	loadli.w r15,  52(r30)
	.loc	1 71 95                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:71:95
	#APP
	vfp162float_l.rn vr6, vr8
	#NO_APP
	#APP
	vfp162float_h.rn vr7, vr8
	#NO_APP
	loadli.w r17,  -132(r30)                # 4-byte Folded Reload
	loadli.w r18,  -224(r30)                # 4-byte Folded Reload
	loadli.w r19,  -228(r30)                # 4-byte Folded Reload
	loadli.w r20,  -240(r30)                # 4-byte Folded Reload
.LBB0_201:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 72 42 is_stmt 1               # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:72:42
	add.s r4, r9, r3
	addli r3, r3, 4
	store.h zero, 0(r4)
	store.h zero, 2(r4)
	mfence { lm }
	bneq r3, r8, .LBB0_201
# %bb.202:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 83 25                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:83:25
	lui r3, 237568
	.loc	1 81 24                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:81:24
	lui r4, 524288
	.loc	1 93 29                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:93:29
	load.d r[6:7], -144(r30)                # 8-byte Folded Reload
	.loc	1 83 25                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:83:25
	mul.f.rn r2, r2, r3
	.loc	1 85 24                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:85:24
	loadli.w r3,  -284(r30)                 # 4-byte Folded Reload
	.loc	1 81 24                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:81:24
	xor r1, r1, r4
	.loc	1 93 29                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:93:29
	load.d r[4:5], 32(r30)
	add.ul r[4:5], r[4:5], r[6:7]
	.loc	1 72 42                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:72:42
	load.d r[6:7], -280(r30)                # 8-byte Folded Reload
	.loc	1 85 24                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:85:24
	add.f.rn r2, r2, r3
	.loc	1 72 42                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:72:42
	lui r3, 983040
	or r3, r8, r3
	l_gm2lm r3, r9, 0(r[6:7])
	.loc	1 86 32                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:86:32
	lui r3, 260096
	.loc	1 72 42                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:72:42
	mfence { lm }
	.loc	1 86 32                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:86:32
	sqrt.f.rn r2, r2
	.loc	1 72 95                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:72:95
	vload_mask16.mz vr8{mr1}, -64(r30)
	.loc	1 72 42 is_stmt 0               # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:72:42
	mfence { lm }
	.loc	1 81 24 is_stmt 1               # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:81:24
	#APP
	vadd.f.mz.rn vr4{mr1}, r1, vr4
	#NO_APP
	#APP
	vadd.f.mz.rn vr5{mr1}, r1, vr5
	#NO_APP
	.loc	1 72 95                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:72:95
	#APP
	vfp162float_l.rn vr9, vr8
	#NO_APP
	#APP
	vfp162float_h.rn vr10, vr8
	#NO_APP
	.loc	1 86 32                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:86:32
	div.f.rn r2, r3, r2
	.loc	1 93 53                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:93:53
	lui r3, 983040
	.loc	1 87 24                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:87:24
	#APP
	vmul.f.mz.rn vr4{mr1}, r2, vr4
	#NO_APP
	#APP
	vmul.f.mz.rn vr5{mr1}, r2, vr5
	#NO_APP
	.loc	1 89 24                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:89:24
	#APP
	vmac.f.mz.rn vr9{mr1}, vr4, vr6
	#NO_APP
	#APP
	vmac.f.mz.rn vr10{mr1}, vr5, vr7
	#NO_APP
	.loc	1 93 53                         # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:93:53
	#APP
	vfloat2fp16_l.rn vr4, vr9
	vfloat2fp16_h.rn vr4, vr10
	#NO_APP
	vstore_mask16.mz vr4{mr1}, -64(r30)
	addli r2, zero, 2047
	or r1, r8, r3
	mfence { lm }
	s_lm2gm r1, r9, 0(r[4:5])
	addli r4, r30, -128
	mfence { lm }
	j .LBB0_2
.LBB0_203:                              # %._crit_edge
	.loc	1 63 4 epilogue_begin           # cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py:63:4
	addli sp, sp, 1248
	mfence { lm, sm, gm }
	exit
.Ltmp1:
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
	.long	60                              # 0x3c
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	1312                            # 0x520
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
	.byte	0                               # DW_CHILDREN_no
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	4                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x1b DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	2                               # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"cgchkspxpw52g7wmdlby5t6pm42nyjhqa25mbyhzde3ix5xnv4ms.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/smoke-large-v1/cache/inductor/gc" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 19.1.7 (b526e9ed77e93b92ce71f434d0bfd2c7ad245c37)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
