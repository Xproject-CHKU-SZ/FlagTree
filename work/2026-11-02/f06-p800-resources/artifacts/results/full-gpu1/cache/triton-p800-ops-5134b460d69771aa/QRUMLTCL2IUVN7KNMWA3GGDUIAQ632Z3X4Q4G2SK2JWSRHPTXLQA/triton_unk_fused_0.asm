	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/2b" "c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py"
	.loc	1 22 0                          # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -456
	addli r30, sp, 392
	lui r2, :hi20:global_smem
	core_id r1
	lui r8, 15
	loadli.w r6,  52(r30)
	loadli.w r4,  48(r30)
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r5,  56(r30)
	ori r15, r8, 4095
	add.s r7, r3, r2
	mul.s r4, r6, r4
	load_param_i r6, 0
	stores.w zero, 1040(r7)
	mfence { lm, sm, gm }
	csr_set csr3, r15
	sync_group
	storeli.w r7, -272(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r7)
	mul.s r4, r4, r5
	mfence { lm, sm, gm }
	csr_set csr3, r15
	sync_group
	storeli.w r4, -276(r30)                 # 4-byte Folded Spill
	ble.s r4, r6, .LBB0_9
# %bb.1:                                # %.lr.ph
	addli r4, zero, 64
	loadli.w r12,  -272(r30)                # 4-byte Folded Reload
	addli r24, zero, 2
	load.d r[7:8], 16(r30)
	load.d r[10:11], 8(r30)
	andi r22, r1, 63
	load.d r[18:19], 32(r30)
	addli r20, r30, -64
	addli r21, zero, 4
	vxor.u.mz vr0{mr1}, vr0, vr0
	#APP
	vxor.s.mz vr1{mr1}, vr1, vr1
	#NO_APP
	storeli.w r15, -280(r30)                # 4-byte Folded Spill
	div.s r9, r1, r4
	load.d r[4:5], 24(r30)
	storeli.w r22, -388(r30)                # 4-byte Folded Spill
	addli r12, r12, 1040
	storeli.w r12, -288(r30)                # 4-byte Folded Spill
	load_param_i r12, 1
	storeli.w r12, -296(r30)                # 4-byte Folded Spill
	storeli.w r9, -284(r30)                 # 4-byte Folded Spill
	slli r9, r9, 6
	sub.s r9, r1, r9
	lui r1, 239665
	slli r9, r9, 4
	ori r1, r1, 623
	ori r12, r9, 1
	ori r14, r9, 12
	storeli.w r9, -292(r30)                 # 4-byte Folded Spill
	storeli.w r1, -392(r30)                 # 4-byte Folded Spill
	storeli.w r12, -300(r30)                # 4-byte Folded Spill
	ori r12, r9, 2
	storeli.w r14, -344(r30)                # 4-byte Folded Spill
	ori r14, r9, 13
	storeli.w r12, -304(r30)                # 4-byte Folded Spill
	ori r12, r9, 3
	storeli.w r14, -348(r30)                # 4-byte Folded Spill
	storeli.w r12, -308(r30)                # 4-byte Folded Spill
	ori r12, r9, 4
	storeli.w r12, -312(r30)                # 4-byte Folded Spill
	ori r12, r9, 5
	storeli.w r12, -316(r30)                # 4-byte Folded Spill
	ori r12, r9, 6
	storeli.w r12, -320(r30)                # 4-byte Folded Spill
	ori r12, r9, 7
	storeli.w r12, -324(r30)                # 4-byte Folded Spill
	ori r12, r9, 8
	storeli.w r12, -328(r30)                # 4-byte Folded Spill
	ori r12, r9, 9
	storeli.w r12, -332(r30)                # 4-byte Folded Spill
	ori r12, r9, 10
	storeli.w r12, -336(r30)                # 4-byte Folded Spill
	ori r12, r9, 11
	storeli.w r12, -340(r30)                # 4-byte Folded Spill
	sext_int2long r[12:13], r9
	sll.d r[12:13], r[12:13], r24
	add.ul r[7:8], r[7:8], r[12:13]
	add.ul r[4:5], r[4:5], r[12:13]
	add.ul r[10:11], r[10:11], r[12:13]
	store.d r[7:8], -368(r30)               # 8-byte Folded Spill
	lui r7, 1048575
	store.d r[4:5], -376(r30)               # 8-byte Folded Spill
	ori r5, r9, 14
	store.d r[10:11], -360(r30)             # 8-byte Folded Spill
	ori r4, r7, 3840
	storeli.w r5, -380(r30)                 # 4-byte Folded Spill
	and r3, r3, r4
	ori r4, r9, 15
	add.s r14, r3, r2
	storeli.w r4, -384(r30)                 # 4-byte Folded Spill
	addli r16, r14, 1040
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r3
	sync_group
	loads.w r3, 0(r16)
.Ltmp0:
	.loc	1 58 21 prologue_end            # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:58:21
	lui r5, 239616
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sext_int2long r[8:9], r15
	sext_int2long r[22:23], r11
	.loc	1 65 49 is_stmt 0               # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	lui r11, 983040
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sll.d r[8:9], r[8:9], r24
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	or r11, r21, r11
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sll.d r[22:23], r[22:23], r24
	add.ul r[8:9], r[18:19], r[8:9]
	add.ul r[22:23], r[18:19], r[22:23]
	.loc	1 58 21 is_stmt 1               # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:58:21
	mul.f.rn r3, r3, r5
	.loc	1 60 20                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:60:20
	loadli.w r5,  -392(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r5
	.loc	1 61 28                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:61:28
	lui r5, 260096
	sqrt.f.rn r3, r3
	div.f.rn r3, r5, r3
	.loc	1 62 20                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:62:20
	#APP
	vmul.f.mz.rn vr4{mr1}, r3, vr4
	#NO_APP
	.loc	1 63 20                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:63:20
	#APP
	vmac.f.mz.rn vr3{mr1}, vr4, vr2
	#NO_APP
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	vstore_mask16.mz vr3{mr1}, -64(r30)
	addli r5, r20, 4
	mfence { lm }
	addli r3, r20, 8
	s_lm2gm r11, r5, 0(r[8:9])
	.loc	1 65 25 is_stmt 0               # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sext_int2long r[7:8], r7
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	lui r11, 983040
	lui r5, 983040
	addli r9, r20, 12
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sll.d r[7:8], r[7:8], r24
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	or r11, r21, r11
	or r5, r21, r5
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	add.ul r[7:8], r[18:19], r[7:8]
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	s_lm2gm r5, r3, 0(r[22:23])
	lui r5, 983040
	addli r3, r20, 16
	s_lm2gm r11, r9, 0(r[7:8])
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sext_int2long r[7:8], r10
	sext_int2long r[9:10], r17
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	or r5, r21, r5
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sll.d r[7:8], r[7:8], r24
	sll.d r[9:10], r[9:10], r24
	add.ul r[7:8], r[18:19], r[7:8]
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	s_lm2gm r5, r3, 0(r[7:8])
	lui r5, 983040
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sext_int2long r[3:4], r4
	add.ul r[7:8], r[18:19], r[9:10]
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	addli r9, r20, 20
	or r5, r21, r5
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sll.d r[3:4], r[3:4], r24
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	s_lm2gm r5, r9, 0(r[7:8])
	lui r5, 983040
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sext_int2long r[7:8], r13
	add.ul r[3:4], r[18:19], r[3:4]
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	addli r9, r20, 24
	or r5, r21, r5
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sll.d r[7:8], r[7:8], r24
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	s_lm2gm r5, r9, 0(r[3:4])
	lui r5, 983040
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	add.ul r[3:4], r[18:19], r[7:8]
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	addli r7, r20, 28
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sext_int2long r[8:9], r12
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	or r5, r21, r5
	s_lm2gm r5, r7, 0(r[3:4])
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sll.d r[3:4], r[8:9], r24
	sext_int2long r[7:8], r2
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	addli r9, r20, 44
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	add.ul r[2:3], r[18:19], r[3:4]
	sll.d r[4:5], r[7:8], r24
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	lui r7, 983040
	addli r8, r20, 32
	or r7, r21, r7
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	add.ul r[4:5], r[18:19], r[4:5]
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	s_lm2gm r7, r8, 0(r[2:3])
	lui r2, 983040
	addli r3, r20, 36
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sext_int2long r[7:8], r1
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	or r2, r21, r2
	s_lm2gm r2, r3, 0(r[4:5])
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sext_int2long r[1:2], r28
	sll.d r[3:4], r[7:8], r24
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	lui r8, 983040
	lui r5, 983040
	addli r7, r20, 40
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sll.d r[1:2], r[1:2], r24
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	or r8, r21, r8
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	add.ul r[3:4], r[18:19], r[3:4]
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	or r5, r21, r5
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	add.ul r[1:2], r[18:19], r[1:2]
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	s_lm2gm r5, r7, 0(r[3:4])
	lui r3, 983040
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sext_int2long r[4:5], r27
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	addli r7, r20, 48
	s_lm2gm r8, r9, 0(r[1:2])
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	load.d r[1:2], -264(r30)                # 8-byte Folded Reload
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	or r3, r21, r3
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sll.d r[4:5], r[4:5], r24
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	addli r9, r20, 60
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	add.ul r[1:2], r[18:19], r[1:2]
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	s_lm2gm r3, r20, 0(r[1:2])
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	add.ul r[3:4], r[18:19], r[4:5]
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	lui r5, 983040
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sext_int2long r[1:2], r26
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	or r5, r21, r5
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sll.d r[1:2], r[1:2], r24
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	s_lm2gm r5, r7, 0(r[3:4])
	lui r3, 983040
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	add.ul r[1:2], r[18:19], r[1:2]
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	addli r4, r20, 52
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sext_int2long r[7:8], r25
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	lui r5, 983040
	or r3, r21, r3
	or r5, r21, r5
	s_lm2gm r3, r4, 0(r[1:2])
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	loadli.w r1,  -268(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[7:8], r24
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	lui r8, 983040
	addli r7, r20, 56
	or r8, r21, r8
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	add.ul r[3:4], r[18:19], r[3:4]
	sext_int2long r[1:2], r1
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	s_lm2gm r5, r7, 0(r[3:4])
	.loc	1 65 25                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:25
	sll.d r[1:2], r[1:2], r24
	add.ul r[1:2], r[18:19], r[1:2]
	.loc	1 65 49                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:49
	s_lm2gm r8, r9, 0(r[1:2])
	loadli.w r1,  -296(r30)                 # 4-byte Folded Reload
	mfence { lm }
	loadli.w r15,  -280(r30)                # 4-byte Folded Reload
	loadli.w r22,  -388(r30)                # 4-byte Folded Reload
	add.s r6, r6, r1
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	blt.s r6, r1, .LBB0_3
	j .LBB0_9
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 49                          # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:0:49
	loadli.w r1,  56(r30)
	loadli.w r2,  52(r30)
	.loc	1 38 47 is_stmt 1               # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:38:47
	lui r3, 983040
	addli r7, zero, 64
	vstore_mask16.mz vr0{mr1}, -256(r30)
	addli r8, r30, -256
	or r3, r7, r3
	div.s r1, r6, r1
	div.s r1, r1, r2
	.loc	1 29 23                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:29:23
	loadli.w r2,  -284(r30)                 # 4-byte Folded Reload
	add.s r2, r1, r2
	.loc	1 38 37                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:38:37
	loadli.w r1,  -292(r30)                 # 4-byte Folded Reload
	.loc	1 38 42 is_stmt 0               # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:38:42
	slli r9, r2, 10
	.loc	1 38 37                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:38:37
	add.s r1, r9, r1
	.loc	1 38 30                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:38:30
	sext_int2long r[4:5], r1
	.loc	1 39 37 is_stmt 1               # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:39:37
	lui r1, 983040
	.loc	1 38 30                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:38:30
	sll.d r[10:11], r[4:5], r24
	load.d r[4:5], 0(r30)
	.loc	1 39 37                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:39:37
	or r1, r7, r1
	store.d r[10:11], -264(r30)             # 8-byte Folded Spill
	.loc	1 38 30                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:38:30
	add.ul r[4:5], r[4:5], r[10:11]
	.loc	1 38 47 is_stmt 0               # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:38:47
	mfence { lm }
	l_gm2lm r3, r8, 0(r[4:5])
	.loc	1 39 37 is_stmt 1               # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:39:37
	load.d r[4:5], -360(r30)                # 8-byte Folded Reload
	addli r8, r30, -192
	.loc	1 40 38                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:40:38
	lui r3, 983040
	or r3, r7, r3
	.loc	1 39 37                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:39:37
	l_gm2lm r1, r8, 0(r[4:5])
	.loc	1 40 38                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:40:38
	load.d r[4:5], -368(r30)                # 8-byte Folded Reload
	addli r8, r30, -128
	.loc	1 41 38                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:41:38
	lui r1, 983040
	or r1, r7, r1
	.loc	1 40 38                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:40:38
	l_gm2lm r3, r8, 0(r[4:5])
	.loc	1 41 38                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:41:38
	load.d r[3:4], -376(r30)                # 8-byte Folded Reload
	l_gm2lm r1, r20, 0(r[3:4])
	addli r1, r15, 0
	.loc	1 38 47                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:38:47
	mfence { lm }
	.loc	1 46 33                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:46:33
	blt.s r2, r7, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 33 is_stmt 0                # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:0:33
	addli r1, zero, 0
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	vload_mask16.mz vr2{mr1}, -256(r30)
	vload_mask16.mz vr3{mr1}, -192(r30)
	.loc	1 46 33                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:46:33
	vmmov mr0, r1
	.loc	1 0 0                           # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:0:0
	vadd.f.mz.rn vr4{mr1}, vr2, vr3
	.loc	1 46 33                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:46:33
	vadd.s.mz vr2{mr1}, zero, vr0
	.loc	1 0 0                           # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:0:0
	vload_mask16.mz vr3{mr1}, -64(r30)
	.loc	1 46 33                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:46:33
	vor.f.mh vr2{mr0}, vr1, vr4
	vextracti.f r1, 0(vr2)
	vextracti.f r2, 1(vr2)
	add.f.rn r1, r1, r2
	vextracti.f r2, 2(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 3(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 4(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 5(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 6(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 7(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 8(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 9(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 10(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 11(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 12(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 13(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 14(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 15(vr2)
	.loc	1 0 0                           # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:0:0
	vload_mask16.mz vr2{mr1}, -128(r30)
	add.f.rn r1, r2, r1
	loadli.w r2,  -272(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r15
	sync_group
	bneq r22, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	loads.w r1, 0(r14)
	loads.w r3, 4(r14)
	loads.w r2, 8(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 12(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 16(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 20(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 24(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 28(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 32(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 36(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 40(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 44(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 48(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 52(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 56(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 60(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 64(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 68(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 72(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 76(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 80(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 84(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 88(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 92(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 96(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 100(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 104(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 108(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 112(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 116(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 120(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 124(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 128(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 132(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 136(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 140(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 144(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 148(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 152(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 156(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 160(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 164(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 168(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 172(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 176(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 180(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 184(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 188(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 192(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 196(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 200(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 204(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 208(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 212(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 216(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 220(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 224(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 228(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 232(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 236(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 240(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 244(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 248(r14)
	add.f.rn r1, r1, r3
	loads.w r3, 252(r14)
	add.f.rn r1, r1, r2
	add.f.rn r1, r1, r3
	stores.w r1, 0(r14)
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	lui r1, 15
	mfence { lm, sm, gm }
	.loc	1 51 19 is_stmt 1               # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:51:19
	lui r2, 763904
	.loc	1 54 35                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:54:35
	vadd.s.mz vr5{mr1}, zero, vr0
	ori r3, r1, 4095
	csr_set csr3, r3
	sync_group
	loads.w r1, 0(r14)
	loadli.w r4,  -308(r30)                 # 4-byte Folded Reload
	loadli.w r5,  -324(r30)                 # 4-byte Folded Reload
	loadli.w r8,  -340(r30)                 # 4-byte Folded Reload
	add.s r7, r4, r9
	loadli.w r4,  -312(r30)                 # 4-byte Folded Reload
	add.s r13, r5, r9
	loadli.w r5,  -328(r30)                 # 4-byte Folded Reload
	add.s r28, r8, r9
	loadli.w r8,  -344(r30)                 # 4-byte Folded Reload
	add.s r10, r4, r9
	add.s r27, r8, r9
	loadli.w r8,  -348(r30)                 # 4-byte Folded Reload
	add.s r12, r5, r9
	add.s r26, r8, r9
	loadli.w r8,  -288(r30)                 # 4-byte Folded Reload
	.loc	1 51 19                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:51:19
	mul.f.rn r1, r1, r2
	#APP
	vadd.f.mz.rn vr4{mr1}, r1, vr4
	#NO_APP
	.loc	1 52 20                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:52:20
	vmul.f.mz.rn vr6{mr1}, vr4, vr4
	.loc	1 54 35                         # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:54:35
	vor.f.mh vr5{mr0}, vr1, vr6
	vextracti.f r1, 0(vr5)
	vextracti.f r2, 1(vr5)
	add.f.rn r1, r1, r2
	vextracti.f r2, 2(vr5)
	add.f.rn r1, r2, r1
	vextracti.f r2, 3(vr5)
	add.f.rn r1, r2, r1
	vextracti.f r2, 4(vr5)
	add.f.rn r1, r2, r1
	vextracti.f r2, 5(vr5)
	add.f.rn r1, r2, r1
	vextracti.f r2, 6(vr5)
	add.f.rn r1, r2, r1
	vextracti.f r2, 7(vr5)
	add.f.rn r1, r2, r1
	vextracti.f r2, 8(vr5)
	add.f.rn r1, r2, r1
	vextracti.f r2, 9(vr5)
	add.f.rn r1, r2, r1
	vextracti.f r2, 10(vr5)
	add.f.rn r1, r2, r1
	vextracti.f r2, 11(vr5)
	add.f.rn r1, r2, r1
	vextracti.f r2, 12(vr5)
	add.f.rn r1, r2, r1
	vextracti.f r2, 13(vr5)
	add.f.rn r1, r2, r1
	loadli.w r2,  -300(r30)                 # 4-byte Folded Reload
	add.s r15, r2, r9
	loadli.w r2,  -304(r30)                 # 4-byte Folded Reload
	add.s r11, r2, r9
	vextracti.f r2, 14(vr5)
	add.f.rn r1, r2, r1
	loadli.w r2,  -316(r30)                 # 4-byte Folded Reload
	add.s r17, r2, r9
	loadli.w r2,  -320(r30)                 # 4-byte Folded Reload
	add.s r4, r2, r9
	vextracti.f r2, 15(vr5)
	add.f.rn r5, r2, r1
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	add.s r2, r1, r9
	loadli.w r1,  -336(r30)                 # 4-byte Folded Reload
	stores.w r5, 0(r8)
	loadli.w r5,  -380(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r9
	add.s r25, r5, r9
	loadli.w r5,  -384(r30)                 # 4-byte Folded Reload
	add.s r5, r5, r9
	storeli.w r5, -268(r30)                 # 4-byte Folded Spill
	mfence { lm, sm, gm }
	csr_set csr3, r3
	sync_group
	bneq r22, zero, .LBB0_2
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 35 is_stmt 0                # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:0:35
	loads.w r5, 0(r16)
	loads.w r22, 4(r16)
	loads.w r8, 8(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 12(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 16(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 20(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 24(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 28(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 32(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 36(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 40(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 44(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 48(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 52(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 56(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 60(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 64(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 68(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 72(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 76(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 80(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 84(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 88(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 92(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 96(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 100(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 104(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 108(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 112(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 116(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 120(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 124(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 128(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 132(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 136(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 140(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 144(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 148(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 152(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 156(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 160(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 164(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 168(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 172(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 176(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 180(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 184(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 188(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 192(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 196(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 200(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 204(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 208(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 212(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 216(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 220(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 224(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 228(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 232(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 236(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 240(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 244(r16)
	add.f.rn r5, r5, r8
	loads.w r8, 248(r16)
	add.f.rn r5, r5, r22
	loads.w r22, 252(r16)
	add.f.rn r5, r5, r8
	add.f.rn r5, r5, r22
	stores.w r5, 0(r16)
	j .LBB0_2
.LBB0_9:                                # %._crit_edge
	.loc	1 65 4 epilogue_begin is_stmt 1 # c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py:65:4
	addli sp, sp, 392
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
	.long	456                             # 0x1c8
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
.asciz	"c2b2xposi326jibqgjapcrpw4gyk3y7erpjbpri4gcvm3uscazuf.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/2b" # string offset=63
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
