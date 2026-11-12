	.text
	.file	"LLVMDialectModule"
	.section	.text._tle_row_softmax_fused_copy,"ax",@progbits
	.globl	_tle_row_softmax_fused_copy     # -- Begin function _tle_row_softmax_fused_copy
	.type	_tle_row_softmax_fused_copy,@function
_tle_row_softmax_fused_copy:            # @_tle_row_softmax_fused_copy
.Lfunc_begin0:
	.file	1 "/tmp" "fused_copy.py"
	.loc	1 335 0                         # fused_copy.py:335:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -5696
	addli r30, sp, 5568
	loadli.w r14,  96(r30)
	loadli.w r3,  92(r30)
	loadli.w r1,  100(r30)
	mul.s r4, r14, r3
	load_param_i r3, 0
	mul.s r4, r4, r1
	ble.s r4, r3, .LBB0_7
# %bb.1:                                # %.lr.ph
	core_id r16
	load.d r[8:9], 48(r30)
	loadli.w r7,  68(r30)
	loadli.w r10,  40(r30)
	load.d r[17:18], 32(r30)
	loadli.w r11,  12(r30)
	addli r28, zero, 512
	load.d r[5:6], 80(r30)
	load.d r[23:24], 24(r30)
	load_param_i r15, 1
	slli r19, r16, 9
	andi r25, r19, 1536
	srli r19, r16, 2
	addli r16, zero, 2
	zext_int2long r[26:27], r25
	sub.s r10, r10, r25
	sub.s r7, r7, r25
	andi r19, r19, 15
	mul.sl r[8:9], r[8:9], r[26:27]
	max.s r10, r10, zero
	max.s r7, r7, zero
	mul.sl r[23:24], r[23:24], r[26:27]
	mul.sl r[26:27], r[5:6], r[26:27]
	zext_int2long r[21:22], r19
	addli r5, r30, -4096
	addli r6, r30, -2048
	sll.d r[8:9], r[8:9], r16
	min.s r10, r10, r28
	min.s r7, r7, r28
	add.ul r[17:18], r[17:18], r[8:9]
	sub.s r8, r11, r25
	slli r20, r10, 2
	max.s r8, r8, zero
	min.s r8, r8, r28
	slli r28, r7, 2
	slli r10, r8, 2
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp0:
	.loc	1 335 0 prologue_end            # fused_copy.py:335:0
	load.d r[12:13], 72(r30)
	add.s r3, r3, r15
	mul.sl r[7:8], r[8:9], r[12:13]
	load.d r[12:13], 56(r30)
	lui r9, 983040
	add.ul r[7:8], r[7:8], r[26:27]
	or r9, r11, r9
	sll.d r[7:8], r[7:8], r16
	add.ul r[7:8], r[12:13], r[7:8]
	s_lm2gm r9, r6, 0(r[7:8])
	mfence { lm }
	blt.s r3, r4, .LBB0_3
	j .LBB0_7
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 # fused_copy.py:0:0
	loadli.w r1,  100(r30)
	.loc	1 335 0                         # fused_copy.py:335:0
	lui r8, 983040
	addli r25, r10, 0
	or r9, r20, r8
	div.s r7, r3, r1
	l_gm2lm r9, r5, 0(r[17:18])
	mfence { lm }
	loadli.w r9,  8(r30)
	div.s r7, r7, r14
	.loc	1 342 20 is_stmt 1              # fused_copy.py:342:20
	slli r8, r7, 4
	.loc	1 335 0                         # fused_copy.py:335:0
	or r7, r19, r8
	blt.s r7, r9, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0 is_stmt 0                 # fused_copy.py:0:0
	addli r25, zero, 0
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 335 0                         # fused_copy.py:335:0
	sext_int2long r[8:9], r8
	load.d r[11:12], 16(r30)
	load.d r[1:2], 0(r30)
	lui r13, 983040
	or.d r[8:9], r[21:22], r[8:9]
	or r13, r25, r13
	mul.sl r[11:12], r[8:9], r[11:12]
	add.ul r[11:12], r[11:12], r[23:24]
	sll.d r[11:12], r[11:12], r16
	add.ul r[11:12], r[1:2], r[11:12]
	.loc	1 352 17 is_stmt 1              # fused_copy.py:352:17
	addli r1, r30, -2048
	.loc	1 335 0                         # fused_copy.py:335:0
	l_gm2lm r13, r6, 0(r[11:12])
	addli r11, r28, 0
	mfence { lm }
	.loc	1 352 17                        # fused_copy.py:352:17
	vload_mask16.mz vr0{mr1}, 0(r1)
	addli r1, r30, -1984
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -1920
	vload_mask16.mz vr2{mr1}, 0(r1)
	addli r1, r30, -1856
	vload_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -1792
	vload_mask16.mz vr4{mr1}, 0(r1)
	addli r1, r30, -1728
	vload_mask16.mz vr5{mr1}, 0(r1)
	.loc	1 352 22 is_stmt 0              # fused_copy.py:352:22
	addli r1, r30, -4096
	vload_mask16.mz vr10{mr1}, 0(r1)
	.loc	1 352 17                        # fused_copy.py:352:17
	addli r1, r30, -1664
	vload_mask16.mz vr9{mr1}, 0(r1)
	addli r1, r30, -1600
	vload_mask16.mz vr8{mr1}, 0(r1)
	addli r1, r30, -1536
	vload_mask16.mz vr6{mr1}, 0(r1)
	addli r1, r30, -1472
	.loc	1 352 22                        # fused_copy.py:352:22
	vadd.f.mz.rn vr0{mr1}, vr0, vr10
	.loc	1 352 17                        # fused_copy.py:352:17
	vload_mask16.mz vr7{mr1}, 0(r1)
	.loc	1 352 22                        # fused_copy.py:352:22
	addli r1, r30, -4032
	vload_mask16.mz vr11{mr1}, 0(r1)
	addli r1, r30, -4160
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3968
	vload_mask16.mz vr0{mr1}, 0(r1)
	addli r1, r30, -4224
	vadd.f.mz.rn vr1{mr1}, vr1, vr11
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3904
	vadd.f.mz.rn vr0{mr1}, vr2, vr0
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -4288
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3840
	vload_mask16.mz vr0{mr1}, 0(r1)
	addli r1, r30, -4352
	vadd.f.mz.rn vr1{mr1}, vr3, vr1
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3776
	vadd.f.mz.rn vr0{mr1}, vr4, vr0
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -4416
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3712
	vload_mask16.mz vr0{mr1}, 0(r1)
	addli r1, r30, -4480
	vadd.f.mz.rn vr1{mr1}, vr5, vr1
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3648
	vadd.f.mz.rn vr0{mr1}, vr9, vr0
	vload_mask16.mz vr1{mr1}, 0(r1)
	.loc	1 352 17                        # fused_copy.py:352:17
	addli r1, r30, -4544
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -1408
	vload_mask16.mz vr0{mr1}, 0(r1)
	.loc	1 352 22                        # fused_copy.py:352:22
	addli r1, r30, -4608
	vadd.f.mz.rn vr1{mr1}, vr8, vr1
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3584
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -3520
	vload_mask16.mz vr2{mr1}, 0(r1)
	addli r1, r30, -3456
	vload_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -4672
	vadd.f.mz.rn vr1{mr1}, vr6, vr1
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr1{mr1}, vr7, vr2
	addli r1, r30, -4736
	vadd.f.mz.rn vr0{mr1}, vr0, vr3
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	.loc	1 352 17                        # fused_copy.py:352:17
	addli r1, r30, -4800
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -1344
	vload_mask16.mz vr0{mr1}, 0(r1)
	addli r1, r30, -1280
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -1216
	vload_mask16.mz vr2{mr1}, 0(r1)
	.loc	1 352 22                        # fused_copy.py:352:22
	addli r1, r30, -3392
	vload_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -3328
	vload_mask16.mz vr4{mr1}, 0(r1)
	addli r1, r30, -3264
	vload_mask16.mz vr5{mr1}, 0(r1)
	addli r1, r30, -4864
	vadd.f.mz.rn vr0{mr1}, vr0, vr3
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr1, vr4
	addli r1, r30, -4928
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr2, vr5
	.loc	1 352 17                        # fused_copy.py:352:17
	addli r1, r30, -4992
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -1152
	vload_mask16.mz vr0{mr1}, 0(r1)
	addli r1, r30, -1088
	vload_mask16.mz vr1{mr1}, 0(r1)
	.loc	1 352 22                        # fused_copy.py:352:22
	addli r1, r30, -3200
	.loc	1 352 17                        # fused_copy.py:352:17
	vload_mask16.mz vr2{mr1}, -1024(r30)
	.loc	1 352 22                        # fused_copy.py:352:22
	vload_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -3136
	vload_mask16.mz vr4{mr1}, 0(r1)
	addli r1, r30, -3072
	vload_mask16.mz vr5{mr1}, 0(r1)
	addli r1, r30, -5056
	vadd.f.mz.rn vr0{mr1}, vr0, vr3
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr1, vr4
	addli r1, r30, -5120
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr2, vr5
	.loc	1 352 17                        # fused_copy.py:352:17
	addli r1, r30, -5184
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	.loc	1 352 22                        # fused_copy.py:352:22
	addli r1, r30, -3008
	.loc	1 352 17                        # fused_copy.py:352:17
	vload_mask16.mz vr0{mr1}, -960(r30)
	vload_mask16.mz vr1{mr1}, -896(r30)
	vload_mask16.mz vr2{mr1}, -832(r30)
	.loc	1 352 22                        # fused_copy.py:352:22
	vload_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -2944
	vload_mask16.mz vr4{mr1}, 0(r1)
	addli r1, r30, -2880
	vload_mask16.mz vr5{mr1}, 0(r1)
	addli r1, r30, -5248
	vadd.f.mz.rn vr0{mr1}, vr0, vr3
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr1, vr4
	addli r1, r30, -5312
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr2, vr5
	.loc	1 352 17                        # fused_copy.py:352:17
	addli r1, r30, -5376
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	.loc	1 352 22                        # fused_copy.py:352:22
	addli r1, r30, -2816
	.loc	1 352 17                        # fused_copy.py:352:17
	vload_mask16.mz vr0{mr1}, -768(r30)
	vload_mask16.mz vr1{mr1}, -704(r30)
	vload_mask16.mz vr2{mr1}, -640(r30)
	.loc	1 352 22                        # fused_copy.py:352:22
	vload_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -2752
	vload_mask16.mz vr4{mr1}, 0(r1)
	addli r1, r30, -2688
	vload_mask16.mz vr5{mr1}, 0(r1)
	addli r1, r30, -5440
	vadd.f.mz.rn vr0{mr1}, vr0, vr3
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr1, vr4
	addli r1, r30, -5504
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr2, vr5
	.loc	1 352 17                        # fused_copy.py:352:17
	addli r1, r30, -5568
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	.loc	1 352 22                        # fused_copy.py:352:22
	addli r1, r30, -2624
	.loc	1 352 17                        # fused_copy.py:352:17
	vload_mask16.mz vr0{mr1}, -576(r30)
	vload_mask16.mz vr1{mr1}, -512(r30)
	vload_mask16.mz vr2{mr1}, -448(r30)
	.loc	1 352 22                        # fused_copy.py:352:22
	vload_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -2560
	vload_mask16.mz vr4{mr1}, 0(r1)
	addli r1, r30, -2496
	vload_mask16.mz vr5{mr1}, 0(r1)
	addli r1, r30, -2432
	vadd.f.mz.rn vr9{mr1}, vr0, vr3
	.loc	1 352 17                        # fused_copy.py:352:17
	vload_mask16.mz vr0{mr1}, -384(r30)
	.loc	1 352 22                        # fused_copy.py:352:22
	vadd.f.mz.rn vr10{mr1}, vr1, vr4
	.loc	1 352 17                        # fused_copy.py:352:17
	vload_mask16.mz vr1{mr1}, -320(r30)
	.loc	1 352 22                        # fused_copy.py:352:22
	vadd.f.mz.rn vr11{mr1}, vr2, vr5
	.loc	1 352 17                        # fused_copy.py:352:17
	vload_mask16.mz vr2{mr1}, -256(r30)
	.loc	1 352 22                        # fused_copy.py:352:22
	vload_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -2368
	vload_mask16.mz vr4{mr1}, 0(r1)
	addli r1, r30, -2304
	vload_mask16.mz vr5{mr1}, 0(r1)
	addli r1, r30, -2240
	vadd.f.mz.rn vr6{mr1}, vr0, vr3
	.loc	1 352 17                        # fused_copy.py:352:17
	vload_mask16.mz vr3{mr1}, -192(r30)
	.loc	1 352 22                        # fused_copy.py:352:22
	vadd.f.mz.rn vr7{mr1}, vr1, vr4
	.loc	1 352 17                        # fused_copy.py:352:17
	vload_mask16.mz vr4{mr1}, -128(r30)
	.loc	1 352 22                        # fused_copy.py:352:22
	vadd.f.mz.rn vr8{mr1}, vr2, vr5
	.loc	1 352 17                        # fused_copy.py:352:17
	vload_mask16.mz vr5{mr1}, -64(r30)
	.loc	1 352 22                        # fused_copy.py:352:22
	vload_mask16.mz vr0{mr1}, 0(r1)
	addli r1, r30, -2176
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -2112
	vload_mask16.mz vr2{mr1}, 0(r1)
	.loc	1 357 16 is_stmt 1              # fused_copy.py:357:16
	addli r1, r30, -4160
	.loc	1 352 22                        # fused_copy.py:352:22
	vadd.f.mz.rn vr0{mr1}, vr3, vr0
	.loc	1 357 16                        # fused_copy.py:357:16
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -2048
	.loc	1 352 22                        # fused_copy.py:352:22
	vadd.f.mz.rn vr1{mr1}, vr4, vr1
	vadd.f.mz.rn vr2{mr1}, vr5, vr2
	.loc	1 357 16                        # fused_copy.py:357:16
	vstore_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -4224
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1984
	vstore_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -4288
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1920
	vstore_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -4352
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1856
	vstore_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -4416
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1792
	vstore_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -4480
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1728
	vstore_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -4544
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1664
	vstore_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -4608
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1600
	vstore_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -4672
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1536
	vstore_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -4736
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1472
	vstore_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -4800
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1408
	vstore_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -4864
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1344
	vstore_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -4928
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1280
	vstore_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -4992
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1216
	vstore_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -5056
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1152
	vstore_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -5120
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -1088
	vstore_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -5184
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -5248
	vstore_mask16.mz vr3{mr1}, -1024(r30)
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -5312
	vstore_mask16.mz vr3{mr1}, -960(r30)
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -5376
	vstore_mask16.mz vr3{mr1}, -896(r30)
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -5440
	vstore_mask16.mz vr3{mr1}, -832(r30)
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -5504
	vstore_mask16.mz vr3{mr1}, -768(r30)
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -5568
	vstore_mask16.mz vr3{mr1}, -704(r30)
	vload_mask16.mz vr3{mr1}, 0(r1)         # 64-byte Folded Reload
	vstore_mask16.mz vr3{mr1}, -640(r30)
	vstore_mask16.mz vr9{mr1}, -576(r30)
	vstore_mask16.mz vr10{mr1}, -512(r30)
	vstore_mask16.mz vr11{mr1}, -448(r30)
	vstore_mask16.mz vr6{mr1}, -384(r30)
	vstore_mask16.mz vr7{mr1}, -320(r30)
	vstore_mask16.mz vr8{mr1}, -256(r30)
	vstore_mask16.mz vr0{mr1}, -192(r30)
	vstore_mask16.mz vr1{mr1}, -128(r30)
	vstore_mask16.mz vr2{mr1}, -64(r30)
	.loc	1 335 0                         # fused_copy.py:335:0
	mfence { lm }
	loadli.w r1,  64(r30)
	blt.s r7, r1, .LBB0_2
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0 is_stmt 0                 # fused_copy.py:0:0
	addli r11, zero, 0
	j .LBB0_2
.LBB0_7:                                # %._crit_edge
	.loc	1 358 4 epilogue_begin is_stmt 1 # fused_copy.py:358:4
	addli sp, r30, -5568
	addli sp, sp, 5568
	mfence { lm, sm, gm }
	exit
.Ltmp1:
.Lfunc_end0:
	.size	_tle_row_softmax_fused_copy, .Lfunc_end0-_tle_row_softmax_fused_copy
	.cfi_endproc
                                        # -- End function
	.type	XPU_KERNEL_PARAM_SIZE__tle_row_softmax_fused_copy,@object # @XPU_KERNEL_PARAM_SIZE__tle_row_softmax_fused_copy
	.section	.XPU.KERNEL_PARAM_SIZE._tle_row_softmax_fused_copy,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE__tle_row_softmax_fused_copy
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE__tle_row_softmax_fused_copy:
	.long	104                             # 0x68
	.size	XPU_KERNEL_PARAM_SIZE__tle_row_softmax_fused_copy, 4

	.type	XPU_KERNEL_STACK_SIZE__tle_row_softmax_fused_copy,@object # @XPU_KERNEL_STACK_SIZE__tle_row_softmax_fused_copy
	.section	.XPU.KERNEL_STACK_SIZE._tle_row_softmax_fused_copy,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE__tle_row_softmax_fused_copy
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE__tle_row_softmax_fused_copy:
	.long	5696                            # 0x1640
	.size	XPU_KERNEL_STACK_SIZE__tle_row_softmax_fused_copy, 4

	.type	XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_fused_copy,@object # @XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_fused_copy
	.section	.XPU.KERNEL_DYNAMIC_LM._tle_row_softmax_fused_copy,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_fused_copy
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_fused_copy:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_fused_copy, 4

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
.asciz	"fused_copy.py"                 # string offset=7
.Linfo_string2:
.asciz	"/tmp"                          # string offset=21
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
