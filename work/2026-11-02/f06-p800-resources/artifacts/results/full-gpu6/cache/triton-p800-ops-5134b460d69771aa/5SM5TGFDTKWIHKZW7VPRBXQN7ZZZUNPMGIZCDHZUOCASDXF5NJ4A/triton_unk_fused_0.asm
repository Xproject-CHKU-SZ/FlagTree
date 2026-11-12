	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/el" "celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py"
	.loc	1 22 0                          # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -304
	lui r2, :hi20:global_smem
	core_id r3
	addli r30, sp, 240
	lui r9, 15
	slli r4, r3, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r6,  36(r30)
	loadli.w r1,  32(r30)
	loadli.w r5,  40(r30)
	ori r20, r9, 4095
	add.s r7, r4, r2
	mul.s r1, r6, r1
	addli r8, r7, 8208
	mul.s r1, r1, r5
	storeli.w r8, -144(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r20
	sync_group
	storeli.w r7, -140(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r7)
	load_param_i r7, 0
	mfence { lm, sm, gm }
	csr_set csr3, r20
	sync_group
	storeli.w r1, -148(r30)                 # 4-byte Folded Spill
	ble.s r1, r7, .LBB0_9
# %bb.1:                                # %.lr.ph
	addli r1, zero, 8
	load_param_i r8, 1
	lui r13, 1048575
	andi r21, r3, 7
	load.d r[5:6], 8(r30)
	load.d r[10:11], 16(r30)
	addli r16, r30, -128
	addli r19, zero, 4
	vxor.u.mz vr0{mr1}, vr0, vr0
	#APP
	vxor.s.mz vr1{mr1}, vr1, vr1
	#NO_APP
	storeli.w r20, -152(r30)                # 4-byte Folded Spill
	div.s r1, r3, r1
	storeli.w r8, -164(r30)                 # 4-byte Folded Spill
	ori r13, r13, 4064
	storeli.w r21, -236(r30)                # 4-byte Folded Spill
	and r4, r4, r13
	add.s r2, r4, r2
	storeli.w r1, -156(r30)                 # 4-byte Folded Spill
	slli r1, r1, 3
	addli r15, r2, 8208
	sub.s r1, r3, r1
	lui r3, 239665
	slli r1, r1, 4
	ori r3, r3, 623
	ori r8, r1, 1
	storeli.w r1, -160(r30)                 # 4-byte Folded Spill
	storeli.w r3, -240(r30)                 # 4-byte Folded Spill
	lui r3, 4
	storeli.w r8, -168(r30)                 # 4-byte Folded Spill
	ori r8, r1, 2
	vmmov mr3, r3
	lui r3, 8
	storeli.w r8, -172(r30)                 # 4-byte Folded Spill
	ori r8, r1, 3
	vmmov mr0, r3
	storeli.w r8, -176(r30)                 # 4-byte Folded Spill
	ori r8, r1, 4
	storeli.w r8, -180(r30)                 # 4-byte Folded Spill
	ori r8, r1, 5
	storeli.w r8, -184(r30)                 # 4-byte Folded Spill
	ori r8, r1, 6
	storeli.w r8, -188(r30)                 # 4-byte Folded Spill
	ori r8, r1, 7
	storeli.w r8, -192(r30)                 # 4-byte Folded Spill
	ori r8, r1, 8
	storeli.w r8, -196(r30)                 # 4-byte Folded Spill
	ori r8, r1, 9
	storeli.w r8, -200(r30)                 # 4-byte Folded Spill
	ori r8, r1, 10
	storeli.w r8, -204(r30)                 # 4-byte Folded Spill
	ori r8, r1, 11
	storeli.w r8, -208(r30)                 # 4-byte Folded Spill
	ori r8, r1, 12
	storeli.w r8, -212(r30)                 # 4-byte Folded Spill
	ori r8, r1, 13
	storeli.w r8, -216(r30)                 # 4-byte Folded Spill
	ori r8, r1, 14
	storeli.w r8, -220(r30)                 # 4-byte Folded Spill
	ori r8, r1, 15
	storeli.w r8, -224(r30)                 # 4-byte Folded Spill
	sext_int2long r[8:9], r1
	addli r1, zero, 2
	sll.d r[8:9], r[8:9], r1
	add.ul r[5:6], r[5:6], r[8:9]
	store.d r[5:6], -232(r30)               # 8-byte Folded Spill
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r3
	sync_group
	loads.w r3, 0(r15)
.Ltmp0:
	.loc	1 56 21 prologue_end            # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:56:21
	lui r6, 245760
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sext_int2long r[20:21], r5
	.loc	1 59 28                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:59:28
	lui r5, 260096
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	addli r12, r16, 4
	.loc	1 61 25 is_stmt 0               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sll.d r[20:21], r[20:21], r1
	add.ul r[20:21], r[10:11], r[20:21]
	.loc	1 56 21 is_stmt 1               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:56:21
	mul.f.rn r3, r3, r6
	.loc	1 58 20                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:58:20
	loadli.w r6,  -240(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r6
	.loc	1 59 28                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:59:28
	sqrt.f.rn r3, r3
	div.f.rn r3, r5, r3
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sext_int2long r[5:6], r18
	.loc	1 61 48 is_stmt 0               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	lui r18, 983040
	.loc	1 60 20 is_stmt 1               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:60:20
	#APP
	vmul.f.mz.rn vr2{mr1}, r3, vr2
	#NO_APP
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	vstore_mask16.mz vr2{mr1}, -128(r30)
	mfence { lm }
	addli r3, r16, 8
	or r18, r19, r18
	.loc	1 61 25 is_stmt 0               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sll.d r[5:6], r[5:6], r1
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	s_lm2gm r18, r12, 0(r[20:21])
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sext_int2long r[20:21], r8
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	lui r8, 983040
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	add.ul r[5:6], r[10:11], r[5:6]
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	lui r18, 983040
	addli r12, r16, 12
	or r8, r19, r8
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sll.d r[20:21], r[20:21], r1
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	or r18, r19, r18
	s_lm2gm r8, r3, 0(r[5:6])
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sext_int2long r[5:6], r13
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	lui r8, 983040
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	add.ul r[20:21], r[10:11], r[20:21]
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	addli r3, r16, 16
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sll.d r[5:6], r[5:6], r1
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	s_lm2gm r18, r12, 0(r[20:21])
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sext_int2long r[12:13], r14
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	or r8, r19, r8
	addli r14, r16, 44
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	add.ul r[5:6], r[10:11], r[5:6]
	sll.d r[12:13], r[12:13], r1
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	s_lm2gm r8, r3, 0(r[5:6])
	lui r3, 983040
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	add.ul r[5:6], r[10:11], r[12:13]
	sext_int2long r[12:13], r17
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	addli r8, r16, 20
	or r3, r19, r3
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sll.d r[12:13], r[12:13], r1
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	s_lm2gm r3, r8, 0(r[5:6])
	lui r3, 983040
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	add.ul r[5:6], r[10:11], r[12:13]
	sext_int2long r[12:13], r28
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	addli r8, r16, 24
	or r3, r19, r3
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sll.d r[12:13], r[12:13], r1
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	s_lm2gm r3, r8, 0(r[5:6])
	lui r3, 983040
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	add.ul r[5:6], r[10:11], r[12:13]
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	addli r8, r16, 28
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sext_int2long r[12:13], r4
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	or r3, r19, r3
	s_lm2gm r3, r8, 0(r[5:6])
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sll.d r[3:4], r[12:13], r1
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	lui r8, 983040
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sext_int2long r[5:6], r27
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	addli r12, r16, 32
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	add.ul r[3:4], r[10:11], r[3:4]
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	or r8, r19, r8
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sll.d r[5:6], r[5:6], r1
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	s_lm2gm r8, r12, 0(r[3:4])
	lui r3, 983040
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	add.ul r[5:6], r[10:11], r[5:6]
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	addli r4, r16, 36
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sext_int2long r[12:13], r26
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	lui r8, 983040
	or r3, r19, r3
	or r8, r19, r8
	s_lm2gm r3, r4, 0(r[5:6])
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sext_int2long r[3:4], r25
	sll.d r[5:6], r[12:13], r1
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	lui r13, 983040
	addli r12, r16, 40
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sll.d r[3:4], r[3:4], r1
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	or r13, r19, r13
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	add.ul r[5:6], r[10:11], r[5:6]
	add.ul r[3:4], r[10:11], r[3:4]
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	s_lm2gm r8, r12, 0(r[5:6])
	lui r5, 983040
	lui r8, 983040
	s_lm2gm r13, r14, 0(r[3:4])
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	load.d r[3:4], -136(r30)                # 8-byte Folded Reload
	sext_int2long r[12:13], r24
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	or r5, r19, r5
	or r8, r19, r8
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sll.d r[12:13], r[12:13], r1
	add.ul r[3:4], r[10:11], r[3:4]
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	s_lm2gm r5, r16, 0(r[3:4])
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sext_int2long r[3:4], r9
	add.ul r[5:6], r[10:11], r[12:13]
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	addli r9, r16, 48
	lui r12, 983040
	addli r13, r16, 60
	s_lm2gm r8, r9, 0(r[5:6])
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sll.d r[3:4], r[3:4], r1
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	lui r5, 983040
	addli r6, r16, 52
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sext_int2long r[8:9], r23
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	or r12, r19, r12
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	add.ul r[3:4], r[10:11], r[3:4]
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	or r5, r19, r5
	s_lm2gm r5, r6, 0(r[3:4])
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sext_int2long r[3:4], r22
	sll.d r[5:6], r[8:9], r1
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	lui r8, 983040
	addli r9, r16, 56
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	sll.d r[3:4], r[3:4], r1
	add.ul r[5:6], r[10:11], r[5:6]
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	or r8, r19, r8
	.loc	1 61 25                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:25
	add.ul r[3:4], r[10:11], r[3:4]
	.loc	1 61 48                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:48
	s_lm2gm r8, r9, 0(r[5:6])
	s_lm2gm r12, r13, 0(r[3:4])
	loadli.w r3,  -164(r30)                 # 4-byte Folded Reload
	mfence { lm }
	loadli.w r20,  -152(r30)                # 4-byte Folded Reload
	loadli.w r21,  -236(r30)                # 4-byte Folded Reload
	add.s r7, r7, r3
	loadli.w r3,  -148(r30)                 # 4-byte Folded Reload
	blt.s r7, r3, .LBB0_3
	j .LBB0_9
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 48                          # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:0:48
	loadli.w r3,  40(r30)
	loadli.w r4,  36(r30)
	.loc	1 38 37 is_stmt 1               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:37
	loadli.w r5,  -160(r30)                 # 4-byte Folded Reload
	.loc	1 38 46 is_stmt 0               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:46
	vstore_mask16.mz vr0{mr1}, -128(r30)
	.loc	1 39 37 is_stmt 1               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:39:37
	lui r6, 983040
	.loc	1 40 18                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:40:18
	vadd.s.mz vr2{mr1}, zero, vr0
	div.s r3, r7, r3
	div.s r3, r3, r4
	.loc	1 29 23                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:29:23
	loadli.w r4,  -156(r30)                 # 4-byte Folded Reload
	.loc	1 38 46                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:46
	mfence { lm }
	.loc	1 28 33                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:28:33
	slli r3, r3, 3
	.loc	1 29 23                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:29:23
	add.s r3, r3, r4
	.loc	1 38 46                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:46
	lui r4, 983040
	.loc	1 38 41 is_stmt 0               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:41
	slli r22, r3, 7
	.loc	1 38 37                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:37
	add.s r5, r22, r5
	.loc	1 38 30                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:30
	sext_int2long r[8:9], r5
	addli r5, zero, 64
	.loc	1 40 18 is_stmt 1               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:40:18
	addli zero, zero, 1
	.loc	1 38 30                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:30
	sll.d r[12:13], r[8:9], r1
	load.d r[8:9], 0(r30)
	.loc	1 38 46 is_stmt 0               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:46
	or r4, r5, r4
	.loc	1 39 37 is_stmt 1               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:39:37
	or r5, r5, r6
	.loc	1 40 18                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:40:18
	vmmov mr2, zero
	xor zero, zero, zero
	store.d r[12:13], -136(r30)             # 8-byte Folded Spill
	.loc	1 38 30                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:30
	add.ul r[8:9], r[8:9], r[12:13]
	.loc	1 38 46 is_stmt 0               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:46
	l_gm2lm r4, r16, 0(r[8:9])
	.loc	1 39 37 is_stmt 1               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:39:37
	load.d r[8:9], -232(r30)                # 8-byte Folded Reload
	addli r4, r30, -64
	l_gm2lm r5, r4, 0(r[8:9])
	.loc	1 38 46                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:38:46
	mfence { lm }
	.loc	1 39 37                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:39:37
	loadli.w r4,  -64(r30)
	loadli.w r5,  -60(r30)
	loadli.w r6,  -56(r30)
	loadli.w r8,  -52(r30)
	loadli.w r9,  -48(r30)
	loadli.w r13,  -44(r30)
	loadli.w r14,  -40(r30)
	loadli.w r17,  -36(r30)
	loadli.w r18,  -32(r30)
	loadli.w r23,  -28(r30)
	loadli.w r24,  -24(r30)
	loadli.w r25,  -20(r30)
	loadli.w r26,  -16(r30)
	loadli.w r27,  -12(r30)
	loadli.w r28,  -8(r30)
	loadli.w r12,  -4(r30)
	.loc	1 40 18                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:40:18
	vor.u.mh vr2{mr2}, r4, vr2
	addli r4, zero, 2
	vmmov mr2, r4
	addli r4, zero, 4
	vor.u.mh vr2{mr2}, r5, vr2
	vmmov mr2, r4
	addli r4, zero, 8
	.loc	1 44 33                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:44:33
	addli r5, zero, 16
	.loc	1 40 18                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:40:18
	vor.u.mh vr2{mr2}, r6, vr2
	vmmov mr2, r4
	addli r4, zero, 16
	vor.u.mh vr2{mr2}, r8, vr2
	vmmov mr2, r4
	addli r4, zero, 32
	vor.u.mh vr2{mr2}, r9, vr2
	vmmov mr2, r4
	addli r4, zero, 64
	vor.u.mh vr2{mr2}, r13, vr2
	vmmov mr2, r4
	addli r4, zero, 128
	vor.u.mh vr2{mr2}, r14, vr2
	vmmov mr2, r4
	addli r4, zero, 256
	vor.u.mh vr2{mr2}, r17, vr2
	vmmov mr2, r4
	addli r4, zero, 512
	vor.u.mh vr2{mr2}, r18, vr2
	vmmov mr2, r4
	addli r4, zero, 1024
	vor.u.mh vr2{mr2}, r23, vr2
	vmmov mr2, r4
	addli r4, zero, 2048
	vor.u.mh vr2{mr2}, r24, vr2
	vmmov mr2, r4
	addli r4, zero, 4096
	vor.u.mh vr2{mr2}, r25, vr2
	vmmov mr2, r4
	addli r4, zero, 8192
	vor.u.mh vr2{mr2}, r26, vr2
	vmmov mr2, r4
	addli r4, r20, 0
	vor.u.mh vr2{mr2}, r27, vr2
	vor.u.mh vr2{mr3}, r28, vr2
	vor.u.mh vr2{mr0}, r12, vr2
	.loc	1 44 33                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:44:33
	blt.s r3, r5, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 33 is_stmt 0                # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:0:33
	addli r4, zero, 0
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	vload_mask16.mz vr3{mr1}, -128(r30)
	.loc	1 44 33                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:44:33
	vmmov mr2, r4
	.loc	1 0 0                           # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:0:0
	vadd.f.mz.rn vr2{mr1}, vr3, vr2
	.loc	1 44 33                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:44:33
	vadd.s.mz vr3{mr1}, zero, vr0
	vor.f.mh vr3{mr2}, vr1, vr2
	vextracti.f r3, 0(vr3)
	vextracti.f r4, 1(vr3)
	add.f.rn r3, r3, r4
	vextracti.f r4, 2(vr3)
	add.f.rn r3, r4, r3
	vextracti.f r4, 3(vr3)
	add.f.rn r3, r4, r3
	vextracti.f r4, 4(vr3)
	add.f.rn r3, r4, r3
	vextracti.f r4, 5(vr3)
	add.f.rn r3, r4, r3
	vextracti.f r4, 6(vr3)
	add.f.rn r3, r4, r3
	vextracti.f r4, 7(vr3)
	add.f.rn r3, r4, r3
	vextracti.f r4, 8(vr3)
	add.f.rn r3, r4, r3
	vextracti.f r4, 9(vr3)
	add.f.rn r3, r4, r3
	vextracti.f r4, 10(vr3)
	add.f.rn r3, r4, r3
	vextracti.f r4, 11(vr3)
	add.f.rn r3, r4, r3
	vextracti.f r4, 12(vr3)
	add.f.rn r3, r4, r3
	vextracti.f r4, 13(vr3)
	add.f.rn r3, r4, r3
	vextracti.f r4, 14(vr3)
	add.f.rn r3, r4, r3
	vextracti.f r4, 15(vr3)
	add.f.rn r3, r4, r3
	loadli.w r4,  -140(r30)                 # 4-byte Folded Reload
	stores.w r3, 0(r4)
	mfence { lm, sm, gm }
	csr_set csr3, r20
	sync_group
	bneq r21, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 33                          # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:0:33
	loads.w r3, 0(r2)
	loads.w r4, 4(r2)
	loads.w r5, 8(r2)
	add.f.rn r3, r3, r4
	loads.w r4, 12(r2)
	add.f.rn r3, r3, r5
	loads.w r5, 16(r2)
	add.f.rn r3, r3, r4
	loads.w r4, 20(r2)
	add.f.rn r3, r3, r5
	loads.w r5, 24(r2)
	add.f.rn r3, r3, r4
	loads.w r4, 28(r2)
	add.f.rn r3, r3, r5
	add.f.rn r3, r3, r4
	stores.w r3, 0(r2)
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	lui r3, 15
	mfence { lm, sm, gm }
	.loc	1 49 19 is_stmt 1               # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:49:19
	lui r5, 770048
	.loc	1 52 35                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:52:35
	vadd.s.mz vr3{mr1}, zero, vr0
	ori r3, r3, 4095
	csr_set csr3, r3
	sync_group
	loads.w r4, 0(r2)
	loadli.w r6,  -172(r30)                 # 4-byte Folded Reload
	loadli.w r9,  -180(r30)                 # 4-byte Folded Reload
	loadli.w r12,  -144(r30)                # 4-byte Folded Reload
	loadli.w r8,  -176(r30)                 # 4-byte Folded Reload
	add.s r18, r6, r22
	add.s r13, r9, r22
	add.s r8, r8, r22
	.loc	1 49 19                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:49:19
	mul.f.rn r4, r4, r5
	#APP
	vadd.f.mz.rn vr2{mr1}, r4, vr2
	#NO_APP
	.loc	1 50 20                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:50:20
	vmul.f.mz.rn vr4{mr1}, vr2, vr2
	.loc	1 52 35                         # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:52:35
	vor.f.mh vr3{mr2}, vr1, vr4
	vextracti.f r4, 0(vr3)
	vextracti.f r5, 1(vr3)
	vextracti.f r6, 14(vr3)
	vextracti.f r9, 15(vr3)
	add.f.rn r4, r4, r5
	vextracti.f r5, 2(vr3)
	add.f.rn r4, r5, r4
	vextracti.f r5, 3(vr3)
	add.f.rn r4, r5, r4
	vextracti.f r5, 4(vr3)
	add.f.rn r4, r5, r4
	vextracti.f r5, 5(vr3)
	add.f.rn r4, r5, r4
	vextracti.f r5, 6(vr3)
	add.f.rn r4, r5, r4
	vextracti.f r5, 7(vr3)
	add.f.rn r4, r5, r4
	vextracti.f r5, 8(vr3)
	add.f.rn r4, r5, r4
	vextracti.f r5, 9(vr3)
	add.f.rn r4, r5, r4
	vextracti.f r5, 10(vr3)
	add.f.rn r4, r5, r4
	vextracti.f r5, 11(vr3)
	add.f.rn r4, r5, r4
	vextracti.f r5, 12(vr3)
	add.f.rn r4, r5, r4
	vextracti.f r5, 13(vr3)
	add.f.rn r4, r5, r4
	loadli.w r5,  -168(r30)                 # 4-byte Folded Reload
	add.s r5, r5, r22
	add.f.rn r6, r6, r4
	loadli.w r4,  -184(r30)                 # 4-byte Folded Reload
	add.s r14, r4, r22
	loadli.w r4,  -188(r30)                 # 4-byte Folded Reload
	add.f.rn r6, r9, r6
	loadli.w r9,  -200(r30)                 # 4-byte Folded Reload
	add.s r17, r4, r22
	loadli.w r4,  -192(r30)                 # 4-byte Folded Reload
	add.s r27, r9, r22
	loadli.w r9,  -204(r30)                 # 4-byte Folded Reload
	add.s r28, r4, r22
	loadli.w r4,  -196(r30)                 # 4-byte Folded Reload
	add.s r26, r9, r22
	loadli.w r9,  -208(r30)                 # 4-byte Folded Reload
	stores.w r6, 0(r12)
	loadli.w r6,  -220(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r22
	add.s r25, r9, r22
	loadli.w r9,  -212(r30)                 # 4-byte Folded Reload
	add.s r23, r6, r22
	loadli.w r6,  -224(r30)                 # 4-byte Folded Reload
	add.s r24, r9, r22
	loadli.w r9,  -216(r30)                 # 4-byte Folded Reload
	mfence { lm, sm, gm }
	csr_set csr3, r3
	sync_group
	add.s r9, r9, r22
	add.s r22, r6, r22
	bneq r21, zero, .LBB0_2
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 35 is_stmt 0                # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:0:35
	loads.w r6, 0(r15)
	loads.w r12, 4(r15)
	loads.w r20, 8(r15)
	add.f.rn r6, r6, r12
	loads.w r12, 12(r15)
	add.f.rn r6, r6, r20
	loads.w r20, 16(r15)
	add.f.rn r6, r6, r12
	loads.w r12, 20(r15)
	add.f.rn r6, r6, r20
	loads.w r20, 24(r15)
	add.f.rn r6, r6, r12
	loads.w r12, 28(r15)
	add.f.rn r6, r6, r20
	add.f.rn r6, r6, r12
	stores.w r6, 0(r15)
	j .LBB0_2
.LBB0_9:                                # %._crit_edge
	.loc	1 61 4 epilogue_begin is_stmt 1 # celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py:61:4
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
.asciz	"celvliswdkgtiafk5sduvk35k5t74rzu25dn7dijbgjqvrv6gddp.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/el" # string offset=63
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
