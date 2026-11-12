	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/tt" "ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py"
	.loc	1 22 0                          # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:22:0
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
	addli r17, r30, -64
	addli r19, zero, 4
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
	add.s r4, r4, r3
	addli r16, r4, 1040
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r3
	sync_group
	loads.w r3, 0(r16)
.Ltmp0:
	.loc	1 56 21 prologue_end            # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:56:21
	lui r5, 239616
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sext_int2long r[20:21], r13
	sext_int2long r[12:13], r8
	.loc	1 61 49 is_stmt 0               # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	lui r8, 983040
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sll.d r[20:21], r[20:21], r2
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	or r8, r19, r8
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sll.d r[12:13], r[12:13], r2
	add.ul r[20:21], r[10:11], r[20:21]
	add.ul r[12:13], r[10:11], r[12:13]
	.loc	1 56 21 is_stmt 1               # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:56:21
	mul.f.rn r3, r3, r5
	.loc	1 58 20                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:58:20
	loadli.w r5,  -240(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r5
	.loc	1 59 28                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:59:28
	lui r5, 260096
	sqrt.f.rn r3, r3
	div.f.rn r3, r5, r3
	.loc	1 60 20                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:60:20
	#APP
	vmul.f.mz.rn vr2{mr1}, r3, vr2
	#NO_APP
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	vstore_mask16.mz vr2{mr1}, -64(r30)
	addli r5, r17, 4
	mfence { lm }
	addli r3, r17, 8
	s_lm2gm r8, r5, 0(r[20:21])
	.loc	1 61 25 is_stmt 0               # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sext_int2long r[7:8], r7
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	lui r21, 983040
	lui r5, 983040
	addli r20, r17, 12
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sll.d r[7:8], r[7:8], r2
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	or r21, r19, r21
	or r5, r19, r5
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	add.ul r[7:8], r[10:11], r[7:8]
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	s_lm2gm r5, r3, 0(r[12:13])
	lui r5, 983040
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sext_int2long r[12:13], r18
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	addli r3, r17, 16
	s_lm2gm r21, r20, 0(r[7:8])
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sext_int2long r[7:8], r15
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	or r5, r19, r5
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sll.d r[12:13], r[12:13], r2
	sll.d r[7:8], r[7:8], r2
	add.ul r[7:8], r[10:11], r[7:8]
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	s_lm2gm r5, r3, 0(r[7:8])
	lui r3, 983040
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	add.ul r[7:8], r[10:11], r[12:13]
	sext_int2long r[12:13], r14
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	addli r5, r17, 20
	or r3, r19, r3
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sll.d r[12:13], r[12:13], r2
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	s_lm2gm r3, r5, 0(r[7:8])
	lui r3, 983040
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	add.ul r[7:8], r[10:11], r[12:13]
	sext_int2long r[12:13], r9
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	addli r5, r17, 24
	addli r9, r17, 44
	or r3, r19, r3
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sll.d r[12:13], r[12:13], r2
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	s_lm2gm r3, r5, 0(r[7:8])
	lui r3, 983040
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	add.ul r[7:8], r[10:11], r[12:13]
	sext_int2long r[12:13], r1
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	addli r5, r17, 28
	lui r1, 983040
	or r3, r19, r3
	or r1, r19, r1
	s_lm2gm r3, r5, 0(r[7:8])
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sll.d r[7:8], r[12:13], r2
	sext_int2long r[12:13], r28
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	addli r3, r17, 32
	lui r5, 983040
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	add.ul r[7:8], r[10:11], r[7:8]
	sll.d r[12:13], r[12:13], r2
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	or r5, r19, r5
	s_lm2gm r1, r3, 0(r[7:8])
	lui r1, 983040
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sext_int2long r[7:8], r27
	add.ul r[12:13], r[10:11], r[12:13]
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	addli r3, r17, 36
	or r1, r19, r1
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sll.d r[7:8], r[7:8], r2
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	s_lm2gm r1, r3, 0(r[12:13])
	lui r1, 983040
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sext_int2long r[12:13], r26
	add.ul r[7:8], r[10:11], r[7:8]
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	addli r3, r17, 40
	or r1, r19, r1
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sll.d r[12:13], r[12:13], r2
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	s_lm2gm r1, r3, 0(r[7:8])
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	load.d r[7:8], -136(r30)                # 8-byte Folded Reload
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	lui r1, 983040
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	add.ul r[12:13], r[10:11], r[12:13]
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	addli r3, r17, 48
	s_lm2gm r5, r9, 0(r[12:13])
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sext_int2long r[12:13], r25
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	or r1, r19, r1
	lui r5, 983040
	addli r9, r17, 60
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	add.ul r[7:8], r[10:11], r[7:8]
	sll.d r[12:13], r[12:13], r2
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	or r5, r19, r5
	s_lm2gm r1, r17, 0(r[7:8])
	lui r1, 983040
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sext_int2long r[7:8], r24
	add.ul r[12:13], r[10:11], r[12:13]
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	or r1, r19, r1
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sll.d r[7:8], r[7:8], r2
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	s_lm2gm r1, r3, 0(r[12:13])
	lui r1, 983040
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	add.ul r[7:8], r[10:11], r[7:8]
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	addli r3, r17, 52
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sext_int2long r[12:13], r23
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	or r1, r19, r1
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sll.d r[12:13], r[12:13], r2
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	s_lm2gm r1, r3, 0(r[7:8])
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sext_int2long r[7:8], r22
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	lui r1, 983040
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	add.ul r[12:13], r[10:11], r[12:13]
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	addli r3, r17, 56
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	sll.d r[7:8], r[7:8], r2
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	or r1, r19, r1
	.loc	1 61 25                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:25
	add.ul r[7:8], r[10:11], r[7:8]
	.loc	1 61 49                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:49
	s_lm2gm r1, r3, 0(r[12:13])
	loadli.w r1,  -164(r30)                 # 4-byte Folded Reload
	s_lm2gm r5, r9, 0(r[7:8])
	mfence { lm }
	add.s r6, r6, r1
	loadli.w r9,  -148(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -144(r30)                 # 4-byte Folded Reload
	loadli.w r20,  -236(r30)                # 4-byte Folded Reload
	blt.s r6, r1, .LBB0_3
	j .LBB0_9
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 49                          # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:0:49
	loadli.w r1,  40(r30)
	loadli.w r3,  36(r30)
	.loc	1 38 47 is_stmt 1               # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:38:47
	vstore_mask16.mz vr0{mr1}, -128(r30)
	lui r5, 983040
	addli r12, zero, 64
	or r5, r12, r5
	div.s r1, r6, r1
	div.s r1, r1, r3
	.loc	1 29 23                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:29:23
	loadli.w r3,  -152(r30)                 # 4-byte Folded Reload
	add.s r3, r1, r3
	.loc	1 38 37                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:38:37
	loadli.w r1,  -160(r30)                 # 4-byte Folded Reload
	.loc	1 38 47 is_stmt 0               # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:38:47
	mfence { lm }
	.loc	1 38 42                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:38:42
	slli r22, r3, 10
	.loc	1 38 37                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:38:37
	add.s r1, r22, r1
	.loc	1 38 30                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:38:30
	sext_int2long r[7:8], r1
	.loc	1 39 37 is_stmt 1               # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:39:37
	lui r1, 983040
	.loc	1 38 30                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:38:30
	sll.d r[13:14], r[7:8], r2
	load.d r[7:8], 0(r30)
	.loc	1 39 37                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:39:37
	or r1, r12, r1
	store.d r[13:14], -136(r30)             # 8-byte Folded Spill
	.loc	1 38 30                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:38:30
	add.ul r[7:8], r[7:8], r[13:14]
	.loc	1 38 47 is_stmt 0               # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:38:47
	addli r13, r30, -128
	l_gm2lm r5, r13, 0(r[7:8])
	.loc	1 39 37 is_stmt 1               # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:39:37
	load.d r[7:8], -232(r30)                # 8-byte Folded Reload
	l_gm2lm r1, r17, 0(r[7:8])
	addli r1, r9, 0
	.loc	1 38 47                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:38:47
	mfence { lm }
	.loc	1 44 33                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:44:33
	blt.s r3, r12, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 33 is_stmt 0                # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:0:33
	addli r1, zero, 0
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	vload_mask16.mz vr2{mr1}, -128(r30)
	vload_mask16.mz vr3{mr1}, -64(r30)
	.loc	1 44 33                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:44:33
	vmmov mr0, r1
	.loc	1 0 0                           # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:0:0
	vadd.f.mz.rn vr2{mr1}, vr2, vr3
	.loc	1 44 33                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:44:33
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
	.loc	1 0 33                          # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:0:33
	loads.w r1, 0(r4)
	loads.w r5, 4(r4)
	loads.w r3, 8(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 12(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 16(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 20(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 24(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 28(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 32(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 36(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 40(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 44(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 48(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 52(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 56(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 60(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 64(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 68(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 72(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 76(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 80(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 84(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 88(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 92(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 96(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 100(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 104(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 108(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 112(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 116(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 120(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 124(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 128(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 132(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 136(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 140(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 144(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 148(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 152(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 156(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 160(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 164(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 168(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 172(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 176(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 180(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 184(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 188(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 192(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 196(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 200(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 204(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 208(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 212(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 216(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 220(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 224(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 228(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 232(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 236(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 240(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 244(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 248(r4)
	add.f.rn r1, r1, r5
	loads.w r5, 252(r4)
	add.f.rn r1, r1, r3
	add.f.rn r1, r1, r5
	stores.w r1, 0(r4)
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	lui r1, 15
	mfence { lm, sm, gm }
	.loc	1 49 19 is_stmt 1               # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:49:19
	lui r5, 763904
	.loc	1 52 35                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:52:35
	vadd.s.mz vr3{mr1}, zero, vr0
	ori r3, r1, 4095
	csr_set csr3, r3
	sync_group
	loads.w r1, 0(r4)
	loadli.w r9,  -180(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -176(r30)                 # 4-byte Folded Reload
	add.s r15, r9, r22
	add.s r7, r7, r22
	.loc	1 49 19                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:49:19
	mul.f.rn r1, r1, r5
	#APP
	vadd.f.mz.rn vr2{mr1}, r1, vr2
	#NO_APP
	.loc	1 50 20                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:50:20
	vmul.f.mz.rn vr4{mr1}, vr2, vr2
	.loc	1 52 35                         # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:52:35
	vor.f.mh vr3{mr0}, vr1, vr4
	vextracti.f r1, 0(vr3)
	vextracti.f r5, 1(vr3)
	vextracti.f r12, 15(vr3)
	add.f.rn r1, r1, r5
	vextracti.f r5, 2(vr3)
	add.f.rn r1, r5, r1
	vextracti.f r5, 3(vr3)
	add.f.rn r1, r5, r1
	vextracti.f r5, 4(vr3)
	add.f.rn r1, r5, r1
	vextracti.f r5, 5(vr3)
	add.f.rn r1, r5, r1
	vextracti.f r5, 6(vr3)
	add.f.rn r1, r5, r1
	vextracti.f r5, 7(vr3)
	add.f.rn r1, r5, r1
	vextracti.f r5, 8(vr3)
	add.f.rn r1, r5, r1
	vextracti.f r5, 9(vr3)
	add.f.rn r1, r5, r1
	vextracti.f r5, 10(vr3)
	add.f.rn r1, r5, r1
	vextracti.f r5, 11(vr3)
	add.f.rn r1, r5, r1
	vextracti.f r5, 12(vr3)
	add.f.rn r1, r5, r1
	vextracti.f r5, 13(vr3)
	add.f.rn r1, r5, r1
	loadli.w r5,  -168(r30)                 # 4-byte Folded Reload
	add.s r13, r5, r22
	loadli.w r5,  -172(r30)                 # 4-byte Folded Reload
	add.s r8, r5, r22
	vextracti.f r5, 14(vr3)
	add.f.rn r5, r5, r1
	loadli.w r1,  -184(r30)                 # 4-byte Folded Reload
	add.s r18, r1, r22
	loadli.w r1,  -188(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r12, r5
	loadli.w r12,  -200(r30)                # 4-byte Folded Reload
	add.s r14, r1, r22
	loadli.w r1,  -192(r30)                 # 4-byte Folded Reload
	add.s r28, r12, r22
	loadli.w r12,  -204(r30)                # 4-byte Folded Reload
	add.s r9, r1, r22
	loadli.w r1,  -196(r30)                 # 4-byte Folded Reload
	add.s r27, r12, r22
	loadli.w r12,  -208(r30)                # 4-byte Folded Reload
	add.s r1, r1, r22
	add.s r26, r12, r22
	loadli.w r12,  -212(r30)                # 4-byte Folded Reload
	add.s r25, r12, r22
	loadli.w r12,  -216(r30)                # 4-byte Folded Reload
	add.s r24, r12, r22
	loadli.w r12,  -156(r30)                # 4-byte Folded Reload
	stores.w r5, 0(r12)
	loadli.w r5,  -220(r30)                 # 4-byte Folded Reload
	add.s r23, r5, r22
	loadli.w r5,  -224(r30)                 # 4-byte Folded Reload
	mfence { lm, sm, gm }
	csr_set csr3, r3
	sync_group
	add.s r22, r5, r22
	bneq r20, zero, .LBB0_2
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 35 is_stmt 0                # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:0:35
	loads.w r12, 0(r16)
	loads.w r20, 4(r16)
	loads.w r5, 8(r16)
	add.f.rn r12, r12, r20
	loads.w r20, 12(r16)
	add.f.rn r5, r12, r5
	loads.w r12, 16(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 20(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 24(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 28(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 32(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 36(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 40(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 44(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 48(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 52(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 56(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 60(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 64(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 68(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 72(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 76(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 80(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 84(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 88(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 92(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 96(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 100(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 104(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 108(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 112(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 116(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 120(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 124(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 128(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 132(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 136(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 140(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 144(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 148(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 152(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 156(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 160(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 164(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 168(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 172(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 176(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 180(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 184(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 188(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 192(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 196(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 200(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 204(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 208(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 212(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 216(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 220(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 224(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 228(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 232(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 236(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 240(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 244(r16)
	add.f.rn r5, r5, r12
	loads.w r12, 248(r16)
	add.f.rn r5, r5, r20
	loads.w r20, 252(r16)
	add.f.rn r5, r5, r12
	add.f.rn r5, r5, r20
	stores.w r5, 0(r16)
	j .LBB0_2
.LBB0_9:                                # %._crit_edge
	.loc	1 61 4 epilogue_begin is_stmt 1 # ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py:61:4
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
.asciz	"ctty3wxnbiohw76cxoaobdyk5qtx3gtam623lxykktpelg65uoct.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/tt" # string offset=63
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
