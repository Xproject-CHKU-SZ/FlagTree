	.text
	.file	"LLVMDialectModule"
	.section	.text._tle_row_softmax_preadded_center,"ax",@progbits
	.globl	_tle_row_softmax_preadded_center # -- Begin function _tle_row_softmax_preadded_center
	.type	_tle_row_softmax_preadded_center,@function
_tle_row_softmax_preadded_center:       # @_tle_row_softmax_preadded_center
.Lfunc_begin0:
	.file	1 "/tmp" "preadded_center.py"
	.loc	1 335 0                         # preadded_center.py:335:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -3712
	lui r7, :hi20:global_smem
	.loc	1 353 24 prologue_end           # preadded_center.py:353:24
	core_id r9
	addli r30, sp, 3584
	lui r8, 4
	lui r4, 15
	slli r2, r9, 2
	addli r7, r7, :lo12:global_smem
	loadli.w r5,  92(r30)
	loadli.w r1,  100(r30)
	ori r4, r4, 4095
	add.s r3, r7, r2
	loadli.w r2,  96(r30)
	add.s r3, r3, r8
	mul.s r6, r2, r5
	load_param_i r5, 0
	storeli.w r3, -3524(r30)                # 4-byte Folded Spill
	stores.w zero, 0(r3)
	mul.s r1, r6, r1
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	storeli.w r1, -3528(r30)                # 4-byte Folded Spill
	ble.s r1, r5, .LBB0_9
# %bb.1:                                # %.lr.ph
	.loc	1 0 24 is_stmt 0                # preadded_center.py:0:24
	lui r24, 262143
	load_param_i r1, 1
	loadli.w r12,  68(r30)
	loadli.w r13,  12(r30)
	srli r19, r9, 2
	addli r28, zero, 512
	load.d r[10:11], 80(r30)
	load.d r[22:23], 24(r30)
	addli r3, r30, -3552
	storeli.w r1, -3532(r30)                # 4-byte Folded Spill
	andi r1, r9, 3
	ori r24, r24, 4092
	andi r2, r19, 15
	slli r25, r1, 9
	and r9, r9, r24
	storeli.w r1, -3536(r30)                # 4-byte Folded Spill
	storeli.w r2, -3540(r30)                # 4-byte Folded Spill
	zext_int2long r[1:2], r2
	sub.s r13, r13, r25
	slli r9, r9, 2
	sub.s r12, r12, r25
	zext_int2long r[26:27], r25
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	addli r3, r30, -3560
	max.s r13, r13, zero
	add.s r7, r7, r9
	max.s r9, r12, zero
	mul.sl r[1:2], r[22:23], r[26:27]
	mul.sl r[26:27], r[10:11], r[26:27]
	add.s r25, r7, r8
	min.s r13, r13, r28
	min.s r7, r9, r28
	addli r8, r30, -2048
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	slli r28, r7, 2
	slli r24, r13, 2
	addli r7, zero, 2
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 335 0 is_stmt 1               # preadded_center.py:335:0
	load.d r[1:2], 72(r30)
	load.d r[9:10], 56(r30)
	lui r3, 983040
	or r3, r13, r3
	mul.sl r[1:2], r[11:12], r[1:2]
	add.ul r[1:2], r[1:2], r[26:27]
	sll.d r[1:2], r[1:2], r7
	add.ul r[1:2], r[9:10], r[1:2]
	s_lm2gm r3, r8, 0(r[1:2])
	loadli.w r1,  -3532(r30)                # 4-byte Folded Reload
	mfence { lm }
	add.s r5, r5, r1
	loadli.w r1,  -3528(r30)                # 4-byte Folded Reload
	blt.s r5, r1, .LBB0_3
	j .LBB0_9
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 # preadded_center.py:0:0
	loadli.w r1,  100(r30)
	addli r13, r24, 0
	div.s r10, r5, r1
	loadli.w r1,  96(r30)
	div.s r10, r10, r1
	.loc	1 335 0                         # preadded_center.py:335:0
	loadli.w r1,  -3540(r30)                # 4-byte Folded Reload
	.loc	1 342 20 is_stmt 1              # preadded_center.py:342:20
	slli r11, r10, 4
	.loc	1 335 0                         # preadded_center.py:335:0
	or r10, r11, r1
	loadli.w r1,  8(r30)
	blt.s r10, r1, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0 is_stmt 0                 # preadded_center.py:0:0
	addli r13, zero, 0
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 335 0                         # preadded_center.py:335:0
	addli r3, r30, -3552
	sext_int2long r[11:12], r11
	lui r16, 983040
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	addli r3, r30, -3560
	or r13, r13, r16
	or.d r[11:12], r[11:12], r[1:2]
	load.d r[1:2], 16(r30)
	mul.sl r[14:15], r[11:12], r[1:2]
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	add.ul r[14:15], r[14:15], r[1:2]
	load.d r[1:2], 0(r30)
	sll.d r[14:15], r[14:15], r7
	add.ul r[14:15], r[1:2], r[14:15]
	.loc	1 352 16 is_stmt 1              # preadded_center.py:352:16
	addli r1, r30, -2048
	.loc	1 335 0                         # preadded_center.py:335:0
	l_gm2lm r13, r8, 0(r[14:15])
	mfence { lm }
	.loc	1 352 16                        # preadded_center.py:352:16
	vload_mask16.mz vr5{mr1}, 0(r1)
	addli r1, r30, -1984
	vload_mask16.mz vr0{mr1}, 0(r1)
	addli r1, r30, -1920
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -1856
	vload_mask16.mz vr2{mr1}, 0(r1)
	addli r1, r30, -1792
	vload_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -1728
	vload_mask16.mz vr4{mr1}, 0(r1)
	addli r1, r30, -1664
	vload_mask16.mz vr6{mr1}, 0(r1)
	addli r1, r30, -1600
	vload_mask16.mz vr7{mr1}, 0(r1)
	addli r1, r30, -1536
	vload_mask16.mz vr8{mr1}, 0(r1)
	addli r1, r30, -1472
	vload_mask16.mz vr9{mr1}, 0(r1)
	addli r1, r30, -1408
	vload_mask16.mz vr10{mr1}, 0(r1)
	addli r1, r30, -2112
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2176
	.loc	1 353 24                        # preadded_center.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr5, vr0
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr1
	#NO_APP
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2240
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr2
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr3
	#NO_APP
	vstore_mask16.mz vr2{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2304
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr4
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr6
	#NO_APP
	vstore_mask16.mz vr3{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2368
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr7
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr8
	#NO_APP
	vstore_mask16.mz vr4{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2432
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr9
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	vstore_mask16.mz vr6{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2496
	vstore_mask16.mz vr7{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2560
	vstore_mask16.mz vr8{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2624
	vstore_mask16.mz vr9{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2688
	vstore_mask16.mz vr10{mr1}, 0(r1)       # 64-byte Folded Spill
	.loc	1 352 16                        # preadded_center.py:352:16
	addli r1, r30, -1344
	vload_mask16.mz vr2{mr1}, 0(r1)
	addli r1, r30, -1280
	.loc	1 353 24                        # preadded_center.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr2
	#NO_APP
	.loc	1 352 16                        # preadded_center.py:352:16
	vload_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -1216
	.loc	1 353 24                        # preadded_center.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr3
	#NO_APP
	.loc	1 352 16                        # preadded_center.py:352:16
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -3200
	.loc	1 353 24                        # preadded_center.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr1
	#NO_APP
	vstore_mask16.mz vr3{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2752
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	.loc	1 352 16                        # preadded_center.py:352:16
	addli r1, r30, -1152
	vload_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -1088
	.loc	1 353 24                        # preadded_center.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr3
	#NO_APP
	.loc	1 352 16                        # preadded_center.py:352:16
	vload_mask16.mz vr4{mr1}, 0(r1)
	vload_mask16.mz vr1{mr1}, -1024(r30)
	addli r1, r30, -3264
	.loc	1 353 24                        # preadded_center.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr4
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr1
	#NO_APP
	vstore_mask16.mz vr4{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2816
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3328
	.loc	1 352 16                        # preadded_center.py:352:16
	vload_mask16.mz vr4{mr1}, -960(r30)
	vload_mask16.mz vr6{mr1}, -896(r30)
	vload_mask16.mz vr1{mr1}, -832(r30)
	.loc	1 353 24                        # preadded_center.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr4
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr6
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr1
	#NO_APP
	vstore_mask16.mz vr6{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2880
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3520
	.loc	1 352 16                        # preadded_center.py:352:16
	vload_mask16.mz vr10{mr1}, -768(r30)
	vload_mask16.mz vr6{mr1}, -704(r30)
	vload_mask16.mz vr1{mr1}, -640(r30)
	.loc	1 353 24                        # preadded_center.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr6
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr1
	#NO_APP
	vstore_mask16.mz vr6{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2944
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3008
	.loc	1 352 16                        # preadded_center.py:352:16
	vload_mask16.mz vr11{mr1}, -576(r30)
	vload_mask16.mz vr9{mr1}, -512(r30)
	vload_mask16.mz vr1{mr1}, -448(r30)
	.loc	1 353 24                        # preadded_center.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr11
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr9
	#NO_APP
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	#APP
	vmax.f.mz vr1{mr1}, vr0, vr1
	#NO_APP
	addli r1, r30, -3392
	.loc	1 352 16                        # preadded_center.py:352:16
	vload_mask16.mz vr0{mr1}, -384(r30)
	vload_mask16.mz vr7{mr1}, -320(r30)
	vload_mask16.mz vr6{mr1}, -256(r30)
	.loc	1 353 24                        # preadded_center.py:353:24
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr0
	#NO_APP
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr7
	#NO_APP
	vstore_mask16.mz vr7{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3072
	vstore_mask16.mz vr6{mr1}, 0(r1)        # 64-byte Folded Spill
	#APP
	vmax.f.mz vr6{mr1}, vr1, vr6
	#NO_APP
	addli r1, r30, -3456
	.loc	1 352 16                        # preadded_center.py:352:16
	vload_mask16.mz vr1{mr1}, -192(r30)
	vload_mask16.mz vr8{mr1}, -128(r30)
	vload_mask16.mz vr7{mr1}, -64(r30)
	.loc	1 353 24                        # preadded_center.py:353:24
	#APP
	vmax.f.mz vr6{mr1}, vr6, vr1
	#NO_APP
	#APP
	vmax.f.mz vr6{mr1}, vr6, vr8
	#NO_APP
	#APP
	vmax.f.mz vr6{mr1}, vr6, vr7
	#NO_APP
	vextracti.f r13, 0(vr6)
	vextracti.f r14, 1(vr6)
	vextracti.f r15, 2(vr6)
	vextracti.f r16, 3(vr6)
	vextracti.f r2, 5(vr6)
	vextracti.f r9, 6(vr6)
	vextracti.f r17, 7(vr6)
	vextracti.f r20, 8(vr6)
	vextracti.f r21, 9(vr6)
	vextracti.f r3, 10(vr6)
	vextracti.f r22, 11(vr6)
	vextracti.f r23, 12(vr6)
	vextracti.f r18, 13(vr6)
	vextracti.f r19, 14(vr6)
	vextracti.f r6, 15(vr6)
	#APP
	max.f r13, r13, r14
	#NO_APP
	#APP
	max.f r13, r13, r15
	#NO_APP
	#APP
	max.f r13, r13, r16
	#NO_APP
	vstore_mask16.mz vr8{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3136
	vstore_mask16.mz vr7{mr1}, 0(r1)        # 64-byte Folded Spill
	vextracti.f r1, 4(vr6)
	#APP
	max.f r1, r13, r1
	#NO_APP
	#APP
	max.f r1, r1, r2
	#NO_APP
	loadli.w r2,  -3524(r30)                # 4-byte Folded Reload
	#APP
	max.f r1, r1, r9
	#NO_APP
	#APP
	max.f r1, r1, r17
	#NO_APP
	#APP
	max.f r1, r1, r20
	#NO_APP
	#APP
	max.f r1, r1, r21
	#NO_APP
	#APP
	max.f r1, r1, r3
	#NO_APP
	#APP
	max.f r1, r1, r22
	#NO_APP
	#APP
	max.f r1, r1, r23
	#NO_APP
	#APP
	max.f r1, r1, r18
	#NO_APP
	#APP
	max.f r1, r1, r19
	#NO_APP
	#APP
	max.f r1, r1, r6
	#NO_APP
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loadli.w r1,  -3536(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	loads.w r1, 0(r25)
	loads.w r2, 4(r25)
	loads.w r3, 8(r25)
	loads.w r6, 12(r25)
	#APP
	max.f r1, r1, r2
	#NO_APP
	#APP
	max.f r1, r1, r3
	#NO_APP
	#APP
	max.f r1, r1, r6
	#NO_APP
	stores.w r1, 0(r25)
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r1, 0(r25)
	.loc	1 357 21                        # preadded_center.py:357:21
	lui r2, 524288
	xor r13, r1, r2
	.loc	1 357 16 is_stmt 0              # preadded_center.py:357:16
	addli r1, r30, -2048
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr5{mr1}, r13, vr5
	#NO_APP
	#APP
	vadd.f.mz.rn vr2{mr1}, r13, vr2
	#NO_APP
	#APP
	vadd.f.mz.rn vr0{mr1}, r13, vr0
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr5{mr1}, 0(r1)
	.loc	1 357 21                        # preadded_center.py:357:21
	addli r1, r30, -2112
	vload_mask16.mz vr5{mr1}, 0(r1)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_center.py:357:16
	addli r1, r30, -1984
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr5{mr1}, r13, vr5
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr5{mr1}, 0(r1)
	.loc	1 357 21                        # preadded_center.py:357:21
	addli r1, r30, -2176
	vload_mask16.mz vr5{mr1}, 0(r1)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_center.py:357:16
	addli r1, r30, -1920
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr5{mr1}, r13, vr5
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr5{mr1}, 0(r1)
	.loc	1 357 21                        # preadded_center.py:357:21
	addli r1, r30, -2240
	vload_mask16.mz vr5{mr1}, 0(r1)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_center.py:357:16
	addli r1, r30, -1856
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr5{mr1}, r13, vr5
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr5{mr1}, 0(r1)
	.loc	1 357 21                        # preadded_center.py:357:21
	addli r1, r30, -2304
	vload_mask16.mz vr5{mr1}, 0(r1)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_center.py:357:16
	addli r1, r30, -1792
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr5{mr1}, r13, vr5
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr5{mr1}, 0(r1)
	.loc	1 357 21                        # preadded_center.py:357:21
	addli r1, r30, -2368
	vload_mask16.mz vr5{mr1}, 0(r1)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_center.py:357:16
	addli r1, r30, -1728
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr5{mr1}, r13, vr5
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr5{mr1}, 0(r1)
	.loc	1 357 21                        # preadded_center.py:357:21
	addli r1, r30, -2432
	vload_mask16.mz vr5{mr1}, 0(r1)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_center.py:357:16
	addli r1, r30, -1664
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr5{mr1}, r13, vr5
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr5{mr1}, 0(r1)
	.loc	1 357 21                        # preadded_center.py:357:21
	addli r1, r30, -2496
	vload_mask16.mz vr5{mr1}, 0(r1)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_center.py:357:16
	addli r1, r30, -1600
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr5{mr1}, r13, vr5
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr5{mr1}, 0(r1)
	.loc	1 357 21                        # preadded_center.py:357:21
	addli r1, r30, -2560
	vload_mask16.mz vr5{mr1}, 0(r1)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_center.py:357:16
	addli r1, r30, -1536
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr5{mr1}, r13, vr5
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr5{mr1}, 0(r1)
	.loc	1 357 21                        # preadded_center.py:357:21
	addli r1, r30, -2624
	vload_mask16.mz vr5{mr1}, 0(r1)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_center.py:357:16
	addli r1, r30, -1472
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr5{mr1}, r13, vr5
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr5{mr1}, 0(r1)
	.loc	1 357 21                        # preadded_center.py:357:21
	addli r1, r30, -2688
	vload_mask16.mz vr5{mr1}, 0(r1)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_center.py:357:16
	addli r1, r30, -1408
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr5{mr1}, r13, vr5
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr5{mr1}, 0(r1)
	addli r1, r30, -1344
	vstore_mask16.mz vr2{mr1}, 0(r1)
	.loc	1 357 21                        # preadded_center.py:357:21
	addli r1, r30, -3200
	vload_mask16.mz vr2{mr1}, 0(r1)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_center.py:357:16
	addli r1, r30, -1280
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr2{mr1}, r13, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r1)
	.loc	1 357 21                        # preadded_center.py:357:21
	addli r1, r30, -2752
	vload_mask16.mz vr2{mr1}, 0(r1)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_center.py:357:16
	addli r1, r30, -1216
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr2{mr1}, r13, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r1)
	addli r1, r30, -1152
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr2{mr1}, r13, vr3
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r1)
	.loc	1 357 21                        # preadded_center.py:357:21
	addli r1, r30, -3264
	vload_mask16.mz vr2{mr1}, 0(r1)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_center.py:357:16
	addli r1, r30, -1088
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr2{mr1}, r13, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r1)
	.loc	1 357 21                        # preadded_center.py:357:21
	addli r1, r30, -2816
	vload_mask16.mz vr2{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -3328
	#APP
	vadd.f.mz.rn vr2{mr1}, r13, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr2{mr1}, -1024(r30)
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr2{mr1}, r13, vr4
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr2{mr1}, -960(r30)
	.loc	1 357 21                        # preadded_center.py:357:21
	vload_mask16.mz vr2{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -2880
	#APP
	vadd.f.mz.rn vr2{mr1}, r13, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr2{mr1}, -896(r30)
	.loc	1 357 21                        # preadded_center.py:357:21
	vload_mask16.mz vr2{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -3520
	#APP
	vadd.f.mz.rn vr2{mr1}, r13, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr2{mr1}, -832(r30)
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr2{mr1}, r13, vr10
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr2{mr1}, -768(r30)
	.loc	1 357 21                        # preadded_center.py:357:21
	vload_mask16.mz vr2{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -2944
	#APP
	vadd.f.mz.rn vr2{mr1}, r13, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr2{mr1}, -704(r30)
	.loc	1 357 21                        # preadded_center.py:357:21
	vload_mask16.mz vr2{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -3008
	#APP
	vadd.f.mz.rn vr2{mr1}, r13, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr2{mr1}, -640(r30)
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr2{mr1}, r13, vr11
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr2{mr1}, -576(r30)
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr2{mr1}, r13, vr9
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr2{mr1}, -512(r30)
	.loc	1 357 21                        # preadded_center.py:357:21
	vload_mask16.mz vr2{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -3392
	#APP
	vadd.f.mz.rn vr2{mr1}, r13, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr2{mr1}, -448(r30)
	vstore_mask16.mz vr0{mr1}, -384(r30)
	.loc	1 357 21                        # preadded_center.py:357:21
	vload_mask16.mz vr0{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -3072
	#APP
	vadd.f.mz.rn vr0{mr1}, r13, vr0
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -320(r30)
	.loc	1 357 21                        # preadded_center.py:357:21
	vload_mask16.mz vr0{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -3456
	#APP
	vadd.f.mz.rn vr0{mr1}, r13, vr0
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -256(r30)
	.loc	1 357 21                        # preadded_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r13, vr1
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -192(r30)
	.loc	1 357 21                        # preadded_center.py:357:21
	vload_mask16.mz vr0{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -3136
	#APP
	vadd.f.mz.rn vr0{mr1}, r13, vr0
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -128(r30)
	.loc	1 357 21                        # preadded_center.py:357:21
	vload_mask16.mz vr0{mr1}, 0(r1)         # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r13, vr0
	#NO_APP
	.loc	1 357 16                        # preadded_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -64(r30)
	addli r13, r28, 0
	.loc	1 335 0 is_stmt 1               # preadded_center.py:335:0
	mfence { lm }
	loadli.w r1,  64(r30)
	blt.s r10, r1, .LBB0_2
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0 is_stmt 0                 # preadded_center.py:0:0
	addli r13, zero, 0
	j .LBB0_2
.LBB0_9:                                # %._crit_edge
	.loc	1 358 4 epilogue_begin is_stmt 1 # preadded_center.py:358:4
	addli sp, r30, -3584
	addli sp, sp, 3584
	mfence { lm, sm, gm }
	exit
.Ltmp0:
.Lfunc_end0:
	.size	_tle_row_softmax_preadded_center, .Lfunc_end0-_tle_row_softmax_preadded_center
	.cfi_endproc
                                        # -- End function
	.type	global_smem,@object             # @global_smem
	.section	".sm.LLVMDialectModule;global_smem","a",@nobits
	.p2align	3, 0x0
global_smem:
	.size	global_smem, 0

	.type	XPU_KERNEL_PARAM_SIZE__tle_row_softmax_preadded_center,@object # @XPU_KERNEL_PARAM_SIZE__tle_row_softmax_preadded_center
	.section	.XPU.KERNEL_PARAM_SIZE._tle_row_softmax_preadded_center,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE__tle_row_softmax_preadded_center
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE__tle_row_softmax_preadded_center:
	.long	104                             # 0x68
	.size	XPU_KERNEL_PARAM_SIZE__tle_row_softmax_preadded_center, 4

	.type	XPU_KERNEL_STACK_SIZE__tle_row_softmax_preadded_center,@object # @XPU_KERNEL_STACK_SIZE__tle_row_softmax_preadded_center
	.section	.XPU.KERNEL_STACK_SIZE._tle_row_softmax_preadded_center,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE__tle_row_softmax_preadded_center
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE__tle_row_softmax_preadded_center:
	.long	3712                            # 0xe80
	.size	XPU_KERNEL_STACK_SIZE__tle_row_softmax_preadded_center, 4

	.type	XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_preadded_center,@object # @XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_preadded_center
	.section	.XPU.KERNEL_DYNAMIC_LM._tle_row_softmax_preadded_center,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_preadded_center
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_preadded_center:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_preadded_center, 4

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
.asciz	"preadded_center.py"            # string offset=7
.Linfo_string2:
.asciz	"/tmp"                          # string offset=26
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
