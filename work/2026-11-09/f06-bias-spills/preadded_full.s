	.text
	.file	"LLVMDialectModule"
	.section	.text._tle_row_softmax_preadded_full,"ax",@progbits
	.globl	_tle_row_softmax_preadded_full  # -- Begin function _tle_row_softmax_preadded_full
	.type	_tle_row_softmax_preadded_full,@function
_tle_row_softmax_preadded_full:         # @_tle_row_softmax_preadded_full
.Lfunc_begin0:
	.file	1 "/tmp" "preadded_full.py"
	.loc	1 335 0                         # preadded_full.py:335:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4288
	lui r8, :hi20:global_smem
	.file	2 "/opt/hsp/triton/language" "standard.py"
	.loc	2 296 36 prologue_end           # standard.py:296:36
	core_id r11
	lui r1, 8
	addli r30, sp, 4160
	lui r10, 4
	slli r9, r11, 2
	addli r8, r8, :lo12:global_smem
	ori r1, r1, 16
	loadli.w r3,  96(r30)
	loadli.w r6,  92(r30)
	loadli.w r2,  100(r30)
	add.s r5, r8, r9
	mul.s r7, r3, r6
	load_param_i r6, 0
	add.s r4, r5, r1
.Ltmp0:
	.loc	1 353 24                        # preadded_full.py:353:24
	add.s r5, r5, r10
	mul.s r7, r7, r2
	storeli.w r4, -4100(r30)                # 4-byte Folded Spill
.Ltmp1:
	.loc	2 296 36                        # standard.py:296:36
	stores.w zero, 0(r4)
	lui r4, 15
	mfence { lm, sm, gm }
	ori r4, r4, 4095
	csr_set csr3, r4
	sync_group
	storeli.w r5, -4104(r30)                # 4-byte Folded Spill
.Ltmp2:
	.loc	1 353 24                        # preadded_full.py:353:24
	stores.w zero, 0(r5)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	ble.s r7, r6, .LBB0_11
# %bb.1:                                # %.lr.ph
	.loc	1 0 24 is_stmt 0                # preadded_full.py:0:24
	andi r19, r11, 3
	loadli.w r17,  12(r30)
	lui r25, 1048575
	load_param_i r2, 1
	srli r20, r11, 2
	loadli.w r16,  68(r30)
	load.d r[23:24], 24(r30)
	addli r5, r30, -4120
	addli r28, zero, 512
	load.d r[12:13], 80(r30)
	slli r11, r19, 9
	storeli.w r2, -4108(r30)                # 4-byte Folded Spill
	andi r2, r20, 15
	ori r25, r25, 4080
	sub.s r17, r17, r11
	storeli.w r2, -4112(r30)                # 4-byte Folded Spill
	zext_int2long r[2:3], r2
	and r9, r9, r25
	zext_int2long r[14:15], r11
	max.s r17, r17, zero
	add.s r8, r8, r9
	store.d r[2:3], 0(r5)                   # 8-byte Folded Spill
	sub.s r9, r16, r11
	mul.sl r[2:3], r[23:24], r[14:15]
	addli r5, r30, -4128
	min.s r17, r17, r28
	store.d r[2:3], 0(r5)                   # 8-byte Folded Spill
	max.s r9, r9, zero
	add.s r27, r8, r1
	addli r5, r30, -4144
	add.s r26, r8, r10
	addli r10, zero, 2
	slli r2, r17, 2
	min.s r1, r9, r28
	storeli.w r2, -4132(r30)                # 4-byte Folded Spill
	mul.sl r[2:3], r[12:13], r[14:15]
	slli r28, r1, 2
	addli r13, r30, -256
	store.d r[2:3], 0(r5)                   # 8-byte Folded Spill
	addli r5, r30, -2304
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 335 0 is_stmt 1               # preadded_full.py:335:0
	load.d r[2:3], 72(r30)
	addli r5, r30, -4144
	load.d r[8:9], 0(r5)                    # 8-byte Folded Reload
	lui r5, 983040
	mul.sl r[2:3], r[16:17], r[2:3]
	or r1, r1, r5
	addli r5, r30, -2304
	add.ul r[2:3], r[2:3], r[8:9]
	load.d r[8:9], 56(r30)
	sll.d r[2:3], r[2:3], r10
	add.ul r[2:3], r[8:9], r[2:3]
	s_lm2gm r1, r5, 0(r[2:3])
	loadli.w r1,  -4108(r30)                # 4-byte Folded Reload
	mfence { lm }
	add.s r6, r6, r1
	blt.s r6, r7, .LBB0_3
	j .LBB0_11
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 # preadded_full.py:0:0
	loadli.w r1,  100(r30)
	loadli.w r2,  96(r30)
	div.s r1, r6, r1
	div.s r1, r1, r2
	.loc	1 335 0                         # preadded_full.py:335:0
	loadli.w r2,  8(r30)
	.loc	1 342 20 is_stmt 1              # preadded_full.py:342:20
	slli r16, r1, 4
	.loc	1 335 0                         # preadded_full.py:335:0
	loadli.w r1,  -4112(r30)                # 4-byte Folded Reload
	or r15, r16, r1
	loadli.w r1,  -4132(r30)                # 4-byte Folded Reload
	blt.s r15, r2, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0 is_stmt 0                 # preadded_full.py:0:0
	addli r1, zero, 0
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 335 0                         # preadded_full.py:335:0
	addli r8, r30, -4120
	sext_int2long r[16:17], r16
	load.d r[2:3], 0(r8)                    # 8-byte Folded Reload
	addli r8, r30, -4128
	or.d r[16:17], r[16:17], r[2:3]
	load.d r[2:3], 16(r30)
	mul.sl r[21:22], r[16:17], r[2:3]
	load.d r[2:3], 0(r8)                    # 8-byte Folded Reload
	add.ul r[21:22], r[21:22], r[2:3]
	lui r2, 983040
	or r1, r1, r2
	load.d r[2:3], 0(r30)
	sll.d r[21:22], r[21:22], r10
	add.ul r[21:22], r[2:3], r[21:22]
	l_gm2lm r1, r5, 0(r[21:22])
	.loc	1 352 16 is_stmt 1              # preadded_full.py:352:16
	addli r1, r30, -2304
	.loc	1 335 0                         # preadded_full.py:335:0
	mfence { lm }
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr10{mr1}, 0(r1)
	addli r1, r30, -2240
	vload_mask16.mz vr6{mr1}, 0(r1)
	addli r1, r30, -2176
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr10, vr6
	#NO_APP
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr7{mr1}, 0(r1)
	addli r1, r30, -2112
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr7
	#NO_APP
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr8{mr1}, 0(r1)
	addli r1, r30, -2048
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr8
	#NO_APP
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr9{mr1}, 0(r1)
	addli r1, r30, -1984
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr9
	#NO_APP
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr4{mr1}, 0(r1)
	addli r1, r30, -1920
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr4
	#NO_APP
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr5{mr1}, 0(r1)
	addli r1, r30, -1856
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr5
	#NO_APP
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr11{mr1}, 0(r1)
	addli r1, r30, -1792
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr11
	#NO_APP
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -1728
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr3
	#NO_APP
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -1664
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr1
	#NO_APP
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr2{mr1}, 0(r1)
	addli r1, r30, -2752
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr2
	#NO_APP
	vstore_mask16.mz vr11{mr1}, 0(r1)       # 64-byte Folded Spill
	addli r1, r30, -2624
	vstore_mask16.mz vr3{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2368
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2432
	vstore_mask16.mz vr2{mr1}, 0(r1)        # 64-byte Folded Spill
	.loc	1 352 16                        # preadded_full.py:352:16
	addli r1, r30, -1600
	vload_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -1536
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr3
	#NO_APP
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr2{mr1}, 0(r1)
	addli r1, r30, -1472
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr2
	#NO_APP
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -3904
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr1
	#NO_APP
	vstore_mask16.mz vr2{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3712
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	.loc	1 352 16                        # preadded_full.py:352:16
	addli r1, r30, -1408
	vload_mask16.mz vr11{mr1}, 0(r1)
	addli r1, r30, -1344
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr11
	#NO_APP
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr2{mr1}, 0(r1)
	addli r1, r30, -1280
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr2
	#NO_APP
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -3840
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr1
	#NO_APP
	vstore_mask16.mz vr11{mr1}, 0(r1)       # 64-byte Folded Spill
	addli r1, r30, -3776
	vstore_mask16.mz vr2{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3648
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	.loc	1 352 16                        # preadded_full.py:352:16
	addli r1, r30, -1216
	vload_mask16.mz vr11{mr1}, 0(r1)
	addli r1, r30, -1152
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr11
	#NO_APP
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr2{mr1}, 0(r1)
	addli r1, r30, -1088
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr2
	#NO_APP
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -3584
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr1
	#NO_APP
	vstore_mask16.mz vr11{mr1}, 0(r1)       # 64-byte Folded Spill
	addli r1, r30, -3520
	vstore_mask16.mz vr2{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3392
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3456
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr11{mr1}, -1024(r30)
	vload_mask16.mz vr2{mr1}, -960(r30)
	vload_mask16.mz vr1{mr1}, -896(r30)
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr11
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr2
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr1
	#NO_APP
	vstore_mask16.mz vr11{mr1}, 0(r1)       # 64-byte Folded Spill
	addli r1, r30, -3264
	vstore_mask16.mz vr2{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3200
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3328
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr11{mr1}, -832(r30)
	vload_mask16.mz vr2{mr1}, -768(r30)
	vload_mask16.mz vr1{mr1}, -704(r30)
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr11
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr2
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr1
	#NO_APP
	vstore_mask16.mz vr11{mr1}, 0(r1)       # 64-byte Folded Spill
	addli r1, r30, -3136
	vstore_mask16.mz vr2{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2880
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3008
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr11{mr1}, -640(r30)
	vload_mask16.mz vr2{mr1}, -576(r30)
	vload_mask16.mz vr1{mr1}, -512(r30)
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr11
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr2
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr1
	#NO_APP
	vstore_mask16.mz vr11{mr1}, 0(r1)       # 64-byte Folded Spill
	addli r1, r30, -2944
	vstore_mask16.mz vr2{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2816
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2688
	.loc	1 352 16                        # preadded_full.py:352:16
	vload_mask16.mz vr2{mr1}, -448(r30)
	vload_mask16.mz vr1{mr1}, -384(r30)
	vload_mask16.mz vr11{mr1}, -320(r30)
	.loc	1 353 24                        # preadded_full.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr2
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr1
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr11
	#NO_APP
	vextracti.f r2, 1(vr0)
	vextracti.f r21, 2(vr0)
	vextracti.f r22, 3(vr0)
	vextracti.f r12, 4(vr0)
	vextracti.f r14, 5(vr0)
	vextracti.f r18, 6(vr0)
	vextracti.f r23, 7(vr0)
	vextracti.f r24, 8(vr0)
	vextracti.f r10, 9(vr0)
	vextracti.f r11, 10(vr0)
	vextracti.f r20, 11(vr0)
	vextracti.f r3, 12(vr0)
	vextracti.f r25, 13(vr0)
	vextracti.f r8, 14(vr0)
	vextracti.f r9, 15(vr0)
	vstore_mask16.mz vr2{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2560
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2496
	vstore_mask16.mz vr11{mr1}, 0(r1)       # 64-byte Folded Spill
	vextracti.f r1, 0(vr0)
	#APP
	max.f r1, r1, r2
	#NO_APP
	loadli.w r2,  -4104(r30)                # 4-byte Folded Reload
	#APP
	max.f r1, r1, r21
	#NO_APP
	#APP
	max.f r1, r1, r22
	#NO_APP
	#APP
	max.f r1, r1, r12
	#NO_APP
	#APP
	max.f r1, r1, r14
	#NO_APP
	#APP
	max.f r1, r1, r18
	#NO_APP
	#APP
	max.f r1, r1, r23
	#NO_APP
	#APP
	max.f r1, r1, r24
	#NO_APP
	#APP
	max.f r1, r1, r10
	#NO_APP
	#APP
	max.f r1, r1, r11
	#NO_APP
	#APP
	max.f r1, r1, r20
	#NO_APP
	#APP
	max.f r1, r1, r3
	#NO_APP
	#APP
	max.f r1, r1, r25
	#NO_APP
	#APP
	max.f r1, r1, r8
	#NO_APP
	#APP
	max.f r1, r1, r9
	#NO_APP
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r19, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	loads.w r1, 0(r26)
	loads.w r2, 4(r26)
	loads.w r3, 8(r26)
	loads.w r8, 12(r26)
	#APP
	max.f r1, r1, r2
	#NO_APP
	#APP
	max.f r1, r1, r3
	#NO_APP
	#APP
	max.f r1, r1, r8
	#NO_APP
	stores.w r1, 0(r26)
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r1, 0(r26)
	.loc	1 354 19                        # preadded_full.py:354:19
	lui r2, 524288
	xor r1, r1, r2
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr6
	#NO_APP
	#APP
	vadd.f.mz.rn vr10{mr1}, r1, vr10
	#NO_APP
	.loc	1 354 15 is_stmt 0              # preadded_full.py:354:15
	vstore_mask16.mz vr10{mr1}, -256(r30)
	vstore_mask16.mz vr0{mr1}, -192(r30)
	.loc	1 354 19                        # preadded_full.py:354:19
	#APP
	vadd.f.mz.rn vr3{mr1}, r1, vr3
	#NO_APP
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr7
	#NO_APP
	.loc	1 354 15                        # preadded_full.py:354:15
	vstore_mask16.mz vr0{mr1}, -128(r30)
	.loc	1 354 19                        # preadded_full.py:354:19
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr8
	#NO_APP
	.loc	1 354 15                        # preadded_full.py:354:15
	vstore_mask16.mz vr0{mr1}, -64(r30)
	#APP
	mfence { lm }
	loadli.w r2,  0(r13)
	loadli.w r3,  4(r13)
	loadli.w r8,  8(r13)
	loadli.w r9,  12(r13)
	loadli.w r10,  16(r13)
	loadli.w r11,  20(r13)
	loadli.w r12,  24(r13)
	loadli.w r14,  28(r13)
	loadli.w r18,  32(r13)
	loadli.w r20,  36(r13)
	loadli.w r21,  40(r13)
	loadli.w r22,  44(r13)
	loadli.w r23,  48(r13)
	loadli.w r24,  52(r13)
	loadli.w r25,  56(r13)
	loadli.w r5,  60(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	exp.f.rn r5, r5
	storeli.w r2, 0(r13)
	storeli.w r3, 4(r13)
	storeli.w r8, 8(r13)
	storeli.w r9, 12(r13)
	storeli.w r10, 16(r13)
	storeli.w r11, 20(r13)
	storeli.w r12, 24(r13)
	storeli.w r14, 28(r13)
	storeli.w r18, 32(r13)
	storeli.w r20, 36(r13)
	storeli.w r21, 40(r13)
	storeli.w r22, 44(r13)
	storeli.w r23, 48(r13)
	storeli.w r24, 52(r13)
	storeli.w r25, 56(r13)
	storeli.w r5, 60(r13)
	loadli.w r2,  64(r13)
	loadli.w r3,  68(r13)
	loadli.w r8,  72(r13)
	loadli.w r9,  76(r13)
	loadli.w r10,  80(r13)
	loadli.w r11,  84(r13)
	loadli.w r12,  88(r13)
	loadli.w r14,  92(r13)
	loadli.w r18,  96(r13)
	loadli.w r20,  100(r13)
	loadli.w r21,  104(r13)
	loadli.w r22,  108(r13)
	loadli.w r23,  112(r13)
	loadli.w r24,  116(r13)
	loadli.w r25,  120(r13)
	loadli.w r5,  124(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	exp.f.rn r5, r5
	storeli.w r2, 64(r13)
	storeli.w r3, 68(r13)
	storeli.w r8, 72(r13)
	storeli.w r9, 76(r13)
	storeli.w r10, 80(r13)
	storeli.w r11, 84(r13)
	storeli.w r12, 88(r13)
	storeli.w r14, 92(r13)
	storeli.w r18, 96(r13)
	storeli.w r20, 100(r13)
	storeli.w r21, 104(r13)
	storeli.w r22, 108(r13)
	storeli.w r23, 112(r13)
	storeli.w r24, 116(r13)
	storeli.w r25, 120(r13)
	storeli.w r5, 124(r13)
	loadli.w r2,  128(r13)
	loadli.w r3,  132(r13)
	loadli.w r8,  136(r13)
	loadli.w r9,  140(r13)
	loadli.w r10,  144(r13)
	loadli.w r11,  148(r13)
	loadli.w r12,  152(r13)
	loadli.w r14,  156(r13)
	loadli.w r18,  160(r13)
	loadli.w r20,  164(r13)
	loadli.w r21,  168(r13)
	loadli.w r22,  172(r13)
	loadli.w r23,  176(r13)
	loadli.w r24,  180(r13)
	loadli.w r25,  184(r13)
	loadli.w r5,  188(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	exp.f.rn r5, r5
	storeli.w r2, 128(r13)
	storeli.w r3, 132(r13)
	storeli.w r8, 136(r13)
	storeli.w r9, 140(r13)
	storeli.w r10, 144(r13)
	storeli.w r11, 148(r13)
	storeli.w r12, 152(r13)
	storeli.w r14, 156(r13)
	storeli.w r18, 160(r13)
	storeli.w r20, 164(r13)
	storeli.w r21, 168(r13)
	storeli.w r22, 172(r13)
	storeli.w r23, 176(r13)
	storeli.w r24, 180(r13)
	storeli.w r25, 184(r13)
	storeli.w r5, 188(r13)
	loadli.w r2,  192(r13)
	loadli.w r3,  196(r13)
	loadli.w r8,  200(r13)
	loadli.w r9,  204(r13)
	loadli.w r10,  208(r13)
	loadli.w r11,  212(r13)
	loadli.w r12,  216(r13)
	loadli.w r14,  220(r13)
	loadli.w r18,  224(r13)
	loadli.w r20,  228(r13)
	loadli.w r21,  232(r13)
	loadli.w r22,  236(r13)
	loadli.w r23,  240(r13)
	loadli.w r24,  244(r13)
	loadli.w r25,  248(r13)
	loadli.w r5,  252(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	exp.f.rn r5, r5
	storeli.w r2, 192(r13)
	storeli.w r3, 196(r13)
	storeli.w r8, 200(r13)
	storeli.w r9, 204(r13)
	storeli.w r10, 208(r13)
	storeli.w r11, 212(r13)
	storeli.w r12, 216(r13)
	storeli.w r14, 220(r13)
	storeli.w r18, 224(r13)
	storeli.w r20, 228(r13)
	storeli.w r21, 232(r13)
	storeli.w r22, 236(r13)
	storeli.w r23, 240(r13)
	storeli.w r24, 244(r13)
	storeli.w r25, 248(r13)
	storeli.w r5, 252(r13)
	mfence { lm }
	#NO_APP
	.loc	1 354 19                        # preadded_full.py:354:19
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr9
	#NO_APP
	.loc	1 354 15                        # preadded_full.py:354:15
	vload_mask16.mz vr7{mr1}, -256(r30)
	vload_mask16.mz vr1{mr1}, -192(r30)
	vload_mask16.mz vr6{mr1}, -128(r30)
	addli r2, r30, -3072
	vload_mask16.mz vr2{mr1}, -64(r30)
	vstore_mask16.mz vr0{mr1}, -256(r30)
	.loc	1 354 19                        # preadded_full.py:354:19
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr4
	#NO_APP
	.loc	1 354 15                        # preadded_full.py:354:15
	vstore_mask16.mz vr0{mr1}, -192(r30)
	.loc	1 354 19                        # preadded_full.py:354:19
	#APP
	vadd.f.mz.rn vr4{mr1}, r1, vr5
	#NO_APP
	vstore_mask16.mz vr1{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -3968
.Ltmp3:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr7, vr1
	vstore_mask16.mz vr7{mr1}, 0(r2)        # 64-byte Folded Spill
.Ltmp4:
	.loc	1 354 19                        # preadded_full.py:354:19
	addli r2, r30, -2752
	.loc	1 354 15 is_stmt 0              # preadded_full.py:354:15
	vstore_mask16.mz vr4{mr1}, -128(r30)
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr4{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15                        # preadded_full.py:354:15
	vstore_mask16.mz vr4{mr1}, -64(r30)
	vstore_mask16.mz vr6{mr1}, 0(r2)        # 64-byte Folded Spill
	.loc	1 354 19                        # preadded_full.py:354:19
	addli r2, r30, -2624
.Ltmp5:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr6
.Ltmp6:
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 354 15 is_stmt 0              # preadded_full.py:354:15
	#APP
	mfence { lm }
	loadli.w r2,  0(r13)
	loadli.w r3,  4(r13)
	loadli.w r5,  8(r13)
	loadli.w r8,  12(r13)
	loadli.w r9,  16(r13)
	loadli.w r10,  20(r13)
	loadli.w r11,  24(r13)
	loadli.w r12,  28(r13)
	loadli.w r14,  32(r13)
	loadli.w r18,  36(r13)
	loadli.w r20,  40(r13)
	loadli.w r21,  44(r13)
	loadli.w r22,  48(r13)
	loadli.w r23,  52(r13)
	loadli.w r24,  56(r13)
	loadli.w r25,  60(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 0(r13)
	storeli.w r3, 4(r13)
	storeli.w r5, 8(r13)
	storeli.w r8, 12(r13)
	storeli.w r9, 16(r13)
	storeli.w r10, 20(r13)
	storeli.w r11, 24(r13)
	storeli.w r12, 28(r13)
	storeli.w r14, 32(r13)
	storeli.w r18, 36(r13)
	storeli.w r20, 40(r13)
	storeli.w r21, 44(r13)
	storeli.w r22, 48(r13)
	storeli.w r23, 52(r13)
	storeli.w r24, 56(r13)
	storeli.w r25, 60(r13)
	loadli.w r2,  64(r13)
	loadli.w r3,  68(r13)
	loadli.w r5,  72(r13)
	loadli.w r8,  76(r13)
	loadli.w r9,  80(r13)
	loadli.w r10,  84(r13)
	loadli.w r11,  88(r13)
	loadli.w r12,  92(r13)
	loadli.w r14,  96(r13)
	loadli.w r18,  100(r13)
	loadli.w r20,  104(r13)
	loadli.w r21,  108(r13)
	loadli.w r22,  112(r13)
	loadli.w r23,  116(r13)
	loadli.w r24,  120(r13)
	loadli.w r25,  124(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 64(r13)
	storeli.w r3, 68(r13)
	storeli.w r5, 72(r13)
	storeli.w r8, 76(r13)
	storeli.w r9, 80(r13)
	storeli.w r10, 84(r13)
	storeli.w r11, 88(r13)
	storeli.w r12, 92(r13)
	storeli.w r14, 96(r13)
	storeli.w r18, 100(r13)
	storeli.w r20, 104(r13)
	storeli.w r21, 108(r13)
	storeli.w r22, 112(r13)
	storeli.w r23, 116(r13)
	storeli.w r24, 120(r13)
	storeli.w r25, 124(r13)
	loadli.w r2,  128(r13)
	loadli.w r3,  132(r13)
	loadli.w r5,  136(r13)
	loadli.w r8,  140(r13)
	loadli.w r9,  144(r13)
	loadli.w r10,  148(r13)
	loadli.w r11,  152(r13)
	loadli.w r12,  156(r13)
	loadli.w r14,  160(r13)
	loadli.w r18,  164(r13)
	loadli.w r20,  168(r13)
	loadli.w r21,  172(r13)
	loadli.w r22,  176(r13)
	loadli.w r23,  180(r13)
	loadli.w r24,  184(r13)
	loadli.w r25,  188(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 128(r13)
	storeli.w r3, 132(r13)
	storeli.w r5, 136(r13)
	storeli.w r8, 140(r13)
	storeli.w r9, 144(r13)
	storeli.w r10, 148(r13)
	storeli.w r11, 152(r13)
	storeli.w r12, 156(r13)
	storeli.w r14, 160(r13)
	storeli.w r18, 164(r13)
	storeli.w r20, 168(r13)
	storeli.w r21, 172(r13)
	storeli.w r22, 176(r13)
	storeli.w r23, 180(r13)
	storeli.w r24, 184(r13)
	storeli.w r25, 188(r13)
	loadli.w r2,  192(r13)
	loadli.w r3,  196(r13)
	loadli.w r5,  200(r13)
	loadli.w r8,  204(r13)
	loadli.w r9,  208(r13)
	loadli.w r10,  212(r13)
	loadli.w r11,  216(r13)
	loadli.w r12,  220(r13)
	loadli.w r14,  224(r13)
	loadli.w r18,  228(r13)
	loadli.w r20,  232(r13)
	loadli.w r21,  236(r13)
	loadli.w r22,  240(r13)
	loadli.w r23,  244(r13)
	loadli.w r24,  248(r13)
	loadli.w r25,  252(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 192(r13)
	storeli.w r3, 196(r13)
	storeli.w r5, 200(r13)
	storeli.w r8, 204(r13)
	storeli.w r9, 208(r13)
	storeli.w r10, 212(r13)
	storeli.w r11, 216(r13)
	storeli.w r12, 220(r13)
	storeli.w r14, 224(r13)
	storeli.w r18, 228(r13)
	storeli.w r20, 232(r13)
	storeli.w r21, 236(r13)
	storeli.w r22, 240(r13)
	storeli.w r23, 244(r13)
	storeli.w r24, 248(r13)
	storeli.w r25, 252(r13)
	mfence { lm }
	#NO_APP
	.loc	1 354 19                        # preadded_full.py:354:19
	#APP
	vadd.f.mz.rn vr4{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15                        # preadded_full.py:354:15
	vload_mask16.mz vr6{mr1}, -256(r30)
	addli r2, r30, -2624
.Ltmp7:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr2
	vstore_mask16.mz vr2{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -4032
.Ltmp8:
	.loc	1 354 15                        # preadded_full.py:354:15
	vload_mask16.mz vr2{mr1}, -192(r30)
	vload_mask16.mz vr1{mr1}, -128(r30)
	vload_mask16.mz vr5{mr1}, -64(r30)
	vstore_mask16.mz vr4{mr1}, -256(r30)
	vstore_mask16.mz vr6{mr1}, 0(r2)        # 64-byte Folded Spill
	.loc	1 354 19 is_stmt 0              # preadded_full.py:354:19
	addli r2, r30, -2368
.Ltmp9:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr6
.Ltmp10:
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr4{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -2432
	#APP
	vadd.f.mz.rn vr4{mr1}, r1, vr4
	#NO_APP
	.loc	1 354 15 is_stmt 0              # preadded_full.py:354:15
	vstore_mask16.mz vr4{mr1}, -192(r30)
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr4{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -4096
.Ltmp11:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr2
.Ltmp12:
	.loc	1 354 19                        # preadded_full.py:354:19
	#APP
	vadd.f.mz.rn vr4{mr1}, r1, vr4
	#NO_APP
	vstore_mask16.mz vr2{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -2432
	.loc	1 354 15 is_stmt 0              # preadded_full.py:354:15
	vstore_mask16.mz vr4{mr1}, -128(r30)
	vstore_mask16.mz vr3{mr1}, -64(r30)
	vstore_mask16.mz vr1{mr1}, 0(r2)        # 64-byte Folded Spill
	.loc	1 354 19                        # preadded_full.py:354:19
	addli r2, r30, -3904
.Ltmp13:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr1
.Ltmp14:
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 354 15 is_stmt 0              # preadded_full.py:354:15
	#APP
	mfence { lm }
	loadli.w r2,  0(r13)
	loadli.w r3,  4(r13)
	loadli.w r5,  8(r13)
	loadli.w r8,  12(r13)
	loadli.w r9,  16(r13)
	loadli.w r10,  20(r13)
	loadli.w r11,  24(r13)
	loadli.w r12,  28(r13)
	loadli.w r14,  32(r13)
	loadli.w r18,  36(r13)
	loadli.w r20,  40(r13)
	loadli.w r21,  44(r13)
	loadli.w r22,  48(r13)
	loadli.w r23,  52(r13)
	loadli.w r24,  56(r13)
	loadli.w r25,  60(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 0(r13)
	storeli.w r3, 4(r13)
	storeli.w r5, 8(r13)
	storeli.w r8, 12(r13)
	storeli.w r9, 16(r13)
	storeli.w r10, 20(r13)
	storeli.w r11, 24(r13)
	storeli.w r12, 28(r13)
	storeli.w r14, 32(r13)
	storeli.w r18, 36(r13)
	storeli.w r20, 40(r13)
	storeli.w r21, 44(r13)
	storeli.w r22, 48(r13)
	storeli.w r23, 52(r13)
	storeli.w r24, 56(r13)
	storeli.w r25, 60(r13)
	loadli.w r2,  64(r13)
	loadli.w r3,  68(r13)
	loadli.w r5,  72(r13)
	loadli.w r8,  76(r13)
	loadli.w r9,  80(r13)
	loadli.w r10,  84(r13)
	loadli.w r11,  88(r13)
	loadli.w r12,  92(r13)
	loadli.w r14,  96(r13)
	loadli.w r18,  100(r13)
	loadli.w r20,  104(r13)
	loadli.w r21,  108(r13)
	loadli.w r22,  112(r13)
	loadli.w r23,  116(r13)
	loadli.w r24,  120(r13)
	loadli.w r25,  124(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 64(r13)
	storeli.w r3, 68(r13)
	storeli.w r5, 72(r13)
	storeli.w r8, 76(r13)
	storeli.w r9, 80(r13)
	storeli.w r10, 84(r13)
	storeli.w r11, 88(r13)
	storeli.w r12, 92(r13)
	storeli.w r14, 96(r13)
	storeli.w r18, 100(r13)
	storeli.w r20, 104(r13)
	storeli.w r21, 108(r13)
	storeli.w r22, 112(r13)
	storeli.w r23, 116(r13)
	storeli.w r24, 120(r13)
	storeli.w r25, 124(r13)
	loadli.w r2,  128(r13)
	loadli.w r3,  132(r13)
	loadli.w r5,  136(r13)
	loadli.w r8,  140(r13)
	loadli.w r9,  144(r13)
	loadli.w r10,  148(r13)
	loadli.w r11,  152(r13)
	loadli.w r12,  156(r13)
	loadli.w r14,  160(r13)
	loadli.w r18,  164(r13)
	loadli.w r20,  168(r13)
	loadli.w r21,  172(r13)
	loadli.w r22,  176(r13)
	loadli.w r23,  180(r13)
	loadli.w r24,  184(r13)
	loadli.w r25,  188(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 128(r13)
	storeli.w r3, 132(r13)
	storeli.w r5, 136(r13)
	storeli.w r8, 140(r13)
	storeli.w r9, 144(r13)
	storeli.w r10, 148(r13)
	storeli.w r11, 152(r13)
	storeli.w r12, 156(r13)
	storeli.w r14, 160(r13)
	storeli.w r18, 164(r13)
	storeli.w r20, 168(r13)
	storeli.w r21, 172(r13)
	storeli.w r22, 176(r13)
	storeli.w r23, 180(r13)
	storeli.w r24, 184(r13)
	storeli.w r25, 188(r13)
	loadli.w r2,  192(r13)
	loadli.w r3,  196(r13)
	loadli.w r5,  200(r13)
	loadli.w r8,  204(r13)
	loadli.w r9,  208(r13)
	loadli.w r10,  212(r13)
	loadli.w r11,  216(r13)
	loadli.w r12,  220(r13)
	loadli.w r14,  224(r13)
	loadli.w r18,  228(r13)
	loadli.w r20,  232(r13)
	loadli.w r21,  236(r13)
	loadli.w r22,  240(r13)
	loadli.w r23,  244(r13)
	loadli.w r24,  248(r13)
	loadli.w r25,  252(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 192(r13)
	storeli.w r3, 196(r13)
	storeli.w r5, 200(r13)
	storeli.w r8, 204(r13)
	storeli.w r9, 208(r13)
	storeli.w r10, 212(r13)
	storeli.w r11, 216(r13)
	storeli.w r12, 220(r13)
	storeli.w r14, 224(r13)
	storeli.w r18, 228(r13)
	storeli.w r20, 232(r13)
	storeli.w r21, 236(r13)
	storeli.w r22, 240(r13)
	storeli.w r23, 244(r13)
	storeli.w r24, 248(r13)
	storeli.w r25, 252(r13)
	mfence { lm }
	#NO_APP
	.loc	1 354 19                        # preadded_full.py:354:19
	#APP
	vadd.f.mz.rn vr2{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15                        # preadded_full.py:354:15
	vload_mask16.mz vr1{mr1}, -256(r30)
	addli r2, r30, -2368
.Ltmp15:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr5
	vstore_mask16.mz vr5{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -3904
.Ltmp16:
	.loc	1 354 15                        # preadded_full.py:354:15
	vload_mask16.mz vr5{mr1}, -192(r30)
	vload_mask16.mz vr4{mr1}, -128(r30)
	vload_mask16.mz vr3{mr1}, -64(r30)
	vstore_mask16.mz vr2{mr1}, -256(r30)
	vstore_mask16.mz vr1{mr1}, 0(r2)        # 64-byte Folded Spill
	.loc	1 354 19 is_stmt 0              # preadded_full.py:354:19
	addli r2, r30, -3712
.Ltmp17:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr1
.Ltmp18:
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -3840
	#APP
	vadd.f.mz.rn vr2{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15 is_stmt 0              # preadded_full.py:354:15
	vstore_mask16.mz vr2{mr1}, -192(r30)
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	vstore_mask16.mz vr5{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -3776
.Ltmp19:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr5
.Ltmp20:
	.loc	1 354 19                        # preadded_full.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15 is_stmt 0              # preadded_full.py:354:15
	vstore_mask16.mz vr1{mr1}, -128(r30)
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -3712
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15                        # preadded_full.py:354:15
	vstore_mask16.mz vr1{mr1}, -64(r30)
	vstore_mask16.mz vr4{mr1}, 0(r2)        # 64-byte Folded Spill
	.loc	1 354 19                        # preadded_full.py:354:19
	addli r2, r30, -3648
.Ltmp21:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr4
.Ltmp22:
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 354 15 is_stmt 0              # preadded_full.py:354:15
	#APP
	mfence { lm }
	loadli.w r2,  0(r13)
	loadli.w r3,  4(r13)
	loadli.w r5,  8(r13)
	loadli.w r8,  12(r13)
	loadli.w r9,  16(r13)
	loadli.w r10,  20(r13)
	loadli.w r11,  24(r13)
	loadli.w r12,  28(r13)
	loadli.w r14,  32(r13)
	loadli.w r18,  36(r13)
	loadli.w r20,  40(r13)
	loadli.w r21,  44(r13)
	loadli.w r22,  48(r13)
	loadli.w r23,  52(r13)
	loadli.w r24,  56(r13)
	loadli.w r25,  60(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 0(r13)
	storeli.w r3, 4(r13)
	storeli.w r5, 8(r13)
	storeli.w r8, 12(r13)
	storeli.w r9, 16(r13)
	storeli.w r10, 20(r13)
	storeli.w r11, 24(r13)
	storeli.w r12, 28(r13)
	storeli.w r14, 32(r13)
	storeli.w r18, 36(r13)
	storeli.w r20, 40(r13)
	storeli.w r21, 44(r13)
	storeli.w r22, 48(r13)
	storeli.w r23, 52(r13)
	storeli.w r24, 56(r13)
	storeli.w r25, 60(r13)
	loadli.w r2,  64(r13)
	loadli.w r3,  68(r13)
	loadli.w r5,  72(r13)
	loadli.w r8,  76(r13)
	loadli.w r9,  80(r13)
	loadli.w r10,  84(r13)
	loadli.w r11,  88(r13)
	loadli.w r12,  92(r13)
	loadli.w r14,  96(r13)
	loadli.w r18,  100(r13)
	loadli.w r20,  104(r13)
	loadli.w r21,  108(r13)
	loadli.w r22,  112(r13)
	loadli.w r23,  116(r13)
	loadli.w r24,  120(r13)
	loadli.w r25,  124(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 64(r13)
	storeli.w r3, 68(r13)
	storeli.w r5, 72(r13)
	storeli.w r8, 76(r13)
	storeli.w r9, 80(r13)
	storeli.w r10, 84(r13)
	storeli.w r11, 88(r13)
	storeli.w r12, 92(r13)
	storeli.w r14, 96(r13)
	storeli.w r18, 100(r13)
	storeli.w r20, 104(r13)
	storeli.w r21, 108(r13)
	storeli.w r22, 112(r13)
	storeli.w r23, 116(r13)
	storeli.w r24, 120(r13)
	storeli.w r25, 124(r13)
	loadli.w r2,  128(r13)
	loadli.w r3,  132(r13)
	loadli.w r5,  136(r13)
	loadli.w r8,  140(r13)
	loadli.w r9,  144(r13)
	loadli.w r10,  148(r13)
	loadli.w r11,  152(r13)
	loadli.w r12,  156(r13)
	loadli.w r14,  160(r13)
	loadli.w r18,  164(r13)
	loadli.w r20,  168(r13)
	loadli.w r21,  172(r13)
	loadli.w r22,  176(r13)
	loadli.w r23,  180(r13)
	loadli.w r24,  184(r13)
	loadli.w r25,  188(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 128(r13)
	storeli.w r3, 132(r13)
	storeli.w r5, 136(r13)
	storeli.w r8, 140(r13)
	storeli.w r9, 144(r13)
	storeli.w r10, 148(r13)
	storeli.w r11, 152(r13)
	storeli.w r12, 156(r13)
	storeli.w r14, 160(r13)
	storeli.w r18, 164(r13)
	storeli.w r20, 168(r13)
	storeli.w r21, 172(r13)
	storeli.w r22, 176(r13)
	storeli.w r23, 180(r13)
	storeli.w r24, 184(r13)
	storeli.w r25, 188(r13)
	loadli.w r2,  192(r13)
	loadli.w r3,  196(r13)
	loadli.w r5,  200(r13)
	loadli.w r8,  204(r13)
	loadli.w r9,  208(r13)
	loadli.w r10,  212(r13)
	loadli.w r11,  216(r13)
	loadli.w r12,  220(r13)
	loadli.w r14,  224(r13)
	loadli.w r18,  228(r13)
	loadli.w r20,  232(r13)
	loadli.w r21,  236(r13)
	loadli.w r22,  240(r13)
	loadli.w r23,  244(r13)
	loadli.w r24,  248(r13)
	loadli.w r25,  252(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 192(r13)
	storeli.w r3, 196(r13)
	storeli.w r5, 200(r13)
	storeli.w r8, 204(r13)
	storeli.w r9, 208(r13)
	storeli.w r10, 212(r13)
	storeli.w r11, 216(r13)
	storeli.w r12, 220(r13)
	storeli.w r14, 224(r13)
	storeli.w r18, 228(r13)
	storeli.w r20, 232(r13)
	storeli.w r21, 236(r13)
	storeli.w r22, 240(r13)
	storeli.w r23, 244(r13)
	storeli.w r24, 248(r13)
	storeli.w r25, 252(r13)
	mfence { lm }
	#NO_APP
	vload_mask16.mz vr4{mr1}, -256(r30)
	addli r2, r30, -3648
	.loc	1 354 19                        # preadded_full.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
.Ltmp23:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr3
	vstore_mask16.mz vr3{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -3776
.Ltmp24:
	.loc	1 354 15                        # preadded_full.py:354:15
	vload_mask16.mz vr5{mr1}, -192(r30)
	vload_mask16.mz vr3{mr1}, -128(r30)
	vload_mask16.mz vr2{mr1}, -64(r30)
	vstore_mask16.mz vr1{mr1}, -256(r30)
	vstore_mask16.mz vr4{mr1}, 0(r2)        # 64-byte Folded Spill
	.loc	1 354 19 is_stmt 0              # preadded_full.py:354:19
	addli r2, r30, -3584
.Ltmp25:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr4
.Ltmp26:
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -3520
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15 is_stmt 0              # preadded_full.py:354:15
	vstore_mask16.mz vr1{mr1}, -192(r30)
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -3584
.Ltmp27:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr5
.Ltmp28:
	.loc	1 354 19                        # preadded_full.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	vstore_mask16.mz vr5{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -3392
	.loc	1 354 15 is_stmt 0              # preadded_full.py:354:15
	vstore_mask16.mz vr1{mr1}, -128(r30)
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -3520
.Ltmp29:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr3
.Ltmp30:
	.loc	1 354 19                        # preadded_full.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15 is_stmt 0              # preadded_full.py:354:15
	vstore_mask16.mz vr1{mr1}, -64(r30)
	vstore_mask16.mz vr3{mr1}, 0(r2)        # 64-byte Folded Spill
	.loc	1 354 19                        # preadded_full.py:354:19
	addli r2, r30, -3456
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 354 15                        # preadded_full.py:354:15
	#APP
	mfence { lm }
	loadli.w r2,  0(r13)
	loadli.w r3,  4(r13)
	loadli.w r5,  8(r13)
	loadli.w r8,  12(r13)
	loadli.w r9,  16(r13)
	loadli.w r10,  20(r13)
	loadli.w r11,  24(r13)
	loadli.w r12,  28(r13)
	loadli.w r14,  32(r13)
	loadli.w r18,  36(r13)
	loadli.w r20,  40(r13)
	loadli.w r21,  44(r13)
	loadli.w r22,  48(r13)
	loadli.w r23,  52(r13)
	loadli.w r24,  56(r13)
	loadli.w r25,  60(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 0(r13)
	storeli.w r3, 4(r13)
	storeli.w r5, 8(r13)
	storeli.w r8, 12(r13)
	storeli.w r9, 16(r13)
	storeli.w r10, 20(r13)
	storeli.w r11, 24(r13)
	storeli.w r12, 28(r13)
	storeli.w r14, 32(r13)
	storeli.w r18, 36(r13)
	storeli.w r20, 40(r13)
	storeli.w r21, 44(r13)
	storeli.w r22, 48(r13)
	storeli.w r23, 52(r13)
	storeli.w r24, 56(r13)
	storeli.w r25, 60(r13)
	loadli.w r2,  64(r13)
	loadli.w r3,  68(r13)
	loadli.w r5,  72(r13)
	loadli.w r8,  76(r13)
	loadli.w r9,  80(r13)
	loadli.w r10,  84(r13)
	loadli.w r11,  88(r13)
	loadli.w r12,  92(r13)
	loadli.w r14,  96(r13)
	loadli.w r18,  100(r13)
	loadli.w r20,  104(r13)
	loadli.w r21,  108(r13)
	loadli.w r22,  112(r13)
	loadli.w r23,  116(r13)
	loadli.w r24,  120(r13)
	loadli.w r25,  124(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 64(r13)
	storeli.w r3, 68(r13)
	storeli.w r5, 72(r13)
	storeli.w r8, 76(r13)
	storeli.w r9, 80(r13)
	storeli.w r10, 84(r13)
	storeli.w r11, 88(r13)
	storeli.w r12, 92(r13)
	storeli.w r14, 96(r13)
	storeli.w r18, 100(r13)
	storeli.w r20, 104(r13)
	storeli.w r21, 108(r13)
	storeli.w r22, 112(r13)
	storeli.w r23, 116(r13)
	storeli.w r24, 120(r13)
	storeli.w r25, 124(r13)
	loadli.w r2,  128(r13)
	loadli.w r3,  132(r13)
	loadli.w r5,  136(r13)
	loadli.w r8,  140(r13)
	loadli.w r9,  144(r13)
	loadli.w r10,  148(r13)
	loadli.w r11,  152(r13)
	loadli.w r12,  156(r13)
	loadli.w r14,  160(r13)
	loadli.w r18,  164(r13)
	loadli.w r20,  168(r13)
	loadli.w r21,  172(r13)
	loadli.w r22,  176(r13)
	loadli.w r23,  180(r13)
	loadli.w r24,  184(r13)
	loadli.w r25,  188(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 128(r13)
	storeli.w r3, 132(r13)
	storeli.w r5, 136(r13)
	storeli.w r8, 140(r13)
	storeli.w r9, 144(r13)
	storeli.w r10, 148(r13)
	storeli.w r11, 152(r13)
	storeli.w r12, 156(r13)
	storeli.w r14, 160(r13)
	storeli.w r18, 164(r13)
	storeli.w r20, 168(r13)
	storeli.w r21, 172(r13)
	storeli.w r22, 176(r13)
	storeli.w r23, 180(r13)
	storeli.w r24, 184(r13)
	storeli.w r25, 188(r13)
	loadli.w r2,  192(r13)
	loadli.w r3,  196(r13)
	loadli.w r5,  200(r13)
	loadli.w r8,  204(r13)
	loadli.w r9,  208(r13)
	loadli.w r10,  212(r13)
	loadli.w r11,  216(r13)
	loadli.w r12,  220(r13)
	loadli.w r14,  224(r13)
	loadli.w r18,  228(r13)
	loadli.w r20,  232(r13)
	loadli.w r21,  236(r13)
	loadli.w r22,  240(r13)
	loadli.w r23,  244(r13)
	loadli.w r24,  248(r13)
	loadli.w r25,  252(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 192(r13)
	storeli.w r3, 196(r13)
	storeli.w r5, 200(r13)
	storeli.w r8, 204(r13)
	storeli.w r9, 208(r13)
	storeli.w r10, 212(r13)
	storeli.w r11, 216(r13)
	storeli.w r12, 220(r13)
	storeli.w r14, 224(r13)
	storeli.w r18, 228(r13)
	storeli.w r20, 232(r13)
	storeli.w r21, 236(r13)
	storeli.w r22, 240(r13)
	storeli.w r23, 244(r13)
	storeli.w r24, 248(r13)
	storeli.w r25, 252(r13)
	mfence { lm }
	#NO_APP
.Ltmp31:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr2
.Ltmp32:
	.loc	1 354 15                        # preadded_full.py:354:15
	vload_mask16.mz vr4{mr1}, -256(r30)
	addli r2, r30, -3392
	.loc	1 354 19 is_stmt 0              # preadded_full.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	vstore_mask16.mz vr2{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -3456
	.loc	1 354 15                        # preadded_full.py:354:15
	vload_mask16.mz vr5{mr1}, -192(r30)
	vload_mask16.mz vr3{mr1}, -128(r30)
	vload_mask16.mz vr2{mr1}, -64(r30)
	vstore_mask16.mz vr1{mr1}, -256(r30)
	vstore_mask16.mz vr4{mr1}, 0(r2)        # 64-byte Folded Spill
	.loc	1 354 19                        # preadded_full.py:354:19
	addli r2, r30, -3264
.Ltmp33:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr4
.Ltmp34:
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -3200
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15 is_stmt 0              # preadded_full.py:354:15
	vstore_mask16.mz vr1{mr1}, -192(r30)
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -3264
.Ltmp35:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr5
.Ltmp36:
	.loc	1 354 19                        # preadded_full.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	vstore_mask16.mz vr5{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -3328
	.loc	1 354 15 is_stmt 0              # preadded_full.py:354:15
	vstore_mask16.mz vr1{mr1}, -128(r30)
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -3200
.Ltmp37:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr3
.Ltmp38:
	.loc	1 354 19                        # preadded_full.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15 is_stmt 0              # preadded_full.py:354:15
	vstore_mask16.mz vr1{mr1}, -64(r30)
	vstore_mask16.mz vr3{mr1}, 0(r2)        # 64-byte Folded Spill
	.loc	1 354 19                        # preadded_full.py:354:19
	addli r2, r30, -3136
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 354 15                        # preadded_full.py:354:15
	#APP
	mfence { lm }
	loadli.w r2,  0(r13)
	loadli.w r3,  4(r13)
	loadli.w r5,  8(r13)
	loadli.w r8,  12(r13)
	loadli.w r9,  16(r13)
	loadli.w r10,  20(r13)
	loadli.w r11,  24(r13)
	loadli.w r12,  28(r13)
	loadli.w r14,  32(r13)
	loadli.w r18,  36(r13)
	loadli.w r20,  40(r13)
	loadli.w r21,  44(r13)
	loadli.w r22,  48(r13)
	loadli.w r23,  52(r13)
	loadli.w r24,  56(r13)
	loadli.w r25,  60(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 0(r13)
	storeli.w r3, 4(r13)
	storeli.w r5, 8(r13)
	storeli.w r8, 12(r13)
	storeli.w r9, 16(r13)
	storeli.w r10, 20(r13)
	storeli.w r11, 24(r13)
	storeli.w r12, 28(r13)
	storeli.w r14, 32(r13)
	storeli.w r18, 36(r13)
	storeli.w r20, 40(r13)
	storeli.w r21, 44(r13)
	storeli.w r22, 48(r13)
	storeli.w r23, 52(r13)
	storeli.w r24, 56(r13)
	storeli.w r25, 60(r13)
	loadli.w r2,  64(r13)
	loadli.w r3,  68(r13)
	loadli.w r5,  72(r13)
	loadli.w r8,  76(r13)
	loadli.w r9,  80(r13)
	loadli.w r10,  84(r13)
	loadli.w r11,  88(r13)
	loadli.w r12,  92(r13)
	loadli.w r14,  96(r13)
	loadli.w r18,  100(r13)
	loadli.w r20,  104(r13)
	loadli.w r21,  108(r13)
	loadli.w r22,  112(r13)
	loadli.w r23,  116(r13)
	loadli.w r24,  120(r13)
	loadli.w r25,  124(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 64(r13)
	storeli.w r3, 68(r13)
	storeli.w r5, 72(r13)
	storeli.w r8, 76(r13)
	storeli.w r9, 80(r13)
	storeli.w r10, 84(r13)
	storeli.w r11, 88(r13)
	storeli.w r12, 92(r13)
	storeli.w r14, 96(r13)
	storeli.w r18, 100(r13)
	storeli.w r20, 104(r13)
	storeli.w r21, 108(r13)
	storeli.w r22, 112(r13)
	storeli.w r23, 116(r13)
	storeli.w r24, 120(r13)
	storeli.w r25, 124(r13)
	loadli.w r2,  128(r13)
	loadli.w r3,  132(r13)
	loadli.w r5,  136(r13)
	loadli.w r8,  140(r13)
	loadli.w r9,  144(r13)
	loadli.w r10,  148(r13)
	loadli.w r11,  152(r13)
	loadli.w r12,  156(r13)
	loadli.w r14,  160(r13)
	loadli.w r18,  164(r13)
	loadli.w r20,  168(r13)
	loadli.w r21,  172(r13)
	loadli.w r22,  176(r13)
	loadli.w r23,  180(r13)
	loadli.w r24,  184(r13)
	loadli.w r25,  188(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 128(r13)
	storeli.w r3, 132(r13)
	storeli.w r5, 136(r13)
	storeli.w r8, 140(r13)
	storeli.w r9, 144(r13)
	storeli.w r10, 148(r13)
	storeli.w r11, 152(r13)
	storeli.w r12, 156(r13)
	storeli.w r14, 160(r13)
	storeli.w r18, 164(r13)
	storeli.w r20, 168(r13)
	storeli.w r21, 172(r13)
	storeli.w r22, 176(r13)
	storeli.w r23, 180(r13)
	storeli.w r24, 184(r13)
	storeli.w r25, 188(r13)
	loadli.w r2,  192(r13)
	loadli.w r3,  196(r13)
	loadli.w r5,  200(r13)
	loadli.w r8,  204(r13)
	loadli.w r9,  208(r13)
	loadli.w r10,  212(r13)
	loadli.w r11,  216(r13)
	loadli.w r12,  220(r13)
	loadli.w r14,  224(r13)
	loadli.w r18,  228(r13)
	loadli.w r20,  232(r13)
	loadli.w r21,  236(r13)
	loadli.w r22,  240(r13)
	loadli.w r23,  244(r13)
	loadli.w r24,  248(r13)
	loadli.w r25,  252(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 192(r13)
	storeli.w r3, 196(r13)
	storeli.w r5, 200(r13)
	storeli.w r8, 204(r13)
	storeli.w r9, 208(r13)
	storeli.w r10, 212(r13)
	storeli.w r11, 216(r13)
	storeli.w r12, 220(r13)
	storeli.w r14, 224(r13)
	storeli.w r18, 228(r13)
	storeli.w r20, 232(r13)
	storeli.w r21, 236(r13)
	storeli.w r22, 240(r13)
	storeli.w r23, 244(r13)
	storeli.w r24, 248(r13)
	storeli.w r25, 252(r13)
	mfence { lm }
	#NO_APP
.Ltmp39:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr2
.Ltmp40:
	.loc	1 354 15                        # preadded_full.py:354:15
	vload_mask16.mz vr9{mr1}, -256(r30)
	addli r2, r30, -3136
	.loc	1 354 19 is_stmt 0              # preadded_full.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	vstore_mask16.mz vr2{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -2880
	.loc	1 354 15                        # preadded_full.py:354:15
	vload_mask16.mz vr10{mr1}, -192(r30)
	vload_mask16.mz vr3{mr1}, -128(r30)
	vload_mask16.mz vr4{mr1}, -64(r30)
	vstore_mask16.mz vr1{mr1}, -256(r30)
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -3008
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15                        # preadded_full.py:354:15
	vstore_mask16.mz vr1{mr1}, -192(r30)
.Ltmp41:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr9
.Ltmp42:
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -2944
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15 is_stmt 0              # preadded_full.py:354:15
	vstore_mask16.mz vr1{mr1}, -128(r30)
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -2816
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15                        # preadded_full.py:354:15
	vstore_mask16.mz vr1{mr1}, -64(r30)
.Ltmp43:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr10
.Ltmp44:
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 354 15 is_stmt 0              # preadded_full.py:354:15
	#APP
	mfence { lm }
	loadli.w r2,  0(r13)
	loadli.w r3,  4(r13)
	loadli.w r5,  8(r13)
	loadli.w r8,  12(r13)
	loadli.w r9,  16(r13)
	loadli.w r10,  20(r13)
	loadli.w r11,  24(r13)
	loadli.w r12,  28(r13)
	loadli.w r14,  32(r13)
	loadli.w r18,  36(r13)
	loadli.w r20,  40(r13)
	loadli.w r21,  44(r13)
	loadli.w r22,  48(r13)
	loadli.w r23,  52(r13)
	loadli.w r24,  56(r13)
	loadli.w r25,  60(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 0(r13)
	storeli.w r3, 4(r13)
	storeli.w r5, 8(r13)
	storeli.w r8, 12(r13)
	storeli.w r9, 16(r13)
	storeli.w r10, 20(r13)
	storeli.w r11, 24(r13)
	storeli.w r12, 28(r13)
	storeli.w r14, 32(r13)
	storeli.w r18, 36(r13)
	storeli.w r20, 40(r13)
	storeli.w r21, 44(r13)
	storeli.w r22, 48(r13)
	storeli.w r23, 52(r13)
	storeli.w r24, 56(r13)
	storeli.w r25, 60(r13)
	loadli.w r2,  64(r13)
	loadli.w r3,  68(r13)
	loadli.w r5,  72(r13)
	loadli.w r8,  76(r13)
	loadli.w r9,  80(r13)
	loadli.w r10,  84(r13)
	loadli.w r11,  88(r13)
	loadli.w r12,  92(r13)
	loadli.w r14,  96(r13)
	loadli.w r18,  100(r13)
	loadli.w r20,  104(r13)
	loadli.w r21,  108(r13)
	loadli.w r22,  112(r13)
	loadli.w r23,  116(r13)
	loadli.w r24,  120(r13)
	loadli.w r25,  124(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 64(r13)
	storeli.w r3, 68(r13)
	storeli.w r5, 72(r13)
	storeli.w r8, 76(r13)
	storeli.w r9, 80(r13)
	storeli.w r10, 84(r13)
	storeli.w r11, 88(r13)
	storeli.w r12, 92(r13)
	storeli.w r14, 96(r13)
	storeli.w r18, 100(r13)
	storeli.w r20, 104(r13)
	storeli.w r21, 108(r13)
	storeli.w r22, 112(r13)
	storeli.w r23, 116(r13)
	storeli.w r24, 120(r13)
	storeli.w r25, 124(r13)
	loadli.w r2,  128(r13)
	loadli.w r3,  132(r13)
	loadli.w r5,  136(r13)
	loadli.w r8,  140(r13)
	loadli.w r9,  144(r13)
	loadli.w r10,  148(r13)
	loadli.w r11,  152(r13)
	loadli.w r12,  156(r13)
	loadli.w r14,  160(r13)
	loadli.w r18,  164(r13)
	loadli.w r20,  168(r13)
	loadli.w r21,  172(r13)
	loadli.w r22,  176(r13)
	loadli.w r23,  180(r13)
	loadli.w r24,  184(r13)
	loadli.w r25,  188(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 128(r13)
	storeli.w r3, 132(r13)
	storeli.w r5, 136(r13)
	storeli.w r8, 140(r13)
	storeli.w r9, 144(r13)
	storeli.w r10, 148(r13)
	storeli.w r11, 152(r13)
	storeli.w r12, 156(r13)
	storeli.w r14, 160(r13)
	storeli.w r18, 164(r13)
	storeli.w r20, 168(r13)
	storeli.w r21, 172(r13)
	storeli.w r22, 176(r13)
	storeli.w r23, 180(r13)
	storeli.w r24, 184(r13)
	storeli.w r25, 188(r13)
	loadli.w r2,  192(r13)
	loadli.w r3,  196(r13)
	loadli.w r5,  200(r13)
	loadli.w r8,  204(r13)
	loadli.w r9,  208(r13)
	loadli.w r10,  212(r13)
	loadli.w r11,  216(r13)
	loadli.w r12,  220(r13)
	loadli.w r14,  224(r13)
	loadli.w r18,  228(r13)
	loadli.w r20,  232(r13)
	loadli.w r21,  236(r13)
	loadli.w r22,  240(r13)
	loadli.w r23,  244(r13)
	loadli.w r24,  248(r13)
	loadli.w r25,  252(r13)
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	exp.f.rn r25, r25
	storeli.w r2, 192(r13)
	storeli.w r3, 196(r13)
	storeli.w r5, 200(r13)
	storeli.w r8, 204(r13)
	storeli.w r9, 208(r13)
	storeli.w r10, 212(r13)
	storeli.w r11, 216(r13)
	storeli.w r12, 220(r13)
	storeli.w r14, 224(r13)
	storeli.w r18, 228(r13)
	storeli.w r20, 232(r13)
	storeli.w r21, 236(r13)
	storeli.w r22, 240(r13)
	storeli.w r23, 244(r13)
	storeli.w r24, 248(r13)
	storeli.w r25, 252(r13)
	mfence { lm }
	#NO_APP
	.loc	1 354 19                        # preadded_full.py:354:19
	#APP
	vadd.f.mz.rn vr2{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15                        # preadded_full.py:354:15
	vload_mask16.mz vr6{mr1}, -256(r30)
	addli r2, r30, -2816
	vstore_mask16.mz vr4{mr1}, 0(r2)        # 64-byte Folded Spill
	.loc	1 354 19                        # preadded_full.py:354:19
	addli r2, r30, -2688
.Ltmp45:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr3
.Ltmp46:
	.loc	1 354 15                        # preadded_full.py:354:15
	vload_mask16.mz vr11{mr1}, -192(r30)
	vload_mask16.mz vr1{mr1}, -128(r30)
.Ltmp47:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr4{mr1}, vr0, vr4
.Ltmp48:
	.loc	1 354 15                        # preadded_full.py:354:15
	vload_mask16.mz vr0{mr1}, -64(r30)
	vstore_mask16.mz vr2{mr1}, -256(r30)
.Ltmp49:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr2{mr1}, vr4, vr6
.Ltmp50:
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr4{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -2560
	#APP
	vadd.f.mz.rn vr4{mr1}, r1, vr4
	#NO_APP
	.loc	1 354 15 is_stmt 0              # preadded_full.py:354:15
	vstore_mask16.mz vr4{mr1}, -192(r30)
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr4{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -2496
	#APP
	vadd.f.mz.rn vr4{mr1}, r1, vr4
	#NO_APP
	.loc	1 354 15                        # preadded_full.py:354:15
	vstore_mask16.mz vr4{mr1}, -128(r30)
.Ltmp51:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr2{mr1}, vr2, vr11
.Ltmp52:
	.loc	1 354 19                        # preadded_full.py:354:19
	vload_mask16.mz vr4{mr1}, 0(r2)         # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr4{mr1}, r1, vr4
	#NO_APP
	.loc	1 354 15 is_stmt 0              # preadded_full.py:354:15
	vstore_mask16.mz vr4{mr1}, -64(r30)
	#APP
	mfence { lm }
	loadli.w r1,  0(r13)
	loadli.w r2,  4(r13)
	loadli.w r3,  8(r13)
	loadli.w r5,  12(r13)
	loadli.w r8,  16(r13)
	loadli.w r9,  20(r13)
	loadli.w r10,  24(r13)
	loadli.w r11,  28(r13)
	loadli.w r12,  32(r13)
	loadli.w r14,  36(r13)
	loadli.w r18,  40(r13)
	loadli.w r20,  44(r13)
	loadli.w r21,  48(r13)
	loadli.w r22,  52(r13)
	loadli.w r23,  56(r13)
	loadli.w r24,  60(r13)
	exp.f.rn r1, r1
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	storeli.w r1, 0(r13)
	storeli.w r2, 4(r13)
	storeli.w r3, 8(r13)
	storeli.w r5, 12(r13)
	storeli.w r8, 16(r13)
	storeli.w r9, 20(r13)
	storeli.w r10, 24(r13)
	storeli.w r11, 28(r13)
	storeli.w r12, 32(r13)
	storeli.w r14, 36(r13)
	storeli.w r18, 40(r13)
	storeli.w r20, 44(r13)
	storeli.w r21, 48(r13)
	storeli.w r22, 52(r13)
	storeli.w r23, 56(r13)
	storeli.w r24, 60(r13)
	loadli.w r1,  64(r13)
	loadli.w r2,  68(r13)
	loadli.w r3,  72(r13)
	loadli.w r5,  76(r13)
	loadli.w r8,  80(r13)
	loadli.w r9,  84(r13)
	loadli.w r10,  88(r13)
	loadli.w r11,  92(r13)
	loadli.w r12,  96(r13)
	loadli.w r14,  100(r13)
	loadli.w r18,  104(r13)
	loadli.w r20,  108(r13)
	loadli.w r21,  112(r13)
	loadli.w r22,  116(r13)
	loadli.w r23,  120(r13)
	loadli.w r24,  124(r13)
	exp.f.rn r1, r1
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	storeli.w r1, 64(r13)
	storeli.w r2, 68(r13)
	storeli.w r3, 72(r13)
	storeli.w r5, 76(r13)
	storeli.w r8, 80(r13)
	storeli.w r9, 84(r13)
	storeli.w r10, 88(r13)
	storeli.w r11, 92(r13)
	storeli.w r12, 96(r13)
	storeli.w r14, 100(r13)
	storeli.w r18, 104(r13)
	storeli.w r20, 108(r13)
	storeli.w r21, 112(r13)
	storeli.w r22, 116(r13)
	storeli.w r23, 120(r13)
	storeli.w r24, 124(r13)
	loadli.w r1,  128(r13)
	loadli.w r2,  132(r13)
	loadli.w r3,  136(r13)
	loadli.w r5,  140(r13)
	loadli.w r8,  144(r13)
	loadli.w r9,  148(r13)
	loadli.w r10,  152(r13)
	loadli.w r11,  156(r13)
	loadli.w r12,  160(r13)
	loadli.w r14,  164(r13)
	loadli.w r18,  168(r13)
	loadli.w r20,  172(r13)
	loadli.w r21,  176(r13)
	loadli.w r22,  180(r13)
	loadli.w r23,  184(r13)
	loadli.w r24,  188(r13)
	exp.f.rn r1, r1
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	storeli.w r1, 128(r13)
	storeli.w r2, 132(r13)
	storeli.w r3, 136(r13)
	storeli.w r5, 140(r13)
	storeli.w r8, 144(r13)
	storeli.w r9, 148(r13)
	storeli.w r10, 152(r13)
	storeli.w r11, 156(r13)
	storeli.w r12, 160(r13)
	storeli.w r14, 164(r13)
	storeli.w r18, 168(r13)
	storeli.w r20, 172(r13)
	storeli.w r21, 176(r13)
	storeli.w r22, 180(r13)
	storeli.w r23, 184(r13)
	storeli.w r24, 188(r13)
	loadli.w r1,  192(r13)
	loadli.w r2,  196(r13)
	loadli.w r3,  200(r13)
	loadli.w r5,  204(r13)
	loadli.w r8,  208(r13)
	loadli.w r9,  212(r13)
	loadli.w r10,  216(r13)
	loadli.w r11,  220(r13)
	loadli.w r12,  224(r13)
	loadli.w r14,  228(r13)
	loadli.w r18,  232(r13)
	loadli.w r20,  236(r13)
	loadli.w r21,  240(r13)
	loadli.w r22,  244(r13)
	loadli.w r23,  248(r13)
	loadli.w r24,  252(r13)
	exp.f.rn r1, r1
	exp.f.rn r2, r2
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r8, r8
	exp.f.rn r9, r9
	exp.f.rn r10, r10
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r14, r14
	exp.f.rn r18, r18
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r24, r24
	storeli.w r1, 192(r13)
	storeli.w r2, 196(r13)
	storeli.w r3, 200(r13)
	storeli.w r5, 204(r13)
	storeli.w r8, 208(r13)
	storeli.w r9, 212(r13)
	storeli.w r10, 216(r13)
	storeli.w r11, 220(r13)
	storeli.w r12, 224(r13)
	storeli.w r14, 228(r13)
	storeli.w r18, 232(r13)
	storeli.w r20, 236(r13)
	storeli.w r21, 240(r13)
	storeli.w r22, 244(r13)
	storeli.w r23, 248(r13)
	storeli.w r24, 252(r13)
	mfence { lm }
	#NO_APP
	vload_mask16.mz vr4{mr1}, -256(r30)
	vload_mask16.mz vr5{mr1}, -192(r30)
	vload_mask16.mz vr7{mr1}, -128(r30)
	vload_mask16.mz vr8{mr1}, -64(r30)
.Ltmp53:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr2{mr1}, vr2, vr1
	vadd.f.mz.rn vr2{mr1}, vr2, vr0
	vadd.f.mz.rn vr2{mr1}, vr2, vr4
	vadd.f.mz.rn vr2{mr1}, vr2, vr5
	vadd.f.mz.rn vr2{mr1}, vr2, vr7
	vadd.f.mz.rn vr2{mr1}, vr2, vr8
	vextracti.f r1, 0(vr2)
	vextracti.f r2, 1(vr2)
	add.f.rn r1, r1, r2
	vextracti.f r2, 2(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 3(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 4(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 5(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 6(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 7(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 8(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 9(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 10(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 11(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 12(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 13(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 14(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 15(vr2)
	add.f.rn r1, r2, r1
	loadli.w r2,  -4100(r30)                # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r19, zero, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	loads.w r1, 0(r27)
	loads.w r2, 4(r27)
	loads.w r3, 8(r27)
	add.f.rn r1, r1, r2
	loads.w r2, 12(r27)
	add.f.rn r1, r1, r3
	add.f.rn r1, r1, r2
	stores.w r1, 0(r27)
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r1, 0(r27)
.Ltmp54:
	.loc	1 356 25                        # preadded_full.py:356:25
	lui r2, 260096
	addli r10, zero, 2
	div.f.rn r1, r2, r1
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -3968
	#APP
	vmul.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16 is_stmt 0              # preadded_full.py:357:16
	addli r2, r30, -2304
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -3072
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_full.py:357:16
	addli r2, r30, -2240
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -2752
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_full.py:357:16
	addli r2, r30, -2176
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -2624
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_full.py:357:16
	addli r2, r30, -2112
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -4032
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_full.py:357:16
	addli r2, r30, -2048
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -4096
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_full.py:357:16
	addli r2, r30, -1984
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -2432
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_full.py:357:16
	addli r2, r30, -1920
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -2368
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_full.py:357:16
	addli r2, r30, -1856
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -3904
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_full.py:357:16
	addli r2, r30, -1792
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -3840
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_full.py:357:16
	addli r2, r30, -1728
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -3712
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_full.py:357:16
	addli r2, r30, -1664
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -3648
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_full.py:357:16
	addli r2, r30, -1600
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -3776
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_full.py:357:16
	addli r2, r30, -1536
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -3584
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_full.py:357:16
	addli r2, r30, -1472
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -3520
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_full.py:357:16
	addli r2, r30, -1408
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -3392
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_full.py:357:16
	addli r2, r30, -1344
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -3456
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_full.py:357:16
	addli r2, r30, -1280
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -3264
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_full.py:357:16
	addli r2, r30, -1216
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -3200
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_full.py:357:16
	addli r2, r30, -1152
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -3136
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # preadded_full.py:357:16
	addli r2, r30, -1088
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr9
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, -1024(r30)
	.loc	1 357 21                        # preadded_full.py:357:21
	addli r2, r30, -2816
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr10
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, -960(r30)
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr3
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, -896(r30)
	.loc	1 357 21                        # preadded_full.py:357:21
	vload_mask16.mz vr2{mr1}, 0(r2)         # 64-byte Folded Reload
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, -832(r30)
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr6
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, -768(r30)
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr2{mr1}, r1, vr11
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr2{mr1}, -704(r30)
	vstore_mask16.mz vr1{mr1}, -640(r30)
	vstore_mask16.mz vr0{mr1}, -576(r30)
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr0{mr1}, r1, vr4
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr0{mr1}, -512(r30)
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr0{mr1}, r1, vr5
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr0{mr1}, -448(r30)
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr0{mr1}, r1, vr7
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr0{mr1}, -384(r30)
	.loc	1 357 21                        # preadded_full.py:357:21
	#APP
	vmul.f.mz.rn vr0{mr1}, r1, vr8
	#NO_APP
	.loc	1 357 16                        # preadded_full.py:357:16
	vstore_mask16.mz vr0{mr1}, -320(r30)
	addli r1, r28, 0
	.loc	1 335 0 is_stmt 1               # preadded_full.py:335:0
	mfence { lm }
	loadli.w r2,  64(r30)
	blt.s r15, r2, .LBB0_2
# %bb.10:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0 is_stmt 0                 # preadded_full.py:0:0
	addli r1, zero, 0
	j .LBB0_2
.LBB0_11:                               # %._crit_edge
	.loc	1 358 4 epilogue_begin is_stmt 1 # preadded_full.py:358:4
	addli sp, r30, -4160
	addli sp, sp, 4160
	mfence { lm, sm, gm }
	exit
.Ltmp55:
.Lfunc_end0:
	.size	_tle_row_softmax_preadded_full, .Lfunc_end0-_tle_row_softmax_preadded_full
	.cfi_endproc
                                        # -- End function
	.type	global_smem,@object             # @global_smem
	.section	".sm.LLVMDialectModule;global_smem","a",@nobits
	.p2align	3, 0x0
global_smem:
	.size	global_smem, 0

	.type	XPU_KERNEL_PARAM_SIZE__tle_row_softmax_preadded_full,@object # @XPU_KERNEL_PARAM_SIZE__tle_row_softmax_preadded_full
	.section	.XPU.KERNEL_PARAM_SIZE._tle_row_softmax_preadded_full,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE__tle_row_softmax_preadded_full
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE__tle_row_softmax_preadded_full:
	.long	104                             # 0x68
	.size	XPU_KERNEL_PARAM_SIZE__tle_row_softmax_preadded_full, 4

	.type	XPU_KERNEL_STACK_SIZE__tle_row_softmax_preadded_full,@object # @XPU_KERNEL_STACK_SIZE__tle_row_softmax_preadded_full
	.section	.XPU.KERNEL_STACK_SIZE._tle_row_softmax_preadded_full,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE__tle_row_softmax_preadded_full
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE__tle_row_softmax_preadded_full:
	.long	4288                            # 0x10c0
	.size	XPU_KERNEL_STACK_SIZE__tle_row_softmax_preadded_full, 4

	.type	XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_preadded_full,@object # @XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_preadded_full
	.section	.XPU.KERNEL_DYNAMIC_LM._tle_row_softmax_preadded_full,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_preadded_full
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_preadded_full:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_preadded_full, 4

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
	.byte	1                               # Abbrev [1] 0xb:0x3d DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x2c:0x1b DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0xd DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.short	355                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.Lfunc_begin0-.Lfunc_begin0
	.long	.Ltmp0-.Lfunc_begin0
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
	.long	.Ltmp13-.Lfunc_begin0
	.long	.Ltmp14-.Lfunc_begin0
	.long	.Ltmp15-.Lfunc_begin0
	.long	.Ltmp16-.Lfunc_begin0
	.long	.Ltmp17-.Lfunc_begin0
	.long	.Ltmp18-.Lfunc_begin0
	.long	.Ltmp19-.Lfunc_begin0
	.long	.Ltmp20-.Lfunc_begin0
	.long	.Ltmp21-.Lfunc_begin0
	.long	.Ltmp22-.Lfunc_begin0
	.long	.Ltmp23-.Lfunc_begin0
	.long	.Ltmp24-.Lfunc_begin0
	.long	.Ltmp25-.Lfunc_begin0
	.long	.Ltmp26-.Lfunc_begin0
	.long	.Ltmp27-.Lfunc_begin0
	.long	.Ltmp28-.Lfunc_begin0
	.long	.Ltmp29-.Lfunc_begin0
	.long	.Ltmp30-.Lfunc_begin0
	.long	.Ltmp31-.Lfunc_begin0
	.long	.Ltmp32-.Lfunc_begin0
	.long	.Ltmp33-.Lfunc_begin0
	.long	.Ltmp34-.Lfunc_begin0
	.long	.Ltmp35-.Lfunc_begin0
	.long	.Ltmp36-.Lfunc_begin0
	.long	.Ltmp37-.Lfunc_begin0
	.long	.Ltmp38-.Lfunc_begin0
	.long	.Ltmp39-.Lfunc_begin0
	.long	.Ltmp40-.Lfunc_begin0
	.long	.Ltmp41-.Lfunc_begin0
	.long	.Ltmp42-.Lfunc_begin0
	.long	.Ltmp43-.Lfunc_begin0
	.long	.Ltmp44-.Lfunc_begin0
	.long	.Ltmp45-.Lfunc_begin0
	.long	.Ltmp46-.Lfunc_begin0
	.long	.Ltmp47-.Lfunc_begin0
	.long	.Ltmp48-.Lfunc_begin0
	.long	.Ltmp49-.Lfunc_begin0
	.long	.Ltmp50-.Lfunc_begin0
	.long	.Ltmp51-.Lfunc_begin0
	.long	.Ltmp52-.Lfunc_begin0
	.long	.Ltmp53-.Lfunc_begin0
	.long	.Ltmp54-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"preadded_full.py"              # string offset=7
.Linfo_string2:
.asciz	"/tmp"                          # string offset=24
.Linfo_string3:
.asciz	"_tle_row_softmax_preadded_full" # string offset=29
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
