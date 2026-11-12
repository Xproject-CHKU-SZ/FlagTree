	.text
	.file	"LLVMDialectModule"
	.section	.text._tle_row_softmax_fused_center,"ax",@progbits
	.globl	_tle_row_softmax_fused_center   # -- Begin function _tle_row_softmax_fused_center
	.type	_tle_row_softmax_fused_center,@function
_tle_row_softmax_fused_center:          # @_tle_row_softmax_fused_center
.Lfunc_begin0:
	.file	1 "/tmp" "fused_center.py"
	.loc	1 335 0                         # fused_center.py:335:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -6144
	lui r7, :hi20:global_smem
	.loc	1 353 24 prologue_end           # fused_center.py:353:24
	core_id r1
	addli r30, sp, 6016
	lui r4, 15
	slli r2, r1, 2
	addli r7, r7, :lo12:global_smem
	loadli.w r6,  96(r30)
	loadli.w r5,  92(r30)
	loadli.w r8,  100(r30)
	ori r4, r4, 4095
	add.s r3, r7, r2
	lui r2, 4
	mul.s r6, r6, r5
	load_param_i r5, 0
	add.s r3, r3, r2
	storeli.w r3, -5956(r30)                # 4-byte Folded Spill
	stores.w zero, 0(r3)
	mul.s r3, r6, r8
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	storeli.w r3, -5960(r30)                # 4-byte Folded Spill
	ble.s r3, r5, .LBB0_9
# %bb.1:                                # %.lr.ph
	.loc	1 0 24 is_stmt 0                # fused_center.py:0:24
	andi r3, r1, 3
	load.d r[13:14], 48(r30)
	load.d r[17:18], 32(r30)
	addli r6, r30, -5976
	loadli.w r21,  40(r30)
	addli r20, zero, 512
	loadli.w r24,  12(r30)
	loadli.w r25,  68(r30)
	load.d r[27:28], 24(r30)
	load.d r[8:9], 80(r30)
	slli r19, r3, 9
	storeli.w r3, -5964(r30)                # 4-byte Folded Spill
	addli r3, zero, 2
	zext_int2long r[10:11], r19
	mul.sl r[13:14], r[13:14], r[10:11]
	mul.sl r[8:9], r[8:9], r[10:11]
	sll.d r[13:14], r[13:14], r3
	add.ul r[12:13], r[17:18], r[13:14]
	sub.s r14, r21, r19
	store.d r[12:13], 0(r6)                 # 8-byte Folded Spill
	lui r13, 262143
	max.s r14, r14, zero
	load_param_i r6, 1
	addli r12, r30, -5992
	ori r13, r13, 4092
	storeli.w r6, -5980(r30)                # 4-byte Folded Spill
	and r13, r1, r13
	srli r1, r1, 2
	slli r13, r13, 2
	andi r23, r1, 15
	sub.s r1, r24, r19
	add.s r7, r7, r13
	min.s r13, r14, r20
	max.s r1, r1, zero
	slli r6, r13, 2
	add.s r24, r7, r2
	sub.s r2, r25, r19
	min.s r1, r1, r20
	addli r13, r30, -2048
	storeli.w r6, -5984(r30)                # 4-byte Folded Spill
	zext_int2long r[6:7], r23
	max.s r2, r2, zero
	store.d r[6:7], 0(r12)                  # 8-byte Folded Spill
	mul.sl r[6:7], r[27:28], r[10:11]
	addli r12, r30, -6000
	store.d r[6:7], 0(r12)                  # 8-byte Folded Spill
	slli r7, r1, 2
	min.s r1, r2, r20
	slli r10, r1, 2
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 335 0 is_stmt 1               # fused_center.py:335:0
	load.d r[11:12], 72(r30)
	addli r3, zero, 2
	load.d r[14:15], 56(r30)
	lui r1, 983040
	or r1, r2, r1
	mul.sl r[11:12], r[19:20], r[11:12]
	add.ul r[11:12], r[11:12], r[8:9]
	sll.d r[11:12], r[11:12], r3
	add.ul r[11:12], r[14:15], r[11:12]
	s_lm2gm r1, r13, 0(r[11:12])
	loadli.w r1,  -5980(r30)                # 4-byte Folded Reload
	mfence { lm }
	add.s r5, r5, r1
	loadli.w r1,  -5960(r30)                # 4-byte Folded Reload
	blt.s r5, r1, .LBB0_3
	j .LBB0_9
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 # fused_center.py:0:0
	loadli.w r1,  100(r30)
	loadli.w r2,  96(r30)
	.loc	1 335 0                         # fused_center.py:335:0
	loadli.w r6,  -5984(r30)                # 4-byte Folded Reload
	div.s r1, r5, r1
	div.s r1, r1, r2
	lui r2, 983040
	or r2, r6, r2
	.loc	1 342 20 is_stmt 1              # fused_center.py:342:20
	slli r19, r1, 4
	.loc	1 335 0                         # fused_center.py:335:0
	addli r1, r30, -5976
	load.d r[11:12], 0(r1)                  # 8-byte Folded Reload
	addli r1, r30, -4096
	l_gm2lm r2, r1, 0(r[11:12])
	or r1, r19, r23
	addli r2, r7, 0
	mfence { lm }
	loadli.w r6,  8(r30)
	blt.s r1, r6, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0 is_stmt 0                 # fused_center.py:0:0
	addli r2, zero, 0
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 335 0                         # fused_center.py:335:0
	addli r6, r30, -5992
	sext_int2long r[19:20], r19
	load.d r[11:12], 0(r6)                  # 8-byte Folded Reload
	addli r6, r30, -6000
	or.d r[19:20], r[19:20], r[11:12]
	load.d r[11:12], 16(r30)
	mul.sl r[14:15], r[19:20], r[11:12]
	load.d r[11:12], 0(r6)                  # 8-byte Folded Reload
	add.ul r[14:15], r[14:15], r[11:12]
	lui r11, 983040
	or r2, r2, r11
	load.d r[11:12], 0(r30)
	sll.d r[14:15], r[14:15], r3
	add.ul r[14:15], r[11:12], r[14:15]
	l_gm2lm r2, r13, 0(r[14:15])
	.loc	1 352 17 is_stmt 1              # fused_center.py:352:17
	addli r2, r30, -2048
	.loc	1 335 0                         # fused_center.py:335:0
	mfence { lm }
	.loc	1 352 17                        # fused_center.py:352:17
	vload_mask16.mz vr5{mr1}, 0(r2)
	addli r2, r30, -1984
	vload_mask16.mz vr4{mr1}, 0(r2)
	addli r2, r30, -1920
	vload_mask16.mz vr3{mr1}, 0(r2)
	addli r2, r30, -1856
	vload_mask16.mz vr2{mr1}, 0(r2)
	addli r2, r30, -1792
	vload_mask16.mz vr1{mr1}, 0(r2)
	addli r2, r30, -1728
	vload_mask16.mz vr0{mr1}, 0(r2)
	.loc	1 352 22 is_stmt 0              # fused_center.py:352:22
	addli r2, r30, -4096
	vload_mask16.mz vr7{mr1}, 0(r2)
	.loc	1 352 17                        # fused_center.py:352:17
	addli r2, r30, -1664
	vload_mask16.mz vr10{mr1}, 0(r2)
	addli r2, r30, -1600
	vload_mask16.mz vr9{mr1}, 0(r2)
	addli r2, r30, -1536
	vload_mask16.mz vr8{mr1}, 0(r2)
	addli r2, r30, -1472
	.loc	1 352 22                        # fused_center.py:352:22
	vadd.f.mz.rn vr5{mr1}, vr5, vr7
	.loc	1 352 17                        # fused_center.py:352:17
	vload_mask16.mz vr6{mr1}, 0(r2)
	.loc	1 352 22                        # fused_center.py:352:22
	addli r2, r30, -4032
	vload_mask16.mz vr11{mr1}, 0(r2)
	addli r2, r30, -5376
	vstore_mask16.mz vr5{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -3968
	vload_mask16.mz vr5{mr1}, 0(r2)
	addli r2, r30, -5312
	vadd.f.mz.rn vr4{mr1}, vr4, vr11
	vstore_mask16.mz vr4{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -3904
	vadd.f.mz.rn vr3{mr1}, vr3, vr5
	vload_mask16.mz vr4{mr1}, 0(r2)
	addli r2, r30, -5248
	vstore_mask16.mz vr3{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -3840
	vload_mask16.mz vr3{mr1}, 0(r2)
	addli r2, r30, -4160
	vadd.f.mz.rn vr2{mr1}, vr2, vr4
	vstore_mask16.mz vr2{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -3776
	vadd.f.mz.rn vr1{mr1}, vr1, vr3
	vload_mask16.mz vr2{mr1}, 0(r2)
	addli r2, r30, -4224
	vstore_mask16.mz vr1{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -3712
	vload_mask16.mz vr1{mr1}, 0(r2)
	addli r2, r30, -5184
	vadd.f.mz.rn vr0{mr1}, vr0, vr2
	vstore_mask16.mz vr0{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -3648
	vadd.f.mz.rn vr1{mr1}, vr10, vr1
	vload_mask16.mz vr0{mr1}, 0(r2)
	.loc	1 352 17                        # fused_center.py:352:17
	addli r2, r30, -4288
	vstore_mask16.mz vr1{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -1408
	vload_mask16.mz vr1{mr1}, 0(r2)
	.loc	1 352 22                        # fused_center.py:352:22
	addli r2, r30, -5120
	vadd.f.mz.rn vr0{mr1}, vr9, vr0
	vstore_mask16.mz vr0{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -3584
	vload_mask16.mz vr0{mr1}, 0(r2)
	addli r2, r30, -3520
	vload_mask16.mz vr2{mr1}, 0(r2)
	addli r2, r30, -3456
	vload_mask16.mz vr3{mr1}, 0(r2)
	addli r2, r30, -4352
	vadd.f.mz.rn vr0{mr1}, vr8, vr0
	vstore_mask16.mz vr0{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr6, vr2
	addli r2, r30, -4736
	vstore_mask16.mz vr0{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr1, vr3
	.loc	1 352 17                        # fused_center.py:352:17
	addli r2, r30, -4416
	vstore_mask16.mz vr0{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -1344
	vload_mask16.mz vr0{mr1}, 0(r2)
	addli r2, r30, -1280
	vload_mask16.mz vr1{mr1}, 0(r2)
	addli r2, r30, -1216
	vload_mask16.mz vr2{mr1}, 0(r2)
	.loc	1 352 22                        # fused_center.py:352:22
	addli r2, r30, -3392
	vload_mask16.mz vr3{mr1}, 0(r2)
	addli r2, r30, -3328
	vload_mask16.mz vr4{mr1}, 0(r2)
	addli r2, r30, -3264
	vload_mask16.mz vr5{mr1}, 0(r2)
	addli r2, r30, -5056
	vadd.f.mz.rn vr0{mr1}, vr0, vr3
	vstore_mask16.mz vr0{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr1, vr4
	addli r2, r30, -4672
	vstore_mask16.mz vr0{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr2, vr5
	.loc	1 352 17                        # fused_center.py:352:17
	addli r2, r30, -4480
	vstore_mask16.mz vr0{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -1152
	vload_mask16.mz vr0{mr1}, 0(r2)
	addli r2, r30, -1088
	vload_mask16.mz vr1{mr1}, 0(r2)
	.loc	1 352 22                        # fused_center.py:352:22
	addli r2, r30, -3200
	.loc	1 352 17                        # fused_center.py:352:17
	vload_mask16.mz vr2{mr1}, -1024(r30)
	.loc	1 352 22                        # fused_center.py:352:22
	vload_mask16.mz vr3{mr1}, 0(r2)
	addli r2, r30, -3136
	vload_mask16.mz vr4{mr1}, 0(r2)
	addli r2, r30, -3072
	vload_mask16.mz vr5{mr1}, 0(r2)
	addli r2, r30, -4864
	vadd.f.mz.rn vr0{mr1}, vr0, vr3
	vstore_mask16.mz vr0{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr1, vr4
	addli r2, r30, -4608
	vstore_mask16.mz vr0{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr2, vr5
	.loc	1 352 17                        # fused_center.py:352:17
	addli r2, r30, -4544
	vstore_mask16.mz vr0{mr1}, 0(r2)        # 64-byte Folded Spill
	.loc	1 352 22                        # fused_center.py:352:22
	addli r2, r30, -3008
	.loc	1 352 17                        # fused_center.py:352:17
	vload_mask16.mz vr0{mr1}, -960(r30)
	vload_mask16.mz vr1{mr1}, -896(r30)
	vload_mask16.mz vr2{mr1}, -832(r30)
	.loc	1 352 22                        # fused_center.py:352:22
	vload_mask16.mz vr3{mr1}, 0(r2)
	addli r2, r30, -2944
	vload_mask16.mz vr4{mr1}, 0(r2)
	addli r2, r30, -2880
	vload_mask16.mz vr5{mr1}, 0(r2)
	addli r2, r30, -5696
	vadd.f.mz.rn vr10{mr1}, vr0, vr3
	vadd.f.mz.rn vr0{mr1}, vr1, vr4
	vstore_mask16.mz vr0{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr2, vr5
	.loc	1 352 17                        # fused_center.py:352:17
	addli r2, r30, -5760
	vstore_mask16.mz vr0{mr1}, 0(r2)        # 64-byte Folded Spill
	.loc	1 352 22                        # fused_center.py:352:22
	addli r2, r30, -2816
	.loc	1 352 17                        # fused_center.py:352:17
	vload_mask16.mz vr0{mr1}, -768(r30)
	vload_mask16.mz vr1{mr1}, -704(r30)
	vload_mask16.mz vr2{mr1}, -640(r30)
	.loc	1 352 22                        # fused_center.py:352:22
	vload_mask16.mz vr3{mr1}, 0(r2)
	addli r2, r30, -2752
	vload_mask16.mz vr4{mr1}, 0(r2)
	addli r2, r30, -2688
	vload_mask16.mz vr5{mr1}, 0(r2)
	addli r2, r30, -4992
	vadd.f.mz.rn vr0{mr1}, vr0, vr3
	vstore_mask16.mz vr0{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr1, vr4
	addli r2, r30, -4800
	vstore_mask16.mz vr0{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr2, vr5
	.loc	1 352 17                        # fused_center.py:352:17
	addli r2, r30, -4928
	vstore_mask16.mz vr0{mr1}, 0(r2)        # 64-byte Folded Spill
	.loc	1 352 22                        # fused_center.py:352:22
	addli r2, r30, -2624
	.loc	1 352 17                        # fused_center.py:352:17
	vload_mask16.mz vr0{mr1}, -576(r30)
	vload_mask16.mz vr1{mr1}, -512(r30)
	vload_mask16.mz vr2{mr1}, -448(r30)
	.loc	1 352 22                        # fused_center.py:352:22
	vload_mask16.mz vr3{mr1}, 0(r2)
	addli r2, r30, -2560
	vload_mask16.mz vr4{mr1}, 0(r2)
	addli r2, r30, -2496
	vload_mask16.mz vr5{mr1}, 0(r2)
	addli r2, r30, -5824
	vadd.f.mz.rn vr11{mr1}, vr0, vr3
	vadd.f.mz.rn vr0{mr1}, vr1, vr4
	vstore_mask16.mz vr0{mr1}, 0(r2)        # 64-byte Folded Spill
	vadd.f.mz.rn vr0{mr1}, vr2, vr5
	.loc	1 352 17                        # fused_center.py:352:17
	addli r2, r30, -5888
	vstore_mask16.mz vr0{mr1}, 0(r2)        # 64-byte Folded Spill
	.loc	1 352 22                        # fused_center.py:352:22
	addli r2, r30, -2432
	.loc	1 352 17                        # fused_center.py:352:17
	vload_mask16.mz vr1{mr1}, -384(r30)
	vload_mask16.mz vr2{mr1}, -320(r30)
	vload_mask16.mz vr3{mr1}, -256(r30)
	.loc	1 352 22                        # fused_center.py:352:22
	vload_mask16.mz vr4{mr1}, 0(r2)
	addli r2, r30, -2368
	vload_mask16.mz vr5{mr1}, 0(r2)
	addli r2, r30, -2304
	vload_mask16.mz vr6{mr1}, 0(r2)
	addli r2, r30, -5952
	vadd.f.mz.rn vr7{mr1}, vr1, vr4
	vadd.f.mz.rn vr0{mr1}, vr2, vr5
	vadd.f.mz.rn vr2{mr1}, vr3, vr6
	vstore_mask16.mz vr0{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -2240
	.loc	1 352 17                        # fused_center.py:352:17
	vload_mask16.mz vr4{mr1}, -192(r30)
	vload_mask16.mz vr5{mr1}, -128(r30)
	vload_mask16.mz vr6{mr1}, -64(r30)
	.loc	1 352 22                        # fused_center.py:352:22
	vload_mask16.mz vr8{mr1}, 0(r2)
	addli r2, r30, -2176
	vload_mask16.mz vr9{mr1}, 0(r2)
	addli r2, r30, -2112
	vload_mask16.mz vr0{mr1}, 0(r2)
	addli r2, r30, -5312
	vadd.f.mz.rn vr1{mr1}, vr4, vr8
	vload_mask16.mz vr4{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -5248
	vload_mask16.mz vr3{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -5376
	vadd.f.mz.rn vr9{mr1}, vr5, vr9
	vadd.f.mz.rn vr5{mr1}, vr6, vr0
	vload_mask16.mz vr0{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -4160
	.loc	1 353 24 is_stmt 1              # fused_center.py:353:24
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr4
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr3
	#NO_APP
	vload_mask16.mz vr3{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -5184
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr3
	#NO_APP
	vload_mask16.mz vr3{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -4224
	vload_mask16.mz vr4{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -4736
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr4
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr3
	#NO_APP
	vload_mask16.mz vr6{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -4288
	vload_mask16.mz vr3{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -4672
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr3
	#NO_APP
	vload_mask16.mz vr4{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -5120
	vload_mask16.mz vr3{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -4352
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr3
	#NO_APP
	vload_mask16.mz vr3{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -4608
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr3
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr6
	#NO_APP
	vload_mask16.mz vr8{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -5056
	vload_mask16.mz vr3{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -4416
	vload_mask16.mz vr6{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -4864
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr6
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr3
	#NO_APP
	vload_mask16.mz vr6{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -5696
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr4
	#NO_APP
	vload_mask16.mz vr4{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -4480
	vload_mask16.mz vr3{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -5760
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr3
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr6
	#NO_APP
	vload_mask16.mz vr6{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -4544
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr8
	#NO_APP
	vload_mask16.mz vr3{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -4992
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr3
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	vload_mask16.mz vr8{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -5440
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr4
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr6
	#NO_APP
	vstore_mask16.mz vr10{mr1}, 0(r2)       # 64-byte Folded Spill
	addli r2, r30, -4928
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr8
	#NO_APP
	vload_mask16.mz vr10{mr1}, 0(r2)        # 64-byte Folded Reload
	addli r2, r30, -4800
	vload_mask16.mz vr3{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -5888
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr3
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	vload_mask16.mz vr3{mr1}, 0(r2)         # 64-byte Folded Reload
	addli r2, r30, -5824
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr11
	#NO_APP
	vload_mask16.mz vr10{mr1}, 0(r2)        # 64-byte Folded Reload
	addli r2, r30, -5504
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr10
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr3
	#NO_APP
	vstore_mask16.mz vr11{mr1}, 0(r2)       # 64-byte Folded Spill
	addli r2, r30, -5568
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr7
	#NO_APP
	vstore_mask16.mz vr7{mr1}, 0(r2)        # 64-byte Folded Spill
	addli r2, r30, -5952
	vload_mask16.mz vr11{mr1}, 0(r2)        # 64-byte Folded Reload
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr11
	#NO_APP
	addli r2, r30, -5632
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr2
	#NO_APP
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr1
	#NO_APP
	vstore_mask16.mz vr1{mr1}, 0(r2)        # 64-byte Folded Spill
	#APP
	vmax.f.mz vr0{mr1}, vr0, vr9
	#NO_APP
	#APP
	vmax.f.mz vr8{mr1}, vr0, vr5
	#NO_APP
	vextracti.f r2, 0(vr8)
	vextracti.f r11, 1(vr8)
	vextracti.f r14, 2(vr8)
	vextracti.f r15, 3(vr8)
	vextracti.f r16, 4(vr8)
	vextracti.f r3, 5(vr8)
	vextracti.f r12, 6(vr8)
	vextracti.f r17, 7(vr8)
	vextracti.f r18, 8(vr8)
	vextracti.f r6, 9(vr8)
	vextracti.f r21, 10(vr8)
	vextracti.f r22, 11(vr8)
	vextracti.f r25, 12(vr8)
	vextracti.f r26, 13(vr8)
	vextracti.f r27, 14(vr8)
	vextracti.f r28, 15(vr8)
	#APP
	max.f r2, r2, r11
	#NO_APP
	#APP
	max.f r2, r2, r14
	#NO_APP
	#APP
	max.f r2, r2, r15
	#NO_APP
	#APP
	max.f r2, r2, r16
	#NO_APP
	#APP
	max.f r2, r2, r3
	#NO_APP
	loadli.w r3,  -5956(r30)                # 4-byte Folded Reload
	#APP
	max.f r2, r2, r12
	#NO_APP
	#APP
	max.f r2, r2, r17
	#NO_APP
	#APP
	max.f r2, r2, r18
	#NO_APP
	#APP
	max.f r2, r2, r6
	#NO_APP
	#APP
	max.f r2, r2, r21
	#NO_APP
	#APP
	max.f r2, r2, r22
	#NO_APP
	#APP
	max.f r2, r2, r25
	#NO_APP
	#APP
	max.f r2, r2, r26
	#NO_APP
	#APP
	max.f r2, r2, r27
	#NO_APP
	#APP
	max.f r2, r2, r28
	#NO_APP
	stores.w r2, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loadli.w r2,  -5964(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	loads.w r2, 0(r24)
	loads.w r3, 4(r24)
	loads.w r6, 8(r24)
	loads.w r11, 12(r24)
	#APP
	max.f r2, r2, r3
	#NO_APP
	#APP
	max.f r2, r2, r6
	#NO_APP
	#APP
	max.f r2, r2, r11
	#NO_APP
	stores.w r2, 0(r24)
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r2, 0(r24)
	.loc	1 357 21                        # fused_center.py:357:21
	lui r3, 524288
	xor r2, r2, r3
	addli r3, r30, -5376
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16 is_stmt 0              # fused_center.py:357:16
	addli r3, r30, -2048
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr7{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr7{mr1}, 0(r3)
	.loc	1 357 21                        # fused_center.py:357:21
	addli r3, r30, -5312
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # fused_center.py:357:16
	addli r3, r30, -1984
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, 0(r3)
	.loc	1 357 21                        # fused_center.py:357:21
	addli r3, r30, -5248
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # fused_center.py:357:16
	addli r3, r30, -1920
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, 0(r3)
	.loc	1 357 21                        # fused_center.py:357:21
	addli r3, r30, -4160
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # fused_center.py:357:16
	addli r3, r30, -1856
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, 0(r3)
	.loc	1 357 21                        # fused_center.py:357:21
	addli r3, r30, -4224
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # fused_center.py:357:16
	addli r3, r30, -1792
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, 0(r3)
	.loc	1 357 21                        # fused_center.py:357:21
	addli r3, r30, -5184
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # fused_center.py:357:16
	addli r3, r30, -1728
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, 0(r3)
	.loc	1 357 21                        # fused_center.py:357:21
	addli r3, r30, -4288
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # fused_center.py:357:16
	addli r3, r30, -1664
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, 0(r3)
	.loc	1 357 21                        # fused_center.py:357:21
	addli r3, r30, -5120
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # fused_center.py:357:16
	addli r3, r30, -1600
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, 0(r3)
	.loc	1 357 21                        # fused_center.py:357:21
	addli r3, r30, -4352
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # fused_center.py:357:16
	addli r3, r30, -1536
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, 0(r3)
	.loc	1 357 21                        # fused_center.py:357:21
	addli r3, r30, -4736
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # fused_center.py:357:16
	addli r3, r30, -1472
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, 0(r3)
	.loc	1 357 21                        # fused_center.py:357:21
	addli r3, r30, -4416
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # fused_center.py:357:16
	addli r3, r30, -1408
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, 0(r3)
	.loc	1 357 21                        # fused_center.py:357:21
	addli r3, r30, -5056
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # fused_center.py:357:16
	addli r3, r30, -1344
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, 0(r3)
	.loc	1 357 21                        # fused_center.py:357:21
	addli r3, r30, -4672
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # fused_center.py:357:16
	addli r3, r30, -1280
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, 0(r3)
	.loc	1 357 21                        # fused_center.py:357:21
	addli r3, r30, -4480
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # fused_center.py:357:16
	addli r3, r30, -1216
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, 0(r3)
	.loc	1 357 21                        # fused_center.py:357:21
	addli r3, r30, -4864
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # fused_center.py:357:16
	addli r3, r30, -1152
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, 0(r3)
	.loc	1 357 21                        # fused_center.py:357:21
	addli r3, r30, -4608
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	.loc	1 357 16                        # fused_center.py:357:16
	addli r3, r30, -1088
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, 0(r3)
	.loc	1 357 21                        # fused_center.py:357:21
	addli r3, r30, -4544
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -5440
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -1024(r30)
	.loc	1 357 21                        # fused_center.py:357:21
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -4992
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -960(r30)
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr4
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -896(r30)
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr6
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -832(r30)
	.loc	1 357 21                        # fused_center.py:357:21
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -4800
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -768(r30)
	.loc	1 357 21                        # fused_center.py:357:21
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -4928
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -704(r30)
	.loc	1 357 21                        # fused_center.py:357:21
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -5504
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -640(r30)
	.loc	1 357 21                        # fused_center.py:357:21
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -5568
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -576(r30)
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr10
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -512(r30)
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr3
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -448(r30)
	.loc	1 357 21                        # fused_center.py:357:21
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	addli r3, r30, -5632
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -384(r30)
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr11
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -320(r30)
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr2
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -256(r30)
	.loc	1 357 21                        # fused_center.py:357:21
	vload_mask16.mz vr0{mr1}, 0(r3)         # 64-byte Folded Reload
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr0
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -192(r30)
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr9
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -128(r30)
	.loc	1 357 21                        # fused_center.py:357:21
	#APP
	vadd.f.mz.rn vr0{mr1}, r2, vr5
	#NO_APP
	.loc	1 357 16                        # fused_center.py:357:16
	vstore_mask16.mz vr0{mr1}, -64(r30)
	addli r2, r10, 0
	.loc	1 335 0 is_stmt 1               # fused_center.py:335:0
	mfence { lm }
	loadli.w r3,  64(r30)
	blt.s r1, r3, .LBB0_2
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0 is_stmt 0                 # fused_center.py:0:0
	addli r2, zero, 0
	j .LBB0_2
.LBB0_9:                                # %._crit_edge
	.loc	1 358 4 epilogue_begin is_stmt 1 # fused_center.py:358:4
	addli sp, r30, -6016
	addli sp, sp, 6016
	mfence { lm, sm, gm }
	exit
.Ltmp0:
.Lfunc_end0:
	.size	_tle_row_softmax_fused_center, .Lfunc_end0-_tle_row_softmax_fused_center
	.cfi_endproc
                                        # -- End function
	.type	global_smem,@object             # @global_smem
	.section	".sm.LLVMDialectModule;global_smem","a",@nobits
	.p2align	3, 0x0
global_smem:
	.size	global_smem, 0

	.type	XPU_KERNEL_PARAM_SIZE__tle_row_softmax_fused_center,@object # @XPU_KERNEL_PARAM_SIZE__tle_row_softmax_fused_center
	.section	.XPU.KERNEL_PARAM_SIZE._tle_row_softmax_fused_center,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE__tle_row_softmax_fused_center
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE__tle_row_softmax_fused_center:
	.long	104                             # 0x68
	.size	XPU_KERNEL_PARAM_SIZE__tle_row_softmax_fused_center, 4

	.type	XPU_KERNEL_STACK_SIZE__tle_row_softmax_fused_center,@object # @XPU_KERNEL_STACK_SIZE__tle_row_softmax_fused_center
	.section	.XPU.KERNEL_STACK_SIZE._tle_row_softmax_fused_center,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE__tle_row_softmax_fused_center
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE__tle_row_softmax_fused_center:
	.long	6144                            # 0x1800
	.size	XPU_KERNEL_STACK_SIZE__tle_row_softmax_fused_center, 4

	.type	XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_fused_center,@object # @XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_fused_center
	.section	.XPU.KERNEL_DYNAMIC_LM._tle_row_softmax_fused_center,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_fused_center
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_fused_center:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_fused_center, 4

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
.asciz	"fused_center.py"               # string offset=7
.Linfo_string2:
.asciz	"/tmp"                          # string offset=23
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
