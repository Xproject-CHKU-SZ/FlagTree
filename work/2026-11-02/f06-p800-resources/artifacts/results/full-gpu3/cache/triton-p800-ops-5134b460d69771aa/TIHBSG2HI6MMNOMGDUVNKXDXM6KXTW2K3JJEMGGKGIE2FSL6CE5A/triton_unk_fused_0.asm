	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/oi" "coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py"
	.loc	1 22 0                          # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -304
	addli r30, sp, 240
	lui r3, :hi20:global_smem
	core_id r1
	lui r8, 15
	loadli.w r6,  36(r30)
	loadli.w r2,  32(r30)
	slli r4, r1, 2
	addli r3, r3, :lo12:global_smem
	loadli.w r5,  40(r30)
	ori r9, r8, 4095
	add.s r7, r4, r3
	mul.s r2, r6, r2
	load_param_i r6, 0
	stores.w zero, 1040(r7)
	mfence { lm, sm, gm }
	csr_set csr3, r9
	sync_group
	storeli.w r7, -140(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r7)
	mul.s r2, r2, r5
	mfence { lm, sm, gm }
	csr_set csr3, r9
	sync_group
	storeli.w r2, -144(r30)                 # 4-byte Folded Spill
	ble.s r2, r6, .LBB0_9
# %bb.1:                                # %.lr.ph
	addli r2, zero, 64
	loadli.w r5,  -140(r30)                 # 4-byte Folded Reload
	load.d r[7:8], 8(r30)
	andi r20, r1, 63
	load.d r[10:11], 16(r30)
	addli r16, r30, -64
	addli r18, zero, 4
	vxor.u.mz vr0{mr1}, vr0, vr0
	#APP
	vxor.s.mz vr1{mr1}, vr1, vr1
	#NO_APP
	storeli.w r9, -148(r30)                 # 4-byte Folded Spill
	div.s r2, r1, r2
	storeli.w r20, -236(r30)                # 4-byte Folded Spill
	addli r5, r5, 1040
	storeli.w r5, -156(r30)                 # 4-byte Folded Spill
	load_param_i r5, 1
	storeli.w r5, -164(r30)                 # 4-byte Folded Spill
	storeli.w r2, -152(r30)                 # 4-byte Folded Spill
	slli r2, r2, 6
	sub.s r2, r1, r2
	lui r1, 239665
	slli r2, r2, 4
	ori r1, r1, 623
	ori r5, r2, 1
	storeli.w r2, -160(r30)                 # 4-byte Folded Spill
	sext_int2long r[12:13], r2
	storeli.w r1, -240(r30)                 # 4-byte Folded Spill
	storeli.w r5, -168(r30)                 # 4-byte Folded Spill
	ori r5, r2, 2
	storeli.w r5, -172(r30)                 # 4-byte Folded Spill
	ori r5, r2, 3
	storeli.w r5, -176(r30)                 # 4-byte Folded Spill
	ori r5, r2, 4
	storeli.w r5, -180(r30)                 # 4-byte Folded Spill
	ori r5, r2, 5
	storeli.w r5, -184(r30)                 # 4-byte Folded Spill
	ori r5, r2, 6
	storeli.w r5, -188(r30)                 # 4-byte Folded Spill
	ori r5, r2, 7
	storeli.w r5, -192(r30)                 # 4-byte Folded Spill
	ori r5, r2, 8
	storeli.w r5, -196(r30)                 # 4-byte Folded Spill
	ori r5, r2, 9
	storeli.w r5, -200(r30)                 # 4-byte Folded Spill
	ori r5, r2, 10
	storeli.w r5, -204(r30)                 # 4-byte Folded Spill
	ori r5, r2, 11
	storeli.w r5, -208(r30)                 # 4-byte Folded Spill
	ori r5, r2, 12
	storeli.w r5, -212(r30)                 # 4-byte Folded Spill
	ori r5, r2, 13
	storeli.w r5, -216(r30)                 # 4-byte Folded Spill
	ori r5, r2, 14
	storeli.w r5, -220(r30)                 # 4-byte Folded Spill
	ori r5, r2, 15
	addli r2, zero, 2
	storeli.w r5, -224(r30)                 # 4-byte Folded Spill
	lui r5, 1048575
	sll.d r[12:13], r[12:13], r2
	ori r5, r5, 3840
	add.ul r[7:8], r[7:8], r[12:13]
	and r4, r4, r5
	store.d r[7:8], -232(r30)               # 8-byte Folded Spill
	add.s r12, r4, r3
	addli r8, r12, 1040
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r7
	sync_group
	loads.w r4, 0(r8)
.Ltmp0:
	.loc	1 56 21 prologue_end            # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:56:21
	lui r5, 239616
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sext_int2long r[19:20], r13
	.loc	1 61 49 is_stmt 0               # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	lui r13, 983040
	addli r7, r16, 4
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sll.d r[19:20], r[19:20], r2
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	or r13, r18, r13
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	add.ul r[19:20], r[10:11], r[19:20]
	.loc	1 56 21 is_stmt 1               # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:56:21
	mul.f.rn r4, r4, r5
	.loc	1 58 20                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:58:20
	loadli.w r5,  -240(r30)                 # 4-byte Folded Reload
	add.f.rn r4, r4, r5
	.loc	1 59 28                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:59:28
	lui r5, 260096
	sqrt.f.rn r4, r4
	div.f.rn r5, r5, r4
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sext_int2long r[3:4], r3
	.loc	1 60 20                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:60:20
	#APP
	vmul.f.mz.rn vr2{mr1}, r5, vr2
	#NO_APP
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	vstore_mask16.mz vr2{mr1}, -64(r30)
	mfence { lm }
	addli r5, r16, 8
	s_lm2gm r13, r7, 0(r[19:20])
	.loc	1 61 25 is_stmt 0               # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sext_int2long r[19:20], r17
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	lui r7, 983040
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sll.d r[3:4], r[3:4], r2
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	lui r17, 983040
	addli r13, r16, 12
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sll.d r[19:20], r[19:20], r2
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	or r7, r18, r7
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	add.ul r[3:4], r[10:11], r[3:4]
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	or r17, r18, r17
	s_lm2gm r7, r5, 0(r[3:4])
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sext_int2long r[3:4], r14
	add.ul r[19:20], r[10:11], r[19:20]
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	lui r7, 983040
	addli r5, r16, 16
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sll.d r[3:4], r[3:4], r2
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	s_lm2gm r17, r13, 0(r[19:20])
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sext_int2long r[13:14], r15
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	or r7, r18, r7
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	add.ul r[3:4], r[10:11], r[3:4]
	sll.d r[13:14], r[13:14], r2
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	s_lm2gm r7, r5, 0(r[3:4])
	lui r5, 983040
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	add.ul r[3:4], r[10:11], r[13:14]
	sext_int2long r[13:14], r9
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	addli r7, r16, 20
	addli r9, r16, 44
	or r5, r18, r5
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sll.d r[13:14], r[13:14], r2
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	s_lm2gm r5, r7, 0(r[3:4])
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	add.ul r[3:4], r[10:11], r[13:14]
	sext_int2long r[13:14], r1
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	lui r1, 983040
	addli r5, r16, 24
	lui r7, 983040
	or r1, r18, r1
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sll.d r[13:14], r[13:14], r2
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	or r7, r18, r7
	s_lm2gm r1, r5, 0(r[3:4])
	lui r1, 983040
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	add.ul r[3:4], r[10:11], r[13:14]
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	addli r5, r16, 28
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sext_int2long r[13:14], r28
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	or r1, r18, r1
	s_lm2gm r1, r5, 0(r[3:4])
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sll.d r[3:4], r[13:14], r2
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	lui r1, 983040
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sext_int2long r[13:14], r27
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	addli r5, r16, 32
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	add.ul r[3:4], r[10:11], r[3:4]
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	or r1, r18, r1
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sll.d r[13:14], r[13:14], r2
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	s_lm2gm r1, r5, 0(r[3:4])
	lui r1, 983040
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	add.ul r[13:14], r[10:11], r[13:14]
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	addli r3, r16, 36
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sext_int2long r[4:5], r26
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	or r1, r18, r1
	s_lm2gm r1, r3, 0(r[13:14])
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sll.d r[3:4], r[4:5], r2
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	lui r1, 983040
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sext_int2long r[13:14], r25
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	addli r5, r16, 40
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	add.ul r[3:4], r[10:11], r[3:4]
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	or r1, r18, r1
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sll.d r[13:14], r[13:14], r2
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	s_lm2gm r1, r5, 0(r[3:4])
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	load.d r[3:4], -136(r30)                # 8-byte Folded Reload
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	lui r1, 983040
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	add.ul r[13:14], r[10:11], r[13:14]
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	addli r5, r16, 48
	s_lm2gm r7, r9, 0(r[13:14])
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sext_int2long r[13:14], r24
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	or r1, r18, r1
	lui r7, 983040
	addli r9, r16, 60
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	add.ul r[3:4], r[10:11], r[3:4]
	sll.d r[13:14], r[13:14], r2
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	or r7, r18, r7
	s_lm2gm r1, r16, 0(r[3:4])
	lui r1, 983040
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sext_int2long r[3:4], r23
	add.ul r[13:14], r[10:11], r[13:14]
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	or r1, r18, r1
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sll.d r[3:4], r[3:4], r2
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	s_lm2gm r1, r5, 0(r[13:14])
	lui r1, 983040
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	add.ul r[3:4], r[10:11], r[3:4]
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	addli r5, r16, 52
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sext_int2long r[13:14], r22
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	or r1, r18, r1
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sll.d r[13:14], r[13:14], r2
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	s_lm2gm r1, r5, 0(r[3:4])
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sext_int2long r[3:4], r21
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	lui r1, 983040
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	add.ul r[13:14], r[10:11], r[13:14]
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	addli r5, r16, 56
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	sll.d r[3:4], r[3:4], r2
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	or r1, r18, r1
	.loc	1 61 25                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:25
	add.ul r[3:4], r[10:11], r[3:4]
	.loc	1 61 49                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:49
	s_lm2gm r1, r5, 0(r[13:14])
	loadli.w r1,  -164(r30)                 # 4-byte Folded Reload
	s_lm2gm r7, r9, 0(r[3:4])
	mfence { lm }
	add.s r6, r6, r1
	loadli.w r9,  -148(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -144(r30)                 # 4-byte Folded Reload
	loadli.w r20,  -236(r30)                # 4-byte Folded Reload
	blt.s r6, r1, .LBB0_3
	j .LBB0_9
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 49                          # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:0:49
	loadli.w r1,  40(r30)
	loadli.w r3,  36(r30)
	.loc	1 38 47 is_stmt 1               # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:38:47
	vstore_mask16.mz vr0{mr1}, -128(r30)
	lui r4, 983040
	addli r5, zero, 64
	or r4, r5, r4
	div.s r1, r6, r1
	div.s r1, r1, r3
	.loc	1 29 23                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:29:23
	loadli.w r3,  -152(r30)                 # 4-byte Folded Reload
	add.s r3, r1, r3
	.loc	1 38 37                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:38:37
	loadli.w r1,  -160(r30)                 # 4-byte Folded Reload
	.loc	1 38 47 is_stmt 0               # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:38:47
	mfence { lm }
	.loc	1 38 42                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:38:42
	slli r21, r3, 10
	.loc	1 38 37                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:38:37
	add.s r1, r21, r1
	.loc	1 38 30                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:38:30
	sext_int2long r[13:14], r1
	.loc	1 39 37 is_stmt 1               # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:39:37
	lui r1, 983040
	.loc	1 38 30                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:38:30
	sll.d r[22:23], r[13:14], r2
	load.d r[13:14], 0(r30)
	.loc	1 39 37                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:39:37
	or r1, r5, r1
	.loc	1 38 47                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:38:47
	addli r5, r30, -128
	store.d r[22:23], -136(r30)             # 8-byte Folded Spill
	.loc	1 38 30 is_stmt 0               # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:38:30
	add.ul r[13:14], r[13:14], r[22:23]
	.loc	1 38 47                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:38:47
	l_gm2lm r4, r5, 0(r[13:14])
	.loc	1 39 37 is_stmt 1               # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:39:37
	load.d r[4:5], -232(r30)                # 8-byte Folded Reload
	l_gm2lm r1, r16, 0(r[4:5])
	addli r1, r9, 0
	.loc	1 44 33                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:44:33
	addli r4, zero, 512
	.loc	1 38 47                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:38:47
	mfence { lm }
	.loc	1 44 33                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:44:33
	blt.s r3, r4, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 33 is_stmt 0                # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:0:33
	addli r1, zero, 0
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	vload_mask16.mz vr2{mr1}, -128(r30)
	vload_mask16.mz vr3{mr1}, -64(r30)
	.loc	1 44 33                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:44:33
	vmmov mr0, r1
	.loc	1 0 0                           # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:0:0
	vadd.f.mz.rn vr2{mr1}, vr2, vr3
	.loc	1 44 33                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:44:33
	vadd.s.mz vr3{mr1}, zero, vr0
	vor.f.mh vr3{mr0}, vr1, vr2
	vextracti.f r1, 0(vr3)
	vextracti.f r3, 1(vr3)
	add.f.rn r1, r1, r3
	vextracti.f r3, 2(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 3(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 4(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 5(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 6(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 7(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 8(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 9(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 10(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 11(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 12(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 13(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 14(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 15(vr3)
	add.f.rn r1, r3, r1
	loadli.w r3,  -140(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r9
	sync_group
	bneq r20, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 33                          # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:0:33
	loads.w r1, 0(r12)
	loads.w r4, 4(r12)
	loads.w r3, 8(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 12(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 16(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 20(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 24(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 28(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 32(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 36(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 40(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 44(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 48(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 52(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 56(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 60(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 64(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 68(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 72(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 76(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 80(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 84(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 88(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 92(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 96(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 100(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 104(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 108(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 112(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 116(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 120(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 124(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 128(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 132(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 136(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 140(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 144(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 148(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 152(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 156(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 160(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 164(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 168(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 172(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 176(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 180(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 184(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 188(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 192(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 196(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 200(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 204(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 208(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 212(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 216(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 220(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 224(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 228(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 232(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 236(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 240(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 244(r12)
	add.f.rn r1, r1, r3
	loads.w r3, 248(r12)
	add.f.rn r1, r1, r4
	loads.w r4, 252(r12)
	add.f.rn r1, r1, r3
	add.f.rn r1, r1, r4
	stores.w r1, 0(r12)
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	lui r1, 15
	mfence { lm, sm, gm }
	.loc	1 49 19 is_stmt 1               # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:49:19
	lui r3, 763904
	.loc	1 52 35                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:52:35
	vadd.s.mz vr3{mr1}, zero, vr0
	ori r7, r1, 4095
	csr_set csr3, r7
	sync_group
	loads.w r1, 0(r12)
	loadli.w r5,  -176(r30)                 # 4-byte Folded Reload
	loadli.w r19,  -196(r30)                # 4-byte Folded Reload
	add.s r17, r5, r21
	loadli.w r5,  -180(r30)                 # 4-byte Folded Reload
	add.s r28, r19, r21
	add.s r14, r5, r21
	.loc	1 49 19                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:49:19
	mul.f.rn r1, r1, r3
	#APP
	vadd.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 50 20                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:50:20
	vmul.f.mz.rn vr4{mr1}, vr2, vr2
	.loc	1 52 35                         # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:52:35
	vor.f.mh vr3{mr0}, vr1, vr4
	vextracti.f r1, 0(vr3)
	vextracti.f r3, 1(vr3)
	vextracti.f r4, 14(vr3)
	vextracti.f r5, 15(vr3)
	add.f.rn r1, r1, r3
	vextracti.f r3, 2(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 3(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 4(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 5(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 6(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 7(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 8(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 9(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 10(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 11(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 12(vr3)
	add.f.rn r1, r3, r1
	vextracti.f r3, 13(vr3)
	add.f.rn r1, r3, r1
	loadli.w r3,  -168(r30)                 # 4-byte Folded Reload
	add.s r13, r3, r21
	loadli.w r3,  -172(r30)                 # 4-byte Folded Reload
	add.f.rn r4, r4, r1
	loadli.w r1,  -184(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r21
	add.s r15, r1, r21
	loadli.w r1,  -188(r30)                 # 4-byte Folded Reload
	add.f.rn r4, r5, r4
	loadli.w r5,  -200(r30)                 # 4-byte Folded Reload
	add.s r9, r1, r21
	loadli.w r1,  -192(r30)                 # 4-byte Folded Reload
	add.s r27, r5, r21
	loadli.w r5,  -204(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r21
	add.s r26, r5, r21
	loadli.w r5,  -208(r30)                 # 4-byte Folded Reload
	add.s r25, r5, r21
	loadli.w r5,  -212(r30)                 # 4-byte Folded Reload
	add.s r24, r5, r21
	loadli.w r5,  -216(r30)                 # 4-byte Folded Reload
	add.s r23, r5, r21
	loadli.w r5,  -156(r30)                 # 4-byte Folded Reload
	stores.w r4, 0(r5)
	loadli.w r4,  -220(r30)                 # 4-byte Folded Reload
	add.s r22, r4, r21
	loadli.w r4,  -224(r30)                 # 4-byte Folded Reload
	mfence { lm, sm, gm }
	csr_set csr3, r7
	sync_group
	add.s r21, r4, r21
	bneq r20, zero, .LBB0_2
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 35 is_stmt 0                # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:0:35
	loads.w r4, 0(r8)
	loads.w r19, 4(r8)
	loads.w r5, 8(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 12(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 16(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 20(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 24(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 28(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 32(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 36(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 40(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 44(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 48(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 52(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 56(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 60(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 64(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 68(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 72(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 76(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 80(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 84(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 88(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 92(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 96(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 100(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 104(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 108(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 112(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 116(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 120(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 124(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 128(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 132(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 136(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 140(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 144(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 148(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 152(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 156(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 160(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 164(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 168(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 172(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 176(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 180(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 184(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 188(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 192(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 196(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 200(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 204(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 208(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 212(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 216(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 220(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 224(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 228(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 232(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 236(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 240(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 244(r8)
	add.f.rn r4, r4, r5
	loads.w r5, 248(r8)
	add.f.rn r4, r4, r19
	loads.w r19, 252(r8)
	add.f.rn r4, r4, r5
	add.f.rn r4, r4, r19
	stores.w r4, 0(r8)
	j .LBB0_2
.LBB0_9:                                # %._crit_edge
	.loc	1 61 4 epilogue_begin is_stmt 1 # coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py:61:4
	addli sp, sp, 240
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
	.long	304                             # 0x130
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
.asciz	"coib4rb4o7grzbh32onpkhqxkblnhfv55s7hpho2bdymuy34r2zu.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/oi" # string offset=63
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
