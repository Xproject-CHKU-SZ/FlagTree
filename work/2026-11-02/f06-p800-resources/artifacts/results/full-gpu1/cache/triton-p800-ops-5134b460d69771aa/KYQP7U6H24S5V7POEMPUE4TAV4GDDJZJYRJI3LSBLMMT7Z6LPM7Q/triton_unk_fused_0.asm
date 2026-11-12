	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/fi" "cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py"
	.loc	1 22 0                          # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -464
	addli r30, sp, 400
	lui r2, :hi20:global_smem
	core_id r1
	lui r5, 15
	load_param_i r9, 0
	loadli.w r6,  36(r30)
	loadli.w r4,  32(r30)
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	ori r26, r5, 4095
	lui r5, 1046527
	loadli.w r22,  40(r30)
	add.s r25, r3, r2
	ori r5, r5, 4095
	mul.s r4, r6, r4
	stores.w zero, 1040(r25)
	mfence { lm, sm, gm }
	csr_set csr3, r26
	sync_group
	stores.w r5, 0(r25)
	mul.s r4, r4, r22
	mfence { lm, sm, gm }
	csr_set csr3, r26
	sync_group
	storeli.w r4, -228(r30)                 # 4-byte Folded Spill
	ble.s r4, r9, .LBB0_719
# %bb.1:                                # %.lr.ph
	addli r4, zero, 64
	addli r7, r25, 1040
	addli r20, zero, 1
	addli r13, r30, -64
	lui r28, 1048560
	storeli.w r25, -396(r30)                # 4-byte Folded Spill
	storeli.w r26, -400(r30)                # 4-byte Folded Spill
	div.s r6, r1, r4
	storeli.w r7, -236(r30)                 # 4-byte Folded Spill
	load_param_i r7, 1
	load.d r[4:5], 8(r30)
	storeli.w r7, -240(r30)                 # 4-byte Folded Spill
	storeli.w r6, -232(r30)                 # 4-byte Folded Spill
	slli r6, r6, 6
	sub.s r6, r1, r6
	andi r1, r1, 63
	slli r7, r6, 2
	lui r6, 1048575
	storeli.w r1, -132(r30)                 # 4-byte Folded Spill
	lui r1, 7
	ori r8, r7, 1
	ori r6, r6, 3840
	storeli.w r7, -244(r30)                 # 4-byte Folded Spill
	ori r27, r1, 4095
	lui r1, 524287
	storeli.w r8, -248(r30)                 # 4-byte Folded Spill
	ori r8, r7, 2
	and r3, r3, r6
	ori r10, r1, 4095
	lui r1, 522240
	storeli.w r8, -252(r30)                 # 4-byte Folded Spill
	ori r8, r7, 3
	add.s r21, r3, r2
	lui r2, 522239
	storeli.w r8, -256(r30)                 # 4-byte Folded Spill
	sext_int2long r[7:8], r7
	ori r11, r2, 4095
	addli r23, r21, 1040
	lui r2, 1024
	sll.d r[7:8], r[7:8], r20
	add.ul r[4:5], r[4:5], r[7:8]
	store.d r[4:5], -264(r30)               # 8-byte Folded Spill
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	load.d r[14:15], 16(r30)
.Ltmp0:
	.loc	1 58 48 prologue_end            # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:58:48
	lui r3, 983040
	addli r24, zero, 2
	.loc	1 58 25 is_stmt 0               # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:58:25
	sext_int2long r[12:13], r9
	addli r20, zero, 1
	sext_int2long r[16:17], r7
	addli r7, r30, -64
	sext_int2long r[8:9], r8
	.loc	1 58 48                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:58:48
	or r3, r24, r3
	.loc	1 58 25                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:58:25
	sll.d r[12:13], r[12:13], r20
	sll.d r[8:9], r[8:9], r20
	addli.d r[18:19], r[14:15], 0
	load.d r[14:15], -144(r30)              # 8-byte Folded Reload
	add.ul r[12:13], r[18:19], r[12:13]
	add.ul r[8:9], r[18:19], r[8:9]
	add.ul r[14:15], r[18:19], r[14:15]
	.loc	1 58 48                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:58:48
	s_lm2gm r3, r7, 0(r[14:15])
	lui r3, 983040
	.loc	1 58 25                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:58:25
	sll.d r[14:15], r[16:17], r20
	.loc	1 58 48                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:58:48
	or r3, r24, r3
	.loc	1 58 25                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:58:25
	add.ul r[14:15], r[18:19], r[14:15]
	.loc	1 58 48                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:58:48
	s_lm2gm r3, r6, 0(r[12:13])
	lui r3, 983040
	lui r6, 983040
	addli r13, r30, -64
	or r3, r24, r3
	or r6, r24, r6
	s_lm2gm r3, r4, 0(r[8:9])
	loadli.w r9,  -136(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -240(r30)                 # 4-byte Folded Reload
	s_lm2gm r6, r5, 0(r[14:15])
	mfence { lm }
	add.s r9, r9, r3
	loadli.w r3,  -228(r30)                 # 4-byte Folded Reload
	blt.s r9, r3, .LBB0_3
	j .LBB0_719
.LBB0_3:                                # %.split15.critedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_577 Depth 2
	.loc	1 0 48                          # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:0:48
	div.s r3, r9, r22
	loadli.w r4,  36(r30)
	.loc	1 29 23 is_stmt 1               # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:29:23
	loadli.w r6,  -232(r30)                 # 4-byte Folded Reload
	.loc	1 38 46                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:38:46
	store.h zero, -128(r30)
	store.h zero, -126(r30)
	.loc	1 39 37                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:39:37
	lui r5, 983040
	addli r8, zero, 8
	.loc	1 38 46                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:38:46
	mfence { lm }
	store.h zero, -124(r30)
	store.h zero, -122(r30)
	div.s r3, r3, r4
	lui r4, 983040
	.loc	1 29 23                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:29:23
	add.s r12, r3, r6
	.loc	1 38 37                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:38:37
	loadli.w r3,  -244(r30)                 # 4-byte Folded Reload
	.loc	1 38 46 is_stmt 0               # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:38:46
	mfence { lm }
	.loc	1 38 41                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:38:41
	slli r16, r12, 8
	.loc	1 38 37                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:38:37
	add.s r3, r16, r3
	.loc	1 38 30                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:38:30
	sext_int2long r[6:7], r3
	.loc	1 38 46                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:38:46
	or r3, r8, r4
	.loc	1 39 37 is_stmt 1               # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:39:37
	or r4, r8, r5
	.loc	1 38 46                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:38:46
	addli r5, r30, -128
	.loc	1 38 30 is_stmt 0               # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:38:30
	sll.d r[14:15], r[6:7], r20
	load.d r[6:7], 0(r30)
	store.d r[14:15], -144(r30)             # 8-byte Folded Spill
	add.ul r[6:7], r[6:7], r[14:15]
	.loc	1 38 46                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:38:46
	l_gm2lm r3, r5, 0(r[6:7])
	.loc	1 39 37 is_stmt 1               # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:39:37
	load.d r[5:6], -264(r30)                # 8-byte Folded Reload
	l_gm2lm r4, r13, 0(r[5:6])
	.loc	1 38 46                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:38:46
	mfence { lm }
	load.hu r3, -128(r30)
	.loc	1 39 37                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:39:37
	load.hu r4, -64(r30)
	.loc	1 38 46                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:38:46
	bfloat2float.rn r3, r3
	.loc	1 39 37                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:39:37
	bfloat2float.rn r4, r4
	.loc	1 44 18                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:44:18
	add.f.rn r3, r3, r4
	.loc	1 45 19                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:45:19
	and r5, r3, r10
	setlt.u r4, r1, r5
	bneq r4, zero, .LBB0_5
# %bb.4:                                # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:0:19
	addli r14, r3, 0
	j .LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:45:19
	or r14, r3, r2
.LBB0_6:                                # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:0:0
	load.hu r4, -126(r30)
	load.hu r6, -62(r30)
	bfloat2float.rn r4, r4
	bfloat2float.rn r6, r6
	add.f.rn r4, r4, r6
	.loc	1 45 19                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:45:19
	and r6, r4, r10
	setlt.u r7, r1, r6
	bneq r7, zero, .LBB0_8
# %bb.7:                                # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:0:19
	addli r15, r4, 0
	.loc	1 45 19                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:45:19
	setlt.u r5, r11, r5
	beq r5, zero, .LBB0_9
	j .LBB0_10
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	or r15, r4, r2
	setlt.u r5, r11, r5
	bneq r5, zero, .LBB0_10
.LBB0_9:                                # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:0:19
	srli r5, r3, 16
	andi r5, r5, 1
	add.s r3, r3, r5
	add.s r3, r3, r27
	and r14, r3, r28
.LBB0_10:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:45:19
	setlt.u r3, r11, r6
	bneq r3, zero, .LBB0_12
# %bb.11:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	add.s r3, r3, r27
	and r15, r3, r28
.LBB0_12:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	load.hu r3, -124(r30)
	load.hu r4, -60(r30)
	load.hu r6, -58(r30)
	bfloat2float.rn r3, r3
	bfloat2float.rn r4, r4
	add.f.rn r5, r3, r4
	load.hu r3, -122(r30)
	and r7, r5, r10
	setlt.u r4, r1, r7
	bneq r4, zero, .LBB0_14
# %bb.13:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	addli r4, r5, 0
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	or r4, r5, r2
.LBB0_15:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	bfloat2float.rn r3, r3
	bfloat2float.rn r6, r6
	add.f.rn r6, r3, r6
	and r8, r6, r10
	setlt.u r3, r1, r8
	bneq r3, zero, .LBB0_17
# %bb.16:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	addli r3, r6, 0
	setlt.u r7, r11, r7
	beq r7, zero, .LBB0_18
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	or r3, r6, r2
	setlt.u r7, r11, r7
	bneq r7, zero, .LBB0_19
.LBB0_18:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	add.s r4, r4, r27
	and r4, r4, r28
.LBB0_19:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	setlt.u r5, r11, r8
	bneq r5, zero, .LBB0_21
# %bb.20:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	srli r3, r6, 16
	andi r3, r3, 1
	add.s r3, r6, r3
	add.s r3, r3, r27
	and r3, r3, r28
.LBB0_21:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	setlt.f r6, r4, r14
	addli r5, r14, 0
	storeli.w r9, -136(r30)                 # 4-byte Folded Spill
	bneq r6, zero, .LBB0_23
# %bb.22:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	addli r5, r4, 0
.LBB0_23:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	slli r6, r14, 9
	slli r7, r4, 9
	srli r8, r14, 23
	srli r9, r4, 23
	seteq r6, r6, zero
	seteq r7, r7, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r6, r8, r6
	or r7, r9, r7
	and r6, r6, r7
	beq r6, zero, .LBB0_557
# %bb.24:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	addli r6, r14, 0
	bneq r14, zero, .LBB0_558
.LBB0_25:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	beq r4, zero, .LBB0_27
.LBB0_26:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	addli r4, r6, 0
.LBB0_27:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	setle.f r6, zero, r5
	setle.f r7, r5, zero
	and r6, r7, r6
	bneq r6, zero, .LBB0_29
# %bb.28:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	addli r4, r5, 0
.LBB0_29:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	setlt.f r6, r3, r15
	addli r5, r15, 0
	bneq r6, zero, .LBB0_31
# %bb.30:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	addli r5, r3, 0
.LBB0_31:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	slli r6, r15, 9
	slli r7, r3, 9
	srli r8, r15, 23
	srli r9, r3, 23
	seteq r6, r6, zero
	seteq r7, r7, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r6, r8, r6
	or r7, r9, r7
	and r6, r6, r7
	beq r6, zero, .LBB0_559
# %bb.32:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	addli r6, r15, 0
	bneq r15, zero, .LBB0_560
.LBB0_33:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	beq r3, zero, .LBB0_35
.LBB0_34:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	addli r3, r6, 0
.LBB0_35:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	setle.f r6, zero, r5
	setle.f r7, r5, zero
	and r6, r7, r6
	bneq r6, zero, .LBB0_37
# %bb.36:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	addli r3, r5, 0
.LBB0_37:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/torch/_inductor/runtime" "triton_helpers.py"
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	setlt.f r6, r3, r4
	addli r5, r4, 0
	bneq r6, zero, .LBB0_39
# %bb.38:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r5, r3, 0
.LBB0_39:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	slli r6, r4, 9
	slli r7, r3, 9
	srli r8, r4, 23
	srli r9, r3, 23
	seteq r6, r6, zero
	seteq r7, r7, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r6, r8, r6
	or r7, r9, r7
	.loc	2 113 29                        # triton_helpers.py:113:29
	and r6, r6, r7
	beq r6, zero, .LBB0_561
# %bb.40:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	bneq r4, zero, .LBB0_562
.LBB0_41:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	beq r3, zero, .LBB0_43
.LBB0_42:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r4, 0
.LBB0_43:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r5
	setle.f r6, r5, zero
	and r4, r6, r4
	bneq r4, zero, .LBB0_45
# %bb.44:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r5, 0
.LBB0_45:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	addli r4, zero, 32
	blt.s r12, r4, .LBB0_47
# %bb.46:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 1046528
.LBB0_47:                               # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	stores.w r3, 0(r25)
	mfence { lm, sm, gm }
	csr_set csr3, r26
	sync_group
	loadli.w r3,  -132(r30)                 # 4-byte Folded Reload
	bneq r3, zero, .LBB0_555
# %bb.48:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r5, 0(r21)
	loads.w r3, 4(r21)
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r6, r3, r5
	addli r4, r5, 0
	bneq r6, zero, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r3, 0
.LBB0_50:                               #   in Loop: Header=BB0_3 Depth=1
	slli r6, r5, 9
	slli r7, r3, 9
	srli r8, r5, 23
	srli r9, r3, 23
	seteq r6, r6, zero
	seteq r7, r7, zero
	andi r8, r8, 255
	andi r9, r9, 255
	setlti r8, r8, 255
	setlti r9, r9, 255
	or r6, r8, r6
	or r7, r9, r7
	and r6, r6, r7
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_595
# %bb.51:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r5, zero, .LBB0_596
.LBB0_52:                               #   in Loop: Header=BB0_3 Depth=1
	beq r3, zero, .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r5, 0
.LBB0_54:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r4
	setle.f r6, r4, zero
	and r5, r6, r5
	bneq r5, zero, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r4, 0
.LBB0_56:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r19, 8(r21)
	addli r4, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r19, r3
	bneq r5, zero, .LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r19, 0
.LBB0_58:                               #   in Loop: Header=BB0_3 Depth=1
	slli r5, r19, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r3, 9
	srli r7, r19, 23
	srli r8, r3, 23
	seteq r5, r5, zero
	seteq r6, r6, zero
	andi r7, r7, 255
	andi r8, r8, 255
	setlti r7, r7, 255
	setlti r8, r8, 255
	or r5, r7, r5
	or r6, r8, r6
	and r5, r6, r5
	beq r5, zero, .LBB0_597
# %bb.59:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r3, zero, .LBB0_598
.LBB0_60:                               #   in Loop: Header=BB0_3 Depth=1
	beq r19, zero, .LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r3, 0
.LBB0_62:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r4
	setle.f r5, r4, zero
	storeli.w r14, -276(r30)                # 4-byte Folded Spill
	storeli.w r12, -272(r30)                # 4-byte Folded Spill
	and r3, r5, r3
	bneq r3, zero, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r4, 0
.LBB0_64:                               #   in Loop: Header=BB0_3 Depth=1
	loads.w r4, 64(r21)
	loads.w r5, 208(r21)
	loads.w r24, 12(r21)
	loads.w r13, 16(r21)
	loads.w r9, 20(r21)
	loads.w r20, 24(r21)
	loads.w r7, 28(r21)
	loads.w r6, 32(r21)
	loads.w r14, 36(r21)
	loads.w r3, 40(r21)
	loads.w r8, 44(r21)
	loads.w r25, 48(r21)
	loads.w r18, 52(r21)
	loads.w r22, 56(r21)
	loads.w r12, 60(r21)
	addli r26, r19, 0
	storeli.w r15, -280(r30)                # 4-byte Folded Spill
	storeli.w r16, -268(r30)                # 4-byte Folded Spill
	storeli.w r4, -392(r30)                 # 4-byte Folded Spill
	loads.w r4, 68(r21)
	storeli.w r5, -156(r30)                 # 4-byte Folded Spill
	loads.w r5, 212(r21)
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r17, r24, r19
	storeli.w r4, -388(r30)                 # 4-byte Folded Spill
	loads.w r4, 72(r21)
	storeli.w r5, -316(r30)                 # 4-byte Folded Spill
	loads.w r5, 216(r21)
	storeli.w r4, -224(r30)                 # 4-byte Folded Spill
	loads.w r4, 76(r21)
	storeli.w r5, -152(r30)                 # 4-byte Folded Spill
	loads.w r5, 220(r21)
	storeli.w r4, -384(r30)                 # 4-byte Folded Spill
	loads.w r4, 80(r21)
	storeli.w r5, -312(r30)                 # 4-byte Folded Spill
	loads.w r5, 224(r21)
	storeli.w r4, -220(r30)                 # 4-byte Folded Spill
	loads.w r4, 84(r21)
	storeli.w r5, -148(r30)                 # 4-byte Folded Spill
	loads.w r5, 228(r21)
	storeli.w r4, -380(r30)                 # 4-byte Folded Spill
	loads.w r4, 88(r21)
	storeli.w r5, -308(r30)                 # 4-byte Folded Spill
	loads.w r5, 232(r21)
	storeli.w r4, -216(r30)                 # 4-byte Folded Spill
	loads.w r4, 92(r21)
	storeli.w r5, -304(r30)                 # 4-byte Folded Spill
	loads.w r5, 236(r21)
	storeli.w r4, -376(r30)                 # 4-byte Folded Spill
	loads.w r4, 96(r21)
	storeli.w r5, -300(r30)                 # 4-byte Folded Spill
	loads.w r5, 240(r21)
	storeli.w r4, -212(r30)                 # 4-byte Folded Spill
	loads.w r4, 100(r21)
	storeli.w r5, -296(r30)                 # 4-byte Folded Spill
	loads.w r5, 244(r21)
	storeli.w r4, -372(r30)                 # 4-byte Folded Spill
	loads.w r4, 104(r21)
	storeli.w r5, -292(r30)                 # 4-byte Folded Spill
	loads.w r5, 248(r21)
	storeli.w r4, -208(r30)                 # 4-byte Folded Spill
	loads.w r4, 108(r21)
	storeli.w r5, -288(r30)                 # 4-byte Folded Spill
	loads.w r5, 252(r21)
	storeli.w r4, -368(r30)                 # 4-byte Folded Spill
	loads.w r4, 112(r21)
	storeli.w r5, -284(r30)                 # 4-byte Folded Spill
	storeli.w r4, -204(r30)                 # 4-byte Folded Spill
	loads.w r4, 116(r21)
	storeli.w r4, -364(r30)                 # 4-byte Folded Spill
	loads.w r4, 120(r21)
	storeli.w r4, -200(r30)                 # 4-byte Folded Spill
	loads.w r4, 124(r21)
	storeli.w r4, -360(r30)                 # 4-byte Folded Spill
	loads.w r4, 128(r21)
	storeli.w r4, -196(r30)                 # 4-byte Folded Spill
	loads.w r4, 132(r21)
	storeli.w r4, -356(r30)                 # 4-byte Folded Spill
	loads.w r4, 136(r21)
	storeli.w r4, -192(r30)                 # 4-byte Folded Spill
	loads.w r4, 140(r21)
	storeli.w r4, -352(r30)                 # 4-byte Folded Spill
	loads.w r4, 144(r21)
	storeli.w r4, -188(r30)                 # 4-byte Folded Spill
	loads.w r4, 148(r21)
	storeli.w r4, -348(r30)                 # 4-byte Folded Spill
	loads.w r4, 152(r21)
	storeli.w r4, -184(r30)                 # 4-byte Folded Spill
	loads.w r4, 156(r21)
	storeli.w r4, -340(r30)                 # 4-byte Folded Spill
	loads.w r4, 160(r21)
	storeli.w r4, -180(r30)                 # 4-byte Folded Spill
	loads.w r4, 164(r21)
	storeli.w r4, -336(r30)                 # 4-byte Folded Spill
	loads.w r4, 168(r21)
	storeli.w r4, -176(r30)                 # 4-byte Folded Spill
	loads.w r4, 172(r21)
	storeli.w r4, -332(r30)                 # 4-byte Folded Spill
	loads.w r4, 176(r21)
	storeli.w r4, -172(r30)                 # 4-byte Folded Spill
	loads.w r4, 180(r21)
	storeli.w r4, -328(r30)                 # 4-byte Folded Spill
	loads.w r4, 184(r21)
	storeli.w r4, -168(r30)                 # 4-byte Folded Spill
	loads.w r4, 188(r21)
	storeli.w r4, -324(r30)                 # 4-byte Folded Spill
	loads.w r4, 192(r21)
	storeli.w r4, -164(r30)                 # 4-byte Folded Spill
	loads.w r4, 196(r21)
	storeli.w r4, -320(r30)                 # 4-byte Folded Spill
	loads.w r4, 200(r21)
	storeli.w r4, -160(r30)                 # 4-byte Folded Spill
	loads.w r4, 204(r21)
	bneq r17, zero, .LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r24, 0
.LBB0_66:                               #   in Loop: Header=BB0_3 Depth=1
	slli r17, r24, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r19, 9
	srli r15, r24, 23
	srli r16, r19, 23
	seteq r17, r17, zero
	seteq r5, r5, zero
	andi r15, r15, 255
	andi r16, r16, 255
	setlti r15, r15, 255
	setlti r16, r16, 255
	or r15, r15, r17
	or r5, r16, r5
	and r5, r5, r15
	beq r5, zero, .LBB0_599
# %bb.67:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r19, zero, .LBB0_600
.LBB0_68:                               #   in Loop: Header=BB0_3 Depth=1
	beq r24, zero, .LBB0_70
.LBB0_69:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r19, 0
.LBB0_70:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r26
	setle.f r15, r26, zero
	and r5, r15, r5
	bneq r5, zero, .LBB0_72
# %bb.71:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r26, 0
.LBB0_72:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r13, r24
	addli r19, r24, 0
	bneq r5, zero, .LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r13, 0
.LBB0_74:                               #   in Loop: Header=BB0_3 Depth=1
	slli r5, r13, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r15, r24, 9
	srli r16, r13, 23
	srli r17, r24, 23
	loadli.w r26,  -388(r30)                # 4-byte Folded Reload
	storeli.w r4, -344(r30)                 # 4-byte Folded Spill
	seteq r5, r5, zero
	seteq r15, r15, zero
	andi r16, r16, 255
	andi r17, r17, 255
	setlti r16, r16, 255
	setlti r17, r17, 255
	or r5, r16, r5
	or r15, r17, r15
	and r5, r15, r5
	beq r5, zero, .LBB0_601
# %bb.75:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r24, zero, .LBB0_602
.LBB0_76:                               #   in Loop: Header=BB0_3 Depth=1
	beq r13, zero, .LBB0_78
.LBB0_77:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r24, 0
.LBB0_78:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r19
	setle.f r15, r19, zero
	and r5, r15, r5
	bneq r5, zero, .LBB0_80
# %bb.79:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r19, 0
.LBB0_80:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r9, r13
	loadli.w r24,  -380(r30)                # 4-byte Folded Reload
	addli r19, r13, 0
	bneq r5, zero, .LBB0_82
# %bb.81:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r9, 0
.LBB0_82:                               #   in Loop: Header=BB0_3 Depth=1
	slli r5, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r15, r13, 9
	srli r16, r9, 23
	srli r17, r13, 23
	seteq r5, r5, zero
	seteq r15, r15, zero
	andi r16, r16, 255
	andi r17, r17, 255
	setlti r16, r16, 255
	setlti r17, r17, 255
	or r5, r16, r5
	or r15, r17, r15
	and r5, r15, r5
	beq r5, zero, .LBB0_603
# %bb.83:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r13, zero, .LBB0_604
.LBB0_84:                               #   in Loop: Header=BB0_3 Depth=1
	beq r9, zero, .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r13, 0
.LBB0_86:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r19
	setle.f r13, r19, zero
	and r5, r13, r5
	bneq r5, zero, .LBB0_88
# %bb.87:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r19, 0
.LBB0_88:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r20, r9
	addli r13, r9, 0
	bneq r5, zero, .LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r20, 0
.LBB0_90:                               #   in Loop: Header=BB0_3 Depth=1
	slli r5, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r15, r9, 9
	srli r16, r20, 23
	srli r17, r9, 23
	loadli.w r19,  -364(r30)                # 4-byte Folded Reload
	seteq r5, r5, zero
	seteq r15, r15, zero
	andi r16, r16, 255
	andi r17, r17, 255
	setlti r16, r16, 255
	setlti r17, r17, 255
	or r5, r16, r5
	or r15, r17, r15
	and r5, r15, r5
	beq r5, zero, .LBB0_605
# %bb.91:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r17,  -360(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_606
.LBB0_92:                               #   in Loop: Header=BB0_3 Depth=1
	beq r20, zero, .LBB0_94
.LBB0_93:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r9, 0
.LBB0_94:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r13
	setle.f r9, r13, zero
	and r5, r9, r5
	bneq r5, zero, .LBB0_96
# %bb.95:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r13, 0
.LBB0_96:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r7, r20
	addli r9, r20, 0
	bneq r5, zero, .LBB0_98
# %bb.97:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r7, 0
.LBB0_98:                               #   in Loop: Header=BB0_3 Depth=1
	slli r5, r7, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r13, r20, 9
	srli r15, r7, 23
	srli r16, r20, 23
	loadli.w r4,  -392(r30)                 # 4-byte Folded Reload
	seteq r5, r5, zero
	seteq r13, r13, zero
	andi r15, r15, 255
	andi r16, r16, 255
	setlti r15, r15, 255
	setlti r16, r16, 255
	or r5, r15, r5
	or r13, r16, r13
	and r5, r13, r5
	beq r5, zero, .LBB0_607
# %bb.99:                               #   in Loop: Header=BB0_3 Depth=1
	bneq r20, zero, .LBB0_608
.LBB0_100:                              #   in Loop: Header=BB0_3 Depth=1
	beq r7, zero, .LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r20, 0
.LBB0_102:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r9
	setle.f r13, r9, zero
	and r5, r13, r5
	bneq r5, zero, .LBB0_104
# %bb.103:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r9, 0
.LBB0_104:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r6, r7
	loadli.w r20,  -352(r30)                # 4-byte Folded Reload
	addli r9, r7, 0
	bneq r5, zero, .LBB0_106
# %bb.105:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r6, 0
.LBB0_106:                              #   in Loop: Header=BB0_3 Depth=1
	slli r5, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r13, r7, 9
	srli r15, r6, 23
	srli r16, r7, 23
	seteq r5, r5, zero
	seteq r13, r13, zero
	andi r15, r15, 255
	andi r16, r16, 255
	setlti r15, r15, 255
	setlti r16, r16, 255
	or r5, r15, r5
	or r13, r16, r13
	and r5, r13, r5
	beq r5, zero, .LBB0_609
# %bb.107:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r16,  -376(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_610
.LBB0_108:                              #   in Loop: Header=BB0_3 Depth=1
	beq r6, zero, .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r7, 0
.LBB0_110:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r9
	setle.f r7, r9, zero
	and r5, r7, r5
	bneq r5, zero, .LBB0_112
# %bb.111:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r9, 0
.LBB0_112:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r14, r6
	addli r7, r6, 0
	bneq r5, zero, .LBB0_114
# %bb.113:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r14, 0
.LBB0_114:                              #   in Loop: Header=BB0_3 Depth=1
	slli r5, r14, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r9, r6, 9
	srli r13, r14, 23
	srli r15, r6, 23
	seteq r5, r5, zero
	seteq r9, r9, zero
	andi r13, r13, 255
	andi r15, r15, 255
	setlti r13, r13, 255
	setlti r15, r15, 255
	or r5, r13, r5
	or r9, r15, r9
	and r5, r9, r5
	beq r5, zero, .LBB0_611
# %bb.115:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r15,  -280(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_612
.LBB0_116:                              #   in Loop: Header=BB0_3 Depth=1
	beq r14, zero, .LBB0_118
.LBB0_117:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r6, 0
.LBB0_118:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r7
	setle.f r6, r7, zero
	and r5, r6, r5
	bneq r5, zero, .LBB0_120
# %bb.119:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r7, 0
.LBB0_120:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r3, r14
	addli r6, r14, 0
	bneq r5, zero, .LBB0_122
# %bb.121:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r3, 0
.LBB0_122:                              #   in Loop: Header=BB0_3 Depth=1
	slli r5, r3, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r7, r14, 9
	srli r9, r3, 23
	srli r13, r14, 23
	seteq r5, r5, zero
	seteq r7, r7, zero
	andi r9, r9, 255
	andi r13, r13, 255
	setlti r9, r9, 255
	setlti r13, r13, 255
	or r5, r9, r5
	or r7, r13, r7
	and r5, r7, r5
	beq r5, zero, .LBB0_613
# %bb.123:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r14, zero, .LBB0_614
.LBB0_124:                              #   in Loop: Header=BB0_3 Depth=1
	beq r3, zero, .LBB0_126
.LBB0_125:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r14, 0
.LBB0_126:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r6
	setle.f r7, r6, zero
	and r5, r7, r5
	bneq r5, zero, .LBB0_128
# %bb.127:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_128:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r8, r3
	loadli.w r14,  -276(r30)                # 4-byte Folded Reload
	addli r6, r3, 0
	bneq r5, zero, .LBB0_130
# %bb.129:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r8, 0
.LBB0_130:                              #   in Loop: Header=BB0_3 Depth=1
	slli r5, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r7, r3, 9
	srli r9, r8, 23
	srli r13, r3, 23
	seteq r5, r5, zero
	seteq r7, r7, zero
	andi r9, r9, 255
	andi r13, r13, 255
	setlti r9, r9, 255
	setlti r13, r13, 255
	or r5, r9, r5
	or r7, r13, r7
	and r5, r7, r5
	beq r5, zero, .LBB0_615
# %bb.131:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r13,  -372(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_616
.LBB0_132:                              #   in Loop: Header=BB0_3 Depth=1
	beq r8, zero, .LBB0_134
.LBB0_133:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r3, 0
.LBB0_134:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r3, zero, r6
	setle.f r5, r6, zero
	and r3, r5, r3
	bneq r3, zero, .LBB0_136
# %bb.135:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r6, 0
.LBB0_136:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r25, r8
	addli r3, r8, 0
	bneq r5, zero, .LBB0_138
# %bb.137:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r25, 0
.LBB0_138:                              #   in Loop: Header=BB0_3 Depth=1
	slli r5, r25, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r8, 9
	srli r7, r25, 23
	srli r9, r8, 23
	seteq r5, r5, zero
	seteq r6, r6, zero
	andi r7, r7, 255
	andi r9, r9, 255
	setlti r7, r7, 255
	setlti r9, r9, 255
	or r5, r7, r5
	or r6, r9, r6
	and r5, r6, r5
	beq r5, zero, .LBB0_617
# %bb.139:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r9,  -356(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_618
.LBB0_140:                              #   in Loop: Header=BB0_3 Depth=1
	beq r25, zero, .LBB0_142
.LBB0_141:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r8, 0
.LBB0_142:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r3
	setle.f r6, r3, zero
	and r5, r6, r5
	bneq r5, zero, .LBB0_144
# %bb.143:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r3, 0
.LBB0_144:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r18, r25
	addli r3, r25, 0
	bneq r5, zero, .LBB0_146
# %bb.145:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r18, 0
.LBB0_146:                              #   in Loop: Header=BB0_3 Depth=1
	slli r5, r18, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r25, 9
	srli r7, r18, 23
	srli r8, r25, 23
	seteq r5, r5, zero
	seteq r6, r6, zero
	andi r7, r7, 255
	andi r8, r8, 255
	setlti r7, r7, 255
	setlti r8, r8, 255
	or r5, r7, r5
	or r6, r8, r6
	and r5, r6, r5
	beq r5, zero, .LBB0_619
# %bb.147:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r25, zero, .LBB0_620
.LBB0_148:                              #   in Loop: Header=BB0_3 Depth=1
	beq r18, zero, .LBB0_150
.LBB0_149:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r25, 0
.LBB0_150:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r3
	setle.f r6, r3, zero
	and r5, r6, r5
	bneq r5, zero, .LBB0_152
# %bb.151:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r3, 0
.LBB0_152:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r22, r18
	loadli.w r25,  -336(r30)                # 4-byte Folded Reload
	addli r3, r18, 0
	bneq r5, zero, .LBB0_154
# %bb.153:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r22, 0
.LBB0_154:                              #   in Loop: Header=BB0_3 Depth=1
	slli r5, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r18, 9
	srli r7, r22, 23
	srli r8, r18, 23
	seteq r5, r5, zero
	seteq r6, r6, zero
	andi r7, r7, 255
	andi r8, r8, 255
	setlti r7, r7, 255
	setlti r8, r8, 255
	or r5, r7, r5
	or r6, r8, r6
	and r5, r6, r5
	beq r5, zero, .LBB0_621
# %bb.155:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r18, zero, .LBB0_622
.LBB0_156:                              #   in Loop: Header=BB0_3 Depth=1
	beq r22, zero, .LBB0_158
.LBB0_157:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r18, 0
.LBB0_158:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r3
	setle.f r6, r3, zero
	and r5, r6, r5
	bneq r5, zero, .LBB0_160
# %bb.159:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r3, 0
.LBB0_160:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r12, r22
	loadli.w r18,  -368(r30)                # 4-byte Folded Reload
	addli r3, r22, 0
	bneq r5, zero, .LBB0_162
# %bb.161:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r12, 0
.LBB0_162:                              #   in Loop: Header=BB0_3 Depth=1
	slli r5, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r22, 9
	srli r7, r12, 23
	srli r8, r22, 23
	seteq r5, r5, zero
	seteq r6, r6, zero
	andi r7, r7, 255
	andi r8, r8, 255
	setlti r7, r7, 255
	setlti r8, r8, 255
	or r5, r7, r5
	or r6, r8, r6
	and r5, r6, r5
	beq r5, zero, .LBB0_623
# %bb.163:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r22, zero, .LBB0_624
.LBB0_164:                              #   in Loop: Header=BB0_3 Depth=1
	beq r12, zero, .LBB0_166
.LBB0_165:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r22, 0
.LBB0_166:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r3
	setle.f r6, r3, zero
	and r5, r6, r5
	bneq r5, zero, .LBB0_168
# %bb.167:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r3, 0
.LBB0_168:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r4, r12
	addli r3, r12, 0
	bneq r5, zero, .LBB0_170
# %bb.169:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r4, 0
.LBB0_170:                              #   in Loop: Header=BB0_3 Depth=1
	slli r5, r4, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r12, 9
	srli r7, r4, 23
	srli r8, r12, 23
	loadli.w r22,  -332(r30)                # 4-byte Folded Reload
	seteq r5, r5, zero
	seteq r6, r6, zero
	andi r7, r7, 255
	andi r8, r8, 255
	setlti r7, r7, 255
	setlti r8, r8, 255
	or r5, r7, r5
	or r6, r8, r6
	and r5, r6, r5
	beq r5, zero, .LBB0_625
# %bb.171:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r12, zero, .LBB0_626
.LBB0_172:                              #   in Loop: Header=BB0_3 Depth=1
	beq r4, zero, .LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r12, 0
.LBB0_174:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r5, zero, r3
	setle.f r6, r3, zero
	and r5, r6, r5
	bneq r5, zero, .LBB0_176
# %bb.175:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r3, 0
.LBB0_176:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r5, r26, r4
	loadli.w r12,  -328(r30)                # 4-byte Folded Reload
	addli r3, r4, 0
	bneq r5, zero, .LBB0_178
# %bb.177:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r26, 0
.LBB0_178:                              #   in Loop: Header=BB0_3 Depth=1
	slli r5, r26, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r6, r4, 9
	srli r7, r26, 23
	srli r8, r4, 23
	seteq r5, r5, zero
	seteq r6, r6, zero
	andi r7, r7, 255
	andi r8, r8, 255
	setlti r7, r7, 255
	setlti r8, r8, 255
	or r5, r7, r5
	or r6, r8, r6
	and r5, r6, r5
	bneq r5, zero, .LBB0_180
# %bb.179:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
.LBB0_180:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r8,  -384(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r4, zero, .LBB0_182
# %bb.181:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r3, 0
.LBB0_182:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_184
# %bb.183:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r4, 0
.LBB0_184:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_186
# %bb.185:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r3, 0
.LBB0_186:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r26
	addli r3, r26, 0
	bneq r4, zero, .LBB0_188
# %bb.187:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_188:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r26, 9
	srli r6, r6, 23
	srli r7, r26, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_627
# %bb.189:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r26, zero, .LBB0_628
.LBB0_190:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_192
.LBB0_191:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r26, 0
.LBB0_192:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_194
# %bb.193:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_194:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r8, r7
	addli r3, r7, 0
	bneq r4, zero, .LBB0_196
# %bb.195:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r8, 0
.LBB0_196:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r8, 23
	addli r26, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_629
# %bb.197:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r26, zero, .LBB0_630
.LBB0_198:                              #   in Loop: Header=BB0_3 Depth=1
	beq r8, zero, .LBB0_200
.LBB0_199:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r26, 0
.LBB0_200:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_202
# %bb.201:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r3, 0
.LBB0_202:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r8
	addli r3, r8, 0
	bneq r4, zero, .LBB0_204
# %bb.203:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_204:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r8, 9
	srli r6, r6, 23
	srli r7, r8, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_631
# %bb.205:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r8, zero, .LBB0_632
.LBB0_206:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r8, 0
.LBB0_208:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_210
# %bb.209:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_210:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r24, r7
	addli r3, r7, 0
	bneq r4, zero, .LBB0_212
# %bb.211:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r24, 0
.LBB0_212:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r24, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r24, 23
	addli r8, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_633
# %bb.213:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_634
.LBB0_214:                              #   in Loop: Header=BB0_3 Depth=1
	beq r24, zero, .LBB0_216
.LBB0_215:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r8, 0
.LBB0_216:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_218
# %bb.217:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r3, 0
.LBB0_218:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r24
	addli r3, r24, 0
	bneq r4, zero, .LBB0_220
# %bb.219:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_220:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r24, 9
	srli r6, r6, 23
	srli r7, r24, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_635
# %bb.221:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r24, zero, .LBB0_636
.LBB0_222:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_224
.LBB0_223:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r24, 0
.LBB0_224:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_226
# %bb.225:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_226:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r16, r7
	loadli.w r24,  -312(r30)                # 4-byte Folded Reload
	addli r3, r7, 0
	bneq r4, zero, .LBB0_228
# %bb.227:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r16, 0
.LBB0_228:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r16, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r16, 23
	addli r8, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_637
# %bb.229:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_638
.LBB0_230:                              #   in Loop: Header=BB0_3 Depth=1
	beq r16, zero, .LBB0_232
.LBB0_231:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r8, 0
.LBB0_232:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_234
# %bb.233:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r3, 0
.LBB0_234:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r16
	addli r3, r16, 0
	addli r8, r24, 0
	bneq r4, zero, .LBB0_236
# %bb.235:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_236:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r16, 9
	srli r6, r6, 23
	srli r7, r16, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_639
# %bb.237:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r16, zero, .LBB0_640
.LBB0_238:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_240
.LBB0_239:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r16, 0
.LBB0_240:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_242
# %bb.241:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_242:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r13, r7
	addli r3, r7, 0
	bneq r4, zero, .LBB0_244
# %bb.243:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r13, 0
.LBB0_244:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r13, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r13, 23
	addli r16, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_641
# %bb.245:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_642
.LBB0_246:                              #   in Loop: Header=BB0_3 Depth=1
	beq r13, zero, .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r16, 0
.LBB0_248:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_250
# %bb.249:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r3, 0
.LBB0_250:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r13
	addli r3, r13, 0
	bneq r4, zero, .LBB0_252
# %bb.251:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_252:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r13, 9
	srli r6, r6, 23
	srli r7, r13, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_643
# %bb.253:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r13, zero, .LBB0_644
.LBB0_254:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_256
.LBB0_255:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r13, 0
.LBB0_256:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_258
# %bb.257:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_258:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r18, r7
	loadli.w r13,  -320(r30)                # 4-byte Folded Reload
	addli r3, r7, 0
	bneq r4, zero, .LBB0_260
# %bb.259:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r18, 0
.LBB0_260:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r18, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r18, 23
	addli r16, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_645
# %bb.261:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_646
.LBB0_262:                              #   in Loop: Header=BB0_3 Depth=1
	beq r18, zero, .LBB0_264
.LBB0_263:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r16, 0
.LBB0_264:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_266
# %bb.265:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r3, 0
.LBB0_266:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r18
	addli r3, r18, 0
	addli r16, r13, 0
	bneq r4, zero, .LBB0_268
# %bb.267:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_268:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r18, 9
	srli r6, r6, 23
	srli r7, r18, 23
	addli r13, r30, -64
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_647
# %bb.269:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r18, zero, .LBB0_648
.LBB0_270:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_272
.LBB0_271:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r18, 0
.LBB0_272:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_274
# %bb.273:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_274:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r19, r7
	addli r3, r7, 0
	bneq r4, zero, .LBB0_276
# %bb.275:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r19, 0
.LBB0_276:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r19, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r19, 23
	addli r18, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_649
# %bb.277:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r18, zero, .LBB0_650
.LBB0_278:                              #   in Loop: Header=BB0_3 Depth=1
	beq r19, zero, .LBB0_280
.LBB0_279:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r18, 0
.LBB0_280:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_282
# %bb.281:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r3, 0
.LBB0_282:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r19
	addli r3, r19, 0
	bneq r4, zero, .LBB0_284
# %bb.283:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_284:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r19, 9
	srli r6, r6, 23
	srli r7, r19, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_651
# %bb.285:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r19, zero, .LBB0_652
.LBB0_286:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_288
.LBB0_287:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r19, 0
.LBB0_288:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_290
# %bb.289:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_290:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r17, r7
	loadli.w r19,  -296(r30)                # 4-byte Folded Reload
	addli r3, r7, 0
	bneq r4, zero, .LBB0_292
# %bb.291:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r17, 0
.LBB0_292:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r17, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r17, 23
	addli r18, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_653
# %bb.293:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r18, zero, .LBB0_654
.LBB0_294:                              #   in Loop: Header=BB0_3 Depth=1
	beq r17, zero, .LBB0_296
.LBB0_295:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r18, 0
.LBB0_296:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_298
# %bb.297:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r3, 0
.LBB0_298:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r17
	addli r3, r17, 0
	addli r18, r19, 0
	bneq r4, zero, .LBB0_300
# %bb.299:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_300:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r17, 9
	srli r6, r6, 23
	srli r7, r17, 23
	loadli.w r19,  -340(r30)                # 4-byte Folded Reload
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_655
# %bb.301:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r17, zero, .LBB0_656
.LBB0_302:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_304
.LBB0_303:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r17, 0
.LBB0_304:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_306
# %bb.305:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_306:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r9, r7
	addli r3, r7, 0
	bneq r4, zero, .LBB0_308
# %bb.307:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r9, 0
.LBB0_308:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r9, 23
	addli r17, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_657
# %bb.309:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_658
.LBB0_310:                              #   in Loop: Header=BB0_3 Depth=1
	beq r9, zero, .LBB0_312
.LBB0_311:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r17, 0
.LBB0_312:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_314
# %bb.313:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r3, 0
.LBB0_314:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r9
	loadli.w r17,  -324(r30)                # 4-byte Folded Reload
	addli r3, r9, 0
	bneq r4, zero, .LBB0_316
# %bb.315:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_316:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r9, 9
	srli r6, r6, 23
	srli r7, r9, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_659
# %bb.317:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r9, zero, .LBB0_660
.LBB0_318:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_320
.LBB0_319:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r9, 0
.LBB0_320:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_322
# %bb.321:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_322:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r20, r7
	addli r3, r7, 0
	bneq r4, zero, .LBB0_324
# %bb.323:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r20, 0
.LBB0_324:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r20, 23
	addli r9, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_661
# %bb.325:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_662
.LBB0_326:                              #   in Loop: Header=BB0_3 Depth=1
	beq r20, zero, .LBB0_328
.LBB0_327:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r9, 0
.LBB0_328:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_330
# %bb.329:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r3, 0
.LBB0_330:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r20
	loadli.w r9,  -348(r30)                 # 4-byte Folded Reload
	addli r3, r20, 0
	bneq r4, zero, .LBB0_332
# %bb.331:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_332:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r20, 9
	srli r6, r6, 23
	srli r7, r20, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_663
# %bb.333:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r20, zero, .LBB0_664
.LBB0_334:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_336
.LBB0_335:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r20, 0
.LBB0_336:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_338
# %bb.337:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_338:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r9, r7
	addli r3, r7, 0
	bneq r4, zero, .LBB0_340
# %bb.339:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r9, 0
.LBB0_340:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r9, 23
	addli r20, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_665
# %bb.341:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_666
.LBB0_342:                              #   in Loop: Header=BB0_3 Depth=1
	beq r9, zero, .LBB0_344
.LBB0_343:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r20, 0
.LBB0_344:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_346
# %bb.345:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r3, 0
.LBB0_346:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r9
	addli r3, r9, 0
	bneq r4, zero, .LBB0_348
# %bb.347:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_348:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r9, 9
	srli r6, r6, 23
	srli r7, r9, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_667
# %bb.349:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r9, zero, .LBB0_668
.LBB0_350:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_352
.LBB0_351:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r9, 0
.LBB0_352:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	loadli.w r26,  -288(r30)                # 4-byte Folded Reload
	and r4, r5, r4
	bneq r4, zero, .LBB0_354
# %bb.353:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_354:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r19, r7
	loadli.w r9,  -304(r30)                 # 4-byte Folded Reload
	addli r3, r7, 0
	bneq r4, zero, .LBB0_356
# %bb.355:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r19, 0
.LBB0_356:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r19, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r19, 23
	addli r20, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_669
# %bb.357:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_670
.LBB0_358:                              #   in Loop: Header=BB0_3 Depth=1
	beq r19, zero, .LBB0_360
.LBB0_359:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r20, 0
.LBB0_360:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_362
# %bb.361:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r3, 0
.LBB0_362:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r19
	addli r3, r19, 0
	addli r20, r9, 0
	bneq r4, zero, .LBB0_364
# %bb.363:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_364:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r19, 9
	srli r6, r6, 23
	srli r7, r19, 23
	addli r9, r26, 0
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_671
# %bb.365:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r19, zero, .LBB0_672
.LBB0_366:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_368
.LBB0_367:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r19, 0
.LBB0_368:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_370
# %bb.369:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_370:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r25, r7
	addli r3, r7, 0
	bneq r4, zero, .LBB0_372
# %bb.371:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r25, 0
.LBB0_372:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r25, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r25, 23
	addli r24, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_673
# %bb.373:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r24, zero, .LBB0_674
.LBB0_374:                              #   in Loop: Header=BB0_3 Depth=1
	beq r25, zero, .LBB0_376
.LBB0_375:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r24, 0
.LBB0_376:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_378
# %bb.377:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r3, 0
.LBB0_378:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r25
	addli r3, r25, 0
	bneq r4, zero, .LBB0_380
# %bb.379:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_380:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r25, 9
	srli r6, r6, 23
	srli r7, r25, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_675
# %bb.381:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r25, zero, .LBB0_676
.LBB0_382:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_384
.LBB0_383:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r25, 0
.LBB0_384:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_386
# %bb.385:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_386:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r22, r7
	addli r3, r7, 0
	bneq r4, zero, .LBB0_388
# %bb.387:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r22, 0
.LBB0_388:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r22, 23
	addli r25, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_677
# %bb.389:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_678
.LBB0_390:                              #   in Loop: Header=BB0_3 Depth=1
	beq r22, zero, .LBB0_392
.LBB0_391:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r25, 0
.LBB0_392:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_394
# %bb.393:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r3, 0
.LBB0_394:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r22
	addli r3, r22, 0
	bneq r4, zero, .LBB0_396
# %bb.395:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_396:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r22, 9
	srli r6, r6, 23
	srli r7, r22, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_679
# %bb.397:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r22, zero, .LBB0_680
.LBB0_398:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_400
.LBB0_399:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r22, 0
.LBB0_400:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_402
# %bb.401:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_402:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r12, r7
	addli r3, r7, 0
	bneq r4, zero, .LBB0_404
# %bb.403:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r12, 0
.LBB0_404:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r12, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r12, 23
	addli r22, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_681
# %bb.405:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_682
.LBB0_406:                              #   in Loop: Header=BB0_3 Depth=1
	beq r12, zero, .LBB0_408
.LBB0_407:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r22, 0
.LBB0_408:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_410
# %bb.409:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r3, 0
.LBB0_410:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r12
	loadli.w r22,  -344(r30)                # 4-byte Folded Reload
	addli r3, r12, 0
	bneq r4, zero, .LBB0_412
# %bb.411:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_412:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r12, 9
	srli r6, r6, 23
	srli r7, r12, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_683
# %bb.413:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r12, zero, .LBB0_684
.LBB0_414:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_416
.LBB0_415:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r12, 0
.LBB0_416:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_418
# %bb.417:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_418:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r17, r7
	addli r3, r7, 0
	bneq r4, zero, .LBB0_420
# %bb.419:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r17, 0
.LBB0_420:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r17, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r17, 23
	addli r12, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_685
# %bb.421:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_686
.LBB0_422:                              #   in Loop: Header=BB0_3 Depth=1
	beq r17, zero, .LBB0_424
.LBB0_423:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r12, 0
.LBB0_424:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_426
# %bb.425:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r3, 0
.LBB0_426:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r17
	addli r3, r17, 0
	bneq r4, zero, .LBB0_428
# %bb.427:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_428:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r17, 9
	srli r6, r6, 23
	srli r7, r17, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_687
# %bb.429:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r17, zero, .LBB0_688
.LBB0_430:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_432
.LBB0_431:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r17, 0
.LBB0_432:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_434
# %bb.433:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_434:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r16, r7
	loadli.w r19,  -272(r30)                # 4-byte Folded Reload
	addli r3, r7, 0
	bneq r4, zero, .LBB0_436
# %bb.435:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r16, 0
.LBB0_436:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r16, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r16, 23
	addli r12, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_689
# %bb.437:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_690
.LBB0_438:                              #   in Loop: Header=BB0_3 Depth=1
	beq r16, zero, .LBB0_440
.LBB0_439:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r12, 0
.LBB0_440:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_442
# %bb.441:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r3, 0
.LBB0_442:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r16
	addli r3, r16, 0
	addli r12, r19, 0
	bneq r4, zero, .LBB0_444
# %bb.443:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_444:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r16, 9
	srli r6, r6, 23
	srli r7, r16, 23
	loadli.w r19,  -308(r30)                # 4-byte Folded Reload
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_691
# %bb.445:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r16, zero, .LBB0_692
.LBB0_446:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_448
.LBB0_447:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r16, 0
.LBB0_448:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_450
# %bb.449:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_450:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r22, r7
	addli r3, r7, 0
	bneq r4, zero, .LBB0_452
# %bb.451:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r22, 0
.LBB0_452:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r22, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r22, 23
	addli r16, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_693
# %bb.453:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_694
.LBB0_454:                              #   in Loop: Header=BB0_3 Depth=1
	beq r22, zero, .LBB0_456
.LBB0_455:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r16, 0
.LBB0_456:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_458
# %bb.457:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r3, 0
.LBB0_458:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r22
	loadli.w r16,  -316(r30)                # 4-byte Folded Reload
	addli r3, r22, 0
	bneq r4, zero, .LBB0_460
# %bb.459:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_460:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r22, 9
	srli r6, r6, 23
	srli r7, r22, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_695
# %bb.461:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r22, zero, .LBB0_696
.LBB0_462:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_464
.LBB0_463:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r22, 0
.LBB0_464:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_466
# %bb.465:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_466:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r16, r7
	addli r3, r7, 0
	bneq r4, zero, .LBB0_468
# %bb.467:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r16, 0
.LBB0_468:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r16, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r16, 23
	addli r26, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_697
# %bb.469:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -152(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r26, zero, .LBB0_698
.LBB0_470:                              #   in Loop: Header=BB0_3 Depth=1
	beq r16, zero, .LBB0_472
.LBB0_471:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r26, 0
.LBB0_472:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_474
# %bb.473:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r3, 0
.LBB0_474:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r16
	addli r3, r16, 0
	bneq r4, zero, .LBB0_476
# %bb.475:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_476:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r16, 9
	srli r6, r6, 23
	srli r7, r16, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_699
# %bb.477:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r16, zero, .LBB0_700
.LBB0_478:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -152(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_480
.LBB0_479:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r16, 0
.LBB0_480:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	loadli.w r17,  -268(r30)                # 4-byte Folded Reload
	and r4, r5, r4
	bneq r4, zero, .LBB0_482
# %bb.481:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_482:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r8, r7
	loadli.w r16,  -400(r30)                # 4-byte Folded Reload
	addli r3, r7, 0
	bneq r4, zero, .LBB0_484
# %bb.483:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r8, 0
.LBB0_484:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r8, 23
	addli r26, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_701
# %bb.485:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r6,  -148(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r26, zero, .LBB0_702
.LBB0_486:                              #   in Loop: Header=BB0_3 Depth=1
	beq r8, zero, .LBB0_488
.LBB0_487:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r26, 0
.LBB0_488:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_490
# %bb.489:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r3, 0
.LBB0_490:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r6, r8
	addli r3, r8, 0
	addli r26, r16, 0
	bneq r4, zero, .LBB0_492
# %bb.491:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
.LBB0_492:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r6, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r8, 9
	srli r6, r6, 23
	srli r7, r8, 23
	addli r16, r17, 0
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_703
# %bb.493:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r17,  -300(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_704
.LBB0_494:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	loadli.w r7,  -148(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_496
.LBB0_495:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r8, 0
.LBB0_496:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	loadli.w r25,  -396(r30)                # 4-byte Folded Reload
	and r4, r5, r4
	bneq r4, zero, .LBB0_498
# %bb.497:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r3, 0
.LBB0_498:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r19, r7
	loadli.w r8,  40(r30)
	addli r3, r7, 0
	bneq r4, zero, .LBB0_500
# %bb.499:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r19, 0
.LBB0_500:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r19, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r7, 9
	srli r6, r19, 23
	addli r22, r7, 0
	srli r7, r7, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_705
# %bb.501:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r22, zero, .LBB0_706
.LBB0_502:                              #   in Loop: Header=BB0_3 Depth=1
	beq r19, zero, .LBB0_504
.LBB0_503:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r22, 0
.LBB0_504:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_506
# %bb.505:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r3, 0
.LBB0_506:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r20, r19
	addli r3, r19, 0
	addli r22, r8, 0
	bneq r4, zero, .LBB0_508
# %bb.507:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r20, 0
.LBB0_508:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r20, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r19, 9
	srli r6, r20, 23
	srli r7, r19, 23
	loadli.w r8,  -292(r30)                 # 4-byte Folded Reload
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_707
# %bb.509:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r19, zero, .LBB0_708
.LBB0_510:                              #   in Loop: Header=BB0_3 Depth=1
	beq r20, zero, .LBB0_512
.LBB0_511:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r19, 0
.LBB0_512:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_514
# %bb.513:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r3, 0
.LBB0_514:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r17, r20
	addli r3, r20, 0
	bneq r4, zero, .LBB0_516
# %bb.515:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r17, 0
.LBB0_516:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r17, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r20, 9
	srli r6, r17, 23
	srli r7, r20, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_709
# %bb.517:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r20, zero, .LBB0_710
.LBB0_518:                              #   in Loop: Header=BB0_3 Depth=1
	beq r17, zero, .LBB0_520
.LBB0_519:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r20, 0
.LBB0_520:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_522
# %bb.521:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r3, 0
.LBB0_522:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r18, r17
	addli r3, r17, 0
	bneq r4, zero, .LBB0_524
# %bb.523:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r18, 0
.LBB0_524:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r18, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r17, 9
	srli r6, r18, 23
	srli r7, r17, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_711
# %bb.525:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r17, zero, .LBB0_712
.LBB0_526:                              #   in Loop: Header=BB0_3 Depth=1
	beq r18, zero, .LBB0_528
.LBB0_527:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r17, 0
.LBB0_528:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_530
# %bb.529:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r3, 0
.LBB0_530:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r8, r18
	addli r3, r18, 0
	bneq r4, zero, .LBB0_532
# %bb.531:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r8, 0
.LBB0_532:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r18, 9
	srli r6, r8, 23
	srli r7, r18, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_713
# %bb.533:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r18, zero, .LBB0_714
.LBB0_534:                              #   in Loop: Header=BB0_3 Depth=1
	beq r8, zero, .LBB0_536
.LBB0_535:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r18, 0
.LBB0_536:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_538
# %bb.537:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r3, 0
.LBB0_538:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r9, r8
	addli r3, r8, 0
	bneq r4, zero, .LBB0_540
# %bb.539:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r9, 0
.LBB0_540:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r9, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r8, 9
	srli r6, r9, 23
	srli r7, r8, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_715
# %bb.541:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r8, zero, .LBB0_716
.LBB0_542:                              #   in Loop: Header=BB0_3 Depth=1
	beq r9, zero, .LBB0_544
.LBB0_543:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r8, 0
.LBB0_544:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_546
# %bb.545:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r3, 0
.LBB0_546:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r8,  -284(r30)                 # 4-byte Folded Reload
	addli r3, r9, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	setlt.f r4, r8, r9
	bneq r4, zero, .LBB0_548
# %bb.547:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r8, 0
.LBB0_548:                              #   in Loop: Header=BB0_3 Depth=1
	slli r4, r8, 9
	.loc	2 113 29                        # triton_helpers.py:113:29
	slli r5, r9, 9
	srli r6, r8, 23
	srli r7, r9, 23
	seteq r4, r4, zero
	seteq r5, r5, zero
	andi r6, r6, 255
	andi r7, r7, 255
	setlti r6, r6, 255
	setlti r7, r7, 255
	or r4, r6, r4
	or r5, r7, r5
	and r4, r5, r4
	beq r4, zero, .LBB0_717
# %bb.549:                              #   in Loop: Header=BB0_3 Depth=1
	bneq r9, zero, .LBB0_718
.LBB0_550:                              #   in Loop: Header=BB0_3 Depth=1
	beq r8, zero, .LBB0_552
.LBB0_551:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r9, 0
.LBB0_552:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 113 29                        # triton_helpers.py:113:29
	setle.f r4, zero, r3
	setle.f r5, r3, zero
	and r4, r5, r4
	bneq r4, zero, .LBB0_554
# %bb.553:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r3, 0
.LBB0_554:                              #   in Loop: Header=BB0_3 Depth=1
	stores.w r8, 0(r21)
.LBB0_555:                              #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r26
	sync_group
	load.hu r3, -124(r30)
	load.hu r4, -60(r30)
	load.hu r6, -122(r30)
	load.hu r7, -58(r30)
	bfloat2float.rn r3, r3
	bfloat2float.rn r4, r4
	add.f.rn r5, r3, r4
	loads.w r3, 0(r21)
	and r8, r5, r10
	setlt.u r4, r1, r8
	bneq r4, zero, .LBB0_563
# %bb.556:                              #   in Loop: Header=BB0_3 Depth=1
	addli r4, r5, 0
	j .LBB0_564
.LBB0_557:                              # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	lui r5, 523264
	addli r6, r14, 0
	beq r14, zero, .LBB0_25
.LBB0_558:                              # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	addli r6, r5, 0
	bneq r4, zero, .LBB0_26
	j .LBB0_27
.LBB0_559:                              # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	lui r5, 523264
	addli r6, r15, 0
	beq r15, zero, .LBB0_33
.LBB0_560:                              # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	addli r6, r5, 0
	bneq r3, zero, .LBB0_34
	j .LBB0_35
.LBB0_561:                              # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	lui r5, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r4, zero, .LBB0_41
.LBB0_562:                              # %.split15.critedge
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r4, r5, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_42
	j .LBB0_43
.Ltmp2:
.LBB0_563:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	or r4, r5, r2
.LBB0_564:                              #   in Loop: Header=BB0_3 Depth=1
	bfloat2float.rn r6, r6
	bfloat2float.rn r7, r7
	add.f.rn r7, r6, r7
	and r9, r7, r10
	setlt.u r6, r1, r9
	bneq r6, zero, .LBB0_566
# %bb.565:                              #   in Loop: Header=BB0_3 Depth=1
	addli r6, r7, 0
	setlt.u r8, r11, r8
	beq r8, zero, .LBB0_567
	j .LBB0_568
.LBB0_566:                              #   in Loop: Header=BB0_3 Depth=1
	or r6, r7, r2
	setlt.u r8, r11, r8
	bneq r8, zero, .LBB0_568
.LBB0_567:                              #   in Loop: Header=BB0_3 Depth=1
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	add.s r4, r4, r27
	and r4, r4, r28
.LBB0_568:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r5, r11, r9
	bneq r5, zero, .LBB0_570
# %bb.569:                              #   in Loop: Header=BB0_3 Depth=1
	srli r5, r7, 16
	andi r5, r5, 1
	add.s r5, r7, r5
	add.s r5, r5, r27
	and r6, r5, r28
.LBB0_570:                              #   in Loop: Header=BB0_3 Depth=1
.Ltmp3:
	.file	3 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	3 263 15 is_stmt 1              # standard.py:263:15
	addli r5, zero, 32
	blt.s r12, r5, .LBB0_572
# %bb.571:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 0 15 is_stmt 0                # standard.py:0:15
	addli r4, zero, 0
	j .LBB0_573
.LBB0_572:                              #   in Loop: Header=BB0_3 Depth=1
	sub.f.rn r5, r14, r3
	sub.f.rn r7, r15, r3
	sub.f.rn r4, r4, r3
	sub.f.rn r6, r6, r3
	exp.f.rn r5, r5
	exp.f.rn r4, r4
	exp.f.rn r7, r7
	exp.f.rn r6, r6
	.loc	3 263 15                        # standard.py:263:15
	add.f.rn r4, r5, r4
	add.f.rn r5, r7, r6
	add.f.rn r4, r4, r5
.LBB0_573:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 0 15                          # standard.py:0:15
	loadli.w r5,  -236(r30)                 # 4-byte Folded Reload
	stores.w r4, 0(r5)
	mfence { lm, sm, gm }
	csr_set csr3, r26
	sync_group
	loadli.w r4,  -132(r30)                 # 4-byte Folded Reload
	bneq r4, zero, .LBB0_575
# %bb.574:                              #   in Loop: Header=BB0_3 Depth=1
	loads.w r4, 0(r23)
	loads.w r6, 4(r23)
	loads.w r5, 8(r23)
	.loc	3 263 15                        # standard.py:263:15
	add.f.rn r4, r4, r6
	loads.w r6, 12(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 16(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 20(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 24(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 28(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 32(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 36(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 40(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 44(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 48(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 52(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 56(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 60(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 64(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 68(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 72(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 76(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 80(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 84(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 88(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 92(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 96(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 100(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 104(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 108(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 112(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 116(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 120(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 124(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 128(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 132(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 136(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 140(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 144(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 148(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 152(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 156(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 160(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 164(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 168(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 172(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 176(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 180(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 184(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 188(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 192(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 196(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 200(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 204(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 208(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 212(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 216(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 220(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 224(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 228(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 232(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 236(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 240(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 244(r23)
	add.f.rn r4, r4, r5
	loads.w r5, 248(r23)
	add.f.rn r4, r4, r6
	loads.w r6, 252(r23)
	add.f.rn r4, r4, r5
	add.f.rn r4, r4, r6
	stores.w r4, 0(r23)
.Ltmp4:
.LBB0_575:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	3 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r26
	sync_group
	loadli.w r4,  -248(r30)                 # 4-byte Folded Reload
	loads.w r12, 0(r23)
	addli r6, r13, 2
	addli r24, r30, -64
	addli r5, r13, 6
	addli r14, zero, 0
	add.s r9, r4, r16
	loadli.w r4,  -252(r30)                 # 4-byte Folded Reload
	add.s r8, r4, r16
	loadli.w r4,  -256(r30)                 # 4-byte Folded Reload
	add.s r7, r4, r16
	addli r4, r13, 4
	addli r13, zero, 1
	j .LBB0_577
.LBB0_576:                              #   in Loop: Header=BB0_577 Depth=2
	.loc	1 58 48 is_stmt 1               # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:58:48
	float2bfloat.rn r15, r15
	float2bfloat.rn r16, r18
	store.h r15, 0(r14)
	store.h r16, 2(r14)
	andi r15, r13, 1
	addli r14, zero, 2
	addli r13, zero, 0
	mfence { lm }
	beq r15, zero, .LBB0_2
.LBB0_577:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 46                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:38:46
	slli r14, r14, 1
	addli r15, r30, -128
	add.s r15, r15, r14
	.loc	1 39 37                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:39:37
	add.s r14, r24, r14
	.loc	1 38 46                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:38:46
	load.hu r16, 0(r15)
	.loc	1 39 37                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:39:37
	load.hu r17, 0(r14)
	load.hu r18, 2(r14)
	.loc	1 38 46                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:38:46
	bfloat2float.rn r16, r16
	.loc	1 39 37                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:39:37
	bfloat2float.rn r17, r17
	.loc	1 44 18                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:44:18
	add.f.rn r17, r16, r17
	.loc	1 38 46                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:38:46
	load.hu r16, 2(r15)
	.loc	1 45 19                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:45:19
	and r19, r17, r10
	setlt.u r20, r1, r19
	bneq r20, zero, .LBB0_579
# %bb.578:                              #   in Loop: Header=BB0_577 Depth=2
	.loc	1 0 19 is_stmt 0                # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:0:19
	addli r15, r17, 0
	j .LBB0_580
.LBB0_579:                              #   in Loop: Header=BB0_577 Depth=2
	.loc	1 45 19                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:45:19
	or r15, r17, r2
.LBB0_580:                              #   in Loop: Header=BB0_577 Depth=2
	.loc	1 0 0                           # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:0:0
	bfloat2float.rn r16, r16
	bfloat2float.rn r18, r18
	add.f.rn r18, r16, r18
	.loc	1 45 19                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:45:19
	and r20, r18, r10
	setlt.u r16, r1, r20
	bneq r16, zero, .LBB0_582
# %bb.581:                              #   in Loop: Header=BB0_577 Depth=2
	.loc	1 0 19                          # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:0:19
	addli r16, r18, 0
	.loc	1 45 19                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:45:19
	setlt.u r19, r11, r19
	beq r19, zero, .LBB0_583
	j .LBB0_584
.LBB0_582:                              #   in Loop: Header=BB0_577 Depth=2
	or r16, r18, r2
	setlt.u r19, r11, r19
	bneq r19, zero, .LBB0_584
.LBB0_583:                              #   in Loop: Header=BB0_577 Depth=2
	.loc	1 0 19                          # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:0:19
	srli r15, r17, 16
	andi r15, r15, 1
	add.s r15, r17, r15
	add.s r15, r15, r27
	and r15, r15, r28
.LBB0_584:                              #   in Loop: Header=BB0_577 Depth=2
	.loc	1 45 19                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:45:19
	setlt.u r17, r11, r20
	bneq r17, zero, .LBB0_586
# %bb.585:                              #   in Loop: Header=BB0_577 Depth=2
	.loc	1 0 19                          # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:0:19
	srli r16, r18, 16
	andi r16, r16, 1
	add.s r16, r18, r16
	add.s r16, r16, r27
	and r16, r16, r28
.LBB0_586:                              #   in Loop: Header=BB0_577 Depth=2
	.loc	1 51 19 is_stmt 1               # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:51:19
	sub.f.rn r15, r15, r3
	.loc	1 52 26                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:52:26
	exp.f.rn r15, r15
	.loc	1 56 21                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:56:21
	div.f.rn r17, r15, r12
	.loc	1 58 48                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:58:48
	and r19, r17, r10
	setlt.u r15, r1, r19
	bneq r15, zero, .LBB0_588
# %bb.587:                              #   in Loop: Header=BB0_577 Depth=2
	.loc	1 0 48 is_stmt 0                # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:0:48
	addli r15, r17, 0
	j .LBB0_589
.LBB0_588:                              #   in Loop: Header=BB0_577 Depth=2
	.loc	1 58 48                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:58:48
	or r15, r17, r2
.LBB0_589:                              #   in Loop: Header=BB0_577 Depth=2
	.loc	1 0 0                           # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:0:0
	sub.f.rn r16, r16, r3
	exp.f.rn r16, r16
	div.f.rn r16, r16, r12
	.loc	1 58 48                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:58:48
	and r20, r16, r10
	setlt.u r18, r1, r20
	bneq r18, zero, .LBB0_591
# %bb.590:                              #   in Loop: Header=BB0_577 Depth=2
	.loc	1 0 48                          # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:0:48
	addli r18, r16, 0
	.loc	1 58 48                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:58:48
	setlt.u r19, r11, r19
	beq r19, zero, .LBB0_592
	j .LBB0_593
.LBB0_591:                              #   in Loop: Header=BB0_577 Depth=2
	or r18, r16, r2
	setlt.u r19, r11, r19
	bneq r19, zero, .LBB0_593
.LBB0_592:                              #   in Loop: Header=BB0_577 Depth=2
	.loc	1 0 48                          # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:0:48
	srli r15, r17, 16
	andi r15, r15, 1
	add.s r15, r17, r15
	add.s r15, r15, r27
	and r15, r15, r28
.LBB0_593:                              #   in Loop: Header=BB0_577 Depth=2
	.loc	1 58 48                         # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:58:48
	setlt.u r17, r11, r20
	bneq r17, zero, .LBB0_576
# %bb.594:                              #   in Loop: Header=BB0_577 Depth=2
	.loc	1 0 48                          # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:0:48
	srli r17, r16, 16
	andi r17, r17, 1
	add.s r16, r16, r17
	add.s r16, r16, r27
	and r18, r16, r28
	j .LBB0_576
.LBB0_595:                              #   in Loop: Header=BB0_3 Depth=1
	lui r4, 523264
.Ltmp5:
	.loc	2 113 29 is_stmt 1              # triton_helpers.py:113:29
	beq r5, zero, .LBB0_52
.LBB0_596:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29 is_stmt 0                # triton_helpers.py:0:29
	addli r5, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_53
	j .LBB0_54
.LBB0_597:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r4, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r3, zero, .LBB0_60
.LBB0_598:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r4, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_61
	j .LBB0_62
.LBB0_599:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r26, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_68
.LBB0_600:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r26, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r24, zero, .LBB0_69
	j .LBB0_70
.LBB0_601:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r19, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r24, zero, .LBB0_76
.LBB0_602:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r19, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_77
	j .LBB0_78
.LBB0_603:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r19, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_84
.LBB0_604:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r19, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_85
	j .LBB0_86
.LBB0_605:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r13, 523264
	loadli.w r17,  -360(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_92
.LBB0_606:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r13, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_93
	j .LBB0_94
.LBB0_607:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r9, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_100
.LBB0_608:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r9, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_101
	j .LBB0_102
.LBB0_609:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r9, 523264
	loadli.w r16,  -376(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r7, zero, .LBB0_108
.LBB0_610:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r7, r9, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r6, zero, .LBB0_109
	j .LBB0_110
.LBB0_611:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r7, 523264
	loadli.w r15,  -280(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r6, zero, .LBB0_116
.LBB0_612:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r6, r7, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r14, zero, .LBB0_117
	j .LBB0_118
.LBB0_613:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r6, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r14, zero, .LBB0_124
.LBB0_614:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r14, r6, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r3, zero, .LBB0_125
	j .LBB0_126
.LBB0_615:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r6, 523264
	loadli.w r13,  -372(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r3, zero, .LBB0_132
.LBB0_616:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r3, r6, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_133
	j .LBB0_134
.LBB0_617:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r9,  -356(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_140
.LBB0_618:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_141
	j .LBB0_142
.LBB0_619:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_148
.LBB0_620:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r18, zero, .LBB0_149
	j .LBB0_150
.LBB0_621:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_156
.LBB0_622:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_157
	j .LBB0_158
.LBB0_623:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_164
.LBB0_624:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_165
	j .LBB0_166
.LBB0_625:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_172
.LBB0_626:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r4, zero, .LBB0_173
	j .LBB0_174
.LBB0_627:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_190
.LBB0_628:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r3, 0
	loadli.w r7,  -224(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_191
	j .LBB0_192
.LBB0_629:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r6,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_198
.LBB0_630:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_199
	j .LBB0_200
.LBB0_631:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_206
.LBB0_632:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r3, 0
	loadli.w r7,  -220(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_207
	j .LBB0_208
.LBB0_633:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r6,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_214
.LBB0_634:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r24, zero, .LBB0_215
	j .LBB0_216
.LBB0_635:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r24, zero, .LBB0_222
.LBB0_636:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r3, 0
	loadli.w r7,  -216(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_223
	j .LBB0_224
.LBB0_637:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r6,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_230
.LBB0_638:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_231
	j .LBB0_232
.LBB0_639:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r16, zero, .LBB0_238
.LBB0_640:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r3, 0
	loadli.w r7,  -212(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_239
	j .LBB0_240
.LBB0_641:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r6,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r16, zero, .LBB0_246
.LBB0_642:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r13, zero, .LBB0_247
	j .LBB0_248
.LBB0_643:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r13, zero, .LBB0_254
.LBB0_644:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r13, r3, 0
	loadli.w r7,  -208(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_255
	j .LBB0_256
.LBB0_645:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r6,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r16, zero, .LBB0_262
.LBB0_646:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r18, zero, .LBB0_263
	j .LBB0_264
.LBB0_647:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_270
.LBB0_648:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r3, 0
	loadli.w r7,  -204(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_271
	j .LBB0_272
.LBB0_649:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r6,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_278
.LBB0_650:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_279
	j .LBB0_280
.LBB0_651:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_286
.LBB0_652:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r3, 0
	loadli.w r7,  -200(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_287
	j .LBB0_288
.LBB0_653:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r6,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_294
.LBB0_654:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_295
	j .LBB0_296
.LBB0_655:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_302
.LBB0_656:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r3, 0
	loadli.w r7,  -196(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_303
	j .LBB0_304
.LBB0_657:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r6,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_310
.LBB0_658:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_311
	j .LBB0_312
.LBB0_659:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_318
.LBB0_660:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r3, 0
	loadli.w r7,  -192(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_319
	j .LBB0_320
.LBB0_661:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r6,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_326
.LBB0_662:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_327
	j .LBB0_328
.LBB0_663:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_334
.LBB0_664:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r3, 0
	loadli.w r7,  -188(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_335
	j .LBB0_336
.LBB0_665:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r6,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_342
.LBB0_666:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_343
	j .LBB0_344
.LBB0_667:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_350
.LBB0_668:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r3, 0
	loadli.w r7,  -184(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_351
	j .LBB0_352
.LBB0_669:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r6,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_358
.LBB0_670:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_359
	j .LBB0_360
.LBB0_671:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_366
.LBB0_672:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r3, 0
	loadli.w r7,  -180(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_367
	j .LBB0_368
.LBB0_673:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r6,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r24, zero, .LBB0_374
.LBB0_674:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r24, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r25, zero, .LBB0_375
	j .LBB0_376
.LBB0_675:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_382
.LBB0_676:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r3, 0
	loadli.w r7,  -176(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_383
	j .LBB0_384
.LBB0_677:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r6,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r25, zero, .LBB0_390
.LBB0_678:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r25, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_391
	j .LBB0_392
.LBB0_679:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_398
.LBB0_680:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r3, 0
	loadli.w r7,  -172(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_399
	j .LBB0_400
.LBB0_681:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r6,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_406
.LBB0_682:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r12, zero, .LBB0_407
	j .LBB0_408
.LBB0_683:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_414
.LBB0_684:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r3, 0
	loadli.w r7,  -168(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_415
	j .LBB0_416
.LBB0_685:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r6,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_422
.LBB0_686:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_423
	j .LBB0_424
.LBB0_687:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_430
.LBB0_688:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r3, 0
	loadli.w r7,  -164(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_431
	j .LBB0_432
.LBB0_689:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r6,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r12, zero, .LBB0_438
.LBB0_690:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r12, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_439
	j .LBB0_440
.LBB0_691:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r16, zero, .LBB0_446
.LBB0_692:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r3, 0
	loadli.w r7,  -160(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_447
	j .LBB0_448
.LBB0_693:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r6,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r16, zero, .LBB0_454
.LBB0_694:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r22, zero, .LBB0_455
	j .LBB0_456
.LBB0_695:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_462
.LBB0_696:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r3, 0
	loadli.w r7,  -156(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_463
	j .LBB0_464
.LBB0_697:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r6,  -152(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_470
.LBB0_698:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r16, zero, .LBB0_471
	j .LBB0_472
.LBB0_699:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r16, zero, .LBB0_478
.LBB0_700:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r16, r3, 0
	loadli.w r7,  -152(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_479
	j .LBB0_480
.LBB0_701:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r6,  -148(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r26, zero, .LBB0_486
.LBB0_702:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r26, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_487
	j .LBB0_488
.LBB0_703:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	loadli.w r17,  -300(r30)                # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_494
.LBB0_704:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r3, 0
	loadli.w r7,  -148(r30)                 # 4-byte Folded Reload
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r7, zero, .LBB0_495
	j .LBB0_496
.LBB0_705:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r22, zero, .LBB0_502
.LBB0_706:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r22, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r19, zero, .LBB0_503
	j .LBB0_504
.LBB0_707:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r19, zero, .LBB0_510
.LBB0_708:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r19, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r20, zero, .LBB0_511
	j .LBB0_512
.LBB0_709:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r20, zero, .LBB0_518
.LBB0_710:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r20, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r17, zero, .LBB0_519
	j .LBB0_520
.LBB0_711:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r17, zero, .LBB0_526
.LBB0_712:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r17, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r18, zero, .LBB0_527
	j .LBB0_528
.LBB0_713:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r18, zero, .LBB0_534
.LBB0_714:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r18, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_535
	j .LBB0_536
.LBB0_715:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r8, zero, .LBB0_542
.LBB0_716:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r8, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r9, zero, .LBB0_543
	j .LBB0_544
.LBB0_717:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	lui r3, 523264
	.loc	2 113 29                        # triton_helpers.py:113:29
	beq r9, zero, .LBB0_550
.LBB0_718:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 29                          # triton_helpers.py:0:29
	addli r9, r3, 0
	.loc	2 113 29                        # triton_helpers.py:113:29
	bneq r8, zero, .LBB0_551
	j .LBB0_552
.Ltmp6:
.LBB0_719:                              # %._crit_edge
	.loc	1 58 4 epilogue_begin is_stmt 1 # cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py:58:4
	addli sp, sp, 400
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
	.long	464                             # 0x1d0
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
	.byte	7                               # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	4                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x6b DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x2c:0x49 DW_TAG_subprogram
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
	.byte	6                               # Abbrev [6] 0x52:0x22 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp3                          # DW_AT_low_pc
	.long	.Ltmp4-.Ltmp3                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	55                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	7                               # Abbrev [7] 0x62:0x11 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp3                          # DW_AT_low_pc
	.long	.Ltmp4-.Ltmp3                   # DW_AT_high_pc
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
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp1-.Lfunc_begin0
	.long	.Ltmp2-.Lfunc_begin0
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"cfiknc7zovdf56df7eo7irjzcpub6q7hhvscceqevskmhqx73hts.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/fi" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
