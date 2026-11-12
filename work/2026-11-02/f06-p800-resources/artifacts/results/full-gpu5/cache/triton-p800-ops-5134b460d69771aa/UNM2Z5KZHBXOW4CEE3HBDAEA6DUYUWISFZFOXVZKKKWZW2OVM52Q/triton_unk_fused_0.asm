	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/kr" "ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py"
	.loc	1 22 0                          # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1432
	lui r1, :hi20:global_smem
	core_id r2
	addli r30, sp, 1368
	lui r6, 260096
	load_param_i r14, 0
	slli r3, r2, 2
	addli r1, r1, :lo12:global_smem
	loadli.w r12,  44(r30)
	loadli.w r4,  40(r30)
	loadli.w r11,  48(r30)
	add.s r5, r3, r1
	mul.s r4, r12, r4
	stores.w zero, 0(r5)
	stores.w zero, 256(r5)
	storeli.w r5, -340(r30)                 # 4-byte Folded Spill
	stores.w r6, 512(r5)
	lui r5, 15
	mul.s r15, r4, r11
	mfence { lm, sm, gm }
	ori r13, r5, 4095
	csr_set csr3, r13
	sync_group
	ble.s r15, r14, .LBB0_195
# %bb.1:                                # %.lr.ph
	addli r4, zero, 64
	loadli.w r9,  -340(r30)                 # 4-byte Folded Reload
	lui r10, 1048575
	vxor.u.mz vr0{mr1}, vr0, vr0
	#APP
	vxor.s.mz vr1{mr1}, vr1, vr1
	#NO_APP
	addli r18, zero, 2
	load.d r[6:7], 8(r30)
	load_param_i r17, 1
	storeli.w r13, -336(r30)                # 4-byte Folded Spill
	storeli.w r15, -352(r30)                # 4-byte Folded Spill
	vadd.s.mz vr2{mr1}, zero, vr0
	div.s r16, r2, r4
	ori r10, r10, 3840
	load.d r[4:5], 16(r30)
	storeli.w r17, -368(r30)                # 4-byte Folded Spill
	addli r8, r9, 256
	addli r9, r9, 512
	storeli.w r8, -360(r30)                 # 4-byte Folded Spill
	storeli.w r9, -364(r30)                 # 4-byte Folded Spill
	slli r8, r16, 6
	storeli.w r16, -356(r30)                # 4-byte Folded Spill
	sub.s r8, r2, r8
	andi r2, r2, 63
	storeli.w r2, -396(r30)                 # 4-byte Folded Spill
	and r2, r3, r10
	lui r3, 260096
	slli r8, r8, 5
	add.s r1, r2, r1
	lui r2, 15
	vor.f.mz vr3{mr1}, r3, vr0
	storeli.w r8, -372(r30)                 # 4-byte Folded Spill
	sext_int2long r[8:9], r8
	addli r2, r2, 4095
	storeli.w r1, -324(r30)                 # 4-byte Folded Spill
	sll.d r[8:9], r[8:9], r18
	vmmov mr0, r2
	addli r2, r1, 256
	addli r1, r1, 512
	add.ul r[6:7], r[6:7], r[8:9]
	add.ul r[4:5], r[4:5], r[8:9]
	vor.f.mh vr2{mr0}, vr1, vr3
	storeli.w r1, -404(r30)                 # 4-byte Folded Spill
	store.d r[6:7], -384(r30)               # 8-byte Folded Spill
	store.d r[4:5], -392(r30)               # 8-byte Folded Spill
	storeli.w r2, -328(r30)                 # 4-byte Folded Spill
	addli r2, zero, 2047
	addli r5, zero, 128
	addli r6, r30, -128
	vadd.f.mz.rn vr3{mr1}, vr2, vr2
	vextracti.f r1, 1(vr2)
	vextracti.f r3, 1(vr3)
	veq.f.mz mr2{mr1}, vr3, vr0
	div.f.rn r1, r1, r3
	storeli.w r3, -332(r30)                 # 4-byte Folded Spill
	storeli.w r1, -1364(r30)                # 4-byte Folded Spill
	vextracti.f r1, 2(vr2)
	storeli.w r1, -1368(r30)                # 4-byte Folded Spill
	lui r1, 239665
	ori r1, r1, 623
	storeli.w r1, -400(r30)                 # 4-byte Folded Spill
	j .LBB0_5
.LBB0_2:                                #   in Loop: Header=BB0_5 Depth=1
	loadli.w r2,  -1040(r30)                # 4-byte Folded Reload
	loadli.w r3,  -1048(r30)                # 4-byte Folded Reload
	loadli.w r7,  -552(r30)                 # 4-byte Folded Reload
	loadli.w r26,  -568(r30)                # 4-byte Folded Reload
	loadli.w r21,  -580(r30)                # 4-byte Folded Reload
	loadli.w r18,  -596(r30)                # 4-byte Folded Reload
	loadli.w r9,  -612(r30)                 # 4-byte Folded Reload
	loadli.w r13,  -628(r30)                # 4-byte Folded Reload
	loadli.w r8,  -648(r30)                 # 4-byte Folded Reload
	loadli.w r15,  -664(r30)                # 4-byte Folded Reload
	add.f.rn r4, r2, r3
	loadli.w r2,  -404(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -836(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	loadli.w r2,  -888(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -892(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r1, r2
	mul.f.rn r1, r6, r7
	add.f.rn r1, r2, r1
	loadli.w r2,  -884(r30)                 # 4-byte Folded Reload
	sub.f.rn r23, r2, r1
	mul.f.rn r2, r26, r23
	mul.f.rn r23, r23, r23
	add.f.rn r1, r1, r2
	loadli.w r2,  -872(r30)                 # 4-byte Folded Reload
	sub.f.rn r12, r2, r1
	mul.f.rn r2, r21, r12
	mul.f.rn r12, r12, r12
	add.f.rn r1, r1, r2
	loadli.w r2,  -864(r30)                 # 4-byte Folded Reload
	sub.f.rn r11, r2, r1
	mul.f.rn r2, r18, r11
	mul.f.rn r11, r11, r11
	add.f.rn r1, r1, r2
	loadli.w r2,  -856(r30)                 # 4-byte Folded Reload
	sub.f.rn r22, r2, r1
	mul.f.rn r2, r9, r22
	mul.f.rn r22, r22, r22
	add.f.rn r2, r1, r2
	loadli.w r1,  -848(r30)                 # 4-byte Folded Reload
	sub.f.rn r1, r1, r2
	mul.f.rn r5, r13, r1
	mul.f.rn r1, r1, r1
	add.f.rn r2, r2, r5
	sub.f.rn r27, r3, r2
	loadli.w r3,  -828(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r8, r27
	add.f.rn r2, r2, r5
	sub.f.rn r14, r3, r2
	loadli.w r3,  -976(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r15, r14
	mul.f.rn r14, r14, r14
	add.f.rn r2, r2, r5
	sub.f.rn r16, r3, r2
	loadli.w r3,  -260(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r3, r16
	loadli.w r3,  -276(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r16, r16
	add.f.rn r5, r2, r5
	loadli.w r2,  -968(r30)                 # 4-byte Folded Reload
	sub.f.rn r2, r2, r5
	mul.f.rn r10, r3, r2
	loadli.w r3,  -964(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r2, r2
	add.f.rn r5, r5, r10
	sub.f.rn r25, r3, r5
	loadli.w r3,  -280(r30)                 # 4-byte Folded Reload
	mul.f.rn r10, r3, r25
	loadli.w r3,  -952(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r10
	sub.f.rn r20, r3, r5
	loadli.w r3,  -284(r30)                 # 4-byte Folded Reload
	mul.f.rn r10, r3, r20
	loadli.w r3,  -944(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r10
	sub.f.rn r10, r3, r5
	loadli.w r3,  -288(r30)                 # 4-byte Folded Reload
	storeli.w r10, -848(r30)                # 4-byte Folded Spill
	mul.f.rn r10, r3, r10
	loadli.w r3,  -936(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r10
	sub.f.rn r10, r3, r5
	loadli.w r3,  -292(r30)                 # 4-byte Folded Reload
	mul.f.rn r24, r3, r10
	loadli.w r3,  -928(r30)                 # 4-byte Folded Reload
	mul.f.rn r10, r10, r10
	add.f.rn r5, r5, r24
	sub.f.rn r19, r3, r5
	loadli.w r3,  -296(r30)                 # 4-byte Folded Reload
	mul.f.rn r24, r3, r19
	loadli.w r3,  -920(r30)                 # 4-byte Folded Reload
	storeli.w r19, -836(r30)                # 4-byte Folded Spill
	loadli.w r19,  -908(r30)                # 4-byte Folded Reload
	add.f.rn r24, r5, r24
	sub.f.rn r5, r3, r24
	loadli.w r3,  -300(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r3, r5
	add.f.rn r3, r24, r3
	sub.f.rn r24, r19, r3
	loadli.w r19,  -304(r30)                # 4-byte Folded Reload
	mul.f.rn r28, r19, r24
	loadli.w r19,  -532(r30)                # 4-byte Folded Reload
	storeli.w r24, -828(r30)                # 4-byte Folded Spill
	loadli.w r24,  -1092(r30)               # 4-byte Folded Reload
	add.f.rn r3, r3, r28
	mul.f.rn r28, r6, r6
	loadli.w r6,  -896(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r6, r3
	mul.f.rn r28, r28, r19
	loadli.w r19,  -308(r30)                # 4-byte Folded Reload
	mul.f.rn r19, r19, r6
	mul.f.rn r28, r28, r7
	loadli.w r7,  -948(r30)                 # 4-byte Folded Reload
	mul.f.rn r6, r6, r6
	add.f.rn r3, r3, r19
	loadli.w r19,  -520(r30)                # 4-byte Folded Reload
	add.f.rn r4, r4, r28
	mul.f.rn r19, r19, r23
	sub.f.rn r23, r7, r3
	loadli.w r7,  -988(r30)                 # 4-byte Folded Reload
	add.f.rn r4, r7, r4
	mul.f.rn r19, r26, r19
	loadli.w r7,  -312(r30)                 # 4-byte Folded Reload
	loadli.w r26,  -1076(r30)               # 4-byte Folded Reload
	mul.f.rn r28, r7, r23
	loadli.w r7,  -984(r30)                 # 4-byte Folded Reload
	storeli.w r23, -520(r30)                # 4-byte Folded Spill
	loadli.w r23,  -1096(r30)               # 4-byte Folded Reload
	add.f.rn r4, r4, r19
	loadli.w r19,  -536(r30)                # 4-byte Folded Reload
	add.f.rn r3, r3, r28
	mul.f.rn r19, r19, r12
	add.f.rn r4, r7, r4
	loadli.w r7,  -932(r30)                 # 4-byte Folded Reload
	sub.f.rn r12, r7, r3
	mul.f.rn r19, r21, r19
	loadli.w r7,  -316(r30)                 # 4-byte Folded Reload
	loadli.w r21,  -1108(r30)               # 4-byte Folded Reload
	mul.f.rn r28, r7, r12
	loadli.w r7,  -556(r30)                 # 4-byte Folded Reload
	add.f.rn r4, r4, r19
	mul.f.rn r11, r7, r11
	loadli.w r7,  -980(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r28
	add.f.rn r4, r7, r4
	loadli.w r7,  -916(r30)                 # 4-byte Folded Reload
	loadli.w r28,  -1068(r30)               # 4-byte Folded Reload
	mul.f.rn r19, r18, r11
	loadli.w r18,  -1116(r30)               # 4-byte Folded Reload
	sub.f.rn r11, r7, r3
	loadli.w r7,  -572(r30)                 # 4-byte Folded Reload
	add.f.rn r4, r4, r19
	mul.f.rn r19, r7, r22
	loadli.w r7,  -320(r30)                 # 4-byte Folded Reload
	mul.f.rn r22, r7, r11
	loadli.w r7,  -972(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r11, r11
	add.f.rn r4, r7, r4
	mul.f.rn r19, r9, r19
	loadli.w r7,  -960(r30)                 # 4-byte Folded Reload
	loadli.w r9,  -1128(r30)                # 4-byte Folded Reload
	add.f.rn r3, r3, r22
	mul.f.rn r22, r27, r27
	add.f.rn r19, r4, r19
	loadli.w r4,  -592(r30)                 # 4-byte Folded Reload
	mul.f.rn r1, r4, r1
	loadli.w r4,  -900(r30)                 # 4-byte Folded Reload
	sub.f.rn r4, r4, r3
	add.f.rn r19, r7, r19
	loadli.w r7,  -344(r30)                 # 4-byte Folded Reload
	mul.f.rn r1, r13, r1
	mul.f.rn r13, r25, r25
	loadli.w r25,  -1084(r30)               # 4-byte Folded Reload
	mul.f.rn r27, r7, r4
	loadli.w r7,  -608(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r4, r4
	add.f.rn r1, r19, r1
	mul.f.rn r19, r7, r22
	loadli.w r7,  -956(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r27
	add.f.rn r1, r7, r1
	loadli.w r7,  -876(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r8, r19
	loadli.w r8,  -1056(r30)                # 4-byte Folded Reload
	sub.f.rn r27, r7, r3
	loadli.w r7,  -616(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r19
	mul.f.rn r14, r7, r14
	loadli.w r7,  -940(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r8, r27
	add.f.rn r1, r7, r1
	loadli.w r7,  -860(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r19
	mul.f.rn r19, r15, r14
	sub.f.rn r14, r7, r3
	loadli.w r7,  -632(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r19
	mul.f.rn r16, r7, r16
	loadli.w r7,  -348(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r7, r14
	loadli.w r7,  -924(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r7, r1
	loadli.w r7,  -260(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r7, r16
	loadli.w r7,  -652(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r19
	add.f.rn r1, r1, r16
	mul.f.rn r16, r7, r2
	loadli.w r7,  -912(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -840(r30)                 # 4-byte Folded Reload
	sub.f.rn r2, r2, r3
	add.f.rn r1, r7, r1
	loadli.w r7,  -276(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r7, r16
	loadli.w r7,  -668(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r28, r2
	mul.f.rn r2, r2, r2
	mul.f.rn r13, r7, r13
	loadli.w r7,  -904(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r16
	add.f.rn r3, r3, r19
	mul.f.rn r19, r20, r20
	add.f.rn r1, r7, r1
	loadli.w r7,  -280(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r7, r13
	loadli.w r7,  -824(r30)                 # 4-byte Folded Reload
	sub.f.rn r13, r7, r3
	loadli.w r7,  -812(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r16
	mul.f.rn r16, r7, r19
	loadli.w r7,  -880(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r26, r13
	mul.f.rn r13, r13, r13
	add.f.rn r1, r7, r1
	loadli.w r7,  -284(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r7, r16
	loadli.w r7,  -848(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r19
	mul.f.rn r15, r7, r7
	loadli.w r7,  -992(r30)                 # 4-byte Folded Reload
	add.f.rn r16, r1, r16
	loadli.w r1,  -808(r30)                 # 4-byte Folded Reload
	sub.f.rn r1, r1, r3
	mul.f.rn r15, r7, r15
	loadli.w r7,  -868(r30)                 # 4-byte Folded Reload
	add.f.rn r16, r7, r16
	loadli.w r7,  -288(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r25, r1
	mul.f.rn r15, r7, r15
	loadli.w r7,  -996(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r19
	add.f.rn r15, r16, r15
	mul.f.rn r16, r7, r10
	loadli.w r7,  -800(r30)                 # 4-byte Folded Reload
	sub.f.rn r10, r7, r3
	loadli.w r7,  -852(r30)                 # 4-byte Folded Reload
	add.f.rn r15, r7, r15
	loadli.w r7,  -292(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r7, r16
	loadli.w r7,  -836(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r24, r10
	mul.f.rn r19, r7, r7
	loadli.w r7,  -1000(r30)                # 4-byte Folded Reload
	add.f.rn r15, r15, r16
	add.f.rn r3, r3, r20
	mul.f.rn r16, r7, r19
	loadli.w r7,  -844(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r5, r5
	loadli.w r5,  -792(r30)                 # 4-byte Folded Reload
	add.f.rn r15, r7, r15
	loadli.w r7,  -296(r30)                 # 4-byte Folded Reload
	sub.f.rn r5, r5, r3
	mul.f.rn r16, r7, r16
	loadli.w r7,  -1004(r30)                # 4-byte Folded Reload
	add.f.rn r15, r15, r16
	mul.f.rn r16, r7, r19
	loadli.w r7,  -832(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r23, r5
	mul.f.rn r5, r5, r5
	add.f.rn r15, r7, r15
	loadli.w r7,  -300(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r19
	mul.f.rn r16, r7, r16
	loadli.w r7,  -828(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r7, r7
	loadli.w r7,  -1008(r30)                # 4-byte Folded Reload
	add.f.rn r16, r15, r16
	mul.f.rn r19, r7, r20
	loadli.w r7,  -780(r30)                 # 4-byte Folded Reload
	sub.f.rn r15, r7, r3
	loadli.w r7,  -820(r30)                 # 4-byte Folded Reload
	add.f.rn r16, r7, r16
	loadli.w r7,  -304(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r7, r19
	mul.f.rn r20, r21, r15
	loadli.w r7,  -1012(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r15, r15
	add.f.rn r16, r16, r19
	mul.f.rn r19, r7, r6
	loadli.w r6,  -816(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -308(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r20
	add.f.rn r16, r6, r16
	loadli.w r6,  -772(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r7, r19
	loadli.w r7,  -520(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r6, r3
	mul.f.rn r20, r7, r7
	loadli.w r7,  -1016(r30)                # 4-byte Folded Reload
	add.f.rn r16, r16, r19
	mul.f.rn r19, r7, r20
	mul.f.rn r22, r18, r6
	loadli.w r7,  -804(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r12, r12
	add.f.rn r16, r7, r16
	loadli.w r7,  -312(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r7, r19
	add.f.rn r3, r3, r22
	loadli.w r7,  -764(r30)                 # 4-byte Folded Reload
	loadli.w r22,  -1124(r30)               # 4-byte Folded Reload
	sub.f.rn r12, r7, r3
	add.f.rn r16, r16, r19
	loadli.w r7,  -1020(r30)                # 4-byte Folded Reload
	mul.f.rn r19, r7, r20
	loadli.w r7,  -796(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r22, r12
	add.f.rn r16, r7, r16
	loadli.w r7,  -316(r30)                 # 4-byte Folded Reload
	mul.f.rn r12, r12, r12
	mul.f.rn r19, r7, r19
	loadli.w r7,  -1024(r30)                # 4-byte Folded Reload
	add.f.rn r3, r3, r20
	add.f.rn r16, r16, r19
	mul.f.rn r19, r7, r11
	loadli.w r7,  -752(r30)                 # 4-byte Folded Reload
	sub.f.rn r11, r7, r3
	loadli.w r7,  -788(r30)                 # 4-byte Folded Reload
	add.f.rn r16, r7, r16
	loadli.w r7,  -320(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r7, r19
	mul.f.rn r20, r9, r11
	loadli.w r7,  -1028(r30)                # 4-byte Folded Reload
	mul.f.rn r11, r11, r11
	mul.f.rn r4, r7, r4
	loadli.w r7,  -784(r30)                 # 4-byte Folded Reload
	add.f.rn r16, r16, r19
	add.f.rn r3, r3, r20
	mul.f.rn r20, r27, r27
	loadli.w r27,  -1144(r30)               # 4-byte Folded Reload
	add.f.rn r16, r7, r16
	loadli.w r7,  -344(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r7, r4
	loadli.w r4,  -744(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -1032(r30)                # 4-byte Folded Reload
	sub.f.rn r4, r4, r3
	mul.f.rn r20, r7, r20
	loadli.w r7,  -776(r30)                 # 4-byte Folded Reload
	add.f.rn r16, r16, r19
	mul.f.rn r19, r27, r4
	mul.f.rn r4, r4, r4
	add.f.rn r16, r7, r16
	loadli.w r7,  -736(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r19
	mul.f.rn r19, r8, r20
	mul.f.rn r20, r14, r14
	loadli.w r8,  -1152(r30)                # 4-byte Folded Reload
	sub.f.rn r14, r7, r3
	add.f.rn r16, r16, r19
	loadli.w r7,  -1036(r30)                # 4-byte Folded Reload
	mul.f.rn r19, r7, r20
	loadli.w r7,  -768(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r8, r14
	add.f.rn r16, r7, r16
	loadli.w r7,  -348(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r14, r14
	mul.f.rn r19, r7, r19
	loadli.w r7,  -1044(r30)                # 4-byte Folded Reload
	add.f.rn r3, r3, r20
	add.f.rn r16, r16, r19
	mul.f.rn r19, r7, r2
	loadli.w r2,  -724(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -760(r30)                 # 4-byte Folded Reload
	sub.f.rn r2, r2, r3
	mul.f.rn r19, r28, r19
	loadli.w r28,  -1160(r30)               # 4-byte Folded Reload
	add.f.rn r16, r7, r16
	loadli.w r7,  -1052(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r28, r2
	mul.f.rn r13, r7, r13
	loadli.w r7,  -756(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r2, r2
	add.f.rn r16, r16, r19
	mul.f.rn r19, r1, r1
	loadli.w r1,  -716(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r20
	mul.f.rn r13, r26, r13
	loadli.w r20,  -1168(r30)               # 4-byte Folded Reload
	add.f.rn r16, r7, r16
	loadli.w r7,  -1060(r30)                # 4-byte Folded Reload
	sub.f.rn r1, r1, r3
	add.f.rn r13, r16, r13
	mul.f.rn r16, r7, r19
	loadli.w r7,  -748(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r20, r1
	mul.f.rn r1, r1, r1
	add.f.rn r13, r7, r13
	mul.f.rn r16, r25, r16
	loadli.w r7,  -704(r30)                 # 4-byte Folded Reload
	loadli.w r25,  -1176(r30)               # 4-byte Folded Reload
	add.f.rn r3, r3, r19
	mul.f.rn r19, r10, r10
	add.f.rn r13, r13, r16
	sub.f.rn r10, r7, r3
	loadli.w r7,  -1064(r30)                # 4-byte Folded Reload
	mul.f.rn r16, r7, r19
	loadli.w r7,  -740(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r25, r10
	add.f.rn r13, r7, r13
	loadli.w r7,  -1072(r30)                # 4-byte Folded Reload
	mul.f.rn r10, r10, r10
	mul.f.rn r16, r24, r16
	add.f.rn r3, r3, r19
	add.f.rn r13, r13, r16
	mul.f.rn r16, r7, r5
	loadli.w r5,  -696(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -732(r30)                 # 4-byte Folded Reload
	sub.f.rn r5, r5, r3
	add.f.rn r13, r7, r13
	mul.f.rn r16, r23, r16
	loadli.w r23,  -1184(r30)               # 4-byte Folded Reload
	loadli.w r7,  -1080(r30)                # 4-byte Folded Reload
	mul.f.rn r19, r23, r5
	mul.f.rn r15, r7, r15
	loadli.w r7,  -728(r30)                 # 4-byte Folded Reload
	add.f.rn r13, r13, r16
	mul.f.rn r16, r6, r6
	loadli.w r6,  -684(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r19
	mul.f.rn r15, r21, r15
	loadli.w r19,  -1192(r30)               # 4-byte Folded Reload
	add.f.rn r13, r7, r13
	loadli.w r7,  -1088(r30)                # 4-byte Folded Reload
	sub.f.rn r6, r6, r3
	add.f.rn r13, r13, r15
	mul.f.rn r15, r7, r16
	loadli.w r7,  -720(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r19, r6
	mul.f.rn r6, r6, r6
	add.f.rn r13, r7, r13
	mul.f.rn r15, r18, r15
	loadli.w r7,  -1100(r30)                # 4-byte Folded Reload
	loadli.w r18,  -1200(r30)               # 4-byte Folded Reload
	add.f.rn r3, r3, r16
	add.f.rn r13, r13, r15
	mul.f.rn r15, r7, r12
	loadli.w r7,  -676(r30)                 # 4-byte Folded Reload
	sub.f.rn r12, r7, r3
	loadli.w r7,  -712(r30)                 # 4-byte Folded Reload
	add.f.rn r13, r7, r13
	mul.f.rn r15, r22, r15
	loadli.w r7,  -1104(r30)                # 4-byte Folded Reload
	mul.f.rn r16, r18, r12
	mul.f.rn r12, r12, r12
	add.f.rn r13, r13, r15
	mul.f.rn r15, r7, r11
	loadli.w r7,  -708(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r16
	add.f.rn r13, r7, r13
	loadli.w r7,  -660(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r9, r15
	loadli.w r9,  -1208(r30)                # 4-byte Folded Reload
	sub.f.rn r11, r7, r3
	loadli.w r7,  -1112(r30)                # 4-byte Folded Reload
	mul.f.rn r4, r7, r4
	add.f.rn r13, r13, r15
	loadli.w r7,  -700(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r9, r11
	mul.f.rn r11, r11, r11
	add.f.rn r13, r7, r13
	mul.f.rn r15, r27, r4
	loadli.w r4,  -640(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -1120(r30)                # 4-byte Folded Reload
	add.f.rn r3, r3, r16
	mul.f.rn r14, r7, r14
	loadli.w r16,  -1216(r30)               # 4-byte Folded Reload
	loadli.w r7,  -692(r30)                 # 4-byte Folded Reload
	add.f.rn r13, r13, r15
	sub.f.rn r4, r4, r3
	mul.f.rn r14, r8, r14
	loadli.w r8,  -1220(r30)                # 4-byte Folded Reload
	add.f.rn r13, r7, r13
	loadli.w r7,  -1132(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r16, r4
	add.f.rn r13, r13, r14
	mul.f.rn r14, r7, r2
	loadli.w r2,  -624(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -688(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r15
	add.f.rn r13, r7, r13
	mul.f.rn r14, r28, r14
	loadli.w r7,  -1140(r30)                # 4-byte Folded Reload
	sub.f.rn r2, r2, r3
	mul.f.rn r1, r7, r1
	loadli.w r7,  -680(r30)                 # 4-byte Folded Reload
	add.f.rn r13, r13, r14
	mul.f.rn r15, r8, r2
	mul.f.rn r14, r20, r1
	loadli.w r1,  -600(r30)                 # 4-byte Folded Reload
	loadli.w r20,  -1240(r30)               # 4-byte Folded Reload
	mul.f.rn r2, r2, r2
	add.f.rn r13, r7, r13
	loadli.w r7,  -1148(r30)                # 4-byte Folded Reload
	add.f.rn r3, r3, r15
	loadli.w r15,  -1232(r30)               # 4-byte Folded Reload
	mul.f.rn r10, r7, r10
	loadli.w r7,  -672(r30)                 # 4-byte Folded Reload
	add.f.rn r13, r13, r14
	sub.f.rn r1, r1, r3
	mul.f.rn r10, r25, r10
	add.f.rn r13, r7, r13
	loadli.w r7,  -1156(r30)                # 4-byte Folded Reload
	mul.f.rn r14, r15, r1
	mul.f.rn r1, r1, r1
	add.f.rn r10, r13, r10
	add.f.rn r3, r3, r14
	mul.f.rn r14, r5, r5
	loadli.w r5,  -584(r30)                 # 4-byte Folded Reload
	sub.f.rn r5, r5, r3
	mul.f.rn r13, r7, r14
	loadli.w r7,  -656(r30)                 # 4-byte Folded Reload
	add.f.rn r10, r7, r10
	loadli.w r7,  -1164(r30)                # 4-byte Folded Reload
	mul.f.rn r14, r20, r5
	mul.f.rn r13, r23, r13
	mul.f.rn r5, r5, r5
	add.f.rn r3, r3, r14
	add.f.rn r10, r10, r13
	mul.f.rn r13, r7, r6
	loadli.w r6,  -564(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -644(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r6, r3
	add.f.rn r10, r7, r10
	mul.f.rn r13, r19, r13
	loadli.w r19,  -1248(r30)               # 4-byte Folded Reload
	loadli.w r7,  -1172(r30)                # 4-byte Folded Reload
	mul.f.rn r12, r7, r12
	loadli.w r7,  -636(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r19, r6
	add.f.rn r10, r10, r13
	mul.f.rn r6, r6, r6
	mul.f.rn r12, r18, r12
	add.f.rn r3, r3, r14
	add.f.rn r13, r7, r10
	loadli.w r10,  -544(r30)                # 4-byte Folded Reload
	loadli.w r7,  -1180(r30)                # 4-byte Folded Reload
	loadli.w r14,  -1252(r30)               # 4-byte Folded Reload
	mul.f.rn r11, r7, r11
	loadli.w r7,  -620(r30)                 # 4-byte Folded Reload
	sub.f.rn r10, r10, r3
	add.f.rn r12, r13, r12
	mul.f.rn r11, r9, r11
	loadli.w r9,  -1264(r30)                # 4-byte Folded Reload
	mul.f.rn r13, r14, r10
	add.f.rn r12, r7, r12
	loadli.w r7,  -1188(r30)                # 4-byte Folded Reload
	mul.f.rn r10, r10, r10
	add.f.rn r3, r3, r13
	mul.f.rn r13, r4, r4
	loadli.w r4,  -528(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r12, r11
	mul.f.rn r12, r7, r13
	sub.f.rn r4, r4, r3
	loadli.w r7,  -604(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r7, r11
	loadli.w r7,  -1196(r30)                # 4-byte Folded Reload
	mul.f.rn r13, r9, r4
	mul.f.rn r12, r16, r12
	mul.f.rn r2, r7, r2
	loadli.w r7,  -588(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r4, r4
	add.f.rn r11, r11, r12
	add.f.rn r3, r3, r13
	loadli.w r12,  -512(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r8, r2
	loadli.w r8,  -1272(r30)                # 4-byte Folded Reload
	add.f.rn r11, r7, r11
	sub.f.rn r12, r12, r3
	loadli.w r7,  -1204(r30)                # 4-byte Folded Reload
	mul.f.rn r1, r7, r1
	loadli.w r7,  -576(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r11, r2
	mul.f.rn r13, r8, r12
	loadli.w r11,  -504(r30)                # 4-byte Folded Reload
	mul.f.rn r1, r15, r1
	add.f.rn r3, r3, r13
	add.f.rn r2, r7, r2
	loadli.w r13,  -1280(r30)               # 4-byte Folded Reload
	loadli.w r7,  -560(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r2, r1
	loadli.w r2,  -1212(r30)                # 4-byte Folded Reload
	sub.f.rn r11, r11, r3
	mul.f.rn r2, r2, r5
	mul.f.rn r5, r13, r11
	add.f.rn r1, r7, r1
	loadli.w r7,  -1288(r30)                # 4-byte Folded Reload
	mul.f.rn r11, r11, r11
	mul.f.rn r2, r20, r2
	add.f.rn r3, r3, r5
	loadli.w r5,  -492(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -1224(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r2, r6
	sub.f.rn r5, r5, r3
	loadli.w r6,  -548(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	mul.f.rn r2, r19, r2
	mul.f.rn r6, r7, r5
	mul.f.rn r5, r5, r5
	add.f.rn r1, r1, r2
	add.f.rn r2, r3, r6
	loadli.w r3,  -1228(r30)                # 4-byte Folded Reload
	loadli.w r6,  -540(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r3, r10
	add.f.rn r1, r6, r1
	loadli.w r6,  -484(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r14, r3
	sub.f.rn r6, r6, r2
	loadli.w r14,  -1296(r30)               # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1236(r30)                # 4-byte Folded Reload
	mul.f.rn r10, r14, r6
	mul.f.rn r6, r6, r6
	mul.f.rn r3, r3, r4
	loadli.w r4,  -524(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r4, r1
	add.f.rn r2, r2, r10
	mul.f.rn r4, r12, r12
	loadli.w r10,  -476(r30)                # 4-byte Folded Reload
	loadli.w r12,  -516(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r9, r3
	loadli.w r9,  -1304(r30)                # 4-byte Folded Reload
	sub.f.rn r10, r10, r2
	add.f.rn r1, r1, r3
	loadli.w r3,  -1244(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r4
	mul.f.rn r4, r9, r10
	add.f.rn r1, r12, r1
	loadli.w r12,  -1320(r30)               # 4-byte Folded Reload
	mul.f.rn r3, r8, r3
	add.f.rn r2, r2, r4
	loadli.w r4,  -464(r30)                 # 4-byte Folded Reload
	loadli.w r8,  -1312(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1256(r30)                # 4-byte Folded Reload
	sub.f.rn r4, r4, r2
	mul.f.rn r3, r3, r11
	loadli.w r11,  -508(r30)                # 4-byte Folded Reload
	add.f.rn r1, r11, r1
	mul.f.rn r11, r8, r4
	mul.f.rn r4, r4, r4
	mul.f.rn r3, r13, r3
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	add.f.rn r2, r2, r11
	loadli.w r11,  -496(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1260(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r5
	loadli.w r5,  -500(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	loadli.w r5,  -456(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r7, r3
	sub.f.rn r5, r5, r2
	loadli.w r7,  -1268(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r7, r6
	loadli.w r7,  -1328(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	mul.f.rn r3, r12, r5
	mul.f.rn r5, r5, r5
	add.f.rn r1, r11, r1
	add.f.rn r2, r2, r3
	mul.f.rn r3, r14, r6
	mul.f.rn r6, r10, r10
	loadli.w r10,  -444(r30)                # 4-byte Folded Reload
	loadli.w r11,  -488(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1276(r30)                # 4-byte Folded Reload
	sub.f.rn r10, r10, r2
	mul.f.rn r3, r3, r6
	add.f.rn r1, r11, r1
	mul.f.rn r6, r7, r10
	mul.f.rn r3, r9, r3
	loadli.w r9,  -1340(r30)                # 4-byte Folded Reload
	add.f.rn r2, r2, r6
	loadli.w r6,  -480(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1284(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r4
	loadli.w r4,  -436(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	sub.f.rn r4, r4, r2
	mul.f.rn r3, r8, r3
	loadli.w r8,  -1332(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r8, r4
	mul.f.rn r4, r4, r4
	add.f.rn r1, r1, r3
	loadli.w r3,  -1292(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r5
	loadli.w r5,  -472(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r6
	loadli.w r6,  -424(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	mul.f.rn r5, r10, r10
	loadli.w r10,  -468(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r12, r3
	sub.f.rn r6, r6, r2
	add.f.rn r1, r1, r3
	loadli.w r3,  -1300(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r5
	mul.f.rn r5, r9, r6
	mul.f.rn r6, r6, r6
	add.f.rn r1, r10, r1
	mul.f.rn r3, r7, r3
	add.f.rn r2, r2, r5
	loadli.w r5,  -1308(r30)                # 4-byte Folded Reload
	loadli.w r7,  -1352(r30)                # 4-byte Folded Reload
	mul.f.rn r4, r5, r4
	loadli.w r5,  -460(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -420(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r8, r4
	sub.f.rn r3, r3, r2
	loadli.w r8,  -1356(r30)                # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	mul.f.rn r5, r7, r3
	mul.f.rn r3, r3, r3
	add.f.rn r1, r1, r4
	loadli.w r4,  -1316(r30)                # 4-byte Folded Reload
	mul.f.rn r4, r4, r6
	loadli.w r6,  -452(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r5
	loadli.w r5,  -416(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r6, r1
	mul.f.rn r4, r9, r4
	sub.f.rn r5, r5, r2
	add.f.rn r1, r1, r4
	loadli.w r4,  -1324(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r8, r5
	mul.f.rn r3, r4, r3
	loadli.w r4,  -448(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r4, r1
	add.f.rn r2, r2, r6
	mul.f.rn r4, r5, r5
	loadli.w r5,  -412(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -440(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r7, r3
	loadli.w r7,  -1360(r30)                # 4-byte Folded Reload
	sub.f.rn r5, r5, r2
	add.f.rn r1, r1, r3
	loadli.w r3,  -1336(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r4
	mul.f.rn r4, r7, r5
	mul.f.rn r5, r5, r5
	add.f.rn r1, r6, r1
	mul.f.rn r3, r8, r3
	add.f.rn r2, r2, r4
	loadli.w r4,  -408(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	loadli.w r3,  -1344(r30)                # 4-byte Folded Reload
	sub.f.rn r4, r4, r2
	mul.f.rn r3, r3, r5
	loadli.w r5,  -432(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	mul.f.rn r5, r4, r4
	mul.f.rn r4, r17, r4
	mul.f.rn r3, r7, r3
	add.f.rn r2, r2, r4
	add.f.rn r1, r1, r3
	loadli.w r3,  -1348(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r5
	loadli.w r5,  -428(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	mul.f.rn r3, r17, r3
	add.f.rn r1, r1, r3
	loadli.w r3,  -324(r30)                 # 4-byte Folded Reload
	stores.w r2, 0(r3)
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r13
	sync_group
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
.Ltmp0:
	.loc	1 68 24 prologue_end            # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:68:24
	lui r2, 237568
	.loc	1 71 32                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:71:32
	lui r3, 260096
	addli r5, zero, 128
	addli r6, r30, -128
	loads.w r1, 0(r1)
	.loc	1 68 24                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:68:24
	mul.f.rn r1, r1, r2
	.loc	1 70 24                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:70:24
	loadli.w r2,  -400(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -324(r30)                 # 4-byte Folded Reload
	loads.w r2, 0(r2)
	.loc	1 64 42                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:64:42
	mfence { lm }
	vload_mask16.mz vr6{mr1}, -128(r30)
	vload_mask16.mz vr7{mr1}, -64(r30)
	mfence { lm }
	.loc	1 71 32                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:71:32
	sqrt.f.rn r1, r1
	div.f.rn r1, r3, r1
	.loc	1 66 24                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:66:24
	lui r3, 524288
	xor r2, r2, r3
	#APP
	vadd.f.mz.rn vr4{mr1}, r2, vr4
	#NO_APP
	#APP
	vadd.f.mz.rn vr5{mr1}, r2, vr5
	#NO_APP
	.loc	1 74 29                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:74:29
	load.d r[3:4], -272(r30)                # 8-byte Folded Reload
	.loc	1 72 24                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:72:24
	#APP
	vmul.f.mz.rn vr4{mr1}, r1, vr4
	#NO_APP
	#APP
	vmul.f.mz.rn vr5{mr1}, r1, vr5
	#NO_APP
	.loc	1 74 29                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:74:29
	load.d r[1:2], 24(r30)
	.loc	1 73 24                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:73:24
	vmul.f.mz.rn vr4{mr1}, vr6, vr4
	vmul.f.mz.rn vr5{mr1}, vr7, vr5
	.loc	1 74 29                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:74:29
	add.ul r[1:2], r[1:2], r[3:4]
	.loc	1 74 53 is_stmt 0               # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:74:53
	lui r3, 983040
	vstore_mask16.mz vr4{mr1}, -128(r30)
	vstore_mask16.mz vr5{mr1}, -64(r30)
	or r3, r5, r3
	mfence { lm }
	s_lm2gm r3, r6, 0(r[1:2])
	addli r2, zero, 2047
	mfence { lm }
	loadli.w r11,  48(r30)
	loadli.w r12,  44(r30)
	loadli.w r14,  -264(r30)                # 4-byte Folded Reload
	loadli.w r15,  -352(r30)                # 4-byte Folded Reload
	loadli.w r16,  -356(r30)                # 4-byte Folded Reload
	loadli.w r17,  -368(r30)                # 4-byte Folded Reload
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 53                          # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:0:53
	add.s r14, r14, r17
	blt.s r14, r15, .LBB0_5
	j .LBB0_195
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	div.s r1, r14, r11
	div.s r1, r1, r12
	.loc	1 28 23 is_stmt 1               # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:28:23
	add.s r1, r1, r16
	blt.s r2, r1, .LBB0_4
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	1 42 41                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:42:41
	loadli.w r2,  -372(r30)                 # 4-byte Folded Reload
	.loc	1 42 46 is_stmt 0               # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:42:46
	slli r1, r1, 11
	.loc	1 42 51                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:42:51
	lui r3, 983040
	.loc	1 42 34                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:42:34
	addli r4, zero, 2
	.loc	1 42 51                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:42:51
	vstore_mask16.mz vr0{mr1}, -256(r30)
	vstore_mask16.mz vr0{mr1}, -192(r30)
	vmmov r11, mr2
	.loc	1 42 41                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:42:41
	add.s r1, r1, r2
	.loc	1 42 34                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:42:34
	sext_int2long r[1:2], r1
	sll.d r[7:8], r[1:2], r4
	.loc	1 42 51                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:42:51
	or r1, r5, r3
	.loc	1 42 34                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:42:34
	load.d r[2:3], 0(r30)
	.loc	1 42 51                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:42:51
	addli r4, r30, -256
	store.d r[7:8], -272(r30)               # 8-byte Folded Spill
	.loc	1 42 34                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:42:34
	add.ul r[2:3], r[2:3], r[7:8]
	.loc	1 42 51                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:42:51
	mfence { lm }
	.loc	1 43 41 is_stmt 1               # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:43:41
	vstore_mask16.mz vr0{mr1}, -128(r30)
	addli r7, zero, 0
	.loc	1 42 51                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:42:51
	l_gm2lm r1, r4, 0(r[2:3])
	.loc	1 43 41                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:43:41
	vstore_mask16.mz vr0{mr1}, -64(r30)
	lui r1, 983040
	mfence { lm }
	load.d r[2:3], -384(r30)                # 8-byte Folded Reload
	or r1, r5, r1
	l_gm2lm r1, r6, 0(r[2:3])
	.loc	1 64 42                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:64:42
	lui r1, 983040
	.loc	1 42 51                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:42:51
	mfence { lm }
	vload_mask16.mz vr4{mr1}, -256(r30)
	vload_mask16.mz vr5{mr1}, -192(r30)
	.loc	1 43 41                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:43:41
	vload_mask16.mz vr6{mr1}, -128(r30)
	vload_mask16.mz vr7{mr1}, -64(r30)
	mfence { lm }
	.loc	1 64 42                         # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:64:42
	vstore_mask16.mz vr0{mr1}, -128(r30)
	vstore_mask16.mz vr0{mr1}, -64(r30)
	or r1, r5, r1
	mfence { lm }
	load.d r[2:3], -392(r30)                # 8-byte Folded Reload
	l_gm2lm r1, r6, 0(r[2:3])
	vextracti.f r1, 0(vr3)
	storeli.w r1, -260(r30)                 # 4-byte Folded Spill
	andi r1, r11, 1
	bneq r1, zero, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 42 is_stmt 0                # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:0:42
	vextracti.f r1, 0(vr2)
	loadli.w r2,  -260(r30)                 # 4-byte Folded Reload
	div.f.rn r7, r1, r2
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	srli r1, r11, 15
	vextracti.f r2, 15(vr3)
	addli r6, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 15(vr2)
	div.f.rn r6, r1, r2
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r11, 14
	vextracti.f r5, 14(vr3)
	addli r8, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 14(vr2)
	div.f.rn r8, r1, r5
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r11, 13
	vextracti.f r28, 13(vr3)
	addli r10, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 13(vr2)
	div.f.rn r10, r1, r28
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r11, 12
	vextracti.f r3, 12(vr3)
	addli r13, zero, 0
	storeli.w r14, -264(r30)                # 4-byte Folded Spill
	andi r1, r1, 1
	bneq r1, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 12(vr2)
	div.f.rn r13, r1, r3
.LBB0_16:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r11, 11
	vextracti.f r9, 11(vr3)
	addli r14, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 11(vr2)
	div.f.rn r14, r1, r9
.LBB0_18:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r11, 10
	vextracti.f r12, 10(vr3)
	addli r15, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 10(vr2)
	div.f.rn r15, r1, r12
.LBB0_20:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r11, 9
	addli r17, r3, 0
	vextracti.f r3, 9(vr3)
	addli r19, zero, 0
	storeli.w r12, -280(r30)                # 4-byte Folded Spill
	storeli.w r2, -276(r30)                 # 4-byte Folded Spill
	andi r1, r1, 1
	bneq r1, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 9(vr2)
	div.f.rn r19, r1, r3
.LBB0_22:                               #   in Loop: Header=BB0_5 Depth=1
	srli r2, r11, 8
	vextracti.f r1, 8(vr3)
	addli r20, zero, 0
	andi r2, r2, 1
	bneq r2, zero, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r2, 8(vr2)
	div.f.rn r20, r2, r1
.LBB0_24:                               #   in Loop: Header=BB0_5 Depth=1
	storeli.w r3, -296(r30)                 # 4-byte Folded Spill
	srli r3, r11, 7
	vextracti.f r2, 7(vr3)
	addli r22, zero, 0
	andi r3, r3, 1
	bneq r3, zero, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r3, 7(vr2)
	div.f.rn r22, r3, r2
.LBB0_26:                               #   in Loop: Header=BB0_5 Depth=1
	srli r12, r11, 6
	vextracti.f r3, 6(vr3)
	addli r23, zero, 0
	andi r12, r12, 1
	bneq r12, zero, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r12, 6(vr2)
	div.f.rn r23, r12, r3
.LBB0_28:                               #   in Loop: Header=BB0_5 Depth=1
	srli r16, r11, 5
	vextracti.f r12, 5(vr3)
	addli r24, zero, 0
	andi r16, r16, 1
	bneq r16, zero, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r16, 5(vr2)
	div.f.rn r24, r16, r12
.LBB0_30:                               #   in Loop: Header=BB0_5 Depth=1
	srli r18, r11, 4
	vextracti.f r16, 4(vr3)
	addli r25, zero, 0
	andi r18, r18, 1
	bneq r18, zero, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r18, 4(vr2)
	div.f.rn r25, r18, r16
.LBB0_32:                               #   in Loop: Header=BB0_5 Depth=1
	srli r21, r11, 3
	vextracti.f r18, 3(vr3)
	addli r26, zero, 0
	andi r21, r21, 1
	bneq r21, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r21, 3(vr2)
	div.f.rn r26, r21, r18
.LBB0_34:                               #   in Loop: Header=BB0_5 Depth=1
	srli r27, r11, 2
	vextracti.f r21, 2(vr3)
	andi r4, r27, 1
	addli r27, zero, 0
	bneq r4, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r4,  -1368(r30)                # 4-byte Folded Reload
	div.f.rn r27, r4, r21
.LBB0_36:                               #   in Loop: Header=BB0_5 Depth=1
	srli r4, r11, 1
	addli r11, zero, 0
	andi r4, r4, 1
	bneq r4, zero, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r11,  -1364(r30)               # 4-byte Folded Reload
.LBB0_38:                               #   in Loop: Header=BB0_5 Depth=1
	vadd.s.mz vr8{mr1}, zero, vr0
	addli r4, zero, 1
	vmmov mr3, r4
	addli r4, zero, 2
	vor.u.mh vr8{mr3}, r7, vr8
	vmmov mr3, r4
	addli r4, zero, 4
	vor.u.mh vr8{mr3}, r11, vr8
	vmmov mr3, r4
	addli r4, zero, 8
	addli r11, zero, 4096
	vor.u.mh vr8{mr3}, r27, vr8
	vmmov mr3, r4
	addli r4, zero, 16
	vor.u.mh vr8{mr3}, r26, vr8
	vmmov mr3, r4
	addli r4, zero, 32
	addli r26, zero, 0
	vor.u.mh vr8{mr3}, r25, vr8
	vmmov mr3, r4
	addli r4, zero, 64
	vor.u.mh vr8{mr3}, r24, vr8
	vmmov mr3, r4
	addli r4, zero, 128
	vor.u.mh vr8{mr3}, r23, vr8
	vmmov mr3, r4
	addli r4, zero, 256
	vor.u.mh vr8{mr3}, r22, vr8
	vmmov mr3, r4
	addli r4, zero, 512
	vor.u.mh vr8{mr3}, r20, vr8
	vmmov mr3, r4
	addli r4, zero, 1024
	vor.u.mh vr8{mr3}, r19, vr8
	vmmov mr3, r4
	vor.u.mh vr8{mr3}, r15, vr8
	loadli.w r4,  -332(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -260(r30)                 # 4-byte Folded Reload
	add.f.rn r7, r7, r4
	addli r4, zero, 2048
	vmmov mr3, r4
	vor.u.mh vr8{mr3}, r14, vr8
	vmmov mr3, r11
	addli r14, zero, 8192
	slli r4, r7, 9
	srli r11, r7, 23
	vor.u.mh vr8{mr3}, r13, vr8
	vmmov mr3, r14
	setle.f r13, zero, r7
	lui r14, 4
	seteq r4, r4, zero
	andi r11, r11, 255
	vor.u.mh vr8{mr3}, r10, vr8
	setle.f r10, r7, zero
	vmmov mr3, r14
	vor.u.mh vr8{mr3}, r8, vr8
	setlti r8, r11, 255
	or r4, r8, r4
	and r8, r10, r13
	lui r10, 8
	vmmov mr3, r10
	and r4, r8, r4
	vor.u.mh vr8{mr3}, r6, vr8
	bneq r4, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r4,  -332(r30)                 # 4-byte Folded Reload
	div.f.rn r26, r4, r7
.LBB0_40:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r8, r21, r7
	addli r27, zero, 0
	addli r15, r28, 0
	addli r20, r17, 0
	slli r4, r8, 9
	setle.f r10, zero, r8
	setle.f r11, r8, zero
	srli r6, r8, 23
	seteq r4, r4, zero
	andi r6, r6, 255
	setlti r6, r6, 255
	or r4, r6, r4
	and r6, r11, r10
	and r4, r6, r4
	bneq r4, zero, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r27, r21, r8
.LBB0_42:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r10, r18, r8
	loadli.w r17,  -280(r30)                # 4-byte Folded Reload
	addli r24, zero, 0
	slli r4, r10, 9
	setle.f r11, zero, r10
	setle.f r13, r10, zero
	srli r6, r10, 23
	seteq r4, r4, zero
	andi r6, r6, 255
	setlti r6, r6, 255
	or r4, r6, r4
	and r6, r13, r11
	and r4, r6, r4
	bneq r4, zero, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r24, r18, r10
.LBB0_44:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r11, r16, r10
	slli r4, r11, 9
	setle.f r13, zero, r11
	setle.f r14, r11, zero
	srli r6, r11, 23
	seteq r4, r4, zero
	andi r6, r6, 255
	setlti r6, r6, 255
	or r4, r6, r4
	and r6, r14, r13
	and r4, r6, r4
	addli r6, zero, 0
	bneq r4, zero, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r6, r16, r11
.LBB0_46:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r13, r12, r11
	storeli.w r6, -284(r30)                 # 4-byte Folded Spill
	addli r18, r5, 0
	slli r4, r13, 9
	setle.f r14, zero, r13
	setle.f r16, r13, zero
	srli r6, r13, 23
	seteq r4, r4, zero
	andi r6, r6, 255
	setlti r6, r6, 255
	or r4, r6, r4
	and r6, r16, r14
	and r4, r6, r4
	addli r6, zero, 0
	bneq r4, zero, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r6, r12, r13
.LBB0_48:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r16, r3, r13
	storeli.w r6, -288(r30)                 # 4-byte Folded Spill
	addli r5, zero, 0
	slli r4, r16, 9
	setle.f r12, zero, r16
	setle.f r14, r16, zero
	srli r6, r16, 23
	seteq r4, r4, zero
	andi r6, r6, 255
	setlti r6, r6, 255
	or r4, r6, r4
	and r6, r14, r12
	and r4, r6, r4
	bneq r4, zero, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r5, r3, r16
.LBB0_50:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r19, r2, r16
	slli r3, r19, 9
	setle.f r6, zero, r19
	setle.f r12, r19, zero
	srli r4, r19, 23
	seteq r3, r3, zero
	andi r4, r4, 255
	setlti r4, r4, 255
	or r3, r4, r3
	and r4, r12, r6
	and r3, r4, r3
	addli r4, zero, 0
	bneq r3, zero, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r4, r2, r19
.LBB0_52:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r21, r1, r19
	storeli.w r4, -292(r30)                 # 4-byte Folded Spill
	slli r2, r21, 9
	setle.f r4, zero, r21
	setle.f r6, r21, zero
	srli r3, r21, 23
	seteq r2, r2, zero
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r6, r4
	loadli.w r6,  -296(r30)                 # 4-byte Folded Reload
	and r2, r3, r2
	addli r3, zero, 0
	bneq r2, zero, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r21
.LBB0_54:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r22, r6, r21
	storeli.w r3, -300(r30)                 # 4-byte Folded Spill
	slli r1, r22, 9
	setle.f r3, zero, r22
	setle.f r4, r22, zero
	srli r2, r22, 23
	seteq r1, r1, zero
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, zero, 0
	bneq r1, zero, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r6, r22
.LBB0_56:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r28, r17, r22
	slli r1, r28, 9
	setle.f r4, zero, r28
	setle.f r12, r28, zero
	srli r3, r28, 23
	seteq r1, r1, zero
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	and r3, r12, r4
	addli r4, zero, 0
	and r3, r3, r1
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	bneq r3, zero, .LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r4, r17, r28
.LBB0_58:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r17, r9, r28
	storeli.w r4, -304(r30)                 # 4-byte Folded Spill
	slli r3, r17, 9
	setle.f r12, zero, r17
	setle.f r14, r17, zero
	srli r4, r17, 23
	seteq r3, r3, zero
	andi r4, r4, 255
	setlti r4, r4, 255
	or r3, r4, r3
	and r4, r14, r12
	and r4, r4, r3
	addli r3, zero, 0
	bneq r4, zero, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r9, r17
.LBB0_60:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r9, r20, r17
	storeli.w r5, -280(r30)                 # 4-byte Folded Spill
	addli r5, zero, 0
	slli r4, r9, 9
	setle.f r14, zero, r9
	setle.f r23, r9, zero
	srli r12, r9, 23
	seteq r4, r4, zero
	andi r12, r12, 255
	setlti r12, r12, 255
	or r4, r12, r4
	and r12, r23, r14
	and r4, r12, r4
	bneq r4, zero, .LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r5, r20, r9
.LBB0_62:                               #   in Loop: Header=BB0_5 Depth=1
	storeli.w r5, -312(r30)                 # 4-byte Folded Spill
	add.f.rn r5, r15, r9
	addli r6, zero, 0
	slli r4, r5, 9
	setle.f r14, zero, r5
	setle.f r23, r5, zero
	srli r12, r5, 23
	seteq r4, r4, zero
	andi r12, r12, 255
	setlti r12, r12, 255
	or r4, r12, r4
	and r12, r23, r14
	and r4, r12, r4
	bneq r4, zero, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r6, r15, r5
.LBB0_64:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r4, r18, r5
	slli r12, r4, 9
	setle.f r23, zero, r4
	setle.f r15, r4, zero
	srli r14, r4, 23
	seteq r12, r12, zero
	andi r14, r14, 255
	setlti r14, r14, 255
	or r12, r14, r12
	and r14, r15, r23
	and r12, r14, r12
	addli r14, zero, 0
	bneq r12, zero, .LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r14, r18, r4
.LBB0_66:                               #   in Loop: Header=BB0_5 Depth=1
	storeli.w r14, -320(r30)                # 4-byte Folded Spill
	add.f.rn r14, r1, r4
	storeli.w r2, -296(r30)                 # 4-byte Folded Spill
	addli r2, zero, 0
	storeli.w r6, -316(r30)                 # 4-byte Folded Spill
	storeli.w r3, -308(r30)                 # 4-byte Folded Spill
	slli r12, r14, 9
	setle.f r18, zero, r14
	setle.f r20, r14, zero
	srli r15, r14, 23
	seteq r12, r12, zero
	andi r15, r15, 255
	setlti r15, r15, 255
	or r12, r15, r12
	and r15, r20, r18
	and r15, r15, r12
	bneq r15, zero, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r1, r14
.LBB0_68:                               #   in Loop: Header=BB0_5 Depth=1
	vadd.f.mz.rn vr4{mr1}, vr4, vr6
	vadd.s.mz vr6{mr1}, zero, vr0
	vadd.f.mz.rn vr5{mr1}, vr5, vr7
	vadd.s.mz vr7{mr1}, zero, vr0
	loadli.w r1,  -364(r30)                 # 4-byte Folded Reload
	addli r3, r26, 0
	loadli.w r23,  -284(r30)                # 4-byte Folded Reload
	addli r25, r27, 0
	loadli.w r12,  -288(r30)                # 4-byte Folded Reload
	storeli.w r2, -276(r30)                 # 4-byte Folded Spill
	stores.w r14, 0(r1)
	loadli.w r1,  -260(r30)                 # 4-byte Folded Reload
	vor.f.mh vr6{mr0}, vr1, vr4
	vor.f.mh vr7{mr0}, vr1, vr5
	vsub.f.mz.rn vr7{mr1}, vr7, vr6
	vmul.f.mz.rn vr9{mr1}, vr7, vr8
	vmul.f.mz.rn vr7{mr1}, vr7, vr7
	vadd.f.mz.rn vr6{mr1}, vr6, vr9
	vmul.f.mz.rn vr7{mr1}, vr2, vr7
	vextracti.f r14, 0(vr6)
	vextracti.f r15, 1(vr6)
	vmul.f.mz.rn vr7{mr1}, vr7, vr8
	sub.f.rn r15, r15, r14
	vadd.f.mz.rn vr7{mr1}, zero, vr7
	vextracti.f r2, 0(vr7)
	mul.f.rn r18, r26, r15
	mul.f.rn r15, r15, r15
	add.f.rn r14, r14, r18
	vextracti.f r18, 2(vr6)
	mul.f.rn r15, r1, r15
	vextracti.f r1, 1(vr7)
	add.f.rn r1, r2, r1
	sub.f.rn r18, r18, r14
	mul.f.rn r2, r3, r15
	vextracti.f r15, 6(vr6)
	loadli.w r3,  -280(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r27, r18
	mul.f.rn r18, r18, r18
	add.f.rn r1, r1, r2
	add.f.rn r14, r14, r20
	vextracti.f r20, 3(vr6)
	mul.f.rn r2, r7, r18
	vextracti.f r7, 2(vr7)
	add.f.rn r1, r7, r1
	sub.f.rn r20, r20, r14
	mul.f.rn r2, r25, r2
	mul.f.rn r26, r24, r20
	mul.f.rn r7, r20, r20
	add.f.rn r1, r1, r2
	loadli.w r20,  -292(r30)                # 4-byte Folded Reload
	add.f.rn r14, r14, r26
	vextracti.f r26, 4(vr6)
	mul.f.rn r2, r8, r7
	vextracti.f r8, 3(vr7)
	add.f.rn r1, r8, r1
	sub.f.rn r26, r26, r14
	mul.f.rn r2, r24, r2
	mul.f.rn r27, r23, r26
	mul.f.rn r8, r26, r26
	add.f.rn r1, r1, r2
	add.f.rn r27, r14, r27
	vextracti.f r14, 5(vr6)
	mul.f.rn r2, r10, r8
	vextracti.f r8, 4(vr7)
	vextracti.f r10, 8(vr6)
	add.f.rn r1, r8, r1
	sub.f.rn r14, r14, r27
	mul.f.rn r2, r23, r2
	mul.f.rn r6, r12, r14
	add.f.rn r1, r1, r2
	add.f.rn r6, r27, r6
	sub.f.rn r15, r15, r6
	mul.f.rn r18, r3, r15
	add.f.rn r6, r6, r18
	vextracti.f r18, 7(vr6)
	sub.f.rn r7, r18, r6
	mul.f.rn r18, r20, r7
	mul.f.rn r7, r7, r7
	add.f.rn r6, r6, r18
	sub.f.rn r8, r10, r6
	mul.f.rn r10, r14, r14
	loadli.w r14,  -300(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r14, r8
	mul.f.rn r10, r11, r10
	vextracti.f r11, 5(vr7)
	add.f.rn r1, r11, r1
	vextracti.f r11, 9(vr6)
	add.f.rn r2, r6, r2
	mul.f.rn r6, r12, r10
	mul.f.rn r10, r15, r15
	loadli.w r12,  -296(r30)                # 4-byte Folded Reload
	sub.f.rn r11, r11, r2
	add.f.rn r1, r1, r6
	mul.f.rn r6, r13, r10
	vextracti.f r10, 6(vr7)
	mul.f.rn r13, r12, r11
	add.f.rn r1, r10, r1
	mul.f.rn r6, r3, r6
	vextracti.f r10, 10(vr6)
	loadli.w r3,  -304(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r13
	add.f.rn r1, r1, r6
	mul.f.rn r6, r16, r7
	vextracti.f r7, 7(vr7)
	loadli.w r13,  -308(r30)                # 4-byte Folded Reload
	sub.f.rn r10, r10, r2
	add.f.rn r1, r7, r1
	mul.f.rn r6, r20, r6
	mul.f.rn r7, r8, r8
	mul.f.rn r8, r3, r10
	add.f.rn r1, r1, r6
	mul.f.rn r6, r19, r7
	vextracti.f r7, 8(vr7)
	add.f.rn r2, r2, r8
	vextracti.f r8, 11(vr6)
	add.f.rn r1, r7, r1
	mul.f.rn r6, r14, r6
	mul.f.rn r7, r11, r11
	vextracti.f r11, 9(vr7)
	sub.f.rn r8, r8, r2
	add.f.rn r1, r1, r6
	mul.f.rn r6, r21, r7
	mul.f.rn r7, r13, r8
	add.f.rn r1, r11, r1
	mul.f.rn r6, r12, r6
	loadli.w r11,  -312(r30)                # 4-byte Folded Reload
	mul.f.rn r8, r8, r8
	add.f.rn r2, r2, r7
	mul.f.rn r7, r10, r10
	vextracti.f r10, 12(vr6)
	add.f.rn r1, r1, r6
	sub.f.rn r6, r10, r2
	mul.f.rn r7, r22, r7
	vextracti.f r10, 10(vr7)
	add.f.rn r1, r10, r1
	mul.f.rn r10, r11, r6
	mul.f.rn r7, r3, r7
	mul.f.rn r6, r6, r6
	add.f.rn r2, r2, r10
	add.f.rn r1, r1, r7
	mul.f.rn r7, r28, r8
	vextracti.f r8, 13(vr6)
	vextracti.f r10, 11(vr7)
	sub.f.rn r8, r8, r2
	add.f.rn r1, r10, r1
	mul.f.rn r3, r13, r7
	loadli.w r10,  -316(r30)                # 4-byte Folded Reload
	mul.f.rn r7, r10, r8
	add.f.rn r1, r1, r3
	mul.f.rn r3, r17, r6
	vextracti.f r6, 12(vr7)
	add.f.rn r2, r2, r7
	vextracti.f r7, 14(vr6)
	add.f.rn r1, r6, r1
	mul.f.rn r3, r11, r3
	mul.f.rn r6, r8, r8
	sub.f.rn r7, r7, r2
	add.f.rn r1, r1, r3
	mul.f.rn r3, r9, r6
	loadli.w r9,  -320(r30)                 # 4-byte Folded Reload
	vextracti.f r6, 13(vr7)
	mul.f.rn r8, r9, r7
	add.f.rn r1, r6, r1
	mul.f.rn r3, r10, r3
	mul.f.rn r6, r7, r7
	vextracti.f r7, 15(vr6)
	add.f.rn r2, r2, r8
	add.f.rn r1, r1, r3
	mul.f.rn r3, r5, r6
	vextracti.f r6, 14(vr7)
	sub.f.rn r5, r7, r2
	add.f.rn r1, r6, r1
	mul.f.rn r3, r9, r3
	mul.f.rn r6, r5, r5
	add.f.rn r1, r1, r3
	mul.f.rn r3, r4, r6
	loadli.w r6,  -276(r30)                 # 4-byte Folded Reload
	vextracti.f r4, 15(vr7)
	mul.f.rn r5, r6, r5
	add.f.rn r1, r4, r1
	mul.f.rn r3, r6, r3
	add.f.rn r2, r2, r5
	add.f.rn r1, r1, r3
	loadli.w r3,  -340(r30)                 # 4-byte Folded Reload
	stores.w r2, 0(r3)
	loadli.w r2,  -360(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	csr_set csr3, r13
	sync_group
	loadli.w r1,  -396(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_3
# %bb.69:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r6,  -404(r30)                 # 4-byte Folded Reload
	addli r17, zero, 0
	loads.w r2, 0(r6)
	loads.w r1, 4(r6)
	add.f.rn r7, r2, r1
	storeli.w r2, -532(r30)                 # 4-byte Folded Spill
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
	bneq r2, zero, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r7
.LBB0_71:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 8(r6)
	storeli.w r3, -552(r30)                 # 4-byte Folded Spill
	add.f.rn r8, r7, r1
	slli r2, r8, 9
	setle.f r4, r17, r8
	setle.f r5, r8, r17
	srli r3, r8, 23
	seteq r2, r2, r17
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r17, 0
	bneq r2, zero, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r8
.LBB0_73:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 12(r6)
	storeli.w r3, -568(r30)                 # 4-byte Folded Spill
	add.f.rn r9, r8, r1
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
	bneq r2, zero, .LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r9
.LBB0_75:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 16(r6)
	storeli.w r3, -580(r30)                 # 4-byte Folded Spill
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
	bneq r2, zero, .LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r10
.LBB0_77:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 20(r6)
	storeli.w r3, -596(r30)                 # 4-byte Folded Spill
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
	bneq r2, zero, .LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r11
.LBB0_79:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 24(r6)
	storeli.w r3, -612(r30)                 # 4-byte Folded Spill
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
	bneq r2, zero, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r12
.LBB0_81:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 28(r6)
	storeli.w r3, -628(r30)                 # 4-byte Folded Spill
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
	bneq r2, zero, .LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r13
.LBB0_83:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 32(r6)
	storeli.w r3, -648(r30)                 # 4-byte Folded Spill
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
	bneq r2, zero, .LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r14
.LBB0_85:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 36(r6)
	storeli.w r3, -664(r30)                 # 4-byte Folded Spill
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
	bneq r2, zero, .LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r15
.LBB0_87:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 40(r6)
	storeli.w r7, -520(r30)                 # 4-byte Folded Spill
	storeli.w r3, -260(r30)                 # 4-byte Folded Spill
	storeli.w r14, -632(r30)                # 4-byte Folded Spill
	storeli.w r13, -616(r30)                # 4-byte Folded Spill
	storeli.w r12, -608(r30)                # 4-byte Folded Spill
	storeli.w r11, -592(r30)                # 4-byte Folded Spill
	storeli.w r10, -572(r30)                # 4-byte Folded Spill
	storeli.w r9, -556(r30)                 # 4-byte Folded Spill
	storeli.w r8, -536(r30)                 # 4-byte Folded Spill
	storeli.w r15, -652(r30)                # 4-byte Folded Spill
	add.f.rn r7, r15, r1
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
	bneq r2, zero, .LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r7
.LBB0_89:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r2,  -324(r30)                 # 4-byte Folded Reload
	loads.w r25, 44(r6)
	storeli.w r3, -276(r30)                 # 4-byte Folded Spill
	loads.w r19, 156(r6)
	storeli.w r7, -668(r30)                 # 4-byte Folded Spill
	loads.w r18, 48(r6)
	loads.w r16, 52(r6)
	loads.w r5, 56(r6)
	loads.w r12, 60(r6)
	loads.w r11, 64(r6)
	loads.w r4, 68(r6)
	loads.w r15, 72(r6)
	loads.w r13, 76(r6)
	loads.w r23, 80(r6)
	loads.w r24, 84(r6)
	loads.w r9, 88(r6)
	loads.w r22, 92(r6)
	loads.w r8, 96(r6)
	loads.w r14, 104(r6)
	loads.w r28, 168(r6)
	loads.w r27, 176(r6)
	loads.w r1, 0(r2)
	loads.w r3, 96(r2)
	add.f.rn r26, r7, r25
	storeli.w r19, -1164(r30)               # 4-byte Folded Spill
	loads.w r19, 160(r6)
	loads.w r7, 124(r6)
	storeli.w r1, -888(r30)                 # 4-byte Folded Spill
	loads.w r1, 4(r2)
	storeli.w r3, -860(r30)                 # 4-byte Folded Spill
	loads.w r3, 148(r6)
	setle.f r20, r17, r26
	setle.f r21, r26, r17
	storeli.w r19, -1172(r30)               # 4-byte Folded Spill
	loads.w r19, 164(r6)
	storeli.w r1, -892(r30)                 # 4-byte Folded Spill
	loads.w r1, 8(r2)
	storeli.w r3, -1148(r30)                # 4-byte Folded Spill
	loads.w r3, 152(r6)
	storeli.w r19, -1188(r30)               # 4-byte Folded Spill
	loads.w r19, 172(r6)
	storeli.w r1, -884(r30)                 # 4-byte Folded Spill
	loads.w r1, 12(r2)
	storeli.w r19, -1196(r30)               # 4-byte Folded Spill
	loads.w r19, 180(r6)
	storeli.w r1, -872(r30)                 # 4-byte Folded Spill
	loads.w r1, 16(r2)
	storeli.w r19, -1212(r30)               # 4-byte Folded Spill
	loads.w r19, 184(r6)
	storeli.w r1, -864(r30)                 # 4-byte Folded Spill
	loads.w r1, 20(r2)
	storeli.w r19, -1224(r30)               # 4-byte Folded Spill
	loads.w r19, 188(r6)
	storeli.w r1, -856(r30)                 # 4-byte Folded Spill
	loads.w r1, 24(r2)
	storeli.w r19, -1180(r30)               # 4-byte Folded Spill
	loads.w r19, 192(r6)
	storeli.w r1, -848(r30)                 # 4-byte Folded Spill
	loads.w r1, 28(r2)
	storeli.w r19, -1140(r30)               # 4-byte Folded Spill
	loads.w r19, 196(r6)
	storeli.w r1, -836(r30)                 # 4-byte Folded Spill
	loads.w r1, 32(r2)
	storeli.w r19, -1120(r30)               # 4-byte Folded Spill
	loads.w r19, 200(r6)
	storeli.w r1, -828(r30)                 # 4-byte Folded Spill
	loads.w r1, 36(r2)
	storeli.w r19, -1112(r30)               # 4-byte Folded Spill
	loads.w r19, 204(r6)
	storeli.w r1, -976(r30)                 # 4-byte Folded Spill
	loads.w r1, 40(r2)
	storeli.w r19, -1104(r30)               # 4-byte Folded Spill
	loads.w r19, 208(r6)
	storeli.w r1, -968(r30)                 # 4-byte Folded Spill
	loads.w r1, 44(r2)
	storeli.w r19, -1088(r30)               # 4-byte Folded Spill
	loads.w r19, 212(r6)
	storeli.w r1, -964(r30)                 # 4-byte Folded Spill
	loads.w r1, 48(r2)
	storeli.w r19, -1100(r30)               # 4-byte Folded Spill
	loads.w r19, 216(r6)
	storeli.w r1, -952(r30)                 # 4-byte Folded Spill
	loads.w r1, 52(r2)
	storeli.w r19, -1080(r30)               # 4-byte Folded Spill
	loads.w r19, 220(r6)
	storeli.w r1, -944(r30)                 # 4-byte Folded Spill
	loads.w r1, 56(r2)
	storeli.w r19, -1072(r30)               # 4-byte Folded Spill
	loads.w r19, 224(r6)
	storeli.w r1, -936(r30)                 # 4-byte Folded Spill
	loads.w r1, 60(r2)
	storeli.w r19, -1064(r30)               # 4-byte Folded Spill
	loads.w r19, 228(r6)
	storeli.w r1, -928(r30)                 # 4-byte Folded Spill
	loads.w r1, 64(r2)
	storeli.w r19, -1060(r30)               # 4-byte Folded Spill
	loads.w r19, 232(r6)
	storeli.w r1, -920(r30)                 # 4-byte Folded Spill
	loads.w r1, 68(r2)
	storeli.w r19, -1052(r30)               # 4-byte Folded Spill
	loads.w r19, 236(r6)
	storeli.w r1, -908(r30)                 # 4-byte Folded Spill
	loads.w r1, 72(r2)
	storeli.w r19, -1044(r30)               # 4-byte Folded Spill
	loads.w r19, 240(r6)
	storeli.w r1, -896(r30)                 # 4-byte Folded Spill
	loads.w r1, 76(r2)
	storeli.w r19, -1024(r30)               # 4-byte Folded Spill
	loads.w r19, 244(r6)
	storeli.w r1, -948(r30)                 # 4-byte Folded Spill
	loads.w r1, 80(r2)
	storeli.w r19, -1020(r30)               # 4-byte Folded Spill
	loads.w r19, 248(r6)
	storeli.w r1, -932(r30)                 # 4-byte Folded Spill
	loads.w r1, 84(r2)
	storeli.w r19, -1008(r30)               # 4-byte Folded Spill
	srli r19, r26, 23
	andi r19, r19, 255
	storeli.w r1, -916(r30)                 # 4-byte Folded Spill
	loads.w r1, 88(r2)
	setlti r19, r19, 255
	storeli.w r1, -900(r30)                 # 4-byte Folded Spill
	loads.w r1, 92(r2)
	storeli.w r1, -876(r30)                 # 4-byte Folded Spill
	slli r1, r26, 9
	seteq r10, r1, r17
	loads.w r1, 100(r2)
	or r10, r19, r10
	and r19, r21, r20
	and r10, r19, r10
	addli r19, r17, 0
	storeli.w r1, -840(r30)                 # 4-byte Folded Spill
	loads.w r1, 104(r2)
	storeli.w r1, -824(r30)                 # 4-byte Folded Spill
	loads.w r1, 108(r2)
	storeli.w r1, -808(r30)                 # 4-byte Folded Spill
	loads.w r1, 112(r2)
	storeli.w r1, -800(r30)                 # 4-byte Folded Spill
	loads.w r1, 116(r2)
	storeli.w r1, -792(r30)                 # 4-byte Folded Spill
	loads.w r1, 120(r2)
	storeli.w r1, -780(r30)                 # 4-byte Folded Spill
	loads.w r1, 124(r2)
	storeli.w r1, -772(r30)                 # 4-byte Folded Spill
	loads.w r1, 128(r2)
	storeli.w r1, -764(r30)                 # 4-byte Folded Spill
	loads.w r1, 132(r2)
	storeli.w r1, -752(r30)                 # 4-byte Folded Spill
	loads.w r1, 136(r2)
	storeli.w r1, -744(r30)                 # 4-byte Folded Spill
	loads.w r1, 140(r2)
	storeli.w r1, -736(r30)                 # 4-byte Folded Spill
	loads.w r1, 144(r2)
	storeli.w r1, -724(r30)                 # 4-byte Folded Spill
	loads.w r1, 148(r2)
	storeli.w r1, -716(r30)                 # 4-byte Folded Spill
	loads.w r1, 152(r2)
	storeli.w r1, -704(r30)                 # 4-byte Folded Spill
	loads.w r1, 156(r2)
	storeli.w r1, -696(r30)                 # 4-byte Folded Spill
	loads.w r1, 160(r2)
	storeli.w r1, -684(r30)                 # 4-byte Folded Spill
	loads.w r1, 164(r2)
	storeli.w r1, -676(r30)                 # 4-byte Folded Spill
	loads.w r1, 168(r2)
	storeli.w r1, -660(r30)                 # 4-byte Folded Spill
	loads.w r1, 172(r2)
	storeli.w r1, -640(r30)                 # 4-byte Folded Spill
	loads.w r1, 176(r2)
	storeli.w r1, -624(r30)                 # 4-byte Folded Spill
	loads.w r1, 180(r2)
	storeli.w r1, -600(r30)                 # 4-byte Folded Spill
	loads.w r1, 184(r2)
	storeli.w r1, -584(r30)                 # 4-byte Folded Spill
	loads.w r1, 188(r2)
	storeli.w r1, -564(r30)                 # 4-byte Folded Spill
	loads.w r1, 192(r2)
	storeli.w r1, -544(r30)                 # 4-byte Folded Spill
	loads.w r1, 196(r2)
	storeli.w r1, -528(r30)                 # 4-byte Folded Spill
	loads.w r1, 200(r2)
	storeli.w r1, -512(r30)                 # 4-byte Folded Spill
	loads.w r1, 204(r2)
	storeli.w r1, -504(r30)                 # 4-byte Folded Spill
	loads.w r1, 208(r2)
	storeli.w r1, -492(r30)                 # 4-byte Folded Spill
	loads.w r1, 212(r2)
	storeli.w r1, -484(r30)                 # 4-byte Folded Spill
	loads.w r1, 216(r2)
	storeli.w r1, -476(r30)                 # 4-byte Folded Spill
	loads.w r1, 220(r2)
	storeli.w r1, -464(r30)                 # 4-byte Folded Spill
	loads.w r1, 224(r2)
	storeli.w r1, -456(r30)                 # 4-byte Folded Spill
	loads.w r1, 228(r2)
	storeli.w r1, -444(r30)                 # 4-byte Folded Spill
	loads.w r1, 232(r2)
	storeli.w r1, -436(r30)                 # 4-byte Folded Spill
	loads.w r1, 236(r2)
	storeli.w r1, -424(r30)                 # 4-byte Folded Spill
	loads.w r1, 240(r2)
	storeli.w r1, -420(r30)                 # 4-byte Folded Spill
	loads.w r1, 244(r2)
	storeli.w r1, -416(r30)                 # 4-byte Folded Spill
	loads.w r1, 248(r2)
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	loads.w r1, 252(r2)
	storeli.w r1, -408(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	loads.w r2, 0(r1)
	storeli.w r2, -1040(r30)                # 4-byte Folded Spill
	loads.w r2, 4(r1)
	storeli.w r2, -1048(r30)                # 4-byte Folded Spill
	loads.w r2, 8(r1)
	storeli.w r2, -988(r30)                 # 4-byte Folded Spill
	loads.w r2, 12(r1)
	storeli.w r2, -984(r30)                 # 4-byte Folded Spill
	loads.w r2, 16(r1)
	storeli.w r2, -980(r30)                 # 4-byte Folded Spill
	loads.w r2, 20(r1)
	storeli.w r2, -972(r30)                 # 4-byte Folded Spill
	loads.w r2, 24(r1)
	storeli.w r2, -960(r30)                 # 4-byte Folded Spill
	loads.w r2, 28(r1)
	storeli.w r2, -956(r30)                 # 4-byte Folded Spill
	loads.w r2, 32(r1)
	storeli.w r2, -940(r30)                 # 4-byte Folded Spill
	loads.w r2, 36(r1)
	storeli.w r2, -924(r30)                 # 4-byte Folded Spill
	loads.w r2, 40(r1)
	storeli.w r2, -912(r30)                 # 4-byte Folded Spill
	loads.w r2, 44(r1)
	storeli.w r2, -904(r30)                 # 4-byte Folded Spill
	loads.w r2, 48(r1)
	storeli.w r2, -880(r30)                 # 4-byte Folded Spill
	loads.w r2, 52(r1)
	storeli.w r2, -868(r30)                 # 4-byte Folded Spill
	loads.w r2, 56(r1)
	storeli.w r2, -852(r30)                 # 4-byte Folded Spill
	loads.w r2, 60(r1)
	storeli.w r2, -844(r30)                 # 4-byte Folded Spill
	loads.w r2, 64(r1)
	storeli.w r2, -832(r30)                 # 4-byte Folded Spill
	loads.w r2, 68(r1)
	storeli.w r2, -820(r30)                 # 4-byte Folded Spill
	loads.w r2, 72(r1)
	storeli.w r2, -816(r30)                 # 4-byte Folded Spill
	loads.w r2, 76(r1)
	storeli.w r2, -804(r30)                 # 4-byte Folded Spill
	loads.w r2, 80(r1)
	storeli.w r2, -796(r30)                 # 4-byte Folded Spill
	loads.w r2, 84(r1)
	storeli.w r2, -788(r30)                 # 4-byte Folded Spill
	loads.w r2, 88(r1)
	storeli.w r2, -784(r30)                 # 4-byte Folded Spill
	loads.w r2, 92(r1)
	storeli.w r2, -776(r30)                 # 4-byte Folded Spill
	loads.w r2, 96(r1)
	storeli.w r2, -768(r30)                 # 4-byte Folded Spill
	loads.w r2, 100(r1)
	storeli.w r2, -760(r30)                 # 4-byte Folded Spill
	loads.w r2, 104(r1)
	storeli.w r2, -756(r30)                 # 4-byte Folded Spill
	loads.w r2, 108(r1)
	storeli.w r2, -748(r30)                 # 4-byte Folded Spill
	loads.w r2, 112(r1)
	storeli.w r2, -740(r30)                 # 4-byte Folded Spill
	loads.w r2, 116(r1)
	storeli.w r2, -732(r30)                 # 4-byte Folded Spill
	loads.w r2, 120(r1)
	storeli.w r2, -728(r30)                 # 4-byte Folded Spill
	loads.w r2, 124(r1)
	storeli.w r2, -720(r30)                 # 4-byte Folded Spill
	loads.w r2, 128(r1)
	storeli.w r2, -712(r30)                 # 4-byte Folded Spill
	loads.w r2, 132(r1)
	storeli.w r2, -708(r30)                 # 4-byte Folded Spill
	loads.w r2, 136(r1)
	storeli.w r2, -700(r30)                 # 4-byte Folded Spill
	loads.w r2, 140(r1)
	storeli.w r2, -692(r30)                 # 4-byte Folded Spill
	loads.w r2, 144(r1)
	storeli.w r2, -688(r30)                 # 4-byte Folded Spill
	loads.w r2, 148(r1)
	storeli.w r2, -680(r30)                 # 4-byte Folded Spill
	loads.w r2, 152(r1)
	storeli.w r2, -672(r30)                 # 4-byte Folded Spill
	loads.w r2, 156(r1)
	storeli.w r2, -656(r30)                 # 4-byte Folded Spill
	loads.w r2, 160(r1)
	storeli.w r2, -644(r30)                 # 4-byte Folded Spill
	loads.w r2, 164(r1)
	storeli.w r2, -636(r30)                 # 4-byte Folded Spill
	loads.w r2, 168(r1)
	storeli.w r2, -620(r30)                 # 4-byte Folded Spill
	loads.w r2, 172(r1)
	storeli.w r2, -604(r30)                 # 4-byte Folded Spill
	loads.w r2, 176(r1)
	storeli.w r2, -588(r30)                 # 4-byte Folded Spill
	loads.w r2, 180(r1)
	storeli.w r2, -576(r30)                 # 4-byte Folded Spill
	loads.w r2, 184(r1)
	storeli.w r2, -560(r30)                 # 4-byte Folded Spill
	loads.w r2, 188(r1)
	storeli.w r2, -548(r30)                 # 4-byte Folded Spill
	loads.w r2, 192(r1)
	storeli.w r2, -540(r30)                 # 4-byte Folded Spill
	loads.w r2, 196(r1)
	storeli.w r2, -524(r30)                 # 4-byte Folded Spill
	loads.w r2, 200(r1)
	storeli.w r2, -516(r30)                 # 4-byte Folded Spill
	loads.w r2, 204(r1)
	storeli.w r2, -508(r30)                 # 4-byte Folded Spill
	loads.w r2, 208(r1)
	storeli.w r2, -500(r30)                 # 4-byte Folded Spill
	loads.w r2, 212(r1)
	storeli.w r2, -496(r30)                 # 4-byte Folded Spill
	loads.w r2, 216(r1)
	storeli.w r2, -488(r30)                 # 4-byte Folded Spill
	loads.w r2, 220(r1)
	storeli.w r2, -480(r30)                 # 4-byte Folded Spill
	loads.w r2, 224(r1)
	storeli.w r2, -472(r30)                 # 4-byte Folded Spill
	loads.w r2, 228(r1)
	storeli.w r2, -468(r30)                 # 4-byte Folded Spill
	loads.w r2, 232(r1)
	storeli.w r2, -460(r30)                 # 4-byte Folded Spill
	loads.w r2, 236(r1)
	storeli.w r2, -452(r30)                 # 4-byte Folded Spill
	loads.w r2, 240(r1)
	storeli.w r2, -448(r30)                 # 4-byte Folded Spill
	loads.w r2, 244(r1)
	storeli.w r2, -440(r30)                 # 4-byte Folded Spill
	loads.w r2, 248(r1)
	loads.w r1, 252(r1)
	storeli.w r1, -428(r30)                 # 4-byte Folded Spill
	loads.w r1, 108(r6)
	storeli.w r2, -432(r30)                 # 4-byte Folded Spill
	loads.w r2, 100(r6)
	storeli.w r1, -1084(r30)                # 4-byte Folded Spill
	loads.w r1, 112(r6)
	storeli.w r1, -1092(r30)                # 4-byte Folded Spill
	loads.w r1, 116(r6)
	storeli.w r1, -1096(r30)                # 4-byte Folded Spill
	loads.w r1, 120(r6)
	storeli.w r1, -1108(r30)                # 4-byte Folded Spill
	loads.w r1, 128(r6)
	storeli.w r1, -1124(r30)                # 4-byte Folded Spill
	loads.w r1, 132(r6)
	storeli.w r1, -1128(r30)                # 4-byte Folded Spill
	loads.w r1, 136(r6)
	storeli.w r1, -1144(r30)                # 4-byte Folded Spill
	loads.w r1, 140(r6)
	storeli.w r1, -1132(r30)                # 4-byte Folded Spill
	loads.w r1, 144(r6)
	loads.w r6, 252(r6)
	storeli.w r6, -1136(r30)                # 4-byte Folded Spill
	addli r6, r26, 0
	bneq r10, zero, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r19, r25, r6
.LBB0_91:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r25, r6, r18
	storeli.w r19, -280(r30)                # 4-byte Folded Spill
	slli r10, r25, 9
	setle.f r20, r17, r25
	setle.f r21, r25, r17
	srli r19, r25, 23
	seteq r10, r10, r17
	andi r19, r19, 255
	setlti r19, r19, 255
	or r10, r19, r10
	and r19, r21, r20
	and r10, r19, r10
	addli r19, r17, 0
	bneq r10, zero, .LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r19, r18, r25
.LBB0_93:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r21, r25, r16
	storeli.w r19, -284(r30)                # 4-byte Folded Spill
	addli r26, r7, 0
	slli r10, r21, 9
	setle.f r19, r17, r21
	setle.f r20, r21, r17
	srli r18, r21, 23
	seteq r10, r10, r17
	andi r18, r18, 255
	setlti r18, r18, 255
	or r10, r18, r10
	and r18, r20, r19
	and r10, r18, r10
	addli r18, r17, 0
	bneq r10, zero, .LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r18, r16, r21
.LBB0_95:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r20, r21, r5
	storeli.w r18, -288(r30)                # 4-byte Folded Spill
	slli r10, r20, 9
	setle.f r18, r17, r20
	setle.f r19, r20, r17
	srli r16, r20, 23
	seteq r10, r10, r17
	andi r16, r16, 255
	setlti r16, r16, 255
	or r10, r16, r10
	and r16, r19, r18
	and r10, r16, r10
	addli r16, r17, 0
	bneq r10, zero, .LBB0_97
# %bb.96:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r16, r5, r20
.LBB0_97:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r7, r20, r12
	storeli.w r16, -292(r30)                # 4-byte Folded Spill
	slli r5, r7, 9
	setle.f r16, r17, r7
	setle.f r18, r7, r17
	srli r10, r7, 23
	seteq r5, r5, r17
	andi r10, r10, 255
	setlti r10, r10, 255
	or r5, r10, r5
	and r10, r18, r16
	and r5, r10, r5
	addli r10, r17, 0
	bneq r5, zero, .LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r10, r12, r7
.LBB0_99:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r18, r7, r11
	storeli.w r10, -296(r30)                # 4-byte Folded Spill
	slli r5, r18, 9
	setle.f r12, r17, r18
	setle.f r16, r18, r17
	srli r10, r18, 23
	seteq r5, r5, r17
	andi r10, r10, 255
	setlti r10, r10, 255
	or r5, r10, r5
	and r10, r16, r12
	and r5, r10, r5
	addli r10, r17, 0
	bneq r5, zero, .LBB0_101
# %bb.100:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r10, r11, r18
.LBB0_101:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r16, r18, r4
	storeli.w r10, -300(r30)                # 4-byte Folded Spill
	slli r5, r16, 9
	setle.f r11, r17, r16
	setle.f r12, r16, r17
	srli r10, r16, 23
	seteq r5, r5, r17
	andi r10, r10, 255
	setlti r10, r10, 255
	or r5, r10, r5
	and r10, r12, r11
	and r5, r10, r5
	addli r10, r17, 0
	bneq r5, zero, .LBB0_103
# %bb.102:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r10, r4, r16
.LBB0_103:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r12, r16, r15
	storeli.w r10, -304(r30)                # 4-byte Folded Spill
	slli r4, r12, 9
	setle.f r10, r17, r12
	setle.f r11, r12, r17
	srli r5, r12, 23
	seteq r4, r4, r17
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r11, r10
	and r4, r5, r4
	addli r5, r17, 0
	bneq r4, zero, .LBB0_105
# %bb.104:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r5, r15, r12
.LBB0_105:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r15, r12, r13
	storeli.w r5, -308(r30)                 # 4-byte Folded Spill
	slli r4, r15, 9
	setle.f r10, r17, r15
	setle.f r11, r15, r17
	srli r5, r15, 23
	seteq r4, r4, r17
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r11, r10
	and r4, r5, r4
	addli r5, r17, 0
	bneq r4, zero, .LBB0_107
# %bb.106:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r5, r13, r15
.LBB0_107:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r13, r15, r23
	storeli.w r5, -312(r30)                 # 4-byte Folded Spill
	storeli.w r20, -1000(r30)               # 4-byte Folded Spill
	slli r4, r13, 9
	setle.f r10, r17, r13
	setle.f r11, r13, r17
	srli r5, r13, 23
	seteq r4, r4, r17
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r11, r10
	and r4, r5, r4
	addli r5, r17, 0
	bneq r4, zero, .LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r5, r23, r13
.LBB0_109:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r20, r13, r24
	storeli.w r5, -316(r30)                 # 4-byte Folded Spill
	slli r4, r20, 9
	setle.f r10, r17, r20
	setle.f r11, r20, r17
	srli r5, r20, 23
	seteq r4, r4, r17
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r11, r10
	and r4, r5, r4
	addli r5, r17, 0
	bneq r4, zero, .LBB0_111
# %bb.110:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r5, r24, r20
.LBB0_111:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r23, r20, r9
	storeli.w r5, -320(r30)                 # 4-byte Folded Spill
	slli r4, r23, 9
	setle.f r10, r17, r23
	setle.f r11, r23, r17
	srli r5, r23, 23
	seteq r4, r4, r17
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r11, r10
	and r4, r5, r4
	addli r5, r17, 0
	bneq r4, zero, .LBB0_113
# %bb.112:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r5, r9, r23
.LBB0_113:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r6, -812(r30)                 # 4-byte Folded Spill
	add.f.rn r6, r23, r22
	storeli.w r5, -344(r30)                 # 4-byte Folded Spill
	addli r19, r3, 0
	addli r24, r1, 0
	storeli.w r27, -1204(r30)               # 4-byte Folded Spill
	storeli.w r28, -1208(r30)               # 4-byte Folded Spill
	slli r4, r6, 9
	setle.f r9, r17, r6
	setle.f r10, r6, r17
	srli r5, r6, 23
	seteq r4, r4, r17
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r10, r9
	and r4, r5, r4
	addli r5, r17, 0
	bneq r4, zero, .LBB0_115
# %bb.114:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r5, r22, r6
.LBB0_115:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r11, r6, r8
	storeli.w r6, -1036(r30)                # 4-byte Folded Spill
	storeli.w r5, -1056(r30)                # 4-byte Folded Spill
	loadli.w r10,  -1144(r30)               # 4-byte Folded Reload
	loadli.w r28,  -1128(r30)               # 4-byte Folded Reload
	loadli.w r27,  -1124(r30)               # 4-byte Folded Reload
	loadli.w r3,  -1096(r30)                # 4-byte Folded Reload
	loadli.w r1,  -1092(r30)                # 4-byte Folded Reload
	slli r4, r11, 9
	setle.f r6, r17, r11
	setle.f r9, r11, r17
	srli r5, r11, 23
	seteq r4, r4, r17
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r9, r6
	and r4, r5, r4
	addli r5, r17, 0
	bneq r4, zero, .LBB0_117
# %bb.116:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r5, r8, r11
.LBB0_117:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r9, r11, r2
	storeli.w r5, -348(r30)                 # 4-byte Folded Spill
	loadli.w r22,  -1108(r30)               # 4-byte Folded Reload
	slli r4, r9, 9
	setle.f r6, r17, r9
	setle.f r8, r9, r17
	srli r5, r9, 23
	seteq r4, r4, r17
	andi r5, r5, 255
	setlti r5, r5, 255
	or r4, r5, r4
	and r5, r8, r6
	and r4, r5, r4
	addli r5, r17, 0
	bneq r4, zero, .LBB0_119
# %bb.118:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r5, r2, r9
.LBB0_119:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r8, r9, r14
	storeli.w r5, -1068(r30)                # 4-byte Folded Spill
	slli r2, r8, 9
	setle.f r5, r17, r8
	setle.f r6, r8, r17
	srli r4, r8, 23
	seteq r2, r2, r17
	andi r4, r4, 255
	setlti r4, r4, 255
	or r2, r4, r2
	and r4, r6, r5
	and r2, r4, r2
	addli r4, r17, 0
	bneq r2, zero, .LBB0_121
# %bb.120:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r4, r14, r8
.LBB0_121:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r7, -1004(r30)                # 4-byte Folded Spill
	loadli.w r7,  -1084(r30)                # 4-byte Folded Reload
	storeli.w r4, -1076(r30)                # 4-byte Folded Spill
	add.f.rn r14, r8, r7
	slli r2, r14, 9
	setle.f r5, r17, r14
	setle.f r6, r14, r17
	srli r4, r14, 23
	seteq r2, r2, r17
	andi r4, r4, 255
	setlti r4, r4, 255
	or r2, r4, r2
	and r4, r6, r5
	and r2, r4, r2
	addli r4, r17, 0
	bneq r2, zero, .LBB0_123
# %bb.122:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r4, r7, r14
.LBB0_123:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r7, r14, r1
	storeli.w r4, -1084(r30)                # 4-byte Folded Spill
	slli r2, r7, 9
	setle.f r5, r17, r7
	setle.f r6, r7, r17
	srli r4, r7, 23
	seteq r2, r2, r17
	andi r4, r4, 255
	setlti r4, r4, 255
	or r2, r4, r2
	and r4, r6, r5
	and r2, r4, r2
	addli r4, r17, 0
	bneq r2, zero, .LBB0_125
# %bb.124:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r4, r1, r7
.LBB0_125:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r6, r7, r3
	storeli.w r4, -1092(r30)                # 4-byte Folded Spill
	slli r1, r6, 9
	setle.f r4, r17, r6
	setle.f r5, r6, r17
	srli r2, r6, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r5, r4
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_127
# %bb.126:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r3, r6
.LBB0_127:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r5, r6, r22
	storeli.w r2, -1096(r30)                # 4-byte Folded Spill
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
	bneq r1, zero, .LBB0_129
# %bb.128:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r22, r5
.LBB0_129:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r22, r5, r26
	storeli.w r2, -1108(r30)                # 4-byte Folded Spill
	slli r1, r22, 9
	setle.f r3, r17, r22
	setle.f r4, r22, r17
	srli r2, r22, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r26, r22
.LBB0_131:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r26, r22, r27
	storeli.w r2, -1116(r30)                # 4-byte Folded Spill
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
	bneq r1, zero, .LBB0_133
# %bb.132:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r27, r26
.LBB0_133:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r27, r26, r28
	storeli.w r2, -1124(r30)                # 4-byte Folded Spill
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
	bneq r1, zero, .LBB0_135
# %bb.134:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r28, r27
.LBB0_135:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r28, r27, r10
	storeli.w r2, -1128(r30)                # 4-byte Folded Spill
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
	bneq r1, zero, .LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r10, r28
.LBB0_137:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r21, -996(r30)                # 4-byte Folded Spill
	loadli.w r21,  -1132(r30)               # 4-byte Folded Reload
	storeli.w r2, -1144(r30)                # 4-byte Folded Spill
	add.f.rn r10, r28, r21
	slli r1, r10, 9
	setle.f r3, r17, r10
	setle.f r4, r10, r17
	srli r2, r10, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_139
# %bb.138:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r21, r10
.LBB0_139:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r10, -1132(r30)               # 4-byte Folded Spill
	add.f.rn r10, r10, r24
	storeli.w r3, -1152(r30)                # 4-byte Folded Spill
	addli r21, r25, 0
	slli r1, r10, 9
	setle.f r3, r17, r10
	setle.f r4, r10, r17
	srli r2, r10, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_141
# %bb.140:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r24, r10
.LBB0_141:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r24,  -1148(r30)               # 4-byte Folded Reload
	storeli.w r2, -1160(r30)                # 4-byte Folded Spill
	add.f.rn r25, r10, r24
	slli r1, r25, 9
	setle.f r3, r17, r25
	setle.f r4, r25, r17
	srli r2, r25, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_143
# %bb.142:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r24, r25
.LBB0_143:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r25, -1148(r30)               # 4-byte Folded Spill
	add.f.rn r25, r25, r19
	storeli.w r3, -1168(r30)                # 4-byte Folded Spill
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
	bneq r1, zero, .LBB0_145
# %bb.144:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r19, r25
.LBB0_145:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r24,  -1164(r30)               # 4-byte Folded Reload
	storeli.w r25, -1156(r30)               # 4-byte Folded Spill
	storeli.w r2, -1176(r30)                # 4-byte Folded Spill
	storeli.w r21, -992(r30)                # 4-byte Folded Spill
	add.f.rn r25, r25, r24
	slli r1, r25, 9
	setle.f r3, r17, r25
	setle.f r4, r25, r17
	srli r2, r25, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	addli r2, r25, 0
	bneq r1, zero, .LBB0_147
# %bb.146:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r24, r2
.LBB0_147:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r25,  -1172(r30)               # 4-byte Folded Reload
	storeli.w r3, -1184(r30)                # 4-byte Folded Spill
	storeli.w r2, -1164(r30)                # 4-byte Folded Spill
	add.f.rn r21, r2, r25
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
	bneq r1, zero, .LBB0_149
# %bb.148:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r25, r2
.LBB0_149:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r21,  -1188(r30)               # 4-byte Folded Reload
	storeli.w r3, -1192(r30)                # 4-byte Folded Spill
	storeli.w r2, -1172(r30)                # 4-byte Folded Spill
	loadli.w r24,  -1208(r30)               # 4-byte Folded Reload
	add.f.rn r25, r2, r21
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
	bneq r1, zero, .LBB0_151
# %bb.150:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r21, r25
.LBB0_151:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r21, r25, r24
	storeli.w r2, -1200(r30)                # 4-byte Folded Spill
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
	bneq r1, zero, .LBB0_153
# %bb.152:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r24, r21
.LBB0_153:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r24,  -1196(r30)               # 4-byte Folded Reload
	storeli.w r21, -1188(r30)               # 4-byte Folded Spill
	storeli.w r3, -1208(r30)                # 4-byte Folded Spill
	add.f.rn r21, r21, r24
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
	bneq r1, zero, .LBB0_155
# %bb.154:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r24, r2
.LBB0_155:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r24,  -1204(r30)               # 4-byte Folded Reload
	storeli.w r3, -1216(r30)                # 4-byte Folded Spill
	storeli.w r2, -1196(r30)                # 4-byte Folded Spill
	add.f.rn r21, r2, r24
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
	bneq r1, zero, .LBB0_157
# %bb.156:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r24, r21
.LBB0_157:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r16, -1012(r30)               # 4-byte Folded Spill
	loadli.w r16,  -1212(r30)               # 4-byte Folded Reload
	storeli.w r21, -1204(r30)               # 4-byte Folded Spill
	storeli.w r3, -1220(r30)                # 4-byte Folded Spill
	loadli.w r24,  -1052(r30)               # 4-byte Folded Reload
	add.f.rn r21, r21, r16
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
	bneq r1, zero, .LBB0_159
# %bb.158:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r16, r2
.LBB0_159:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r12, -1016(r30)               # 4-byte Folded Spill
	loadli.w r12,  -1224(r30)               # 4-byte Folded Reload
	storeli.w r3, -1232(r30)                # 4-byte Folded Spill
	storeli.w r2, -1212(r30)                # 4-byte Folded Spill
	loadli.w r21,  -1104(r30)               # 4-byte Folded Reload
	add.f.rn r16, r2, r12
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
	bneq r1, zero, .LBB0_161
# %bb.160:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r12, r16
.LBB0_161:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r23, -1032(r30)               # 4-byte Folded Spill
	loadli.w r23,  -1180(r30)               # 4-byte Folded Reload
	storeli.w r2, -1240(r30)                # 4-byte Folded Spill
	add.f.rn r12, r16, r23
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
	div.f.rn r3, r23, r12
.LBB0_163:                              #   in Loop: Header=BB0_5 Depth=1
	addli r23, r15, 0
	loadli.w r15,  -1140(r30)               # 4-byte Folded Reload
	storeli.w r12, -1228(r30)               # 4-byte Folded Spill
	storeli.w r3, -1248(r30)                # 4-byte Folded Spill
	add.f.rn r12, r12, r15
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
	loadli.w r12,  -1064(r30)               # 4-byte Folded Reload
	bneq r1, zero, .LBB0_165
# %bb.164:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r15, r2
.LBB0_165:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r20, -1028(r30)               # 4-byte Folded Spill
	loadli.w r20,  -1120(r30)               # 4-byte Folded Reload
	storeli.w r3, -1252(r30)                # 4-byte Folded Spill
	storeli.w r2, -1236(r30)                # 4-byte Folded Spill
	add.f.rn r15, r2, r20
	slli r1, r15, 9
	setle.f r3, r17, r15
	setle.f r4, r15, r17
	srli r2, r15, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_167
# %bb.166:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r20, r15
.LBB0_167:                              #   in Loop: Header=BB0_5 Depth=1
	addli r20, r13, 0
	loadli.w r13,  -1112(r30)               # 4-byte Folded Reload
	storeli.w r15, -1244(r30)               # 4-byte Folded Spill
	storeli.w r3, -1264(r30)                # 4-byte Folded Spill
	add.f.rn r15, r15, r13
	slli r1, r15, 9
	setle.f r3, r17, r15
	setle.f r4, r15, r17
	srli r2, r15, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	addli r2, r15, 0
	loadli.w r15,  -1072(r30)               # 4-byte Folded Reload
	bneq r1, zero, .LBB0_169
# %bb.168:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r13, r2
.LBB0_169:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r13, r2, r21
	storeli.w r3, -1272(r30)                # 4-byte Folded Spill
	storeli.w r2, -1256(r30)                # 4-byte Folded Spill
	slli r1, r13, 9
	setle.f r3, r17, r13
	setle.f r4, r13, r17
	srli r2, r13, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_171
# %bb.170:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r21, r13
.LBB0_171:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r21,  -1088(r30)               # 4-byte Folded Reload
	storeli.w r13, -1260(r30)               # 4-byte Folded Spill
	storeli.w r3, -1280(r30)                # 4-byte Folded Spill
	add.f.rn r13, r13, r21
	slli r1, r13, 9
	setle.f r3, r17, r13
	setle.f r4, r13, r17
	srli r2, r13, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r17, 0
	and r1, r2, r1
	addli r2, r13, 0
	loadli.w r13,  -1080(r30)               # 4-byte Folded Reload
	bneq r1, zero, .LBB0_173
# %bb.172:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r21, r2
.LBB0_173:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r16, -1224(r30)               # 4-byte Folded Spill
	loadli.w r16,  -1100(r30)               # 4-byte Folded Reload
	storeli.w r5, -1088(r30)                # 4-byte Folded Spill
	storeli.w r3, -1288(r30)                # 4-byte Folded Spill
	storeli.w r2, -1268(r30)                # 4-byte Folded Spill
	add.f.rn r5, r2, r16
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
	bneq r1, zero, .LBB0_175
# %bb.174:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r16, r5
.LBB0_175:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r3, r5, r13
	storeli.w r5, -1276(r30)                # 4-byte Folded Spill
	storeli.w r2, -1296(r30)                # 4-byte Folded Spill
	loadli.w r21,  -1044(r30)               # 4-byte Folded Reload
	addli r16, r18, 0
	slli r1, r3, 9
	setle.f r4, r17, r3
	setle.f r5, r3, r17
	srli r2, r3, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r5, r4
	addli r4, r17, 0
	and r1, r2, r1
	addli r2, r3, 0
	loadli.w r3,  -1136(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_177
# %bb.176:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r4, r13, r2
.LBB0_177:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r13, r2, r15
	storeli.w r4, -1304(r30)                # 4-byte Folded Spill
	storeli.w r2, -1284(r30)                # 4-byte Folded Spill
	slli r1, r13, 9
	setle.f r4, r17, r13
	setle.f r5, r13, r17
	srli r2, r13, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r5, r4
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_179
# %bb.178:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r15, r13
.LBB0_179:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r15, r13, r12
	storeli.w r2, -1312(r30)                # 4-byte Folded Spill
	storeli.w r13, -1292(r30)               # 4-byte Folded Spill
	addli r13, r20, 0
	slli r1, r15, 9
	setle.f r4, r17, r15
	setle.f r5, r15, r17
	srli r2, r15, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r5, r4
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_181
# %bb.180:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r12, r15
.LBB0_181:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r20,  -1060(r30)               # 4-byte Folded Reload
	storeli.w r2, -1320(r30)                # 4-byte Folded Spill
	add.f.rn r12, r15, r20
	slli r1, r12, 9
	setle.f r4, r17, r12
	setle.f r5, r12, r17
	srli r2, r12, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r5, r4
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_183
# %bb.182:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r20, r12
.LBB0_183:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r15, -1300(r30)               # 4-byte Folded Spill
	add.f.rn r15, r12, r24
	storeli.w r2, -1328(r30)                # 4-byte Folded Spill
	storeli.w r12, -1308(r30)               # 4-byte Folded Spill
	slli r1, r15, 9
	setle.f r4, r17, r15
	setle.f r5, r15, r17
	srli r2, r15, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r5, r4
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_185
# %bb.184:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r24, r15
.LBB0_185:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r20, r15, r21
	storeli.w r2, -1332(r30)                # 4-byte Folded Spill
	storeli.w r25, -1180(r30)               # 4-byte Folded Spill
	storeli.w r15, -1316(r30)               # 4-byte Folded Spill
	slli r1, r20, 9
	setle.f r4, r17, r20
	setle.f r5, r20, r17
	srli r2, r20, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r5, r4
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_187
# %bb.186:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r21, r20
.LBB0_187:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r25,  -1024(r30)               # 4-byte Folded Reload
	storeli.w r2, -1340(r30)                # 4-byte Folded Spill
	loadli.w r24,  -1020(r30)               # 4-byte Folded Reload
	add.f.rn r21, r20, r25
	slli r1, r21, 9
	setle.f r4, r17, r21
	setle.f r5, r21, r17
	srli r2, r21, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r5, r4
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_189
# %bb.188:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r25, r21
.LBB0_189:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r25, r21, r24
	storeli.w r2, -1352(r30)                # 4-byte Folded Spill
	slli r1, r25, 9
	setle.f r4, r17, r25
	setle.f r5, r25, r17
	srli r2, r25, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r5, r4
	and r1, r2, r1
	addli r2, r17, 0
	bneq r1, zero, .LBB0_191
# %bb.190:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r24, r25
.LBB0_191:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r6, -1080(r30)                # 4-byte Folded Spill
	loadli.w r6,  -1008(r30)                # 4-byte Folded Reload
	storeli.w r2, -1356(r30)                # 4-byte Folded Spill
	add.f.rn r24, r25, r6
	slli r1, r24, 9
	setle.f r4, r17, r24
	setle.f r5, r24, r17
	srli r2, r24, 23
	seteq r1, r1, r17
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r5, r4
	addli r4, r17, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_193
# %bb.192:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r4, r6, r24
.LBB0_193:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r1, r24, r3
	storeli.w r4, -1360(r30)                # 4-byte Folded Spill
	storeli.w r25, -1344(r30)               # 4-byte Folded Spill
	storeli.w r21, -1336(r30)               # 4-byte Folded Spill
	storeli.w r20, -1324(r30)               # 4-byte Folded Spill
	storeli.w r10, -1140(r30)               # 4-byte Folded Spill
	storeli.w r28, -1120(r30)               # 4-byte Folded Spill
	storeli.w r27, -1112(r30)               # 4-byte Folded Spill
	storeli.w r26, -1104(r30)               # 4-byte Folded Spill
	storeli.w r22, -1100(r30)               # 4-byte Folded Spill
	storeli.w r7, -1072(r30)                # 4-byte Folded Spill
	storeli.w r14, -1064(r30)               # 4-byte Folded Spill
	storeli.w r8, -1060(r30)                # 4-byte Folded Spill
	storeli.w r9, -1052(r30)                # 4-byte Folded Spill
	storeli.w r11, -1044(r30)               # 4-byte Folded Spill
	storeli.w r13, -1024(r30)               # 4-byte Folded Spill
	storeli.w r23, -1020(r30)               # 4-byte Folded Spill
	storeli.w r16, -1008(r30)               # 4-byte Folded Spill
	storeli.w r24, -1348(r30)               # 4-byte Folded Spill
	slli r2, r1, 9
	setle.f r5, r17, r1
	setle.f r6, r1, r17
	srli r4, r1, 23
	seteq r2, r2, r17
	andi r4, r4, 255
	setlti r4, r4, 255
	or r2, r4, r2
	and r4, r6, r5
	and r2, r4, r2
	bneq r2, zero, .LBB0_2
# %bb.194:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r17, r3, r1
	j .LBB0_2
.LBB0_195:                              # %._crit_edge
	.loc	1 56 4 epilogue_begin is_stmt 1 # ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py:56:4
	addli sp, sp, 1368
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
	.long	1432                            # 0x598
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
.asciz	"ckrnppsyasghhabqjwnawanahz267w2p2ikdhgiedfzzfbzr5vvn.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/kr" # string offset=63
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
