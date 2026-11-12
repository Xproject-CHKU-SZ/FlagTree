	.text
	.file	"LLVMDialectModule"
	.section	.text._tle_row_softmax,"ax",@progbits
	.globl	_tle_row_softmax                # -- Begin function _tle_row_softmax
	.type	_tle_row_softmax,@function
_tle_row_softmax:                       # @_tle_row_softmax
.Lfunc_begin0:
	.file	1 "/opt/hsp/triton/experimental/graph_fusion" "_p800_reduce.py"
	.loc	1 335 0                         # _p800_reduce.py:335:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -6272
	lui r2, :hi20:global_smem
	.file	2 "/opt/hsp/triton/language" "standard.py"
	.loc	2 296 36 prologue_end           # standard.py:296:36
	core_id r8
	addli r30, sp, 6144
	lui r1, 8
	lui r4, 15
	lui r10, 4
	slli r9, r8, 2
	addli r2, r2, :lo12:global_smem
	ori r1, r1, 16
	loadli.w r7,  96(r30)
	loadli.w r6,  92(r30)
	loadli.w r11,  100(r30)
	ori r4, r4, 4095
	add.s r5, r2, r9
	mul.s r7, r7, r6
	load_param_i r6, 0
	add.s r3, r5, r1
.Ltmp0:
	.loc	1 353 24                        # _p800_reduce.py:353:24
	add.s r5, r5, r10
	mul.s r7, r7, r11
.Ltmp1:
	.loc	2 296 36                        # standard.py:296:36
	stores.w zero, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
.Ltmp2:
	.loc	1 353 24                        # _p800_reduce.py:353:24
	stores.w zero, 0(r5)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	ble.s r7, r6, .LBB0_11
# %bb.1:                                # %.lr.ph
	.loc	1 0 24 is_stmt 0                # _p800_reduce.py:0:24
	andi r13, r8, 3
	load.d r[15:16], 48(r30)
	addli r23, zero, 2
	load.d r[18:19], 32(r30)
	loadli.w r17,  40(r30)
	loadli.w r24,  12(r30)
	srli r8, r8, 2
	loadli.w r14,  68(r30)
	load.d r[20:21], 24(r30)
	load.d r[11:12], 80(r30)
	slli r22, r13, 9
	zext_int2long r[25:26], r22
	sub.s r17, r17, r22
	sub.s r14, r14, r22
	mul.sl r[15:16], r[15:16], r[25:26]
	max.s r14, r14, zero
	mul.sl r[11:12], r[11:12], r[25:26]
	sll.d r[15:16], r[15:16], r23
	add.ul r[15:16], r[18:19], r[15:16]
	addli r18, r30, -6088
	store.d r[15:16], 0(r18)                # 8-byte Folded Spill
	lui r15, 1048575
	max.s r16, r17, zero
	addli r17, zero, 512
	ori r15, r15, 4080
	and r9, r9, r15
	load_param_i r15, 1
	storeli.w r15, -6092(r30)               # 4-byte Folded Spill
	min.s r15, r16, r17
	add.s r2, r2, r9
	addli r9, r30, -6104
	slli r15, r15, 2
	storeli.w r15, -6096(r30)               # 4-byte Folded Spill
	sub.s r15, r24, r22
	andi r24, r8, 15
	max.s r8, r15, zero
	zext_int2long r[15:16], r24
	store.d r[15:16], 0(r9)                 # 8-byte Folded Spill
	mul.sl r[15:16], r[20:21], r[25:26]
	addli r9, r30, -6112
	min.s r8, r8, r17
	store.d r[15:16], 0(r9)                 # 8-byte Folded Spill
	add.s r9, r2, r10
	add.s r10, r2, r1
	min.s r1, r14, r17
	slli r8, r8, 2
	addli r2, r30, -6128
	addli r14, r30, -2048
	slli r1, r1, 2
	storeli.w r8, -6116(r30)                # 4-byte Folded Spill
	store.d r[11:12], 0(r2)                 # 8-byte Folded Spill
	storeli.w r1, -6132(r30)                # 4-byte Folded Spill
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 335 0 is_stmt 1               # _p800_reduce.py:335:0
	load.d r[11:12], 72(r30)
	addli r2, r30, -6128
	load.d r[14:15], 0(r2)                  # 8-byte Folded Reload
	lui r2, 983040
	mul.sl r[11:12], r[18:19], r[11:12]
	or r1, r1, r2
	add.ul r[11:12], r[11:12], r[14:15]
	load.d r[14:15], 56(r30)
	sll.d r[11:12], r[11:12], r23
	add.ul r[11:12], r[14:15], r[11:12]
	addli r14, r30, -2048
	s_lm2gm r1, r14, 0(r[11:12])
	loadli.w r1,  -6092(r30)                # 4-byte Folded Reload
	mfence { lm }
	add.s r6, r6, r1
	blt.s r6, r7, .LBB0_3
	j .LBB0_11
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 # _p800_reduce.py:0:0
	loadli.w r1,  100(r30)
	loadli.w r2,  96(r30)
	.loc	1 335 0                         # _p800_reduce.py:335:0
	loadli.w r8,  -6096(r30)                # 4-byte Folded Reload
	div.s r1, r6, r1
	div.s r1, r1, r2
	lui r2, 983040
	or r15, r8, r2
	.loc	1 342 20 is_stmt 1              # _p800_reduce.py:342:20
	slli r2, r1, 4
	.loc	1 335 0                         # _p800_reduce.py:335:0
	addli r1, r30, -6088
	load.d r[11:12], 0(r1)                  # 8-byte Folded Reload
	addli r1, r30, -4096
	l_gm2lm r15, r1, 0(r[11:12])
	or r15, r2, r24
	mfence { lm }
	loadli.w r8,  8(r30)
	loadli.w r1,  -6116(r30)                # 4-byte Folded Reload
	blt.s r15, r8, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0 is_stmt 0                 # _p800_reduce.py:0:0
	addli r1, zero, 0
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 335 0                         # _p800_reduce.py:335:0
	sext_int2long r[16:17], r2
	addli r2, r30, -6104
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	addli r2, r30, -6112
	or.d r[18:19], r[16:17], r[11:12]
	load.d r[11:12], 16(r30)
	mul.sl r[16:17], r[18:19], r[11:12]
	load.d r[11:12], 0(r2)                  # 8-byte Folded Reload
	lui r2, 983040
	or r1, r1, r2
	add.ul r[16:17], r[16:17], r[11:12]
	load.d r[11:12], 0(r30)
	sll.d r[16:17], r[16:17], r23
	add.ul r[16:17], r[11:12], r[16:17]
	l_gm2lm r1, r14, 0(r[16:17])
	.loc	1 352 17 is_stmt 1              # _p800_reduce.py:352:17
	addli r1, r30, -2048
	.loc	1 335 0                         # _p800_reduce.py:335:0
	mfence { lm }
	.loc	1 352 17                        # _p800_reduce.py:352:17
	vload_mask16.mz vr2{mr1}, 0(r1)
	addli r1, r30, -1984
	vload_mask16.mz vr4{mr1}, 0(r1)
	addli r1, r30, -1920
	vload_mask16.mz vr5{mr1}, 0(r1)
	addli r1, r30, -1856
	vload_mask16.mz vr0{mr1}, 0(r1)
	addli r1, r30, -1792
	vload_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -1728
	vload_mask16.mz vr1{mr1}, 0(r1)
	.loc	1 352 22 is_stmt 0              # _p800_reduce.py:352:22
	addli r1, r30, -4096
	vload_mask16.mz vr9{mr1}, 0(r1)
	.loc	1 352 17                        # _p800_reduce.py:352:17
	addli r1, r30, -1664
	vload_mask16.mz vr10{mr1}, 0(r1)
	addli r1, r30, -1600
	vload_mask16.mz vr7{mr1}, 0(r1)
	addli r1, r30, -1536
	vload_mask16.mz vr8{mr1}, 0(r1)
	addli r1, r30, -1472
	.loc	1 352 22                        # _p800_reduce.py:352:22
	vadd.f.mz.rn vr2{mr1}, vr2, vr9
	.loc	1 352 17                        # _p800_reduce.py:352:17
	vload_mask16.mz vr6{mr1}, 0(r1)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	addli r1, r30, -4032
	vload_mask16.mz vr11{mr1}, 0(r1)
	addli r1, r30, -6080
	vstore_mask16.mz vr2{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3968
	vload_mask16.mz vr9{mr1}, 0(r1)
	addli r1, r30, -4160
	vadd.f.mz.rn vr2{mr1}, vr4, vr11
	vstore_mask16.mz vr2{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3904
	vadd.f.mz.rn vr2{mr1}, vr5, vr9
	vload_mask16.mz vr11{mr1}, 0(r1)
	addli r1, r30, -4224
	vstore_mask16.mz vr2{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3840
	vload_mask16.mz vr9{mr1}, 0(r1)
	addli r1, r30, -4288
	vadd.f.mz.rn vr0{mr1}, vr0, vr11
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3776
	vadd.f.mz.rn vr0{mr1}, vr3, vr9
	vload_mask16.mz vr11{mr1}, 0(r1)
	addli r1, r30, -4352
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3712
	vload_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -4416
	vadd.f.mz.rn vr0{mr1}, vr1, vr11
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3648
	vadd.f.mz.rn vr0{mr1}, vr10, vr3
	vload_mask16.mz vr1{mr1}, 0(r1)
	.loc	1 352 17                        # _p800_reduce.py:352:17
	addli r1, r30, -4480
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -1408
	vload_mask16.mz vr3{mr1}, 0(r1)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	addli r1, r30, -4544
	vadd.f.mz.rn vr0{mr1}, vr7, vr1
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3584
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -3520
	vload_mask16.mz vr7{mr1}, 0(r1)
	addli r1, r30, -3456
	vload_mask16.mz vr10{mr1}, 0(r1)
	addli r1, r30, -4608
	vadd.f.mz.rn vr0{mr1}, vr8, vr1
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr6, vr7
	addli r1, r30, -4672
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr3, vr10
	.loc	1 352 17                        # _p800_reduce.py:352:17
	addli r1, r30, -4736
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -1344
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -1280
	vload_mask16.mz vr7{mr1}, 0(r1)
	addli r1, r30, -1216
	vload_mask16.mz vr10{mr1}, 0(r1)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	addli r1, r30, -3392
	vload_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -3328
	vload_mask16.mz vr6{mr1}, 0(r1)
	addli r1, r30, -3264
	vload_mask16.mz vr8{mr1}, 0(r1)
	addli r1, r30, -4864
	vadd.f.mz.rn vr0{mr1}, vr1, vr3
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr7, vr6
	addli r1, r30, -4992
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr10, vr8
	.loc	1 352 17                        # _p800_reduce.py:352:17
	addli r1, r30, -5120
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -1152
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -1088
	vload_mask16.mz vr3{mr1}, 0(r1)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	addli r1, r30, -3200
	.loc	1 352 17                        # _p800_reduce.py:352:17
	vload_mask16.mz vr6{mr1}, -1024(r30)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	vload_mask16.mz vr7{mr1}, 0(r1)
	addli r1, r30, -3136
	vload_mask16.mz vr8{mr1}, 0(r1)
	addli r1, r30, -3072
	vload_mask16.mz vr10{mr1}, 0(r1)
	addli r1, r30, -5248
	vadd.f.mz.rn vr0{mr1}, vr1, vr7
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr3, vr8
	addli r1, r30, -5376
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr6, vr10
	.loc	1 352 17                        # _p800_reduce.py:352:17
	addli r1, r30, -5440
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	.loc	1 352 22                        # _p800_reduce.py:352:22
	addli r1, r30, -3008
	.loc	1 352 17                        # _p800_reduce.py:352:17
	vload_mask16.mz vr1{mr1}, -960(r30)
	vload_mask16.mz vr3{mr1}, -896(r30)
	vload_mask16.mz vr6{mr1}, -832(r30)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	vload_mask16.mz vr7{mr1}, 0(r1)
	addli r1, r30, -2944
	vload_mask16.mz vr8{mr1}, 0(r1)
	addli r1, r30, -2880
	vload_mask16.mz vr10{mr1}, 0(r1)
	addli r1, r30, -5504
	vadd.f.mz.rn vr0{mr1}, vr1, vr7
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr3, vr8
	addli r1, r30, -5312
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr6, vr10
	.loc	1 352 17                        # _p800_reduce.py:352:17
	addli r1, r30, -5184
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	.loc	1 352 22                        # _p800_reduce.py:352:22
	addli r1, r30, -2816
	.loc	1 352 17                        # _p800_reduce.py:352:17
	vload_mask16.mz vr1{mr1}, -768(r30)
	vload_mask16.mz vr3{mr1}, -704(r30)
	vload_mask16.mz vr6{mr1}, -640(r30)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	vload_mask16.mz vr7{mr1}, 0(r1)
	addli r1, r30, -2752
	vload_mask16.mz vr8{mr1}, 0(r1)
	addli r1, r30, -2688
	vload_mask16.mz vr10{mr1}, 0(r1)
	addli r1, r30, -5056
	vadd.f.mz.rn vr0{mr1}, vr1, vr7
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr3, vr8
	addli r1, r30, -4928
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr6, vr10
	.loc	1 352 17                        # _p800_reduce.py:352:17
	addli r1, r30, -4800
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	.loc	1 352 22                        # _p800_reduce.py:352:22
	addli r1, r30, -2624
	.loc	1 352 17                        # _p800_reduce.py:352:17
	vload_mask16.mz vr1{mr1}, -576(r30)
	vload_mask16.mz vr3{mr1}, -512(r30)
	vload_mask16.mz vr6{mr1}, -448(r30)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	vload_mask16.mz vr7{mr1}, 0(r1)
	addli r1, r30, -2560
	vload_mask16.mz vr8{mr1}, 0(r1)
	addli r1, r30, -2496
	vload_mask16.mz vr10{mr1}, 0(r1)
	addli r1, r30, -2432
	vadd.f.mz.rn vr2{mr1}, vr1, vr7
	.loc	1 352 17                        # _p800_reduce.py:352:17
	vload_mask16.mz vr1{mr1}, -384(r30)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	vadd.f.mz.rn vr4{mr1}, vr3, vr8
	.loc	1 352 17                        # _p800_reduce.py:352:17
	vload_mask16.mz vr3{mr1}, -320(r30)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	vadd.f.mz.rn vr5{mr1}, vr6, vr10
	.loc	1 352 17                        # _p800_reduce.py:352:17
	vload_mask16.mz vr6{mr1}, -256(r30)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	vload_mask16.mz vr7{mr1}, 0(r1)
	addli r1, r30, -2368
	vload_mask16.mz vr8{mr1}, 0(r1)
	addli r1, r30, -2304
	vload_mask16.mz vr10{mr1}, 0(r1)
	addli r1, r30, -2240
	vadd.f.mz.rn vr0{mr1}, vr1, vr7
	.loc	1 352 17                        # _p800_reduce.py:352:17
	vload_mask16.mz vr1{mr1}, -192(r30)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	vadd.f.mz.rn vr9{mr1}, vr3, vr8
	.loc	1 352 17                        # _p800_reduce.py:352:17
	vload_mask16.mz vr3{mr1}, -128(r30)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	vadd.f.mz.rn vr11{mr1}, vr6, vr10
	.loc	1 352 17                        # _p800_reduce.py:352:17
	vload_mask16.mz vr6{mr1}, -64(r30)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	vload_mask16.mz vr7{mr1}, 0(r1)
	addli r1, r30, -2176
	vload_mask16.mz vr8{mr1}, 0(r1)
	addli r1, r30, -2112
	vload_mask16.mz vr10{mr1}, 0(r1)
	addli r1, r30, -4160
	vadd.f.mz.rn vr7{mr1}, vr1, vr7
	vadd.f.mz.rn vr8{mr1}, vr3, vr8
	vadd.f.mz.rn vr3{mr1}, vr6, vr10
	vadd.s.mz vr6{mr1}, zero, vr9
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -6080
	vload_mask16.mz vr1{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -4224
	vadd.s.mz vr10{mr1}, zero, vr1
	.loc	1 353 24 is_stmt 1              # _p800_reduce.py:353:24
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -4288
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -4352
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -4416
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -4480
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -4544
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -4608
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -4672
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -4736
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -4864
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -4992
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -5120
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -5248
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -5376
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -5440
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -5504
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -5312
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -5184
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -5056
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -4928
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -4800
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	vload_mask16.mz vr9{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -5888
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr9
	#NO_APP
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr2
	#NO_APP
	vstore_mask16.mz vr2{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -5824
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr4
	#NO_APP
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr5
	#NO_APP
	vstore_mask16.mz vr4{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -5760
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr0
	#NO_APP
	vadd.s.mz vr4{mr1}, zero, vr0
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr6
	#NO_APP
	vstore_mask16.mz vr5{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -6016
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr11
	#NO_APP
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr7
	#NO_APP
	vstore_mask16.mz vr6{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -5696
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr8
	#NO_APP
	#APP
	vmax.f.mz vr1{mr1}, vr1, vr3
	#NO_APP
	vextracti.f r2, 1(vr1)
	vextracti.f r16, 2(vr1)
	vextracti.f r17, 3(vr1)
	vextracti.f r20, 4(vr1)
	vextracti.f r21, 5(vr1)
	vextracti.f r22, 6(vr1)
	vextracti.f r25, 7(vr1)
	vextracti.f r26, 8(vr1)
	vextracti.f r23, 9(vr1)
	vextracti.f r27, 10(vr1)
	vextracti.f r28, 11(vr1)
	vextracti.f r11, 12(vr1)
	vextracti.f r12, 13(vr1)
	vextracti.f r8, 14(vr1)
	vextracti.f r14, 15(vr1)
	vstore_mask16.mz vr11{mr1}, 0(r1)       # 64-byte Folded Spill
	addli r1, r30, -5632
	vstore_mask16.mz vr7{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -5952
	vstore_mask16.mz vr8{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -5568
	vstore_mask16.mz vr3{mr1}, 0(r1)        # 64-byte Folded Spill
	vextracti.f r1, 0(vr1)
	#APP
	max.f r1, r1, r2
	#NO_APP
	#APP
	max.f r1, r1, r16
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
	max.f r1, r1, r22
	#NO_APP
	#APP
	max.f r1, r1, r25
	#NO_APP
	#APP
	max.f r1, r1, r26
	#NO_APP
	#APP
	max.f r1, r1, r23
	#NO_APP
	#APP
	max.f r1, r1, r27
	#NO_APP
	#APP
	max.f r1, r1, r28
	#NO_APP
	#APP
	max.f r1, r1, r11
	#NO_APP
	#APP
	max.f r1, r1, r12
	#NO_APP
	#APP
	max.f r1, r1, r8
	#NO_APP
	#APP
	max.f r1, r1, r14
	#NO_APP
	stores.w r1, 0(r5)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r13, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	loads.w r1, 0(r9)
	loads.w r2, 4(r9)
	loads.w r8, 8(r9)
	loads.w r11, 12(r9)
	#APP
	max.f r1, r1, r2
	#NO_APP
	#APP
	max.f r1, r1, r8
	#NO_APP
	#APP
	max.f r1, r1, r11
	#NO_APP
	stores.w r1, 0(r9)
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r1, 0(r9)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	lui r2, 524288
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	vxor.u.mz vr1{mr1}, vr1, vr1
	addli r12, zero, 1
	addli r14, zero, 4096
	addli r16, zero, 2048
	addli r17, zero, 8192
	vadd.s.mz vr6{mr1}, zero, vr1
	vadd.s.mz vr3{mr1}, zero, vr1
	vmmov mr2, r12
	addli r12, zero, 2
	vmmov mr3, r12
	addli r12, zero, 4
	vmmov mr0, r12
	addli r12, zero, 8
	.loc	1 354 19                        # _p800_reduce.py:354:19
	xor r1, r1, r2
	#APP
	vadd.f.mz.rn vr2{mr1}, r1, vr10
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r2, 0(vr2)
	vextracti.f r8, 1(vr2)
	vextracti.f r11, 2(vr2)
	exp.f.rn r2, r2
	exp.f.rn r8, r8
	vor.u.mh vr6{mr2}, r2, vr6
	exp.f.rn r2, r11
	vextracti.f r11, 3(vr2)
	vor.u.mh vr6{mr3}, r8, vr6
	exp.f.rn r8, r11
	vextracti.f r11, 4(vr2)
	vor.u.mh vr6{mr0}, r2, vr6
	exp.f.rn r2, r11
	vextracti.f r11, 5(vr2)
	vmmov mr0, r12
	addli r12, zero, 16
	vor.u.mh vr6{mr0}, r8, vr6
	exp.f.rn r8, r11
	vextracti.f r11, 6(vr2)
	vmmov mr0, r12
	addli r12, zero, 32
	vor.u.mh vr6{mr0}, r2, vr6
	exp.f.rn r2, r11
	vextracti.f r11, 7(vr2)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr6{mr0}, r8, vr6
	exp.f.rn r8, r11
	vextracti.f r11, 8(vr2)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr6{mr0}, r2, vr6
	exp.f.rn r2, r11
	vextracti.f r11, 9(vr2)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr6{mr0}, r8, vr6
	exp.f.rn r8, r11
	vextracti.f r11, 10(vr2)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr6{mr0}, r2, vr6
	exp.f.rn r2, r11
	vextracti.f r11, 11(vr2)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr6{mr0}, r8, vr6
	exp.f.rn r8, r11
	vextracti.f r11, 12(vr2)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr6{mr0}, r2, vr6
	exp.f.rn r2, r11
	vextracti.f r11, 13(vr2)
	vmmov mr0, r12
	vextracti.f r12, 15(vr2)
	vor.u.mh vr6{mr0}, r8, vr6
	exp.f.rn r8, r11
	vextracti.f r11, 14(vr2)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr6{mr0}, r2, vr6
	exp.f.rn r2, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -4160
	vmmov mr0, r14
	lui r14, 4
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr2{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr2)
	vor.u.mh vr6{mr0}, r8, vr6
	exp.f.rn r8, r12
	vmmov mr0, r14
	lui r14, 8
	vextracti.f r12, 1(vr2)
	exp.f.rn r11, r11
	vor.u.mh vr6{mr0}, r2, vr6
	vmmov mr0, r14
	exp.f.rn r2, r12
	vextracti.f r12, 2(vr2)
	addli r14, zero, 4096
	vor.u.mh vr6{mr0}, r8, vr6
	addli r8, r30, -4160
	vstore_mask16.mz vr6{mr1}, 0(r8)        # 64-byte Folded Spill
	vor.u.mh vr1{mr2}, r11, vr1
	exp.f.rn r8, r12
	vextracti.f r11, 3(vr2)
	addli r12, zero, 4
	vadd.s.mz vr6{mr1}, zero, vr3
	vmmov mr0, r12
	addli r12, zero, 8
	vor.u.mh vr1{mr3}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 4(vr2)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 5(vr2)
	vmmov mr0, r12
	addli r12, zero, 16
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 6(vr2)
	vmmov mr0, r12
	addli r12, zero, 32
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 7(vr2)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 8(vr2)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 9(vr2)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 10(vr2)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 11(vr2)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 12(vr2)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 13(vr2)
	vmmov mr0, r12
	vextracti.f r12, 15(vr2)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 14(vr2)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -4224
	vmmov mr0, r14
	lui r14, 4
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr2{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr2)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r12
	vmmov mr0, r14
	lui r14, 8
	vextracti.f r12, 1(vr2)
	exp.f.rn r11, r11
	vor.u.mh vr1{mr0}, r8, vr1
	vmmov mr0, r14
	exp.f.rn r8, r12
	vextracti.f r12, 2(vr2)
	addli r14, zero, 4096
	vor.u.mh vr1{mr0}, r2, vr1
	addli r2, r30, -4224
	vstore_mask16.mz vr1{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr3
	exp.f.rn r2, r12
	addli r12, zero, 4
	vmmov mr0, r12
	addli r12, zero, 8
	vor.u.mh vr1{mr2}, r11, vr1
	vextracti.f r11, 3(vr2)
	vmmov mr2, r12
	addli r12, zero, 16
	vor.u.mh vr1{mr3}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 4(vr2)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 5(vr2)
	vor.u.mh vr1{mr2}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 6(vr2)
	vmmov mr2, r12
	addli r12, zero, 32
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 7(vr2)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 8(vr2)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 9(vr2)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 10(vr2)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 11(vr2)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 12(vr2)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 13(vr2)
	vmmov mr0, r12
	vextracti.f r12, 15(vr2)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 14(vr2)
	vmmov mr0, r14
	addli r14, zero, 8192
	vadd.s.mz vr2{mr1}, zero, vr3
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -4288
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vmmov mr0, r14
	lui r14, 4
	vadd.s.mz vr5{mr1}, zero, vr2
	vadd.s.mz vr7{mr1}, zero, vr2
	vadd.s.mz vr9{mr1}, zero, vr2
	vadd.s.mz vr11{mr1}, zero, vr2
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r12
	vmmov mr0, r14
	lui r14, 8
	vextracti.f r12, 1(vr0)
	exp.f.rn r11, r11
	vor.u.mh vr1{mr0}, r2, vr1
	vmmov mr0, r14
	exp.f.rn r2, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 4096
	vor.u.mh vr1{mr0}, r8, vr1
	addli r8, r30, -4288
	vstore_mask16.mz vr1{mr1}, 0(r8)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr3
	addli r8, zero, 1
	vmmov mr0, r8
	exp.f.rn r8, r12
	addli r12, zero, 4
	vor.u.mh vr1{mr0}, r11, vr1
	vextracti.f r11, 3(vr0)
	vmmov mr0, r12
	addli r12, zero, 8
	vor.u.mh vr1{mr3}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 4(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 32
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 6(vr0)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr1{mr2}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 7(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 8(vr0)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 9(vr0)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 11(vr0)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 13(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -4352
	vmmov mr0, r14
	lui r14, 4
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r12
	vmmov mr0, r14
	lui r14, 8
	vextracti.f r12, 1(vr0)
	vmmov mr3, r14
	exp.f.rn r11, r11
	addli r14, zero, 4096
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r12
	vextracti.f r12, 2(vr0)
	vor.u.mh vr1{mr3}, r2, vr1
	addli r2, r30, -4352
	vstore_mask16.mz vr1{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr3
	addli r2, zero, 1
	vmmov mr0, r2
	exp.f.rn r2, r12
	addli r12, zero, 2
	vor.u.mh vr1{mr0}, r11, vr1
	vextracti.f r11, 3(vr0)
	vmmov mr0, r12
	addli r12, zero, 4
	vmmov mr2, r12
	addli r12, zero, 8
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 4(vr0)
	vmmov mr0, mr2
	vmmov mr2, r12
	addli r12, zero, 16
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 32
	vor.u.mh vr1{mr2}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 6(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 7(vr0)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 8(vr0)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 9(vr0)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 11(vr0)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 13(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -4416
	vmmov mr0, r14
	lui r14, 4
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r12
	vmmov mr0, r14
	vextracti.f r12, 1(vr0)
	addli r14, zero, 4096
	exp.f.rn r11, r11
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r12
	vextracti.f r12, 2(vr0)
	vor.u.mh vr1{mr3}, r8, vr1
	addli r8, r30, -4416
	vstore_mask16.mz vr1{mr1}, 0(r8)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr3
	addli r8, zero, 1
	vmmov mr0, r8
	exp.f.rn r8, r12
	addli r12, zero, 2
	vor.u.mh vr1{mr0}, r11, vr1
	vextracti.f r11, 3(vr0)
	vmmov mr3, r12
	addli r12, zero, 4
	vmmov mr0, r12
	addli r12, zero, 16
	vor.u.mh vr1{mr3}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 4(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 5(vr0)
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r11
	vmmov mr2, r12
	vextracti.f r11, 6(vr0)
	addli r12, zero, 32
	vmmov mr0, mr2
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 7(vr0)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 8(vr0)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 9(vr0)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 11(vr0)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 13(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -4480
	vmmov mr0, r14
	lui r14, 4
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r12
	vmmov mr0, r14
	lui r14, 8
	vextracti.f r12, 1(vr0)
	vmmov mr2, r14
	exp.f.rn r11, r11
	addli r14, zero, 4096
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r12
	vextracti.f r12, 2(vr0)
	vor.u.mh vr1{mr2}, r2, vr1
	addli r2, r30, -4480
	vstore_mask16.mz vr1{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr3
	addli r2, zero, 1
	vmmov mr0, r2
	exp.f.rn r2, r12
	addli r12, zero, 4
	vor.u.mh vr1{mr0}, r11, vr1
	vextracti.f r11, 3(vr0)
	vmmov mr0, r12
	addli r12, zero, 8
	vor.u.mh vr1{mr3}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 4(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 16
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 6(vr0)
	vmmov mr0, r12
	addli r12, zero, 32
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 7(vr0)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 8(vr0)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 9(vr0)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 11(vr0)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 13(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -4544
	vmmov mr0, r14
	lui r14, 4
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r12
	vmmov mr0, r14
	vextracti.f r12, 1(vr0)
	addli r14, zero, 4096
	exp.f.rn r11, r11
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r12
	vextracti.f r12, 2(vr0)
	vor.u.mh vr1{mr2}, r8, vr1
	addli r8, r30, -4544
	vstore_mask16.mz vr1{mr1}, 0(r8)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr3
	addli r8, zero, 1
	vmmov mr0, r8
	exp.f.rn r8, r12
	addli r12, zero, 4
	vor.u.mh vr1{mr0}, r11, vr1
	vextracti.f r11, 3(vr0)
	vmmov mr0, r12
	addli r12, zero, 8
	vor.u.mh vr1{mr3}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 4(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 16
	vmmov mr2, r12
	addli r12, zero, 32
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 6(vr0)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr1{mr2}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 7(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 8(vr0)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 9(vr0)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 11(vr0)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 13(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -4608
	vmmov mr0, r14
	lui r14, 4
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r12
	vmmov mr0, r14
	lui r14, 8
	vextracti.f r12, 1(vr0)
	exp.f.rn r11, r11
	vor.u.mh vr1{mr0}, r8, vr1
	vmmov mr0, r14
	exp.f.rn r8, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 4096
	vor.u.mh vr1{mr0}, r2, vr1
	addli r2, r30, -4608
	vstore_mask16.mz vr1{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr3
	addli r2, zero, 1
	vmmov mr0, r2
	exp.f.rn r2, r12
	addli r12, zero, 4
	vor.u.mh vr1{mr0}, r11, vr1
	vextracti.f r11, 3(vr0)
	vmmov mr0, r12
	addli r12, zero, 8
	vor.u.mh vr1{mr3}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 4(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 32
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 6(vr0)
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 7(vr0)
	vmmov mr2, r12
	addli r12, zero, 64
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr2}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 8(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 9(vr0)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 11(vr0)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 13(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -4672
	vmmov mr0, r14
	lui r14, 4
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r12
	vmmov mr0, r14
	lui r14, 8
	vextracti.f r12, 1(vr0)
	exp.f.rn r11, r11
	vor.u.mh vr1{mr0}, r2, vr1
	vmmov mr0, r14
	exp.f.rn r2, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 4096
	vor.u.mh vr1{mr0}, r8, vr1
	addli r8, r30, -4672
	vstore_mask16.mz vr1{mr1}, 0(r8)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr3
	addli r8, zero, 1
	vmmov mr0, r8
	exp.f.rn r8, r12
	addli r12, zero, 4
	vor.u.mh vr1{mr0}, r11, vr1
	vextracti.f r11, 3(vr0)
	vmmov mr0, r12
	addli r12, zero, 8
	vor.u.mh vr1{mr3}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 4(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 16
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 6(vr0)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 7(vr0)
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 8(vr0)
	vmmov mr2, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr2}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 9(vr0)
	vmmov mr2, r12
	addli r12, zero, 256
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 10(vr0)
	vmmov mr2, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr2}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 11(vr0)
	vmmov mr2, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 12(vr0)
	vmmov mr2, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr2}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 13(vr0)
	vmmov mr2, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 14(vr0)
	vmmov mr2, r14
	addli r14, zero, 8192
	vor.u.mh vr1{mr2}, r8, vr1
	exp.f.rn r8, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -4736
	vmmov mr2, r14
	lui r14, 4
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r12
	vmmov mr2, r14
	lui r14, 8
	vextracti.f r12, 1(vr0)
	exp.f.rn r11, r11
	vor.u.mh vr1{mr2}, r8, vr1
	vmmov mr2, r14
	exp.f.rn r8, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 4096
	vor.u.mh vr1{mr2}, r2, vr1
	addli r2, r30, -4736
	vstore_mask16.mz vr1{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr3
	addli r2, zero, 1
	vmmov mr2, r2
	exp.f.rn r2, r12
	addli r12, zero, 4
	vor.u.mh vr1{mr2}, r11, vr1
	vextracti.f r11, 3(vr0)
	vmmov mr2, r12
	addli r12, zero, 8
	vor.u.mh vr1{mr3}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 4(vr0)
	vmmov mr3, r12
	addli r12, zero, 32
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 5(vr0)
	vor.u.mh vr1{mr3}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 6(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 7(vr0)
	vmmov mr2, mr0
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 8(vr0)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 9(vr0)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 11(vr0)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 13(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -4864
	vmmov mr0, r14
	lui r14, 4
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r12
	vmmov mr0, r14
	lui r14, 8
	vextracti.f r12, 1(vr0)
	exp.f.rn r11, r11
	vor.u.mh vr1{mr0}, r2, vr1
	vmmov mr0, r14
	exp.f.rn r2, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 4096
	vor.u.mh vr1{mr0}, r8, vr1
	addli r8, r30, -4864
	vstore_mask16.mz vr1{mr1}, 0(r8)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr3
	addli r8, zero, 1
	vmmov mr0, r8
	exp.f.rn r8, r12
	addli r12, zero, 2
	vor.u.mh vr1{mr0}, r11, vr1
	vextracti.f r11, 3(vr0)
	vmmov mr0, r12
	addli r12, zero, 4
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 4(vr0)
	vmmov mr0, r12
	addli r12, zero, 32
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr1{mr3}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 6(vr0)
	vor.u.mh vr1{mr2}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 7(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 8(vr0)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 9(vr0)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 11(vr0)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 13(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -4992
	vmmov mr0, r14
	lui r14, 4
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r12
	vmmov mr0, r14
	lui r14, 8
	vextracti.f r12, 1(vr0)
	exp.f.rn r11, r11
	vor.u.mh vr1{mr0}, r8, vr1
	vmmov mr0, r14
	exp.f.rn r8, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 4096
	vor.u.mh vr1{mr0}, r2, vr1
	addli r2, r30, -4992
	vstore_mask16.mz vr1{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr3
	addli r2, zero, 1
	vmmov mr0, r2
	exp.f.rn r2, r12
	addli r12, zero, 2
	vor.u.mh vr1{mr0}, r11, vr1
	vextracti.f r11, 3(vr0)
	vmmov mr0, r12
	addli r12, zero, 4
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 4(vr0)
	vmmov mr0, r12
	addli r12, zero, 32
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr1{mr3}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 6(vr0)
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 7(vr0)
	vmmov mr2, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 8(vr0)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 9(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 11(vr0)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 13(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -5120
	vmmov mr0, r14
	lui r14, 4
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r12
	vmmov mr0, r14
	lui r14, 8
	vextracti.f r12, 1(vr0)
	exp.f.rn r11, r11
	vor.u.mh vr1{mr0}, r2, vr1
	vmmov mr0, r14
	exp.f.rn r2, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 4096
	vor.u.mh vr1{mr0}, r8, vr1
	addli r8, r30, -5120
	vstore_mask16.mz vr1{mr1}, 0(r8)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr3
	addli r8, zero, 1
	vmmov mr0, r8
	exp.f.rn r8, r12
	addli r12, zero, 2
	vor.u.mh vr1{mr0}, r11, vr1
	vextracti.f r11, 3(vr0)
	vmmov mr0, r12
	addli r12, zero, 4
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 4(vr0)
	vmmov mr0, r12
	addli r12, zero, 16
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 32
	vor.u.mh vr1{mr3}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 6(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 7(vr0)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 8(vr0)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr1{mr2}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 9(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 11(vr0)
	vmmov mr2, mr0
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 13(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -5248
	vmmov mr0, r14
	lui r14, 4
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r12
	vmmov mr0, r14
	lui r14, 8
	vextracti.f r12, 1(vr0)
	exp.f.rn r11, r11
	vor.u.mh vr1{mr0}, r8, vr1
	vmmov mr0, r14
	exp.f.rn r8, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 4096
	vor.u.mh vr1{mr0}, r2, vr1
	addli r2, r30, -5248
	vstore_mask16.mz vr1{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr3
	addli r2, zero, 1
	vmmov mr0, r2
	exp.f.rn r2, r12
	addli r12, zero, 2
	vor.u.mh vr1{mr0}, r11, vr1
	vextracti.f r11, 3(vr0)
	vmmov mr0, r12
	addli r12, zero, 4
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 4(vr0)
	vmmov mr0, r12
	addli r12, zero, 16
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 32
	vor.u.mh vr1{mr3}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 6(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 7(vr0)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 8(vr0)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 9(vr0)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 11(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 13(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -5376
	vmmov mr0, r14
	lui r14, 4
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r12
	vmmov mr0, r14
	lui r14, 8
	vextracti.f r12, 1(vr0)
	exp.f.rn r11, r11
	vor.u.mh vr1{mr0}, r2, vr1
	vmmov mr0, r14
	exp.f.rn r2, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 4096
	vor.u.mh vr1{mr0}, r8, vr1
	addli r8, r30, -5376
	vstore_mask16.mz vr1{mr1}, 0(r8)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr3
	addli r8, zero, 1
	vmmov mr2, r8
	exp.f.rn r8, r12
	addli r12, zero, 2
	vor.u.mh vr1{mr2}, r11, vr1
	vextracti.f r11, 3(vr0)
	vmmov mr0, r12
	addli r12, zero, 4
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 4(vr0)
	vmmov mr0, r12
	addli r12, zero, 16
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 32
	vor.u.mh vr1{mr3}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 6(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 7(vr0)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 8(vr0)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 9(vr0)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 11(vr0)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 13(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -5440
	vmmov mr0, r14
	lui r14, 4
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r12
	vmmov mr0, r14
	lui r14, 8
	vextracti.f r12, 1(vr0)
	exp.f.rn r11, r11
	vor.u.mh vr1{mr0}, r8, vr1
	vmmov mr0, r14
	exp.f.rn r8, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 4096
	vor.u.mh vr1{mr0}, r2, vr1
	addli r2, r30, -5440
	vstore_mask16.mz vr1{mr1}, 0(r2)        # 64-byte Folded Spill
	vor.u.mh vr6{mr2}, r11, vr6
	exp.f.rn r2, r12
	addli r12, zero, 2
	vextracti.f r11, 3(vr0)
	vadd.s.mz vr1{mr1}, zero, vr3
	vmmov mr0, r12
	addli r12, zero, 4
	vor.u.mh vr6{mr0}, r8, vr6
	exp.f.rn r8, r11
	vextracti.f r11, 4(vr0)
	vmmov mr0, r12
	addli r12, zero, 16
	vor.u.mh vr6{mr0}, r2, vr6
	exp.f.rn r2, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 32
	vmmov mr2, r12
	addli r12, zero, 64
	vor.u.mh vr6{mr3}, r8, vr6
	exp.f.rn r8, r11
	vextracti.f r11, 6(vr0)
	vor.u.mh vr6{mr0}, r2, vr6
	exp.f.rn r2, r11
	vextracti.f r11, 7(vr0)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr6{mr2}, r8, vr6
	exp.f.rn r8, r11
	vextracti.f r11, 8(vr0)
	vor.u.mh vr6{mr0}, r2, vr6
	exp.f.rn r2, r11
	vextracti.f r11, 9(vr0)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr6{mr0}, r8, vr6
	exp.f.rn r8, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr6{mr0}, r2, vr6
	exp.f.rn r2, r11
	vextracti.f r11, 11(vr0)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr6{mr0}, r8, vr6
	exp.f.rn r8, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr6{mr0}, r2, vr6
	exp.f.rn r2, r11
	vextracti.f r11, 13(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr6{mr0}, r8, vr6
	exp.f.rn r8, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr6{mr0}, r2, vr6
	exp.f.rn r2, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -5504
	vmmov mr0, r14
	lui r14, 4
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr6{mr0}, r8, vr6
	exp.f.rn r8, r12
	vmmov mr0, r14
	vextracti.f r12, 1(vr0)
	lui r14, 8
	exp.f.rn r11, r11
	vor.u.mh vr6{mr0}, r2, vr6
	vmmov mr0, r14
	exp.f.rn r2, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 4096
	vor.u.mh vr6{mr0}, r8, vr6
	addli r8, zero, 1
	vmmov mr0, r8
	exp.f.rn r8, r12
	addli r12, zero, 2
	vor.u.mh vr1{mr0}, r11, vr1
	vextracti.f r11, 3(vr0)
	vmmov mr0, r12
	addli r12, zero, 4
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 4(vr0)
	vmmov mr0, r12
	addli r12, zero, 16
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr1{mr3}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 6(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 7(vr0)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 8(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 9(vr0)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 11(vr0)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 13(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -5312
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vmmov mr0, r14
	lui r14, 4
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r12
	vmmov mr0, r14
	lui r14, 8
	vextracti.f r12, 1(vr0)
	exp.f.rn r11, r11
	vor.u.mh vr1{mr0}, r8, vr1
	vmmov mr0, r14
	exp.f.rn r8, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 4096
	vor.u.mh vr1{mr0}, r2, vr1
	addli r2, r30, -5312
	vstore_mask16.mz vr1{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr3
	addli r2, zero, 1
	vmmov mr2, r2
	exp.f.rn r2, r12
	addli r12, zero, 2
	vor.u.mh vr1{mr2}, r11, vr1
	vextracti.f r11, 3(vr0)
	vmmov mr0, r12
	addli r12, zero, 4
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 4(vr0)
	vmmov mr0, r12
	addli r12, zero, 16
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 32
	vor.u.mh vr1{mr3}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 6(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 7(vr0)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 8(vr0)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 9(vr0)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 11(vr0)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 13(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -5184
	vmmov mr0, r14
	.loc	1 354 15                        # _p800_reduce.py:354:15
	lui r14, 4
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vmmov mr3, r14
	lui r14, 8
	.loc	1 354 19                        # _p800_reduce.py:354:19
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r12
	vextracti.f r12, 1(vr0)
	exp.f.rn r11, r11
	vor.u.mh vr1{mr3}, r2, vr1
	vmmov mr3, r14
	exp.f.rn r2, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 4096
	vor.u.mh vr1{mr3}, r8, vr1
	addli r8, r30, -5184
	vstore_mask16.mz vr1{mr1}, 0(r8)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr2
	exp.f.rn r8, r12
	addli r12, zero, 2
	vmmov mr3, r12
	addli r12, zero, 4
	vor.u.mh vr1{mr2}, r11, vr1
	vextracti.f r11, 3(vr0)
	vor.u.mh vr1{mr3}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 4(vr0)
	vmmov mr3, r12
	addli r12, zero, 8
	vor.u.mh vr1{mr3}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 5(vr0)
	vmmov mr3, r12
	addli r12, zero, 16
	vor.u.mh vr1{mr3}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 6(vr0)
	vmmov mr3, r12
	addli r12, zero, 32
	vor.u.mh vr1{mr3}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 7(vr0)
	vmmov mr3, r12
	addli r12, zero, 64
	vor.u.mh vr1{mr3}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 8(vr0)
	vmmov mr3, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr3}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 9(vr0)
	vmmov mr3, r12
	addli r12, zero, 256
	vor.u.mh vr1{mr3}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 10(vr0)
	vmmov mr3, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr3}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 11(vr0)
	vmmov mr3, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr3}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 12(vr0)
	vmmov mr3, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr3}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 13(vr0)
	vmmov mr3, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr3}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 14(vr0)
	vmmov mr3, r14
	lui r14, 4
	vor.u.mh vr1{mr3}, r8, vr1
	exp.f.rn r8, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -5056
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r12
	vmmov mr0, r14
	lui r14, 8
	vextracti.f r12, 1(vr0)
	exp.f.rn r11, r11
	vor.u.mh vr1{mr0}, r8, vr1
	vmmov mr0, r14
	exp.f.rn r8, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 4096
	vor.u.mh vr1{mr0}, r2, vr1
	addli r2, r30, -5056
	vstore_mask16.mz vr1{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr2
	exp.f.rn r2, r12
	addli r12, zero, 2
	vmmov mr0, r12
	addli r12, zero, 4
	vor.u.mh vr1{mr2}, r11, vr1
	vextracti.f r11, 3(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 4(vr0)
	vmmov mr0, r12
	addli r12, zero, 8
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 16
	vmmov mr2, r12
	addli r12, zero, 32
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 6(vr0)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 7(vr0)
	vmmov mr2, r14
	addli r14, zero, 8192
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 8(vr0)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 9(vr0)
	vmmov mr0, r12
	addli r12, zero, 256
	vmmov mr3, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr3}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 11(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 13(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	lui r14, 4
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -4928
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r12
	vmmov mr0, r14
	lui r14, 8
	vextracti.f r12, 1(vr0)
	exp.f.rn r11, r11
	vor.u.mh vr1{mr0}, r2, vr1
	vmmov mr0, r14
	exp.f.rn r2, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 8192
	vor.u.mh vr1{mr0}, r8, vr1
	addli r8, r30, -6080
	vstore_mask16.mz vr1{mr1}, 0(r8)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr2
	addli r8, zero, 1
	vmmov mr0, r8
	exp.f.rn r8, r12
	addli r12, zero, 2
	vor.u.mh vr1{mr0}, r11, vr1
	vextracti.f r11, 3(vr0)
	vmmov mr0, r12
	addli r12, zero, 4
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 4(vr0)
	vmmov mr0, r12
	addli r12, zero, 8
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 16
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 6(vr0)
	vmmov mr0, r12
	addli r12, zero, 32
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 7(vr0)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 8(vr0)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 9(vr0)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr3}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 11(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 13(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	lui r14, 4
	vor.u.mh vr1{mr2}, r8, vr1
	exp.f.rn r8, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -4800
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r12
	vmmov mr0, r14
	lui r14, 8
	vextracti.f r12, 1(vr0)
	exp.f.rn r11, r11
	vor.u.mh vr1{mr0}, r8, vr1
	vmmov mr0, r14
	exp.f.rn r8, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 4096
	vor.u.mh vr1{mr0}, r2, vr1
	addli r2, r30, -4800
	vstore_mask16.mz vr1{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr2
	addli r2, zero, 1
	vmmov mr0, r2
	exp.f.rn r2, r12
	addli r12, zero, 2
	vor.u.mh vr1{mr0}, r11, vr1
	vextracti.f r11, 3(vr0)
	vmmov mr0, r12
	addli r12, zero, 4
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 4(vr0)
	vmmov mr0, r12
	addli r12, zero, 8
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 16
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 6(vr0)
	vmmov mr0, r12
	addli r12, zero, 32
	vmmov mr2, r12
	addli r12, zero, 64
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 7(vr0)
	vmmov mr0, mr2
	vmmov mr2, r12
	addli r12, zero, 128
	vmmov mr3, r12
	addli r12, zero, 256
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 8(vr0)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr2}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 9(vr0)
	vor.u.mh vr1{mr3}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 10(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 11(vr0)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 13(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -5888
	vmmov mr0, r14
	lui r14, 4
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r12
	vmmov mr0, r14
	lui r14, 8
	vextracti.f r12, 1(vr0)
	exp.f.rn r11, r11
	vor.u.mh vr1{mr0}, r2, vr1
	vmmov mr0, r14
	exp.f.rn r2, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 4096
	vor.u.mh vr1{mr0}, r8, vr1
	addli r8, r30, -4928
	vstore_mask16.mz vr1{mr1}, 0(r8)        # 64-byte Folded Spill
	vadd.s.mz vr1{mr1}, zero, vr2
	addli r8, zero, 1
	vmmov mr0, r8
	exp.f.rn r8, r12
	addli r12, zero, 2
	vor.u.mh vr1{mr0}, r11, vr1
	vextracti.f r11, 3(vr0)
	vmmov mr0, r12
	addli r12, zero, 4
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 4(vr0)
	vmmov mr0, r12
	addli r12, zero, 8
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 16
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 6(vr0)
	vmmov mr0, r12
	addli r12, zero, 32
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 7(vr0)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 8(vr0)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr1{mr2}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 9(vr0)
	vor.u.mh vr1{mr3}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 10(vr0)
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 11(vr0)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	vextracti.f r11, 13(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr1{mr0}, r8, vr1
	exp.f.rn r8, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -5824
	vmmov mr0, r14
	lui r14, 4
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr1{mr0}, r2, vr1
	exp.f.rn r2, r12
	vmmov mr0, r14
	lui r14, 8
	vextracti.f r12, 1(vr0)
	exp.f.rn r11, r11
	vor.u.mh vr1{mr0}, r8, vr1
	vmmov mr0, r14
	exp.f.rn r8, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 4096
	vor.u.mh vr1{mr0}, r2, vr1
	addli r2, r30, -5824
	vstore_mask16.mz vr1{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, zero, 1
	vmmov mr3, r2
	exp.f.rn r2, r12
	addli r12, zero, 2
	vor.u.mh vr5{mr3}, r11, vr5
	vextracti.f r11, 3(vr0)
	vmmov mr0, r12
	addli r12, zero, 4
	vor.u.mh vr5{mr0}, r8, vr5
	exp.f.rn r8, r11
	vextracti.f r11, 4(vr0)
	vmmov mr0, r12
	addli r12, zero, 8
	vor.u.mh vr5{mr0}, r2, vr5
	exp.f.rn r2, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 16
	vor.u.mh vr5{mr0}, r8, vr5
	exp.f.rn r8, r11
	vextracti.f r11, 6(vr0)
	vmmov mr0, r12
	addli r12, zero, 32
	vor.u.mh vr5{mr0}, r2, vr5
	exp.f.rn r2, r11
	vextracti.f r11, 7(vr0)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr5{mr0}, r8, vr5
	exp.f.rn r8, r11
	vextracti.f r11, 8(vr0)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr5{mr2}, r2, vr5
	exp.f.rn r2, r11
	vextracti.f r11, 9(vr0)
	vor.u.mh vr5{mr0}, r8, vr5
	exp.f.rn r8, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 512
	vor.u.mh vr5{mr0}, r2, vr5
	exp.f.rn r2, r11
	vextracti.f r11, 11(vr0)
	vmmov mr0, r12
	addli r12, zero, 1024
	vor.u.mh vr5{mr0}, r8, vr5
	exp.f.rn r8, r11
	vextracti.f r11, 12(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vmmov mr2, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr5{mr0}, r2, vr5
	exp.f.rn r2, r11
	vextracti.f r11, 13(vr0)
	vor.u.mh vr5{mr2}, r8, vr5
	exp.f.rn r8, r11
	vextracti.f r11, 14(vr0)
	vmmov mr2, r14
	addli r14, zero, 8192
	vor.u.mh vr5{mr2}, r2, vr5
	exp.f.rn r2, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -5760
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vmmov mr2, r14
	lui r14, 4
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr5{mr2}, r8, vr5
	exp.f.rn r8, r12
	vextracti.f r12, 1(vr0)
	vmmov mr2, r14
	lui r14, 8
	exp.f.rn r11, r11
	vor.u.mh vr5{mr2}, r2, vr5
	exp.f.rn r2, r12
	vextracti.f r12, 2(vr0)
	vmmov mr2, r14
	addli r14, zero, 4096
	vor.u.mh vr5{mr2}, r8, vr5
	exp.f.rn r8, r12
	addli r12, zero, 2
	vor.u.mh vr3{mr3}, r11, vr3
	vextracti.f r11, 3(vr0)
	vmmov mr2, r12
	addli r12, zero, 4
	vor.u.mh vr3{mr2}, r2, vr3
	exp.f.rn r2, r11
	vextracti.f r11, 4(vr0)
	vmmov mr2, r12
	addli r12, zero, 8
	vor.u.mh vr3{mr2}, r8, vr3
	exp.f.rn r8, r11
	vextracti.f r11, 5(vr0)
	vmmov mr2, r12
	addli r12, zero, 16
	vor.u.mh vr3{mr2}, r2, vr3
	exp.f.rn r2, r11
	vextracti.f r11, 6(vr0)
	vmmov mr2, r12
	addli r12, zero, 32
	vor.u.mh vr3{mr2}, r8, vr3
	exp.f.rn r8, r11
	vextracti.f r11, 7(vr0)
	vmmov mr2, r12
	addli r12, zero, 64
	vor.u.mh vr3{mr2}, r2, vr3
	exp.f.rn r2, r11
	vextracti.f r11, 8(vr0)
	vmmov mr2, r12
	addli r12, zero, 128
	vor.u.mh vr3{mr2}, r8, vr3
	exp.f.rn r8, r11
	vextracti.f r11, 9(vr0)
	vmmov mr2, r12
	addli r12, zero, 256
	vor.u.mh vr3{mr2}, r2, vr3
	exp.f.rn r2, r11
	vextracti.f r11, 10(vr0)
	vmmov mr2, r12
	addli r12, zero, 512
	vor.u.mh vr3{mr2}, r8, vr3
	exp.f.rn r8, r11
	vextracti.f r11, 11(vr0)
	vmmov mr2, r12
	addli r12, zero, 2048
	vor.u.mh vr3{mr2}, r2, vr3
	exp.f.rn r2, r11
	vextracti.f r11, 12(vr0)
	vor.u.mh vr3{mr0}, r8, vr3
	exp.f.rn r8, r11
	vextracti.f r11, 13(vr0)
	vmmov mr3, mr0
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr3{mr0}, r2, vr3
	exp.f.rn r2, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	.loc	1 354 19                        # _p800_reduce.py:354:19
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr4
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vor.u.mh vr3{mr0}, r8, vr3
	exp.f.rn r8, r11
	vmmov mr0, r14
	vextracti.f r11, 0(vr0)
	lui r14, 4
	exp.f.rn r11, r11
	vor.u.mh vr3{mr0}, r2, vr3
	exp.f.rn r2, r12
	vmmov mr0, r14
	vextracti.f r12, 1(vr0)
	lui r14, 8
	vor.u.mh vr3{mr0}, r8, vr3
	vmmov mr0, r14
	exp.f.rn r8, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 4096
	vor.u.mh vr3{mr0}, r2, vr3
	addli r2, zero, 1
	vmmov mr0, r2
	exp.f.rn r2, r12
	addli r12, zero, 2
	vor.u.mh vr7{mr0}, r11, vr7
	vextracti.f r11, 3(vr0)
	vmmov mr0, r12
	addli r12, zero, 4
	vor.u.mh vr7{mr0}, r8, vr7
	exp.f.rn r8, r11
	vextracti.f r11, 4(vr0)
	vmmov mr0, r12
	addli r12, zero, 8
	vor.u.mh vr7{mr0}, r2, vr7
	exp.f.rn r2, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 16
	vor.u.mh vr7{mr0}, r8, vr7
	exp.f.rn r8, r11
	vextracti.f r11, 6(vr0)
	vmmov mr0, r12
	addli r12, zero, 32
	vor.u.mh vr7{mr0}, r2, vr7
	exp.f.rn r2, r11
	vextracti.f r11, 7(vr0)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr7{mr0}, r8, vr7
	exp.f.rn r8, r11
	vextracti.f r11, 8(vr0)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr7{mr0}, r2, vr7
	exp.f.rn r2, r11
	vextracti.f r11, 9(vr0)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr7{mr0}, r8, vr7
	exp.f.rn r8, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr7{mr0}, r2, vr7
	exp.f.rn r2, r11
	vextracti.f r11, 11(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr7{mr2}, r8, vr7
	exp.f.rn r8, r11
	vextracti.f r11, 12(vr0)
	vor.u.mh vr7{mr3}, r2, vr7
	exp.f.rn r2, r11
	vextracti.f r11, 13(vr0)
	vor.u.mh vr7{mr0}, r8, vr7
	exp.f.rn r8, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr7{mr0}, r2, vr7
	exp.f.rn r2, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -6016
	vmmov mr0, r14
	.loc	1 354 15                        # _p800_reduce.py:354:15
	lui r14, 4
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr0)
	vor.u.mh vr7{mr0}, r8, vr7
	exp.f.rn r8, r12
	vmmov mr0, r14
	vextracti.f r12, 1(vr0)
	lui r14, 8
	exp.f.rn r11, r11
	vor.u.mh vr7{mr0}, r2, vr7
	vmmov mr0, r14
	exp.f.rn r2, r12
	vextracti.f r12, 2(vr0)
	addli r14, zero, 4096
	vor.u.mh vr7{mr0}, r8, vr7
	addli r8, zero, 1
	vmmov mr0, r8
	exp.f.rn r8, r12
	addli r12, zero, 2
	vor.u.mh vr9{mr0}, r11, vr9
	vextracti.f r11, 3(vr0)
	vmmov mr0, r12
	addli r12, zero, 4
	vor.u.mh vr9{mr0}, r2, vr9
	exp.f.rn r2, r11
	vextracti.f r11, 4(vr0)
	vmmov mr0, r12
	addli r12, zero, 8
	vor.u.mh vr9{mr0}, r8, vr9
	exp.f.rn r8, r11
	vextracti.f r11, 5(vr0)
	vmmov mr0, r12
	addli r12, zero, 16
	vor.u.mh vr9{mr0}, r2, vr9
	exp.f.rn r2, r11
	vextracti.f r11, 6(vr0)
	vmmov mr0, r12
	addli r12, zero, 32
	vor.u.mh vr9{mr0}, r8, vr9
	exp.f.rn r8, r11
	vextracti.f r11, 7(vr0)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr9{mr0}, r2, vr9
	exp.f.rn r2, r11
	vextracti.f r11, 8(vr0)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr9{mr0}, r8, vr9
	exp.f.rn r8, r11
	vextracti.f r11, 9(vr0)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr9{mr0}, r2, vr9
	exp.f.rn r2, r11
	vextracti.f r11, 10(vr0)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr9{mr0}, r8, vr9
	exp.f.rn r8, r11
	vextracti.f r11, 11(vr0)
	vmmov mr0, r12
	vextracti.f r12, 15(vr0)
	vor.u.mh vr9{mr2}, r2, vr9
	exp.f.rn r2, r11
	vextracti.f r11, 12(vr0)
	vor.u.mh vr9{mr3}, r8, vr9
	exp.f.rn r8, r11
	vextracti.f r11, 13(vr0)
	vor.u.mh vr9{mr0}, r2, vr9
	exp.f.rn r2, r11
	vextracti.f r11, 14(vr0)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr9{mr0}, r8, vr9
	exp.f.rn r8, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -5696
	vmmov mr0, r14
	.loc	1 354 15                        # _p800_reduce.py:354:15
	lui r14, 4
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr0{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr4{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr4)
	vadd.s.mz vr0{mr1}, zero, vr2
	vor.u.mh vr9{mr0}, r2, vr9
	exp.f.rn r2, r12
	vmmov mr0, r14
	vextracti.f r12, 1(vr4)
	lui r14, 8
	exp.f.rn r11, r11
	vor.u.mh vr9{mr0}, r8, vr9
	vmmov mr0, r14
	exp.f.rn r8, r12
	vextracti.f r12, 2(vr4)
	addli r14, zero, 4096
	vor.u.mh vr9{mr0}, r2, vr9
	addli r2, zero, 1
	vmmov mr0, r2
	exp.f.rn r2, r12
	addli r12, zero, 2
	vor.u.mh vr0{mr0}, r11, vr0
	vextracti.f r11, 3(vr4)
	vmmov mr0, r12
	addli r12, zero, 4
	vor.u.mh vr0{mr0}, r8, vr0
	exp.f.rn r8, r11
	vextracti.f r11, 4(vr4)
	vmmov mr0, r12
	addli r12, zero, 8
	vor.u.mh vr0{mr0}, r2, vr0
	exp.f.rn r2, r11
	vextracti.f r11, 5(vr4)
	vmmov mr0, r12
	addli r12, zero, 16
	vor.u.mh vr0{mr0}, r8, vr0
	exp.f.rn r8, r11
	vextracti.f r11, 6(vr4)
	vmmov mr0, r12
	addli r12, zero, 32
	vor.u.mh vr0{mr0}, r2, vr0
	exp.f.rn r2, r11
	vextracti.f r11, 7(vr4)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr0{mr0}, r8, vr0
	exp.f.rn r8, r11
	vextracti.f r11, 8(vr4)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr0{mr0}, r2, vr0
	exp.f.rn r2, r11
	vextracti.f r11, 9(vr4)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr0{mr0}, r8, vr0
	exp.f.rn r8, r11
	vextracti.f r11, 10(vr4)
	vmmov mr0, r12
	addli r12, zero, 2048
	vor.u.mh vr0{mr0}, r2, vr0
	exp.f.rn r2, r11
	vextracti.f r11, 11(vr4)
	vmmov mr0, r12
	vextracti.f r12, 15(vr4)
	vor.u.mh vr0{mr2}, r8, vr0
	exp.f.rn r8, r11
	vextracti.f r11, 12(vr4)
	vor.u.mh vr0{mr3}, r2, vr0
	exp.f.rn r2, r11
	vextracti.f r11, 13(vr4)
	vor.u.mh vr0{mr0}, r8, vr0
	exp.f.rn r8, r11
	vextracti.f r11, 14(vr4)
	vmmov mr0, r14
	addli r14, zero, 8192
	vor.u.mh vr0{mr0}, r2, vr0
	exp.f.rn r2, r11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r11, r30, -5632
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vmmov mr0, r14
	lui r14, 4
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr4{mr1}, 0(r11)        # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr4{mr1}, r1, vr4
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r11, 0(vr4)
	vor.u.mh vr0{mr0}, r8, vr0
	exp.f.rn r8, r12
	vmmov mr0, r14
	vextracti.f r12, 1(vr4)
	lui r14, 8
	exp.f.rn r11, r11
	vor.u.mh vr0{mr0}, r2, vr0
	vmmov mr0, r14
	exp.f.rn r2, r12
	vextracti.f r12, 2(vr4)
	vextracti.f r14, 14(vr4)
	vor.u.mh vr0{mr0}, r8, vr0
	addli r8, zero, 1
	vmmov mr0, r8
	exp.f.rn r8, r12
	addli r12, zero, 2
	vor.u.mh vr11{mr0}, r11, vr11
	vextracti.f r11, 3(vr4)
	vmmov mr0, r12
	addli r12, zero, 4
	vor.u.mh vr11{mr0}, r2, vr11
	exp.f.rn r2, r11
	vextracti.f r11, 4(vr4)
	vmmov mr0, r12
	addli r12, zero, 8
	vor.u.mh vr11{mr0}, r8, vr11
	exp.f.rn r8, r11
	vextracti.f r11, 5(vr4)
	vmmov mr0, r12
	addli r12, zero, 16
	vor.u.mh vr11{mr0}, r2, vr11
	exp.f.rn r2, r11
	vextracti.f r11, 6(vr4)
	vmmov mr0, r12
	addli r12, zero, 32
	vor.u.mh vr11{mr0}, r8, vr11
	exp.f.rn r8, r11
	vextracti.f r11, 7(vr4)
	vmmov mr0, r12
	addli r12, zero, 64
	vor.u.mh vr11{mr0}, r2, vr11
	exp.f.rn r2, r11
	vextracti.f r11, 8(vr4)
	vmmov mr0, r12
	addli r12, zero, 128
	vor.u.mh vr11{mr0}, r8, vr11
	exp.f.rn r8, r11
	vextracti.f r11, 9(vr4)
	vmmov mr0, r12
	addli r12, zero, 256
	vor.u.mh vr11{mr0}, r2, vr11
	exp.f.rn r2, r11
	vextracti.f r11, 10(vr4)
	vmmov mr0, r12
	vextracti.f r12, 15(vr4)
	vor.u.mh vr11{mr0}, r8, vr11
	exp.f.rn r8, r11
	vextracti.f r11, 11(vr4)
	vmmov mr0, r16
	addli r16, zero, 4096
	vor.u.mh vr11{mr2}, r2, vr11
	exp.f.rn r2, r11
	vextracti.f r11, 12(vr4)
	vor.u.mh vr11{mr3}, r8, vr11
	exp.f.rn r8, r11
	vextracti.f r11, 13(vr4)
	vadd.s.mz vr4{mr1}, zero, vr2
	exp.f.rn r11, r11
	vor.u.mh vr11{mr0}, r2, vr11
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r2, r30, -5952
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vmmov mr0, r16
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr8{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r22, 3(vr8)
	vextracti.f r2, 15(vr8)
	vextracti.f r16, 14(vr8)
	vor.u.mh vr11{mr0}, r8, vr11
	exp.f.rn r8, r14
	vmmov mr0, r17
	vextracti.f r14, 0(vr8)
	lui r17, 4
	vmmov mr3, r17
	vextracti.f r17, 13(vr8)
	vor.u.mh vr11{mr0}, r11, vr11
	exp.f.rn r11, r12
	exp.f.rn r12, r14
	vextracti.f r14, 1(vr8)
	exp.f.rn r20, r14
	lui r14, 8
	vor.u.mh vr11{mr3}, r8, vr11
	vextracti.f r8, 2(vr8)
	vmmov mr3, r14
	addli r14, r30, -4352
	exp.f.rn r21, r8
	addli r8, r30, -4160
	vor.u.mh vr11{mr3}, r11, vr11
	addli r11, zero, 1
	vmmov mr3, r11
	vextracti.f r11, 4(vr8)
	vor.u.mh vr4{mr3}, r12, vr4
	vload_mask16.mz vr10{mr1}, 0(r8)        # 64-byte Folded Reload
	addli r8, r30, -4224
	addli r12, r30, -4288
	vload_mask16.mz vr1{mr1}, 0(r8)         # 64-byte Folded Reload
	addli r8, zero, 2
	exp.f.rn r11, r11
	vmmov mr3, r8
	exp.f.rn r8, r22
	vor.u.mh vr4{mr3}, r20, vr4
.Ltmp3:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr10, vr1
	vload_mask16.mz vr10{mr1}, 0(r12)       # 64-byte Folded Reload
.Ltmp4:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	addli r12, zero, 4
	vmmov mr3, r12
	vextracti.f r12, 5(vr8)
	vor.u.mh vr4{mr3}, r21, vr4
.Ltmp5:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr10
	vload_mask16.mz vr10{mr1}, 0(r14)       # 64-byte Folded Reload
.Ltmp6:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	addli r14, zero, 8
	vmmov mr3, r14
	addli r14, r30, -4416
	vor.u.mh vr4{mr3}, r8, vr4
	exp.f.rn r8, r12
	vextracti.f r12, 6(vr8)
.Ltmp7:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr10
	vload_mask16.mz vr10{mr1}, 0(r14)       # 64-byte Folded Reload
.Ltmp8:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	addli r14, zero, 16
	vmmov mr3, r14
	addli r14, r30, -4480
	vor.u.mh vr4{mr3}, r11, vr4
	exp.f.rn r11, r12
	vextracti.f r12, 7(vr8)
.Ltmp9:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr10
	vload_mask16.mz vr10{mr1}, 0(r14)       # 64-byte Folded Reload
.Ltmp10:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	addli r14, zero, 32
	vmmov mr3, r14
	addli r14, r30, -4544
	vor.u.mh vr4{mr3}, r8, vr4
	exp.f.rn r8, r12
	vextracti.f r12, 8(vr8)
.Ltmp11:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr10
	vload_mask16.mz vr10{mr1}, 0(r14)       # 64-byte Folded Reload
.Ltmp12:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	addli r14, zero, 64
	vmmov mr3, r14
	addli r14, r30, -4608
	vor.u.mh vr4{mr3}, r11, vr4
	exp.f.rn r11, r12
	vextracti.f r12, 9(vr8)
.Ltmp13:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr10
	vload_mask16.mz vr10{mr1}, 0(r14)       # 64-byte Folded Reload
.Ltmp14:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	addli r14, zero, 128
	vmmov mr3, r14
	addli r14, r30, -4672
	vor.u.mh vr4{mr3}, r8, vr4
	exp.f.rn r8, r12
	vextracti.f r12, 10(vr8)
.Ltmp15:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr10
	vload_mask16.mz vr10{mr1}, 0(r14)       # 64-byte Folded Reload
.Ltmp16:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	addli r14, zero, 256
	vmmov mr3, r14
	addli r14, r30, -4736
	vor.u.mh vr4{mr3}, r11, vr4
	exp.f.rn r11, r12
	vextracti.f r12, 11(vr8)
.Ltmp17:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr10
	vload_mask16.mz vr10{mr1}, 0(r14)       # 64-byte Folded Reload
	addli r14, r30, -4864
.Ltmp18:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vor.u.mh vr4{mr2}, r8, vr4
	exp.f.rn r8, r12
	vextracti.f r12, 12(vr8)
	vload_mask16.mz vr8{mr1}, 0(r14)        # 64-byte Folded Reload
	addli r14, zero, 1024
	vmmov mr3, r14
	addli r14, r30, -5248
	vor.u.mh vr4{mr3}, r11, vr4
	exp.f.rn r11, r12
	.loc	1 354 19 is_stmt 0              # _p800_reduce.py:354:19
	addli r12, r30, -5568
.Ltmp19:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr10
	vadd.f.mz.rn vr1{mr1}, vr1, vr8
.Ltmp20:
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr8{mr1}, 0(r12)        # 64-byte Folded Reload
	addli r12, r30, -5120
	#APP
	vadd.f.mz.rn vr8{mr1}, r1, vr8
	#NO_APP
	addli r1, r30, -4992
	vload_mask16.mz vr10{mr1}, 0(r1)        # 64-byte Folded Reload
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	addli r1, zero, 2048
	vmmov mr3, r1
	exp.f.rn r1, r17
	vor.u.mh vr4{mr3}, r8, vr4
	vextracti.f r8, 1(vr8)
.Ltmp21:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr10
	vload_mask16.mz vr10{mr1}, 0(r12)       # 64-byte Folded Reload
.Ltmp22:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	addli r12, zero, 4096
	exp.f.rn r8, r8
	vmmov mr3, r12
	vextracti.f r12, 0(vr8)
	vor.u.mh vr4{mr3}, r11, vr4
	exp.f.rn r11, r16
.Ltmp23:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr10
	vload_mask16.mz vr10{mr1}, 0(r14)       # 64-byte Folded Reload
.Ltmp24:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vor.u.mh vr4{mr0}, r1, vr4
	exp.f.rn r1, r2
	exp.f.rn r2, r12
	addli r12, r30, -5376
.Ltmp25:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr10
	vload_mask16.mz vr10{mr1}, 0(r12)       # 64-byte Folded Reload
.Ltmp26:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	lui r12, 4
	vmmov mr3, r12
	addli r12, r30, -5440
	vor.u.mh vr4{mr3}, r11, vr4
	vextracti.f r11, 2(vr8)
.Ltmp27:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr10
	vload_mask16.mz vr10{mr1}, 0(r12)       # 64-byte Folded Reload
.Ltmp28:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	lui r12, 8
	vmmov mr3, r12
	vor.u.mh vr4{mr3}, r1, vr4
	addli r1, zero, 1
	vmmov mr3, r1
	exp.f.rn r1, r11
	addli r11, r30, -5568
.Ltmp29:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr10
	vadd.s.mz vr10{mr1}, zero, vr2
.Ltmp30:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vor.u.mh vr10{mr3}, r2, vr10
	vstore_mask16.mz vr6{mr1}, 0(r11)       # 64-byte Folded Spill
	addli r11, r30, -5056
.Ltmp31:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr6
.Ltmp32:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vextracti.f r2, 3(vr8)
	vload_mask16.mz vr2{mr1}, 0(r11)        # 64-byte Folded Reload
	addli r11, zero, 2
	exp.f.rn r2, r2
	vmmov mr3, r11
	addli r11, r30, -5312
	vor.u.mh vr10{mr3}, r8, vr10
	vextracti.f r8, 4(vr8)
	vload_mask16.mz vr6{mr1}, 0(r11)        # 64-byte Folded Reload
	addli r11, zero, 4
	vmmov mr3, r11
	addli r11, r30, -5184
	vor.u.mh vr10{mr3}, r1, vr10
	exp.f.rn r1, r8
	vextracti.f r8, 5(vr8)
.Ltmp33:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr6
	vload_mask16.mz vr6{mr1}, 0(r11)        # 64-byte Folded Reload
.Ltmp34:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	addli r11, zero, 8
	vmmov mr3, r11
	addli r11, r30, -6080
	vor.u.mh vr10{mr3}, r2, vr10
	exp.f.rn r2, r8
	vextracti.f r8, 6(vr8)
.Ltmp35:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr6
	vadd.f.mz.rn vr1{mr1}, vr1, vr2
	vload_mask16.mz vr2{mr1}, 0(r11)        # 64-byte Folded Reload
.Ltmp36:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	addli r11, zero, 16
	vmmov mr3, r11
	addli r11, zero, 32
	vor.u.mh vr10{mr3}, r1, vr10
	exp.f.rn r1, r8
	vextracti.f r8, 7(vr8)
	vmmov mr3, r11
	addli r11, r30, -4800
.Ltmp37:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr2
.Ltmp38:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vor.u.mh vr10{mr3}, r2, vr10
	vload_mask16.mz vr6{mr1}, 0(r11)        # 64-byte Folded Reload
	addli r11, zero, 64
	exp.f.rn r2, r8
	vextracti.f r8, 8(vr8)
	vmmov mr3, r11
	addli r11, r30, -4928
	vor.u.mh vr10{mr3}, r1, vr10
	exp.f.rn r1, r8
	vextracti.f r8, 9(vr8)
.Ltmp39:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr6
	vload_mask16.mz vr6{mr1}, 0(r11)        # 64-byte Folded Reload
	addli r11, r30, -5824
	vadd.f.mz.rn vr1{mr1}, vr1, vr6
	vload_mask16.mz vr6{mr1}, 0(r11)        # 64-byte Folded Reload
.Ltmp40:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	addli r11, zero, 128
	vmmov mr3, r11
	addli r11, zero, 256
	vor.u.mh vr10{mr3}, r2, vr10
	exp.f.rn r2, r8
	vextracti.f r8, 10(vr8)
	vmmov mr3, r11
	addli r11, r30, -5632
.Ltmp41:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr6
.Ltmp42:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vor.u.mh vr10{mr3}, r1, vr10
	exp.f.rn r1, r8
	vextracti.f r8, 11(vr8)
	vstore_mask16.mz vr5{mr1}, 0(r11)       # 64-byte Folded Spill
	addli r11, zero, 1024
.Ltmp43:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr5
.Ltmp44:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vor.u.mh vr10{mr2}, r2, vr10
	exp.f.rn r2, r8
	vextracti.f r8, 12(vr8)
	vmmov mr2, r11
	addli r11, zero, 2048
.Ltmp45:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr3
.Ltmp46:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vor.u.mh vr10{mr2}, r1, vr10
	exp.f.rn r1, r8
	vextracti.f r8, 13(vr8)
	vmmov mr2, r11
	addli r11, zero, 4096
.Ltmp47:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr7
.Ltmp48:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vor.u.mh vr10{mr2}, r2, vr10
	exp.f.rn r2, r8
	vextracti.f r8, 14(vr8)
	vmmov mr2, r11
.Ltmp49:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr9
.Ltmp50:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vor.u.mh vr10{mr2}, r1, vr10
	exp.f.rn r1, r8
	vextracti.f r8, 15(vr8)
.Ltmp51:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr0
.Ltmp52:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vor.u.mh vr10{mr0}, r2, vr10
	exp.f.rn r2, r8
	lui r8, 4
	vmmov mr0, r8
.Ltmp53:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr11
.Ltmp54:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vor.u.mh vr10{mr0}, r1, vr10
	lui r1, 8
	vmmov mr0, r1
	addli r1, r30, -5504
.Ltmp55:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr4
.Ltmp56:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vor.u.mh vr10{mr0}, r2, vr10
.Ltmp57:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr8{mr1}, vr1, vr10
	vstore_mask16.mz vr10{mr1}, 0(r1)       # 64-byte Folded Spill
	vextracti.f r1, 0(vr8)
	vextracti.f r2, 1(vr8)
	add.f.rn r1, r1, r2
	vextracti.f r2, 2(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 3(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 4(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 5(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 6(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 7(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 8(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 9(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 10(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 11(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 12(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 13(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 14(vr8)
	add.f.rn r1, r2, r1
	vextracti.f r2, 15(vr8)
	add.f.rn r1, r2, r1
	stores.w r1, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r13, zero, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	loads.w r1, 0(r10)
	loads.w r2, 4(r10)
	loads.w r8, 8(r10)
	add.f.rn r1, r1, r2
	loads.w r2, 12(r10)
	add.f.rn r1, r1, r8
	add.f.rn r1, r1, r2
	stores.w r1, 0(r10)
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r1, 0(r10)
.Ltmp58:
	.loc	1 356 25                        # _p800_reduce.py:356:25
	lui r2, 260096
	addli r23, zero, 2
	div.f.rn r1, r2, r1
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r2, r30, -4160
	#APP
	vmul.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16 is_stmt 0              # _p800_reduce.py:357:16
	addli r2, r30, -2048
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr8{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr8{mr1}, 0(r2)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r2, r30, -4224
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r2, r30, -1984
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r2)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r2, r30, -4288
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r2, r30, -1920
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r2)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r2, r30, -4352
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r2, r30, -1856
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r2)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r2, r30, -4416
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r2, r30, -1792
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r2)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r2, r30, -4480
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r2, r30, -1728
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r2)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r2, r30, -4544
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r2, r30, -1664
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r2)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r2, r30, -4608
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r2, r30, -1600
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r2)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r2, r30, -4672
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r2, r30, -1536
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r2)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r2, r30, -4736
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r2, r30, -1472
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r2)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r2, r30, -4864
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r2, r30, -1408
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r2)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r2, r30, -4992
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r2, r30, -1344
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r2)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r2, r30, -5120
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r2, r30, -1280
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r2)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r2, r30, -5248
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r2, r30, -1216
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r2)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r2, r30, -5376
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r2, r30, -1152
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r2)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r2, r30, -5440
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r2, r30, -1088
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r2)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r2, r30, -5568
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -5312
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -1024(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -5184
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -960(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -5056
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -896(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -4800
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -832(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -768(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -4928
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -704(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -5632
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -640(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr6
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -576(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	vload_mask16.mz vr1{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -5504
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -512(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr3
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -448(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr7
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -384(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr9
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -320(r30)
	vstore_mask16.mz vr0{mr1}, -256(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr0{mr1}, r1, vr11
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr0{mr1}, -192(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr0{mr1}, r1, vr4
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr0{mr1}, -128(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	vload_mask16.mz vr0{mr1}, 0(r2)         # 64-byte Folded Reload
	#APP
	vmul.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr0{mr1}, -64(r30)
	.loc	1 335 0 is_stmt 1               # _p800_reduce.py:335:0
	mfence { lm }
	loadli.w r2,  64(r30)
	loadli.w r1,  -6132(r30)                # 4-byte Folded Reload
	blt.s r15, r2, .LBB0_2
# %bb.10:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0 is_stmt 0                 # _p800_reduce.py:0:0
	addli r1, zero, 0
	j .LBB0_2
.LBB0_11:                               # %._crit_edge
	.loc	1 358 4 epilogue_begin is_stmt 1 # _p800_reduce.py:358:4
	addli sp, r30, -6144
	addli sp, sp, 6144
	mfence { lm, sm, gm }
	exit
.Ltmp59:
.Lfunc_end0:
	.size	_tle_row_softmax, .Lfunc_end0-_tle_row_softmax
	.cfi_endproc
                                        # -- End function
	.type	global_smem,@object             # @global_smem
	.section	".sm.LLVMDialectModule;global_smem","a",@nobits
	.p2align	3, 0x0
global_smem:
	.size	global_smem, 0

	.type	XPU_KERNEL_PARAM_SIZE__tle_row_softmax,@object # @XPU_KERNEL_PARAM_SIZE__tle_row_softmax
	.section	.XPU.KERNEL_PARAM_SIZE._tle_row_softmax,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE__tle_row_softmax
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE__tle_row_softmax:
	.long	104                             # 0x68
	.size	XPU_KERNEL_PARAM_SIZE__tle_row_softmax, 4

	.type	XPU_KERNEL_STACK_SIZE__tle_row_softmax,@object # @XPU_KERNEL_STACK_SIZE__tle_row_softmax
	.section	.XPU.KERNEL_STACK_SIZE._tle_row_softmax,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE__tle_row_softmax
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE__tle_row_softmax:
	.long	6272                            # 0x1880
	.size	XPU_KERNEL_STACK_SIZE__tle_row_softmax, 4

	.type	XPU_KERNEL_DYNAMIC_LM__tle_row_softmax,@object # @XPU_KERNEL_DYNAMIC_LM__tle_row_softmax
	.section	.XPU.KERNEL_DYNAMIC_LM._tle_row_softmax,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM__tle_row_softmax
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM__tle_row_softmax:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM__tle_row_softmax, 4

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
	.long	.Ltmp55-.Lfunc_begin0
	.long	.Ltmp56-.Lfunc_begin0
	.long	.Ltmp57-.Lfunc_begin0
	.long	.Ltmp58-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"_p800_reduce.py"               # string offset=7
.Linfo_string2:
.asciz	"/opt/hsp/triton/experimental/graph_fusion" # string offset=23
.Linfo_string3:
.asciz	"_tle_row_softmax"              # string offset=65
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
