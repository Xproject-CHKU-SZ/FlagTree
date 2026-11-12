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
	addli sp, sp, -6592
	lui r2, :hi20:global_smem
	.file	2 "/opt/hsp/triton/language" "standard.py"
	.loc	2 296 36 prologue_end           # standard.py:296:36
	core_id r8
	lui r1, 8
	addli r30, sp, 6464
	lui r10, 4
	slli r9, r8, 2
	addli r2, r2, :lo12:global_smem
	ori r1, r1, 16
	loadli.w r7,  96(r30)
	loadli.w r6,  92(r30)
	loadli.w r3,  100(r30)
	add.s r5, r2, r9
	mul.s r7, r7, r6
	load_param_i r6, 0
	add.s r4, r5, r1
.Ltmp0:
	.loc	1 353 24                        # _p800_reduce.py:353:24
	add.s r5, r5, r10
	mul.s r3, r7, r3
	storeli.w r4, -6404(r30)                # 4-byte Folded Spill
.Ltmp1:
	.loc	2 296 36                        # standard.py:296:36
	stores.w zero, 0(r4)
	lui r4, 15
	mfence { lm, sm, gm }
	ori r4, r4, 4095
	csr_set csr3, r4
	sync_group
	storeli.w r5, -6408(r30)                # 4-byte Folded Spill
.Ltmp2:
	.loc	1 353 24                        # _p800_reduce.py:353:24
	stores.w zero, 0(r5)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	storeli.w r3, -6412(r30)                # 4-byte Folded Spill
	ble.s r3, r6, .LBB0_11
# %bb.1:                                # %.lr.ph
	.loc	1 0 24 is_stmt 0                # _p800_reduce.py:0:24
	andi r13, r8, 3
	load.d r[15:16], 48(r30)
	addli r3, zero, 2
	loadli.w r19,  40(r30)
	load.d r[20:21], 32(r30)
	loadli.w r24,  12(r30)
	srli r8, r8, 2
	loadli.w r26,  68(r30)
	load.d r[27:28], 24(r30)
	load.d r[11:12], 80(r30)
	addli r5, r30, -6464
	slli r25, r13, 9
	zext_int2long r[17:18], r25
	mul.sl r[22:23], r[15:16], r[17:18]
	sub.s r16, r19, r25
	lui r19, 1048575
	sll.d r[22:23], r[22:23], r3
	addli r3, r30, -6424
	max.s r16, r16, zero
	ori r19, r19, 4080
	add.ul r[14:15], r[20:21], r[22:23]
	and r9, r9, r19
	store.d r[14:15], 0(r3)                 # 8-byte Folded Spill
	addli r14, zero, 512
	load_param_i r3, 1
	add.s r2, r2, r9
	min.s r16, r16, r14
	storeli.w r3, -6428(r30)                # 4-byte Folded Spill
	add.s r9, r2, r10
	add.s r10, r2, r1
	slli r3, r16, 2
	sub.s r16, r24, r25
	andi r24, r8, 15
	max.s r8, r16, zero
	storeli.w r3, -6432(r30)                # 4-byte Folded Spill
	zext_int2long r[19:20], r24
	addli r3, r30, -6440
	sub.s r16, r26, r25
	store.d r[19:20], 0(r3)                 # 8-byte Folded Spill
	min.s r8, r8, r14
	mul.sl r[19:20], r[27:28], r[17:18]
	addli r3, r30, -6448
	max.s r16, r16, zero
	store.d r[19:20], 0(r3)                 # 8-byte Folded Spill
	slli r3, r8, 2
	min.s r1, r16, r14
	addli r19, r30, -256
	storeli.w r3, -6452(r30)                # 4-byte Folded Spill
	mul.sl r[2:3], r[11:12], r[17:18]
	slli r14, r1, 2
	store.d r[2:3], 0(r5)                   # 8-byte Folded Spill
	addli r5, r30, -2304
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 335 0 is_stmt 1               # _p800_reduce.py:335:0
	load.d r[2:3], 72(r30)
	addli r5, r30, -6464
	load.d r[7:8], 0(r5)                    # 8-byte Folded Reload
	addli r5, zero, 2
	mul.sl r[2:3], r[17:18], r[2:3]
	add.ul r[2:3], r[2:3], r[7:8]
	load.d r[7:8], 56(r30)
	sll.d r[2:3], r[2:3], r5
	lui r5, 983040
	or r1, r1, r5
	add.ul r[2:3], r[7:8], r[2:3]
	addli r5, r30, -2304
	s_lm2gm r1, r5, 0(r[2:3])
	loadli.w r1,  -6428(r30)                # 4-byte Folded Reload
	mfence { lm }
	add.s r6, r6, r1
	loadli.w r1,  -6412(r30)                # 4-byte Folded Reload
	blt.s r6, r1, .LBB0_3
	j .LBB0_11
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 # _p800_reduce.py:0:0
	loadli.w r1,  100(r30)
	loadli.w r2,  96(r30)
	.loc	1 335 0                         # _p800_reduce.py:335:0
	loadli.w r3,  -6432(r30)                # 4-byte Folded Reload
	div.s r1, r6, r1
	div.s r1, r1, r2
	lui r2, 983040
	or r2, r3, r2
	.loc	1 342 20 is_stmt 1              # _p800_reduce.py:342:20
	slli r17, r1, 4
	.loc	1 335 0                         # _p800_reduce.py:335:0
	addli r1, r30, -6424
	load.d r[7:8], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -4352
	l_gm2lm r2, r1, 0(r[7:8])
	or r2, r17, r24
	mfence { lm }
	loadli.w r3,  8(r30)
	loadli.w r1,  -6452(r30)                # 4-byte Folded Reload
	blt.s r2, r3, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0 is_stmt 0                 # _p800_reduce.py:0:0
	addli r1, zero, 0
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 335 0                         # _p800_reduce.py:335:0
	addli r3, r30, -6440
	sext_int2long r[17:18], r17
	lui r15, 983040
	load.d r[7:8], 0(r3)                    # 8-byte Folded Reload
	addli r3, r30, -6448
	or r1, r1, r15
	or.d r[17:18], r[17:18], r[7:8]
	load.d r[7:8], 16(r30)
	mul.sl r[20:21], r[17:18], r[7:8]
	load.d r[7:8], 0(r3)                    # 8-byte Folded Reload
	addli r3, zero, 2
	add.ul r[20:21], r[20:21], r[7:8]
	load.d r[7:8], 0(r30)
	sll.d r[20:21], r[20:21], r3
	add.ul r[20:21], r[7:8], r[20:21]
	l_gm2lm r1, r5, 0(r[20:21])
	.loc	1 352 17 is_stmt 1              # _p800_reduce.py:352:17
	addli r1, r30, -2304
	.loc	1 335 0                         # _p800_reduce.py:335:0
	mfence { lm }
	.loc	1 352 17                        # _p800_reduce.py:352:17
	vload_mask16.mz vr5{mr1}, 0(r1)
	addli r1, r30, -2240
	vload_mask16.mz vr3{mr1}, 0(r1)
	addli r1, r30, -2176
	vload_mask16.mz vr4{mr1}, 0(r1)
	addli r1, r30, -2112
	vload_mask16.mz vr2{mr1}, 0(r1)
	addli r1, r30, -2048
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -1984
	vload_mask16.mz vr0{mr1}, 0(r1)
	.loc	1 352 22 is_stmt 0              # _p800_reduce.py:352:22
	addli r1, r30, -4352
	vload_mask16.mz vr6{mr1}, 0(r1)
	.loc	1 352 17                        # _p800_reduce.py:352:17
	addli r1, r30, -1920
	vload_mask16.mz vr11{mr1}, 0(r1)
	addli r1, r30, -1856
	vload_mask16.mz vr10{mr1}, 0(r1)
	addli r1, r30, -1792
	vload_mask16.mz vr9{mr1}, 0(r1)
	addli r1, r30, -1728
	.loc	1 352 22                        # _p800_reduce.py:352:22
	vadd.f.mz.rn vr5{mr1}, vr5, vr6
	.loc	1 352 17                        # _p800_reduce.py:352:17
	vload_mask16.mz vr8{mr1}, 0(r1)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	addli r1, r30, -4288
	vload_mask16.mz vr7{mr1}, 0(r1)
	addli r1, r30, -6272
	vstore_mask16.mz vr5{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -4224
	vload_mask16.mz vr6{mr1}, 0(r1)
	addli r1, r30, -5632
	vadd.f.mz.rn vr3{mr1}, vr3, vr7
	vstore_mask16.mz vr3{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -4160
	vadd.f.mz.rn vr3{mr1}, vr4, vr6
	vload_mask16.mz vr7{mr1}, 0(r1)
	addli r1, r30, -5440
	vstore_mask16.mz vr3{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -4096
	vload_mask16.mz vr6{mr1}, 0(r1)
	addli r1, r30, -5504
	vadd.f.mz.rn vr2{mr1}, vr2, vr7
	vstore_mask16.mz vr2{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -4032
	vadd.f.mz.rn vr1{mr1}, vr1, vr6
	vload_mask16.mz vr7{mr1}, 0(r1)
	addli r1, r30, -5568
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3968
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -5312
	vadd.f.mz.rn vr0{mr1}, vr0, vr7
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3904
	vadd.f.mz.rn vr0{mr1}, vr11, vr1
	vload_mask16.mz vr7{mr1}, 0(r1)
	.loc	1 352 17                        # _p800_reduce.py:352:17
	addli r1, r30, -5376
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -1664
	vload_mask16.mz vr1{mr1}, 0(r1)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	addli r1, r30, -5056
	vadd.f.mz.rn vr0{mr1}, vr10, vr7
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -3840
	vload_mask16.mz vr7{mr1}, 0(r1)
	addli r1, r30, -3776
	vload_mask16.mz vr10{mr1}, 0(r1)
	addli r1, r30, -3712
	vload_mask16.mz vr0{mr1}, 0(r1)
	addli r1, r30, -5184
	vadd.f.mz.rn vr2{mr1}, vr9, vr7
	vstore_mask16.mz vr2{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr2{mr1}, vr8, vr10
	addli r1, r30, -4480
	vadd.f.mz.rn vr0{mr1}, vr1, vr0
	vstore_mask16.mz vr2{mr1}, 0(r1)        # 64-byte Folded Spill
	.loc	1 352 17                        # _p800_reduce.py:352:17
	addli r1, r30, -4544
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -1600
	vload_mask16.mz vr0{mr1}, 0(r1)
	addli r1, r30, -1536
	vload_mask16.mz vr7{mr1}, 0(r1)
	addli r1, r30, -1472
	vload_mask16.mz vr10{mr1}, 0(r1)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	addli r1, r30, -3648
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -3584
	vload_mask16.mz vr8{mr1}, 0(r1)
	addli r1, r30, -3520
	vload_mask16.mz vr9{mr1}, 0(r1)
	addli r1, r30, -5120
	vadd.f.mz.rn vr0{mr1}, vr0, vr1
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr7, vr8
	addli r1, r30, -4928
	vadd.f.mz.rn vr11{mr1}, vr10, vr9
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	.loc	1 352 17                        # _p800_reduce.py:352:17
	addli r1, r30, -1408
	vload_mask16.mz vr0{mr1}, 0(r1)
	addli r1, r30, -1344
	vload_mask16.mz vr7{mr1}, 0(r1)
	addli r1, r30, -1280
	vload_mask16.mz vr9{mr1}, 0(r1)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	addli r1, r30, -3456
	vload_mask16.mz vr10{mr1}, 0(r1)
	addli r1, r30, -3392
	vload_mask16.mz vr8{mr1}, 0(r1)
	addli r1, r30, -3328
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -4864
	vadd.f.mz.rn vr0{mr1}, vr0, vr10
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr7, vr8
	addli r1, r30, -5696
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr9, vr1
	.loc	1 352 17                        # _p800_reduce.py:352:17
	addli r1, r30, -4736
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -1216
	vload_mask16.mz vr0{mr1}, 0(r1)
	addli r1, r30, -1152
	vload_mask16.mz vr1{mr1}, 0(r1)
	addli r1, r30, -1088
	vload_mask16.mz vr7{mr1}, 0(r1)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	addli r1, r30, -3264
	vload_mask16.mz vr8{mr1}, 0(r1)
	addli r1, r30, -3200
	vload_mask16.mz vr9{mr1}, 0(r1)
	addli r1, r30, -3136
	vload_mask16.mz vr10{mr1}, 0(r1)
	addli r1, r30, -4608
	vadd.f.mz.rn vr0{mr1}, vr0, vr8
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr1, vr9
	addli r1, r30, -4672
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr7, vr10
	.loc	1 352 17                        # _p800_reduce.py:352:17
	addli r1, r30, -4416
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	.loc	1 352 22                        # _p800_reduce.py:352:22
	addli r1, r30, -3072
	.loc	1 352 17                        # _p800_reduce.py:352:17
	vload_mask16.mz vr0{mr1}, -1024(r30)
	vload_mask16.mz vr1{mr1}, -960(r30)
	vload_mask16.mz vr7{mr1}, -896(r30)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	vload_mask16.mz vr8{mr1}, 0(r1)
	addli r1, r30, -3008
	vload_mask16.mz vr9{mr1}, 0(r1)
	addli r1, r30, -2944
	vload_mask16.mz vr10{mr1}, 0(r1)
	addli r1, r30, -4992
	vadd.f.mz.rn vr0{mr1}, vr0, vr8
	vadd.f.mz.rn vr2{mr1}, vr1, vr9
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr7, vr10
	.loc	1 352 17                        # _p800_reduce.py:352:17
	addli r1, r30, -4800
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	.loc	1 352 22                        # _p800_reduce.py:352:22
	addli r1, r30, -2880
	.loc	1 352 17                        # _p800_reduce.py:352:17
	vload_mask16.mz vr0{mr1}, -832(r30)
	vload_mask16.mz vr1{mr1}, -768(r30)
	vload_mask16.mz vr7{mr1}, -704(r30)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	vload_mask16.mz vr8{mr1}, 0(r1)
	addli r1, r30, -2816
	vload_mask16.mz vr9{mr1}, 0(r1)
	addli r1, r30, -2752
	vload_mask16.mz vr10{mr1}, 0(r1)
	addli r1, r30, -6336
	vadd.f.mz.rn vr0{mr1}, vr0, vr8
	vadd.f.mz.rn vr5{mr1}, vr1, vr9
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2688
	vadd.f.mz.rn vr4{mr1}, vr7, vr10
	.loc	1 352 17                        # _p800_reduce.py:352:17
	vload_mask16.mz vr0{mr1}, -640(r30)
	vload_mask16.mz vr1{mr1}, -576(r30)
	vload_mask16.mz vr7{mr1}, -512(r30)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	vload_mask16.mz vr8{mr1}, 0(r1)
	addli r1, r30, -2624
	vload_mask16.mz vr9{mr1}, 0(r1)
	addli r1, r30, -2560
	vload_mask16.mz vr10{mr1}, 0(r1)
	addli r1, r30, -6400
	vadd.f.mz.rn vr0{mr1}, vr0, vr8
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr1, vr9
	addli r1, r30, -5248
	vadd.f.mz.rn vr6{mr1}, vr7, vr10
	vstore_mask16.mz vr0{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -2496
	.loc	1 352 17                        # _p800_reduce.py:352:17
	vload_mask16.mz vr0{mr1}, -448(r30)
	vload_mask16.mz vr1{mr1}, -384(r30)
	vload_mask16.mz vr7{mr1}, -320(r30)
	.loc	1 352 22                        # _p800_reduce.py:352:22
	vload_mask16.mz vr8{mr1}, 0(r1)
	addli r1, r30, -2432
	vload_mask16.mz vr9{mr1}, 0(r1)
	addli r1, r30, -2368
	vload_mask16.mz vr10{mr1}, 0(r1)
	addli r1, r30, -4800
	vadd.f.mz.rn vr0{mr1}, vr0, vr8
	vload_mask16.mz vr8{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -5632
	vadd.f.mz.rn vr3{mr1}, vr1, vr9
	vadd.f.mz.rn vr1{mr1}, vr7, vr10
	vload_mask16.mz vr10{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -6272
	vadd.s.mz vr9{mr1}, zero, vr0
	vadd.s.mz vr7{mr1}, zero, vr4
	vload_mask16.mz vr0{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -5440
	vadd.s.mz vr4{mr1}, zero, vr0
	.loc	1 353 24 is_stmt 1              # _p800_reduce.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	vload_mask16.mz vr10{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -5504
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	vload_mask16.mz vr10{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -5568
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	vload_mask16.mz vr10{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -5312
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	vload_mask16.mz vr10{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -5376
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	vload_mask16.mz vr10{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -5056
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	vload_mask16.mz vr10{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -5184
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	vload_mask16.mz vr10{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -4480
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	vload_mask16.mz vr10{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -4544
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	vload_mask16.mz vr10{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -5120
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	vload_mask16.mz vr10{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -4928
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	vload_mask16.mz vr10{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -6144
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr11
	#NO_APP
	vstore_mask16.mz vr11{mr1}, 0(r1)       # 64-byte Folded Spill
	addli r1, r30, -5696
	vload_mask16.mz vr11{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -4864
	vload_mask16.mz vr10{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -4736
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr11
	#NO_APP
	vload_mask16.mz vr10{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -4608
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	vload_mask16.mz vr10{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -4672
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	vload_mask16.mz vr10{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -4416
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	vload_mask16.mz vr10{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -5248
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	vload_mask16.mz vr10{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -4992
	vload_mask16.mz vr11{mr1}, 0(r1)        # 64-byte Folded Reload
	addli r1, r30, -6016
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr11
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr2
	#NO_APP
	vstore_mask16.mz vr2{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -6400
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr8
	#NO_APP
	vload_mask16.mz vr2{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -6336
	vload_mask16.mz vr8{mr1}, 0(r1)         # 64-byte Folded Reload
	addli r1, r30, -6080
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr8
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr5
	#NO_APP
	vstore_mask16.mz vr5{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -6208
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr7
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr2
	#NO_APP
	vstore_mask16.mz vr7{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -5888
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr6
	#NO_APP
	vstore_mask16.mz vr6{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -5952
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr9
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr3
	#NO_APP
	#APP
	vmax.f.mz vr7{mr1}, vr0, vr1
	#NO_APP
	vextracti.f r15, 1(vr7)
	vextracti.f r20, 2(vr7)
	vextracti.f r21, 3(vr7)
	vextracti.f r22, 4(vr7)
	vextracti.f r23, 5(vr7)
	vextracti.f r3, 6(vr7)
	vextracti.f r16, 7(vr7)
	vextracti.f r25, 8(vr7)
	vextracti.f r26, 9(vr7)
	vextracti.f r27, 10(vr7)
	vextracti.f r28, 11(vr7)
	vextracti.f r5, 12(vr7)
	vextracti.f r11, 13(vr7)
	vextracti.f r12, 14(vr7)
	vextracti.f r7, 15(vr7)
	vstore_mask16.mz vr9{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -5824
	vstore_mask16.mz vr3{mr1}, 0(r1)        # 64-byte Folded Spill
	addli r1, r30, -5760
	vstore_mask16.mz vr1{mr1}, 0(r1)        # 64-byte Folded Spill
	vextracti.f r1, 0(vr7)
	#APP
	max.f r1, r1, r15
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
	max.f r1, r1, r23
	#NO_APP
	#APP
	max.f r1, r1, r3
	#NO_APP
	loadli.w r3,  -6408(r30)                # 4-byte Folded Reload
	#APP
	max.f r1, r1, r16
	#NO_APP
	#APP
	max.f r1, r1, r25
	#NO_APP
	#APP
	max.f r1, r1, r26
	#NO_APP
	#APP
	max.f r1, r1, r27
	#NO_APP
	#APP
	max.f r1, r1, r28
	#NO_APP
	#APP
	max.f r1, r1, r5
	#NO_APP
	#APP
	max.f r1, r1, r11
	#NO_APP
	#APP
	max.f r1, r1, r12
	#NO_APP
	#APP
	max.f r1, r1, r7
	#NO_APP
	stores.w r1, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r13, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	loads.w r1, 0(r9)
	loads.w r3, 4(r9)
	loads.w r5, 8(r9)
	loads.w r7, 12(r9)
	#APP
	max.f r1, r1, r3
	#NO_APP
	#APP
	max.f r1, r1, r5
	#NO_APP
	#APP
	max.f r1, r1, r7
	#NO_APP
	stores.w r1, 0(r9)
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r1, 0(r9)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	lui r3, 524288
	xor r1, r1, r3
	addli r3, r30, -5632
	#APP
	vadd.f.mz.rn vr7{mr1}, r1, vr4
	#NO_APP
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	vstore_mask16.mz vr7{mr1}, -256(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -5440
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vstore_mask16.mz vr0{mr1}, -192(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -5504
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vstore_mask16.mz vr0{mr1}, -128(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -5568
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vstore_mask16.mz vr0{mr1}, -64(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 354 15                        # _p800_reduce.py:354:15
	#APP
	mfence { lm }
	loadli.w r3,  0(r19)
	loadli.w r5,  4(r19)
	loadli.w r7,  8(r19)
	loadli.w r11,  12(r19)
	loadli.w r12,  16(r19)
	loadli.w r15,  20(r19)
	loadli.w r16,  24(r19)
	loadli.w r20,  28(r19)
	loadli.w r21,  32(r19)
	loadli.w r22,  36(r19)
	loadli.w r23,  40(r19)
	loadli.w r25,  44(r19)
	loadli.w r26,  48(r19)
	loadli.w r27,  52(r19)
	loadli.w r28,  56(r19)
	loadli.w r8,  60(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	exp.f.rn r8, r8
	storeli.w r3, 0(r19)
	storeli.w r5, 4(r19)
	storeli.w r7, 8(r19)
	storeli.w r11, 12(r19)
	storeli.w r12, 16(r19)
	storeli.w r15, 20(r19)
	storeli.w r16, 24(r19)
	storeli.w r20, 28(r19)
	storeli.w r21, 32(r19)
	storeli.w r22, 36(r19)
	storeli.w r23, 40(r19)
	storeli.w r25, 44(r19)
	storeli.w r26, 48(r19)
	storeli.w r27, 52(r19)
	storeli.w r28, 56(r19)
	storeli.w r8, 60(r19)
	loadli.w r3,  64(r19)
	loadli.w r5,  68(r19)
	loadli.w r7,  72(r19)
	loadli.w r11,  76(r19)
	loadli.w r12,  80(r19)
	loadli.w r15,  84(r19)
	loadli.w r16,  88(r19)
	loadli.w r20,  92(r19)
	loadli.w r21,  96(r19)
	loadli.w r22,  100(r19)
	loadli.w r23,  104(r19)
	loadli.w r25,  108(r19)
	loadli.w r26,  112(r19)
	loadli.w r27,  116(r19)
	loadli.w r28,  120(r19)
	loadli.w r8,  124(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	exp.f.rn r8, r8
	storeli.w r3, 64(r19)
	storeli.w r5, 68(r19)
	storeli.w r7, 72(r19)
	storeli.w r11, 76(r19)
	storeli.w r12, 80(r19)
	storeli.w r15, 84(r19)
	storeli.w r16, 88(r19)
	storeli.w r20, 92(r19)
	storeli.w r21, 96(r19)
	storeli.w r22, 100(r19)
	storeli.w r23, 104(r19)
	storeli.w r25, 108(r19)
	storeli.w r26, 112(r19)
	storeli.w r27, 116(r19)
	storeli.w r28, 120(r19)
	storeli.w r8, 124(r19)
	loadli.w r3,  128(r19)
	loadli.w r5,  132(r19)
	loadli.w r7,  136(r19)
	loadli.w r11,  140(r19)
	loadli.w r12,  144(r19)
	loadli.w r15,  148(r19)
	loadli.w r16,  152(r19)
	loadli.w r20,  156(r19)
	loadli.w r21,  160(r19)
	loadli.w r22,  164(r19)
	loadli.w r23,  168(r19)
	loadli.w r25,  172(r19)
	loadli.w r26,  176(r19)
	loadli.w r27,  180(r19)
	loadli.w r28,  184(r19)
	loadli.w r8,  188(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	exp.f.rn r8, r8
	storeli.w r3, 128(r19)
	storeli.w r5, 132(r19)
	storeli.w r7, 136(r19)
	storeli.w r11, 140(r19)
	storeli.w r12, 144(r19)
	storeli.w r15, 148(r19)
	storeli.w r16, 152(r19)
	storeli.w r20, 156(r19)
	storeli.w r21, 160(r19)
	storeli.w r22, 164(r19)
	storeli.w r23, 168(r19)
	storeli.w r25, 172(r19)
	storeli.w r26, 176(r19)
	storeli.w r27, 180(r19)
	storeli.w r28, 184(r19)
	storeli.w r8, 188(r19)
	loadli.w r3,  192(r19)
	loadli.w r5,  196(r19)
	loadli.w r7,  200(r19)
	loadli.w r11,  204(r19)
	loadli.w r12,  208(r19)
	loadli.w r15,  212(r19)
	loadli.w r16,  216(r19)
	loadli.w r20,  220(r19)
	loadli.w r21,  224(r19)
	loadli.w r22,  228(r19)
	loadli.w r23,  232(r19)
	loadli.w r25,  236(r19)
	loadli.w r26,  240(r19)
	loadli.w r27,  244(r19)
	loadli.w r28,  248(r19)
	loadli.w r8,  252(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	exp.f.rn r8, r8
	storeli.w r3, 192(r19)
	storeli.w r5, 196(r19)
	storeli.w r7, 200(r19)
	storeli.w r11, 204(r19)
	storeli.w r12, 208(r19)
	storeli.w r15, 212(r19)
	storeli.w r16, 216(r19)
	storeli.w r20, 220(r19)
	storeli.w r21, 224(r19)
	storeli.w r22, 228(r19)
	storeli.w r23, 232(r19)
	storeli.w r25, 236(r19)
	storeli.w r26, 240(r19)
	storeli.w r27, 244(r19)
	storeli.w r28, 248(r19)
	storeli.w r8, 252(r19)
	mfence { lm }
	#NO_APP
	vload_mask16.mz vr4{mr1}, -256(r30)
	vload_mask16.mz vr1{mr1}, -192(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r3, r30, -5312
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vload_mask16.mz vr6{mr1}, -128(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vload_mask16.mz vr5{mr1}, -64(r30)
	vstore_mask16.mz vr0{mr1}, -256(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -5376
	#APP
	vadd.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vstore_mask16.mz vr0{mr1}, -192(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr3{mr1}, r1, vr0
	#NO_APP
	vstore_mask16.mz vr1{mr1}, 0(r3)        # 64-byte Folded Spill
	addli r3, r30, -5440
.Ltmp3:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr4, vr1
	vstore_mask16.mz vr4{mr1}, 0(r3)        # 64-byte Folded Spill
.Ltmp4:
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r3, r30, -5056
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	vstore_mask16.mz vr3{mr1}, -128(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -5312
.Ltmp5:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr6
.Ltmp6:
	.loc	1 354 19                        # _p800_reduce.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	vstore_mask16.mz vr1{mr1}, -64(r30)
	vstore_mask16.mz vr6{mr1}, 0(r3)        # 64-byte Folded Spill
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r3, r30, -5184
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 354 15                        # _p800_reduce.py:354:15
	#APP
	mfence { lm }
	loadli.w r3,  0(r19)
	loadli.w r5,  4(r19)
	loadli.w r7,  8(r19)
	loadli.w r8,  12(r19)
	loadli.w r11,  16(r19)
	loadli.w r12,  20(r19)
	loadli.w r15,  24(r19)
	loadli.w r16,  28(r19)
	loadli.w r20,  32(r19)
	loadli.w r21,  36(r19)
	loadli.w r22,  40(r19)
	loadli.w r23,  44(r19)
	loadli.w r25,  48(r19)
	loadli.w r26,  52(r19)
	loadli.w r27,  56(r19)
	loadli.w r28,  60(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 0(r19)
	storeli.w r5, 4(r19)
	storeli.w r7, 8(r19)
	storeli.w r8, 12(r19)
	storeli.w r11, 16(r19)
	storeli.w r12, 20(r19)
	storeli.w r15, 24(r19)
	storeli.w r16, 28(r19)
	storeli.w r20, 32(r19)
	storeli.w r21, 36(r19)
	storeli.w r22, 40(r19)
	storeli.w r23, 44(r19)
	storeli.w r25, 48(r19)
	storeli.w r26, 52(r19)
	storeli.w r27, 56(r19)
	storeli.w r28, 60(r19)
	loadli.w r3,  64(r19)
	loadli.w r5,  68(r19)
	loadli.w r7,  72(r19)
	loadli.w r8,  76(r19)
	loadli.w r11,  80(r19)
	loadli.w r12,  84(r19)
	loadli.w r15,  88(r19)
	loadli.w r16,  92(r19)
	loadli.w r20,  96(r19)
	loadli.w r21,  100(r19)
	loadli.w r22,  104(r19)
	loadli.w r23,  108(r19)
	loadli.w r25,  112(r19)
	loadli.w r26,  116(r19)
	loadli.w r27,  120(r19)
	loadli.w r28,  124(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 64(r19)
	storeli.w r5, 68(r19)
	storeli.w r7, 72(r19)
	storeli.w r8, 76(r19)
	storeli.w r11, 80(r19)
	storeli.w r12, 84(r19)
	storeli.w r15, 88(r19)
	storeli.w r16, 92(r19)
	storeli.w r20, 96(r19)
	storeli.w r21, 100(r19)
	storeli.w r22, 104(r19)
	storeli.w r23, 108(r19)
	storeli.w r25, 112(r19)
	storeli.w r26, 116(r19)
	storeli.w r27, 120(r19)
	storeli.w r28, 124(r19)
	loadli.w r3,  128(r19)
	loadli.w r5,  132(r19)
	loadli.w r7,  136(r19)
	loadli.w r8,  140(r19)
	loadli.w r11,  144(r19)
	loadli.w r12,  148(r19)
	loadli.w r15,  152(r19)
	loadli.w r16,  156(r19)
	loadli.w r20,  160(r19)
	loadli.w r21,  164(r19)
	loadli.w r22,  168(r19)
	loadli.w r23,  172(r19)
	loadli.w r25,  176(r19)
	loadli.w r26,  180(r19)
	loadli.w r27,  184(r19)
	loadli.w r28,  188(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 128(r19)
	storeli.w r5, 132(r19)
	storeli.w r7, 136(r19)
	storeli.w r8, 140(r19)
	storeli.w r11, 144(r19)
	storeli.w r12, 148(r19)
	storeli.w r15, 152(r19)
	storeli.w r16, 156(r19)
	storeli.w r20, 160(r19)
	storeli.w r21, 164(r19)
	storeli.w r22, 168(r19)
	storeli.w r23, 172(r19)
	storeli.w r25, 176(r19)
	storeli.w r26, 180(r19)
	storeli.w r27, 184(r19)
	storeli.w r28, 188(r19)
	loadli.w r3,  192(r19)
	loadli.w r5,  196(r19)
	loadli.w r7,  200(r19)
	loadli.w r8,  204(r19)
	loadli.w r11,  208(r19)
	loadli.w r12,  212(r19)
	loadli.w r15,  216(r19)
	loadli.w r16,  220(r19)
	loadli.w r20,  224(r19)
	loadli.w r21,  228(r19)
	loadli.w r22,  232(r19)
	loadli.w r23,  236(r19)
	loadli.w r25,  240(r19)
	loadli.w r26,  244(r19)
	loadli.w r27,  248(r19)
	loadli.w r28,  252(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 192(r19)
	storeli.w r5, 196(r19)
	storeli.w r7, 200(r19)
	storeli.w r8, 204(r19)
	storeli.w r11, 208(r19)
	storeli.w r12, 212(r19)
	storeli.w r15, 216(r19)
	storeli.w r16, 220(r19)
	storeli.w r20, 224(r19)
	storeli.w r21, 228(r19)
	storeli.w r22, 232(r19)
	storeli.w r23, 236(r19)
	storeli.w r25, 240(r19)
	storeli.w r26, 244(r19)
	storeli.w r27, 248(r19)
	storeli.w r28, 252(r19)
	mfence { lm }
	#NO_APP
.Ltmp7:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr5
.Ltmp8:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vload_mask16.mz vr6{mr1}, -256(r30)
	addli r3, r30, -5056
	.loc	1 354 19 is_stmt 0              # _p800_reduce.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	vstore_mask16.mz vr5{mr1}, 0(r3)        # 64-byte Folded Spill
	addli r3, r30, -5184
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vload_mask16.mz vr5{mr1}, -192(r30)
	vload_mask16.mz vr4{mr1}, -128(r30)
	vload_mask16.mz vr3{mr1}, -64(r30)
	vstore_mask16.mz vr1{mr1}, -256(r30)
	vstore_mask16.mz vr6{mr1}, 0(r3)        # 64-byte Folded Spill
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r3, r30, -4480
.Ltmp9:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr6
.Ltmp10:
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -4544
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	vstore_mask16.mz vr1{mr1}, -192(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -5504
.Ltmp11:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr5
.Ltmp12:
	.loc	1 354 19                        # _p800_reduce.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	vstore_mask16.mz vr5{mr1}, 0(r3)        # 64-byte Folded Spill
	addli r3, r30, -5120
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	vstore_mask16.mz vr1{mr1}, -128(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -4544
.Ltmp13:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr4
.Ltmp14:
	.loc	1 354 19                        # _p800_reduce.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	vstore_mask16.mz vr1{mr1}, -64(r30)
	vstore_mask16.mz vr4{mr1}, 0(r3)        # 64-byte Folded Spill
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r3, r30, -4928
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 354 15                        # _p800_reduce.py:354:15
	#APP
	mfence { lm }
	loadli.w r3,  0(r19)
	loadli.w r5,  4(r19)
	loadli.w r7,  8(r19)
	loadli.w r8,  12(r19)
	loadli.w r11,  16(r19)
	loadli.w r12,  20(r19)
	loadli.w r15,  24(r19)
	loadli.w r16,  28(r19)
	loadli.w r20,  32(r19)
	loadli.w r21,  36(r19)
	loadli.w r22,  40(r19)
	loadli.w r23,  44(r19)
	loadli.w r25,  48(r19)
	loadli.w r26,  52(r19)
	loadli.w r27,  56(r19)
	loadli.w r28,  60(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 0(r19)
	storeli.w r5, 4(r19)
	storeli.w r7, 8(r19)
	storeli.w r8, 12(r19)
	storeli.w r11, 16(r19)
	storeli.w r12, 20(r19)
	storeli.w r15, 24(r19)
	storeli.w r16, 28(r19)
	storeli.w r20, 32(r19)
	storeli.w r21, 36(r19)
	storeli.w r22, 40(r19)
	storeli.w r23, 44(r19)
	storeli.w r25, 48(r19)
	storeli.w r26, 52(r19)
	storeli.w r27, 56(r19)
	storeli.w r28, 60(r19)
	loadli.w r3,  64(r19)
	loadli.w r5,  68(r19)
	loadli.w r7,  72(r19)
	loadli.w r8,  76(r19)
	loadli.w r11,  80(r19)
	loadli.w r12,  84(r19)
	loadli.w r15,  88(r19)
	loadli.w r16,  92(r19)
	loadli.w r20,  96(r19)
	loadli.w r21,  100(r19)
	loadli.w r22,  104(r19)
	loadli.w r23,  108(r19)
	loadli.w r25,  112(r19)
	loadli.w r26,  116(r19)
	loadli.w r27,  120(r19)
	loadli.w r28,  124(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 64(r19)
	storeli.w r5, 68(r19)
	storeli.w r7, 72(r19)
	storeli.w r8, 76(r19)
	storeli.w r11, 80(r19)
	storeli.w r12, 84(r19)
	storeli.w r15, 88(r19)
	storeli.w r16, 92(r19)
	storeli.w r20, 96(r19)
	storeli.w r21, 100(r19)
	storeli.w r22, 104(r19)
	storeli.w r23, 108(r19)
	storeli.w r25, 112(r19)
	storeli.w r26, 116(r19)
	storeli.w r27, 120(r19)
	storeli.w r28, 124(r19)
	loadli.w r3,  128(r19)
	loadli.w r5,  132(r19)
	loadli.w r7,  136(r19)
	loadli.w r8,  140(r19)
	loadli.w r11,  144(r19)
	loadli.w r12,  148(r19)
	loadli.w r15,  152(r19)
	loadli.w r16,  156(r19)
	loadli.w r20,  160(r19)
	loadli.w r21,  164(r19)
	loadli.w r22,  168(r19)
	loadli.w r23,  172(r19)
	loadli.w r25,  176(r19)
	loadli.w r26,  180(r19)
	loadli.w r27,  184(r19)
	loadli.w r28,  188(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 128(r19)
	storeli.w r5, 132(r19)
	storeli.w r7, 136(r19)
	storeli.w r8, 140(r19)
	storeli.w r11, 144(r19)
	storeli.w r12, 148(r19)
	storeli.w r15, 152(r19)
	storeli.w r16, 156(r19)
	storeli.w r20, 160(r19)
	storeli.w r21, 164(r19)
	storeli.w r22, 168(r19)
	storeli.w r23, 172(r19)
	storeli.w r25, 176(r19)
	storeli.w r26, 180(r19)
	storeli.w r27, 184(r19)
	storeli.w r28, 188(r19)
	loadli.w r3,  192(r19)
	loadli.w r5,  196(r19)
	loadli.w r7,  200(r19)
	loadli.w r8,  204(r19)
	loadli.w r11,  208(r19)
	loadli.w r12,  212(r19)
	loadli.w r15,  216(r19)
	loadli.w r16,  220(r19)
	loadli.w r20,  224(r19)
	loadli.w r21,  228(r19)
	loadli.w r22,  232(r19)
	loadli.w r23,  236(r19)
	loadli.w r25,  240(r19)
	loadli.w r26,  244(r19)
	loadli.w r27,  248(r19)
	loadli.w r28,  252(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 192(r19)
	storeli.w r5, 196(r19)
	storeli.w r7, 200(r19)
	storeli.w r8, 204(r19)
	storeli.w r11, 208(r19)
	storeli.w r12, 212(r19)
	storeli.w r15, 216(r19)
	storeli.w r16, 220(r19)
	storeli.w r20, 224(r19)
	storeli.w r21, 228(r19)
	storeli.w r22, 232(r19)
	storeli.w r23, 236(r19)
	storeli.w r25, 240(r19)
	storeli.w r26, 244(r19)
	storeli.w r27, 248(r19)
	storeli.w r28, 252(r19)
	mfence { lm }
	#NO_APP
.Ltmp15:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr3
.Ltmp16:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vload_mask16.mz vr5{mr1}, -256(r30)
	addli r3, r30, -4480
	.loc	1 354 19 is_stmt 0              # _p800_reduce.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	vstore_mask16.mz vr3{mr1}, 0(r3)        # 64-byte Folded Spill
	addli r3, r30, -4928
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vload_mask16.mz vr6{mr1}, -192(r30)
	vload_mask16.mz vr4{mr1}, -128(r30)
	vload_mask16.mz vr3{mr1}, -64(r30)
	vstore_mask16.mz vr1{mr1}, -256(r30)
	vstore_mask16.mz vr5{mr1}, 0(r3)        # 64-byte Folded Spill
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r3, r30, -6144
.Ltmp17:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr5
.Ltmp18:
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -4864
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	vstore_mask16.mz vr1{mr1}, -192(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -5120
.Ltmp19:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr6
.Ltmp20:
	.loc	1 354 19                        # _p800_reduce.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	vstore_mask16.mz vr6{mr1}, 0(r3)        # 64-byte Folded Spill
	addli r3, r30, -5696
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	vstore_mask16.mz vr1{mr1}, -128(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -4864
.Ltmp21:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr4
.Ltmp22:
	.loc	1 354 19                        # _p800_reduce.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	vstore_mask16.mz vr1{mr1}, -64(r30)
	vstore_mask16.mz vr4{mr1}, 0(r3)        # 64-byte Folded Spill
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r3, r30, -4736
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 354 15                        # _p800_reduce.py:354:15
	#APP
	mfence { lm }
	loadli.w r3,  0(r19)
	loadli.w r5,  4(r19)
	loadli.w r7,  8(r19)
	loadli.w r8,  12(r19)
	loadli.w r11,  16(r19)
	loadli.w r12,  20(r19)
	loadli.w r15,  24(r19)
	loadli.w r16,  28(r19)
	loadli.w r20,  32(r19)
	loadli.w r21,  36(r19)
	loadli.w r22,  40(r19)
	loadli.w r23,  44(r19)
	loadli.w r25,  48(r19)
	loadli.w r26,  52(r19)
	loadli.w r27,  56(r19)
	loadli.w r28,  60(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 0(r19)
	storeli.w r5, 4(r19)
	storeli.w r7, 8(r19)
	storeli.w r8, 12(r19)
	storeli.w r11, 16(r19)
	storeli.w r12, 20(r19)
	storeli.w r15, 24(r19)
	storeli.w r16, 28(r19)
	storeli.w r20, 32(r19)
	storeli.w r21, 36(r19)
	storeli.w r22, 40(r19)
	storeli.w r23, 44(r19)
	storeli.w r25, 48(r19)
	storeli.w r26, 52(r19)
	storeli.w r27, 56(r19)
	storeli.w r28, 60(r19)
	loadli.w r3,  64(r19)
	loadli.w r5,  68(r19)
	loadli.w r7,  72(r19)
	loadli.w r8,  76(r19)
	loadli.w r11,  80(r19)
	loadli.w r12,  84(r19)
	loadli.w r15,  88(r19)
	loadli.w r16,  92(r19)
	loadli.w r20,  96(r19)
	loadli.w r21,  100(r19)
	loadli.w r22,  104(r19)
	loadli.w r23,  108(r19)
	loadli.w r25,  112(r19)
	loadli.w r26,  116(r19)
	loadli.w r27,  120(r19)
	loadli.w r28,  124(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 64(r19)
	storeli.w r5, 68(r19)
	storeli.w r7, 72(r19)
	storeli.w r8, 76(r19)
	storeli.w r11, 80(r19)
	storeli.w r12, 84(r19)
	storeli.w r15, 88(r19)
	storeli.w r16, 92(r19)
	storeli.w r20, 96(r19)
	storeli.w r21, 100(r19)
	storeli.w r22, 104(r19)
	storeli.w r23, 108(r19)
	storeli.w r25, 112(r19)
	storeli.w r26, 116(r19)
	storeli.w r27, 120(r19)
	storeli.w r28, 124(r19)
	loadli.w r3,  128(r19)
	loadli.w r5,  132(r19)
	loadli.w r7,  136(r19)
	loadli.w r8,  140(r19)
	loadli.w r11,  144(r19)
	loadli.w r12,  148(r19)
	loadli.w r15,  152(r19)
	loadli.w r16,  156(r19)
	loadli.w r20,  160(r19)
	loadli.w r21,  164(r19)
	loadli.w r22,  168(r19)
	loadli.w r23,  172(r19)
	loadli.w r25,  176(r19)
	loadli.w r26,  180(r19)
	loadli.w r27,  184(r19)
	loadli.w r28,  188(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 128(r19)
	storeli.w r5, 132(r19)
	storeli.w r7, 136(r19)
	storeli.w r8, 140(r19)
	storeli.w r11, 144(r19)
	storeli.w r12, 148(r19)
	storeli.w r15, 152(r19)
	storeli.w r16, 156(r19)
	storeli.w r20, 160(r19)
	storeli.w r21, 164(r19)
	storeli.w r22, 168(r19)
	storeli.w r23, 172(r19)
	storeli.w r25, 176(r19)
	storeli.w r26, 180(r19)
	storeli.w r27, 184(r19)
	storeli.w r28, 188(r19)
	loadli.w r3,  192(r19)
	loadli.w r5,  196(r19)
	loadli.w r7,  200(r19)
	loadli.w r8,  204(r19)
	loadli.w r11,  208(r19)
	loadli.w r12,  212(r19)
	loadli.w r15,  216(r19)
	loadli.w r16,  220(r19)
	loadli.w r20,  224(r19)
	loadli.w r21,  228(r19)
	loadli.w r22,  232(r19)
	loadli.w r23,  236(r19)
	loadli.w r25,  240(r19)
	loadli.w r26,  244(r19)
	loadli.w r27,  248(r19)
	loadli.w r28,  252(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 192(r19)
	storeli.w r5, 196(r19)
	storeli.w r7, 200(r19)
	storeli.w r8, 204(r19)
	storeli.w r11, 208(r19)
	storeli.w r12, 212(r19)
	storeli.w r15, 216(r19)
	storeli.w r16, 220(r19)
	storeli.w r20, 224(r19)
	storeli.w r21, 228(r19)
	storeli.w r22, 232(r19)
	storeli.w r23, 236(r19)
	storeli.w r25, 240(r19)
	storeli.w r26, 244(r19)
	storeli.w r27, 248(r19)
	storeli.w r28, 252(r19)
	mfence { lm }
	#NO_APP
.Ltmp23:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr3
.Ltmp24:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vload_mask16.mz vr5{mr1}, -256(r30)
	addli r3, r30, -4736
	.loc	1 354 19 is_stmt 0              # _p800_reduce.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	vstore_mask16.mz vr3{mr1}, 0(r3)        # 64-byte Folded Spill
	addli r3, r30, -5568
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vload_mask16.mz vr6{mr1}, -192(r30)
	vload_mask16.mz vr4{mr1}, -128(r30)
	vload_mask16.mz vr3{mr1}, -64(r30)
	vstore_mask16.mz vr1{mr1}, -256(r30)
	vstore_mask16.mz vr5{mr1}, 0(r3)        # 64-byte Folded Spill
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r3, r30, -4608
.Ltmp25:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr5
.Ltmp26:
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -4672
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	vstore_mask16.mz vr1{mr1}, -192(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	vstore_mask16.mz vr6{mr1}, 0(r3)        # 64-byte Folded Spill
	addli r3, r30, -4416
.Ltmp27:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr6
.Ltmp28:
	.loc	1 354 19                        # _p800_reduce.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	vstore_mask16.mz vr1{mr1}, -128(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -4608
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vstore_mask16.mz vr1{mr1}, -64(r30)
	vstore_mask16.mz vr4{mr1}, 0(r3)        # 64-byte Folded Spill
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r3, r30, -4992
.Ltmp29:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr4
.Ltmp30:
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	#APP
	mfence { lm }
	loadli.w r3,  0(r19)
	loadli.w r5,  4(r19)
	loadli.w r7,  8(r19)
	loadli.w r8,  12(r19)
	loadli.w r11,  16(r19)
	loadli.w r12,  20(r19)
	loadli.w r15,  24(r19)
	loadli.w r16,  28(r19)
	loadli.w r20,  32(r19)
	loadli.w r21,  36(r19)
	loadli.w r22,  40(r19)
	loadli.w r23,  44(r19)
	loadli.w r25,  48(r19)
	loadli.w r26,  52(r19)
	loadli.w r27,  56(r19)
	loadli.w r28,  60(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 0(r19)
	storeli.w r5, 4(r19)
	storeli.w r7, 8(r19)
	storeli.w r8, 12(r19)
	storeli.w r11, 16(r19)
	storeli.w r12, 20(r19)
	storeli.w r15, 24(r19)
	storeli.w r16, 28(r19)
	storeli.w r20, 32(r19)
	storeli.w r21, 36(r19)
	storeli.w r22, 40(r19)
	storeli.w r23, 44(r19)
	storeli.w r25, 48(r19)
	storeli.w r26, 52(r19)
	storeli.w r27, 56(r19)
	storeli.w r28, 60(r19)
	loadli.w r3,  64(r19)
	loadli.w r5,  68(r19)
	loadli.w r7,  72(r19)
	loadli.w r8,  76(r19)
	loadli.w r11,  80(r19)
	loadli.w r12,  84(r19)
	loadli.w r15,  88(r19)
	loadli.w r16,  92(r19)
	loadli.w r20,  96(r19)
	loadli.w r21,  100(r19)
	loadli.w r22,  104(r19)
	loadli.w r23,  108(r19)
	loadli.w r25,  112(r19)
	loadli.w r26,  116(r19)
	loadli.w r27,  120(r19)
	loadli.w r28,  124(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 64(r19)
	storeli.w r5, 68(r19)
	storeli.w r7, 72(r19)
	storeli.w r8, 76(r19)
	storeli.w r11, 80(r19)
	storeli.w r12, 84(r19)
	storeli.w r15, 88(r19)
	storeli.w r16, 92(r19)
	storeli.w r20, 96(r19)
	storeli.w r21, 100(r19)
	storeli.w r22, 104(r19)
	storeli.w r23, 108(r19)
	storeli.w r25, 112(r19)
	storeli.w r26, 116(r19)
	storeli.w r27, 120(r19)
	storeli.w r28, 124(r19)
	loadli.w r3,  128(r19)
	loadli.w r5,  132(r19)
	loadli.w r7,  136(r19)
	loadli.w r8,  140(r19)
	loadli.w r11,  144(r19)
	loadli.w r12,  148(r19)
	loadli.w r15,  152(r19)
	loadli.w r16,  156(r19)
	loadli.w r20,  160(r19)
	loadli.w r21,  164(r19)
	loadli.w r22,  168(r19)
	loadli.w r23,  172(r19)
	loadli.w r25,  176(r19)
	loadli.w r26,  180(r19)
	loadli.w r27,  184(r19)
	loadli.w r28,  188(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 128(r19)
	storeli.w r5, 132(r19)
	storeli.w r7, 136(r19)
	storeli.w r8, 140(r19)
	storeli.w r11, 144(r19)
	storeli.w r12, 148(r19)
	storeli.w r15, 152(r19)
	storeli.w r16, 156(r19)
	storeli.w r20, 160(r19)
	storeli.w r21, 164(r19)
	storeli.w r22, 168(r19)
	storeli.w r23, 172(r19)
	storeli.w r25, 176(r19)
	storeli.w r26, 180(r19)
	storeli.w r27, 184(r19)
	storeli.w r28, 188(r19)
	loadli.w r3,  192(r19)
	loadli.w r5,  196(r19)
	loadli.w r7,  200(r19)
	loadli.w r8,  204(r19)
	loadli.w r11,  208(r19)
	loadli.w r12,  212(r19)
	loadli.w r15,  216(r19)
	loadli.w r16,  220(r19)
	loadli.w r20,  224(r19)
	loadli.w r21,  228(r19)
	loadli.w r22,  232(r19)
	loadli.w r23,  236(r19)
	loadli.w r25,  240(r19)
	loadli.w r26,  244(r19)
	loadli.w r27,  248(r19)
	loadli.w r28,  252(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 192(r19)
	storeli.w r5, 196(r19)
	storeli.w r7, 200(r19)
	storeli.w r8, 204(r19)
	storeli.w r11, 208(r19)
	storeli.w r12, 212(r19)
	storeli.w r15, 216(r19)
	storeli.w r16, 220(r19)
	storeli.w r20, 224(r19)
	storeli.w r21, 228(r19)
	storeli.w r22, 232(r19)
	storeli.w r23, 236(r19)
	storeli.w r25, 240(r19)
	storeli.w r26, 244(r19)
	storeli.w r27, 248(r19)
	storeli.w r28, 252(r19)
	mfence { lm }
	#NO_APP
	vload_mask16.mz vr5{mr1}, -256(r30)
	addli r3, r30, -4416
	.loc	1 354 19                        # _p800_reduce.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
.Ltmp31:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr3
	vstore_mask16.mz vr3{mr1}, 0(r3)        # 64-byte Folded Spill
	addli r3, r30, -5632
.Ltmp32:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vload_mask16.mz vr6{mr1}, -192(r30)
	vload_mask16.mz vr4{mr1}, -128(r30)
	vload_mask16.mz vr3{mr1}, -64(r30)
	vstore_mask16.mz vr1{mr1}, -256(r30)
	vstore_mask16.mz vr5{mr1}, 0(r3)        # 64-byte Folded Spill
	.loc	1 354 19 is_stmt 0              # _p800_reduce.py:354:19
	addli r3, r30, -6016
.Ltmp33:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr5
.Ltmp34:
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -4800
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	vstore_mask16.mz vr1{mr1}, -192(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -5696
.Ltmp35:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr6
.Ltmp36:
	.loc	1 354 19                        # _p800_reduce.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	vstore_mask16.mz vr6{mr1}, 0(r3)        # 64-byte Folded Spill
	addli r3, r30, -4992
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	vstore_mask16.mz vr1{mr1}, -128(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr8
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vstore_mask16.mz vr1{mr1}, -64(r30)
	vstore_mask16.mz vr4{mr1}, 0(r3)        # 64-byte Folded Spill
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r3, r30, -6080
.Ltmp37:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr4
.Ltmp38:
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	#APP
	mfence { lm }
	loadli.w r3,  0(r19)
	loadli.w r5,  4(r19)
	loadli.w r7,  8(r19)
	loadli.w r8,  12(r19)
	loadli.w r11,  16(r19)
	loadli.w r12,  20(r19)
	loadli.w r15,  24(r19)
	loadli.w r16,  28(r19)
	loadli.w r20,  32(r19)
	loadli.w r21,  36(r19)
	loadli.w r22,  40(r19)
	loadli.w r23,  44(r19)
	loadli.w r25,  48(r19)
	loadli.w r26,  52(r19)
	loadli.w r27,  56(r19)
	loadli.w r28,  60(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 0(r19)
	storeli.w r5, 4(r19)
	storeli.w r7, 8(r19)
	storeli.w r8, 12(r19)
	storeli.w r11, 16(r19)
	storeli.w r12, 20(r19)
	storeli.w r15, 24(r19)
	storeli.w r16, 28(r19)
	storeli.w r20, 32(r19)
	storeli.w r21, 36(r19)
	storeli.w r22, 40(r19)
	storeli.w r23, 44(r19)
	storeli.w r25, 48(r19)
	storeli.w r26, 52(r19)
	storeli.w r27, 56(r19)
	storeli.w r28, 60(r19)
	loadli.w r3,  64(r19)
	loadli.w r5,  68(r19)
	loadli.w r7,  72(r19)
	loadli.w r8,  76(r19)
	loadli.w r11,  80(r19)
	loadli.w r12,  84(r19)
	loadli.w r15,  88(r19)
	loadli.w r16,  92(r19)
	loadli.w r20,  96(r19)
	loadli.w r21,  100(r19)
	loadli.w r22,  104(r19)
	loadli.w r23,  108(r19)
	loadli.w r25,  112(r19)
	loadli.w r26,  116(r19)
	loadli.w r27,  120(r19)
	loadli.w r28,  124(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 64(r19)
	storeli.w r5, 68(r19)
	storeli.w r7, 72(r19)
	storeli.w r8, 76(r19)
	storeli.w r11, 80(r19)
	storeli.w r12, 84(r19)
	storeli.w r15, 88(r19)
	storeli.w r16, 92(r19)
	storeli.w r20, 96(r19)
	storeli.w r21, 100(r19)
	storeli.w r22, 104(r19)
	storeli.w r23, 108(r19)
	storeli.w r25, 112(r19)
	storeli.w r26, 116(r19)
	storeli.w r27, 120(r19)
	storeli.w r28, 124(r19)
	loadli.w r3,  128(r19)
	loadli.w r5,  132(r19)
	loadli.w r7,  136(r19)
	loadli.w r8,  140(r19)
	loadli.w r11,  144(r19)
	loadli.w r12,  148(r19)
	loadli.w r15,  152(r19)
	loadli.w r16,  156(r19)
	loadli.w r20,  160(r19)
	loadli.w r21,  164(r19)
	loadli.w r22,  168(r19)
	loadli.w r23,  172(r19)
	loadli.w r25,  176(r19)
	loadli.w r26,  180(r19)
	loadli.w r27,  184(r19)
	loadli.w r28,  188(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 128(r19)
	storeli.w r5, 132(r19)
	storeli.w r7, 136(r19)
	storeli.w r8, 140(r19)
	storeli.w r11, 144(r19)
	storeli.w r12, 148(r19)
	storeli.w r15, 152(r19)
	storeli.w r16, 156(r19)
	storeli.w r20, 160(r19)
	storeli.w r21, 164(r19)
	storeli.w r22, 168(r19)
	storeli.w r23, 172(r19)
	storeli.w r25, 176(r19)
	storeli.w r26, 180(r19)
	storeli.w r27, 184(r19)
	storeli.w r28, 188(r19)
	loadli.w r3,  192(r19)
	loadli.w r5,  196(r19)
	loadli.w r7,  200(r19)
	loadli.w r8,  204(r19)
	loadli.w r11,  208(r19)
	loadli.w r12,  212(r19)
	loadli.w r15,  216(r19)
	loadli.w r16,  220(r19)
	loadli.w r20,  224(r19)
	loadli.w r21,  228(r19)
	loadli.w r22,  232(r19)
	loadli.w r23,  236(r19)
	loadli.w r25,  240(r19)
	loadli.w r26,  244(r19)
	loadli.w r27,  248(r19)
	loadli.w r28,  252(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 192(r19)
	storeli.w r5, 196(r19)
	storeli.w r7, 200(r19)
	storeli.w r8, 204(r19)
	storeli.w r11, 208(r19)
	storeli.w r12, 212(r19)
	storeli.w r15, 216(r19)
	storeli.w r16, 220(r19)
	storeli.w r20, 224(r19)
	storeli.w r21, 228(r19)
	storeli.w r22, 232(r19)
	storeli.w r23, 236(r19)
	storeli.w r25, 240(r19)
	storeli.w r26, 244(r19)
	storeli.w r27, 248(r19)
	storeli.w r28, 252(r19)
	mfence { lm }
	#NO_APP
	vload_mask16.mz vr7{mr1}, -256(r30)
	addli r3, r30, -4800
	.loc	1 354 19                        # _p800_reduce.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
.Ltmp39:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr3
	vstore_mask16.mz vr3{mr1}, 0(r3)        # 64-byte Folded Spill
.Ltmp40:
	.loc	1 354 19                        # _p800_reduce.py:354:19
	addli r3, r30, -6208
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	vload_mask16.mz vr9{mr1}, -192(r30)
	vload_mask16.mz vr8{mr1}, -128(r30)
	vload_mask16.mz vr4{mr1}, -64(r30)
	vstore_mask16.mz vr1{mr1}, -256(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -5248
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vstore_mask16.mz vr1{mr1}, -192(r30)
.Ltmp41:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr7
.Ltmp42:
	.loc	1 354 19                        # _p800_reduce.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr2
	#NO_APP
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	vstore_mask16.mz vr1{mr1}, -128(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -5888
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vstore_mask16.mz vr1{mr1}, -64(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 354 15                        # _p800_reduce.py:354:15
	#APP
	mfence { lm }
	loadli.w r3,  0(r19)
	loadli.w r5,  4(r19)
	loadli.w r7,  8(r19)
	loadli.w r8,  12(r19)
	loadli.w r11,  16(r19)
	loadli.w r12,  20(r19)
	loadli.w r15,  24(r19)
	loadli.w r16,  28(r19)
	loadli.w r20,  32(r19)
	loadli.w r21,  36(r19)
	loadli.w r22,  40(r19)
	loadli.w r23,  44(r19)
	loadli.w r25,  48(r19)
	loadli.w r26,  52(r19)
	loadli.w r27,  56(r19)
	loadli.w r28,  60(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 0(r19)
	storeli.w r5, 4(r19)
	storeli.w r7, 8(r19)
	storeli.w r8, 12(r19)
	storeli.w r11, 16(r19)
	storeli.w r12, 20(r19)
	storeli.w r15, 24(r19)
	storeli.w r16, 28(r19)
	storeli.w r20, 32(r19)
	storeli.w r21, 36(r19)
	storeli.w r22, 40(r19)
	storeli.w r23, 44(r19)
	storeli.w r25, 48(r19)
	storeli.w r26, 52(r19)
	storeli.w r27, 56(r19)
	storeli.w r28, 60(r19)
	loadli.w r3,  64(r19)
	loadli.w r5,  68(r19)
	loadli.w r7,  72(r19)
	loadli.w r8,  76(r19)
	loadli.w r11,  80(r19)
	loadli.w r12,  84(r19)
	loadli.w r15,  88(r19)
	loadli.w r16,  92(r19)
	loadli.w r20,  96(r19)
	loadli.w r21,  100(r19)
	loadli.w r22,  104(r19)
	loadli.w r23,  108(r19)
	loadli.w r25,  112(r19)
	loadli.w r26,  116(r19)
	loadli.w r27,  120(r19)
	loadli.w r28,  124(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 64(r19)
	storeli.w r5, 68(r19)
	storeli.w r7, 72(r19)
	storeli.w r8, 76(r19)
	storeli.w r11, 80(r19)
	storeli.w r12, 84(r19)
	storeli.w r15, 88(r19)
	storeli.w r16, 92(r19)
	storeli.w r20, 96(r19)
	storeli.w r21, 100(r19)
	storeli.w r22, 104(r19)
	storeli.w r23, 108(r19)
	storeli.w r25, 112(r19)
	storeli.w r26, 116(r19)
	storeli.w r27, 120(r19)
	storeli.w r28, 124(r19)
	loadli.w r3,  128(r19)
	loadli.w r5,  132(r19)
	loadli.w r7,  136(r19)
	loadli.w r8,  140(r19)
	loadli.w r11,  144(r19)
	loadli.w r12,  148(r19)
	loadli.w r15,  152(r19)
	loadli.w r16,  156(r19)
	loadli.w r20,  160(r19)
	loadli.w r21,  164(r19)
	loadli.w r22,  168(r19)
	loadli.w r23,  172(r19)
	loadli.w r25,  176(r19)
	loadli.w r26,  180(r19)
	loadli.w r27,  184(r19)
	loadli.w r28,  188(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 128(r19)
	storeli.w r5, 132(r19)
	storeli.w r7, 136(r19)
	storeli.w r8, 140(r19)
	storeli.w r11, 144(r19)
	storeli.w r12, 148(r19)
	storeli.w r15, 152(r19)
	storeli.w r16, 156(r19)
	storeli.w r20, 160(r19)
	storeli.w r21, 164(r19)
	storeli.w r22, 168(r19)
	storeli.w r23, 172(r19)
	storeli.w r25, 176(r19)
	storeli.w r26, 180(r19)
	storeli.w r27, 184(r19)
	storeli.w r28, 188(r19)
	loadli.w r3,  192(r19)
	loadli.w r5,  196(r19)
	loadli.w r7,  200(r19)
	loadli.w r8,  204(r19)
	loadli.w r11,  208(r19)
	loadli.w r12,  212(r19)
	loadli.w r15,  216(r19)
	loadli.w r16,  220(r19)
	loadli.w r20,  224(r19)
	loadli.w r21,  228(r19)
	loadli.w r22,  232(r19)
	loadli.w r23,  236(r19)
	loadli.w r25,  240(r19)
	loadli.w r26,  244(r19)
	loadli.w r27,  248(r19)
	loadli.w r28,  252(r19)
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	exp.f.rn r28, r28
	storeli.w r3, 192(r19)
	storeli.w r5, 196(r19)
	storeli.w r7, 200(r19)
	storeli.w r8, 204(r19)
	storeli.w r11, 208(r19)
	storeli.w r12, 212(r19)
	storeli.w r15, 216(r19)
	storeli.w r16, 220(r19)
	storeli.w r20, 224(r19)
	storeli.w r21, 228(r19)
	storeli.w r22, 232(r19)
	storeli.w r23, 236(r19)
	storeli.w r25, 240(r19)
	storeli.w r26, 244(r19)
	storeli.w r27, 248(r19)
	storeli.w r28, 252(r19)
	mfence { lm }
	#NO_APP
.Ltmp43:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr9
.Ltmp44:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vload_mask16.mz vr3{mr1}, -256(r30)
	addli r3, r30, -5248
	.loc	1 354 19 is_stmt 0              # _p800_reduce.py:354:19
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	vstore_mask16.mz vr4{mr1}, 0(r3)        # 64-byte Folded Spill
	addli r3, r30, -5952
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vload_mask16.mz vr6{mr1}, -192(r30)
	vload_mask16.mz vr11{mr1}, -128(r30)
	vload_mask16.mz vr10{mr1}, -64(r30)
	vstore_mask16.mz vr1{mr1}, -256(r30)
.Ltmp45:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr8
.Ltmp46:
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -5824
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	vstore_mask16.mz vr1{mr1}, -192(r30)
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -5760
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vstore_mask16.mz vr1{mr1}, -128(r30)
.Ltmp47:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr4
.Ltmp48:
	.loc	1 354 19                        # _p800_reduce.py:354:19
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 354 15 is_stmt 0              # _p800_reduce.py:354:15
	vstore_mask16.mz vr1{mr1}, -64(r30)
	#APP
	mfence { lm }
	loadli.w r1,  0(r19)
	loadli.w r3,  4(r19)
	loadli.w r5,  8(r19)
	loadli.w r7,  12(r19)
	loadli.w r8,  16(r19)
	loadli.w r11,  20(r19)
	loadli.w r12,  24(r19)
	loadli.w r15,  28(r19)
	loadli.w r16,  32(r19)
	loadli.w r20,  36(r19)
	loadli.w r21,  40(r19)
	loadli.w r22,  44(r19)
	loadli.w r23,  48(r19)
	loadli.w r25,  52(r19)
	loadli.w r26,  56(r19)
	loadli.w r27,  60(r19)
	exp.f.rn r1, r1
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	storeli.w r1, 0(r19)
	storeli.w r3, 4(r19)
	storeli.w r5, 8(r19)
	storeli.w r7, 12(r19)
	storeli.w r8, 16(r19)
	storeli.w r11, 20(r19)
	storeli.w r12, 24(r19)
	storeli.w r15, 28(r19)
	storeli.w r16, 32(r19)
	storeli.w r20, 36(r19)
	storeli.w r21, 40(r19)
	storeli.w r22, 44(r19)
	storeli.w r23, 48(r19)
	storeli.w r25, 52(r19)
	storeli.w r26, 56(r19)
	storeli.w r27, 60(r19)
	loadli.w r1,  64(r19)
	loadli.w r3,  68(r19)
	loadli.w r5,  72(r19)
	loadli.w r7,  76(r19)
	loadli.w r8,  80(r19)
	loadli.w r11,  84(r19)
	loadli.w r12,  88(r19)
	loadli.w r15,  92(r19)
	loadli.w r16,  96(r19)
	loadli.w r20,  100(r19)
	loadli.w r21,  104(r19)
	loadli.w r22,  108(r19)
	loadli.w r23,  112(r19)
	loadli.w r25,  116(r19)
	loadli.w r26,  120(r19)
	loadli.w r27,  124(r19)
	exp.f.rn r1, r1
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	storeli.w r1, 64(r19)
	storeli.w r3, 68(r19)
	storeli.w r5, 72(r19)
	storeli.w r7, 76(r19)
	storeli.w r8, 80(r19)
	storeli.w r11, 84(r19)
	storeli.w r12, 88(r19)
	storeli.w r15, 92(r19)
	storeli.w r16, 96(r19)
	storeli.w r20, 100(r19)
	storeli.w r21, 104(r19)
	storeli.w r22, 108(r19)
	storeli.w r23, 112(r19)
	storeli.w r25, 116(r19)
	storeli.w r26, 120(r19)
	storeli.w r27, 124(r19)
	loadli.w r1,  128(r19)
	loadli.w r3,  132(r19)
	loadli.w r5,  136(r19)
	loadli.w r7,  140(r19)
	loadli.w r8,  144(r19)
	loadli.w r11,  148(r19)
	loadli.w r12,  152(r19)
	loadli.w r15,  156(r19)
	loadli.w r16,  160(r19)
	loadli.w r20,  164(r19)
	loadli.w r21,  168(r19)
	loadli.w r22,  172(r19)
	loadli.w r23,  176(r19)
	loadli.w r25,  180(r19)
	loadli.w r26,  184(r19)
	loadli.w r27,  188(r19)
	exp.f.rn r1, r1
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	storeli.w r1, 128(r19)
	storeli.w r3, 132(r19)
	storeli.w r5, 136(r19)
	storeli.w r7, 140(r19)
	storeli.w r8, 144(r19)
	storeli.w r11, 148(r19)
	storeli.w r12, 152(r19)
	storeli.w r15, 156(r19)
	storeli.w r16, 160(r19)
	storeli.w r20, 164(r19)
	storeli.w r21, 168(r19)
	storeli.w r22, 172(r19)
	storeli.w r23, 176(r19)
	storeli.w r25, 180(r19)
	storeli.w r26, 184(r19)
	storeli.w r27, 188(r19)
	loadli.w r1,  192(r19)
	loadli.w r3,  196(r19)
	loadli.w r5,  200(r19)
	loadli.w r7,  204(r19)
	loadli.w r8,  208(r19)
	loadli.w r11,  212(r19)
	loadli.w r12,  216(r19)
	loadli.w r15,  220(r19)
	loadli.w r16,  224(r19)
	loadli.w r20,  228(r19)
	loadli.w r21,  232(r19)
	loadli.w r22,  236(r19)
	loadli.w r23,  240(r19)
	loadli.w r25,  244(r19)
	loadli.w r26,  248(r19)
	loadli.w r27,  252(r19)
	exp.f.rn r1, r1
	exp.f.rn r3, r3
	exp.f.rn r5, r5
	exp.f.rn r7, r7
	exp.f.rn r8, r8
	exp.f.rn r11, r11
	exp.f.rn r12, r12
	exp.f.rn r15, r15
	exp.f.rn r16, r16
	exp.f.rn r20, r20
	exp.f.rn r21, r21
	exp.f.rn r22, r22
	exp.f.rn r23, r23
	exp.f.rn r25, r25
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	storeli.w r1, 192(r19)
	storeli.w r3, 196(r19)
	storeli.w r5, 200(r19)
	storeli.w r7, 204(r19)
	storeli.w r8, 208(r19)
	storeli.w r11, 212(r19)
	storeli.w r12, 216(r19)
	storeli.w r15, 220(r19)
	storeli.w r16, 224(r19)
	storeli.w r20, 228(r19)
	storeli.w r21, 232(r19)
	storeli.w r22, 236(r19)
	storeli.w r23, 240(r19)
	storeli.w r25, 244(r19)
	storeli.w r26, 248(r19)
	storeli.w r27, 252(r19)
	mfence { lm }
	#NO_APP
.Ltmp49:
	.loc	2 296 36 is_stmt 1              # standard.py:296:36
	vadd.f.mz.rn vr0{mr1}, vr0, vr3
	vadd.f.mz.rn vr0{mr1}, vr0, vr6
	vadd.f.mz.rn vr1{mr1}, vr0, vr11
.Ltmp50:
	.loc	1 354 15                        # _p800_reduce.py:354:15
	vload_mask16.mz vr0{mr1}, -256(r30)
	vload_mask16.mz vr2{mr1}, -192(r30)
	vload_mask16.mz vr4{mr1}, -128(r30)
	vload_mask16.mz vr5{mr1}, -64(r30)
.Ltmp51:
	.loc	2 296 36                        # standard.py:296:36
	vadd.f.mz.rn vr1{mr1}, vr1, vr10
	vadd.f.mz.rn vr1{mr1}, vr1, vr0
	vadd.f.mz.rn vr1{mr1}, vr1, vr2
	vadd.f.mz.rn vr1{mr1}, vr1, vr4
	vadd.f.mz.rn vr1{mr1}, vr1, vr5
	vextracti.f r1, 0(vr1)
	vextracti.f r3, 1(vr1)
	add.f.rn r1, r1, r3
	vextracti.f r3, 2(vr1)
	add.f.rn r1, r3, r1
	vextracti.f r3, 3(vr1)
	add.f.rn r1, r3, r1
	vextracti.f r3, 4(vr1)
	add.f.rn r1, r3, r1
	vextracti.f r3, 5(vr1)
	add.f.rn r1, r3, r1
	vextracti.f r3, 6(vr1)
	add.f.rn r1, r3, r1
	vextracti.f r3, 7(vr1)
	add.f.rn r1, r3, r1
	vextracti.f r3, 8(vr1)
	add.f.rn r1, r3, r1
	vextracti.f r3, 9(vr1)
	add.f.rn r1, r3, r1
	vextracti.f r3, 10(vr1)
	add.f.rn r1, r3, r1
	vextracti.f r3, 11(vr1)
	add.f.rn r1, r3, r1
	vextracti.f r3, 12(vr1)
	add.f.rn r1, r3, r1
	vextracti.f r3, 13(vr1)
	add.f.rn r1, r3, r1
	vextracti.f r3, 14(vr1)
	add.f.rn r1, r3, r1
	vextracti.f r3, 15(vr1)
	add.f.rn r1, r3, r1
	loadli.w r3,  -6404(r30)                # 4-byte Folded Reload
	stores.w r1, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r13, zero, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	loads.w r1, 0(r10)
	loads.w r3, 4(r10)
	loads.w r5, 8(r10)
	add.f.rn r1, r1, r3
	loads.w r3, 12(r10)
	add.f.rn r1, r1, r5
	add.f.rn r1, r1, r3
	stores.w r1, 0(r10)
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r1, 0(r10)
.Ltmp52:
	.loc	1 356 25                        # _p800_reduce.py:356:25
	lui r3, 260096
	div.f.rn r1, r3, r1
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -5440
	#APP
	vmul.f.mz.rn vr0{mr1}, r1, vr0
	#NO_APP
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16 is_stmt 0              # _p800_reduce.py:357:16
	addli r3, r30, -2304
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -5376
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r3, r30, -2240
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -5312
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r3, r30, -2176
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -5056
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r3, r30, -2112
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -5184
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r3, r30, -2048
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -5504
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r3, r30, -1984
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -4544
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r3, r30, -1920
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -4480
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r3, r30, -1856
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -4928
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r3, r30, -1792
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -5120
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r3, r30, -1728
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -4864
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r3, r30, -1664
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -4736
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r3, r30, -1600
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -5568
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r3, r30, -1536
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -4672
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r3, r30, -1472
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -4608
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r3, r30, -1408
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -4416
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r3, r30, -1344
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -5632
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r3, r30, -1280
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -5696
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r3, r30, -1216
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -4992
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r3, r30, -1152
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -4800
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # _p800_reduce.py:357:16
	addli r3, r30, -1088
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, 0(r3)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr7
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -1024(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	addli r3, r30, -5248
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr9
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -960(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr8
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -896(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	vload_mask16.mz vr1{mr1}, 0(r3)         # 64-byte Folded Reload
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr1
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -832(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr3
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -768(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr6
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -704(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr11
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -640(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr1{mr1}, r1, vr10
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr1{mr1}, -576(r30)
	vstore_mask16.mz vr0{mr1}, -512(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr0{mr1}, r1, vr2
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr0{mr1}, -448(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr0{mr1}, r1, vr4
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr0{mr1}, -384(r30)
	.loc	1 357 21                        # _p800_reduce.py:357:21
	#APP
	vmul.f.mz.rn vr0{mr1}, r1, vr5
	#NO_APP
	.loc	1 357 16                        # _p800_reduce.py:357:16
	vstore_mask16.mz vr0{mr1}, -320(r30)
	addli r1, r14, 0
	.loc	1 335 0 is_stmt 1               # _p800_reduce.py:335:0
	mfence { lm }
	loadli.w r3,  64(r30)
	blt.s r2, r3, .LBB0_2
# %bb.10:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0 is_stmt 0                 # _p800_reduce.py:0:0
	addli r1, zero, 0
	j .LBB0_2
.LBB0_11:                               # %._crit_edge
	.loc	1 358 4 epilogue_begin is_stmt 1 # _p800_reduce.py:358:4
	addli sp, r30, -6464
	addli sp, sp, 6464
	mfence { lm, sm, gm }
	exit
.Ltmp53:
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
	.long	6592                            # 0x19c0
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
