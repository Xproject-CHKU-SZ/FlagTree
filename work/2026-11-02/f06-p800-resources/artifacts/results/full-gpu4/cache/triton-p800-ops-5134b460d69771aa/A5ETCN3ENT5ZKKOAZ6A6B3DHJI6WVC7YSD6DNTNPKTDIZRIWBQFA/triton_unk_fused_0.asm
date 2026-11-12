	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/et" "cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py"
	.loc	1 22 0                          # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1448
	lui r1, :hi20:global_smem
	core_id r3
	addli r30, sp, 1384
	lui r6, 260096
	load_param_i r11, 0
	slli r2, r3, 2
	addli r1, r1, :lo12:global_smem
	loadli.w r9,  36(r30)
	loadli.w r4,  32(r30)
	loadli.w r8,  40(r30)
	add.s r5, r2, r1
	mul.s r4, r9, r4
	stores.w zero, 0(r5)
	stores.w zero, 256(r5)
	storeli.w r5, -356(r30)                 # 4-byte Folded Spill
	stores.w r6, 512(r5)
	lui r5, 15
	mul.s r12, r4, r8
	mfence { lm, sm, gm }
	ori r10, r5, 4095
	csr_set csr3, r10
	sync_group
	ble.s r12, r11, .LBB0_195
# %bb.1:                                # %.lr.ph
	addli r4, zero, 64
	loadli.w r6,  -356(r30)                 # 4-byte Folded Reload
	addli r15, zero, 2
	vxor.u.mz vr0{mr1}, vr0, vr0
	#APP
	vxor.s.mz vr1{mr1}, vr1, vr1
	#NO_APP
	load_param_i r14, 1
	storeli.w r10, -352(r30)                # 4-byte Folded Spill
	storeli.w r12, -364(r30)                # 4-byte Folded Spill
	vadd.s.mz vr2{mr1}, zero, vr0
	div.s r13, r3, r4
	load.d r[4:5], 8(r30)
	storeli.w r14, -380(r30)                # 4-byte Folded Spill
	addli r7, r6, 256
	addli r6, r6, 512
	storeli.w r6, -376(r30)                 # 4-byte Folded Spill
	storeli.w r7, -372(r30)                 # 4-byte Folded Spill
	slli r6, r13, 6
	storeli.w r13, -368(r30)                # 4-byte Folded Spill
	sub.s r6, r3, r6
	andi r3, r3, 63
	slli r6, r6, 5
	storeli.w r3, -384(r30)                 # 4-byte Folded Spill
	lui r3, 1048575
	storeli.w r6, -388(r30)                 # 4-byte Folded Spill
	sext_int2long r[6:7], r6
	ori r3, r3, 3840
	sll.d r[6:7], r[6:7], r15
	and r2, r2, r3
	add.ul r[3:4], r[4:5], r[6:7]
	add.s r1, r2, r1
	lui r2, 15
	addli r5, zero, 128
	addli r6, r30, -128
	store.d r[3:4], -400(r30)               # 8-byte Folded Spill
	lui r3, 260096
	addli r2, r2, 4095
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
	addli r4, zero, 2047
	vor.f.mz vr3{mr1}, r3, vr0
	vmmov mr0, r2
	addli r2, r1, 256
	addli r1, r1, 512
	storeli.w r1, -408(r30)                 # 4-byte Folded Spill
	storeli.w r2, -336(r30)                 # 4-byte Folded Spill
	vor.f.mh vr2{mr0}, vr1, vr3
	vadd.f.mz.rn vr3{mr1}, vr2, vr2
	vextracti.f r1, 1(vr2)
	vextracti.f r2, 2(vr2)
	vextracti.f r3, 3(vr2)
	vextracti.f r7, 1(vr3)
	vextracti.f r15, 2(vr3)
	vextracti.f r16, 3(vr3)
	veq.f.mz mr2{mr1}, vr3, vr0
	div.f.rn r1, r1, r7
	storeli.w r7, -340(r30)                 # 4-byte Folded Spill
	storeli.w r15, -344(r30)                # 4-byte Folded Spill
	storeli.w r16, -348(r30)                # 4-byte Folded Spill
	storeli.w r1, -1368(r30)                # 4-byte Folded Spill
	div.f.rn r1, r2, r15
	storeli.w r1, -1372(r30)                # 4-byte Folded Spill
	div.f.rn r1, r3, r16
	storeli.w r1, -1376(r30)                # 4-byte Folded Spill
	vextracti.f r1, 4(vr2)
	storeli.w r1, -1380(r30)                # 4-byte Folded Spill
	lui r1, 239665
	ori r1, r1, 623
	storeli.w r1, -404(r30)                 # 4-byte Folded Spill
	j .LBB0_5
.LBB0_2:                                #   in Loop: Header=BB0_5 Depth=1
	loadli.w r4,  -408(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -1048(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1056(r30)                # 4-byte Folded Reload
	loadli.w r7,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r17,  -572(r30)                # 4-byte Folded Reload
	loadli.w r13,  -600(r30)                # 4-byte Folded Reload
	loadli.w r8,  -616(r30)                 # 4-byte Folded Reload
	loadli.w r14,  -632(r30)                # 4-byte Folded Reload
	loadli.w r10,  -652(r30)                # 4-byte Folded Reload
	loadli.w r15,  -668(r30)                # 4-byte Folded Reload
	loadli.w r9,  -932(r30)                 # 4-byte Folded Reload
	loadli.w r20,  -536(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	stores.w r3, 0(r4)
	loadli.w r2,  -892(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -896(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r3, r2
	storeli.w r1, -1048(r30)                # 4-byte Folded Spill
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r6, r7
	add.f.rn r3, r2, r3
	loadli.w r2,  -888(r30)                 # 4-byte Folded Reload
	sub.f.rn r21, r2, r3
	loadli.w r2,  -876(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r17, r21
	mul.f.rn r21, r21, r21
	add.f.rn r3, r3, r4
	sub.f.rn r12, r2, r3
	loadli.w r2,  -584(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r2, r12
	mul.f.rn r12, r12, r12
	add.f.rn r3, r3, r4
	loadli.w r4,  -868(r30)                 # 4-byte Folded Reload
	sub.f.rn r11, r4, r3
	mul.f.rn r4, r13, r11
	mul.f.rn r11, r11, r11
	add.f.rn r3, r3, r4
	loadli.w r4,  -860(r30)                 # 4-byte Folded Reload
	sub.f.rn r26, r4, r3
	mul.f.rn r4, r8, r26
	mul.f.rn r26, r26, r26
	add.f.rn r3, r3, r4
	loadli.w r4,  -852(r30)                 # 4-byte Folded Reload
	sub.f.rn r18, r4, r3
	mul.f.rn r4, r14, r18
	mul.f.rn r18, r18, r18
	add.f.rn r3, r3, r4
	loadli.w r4,  -840(r30)                 # 4-byte Folded Reload
	sub.f.rn r4, r4, r3
	mul.f.rn r5, r10, r4
	mul.f.rn r4, r4, r4
	add.f.rn r3, r3, r5
	loadli.w r5,  -832(r30)                 # 4-byte Folded Reload
	sub.f.rn r19, r5, r3
	mul.f.rn r5, r15, r19
	mul.f.rn r19, r19, r19
	add.f.rn r3, r3, r5
	loadli.w r5,  -980(r30)                 # 4-byte Folded Reload
	sub.f.rn r27, r5, r3
	mul.f.rn r5, r1, r27
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r5
	loadli.w r5,  -972(r30)                 # 4-byte Folded Reload
	sub.f.rn r24, r5, r3
	mul.f.rn r5, r1, r24
	loadli.w r1,  -284(r30)                 # 4-byte Folded Reload
	mul.f.rn r24, r24, r24
	add.f.rn r3, r3, r5
	loadli.w r5,  -968(r30)                 # 4-byte Folded Reload
	sub.f.rn r23, r5, r3
	mul.f.rn r5, r1, r23
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r5
	loadli.w r5,  -956(r30)                 # 4-byte Folded Reload
	sub.f.rn r16, r5, r3
	mul.f.rn r5, r1, r16
	loadli.w r1,  -292(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r16, r16
	add.f.rn r3, r3, r5
	loadli.w r5,  -948(r30)                 # 4-byte Folded Reload
	sub.f.rn r5, r5, r3
	storeli.w r5, -840(r30)                 # 4-byte Folded Spill
	mul.f.rn r5, r1, r5
	loadli.w r1,  -296(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r3, r5
	loadli.w r3,  -940(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r3, r5
	mul.f.rn r22, r1, r3
	loadli.w r1,  -300(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r3, r3
	add.f.rn r5, r5, r22
	sub.f.rn r9, r9, r5
	mul.f.rn r22, r1, r9
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	storeli.w r9, -832(r30)                 # 4-byte Folded Spill
	loadli.w r9,  -912(r30)                 # 4-byte Folded Reload
	add.f.rn r22, r5, r22
	loadli.w r5,  -924(r30)                 # 4-byte Folded Reload
	sub.f.rn r5, r5, r22
	mul.f.rn r28, r1, r5
	loadli.w r1,  -308(r30)                 # 4-byte Folded Reload
	add.f.rn r28, r22, r28
	sub.f.rn r22, r9, r28
	mul.f.rn r9, r1, r22
	loadli.w r1,  -312(r30)                 # 4-byte Folded Reload
	mul.f.rn r22, r22, r22
	add.f.rn r9, r28, r9
	mul.f.rn r28, r6, r6
	loadli.w r6,  -900(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r6, r9
	mul.f.rn r28, r28, r20
	mul.f.rn r20, r1, r6
	mul.f.rn r28, r28, r7
	loadli.w r1,  -1048(r30)                # 4-byte Folded Reload
	loadli.w r7,  -952(r30)                 # 4-byte Folded Reload
	mul.f.rn r6, r6, r6
	add.f.rn r9, r9, r20
	loadli.w r20,  -524(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r28
	mul.f.rn r20, r20, r21
	sub.f.rn r21, r7, r9
	loadli.w r7,  -992(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r7, r1
	mul.f.rn r20, r17, r20
	loadli.w r7,  -316(r30)                 # 4-byte Folded Reload
	loadli.w r17,  -1112(r30)               # 4-byte Folded Reload
	mul.f.rn r28, r7, r21
	loadli.w r7,  -988(r30)                 # 4-byte Folded Reload
	mul.f.rn r21, r21, r21
	add.f.rn r1, r1, r20
	loadli.w r20,  -540(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r20, r12
	add.f.rn r9, r9, r28
	add.f.rn r1, r7, r1
	loadli.w r7,  -936(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r2, r20
	sub.f.rn r12, r7, r9
	loadli.w r2,  -320(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -560(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r7, r11
	loadli.w r7,  -576(r30)                 # 4-byte Folded Reload
	mul.f.rn r28, r2, r12
	add.f.rn r1, r1, r20
	loadli.w r2,  -984(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r13, r11
	loadli.w r13,  -1120(r30)               # 4-byte Folded Reload
	add.f.rn r1, r2, r1
	add.f.rn r9, r9, r28
	loadli.w r2,  -920(r30)                 # 4-byte Folded Reload
	loadli.w r28,  -1088(r30)               # 4-byte Folded Reload
	sub.f.rn r11, r2, r9
	add.f.rn r1, r1, r20
	mul.f.rn r20, r7, r26
	loadli.w r7,  -1044(r30)                # 4-byte Folded Reload
	loadli.w r2,  -976(r30)                 # 4-byte Folded Reload
	mul.f.rn r26, r7, r11
	add.f.rn r1, r2, r1
	mul.f.rn r20, r8, r20
	loadli.w r2,  -964(r30)                 # 4-byte Folded Reload
	loadli.w r8,  -1060(r30)                # 4-byte Folded Reload
	mul.f.rn r11, r11, r11
	add.f.rn r20, r1, r20
	loadli.w r1,  -596(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r9, r26
	mul.f.rn r18, r1, r18
	loadli.w r1,  -904(r30)                 # 4-byte Folded Reload
	sub.f.rn r1, r1, r9
	add.f.rn r20, r2, r20
	loadli.w r2,  -612(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r14, r18
	mul.f.rn r4, r2, r4
	loadli.w r2,  -960(r30)                 # 4-byte Folded Reload
	mul.f.rn r14, r23, r23
	mul.f.rn r26, r8, r1
	mul.f.rn r1, r1, r1
	add.f.rn r18, r20, r18
	mul.f.rn r20, r10, r4
	loadli.w r10,  -1132(r30)               # 4-byte Folded Reload
	add.f.rn r9, r9, r26
	mul.f.rn r26, r27, r27
	add.f.rn r18, r2, r18
	loadli.w r2,  -880(r30)                 # 4-byte Folded Reload
	sub.f.rn r4, r2, r9
	loadli.w r2,  -324(r30)                 # 4-byte Folded Reload
	add.f.rn r18, r18, r20
	mul.f.rn r20, r2, r4
	loadli.w r2,  -620(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r4, r4
	mul.f.rn r19, r2, r19
	loadli.w r2,  -944(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r9, r20
	add.f.rn r18, r2, r18
	loadli.w r2,  -864(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r15, r19
	sub.f.rn r19, r2, r9
	loadli.w r2,  -636(r30)                 # 4-byte Folded Reload
	add.f.rn r18, r18, r20
	mul.f.rn r20, r2, r26
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	mul.f.rn r26, r2, r19
	loadli.w r2,  -928(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r19, r19
	add.f.rn r18, r2, r18
	loadli.w r2,  -276(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r2, r20
	add.f.rn r9, r9, r26
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	add.f.rn r18, r18, r20
	mul.f.rn r20, r2, r24
	loadli.w r2,  -844(r30)                 # 4-byte Folded Reload
	loadli.w r24,  -1096(r30)               # 4-byte Folded Reload
	sub.f.rn r27, r2, r9
	loadli.w r2,  -916(r30)                 # 4-byte Folded Reload
	add.f.rn r18, r2, r18
	loadli.w r2,  -280(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r2, r20
	loadli.w r2,  -360(r30)                 # 4-byte Folded Reload
	mul.f.rn r26, r2, r27
	loadli.w r2,  -672(r30)                 # 4-byte Folded Reload
	add.f.rn r18, r18, r20
	mul.f.rn r14, r2, r14
	loadli.w r2,  -908(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r9, r26
	loadli.w r26,  -1080(r30)               # 4-byte Folded Reload
	add.f.rn r18, r2, r18
	loadli.w r2,  -284(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r2, r14
	loadli.w r2,  -828(r30)                 # 4-byte Folded Reload
	sub.f.rn r14, r2, r9
	loadli.w r2,  -816(r30)                 # 4-byte Folded Reload
	add.f.rn r18, r18, r20
	mul.f.rn r16, r2, r16
	loadli.w r2,  -884(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r26, r14
	mul.f.rn r14, r14, r14
	add.f.rn r18, r2, r18
	loadli.w r2,  -288(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r2, r16
	add.f.rn r9, r9, r20
	loadli.w r2,  -840(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r2, r2
	loadli.w r2,  -812(r30)                 # 4-byte Folded Reload
	sub.f.rn r15, r2, r9
	add.f.rn r16, r18, r16
	loadli.w r2,  -996(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r2, r20
	loadli.w r2,  -872(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r28, r15
	add.f.rn r16, r2, r16
	loadli.w r2,  -292(r30)                 # 4-byte Folded Reload
	mul.f.rn r15, r15, r15
	mul.f.rn r18, r2, r18
	loadli.w r2,  -1000(r30)                # 4-byte Folded Reload
	add.f.rn r9, r9, r20
	add.f.rn r16, r16, r18
	mul.f.rn r18, r2, r3
	loadli.w r2,  -804(r30)                 # 4-byte Folded Reload
	sub.f.rn r3, r2, r9
	loadli.w r2,  -856(r30)                 # 4-byte Folded Reload
	add.f.rn r16, r2, r16
	loadli.w r2,  -296(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r2, r18
	loadli.w r2,  -832(r30)                 # 4-byte Folded Reload
	mul.f.rn r23, r24, r3
	mul.f.rn r20, r2, r2
	loadli.w r2,  -1004(r30)                # 4-byte Folded Reload
	add.f.rn r16, r16, r18
	add.f.rn r9, r9, r23
	loadli.w r23,  -1100(r30)               # 4-byte Folded Reload
	mul.f.rn r18, r2, r20
	loadli.w r2,  -848(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r5, r5
	add.f.rn r16, r2, r16
	loadli.w r2,  -300(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r2, r18
	loadli.w r2,  -796(r30)                 # 4-byte Folded Reload
	sub.f.rn r5, r2, r9
	loadli.w r2,  -1008(r30)                # 4-byte Folded Reload
	add.f.rn r16, r16, r18
	mul.f.rn r18, r2, r20
	loadli.w r2,  -836(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r23, r5
	mul.f.rn r5, r5, r5
	add.f.rn r16, r2, r16
	loadli.w r2,  -304(r30)                 # 4-byte Folded Reload
	mul.f.rn r18, r2, r18
	add.f.rn r9, r9, r20
	loadli.w r2,  -1012(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r2, r22
	loadli.w r2,  -784(r30)                 # 4-byte Folded Reload
	add.f.rn r18, r16, r18
	sub.f.rn r16, r2, r9
	loadli.w r2,  -824(r30)                 # 4-byte Folded Reload
	add.f.rn r18, r2, r18
	loadli.w r2,  -308(r30)                 # 4-byte Folded Reload
	mul.f.rn r22, r17, r16
	mul.f.rn r16, r16, r16
	mul.f.rn r20, r2, r20
	loadli.w r2,  -1016(r30)                # 4-byte Folded Reload
	add.f.rn r9, r9, r22
	add.f.rn r18, r18, r20
	mul.f.rn r20, r2, r6
	loadli.w r2,  -820(r30)                 # 4-byte Folded Reload
	add.f.rn r18, r2, r18
	loadli.w r2,  -776(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r2, r9
	loadli.w r2,  -312(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r2, r20
	loadli.w r2,  -1020(r30)                # 4-byte Folded Reload
	mul.f.rn r22, r13, r6
	add.f.rn r18, r18, r20
	mul.f.rn r20, r2, r21
	loadli.w r2,  -808(r30)                 # 4-byte Folded Reload
	mul.f.rn r21, r12, r12
	add.f.rn r9, r9, r22
	loadli.w r22,  -1128(r30)               # 4-byte Folded Reload
	add.f.rn r18, r2, r18
	loadli.w r2,  -316(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r2, r20
	loadli.w r2,  -768(r30)                 # 4-byte Folded Reload
	sub.f.rn r12, r2, r9
	loadli.w r2,  -1024(r30)                # 4-byte Folded Reload
	add.f.rn r18, r18, r20
	mul.f.rn r20, r2, r21
	loadli.w r2,  -800(r30)                 # 4-byte Folded Reload
	mul.f.rn r21, r22, r12
	mul.f.rn r12, r12, r12
	add.f.rn r18, r2, r18
	loadli.w r2,  -320(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r2, r20
	add.f.rn r9, r9, r21
	loadli.w r2,  -1028(r30)                # 4-byte Folded Reload
	add.f.rn r18, r18, r20
	mul.f.rn r20, r2, r11
	loadli.w r2,  -756(r30)                 # 4-byte Folded Reload
	sub.f.rn r11, r2, r9
	loadli.w r2,  -792(r30)                 # 4-byte Folded Reload
	add.f.rn r18, r2, r18
	mul.f.rn r20, r7, r20
	loadli.w r2,  -1032(r30)                # 4-byte Folded Reload
	loadli.w r7,  -1156(r30)                # 4-byte Folded Reload
	mul.f.rn r21, r10, r11
	mul.f.rn r1, r2, r1
	loadli.w r2,  -788(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r11, r11
	add.f.rn r18, r18, r20
	add.f.rn r9, r9, r21
	mul.f.rn r20, r8, r1
	loadli.w r1,  -748(r30)                 # 4-byte Folded Reload
	loadli.w r8,  -1148(r30)                # 4-byte Folded Reload
	mul.f.rn r21, r27, r27
	loadli.w r27,  -1164(r30)               # 4-byte Folded Reload
	add.f.rn r18, r2, r18
	loadli.w r2,  -1036(r30)                # 4-byte Folded Reload
	sub.f.rn r1, r1, r9
	mul.f.rn r4, r2, r4
	loadli.w r2,  -780(r30)                 # 4-byte Folded Reload
	add.f.rn r18, r18, r20
	mul.f.rn r20, r8, r1
	mul.f.rn r1, r1, r1
	add.f.rn r18, r2, r18
	loadli.w r2,  -324(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r9, r20
	mul.f.rn r20, r2, r4
	loadli.w r2,  -740(r30)                 # 4-byte Folded Reload
	sub.f.rn r4, r2, r9
	add.f.rn r18, r18, r20
	loadli.w r2,  -1040(r30)                # 4-byte Folded Reload
	mul.f.rn r19, r2, r19
	loadli.w r2,  -772(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r7, r4
	add.f.rn r18, r2, r18
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r4, r4
	mul.f.rn r19, r2, r19
	loadli.w r2,  -1052(r30)                # 4-byte Folded Reload
	add.f.rn r9, r9, r20
	mul.f.rn r20, r2, r21
	loadli.w r2,  -728(r30)                 # 4-byte Folded Reload
	add.f.rn r19, r18, r19
	sub.f.rn r18, r2, r9
	loadli.w r2,  -764(r30)                 # 4-byte Folded Reload
	add.f.rn r19, r2, r19
	loadli.w r2,  -360(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r2, r20
	mul.f.rn r21, r27, r18
	loadli.w r2,  -1064(r30)                # 4-byte Folded Reload
	mul.f.rn r18, r18, r18
	mul.f.rn r14, r2, r14
	loadli.w r2,  -760(r30)                 # 4-byte Folded Reload
	add.f.rn r19, r19, r20
	add.f.rn r9, r9, r21
	loadli.w r21,  -1172(r30)               # 4-byte Folded Reload
	mul.f.rn r20, r26, r14
	loadli.w r26,  -1180(r30)               # 4-byte Folded Reload
	add.f.rn r19, r2, r19
	loadli.w r2,  -720(r30)                 # 4-byte Folded Reload
	sub.f.rn r14, r2, r9
	loadli.w r2,  -1068(r30)                # 4-byte Folded Reload
	add.f.rn r19, r19, r20
	mul.f.rn r15, r2, r15
	loadli.w r2,  -752(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r21, r14
	mul.f.rn r14, r14, r14
	add.f.rn r19, r2, r19
	mul.f.rn r15, r28, r15
	loadli.w r2,  -708(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r9, r20
	mul.f.rn r20, r3, r3
	add.f.rn r15, r19, r15
	sub.f.rn r3, r2, r9
	loadli.w r2,  -1072(r30)                # 4-byte Folded Reload
	mul.f.rn r19, r2, r20
	loadli.w r2,  -744(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r26, r3
	add.f.rn r15, r2, r15
	loadli.w r2,  -1076(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r3
	mul.f.rn r19, r24, r19
	add.f.rn r9, r9, r20
	add.f.rn r15, r15, r19
	mul.f.rn r19, r2, r5
	loadli.w r2,  -700(r30)                 # 4-byte Folded Reload
	sub.f.rn r5, r2, r9
	loadli.w r2,  -736(r30)                 # 4-byte Folded Reload
	add.f.rn r15, r2, r15
	mul.f.rn r19, r23, r19
	loadli.w r23,  -1188(r30)               # 4-byte Folded Reload
	loadli.w r2,  -1084(r30)                # 4-byte Folded Reload
	mul.f.rn r20, r23, r5
	mul.f.rn r16, r2, r16
	loadli.w r2,  -732(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r5, r5
	add.f.rn r15, r15, r19
	mul.f.rn r19, r6, r6
	add.f.rn r9, r9, r20
	mul.f.rn r16, r17, r16
	loadli.w r17,  -1196(r30)               # 4-byte Folded Reload
	add.f.rn r15, r2, r15
	loadli.w r2,  -688(r30)                 # 4-byte Folded Reload
	sub.f.rn r6, r2, r9
	loadli.w r2,  -1092(r30)                # 4-byte Folded Reload
	add.f.rn r15, r15, r16
	mul.f.rn r16, r2, r19
	loadli.w r2,  -724(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r17, r6
	mul.f.rn r6, r6, r6
	add.f.rn r15, r2, r15
	mul.f.rn r16, r13, r16
	loadli.w r2,  -1104(r30)                # 4-byte Folded Reload
	loadli.w r13,  -1204(r30)               # 4-byte Folded Reload
	add.f.rn r9, r9, r19
	add.f.rn r15, r15, r16
	mul.f.rn r16, r2, r12
	loadli.w r2,  -680(r30)                 # 4-byte Folded Reload
	sub.f.rn r12, r2, r9
	loadli.w r2,  -716(r30)                 # 4-byte Folded Reload
	add.f.rn r15, r2, r15
	mul.f.rn r16, r22, r16
	loadli.w r2,  -1108(r30)                # 4-byte Folded Reload
	mul.f.rn r19, r13, r12
	mul.f.rn r12, r12, r12
	add.f.rn r15, r15, r16
	mul.f.rn r16, r2, r11
	loadli.w r2,  -712(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r9, r19
	add.f.rn r15, r2, r15
	loadli.w r2,  -664(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r10, r16
	loadli.w r10,  -1212(r30)               # 4-byte Folded Reload
	sub.f.rn r11, r2, r9
	loadli.w r2,  -1116(r30)                # 4-byte Folded Reload
	mul.f.rn r1, r2, r1
	add.f.rn r15, r15, r16
	loadli.w r2,  -704(r30)                 # 4-byte Folded Reload
	mul.f.rn r19, r10, r11
	mul.f.rn r11, r11, r11
	mul.f.rn r16, r8, r1
	add.f.rn r15, r2, r15
	loadli.w r1,  -644(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -1124(r30)                # 4-byte Folded Reload
	loadli.w r8,  -1220(r30)                # 4-byte Folded Reload
	add.f.rn r9, r9, r19
	mul.f.rn r4, r2, r4
	loadli.w r2,  -696(r30)                 # 4-byte Folded Reload
	loadli.w r19,  -1244(r30)               # 4-byte Folded Reload
	add.f.rn r15, r15, r16
	sub.f.rn r1, r1, r9
	mul.f.rn r4, r7, r4
	loadli.w r7,  -1224(r30)                # 4-byte Folded Reload
	add.f.rn r15, r2, r15
	loadli.w r2,  -1136(r30)                # 4-byte Folded Reload
	mul.f.rn r16, r8, r1
	add.f.rn r15, r15, r4
	add.f.rn r9, r9, r16
	mul.f.rn r16, r2, r18
	loadli.w r2,  -628(r30)                 # 4-byte Folded Reload
	sub.f.rn r4, r2, r9
	loadli.w r2,  -692(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r27, r16
	add.f.rn r15, r2, r15
	loadli.w r2,  -1144(r30)                # 4-byte Folded Reload
	mul.f.rn r18, r7, r4
	mul.f.rn r14, r2, r14
	loadli.w r2,  -684(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r4, r4
	add.f.rn r15, r15, r16
	add.f.rn r9, r9, r18
	mul.f.rn r16, r21, r14
	loadli.w r18,  -1236(r30)               # 4-byte Folded Reload
	add.f.rn r15, r2, r15
	loadli.w r2,  -604(r30)                 # 4-byte Folded Reload
	sub.f.rn r14, r2, r9
	loadli.w r2,  -1152(r30)                # 4-byte Folded Reload
	add.f.rn r15, r15, r16
	mul.f.rn r3, r2, r3
	loadli.w r2,  -676(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r18, r14
	mul.f.rn r14, r14, r14
	add.f.rn r15, r2, r15
	loadli.w r2,  -588(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r9, r16
	mul.f.rn r16, r26, r3
	sub.f.rn r3, r2, r9
	loadli.w r2,  -1160(r30)                # 4-byte Folded Reload
	add.f.rn r15, r15, r16
	mul.f.rn r5, r2, r5
	loadli.w r2,  -660(r30)                 # 4-byte Folded Reload
	mul.f.rn r16, r19, r3
	add.f.rn r15, r2, r15
	loadli.w r2,  -1168(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r3, r3
	mul.f.rn r5, r23, r5
	mul.f.rn r6, r2, r6
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	add.f.rn r9, r9, r16
	add.f.rn r15, r15, r5
	loadli.w r5,  -568(r30)                 # 4-byte Folded Reload
	mul.f.rn r6, r17, r6
	loadli.w r17,  -1252(r30)               # 4-byte Folded Reload
	sub.f.rn r5, r5, r9
	add.f.rn r15, r2, r15
	loadli.w r2,  -1176(r30)                # 4-byte Folded Reload
	mul.f.rn r16, r17, r5
	mul.f.rn r12, r2, r12
	loadli.w r2,  -640(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r5, r5
	add.f.rn r6, r15, r6
	add.f.rn r9, r9, r16
	mul.f.rn r12, r13, r12
	loadli.w r13,  -1256(r30)               # 4-byte Folded Reload
	add.f.rn r15, r2, r6
	loadli.w r6,  -548(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -1184(r30)                # 4-byte Folded Reload
	sub.f.rn r6, r6, r9
	mul.f.rn r11, r2, r11
	loadli.w r2,  -624(r30)                 # 4-byte Folded Reload
	add.f.rn r12, r15, r12
	mul.f.rn r15, r13, r6
	mul.f.rn r11, r10, r11
	loadli.w r10,  -1268(r30)               # 4-byte Folded Reload
	mul.f.rn r6, r6, r6
	add.f.rn r12, r2, r12
	loadli.w r2,  -1192(r30)                # 4-byte Folded Reload
	add.f.rn r9, r9, r15
	mul.f.rn r15, r1, r1
	loadli.w r1,  -532(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r12, r11
	sub.f.rn r1, r1, r9
	mul.f.rn r12, r2, r15
	loadli.w r2,  -608(r30)                 # 4-byte Folded Reload
	add.f.rn r11, r2, r11
	loadli.w r2,  -1200(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r10, r1
	mul.f.rn r12, r8, r12
	mul.f.rn r4, r2, r4
	loadli.w r2,  -592(r30)                 # 4-byte Folded Reload
	loadli.w r8,  -1276(r30)                # 4-byte Folded Reload
	mul.f.rn r1, r1, r1
	add.f.rn r9, r9, r15
	add.f.rn r11, r11, r12
	loadli.w r12,  -516(r30)                # 4-byte Folded Reload
	mul.f.rn r4, r7, r4
	loadli.w r7,  -580(r30)                 # 4-byte Folded Reload
	sub.f.rn r12, r12, r9
	add.f.rn r11, r2, r11
	loadli.w r2,  -1208(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r8, r12
	add.f.rn r4, r11, r4
	mul.f.rn r11, r2, r14
	loadli.w r14,  -508(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1216(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r2, r3
	loadli.w r2,  -1228(r30)                # 4-byte Folded Reload
	add.f.rn r9, r9, r15
	add.f.rn r4, r7, r4
	mul.f.rn r11, r18, r11
	loadli.w r15,  -1284(r30)               # 4-byte Folded Reload
	loadli.w r7,  -564(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r19, r3
	sub.f.rn r14, r14, r9
	add.f.rn r4, r4, r11
	mul.f.rn r11, r15, r14
	add.f.rn r4, r7, r4
	loadli.w r7,  -1292(r30)                # 4-byte Folded Reload
	add.f.rn r9, r9, r11
	add.f.rn r3, r4, r3
	mul.f.rn r4, r2, r5
	loadli.w r5,  -496(r30)                 # 4-byte Folded Reload
	loadli.w r11,  -552(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1232(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r2, r6
	loadli.w r2,  -1240(r30)                # 4-byte Folded Reload
	sub.f.rn r5, r5, r9
	add.f.rn r3, r11, r3
	mul.f.rn r4, r17, r4
	mul.f.rn r1, r2, r1
	loadli.w r2,  -1248(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r13, r6
	loadli.w r13,  -1300(r30)               # 4-byte Folded Reload
	mul.f.rn r11, r7, r5
	add.f.rn r3, r3, r4
	mul.f.rn r1, r10, r1
	loadli.w r10,  -1308(r30)               # 4-byte Folded Reload
	mul.f.rn r5, r5, r5
	add.f.rn r4, r9, r11
	loadli.w r9,  -544(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r9, r3
	loadli.w r9,  -488(r30)                 # 4-byte Folded Reload
	sub.f.rn r9, r9, r4
	add.f.rn r3, r3, r6
	loadli.w r6,  -528(r30)                 # 4-byte Folded Reload
	mul.f.rn r11, r13, r9
	mul.f.rn r9, r9, r9
	add.f.rn r3, r6, r3
	mul.f.rn r6, r12, r12
	loadli.w r12,  -520(r30)                # 4-byte Folded Reload
	add.f.rn r4, r4, r11
	loadli.w r11,  -480(r30)                # 4-byte Folded Reload
	add.f.rn r1, r3, r1
	mul.f.rn r3, r2, r6
	loadli.w r2,  -1260(r30)                # 4-byte Folded Reload
	sub.f.rn r11, r11, r4
	add.f.rn r1, r12, r1
	mul.f.rn r3, r8, r3
	mul.f.rn r12, r14, r14
	loadli.w r8,  -1316(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r10, r11
	add.f.rn r1, r1, r3
	mul.f.rn r3, r2, r12
	loadli.w r12,  -512(r30)                # 4-byte Folded Reload
	loadli.w r2,  -1264(r30)                # 4-byte Folded Reload
	add.f.rn r4, r4, r6
	loadli.w r6,  -468(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r12, r1
	mul.f.rn r3, r15, r3
	sub.f.rn r6, r6, r4
	add.f.rn r1, r1, r3
	mul.f.rn r3, r2, r5
	loadli.w r5,  -504(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -1272(r30)                # 4-byte Folded Reload
	mul.f.rn r12, r8, r6
	mul.f.rn r9, r2, r9
	loadli.w r2,  -1280(r30)                # 4-byte Folded Reload
	mul.f.rn r6, r6, r6
	add.f.rn r1, r5, r1
	loadli.w r5,  -460(r30)                 # 4-byte Folded Reload
	mul.f.rn r3, r7, r3
	loadli.w r7,  -1324(r30)                # 4-byte Folded Reload
	add.f.rn r4, r4, r12
	loadli.w r12,  -500(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r3
	sub.f.rn r5, r5, r4
	add.f.rn r1, r12, r1
	loadli.w r12,  -492(r30)                # 4-byte Folded Reload
	mul.f.rn r3, r7, r5
	mul.f.rn r5, r5, r5
	add.f.rn r3, r4, r3
	mul.f.rn r4, r13, r9
	mul.f.rn r9, r11, r11
	loadli.w r11,  -448(r30)                # 4-byte Folded Reload
	loadli.w r13,  -1332(r30)               # 4-byte Folded Reload
	sub.f.rn r11, r11, r3
	add.f.rn r1, r1, r4
	mul.f.rn r4, r2, r9
	loadli.w r2,  -1288(r30)                # 4-byte Folded Reload
	mul.f.rn r9, r13, r11
	mul.f.rn r4, r10, r4
	add.f.rn r1, r12, r1
	loadli.w r10,  -1344(r30)               # 4-byte Folded Reload
	add.f.rn r3, r3, r9
	add.f.rn r1, r1, r4
	mul.f.rn r4, r2, r6
	loadli.w r6,  -440(r30)                 # 4-byte Folded Reload
	loadli.w r9,  -484(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -1296(r30)                # 4-byte Folded Reload
	sub.f.rn r6, r6, r3
	mul.f.rn r4, r8, r4
	loadli.w r8,  -1336(r30)                # 4-byte Folded Reload
	add.f.rn r1, r9, r1
	mul.f.rn r9, r8, r6
	add.f.rn r1, r1, r4
	mul.f.rn r4, r2, r5
	loadli.w r5,  -476(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -1304(r30)                # 4-byte Folded Reload
	add.f.rn r3, r3, r9
	loadli.w r9,  -428(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	mul.f.rn r4, r7, r4
	mul.f.rn r5, r11, r11
	loadli.w r11,  -472(r30)                # 4-byte Folded Reload
	sub.f.rn r9, r9, r3
	add.f.rn r1, r1, r4
	mul.f.rn r4, r2, r5
	loadli.w r2,  -1312(r30)                # 4-byte Folded Reload
	mul.f.rn r5, r10, r9
	add.f.rn r1, r11, r1
	mul.f.rn r4, r13, r4
	loadli.w r11,  -1356(r30)               # 4-byte Folded Reload
	mul.f.rn r7, r9, r9
	add.f.rn r3, r3, r5
	mul.f.rn r5, r6, r6
	add.f.rn r1, r1, r4
	loadli.w r4,  -424(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -464(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r2, r5
	sub.f.rn r4, r4, r3
	add.f.rn r1, r6, r1
	loadli.w r2,  -1320(r30)                # 4-byte Folded Reload
	mul.f.rn r5, r8, r5
	mul.f.rn r6, r11, r4
	mul.f.rn r4, r4, r4
	loadli.w r8,  -1360(r30)                # 4-byte Folded Reload
	add.f.rn r1, r1, r5
	mul.f.rn r5, r2, r7
	add.f.rn r3, r3, r6
	loadli.w r7,  -456(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -420(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -1328(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r2, r4
	loadli.w r4,  -452(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r10, r5
	add.f.rn r1, r7, r1
	sub.f.rn r6, r6, r3
	loadli.w r10,  -352(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r11, r2
	add.f.rn r1, r1, r5
	mul.f.rn r7, r8, r6
	loadli.w r5,  -416(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r4, r1
	add.f.rn r3, r3, r7
	mul.f.rn r4, r6, r6
	loadli.w r7,  -1364(r30)                # 4-byte Folded Reload
	loadli.w r6,  -444(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -1340(r30)                # 4-byte Folded Reload
	sub.f.rn r5, r5, r3
	mul.f.rn r2, r2, r4
	mul.f.rn r4, r7, r5
	add.f.rn r1, r6, r1
	mul.f.rn r5, r5, r5
	mul.f.rn r2, r8, r2
	add.f.rn r3, r3, r4
	loadli.w r4,  -412(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -1348(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r2, r5
	loadli.w r5,  -436(r30)                 # 4-byte Folded Reload
	sub.f.rn r4, r4, r3
	add.f.rn r1, r5, r1
	mul.f.rn r2, r7, r2
	mul.f.rn r5, r4, r4
	mul.f.rn r4, r25, r4
	add.f.rn r1, r1, r2
	loadli.w r2,  -1352(r30)                # 4-byte Folded Reload
	add.f.rn r3, r3, r4
	mul.f.rn r2, r2, r5
	loadli.w r5,  -432(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r5, r1
	mul.f.rn r2, r25, r2
	add.f.rn r1, r1, r2
	loadli.w r2,  -332(r30)                 # 4-byte Folded Reload
	stores.w r3, 0(r2)
	loadli.w r2,  -336(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r10
	sync_group
	loadli.w r1,  -336(r30)                 # 4-byte Folded Reload
.Ltmp0:
	.loc	1 67 24 prologue_end            # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:67:24
	lui r2, 237568
	.loc	1 70 32                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:70:32
	lui r3, 260096
	.loc	1 72 29                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:72:29
	load.d r[5:6], -272(r30)                # 8-byte Folded Reload
	loads.w r1, 0(r1)
	.loc	1 67 24                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:67:24
	mul.f.rn r1, r1, r2
	.loc	1 69 24                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:69:24
	loadli.w r2,  -404(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	loadli.w r2,  -332(r30)                 # 4-byte Folded Reload
	loads.w r2, 0(r2)
	.loc	1 70 32                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:70:32
	sqrt.f.rn r1, r1
	div.f.rn r1, r3, r1
	.loc	1 65 24                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:65:24
	lui r3, 524288
	xor r2, r2, r3
	.loc	1 72 29                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:72:29
	load.d r[3:4], 16(r30)
	.loc	1 65 24                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:65:24
	#APP
	vadd.f.mz.rn vr4{mr1}, r2, vr4
	#NO_APP
	#APP
	vadd.f.mz.rn vr5{mr1}, r2, vr5
	#NO_APP
	.loc	1 72 53                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:72:53
	lui r2, 983040
	.loc	1 71 24                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:71:24
	#APP
	vmul.f.mz.rn vr4{mr1}, r1, vr4
	#NO_APP
	#APP
	vmul.f.mz.rn vr5{mr1}, r1, vr5
	#NO_APP
	.loc	1 72 53                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:72:53
	vstore_mask16.mz vr4{mr1}, -128(r30)
	vstore_mask16.mz vr5{mr1}, -64(r30)
	mfence { lm }
	.loc	1 72 29 is_stmt 0               # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:72:29
	add.ul r[3:4], r[3:4], r[5:6]
	addli r5, zero, 128
	addli r6, r30, -128
	.loc	1 72 53                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:72:53
	or r1, r5, r2
	s_lm2gm r1, r6, 0(r[3:4])
	addli r4, zero, 2047
	mfence { lm }
	loadli.w r8,  40(r30)
	loadli.w r9,  36(r30)
	loadli.w r11,  -260(r30)                # 4-byte Folded Reload
	loadli.w r12,  -364(r30)                # 4-byte Folded Reload
	loadli.w r13,  -368(r30)                # 4-byte Folded Reload
	loadli.w r14,  -380(r30)                # 4-byte Folded Reload
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 53                          # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:0:53
	add.s r11, r11, r14
	blt.s r11, r12, .LBB0_5
	j .LBB0_195
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	div.s r1, r11, r8
	div.s r1, r1, r9
	.loc	1 28 23 is_stmt 1               # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:28:23
	add.s r1, r1, r13
	blt.s r4, r1, .LBB0_4
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	1 42 41                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:42:41
	loadli.w r2,  -388(r30)                 # 4-byte Folded Reload
	.loc	1 42 46 is_stmt 0               # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:42:46
	slli r1, r1, 11
	.loc	1 42 51                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:42:51
	lui r3, 983040
	.loc	1 42 34                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:42:34
	addli r4, zero, 2
	storeli.w r11, -260(r30)                # 4-byte Folded Spill
	.loc	1 42 51                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:42:51
	vstore_mask16.mz vr0{mr1}, -256(r30)
	vstore_mask16.mz vr0{mr1}, -192(r30)
	vmmov r11, mr2
	.loc	1 42 41                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:42:41
	add.s r1, r1, r2
	.loc	1 42 34                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:42:34
	sext_int2long r[1:2], r1
	sll.d r[7:8], r[1:2], r4
	.loc	1 42 51                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:42:51
	or r1, r5, r3
	.loc	1 42 34                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:42:34
	load.d r[2:3], 0(r30)
	.loc	1 42 51                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:42:51
	addli r4, r30, -256
	store.d r[7:8], -272(r30)               # 8-byte Folded Spill
	.loc	1 42 34                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:42:34
	add.ul r[2:3], r[2:3], r[7:8]
	.loc	1 42 51                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:42:51
	mfence { lm }
	.loc	1 43 41 is_stmt 1               # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:43:41
	vstore_mask16.mz vr0{mr1}, -128(r30)
	addli r7, zero, 0
	.loc	1 42 51                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:42:51
	l_gm2lm r1, r4, 0(r[2:3])
	.loc	1 43 41                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:43:41
	vstore_mask16.mz vr0{mr1}, -64(r30)
	lui r1, 983040
	mfence { lm }
	load.d r[2:3], -400(r30)                # 8-byte Folded Reload
	or r1, r5, r1
	vextracti.f r5, 0(vr3)
	l_gm2lm r1, r6, 0(r[2:3])
	andi r1, r11, 1
	.loc	1 42 51                         # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:42:51
	mfence { lm }
	bneq r1, zero, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 51 is_stmt 0                # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:0:51
	vextracti.f r1, 0(vr2)
	div.f.rn r7, r1, r5
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	vload_mask16.mz vr4{mr1}, -256(r30)
	vload_mask16.mz vr5{mr1}, -192(r30)
	vload_mask16.mz vr6{mr1}, -128(r30)
	vload_mask16.mz vr7{mr1}, -64(r30)
	srli r1, r11, 15
	vextracti.f r4, 15(vr3)
	addli r6, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 15(vr2)
	div.f.rn r6, r1, r4
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r11, 14
	vextracti.f r2, 14(vr3)
	addli r8, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 14(vr2)
	div.f.rn r8, r1, r2
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r11, 13
	vextracti.f r27, 13(vr3)
	addli r10, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 13(vr2)
	div.f.rn r10, r1, r27
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r11, 12
	vextracti.f r18, 12(vr3)
	addli r13, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 12(vr2)
	div.f.rn r13, r1, r18
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
	vextracti.f r3, 10(vr3)
	addli r15, zero, 0
	andi r1, r1, 1
	bneq r1, zero, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 10(vr2)
	div.f.rn r15, r1, r3
.LBB0_20:                               #   in Loop: Header=BB0_5 Depth=1
	srli r1, r11, 9
	vextracti.f r28, 9(vr3)
	addli r17, zero, 0
	storeli.w r3, -292(r30)                 # 4-byte Folded Spill
	storeli.w r2, -276(r30)                 # 4-byte Folded Spill
	andi r1, r1, 1
	bneq r1, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r1, 9(vr2)
	div.f.rn r17, r1, r28
.LBB0_22:                               #   in Loop: Header=BB0_5 Depth=1
	srli r2, r11, 8
	vextracti.f r1, 8(vr3)
	addli r19, zero, 0
	andi r2, r2, 1
	bneq r2, zero, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r2, 8(vr2)
	div.f.rn r19, r2, r1
.LBB0_24:                               #   in Loop: Header=BB0_5 Depth=1
	srli r3, r11, 7
	vextracti.f r2, 7(vr3)
	addli r20, zero, 0
	andi r3, r3, 1
	bneq r3, zero, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r3, 7(vr2)
	div.f.rn r20, r3, r2
.LBB0_26:                               #   in Loop: Header=BB0_5 Depth=1
	srli r12, r11, 6
	vextracti.f r3, 6(vr3)
	addli r21, zero, 0
	andi r12, r12, 1
	bneq r12, zero, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r12, 6(vr2)
	div.f.rn r21, r12, r3
.LBB0_28:                               #   in Loop: Header=BB0_5 Depth=1
	srli r16, r11, 5
	vextracti.f r12, 5(vr3)
	addli r22, zero, 0
	andi r16, r16, 1
	bneq r16, zero, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_5 Depth=1
	vextracti.f r16, 5(vr2)
	div.f.rn r22, r16, r12
.LBB0_30:                               #   in Loop: Header=BB0_5 Depth=1
	srli r23, r11, 4
	vextracti.f r16, 4(vr3)
	andi r24, r23, 1
	addli r23, zero, 0
	bneq r24, zero, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r23,  -1380(r30)               # 4-byte Folded Reload
	div.f.rn r23, r23, r16
.LBB0_32:                               #   in Loop: Header=BB0_5 Depth=1
	srli r24, r11, 3
	andi r25, r24, 1
	addli r24, zero, 0
	bneq r25, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r24,  -1376(r30)               # 4-byte Folded Reload
.LBB0_34:                               #   in Loop: Header=BB0_5 Depth=1
	srli r25, r11, 2
	andi r26, r25, 1
	addli r25, zero, 0
	bneq r26, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r25,  -1372(r30)               # 4-byte Folded Reload
.LBB0_36:                               #   in Loop: Header=BB0_5 Depth=1
	srli r11, r11, 1
	andi r26, r11, 1
	addli r11, zero, 0
	bneq r26, zero, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r11,  -1368(r30)               # 4-byte Folded Reload
.LBB0_38:                               #   in Loop: Header=BB0_5 Depth=1
	vadd.s.mz vr8{mr1}, zero, vr0
	addli r26, zero, 1
	vmmov mr3, r26
	vor.u.mh vr8{mr3}, r7, vr8
	addli r7, zero, 2
	vmmov mr3, r7
	addli r7, zero, 4
	vor.u.mh vr8{mr3}, r11, vr8
	vmmov mr3, r7
	addli r7, zero, 8
	vor.u.mh vr8{mr3}, r25, vr8
	vmmov mr3, r7
	addli r7, zero, 16
	vor.u.mh vr8{mr3}, r24, vr8
	vmmov mr3, r7
	addli r7, zero, 32
	vor.u.mh vr8{mr3}, r23, vr8
	vmmov mr3, r7
	addli r7, zero, 64
	vor.u.mh vr8{mr3}, r22, vr8
	vmmov mr3, r7
	addli r7, zero, 128
	vor.u.mh vr8{mr3}, r21, vr8
	vmmov mr3, r7
	addli r7, zero, 256
	vor.u.mh vr8{mr3}, r20, vr8
	vmmov mr3, r7
	addli r7, zero, 512
	addli r20, r5, 0
	addli r5, zero, 2048
	vor.u.mh vr8{mr3}, r19, vr8
	vmmov mr3, r7
	addli r7, zero, 1024
	vor.u.mh vr8{mr3}, r17, vr8
	vmmov mr3, r7
	vor.u.mh vr8{mr3}, r15, vr8
	loadli.w r7,  -340(r30)                 # 4-byte Folded Reload
	vmmov mr3, r5
	addli r5, zero, 4096
	add.f.rn r7, r20, r7
	vor.u.mh vr8{mr3}, r14, vr8
	vmmov mr3, r5
	addli r5, zero, 8192
	vor.u.mh vr8{mr3}, r13, vr8
	vmmov mr3, r5
	lui r5, 4
	slli r11, r7, 9
	setle.f r14, zero, r7
	srli r13, r7, 23
	seteq r11, r11, zero
	andi r13, r13, 255
	vor.u.mh vr8{mr3}, r10, vr8
	setle.f r10, r7, zero
	vmmov mr3, r5
	lui r5, 8
	vor.u.mh vr8{mr3}, r8, vr8
	setlti r8, r13, 255
	vmmov mr3, r5
	addli r5, zero, 0
	or r8, r8, r11
	and r10, r10, r14
	vor.u.mh vr8{mr3}, r6, vr8
	and r6, r10, r8
	bneq r6, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r6,  -340(r30)                 # 4-byte Folded Reload
	div.f.rn r5, r6, r7
.LBB0_40:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r6,  -344(r30)                 # 4-byte Folded Reload
	storeli.w r5, -280(r30)                 # 4-byte Folded Spill
	addli r26, r4, 0
	addli r5, r18, 0
	add.f.rn r8, r6, r7
	slli r6, r8, 9
	setle.f r11, zero, r8
	setle.f r13, r8, zero
	srli r10, r8, 23
	seteq r6, r6, zero
	andi r10, r10, 255
	setlti r10, r10, 255
	or r6, r10, r6
	and r10, r13, r11
	and r6, r10, r6
	addli r10, zero, 0
	bneq r6, zero, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r6,  -344(r30)                 # 4-byte Folded Reload
	div.f.rn r10, r6, r8
.LBB0_42:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r6,  -348(r30)                 # 4-byte Folded Reload
	storeli.w r10, -284(r30)                # 4-byte Folded Spill
	addli r4, r27, 0
	add.f.rn r10, r6, r8
	slli r6, r10, 9
	setle.f r13, zero, r10
	setle.f r14, r10, zero
	srli r11, r10, 23
	seteq r6, r6, zero
	andi r11, r11, 255
	setlti r11, r11, 255
	or r6, r11, r6
	and r11, r14, r13
	and r6, r11, r6
	addli r11, zero, 0
	bneq r6, zero, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r6,  -348(r30)                 # 4-byte Folded Reload
	div.f.rn r11, r6, r10
.LBB0_44:                               #   in Loop: Header=BB0_5 Depth=1
	storeli.w r11, -288(r30)                # 4-byte Folded Spill
	add.f.rn r11, r16, r10
	addli r27, zero, 0
	slli r6, r11, 9
	setle.f r14, zero, r11
	setle.f r17, r11, zero
	srli r13, r11, 23
	seteq r6, r6, zero
	andi r13, r13, 255
	setlti r13, r13, 255
	or r6, r13, r6
	and r13, r17, r14
	and r6, r13, r6
	bneq r6, zero, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r27, r16, r11
.LBB0_46:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r13, r12, r11
	loadli.w r15,  -292(r30)                # 4-byte Folded Reload
	slli r6, r13, 9
	setle.f r16, zero, r13
	setle.f r19, r13, zero
	srli r14, r13, 23
	seteq r6, r6, zero
	andi r14, r14, 255
	setlti r14, r14, 255
	or r6, r14, r6
	and r14, r19, r16
	and r6, r14, r6
	addli r14, zero, 0
	bneq r6, zero, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r14, r12, r13
.LBB0_48:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r16, r3, r13
	storeli.w r14, -296(r30)                # 4-byte Folded Spill
	slli r6, r16, 9
	setle.f r14, zero, r16
	setle.f r19, r16, zero
	srli r12, r16, 23
	seteq r6, r6, zero
	andi r12, r12, 255
	setlti r12, r12, 255
	or r6, r12, r6
	and r12, r19, r14
	and r6, r12, r6
	addli r12, zero, 0
	bneq r6, zero, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r12, r3, r16
.LBB0_50:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r19, r2, r16
	storeli.w r12, -300(r30)                # 4-byte Folded Spill
	slli r3, r19, 9
	setle.f r12, zero, r19
	setle.f r14, r19, zero
	srli r6, r19, 23
	seteq r3, r3, zero
	andi r6, r6, 255
	setlti r6, r6, 255
	or r3, r6, r3
	and r6, r14, r12
	and r3, r6, r3
	addli r6, zero, 0
	bneq r3, zero, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r6, r2, r19
.LBB0_52:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r24, r1, r19
	storeli.w r6, -304(r30)                 # 4-byte Folded Spill
	slli r2, r24, 9
	setle.f r6, zero, r24
	setle.f r12, r24, zero
	srli r3, r24, 23
	seteq r2, r2, zero
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r12, r6
	and r2, r3, r2
	addli r3, zero, 0
	bneq r2, zero, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r24
.LBB0_54:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r25, r28, r24
	storeli.w r3, -308(r30)                 # 4-byte Folded Spill
	slli r1, r25, 9
	setle.f r3, zero, r25
	setle.f r12, r25, zero
	srli r2, r25, 23
	seteq r1, r1, zero
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r12, r3
	and r1, r2, r1
	addli r2, zero, 0
	bneq r1, zero, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r28, r25
.LBB0_56:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r28, r15, r25
	addli r6, zero, 0
	slli r1, r28, 9
	setle.f r12, zero, r28
	setle.f r14, r28, zero
	srli r3, r28, 23
	seteq r1, r1, zero
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	and r3, r14, r12
	and r3, r3, r1
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	bneq r3, zero, .LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r6, r15, r28
.LBB0_58:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r18, r9, r28
	slli r3, r18, 9
	setle.f r14, zero, r18
	setle.f r21, r18, zero
	srli r12, r18, 23
	seteq r3, r3, zero
	andi r12, r12, 255
	setlti r12, r12, 255
	or r3, r12, r3
	and r12, r21, r14
	and r12, r12, r3
	addli r3, zero, 0
	bneq r12, zero, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r9, r18
.LBB0_60:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r9, r5, r18
	slli r12, r9, 9
	setle.f r21, zero, r9
	setle.f r22, r9, zero
	srli r14, r9, 23
	seteq r12, r12, zero
	andi r14, r14, 255
	setlti r14, r14, 255
	or r12, r14, r12
	and r14, r22, r21
	and r12, r14, r12
	addli r14, zero, 0
	bneq r12, zero, .LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r14, r5, r9
.LBB0_62:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r5, r4, r9
	storeli.w r14, -316(r30)                # 4-byte Folded Spill
	slli r12, r5, 9
	setle.f r21, zero, r5
	setle.f r22, r5, zero
	srli r14, r5, 23
	seteq r12, r12, zero
	andi r14, r14, 255
	setlti r14, r14, 255
	or r12, r14, r12
	and r14, r22, r21
	and r12, r14, r12
	addli r14, zero, 0
	bneq r12, zero, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r14, r4, r5
.LBB0_64:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r4, r1, r5
	storeli.w r14, -320(r30)                # 4-byte Folded Spill
	storeli.w r2, -292(r30)                 # 4-byte Folded Spill
	addli r2, zero, 0
	slli r12, r4, 9
	setle.f r21, zero, r4
	setle.f r15, r4, zero
	srli r14, r4, 23
	seteq r12, r12, zero
	andi r14, r14, 255
	setlti r14, r14, 255
	or r12, r14, r12
	and r14, r15, r21
	and r12, r14, r12
	bneq r12, zero, .LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r1, r4
.LBB0_66:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r14, r26, r4
	storeli.w r2, -324(r30)                 # 4-byte Folded Spill
	addli r2, r20, 0
	addli r1, zero, 0
	storeli.w r3, -312(r30)                 # 4-byte Folded Spill
	storeli.w r6, -276(r30)                 # 4-byte Folded Spill
	slli r12, r14, 9
	setle.f r17, zero, r14
	setle.f r20, r14, zero
	srli r15, r14, 23
	seteq r12, r12, zero
	andi r15, r15, 255
	setlti r15, r15, 255
	or r12, r15, r12
	and r15, r20, r17
	and r15, r15, r12
	bneq r15, zero, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r1, r26, r14
.LBB0_68:                               #   in Loop: Header=BB0_5 Depth=1
	vadd.f.mz.rn vr4{mr1}, vr4, vr6
	vadd.s.mz vr6{mr1}, zero, vr0
	vadd.f.mz.rn vr5{mr1}, vr5, vr7
	vadd.s.mz vr7{mr1}, zero, vr0
	storeli.w r1, -328(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -376(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -280(r30)                 # 4-byte Folded Reload
	loadli.w r23,  -284(r30)                # 4-byte Folded Reload
	loadli.w r22,  -288(r30)                # 4-byte Folded Reload
	addli r21, r27, 0
	loadli.w r12,  -296(r30)                # 4-byte Folded Reload
	stores.w r14, 0(r1)
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
	vextracti.f r1, 1(vr7)
	mul.f.rn r17, r3, r15
	mul.f.rn r15, r15, r15
	add.f.rn r14, r14, r17
	vextracti.f r17, 2(vr6)
	mul.f.rn r15, r2, r15
	vextracti.f r2, 0(vr7)
	add.f.rn r1, r2, r1
	sub.f.rn r17, r17, r14
	mul.f.rn r2, r3, r15
	vextracti.f r15, 6(vr6)
	loadli.w r3,  -300(r30)                 # 4-byte Folded Reload
	mul.f.rn r20, r23, r17
	mul.f.rn r17, r17, r17
	add.f.rn r1, r1, r2
	add.f.rn r14, r14, r20
	vextracti.f r20, 3(vr6)
	mul.f.rn r2, r7, r17
	vextracti.f r7, 2(vr7)
	add.f.rn r1, r7, r1
	sub.f.rn r20, r20, r14
	mul.f.rn r2, r23, r2
	mul.f.rn r26, r22, r20
	mul.f.rn r7, r20, r20
	add.f.rn r1, r1, r2
	loadli.w r20,  -304(r30)                # 4-byte Folded Reload
	add.f.rn r14, r14, r26
	vextracti.f r26, 4(vr6)
	mul.f.rn r2, r8, r7
	vextracti.f r8, 3(vr7)
	add.f.rn r1, r8, r1
	sub.f.rn r26, r26, r14
	mul.f.rn r2, r22, r2
	mul.f.rn r27, r21, r26
	mul.f.rn r8, r26, r26
	add.f.rn r1, r1, r2
	add.f.rn r27, r14, r27
	vextracti.f r14, 5(vr6)
	mul.f.rn r2, r10, r8
	vextracti.f r8, 4(vr7)
	vextracti.f r10, 8(vr6)
	add.f.rn r1, r8, r1
	sub.f.rn r14, r14, r27
	mul.f.rn r2, r21, r2
	mul.f.rn r6, r12, r14
	add.f.rn r1, r1, r2
	add.f.rn r6, r27, r6
	sub.f.rn r15, r15, r6
	mul.f.rn r17, r3, r15
	add.f.rn r6, r6, r17
	vextracti.f r17, 7(vr6)
	sub.f.rn r7, r17, r6
	mul.f.rn r17, r20, r7
	mul.f.rn r7, r7, r7
	add.f.rn r6, r6, r17
	sub.f.rn r8, r10, r6
	mul.f.rn r10, r14, r14
	loadli.w r14,  -308(r30)                # 4-byte Folded Reload
	mul.f.rn r2, r14, r8
	mul.f.rn r10, r11, r10
	vextracti.f r11, 5(vr7)
	add.f.rn r1, r11, r1
	vextracti.f r11, 9(vr6)
	add.f.rn r2, r6, r2
	mul.f.rn r6, r12, r10
	mul.f.rn r10, r15, r15
	loadli.w r12,  -292(r30)                # 4-byte Folded Reload
	sub.f.rn r11, r11, r2
	add.f.rn r1, r1, r6
	mul.f.rn r6, r13, r10
	vextracti.f r10, 6(vr7)
	mul.f.rn r13, r12, r11
	add.f.rn r1, r10, r1
	mul.f.rn r6, r3, r6
	vextracti.f r10, 10(vr6)
	loadli.w r3,  -276(r30)                 # 4-byte Folded Reload
	add.f.rn r2, r2, r13
	add.f.rn r1, r1, r6
	mul.f.rn r6, r16, r7
	vextracti.f r7, 7(vr7)
	loadli.w r13,  -312(r30)                # 4-byte Folded Reload
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
	mul.f.rn r6, r24, r7
	mul.f.rn r7, r13, r8
	add.f.rn r1, r11, r1
	mul.f.rn r6, r12, r6
	loadli.w r11,  -316(r30)                # 4-byte Folded Reload
	mul.f.rn r8, r8, r8
	add.f.rn r2, r2, r7
	mul.f.rn r7, r10, r10
	vextracti.f r10, 12(vr6)
	add.f.rn r1, r1, r6
	sub.f.rn r6, r10, r2
	mul.f.rn r7, r25, r7
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
	loadli.w r10,  -320(r30)                # 4-byte Folded Reload
	mul.f.rn r7, r10, r8
	add.f.rn r1, r1, r3
	mul.f.rn r3, r18, r6
	vextracti.f r6, 12(vr7)
	add.f.rn r2, r2, r7
	vextracti.f r7, 14(vr6)
	add.f.rn r1, r6, r1
	mul.f.rn r3, r11, r3
	mul.f.rn r6, r8, r8
	sub.f.rn r7, r7, r2
	add.f.rn r1, r1, r3
	mul.f.rn r3, r9, r6
	loadli.w r9,  -324(r30)                 # 4-byte Folded Reload
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
	loadli.w r6,  -328(r30)                 # 4-byte Folded Reload
	vextracti.f r4, 15(vr7)
	mul.f.rn r5, r6, r5
	add.f.rn r1, r4, r1
	mul.f.rn r3, r6, r3
	add.f.rn r2, r2, r5
	add.f.rn r1, r1, r3
	loadli.w r3,  -356(r30)                 # 4-byte Folded Reload
	stores.w r2, 0(r3)
	loadli.w r2,  -372(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	loadli.w r10,  -352(r30)                # 4-byte Folded Reload
	csr_set csr3, r10
	sync_group
	loadli.w r1,  -384(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_3
# %bb.69:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r7,  -408(r30)                 # 4-byte Folded Reload
	addli r25, zero, 0
	loads.w r2, 0(r7)
	loads.w r1, 4(r7)
	add.f.rn r6, r2, r1
	storeli.w r2, -536(r30)                 # 4-byte Folded Spill
	slli r2, r6, 9
	setle.f r4, r25, r6
	setle.f r5, r6, r25
	srli r3, r6, 23
	seteq r2, r2, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r25, 0
	bneq r2, zero, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r6
.LBB0_71:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 8(r7)
	storeli.w r3, -556(r30)                 # 4-byte Folded Spill
	add.f.rn r8, r6, r1
	slli r2, r8, 9
	setle.f r4, r25, r8
	setle.f r5, r8, r25
	srli r3, r8, 23
	seteq r2, r2, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r25, 0
	bneq r2, zero, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r8
.LBB0_73:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 12(r7)
	storeli.w r3, -572(r30)                 # 4-byte Folded Spill
	add.f.rn r9, r8, r1
	slli r2, r9, 9
	setle.f r4, r25, r9
	setle.f r5, r9, r25
	srli r3, r9, 23
	seteq r2, r2, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r25, 0
	bneq r2, zero, .LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r9
.LBB0_75:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 16(r7)
	storeli.w r3, -584(r30)                 # 4-byte Folded Spill
	add.f.rn r10, r9, r1
	slli r2, r10, 9
	setle.f r4, r25, r10
	setle.f r5, r10, r25
	srli r3, r10, 23
	seteq r2, r2, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r25, 0
	bneq r2, zero, .LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r10
.LBB0_77:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 20(r7)
	storeli.w r3, -600(r30)                 # 4-byte Folded Spill
	add.f.rn r11, r10, r1
	slli r2, r11, 9
	setle.f r4, r25, r11
	setle.f r5, r11, r25
	srli r3, r11, 23
	seteq r2, r2, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r25, 0
	bneq r2, zero, .LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r11
.LBB0_79:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 24(r7)
	storeli.w r3, -616(r30)                 # 4-byte Folded Spill
	add.f.rn r12, r11, r1
	slli r2, r12, 9
	setle.f r4, r25, r12
	setle.f r5, r12, r25
	srli r3, r12, 23
	seteq r2, r2, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r25, 0
	bneq r2, zero, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r12
.LBB0_81:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 28(r7)
	storeli.w r3, -632(r30)                 # 4-byte Folded Spill
	add.f.rn r13, r12, r1
	slli r2, r13, 9
	setle.f r4, r25, r13
	setle.f r5, r13, r25
	srli r3, r13, 23
	seteq r2, r2, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r25, 0
	bneq r2, zero, .LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r13
.LBB0_83:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 32(r7)
	storeli.w r3, -652(r30)                 # 4-byte Folded Spill
	add.f.rn r14, r13, r1
	slli r2, r14, 9
	setle.f r4, r25, r14
	setle.f r5, r14, r25
	srli r3, r14, 23
	seteq r2, r2, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r25, 0
	bneq r2, zero, .LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r14
.LBB0_85:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 36(r7)
	storeli.w r3, -668(r30)                 # 4-byte Folded Spill
	add.f.rn r15, r14, r1
	slli r2, r15, 9
	setle.f r4, r25, r15
	setle.f r5, r15, r25
	srli r3, r15, 23
	seteq r2, r2, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r25, 0
	bneq r2, zero, .LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r15
.LBB0_87:                               #   in Loop: Header=BB0_5 Depth=1
	loads.w r1, 40(r7)
	storeli.w r6, -524(r30)                 # 4-byte Folded Spill
	storeli.w r3, -276(r30)                 # 4-byte Folded Spill
	storeli.w r14, -636(r30)                # 4-byte Folded Spill
	storeli.w r13, -620(r30)                # 4-byte Folded Spill
	storeli.w r12, -612(r30)                # 4-byte Folded Spill
	storeli.w r11, -596(r30)                # 4-byte Folded Spill
	storeli.w r10, -576(r30)                # 4-byte Folded Spill
	storeli.w r9, -560(r30)                 # 4-byte Folded Spill
	storeli.w r8, -540(r30)                 # 4-byte Folded Spill
	storeli.w r15, -656(r30)                # 4-byte Folded Spill
	add.f.rn r6, r15, r1
	slli r2, r6, 9
	setle.f r4, r25, r6
	setle.f r5, r6, r25
	srli r3, r6, 23
	seteq r2, r2, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r2, r3, r2
	and r3, r5, r4
	and r2, r3, r2
	addli r3, r25, 0
	bneq r2, zero, .LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r1, r6
.LBB0_89:                               #   in Loop: Header=BB0_5 Depth=1
	loadli.w r2,  -332(r30)                 # 4-byte Folded Reload
	loads.w r24, 44(r7)
	storeli.w r3, -280(r30)                 # 4-byte Folded Spill
	loads.w r18, 164(r7)
	loads.w r9, 112(r7)
	storeli.w r6, -672(r30)                 # 4-byte Folded Spill
	loads.w r17, 48(r7)
	loads.w r16, 52(r7)
	loads.w r5, 56(r7)
	loads.w r12, 60(r7)
	loads.w r11, 64(r7)
	loads.w r15, 72(r7)
	loads.w r4, 76(r7)
	loads.w r21, 80(r7)
	loads.w r22, 84(r7)
	loads.w r14, 88(r7)
	loads.w r10, 96(r7)
	loads.w r8, 100(r7)
	loads.w r13, 108(r7)
	loads.w r23, 144(r7)
	loads.w r28, 176(r7)
	loads.w r27, 208(r7)
	loads.w r1, 0(r2)
	loads.w r3, 96(r2)
	add.f.rn r26, r6, r24
	storeli.w r18, -1184(r30)               # 4-byte Folded Spill
	loads.w r18, 168(r7)
	storeli.w r9, -1096(r30)                # 4-byte Folded Spill
	loads.w r9, 116(r7)
	loads.w r6, 92(r7)
	storeli.w r1, -892(r30)                 # 4-byte Folded Spill
	loads.w r1, 4(r2)
	storeli.w r3, -864(r30)                 # 4-byte Folded Spill
	setle.f r19, r25, r26
	setle.f r20, r26, r25
	storeli.w r18, -1192(r30)               # 4-byte Folded Spill
	loads.w r18, 172(r7)
	storeli.w r9, -1100(r30)                # 4-byte Folded Spill
	loads.w r9, 120(r7)
	storeli.w r1, -896(r30)                 # 4-byte Folded Spill
	loads.w r1, 8(r2)
	storeli.w r18, -1200(r30)               # 4-byte Folded Spill
	loads.w r18, 180(r7)
	storeli.w r9, -1112(r30)                # 4-byte Folded Spill
	loads.w r9, 124(r7)
	storeli.w r1, -888(r30)                 # 4-byte Folded Spill
	loads.w r1, 12(r2)
	storeli.w r18, -1228(r30)               # 4-byte Folded Spill
	loads.w r18, 184(r7)
	storeli.w r9, -1120(r30)                # 4-byte Folded Spill
	loads.w r9, 128(r7)
	storeli.w r1, -876(r30)                 # 4-byte Folded Spill
	loads.w r1, 16(r2)
	storeli.w r18, -1216(r30)               # 4-byte Folded Spill
	loads.w r18, 188(r7)
	storeli.w r9, -1128(r30)                # 4-byte Folded Spill
	loads.w r9, 132(r7)
	storeli.w r1, -868(r30)                 # 4-byte Folded Spill
	loads.w r1, 20(r2)
	storeli.w r18, -1152(r30)               # 4-byte Folded Spill
	loads.w r18, 192(r7)
	storeli.w r9, -1132(r30)                # 4-byte Folded Spill
	loads.w r9, 136(r7)
	storeli.w r1, -860(r30)                 # 4-byte Folded Spill
	loads.w r1, 24(r2)
	storeli.w r18, -1240(r30)               # 4-byte Folded Spill
	loads.w r18, 196(r7)
	storeli.w r9, -1124(r30)                # 4-byte Folded Spill
	loads.w r9, 140(r7)
	storeli.w r1, -852(r30)                 # 4-byte Folded Spill
	loads.w r1, 28(r2)
	storeli.w r18, -1136(r30)               # 4-byte Folded Spill
	loads.w r18, 200(r7)
	storeli.w r9, -1144(r30)                # 4-byte Folded Spill
	loads.w r9, 148(r7)
	storeli.w r1, -840(r30)                 # 4-byte Folded Spill
	loads.w r1, 32(r2)
	storeli.w r18, -1116(r30)               # 4-byte Folded Spill
	loads.w r18, 204(r7)
	storeli.w r9, -1160(r30)                # 4-byte Folded Spill
	loads.w r9, 156(r7)
	storeli.w r1, -832(r30)                 # 4-byte Folded Spill
	loads.w r1, 36(r2)
	storeli.w r18, -1108(r30)               # 4-byte Folded Spill
	loads.w r18, 212(r7)
	storeli.w r9, -1168(r30)                # 4-byte Folded Spill
	loads.w r9, 160(r7)
	storeli.w r1, -980(r30)                 # 4-byte Folded Spill
	loads.w r1, 40(r2)
	storeli.w r18, -1104(r30)               # 4-byte Folded Spill
	loads.w r18, 216(r7)
	storeli.w r1, -972(r30)                 # 4-byte Folded Spill
	loads.w r1, 44(r2)
	storeli.w r18, -1092(r30)               # 4-byte Folded Spill
	loads.w r18, 220(r7)
	storeli.w r1, -968(r30)                 # 4-byte Folded Spill
	loads.w r1, 48(r2)
	storeli.w r18, -1084(r30)               # 4-byte Folded Spill
	loads.w r18, 224(r7)
	storeli.w r1, -956(r30)                 # 4-byte Folded Spill
	loads.w r1, 52(r2)
	storeli.w r18, -1076(r30)               # 4-byte Folded Spill
	loads.w r18, 228(r7)
	storeli.w r1, -948(r30)                 # 4-byte Folded Spill
	loads.w r1, 56(r2)
	storeli.w r18, -1068(r30)               # 4-byte Folded Spill
	loads.w r18, 232(r7)
	storeli.w r1, -940(r30)                 # 4-byte Folded Spill
	loads.w r1, 60(r2)
	storeli.w r18, -1052(r30)               # 4-byte Folded Spill
	loads.w r18, 236(r7)
	storeli.w r1, -932(r30)                 # 4-byte Folded Spill
	loads.w r1, 64(r2)
	storeli.w r18, -1040(r30)               # 4-byte Folded Spill
	loads.w r18, 240(r7)
	storeli.w r1, -924(r30)                 # 4-byte Folded Spill
	loads.w r1, 68(r2)
	storeli.w r18, -1028(r30)               # 4-byte Folded Spill
	loads.w r18, 244(r7)
	storeli.w r1, -912(r30)                 # 4-byte Folded Spill
	loads.w r1, 72(r2)
	storeli.w r18, -1024(r30)               # 4-byte Folded Spill
	loads.w r18, 248(r7)
	storeli.w r1, -900(r30)                 # 4-byte Folded Spill
	loads.w r1, 76(r2)
	storeli.w r18, -1008(r30)               # 4-byte Folded Spill
	srli r18, r26, 23
	andi r18, r18, 255
	storeli.w r1, -952(r30)                 # 4-byte Folded Spill
	loads.w r1, 80(r2)
	setlti r18, r18, 255
	storeli.w r1, -936(r30)                 # 4-byte Folded Spill
	loads.w r1, 84(r2)
	storeli.w r1, -920(r30)                 # 4-byte Folded Spill
	loads.w r1, 88(r2)
	storeli.w r1, -904(r30)                 # 4-byte Folded Spill
	loads.w r1, 92(r2)
	storeli.w r1, -880(r30)                 # 4-byte Folded Spill
	slli r1, r26, 9
	seteq r3, r1, r25
	loads.w r1, 100(r2)
	or r3, r18, r3
	and r18, r20, r19
	and r3, r18, r3
	addli r18, r25, 0
	storeli.w r1, -844(r30)                 # 4-byte Folded Spill
	loads.w r1, 104(r2)
	storeli.w r1, -828(r30)                 # 4-byte Folded Spill
	loads.w r1, 108(r2)
	storeli.w r1, -812(r30)                 # 4-byte Folded Spill
	loads.w r1, 112(r2)
	storeli.w r1, -804(r30)                 # 4-byte Folded Spill
	loads.w r1, 116(r2)
	storeli.w r1, -796(r30)                 # 4-byte Folded Spill
	loads.w r1, 120(r2)
	storeli.w r1, -784(r30)                 # 4-byte Folded Spill
	loads.w r1, 124(r2)
	storeli.w r1, -776(r30)                 # 4-byte Folded Spill
	loads.w r1, 128(r2)
	storeli.w r1, -768(r30)                 # 4-byte Folded Spill
	loads.w r1, 132(r2)
	storeli.w r1, -756(r30)                 # 4-byte Folded Spill
	loads.w r1, 136(r2)
	storeli.w r1, -748(r30)                 # 4-byte Folded Spill
	loads.w r1, 140(r2)
	storeli.w r1, -740(r30)                 # 4-byte Folded Spill
	loads.w r1, 144(r2)
	storeli.w r1, -728(r30)                 # 4-byte Folded Spill
	loads.w r1, 148(r2)
	storeli.w r1, -720(r30)                 # 4-byte Folded Spill
	loads.w r1, 152(r2)
	storeli.w r1, -708(r30)                 # 4-byte Folded Spill
	loads.w r1, 156(r2)
	storeli.w r1, -700(r30)                 # 4-byte Folded Spill
	loads.w r1, 160(r2)
	storeli.w r1, -688(r30)                 # 4-byte Folded Spill
	loads.w r1, 164(r2)
	storeli.w r1, -680(r30)                 # 4-byte Folded Spill
	loads.w r1, 168(r2)
	storeli.w r1, -664(r30)                 # 4-byte Folded Spill
	loads.w r1, 172(r2)
	storeli.w r1, -644(r30)                 # 4-byte Folded Spill
	loads.w r1, 176(r2)
	storeli.w r1, -628(r30)                 # 4-byte Folded Spill
	loads.w r1, 180(r2)
	storeli.w r1, -604(r30)                 # 4-byte Folded Spill
	loads.w r1, 184(r2)
	storeli.w r1, -588(r30)                 # 4-byte Folded Spill
	loads.w r1, 188(r2)
	storeli.w r1, -568(r30)                 # 4-byte Folded Spill
	loads.w r1, 192(r2)
	storeli.w r1, -548(r30)                 # 4-byte Folded Spill
	loads.w r1, 196(r2)
	storeli.w r1, -532(r30)                 # 4-byte Folded Spill
	loads.w r1, 200(r2)
	storeli.w r1, -516(r30)                 # 4-byte Folded Spill
	loads.w r1, 204(r2)
	storeli.w r1, -508(r30)                 # 4-byte Folded Spill
	loads.w r1, 208(r2)
	storeli.w r1, -496(r30)                 # 4-byte Folded Spill
	loads.w r1, 212(r2)
	storeli.w r1, -488(r30)                 # 4-byte Folded Spill
	loads.w r1, 216(r2)
	storeli.w r1, -480(r30)                 # 4-byte Folded Spill
	loads.w r1, 220(r2)
	storeli.w r1, -468(r30)                 # 4-byte Folded Spill
	loads.w r1, 224(r2)
	storeli.w r1, -460(r30)                 # 4-byte Folded Spill
	loads.w r1, 228(r2)
	storeli.w r1, -448(r30)                 # 4-byte Folded Spill
	loads.w r1, 232(r2)
	storeli.w r1, -440(r30)                 # 4-byte Folded Spill
	loads.w r1, 236(r2)
	storeli.w r1, -428(r30)                 # 4-byte Folded Spill
	loads.w r1, 240(r2)
	storeli.w r1, -424(r30)                 # 4-byte Folded Spill
	loads.w r1, 244(r2)
	storeli.w r1, -420(r30)                 # 4-byte Folded Spill
	loads.w r1, 248(r2)
	storeli.w r1, -416(r30)                 # 4-byte Folded Spill
	loads.w r1, 252(r2)
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -336(r30)                 # 4-byte Folded Reload
	loads.w r2, 0(r1)
	storeli.w r2, -1048(r30)                # 4-byte Folded Spill
	loads.w r2, 4(r1)
	storeli.w r2, -1056(r30)                # 4-byte Folded Spill
	loads.w r2, 8(r1)
	storeli.w r2, -992(r30)                 # 4-byte Folded Spill
	loads.w r2, 12(r1)
	storeli.w r2, -988(r30)                 # 4-byte Folded Spill
	loads.w r2, 16(r1)
	storeli.w r2, -984(r30)                 # 4-byte Folded Spill
	loads.w r2, 20(r1)
	storeli.w r2, -976(r30)                 # 4-byte Folded Spill
	loads.w r2, 24(r1)
	storeli.w r2, -964(r30)                 # 4-byte Folded Spill
	loads.w r2, 28(r1)
	storeli.w r2, -960(r30)                 # 4-byte Folded Spill
	loads.w r2, 32(r1)
	storeli.w r2, -944(r30)                 # 4-byte Folded Spill
	loads.w r2, 36(r1)
	storeli.w r2, -928(r30)                 # 4-byte Folded Spill
	loads.w r2, 40(r1)
	storeli.w r2, -916(r30)                 # 4-byte Folded Spill
	loads.w r2, 44(r1)
	storeli.w r2, -908(r30)                 # 4-byte Folded Spill
	loads.w r2, 48(r1)
	storeli.w r2, -884(r30)                 # 4-byte Folded Spill
	loads.w r2, 52(r1)
	storeli.w r2, -872(r30)                 # 4-byte Folded Spill
	loads.w r2, 56(r1)
	storeli.w r2, -856(r30)                 # 4-byte Folded Spill
	loads.w r2, 60(r1)
	storeli.w r2, -848(r30)                 # 4-byte Folded Spill
	loads.w r2, 64(r1)
	storeli.w r2, -836(r30)                 # 4-byte Folded Spill
	loads.w r2, 68(r1)
	storeli.w r2, -824(r30)                 # 4-byte Folded Spill
	loads.w r2, 72(r1)
	storeli.w r2, -820(r30)                 # 4-byte Folded Spill
	loads.w r2, 76(r1)
	storeli.w r2, -808(r30)                 # 4-byte Folded Spill
	loads.w r2, 80(r1)
	storeli.w r2, -800(r30)                 # 4-byte Folded Spill
	loads.w r2, 84(r1)
	storeli.w r2, -792(r30)                 # 4-byte Folded Spill
	loads.w r2, 88(r1)
	storeli.w r2, -788(r30)                 # 4-byte Folded Spill
	loads.w r2, 92(r1)
	storeli.w r2, -780(r30)                 # 4-byte Folded Spill
	loads.w r2, 96(r1)
	storeli.w r2, -772(r30)                 # 4-byte Folded Spill
	loads.w r2, 100(r1)
	storeli.w r2, -764(r30)                 # 4-byte Folded Spill
	loads.w r2, 104(r1)
	storeli.w r2, -760(r30)                 # 4-byte Folded Spill
	loads.w r2, 108(r1)
	storeli.w r2, -752(r30)                 # 4-byte Folded Spill
	loads.w r2, 112(r1)
	storeli.w r2, -744(r30)                 # 4-byte Folded Spill
	loads.w r2, 116(r1)
	storeli.w r2, -736(r30)                 # 4-byte Folded Spill
	loads.w r2, 120(r1)
	storeli.w r2, -732(r30)                 # 4-byte Folded Spill
	loads.w r2, 124(r1)
	storeli.w r2, -724(r30)                 # 4-byte Folded Spill
	loads.w r2, 128(r1)
	storeli.w r2, -716(r30)                 # 4-byte Folded Spill
	loads.w r2, 132(r1)
	storeli.w r2, -712(r30)                 # 4-byte Folded Spill
	loads.w r2, 136(r1)
	storeli.w r2, -704(r30)                 # 4-byte Folded Spill
	loads.w r2, 140(r1)
	storeli.w r2, -696(r30)                 # 4-byte Folded Spill
	loads.w r2, 144(r1)
	storeli.w r2, -692(r30)                 # 4-byte Folded Spill
	loads.w r2, 148(r1)
	storeli.w r2, -684(r30)                 # 4-byte Folded Spill
	loads.w r2, 152(r1)
	storeli.w r2, -676(r30)                 # 4-byte Folded Spill
	loads.w r2, 156(r1)
	storeli.w r2, -660(r30)                 # 4-byte Folded Spill
	loads.w r2, 160(r1)
	storeli.w r2, -648(r30)                 # 4-byte Folded Spill
	loads.w r2, 164(r1)
	storeli.w r2, -640(r30)                 # 4-byte Folded Spill
	loads.w r2, 168(r1)
	storeli.w r2, -624(r30)                 # 4-byte Folded Spill
	loads.w r2, 172(r1)
	storeli.w r2, -608(r30)                 # 4-byte Folded Spill
	loads.w r2, 176(r1)
	storeli.w r2, -592(r30)                 # 4-byte Folded Spill
	loads.w r2, 180(r1)
	storeli.w r2, -580(r30)                 # 4-byte Folded Spill
	loads.w r2, 184(r1)
	storeli.w r2, -564(r30)                 # 4-byte Folded Spill
	loads.w r2, 188(r1)
	storeli.w r2, -552(r30)                 # 4-byte Folded Spill
	loads.w r2, 192(r1)
	storeli.w r2, -544(r30)                 # 4-byte Folded Spill
	loads.w r2, 196(r1)
	storeli.w r2, -528(r30)                 # 4-byte Folded Spill
	loads.w r2, 200(r1)
	storeli.w r2, -520(r30)                 # 4-byte Folded Spill
	loads.w r2, 204(r1)
	storeli.w r2, -512(r30)                 # 4-byte Folded Spill
	loads.w r2, 208(r1)
	storeli.w r2, -504(r30)                 # 4-byte Folded Spill
	loads.w r2, 212(r1)
	storeli.w r2, -500(r30)                 # 4-byte Folded Spill
	loads.w r2, 216(r1)
	storeli.w r2, -492(r30)                 # 4-byte Folded Spill
	loads.w r2, 220(r1)
	storeli.w r2, -484(r30)                 # 4-byte Folded Spill
	loads.w r2, 224(r1)
	storeli.w r2, -476(r30)                 # 4-byte Folded Spill
	loads.w r2, 228(r1)
	storeli.w r2, -472(r30)                 # 4-byte Folded Spill
	loads.w r2, 232(r1)
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	loads.w r2, 236(r1)
	storeli.w r2, -456(r30)                 # 4-byte Folded Spill
	loads.w r2, 240(r1)
	storeli.w r2, -452(r30)                 # 4-byte Folded Spill
	loads.w r2, 244(r1)
	storeli.w r2, -444(r30)                 # 4-byte Folded Spill
	loads.w r2, 248(r1)
	loads.w r1, 252(r1)
	storeli.w r2, -436(r30)                 # 4-byte Folded Spill
	loads.w r2, 104(r7)
	storeli.w r1, -432(r30)                 # 4-byte Folded Spill
	loads.w r1, 68(r7)
	storeli.w r2, -1072(r30)                # 4-byte Folded Spill
	loads.w r2, 152(r7)
	loads.w r7, 252(r7)
	storeli.w r7, -1140(r30)                # 4-byte Folded Spill
	bneq r3, zero, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r18, r24, r26
.LBB0_91:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r7, r26, r17
	storeli.w r18, -284(r30)                # 4-byte Folded Spill
	slli r3, r7, 9
	setle.f r19, r25, r7
	setle.f r20, r7, r25
	srli r18, r7, 23
	seteq r3, r3, r25
	andi r18, r18, 255
	setlti r18, r18, 255
	or r3, r18, r3
	and r18, r20, r19
	and r3, r18, r3
	addli r18, r25, 0
	bneq r3, zero, .LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r18, r17, r7
.LBB0_93:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r20, r7, r16
	storeli.w r18, -288(r30)                # 4-byte Folded Spill
	slli r3, r20, 9
	setle.f r18, r25, r20
	setle.f r19, r20, r25
	srli r17, r20, 23
	seteq r3, r3, r25
	andi r17, r17, 255
	setlti r17, r17, 255
	or r3, r17, r3
	and r17, r19, r18
	and r3, r17, r3
	addli r17, r25, 0
	bneq r3, zero, .LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r17, r16, r20
.LBB0_95:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r19, r20, r5
	storeli.w r17, -292(r30)                # 4-byte Folded Spill
	slli r3, r19, 9
	setle.f r17, r25, r19
	setle.f r18, r19, r25
	srli r16, r19, 23
	seteq r3, r3, r25
	andi r16, r16, 255
	setlti r16, r16, 255
	or r3, r16, r3
	and r16, r18, r17
	and r3, r16, r3
	addli r16, r25, 0
	bneq r3, zero, .LBB0_97
# %bb.96:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r16, r5, r19
.LBB0_97:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r18, r19, r12
	storeli.w r16, -296(r30)                # 4-byte Folded Spill
	slli r3, r18, 9
	setle.f r16, r25, r18
	setle.f r17, r18, r25
	srli r5, r18, 23
	seteq r3, r3, r25
	andi r5, r5, 255
	setlti r5, r5, 255
	or r3, r5, r3
	and r5, r17, r16
	and r3, r5, r3
	addli r5, r25, 0
	bneq r3, zero, .LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r5, r12, r18
.LBB0_99:                               #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r17, r18, r11
	storeli.w r5, -300(r30)                 # 4-byte Folded Spill
	slli r3, r17, 9
	setle.f r12, r25, r17
	setle.f r16, r17, r25
	srli r5, r17, 23
	seteq r3, r3, r25
	andi r5, r5, 255
	setlti r5, r5, 255
	or r3, r5, r3
	and r5, r16, r12
	and r3, r5, r3
	addli r5, r25, 0
	bneq r3, zero, .LBB0_101
# %bb.100:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r5, r11, r17
.LBB0_101:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r16, r17, r1
	storeli.w r5, -304(r30)                 # 4-byte Folded Spill
	slli r3, r16, 9
	setle.f r11, r25, r16
	setle.f r12, r16, r25
	srli r5, r16, 23
	seteq r3, r3, r25
	andi r5, r5, 255
	setlti r5, r5, 255
	or r3, r5, r3
	and r5, r12, r11
	and r3, r5, r3
	addli r5, r25, 0
	bneq r3, zero, .LBB0_103
# %bb.102:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r5, r1, r16
.LBB0_103:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r12, r16, r15
	storeli.w r5, -308(r30)                 # 4-byte Folded Spill
	slli r1, r12, 9
	setle.f r5, r25, r12
	setle.f r11, r12, r25
	srli r3, r12, 23
	seteq r1, r1, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	and r3, r11, r5
	and r1, r3, r1
	addli r3, r25, 0
	bneq r1, zero, .LBB0_105
# %bb.104:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r15, r12
.LBB0_105:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r15, r12, r4
	storeli.w r3, -312(r30)                 # 4-byte Folded Spill
	slli r1, r15, 9
	setle.f r5, r25, r15
	setle.f r11, r15, r25
	srli r3, r15, 23
	seteq r1, r1, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	and r3, r11, r5
	and r1, r3, r1
	addli r3, r25, 0
	bneq r1, zero, .LBB0_107
# %bb.106:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r4, r15
.LBB0_107:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r11, r15, r21
	storeli.w r3, -316(r30)                 # 4-byte Folded Spill
	storeli.w r19, -1004(r30)               # 4-byte Folded Spill
	slli r1, r11, 9
	setle.f r4, r25, r11
	setle.f r5, r11, r25
	srli r3, r11, 23
	seteq r1, r1, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	and r3, r5, r4
	and r1, r3, r1
	addli r3, r25, 0
	bneq r1, zero, .LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r21, r11
.LBB0_109:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r19, r11, r22
	storeli.w r3, -320(r30)                 # 4-byte Folded Spill
	slli r1, r19, 9
	setle.f r4, r25, r19
	setle.f r5, r19, r25
	srli r3, r19, 23
	seteq r1, r1, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	and r3, r5, r4
	and r1, r3, r1
	addli r3, r25, 0
	bneq r1, zero, .LBB0_111
# %bb.110:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r22, r19
.LBB0_111:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r21, r19, r14
	storeli.w r3, -1044(r30)                # 4-byte Folded Spill
	slli r1, r21, 9
	setle.f r4, r25, r21
	setle.f r5, r21, r25
	srli r3, r21, 23
	seteq r1, r1, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	and r3, r5, r4
	and r1, r3, r1
	addli r3, r25, 0
	bneq r1, zero, .LBB0_113
# %bb.112:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r14, r21
.LBB0_113:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r14, r21, r6
	storeli.w r3, -1060(r30)                # 4-byte Folded Spill
	loadli.w r22,  -1128(r30)               # 4-byte Folded Reload
	storeli.w r28, -1208(r30)               # 4-byte Folded Spill
	addli r28, r9, 0
	storeli.w r27, -1272(r30)               # 4-byte Folded Spill
	storeli.w r2, -1176(r30)                # 4-byte Folded Spill
	slli r1, r14, 9
	setle.f r4, r25, r14
	setle.f r5, r14, r25
	srli r3, r14, 23
	seteq r1, r1, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	and r3, r5, r4
	and r1, r3, r1
	addli r3, r25, 0
	bneq r1, zero, .LBB0_115
# %bb.114:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r6, r14
.LBB0_115:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r6, r14, r10
	storeli.w r3, -324(r30)                 # 4-byte Folded Spill
	loadli.w r27,  -1120(r30)               # 4-byte Folded Reload
	loadli.w r9,  -1100(r30)                # 4-byte Folded Reload
	loadli.w r24,  -1096(r30)               # 4-byte Folded Reload
	loadli.w r2,  -1072(r30)                # 4-byte Folded Reload
	slli r1, r6, 9
	setle.f r4, r25, r6
	setle.f r5, r6, r25
	srli r3, r6, 23
	seteq r1, r1, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	and r3, r5, r4
	and r1, r3, r1
	addli r3, r25, 0
	bneq r1, zero, .LBB0_117
# %bb.116:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r10, r6
.LBB0_117:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r10, r6, r8
	storeli.w r3, -328(r30)                 # 4-byte Folded Spill
	slli r1, r10, 9
	setle.f r4, r25, r10
	setle.f r5, r10, r25
	srli r3, r10, 23
	seteq r1, r1, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	and r3, r5, r4
	and r1, r3, r1
	addli r3, r25, 0
	bneq r1, zero, .LBB0_119
# %bb.118:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r8, r10
.LBB0_119:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r8, r10, r2
	storeli.w r3, -360(r30)                 # 4-byte Folded Spill
	storeli.w r10, -1064(r30)               # 4-byte Folded Spill
	slli r1, r8, 9
	setle.f r4, r25, r8
	setle.f r5, r8, r25
	srli r3, r8, 23
	seteq r1, r1, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	and r3, r5, r4
	and r1, r3, r1
	addli r3, r25, 0
	bneq r1, zero, .LBB0_121
# %bb.120:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r2, r8
.LBB0_121:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r2, r8, r13
	storeli.w r3, -1080(r30)                # 4-byte Folded Spill
	loadli.w r10,  -1144(r30)               # 4-byte Folded Reload
	slli r1, r2, 9
	setle.f r4, r25, r2
	setle.f r5, r2, r25
	srli r3, r2, 23
	seteq r1, r1, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	and r3, r5, r4
	and r1, r3, r1
	addli r3, r25, 0
	bneq r1, zero, .LBB0_123
# %bb.122:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r13, r2
.LBB0_123:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r5, r2, r24
	storeli.w r3, -1088(r30)                # 4-byte Folded Spill
	storeli.w r2, -1072(r30)                # 4-byte Folded Spill
	slli r1, r5, 9
	setle.f r3, r25, r5
	setle.f r4, r5, r25
	srli r2, r5, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r25, 0
	bneq r1, zero, .LBB0_125
# %bb.124:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r24, r5
.LBB0_125:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r24, r5, r9
	storeli.w r2, -1096(r30)                # 4-byte Folded Spill
	addli r13, r28, 0
	slli r1, r24, 9
	setle.f r3, r25, r24
	setle.f r4, r24, r25
	srli r2, r24, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r25, 0
	bneq r1, zero, .LBB0_127
# %bb.126:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r9, r24
.LBB0_127:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r26, -816(r30)                # 4-byte Folded Spill
	loadli.w r26,  -1112(r30)               # 4-byte Folded Reload
	storeli.w r2, -1100(r30)                # 4-byte Folded Spill
	add.f.rn r9, r24, r26
	slli r1, r9, 9
	setle.f r3, r25, r9
	setle.f r4, r9, r25
	srli r2, r9, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r25, 0
	bneq r1, zero, .LBB0_129
# %bb.128:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r26, r9
.LBB0_129:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r26, r9, r27
	storeli.w r2, -1112(r30)                # 4-byte Folded Spill
	slli r1, r26, 9
	setle.f r3, r25, r26
	setle.f r4, r26, r25
	srli r2, r26, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r25, 0
	bneq r1, zero, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r27, r26
.LBB0_131:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r27, r26, r22
	storeli.w r2, -1120(r30)                # 4-byte Folded Spill
	slli r1, r27, 9
	setle.f r3, r25, r27
	setle.f r4, r27, r25
	srli r2, r27, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r25, 0
	bneq r1, zero, .LBB0_133
# %bb.132:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r22, r27
.LBB0_133:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r7, -996(r30)                 # 4-byte Folded Spill
	loadli.w r7,  -1132(r30)                # 4-byte Folded Reload
	storeli.w r2, -1128(r30)                # 4-byte Folded Spill
	add.f.rn r28, r27, r7
	slli r1, r28, 9
	setle.f r3, r25, r28
	setle.f r4, r28, r25
	srli r2, r28, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r25, 0
	bneq r1, zero, .LBB0_135
# %bb.134:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r7, r28
.LBB0_135:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r22,  -1124(r30)               # 4-byte Folded Reload
	storeli.w r2, -1132(r30)                # 4-byte Folded Spill
	add.f.rn r7, r28, r22
	slli r1, r7, 9
	setle.f r3, r25, r7
	setle.f r4, r7, r25
	srli r2, r7, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r25, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r22, r7
.LBB0_137:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r7, -1124(r30)                # 4-byte Folded Spill
	add.f.rn r7, r7, r10
	storeli.w r3, -1148(r30)                # 4-byte Folded Spill
	slli r1, r7, 9
	setle.f r3, r25, r7
	setle.f r4, r7, r25
	srli r2, r7, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r25, 0
	bneq r1, zero, .LBB0_139
# %bb.138:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r10, r7
.LBB0_139:                              #   in Loop: Header=BB0_5 Depth=1
	addli r10, r23, 0
	storeli.w r2, -1156(r30)                # 4-byte Folded Spill
	add.f.rn r23, r7, r10
	slli r1, r23, 9
	setle.f r3, r25, r23
	setle.f r4, r23, r25
	srli r2, r23, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r25, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_141
# %bb.140:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r10, r23
.LBB0_141:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r20, -1000(r30)               # 4-byte Folded Spill
	loadli.w r20,  -1160(r30)               # 4-byte Folded Reload
	storeli.w r23, -1144(r30)               # 4-byte Folded Spill
	storeli.w r3, -1164(r30)                # 4-byte Folded Spill
	add.f.rn r23, r23, r20
	slli r1, r23, 9
	setle.f r3, r25, r23
	setle.f r4, r23, r25
	srli r2, r23, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r25, 0
	bneq r1, zero, .LBB0_143
# %bb.142:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r20, r23
.LBB0_143:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r10,  -1176(r30)               # 4-byte Folded Reload
	storeli.w r2, -1172(r30)                # 4-byte Folded Spill
	add.f.rn r20, r23, r10
	slli r1, r20, 9
	setle.f r3, r25, r20
	setle.f r4, r20, r25
	srli r2, r20, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r25, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_145
# %bb.144:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r10, r20
.LBB0_145:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r22,  -1168(r30)               # 4-byte Folded Reload
	storeli.w r20, -1160(r30)               # 4-byte Folded Spill
	storeli.w r3, -1180(r30)                # 4-byte Folded Spill
	add.f.rn r20, r20, r22
	slli r1, r20, 9
	setle.f r3, r25, r20
	setle.f r4, r20, r25
	srli r2, r20, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r25, 0
	and r1, r2, r1
	addli r2, r20, 0
	bneq r1, zero, .LBB0_147
# %bb.146:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r22, r2
.LBB0_147:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r20, r2, r13
	storeli.w r3, -1188(r30)                # 4-byte Folded Spill
	storeli.w r2, -1168(r30)                # 4-byte Folded Spill
	slli r1, r20, 9
	setle.f r3, r25, r20
	setle.f r4, r20, r25
	srli r2, r20, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r25, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_149
# %bb.148:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r13, r20
.LBB0_149:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r22,  -1184(r30)               # 4-byte Folded Reload
	storeli.w r20, -1176(r30)               # 4-byte Folded Spill
	storeli.w r3, -1196(r30)                # 4-byte Folded Spill
	add.f.rn r20, r20, r22
	slli r1, r20, 9
	setle.f r3, r25, r20
	setle.f r4, r20, r25
	srli r2, r20, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r25, 0
	and r1, r2, r1
	addli r2, r20, 0
	bneq r1, zero, .LBB0_151
# %bb.150:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r22, r2
.LBB0_151:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r10,  -1192(r30)               # 4-byte Folded Reload
	storeli.w r3, -1204(r30)                # 4-byte Folded Spill
	storeli.w r2, -1184(r30)                # 4-byte Folded Spill
	add.f.rn r20, r2, r10
	slli r1, r20, 9
	setle.f r3, r25, r20
	setle.f r4, r20, r25
	srli r2, r20, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r25, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_153
# %bb.152:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r10, r20
.LBB0_153:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r10,  -1200(r30)               # 4-byte Folded Reload
	storeli.w r20, -1192(r30)               # 4-byte Folded Spill
	storeli.w r3, -1212(r30)                # 4-byte Folded Spill
	add.f.rn r20, r20, r10
	slli r1, r20, 9
	setle.f r3, r25, r20
	setle.f r4, r20, r25
	srli r2, r20, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r25, 0
	and r1, r2, r1
	addli r2, r20, 0
	bneq r1, zero, .LBB0_155
# %bb.154:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r10, r2
.LBB0_155:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r10,  -1208(r30)               # 4-byte Folded Reload
	storeli.w r3, -1220(r30)                # 4-byte Folded Spill
	storeli.w r2, -1200(r30)                # 4-byte Folded Spill
	add.f.rn r20, r2, r10
	slli r1, r20, 9
	setle.f r3, r25, r20
	setle.f r4, r20, r25
	srli r2, r20, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r25, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_157
# %bb.156:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r10, r20
.LBB0_157:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r16, -1016(r30)               # 4-byte Folded Spill
	loadli.w r16,  -1228(r30)               # 4-byte Folded Reload
	storeli.w r20, -1208(r30)               # 4-byte Folded Spill
	storeli.w r3, -1224(r30)                # 4-byte Folded Spill
	loadli.w r10,  -1272(r30)               # 4-byte Folded Reload
	add.f.rn r20, r20, r16
	slli r1, r20, 9
	setle.f r3, r25, r20
	setle.f r4, r20, r25
	srli r2, r20, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r25, 0
	bneq r1, zero, .LBB0_159
# %bb.158:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r16, r20
.LBB0_159:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r12, -1020(r30)               # 4-byte Folded Spill
	loadli.w r12,  -1216(r30)               # 4-byte Folded Reload
	storeli.w r2, -1236(r30)                # 4-byte Folded Spill
	add.f.rn r16, r20, r12
	slli r1, r16, 9
	setle.f r3, r25, r16
	setle.f r4, r16, r25
	srli r2, r16, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r25, 0
	bneq r1, zero, .LBB0_161
# %bb.160:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r12, r16
.LBB0_161:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r21, -1036(r30)               # 4-byte Folded Spill
	loadli.w r21,  -1152(r30)               # 4-byte Folded Reload
	storeli.w r2, -1244(r30)                # 4-byte Folded Spill
	add.f.rn r12, r16, r21
	slli r1, r12, 9
	setle.f r3, r25, r12
	setle.f r4, r12, r25
	srli r2, r12, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r25, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_163
# %bb.162:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r21, r12
.LBB0_163:                              #   in Loop: Header=BB0_5 Depth=1
	addli r21, r15, 0
	loadli.w r15,  -1240(r30)               # 4-byte Folded Reload
	storeli.w r12, -1232(r30)               # 4-byte Folded Spill
	storeli.w r3, -1252(r30)                # 4-byte Folded Spill
	add.f.rn r12, r12, r15
	slli r1, r12, 9
	setle.f r3, r25, r12
	setle.f r4, r12, r25
	srli r2, r12, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r25, 0
	and r1, r2, r1
	addli r2, r12, 0
	loadli.w r12,  -1076(r30)               # 4-byte Folded Reload
	bneq r1, zero, .LBB0_165
# %bb.164:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r15, r2
.LBB0_165:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r19, -1032(r30)               # 4-byte Folded Spill
	loadli.w r19,  -1136(r30)               # 4-byte Folded Reload
	storeli.w r3, -1256(r30)                # 4-byte Folded Spill
	storeli.w r2, -1240(r30)                # 4-byte Folded Spill
	add.f.rn r15, r2, r19
	slli r1, r15, 9
	setle.f r3, r25, r15
	setle.f r4, r15, r25
	srli r2, r15, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r25, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_167
# %bb.166:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r19, r15
.LBB0_167:                              #   in Loop: Header=BB0_5 Depth=1
	addli r19, r11, 0
	loadli.w r11,  -1116(r30)               # 4-byte Folded Reload
	storeli.w r15, -1248(r30)               # 4-byte Folded Spill
	storeli.w r3, -1268(r30)                # 4-byte Folded Spill
	add.f.rn r15, r15, r11
	slli r1, r15, 9
	setle.f r3, r25, r15
	setle.f r4, r15, r25
	srli r2, r15, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r25, 0
	and r1, r2, r1
	addli r2, r15, 0
	loadli.w r15,  -1084(r30)               # 4-byte Folded Reload
	bneq r1, zero, .LBB0_169
# %bb.168:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r11, r2
.LBB0_169:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r22,  -1108(r30)               # 4-byte Folded Reload
	storeli.w r3, -1276(r30)                # 4-byte Folded Spill
	storeli.w r2, -1260(r30)                # 4-byte Folded Spill
	add.f.rn r11, r2, r22
	slli r1, r11, 9
	setle.f r3, r25, r11
	setle.f r4, r11, r25
	srli r2, r11, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r25, 0
	and r1, r2, r1
	bneq r1, zero, .LBB0_171
# %bb.170:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r22, r11
.LBB0_171:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r11, -1264(r30)               # 4-byte Folded Spill
	add.f.rn r11, r11, r10
	storeli.w r3, -1284(r30)                # 4-byte Folded Spill
	slli r1, r11, 9
	setle.f r3, r25, r11
	setle.f r4, r11, r25
	srli r2, r11, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r25, 0
	and r1, r2, r1
	addli r2, r11, 0
	loadli.w r11,  -1092(r30)               # 4-byte Folded Reload
	bneq r1, zero, .LBB0_173
# %bb.172:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r10, r2
.LBB0_173:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r22,  -1104(r30)               # 4-byte Folded Reload
	storeli.w r16, -1228(r30)               # 4-byte Folded Spill
	storeli.w r3, -1292(r30)                # 4-byte Folded Spill
	storeli.w r2, -1272(r30)                # 4-byte Folded Spill
	add.f.rn r16, r2, r22
	slli r1, r16, 9
	setle.f r3, r25, r16
	setle.f r4, r16, r25
	srli r2, r16, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	addli r3, r25, 0
	and r1, r2, r1
	addli r2, r16, 0
	bneq r1, zero, .LBB0_175
# %bb.174:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r22, r2
.LBB0_175:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r22, r2, r11
	storeli.w r3, -1300(r30)                # 4-byte Folded Spill
	storeli.w r2, -1280(r30)                # 4-byte Folded Spill
	loadli.w r10,  -1024(r30)               # 4-byte Folded Reload
	storeli.w r17, -1012(r30)               # 4-byte Folded Spill
	slli r1, r22, 9
	setle.f r3, r25, r22
	setle.f r4, r22, r25
	srli r2, r22, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r25, 0
	bneq r1, zero, .LBB0_177
# %bb.176:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r11, r22
.LBB0_177:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r11, r22, r15
	storeli.w r2, -1308(r30)                # 4-byte Folded Spill
	addli r17, r18, 0
	slli r1, r11, 9
	setle.f r3, r25, r11
	setle.f r4, r11, r25
	srli r2, r11, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r25, 0
	bneq r1, zero, .LBB0_179
# %bb.178:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r15, r11
.LBB0_179:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r15, r11, r12
	storeli.w r2, -1316(r30)                # 4-byte Folded Spill
	storeli.w r11, -1296(r30)               # 4-byte Folded Spill
	addli r11, r19, 0
	slli r1, r15, 9
	setle.f r3, r25, r15
	setle.f r4, r15, r25
	srli r2, r15, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r25, 0
	bneq r1, zero, .LBB0_181
# %bb.180:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r12, r15
.LBB0_181:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r19,  -1068(r30)               # 4-byte Folded Reload
	storeli.w r2, -1324(r30)                # 4-byte Folded Spill
	add.f.rn r12, r15, r19
	slli r1, r12, 9
	setle.f r3, r25, r12
	setle.f r4, r12, r25
	srli r2, r12, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r25, 0
	bneq r1, zero, .LBB0_183
# %bb.182:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r19, r12
.LBB0_183:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r5, -1076(r30)                # 4-byte Folded Spill
	loadli.w r5,  -1052(r30)                # 4-byte Folded Reload
	storeli.w r15, -1304(r30)               # 4-byte Folded Spill
	storeli.w r2, -1332(r30)                # 4-byte Folded Spill
	addli r13, r8, 0
	storeli.w r12, -1312(r30)               # 4-byte Folded Spill
	add.f.rn r15, r12, r5
	slli r1, r15, 9
	setle.f r3, r25, r15
	setle.f r4, r15, r25
	srli r2, r15, 23
	seteq r1, r1, r25
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	and r2, r4, r3
	and r1, r2, r1
	addli r2, r25, 0
	bneq r1, zero, .LBB0_185
# %bb.184:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r2, r5, r15
.LBB0_185:                              #   in Loop: Header=BB0_5 Depth=1
	addli r8, r6, 0
	loadli.w r6,  -1040(r30)                # 4-byte Folded Reload
	storeli.w r2, -1336(r30)                # 4-byte Folded Spill
	loadli.w r2,  -1140(r30)                # 4-byte Folded Reload
	addli r16, r14, 0
	storeli.w r15, -1320(r30)               # 4-byte Folded Spill
	add.f.rn r19, r15, r6
	slli r1, r19, 9
	setle.f r4, r25, r19
	setle.f r5, r19, r25
	srli r3, r19, 23
	seteq r1, r1, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	and r3, r5, r4
	and r1, r3, r1
	addli r3, r25, 0
	bneq r1, zero, .LBB0_187
# %bb.186:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r6, r19
.LBB0_187:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r6,  -1028(r30)                # 4-byte Folded Reload
	storeli.w r3, -1344(r30)                # 4-byte Folded Spill
	add.f.rn r14, r19, r6
	slli r1, r14, 9
	setle.f r4, r25, r14
	setle.f r5, r14, r25
	srli r3, r14, 23
	seteq r1, r1, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	and r3, r5, r4
	addli r4, r25, 0
	and r1, r3, r1
	bneq r1, zero, .LBB0_189
# %bb.188:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r4, r6, r14
.LBB0_189:                              #   in Loop: Header=BB0_5 Depth=1
	storeli.w r14, -1340(r30)               # 4-byte Folded Spill
	add.f.rn r14, r14, r10
	storeli.w r4, -1356(r30)                # 4-byte Folded Spill
	slli r1, r14, 9
	setle.f r4, r25, r14
	setle.f r5, r14, r25
	srli r3, r14, 23
	seteq r1, r1, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	and r3, r5, r4
	and r1, r3, r1
	addli r3, r25, 0
	bneq r1, zero, .LBB0_191
# %bb.190:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r3, r10, r14
.LBB0_191:                              #   in Loop: Header=BB0_5 Depth=1
	loadli.w r6,  -1008(r30)                # 4-byte Folded Reload
	storeli.w r3, -1360(r30)                # 4-byte Folded Spill
	storeli.w r8, -1052(r30)                # 4-byte Folded Spill
	add.f.rn r10, r14, r6
	slli r1, r10, 9
	setle.f r4, r25, r10
	setle.f r5, r10, r25
	srli r3, r10, 23
	seteq r1, r1, r25
	andi r3, r3, 255
	setlti r3, r3, 255
	or r1, r3, r1
	and r3, r5, r4
	addli r4, r25, 0
	and r1, r3, r1
	bneq r1, zero, .LBB0_193
# %bb.192:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r4, r6, r10
.LBB0_193:                              #   in Loop: Header=BB0_5 Depth=1
	add.f.rn r3, r10, r2
	storeli.w r4, -1364(r30)                # 4-byte Folded Spill
	storeli.w r14, -1348(r30)               # 4-byte Folded Spill
	storeli.w r19, -1328(r30)               # 4-byte Folded Spill
	storeli.w r22, -1288(r30)               # 4-byte Folded Spill
	storeli.w r20, -1216(r30)               # 4-byte Folded Spill
	storeli.w r23, -1152(r30)               # 4-byte Folded Spill
	storeli.w r7, -1136(r30)                # 4-byte Folded Spill
	storeli.w r28, -1116(r30)               # 4-byte Folded Spill
	storeli.w r27, -1108(r30)               # 4-byte Folded Spill
	storeli.w r26, -1104(r30)               # 4-byte Folded Spill
	storeli.w r9, -1092(r30)                # 4-byte Folded Spill
	storeli.w r24, -1084(r30)               # 4-byte Folded Spill
	storeli.w r13, -1068(r30)               # 4-byte Folded Spill
	storeli.w r16, -1040(r30)               # 4-byte Folded Spill
	storeli.w r11, -1028(r30)               # 4-byte Folded Spill
	storeli.w r21, -1024(r30)               # 4-byte Folded Spill
	storeli.w r17, -1008(r30)               # 4-byte Folded Spill
	storeli.w r10, -1352(r30)               # 4-byte Folded Spill
	slli r1, r3, 9
	setle.f r5, r25, r3
	setle.f r6, r3, r25
	srli r4, r3, 23
	seteq r1, r1, r25
	andi r4, r4, 255
	setlti r4, r4, 255
	or r1, r4, r1
	and r4, r6, r5
	and r1, r4, r1
	bneq r1, zero, .LBB0_2
# %bb.194:                              #   in Loop: Header=BB0_5 Depth=1
	div.f.rn r25, r2, r3
	j .LBB0_2
.LBB0_195:                              # %._crit_edge
	.loc	1 56 4 epilogue_begin is_stmt 1 # cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py:56:4
	addli sp, sp, 1384
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
	.long	1448                            # 0x5a8
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
.asciz	"cetbppiqebhjs2mgfuqxrkfuj6xwh36jattg5ajy5zopbmqaw4ed.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/et" # string offset=63
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
