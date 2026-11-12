	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/zb" "czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py"
	.loc	1 22 0                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -576
	addli r30, sp, 512
	lui r2, :hi20:global_smem
	core_id r1
	lui r5, 15
	load_param_i r9, 0
	loadli.w r7,  36(r30)
	loadli.w r4,  32(r30)
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r6,  40(r30)
	ori r12, r5, 4095
	add.s r8, r3, r2
	mul.s r4, r7, r4
	stores.w zero, 1040(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r12
	sync_group
	storeli.w r8, -376(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mul.s r4, r4, r6
	mfence { lm, sm, gm }
	csr_set csr3, r12
	sync_group
	storeli.w r4, -380(r30)                 # 4-byte Folded Spill
	ble.s r4, r9, .LBB0_174
# %bb.1:                                # %.lr.ph
	addli r4, zero, 64
	loadli.w r7,  -376(r30)                 # 4-byte Folded Reload
	addli r10, zero, 1
	load.d r[5:6], 8(r30)
	addli r11, r30, -128
	lui r21, 522240
	lui r27, 1024
	vxor.u.mz vr0{mr1}, vr0, vr0
	storeli.w r12, -384(r30)                # 4-byte Folded Spill
	div.s r4, r1, r4
	addli r7, r7, 1040
	storeli.w r7, -392(r30)                 # 4-byte Folded Spill
	load_param_i r7, 1
	storeli.w r7, -400(r30)                 # 4-byte Folded Spill
	storeli.w r4, -388(r30)                 # 4-byte Folded Spill
	slli r4, r4, 6
	sub.s r4, r1, r4
	andi r1, r1, 63
	slli r4, r4, 4
	storeli.w r1, -264(r30)                 # 4-byte Folded Spill
	lui r1, 7
	ori r7, r4, 1
	storeli.w r4, -396(r30)                 # 4-byte Folded Spill
	ori r1, r1, 4095
	storeli.w r7, -404(r30)                 # 4-byte Folded Spill
	ori r7, r4, 2
	storeli.w r1, -196(r30)                 # 4-byte Folded Spill
	lui r1, 522239
	storeli.w r7, -408(r30)                 # 4-byte Folded Spill
	ori r7, r4, 3
	ori r1, r1, 4095
	storeli.w r7, -412(r30)                 # 4-byte Folded Spill
	ori r7, r4, 4
	storeli.w r1, -200(r30)                 # 4-byte Folded Spill
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
	ori r4, r4, 3840
	sll.d r[7:8], r[7:8], r10
	and r3, r3, r4
	add.ul r[5:6], r[5:6], r[7:8]
	addli r7, zero, 32
	add.s r3, r3, r2
	lui r2, 524287
	store.d r[5:6], -472(r30)               # 8-byte Folded Spill
	addli r6, r30, -192
	ori r4, r2, 4095
	lui r2, 239665
	storeli.w r3, -368(r30)                 # 4-byte Folded Spill
	ori r1, r2, 623
	storeli.w r4, -476(r30)                 # 4-byte Folded Spill
	storeli.w r1, -480(r30)                 # 4-byte Folded Spill
	addli r1, r3, 1040
	storeli.w r1, -372(r30)                 # 4-byte Folded Spill
	addli r1, zero, 2
	vmmov mr3, r1
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp0:
	.loc	1 69 49 prologue_end            # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	loadli.w r1,  -204(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -208(r30)                 # 4-byte Folded Reload
	addli r5, zero, 2
	addli r11, r30, -128
	addli r4, r11, 6
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -128(r30)
	loadli.w r1,  -212(r30)                 # 4-byte Folded Reload
	store.h r2, -126(r30)
	loadli.w r2,  -216(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -124(r30)
	loadli.w r1,  -220(r30)                 # 4-byte Folded Reload
	store.h r2, -122(r30)
	loadli.w r2,  -224(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -120(r30)
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	store.h r2, -118(r30)
	loadli.w r2,  -232(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -116(r30)
	loadli.w r1,  -236(r30)                 # 4-byte Folded Reload
	store.h r2, -114(r30)
	loadli.w r2,  -240(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -112(r30)
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	store.h r2, -110(r30)
	loadli.w r2,  -248(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -108(r30)
	loadli.w r1,  -252(r30)                 # 4-byte Folded Reload
	store.h r2, -106(r30)
	loadli.w r2,  -256(r30)                 # 4-byte Folded Reload
	float2bfloat.rn r1, r1
	float2bfloat.rn r2, r2
	store.h r1, -104(r30)
	loadli.w r1,  -260(r30)                 # 4-byte Folded Reload
	store.h r2, -102(r30)
	float2bfloat.rn r2, r3
	addli r3, r11, 2
	store.h r2, -98(r30)
	lui r2, 983040
	float2bfloat.rn r1, r1
	or r2, r5, r2
	store.h r1, -100(r30)
	lui r1, 983040
	mfence { lm }
	load.d r[14:15], -328(r30)              # 8-byte Folded Reload
	or r1, r5, r1
	s_lm2gm r1, r11, 0(r[14:15])
	load.d r[14:15], -336(r30)              # 8-byte Folded Reload
	addli r1, r11, 4
	s_lm2gm r2, r3, 0(r[14:15])
	lui r3, 983040
	lui r2, 983040
	load.d r[14:15], -320(r30)              # 8-byte Folded Reload
	or r3, r5, r3
	or r2, r5, r2
	s_lm2gm r3, r4, 0(r[7:8])
	lui r3, 983040
	s_lm2gm r2, r1, 0(r[14:15])
	addli r1, r11, 8
	lui r4, 983040
	addli r2, r11, 10
	load.d r[6:7], -312(r30)                # 8-byte Folded Reload
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[19:20])
	lui r3, 983040
	addli r1, r11, 12
	s_lm2gm r4, r2, 0(r[21:22])
	lui r4, 983040
	addli r2, r11, 14
	lui r21, 522240
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[17:18])
	lui r3, 983040
	addli r1, r11, 16
	s_lm2gm r4, r2, 0(r[27:28])
	lui r4, 983040
	addli r2, r11, 18
	lui r27, 1024
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[6:7])
	lui r3, 983040
	load.d r[6:7], -304(r30)                # 8-byte Folded Reload
	addli r1, r11, 20
	s_lm2gm r4, r2, 0(r[9:10])
	lui r4, 983040
	addli r2, r11, 22
	loadli.w r9,  -268(r30)                 # 4-byte Folded Reload
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[6:7])
	lui r3, 983040
	load.d r[6:7], -280(r30)                # 8-byte Folded Reload
	addli r1, r11, 24
	s_lm2gm r4, r2, 0(r[23:24])
	lui r4, 983040
	addli r2, r11, 26
	or r3, r5, r3
	or r4, r5, r4
	s_lm2gm r3, r1, 0(r[6:7])
	load.d r[6:7], -288(r30)                # 8-byte Folded Reload
	lui r3, 983040
	addli r1, r11, 28
	or r3, r5, r3
	s_lm2gm r4, r2, 0(r[6:7])
	lui r4, 983040
	addli r2, r11, 30
	addli r6, r30, -192
	addli r7, zero, 32
	s_lm2gm r3, r1, 0(r[25:26])
	loadli.w r1,  -400(r30)                 # 4-byte Folded Reload
	or r4, r5, r4
	s_lm2gm r4, r2, 0(r[12:13])
	add.s r9, r9, r1
	mfence { lm }
	loadli.w r1,  -380(r30)                 # 4-byte Folded Reload
	blt.s r9, r1, .LBB0_3
	j .LBB0_174
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	.loc	1 0 49 is_stmt 0                # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	addli r1, zero, 0
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 47 is_stmt 1               # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:38:47
	add.s r2, r6, r1
	addli r1, r1, 4
	store.h zero, 0(r2)
	store.h zero, 2(r2)
	mfence { lm }
	bneq r1, r7, .LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 47 is_stmt 0                # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:47
	loadli.w r1,  40(r30)
	loadli.w r2,  36(r30)
	.loc	1 38 30                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:38:30
	addli r5, zero, 1
	storeli.w r9, -268(r30)                 # 4-byte Folded Spill
	.loc	1 38 47                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:38:47
	vadd.s.mz vr1{mr1}, zero, vr0
	addli r17, zero, 1
	.loc	1 39 37 is_stmt 1               # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:39:37
	vadd.s.mz vr2{mr1}, zero, vr0
	vmmov mr2, r17
	div.s r1, r9, r1
	div.s r1, r1, r2
	.loc	1 29 23                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:29:23
	loadli.w r2,  -388(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	.loc	1 38 42                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:38:42
	slli r2, r1, 10
	storeli.w r1, -220(r30)                 # 4-byte Folded Spill
	.loc	1 38 37 is_stmt 0               # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:38:37
	loadli.w r1,  -396(r30)                 # 4-byte Folded Reload
	storeli.w r2, -288(r30)                 # 4-byte Folded Spill
	add.s r1, r2, r1
	.loc	1 38 47                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:38:47
	lui r2, 983040
	.loc	1 38 30                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:38:30
	sext_int2long r[3:4], r1
	.loc	1 38 47                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:38:47
	or r2, r7, r2
	.loc	1 39 37 is_stmt 1               # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:39:37
	lui r1, 983040
	.loc	1 38 30                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:38:30
	sll.d r[8:9], r[3:4], r5
	load.d r[3:4], 0(r30)
	.loc	1 39 37                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:39:37
	or r1, r7, r1
	store.d r[8:9], -280(r30)               # 8-byte Folded Spill
	.loc	1 38 30                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:38:30
	add.ul r[3:4], r[3:4], r[8:9]
	.loc	1 38 47 is_stmt 0               # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:38:47
	l_gm2lm r2, r6, 0(r[3:4])
	.loc	1 39 37 is_stmt 1               # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:39:37
	load.d r[2:3], -472(r30)                # 8-byte Folded Reload
	l_gm2lm r1, r11, 0(r[2:3])
	.loc	1 38 47                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:38:47
	mfence { lm }
	load.hu r2, -192(r30)
	load.hu r4, -190(r30)
	load.hu r1, -164(r30)
	load.hu r5, -188(r30)
	load.hu r6, -186(r30)
	load.hu r7, -184(r30)
	load.hu r8, -182(r30)
	load.hu r9, -180(r30)
	load.hu r10, -178(r30)
	load.hu r11, -176(r30)
	load.hu r12, -174(r30)
	load.hu r13, -172(r30)
	load.hu r14, -170(r30)
	load.hu r15, -168(r30)
	load.hu r3, -166(r30)
	load.hu r16, -162(r30)
	bfloat2float.rn r2, r2
	bfloat2float.rn r1, r1
	vor.u.mh vr1{mr2}, r2, vr1
	bfloat2float.rn r2, r4
	addli r4, zero, 4
	vmmov mr0, r4
	addli r4, zero, 8
	vor.u.mh vr1{mr3}, r2, vr1
	bfloat2float.rn r2, r5
	vor.u.mh vr1{mr0}, r2, vr1
	bfloat2float.rn r2, r6
	vmmov mr0, r4
	addli r4, zero, 16
	vor.u.mh vr1{mr0}, r2, vr1
	bfloat2float.rn r2, r7
	vmmov mr0, r4
	addli r4, zero, 32
	vor.u.mh vr1{mr0}, r2, vr1
	bfloat2float.rn r2, r8
	vmmov mr0, r4
	addli r4, zero, 64
	vor.u.mh vr1{mr0}, r2, vr1
	bfloat2float.rn r2, r9
	vmmov mr0, r4
	addli r4, zero, 128
	vor.u.mh vr1{mr0}, r2, vr1
	bfloat2float.rn r2, r10
	vmmov mr0, r4
	addli r4, zero, 256
	vor.u.mh vr1{mr0}, r2, vr1
	bfloat2float.rn r2, r11
	vmmov mr0, r4
	addli r4, zero, 512
	vor.u.mh vr1{mr0}, r2, vr1
	bfloat2float.rn r2, r12
	vmmov mr0, r4
	addli r4, zero, 1024
	vor.u.mh vr1{mr0}, r2, vr1
	bfloat2float.rn r2, r13
	vmmov mr0, r4
	addli r4, zero, 2048
	vor.u.mh vr1{mr0}, r2, vr1
	bfloat2float.rn r2, r14
	vmmov mr0, r4
	addli r4, zero, 4096
	vor.u.mh vr1{mr0}, r2, vr1
	bfloat2float.rn r2, r15
	vmmov mr0, r4
	vor.u.mh vr1{mr0}, r2, vr1
	bfloat2float.rn r2, r3
	addli r3, zero, 8192
	vmmov mr0, r3
	vor.u.mh vr1{mr0}, r2, vr1
	lui r2, 4
	vmmov mr0, r2
	lui r2, 8
	vor.u.mh vr1{mr0}, r1, vr1
	bfloat2float.rn r1, r16
	vmmov mr0, r2
	vor.u.mh vr1{mr0}, r1, vr1
	.loc	1 39 37                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:39:37
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
	.loc	1 44 18                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:44:18
	vadd.f.mz.rn vr1{mr1}, vr1, vr2
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	vstore_mask16.mz vr1{mr1}, -64(r30)
	mfence { lm }
	loadli.w r8,  -64(r30)
	loadli.w r25,  -60(r30)
	loadli.w r12,  -56(r30)
	loadli.w r11,  -52(r30)
	loadli.w r15,  -48(r30)
	loadli.w r3,  -44(r30)
	loadli.w r23,  -40(r30)
	loadli.w r20,  -36(r30)
	loadli.w r14,  -32(r30)
	loadli.w r19,  -28(r30)
	loadli.w r16,  -476(r30)                # 4-byte Folded Reload
	loadli.w r18,  -24(r30)
	loadli.w r13,  -20(r30)
	loadli.w r6,  -16(r30)
	loadli.w r7,  -12(r30)
	loadli.w r17,  -8(r30)
	loadli.w r4,  -4(r30)
	and r22, r8, r16
	setlt.u r1, r21, r22
	bneq r1, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	storeli.w r8, -224(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	or r1, r8, r27
	storeli.w r1, -224(r30)                 # 4-byte Folded Spill
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	and r28, r25, r16
	storeli.w r4, -216(r30)                 # 4-byte Folded Spill
	setlt.u r1, r21, r28
	bneq r1, zero, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	storeli.w r25, -212(r30)                # 4-byte Folded Spill
	j .LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	or r1, r25, r27
	storeli.w r1, -212(r30)                 # 4-byte Folded Spill
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	and r4, r12, r16
	setlt.u r1, r21, r4
	bneq r1, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	storeli.w r12, -228(r30)                # 4-byte Folded Spill
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	or r1, r12, r27
	storeli.w r1, -228(r30)                 # 4-byte Folded Spill
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	and r9, r11, r16
	setlt.u r1, r21, r9
	bneq r1, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	storeli.w r11, -232(r30)                # 4-byte Folded Spill
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	or r1, r11, r27
	storeli.w r1, -232(r30)                 # 4-byte Folded Spill
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	and r10, r15, r16
	setlt.u r1, r21, r10
	bneq r1, zero, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	storeli.w r15, -236(r30)                # 4-byte Folded Spill
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	or r1, r15, r27
	storeli.w r1, -236(r30)                 # 4-byte Folded Spill
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	and r5, r3, r16
	setlt.u r1, r21, r5
	bneq r1, zero, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	storeli.w r3, -240(r30)                 # 4-byte Folded Spill
	j .LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	or r1, r3, r27
	storeli.w r1, -240(r30)                 # 4-byte Folded Spill
.LBB0_23:                               #   in Loop: Header=BB0_3 Depth=1
	and r1, r23, r16
	setlt.u r2, r21, r1
	bneq r2, zero, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	storeli.w r23, -244(r30)                # 4-byte Folded Spill
	j .LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	or r2, r23, r27
	storeli.w r2, -244(r30)                 # 4-byte Folded Spill
.LBB0_26:                               #   in Loop: Header=BB0_3 Depth=1
	and r26, r20, r16
	setlt.u r2, r21, r26
	bneq r2, zero, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	storeli.w r20, -248(r30)                # 4-byte Folded Spill
	j .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	or r2, r20, r27
	storeli.w r2, -248(r30)                 # 4-byte Folded Spill
.LBB0_29:                               #   in Loop: Header=BB0_3 Depth=1
	and r24, r14, r16
	storeli.w r14, -348(r30)                # 4-byte Folded Spill
	setlt.u r2, r21, r24
	bneq r2, zero, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	storeli.w r14, -252(r30)                # 4-byte Folded Spill
	j .LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	or r2, r14, r27
	storeli.w r2, -252(r30)                 # 4-byte Folded Spill
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=1
	and r14, r19, r16
	storeli.w r23, -356(r30)                # 4-byte Folded Spill
	setlt.u r2, r21, r14
	bneq r2, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	storeli.w r19, -256(r30)                # 4-byte Folded Spill
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	or r2, r19, r27
	storeli.w r2, -256(r30)                 # 4-byte Folded Spill
.LBB0_35:                               #   in Loop: Header=BB0_3 Depth=1
	and r23, r18, r16
	storeli.w r20, -352(r30)                # 4-byte Folded Spill
	setlt.u r2, r21, r23
	bneq r2, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	storeli.w r18, -260(r30)                # 4-byte Folded Spill
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	or r2, r18, r27
	storeli.w r2, -260(r30)                 # 4-byte Folded Spill
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=1
	and r20, r13, r16
	storeli.w r18, -336(r30)                # 4-byte Folded Spill
	storeli.w r19, -344(r30)                # 4-byte Folded Spill
	setlt.u r2, r21, r20
	bneq r2, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	storeli.w r13, -292(r30)                # 4-byte Folded Spill
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	or r2, r13, r27
	storeli.w r2, -292(r30)                 # 4-byte Folded Spill
.LBB0_41:                               #   in Loop: Header=BB0_3 Depth=1
	and r19, r6, r16
	storeli.w r13, -328(r30)                # 4-byte Folded Spill
	setlt.u r2, r21, r19
	bneq r2, zero, .LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	storeli.w r6, -304(r30)                 # 4-byte Folded Spill
	j .LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	or r2, r6, r27
	storeli.w r2, -304(r30)                 # 4-byte Folded Spill
.LBB0_44:                               #   in Loop: Header=BB0_3 Depth=1
	and r13, r7, r16
	storeli.w r6, -320(r30)                 # 4-byte Folded Spill
	lui r6, 1024
	storeli.w r7, -312(r30)                 # 4-byte Folded Spill
	setlt.u r2, r21, r13
	bneq r2, zero, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	addli r27, r7, 0
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_3 Depth=1
	lui r2, 1024
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	or r27, r7, r2
.LBB0_47:                               #   in Loop: Header=BB0_3 Depth=1
	and r7, r17, r16
	setlt.u r2, r21, r7
	bneq r2, zero, .LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	lui r2, 522240
	addli r18, r17, 0
	storeli.w r17, -204(r30)                # 4-byte Folded Spill
	j .LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	or r21, r17, r6
	lui r2, 522240
	addli r18, r17, 0
	storeli.w r21, -204(r30)                # 4-byte Folded Spill
.LBB0_50:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	loadli.w r17,  -216(r30)                # 4-byte Folded Reload
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	and r21, r17, r16
	setlt.u r2, r2, r21
	bneq r2, zero, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	storeli.w r17, -208(r30)                # 4-byte Folded Spill
	j .LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	or r2, r17, r6
	storeli.w r2, -208(r30)                 # 4-byte Folded Spill
.LBB0_53:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r2,  -200(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -224(r30)                 # 4-byte Folded Reload
	setlt.u r2, r2, r22
	bneq r2, zero, .LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	loadli.w r8,  -196(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r8
	lui r8, 1048560
	and r6, r2, r8
.LBB0_55:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r8,  -200(r30)                 # 4-byte Folded Reload
	loadli.w r22,  -384(r30)                # 4-byte Folded Reload
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	setlt.u r2, r8, r28
	addli r28, r8, 0
	bneq r2, zero, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	srli r2, r25, 16
	loadli.w r8,  -196(r30)                 # 4-byte Folded Reload
	andi r2, r2, 1
	add.s r2, r25, r2
	add.s r2, r2, r8
	lui r8, 1048560
	and r2, r2, r8
	storeli.w r2, -212(r30)                 # 4-byte Folded Spill
.LBB0_57:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	setlt.u r2, r28, r4
	loadli.w r25,  -228(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	srli r2, r12, 16
	loadli.w r4,  -196(r30)                 # 4-byte Folded Reload
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r4
	lui r4, 1048560
	and r25, r2, r4
.LBB0_59:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	setlt.u r2, r28, r9
	loadli.w r8,  -196(r30)                 # 4-byte Folded Reload
	loadli.w r12,  -232(r30)                # 4-byte Folded Reload
	lui r4, 1048560
	bneq r2, zero, .LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	add.s r2, r2, r8
	and r12, r2, r4
.LBB0_61:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	setlt.u r2, r28, r10
	loadli.w r10,  -236(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_63
# %bb.62:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r8
	and r10, r2, r4
.LBB0_63:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	setlt.u r2, r28, r5
	loadli.w r9,  -212(r30)                 # 4-byte Folded Reload
	loadli.w r11,  -240(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_65
# %bb.64:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r8
	and r11, r2, r4
.LBB0_65:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	setlt.u r1, r28, r1
	loadli.w r15,  -244(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_67
# %bb.66:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	loadli.w r2,  -356(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r8
	and r15, r1, r4
.LBB0_67:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	setlt.u r1, r28, r26
	loadli.w r26,  -248(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r8
	and r26, r1, r4
.LBB0_69:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	setlt.u r1, r28, r24
	loadli.w r24,  -252(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	loadli.w r2,  -348(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r8
	and r24, r1, r4
.LBB0_71:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	setlt.u r1, r28, r14
	loadli.w r14,  -256(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	loadli.w r2,  -344(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r8
	and r14, r1, r4
.LBB0_73:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	setlt.u r1, r28, r23
	loadli.w r23,  -260(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	loadli.w r2,  -336(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r8
	and r23, r1, r4
.LBB0_75:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	setlt.u r1, r28, r20
	loadli.w r20,  -292(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r8
	and r20, r1, r4
.LBB0_77:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	setlt.u r1, r28, r19
	loadli.w r19,  -304(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_85
# %bb.78:                               #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r28, r13
	beq r1, zero, .LBB0_86
.LBB0_79:                               #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r28, r7
	bneq r1, zero, .LBB0_81
.LBB0_80:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	srli r1, r18, 16
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r8
	and r1, r1, r4
	storeli.w r1, -204(r30)                 # 4-byte Folded Spill
.LBB0_81:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	setlt.u r1, r28, r21
	loadli.w r7,  -220(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	loadli.w r2,  -216(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r8
	and r1, r1, r4
	storeli.w r1, -208(r30)                 # 4-byte Folded Spill
.LBB0_83:                               #   in Loop: Header=BB0_3 Depth=1
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	addli r1, zero, 64
	lui r21, 522240
	blt.s r7, r1, .LBB0_87
.Ltmp2:
# %bb.84:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r1, zero, 0
	j .LBB0_88
.LBB0_85:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r2,  -320(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r8
	and r19, r1, r4
	.loc	1 45 19 is_stmt 1               # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	setlt.u r1, r28, r13
	bneq r1, zero, .LBB0_79
.LBB0_86:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 19 is_stmt 0                # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:19
	loadli.w r2,  -312(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	add.s r1, r1, r8
	and r27, r1, r4
	.loc	1 45 19                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:45:19
	setlt.u r1, r28, r7
	beq r1, zero, .LBB0_80
	j .LBB0_81
.LBB0_87:                               #   in Loop: Header=BB0_3 Depth=1
.Ltmp3:
	.loc	2 263 15 is_stmt 1              # standard.py:263:15
	add.f.rn r1, r6, r9
	loadli.w r2,  -204(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r25
	add.f.rn r1, r1, r12
	add.f.rn r1, r1, r10
	add.f.rn r1, r1, r11
	add.f.rn r1, r1, r15
	add.f.rn r1, r1, r26
	add.f.rn r1, r1, r24
	add.f.rn r1, r1, r14
	add.f.rn r1, r1, r23
	add.f.rn r1, r1, r20
	add.f.rn r1, r1, r19
	add.f.rn r1, r1, r27
	add.f.rn r1, r1, r2
	loadli.w r2,  -208(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
.LBB0_88:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loadli.w r2,  -376(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r22
	sync_group
	loadli.w r1,  -264(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r5,  -368(r30)                 # 4-byte Folded Reload
	loads.w r1, 0(r5)
	loads.w r4, 4(r5)
	loads.w r3, 8(r5)
	loads.w r2, 12(r5)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r1, r4
	add.f.rn r1, r1, r3
	loads.w r3, 16(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 20(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 24(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 28(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 32(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 36(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 40(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 44(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 48(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 52(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 56(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 60(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 64(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 68(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 72(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 76(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 80(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 84(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 88(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 92(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 96(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 100(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 104(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 108(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 112(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 116(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 120(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 124(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 128(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 132(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 136(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 140(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 144(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 148(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 152(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 156(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 160(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 164(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 168(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 172(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 176(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 180(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 184(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 188(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 192(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 196(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 200(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 204(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 208(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 212(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 216(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 220(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 224(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 228(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 232(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 236(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 240(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 244(r5)
	add.f.rn r1, r1, r3
	loads.w r3, 248(r5)
	add.f.rn r1, r1, r2
	loads.w r2, 252(r5)
	add.f.rn r1, r1, r3
	add.f.rn r1, r1, r2
	stores.w r1, 0(r5)
.Ltmp4:
.LBB0_90:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r22
	sync_group
	loadli.w r1,  -368(r30)                 # 4-byte Folded Reload
	.loc	1 55 21 is_stmt 1               # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:55:21
	lui r2, 239616
	loads.w r1, 0(r1)
	mul.f.rn r1, r1, r2
	.loc	1 56 20                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:56:20
	loadli.w r2,  -204(r30)                 # 4-byte Folded Reload
	sub.f.rn r8, r15, r1
	sub.f.rn r15, r2, r1
	loadli.w r2,  -208(r30)                 # 4-byte Folded Reload
	sub.f.rn r4, r6, r1
	sub.f.rn r5, r25, r1
	sub.f.rn r6, r12, r1
	sub.f.rn r13, r10, r1
	sub.f.rn r3, r11, r1
	sub.f.rn r12, r14, r1
	sub.f.rn r18, r23, r1
	sub.f.rn r14, r20, r1
	sub.f.rn r10, r19, r1
	sub.f.rn r9, r9, r1
	sub.f.rn r17, r26, r1
	sub.f.rn r25, r24, r1
	sub.f.rn r19, r27, r1
	sub.f.rn r11, r2, r1
.Ltmp5:
	.loc	2 263 15                        # standard.py:263:15
	addli r1, zero, 64
	storeli.w r14, -248(r30)                # 4-byte Folded Spill
	storeli.w r18, -244(r30)                # 4-byte Folded Spill
	storeli.w r11, -292(r30)                # 4-byte Folded Spill
	blt.s r7, r1, .LBB0_92
.Ltmp6:
# %bb.91:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r1, zero, 0
	j .LBB0_93
.LBB0_92:                               #   in Loop: Header=BB0_3 Depth=1
	mul.f.rn r1, r4, r4
	mul.f.rn r2, r9, r9
.Ltmp7:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r1, r2
.Ltmp8:
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r2, r5, r5
.Ltmp9:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp10:
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r2, r6, r6
.Ltmp11:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp12:
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r2, r13, r13
.Ltmp13:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp14:
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r2, r3, r3
.Ltmp15:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp16:
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r2, r8, r8
.Ltmp17:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp18:
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r2, r17, r17
.Ltmp19:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp20:
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r2, r25, r25
.Ltmp21:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp22:
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r2, r12, r12
.Ltmp23:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp24:
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r2, r18, r18
.Ltmp25:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp26:
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r2, r14, r14
.Ltmp27:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp28:
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r2, r10, r10
.Ltmp29:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp30:
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r2, r19, r19
.Ltmp31:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp32:
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r2, r15, r15
.Ltmp33:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.Ltmp34:
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r2, r11, r11
.Ltmp35:
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r2, r1
.LBB0_93:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r2,  -392(r30)                 # 4-byte Folded Reload
	lui r18, 1024
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r22
	sync_group
	loadli.w r1,  -264(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_3 Depth=1
	loadli.w r14,  -372(r30)                # 4-byte Folded Reload
	loads.w r1, 0(r14)
	loads.w r11, 4(r14)
	loads.w r7, 8(r14)
	loads.w r2, 12(r14)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r1, r11
	add.f.rn r1, r1, r7
	loads.w r7, 16(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 20(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 24(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 28(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 32(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 36(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 40(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 44(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 48(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 52(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 56(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 60(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 64(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 68(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 72(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 76(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 80(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 84(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 88(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 92(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 96(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 100(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 104(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 108(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 112(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 116(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 120(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 124(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 128(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 132(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 136(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 140(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 144(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 148(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 152(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 156(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 160(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 164(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 168(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 172(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 176(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 180(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 184(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 188(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 192(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 196(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 200(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 204(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 208(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 212(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 216(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 220(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 224(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 228(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 232(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 236(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 240(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 244(r14)
	add.f.rn r1, r1, r7
	loads.w r7, 248(r14)
	add.f.rn r1, r1, r2
	loads.w r2, 252(r14)
	add.f.rn r1, r1, r7
	add.f.rn r1, r1, r2
	stores.w r1, 0(r14)
.Ltmp36:
.LBB0_95:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r22
	sync_group
	loadli.w r1,  -372(r30)                 # 4-byte Folded Reload
	.loc	1 63 21 is_stmt 1               # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:63:21
	lui r2, 239616
	loads.w r1, 0(r1)
	mul.f.rn r1, r1, r2
	.loc	1 65 20                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:65:20
	loadli.w r2,  -480(r30)                 # 4-byte Folded Reload
	add.f.rn r1, r1, r2
	.loc	1 66 28                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:66:28
	lui r2, 260096
	sqrt.f.rn r1, r1
	div.f.rn r1, r2, r1
	.loc	1 67 20                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:67:20
	mul.f.rn r11, r4, r1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	and r7, r11, r16
	setlt.u r2, r21, r7
	bneq r2, zero, .LBB0_97
# %bb.96:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49 is_stmt 0                # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	storeli.w r11, -204(r30)                # 4-byte Folded Spill
	j .LBB0_98
.LBB0_97:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	or r2, r11, r18
	storeli.w r2, -204(r30)                 # 4-byte Folded Spill
.LBB0_98:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r9, r9, r1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	storeli.w r19, -256(r30)                # 4-byte Folded Spill
	and r23, r9, r16
	setlt.u r2, r21, r23
	bneq r2, zero, .LBB0_100
# %bb.99:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	storeli.w r9, -208(r30)                 # 4-byte Folded Spill
	j .LBB0_101
.LBB0_100:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	or r2, r9, r18
	storeli.w r2, -208(r30)                 # 4-byte Folded Spill
.LBB0_101:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r14, r5, r1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	storeli.w r15, -260(r30)                # 4-byte Folded Spill
	and r19, r14, r16
	setlt.u r2, r21, r19
	bneq r2, zero, .LBB0_103
# %bb.102:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	storeli.w r14, -212(r30)                # 4-byte Folded Spill
	j .LBB0_104
.LBB0_103:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	or r2, r14, r18
	storeli.w r2, -212(r30)                 # 4-byte Folded Spill
.LBB0_104:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r6, r6, r1
	lui r15, 1024
	lui r18, 522240
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	and r20, r6, r16
	setlt.u r2, r21, r20
	bneq r2, zero, .LBB0_106
# %bb.105:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	storeli.w r6, -216(r30)                 # 4-byte Folded Spill
	j .LBB0_107
.LBB0_106:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	or r2, r6, r15
	storeli.w r2, -216(r30)                 # 4-byte Folded Spill
.LBB0_107:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r24, r13, r1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	and r21, r24, r16
	setlt.u r2, r18, r21
	bneq r2, zero, .LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	storeli.w r24, -220(r30)                # 4-byte Folded Spill
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	or r2, r24, r15
	storeli.w r2, -220(r30)                 # 4-byte Folded Spill
.LBB0_110:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r27, r3, r1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	and r26, r27, r16
	setlt.u r2, r18, r26
	bneq r2, zero, .LBB0_112
# %bb.111:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	storeli.w r27, -224(r30)                # 4-byte Folded Spill
	j .LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	or r2, r27, r15
	storeli.w r2, -224(r30)                 # 4-byte Folded Spill
.LBB0_113:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r22, r8, r1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	and r13, r22, r16
	setlt.u r2, r18, r13
	bneq r2, zero, .LBB0_115
# %bb.114:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	storeli.w r22, -228(r30)                # 4-byte Folded Spill
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	or r2, r22, r15
	storeli.w r2, -228(r30)                 # 4-byte Folded Spill
.LBB0_116:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r17, r17, r1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	and r2, r17, r16
	storeli.w r2, -328(r30)                 # 4-byte Folded Spill
	setlt.u r2, r18, r2
	bneq r2, zero, .LBB0_118
# %bb.117:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	storeli.w r17, -232(r30)                # 4-byte Folded Spill
	j .LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	or r2, r17, r15
	storeli.w r2, -232(r30)                 # 4-byte Folded Spill
.LBB0_119:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r25, r25, r1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	and r2, r25, r16
	storeli.w r2, -336(r30)                 # 4-byte Folded Spill
	setlt.u r2, r18, r2
	bneq r2, zero, .LBB0_121
# %bb.120:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	storeli.w r25, -236(r30)                # 4-byte Folded Spill
	j .LBB0_122
.LBB0_121:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	or r2, r25, r15
	storeli.w r2, -236(r30)                 # 4-byte Folded Spill
.LBB0_122:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r12, r12, r1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	and r2, r12, r16
	storeli.w r2, -344(r30)                 # 4-byte Folded Spill
	setlt.u r2, r18, r2
	bneq r2, zero, .LBB0_124
# %bb.123:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	storeli.w r12, -240(r30)                # 4-byte Folded Spill
	j .LBB0_125
.LBB0_124:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	or r2, r12, r15
	storeli.w r2, -240(r30)                 # 4-byte Folded Spill
.LBB0_125:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	loadli.w r2,  -244(r30)                 # 4-byte Folded Reload
	mul.f.rn r4, r2, r1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	and r2, r4, r16
	storeli.w r2, -348(r30)                 # 4-byte Folded Spill
	setlt.u r2, r18, r2
	bneq r2, zero, .LBB0_127
# %bb.126:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	storeli.w r4, -244(r30)                 # 4-byte Folded Spill
	j .LBB0_128
.LBB0_127:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	or r2, r4, r15
	storeli.w r2, -244(r30)                 # 4-byte Folded Spill
.LBB0_128:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	loadli.w r2,  -248(r30)                 # 4-byte Folded Reload
	mul.f.rn r8, r2, r1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	and r2, r8, r16
	storeli.w r2, -352(r30)                 # 4-byte Folded Spill
	setlt.u r2, r18, r2
	bneq r2, zero, .LBB0_130
# %bb.129:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	storeli.w r8, -248(r30)                 # 4-byte Folded Spill
	j .LBB0_131
.LBB0_130:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	or r2, r8, r15
	storeli.w r2, -248(r30)                 # 4-byte Folded Spill
.LBB0_131:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	mul.f.rn r3, r10, r1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	and r2, r3, r16
	storeli.w r2, -356(r30)                 # 4-byte Folded Spill
	setlt.u r2, r18, r2
	bneq r2, zero, .LBB0_133
# %bb.132:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	storeli.w r3, -252(r30)                 # 4-byte Folded Spill
	j .LBB0_134
.LBB0_133:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	or r2, r3, r15
	storeli.w r2, -252(r30)                 # 4-byte Folded Spill
.LBB0_134:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	loadli.w r2,  -256(r30)                 # 4-byte Folded Reload
	mul.f.rn r10, r2, r1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	and r2, r10, r16
	storeli.w r2, -320(r30)                 # 4-byte Folded Spill
	setlt.u r2, r18, r2
	bneq r2, zero, .LBB0_136
# %bb.135:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	storeli.w r10, -256(r30)                # 4-byte Folded Spill
	j .LBB0_137
.LBB0_136:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	or r2, r10, r15
	storeli.w r2, -256(r30)                 # 4-byte Folded Spill
.LBB0_137:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	loadli.w r2,  -260(r30)                 # 4-byte Folded Reload
	mul.f.rn r5, r2, r1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	and r2, r5, r16
	storeli.w r5, -364(r30)                 # 4-byte Folded Spill
	storeli.w r2, -312(r30)                 # 4-byte Folded Spill
	setlt.u r2, r18, r2
	bneq r2, zero, .LBB0_139
# %bb.138:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	storeli.w r5, -260(r30)                 # 4-byte Folded Spill
	j .LBB0_140
.LBB0_139:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	or r2, r5, r15
	storeli.w r2, -260(r30)                 # 4-byte Folded Spill
.LBB0_140:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:0
	loadli.w r2,  -292(r30)                 # 4-byte Folded Reload
	mul.f.rn r2, r2, r1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	and r1, r2, r16
	storeli.w r2, -360(r30)                 # 4-byte Folded Spill
	storeli.w r1, -304(r30)                 # 4-byte Folded Spill
	setlt.u r1, r18, r1
	bneq r1, zero, .LBB0_142
# %bb.141:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	storeli.w r2, -292(r30)                 # 4-byte Folded Spill
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	setlt.u r1, r28, r7
	beq r1, zero, .LBB0_143
	j .LBB0_144
.LBB0_142:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	lui r1, 1024
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	or r1, r2, r1
	storeli.w r1, -292(r30)                 # 4-byte Folded Spill
	setlt.u r1, r28, r7
	bneq r1, zero, .LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	srli r1, r11, 16
	loadli.w r2,  -196(r30)                 # 4-byte Folded Reload
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r2
	lui r2, 1048560
	and r1, r1, r2
	storeli.w r1, -204(r30)                 # 4-byte Folded Spill
.LBB0_144:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	setlt.u r1, r28, r23
	bneq r1, zero, .LBB0_146
# %bb.145:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	srli r1, r9, 16
	loadli.w r2,  -196(r30)                 # 4-byte Folded Reload
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r2
	lui r2, 1048560
	and r1, r1, r2
	storeli.w r1, -208(r30)                 # 4-byte Folded Spill
.LBB0_146:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	setlt.u r1, r28, r19
	loadli.w r7,  -196(r30)                 # 4-byte Folded Reload
	lui r2, 1048560
	beq r1, zero, .LBB0_170
# %bb.147:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r28, r20
	beq r1, zero, .LBB0_171
.LBB0_148:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r28, r21
	beq r1, zero, .LBB0_172
.LBB0_149:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r28, r26
	beq r1, zero, .LBB0_173
.LBB0_150:                              #   in Loop: Header=BB0_3 Depth=1
	setlt.u r1, r28, r13
	bneq r1, zero, .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -228(r30)                 # 4-byte Folded Spill
.LBB0_152:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	setlt.u r1, r28, r1
	bneq r1, zero, .LBB0_154
# %bb.153:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	srli r1, r17, 16
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -232(r30)                 # 4-byte Folded Spill
.LBB0_154:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	loadli.w r1,  -336(r30)                 # 4-byte Folded Reload
	setlt.u r1, r28, r1
	bneq r1, zero, .LBB0_156
# %bb.155:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -236(r30)                 # 4-byte Folded Spill
.LBB0_156:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	loadli.w r1,  -344(r30)                 # 4-byte Folded Reload
	setlt.u r1, r28, r1
	bneq r1, zero, .LBB0_158
# %bb.157:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -240(r30)                 # 4-byte Folded Spill
.LBB0_158:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	setlt.u r1, r28, r1
	bneq r1, zero, .LBB0_160
# %bb.159:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	srli r1, r4, 16
	andi r1, r1, 1
	add.s r1, r4, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -244(r30)                 # 4-byte Folded Spill
.LBB0_160:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	loadli.w r1,  -352(r30)                 # 4-byte Folded Reload
	setlt.u r1, r28, r1
	bneq r1, zero, .LBB0_162
# %bb.161:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -248(r30)                 # 4-byte Folded Spill
.LBB0_162:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	loadli.w r1,  -356(r30)                 # 4-byte Folded Reload
	setlt.u r1, r28, r1
	bneq r1, zero, .LBB0_164
# %bb.163:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -252(r30)                 # 4-byte Folded Spill
.LBB0_164:                              #   in Loop: Header=BB0_3 Depth=1
	loadli.w r5,  -288(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -412(r30)                 # 4-byte Folded Reload
	loadli.w r1,  -404(r30)                 # 4-byte Folded Reload
	add.s r7, r3, r5
	loadli.w r3,  -416(r30)                 # 4-byte Folded Reload
	add.s r2, r1, r5
	loadli.w r1,  -408(r30)                 # 4-byte Folded Reload
	add.s r18, r3, r5
	loadli.w r3,  -420(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r5
	add.s r16, r3, r5
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	add.s r15, r3, r5
	loadli.w r3,  -428(r30)                 # 4-byte Folded Reload
	add.s r17, r3, r5
	loadli.w r3,  -432(r30)                 # 4-byte Folded Reload
	add.s r11, r3, r5
	loadli.w r3,  -436(r30)                 # 4-byte Folded Reload
	add.s r9, r3, r5
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	loadli.w r3,  -320(r30)                 # 4-byte Folded Reload
	setlt.u r4, r28, r3
	loadli.w r3,  -440(r30)                 # 4-byte Folded Reload
	add.s r24, r3, r5
	loadli.w r3,  -444(r30)                 # 4-byte Folded Reload
	add.s r23, r3, r5
	loadli.w r3,  -448(r30)                 # 4-byte Folded Reload
	add.s r12, r3, r5
	loadli.w r3,  -452(r30)                 # 4-byte Folded Reload
	add.s r6, r3, r5
	loadli.w r3,  -456(r30)                 # 4-byte Folded Reload
	add.s r13, r3, r5
	loadli.w r3,  -460(r30)                 # 4-byte Folded Reload
	add.s r3, r3, r5
	bneq r4, zero, .LBB0_166
# %bb.165:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	srli r4, r10, 16
	loadli.w r5,  -196(r30)                 # 4-byte Folded Reload
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r5
	lui r5, 1048560
	and r4, r4, r5
	storeli.w r4, -256(r30)                 # 4-byte Folded Spill
.LBB0_166:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 69 0                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:0
	sext_int2long r[4:5], r2
	addli r8, zero, 1
	sext_int2long r[1:2], r1
	sll.d r[4:5], r[4:5], r8
	sll.d r[1:2], r[1:2], r8
	store.d r[4:5], -288(r30)               # 8-byte Folded Spill
	sext_int2long r[4:5], r7
	store.d r[1:2], -320(r30)               # 8-byte Folded Spill
	sll.d r[1:2], r[4:5], r8
	sext_int2long r[4:5], r16
	sll.d r[21:22], r[4:5], r8
	sext_int2long r[4:5], r17
	store.d r[1:2], -344(r30)               # 8-byte Folded Spill
	sext_int2long r[1:2], r18
	sll.d r[27:28], r[4:5], r8
	sext_int2long r[4:5], r9
	sll.d r[19:20], r[1:2], r8
	sext_int2long r[1:2], r15
	sll.d r[15:16], r[4:5], r8
	sext_int2long r[4:5], r23
	sll.d r[17:18], r[1:2], r8
	sext_int2long r[1:2], r11
	sll.d r[25:26], r[4:5], r8
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	loadli.w r4,  -200(r30)                 # 4-byte Folded Reload
	loadli.w r5,  -312(r30)                 # 4-byte Folded Reload
	.loc	1 69 0                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:0
	sll.d r[9:10], r[1:2], r8
	sext_int2long r[1:2], r24
	sll.d r[23:24], r[1:2], r8
	sext_int2long r[1:2], r12
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	setlt.u r7, r4, r5
	.loc	1 69 0                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:0
	sext_int2long r[4:5], r6
	sll.d r[11:12], r[1:2], r8
	sll.d r[1:2], r[4:5], r8
	sext_int2long r[4:5], r13
	sext_int2long r[13:14], r3
	sll.d r[3:4], r[4:5], r8
	sll.d r[5:6], r[13:14], r8
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	bneq r7, zero, .LBB0_168
# %bb.167:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	loadli.w r8,  -364(r30)                 # 4-byte Folded Reload
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	loadli.w r8,  -196(r30)                 # 4-byte Folded Reload
	add.s r7, r7, r8
	lui r8, 1048560
	and r7, r7, r8
	storeli.w r7, -260(r30)                 # 4-byte Folded Spill
.LBB0_168:                              #   in Loop: Header=BB0_3 Depth=1
	load.d r[13:14], 16(r30)
	.loc	1 69 0                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:0
	load.d r[7:8], -280(r30)                # 8-byte Folded Reload
	add.ul r[7:8], r[13:14], r[7:8]
	add.ul r[9:10], r[13:14], r[9:10]
	add.ul r[23:24], r[13:14], r[23:24]
	add.ul r[11:12], r[13:14], r[11:12]
	add.ul r[19:20], r[13:14], r[19:20]
	add.ul r[21:22], r[13:14], r[21:22]
	add.ul r[17:18], r[13:14], r[17:18]
	add.ul r[27:28], r[13:14], r[27:28]
	add.ul r[1:2], r[13:14], r[1:2]
	store.d r[7:8], -328(r30)               # 8-byte Folded Spill
	load.d r[7:8], -288(r30)                # 8-byte Folded Reload
	store.d r[9:10], -312(r30)              # 8-byte Folded Spill
	add.ul r[9:10], r[13:14], r[15:16]
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	loadli.w r16,  -304(r30)                # 4-byte Folded Reload
	loadli.w r15,  -200(r30)                # 4-byte Folded Reload
	.loc	1 69 0                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:0
	store.d r[23:24], -304(r30)             # 8-byte Folded Spill
	add.ul r[23:24], r[13:14], r[25:26]
	add.ul r[25:26], r[13:14], r[3:4]
	loadli.w r3,  -292(r30)                 # 4-byte Folded Reload
	store.d r[11:12], -280(r30)             # 8-byte Folded Spill
	store.d r[1:2], -288(r30)               # 8-byte Folded Spill
	add.ul r[7:8], r[13:14], r[7:8]
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	setlt.u r15, r15, r16
	.loc	1 69 0                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:0
	store.d r[7:8], -336(r30)               # 8-byte Folded Spill
	load.d r[7:8], -320(r30)                # 8-byte Folded Reload
	add.ul r[7:8], r[13:14], r[7:8]
	store.d r[7:8], -320(r30)               # 8-byte Folded Spill
	load.d r[7:8], -344(r30)                # 8-byte Folded Reload
	add.ul r[7:8], r[13:14], r[7:8]
	add.ul r[12:13], r[13:14], r[5:6]
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	bneq r15, zero, .LBB0_2
# %bb.169:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	loadli.w r2,  -360(r30)                 # 4-byte Folded Reload
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	loadli.w r2,  -196(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	lui r2, 1048560
	and r3, r1, r2
	j .LBB0_2
.LBB0_170:                              #   in Loop: Header=BB0_3 Depth=1
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -212(r30)                 # 4-byte Folded Spill
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	setlt.u r1, r28, r20
	bneq r1, zero, .LBB0_148
.LBB0_171:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	srli r1, r6, 16
	andi r1, r1, 1
	add.s r1, r6, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -216(r30)                 # 4-byte Folded Spill
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	setlt.u r1, r28, r21
	bneq r1, zero, .LBB0_149
.LBB0_172:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	srli r1, r24, 16
	andi r1, r1, 1
	add.s r1, r24, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -220(r30)                 # 4-byte Folded Spill
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	setlt.u r1, r28, r26
	bneq r1, zero, .LBB0_150
.LBB0_173:                              #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 49                          # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:0:49
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r7
	and r1, r1, r2
	storeli.w r1, -224(r30)                 # 4-byte Folded Spill
	.loc	1 69 49                         # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:49
	setlt.u r1, r28, r13
	beq r1, zero, .LBB0_151
	j .LBB0_152
.LBB0_174:                              # %._crit_edge
	.loc	1 69 4 epilogue_begin           # czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py:69:4
	addli sp, r30, -512
	addli sp, sp, 512
	mfence { lm, sm, gm }
	exit
.Ltmp37:
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
	.byte	5                               # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x64 DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x2c:0x42 DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0x1a DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	52                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x45:0xd DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.short	296                             # DW_AT_call_line
	.byte	36                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x53:0x1a DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	60                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x5f:0xd DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.short	296                             # DW_AT_call_line
	.byte	36                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.Ltmp1-.Lfunc_begin0
	.long	.Ltmp2-.Lfunc_begin0
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp1-.Lfunc_begin0
	.long	.Ltmp2-.Lfunc_begin0
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges2:
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
	.long	.Ltmp35-.Lfunc_begin0
	.long	.Ltmp36-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges3:
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
	.long	.Ltmp35-.Lfunc_begin0
	.long	.Ltmp36-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"czb3hon7dbwx4wndtqvhrfsb4hojduwdqv7qjaf4ivmuhdw67x6h.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/zb" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
