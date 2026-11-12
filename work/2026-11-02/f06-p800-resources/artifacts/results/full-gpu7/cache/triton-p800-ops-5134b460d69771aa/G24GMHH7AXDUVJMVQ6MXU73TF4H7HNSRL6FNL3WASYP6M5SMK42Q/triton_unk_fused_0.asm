	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/i5" "ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py"
	.loc	1 22 0                          # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -536
	lui r2, :hi20:global_smem
	core_id r1
	addli r30, sp, 472
	lui r9, 15
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r6,  52(r30)
	loadli.w r4,  48(r30)
	loadli.w r5,  56(r30)
	ori r24, r9, 4095
	add.s r7, r3, r2
	mul.s r4, r6, r4
	addli r8, r7, 8208
	mul.s r4, r4, r5
	storeli.w r8, -360(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r24
	sync_group
	storeli.w r7, -356(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r7)
	load_param_i r7, 0
	mfence { lm, sm, gm }
	csr_set csr3, r24
	sync_group
	storeli.w r4, -364(r30)                 # 4-byte Folded Spill
	ble.s r4, r7, .LBB0_9
# %bb.1:                                # %.lr.ph
	addli r4, zero, 8
	load_param_i r12, 1
	andi r25, r1, 7
	addli r26, zero, 2
	load.d r[8:9], 16(r30)
	load.d r[10:11], 8(r30)
	load.d r[19:20], 32(r30)
	addli r16, r30, -256
	addli r21, zero, 4
	vxor.u.mz vr0{mr1}, vr0, vr0
	#APP
	vxor.s.mz vr1{mr1}, vr1, vr1
	#NO_APP
	storeli.w r24, -368(r30)                # 4-byte Folded Spill
	div.s r6, r1, r4
	storeli.w r12, -380(r30)                # 4-byte Folded Spill
	load.d r[4:5], 24(r30)
	storeli.w r25, -468(r30)                # 4-byte Folded Spill
	storeli.w r6, -372(r30)                 # 4-byte Folded Spill
	slli r6, r6, 3
	sub.s r6, r1, r6
	slli r6, r6, 4
	ori r12, r6, 1
	storeli.w r6, -376(r30)                 # 4-byte Folded Spill
	storeli.w r12, -384(r30)                # 4-byte Folded Spill
	ori r12, r6, 2
	storeli.w r12, -388(r30)                # 4-byte Folded Spill
	ori r12, r6, 3
	storeli.w r12, -392(r30)                # 4-byte Folded Spill
	ori r12, r6, 4
	storeli.w r12, -396(r30)                # 4-byte Folded Spill
	ori r12, r6, 5
	storeli.w r12, -400(r30)                # 4-byte Folded Spill
	ori r12, r6, 6
	storeli.w r12, -404(r30)                # 4-byte Folded Spill
	ori r12, r6, 7
	storeli.w r12, -408(r30)                # 4-byte Folded Spill
	ori r12, r6, 8
	storeli.w r12, -412(r30)                # 4-byte Folded Spill
	ori r12, r6, 9
	storeli.w r12, -416(r30)                # 4-byte Folded Spill
	ori r12, r6, 10
	storeli.w r12, -420(r30)                # 4-byte Folded Spill
	ori r12, r6, 11
	storeli.w r12, -424(r30)                # 4-byte Folded Spill
	ori r12, r6, 12
	storeli.w r12, -428(r30)                # 4-byte Folded Spill
	ori r12, r6, 13
	storeli.w r12, -432(r30)                # 4-byte Folded Spill
	ori r12, r6, 14
	storeli.w r12, -436(r30)                # 4-byte Folded Spill
	sext_int2long r[12:13], r6
	ori r6, r6, 15
	storeli.w r6, -440(r30)                 # 4-byte Folded Spill
	lui r6, 1048575
	sll.d r[12:13], r[12:13], r26
	ori r6, r6, 4064
	add.ul r[10:11], r[10:11], r[12:13]
	add.ul r[8:9], r[8:9], r[12:13]
	add.ul r[4:5], r[4:5], r[12:13]
	and r3, r3, r6
	store.d r[10:11], -448(r30)             # 8-byte Folded Spill
	store.d r[8:9], -456(r30)               # 8-byte Folded Spill
	store.d r[4:5], -464(r30)               # 8-byte Folded Spill
	add.s r2, r3, r2
	addli r1, r2, 8208
	storeli.w r2, -348(r30)                 # 4-byte Folded Spill
	storeli.w r1, -352(r30)                 # 4-byte Folded Spill
	addli r1, zero, 2
	vmmov mr2, r1
	lui r1, 239665
	ori r1, r1, 623
	storeli.w r1, -472(r30)                 # 4-byte Folded Spill
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r8
	sync_group
	loadli.w r3,  -352(r30)                 # 4-byte Folded Reload
.Ltmp0:
	.loc	1 63 20 prologue_end            # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:63:20
	vadd.s.mz vr4{mr1}, zero, vr0
	.loc	1 61 28                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:61:28
	lui r15, 260096
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	sext_int2long r[24:25], r13
	sext_int2long r[17:18], r14
	sext_int2long r[13:14], r22
	sext_int2long r[5:6], r5
	.loc	1 65 48 is_stmt 0               # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	addli r10, r16, 4
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	sll.d r[5:6], r[5:6], r26
	sll.d r[24:25], r[24:25], r26
	sll.d r[17:18], r[17:18], r26
	loads.w r8, 0(r3)
	addli r3, zero, 1
	add.ul r[5:6], r[19:20], r[5:6]
	add.ul r[24:25], r[19:20], r[24:25]
	add.ul r[17:18], r[19:20], r[17:18]
	vmmov mr2, r3
	.loc	1 63 20 is_stmt 1               # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:63:20
	loadli.w r3,  -328(r30)                 # 4-byte Folded Reload
	vor.u.mh vr4{mr2}, r3, vr4
	addli r3, zero, 2
	vmmov mr3, r3
	vmmov mr2, mr3
	loadli.w r3,  -324(r30)                 # 4-byte Folded Reload
	vor.u.mh vr4{mr3}, r3, vr4
	addli r3, zero, 4
	vmmov mr3, r3
	loadli.w r3,  -320(r30)                 # 4-byte Folded Reload
	vor.u.mh vr4{mr3}, r3, vr4
	addli r3, zero, 8
	vmmov mr0, r3
	loadli.w r3,  -316(r30)                 # 4-byte Folded Reload
	vor.u.mh vr4{mr0}, r3, vr4
	addli r3, zero, 16
	vmmov mr0, r3
	loadli.w r3,  -312(r30)                 # 4-byte Folded Reload
	vor.u.mh vr4{mr0}, r3, vr4
	addli r3, zero, 32
	vmmov mr0, r3
	loadli.w r3,  -308(r30)                 # 4-byte Folded Reload
	vor.u.mh vr4{mr0}, r3, vr4
	addli r3, zero, 64
	vmmov mr0, r3
	loadli.w r3,  -304(r30)                 # 4-byte Folded Reload
	vor.u.mh vr4{mr0}, r3, vr4
	addli r3, zero, 128
	vmmov mr0, r3
	loadli.w r3,  -300(r30)                 # 4-byte Folded Reload
	vor.u.mh vr4{mr0}, r3, vr4
	addli r3, zero, 256
	vmmov mr0, r3
	loadli.w r3,  -296(r30)                 # 4-byte Folded Reload
	vor.u.mh vr4{mr0}, r3, vr4
	.loc	1 58 21                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:58:21
	lui r3, 245760
	mul.f.rn r8, r8, r3
	addli r3, zero, 512
	vmmov mr0, r3
	.loc	1 63 20                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:63:20
	loadli.w r3,  -292(r30)                 # 4-byte Folded Reload
	vor.u.mh vr4{mr0}, r3, vr4
	addli r3, zero, 1024
	vmmov mr0, r3
	loadli.w r3,  -288(r30)                 # 4-byte Folded Reload
	vor.u.mh vr4{mr0}, r3, vr4
	.loc	1 60 20                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:60:20
	loadli.w r3,  -472(r30)                 # 4-byte Folded Reload
	add.f.rn r8, r8, r3
	addli r3, zero, 2048
	vmmov mr0, r3
	.loc	1 63 20                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:63:20
	loadli.w r3,  -284(r30)                 # 4-byte Folded Reload
	vor.u.mh vr4{mr0}, r3, vr4
	addli r3, zero, 4096
	.loc	1 61 28                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:61:28
	sqrt.f.rn r8, r8
	vmmov mr0, r3
	.loc	1 63 20                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:63:20
	loadli.w r3,  -280(r30)                 # 4-byte Folded Reload
	vor.u.mh vr4{mr0}, r3, vr4
	addli r3, zero, 8192
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	load.d r[22:23], -272(r30)              # 8-byte Folded Reload
	vmmov mr0, r3
	.loc	1 63 20                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:63:20
	loadli.w r3,  -276(r30)                 # 4-byte Folded Reload
	.loc	1 61 28                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:61:28
	div.f.rn r8, r15, r8
	lui r15, 4
	.loc	1 62 20                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:62:20
	#APP
	vmul.f.mz.rn vr3{mr1}, r8, vr3
	#NO_APP
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	add.ul r[22:23], r[19:20], r[22:23]
	.loc	1 65 48 is_stmt 0               # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	lui r8, 983040
	.loc	1 63 20 is_stmt 1               # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:63:20
	vor.u.mh vr4{mr0}, r3, vr4
	vmmov mr0, r15
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	lui r3, 983040
	lui r15, 983040
	or r8, r21, r8
	or r3, r21, r3
	or r15, r21, r15
	.loc	1 63 20                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:63:20
	vor.u.mh vr4{mr0}, r28, vr4
	lui r28, 8
	vmmov mr0, r28
	loadli.w r28,  -260(r30)                # 4-byte Folded Reload
	vor.u.mh vr4{mr0}, r28, vr4
	#APP
	vmac.f.mz.rn vr2{mr1}, vr3, vr4
	#NO_APP
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	vstore_mask16.mz vr2{mr1}, -256(r30)
	mfence { lm }
	s_lm2gm r3, r16, 0(r[22:23])
	s_lm2gm r15, r10, 0(r[5:6])
	.loc	1 65 25 is_stmt 0               # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	sext_int2long r[5:6], r11
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	lui r11, 983040
	addli r3, r16, 8
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	sext_int2long r[22:23], r12
	sll.d r[12:13], r[13:14], r26
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	addli r10, r16, 12
	s_lm2gm r8, r3, 0(r[24:25])
	lui r8, 983040
	or r11, r21, r11
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	add.ul r[12:13], r[19:20], r[12:13]
	sll.d r[14:15], r[22:23], r26
	sll.d r[5:6], r[5:6], r26
	sext_int2long r[2:3], r2
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	s_lm2gm r11, r10, 0(r[17:18])
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	sext_int2long r[10:11], r1
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	addli r1, r16, 16
	or r8, r21, r8
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	add.ul r[14:15], r[19:20], r[14:15]
	add.ul r[5:6], r[19:20], r[5:6]
	sll.d r[2:3], r[2:3], r26
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	s_lm2gm r8, r1, 0(r[12:13])
	lui r1, 983040
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	sext_int2long r[12:13], r4
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	addli r4, r16, 20
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	add.ul r[2:3], r[19:20], r[2:3]
	sll.d r[10:11], r[10:11], r26
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	or r1, r21, r1
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	add.ul r[10:11], r[19:20], r[10:11]
	sll.d r[12:13], r[12:13], r26
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	s_lm2gm r1, r4, 0(r[14:15])
	lui r1, 983040
	addli r4, r16, 24
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	add.ul r[12:13], r[19:20], r[12:13]
	sext_int2long r[14:15], r27
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	or r1, r21, r1
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	sll.d r[14:15], r[14:15], r26
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	s_lm2gm r1, r4, 0(r[5:6])
	lui r1, 983040
	addli r6, r16, 28
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	sext_int2long r[4:5], r9
	add.ul r[8:9], r[19:20], r[14:15]
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	or r1, r21, r1
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	sll.d r[4:5], r[4:5], r26
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	s_lm2gm r1, r6, 0(r[2:3])
	lui r3, 983040
	addli r6, r16, 32
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	loadli.w r1,  -344(r30)                 # 4-byte Folded Reload
	add.ul r[4:5], r[19:20], r[4:5]
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	or r3, r21, r3
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	sext_int2long r[1:2], r1
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	s_lm2gm r3, r6, 0(r[10:11])
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	loadli.w r3,  -340(r30)                 # 4-byte Folded Reload
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	addli r6, r16, 36
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	sll.d r[1:2], r[1:2], r26
	sext_int2long r[10:11], r3
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	lui r3, 983040
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	add.ul r[1:2], r[19:20], r[1:2]
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	or r3, r21, r3
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	sll.d r[10:11], r[10:11], r26
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	s_lm2gm r3, r6, 0(r[12:13])
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	loadli.w r3,  -336(r30)                 # 4-byte Folded Reload
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	addli r6, r16, 40
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	add.ul r[10:11], r[19:20], r[10:11]
	sext_int2long r[12:13], r3
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	lui r3, 983040
	or r3, r21, r3
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	sll.d r[12:13], r[12:13], r26
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	s_lm2gm r3, r6, 0(r[8:9])
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	loadli.w r3,  -332(r30)                 # 4-byte Folded Reload
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	addli r6, r16, 44
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	add.ul r[12:13], r[19:20], r[12:13]
	sext_int2long r[8:9], r3
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	lui r3, 983040
	or r3, r21, r3
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	sll.d r[8:9], r[8:9], r26
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	s_lm2gm r3, r6, 0(r[4:5])
	lui r3, 983040
	addli r4, r16, 48
	lui r5, 983040
	.loc	1 65 25                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:25
	add.ul r[8:9], r[19:20], r[8:9]
	.loc	1 65 48                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:48
	addli r6, r16, 52
	or r3, r21, r3
	or r5, r21, r5
	s_lm2gm r3, r4, 0(r[1:2])
	lui r1, 983040
	lui r3, 983040
	addli r2, r16, 56
	addli r4, r16, 60
	s_lm2gm r5, r6, 0(r[10:11])
	or r1, r21, r1
	or r3, r21, r3
	s_lm2gm r1, r2, 0(r[12:13])
	loadli.w r1,  -380(r30)                 # 4-byte Folded Reload
	s_lm2gm r3, r4, 0(r[8:9])
	mfence { lm }
	loadli.w r24,  -368(r30)                # 4-byte Folded Reload
	loadli.w r25,  -468(r30)                # 4-byte Folded Reload
	add.s r7, r7, r1
	loadli.w r1,  -364(r30)                 # 4-byte Folded Reload
	blt.s r7, r1, .LBB0_3
	j .LBB0_9
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 48                          # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:0:48
	loadli.w r1,  56(r30)
	loadli.w r2,  52(r30)
	.loc	1 29 23 is_stmt 1               # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:29:23
	loadli.w r5,  -372(r30)                 # 4-byte Folded Reload
	.loc	1 38 46                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:38:46
	vstore_mask16.mz vr0{mr1}, -256(r30)
	addli r10, zero, 64
	.loc	1 39 37                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:39:37
	lui r3, 983040
	.loc	1 40 38                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:40:38
	lui r4, 983040
	.loc	1 42 18                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:42:18
	vadd.s.mz vr3{mr1}, zero, vr0
	addli r27, zero, 1
	.loc	1 64 20                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:64:20
	vadd.s.mz vr2{mr1}, zero, vr0
	.loc	1 38 46                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:38:46
	mfence { lm }
	.loc	1 38 37 is_stmt 0               # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:38:37
	loadli.w r6,  -376(r30)                 # 4-byte Folded Reload
	.loc	1 39 37 is_stmt 1               # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:39:37
	or r3, r10, r3
	.loc	1 40 38                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:40:38
	or r4, r10, r4
	vmmov mr0, r27
	.loc	1 64 20                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:64:20
	addli r27, zero, 1
	div.s r1, r7, r1
	div.s r1, r1, r2
	.loc	1 38 46                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:38:46
	lui r2, 983040
	or r2, r10, r2
	.loc	1 28 33                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:28:33
	slli r1, r1, 3
	.loc	1 29 23                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:29:23
	add.s r1, r1, r5
	.loc	1 41 38                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:41:38
	lui r5, 983040
	.loc	1 38 41                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:38:41
	slli r17, r1, 7
	.loc	1 41 38                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:41:38
	or r5, r10, r5
	.loc	1 38 37                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:38:37
	add.s r6, r17, r6
	.loc	1 38 30 is_stmt 0               # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:38:30
	sext_int2long r[8:9], r6
	.loc	1 40 38 is_stmt 1               # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:40:38
	addli r6, r30, -128
	.loc	1 38 30                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:38:30
	sll.d r[11:12], r[8:9], r26
	load.d r[8:9], 0(r30)
	store.d r[11:12], -272(r30)             # 8-byte Folded Spill
	add.ul r[8:9], r[8:9], r[11:12]
	.loc	1 38 46 is_stmt 0               # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:38:46
	l_gm2lm r2, r16, 0(r[8:9])
	.loc	1 39 37 is_stmt 1               # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:39:37
	load.d r[8:9], -448(r30)                # 8-byte Folded Reload
	addli r2, r30, -192
	l_gm2lm r3, r2, 0(r[8:9])
	.loc	1 40 38                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:40:38
	load.d r[2:3], -456(r30)                # 8-byte Folded Reload
	l_gm2lm r4, r6, 0(r[2:3])
	.loc	1 41 38                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:41:38
	addli r4, r30, -64
	.loc	1 40 38                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:40:38
	mfence { lm }
	.loc	1 41 38                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:41:38
	load.d r[2:3], -464(r30)                # 8-byte Folded Reload
	.loc	1 40 38                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:40:38
	loadli.w r28,  -72(r30)
	.loc	1 41 38                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:41:38
	l_gm2lm r5, r4, 0(r[2:3])
	.loc	1 40 38                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:40:38
	loadli.w r2,  -128(r30)
	storeli.w r2, -328(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -124(r30)
	storeli.w r2, -324(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -120(r30)
	storeli.w r2, -320(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -116(r30)
	storeli.w r2, -316(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -112(r30)
	storeli.w r2, -312(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -108(r30)
	storeli.w r2, -308(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -104(r30)
	storeli.w r2, -304(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -100(r30)
	storeli.w r2, -300(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -96(r30)
	storeli.w r2, -296(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -92(r30)
	storeli.w r2, -292(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -88(r30)
	storeli.w r2, -288(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -84(r30)
	storeli.w r2, -284(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -80(r30)
	storeli.w r2, -280(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -76(r30)
	storeli.w r2, -276(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -68(r30)
	.loc	1 38 46                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:38:46
	storeli.w r2, -260(r30)                 # 4-byte Folded Spill
	mfence { lm }
	.loc	1 39 37                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:39:37
	loadli.w r2,  -192(r30)
	loadli.w r3,  -188(r30)
	loadli.w r4,  -184(r30)
	loadli.w r5,  -180(r30)
	loadli.w r6,  -176(r30)
	loadli.w r8,  -172(r30)
	loadli.w r9,  -168(r30)
	loadli.w r10,  -164(r30)
	loadli.w r11,  -160(r30)
	loadli.w r12,  -156(r30)
	loadli.w r13,  -152(r30)
	loadli.w r14,  -148(r30)
	loadli.w r15,  -144(r30)
	loadli.w r18,  -140(r30)
	loadli.w r22,  -136(r30)
	loadli.w r23,  -132(r30)
	.loc	1 42 18                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:42:18
	vor.u.mh vr3{mr0}, r2, vr3
	addli r2, zero, 4
	vmmov mr3, r2
	addli r2, zero, 8
	vor.u.mh vr3{mr2}, r3, vr3
	vmmov mr0, r2
	addli r2, zero, 16
	vor.u.mh vr3{mr3}, r4, vr3
	vor.u.mh vr3{mr0}, r5, vr3
	vmmov mr0, r2
	addli r2, zero, 32
	vor.u.mh vr3{mr0}, r6, vr3
	vmmov mr0, r2
	addli r2, zero, 64
	vor.u.mh vr3{mr0}, r8, vr3
	vmmov mr0, r2
	addli r2, zero, 128
	vor.u.mh vr3{mr0}, r9, vr3
	vmmov mr0, r2
	addli r2, zero, 256
	vor.u.mh vr3{mr0}, r10, vr3
	vmmov mr0, r2
	addli r2, zero, 512
	vor.u.mh vr3{mr0}, r11, vr3
	vmmov mr0, r2
	addli r2, zero, 1024
	vor.u.mh vr3{mr0}, r12, vr3
	vmmov mr0, r2
	addli r2, zero, 2048
	vor.u.mh vr3{mr0}, r13, vr3
	vmmov mr0, r2
	addli r2, zero, 4096
	vor.u.mh vr3{mr0}, r14, vr3
	vmmov mr0, r2
	addli r2, zero, 8192
	vor.u.mh vr3{mr0}, r15, vr3
	vmmov mr0, r2
	lui r2, 4
	vor.u.mh vr3{mr0}, r18, vr3
	vmmov mr0, r2
	lui r2, 8
	vor.u.mh vr3{mr0}, r22, vr3
	vmmov mr0, r2
	vor.u.mh vr3{mr0}, r23, vr3
	.loc	1 41 38                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:41:38
	loadli.w r2,  -64(r30)
	loadli.w r3,  -60(r30)
	loadli.w r4,  -56(r30)
	loadli.w r5,  -52(r30)
	loadli.w r6,  -48(r30)
	loadli.w r8,  -44(r30)
	loadli.w r9,  -40(r30)
	loadli.w r10,  -36(r30)
	loadli.w r11,  -32(r30)
	loadli.w r12,  -28(r30)
	loadli.w r13,  -24(r30)
	loadli.w r14,  -20(r30)
	loadli.w r15,  -16(r30)
	loadli.w r18,  -12(r30)
	loadli.w r22,  -8(r30)
	loadli.w r23,  -4(r30)
	vmmov mr0, mr2
	.loc	1 64 20                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:64:20
	vmmov mr2, r27
	vor.u.mh vr2{mr2}, r2, vr2
	addli r2, zero, 8
	vor.u.mh vr2{mr0}, r3, vr2
	vmmov mr0, r2
	addli r2, zero, 16
	.loc	1 46 33                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:46:33
	addli r3, zero, 16
	.loc	1 64 20                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:64:20
	vor.u.mh vr2{mr3}, r4, vr2
	vor.u.mh vr2{mr0}, r5, vr2
	vmmov mr0, r2
	addli r2, zero, 32
	vor.u.mh vr2{mr0}, r6, vr2
	vmmov mr0, r2
	addli r2, zero, 64
	vor.u.mh vr2{mr0}, r8, vr2
	vmmov mr0, r2
	addli r2, zero, 128
	vor.u.mh vr2{mr0}, r9, vr2
	vmmov mr0, r2
	addli r2, zero, 256
	vor.u.mh vr2{mr0}, r10, vr2
	vmmov mr0, r2
	addli r2, zero, 512
	vor.u.mh vr2{mr0}, r11, vr2
	vmmov mr0, r2
	addli r2, zero, 1024
	vor.u.mh vr2{mr0}, r12, vr2
	vmmov mr0, r2
	addli r2, zero, 2048
	vor.u.mh vr2{mr0}, r13, vr2
	vmmov mr0, r2
	addli r2, zero, 4096
	vor.u.mh vr2{mr0}, r14, vr2
	vmmov mr0, r2
	addli r2, zero, 8192
	vor.u.mh vr2{mr0}, r15, vr2
	vmmov mr0, r2
	lui r2, 4
	vor.u.mh vr2{mr0}, r18, vr2
	vmmov mr0, r2
	lui r2, 8
	vor.u.mh vr2{mr0}, r22, vr2
	vmmov mr0, r2
	addli r2, r24, 0
	vor.u.mh vr2{mr0}, r23, vr2
	.loc	1 46 33                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:46:33
	blt.s r1, r3, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 33 is_stmt 0                # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:0:33
	addli r2, zero, 0
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	vload_mask16.mz vr4{mr1}, -256(r30)
	.loc	1 46 33                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:46:33
	vmmov mr2, r2
	.loc	1 0 0                           # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:0:0
	vadd.f.mz.rn vr3{mr1}, vr4, vr3
	.loc	1 46 33                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:46:33
	vadd.s.mz vr4{mr1}, zero, vr0
	vor.f.mh vr4{mr2}, vr1, vr3
	vextracti.f r1, 0(vr4)
	vextracti.f r2, 1(vr4)
	add.f.rn r1, r1, r2
	vextracti.f r2, 2(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 3(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 4(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 5(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 6(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 7(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 8(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 9(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 10(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 11(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 12(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 13(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 14(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 15(vr4)
	add.f.rn r1, r2, r1
	loadli.w r2,  -356(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r24
	sync_group
	bneq r25, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 33                          # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:0:33
	loadli.w r4,  -348(r30)                 # 4-byte Folded Reload
	loads.w r1, 0(r4)
	loads.w r2, 4(r4)
	loads.w r3, 8(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 12(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 16(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 20(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 24(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 28(r4)
	add.f.rn r1, r1, r3
	add.f.rn r1, r1, r2
	stores.w r1, 0(r4)
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	lui r1, 15
	mfence { lm, sm, gm }
	.loc	1 51 19 is_stmt 1               # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:51:19
	lui r2, 770048
	.loc	1 54 35                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:54:35
	vadd.s.mz vr4{mr1}, zero, vr0
	ori r8, r1, 4095
	csr_set csr3, r8
	sync_group
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -420(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -392(r30)                 # 4-byte Folded Reload
	loads.w r1, 0(r1)
	add.s r27, r6, r17
	loadli.w r6,  -424(r30)                 # 4-byte Folded Reload
	add.s r14, r3, r17
	loadli.w r3,  -396(r30)                 # 4-byte Folded Reload
	add.s r9, r6, r17
	loadli.w r6,  -428(r30)                 # 4-byte Folded Reload
	add.s r22, r3, r17
	add.s r6, r6, r17
	storeli.w r6, -344(r30)                 # 4-byte Folded Spill
	loadli.w r6,  -432(r30)                 # 4-byte Folded Reload
	.loc	1 51 19                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:51:19
	mul.f.rn r1, r1, r2
	#APP
	vadd.f.mz.rn vr3{mr1}, r1, vr3
	#NO_APP
	.loc	1 52 20                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:52:20
	vmul.f.mz.rn vr5{mr1}, vr3, vr3
	add.s r6, r6, r17
	storeli.w r6, -340(r30)                 # 4-byte Folded Spill
	loadli.w r6,  -360(r30)                 # 4-byte Folded Reload
	.loc	1 54 35                         # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:54:35
	vor.f.mh vr4{mr2}, vr1, vr5
	vextracti.f r1, 0(vr4)
	vextracti.f r2, 1(vr4)
	vextracti.f r4, 15(vr4)
	add.f.rn r1, r1, r2
	vextracti.f r2, 2(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 3(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 4(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 5(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 6(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 7(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 8(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 9(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 10(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 11(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 12(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 13(vr4)
	add.f.rn r1, r2, r1
	loadli.w r2,  -384(r30)                 # 4-byte Folded Reload
	add.s r5, r2, r17
	loadli.w r2,  -388(r30)                 # 4-byte Folded Reload
	add.s r13, r2, r17
	vextracti.f r2, 14(vr4)
	add.f.rn r3, r2, r1
	loadli.w r1,  -400(r30)                 # 4-byte Folded Reload
	add.s r12, r1, r17
	loadli.w r1,  -404(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r4, r3
	add.s r11, r1, r17
	loadli.w r1,  -408(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -416(r30)                 # 4-byte Folded Reload
	add.s r2, r1, r17
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r17
	stores.w r3, 0(r6)
	loadli.w r3,  -436(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r17
	add.s r3, r3, r17
	storeli.w r3, -336(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -440(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r17
	storeli.w r3, -332(r30)                 # 4-byte Folded Spill
	mfence { lm, sm, gm }
	csr_set csr3, r8
	sync_group
	bneq r25, zero, .LBB0_2
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 35 is_stmt 0                # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:0:35
	loadli.w r3,  -352(r30)                 # 4-byte Folded Reload
	loads.w r6, 0(r3)
	loads.w r17, 4(r3)
	loads.w r18, 8(r3)
	add.f.rn r6, r6, r17
	loads.w r17, 12(r3)
	add.f.rn r6, r6, r18
	loads.w r18, 16(r3)
	add.f.rn r6, r6, r17
	loads.w r17, 20(r3)
	add.f.rn r6, r6, r18
	loads.w r18, 24(r3)
	add.f.rn r6, r6, r17
	loads.w r17, 28(r3)
	add.f.rn r6, r6, r18
	add.f.rn r6, r6, r17
	stores.w r6, 0(r3)
	j .LBB0_2
.LBB0_9:                                # %._crit_edge
	.loc	1 65 4 epilogue_begin is_stmt 1 # ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py:65:4
	addli sp, sp, 472
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
	.long	60                              # 0x3c
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	536                             # 0x218
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
.asciz	"ci5dyl2sw2ux3ejnwyz7s7faejmynjvgxf6lvpoxegzwaoy6kbr3.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/i5" # string offset=63
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
