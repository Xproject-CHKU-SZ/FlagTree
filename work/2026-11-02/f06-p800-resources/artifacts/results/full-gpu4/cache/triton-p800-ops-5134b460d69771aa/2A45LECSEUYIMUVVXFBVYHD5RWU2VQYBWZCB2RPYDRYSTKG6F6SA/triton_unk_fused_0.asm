	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/b5" "cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py"
	.loc	1 22 0                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -576
	lui r2, :hi20:global_smem
	core_id r1
	addli r30, sp, 512
	lui r5, 15
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r7,  36(r30)
	loadli.w r4,  32(r30)
	loadli.w r6,  40(r30)
	ori r11, r5, 4095
	add.s r8, r3, r2
	mul.s r4, r7, r4
	addli r9, r8, 8208
	mul.s r4, r4, r6
	storeli.w r9, -380(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r9)
	load_param_i r9, 0
	mfence { lm, sm, gm }
	csr_set csr3, r11
	sync_group
	storeli.w r8, -376(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r11
	sync_group
	storeli.w r4, -384(r30)                 # 4-byte Folded Spill
	ble.s r4, r9, .LBB0_174
# %bb.1:                                # %.lr.ph
	addli r4, zero, 8
	load_param_i r7, 1
	addli r10, zero, 1
	load.d r[5:6], 8(r30)
	lui r20, 522240
	vxor.u.mz vr0{mr1}, vr0, vr0
	storeli.w r11, -388(r30)                # 4-byte Folded Spill
	div.s r4, r1, r4
	storeli.w r7, -400(r30)                 # 4-byte Folded Spill
	storeli.w r4, -392(r30)                 # 4-byte Folded Spill
	slli r4, r4, 3
	sub.s r4, r1, r4
	slli r4, r4, 4
	ori r7, r4, 1
	storeli.w r4, -396(r30)                 # 4-byte Folded Spill
	storeli.w r7, -404(r30)                 # 4-byte Folded Spill
	ori r7, r4, 2
	storeli.w r7, -408(r30)                 # 4-byte Folded Spill
	ori r7, r4, 3
	storeli.w r7, -412(r30)                 # 4-byte Folded Spill
	ori r7, r4, 4
	storeli.w r7, -416(r30)                 # 4-byte Folded Spill
	ori r7, r4, 5
	storeli.w r7, -420(r30)                 # 4-byte Folded Spill
	ori r7, r4, 6
	storeli.w r7, -424(r30)                 # 4-byte Folded Spill
	ori r7, r4, 7
	storeli.w r7, -428(r30)                 # 4-byte Folded Spill
	ori r7, r4, 8
	storeli.w r7, -432(r30)                 # 4-byte Folded Spill
	ori r7, r4, 9
	storeli.w r7, -436(r30)                 # 4-byte Folded Spill
	ori r7, r4, 10
	storeli.w r7, -440(r30)                 # 4-byte Folded Spill
	ori r7, r4, 11
	storeli.w r7, -444(r30)                 # 4-byte Folded Spill
	ori r7, r4, 12
	storeli.w r7, -448(r30)                 # 4-byte Folded Spill
	ori r7, r4, 13
	storeli.w r7, -452(r30)                 # 4-byte Folded Spill
	ori r7, r4, 14
	storeli.w r7, -456(r30)                 # 4-byte Folded Spill
	ori r7, r4, 15
	storeli.w r7, -460(r30)                 # 4-byte Folded Spill
	sext_int2long r[7:8], r4
	lui r4, 1048575
	ori r4, r4, 4064
	sll.d r[7:8], r[7:8], r10
	and r3, r3, r4
	add.ul r[4:5], r[5:6], r[7:8]
	addli r6, r30, -192
	addli r7, zero, 32
	add.s r2, r3, r2
	andi r3, r1, 7
	store.d r[4:5], -472(r30)               # 8-byte Folded Spill
	addli r1, r2, 8208
	storeli.w r2, -368(r30)                 # 4-byte Folded Spill
	lui r2, 524287
	storeli.w r3, -476(r30)                 # 4-byte Folded Spill
	storeli.w r1, -372(r30)                 # 4-byte Folded Spill
	lui r1, 7
	ori r17, r2, 4095
	lui r2, 239665
	ori r1, r1, 4095
	storeli.w r17, -200(r30)                # 4-byte Folded Spill
	storeli.w r1, -204(r30)                 # 4-byte Folded Spill
	lui r1, 522239
	ori r1, r1, 4095
	storeli.w r1, -196(r30)                 # 4-byte Folded Spill
	ori r1, r2, 623
	storeli.w r1, -480(r30)                 # 4-byte Folded Spill
	addli r1, zero, 2
	vmmov mr3, r1
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp0:
	.loc	1 69 48 prologue_end            # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	loadli.w r1,  -208(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -212(r30)                 # 4-byte Folded Reload
	addli r5, zero, 2
	addli r6, r30, -192
	addli r4, r6, 6
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -192(r30)
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	store.h r2, -190(r30)
	loadli.w r2,  -220(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -188(r30)
	loadli.w r1,  -224(r30)                 # 4-byte Folded Reload
	store.h r2, -186(r30)
	loadli.w r2,  -228(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -184(r30)
	loadli.w r1,  -232(r30)                 # 4-byte Folded Reload
	store.h r2, -182(r30)
	loadli.w r2,  -236(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -180(r30)
	loadli.w r1,  -240(r30)                 # 4-byte Folded Reload
	store.h r2, -178(r30)
	loadli.w r2,  -244(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -176(r30)
	loadli.w r1,  -248(r30)                 # 4-byte Folded Reload
	store.h r2, -174(r30)
	loadli.w r2,  -252(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -172(r30)
	loadli.w r1,  -256(r30)                 # 4-byte Folded Reload
	store.h r2, -170(r30)
	loadli.w r2,  -260(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -168(r30)
	loadli.w r1,  -264(r30)                 # 4-byte Folded Reload
	store.h r2, -166(r30)
	float2bfloat.rn r2, r3
	addli r3, r6, 2
	store.h r2, -162(r30)
	lui r2, 983040
	float2bfloat.rn r1, r1
	or r2, r5, r2
	store.h r1, -164(r30)
	lui r1, 983040
	mfence { lm }
	load.d r[11:12], -336(r30)              # 8-byte Folded Reload
	or r1, r5, r1
	s_lm2gm r1, r6, 0(r[11:12])
	load.d r[11:12], -344(r30)              # 8-byte Folded Reload
	addli r1, r6, 4
	s_lm2gm r2, r3, 0(r[11:12])
	lui r2, 983040
	load.d r[11:12], -320(r30)              # 8-byte Folded Reload
	lui r3, 983040
	or r2, r5, r2
	or r3, r5, r3
	s_lm2gm r2, r1, 0(r[11:12])
	load.d r[1:2], -328(r30)                # 8-byte Folded Reload
	s_lm2gm r3, r4, 0(r[1:2])
	lui r3, 983040
	lui r4, 983040
	addli r1, r6, 8
	addli r2, r6, 10
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[13:14])
	lui r3, 983040
	s_lm2gm r4, r2, 0(r[19:20])
	lui r4, 983040
	addli r1, r6, 12
	addli r2, r6, 14
	lui r20, 522240
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[26:27])
	lui r3, 983040
	s_lm2gm r4, r2, 0(r[7:8])
	load.d r[7:8], -312(r30)                # 8-byte Folded Reload
	addli r1, r6, 16
	lui r4, 983040
	addli r2, r6, 18
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[7:8])
	lui r3, 983040
	addli r1, r6, 20
	s_lm2gm r4, r2, 0(r[17:18])
	lui r4, 983040
	addli r2, r6, 22
	load.d r[7:8], -296(r30)                # 8-byte Folded Reload
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[15:16])
	lui r3, 983040
	addli r1, r6, 24
	s_lm2gm r4, r2, 0(r[23:24])
	lui r4, 983040
	addli r2, r6, 26
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[7:8])
	load.d r[7:8], -304(r30)                # 8-byte Folded Reload
	lui r3, 983040
	addli r1, r6, 28
	or r3, r5, r3
	s_lm2gm r4, r2, 0(r[7:8])
	lui r4, 983040
	load.d r[7:8], -280(r30)                # 8-byte Folded Reload
	addli r2, r6, 30
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[7:8])
	loadli.w r1,  -400(r30)                 # 4-byte Folded Reload
	addli r7, zero, 32
	s_lm2gm r4, r2, 0(r[9:10])
	loadli.w r9,  -268(r30)                 # 4-byte Folded Reload
	mfence { lm }
	loadli.w r17,  -200(r30)                # 4-byte Folded Reload
	add.s r9, r9, r1
	loadli.w r1,  -384(r30)                 # 4-byte Folded Reload
	blt.s r9, r1, .LBB0_3
	j .LBB0_174
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	.loc	1 0 48 is_stmt 0                # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	addli r1, zero, 0
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 46 is_stmt 1               # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:46
	add.s r2, r6, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r7, .LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 46 is_stmt 0                # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:46
	loadli.w r1,  40(r30)
	loadli.w r2,  36(r30)
	.loc	1 38 30                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:30
	addli r5, zero, 1
	storeli.w r9, -268(r30)                 # 4-byte Folded Spill
	.loc	1 38 46                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:46
	vadd.s.mz vr1{mr1}, zero, vr0
	addli r18, zero, 1
	.loc	1 39 37 is_stmt 1               # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:39:37
	vadd.s.mz vr2{mr1}, zero, vr0
	vmmov mr2, r18
	div.s r1, r9, r1
	div.s r1, r1, r2
	.loc	1 29 23                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:29:23
	loadli.w r2,  -392(r30)                 # 4-byte Folded Reload
	.loc	1 28 33                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:28:33
	slli r1, r1, 3
	.loc	1 29 23                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:29:23
	add.s r1, r1, r2
	.loc	1 38 46                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:46
	lui r2, 983040
	storeli.w r1, -232(r30)                 # 4-byte Folded Spill
	.loc	1 38 41 is_stmt 0               # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:41
	slli r27, r1, 7
	.loc	1 38 37                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:37
	loadli.w r1,  -396(r30)                 # 4-byte Folded Reload
	.loc	1 38 46                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:46
	or r2, r7, r2
	.loc	1 38 37                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:37
	add.s r1, r27, r1
	.loc	1 38 30                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:30
	sext_int2long r[3:4], r1
	.loc	1 39 37 is_stmt 1               # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:39:37
	lui r1, 983040
	.loc	1 38 30                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:30
	sll.d r[8:9], r[3:4], r5
	load.d r[3:4], 0(r30)
	.loc	1 39 37                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:39:37
	or r1, r7, r1
	store.d r[8:9], -280(r30)               # 8-byte Folded Spill
	.loc	1 38 30                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:30
	add.ul r[3:4], r[3:4], r[8:9]
	.loc	1 38 46 is_stmt 0               # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:46
	l_gm2lm r2, r6, 0(r[3:4])
	.loc	1 39 37 is_stmt 1               # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:39:37
	load.d r[2:3], -472(r30)                # 8-byte Folded Reload
	addli r4, r30, -128
	l_gm2lm r1, r4, 0(r[2:3])
	.loc	1 38 46                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:38:46
	mfence { lm }
	load.hu r1, -192(r30)
	load.hu r2, -190(r30)
	load.hu r3, -188(r30)
	load.hu r4, -186(r30)
	load.hu r5, -184(r30)
	load.hu r6, -182(r30)
	load.hu r7, -180(r30)
	load.hu r8, -178(r30)
	load.hu r9, -176(r30)
	load.hu r10, -174(r30)
	load.hu r11, -172(r30)
	load.hu r12, -170(r30)
	load.hu r13, -168(r30)
	load.hu r14, -166(r30)
	load.hu r15, -164(r30)
	load.hu r16, -162(r30)
	bfloat2float.rn r1, r1
	vor.u.mh vr1{mr2}, r1, vr1
	bfloat2float.rn r1, r2
	addli r2, zero, 4
	vmmov mr0, r2
	addli r2, zero, 8
	vor.u.mh vr1{mr3}, r1, vr1
	bfloat2float.rn r1, r3
	vor.u.mh vr1{mr0}, r1, vr1
	bfloat2float.rn r1, r4
	vmmov mr0, r2
	addli r2, zero, 16
	vor.u.mh vr1{mr0}, r1, vr1
	bfloat2float.rn r1, r5
	vmmov mr0, r2
	addli r2, zero, 32
	vor.u.mh vr1{mr0}, r1, vr1
	bfloat2float.rn r1, r6
	vmmov mr0, r2
	addli r2, zero, 64
	vor.u.mh vr1{mr0}, r1, vr1
	bfloat2float.rn r1, r7
	vmmov mr0, r2
	addli r2, zero, 128
	vor.u.mh vr1{mr0}, r1, vr1
	bfloat2float.rn r1, r8
	vmmov mr0, r2
	addli r2, zero, 256
	vor.u.mh vr1{mr0}, r1, vr1
	bfloat2float.rn r1, r9
	vmmov mr0, r2
	addli r2, zero, 512
	vor.u.mh vr1{mr0}, r1, vr1
	bfloat2float.rn r1, r10
	vmmov mr0, r2
	addli r2, zero, 1024
	vor.u.mh vr1{mr0}, r1, vr1
	bfloat2float.rn r1, r11
	vmmov mr0, r2
	addli r2, zero, 2048
	vor.u.mh vr1{mr0}, r1, vr1
	bfloat2float.rn r1, r12
	vmmov mr0, r2
	addli r2, zero, 4096
	vor.u.mh vr1{mr0}, r1, vr1
	bfloat2float.rn r1, r13
	vmmov mr0, r2
	addli r2, zero, 8192
	vor.u.mh vr1{mr0}, r1, vr1
	bfloat2float.rn r1, r14
	vmmov mr0, r2
	lui r2, 4
	vor.u.mh vr1{mr0}, r1, vr1
	bfloat2float.rn r1, r15
	vmmov mr0, r2
	lui r2, 8
	vor.u.mh vr1{mr0}, r1, vr1
	bfloat2float.rn r1, r16
	vmmov mr0, r2
	vor.u.mh vr1{mr0}, r1, vr1
	.loc	1 39 37                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:39:37
	load.hu r1, -128(r30)
	load.hu r2, -126(r30)
	load.hu r3, -124(r30)
	load.hu r4, -122(r30)
	load.hu r5, -120(r30)
	load.hu r6, -118(r30)
	load.hu r7, -116(r30)
	load.hu r8, -114(r30)
	load.hu r9, -112(r30)
	load.hu r10, -110(r30)
	load.hu r11, -108(r30)
	load.hu r12, -106(r30)
	load.hu r13, -104(r30)
	load.hu r14, -102(r30)
	load.hu r15, -100(r30)
	load.hu r16, -98(r30)
	bfloat2float.rn r1, r1
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r2
	addli r2, zero, 4
	vmmov mr2, r2
	addli r2, zero, 8
	vor.u.mh vr2{mr3}, r1, vr2
	bfloat2float.rn r1, r3
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r4
	vmmov mr2, r2
	addli r2, zero, 16
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r5
	vmmov mr2, r2
	addli r2, zero, 32
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r6
	vmmov mr2, r2
	addli r2, zero, 64
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r7
	vmmov mr2, r2
	addli r2, zero, 128
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r8
	vmmov mr2, r2
	addli r2, zero, 256
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r9
	vmmov mr2, r2
	addli r2, zero, 512
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r10
	vmmov mr2, r2
	addli r2, zero, 1024
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r11
	vmmov mr2, r2
	addli r2, zero, 2048
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r12
	vmmov mr2, r2
	addli r2, zero, 4096
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r13
	vmmov mr2, r2
	addli r2, zero, 8192
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r14
	vmmov mr2, r2
	lui r2, 4
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r15
	vmmov mr2, r2
	vor.u.mh vr2{mr2}, r1, vr2
	bfloat2float.rn r1, r16
	vor.u.mh vr2{mr0}, r1, vr2
	.loc	1 44 18                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:44:18
	vadd.f.mz.rn vr1{mr1}, vr1, vr2
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	vstore_mask16.mz vr1{mr1}, -64(r30)
	mfence { lm }
	loadli.w r28,  -64(r30)
	loadli.w r23,  -60(r30)
	loadli.w r8,  -56(r30)
	loadli.w r7,  -52(r30)
	loadli.w r11,  -48(r30)
	loadli.w r2,  -44(r30)
	loadli.w r5,  -40(r30)
	loadli.w r26,  -36(r30)
	loadli.w r4,  -32(r30)
	loadli.w r13,  -28(r30)
	loadli.w r22,  -24(r30)
	loadli.w r21,  -20(r30)
	loadli.w r18,  -16(r30)
	loadli.w r3,  -12(r30)
	loadli.w r19,  -8(r30)
	loadli.w r15,  -4(r30)
	and r14, r28, r17
	setlt.u r1, r20, r14
	bneq r1, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	addli r16, r28, 0
	j .LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	lui r1, 1024
	or r16, r28, r1
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	and r24, r23, r17
	setlt.u r1, r20, r24
	bneq r1, zero, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	storeli.w r23, -236(r30)                # 4-byte Folded Spill
	j .LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	lui r1, 1024
	or r1, r23, r1
	storeli.w r1, -236(r30)                 # 4-byte Folded Spill
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	and r10, r8, r17
	setlt.u r1, r20, r10
	bneq r1, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	storeli.w r8, -240(r30)                 # 4-byte Folded Spill
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	lui r1, 1024
	or r1, r8, r1
	storeli.w r1, -240(r30)                 # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	and r6, r7, r17
	setlt.u r1, r20, r6
	bneq r1, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	storeli.w r7, -244(r30)                 # 4-byte Folded Spill
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	lui r1, 1024
	or r1, r7, r1
	storeli.w r1, -244(r30)                 # 4-byte Folded Spill
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	and r25, r11, r17
	setlt.u r1, r20, r25
	bneq r1, zero, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	storeli.w r11, -248(r30)                # 4-byte Folded Spill
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	lui r1, 1024
	or r1, r11, r1
	storeli.w r1, -248(r30)                 # 4-byte Folded Spill
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	and r9, r2, r17
	setlt.u r1, r20, r9
	bneq r1, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	storeli.w r2, -252(r30)                 # 4-byte Folded Spill
	j .LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	lui r1, 1024
	or r1, r2, r1
	storeli.w r1, -252(r30)                 # 4-byte Folded Spill
.LBB0_23:                               #   in Loop: Header=BB0_3 Depth=1
	and r12, r5, r17
	storeli.w r3, -220(r30)                 # 4-byte Folded Spill
	storeli.w r5, -360(r30)                 # 4-byte Folded Spill
	setlt.u r1, r20, r12
	bneq r1, zero, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	storeli.w r5, -256(r30)                 # 4-byte Folded Spill
	j .LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	lui r1, 1024
	or r1, r5, r1
	storeli.w r1, -256(r30)                 # 4-byte Folded Spill
.LBB0_26:                               #   in Loop: Header=BB0_3 Depth=1
	and r5, r26, r17
	setlt.u r1, r20, r5
	bneq r1, zero, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	storeli.w r26, -260(r30)                # 4-byte Folded Spill
	j .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	lui r1, 1024
	or r1, r26, r1
	storeli.w r1, -260(r30)                 # 4-byte Folded Spill
.LBB0_29:                               #   in Loop: Header=BB0_3 Depth=1
	and r1, r4, r17
	storeli.w r4, -344(r30)                 # 4-byte Folded Spill
	setlt.u r3, r20, r1
	bneq r3, zero, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	storeli.w r4, -264(r30)                 # 4-byte Folded Spill
	j .LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	lui r3, 1024
	or r3, r4, r3
	storeli.w r3, -264(r30)                 # 4-byte Folded Spill
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=1
	and r3, r13, r17
	storeli.w r15, -216(r30)                # 4-byte Folded Spill
	storeli.w r13, -336(r30)                # 4-byte Folded Spill
	setlt.u r4, r20, r3
	beq r4, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_3 Depth=1
	lui r4, 1024
	or r13, r13, r4
.LBB0_34:                               #   in Loop: Header=BB0_3 Depth=1
	and r4, r22, r17
	storeli.w r26, -352(r30)                # 4-byte Folded Spill
	setlt.u r15, r20, r4
	bneq r15, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	storeli.w r22, -224(r30)                # 4-byte Folded Spill
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	lui r15, 1024
	or r15, r22, r15
	storeli.w r15, -224(r30)                # 4-byte Folded Spill
.LBB0_37:                               #   in Loop: Header=BB0_3 Depth=1
	and r26, r21, r17
	storeli.w r22, -328(r30)                # 4-byte Folded Spill
	setlt.u r15, r20, r26
	bneq r15, zero, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	storeli.w r21, -284(r30)                # 4-byte Folded Spill
	j .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	lui r15, 1024
	or r15, r21, r15
	storeli.w r15, -284(r30)                # 4-byte Folded Spill
.LBB0_40:                               #   in Loop: Header=BB0_3 Depth=1
	and r22, r18, r17
	storeli.w r21, -320(r30)                # 4-byte Folded Spill
	lui r21, 522240
	storeli.w r18, -312(r30)                # 4-byte Folded Spill
	setlt.u r15, r20, r22
	bneq r15, zero, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	storeli.w r18, -296(r30)                # 4-byte Folded Spill
	j .LBB0_43
.LBB0_42:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	lui r15, 1024
	or r15, r18, r15
	storeli.w r15, -296(r30)                # 4-byte Folded Spill
.LBB0_43:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	loadli.w r18,  -220(r30)                # 4-byte Folded Reload
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	and r20, r18, r17
	setlt.u r15, r21, r20
	bneq r15, zero, .LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	storeli.w r18, -228(r30)                # 4-byte Folded Spill
	j .LBB0_46
.LBB0_45:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	lui r15, 1024
	or r15, r18, r15
	storeli.w r15, -228(r30)                # 4-byte Folded Spill
.LBB0_46:                               #   in Loop: Header=BB0_3 Depth=1
	and r18, r19, r17
	storeli.w r19, -304(r30)                # 4-byte Folded Spill
	setlt.u r15, r21, r18
	bneq r15, zero, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	storeli.w r19, -208(r30)                # 4-byte Folded Spill
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	lui r15, 1024
	or r15, r19, r15
	storeli.w r15, -208(r30)                # 4-byte Folded Spill
.LBB0_49:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	loadli.w r19,  -216(r30)                # 4-byte Folded Reload
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	and r15, r19, r17
	setlt.u r17, r21, r15
	bneq r17, zero, .LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	storeli.w r19, -212(r30)                # 4-byte Folded Spill
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	lui r17, 1024
	or r17, r19, r17
	storeli.w r17, -212(r30)                # 4-byte Folded Spill
.LBB0_52:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r17,  -196(r30)                # 4-byte Folded Reload
	addli r21, r16, 0
	loadli.w r16,  -236(r30)                # 4-byte Folded Reload
	setlt.u r14, r17, r14
	loadli.w r17,  -204(r30)                # 4-byte Folded Reload
	bneq r14, zero, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	srli r14, r28, 16
	andi r14, r14, 1
	add.s r14, r28, r14
	lui r28, 1048560
	add.s r14, r14, r17
	and r21, r14, r28
.LBB0_54:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r28,  -196(r30)                # 4-byte Folded Reload
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	setlt.u r14, r28, r24
	addli r24, r28, 0
	bneq r14, zero, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	srli r14, r23, 16
	andi r14, r14, 1
	add.s r14, r23, r14
	lui r23, 1048560
	add.s r14, r14, r17
	and r16, r14, r23
.LBB0_56:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	setlt.u r10, r24, r10
	loadli.w r14,  -240(r30)                # 4-byte Folded Reload
	addli r28, r13, 0
	bneq r10, zero, .LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	srli r10, r8, 16
	andi r10, r10, 1
	add.s r8, r8, r10
	lui r10, 1048560
	add.s r8, r8, r17
	and r14, r8, r10
.LBB0_58:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	setlt.u r6, r24, r6
	loadli.w r23,  -244(r30)                # 4-byte Folded Reload
	lui r8, 1048560
	bneq r6, zero, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	srli r6, r7, 16
	andi r6, r6, 1
	add.s r6, r7, r6
	add.s r6, r6, r17
	and r23, r6, r8
.LBB0_60:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	setlt.u r6, r24, r25
	loadli.w r7,  -248(r30)                 # 4-byte Folded Reload
	bneq r6, zero, .LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r17
	and r7, r6, r8
.LBB0_62:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	setlt.u r6, r24, r9
	loadli.w r11,  -252(r30)                # 4-byte Folded Reload
	loadli.w r25,  -264(r30)                # 4-byte Folded Reload
	bneq r6, zero, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r17
	and r11, r2, r8
.LBB0_64:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	setlt.u r2, r24, r12
	loadli.w r12,  -256(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	loadli.w r6,  -360(r30)                 # 4-byte Folded Reload
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r17
	and r12, r2, r8
.LBB0_66:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	setlt.u r2, r24, r5
	loadli.w r5,  -260(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	loadli.w r5,  -352(r30)                 # 4-byte Folded Reload
	srli r2, r5, 16
	andi r2, r2, 1
	add.s r2, r5, r2
	add.s r2, r2, r17
	and r5, r2, r8
.LBB0_68:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	setlt.u r1, r24, r1
	loadli.w r13,  -232(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_70
# %bb.69:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	loadli.w r2,  -344(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r17
	and r25, r1, r8
.LBB0_70:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	setlt.u r1, r24, r3
	loadli.w r19,  -476(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_72
# %bb.71:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	loadli.w r2,  -336(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r17
	and r28, r1, r8
.LBB0_72:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	setlt.u r1, r24, r4
	bneq r1, zero, .LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r17
	and r1, r1, r8
	storeli.w r1, -224(r30)                 # 4-byte Folded Spill
.LBB0_74:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	setlt.u r1, r24, r26
	loadli.w r26,  -284(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_76
# %bb.75:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	loadli.w r2,  -320(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r17
	and r26, r1, r8
.LBB0_76:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	setlt.u r1, r24, r22
	loadli.w r22,  -296(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_78
# %bb.77:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	loadli.w r2,  -312(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r17
	and r22, r1, r8
.LBB0_78:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	setlt.u r1, r24, r20
	bneq r1, zero, .LBB0_80
# %bb.79:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	loadli.w r2,  -220(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r17
	and r1, r1, r8
	storeli.w r1, -228(r30)                 # 4-byte Folded Spill
.LBB0_80:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	setlt.u r1, r24, r18
	lui r20, 522240
	bneq r1, zero, .LBB0_82
# %bb.81:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	loadli.w r2,  -304(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r17
	and r1, r1, r8
	storeli.w r1, -208(r30)                 # 4-byte Folded Spill
.LBB0_82:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:45:19
	setlt.u r1, r24, r15
	loadli.w r18,  -388(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_84
# %bb.83:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:19
	loadli.w r2,  -216(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r17
	and r1, r1, r8
	storeli.w r1, -212(r30)                 # 4-byte Folded Spill
.LBB0_84:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r15,  -224(r30)                # 4-byte Folded Reload
	loadli.w r24,  -228(r30)                # 4-byte Folded Reload
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	addli r1, zero, 16
	blt.s r13, r1, .LBB0_86
# %bb.85:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r1, zero, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r21, r16
	loadli.w r2,  -208(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r14
	add.f.rn r1, r1, r23
	add.f.rn r1, r1, r7
	add.f.rn r1, r1, r11
	add.f.rn r1, r1, r12
	add.f.rn r1, r1, r5
	add.f.rn r1, r1, r25
	add.f.rn r1, r1, r28
	add.f.rn r1, r1, r15
	add.f.rn r1, r1, r26
	add.f.rn r1, r1, r22
	add.f.rn r1, r1, r24
	add.f.rn r1, r1, r2
	loadli.w r2,  -212(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
.LBB0_87:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r2,  -376(r30)                 # 4-byte Folded Reload
	loadli.w r17,  -200(r30)                # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	bneq r19, zero, .LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r4,  -368(r30)                 # 4-byte Folded Reload
	loads.w r1, 0(r4)
	loads.w r2, 4(r4)
	loads.w r3, 8(r4)
	.loc	2 263 15                        # standard.py:263:15
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
.Ltmp2:
.LBB0_89:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	loadli.w r1,  -368(r30)                 # 4-byte Folded Reload
	.loc	1 55 21 is_stmt 1               # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:55:21
	lui r2, 245760
	loads.w r1, 0(r1)
	mul.f.rn r6, r1, r2
	.loc	1 56 20                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:56:20
	sub.f.rn r9, r16, r6
	loadli.w r16,  -208(r30)                # 4-byte Folded Reload
	sub.f.rn r1, r5, r6
	sub.f.rn r5, r26, r6
	sub.f.rn r26, r22, r6
	sub.f.rn r10, r14, r6
	sub.f.rn r3, r11, r6
	sub.f.rn r11, r12, r6
	sub.f.rn r2, r15, r6
	sub.f.rn r8, r21, r6
	sub.f.rn r4, r23, r6
	sub.f.rn r7, r7, r6
	sub.f.rn r14, r25, r6
	sub.f.rn r12, r28, r6
	sub.f.rn r15, r24, r6
	sub.f.rn r22, r16, r6
	loadli.w r16,  -212(r30)                # 4-byte Folded Reload
	sub.f.rn r21, r16, r6
.Ltmp3:
	.loc	2 263 15                        # standard.py:263:15
	addli r6, zero, 16
	blt.s r13, r6, .LBB0_91
.Ltmp4:
# %bb.90:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r6, zero, 0
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_3 Depth=1
	mul.f.rn r6, r8, r8
	mul.f.rn r13, r9, r9
.Ltmp5:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r6, r13
.Ltmp6:
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r13, r10, r10
.Ltmp7:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r13, r6
.Ltmp8:
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r13, r4, r4
.Ltmp9:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r13, r6
.Ltmp10:
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r13, r7, r7
.Ltmp11:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r13, r6
.Ltmp12:
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r13, r3, r3
.Ltmp13:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r13, r6
.Ltmp14:
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r13, r11, r11
.Ltmp15:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r13, r6
.Ltmp16:
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r13, r1, r1
.Ltmp17:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r13, r6
.Ltmp18:
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r13, r14, r14
.Ltmp19:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r13, r6
.Ltmp20:
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r13, r12, r12
.Ltmp21:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r13, r6
.Ltmp22:
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r13, r2, r2
.Ltmp23:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r13, r6
.Ltmp24:
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r13, r5, r5
.Ltmp25:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r13, r6
.Ltmp26:
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r13, r26, r26
.Ltmp27:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r13, r6
.Ltmp28:
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r13, r15, r15
.Ltmp29:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r13, r6
.Ltmp30:
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r13, r22, r22
.Ltmp31:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r13, r6
.Ltmp32:
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r13, r21, r21
.Ltmp33:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r13, r6
.LBB0_92:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r13,  -380(r30)                # 4-byte Folded Reload
	stores.w r6, 0(r13)
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	bneq r19, zero, .LBB0_94
# %bb.93:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r17,  -372(r30)                # 4-byte Folded Reload
	loads.w r6, 0(r17)
	loads.w r13, 4(r17)
	loads.w r16, 8(r17)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r6, r6, r13
	loads.w r13, 12(r17)
	add.f.rn r6, r6, r16
	loads.w r16, 16(r17)
	add.f.rn r6, r6, r13
	loads.w r13, 20(r17)
	add.f.rn r6, r6, r16
	loads.w r16, 24(r17)
	add.f.rn r6, r6, r13
	loads.w r13, 28(r17)
	add.f.rn r6, r6, r16
	add.f.rn r6, r6, r13
	stores.w r6, 0(r17)
	loadli.w r17,  -200(r30)                # 4-byte Folded Reload
.Ltmp34:
.LBB0_94:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r18
	sync_group
	loadli.w r6,  -372(r30)                 # 4-byte Folded Reload
	.loc	1 63 21 is_stmt 1               # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:63:21
	lui r13, 245760
	loads.w r6, 0(r6)
	mul.f.rn r6, r6, r13
	.loc	1 65 20                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:65:20
	loadli.w r13,  -480(r30)                # 4-byte Folded Reload
	add.f.rn r6, r6, r13
	.loc	1 66 28                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:66:28
	lui r13, 260096
	sqrt.f.rn r6, r6
	div.f.rn r6, r13, r6
	.loc	1 67 20                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:67:20
	mul.f.rn r24, r8, r6
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	and r8, r24, r17
	setlt.u r13, r20, r8
	bneq r13, zero, .LBB0_96
# %bb.95:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48 is_stmt 0                # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	storeli.w r24, -208(r30)                # 4-byte Folded Spill
	j .LBB0_97
.LBB0_96:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	lui r13, 1024
	or r13, r24, r13
	storeli.w r13, -208(r30)                # 4-byte Folded Spill
.LBB0_97:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r25, r9, r6
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	and r9, r25, r17
	setlt.u r13, r20, r9
	bneq r13, zero, .LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	storeli.w r25, -212(r30)                # 4-byte Folded Spill
	j .LBB0_100
.LBB0_99:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	lui r13, 1024
	or r13, r25, r13
	storeli.w r13, -212(r30)                # 4-byte Folded Spill
.LBB0_100:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r19, r10, r6
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	and r10, r19, r17
	setlt.u r13, r20, r10
	bneq r13, zero, .LBB0_102
# %bb.101:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	storeli.w r19, -216(r30)                # 4-byte Folded Spill
	j .LBB0_103
.LBB0_102:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	lui r13, 1024
	or r13, r19, r13
	storeli.w r13, -216(r30)                # 4-byte Folded Spill
.LBB0_103:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r4, r4, r6
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	and r16, r4, r17
	setlt.u r13, r20, r16
	bneq r13, zero, .LBB0_105
# %bb.104:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	storeli.w r4, -220(r30)                 # 4-byte Folded Spill
	j .LBB0_106
.LBB0_105:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	lui r13, 1024
	or r13, r4, r13
	storeli.w r13, -220(r30)                # 4-byte Folded Spill
.LBB0_106:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r7, r7, r6
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	and r23, r7, r17
	setlt.u r13, r20, r23
	bneq r13, zero, .LBB0_108
# %bb.107:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	storeli.w r7, -224(r30)                 # 4-byte Folded Spill
	j .LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	lui r13, 1024
	or r13, r7, r13
	storeli.w r13, -224(r30)                # 4-byte Folded Spill
.LBB0_109:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r3, r3, r6
	storeli.w r21, -284(r30)                # 4-byte Folded Spill
	lui r21, 522240
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	and r18, r3, r17
	setlt.u r13, r20, r18
	bneq r13, zero, .LBB0_111
# %bb.110:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	storeli.w r3, -228(r30)                 # 4-byte Folded Spill
	j .LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	lui r13, 1024
	or r13, r3, r13
	storeli.w r13, -228(r30)                # 4-byte Folded Spill
.LBB0_112:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r11, r11, r6
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	and r20, r11, r17
	setlt.u r13, r21, r20
	bneq r13, zero, .LBB0_114
# %bb.113:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	storeli.w r11, -232(r30)                # 4-byte Folded Spill
	j .LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	lui r13, 1024
	or r13, r11, r13
	storeli.w r13, -232(r30)                # 4-byte Folded Spill
.LBB0_115:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r13, r1, r6
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	and r28, r13, r17
	setlt.u r1, r21, r28
	bneq r1, zero, .LBB0_117
# %bb.116:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	storeli.w r13, -236(r30)                # 4-byte Folded Spill
	j .LBB0_118
.LBB0_117:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	lui r1, 1024
	or r1, r13, r1
	storeli.w r1, -236(r30)                 # 4-byte Folded Spill
.LBB0_118:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r1, r14, r6
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	and r14, r1, r17
	storeli.w r14, -320(r30)                # 4-byte Folded Spill
	setlt.u r14, r21, r14
	bneq r14, zero, .LBB0_120
# %bb.119:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	storeli.w r1, -240(r30)                 # 4-byte Folded Spill
	j .LBB0_121
.LBB0_120:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	lui r14, 1024
	or r14, r1, r14
	storeli.w r14, -240(r30)                # 4-byte Folded Spill
.LBB0_121:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r14, r12, r6
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	and r12, r14, r17
	storeli.w r12, -328(r30)                # 4-byte Folded Spill
	setlt.u r12, r21, r12
	bneq r12, zero, .LBB0_123
# %bb.122:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	storeli.w r14, -244(r30)                # 4-byte Folded Spill
	j .LBB0_124
.LBB0_123:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	lui r12, 1024
	or r12, r14, r12
	storeli.w r12, -244(r30)                # 4-byte Folded Spill
.LBB0_124:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r2, r2, r6
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	and r12, r2, r17
	storeli.w r12, -336(r30)                # 4-byte Folded Spill
	setlt.u r12, r21, r12
	bneq r12, zero, .LBB0_126
# %bb.125:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	storeli.w r2, -248(r30)                 # 4-byte Folded Spill
	j .LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	lui r12, 1024
	or r12, r2, r12
	storeli.w r12, -248(r30)                # 4-byte Folded Spill
.LBB0_127:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r5, r5, r6
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	and r12, r5, r17
	storeli.w r12, -344(r30)                # 4-byte Folded Spill
	setlt.u r12, r21, r12
	bneq r12, zero, .LBB0_129
# %bb.128:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	storeli.w r5, -252(r30)                 # 4-byte Folded Spill
	j .LBB0_130
.LBB0_129:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	lui r12, 1024
	or r12, r5, r12
	storeli.w r12, -252(r30)                # 4-byte Folded Spill
.LBB0_130:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r12, r26, r6
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	and r17, r12, r17
	storeli.w r17, -352(r30)                # 4-byte Folded Spill
	setlt.u r17, r21, r17
	bneq r17, zero, .LBB0_132
# %bb.131:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	storeli.w r12, -256(r30)                # 4-byte Folded Spill
	j .LBB0_133
.LBB0_132:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	lui r17, 1024
	or r17, r12, r17
	storeli.w r17, -256(r30)                # 4-byte Folded Spill
.LBB0_133:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r26, r15, r6
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	loadli.w r15,  -200(r30)                # 4-byte Folded Reload
	loadli.w r17,  -204(r30)                # 4-byte Folded Reload
	and r15, r26, r15
	storeli.w r15, -312(r30)                # 4-byte Folded Spill
	setlt.u r15, r21, r15
	bneq r15, zero, .LBB0_135
# %bb.134:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	storeli.w r26, -260(r30)                # 4-byte Folded Spill
	j .LBB0_136
.LBB0_135:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	lui r15, 1024
	or r15, r26, r15
	storeli.w r15, -260(r30)                # 4-byte Folded Spill
.LBB0_136:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	mul.f.rn r22, r22, r6
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	loadli.w r15,  -200(r30)                # 4-byte Folded Reload
	and r15, r22, r15
	storeli.w r15, -304(r30)                # 4-byte Folded Spill
	setlt.u r15, r21, r15
	bneq r15, zero, .LBB0_138
# %bb.137:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	storeli.w r22, -264(r30)                # 4-byte Folded Spill
	j .LBB0_139
.LBB0_138:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	lui r15, 1024
	or r15, r22, r15
	storeli.w r15, -264(r30)                # 4-byte Folded Spill
.LBB0_139:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:0
	loadli.w r15,  -284(r30)                # 4-byte Folded Reload
	mul.f.rn r15, r15, r6
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	loadli.w r6,  -200(r30)                 # 4-byte Folded Reload
	and r6, r15, r6
	storeli.w r6, -296(r30)                 # 4-byte Folded Spill
	setlt.u r6, r21, r6
	bneq r6, zero, .LBB0_141
# %bb.140:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	storeli.w r15, -284(r30)                # 4-byte Folded Spill
	j .LBB0_142
.LBB0_141:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	lui r6, 1024
	or r6, r15, r6
	storeli.w r6, -284(r30)                 # 4-byte Folded Spill
.LBB0_142:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r6,  -196(r30)                 # 4-byte Folded Reload
	storeli.w r15, -364(r30)                # 4-byte Folded Spill
	setlt.u r6, r6, r8
	lui r8, 1048560
	bneq r6, zero, .LBB0_144
# %bb.143:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	srli r6, r24, 16
	andi r6, r6, 1
	add.s r6, r24, r6
	add.s r6, r6, r17
	and r6, r6, r8
	storeli.w r6, -208(r30)                 # 4-byte Folded Spill
.LBB0_144:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r15,  -196(r30)                # 4-byte Folded Reload
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	setlt.u r6, r15, r9
	beq r6, zero, .LBB0_168
# %bb.145:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r6, r15, r10
	beq r6, zero, .LBB0_169
.LBB0_146:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r6, r15, r16
	beq r6, zero, .LBB0_170
.LBB0_147:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r4, r15, r23
	beq r4, zero, .LBB0_171
.LBB0_148:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r4, r15, r18
	beq r4, zero, .LBB0_172
.LBB0_149:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r3, r15, r20
	beq r3, zero, .LBB0_173
.LBB0_150:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r3, r15, r28
	bneq r3, zero, .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	srli r3, r13, 16
	andi r3, r3, 1
	add.s r3, r13, r3
	add.s r3, r3, r17
	and r3, r3, r8
	storeli.w r3, -236(r30)                 # 4-byte Folded Spill
.LBB0_152:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	loadli.w r3,  -320(r30)                 # 4-byte Folded Reload
	setlt.u r3, r15, r3
	bneq r3, zero, .LBB0_154
# %bb.153:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	srli r3, r1, 16
	andi r3, r3, 1
	add.s r1, r1, r3
	add.s r1, r1, r17
	and r1, r1, r8
	storeli.w r1, -240(r30)                 # 4-byte Folded Spill
.LBB0_154:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	setlt.u r1, r15, r1
	bneq r1, zero, .LBB0_156
# %bb.155:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r17
	and r1, r1, r8
	storeli.w r1, -244(r30)                 # 4-byte Folded Spill
.LBB0_156:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	loadli.w r1,  -336(r30)                 # 4-byte Folded Reload
	setlt.u r1, r15, r1
	bneq r1, zero, .LBB0_158
# %bb.157:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r17
	and r1, r1, r8
	storeli.w r1, -248(r30)                 # 4-byte Folded Spill
.LBB0_158:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	loadli.w r1,  -344(r30)                 # 4-byte Folded Reload
	setlt.u r1, r15, r1
	bneq r1, zero, .LBB0_160
# %bb.159:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	srli r1, r5, 16
	andi r1, r1, 1
	add.s r1, r5, r1
	add.s r1, r1, r17
	and r1, r1, r8
	storeli.w r1, -252(r30)                 # 4-byte Folded Spill
.LBB0_160:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	loadli.w r1,  -352(r30)                 # 4-byte Folded Reload
	storeli.w r22, -336(r30)                # 4-byte Folded Spill
	setlt.u r1, r15, r1
	bneq r1, zero, .LBB0_162
# %bb.161:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r17
	and r1, r1, r8
	storeli.w r1, -256(r30)                 # 4-byte Folded Spill
.LBB0_162:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r3,  -412(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -440(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -404(r30)                 # 4-byte Folded Reload
	add.s r9, r3, r27
	loadli.w r3,  -416(r30)                 # 4-byte Folded Reload
	add.s r23, r4, r27
	loadli.w r4,  -444(r30)                 # 4-byte Folded Reload
	add.s r2, r1, r27
	loadli.w r1,  -408(r30)                 # 4-byte Folded Reload
	add.s r14, r3, r27
	loadli.w r3,  -420(r30)                 # 4-byte Folded Reload
	add.s r22, r4, r27
	loadli.w r4,  -448(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r27
	add.s r13, r3, r27
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	add.s r28, r4, r27
	loadli.w r4,  -452(r30)                 # 4-byte Folded Reload
	add.s r8, r3, r27
	loadli.w r3,  -428(r30)                 # 4-byte Folded Reload
	add.s r5, r4, r27
	loadli.w r4,  -456(r30)                 # 4-byte Folded Reload
	add.s r7, r3, r27
	loadli.w r3,  -432(r30)                 # 4-byte Folded Reload
	add.s r21, r4, r27
	loadli.w r4,  -460(r30)                 # 4-byte Folded Reload
	add.s r16, r3, r27
	loadli.w r3,  -436(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r27
	add.s r6, r3, r27
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	loadli.w r3,  -312(r30)                 # 4-byte Folded Reload
	storeli.w r4, -312(r30)                 # 4-byte Folded Spill
	setlt.u r3, r15, r3
	bneq r3, zero, .LBB0_164
# %bb.163:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	srli r3, r26, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r26, r3
	add.s r3, r3, r17
	and r3, r3, r4
	storeli.w r3, -260(r30)                 # 4-byte Folded Spill
.LBB0_164:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 0                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:0
	sext_int2long r[2:3], r2
	addli r12, zero, 1
	sext_int2long r[10:11], r1
	sll.d r[1:2], r[2:3], r12
	sll.d r[3:4], r[10:11], r12
	store.d r[1:2], -320(r30)               # 8-byte Folded Spill
	sext_int2long r[1:2], r9
	store.d r[3:4], -328(r30)               # 8-byte Folded Spill
	sext_int2long r[3:4], r13
	loadli.w r9,  -312(r30)                 # 4-byte Folded Reload
	sll.d r[1:2], r[1:2], r12
	sll.d r[19:20], r[3:4], r12
	sext_int2long r[3:4], r7
	sext_int2long r[9:10], r9
	store.d r[1:2], -352(r30)               # 8-byte Folded Spill
	sext_int2long r[1:2], r14
	sll.d r[9:10], r[9:10], r12
	sll.d r[1:2], r[1:2], r12
	store.d r[1:2], -360(r30)               # 8-byte Folded Spill
	sext_int2long r[1:2], r8
	sll.d r[7:8], r[3:4], r12
	sext_int2long r[3:4], r6
	sll.d r[17:18], r[3:4], r12
	sext_int2long r[3:4], r22
	sll.d r[26:27], r[1:2], r12
	sext_int2long r[1:2], r16
	sll.d r[24:25], r[3:4], r12
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	loadli.w r3,  -196(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -304(r30)                 # 4-byte Folded Reload
	.loc	1 69 0                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:0
	sll.d r[15:16], r[1:2], r12
	sext_int2long r[1:2], r23
	sll.d r[22:23], r[1:2], r12
	sext_int2long r[1:2], r28
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	setlt.u r28, r3, r4
	.loc	1 69 0                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:0
	sext_int2long r[3:4], r5
	sll.d r[5:6], r[1:2], r12
	sll.d r[1:2], r[3:4], r12
	sext_int2long r[3:4], r21
	sll.d r[3:4], r[3:4], r12
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	bneq r28, zero, .LBB0_166
# %bb.165:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	loadli.w r11,  -336(r30)                # 4-byte Folded Reload
	srli r21, r11, 16
	andi r21, r21, 1
	add.s r21, r11, r21
	loadli.w r11,  -204(r30)                # 4-byte Folded Reload
	add.s r21, r21, r11
	lui r11, 1048560
	and r11, r21, r11
	storeli.w r11, -264(r30)                # 4-byte Folded Spill
.LBB0_166:                              #   in Loop: Header=BB0_3 Depth=1
	load.d r[11:12], 16(r30)
	.loc	1 69 0                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:0
	load.d r[13:14], -280(r30)              # 8-byte Folded Reload
	add.ul r[13:14], r[11:12], r[13:14]
	add.ul r[15:16], r[11:12], r[15:16]
	add.ul r[1:2], r[11:12], r[1:2]
	add.ul r[19:20], r[11:12], r[19:20]
	add.ul r[26:27], r[11:12], r[26:27]
	add.ul r[7:8], r[11:12], r[7:8]
	add.ul r[17:18], r[11:12], r[17:18]
	add.ul r[5:6], r[11:12], r[5:6]
	add.ul r[9:10], r[11:12], r[9:10]
	store.d r[13:14], -336(r30)             # 8-byte Folded Spill
	load.d r[13:14], -320(r30)              # 8-byte Folded Reload
	store.d r[15:16], -312(r30)             # 8-byte Folded Spill
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	loadli.w r16,  -296(r30)                # 4-byte Folded Reload
	loadli.w r15,  -196(r30)                # 4-byte Folded Reload
	.loc	1 69 0                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:0
	store.d r[1:2], -304(r30)               # 8-byte Folded Spill
	add.ul r[1:2], r[11:12], r[3:4]
	loadli.w r3,  -284(r30)                 # 4-byte Folded Reload
	store.d r[5:6], -296(r30)               # 8-byte Folded Spill
	store.d r[1:2], -280(r30)               # 8-byte Folded Spill
	add.ul r[13:14], r[11:12], r[13:14]
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	setlt.u r21, r15, r16
	.loc	1 69 0                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:0
	add.ul r[15:16], r[11:12], r[22:23]
	add.ul r[23:24], r[11:12], r[24:25]
	store.d r[13:14], -344(r30)             # 8-byte Folded Spill
	load.d r[13:14], -328(r30)              # 8-byte Folded Reload
	add.ul r[13:14], r[11:12], r[13:14]
	store.d r[13:14], -320(r30)             # 8-byte Folded Spill
	load.d r[13:14], -352(r30)              # 8-byte Folded Reload
	add.ul r[13:14], r[11:12], r[13:14]
	store.d r[13:14], -328(r30)             # 8-byte Folded Spill
	load.d r[13:14], -360(r30)              # 8-byte Folded Reload
	add.ul r[13:14], r[11:12], r[13:14]
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	bneq r21, zero, .LBB0_2
# %bb.167:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	loadli.w r2,  -364(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	loadli.w r2,  -204(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	lui r2, 1048560
	and r3, r1, r2
	j .LBB0_2
.LBB0_168:                              #   in Loop: Header=BB0_3 Depth=1
	srli r6, r25, 16
	andi r6, r6, 1
	add.s r6, r25, r6
	add.s r6, r6, r17
	and r6, r6, r8
	storeli.w r6, -212(r30)                 # 4-byte Folded Spill
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	setlt.u r6, r15, r10
	bneq r6, zero, .LBB0_146
.LBB0_169:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r17
	and r6, r6, r8
	storeli.w r6, -216(r30)                 # 4-byte Folded Spill
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	setlt.u r6, r15, r16
	bneq r6, zero, .LBB0_147
.LBB0_170:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	srli r6, r4, 16
	andi r6, r6, 1
	add.s r4, r4, r6
	add.s r4, r4, r17
	and r4, r4, r8
	storeli.w r4, -220(r30)                 # 4-byte Folded Spill
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	setlt.u r4, r15, r23
	bneq r4, zero, .LBB0_148
.LBB0_171:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	srli r4, r7, 16
	andi r4, r4, 1
	add.s r4, r7, r4
	add.s r4, r4, r17
	and r4, r4, r8
	storeli.w r4, -224(r30)                 # 4-byte Folded Spill
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	setlt.u r4, r15, r18
	bneq r4, zero, .LBB0_149
.LBB0_172:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	srli r4, r3, 16
	andi r4, r4, 1
	add.s r3, r3, r4
	add.s r3, r3, r17
	and r3, r3, r8
	storeli.w r3, -228(r30)                 # 4-byte Folded Spill
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	setlt.u r3, r15, r20
	bneq r3, zero, .LBB0_150
.LBB0_173:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48                          # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:0:48
	srli r3, r11, 16
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r17
	and r3, r3, r8
	storeli.w r3, -232(r30)                 # 4-byte Folded Spill
	.loc	1 69 48                         # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:48
	setlt.u r3, r15, r28
	beq r3, zero, .LBB0_151
	j .LBB0_152
.LBB0_174:                              # %._crit_edge
	.loc	1 69 4 epilogue_begin           # cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py:69:4
	addli sp, r30, -512
	addli sp, sp, 512
	mfence { lm, sm, gm }
	exit
.Ltmp35:
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
	.long	576                             # 0x240
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
	.byte	1                               # DW_CHILDREN_yes
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
	.byte	2                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	32                              # DW_AT_inline
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
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
	.byte	1                               # Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	2                               # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x26:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_inline
	.byte	3                               # Abbrev [3] 0x2c:0x4a DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0x22 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	52                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x49:0x11 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.short	296                             # DW_AT_call_line
	.byte	36                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	60                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	7                               # Abbrev [7] 0x67:0xd DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.short	296                             # DW_AT_call_line
	.byte	36                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	.Ltmp7-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.long	.Ltmp9-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.long	.Ltmp11-.Lfunc_begin0
	.long	.Ltmp12-.Lfunc_begin0
	.long	.Ltmp13-.Lfunc_begin0
	.long	.Ltmp14-.Lfunc_begin0
	.long	.Ltmp15-.Lfunc_begin0
	.long	.Ltmp16-.Lfunc_begin0
	.long	.Ltmp17-.Lfunc_begin0
	.long	.Ltmp18-.Lfunc_begin0
	.long	.Ltmp19-.Lfunc_begin0
	.long	.Ltmp20-.Lfunc_begin0
	.long	.Ltmp21-.Lfunc_begin0
	.long	.Ltmp22-.Lfunc_begin0
	.long	.Ltmp23-.Lfunc_begin0
	.long	.Ltmp24-.Lfunc_begin0
	.long	.Ltmp25-.Lfunc_begin0
	.long	.Ltmp26-.Lfunc_begin0
	.long	.Ltmp27-.Lfunc_begin0
	.long	.Ltmp28-.Lfunc_begin0
	.long	.Ltmp29-.Lfunc_begin0
	.long	.Ltmp30-.Lfunc_begin0
	.long	.Ltmp31-.Lfunc_begin0
	.long	.Ltmp32-.Lfunc_begin0
	.long	.Ltmp33-.Lfunc_begin0
	.long	.Ltmp34-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	.Ltmp7-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.long	.Ltmp9-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.long	.Ltmp11-.Lfunc_begin0
	.long	.Ltmp12-.Lfunc_begin0
	.long	.Ltmp13-.Lfunc_begin0
	.long	.Ltmp14-.Lfunc_begin0
	.long	.Ltmp15-.Lfunc_begin0
	.long	.Ltmp16-.Lfunc_begin0
	.long	.Ltmp17-.Lfunc_begin0
	.long	.Ltmp18-.Lfunc_begin0
	.long	.Ltmp19-.Lfunc_begin0
	.long	.Ltmp20-.Lfunc_begin0
	.long	.Ltmp21-.Lfunc_begin0
	.long	.Ltmp22-.Lfunc_begin0
	.long	.Ltmp23-.Lfunc_begin0
	.long	.Ltmp24-.Lfunc_begin0
	.long	.Ltmp25-.Lfunc_begin0
	.long	.Ltmp26-.Lfunc_begin0
	.long	.Ltmp27-.Lfunc_begin0
	.long	.Ltmp28-.Lfunc_begin0
	.long	.Ltmp29-.Lfunc_begin0
	.long	.Ltmp30-.Lfunc_begin0
	.long	.Ltmp31-.Lfunc_begin0
	.long	.Ltmp32-.Lfunc_begin0
	.long	.Ltmp33-.Lfunc_begin0
	.long	.Ltmp34-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"cb5exmnagtjkylnuzbidchtfzsc7aurdhhuwiwunepdidjw776m7.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/b5" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
