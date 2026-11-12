	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/5b" "c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py"
	.loc	1 22 0                          # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1288
	lui r2, :hi20:global_smem
	core_id r1
	addli r30, sp, 1224
	lui r6, 260096
	load_param_i r13, 0
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r11,  36(r30)
	loadli.w r4,  32(r30)
	loadli.w r8,  40(r30)
	add.s r5, r3, r2
	mul.s r4, r11, r4
	stores.w zero, 0(r5)
	stores.w zero, 256(r5)
	storeli.w r5, -216(r30)                 # 4-byte Folded Spill
	stores.w r6, 512(r5)
	lui r5, 15
	mul.s r14, r4, r8
	mfence { lm, sm, gm }
	ori r12, r5, 4095
	csr_set csr3, r12
	sync_group
	ble.s r14, r13, .LBB0_199
# %bb.1:                                # %.lr.ph
	addli r15, zero, 64
	loadli.w r6,  -216(r30)                 # 4-byte Folded Reload
	addli r18, zero, 1
	load.d r[4:5], 8(r30)
	vxor.u.mz vr0{mr1}, vr0, vr0
	#APP
	vxor.s.mz vr1{mr1}, vr1, vr1
	#NO_APP
	load_param_i r17, 1
	storeli.w r12, -212(r30)                # 4-byte Folded Spill
	storeli.w r14, -220(r30)                # 4-byte Folded Spill
	vadd.s.mz vr2{mr1}, zero, vr0
	div.s r16, r1, r15
	storeli.w r17, -236(r30)                # 4-byte Folded Spill
	addli r7, r6, 256
	addli r6, r6, 512
	storeli.w r6, -232(r30)                 # 4-byte Folded Spill
	storeli.w r7, -228(r30)                 # 4-byte Folded Spill
	lui r7, 1048575
	slli r6, r16, 6
	storeli.w r16, -224(r30)                # 4-byte Folded Spill
	sub.s r6, r1, r6
	andi r1, r1, 63
	slli r6, r6, 5
	storeli.w r1, -252(r30)                 # 4-byte Folded Spill
	sext_int2long r[9:10], r6
	storeli.w r6, -240(r30)                 # 4-byte Folded Spill
	ori r6, r7, 3840
	sll.d r[9:10], r[9:10], r18
	and r3, r3, r6
	add.ul r[4:5], r[4:5], r[9:10]
	add.s r2, r3, r2
	lui r3, 15
	store.d r[4:5], -248(r30)               # 8-byte Folded Spill
	lui r4, 260096
	addli r3, r3, 4095
	addli r1, r2, 256
	storeli.w r2, -204(r30)                 # 4-byte Folded Spill
	addli r5, r30, -64
	vor.f.mz vr3{mr1}, r4, vr0
	vmmov mr0, r3
	storeli.w r1, -208(r30)                 # 4-byte Folded Spill
	addli r1, r2, 512
	addli r2, zero, 2047
	addli r4, r30, -128
	storeli.w r1, -260(r30)                 # 4-byte Folded Spill
	lui r1, 239665
	vor.f.mh vr2{mr0}, vr1, vr3
	ori r1, r1, 623
	storeli.w r1, -256(r30)                 # 4-byte Folded Spill
	vadd.f.mz.rn vr3{mr1}, vr2, vr2
	veq.f.mz mr2{mr1}, vr3, vr0
	j .LBB0_5
.LBB0_2:                                #   in Loop: Header=BB0_5 Depth=1
	loadli.w r2,  -900(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -908(r30)                 # 4-byte Folded Reload
	loadli.w r11,  -408(r30)                # 4-byte Folded Reload
	loadli.w r17,  -424(r30)                # 4-byte Folded Reload
	loadli.w r5,  -436(r30)                 # 4-byte Folded Reload
	loadli.w r12,  -452(r30)                # 4-byte Folded Reload
	loadli.w r4,  -468(r30)                 # 4-byte Folded Reload
	loadli.w r19,  -484(r30)                # 4-byte Folded Reload
	loadli.w r7,  -504(r30)                 # 4-byte Folded Reload
	loadli.w r16,  -520(r30)                # 4-byte Folded Reload
	loadli.w r8,  -164(r30)                 # 4-byte Folded Reload
	loadli.w r10,  -168(r30)                # 4-byte Folded Reload
	add.f.rn r18, r2, r3
	loadli.w r2,  -260(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	loadli.w r2,  -744(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -748(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r1, r2
	mul.f.rn r1, r6, r11
	add.f.rn r1, r2, r1
	loadli.w r2,  -740(r30)                 # 4-byte Folded Reload
	sub.f.rn r21, r2, r1
	mul.f.rn r2, r17, r21
	mul.f.rn r21, r21, r21
	add.f.rn r1, r1, r2
	loadli.w r2,  -728(r30)                 # 4-byte Folded Reload
	sub.f.rn r27, r2, r1
	mul.f.rn r2, r5, r27
	mul.f.rn r27, r27, r27
	add.f.rn r1, r1, r2
	loadli.w r2,  -720(r30)                 # 4-byte Folded Reload
	sub.f.rn r25, r2, r1
	mul.f.rn r2, r12, r25
	add.f.rn r1, r1, r2
	loadli.w r2,  -712(r30)                 # 4-byte Folded Reload
	sub.f.rn r9, r2, r1
	mul.f.rn r2, r4, r9
	mul.f.rn r9, r9, r9
	add.f.rn r1, r1, r2
	loadli.w r2,  -704(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r2, r1
	mul.f.rn r2, r19, r3
	mul.f.rn r3, r3, r3
	add.f.rn r1, r1, r2
	loadli.w r2,  -692(r30)                 # 4-byte Folded Reload
	sub.f.rn r22, r2, r1
	mul.f.rn r2, r7, r22
	add.f.rn r1, r1, r2
	loadli.w r2,  -684(r30)                 # 4-byte Folded Reload
	sub.f.rn r20, r2, r1
	mul.f.rn r2, r16, r20
	add.f.rn r1, r1, r2
	loadli.w r2,  -832(r30)                 # 4-byte Folded Reload
	sub.f.rn r14, r2, r1
	loadli.w r2,  -148(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r2, r14
	add.f.rn r1, r1, r2
	loadli.w r2,  -824(r30)                 # 4-byte Folded Reload
	sub.f.rn r15, r2, r1
	loadli.w r2,  -152(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r2, r15
	add.f.rn r1, r1, r2
	loadli.w r2,  -820(r30)                 # 4-byte Folded Reload
	sub.f.rn r26, r2, r1
	loadli.w r2,  -156(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r2, r26
	add.f.rn r1, r1, r2
	loadli.w r2,  -808(r30)                 # 4-byte Folded Reload
	sub.f.rn r24, r2, r1
	loadli.w r2,  -160(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r2, r24
	add.f.rn r2, r1, r2
	loadli.w r1,  -800(r30)                 # 4-byte Folded Reload
	sub.f.rn r1, r1, r2
	mul.f.rn r8, r8, r1
	add.f.rn r8, r2, r8
	loadli.w r2,  -792(r30)                 # 4-byte Folded Reload
	sub.f.rn r2, r2, r8
	mul.f.rn r23, r10, r2
	loadli.w r10,  -784(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r2, r2
	add.f.rn r8, r8, r23
	sub.f.rn r13, r10, r8
	loadli.w r10,  -172(r30)                # 4-byte Folded Reload
	mul.f.rn r23, r10, r13
	loadli.w r10,  -776(r30)                # 4-byte Folded Reload
	storeli.w r13, -692(r30)                # 4-byte Folded Spill
	add.f.rn r8, r8, r23
	sub.f.rn r13, r10, r8
	loadli.w r10,  -176(r30)                # 4-byte Folded Reload
	mul.f.rn r23, r10, r13
	loadli.w r10,  -764(r30)                # 4-byte Folded Reload
	storeli.w r13, -704(r30)                # 4-byte Folded Spill
	add.f.rn r8, r8, r23
	loadli.w r23,  -952(r30)                # 4-byte Folded Reload
	sub.f.rn r13, r10, r8
	loadli.w r10,  -180(r30)                # 4-byte Folded Reload
	mul.f.rn r10, r10, r13
	storeli.w r13, -684(r30)                # 4-byte Folded Spill
	loadli.w r13,  -388(r30)                # 4-byte Folded Reload
	add.f.rn r8, r8, r10
	mul.f.rn r10, r6, r6
	loadli.w r6,  -752(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r6, r8
	mul.f.rn r10, r10, r13
	loadli.w r13,  -184(r30)                # 4-byte Folded Reload
	mul.f.rn r13, r13, r6
	mul.f.rn r10, r10, r11
	loadli.w r11,  -804(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r6, r6
	add.f.rn r8, r8, r13
	loadli.w r13,  -376(r30)                # 4-byte Folded Reload
	add.f.rn r10, r18, r10
	mul.f.rn r13, r13, r21
	sub.f.rn r21, r11, r8
	loadli.w r11,  -844(r30)                # 4-byte Folded Reload
	add.f.rn r10, r11, r10
	mul.f.rn r13, r17, r13
	loadli.w r11,  -188(r30)                # 4-byte Folded Reload
	mul.f.rn r18, r11, r21
	loadli.w r11,  -840(r30)                # 4-byte Folded Reload
	addli r17, r21, 0
	add.f.rn r10, r10, r13
	loadli.w r13,  -392(r30)                # 4-byte Folded Reload
	add.f.rn r8, r8, r18
	mul.f.rn r13, r13, r27
	mul.f.rn r18, r25, r25
	add.f.rn r10, r11, r10
	loadli.w r11,  -788(r30)                # 4-byte Folded Reload
	sub.f.rn r11, r11, r8
	mul.f.rn r13, r5, r13
	loadli.w r5,  -192(r30)                 # 4-byte Folded Reload
	mul.f.rn r25, r5, r11
	storeli.w r11, -376(r30)                # 4-byte Folded Spill
	loadli.w r11,  -412(r30)                # 4-byte Folded Reload
	add.f.rn r10, r10, r13
	loadli.w r5,  -836(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r11, r18
	loadli.w r11,  -428(r30)                # 4-byte Folded Reload
	add.f.rn r8, r8, r25
	add.f.rn r10, r5, r10
	loadli.w r5,  -772(r30)                 # 4-byte Folded Reload
	mul.f.rn r9, r11, r9
	loadli.w r11,  -896(r30)                # 4-byte Folded Reload
	loadli.w r25,  -936(r30)                # 4-byte Folded Reload
	mul.f.rn r13, r12, r13
	loadli.w r12,  -984(r30)                # 4-byte Folded Reload
	sub.f.rn r21, r5, r8
	loadli.w r5,  -828(r30)                 # 4-byte Folded Reload
	mul.f.rn r9, r4, r9
	loadli.w r4,  -756(r30)                 # 4-byte Folded Reload
	add.f.rn r10, r10, r13
	mul.f.rn r13, r11, r21
	mul.f.rn r21, r21, r21
	add.f.rn r10, r5, r10
	loadli.w r5,  -448(r30)                 # 4-byte Folded Reload
	add.f.rn r8, r8, r13
	mul.f.rn r3, r5, r3
	loadli.w r5,  -464(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r10, r9
	mul.f.rn r10, r22, r22
	loadli.w r22,  -956(r30)                # 4-byte Folded Reload
	sub.f.rn r18, r4, r8
	loadli.w r4,  -816(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r19, r3
	loadli.w r19,  -968(r30)                # 4-byte Folded Reload
	add.f.rn r9, r4, r9
	loadli.w r4,  -196(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r4, r18
	loadli.w r4,  -812(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r18, r18
	add.f.rn r3, r9, r3
	mul.f.rn r9, r5, r10
	mul.f.rn r10, r20, r20
	loadli.w r5,  -916(r30)                 # 4-byte Folded Reload
	add.f.rn r8, r8, r13
	add.f.rn r3, r4, r3
	loadli.w r4,  -732(r30)                 # 4-byte Folded Reload
	mul.f.rn r9, r7, r9
	mul.f.rn r7, r15, r15
	sub.f.rn r27, r4, r8
	loadli.w r4,  -472(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r9
	mul.f.rn r10, r4, r10
	loadli.w r4,  -796(r30)                 # 4-byte Folded Reload
	mul.f.rn r9, r5, r27
	add.f.rn r3, r4, r3
	loadli.w r4,  -716(r30)                 # 4-byte Folded Reload
	add.f.rn r8, r8, r9
	mul.f.rn r9, r16, r10
	mul.f.rn r10, r14, r14
	sub.f.rn r20, r4, r8
	loadli.w r4,  -488(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r9
	mul.f.rn r9, r4, r10
	loadli.w r4,  -200(r30)                 # 4-byte Folded Reload
	mul.f.rn r10, r4, r20
	loadli.w r4,  -780(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r4, r3
	loadli.w r4,  -148(r30)                 # 4-byte Folded Reload
	mul.f.rn r9, r4, r9
	add.f.rn r8, r8, r10
	loadli.w r4,  -508(r30)                 # 4-byte Folded Reload
	mul.f.rn r10, r26, r26
	loadli.w r26,  -928(r30)                # 4-byte Folded Reload
	add.f.rn r3, r3, r9
	mul.f.rn r9, r4, r7
	loadli.w r4,  -696(r30)                 # 4-byte Folded Reload
	sub.f.rn r7, r4, r8
	loadli.w r4,  -768(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r4, r3
	loadli.w r4,  -152(r30)                 # 4-byte Folded Reload
	mul.f.rn r9, r4, r9
	loadli.w r4,  -524(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r26, r7
	mul.f.rn r7, r7, r7
	add.f.rn r3, r3, r9
	mul.f.rn r9, r4, r10
	loadli.w r4,  -760(r30)                 # 4-byte Folded Reload
	add.f.rn r8, r8, r13
	mul.f.rn r10, r24, r24
	loadli.w r24,  -944(r30)                # 4-byte Folded Reload
	add.f.rn r3, r4, r3
	loadli.w r4,  -156(r30)                 # 4-byte Folded Reload
	mul.f.rn r9, r4, r9
	loadli.w r4,  -680(r30)                 # 4-byte Folded Reload
	sub.f.rn r14, r4, r8
	loadli.w r4,  -668(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r9
	mul.f.rn r9, r4, r10
	loadli.w r4,  -736(r30)                 # 4-byte Folded Reload
	mul.f.rn r10, r25, r14
	mul.f.rn r14, r14, r14
	add.f.rn r3, r4, r3
	loadli.w r4,  -160(r30)                 # 4-byte Folded Reload
	mul.f.rn r9, r4, r9
	add.f.rn r8, r8, r10
	mul.f.rn r10, r1, r1
	loadli.w r4,  -848(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -664(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r9
	mul.f.rn r9, r4, r10
	loadli.w r4,  -724(r30)                 # 4-byte Folded Reload
	sub.f.rn r1, r1, r8
	add.f.rn r3, r4, r3
	loadli.w r4,  -164(r30)                 # 4-byte Folded Reload
	mul.f.rn r10, r24, r1
	mul.f.rn r9, r4, r9
	loadli.w r4,  -852(r30)                 # 4-byte Folded Reload
	add.f.rn r8, r8, r10
	add.f.rn r3, r3, r9
	mul.f.rn r9, r4, r2
	loadli.w r4,  -708(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	sub.f.rn r2, r2, r8
	add.f.rn r3, r4, r3
	loadli.w r4,  -168(r30)                 # 4-byte Folded Reload
	mul.f.rn r9, r4, r9
	loadli.w r4,  -692(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r23, r2
	mul.f.rn r10, r4, r4
	loadli.w r4,  -856(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r9
	add.f.rn r8, r8, r13
	mul.f.rn r9, r4, r10
	loadli.w r4,  -700(r30)                 # 4-byte Folded Reload
	add.f.rn r10, r4, r3
	loadli.w r3,  -172(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -860(r30)                 # 4-byte Folded Reload
	mul.f.rn r9, r3, r9
	loadli.w r3,  -704(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r3, r3
	loadli.w r3,  -648(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r10, r9
	sub.f.rn r3, r3, r8
	mul.f.rn r10, r4, r13
	loadli.w r4,  -688(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r4, r9
	loadli.w r4,  -176(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r22, r3
	mul.f.rn r3, r3, r3
	mul.f.rn r10, r4, r10
	loadli.w r4,  -684(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r4, r4
	add.f.rn r8, r8, r13
	loadli.w r4,  -864(r30)                 # 4-byte Folded Reload
	add.f.rn r10, r9, r10
	mul.f.rn r13, r4, r15
	loadli.w r4,  -636(r30)                 # 4-byte Folded Reload
	sub.f.rn r9, r4, r8
	loadli.w r4,  -676(r30)                 # 4-byte Folded Reload
	add.f.rn r10, r4, r10
	loadli.w r4,  -180(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r4, r13
	mul.f.rn r15, r19, r9
	loadli.w r4,  -868(r30)                 # 4-byte Folded Reload
	mul.f.rn r9, r9, r9
	add.f.rn r10, r10, r13
	add.f.rn r8, r8, r15
	mul.f.rn r13, r4, r6
	loadli.w r4,  -672(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r17, r17
	loadli.w r17,  -976(r30)                # 4-byte Folded Reload
	add.f.rn r10, r4, r10
	loadli.w r4,  -628(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r4, r8
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r4, r13
	loadli.w r4,  -872(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r17, r6
	add.f.rn r10, r10, r13
	mul.f.rn r13, r4, r15
	loadli.w r4,  -660(r30)                 # 4-byte Folded Reload
	add.f.rn r8, r8, r16
	add.f.rn r10, r4, r10
	loadli.w r4,  -188(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r4, r13
	loadli.w r4,  -376(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r4, r4
	loadli.w r4,  -620(r30)                 # 4-byte Folded Reload
	sub.f.rn r15, r4, r8
	add.f.rn r10, r10, r13
	loadli.w r4,  -876(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r4, r16
	loadli.w r4,  -652(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r12, r15
	add.f.rn r10, r4, r10
	loadli.w r4,  -192(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r4, r13
	loadli.w r4,  -880(r30)                 # 4-byte Folded Reload
	add.f.rn r8, r8, r16
	add.f.rn r10, r10, r13
	mul.f.rn r13, r4, r21
	loadli.w r4,  -608(r30)                 # 4-byte Folded Reload
	sub.f.rn r16, r4, r8
	loadli.w r4,  -644(r30)                 # 4-byte Folded Reload
	add.f.rn r10, r4, r10
	mul.f.rn r13, r11, r13
	loadli.w r11,  -988(r30)                # 4-byte Folded Reload
	loadli.w r4,  -884(r30)                 # 4-byte Folded Reload
	mul.f.rn r21, r11, r16
	add.f.rn r10, r10, r13
	mul.f.rn r13, r4, r18
	loadli.w r4,  -640(r30)                 # 4-byte Folded Reload
	add.f.rn r8, r8, r21
	mul.f.rn r21, r27, r27
	loadli.w r27,  -1004(r30)               # 4-byte Folded Reload
	add.f.rn r10, r4, r10
	loadli.w r4,  -196(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r4, r13
	loadli.w r4,  -600(r30)                 # 4-byte Folded Reload
	sub.f.rn r18, r4, r8
	loadli.w r4,  -888(r30)                 # 4-byte Folded Reload
	add.f.rn r10, r10, r13
	mul.f.rn r21, r4, r21
	loadli.w r4,  -632(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r27, r18
	add.f.rn r10, r4, r10
	loadli.w r4,  -592(r30)                 # 4-byte Folded Reload
	add.f.rn r8, r8, r13
	mul.f.rn r13, r5, r21
	mul.f.rn r21, r20, r20
	loadli.w r5,  -1012(r30)                # 4-byte Folded Reload
	sub.f.rn r20, r4, r8
	add.f.rn r10, r10, r13
	loadli.w r4,  -892(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r4, r21
	loadli.w r4,  -624(r30)                 # 4-byte Folded Reload
	mul.f.rn r21, r5, r20
	add.f.rn r10, r4, r10
	loadli.w r4,  -200(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r4, r13
	loadli.w r4,  -904(r30)                 # 4-byte Folded Reload
	add.f.rn r8, r8, r21
	add.f.rn r10, r10, r13
	mul.f.rn r13, r4, r7
	loadli.w r4,  -580(r30)                 # 4-byte Folded Reload
	sub.f.rn r7, r4, r8
	loadli.w r4,  -616(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r26, r13
	loadli.w r26,  -1020(r30)               # 4-byte Folded Reload
	add.f.rn r10, r4, r10
	loadli.w r4,  -912(r30)                 # 4-byte Folded Reload
	mul.f.rn r21, r26, r7
	mul.f.rn r7, r7, r7
	add.f.rn r10, r10, r13
	mul.f.rn r13, r4, r14
	loadli.w r4,  -612(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r1, r1
	loadli.w r1,  -572(r30)                 # 4-byte Folded Reload
	add.f.rn r8, r8, r21
	loadli.w r21,  -1028(r30)               # 4-byte Folded Reload
	add.f.rn r10, r4, r10
	mul.f.rn r13, r25, r13
	loadli.w r4,  -920(r30)                 # 4-byte Folded Reload
	sub.f.rn r1, r1, r8
	add.f.rn r10, r10, r13
	mul.f.rn r13, r4, r14
	loadli.w r4,  -604(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r21, r1
	mul.f.rn r1, r1, r1
	add.f.rn r10, r4, r10
	mul.f.rn r13, r24, r13
	loadli.w r4,  -924(r30)                 # 4-byte Folded Reload
	loadli.w r24,  -1036(r30)               # 4-byte Folded Reload
	add.f.rn r8, r8, r14
	mul.f.rn r14, r2, r2
	loadli.w r2,  -560(r30)                 # 4-byte Folded Reload
	add.f.rn r10, r10, r13
	sub.f.rn r2, r2, r8
	mul.f.rn r13, r4, r14
	loadli.w r4,  -596(r30)                 # 4-byte Folded Reload
	add.f.rn r10, r4, r10
	loadli.w r4,  -932(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r24, r2
	mul.f.rn r13, r23, r13
	mul.f.rn r2, r2, r2
	add.f.rn r8, r8, r14
	add.f.rn r10, r10, r13
	mul.f.rn r13, r4, r3
	loadli.w r3,  -552(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -588(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r3, r8
	add.f.rn r10, r4, r10
	mul.f.rn r13, r22, r13
	loadli.w r22,  -1044(r30)               # 4-byte Folded Reload
	loadli.w r4,  -940(r30)                 # 4-byte Folded Reload
	mul.f.rn r9, r4, r9
	loadli.w r4,  -584(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r22, r3
	add.f.rn r10, r10, r13
	mul.f.rn r13, r6, r6
	mul.f.rn r3, r3, r3
	mul.f.rn r9, r19, r9
	loadli.w r19,  -1052(r30)               # 4-byte Folded Reload
	add.f.rn r8, r8, r14
	add.f.rn r10, r4, r10
	loadli.w r4,  -540(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r15, r15
	mul.f.rn r15, r16, r16
	sub.f.rn r6, r4, r8
	loadli.w r4,  -948(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r10, r9
	mul.f.rn r10, r4, r13
	loadli.w r4,  -576(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r19, r6
	add.f.rn r9, r4, r9
	loadli.w r4,  -960(r30)                 # 4-byte Folded Reload
	mul.f.rn r6, r6, r6
	mul.f.rn r10, r17, r10
	loadli.w r17,  -1076(r30)               # 4-byte Folded Reload
	add.f.rn r8, r8, r13
	mul.f.rn r13, r4, r14
	loadli.w r4,  -532(r30)                 # 4-byte Folded Reload
	add.f.rn r10, r9, r10
	sub.f.rn r9, r4, r8
	loadli.w r4,  -568(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r12, r13
	loadli.w r12,  -1060(r30)               # 4-byte Folded Reload
	add.f.rn r10, r4, r10
	loadli.w r4,  -964(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r12, r9
	mul.f.rn r9, r9, r9
	add.f.rn r10, r10, r13
	mul.f.rn r13, r4, r15
	loadli.w r4,  -564(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r18, r18
	loadli.w r18,  -1080(r30)               # 4-byte Folded Reload
	add.f.rn r8, r8, r14
	add.f.rn r10, r4, r10
	loadli.w r4,  -516(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r11, r13
	loadli.w r11,  -1068(r30)               # 4-byte Folded Reload
	sub.f.rn r14, r4, r8
	loadli.w r4,  -972(r30)                 # 4-byte Folded Reload
	add.f.rn r10, r10, r13
	mul.f.rn r13, r4, r15
	loadli.w r4,  -556(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r11, r14
	add.f.rn r10, r4, r10
	mul.f.rn r13, r27, r13
	loadli.w r4,  -496(r30)                 # 4-byte Folded Reload
	add.f.rn r8, r8, r16
	mul.f.rn r16, r20, r20
	loadli.w r20,  -1100(r30)               # 4-byte Folded Reload
	add.f.rn r10, r10, r13
	sub.f.rn r15, r4, r8
	loadli.w r4,  -980(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r4, r16
	loadli.w r4,  -548(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r17, r15
	add.f.rn r10, r4, r10
	loadli.w r4,  -992(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r5, r13
	loadli.w r5,  -460(r30)                 # 4-byte Folded Reload
	add.f.rn r8, r8, r16
	add.f.rn r10, r10, r13
	mul.f.rn r13, r4, r7
	loadli.w r4,  -480(r30)                 # 4-byte Folded Reload
	sub.f.rn r7, r4, r8
	loadli.w r4,  -544(r30)                 # 4-byte Folded Reload
	add.f.rn r10, r4, r10
	mul.f.rn r13, r26, r13
	loadli.w r4,  -1000(r30)                # 4-byte Folded Reload
	mul.f.rn r16, r18, r7
	mul.f.rn r1, r4, r1
	loadli.w r4,  -536(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r7, r7
	add.f.rn r10, r10, r13
	add.f.rn r8, r8, r16
	mul.f.rn r13, r21, r1
	loadli.w r1,  -456(r30)                 # 4-byte Folded Reload
	loadli.w r16,  -1092(r30)               # 4-byte Folded Reload
	add.f.rn r10, r4, r10
	loadli.w r4,  -1008(r30)                # 4-byte Folded Reload
	sub.f.rn r1, r1, r8
	mul.f.rn r2, r4, r2
	loadli.w r4,  -528(r30)                 # 4-byte Folded Reload
	add.f.rn r10, r10, r13
	mul.f.rn r13, r16, r1
	mul.f.rn r1, r1, r1
	add.f.rn r10, r4, r10
	loadli.w r4,  -1016(r30)                # 4-byte Folded Reload
	add.f.rn r8, r8, r13
	mul.f.rn r13, r24, r2
	loadli.w r2,  -440(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r4, r3
	loadli.w r4,  -512(r30)                 # 4-byte Folded Reload
	add.f.rn r10, r10, r13
	sub.f.rn r2, r2, r8
	mul.f.rn r3, r22, r3
	add.f.rn r10, r4, r10
	mul.f.rn r13, r20, r2
	loadli.w r4,  -500(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r2, r2
	add.f.rn r10, r10, r3
	loadli.w r3,  -1024(r30)                # 4-byte Folded Reload
	add.f.rn r8, r8, r13
	mul.f.rn r6, r3, r6
	loadli.w r3,  -420(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r3, r8
	add.f.rn r10, r4, r10
	loadli.w r4,  -1032(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r19, r6
	loadli.w r19,  -1108(r30)               # 4-byte Folded Reload
	mul.f.rn r9, r4, r9
	loadli.w r4,  -492(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r19, r3
	mul.f.rn r3, r3, r3
	add.f.rn r6, r10, r6
	mul.f.rn r9, r12, r9
	loadli.w r12,  -1112(r30)               # 4-byte Folded Reload
	add.f.rn r8, r8, r13
	mul.f.rn r13, r14, r14
	add.f.rn r10, r4, r6
	loadli.w r6,  -400(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -1040(r30)                # 4-byte Folded Reload
	sub.f.rn r6, r6, r8
	add.f.rn r9, r10, r9
	mul.f.rn r10, r4, r13
	loadli.w r4,  -476(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r12, r6
	mul.f.rn r6, r6, r6
	add.f.rn r9, r4, r9
	mul.f.rn r10, r11, r10
	loadli.w r4,  -1048(r30)                # 4-byte Folded Reload
	loadli.w r11,  -416(r30)                # 4-byte Folded Reload
	add.f.rn r8, r8, r13
	mul.f.rn r13, r15, r15
	loadli.w r15,  -1124(r30)               # 4-byte Folded Reload
	add.f.rn r10, r9, r10
	loadli.w r9,  -384(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r4, r13
	sub.f.rn r9, r9, r8
	loadli.w r4,  -1056(r30)                # 4-byte Folded Reload
	add.f.rn r10, r5, r10
	mul.f.rn r7, r4, r7
	loadli.w r5,  -444(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -1064(r30)                # 4-byte Folded Reload
	mul.f.rn r14, r15, r9
	mul.f.rn r13, r17, r13
	mul.f.rn r1, r4, r1
	loadli.w r4,  -1072(r30)                # 4-byte Folded Reload
	mul.f.rn r7, r18, r7
	mul.f.rn r2, r4, r2
	loadli.w r4,  -1088(r30)                # 4-byte Folded Reload
	add.f.rn r10, r10, r13
	add.f.rn r8, r8, r14
	loadli.w r13,  -368(r30)                # 4-byte Folded Reload
	mul.f.rn r1, r16, r1
	mul.f.rn r6, r4, r6
	loadli.w r4,  -1096(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r20, r2
	add.f.rn r10, r5, r10
	sub.f.rn r13, r13, r8
	loadli.w r5,  -1132(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r12, r6
	loadli.w r12,  -1156(r30)               # 4-byte Folded Reload
	mul.f.rn r14, r5, r13
	add.f.rn r7, r10, r7
	loadli.w r10,  -432(r30)                # 4-byte Folded Reload
	add.f.rn r7, r10, r7
	add.f.rn r8, r8, r14
	loadli.w r10,  -360(r30)                # 4-byte Folded Reload
	loadli.w r14,  -1140(r30)               # 4-byte Folded Reload
	add.f.rn r1, r7, r1
	sub.f.rn r10, r10, r8
	mul.f.rn r7, r14, r10
	add.f.rn r1, r11, r1
	loadli.w r11,  -1148(r30)               # 4-byte Folded Reload
	mul.f.rn r10, r10, r10
	add.f.rn r7, r8, r7
	add.f.rn r1, r1, r2
	loadli.w r2,  -1084(r30)                # 4-byte Folded Reload
	loadli.w r8,  -404(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r2, r3
	loadli.w r3,  -348(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r3, r7
	add.f.rn r1, r8, r1
	mul.f.rn r2, r19, r2
	mul.f.rn r8, r11, r3
	mul.f.rn r3, r3, r3
	add.f.rn r1, r1, r2
	add.f.rn r2, r7, r8
	loadli.w r7,  -396(r30)                 # 4-byte Folded Reload
	mul.f.rn r8, r9, r9
	add.f.rn r1, r7, r1
	loadli.w r7,  -340(r30)                 # 4-byte Folded Reload
	sub.f.rn r7, r7, r2
	add.f.rn r1, r1, r6
	mul.f.rn r6, r4, r8
	loadli.w r8,  -380(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -1104(r30)                # 4-byte Folded Reload
	mul.f.rn r9, r12, r7
	mul.f.rn r7, r7, r7
	add.f.rn r1, r8, r1
	mul.f.rn r6, r15, r6
	mul.f.rn r8, r13, r13
	loadli.w r15,  -1164(r30)               # 4-byte Folded Reload
	loadli.w r13,  -372(r30)                # 4-byte Folded Reload
	add.f.rn r2, r2, r9
	loadli.w r9,  -332(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r6
	mul.f.rn r6, r4, r8
	loadli.w r4,  -1116(r30)                # 4-byte Folded Reload
	sub.f.rn r9, r9, r2
	mul.f.rn r6, r5, r6
	add.f.rn r1, r13, r1
	loadli.w r5,  -1172(r30)                # 4-byte Folded Reload
	mul.f.rn r8, r15, r9
	add.f.rn r1, r1, r6
	mul.f.rn r6, r4, r10
	loadli.w r10,  -364(r30)                # 4-byte Folded Reload
	loadli.w r4,  -1120(r30)                # 4-byte Folded Reload
	add.f.rn r2, r2, r8
	loadli.w r8,  -320(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r4, r3
	loadli.w r4,  -1128(r30)                # 4-byte Folded Reload
	add.f.rn r1, r10, r1
	mul.f.rn r6, r14, r6
	mul.f.rn r7, r4, r7
	loadli.w r4,  -1188(r30)                # 4-byte Folded Reload
	sub.f.rn r8, r8, r2
	mul.f.rn r3, r11, r3
	loadli.w r11,  -1180(r30)               # 4-byte Folded Reload
	add.f.rn r1, r1, r6
	loadli.w r6,  -356(r30)                 # 4-byte Folded Reload
	mul.f.rn r10, r5, r8
	mul.f.rn r8, r8, r8
	add.f.rn r1, r6, r1
	loadli.w r6,  -312(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r10
	loadli.w r10,  -352(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	sub.f.rn r6, r6, r2
	add.f.rn r1, r10, r1
	loadli.w r10,  -344(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r11, r6
	mul.f.rn r6, r6, r6
	add.f.rn r2, r2, r3
	mul.f.rn r3, r12, r7
	mul.f.rn r7, r9, r9
	loadli.w r9,  -300(r30)                 # 4-byte Folded Reload
	loadli.w r12,  -212(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1136(r30)                # 4-byte Folded Reload
	sub.f.rn r9, r9, r2
	mul.f.rn r3, r3, r7
	add.f.rn r1, r10, r1
	mul.f.rn r7, r4, r9
	loadli.w r10,  -1200(r30)               # 4-byte Folded Reload
	mul.f.rn r3, r15, r3
	add.f.rn r2, r2, r7
	loadli.w r7,  -292(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1144(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r8
	loadli.w r8,  -336(r30)                 # 4-byte Folded Reload
	sub.f.rn r7, r7, r2
	add.f.rn r1, r8, r1
	mul.f.rn r3, r5, r3
	loadli.w r5,  -1192(r30)                # 4-byte Folded Reload
	mul.f.rn r8, r5, r7
	add.f.rn r1, r1, r3
	loadli.w r3,  -1152(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r6
	add.f.rn r2, r2, r8
	loadli.w r6,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r8,  -280(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	mul.f.rn r6, r9, r9
	loadli.w r9,  -324(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r11, r3
	sub.f.rn r8, r8, r2
	add.f.rn r1, r1, r3
	loadli.w r3,  -1160(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r6
	mul.f.rn r6, r10, r8
	mul.f.rn r8, r8, r8
	add.f.rn r1, r9, r1
	loadli.w r9,  -1212(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r4, r3
	add.f.rn r2, r2, r6
	mul.f.rn r6, r7, r7
	loadli.w r4,  -1168(r30)                # 4-byte Folded Reload
	loadli.w r7,  -316(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	mul.f.rn r6, r4, r6
	loadli.w r3,  -276(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -1176(r30)                # 4-byte Folded Reload
	sub.f.rn r3, r3, r2
	add.f.rn r1, r7, r1
	mul.f.rn r6, r5, r6
	loadli.w r5,  -304(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r9, r3
	mul.f.rn r3, r3, r3
	add.f.rn r1, r1, r6
	mul.f.rn r6, r4, r8
	loadli.w r8,  -308(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -1184(r30)                # 4-byte Folded Reload
	add.f.rn r2, r2, r7
	loadli.w r7,  -272(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r4, r3
	loadli.w r4,  -264(r30)                 # 4-byte Folded Reload
	mul.f.rn r6, r10, r6
	add.f.rn r1, r8, r1
	loadli.w r10,  -1216(r30)               # 4-byte Folded Reload
	sub.f.rn r7, r7, r2
	mul.f.rn r3, r9, r3
	add.f.rn r1, r1, r6
	loadli.w r6,  -268(r30)                 # 4-byte Folded Reload
	mul.f.rn r8, r10, r7
	add.f.rn r1, r5, r1
	mul.f.rn r5, r7, r7
	loadli.w r7,  -296(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r8
	loadli.w r8,  -1220(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1196(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r5
	sub.f.rn r6, r6, r2
	add.f.rn r1, r7, r1
	mul.f.rn r5, r8, r6
	mul.f.rn r3, r10, r3
	mul.f.rn r6, r6, r6
	add.f.rn r2, r2, r5
	add.f.rn r1, r1, r3
	loadli.w r3,  -1204(r30)                # 4-byte Folded Reload
	loadli.w r5,  -288(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r3, r6
	sub.f.rn r4, r4, r2
	add.f.rn r1, r5, r1
	mul.f.rn r3, r8, r3
	mul.f.rn r5, r4, r4
	mul.f.rn r4, r28, r4
	add.f.rn r1, r1, r3
	loadli.w r3,  -1208(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r5
	loadli.w r5,  -284(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r4
	add.f.rn r1, r5, r1
	mul.f.rn r3, r28, r3
	add.f.rn r1, r1, r3
	loadli.w r3,  -204(r30)                 # 4-byte Folded Reload
	stores.w r2, 0(r3)
	loadli.w r2,  -208(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r12
	sync_group
	loadli.w r1,  -208(r30)                 # 4-byte Folded Reload
.Ltmp0:
	.loc	1 81 25 prologue_end            # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:81:25
	lui r2, 237568
	.loc	1 84 32                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:84:32
	lui r3, 260096
	.loc	1 87 29                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:87:29
	load.d r[5:6], -144(r30)                # 8-byte Folded Reload
	addli r15, zero, 64
	loads.w r1, 0(r1)
	.loc	1 81 25                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:81:25
	mul.f.rn r1, r1, r2
	.loc	1 83 24                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:83:24
	loadli.w r2,  -256(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -204(r30)                 # 4-byte Folded Reload
	loads.w r2, 0(r2)
	.loc	1 84 32                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:84:32
	sqrt.f.rn r1, r1
	div.f.rn r1, r3, r1
	.loc	1 79 24                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:79:24
	lui r3, 524288
	xor r2, r2, r3
	.loc	1 87 29                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:87:29
	load.d r[3:4], 16(r30)
	.loc	1 79 24                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:79:24
	#APP
	vadd.f.mz.rn vr4{mr1}, r2, vr4
	#NO_APP
	#APP
	vadd.f.mz.rn vr5{mr1}, r2, vr5
	#NO_APP
	.loc	1 87 53                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:87:53
	lui r2, 983040
	.loc	1 85 24                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:85:24
	#APP
	vmul.f.mz.rn vr4{mr1}, r1, vr4
	#NO_APP
	#APP
	vmul.f.mz.rn vr5{mr1}, r1, vr5
	#NO_APP
	.loc	1 87 53                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:87:53
	#APP
	vfloat2fp16_l.rn vr6, vr4
	vfloat2fp16_h.rn vr6, vr5
	#NO_APP
	vstore_mask16.mz vr6{mr1}, -64(r30)
	mfence { lm }
	.loc	1 87 29 is_stmt 0               # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:87:29
	add.ul r[3:4], r[3:4], r[5:6]
	.loc	1 87 53                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:87:53
	or r1, r15, r2
	addli r5, r30, -64
	addli r2, zero, 2047
	s_lm2gm r1, r5, 0(r[3:4])
	addli r4, r30, -128
	mfence { lm }
	loadli.w r8,  40(r30)
	loadli.w r11,  36(r30)
	loadli.w r13,  -132(r30)                # 4-byte Folded Reload
	loadli.w r14,  -220(r30)                # 4-byte Folded Reload
	loadli.w r16,  -224(r30)                # 4-byte Folded Reload
	loadli.w r17,  -236(r30)                # 4-byte Folded Reload
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 53                          # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:0:53
	add.s r13, r13, r17
	blt.s r13, r14, .LBB0_5
	j .LBB0_199
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_9 Depth 2
	div.s r1, r13, r8
	div.s r1, r1, r11
	.loc	1 28 23 is_stmt 1               # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:28:23
	add.s r1, r1, r16
	blt.s r2, r1, .LBB0_4
# %bb.6:                                # %.preheader.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 23 is_stmt 0                # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:0:23
	addli r2, zero, 0
.LBB0_7:                                # %.preheader
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 42 51 is_stmt 1               # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:42:51
	add.s r3, r4, r2
	addli r2, r2, 4
	store.h zero, 0(r3)
	store.h zero, 2(r3)
	mfence { lm }
	bneq r2, r15, .LBB0_7
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	1 42 41 is_stmt 0               # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:42:41
	loadli.w r2,  -240(r30)                 # 4-byte Folded Reload
	.loc	1 42 46                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:42:46
	slli r1, r1, 11
	.loc	1 42 34                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:42:34
	addli r3, zero, 1
	.loc	1 42 41                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:42:41
	add.s r1, r1, r2
	.loc	1 42 34                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:42:34
	sext_int2long r[1:2], r1
	sll.d r[6:7], r[1:2], r3
	load.d r[2:3], 0(r30)
	.loc	1 42 51                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:42:51
	lui r1, 983040
	or r1, r15, r1
	store.d r[6:7], -144(r30)               # 8-byte Folded Spill
	.loc	1 42 34                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:42:34
	add.ul r[2:3], r[2:3], r[6:7]
	.loc	1 42 51                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:42:51
	l_gm2lm r1, r4, 0(r[2:3])
	addli r1, zero, 0
.LBB0_9:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 43 41 is_stmt 1               # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:43:41
	add.s r2, r5, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r15, .LBB0_9
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	lui r1, 983040
	load.d r[2:3], -248(r30)                # 8-byte Folded Reload
	vextracti.f r18, 0(vr3)
	vmmov r11, mr2
	addli r7, zero, 0
	or r1, r15, r1
	l_gm2lm r1, r5, 0(r[2:3])
	andi r1, r11, 1
	.loc	1 42 51                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:42:51
	mfence { lm }
	.loc	1 45 23                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:45:23
	vload_mask16.mz vr5{mr1}, -128(r30)
	.loc	1 47 23                         # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:47:23
	vload_mask16.mz vr4{mr1}, -64(r30)
	bneq r1, zero, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 23 is_stmt 0                # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:0:23
	vextracti.f r1, 0(vr2)
	div.f.rn r7, r1, r18
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r11, 15
	vextracti.f r2, 15(vr3)
	addli r4, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 15(vr2)
	div.f.rn r4, r1, r2
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r11, 14
	vextracti.f r3, 14(vr3)
	addli r6, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 14(vr2)
	div.f.rn r6, r1, r3
.LBB0_16:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r11, 13
	vextracti.f r8, 13(vr3)
	addli r9, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 13(vr2)
	div.f.rn r9, r1, r8
.LBB0_18:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r11, 12
	vextracti.f r10, 12(vr3)
	addli r12, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 12(vr2)
	div.f.rn r12, r1, r10
.LBB0_20:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r11, 11
	vextracti.f r5, 11(vr3)
	addli r15, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 11(vr2)
	div.f.rn r15, r1, r5
.LBB0_22:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r11, 10
	vextracti.f r27, 10(vr3)
	addli r16, zero, 0
	storeli.w r5, -156(r30)                 # 4-byte Folded Spill
	storeli.w r8, -168(r30)                 # 4-byte Folded Spill
	andi r1, r1, 1
	bneq r1, zero, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 10(vr2)
	div.f.rn r16, r1, r27
.LBB0_24:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r11, 9
	storeli.w r2, -148(r30)                 # 4-byte Folded Spill
	vextracti.f r2, 9(vr3)
	addli r19, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 9(vr2)
	div.f.rn r19, r1, r2
.LBB0_26:                               #   in Loop: Header=BB0_5 Depth=1
	storeli.w r2, -188(r30)                 # 4-byte Folded Spill
	srli r2, r11, 8
	vextracti.f r1, 8(vr3)
	addli r20, zero, 0
	storeli.w r3, -152(r30)                 # 4-byte Folded Spill
	andi r2, r2, 1
	bneq r2, zero, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r2, 8(vr2)
	div.f.rn r20, r2, r1
.LBB0_28:                               #   in Loop: Header=BB0_5 Depth=1
	srli r3, r11, 7
	vextracti.f r2, 7(vr3)
	addli r22, zero, 0
	andi r3, r3, 1
	bneq r3, zero, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r3, 7(vr2)
	div.f.rn r22, r3, r2
.LBB0_30:                               #   in Loop: Header=BB0_5 Depth=1
	srli r5, r11, 6
	vextracti.f r3, 6(vr3)
	addli r23, zero, 0
	storeli.w r13, -132(r30)                # 4-byte Folded Spill
	andi r5, r5, 1
	bneq r5, zero, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r5, 6(vr2)
	div.f.rn r23, r5, r3
.LBB0_32:                               #   in Loop: Header=BB0_5 Depth=1
	srli r5, r11, 5
	vextracti.f r13, 5(vr3)
	addli r24, zero, 0
	andi r5, r5, 1
	bneq r5, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r5, 5(vr2)
	div.f.rn r24, r5, r13
.LBB0_34:                               #   in Loop: Header=BB0_5 Depth=1
	srli r5, r11, 4
	vextracti.f r14, 4(vr3)
	addli r25, zero, 0
	andi r5, r5, 1
	bneq r5, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r5, 4(vr2)
	div.f.rn r25, r5, r14
.LBB0_36:                               #   in Loop: Header=BB0_5 Depth=1
	srli r5, r11, 3
	vextracti.f r17, 3(vr3)
	addli r8, r10, 0
	addli r26, zero, 0
	andi r5, r5, 1
	bneq r5, zero, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r5, 3(vr2)
	div.f.rn r26, r5, r17
.LBB0_38:                               #   in Loop: Header=BB0_5 Depth=1
	srli r5, r11, 2
	vextracti.f r21, 2(vr3)
	addli r28, zero, 0
	andi r5, r5, 1
	bneq r5, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r5, 2(vr2)
	div.f.rn r28, r5, r21
.LBB0_40:                               #   in Loop: Header=BB0_5 Depth=1
	srli r5, r11, 1
	vextracti.f r11, 1(vr3)
	andi r10, r5, 1
	addli r5, zero, 0
	bneq r10, zero, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r5, 1(vr2)
	div.f.rn r5, r5, r11
.LBB0_42:                               #   in Loop: Header=BB0_5 Depth=1
	vadd.s.mz vr6{mr1}, zero, vr0
	addli r10, zero, 1
	vmmov mr3, r10
	addli r10, zero, 4096
	vor.u.mh vr6{mr3}, r7, vr6
	addli r7, zero, 2
	vmmov mr3, r7
	vor.u.mh vr6{mr3}, r5, vr6
	addli r5, zero, 4
	vmmov mr3, r5
	addli r5, zero, 8
	vor.u.mh vr6{mr3}, r28, vr6
	vmmov mr3, r5
	addli r5, zero, 16
	vor.u.mh vr6{mr3}, r26, vr6
	vmmov mr3, r5
	addli r5, zero, 32
	addli r26, zero, 0
	vor.u.mh vr6{mr3}, r25, vr6
	vmmov mr3, r5
	addli r5, zero, 64
	vor.u.mh vr6{mr3}, r24, vr6
	vmmov mr3, r5
	addli r5, zero, 128
	vor.u.mh vr6{mr3}, r23, vr6
	vmmov mr3, r5
	addli r5, zero, 256
	vor.u.mh vr6{mr3}, r22, vr6
	vmmov mr3, r5
	addli r5, zero, 512
	addli r22, r18, 0
	add.f.rn r7, r22, r11
	vor.u.mh vr6{mr3}, r20, vr6
	vmmov mr3, r5
	addli r5, zero, 1024
	vor.u.mh vr6{mr3}, r19, vr6
	vmmov mr3, r5
	addli r5, zero, 2048
	vor.u.mh vr6{mr3}, r16, vr6
	vmmov mr3, r5
	slli r5, r7, 9
	seteq r5, r5, zero
	vor.u.mh vr6{mr3}, r15, vr6
	vmmov mr3, r10
	addli r15, zero, 8192
	srli r10, r7, 23
	andi r10, r10, 255
	vor.u.mh vr6{mr3}, r12, vr6
	vmmov mr3, r15
	setle.f r12, zero, r7
	lui r15, 4
	vor.u.mh vr6{mr3}, r9, vr6
	setle.f r9, r7, zero
	vmmov mr3, r15
	vor.u.mh vr6{mr3}, r6, vr6
	setlti r6, r10, 255
	or r5, r6, r5
	and r6, r9, r12
	lui r9, 8
	vmmov mr3, r9
	vor.u.mh vr6{mr3}, r4, vr6
	and r4, r6, r5
	bneq r4, zero, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r26, r11, r7
.LBB0_44:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r9, r21, r7
	loadli.w r19,  -168(r30)                # 4-byte Folded Reload
	loadli.w r15,  -156(r30)                # 4-byte Folded Reload
	slli r4, r9, 9
	setle.f r6, zero, r9
	setle.f r10, r9, zero
	srli r5, r9, 23
	seteq r4, r4, zero
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r10, r6
	and r4, r5, r4
	addli r5, zero, 0
	bneq r4, zero, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r5, r21, r9
.LBB0_46:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r11, r17, r9
	storeli.w r5, -160(r30)                 # 4-byte Folded Spill
	slli r4, r11, 9
	setle.f r6, zero, r11
	setle.f r10, r11, zero
	srli r5, r11, 23
	seteq r4, r4, zero
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r10, r6
	and r4, r5, r4
	addli r5, zero, 0
	bneq r4, zero, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r5, r17, r11
.LBB0_48:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r12, r14, r11
	storeli.w r5, -164(r30)                 # 4-byte Folded Spill
	addli r16, r27, 0
	slli r4, r12, 9
	setle.f r6, zero, r12
	setle.f r10, r12, zero
	srli r5, r12, 23
	seteq r4, r4, zero
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r10, r6
	and r4, r5, r4
	addli r5, zero, 0
	bneq r4, zero, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r5, r14, r12
.LBB0_50:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r14, r13, r12
	storeli.w r5, -172(r30)                 # 4-byte Folded Spill
	slli r4, r14, 9
	setle.f r6, zero, r14
	setle.f r10, r14, zero
	srli r5, r14, 23
	seteq r4, r4, zero
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r10, r6
	and r4, r5, r4
	addli r5, zero, 0
	bneq r4, zero, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r5, r13, r14
.LBB0_52:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r17, r3, r14
	storeli.w r5, -176(r30)                 # 4-byte Folded Spill
	slli r4, r17, 9
	setle.f r6, zero, r17
	setle.f r10, r17, zero
	srli r5, r17, 23
	seteq r4, r4, zero
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r10, r6
	and r4, r5, r4
	addli r5, zero, 0
	bneq r4, zero, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r5, r3, r17
.LBB0_54:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r20, r2, r17
	storeli.w r5, -180(r30)                 # 4-byte Folded Spill
	slli r3, r20, 9
	setle.f r5, zero, r20
	setle.f r10, r20, zero
	srli r4, r20, 23
	seteq r3, r3, zero
	andi r4, r4, 255
	setlti r4, r4, 255
	or r3, r4, r3
	and r4, r10, r5
	and r3, r4, r3
	addli r4, zero, 0
	bneq r3, zero, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r4, r2, r20
.LBB0_56:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r25, r1, r20
	storeli.w r4, -184(r30)                 # 4-byte Folded Spill
	slli r2, r25, 9
	setle.f r4, zero, r25
	setle.f r5, r25, zero
	srli r3, r25, 23
	seteq r2, r2, zero
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r3, r3, r2
	addli r2, zero, 0
	bneq r3, zero, .LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r1, r25
.LBB0_58:                               #   in Loop: Header=BB0_5 Depth=1
	storeli.w r2, -192(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -188(r30)                 # 4-byte Folded Reload
	add.f.rn r28, r2, r25
	slli r1, r28, 9
	setle.f r4, zero, r28
	setle.f r5, r28, zero
	srli r3, r28, 23
	seteq r1, r1, zero
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	and r3, r5, r4
	addli r4, zero, 0
	and r3, r3, r1
	loadli.w r1,  -148(r30)                 # 4-byte Folded Reload
	bneq r3, zero, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r4, r2, r28
.LBB0_60:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r27, r16, r28
	storeli.w r4, -188(r30)                 # 4-byte Folded Spill
	addli r2, zero, 0
	slli r3, r27, 9
	setle.f r5, zero, r27
	setle.f r10, r27, zero
	srli r4, r27, 23
	seteq r3, r3, zero
	andi r4, r4, 255
	setlti r4, r4, 255
	or r3, r4, r3
	and r4, r10, r5
	and r4, r4, r3
	bneq r4, zero, .LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r16, r27
.LBB0_62:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r18, r15, r27
	storeli.w r2, -196(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -152(r30)                 # 4-byte Folded Reload
	addli r3, zero, 0
	slli r4, r18, 9
	setle.f r10, zero, r18
	setle.f r13, r18, zero
	srli r5, r18, 23
	seteq r4, r4, zero
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r13, r10
	and r5, r5, r4
	bneq r5, zero, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r15, r18
.LBB0_64:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r10, r8, r18
	addli r4, zero, 0
	slli r5, r10, 9
	setle.f r15, zero, r10
	setle.f r16, r10, zero
	srli r13, r10, 23
	seteq r5, r5, zero
	andi r13, r13, 255
	setlti r13, r13, 255
	or r5, r13, r5
	and r13, r16, r15
	and r5, r13, r5
	bneq r5, zero, .LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r4, r8, r10
.LBB0_66:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r5, r19, r10
	addli r6, zero, 0
	slli r13, r5, 9
	setle.f r16, zero, r5
	setle.f r21, r5, zero
	srli r15, r5, 23
	seteq r13, r13, zero
	andi r15, r15, 255
	setlti r15, r15, 255
	or r13, r15, r13
	and r15, r21, r16
	and r13, r15, r13
	bneq r13, zero, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r6, r19, r5
.LBB0_68:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r24, r2, r5
	storeli.w r3, -156(r30)                 # 4-byte Folded Spill
	addli r3, zero, 0
	storeli.w r6, -168(r30)                 # 4-byte Folded Spill
	slli r13, r24, 9
	setle.f r16, zero, r24
	setle.f r19, r24, zero
	srli r15, r24, 23
	seteq r13, r13, zero
	andi r15, r15, 255
	setlti r15, r15, 255
	or r13, r15, r13
	and r15, r19, r16
	and r15, r15, r13
	bneq r15, zero, .LBB0_70
# %bb.69:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r2, r24
.LBB0_70:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r16, r1, r24
	storeli.w r3, -200(r30)                 # 4-byte Folded Spill
	addli r3, r22, 0
	addli r2, zero, 0
	storeli.w r4, -152(r30)                 # 4-byte Folded Spill
	slli r15, r16, 9
	setle.f r22, zero, r16
	setle.f r6, r16, zero
	srli r19, r16, 23
	seteq r15, r15, zero
	andi r19, r19, 255
	setlti r19, r19, 255
	and r6, r6, r22
	or r15, r19, r15
	and r6, r6, r15
	bneq r6, zero, .LBB0_72
# %bb.71:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r1, r16
.LBB0_72:                               #   in Loop: Header=BB0_5 Depth=1
	#APP
	vfp162float_l.rn vr7, vr5
	#NO_APP
	#APP
	vfp162float_h.rn vr8, vr5
	#NO_APP
	#APP
	vfp162float_l.rn vr5, vr4
	#NO_APP
	#APP
	vfp162float_h.rn vr9, vr4
	#NO_APP
	vadd.f.mz.rn vr4{mr1}, vr7, vr5
	loadli.w r1,  -232(r30)                 # 4-byte Folded Reload
	loadli.w r23,  -160(r30)                # 4-byte Folded Reload
	loadli.w r21,  -164(r30)                # 4-byte Folded Reload
	loadli.w r13,  -172(r30)                # 4-byte Folded Reload
	loadli.w r15,  -176(r30)                # 4-byte Folded Reload
	storeli.w r2, -148(r30)                 # 4-byte Folded Spill
	vadd.f.mz.rn vr5{mr1}, vr8, vr9
	#APP
	vfloat2fp16_l.rn vr7, vr4
	vfloat2fp16_h.rn vr7, vr5
	#NO_APP
	#APP
	vfp162float_l.rn vr4, vr7
	#NO_APP
	vadd.s.mz vr8{mr1}, zero, vr0
	#APP
	vfp162float_h.rn vr5, vr7
	#NO_APP
	vadd.s.mz vr7{mr1}, zero, vr0
	stores.w r16, 0(r1)
	vor.f.mh vr8{mr0}, vr1, vr5
	vor.f.mh vr7{mr0}, vr1, vr4
	vsub.f.mz.rn vr8{mr1}, vr8, vr7
	vmul.f.mz.rn vr9{mr1}, vr8, vr6
	vmul.f.mz.rn vr8{mr1}, vr8, vr8
	vadd.f.mz.rn vr7{mr1}, vr7, vr9
	vmul.f.mz.rn vr8{mr1}, vr2, vr8
	vextracti.f r6, 0(vr7)
	vextracti.f r16, 1(vr7)
	vmul.f.mz.rn vr6{mr1}, vr8, vr6
	sub.f.rn r19, r16, r6
	vadd.f.mz.rn vr6{mr1}, zero, vr6
	vextracti.f r1, 0(vr6)
	mul.f.rn r16, r26, r19
	mul.f.rn r19, r19, r19
	add.f.rn r6, r6, r16
	vextracti.f r16, 2(vr7)
	mul.f.rn r19, r3, r19
	vextracti.f r3, 1(vr6)
	add.f.rn r1, r1, r3
	sub.f.rn r22, r16, r6
	mul.f.rn r3, r26, r19
	mul.f.rn r16, r23, r22
	mul.f.rn r19, r22, r22
	add.f.rn r1, r1, r3
	loadli.w r22,  -180(r30)                # 4-byte Folded Reload
	add.f.rn r6, r6, r16
	vextracti.f r16, 3(vr7)
	mul.f.rn r3, r7, r19
	vextracti.f r7, 2(vr6)
	add.f.rn r1, r7, r1
	sub.f.rn r8, r16, r6
	mul.f.rn r3, r23, r3
	mul.f.rn r16, r21, r8
	mul.f.rn r7, r8, r8
	add.f.rn r1, r1, r3
	vextracti.f r8, 7(vr7)
	add.f.rn r6, r6, r16
	vextracti.f r16, 4(vr7)
	mul.f.rn r3, r9, r7
	sub.f.rn r4, r16, r6
	mul.f.rn r3, r21, r3
	mul.f.rn r16, r13, r4
	add.f.rn r6, r6, r16
	vextracti.f r16, 5(vr7)
	sub.f.rn r16, r16, r6
	mul.f.rn r2, r15, r16
	add.f.rn r2, r6, r2
	vextracti.f r6, 6(vr7)
	sub.f.rn r6, r6, r2
	mul.f.rn r19, r22, r6
	mul.f.rn r6, r6, r6
	add.f.rn r2, r2, r19
	sub.f.rn r7, r8, r2
	vextracti.f r8, 3(vr6)
	add.f.rn r1, r8, r1
	mul.f.rn r8, r4, r4
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	mul.f.rn r9, r4, r7
	add.f.rn r1, r1, r3
	mul.f.rn r3, r11, r8
	vextracti.f r8, 4(vr6)
	vextracti.f r11, 5(vr6)
	add.f.rn r2, r2, r9
	vextracti.f r9, 8(vr7)
	add.f.rn r1, r8, r1
	mul.f.rn r3, r13, r3
	loadli.w r13,  -192(r30)                # 4-byte Folded Reload
	sub.f.rn r8, r9, r2
	mul.f.rn r9, r16, r16
	add.f.rn r1, r1, r3
	mul.f.rn r3, r13, r8
	mul.f.rn r9, r12, r9
	loadli.w r12,  -188(r30)                # 4-byte Folded Reload
	add.f.rn r1, r11, r1
	add.f.rn r2, r2, r3
	mul.f.rn r3, r15, r9
	vextracti.f r9, 9(vr7)
	sub.f.rn r9, r9, r2
	add.f.rn r1, r1, r3
	mul.f.rn r3, r14, r6
	vextracti.f r6, 6(vr6)
	mul.f.rn r11, r12, r9
	add.f.rn r1, r6, r1
	mul.f.rn r3, r22, r3
	mul.f.rn r6, r7, r7
	vextracti.f r7, 10(vr7)
	add.f.rn r2, r2, r11
	add.f.rn r1, r1, r3
	mul.f.rn r3, r17, r6
	vextracti.f r6, 7(vr6)
	loadli.w r11,  -156(r30)                # 4-byte Folded Reload
	sub.f.rn r7, r7, r2
	mul.f.rn r3, r4, r3
	loadli.w r4,  -196(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	mul.f.rn r6, r8, r8
	mul.f.rn r8, r4, r7
	add.f.rn r1, r1, r3
	mul.f.rn r3, r20, r6
	vextracti.f r6, 8(vr6)
	add.f.rn r2, r2, r8
	vextracti.f r8, 11(vr7)
	add.f.rn r1, r6, r1
	mul.f.rn r3, r13, r3
	mul.f.rn r6, r9, r9
	vextracti.f r9, 9(vr6)
	sub.f.rn r8, r8, r2
	add.f.rn r1, r1, r3
	mul.f.rn r3, r25, r6
	mul.f.rn r6, r11, r8
	add.f.rn r1, r9, r1
	mul.f.rn r3, r12, r3
	loadli.w r9,  -152(r30)                 # 4-byte Folded Reload
	mul.f.rn r8, r8, r8
	add.f.rn r2, r2, r6
	mul.f.rn r6, r7, r7
	vextracti.f r7, 12(vr7)
	add.f.rn r1, r1, r3
	sub.f.rn r3, r7, r2
	mul.f.rn r6, r28, r6
	vextracti.f r7, 10(vr6)
	add.f.rn r1, r7, r1
	mul.f.rn r7, r9, r3
	mul.f.rn r6, r4, r6
	mul.f.rn r3, r3, r3
	add.f.rn r2, r2, r7
	vextracti.f r7, 13(vr7)
	add.f.rn r1, r1, r6
	mul.f.rn r6, r27, r8
	vextracti.f r8, 11(vr6)
	mul.f.rn r3, r18, r3
	sub.f.rn r7, r7, r2
	add.f.rn r1, r8, r1
	loadli.w r8,  -168(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r11, r6
	mul.f.rn r3, r9, r3
	loadli.w r9,  -200(r30)                 # 4-byte Folded Reload
	mul.f.rn r6, r8, r7
	add.f.rn r1, r1, r4
	vextracti.f r4, 12(vr6)
	add.f.rn r2, r2, r6
	vextracti.f r6, 14(vr7)
	add.f.rn r1, r4, r1
	mul.f.rn r4, r7, r7
	sub.f.rn r6, r6, r2
	add.f.rn r1, r1, r3
	mul.f.rn r3, r10, r4
	vextracti.f r4, 13(vr6)
	mul.f.rn r7, r9, r6
	add.f.rn r1, r4, r1
	mul.f.rn r3, r8, r3
	mul.f.rn r4, r6, r6
	vextracti.f r6, 15(vr7)
	add.f.rn r2, r2, r7
	add.f.rn r1, r1, r3
	mul.f.rn r3, r5, r4
	vextracti.f r5, 14(vr6)
	sub.f.rn r4, r6, r2
	add.f.rn r1, r5, r1
	mul.f.rn r3, r9, r3
	loadli.w r6,  -148(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r4, r4
	add.f.rn r1, r1, r3
	mul.f.rn r4, r6, r4
	mul.f.rn r3, r24, r5
	vextracti.f r5, 15(vr6)
	add.f.rn r2, r2, r4
	add.f.rn r1, r5, r1
	mul.f.rn r3, r6, r3
	add.f.rn r1, r1, r3
	loadli.w r3,  -216(r30)                 # 4-byte Folded Reload
	stores.w r2, 0(r3)
	loadli.w r2,  -228(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	loadli.w r12,  -212(r30)                # 4-byte Folded Reload
	csr_set csr3, r12
	sync_group
	loadli.w r1,  -252(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_3
# %bb.73:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r8,  -260(r30)                 # 4-byte Folded Reload
	addli r28, zero, 0
	loads.w r2, 0(r8)
	loads.w r1, 4(r8)
	add.f.rn r6, r2, r1
	storeli.w r2, -388(r30)                 # 4-byte Folded Spill
	slli r2, r6, 9
	setle.f r4, r28, r6
	setle.f r5, r6, r28
	srli r3, r6, 23
	seteq r2, r2, r28
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r28, 0
	bneq r2, zero, .LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r6
.LBB0_75:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 8(r8)
	storeli.w r3, -408(r30)                 # 4-byte Folded Spill
	add.f.rn r7, r6, r1
	slli r2, r7, 9
	setle.f r4, r28, r7
	setle.f r5, r7, r28
	srli r3, r7, 23
	seteq r2, r2, r28
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r28, 0
	bneq r2, zero, .LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r7
.LBB0_77:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 12(r8)
	storeli.w r3, -424(r30)                 # 4-byte Folded Spill
	add.f.rn r9, r7, r1
	slli r2, r9, 9
	setle.f r4, r28, r9
	setle.f r5, r9, r28
	srli r3, r9, 23
	seteq r2, r2, r28
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r28, 0
	bneq r2, zero, .LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r9
.LBB0_79:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 16(r8)
	storeli.w r3, -436(r30)                 # 4-byte Folded Spill
	add.f.rn r10, r9, r1
	slli r2, r10, 9
	setle.f r4, r28, r10
	setle.f r5, r10, r28
	srli r3, r10, 23
	seteq r2, r2, r28
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r28, 0
	bneq r2, zero, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r10
.LBB0_81:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 20(r8)
	storeli.w r3, -452(r30)                 # 4-byte Folded Spill
	add.f.rn r11, r10, r1
	slli r2, r11, 9
	setle.f r4, r28, r11
	setle.f r5, r11, r28
	srli r3, r11, 23
	seteq r2, r2, r28
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r28, 0
	bneq r2, zero, .LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r11
.LBB0_83:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 24(r8)
	storeli.w r3, -468(r30)                 # 4-byte Folded Spill
	add.f.rn r12, r11, r1
	slli r2, r12, 9
	setle.f r4, r28, r12
	setle.f r5, r12, r28
	srli r3, r12, 23
	seteq r2, r2, r28
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r28, 0
	bneq r2, zero, .LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r12
.LBB0_85:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 28(r8)
	storeli.w r3, -484(r30)                 # 4-byte Folded Spill
	add.f.rn r13, r12, r1
	slli r2, r13, 9
	setle.f r4, r28, r13
	setle.f r5, r13, r28
	srli r3, r13, 23
	seteq r2, r2, r28
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r28, 0
	bneq r2, zero, .LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r13
.LBB0_87:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 32(r8)
	storeli.w r3, -504(r30)                 # 4-byte Folded Spill
	add.f.rn r14, r13, r1
	slli r2, r14, 9
	setle.f r4, r28, r14
	setle.f r5, r14, r28
	srli r3, r14, 23
	seteq r2, r2, r28
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r28, 0
	bneq r2, zero, .LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r14
.LBB0_89:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 36(r8)
	storeli.w r3, -520(r30)                 # 4-byte Folded Spill
	add.f.rn r15, r14, r1
	slli r2, r15, 9
	setle.f r4, r28, r15
	setle.f r5, r15, r28
	srli r3, r15, 23
	seteq r2, r2, r28
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r28, 0
	bneq r2, zero, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r15
.LBB0_91:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 40(r8)
	storeli.w r6, -376(r30)                 # 4-byte Folded Spill
	storeli.w r3, -148(r30)                 # 4-byte Folded Spill
	storeli.w r14, -488(r30)                # 4-byte Folded Spill
	storeli.w r13, -472(r30)                # 4-byte Folded Spill
	storeli.w r12, -464(r30)                # 4-byte Folded Spill
	storeli.w r11, -448(r30)                # 4-byte Folded Spill
	storeli.w r10, -428(r30)                # 4-byte Folded Spill
	storeli.w r9, -412(r30)                 # 4-byte Folded Spill
	storeli.w r7, -392(r30)                 # 4-byte Folded Spill
	storeli.w r15, -508(r30)                # 4-byte Folded Spill
	add.f.rn r6, r15, r1
	slli r2, r6, 9
	setle.f r4, r28, r6
	setle.f r5, r6, r28
	srli r3, r6, 23
	seteq r2, r2, r28
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r28, 0
	bneq r2, zero, .LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r6
.LBB0_93:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r2,  -204(r30)                 # 4-byte Folded Reload
	loads.w r7, 44(r8)
	storeli.w r3, -152(r30)                 # 4-byte Folded Spill
	loads.w r5, 128(r8)
	loads.w r20, 212(r8)
	loads.w r9, 196(r8)
	storeli.w r6, -524(r30)                 # 4-byte Folded Spill
	loads.w r19, 48(r8)
	loads.w r18, 52(r8)
	loads.w r17, 56(r8)
	loads.w r16, 60(r8)
	loads.w r14, 64(r8)
	loads.w r13, 72(r8)
	loads.w r12, 76(r8)
	loads.w r24, 80(r8)
	loads.w r21, 84(r8)
	loads.w r23, 88(r8)
	loads.w r26, 92(r8)
	loads.w r11, 108(r8)
	loads.w r10, 112(r8)
	loads.w r27, 136(r8)
	loads.w r1, 0(r2)
	loads.w r4, 96(r2)
	add.f.rn r3, r6, r7
	storeli.w r5, -964(r30)                 # 4-byte Folded Spill
	loads.w r5, 132(r8)
	storeli.w r20, -960(r30)                # 4-byte Folded Spill
	loads.w r20, 216(r8)
	storeli.w r9, -992(r30)                 # 4-byte Folded Spill
	loads.w r9, 200(r8)
	loads.w r6, 100(r8)
	storeli.w r1, -744(r30)                 # 4-byte Folded Spill
	loads.w r1, 4(r2)
	storeli.w r4, -716(r30)                 # 4-byte Folded Spill
	loads.w r4, 116(r8)
	setle.f r22, r3, r28
	srli r25, r3, 23
	storeli.w r5, -988(r30)                 # 4-byte Folded Spill
	loads.w r5, 140(r8)
	storeli.w r20, -948(r30)                # 4-byte Folded Spill
	loads.w r20, 220(r8)
	storeli.w r9, -980(r30)                 # 4-byte Folded Spill
	loads.w r9, 204(r8)
	storeli.w r1, -748(r30)                 # 4-byte Folded Spill
	loads.w r1, 8(r2)
	storeli.w r4, -956(r30)                 # 4-byte Folded Spill
	loads.w r4, 120(r8)
	storeli.w r5, -1012(r30)                # 4-byte Folded Spill
	loads.w r5, 144(r8)
	storeli.w r20, -940(r30)                # 4-byte Folded Spill
	loads.w r20, 224(r8)
	storeli.w r9, -972(r30)                 # 4-byte Folded Spill
	loads.w r9, 208(r8)
	storeli.w r1, -740(r30)                 # 4-byte Folded Spill
	loads.w r1, 12(r2)
	storeli.w r4, -848(r30)                 # 4-byte Folded Spill
	loads.w r4, 124(r8)
	storeli.w r5, -1000(r30)                # 4-byte Folded Spill
	loads.w r5, 148(r8)
	storeli.w r20, -932(r30)                # 4-byte Folded Spill
	loads.w r20, 228(r8)
	storeli.w r1, -728(r30)                 # 4-byte Folded Spill
	loads.w r1, 16(r2)
	storeli.w r5, -1028(r30)                # 4-byte Folded Spill
	loads.w r5, 152(r8)
	storeli.w r20, -924(r30)                # 4-byte Folded Spill
	loads.w r20, 232(r8)
	storeli.w r1, -720(r30)                 # 4-byte Folded Spill
	loads.w r1, 20(r2)
	storeli.w r5, -1016(r30)                # 4-byte Folded Spill
	loads.w r5, 156(r8)
	storeli.w r20, -920(r30)                # 4-byte Folded Spill
	loads.w r20, 236(r8)
	storeli.w r1, -712(r30)                 # 4-byte Folded Spill
	loads.w r1, 24(r2)
	storeli.w r5, -1024(r30)                # 4-byte Folded Spill
	loads.w r5, 160(r8)
	storeli.w r20, -904(r30)                # 4-byte Folded Spill
	loads.w r20, 240(r8)
	storeli.w r1, -704(r30)                 # 4-byte Folded Spill
	loads.w r1, 28(r2)
	storeli.w r5, -1032(r30)                # 4-byte Folded Spill
	loads.w r5, 164(r8)
	storeli.w r20, -880(r30)                # 4-byte Folded Spill
	loads.w r20, 244(r8)
	storeli.w r1, -692(r30)                 # 4-byte Folded Spill
	loads.w r1, 32(r2)
	storeli.w r5, -1060(r30)                # 4-byte Folded Spill
	loads.w r5, 168(r8)
	storeli.w r20, -876(r30)                # 4-byte Folded Spill
	loads.w r20, 248(r8)
	storeli.w r1, -684(r30)                 # 4-byte Folded Spill
	loads.w r1, 36(r2)
	storeli.w r5, -1048(r30)                # 4-byte Folded Spill
	loads.w r5, 172(r8)
	storeli.w r20, -868(r30)                # 4-byte Folded Spill
	setle.f r20, r28, r3
	storeli.w r1, -832(r30)                 # 4-byte Folded Spill
	loads.w r1, 40(r2)
	storeli.w r5, -1056(r30)                # 4-byte Folded Spill
	loads.w r5, 176(r8)
	storeli.w r1, -824(r30)                 # 4-byte Folded Spill
	loads.w r1, 44(r2)
	storeli.w r5, -1064(r30)                # 4-byte Folded Spill
	loads.w r5, 180(r8)
	storeli.w r1, -820(r30)                 # 4-byte Folded Spill
	loads.w r1, 48(r2)
	storeli.w r5, -1072(r30)                # 4-byte Folded Spill
	loads.w r5, 184(r8)
	storeli.w r1, -808(r30)                 # 4-byte Folded Spill
	loads.w r1, 52(r2)
	storeli.w r5, -1040(r30)                # 4-byte Folded Spill
	loads.w r5, 188(r8)
	storeli.w r1, -800(r30)                 # 4-byte Folded Spill
	loads.w r1, 56(r2)
	storeli.w r5, -1008(r30)                # 4-byte Folded Spill
	loads.w r5, 192(r8)
	storeli.w r1, -792(r30)                 # 4-byte Folded Spill
	loads.w r1, 60(r2)
	storeli.w r1, -784(r30)                 # 4-byte Folded Spill
	loads.w r1, 64(r2)
	storeli.w r1, -776(r30)                 # 4-byte Folded Spill
	loads.w r1, 68(r2)
	storeli.w r1, -764(r30)                 # 4-byte Folded Spill
	loads.w r1, 72(r2)
	storeli.w r1, -752(r30)                 # 4-byte Folded Spill
	loads.w r1, 76(r2)
	storeli.w r1, -804(r30)                 # 4-byte Folded Spill
	loads.w r1, 80(r2)
	storeli.w r1, -788(r30)                 # 4-byte Folded Spill
	loads.w r1, 84(r2)
	storeli.w r1, -772(r30)                 # 4-byte Folded Spill
	loads.w r1, 88(r2)
	storeli.w r1, -756(r30)                 # 4-byte Folded Spill
	loads.w r1, 92(r2)
	storeli.w r1, -732(r30)                 # 4-byte Folded Spill
	slli r1, r3, 9
	seteq r15, r1, r28
	loads.w r1, 100(r2)
	storeli.w r1, -696(r30)                 # 4-byte Folded Spill
	loads.w r1, 104(r2)
	storeli.w r1, -680(r30)                 # 4-byte Folded Spill
	loads.w r1, 108(r2)
	storeli.w r1, -664(r30)                 # 4-byte Folded Spill
	loads.w r1, 112(r2)
	storeli.w r1, -656(r30)                 # 4-byte Folded Spill
	loads.w r1, 116(r2)
	storeli.w r1, -648(r30)                 # 4-byte Folded Spill
	loads.w r1, 120(r2)
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	loads.w r1, 124(r2)
	storeli.w r1, -628(r30)                 # 4-byte Folded Spill
	loads.w r1, 128(r2)
	storeli.w r1, -620(r30)                 # 4-byte Folded Spill
	loads.w r1, 132(r2)
	storeli.w r1, -608(r30)                 # 4-byte Folded Spill
	loads.w r1, 136(r2)
	storeli.w r1, -600(r30)                 # 4-byte Folded Spill
	loads.w r1, 140(r2)
	storeli.w r1, -592(r30)                 # 4-byte Folded Spill
	loads.w r1, 144(r2)
	storeli.w r1, -580(r30)                 # 4-byte Folded Spill
	loads.w r1, 148(r2)
	storeli.w r1, -572(r30)                 # 4-byte Folded Spill
	loads.w r1, 152(r2)
	storeli.w r1, -560(r30)                 # 4-byte Folded Spill
	loads.w r1, 156(r2)
	storeli.w r1, -552(r30)                 # 4-byte Folded Spill
	loads.w r1, 160(r2)
	storeli.w r1, -540(r30)                 # 4-byte Folded Spill
	loads.w r1, 164(r2)
	storeli.w r1, -532(r30)                 # 4-byte Folded Spill
	loads.w r1, 168(r2)
	storeli.w r1, -516(r30)                 # 4-byte Folded Spill
	loads.w r1, 172(r2)
	storeli.w r1, -496(r30)                 # 4-byte Folded Spill
	loads.w r1, 176(r2)
	storeli.w r1, -480(r30)                 # 4-byte Folded Spill
	loads.w r1, 180(r2)
	storeli.w r1, -456(r30)                 # 4-byte Folded Spill
	loads.w r1, 184(r2)
	storeli.w r1, -440(r30)                 # 4-byte Folded Spill
	loads.w r1, 188(r2)
	storeli.w r1, -420(r30)                 # 4-byte Folded Spill
	loads.w r1, 192(r2)
	storeli.w r1, -400(r30)                 # 4-byte Folded Spill
	loads.w r1, 196(r2)
	storeli.w r1, -384(r30)                 # 4-byte Folded Spill
	loads.w r1, 200(r2)
	storeli.w r1, -368(r30)                 # 4-byte Folded Spill
	loads.w r1, 204(r2)
	storeli.w r1, -360(r30)                 # 4-byte Folded Spill
	loads.w r1, 208(r2)
	storeli.w r1, -348(r30)                 # 4-byte Folded Spill
	loads.w r1, 212(r2)
	storeli.w r1, -340(r30)                 # 4-byte Folded Spill
	loads.w r1, 216(r2)
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
	loads.w r1, 220(r2)
	storeli.w r1, -320(r30)                 # 4-byte Folded Spill
	loads.w r1, 224(r2)
	storeli.w r1, -312(r30)                 # 4-byte Folded Spill
	loads.w r1, 228(r2)
	storeli.w r1, -300(r30)                 # 4-byte Folded Spill
	loads.w r1, 232(r2)
	storeli.w r1, -292(r30)                 # 4-byte Folded Spill
	loads.w r1, 236(r2)
	storeli.w r1, -280(r30)                 # 4-byte Folded Spill
	loads.w r1, 240(r2)
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	loads.w r1, 244(r2)
	storeli.w r1, -272(r30)                 # 4-byte Folded Spill
	loads.w r1, 248(r2)
	storeli.w r1, -268(r30)                 # 4-byte Folded Spill
	loads.w r1, 252(r2)
	storeli.w r1, -264(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -208(r30)                 # 4-byte Folded Reload
	loads.w r2, 0(r1)
	storeli.w r2, -900(r30)                 # 4-byte Folded Spill
	loads.w r2, 4(r1)
	storeli.w r2, -908(r30)                 # 4-byte Folded Spill
	loads.w r2, 8(r1)
	storeli.w r2, -844(r30)                 # 4-byte Folded Spill
	loads.w r2, 12(r1)
	storeli.w r2, -840(r30)                 # 4-byte Folded Spill
	loads.w r2, 16(r1)
	storeli.w r2, -836(r30)                 # 4-byte Folded Spill
	loads.w r2, 20(r1)
	storeli.w r2, -828(r30)                 # 4-byte Folded Spill
	loads.w r2, 24(r1)
	storeli.w r2, -816(r30)                 # 4-byte Folded Spill
	loads.w r2, 28(r1)
	storeli.w r2, -812(r30)                 # 4-byte Folded Spill
	loads.w r2, 32(r1)
	storeli.w r2, -796(r30)                 # 4-byte Folded Spill
	loads.w r2, 36(r1)
	storeli.w r2, -780(r30)                 # 4-byte Folded Spill
	loads.w r2, 40(r1)
	storeli.w r2, -768(r30)                 # 4-byte Folded Spill
	loads.w r2, 44(r1)
	storeli.w r2, -760(r30)                 # 4-byte Folded Spill
	loads.w r2, 48(r1)
	storeli.w r2, -736(r30)                 # 4-byte Folded Spill
	loads.w r2, 52(r1)
	storeli.w r2, -724(r30)                 # 4-byte Folded Spill
	loads.w r2, 56(r1)
	storeli.w r2, -708(r30)                 # 4-byte Folded Spill
	loads.w r2, 60(r1)
	storeli.w r2, -700(r30)                 # 4-byte Folded Spill
	loads.w r2, 64(r1)
	storeli.w r2, -688(r30)                 # 4-byte Folded Spill
	loads.w r2, 68(r1)
	storeli.w r2, -676(r30)                 # 4-byte Folded Spill
	loads.w r2, 72(r1)
	storeli.w r2, -672(r30)                 # 4-byte Folded Spill
	loads.w r2, 76(r1)
	storeli.w r2, -660(r30)                 # 4-byte Folded Spill
	loads.w r2, 80(r1)
	storeli.w r2, -652(r30)                 # 4-byte Folded Spill
	loads.w r2, 84(r1)
	storeli.w r2, -644(r30)                 # 4-byte Folded Spill
	loads.w r2, 88(r1)
	storeli.w r2, -640(r30)                 # 4-byte Folded Spill
	loads.w r2, 92(r1)
	storeli.w r2, -632(r30)                 # 4-byte Folded Spill
	loads.w r2, 96(r1)
	storeli.w r2, -624(r30)                 # 4-byte Folded Spill
	loads.w r2, 100(r1)
	storeli.w r2, -616(r30)                 # 4-byte Folded Spill
	loads.w r2, 104(r1)
	storeli.w r2, -612(r30)                 # 4-byte Folded Spill
	loads.w r2, 108(r1)
	storeli.w r2, -604(r30)                 # 4-byte Folded Spill
	loads.w r2, 112(r1)
	storeli.w r2, -596(r30)                 # 4-byte Folded Spill
	loads.w r2, 116(r1)
	storeli.w r2, -588(r30)                 # 4-byte Folded Spill
	loads.w r2, 120(r1)
	storeli.w r2, -584(r30)                 # 4-byte Folded Spill
	loads.w r2, 124(r1)
	storeli.w r2, -576(r30)                 # 4-byte Folded Spill
	loads.w r2, 128(r1)
	storeli.w r2, -568(r30)                 # 4-byte Folded Spill
	loads.w r2, 132(r1)
	storeli.w r2, -564(r30)                 # 4-byte Folded Spill
	loads.w r2, 136(r1)
	storeli.w r2, -556(r30)                 # 4-byte Folded Spill
	loads.w r2, 140(r1)
	storeli.w r2, -548(r30)                 # 4-byte Folded Spill
	loads.w r2, 144(r1)
	storeli.w r2, -544(r30)                 # 4-byte Folded Spill
	loads.w r2, 148(r1)
	storeli.w r2, -536(r30)                 # 4-byte Folded Spill
	loads.w r2, 152(r1)
	storeli.w r2, -528(r30)                 # 4-byte Folded Spill
	loads.w r2, 156(r1)
	storeli.w r2, -512(r30)                 # 4-byte Folded Spill
	loads.w r2, 160(r1)
	storeli.w r2, -500(r30)                 # 4-byte Folded Spill
	loads.w r2, 164(r1)
	storeli.w r2, -492(r30)                 # 4-byte Folded Spill
	loads.w r2, 168(r1)
	storeli.w r2, -476(r30)                 # 4-byte Folded Spill
	loads.w r2, 172(r1)
	storeli.w r2, -460(r30)                 # 4-byte Folded Spill
	loads.w r2, 176(r1)
	storeli.w r2, -444(r30)                 # 4-byte Folded Spill
	loads.w r2, 180(r1)
	storeli.w r2, -432(r30)                 # 4-byte Folded Spill
	loads.w r2, 184(r1)
	storeli.w r2, -416(r30)                 # 4-byte Folded Spill
	loads.w r2, 188(r1)
	storeli.w r2, -404(r30)                 # 4-byte Folded Spill
	loads.w r2, 192(r1)
	storeli.w r2, -396(r30)                 # 4-byte Folded Spill
	loads.w r2, 196(r1)
	storeli.w r2, -380(r30)                 # 4-byte Folded Spill
	loads.w r2, 200(r1)
	storeli.w r2, -372(r30)                 # 4-byte Folded Spill
	loads.w r2, 204(r1)
	storeli.w r2, -364(r30)                 # 4-byte Folded Spill
	loads.w r2, 208(r1)
	storeli.w r2, -356(r30)                 # 4-byte Folded Spill
	loads.w r2, 212(r1)
	storeli.w r2, -352(r30)                 # 4-byte Folded Spill
	loads.w r2, 216(r1)
	storeli.w r2, -344(r30)                 # 4-byte Folded Spill
	loads.w r2, 220(r1)
	storeli.w r2, -336(r30)                 # 4-byte Folded Spill
	loads.w r2, 224(r1)
	storeli.w r2, -328(r30)                 # 4-byte Folded Spill
	loads.w r2, 228(r1)
	storeli.w r2, -324(r30)                 # 4-byte Folded Spill
	loads.w r2, 232(r1)
	storeli.w r2, -316(r30)                 # 4-byte Folded Spill
	loads.w r2, 236(r1)
	storeli.w r2, -308(r30)                 # 4-byte Folded Spill
	loads.w r2, 240(r1)
	storeli.w r2, -304(r30)                 # 4-byte Folded Spill
	loads.w r2, 244(r1)
	storeli.w r2, -296(r30)                 # 4-byte Folded Spill
	loads.w r2, 248(r1)
	loads.w r1, 252(r1)
	storeli.w r1, -284(r30)                 # 4-byte Folded Spill
	loads.w r1, 96(r8)
	storeli.w r2, -288(r30)                 # 4-byte Folded Spill
	loads.w r2, 68(r8)
	storeli.w r1, -200(r30)                 # 4-byte Folded Spill
	loads.w r1, 104(r8)
	loads.w r8, 252(r8)
	storeli.w r8, -996(r30)                 # 4-byte Folded Spill
	andi r8, r25, 255
	setlti r8, r8, 255
	or r8, r8, r15
	and r15, r22, r20
	and r8, r15, r8
	addli r15, r28, 0
	bneq r8, zero, .LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r15, r7, r3
.LBB0_95:                               #   in Loop: Header=BB0_5 Depth=1
	storeli.w r3, -668(r30)                 # 4-byte Folded Spill
	add.f.rn r3, r3, r19
	storeli.w r15, -156(r30)                # 4-byte Folded Spill
	slli r8, r3, 9
	setle.f r20, r28, r3
	setle.f r22, r3, r28
	srli r15, r3, 23
	seteq r8, r8, r28
	andi r15, r15, 255
	setlti r15, r15, 255
	or r8, r15, r8
	and r15, r22, r20
	and r8, r15, r8
	addli r15, r28, 0
	bneq r8, zero, .LBB0_97
# %bb.96:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r15, r19, r3
.LBB0_97:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r22, r3, r18
	storeli.w r15, -160(r30)                # 4-byte Folded Spill
	slli r8, r22, 9
	setle.f r19, r28, r22
	setle.f r20, r22, r28
	srli r15, r22, 23
	seteq r8, r8, r28
	andi r15, r15, 255
	setlti r15, r15, 255
	or r8, r15, r8
	and r15, r20, r19
	and r8, r15, r8
	addli r15, r28, 0
	bneq r8, zero, .LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r15, r18, r22
.LBB0_99:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r20, r22, r17
	storeli.w r15, -164(r30)                # 4-byte Folded Spill
	slli r8, r20, 9
	setle.f r18, r28, r20
	setle.f r19, r20, r28
	srli r15, r20, 23
	seteq r8, r8, r28
	andi r15, r15, 255
	setlti r15, r15, 255
	or r8, r15, r8
	and r15, r19, r18
	and r8, r15, r8
	addli r15, r28, 0
	bneq r8, zero, .LBB0_101
# %bb.100:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r15, r17, r20
.LBB0_101:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r19, r20, r16
	storeli.w r15, -168(r30)                # 4-byte Folded Spill
	slli r8, r19, 9
	setle.f r17, r28, r19
	setle.f r18, r19, r28
	srli r15, r19, 23
	seteq r8, r8, r28
	andi r15, r15, 255
	setlti r15, r15, 255
	or r8, r15, r8
	and r15, r18, r17
	and r8, r15, r8
	addli r15, r28, 0
	bneq r8, zero, .LBB0_103
# %bb.102:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r15, r16, r19
.LBB0_103:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r7, r19, r14
	storeli.w r15, -172(r30)                # 4-byte Folded Spill
	addli r18, r4, 0
	slli r8, r7, 9
	setle.f r16, r28, r7
	setle.f r17, r7, r28
	srli r15, r7, 23
	seteq r8, r8, r28
	andi r15, r15, 255
	setlti r15, r15, 255
	or r8, r15, r8
	and r15, r17, r16
	and r8, r15, r8
	addli r15, r28, 0
	bneq r8, zero, .LBB0_105
# %bb.104:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r15, r14, r7
.LBB0_105:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r17, r7, r2
	storeli.w r15, -176(r30)                # 4-byte Folded Spill
	addli r4, r10, 0
	slli r8, r17, 9
	setle.f r15, r28, r17
	setle.f r16, r17, r28
	srli r14, r17, 23
	seteq r8, r8, r28
	andi r14, r14, 255
	setlti r14, r14, 255
	or r8, r14, r8
	and r14, r16, r15
	and r8, r14, r8
	addli r14, r28, 0
	bneq r8, zero, .LBB0_107
# %bb.106:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r14, r2, r17
.LBB0_107:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r16, r17, r13
	storeli.w r14, -180(r30)                # 4-byte Folded Spill
	addli r10, r11, 0
	slli r2, r16, 9
	setle.f r14, r28, r16
	setle.f r15, r16, r28
	srli r8, r16, 23
	seteq r2, r2, r28
	andi r8, r8, 255
	setlti r8, r8, 255
	or r2, r8, r2
	and r8, r15, r14
	and r2, r8, r2
	addli r8, r28, 0
	bneq r2, zero, .LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r8, r13, r16
.LBB0_109:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r15, r16, r12
	storeli.w r8, -184(r30)                 # 4-byte Folded Spill
	addli r11, r1, 0
	slli r2, r15, 9
	setle.f r13, r28, r15
	setle.f r14, r15, r28
	srli r8, r15, 23
	seteq r2, r2, r28
	andi r8, r8, 255
	setlti r8, r8, 255
	or r2, r8, r2
	and r8, r14, r13
	and r2, r8, r2
	addli r8, r28, 0
	bneq r2, zero, .LBB0_111
# %bb.110:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r8, r12, r15
.LBB0_111:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r14, r15, r24
	storeli.w r8, -188(r30)                 # 4-byte Folded Spill
	addli r1, r6, 0
	slli r2, r14, 9
	setle.f r12, r28, r14
	setle.f r13, r14, r28
	srli r8, r14, 23
	seteq r2, r2, r28
	andi r8, r8, 255
	setlti r8, r8, 255
	or r2, r8, r2
	and r8, r13, r12
	and r2, r8, r2
	addli r8, r28, 0
	bneq r2, zero, .LBB0_113
# %bb.112:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r8, r24, r14
.LBB0_113:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r24, r14, r21
	storeli.w r8, -192(r30)                 # 4-byte Folded Spill
	loadli.w r6,  -200(r30)                 # 4-byte Folded Reload
	slli r2, r24, 9
	setle.f r12, r28, r24
	setle.f r13, r24, r28
	srli r8, r24, 23
	seteq r2, r2, r28
	andi r8, r8, 255
	setlti r8, r8, 255
	or r2, r8, r2
	and r8, r13, r12
	and r2, r8, r2
	addli r8, r28, 0
	bneq r2, zero, .LBB0_115
# %bb.114:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r8, r21, r24
.LBB0_115:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r21, r24, r23
	storeli.w r8, -896(r30)                 # 4-byte Folded Spill
	slli r2, r21, 9
	setle.f r12, r28, r21
	setle.f r13, r21, r28
	srli r8, r21, 23
	seteq r2, r2, r28
	andi r8, r8, 255
	setlti r8, r8, 255
	or r2, r8, r2
	and r8, r13, r12
	and r2, r8, r2
	addli r8, r28, 0
	bneq r2, zero, .LBB0_117
# %bb.116:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r8, r23, r21
.LBB0_117:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r23, r21, r26
	storeli.w r8, -196(r30)                 # 4-byte Folded Spill
	slli r2, r23, 9
	setle.f r12, r28, r23
	setle.f r13, r23, r28
	srli r8, r23, 23
	seteq r2, r2, r28
	andi r8, r8, 255
	setlti r8, r8, 255
	or r2, r8, r2
	and r8, r13, r12
	and r2, r8, r2
	addli r8, r28, 0
	bneq r2, zero, .LBB0_119
# %bb.118:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r8, r26, r23
.LBB0_119:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r25, r23, r6
	storeli.w r8, -916(r30)                 # 4-byte Folded Spill
	storeli.w r9, -1088(r30)                # 4-byte Folded Spill
	slli r2, r25, 9
	setle.f r12, r28, r25
	setle.f r13, r25, r28
	srli r8, r25, 23
	seteq r2, r2, r28
	andi r8, r8, 255
	setlti r8, r8, 255
	or r2, r8, r2
	and r8, r13, r12
	and r2, r8, r2
	addli r8, r28, 0
	bneq r2, zero, .LBB0_121
# %bb.120:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r8, r6, r25
.LBB0_121:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r9, r25, r1
	storeli.w r8, -200(r30)                 # 4-byte Folded Spill
	loadli.w r13,  -1012(r30)               # 4-byte Folded Reload
	storeli.w r5, -1096(r30)                # 4-byte Folded Spill
	slli r2, r9, 9
	setle.f r8, r28, r9
	setle.f r12, r9, r28
	srli r6, r9, 23
	seteq r2, r2, r28
	andi r6, r6, 255
	setlti r6, r6, 255
	or r2, r6, r2
	and r6, r12, r8
	and r2, r6, r2
	addli r6, r28, 0
	bneq r2, zero, .LBB0_123
# %bb.122:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r6, r1, r9
.LBB0_123:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r12, r9, r11
	storeli.w r6, -928(r30)                 # 4-byte Folded Spill
	loadli.w r5,  -848(r30)                 # 4-byte Folded Reload
	slli r1, r12, 9
	setle.f r6, r28, r12
	setle.f r8, r12, r28
	srli r2, r12, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r8, r6
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_125
# %bb.124:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r11, r12
.LBB0_125:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r11, r12, r10
	storeli.w r2, -936(r30)                 # 4-byte Folded Spill
	slli r1, r11, 9
	setle.f r6, r28, r11
	setle.f r8, r11, r28
	srli r2, r11, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r8, r6
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_127
# %bb.126:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r10, r11
.LBB0_127:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r10, r11, r4
	storeli.w r2, -944(r30)                 # 4-byte Folded Spill
	slli r1, r10, 9
	setle.f r6, r28, r10
	setle.f r8, r10, r28
	srli r2, r10, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r8, r6
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_129
# %bb.128:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r4, r10
.LBB0_129:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r7, -864(r30)                 # 4-byte Folded Spill
	loadli.w r7,  -956(r30)                 # 4-byte Folded Reload
	storeli.w r2, -952(r30)                 # 4-byte Folded Spill
	loadli.w r8,  -1000(r30)                # 4-byte Folded Reload
	add.f.rn r26, r10, r7
	slli r1, r26, 9
	setle.f r4, r28, r26
	setle.f r6, r26, r28
	srli r2, r26, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r6, r4
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r7, r26
.LBB0_131:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r7, r26, r5
	storeli.w r2, -956(r30)                 # 4-byte Folded Spill
	slli r1, r7, 9
	setle.f r4, r28, r7
	setle.f r6, r7, r28
	srli r2, r7, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r6, r4
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_133
# %bb.132:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r5, r7
.LBB0_133:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r6, r7, r18
	storeli.w r2, -968(r30)                 # 4-byte Folded Spill
	slli r1, r6, 9
	setle.f r4, r28, r6
	setle.f r5, r6, r28
	srli r2, r6, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r5, r4
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_135
# %bb.134:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r18, r6
.LBB0_135:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r18,  -964(r30)                # 4-byte Folded Reload
	storeli.w r3, -848(r30)                 # 4-byte Folded Spill
	storeli.w r2, -976(r30)                 # 4-byte Folded Spill
	add.f.rn r3, r6, r18
	slli r1, r3, 9
	setle.f r4, r28, r3
	setle.f r5, r3, r28
	srli r2, r3, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r5, r4
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r18, r3
.LBB0_137:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r9, -912(r30)                 # 4-byte Folded Spill
	loadli.w r9,  -988(r30)                 # 4-byte Folded Reload
	storeli.w r3, -964(r30)                 # 4-byte Folded Spill
	storeli.w r2, -984(r30)                 # 4-byte Folded Spill
	add.f.rn r5, r3, r9
	slli r1, r5, 9
	setle.f r3, r28, r5
	setle.f r4, r5, r28
	srli r2, r5, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_139
# %bb.138:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r9, r5
.LBB0_139:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r9, r5, r27
	storeli.w r2, -988(r30)                 # 4-byte Folded Spill
	slli r1, r9, 9
	setle.f r3, r28, r9
	setle.f r4, r9, r28
	srli r2, r9, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_141
# %bb.140:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r27, r9
.LBB0_141:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r27, r9, r13
	storeli.w r2, -1004(r30)                # 4-byte Folded Spill
	slli r1, r27, 9
	setle.f r3, r28, r27
	setle.f r4, r27, r28
	srli r2, r27, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_143
# %bb.142:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r13, r27
.LBB0_143:                              #   in Loop: Header=BB0_5 Depth=1
	addli r13, r8, 0
	storeli.w r2, -1012(r30)                # 4-byte Folded Spill
	add.f.rn r8, r27, r13
	slli r1, r8, 9
	setle.f r3, r28, r8
	setle.f r4, r8, r28
	srli r2, r8, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r28, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_145
# %bb.144:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r13, r8
.LBB0_145:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r22, -852(r30)                # 4-byte Folded Spill
	loadli.w r22,  -1028(r30)               # 4-byte Folded Reload
	storeli.w r8, -1000(r30)                # 4-byte Folded Spill
	storeli.w r3, -1020(r30)                # 4-byte Folded Spill
	add.f.rn r8, r8, r22
	slli r1, r8, 9
	setle.f r3, r28, r8
	setle.f r4, r8, r28
	srli r2, r8, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_147
# %bb.146:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r22, r8
.LBB0_147:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r13,  -1016(r30)               # 4-byte Folded Reload
	storeli.w r2, -1028(r30)                # 4-byte Folded Spill
	add.f.rn r22, r8, r13
	slli r1, r22, 9
	setle.f r3, r28, r22
	setle.f r4, r22, r28
	srli r2, r22, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r28, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_149
# %bb.148:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r13, r22
.LBB0_149:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r13,  -1024(r30)               # 4-byte Folded Reload
	storeli.w r22, -1016(r30)               # 4-byte Folded Spill
	storeli.w r3, -1036(r30)                # 4-byte Folded Spill
	add.f.rn r22, r22, r13
	slli r1, r22, 9
	setle.f r3, r28, r22
	setle.f r4, r22, r28
	srli r2, r22, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r28, 0
	and r1, r2, r1
	addli r2, r22, 0
	bneq r1, zero, .LBB0_151
# %bb.150:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r13, r2
.LBB0_151:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r19, -860(r30)                # 4-byte Folded Spill
	loadli.w r19,  -1032(r30)               # 4-byte Folded Reload
	storeli.w r3, -1044(r30)                # 4-byte Folded Spill
	storeli.w r2, -1024(r30)                # 4-byte Folded Spill
	add.f.rn r22, r2, r19
	slli r1, r22, 9
	setle.f r3, r28, r22
	setle.f r4, r22, r28
	srli r2, r22, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r28, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_153
# %bb.152:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r19, r22
.LBB0_153:                              #   in Loop: Header=BB0_5 Depth=1
	addli r19, r20, 0
	loadli.w r20,  -1060(r30)               # 4-byte Folded Reload
	storeli.w r22, -1032(r30)               # 4-byte Folded Spill
	storeli.w r3, -1052(r30)                # 4-byte Folded Spill
	loadli.w r13,  -1048(r30)               # 4-byte Folded Reload
	add.f.rn r22, r22, r20
	slli r1, r22, 9
	setle.f r3, r28, r22
	setle.f r4, r22, r28
	srli r2, r22, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_155
# %bb.154:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r20, r22
.LBB0_155:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r20, r22, r13
	storeli.w r2, -1060(r30)                # 4-byte Folded Spill
	slli r1, r20, 9
	setle.f r3, r28, r20
	setle.f r4, r20, r28
	srli r2, r20, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r28, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_157
# %bb.156:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r13, r20
.LBB0_157:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r13,  -1056(r30)               # 4-byte Folded Reload
	storeli.w r20, -1048(r30)               # 4-byte Folded Spill
	storeli.w r3, -1068(r30)                # 4-byte Folded Spill
	storeli.w r19, -856(r30)                # 4-byte Folded Spill
	add.f.rn r20, r20, r13
	slli r1, r20, 9
	setle.f r3, r28, r20
	setle.f r4, r20, r28
	srli r2, r20, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r28, 0
	and r1, r2, r1
	addli r2, r20, 0
	bneq r1, zero, .LBB0_159
# %bb.158:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r13, r2
.LBB0_159:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r13,  -1064(r30)               # 4-byte Folded Reload
	storeli.w r3, -1076(r30)                # 4-byte Folded Spill
	storeli.w r2, -1056(r30)                # 4-byte Folded Spill
	loadli.w r18,  -904(r30)                # 4-byte Folded Reload
	add.f.rn r19, r2, r13
	slli r1, r19, 9
	setle.f r3, r28, r19
	setle.f r4, r19, r28
	srli r2, r19, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r28, 0
	and r1, r2, r1
	addli r2, r19, 0
	bneq r1, zero, .LBB0_161
# %bb.160:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r13, r2
.LBB0_161:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r19,  -1072(r30)               # 4-byte Folded Reload
	storeli.w r3, -1080(r30)                # 4-byte Folded Spill
	storeli.w r2, -1064(r30)                # 4-byte Folded Spill
	loadli.w r13,  -1040(r30)               # 4-byte Folded Reload
	add.f.rn r20, r2, r19
	slli r1, r20, 9
	setle.f r3, r28, r20
	setle.f r4, r20, r28
	srli r2, r20, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_163
# %bb.162:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r19, r20
.LBB0_163:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r19, r20, r13
	storeli.w r2, -1092(r30)                # 4-byte Folded Spill
	slli r1, r19, 9
	setle.f r3, r28, r19
	setle.f r4, r19, r28
	srli r2, r19, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r28, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_165
# %bb.164:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r13, r19
.LBB0_165:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r16, -872(r30)                # 4-byte Folded Spill
	loadli.w r16,  -1008(r30)               # 4-byte Folded Reload
	storeli.w r19, -1084(r30)               # 4-byte Folded Spill
	storeli.w r3, -1100(r30)                # 4-byte Folded Spill
	storeli.w r24, -884(r30)                # 4-byte Folded Spill
	add.f.rn r19, r19, r16
	slli r1, r19, 9
	setle.f r3, r28, r19
	setle.f r4, r19, r28
	srli r2, r19, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_167
# %bb.166:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r16, r19
.LBB0_167:                              #   in Loop: Header=BB0_5 Depth=1
	addli r24, r15, 0
	loadli.w r15,  -1096(r30)               # 4-byte Folded Reload
	storeli.w r2, -1108(r30)                # 4-byte Folded Spill
	loadli.w r13,  -1088(r30)               # 4-byte Folded Reload
	add.f.rn r16, r19, r15
	slli r1, r16, 9
	setle.f r3, r28, r16
	setle.f r4, r16, r28
	srli r2, r16, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_169
# %bb.168:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r15, r16
.LBB0_169:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r21, -888(r30)                # 4-byte Folded Spill
	loadli.w r21,  -992(r30)                # 4-byte Folded Reload
	storeli.w r2, -1112(r30)                # 4-byte Folded Spill
	add.f.rn r15, r16, r21
	slli r1, r15, 9
	setle.f r3, r28, r15
	setle.f r4, r15, r28
	srli r2, r15, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r28, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_171
# %bb.170:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r21, r15
.LBB0_171:                              #   in Loop: Header=BB0_5 Depth=1
	addli r21, r14, 0
	loadli.w r14,  -980(r30)                # 4-byte Folded Reload
	storeli.w r15, -1104(r30)               # 4-byte Folded Spill
	storeli.w r3, -1124(r30)                # 4-byte Folded Spill
	storeli.w r23, -892(r30)                # 4-byte Folded Spill
	add.f.rn r15, r15, r14
	slli r1, r15, 9
	setle.f r3, r28, r15
	setle.f r4, r15, r28
	srli r2, r15, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r28, 0
	and r1, r2, r1
	addli r2, r15, 0
	loadli.w r15,  -940(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_173
# %bb.172:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r14, r2
.LBB0_173:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r23,  -972(r30)                # 4-byte Folded Reload
	storeli.w r3, -1132(r30)                # 4-byte Folded Spill
	storeli.w r2, -1116(r30)                # 4-byte Folded Spill
	add.f.rn r14, r2, r23
	slli r1, r14, 9
	setle.f r3, r28, r14
	setle.f r4, r14, r28
	srli r2, r14, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r28, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_175
# %bb.174:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r23, r14
.LBB0_175:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r14, -1120(r30)               # 4-byte Folded Spill
	add.f.rn r14, r14, r13
	storeli.w r3, -1140(r30)                # 4-byte Folded Spill
	slli r1, r14, 9
	setle.f r3, r28, r14
	setle.f r4, r14, r28
	srli r2, r14, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r28, 0
	and r1, r2, r1
	addli r2, r14, 0
	loadli.w r14,  -948(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_177
# %bb.176:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r13, r2
.LBB0_177:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r23,  -960(r30)                # 4-byte Folded Reload
	storeli.w r16, -1096(r30)               # 4-byte Folded Spill
	storeli.w r3, -1148(r30)                # 4-byte Folded Spill
	storeli.w r2, -1128(r30)                # 4-byte Folded Spill
	add.f.rn r16, r2, r23
	slli r1, r16, 9
	setle.f r3, r28, r16
	setle.f r4, r16, r28
	srli r2, r16, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r28, 0
	and r1, r2, r1
	addli r2, r16, 0
	bneq r1, zero, .LBB0_179
# %bb.178:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r23, r2
.LBB0_179:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r23, r2, r14
	storeli.w r3, -1156(r30)                # 4-byte Folded Spill
	storeli.w r2, -1136(r30)                # 4-byte Folded Spill
	addli r16, r17, 0
	addli r13, r18, 0
	slli r1, r23, 9
	setle.f r3, r28, r23
	setle.f r4, r23, r28
	srli r2, r23, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_181
# %bb.180:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r14, r23
.LBB0_181:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r14, r23, r15
	storeli.w r2, -1164(r30)                # 4-byte Folded Spill
	slli r1, r14, 9
	setle.f r3, r28, r14
	setle.f r4, r14, r28
	srli r2, r14, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_183
# %bb.182:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r15, r14
.LBB0_183:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r18,  -932(r30)                # 4-byte Folded Reload
	storeli.w r2, -1172(r30)                # 4-byte Folded Spill
	add.f.rn r15, r14, r18
	slli r1, r15, 9
	setle.f r3, r28, r15
	setle.f r4, r15, r28
	srli r2, r15, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_185
# %bb.184:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r18, r15
.LBB0_185:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r20, -1072(r30)               # 4-byte Folded Spill
	loadli.w r20,  -924(r30)                # 4-byte Folded Reload
	storeli.w r2, -1180(r30)                # 4-byte Folded Spill
	add.f.rn r18, r15, r20
	slli r1, r18, 9
	setle.f r3, r28, r18
	setle.f r4, r18, r28
	srli r2, r18, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_187
# %bb.186:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r20, r18
.LBB0_187:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r20,  -920(r30)                # 4-byte Folded Reload
	storeli.w r18, -1168(r30)               # 4-byte Folded Spill
	storeli.w r2, -1188(r30)                # 4-byte Folded Spill
	add.f.rn r18, r18, r20
	slli r1, r18, 9
	setle.f r3, r28, r18
	setle.f r4, r18, r28
	srli r2, r18, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r28, 0
	and r1, r2, r1
	addli r2, r18, 0
	bneq r1, zero, .LBB0_189
# %bb.188:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r20, r2
.LBB0_189:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r17, r2, r13
	storeli.w r3, -1192(r30)                # 4-byte Folded Spill
	storeli.w r2, -1176(r30)                # 4-byte Folded Spill
	slli r1, r17, 9
	setle.f r3, r28, r17
	setle.f r4, r17, r28
	srli r2, r17, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_191
# %bb.190:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r13, r17
.LBB0_191:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r6, -960(r30)                 # 4-byte Folded Spill
	loadli.w r6,  -880(r30)                 # 4-byte Folded Reload
	storeli.w r19, -1088(r30)               # 4-byte Folded Spill
	storeli.w r2, -1200(r30)                # 4-byte Folded Spill
	add.f.rn r19, r17, r6
	slli r1, r19, 9
	setle.f r3, r28, r19
	setle.f r4, r19, r28
	srli r2, r19, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_193
# %bb.192:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r6, r19
.LBB0_193:                              #   in Loop: Header=BB0_5 Depth=1
	addli r13, r25, 0
	loadli.w r25,  -876(r30)                # 4-byte Folded Reload
	storeli.w r2, -1212(r30)                # 4-byte Folded Spill
	loadli.w r4,  -996(r30)                 # 4-byte Folded Reload
	storeli.w r19, -1196(r30)               # 4-byte Folded Spill
	add.f.rn r20, r19, r25
	slli r1, r20, 9
	setle.f r3, r28, r20
	setle.f r6, r20, r28
	srli r2, r20, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r6, r3
	and r1, r2, r1
	addli r2, r28, 0
	bneq r1, zero, .LBB0_195
# %bb.194:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r25, r20
.LBB0_195:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r7, -948(r30)                 # 4-byte Folded Spill
	loadli.w r7,  -868(r30)                 # 4-byte Folded Reload
	storeli.w r2, -1216(r30)                # 4-byte Folded Spill
	add.f.rn r25, r20, r7
	slli r1, r25, 9
	setle.f r3, r28, r25
	setle.f r6, r25, r28
	srli r2, r25, 23
	seteq r1, r1, r28
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r6, r3
	addli r3, r28, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_197
# %bb.196:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r7, r25
.LBB0_197:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r1, r25, r4
	storeli.w r3, -1220(r30)                # 4-byte Folded Spill
	storeli.w r20, -1204(r30)               # 4-byte Folded Spill
	storeli.w r17, -1184(r30)               # 4-byte Folded Spill
	storeli.w r15, -1160(r30)               # 4-byte Folded Spill
	storeli.w r14, -1152(r30)               # 4-byte Folded Spill
	storeli.w r23, -1144(r30)               # 4-byte Folded Spill
	storeli.w r22, -1040(r30)               # 4-byte Folded Spill
	storeli.w r8, -1008(r30)                # 4-byte Folded Spill
	storeli.w r27, -992(r30)                # 4-byte Folded Spill
	storeli.w r9, -980(r30)                 # 4-byte Folded Spill
	storeli.w r5, -972(r30)                 # 4-byte Folded Spill
	storeli.w r26, -940(r30)                # 4-byte Folded Spill
	storeli.w r10, -932(r30)                # 4-byte Folded Spill
	storeli.w r11, -924(r30)                # 4-byte Folded Spill
	storeli.w r12, -920(r30)                # 4-byte Folded Spill
	storeli.w r13, -904(r30)                # 4-byte Folded Spill
	storeli.w r21, -880(r30)                # 4-byte Folded Spill
	storeli.w r24, -876(r30)                # 4-byte Folded Spill
	storeli.w r16, -868(r30)                # 4-byte Folded Spill
	storeli.w r25, -1208(r30)               # 4-byte Folded Spill
	slli r2, r1, 9
	setle.f r6, r28, r1
	setle.f r7, r1, r28
	srli r3, r1, 23
	seteq r2, r2, r28
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r7, r6
	and r2, r3, r2
	bneq r2, zero, .LBB0_2
# %bb.198:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r28, r4, r1
	j .LBB0_2
.LBB0_199:                              # %._crit_edge
	.loc	1 63 4 epilogue_begin is_stmt 1 # c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py:63:4
	addli sp, sp, 1224
	mfence { lm, sm, gm }
	exit
.Ltmp1:
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
	.long	1288                            # 0x508
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
.asciz	"c5blm2ef4h4or4uhr74xiu3fehdhadfy37kpcbbsl6aydxhrvmng.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/5b" # string offset=63
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
