	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/fj" "cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py"
	.loc	1 22 0                          # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1296
	lui r2, :hi20:global_smem
	core_id r1
	addli r30, sp, 1232
	lui r6, 260096
	load_param_i r15, 0
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r13,  44(r30)
	loadli.w r4,  40(r30)
	loadli.w r12,  48(r30)
	add.s r5, r3, r2
	mul.s r4, r13, r4
	stores.w zero, 0(r5)
	stores.w zero, 256(r5)
	storeli.w r5, -212(r30)                 # 4-byte Folded Spill
	stores.w r6, 512(r5)
	lui r5, 15
	mul.s r16, r4, r12
	mfence { lm, sm, gm }
	ori r14, r5, 4095
	csr_set csr3, r14
	sync_group
	ble.s r16, r15, .LBB0_201
# %bb.1:                                # %.lr.ph
	addli r8, zero, 64
	loadli.w r9,  -212(r30)                 # 4-byte Folded Reload
	vxor.u.mz vr0{mr1}, vr0, vr0
	addli r19, zero, 1
	#APP
	vxor.s.mz vr1{mr1}, vr1, vr1
	#NO_APP
	load.d r[4:5], 16(r30)
	load.d r[6:7], 8(r30)
	load_param_i r18, 1
	storeli.w r14, -208(r30)                # 4-byte Folded Spill
	storeli.w r16, -224(r30)                # 4-byte Folded Spill
	vadd.s.mz vr2{mr1}, zero, vr0
	div.s r17, r1, r8
	storeli.w r18, -240(r30)                # 4-byte Folded Spill
	addli r10, r9, 256
	addli r9, r9, 512
	storeli.w r9, -236(r30)                 # 4-byte Folded Spill
	storeli.w r10, -232(r30)                # 4-byte Folded Spill
	slli r9, r17, 6
	storeli.w r17, -228(r30)                # 4-byte Folded Spill
	sub.s r9, r1, r9
	andi r1, r1, 63
	slli r10, r9, 5
	lui r9, 1048575
	storeli.w r1, -268(r30)                 # 4-byte Folded Spill
	ori r9, r9, 3840
	storeli.w r10, -244(r30)                # 4-byte Folded Spill
	sext_int2long r[10:11], r10
	and r3, r3, r9
	sll.d r[10:11], r[10:11], r19
	add.s r2, r3, r2
	add.ul r[4:5], r[4:5], r[10:11]
	add.ul r[6:7], r[6:7], r[10:11]
	addli r1, r2, 256
	store.d r[4:5], -264(r30)               # 8-byte Folded Spill
	storeli.w r2, -200(r30)                 # 4-byte Folded Spill
	addli r4, r30, -128
	addli r5, r30, -64
	store.d r[6:7], -256(r30)               # 8-byte Folded Spill
	storeli.w r1, -204(r30)                 # 4-byte Folded Spill
	lui r1, 260096
	vor.f.mz vr3{mr1}, r1, vr0
	addli r1, r2, 512
	addli r2, zero, 2047
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	lui r1, 15
	addli r1, r1, 4095
	vmmov mr0, r1
	lui r1, 239665
	vor.f.mh vr2{mr0}, vr1, vr3
	ori r1, r1, 623
	storeli.w r1, -272(r30)                 # 4-byte Folded Spill
	lui r1, 8
	vadd.f.mz.rn vr3{mr1}, vr2, vr2
	vmmov mr3, r1
	j .LBB0_5
.LBB0_2:                                #   in Loop: Header=BB0_5 Depth=1
	loadli.w r1,  -924(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -932(r30)                 # 4-byte Folded Reload
	loadli.w r27,  -424(r30)                # 4-byte Folded Reload
	loadli.w r5,  -440(r30)                 # 4-byte Folded Reload
	loadli.w r14,  -452(r30)                # 4-byte Folded Reload
	loadli.w r10,  -468(r30)                # 4-byte Folded Reload
	loadli.w r21,  -484(r30)                # 4-byte Folded Reload
	loadli.w r20,  -500(r30)                # 4-byte Folded Reload
	loadli.w r19,  -520(r30)                # 4-byte Folded Reload
	loadli.w r26,  -536(r30)                # 4-byte Folded Reload
	loadli.w r9,  -148(r30)                 # 4-byte Folded Reload
	loadli.w r11,  -160(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -276(r30)                 # 4-byte Folded Reload
	stores.w r2, 0(r3)
	loadli.w r3,  -760(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -764(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r2, r3
	mul.f.rn r2, r6, r27
	add.f.rn r2, r3, r2
	loadli.w r3,  -756(r30)                 # 4-byte Folded Reload
	sub.f.rn r23, r3, r2
	mul.f.rn r3, r5, r23
	mul.f.rn r23, r23, r23
	add.f.rn r3, r2, r3
	loadli.w r2,  -744(r30)                 # 4-byte Folded Reload
	sub.f.rn r2, r2, r3
	mul.f.rn r4, r14, r2
	mul.f.rn r2, r2, r2
	add.f.rn r3, r3, r4
	loadli.w r4,  -736(r30)                 # 4-byte Folded Reload
	sub.f.rn r18, r4, r3
	mul.f.rn r4, r10, r18
	add.f.rn r3, r3, r4
	loadli.w r4,  -728(r30)                 # 4-byte Folded Reload
	sub.f.rn r13, r4, r3
	mul.f.rn r4, r21, r13
	mul.f.rn r13, r13, r13
	add.f.rn r3, r3, r4
	loadli.w r4,  -720(r30)                 # 4-byte Folded Reload
	sub.f.rn r4, r4, r3
	mul.f.rn r7, r20, r4
	mul.f.rn r4, r4, r4
	add.f.rn r3, r3, r7
	loadli.w r7,  -708(r30)                 # 4-byte Folded Reload
	sub.f.rn r16, r7, r3
	mul.f.rn r7, r19, r16
	add.f.rn r3, r3, r7
	loadli.w r7,  -700(r30)                 # 4-byte Folded Reload
	sub.f.rn r22, r7, r3
	mul.f.rn r7, r26, r22
	add.f.rn r7, r3, r7
	loadli.w r3,  -848(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r3, r7
	mul.f.rn r9, r9, r3
	mul.f.rn r3, r3, r3
	add.f.rn r7, r7, r9
	loadli.w r9,  -840(r30)                 # 4-byte Folded Reload
	sub.f.rn r24, r9, r7
	loadli.w r9,  -152(r30)                 # 4-byte Folded Reload
	mul.f.rn r9, r9, r24
	add.f.rn r7, r7, r9
	loadli.w r9,  -836(r30)                 # 4-byte Folded Reload
	sub.f.rn r28, r9, r7
	loadli.w r9,  -156(r30)                 # 4-byte Folded Reload
	mul.f.rn r9, r9, r28
	add.f.rn r9, r7, r9
	loadli.w r7,  -824(r30)                 # 4-byte Folded Reload
	sub.f.rn r7, r7, r9
	mul.f.rn r12, r11, r7
	loadli.w r11,  -816(r30)                # 4-byte Folded Reload
	mul.f.rn r7, r7, r7
	add.f.rn r9, r9, r12
	sub.f.rn r12, r11, r9
	loadli.w r11,  -164(r30)                # 4-byte Folded Reload
	storeli.w r12, -728(r30)                # 4-byte Folded Spill
	mul.f.rn r12, r11, r12
	loadli.w r11,  -808(r30)                # 4-byte Folded Reload
	add.f.rn r9, r9, r12
	sub.f.rn r12, r11, r9
	loadli.w r11,  -168(r30)                # 4-byte Folded Reload
	mul.f.rn r25, r11, r12
	loadli.w r11,  -800(r30)                # 4-byte Folded Reload
	mul.f.rn r12, r12, r12
	add.f.rn r9, r9, r25
	sub.f.rn r15, r11, r9
	loadli.w r11,  -172(r30)                # 4-byte Folded Reload
	mul.f.rn r25, r11, r15
	loadli.w r11,  -792(r30)                # 4-byte Folded Reload
	storeli.w r15, -708(r30)                # 4-byte Folded Spill
	add.f.rn r9, r9, r25
	sub.f.rn r15, r11, r9
	loadli.w r11,  -176(r30)                # 4-byte Folded Reload
	mul.f.rn r25, r11, r15
	loadli.w r11,  -780(r30)                # 4-byte Folded Reload
	storeli.w r15, -720(r30)                # 4-byte Folded Spill
	add.f.rn r9, r9, r25
	loadli.w r25,  -896(r30)                # 4-byte Folded Reload
	sub.f.rn r11, r11, r9
	mul.f.rn r15, r25, r11
	storeli.w r11, -700(r30)                # 4-byte Folded Spill
	loadli.w r11,  -404(r30)                # 4-byte Folded Reload
	add.f.rn r9, r9, r15
	mul.f.rn r15, r6, r6
	loadli.w r6,  -768(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r6, r9
	mul.f.rn r15, r15, r11
	loadli.w r11,  -180(r30)                # 4-byte Folded Reload
	mul.f.rn r11, r11, r6
	mul.f.rn r15, r15, r27
	loadli.w r27,  -964(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r6, r6
	add.f.rn r9, r9, r11
	loadli.w r11,  -392(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r15
	loadli.w r15,  -820(r30)                # 4-byte Folded Reload
	mul.f.rn r11, r11, r23
	sub.f.rn r23, r15, r9
	loadli.w r15,  -860(r30)                # 4-byte Folded Reload
	mul.f.rn r11, r5, r11
	add.f.rn r1, r15, r1
	loadli.w r5,  -184(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r5, r23
	loadli.w r5,  -852(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r11
	loadli.w r11,  -408(r30)                # 4-byte Folded Reload
	mul.f.rn r11, r11, r2
	add.f.rn r9, r9, r15
	loadli.w r2,  -856(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r18, r18
	add.f.rn r1, r2, r1
	loadli.w r2,  -804(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r14, r11
	sub.f.rn r2, r2, r9
	loadli.w r14,  -912(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r11
	loadli.w r11,  -428(r30)                # 4-byte Folded Reload
	mul.f.rn r18, r14, r2
	mul.f.rn r11, r11, r15
	add.f.rn r9, r9, r18
	add.f.rn r1, r5, r1
	loadli.w r5,  -788(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r10, r11
	loadli.w r10,  -920(r30)                # 4-byte Folded Reload
	sub.f.rn r18, r5, r9
	loadli.w r5,  -444(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r11
	mul.f.rn r11, r5, r13
	loadli.w r5,  -844(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r10, r18
	mul.f.rn r18, r18, r18
	add.f.rn r1, r5, r1
	mul.f.rn r11, r21, r11
	loadli.w r5,  -832(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r9, r13
	mul.f.rn r13, r16, r16
	add.f.rn r11, r1, r11
	loadli.w r1,  -464(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r1, r4
	loadli.w r1,  -772(r30)                 # 4-byte Folded Reload
	sub.f.rn r1, r1, r9
	add.f.rn r11, r5, r11
	loadli.w r5,  -188(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r20, r4
	mul.f.rn r15, r5, r1
	loadli.w r5,  -480(r30)                 # 4-byte Folded Reload
	mul.f.rn r1, r1, r1
	add.f.rn r4, r11, r4
	mul.f.rn r11, r5, r13
	loadli.w r5,  -828(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r22, r22
	loadli.w r22,  -1000(r30)               # 4-byte Folded Reload
	add.f.rn r9, r9, r15
	add.f.rn r4, r5, r4
	loadli.w r5,  -748(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r19, r11
	sub.f.rn r16, r5, r9
	loadli.w r5,  -192(r30)                 # 4-byte Folded Reload
	add.f.rn r4, r4, r11
	mul.f.rn r11, r5, r16
	loadli.w r5,  -488(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r16, r16
	mul.f.rn r13, r5, r13
	loadli.w r5,  -812(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r9, r11
	add.f.rn r4, r5, r4
	loadli.w r5,  -732(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r26, r13
	mul.f.rn r13, r24, r24
	loadli.w r26,  -968(r30)                # 4-byte Folded Reload
	loadli.w r24,  -988(r30)                # 4-byte Folded Reload
	sub.f.rn r19, r5, r9
	loadli.w r5,  -504(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r5, r3
	add.f.rn r4, r4, r11
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r5, r19
	loadli.w r5,  -796(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r19, r19
	add.f.rn r4, r5, r4
	loadli.w r5,  -148(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r5, r3
	add.f.rn r9, r9, r11
	loadli.w r5,  -712(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r28, r28
	loadli.w r28,  -956(r30)                # 4-byte Folded Reload
	add.f.rn r3, r4, r3
	loadli.w r4,  -524(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r4, r13
	sub.f.rn r13, r5, r9
	loadli.w r5,  -784(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r5, r3
	loadli.w r5,  -152(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r5, r4
	loadli.w r5,  -216(r30)                 # 4-byte Folded Reload
	storeli.w r13, -148(r30)                # 4-byte Folded Spill
	mul.f.rn r13, r5, r13
	loadli.w r5,  -776(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r4
	loadli.w r4,  -540(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r4, r11
	add.f.rn r9, r9, r13
	add.f.rn r11, r5, r3
	loadli.w r3,  -156(r30)                 # 4-byte Folded Reload
	loadli.w r5,  -684(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r3, r4
	loadli.w r3,  -696(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r5, r7
	loadli.w r5,  -220(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r3, r9
	add.f.rn r4, r11, r4
	mul.f.rn r11, r5, r3
	loadli.w r5,  -752(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r3, r3
	add.f.rn r4, r5, r4
	loadli.w r5,  -160(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r5, r7
	add.f.rn r9, r9, r11
	loadli.w r5,  -728(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r5, r5
	loadli.w r5,  -864(r30)                 # 4-byte Folded Reload
	add.f.rn r7, r4, r7
	loadli.w r4,  -680(r30)                 # 4-byte Folded Reload
	sub.f.rn r4, r4, r9
	mul.f.rn r11, r5, r11
	loadli.w r5,  -740(r30)                 # 4-byte Folded Reload
	add.f.rn r7, r5, r7
	loadli.w r5,  -164(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r28, r4
	mul.f.rn r11, r5, r11
	loadli.w r5,  -868(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r4, r4
	mul.f.rn r12, r5, r12
	loadli.w r5,  -672(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r9, r13
	add.f.rn r11, r7, r11
	sub.f.rn r7, r5, r9
	loadli.w r5,  -724(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r5, r11
	loadli.w r5,  -168(r30)                 # 4-byte Folded Reload
	mul.f.rn r12, r5, r12
	loadli.w r5,  -708(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r27, r7
	mul.f.rn r7, r7, r7
	mul.f.rn r13, r5, r5
	loadli.w r5,  -872(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r12
	add.f.rn r9, r9, r15
	mul.f.rn r12, r5, r13
	loadli.w r5,  -716(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r5, r11
	loadli.w r5,  -172(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r5, r12
	loadli.w r5,  -720(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r5, r5
	loadli.w r5,  -664(r30)                 # 4-byte Folded Reload
	sub.f.rn r12, r5, r9
	add.f.rn r11, r11, r13
	loadli.w r5,  -876(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r5, r15
	loadli.w r5,  -704(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r5, r11
	loadli.w r5,  -176(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r26, r12
	mul.f.rn r12, r12, r12
	mul.f.rn r13, r5, r13
	loadli.w r5,  -700(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r5, r5
	add.f.rn r9, r9, r15
	loadli.w r5,  -880(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r13
	mul.f.rn r15, r5, r20
	loadli.w r5,  -652(r30)                 # 4-byte Folded Reload
	sub.f.rn r13, r5, r9
	loadli.w r5,  -692(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r5, r11
	mul.f.rn r15, r25, r15
	loadli.w r25,  -980(r30)                # 4-byte Folded Reload
	loadli.w r5,  -884(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r25, r13
	mul.f.rn r13, r13, r13
	add.f.rn r11, r11, r15
	mul.f.rn r15, r5, r6
	loadli.w r5,  -688(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r9, r20
	mul.f.rn r20, r23, r23
	add.f.rn r11, r5, r11
	loadli.w r5,  -644(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r5, r9
	loadli.w r5,  -180(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r5, r15
	loadli.w r5,  -888(r30)                 # 4-byte Folded Reload
	mul.f.rn r23, r24, r6
	add.f.rn r11, r11, r15
	mul.f.rn r15, r5, r20
	loadli.w r5,  -676(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r2, r2
	loadli.w r2,  -636(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r9, r23
	loadli.w r23,  -996(r30)                # 4-byte Folded Reload
	add.f.rn r11, r5, r11
	loadli.w r5,  -184(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r5, r15
	sub.f.rn r2, r2, r9
	loadli.w r5,  -892(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r15
	mul.f.rn r15, r5, r20
	mul.f.rn r20, r23, r2
	loadli.w r5,  -668(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r2, r2
	add.f.rn r11, r5, r11
	mul.f.rn r15, r14, r15
	add.f.rn r9, r9, r20
	loadli.w r5,  -900(r30)                 # 4-byte Folded Reload
	loadli.w r14,  -1024(r30)               # 4-byte Folded Reload
	add.f.rn r11, r11, r15
	mul.f.rn r15, r5, r18
	loadli.w r5,  -624(r30)                 # 4-byte Folded Reload
	loadli.w r18,  -1016(r30)               # 4-byte Folded Reload
	sub.f.rn r21, r5, r9
	loadli.w r5,  -660(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r5, r11
	mul.f.rn r15, r10, r15
	loadli.w r5,  -904(r30)                 # 4-byte Folded Reload
	loadli.w r10,  -1032(r30)               # 4-byte Folded Reload
	mul.f.rn r20, r22, r21
	mul.f.rn r1, r5, r1
	loadli.w r5,  -656(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r15
	add.f.rn r9, r9, r20
	add.f.rn r11, r5, r11
	loadli.w r5,  -188(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r5, r1
	loadli.w r1,  -616(r30)                 # 4-byte Folded Reload
	loadli.w r5,  -908(r30)                 # 4-byte Folded Reload
	sub.f.rn r1, r1, r9
	mul.f.rn r16, r5, r16
	loadli.w r5,  -648(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r15
	mul.f.rn r15, r18, r1
	mul.f.rn r1, r1, r1
	add.f.rn r11, r5, r11
	loadli.w r5,  -192(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r9, r15
	mul.f.rn r15, r5, r16
	loadli.w r5,  -608(r30)                 # 4-byte Folded Reload
	sub.f.rn r16, r5, r9
	add.f.rn r11, r11, r15
	loadli.w r5,  -916(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r5, r19
	loadli.w r5,  -640(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r5, r11
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r14, r16
	mul.f.rn r15, r5, r15
	loadli.w r5,  -148(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r5, r5
	add.f.rn r9, r9, r19
	loadli.w r5,  -928(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r15
	mul.f.rn r15, r5, r20
	loadli.w r5,  -596(r30)                 # 4-byte Folded Reload
	sub.f.rn r19, r5, r9
	loadli.w r5,  -632(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r5, r11
	loadli.w r5,  -216(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r5, r15
	mul.f.rn r20, r10, r19
	loadli.w r5,  -936(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r5, r3
	loadli.w r5,  -628(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r15
	add.f.rn r9, r9, r20
	loadli.w r20,  -1040(r30)               # 4-byte Folded Reload
	add.f.rn r11, r5, r11
	loadli.w r5,  -220(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r5, r3
	loadli.w r3,  -588(r30)                 # 4-byte Folded Reload
	loadli.w r5,  -940(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r3, r9
	mul.f.rn r4, r5, r4
	loadli.w r5,  -620(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r15
	mul.f.rn r15, r20, r3
	mul.f.rn r4, r28, r4
	loadli.w r28,  -1048(r30)               # 4-byte Folded Reload
	mul.f.rn r3, r3, r3
	add.f.rn r11, r5, r11
	loadli.w r5,  -944(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r9, r15
	mul.f.rn r7, r5, r7
	loadli.w r5,  -612(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r4
	loadli.w r4,  -576(r30)                 # 4-byte Folded Reload
	sub.f.rn r4, r4, r9
	mul.f.rn r7, r27, r7
	add.f.rn r11, r5, r11
	loadli.w r5,  -948(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r28, r4
	mul.f.rn r12, r5, r12
	loadli.w r5,  -568(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r4, r4
	add.f.rn r11, r11, r7
	add.f.rn r9, r9, r15
	mul.f.rn r12, r26, r12
	loadli.w r26,  -1056(r30)               # 4-byte Folded Reload
	sub.f.rn r7, r5, r9
	loadli.w r5,  -604(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r5, r11
	loadli.w r5,  -952(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r26, r7
	mul.f.rn r7, r7, r7
	add.f.rn r11, r11, r12
	mul.f.rn r12, r5, r13
	loadli.w r5,  -600(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r6, r6
	add.f.rn r9, r9, r15
	mul.f.rn r15, r21, r21
	loadli.w r21,  -1080(r30)               # 4-byte Folded Reload
	add.f.rn r11, r5, r11
	mul.f.rn r12, r25, r12
	loadli.w r5,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r25,  -1064(r30)               # 4-byte Folded Reload
	sub.f.rn r6, r5, r9
	loadli.w r5,  -960(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r12
	mul.f.rn r12, r5, r13
	loadli.w r5,  -592(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r25, r6
	mul.f.rn r6, r6, r6
	add.f.rn r11, r5, r11
	mul.f.rn r12, r24, r12
	loadli.w r5,  -972(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r9, r13
	add.f.rn r11, r11, r12
	mul.f.rn r12, r5, r2
	loadli.w r2,  -548(r30)                 # 4-byte Folded Reload
	loadli.w r5,  -584(r30)                 # 4-byte Folded Reload
	sub.f.rn r2, r2, r9
	add.f.rn r11, r5, r11
	mul.f.rn r12, r23, r12
	loadli.w r23,  -1072(r30)               # 4-byte Folded Reload
	loadli.w r5,  -976(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r23, r2
	mul.f.rn r2, r2, r2
	add.f.rn r11, r11, r12
	add.f.rn r9, r9, r13
	mul.f.rn r13, r5, r15
	loadli.w r5,  -580(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r5, r11
	loadli.w r5,  -532(r30)                 # 4-byte Folded Reload
	sub.f.rn r12, r5, r9
	mul.f.rn r13, r22, r13
	loadli.w r5,  -984(r30)                 # 4-byte Folded Reload
	mul.f.rn r1, r5, r1
	loadli.w r5,  -572(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r21, r12
	add.f.rn r11, r11, r13
	mul.f.rn r12, r12, r12
	mul.f.rn r13, r18, r1
	loadli.w r1,  -512(r30)                 # 4-byte Folded Reload
	loadli.w r18,  -1088(r30)               # 4-byte Folded Reload
	add.f.rn r9, r9, r15
	add.f.rn r11, r5, r11
	mul.f.rn r15, r16, r16
	loadli.w r5,  -992(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r19, r19
	loadli.w r19,  -1120(r30)               # 4-byte Folded Reload
	sub.f.rn r1, r1, r9
	add.f.rn r11, r11, r13
	mul.f.rn r13, r5, r15
	loadli.w r5,  -564(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r18, r1
	add.f.rn r11, r5, r11
	mul.f.rn r13, r14, r13
	loadli.w r5,  -1004(r30)                # 4-byte Folded Reload
	loadli.w r14,  -1104(r30)               # 4-byte Folded Reload
	add.f.rn r9, r9, r15
	mul.f.rn r15, r5, r16
	loadli.w r5,  -496(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r13
	sub.f.rn r13, r5, r9
	loadli.w r5,  -560(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r10, r15
	loadli.w r10,  -1092(r30)               # 4-byte Folded Reload
	add.f.rn r11, r5, r11
	loadli.w r5,  -1012(r30)                # 4-byte Folded Reload
	mul.f.rn r16, r10, r13
	mul.f.rn r3, r5, r3
	loadli.w r5,  -552(r30)                 # 4-byte Folded Reload
	mul.f.rn r13, r13, r13
	add.f.rn r11, r11, r15
	add.f.rn r9, r9, r16
	mul.f.rn r15, r20, r3
	loadli.w r3,  -472(r30)                 # 4-byte Folded Reload
	loadli.w r16,  -1112(r30)               # 4-byte Folded Reload
	loadli.w r20,  -1136(r30)               # 4-byte Folded Reload
	add.f.rn r11, r5, r11
	loadli.w r5,  -1020(r30)                # 4-byte Folded Reload
	sub.f.rn r3, r3, r9
	mul.f.rn r4, r5, r4
	loadli.w r5,  -544(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r11, r15
	mul.f.rn r15, r14, r3
	mul.f.rn r3, r3, r3
	add.f.rn r11, r5, r11
	loadli.w r5,  -1028(r30)                # 4-byte Folded Reload
	add.f.rn r9, r9, r15
	mul.f.rn r15, r28, r4
	loadli.w r4,  -456(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r5, r7
	loadli.w r5,  -528(r30)                 # 4-byte Folded Reload
	sub.f.rn r4, r4, r9
	add.f.rn r11, r11, r15
	mul.f.rn r7, r26, r7
	mul.f.rn r15, r16, r4
	add.f.rn r11, r5, r11
	loadli.w r5,  -1036(r30)                # 4-byte Folded Reload
	mul.f.rn r4, r4, r4
	add.f.rn r9, r9, r15
	add.f.rn r7, r11, r7
	mul.f.rn r11, r5, r6
	loadli.w r6,  -436(r30)                 # 4-byte Folded Reload
	loadli.w r5,  -516(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r6, r9
	add.f.rn r7, r5, r7
	mul.f.rn r11, r25, r11
	loadli.w r5,  -1044(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r5, r2
	loadli.w r5,  -508(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r19, r6
	add.f.rn r7, r7, r11
	mul.f.rn r6, r6, r6
	mul.f.rn r11, r23, r2
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r9, r15
	add.f.rn r7, r5, r7
	loadli.w r5,  -1052(r30)                # 4-byte Folded Reload
	loadli.w r15,  -1124(r30)               # 4-byte Folded Reload
	sub.f.rn r2, r2, r9
	add.f.rn r7, r7, r11
	mul.f.rn r11, r5, r12
	loadli.w r5,  -492(r30)                 # 4-byte Folded Reload
	mul.f.rn r12, r15, r2
	add.f.rn r7, r5, r7
	mul.f.rn r11, r21, r11
	loadli.w r5,  -1060(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r2, r2
	add.f.rn r9, r9, r12
	mul.f.rn r12, r1, r1
	loadli.w r1,  -400(r30)                 # 4-byte Folded Reload
	add.f.rn r7, r7, r11
	mul.f.rn r11, r5, r12
	sub.f.rn r1, r1, r9
	loadli.w r5,  -476(r30)                 # 4-byte Folded Reload
	add.f.rn r7, r5, r7
	loadli.w r5,  -1068(r30)                # 4-byte Folded Reload
	mul.f.rn r12, r20, r1
	mul.f.rn r11, r18, r11
	mul.f.rn r1, r1, r1
	add.f.rn r9, r9, r12
	add.f.rn r7, r7, r11
	mul.f.rn r11, r5, r13
	loadli.w r12,  -384(r30)                # 4-byte Folded Reload
	loadli.w r5,  -460(r30)                 # 4-byte Folded Reload
	add.f.rn r7, r5, r7
	mul.f.rn r11, r10, r11
	sub.f.rn r12, r12, r9
	loadli.w r10,  -1144(r30)               # 4-byte Folded Reload
	loadli.w r5,  -1076(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r5, r3
	loadli.w r5,  -448(r30)                 # 4-byte Folded Reload
	add.f.rn r7, r7, r11
	mul.f.rn r13, r10, r12
	loadli.w r11,  -376(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r14, r3
	loadli.w r14,  -1152(r30)               # 4-byte Folded Reload
	add.f.rn r9, r9, r13
	add.f.rn r7, r5, r7
	loadli.w r5,  -1084(r30)                # 4-byte Folded Reload
	loadli.w r13,  -432(r30)                # 4-byte Folded Reload
	mul.f.rn r4, r5, r4
	loadli.w r5,  -1100(r30)                # 4-byte Folded Reload
	add.f.rn r3, r7, r3
	sub.f.rn r11, r11, r9
	mul.f.rn r2, r5, r2
	loadli.w r5,  -1140(r30)                # 4-byte Folded Reload
	mul.f.rn r4, r16, r4
	loadli.w r16,  -1176(r30)               # 4-byte Folded Reload
	mul.f.rn r7, r14, r11
	add.f.rn r3, r13, r3
	loadli.w r13,  -1160(r30)               # 4-byte Folded Reload
	mul.f.rn r2, r15, r2
	loadli.w r15,  -1168(r30)               # 4-byte Folded Reload
	mul.f.rn r11, r11, r11
	add.f.rn r7, r9, r7
	add.f.rn r3, r3, r4
	loadli.w r4,  -1096(r30)                # 4-byte Folded Reload
	loadli.w r9,  -420(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r4, r6
	loadli.w r6,  -364(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r6, r7
	add.f.rn r3, r9, r3
	mul.f.rn r4, r19, r4
	mul.f.rn r9, r13, r6
	mul.f.rn r6, r6, r6
	add.f.rn r3, r3, r4
	add.f.rn r4, r7, r9
	loadli.w r7,  -412(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r7, r3
	loadli.w r7,  -356(r30)                 # 4-byte Folded Reload
	sub.f.rn r7, r7, r4
	add.f.rn r2, r3, r2
	loadli.w r3,  -1108(r30)                # 4-byte Folded Reload
	mul.f.rn r9, r15, r7
	mul.f.rn r1, r3, r1
	mul.f.rn r7, r7, r7
	add.f.rn r3, r4, r9
	loadli.w r4,  -396(r30)                 # 4-byte Folded Reload
	mul.f.rn r1, r20, r1
	loadli.w r9,  -348(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r5, r7
	loadli.w r5,  -1200(r30)                # 4-byte Folded Reload
	add.f.rn r2, r4, r2
	mul.f.rn r4, r12, r12
	loadli.w r12,  -388(r30)                # 4-byte Folded Reload
	sub.f.rn r9, r9, r3
	add.f.rn r1, r2, r1
	loadli.w r2,  -1116(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r2, r4
	mul.f.rn r4, r16, r9
	add.f.rn r1, r12, r1
	loadli.w r12,  -1192(r30)               # 4-byte Folded Reload
	mul.f.rn r2, r10, r2
	add.f.rn r3, r3, r4
	loadli.w r4,  -336(r30)                 # 4-byte Folded Reload
	loadli.w r10,  -1184(r30)               # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -1128(r30)                # 4-byte Folded Reload
	sub.f.rn r4, r4, r3
	mul.f.rn r2, r2, r11
	loadli.w r11,  -380(r30)                # 4-byte Folded Reload
	add.f.rn r1, r11, r1
	mul.f.rn r11, r10, r4
	mul.f.rn r4, r4, r4
	mul.f.rn r2, r14, r2
	loadli.w r14,  -208(r30)                # 4-byte Folded Reload
	add.f.rn r3, r3, r11
	loadli.w r11,  -368(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -1132(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r2, r6
	loadli.w r6,  -372(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	loadli.w r6,  -328(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r13, r2
	sub.f.rn r6, r6, r3
	add.f.rn r1, r1, r2
	mul.f.rn r2, r12, r6
	mul.f.rn r6, r6, r6
	add.f.rn r1, r11, r1
	add.f.rn r2, r3, r2
	mul.f.rn r3, r15, r7
	mul.f.rn r7, r9, r9
	loadli.w r9,  -316(r30)                 # 4-byte Folded Reload
	loadli.w r11,  -360(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1148(r30)                # 4-byte Folded Reload
	sub.f.rn r9, r9, r2
	mul.f.rn r3, r3, r7
	add.f.rn r1, r11, r1
	mul.f.rn r7, r5, r9
	loadli.w r11,  -1212(r30)               # 4-byte Folded Reload
	mul.f.rn r3, r16, r3
	add.f.rn r2, r2, r7
	loadli.w r7,  -352(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1156(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r4
	loadli.w r4,  -308(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r7, r1
	sub.f.rn r4, r4, r2
	mul.f.rn r3, r10, r3
	loadli.w r10,  -1204(r30)               # 4-byte Folded Reload
	mul.f.rn r7, r10, r4
	mul.f.rn r4, r4, r4
	add.f.rn r1, r1, r3
	loadli.w r3,  -1164(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r6
	loadli.w r6,  -344(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r7
	loadli.w r7,  -296(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	mul.f.rn r6, r9, r9
	loadli.w r9,  -340(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r12, r3
	sub.f.rn r7, r7, r2
	add.f.rn r1, r1, r3
	loadli.w r3,  -1172(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r6
	mul.f.rn r6, r11, r7
	mul.f.rn r7, r7, r7
	add.f.rn r1, r9, r1
	loadli.w r9,  -1228(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r5, r3
	loadli.w r5,  -1180(r30)                # 4-byte Folded Reload
	add.f.rn r2, r2, r6
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r5, r4
	loadli.w r5,  -1224(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -292(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r10, r4
	sub.f.rn r3, r3, r2
	add.f.rn r1, r6, r1
	mul.f.rn r6, r5, r3
	mul.f.rn r3, r3, r3
	add.f.rn r1, r1, r4
	loadli.w r4,  -1188(r30)                # 4-byte Folded Reload
	mul.f.rn r4, r4, r7
	loadli.w r7,  -324(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r6
	loadli.w r6,  -288(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r7, r1
	mul.f.rn r4, r11, r4
	sub.f.rn r6, r6, r2
	add.f.rn r1, r1, r4
	loadli.w r4,  -1196(r30)                # 4-byte Folded Reload
	mul.f.rn r7, r9, r6
	mul.f.rn r3, r4, r3
	loadli.w r4,  -320(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r4, r1
	add.f.rn r2, r2, r7
	mul.f.rn r4, r6, r6
	loadli.w r7,  -1232(r30)                # 4-byte Folded Reload
	loadli.w r6,  -312(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r5, r3
	loadli.w r5,  -284(r30)                 # 4-byte Folded Reload
	sub.f.rn r5, r5, r2
	add.f.rn r1, r1, r3
	loadli.w r3,  -1208(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r4
	mul.f.rn r4, r7, r5
	mul.f.rn r5, r5, r5
	add.f.rn r1, r6, r1
	mul.f.rn r3, r9, r3
	add.f.rn r2, r2, r4
	loadli.w r4,  -280(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1216(r30)                # 4-byte Folded Reload
	sub.f.rn r4, r4, r2
	mul.f.rn r3, r3, r5
	loadli.w r5,  -304(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	mul.f.rn r5, r4, r4
	mul.f.rn r4, r17, r4
	mul.f.rn r3, r7, r3
	add.f.rn r2, r2, r4
	add.f.rn r1, r1, r3
	loadli.w r3,  -1220(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r5
	loadli.w r5,  -300(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	mul.f.rn r3, r17, r3
	add.f.rn r1, r1, r3
	loadli.w r3,  -200(r30)                 # 4-byte Folded Reload
	stores.w r2, 0(r3)
	loadli.w r2,  -204(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r14
	sync_group
	loadli.w r1,  -204(r30)                 # 4-byte Folded Reload
.Ltmp0:
	.loc	1 82 25 prologue_end            # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:82:25
	lui r2, 237568
	.loc	1 85 32                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:85:32
	lui r3, 260096
	addli r5, r30, -64
	loads.w r1, 0(r1)
	.loc	1 82 25                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:82:25
	mul.f.rn r1, r1, r2
	.loc	1 84 24                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:84:24
	loadli.w r2,  -272(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -200(r30)                 # 4-byte Folded Reload
	loads.w r2, 0(r2)
	.loc	1 71 42                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:71:42
	mfence { lm }
	.loc	1 71 95 is_stmt 0               # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:71:95
	vload_mask16.mz vr6{mr1}, -64(r30)
	.loc	1 71 42                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:71:42
	mfence { lm }
	.loc	1 71 95                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:71:95
	#APP
	vfp162float_l.rn vr7, vr6
	#NO_APP
	#APP
	vfp162float_h.rn vr8, vr6
	#NO_APP
	.loc	1 85 32 is_stmt 1               # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:85:32
	sqrt.f.rn r1, r1
	div.f.rn r1, r3, r1
	.loc	1 80 24                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:80:24
	lui r3, 524288
	xor r2, r2, r3
	#APP
	vadd.f.mz.rn vr4{mr1}, r2, vr4
	#NO_APP
	#APP
	vadd.f.mz.rn vr5{mr1}, r2, vr5
	#NO_APP
	.loc	1 90 29                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:90:29
	load.d r[3:4], -144(r30)                # 8-byte Folded Reload
	.loc	1 86 24                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:86:24
	#APP
	vmul.f.mz.rn vr4{mr1}, r1, vr4
	#NO_APP
	#APP
	vmul.f.mz.rn vr5{mr1}, r1, vr5
	#NO_APP
	.loc	1 90 29                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:90:29
	load.d r[1:2], 24(r30)
	.loc	1 88 24                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:88:24
	vadd.f.mz.rn vr4{mr1}, vr7, vr4
	vadd.f.mz.rn vr5{mr1}, vr8, vr5
	.loc	1 90 53                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:90:53
	#APP
	vfloat2fp16_l.rn vr6, vr4
	vfloat2fp16_h.rn vr6, vr5
	#NO_APP
	vstore_mask16.mz vr6{mr1}, -64(r30)
	mfence { lm }
	.loc	1 90 29 is_stmt 0               # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:90:29
	add.ul r[1:2], r[1:2], r[3:4]
	.loc	1 90 53                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:90:53
	lui r3, 983040
	addli r4, r30, -128
	or r3, r8, r3
	s_lm2gm r3, r5, 0(r[1:2])
	addli r2, zero, 2047
	mfence { lm }
	loadli.w r12,  48(r30)
	loadli.w r13,  44(r30)
	loadli.w r15,  -132(r30)                # 4-byte Folded Reload
	loadli.w r16,  -224(r30)                # 4-byte Folded Reload
	loadli.w r17,  -228(r30)                # 4-byte Folded Reload
	loadli.w r18,  -240(r30)                # 4-byte Folded Reload
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 53                          # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:0:53
	add.s r15, r15, r18
	blt.s r15, r16, .LBB0_5
	j .LBB0_201
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_11 Depth 2
	div.s r1, r15, r12
	div.s r1, r1, r13
	.loc	1 28 23 is_stmt 1               # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:28:23
	add.s r1, r1, r17
	blt.s r2, r1, .LBB0_4
# %bb.6:                                # %.preheader.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 23 is_stmt 0                # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:0:23
	addli r2, zero, 0
.LBB0_7:                                # %.preheader
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 42 51 is_stmt 1               # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:42:51
	add.s r3, r4, r2
	addli r2, r2, 4
	store.h zero, 0(r3)
	store.h zero, 2(r3)
	mfence { lm }
	bneq r2, r8, .LBB0_7
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	1 42 41 is_stmt 0               # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:42:41
	loadli.w r2,  -244(r30)                 # 4-byte Folded Reload
	.loc	1 42 46                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:42:46
	slli r1, r1, 11
	.loc	1 42 34                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:42:34
	addli r3, zero, 1
	.loc	1 42 41                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:42:41
	add.s r1, r1, r2
	.loc	1 42 34                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:42:34
	sext_int2long r[1:2], r1
	sll.d r[6:7], r[1:2], r3
	load.d r[2:3], 0(r30)
	.loc	1 42 51                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:42:51
	lui r1, 983040
	or r1, r8, r1
	store.d r[6:7], -144(r30)               # 8-byte Folded Spill
	.loc	1 42 34                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:42:34
	add.ul r[2:3], r[2:3], r[6:7]
	.loc	1 42 51                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:42:51
	l_gm2lm r1, r4, 0(r[2:3])
	addli r1, zero, 0
.LBB0_9:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 43 41 is_stmt 1               # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:43:41
	add.s r2, r5, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r8, .LBB0_9
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	lui r1, 983040
	load.d r[2:3], -256(r30)                # 8-byte Folded Reload
	or r1, r8, r1
	l_gm2lm r1, r5, 0(r[2:3])
	addli r1, zero, 0
	.loc	1 42 51                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:42:51
	mfence { lm }
	.loc	1 45 23                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:45:23
	vload_mask16.mz vr4{mr1}, -128(r30)
	.loc	1 47 23                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:47:23
	vload_mask16.mz vr5{mr1}, -64(r30)
	.loc	1 43 41                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:43:41
	mfence { lm }
	.loc	1 45 23                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:45:23
	#APP
	vfp162float_l.rn vr6, vr4
	#NO_APP
	#APP
	vfp162float_h.rn vr7, vr4
	#NO_APP
	.loc	1 47 23                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:47:23
	#APP
	vfp162float_h.rn vr8, vr5
	#NO_APP
	#APP
	vfp162float_l.rn vr4, vr5
	#NO_APP
	.loc	1 48 22                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:48:22
	vadd.f.mz.rn vr5{mr1}, vr7, vr8
	.loc	1 56 64                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:56:64
	vadd.s.mz vr7{mr1}, zero, vr0
	.loc	1 48 22                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:48:22
	vadd.f.mz.rn vr4{mr1}, vr6, vr4
	.loc	1 56 64                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:56:64
	vadd.s.mz vr6{mr1}, zero, vr0
	.loc	1 49 23                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:49:23
	#APP
	vfloat2fp16_l.rn vr8, vr4
	vfloat2fp16_h.rn vr8, vr5
	#NO_APP
	.loc	1 50 23                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:50:23
	#APP
	vfp162float_h.rn vr5, vr8
	#NO_APP
	#APP
	vfp162float_l.rn vr4, vr8
	#NO_APP
	.loc	1 56 64                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:56:64
	vor.f.mh vr7{mr0}, vr1, vr5
	vor.f.mh vr6{mr0}, vr1, vr4
.LBB0_11:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 71 42                         # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:71:42
	add.s r2, r5, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r8, .LBB0_11
# %bb.12:                               #   in Loop: Header=BB0_5 Depth=1
	lui r1, 983040
	load.d r[2:3], -264(r30)                # 8-byte Folded Reload
	veq.f.mz mr2{mr1}, vr3, vr0
	vextracti.f r27, 0(vr3)
	addli r7, zero, 0
	vmmov r12, mr2
	or r1, r8, r1
	l_gm2lm r1, r5, 0(r[2:3])
	andi r1, r12, 1
	bneq r1, zero, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 42 is_stmt 0                # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:0:42
	vextracti.f r1, 0(vr2)
	div.f.rn r7, r1, r27
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r12, 15
	vextracti.f r2, 15(vr3)
	addli r4, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 15(vr2)
	div.f.rn r4, r1, r2
.LBB0_16:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r12, 14
	vextracti.f r3, 14(vr3)
	addli r6, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 14(vr2)
	div.f.rn r6, r1, r3
.LBB0_18:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r12, 13
	vextracti.f r9, 13(vr3)
	addli r11, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 13(vr2)
	div.f.rn r11, r1, r9
.LBB0_20:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r12, 12
	vextracti.f r5, 12(vr3)
	addli r13, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 12(vr2)
	div.f.rn r13, r1, r5
.LBB0_22:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r12, 11
	vextracti.f r10, 11(vr3)
	addli r17, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 11(vr2)
	div.f.rn r17, r1, r10
.LBB0_24:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r12, 10
	storeli.w r10, -156(r30)                # 4-byte Folded Spill
	vextracti.f r10, 10(vr3)
	addli r18, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 10(vr2)
	div.f.rn r18, r1, r10
.LBB0_26:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r12, 9
	vextracti.f r8, 9(vr3)
	addli r20, zero, 0
	storeli.w r3, -152(r30)                 # 4-byte Folded Spill
	andi r1, r1, 1
	bneq r1, zero, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 9(vr2)
	div.f.rn r20, r1, r8
.LBB0_28:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r12, 8
	storeli.w r10, -160(r30)                # 4-byte Folded Spill
	vextracti.f r10, 8(vr3)
	addli r21, zero, 0
	storeli.w r2, -148(r30)                 # 4-byte Folded Spill
	andi r1, r1, 1
	bneq r1, zero, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 8(vr2)
	div.f.rn r21, r1, r10
.LBB0_30:                               #   in Loop: Header=BB0_5 Depth=1
	srli r2, r12, 7
	vextracti.f r1, 7(vr3)
	addli r23, zero, 0
	andi r2, r2, 1
	bneq r2, zero, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r2, 7(vr2)
	div.f.rn r23, r2, r1
.LBB0_32:                               #   in Loop: Header=BB0_5 Depth=1
	addli r3, r5, 0
	srli r5, r12, 6
	vextracti.f r2, 6(vr3)
	addli r24, zero, 0
	andi r5, r5, 1
	bneq r5, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r5, 6(vr2)
	div.f.rn r24, r5, r2
.LBB0_34:                               #   in Loop: Header=BB0_5 Depth=1
	srli r5, r12, 5
	vextracti.f r14, 5(vr3)
	addli r25, zero, 0
	andi r5, r5, 1
	bneq r5, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r5, 5(vr2)
	div.f.rn r25, r5, r14
.LBB0_36:                               #   in Loop: Header=BB0_5 Depth=1
	srli r5, r12, 4
	vextracti.f r16, 4(vr3)
	addli r26, zero, 0
	andi r5, r5, 1
	bneq r5, zero, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r5, 4(vr2)
	div.f.rn r26, r5, r16
.LBB0_38:                               #   in Loop: Header=BB0_5 Depth=1
	srli r5, r12, 3
	vextracti.f r19, 3(vr3)
	addli r28, zero, 0
	storeli.w r10, -180(r30)                # 4-byte Folded Spill
	andi r5, r5, 1
	bneq r5, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r5, 3(vr2)
	div.f.rn r28, r5, r19
.LBB0_40:                               #   in Loop: Header=BB0_5 Depth=1
	srli r5, r12, 2
	vextracti.f r22, 2(vr3)
	storeli.w r15, -132(r30)                # 4-byte Folded Spill
	andi r10, r5, 1
	addli r5, zero, 0
	bneq r10, zero, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r5, 2(vr2)
	div.f.rn r5, r5, r22
.LBB0_42:                               #   in Loop: Header=BB0_5 Depth=1
	srli r10, r12, 1
	vextracti.f r12, 1(vr3)
	andi r15, r10, 1
	addli r10, zero, 0
	bneq r15, zero, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r10, 1(vr2)
	div.f.rn r10, r10, r12
.LBB0_44:                               #   in Loop: Header=BB0_5 Depth=1
	vadd.s.mz vr8{mr1}, zero, vr0
	addli r15, zero, 1
	vmmov mr2, r15
	addli r15, zero, 8192
	vor.u.mh vr8{mr2}, r7, vr8
	addli r7, zero, 2
	vmmov mr2, r7
	addli r7, zero, 4
	vor.u.mh vr8{mr2}, r10, vr8
	vmmov mr2, r7
	addli r10, zero, 4096
	vor.u.mh vr8{mr2}, r5, vr8
	addli r5, zero, 8
	vmmov mr2, r5
	addli r5, zero, 16
	vor.u.mh vr8{mr2}, r28, vr8
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
	addli r20, r27, 0
	add.f.rn r7, r20, r12
	vor.u.mh vr8{mr2}, r18, vr8
	vmmov mr2, r5
	vor.u.mh vr8{mr2}, r17, vr8
	vmmov mr2, r10
	slli r5, r7, 9
	srli r10, r7, 23
	seteq r5, r5, zero
	andi r10, r10, 255
	vor.u.mh vr8{mr2}, r13, vr8
	vmmov mr2, r15
	setle.f r13, zero, r7
	lui r15, 4
	vor.u.mh vr8{mr2}, r11, vr8
	setle.f r11, r7, zero
	vmmov mr2, r15
	vor.u.mh vr8{mr2}, r6, vr8
	setlti r6, r10, 255
	or r5, r6, r5
	and r6, r11, r13
	vor.u.mh vr8{mr3}, r4, vr8
	and r4, r6, r5
	bneq r4, zero, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r26, r12, r7
.LBB0_46:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r11, r22, r7
	loadli.w r18,  -156(r30)                # 4-byte Folded Reload
	loadli.w r15,  -160(r30)                # 4-byte Folded Reload
	addli r23, zero, 0
	addli r25, r3, 0
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
	bneq r4, zero, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r23, r22, r11
.LBB0_48:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r12, r19, r11
	addli r3, zero, 0
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
	bneq r4, zero, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r19, r12
.LBB0_50:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r13, r16, r12
	storeli.w r3, -164(r30)                 # 4-byte Folded Spill
	addli r3, zero, 0
	addli r22, r9, 0
	slli r4, r13, 9
	setle.f r6, zero, r13
	setle.f r10, r13, zero
	srli r5, r13, 23
	seteq r4, r4, zero
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r10, r6
	and r4, r5, r4
	bneq r4, zero, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r16, r13
.LBB0_52:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r16, r14, r13
	storeli.w r3, -168(r30)                 # 4-byte Folded Spill
	addli r3, zero, 0
	slli r4, r16, 9
	setle.f r6, zero, r16
	setle.f r10, r16, zero
	srli r5, r16, 23
	seteq r4, r4, zero
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r10, r6
	and r4, r5, r4
	bneq r4, zero, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r14, r16
.LBB0_54:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r19, r2, r16
	storeli.w r3, -172(r30)                 # 4-byte Folded Spill
	addli r3, zero, 0
	slli r4, r19, 9
	setle.f r6, zero, r19
	setle.f r10, r19, zero
	srli r5, r19, 23
	seteq r4, r4, zero
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r10, r6
	and r4, r5, r4
	bneq r4, zero, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r2, r19
.LBB0_56:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r21, r1, r19
	loadli.w r9,  -180(r30)                 # 4-byte Folded Reload
	slli r2, r21, 9
	setle.f r5, zero, r21
	setle.f r6, r21, zero
	srli r4, r21, 23
	seteq r2, r2, zero
	andi r4, r4, 255
	setlti r4, r4, 255
	or r2, r4, r2
	and r4, r6, r5
	and r4, r4, r2
	addli r2, zero, 0
	bneq r4, zero, .LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r1, r21
.LBB0_58:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r24, r9, r21
	storeli.w r3, -176(r30)                 # 4-byte Folded Spill
	addli r3, zero, 0
	slli r1, r24, 9
	setle.f r5, zero, r24
	setle.f r6, r24, zero
	srli r4, r24, 23
	seteq r1, r1, zero
	andi r4, r4, 255
	setlti r4, r4, 255
	or r1, r4, r1
	and r4, r6, r5
	and r4, r4, r1
	loadli.w r1,  -148(r30)                 # 4-byte Folded Reload
	bneq r4, zero, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r9, r24
.LBB0_60:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r6, r8, r24
	storeli.w r3, -184(r30)                 # 4-byte Folded Spill
	storeli.w r2, -180(r30)                 # 4-byte Folded Spill
	addli r2, zero, 0
	slli r3, r6, 9
	setle.f r5, zero, r6
	setle.f r10, r6, zero
	srli r4, r6, 23
	seteq r3, r3, zero
	andi r4, r4, 255
	setlti r4, r4, 255
	or r3, r4, r3
	and r4, r10, r5
	and r4, r4, r3
	bneq r4, zero, .LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r8, r6
.LBB0_62:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r27, r15, r6
	storeli.w r2, -188(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -152(r30)                 # 4-byte Folded Reload
	addli r3, zero, 0
	slli r4, r27, 9
	setle.f r10, zero, r27
	setle.f r14, r27, zero
	srli r5, r27, 23
	seteq r4, r4, zero
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r14, r10
	and r5, r5, r4
	bneq r5, zero, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r15, r27
.LBB0_64:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r15, r18, r27
	addli r4, zero, 0
	slli r5, r15, 9
	setle.f r14, zero, r15
	setle.f r17, r15, zero
	srli r10, r15, 23
	seteq r5, r5, zero
	andi r10, r10, 255
	setlti r10, r10, 255
	or r5, r10, r5
	and r10, r17, r14
	and r5, r10, r5
	bneq r5, zero, .LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r4, r18, r15
.LBB0_66:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r10, r25, r15
	storeli.w r4, -156(r30)                 # 4-byte Folded Spill
	addli r4, zero, 0
	slli r5, r10, 9
	setle.f r17, zero, r10
	setle.f r18, r10, zero
	srli r14, r10, 23
	seteq r5, r5, zero
	andi r14, r14, 255
	setlti r14, r14, 255
	or r5, r14, r5
	and r14, r18, r17
	and r5, r14, r5
	bneq r5, zero, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r4, r25, r10
.LBB0_68:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r5, r22, r10
	storeli.w r4, -160(r30)                 # 4-byte Folded Spill
	addli r4, r20, 0
	addli r8, zero, 0
	slli r14, r5, 9
	setle.f r18, zero, r5
	setle.f r20, r5, zero
	srli r17, r5, 23
	seteq r14, r14, zero
	andi r17, r17, 255
	setlti r17, r17, 255
	or r14, r17, r14
	and r17, r20, r18
	and r17, r17, r14
	bneq r17, zero, .LBB0_70
# %bb.69:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r8, r22, r5
.LBB0_70:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r25, r2, r5
	addli r14, zero, 0
	slli r17, r25, 9
	setle.f r20, zero, r25
	setle.f r9, r25, zero
	srli r18, r25, 23
	seteq r17, r17, zero
	andi r18, r18, 255
	setlti r18, r18, 255
	and r9, r9, r20
	or r17, r18, r17
	and r9, r9, r17
	bneq r9, zero, .LBB0_72
# %bb.71:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r14, r2, r25
.LBB0_72:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r20, r1, r25
	addli r2, zero, 0
	storeli.w r14, -196(r30)                # 4-byte Folded Spill
	storeli.w r8, -192(r30)                 # 4-byte Folded Spill
	storeli.w r3, -152(r30)                 # 4-byte Folded Spill
	slli r9, r20, 9
	setle.f r22, zero, r20
	setle.f r28, r20, zero
	srli r18, r20, 23
	seteq r9, r9, zero
	andi r18, r18, 255
	setlti r18, r18, 255
	or r9, r18, r9
	and r18, r28, r22
	and r9, r18, r9
	bneq r9, zero, .LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r1, r20
.LBB0_74:                               #   in Loop: Header=BB0_5 Depth=1
	vsub.f.mz.rn vr7{mr1}, vr7, vr6
	loadli.w r1,  -236(r30)                 # 4-byte Folded Reload
	storeli.w r2, -148(r30)                 # 4-byte Folded Spill
	loadli.w r17,  -164(r30)                # 4-byte Folded Reload
	loadli.w r18,  -168(r30)                # 4-byte Folded Reload
	loadli.w r8,  -172(r30)                 # 4-byte Folded Reload
	addli r14, r23, 0
	stores.w r20, 0(r1)
	vmul.f.mz.rn vr9{mr1}, vr7, vr8
	vmul.f.mz.rn vr7{mr1}, vr7, vr7
	vadd.f.mz.rn vr6{mr1}, vr6, vr9
	vmul.f.mz.rn vr7{mr1}, vr2, vr7
	vextracti.f r9, 0(vr6)
	vextracti.f r20, 1(vr6)
	vmul.f.mz.rn vr7{mr1}, vr7, vr8
	sub.f.rn r22, r20, r9
	vadd.f.mz.rn vr7{mr1}, zero, vr7
	mul.f.rn r20, r26, r22
	mul.f.rn r22, r22, r22
	add.f.rn r9, r9, r20
	vextracti.f r20, 2(vr6)
	mul.f.rn r22, r4, r22
	vextracti.f r4, 0(vr7)
	sub.f.rn r28, r20, r9
	mul.f.rn r20, r23, r28
	addli r23, r26, 0
	vextracti.f r26, 1(vr7)
	add.f.rn r4, r4, r26
	mul.f.rn r26, r28, r28
	add.f.rn r9, r9, r20
	vextracti.f r20, 3(vr6)
	mul.f.rn r7, r7, r26
	sub.f.rn r2, r20, r9
	mul.f.rn r7, r14, r7
	loadli.w r14,  -180(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r17, r2
	mul.f.rn r2, r2, r2
	add.f.rn r9, r9, r20
	vextracti.f r20, 4(vr6)
	mul.f.rn r2, r11, r2
	vextracti.f r11, 5(vr7)
	sub.f.rn r1, r20, r9
	mul.f.rn r2, r17, r2
	loadli.w r17,  -184(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r18, r1
	mul.f.rn r1, r1, r1
	add.f.rn r9, r9, r20
	vextracti.f r20, 5(vr6)
	mul.f.rn r1, r12, r1
	sub.f.rn r20, r20, r9
	mul.f.rn r1, r18, r1
	mul.f.rn r3, r8, r20
	add.f.rn r3, r9, r3
	mul.f.rn r9, r23, r22
	vextracti.f r22, 6(vr6)
	loadli.w r23,  -176(r30)                # 4-byte Folded Reload
	sub.f.rn r22, r22, r3
	add.f.rn r4, r4, r9
	vextracti.f r9, 2(vr7)
	mul.f.rn r26, r23, r22
	add.f.rn r4, r9, r4
	vextracti.f r9, 7(vr6)
	add.f.rn r3, r3, r26
	add.f.rn r4, r4, r7
	sub.f.rn r7, r9, r3
	vextracti.f r9, 3(vr7)
	add.f.rn r4, r9, r4
	mul.f.rn r9, r14, r7
	mul.f.rn r7, r7, r7
	add.f.rn r2, r4, r2
	vextracti.f r4, 4(vr7)
	add.f.rn r3, r3, r9
	vextracti.f r9, 8(vr6)
	add.f.rn r2, r4, r2
	sub.f.rn r4, r9, r3
	mul.f.rn r9, r20, r20
	add.f.rn r1, r2, r1
	mul.f.rn r2, r17, r4
	mul.f.rn r9, r13, r9
	mul.f.rn r4, r4, r4
	loadli.w r13,  -156(r30)                # 4-byte Folded Reload
	add.f.rn r1, r11, r1
	vextracti.f r11, 9(vr6)
	add.f.rn r2, r3, r2
	mul.f.rn r3, r8, r9
	mul.f.rn r9, r22, r22
	loadli.w r8,  -188(r30)                 # 4-byte Folded Reload
	sub.f.rn r11, r11, r2
	add.f.rn r1, r1, r3
	mul.f.rn r3, r16, r9
	vextracti.f r9, 6(vr7)
	mul.f.rn r12, r8, r11
	add.f.rn r1, r9, r1
	mul.f.rn r3, r23, r3
	vextracti.f r9, 10(vr6)
	add.f.rn r2, r2, r12
	add.f.rn r1, r1, r3
	mul.f.rn r3, r19, r7
	vextracti.f r7, 7(vr7)
	loadli.w r12,  -152(r30)                # 4-byte Folded Reload
	sub.f.rn r9, r9, r2
	add.f.rn r1, r7, r1
	mul.f.rn r3, r14, r3
	mul.f.rn r7, r12, r9
	add.f.rn r1, r1, r3
	mul.f.rn r3, r21, r4
	vextracti.f r4, 8(vr7)
	add.f.rn r2, r2, r7
	vextracti.f r7, 11(vr6)
	add.f.rn r1, r4, r1
	mul.f.rn r3, r17, r3
	mul.f.rn r4, r11, r11
	vextracti.f r11, 9(vr7)
	sub.f.rn r7, r7, r2
	add.f.rn r1, r1, r3
	mul.f.rn r3, r24, r4
	mul.f.rn r4, r13, r7
	mul.f.rn r3, r8, r3
	add.f.rn r1, r11, r1
	loadli.w r8,  -160(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r7, r7
	add.f.rn r2, r2, r4
	mul.f.rn r4, r9, r9
	vextracti.f r9, 12(vr6)
	add.f.rn r1, r1, r3
	sub.f.rn r3, r9, r2
	mul.f.rn r4, r6, r4
	vextracti.f r6, 10(vr7)
	loadli.w r9,  -192(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	mul.f.rn r6, r8, r3
	mul.f.rn r4, r12, r4
	mul.f.rn r3, r3, r3
	add.f.rn r2, r2, r6
	vextracti.f r6, 13(vr6)
	add.f.rn r1, r1, r4
	mul.f.rn r4, r27, r7
	vextracti.f r7, 11(vr7)
	mul.f.rn r3, r15, r3
	sub.f.rn r6, r6, r2
	add.f.rn r1, r7, r1
	mul.f.rn r4, r13, r4
	mul.f.rn r3, r8, r3
	loadli.w r8,  -196(r30)                 # 4-byte Folded Reload
	mul.f.rn r7, r9, r6
	add.f.rn r1, r1, r4
	vextracti.f r4, 12(vr7)
	add.f.rn r2, r2, r7
	vextracti.f r7, 14(vr6)
	add.f.rn r1, r4, r1
	mul.f.rn r4, r6, r6
	sub.f.rn r6, r7, r2
	add.f.rn r1, r1, r3
	mul.f.rn r3, r10, r4
	vextracti.f r4, 13(vr7)
	mul.f.rn r7, r8, r6
	add.f.rn r1, r4, r1
	mul.f.rn r3, r9, r3
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
	loadli.w r3,  -212(r30)                 # 4-byte Folded Reload
	stores.w r2, 0(r3)
	loadli.w r2,  -232(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	loadli.w r14,  -208(r30)                # 4-byte Folded Reload
	csr_set csr3, r14
	sync_group
	loadli.w r1,  -268(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_3
# %bb.75:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r6,  -276(r30)                 # 4-byte Folded Reload
	addli r17, zero, 0
	loads.w r2, 0(r6)
	loads.w r1, 4(r6)
	add.f.rn r7, r2, r1
	storeli.w r2, -404(r30)                 # 4-byte Folded Spill
	slli r2, r7, 9
	setle.f r4, r17, r7
	setle.f r5, r7, r17
	srli r3, r7, 23
	seteq r2, r2, r17
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r17, 0
	bneq r2, zero, .LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r7
.LBB0_77:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 8(r6)
	storeli.w r3, -424(r30)                 # 4-byte Folded Spill
	add.f.rn r9, r7, r1
	slli r2, r9, 9
	setle.f r4, r17, r9
	setle.f r5, r9, r17
	srli r3, r9, 23
	seteq r2, r2, r17
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r17, 0
	bneq r2, zero, .LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r9
.LBB0_79:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 12(r6)
	storeli.w r3, -440(r30)                 # 4-byte Folded Spill
	add.f.rn r10, r9, r1
	slli r2, r10, 9
	setle.f r4, r17, r10
	setle.f r5, r10, r17
	srli r3, r10, 23
	seteq r2, r2, r17
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r17, 0
	bneq r2, zero, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r10
.LBB0_81:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 16(r6)
	storeli.w r3, -452(r30)                 # 4-byte Folded Spill
	add.f.rn r11, r10, r1
	slli r2, r11, 9
	setle.f r4, r17, r11
	setle.f r5, r11, r17
	srli r3, r11, 23
	seteq r2, r2, r17
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r17, 0
	bneq r2, zero, .LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r11
.LBB0_83:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 20(r6)
	storeli.w r3, -468(r30)                 # 4-byte Folded Spill
	add.f.rn r12, r11, r1
	slli r2, r12, 9
	setle.f r4, r17, r12
	setle.f r5, r12, r17
	srli r3, r12, 23
	seteq r2, r2, r17
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r17, 0
	bneq r2, zero, .LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r12
.LBB0_85:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 24(r6)
	storeli.w r3, -484(r30)                 # 4-byte Folded Spill
	add.f.rn r13, r12, r1
	slli r2, r13, 9
	setle.f r4, r17, r13
	setle.f r5, r13, r17
	srli r3, r13, 23
	seteq r2, r2, r17
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r17, 0
	bneq r2, zero, .LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r13
.LBB0_87:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 28(r6)
	storeli.w r3, -500(r30)                 # 4-byte Folded Spill
	add.f.rn r14, r13, r1
	slli r2, r14, 9
	setle.f r4, r17, r14
	setle.f r5, r14, r17
	srli r3, r14, 23
	seteq r2, r2, r17
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r17, 0
	bneq r2, zero, .LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r14
.LBB0_89:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 32(r6)
	storeli.w r3, -520(r30)                 # 4-byte Folded Spill
	add.f.rn r15, r14, r1
	slli r2, r15, 9
	setle.f r4, r17, r15
	setle.f r5, r15, r17
	srli r3, r15, 23
	seteq r2, r2, r17
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r17, 0
	bneq r2, zero, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r15
.LBB0_91:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 36(r6)
	storeli.w r3, -536(r30)                 # 4-byte Folded Spill
	add.f.rn r16, r15, r1
	slli r2, r16, 9
	setle.f r4, r17, r16
	setle.f r5, r16, r17
	srli r3, r16, 23
	seteq r2, r2, r17
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r17, 0
	bneq r2, zero, .LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r16
.LBB0_93:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 40(r6)
	storeli.w r7, -392(r30)                 # 4-byte Folded Spill
	storeli.w r3, -148(r30)                 # 4-byte Folded Spill
	storeli.w r15, -504(r30)                # 4-byte Folded Spill
	storeli.w r14, -488(r30)                # 4-byte Folded Spill
	storeli.w r13, -480(r30)                # 4-byte Folded Spill
	storeli.w r12, -464(r30)                # 4-byte Folded Spill
	storeli.w r11, -444(r30)                # 4-byte Folded Spill
	storeli.w r10, -428(r30)                # 4-byte Folded Spill
	storeli.w r9, -408(r30)                 # 4-byte Folded Spill
	storeli.w r16, -524(r30)                # 4-byte Folded Spill
	add.f.rn r7, r16, r1
	slli r2, r7, 9
	setle.f r4, r17, r7
	setle.f r5, r7, r17
	srli r3, r7, 23
	seteq r2, r2, r17
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r17, 0
	bneq r2, zero, .LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r7
.LBB0_95:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r2,  -200(r30)                 # 4-byte Folded Reload
	loads.w r26, 44(r6)
	storeli.w r3, -152(r30)                 # 4-byte Folded Spill
	loads.w r5, 128(r6)
	loads.w r9, 208(r6)
	storeli.w r7, -540(r30)                 # 4-byte Folded Spill
	loads.w r22, 48(r6)
	loads.w r21, 52(r6)
	loads.w r20, 56(r6)
	loads.w r19, 60(r6)
	loads.w r16, 64(r6)
	loads.w r15, 68(r6)
	loads.w r12, 76(r6)
	loads.w r25, 80(r6)
	loads.w r23, 84(r6)
	loads.w r28, 88(r6)
	loads.w r14, 96(r6)
	loads.w r11, 104(r6)
	loads.w r13, 140(r6)
	loads.w r10, 168(r6)
	loads.w r1, 0(r2)
	loads.w r3, 96(r2)
	add.f.rn r4, r7, r26
	storeli.w r5, -976(r30)                 # 4-byte Folded Spill
	loads.w r5, 132(r6)
	storeli.w r9, -984(r30)                 # 4-byte Folded Spill
	loads.w r9, 212(r6)
	loads.w r7, 176(r6)
	storeli.w r1, -760(r30)                 # 4-byte Folded Spill
	loads.w r1, 4(r2)
	storeli.w r3, -732(r30)                 # 4-byte Folded Spill
	loads.w r3, 92(r6)
	setle.f r24, r17, r4
	setle.f r27, r4, r17
	storeli.w r5, -1000(r30)                # 4-byte Folded Spill
	loads.w r5, 136(r6)
	storeli.w r9, -960(r30)                 # 4-byte Folded Spill
	loads.w r9, 216(r6)
	storeli.w r1, -764(r30)                 # 4-byte Folded Spill
	loads.w r1, 8(r2)
	storeli.w r5, -1016(r30)                # 4-byte Folded Spill
	loads.w r5, 144(r6)
	storeli.w r9, -952(r30)                 # 4-byte Folded Spill
	loads.w r9, 220(r6)
	storeli.w r1, -756(r30)                 # 4-byte Folded Spill
	loads.w r1, 12(r2)
	storeli.w r5, -1032(r30)                # 4-byte Folded Spill
	loads.w r5, 148(r6)
	storeli.w r9, -948(r30)                 # 4-byte Folded Spill
	loads.w r9, 224(r6)
	storeli.w r1, -744(r30)                 # 4-byte Folded Spill
	loads.w r1, 16(r2)
	storeli.w r5, -1040(r30)                # 4-byte Folded Spill
	loads.w r5, 152(r6)
	storeli.w r9, -944(r30)                 # 4-byte Folded Spill
	loads.w r9, 228(r6)
	storeli.w r1, -736(r30)                 # 4-byte Folded Spill
	loads.w r1, 20(r2)
	storeli.w r5, -1028(r30)                # 4-byte Folded Spill
	loads.w r5, 156(r6)
	storeli.w r9, -940(r30)                 # 4-byte Folded Spill
	loads.w r9, 232(r6)
	storeli.w r1, -728(r30)                 # 4-byte Folded Spill
	loads.w r1, 24(r2)
	storeli.w r5, -1036(r30)                # 4-byte Folded Spill
	loads.w r5, 160(r6)
	storeli.w r9, -936(r30)                 # 4-byte Folded Spill
	loads.w r9, 236(r6)
	storeli.w r1, -720(r30)                 # 4-byte Folded Spill
	loads.w r1, 28(r2)
	storeli.w r5, -1044(r30)                # 4-byte Folded Spill
	loads.w r5, 164(r6)
	storeli.w r9, -908(r30)                 # 4-byte Folded Spill
	loads.w r9, 240(r6)
	storeli.w r1, -708(r30)                 # 4-byte Folded Spill
	loads.w r1, 32(r2)
	storeli.w r5, -1052(r30)                # 4-byte Folded Spill
	loads.w r5, 172(r6)
	storeli.w r9, -900(r30)                 # 4-byte Folded Spill
	loads.w r9, 244(r6)
	storeli.w r1, -700(r30)                 # 4-byte Folded Spill
	loads.w r1, 36(r2)
	storeli.w r5, -1068(r30)                # 4-byte Folded Spill
	loads.w r5, 180(r6)
	storeli.w r9, -876(r30)                 # 4-byte Folded Spill
	loads.w r9, 248(r6)
	storeli.w r1, -848(r30)                 # 4-byte Folded Spill
	loads.w r1, 40(r2)
	storeli.w r5, -1084(r30)                # 4-byte Folded Spill
	loads.w r5, 184(r6)
	storeli.w r9, -868(r30)                 # 4-byte Folded Spill
	srli r9, r4, 23
	andi r9, r9, 255
	storeli.w r1, -840(r30)                 # 4-byte Folded Spill
	loads.w r1, 44(r2)
	setlti r9, r9, 255
	storeli.w r5, -1096(r30)                # 4-byte Folded Spill
	loads.w r5, 188(r6)
	storeli.w r1, -836(r30)                 # 4-byte Folded Spill
	loads.w r1, 48(r2)
	storeli.w r5, -1020(r30)                # 4-byte Folded Spill
	loads.w r5, 192(r6)
	storeli.w r1, -824(r30)                 # 4-byte Folded Spill
	loads.w r1, 52(r2)
	storeli.w r5, -1012(r30)                # 4-byte Folded Spill
	loads.w r5, 196(r6)
	storeli.w r1, -816(r30)                 # 4-byte Folded Spill
	loads.w r1, 56(r2)
	storeli.w r5, -1004(r30)                # 4-byte Folded Spill
	loads.w r5, 200(r6)
	storeli.w r1, -808(r30)                 # 4-byte Folded Spill
	loads.w r1, 60(r2)
	storeli.w r5, -992(r30)                 # 4-byte Folded Spill
	loads.w r5, 204(r6)
	storeli.w r1, -800(r30)                 # 4-byte Folded Spill
	loads.w r1, 64(r2)
	storeli.w r1, -792(r30)                 # 4-byte Folded Spill
	loads.w r1, 68(r2)
	storeli.w r1, -780(r30)                 # 4-byte Folded Spill
	loads.w r1, 72(r2)
	storeli.w r1, -768(r30)                 # 4-byte Folded Spill
	loads.w r1, 76(r2)
	storeli.w r1, -820(r30)                 # 4-byte Folded Spill
	loads.w r1, 80(r2)
	storeli.w r1, -804(r30)                 # 4-byte Folded Spill
	loads.w r1, 84(r2)
	storeli.w r1, -788(r30)                 # 4-byte Folded Spill
	loads.w r1, 88(r2)
	storeli.w r1, -772(r30)                 # 4-byte Folded Spill
	loads.w r1, 92(r2)
	storeli.w r1, -748(r30)                 # 4-byte Folded Spill
	slli r1, r4, 9
	seteq r18, r1, r17
	loads.w r1, 100(r2)
	or r9, r9, r18
	and r18, r27, r24
	and r9, r18, r9
	storeli.w r1, -712(r30)                 # 4-byte Folded Spill
	loads.w r1, 104(r2)
	storeli.w r1, -696(r30)                 # 4-byte Folded Spill
	loads.w r1, 108(r2)
	storeli.w r1, -680(r30)                 # 4-byte Folded Spill
	loads.w r1, 112(r2)
	storeli.w r1, -672(r30)                 # 4-byte Folded Spill
	loads.w r1, 116(r2)
	storeli.w r1, -664(r30)                 # 4-byte Folded Spill
	loads.w r1, 120(r2)
	storeli.w r1, -652(r30)                 # 4-byte Folded Spill
	loads.w r1, 124(r2)
	storeli.w r1, -644(r30)                 # 4-byte Folded Spill
	loads.w r1, 128(r2)
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	loads.w r1, 132(r2)
	storeli.w r1, -624(r30)                 # 4-byte Folded Spill
	loads.w r1, 136(r2)
	storeli.w r1, -616(r30)                 # 4-byte Folded Spill
	loads.w r1, 140(r2)
	storeli.w r1, -608(r30)                 # 4-byte Folded Spill
	loads.w r1, 144(r2)
	storeli.w r1, -596(r30)                 # 4-byte Folded Spill
	loads.w r1, 148(r2)
	storeli.w r1, -588(r30)                 # 4-byte Folded Spill
	loads.w r1, 152(r2)
	storeli.w r1, -576(r30)                 # 4-byte Folded Spill
	loads.w r1, 156(r2)
	storeli.w r1, -568(r30)                 # 4-byte Folded Spill
	loads.w r1, 160(r2)
	storeli.w r1, -556(r30)                 # 4-byte Folded Spill
	loads.w r1, 164(r2)
	storeli.w r1, -548(r30)                 # 4-byte Folded Spill
	loads.w r1, 168(r2)
	storeli.w r1, -532(r30)                 # 4-byte Folded Spill
	loads.w r1, 172(r2)
	storeli.w r1, -512(r30)                 # 4-byte Folded Spill
	loads.w r1, 176(r2)
	storeli.w r1, -496(r30)                 # 4-byte Folded Spill
	loads.w r1, 180(r2)
	storeli.w r1, -472(r30)                 # 4-byte Folded Spill
	loads.w r1, 184(r2)
	storeli.w r1, -456(r30)                 # 4-byte Folded Spill
	loads.w r1, 188(r2)
	storeli.w r1, -436(r30)                 # 4-byte Folded Spill
	loads.w r1, 192(r2)
	storeli.w r1, -416(r30)                 # 4-byte Folded Spill
	loads.w r1, 196(r2)
	storeli.w r1, -400(r30)                 # 4-byte Folded Spill
	loads.w r1, 200(r2)
	storeli.w r1, -384(r30)                 # 4-byte Folded Spill
	loads.w r1, 204(r2)
	storeli.w r1, -376(r30)                 # 4-byte Folded Spill
	loads.w r1, 208(r2)
	storeli.w r1, -364(r30)                 # 4-byte Folded Spill
	loads.w r1, 212(r2)
	storeli.w r1, -356(r30)                 # 4-byte Folded Spill
	loads.w r1, 216(r2)
	storeli.w r1, -348(r30)                 # 4-byte Folded Spill
	loads.w r1, 220(r2)
	storeli.w r1, -336(r30)                 # 4-byte Folded Spill
	loads.w r1, 224(r2)
	storeli.w r1, -328(r30)                 # 4-byte Folded Spill
	loads.w r1, 228(r2)
	storeli.w r1, -316(r30)                 # 4-byte Folded Spill
	loads.w r1, 232(r2)
	storeli.w r1, -308(r30)                 # 4-byte Folded Spill
	loads.w r1, 236(r2)
	storeli.w r1, -296(r30)                 # 4-byte Folded Spill
	loads.w r1, 240(r2)
	storeli.w r1, -292(r30)                 # 4-byte Folded Spill
	loads.w r1, 244(r2)
	storeli.w r1, -288(r30)                 # 4-byte Folded Spill
	loads.w r1, 248(r2)
	storeli.w r1, -284(r30)                 # 4-byte Folded Spill
	loads.w r1, 252(r2)
	storeli.w r1, -280(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -204(r30)                 # 4-byte Folded Reload
	loads.w r2, 0(r1)
	storeli.w r2, -924(r30)                 # 4-byte Folded Spill
	loads.w r2, 4(r1)
	storeli.w r2, -932(r30)                 # 4-byte Folded Spill
	loads.w r2, 8(r1)
	storeli.w r2, -860(r30)                 # 4-byte Folded Spill
	loads.w r2, 12(r1)
	storeli.w r2, -856(r30)                 # 4-byte Folded Spill
	loads.w r2, 16(r1)
	storeli.w r2, -852(r30)                 # 4-byte Folded Spill
	loads.w r2, 20(r1)
	storeli.w r2, -844(r30)                 # 4-byte Folded Spill
	loads.w r2, 24(r1)
	storeli.w r2, -832(r30)                 # 4-byte Folded Spill
	loads.w r2, 28(r1)
	storeli.w r2, -828(r30)                 # 4-byte Folded Spill
	loads.w r2, 32(r1)
	storeli.w r2, -812(r30)                 # 4-byte Folded Spill
	loads.w r2, 36(r1)
	storeli.w r2, -796(r30)                 # 4-byte Folded Spill
	loads.w r2, 40(r1)
	storeli.w r2, -784(r30)                 # 4-byte Folded Spill
	loads.w r2, 44(r1)
	storeli.w r2, -776(r30)                 # 4-byte Folded Spill
	loads.w r2, 48(r1)
	storeli.w r2, -752(r30)                 # 4-byte Folded Spill
	loads.w r2, 52(r1)
	storeli.w r2, -740(r30)                 # 4-byte Folded Spill
	loads.w r2, 56(r1)
	storeli.w r2, -724(r30)                 # 4-byte Folded Spill
	loads.w r2, 60(r1)
	storeli.w r2, -716(r30)                 # 4-byte Folded Spill
	loads.w r2, 64(r1)
	storeli.w r2, -704(r30)                 # 4-byte Folded Spill
	loads.w r2, 68(r1)
	storeli.w r2, -692(r30)                 # 4-byte Folded Spill
	loads.w r2, 72(r1)
	storeli.w r2, -688(r30)                 # 4-byte Folded Spill
	loads.w r2, 76(r1)
	storeli.w r2, -676(r30)                 # 4-byte Folded Spill
	loads.w r2, 80(r1)
	storeli.w r2, -668(r30)                 # 4-byte Folded Spill
	loads.w r2, 84(r1)
	storeli.w r2, -660(r30)                 # 4-byte Folded Spill
	loads.w r2, 88(r1)
	storeli.w r2, -656(r30)                 # 4-byte Folded Spill
	loads.w r2, 92(r1)
	storeli.w r2, -648(r30)                 # 4-byte Folded Spill
	loads.w r2, 96(r1)
	storeli.w r2, -640(r30)                 # 4-byte Folded Spill
	loads.w r2, 100(r1)
	storeli.w r2, -632(r30)                 # 4-byte Folded Spill
	loads.w r2, 104(r1)
	storeli.w r2, -628(r30)                 # 4-byte Folded Spill
	loads.w r2, 108(r1)
	storeli.w r2, -620(r30)                 # 4-byte Folded Spill
	loads.w r2, 112(r1)
	storeli.w r2, -612(r30)                 # 4-byte Folded Spill
	loads.w r2, 116(r1)
	storeli.w r2, -604(r30)                 # 4-byte Folded Spill
	loads.w r2, 120(r1)
	storeli.w r2, -600(r30)                 # 4-byte Folded Spill
	loads.w r2, 124(r1)
	storeli.w r2, -592(r30)                 # 4-byte Folded Spill
	loads.w r2, 128(r1)
	storeli.w r2, -584(r30)                 # 4-byte Folded Spill
	loads.w r2, 132(r1)
	storeli.w r2, -580(r30)                 # 4-byte Folded Spill
	loads.w r2, 136(r1)
	storeli.w r2, -572(r30)                 # 4-byte Folded Spill
	loads.w r2, 140(r1)
	storeli.w r2, -564(r30)                 # 4-byte Folded Spill
	loads.w r2, 144(r1)
	storeli.w r2, -560(r30)                 # 4-byte Folded Spill
	loads.w r2, 148(r1)
	storeli.w r2, -552(r30)                 # 4-byte Folded Spill
	loads.w r2, 152(r1)
	storeli.w r2, -544(r30)                 # 4-byte Folded Spill
	loads.w r2, 156(r1)
	storeli.w r2, -528(r30)                 # 4-byte Folded Spill
	loads.w r2, 160(r1)
	storeli.w r2, -516(r30)                 # 4-byte Folded Spill
	loads.w r2, 164(r1)
	storeli.w r2, -508(r30)                 # 4-byte Folded Spill
	loads.w r2, 168(r1)
	storeli.w r2, -492(r30)                 # 4-byte Folded Spill
	loads.w r2, 172(r1)
	storeli.w r2, -476(r30)                 # 4-byte Folded Spill
	loads.w r2, 176(r1)
	storeli.w r2, -460(r30)                 # 4-byte Folded Spill
	loads.w r2, 180(r1)
	storeli.w r2, -448(r30)                 # 4-byte Folded Spill
	loads.w r2, 184(r1)
	storeli.w r2, -432(r30)                 # 4-byte Folded Spill
	loads.w r2, 188(r1)
	storeli.w r2, -420(r30)                 # 4-byte Folded Spill
	loads.w r2, 192(r1)
	storeli.w r2, -412(r30)                 # 4-byte Folded Spill
	loads.w r2, 196(r1)
	storeli.w r2, -396(r30)                 # 4-byte Folded Spill
	loads.w r2, 200(r1)
	storeli.w r2, -388(r30)                 # 4-byte Folded Spill
	loads.w r2, 204(r1)
	storeli.w r2, -380(r30)                 # 4-byte Folded Spill
	loads.w r2, 208(r1)
	storeli.w r2, -372(r30)                 # 4-byte Folded Spill
	loads.w r2, 212(r1)
	storeli.w r2, -368(r30)                 # 4-byte Folded Spill
	loads.w r2, 216(r1)
	storeli.w r2, -360(r30)                 # 4-byte Folded Spill
	loads.w r2, 220(r1)
	storeli.w r2, -352(r30)                 # 4-byte Folded Spill
	loads.w r2, 224(r1)
	storeli.w r2, -344(r30)                 # 4-byte Folded Spill
	loads.w r2, 228(r1)
	storeli.w r2, -340(r30)                 # 4-byte Folded Spill
	loads.w r2, 232(r1)
	storeli.w r2, -332(r30)                 # 4-byte Folded Spill
	loads.w r2, 236(r1)
	storeli.w r2, -324(r30)                 # 4-byte Folded Spill
	loads.w r2, 240(r1)
	storeli.w r2, -320(r30)                 # 4-byte Folded Spill
	loads.w r2, 244(r1)
	storeli.w r2, -312(r30)                 # 4-byte Folded Spill
	loads.w r2, 248(r1)
	loads.w r1, 252(r1)
	storeli.w r1, -300(r30)                 # 4-byte Folded Spill
	loads.w r1, 100(r6)
	storeli.w r2, -304(r30)                 # 4-byte Folded Spill
	loads.w r2, 72(r6)
	storeli.w r1, -216(r30)                 # 4-byte Folded Spill
	loads.w r1, 108(r6)
	storeli.w r1, -956(r30)                 # 4-byte Folded Spill
	loads.w r1, 112(r6)
	storeli.w r1, -964(r30)                 # 4-byte Folded Spill
	loads.w r1, 116(r6)
	storeli.w r1, -928(r30)                 # 4-byte Folded Spill
	loads.w r1, 120(r6)
	storeli.w r1, -864(r30)                 # 4-byte Folded Spill
	loads.w r1, 124(r6)
	loads.w r6, 252(r6)
	storeli.w r6, -1008(r30)                # 4-byte Folded Spill
	addli r6, r4, 0
	addli r4, r17, 0
	bneq r9, zero, .LBB0_97
# %bb.96:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r4, r26, r6
.LBB0_97:                               #   in Loop: Header=BB0_5 Depth=1
	storeli.w r4, -156(r30)                 # 4-byte Folded Spill
	add.f.rn r4, r6, r22
	slli r9, r4, 9
	setle.f r24, r17, r4
	setle.f r26, r4, r17
	srli r18, r4, 23
	seteq r9, r9, r17
	andi r18, r18, 255
	setlti r18, r18, 255
	or r9, r18, r9
	and r18, r26, r24
	and r9, r18, r9
	addli r18, r17, 0
	bneq r9, zero, .LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r18, r22, r4
.LBB0_99:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r26, r4, r21
	storeli.w r18, -160(r30)                # 4-byte Folded Spill
	addli r27, r1, 0
	storeli.w r13, -1024(r30)               # 4-byte Folded Spill
	slli r9, r26, 9
	setle.f r22, r17, r26
	setle.f r24, r26, r17
	srli r18, r26, 23
	seteq r9, r9, r17
	andi r18, r18, 255
	setlti r18, r18, 255
	or r9, r18, r9
	and r18, r24, r22
	and r9, r18, r9
	addli r18, r17, 0
	bneq r9, zero, .LBB0_101
# %bb.100:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r18, r21, r26
.LBB0_101:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r24, r26, r20
	storeli.w r18, -164(r30)                # 4-byte Folded Spill
	addli r13, r11, 0
	slli r9, r24, 9
	setle.f r21, r17, r24
	setle.f r22, r24, r17
	srli r18, r24, 23
	seteq r9, r9, r17
	andi r18, r18, 255
	setlti r18, r18, 255
	or r9, r18, r9
	and r18, r22, r21
	and r9, r18, r9
	addli r18, r17, 0
	bneq r9, zero, .LBB0_103
# %bb.102:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r18, r20, r24
.LBB0_103:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r22, r24, r19
	storeli.w r18, -168(r30)                # 4-byte Folded Spill
	slli r9, r22, 9
	setle.f r20, r17, r22
	setle.f r21, r22, r17
	srli r18, r22, 23
	seteq r9, r9, r17
	andi r18, r18, 255
	setlti r18, r18, 255
	or r9, r18, r9
	and r18, r21, r20
	and r9, r18, r9
	addli r18, r17, 0
	bneq r9, zero, .LBB0_105
# %bb.104:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r18, r19, r22
.LBB0_105:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r21, r22, r16
	storeli.w r18, -172(r30)                # 4-byte Folded Spill
	slli r9, r21, 9
	setle.f r19, r17, r21
	setle.f r20, r21, r17
	srli r18, r21, 23
	seteq r9, r9, r17
	andi r18, r18, 255
	setlti r18, r18, 255
	or r9, r18, r9
	and r18, r20, r19
	and r9, r18, r9
	addli r18, r17, 0
	bneq r9, zero, .LBB0_107
# %bb.106:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r18, r16, r21
.LBB0_107:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r20, r21, r15
	storeli.w r18, -176(r30)                # 4-byte Folded Spill
	slli r9, r20, 9
	setle.f r18, r17, r20
	setle.f r19, r20, r17
	srli r16, r20, 23
	seteq r9, r9, r17
	andi r16, r16, 255
	setlti r16, r16, 255
	or r9, r16, r9
	and r16, r19, r18
	and r9, r16, r9
	addli r16, r17, 0
	bneq r9, zero, .LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r16, r15, r20
.LBB0_109:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r19, r20, r2
	storeli.w r16, -896(r30)                # 4-byte Folded Spill
	slli r9, r19, 9
	setle.f r16, r17, r19
	setle.f r18, r19, r17
	srli r15, r19, 23
	seteq r9, r9, r17
	andi r15, r15, 255
	setlti r15, r15, 255
	or r9, r15, r9
	and r15, r18, r16
	and r9, r15, r9
	addli r15, r17, 0
	bneq r9, zero, .LBB0_111
# %bb.110:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r15, r2, r19
.LBB0_111:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r18, r19, r12
	storeli.w r15, -180(r30)                # 4-byte Folded Spill
	slli r2, r18, 9
	setle.f r15, r17, r18
	setle.f r16, r18, r17
	srli r9, r18, 23
	seteq r2, r2, r17
	andi r9, r9, 255
	setlti r9, r9, 255
	or r2, r9, r2
	and r9, r16, r15
	and r2, r9, r2
	addli r9, r17, 0
	bneq r2, zero, .LBB0_113
# %bb.112:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r9, r12, r18
.LBB0_113:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r16, r18, r25
	storeli.w r9, -184(r30)                 # 4-byte Folded Spill
	storeli.w r24, -872(r30)                # 4-byte Folded Spill
	slli r2, r16, 9
	setle.f r12, r17, r16
	setle.f r15, r16, r17
	srli r9, r16, 23
	seteq r2, r2, r17
	andi r9, r9, 255
	setlti r9, r9, 255
	or r2, r9, r2
	and r9, r15, r12
	and r2, r9, r2
	addli r9, r17, 0
	bneq r2, zero, .LBB0_115
# %bb.114:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r9, r25, r16
.LBB0_115:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r24, r16, r23
	storeli.w r9, -912(r30)                 # 4-byte Folded Spill
	slli r2, r24, 9
	setle.f r12, r17, r24
	setle.f r15, r24, r17
	srli r9, r24, 23
	seteq r2, r2, r17
	andi r9, r9, 255
	setlti r9, r9, 255
	or r2, r9, r2
	and r9, r15, r12
	and r2, r9, r2
	addli r9, r17, 0
	bneq r2, zero, .LBB0_117
# %bb.116:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r9, r23, r24
.LBB0_117:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r23, r24, r28
	storeli.w r9, -920(r30)                 # 4-byte Folded Spill
	addli r25, r5, 0
	storeli.w r7, -1076(r30)                # 4-byte Folded Spill
	storeli.w r10, -1060(r30)               # 4-byte Folded Spill
	slli r2, r23, 9
	setle.f r12, r17, r23
	setle.f r15, r23, r17
	srli r9, r23, 23
	seteq r2, r2, r17
	andi r9, r9, 255
	setlti r9, r9, 255
	or r2, r9, r2
	and r9, r15, r12
	and r2, r9, r2
	addli r9, r17, 0
	bneq r2, zero, .LBB0_119
# %bb.118:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r9, r28, r23
.LBB0_119:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r6, -684(r30)                 # 4-byte Folded Spill
	add.f.rn r6, r23, r3
	storeli.w r9, -188(r30)                 # 4-byte Folded Spill
	loadli.w r5,  -864(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -928(r30)                 # 4-byte Folded Reload
	loadli.w r10,  -964(r30)                # 4-byte Folded Reload
	loadli.w r11,  -956(r30)                # 4-byte Folded Reload
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	slli r2, r6, 9
	setle.f r12, r17, r6
	setle.f r15, r6, r17
	srli r9, r6, 23
	seteq r2, r2, r17
	andi r9, r9, 255
	setlti r9, r9, 255
	or r2, r9, r2
	and r9, r15, r12
	and r2, r9, r2
	addli r9, r17, 0
	bneq r2, zero, .LBB0_121
# %bb.120:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r9, r3, r6
.LBB0_121:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r3, r6, r14
	storeli.w r9, -192(r30)                 # 4-byte Folded Spill
	storeli.w r6, -916(r30)                 # 4-byte Folded Spill
	loadli.w r28,  -1032(r30)               # 4-byte Folded Reload
	slli r2, r3, 9
	setle.f r9, r17, r3
	setle.f r12, r3, r17
	srli r6, r3, 23
	seteq r2, r2, r17
	andi r6, r6, 255
	setlti r6, r6, 255
	or r2, r6, r2
	and r6, r12, r9
	and r2, r6, r2
	addli r6, r17, 0
	bneq r2, zero, .LBB0_123
# %bb.122:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r6, r14, r3
.LBB0_123:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r14, r3, r1
	storeli.w r6, -196(r30)                 # 4-byte Folded Spill
	slli r2, r14, 9
	setle.f r9, r17, r14
	setle.f r12, r14, r17
	srli r6, r14, 23
	seteq r2, r2, r17
	andi r6, r6, 255
	setlti r6, r6, 255
	or r2, r6, r2
	and r6, r12, r9
	and r2, r6, r2
	addli r6, r17, 0
	bneq r2, zero, .LBB0_125
# %bb.124:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r6, r1, r14
.LBB0_125:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r15, r14, r13
	storeli.w r6, -216(r30)                 # 4-byte Folded Spill
	loadli.w r12,  -1040(r30)               # 4-byte Folded Reload
	slli r1, r15, 9
	setle.f r6, r17, r15
	setle.f r9, r15, r17
	srli r2, r15, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r9, r6
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_127
# %bb.126:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r13, r15
.LBB0_127:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r13, r15, r11
	storeli.w r2, -220(r30)                 # 4-byte Folded Spill
	slli r1, r13, 9
	setle.f r6, r17, r13
	setle.f r9, r13, r17
	srli r2, r13, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r9, r6
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_129
# %bb.128:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r11, r13
.LBB0_129:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r11, r13, r10
	storeli.w r2, -956(r30)                 # 4-byte Folded Spill
	slli r1, r11, 9
	setle.f r6, r17, r11
	setle.f r9, r11, r17
	srli r2, r11, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r9, r6
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r10, r11
.LBB0_131:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r10, r11, r7
	storeli.w r2, -964(r30)                 # 4-byte Folded Spill
	slli r1, r10, 9
	setle.f r6, r17, r10
	setle.f r9, r10, r17
	srli r2, r10, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r9, r6
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_133
# %bb.132:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r7, r10
.LBB0_133:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r9, r10, r5
	storeli.w r2, -968(r30)                 # 4-byte Folded Spill
	slli r1, r9, 9
	setle.f r6, r17, r9
	setle.f r7, r9, r17
	srli r2, r9, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r7, r6
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_135
# %bb.134:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r5, r9
.LBB0_135:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r4, -864(r30)                 # 4-byte Folded Spill
	add.f.rn r4, r9, r27
	storeli.w r2, -980(r30)                 # 4-byte Folded Spill
	loadli.w r7,  -1016(r30)                # 4-byte Folded Reload
	slli r1, r4, 9
	setle.f r5, r17, r4
	setle.f r6, r4, r17
	srli r2, r4, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r6, r5
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r27, r4
.LBB0_137:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r27,  -976(r30)                # 4-byte Folded Reload
	storeli.w r3, -928(r30)                 # 4-byte Folded Spill
	storeli.w r4, -972(r30)                 # 4-byte Folded Spill
	storeli.w r2, -988(r30)                 # 4-byte Folded Spill
	loadli.w r6,  -1000(r30)                # 4-byte Folded Reload
	add.f.rn r3, r4, r27
	slli r1, r3, 9
	setle.f r4, r17, r3
	setle.f r5, r3, r17
	srli r2, r3, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r5, r4
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_139
# %bb.138:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r27, r3
.LBB0_139:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r5, r3, r6
	storeli.w r3, -976(r30)                 # 4-byte Folded Spill
	storeli.w r2, -996(r30)                 # 4-byte Folded Spill
	slli r1, r5, 9
	setle.f r3, r17, r5
	setle.f r4, r5, r17
	srli r2, r5, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_141
# %bb.140:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r6, r5
.LBB0_141:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r6, r5, r7
	storeli.w r2, -1000(r30)                # 4-byte Folded Spill
	loadli.w r27,  -1024(r30)               # 4-byte Folded Reload
	slli r1, r6, 9
	setle.f r3, r17, r6
	setle.f r4, r6, r17
	srli r2, r6, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_143
# %bb.142:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r7, r6
.LBB0_143:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r7, r6, r27
	storeli.w r2, -1016(r30)                # 4-byte Folded Spill
	slli r1, r7, 9
	setle.f r3, r17, r7
	setle.f r4, r7, r17
	srli r2, r7, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_145
# %bb.144:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r27, r7
.LBB0_145:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r27, r7, r28
	storeli.w r2, -1024(r30)                # 4-byte Folded Spill
	slli r1, r27, 9
	setle.f r3, r17, r27
	setle.f r4, r27, r17
	srli r2, r27, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_147
# %bb.146:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r28, r27
.LBB0_147:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r28, r27, r12
	storeli.w r2, -1032(r30)                # 4-byte Folded Spill
	slli r1, r28, 9
	setle.f r3, r17, r28
	setle.f r4, r28, r17
	srli r2, r28, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_149
# %bb.148:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r12, r28
.LBB0_149:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r25, -1132(r30)               # 4-byte Folded Spill
	loadli.w r25,  -1028(r30)               # 4-byte Folded Reload
	storeli.w r2, -1040(r30)                # 4-byte Folded Spill
	add.f.rn r12, r28, r25
	slli r1, r12, 9
	setle.f r3, r17, r12
	setle.f r4, r12, r17
	srli r2, r12, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_151
# %bb.150:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r25, r12
.LBB0_151:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r25,  -1036(r30)               # 4-byte Folded Reload
	storeli.w r12, -1028(r30)               # 4-byte Folded Spill
	storeli.w r3, -1048(r30)                # 4-byte Folded Spill
	add.f.rn r12, r12, r25
	slli r1, r12, 9
	setle.f r3, r17, r12
	setle.f r4, r12, r17
	srli r2, r12, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	addli r2, r12, 0
	bneq r1, zero, .LBB0_153
# %bb.152:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r25, r2
.LBB0_153:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r25,  -1044(r30)               # 4-byte Folded Reload
	storeli.w r3, -1056(r30)                # 4-byte Folded Spill
	storeli.w r2, -1036(r30)                # 4-byte Folded Spill
	add.f.rn r12, r2, r25
	slli r1, r12, 9
	setle.f r3, r17, r12
	setle.f r4, r12, r17
	srli r2, r12, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_155
# %bb.154:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r25, r12
.LBB0_155:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r25,  -1052(r30)               # 4-byte Folded Reload
	storeli.w r12, -1044(r30)               # 4-byte Folded Spill
	storeli.w r3, -1064(r30)                # 4-byte Folded Spill
	add.f.rn r12, r12, r25
	slli r1, r12, 9
	setle.f r3, r17, r12
	setle.f r4, r12, r17
	srli r2, r12, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	addli r2, r12, 0
	bneq r1, zero, .LBB0_157
# %bb.156:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r25, r2
.LBB0_157:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r25,  -1060(r30)               # 4-byte Folded Reload
	storeli.w r3, -1072(r30)                # 4-byte Folded Spill
	storeli.w r2, -1052(r30)                # 4-byte Folded Spill
	add.f.rn r12, r2, r25
	slli r1, r12, 9
	setle.f r3, r17, r12
	setle.f r4, r12, r17
	srli r2, r12, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_159
# %bb.158:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r25, r12
.LBB0_159:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r25,  -1068(r30)               # 4-byte Folded Reload
	storeli.w r12, -1060(r30)               # 4-byte Folded Spill
	storeli.w r3, -1080(r30)                # 4-byte Folded Spill
	add.f.rn r12, r12, r25
	slli r1, r12, 9
	setle.f r3, r17, r12
	setle.f r4, r12, r17
	srli r2, r12, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	addli r2, r12, 0
	bneq r1, zero, .LBB0_161
# %bb.160:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r25, r2
.LBB0_161:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r25,  -1076(r30)               # 4-byte Folded Reload
	storeli.w r3, -1088(r30)                # 4-byte Folded Spill
	storeli.w r2, -1068(r30)                # 4-byte Folded Spill
	add.f.rn r12, r2, r25
	slli r1, r12, 9
	setle.f r3, r17, r12
	setle.f r4, r12, r17
	srli r2, r12, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_163
# %bb.162:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r25, r12
.LBB0_163:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r20, -884(r30)                # 4-byte Folded Spill
	loadli.w r20,  -1084(r30)               # 4-byte Folded Reload
	storeli.w r12, -1076(r30)               # 4-byte Folded Spill
	storeli.w r3, -1092(r30)                # 4-byte Folded Spill
	add.f.rn r12, r12, r20
	slli r1, r12, 9
	setle.f r3, r17, r12
	setle.f r4, r12, r17
	srli r2, r12, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	addli r2, r12, 0
	loadli.w r12,  -936(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_165
# %bb.164:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r20, r2
.LBB0_165:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r19, -888(r30)                # 4-byte Folded Spill
	loadli.w r19,  -1096(r30)               # 4-byte Folded Reload
	storeli.w r3, -1104(r30)                # 4-byte Folded Spill
	storeli.w r2, -1084(r30)                # 4-byte Folded Spill
	add.f.rn r20, r2, r19
	slli r1, r20, 9
	setle.f r3, r17, r20
	setle.f r4, r20, r17
	srli r2, r20, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_167
# %bb.166:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r19, r20
.LBB0_167:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r25,  -1020(r30)               # 4-byte Folded Reload
	storeli.w r2, -1112(r30)                # 4-byte Folded Spill
	add.f.rn r19, r20, r25
	slli r1, r19, 9
	setle.f r3, r17, r19
	setle.f r4, r19, r17
	srli r2, r19, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_169
# %bb.168:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r25, r19
.LBB0_169:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r18, -892(r30)                # 4-byte Folded Spill
	loadli.w r18,  -1012(r30)               # 4-byte Folded Reload
	storeli.w r19, -1100(r30)               # 4-byte Folded Spill
	storeli.w r3, -1120(r30)                # 4-byte Folded Spill
	add.f.rn r19, r19, r18
	slli r1, r19, 9
	setle.f r3, r17, r19
	setle.f r4, r19, r17
	srli r2, r19, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	addli r2, r19, 0
	loadli.w r19,  -944(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_171
# %bb.170:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r18, r2
.LBB0_171:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r24, -904(r30)                # 4-byte Folded Spill
	loadli.w r24,  -1004(r30)               # 4-byte Folded Reload
	storeli.w r3, -1124(r30)                # 4-byte Folded Spill
	storeli.w r2, -1108(r30)                # 4-byte Folded Spill
	loadli.w r25,  -1132(r30)               # 4-byte Folded Reload
	add.f.rn r18, r2, r24
	slli r1, r18, 9
	setle.f r3, r17, r18
	setle.f r4, r18, r17
	srli r2, r18, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_173
# %bb.172:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r24, r18
.LBB0_173:                              #   in Loop: Header=BB0_5 Depth=1
	addli r24, r26, 0
	loadli.w r26,  -992(r30)                # 4-byte Folded Reload
	storeli.w r18, -1116(r30)               # 4-byte Folded Spill
	storeli.w r3, -1136(r30)                # 4-byte Folded Spill
	add.f.rn r18, r18, r26
	slli r1, r18, 9
	setle.f r3, r17, r18
	setle.f r4, r18, r17
	srli r2, r18, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	addli r2, r18, 0
	loadli.w r18,  -948(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_175
# %bb.174:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r26, r2
.LBB0_175:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r26, r2, r25
	storeli.w r3, -1144(r30)                # 4-byte Folded Spill
	storeli.w r2, -1128(r30)                # 4-byte Folded Spill
	slli r1, r26, 9
	setle.f r3, r17, r26
	setle.f r4, r26, r17
	srli r2, r26, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_177
# %bb.176:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r25, r26
.LBB0_177:                              #   in Loop: Header=BB0_5 Depth=1
	addli r25, r16, 0
	loadli.w r16,  -984(r30)                # 4-byte Folded Reload
	storeli.w r26, -1132(r30)               # 4-byte Folded Spill
	storeli.w r3, -1152(r30)                # 4-byte Folded Spill
	storeli.w r20, -1096(r30)               # 4-byte Folded Spill
	add.f.rn r26, r26, r16
	slli r1, r26, 9
	setle.f r3, r17, r26
	setle.f r4, r26, r17
	srli r2, r26, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_179
# %bb.178:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r16, r26
.LBB0_179:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r16,  -960(r30)                # 4-byte Folded Reload
	storeli.w r21, -880(r30)                # 4-byte Folded Spill
	storeli.w r2, -1160(r30)                # 4-byte Folded Spill
	loadli.w r20,  -876(r30)                # 4-byte Folded Reload
	add.f.rn r21, r26, r16
	slli r1, r21, 9
	setle.f r3, r17, r21
	setle.f r4, r21, r17
	srli r2, r21, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	addli r2, r21, 0
	bneq r1, zero, .LBB0_181
# %bb.180:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r16, r2
.LBB0_181:                              #   in Loop: Header=BB0_5 Depth=1
	addli r21, r22, 0
	loadli.w r22,  -952(r30)                # 4-byte Folded Reload
	storeli.w r3, -1168(r30)                # 4-byte Folded Spill
	storeli.w r2, -1148(r30)                # 4-byte Folded Spill
	add.f.rn r16, r2, r22
	slli r1, r16, 9
	setle.f r3, r17, r16
	setle.f r4, r16, r17
	srli r2, r16, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_183
# %bb.182:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r22, r16
.LBB0_183:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r16, -1156(r30)               # 4-byte Folded Spill
	add.f.rn r16, r16, r18
	storeli.w r2, -1176(r30)                # 4-byte Folded Spill
	slli r1, r16, 9
	setle.f r3, r17, r16
	setle.f r4, r16, r17
	srli r2, r16, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	addli r2, r16, 0
	addli r16, r25, 0
	bneq r1, zero, .LBB0_185
# %bb.184:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r18, r2
.LBB0_185:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r18, r2, r19
	storeli.w r3, -1184(r30)                # 4-byte Folded Spill
	storeli.w r2, -1164(r30)                # 4-byte Folded Spill
	loadli.w r25,  -908(r30)                # 4-byte Folded Reload
	storeli.w r26, -1140(r30)               # 4-byte Folded Spill
	slli r1, r18, 9
	setle.f r3, r17, r18
	setle.f r4, r18, r17
	srli r2, r18, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_187
# %bb.186:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r19, r18
.LBB0_187:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r26,  -940(r30)                # 4-byte Folded Reload
	storeli.w r18, -1172(r30)               # 4-byte Folded Spill
	storeli.w r2, -1192(r30)                # 4-byte Folded Spill
	add.f.rn r18, r18, r26
	slli r1, r18, 9
	setle.f r3, r17, r18
	setle.f r4, r18, r17
	srli r2, r18, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_189
# %bb.188:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r26, r18
.LBB0_189:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r19, r18, r12
	storeli.w r2, -1200(r30)                # 4-byte Folded Spill
	storeli.w r18, -1180(r30)               # 4-byte Folded Spill
	slli r1, r19, 9
	setle.f r3, r17, r19
	setle.f r4, r19, r17
	srli r2, r19, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_191
# %bb.190:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r12, r19
.LBB0_191:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r12, r19, r25
	storeli.w r2, -1204(r30)                # 4-byte Folded Spill
	loadli.w r26,  -900(r30)                # 4-byte Folded Reload
	slli r1, r12, 9
	setle.f r3, r17, r12
	setle.f r4, r12, r17
	srli r2, r12, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_193
# %bb.192:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r25, r12
.LBB0_193:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r25, r12, r26
	storeli.w r2, -1212(r30)                # 4-byte Folded Spill
	slli r1, r25, 9
	setle.f r3, r17, r25
	setle.f r4, r25, r17
	srli r2, r25, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_195
# %bb.194:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r26, r25
.LBB0_195:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r26, r25, r20
	storeli.w r2, -1224(r30)                # 4-byte Folded Spill
	slli r1, r26, 9
	setle.f r3, r17, r26
	setle.f r4, r26, r17
	srli r2, r26, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_197
# %bb.196:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r20, r26
.LBB0_197:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r6, -992(r30)                 # 4-byte Folded Spill
	loadli.w r6,  -868(r30)                 # 4-byte Folded Reload
	storeli.w r2, -1228(r30)                # 4-byte Folded Spill
	add.f.rn r20, r26, r6
	slli r1, r20, 9
	setle.f r3, r17, r20
	setle.f r4, r20, r17
	srli r2, r20, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_199
# %bb.198:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r6, r20
.LBB0_199:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r5, -984(r30)                 # 4-byte Folded Spill
	loadli.w r5,  -1008(r30)                # 4-byte Folded Reload
	storeli.w r3, -1232(r30)                # 4-byte Folded Spill
	storeli.w r26, -1216(r30)               # 4-byte Folded Spill
	storeli.w r25, -1208(r30)               # 4-byte Folded Spill
	storeli.w r12, -1196(r30)               # 4-byte Folded Spill
	storeli.w r19, -1188(r30)               # 4-byte Folded Spill
	storeli.w r28, -1020(r30)               # 4-byte Folded Spill
	storeli.w r27, -1012(r30)               # 4-byte Folded Spill
	storeli.w r7, -1004(r30)                # 4-byte Folded Spill
	storeli.w r9, -960(r30)                 # 4-byte Folded Spill
	storeli.w r10, -952(r30)                # 4-byte Folded Spill
	storeli.w r11, -948(r30)                # 4-byte Folded Spill
	storeli.w r13, -944(r30)                # 4-byte Folded Spill
	storeli.w r15, -940(r30)                # 4-byte Folded Spill
	storeli.w r14, -936(r30)                # 4-byte Folded Spill
	storeli.w r23, -908(r30)                # 4-byte Folded Spill
	storeli.w r16, -900(r30)                # 4-byte Folded Spill
	storeli.w r21, -876(r30)                # 4-byte Folded Spill
	storeli.w r24, -868(r30)                # 4-byte Folded Spill
	storeli.w r20, -1220(r30)               # 4-byte Folded Spill
	add.f.rn r2, r20, r5
	slli r1, r2, 9
	setle.f r4, r17, r2
	setle.f r6, r2, r17
	srli r3, r2, 23
	seteq r1, r1, r17
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	and r3, r6, r4
	and r1, r3, r1
	bneq r1, zero, .LBB0_2
# %bb.200:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r17, r5, r2
	j .LBB0_2
.LBB0_201:                              # %._crit_edge
	.loc	1 63 4 epilogue_begin is_stmt 1 # cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py:63:4
	addli sp, sp, 1232
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
	.long	52                              # 0x34
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	1296                            # 0x510
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
.asciz	"cfjciuks4ms63ppodqbkb47hzb7e3uy4c24yywcr2b34eto252xk.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/fj" # string offset=63
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
